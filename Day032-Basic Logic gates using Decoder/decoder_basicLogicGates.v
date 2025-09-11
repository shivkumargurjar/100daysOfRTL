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

module decoder_basicLogicGates(
    input a,b,
    output not_gate,and_gate,or_gate
    );
    wire [3:0] w1,w2;
    decoder d1({a,b},w1);
    assign and_gate=w1[3];
    assign or_gate=~w1[0];
    decoder d2({1'b1,a},w2);
    assign not_gate=w2[2];
endmodule
