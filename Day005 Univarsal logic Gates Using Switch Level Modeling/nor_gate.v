`timescale 1ns / 1ps

module nor_gate(
    input a,b,
    output y
    );
    wire temp;
    supply1 vdd;
    supply0 gnd;
    
    pmos(temp,vdd,a);
    pmos(y,temp,b);
    
    nmos(y,gnd,a);
    nmos(y,gnd,b);
endmodule
