# 4-Bit Adder_Come_Subtractor 

This project implements a 4-bit Adder–Cum–Subtractor using Verilog.

An adder–subtractor is a combinational circuit that performs both addition and subtraction using 2’s complement arithmetic.

For a 4-bit adder–subtractor, two 4-bit inputs are processed and one 4-bit output is generated based on a control signal.

---

## Operation Mode

- **M = 0** → Addition (A + B)  
- **M = 1** → Subtraction (A − B)  

Subtraction is implemented as:

A − B = A + (2’s complement of B)

---

## Inputs

- `A3` – MSB of input A  
- `A2`  
- `A1`  
- `A0` – LSB of input A  

- `B3` – MSB of input B  
- `B2`  
- `B1`  
- `B0` – LSB of input B  

- `M` – Mode control signal  
  - `0` → Addition  
  - `1` → Subtraction  

---

## Outputs

- `S3` – MSB of result  
- `S2`  
- `S1`  
- `S0` – LSB of result  

- `Cout` – Carry out  
- `Overflow` – Overflow flag  

---

## Truth Table (Operation Level)

| M | Operation |
|---|-----------|
| 0 | A + B     |
| 1 | A − B     |

---

## Bit-Level Modification of B

Each bit of B is XORed with control signal M.

| M | Bi | Bi_modified |
|---|----|-------------|
| 0 | 0  | 0           |
| 0 | 1  | 1           |
| 1 | 0  | 1           |
| 1 | 1  | 0           |

Initial carry input:

Carry_in = M

---

## Logic Equations

Modified B:

Bi_modified = Bi XOR M

Sum:

S = A + B_modified + M

Overflow:

Overflow = Carry_into_MSB XOR Cout

---

## Notes

- This is a combinational circuit.
- Subtraction is performed using 2’s complement arithmetic.
- A ripple carry structure is used.
- Only one operation is active at a time.
- The design can be extended to N-bit systems.
