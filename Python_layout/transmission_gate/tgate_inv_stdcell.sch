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
lab=A}
N 570 -1290 570 -1270 {
lab=A}
N 570 -1290 640 -1290 {
lab=A}
N 570 -1300 570 -1290 {
lab=A}
N 640 -1330 640 -1290 {
lab=A}
N 680 -1360 740 -1360 {
lab=B}
N 680 -1330 740 -1330 {
lab=B}
N 680 -1360 680 -1330 {
lab=B}
N 570 -1360 680 -1360 {
lab=B}
N 640 -1290 740 -1290 {
lab=A}
N 740 -1300 740 -1290 {
lab=A}
N 780 -1330 820 -1330 {
lab=NSEL}
N 760 -1410 790 -1410 {
lab=SEL}
N 870 -1410 910 -1410 {
lab=NSEL}
C {sg13g2_pr/sg13_lv_nmos.sym} 550 -1330 2 1 {name=M1
l=1u
w=0.4u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {iopin.sym} 570 -1390 0 0 {name=p1 lab=B}
C {iopin.sym} 760 -1410 0 1 {name=p3 lab=SEL}
C {iopin.sym} 570 -1270 0 0 {name=p4 lab=A}
C {sg13g2_pr/sg13_lv_pmos.sym} 760 -1330 0 1 {name=M2
l=1u
w=1.2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_stdcells/sg13g2_inv_1.sym} 830 -1410 0 0 {name=x1 VDD=VDD_D VSS=VSS_D prefix=sg13g2_ }
C {lab_pin.sym} 490 -1330 0 0 {name=p2 sig_type=std_logic lab=SEL}
C {lab_pin.sym} 910 -1410 0 1 {name=p5 sig_type=std_logic lab=NSEL}
C {lab_pin.sym} 820 -1330 0 1 {name=p6 sig_type=std_logic lab=NSEL}
C {iopin.sym} 520 -1470 0 0 {name=p7 lab=VDD_D}
C {iopin.sym} 630 -1470 0 0 {name=p8 lab=VSS_D}
C {devices/code_shown.sym} 430 -1195 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value="

.include '/opt/pdks/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice'
"}
