onerror {quit -f}
vlib work
vlog -work work InstructionRegister.vo
vlog -work work InstructionRegister.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.InstructionRegister_vlg_vec_tst
vcd file -direction InstructionRegister.msim.vcd
vcd add -internal InstructionRegister_vlg_vec_tst/*
vcd add -internal InstructionRegister_vlg_vec_tst/i1/*
add wave /*
run -all
