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

// SystemVerilog created from bb_covariance_B10_stall_region
// Created for function/kernel covariance
// SystemVerilog created on Tue Jun 13 02:07:48 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_bb_B10_stall_region (
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
    output wire [0:0] out_memdep_phi2_pop50,
    output wire [0:0] out_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_covariance2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_covariance2_exiting_stall_out,
    input wire [0:0] in_feedback_in_50,
    output wire [0:0] out_feedback_stall_out_50,
    input wire [0:0] in_feedback_valid_in_50,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_exitcond21159,
    input wire [0:0] in_forked27,
    input wire [32:0] in_fpga_indvars_iv14_pop23156,
    input wire [31:0] in_i21_072_pop24150,
    input wire [31:0] in_lim_ext81_pop42145,
    input wire [31:0] in_lim_ext82_pop26168,
    input wire [0:0] in_memdep_phi3_pop25165,
    input wire [31:0] in_mul47153,
    input wire [0:0] in_notcmp31162,
    input wire [31:0] in_reorder_limiter_enter122,
    input wire [31:0] in_reorder_limiter_enter86_pop27171,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] covariance_B10_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [31:0] covariance_B10_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [31:0] covariance_B10_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [31:0] covariance_B10_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [31:0] covariance_B10_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [32:0] covariance_B10_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [0:0] covariance_B10_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [0:0] covariance_B10_merge_reg_aunroll_x_out_data_out_7_tpl;
    wire [0:0] covariance_B10_merge_reg_aunroll_x_out_data_out_8_tpl;
    wire [31:0] covariance_B10_merge_reg_aunroll_x_out_data_out_9_tpl;
    wire [31:0] covariance_B10_merge_reg_aunroll_x_out_data_out_10_tpl;
    wire [0:0] covariance_B10_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] covariance_B10_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_c0_exit336_1_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_c0_exit336_2_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_c0_exit336_3_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_c0_exit336_4_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_c0_exit336_5_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_c0_exit336_6_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_c0_exit336_7_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_c0_exit336_8_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_c0_exit336_9_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_c0_exit336_10_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_c0_exit336_11_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_c0_exit336_12_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_c0_exit336_13_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_c0_exit336_14_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_c0_exit336_15_tpl;
    wire [32:0] i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_c0_exit336_16_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_c0_exit336_17_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_c0_exit336_18_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_c0_exit336_19_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_c0_exit336_20_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_c0_exit336_21_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_covariance2_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_covariance2_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop50_covariance3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop50_covariance3_out_feedback_stall_out_50;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop50_covariance3_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop50_covariance3_out_valid_out;
    wire [393:0] join_for_coalesced_delay_0_q;
    wire [32:0] sel_for_coalesced_delay_0_b;
    wire [31:0] sel_for_coalesced_delay_0_c;
    wire [31:0] sel_for_coalesced_delay_0_d;
    wire [31:0] sel_for_coalesced_delay_0_e;
    wire [31:0] sel_for_coalesced_delay_0_f;
    wire [31:0] sel_for_coalesced_delay_0_g;
    wire [31:0] sel_for_coalesced_delay_0_h;
    wire [31:0] sel_for_coalesced_delay_0_i;
    wire [31:0] sel_for_coalesced_delay_0_j;
    wire [31:0] sel_for_coalesced_delay_0_k;
    wire [31:0] sel_for_coalesced_delay_0_l;
    wire [31:0] sel_for_coalesced_delay_0_m;
    wire [0:0] sel_for_coalesced_delay_0_n;
    wire [0:0] sel_for_coalesced_delay_0_o;
    wire [0:0] sel_for_coalesced_delay_0_p;
    wire [0:0] sel_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_r;
    wire [0:0] sel_for_coalesced_delay_0_s;
    wire [0:0] sel_for_coalesced_delay_0_t;
    wire [0:0] sel_for_coalesced_delay_0_u;
    wire [0:0] sel_for_coalesced_delay_0_v;
    reg [393:0] coalesced_delay_0_0_q;
    wire [228:0] bubble_join_covariance_B10_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_covariance_B10_merge_reg_aunroll_x_b;
    wire [31:0] bubble_select_covariance_B10_merge_reg_aunroll_x_c;
    wire [31:0] bubble_select_covariance_B10_merge_reg_aunroll_x_d;
    wire [31:0] bubble_select_covariance_B10_merge_reg_aunroll_x_e;
    wire [31:0] bubble_select_covariance_B10_merge_reg_aunroll_x_f;
    wire [32:0] bubble_select_covariance_B10_merge_reg_aunroll_x_g;
    wire [0:0] bubble_select_covariance_B10_merge_reg_aunroll_x_h;
    wire [0:0] bubble_select_covariance_B10_merge_reg_aunroll_x_i;
    wire [0:0] bubble_select_covariance_B10_merge_reg_aunroll_x_j;
    wire [31:0] bubble_select_covariance_B10_merge_reg_aunroll_x_k;
    wire [31:0] bubble_select_covariance_B10_merge_reg_aunroll_x_l;
    wire [393:0] bubble_join_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_c;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_d;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_e;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_f;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_g;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_h;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_i;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_j;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_k;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_l;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_m;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_n;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_o;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_p;
    wire [32:0] bubble_select_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_r;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_s;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_t;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_u;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_v;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop50_covariance3_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi2_pop50_covariance3_b;
    wire [228:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [32:0] bubble_select_stall_entry_d;
    wire [31:0] bubble_select_stall_entry_e;
    wire [31:0] bubble_select_stall_entry_f;
    wire [31:0] bubble_select_stall_entry_g;
    wire [0:0] bubble_select_stall_entry_h;
    wire [31:0] bubble_select_stall_entry_i;
    wire [0:0] bubble_select_stall_entry_j;
    wire [31:0] bubble_select_stall_entry_k;
    wire [31:0] bubble_select_stall_entry_l;
    wire [0:0] SE_out_covariance_B10_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_covariance_B10_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_covariance_B10_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop50_covariance3_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop50_covariance3_and0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop50_covariance3_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop50_covariance3_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    reg [0:0] SE_coalesced_delay_0_0_R_v_0;
    wire [0:0] SE_coalesced_delay_0_0_v_s_0;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_0_backEN;
    wire [0:0] SE_coalesced_delay_0_0_backStall;
    wire [0:0] SE_coalesced_delay_0_0_V0;


    // SE_stall_entry(STALLENABLE,72)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = covariance_B10_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bubble_join_stall_entry(BITJOIN,63)
    assign bubble_join_stall_entry_q = {in_reorder_limiter_enter86_pop27171, in_reorder_limiter_enter122, in_notcmp31162, in_mul47153, in_memdep_phi3_pop25165, in_lim_ext82_pop26168, in_lim_ext81_pop42145, in_i21_072_pop24150, in_fpga_indvars_iv14_pop23156, in_forked27, in_exitcond21159};

    // bubble_select_stall_entry(BITSELECT,64)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[1:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[34:2]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[66:35]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[98:67]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[130:99]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[131:131]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[163:132]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[164:164]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[196:165]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[228:197]);

    // covariance_B10_merge_reg_aunroll_x(BLACKBOX,2)@0
    // in in_stall_in@20000000
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
    // out out_stall_out@20000000
    // out out_valid_out@1
    covariance_B10_merge_reg thecovariance_B10_merge_reg_aunroll_x (
        .in_data_in_0_tpl(bubble_select_stall_entry_c),
        .in_data_in_1_tpl(bubble_select_stall_entry_k),
        .in_data_in_2_tpl(bubble_select_stall_entry_f),
        .in_data_in_3_tpl(bubble_select_stall_entry_e),
        .in_data_in_4_tpl(bubble_select_stall_entry_i),
        .in_data_in_5_tpl(bubble_select_stall_entry_d),
        .in_data_in_6_tpl(bubble_select_stall_entry_b),
        .in_data_in_7_tpl(bubble_select_stall_entry_j),
        .in_data_in_8_tpl(bubble_select_stall_entry_h),
        .in_data_in_9_tpl(bubble_select_stall_entry_g),
        .in_data_in_10_tpl(bubble_select_stall_entry_l),
        .in_stall_in(SE_out_covariance_B10_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out_0_tpl(covariance_B10_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(covariance_B10_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(covariance_B10_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(covariance_B10_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(covariance_B10_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(covariance_B10_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(covariance_B10_merge_reg_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(covariance_B10_merge_reg_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(covariance_B10_merge_reg_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(covariance_B10_merge_reg_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(covariance_B10_merge_reg_aunroll_x_out_data_out_10_tpl),
        .out_stall_out(covariance_B10_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(covariance_B10_merge_reg_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_covariance_B10_merge_reg_aunroll_x(STALLENABLE,67)
    // Valid signal propagation
    assign SE_out_covariance_B10_merge_reg_aunroll_x_V0 = SE_out_covariance_B10_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_covariance_B10_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_o_stall | ~ (SE_out_covariance_B10_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_covariance_B10_merge_reg_aunroll_x_wireValid = covariance_B10_merge_reg_aunroll_x_out_valid_out;

    // bubble_join_covariance_B10_merge_reg_aunroll_x(BITJOIN,52)
    assign bubble_join_covariance_B10_merge_reg_aunroll_x_q = {covariance_B10_merge_reg_aunroll_x_out_data_out_10_tpl, covariance_B10_merge_reg_aunroll_x_out_data_out_9_tpl, covariance_B10_merge_reg_aunroll_x_out_data_out_8_tpl, covariance_B10_merge_reg_aunroll_x_out_data_out_7_tpl, covariance_B10_merge_reg_aunroll_x_out_data_out_6_tpl, covariance_B10_merge_reg_aunroll_x_out_data_out_5_tpl, covariance_B10_merge_reg_aunroll_x_out_data_out_4_tpl, covariance_B10_merge_reg_aunroll_x_out_data_out_3_tpl, covariance_B10_merge_reg_aunroll_x_out_data_out_2_tpl, covariance_B10_merge_reg_aunroll_x_out_data_out_1_tpl, covariance_B10_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_covariance_B10_merge_reg_aunroll_x(BITSELECT,53)
    assign bubble_select_covariance_B10_merge_reg_aunroll_x_b = $unsigned(bubble_join_covariance_B10_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_covariance_B10_merge_reg_aunroll_x_c = $unsigned(bubble_join_covariance_B10_merge_reg_aunroll_x_q[32:1]);
    assign bubble_select_covariance_B10_merge_reg_aunroll_x_d = $unsigned(bubble_join_covariance_B10_merge_reg_aunroll_x_q[64:33]);
    assign bubble_select_covariance_B10_merge_reg_aunroll_x_e = $unsigned(bubble_join_covariance_B10_merge_reg_aunroll_x_q[96:65]);
    assign bubble_select_covariance_B10_merge_reg_aunroll_x_f = $unsigned(bubble_join_covariance_B10_merge_reg_aunroll_x_q[128:97]);
    assign bubble_select_covariance_B10_merge_reg_aunroll_x_g = $unsigned(bubble_join_covariance_B10_merge_reg_aunroll_x_q[161:129]);
    assign bubble_select_covariance_B10_merge_reg_aunroll_x_h = $unsigned(bubble_join_covariance_B10_merge_reg_aunroll_x_q[162:162]);
    assign bubble_select_covariance_B10_merge_reg_aunroll_x_i = $unsigned(bubble_join_covariance_B10_merge_reg_aunroll_x_q[163:163]);
    assign bubble_select_covariance_B10_merge_reg_aunroll_x_j = $unsigned(bubble_join_covariance_B10_merge_reg_aunroll_x_q[164:164]);
    assign bubble_select_covariance_B10_merge_reg_aunroll_x_k = $unsigned(bubble_join_covariance_B10_merge_reg_aunroll_x_q[196:165]);
    assign bubble_select_covariance_B10_merge_reg_aunroll_x_l = $unsigned(bubble_join_covariance_B10_merge_reg_aunroll_x_q[228:197]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x(BLACKBOX,4)@1
    // in in_i_stall@20000000
    // out out_c0_exit336_0_tpl@5
    // out out_c0_exit336_1_tpl@5
    // out out_c0_exit336_2_tpl@5
    // out out_c0_exit336_3_tpl@5
    // out out_c0_exit336_4_tpl@5
    // out out_c0_exit336_5_tpl@5
    // out out_c0_exit336_6_tpl@5
    // out out_c0_exit336_7_tpl@5
    // out out_c0_exit336_8_tpl@5
    // out out_c0_exit336_9_tpl@5
    // out out_c0_exit336_10_tpl@5
    // out out_c0_exit336_11_tpl@5
    // out out_c0_exit336_12_tpl@5
    // out out_c0_exit336_13_tpl@5
    // out out_c0_exit336_14_tpl@5
    // out out_c0_exit336_15_tpl@5
    // out out_c0_exit336_16_tpl@5
    // out out_c0_exit336_17_tpl@5
    // out out_c0_exit336_18_tpl@5
    // out out_c0_exit336_19_tpl@5
    // out out_c0_exit336_20_tpl@5
    // out out_c0_exit336_21_tpl@5
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_covariance2_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_covariance2_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@5
    // out out_pipeline_valid_out@20000000
    covariance_i_sfc_s_c0_in_for_cond31_preh0000ter31533_covariance1 thei_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x (
        .in_c0_eni11_0_tpl(GND_q),
        .in_c0_eni11_1_tpl(bubble_select_covariance_B10_merge_reg_aunroll_x_g),
        .in_c0_eni11_2_tpl(bubble_select_covariance_B10_merge_reg_aunroll_x_b),
        .in_c0_eni11_3_tpl(bubble_select_covariance_B10_merge_reg_aunroll_x_e),
        .in_c0_eni11_4_tpl(bubble_select_covariance_B10_merge_reg_aunroll_x_k),
        .in_c0_eni11_5_tpl(bubble_select_covariance_B10_merge_reg_aunroll_x_l),
        .in_c0_eni11_6_tpl(bubble_select_covariance_B10_merge_reg_aunroll_x_f),
        .in_c0_eni11_7_tpl(bubble_select_covariance_B10_merge_reg_aunroll_x_h),
        .in_c0_eni11_8_tpl(bubble_select_covariance_B10_merge_reg_aunroll_x_i),
        .in_c0_eni11_9_tpl(bubble_select_covariance_B10_merge_reg_aunroll_x_j),
        .in_c0_eni11_10_tpl(bubble_select_covariance_B10_merge_reg_aunroll_x_c),
        .in_c0_eni11_11_tpl(bubble_select_covariance_B10_merge_reg_aunroll_x_d),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_backStall),
        .in_i_valid(SE_out_covariance_B10_merge_reg_aunroll_x_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .out_c0_exit336_0_tpl(),
        .out_c0_exit336_1_tpl(i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_c0_exit336_1_tpl),
        .out_c0_exit336_2_tpl(i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_c0_exit336_2_tpl),
        .out_c0_exit336_3_tpl(i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_c0_exit336_3_tpl),
        .out_c0_exit336_4_tpl(i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_c0_exit336_4_tpl),
        .out_c0_exit336_5_tpl(i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_c0_exit336_5_tpl),
        .out_c0_exit336_6_tpl(i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_c0_exit336_6_tpl),
        .out_c0_exit336_7_tpl(i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_c0_exit336_7_tpl),
        .out_c0_exit336_8_tpl(i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_c0_exit336_8_tpl),
        .out_c0_exit336_9_tpl(i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_c0_exit336_9_tpl),
        .out_c0_exit336_10_tpl(i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_c0_exit336_10_tpl),
        .out_c0_exit336_11_tpl(i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_c0_exit336_11_tpl),
        .out_c0_exit336_12_tpl(i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_c0_exit336_12_tpl),
        .out_c0_exit336_13_tpl(i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_c0_exit336_13_tpl),
        .out_c0_exit336_14_tpl(i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_c0_exit336_14_tpl),
        .out_c0_exit336_15_tpl(i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_c0_exit336_15_tpl),
        .out_c0_exit336_16_tpl(i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_c0_exit336_16_tpl),
        .out_c0_exit336_17_tpl(i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_c0_exit336_17_tpl),
        .out_c0_exit336_18_tpl(i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_c0_exit336_18_tpl),
        .out_c0_exit336_19_tpl(i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_c0_exit336_19_tpl),
        .out_c0_exit336_20_tpl(i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_c0_exit336_20_tpl),
        .out_c0_exit336_21_tpl(i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_c0_exit336_21_tpl),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_covariance2_exiting_stall_out(i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_covariance2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_covariance2_exiting_valid_out(i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_covariance2_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_pipeline_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x(STALLENABLE,69)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_consumed0 = (~ (i_llvm_fpga_pop_i1_memdep_phi2_pop50_covariance3_out_stall_out) & SE_out_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_consumed1 = (~ (SE_coalesced_delay_0_0_backStall) & SE_out_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_or0);
    assign SE_out_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_wireValid = i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_o_valid;

    // SE_coalesced_delay_0_0(STALLENABLE,76)
    // Valid signal propagation
    assign SE_coalesced_delay_0_0_V0 = SE_coalesced_delay_0_0_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_0_s_tv_0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop50_covariance3_backStall & SE_coalesced_delay_0_0_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_0_backEN = ~ (SE_coalesced_delay_0_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_0_v_s_0 = SE_coalesced_delay_0_0_backEN & SE_out_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_V1;
    // Backward Stall generation
    assign SE_coalesced_delay_0_0_backStall = ~ (SE_coalesced_delay_0_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_0_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_R_v_0 & SE_coalesced_delay_0_0_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_v_s_0;
            end

        end
    end

    // bubble_join_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x(BITJOIN,56)
    assign bubble_join_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_q = {i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_c0_exit336_21_tpl, i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_c0_exit336_20_tpl, i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_c0_exit336_19_tpl, i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_c0_exit336_18_tpl, i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_c0_exit336_17_tpl, i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_c0_exit336_16_tpl, i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_c0_exit336_15_tpl, i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_c0_exit336_14_tpl, i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_c0_exit336_13_tpl, i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_c0_exit336_12_tpl, i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_c0_exit336_11_tpl, i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_c0_exit336_10_tpl, i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_c0_exit336_9_tpl, i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_c0_exit336_8_tpl, i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_c0_exit336_7_tpl, i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_c0_exit336_6_tpl, i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_c0_exit336_5_tpl, i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_c0_exit336_4_tpl, i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_c0_exit336_3_tpl, i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_c0_exit336_2_tpl, i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_c0_exit336_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x(BITSELECT,57)
    assign bubble_select_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_q[1:1]);
    assign bubble_select_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_q[33:2]);
    assign bubble_select_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_q[65:34]);
    assign bubble_select_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_q[97:66]);
    assign bubble_select_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_q[129:98]);
    assign bubble_select_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_q[161:130]);
    assign bubble_select_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_q[162:162]);
    assign bubble_select_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_q[163:163]);
    assign bubble_select_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_q[164:164]);
    assign bubble_select_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_l = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_q[165:165]);
    assign bubble_select_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_m = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_q[197:166]);
    assign bubble_select_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_n = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_q[229:198]);
    assign bubble_select_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_o = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_q[261:230]);
    assign bubble_select_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_p = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_q[293:262]);
    assign bubble_select_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_q = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_q[326:294]);
    assign bubble_select_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_r = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_q[327:327]);
    assign bubble_select_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_s = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_q[328:328]);
    assign bubble_select_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_t = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_q[329:329]);
    assign bubble_select_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_u = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_q[361:330]);
    assign bubble_select_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_v = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_q[393:362]);

    // i_llvm_fpga_pop_i1_memdep_phi2_pop50_covariance3(BLACKBOX,12)@5
    // in in_stall_in@20000000
    // out out_data_out@6
    // out out_feedback_stall_out_50@20000000
    // out out_stall_out@20000000
    // out out_valid_out@6
    covariance_i_llvm_fpga_pop_i1_memdep_phi2_pop50_0 thei_llvm_fpga_pop_i1_memdep_phi2_pop50_covariance3 (
        .in_data_in(GND_q),
        .in_dir(bubble_select_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_l),
        .in_feedback_in_50(in_feedback_in_50),
        .in_feedback_valid_in_50(in_feedback_valid_in_50),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop50_covariance3_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi2_pop50_covariance3_out_data_out),
        .out_feedback_stall_out_50(i_llvm_fpga_pop_i1_memdep_phi2_pop50_covariance3_out_feedback_stall_out_50),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi2_pop50_covariance3_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi2_pop50_covariance3_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop50_covariance3(STALLENABLE,71)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop50_covariance3_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop50_covariance3_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop50_covariance3_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop50_covariance3_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop50_covariance3_and0 = i_llvm_fpga_pop_i1_memdep_phi2_pop50_covariance3_out_valid_out;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop50_covariance3_wireValid = SE_coalesced_delay_0_0_V0 & SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop50_covariance3_and0;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop50_covariance3(BITJOIN,59)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop50_covariance3_q = i_llvm_fpga_pop_i1_memdep_phi2_pop50_covariance3_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi2_pop50_covariance3(BITSELECT,60)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi2_pop50_covariance3_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop50_covariance3_q[0:0]);

    // join_for_coalesced_delay_0(BITJOIN,48)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_t, bubble_select_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_s, bubble_select_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_r, bubble_select_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_l, bubble_select_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_k, bubble_select_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_j, bubble_select_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_i, bubble_select_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_c, bubble_select_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_b, bubble_select_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_v, bubble_select_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_u, bubble_select_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_p, bubble_select_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_o, bubble_select_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_n, bubble_select_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_m, bubble_select_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_h, bubble_select_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_g, bubble_select_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_f, bubble_select_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_e, bubble_select_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_d, bubble_select_i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_q};

    // coalesced_delay_0_0(REG,50)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(394'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,49)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_0_q[32:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_0_q[64:33]);
    assign sel_for_coalesced_delay_0_d = $unsigned(coalesced_delay_0_0_q[96:65]);
    assign sel_for_coalesced_delay_0_e = $unsigned(coalesced_delay_0_0_q[128:97]);
    assign sel_for_coalesced_delay_0_f = $unsigned(coalesced_delay_0_0_q[160:129]);
    assign sel_for_coalesced_delay_0_g = $unsigned(coalesced_delay_0_0_q[192:161]);
    assign sel_for_coalesced_delay_0_h = $unsigned(coalesced_delay_0_0_q[224:193]);
    assign sel_for_coalesced_delay_0_i = $unsigned(coalesced_delay_0_0_q[256:225]);
    assign sel_for_coalesced_delay_0_j = $unsigned(coalesced_delay_0_0_q[288:257]);
    assign sel_for_coalesced_delay_0_k = $unsigned(coalesced_delay_0_0_q[320:289]);
    assign sel_for_coalesced_delay_0_l = $unsigned(coalesced_delay_0_0_q[352:321]);
    assign sel_for_coalesced_delay_0_m = $unsigned(coalesced_delay_0_0_q[384:353]);
    assign sel_for_coalesced_delay_0_n = $unsigned(coalesced_delay_0_0_q[385:385]);
    assign sel_for_coalesced_delay_0_o = $unsigned(coalesced_delay_0_0_q[386:386]);
    assign sel_for_coalesced_delay_0_p = $unsigned(coalesced_delay_0_0_q[387:387]);
    assign sel_for_coalesced_delay_0_q = $unsigned(coalesced_delay_0_0_q[388:388]);
    assign sel_for_coalesced_delay_0_r = $unsigned(coalesced_delay_0_0_q[389:389]);
    assign sel_for_coalesced_delay_0_s = $unsigned(coalesced_delay_0_0_q[390:390]);
    assign sel_for_coalesced_delay_0_t = $unsigned(coalesced_delay_0_0_q[391:391]);
    assign sel_for_coalesced_delay_0_u = $unsigned(coalesced_delay_0_0_q[392:392]);
    assign sel_for_coalesced_delay_0_v = $unsigned(coalesced_delay_0_0_q[393:393]);

    // dupName_0_sync_out_x(GPOUT,3)@6
    assign out_c0_exe10346 = sel_for_coalesced_delay_0_r;
    assign out_c0_exe11347 = sel_for_coalesced_delay_0_s;
    assign out_c0_exe12348 = sel_for_coalesced_delay_0_h;
    assign out_c0_exe13 = sel_for_coalesced_delay_0_i;
    assign out_c0_exe1337 = sel_for_coalesced_delay_0_n;
    assign out_c0_exe14 = sel_for_coalesced_delay_0_j;
    assign out_c0_exe15 = sel_for_coalesced_delay_0_k;
    assign out_c0_exe16 = sel_for_coalesced_delay_0_b;
    assign out_c0_exe17 = sel_for_coalesced_delay_0_t;
    assign out_c0_exe18 = sel_for_coalesced_delay_0_u;
    assign out_c0_exe19 = sel_for_coalesced_delay_0_v;
    assign out_c0_exe20 = sel_for_coalesced_delay_0_l;
    assign out_c0_exe21 = sel_for_coalesced_delay_0_m;
    assign out_c0_exe2338 = sel_for_coalesced_delay_0_o;
    assign out_c0_exe3339 = sel_for_coalesced_delay_0_c;
    assign out_c0_exe4340 = sel_for_coalesced_delay_0_d;
    assign out_c0_exe5341 = sel_for_coalesced_delay_0_e;
    assign out_c0_exe6342 = sel_for_coalesced_delay_0_f;
    assign out_c0_exe7343 = sel_for_coalesced_delay_0_g;
    assign out_c0_exe8344 = sel_for_coalesced_delay_0_p;
    assign out_c0_exe9345 = sel_for_coalesced_delay_0_q;
    assign out_memdep_phi2_pop50 = bubble_select_i_llvm_fpga_pop_i1_memdep_phi2_pop50_covariance3_b;
    assign out_valid_out = SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop50_covariance3_V0;

    // ext_sig_sync_out(GPOUT,8)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_covariance2_exiting_valid_out = i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_covariance2_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_covariance2_exiting_stall_out = i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_covariance2_exiting_stall_out;

    // feedback_stall_out_50_sync(GPOUT,10)
    assign out_feedback_stall_out_50 = i_llvm_fpga_pop_i1_memdep_phi2_pop50_covariance3_out_feedback_stall_out_50;

    // pipeline_valid_out_sync(GPOUT,20)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,24)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
