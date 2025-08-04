module exercise3(a, b, c, d, f);
    input a, b, c, d;
    output f;
    and(and1, b, c, d);
    and(and2, a, c, d);
    and(and3, a, b, d);
    and(and4, a, b, c);
    or(f, and1, and2, and3, and4);
endmodule