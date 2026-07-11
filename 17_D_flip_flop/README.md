# D Flip-Flop  

## Overview

This project implements a **Positive Edge Triggered D Flip-Flop with an Active-Low Reset** using Verilog HDL. The flip-flop captures the input data (`D`) on the **rising edge (positive edge)** of the clock. When the reset signal is asserted LOW (`rst_n = 0`), the output is immediately reset to `0`, regardless of the clock.

## Features

- Positive-edge triggered
- Active-low asynchronous reset
- Stores one bit of data
- Verilog HDL implementation
- Separate testbench
- Schematic diagram
- Simulation waveform
- Verified using Xilinx Vivado

---

## Project Structure

```text
Positive_Edge_D_FF_Active_Low_Reset/
├── D_ff.v
├── tb_D_ff.v
├── schematic.png
├── waveform.png
└── README.md
```

---

## Description

The flip-flop captures the value present at the **D** input on every **rising edge (↑)** of the clock. If the **active-low reset (`rst_n`)** is asserted (`0`), the output (`Q`) is immediately cleared to `0`, independent of the clock.

---

## Inputs

- `clk` : Clock input
- `rst` : Active-low reset
- `D` : Data input

---

## Output

- `Q` : Stored output

---

## Operation

| rst | Clock Edge | D | Q(next) |
|:-----:|:----------:|:-:|:-------:|
| 0 | X | X | 0 |
| 1 | ↑ | 0 | 0 |
| 1 | ↑ | 1 | 1 |
| 1 | No Rising Edge | X | No Change |

---

## Tools Used

- Verilog HDL
- Xilinx Vivado

---

## Simulation

The design was verified using a dedicated Verilog testbench. The simulation waveform confirms that the flip-flop captures the input data on the **rising edge of the clock** and resets immediately when the **active-low reset** is asserted.

---

## Applications

- Registers
- Shift Registers
- Counters
- Synchronizers
- Finite State Machines (FSMs)
- Digital Processors
- FPGA and ASIC Design