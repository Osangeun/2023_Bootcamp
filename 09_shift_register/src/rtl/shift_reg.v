module shift_reg(
    input clk,
    input reset,
    input d,
    output [3:0] reg q
);

always @ (posedge clk) begin
    if(!reset)
        q <= 4'b0000;
    else
        q <= q + 4'b0001;
end
endmodule