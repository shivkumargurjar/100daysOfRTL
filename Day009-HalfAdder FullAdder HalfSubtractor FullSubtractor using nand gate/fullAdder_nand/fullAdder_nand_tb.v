`timescale 1ns / 1ps

module fullAdder_nand_tb(

    );
    reg a,b,cin;
    wire sum,cout;
    fullAdder_nand uut(
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );
    initial begin
        a=1'b0; b=1'b0; cin=1'b0; #10;
        a=1'b0; b=1'b0; cin=1'b1; #10;
        a=1'b0; b=1'b1; cin=1'b0; #10;
        a=1'b0; b=1'b1; cin=1'b1; #10;
        a=1'b1; b=1'b0; cin=1'b0; #10;
        a=1'b1; b=1'b0; cin=1'b1; #10;
        a=1'b1; b=1'b1; cin=1'b0; #10;
        a=1'b1; b=1'b1; cin=1'b1; #10;
        $finish;
    end
    
    initial begin
        $display("Time |a|b|cin|sum|cout|");
        $monitor("%0t %b %b %b %b %b",$time,a,b,cin,sum,cout);
    end
    
endmodule

