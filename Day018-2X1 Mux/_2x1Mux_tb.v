`timescale 1ns / 1ps

module _2x1Mux_tb(
    
    );
    reg i1,i0,sel;
    wire y;
     _2x1Mux uut(
        .i1(i1),
        .i0(i0),
        .sel(sel),
        .y(y)
     );
    initial begin
        i0=1'b0; 
        i1=1'b1;
     end
    initial begin
        sel=1'b0; #10;
        sel=1'b1; #10;
        sel=1'b0; #10;
        sel=1'b1; #10;
        sel=1'b0; #10;
        $finish;
    end
    initial begin
        $display("time |sel |y");
        $monitor("%4dns| %b| %b",$time,sel,y);
    end
endmodule
