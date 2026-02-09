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
 a = 4'd2; s = 2'd0;
 #100 a = 4'd15; s = 2'd1;
 #100 a = 4'd8; s = 2'd2;
 #100 a = 4'd15; s = 2'd3; 
 end

endmodule