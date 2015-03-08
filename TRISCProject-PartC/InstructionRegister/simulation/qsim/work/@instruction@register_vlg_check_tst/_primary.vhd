library verilog;
use verilog.vl_types.all;
entity InstructionRegister_vlg_check_tst is
    port(
        IRout0          : in     vl_logic;
        IRout1          : in     vl_logic;
        IRout2          : in     vl_logic;
        IRout3          : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end InstructionRegister_vlg_check_tst;
