
`timescale 1ns / 1ps
module fourbitMultiplier_tb(

    );
    parameter N=8;
    reg [N-1:0] a; 
    reg [N-1:0] b;
    wire lesser,equal,greater;
    NbitComparator uut(
        .a(a),
        .b(b),
        .lesser(lesser),
        .equal(equal),
        .greater(greater)
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
        a= $random % 256;
        b = $random % 256;
        i=i+1;
        if(i==10) $finish;
    end    
  
    initial begin 
        $display("Time |    a    |    b   |lesser|equal|greater  ");
        $monitor("%4dns |  %b | %b | %b | %b  | %b", $time, a, b,lesser,equal,greater);
    end
endmodule