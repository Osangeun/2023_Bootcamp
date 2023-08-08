module full_adder(
    input a, b, cin,
    output p, g, s
);

assign p = a ^ b; //propagate
assign g = a & b; //generate
assign s = p ^ cin;

endmodule