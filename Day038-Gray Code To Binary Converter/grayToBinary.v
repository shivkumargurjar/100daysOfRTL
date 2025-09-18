`timescale 1ns / 1ps
module grayToBinary(
    input [3:0] b,
    output[3:0] y
    );
    
    
    
    assign y[3]=b[3];
    assign y[2]=y[3]^b[2];
    assign y[1]=y[2]^b[1];
    assign y[0]= y[1]^b[0];
    
endmodule
