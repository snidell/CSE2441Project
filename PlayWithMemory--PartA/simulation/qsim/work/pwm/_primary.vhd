library verilog;
use verilog.vl_types.all;
entity pwm is
    port(
        Q7              : out    vl_logic;
        WriteEn         : in     vl_logic;
        CLK             : in     vl_logic;
        C4              : in     vl_logic;
        C42             : in     vl_logic;
        address3        : in     vl_logic;
        address2        : in     vl_logic;
        address1        : in     vl_logic;
        address0        : in     vl_logic;
        data            : in     vl_logic_vector(7 downto 0);
        Q6              : out    vl_logic;
        Q5              : out    vl_logic;
        Q4              : out    vl_logic;
        Q3              : out    vl_logic;
        Q2              : out    vl_logic;
        Q1              : out    vl_logic;
        Q0              : out    vl_logic;
        WRENSig         : out    vl_logic
    );
end pwm;
