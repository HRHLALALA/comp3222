library verilog;
use verilog.vl_types.all;
entity bit4_counter_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        CLR             : in     vl_logic;
        En              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end bit4_counter_vlg_sample_tst;
