library verilog;
use verilog.vl_types.all;
entity addersubovr_vlg_check_tst is
    port(
        CarryOut        : in     vl_logic;
        OVR             : in     vl_logic;
        S0              : in     vl_logic;
        S1              : in     vl_logic;
        S2              : in     vl_logic;
        S3              : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end addersubovr_vlg_check_tst;
