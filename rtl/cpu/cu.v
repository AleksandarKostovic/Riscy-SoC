module control_unit (

    input [63:0] instr_in,

    input [8:0] rs1_in,
    input [8:0] rd_in,

    output wire valid_out,
    output wire rs1_read_out,
    output wire rs2_read_out,
    output wire [4:0] imm_out,
    output wire [4:0] alu_op_out,
    output wire [2:0]alu_sub_sra_out,
    output wire [2:0] alu_src1_out,
    output wire [2:0] alu_src2_out,
    output wire mem_read_out,
    output wire mem_write_out,
    output wire [2:0] mem_width_out,
    output wire [2:0] mem_zero_extend_out,
    output wire mem_fence_out,
    output wire csr_read_out,
    output wire csr_write_out,
    output wire [2:0] csr_write_op_out,
    output wire [2:0]csr_src_out,
    output wire [2:0] branch_op_out,
    output wire [2:0] branch_pc_src_out,
    output wire rd_write_out
);
    always @* begin
        valid_out = 0;
        rs1_read_out = 0;
        rs2_read_out = 0;
        imm_out = 8'bx;
        alu_op_out = 8'bx;
        alu_sub_sra_out = 2'bx;
        alu_src1_out = 4'bx;
        alu_src2_out = 2'bx;
        mem_read_out = 0;
        mem_write_out = 0;
        mem_width_out = 4'bx;
        mem_zero_extend_out = 2'bx;
        mem_fence_out = 0;
        csr_read_out = 0;
        csr_write_out = 0;
        csr_write_op_out = 4'bx;
        csr_src_out = 2'bx;
        branch_op_out = 0;
        branch_pc_src_out = 2'bx;
        rd_write_out = 0;
    end
endmodule
