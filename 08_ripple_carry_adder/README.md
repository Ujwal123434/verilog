# Ripple Carry Adder in Verilog

This project implements a 4-bit Ripple Carry Adder (RCA) using Verilog.
A ripple carry adder is a combinational circuit that performs binary addition by cascading multiple full adders. The carry output of each stage is passed to the next stage.

--------------------------------------------------

Inputs:
- A : 4-bit input operand
- B : 4-bit input operand
- Cin : Carry input

Outputs:
- Sum : 4-bit sum output
- Cout : Carry output

--------------------------------------------------

Working Principle:

The ripple carry adder is constructed using full adders connected in series.

Each full adder takes:
- One bit from A
- One bit from B
- Carry from previous stage

The carry propagates from the least significant bit (LSB) to the most significant bit (MSB).

--------------------------------------------------
```
Truth Table (Full Adder):

A B Cin | Sum Cout
0 0 0   | 0   0
0 0 1   | 1   0
0 1 0   | 1   0
0 1 1   | 0   1
1 0 0   | 1   0
1 0 1   | 0   1
1 1 0   | 0   1
1 1 1   | 1   1
```
--------------------------------------------------

Implementation:

- Designed using Full Adder modules
- Four full adders connected in cascade
- Carry output of each stage is connected to the next stage

--------------------------------------------------

Example:

A = 1010 (10)
B = 0101 (5)
Cin = 1

Output:
Sum  = 0000
Cout = 1

Actual Result = 10000 (16)

--------------------------------------------------

Notes:

- This is a combinational circuit (no clock involved)
- Delay increases with number of bits due to carry propagation
- Suitable for small bit-width operations
- Not efficient for high-speed systems

--------------------------------------------------

Key Takeaway:

Ripple Carry Adder is simple and easy to design but slow due to carry propagation delay.
For faster performance, advanced adders like Carry Lookahead Adder (CLA) are preferred.
