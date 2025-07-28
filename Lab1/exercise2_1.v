module exercise2_1(a, b, c, d, f, g);
    input a, b, c, d;
    output f, g;
    nand(nand1, a, b);
    xor(f, nand1, c, d);
    nor(g, b, c, d);
endmodule