module gray_cnt(
    input clk,
    input reset,
    output reg [2:0] out
);
    reg q0, q1, q2;
    reg [3:0] cnt;

    always @ (posedge clk or negedge reset) begin
        if(!reset) begin
            out <= 4'h0;
            cnt <= 4'h0;
        end
        else begin
            cnt <= cnt + 1'h1;
            q2 <= cnt[3] ^ cnt[2];
            q1 <= cnt[2] ^ cnt[1];
            q0 <= cnt[1] ^ cnt[0];
            out <= {cnt[3], q2, q1, q0};
        end
    end
endmodule