module exercise1b(a, b, c, d, f);
    input a, b, c, d;
    output f;
    not(bnot, b);
    not(cnot, c);
    not(dnot, d);
    and(and1, d, bnot);
    and(and2, bnot, c);
    and(and3, b, cnot, dnot);
    or(f, and1, and2, and3);
endmodule