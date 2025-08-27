`timescale 1ns / 1ps

module mux(
    input a,b,sel,
    output y
    );
    assign y=sel?b:a;
endmodule
module univarsalLogic_mux(
    input a,b,
    output nand_gate,nor_gate
    );
    wire w1,w2;
    
    mux m1(1'b0,a,b,w1);
    mux m2(1'b1,1'b0,w1,nand_gate);
    
    mux m3(a,1'b1,b,w2);
    mux m4(1'b1,1'b0,w2,nor_gate);
endmodule
