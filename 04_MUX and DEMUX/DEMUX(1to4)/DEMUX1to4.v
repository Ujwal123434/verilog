`timescale 1ns / 1ps
module DEMUX1to4(a,s,y);
input a;
input [1:0] s;
output reg [3:0] y;
always@(*) begin 
y = 4'b0000;
case(s)
2'b00: y[0] = a;
2'b01: y[1] = a;
2'b10: y[2] = a;
2'b11: y[3] = a;
endcase
end
endmodule