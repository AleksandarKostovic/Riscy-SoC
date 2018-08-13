CROSS=riscv64-linux-gnu-

all: progmem

progmem: progmem.c
	$(CROSS)gcc "$<" -o "$@"
	$(CROSS)objcopy --output-target ihex "$@" rtl/cpu/"$@"_syn.hex

clean:
	$(RM) progmem
