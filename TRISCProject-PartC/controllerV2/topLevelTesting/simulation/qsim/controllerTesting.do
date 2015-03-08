onerror {quit -f}
vlib work
vlog -work work controllerTesting.vo
vlog -work work controllerTesting.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.controllerTesting_vlg_vec_tst
vcd file -direction controllerTesting.msim.vcd
vcd add -internal controllerTesting_vlg_vec_tst/*
vcd add -internal controllerTesting_vlg_vec_tst/i1/*
add wave /*
run -all
