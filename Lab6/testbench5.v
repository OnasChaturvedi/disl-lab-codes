`timescale 1ns/1ns
`include "exercise5.v"

module priority_encoder16to4_tb();
    reg [15:0]a;
    wire [3:0]out;
    wire z;

    priority_encoder16to4 enc(a, z, out);

    initial begin
        $dumpfile("exercise5_tb.vcd");
        $dumpvars(0, priority_encoder16to4_tb);

        a = 16'b0000_0000_0000_0000; #20;
        a = 16'b0000_0000_0000_0001; #20;
        a = 16'b0000_0100_0010_0001; #20;
        a = 16'b1000_0000_0000_0000; #20;
        a = 16'b1010_0000_1000_0001; #20;

        $display("Test Complete");
        $finish;
    end
endmodule