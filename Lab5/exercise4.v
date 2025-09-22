module mux16to1 (
    input  [15:0] in,       
    input  [3:0]  sel,      
    output out
);
    wire out0, out1; 

    mux8to1 mux_low (.in(in[7:0]), .sel(sel[2:0]), .out(out0));
    mux8to1 mux_high (.in(in[15:8]), .sel(sel[2:0]), .out(out1));
    mux2to1 mux_final (.in0(out0), .in1(out1), .sel(sel[3]), .out(out));

endmodule

module mux8to1 (
    input  [7:0] in,       
    input  [2:0] sel,      
    output reg out
);

    always @(*) begin
        case (sel)
            3'b000: out = in[0];
            3'b001: out = in[1];
            3'b010: out = in[2];
            3'b011: out = in[3];
            3'b100: out = in[4];
            3'b101: out = in[5];
            3'b110: out = in[6];
            3'b111: out = in[7];
            default: out = 1'b0;
        endcase
    end

endmodule

module mux2to1 (
    input  in0, in1,  
    input  sel,      
    output out
);

    assign out = (sel) ? in1 : in0;

endmodule
