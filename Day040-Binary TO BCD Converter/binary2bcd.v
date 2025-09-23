`timescale 1ns / 1ps

module binary2bcd(
    input  [7:0] i,
    output reg [11:0] y
);
    integer n;
    reg [3:0] bit2,bit1,bit0;
    always @(i) begin
        bit2=0;
        bit1=0;
        bit0=0;
        
        for (n=0;n<8;n=n+1) begin
            if(bit2>4) bit2=bit2+3;
            if(bit1>4) bit1=bit1+3;
            if(bit0>4) bit0=bit0+3;
            {bit2,bit1,bit0}={bit2,bit1,bit0,i[7-n]};
        end
        y={bit2,bit1,bit0};
    end
endmodule
