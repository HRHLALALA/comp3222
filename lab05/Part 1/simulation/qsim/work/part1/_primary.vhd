library verilog;
use verilog.vl_types.all;
entity part1 is
    port(
        En              : in     vl_logic;
        CLK             : in     vl_logic;
        CLR             : in     vl_logic;
        LEDG            : out    vl_logic_vector(7 downto 0);
        HEX0            : out    vl_logic_vector(6 downto 0);
        HEX1            : out    vl_logic_vector(6 downto 0);
        HEX2            : out    vl_logic_vector(6 downto 0);
        HEX3            : out    vl_logic_vector(6 downto 0)
    );
end part1;
