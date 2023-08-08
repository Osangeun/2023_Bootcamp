library verilog;
use verilog.vl_types.all;
entity carry_lookahead_unit is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        cin             : in     vl_logic;
        c               : out    vl_logic_vector(3 downto 0);
        cout            : out    vl_logic;
        pg              : out    vl_logic;
        gg              : out    vl_logic
    );
end carry_lookahead_unit;
