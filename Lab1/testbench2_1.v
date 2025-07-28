`timescale 1ns/1ns
`include "exercise2_1.v"

module exercise2_1_tb();
    reg a, b, c, d;
    wire f, g;

    exercise2_1 ex1(a, b, c, d, f, g);
    initial begin
        $dumpfile("exercise2_1_tb.vcd");
        $dumpvars(0, exercise2_1_tb);

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