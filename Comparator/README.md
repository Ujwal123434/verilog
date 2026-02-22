# 2-Bit Magnitude Comparator in Verilog

This project implements a 2-bit magnitude comparator using Verilog.

A comparator is a combinational circuit that compares two binary numbers and determines their relationship.

For a 2-bit comparator, two 2-bit inputs are compared and three outputs indicate whether:

- **A_gt_B** → A is greater than B  
- **A_eq_B** → A is equal to B  
- **A_lt_B** → A is less than B  

---

## Inputs

- `a1` – MSB of input A  
- `a0` – LSB of input A  
- `b1` – MSB of input B  
- `b0` – LSB of input B  

---

## Outputs

- `A_gt_B` – A greater than B  
- `A_eq_B` – A equal to B  
- `A_lt_B` – A less than B  

---

## Truth Table

| a1 | a0 | b1 | b0 | A_gt_B | A_eq_B | A_lt_B |
|----|----|----|----|--------|--------|--------|
| 0  | 0  | 0  | 0  |   0    |   1    |   0    |
| 0  | 0  | 0  | 1  |   0    |   0    |   1    |
| 0  | 0  | 1  | 0  |   0    |   0    |   1    |
| 0  | 0  | 1  | 1  |   0    |   0    |   1    |
| 0  | 1  | 0  | 0  |   1    |   0    |   0    |
| 0  | 1  | 0  | 1  |   0    |   1    |   0    |
| 0  | 1  | 1  | 0  |   0    |   0    |   1    |
| 0  | 1  | 1  | 1  |   0    |   0    |   1    |
| 1  | 0  | 0  | 0  |   1    |   0    |   0    |
| 1  | 0  | 0  | 1  |   1    |   0    |   0    |
| 1  | 0  | 1  | 0  |   0    |   1    |   0    |
| 1  | 0  | 1  | 1  |   0    |   0    |   1    |
| 1  | 1  | 0  | 0  |   1    |   0    |   0    |
| 1  | 1  | 0  | 1  |   1    |   0    |   0    |
| 1  | 1  | 1  | 0  |   1    |   0    |   0    |
| 1  | 1  | 1  | 1  |   0    |   1    |   0    |

---

## Logic Equations

- `A_eq_B = (a1 XNOR b1) · (a0 XNOR b0)`
- `A_gt_B = (a1 · b1') + ((a1 XNOR b1) · a0 · b0')`
- `A_lt_B = (a1' · b1) + ((a1 XNOR b1) · a0' · b0)`

## Notes

- This is a combinational circuit where outputs depend only on the current inputs.
- The MSB is compared first; if equal, the LSB determines the result.
- Only one output (A_gt_B, A_eq_B, or A_lt_B) is HIGH at any time.
