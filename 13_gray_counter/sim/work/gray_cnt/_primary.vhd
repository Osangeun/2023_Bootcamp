library verilog;
use verilog.vl_types.all;
entity gray_cnt is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        \out\           : out    vl_logic_vector(2 downto 0)
    );
end gray_cnt;
