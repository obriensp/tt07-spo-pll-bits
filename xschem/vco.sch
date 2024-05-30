v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {tcleval(lvs_ignore=$lvs_ignore)} 300 -140 0 0 0.6 0.6 {name=l1}
N 220 -300 240 -300 {
lab=#net1}
N 430 -300 430 -220 {
lab=#net2}
N 620 -300 620 -220 {
lab=#net3}
N 810 -300 810 -220 {
lab=#net4}
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
N -120 -440 -100 -440 {
lab=vss}
N 1000 -300 1000 -220 {
lab=#net5}
N 1190 -300 1190 -220 {
lab=#net6}
N 1380 -300 1380 -220 {
lab=#net7}
N 1570 -300 1570 -220 {
lab=#net8}
N 1760 -300 1760 -220 {
lab=#net9}
N 1950 -300 1950 -220 {
lab=#net10}
N 2140 -300 2140 -220 {
lab=#net11}
N 2330 -300 2330 -220 {
lab=#net12}
N 2520 -300 2520 -220 {
lab=#net13}
N 2710 -300 2710 -220 {
lab=#net14}
N 2900 -300 2900 -220 {
lab=#net15}
N 3090 -300 3090 -220 {
lab=#net16}
N 3280 -300 3280 -220 {
lab=#net17}
N 3470 -300 3470 -220 {
lab=#net18}
N 3660 -300 3660 -220 {
lab=#net19}
N 3850 -300 3850 -220 {
lab=#net20}
N 1570 -680 1570 -300 {
lab=#net8}
N 2710 -680 2710 -300 {
lab=#net14}
N 4040 -300 4040 -220 {
lab=#net21}
N 4230 -300 4230 -220 {
lab=#net22}
N 4230 -300 4280 -300 {
lab=#net22}
N 2320 -920 2320 -880 {
lab=#net22}
N 2320 -880 4280 -880 {
lab=#net22}
N 4280 -880 4280 -300 {
lab=#net22}
N 2280 -680 2710 -680 {
lab=#net14}
N 2280 -920 2280 -680 {
lab=#net14}
N 1570 -680 2240 -680 {
lab=#net8}
N 2240 -920 2240 -680 {
lab=#net8}
N 2200 -920 2200 -880 {
lab=#net4}
N 810 -880 2200 -880 {
lab=#net4}
N 810 -880 810 -300 {
lab=#net4}
N 2260 -1040 2260 -1000 {
lab=#net1}
N 220 -1040 2260 -1040 {
lab=#net1}
N 220 -1040 220 -300 {
lab=#net1}
N 2300 -1180 2330 -1180 {
lab=#net1}
N 2370 -1180 2370 -1150 {lab=out}
N 2370 -1180 2410 -1180 {lab=out}
N 2330 -1180 2330 -1120 {lab=#net1}
N 2370 -1120 2450 -1120 { lab=vss}
N 2370 -1090 2450 -1090 { lab=vss}
N 2370 -1240 2450 -1240 { lab=vdd}
N 2330 -1240 2330 -1180 { lab=#net1}
N 2370 -1210 2370 -1180 {lab=out}
N 2370 -1270 2450 -1270 {
lab=vdd}
N 2450 -1270 2450 -1240 {
lab=vdd}
N 2450 -1120 2450 -1090 {
lab=vss}
N 2260 -1180 2300 -1180 {
lab=#net1}
N 2260 -1180 2260 -1040 {
lab=#net1}
C {delay_stage.sym} 340 -300 0 0 {name=x1}
C {delay_stage.sym} 530 -300 0 0 {name=x2}
C {delay_stage.sym} 720 -300 0 0 {name=x3}
C {devices/parax_cap.sym} 430 -210 0 0 {name=C1 gnd=0 value=10f m=1 lvs_ignore=open}
C {devices/parax_cap.sym} 620 -210 0 0 {name=C2 gnd=0 value=10f m=1 lvs_ignore=open}
C {devices/parax_cap.sym} 810 -210 0 0 {name=C3 gnd=0 value=10f m=1 lvs_ignore=open}
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
C {devices/launcher.sym} 70 -40 0 0 {name=h1
descr="Toggle lvs_ignore variable and
rebuild connectivity"
tclcommand="
if \{![info exists lvs_ignore]\} \{
   set lvs_ignore 1
\} else \{
  set lvs_ignore [expr \{!$lvs_ignore\}]
\}
xschem rebuild_connectivity
xschem unhilight_all
"}
C {delay_stage.sym} 910 -300 0 0 {name=x4}
C {devices/parax_cap.sym} 1000 -210 0 0 {name=C4 gnd=0 value=10f m=1 lvs_ignore=open}
C {devices/lab_wire.sym} 930 -230 3 0 {name=p38 lab=vcont}
C {devices/lab_wire.sym} 950 -230 3 0 {name=p39 lab=vcont_b}
C {devices/lab_wire.sym} 870 -230 3 0 {name=p40 sig_type=std_logic lab=s0}
C {devices/lab_wire.sym} 890 -230 3 0 {name=p41 sig_type=std_logic lab=s1}
C {devices/lab_wire.sym} 900 -370 3 1 {name=p42 lab=vdd}
C {devices/lab_wire.sym} 920 -370 3 1 {name=p43 lab=vss}
C {delay_stage.sym} 1100 -300 0 0 {name=x5}
C {devices/parax_cap.sym} 1190 -210 0 0 {name=C5 gnd=0 value=10f m=1 lvs_ignore=open}
C {devices/lab_wire.sym} 1120 -230 3 0 {name=p44 lab=vcont}
C {devices/lab_wire.sym} 1140 -230 3 0 {name=p45 lab=vcont_b}
C {devices/lab_wire.sym} 1060 -230 3 0 {name=p46 sig_type=std_logic lab=s0}
C {devices/lab_wire.sym} 1080 -230 3 0 {name=p47 sig_type=std_logic lab=s1}
C {devices/lab_wire.sym} 1090 -370 3 1 {name=p48 lab=vdd}
C {devices/lab_wire.sym} 1110 -370 3 1 {name=p49 lab=vss}
C {delay_stage.sym} 1290 -300 0 0 {name=x6}
C {devices/parax_cap.sym} 1380 -210 0 0 {name=C6 gnd=0 value=10f m=1 lvs_ignore=open}
C {devices/lab_wire.sym} 1310 -230 3 0 {name=p50 lab=vcont}
C {devices/lab_wire.sym} 1330 -230 3 0 {name=p51 lab=vcont_b}
C {devices/lab_wire.sym} 1250 -230 3 0 {name=p52 sig_type=std_logic lab=s0}
C {devices/lab_wire.sym} 1270 -230 3 0 {name=p53 sig_type=std_logic lab=s1}
C {devices/lab_wire.sym} 1280 -370 3 1 {name=p54 lab=vdd}
C {devices/lab_wire.sym} 1300 -370 3 1 {name=p55 lab=vss}
C {delay_stage.sym} 1480 -300 0 0 {name=x7}
C {devices/parax_cap.sym} 1570 -210 0 0 {name=C7 gnd=0 value=10f m=1 lvs_ignore=open}
C {devices/lab_wire.sym} 1500 -230 3 0 {name=p56 lab=vcont}
C {devices/lab_wire.sym} 1520 -230 3 0 {name=p57 lab=vcont_b}
C {devices/lab_wire.sym} 1440 -230 3 0 {name=p58 sig_type=std_logic lab=s0}
C {devices/lab_wire.sym} 1460 -230 3 0 {name=p59 sig_type=std_logic lab=s1}
C {devices/lab_wire.sym} 1470 -370 3 1 {name=p60 lab=vdd}
C {devices/lab_wire.sym} 1490 -370 3 1 {name=p61 lab=vss}
C {delay_stage.sym} 1670 -300 0 0 {name=x9}
C {devices/parax_cap.sym} 1760 -210 0 0 {name=C8 gnd=0 value=10f m=1 lvs_ignore=open}
C {devices/lab_wire.sym} 1690 -230 3 0 {name=p64 lab=vcont}
C {devices/lab_wire.sym} 1710 -230 3 0 {name=p65 lab=vcont_b}
C {devices/lab_wire.sym} 1630 -230 3 0 {name=p66 sig_type=std_logic lab=s0}
C {devices/lab_wire.sym} 1650 -230 3 0 {name=p67 sig_type=std_logic lab=s1}
C {devices/lab_wire.sym} 1660 -370 3 1 {name=p68 lab=vdd}
C {devices/lab_wire.sym} 1680 -370 3 1 {name=p69 lab=vss}
C {delay_stage.sym} 1860 -300 0 0 {name=x10}
C {devices/parax_cap.sym} 1950 -210 0 0 {name=C9 gnd=0 value=10f m=1 lvs_ignore=open}
C {devices/lab_wire.sym} 1880 -230 3 0 {name=p70 lab=vcont}
C {devices/lab_wire.sym} 1900 -230 3 0 {name=p71 lab=vcont_b}
C {devices/lab_wire.sym} 1820 -230 3 0 {name=p72 sig_type=std_logic lab=s0}
C {devices/lab_wire.sym} 1840 -230 3 0 {name=p73 sig_type=std_logic lab=s1}
C {devices/lab_wire.sym} 1850 -370 3 1 {name=p74 lab=vdd}
C {devices/lab_wire.sym} 1870 -370 3 1 {name=p75 lab=vss}
C {sky130_stdcells/mux4_1.sym} 2260 -960 1 1 {name=x11 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {delay_stage.sym} 2050 -300 0 0 {name=x8}
C {delay_stage.sym} 2240 -300 0 0 {name=x12}
C {delay_stage.sym} 2430 -300 0 0 {name=x13}
C {devices/parax_cap.sym} 2140 -210 0 0 {name=C10 gnd=0 value=10f m=1 lvs_ignore=open}
C {devices/parax_cap.sym} 2330 -210 0 0 {name=C11 gnd=0 value=10f m=1 lvs_ignore=open}
C {devices/parax_cap.sym} 2520 -210 0 0 {name=C12 gnd=0 value=10f m=1 lvs_ignore=open}
C {devices/lab_wire.sym} 2070 -230 3 0 {name=p76 lab=vcont}
C {devices/lab_wire.sym} 2260 -230 3 0 {name=p77 lab=vcont}
C {devices/lab_wire.sym} 2450 -230 3 0 {name=p78 lab=vcont}
C {devices/lab_wire.sym} 2090 -230 3 0 {name=p79 lab=vcont_b}
C {devices/lab_wire.sym} 2280 -230 3 0 {name=p80 lab=vcont_b}
C {devices/lab_wire.sym} 2470 -230 3 0 {name=p81 lab=vcont_b}
C {devices/lab_wire.sym} 2010 -230 3 0 {name=p82 sig_type=std_logic lab=s0}
C {devices/lab_wire.sym} 2030 -230 3 0 {name=p83 sig_type=std_logic lab=s1}
C {devices/lab_wire.sym} 2200 -230 3 0 {name=p84 sig_type=std_logic lab=s0}
C {devices/lab_wire.sym} 2220 -230 3 0 {name=p85 sig_type=std_logic lab=s1}
C {devices/lab_wire.sym} 2390 -230 3 0 {name=p86 sig_type=std_logic lab=s0}
C {devices/lab_wire.sym} 2410 -230 3 0 {name=p87 sig_type=std_logic lab=s1}
C {devices/lab_wire.sym} 2040 -370 3 1 {name=p88 lab=vdd}
C {devices/lab_wire.sym} 2230 -370 3 1 {name=p89 lab=vdd}
C {devices/lab_wire.sym} 2420 -370 3 1 {name=p90 lab=vdd}
C {devices/lab_wire.sym} 2060 -370 3 1 {name=p91 lab=vss}
C {devices/lab_wire.sym} 2250 -370 3 1 {name=p92 lab=vss}
C {devices/lab_wire.sym} 2440 -370 3 1 {name=p93 lab=vss}
C {delay_stage.sym} 2620 -300 0 0 {name=x14}
C {devices/parax_cap.sym} 2710 -210 0 0 {name=C13 gnd=0 value=10f m=1 lvs_ignore=open}
C {devices/lab_wire.sym} 2640 -230 3 0 {name=p96 lab=vcont}
C {devices/lab_wire.sym} 2660 -230 3 0 {name=p97 lab=vcont_b}
C {devices/lab_wire.sym} 2580 -230 3 0 {name=p98 sig_type=std_logic lab=s0}
C {devices/lab_wire.sym} 2600 -230 3 0 {name=p99 sig_type=std_logic lab=s1}
C {devices/lab_wire.sym} 2610 -370 3 1 {name=p100 lab=vdd}
C {devices/lab_wire.sym} 2630 -370 3 1 {name=p101 lab=vss}
C {delay_stage.sym} 2810 -300 0 0 {name=x15}
C {devices/parax_cap.sym} 2900 -210 0 0 {name=C14 gnd=0 value=10f m=1 lvs_ignore=open}
C {devices/lab_wire.sym} 2830 -230 3 0 {name=p102 lab=vcont}
C {devices/lab_wire.sym} 2850 -230 3 0 {name=p103 lab=vcont_b}
C {devices/lab_wire.sym} 2770 -230 3 0 {name=p104 sig_type=std_logic lab=s0}
C {devices/lab_wire.sym} 2790 -230 3 0 {name=p105 sig_type=std_logic lab=s1}
C {devices/lab_wire.sym} 2800 -370 3 1 {name=p106 lab=vdd}
C {devices/lab_wire.sym} 2820 -370 3 1 {name=p107 lab=vss}
C {delay_stage.sym} 3000 -300 0 0 {name=x16}
C {devices/parax_cap.sym} 3090 -210 0 0 {name=C15 gnd=0 value=10f m=1 lvs_ignore=open}
C {devices/lab_wire.sym} 3020 -230 3 0 {name=p108 lab=vcont}
C {devices/lab_wire.sym} 3040 -230 3 0 {name=p109 lab=vcont_b}
C {devices/lab_wire.sym} 2960 -230 3 0 {name=p110 sig_type=std_logic lab=s0}
C {devices/lab_wire.sym} 2980 -230 3 0 {name=p111 sig_type=std_logic lab=s1}
C {devices/lab_wire.sym} 2990 -370 3 1 {name=p112 lab=vdd}
C {devices/lab_wire.sym} 3010 -370 3 1 {name=p113 lab=vss}
C {delay_stage.sym} 3190 -300 0 0 {name=x17}
C {devices/parax_cap.sym} 3280 -210 0 0 {name=C16 gnd=0 value=10f m=1 lvs_ignore=open}
C {devices/lab_wire.sym} 3210 -230 3 0 {name=p114 lab=vcont}
C {devices/lab_wire.sym} 3230 -230 3 0 {name=p115 lab=vcont_b}
C {devices/lab_wire.sym} 3150 -230 3 0 {name=p116 sig_type=std_logic lab=s0}
C {devices/lab_wire.sym} 3170 -230 3 0 {name=p117 sig_type=std_logic lab=s1}
C {devices/lab_wire.sym} 3180 -370 3 1 {name=p118 lab=vdd}
C {devices/lab_wire.sym} 3200 -370 3 1 {name=p119 lab=vss}
C {delay_stage.sym} 3380 -300 0 0 {name=x18}
C {devices/parax_cap.sym} 3470 -210 0 0 {name=C17 gnd=0 value=10f m=1 lvs_ignore=open}
C {devices/lab_wire.sym} 3400 -230 3 0 {name=p120 lab=vcont}
C {devices/lab_wire.sym} 3420 -230 3 0 {name=p121 lab=vcont_b}
C {devices/lab_wire.sym} 3340 -230 3 0 {name=p122 sig_type=std_logic lab=s0}
C {devices/lab_wire.sym} 3360 -230 3 0 {name=p123 sig_type=std_logic lab=s1}
C {devices/lab_wire.sym} 3370 -370 3 1 {name=p124 lab=vdd}
C {devices/lab_wire.sym} 3390 -370 3 1 {name=p125 lab=vss}
C {delay_stage.sym} 3570 -300 0 0 {name=x19}
C {devices/parax_cap.sym} 3660 -210 0 0 {name=C18 gnd=0 value=10f m=1 lvs_ignore=open}
C {devices/lab_wire.sym} 3590 -230 3 0 {name=p126 lab=vcont}
C {devices/lab_wire.sym} 3610 -230 3 0 {name=p127 lab=vcont_b}
C {devices/lab_wire.sym} 3530 -230 3 0 {name=p128 sig_type=std_logic lab=s0}
C {devices/lab_wire.sym} 3550 -230 3 0 {name=p129 sig_type=std_logic lab=s1}
C {devices/lab_wire.sym} 3560 -370 3 1 {name=p130 lab=vdd}
C {devices/lab_wire.sym} 3580 -370 3 1 {name=p131 lab=vss}
C {delay_stage.sym} 3760 -300 0 0 {name=x20}
C {devices/parax_cap.sym} 3850 -210 0 0 {name=C19 gnd=0 value=10f m=1 lvs_ignore=open}
C {devices/lab_wire.sym} 3780 -230 3 0 {name=p132 lab=vcont}
C {devices/lab_wire.sym} 3800 -230 3 0 {name=p133 lab=vcont_b}
C {devices/lab_wire.sym} 3720 -230 3 0 {name=p134 sig_type=std_logic lab=s0}
C {devices/lab_wire.sym} 3740 -230 3 0 {name=p135 sig_type=std_logic lab=s1}
C {devices/lab_wire.sym} 3750 -370 3 1 {name=p136 lab=vdd}
C {devices/lab_wire.sym} 3770 -370 3 1 {name=p137 lab=vss}
C {delay_stage.sym} 3950 -300 0 0 {name=x21}
C {devices/parax_cap.sym} 4040 -210 0 0 {name=C20 gnd=0 value=10f m=1 lvs_ignore=open}
C {devices/lab_wire.sym} 3970 -230 3 0 {name=p138 lab=vcont}
C {devices/lab_wire.sym} 3990 -230 3 0 {name=p139 lab=vcont_b}
C {devices/lab_wire.sym} 3910 -230 3 0 {name=p140 sig_type=std_logic lab=s0}
C {devices/lab_wire.sym} 3930 -230 3 0 {name=p141 sig_type=std_logic lab=s1}
C {devices/lab_wire.sym} 3940 -370 3 1 {name=p142 lab=vdd}
C {devices/lab_wire.sym} 3960 -370 3 1 {name=p143 lab=vss}
C {delay_stage.sym} 4140 -300 0 0 {name=x22}
C {devices/parax_cap.sym} 4230 -210 0 0 {name=C21 gnd=0 value=10f m=1 lvs_ignore=open}
C {devices/lab_wire.sym} 4160 -230 3 0 {name=p144 lab=vcont}
C {devices/lab_wire.sym} 4180 -230 3 0 {name=p145 lab=vcont_b}
C {devices/lab_wire.sym} 4100 -230 3 0 {name=p146 sig_type=std_logic lab=s0}
C {devices/lab_wire.sym} 4120 -230 3 0 {name=p147 sig_type=std_logic lab=s1}
C {devices/lab_wire.sym} 4130 -370 3 1 {name=p148 lab=vdd}
C {devices/lab_wire.sym} 4150 -370 3 1 {name=p149 lab=vss}
C {devices/opin.sym} 2410 -1180 0 0 {name=p150 lab=out}
C {sky130_fd_pr/nfet_01v8.sym} 2350 -1120 0 0 {name=M3
L=0.15
W=1
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 2350 -1240 0 0 {name=M4
L=0.15
W=2
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_wire.sym} 2370 -1270 0 0 {name=p151 lab=vdd}
C {devices/lab_wire.sym} 2370 -1090 2 1 {name=p152 lab=vss}
C {devices/lab_wire.sym} 2130 -920 3 0 {name=p153 sig_type=std_logic lab=s0}
C {devices/lab_wire.sym} 2160 -920 3 0 {name=p154 sig_type=std_logic lab=s1}
