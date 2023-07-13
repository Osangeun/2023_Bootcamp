library verilog;
use verilog.vl_types.all;
entity encoder is
    port(
        enc_in_0        : in     vl_logic;
        enc_in_1        : in     vl_logic;
        enc_in_2        : in     vl_logic;
        enc_in_3        : in     vl_logic;
        enc_out         : out    vl_logic_vector(1 downto 0)
    );
end encoder;
