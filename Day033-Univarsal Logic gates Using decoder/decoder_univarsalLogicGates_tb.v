`timescale 1ns / 1ps

module decoder_univarsalLogicGates_tb(

    );
    reg a,b;
    wire nand_gate,nor_gate;
    
    decoder_univarsalLogicGates uut(
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
        $display("Time a | b |NAND NOR ");
        $monitor("%4dns %b  %b  %b  %b ",$time, a, b,nand_gate, nor_gate);
    end
endmodule
