library verilog;
use verilog.vl_types.all;
entity part2_vlg_sample_tst is
    port(
        SW              : in     vl_logic_vector(0 to 1);
        sampler_tx      : out    vl_logic
    );
end part2_vlg_sample_tst;
