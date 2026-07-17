`timescale 1ns / 1ps
module tb_counter;

parameter WIDTH = 4;

reg clk;
reg rst_n;
reg en_n;

wire [WIDTH-1:0] count;
wire overflow;

counter #(
    .WIDTH(WIDTH)
) dut (
    .clk(clk),
    .rst_n(rst_n),
    .en_n(en_n),
    .count(count),
    .overflow(overflow)
);

always #5 clk = ~clk;

initial begin
    clk = 0;
    rst_n = 0;
    en_n = 1;

    #20;
    rst_n = 1;

    #20;
    en_n = 1;

    #20;
    en_n = 0;

    #170;
    
    en_n = 1;

    #40;
    en_n = 0;

    #40;
    rst_n = 0;

    #20;
    rst_n = 1;

    en_n = 0;

    #60;

    $finish;
end


endmodule