library verilog;
use verilog.vl_types.all;
entity part2 is
    port(
        KEY             : in     vl_logic_vector(2 downto 0);
        LEDR            : out    vl_logic_vector(9 downto 0)
    );
end part2;
