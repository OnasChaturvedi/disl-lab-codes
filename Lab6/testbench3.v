`timescale 1ns/1ns
`include "exercise3.v"

module decoder4to16_tb();
    reg [3:0]a;
    wire [15:0]out;

    decoder4to16 dec(a, 1'b1, out);

    initial begin
        $dumpfile("exercise3_tb.vcd");
        $dumpvars(0, decoder4to16_tb);

        for(integer k = 0; k < 16; k++) begin
            a = k; #20; 
        end

        $display("Test Complete");
        $finish;
    end
endmodule