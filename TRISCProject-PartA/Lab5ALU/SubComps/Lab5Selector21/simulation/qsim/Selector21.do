onerror {quit -f}
vlib work
vlog -work work Selector21.vo
vlog -work work Selector21.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Selector21_vlg_vec_tst
vcd file -direction Selector21.msim.vcd
vcd add -internal Selector21_vlg_vec_tst/*
vcd add -internal Selector21_vlg_vec_tst/i1/*
add wave /*
run -all
