v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Identical inverter serves as load.} 1050 -140 0 0 0.4 0.4 {}
N 550 -220 550 -190 {
lab=vinb}
N 550 -220 590 -220 {
lab=vinb}
N 550 -270 550 -240 {
lab=vin}
N 550 -240 590 -240 {
lab=vin}
N 890 -220 950 -220 {
lab=voutb}
N 890 -200 950 -200 {
lab=vout}
N 550 -190 550 -130 {
lab=vinb}
N 550 -130 590 -130 {
lab=vinb}
N 550 -290 550 -270 {
lab=vin}
N 550 -290 590 -290 {
lab=vin}
N 410 -270 550 -270 {
lab=vin}
N 410 -170 550 -170 {
lab=vinb}
N 80 -160 80 -140 {
lab=GND}
N 80 -360 80 -220 {
lab=#net1}
N 80 -360 640 -360 {
lab=#net1}
N 640 -360 1250 -360 {
lab=#net1}
N 890 -240 920 -240 {
lab=#net1}
N 920 -360 920 -240 {
lab=#net1}
N 950 -220 960 -220 {
lab=voutb}
N 960 -260 960 -220 {
lab=voutb}
N 950 -200 960 -200 {
lab=vout}
N 960 -200 960 -160 {
lab=vout}
N 960 -220 1080 -220 {
lab=voutb}
N 960 -200 1080 -200 {
lab=vout}
N 1380 -220 1400 -220 {
lab=#net1}
N 1400 -360 1400 -220 {
lab=#net1}
N 1250 -360 1400 -360 {
lab=#net1}
N 1380 -160 1400 -160 {
lab=GND}
N 1400 -160 1400 -40 {
lab=GND}
N 700 -40 1400 -40 {
lab=GND}
N 890 -180 920 -180 {
lab=GND}
N 920 -180 920 -40 {
lab=GND}
N 80 -40 700 -40 {
lab=GND}
N 80 -140 80 -40 {
lab=GND}
N 60 -40 80 -40 {
lab=GND}
C {cml_inverter.sym} 740 -210 0 0 {name=x1}
C {devices/vsource.sym} 80 -190 0 0 {name=V_SUPPLY value=1.8}
C {devices/vsource.sym} 410 -240 0 1 {name=V2 value="PWL(0p 1.5 100p 1.5 110p 1.8 200p 1.8)"}
C {devices/opin.sym} 960 -260 0 0 {name=p4 lab=voutb}
C {devices/opin.sym} 960 -160 0 0 {name=p3 lab=vout}
C {devices/code_shown.sym} 200 -650 0 0 {name=s1 only_toplevel=false value=".control
save all
tran 1p 500p
plot vout-voutb
plot vin-vinb
.endc"}
C {devices/code_shown.sym} 210 -480 0 0 {name=s2 only_toplevel=false value=".lib /opt/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt"}
C {devices/opin.sym} 590 -290 0 0 {name=p1 lab=vin}
C {devices/opin.sym} 590 -130 0 0 {name=p2 lab=vinb}
C {devices/gnd.sym} 410 -210 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 410 -140 0 1 {name=V3 value="PWL(0p 1.8 100p 1.8 110p 1.5 200p 1.5)"}
C {devices/gnd.sym} 410 -110 0 0 {name=l3 lab=GND}
C {cml_inverter.sym} 1230 -190 0 0 {name=x2}
C {devices/gnd.sym} 60 -40 0 1 {name=l4 lab=GND}
