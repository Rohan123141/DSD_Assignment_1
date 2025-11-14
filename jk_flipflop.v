
module JK_flipflop (
    input clk,     
    input j,     
    input k,       
    input rst,     
    output reg q, 
    output reg qn  
);
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            q <= 0;
            qn <= 1;
        end else begin
            case ({j, k})
                2'b00: begin
                    q <= q;
                    qn <= qn;
                end
                2'b01: begin
                    q <= 0;
                    qn <= 1;
                end
                2'b10: begin
                    q <= 1;
                    qn <= 0;
                end
                2'b11: begin
                    q <= ~q;
                    qn <= ~qn;
                end
            endcase
        end
    end
endmodule
