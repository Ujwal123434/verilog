`timescale 1ns / 1ps
module binary_to_grey_tb;
reg [3:0] b;
wire [3:0] g;
integer i;
binary_to_grey uut(b,g);
initial begin 
for(i = 0; i < 16; i = i+1) begin
  b = i;
  #100;
  end
end
endmodule