v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 490 -1330 530 -1330 {
lab=SEL}
N 570 -1390 570 -1360 {
lab=B}
N 570 -1330 640 -1330 {
lab=VSS_D}
N 570 -1290 570 -1270 {
lab=A}
N 570 -1290 740 -1290 {
lab=A}
N 570 -1300 570 -1290 {
lab=A}
N 680 -1360 740 -1360 {
lab=B}
N 680 -1330 740 -1330 {
lab=B}
N 680 -1360 680 -1330 {
lab=B}
N 570 -1360 680 -1360 {
lab=B}
N 740 -1300 740 -1290 {
lab=A}
N 780 -1330 820 -1330 {
lab=NSEL}
N 980 -1270 1020 -1270 {
lab=SEL}
N 1060 -1270 1130 -1270 {
lab=VSS_D}
N 1060 -1220 1060 -1210 {
lab=VSS_D}
N 1060 -1230 1130 -1230 {
lab=VSS_D}
N 1060 -1240 1060 -1230 {
lab=VSS_D}
N 1130 -1270 1130 -1230 {
lab=VSS_D}
N 1060 -1400 1120 -1400 {
lab=VDD_D}
N 1060 -1370 1120 -1370 {
lab=VDD_D}
N 1120 -1400 1120 -1370 {
lab=VDD_D}
N 1060 -1340 1060 -1300 {
lab=NSEL}
N 980 -1370 1020 -1370 {
lab=SEL}
N 1060 -1450 1060 -1400 {
lab=VDD_D}
N 980 -1370 980 -1270 {
lab=SEL}
N 640 -1330 640 -1220 {
lab=VSS_D}
N 640 -1220 1060 -1220 {
lab=VSS_D}
N 1060 -1230 1060 -1220 {
lab=VSS_D}
C {sg13g2_pr/sg13_lv_nmos.sym} 550 -1330 2 1 {name=M1
l=1u
w=0.4u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {iopin.sym} 570 -1390 0 0 {name=p1 lab=B}
C {iopin.sym} 980 -1320 0 1 {name=p3 lab=SEL}
C {iopin.sym} 570 -1270 0 0 {name=p4 lab=A}
C {sg13g2_pr/sg13_lv_pmos.sym} 760 -1330 0 1 {name=M2
l=1u
w=1.2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_pin.sym} 490 -1330 0 0 {name=p2 sig_type=std_logic lab=SEL}
C {lab_pin.sym} 1060 -1320 0 1 {name=p5 sig_type=std_logic lab=NSEL}
C {lab_pin.sym} 820 -1330 0 1 {name=p6 sig_type=std_logic lab=NSEL}
C {sg13g2_pr/sg13_lv_nmos.sym} 1040 -1270 2 1 {name=M3
l=0.13u
w=0.74u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {iopin.sym} 1060 -1450 0 0 {name=p9 lab=VDD_D}
C {iopin.sym} 1060 -1210 0 0 {name=p10 lab=VSS_D}
C {sg13g2_pr/sg13_lv_pmos.sym} 1040 -1370 0 0 {name=M4
l=0.13u
w=1.12u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
