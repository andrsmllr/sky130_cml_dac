v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {V_th appears to be roughly 0.7 - 0.8 V} 1100 -1240 0 0 0.4 0.4 {}
N 1220 -1440 1220 -1410 {
lab=#net1}
N 1220 -1440 1350 -1440 {
lab=#net1}
N 1350 -1440 1350 -1410 {
lab=#net1}
N 1100 -1380 1180 -1380 {
lab=vgs}
N 1100 -1320 1100 -1300 {
lab=GND}
N 1100 -1300 1350 -1300 {
lab=GND}
N 1350 -1350 1350 -1300 {
lab=GND}
N 1220 -1350 1220 -1300 {
lab=GND}
N 1220 -1300 1220 -1280 {
lab=GND}
N 1220 -1380 1300 -1380 {
lab=GND}
N 1300 -1380 1300 -1300 {
lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} 1200 -1380 0 0 {name=M1
L=0.15
W=15
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
C {devices/vsource.sym} 1100 -1350 0 0 {name=V_GS value=0}
C {devices/vsource.sym} 1350 -1380 0 0 {name=V_DS value=1.8}
C {devices/gnd.sym} 1220 -1280 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} 1080 -1650 0 0 {name=import_sky130_lib only_toplevel=false value=".lib /opt/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt"}
C {devices/code_shown.sym} 1080 -1590 0 0 {name=run_sim only_toplevel=false value=".control
dc V_DS 0 1.8 0.1 V_GS 0 1.8 0.1
plot -i(V_DS)
dc V_GS 0 1.8 0.1 V_DS 0 1.8 0.1
plot -i(V_DS)
.endc"
* dc V_GS 0 1.8 0.2 V_DS 0 1 0.1}
C {devices/lab_pin.sym} 1140 -1380 1 0 {name=p1 sig_type=std_logic lab=vgs}
