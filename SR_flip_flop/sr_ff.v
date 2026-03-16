`timescale 1ns / 1ps
module sr_ff (
    input wire clk,      
    input wire rst_n,    
    input wire s_n,      
    input wire r_n,      
    output reg q,        
    output wire q_n  
);
    assign q_n = ~q;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            q <= 1'b0;
        end else begin
            case ({s_n, r_n})
                2'b01: q <= 1'b1;    
                2'b10: q <= 1'b0;  
                2'b11: q <= q;       
                2'b00: q <= 1'bx;    
                default: q <= q;
            endcase
        end
    end
endmodule
