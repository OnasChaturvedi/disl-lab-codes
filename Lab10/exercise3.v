module seq_generator (input wire clk, input wire reset, output reg [2:0] Q);
    reg [2:0] next_state;

    always @(*) begin
        case (Q)
            3'b000: next_state = 3'b001;
            3'b001: next_state = 3'b011;
            3'b011: next_state = 3'b101;
            3'b101: next_state = 3'b111;
            3'b111: next_state = 3'b000;
            default: next_state = 3'b000;
        endcase
    end

    always @(posedge clk or posedge reset) begin
        if (reset)
            Q <= 3'b000;
        else
            Q <= next_state;
    end
endmodule
