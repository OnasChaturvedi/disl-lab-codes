`timescale 1ns/1ns
`include "exercise1.v"

module decoder3to8_tb();
    reg [2:0]a;
    wire [7:0]out;

    decoder3to8 dec(a, 1'b1, out);

    initial begin
        $dumpfile("exercise1_tb.vcd");
        $dumpvars(0, decoder3to8_tb);

        a = 3'b000; #20;
        a = 3'b001; #20;
        a = 3'b010; #20;
        a = 3'b011; #20;
        a = 3'b100; #20;
        a = 3'b101; #20;
        a = 3'b110; #20;
        a = 3'b111; #20;

        $display("Test Complete");
    end
endmodule