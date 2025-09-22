module decoder3to8(input [2:0]a, input enable, output [7:0]out);
    wire [3:0]temp1;
    wire [3:0]temp2;

    decoder2to4 dec1(a[1:0], enable&a[2], temp1);
    decoder2to4 dec2(a[1:0], enable&~a[2], temp2);

    assign out = {temp1, temp2};
endmodule

module decoder2to4(input [1:0]a, input enable, output reg[3:0]out);
    always@(*) begin
        if (enable) begin
            if (a[0] == 1'b1) begin
                if (a[1] == 1'b1)
                    out = 4'b1000;
                else
                    out = 4'b0010;
            end
            else begin
                if (a[1] == 1'b1)
                    out = 4'b0100;
                else
                    out = 4'b0001;
            end
        end
        else
            out = 4'b0000;
    end
endmodule