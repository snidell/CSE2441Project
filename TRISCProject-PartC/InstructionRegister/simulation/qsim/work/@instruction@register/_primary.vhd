library verilog;
use verilog.vl_types.all;
entity InstructionRegister is
    port(
        IRout3          : out    vl_logic;
        Clear           : in     vl_logic;
        Load            : in     vl_logic;
        IR3             : in     vl_logic;
        IRout2          : out    vl_logic;
        IR2             : in     vl_logic;
        IRout1          : out    vl_logic;
        IR1             : in     vl_logic;
        IRout0          : out    vl_logic;
        IR0             : in     vl_logic
    );
end InstructionRegister;
