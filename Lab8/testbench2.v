`timescale 1ns/1ns
`include "exercise2.v"

module n_bit_register_tb();
    parameter N = 8;

    reg clk;
    reg reset;
    reg enable;
    reg [N-1:0] d;
    wire [N-1:0] q;

    n_bit_register #(N) uut (
        .clk(clk),
        .reset(reset),
        .enable(enable),
        .d(d),
        .q(q)
    );

    always #5 clk = ~clk;

    initial begin
        $dumpfile("n_bit_register_tb.vcd");
        $dumpvars(0, n_bit_register_tb);

        clk = 0;
        reset = 0;
        enable = 0;
        d = 0;

        #2 reset = 1;
        #6 reset = 0;

        #4 enable = 1; d = 8'b10101010;
        #10 d = 8'b01010101;           
        #10 enable = 0;                
        #10 d = 8'b11110000;           
        #10 enable = 1;                
        #10 reset = 1;                 
        #10 reset = 0;                 
        #10 $finish;
    end
endmodule
