`timescale 1ns / 1ps
module d_latch_tb;
reg d,en;
wire q,qb;
d_latch uut(d,en,q,qb);
initial begin 
 d=0; en=0;
#100 d=1;
#100 d=0; en = 1;
#100 d=1; 
end
endmodule
