v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 190 -430 190 -380 {
lab=#net1}
N 190 -380 390 -380 {
lab=#net1}
N 390 -430 390 -380 {
lab=#net1}
N 290 -380 290 -350 {
lab=#net1}
N 190 -560 190 -490 {
lab=youtb}
N 390 -560 390 -490 {
lab=yout}
N 290 -290 290 -240 {
lab=#net2}
N 290 -240 510 -240 {
lab=#net2}
N 510 -290 510 -240 {
lab=#net2}
N 390 -520 510 -520 {
lab=yout}
N 510 -520 510 -350 {
lab=yout}
N 120 -460 150 -460 {
lab=ain}
N 120 -320 250 -320 {
lab=bin}
N 430 -460 600 -460 {
lab=ainb}
N 550 -320 600 -320 {
lab=binb}
N 120 -540 190 -540 {
lab=youtb}
N 390 -540 600 -540 {
lab=yout}
N 190 -460 390 -460 {
lab=vss}
N 290 -320 510 -320 {
lab=vss}
N 190 -660 190 -620 {
lab=vdd}
N 190 -660 390 -660 {
lab=vdd}
N 390 -660 390 -620 {
lab=vdd}
N 300 -700 300 -660 {
lab=vdd}
N 380 -120 380 -40 {
lab=vss}
N 380 -240 380 -180 {
lab=#net2}
N 240 -460 240 -60 {
lab=vss}
N 240 -60 380 -60 {
lab=vss}
N 340 -320 340 -100 {
lab=vss}
N 340 -100 380 -100 {
lab=vss}
C {sky130_fd_pr/nfet_01v8.sym} 170 -460 0 0 {name=M1
L=0.15
W=18
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
C {sky130_fd_pr/nfet_01v8.sym} 410 -460 0 1 {name=M2
L=0.15
W=18
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
C {devices/ipin.sym} 120 -460 0 0 {name=p1 lab=ain}
C {devices/ipin.sym} 600 -460 2 0 {name=p2 lab=ainb
}
C {sky130_fd_pr/nfet_01v8.sym} 270 -320 0 0 {name=M3
L=0.15
W=18
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
C {sky130_fd_pr/nfet_01v8.sym} 530 -320 0 1 {name=M4
L=0.15
W=18
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
C {devices/res.sym} 190 -590 0 0 {name=R1
value=300
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 390 -590 0 0 {name=R2
value=300
footprint=1206
device=resistor
m=1}
C {devices/ipin.sym} 600 -320 2 0 {name=p3 lab=binb}
C {devices/ipin.sym} 120 -320 0 0 {name=p4 lab=bin}
C {devices/opin.sym} 600 -540 0 0 {name=p5 lab=yout}
C {devices/opin.sym} 120 -540 2 0 {name=p6 lab=youtb}
C {devices/iopin.sym} 300 -700 0 0 {name=p7 lab=vdd}
C {devices/iopin.sym} 380 -40 0 0 {name=p8 lab=vss}
C {devices/isource.sym} 380 -150 0 0 {name=I0 value=1m}
