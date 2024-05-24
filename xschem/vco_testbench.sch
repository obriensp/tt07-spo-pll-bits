v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 40 -740 840 -340 {flags=graph
y1=0
y2=2
ypos1=0.12609929
ypos2=1.2636995
divy=5
subdivy=1
unity=1
x1=2.8312505e-07
x2=2.9033075e-07
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
B 2 870 -740 1670 -340 {flags=graph,unlocked
y1=1.1e-08
y2=1.2
ypos1=0.12609929
ypos2=1.2636995
divy=5
subdivy=1
unity=1
x1=0
x2=2.0e+09
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
B 2 40 -1160 840 -760 {flags=graph
y1=0
y2=2
ypos1=0.12609929
ypos2=1.2636995
divy=5
subdivy=1
unity=1
x1=2.8312505e-07
x2=2.9033075e-07
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
B 2 870 -1160 1670 -760 {flags=graph,unlocked
y1=1.1e-08
y2=1.2
ypos1=0.12609929
ypos2=1.2636995
divy=5
subdivy=1
unity=1
x1=0
x2=2.0e+09
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
N 120 90 510 90 {
lab=vdd}
N 510 -30 510 90 {
lab=vdd}
N 490 -30 490 70 {
lab=vss}
N 120 70 490 70 {
lab=vss}
N 250 -30 250 90 {
lab=vdd}
N 230 -30 230 70 {
lab=vss}
C {devices/vsource.sym} -160 -80 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/gnd.sym} -160 -50 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} -160 -110 0 0 {name=p1 lab=vdd}
C {devices/vsource.sym} -50 -80 0 0 {name=V2 value=\{Vc\} savecurrent=false}
C {devices/gnd.sym} -50 -50 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} -50 -110 0 0 {name=p4 lab=vcont}
C {sky130_fd_pr/corner.sym} -310 -115 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/simulator_commands_shown.sym} -315 -590 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.param Vc=0.0

.control
  save all

  foreach v 1.0 1.2 1.4 1.6 1.8
    alterparam Vc=$v
    reset
    tran 10p 500n 100n
    write vco_testbench.raw

    linearize
    fft v(out) v(out_parax)

    write vco_testbench_fft.raw
    set appendwrite
  end

  quit 0
.endc
"}
C {devices/launcher.sym} 220 -200 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {devices/lab_wire.sym} 210 -30 3 0 {name=p2 lab=vcont}
C {devices/lab_wire.sym} 220 -130 3 1 {name=p3 lab=vdd}
C {devices/lab_wire.sym} 310 -80 0 1 {name=p5 lab=out}
C {vco.sym} 230 -80 0 0 {name=x2}
C {devices/vsource.sym} -100 -80 0 0 {name=V3 value=0 savecurrent=false}
C {devices/gnd.sym} -100 -50 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} -100 -110 0 0 {name=p8 lab=vss}
C {devices/lab_wire.sym} 240 -130 3 1 {name=p9 lab=vss}
C {devices/lab_wire.sym} 470 -30 3 0 {name=p10 lab=vcont}
C {devices/lab_wire.sym} 480 -130 3 1 {name=p11 lab=vdd}
C {devices/lab_wire.sym} 570 -80 0 1 {name=p12 lab=out_parax}
C {vco.sym} 490 -80 0 0 {name=x1
schematic=vco_parax.sim
spice_sym_def="tcleval(.include [file normalize ../mag/vco.sim.spice])"
tclcommand="textwindow [file normalize ../mag/vco.sim.spice]"
}
C {devices/lab_wire.sym} 500 -130 3 1 {name=p15 lab=vss}
C {devices/lab_wire.sym} 120 90 0 0 {name=p16 lab=vdd}
C {devices/lab_wire.sym} 120 70 0 0 {name=p17 lab=vss}
