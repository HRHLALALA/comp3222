library verilog;
use verilog.vl_types.all;
entity divider_vlg_check_tst is
    port(
        Div3            : in     vl_logic;
        Done            : in     vl_logic;
        R               : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end divider_vlg_check_tst;
