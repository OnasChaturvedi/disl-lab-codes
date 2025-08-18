`timescale 1ns/1ns
`include "exercise3.v"

module multiplier_2bit_tb();
    reg a1, a0, b1, b0;
    wire p3, p2, p1, p0;

    multiplier_2bit mult_2bit_1(a1, a0, b1, b0, p3, p2, p1, p0);
    initial begin
        $dumpfile("exercise3_tb.vcd");
        $dumpvars(0, multiplier_2bit_tb);

        a1 = 0; a0 = 0; b1 = 0; b0 = 0; #20;
        a1 = 0; a0 = 0; b1 = 0; b0 = 1; #20;
        a1 = 0; a0 = 0; b1 = 1; b0 = 0; #20;
        a1 = 0; a0 = 0; b1 = 1; b0 = 1; #20;

        a1 = 0; a0 = 1; b1 = 0; b0 = 0; #20;
        a1 = 0; a0 = 1; b1 = 0; b0 = 1; #20;
        a1 = 0; a0 = 1; b1 = 1; b0 = 0; #20;
        a1 = 0; a0 = 1; b1 = 1; b0 = 1; #20;

        a1 = 1; a0 = 0; b1 = 0; b0 = 0; #20;
        a1 = 1; a0 = 0; b1 = 0; b0 = 1; #20;
        a1 = 1; a0 = 0; b1 = 1; b0 = 0; #20;
        a1 = 1; a0 = 0; b1 = 1; b0 = 1; #20;

        a1 = 1; a0 = 1; b1 = 0; b0 = 0; #20;
        a1 = 1; a0 = 1; b1 = 0; b0 = 1; #20;
        a1 = 1; a0 = 1; b1 = 1; b0 = 0; #20;
        a1 = 1; a0 = 1; b1 = 1; b0 = 1; #20;

        $display("Test complete");
    end
endmodule