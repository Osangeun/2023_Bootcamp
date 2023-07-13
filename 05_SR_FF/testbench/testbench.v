module testbench;
    reg clk;
    reg S;
    reg R;
    wire Q;

    SR_FF uut_SR_FF(
        .clk(clk),
        .S(S),
        .R(R),
        .Q(Q)
    );

    initial begin
        clk = 0;
    end

    always #5 clk = ~clk;

    initial begin    
        S = 0;
        R = 0;
        #10;

        S = 0;
        R = 1;
        #10;

        S = 1;
        R = 0;
        #10;

        S = 1;
        R = 1;
        #10;

        $stop;
    end
endmodule