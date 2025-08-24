`timescale 1ns / 1ps

module fourBitmultiplier(
    input [3:0] a,b,
    output reg [7:0] y
    );
    reg [7:0] t1,t2,t3,t4;
    always@(a,b) begin
        t1=0; t2=0; t3=0; t4=0;
        if(b[0])begin
            t1= a<<0;
        end
        if(b[1])begin
            t2= a<<1;
        end
        if(b[2])begin
            t3= a<<2;
        end
        if(b[3])begin
            t4= a<<3;
        end
        
        y=t1+t2+t3+t4;
    end
    
endmodule
