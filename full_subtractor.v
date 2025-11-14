module Full_Subtractor(
    input  wire A, B, Bin,
    output wire D, Bout
);

    assign D    = A ^ B ^ Bin;
    assign Bout = (~A & B) | (~A & Bin) | (B & Bin);

endmodule
