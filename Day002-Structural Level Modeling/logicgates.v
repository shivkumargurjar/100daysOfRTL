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
    assign and_gate =a&b;
    assign or_gate =a|b;
    assign not_gate =~a;
    assign nor_gate =~(a|b);
    assign nand_gate =~(a&b);
    assign xor_gate =a^b;
    assign xnor_gate =~(a^b);
endmodule
