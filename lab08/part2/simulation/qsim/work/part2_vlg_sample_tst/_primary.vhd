library verilog;
use verilog.vl_types.all;
entity part2_vlg_sample_tst is
    port(
        KEY             : in     vl_logic_vector(2 downto 0);
        sampler_tx      : out    vl_logic
    );
end part2_vlg_sample_tst;
