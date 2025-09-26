`timescale 1ns / 1ps

module bcdTo7seg_tb(

    );
    reg [4:0] i;
    wire [6:0] y;
    
    bcdTo7seg uut(
        .i(i),
        .y(y)
    );
    always begin
            i = 4'd0;   
        #10;
            i = 4'd1; 
        #10;
            i = 4'd2; 
        #10;
            i = 4'd3; 
        #10;
            i = 4'd4; 
        #10;
            i = 4'd5; 
        #10;
            i = 4'd6; 
        #10;
            i = 4'd7; 
        #10;
            i = 4'd8; 
        #10;
            i = 4'd9; 
        #10;
        $finish;
    end
    
    initial begin
        $display(" Time  i   y");
        $monitor("%4dns %b   %b",$time,i,y);
    end
endmodule

