library verilog;
use verilog.vl_types.all;
entity alu_vlg_check_tst is
    port(
        Cout            : in     vl_logic;
        OVR             : in     vl_logic;
        R0              : in     vl_logic;
        R1              : in     vl_logic;
        R2              : in     vl_logic;
        R3              : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end alu_vlg_check_tst;
