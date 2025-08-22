`timescale 1ns / 1ps

module logicgates(
    input a,b,
    output  and_gate,
    output  or_gate,
    output  not_gate,
    output  nor_gate,
    output  nand_gate,
    output  xor_gate,
    output  xnor_gate
    );
    and g1(and_gate,a,b);
    or g2(or_gate,a,b);
    not g3(not_gate,a);
    nor g4(nor_gate,a,b);
    nand g5(nand_gate,a,b);
    xor g6(xor_gate,a,b);
    xnor g7(xnor_gate,a,b);
endmodule