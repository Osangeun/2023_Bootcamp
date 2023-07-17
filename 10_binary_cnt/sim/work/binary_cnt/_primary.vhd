library verilog;
use verilog.vl_types.all;
entity binary_cnt is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        \out\           : out    vl_logic_vector(3 downto 0)
    );
end binary_cnt;
