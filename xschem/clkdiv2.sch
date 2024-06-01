v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 400 -190 420 -190 {
lab=out}
N 420 -290 420 -190 {
lab=out}
N 40 -290 420 -290 {
lab=out}
N 40 -290 40 -150 {
lab=out}
N 40 -150 80 -150 {
lab=out}
N 400 -150 440 -150 {
lab=out_n}
N 440 -310 440 -150 {
lab=out_n}
N 20 -310 440 -310 {
lab=out_n}
N 20 -310 20 -190 {
lab=out_n}
N 20 -190 80 -190 {
lab=out_n}
N 420 -190 480 -190 {
lab=out}
N 440 -150 480 -150 {
lab=out_n}
C {latch.sym} 160 -170 0 0 {name=x2
}
C {devices/lab_wire.sym} 150 -230 1 0 {name=p14 lab=vdd}
C {devices/lab_wire.sym} 170 -230 1 0 {name=p15 lab=vss}
C {latch.sym} 320 -170 0 0 {name=x3
}
C {devices/lab_wire.sym} 310 -230 1 0 {name=p16 lab=vdd}
C {devices/lab_wire.sym} 330 -230 1 0 {name=p17 lab=vss}
C {devices/iopin.sym} 250 -390 0 1 {name=p1 lab=vdd}
C {devices/opin.sym} 480 -190 0 0 {name=p3 lab=out}
C {devices/iopin.sym} 250 -350 0 1 {name=p4 lab=vss}
C {devices/ipin.sym} 160 -110 3 0 {name=p7 lab=clk}
C {devices/lab_wire.sym} 250 -390 0 1 {name=p8 lab=vdd}
C {devices/lab_wire.sym} 250 -350 0 1 {name=p9 lab=vss}
C {devices/opin.sym} 480 -150 0 0 {name=p2 lab=out_n}
C {devices/ipin.sym} 320 -110 3 0 {name=p5 lab=clk_n}
