library verilog;
use verilog.vl_types.all;
entity Accumulator is
    port(
        ACout0          : out    vl_logic;
        ALU0            : in     vl_logic;
        MDR0            : in     vl_logic;
        \ALU/MDR\       : in     vl_logic;
        MDR1            : in     vl_logic;
        ALU2            : in     vl_logic;
        MDR2            : in     vl_logic;
        ALU1            : in     vl_logic;
        MDR3            : in     vl_logic;
        ALU3            : in     vl_logic;
        ClearACC        : in     vl_logic;
        IncAcc          : in     vl_logic;
        LoadAcc         : in     vl_logic;
        ACout1          : out    vl_logic;
        Acout2          : out    vl_logic;
        Acout3          : out    vl_logic
    );
end Accumulator;
