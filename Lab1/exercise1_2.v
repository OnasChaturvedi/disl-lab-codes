module exercise1_2(a, b, c, d, f);
    input a, b, c, d;
    output f;
    assign f = (d&(~((a&b)|c)))&(d|((a&b)|c));
endmodule