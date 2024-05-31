v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 60 -310 190 -310 {
lab=REF}
N 70 -90 190 -90 {
lab=CLK}
N 150 -130 190 -130 {
lab=reset}
N 150 -270 150 -130 {
lab=reset}
N 150 -270 190 -270 {
lab=reset}
N 150 -190 190 -190 {
lab=reset}
N 330 -290 350 -290 {
lab=QA}
N 350 -290 350 -210 {
lab=QA}
N 310 -210 350 -210 {
lab=QA}
N 310 -170 350 -170 {
lab=QB}
N 350 -170 350 -110 {
lab=QB}
N 330 -110 350 -110 {
lab=QB}
N 350 -290 410 -290 {
lab=QA}
N 350 -110 410 -110 {
lab=QB}
N 280 -490 300 -490 {
lab=vdd}
N 280 -460 300 -460 {
lab=vss}
C {latch2.sym} 270 -290 0 0 {name=x1 VDDPIN=vdd VSSPIN=vss}
C {latch2.sym} 270 -110 2 1 {name=x3 VDDPIN=vdd VSSPIN=vss}
C {sky130_stdcells/and2_1.sym} 250 -190 0 1 {name=x4 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {devices/lab_wire.sym} 240 -340 3 1 {name=p9 lab=vdd}
C {devices/lab_wire.sym} 260 -340 3 1 {name=p10 lab=vss}
C {devices/lab_wire.sym} 240 -60 3 0 {name=p14 lab=vdd}
C {devices/lab_wire.sym} 260 -60 3 0 {name=p16 lab=vss}
C {devices/lab_wire.sym} 150 -190 0 0 {name=p27 lab=reset}
C {devices/iopin.sym} 280 -490 0 1 {name=p1 lab=vdd}
C {devices/lab_wire.sym} 300 -490 0 1 {name=p2 lab=vdd}
C {devices/ipin.sym} 60 -310 0 0 {name=p17 lab=REF}
C {devices/iopin.sym} 280 -460 0 1 {name=p28 lab=vss}
C {devices/lab_wire.sym} 300 -460 0 1 {name=p29 lab=vss}
C {devices/opin.sym} 410 -290 0 0 {name=p15 lab=QA}
C {devices/opin.sym} 410 -110 0 0 {name=p3 lab=QB}
C {devices/ipin.sym} 70 -90 0 0 {name=p4 lab=CLK}
C {sky130_stdcells/decap_12.sym} 700 -420 0 0 {name=x2 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/decap_3.sym} 700 -360 0 0 {name=x5 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/decap_4.sym} 700 -310 0 0 {name=x6 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/decap_6.sym} 700 -260 0 0 {name=x7 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/decap_8.sym} 700 -210 0 0 {name=x8 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
