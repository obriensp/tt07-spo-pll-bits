v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 80 -660 880 -260 {flags=graph
y1=-0.11
y2=2.1
ypos1=-0.074565301
ypos2=1.3340345
divy=5
subdivy=1
unity=1
x1=1.1121482e-08
x2=4.8199323e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="clk
clk_n
out
pass"
color="4 8 21 20"
dataset=-1
unitx=1
logx=0
logy=0
digital=1}
B 2 80 -1080 880 -680 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.1121482e-08
x2=4.8199323e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="clk
pass"
color="4 8"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 900 -920 1700 -260 {flags=graph
y1=-0.11
y2=2.1
ypos1=0.18423326
ypos2=0.89833317
divy=5
subdivy=1
unity=1
x1=1.1121482e-08
x2=4.8199323e-08
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
B 2 1750 -80 2550 320 {flags=graph
y1=-0.11
y2=2.1
ypos1=0.10193641
ypos2=1.3731978
divy=5
subdivy=1
unity=1
x1=1.1121482e-08
x2=4.8199323e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="clk
clk_n
qp1
qp2
cleaned"
color="4 8 21 20 18"
dataset=-1
unitx=1
logx=0
logy=0
digital=1}
B 2 1750 420 2550 820 {flags=graph
y1=-0.11
y2=2.1
ypos1=-0.15231586
ypos2=1.1189454
divy=5
subdivy=1
unity=1
x1=1.1121482e-08
x2=4.8199323e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="clk_delayed
clk_inverted
flop
flop2"
color="4 8 21 18"
dataset=-1
unitx=1
logx=0
logy=0
digital=1}
B 2 1750 920 2560 1500 {flags=graph
y1=-0.11
y2=2.1
ypos1=0.14648709
ypos2=1.6181311
divy=5
subdivy=1
unity=1
x1=1.1121482e-08
x2=4.8199323e-08
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
digital=1}
B 2 2600 920 3410 1500 {flags=graph,unlocked
y1=1.5e-13
y2=1.3
ypos1=0.14648709
ypos2=1.6181311
divy=5
subdivy=1
unity=1
x1=0
x2=4.1e+08
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
N 330 -170 340 -170 {
lab=clk}
N 330 -170 330 -110 {
lab=clk}
N 330 -110 340 -110 {
lab=clk}
N 310 -140 330 -140 {
lab=clk}
N 380 -140 470 -140 {
lab=out}
N 1200 100 1200 140 {
lab=QP1}
N 1320 100 1320 140 {
lab=Q1}
N 1200 200 1200 210 {
lab=#net1}
N 1200 210 1320 210 {
lab=#net1}
N 1320 200 1320 210 {
lab=#net1}
N 1260 210 1260 230 {
lab=#net1}
N 1240 70 1280 120 {
lab=Q1}
N 1280 120 1320 120 {
lab=Q1}
N 1240 120 1280 70 {
lab=QP1}
N 1200 120 1240 120 {
lab=QP1}
N 1510 100 1510 140 {
lab=QP2}
N 1630 100 1630 140 {
lab=Q2}
N 1510 200 1510 210 {
lab=#net2}
N 1510 210 1630 210 {
lab=#net2}
N 1630 200 1630 210 {
lab=#net2}
N 1570 210 1570 230 {
lab=#net2}
N 1550 70 1590 120 {
lab=Q2}
N 1590 120 1630 120 {
lab=Q2}
N 1550 120 1590 70 {
lab=QP2}
N 1510 120 1550 120 {
lab=QP2}
N 1390 450 1400 450 {
lab=QP2}
N 1390 450 1390 510 {
lab=QP2}
N 1390 510 1400 510 {
lab=QP2}
N 1370 480 1390 480 {
lab=QP2}
N 1440 480 1530 480 {
lab=cleaned}
N 1020 520 1040 520 {
lab=flop}
N 1040 420 1040 520 {
lab=flop}
N 660 420 1040 420 {
lab=flop}
N 660 420 660 560 {
lab=flop}
N 660 560 700 560 {
lab=flop}
N 1020 560 1060 560 {
lab=flop_n}
N 1060 400 1060 560 {
lab=flop_n}
N 640 400 1060 400 {
lab=flop_n}
N 640 400 640 520 {
lab=flop_n}
N 640 520 700 520 {
lab=flop_n}
N 1040 520 1100 520 {
lab=flop}
N 1060 560 1100 560 {
lab=flop_n}
C {devices/vsource.sym} -410 -130 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/gnd.sym} -410 -100 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} -410 -160 0 0 {name=p1 lab=vdd}
C {sky130_fd_pr/corner.sym} -560 -165 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/simulator_commands_shown.sym} -315 110 0 0 {name=COMMANDS
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
C {devices/launcher.sym} 140 -220 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {devices/vsource.sym} -350 -130 0 0 {name=V2 value=0 savecurrent=false}
C {devices/gnd.sym} -350 -100 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} -350 -160 0 0 {name=p8 lab=vss}
C {devices/vsource.sym} -270 -220 0 0 {name=V3 value="pulse 0 1.8 0n 20p 20p \{0.5/FREQ\} \{1/FREQ\}" savecurrent=false}
C {devices/gnd.sym} -270 -190 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} -270 -250 0 0 {name=p2 lab=clk}
C {sky130_fd_pr/nfet3_01v8.sym} 360 -110 0 0 {name=M1
L=0.15
W=1
body=GND
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 360 -170 0 0 {name=M2
L=0.15
W=1
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_wire.sym} 380 -200 0 0 {name=p3 lab=vdd}
C {devices/lab_wire.sym} 380 -80 2 1 {name=p4 lab=vss}
C {devices/lab_wire.sym} 310 -140 0 0 {name=p5 lab=clk}
C {devices/lab_wire.sym} 470 -140 0 1 {name=p6 lab=out}
C {devices/parax_cap.sym} 470 -130 0 0 {name=C1 gnd=0 value=4f m=1}
C {devices/vsource.sym} -270 -100 0 0 {name=V4 value="pulse 1.8 0.0 0n 20p 20p \{0.5/FREQ\} \{1/FREQ\}" savecurrent=false}
C {devices/gnd.sym} -270 -70 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} -270 -130 0 0 {name=p7 lab=clk_n}
C {sky130_fd_pr/pfet3_01v8.sym} 1220 70 0 1 {name=M11
L=0.15
W=2
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 1300 70 0 0 {name=M12
L=0.15
W=2
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 1180 170 0 0 {name=M13
L=0.15
W=1
body=GND
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 1340 170 0 1 {name=M14
L=0.15
W=1
body=GND
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 1240 260 0 0 {name=M15
L=0.15
W=2
body=GND
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_wire.sym} 1260 290 2 1 {name=p21 lab=vss}
C {devices/lab_wire.sym} 1200 40 0 0 {name=p22 lab=vdd}
C {devices/lab_wire.sym} 1320 40 0 0 {name=p23 lab=vdd}
C {devices/lab_wire.sym} 1220 260 0 0 {name=p24 lab=clk}
C {sky130_fd_pr/pfet3_01v8.sym} 1530 70 0 1 {name=M16
L=0.15
W=2
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 1610 70 0 0 {name=M17
L=0.15
W=2
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 1490 170 0 0 {name=M18
L=0.15
W=1
body=GND
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 1650 170 0 1 {name=M19
L=0.15
W=1
body=GND
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 1550 260 0 0 {name=M20
L=0.15
W=2
body=GND
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_wire.sym} 1570 290 2 1 {name=p25 lab=vss}
C {devices/lab_wire.sym} 1510 40 0 0 {name=p26 lab=vdd}
C {devices/lab_wire.sym} 1630 40 0 0 {name=p27 lab=vdd}
C {devices/lab_wire.sym} 1530 260 0 0 {name=p28 lab=clk_n}
C {devices/lab_wire.sym} 1510 120 0 0 {name=p29 lab=QP2}
C {devices/lab_wire.sym} 1160 170 0 0 {name=p30 lab=QP2}
C {devices/lab_wire.sym} 1200 120 0 0 {name=p31 lab=QP1}
C {devices/lab_wire.sym} 1320 120 0 1 {name=p32 lab=Q1}
C {devices/lab_wire.sym} 1630 120 0 1 {name=p33 lab=Q2}
C {devices/lab_wire.sym} 1360 170 0 1 {name=p34 lab=Q2}
C {devices/lab_wire.sym} 1470 170 0 0 {name=p35 lab=Q1}
C {devices/lab_wire.sym} 1670 170 0 1 {name=p36 lab=QP1}
C {devices/launcher.sym} 1820 870 0 0 {name=h1 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {sky130_fd_pr/nfet3_01v8.sym} 1420 510 0 0 {name=M21
L=0.15
W=1
body=GND
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 1420 450 0 0 {name=M22
L=0.15
W=1
body=VDD
nf=2
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_wire.sym} 1440 420 0 0 {name=p37 lab=vdd}
C {devices/lab_wire.sym} 1440 540 2 1 {name=p38 lab=vss}
C {devices/parax_cap.sym} 1530 490 0 0 {name=C6 gnd=0 value=4f m=1}
C {devices/lab_wire.sym} 1530 480 0 1 {name=p39 lab=cleaned}
C {devices/lab_wire.sym} 1370 480 0 0 {name=p40 lab=QP2}
C {clock_phases.sym} 560 290 0 0 {name=x1}
C {devices/lab_wire.sym} 450 290 0 0 {name=p9 lab=clk}
C {devices/lab_wire.sym} 660 280 0 1 {name=p10 lab=clk_delayed}
C {devices/lab_wire.sym} 660 300 0 1 {name=p11 lab=clk_inverted}
C {devices/lab_wire.sym} 540 230 1 0 {name=p12 lab=vdd}
C {devices/lab_wire.sym} 580 230 1 0 {name=p13 lab=vss}
C {latch.sym} 780 540 0 0 {name=x2}
C {devices/lab_wire.sym} 770 480 1 0 {name=p14 lab=vdd}
C {devices/lab_wire.sym} 790 480 1 0 {name=p15 lab=vss}
C {latch.sym} 940 540 0 0 {name=x3}
C {devices/lab_wire.sym} 930 480 1 0 {name=p16 lab=vdd}
C {devices/lab_wire.sym} 950 480 1 0 {name=p17 lab=vss}
C {devices/lab_wire.sym} 780 600 3 0 {name=p18 lab=clk_delayed}
C {devices/lab_wire.sym} 940 600 3 0 {name=p19 lab=clk_inverted}
C {devices/lab_wire.sym} 1100 520 2 0 {name=p20 lab=flop}
C {devices/lab_wire.sym} 1100 560 2 0 {name=p48 lab=flop_n}
C {clkdiv2.sym} 970 960 0 0 {name=x4}
C {devices/lab_wire.sym} 890 950 0 0 {name=p41 lab=clk_delayed}
C {devices/lab_wire.sym} 890 970 0 0 {name=p42 lab=clk_inverted}
C {devices/lab_wire.sym} 960 900 1 0 {name=p43 lab=vdd}
C {devices/lab_wire.sym} 980 900 1 0 {name=p44 lab=vss}
C {clkdiv2.sym} 1120 960 0 0 {name=x5}
C {devices/lab_wire.sym} 1110 900 1 0 {name=p45 lab=vdd}
C {devices/lab_wire.sym} 1130 900 1 0 {name=p46 lab=vss}
C {clkdiv2.sym} 1270 960 0 0 {name=x6}
C {devices/lab_wire.sym} 1260 900 1 0 {name=p47 lab=vdd}
C {devices/lab_wire.sym} 1280 900 1 0 {name=p49 lab=vss}
C {clkdiv2.sym} 1420 960 0 0 {name=x7}
C {devices/lab_wire.sym} 1410 900 1 0 {name=p50 lab=vdd}
C {devices/lab_wire.sym} 1430 900 1 0 {name=p51 lab=vss}
C {clkdiv2.sym} 1570 960 0 0 {name=x8}
C {devices/lab_wire.sym} 1560 900 1 0 {name=p52 lab=vdd}
C {devices/lab_wire.sym} 1580 900 1 0 {name=p53 lab=vss}
C {devices/lab_wire.sym} 1040 950 1 0 {name=p54 lab=d0}
C {devices/lab_wire.sym} 1190 950 1 0 {name=p55 lab=d1}
C {devices/lab_wire.sym} 1340 950 1 0 {name=p56 lab=d2}
C {devices/lab_wire.sym} 1490 950 1 0 {name=p57 lab=d3}
C {devices/lab_wire.sym} 1640 950 1 0 {name=p58 lab=d4}
