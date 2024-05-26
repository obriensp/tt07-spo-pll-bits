#!/usr/bin/env python3

import argparse
import os
import subprocess
import sys
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

def create_spice_vco_spec(vcon=1.0, s0=0, s1=0):
  return (
    f'.param VCONT={vcon}\n'
    f'.param S0={s0}\n'
    f'.param S1={s1}\n'
  )


def main():
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
  parser.add_argument('-s', '--switches', nargs='+', help='Tuning switches (0, 1, 2, 3)', type=int, required=True)
  parser.add_argument('-i', '--iters', help='Iterations', type=int)
  parser.add_argument('-o', '--output', help='Output file', required=True)
  args = parser.parse_args()

  corners = args.corner
  supply_voltages = args.vdd or [1.8]
  temperatures = args.temp or [27.0]
  control_voltages = args.vcont
  switches = args.switches
  s0_values = set([int(s & 2 != 0) for s in switches])
  s1_values = set([int(s & 1 != 0) for s in switches])
  iterations = args.iters or 1

  print(f'PDK: {pdk_path}')
  print('PVT:')
  print(f'  corners: {", ".join(corners)}')
  print(f'  supply voltages: {", ".join(str(f) for f in supply_voltages)}')
  print(f'  temperatures: {", ".join(str(f) for f in temperatures)}')
  print(f'VCO parameters:')
  print(f'  control voltages: {", ".join(str(f) for f in control_voltages)}')
  print(f'  s0: {", ".join(str(i) for i in s0_values)}')
  print(f'  s1: {", ".join(str(i) for i in s1_values)}')
  print(f'Iterations: {iterations}')
  print(f'')

  configs = []
  for corner in corners:
    for vdd in supply_voltages:
      for t in temperatures:
        for vcon in control_voltages:
          for s0 in s0_values:
            for s1 in s1_values:
              configs.extend([(corner, vdd, t, vcon, s0, s1)] * iterations)

  work = tqdm(configs)

  with open(args.output, 'wt', buffering=1) as results:
    results.write(f'corner,vdd,temp,vcont,s0,s1,freq,current\n')

    for config in work:
      corner, vdd, t, vcon, s0, s1 = config
      work.set_description(f'{corner} {vdd} {t} {vcon} {s0} {s1}:')
      prefix = create_spice_pdk_spec(pdk_path, corner, vdd, t) + create_spice_vco_spec(vcon, s0, s1)
      with open('vco_prefix.spice', 'wt') as f:
        f.write(prefix)

      os.remove('out/vco_current.txt')
      os.remove('out/vco_fft.txt')
      subprocess.run('ngspice -b -a test_vco.spice', shell=True, capture_output=True, check=True)
      current = avg_current('out/vco_current.txt')
      freq = find_max_frequency('out/vco_fft.txt')
      results.write(f'{corner},{vdd},{t},{vcon},{s0},{s1},{freq},{current}\n')


if __name__ == '__main__':
  main()
