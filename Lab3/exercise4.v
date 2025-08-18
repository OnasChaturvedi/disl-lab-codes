module exercise4(a, b, c, d, f);
    input a, b, c, d;
    output f;
    nand(dnot, d, d);
    nand(nand1, a, d);
    nand(nand2, b, dnot);
    nand(nand3, nand1, nand2);
    nand(f, nand3, nand3);
endmodule