`timescale 1ns / 1ps
module counter #(
    parameter WIDTH = 4
)(
    input clk,rst_n, en_n,      
    output reg [WIDTH-1:0]  count,
    output reg overflow
);

always @(posedge clk) begin
    if (!rst_n) begin
        count     <= {WIDTH{1'b0}};
        overflow  <= 1'b0;
    end
    else if (!en_n) begin           
        if (count == {WIDTH{1'b1}}) begin
            count     <= {WIDTH{1'b0}};
            overflow  <= 1'b1;
        end
        else begin
            count     <= count + 1'b1;
            overflow  <= 1'b0;
        end
    end
    else begin                      
        count     <= count;         
        overflow  <= 1'b0;
    end
end

endmodule