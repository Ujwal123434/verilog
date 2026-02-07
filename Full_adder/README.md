# Full Adder
The project implements a Full Adder using Verilog.  
A full adder is a combinational circuit used to add three 1-bit binary numbers.

## Inputs
- a
- b
- c (carry-in)

## Outputs
- sum
- carry (carry-out)

## Truth Table

| A | B | C | Sum | Carry |
|---|---|-----|-----|-------|
| 0 | 0 |  0  |  0  |   0   |
| 0 | 0 |  1  |  1  |   0   |
| 0 | 1 |  0  |  1  |   0   |
| 0 | 1 |  1  |  0  |   1   |
| 1 | 0 |  0  |  1  |   0   |
| 1 | 0 |  1  |  0  |   1   |
| 1 | 1 |  0  |  0  |   1   |
| 1 | 1 |  1  |  1  |   1   |

## Logic used
- sum = `a ^ b ^ cin`
- carry = `(a & b) | (cin & (a ^ b))`

## Implementations 
- Using eqations of sum and carry
- Using two half adders

## Files
- full_adder.v
- full_adder_tb.v
- full_adder schematic
- waveform

## Notes
- Includes carry-in and carry-out
- This is a combinational circuit
- Used as a basic building block for multi-bit adders



