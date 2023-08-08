module carry_lookahead_unit(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output [3:0] c,
    output cout,
    output pg,
    output gg
);

wire [3:0] p, g;

assign p = a ^ b;
assign g = a & b;

assign c[0] = cin;
assign c[1] = g[0] | (p[0]&c[0]);
assign c[2] = g[1] | (p[1]&g[0]) | (p[1]&p[0]&c[0]);
assign c[3] = g[2] | (p[2]&g[1]) | (p[2]&p[1]&g[0]) | (p[2]&p[1]&p[0]&c[0]);
assign cout = g[3] | (p[3]&g[2]) | (p[3]&p[2]&g[1]) | (p[3]&p[2]&p[1]&g[0]) | (p[3]&p[2]&p[1]&p[0]&c[0]);

assign pg = p[3] & p[2] & p[1] & p[0];
assign gg = g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1]) | (p[3] & p[2] & p[1] & g[0]);

endmodule




/* Gi = Ai * Bi , Pi = Ai + Bi
--> Ci = AiBi + (Ai+Bi)Ci = Gi + PiCi

C1=G0+P0Cin

C2=G1+P1G0+P1P0Cin

C3=G2+P2G1+P2P1G0+P2P1P0Cin

Cout=G3+P3G2+P3P2G1+P3P2P1G0+P3P2P1P0Cin */