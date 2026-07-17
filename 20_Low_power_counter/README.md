# Parameterized Low Power Counter (Verilog)

## Overview

This project implements a parameterized low-power binary counter in Verilog HDL. The design minimizes unnecessary switching activity using an active-low enable signal. The counter supports an active-low reset and generates an overflow pulse when the maximum count value is reached and wraps back to zero.

## Features

- Parameterized counter width
- Active-low synchronous reset (`rst_n`)
- Active-low enable (`en_n`)
- Low-power operation by holding the count when disabled
- Overflow indication on counter wrap-around
- Synthesizable RTL
- Verified using a Verilog testbench

## Module Description

### Inputs

| Signal | Width | Description |
|--------|------:|-------------|
| clk | 1 | System clock |
| rst_n | 1 | Active-low synchronous reset |
| en_n | 1 | Active-low enable |
| WIDTH | Parameter | Counter width |

### Outputs

| Signal | Width | Description |
|--------|------:|-------------|
| count | WIDTH | Current counter value |
| overflow | 1 | High for one clock cycle when the counter wraps from maximum value to zero |

## Functional Description

- When `rst_n = 0`, the counter resets to zero.
- When `rst_n = 1` and `en_n = 0`, the counter increments on every rising edge of the clock.
- When `en_n = 1`, the counter holds its current value, reducing unnecessary switching activity.
- When the counter reaches its maximum value (`2^WIDTH - 1`), it wraps back to zero and asserts the `overflow` signal for one clock cycle.

## Truth Table

| rst_n | en_n | Operation |
|-------:|------:|-----------|
| 0 | X | Reset counter |
| 1 | 0 | Counter increments |
| 1 | 1 | Counter holds current value |

## Simulation

The testbench verifies:

- Reset operation
- Counter increment
- Hold condition
- Overflow generation

## Project Structure

```
parameterized-low-power-counter/
│── rtl/
│   └── low_power_counter.v
│── tb/
│   └── tb_low_power_counter.v
│── waveform/
│   └── waveform.png
│── README.md
```

## Tools Used

- Verilog HDL
- Vivado Simulator / ModelSim / Icarus Verilog
- GTKWave (optional)

## Example Waveform

The waveform demonstrates:

- Active-low reset
- Active-low enable
- Counter increment
- Hold operation
- Overflow pulse during wrap-around

## Future Improvements

- Up/Down counting
- Loadable counter
- Terminal count output
- Clock-gating support
- Saturating counter mode

## Author

**Ujwal Kumar L**