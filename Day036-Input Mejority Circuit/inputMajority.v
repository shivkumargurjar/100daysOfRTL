`timescale 1ns / 1ps

module inputMajority(
    input [6:0] i,
    output wire y
    );
    wire [2:0] test;
    
    assign test[0]=(i[0]&i[1]) | (i[0]&i[2]) | (i[1]&i[2]);
    assign test[1]=(i[3]&i[4]) | (i[3]&i[5]) | (i[4]&i[5]);
    assign test[2]= i[6];
    
    assign y= (test[0]&test[1]) | (test[0]&test[2]) | (test[1]&test[2]);
endmodule
