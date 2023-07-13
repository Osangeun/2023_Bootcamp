module SR_FF(
    input clk,
    input S,
    input R,
    output reg Q
);

always @ (posedge clk)
    begin
        if (S && !R)     
            Q <= 1'b1;
        else if (!S && R)    
            Q <= 1'b0;
    end
endmodule