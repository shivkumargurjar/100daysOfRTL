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

module mux(
    input i0,i1,s,
    output y
    );
    assign y=(~s)&i0 | s&i1;
endmodule

module carrySellectAdder(
    input[3:0] a,b,
    input cin,
    output [3:0] sum,
    output cout
    );
    wire [3:0] c1,c2;
    wire [3:0] sum1;
    wire [3:0] sum2;
    fullAdder fa1(a[0],b[0],1'b0,sum1[0],c1[0]);
    fullAdder fa2(a[1],b[1],c1[0],sum1[1],c1[1]);
    fullAdder fa3(a[2],b[2],c1[1],sum1[2],c1[2]);
    fullAdder fa4(a[3],b[3],c1[2],sum1[3],c1[3]);
    
    fullAdder fa5(a[0],b[0],1'b1,sum2[0],c2[0]);
    fullAdder fa6(a[1],b[1],c2[0],sum2[1],c2[1]);
    fullAdder fa7(a[2],b[2],c2[1],sum2[2],c2[2]);
    fullAdder fa8(a[3],b[3],c2[2],sum2[3],c2[3]);
    
    mux m1(sum1[0],sum2[0],cin,sum[0]);
    mux m2(sum1[1],sum2[1],cin,sum[1]);
    mux m3(sum1[2],sum2[2],cin,sum[2]);
    mux m4(sum1[3],sum2[3],cin,sum[3]);
    mux m5(c1[3],c2[3],cin,cout);
    
endmodule
