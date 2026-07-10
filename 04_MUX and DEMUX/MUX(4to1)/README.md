# 4:1 Multiplexer in Verilog

This project implements a **4:1 Multiplexer (MUX)** using Verilog.  
A multiplexer is a combinational circuit that selects one of several input signals and forwards the selected input to a single output line.

---

## Inputs
- `a` – input 0  
- `b` – input 1  
- `c` – input 2  
- `d` – input 3  
- `s1` – select line (MSB)  
- `s0` – select line (LSB)  

## Output
- `y` – output signal

---

## Truth Table (General Form)

| S1 | S0 | Y |
|----|----|---|
| 0  | 0  | a |
| 0  | 1  | b |
| 1  | 0  | c |
| 1  | 1  | d |

---

## Logic Equation

Based on the select lines:

- When `s1 s0 = 00` → `y = a`
- When `s1 s0 = 01` → `y = b`
- When `s1 s0 = 10` → `y = c`
- When `s1 s0 = 11` → `y = d`

Equivalent conditional expression:
`y = (s1 == 0 && s0 == 0) ? a :(s1 == 0 && s0 == 1) ? b :(s1 == 1 && s0 == 0) ? c :d `


---

## Notes
- This is a combinational circuit with no clock or memory elements.
- Two select lines (`s1`, `s0`) choose one of four inputs.
- Commonly used for data routing, bus selection, and arithmetic logic units.


