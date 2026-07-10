`timescale 1ns / 1ps
module gray_to_binary_tb;
reg [3:0] g;
wire [3:0] b;
integer i;
gray_to_binary uut(g,b);
initial begin 
for(i = 0; i < 16; i = i+1) begin
g = i;
#100;
end
end
endmodule