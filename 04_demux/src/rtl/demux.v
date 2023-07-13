module demux(
    input [1:0] D,
    input S,
    output [1:0] mux_out_1,
    output [1:0] mux_out_2
);

    assign mux_out_1 = (S == 1'b0) ? D : 2'b00;
    assign mux_out_2 = (S == 1'b1) ? D : 2'b00;
endmodule 