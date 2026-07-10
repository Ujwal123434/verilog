`timescale 1ns / 1ps
module half_sub(
input a,
input b,
output reg barrow,
output reg diff
    );
    always@(*) begin 
     diff = a^b;
     barrow = (~a)&b;
    end
endmodule