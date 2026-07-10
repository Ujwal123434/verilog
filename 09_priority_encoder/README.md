# 8:3 Priority Encoder in Verilog

This project implements a 8:3 Priority Encoder using Verilog.  
A priority encoder is a combinational circuit that converts multiple input lines into a smaller number of output lines representing the binary code of the highest-priority active input.

---

## Inputs
- d0 – input 0 (lowest priority)
- d1 – input 1
- d2 – input 2
- d3 – input 3
- d4 – input 4
- d5 – input 5
- d6 – input 6
- d7 – input 7 (highest priority)

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

## Logic Description
- If multiple inputs are active at the same time, the highest-numbered input has priority.
- For example:
  - If d7 and d3 are HIGH → Output = 111
  - If d6 and d2 are HIGH → Output = 110

---

## Notes
- This is a combinational circuit with no clock or memory elements.
- It does not assume that only one input is active at a time.
- The encoder converts the highest-priority active input line into a 3-bit binary code.
- Priority encoders are commonly used in interrupt controllers, bus arbitration, and digital communication systems.
