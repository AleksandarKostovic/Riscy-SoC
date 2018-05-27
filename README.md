# Riscy-SoC
Riscy-SoC is SoC based on RISC-V CPU core, previously designed with SystemVerilog, but is now in transition to Verilog. The reason for it is that the open-source FPGA tools support only Verilog, so a re-disign is needed.

The core uses 64 bit instrustions and is fully compatible with both regular and privilaged ISA, meaning that it supports whole RISC-V ecosystem. Core is based on RV64I model and it implements classic 5 stage RISC-V pipeline.

Target of this SoC is iCE 40 FPGA, but only the models with 7680 LUTs
