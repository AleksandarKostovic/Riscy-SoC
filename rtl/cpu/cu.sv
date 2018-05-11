module control_unit (

    input [63:0] instr_in,

    input [8:0] rs1_in,
    input [8:0] rd_in,

    output logic valid_out,
    output logic rs1_read_out,
    output logic rs2_read_out,
    output logic [4:0] imm_out,
    output logic [4:0] alu_op_out,
    output logic alu_sub_sra_out,
    output logic [2:0] alu_src1_out,
    output logic [2:0] alu_src2_out,
    output logic mem_read_out,
    output logic mem_write_out,
    output logic [2:0] mem_width_out,
    output logic mem_zero_extend_out,
    output logic mem_fence_out,
    output logic csr_read_out,
    output logic csr_write_out,
    output logic [2:0] csr_write_op_out,
    output logic csr_src_out,
    output logic [2:0] branch_op_out,
    output logic branch_pc_src_out,
    output logic rd_write_out
);
    always_comb begin
        valid_out = 0;
        rs1_read_out = 0;
        rs2_read_out = 0;
        imm_out = 7'bx;
        alu_op_out = 7'bx;
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
