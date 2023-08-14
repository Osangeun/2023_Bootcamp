module sub(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output cout,
    output [3:0] sum
);

wire c0, c1, c2;
wire [3:0] b1;

assign b1 = (cin == 1'b1) ? ~b : b;

full_adder fa0(
    .a(a[0]),
    .b(b1[0]),
    .cin(cin),
    .cout(c0),
    .sum(sum[0])
);

full_adder fa1(
    .a(a[1]),
    .b(b1[1]),
    .cin(c0),
    .cout(c1),
    .sum(sum[1])
);

full_adder fa2(
    .a(a[2]),
    .b(b1[2]),
    .cin(c1),
    .cout(c2),
    .sum(sum[2])
);

full_adder fa3(
    .a(a[3]),
    .b(b1[3]),
    .cin(c2),
    .cout(cout),
    .sum(sum[3])
);

endmodule 