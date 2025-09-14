`timescale 1ns / 1ps

module decoder(
    input [1:0] i,
    output reg [3:0] y
    );
    
    always@(i) begin
        y=0;
        case(i)
            2'b00:y[0]=1'b1;
            2'b01:y[1]=1'b1;
            2'b10:y[2]=1'b1;
            2'b11:y[3]=1'b1;
        endcase
    end
endmodule 

module decoder_specialLogicGates(
    input a,b,
    output xor_gate,xnor_gate
    );
    wire [3:0] w1;
    
    decoder d1({a,b},w1);
    
    assign xor_gate= w1[2] | w1[1];
    
    assign xnor_gate=w1[0]| w1[3];
endmodule
