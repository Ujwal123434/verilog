# Half Subtractor
The project implements a Half Subtractor using Verilog.  
A half subtractor is a combinational circuit used to subtract two 1-bit binary numbers.

## Inputs
- a (minuend)
- b (subtrahend)

## Outputs
- diff (difference)
- borrow (borrow-out)

## Truth Table

| A | B | Diff | Borrow |
|---|---|------|--------|
| 0 | 0 |  0   |   0    |
| 0 | 1 |  1   |   1    |
| 1 | 0 |  1   |   0    |
| 1 | 1 |  0   |   0    |

## Logic used
- diff = `a ^ b`
- borrow = `~a & b`

## Files
- half_subtractor.v
- half_subtractor_tb.v
- half_subtractor schematic
- waveform

## Notes
- Does not include borrow-in
- This is a combinational circuit
- Used as a basic building block for full subtractors
