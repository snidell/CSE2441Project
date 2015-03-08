library verilog;
use verilog.vl_types.all;
entity pwm_vlg_sample_tst is
    port(
        address0        : in     vl_logic;
        address1        : in     vl_logic;
        address2        : in     vl_logic;
        address3        : in     vl_logic;
        C4              : in     vl_logic;
        C42             : in     vl_logic;
        CLK             : in     vl_logic;
        data            : in     vl_logic_vector(7 downto 0);
        WriteEn         : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end pwm_vlg_sample_tst;
