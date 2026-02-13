`timescale 1ns / 1ps
module mux8to1(
    input [7:0] d,
    input [2:0] s,
    output y
    );
    wire y0,y1;
    
    mux4to1 m0 (
      .a(d[3:0]),
      .s(s[1:0]),
      .y(y0) 
    );
    
    mux4to1 m1 (
      .a(d[3:0]),
      .s(s[1:0]),
      .y(y1) 
    );
    
    assign y = s[2] ? y1:y0;
endmodule