`timescale 1ns / 1ps

module mux4X1Using2X1(
    input i0,i1,i2,i3,sel1,sel2,sel3,
    output y
    );
    wire y1,y2;
    assign y1 = sel1?i1:i0;
    assign y2 = sel3?i3:i2;
    assign y = sel3?y2:y1;
endmodule
