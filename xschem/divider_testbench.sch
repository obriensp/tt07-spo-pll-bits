v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 40 -740 840 -80 {flags=graph
y1=-0.11
y2=2.1
ypos1=0.18423326
ypos2=0.89833317
divy=5
subdivy=1
unity=1
x1=8.8748839e-08
x2=1.1158302e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="clk
clk_delayed
clk_inverted
\\"-; 0.9\\""
color="4 8 21 9"
dataset=-1
unitx=1
logx=0
logy=0
digital=0}
B 2 880 -660 1690 -80 {flags=graph
y1=-0.11
y2=2.1
ypos1=0.15136306
ypos2=1.619328
divy=5
subdivy=1
unity=1
x1=8.8748839e-08
x2=1.1158302e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="clk_delayed
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
digital=1
hilight_wave=3}
B 2 1730 -660 2540 -80 {flags=graph,unlocked
y1=9.4e-10
y2=1.3
ypos1=0.14648709
ypos2=1.6181311
divy=5
subdivy=1
unity=1
x1=-1.0149645e+08
x2=2.5937052e+09
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
rawfile=$netlist_dir/divider_testbench_fft.raw}
C {devices/vsource.sym} -410 -130 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/gnd.sym} -410 -100 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} -410 -160 0 0 {name=p1 lab=vdd}
C {sky130_fd_pr/corner.sym} -560 -165 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/simulator_commands_shown.sym} -425 60 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.param FREQ=2.5gig
.control
  tran 10p 500n
  write divider_testbench.raw

  linearize
  fft v(clk) v(d0) v(d1) v(d2) v(d3) v(d4)
  write divider_testbench_fft.raw
  quit 0
.endc
"}
C {devices/launcher.sym} 100 -40 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {devices/vsource.sym} -350 -130 0 0 {name=V2 value=0 savecurrent=false}
C {devices/gnd.sym} -350 -100 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} -350 -160 0 0 {name=p8 lab=vss}
C {devices/vsource.sym} -280 -130 0 0 {name=V3 value="pulse 0 1.8 0n 20p 20p \{0.5/FREQ\} \{1/FREQ\}" savecurrent=false}
C {devices/gnd.sym} -280 -100 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} -280 -160 0 0 {name=p2 lab=clk}
C {clock_phases.sym} 240 160 0 0 {name=x1}
C {devices/lab_wire.sym} 130 160 0 0 {name=p9 lab=clk}
C {devices/lab_wire.sym} 220 100 1 0 {name=p12 lab=vdd}
C {devices/lab_wire.sym} 260 100 1 0 {name=p13 lab=vss}
C {clkdiv2.sym} 420 160 0 0 {name=x4}
C {devices/lab_wire.sym} 410 100 1 0 {name=p43 lab=vdd}
C {devices/lab_wire.sym} 430 100 1 0 {name=p44 lab=vss}
C {clkdiv2.sym} 570 160 0 0 {name=x5}
C {devices/lab_wire.sym} 560 100 1 0 {name=p45 lab=vdd}
C {devices/lab_wire.sym} 580 100 1 0 {name=p46 lab=vss}
C {clkdiv2.sym} 720 160 0 0 {name=x6}
C {devices/lab_wire.sym} 710 100 1 0 {name=p47 lab=vdd}
C {devices/lab_wire.sym} 730 100 1 0 {name=p49 lab=vss}
C {clkdiv2.sym} 870 160 0 0 {name=x7}
C {devices/lab_wire.sym} 860 100 1 0 {name=p50 lab=vdd}
C {devices/lab_wire.sym} 880 100 1 0 {name=p51 lab=vss}
C {clkdiv2.sym} 1020 160 0 0 {name=x8}
C {devices/lab_wire.sym} 1010 100 1 0 {name=p52 lab=vdd}
C {devices/lab_wire.sym} 1030 100 1 0 {name=p53 lab=vss}
C {devices/lab_wire.sym} 490 150 1 0 {name=p54 lab=d0}
C {devices/lab_wire.sym} 640 150 1 0 {name=p55 lab=d1}
C {devices/lab_wire.sym} 790 150 1 0 {name=p56 lab=d2}
C {devices/lab_wire.sym} 940 150 1 0 {name=p57 lab=d3}
C {devices/lab_wire.sym} 1090 150 1 0 {name=p58 lab=d4}
C {devices/lab_wire.sym} 340 150 1 0 {name=p3 lab=clk_delayed}
C {devices/lab_wire.sym} 340 170 1 1 {name=p4 lab=clk_inverted}
