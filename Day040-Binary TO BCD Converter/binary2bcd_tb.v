`timescale 1ns / 1ps

module binary2bcd_tb(

    );
    reg [7:0] i;
    wire [11:0] y;
    
    binary2bcd uut(
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
        i=$random%256;
        p=p+1;
        if(p==10) begin
            #20 $finish;
        end
    end
    
    initial begin
        $display("\tTime  i   y");
        $monitor("%4dns %b   %b",$time,i,y);
    end
endmodule
