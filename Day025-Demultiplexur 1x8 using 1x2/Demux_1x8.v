`timescale 1ns / 1ps
module Demux_1x2(
    input i,sel,
    output y0,y1
    );
    assign {y0,y1} = sel ? {1'b0,i}:{i,1'b0};
endmodule

module Demux_1x8(
    input i,[2:0]sel,
    output [7:0] y
    );
    wire w1,w2,w3,w4,w5,w6;
    Demux_1x2 d1(i,sel[2],w1,w2);
    
    Demux_1x2 d2(w1,sel[1],w3,w4);
    Demux_1x2 d3(w2,sel[1],w5,w6);
    
    Demux_1x2 d4(w3,sel[0],y[0],y[1]);
    Demux_1x2 d5(w4,sel[0],y[2],y[3]);
    Demux_1x2 d6(w5,sel[0],y[4],y[5]);
    Demux_1x2 d7(w6,sel[0],y[6],y[7]);
endmodule
