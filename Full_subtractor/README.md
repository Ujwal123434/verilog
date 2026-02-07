# Full Subtractor
The project implements a Full Subtractor using Verilog.  
A full subtractor is a combinational circuit used to subtract three 1-bit binary numbers.

## Inputs
- a (minuend)
- b (subtrahend)
- c (borrow-in)

## Outputs
- diff (difference)
- bout (borrow-out)

## Truth Table

| A | B | C   | Diff | Borrow |
|---|---|-----|------|------|
| 0 | 0 |  0  |  0   |  0   |
| 0 | 0 |  1  |  1   |  1   |
| 0 | 1 |  0  |  1   |  1   |
| 0 | 1 |  1  |  0   |  1   |
| 1 | 0 |  0  |  1   |  0   |
| 1 | 0 |  1  |  0   |  0   |
| 1 | 1 |  0  |  0   |  0   |
| 1 | 1 |  1  |  1   |  1   |

## Logic used
- diff = `a ^ b ^ c`
- borrow = `(~a & b) | (c & (~a ^ b))`

## Implementations
- Using equations of difference and borrow
- Using two half subtractors and an OR gate

## Files
- full_subtractor.v
- full_subtractor_tb.v
- full_subtractor schematic
- waveform

## Notes
- Includes borrow-in and borrow-out
- This is a combinational circuit
- Used as a basic building block for multi-bit subtractors
