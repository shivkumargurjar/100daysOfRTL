`timescale 1ns / 1ps
module fullAdder_tb(

    );
    reg [1:0] A; 
    reg [1:0] B;
    wire [1:0] sum;
    wire Cout;
    
    fullAdder dut(
        .A(A),
        .B(B),
        .sum(sum),
        .Cout(Cout)
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
        A = $random % 4;
        B = $random % 4;
        i=i+1;
        if(i==10) $finish;
    end    
  
    initial begin 
        $display("Time | A   B |    sum  Cout");
        $monitor("%4dns |  %b  %b | %b   %B", $time, A, B, sum, Cout);
    end
endmodule
