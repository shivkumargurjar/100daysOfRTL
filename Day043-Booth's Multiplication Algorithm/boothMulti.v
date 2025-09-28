`timescale 1ns / 1ps

module boothMulti(
    input [3:0] Q,M,
    output reg [7:0] result
    );
    reg [3:0]M_comp;
    reg q0;
    integer i;
    reg [1:0] operation;
    always@(Q,M) begin
        M_comp=-M;
        q0=1'b0;
        result=8'd0;
        for(i=0;i<4;i=i+1) begin
            operation={Q[i],q0};
            case(operation)
                2'b10: result[7:4]= result[7:4] + M_comp ;
                2'b01:result[7:4]= result[7:4] + M ;
            endcase
            result=result >> 1;
            result[7]=result[6];
            q0=Q[i];
        end
    end
endmodule
