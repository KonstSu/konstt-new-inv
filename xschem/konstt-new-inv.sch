v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 290 -350 290 -290 {
lab=inverted}
N 290 -230 290 -180 {
lab=VSS}
N 290 -180 390 -180 {
lab=VSS}
N 390 -260 390 -180 {
lab=VSS}
N 290 -260 390 -260 {
lab=VSS}
N 290 -470 290 -410 {
lab=VDD}
N 290 -470 390 -470 {
lab=VDD}
N 390 -470 390 -380 {
lab=VDD}
N 290 -380 390 -380 {
lab=VDD}
N 250 -380 250 -260 {
lab=in0}
N 180 -320 250 -320 {
lab=in0}
N 560 -350 560 -290 {
lab=out0}
N 560 -230 560 -180 {
lab=VSS}
N 560 -180 660 -180 {
lab=VSS}
N 660 -260 660 -180 {
lab=VSS}
N 560 -260 660 -260 {
lab=VSS}
N 560 -470 560 -410 {
lab=VDD}
N 560 -470 660 -470 {
lab=VDD}
N 660 -470 660 -380 {
lab=VDD}
N 560 -380 660 -380 {
lab=VDD}
N 520 -380 520 -260 {
lab=inverted}
N 450 -320 520 -320 {
lab=inverted}
N 290 -320 450 -320 {
lab=inverted}
N 560 -320 670 -320 {
lab=out0}
C {devices/iopin.sym} 750 -540 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 750 -510 0 0 {name=p2 lab=VSS}
C {sky130_fd_pr/pfet_01v8.sym} 270 -380 0 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} 270 -260 0 0 {name=M2
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
C {devices/lab_wire.sym} 290 -470 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 290 -180 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet_01v8.sym} 540 -380 0 0 {name=M3
L=0.15
W=1
nf=20
mult=20
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 540 -260 0 0 {name=M4
L=0.15
W=1
nf=20
mult=20
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_wire.sym} 560 -470 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 560 -180 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 180 -320 0 0 {name=p6 lab=in0}
C {devices/opin.sym} 670 -320 0 0 {name=p9 lab=out0}
C {devices/lab_wire.sym} 440 -320 0 0 {name=p10 sig_type=std_logic lab=inverted}
