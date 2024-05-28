v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 80 -220 80 -180 {
lab=q_n}
N 200 -220 200 -180 {
lab=q}
N 80 -120 80 -110 {
lab=#net1}
N 80 -110 200 -110 {
lab=#net1}
N 200 -120 200 -110 {
lab=#net1}
N 140 -110 140 -90 {
lab=#net1}
N 120 -250 160 -200 {
lab=q}
N 160 -200 200 -200 {
lab=q}
N 120 -200 160 -250 {
lab=q_n}
N 80 -200 120 -200 {
lab=q_n}
N 200 -200 240 -200 {
lab=q}
N 40 -200 80 -200 {
lab=q_n}
N 20 -250 80 -250 {
lab=vdd}
N 20 -280 20 -250 {
lab=vdd}
N 20 -280 80 -280 {
lab=vdd}
N 200 -250 260 -250 {
lab=vdd}
N 260 -280 260 -250 {
lab=vdd}
N 200 -280 260 -280 {
lab=vdd}
N 140 -60 220 -60 {
lab=vss}
N 220 -60 220 -30 {
lab=vss}
N 140 -30 220 -30 {
lab=vss}
C {sky130_fd_pr/pfet_01v8.sym} 100 -250 0 1 {name=M11
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
C {sky130_fd_pr/pfet_01v8.sym} 180 -250 0 0 {name=M12
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
C {sky130_fd_pr/nfet_01v8.sym} 60 -150 0 0 {name=M13
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
C {sky130_fd_pr/nfet_01v8.sym} 220 -150 0 1 {name=M14
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
C {sky130_fd_pr/nfet_01v8.sym} 120 -60 0 0 {name=M15
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
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_wire.sym} 140 -30 2 1 {name=p21 lab=vss}
C {devices/lab_wire.sym} 80 -280 0 0 {name=p22 lab=vdd}
C {devices/lab_wire.sym} 200 -280 0 0 {name=p23 lab=vdd}
C {devices/iopin.sym} 150 -400 0 1 {name=p1 lab=vdd}
C {devices/ipin.sym} 40 -150 0 0 {name=p2 lab=d}
C {devices/opin.sym} 240 -200 0 0 {name=p3 lab=q}
C {devices/iopin.sym} 150 -360 0 1 {name=p4 lab=vss}
C {devices/ipin.sym} 240 -150 0 1 {name=p5 lab=d_n}
C {devices/opin.sym} 40 -200 0 1 {name=p6 lab=q_n}
C {devices/ipin.sym} 100 -60 0 0 {name=p7 lab=clk}
C {devices/lab_wire.sym} 150 -400 0 1 {name=p8 lab=vdd}
C {devices/lab_wire.sym} 150 -360 0 1 {name=p9 lab=vss}
C {devices/lab_wire.sym} 80 -150 0 1 {name=p10 lab=vss}
C {devices/lab_wire.sym} 200 -150 0 0 {name=p11 lab=vss}
