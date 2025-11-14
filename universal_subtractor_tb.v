`timescale 1ns/1ps
module Universal_Subtractor_tb;
reg [3:0] A, B;
reg Bin;
wire [3:0] Diff;
wire Bout;
Universal_Subtractor uut (
    .A(A),
    .B(B),
    .Bin(Bin),
    .Diff(Diff),
    .Bout(Bout)
);
initial begin
    $display("Time\tA\tB\tBin\t|\tDiff\tBout");
    $monitor("%0dns\t%b\t%b\t%b\t|\t%b\t%b", $time, A, B, Bin, Diff, Bout);
    Bin = 0; A = 4'b0111; B = 4'b0011; #10; 
    A = 4'b1001; B = 4'b0011; #10;          
    A = 4'b0100; B = 4'b0111; #10;          
    A = 4'b1111; B = 4'b1110; #10;          
    Bin = 1; A = 4'b1010; B = 4'b0011; #10; 
    $finish;
end
endmodule
