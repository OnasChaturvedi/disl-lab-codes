module decoder4to16(input [3:0]a, input enable, output [15:0]out);
    wire [3:0] en;        
    wire [3:0] y0, y1, y2, y3;

    decoder2to4 upper(a[3:2], enable, en);

    decoder2to4 d0 (a[1:0], ~en[0], y0);
    decoder2to4 d1 (a[1:0], ~en[1], y1);
    decoder2to4 d2 (a[1:0], ~en[2], y2);
    decoder2to4 d3 (a[1:0], ~en[3], y3);

    assign out = {y3, y2, y1, y0};
endmodule

module decoder2to4(input [1:0]a, input enable, output reg[3:0]out);
    always@(*) begin
        if (enable) begin
            case(a)
                2'b00: out = 4'b1110;
                2'b01: out = 4'b1101;
                2'b10: out = 4'b1011;
                2'b11: out = 4'b0111;
                default: out = 4'b1111;
            endcase
        end
        else begin
            out = 4'b1111;
        end
    end
endmodule