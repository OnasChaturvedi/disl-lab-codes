`timescale 1ns/1ps
`include "exercise4.v"

module mux16to1_tb();
    reg  [15:0] in;  
    reg  [3:0]  sel;  
    wire out;       

    mux16to1 mux(.in(in), .sel(sel), .out(out));

    initial begin
        in = 16'b1010_1100_1111_0001;
        sel = 4'b0000;

        $monitor("Time=%0t | sel=%b | in=%b | out=%b", $time, sel, in, out);

        #5 sel = 4'b0000;   
        #5 sel = 4'b0001;   
        #5 sel = 4'b0010;   
        #5 sel = 4'b0011;   
        #5 sel = 4'b0100;  
        #5 sel = 4'b0101;  
        #5 sel = 4'b0110;   
        #5 sel = 4'b0111; 
        #5 sel = 4'b1000;   
        #5 sel = 4'b1001;  
        #5 sel = 4'b1010;  
        #5 sel = 4'b1011;   
        #5 sel = 4'b1100;   
        #5 sel = 4'b1101;   
        #5 sel = 4'b1110;   
        #5 sel = 4'b1111;  

        #10 $finish;
    end
endmodule
