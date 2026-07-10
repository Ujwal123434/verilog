`timescale 1ns / 1ps
module basic_gates(a,b,y_not,y_and,y_or,y_nand,y_nor,y_xor,y_xnor);
input a,b;
output y_not,y_and,y_or,y_nand,y_nor,y_xor,y_xnor;
not(y_not,a);
and(y_and,a,b);
or(y_or,a,b);
nand(y_nand,a,b);
nor(y_nor,a,b);
xor(y_xor,a,b);
xnor(y_xnor,a,b);
endmodule