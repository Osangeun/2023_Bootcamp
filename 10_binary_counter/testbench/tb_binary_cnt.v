module tb_binary_cnt;
    reg clk;
    reg reset;
    wire [3:0] q;

binary_cnt uut_binary_cnt(
    .clk(clk),
    .reset(reset),
    .q(q)
);

always #5 clk = ~clk;

initial begin
    clk = 1'b0;
    reset = 1'b0;
    #10 reset = 1'b1;

    repeat (10) begin
        #10;
    end

    $stop;
end
endmodule