module tb_shift_reg;
    reg clk;
    reg reset;
    reg d;
    wire [3:0] q;

    shift_reg uut_shift_reg(
        .clk(clk),
        .reset(reset),
        .d(d),
        .q(q)
    );

    initial clk = 1'b0;
    always #5 clk = ~clk;

    initial begin
        reset = 1'b0;
        #10 reset = 1'b1;

        d = 1'b0;
        #10;

        d = 1'b1;
        #10;

        d = 1'b0;
        #10;

        d = 1'b1;
        #10;
    end
endmodule
