# Riscy-SoC
Riscy-SoC is SoC based on RISC-V CPU core, previously designed in SystemVerilog, but has been adapted to Verilog because current open-source tools dont support SystemVerilog.

The core uses 64 bit instrustions and supports whole RISC-V ecosystem. Core is based on RV64I model and it implements classic 5 stage RISC-V pipeline.

This is a re-work of the [Icicle](https://github.com/grahamedgecombe/icicle) CPU, so that it supports 64 bit version, features updated control and status registers(CSRs) and works with open-source tools like APIO.

## How to build

You can easly build it using yosys synthesis tool the following way:

```
yosys

#read_verilog top.v

synth_ice40 -abc2 -top top -blif top.blif

```
After you have created a bitstream for iCE40 FPGA, you can use whatever the bootloader/programmer you have for your FPGA board.
