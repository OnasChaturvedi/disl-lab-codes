module TFF_Seq_Circuit(input x, clk, reset, output A, B);
    wire TA, TB;
    assign TA = (~A&B) | (B&~x);
    assign TB = (~B&~x) | (A&~x) | (~A&B&x);

    TFF stage0(TA, clk, reset, A);
    TFF stage1(TB, clk, reset, B);
endmodule

module TFF(input T, clk, reset, output reg Q);
    always@(posedge clk, posedge reset) begin
        if (reset) Q<=0;
        else begin
            if (T == 0) Q<=Q;
            else Q<=~Q;
        end
    end
endmodule