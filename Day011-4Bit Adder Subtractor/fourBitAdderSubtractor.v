`timescale 1ns / 1ps

module fullAdder(
    input A,
    input B,
    input Cin,
    output Sdout,
    output Cbout
);
    assign Sdout = A ^ B ^ Cin;
    assign Cbout = (A & B) | (A & Cin) | (B & Cin);
endmodule

module fourBitAdderSubtractor(
    input [3:0] A,
    input [3:0] B,
    input en,
    output [3:0] Sdout,
    output Cbout
);
    wire [2:0] c;

    fullAdder fa1(A[0], B[0]^en, en,  Sdout[0], c[0]);
    fullAdder fa2(A[1], B[1]^en, c[0], Sdout[1], c[1]);
    fullAdder fa3(A[2], B[2]^en, c[1], Sdout[2], c[2]);
    fullAdder fa4(A[3], B[3]^en, c[2], Sdout[3], Cbout);
endmodule
