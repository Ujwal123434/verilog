`timescale 1ns / 1ps
module half_sub_tb;
reg a,b;
wire barrow,diff;

half_sub uut(
 .a(a),
 .b(b),
 .barrow(barrow),
 .diff(diff)
);
initial begin
 a = 0; b = 0;
 #10 a = 0; b = 1;
 #10 a = 1; b = 0;
 #10 a = 1; b = 1;
 end
 endmodule
   