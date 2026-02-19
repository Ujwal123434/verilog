`timescale 1ns / 1ps
module en_4to2_tb;
reg [3:0] d;
wire [1:0] y;
en_4to2 uut(d,y);
initial begin 
 d = 4'b0001;
 #100 d = 4'b0010;
 #100 d = 4'b0100;
 #100 d = 4'b0100;
 #100 d = 4'b1000;
end
endmodule
