# Riscy-SoC
Riscy-SoC is SoC based on RISC-V CPU core, previously designed in SystemVerilog, but has been adapted to Verilog because current open-source tools dont support SystemVerilog.

The core uses 64 bit instrustions and supports whole RISC-V ecosystem. Core is based on RV64I model and it implements classic 5 stage RISC-V pipeline.

This is a re-work of the [Icicle](https://github.com/grahamedgecombe/icicle) CPU, so that it supports 64 bit version, features updated control and status registers(CSRs) and works with open-source tools like APIO.
