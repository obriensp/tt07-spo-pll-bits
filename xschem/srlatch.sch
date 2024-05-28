v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 180 -290 320 -290 {
lab=Q_B}
N 180 -170 320 -170 {
lab=Q}
N 180 -290 180 -220 {
lab=Q_B}
N 40 -220 180 -220 {
lab=Q_B}
N 40 -220 40 -190 {
lab=Q_B}
N 40 -190 60 -190 {
lab=Q_B}
N 200 -240 200 -170 {
lab=Q}
N 40 -240 200 -240 {
lab=Q}
N 40 -270 40 -240 {
lab=Q}
N 40 -270 60 -270 {
lab=Q}
N -40 -310 60 -310 {
lab=S}
N -40 -150 60 -150 {
lab=R}
C {sky130_stdcells/nor2_1.sym} 120 -290 0 0 {name=x2 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/nor2_1.sym} 120 -170 0 0 {name=x1 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {devices/ipin.sym} -40 -310 0 0 {name=p1 lab=S}
C {devices/ipin.sym} -40 -150 0 0 {name=p2 lab=R}
C {devices/opin.sym} 320 -290 0 0 {name=p3 lab=Q_B}
C {devices/opin.sym} 320 -170 0 0 {name=p4 lab=Q}
C {devices/ipin.sym} -50 -440 0 0 { name=p5 lab=vdd }
C {devices/ipin.sym} -50 -420 0 0 { name=p6 lab=vss }
