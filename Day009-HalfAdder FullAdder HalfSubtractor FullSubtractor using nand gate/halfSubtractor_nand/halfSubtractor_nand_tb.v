`timescale 1ns / 1ps

module halfSubtractor_nand_tb(

    );
    reg a,b;
    wire sub,cout;
    halfSubtractor_nand uut(
        .a(a),
        .b(b),
        .sub(sub),
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
        $display("Time | a | b |sub|cout|");
        $monitor("%0t %b %b %b %b",$time,a,b,sub,cout);
    end
    
endmodule
