# 2:1 Multiplexer in Verilog

This project implements a **8:1 Multiplexer (MUX)** using Verilog.  
A multiplexer is a combinational circuit that selects one of several input signals and forwards the selected input to a single output line.

---

## Inputs
- `a` –  8 bit input 
- `s` –  3 bit select line

## Output
- `y` – output signal

---

## Truth Table (Simulation Order)

| s1 | s2 | s3 | Y |
| - | - | - | - |
| 0 | 0 | 0 | a |
| 0 | 1 | 0 | b |
| 1 | 0 | 0 | c |
| 1 | 1 | 0 | d |
| 0 | 0 | 1 | e |
| 0 | 1 | 1 | f |
| 1 | 0 | 1 | g |
| 1 | 1 | 1 | h |

---


## Notes
- This is a simple combinational circuit with no memory or clock involved.
- The select lines `s1` `s2` `s3` decides which input  appears at the output.
