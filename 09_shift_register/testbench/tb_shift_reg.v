module tb_shift_reg;
    reg clk;
    reg reset;
    reg d;
    wire q;

    shift_reg uut_shift_reg(
        .clk(clk),
        .reset(reset),
        .d(d),
        .q(q)
    );
    
    always #5 clk = ~clk;

    initial begin
        clk = 1'b0;
        reset = 1'b0;
        #10 reset = 1'b1;
    end

    initial begin
        d = 1'b0;
        #10;

        d = 1'b1;
        #10;

        d = 1'b0;
        #10;

        d = 1'b1;
        #10;

        $stop;
    end
endmodule
