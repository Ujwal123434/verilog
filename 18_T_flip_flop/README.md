# T Flip-Flop 

## Overview

This project implements a **Positive Edge Triggered T Flip-Flop with a Synchronous Active-Low Reset** using Verilog HDL. The flip-flop toggles its output on every rising edge of the clock when the toggle input (`T`) is HIGH. When the reset signal (`rst`) is LOW, the output is synchronously reset to `0`.

## Features

- Positive-edge triggered
- Synchronous active-low reset
- Toggle operation
- Verilog HDL implementation
- Separate testbench
- Schematic diagram
- Simulation waveform
- Verified using Xilinx Vivado

---

## Project Structure

```text
T_FlipFlop/
├── T_FF.v
├── tb_T_ff.v
├── schematic.png
├── waveform.png
└── README.md
```

---

## Description

A T (Toggle) Flip-Flop is a sequential logic circuit that changes (toggles) its output on every rising edge of the clock when the toggle input (`T`) is HIGH. When `T` is LOW, the output retains its previous state.

The synchronous active-low reset clears the output to `0` only on the next rising edge of the clock when `rst` is LOW.

---

## Inputs

- `clk` : Clock input
- `rst` : Synchronous active-low reset
- `T` : Toggle input

---

## Output

- `Q` : Flip-Flop output

---

## Truth Table

| Clock Edge | rst | T | Q(next) |
|------------|-----|---|----------|
| ↑ | 0 | X | 0 |
| ↑ | 1 | 0 | No Change |
| ↑ | 1 | 1 | Toggle |
| No Rising Edge | X | X | No Change |

---

## Operation

- If `rst = 0`, the output is reset to `0` on the next rising edge of the clock.
- If `rst = 1` and `T = 0`, the output retains its previous value.
- If `rst = 1` and `T = 1`, the output toggles on every rising edge of the clock.

---

## Tools Used

- Verilog HDL
- Xilinx Vivado

---

## Simulation

The T Flip-Flop was verified using a dedicated Verilog testbench. Different combinations of reset and toggle inputs were applied. The simulation waveform confirms correct synchronous reset, hold, and toggle operations on the rising edge of the clock.

---

## Applications

- Binary Counters
- Frequency Division
- Toggle Circuits
- State Machines (FSMs)
- Registers
- Digital Processors
- FPGA and ASIC Design