`timescale 1ns/1ns
`include "exercise3.v"

module tb_johnson_counter_5bit();
    reg clk;
    reg reset;
    wire [4:0] q;

    johnson_counter_5bit uut(
        .clk(clk),
        .reset(reset),
        .q(q)
    );

    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        $dumpfile("johnson_counter_5bit_tb.vcd");
        $dumpvars(0, tb_johnson_counter_5bit);

        reset = 1;
        #12 reset = 0; 

        #200;

        $finish;
    end

    initial begin
        $monitor("Time=%0t | q=%b", $time, q);
    end
endmodule
