# 1:2 Demultiplexer in Verilog

This project implements a 1:2 Demultiplexer (DEMUX) using Verilog.  
A demultiplexer is a combinational circuit that takes a single input signal and routes it to one of several output lines based on a select signal.

---

## Inputs
- a  – data input
- s  – select line
- en – enable signal

## Outputs
- y0 – output 0
- y1 – output 1

---

## Truth Table

| en | s | y0 | y1 |
|----|---|----|----|
| 0  | x | 0  | 0  |
| 1  | 0 | a  | 0  |
| 1  | 1 | 0  | a  |

---

## Logic Equations
- `y0 = en · a · s' `
-  `y1 = en · a · s `


- When en = 0, both outputs are 0.
- When en = 1 and s = 0, input a appears at y0.
- When en = 1 and s = 1, input a appears at y1.

---

## Notes
- This is a combinational circuit with no clock or memory elements.
- The select line s determines which output receives the input signal.
- The enable signal en controls whether the demultiplexer is active.
- Demultiplexers are commonly used for data routing and signal distribution in digital systems.
