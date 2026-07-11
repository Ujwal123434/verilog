`timescale 1ns / 1ps
module counter_mod16(
input clk,rst,
output reg [3:0] count);

always@(posedge clk) begin 
 if(!rst)
   count <= 4'b0000;
 else if(count < 4'd15)
    count <= count+1;
  else 
    count <= count;
end
endmodule