`timescale 1ns / 1ps
module Demux_1x2(
    input i,sel,
    output y0,y1
    );
    assign {y0,y1} = sel ? {1'b0,i}:{i,1'b0};
endmodule
module Demux_andGate(
    input a,b,
    output not_gate,and_gate,or_gate
    );
    wire w1,w2,w3,w4,w5;
    Demux_1x2 d1(1'b1,a,not_gate,w1); //not gate
    
    Demux_1x2 d2(a,b,w2,and_gate); //and gate
    
    Demux_1x2 d3(~a, b, w3, w4);
    Demux_1x2 d4(1'b1,w3, or_gate, w5);//or gate
endmodule
