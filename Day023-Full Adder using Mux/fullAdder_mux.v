`timescale 1ns / 1ps

module mux(
    input wire a,b,sel,
    output wire y
    );
    assign y=sel?b:a;
endmodule
module fullAdder_mux(
    input a,b,cin,
    output sum,cout
    );
    wire w1,w2,w3,w4,w5;
    mux Abar(1'b1,1'b0,a,w1); //~a
    mux Cbar(1'b1,1'b0,cin,w3); //~cin
    
    mux m1(a,w1,b,w2); //a^b
    
    mux m2(cin,w3,w2,sum); //a^b^cin
    
    mux m3(1'b0,a,b,w4); //a&b
    
    mux m4(1'b0,cin,w2,w5); // cin&(a^b)
    
    mux m5(w4,1'b1, w5, cout); // a&b | cin&(a^b)
endmodule
