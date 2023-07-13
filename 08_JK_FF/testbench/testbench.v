module testbench;
    reg clk;
    reg J;
    reg K;
    wire q;

    JK_FF uut_JK_FF(
        .clk(clk),
        .J(J),
        .K(K),
        .q(q)
    );

    always # 5 clk = ~clk;
    
    initial clk = 1'b0;

    initial begin
        J = 1'b0;
        K = 1'b0;
        #10;

        J = 1'b0;
        K = 1'b1;
        #10;

        J = 1'b1;
        K = 1'b0;
        #10;

        J = 1'b1;
        K = 1'b1;
        #10;

        $stop;
    end
endmodule



        
