library verilog;
use verilog.vl_types.all;
entity FlagRegister is
    port(
        QA              : out    vl_logic;
        Clear           : in     vl_logic;
        Load            : in     vl_logic;
        A               : in     vl_logic;
        QB              : out    vl_logic;
        B               : in     vl_logic;
        QC              : out    vl_logic;
        C               : in     vl_logic;
        QD              : out    vl_logic;
        D               : in     vl_logic
    );
end FlagRegister;
