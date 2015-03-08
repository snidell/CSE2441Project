library verilog;
use verilog.vl_types.all;
entity overflowDetect is
    port(
        OVR             : out    vl_logic;
        A3              : in     vl_logic;
        B3              : in     vl_logic;
        R3              : in     vl_logic
    );
end overflowDetect;
