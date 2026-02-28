`timescale 1ns / 1ps
module sr_latch_tb;
reg s,r,en;
wire q,q_bar;
sr_latch uut(s,r,en,q,q_bar);
initial begin 
en = 0; s = 0; r = 0;
en = 1;
#100 s = 0; r = 0; 
#100 s = 0; r = 1; 
#100 s = 1; r = 0; 
#100 s = 1; r = 1; 
#100 en = 0; s = 1; r = 0;
end
endmodule