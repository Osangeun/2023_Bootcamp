module testbench;
    reg [1:0] D;
    reg S;
    wire [1:0] mux_out_1;
    wire [1:0] mux_out_2;

    demux uut_demux(
        .D(D),
        .S(S),
        .mux_out_1(mux_out_1),
        .mux_out_2(mux_out_2)
    );

    initial begin
        D = 0;
        S = 0;
        #5;

        D = 1;
        S = 0;
        #5;

        D = 0;
        S = 1;
        #5;

        D = 1;
        S = 1;
        #5;

        $stop;
    end
endmodule