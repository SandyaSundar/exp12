module asynchronouscounter (
    input clk,          
    input reset,        
    output [3:0] q      
);


reg [3:0] q_reg;


assign q = q_reg;


always @(posedge clk or posedge reset) begin
    if (reset)
        q_reg[0] <= 1'b0;
    else
        q_reg[0] <= ~q_reg[0];
end


always @(posedge q_reg[0] or posedge reset) begin
    if (reset)
        q_reg[1] <= 1'b0;
    else
        q_reg[1] <= ~q_reg[1];
end


always @(posedge q_reg[1] or posedge reset) begin
    if (reset)
        q_reg[2] <= 1'b0;
    else
        q_reg[2] <= ~q_reg[2];
end


always @(posedge q_reg[2] or posedge reset) begin
    if (reset)
        q_reg[3] <= 1'b0;
    else
        q_reg[3] <= ~q_reg[3];
end

endmodule