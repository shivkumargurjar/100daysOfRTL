`timescale 1ns / 1ps
module mux(
    input a,b,sel,
    output y
    );
    assign y=sel?b:a;
endmodule
module speciallogic_mux(
    input a,b,
    output xor_gate,xnor_gate
    );
    wire w1;
    
    mux Abar(1'b1,1'b0,a,w1);
    mux m1(a,w1,b,xor_gate);
    
    mux m2(1'b1,1'b0,xor_gate,xnor_gate);
    
endmodule
