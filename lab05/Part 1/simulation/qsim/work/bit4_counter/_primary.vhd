library verilog;
use verilog.vl_types.all;
entity bit4_counter is
    port(
        En              : in     vl_logic;
        CLK             : in     vl_logic;
        CLR             : in     vl_logic;
        Q1              : out    vl_logic;
        Q2              : out    vl_logic;
        Q3              : out    vl_logic;
        Q4              : out    vl_logic
    );
end bit4_counter;
