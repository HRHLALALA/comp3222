library verilog;
use verilog.vl_types.all;
entity part4 is
    port(
        D               : in     vl_logic;
        Clock           : in     vl_logic;
        Qa              : out    vl_logic;
        Qb              : out    vl_logic;
        Qc              : out    vl_logic
    );
end part4;
