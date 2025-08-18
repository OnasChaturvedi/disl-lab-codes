`timescale 1ns/1ns
`include "exercise4.v"

module exercise4_tb();
    reg a, b, c, d;
    wire f;

    exercise4 ex4(a, b, c, d, f);
    initial begin
        $dumpfile("exercise4_tb.vcd");
        $dumpvars(0, exercise4_tb);

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