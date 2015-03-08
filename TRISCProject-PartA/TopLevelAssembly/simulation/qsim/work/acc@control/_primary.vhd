library verilog;
use verilog.vl_types.all;
entity accControl is
    port(
        C0              : out    vl_logic;
        CLK             : in     vl_logic;
        CLR             : in     vl_logic;
        A               : in     vl_logic;
        B               : in     vl_logic;
        C               : in     vl_logic;
        D               : in     vl_logic;
        C2              : out    vl_logic;
        C3              : out    vl_logic;
        C4              : out    vl_logic;
        C42             : out    vl_logic;
        C7              : out    vl_logic;
        C8              : out    vl_logic;
        C9              : out    vl_logic
    );
end accControl;
