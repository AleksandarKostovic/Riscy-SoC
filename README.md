# Riscy-SoC
Riscy-SoC is SoC based on RISC-V CPU core, designed in SystemVerilog.

The core uses 64 bit instrustions and is fully compatible with both regular and privilaged ISA, meaning that it supports whole RISC-V ecosystem. Core is based on RV64I model and it implements classic 5 stage RISC-V pipeline.

As output, VGA module is used to drive the display at 640X480 resolution. VGA controler used in SoC can be found [here](https://github.com/AleksandarKostovic/VGA)

Target of this SoC is iCE 40 FPGA, but only the models with 7680 LUTs.
