`timescale 1ns/1ns
`include "exercise1.v"

module comparator4bit_tb();
    reg A3, A2, A1, A0, B3, B2, B1, B0;
    wire gt, lt, eq;

    comparator4bit comparator(A3, A2, A1, A0, B3, B2, B1, B0, gt, lt, eq);

    initial begin
        $dumpfile("exercise1_tb.vcd");
        $dumpvars(0, comparator4bit_tb);
        // A = 11, B = 9
        A3=1;A2=0;A1=1;A0=1; B3=1;B2=0;B1=0;B0=1; #20;
        $display("A=1011, B=1001 -> gt=%b lt=%b eq=%b", gt, lt, eq);
        // A = 4, B = 7
        A3=0;A2=1;A1=0;A0=0; B3=0;B2=1;B1=1;B0=1; #20;
        $display("A=0100, B=0111 -> gt=%b lt=%b eq=%b", gt, lt, eq);
        // A = 12, B = 12
        A3=1;A2=1;A1=0;A0=0; B3=1;B2=1;B1=0;B0=0; #20;
        $display("A=1100, B=1100 -> gt=%b lt=%b eq=%b", gt, lt, eq);
    end
endmodule
