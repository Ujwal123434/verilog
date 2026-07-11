`timescale 1ns / 1ps
module tb_counter;
reg clk,rst;
wire [3:0] count;

counter_mod16 uut(.clk(clk),.rst(rst),.count(count));

always #5 clk = ~clk;

initial begin
    clk = 0;
    rst = 0;
    #20;
    rst = 1;
    #200;
    $finish;

end
endmodule