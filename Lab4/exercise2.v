module adder_subtractor_4bit(control, x3, x2, x1, x0, y3, y2, y1, y0, s3, s2, s1, s0, carryout);
    input control, x3, x2, x1, x0, y3, y2, y1, y0;
    output s3, s2, s1, s0, carryout;

    wire b3, b2, b1, b0;

    assign b3 = control ^ y3;
    assign b2 = control ^ y2;
    assign b1 = control ^ y1;
    assign b0 = control ^ y0;

    adder_4bit adder1(control, x3, x2, x1, x0, b3, b2, b1, b0, s3, s2, s1, s0, carryout);
endmodule

module adder_4bit(carryin, x3, x2, x1, x0, y3, y2, y1, y0, s3, s2, s1, s0, carryout);
    input carryin, x3, x2, x1, x0, y3, y2, y1, y0;
    output s3, s2, s1, s0, carryout;
    full_adder stage0 (carryin, x0, y0, s0, c1);
    full_adder stage1 (c1, x1, y1, s1, c2);
    full_adder stage2 (c2, x2, y2, s2, c3);
    full_adder stage3 (c3, x3, y3, s3, carryout);
endmodule

module full_adder(cin, a, b, sum, cout);
    input cin, a, b;
    output sum, cout;
    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (a & cin) | (b & cin); 
endmodule