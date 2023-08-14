module full_adder(
    input a,
    input b,
    input cin,
    output cout,
    output sum
);

wire c0, c1;
wire s0;

half_adder ha0(
    .a(a),
    .b(b),
    .sum(s0),
    .cout(c0)
);

half_adder ha1(
    .a(s0),
    .b(cin),
    .sum(sum),
    .cout(c1)
);

assign cout = c0 | c1;

endmodule