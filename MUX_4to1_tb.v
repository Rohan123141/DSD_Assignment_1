`timescale 1ns / 1ps
module MUX_4to1_tb();
    reg D0, D1, D2, D3;
    reg S1, S0;
    wire Y;

    // Instantiate the MUX
    MUX_4to1 uut (
        .Y(Y),
        .D0(D0), .D1(D1), .D2(D2), .D3(D3),
        .S1(S1), .S0(S0)
    );

    initial begin
        $display("S1 S0 | D0 D1 D2 D3 | Y");
        $display("--------------------------");
        $monitor("%b  %b  |  %b  %b  %b  %b | %b", S1, S0, D0, D1, D2, D3, Y);

        // Example input pattern
        D0=0; D1=1; D2=0; D3=1;

        // Select line combinations
        S1=0; S0=0; #10;  // Y = D0
        S1=0; S0=1; #10;  // Y = D1
        S1=1; S0=0; #10;  // Y = D2
        S1=1; S0=1; #10;  // Y = D3

        $finish;
    end
endmodule
