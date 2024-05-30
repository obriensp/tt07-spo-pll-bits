v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 240 -210 260 -210 {
lab=out}
N 100 -280 180 -280 {
lab=vdd}
N 180 -310 180 -280 {
lab=vdd}
N 100 -310 180 -310 {
lab=vdd}
N 100 -330 100 -310 {
lab=vdd}
N 60 -280 60 -250 {
lab=vcont_b}
N 60 -250 100 -250 {
lab=vcont_b}
N 100 -190 180 -190 {
lab=vss}
N 180 -190 180 -160 {
lab=vss}
N 100 -160 180 -160 {
lab=vss}
N 470 -500 490 -500 {
lab=vdd}
N 470 -440 490 -440 {
lab=vcont}
N 470 -470 490 -470 {
lab=vss}
N 240 -340 240 -210 {
lab=out}
N 240 -340 860 -340 {
lab=out}
N 860 -340 860 -210 {
lab=out}
N 830 -210 860 -210 {
lab=out}
N 100 -250 100 -220 {
lab=vcont_b}
N 860 -210 890 -210 {
lab=out}
C {delay_stage.sym} 360 -210 0 0 {name=x1}
C {delay_stage.sym} 550 -210 0 0 {name=x2}
C {delay_stage.sym} 740 -210 0 0 {name=x3}
C {sky130_fd_pr/pfet_01v8.sym} 80 -280 0 0 {name=M5
L=0.3
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
C {devices/lab_wire.sym} 100 -330 0 0 {name=p3 lab=vdd}
C {devices/lab_wire.sym} 60 -190 0 0 {name=p5 lab=vcont}
C {devices/lab_wire.sym} 60 -280 0 0 {name=p7 lab=vcont_b}
C {devices/lab_wire.sym} 380 -140 3 0 {name=p1 lab=vcont}
C {devices/lab_wire.sym} 570 -140 3 0 {name=p2 lab=vcont}
C {devices/lab_wire.sym} 760 -140 3 0 {name=p4 lab=vcont}
C {devices/lab_wire.sym} 400 -140 3 0 {name=p6 lab=vcont_b}
C {devices/lab_wire.sym} 590 -140 3 0 {name=p8 lab=vcont_b}
C {devices/lab_wire.sym} 780 -140 3 0 {name=p9 lab=vcont_b}
C {devices/iopin.sym} 470 -500 0 1 {name=p10 lab=vdd}
C {devices/lab_wire.sym} 490 -500 0 1 {name=p11 lab=vdd}
C {devices/ipin.sym} 470 -440 0 0 {name=p17 lab=vcont}
C {devices/lab_wire.sym} 490 -440 0 1 {name=p18 lab=vcont}
C {devices/lab_wire.sym} 350 -280 3 1 {name=p25 lab=vdd}
C {devices/lab_wire.sym} 540 -280 3 1 {name=p26 lab=vdd}
C {devices/lab_wire.sym} 730 -280 3 1 {name=p27 lab=vdd}
C {devices/iopin.sym} 470 -470 0 1 {name=p28 lab=vss}
C {devices/lab_wire.sym} 490 -470 0 1 {name=p29 lab=vss}
C {devices/lab_wire.sym} 100 -160 2 1 {name=p30 lab=vss}
C {devices/lab_wire.sym} 370 -280 3 1 {name=p31 lab=vss}
C {devices/lab_wire.sym} 560 -280 3 1 {name=p32 lab=vss}
C {devices/lab_wire.sym} 750 -280 3 1 {name=p33 lab=vss}
C {devices/opin.sym} 890 -210 0 0 {name=p12 lab=out}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 80 -190 0 0 {name=M1
L=0.3
W=2
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
