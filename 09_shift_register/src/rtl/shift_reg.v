module shift_reg(
    input clk,
    input reset,
    input d,
    output reg [3:0] q
);

always @ (posedge clk or negedge reset) begin
    if(!reset)
        q <= 4'b0000;
    else
        q <= q + 4'b0001;
end
endmodule