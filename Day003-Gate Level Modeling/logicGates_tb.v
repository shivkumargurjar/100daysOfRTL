`timescale 1ns / 1ps
module logicGates_tb;

    // Inputs
    reg a, b;

    // Outputs
    wire and_gate;
    wire or_gate;
    wire not_gate;
    wire nand_gate;
    wire nor_gate;
    wire xor_gate;
    wire xnor_gate;

    // Instantiate the Unit Under Test (UUT)
    logicgates dut (
        .a(a),
        .b(b),
        .and_gate(and_gate),
        .or_gate(or_gate),
        .not_gate(not_gate),
        .nand_gate(nand_gate),
        .nor_gate(nor_gate),
        .xor_gate(xor_gate),
        .xnor_gate(xnor_gate)
    );

    // Test Sequence
    initial begin
        $display("Time\t a b | AND OR NOT NAND NOR XOR XNOR");
        $monitor("%0t\t %b %b |  %b   %b   %b    %b    %b   %b    %b", 
                 $time, a, b, and_gate, or_gate, not_gate, nand_gate, nor_gate, xor_gate, xnor_gate);

        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;
        $finish;
    end

endmodule