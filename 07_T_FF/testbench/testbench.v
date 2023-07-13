module testbench;
    reg clk;
    reg reset;
    reg T;
    wire Q;

    T_FF uut_T_FF (
        .clk(clk),
        .reset(reset),
        .T(T),
        .Q(Q)
    );

    initial clk = 1'b0;
    always # 5 clk = ~clk;

    initial begin
        T = 1'b0;
        reset = 1'b0;
        #10 reset = 1'b1;
    
        T = 1'b0;
        #10;

        T = 1'b0;
        #10;

        T = 1'b1;
        #10;

        T = 1'b1;
        #10;

        $stop;
    end
endmodule
