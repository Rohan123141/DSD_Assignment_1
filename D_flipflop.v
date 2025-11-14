module D_flipflop (
    input D,         
    input clk,      
    input reset,     
    output reg Q,    
    output Qbar     
);
always @(posedge clk or posedge reset)
begin
    if (reset)
        Q <= 1'b0;    
    else
        Q <= D;       
end
assign Qbar = ~Q;
endmodule
