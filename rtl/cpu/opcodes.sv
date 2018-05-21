`define INST_WIDTH     64'b0

`define LOAD     7'b0000011
`define STORE    7'b0100011
`define MADD     7'b1000011
`define BRANCH   7'b1100011

`define LOAD_FP  7'b0000111
`define STORE_FP 7'b0100111 
`define MSUB     7'b1000111
`define JALR     7'b1100111

`define CUSTOM_0 7'b0001011
`define CUSTOM_1 7'b0101011
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

`define CUSTOM_2 7'b1011011
`define CUSTOM_3 7'b1111011


`define FUNCT3_ADD_SUB 0
`define FUNCT3_SLL     1
`define FUNCT3_SLT     2
`define FUNCT3_SLTU    3
`define FUNCT3_XOR     4
`define FUNCT3_SRA_SRL 5
`define FUNCT3_OR      6
`define FUNCT3_AND     7


`define FUNCT3_BEQ  0
`define FUNCT3_BNE  1
`define FUNCT3_BLT  4
`define FUNCT3_BGE  5
`define FUNCT3_BLTU 6
`define FUNCT3_BGEU 7

`define FUNCT3_FENCE   0
`define FUNCT3_FENCE_I 1


`define FUNCT3_PRIV   0
`define FUNCT3_CSRRW  1
`define FUNCT3_CSRRS  2
`define FUNCT3_CSRRC  3
`define FUNCT3_CSRRWI 5
`define FUNCT3_CSRRSI 6
`define FUNCT3_CSRRCI 7


`define FUNCT12_ECALL  12'b000000000000
`define FUNCT12_EBREAK 12'b000000000001
`define FUNCT12_ERET   12'b000100000000
`define FUNCT12_WFI    12'b000100000010

`define FUNCT7_MUL_DIV 7'd1

`define FUNCT3_MUL    3'd0
`define FUNCT3_MULH   3'd1
`define FUNCT3_MULHSU 3'd2
`define FUNCT3_MULHU  3'd3
`define FUNCT3_DIV    3'd4
`define FUNCT3_DIVU   3'd5
`define FUNCT3_REM    3'd6
`define FUNCT3_REMU   3'd7

`endif
