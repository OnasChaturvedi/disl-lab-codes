`timescale 1ns/1ns
`include "exercise2.v"

module TFF_Seq_Circuit_tb();
    reg x, clk, reset;
    wire A, B;

    TFF_Seq_Circuit ex(x, clk, reset, A, B);

    initial begin
        clk = 0;
        forever #20 clk = ~clk;
    end

    initial begin
        $dumpfile("exercise2_tb.vcd");
        $dumpvars(0, TFF_Seq_Circuit_tb);

        reset=1; x=0; #20;
        reset=0; #20;
        x=0; #20;
        x=1; #20;
        x=0; #20;
        x=1; #20;

        $finish;
    end
endmodule
