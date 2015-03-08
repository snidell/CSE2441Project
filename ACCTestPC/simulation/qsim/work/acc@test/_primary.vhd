library verilog;
use verilog.vl_types.all;
entity accTest is
    port(
        Aout0           : out    vl_logic;
        ALUMDRsel       : in     vl_logic;
        ALU0            : in     vl_logic;
        ADDR0           : in     vl_logic;
        ALU1            : in     vl_logic;
        ADDR1           : in     vl_logic;
        ALU2            : in     vl_logic;
        ADDR2           : in     vl_logic;
        ALU3            : in     vl_logic;
        ADDR3           : in     vl_logic;
        LoadACC         : in     vl_logic;
        IncACC          : in     vl_logic;
        ClearACC        : in     vl_logic;
        Aout1           : out    vl_logic;
        Aout2           : out    vl_logic;
        Aout3           : out    vl_logic
    );
end accTest;
