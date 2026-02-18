# 1:8 Demultiplexer in Verilog

This project implements a 1:8 Demultiplexer (DEMUX) using Verilog.  
A demultiplexer is a combinational circuit that takes a single input signal and routes it to one of several output lines based on select signals.

---

## Inputs
- a   – data input  
- s2, s1, s0 – select lines  
- en  – enable signal  

## Outputs
- y0 – output 0  
- y1 – output 1  
- y2 – output 2  
- y3 – output 3  
- y4 – output 4  
- y5 – output 5  
- y6 – output 6  
- y7 – output 7  

---

## Truth Table

| en | s2 | s1 | s0 | Active Output |
|----|----|----|----|---------------|
| 0  |  x |  x |  x | All outputs = 0 |
| 1  | 0  | 0  | 0  | y0 = a |
| 1  | 0  | 0  | 1  | y1 = a |
| 1  | 0  | 1  | 0  | y2 = a |
| 1  | 0  | 1  | 1  | y3 = a |
| 1  | 1  | 0  | 0  | y4 = a |
| 1  | 1  | 0  | 1  | y5 = a |
| 1  | 1  | 1  | 0  | y6 = a |
| 1  | 1  | 1  | 1  | y7 = a |

---

## Logic Equations

- y0 = en · a · s2' · s1' · s0'
- y1 = en · a · s2' · s1' · s0
- y2 = en · a · s2' · s1 · s0'
- y3 = en · a · s2' · s1 · s0
- y4 = en · a · s2 · s1' · s0'
- y5 = en · a · s2 · s1' · s0
- y6 = en · a · s2 · s1 · s0'
- y7 = en · a · s2 · s1 · s0

---

## Operation
- When en = 0, all outputs remain 0.
- When en = 1, the select lines s2 s1 s0 decide which output receives input a.
- Only one output is active at a time.

---

## Notes
- This is a combinational circuit with no clock.
- Three select lines allow selection of one among eight outputs.
- Commonly used in data routing, memory addressing, and communication systems.
