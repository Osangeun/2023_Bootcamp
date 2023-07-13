module testbench;
    reg [1:0] dec_in;
    wire dec_out_0;
    wire dec_out_1;
    wire dec_out_2;
    wire dec_out_3;

    decoder uut_decoder(
        .dec_in(dec_in),
        .dec_out_0(dec_out_0),
        .dec_out_1(dec_out_1),
        .dec_out_2(dec_out_2),
        .dec_out_3(dec_out_3)
    );

    initial begin
        dec_in = 2'b00;
        #5;
        
        dec_in = 2'b01;
        #5;

        dec_in = 2'b10;
        #5;

        dec_in = 2'b11;
        #5;

        $stop;
    end
endmodule