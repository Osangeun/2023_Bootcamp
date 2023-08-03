module testbench;
    reg [3:0] in;
    wire out;

parity_check uut_parity_check(
    .in(in),
    .out(out)
);


initial begin

    in = 4'b0000;
    #10;

    in = 4'b0001;
    #10;

    in = 4'b0011;
    #10;

    in = 4'b0010;
    #10;

    in = 4'b0110;
    #10;

    in = 4'b0111;
    #10;
    
    in = 4'b1000;
    #10;

    in = 4'b1001;
    #10;

    $stop;
end
endmodule