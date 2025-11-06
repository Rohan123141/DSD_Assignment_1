`timescale 1ns / 1ps
module encoder_4to2(
    input D0, D1, D2, D3,   // 4 inputs
    output reg [1:0] Y,     // 2-bit output
    output reg V            // Valid output flag
);
    always @(*) begin
        casez ({D3, D2, D1, D0})   // casez allows 'z' or 'x' don't-cares
            4'b0000: begin Y = 2'b00; V = 0; end // No valid input
            4'b???1: begin Y = 2'b00; V = 1; end // D0 active
            4'b??10: begin Y = 2'b01; V = 1; end // D1 active
            4'b?100: begin Y = 2'b10; V = 1; end // D2 active
            4'b1000: begin Y = 2'b11; V = 1; end // D3 active
            default: begin Y = 2'b00; V = 0; end
        endcase
    end
endmodule
