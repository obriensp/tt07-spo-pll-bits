v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 810 -300 840 -300 {
lab=#net1}
N 840 -440 840 -300 {
lab=#net1}
N 220 -440 840 -440 {
lab=#net1}
N 220 -440 220 -300 {
lab=#net1}
N 220 -300 240 -300 {
lab=#net1}
N 430 -300 430 -220 {
lab=#net2}
N 620 -300 620 -220 {
lab=#net3}
N 810 -300 810 -220 {
lab=#net1}
N 100 -420 180 -420 {
lab=vdd}
N 180 -450 180 -420 {
lab=vdd}
N 100 -450 180 -450 {
lab=vdd}
N 100 -470 100 -450 {
lab=vdd}
N 60 -420 60 -390 {
lab=vcont_b}
N 60 -390 100 -390 {
lab=vcont_b}
N 100 -200 180 -200 {
lab=vss}
N 180 -200 180 -170 {
lab=vss}
N 100 -390 100 -230 {
lab=vcont_b}
N 100 -170 180 -170 {
lab=vss}
N -120 -470 -100 -470 {
lab=vdd}
N -120 -360 -100 -360 {
lab=s0}
N -120 -320 -100 -320 {
lab=s1}
N -120 -400 -100 -400 {
lab=vcont}
N 840 -300 870 -300 {
lab=#net1}
N -120 -440 -100 -440 {
lab=vss}
N 910 -300 910 -270 {lab=out}
N 910 -300 950 -300 {lab=out}
N 870 -300 870 -240 {lab=#net1}
N 910 -240 990 -240 { lab=#net4}
N 910 -210 990 -210 { lab=#net4}
N 910 -360 990 -360 { lab=vdd}
N 870 -360 870 -300 { lab=#net1}
N 910 -330 910 -300 {lab=out}
N 910 -390 990 -390 {
lab=vdd}
N 990 -390 990 -360 {
lab=vdd}
N 990 -240 990 -210 {
lab=#net4}
C {delay_stage.sym} 340 -300 0 0 {name=x1}
C {delay_stage.sym} 530 -300 0 0 {name=x2}
C {delay_stage.sym} 720 -300 0 0 {name=x3}
C {devices/parax_cap.sym} 430 -210 0 0 {name=C1 gnd=0 value=10f m=1}
C {devices/parax_cap.sym} 620 -210 0 0 {name=C2 gnd=0 value=10f m=1}
C {devices/parax_cap.sym} 810 -210 0 0 {name=C3 gnd=0 value=10f m=1}
C {devices/opin.sym} 950 -300 0 0 {name=p15 lab=out}
C {sky130_fd_pr/pfet_01v8.sym} 80 -420 0 0 {name=M5
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
C {devices/lab_wire.sym} 100 -470 0 0 {name=p3 lab=vdd}
C {sky130_fd_pr/nfet_01v8.sym} 80 -200 0 0 {name=M6
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
C {devices/lab_wire.sym} 60 -200 0 0 {name=p5 lab=vcont}
C {devices/lab_wire.sym} 60 -420 0 0 {name=p7 lab=vcont_b}
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
C {devices/lab_wire.sym} 300 -230 3 0 {name=p19 sig_type=std_logic lab=s0}
C {devices/lab_wire.sym} 320 -230 3 0 {name=p20 sig_type=std_logic lab=s1}
C {devices/lab_wire.sym} 490 -230 3 0 {name=p21 sig_type=std_logic lab=s0}
C {devices/lab_wire.sym} 510 -230 3 0 {name=p22 sig_type=std_logic lab=s1}
C {devices/lab_wire.sym} 680 -230 3 0 {name=p23 sig_type=std_logic lab=s0}
C {devices/lab_wire.sym} 700 -230 3 0 {name=p24 sig_type=std_logic lab=s1}
C {devices/lab_wire.sym} 330 -370 3 1 {name=p25 lab=vdd}
C {devices/lab_wire.sym} 520 -370 3 1 {name=p26 lab=vdd}
C {devices/lab_wire.sym} 710 -370 3 1 {name=p27 lab=vdd}
C {devices/iopin.sym} -120 -440 0 1 {name=p28 lab=vss}
C {devices/lab_wire.sym} -100 -440 0 1 {name=p29 lab=vss}
C {devices/lab_wire.sym} 100 -170 2 1 {name=p30 lab=vss}
C {devices/lab_wire.sym} 350 -370 3 1 {name=p31 lab=vss}
C {devices/lab_wire.sym} 540 -370 3 1 {name=p32 lab=vss}
C {devices/lab_wire.sym} 730 -370 3 1 {name=p33 lab=vss}
C {sky130_fd_pr/nfet_01v8.sym} 890 -240 0 0 {name=M1
L=0.15
W=1
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 890 -360 0 0 {name=M2
L=0.15
W=2
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_wire.sym} 910 -390 0 0 {name=p34 lab=vdd}
C {devices/lab_wire.sym} 910 -210 2 1 {name=p35 lab=vss}
