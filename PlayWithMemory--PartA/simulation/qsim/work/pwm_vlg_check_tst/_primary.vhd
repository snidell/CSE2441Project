library verilog;
use verilog.vl_types.all;
entity pwm_vlg_check_tst is
    port(
        Q0              : in     vl_logic;
        Q1              : in     vl_logic;
        Q2              : in     vl_logic;
        Q3              : in     vl_logic;
        Q4              : in     vl_logic;
        Q5              : in     vl_logic;
        Q6              : in     vl_logic;
        Q7              : in     vl_logic;
        WRENSig         : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end pwm_vlg_check_tst;
