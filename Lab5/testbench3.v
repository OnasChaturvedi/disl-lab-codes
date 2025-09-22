`timescale 1ns/1ps
`include "exercise3.v"

module mux16to1_tb();

    reg  [15:0] in;   
    reg  [3:0]  sel; 
    wire out;         
    reg expected;   

    mux16to1 mux(.in(in), .sel(sel), .out(out));

    initial begin
        $display("Time | Sel  | Expected | Actual_Output | Result");

        in = 16'b1101_0110_1010_1001;
        sel = 4'b0000;  
        expected = in[sel];
        #5;
        $display("%4t | %b |    %b     |    %b    | %s", 
                 $time, sel, expected, out, (out===expected)?"PASS":"FAIL");

        in = 16'b1010_0001_1111_0101;
        sel = 4'b0101;  
        expected = in[sel];
        #5;
        $display("%4t | %b |    %b     |    %b    | %s", 
                 $time, sel, expected, out, (out===expected)?"PASS":"FAIL");

        in = 16'b0110_1100_0011_1110;
        sel = 4'b1001;  
        expected = in[sel];
        #5;
        $display("%4t | %b |    %b     |    %b    | %s", 
                 $time, sel, expected, out, (out===expected)?"PASS":"FAIL");

        in = 16'b1111_0000_1010_0101;
        sel = 4'b1111;  
        expected = in[sel];
        #5;
        $display("%4t | %b |    %b     |    %b    | %s", 
                 $time, sel, expected, out, (out===expected)?"PASS":"FAIL");

        #10 $finish;
    end
endmodule

