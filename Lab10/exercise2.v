module async_up_counter_4bit (input wire clk, input wire reset, output reg [3:0] q);
    always @(posedge clk or posedge reset) begin
        if (reset)
            q[0] <= 0;
        else
            q[0] <= ~q[0];
    end

    always @(negedge q[0] or posedge reset) begin
        if (reset)
            q[1] <= 0;
        else
            q[1] <= ~q[1];
    end

    always @(negedge q[1] or posedge reset) begin
        if (reset)
            q[2] <= 0;
        else
            q[2] <= ~q[2];
    end

    always @(negedge q[2] or posedge reset) begin
        if (reset)
            q[3] <= 0;
        else
            q[3] <= ~q[3];
    end
endmodule
