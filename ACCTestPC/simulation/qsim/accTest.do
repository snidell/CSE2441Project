onerror {quit -f}
vlib work
vlog -work work accTest.vo
vlog -work work accTest.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.accTest_vlg_vec_tst
vcd file -direction accTest.msim.vcd
vcd add -internal accTest_vlg_vec_tst/*
vcd add -internal accTest_vlg_vec_tst/i1/*
add wave /*
run -all
