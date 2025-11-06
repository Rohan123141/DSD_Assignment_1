`timescale 1ns / 1ps   // Defines simulation time units

module MUX_2_to_1(
    output reg Y,       // Output (registered type since it's inside always block)
    input D0, D1,       // Data inputs
    input S0            // Select line
    );

    always @(*) begin    // Combinational logic (sensitive to all inputs)
        case (S0)
            1'b0: Y = D0;    // When S0 = 0 → output D0
            1'b1: Y = D1;    // When S0 = 1 → output D1
        endcase
    end
endmodule
