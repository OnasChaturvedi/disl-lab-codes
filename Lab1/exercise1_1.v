module exercise1_1(a, b, c, d, f);
    input a, b, c, d;
    output f;
    and(and1, a, b);
    and(and2, a, b);
    or(or1, c, and1);
    or(or2, c, and2);
    not(not1, or1);
    and(and3, not1, d);
    or(or3, d, or2);
    and(f, and3, or3);
endmodule