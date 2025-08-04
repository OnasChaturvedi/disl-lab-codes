module exercise2b(a, b, c, d, f);
    input a, b, c, d;
    output f;
    not(anot, a);
    not(bnot, b);
    not(cnot, c);
    not(dnot, d);
    or(or1, b, d, c);
    or(or2, anot, bnot, cnot);
    or(or3, a, dnot);
    and(f, or1, or2, or3);
endmodule