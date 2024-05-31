v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 220 -300 240 -300 {
lab=out}
N -120 -470 -100 -470 {
lab=vdd}
N -120 -360 -100 -360 {
lab=s0}
N -120 -320 -100 -320 {
lab=s1}
N -120 -400 -100 -400 {
lab=vcont}
N -120 -440 -100 -440 {
lab=vss}
N 100 -340 180 -340 {
lab=vdd}
N 180 -370 180 -340 {
lab=vdd}
N 100 -370 180 -370 {
lab=vdd}
N 100 -390 100 -370 {
lab=vdd}
N 60 -340 60 -310 {
lab=vcont_b}
N 60 -310 100 -310 {
lab=vcont_b}
N 100 -250 180 -250 {
lab=vss}
N 180 -250 180 -220 {
lab=vss}
N 100 -220 180 -220 {
lab=vss}
N 100 -310 100 -280 {
lab=vcont_b}
N 1950 -300 1970 -300 {
lab=#net1}
N 1110 -540 1970 -540 {
lab=#net1}
N 1070 -500 1570 -500 {
lab=#net2}
N 1030 -460 1190 -460 {
lab=#net3}
N 810 -460 990 -460 {
lab=#net4}
N 1050 -740 1050 -700 {
lab=out}
N 220 -740 1050 -740 {
lab=out}
N 220 -740 220 -300 {
lab=out}
N 1050 -740 1100 -740 {
lab=out}
N 990 -620 990 -460 {
lab=#net4}
N 1030 -620 1030 -460 {
lab=#net3}
N 1070 -620 1070 -500 {
lab=#net2}
N 1110 -620 1110 -540 {
lab=#net1}
N 810 -460 810 -300 {
lab=#net4}
N 1190 -460 1190 -300 {
lab=#net3}
N 1570 -500 1570 -300 {
lab=#net2}
N 1970 -540 1970 -300 {
lab=#net1}
C {delay_stage.sym} 340 -300 0 0 {name=x1}
C {delay_stage.sym} 530 -300 0 0 {name=x2}
C {delay_stage.sym} 720 -300 0 0 {name=x3}
C {devices/lab_wire.sym} 360 -230 3 0 {name=p1 lab=vcont}
C {devices/lab_wire.sym} 550 -230 3 0 {name=p2 lab=vcont}
C {devices/lab_wire.sym} 740 -230 3 0 {name=p4 lab=vcont}
C {devices/lab_wire.sym} 380 -230 3 0 {name=p6 lab=vcont_b}
C {devices/lab_wire.sym} 570 -230 3 0 {name=p8 lab=vcont_b}
C {devices/lab_wire.sym} 760 -230 3 0 {name=p9 lab=vcont_b}
C {devices/iopin.sym} -120 -470 0 1 {name=p10 lab=vdd}
C {devices/lab_wire.sym} -100 -470 0 1 {name=p11 lab=vdd}
C {devices/ipin.sym} -120 -360 0 0 {name=p12 lab=s0}
C {devices/ipin.sym} -120 -320 0 0 {name=p13 lab=s1}
C {devices/lab_wire.sym} -100 -360 0 1 {name=p14 sig_type=std_logic lab=s0}
C {devices/lab_wire.sym} -100 -320 0 1 {name=p16 sig_type=std_logic lab=s1}
C {devices/ipin.sym} -120 -400 0 0 {name=p17 lab=vcont}
C {devices/lab_wire.sym} -100 -400 0 1 {name=p18 lab=vcont}
C {devices/lab_wire.sym} 330 -370 3 1 {name=p25 lab=vdd}
C {devices/lab_wire.sym} 520 -370 3 1 {name=p26 lab=vdd}
C {devices/lab_wire.sym} 710 -370 3 1 {name=p27 lab=vdd}
C {devices/iopin.sym} -120 -440 0 1 {name=p28 lab=vss}
C {devices/lab_wire.sym} -100 -440 0 1 {name=p29 lab=vss}
C {devices/lab_wire.sym} 350 -370 3 1 {name=p31 lab=vss}
C {devices/lab_wire.sym} 540 -370 3 1 {name=p32 lab=vss}
C {devices/lab_wire.sym} 730 -370 3 1 {name=p33 lab=vss}
C {delay_stage.sym} 910 -300 0 0 {name=x4}
C {devices/lab_wire.sym} 930 -230 3 0 {name=p38 lab=vcont}
C {devices/lab_wire.sym} 950 -230 3 0 {name=p39 lab=vcont_b}
C {devices/lab_wire.sym} 900 -370 3 1 {name=p42 lab=vdd}
C {devices/lab_wire.sym} 920 -370 3 1 {name=p43 lab=vss}
C {delay_stage.sym} 1100 -300 0 0 {name=x5}
C {devices/lab_wire.sym} 1120 -230 3 0 {name=p44 lab=vcont}
C {devices/lab_wire.sym} 1140 -230 3 0 {name=p45 lab=vcont_b}
C {devices/lab_wire.sym} 1090 -370 3 1 {name=p48 lab=vdd}
C {devices/lab_wire.sym} 1110 -370 3 1 {name=p49 lab=vss}
C {delay_stage.sym} 1290 -300 0 0 {name=x6}
C {devices/lab_wire.sym} 1310 -230 3 0 {name=p50 lab=vcont}
C {devices/lab_wire.sym} 1330 -230 3 0 {name=p51 lab=vcont_b}
C {devices/lab_wire.sym} 1280 -370 3 1 {name=p54 lab=vdd}
C {devices/lab_wire.sym} 1300 -370 3 1 {name=p55 lab=vss}
C {delay_stage.sym} 1480 -300 0 0 {name=x7}
C {devices/lab_wire.sym} 1500 -230 3 0 {name=p56 lab=vcont}
C {devices/lab_wire.sym} 1520 -230 3 0 {name=p57 lab=vcont_b}
C {devices/lab_wire.sym} 1470 -370 3 1 {name=p60 lab=vdd}
C {devices/lab_wire.sym} 1490 -370 3 1 {name=p61 lab=vss}
C {delay_stage.sym} 1670 -300 0 0 {name=x9}
C {devices/lab_wire.sym} 1690 -230 3 0 {name=p64 lab=vcont}
C {devices/lab_wire.sym} 1710 -230 3 0 {name=p65 lab=vcont_b}
C {devices/lab_wire.sym} 1660 -370 3 1 {name=p68 lab=vdd}
C {devices/lab_wire.sym} 1680 -370 3 1 {name=p69 lab=vss}
C {delay_stage.sym} 1860 -300 0 0 {name=x10}
C {sky130_stdcells/mux4_1.sym} 1050 -660 1 1 {name=x11 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {devices/lab_wire.sym} 950 -620 3 0 {name=p153 sig_type=std_logic lab=s0}
C {devices/lab_wire.sym} 920 -620 3 0 {name=p154 sig_type=std_logic lab=s1}
C {sky130_fd_pr/pfet_01v8.sym} 80 -340 0 0 {name=M5
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
C {devices/lab_wire.sym} 100 -390 0 0 {name=p3 lab=vdd}
C {devices/lab_wire.sym} 60 -250 0 0 {name=p5 lab=vcont}
C {devices/lab_wire.sym} 60 -340 0 0 {name=p7 lab=vcont_b}
C {devices/lab_wire.sym} 100 -220 2 1 {name=p30 lab=vss}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 80 -250 0 0 {name=M1
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
C {devices/opin.sym} 1100 -740 0 0 {name=p15 lab=out}
C {devices/lab_wire.sym} 1880 -230 3 0 {name=p19 lab=vcont}
C {devices/lab_wire.sym} 1900 -230 3 0 {name=p20 lab=vcont_b}
C {devices/lab_wire.sym} 1850 -370 3 1 {name=p21 lab=vdd}
C {devices/lab_wire.sym} 1870 -370 3 1 {name=p22 lab=vss}
C {sky130_stdcells/tapvpwrvgnd_1.sym} 1270 -650 0 0 {name=x8 VGND=vss VPWR=vdd prefix=sky130_fd_sc_hd__ }
