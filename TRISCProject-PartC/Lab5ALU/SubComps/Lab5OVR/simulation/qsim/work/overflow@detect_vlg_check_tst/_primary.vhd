library verilog;
use verilog.vl_types.all;
entity overflowDetect_vlg_check_tst is
    port(
        OVR             : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end overflowDetect_vlg_check_tst;
