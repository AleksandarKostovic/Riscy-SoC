# Riscy-SoC
Riscy-SoC is SoC based on RISC-V CPU core, previously designed in SystemVerilog, but has been adapted to Verilog because current open-source tools dont support SystemVerilog.

This is a re-work of the [Icicle](https://github.com/grahamedgecombe/icicle) CPU, so that it supports 64 bit version and works with open-source tools like APIO.

## About the core
The RISC-V core is RV64I compatible CPU with classic RISC 5-stage pipeline.

It has shared instruction and data memory (which is 8KiB).
## How to build


You can build it for Lattice iCE 40 family of FPGA's using yosys synthesis in the tool the following way:

```
git clone https://github.com/AleksandarKostovic/Riscy-SoC.git
cd Riscy-SoC/rtl/cpu

yosys
read_verilog top.v

synth_ice40 -top top -blif top.blif
```
After you have created a bitstream for FPGA, you must use place and route tool to wire the design to FPGA. Project [IceStorm](http://www.clifford.at/icestorm/) is good for that (the Apache PnR in it) or you can also use [Next PnR](https://github.com/YosysHQ/nextpnr). In the end you can use whatever bootloader/programmer you have for your FPGA board.
