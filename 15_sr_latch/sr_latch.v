`timescale 1ns / 1ps
module sr_latch(s,r,en,q,q_bar);
input s;
input r;
input en;
output reg q;
output q_bar;
assign q_bar = ~q;
always@(*) begin 
if(en == 1'b0)
  q = q;
  else begin 
  case({s,r})
   2'b00: q = 1'bx;
   2'b01: q = 1'b1;
   2'b10: q = 1'b0;
   2'b11: q = q;
  endcase
end
end
endmodule