`timescale 1ns / 1ps

module DEMUX1to4_tb;
reg a;
reg [1:0] s;
wire [3:0] y;
DEMUX1to4 uut (a,s,y);
initial begin
s = 2'b00; a = 0;
#100 s = 2'b01; a = 1;
#100 s = 2'b10; a = 0;
#100 s = 2'b11; a = 1;
end
endmodule