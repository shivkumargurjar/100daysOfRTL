`timescale 1ns / 1ps

module basicLogic_mux(
    input a,b,
    output and_gate,or_gate
    );
    assign and_gate=b?a:1'b0;
    assign or_gate=b?1'b1:a;
endmodule
