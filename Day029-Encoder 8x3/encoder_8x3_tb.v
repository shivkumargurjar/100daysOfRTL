`timescale 1ns / 1ps

module encoder_8x3_tb(

    );
    reg [7:0] i;
    wire [2:0] y;
    
    encoder_8x3 uut(
        .i(i),
        .y(y)
    );
    initial begin
        #0 i=8'b10000000;
		#10 i=8'b01000000;
		#10 i=8'b00100000;
		#10 i=8'b00010000;
		#10 i=8'b00001000;
		#10 i=8'b00000100;
		#10 i=8'b00000010;
		#10 i=8'b00000001;
		#10 i=8'b00000000;
		$finish;
    end
    initial begin
        $display("Time |    i   | y");
        $monitor("%4dns | %b   | %b ",$time,i,y);
    end
endmodule
