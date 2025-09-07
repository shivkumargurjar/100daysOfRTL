`timescale 1ns / 1ps
module Demux_1x2(
    input i,
    input sel,
    output y0,
    output y1
    );
    assign {y0,y1} = sel ? {1'b0,i} : {i,1'b0};
endmodule

module Demux_specialLogicGates(
    input a,
    input b,
    output xor_gate,
    output xnor_gate
    );
    wire w1, w2, w3, w4;

    // d1 splits b using a → gives (~a & b), (a & b)
    Demux_1x2 d1(b, a, w1, w2);

    // d2 splits a using b → gives (a & ~b), (a & b)
    Demux_1x2 d2(a, b, w3, w4);

    // XOR = (~a & b) | (a & ~b)
    assign xor_gate  = w1 | w3;

    // XNOR = (a & b) | (~a & ~b)
    assign xnor_gate = (~a & ~b) | w2 | w4;

endmodule
