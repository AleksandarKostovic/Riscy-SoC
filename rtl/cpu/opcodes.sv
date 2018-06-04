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

`define ALU_ADD  4'd0
`define ALU_SLL  4'd1
`define ALU_SLT  4'd2
`define ALU_SLTU 4'd3
`define ALU_XOR  4'd4
`define ALU_SRL  4'd5
`define ALU_SRA  4'd6
`define ALU_OR   4'd7
`define ALU_AND	 4'd8
`define ALU_LUI  4'd9
`define ALU_NONE 4'd10

`define MEM_REQ_READ	 1'b0
`define MEM_REQ_WRITE	 1'b1
`define MEM_CMD_READ	 1'b0
`define MEM_CMD_WRITE	 1'b1

`define F12_ECALL   12'b000000000000
`define F12_EBREAK  12'b000000000001
`define F12_ERET    12'b000100000000
`define F12_WFI     12'b000100000010

`endif
