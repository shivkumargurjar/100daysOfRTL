`timescale 1ns / 1ps

module vedicMulti4x4_tb(

    );
    reg [3:0] a,b;
    wire [7:0] y;
    
    vedicMulti4x4 uut(
        .a(a),
        .b(b),
        .y(y)
    );

    initial begin
       a=4'd10; b=4'd10; #10;
       a=4'd2; b=4'd6; #10;
       a=4'd10; b=4'd12; #10;
       a=4'd3; b=4'd5; #10;
       a=4'd15; b=4'd15; #10;
       a=4'd8; b=4'd7; #10;
       $finish;
    end
    initial begin
        $display("   Time  A  B  Y");
        $monitor("%4dns %b   %b    %b",$time,a,b,y);
    end
endmodule

