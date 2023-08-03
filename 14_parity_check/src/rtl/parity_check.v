module parity_check(
    input [3:0] in,
    output reg out
);
    integer i;

    always @ (*) begin
        out = 1'b0;
        for (i=1; i<4; i=i+1)
            out = out ^ in[i];
    end
endmodule 
