`timescale 1ns/1ns
`include "exercise1.v"

module ring_counter_4bit_tb();
    reg clk;
    reg reset;
    wire [3:0] q;

    ring_counter_4bit ex(clk, reset, q);

    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end

    initial begin
        $dumpfile("exercise1_tb.vcd");
        $dumpvars(0, ring_counter_4bit_tb);

        reset = 1;
        #10;
        reset = 0;             

        #60;                  
        reset = 1;             
        #10;
        reset = 0;

        #40;      
        $finish;             
    end
endmodule
