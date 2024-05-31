v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 30 -760 830 -360 {flags=graph
y1=-1.8e-07
y2=2
ypos1=0.12609929
ypos2=1.2636995
divy=5
subdivy=1
unity=1
x1=0
x2=2e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vpulse
out%0
out%1
out%2
out%3
out%4
\\"-; 0.9\\""
color="4 8 21 20 18 6 9"
dataset=-1
unitx=1
logx=0
logy=0
digital=0}
B 2 30 -1180 830 -780 {flags=graph
y1=0
y2=2
ypos1=0.12609929
ypos2=1.2636995
divy=5
subdivy=1
unity=1
x1=0
x2=2e-07
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
digital=0}
N 260 -170 340 -170 {
lab=vdd}
N 340 -200 340 -170 {
lab=vdd}
N 260 -200 340 -200 {
lab=vdd}
N 260 -220 260 -200 {
lab=vdd}
N 220 -170 220 -140 {
lab=vcont_b}
N 220 -140 260 -140 {
lab=vcont_b}
N 260 -90 340 -90 {
lab=vss}
N 340 -90 340 -60 {
lab=vss}
N 260 -60 340 -60 {
lab=vss}
N 260 -140 260 -120 {
lab=vcont_b}
N 540 -90 540 -10 {
lab=vdd}
N 520 -90 520 -30 {
lab=vdd}
N 440 -30 520 -30 {
lab=vdd}
N 440 -10 540 -10 {
lab=vdd}
C {devices/vsource.sym} -220 -100 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/gnd.sym} -220 -70 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} -220 -130 0 0 {name=p1 lab=vdd}
C {devices/vsource.sym} -110 -100 0 0 {name=V2 value=\{Vc\} savecurrent=false}
C {devices/gnd.sym} -110 -70 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} -110 -130 0 0 {name=p4 lab=vcont}
C {sky130_fd_pr/corner.sym} -370 -135 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/simulator_commands_shown.sym} -325 -610 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.param Vc=0.0

.control
  save all

  foreach v 1.0 1.2 1.4 1.6 1.8
    alterparam Vc=$v
    reset
    tran 10p 200n
    write delay_stage_testbench.raw

    set appendwrite
  end

  *quit 0
.endc
"}
C {devices/launcher.sym} 80 -320 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {devices/vsource.sym} -160 -100 0 0 {name=V3 value=0 savecurrent=false}
C {devices/gnd.sym} -160 -70 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} -160 -130 0 0 {name=p8 lab=vss}
C {delay_stage.sym} 560 -160 0 0 {name=x1}
C {sky130_fd_pr/pfet_01v8.sym} 240 -170 0 0 {name=M5
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
C {devices/lab_wire.sym} 260 -220 0 0 {name=p10 lab=vdd}
C {sky130_fd_pr/nfet_01v8.sym} 240 -90 0 0 {name=M6
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
C {devices/lab_wire.sym} 220 -90 0 0 {name=p11 lab=vcont}
C {devices/lab_wire.sym} 220 -170 0 0 {name=p12 lab=vcont_b}
C {devices/lab_wire.sym} 260 -60 2 1 {name=p30 lab=vss}
C {devices/lab_wire.sym} 550 -230 3 1 {name=p13 lab=vdd}
C {devices/lab_wire.sym} 570 -230 3 1 {name=p14 lab=vss}
C {devices/lab_wire.sym} 580 -90 3 0 {name=p17 lab=vcont}
C {devices/lab_wire.sym} 600 -90 3 0 {name=p18 lab=vcont_b}
C {devices/vsource.sym} -40 -100 0 0 {name=V4 value="pulse 0 1.8 50n 1n 1n 50n 100n 1" savecurrent=false}
C {devices/gnd.sym} -40 -70 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} -40 -130 0 0 {name=p19 lab=vpulse}
C {devices/lab_wire.sym} 460 -160 0 0 {name=p2 lab=vpulse}
C {devices/lab_wire.sym} 650 -160 0 1 {name=p3 lab=out}
C {devices/lab_wire.sym} 440 -10 0 0 {name=p24 lab=vdd}
C {devices/lab_wire.sym} 440 -30 0 0 {name=p25 lab=vdd}
