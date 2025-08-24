
`timescale 1ns / 1ps
module fourbitMultiplier_tb(

    );
    reg [3:0] a; 
    reg [3:0] b;
    wire [7:0] y;
    
    fourBitmultiplier uut(
        .a(a),
        .b(b),
        .y(y)
    );
    reg clk;
    initial begin
       clk=0;
    end
    always begin
       clk=~clk; #10;
    end

    integer i;
    initial i=0;
    always@(posedge clk) begin
        a= $random % 16;
        b = $random % 16;
        i=i+1;
        if(i==10) $finish;
    end    
  
    initial begin 
        $display("Time | a  |  b  |      y  ");
        $monitor("%4dns |  %b | %b | %b ", $time, a, b,y);
    end
endmodule