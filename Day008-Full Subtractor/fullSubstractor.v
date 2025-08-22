`timescale 1ns / 1ps

module fullSubtractor(
    input [1:0] A, [1:0] B, 
    output [1:0] sub,
    output Bout
    );
    wire b0;

    assign sub[0] = A[0] ^ B[0];
    assign b0 = (~A[0]) & B[0];
    assign sub[1] = A[1] ^ B[1] ^ b0;
    assign Bout = (~A[1] & B[1]) | ((~(A[1] ^ B[1])) & b0);
endmodule
