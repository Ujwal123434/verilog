# True Single Phase Clock (TSPC) D Flip-Flop Design and Analysis using Cadence Virtuoso

## Overview

This project presents the transistor-level design, simulation, and performance analysis of a True Single Phase Clock (TSPC) D Flip-Flop using **Cadence Virtuoso** with **GPDK 90nm CMOS technology**.

The TSPC D Flip-Flop is a dynamic CMOS sequential circuit that operates using a single clock phase, making it suitable for high-speed and low-power digital applications.

The circuit was designed, simulated using the Spectre simulator, and verified through transient analysis.

---

## Objectives

- Design a transistor-level TSPC D Flip-Flop.
- Verify functionality using transient simulation.
- Generate a reusable symbol for hierarchical design.
- Measure important timing and power parameters.
- Evaluate the Power Delay Product (PDP).
- Use the flip-flop as a building block for sequential circuits.

---

## Theory

The True Single Phase Clock (TSPC) D Flip-Flop is a dynamic CMOS flip-flop that requires only one clock signal.

### Advantages

- High-speed operation
- Single clock phase
- Reduced clock loading
- Lower power consumption
- Reduced transistor count
- Suitable for frequency dividers and counters

---

## Design Specifications

| Parameter | Value |
|-----------|-------|
| Technology | GPDK 90nm CMOS |
| Supply Voltage (VDD) | 1 V |
| Ground (VSS) | 0 V |
| Design Tool | Cadence Virtuoso |
| Simulator | Spectre |
| Analysis | Transient Analysis |

---

## Performance Results

| Parameter | Measured Value |
|-----------|---------------:|
| Average Power | **4.688 µW** |
| Clock-to-Q Delay | **345.9 ps** |
| Rise Time | **269.7 ps** |
| Fall Time | **269.7 ps** |

### Power Delay Product (PDP)

\[
PDP = Average\ Power \times Clock\text{-}to\text{-}Q\ Delay
\]

\[
PDP = 4.688 \times 10^{-6} \times 345.9 \times 10^{-12}
\]

**PDP = 1.62 fJ**

---

## Circuit Description

The TSPC D Flip-Flop consists of:

- PMOS pull-up network
- NMOS pull-down network
- Dynamic storage nodes
- Single-phase clock-controlled transistors
- Complementary outputs (Q and Q̅)

The circuit captures input data on the active clock edge and stores it until the next clock event.

---

## Simulation

Transient analysis was performed to verify the functionality of the circuit.

The following characteristics were measured:

- Functional waveform
- Average Power
- Clock-to-Q Delay
- Rise Time
- Fall Time
- Power Delay Product (PDP)

---

## Project Structure

```
TSPC-D-FlipFlop/
│
├── README.md
├── TSPC_D_FF.png
├── Testbench_of_TSPC_DFF.png
├── Waveform.png
└── Parameter_Result.png
```

---

## Applications

- High-Speed Processors
- Frequency Dividers
- Counters
- Clock Generation Circuits
- Low-Power VLSI Systems

---

## Tools Used

- Cadence Virtuoso
- Spectre Simulator
- GPDK 90nm CMOS Technology

---

## Author

**Ujwal Kumar L**

Electronics and Communication Engineering (ECE)
