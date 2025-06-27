v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 490 -1330 530 -1330 {
lab=G}
N 570 -1390 570 -1360 {
lab=D}
N 570 -1330 640 -1330 {
lab=S}
N 570 -1290 570 -1270 {
lab=S}
N 570 -1290 640 -1290 {
lab=S}
N 570 -1300 570 -1290 {
lab=S}
N 640 -1330 640 -1290 {
lab=S}
C {sg13g2_pr/sg13_lv_nmos.sym} 550 -1330 2 1 {name=M1
l=7u
w=0.4u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {iopin.sym} 570 -1390 0 0 {name=p1 lab=D}
C {iopin.sym} 490 -1330 0 1 {name=p3 lab=G}
C {iopin.sym} 570 -1270 0 0 {name=p4 lab=S}
