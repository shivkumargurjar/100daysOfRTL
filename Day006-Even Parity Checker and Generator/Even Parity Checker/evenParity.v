`timescale 1ns / 1ps
module evenParity(
    input   [7:0] data,
    input  parity_in,
    output  error
    );
    assign error= ^{data,parity_in};
endmodule
