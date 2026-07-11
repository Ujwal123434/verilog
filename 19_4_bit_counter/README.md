# MOD-16 Counter 

## Overview

This project implements a **4-bit MOD-16 Counter** using Verilog HDL. The counter increments by one on every rising edge of the clock and counts from **0 to 15**. After reaching **15 (1111)**, it wraps around to **0 (0000)**, completing a counting cycle of 16 states.

The design uses a **synchronous active-low reset**, which resets the counter to zero on the next rising edge of the clock when the reset signal is LOW.

## Features

- 4-bit binary counter
- MOD-16 operation (counts from 0 to 15)
- Positive-edge triggered
- Synchronous active-low reset
- Verilog HDL implementation
- Separate testbench
- Schematic diagram
- Simulation waveform
- Verified using Xilinx Vivado

---

## Project Structure

```text
MOD16_Counter/
├── counter.v
├── tb_counter.v
├── schematic.png
├── waveform.png
└── README.md
```

---

## Description

A MOD-16 counter is a sequential logic circuit that counts through **16 unique states (0–15)**. On each rising edge of the clock, the counter increments by one. After reaching the maximum value (`1111`), it automatically returns to `0000` and continues counting.

The synchronous active-low reset clears the counter to `0000` only on the next rising edge of the clock when `rst = 0`.

---

## Inputs

- `clk` : Clock input
- `rst` : Synchronous active-low reset

---

## Output

- `count[3:0]` : 4-bit counter output

---

## Operation

| Clock Edge | rst | Count(next) |
|------------|-----|-------------|
| ↑ | 0 | 0000 |
| ↑ | 1 | Count + 1 |
| No Rising Edge | X | No Change |

### Counting Sequence

```text
0000 → 0001 → 0010 → 0011 → ...
...
1101 → 1110 → 1111 → 0000 → ...
```

---

## Tools Used

- Verilog HDL
- Xilinx Vivado

---

## Simulation

The MOD-16 counter was verified using a dedicated Verilog testbench. The simulation waveform confirms that:

- The counter resets to `0000` when `rst = 0`.
- The counter increments on every rising edge of the clock when `rst = 1`.
- After reaching `1111` (15), the counter wraps around to `0000`, completing the MOD-16 counting sequence.

---

## Applications

- Frequency division
- Digital clocks and timers
- Event counting
- Sequence generation
- Address generation
- Digital control systems
- FPGA and ASIC design
