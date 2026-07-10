`timescale 1ns / 1ps
module full_sub(
   input a,
   input b,
   input c,
   output reg diff, 
   output reg barrow
    );
    
    always@(*) begin 
     diff = a^b^c;
     barrow = (~a & b) | (c & (~a ^ b));
    end
endmodule
