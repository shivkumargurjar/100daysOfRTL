`timescale 1ns / 1ps

module halfAdder(
    input a,b,
    output sum,cout
    );
    assign sum=a^b;
    assign cout =a&b;
  
endmodule 

module vedicMult2x2(
    input [1:0] a,b,
    output [3:0] y
    );
    wire w1,w2,w3,w4,w5,w6;
    
    and m1(w1,a[0],b[0]);
    and m2(w2,a[1],b[0]);
    and m3(w3,a[0],b[1]);
    and m4(w4,a[1],b[1]);
    
    assign y[0]=w1;
    
    halfAdder h1(w2,w3,y[1],w5);
    halfAdder h2(w5,w4,y[2],w6);
    
    assign y[3]=w6;
endmodule
