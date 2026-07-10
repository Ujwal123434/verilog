# Decoder (Verilog)

## Overview
This project implements **2:4 Decoder** and **3:8 Decoder** circuits using Verilog HDL. Decoders are fundamental combinational logic circuits that convert an n-bit binary input into one of 2ⁿ unique output lines. The designs were simulated and verified using Xilinx Vivado.

## Features
- 2:4 Decoder implementation
- 3:8 Decoder implementation
- Verilog HDL design
- Separate testbench for each decoder
- Schematic diagrams
- Simulation waveforms
- Verified using Xilinx Vivado

---

## Project Structure

```text
DECODER/
├── Decoder(2to4)/
│   ├── decoder_2to4.v
│   ├── decoder_2to4_tb.v
│   ├── decoder_2to4_schematic.png
│   ├── decoder_2to4_waveform.png
│   └── README.md
│
├── Decoder(3to8)/
│   ├── decoder_3to8.v
│   ├── decoder_3to8_tb.v
│   ├── decoder_3to8_schematic.png
│   ├── decoder_3to8_waveform.png
│   └── README.md
│
└── README.md
```

---

# 2:4 Decoder

## Description
A 2:4 Decoder is a combinational logic circuit that converts a 2-bit binary input into one of four active output lines.

### Inputs
- `A1`
- `A0`

### Outputs
- `Y0`
- `Y1`
- `Y2`
- `Y3`

### Truth Table

| A1 | A0 | Y0 | Y1 | Y2 | Y3 |
|----|----|----|----|----|----|
| 0 | 0 | 1 | 0 | 0 | 0 |
| 0 | 1 | 0 | 1 | 0 | 0 |
| 1 | 0 | 0 | 0 | 1 | 0 |
| 1 | 1 | 0 | 0 | 0 | 1 |

---

# 3:8 Decoder

## Description
A 3:8 Decoder is a combinational logic circuit that converts a 3-bit binary input into one of eight active output lines.

### Inputs
- `A2`
- `A1`
- `A0`

### Outputs
- `Y0`
- `Y1`
- `Y2`
- `Y3`
- `Y4`
- `Y5`
- `Y6`
- `Y7`

### Truth Table

| A2 | A1 | A0 | Active Output |
|----|----|----|---------------|
| 0 | 0 | 0 | Y0 |
| 0 | 0 | 1 | Y1 |
| 0 | 1 | 0 | Y2 |
| 0 | 1 | 1 | Y3 |
| 1 | 0 | 0 | Y4 |
| 1 | 0 | 1 | Y5 |
| 1 | 1 | 0 | Y6 |
| 1 | 1 | 1 | Y7 |

---

## Tools Used

- Verilog HDL
- Xilinx Vivado

---

## Simulation

Both the 2:4 Decoder and 3:8 Decoder were verified using their respective Verilog testbenches in Vivado. The simulation waveforms confirmed correct decoding for all possible input combinations.

---

## Applications

- Memory address decoding
- Memory chip selection
- Instruction decoding
- Digital communication systems
- Data routing
- FPGA and ASIC design
- Embedded systems
- Digital processors