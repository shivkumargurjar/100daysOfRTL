`timescale 1ns / 1ps

module binaryTo2_sComplement_tb(

    );
    reg [3:0] i;
    wire [3:0] y;
    
    binaryTo2_sComplement uut(
        .i(i),
        .y(y)
    );
    reg clk;
    initial clk=0;
    integer p;
    initial p=0;
    
    always begin
        clk=~clk; #10;
    end
    
    always@(posedge clk) begin
        i=$random%16;
        p=p+1;
        if(p==10) begin
            #20 $finish;
        end
    end
    
    initial begin
        $display("|Time|i|y");
        $monitor("%4dns|%b|%b",$time,i,y);
    end
endmodule




