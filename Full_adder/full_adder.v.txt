`timescale 1ns / 1ps
module full_adder(
 input a,
 input b,
 input c,
 output reg sum,
 output  reg carry
    );
    always@(*) begin
     sum = a^b^c;
     carry = (a&b)|(c&(a^b));
    end
endmodule