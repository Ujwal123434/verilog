`timescale 1ns / 1ps
module demux1to2(
  input a,
  input s,
  input en,
  output reg y0,
  output reg y1
    );
    always@(*) begin
    y0 = 0;
    y1 = 0;
   if(en) begin
     case(s)
       1'b0: y0 = a;
       1'b1: y1 = a;
       endcase
    end
    end
endmodule
