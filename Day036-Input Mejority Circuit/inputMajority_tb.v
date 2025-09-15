`timescale 1ns / 1ps

module inputMajority_tb(

    );
    reg [6:0] i;
    wire y;
    
    inputMajority uut(
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
        i=$random%128;
        p=p+1;
        if(p==10) begin
            #20 $finish;
        end
    end
    
    initial begin
        $display(" Time  i   y");
        $monitor("%4dns %b   %b",$time,i,y);
    end
endmodule


