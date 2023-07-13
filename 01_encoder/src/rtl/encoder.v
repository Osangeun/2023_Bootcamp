module encoder (
    input enc_in_0,
    input enc_in_1,
    input enc_in_2,
    input enc_in_3,
    output [1:0] enc_out
);

    assign enc_out = (enc_in_0 == 1'b1)? 2'h0:
                     (enc_in_1 == 1'b1)? 2'h1:
                     (enc_in_2 == 1'b1)? 2'h2:
                     (enc_in_3 == 1'b1)? 2'h3: 2'h4;
endmodule