module mux(
    input [1:0] D0,
    input [1:0] D1,
    input sel,
    output [1:0] mux_out
);

    assign mux_out = (sel == 1'b0) ? D0 : D1;

endmodule