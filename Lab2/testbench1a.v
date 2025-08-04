`timescale 1ns/1ns
`include "exercise1a.v"

module exercise1a_tb();
    reg a, b, c, d;
    wire f;

    exercise1a ex1a(a, b, c, d, f);
    initial begin
        $dumpfile("exercise1a_tb.vcd");
        $dumpvars(0, exercise1a_tb);

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