`timescale 1ns / 1ps
module basic_gates_tb;
reg a,b;
wire y_not,y_and,y_or,y_nand,y_nor,y_xor,y_xnor;
basic_gates uut(a,b,y_not,y_and,y_or,y_nand,y_nor,y_xor,y_xnor);
initial begin 
a=0;b=0;
#100 a=0; b=1;
#100 a=1; b=0;
#100 a=1; b=1;
end
endmodule