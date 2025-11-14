`timescale 1ns/1ps

module Half_Adder_tb;
reg A, B;
wire Sum, Carry;

Half_Adder dut (
    .A(A),
    .B(B),
    .Sum(Sum),
    .Carry(Carry)
);

initial begin
    $dumpfile("Half_Adder.vcd");
    $dumpvars(0, Half_Adder_tb);


    A=0; B=0; #10;
    A=0; B=1; #10;
    A=1; B=0; #10;
    A=1; B=1; #10;

    $finish;
end

endmodule
