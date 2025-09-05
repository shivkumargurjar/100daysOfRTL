`timescale 1ns / 1ps


module Demux_basicLogicGates_tb(

    );
    reg a,b;
    wire and_gate,or_gate,not_gate;
    Demux_andGate uut(
        .a(a),
        .b(b),
        .and_gate(and_gate),
        .or_gate(or_gate),
        .not_gate(not_gate)
    );
    
     initial begin
        a = 1'b0; b = 1'b0; #10;
        a = 1'b0; b = 1'b1; #10;
        a = 1'b1; b = 1'b0; #10;
        a = 1'b1; b = 1'b1; #10;
        $finish;
    end
    initial begin
        $display("Time a | b | NOT AND OR ");
        $monitor("%4dns %b|%b|%b|%b|%b ",$time, a, b,not_gate ,and_gate, or_gate);
    end
endmodule
