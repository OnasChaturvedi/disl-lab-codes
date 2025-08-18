`timescale 1ns/1ns
`include "exercise1b.v"

module full_adder_tb();
    reg cin, a, b;
    wire sum, cout;

    full_adder full_adder1(cin, a, b, sum, cout);
    initial begin
        $dumpfile("exercise1b_tb.vcd");
        $dumpvars(0, full_adder_tb);

        cin = 1'b0; a=1'b0; b=1'b0;
        #20;
        cin = 1'b0; a=1'b0; b=1'b1;
        #20
        cin = 1'b0; a=1'b1; b=1'b0;
        #20
        cin = 1'b0; a=1'b1; b=1'b1;
        #20
        cin = 1'b1; a=1'b0; b=1'b0;
        #20
        cin = 1'b1; a=1'b0; b=1'b1;
        #20
        cin = 1'b1; a=1'b1; b=1'b0;
        #20
        cin = 1'b1; a=1'b1; b=1'b1;
        #20

        $display("Test complete");
    end
endmodule