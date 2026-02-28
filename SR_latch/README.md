# SR Latch with Enable in Verilog

This project implements an SR (Set-Reset) Latch with Enable using Verilog.
An SR latch is a basic sequential circuit that stores one bit of data.
The enable signal controls when the latch responds to inputs.

---

## Inputs
- s  : Set input (active HIGH)
- r  : Reset input (active HIGH)
- en : Enable signal (active HIGH)

## Outputs
- q      : Stored output
- q_bar  : Complement of q

---

## Truth Table

| en | s | r | q(next) |
|----|---|---|----------|
| 0  | x | x | Hold     |
| 1  | 0 | 0 | Hold     |
| 1  | 1 | 0 | 1 (Set)  |
| 1  | 0 | 1 | 0 (Reset)|
| 1  | 1 | 1 | Invalid  |

---

## Working

- When en = 0, the latch holds its previous value.
- When en = 1 and s = 1, r = 0 → q = 1 (Set).
- When en = 1 and s = 0, r = 1 → q = 0 (Reset).
- When en = 1 and s = 0, r = 0 → Output remains unchanged.
- When en = 1 and s = 1, r = 1 → Invalid condition.

---

## Notes

- This is a level-sensitive sequential circuit.
- The latch stores one bit of data.
- It has no clock input.
- Used as a basic memory element in digital systems.
