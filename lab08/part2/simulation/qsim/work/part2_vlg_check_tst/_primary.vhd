library verilog;
use verilog.vl_types.all;
entity part2_vlg_check_tst is
    port(
        Debug           : in     vl_logic_vector(8 downto 0);
        LEDR            : in     vl_logic_vector(9 downto 0);
        sampler_rx      : in     vl_logic
    );
end part2_vlg_check_tst;
