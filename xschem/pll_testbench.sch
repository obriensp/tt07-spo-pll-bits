v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 40 -510 840 -110 {flags=graph
y1=0
y2=2
ypos1=0.0031692536
ypos2=1.5507312
divy=5
subdivy=1
unity=1
x1=1.5171542e-07
x2=1.9466509e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="clk
d0
d1
d2
d3
d4"
color="4 8 21 20 18 6"
dataset=-1
unitx=1
logx=0
logy=0
digital=1}
B 2 880 -510 1680 -110 {flags=graph,unlocked
y1=0
y2=2
ypos1=0.0031692536
ypos2=1.5507312
divy=5
subdivy=1
unity=1
x1=0
x2=1.7240205e09
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="clk
d0
d1
d2
d3
d4"
color="4 8 21 20 18 6"
dataset=-1
unitx=1
logx=0
logy=0
digital=0
sim_type=sp
rawfile=$netlist_dir/pll_testbench_fft.raw}
C {devices/vsource.sym} -120 -110 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/gnd.sym} -120 -80 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} -120 -140 0 0 {name=p1 lab=vdd}
C {sky130_fd_pr/corner.sym} -270 -145 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/simulator_commands_shown.sym} -345 50 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.control
  tran 10p 500n
  write pll_testbench.raw

  linearize
  fft v(clk) v(d0) v(d1) v(d2) v(d3) v(d4)
  write pll_testbench_fft.raw
  quit 0
.endc
"}
C {devices/vsource.sym} -60 -110 0 0 {name=V2 value=0 savecurrent=false}
C {devices/gnd.sym} -60 -80 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} -60 -140 0 0 {name=p8 lab=vss}
C {clock_phases.sym} 390 110 0 0 {name=x1}
C {devices/lab_wire.sym} 370 50 1 0 {name=p12 lab=vdd}
C {devices/lab_wire.sym} 410 50 1 0 {name=p13 lab=vss}
C {devices/lab_wire.sym} 180 160 3 0 {name=p2 lab=vcont}
C {devices/lab_wire.sym} 190 60 3 1 {name=p3 lab=vdd}
C {vco.sym} 200 110 0 0 {name=x2
schematic=vco_parax.sim
spice_sym_def="tcleval(.include [file normalize ../mag/vco.sim.spice])"
tclcommand="textwindow [file normalize ../mag/vco.sim.spice]"
}
C {devices/lab_wire.sym} 210 60 3 1 {name=p15 lab=vss}
C {clkdiv2.sym} 570 110 0 0 {name=x4}
C {devices/lab_wire.sym} 560 50 1 0 {name=p43 lab=vdd}
C {devices/lab_wire.sym} 580 50 1 0 {name=p44 lab=vss}
C {clkdiv2.sym} 720 110 0 0 {name=x5}
C {devices/lab_wire.sym} 710 50 1 0 {name=p45 lab=vdd}
C {devices/lab_wire.sym} 730 50 1 0 {name=p46 lab=vss}
C {clkdiv2.sym} 870 110 0 0 {name=x6}
C {devices/lab_wire.sym} 860 50 1 0 {name=p47 lab=vdd}
C {devices/lab_wire.sym} 880 50 1 0 {name=p49 lab=vss}
C {clkdiv2.sym} 1020 110 0 0 {name=x7}
C {devices/lab_wire.sym} 1010 50 1 0 {name=p50 lab=vdd}
C {devices/lab_wire.sym} 1030 50 1 0 {name=p51 lab=vss}
C {clkdiv2.sym} 1170 110 0 0 {name=x8}
C {devices/lab_wire.sym} 1160 50 1 0 {name=p52 lab=vdd}
C {devices/lab_wire.sym} 1180 50 1 0 {name=p53 lab=vss}
C {devices/lab_wire.sym} 640 100 1 0 {name=p54 lab=d0}
C {devices/lab_wire.sym} 790 100 1 0 {name=p55 lab=d1}
C {devices/lab_wire.sym} 940 100 1 0 {name=p56 lab=d2}
C {devices/lab_wire.sym} 1090 100 1 0 {name=p57 lab=d3}
C {devices/lab_wire.sym} 1240 100 1 0 {name=p58 lab=d4}
C {devices/lab_wire.sym} 200 160 3 0 {name=p4 lab=vss}
C {devices/lab_wire.sym} 220 160 3 0 {name=p5 lab=vss}
C {devices/vsource.sym} 60 110 0 0 {name=V3 value=1.8 savecurrent=false}
C {devices/gnd.sym} 60 140 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} 60 80 0 0 {name=p6 lab=vcont}
C {devices/launcher.sym} 120 -50 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {devices/lab_wire.sym} 280 110 1 0 {name=p7 lab=clk}
