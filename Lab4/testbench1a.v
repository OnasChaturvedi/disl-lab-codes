`timescale 1ns/1ns
`include "exercise1a.v"

module half_adder_tb();
    reg a, b;
    wire sum, carry;

    half_adder half_adder1(a, b, sum, carry);
    initial begin
        $dumpfile("exercise1a_tb.vcd");
        $dumpvars(0, half_adder_tb);

        a = 1'b0; b=1'b0;
        #20
        a = 1'b0; b=1'b1;
        #20;
        a = 1'b1; b=1'b0;
        #20;
        a = 1'b1; b=1'b1;
        #20;

        $display("Test complete");
    end
endmodule