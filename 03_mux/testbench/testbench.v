module testbench;
    reg [1:0] D0;
    reg [1:0] D1;
    reg sel;
    wire mux_out;

    mux uut_mux(
        .D0(D0),
        .D1(D1),
        .sel(sel),
        .mux_out(mux_out)
    );

    initial begin
        D0 = 0;
        D1 = 1;
        sel = 0;
        #5;
        
        D0 = 1;
        D1 = 0;
        sel = 0;
        #5;

        D0 = 0;
        D1 = 1;
        sel = 1;
        #5;

        D0 = 1;
        D1 = 0;
        sel = 1;
        #5;

        $stop;
    end
endmodule       