`timescale 1ns / 1ps

module NbitComparator(a,b,lesser,equal,greater);
    parameter N=8;
    input [N-1:0] a,b;
    output lesser,equal,greater;
    
    reg lesser=0,equal=0,greater=0;
    
    always@(a,b) begin
        if(a<b) begin
            lesser=1'b1;
            equal=1'b0;
            greater=1'b0;
        end 
        else if(a>b) begin
            lesser=1'b0;
            equal=1'b0;
            greater=1'b1;
        end
        else begin
            lesser=1'b0;
            equal=1'b1;
            greater=1'b0;
        end     
    end
endmodule
