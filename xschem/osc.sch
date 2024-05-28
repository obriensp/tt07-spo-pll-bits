v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 20 -1020 820 -620 {flags=graph
y1=-2
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=100n
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=sig
color=18
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran}
B 2 20 -600 820 -200 {flags=graph,unlocked
y1=0
y2=1
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=200meg
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=sig
color=18
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/osc_fft.raw
sim_type=sp}
C {devices/vsource.sym} -110 -250 0 0 {name=V1 value="sin 0 1 100meg" savecurrent=false}
C {devices/gnd.sym} -110 -220 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} -110 -280 0 0 {name=p1 sig_type=std_logic lab=sig}
C {devices/simulator_commands_shown.sym} -185 -590 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.control
  tran 100p 500n
  write osc.raw

  linearize
  fft v(sig)
  write osc_fft.raw

  quit 0
.endc
"}
C {devices/launcher.sym} 80 -150 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
