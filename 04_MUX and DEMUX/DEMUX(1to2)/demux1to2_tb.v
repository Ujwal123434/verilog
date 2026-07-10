`timescale 1ns / 1ps
module demux1to2_tb;
reg a,s,en;
wire y0,y1;
    
 demux1to2 uut(
    .a(a),
    .s(s),
    .en(en),
    .y0(y0),
    .y1(y1)
 );
 initial begin 
 en = 0; s = 0; a = 1;
 #100  en = 0; s = 1; a = 1;
 #100  en = 1; s = 0; a = 0;
 #100  en = 1; s = 1; a = 1;
 end
endmodule