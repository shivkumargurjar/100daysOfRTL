`timescale 1ns / 1ps

module bcdTo7seg(
    input [3:0] i, 
    output [6:0] y
    );
    
    wire a,b,c,d,e,f,g;
    
    assign a = i[3] | i[1] | (i[2] ~^ i[0]);
    
    assign b = (~i[2]) | (i[1] ~^ i[0]);
    
    assign c = i[2] | (~i[1]) | (i[0]);
    
    assign d = i[3] | ((~i[2]) & (~i[0])) | ((~i[2]) & i[1]) | (i[1] & (~i[0])) | (i[2] & (~i[1]) & i[0]);
    
    assign e = ~i[0] & (~i[2] | i[1]);
    
    assign f = i[3] | (i[2] & (~i[1] | ~i[0])) | ((~i[1]) & (~i[0]));
    
    assign g = i[3] | (i[2] & (~i[1])) | (i[1] & (~i[2] | ~i[0]));
    
    assign y = {a,b,c,d,e,f,g};

endmodule
