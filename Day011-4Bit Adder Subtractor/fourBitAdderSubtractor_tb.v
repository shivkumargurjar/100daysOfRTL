module fourBitAdderSubtractor_tb;

    reg [3:0] A;
    reg [3:0] B;
    reg en;
    wire [3:0] Sdout;
    wire Cbout;

    // Correct instantiation
    fourBitAdderSubtractor uut (
        .A(A),
        .B(B),
        .en(en),
        .Sdout(Sdout),
        .Cbout(Cbout)
    );

    initial begin
        $monitor("Time=%0t | A=%b | B=%b | en=%b | Result=%b | Cbout=%b",
                  $time, A, B, en, Sdout, Cbout);

        // Apply test cases
        en = 0; A = 4'b0101; B = 4'b0011; #10;
        en = 1; A = 4'b0110; B = 4'b0010; #10;
        en = 1; A = 4'b0010; B = 4'b0100; #10;
        en = 0; A = 4'b1111; B = 4'b0001; #10;

        $finish;
    end

endmodule
