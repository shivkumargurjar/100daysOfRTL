`timescale 1ns / 1ps


module not_gate_tb(
   
    );
    reg a;
    wire y;
    
    not_gate dut(
        .a(a),
        .y(y)
    );
    initial begin
        a=1'b0; #10;
        a=1'b1; #10;
        a=1'b0; #10;
        a=1'b1; #10;
         $finish;
    end
    initial begin
        $monitor("%0t | %b | %b ",$time,a,y);
    end
endmodule
