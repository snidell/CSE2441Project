library verilog;
use verilog.vl_types.all;
entity opCodeDecoder_vlg_check_tst is
    port(
        ADD             : in     vl_logic;
        CLR             : in     vl_logic;
        HLT             : in     vl_logic;
        INC             : in     vl_logic;
        JMP             : in     vl_logic;
        JPN             : in     vl_logic;
        JPZ             : in     vl_logic;
        LDA             : in     vl_logic;
        STA             : in     vl_logic;
        SUB             : in     vl_logic;
        \XOR\           : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end opCodeDecoder_vlg_check_tst;
