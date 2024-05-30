#!/usr/bin/env python3

import argparse
import asyncio
import itertools
import os
import shutil
import subprocess
import sys
import tempfile
from tqdm import tqdm
from utils import avg_current, find_max_frequency


def create_spice_pdk_spec(pdk_root='', corner='tt', supply=1.8, temp=27.0):
    return (
        f'.param mc_mm_switch=1\n'
        f'.param mc_pr_switch=1\n'
        f'.include {pdk_root}/libs.tech/ngspice/corners/{corner}.spice\n'
        f'.include {pdk_root}/libs.tech/ngspice/r+c/res_typical__cap_typical.spice\n'
        f'.include {pdk_root}/libs.tech/ngspice/r+c/res_typical__cap_typical__lin.spice\n'
        f'.include {pdk_root}/libs.tech/ngspice/corners/{corner}/specialized_cells.spice\n'
        f'.temp {temp}\n'
        f'.param VDD={supply}\n'
    )

def create_spice_vco_spec(vcon=1.0):
    return (
        f'.param VCONT={vcon}\n'
    )


async def worker(lane, jobs, queue, pdk_path, tmpdir):
    with tempfile.TemporaryDirectory(prefix='lane_', dir=tmpdir) as lanedir:
        # copy spice template
        shutil.copy('.spiceinit', lanedir)
        shutil.copy('test_ring_osc3.spice', lanedir)

        prefix_path = os.path.join(lanedir, 'prefix.spice')
        out_path = os.path.join(lanedir, 'out')
        vco_current_path = os.path.join(out_path, 'ring_osc3_current.txt')
        vco_fft_path = os.path.join(out_path, 'ring_osc3_fft.txt')

        os.mkdir(out_path)

        for config in jobs:
            freq = None
            current = None

            try:
                corner, vdd, t, vcon = config

                # create spice prefix for config
                prefix = create_spice_pdk_spec(pdk_path, corner, vdd, t) + create_spice_vco_spec(vcon)
                with open(prefix_path, 'wt') as f:
                    f.write(prefix)

                # run spice
                proc = await asyncio.create_subprocess_shell('ngspice -b -a test_ring_osc3.spice',
                    cwd=lanedir,
                    stdout=asyncio.subprocess.PIPE,
                    stderr=asyncio.subprocess.PIPE)

                stdout, stderr = await proc.communicate()

                if proc.returncode == 0:
                    # gather and report results
                    current = avg_current(vco_current_path)
                    freq = find_max_frequency(vco_fft_path)

                    # remove results
                    os.remove(vco_current_path)
                    os.remove(vco_fft_path)
                else:
                    if stdout:
                        print(f'[stdout]\n{stdout.decode()}')
                    if stderr:
                        print(f'[stderr]\n{stderr.decode()}')
            except:
                pass

            await queue.put((config, freq, current))


def batched(iterable, n):
    "Batch data into tuples of length n. The last batch may be shorter."
    # batched('ABCDEFG', 3) --> ABC DEF G
    it = iter(iterable)
    while True:
        batch = tuple(itertools.islice(it, n))
        if not batch:
            return
        yield batch


async def main():
    pdk = os.environ.get('PDK')
    pdk_root = os.environ.get('PDK_ROOT')

    if not pdk or not pdk_root:
        print("PDK and PDK_ROOT must be set")
        sys.exit(1)

    pdk_path = os.path.join(pdk_root, pdk)

    parser = argparse.ArgumentParser()
    parser.add_argument('-c', '--corner', nargs='+', help='Process corner (tt, ff, sf, fs, ss)', required=True)
    parser.add_argument('--vdd', nargs='+', help='Supply Voltage (default 1.8V)', type=float)
    parser.add_argument('-t', '--temp', nargs='+', help='Temperature (default 27C)', type=float)
    parser.add_argument('--vcont', nargs='+', help='Control Voltage', type=float, required=True)
    parser.add_argument('-i', '--iters', help='Iterations', type=int)
    parser.add_argument('-o', '--output', help='Output file', required=True)
    parser.add_argument('-j', '--jobs', help='Number of parallel jobs (defaults to number of cpus)', type=int)
    args = parser.parse_args()

    corners = args.corner
    supply_voltages = args.vdd or [1.8]
    temperatures = args.temp or [27.0]
    control_voltages = args.vcont
    iterations = args.iters or 1

    print(f'PDK: {pdk_path}')
    print('PVT:')
    print(f'  corners: {", ".join(corners)}')
    print(f'  supply voltages: {", ".join(str(f) for f in supply_voltages)}')
    print(f'  temperatures: {", ".join(str(f) for f in temperatures)}')
    print(f'VCO parameters:')
    print(f'  control voltages: {", ".join(str(f) for f in control_voltages)}')
    print(f'Iterations: {iterations}')
    print(f'')

    configs = list(itertools.product(corners, supply_voltages, temperatures, control_voltages)) * iterations

    job_count = len(configs)
    worker_count = args.jobs or os.cpu_count()
    batch_size = job_count // worker_count
    results_queue = asyncio.Queue()

    with tempfile.TemporaryDirectory(prefix='spicerun_', dir='.') as tmpdir:
        workers = []
        for lane, batch in enumerate(batched(configs, batch_size)):
            task = asyncio.create_task(worker(lane, batch, results_queue, pdk_path, tmpdir))
            workers.append(task)

        with open(args.output, 'wt', buffering=1) as results:
            results.write(f'corner,vdd,temp,vcont,freq,current\n')

            for i in tqdm(range(job_count)):
                (config, freq, current) = await results_queue.get()

                if freq and current:
                    corner, vdd, t, vcon = config
                    results.write(f'{corner},{vdd},{t},{vcon},{freq},{current}\n')

        await asyncio.gather(*workers, return_exceptions=True)


if __name__ == '__main__':
    asyncio.run(main())
