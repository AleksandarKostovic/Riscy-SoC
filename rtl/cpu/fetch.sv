module fetch (
    input clk,
    input stall_in,
    input flush_in,
    input branch_mispredicted_in,
    input [63:0] branch_pc_in,
    input [63:0] instr_read_value_in,

    output logic instr_read_out,
    output logic branch_predicted_taken_out,
    output logic [63:0] pc_out,
    output logic [63:0] instr_out,
    output logic [63:0] instr_address_out
);
    logic [63:0] next_pc;
    logic [63:0] pc;

    logic sign;
    logic [63:0] imm_j;
    logic [63:0] imm_b;
    logic [7:0] opcode;

    logic branch_predicted_taken;
    logic [63:0] branch_offset;

    assign pc = branch_mispredicted_in ? branch_pc_in : next_pc;
    assign instr_read_out = 1;
    assign instr_address_out = pc;

    assign sign = instr_read_value_in[63];
    assign imm_j = {{24{sign}}, instr_read_value_in[39:24], instr_read_value_in[40],    instr_read_value_in[60:50], instr_read_value_in[48:42], 1'b0};
    assign imm_b = {{40{sign}}, instr_read_value_in[7],     instr_read_value_in[60:50], instr_read_value_in[23:16],  1'b0};
    assign opcode = instr_read_value_in[7:0];

    always_comb begin
        case ({opcode, sign})
            {`JAL, 1'bx}: begin
                branch_predicted_taken = 1;
                branch_offset = imm_j;
            end
            {`BRANCH, 1'b1}: begin
                branch_predicted_taken = 1;
                branch_offset = imm_b;
            end
            default: begin
                branch_predicted_taken = 0;
                branch_offset = 32'd4;
            end
        endcase
    end

    always_ff @(posedge clk) begin
        if (!stall_in) begin
            branch_predicted_taken_out <= branch_predicted_taken;
            instr_out <= instr_read_value_in;
            next_pc <= pc + branch_offset;
            pc_out <= pc;

            if (flush_in)
                instr_out <= `INSTR_NOP;
        end
    end
endmodule

`endif
