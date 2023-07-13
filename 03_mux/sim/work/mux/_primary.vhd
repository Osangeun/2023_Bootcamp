library verilog;
use verilog.vl_types.all;
entity mux is
    port(
        D0              : in     vl_logic_vector(1 downto 0);
        D1              : in     vl_logic_vector(1 downto 0);
        sel             : in     vl_logic;
        mux_out         : out    vl_logic_vector(1 downto 0)
    );
end mux;
