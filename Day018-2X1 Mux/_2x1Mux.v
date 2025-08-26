`timescale 1ns / 1ps
module _2x1Mux(
    input i0,i1,sel,
    output y
    );
    assign y = sel?i1:i0;
endmodule
