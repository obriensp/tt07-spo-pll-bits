v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 120 -280 200 -280 {
lab=vdd}
N 70 -280 80 -280 {
lab=in}
N 70 -280 70 -220 {
lab=in}
N 70 -220 80 -220 {
lab=in}
N 120 -250 220 -250 {
lab=out}
N 40 -250 70 -250 {
lab=in}
N 120 -330 120 -310 {
lab=#net1}
N 120 -360 200 -360 {
lab=vdd}
N 200 -390 200 -360 {
lab=vdd}
N 120 -390 200 -390 {
lab=vdd}
N 120 -140 200 -140 {
lab=vss}
N 200 -140 200 -110 {
lab=vss}
N 120 -110 200 -110 {
lab=vss}
N 120 -190 120 -170 {
lab=#net2}
N 120 -410 120 -390 {
lab=vdd}
N 220 -250 250 -250 {
lab=out}
N 10 -250 40 -250 {
lab=in}
N 250 -250 510 -250 {
lab=out}
N -180 -430 -160 -430 {
lab=vdd}
N -180 -400 -160 -400 {
lab=vss}
N 120 -220 200 -220 {
lab=vss}
C {sky130_fd_pr/nfet_01v8.sym} 100 -220 0 0 {name=M3
L=0.45
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
C {sky130_fd_pr/pfet_01v8.sym} 100 -280 0 0 {name=M2
L=0.45
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
C {sky130_fd_pr/pfet_01v8.sym} 100 -360 0 0 {name=M1
L=0.45
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
C {sky130_fd_pr/nfet_01v8.sym} 100 -140 0 0 {name=M4
L=0.45
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
C {devices/lab_wire.sym} 120 -410 0 0 {name=p2 lab=vdd}
C {devices/ipin.sym} 10 -250 0 0 {name=p1 lab=in}
C {devices/opin.sym} 510 -250 0 0 {name=p3 lab=out}
C {devices/iopin.sym} -180 -430 0 1 {name=p4 lab=vdd}
C {devices/lab_wire.sym} -160 -430 0 1 {name=p5 lab=vdd}
C {devices/ipin.sym} 80 -140 0 0 {name=p7 lab=vcont_n}
C {devices/ipin.sym} 80 -360 0 0 {name=p6 lab=vcont_p}
C {devices/iopin.sym} -180 -400 0 1 {name=p14 lab=vss}
C {devices/lab_wire.sym} -160 -400 0 1 {name=p15 lab=vss}
C {devices/lab_wire.sym} 120 -110 2 1 {name=p16 lab=vss}
C {devices/lab_wire.sym} 200 -220 0 1 {name=p19 lab=vss}
C {devices/lab_wire.sym} 200 -280 0 1 {name=p20 lab=vdd}
