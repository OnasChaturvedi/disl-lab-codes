module exercise1(a, b, c, d, f);
    input a, b, c, d;
    output f;
    nand(bnot, b, b);
    nand(dnot, d, d);
    nand(nand1, a, bnot);
    nand(nand2, c, dnot);
    nand(nand3, nand1, nand2);
    nand(f, nand3, nand3);
endmodule