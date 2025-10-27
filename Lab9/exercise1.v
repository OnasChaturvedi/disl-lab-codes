module JK_SeqCircuit(
    input clk,
    input reset,
    input E,
    input x,
    output reg A,
    output reg B
);

wire J_A, K_A, J_B, K_B;

wire [1:0] state = {A, B};
reg [1:0] next_state;

always @(*) begin
    if (E == 0) begin
        next_state = state;
    end else begin
        if (x == 1) begin
            case(state)
                2'b00: next_state = 2'b01;
                2'b01: next_state = 2'b10;
                2'b10: next_state = 2'b11;
                2'b11: next_state = 2'b00;
                default: next_state = 2'b00;
            endcase
        end else begin
            case(state)
                2'b00: next_state = 2'b11;
                2'b11: next_state = 2'b10;
                2'b10: next_state = 2'b01;
                2'b01: next_state = 2'b00;
                default: next_state = 2'b00;
            endcase
        end
    end
end

assign J_A = next_state[1] & ~A;
assign K_A = ~next_state[1] & A;
assign J_B = next_state[0] & ~B;
assign K_B = ~next_state[0] & B;

always @(posedge clk or posedge reset) begin
    if (reset) begin
        A <= 0;
        B <= 0;
    end else begin
        if (J_A == 0 && K_A == 0)
            A <= A;
        else if (J_A == 1 && K_A == 0)
            A <= 1;
        else if (J_A == 0 && K_A == 1)
            A <= 0;
        else if (J_A == 1 && K_A == 1)
            A <= ~A;

        if (J_B == 0 && K_B == 0)
            B <= B;
        else if (J_B == 1 && K_B == 0)
            B <= 1;
        else if (J_B == 0 && K_B == 1)
            B <= 0;
        else if (J_B == 1 && K_B == 1)
            B <= ~B;
    end
end

endmodule
