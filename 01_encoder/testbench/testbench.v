module testbench;
    reg enc_in_0;
    reg enc_in_1;
    reg enc_in_2;
    reg enc_in_3;
    wire [1:0] enc_out;

    encoder uut_encoder(
        .enc_in_0(enc_in_0),
        .enc_in_1(enc_in_1),
        .enc_in_2(enc_in_2),
        .enc_in_3(enc_in_3),
        .enc_out(enc_out)
    );

    initial begin
        enc_in_0 = 1;
        enc_in_1 = 0;
        enc_in_2 = 0;
        enc_in_3 = 0;
        #5;

        enc_in_0 = 0;
        enc_in_1 = 1;
        enc_in_2 = 0;
        enc_in_3 = 0;
        #5;

        enc_in_0 = 0;
        enc_in_1 = 0;
        enc_in_2 = 1;
        enc_in_3 = 0;
        #5;

        enc_in_0 = 0;
        enc_in_1 = 0;
        enc_in_2 = 0;
        enc_in_3 = 1;
        #5;   
    end
endmodule