v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1330 -1180 1330 -1140 {
lab=#net1}
N 1500 -1180 1500 -1140 {
lab=#net1}
N 1330 -1140 1500 -1140 {
lab=#net1}
N 1330 -1280 1330 -1240 {
lab=vout}
N 1500 -1280 1500 -1240 {
lab=voutb}
N 1330 -1380 1330 -1340 {
lab=vdd}
N 1330 -1380 1500 -1380 {
lab=vdd}
N 1500 -1380 1500 -1340 {
lab=vdd}
N 1420 -1140 1420 -1100 {
lab=#net1}
N 1420 -1420 1420 -1380 {
lab=vdd}
N 1260 -1210 1290 -1210 {
lab=vinb}
N 1540 -1210 1580 -1210 {
lab=vin}
N 1260 -1260 1330 -1260 {
lab=vout}
N 1500 -1260 1580 -1260 {
lab=voutb}
N 1330 -1210 1350 -1210 {
lab=vss}
N 1350 -1210 1500 -1210 {
lab=vss}
N 1420 -980 1420 -940 {
lab=vss}
N 1400 -1210 1400 -960 {
lab=vss}
N 1400 -960 1420 -960 {
lab=vss}
N 1420 -1100 1420 -1040 {
lab=#net1}
C {devices/ipin.sym} 1260 -1210 0 0 {name=p1 lab=vinb}
C {devices/ipin.sym} 1580 -1210 2 0 {name=p2 lab=vin}
C {devices/iopin.sym} 1420 -1420 0 0 {name=p5 lab=vdd}
C {devices/iopin.sym} 1420 -940 0 0 {name=p6 lab=vss}
C {devices/opin.sym} 1260 -1260 2 0 {name=p3 lab=vout}
C {devices/opin.sym} 1580 -1260 0 0 {name=p4 lab=voutb}
C {devices/isource.sym} 1420 -1010 0 0 {name=ISS value=1m}
C {devices/res.sym} 1330 -1310 0 0 {name=R1
value=300
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1500 -1310 0 1 {name=R2
value=300
footprint=1206
device=resistor
m=1}
C {sky130_fd_pr/nfet_01v8.sym} 1310 -1210 0 0 {name=M1
L=0.15
W=20
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
C {sky130_fd_pr/nfet_01v8.sym} 1520 -1210 0 1 {name=M2
L=0.15
W=20
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
