`timescale 1ns / 1ps

module Demux_1x2_tb(
    
    );
    reg i,sel;
    wire y0,y1;
     Demux_1x2 uut(
        .i(i),
        .sel(sel),
        .y0(y0),
        .y1(y1)
     );
   
    initial begin
        sel=1'b0; i=1'b0; #10;
        sel=1'b0; i=1'b1; #10;
        sel=1'b1; i=1'b0; #10;
        sel=1'b1; i=1'b1; #10;
        $finish;
    end
    initial begin
        $display("time |sel |i | y0| y1");
        $monitor("%4dns| %b| %b| %b| %b",$time,sel,i,y0,y1);
    end
endmodule

