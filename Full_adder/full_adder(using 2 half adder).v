`timescale 1ns / 1ps
module full_adder_2ha(
input a,
input b,
input c,
output sum,
output cout
    );
    wire s1,c1,c2;
    half_adder HA1(
    .a(a),
    .b(b),
    .sum(s1),
    .carry(c1)
    );
    
      half_adder HA2(
    .a(s1),
    .b(c),
    .sum(sum),
    .carry(c2)
    );
    
    assign cout = c1|c2;
endmodule