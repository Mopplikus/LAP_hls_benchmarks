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

// SystemVerilog created from bb_covariance_B5_stall_region
// Created for function/kernel covariance
// SystemVerilog created on Fri Apr  7 17:50:02 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_bb_B5_stall_region (
    input wire [31:0] in_unnamed_covariance2_covariance_avm_readdata,
    input wire [0:0] in_unnamed_covariance2_covariance_avm_writeack,
    input wire [0:0] in_unnamed_covariance2_covariance_avm_waitrequest,
    input wire [0:0] in_unnamed_covariance2_covariance_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going53_covariance6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going53_covariance6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_exitcond10134,
    input wire [0:0] in_forked50,
    input wire [31:0] in_j_039_pop21136,
    input wire [31:0] in_lim_ext113,
    input wire [31:0] in_lim_ext75_pop23138,
    input wire [0:0] in_memdep_phi1_pop16118,
    input wire [0:0] in_memdep_phi1_pop1681_pop24139,
    input wire [0:0] in_memdep_phi2_pop17123,
    input wire [0:0] in_memdep_phi2_pop1784_pop25140,
    input wire [0:0] in_memdep_phi4_pop18128,
    input wire [0:0] in_memdep_phi4_pop1887_pop26141,
    input wire [0:0] in_memdep_phi_pop22137,
    input wire [0:0] in_notcmp65135,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_unnamed_covariance2_covariance_avm_address,
    output wire [0:0] out_unnamed_covariance2_covariance_avm_enable,
    output wire [0:0] out_unnamed_covariance2_covariance_avm_read,
    output wire [0:0] out_unnamed_covariance2_covariance_avm_write,
    output wire [31:0] out_unnamed_covariance2_covariance_avm_writedata,
    output wire [3:0] out_unnamed_covariance2_covariance_avm_byteenable,
    output wire [0:0] out_unnamed_covariance2_covariance_avm_burstcount,
    output wire [0:0] out_c0_exe10249,
    output wire [31:0] out_c0_exe11250,
    output wire [0:0] out_c0_exe12251,
    output wire [0:0] out_c0_exe13,
    output wire [0:0] out_c0_exe14,
    output wire [63:0] out_c0_exe2241,
    output wire [0:0] out_c0_exe3242,
    output wire [31:0] out_c0_exe4243,
    output wire [0:0] out_c0_exe5244,
    output wire [31:0] out_c0_exe6245,
    output wire [0:0] out_c0_exe7246,
    output wire [0:0] out_c0_exe8247,
    output wire [0:0] out_c0_exe9248,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] covariance_B5_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] covariance_B5_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] covariance_B5_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [31:0] covariance_B5_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [0:0] covariance_B5_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [0:0] covariance_B5_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [0:0] covariance_B5_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [0:0] covariance_B5_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [0:0] covariance_B5_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [31:0] covariance_B5_merge_reg_aunroll_x_out_data_out_7_tpl;
    wire [0:0] covariance_B5_merge_reg_aunroll_x_out_data_out_8_tpl;
    wire [31:0] covariance_B5_merge_reg_aunroll_x_out_data_out_9_tpl;
    wire [0:0] covariance_B5_merge_reg_aunroll_x_out_data_out_10_tpl;
    wire [0:0] covariance_B5_merge_reg_aunroll_x_out_data_out_11_tpl;
    wire [0:0] covariance_B5_merge_reg_aunroll_x_out_data_out_12_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going53_covariance6_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going53_covariance6_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_pipeline_valid_out;
    wire [31:0] i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_unnamed_covariance2_covariance_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_unnamed_covariance2_covariance_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_unnamed_covariance2_covariance_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_unnamed_covariance2_covariance_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_unnamed_covariance2_covariance_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_unnamed_covariance2_covariance_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_unnamed_covariance2_covariance_avm_writedata;
    wire [63:0] i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_c0_exit239_2_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_c0_exit239_3_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_c0_exit239_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_c0_exit239_5_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_c0_exit239_6_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_c0_exit239_7_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_c0_exit239_8_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_c0_exit239_9_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_c0_exit239_10_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_c0_exit239_11_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_c0_exit239_12_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_c0_exit239_13_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_c0_exit239_14_tpl;
    wire [105:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [31:0] bubble_select_stall_entry_e;
    wire [31:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [0:0] bubble_select_stall_entry_h;
    wire [0:0] bubble_select_stall_entry_i;
    wire [0:0] bubble_select_stall_entry_j;
    wire [0:0] bubble_select_stall_entry_k;
    wire [0:0] bubble_select_stall_entry_l;
    wire [0:0] bubble_select_stall_entry_m;
    wire [0:0] bubble_select_stall_entry_n;
    wire [105:0] bubble_join_covariance_B5_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_covariance_B5_merge_reg_aunroll_x_b;
    wire [31:0] bubble_select_covariance_B5_merge_reg_aunroll_x_c;
    wire [0:0] bubble_select_covariance_B5_merge_reg_aunroll_x_d;
    wire [0:0] bubble_select_covariance_B5_merge_reg_aunroll_x_e;
    wire [0:0] bubble_select_covariance_B5_merge_reg_aunroll_x_f;
    wire [0:0] bubble_select_covariance_B5_merge_reg_aunroll_x_g;
    wire [0:0] bubble_select_covariance_B5_merge_reg_aunroll_x_h;
    wire [31:0] bubble_select_covariance_B5_merge_reg_aunroll_x_i;
    wire [0:0] bubble_select_covariance_B5_merge_reg_aunroll_x_j;
    wire [31:0] bubble_select_covariance_B5_merge_reg_aunroll_x_k;
    wire [0:0] bubble_select_covariance_B5_merge_reg_aunroll_x_l;
    wire [0:0] bubble_select_covariance_B5_merge_reg_aunroll_x_m;
    wire [0:0] bubble_select_covariance_B5_merge_reg_aunroll_x_n;
    wire [168:0] bubble_join_i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_q;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_c;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_d;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_e;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_f;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_g;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_h;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_i;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_j;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_k;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_l;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_m;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_n;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_covariance_B5_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_covariance_B5_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_covariance_B5_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_V0;


    // bubble_join_stall_entry(BITJOIN,24)
    assign bubble_join_stall_entry_q = {in_notcmp65135, in_memdep_phi_pop22137, in_memdep_phi4_pop1887_pop26141, in_memdep_phi4_pop18128, in_memdep_phi2_pop1784_pop25140, in_memdep_phi2_pop17123, in_memdep_phi1_pop1681_pop24139, in_memdep_phi1_pop16118, in_lim_ext75_pop23138, in_lim_ext113, in_j_039_pop21136, in_forked50, in_exitcond10134};

    // bubble_select_stall_entry(BITSELECT,25)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[1:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[33:2]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[65:34]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[97:66]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[98:98]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[99:99]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[100:100]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[101:101]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[102:102]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[103:103]);
    assign bubble_select_stall_entry_m = $unsigned(bubble_join_stall_entry_q[104:104]);
    assign bubble_select_stall_entry_n = $unsigned(bubble_join_stall_entry_q[105:105]);

    // SE_stall_entry(STALLENABLE,34)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = covariance_B5_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // covariance_B5_merge_reg_aunroll_x(BLACKBOX,19)@0
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
    // out out_data_out_8_tpl@1
    // out out_data_out_9_tpl@1
    // out out_data_out_10_tpl@1
    // out out_data_out_11_tpl@1
    // out out_data_out_12_tpl@1
    covariance_B5_merge_reg thecovariance_B5_merge_reg_aunroll_x (
        .in_stall_in(SE_out_covariance_B5_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_c),
        .in_data_in_1_tpl(bubble_select_stall_entry_e),
        .in_data_in_2_tpl(bubble_select_stall_entry_g),
        .in_data_in_3_tpl(bubble_select_stall_entry_i),
        .in_data_in_4_tpl(bubble_select_stall_entry_k),
        .in_data_in_5_tpl(bubble_select_stall_entry_b),
        .in_data_in_6_tpl(bubble_select_stall_entry_n),
        .in_data_in_7_tpl(bubble_select_stall_entry_d),
        .in_data_in_8_tpl(bubble_select_stall_entry_m),
        .in_data_in_9_tpl(bubble_select_stall_entry_f),
        .in_data_in_10_tpl(bubble_select_stall_entry_h),
        .in_data_in_11_tpl(bubble_select_stall_entry_j),
        .in_data_in_12_tpl(bubble_select_stall_entry_l),
        .out_stall_out(covariance_B5_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(covariance_B5_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(covariance_B5_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(covariance_B5_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(covariance_B5_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(covariance_B5_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(covariance_B5_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(covariance_B5_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(covariance_B5_merge_reg_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(covariance_B5_merge_reg_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(covariance_B5_merge_reg_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(covariance_B5_merge_reg_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(covariance_B5_merge_reg_aunroll_x_out_data_out_10_tpl),
        .out_data_out_11_tpl(covariance_B5_merge_reg_aunroll_x_out_data_out_11_tpl),
        .out_data_out_12_tpl(covariance_B5_merge_reg_aunroll_x_out_data_out_12_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_covariance_B5_merge_reg_aunroll_x(BITJOIN,28)
    assign bubble_join_covariance_B5_merge_reg_aunroll_x_q = {covariance_B5_merge_reg_aunroll_x_out_data_out_12_tpl, covariance_B5_merge_reg_aunroll_x_out_data_out_11_tpl, covariance_B5_merge_reg_aunroll_x_out_data_out_10_tpl, covariance_B5_merge_reg_aunroll_x_out_data_out_9_tpl, covariance_B5_merge_reg_aunroll_x_out_data_out_8_tpl, covariance_B5_merge_reg_aunroll_x_out_data_out_7_tpl, covariance_B5_merge_reg_aunroll_x_out_data_out_6_tpl, covariance_B5_merge_reg_aunroll_x_out_data_out_5_tpl, covariance_B5_merge_reg_aunroll_x_out_data_out_4_tpl, covariance_B5_merge_reg_aunroll_x_out_data_out_3_tpl, covariance_B5_merge_reg_aunroll_x_out_data_out_2_tpl, covariance_B5_merge_reg_aunroll_x_out_data_out_1_tpl, covariance_B5_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_covariance_B5_merge_reg_aunroll_x(BITSELECT,29)
    assign bubble_select_covariance_B5_merge_reg_aunroll_x_b = $unsigned(bubble_join_covariance_B5_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_covariance_B5_merge_reg_aunroll_x_c = $unsigned(bubble_join_covariance_B5_merge_reg_aunroll_x_q[32:1]);
    assign bubble_select_covariance_B5_merge_reg_aunroll_x_d = $unsigned(bubble_join_covariance_B5_merge_reg_aunroll_x_q[33:33]);
    assign bubble_select_covariance_B5_merge_reg_aunroll_x_e = $unsigned(bubble_join_covariance_B5_merge_reg_aunroll_x_q[34:34]);
    assign bubble_select_covariance_B5_merge_reg_aunroll_x_f = $unsigned(bubble_join_covariance_B5_merge_reg_aunroll_x_q[35:35]);
    assign bubble_select_covariance_B5_merge_reg_aunroll_x_g = $unsigned(bubble_join_covariance_B5_merge_reg_aunroll_x_q[36:36]);
    assign bubble_select_covariance_B5_merge_reg_aunroll_x_h = $unsigned(bubble_join_covariance_B5_merge_reg_aunroll_x_q[37:37]);
    assign bubble_select_covariance_B5_merge_reg_aunroll_x_i = $unsigned(bubble_join_covariance_B5_merge_reg_aunroll_x_q[69:38]);
    assign bubble_select_covariance_B5_merge_reg_aunroll_x_j = $unsigned(bubble_join_covariance_B5_merge_reg_aunroll_x_q[70:70]);
    assign bubble_select_covariance_B5_merge_reg_aunroll_x_k = $unsigned(bubble_join_covariance_B5_merge_reg_aunroll_x_q[102:71]);
    assign bubble_select_covariance_B5_merge_reg_aunroll_x_l = $unsigned(bubble_join_covariance_B5_merge_reg_aunroll_x_q[103:103]);
    assign bubble_select_covariance_B5_merge_reg_aunroll_x_m = $unsigned(bubble_join_covariance_B5_merge_reg_aunroll_x_q[104:104]);
    assign bubble_select_covariance_B5_merge_reg_aunroll_x_n = $unsigned(bubble_join_covariance_B5_merge_reg_aunroll_x_q[105:105]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_covariance_B5_merge_reg_aunroll_x(STALLENABLE,37)
    // Valid signal propagation
    assign SE_out_covariance_B5_merge_reg_aunroll_x_V0 = SE_out_covariance_B5_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_covariance_B5_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_o_stall | ~ (SE_out_covariance_B5_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_covariance_B5_merge_reg_aunroll_x_wireValid = covariance_B5_merge_reg_aunroll_x_out_valid_out;

    // SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x(STALLENABLE,39)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_wireValid = i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x(BLACKBOX,22)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going53_covariance6_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going53_covariance6_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@9
    // out out_pipeline_valid_out@20000000
    // out out_unnamed_covariance2_covariance_avm_address@20000000
    // out out_unnamed_covariance2_covariance_avm_burstcount@20000000
    // out out_unnamed_covariance2_covariance_avm_byteenable@20000000
    // out out_unnamed_covariance2_covariance_avm_enable@20000000
    // out out_unnamed_covariance2_covariance_avm_read@20000000
    // out out_unnamed_covariance2_covariance_avm_write@20000000
    // out out_unnamed_covariance2_covariance_avm_writedata@20000000
    // out out_c0_exit239_0_tpl@9
    // out out_c0_exit239_1_tpl@9
    // out out_c0_exit239_2_tpl@9
    // out out_c0_exit239_3_tpl@9
    // out out_c0_exit239_4_tpl@9
    // out out_c0_exit239_5_tpl@9
    // out out_c0_exit239_6_tpl@9
    // out out_c0_exit239_7_tpl@9
    // out out_c0_exit239_8_tpl@9
    // out out_c0_exit239_9_tpl@9
    // out out_c0_exit239_10_tpl@9
    // out out_c0_exit239_11_tpl@9
    // out out_c0_exit239_12_tpl@9
    // out out_c0_exit239_13_tpl@9
    // out out_c0_exit239_14_tpl@9
    covariance_i_sfc_s_c0_in_for_body6_s_c0_enter22136_covariance1 thei_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x (
        .in_flush(in_flush),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_backStall),
        .in_i_valid(SE_out_covariance_B5_merge_reg_aunroll_x_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_unnamed_covariance2_covariance_avm_readdata(in_unnamed_covariance2_covariance_avm_readdata),
        .in_unnamed_covariance2_covariance_avm_readdatavalid(in_unnamed_covariance2_covariance_avm_readdatavalid),
        .in_unnamed_covariance2_covariance_avm_waitrequest(in_unnamed_covariance2_covariance_avm_waitrequest),
        .in_unnamed_covariance2_covariance_avm_writeack(in_unnamed_covariance2_covariance_avm_writeack),
        .in_c0_eni13_0_tpl(GND_q),
        .in_c0_eni13_1_tpl(bubble_select_covariance_B5_merge_reg_aunroll_x_b),
        .in_c0_eni13_2_tpl(bubble_select_covariance_B5_merge_reg_aunroll_x_i),
        .in_c0_eni13_3_tpl(bubble_select_covariance_B5_merge_reg_aunroll_x_l),
        .in_c0_eni13_4_tpl(bubble_select_covariance_B5_merge_reg_aunroll_x_j),
        .in_c0_eni13_5_tpl(bubble_select_covariance_B5_merge_reg_aunroll_x_k),
        .in_c0_eni13_6_tpl(bubble_select_covariance_B5_merge_reg_aunroll_x_m),
        .in_c0_eni13_7_tpl(bubble_select_covariance_B5_merge_reg_aunroll_x_n),
        .in_c0_eni13_8_tpl(bubble_select_covariance_B5_merge_reg_aunroll_x_g),
        .in_c0_eni13_9_tpl(bubble_select_covariance_B5_merge_reg_aunroll_x_h),
        .in_c0_eni13_10_tpl(bubble_select_covariance_B5_merge_reg_aunroll_x_c),
        .in_c0_eni13_11_tpl(bubble_select_covariance_B5_merge_reg_aunroll_x_d),
        .in_c0_eni13_12_tpl(bubble_select_covariance_B5_merge_reg_aunroll_x_e),
        .in_c0_eni13_13_tpl(bubble_select_covariance_B5_merge_reg_aunroll_x_f),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going53_covariance6_exiting_stall_out(i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going53_covariance6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going53_covariance6_exiting_valid_out(i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going53_covariance6_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_pipeline_valid_out),
        .out_unnamed_covariance2_covariance_avm_address(i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_unnamed_covariance2_covariance_avm_address),
        .out_unnamed_covariance2_covariance_avm_burstcount(i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_unnamed_covariance2_covariance_avm_burstcount),
        .out_unnamed_covariance2_covariance_avm_byteenable(i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_unnamed_covariance2_covariance_avm_byteenable),
        .out_unnamed_covariance2_covariance_avm_enable(i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_unnamed_covariance2_covariance_avm_enable),
        .out_unnamed_covariance2_covariance_avm_read(i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_unnamed_covariance2_covariance_avm_read),
        .out_unnamed_covariance2_covariance_avm_write(i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_unnamed_covariance2_covariance_avm_write),
        .out_unnamed_covariance2_covariance_avm_writedata(i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_unnamed_covariance2_covariance_avm_writedata),
        .out_c0_exit239_0_tpl(),
        .out_c0_exit239_1_tpl(),
        .out_c0_exit239_2_tpl(i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_c0_exit239_2_tpl),
        .out_c0_exit239_3_tpl(i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_c0_exit239_3_tpl),
        .out_c0_exit239_4_tpl(i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_c0_exit239_4_tpl),
        .out_c0_exit239_5_tpl(i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_c0_exit239_5_tpl),
        .out_c0_exit239_6_tpl(i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_c0_exit239_6_tpl),
        .out_c0_exit239_7_tpl(i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_c0_exit239_7_tpl),
        .out_c0_exit239_8_tpl(i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_c0_exit239_8_tpl),
        .out_c0_exit239_9_tpl(i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_c0_exit239_9_tpl),
        .out_c0_exit239_10_tpl(i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_c0_exit239_10_tpl),
        .out_c0_exit239_11_tpl(i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_c0_exit239_11_tpl),
        .out_c0_exit239_12_tpl(i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_c0_exit239_12_tpl),
        .out_c0_exit239_13_tpl(i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_c0_exit239_13_tpl),
        .out_c0_exit239_14_tpl(i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_c0_exit239_14_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going53_covariance6_exiting_valid_out = i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going53_covariance6_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going53_covariance6_exiting_stall_out = i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going53_covariance6_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,12)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,17)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,20)
    assign out_unnamed_covariance2_covariance_avm_address = i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_unnamed_covariance2_covariance_avm_address;
    assign out_unnamed_covariance2_covariance_avm_enable = i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_unnamed_covariance2_covariance_avm_enable;
    assign out_unnamed_covariance2_covariance_avm_read = i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_unnamed_covariance2_covariance_avm_read;
    assign out_unnamed_covariance2_covariance_avm_write = i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_unnamed_covariance2_covariance_avm_write;
    assign out_unnamed_covariance2_covariance_avm_writedata = i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_unnamed_covariance2_covariance_avm_writedata;
    assign out_unnamed_covariance2_covariance_avm_byteenable = i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_unnamed_covariance2_covariance_avm_byteenable;
    assign out_unnamed_covariance2_covariance_avm_burstcount = i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_unnamed_covariance2_covariance_avm_burstcount;

    // bubble_join_i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x(BITJOIN,32)
    assign bubble_join_i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_q = {i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_c0_exit239_14_tpl, i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_c0_exit239_13_tpl, i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_c0_exit239_12_tpl, i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_c0_exit239_11_tpl, i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_c0_exit239_10_tpl, i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_c0_exit239_9_tpl, i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_c0_exit239_8_tpl, i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_c0_exit239_7_tpl, i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_c0_exit239_6_tpl, i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_c0_exit239_5_tpl, i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_c0_exit239_4_tpl, i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_c0_exit239_3_tpl, i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_out_c0_exit239_2_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x(BITSELECT,33)
    assign bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_q[63:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_q[64:64]);
    assign bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_q[96:65]);
    assign bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_q[97:97]);
    assign bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_q[129:98]);
    assign bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_q[130:130]);
    assign bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_q[131:131]);
    assign bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_q[132:132]);
    assign bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_q[133:133]);
    assign bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_q[165:134]);
    assign bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_l = $unsigned(bubble_join_i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_q[166:166]);
    assign bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_m = $unsigned(bubble_join_i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_q[167:167]);
    assign bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_n = $unsigned(bubble_join_i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_q[168:168]);

    // dupName_0_sync_out_x(GPOUT,21)@9
    assign out_c0_exe10249 = bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_j;
    assign out_c0_exe11250 = bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_k;
    assign out_c0_exe12251 = bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_l;
    assign out_c0_exe13 = bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_m;
    assign out_c0_exe14 = bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_n;
    assign out_c0_exe2241 = bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_b;
    assign out_c0_exe3242 = bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_c;
    assign out_c0_exe4243 = bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_d;
    assign out_c0_exe5244 = bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_e;
    assign out_c0_exe6245 = bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_f;
    assign out_c0_exe7246 = bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_g;
    assign out_c0_exe8247 = bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_h;
    assign out_c0_exe9248 = bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_i;
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter22136_covariance1_aunroll_x_V0;

endmodule
