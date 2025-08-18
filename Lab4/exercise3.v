module multiplier_2bit(a1, a0, b1, b0, p3, p2, p1, p0);
    input a1, a0, b1, b0;
    output p3, p2, p1, p0;

    wire and0, and1, and2, and3;
    wire sum1, carry1;
    wire sum2, carry2;

    assign and0 = a0 & b0;
    assign and1 = a1 & b0;
    assign and2 = a0 & b1;
    assign and3 = a1 & b1;

    half_adder ha1(and1, and2, sum1, carry1);
    half_adder ha2(and3, carry1, sum2, carry2);

    assign p0 = and0;
    assign p1 = sum1;
    assign p2 = sum2;
    assign p3 = carry2;
endmodule


module half_adder(a, b, sum, carry);
    input a, b; 
    output sum, carry;
    assign sum = a ^ b;
    assign carry = a & b; 
endmodule