`timescale 1ns / 1ps

module fourBitCLA(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output [3:0] sum,
    output cout
    );
    wire [3:0] g,p,c;
    and (g[0],a[0],b[0]),
        (g[1],a[1],b[1]),
        (g[2],a[2],b[2]),
        (g[3],a[3],b[3]);
        
    xor (p[0],a[0],b[0]),
        (p[1],a[1],b[1]),
        (p[2],a[2],b[2]),
        (p[3],a[3],b[3]);
    
    assign c[0]=g[0]| cin&p[0]; 
    assign c[1]=g[1] | p[1]&(g[0]| cin&p[0]);
    assign c[2]=g[2] | p[2]&(g[1] | p[1]&(g[0]| cin&p[0]));
    assign c[3]=g[3] | p[3]&(g[2] | p[2]&(g[1] | p[1]&(g[0]| cin&p[0])));
    assign cout=c[3];
    
    xor (sum[0], p[0], cin),
    (sum[1], p[1], c[0]),
    (sum[2], p[2], c[1]),
    (sum[3], p[3], c[2]);
endmodule
