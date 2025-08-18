module exercise3(a, b, c, d, f);
    input a, b, c, d;
    output f;
    nor(dnot, d, d);
    nor(nor1, a, dnot);
    nor(nor2, c, dnot);
    nor(nor3, nor1, nor2);
    nor(f, nor3, nor3);
endmodule