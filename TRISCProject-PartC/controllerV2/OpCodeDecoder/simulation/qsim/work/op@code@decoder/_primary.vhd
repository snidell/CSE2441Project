library verilog;
use verilog.vl_types.all;
entity opCodeDecoder is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        C               : in     vl_logic;
        D               : in     vl_logic;
        LDA             : out    vl_logic;
        STA             : out    vl_logic;
        ADD             : out    vl_logic;
        SUB             : out    vl_logic;
        \XOR\           : out    vl_logic;
        INC             : out    vl_logic;
        CLR             : out    vl_logic;
        JMP             : out    vl_logic;
        JPZ             : out    vl_logic;
        JPN             : out    vl_logic;
        HLT             : out    vl_logic
    );
end opCodeDecoder;
