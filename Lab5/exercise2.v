module mux4to1 (
    input i0, input i1, input i2, input i3,
    input s0, input s1,
    output y
);
    assign y = (~s1 & ~s0 & i0) |
               (~s1 &  s0 & i1) |
               ( s1 & ~s0 & i2) |
               ( s1 &  s0 & i3);
endmodule

module majority4_with_mux(
    input A, B, C, D,
    output Y
);
    wire I0, I1, I2, I3;
    assign I0 = A & B;
    assign I1 = A;
    assign I2 = A;
    assign I3 = 1'b1;
    mux4to1 mux_inst(
        .i0(I0),
        .i1(I1),
        .i2(I2),
        .i3(I3),
        .s0(D),
        .s1(C),
        .y(Y)
    );
endmodule
