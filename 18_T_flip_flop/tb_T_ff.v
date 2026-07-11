`timescale 1ns / 1ps
module tb_T_ff;
reg clk,rst,T;
wire q,qb;

T_FF uut(.clk(clk),.rst(rst),.T(T),.q(q),.qb(qb));

always #5 clk = ~clk;

initial begin
clk = 0;
rst = 0;
T = 0;
#40;
rst = 1;
#40;
#10 T = 1;
#10 T = 0;
#10 T = 0;
#10 T = 1;
#10 T = 1;

end

endmodule