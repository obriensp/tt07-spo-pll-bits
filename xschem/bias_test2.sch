v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 30 -770 830 -370 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=5e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vss
vdd
vcont
out
out2
out3"
color="4 8 21 20 18 6"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 840 -770 1640 -370 {flags=graph
y1=0.32
y2=0.94
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=5e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=out3
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 30 -1510 830 -800 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1.8
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vcont
inv
inv_lvt
a
b"
color="4 8 21 20 18"
dataset=-1
unitx=1
logx=0
logy=0
sweep=vcont}
B 2 840 -1510 1640 -800 {flags=graph
y1=0.0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1.8
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vcont_buf
vdd2_buf
sum
vcont_g"
color="4 8 21 20"
dataset=-1
unitx=1
logx=0
logy=0
sweep=vcont}
B 2 1680 -1510 2480 -800 {flags=graph
y1=0.0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1.8
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vcont
ideal"
color="4 8"
dataset=-1
unitx=1
logx=0
logy=0
sweep=vcont}
N 290 -190 390 -190 {
lab=vdd2}
N 950 -180 1150 -180 {
lab=#net1}
N 950 -210 950 -180 {
lab=#net1}
N 950 -210 990 -210 {
lab=#net1}
N 1150 -240 1200 -240 {
lab=vcont_buf}
N 1200 -240 1200 -10 {
lab=vcont_buf}
N 950 -10 1200 -10 {
lab=vcont_buf}
N 950 -170 950 -10 {
lab=vcont_buf}
N 950 -170 990 -170 {
lab=vcont_buf}
N 1320 -180 1520 -180 {
lab=#net2}
N 1320 -210 1320 -180 {
lab=#net2}
N 1320 -210 1360 -210 {
lab=#net2}
N 1520 -240 1570 -240 {
lab=vdd2_buf}
N 1570 -240 1570 -10 {
lab=vdd2_buf}
N 1320 -10 1570 -10 {
lab=vdd2_buf}
N 1320 -170 1320 -10 {
lab=vdd2_buf}
N 1320 -170 1360 -170 {
lab=vdd2_buf}
N 440 70 460 70 {
lab=vcont}
N 440 70 440 130 {
lab=vcont}
N 440 130 460 130 {
lab=vcont}
N 500 70 570 70 {
lab=vdd}
N 570 40 570 70 {
lab=vdd}
N 500 40 570 40 {
lab=vdd}
N 500 130 580 130 {
lab=GND}
N 500 160 580 160 {
lab=GND}
N 580 130 580 160 {
lab=GND}
N 420 100 440 100 {
lab=vcont}
N 500 100 590 100 {
lab=inv}
N 700 70 720 70 {
lab=vcont}
N 700 70 700 130 {
lab=vcont}
N 700 130 720 130 {
lab=vcont}
N 760 70 830 70 {
lab=vdd}
N 830 40 830 70 {
lab=vdd}
N 760 40 830 40 {
lab=vdd}
N 760 130 840 130 {
lab=GND}
N 760 160 840 160 {
lab=GND}
N 840 130 840 160 {
lab=GND}
N 680 100 700 100 {
lab=vcont}
N 760 100 850 100 {
lab=inv_lvt}
N 170 330 270 330 {
lab=#net3}
N 310 330 380 330 {
lab=vdd}
N 380 300 380 330 {
lab=vdd}
N 310 300 380 300 {
lab=vdd}
N 310 360 390 360 {
lab=a}
N 310 510 380 510 {
lab=vdd}
N 380 480 380 510 {
lab=vdd}
N 310 480 380 480 {
lab=vdd}
N 310 540 390 540 {
lab=b}
N 310 390 390 390 {
lab=GND}
N 310 420 390 420 {
lab=GND}
N 390 390 390 420 {
lab=GND}
N 270 330 270 390 {
lab=#net3}
N 310 570 390 570 {
lab=GND}
N 310 600 390 600 {
lab=GND}
N 390 570 390 600 {
lab=GND}
N 270 510 270 570 {
lab=#net3}
N 220 330 220 540 {
lab=#net3}
N 220 540 270 540 {
lab=#net3}
C {devices/vsource.sym} -240 -70 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/gnd.sym} -240 -40 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} -240 -100 0 0 {name=p1 lab=vdd}
C {devices/vsource.sym} -180 -70 0 0 {name=V2 value=0 savecurrent=false}
C {devices/gnd.sym} -180 -40 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} -180 -100 0 0 {name=p2 lab=vss}
C {sky130_fd_pr/corner.sym} -420 -135 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/simulator_commands_shown.sym} -375 -610 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="

.control
  save all
  tran 100p 5u
  write bias_test2.raw all

  quit 0
.endc
"}
C {devices/launcher.sym} 90 -340 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {devices/vsource.sym} -110 -70 0 0 {name=V3 value="pwl 0 0 5u 1.8" savecurrent=false}
C {devices/gnd.sym} -110 -40 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} -110 -100 0 0 {name=p3 lab=vcont}
C {devices/res.sym} 290 -220 2 0 {name=R6
value=10k
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} 290 -250 0 0 {name=p16 lab=vdd}
C {devices/lab_wire.sym} 390 -190 0 1 {name=p17 lab=vdd2}
C {devices/res.sym} 290 -160 2 0 {name=R7
value=10k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 290 -130 0 0 {name=l10 lab=GND
value="pwl 0n 0 500n 1.8"}
C {zero_opamp.sym} 1070 -240 0 0 {name=x1}
C {devices/lab_wire.sym} 990 -130 0 0 {name=p28 lab=vdd}
C {devices/lab_wire.sym} 990 -110 0 0 {name=p29 lab=vss}
C {devices/lab_wire.sym} 990 -150 0 0 {name=p30 lab=vss}
C {devices/lab_wire.sym} 890 -210 0 0 {name=p32 lab=vcont}
C {devices/lab_wire.sym} 1200 -240 0 1 {name=p35 lab=vcont_buf}
C {devices/res.sym} 1150 -210 2 0 {name=R9
value=10k
footprint=1206
device=resistor
m=1}
C {zero_opamp.sym} 1440 -240 0 0 {name=x2}
C {devices/lab_wire.sym} 1360 -130 0 0 {name=p4 lab=vdd}
C {devices/lab_wire.sym} 1360 -110 0 0 {name=p5 lab=vss}
C {devices/lab_wire.sym} 1360 -150 0 0 {name=p6 lab=vss}
C {devices/lab_wire.sym} 1260 -210 0 0 {name=p7 lab=vdd2}
C {devices/lab_wire.sym} 1570 -240 0 1 {name=p8 lab=vdd2_buf}
C {devices/res.sym} 1520 -210 2 0 {name=R1
value=10k
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} 990 -270 0 0 {name=p25 lab=vss}
C {devices/res.sym} 920 -210 3 0 {name=R8
value=10k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1290 -210 3 0 {name=R2
value=10k
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} 1360 -270 0 0 {name=p26 lab=vss}
C {sky130_fd_pr/nfet_01v8.sym} 480 130 0 0 {name=M1
L=0.15
W=1
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 740 130 0 0 {name=M2
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 480 70 0 0 {name=M3
L=0.15
W=2
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} 740 70 0 0 {name=M4
L=0.35
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {devices/lab_wire.sym} 500 40 0 0 {name=p13 lab=vdd}
C {devices/gnd.sym} 500 160 0 0 {name=l4 lab=GND
value="pwl 0n 0 500n 1.8"}
C {devices/lab_wire.sym} 420 100 0 0 {name=p15 lab=vcont}
C {devices/lab_wire.sym} 590 100 0 1 {name=p18 lab=inv}
C {devices/lab_wire.sym} 760 40 0 0 {name=p19 lab=vdd}
C {devices/gnd.sym} 760 160 0 0 {name=l5 lab=GND
value="pwl 0n 0 500n 1.8"}
C {devices/lab_wire.sym} 680 100 0 0 {name=p20 lab=vcont}
C {devices/lab_wire.sym} 850 100 0 1 {name=p21 lab=inv_lvt}
C {sky130_tests/gain_stage.sym} 1940 -210 0 0 {name=x3}
C {devices/lab_wire.sym} 1880 -210 0 0 {name=p9 lab=vcont_buf}
C {devices/lab_wire.sym} 1920 -100 0 0 {name=p10 lab=vdd}
C {devices/lab_wire.sym} 1920 -80 0 0 {name=p11 lab=vss}
C {devices/lab_wire.sym} 1920 -140 0 0 {name=p12 lab=vdd}
C {devices/lab_wire.sym} 1920 -120 0 0 {name=p14 lab=vss}
C {devices/lab_wire.sym} 1920 -160 0 0 {name=p22 lab=vss}
C {devices/lab_wire.sym} 2000 -210 0 1 {name=p23 lab=vcont_g}
C {devices/res.sym} 170 360 2 0 {name=R3
value=9k
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} 170 270 0 0 {name=p24 lab=vdd}
C {devices/res.sym} 170 300 2 0 {name=R4
value=10k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 170 390 0 0 {name=l6 lab=GND
value="pwl 0n 0 500n 1.8"}
C {sky130_fd_pr/pfet_01v8.sym} 290 330 0 0 {name=M5
L=0.15
W=2
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
C {devices/lab_wire.sym} 310 300 0 0 {name=p31 lab=vdd}
C {devices/lab_wire.sym} 390 360 0 1 {name=p27 lab=a}
C {devices/lab_wire.sym} 310 480 0 0 {name=p34 lab=vdd}
C {devices/lab_wire.sym} 390 540 0 1 {name=p36 lab=b}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 290 510 0 0 {name=M6
L=0.35
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 290 390 0 0 {name=M7
L=0.15
W=1
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
C {devices/gnd.sym} 310 420 0 0 {name=l11 lab=GND
value="pwl 0n 0 500n 1.8"}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 290 570 0 0 {name=M8
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/gnd.sym} 310 600 0 0 {name=l7 lab=GND
value="pwl 0n 0 500n 1.8"}
C {devices/vcvs.sym} 800 410 0 0 {name=E1 value=0.5}
C {devices/vsource.sym} 800 470 0 0 {name=V4 value=1 savecurrent=false}
C {devices/gnd.sym} 800 500 0 0 {name=l8 lab=GND}
C {devices/lab_wire.sym} 800 380 3 1 {name=p33 lab=ideal}
C {devices/lab_wire.sym} 760 390 0 0 {name=p37 lab=vcont}
C {devices/lab_wire.sym} 760 430 0 0 {name=p38 lab=vss}
