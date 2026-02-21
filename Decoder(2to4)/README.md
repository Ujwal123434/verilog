# 2:4 Decoder in Verilog

This project implements a 2:4 Decoder using Verilog.
A decoder is a combinational circuit that converts a binary input code into one of several output lines. For a 2:4 decoder, two input lines select one of four outputs.

---

## Inputs
- a1 – input bit 1
- a0 – input bit 0

## Outputs
- d0 – output 0
- d1 – output 1
- d2 – output 2
- d3 – output 3

---

## Truth Table

| a1 | a0 | d3 | d2 | d1 | d0 |
|----|----|----|----|----|----|
| 0  | 0  | 0  | 0  | 0  | 1  |
| 0  | 1  | 0  | 0  | 1  | 0  |
| 1  | 0  | 0  | 1  | 0  | 0  |
| 1  | 1  | 1  | 0  | 0  | 0  |

---

## Logic Equations
- d0 = a1' a0'
- d1 = a1' a0
- d2 = a1 a0'
- d3 = a1 a0

---

## Notes
- This is a combinational circuit with no clock or memory elements.
- For each input combination, only one output is active (HIGH).
- A decoder performs the reverse operation of an encoder.
- Decoders are commonly used in memory address decoding, instruction decoding, and data routing systems.
