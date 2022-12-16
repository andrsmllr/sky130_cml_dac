v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Identical cell serves as load} 1340 -110 0 0 0.4 0.4 {}
T {Device under test} 900 -110 0 0 0.4 0.4 {}
N 1160 -340 1160 -190 {
lab=#net1}
N 1160 -130 1160 -40 {
lab=#net2}
N 1140 -190 1160 -190 {
lab=#net1}
N 60 -40 740 -40 {
lab=#net2}
N 1140 -130 1160 -130 {
lab=#net2}
N 1140 -170 1200 -170 {
lab=vout_p}
N 1200 -190 1200 -170 {
lab=vout_p}
N 1200 -190 1250 -190 {
lab=vout_p}
N 1140 -150 1220 -150 {
lab=vout_n}
N 1300 -170 1300 -150 {
lab=vout_n}
N 1300 -170 1330 -170 {
lab=vout_n}
N 1630 -130 1660 -130 {
lab=#net2}
N 1660 -130 1660 -40 {
lab=#net2}
N 1160 -40 1580 -40 {
lab=#net2}
N 1630 -190 1660 -190 {
lab=#net1}
N 1660 -340 1660 -190 {
lab=#net1}
N 1330 -150 1330 -130 {
lab=#net2}
N 1330 -130 1330 -40 {
lab=#net2}
N 760 -190 840 -190 {
lab=ain_p}
N 740 -170 840 -170 {
lab=ain_n}
N 720 -150 840 -150 {
lab=bin_p}
N 700 -130 840 -130 {
lab=bin_n}
N 480 -80 480 -40 {
lab=#net2}
N 400 -160 480 -160 {
lab=#net2}
N 400 -160 400 -40 {
lab=#net2}
N 400 -240 480 -240 {
lab=#net2}
N 400 -240 400 -160 {
lab=#net2}
N 400 -320 480 -320 {
lab=#net2}
N 400 -320 400 -240 {
lab=#net2}
N 740 -40 1160 -40 {
lab=#net2}
N 60 -420 1160 -420 {
lab=#net1}
N 1160 -420 1160 -340 {
lab=#net1}
N 1220 -150 1300 -150 {
lab=vout_n}
N 1250 -190 1330 -190 {
lab=vout_p}
N 1580 -40 1660 -40 {
lab=#net2}
N 1200 -220 1200 -190 {
lab=vout_p}
N 1200 -150 1200 -120 {
lab=vout_n}
N 480 -380 620 -380 {
lab=ain_p}
N 540 -400 540 -380 {
lab=ain_p}
N 480 -300 620 -300 {
lab=ain_n}
N 540 -320 540 -300 {
lab=ain_n}
N 480 -220 620 -220 {
lab=bin_p}
N 540 -240 540 -220 {
lab=bin_p}
N 480 -140 620 -140 {
lab=bin_n}
N 540 -160 540 -140 {
lab=bin_n}
N 620 -140 700 -140 {
lab=bin_n}
N 700 -140 700 -130 {
lab=bin_n}
N 620 -220 720 -220 {
lab=bin_p}
N 720 -220 720 -150 {
lab=bin_p}
N 620 -300 740 -300 {
lab=ain_n}
N 740 -300 740 -170 {
lab=ain_n}
N 760 -380 760 -190 {
lab=ain_p}
N 620 -380 760 -380 {
lab=ain_p}
N 1160 -420 1660 -420 {
lab=#net1}
N 1660 -420 1660 -340 {
lab=#net1}
N 60 -180 60 -40 {
lab=#net2}
N 60 -420 60 -240 {
lab=#net1}
C {devices/code_shown.sym} 20 -490 0 0 {name=import_sky130_lib only_toplevel=false value=".lib /opt/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt"}
C {devices/code_shown.sym} 20 -670 0 0 {name=run_sim only_toplevel=false value=".control
save all
tran 1p 300p
plot vout_p-vout_n
plot ain_p-ain_n
plot bin_p-bin_n
.endc"}
C {devices/vsource.sym} 60 -210 0 0 {name=V_SUPPLY value=1.8}
C {devices/opin.sym} 1200 -120 0 0 {name=p3 lab=vout_n}
C {devices/opin.sym} 1200 -220 0 0 {name=p1 lab=vout_p}
C {devices/noconn.sym} 1630 -170 2 0 {name=l1}
C {devices/noconn.sym} 1630 -150 2 0 {name=l2}
C {devices/vsource.sym} 480 -350 0 1 {name=V_AIN_P value="PWL(\{tstart\} \{vhigh\} \{tstable\} \{vhigh\} \{tedge\} \{vlow\} \{tstop\} \{vlow\})"}
C {devices/vsource.sym} 480 -270 0 1 {name=V_AIN_N value="PWL(\{tstart\} \{vlow\} \{tstable\} \{vlow\} \{tedge\} \{vhigh\} \{tstop\} \{vhigh\})"}
C {devices/vsource.sym} 480 -190 0 1 {name=V_BIN_P value="PWL(\{tstart\} \{vhigh\} \{tstable\} \{vhigh\} \{tedge\} \{vhigh\} \{tstop\} \{vhigh\})"}
C {devices/vsource.sym} 480 -110 0 1 {name=V_BIN_N value="PWL(\{tstart\} \{vlow\} \{tstable\} \{vlow\} \{tedge\} \{vlow\} \{tstop\} \{vlow\})"}
C {devices/code_shown.sym} 240 -670 0 0 {name=sim_parameters only_toplevel=false value="
.param vcommon=1.65
.param vswing=0.3
.param vhigh=vcommon+vswing/2
.param vlow=vcommon-vswing/2
.param tstart=0p
.param tstable=100p
.param tedge=110p
.param tstop=300p
"}
C {devices/opin.sym} 540 -400 0 0 {name=p2 lab=ain_p}
C {devices/opin.sym} 540 -320 0 0 {name=p4 lab=ain_n}
C {devices/opin.sym} 540 -240 0 0 {name=p5 lab=bin_p}
C {devices/opin.sym} 540 -160 0 0 {name=p6 lab=bin_n}
C {cml_and_or.sym} 990 -160 0 0 {name=x1}
C {cml_and_or.sym} 1480 -160 0 0 {name=x2}
