v {xschem version=3.4.5 file_version=1.2
}
G {}
K {type=subcircuit
format="@name @pinlist @symname"
template="name=x1"
}
V {}
S {}
E {}
N 420 80 430 80 {
lab=clk}
N 420 80 420 140 {
lab=clk}
N 420 140 430 140 {
lab=clk}
N 420 270 430 270 {
lab=clk}
N 420 270 420 380 {
lab=clk}
N 420 380 430 380 {
lab=clk}
N 490 270 500 270 {
lab=#net1}
N 500 270 500 380 {
lab=#net1}
N 490 380 500 380 {
lab=#net1}
N 410 330 420 330 {
lab=clk}
N 410 110 420 110 {
lab=clk}
N 590 80 600 80 {
lab=#net2}
N 590 80 590 140 {
lab=#net2}
N 590 140 600 140 {
lab=#net2}
N 640 110 730 110 {
lab=clk_delayed}
N 590 300 600 300 {
lab=#net1}
N 590 300 590 360 {
lab=#net1}
N 590 360 600 360 {
lab=#net1}
N 640 330 730 330 {
lab=clk_inverted}
N 500 330 590 330 {
lab=#net1}
N 410 110 410 330 {
lab=clk}
N 470 110 590 110 {
lab=#net2}
N 640 300 720 300 {
lab=vdd}
N 720 270 720 300 {
lab=vdd}
N 640 270 720 270 {
lab=vdd}
N 640 360 720 360 {
lab=vss}
N 720 360 720 390 {
lab=vss}
N 640 390 720 390 {
lab=vss}
N 470 140 550 140 {
lab=vss}
N 550 140 550 170 {
lab=vss}
N 470 170 550 170 {
lab=vss}
N 640 140 720 140 {
lab=vss}
N 720 140 720 170 {
lab=vss}
N 640 170 720 170 {
lab=vss}
N 640 50 720 50 {
lab=vdd}
N 720 50 720 80 {
lab=vdd}
N 640 80 720 80 {
lab=vdd}
N 470 80 550 80 {
lab=vdd}
N 470 50 550 50 {
lab=vdd}
N 550 50 550 80 {
lab=vdd}
C {devices/ipin.sym} 410 210 0 0 {name=p9 lab=clk}
C {devices/iopin.sym} 530 10 0 0 {name=p10 lab=vdd}
C {devices/opin.sym} 730 110 0 0 {name=p11 lab=clk_delayed}
C {devices/lab_wire.sym} 470 50 0 0 {name=p12 lab=vdd}
C {devices/lab_wire.sym} 470 170 2 1 {name=p13 lab=vss}
C {devices/lab_wire.sym} 460 230 0 0 {name=p16 lab=vdd}
C {devices/lab_wire.sym} 640 50 0 0 {name=p14 lab=vdd}
C {devices/lab_wire.sym} 640 170 2 1 {name=p15 lab=vss}
C {devices/lab_wire.sym} 640 270 0 0 {name=p18 lab=vdd}
C {devices/lab_wire.sym} 640 390 2 1 {name=p19 lab=vss}
C {devices/opin.sym} 730 330 0 0 {name=p20 lab=clk_inverted}
C {devices/iopin.sym} 540 470 0 0 {name=p41 lab=vss}
C {devices/lab_wire.sym} 540 470 2 1 {name=p17 lab=vss}
C {devices/lab_wire.sym} 460 420 2 1 {name=p42 lab=vss}
C {devices/lab_wire.sym} 530 10 0 0 {name=p43 lab=vdd}
C {sky130_fd_pr/nfet_01v8.sym} 450 140 0 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} 620 80 0 0 {name=M2
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
C {sky130_fd_pr/pfet_01v8.sym} 450 80 0 0 {name=M4
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
C {sky130_fd_pr/pfet_01v8.sym} 620 300 0 0 {name=M8
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
C {sky130_fd_pr/pfet_01v8.sym} 460 400 3 0 {name=M6
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
C {sky130_fd_pr/nfet_01v8.sym} 620 140 0 0 {name=M3
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
C {sky130_fd_pr/nfet_01v8.sym} 620 360 0 0 {name=M7
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
C {sky130_fd_pr/nfet_01v8.sym} 460 250 1 0 {name=M5
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
C {devices/lab_wire.sym} 460 270 1 1 {name=p1 lab=vss}
C {devices/lab_wire.sym} 460 380 1 0 {name=p2 lab=vdd}
