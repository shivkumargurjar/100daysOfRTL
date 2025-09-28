`timescale 1ns / 1ps

module boothMulti_tb(

    );
    reg [3:0] Q,M;
    wire [7:0] result;
    
    boothMulti uut(
        .Q(Q),
        .M(M),
        .result(result)
    );
    initial begin
        Q= 3; M= 7; #10;
        Q= 3; M= -7; #10;
        Q= -3; M= -7; #10;
        Q= 5; M= 6; #10;
        Q= 5; M= -6; #10;
        Q= -5; M= -6; #10;
        $finish;
    end
    
    initial begin
        $display("   Time  Q     M   result");
        $monitor("%4dns %b   %b    %b",$time,Q,M,result);
    end
endmodule
