library verilog;
use verilog.vl_types.all;
entity InstructionRegister_vlg_sample_tst is
    port(
        Clear           : in     vl_logic;
        IR0             : in     vl_logic;
        IR1             : in     vl_logic;
        IR2             : in     vl_logic;
        IR3             : in     vl_logic;
        Load            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end InstructionRegister_vlg_sample_tst;
