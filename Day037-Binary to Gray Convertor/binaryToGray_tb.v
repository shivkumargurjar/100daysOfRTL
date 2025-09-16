`timescale 1ns / 1ps

module binaryToGray_tb(

    );
    reg [3:0] a;
    wire [3:0] y;
    
    binaryToGray uut(
    .a(a),
    .y(y)
    );
    
    reg clk;
    integer i;
    initial i=0;
    initial clk=0;
    always begin
       #10 clk=~clk;
    end
    
    always@(posedge clk) begin
        a=$random%16;
        i=i+1;
        if(i==10) $finish;     
    end
    
    initial begin
        $display("Time | binary | gray ");
        $monitor("%d | %b  | %b",$time,a,y);
    end
endmodule
