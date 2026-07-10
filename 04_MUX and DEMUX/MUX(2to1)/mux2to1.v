`timescale 1ns / 1ps
module mux2to1(
input a,
input b,
input s,
output reg y
    );
    always@(*) begin 
    if(s == 1'b0)
        y = a;
    else
        y = b;
    end
endmodule