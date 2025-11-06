`timescale 1ns / 1ps
module MUX_4to1(
    output reg Y,         // Output
    input D0, D1, D2, D3, // 4 data inputs
    input S1, S0          // 2 select lines
);

    always @(*) begin
        case ({S1, S0})   // Concatenate select bits into a 2-bit value
            2'b00: Y = D0;  // Select D0 when S1S0 = 00
            2'b01: Y = D1;  // Select D1 when S1S0 = 01
            2'b10: Y = D2;  // Select D2 when S1S0 = 10
            2'b11: Y = D3;  // Select D3 when S1S0 = 11
        endcase
    end

endmodule
