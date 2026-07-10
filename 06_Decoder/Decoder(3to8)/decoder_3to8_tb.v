`timescale 1ns / 1ps
module dec3to8_tb;
reg [2:0] d;
wire [7:0] y;
dec3to8 uut(d,y);
initial begin 
d=3'b000;
#100 d=3'b001;
#100 d=3'b010;
#100 d=3'b011;
#100 d=3'b100;
#100 d=3'b101;
#100 d=3'b110;
#100 d=3'b111;
end
endmodule
