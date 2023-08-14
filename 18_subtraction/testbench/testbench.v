module testbench;
    reg [3:0] a;
    reg [3:0] b;
    reg cin;
    wire cout;
    wire [3:0] sum;

sub uut_sub (
    .a(a),
    .b(b),
    .cin(cin),
    .cout(cout),
    .sum(sum)
);

initial begin
    cin = 1'b1;
    a = 4'b0110;
    b = 4'b1100;
    #10;

    cin = 1'b1;
    a = 4'b1110;
    b = 4'b1000;
    #10;

    cin = 1'b1;
    a = 4'b0111;
    b = 4'b1110;
    #10;

    cin = 1'b1;
    a = 4'b0010;
    b = 4'b1001;
    #10;

    $stop;
end

endmodule 
