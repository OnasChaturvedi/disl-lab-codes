module decoder4to16(input [3:0]a, input enable, output [15:0]out);
    wire [7:0]temp1;
    wire [7:0]temp2;

    decoder3to8 dec1(a[2:0], enable&a[3], temp1);
    decoder3to8 dec2(a[2:0], enable&~a[3], temp2);

    assign out = {temp1, temp2};
endmodule

module decoder3to8(input [2:0]a, input enable, output reg[7:0]out);
    integer k;
    
    always@(*) begin
        for (k = 0; k < 8; k++)
            if (a == k && enable)
                out[k] = 1;
            else
                out[k] = 0;
    end
endmodule