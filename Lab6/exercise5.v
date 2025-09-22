module priority_encoder16to4(input [15:0]a, output reg z, output reg [3:0]out);
    always@(*) begin
        if (a != 16'b0000000000000000) begin
            z = 1'b1;
            for (integer k = 0; k < 16; k++) begin
                if (a[k])
                    out = k;
            end
        end
        else
            z = 1'b0;
    end
endmodule