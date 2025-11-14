
module JK_flipflop_tb;
    reg clk, j, k, rst;
    wire q, qn;
    JK_flipflop uut (
        .clk(clk),
        .j(j),
        .k(k),
        .rst(rst),
        .q(q),
        .qn(qn)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    initial begin
        rst = 1; j = 0; k = 0;
        #12 rst = 0;
        
        #10 j = 0; k = 0;
        #10 j = 0; k = 1; // Reset
        #10 j = 1; k = 0; // Set
        #10 j = 1; k = 1; // Toggle
        #10 j = 0; k = 0; // Hold
        #10 $finish;
    end
    initial begin
        $monitor("Time=%0d | rst=%b j=%b k=%b | q=%b qn=%b", $time, rst, j, k, q, qn);
    end
endmodule
