# Half Subtractor and Full Subtractor (Verilog)

## Overview
This project implements **Half Subtractor** and **Full Subtractor** circuits using Verilog HDL. Both are fundamental combinational logic circuits used in digital systems for binary subtraction. The designs were simulated and verified using Xilinx Vivado.

## Features
- Half Subtractor implementation
- Full Subtractor implementation
- Verilog HDL design
- Separate testbench for each module
- Schematic diagrams
- Simulation waveforms
- Verified using Xilinx Vivado

---

## Project Structure

```text
Subtractor/
├── Half_subtractor/
│   ├── half_subtractor.v
│   ├── half_subtractor_tb.v
│   ├── half_subtractor_schematic.png
│   └── half_subtractor_waveform.png
│
├── Full_subtractor/
│   ├── full_subtractor.v
│   ├── full_subtractor_tb.v
│   ├── full_subtractor_schematic.png
│   └── full_subtractor_waveform.png
│
└── README.md
```

---

# Half Subtractor

## Description
A Half Subtractor is a combinational logic circuit that subtracts one single-bit binary number from another. It produces two outputs:

- Difference
- Borrow

### Inputs
- `A` : Minuend
- `B` : Subtrahend

### Outputs
- `Difference`
- `Borrow`

### Truth Table

| A | B | Difference | Borrow |
|---|---|------------|--------|
| 0 | 0 | 0 | 0 |
| 0 | 1 | 1 | 1 |
| 1 | 0 | 1 | 0 |
| 1 | 1 | 0 | 0 |

### Logic Equations

- **Difference = A ^ B**
- **Borrow = ~A & B**

---

# Full Subtractor

## Description
A Full Subtractor is a combinational logic circuit that subtracts two single-bit binary numbers along with a borrow input from a previous stage. It produces:

- Difference
- Borrow Out

### Inputs
- `A` : Minuend
- `B` : Subtrahend
- `Bin` : Borrow Input

### Outputs
- `Difference`
- `Bout` : Borrow Output

### Truth Table

| A | B | Bin | Difference | Bout |
|---|---|-----|------------|------|
| 0 | 0 | 0 | 0 | 0 |
| 0 | 0 | 1 | 1 | 1 |
| 0 | 1 | 0 | 1 | 1 |
| 0 | 1 | 1 | 0 | 1 |
| 1 | 0 | 0 | 1 | 0 |
| 1 | 0 | 1 | 0 | 0 |
| 1 | 1 | 0 | 0 | 0 |
| 1 | 1 | 1 | 1 | 1 |

### Logic Equations

- **Difference = A ^ B ^ Bin**
- **Borrow Out = (~A & B) | (~A & Bin) | (B & Bin)**

---

## Tools Used

- Verilog HDL
- Xilinx Vivado

---

## Simulation

Each subtractor was verified using its respective Verilog testbench in Vivado. All possible input combinations were simulated, and the outputs matched the expected truth tables.

---

## Applications

- Binary subtraction
- Arithmetic Logic Units (ALUs)
- Digital processors
- Binary arithmetic circuits
- Computer architecture