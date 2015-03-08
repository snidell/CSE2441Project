library verilog;
use verilog.vl_types.all;
entity overflowDetect_vlg_sample_tst is
    port(
        A3              : in     vl_logic;
        B3              : in     vl_logic;
        R3              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end overflowDetect_vlg_sample_tst;
