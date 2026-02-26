# 4-Bit Gray to Binary Code Converter  

This project implements a 4-bit Gray to Binary Code Converter using Verilog.

Gray code is a binary numeral system in which two successive values differ by only one bit. To use Gray-coded data in digital systems, it must often be converted back to standard binary format.

For a 4-bit converter, a 4-bit Gray code input is converted into its corresponding 4-bit binary output.

---

## Inputs  

- `G3` – MSB of Gray code input  
- `G2`  
- `G1`  
- `G0` – LSB of Gray code input  

---

## Outputs  

- `B3` – MSB of binary output  
- `B2`  
- `B1`  
- `B0` – LSB of binary output  

---

## Truth Table  

| G3 | G2 | G1 | G0 | B3 | B2 | B1 | B0 |
|----|----|----|----|----|----|----|----|
| 0  | 0  | 0  | 0  | 0  | 0  | 0  | 0  |
| 0  | 0  | 0  | 1  | 0  | 0  | 0  | 1  |
| 0  | 0  | 1  | 1  | 0  | 0  | 1  | 0  |
| 0  | 0  | 1  | 0  | 0  | 0  | 1  | 1  |
| 0  | 1  | 1  | 0  | 0  | 1  | 0  | 0  |
| 0  | 1  | 1  | 1  | 0  | 1  | 0  | 1  |
| 0  | 1  | 0  | 1  | 0  | 1  | 1  | 0  |
| 0  | 1  | 0  | 0  | 0  | 1  | 1  | 1  |
| 1  | 1  | 0  | 0  | 1  | 0  | 0  | 0  |
| 1  | 1  | 0  | 1  | 1  | 0  | 0  | 1  |
| 1  | 1  | 1  | 1  | 1  | 0  | 1  | 0  |
| 1  | 1  | 1  | 0  | 1  | 0  | 1  | 1  |
| 1  | 0  | 1  | 0  | 1  | 1  | 0  | 0  |
| 1  | 0  | 1  | 1  | 1  | 1  | 0  | 1  |
| 1  | 0  | 0  | 1  | 1  | 1  | 1  | 0  |
| 1  | 0  | 0  | 0  | 1  | 1  | 1  | 1  |

---

## Logic Equations  

Binary output can be generated using cumulative XOR operations:

- `B3 = G3`  
- `B2 = B3 XOR G2`  
- `B1 = B2 XOR G1`  
- `B0 = B1 XOR G0`  
  

---
 
---

## Notes  

- This is a combinational circuit.  
- Implementation requires only XOR gates.  
- The design can be extended easily to N-bit systems using cumulative XOR logic.  
- Each stage depends on the previous stage, so proper signal propagation must be ensured in hardware implementation.  
