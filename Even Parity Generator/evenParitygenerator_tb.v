`timescale 1ns / 1ps

module evenParitygenerator_tb(

    );
    reg [7:0] data;
    wire parity;
    
    evenParityGenerator dut(
        .data(data),
        .parity(parity)
    );
    
    reg clk;
    initial begin
        clk=0;
    end
    
    always begin
         clk=~clk;#10;
    end
    integer i;
    initial i=0;
    always@(posedge clk) begin 
        data=$random%256;
        i=i+1;
        if(i==10) #20 $finish;
    end
    initial begin
        $display("Time | data | parity");
        $monitor("%0t | %b | %b ",$time,data,parity);
    end
endmodule
