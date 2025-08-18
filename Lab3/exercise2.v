module exercise2(a, b, c, d, f);
    input a, b, c, d;
    output f;
    nor(dnot, d, d);
    nor(nor1, a, c, dnot);
    nor(nor2, b, c);
    nor(nor3, b, d);
    nor(nor4, nor1, nor2, nor3);
    nor(f, nor4, nor4);
endmodule