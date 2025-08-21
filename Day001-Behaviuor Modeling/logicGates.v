`timescale 1ns / 1ps
module logicGates(
    input a,b,
    output reg and_gate,
    output reg or_gate,
    output reg not_gate,
    output reg nor_gate,
    output reg nand_gate,
    output reg xor_gate,
    output reg xnor_gate
    );
    always@(*)
        begin
            and_gate=a&b;
            or_gate=a|b;
            not_gate=~a;
            nor_gate=~(a|b);
            nand_gate=~(a&b);
            xor_gate=a^b;
            xnor_gate=~(a^b);
        end
endmodule
