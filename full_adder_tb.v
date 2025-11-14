`timescale 1ns/1ps

module Full_Adder_tb;

reg A, B, Cin;
wire Sum, Cout;

Full_Adder dut(A, B, Cin, Sum, Cout);

initial begin
    $dumpfile("Full_Adder.vcd");
    $dumpvars(0, Full_Adder_tb);

    A=0; B=0; Cin=0; #10;
    A=0; B=1; Cin=0; #10;
    A=1; B=0; Cin=0; #10;
    A=1; B=1; Cin=0; #10;

    A=0; B=0; Cin=1; #10;
    A=0; B=1; Cin=1; #10;
    A=1; B=0; Cin=1; #10;
    A=1; B=1; Cin=1; #10;

    $finish;
end

endmodule
