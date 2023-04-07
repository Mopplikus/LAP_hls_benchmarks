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

// SystemVerilog created from bb_gaussian_B5
// Created for function/kernel gaussian
// SystemVerilog created on Fri Apr  7 17:25:52 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module gaussian_bb_B5 (
    input wire [0:0] in_feedback_in_10,
    output wire [0:0] out_feedback_stall_out_10,
    input wire [0:0] in_feedback_valid_in_10,
    input wire [31:0] in_add55_0,
    input wire [31:0] in_add55_1,
    input wire [0:0] in_cmp41658_0,
    input wire [0:0] in_cmp41658_1,
    input wire [0:0] in_forked26_0,
    input wire [0:0] in_forked26_1,
    input wire [31:0] in_fpga_indvars_iv746_0,
    input wire [31:0] in_fpga_indvars_iv746_1,
    input wire [31:0] in_fpga_indvars_iv943_0,
    input wire [31:0] in_fpga_indvars_iv943_1,
    input wire [31:0] in_j_01849_0,
    input wire [31:0] in_j_01849_1,
    input wire [0:0] in_memdep_phi4_pop72952_0,
    input wire [0:0] in_memdep_phi4_pop72952_1,
    input wire [0:0] in_stall_in_0,
    input wire [32:0] in_unnamed_gaussian4_0,
    input wire [32:0] in_unnamed_gaussian4_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c0_exe11,
    output wire [31:0] out_c0_exe12,
    output wire [31:0] out_c0_exe13,
    output wire [0:0] out_c0_exe14,
    output wire [32:0] out_c0_exe15,
    output wire [31:0] out_c0_exe16,
    output wire [0:0] out_c0_exe17,
    output wire [0:0] out_c0_exe191,
    output wire [0:0] out_c0_exe292,
    output wire [0:0] out_c0_exe3,
    output wire [31:0] out_c0_exe4,
    output wire [0:0] out_c0_exe5,
    output wire [31:0] out_c0_exe6,
    output wire [31:0] out_c0_exe7,
    output wire [31:0] out_c0_exe8,
    output wire [31:0] out_c0_exe9,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_memdep_phi_pop10,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_gaussian_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going19_gaussian2_exiting_stall_out;
    wire [0:0] bb_gaussian_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going19_gaussian2_exiting_valid_out;
    wire [31:0] bb_gaussian_B5_stall_region_out_c0_exe11;
    wire [31:0] bb_gaussian_B5_stall_region_out_c0_exe12;
    wire [31:0] bb_gaussian_B5_stall_region_out_c0_exe13;
    wire [0:0] bb_gaussian_B5_stall_region_out_c0_exe14;
    wire [32:0] bb_gaussian_B5_stall_region_out_c0_exe15;
    wire [31:0] bb_gaussian_B5_stall_region_out_c0_exe16;
    wire [0:0] bb_gaussian_B5_stall_region_out_c0_exe17;
    wire [0:0] bb_gaussian_B5_stall_region_out_c0_exe191;
    wire [0:0] bb_gaussian_B5_stall_region_out_c0_exe292;
    wire [0:0] bb_gaussian_B5_stall_region_out_c0_exe3;
    wire [31:0] bb_gaussian_B5_stall_region_out_c0_exe4;
    wire [0:0] bb_gaussian_B5_stall_region_out_c0_exe5;
    wire [31:0] bb_gaussian_B5_stall_region_out_c0_exe6;
    wire [31:0] bb_gaussian_B5_stall_region_out_c0_exe7;
    wire [31:0] bb_gaussian_B5_stall_region_out_c0_exe8;
    wire [31:0] bb_gaussian_B5_stall_region_out_c0_exe9;
    wire [0:0] bb_gaussian_B5_stall_region_out_feedback_stall_out_10;
    wire [0:0] bb_gaussian_B5_stall_region_out_memdep_phi_pop10;
    wire [0:0] bb_gaussian_B5_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_gaussian_B5_stall_region_out_stall_out;
    wire [0:0] bb_gaussian_B5_stall_region_out_valid_out;
    wire [31:0] gaussian_B5_branch_out_c0_exe11;
    wire [31:0] gaussian_B5_branch_out_c0_exe12;
    wire [31:0] gaussian_B5_branch_out_c0_exe13;
    wire [0:0] gaussian_B5_branch_out_c0_exe14;
    wire [32:0] gaussian_B5_branch_out_c0_exe15;
    wire [31:0] gaussian_B5_branch_out_c0_exe16;
    wire [0:0] gaussian_B5_branch_out_c0_exe17;
    wire [0:0] gaussian_B5_branch_out_c0_exe191;
    wire [0:0] gaussian_B5_branch_out_c0_exe292;
    wire [0:0] gaussian_B5_branch_out_c0_exe3;
    wire [31:0] gaussian_B5_branch_out_c0_exe4;
    wire [0:0] gaussian_B5_branch_out_c0_exe5;
    wire [31:0] gaussian_B5_branch_out_c0_exe6;
    wire [31:0] gaussian_B5_branch_out_c0_exe7;
    wire [31:0] gaussian_B5_branch_out_c0_exe8;
    wire [31:0] gaussian_B5_branch_out_c0_exe9;
    wire [0:0] gaussian_B5_branch_out_memdep_phi_pop10;
    wire [0:0] gaussian_B5_branch_out_stall_out;
    wire [0:0] gaussian_B5_branch_out_valid_out_0;
    wire [31:0] gaussian_B5_merge_out_add55;
    wire [0:0] gaussian_B5_merge_out_cmp41658;
    wire [0:0] gaussian_B5_merge_out_forked26;
    wire [31:0] gaussian_B5_merge_out_fpga_indvars_iv746;
    wire [31:0] gaussian_B5_merge_out_fpga_indvars_iv943;
    wire [31:0] gaussian_B5_merge_out_j_01849;
    wire [0:0] gaussian_B5_merge_out_memdep_phi4_pop72952;
    wire [0:0] gaussian_B5_merge_out_stall_out_0;
    wire [0:0] gaussian_B5_merge_out_stall_out_1;
    wire [32:0] gaussian_B5_merge_out_unnamed_gaussian4;
    wire [0:0] gaussian_B5_merge_out_valid_out;


    // gaussian_B5_branch(BLACKBOX,6)
    gaussian_B5_branch thegaussian_B5_branch (
        .in_c0_exe11(bb_gaussian_B5_stall_region_out_c0_exe11),
        .in_c0_exe12(bb_gaussian_B5_stall_region_out_c0_exe12),
        .in_c0_exe13(bb_gaussian_B5_stall_region_out_c0_exe13),
        .in_c0_exe14(bb_gaussian_B5_stall_region_out_c0_exe14),
        .in_c0_exe15(bb_gaussian_B5_stall_region_out_c0_exe15),
        .in_c0_exe16(bb_gaussian_B5_stall_region_out_c0_exe16),
        .in_c0_exe17(bb_gaussian_B5_stall_region_out_c0_exe17),
        .in_c0_exe191(bb_gaussian_B5_stall_region_out_c0_exe191),
        .in_c0_exe292(bb_gaussian_B5_stall_region_out_c0_exe292),
        .in_c0_exe3(bb_gaussian_B5_stall_region_out_c0_exe3),
        .in_c0_exe4(bb_gaussian_B5_stall_region_out_c0_exe4),
        .in_c0_exe5(bb_gaussian_B5_stall_region_out_c0_exe5),
        .in_c0_exe6(bb_gaussian_B5_stall_region_out_c0_exe6),
        .in_c0_exe7(bb_gaussian_B5_stall_region_out_c0_exe7),
        .in_c0_exe8(bb_gaussian_B5_stall_region_out_c0_exe8),
        .in_c0_exe9(bb_gaussian_B5_stall_region_out_c0_exe9),
        .in_memdep_phi_pop10(bb_gaussian_B5_stall_region_out_memdep_phi_pop10),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_gaussian_B5_stall_region_out_valid_out),
        .out_c0_exe11(gaussian_B5_branch_out_c0_exe11),
        .out_c0_exe12(gaussian_B5_branch_out_c0_exe12),
        .out_c0_exe13(gaussian_B5_branch_out_c0_exe13),
        .out_c0_exe14(gaussian_B5_branch_out_c0_exe14),
        .out_c0_exe15(gaussian_B5_branch_out_c0_exe15),
        .out_c0_exe16(gaussian_B5_branch_out_c0_exe16),
        .out_c0_exe17(gaussian_B5_branch_out_c0_exe17),
        .out_c0_exe191(gaussian_B5_branch_out_c0_exe191),
        .out_c0_exe292(gaussian_B5_branch_out_c0_exe292),
        .out_c0_exe3(gaussian_B5_branch_out_c0_exe3),
        .out_c0_exe4(gaussian_B5_branch_out_c0_exe4),
        .out_c0_exe5(gaussian_B5_branch_out_c0_exe5),
        .out_c0_exe6(gaussian_B5_branch_out_c0_exe6),
        .out_c0_exe7(gaussian_B5_branch_out_c0_exe7),
        .out_c0_exe8(gaussian_B5_branch_out_c0_exe8),
        .out_c0_exe9(gaussian_B5_branch_out_c0_exe9),
        .out_memdep_phi_pop10(gaussian_B5_branch_out_memdep_phi_pop10),
        .out_stall_out(gaussian_B5_branch_out_stall_out),
        .out_valid_out_0(gaussian_B5_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // gaussian_B5_merge(BLACKBOX,7)
    gaussian_B5_merge thegaussian_B5_merge (
        .in_add55_0(in_add55_0),
        .in_add55_1(in_add55_1),
        .in_cmp41658_0(in_cmp41658_0),
        .in_cmp41658_1(in_cmp41658_1),
        .in_forked26_0(in_forked26_0),
        .in_forked26_1(in_forked26_1),
        .in_fpga_indvars_iv746_0(in_fpga_indvars_iv746_0),
        .in_fpga_indvars_iv746_1(in_fpga_indvars_iv746_1),
        .in_fpga_indvars_iv943_0(in_fpga_indvars_iv943_0),
        .in_fpga_indvars_iv943_1(in_fpga_indvars_iv943_1),
        .in_j_01849_0(in_j_01849_0),
        .in_j_01849_1(in_j_01849_1),
        .in_memdep_phi4_pop72952_0(in_memdep_phi4_pop72952_0),
        .in_memdep_phi4_pop72952_1(in_memdep_phi4_pop72952_1),
        .in_stall_in(bb_gaussian_B5_stall_region_out_stall_out),
        .in_unnamed_gaussian4_0(in_unnamed_gaussian4_0),
        .in_unnamed_gaussian4_1(in_unnamed_gaussian4_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_add55(gaussian_B5_merge_out_add55),
        .out_cmp41658(gaussian_B5_merge_out_cmp41658),
        .out_forked26(gaussian_B5_merge_out_forked26),
        .out_fpga_indvars_iv746(gaussian_B5_merge_out_fpga_indvars_iv746),
        .out_fpga_indvars_iv943(gaussian_B5_merge_out_fpga_indvars_iv943),
        .out_j_01849(gaussian_B5_merge_out_j_01849),
        .out_memdep_phi4_pop72952(gaussian_B5_merge_out_memdep_phi4_pop72952),
        .out_stall_out_0(gaussian_B5_merge_out_stall_out_0),
        .out_stall_out_1(gaussian_B5_merge_out_stall_out_1),
        .out_unnamed_gaussian4(gaussian_B5_merge_out_unnamed_gaussian4),
        .out_valid_out(gaussian_B5_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B5_stall_region(BLACKBOX,2)
    gaussian_bb_B5_stall_region thebb_gaussian_B5_stall_region (
        .in_add55(gaussian_B5_merge_out_add55),
        .in_cmp41658(gaussian_B5_merge_out_cmp41658),
        .in_feedback_in_10(in_feedback_in_10),
        .in_feedback_valid_in_10(in_feedback_valid_in_10),
        .in_forked26(gaussian_B5_merge_out_forked26),
        .in_fpga_indvars_iv746(gaussian_B5_merge_out_fpga_indvars_iv746),
        .in_fpga_indvars_iv943(gaussian_B5_merge_out_fpga_indvars_iv943),
        .in_j_01849(gaussian_B5_merge_out_j_01849),
        .in_memdep_phi4_pop72952(gaussian_B5_merge_out_memdep_phi4_pop72952),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(gaussian_B5_branch_out_stall_out),
        .in_unnamed_gaussian4(gaussian_B5_merge_out_unnamed_gaussian4),
        .in_valid_in(gaussian_B5_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going19_gaussian2_exiting_stall_out(bb_gaussian_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going19_gaussian2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going19_gaussian2_exiting_valid_out(bb_gaussian_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going19_gaussian2_exiting_valid_out),
        .out_c0_exe11(bb_gaussian_B5_stall_region_out_c0_exe11),
        .out_c0_exe12(bb_gaussian_B5_stall_region_out_c0_exe12),
        .out_c0_exe13(bb_gaussian_B5_stall_region_out_c0_exe13),
        .out_c0_exe14(bb_gaussian_B5_stall_region_out_c0_exe14),
        .out_c0_exe15(bb_gaussian_B5_stall_region_out_c0_exe15),
        .out_c0_exe16(bb_gaussian_B5_stall_region_out_c0_exe16),
        .out_c0_exe17(bb_gaussian_B5_stall_region_out_c0_exe17),
        .out_c0_exe191(bb_gaussian_B5_stall_region_out_c0_exe191),
        .out_c0_exe292(bb_gaussian_B5_stall_region_out_c0_exe292),
        .out_c0_exe3(bb_gaussian_B5_stall_region_out_c0_exe3),
        .out_c0_exe4(bb_gaussian_B5_stall_region_out_c0_exe4),
        .out_c0_exe5(bb_gaussian_B5_stall_region_out_c0_exe5),
        .out_c0_exe6(bb_gaussian_B5_stall_region_out_c0_exe6),
        .out_c0_exe7(bb_gaussian_B5_stall_region_out_c0_exe7),
        .out_c0_exe8(bb_gaussian_B5_stall_region_out_c0_exe8),
        .out_c0_exe9(bb_gaussian_B5_stall_region_out_c0_exe9),
        .out_feedback_stall_out_10(bb_gaussian_B5_stall_region_out_feedback_stall_out_10),
        .out_memdep_phi_pop10(bb_gaussian_B5_stall_region_out_memdep_phi_pop10),
        .out_pipeline_valid_out(bb_gaussian_B5_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_gaussian_B5_stall_region_out_stall_out),
        .out_valid_out(bb_gaussian_B5_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_10_sync(GPOUT,4)
    assign out_feedback_stall_out_10 = bb_gaussian_B5_stall_region_out_feedback_stall_out_10;

    // out_c0_exe11(GPOUT,27)
    assign out_c0_exe11 = gaussian_B5_branch_out_c0_exe11;

    // out_c0_exe12(GPOUT,28)
    assign out_c0_exe12 = gaussian_B5_branch_out_c0_exe12;

    // out_c0_exe13(GPOUT,29)
    assign out_c0_exe13 = gaussian_B5_branch_out_c0_exe13;

    // out_c0_exe14(GPOUT,30)
    assign out_c0_exe14 = gaussian_B5_branch_out_c0_exe14;

    // out_c0_exe15(GPOUT,31)
    assign out_c0_exe15 = gaussian_B5_branch_out_c0_exe15;

    // out_c0_exe16(GPOUT,32)
    assign out_c0_exe16 = gaussian_B5_branch_out_c0_exe16;

    // out_c0_exe17(GPOUT,33)
    assign out_c0_exe17 = gaussian_B5_branch_out_c0_exe17;

    // out_c0_exe191(GPOUT,34)
    assign out_c0_exe191 = gaussian_B5_branch_out_c0_exe191;

    // out_c0_exe292(GPOUT,35)
    assign out_c0_exe292 = gaussian_B5_branch_out_c0_exe292;

    // out_c0_exe3(GPOUT,36)
    assign out_c0_exe3 = gaussian_B5_branch_out_c0_exe3;

    // out_c0_exe4(GPOUT,37)
    assign out_c0_exe4 = gaussian_B5_branch_out_c0_exe4;

    // out_c0_exe5(GPOUT,38)
    assign out_c0_exe5 = gaussian_B5_branch_out_c0_exe5;

    // out_c0_exe6(GPOUT,39)
    assign out_c0_exe6 = gaussian_B5_branch_out_c0_exe6;

    // out_c0_exe7(GPOUT,40)
    assign out_c0_exe7 = gaussian_B5_branch_out_c0_exe7;

    // out_c0_exe8(GPOUT,41)
    assign out_c0_exe8 = gaussian_B5_branch_out_c0_exe8;

    // out_c0_exe9(GPOUT,42)
    assign out_c0_exe9 = gaussian_B5_branch_out_c0_exe9;

    // out_exiting_stall_out(GPOUT,43)
    assign out_exiting_stall_out = bb_gaussian_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going19_gaussian2_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,44)
    assign out_exiting_valid_out = bb_gaussian_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going19_gaussian2_exiting_valid_out;

    // out_memdep_phi_pop10(GPOUT,45)
    assign out_memdep_phi_pop10 = gaussian_B5_branch_out_memdep_phi_pop10;

    // out_stall_out_0(GPOUT,46)
    assign out_stall_out_0 = gaussian_B5_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,47)
    assign out_stall_out_1 = gaussian_B5_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,48)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,49)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,50)
    assign out_valid_out_0 = gaussian_B5_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,52)
    assign out_pipeline_valid_out = bb_gaussian_B5_stall_region_out_pipeline_valid_out;

endmodule
