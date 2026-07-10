# Verilog

## Overview

This repository contains fundamental digital design implementations written in **Verilog HDL**. The purpose of this project is to build a strong foundation in **RTL (Register Transfer Level) Design** by implementing core digital logic circuits and verifying their functionality through simulation.

The repository includes both **combinational** and **sequential** logic circuits. All modules are written using synthesizable Verilog and are organized in a structured manner for easy understanding, maintenance, and reuse.

---

## Repository Contents

Each project typically includes:

- Verilog source file (`.v`)
- Verilog testbench (`_tb.v`)
- Schematic diagram
- Simulation waveform
- Individual `README.md`

---

## Design Categories

### Combinational Logic

Combinational logic circuits produce outputs that depend only on the current input values. These circuits do not use clocks or memory elements.

Examples include:

- Adders
- Subtractors
- Multiplexers (MUX)
- Demultiplexers (DEMUX)
- Encoders
- Decoders
- Comparators

---

### Sequential Logic

Sequential logic circuits produce outputs based on both the current inputs and the previous state. These circuits use clock signals and storage elements.

Examples include:

- Flip-Flops
- Counters
- Shift Registers
- Finite State Machines (FSMs)
- FIFO
- Registers

---

## Simulation

Functional verification of all designs is performed using dedicated Verilog testbenches.

Each testbench applies different input combinations to verify the functionality of the corresponding design. Simulation waveforms are analyzed to ensure that the outputs match the expected behavior.

---

## Simulation Tools

The designs can be simulated using:

- Xilinx Vivado
- Vivado Simulator

---

## Simulation Steps (Vivado)

1. Open **Xilinx Vivado** and create a new project.
2. Add the RTL (`.v`) source file(s).
3. Add the corresponding testbench (`_tb.v`).
4. Set the testbench as the **Top Module**.
5. Click **Run Simulation → Run Behavioral Simulation**.
6. Observe the simulation waveform.
7. Click **Open Elaborated Design → Schematic**.
8. Verify the generated schematic.
9. Confirm that the simulation results match the expected functionality.

---

## Simulation Results

All implemented circuits were successfully verified through simulation.

- Functional behavior matches the expected logic.
- Waveforms confirm correct operation for all tested input combinations.
- Schematics generated in Vivado correspond to the implemented RTL designs.

---

## Tools Used

- Verilog HDL
- Xilinx Vivado
- Vivado Simulator



## Objectives

- Learn RTL design using Verilog HDL.
- Understand fundamental digital logic circuits.
- Develop synthesizable hardware designs.
- Verify functionality through simulation.
- Build a structured portfolio of digital design projects.

---

## License

This repository is intended for educational and learning purposes.
