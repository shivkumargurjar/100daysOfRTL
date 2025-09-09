`timescale 1ns / 1ps

module priorityEncoder_8x3_tb(

    );
    reg [7:0] i;
    wire [2:0] y;
    
    priorityEncoder_8x3 uut(
        .i(i),
        .y(y)
    );
    
    reg clk;
    initial clk=0;
    integer n;
    initial n=0;
    
    always begin
        clk=~clk; #10;
    end
    always@(posedge clk) begin
        i=$random%256;
        n=n+1;
        if(n==10) begin
            #20 $finish;
        end
    end
    initial begin
        $display("Time |    i   | y");
        $monitor("%4dns | %b   | %b ",$time,i,y);
    end
endmodule

