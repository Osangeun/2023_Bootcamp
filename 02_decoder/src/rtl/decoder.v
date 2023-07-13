module decoder (
    input [1:0] dec_in,  
    output reg dec_out_0,
    output reg dec_out_1,
    output reg dec_out_2,
    output reg dec_out_3
);

    assign dec_out_0 = (dec_in == 2'b00) ? 1'b1 : 1'b0;
    assign dec_out_1 = (dec_in == 2'b01) ? 1'b1 : 1'b0; 
    assign dec_out_2 = (dec_in == 2'b10) ? 1'b1 : 1'b0;
    assign dec_out_3 = (dec_in == 2'b11) ? 1'b1 : 1'b0;
endmodule