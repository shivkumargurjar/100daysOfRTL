`timescale 1ns / 1ps

module fullAdder(a,b,cin,sum,cout);
    input a, b, cin;
    output sum, cout;
    assign sum=a^b^cin;
    assign cout = (a & b) | (b & cin) | (a & cin);

endmodule


module fourBitParallelAdder(
    input [3:0]A,[3:0]B,
    input Cin,
    output [3:0] Sum,
    output Cout
    );
    wire [2:0] c;
    fullAdder fa1(A[0],B[0],Cin,Sum[0],c[0]);
    fullAdder fa2(A[1],B[1],c[0],Sum[1],c[1]);
    fullAdder fa3(A[2],B[2],c[1],Sum[2],c[2]);
    fullAdder fa4(A[3],B[3],c[2],Sum[3],Cout);
endmodule
