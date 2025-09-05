`timescale 1ns / 1ps

module Demux_1x8_tb(
    
    );
    reg i;
    reg [2:0] sel;
    wire [7:0] y;
     Demux_1x8 uut(
        .i(i),
        .sel(sel),
        .y(y)
     );
   
    initial begin
    i=1'b1;
    end
    initial begin
        sel=3'b000; #10;
        sel=3'b001; #10;
        sel=3'b010; #10;
        sel=3'b011; #10;
        sel=3'b100; #10;
        sel=3'b101; #10;
        sel=3'b110; #10;
        sel=3'b111; #10;
        $finish;
    end
    initial begin
        $display("time |sel |i | y");
        $monitor("%4dns| %b| %b| %b|",$time,sel,i,y);
    end
endmodule

