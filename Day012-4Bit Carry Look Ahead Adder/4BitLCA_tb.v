`timescale 1ns / 1ps
module fourBitLCA_tb(

    );
    reg [3:0] a; 
    reg [3:0] b;
    reg cin;
    wire [3:0] sum;
    wire cout;
    
    fourBitCLA dut(
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
        );
    reg clk;
    initial begin
       clk=0;
       cin=0;
    end
    always begin
       clk=~clk; #10;
    end

    integer i;
    initial i=0;
    always@(posedge clk) begin
        a = $random % 16;
        b = $random % 16;
        i=i+1;
        if(i==10) $finish;
    end    
  
    initial begin 
        $display("Time | a  |  b | sum | cout");
        $monitor("%4dns |  %b  %b | %b   %B", $time, a, b, sum, cout);
    end
endmodule