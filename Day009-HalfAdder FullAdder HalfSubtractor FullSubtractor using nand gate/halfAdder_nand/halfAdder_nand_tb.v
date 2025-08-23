`timescale 1ns / 1ps

module halfAdder_nand_tb(

    );
    reg a,b;
    wire sum,cout;
    halfAdder_nand uut(
        .a(a),
        .b(b),
        .sum(sum),
        .cout(cout)
    );
    initial begin
        a=1'b0; b=1'b0; #10;
        a=1'b0; b=1'b1; #10;
        a=1'b1; b=1'b0; #10;
        a=1'b1; b=1'b1; #10;
        $finish;
    end
    
    initial begin
        $display("Time | a | b |sum|cout|");
        $monitor("%0t %b %b %b %b",$time,a,b,sum,cout);
    end
    
endmodule
