library verilog;
use verilog.vl_types.all;
entity search is
    port(
        A               : in     vl_logic_vector(7 downto 0);
        start           : in     vl_logic;
        Restart         : in     vl_logic;
        clk             : in     vl_logic;
        result          : out    vl_logic_vector(4 downto 0);
        debug           : out    vl_logic_vector(6 downto 0);
        found           : out    vl_logic
    );
end search;
