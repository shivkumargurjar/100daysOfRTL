`timescale 1ns / 1ps

module sync_async_reset(
    input clk,rst,in,
    output reg sync,async
    );
    always@(posedge clk) begin
        if(rst) begin
            sync<=1'b0;
        end
        else sync<=in;
    end
    
    always@(posedge clk,posedge rst) begin
        if(rst) begin
            async<=1'b0;
        end
        else async<=in;
    end
endmodule
