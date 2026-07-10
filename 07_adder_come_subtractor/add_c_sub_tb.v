`timescale 1ns / 1ps
module add_c_sub_tb;
reg [3:0] a,b;
reg k;
wire [3:0] S;
wire cout;
add_c_sub uut(a,b,k,S,cout);
initial begin
k=0; a=4'd4; b=4'd5; 
#100 a=4'd5; b=4'd6;
#100 a=4'd6; b=4'd7;
#100 a=4'd8; b=4'd3;
#100 k=1; a=4'd0; b=4'd0; 
#100 a=4'd6; b=4'd5;
#100 a=4'd14; b=4'd12;
#100 a=4'd15; b=4'd12;
end
endmodule