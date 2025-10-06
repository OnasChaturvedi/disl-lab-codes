`timescale 1ns/1ns
`include "exercise1.v"

module DFF_tb();
    reg D;
    reg clk;
    reg reset;
    wire Q;

    DFF dff(D, clk, reset, Q);

    always #5 clk = ~clk;

    initial begin
        $dumpfile("exercise1_tb.vcd");
        $dumpvars(0, DFF_tb);
        
        clk = 0;
        reset = 0;
        D = 0;

        #2 reset = 1;
        #5 reset = 0;

        #5 D = 1;    
        #10 D = 0;  
        #10 D = 1;   

        #7 reset = 1;
        #5 reset = 0;

        #10 D = 0;   
        #10 D = 1;  

        #20 $finish;
    end
endmodule
