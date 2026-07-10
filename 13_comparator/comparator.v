`timescale 1ns / 1ps
module comparator(a,b,L,E,G);
input [1:0] a,b;
output reg L,E,G;
always@(*) begin
if(a<b)
L = 1'b1;
else
L = 1'b0;
if(a>b)
G = 1'b1;
else
G = 1'b0;
if(a==b)
E = 1'b1;
else
E = 1'b0;
end
endmodule
