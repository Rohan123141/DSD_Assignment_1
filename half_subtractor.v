module Half_Subtractor(
    input A,
    input B,
    output Diff,
    output Borrow
);
assign Diff   = A ^ B;   
assign Borrow = (~A) & B;  

endmodule
