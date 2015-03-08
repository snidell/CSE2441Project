library verilog;
use verilog.vl_types.all;
entity accTest_vlg_check_tst is
    port(
        Aout0           : in     vl_logic;
        Aout1           : in     vl_logic;
        Aout2           : in     vl_logic;
        Aout3           : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end accTest_vlg_check_tst;
