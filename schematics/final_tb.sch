v {xschem version=3.4.7RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -400 -170 -380 -170 {lab=VDD}
N -430 -330 -380 -330 {lab=VDD}
N -430 -330 -430 -170 {lab=VDD}
N -430 -170 -400 -170 {lab=VDD}
N -430 -190 -380 -190 {lab=VDD}
N -430 -250 -380 -250 {lab=VDD}
N -430 -290 -380 -290 {lab=VDD}
N -430 -310 -380 -310 {lab=VDD}
N -410 -230 -380 -230 {lab=GND}
N -400 -230 -400 -210 {lab=GND}
N -400 -210 -380 -210 {lab=GND}
N -400 -270 -400 -230 {lab=GND}
N -400 -270 -380 -270 {lab=GND}
N -260 -170 -240 -170 {lab=#net1}
N -260 -190 -240 -190 {lab=#net2}
N -260 -210 -240 -210 {lab=#net3}
N -260 -230 -240 -230 {lab=#net4}
N -260 -250 -240 -250 {lab=#net5}
N -260 -270 -240 -270 {lab=#net6}
N -260 -290 -240 -290 {lab=#net7}
N -260 -310 -240 -310 {lab=#net8}
C {devices/vdd.sym} -380 -330 0 0 {name=l1 lab=VDD
type=subcircuit
format="@name @pinlist @symname"
template="name=X1"
file=univ_sr.spice
model=univ_sr}
C {devices/gnd.sym} -260 -330 3 0 {name=l2 lab=GND
type=subcircuit
format="@name @pinlist @symname"
template="name=X1"
file=univ_sr.spice
model=univ_sr}
C {devices/vsource.sym} -510 -330 0 0 {name=Vdd value=1.8 savecurrent=false}
C {devices/vdd.sym} -510 -360 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} -510 -300 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 60 -360 0 0 {name=Vclk value="pulse(0 1.8 0 100ps 100ps 5ns 10ns)" savecurrent=false}
C {devices/lab_pin.sym} -380 -130 0 0 {name=p1 sig_type=std_logic lab=Clk
type=subcircuit
format="@name @pinlist @symname"
template="name=X1"
file=univ_sr.spice
model=univ_sr}
C {devices/lab_pin.sym} 60 -390 0 0 {name=p2 sig_type=std_logic lab=Clk}
C {devices/gnd.sym} 60 -330 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} 160 -80 0 0 {name=Vrst value="pwl(0 1.8 15n 1.8 15.1n 0)" savecurrent=false}
C {devices/lab_pin.sym} 160 -110 0 0 {name=p3 sig_type=std_logic lab=Rst}
C {devices/gnd.sym} 160 -50 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} -260 -130 2 0 {name=p4 sig_type=std_logic lab=Rst
type=subcircuit
format="@name @pinlist @symname"
template="name=X1"
file=univ_sr.spice
model=univ_sr}
C {devices/vsource.sym} -670 -100 0 0 {name=Vctrl[1] value="pwl(0 0 15n 0 15.1n 1.8 45n 1.8 45.1n 0)" savecurrent=false}
C {devices/lab_pin.sym} -670 -130 0 0 {name=ctrl1[1] sig_type=std_logic lab=CTRL1
value="pwl(0 0 10n 0 10.01n 1.8 20n 1.8 20.01n 0 30n 0 30.01n 1.8)"}
C {devices/gnd.sym} -670 -70 0 0 {name=ctrl2[1] lab=GND
value="pwl(0 0 10n 0 10.01n 1.8 20n 1.8 20.01n 0 30n 0 30.01n 1.8)"}
C {devices/lab_pin.sym} -380 -150 0 0 {name=ctrl3[1] sig_type=std_logic lab=CTRL1
value="pwl(0 0 10n 0 10.01n 1.8 20n 1.8 20.01n 0 30n 0 30.01n 1.8)"
type=subcircuit
format="@name @pinlist @symname"
template="name=X1"
file=univ_sr.spice
model=univ_sr}
C {devices/gnd.sym} -410 -230 1 0 {name=l7 lab=GND
type=subcircuit
format="@name @pinlist @symname"
template="name=X1"
file=univ_sr.spice
model=univ_sr}
C {devices/code_shown.sym} -290 30 0 0 {name=SPICE only_toplevel=false value=".include /home/eda/pdk/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
.include /home/eda/Documents/univ_x/univ_sr.spice
.tran 0.1n 100n
.save all"}
C {devices/code.sym} -500 -20 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/vsource.sym} 200 -190 0 0 {name=Vctrl[0] value="pwl(0 0 15n 0 15.1n 1.8 25n 1.8 25.1n 0 45n 0 45.1n 1.8 65n 1.8 65.1n 0)" savecurrent=false}
C {devices/lab_pin.sym} 200 -220 0 0 {name=ctrl1[0] sig_type=std_logic lab=CTRL0
value="pwl(0 0 10n 0 10.01n 1.8 30n 1.8 30.01n 0)"}
C {devices/gnd.sym} 200 -160 0 0 {name=ctrl2[2] lab=GND
value="pwl(0 0 10n 0 10.01n 1.8 30n 1.8 30.01n 0)"}
C {devices/lab_pin.sym} -260 -150 2 0 {name=ctrl2[0] sig_type=std_logic lab=CTRL0
value="pwl(0 0 10n 0 10.01n 1.8 30n 1.8 30.01n 0)"
type=subcircuit
format="@name @pinlist @symname"
template="name=X1"
file=univ_sr.spice
model=univ_sr}
C {devices/lab_pin.sym} -180 -170 2 0 {name=p5 sig_type=std_logic lab=q0
}
C {devices/lab_pin.sym} -180 -190 2 0 {name=p6 sig_type=std_logic lab=q1}
C {devices/lab_pin.sym} -180 -210 2 0 {name=p7 sig_type=std_logic lab=q2}
C {devices/lab_pin.sym} -180 -230 2 0 {name=p8 sig_type=std_logic lab=q3}
C {devices/lab_pin.sym} -180 -250 2 0 {name=p9 sig_type=std_logic lab=q4}
C {devices/lab_pin.sym} -180 -270 2 0 {name=p10 sig_type=std_logic lab=q5}
C {devices/lab_pin.sym} -180 -290 2 0 {name=p11 sig_type=std_logic lab=q6}
C {devices/lab_pin.sym} -180 -310 2 0 {name=p12 sig_type=std_logic lab=q7}
C {univ_sr.sym} -300 -190 0 0 {name=x1}
C {devices/capa.sym} -210 -170 3 0 {name=C1
m=1
value=0.01p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} -210 -190 3 0 {name=C2
m=1
value=0.01p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} -210 -210 3 0 {name=C3
m=1
value=0.01p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} -210 -230 3 0 {name=C4
m=1
value=0.01p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} -210 -250 3 0 {name=C5
m=1
value=0.01p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} -210 -270 3 0 {name=C6
m=1
value=0.01p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} -210 -290 3 0 {name=C7
m=1
value=0.01p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} -210 -310 3 0 {name=C8
m=1
value=0.01p
footprint=1206
device="ceramic capacitor"}
