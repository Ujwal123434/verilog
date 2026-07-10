# Basic Logic Gates (Gate-Level Verilog)

This project implements all basic logic gates using gate-level modeling in Verilog.

The following gates are included:

- AND
- OR
- NOT
- NAND
- NOR
- XOR
- XNOR

All gates are combinational circuits.

---

## Inputs

- A – First input  
- B – Second input  

(Note: NOT gate uses only input A)

---

## Outputs

- Y – Output of respective gate  

---

## Combined Truth Table

| A | B | AND | OR | NOT(A) | NAND | NOR | XOR | XNOR |
|---|---|-----|----|--------|------|-----|-----|------|
| 0 | 0 |  0  |  0 |   1    |  1   |  1  |  0  |  1   |
| 0 | 1 |  0  |  1 |   1    |  1   |  0  |  1  |  0   |
| 1 | 0 |  0  |  1 |   0    |  1   |  0  |  1  |  0   |
| 1 | 1 |  1  |  1 |   0    |  0   |  0  |  0  |  1   |

---

## Logic Equations

AND   : Y = A AND B  
OR    : Y = A OR B  
NOT   : Y = NOT A  
NAND  : Y = NOT (A AND B)  
NOR   : Y = NOT (A OR B)  
XOR   : Y = A XOR B  
XNOR  : Y = NOT (A XOR B)  

---

---

## Notes

- Combinational logic circuits  
- No memory elements  
- Implemented using built-in Verilog gate primitives  
- Foundation for complex digital systems  
