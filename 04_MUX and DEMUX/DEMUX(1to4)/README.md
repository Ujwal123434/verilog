# 1:4 Demultiplexer in Verilog

This project implements a 1:4 Demultiplexer (DEMUX) using Verilog.  
A demultiplexer is a combinational circuit that takes a single input signal and routes it to one of several output lines based on select signals.

---

## Inputs
- a  – data input
- s1 – select line 1
- s0 – select line 0

## Outputs
- y0 – output 0
- y1 – output 1
- y2 – output 2
- y3 – output 3

---

## Truth Table

| s1 | s0 | y0 | y1 | y2 | y3 |
|----|----|----|----|----|----|
| 0  | 0  | a  | 0  | 0  | 0  |
| 0  | 1  | 0  | a  | 0  | 0  |
| 1  | 0  | 0  | 0  | a  | 0  |
| 1  | 1  | 0  | 0  | 0  | a  |

---

## Logic Equations
- `y0 = a·s1'.s0'`
- `y1 = a · s1' · s0`
- `y2 = a · s1 · s0'`
- `y3 = a · s1 · s0`

---

## Notes
- This is a combinational circuit with no clock or memory elements.
- The select lines s1 and s0 determine which output receives the input signal.
- Only one output is active at a time.
- Demultiplexers are commonly used for data routing and signal distribution in digital systems.
