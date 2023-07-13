library verilog;
use verilog.vl_types.all;
entity demux is
    port(
        D               : in     vl_logic_vector(1 downto 0);
        S               : in     vl_logic;
        mux_out_1       : out    vl_logic_vector(1 downto 0);
        mux_out_2       : out    vl_logic_vector(1 downto 0)
    );
end demux;
