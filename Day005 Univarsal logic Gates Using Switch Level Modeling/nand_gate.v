`timescale 1ns / 1ps

module nand_gate(
    input a,b,
    output y
    );
    wire tmp;
    supply1 vdd;
    supply0 gnd;
    
    pmos(y,vdd,a);
    pmos(y,vdd,b);
    
    nmos(temp,gnd,a);
    nmos(y,temp,b);
endmodule
