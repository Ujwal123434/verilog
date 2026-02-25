`timescale 1ns / 1ps
module add_c_sub(a,b,k,S,cout);
input [3:0] a,b;
input k;
output reg [3:0] S;
output reg cout;
always@(*) begin 
if(k == 0)
{cout,S} = a + b;
else
{cout,S} = a - b;
end
endmodule