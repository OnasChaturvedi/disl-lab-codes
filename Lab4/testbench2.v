`timescale 1ns/1ns
`include "exercise2.v"

module adder_subtractor_4bit_tb();
    reg control, x3, x2, x1, x0, y3, y2, y1, y0;  
    wire s3, s2, s1, s0, carryout;

    adder_subtractor_4bit add_sub1(control, x3, x2, x1, x0, y3, y2, y1, y0, s3, s2, s1, s0, carryout);

    initial begin
        $dumpfile("exercise2_tb.vcd");
        $dumpvars(0, adder_subtractor_4bit_tb);

        $display("Testing addition");

        control=1'b0;
        x0=1'b1; x1=1'b0; x2=1'b1; x3=1'b0;
        y0=1'b1; y1=1'b0; y2=1'b1; y3=1'b0; 
        #20;

        control=1'b0;
        x0=1'b1; x1=1'b1; x2=1'b1; x3=1'b0;
        y0=1'b0; y1=1'b0; y2=1'b0; y3=1'b1;
        #20;

        $display("Testing subtraction");

        control=1'b1;
        x0=1'b1; x1=1'b0; x2=1'b1; x3=1'b0; 
        y0=1'b1; y1=1'b0; y2=1'b1; y3=1'b0; 
        #20;
        
        control=1'b1;
        x0=1'b1; x1=1'b1; x2=1'b1; x3=1'b0;
        y0=1'b0; y1=1'b0; y2=1'b0; y3=1'b1;
        #20;

        $display("Test complete");
    end
endmodule