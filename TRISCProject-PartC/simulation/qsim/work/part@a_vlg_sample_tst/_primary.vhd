library verilog;
use verilog.vl_types.all;
entity partA_vlg_sample_tst is
    port(
        CLKcontroller   : in     vl_logic;
        CLRcontroller   : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end partA_vlg_sample_tst;
