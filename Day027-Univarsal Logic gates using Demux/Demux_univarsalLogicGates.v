`timescale 1ns / 1ps
module Demux_1x2(
    input i,sel,
    output y0,y1
    );
    assign {y0,y1} = sel ? {1'b0,i}:{i,1'b0};
endmodule
module Demux_univarsalLogicGates(
    input a,b,
    output nand_gate,nor_gate
    );
    wire w2,w3,w4,w5,p,q,or_gate,and_gate;
    Demux_1x2 d1(a,b,w2,and_gate); //and gate
    
    Demux_1x2 d2(~a, b, w3, w4);
    Demux_1x2 d3(1'b1,w3, or_gate, w5);//or gate
    
    Demux_1x2 d4(1'b1,and_gate,nand_gate,p); //nand gate
    
    Demux_1x2 d5(1'b1,or_gate,nor_gate,q); //nor gate
endmodule

