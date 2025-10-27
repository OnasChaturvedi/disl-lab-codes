`timescale 1ns/1ns
`include "exercise1.v"

module JK_SeqCircuit_tb();
    reg clk;
    reg reset;
    reg E;
    reg x;

    wire A;
    wire B;

    JK_SeqCircuit cqt (
        .clk(clk),
        .reset(reset),
        .E(E),
        .x(x),
        .A(A),
        .B(B)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $dumpfile("exercise1_tb.vcd");
        $dumpvars(0, JK_SeqCircuit_tb);

        reset = 1; E = 0; x = 0;
        #10;
        
        reset = 0;
        E = 0; x = 0;
        #40;
        
        E = 1; x = 1;
        #80;
        
        E = 1; x = 0;
        #80;
        
        E = 1; x = 1;
        #20;
        x = 0;
        #20;
        E = 0;
        #20;
        
        $stop;
    end

    initial begin
        $monitor("Time=%0t | reset=%b E=%b x=%b | State: A=%b B=%b",$time, reset, E, x, A, B);
    end
endmodule
