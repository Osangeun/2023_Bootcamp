module T_FF (
    input clk,  
    input reset,
    input T, 
    output reg Q  
);

initial Q <= 1'b0;            

always @ (posedge clk)    
begin
    if(!reset)                   
        Q <= 1'b0;
    else if (T)                 
        Q <= ~ Q;
 end
endmodule