`timescale 1ns/1ns
`include "exercise4.v"

module priority_encoder4to2_tb();
    reg [3:0]a;
    wire [1:0]out;
    wire z;

    priority_encoder4to2 enc(a, z, out);

    initial begin
        $dumpfile("exercise4_tb.vcd");
        $dumpvars(0, priority_encoder4to2_tb);

        for(integer k = 0; k < 16; k++) begin
            a = k; #20; 
        end

        $display("Test Complete");
        $finish;
    end
endmodule