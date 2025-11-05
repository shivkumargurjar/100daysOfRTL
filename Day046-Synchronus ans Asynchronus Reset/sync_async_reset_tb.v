`timescale 1ns / 1ps

module sync_async_reset_tb(
    );
    reg clk,rst,in;
    wire sync,async;
    sync_async_reset uut(
        .clk(clk),
        .rst(rst),
        .in(in),
        .sync(sync),
        .async(async)
    );
    initial begin
        clk= 0; rst= 0; in= 1;
    end

    initial forever #30 clk<= ~clk;

    initial forever #50 rst<= ~rst;

    initial forever #100 in<= ~in;

    initial #6000 $stop;

endmodule
