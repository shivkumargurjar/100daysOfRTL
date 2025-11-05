`timescale 1ns / 1ps

module halfAdder(
    input a,b,
    output sum,cout
    );
    assign sum=a^b;
    assign cout =a&b;
  
endmodule 
///////////////////////////////////////
module vedicMult2x2(
    input [1:0] a,b,
    output [3:0] y
    );
    wire w1,w2,w3,w4,w5,w6;
    
    and m1(w1,a[0],b[0]);
    and m2(w2,a[1],b[0]);
    and m3(w3,a[0],b[1]);
    and m4(w4,a[1],b[1]);
    
    assign y[0]=w1;
    
    halfAdder h1(w2,w3,y[1],w5);
    halfAdder h2(w5,w4,y[2],w6);
    
    assign y[3]=w6;
endmodule
///////////////////////////////////
module adder_4bit(
		input [3:0] x,y,
		output [3:0] z
		);
    assign z=x+y;
endmodule

//////////////////////////////////////
module adder_6bit(
		input [5:0] x,y,
		output [5:0] z
		);
    assign z=x+y;
endmodule

//////////////////////////////////////////
module vedicMulti4x4(
    input [3:0] a,b,
    output wire [7:0] y
    );
    wire [3:0] p1,p2,p3,p4,p5;
    wire [5:0] p6;
    vedicMult2x2 v1(a[1:0],b[1:0],p1);
    vedicMult2x2 v2(a[1:0],b[3:2],p2);
    vedicMult2x2 v3(a[3:2],b[1:0],p3);
    vedicMult2x2 v4(a[3:2],b[3:2],p4);
    
    assign y[1:0]=p1[1:0];
  
    // Add middle partial products
    adder_4bit ad1({2'b00, p1[3:2]}, p2, p5);       // Shift upper bits of p1
    adder_6bit ad2({p3, 2'b00}, {p4, 2'b00}, p6);   // Shift p3 left 2, p4 left 2
    adder_6bit ad3({2'b00, p5}, p6, y[7:2]);        // Combine results
    
endmodule
