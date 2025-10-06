module d_ff (
    input clk,
    input rst,
    input d,
    output reg q
);
    always @(posedge clk or posedge rst) begin
        if (rst)
            q <= 1'b0;
        else
            q <= d;
    end
endmodule

module shift_register_6bit (
    input clk,
    input rst,
    input serial_in,
    output serial_out,
    output [5:0] q
);
    wire [5:0] dff_q;

    d_ff dff0(clk, rst, serial_in, dff_q[0]);
    d_ff dff1(clk, rst, dff_q[0], dff_q[1]);
    d_ff dff2(clk, rst, dff_q[1], dff_q[2]);
    d_ff dff3(clk, rst, dff_q[2], dff_q[3]);
    d_ff dff4(clk, rst, dff_q[3], dff_q[4]);
    d_ff dff5(clk, rst, dff_q[4], dff_q[5]);

    assign q = dff_q;
    assign serial_out = dff_q[5];
endmodule
