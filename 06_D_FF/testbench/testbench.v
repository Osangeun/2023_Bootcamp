module testbench;
    reg clk;
    reg reset;
    reg D;
    wire Q;

    D_FF uut_D_FF (
        .clk(clk),
        .reset(reset),
        .D(D),
        .Q(Q)
    );

    always # 5 clk = ~clk;

    initial begin
        clk = 1'b0;
        reset = 1'b0;
        #10 reset = 1'b1;
    end 

    initial begin   
        D = 1'b0;
        #10;

        D = 1'b1;
        #10;

        D = 1'b0;
        #10;

        D = 1'b1;
        #10;

        $stop;
    end
endmodule
