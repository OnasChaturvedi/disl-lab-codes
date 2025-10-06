`timescale 1ns/1ns
`include "exercise2.v" 

module TFF_tb();
    reg T;
    reg clk;
    reg reset_n;
    wire Q;

    TFF tff(T, clk, reset_n, Q);

    always #5 clk = ~clk;

    initial begin
        $dumpfile("exercise2_tb.vcd");
        $dumpvars(0, TFF_tb);

        clk = 0;
        reset_n = 0; 
        T = 0;

        #3 reset_n = 1;

        #5 T = 1;     
        #10 T = 0;    
        #10 T = 1;   
        #15 reset_n = 0;  
        #5 reset_n = 1; 
        #10 T = 1;
        #10 T = 0;
        #10 T = 1;

        #20 $finish;
    end
endmodule
