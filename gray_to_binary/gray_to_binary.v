`timescale 1ns / 1ps
module gray_to_binary(g,b);
input [3:0] g;
output reg [3:0] b;
always@(*) begin 
b[3] = g[3];
b[2] = b[3]^g[2];
b[1] = b[2]^g[1];
b[0] = b[1]^g[0];
end
endmodule