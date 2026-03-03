`timescale 1ns / 1ps
module d_latch(d,en,q,qb);
input d,en;
output reg q;
output qb;
assign qb = ~q;
always@(*) begin
 if(en == 0)
    q = q;
 else
    q = d;
    end
endmodule