library verilog;
use verilog.vl_types.all;
entity RCA is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        cin             : in     vl_logic;
        sum             : out    vl_logic_vector(3 downto 0);
        carry3          : out    vl_logic
    );
end RCA;
