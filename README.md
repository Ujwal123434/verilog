### Verilog
This repository contains fundamental digital design implementations written in Verilog HDL.

The purpose of this project is to build a strong foundation in RTL design by implementing core digital logic concepts and verifying them through simulation.

## Overview

The repository includes both combinational and sequential digital circuits.

All modules are written using synthesizable Verilog and are organized in a structured manner for clarity and reuse.

Each design typically includes
- Verilog source file (.v)
- Corresponding testbench
- Simulation results (waveform verification)

## Design Categories

### Combinational Logic

Circuits where the output depends only on current input values.  
No clock or memory elements are involved.

### Sequential Logic

Circuits where the output depends on current inputs and previous state.  
These designs use clock signals and storage elements.

## Simulation

Functional verification of the  Combinational circuits is performed using a Verilog testbench.

The testbench applies different input combinations validate all Combinational . Waveforms are observed to ensure the correctness of the output for each operation.

### Simulation Tools
The design can be simulated using:
- Xilinx Vivado Simulator

### Simulation Steps (Vivado)

1. Open Vivado and create a new project.
2. Add the following files:
   - rtl
   - tb
3. Set test bench  as the top module.
4. Click **Run Simulation** → **Run Behavioral Simulation**.
5. Observe the waveform window.
6. Click **Open Elborated Design** → **Schematic**.
7. Observe the schematic of design 
8. Verify that the output matches the expected ALU operation for each select input.

### Simulation Result
- All Combinational circuit operations were verified through waveform analysis.
- The design functions correctly for all select input combinations.


