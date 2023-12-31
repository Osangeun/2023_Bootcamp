library verilog;
use verilog.vl_types.all;
entity shift_reg is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        d               : in     vl_logic;
        q               : out    vl_logic_vector(3 downto 0)
    );
end shift_reg;
