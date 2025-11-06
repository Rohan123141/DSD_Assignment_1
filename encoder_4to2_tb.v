`timescale 1ns / 1ps

module encoder_4to2_tb();
    reg D0, D1, D2, D3;
    wire [1:0] Y;
    wire V;

    // Instantiate the DUT
    encoder_4to2 uut (.D0(D0), .D1(D1), .D2(D2), .D3(D3), .Y(Y), .V(V));

    initial begin
        $display("D3 D2 D1 D0 | Y1 Y0 | V");
        $display("------------------------");
        $monitor("%b  %b  %b  %b |  %b  %b | %b", D3, D2, D1, D0, Y[1], Y[0], V);

        // Test patterns
        D3=0; D2=0; D1=0; D0=0; #10;
        D3=0; D2=0; D1=0; D0=1; #10;
        D3=0; D2=0; D1=1; D0=1; #10;
        D3=0; D2=1; D1=1; D0=0; #10;
        D3=1; D2=0; D1=0; D0=1; #10;

        $finish;
    end
endmodule
