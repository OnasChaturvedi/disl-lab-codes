`timescale 1ns/1ns
`include "exercise3.v"  

module JKFF_tb();
    reg J;
    reg K;
    reg clk;
    reg reset;
    wire Q;

    JKFF jkff(J, K, clk, reset, Q);

    always #5 clk = ~clk;

    initial begin
        $dumpfile("exercise3_tb.vcd");
        $dumpvars(0, JKFF_tb);

        clk = 0;
        reset = 0;
        J = 0;
        K = 0;

        #2 reset = 1;
        #8 reset = 0;   

        #10 J = 1; K = 0;  
        #10 J = 0; K = 1;  
        #10 J = 1; K = 1;   
        #10 J = 0; K = 0;   

        #5 reset = 1;   
        #10 reset = 0;

        #10 J = 1; K = 1;   
        #10 J = 0; K = 1;  
        #10 J = 1; K = 0;  

        #20 $finish;
    end
endmodule
