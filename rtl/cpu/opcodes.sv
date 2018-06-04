`define INST_WIDTH     64'b0

`define LOAD     7'b0000011
`define STORE    7'b0100011
`define MADD     7'b1000011
`define BRANCH   7'b1100011
`define LOAD_FP  7'b0000111
`define STORE_FP 7'b0100111 
`define MSUB     7'b1000111
`define NOP      7'b0010011
`define JALR     7'b1100111
`define NMSUB    7'b1001011
`define MISC_MEM 7'b0001111
`define AMO      7'b0101111
`define NMADD    7'b1001111
`define JAL      7'b1101111
`define OP_IMM   7'b0010011
`define OP       7'b0110011
`define OP_FP    7'b1010011
`define SYSTEM   7'b1110011
`define AUIPC    7'b0010111
`define LUI      7'b0110111
`define OP_SYS   7'b1111011

`define F3_ADD  3'b000
`define F3_SLL  3'b001
`define F3_SLT  3'b010
`define F3_SLTU 3'b011
`define F3_XOR  3'b100
`define F3_SR   3'b101
`define F3_OR   3'b110
`define F3_AND  3'b111

`define F3_BEQ  3'b000
`define F3_BNE  3'b001
`define F3_BLT  3'b100
`define F3_BGE  3'b101
`define F3_BLTU 3'b110
`define F3_BGEU 3'b111

`define F3_LB  3'b000
`define F3_LH  3'b001 
`define F3_LW  3'b010 
`define F3_LBU 3'b100 
`define F3_LHU 3'b101 

`define F3_SB 3'b000 
`define F3_SH 3'b001 
`define F3_SW 3'b010 

`define ALU_OP_ADD_SUB 6'b000000
`define ALU_OP_XOR     6'b001001
`define ALU_OP_OR      6'b010010
`define ALU_OP_AND     6'b011011
`define ALU_OP_SLL     6'b100100
`define ALU_OP_SRL_SRA 6'b101101
`define ALU_OP_SLT     6'b110110
`define ALU_OP_SLTU    6'b111111

`define ALU_SRC1_REG  4'b0000
`define ALU_SRC1_PC   4'b0101
`define ALU_SRC1_ZERO 4'b1010
`define ALU_SRC2_REG  4'b0000
`define ALU_SRC2_IMM  4'b0101
`define ALU_SRC2_FOUR 4'b1010

`define MEM_REQ_READ	 1'b0
`define MEM_REQ_WRITE	 1'b1
`define MEM_CMD_READ	 1'b0
`define MEM_CMD_WRITE	 1'b1

`define F12_ECALL   12'b000000000000
`define F12_EBREAK  12'b000000000001
`define F12_ERET    12'b000100000000
`define F12_WFI     12'b000100000010

`endif
