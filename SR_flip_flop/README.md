# SR Flip-Flop (Active-Low Inputs) in Verilog

This project implements an SR (Set-Reset) Flip-Flop with active-low inputs using Verilog.
An SR flip-flop is a sequential circuit that stores one bit of data.
The output changes only on the active edge of the clock signal.

In this design, both Set and Reset inputs are active LOW, meaning the operation is triggered when the input is 0.

---

## Inputs
- s_n : Set input (active LOW)
- r_n : Reset input (active LOW)
- clk : Clock signal
- rst_n : Reset signal (active LOW)

---

## Outputs
- q      : Stored output
- q_bar  : Complement of q

---

## Truth Table

| clk ↑ | s_n | r_n | q(next) |
|------|-----|-----|---------|
| ↑ | 1 | 1 | Hold |
| ↑ | 0 | 1 | 1 (Set) |
| ↑ | 1 | 0 | 0 (Reset) |
| ↑ | 0 | 0 | Invalid |

---

## Working

- The flip-flop responds on the rising edge of the clock.
- When **s_n = 0 and r_n = 1**, the flip-flop is **set** → q = 1.
- When **s_n = 1 and r_n = 0**, the flip-flop is **reset** → q = 0.
- When **s_n = 1 and r_n = 1**, the output holds its previous value.
- When **s_n = 0 and r_n = 0**, it results in an invalid state.

---

## Notes

- This is an edge-triggered sequential circuit.
- The inputs are active-low, meaning logic 0 activates the operation.
- The flip-flop stores one bit of information.
- Active-low reset (rst_n) initializes the output.
- Used as a basic memory element in digital systems.
