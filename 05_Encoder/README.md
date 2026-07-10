# Encoder (Verilog)

## Overview
This project implements multiple Encoder circuits using Verilog HDL. Encoders are combinational logic circuits that convert one active input line into its corresponding binary code. All designs were simulated and verified using Xilinx Vivado.

## Features
- 4:2 Encoder
- 8:3 Encoder
- Verilog HDL implementation
- Individual testbench for each design
- Schematic diagrams
- Simulation waveforms
- Verified using Xilinx Vivado

---

## Project Structure
```
├── Encoder(4to2)/
│   ├── encoder_4to2.v
│   ├── encoder_4to2_tb.v
│   ├── encoder_4to2_schematic.png
│   ├── encoder_4to2_waveform.png
│   └── README.md
│
├── Encoder(8to3)/
│   ├── encoder_8to3.v
│   ├── encoder_8to3_tb.v
│   ├── encoder_8to3_schematic.png
│   ├── encoder_8to3_waveform.png
│   └── README.md
│
└── README.md
```
---

# 4:2 Encoder

## Description
A 4:2 Encoder converts one of four active input lines into a 2-bit binary output.

### Inputs
- D0
- D1
- D2
- D3

### Outputs
- Y1
- Y0

---

# 8:3 Encoder

## Description
An 8:3 Encoder converts one of eight active input lines into a 3-bit binary output.

### Inputs
- D0
- D1
- D2
- D3
- D4
- D5
- D6
- D7

### Outputs
- Y2
- Y1
- Y0

---

## Tools Used

- Verilog HDL
- Xilinx Vivado

---

## Simulation

Each encoder was verified using its respective Verilog testbench in Vivado. The simulation waveforms confirmed correct binary encoding for all valid input combinations.

---

## Applications

- Keyboard encoding
- Interrupt controllers
- Data compression
- Digital communication systems
- Address encoding
- FPGA and ASIC design