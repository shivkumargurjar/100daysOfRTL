`timescale 1ns / 1ps

module fullSubtractor_nand_tb(

    );
    reg a,b,bin;
    wire sub,bout;
    fullSubtractor_nand uut(
        .a(a),
        .b(b),
        .bin(bin),
        .sub(sub),
        .bout(bout)
    );
    initial begin
        a=1'b0; b=1'b0; bin=1'b0; #10;
        a=1'b0; b=1'b0; bin=1'b1; #10;
        a=1'b0; b=1'b1; bin=1'b0; #10;
        a=1'b0; b=1'b1; bin=1'b1; #10;
        a=1'b1; b=1'b0; bin=1'b0; #10;
        a=1'b1; b=1'b0; bin=1'b1; #10;
        a=1'b1; b=1'b1; bin=1'b0; #10;
        a=1'b1; b=1'b1; bin=1'b1; #10;
        $finish;
    end
    
    initial begin
        $display("Time |a|b|bin|sub|bout|");
        $monitor("%0t %b %b %b %b %b",$time,a,b,bin,sub,bout);
    end
    
endmodule

