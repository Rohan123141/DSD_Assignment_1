
module d_ff(
    input wire clk,
    input wire rst_n,      
    input wire d,
    output reg q
);

    always @(posedge clk) begin
        if (!rst_n)
            q <= 1'b0;
        else
            q <= d;
    end

endmodule

module Counter_using_Dflipflop(
    input wire clk,
    input wire rst_n,
    output wire [1:0] q
);

    wire d0, d1;

    assign d0 = ~q[0];          // Toggle Q0
    assign d1 = q[1] ^ q[0];    // Toggle Q1 when Q0 = 1

    // Flip-flops
    d_ff ff0 (.clk(clk), .rst_n(rst_n), .d(d0), .q(q[0]));
    d_ff ff1 (.clk(clk), .rst_n(rst_n), .d(d1), .q(q[1]));

endmodule
