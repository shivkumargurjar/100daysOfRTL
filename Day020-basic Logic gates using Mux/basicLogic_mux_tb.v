`timescale 1ns / 1ps


module basicLogic_mux_tb(

    );
    reg a,b;
    wire and_gate,or_gate;
    basicLogic_mux uut(
        .a(a),
        .b(b),
        .and_gate(and_gate),
        .or_gate(or_gate)
    );
    
     initial begin
        a = 1'b0; b = 1'b0; #10;
        a = 1'b0; b = 1'b1; #10;
        a = 1'b1; b = 1'b0; #10;
        a = 1'b1; b = 1'b1; #10;
        $finish;
    end
    initial begin
        $display("Time a | b | AND OR ");
        $monitor("%4dns %b|%b|%b|%b ",$time, a, b, and_gate, or_gate);
    end
endmodule
