`timescale 1ns/1ns
`include "exercise1.v"

module shift_register_6bit_tb();
    reg clk;
    reg reset;
    reg serial_in;
    wire serial_out;
    wire [5:0] q;

    shift_register_6bit uut(serial_in, clk, reset, serial_out, q);

    always #5 clk = ~clk;

    initial begin
        $dumpfile("exercise1_tb.vcd");
        $dumpvars(0, shift_register_6bit_tb);

        clk = 0;
        reset = 0;
        serial_in = 0;

        #2 reset = 1;
        #5 reset = 0;

        #5 serial_in = 1;   
        #10 serial_in = 0;  
        #10 serial_in = 1;  
        #10 serial_in = 0;  
        #10 serial_in = 1;  
        #10 serial_in = 1;  

        #7 reset = 1;     
        #5 reset = 0;

        #10 serial_in = 0;  
        #10 serial_in = 1;  

        #20 $finish;
    end
endmodule
