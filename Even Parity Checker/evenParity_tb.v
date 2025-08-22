`timescale 1ns / 1ps

module evenParity_tb(

    );
    reg [7:0] data;
    reg parity_in;
    wire error;
    
    evenParity dut(
        .data(data),
        .parity_in(parity_in),
        .error(error)
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
        parity_in=$random%2;
        i=i+1;
        if(i==10) #20 $finish;
    end
    initial begin
        $display("Time | data | parity_in | error");
        $monitor("%0t | %b | %b | %b ",$time,data,parity_in,error);
    end
endmodule
