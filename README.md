# Riscy-SoC
Riscy-SoC is SoC based on RISC-V CPU core, previously designed in SystemVerilog, but has been adapted to Verilog because current open-source tools dont support SystemVerilog.

This is a re-work of the [Icicle](https://github.com/grahamedgecombe/icicle) CPU, so that it supports 64 bit version and works with open-source tools like APIO.

## About the core
The RISC-V core is RV64I compatible CPU with classic RISC 5-stage pipeline.

It has shared instruction and data memory (which is 8KiB).
## How to build

Prerequisite: [Yosys](http://www.clifford.at/yosys/), [IceStorm](http://www.clifford.at/icestorm/) and [NextPnR](https://github.com/YosysHQ/nextpnr).
You can build it for Lattice iCE 40 family of FPGA's using yosys synthesis in the tool the following way:

```
git clone https://github.com/AleksandarKostovic/Riscy-SoC.git
cd Riscy-SoC/rtl/cpu

yosys -p 'synth_ice40 -top top -json top.json' top.v               # syntesize into top.json
nextpnr-ice40 --hx1k --json top.json --pcf top.pcf --asc top.asc   # run place and route
icepack top.asc top.bin                                            # generate binary bitstream file
```
After you have created a bitstream for FPGA, ran place and route, you can use whatever bootloader/programmer you have for your FPGA board. If you use TinyFPGA, ICEbreaker or Arty-7, you can use [TinyProg](https://www.github.com/tinyfpga/TinyFPGA-Bootloader) to upload the bitstream.

```
tinyprog -p top.bin
```

