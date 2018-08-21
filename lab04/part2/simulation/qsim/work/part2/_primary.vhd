library verilog;
use verilog.vl_types.all;
entity part2 is
    port(
        SW              : in     vl_logic_vector(0 to 1);
        LEDR            : out    vl_logic_vector(0 to 1);
        LEDG            : out    vl_logic_vector(0 to 1)
    );
end part2;
