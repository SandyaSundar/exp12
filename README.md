**4-BIT-RIPPLE-COUNTER**

**AIM:**

To implement 4 Bit Ripple Counter using verilog and validating their functionality using their functional tables

**SOFTWARE REQUIRED:**

Quartus prime

**THEORY**

**4 Bit Ripple Counter**

A binary ripple counter consists of a series connection of complementing flip-flops (T or JK type), with the output of each flip-flop connected to the Clock Pulse input of the next higher-order flip-flop. The flip-flop holding the least significant bit receives the incoming count pulses. The diagram of a 4-bit binary ripple counter is shown in Fig. below.

![alt text](<4 bit ripple counter gate 1.png>)

In timing diagram Q0 is changing as soon as the negative edge of clock pulse is encountered, Q1 is changing when negative edge of Q0 is encountered(because Q0 is like clock pulse for second flip flop) and so on.

![alt text](<Screenshot 2025-12-12 192122.png>)


**Procedure**

1. Type the program in Quartus software.

2. Compile and run the program.

3. Generate the RTL schematic and save the logic diagram.

4. Create nodes for inputs and outputs to generate the timing diagram.

5. For different input combinations generate the timing diagram.

**PROGRAM**

```
module asynchronouscounter (
    input clk,          // clock input
    input reset,        // asynchronous reset
    output [3:0] q      // 4-bit output
);

// Internal flip-flop register
reg [3:0] q_reg;

// Output assignment
assign q = q_reg;

// FF0 toggles with external clock
always @(posedge clk or posedge reset) begin
    if (reset)
        q_reg[0] <= 1'b0;
    else
        q_reg[0] <= ~q_reg[0];
end

// FF1 toggles with Q0
always @(posedge q_reg[0] or posedge reset) begin
    if (reset)
        q_reg[1] <= 1'b0;
    else
        q_reg[1] <= ~q_reg[1];
end

// FF2 toggles with Q1
always @(posedge q_reg[1] or posedge reset) begin
    if (reset)
        q_reg[2] <= 1'b0;
    else
        q_reg[2] <= ~q_reg[2];
end

// FF3 toggles with Q2
always @(posedge q_reg[2] or posedge reset) begin
    if (reset)
        q_reg[3] <= 1'b0;
    else
        q_reg[3] <= ~q_reg[3];
end

endmodule

```

Developed by: Sandya S        RegisterNumber: 25017264

**RTL LOGIC FOR 4 Bit Ripple Counter**

![alt text](<4 bit ripple counter RTL.png>)

**TIMING DIGRAMS FOR 4 Bit Ripple Counter**

![alt text](<4 bit ripple counter wave.png>)

**RESULTS**
This 4 Bit Ripple Counter using verilog is implemented.





...










...














...












...












...














...











...















...












...













....











...















...
