module Boolean_algebra_tb();
    reg A, B, C, D;
    wire F;

    // Instantiate the module
    Boolean_algebra uut (A, B, C, D, F);

    initial begin
        $monitor("Time=%0t | A=%b B=%b C=%b D=%b | F=%b", $time, A, B, C, D, F);

        // Apply test cases
        A=0; B=0; C=0; D=0; #10;
        A=0; B=1; C=0; D=1; #10;
        A=1; B=1; C=0; D=0; #10;
        A=1; B=1; C=1; D=1; #10;
        A=0; B=0; C=1; D=1; #10;
        A=1; B=0; C=1; D=0; #10;
        $finish;
    end
endmodule
