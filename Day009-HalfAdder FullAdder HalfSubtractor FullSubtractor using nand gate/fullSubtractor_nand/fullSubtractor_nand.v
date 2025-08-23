`timescale 1ns / 1ps

module fullSubtractor_nand(
  input a, b, bin,
  output sub, bout
    );
    wire [6:0]w;
    nand n0(w[0], a, b);
    nand n1(w[1], a, w[0]);
    nand n2(w[2], b, w[0]);
    nand n3(w[3], w[1], w[2]);
    nand n4(w[4], w[3], bin);
    nand n5(w[5], w[3], w[4]);
    nand n6(w[6], w[4], bin);
    nand n7(sub, w[5], w[6]);
    nand n8(bout, w[2], w[6]);

endmodule