v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 90 -300 110 -300 {
lab=s0}
N 90 -260 110 -260 {
lab=s1}
N 250 -240 250 -120 {
lab=clk}
N 550 -210 550 -120 {
lab=#net1}
N 400 -260 400 -120 {
lab=#net2}
N 360 -260 360 -240 {
lab=clk}
N 250 -240 360 -240 {
lab=clk}
N 440 -260 440 -210 {
lab=#net1}
N 440 -210 550 -210 {
lab=#net1}
N 480 -260 480 -230 {
lab=#net3}
N 480 -230 700 -230 {
lab=#net3}
N 700 -230 700 -120 {
lab=#net3}
C {clkdiv2.sym} 330 -110 0 0 {name=x4}
C {clkdiv2.sym} 480 -110 0 0 {name=x5}
C {clkdiv2.sym} 630 -110 0 0 {name=x6}
C {devices/iopin.sym} 100 -380 0 1 {name=p1 lab=vdd}
C {devices/iopin.sym} 100 -340 0 1 {name=p4 lab=vss}
C {devices/lab_wire.sym} 100 -380 0 1 {name=p8 lab=vdd}
C {devices/lab_wire.sym} 100 -340 0 1 {name=p9 lab=vss}
C {devices/opin.sym} 420 -340 0 0 {name=p3 lab=out}
C {sky130_stdcells/mux4_1.sym} 420 -300 3 0 {name=x11 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/tapvpwrvgnd_1.sym} 660 -310 0 0 {name=x8 VGND=vss VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {devices/ipin.sym} 90 -300 0 0 {name=p12 lab=s0}
C {devices/ipin.sym} 90 -260 0 0 {name=p13 lab=s1}
C {devices/lab_wire.sym} 110 -300 0 1 {name=p14 sig_type=std_logic lab=s0}
C {devices/lab_wire.sym} 110 -260 0 1 {name=p16 sig_type=std_logic lab=s1}
C {devices/ipin.sym} 250 -120 0 0 {name=p2 lab=clk}
C {devices/ipin.sym} 250 -100 0 0 {name=p5 lab=clk_n}
C {devices/lab_wire.sym} 320 -170 3 1 {name=p6 lab=vdd}
C {devices/lab_wire.sym} 340 -170 3 1 {name=p7 lab=vss}
C {devices/lab_wire.sym} 470 -170 3 1 {name=p10 lab=vdd}
C {devices/lab_wire.sym} 490 -170 3 1 {name=p11 lab=vss}
C {devices/lab_wire.sym} 620 -170 3 1 {name=p15 lab=vdd}
C {devices/lab_wire.sym} 640 -170 3 1 {name=p17 lab=vss}
C {devices/lab_wire.sym} 520 -260 2 1 {name=p18 sig_type=std_logic lab=s0}
C {devices/lab_wire.sym} 550 -260 2 1 {name=p19 sig_type=std_logic lab=s1}
