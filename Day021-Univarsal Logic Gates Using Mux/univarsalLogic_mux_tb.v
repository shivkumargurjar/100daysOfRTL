`timescale 1ns / 1ps

module univarsalLogic_mux_tb(

    );
    reg a,b;
    wire nand_gate,nor_gate;
    univarsalLogic_mux uut(
        .a(a),
        .b(b),
        .nand_gate(nand_gate),
        .nor_gate(nor_gate)
    );
    initial begin
        a = 1'b0; b = 1'b0; #10;
        a = 1'b0; b = 1'b1; #10;
        a = 1'b1; b = 1'b0; #10;
        a = 1'b1; b = 1'b1; #10;
        $finish;
    end
    initial begin
        $display("Time a | b |NAND|NOR ");
        $monitor("%4dns %b | %b |%b | %b ",$time, a, b, nand_gate, nor_gate);
    end
endmodule
