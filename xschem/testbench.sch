v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 250 -850 1050 -450 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=0
x2=4e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="out
out_pin
in"
color="4 6 7"
dataset=-1
unitx=1
logx=0
logy=0
}
N 550 -400 580 -400 {
lab=VDD}
N 550 -380 580 -380 {
lab=VSS}
N 200 -400 250 -400 {
lab=in}
N 550 -360 620 -360 {
lab=out}
N 620 -360 680 -360 {
lab=out}
N 740 -360 770 -360 {
lab=out_pin}
N 770 -360 770 -350 {
lab=out_pin}
N 770 -360 860 -360 {
lab=out_pin}
C {devices/code.sym} 20 -650 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/launcher.sym} 1160 -490 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {konstt-new-inv.sym} 400 -380 0 0 {name=x1}
C {devices/vsource.sym} 60 -350 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/vsource.sym} 130 -350 0 0 {name=V2 value=0 savecurrent=false}
C {devices/lab_wire.sym} 130 -380 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 60 -320 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 130 -320 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 60 -380 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 580 -380 2 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 580 -400 2 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 630 -360 2 0 {name=p7 sig_type=std_logic lab=out}
C {devices/res.sym} 710 -360 1 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 770 -320 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 770 -290 0 0 {name=l3 lab=GND}
C {devices/simulator_commands_shown.sym} 50 -200 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
vin in 0 pulse 0 1.8 5n 1n 1n 50n 100n
.control
tran 100p 200n
write testbench.raw
.endc

"}
C {devices/ipin.sym} 200 -400 0 0 {name=p1 lab=in}
C {devices/lab_wire.sym} 840 -360 2 0 {name=p6 sig_type=std_logic lab=out_pin}
