`timescale 1ns/1ns
`include "exercise2.v"

module mux4_1_tb();
    reg in0, in1, in2, in3;
    reg sel0, sel1;
    wire out;

    mux4_1 mux(in0, in1, in2, in3, sel0, sel1, out);

    initial begin
        $dumpfile("exercise2_tb.vcd");
        $dumpvars(0, mux4_1_tb);
        $monitor("sel1=%b, sel0=%b; in3=%b, in2=%b, in1=%b, in0=%b => out=%b",
                  sel1, sel0, in3, in2, in1, in0, out);

        {in3,in2,in1,in0}=4'b1010; sel1=0; sel0=0; #5;
        {in3,in2,in1,in0}=4'b1010; sel1=0; sel0=1; #5;
        {in3,in2,in1,in0}=4'b1010; sel1=1; sel0=0; #5;
        {in3,in2,in1,in0}=4'b1010; sel1=1; sel0=1; #5;
    end
endmodule
