`timescale 1ns / 1ps
module fullSubtractor_tb;

    reg [1:0] A; 
    reg [1:0] B;
    wire [1:0] sub;
    wire Bout;

    fullSubtractor dut(
        .A(A),
        .B(B),
        .sub(sub),
        .Bout(Bout)
    );

    reg clk;  

    initial begin
        clk = 0;
    end
    always begin
        clk = ~clk; #10;
    end
    integer i;
    initial i = 0;

    always @(posedge clk) begin
        A = $random % 4;
        B = $random % 4;
        i = i + 1;
        if (i == 10) #20 $finish;
    end    

    initial begin 
        $display("Time | A   B |    sub  Bout");
        $monitor("%4dns |  %b  %b | %b   %b", $time, A, B, sub, Bout);
    end

endmodule
