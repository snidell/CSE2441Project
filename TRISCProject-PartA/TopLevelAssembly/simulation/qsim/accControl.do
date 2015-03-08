onerror {quit -f}
vlib work
vlog -work work accControl.vo
vlog -work work accControl.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.accControl_vlg_vec_tst
vcd file -direction accControl.msim.vcd
vcd add -internal accControl_vlg_vec_tst/*
vcd add -internal accControl_vlg_vec_tst/i1/*
add wave /*
run -all
