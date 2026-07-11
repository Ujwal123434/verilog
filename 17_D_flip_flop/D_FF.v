`timescale 1ns / 1ps
module D_FF(
input clk,rst,D, 
output reg q, 
output qb);

assign qb = ~q;
always@(posedge clk) begin
   if(!rst)
     q <= 0;
   else
      q <= D;
end
endmodule