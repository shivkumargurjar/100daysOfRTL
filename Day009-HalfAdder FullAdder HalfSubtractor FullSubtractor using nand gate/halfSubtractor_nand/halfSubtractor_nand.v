`timescale 1ns / 1ps

module halfSubtractor_nand(
input a, b,
  output sub, cout
    );
    wire [2:0]w;
    nand n0(w[0], a, b);
    nand n1(w[1], a, w[0]);
    nand n2(w[2], b, w[0]);
    nand n3(sub, w[1], w[2]);
    nand n4(cout, w[2], w[2]);
endmodule