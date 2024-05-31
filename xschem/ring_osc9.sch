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
N 1970 -210 2000 -210 {
lab=out}
N 100 -250 100 -220 {
lab=vcont_b}
N 2000 -210 2030 -210 {
lab=out}
N 240 -340 2000 -340 {
lab=out}
N 2000 -340 2000 -210 {
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
C {devices/opin.sym} 2030 -210 0 0 {name=p12 lab=out}
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
C {delay_stage.sym} 930 -210 0 0 {name=x4}
C {delay_stage.sym} 1120 -210 0 0 {name=x5}
C {devices/lab_wire.sym} 950 -140 3 0 {name=p13 lab=vcont}
C {devices/lab_wire.sym} 1140 -140 3 0 {name=p14 lab=vcont}
C {devices/lab_wire.sym} 970 -140 3 0 {name=p15 lab=vcont_b}
C {devices/lab_wire.sym} 1160 -140 3 0 {name=p16 lab=vcont_b}
C {devices/lab_wire.sym} 920 -280 3 1 {name=p19 lab=vdd}
C {devices/lab_wire.sym} 1110 -280 3 1 {name=p20 lab=vdd}
C {devices/lab_wire.sym} 940 -280 3 1 {name=p21 lab=vss}
C {devices/lab_wire.sym} 1130 -280 3 1 {name=p22 lab=vss}
C {delay_stage.sym} 1310 -210 0 0 {name=x6}
C {delay_stage.sym} 1500 -210 0 0 {name=x7}
C {devices/lab_wire.sym} 1330 -140 3 0 {name=p23 lab=vcont}
C {devices/lab_wire.sym} 1520 -140 3 0 {name=p24 lab=vcont}
C {devices/lab_wire.sym} 1350 -140 3 0 {name=p34 lab=vcont_b}
C {devices/lab_wire.sym} 1540 -140 3 0 {name=p35 lab=vcont_b}
C {devices/lab_wire.sym} 1300 -280 3 1 {name=p36 lab=vdd}
C {devices/lab_wire.sym} 1490 -280 3 1 {name=p37 lab=vdd}
C {devices/lab_wire.sym} 1320 -280 3 1 {name=p38 lab=vss}
C {devices/lab_wire.sym} 1510 -280 3 1 {name=p39 lab=vss}
C {delay_stage.sym} 1690 -210 0 0 {name=x8}
C {delay_stage.sym} 1880 -210 0 0 {name=x9}
C {devices/lab_wire.sym} 1710 -140 3 0 {name=p40 lab=vcont}
C {devices/lab_wire.sym} 1900 -140 3 0 {name=p41 lab=vcont}
C {devices/lab_wire.sym} 1730 -140 3 0 {name=p42 lab=vcont_b}
C {devices/lab_wire.sym} 1920 -140 3 0 {name=p43 lab=vcont_b}
C {devices/lab_wire.sym} 1680 -280 3 1 {name=p44 lab=vdd}
C {devices/lab_wire.sym} 1870 -280 3 1 {name=p45 lab=vdd}
C {devices/lab_wire.sym} 1700 -280 3 1 {name=p46 lab=vss}
C {devices/lab_wire.sym} 1890 -280 3 1 {name=p47 lab=vss}
