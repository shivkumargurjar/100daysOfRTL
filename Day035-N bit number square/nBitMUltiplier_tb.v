`timescale 1ns / 1ps

module nBitMUltiplier_tb(

    );
    parameter n=4;
    reg [n-1:0] i;
    wire[2*n-1:0] result;
    
    nBitMultiplier uut(
        .i(i),
        .result(result)
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
        $display(" Time  i   result");
        $monitor("%4dns %b   %b",$time,i,result);
    end
endmodule
