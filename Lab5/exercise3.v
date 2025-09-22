module mux16to1 (
    input  [15:0] in,     
    input  [3:0]  sel,    
    output out
);
    wire [3:0] mux_out;   

    mux4to1 m0 (.in(in[3:0]), .sel(sel[1:0]), .out(mux_out[0]));
    mux4to1 m1 (.in(in[7:4]), .sel(sel[1:0]), .out(mux_out[1]));
    mux4to1 m2 (.in(in[11:8]), .sel(sel[1:0]), .out(mux_out[2]));
    mux4to1 m3 (.in(in[15:12]), .sel(sel[1:0]), .out(mux_out[3]));
    mux4to1 m4 (.in(mux_out), .sel(sel[3:2]), .out(out));
endmodule

module mux4to1 (
    input  [3:0] in, 
    input  [1:0] sel,
    output out       
);

    assign out = (sel == 2'b00) ? in[0] : (sel == 2'b01) ? in[1] : (sel == 2'b10) ? in[2] : in[3];

endmodule
