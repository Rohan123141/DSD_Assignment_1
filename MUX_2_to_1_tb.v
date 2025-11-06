`timescale 1ns / 1ps

module MUX_2_to_1_tb();
    reg D0, D1, S0;   // Inputs
    wire Y;           // Output

    // Instantiate the module
    MUX_2_to_1 uut (
        .Y(Y),
        .D0(D0),
        .D1(D1),
        .S0(S0)
    );

    initial begin
        $display("Time | D0 D1 S0 | Y");
        $monitor("%4t |  %b  %b  %b | %b", $time, D0, D1, S0, Y);

        // Test patterns
        D0=0; D1=0; S0=0; #10;
        D0=0; D1=1; S0=0; #10;
        D0=1; D1=0; S0=0; #10;
        D0=1; D1=1; S0=0; #10;
        D0=0; D1=0; S0=1; #10;
        D0=0; D1=1; S0=1; #10;
        D0=1; D1=0; S0=1; #10;
        D0=1; D1=1; S0=1; #10;

        $finish;
    end
endmodule
