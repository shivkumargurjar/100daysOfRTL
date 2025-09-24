`timescale 1ns / 1ps

module bcd2excess_3(
    input [3:0] i,
    output wire [3:0] y
    );
    assign y =i+3;
endmodule
