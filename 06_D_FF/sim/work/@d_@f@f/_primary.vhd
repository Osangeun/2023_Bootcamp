library verilog;
use verilog.vl_types.all;
entity D_FF is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        D               : in     vl_logic;
        Q               : out    vl_logic
    );
end D_FF;
