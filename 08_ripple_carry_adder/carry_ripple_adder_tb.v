`timescale 1ns/1ps

module tb_ripple_carry_adder;

reg [3:0] A, B;
reg Cin;
wire [3:0] Sum;
wire Cout;

// Instantiate the DUT (Device Under Test)
ripple_carry_adder_4bit uut (A,B,Cin,Sum,Cout);

initial begin
    A = 4'b0000; B = 4'b0000; Cin = 0;
   #100  A = 4'b0011; B = 4'b0101; Cin = 0;
   #100 A = 4'b1100; B = 4'b0001; Cin = 0;
   #100  A = 4'b1010; B = 4'b0001; Cin = 1;
   #100 A = 4'b1110; B = 4'b0001; Cin = 1;
end
endmodule
