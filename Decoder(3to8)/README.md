# 3:8 Decoder in Verilog

This project implements a 3:8 Decoder using Verilog.
A decoder is a combinational circuit that converts a binary input code into one of several output lines. For a 3:8 decoder, three input lines select one of eight outputs.

---

## Inputs
- a2 – input bit 2
- a1 – input bit 1
- a0 – input bit 0

## Outputs
- d0 – output 0
- d1 – output 1
- d2 – output 2
- d3 – output 3
- d4 – output 4
- d5 – output 5
- d6 – output 6
- d7 – output 7

---

## Truth Table

| a2 | a1 | a0 | d7 | d6 | d5 | d4 | d3 | d2 | d1 | d0 |
|----|----|----|----|----|----|----|----|----|----|----|
| 0  | 0  | 0  | 0  | 0  | 0  | 0  | 0  | 0  | 0  | 1  |
| 0  | 0  | 1  | 0  | 0  | 0  | 0  | 0  | 0  | 1  | 0  |
| 0  | 1  | 0  | 0  | 0  | 0  | 0  | 0  | 1  | 0  | 0  |
| 0  | 1  | 1  | 0  | 0  | 0  | 0  | 1  | 0  | 0  | 0  |
| 1  | 0  | 0  | 0  | 0  | 0  | 1  | 0  | 0  | 0  | 0  |
| 1  | 0  | 1  | 0  | 0  | 1  | 0  | 0  | 0  | 0  | 0  |
| 1  | 1  | 0  | 0  | 1  | 0  | 0  | 0  | 0  | 0  | 0  |
| 1  | 1  | 1  | 1  | 0  | 0  | 0  | 0  | 0  | 0  | 0  |

---

## Logic Equations
- `d0 = a2' a1' a0'`
- `d1 = a2' a1' a0`
- `d2 = a2' a1 a0'`
- `d3 = a2' a1 a0`
- `d4 = a2 a1' a0'`
- `d5 = a2 a1' a0`
- `d6 = a2 a1 a0'`
- `d7 = a2 a1 a0`

---

## Notes
- This is a combinational circuit with no clock or memory elements.
- For each input combination, only one output is active (HIGH).
- A 3:8 decoder performs the reverse operation of an encoder.
- Decoders are commonly used in memory address decoding, instruction decoding, and data routing systems.
