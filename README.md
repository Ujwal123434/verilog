###Combinational-Circuits
This folder contains basic combinational circuits written in verilog.

Combinational circuits give output based  on current inputs.
There is no clock and memory used

```
Half Adder
Full Adder
Half Subtractor
Full Subtractor 
Multiplexer
Demultiplexer
Encoder
Decoder
Comparator
```
Each circuit has
```
A Verilog design  file(.v)
A testbench file for simulation 
A schematic
```
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


