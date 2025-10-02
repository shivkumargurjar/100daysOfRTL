`timescale 1ns / 1ps

module vedicMulti2x2_tb(

    );
    reg [1:0] a,b;
    wire [3:0] y;
    
    vedicMult2x2 uut(
        .a(a),
        .b(b),
        .y(y)
    );

    initial begin
       a=2'd2; b=2'd2; #10;
       a=2'd1; b=2'd2; #10;
       a=2'd0; b=2'd2; #10;
       a=2'd3; b=2'd2; #10;
       a=2'd3; b=2'd1; #10;
       $finish;
    end
    initial begin
        $display("   Time  A  B  Y");
        $monitor("%4dns %b   %b    %b",$time,a,b,y);
    end
endmodule
