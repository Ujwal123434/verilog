# Half Adder and Full Adder (Verilog)

## Overview

This project implements **Half Adder** and **Full Adder** circuits using Verilog HDL. Both are fundamental combinational logic circuits used in digital systems for binary addition. The designs were simulated and verified using Vivado.

## Half Adder

A Half Adder adds two single-bit binary inputs and produces a **Sum** and a **Carry** output. It does not have a carry input, so it is suitable only for adding two single-bit numbers.

### Features

* Single-bit binary addition
* Combinational logic design
* Generates Sum and Carry outputs
* Implemented using Verilog HDL

### Truth Table

| A | B | Sum | Carry |
| - | - | --- | ----- |
| 0 | 0 | 0   | 0     |
| 0 | 1 | 1   | 0     |
| 1 | 0 | 1   | 0     |
| 1 | 1 | 0   | 1     |

### Logic Equations

* **Sum = A ^ B**
* **Carry = A & B**

---

## Full Adder

A Full Adder adds three single-bit binary inputs, including a carry input from a previous stage, and produces a **Sum** and **Carry Out** output. It is commonly used to build multi-bit binary adders.

### Features

* Single-bit binary addition with carry input
* Combinational logic design
* Generates Sum and Carry Out outputs
* Implemented using Verilog HDL

### Truth Table

| A | B | Cin | Sum | Cout |
| - | - | --- | --- | ---- |
| 0 | 0 | 0   | 0   | 0    |
| 0 | 0 | 1   | 1   | 0    |
| 0 | 1 | 0   | 1   | 0    |
| 0 | 1 | 1   | 0   | 1    |
| 1 | 0 | 0   | 1   | 0    |
| 1 | 0 | 1   | 0   | 1    |
| 1 | 1 | 0   | 0   | 1    |
| 1 | 1 | 1   | 1   | 1    |

### Logic Equations

* **Sum = A ^ B ^ Cin**
* **Carry Out = (A & B) | (B & Cin) | (A & Cin)**

---

## Inputs

### Half Adder

* `A` : First input bit
* `B` : Second input bit

### Full Adder

* `A` : First input bit
* `B` : Second input bit
* `Cin` : Carry input

---

## Outputs

### Half Adder

* `Sum` : Addition result
* `Carry` : Carry generated

### Full Adder

* `Sum` : Addition result
* `Cout` : Carry output

---

## Tools Used

* Verilog HDL
* Xilinx Vivado

---

## Project Structure

Adder/
├── Half_adder/
│   ├── half_adder.v
│   ├── half_adder_tb.v
│   ├── schematic.png
│   └── waveform.png
│
├── Full_adder/
│   ├── full_adder.v
│   ├── full_adder_tb.v
│   ├── schematic.png
│   └──.png
│
└── README.md

---

## Simulation

Both the Half Adder and Full Adder were verified using Verilog testbenches in Vivado. All possible input combinations were simulated, and the outputs matched their respective truth tables.

---

## Applications

* Binary arithmetic operations
* Arithmetic Logic Units (ALUs)
* Multi-bit adders
* Processors and CPUs
* Digital arithmetic circuits
