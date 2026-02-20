# 8:3 Encoder in Verilog

This project implements a 8:3 Encoder using Verilog.  
An encoder is a combinational circuit that converts multiple input lines into a smaller number of output lines representing the binary code of the active input.

---

## Inputs
- d0 – input 0
- d1 – input 1
- d2 – input 2
- d3 – input 3
- d4 – input 4
- d5 – input 5
- d6 – input 6
- d7 – input 7

## Outputs
- y2 – output bit 2
- y1 – output bit 1
- y0 – output bit 0

---

## Truth Table

| d7 | d6 | d5 | d4 | d3 | d2 | d1 | d0 | y2 | y1 | y0 |
|----|----|----|----|----|----|----|----|----|----|----|
| 0  | 0  | 0  | 0  | 0  | 0  | 0  | 1  | 0  | 0  | 0  |
| 0  | 0  | 0  | 0  | 0  | 0  | 1  | 0  | 0  | 0  | 1  |
| 0  | 0  | 0  | 0  | 0  | 1  | 0  | 0  | 0  | 1  | 0  |
| 0  | 0  | 0  | 0  | 1  | 0  | 0  | 0  | 0  | 1  | 1  |
| 0  | 0  | 0  | 1  | 0  | 0  | 0  | 0  | 1  | 0  | 0  |
| 0  | 0  | 1  | 0  | 0  | 0  | 0  | 0  | 1  | 0  | 1  |
| 0  | 1  | 0  | 0  | 0  | 0  | 0  | 0  | 1  | 1  | 0  |
| 1  | 0  | 0  | 0  | 0  | 0  | 0  | 0  | 1  | 1  | 1  |

---

## Logic Equations
- `y2 = d4 + d5 + d6 + d7`
- `y1 = d2 + d3 + d6 + d7`
- `y0 = d1 + d3 + d5 + d7`
  


---

## Notes
- This is a combinational circuit with no clock or memory elements.
- It assumes that only one input is active at a time.
- The encoder converts the active input line into a 3-bit binary code.
- Encoders are commonly used in keyboard encoding, priority circuits, and digital communication systems.
