`timescale 1ns / 1ps

module grayToBinary_tb(

    );
    reg [3:0] b;
    wire [3:0] y;
    grayToBinary uut(
        .b(b),
        .y(y)
    );
    
    
    reg clk;
    initial clk=0;
    
    
    always begin
        #10 clk=~clk;
    end
    integer i;
    initial i=0;
    always@(posedge clk) begin
        b=$random%16;
        i=i+1;
        if(i==10) $finish;
    end
    initial begin
        $display("Time | gray  | binary");
        $monitor("%0t | %b  |  %b",$time,b,y);
    end
endmodule
