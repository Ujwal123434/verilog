# D Latch with Enable in Verilog

This project implements a D (Data) Latch with Enable using Verilog.
A D latch is a level-sensitive sequential circuit that stores one bit of data.
The enable signal controls when the latch updates its output.

---

## Inputs

- d  : Data input
- en : Enable signal (active HIGH)

---

## Outputs

- q : Stored output

---

## Truth Table

| en | d | q (next) |
|----|---|----------|
| 0  | x | Hold     |
| 1  | 0 | 0        |
| 1  | 1 | 1        |

x = don't care
Hold = previous value of q is retained

---

## Working

- When en = 0, the latch holds its previous value.
- When en = 1, the output follows the input:
  - d = 0 → q = 0
  - d = 1 → q = 1

---

## Characteristics

- Level-sensitive sequential circuit
- Stores one bit of data
- No clock input
- Transparent when enable = 1

---

## Notes

- This latch is transparent when enable is HIGH, meaning output changes immediately with input.
- It is commonly used as a basic memory element.
- In HDL design, incomplete assignments may unintentionally create a latch.
