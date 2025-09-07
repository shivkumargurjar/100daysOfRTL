`timescale 1ns / 1ps


module Demux_specialLogicGates_tb(

    );
    reg a,b;
    wire xor_gate,xnor_gate;
    Demux_specialLogicGates uut(
        .a(a),
        .b(b),
        .xor_gate(xor_gate),
        .xnor_gate(xnor_gate)
    );
    
     initial begin
        a = 1'b0; b = 1'b0; #10;
        a = 1'b0; b = 1'b1; #10;
        a = 1'b1; b = 1'b0; #10;
        a = 1'b1; b = 1'b1; #10;
        $finish;
    end
    initial begin
        $display("Time a | b | XOR XNOR ");
        $monitor("%4dns %b|%b|%b|%b| ",$time, a, b,xor_gate, xnor_gate);
    end
endmodule
