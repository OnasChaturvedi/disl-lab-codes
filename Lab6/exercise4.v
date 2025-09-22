module priority_encoder4to2(input [3:0]a, output reg z, output reg [1:0]out);
    always@(*) begin
        casex(a)
            4'b0000: z = 1'b0;
            4'b0001:begin
                    out = 2'b00; z = 1'b1;
                    end
            4'b001x:begin
                    out = 2'b01; z = 1'b1;
                    end
            4'b01xx:begin
                    out = 2'b10; z = 1'b1;
                    end
            4'b1xxx:begin
                    out = 2'b11; z = 1'b1;
                    end
            default: z = 1'b0;
        endcase
    end
endmodule