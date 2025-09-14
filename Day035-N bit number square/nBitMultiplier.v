`timescale 1ns / 1ps

module nBitMultiplier(i,result);
    parameter n=4;
    input [n-1:0] i;
    output reg [2*n-1:0] result;
    reg [2*n-1:0] temp;
    always@(*) begin
        temp=i*i;
        result=temp;
    end
   
endmodule
