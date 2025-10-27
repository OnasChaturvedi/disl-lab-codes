`timescale 1ns/1ns
`include "exercise3.v"

module seq_generator_tb;
    reg clk;
    reg reset;
    wire [2:0] Q;

    seq_generator ex(clk, reset, Q);

    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end

    initial begin
        $dumpfile("exercise3_tb.vcd");
        $dumpvars(0, seq_generator_tb);

        reset = 1;
        #10;
        reset = 0;

        #120;    
        reset = 1;
        #10;
        reset = 0;
        #60;
        $finish;
    end
endmodule
