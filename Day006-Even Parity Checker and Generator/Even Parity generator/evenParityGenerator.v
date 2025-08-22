`timescale 1ns / 1ps

module evenParityGenerator(
    input [7:0] data,
    output parity
    );
    assign parity=^data;
endmodule
