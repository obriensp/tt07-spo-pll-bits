v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 40 -540 840 -140 {flags=graph
y1=0
y2=2
ypos1=0.12614087
ypos2=1.2524077
divy=5
subdivy=1
unity=1
x1=0
x2=1e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="ref
out0
out1
out2
out3"
color="4 8 21 20 18"
dataset=-1
unitx=1
logx=0
logy=0
digital=1}
B 2 860 -540 1660 -140 {flags=graph,unlocked
y1=2.6e-07
y2=1.2
ypos1=0.0031692536
ypos2=1.5507312
divy=5
subdivy=1
unity=1
x1=-2058243.5
x2=46048211
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="ref
out0
out1
out2
out3"
color="4 8 21 20 18"
dataset=-1
unitx=1
logx=0
logy=0
digital=0
sim_type=sp
rawfile=$netlist_dir/clkdiv_testbench_fft.raw}
C {clkdiv_2n.sym} 690 100 0 0 {name=x1}
C {devices/vsource.sym} -120 -140 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/gnd.sym} -120 -110 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} -120 -170 0 0 {name=p1 lab=vdd}
C {sky130_fd_pr/corner.sym} -270 -175 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/simulator_commands_shown.sym} -345 20 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.include sky130_fd_sc_hd__mux4_1.spice
.include sky130_fd_sc_hd__tapvpwrvgnd_1.spice

.param FREQ=40meg

.control
  tran 50p 5u
  write clkdiv_testbench.raw

  linearize
  fft v(ref) v(out0) v(out1) v(out2) v(out3)
  write clkdiv_testbench_fft.raw
  quit 0
.endc
"}
C {devices/vsource.sym} -60 -140 0 0 {name=V2 value=0 savecurrent=false}
C {devices/gnd.sym} -60 -110 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} -60 -170 0 0 {name=p8 lab=vss}
C {devices/vsource.sym} 60 80 0 0 {name=V3 value="pulse 1.8 0.0 0n 20p 20p \{0.5/FREQ\} \{1/FREQ\}" savecurrent=false}
C {devices/gnd.sym} 60 110 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} 60 50 0 0 {name=p6 lab=ref}
C {devices/launcher.sym} 120 -80 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {clock_phases.sym} 490 100 0 0 {name=x2}
C {devices/lab_wire.sym} 380 100 0 0 {name=p2 lab=ref}
C {devices/lab_wire.sym} 680 40 3 1 {name=p26 lab=vdd}
C {devices/lab_wire.sym} 700 40 3 1 {name=p32 lab=vss}
C {devices/lab_wire.sym} 470 40 3 1 {name=p3 lab=vdd}
C {devices/lab_wire.sym} 510 40 3 1 {name=p4 lab=vss}
C {devices/lab_wire.sym} 790 100 0 1 {name=p5 lab=out0}
C {devices/lab_wire.sym} 680 160 3 0 {name=p7 lab=vss}
C {devices/lab_wire.sym} 700 160 3 0 {name=p9 lab=vss}
C {devices/lab_wire.sym} 590 90 3 1 {name=p10 lab=clk}
C {devices/lab_wire.sym} 590 110 3 0 {name=p11 lab=clk_n}
C {clkdiv_2n.sym} 690 290 0 0 {name=x3}
C {devices/lab_wire.sym} 680 230 3 1 {name=p12 lab=vdd}
C {devices/lab_wire.sym} 700 230 3 1 {name=p13 lab=vss}
C {devices/lab_wire.sym} 790 290 0 1 {name=p14 lab=out1}
C {devices/lab_wire.sym} 680 350 3 0 {name=p15 lab=vdd}
C {devices/lab_wire.sym} 700 350 3 0 {name=p16 lab=vss}
C {devices/lab_wire.sym} 590 280 3 1 {name=p17 lab=clk}
C {devices/lab_wire.sym} 590 300 3 0 {name=p18 lab=clk_n}
C {clkdiv_2n.sym} 980 290 0 0 {name=x4}
C {devices/lab_wire.sym} 970 230 3 1 {name=p19 lab=vdd}
C {devices/lab_wire.sym} 990 230 3 1 {name=p20 lab=vss}
C {devices/lab_wire.sym} 1080 290 0 1 {name=p21 lab=out3}
C {devices/lab_wire.sym} 970 350 3 0 {name=p22 lab=vdd}
C {devices/lab_wire.sym} 990 350 3 0 {name=p23 lab=vdd}
C {devices/lab_wire.sym} 880 280 3 1 {name=p24 lab=clk}
C {devices/lab_wire.sym} 880 300 3 0 {name=p25 lab=clk_n}
C {clkdiv_2n.sym} 980 100 0 0 {name=x5}
C {devices/lab_wire.sym} 970 40 3 1 {name=p27 lab=vdd}
C {devices/lab_wire.sym} 990 40 3 1 {name=p28 lab=vss}
C {devices/lab_wire.sym} 1080 100 0 1 {name=p29 lab=out2}
C {devices/lab_wire.sym} 970 160 3 0 {name=p30 lab=vss}
C {devices/lab_wire.sym} 990 160 3 0 {name=p31 lab=vdd}
C {devices/lab_wire.sym} 880 90 3 1 {name=p33 lab=clk}
C {devices/lab_wire.sym} 880 110 3 0 {name=p34 lab=clk_n}
