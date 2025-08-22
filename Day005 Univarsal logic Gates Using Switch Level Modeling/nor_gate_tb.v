`timescale 1ns / 1ps

module nor_gate_tb(

    );
    reg a,b;
    wire y;
    nor_gate uut(
        .a(a),
        .b(b),
        .y(y)
    );
    
    initial begin
        a=1'b0; b=1'b0; #10;
        a=1'b0; b=1'b1; #10;
        a=1'b1; b=1'b0; #10;
        a=1'b1; b=1'b1; #10;
        $finish;
    end
    
    initial begin
        $monitor("%0t | %b | %b | %b |",$time,a,b,y);
    end
endmodule
