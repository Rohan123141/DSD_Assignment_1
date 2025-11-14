`timescale 1ns/1ps
module D_flipflop_tb;
reg D;
reg clk;
reg reset;
wire Q;
wire Qbar;
D_flipflop uut(
    .D(D),
    .clk(clk),
    .reset(reset),
    .Q(Q),
    .Qbar(Qbar)
);
always #5 clk = ~clk;
initial begin
    clk = 0; D = 0; reset = 0;
    $display("Time\tclk\treset\tD\tQ\tQbar");
    $monitor("%0dns\t%b\t%b\t%b\t%b\t%b", $time, clk, reset, D, Q, Qbar);
    #5  reset = 1;         
    #10 reset = 0; D = 1;  
    #10 D = 0;
    #10 D = 1;
    #10 D = 0;
    #10 reset = 1;        
    #10 reset = 0; D = 1;
    #20 $finish;
end
endmodule
