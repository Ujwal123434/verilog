`timescale 1ns / 1ps
module full_sub_tb;
 reg a,b,c;
 wire diff, barrow;

full_sub uut(
  .a(a),
  .b(b),
  .c(c),
  .diff(diff),
  .barrow(barrow)
);
 initial begin
   a = 0; b = 0; c = 0;
   #100 a = 0; b = 0; c = 1;
   #100 a = 0; b = 1; c = 0;
   #100 a = 0; b = 1; c = 1;
   #100 a = 1; b = 0; c = 0;
   #100 a = 1; b = 0; c = 1;
   #100 a = 1; b = 1; c = 0;
   #100 a = 1; b = 1; c = 1;
 end
 endmodule