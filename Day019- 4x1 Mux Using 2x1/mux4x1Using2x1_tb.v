`timescale 1ns / 1ps

module mux4x1Using2x1_tb(

    );
    reg i0,i1,i2,i3,sel1,sel2,sel3;
    wire y;
     mux4X1Using2X1 uut(
        .i0(i0),
        .i1(i1),
        .i2(i2),
        .i3(i3),
        .sel1(sel1),
        .sel2(sel2),
        .sel3(sel3),
        .y(y)
     );
    initial begin
        i0=1'b0; 
        i1=1'b1;
        i2=1'b0; 
        i3=1'b1;
     end
    initial begin
        sel1=1'b0; sel2=1'b0; sel3=1'b0; #10;
        sel1=1'b0; sel2=1'b0; sel3=1'b1; #10;
        sel1=1'b0; sel2=1'b1; sel3=1'b0; #10;
        sel1=1'b0; sel2=1'b1; sel3=1'b1; #10;
        sel1=1'b1; sel2=1'b0; sel3=1'b0; #10;
        sel1=1'b1; sel2=1'b0; sel3=1'b1; #10;
        sel1=1'b1; sel2=1'b1; sel3=1'b0; #10;
        sel1=1'b1; sel2=1'b1; sel3=1'b1; #10;     
        $finish;
    end
    initial begin
        $display("time | i0|i1 |i2 |i3|sel1|sel2|sel3|y");
        $monitor("%4dns| %b| %b |%b | %b | %b| %b |%b | %b",$time,i0,i1,i2,i3,sel1,sel2,sel3,y);
    end
endmodule