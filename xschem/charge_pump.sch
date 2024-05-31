v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 380 -350 480 -350 {
lab=vdd}
N 380 -290 480 -290 {
lab=vss}
N 110 -400 210 -400 {
lab=vdd}
N 210 -430 210 -400 {
lab=vdd}
N 110 -430 210 -430 {
lab=vdd}
N 110 -340 210 -340 {
lab=vss}
N 210 -340 210 -310 {
lab=vss}
N 110 -310 210 -310 {
lab=vss}
N 110 -370 280 -370 {
lab=#net1}
N 280 -370 280 -350 {
lab=#net1}
N 280 -350 340 -350 {
lab=#net1}
N 70 -400 70 -340 {
lab=QA}
N 40 -370 70 -370 {
lab=QA}
N 600 -320 600 -310 {
lab=#net2}
N 690 -320 820 -320 {
lab=VOUT}
N 300 -520 340 -520 {
lab=#net3}
N 260 -490 300 -490 {
lab=#net3}
N 300 -520 300 -490 {
lab=#net3}
N 380 -490 380 -380 {
lab=#net4}
N 260 -60 340 -60 {
lab=#net5}
N 260 -90 260 -60 {
lab=#net5}
N 380 -120 380 -90 {
lab=#net6}
N 220 -90 260 -90 {
lab=#net5}
N 380 -260 380 -120 {
lab=#net6}
N 380 -60 460 -60 {
lab=vss}
N 460 -60 460 -30 {
lab=vss}
N 380 -30 460 -30 {
lab=vss}
N 150 -60 220 -60 {
lab=vss}
N 150 -60 150 -30 {
lab=vss}
N 150 -30 220 -30 {
lab=vss}
N 380 -520 460 -520 {
lab=vdd}
N 180 -520 260 -520 {
lab=vdd}
N 180 -550 180 -520 {
lab=vdd}
N 180 -550 260 -550 {
lab=vdd}
N 380 -550 460 -550 {
lab=vdd}
N 460 -550 460 -520 {
lab=vdd}
N 380 -320 600 -320 {
lab=#net2}
N 660 -320 690 -320 {
lab=VOUT}
N 290 -650 310 -650 {
lab=vdd}
N 290 -620 310 -620 {
lab=vss}
C {sky130_fd_pr/nfet_01v8.sym} 360 -290 0 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} 360 -350 0 0 {name=M2
L=0.15
W=3
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
C {devices/gnd.sym} 600 -190 0 0 {name=l4 lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} 90 -340 0 0 {name=M3
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
C {sky130_fd_pr/pfet_01v8.sym} 90 -400 0 0 {name=M4
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
C {devices/lab_wire.sym} 340 -290 0 0 {name=p20 sig_type=std_logic lab=QB}
C {devices/lab_wire.sym} 40 -370 0 0 {name=p21 sig_type=std_logic lab=QA}
C {devices/lab_wire.sym} 110 -430 0 0 {name=p22 lab=vdd}
C {devices/lab_wire.sym} 480 -350 0 1 {name=p23 lab=vdd}
C {devices/lab_wire.sym} 110 -310 2 1 {name=p24 lab=vss}
C {devices/lab_wire.sym} 480 -290 2 0 {name=p26 lab=vss}
C {sky130_fd_pr/cap_mim_m3_1.sym} 600 -220 0 0 {name=C2 model=cap_mim_m3_1 W=20 L=10 MF=1 spiceprefix=X}
C {sky130_fd_pr/res_generic_l1.sym} 600 -280 0 0 {name=R2
W=1
L=10
model=res_generic_l1
mult=1}
C {devices/gnd.sym} 750 -260 0 0 {name=l5 lab=GND}
C {sky130_fd_pr/cap_mim_m3_1.sym} 750 -290 0 0 {name=C1 model=cap_mim_m3_1 W=10 L=10 MF=1 spiceprefix=X}
C {devices/lab_wire.sym} 260 -550 0 0 {name=p28 lab=vdd}
C {devices/lab_wire.sym} 380 -550 0 1 {name=p29 lab=vdd}
C {devices/lab_wire.sym} 260 -430 2 1 {name=p30 lab=vss}
C {devices/lab_wire.sym} 220 -30 2 0 {name=p31 lab=vss}
C {devices/lab_wire.sym} 380 -30 2 1 {name=p32 lab=vss}
C {devices/lab_wire.sym} 220 -150 0 0 {name=p33 lab=vdd}
C {sky130_fd_pr/pfet_01v8.sym} 360 -520 0 0 {name=M7
L=0.15
W=3
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
C {sky130_fd_pr/pfet_01v8.sym} 280 -520 0 1 {name=M8
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
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 360 -60 0 0 {name=M9
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
C {sky130_fd_pr/nfet_01v8.sym} 240 -60 0 1 {name=M5
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
C {sky130_fd_pr/res_generic_l1.sym} 260 -460 0 0 {name=R3
W=1
L=8.2
model=res_generic_l1
mult=1}
C {sky130_fd_pr/res_generic_l1.sym} 220 -120 0 0 {name=R4
W=1
L=16.4
model=res_generic_l1
mult=1}
C {sky130_fd_pr/res_generic_l1.sym} 630 -320 3 0 {name=R1
W=1
L=8.2
model=res_generic_l1
mult=1}
C {devices/iopin.sym} 290 -650 0 1 {name=p1 lab=vdd}
C {devices/lab_wire.sym} 310 -650 0 1 {name=p2 lab=vdd}
C {devices/iopin.sym} 290 -620 0 1 {name=p3 lab=vss}
C {devices/lab_wire.sym} 310 -620 0 1 {name=p4 lab=vss}
C {devices/ipin.sym} -90 -390 0 0 {name=p5 lab=QA}
C {devices/opin.sym} 820 -320 0 0 {name=p15 lab=VOUT}
C {devices/lab_wire.sym} -90 -390 0 1 {name=p6 sig_type=std_logic lab=QA}
C {devices/ipin.sym} -90 -330 0 0 {name=p7 lab=QB}
C {devices/lab_wire.sym} -90 -330 0 1 {name=p8 sig_type=std_logic lab=QB}
