`timescale 1ns / 1ps

module decoder_3x8_tb(

    );
    reg [3:0] i;
    wire [7:0] y;
    
    decoder_3x8 uut(
        .i(i),
        .y(y)
    );
    
   always begin
		#0 i=3'b000;
		#10 i=3'b001;
		#10 i=3'b010;
		#10 i=3'b011;
		#10 i=3'b100;
		#10 i=3'b101;
		#10 i=3'b110;
		#10 i=3'b111;
		#10 $finish;	
	end	
    initial begin
        $display("Time |    i   | y");
        $monitor("%4dns | %b   | %b ",$time,i,y);
    end
endmodule
