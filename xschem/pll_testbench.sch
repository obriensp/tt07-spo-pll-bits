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
x1=0
x2=5e-07
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
x1=-5314489.8
x2=2.6041e+08
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
B 2 40 -930 840 -530 {flags=graph
y1=0
y2=2
ypos1=0.0031692536
ypos2=1.5507312
divy=5
subdivy=1
unity=1
x1=0
x2=5e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="clk
d0_parax
d1_parax
d2_parax
d3_parax
d4_parax"
color="4 8 21 20 18 6"
dataset=-1
unitx=1
logx=0
logy=0
digital=1}
B 2 880 -930 1680 -530 {flags=graph,unlocked
y1=0
y2=2
ypos1=0.0031692536
ypos2=1.5507312
divy=5
subdivy=1
unity=1
x1=-5314489.8
x2=2.6041e+08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="clk
d0_parax
d1_parax
d2_parax
d3_parax
d4_parax"
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
  fft v(clk) v(d0) v(d1) v(d2) v(d3) v(d4) v(d0_parax) v(d1_parax) v(d2_parax) v(d3_parax) v(d4_parax)
  write pll_testbench_fft.raw
  quit 0
.endc
"}
C {devices/vsource.sym} -60 -110 0 0 {name=V2 value=0 savecurrent=false}
C {devices/gnd.sym} -60 -80 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} -60 -140 0 0 {name=p8 lab=vss}
C {clock_phases.sym} 490 120 0 0 {name=x1}
C {devices/lab_wire.sym} 470 60 1 0 {name=p12 lab=vdd}
C {devices/lab_wire.sym} 510 60 1 0 {name=p13 lab=vss}
C {devices/lab_wire.sym} 220 120 0 0 {name=p2 lab=vcont}
C {devices/lab_wire.sym} 290 70 3 1 {name=p3 lab=vdd}
C {vco.sym} 300 120 0 0 {name=x2
schematic=vco_parax.sim
spice_sym_def="tcleval(.include [file normalize ../mag/vco.sim.spice])"
tclcommand="textwindow [file normalize ../mag/vco.sim.spice]"
}
C {devices/lab_wire.sym} 310 70 3 1 {name=p15 lab=vss}
C {clkdiv2.sym} 670 120 0 0 {name=x4}
C {devices/lab_wire.sym} 660 60 1 0 {name=p43 lab=vdd}
C {devices/lab_wire.sym} 680 60 1 0 {name=p44 lab=vss}
C {clkdiv2.sym} 820 120 0 0 {name=x5}
C {devices/lab_wire.sym} 810 60 1 0 {name=p45 lab=vdd}
C {devices/lab_wire.sym} 830 60 1 0 {name=p46 lab=vss}
C {clkdiv2.sym} 970 120 0 0 {name=x6}
C {devices/lab_wire.sym} 960 60 1 0 {name=p47 lab=vdd}
C {devices/lab_wire.sym} 980 60 1 0 {name=p49 lab=vss}
C {clkdiv2.sym} 1120 120 0 0 {name=x7}
C {devices/lab_wire.sym} 1110 60 1 0 {name=p50 lab=vdd}
C {devices/lab_wire.sym} 1130 60 1 0 {name=p51 lab=vss}
C {clkdiv2.sym} 1270 120 0 0 {name=x8}
C {devices/lab_wire.sym} 1260 60 1 0 {name=p52 lab=vdd}
C {devices/lab_wire.sym} 1280 60 1 0 {name=p53 lab=vss}
C {devices/lab_wire.sym} 740 110 1 0 {name=p54 lab=d0}
C {devices/lab_wire.sym} 890 110 1 0 {name=p55 lab=d1}
C {devices/lab_wire.sym} 1040 110 1 0 {name=p56 lab=d2}
C {devices/lab_wire.sym} 1190 110 1 0 {name=p57 lab=d3}
C {devices/lab_wire.sym} 1340 110 1 0 {name=p58 lab=d4}
C {devices/lab_wire.sym} 300 170 3 0 {name=p4 lab=vss}
C {devices/lab_wire.sym} 320 170 3 0 {name=p5 lab=vss}
C {devices/vsource.sym} 60 110 0 0 {name=V3 value=1.8 savecurrent=false}
C {devices/gnd.sym} 60 140 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} 60 80 0 0 {name=p6 lab=vcont}
C {devices/launcher.sym} 120 -50 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {devices/lab_wire.sym} 380 120 1 0 {name=p7 lab=clk}
C {devices/lab_wire.sym} 470 210 1 0 {name=p9 lab=vdd}
C {devices/lab_wire.sym} 510 210 1 0 {name=p10 lab=vss}
C {clkdiv2.sym} 670 270 0 0 {name=x10
schematic=clkdiv2_parax.sim
spice_sym_def="tcleval(.include [file normalize ../mag/clkdiv2.sim.spice])"
tclcommand="textwindow [file normalize ../mag/clkdiv2.sim.spice]"}
C {devices/lab_wire.sym} 660 210 1 0 {name=p11 lab=vdd}
C {devices/lab_wire.sym} 680 210 1 0 {name=p14 lab=vss}
C {clkdiv2.sym} 820 270 0 0 {name=x11
schematic=clkdiv2_parax.sim
spice_sym_def="tcleval(.include [file normalize ../mag/clkdiv2.sim.spice])"
tclcommand="textwindow [file normalize ../mag/clkdiv2.sim.spice]"}
C {devices/lab_wire.sym} 810 210 1 0 {name=p16 lab=vdd}
C {devices/lab_wire.sym} 830 210 1 0 {name=p17 lab=vss}
C {clkdiv2.sym} 970 270 0 0 {name=x12
schematic=clkdiv2_parax.sim
spice_sym_def="tcleval(.include [file normalize ../mag/clkdiv2.sim.spice])"
tclcommand="textwindow [file normalize ../mag/clkdiv2.sim.spice]"}
C {devices/lab_wire.sym} 960 210 1 0 {name=p18 lab=vdd}
C {devices/lab_wire.sym} 980 210 1 0 {name=p19 lab=vss}
C {clkdiv2.sym} 1120 270 0 0 {name=x13
schematic=clkdiv2_parax.sim
spice_sym_def="tcleval(.include [file normalize ../mag/clkdiv2.sim.spice])"
tclcommand="textwindow [file normalize ../mag/clkdiv2.sim.spice]"}
C {devices/lab_wire.sym} 1110 210 1 0 {name=p20 lab=vdd}
C {devices/lab_wire.sym} 1130 210 1 0 {name=p21 lab=vss}
C {clkdiv2.sym} 1270 270 0 0 {name=x14
schematic=clkdiv2_parax.sim
spice_sym_def="tcleval(.include [file normalize ../mag/clkdiv2.sim.spice])"
tclcommand="textwindow [file normalize ../mag/clkdiv2.sim.spice]"}
C {devices/lab_wire.sym} 1260 210 1 0 {name=p22 lab=vdd}
C {devices/lab_wire.sym} 1280 210 1 0 {name=p23 lab=vss}
C {devices/lab_wire.sym} 740 260 1 0 {name=p24 lab=d0_parax}
C {devices/lab_wire.sym} 890 260 1 0 {name=p25 lab=d1_parax}
C {devices/lab_wire.sym} 1040 260 1 0 {name=p26 lab=d2_parax}
C {devices/lab_wire.sym} 1190 260 1 0 {name=p27 lab=d3_parax}
C {devices/lab_wire.sym} 1340 260 1 0 {name=p28 lab=d4_parax}
C {devices/lab_wire.sym} 380 270 1 0 {name=p29 lab=clk}
C {clock_phases.sym} 490 270 0 0 {name=x3
schematic=clock_phases_parax.sim
spice_sym_def="tcleval(.include [file normalize ../mag/clock_phases.sim.spice])"
tclcommand="textwindow [file normalize ../mag/clock_phases.sim.spice]"}
