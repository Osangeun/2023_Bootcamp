library verilog;
use verilog.vl_types.all;
entity JK_FF is
    port(
        clk             : in     vl_logic;
        J               : in     vl_logic;
        K               : in     vl_logic;
        q               : out    vl_logic
    );
end JK_FF;
