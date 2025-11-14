module Universal_Subtractor(
    input  [3:0] A,    
    input  [3:0] B,    
    input        Bin,  
    output [3:0] Diff, 
    output       Bout  
);
wire [4:0] temp;
assign temp = {1'b0, A} - {1'b0, B} - Bin;
assign Diff = temp[3:0];
assign Bout = temp[4];  
endmodule
