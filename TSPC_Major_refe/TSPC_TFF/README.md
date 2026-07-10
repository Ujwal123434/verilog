# T Flip-Flop Design using TSPC D Flip-Flop in Cadence Virtuoso

## Overview

This project presents the design and simulation of a **T (Toggle) Flip-Flop** using a previously designed **True Single Phase Clock (TSPC) D Flip-Flop** and a CMOS XOR gate in **Cadence Virtuoso** using **GPDK 90nm CMOS technology**.

The T Flip-Flop is implemented by applying the relation:

\[
D = T \oplus Q
\]

where the XOR gate generates the required D input using the external T input and the feedback from the output Q.

The design is verified through transient simulation using the Spectre simulator.

---

## Objectives

- Design a T Flip-Flop using a TSPC D Flip-Flop.
- Implement XOR feedback logic.
- Verify toggle operation using transient analysis.
- Generate a reusable symbol for hierarchical designs.
- Use the T Flip-Flop as a building block for counters and sequential circuits.

---

## Theory

A T Flip-Flop changes its output only when the input **T** is HIGH.

Characteristic Equation:

\[
Q_{next}=T\oplus Q
\]

Since the T Flip-Flop is implemented using a D Flip-Flop,

\[
D=T\oplus Q
\]

where

- **T = 0** → Output holds its previous state.
- **T = 1** → Output toggles at every active clock edge.

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

## Circuit Description

The design consists of:

- CMOS XOR Gate
- TSPC D Flip-Flop
- Feedback path from Q to XOR
- Single clock input
- Complementary outputs (Q and Q̅)

The XOR output is connected to the D input of the TSPC D Flip-Flop.

---

## Functional Verification

The transient simulation verifies the following operations:

| T | Clock Edge | Q(next) |
|---|------------|---------|
| 0 | ↑ | No Change |
| 1 | ↑ | Toggle |

Simulation confirms that the output toggles only when **T = 1** and remains unchanged when **T = 0**.

---

## Project Structure

```
TSPC-T-FlipFlop/
│
├── README.md
├── TSPC_T_FF.png
├── XOR_Gate.png
├── Testbench_of_TFF.png
├── Waveform.png
```

---

## Applications

- Binary Counters
- Frequency Dividers
- Event Counters
- Digital Sequential Systems
- Finite State Machines
- Clock Division Circuits

---

## Tools Used

- Cadence Virtuoso
- Spectre Simulator
- GPDK 90nm CMOS Technology

---

## Future Work

- Design asynchronous ripple counter using the T Flip-Flop.
- Implement synchronous binary counter.
- Compare power and delay with other flip-flop architectures.
- Perform layout design and area analysis.

---

## Author

**Ujwal Kumar L**

Electronics and Communication Engineering (ECE)