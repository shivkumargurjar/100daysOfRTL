`timescale 1ns / 1ps

module fourbitParallelAdder_tb(

    );
    reg [3:0] A;
    reg [3:0] B;
    reg Cin;
    wire [3:0]Sum;
    wire Cout;
    fourBitParallelAdder uut(
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );
    reg clk;
    initial clk=0;
    always begin
        clk=~clk; #10;
    end
    integer i;
    initial i=0;
    initial Cin=0;
    always@(posedge clk) begin 
        A=$random%16;
        B=$random%16;
        i=i+1;
        if(i==5)
        begin
            #20 $finish;
        end
    end
    initial begin
        $display("Time | A | B |Cin| Sum |Cout");
        $monitor("%0t %b %b %b %b %b",$time,A,B,Cin,Sum,Cout);
    end
endmodule
