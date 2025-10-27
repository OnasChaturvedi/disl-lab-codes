`timescale 1ns/1ns
`include "exercise2.v"

module async_up_counter_4bit_tb();
    reg clk;
    reg reset;
    wire [3:0] q;

    async_up_counter_4bit ex(clk, reset, q);

    initial begin
        clk = 0;
        forever #5 clk = ~clk;  
    end

    initial begin
        $dumpfile("exercise2_tb.vcd");
        $dumpvars(0, async_up_counter_4bit_tb);

        reset = 1;
        #10;
        reset = 0;

        #160;      

        reset = 1; 
        #10;
        reset = 0;

        #80;
        $finish;
    end
endmodule
