v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 20 -490 820 -90 {flags=graph
y1=0
y2=2
ypos1=0.12609929
ypos2=1.2636995
divy=5
subdivy=1
unity=1
x1=2.7139334e-07
x2=2.837238e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="out%0
out%1
out%2
out%3
out%4"
color="4 8 21 20 18"
dataset=-1
unitx=1
logx=0
logy=0
digital=1}
B 2 850 -490 1650 -90 {flags=graph,unlocked
y1=1.1e-08
y2=1.2
ypos1=0.12609929
ypos2=1.2636995
divy=5
subdivy=1
unity=1
x1=0
x2=5e+08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="out%0
out%1
out%2
out%3
out%4"
color="4 8 21 20 18"
dataset=-1
unitx=1
logx=0
logy=0
digital=0
sim_type=spectrum
rawfile=$netlist_dir/vco_testbench_fft.raw}
B 2 1680 -490 2480 -90 {flags=graph
y1=0.00
y2=0.0005
ypos1=0.12609929
ypos2=1.2636995
divy=5
subdivy=1
unity=1
x1=2.7139334e-07
x2=2.837238e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="\\"i(vmeas) avg()%0\\"
\\"i(vmeas) avg()%1\\"
\\"i(vmeas) avg()%2\\"
\\"i(vmeas) avg()%3\\"
\\"i(vmeas) avg()%4\\""
color="4 8 21 20 18"
dataset=-1
unitx=1
logx=0
logy=0
digital=0}
B 2 20 -920 820 -520 {flags=graph
y1=0
y2=2
ypos1=0.12609929
ypos2=1.2636995
divy=5
subdivy=1
unity=1
x1=2.7139334e-07
x2=2.837238e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="out_parax%0
out_parax%1
out_parax%2
out_parax%3
out_parax%4"
color="4 8 21 20 18"
dataset=-1
unitx=1
logx=0
logy=0
digital=1}
B 2 850 -920 1650 -520 {flags=graph,unlocked
y1=1.1e-08
y2=1.2
ypos1=0.12609929
ypos2=1.2636995
divy=5
subdivy=1
unity=1
x1=0
x2=5e+08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="out_parax%0
out_parax%1
out_parax%2
out_parax%3
out_parax%4"
color="4 8 21 20 18"
dataset=-1
unitx=1
logx=0
logy=0
digital=0
sim_type=spectrum
rawfile=$netlist_dir/vco_testbench_fft.raw}
B 2 1680 -920 2480 -520 {flags=graph
y1=0.00
y2=0.0005
ypos1=0.12609929
ypos2=1.2636995
divy=5
subdivy=1
unity=1
x1=2.7139334e-07
x2=2.837238e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="\\"i(vmeas1) avg()%0\\"
\\"i(vmeas1) avg()%1\\"
\\"i(vmeas1) avg()%2\\"
\\"i(vmeas1) avg()%3\\"
\\"i(vmeas1) avg()%4\\""
color="4 8 21 20 18"
dataset=-1
unitx=1
logx=0
logy=0
digital=0}
N 190 200 190 320 {
lab=vdd}
N 170 200 170 300 {
lab=vss}
N 60 320 190 320 {
lab=vdd}
N 60 300 170 300 {
lab=vss}
N 400 200 400 320 {
lab=vdd}
N 380 200 380 300 {
lab=vss}
N 270 320 400 320 {
lab=vdd}
N 270 300 380 300 {
lab=vss}
N 170 300 270 300 {
lab=vss}
N 190 320 270 320 {
lab=vdd}
C {devices/vsource.sym} -160 -80 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/gnd.sym} -160 -50 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} -160 -110 0 0 {name=p1 lab=vdd}
C {devices/vsource.sym} -50 -80 0 0 {name=V2 value=\{Vc\} savecurrent=false}
C {devices/gnd.sym} -50 -50 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} -50 -110 0 0 {name=p4 lab=vcont}
C {sky130_fd_pr/corner.sym} -310 -115 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/simulator_commands_shown.sym} -55 70 0 1 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.include sky130_fd_sc_hd__mux2_1.spice
.include sky130_fd_sc_hd__mux4_1.spice
.include sky130_fd_sc_hd__tapvpwrvgnd_1.spice

.param Vc=0.0
.param mc_mm_switch=1
.param mc_pr_switch=1
.option savecurrents
.control
  save all

  foreach v 1.0 1.2 1.4 1.6 1.8
    alterparam Vc=$v
    reset
    save all
    tran 10p 500n 100n
    remzerovec
    write vco_testbench.raw

    linearize
    fft v(out) v(out_parax)

    write vco_testbench_fft.raw
    set appendwrite
  end

  quit 0
.endc
"}
C {devices/launcher.sym} 80 -50 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {devices/lab_wire.sym} 150 200 3 0 {name=p2 lab=vcont}
C {devices/lab_wire.sym} 160 40 3 1 {name=p3 lab=vdd}
C {devices/lab_wire.sym} 250 150 0 1 {name=p5 lab=out}
C {vco.sym} 170 150 0 0 {name=x2}
C {devices/vsource.sym} -100 -80 0 0 {name=V3 value=0 savecurrent=false}
C {devices/gnd.sym} -100 -50 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} -100 -110 0 0 {name=p8 lab=vss}
C {devices/lab_wire.sym} 180 100 3 1 {name=p9 lab=vss}
C {devices/lab_wire.sym} 60 320 0 0 {name=p16 lab=vdd}
C {devices/lab_wire.sym} 60 300 0 0 {name=p17 lab=vss}
C {devices/ammeter.sym} 160 70 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {devices/lab_wire.sym} 360 200 3 0 {name=p6 lab=vcont}
C {devices/lab_wire.sym} 370 40 3 1 {name=p7 lab=vdd}
C {devices/lab_wire.sym} 460 150 0 1 {name=p10 lab=out_parax}
C {vco.sym} 380 150 0 0 {name=x1
schematic=vco_parax.sim
spice_sym_def="tcleval(.include [file normalize ../mag/vco.sim.spice])"
tclcommand="textwindow [file normalize ../mag/vco.sim.spice]"}
C {devices/lab_wire.sym} 390 100 3 1 {name=p11 lab=vss}
C {devices/ammeter.sym} 370 70 0 0 {name=Vmeas1 savecurrent=true spice_ignore=0}
