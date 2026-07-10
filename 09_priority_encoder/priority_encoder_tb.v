`timescale 1ns / 1ps
module priority_encoder_tb;

reg  [7:0] d;
wire [2:0] y;

// Instantiate DUT (change name if testing RTL version)
priority_encoder uut (
    .d(d),
    .y(y)
);

initial begin

    d = 8'b00000000; 
    d = 8'b00000001; #100;
    d = 8'b00000010; #100;
    d = 8'b00000100; #100;
    d = 8'b00001000; #100;
    d = 8'b00010000; #100;
    d = 8'b00100000; #100;
    d = 8'b01000000; #100;
    d = 8'b10000000; #100;
end

endmodule