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

// SystemVerilog created from bb_covariance_B10
// Created for function/kernel covariance
// SystemVerilog created on Tue Jun 13 02:07:48 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_bb_B10 (
    input wire [0:0] in_feedback_in_50,
    output wire [0:0] out_feedback_stall_out_50,
    input wire [0:0] in_feedback_valid_in_50,
    input wire [0:0] in_exitcond21159_0,
    input wire [0:0] in_exitcond21159_1,
    input wire [0:0] in_forked27_0,
    input wire [0:0] in_forked27_1,
    input wire [32:0] in_fpga_indvars_iv14_pop23156_0,
    input wire [32:0] in_fpga_indvars_iv14_pop23156_1,
    input wire [31:0] in_i21_072_pop24150_0,
    input wire [31:0] in_i21_072_pop24150_1,
    input wire [31:0] in_lim_ext81_pop42145_0,
    input wire [31:0] in_lim_ext81_pop42145_1,
    input wire [31:0] in_lim_ext82_pop26168_0,
    input wire [31:0] in_lim_ext82_pop26168_1,
    input wire [0:0] in_memdep_phi3_pop25165_0,
    input wire [0:0] in_memdep_phi3_pop25165_1,
    input wire [31:0] in_mul47153_0,
    input wire [31:0] in_mul47153_1,
    input wire [0:0] in_notcmp31162_0,
    input wire [0:0] in_notcmp31162_1,
    input wire [31:0] in_reorder_limiter_enter122_0,
    input wire [31:0] in_reorder_limiter_enter122_1,
    input wire [31:0] in_reorder_limiter_enter86_pop27171_0,
    input wire [31:0] in_reorder_limiter_enter86_pop27171_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe10346,
    output wire [0:0] out_c0_exe11347,
    output wire [31:0] out_c0_exe12348,
    output wire [31:0] out_c0_exe13,
    output wire [0:0] out_c0_exe1337,
    output wire [31:0] out_c0_exe14,
    output wire [31:0] out_c0_exe15,
    output wire [32:0] out_c0_exe16,
    output wire [0:0] out_c0_exe17,
    output wire [0:0] out_c0_exe18,
    output wire [0:0] out_c0_exe19,
    output wire [31:0] out_c0_exe20,
    output wire [31:0] out_c0_exe21,
    output wire [0:0] out_c0_exe2338,
    output wire [31:0] out_c0_exe3339,
    output wire [31:0] out_c0_exe4340,
    output wire [31:0] out_c0_exe5341,
    output wire [31:0] out_c0_exe6342,
    output wire [31:0] out_c0_exe7343,
    output wire [0:0] out_c0_exe8344,
    output wire [0:0] out_c0_exe9345,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_memdep_phi2_pop50,
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

    wire [0:0] bb_covariance_B10_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_covariance2_exiting_stall_out;
    wire [0:0] bb_covariance_B10_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_covariance2_exiting_valid_out;
    wire [0:0] bb_covariance_B10_stall_region_out_c0_exe10346;
    wire [0:0] bb_covariance_B10_stall_region_out_c0_exe11347;
    wire [31:0] bb_covariance_B10_stall_region_out_c0_exe12348;
    wire [31:0] bb_covariance_B10_stall_region_out_c0_exe13;
    wire [0:0] bb_covariance_B10_stall_region_out_c0_exe1337;
    wire [31:0] bb_covariance_B10_stall_region_out_c0_exe14;
    wire [31:0] bb_covariance_B10_stall_region_out_c0_exe15;
    wire [32:0] bb_covariance_B10_stall_region_out_c0_exe16;
    wire [0:0] bb_covariance_B10_stall_region_out_c0_exe17;
    wire [0:0] bb_covariance_B10_stall_region_out_c0_exe18;
    wire [0:0] bb_covariance_B10_stall_region_out_c0_exe19;
    wire [31:0] bb_covariance_B10_stall_region_out_c0_exe20;
    wire [31:0] bb_covariance_B10_stall_region_out_c0_exe21;
    wire [0:0] bb_covariance_B10_stall_region_out_c0_exe2338;
    wire [31:0] bb_covariance_B10_stall_region_out_c0_exe3339;
    wire [31:0] bb_covariance_B10_stall_region_out_c0_exe4340;
    wire [31:0] bb_covariance_B10_stall_region_out_c0_exe5341;
    wire [31:0] bb_covariance_B10_stall_region_out_c0_exe6342;
    wire [31:0] bb_covariance_B10_stall_region_out_c0_exe7343;
    wire [0:0] bb_covariance_B10_stall_region_out_c0_exe8344;
    wire [0:0] bb_covariance_B10_stall_region_out_c0_exe9345;
    wire [0:0] bb_covariance_B10_stall_region_out_feedback_stall_out_50;
    wire [0:0] bb_covariance_B10_stall_region_out_memdep_phi2_pop50;
    wire [0:0] bb_covariance_B10_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_covariance_B10_stall_region_out_stall_out;
    wire [0:0] bb_covariance_B10_stall_region_out_valid_out;
    wire [0:0] covariance_B10_branch_out_c0_exe10346;
    wire [0:0] covariance_B10_branch_out_c0_exe11347;
    wire [31:0] covariance_B10_branch_out_c0_exe12348;
    wire [31:0] covariance_B10_branch_out_c0_exe13;
    wire [0:0] covariance_B10_branch_out_c0_exe1337;
    wire [31:0] covariance_B10_branch_out_c0_exe14;
    wire [31:0] covariance_B10_branch_out_c0_exe15;
    wire [32:0] covariance_B10_branch_out_c0_exe16;
    wire [0:0] covariance_B10_branch_out_c0_exe17;
    wire [0:0] covariance_B10_branch_out_c0_exe18;
    wire [0:0] covariance_B10_branch_out_c0_exe19;
    wire [31:0] covariance_B10_branch_out_c0_exe20;
    wire [31:0] covariance_B10_branch_out_c0_exe21;
    wire [0:0] covariance_B10_branch_out_c0_exe2338;
    wire [31:0] covariance_B10_branch_out_c0_exe3339;
    wire [31:0] covariance_B10_branch_out_c0_exe4340;
    wire [31:0] covariance_B10_branch_out_c0_exe5341;
    wire [31:0] covariance_B10_branch_out_c0_exe6342;
    wire [31:0] covariance_B10_branch_out_c0_exe7343;
    wire [0:0] covariance_B10_branch_out_c0_exe8344;
    wire [0:0] covariance_B10_branch_out_c0_exe9345;
    wire [0:0] covariance_B10_branch_out_memdep_phi2_pop50;
    wire [0:0] covariance_B10_branch_out_stall_out;
    wire [0:0] covariance_B10_branch_out_valid_out_0;
    wire [0:0] covariance_B10_merge_out_exitcond21159;
    wire [0:0] covariance_B10_merge_out_forked27;
    wire [32:0] covariance_B10_merge_out_fpga_indvars_iv14_pop23156;
    wire [31:0] covariance_B10_merge_out_i21_072_pop24150;
    wire [31:0] covariance_B10_merge_out_lim_ext81_pop42145;
    wire [31:0] covariance_B10_merge_out_lim_ext82_pop26168;
    wire [0:0] covariance_B10_merge_out_memdep_phi3_pop25165;
    wire [31:0] covariance_B10_merge_out_mul47153;
    wire [0:0] covariance_B10_merge_out_notcmp31162;
    wire [31:0] covariance_B10_merge_out_reorder_limiter_enter122;
    wire [31:0] covariance_B10_merge_out_reorder_limiter_enter86_pop27171;
    wire [0:0] covariance_B10_merge_out_stall_out_0;
    wire [0:0] covariance_B10_merge_out_stall_out_1;
    wire [0:0] covariance_B10_merge_out_valid_out;


    // covariance_B10_branch(BLACKBOX,3)
    covariance_B10_branch thecovariance_B10_branch (
        .in_c0_exe10346(bb_covariance_B10_stall_region_out_c0_exe10346),
        .in_c0_exe11347(bb_covariance_B10_stall_region_out_c0_exe11347),
        .in_c0_exe12348(bb_covariance_B10_stall_region_out_c0_exe12348),
        .in_c0_exe13(bb_covariance_B10_stall_region_out_c0_exe13),
        .in_c0_exe1337(bb_covariance_B10_stall_region_out_c0_exe1337),
        .in_c0_exe14(bb_covariance_B10_stall_region_out_c0_exe14),
        .in_c0_exe15(bb_covariance_B10_stall_region_out_c0_exe15),
        .in_c0_exe16(bb_covariance_B10_stall_region_out_c0_exe16),
        .in_c0_exe17(bb_covariance_B10_stall_region_out_c0_exe17),
        .in_c0_exe18(bb_covariance_B10_stall_region_out_c0_exe18),
        .in_c0_exe19(bb_covariance_B10_stall_region_out_c0_exe19),
        .in_c0_exe20(bb_covariance_B10_stall_region_out_c0_exe20),
        .in_c0_exe21(bb_covariance_B10_stall_region_out_c0_exe21),
        .in_c0_exe2338(bb_covariance_B10_stall_region_out_c0_exe2338),
        .in_c0_exe3339(bb_covariance_B10_stall_region_out_c0_exe3339),
        .in_c0_exe4340(bb_covariance_B10_stall_region_out_c0_exe4340),
        .in_c0_exe5341(bb_covariance_B10_stall_region_out_c0_exe5341),
        .in_c0_exe6342(bb_covariance_B10_stall_region_out_c0_exe6342),
        .in_c0_exe7343(bb_covariance_B10_stall_region_out_c0_exe7343),
        .in_c0_exe8344(bb_covariance_B10_stall_region_out_c0_exe8344),
        .in_c0_exe9345(bb_covariance_B10_stall_region_out_c0_exe9345),
        .in_memdep_phi2_pop50(bb_covariance_B10_stall_region_out_memdep_phi2_pop50),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_covariance_B10_stall_region_out_valid_out),
        .out_c0_exe10346(covariance_B10_branch_out_c0_exe10346),
        .out_c0_exe11347(covariance_B10_branch_out_c0_exe11347),
        .out_c0_exe12348(covariance_B10_branch_out_c0_exe12348),
        .out_c0_exe13(covariance_B10_branch_out_c0_exe13),
        .out_c0_exe1337(covariance_B10_branch_out_c0_exe1337),
        .out_c0_exe14(covariance_B10_branch_out_c0_exe14),
        .out_c0_exe15(covariance_B10_branch_out_c0_exe15),
        .out_c0_exe16(covariance_B10_branch_out_c0_exe16),
        .out_c0_exe17(covariance_B10_branch_out_c0_exe17),
        .out_c0_exe18(covariance_B10_branch_out_c0_exe18),
        .out_c0_exe19(covariance_B10_branch_out_c0_exe19),
        .out_c0_exe20(covariance_B10_branch_out_c0_exe20),
        .out_c0_exe21(covariance_B10_branch_out_c0_exe21),
        .out_c0_exe2338(covariance_B10_branch_out_c0_exe2338),
        .out_c0_exe3339(covariance_B10_branch_out_c0_exe3339),
        .out_c0_exe4340(covariance_B10_branch_out_c0_exe4340),
        .out_c0_exe5341(covariance_B10_branch_out_c0_exe5341),
        .out_c0_exe6342(covariance_B10_branch_out_c0_exe6342),
        .out_c0_exe7343(covariance_B10_branch_out_c0_exe7343),
        .out_c0_exe8344(covariance_B10_branch_out_c0_exe8344),
        .out_c0_exe9345(covariance_B10_branch_out_c0_exe9345),
        .out_memdep_phi2_pop50(covariance_B10_branch_out_memdep_phi2_pop50),
        .out_stall_out(covariance_B10_branch_out_stall_out),
        .out_valid_out_0(covariance_B10_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // covariance_B10_merge(BLACKBOX,4)
    covariance_B10_merge thecovariance_B10_merge (
        .in_exitcond21159_0(in_exitcond21159_0),
        .in_exitcond21159_1(in_exitcond21159_1),
        .in_forked27_0(in_forked27_0),
        .in_forked27_1(in_forked27_1),
        .in_fpga_indvars_iv14_pop23156_0(in_fpga_indvars_iv14_pop23156_0),
        .in_fpga_indvars_iv14_pop23156_1(in_fpga_indvars_iv14_pop23156_1),
        .in_i21_072_pop24150_0(in_i21_072_pop24150_0),
        .in_i21_072_pop24150_1(in_i21_072_pop24150_1),
        .in_lim_ext81_pop42145_0(in_lim_ext81_pop42145_0),
        .in_lim_ext81_pop42145_1(in_lim_ext81_pop42145_1),
        .in_lim_ext82_pop26168_0(in_lim_ext82_pop26168_0),
        .in_lim_ext82_pop26168_1(in_lim_ext82_pop26168_1),
        .in_memdep_phi3_pop25165_0(in_memdep_phi3_pop25165_0),
        .in_memdep_phi3_pop25165_1(in_memdep_phi3_pop25165_1),
        .in_mul47153_0(in_mul47153_0),
        .in_mul47153_1(in_mul47153_1),
        .in_notcmp31162_0(in_notcmp31162_0),
        .in_notcmp31162_1(in_notcmp31162_1),
        .in_reorder_limiter_enter122_0(in_reorder_limiter_enter122_0),
        .in_reorder_limiter_enter122_1(in_reorder_limiter_enter122_1),
        .in_reorder_limiter_enter86_pop27171_0(in_reorder_limiter_enter86_pop27171_0),
        .in_reorder_limiter_enter86_pop27171_1(in_reorder_limiter_enter86_pop27171_1),
        .in_stall_in(bb_covariance_B10_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_exitcond21159(covariance_B10_merge_out_exitcond21159),
        .out_forked27(covariance_B10_merge_out_forked27),
        .out_fpga_indvars_iv14_pop23156(covariance_B10_merge_out_fpga_indvars_iv14_pop23156),
        .out_i21_072_pop24150(covariance_B10_merge_out_i21_072_pop24150),
        .out_lim_ext81_pop42145(covariance_B10_merge_out_lim_ext81_pop42145),
        .out_lim_ext82_pop26168(covariance_B10_merge_out_lim_ext82_pop26168),
        .out_memdep_phi3_pop25165(covariance_B10_merge_out_memdep_phi3_pop25165),
        .out_mul47153(covariance_B10_merge_out_mul47153),
        .out_notcmp31162(covariance_B10_merge_out_notcmp31162),
        .out_reorder_limiter_enter122(covariance_B10_merge_out_reorder_limiter_enter122),
        .out_reorder_limiter_enter86_pop27171(covariance_B10_merge_out_reorder_limiter_enter86_pop27171),
        .out_stall_out_0(covariance_B10_merge_out_stall_out_0),
        .out_stall_out_1(covariance_B10_merge_out_stall_out_1),
        .out_valid_out(covariance_B10_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B10_stall_region(BLACKBOX,2)
    covariance_bb_B10_stall_region thebb_covariance_B10_stall_region (
        .in_exitcond21159(covariance_B10_merge_out_exitcond21159),
        .in_feedback_in_50(in_feedback_in_50),
        .in_feedback_valid_in_50(in_feedback_valid_in_50),
        .in_forked27(covariance_B10_merge_out_forked27),
        .in_fpga_indvars_iv14_pop23156(covariance_B10_merge_out_fpga_indvars_iv14_pop23156),
        .in_i21_072_pop24150(covariance_B10_merge_out_i21_072_pop24150),
        .in_lim_ext81_pop42145(covariance_B10_merge_out_lim_ext81_pop42145),
        .in_lim_ext82_pop26168(covariance_B10_merge_out_lim_ext82_pop26168),
        .in_memdep_phi3_pop25165(covariance_B10_merge_out_memdep_phi3_pop25165),
        .in_mul47153(covariance_B10_merge_out_mul47153),
        .in_notcmp31162(covariance_B10_merge_out_notcmp31162),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_reorder_limiter_enter122(covariance_B10_merge_out_reorder_limiter_enter122),
        .in_reorder_limiter_enter86_pop27171(covariance_B10_merge_out_reorder_limiter_enter86_pop27171),
        .in_stall_in(covariance_B10_branch_out_stall_out),
        .in_valid_in(covariance_B10_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_covariance2_exiting_stall_out(bb_covariance_B10_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_covariance2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_covariance2_exiting_valid_out(bb_covariance_B10_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_covariance2_exiting_valid_out),
        .out_c0_exe10346(bb_covariance_B10_stall_region_out_c0_exe10346),
        .out_c0_exe11347(bb_covariance_B10_stall_region_out_c0_exe11347),
        .out_c0_exe12348(bb_covariance_B10_stall_region_out_c0_exe12348),
        .out_c0_exe13(bb_covariance_B10_stall_region_out_c0_exe13),
        .out_c0_exe1337(bb_covariance_B10_stall_region_out_c0_exe1337),
        .out_c0_exe14(bb_covariance_B10_stall_region_out_c0_exe14),
        .out_c0_exe15(bb_covariance_B10_stall_region_out_c0_exe15),
        .out_c0_exe16(bb_covariance_B10_stall_region_out_c0_exe16),
        .out_c0_exe17(bb_covariance_B10_stall_region_out_c0_exe17),
        .out_c0_exe18(bb_covariance_B10_stall_region_out_c0_exe18),
        .out_c0_exe19(bb_covariance_B10_stall_region_out_c0_exe19),
        .out_c0_exe20(bb_covariance_B10_stall_region_out_c0_exe20),
        .out_c0_exe21(bb_covariance_B10_stall_region_out_c0_exe21),
        .out_c0_exe2338(bb_covariance_B10_stall_region_out_c0_exe2338),
        .out_c0_exe3339(bb_covariance_B10_stall_region_out_c0_exe3339),
        .out_c0_exe4340(bb_covariance_B10_stall_region_out_c0_exe4340),
        .out_c0_exe5341(bb_covariance_B10_stall_region_out_c0_exe5341),
        .out_c0_exe6342(bb_covariance_B10_stall_region_out_c0_exe6342),
        .out_c0_exe7343(bb_covariance_B10_stall_region_out_c0_exe7343),
        .out_c0_exe8344(bb_covariance_B10_stall_region_out_c0_exe8344),
        .out_c0_exe9345(bb_covariance_B10_stall_region_out_c0_exe9345),
        .out_feedback_stall_out_50(bb_covariance_B10_stall_region_out_feedback_stall_out_50),
        .out_memdep_phi2_pop50(bb_covariance_B10_stall_region_out_memdep_phi2_pop50),
        .out_pipeline_valid_out(bb_covariance_B10_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_covariance_B10_stall_region_out_stall_out),
        .out_valid_out(bb_covariance_B10_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_50_sync(GPOUT,6)
    assign out_feedback_stall_out_50 = bb_covariance_B10_stall_region_out_feedback_stall_out_50;

    // out_c0_exe10346(GPOUT,33)
    assign out_c0_exe10346 = covariance_B10_branch_out_c0_exe10346;

    // out_c0_exe11347(GPOUT,34)
    assign out_c0_exe11347 = covariance_B10_branch_out_c0_exe11347;

    // out_c0_exe12348(GPOUT,35)
    assign out_c0_exe12348 = covariance_B10_branch_out_c0_exe12348;

    // out_c0_exe13(GPOUT,36)
    assign out_c0_exe13 = covariance_B10_branch_out_c0_exe13;

    // out_c0_exe1337(GPOUT,37)
    assign out_c0_exe1337 = covariance_B10_branch_out_c0_exe1337;

    // out_c0_exe14(GPOUT,38)
    assign out_c0_exe14 = covariance_B10_branch_out_c0_exe14;

    // out_c0_exe15(GPOUT,39)
    assign out_c0_exe15 = covariance_B10_branch_out_c0_exe15;

    // out_c0_exe16(GPOUT,40)
    assign out_c0_exe16 = covariance_B10_branch_out_c0_exe16;

    // out_c0_exe17(GPOUT,41)
    assign out_c0_exe17 = covariance_B10_branch_out_c0_exe17;

    // out_c0_exe18(GPOUT,42)
    assign out_c0_exe18 = covariance_B10_branch_out_c0_exe18;

    // out_c0_exe19(GPOUT,43)
    assign out_c0_exe19 = covariance_B10_branch_out_c0_exe19;

    // out_c0_exe20(GPOUT,44)
    assign out_c0_exe20 = covariance_B10_branch_out_c0_exe20;

    // out_c0_exe21(GPOUT,45)
    assign out_c0_exe21 = covariance_B10_branch_out_c0_exe21;

    // out_c0_exe2338(GPOUT,46)
    assign out_c0_exe2338 = covariance_B10_branch_out_c0_exe2338;

    // out_c0_exe3339(GPOUT,47)
    assign out_c0_exe3339 = covariance_B10_branch_out_c0_exe3339;

    // out_c0_exe4340(GPOUT,48)
    assign out_c0_exe4340 = covariance_B10_branch_out_c0_exe4340;

    // out_c0_exe5341(GPOUT,49)
    assign out_c0_exe5341 = covariance_B10_branch_out_c0_exe5341;

    // out_c0_exe6342(GPOUT,50)
    assign out_c0_exe6342 = covariance_B10_branch_out_c0_exe6342;

    // out_c0_exe7343(GPOUT,51)
    assign out_c0_exe7343 = covariance_B10_branch_out_c0_exe7343;

    // out_c0_exe8344(GPOUT,52)
    assign out_c0_exe8344 = covariance_B10_branch_out_c0_exe8344;

    // out_c0_exe9345(GPOUT,53)
    assign out_c0_exe9345 = covariance_B10_branch_out_c0_exe9345;

    // out_exiting_stall_out(GPOUT,54)
    assign out_exiting_stall_out = bb_covariance_B10_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_covariance2_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,55)
    assign out_exiting_valid_out = bb_covariance_B10_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_covariance2_exiting_valid_out;

    // out_memdep_phi2_pop50(GPOUT,56)
    assign out_memdep_phi2_pop50 = covariance_B10_branch_out_memdep_phi2_pop50;

    // out_stall_out_0(GPOUT,57)
    assign out_stall_out_0 = covariance_B10_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,58)
    assign out_stall_out_1 = covariance_B10_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,59)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,60)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,61)
    assign out_valid_out_0 = covariance_B10_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,63)
    assign out_pipeline_valid_out = bb_covariance_B10_stall_region_out_pipeline_valid_out;

endmodule
