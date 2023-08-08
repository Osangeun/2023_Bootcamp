module cla(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output [3:0] s,
    output cout,
    output pg,
    output gg
);

wire [3:0] p, g, c;

full_adder fa0(
    .s(s[0]),
    .p(p[0]),
    .g(g[0]),
    .a(a[0]),
    .b(b[0]),
    .cin(cin)
);

full_adder fa1(
    .s(s[1]),
    .p(p[1]),
    .g(g[1]),
    .a(a[1]),
    .b(b[1]),
    .cin(c[0])
);

full_adder fa2(
    .s(s[2]),
    .p(p[2]),
    .g(g[2]),
    .a(a[2]),
    .b(b[2]),
    .cin(c[1])
);

full_adder fa3(
    .s(s[3]),
    .p(p[3]),
    .g(g[3]),
    .a(a[3]),
    .b(b[3]),
    .cin(c[2])
);

carry_lookahead_unit uut_lookahead (
    .a(a),          
    .b(b),         
    .cin(cin),      
    .c(c),          
    .cout(cout),    
    .pg(pg),        
    .gg(gg)        
);

assign cout = c[3];

endmodule