v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 60 -120 60 -40 {
lab=#net1}
N 60 -340 60 -180 {
lab=#net2}
N 740 -340 740 -190 {
lab=#net2}
N 740 -130 740 -40 {
lab=#net1}
N 720 -190 740 -190 {
lab=#net2}
N 60 -340 740 -340 {
lab=#net2}
N 60 -40 740 -40 {
lab=#net1}
N 720 -130 740 -130 {
lab=#net1}
N 720 -170 780 -170 {
lab=yout}
N 780 -190 780 -170 {
lab=yout}
N 780 -190 830 -190 {
lab=yout}
N 720 -150 800 -150 {
lab=youtb}
N 800 -170 800 -150 {
lab=youtb}
N 800 -170 830 -170 {
lab=youtb}
N 1130 -130 1160 -130 {
lab=#net1}
N 1160 -130 1160 -40 {
lab=#net1}
N 740 -40 1160 -40 {
lab=#net1}
N 1130 -190 1160 -190 {
lab=#net2}
N 1160 -340 1160 -190 {
lab=#net2}
N 740 -340 1160 -340 {
lab=#net2}
N 780 -240 780 -190 {
lab=yout}
N 780 -150 780 -90 {
lab=youtb}
C {cml_and_or.sym} 570 -160 0 0 {name=x1}
C {devices/code_shown.sym} 20 -490 0 0 {name=s2 only_toplevel=false value=".lib /opt/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt"}
C {devices/code_shown.sym} 20 -670 0 0 {name=s1 only_toplevel=false value=".control
save all
tran 1p 500p
plot yout-youtb
plot ain-ainb
plot bin-binb
.endc"}
C {devices/vsource.sym} 60 -150 0 0 {name=V_SUPPLY value=1.8}
C {cml_and_or.sym} 980 -160 0 0 {name=x2}
C {devices/opin.sym} 780 -90 0 0 {name=p3 lab=youtb}
C {devices/opin.sym} 780 -240 0 0 {name=p1 lab=yout}
