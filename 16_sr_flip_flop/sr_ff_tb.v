`timescale 1ns / 1ps
module sr_ff_tb;
    reg clk;
    reg rst_n;
    reg s_n;
    reg r_n;
    wire q;
    wire q_n;

    // Instantiate the Unit Under Test (UUT)
    sr_ff_active_low uut (
        .clk(clk), 
        .rst_n(rst_n), 
        .s_n(s_n), 
        .r_n(r_n), 
        .q(q), 
        .q_n(q_n)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        rst_n = 0;
        s_n = 1;   
        r_n = 1;  
        #20;
        rst_n = 1; 
        #10;
        s_n = 0; r_n = 1;
        #10;
        s_n = 1; r_n = 1;
        #10;
        s_n = 1; r_n = 0;
        #10;
        s_n = 1; r_n = 1;
        #10;
        s_n = 0; r_n = 0;
        #10;
        s_n = 0; r_n = 1; 
        #5;
        rst_n = 0;        
        #10;
        rst_n = 1;

           end

endmodule