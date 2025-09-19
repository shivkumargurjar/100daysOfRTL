`timescale 1ns / 1ps

module binaryTo2_sComplement(
    input [3:0] i,
    output wire [4:0] y
    );
    wire [3:0] temp;
    assign temp=4'b1111-i;
    assign y= temp+4'b0001;
endmodule
