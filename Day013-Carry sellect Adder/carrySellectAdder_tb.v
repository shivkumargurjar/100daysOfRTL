
`timescale 1ns / 1ps
module carrySellectAdder_tb(

    );
    reg [3:0] a; 
    reg [3:0] b;
    reg cin;
    wire [3:0] sum;
    wire cout;
    
    carrySellectAdder uut(
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );
    reg clk;
    initial begin
       clk=0;
    end
    always begin
       clk=~clk; #10;
    end

    integer i;
    initial i=0;
    always@(posedge clk) begin
        a= $random % 16;
        b = $random % 16;
        cin=$random%2;
        i=i+1;
        if(i==10) $finish;
    end    
  
    initial begin 
        $display("Time | a  |  b  |  sum  | cout");
        $monitor("%4dns |  %b | %b | %b  | %b  |%b", $time, a, b, cin,sum, cout);
    end
endmodule
