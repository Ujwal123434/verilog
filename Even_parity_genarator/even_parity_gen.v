 `timescale 1ns / 1ps
 module even_parity_gen(in,p);
 input [3:0]in;
 output p;
 assign p=in[3]^in[2]^in[1]^in[0];
 endmodule