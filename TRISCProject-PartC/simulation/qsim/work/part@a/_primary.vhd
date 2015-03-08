library verilog;
use verilog.vl_types.all;
entity partA is
    port(
        MAR0            : out    vl_logic;
        CLKcontroller   : in     vl_logic;
        CLRcontroller   : in     vl_logic;
        C4              : out    vl_logic;
        C42             : out    vl_logic;
        C9              : out    vl_logic;
        C8              : out    vl_logic;
        C2              : out    vl_logic;
        MAR1            : out    vl_logic;
        MAR2            : out    vl_logic;
        MAR3            : out    vl_logic;
        PC0             : out    vl_logic;
        PC1             : out    vl_logic;
        PC2             : out    vl_logic;
        PC3             : out    vl_logic;
        Mout3           : out    vl_logic;
        Mout2           : out    vl_logic;
        Mout1           : out    vl_logic;
        Mout0           : out    vl_logic;
        MDoutHex0       : out    vl_logic;
        MDoutHex1       : out    vl_logic;
        MDoutHex2       : out    vl_logic;
        MDoutHex3       : out    vl_logic;
        MDoutHex4       : out    vl_logic;
        MDoutHex5       : out    vl_logic;
        MDoutHex6       : out    vl_logic;
        MARHex0         : out    vl_logic;
        MARHex1         : out    vl_logic;
        MARHex2         : out    vl_logic;
        MARHex3         : out    vl_logic;
        MARHex4         : out    vl_logic;
        MARHex5         : out    vl_logic;
        MARHex6         : out    vl_logic;
        MDinHex0        : out    vl_logic;
        MDinHex1        : out    vl_logic;
        MDinHex2        : out    vl_logic;
        MDinHex3        : out    vl_logic;
        MDinHex4        : out    vl_logic;
        MDinHex5        : out    vl_logic;
        MDinHex6        : out    vl_logic;
        C0              : out    vl_logic;
        C3              : out    vl_logic;
        C7              : out    vl_logic;
        C1              : out    vl_logic;
        C5              : out    vl_logic;
        C6              : out    vl_logic;
        C10             : out    vl_logic;
        C11             : out    vl_logic;
        MDIn0           : out    vl_logic;
        MDIn1           : out    vl_logic;
        MDIn2           : out    vl_logic;
        MDIn3           : out    vl_logic;
        IR3             : out    vl_logic;
        IR2             : out    vl_logic;
        IR1             : out    vl_logic;
        IR0             : out    vl_logic;
        readWrite       : out    vl_logic;
        Operand0        : out    vl_logic;
        Operand1        : out    vl_logic;
        Operand2        : out    vl_logic;
        Operand3        : out    vl_logic;
        R0              : out    vl_logic;
        R1              : out    vl_logic;
        R2              : out    vl_logic;
        R3              : out    vl_logic
    );
end partA;