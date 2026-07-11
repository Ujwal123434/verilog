`timescale 1ns / 1ps
module tb_D_ff;
reg clk,rst,D;
wire q,qb;

D_FF uut(.clk(clk),.rst(rst),.D(D),.q(q),.qb(qb));

always #5 clk = ~clk;


initial begin
 clk = 0;
 rst = 0;
 D = 0;
 #20;
 rst = 1;
 #50;
 #10  D = 0; 
 #10  D = 1;
 #10  D = 0;
 #10  D = 0;
 #10  D = 1;
 #10  D = 0;
 #10  D = 1; 
end
endmodule