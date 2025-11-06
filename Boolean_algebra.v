// Boolean Expression: F = ~(A & B) | (C & D)
module Boolean_algebra(
    input A,
    input B,
    input C,
    input D,
    output F
);

assign F = ~(A & B) | (C & D);

endmodule
