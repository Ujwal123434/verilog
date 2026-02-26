# 4-Bit Binary to Gray Code Converter 

This project implements a 4-bit Binary to Gray Code Converter using Verilog.

A Gray code is a binary numeral system in which two successive values differ in only one bit. It is widely used in digital systems to reduce errors during transitions.

For a 4-bit converter, a 4-bit binary input is converted into its corresponding 4-bit Gray code output.

---

## Inputs

- `B3` – MSB of binary input  
- `B2`  
- `B1`  
- `B0` – LSB of binary input  

---

## Outputs

- `G3` – MSB of Gray code output  
- `G2`  
- `G1`  
- `G0` – LSB of Gray code output  

---

## Truth Table

| B3 | B2 | B1 | B0 | G3 | G2 | G1 | G0 |
|----|----|----|----|----|----|----|----|
| 0  | 0  | 0  | 0  | 0  | 0  | 0  | 0  |
| 0  | 0  | 0  | 1  | 0  | 0  | 0  | 1  |
| 0  | 0  | 1  | 0  | 0  | 0  | 1  | 1  |
| 0  | 0  | 1  | 1  | 0  | 0  | 1  | 0  |
| 0  | 1  | 0  | 0  | 0  | 1  | 1  | 0  |
| 0  | 1  | 0  | 1  | 0  | 1  | 1  | 1  |
| 0  | 1  | 1  | 0  | 0  | 1  | 0  | 1  |
| 0  | 1  | 1  | 1  | 0  | 1  | 0  | 0  |
| 1  | 0  | 0  | 0  | 1  | 1  | 0  | 0  |
| 1  | 0  | 0  | 1  | 1  | 1  | 0  | 1  |
| 1  | 0  | 1  | 0  | 1  | 1  | 1  | 1  |
| 1  | 0  | 1  | 1  | 1  | 1  | 1  | 0  |
| 1  | 1  | 0  | 0  | 1  | 0  | 1  | 0  |
| 1  | 1  | 0  | 1  | 1  | 0  | 1  | 1  |
| 1  | 1  | 1  | 0  | 1  | 0  | 0  | 1  |
| 1  | 1  | 1  | 1  | 1  | 0  | 0  | 0  |

---

## Logic Equations

Gray code can be generated using XOR operations:

- `G3 = B3`
- `G2 = B3 XOR B2`
- `G1 = B2 XOR B1`
- `G0 = B1 XOR B0`

---

## Working Principle

- The MSB of Gray code is the same as the MSB of binary input.
- Each subsequent Gray bit is obtained by XORing the current binary bit with the previous binary bit.
- Only one bit changes between consecutive Gray code values.

---

## Notes

- This is a combinational circuit.
- Gray code reduces switching errors in digital systems.
- The design can be extended to N-bit systems easily.
- Implementation requires only XOR gates.

