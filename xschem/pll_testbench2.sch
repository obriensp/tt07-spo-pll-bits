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
ypos1=-0.041562269
ypos2=0.93134934
divy=5
subdivy=1
unity=1
x1=2.000235e-07
x2=5e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="ref
clk
vco_out"
color="4 8 21"
dataset=-1
unitx=1
logx=0
logy=0
digital=1}
B 2 880 -510 1680 -110 {flags=graph,unlocked
y1=0
y2=1
ypos1=0.0031692536
ypos2=1.5507312
divy=5
subdivy=1
unity=1
x1=-4623921.1
x2=2.0345253e+08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="ref
clk
vco_out"
color="4 8 21"
dataset=-1
unitx=1
logx=0
logy=0
digital=0
sim_type=sp
rawfile=$netlist_dir/pll_testbench_fft2.raw}
B 2 40 -950 840 -550 {flags=graph
y1=0
y2=2
ypos1=0.077321479
ypos2=0.86383544
divy=5
subdivy=1
unity=1
x1=2.000235e-07
x2=5e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="qa
qb
reset"
color="20 18 6"
dataset=-1
unitx=1
logx=0
logy=0
digital=1}
B 2 40 -1380 840 -980 {flags=graph
y1=0
y2=2
ypos1=0.011109428
ypos2=0.9284606
divy=5
subdivy=1
unity=1
x1=2.000235e-07
x2=5e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=vcont
color=21
dataset=-1
unitx=1
logx=0
logy=0
digital=0}
N 330 440 460 440 {
lab=ref}
N 340 660 460 660 {
lab=clk}
N 420 620 460 620 {
lab=reset}
N 420 480 420 620 {
lab=reset}
N 420 480 460 480 {
lab=reset}
N 420 560 460 560 {
lab=reset}
N 600 460 620 460 {
lab=QA}
N 620 460 620 540 {
lab=QA}
N 580 540 620 540 {
lab=QA}
N 580 580 620 580 {
lab=QB}
N 620 580 620 640 {
lab=QB}
N 600 640 620 640 {
lab=QB}
N 620 460 680 460 {
lab=QA}
N 620 640 680 640 {
lab=QB}
C {devices/vsource.sym} -120 -110 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/gnd.sym} -120 -80 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} -120 -140 0 0 {name=p1 lab=vdd}
C {sky130_fd_pr/corner.sym} -270 -145 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/simulator_commands_shown.sym} -345 50 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.include sky130_fd_sc_hd__and2_1.spice
.include sky130_fd_sc_hd__and2b_1.spice
.include sky130_fd_sc_hd__nor2_1.spice
.include sky130_fd_sc_hd__nor2_4.spice

.param FREQ=32meg

.control
  tran 50p 5u 200n
  write pll_testbench2.raw

  linearize
  fft v(ref) v(clk) v(vco_out)
  write pll_testbench_fft2.raw
  *quit 0
.endc
"}
C {devices/vsource.sym} -60 -110 0 0 {name=V2 value=0 savecurrent=false}
C {devices/gnd.sym} -60 -80 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} -60 -140 0 0 {name=p8 lab=vss}
C {devices/lab_wire.sym} 300 230 3 0 {name=p2 lab=vcont}
C {devices/lab_wire.sym} 310 130 3 1 {name=p3 lab=vdd}
C {vco.sym} 320 180 0 0 {name=x2
schematic=vco_parax.sim
spice_sym_def="tcleval(.include [file normalize ../mag/vco.sim.spice])"
tclcommand="textwindow [file normalize ../mag/vco.sim.spice]"
}
C {devices/lab_wire.sym} 330 130 3 1 {name=p15 lab=vss}
C {devices/lab_wire.sym} 320 230 3 0 {name=p4 lab=vss}
C {devices/lab_wire.sym} 340 230 3 0 {name=p5 lab=vss}
C {devices/vsource.sym} 60 110 0 0 {name=V3 value="pulse 1.8 0.0 0n 20p 20p \{0.5/FREQ\} \{1/FREQ\}" savecurrent=false}
C {devices/gnd.sym} 60 140 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} 60 80 0 0 {name=p6 lab=ref}
C {devices/launcher.sym} 120 -50 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {devices/lab_wire.sym} 400 180 1 0 {name=p7 lab=vco_out}
C {latch2.sym} 540 460 0 0 {name=x1 VDDPIN=vdd VSSPIN=vss}
C {latch2.sym} 540 640 2 1 {name=x3 VDDPIN=vdd VSSPIN=vss}
C {sky130_stdcells/and2_1.sym} 520 560 0 1 {name=x4 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {devices/lab_wire.sym} 510 410 3 1 {name=p9 lab=vdd}
C {devices/lab_wire.sym} 530 410 3 1 {name=p10 lab=vss}
C {devices/lab_wire.sym} 510 690 3 0 {name=p14 lab=vdd}
C {devices/lab_wire.sym} 530 690 3 0 {name=p16 lab=vss}
C {devices/lab_wire.sym} 680 460 0 1 {name=p11 sig_type=std_logic lab=QA}
C {devices/lab_wire.sym} 680 640 0 1 {name=p18 sig_type=std_logic lab=QB}
C {devices/lab_wire.sym} 330 440 0 0 {name=p13 lab=ref}
C {devices/lab_wire.sym} 340 660 0 0 {name=p19 lab=clk}
C {devices/lab_wire.sym} 420 560 0 0 {name=p27 lab=reset}
C {clock_phases.sym} 510 180 0 0 {name=x5}
C {devices/lab_wire.sym} 490 120 1 0 {name=p12 lab=vdd}
C {devices/lab_wire.sym} 530 120 1 0 {name=p25 lab=vss}
C {clkdiv2.sym} 690 180 0 0 {name=x6}
C {devices/lab_wire.sym} 680 120 1 0 {name=p43 lab=vdd}
C {devices/lab_wire.sym} 700 120 1 0 {name=p44 lab=vss}
C {clkdiv2.sym} 840 180 0 0 {name=x7}
C {devices/lab_wire.sym} 830 120 1 0 {name=p34 lab=vdd}
C {devices/lab_wire.sym} 850 120 1 0 {name=p35 lab=vss}
C {devices/lab_wire.sym} 910 170 1 0 {name=p36 lab=clk}
C {charge_pump.sym} 930 500 0 0 {name=x8}
C {devices/lab_wire.sym} 850 490 0 0 {name=p37 sig_type=std_logic lab=QA}
C {devices/lab_wire.sym} 850 510 0 0 {name=p38 sig_type=std_logic lab=QB}
C {devices/lab_wire.sym} 1010 500 0 1 {name=p39 lab=vcont}
C {devices/lab_wire.sym} 920 450 3 1 {name=p40 lab=vdd}
C {devices/lab_wire.sym} 940 450 3 1 {name=p41 lab=vss}
