module testbench;
    reg clk;
    reg reset;
    wire [2:0] out;

gray_cnt uut_gray_cnt(
    .clk(clk),
    .reset(reset),
    .out(out)
);

always #5 clk = ~clk;

initial begin
    clk = 1'b0;
    reset = 1'b0;
    #10 reset = 1'b1;

    repeat (10) @ (posedge clk) begin
        #10;
    end 

    $stop;
end
endmodule