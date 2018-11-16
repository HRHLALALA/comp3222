library verilog;
use verilog.vl_types.all;
entity divider is
    port(
        A               : in     vl_logic_vector(7 downto 0);
        s               : in     vl_logic;
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        R               : out    vl_logic_vector(7 downto 0);
        Done            : out    vl_logic;
        Div3            : out    vl_logic
    );
end divider;
