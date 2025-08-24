`timescale 1ns / 1ps

module fullAdder(
    input a,b,
    input cin,
    output reg sout,
    output reg cout
    );
    always@(*) begin
        sout=a^b^cin;
        cout=a&b | a&cin | b&cin;
    end
endmodule

module parallelAdder(
    input [3:0]A,
    input [3:0] B,
    input cin,
    output [3:0] Sum,
    output cout
    );
    wire [2:0] c;
    fullAdder fa1(A[0],B[0],cin,Sum[0],c[0]);
    fullAdder fa2(A[1],B[1],c[0],Sum[1],c[1]);
    fullAdder fa3(A[2],B[2],c[1],Sum[2],c[2]);
    fullAdder fa4(A[3],B[3],c[2],Sum[3],cout);
endmodule

module carrySkipAdder(
    input [3:0] a,b,
    input cin,
    output[3:0] sum,
    output cout
    );
    wire [3:0] p;
    wire sel,c;
    xor (p[0],a[0],b[0]);
    xor (p[1],a[1],b[1]);
    xor (p[2],a[2],b[2]);
    xor (p[3],a[3],b[3]);
    
    parallelAdder pa(a,b,cin,sum,c);
    
    and (sel, p[0],p[1], p[2], p[3]);

    assign cout = sel ? cin : c;    
    
endmodule
