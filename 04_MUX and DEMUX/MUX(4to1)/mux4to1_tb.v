`timescale 1ns / 1ps
module mux4to1_tb;
reg [3:0] a;
reg [1:0] s;
wire y;
mux4to1 uut(
  .a(a),
  .s(s),
  .y(y)
);
initial begin
a = 8'b1010;
  s = 2'b00;
 #100 s = 2'b01;
 #100 s = 2'b10;
 #100 s = 2'b11; 
 end

endmodule