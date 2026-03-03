 `timescale 1ns / 1ps
 module even_parity_generator();
 reg[3:0]in;
 wire p;
 even_parity_gen uut(in,p);
 initial
 begin
 in=4'b1010; #10
 in=4'b1110; #10
 in=4'b0101; #10
 in=4'b1011; #10
 $finish;
 end
 endmodule