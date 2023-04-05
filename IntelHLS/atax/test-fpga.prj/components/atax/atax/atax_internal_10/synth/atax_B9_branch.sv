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

// SystemVerilog created from atax_B9_branch
// Created for function/kernel atax
// SystemVerilog created on Wed Apr  5 13:56:00 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_B9_branch (
    input wire [63:0] in_c0_exe2179,
    input wire [31:0] in_c0_exe3180,
    input wire [0:0] in_c0_exe4181,
    input wire [0:0] in_c0_exe5182,
    input wire [63:0] in_c0_exe6183,
    input wire [0:0] in_c0_exe7184,
    input wire [0:0] in_c0_exe8,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in,
    output wire [63:0] out_c0_exe2179,
    output wire [31:0] out_c0_exe3180,
    output wire [0:0] out_c0_exe5182,
    output wire [63:0] out_c0_exe6183,
    output wire [0:0] out_c0_exe7184,
    output wire [0:0] out_c0_exe8,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] atax_B9_branch_enable_q;
    wire [0:0] atax_B9_branch_enable_not_q;
    reg [63:0] c0_exe2179_reg_q;
    reg [31:0] c0_exe3180_reg_q;
    wire [0:0] c0_exe4181_cmp_q;
    reg [0:0] c0_exe5182_reg_q;
    reg [63:0] c0_exe6183_reg_q;
    reg [0:0] c0_exe7184_reg_q;
    reg [0:0] c0_exe8_reg_q;
    wire [0:0] not_stall_in_0_q;
    wire [0:0] not_stall_in_1_q;
    wire [0:0] not_valid_0_q;
    wire [0:0] not_valid_1_q;
    wire [0:0] not_valid_or_not_stall_0_q;
    wire [0:0] not_valid_or_not_stall_1_q;
    reg [0:0] valid_0_reg_q;
    reg [0:0] valid_1_reg_q;
    wire [0:0] valid_out_0_and_q;
    wire [0:0] valid_out_1_and_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_in_1(LOGICAL,22)
    assign not_stall_in_1_q = ~ (in_stall_in_1);

    // c0_exe4181_cmp(LOGICAL,6)
    assign c0_exe4181_cmp_q = ~ (in_c0_exe4181);

    // valid_out_1_and(LOGICAL,39)
    assign valid_out_1_and_q = in_valid_in & c0_exe4181_cmp_q;

    // valid_1_reg(REG,37)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_1_reg_q <= $unsigned(1'b0);
        end
        else if (atax_B9_branch_enable_q == 1'b1)
        begin
            valid_1_reg_q <= valid_out_1_and_q;
        end
    end

    // not_valid_1(LOGICAL,24)
    assign not_valid_1_q = ~ (valid_1_reg_q);

    // not_valid_or_not_stall_1(LOGICAL,26)
    assign not_valid_or_not_stall_1_q = not_valid_1_q | not_stall_in_1_q;

    // not_stall_in_0(LOGICAL,21)
    assign not_stall_in_0_q = ~ (in_stall_in_0);

    // valid_out_0_and(LOGICAL,38)
    assign valid_out_0_and_q = in_valid_in & in_c0_exe4181;

    // valid_0_reg(REG,36)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_0_reg_q <= $unsigned(1'b0);
        end
        else if (atax_B9_branch_enable_q == 1'b1)
        begin
            valid_0_reg_q <= valid_out_0_and_q;
        end
    end

    // not_valid_0(LOGICAL,23)
    assign not_valid_0_q = ~ (valid_0_reg_q);

    // not_valid_or_not_stall_0(LOGICAL,25)
    assign not_valid_or_not_stall_0_q = not_valid_0_q | not_stall_in_0_q;

    // atax_B9_branch_enable(LOGICAL,2)
    assign atax_B9_branch_enable_q = not_valid_or_not_stall_0_q & not_valid_or_not_stall_1_q;

    // c0_exe2179_reg(REG,4)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe2179_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (atax_B9_branch_enable_q == 1'b1)
        begin
            c0_exe2179_reg_q <= in_c0_exe2179;
        end
    end

    // out_c0_exe2179(GPOUT,27)
    assign out_c0_exe2179 = c0_exe2179_reg_q;

    // c0_exe3180_reg(REG,5)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe3180_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (atax_B9_branch_enable_q == 1'b1)
        begin
            c0_exe3180_reg_q <= in_c0_exe3180;
        end
    end

    // out_c0_exe3180(GPOUT,28)
    assign out_c0_exe3180 = c0_exe3180_reg_q;

    // c0_exe5182_reg(REG,7)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe5182_reg_q <= $unsigned(1'b0);
        end
        else if (atax_B9_branch_enable_q == 1'b1)
        begin
            c0_exe5182_reg_q <= in_c0_exe5182;
        end
    end

    // out_c0_exe5182(GPOUT,29)
    assign out_c0_exe5182 = c0_exe5182_reg_q;

    // c0_exe6183_reg(REG,8)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe6183_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (atax_B9_branch_enable_q == 1'b1)
        begin
            c0_exe6183_reg_q <= in_c0_exe6183;
        end
    end

    // out_c0_exe6183(GPOUT,30)
    assign out_c0_exe6183 = c0_exe6183_reg_q;

    // c0_exe7184_reg(REG,9)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe7184_reg_q <= $unsigned(1'b0);
        end
        else if (atax_B9_branch_enable_q == 1'b1)
        begin
            c0_exe7184_reg_q <= in_c0_exe7184;
        end
    end

    // out_c0_exe7184(GPOUT,31)
    assign out_c0_exe7184 = c0_exe7184_reg_q;

    // c0_exe8_reg(REG,10)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe8_reg_q <= $unsigned(1'b0);
        end
        else if (atax_B9_branch_enable_q == 1'b1)
        begin
            c0_exe8_reg_q <= in_c0_exe8;
        end
    end

    // out_c0_exe8(GPOUT,32)
    assign out_c0_exe8 = c0_exe8_reg_q;

    // atax_B9_branch_enable_not(LOGICAL,3)
    assign atax_B9_branch_enable_not_q = ~ (atax_B9_branch_enable_q);

    // out_stall_out(GPOUT,33)
    assign out_stall_out = atax_B9_branch_enable_not_q;

    // out_valid_out_0(GPOUT,34)
    assign out_valid_out_0 = valid_0_reg_q;

    // out_valid_out_1(GPOUT,35)
    assign out_valid_out_1 = valid_1_reg_q;

endmodule
