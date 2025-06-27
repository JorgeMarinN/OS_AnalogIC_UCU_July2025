v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 490 -1330 530 -1330 {
lab=GN}
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
lab=GP}
C {sg13g2_pr/sg13_lv_nmos.sym} 550 -1330 2 1 {name=M1
l=1u
w=0.4u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {iopin.sym} 570 -1390 0 0 {name=p1 lab=B}
C {iopin.sym} 490 -1330 0 1 {name=p3 lab=GN}
C {iopin.sym} 570 -1270 0 0 {name=p4 lab=A}
C {sg13g2_pr/sg13_lv_pmos.sym} 760 -1330 0 1 {name=M2
l=1u
w=1.2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {iopin.sym} 820 -1330 0 0 {name=p2 lab=GP}
