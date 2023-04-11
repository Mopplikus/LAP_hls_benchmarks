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

// SystemVerilog created from bb_covariance_B9_stall_region
// Created for function/kernel covariance
// SystemVerilog created on Fri Apr  7 17:50:03 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_bb_B9_stall_region (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going24_covariance2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going24_covariance2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked23,
    input wire [32:0] in_fpga_indvars_iv14_pop28169,
    input wire [31:0] in_i24_034_pop29175,
    input wire [31:0] in_lim_ext77_pop49164,
    input wire [31:0] in_lim_ext78_pop30178,
    input wire [0:0] in_notcmp27172,
    input wire [31:0] in_reorder_limiter_enter133,
    input wire [31:0] in_reorder_limiter_enter91_pop31181,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_c0_exe10365,
    output wire [32:0] out_c0_exe11366,
    output wire [0:0] out_c0_exe12367,
    output wire [31:0] out_c0_exe13368,
    output wire [31:0] out_c0_exe14369,
    output wire [31:0] out_c0_exe15,
    output wire [0:0] out_c0_exe2357,
    output wire [31:0] out_c0_exe3358,
    output wire [31:0] out_c0_exe4359,
    output wire [31:0] out_c0_exe5360,
    output wire [0:0] out_c0_exe6361,
    output wire [31:0] out_c0_exe7362,
    output wire [0:0] out_c0_exe8363,
    output wire [31:0] out_c0_exe9364,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] covariance_B9_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] covariance_B9_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] covariance_B9_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [31:0] covariance_B9_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [31:0] covariance_B9_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [32:0] covariance_B9_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [0:0] covariance_B9_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [31:0] covariance_B9_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [31:0] covariance_B9_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [31:0] covariance_B9_merge_reg_aunroll_x_out_data_out_7_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going24_covariance2_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going24_covariance2_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_out_c0_exit355_2_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_out_c0_exit355_3_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_out_c0_exit355_4_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_out_c0_exit355_5_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_out_c0_exit355_6_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_out_c0_exit355_7_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_out_c0_exit355_8_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_out_c0_exit355_9_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_out_c0_exit355_10_tpl;
    wire [32:0] i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_out_c0_exit355_11_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_out_c0_exit355_12_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_out_c0_exit355_13_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_out_c0_exit355_14_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_out_c0_exit355_15_tpl;
    wire [194:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [32:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [31:0] bubble_select_stall_entry_e;
    wire [31:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [31:0] bubble_select_stall_entry_h;
    wire [31:0] bubble_select_stall_entry_i;
    wire [194:0] bubble_join_covariance_B9_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_covariance_B9_merge_reg_aunroll_x_b;
    wire [31:0] bubble_select_covariance_B9_merge_reg_aunroll_x_c;
    wire [31:0] bubble_select_covariance_B9_merge_reg_aunroll_x_d;
    wire [32:0] bubble_select_covariance_B9_merge_reg_aunroll_x_e;
    wire [0:0] bubble_select_covariance_B9_merge_reg_aunroll_x_f;
    wire [31:0] bubble_select_covariance_B9_merge_reg_aunroll_x_g;
    wire [31:0] bubble_select_covariance_B9_merge_reg_aunroll_x_h;
    wire [31:0] bubble_select_covariance_B9_merge_reg_aunroll_x_i;
    wire [324:0] bubble_join_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_b;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_c;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_d;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_f;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_g;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_h;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_i;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_j;
    wire [32:0] bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_k;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_l;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_m;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_n;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_o;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_covariance_B9_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_covariance_B9_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_covariance_B9_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_V0;


    // bubble_join_stall_entry(BITJOIN,21)
    assign bubble_join_stall_entry_q = {in_reorder_limiter_enter91_pop31181, in_reorder_limiter_enter133, in_notcmp27172, in_lim_ext78_pop30178, in_lim_ext77_pop49164, in_i24_034_pop29175, in_fpga_indvars_iv14_pop28169, in_forked23};

    // bubble_select_stall_entry(BITSELECT,22)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[33:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[65:34]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[97:66]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[129:98]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[130:130]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[162:131]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[194:163]);

    // SE_stall_entry(STALLENABLE,31)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = covariance_B9_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // covariance_B9_merge_reg_aunroll_x(BLACKBOX,17)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    // out out_data_out_3_tpl@1
    // out out_data_out_4_tpl@1
    // out out_data_out_5_tpl@1
    // out out_data_out_6_tpl@1
    // out out_data_out_7_tpl@1
    covariance_B9_merge_reg thecovariance_B9_merge_reg_aunroll_x (
        .in_stall_in(SE_out_covariance_B9_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .in_data_in_1_tpl(bubble_select_stall_entry_h),
        .in_data_in_2_tpl(bubble_select_stall_entry_e),
        .in_data_in_3_tpl(bubble_select_stall_entry_c),
        .in_data_in_4_tpl(bubble_select_stall_entry_g),
        .in_data_in_5_tpl(bubble_select_stall_entry_d),
        .in_data_in_6_tpl(bubble_select_stall_entry_f),
        .in_data_in_7_tpl(bubble_select_stall_entry_i),
        .out_stall_out(covariance_B9_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(covariance_B9_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(covariance_B9_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(covariance_B9_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(covariance_B9_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(covariance_B9_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(covariance_B9_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(covariance_B9_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(covariance_B9_merge_reg_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(covariance_B9_merge_reg_aunroll_x_out_data_out_7_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_covariance_B9_merge_reg_aunroll_x(BITJOIN,25)
    assign bubble_join_covariance_B9_merge_reg_aunroll_x_q = {covariance_B9_merge_reg_aunroll_x_out_data_out_7_tpl, covariance_B9_merge_reg_aunroll_x_out_data_out_6_tpl, covariance_B9_merge_reg_aunroll_x_out_data_out_5_tpl, covariance_B9_merge_reg_aunroll_x_out_data_out_4_tpl, covariance_B9_merge_reg_aunroll_x_out_data_out_3_tpl, covariance_B9_merge_reg_aunroll_x_out_data_out_2_tpl, covariance_B9_merge_reg_aunroll_x_out_data_out_1_tpl, covariance_B9_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_covariance_B9_merge_reg_aunroll_x(BITSELECT,26)
    assign bubble_select_covariance_B9_merge_reg_aunroll_x_b = $unsigned(bubble_join_covariance_B9_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_covariance_B9_merge_reg_aunroll_x_c = $unsigned(bubble_join_covariance_B9_merge_reg_aunroll_x_q[32:1]);
    assign bubble_select_covariance_B9_merge_reg_aunroll_x_d = $unsigned(bubble_join_covariance_B9_merge_reg_aunroll_x_q[64:33]);
    assign bubble_select_covariance_B9_merge_reg_aunroll_x_e = $unsigned(bubble_join_covariance_B9_merge_reg_aunroll_x_q[97:65]);
    assign bubble_select_covariance_B9_merge_reg_aunroll_x_f = $unsigned(bubble_join_covariance_B9_merge_reg_aunroll_x_q[98:98]);
    assign bubble_select_covariance_B9_merge_reg_aunroll_x_g = $unsigned(bubble_join_covariance_B9_merge_reg_aunroll_x_q[130:99]);
    assign bubble_select_covariance_B9_merge_reg_aunroll_x_h = $unsigned(bubble_join_covariance_B9_merge_reg_aunroll_x_q[162:131]);
    assign bubble_select_covariance_B9_merge_reg_aunroll_x_i = $unsigned(bubble_join_covariance_B9_merge_reg_aunroll_x_q[194:163]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_covariance_B9_merge_reg_aunroll_x(STALLENABLE,34)
    // Valid signal propagation
    assign SE_out_covariance_B9_merge_reg_aunroll_x_V0 = SE_out_covariance_B9_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_covariance_B9_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_out_o_stall | ~ (SE_out_covariance_B9_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_covariance_B9_merge_reg_aunroll_x_wireValid = covariance_B9_merge_reg_aunroll_x_out_valid_out;

    // SE_out_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x(STALLENABLE,36)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_wireValid = i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x(BLACKBOX,19)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going24_covariance2_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going24_covariance2_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@5
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit355_0_tpl@5
    // out out_c0_exit355_1_tpl@5
    // out out_c0_exit355_2_tpl@5
    // out out_c0_exit355_3_tpl@5
    // out out_c0_exit355_4_tpl@5
    // out out_c0_exit355_5_tpl@5
    // out out_c0_exit355_6_tpl@5
    // out out_c0_exit355_7_tpl@5
    // out out_c0_exit355_8_tpl@5
    // out out_c0_exit355_9_tpl@5
    // out out_c0_exit355_10_tpl@5
    // out out_c0_exit355_11_tpl@5
    // out out_c0_exit355_12_tpl@5
    // out out_c0_exit355_13_tpl@5
    // out out_c0_exit355_14_tpl@5
    // out out_c0_exit355_15_tpl@5
    covariance_i_sfc_s_c0_in_for_cond33_preh0000ter33238_covariance1 thei_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_backStall),
        .in_i_valid(SE_out_covariance_B9_merge_reg_aunroll_x_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni8331_0_tpl(GND_q),
        .in_c0_eni8331_1_tpl(bubble_select_covariance_B9_merge_reg_aunroll_x_e),
        .in_c0_eni8331_2_tpl(bubble_select_covariance_B9_merge_reg_aunroll_x_b),
        .in_c0_eni8331_3_tpl(bubble_select_covariance_B9_merge_reg_aunroll_x_g),
        .in_c0_eni8331_4_tpl(bubble_select_covariance_B9_merge_reg_aunroll_x_h),
        .in_c0_eni8331_5_tpl(bubble_select_covariance_B9_merge_reg_aunroll_x_i),
        .in_c0_eni8331_6_tpl(bubble_select_covariance_B9_merge_reg_aunroll_x_f),
        .in_c0_eni8331_7_tpl(bubble_select_covariance_B9_merge_reg_aunroll_x_c),
        .in_c0_eni8331_8_tpl(bubble_select_covariance_B9_merge_reg_aunroll_x_d),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going24_covariance2_exiting_stall_out(i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going24_covariance2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going24_covariance2_exiting_valid_out(i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going24_covariance2_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit355_0_tpl(),
        .out_c0_exit355_1_tpl(),
        .out_c0_exit355_2_tpl(i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_out_c0_exit355_2_tpl),
        .out_c0_exit355_3_tpl(i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_out_c0_exit355_3_tpl),
        .out_c0_exit355_4_tpl(i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_out_c0_exit355_4_tpl),
        .out_c0_exit355_5_tpl(i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_out_c0_exit355_5_tpl),
        .out_c0_exit355_6_tpl(i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_out_c0_exit355_6_tpl),
        .out_c0_exit355_7_tpl(i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_out_c0_exit355_7_tpl),
        .out_c0_exit355_8_tpl(i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_out_c0_exit355_8_tpl),
        .out_c0_exit355_9_tpl(i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_out_c0_exit355_9_tpl),
        .out_c0_exit355_10_tpl(i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_out_c0_exit355_10_tpl),
        .out_c0_exit355_11_tpl(i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_out_c0_exit355_11_tpl),
        .out_c0_exit355_12_tpl(i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_out_c0_exit355_12_tpl),
        .out_c0_exit355_13_tpl(i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_out_c0_exit355_13_tpl),
        .out_c0_exit355_14_tpl(i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_out_c0_exit355_14_tpl),
        .out_c0_exit355_15_tpl(i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_out_c0_exit355_15_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,5)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going24_covariance2_exiting_valid_out = i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going24_covariance2_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going24_covariance2_exiting_stall_out = i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going24_covariance2_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,11)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,15)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // bubble_join_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x(BITJOIN,29)
    assign bubble_join_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_q = {i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_out_c0_exit355_15_tpl, i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_out_c0_exit355_14_tpl, i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_out_c0_exit355_13_tpl, i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_out_c0_exit355_12_tpl, i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_out_c0_exit355_11_tpl, i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_out_c0_exit355_10_tpl, i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_out_c0_exit355_9_tpl, i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_out_c0_exit355_8_tpl, i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_out_c0_exit355_7_tpl, i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_out_c0_exit355_6_tpl, i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_out_c0_exit355_5_tpl, i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_out_c0_exit355_4_tpl, i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_out_c0_exit355_3_tpl, i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_out_c0_exit355_2_tpl};

    // bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x(BITSELECT,30)
    assign bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_q[32:1]);
    assign bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_q[64:33]);
    assign bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_q[96:65]);
    assign bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_q[97:97]);
    assign bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_q[129:98]);
    assign bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_q[130:130]);
    assign bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_q[162:131]);
    assign bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_q[194:163]);
    assign bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_q[227:195]);
    assign bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_l = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_q[228:228]);
    assign bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_m = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_q[260:229]);
    assign bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_n = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_q[292:261]);
    assign bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_o = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_q[324:293]);

    // dupName_0_sync_out_x(GPOUT,18)@5
    assign out_c0_exe10365 = bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_j;
    assign out_c0_exe11366 = bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_k;
    assign out_c0_exe12367 = bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_l;
    assign out_c0_exe13368 = bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_m;
    assign out_c0_exe14369 = bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_n;
    assign out_c0_exe15 = bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_o;
    assign out_c0_exe2357 = bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_b;
    assign out_c0_exe3358 = bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_c;
    assign out_c0_exe4359 = bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_d;
    assign out_c0_exe5360 = bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_e;
    assign out_c0_exe6361 = bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_f;
    assign out_c0_exe7362 = bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_g;
    assign out_c0_exe8363 = bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_h;
    assign out_c0_exe9364 = bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_i;
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance1_aunroll_x_V0;

endmodule
