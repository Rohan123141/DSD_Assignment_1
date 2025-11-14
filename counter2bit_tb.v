`timescale 1ns / 1ps

module Counter_using_Dflipflop_tb;

    reg clk;
    reg rst_n;
    wire [1:0] q;

    // Instantiate the DUT
    Counter_using_Dflipflop uut (
        .clk(clk),
        .rst_n(rst_n),
        .q(q)
    );

    // Clock generation (10 ns period)
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Stimulus
    initial begin
        // Start with reset active
        rst_n = 0;
        #12;          // Wait for more than one clock
        
        rst_n = 1;    // Release reset

        // Let the counter run
        #100;

        $finish;
    end

    // Monitor values
    initial begin
        $display("Time   Q1 Q0");
        $monitor("%4dns   %b  %b", $time, q[1], q[0]);
    end

endmodule
