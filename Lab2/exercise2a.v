module exercise2a(a, b, c, d, f);
    input a, b, c, d;
    output f;
    not(bnot, b);
    not(cnot, c);
    not(dnot, d);
    or(or1, bnot, dnot);
    or(or2, b, cnot);
    and(f, or1, or2);
endmodule