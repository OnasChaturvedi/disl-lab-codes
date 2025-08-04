`timescale 1ns/1ns
`include "exercise1b.v"

module exercise1b_tb();
    reg a, b, c, d;
    wire f;

    exercise1b ex1b(a, b, c, d, f);
    initial begin
        $dumpfile("exercise1b_tb.vcd");
        $dumpvars(0, exercise1b_tb);

        a = 1'b0; b=1'b0; c=1'b0; d=1'b0;
        #20;
        a = 1'b0; b=1'b0; c=1'b0; d=1'b1;
        #20;
        a = 1'b0; b=1'b0; c=1'b1; d=1'b0;
        #20;
        a = 1'b0; b=1'b0; c=1'b1; d=1'b1;
        #20;
        a = 1'b0; b=1'b1; c=1'b0; d=1'b0;
        #20;
        a = 1'b0; b=1'b1; c=1'b0; d=1'b1;
        #20;
        a = 1'b0; b=1'b1; c=1'b1; d=1'b0;
        #20;
        a = 1'b0; b=1'b1; c=1'b1; d=1'b1;
        #20;
        a = 1'b1; b=1'b0; c=1'b0; d=1'b0;
        #20;
        a = 1'b1; b=1'b0; c=1'b0; d=1'b1;
        #20;
        a = 1'b1; b=1'b0; c=1'b1; d=1'b0;
        #20;
        a = 1'b1; b=1'b0; c=1'b1; d=1'b1;
        #20;
        a = 1'b1; b=1'b1; c=1'b0; d=1'b0;
        #20;
        a = 1'b1; b=1'b1; c=1'b0; d=1'b1;
        #20;
        a = 1'b1; b=1'b1; c=1'b1; d=1'b0;
        #20;
        a = 1'b1; b=1'b1; c=1'b1; d=1'b1;
        #20;

        $display("Test complete");
    end
endmodule