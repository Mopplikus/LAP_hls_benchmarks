// ------------------------------------------------------------------------- 
// High Level Design Compiler for Intel(R) FPGAs Version 21.4 (Release Build #53.1)
// 
// Legal Notice: Copyright 2021 Intel Corporation.  All rights reserved.
// Your use of  Intel Corporation's design tools,  logic functions and other
// software and  tools, and its AMPP partner logic functions, and any output
// files any  of the foregoing (including  device programming  or simulation
// files), and  any associated  documentation  or information  are expressly
// subject  to the terms and  conditions of the  Intel FPGA Software License
// Agreement, Intel MegaCore Function License Agreement, or other applicable
// license agreement,  including,  without limitation,  that your use is for
// the  sole  purpose of  programming  logic devices  manufactured by  Intel
// and  sold by Intel  or its authorized  distributors. Please refer  to the
// applicable agreement for further details.
// ---------------------------------------------------------------------------

// SystemVerilog created from atax_B5_branch
// Created for function/kernel atax
// SystemVerilog created on Tue Jun 13 01:54:01 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_B5_branch (
    input wire [31:0] in_add758_pop37,
    input wire [0:0] in_exitcond1251_pop32,
    input wire [63:0] in_mPtr_bitcast_index8846_pop30,
    input wire [0:0] in_masked,
    input wire [0:0] in_memdep,
    input wire [0:0] in_notcmp3553_pop33,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_add758_pop37,
    output wire [0:0] out_exitcond1251_pop32,
    output wire [63:0] out_mPtr_bitcast_index8846_pop30,
    output wire [0:0] out_memdep,
    output wire [0:0] out_notcmp3553_pop33,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    reg [31:0] add758_pop37_reg_q;
    wire [0:0] atax_B5_branch_enable_q;
    wire [0:0] atax_B5_branch_enable_not_q;
    reg [0:0] exitcond1251_pop32_reg_q;
    reg [63:0] mPtr_bitcast_index8846_pop30_reg_q;
    wire [0:0] masked_cmp_q;
    reg [0:0] memdep_reg_q;
    wire [0:0] not_stall_in_0_q;
    wire [0:0] not_stall_in_1_q;
    wire [0:0] not_valid_0_q;
    wire [0:0] not_valid_1_q;
    wire [0:0] not_valid_or_not_stall_0_q;
    wire [0:0] not_valid_or_not_stall_1_q;
    reg [0:0] notcmp3553_pop33_reg_q;
    reg [0:0] valid_0_reg_q;
    reg [0:0] valid_1_reg_q;
    wire [0:0] valid_out_0_and_q;
    wire [0:0] valid_out_1_and_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_in_1(LOGICAL,19)
    assign not_stall_in_1_q = ~ (in_stall_in_1);

    // masked_cmp(LOGICAL,16)
    assign masked_cmp_q = ~ (in_masked);

    // valid_out_1_and(LOGICAL,36)
    assign valid_out_1_and_q = in_valid_in & masked_cmp_q;

    // valid_1_reg(REG,34)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_1_reg_q <= $unsigned(1'b0);
        end
        else if (atax_B5_branch_enable_q == 1'b1)
        begin
            valid_1_reg_q <= valid_out_1_and_q;
        end
    end

    // not_valid_1(LOGICAL,21)
    assign not_valid_1_q = ~ (valid_1_reg_q);

    // not_valid_or_not_stall_1(LOGICAL,23)
    assign not_valid_or_not_stall_1_q = not_valid_1_q | not_stall_in_1_q;

    // not_stall_in_0(LOGICAL,18)
    assign not_stall_in_0_q = ~ (in_stall_in_0);

    // valid_out_0_and(LOGICAL,35)
    assign valid_out_0_and_q = in_valid_in & in_masked;

    // valid_0_reg(REG,33)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_0_reg_q <= $unsigned(1'b0);
        end
        else if (atax_B5_branch_enable_q == 1'b1)
        begin
            valid_0_reg_q <= valid_out_0_and_q;
        end
    end

    // not_valid_0(LOGICAL,20)
    assign not_valid_0_q = ~ (valid_0_reg_q);

    // not_valid_or_not_stall_0(LOGICAL,22)
    assign not_valid_or_not_stall_0_q = not_valid_0_q | not_stall_in_0_q;

    // atax_B5_branch_enable(LOGICAL,3)
    assign atax_B5_branch_enable_q = not_valid_or_not_stall_0_q & not_valid_or_not_stall_1_q;

    // add758_pop37_reg(REG,2)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            add758_pop37_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (atax_B5_branch_enable_q == 1'b1)
        begin
            add758_pop37_reg_q <= in_add758_pop37;
        end
    end

    // out_add758_pop37(GPOUT,25)
    assign out_add758_pop37 = add758_pop37_reg_q;

    // exitcond1251_pop32_reg(REG,5)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            exitcond1251_pop32_reg_q <= $unsigned(1'b0);
        end
        else if (atax_B5_branch_enable_q == 1'b1)
        begin
            exitcond1251_pop32_reg_q <= in_exitcond1251_pop32;
        end
    end

    // out_exitcond1251_pop32(GPOUT,26)
    assign out_exitcond1251_pop32 = exitcond1251_pop32_reg_q;

    // mPtr_bitcast_index8846_pop30_reg(REG,15)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            mPtr_bitcast_index8846_pop30_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (atax_B5_branch_enable_q == 1'b1)
        begin
            mPtr_bitcast_index8846_pop30_reg_q <= in_mPtr_bitcast_index8846_pop30;
        end
    end

    // out_mPtr_bitcast_index8846_pop30(GPOUT,27)
    assign out_mPtr_bitcast_index8846_pop30 = mPtr_bitcast_index8846_pop30_reg_q;

    // memdep_reg(REG,17)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            memdep_reg_q <= $unsigned(1'b0);
        end
        else if (atax_B5_branch_enable_q == 1'b1)
        begin
            memdep_reg_q <= in_memdep;
        end
    end

    // out_memdep(GPOUT,28)
    assign out_memdep = memdep_reg_q;

    // notcmp3553_pop33_reg(REG,24)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            notcmp3553_pop33_reg_q <= $unsigned(1'b0);
        end
        else if (atax_B5_branch_enable_q == 1'b1)
        begin
            notcmp3553_pop33_reg_q <= in_notcmp3553_pop33;
        end
    end

    // out_notcmp3553_pop33(GPOUT,29)
    assign out_notcmp3553_pop33 = notcmp3553_pop33_reg_q;

    // atax_B5_branch_enable_not(LOGICAL,4)
    assign atax_B5_branch_enable_not_q = ~ (atax_B5_branch_enable_q);

    // out_stall_out(GPOUT,30)
    assign out_stall_out = atax_B5_branch_enable_not_q;

    // out_valid_out_0(GPOUT,31)
    assign out_valid_out_0 = valid_0_reg_q;

    // out_valid_out_1(GPOUT,32)
    assign out_valid_out_1 = valid_1_reg_q;

endmodule
