`timescale 1ns / 1ps

module fullAdder(
    input [1:0] A, [1:0] B, 
    output [1:0] sum,
    output Cout

    );
    wire c0;
    
    assign sum[0] = A[0]^B[0];
    assign c0=A[0]&B[0];
    assign sum[1]= A[1]^B[1]^c0;
    assign Cout=A[1]&B[1] | (A[1]^B[1])&c0;
endmodule
