module D_FF(
    input clk,
    input reset,
    input D,
    output reg Q
);

always @ (posedge clk)
begin 
    if(!reset)
        Q <= 1'b0;
    else
        Q <= D;
end
endmodule