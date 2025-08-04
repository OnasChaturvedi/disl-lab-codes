module exercise1a(a, b, c, d, f);
    input a, b, c, d;
    output f;
    not(anot, a);
    not(bnot, b);
    not(cnot, c);
    not(dnot, d);
    and(and1, c, d);
    and(and2, anot, b);
    and(and3, b, cnot, dnot);
    and(and4, bnot, c);
    or(f, and1, and2, and3, and4);
endmodule