`timescale 1ns/1ps

module Half_Subtractor_tb;

reg A, B;
wire Diff, Borrow;

Half_Subtractor dut (
    .A(A),
    .B(B),
    .Diff(Diff),
    .Borrow(Borrow)
);

initial begin
    $dumpfile("Half_Subtractor.vcd");
    $dumpvars(0, Half_Subtractor_tb);
    A=0; B=0; #10;
    A=0; B=1; #10;
    A=1; B=0; #10;
    A=1; B=1; #10;

    $finish;
end

endmodule
