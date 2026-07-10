# 4:2 Encoder in Verilog

This project implements a 4:2 Encoder using Verilog.  
An encoder is a combinational circuit that converts multiple input lines into a smaller number of output lines representing the binary code of the active input.

---

## Inputs
- d0 – input 0
- d1 – input 1
- d2 – input 2
- d3 – input 3

## Outputs
- y1 – output bit 1
- y0 – output bit 0

---

## Truth Table

| d3 | d2 | d1 | d0 | y1 | y0 |
|----|----|----|----|----|----|
| 0  | 0  | 0  | 1  | 0  | 0  |
| 0  | 0  | 1  | 0  | 0  | 1  |
| 0  | 1  | 0  | 0  | 1  | 0  |
| 1  | 0  | 0  | 0  | 1  | 1  |

---

## Logic Equations
- `y1 = d2 + d3`
- `y0 = d1 + d3`

---

## Notes
- This is a combinational circuit with no clock or memory elements.
- It assumes that only one input is active at a time.
- The encoder converts the active input line into a 2-bit binary code.
- Encoders are commonly used in keyboard encoding, priority circuits, and digital communication systems.
