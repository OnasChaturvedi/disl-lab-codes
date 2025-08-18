module full_adder(cin, a, b, sum, cout);
    input cin, a, b;
    output sum, cout;
    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (a & cin) | (b & cin); 
endmodule