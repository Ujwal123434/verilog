`timescale 1ns / 1ps
module mux8to1_tb;
reg [7:0] a;
reg [2:0] s;
wire y;
mux8to1 uut(
   .a(a),
   .s(s),
   .y(y)
);
initial begin 
  a = 8'b10101010;
   s = 3'b000;
  #100 s = 3'b001;
  #100 s = 3'b010;
  #100 s = 3'b011;
  #100 s = 3'b100;
  #100 s = 3'b101;
  #100 s = 3'b110;
  #100 s = 3'b111;
end
endmodule