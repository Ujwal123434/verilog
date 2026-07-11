`timescale 1ns / 1ps

module T_FF(
input clk,rst,T,
output reg q,
output qb 
    );
    
 assign qb = ~q;
 
 always@(posedge clk) begin 
    if(!rst)
     q <= 0;
    else if(T)
     q <= ~q;
    else
     q <= q;
  end
endmodule