# 4-Bit Even Parity Generator in Verilog

This project implements a 4-bit Even Parity Generator using Verilog.
A parity generator adds an extra bit to ensure the total number of 1s in the data is even.
It is commonly used for simple error detection in digital systems.

---

## Inputs

- a : 4-bit input data (a[3:0])

---

## Outputs

- p : Even parity output bit

---

## Truth Table

| a[3:0] | Number of 1s | p (Even Parity) |
|--------|--------------|-----------------|
| 0000   | 0            | 0               |
| 0001   | 1            | 1               |
| 0010   | 1            | 1               |
| 0011   | 2            | 0               |
| 0101   | 2            | 0               |
| 0111   | 3            | 1               |
| 1111   | 4            | 0               |

Note: p is 1 when the number of 1s in the input is odd, making the total count even.

---
---

## Logic Expression

p = a[3] ^ a[2] ^ a[1] ^ a[0]

(^ represents XOR operation)

---


---

## Notes

- Even parity means total number of 1s (including parity bit) must be even.
- This circuit does not correct errors; it only detects single-bit errors.
- Widely used in communication systems and memory modules.
