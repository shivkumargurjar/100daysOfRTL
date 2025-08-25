
`timescale 1ns / 1ps
module fourbitDivider_tb(

    );
    reg [3:0] dividend; 
    reg [3:0] diviser;
    wire [3:0] quotient;
    wire [3:0] remainder;
    
    fourBitdivider uut(
        .diviser(diviser),
        .dividend(dividend),
        .quotient(quotient),
        .remainder(remainder)
    );
    initial begin 
        dividend=4'b1000; diviser=4'b0010; #10;
        dividend=4'b1001; diviser=4'b0011; #10;
        dividend=4'b1010; diviser=4'b0110; #10;
        dividend=4'b1100; diviser=4'b0110; #10;
        dividend=4'b1101; diviser=4'b0111; #10;
        $finish;
    end
    initial begin 
        $display("Time |dividend|diviser|quotient|remainder");
        $monitor("%4dns |  %b | %b | %b | %b ", $time,dividend,diviser,quotient,remainder);
    end
endmodule