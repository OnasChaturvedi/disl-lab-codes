module exercise2_2(a, b, c, d, f, g);
    input a, b, c, d;
    output f, g;
    assign f = (d^c^(~(a&b)));
    assign g = ~(b|d|c);
endmodule