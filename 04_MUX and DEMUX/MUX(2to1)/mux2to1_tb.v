`timescale 1ns / 1ps
module mux2to1_tb;
reg a,b,s;
wire y;
integer i; 
mux2to1 uut(
     .a(a),
     .b(b),
     .s(s),
     .y(y)
);
initial begin 
   for(i = 0; i < 8; i = i + 1) begin
        {a, b, s} = i;  
        #100;
    end
end
endmodule
