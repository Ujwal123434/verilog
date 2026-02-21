`timescale 1ns / 1ps
module dec2to4_tb;
reg [1:0] d;
wire [3:0] y;
dec2to4 uut(d,y);
initial begin 
d=2'b00;
#100 d=2'b01;
#100 d=2'b10;
#100 d=2'b11;
end
endmodule
