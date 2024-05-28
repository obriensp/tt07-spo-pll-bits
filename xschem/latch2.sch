v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 40 -220 60 -220 {
lab=#net1}
N 40 -220 40 -180 {
lab=#net1}
N 40 -180 220 -100 {
lab=#net1}
N 180 -80 220 -80 {
lab=#net1}
N 220 -100 220 -80 {
lab=#net1}
N 180 -200 220 -200 {
lab=#net2}
N 220 -200 220 -180 {
lab=#net2}
N 40 -80 220 -180 {
lab=#net2}
N 40 -80 40 -60 {
lab=#net2}
N 40 -60 60 -60 {
lab=#net2}
N 180 -40 220 -40 {
lab=RESET}
N 20 -380 200 -460 {
lab=#net3}
N 20 -460 200 -360 {
lab=Q}
N 20 -480 20 -460 {
lab=Q}
N 20 -480 60 -480 {
lab=Q}
N 20 -360 60 -360 {
lab=#net3}
N 20 -380 20 -360 {
lab=#net3}
N 180 -500 200 -500 {
lab=#net3}
N 200 -500 200 -460 {
lab=#net3}
N 180 -340 200 -340 {
lab=Q}
N 200 -360 200 -340 {
lab=Q}
N 40 -320 60 -320 {
lab=#net1}
N 40 -320 40 -220 {
lab=#net1}
N 180 -240 220 -240 {
lab=#net3}
N 220 -260 220 -240 {
lab=#net3}
N 20 -320 220 -260 {
lab=#net3}
N 20 -360 20 -320 {
lab=#net3}
N 20 -520 60 -520 {
lab=CK}
N 200 -340 220 -340 {
lab=Q}
C {sky130_stdcells/nor2_1.sym} 120 -220 0 1 {name=x1 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/nor2_1.sym} 120 -60 0 1 {name=x2 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/ipin.sym} 220 -40 0 1 {name=p3 lab=RESET}
C {sky130_stdcells/nor2_1.sym} 120 -500 0 0 {name=x3 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/nor2_1.sym} 120 -340 0 0 {name=x4 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/ipin.sym} 20 -520 0 0 {name=p4 lab=CK}
C {devices/opin.sym} 220 -340 0 0 {name=p5 lab=Q}
C {devices/ipin.sym} -160 -500 0 0 { name=p1 lab=VDD }
C {devices/ipin.sym} -160 -480 0 0 { name=p6 lab=VSS }
