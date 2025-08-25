`timescale 1ns / 1ps

module fourBitdivider(
    input [3:0] diviser,dividend,
    output reg [3:0] quotient,remainder
    );
    
    always@(diviser,dividend) begin
        remainder=dividend;
        quotient=0;
        while(remainder>=diviser)
        begin
            remainder=remainder-diviser;
            quotient=quotient+1;
        end
    end
    
endmodule
