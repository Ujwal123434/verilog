`timescale 1ns / 1ps
module comparator_tb;
reg [1:0]a,b;
wire L,E,G;
comparator uut(a,b,L,E,G);
initial begin 
a=2'b00; b=2'b00;
#100 a=2'b00; b=2'b01;
#100 a=2'b00; b=2'b10;
#100 a=2'b00; b=2'b11;
#100 a=2'b01; b=2'b00;
#100 a=2'b01; b=2'b01;
#100 a=2'b01; b=2'b10;
#100 a=2'b01; b=2'b11;
#100 a=2'b10; b=2'b00;
#100 a=2'b10; b=2'b01;
#100 a=2'b10; b=2'b10;
#100 a=2'b10; b=2'b11;
#100 a=2'b11; b=2'b00;
#100 a=2'b11; b=2'b01;
#100 a=2'b11; b=2'b10;
#100 a=2'b11; b=2'b11;
end
endmodule