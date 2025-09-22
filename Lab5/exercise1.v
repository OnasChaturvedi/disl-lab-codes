module comparator4bit (
    input A3, A2, A1, A0, 
    input B3, B2, B1, B0,
    output A_gt_B, A_lt_B, A_eq_B
);
    wire x3, x2, x1, x0;
    assign x3 = ~(A3 ^ B3);
    assign x2 = ~(A2 ^ B2);
    assign x1 = ~(A1 ^ B1);
    assign x0 = ~(A0 ^ B0);

    assign A_eq_B = x3 & x2 & x1 & x0;

    assign A_gt_B = (A3 & ~B3) |
                    (x3 & A2 & ~B2) |
                    (x3 & x2 & A1 & ~B1) |
                    (x3 & x2 & x1 & A0 & ~B0);

    assign A_lt_B = (~A3 & B3) |
                    (x3 & ~A2 & B2) |
                    (x3 & x2 & ~A1 & B1) |
                    (x3 & x2 & x1 & ~A0 & B0);
endmodule
