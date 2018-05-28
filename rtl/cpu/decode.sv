`ifndef DECODE
`define DECODE

`include "cu.v"
`include "regs.v"

module decode (
    input clk,

    input stall_in,
    input flush_in,

    input branch_predicted_taken_in,

    input [8:0] rd_in,
    input rd_write_in,

    input [63:0] pc_in,
    input [63:0] instr_in,

    input [63:0] rd_value_in,

    output [8:0] rs1_unreg_out,
    output rs1_read_unreg_out,
    output [8:0] rs2_unreg_out,
    output rs2_read_unreg_out,
    output mem_fence_unreg_out,

    output branch_predicted_taken_out,
    output valid_out,
    output [8:0] rs1_out,
    output [8:0] rs2_out,
    output [4:0] alu_op_out,
    output alu_sub_sra_out,
    output [2:0] alu_src1_out,
    output [2:0] alu_src2_out,
    output mem_read_out,
    output mem_write_out,
    output [2:0] mem_width_out,
    output mem_zero_extend_out,
    output mem_fence_out,
    output csr_read_out,
    output csr_write_out,
    output [2:0] csr_write_op_out,
    output csr_src_out,
    output [2:0] branch_op_out,
    output branch_pc_src_out,
    output [8:0] rd_out,
    output rd_write_out,

    output [63:0] pc_out,
    output [63:0] rs1_value_out,
    output [63:0] rs2_value_out,
    output [63:0] imm_value_out,
    output [23:0] csr_out
);
    logic [8:0] rs2;
    logic [8:0] rs1;
    logic [8:0] rd;

    assign rs2 = instr_in[48:40];
    assign rs1 = instr_in[39:31];
    assign rd  = instr_in[23:15];

    assign rs1_unreg_out = rs1;
    assign rs2_unreg_out = rs2;

    regs regs (
        .clk(clk),
        .stall_in(stall_in),

        .rs1_in(rs1),
        .rs2_in(rs2),
        .rd_in(rd_in),
        .rd_write_in(rd_write_in),

        .rd_value_in(rd_value_in),

        .rs1_value_out(rs1_value_out),
        .rs2_value_out(rs2_value_out)
    );

    logic valid;
    logic rs1_read;
    logic rs2_read;
    logic [4:0] imm;
    logic [4:0] alu_op;
    logic alu_sub_sra;
    logic [2:0] alu_src1;
    logic [2:0] alu_src2;
    logic mem_read;
    logic mem_write;
    logic [2:0] mem_width;
    logic mem_zero_extend;
    logic mem_fence;
    logic csr_read;
    logic csr_write;
    logic [2:0] csr_write_op;
    logic csr_src;
    logic [2:0] branch_op;
    logic branch_pc_src;
    logic rd_write;

    assign rs1_read_unreg_out = rs1_read;
    assign rs2_read_unreg_out = rs2_read;
    assign mem_fence_unreg_out = mem_fence;

    control_unit control_unit (

        .instr_in(instr_in),

        .rs1_in(rs1),
        .rd_in(rd),

        .valid_out(valid),
        .rs1_read_out(rs1_read),
        .rs2_read_out(rs2_read),
        .imm_out(imm),
        .alu_op_out(alu_op),
        .alu_sub_sra_out(alu_sub_sra),
        .alu_src1_out(alu_src1),
        .alu_src2_out(alu_src2),
        .mem_read_out(mem_read),
        .mem_write_out(mem_write),
        .mem_width_out(mem_width),
        .mem_zero_extend_out(mem_zero_extend),
        .mem_fence_out(mem_fence),
        .csr_read_out(csr_read),
        .csr_write_out(csr_write),
        .csr_write_op_out(csr_write_op),
        .csr_src_out(csr_src),
        .branch_op_out(branch_op),
        .branch_pc_src_out(branch_pc_src),
        .rd_write_out(rd_write)
    );

    logic [63:0] imm_value;

    imm_mux imm_mux (

        .imm_in(imm),

        .instr_in(instr_in),

        .imm_value_out(imm_value)
    );

    logic [23:0] csr;

    assign csr = instr_in[63:40];

    always_ff @(posedge clk) begin
        if (!stall_in) begin
            branch_predicted_taken_out <= branch_predicted_taken_in;
            valid_out <= valid;
            rs1_out <= rs1;
            rs2_out <= rs2;
            alu_op_out <= alu_op;
            alu_sub_sra_out <= alu_sub_sra;
            alu_src1_out <= alu_src1;
            alu_src2_out <= alu_src2;
            mem_read_out <= mem_read;
            mem_write_out <= mem_write;
            mem_width_out <= mem_width;
            mem_zero_extend_out <= mem_zero_extend;
            mem_fence_out <= mem_fence;
            csr_read_out <= csr_read;
            csr_write_out <= csr_write;
            csr_write_op_out <= csr_write_op;
            csr_src_out <= csr_src;
            branch_op_out <= branch_op;
            branch_pc_src_out <= branch_pc_src;
            rd_out <= rd;
            rd_write_out <= rd_write;

            pc_out <= pc_in;
            imm_value_out <= imm_value;
            csr_out <= csr;

            if (flush_in) begin
                valid_out <= 0;
                mem_read_out <= 0;
                mem_write_out <= 0;
                csr_read_out <= 0;
                csr_write_out <= 0;
                branch_op_out <= 0;
                rd_write_out <= 0;
            end
        end
    end
endmodule

`endif
