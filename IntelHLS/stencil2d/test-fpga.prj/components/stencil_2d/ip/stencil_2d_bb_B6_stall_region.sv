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

// SystemVerilog created from bb_stencil_2d_B6_stall_region
// Created for function/kernel stencil_2d
// SystemVerilog created on Wed Mar 29 16:57:07 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_bb_B6_stall_region (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_stencil_2d2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_stencil_2d2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_c_025_pop16102,
    input wire [0:0] in_exitcond1147_pop20114,
    input wire [0:0] in_exitcond1185,
    input wire [0:0] in_exitcond896,
    input wire [0:0] in_forked37,
    input wire [0:0] in_memdep_phi1_pop1453_pop22120,
    input wire [0:0] in_memdep_phi1_pop1495,
    input wire [0:0] in_memdep_phi_pop17105,
    input wire [31:0] in_mul2544_pop19111,
    input wire [31:0] in_mul2580,
    input wire [0:0] in_notcmp2499,
    input wire [0:0] in_notcmp2950_pop21117,
    input wire [0:0] in_notcmp2990,
    input wire [31:0] in_r_026_pop1341_pop18108,
    input wire [31:0] in_r_026_pop1375,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe10210,
    output wire [0:0] out_c0_exe11211,
    output wire [31:0] out_c0_exe1201,
    output wire [0:0] out_c0_exe12212,
    output wire [0:0] out_c0_exe13213,
    output wire [0:0] out_c0_exe14214,
    output wire [31:0] out_c0_exe15,
    output wire [31:0] out_c0_exe16,
    output wire [0:0] out_c0_exe17,
    output wire [0:0] out_c0_exe18,
    output wire [0:0] out_c0_exe19,
    output wire [0:0] out_c0_exe20,
    output wire [0:0] out_c0_exe21,
    output wire [31:0] out_c0_exe22,
    output wire [31:0] out_c0_exe2202,
    output wire [0:0] out_c0_exe23,
    output wire [31:0] out_c0_exe24,
    output wire [31:0] out_c0_exe25,
    output wire [0:0] out_c0_exe26,
    output wire [0:0] out_c0_exe27,
    output wire [0:0] out_c0_exe28,
    output wire [31:0] out_c0_exe3203,
    output wire [31:0] out_c0_exe4204,
    output wire [0:0] out_c0_exe5205,
    output wire [0:0] out_c0_exe6206,
    output wire [31:0] out_c0_exe7207,
    output wire [0:0] out_c0_exe8208,
    output wire [0:0] out_c0_exe9209,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_stencil_2d2_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_stencil_2d2_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_pipeline_valid_out;
    wire [31:0] i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_1_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_2_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_3_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_5_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_6_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_7_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_8_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_9_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_10_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_11_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_12_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_13_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_14_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_15_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_16_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_17_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_18_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_19_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_20_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_21_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_22_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_23_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_24_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_25_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_26_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_27_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_28_tpl;
    wire [0:0] stencil_2d_B6_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] stencil_2d_B6_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] stencil_2d_B6_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [31:0] stencil_2d_B6_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [31:0] stencil_2d_B6_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [0:0] stencil_2d_B6_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [0:0] stencil_2d_B6_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [0:0] stencil_2d_B6_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [0:0] stencil_2d_B6_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [0:0] stencil_2d_B6_merge_reg_aunroll_x_out_data_out_7_tpl;
    wire [31:0] stencil_2d_B6_merge_reg_aunroll_x_out_data_out_8_tpl;
    wire [0:0] stencil_2d_B6_merge_reg_aunroll_x_out_data_out_9_tpl;
    wire [31:0] stencil_2d_B6_merge_reg_aunroll_x_out_data_out_10_tpl;
    wire [31:0] stencil_2d_B6_merge_reg_aunroll_x_out_data_out_11_tpl;
    wire [0:0] stencil_2d_B6_merge_reg_aunroll_x_out_data_out_12_tpl;
    wire [0:0] stencil_2d_B6_merge_reg_aunroll_x_out_data_out_13_tpl;
    wire [0:0] stencil_2d_B6_merge_reg_aunroll_x_out_data_out_14_tpl;
    wire [169:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [0:0] bubble_select_stall_entry_h;
    wire [0:0] bubble_select_stall_entry_i;
    wire [31:0] bubble_select_stall_entry_j;
    wire [31:0] bubble_select_stall_entry_k;
    wire [0:0] bubble_select_stall_entry_l;
    wire [0:0] bubble_select_stall_entry_m;
    wire [0:0] bubble_select_stall_entry_n;
    wire [31:0] bubble_select_stall_entry_o;
    wire [31:0] bubble_select_stall_entry_p;
    wire [337:0] bubble_join_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_b;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_c;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_d;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_f;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_g;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_h;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_i;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_j;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_k;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_l;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_m;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_n;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_o;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_p;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_r;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_s;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_t;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_u;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_v;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_w;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_x;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_y;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_z;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_aa;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_bb;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_cc;
    wire [169:0] bubble_join_stencil_2d_B6_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_stencil_2d_B6_merge_reg_aunroll_x_b;
    wire [31:0] bubble_select_stencil_2d_B6_merge_reg_aunroll_x_c;
    wire [31:0] bubble_select_stencil_2d_B6_merge_reg_aunroll_x_d;
    wire [0:0] bubble_select_stencil_2d_B6_merge_reg_aunroll_x_e;
    wire [0:0] bubble_select_stencil_2d_B6_merge_reg_aunroll_x_f;
    wire [0:0] bubble_select_stencil_2d_B6_merge_reg_aunroll_x_g;
    wire [0:0] bubble_select_stencil_2d_B6_merge_reg_aunroll_x_h;
    wire [0:0] bubble_select_stencil_2d_B6_merge_reg_aunroll_x_i;
    wire [31:0] bubble_select_stencil_2d_B6_merge_reg_aunroll_x_j;
    wire [0:0] bubble_select_stencil_2d_B6_merge_reg_aunroll_x_k;
    wire [31:0] bubble_select_stencil_2d_B6_merge_reg_aunroll_x_l;
    wire [31:0] bubble_select_stencil_2d_B6_merge_reg_aunroll_x_m;
    wire [0:0] bubble_select_stencil_2d_B6_merge_reg_aunroll_x_n;
    wire [0:0] bubble_select_stencil_2d_B6_merge_reg_aunroll_x_o;
    wire [0:0] bubble_select_stencil_2d_B6_merge_reg_aunroll_x_p;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_V0;
    wire [0:0] SE_out_stencil_2d_B6_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_stencil_2d_B6_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_stencil_2d_B6_merge_reg_aunroll_x_V0;


    // bubble_join_stall_entry(BITJOIN,21)
    assign bubble_join_stall_entry_q = {in_r_026_pop1375, in_r_026_pop1341_pop18108, in_notcmp2990, in_notcmp2950_pop21117, in_notcmp2499, in_mul2580, in_mul2544_pop19111, in_memdep_phi_pop17105, in_memdep_phi1_pop1495, in_memdep_phi1_pop1453_pop22120, in_forked37, in_exitcond896, in_exitcond1185, in_exitcond1147_pop20114, in_c_025_pop16102};

    // bubble_select_stall_entry(BITSELECT,22)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:32]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[33:33]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[34:34]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[35:35]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[36:36]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[37:37]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[38:38]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[70:39]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[102:71]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[103:103]);
    assign bubble_select_stall_entry_m = $unsigned(bubble_join_stall_entry_q[104:104]);
    assign bubble_select_stall_entry_n = $unsigned(bubble_join_stall_entry_q[105:105]);
    assign bubble_select_stall_entry_o = $unsigned(bubble_join_stall_entry_q[137:106]);
    assign bubble_select_stall_entry_p = $unsigned(bubble_join_stall_entry_q[169:138]);

    // SE_stall_entry(STALLENABLE,31)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = stencil_2d_B6_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // stencil_2d_B6_merge_reg_aunroll_x(BLACKBOX,19)@0
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
    // out out_data_out_13_tpl@1
    // out out_data_out_14_tpl@1
    stencil_2d_B6_merge_reg thestencil_2d_B6_merge_reg_aunroll_x (
        .in_stall_in(SE_out_stencil_2d_B6_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_f),
        .in_data_in_1_tpl(bubble_select_stall_entry_p),
        .in_data_in_2_tpl(bubble_select_stall_entry_k),
        .in_data_in_3_tpl(bubble_select_stall_entry_d),
        .in_data_in_4_tpl(bubble_select_stall_entry_n),
        .in_data_in_5_tpl(bubble_select_stall_entry_h),
        .in_data_in_6_tpl(bubble_select_stall_entry_e),
        .in_data_in_7_tpl(bubble_select_stall_entry_l),
        .in_data_in_8_tpl(bubble_select_stall_entry_b),
        .in_data_in_9_tpl(bubble_select_stall_entry_i),
        .in_data_in_10_tpl(bubble_select_stall_entry_o),
        .in_data_in_11_tpl(bubble_select_stall_entry_j),
        .in_data_in_12_tpl(bubble_select_stall_entry_c),
        .in_data_in_13_tpl(bubble_select_stall_entry_m),
        .in_data_in_14_tpl(bubble_select_stall_entry_g),
        .out_stall_out(stencil_2d_B6_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(stencil_2d_B6_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(stencil_2d_B6_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(stencil_2d_B6_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(stencil_2d_B6_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(stencil_2d_B6_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(stencil_2d_B6_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(stencil_2d_B6_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(stencil_2d_B6_merge_reg_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(stencil_2d_B6_merge_reg_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(stencil_2d_B6_merge_reg_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(stencil_2d_B6_merge_reg_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(stencil_2d_B6_merge_reg_aunroll_x_out_data_out_10_tpl),
        .out_data_out_11_tpl(stencil_2d_B6_merge_reg_aunroll_x_out_data_out_11_tpl),
        .out_data_out_12_tpl(stencil_2d_B6_merge_reg_aunroll_x_out_data_out_12_tpl),
        .out_data_out_13_tpl(stencil_2d_B6_merge_reg_aunroll_x_out_data_out_13_tpl),
        .out_data_out_14_tpl(stencil_2d_B6_merge_reg_aunroll_x_out_data_out_14_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_stencil_2d_B6_merge_reg_aunroll_x(BITJOIN,28)
    assign bubble_join_stencil_2d_B6_merge_reg_aunroll_x_q = {stencil_2d_B6_merge_reg_aunroll_x_out_data_out_14_tpl, stencil_2d_B6_merge_reg_aunroll_x_out_data_out_13_tpl, stencil_2d_B6_merge_reg_aunroll_x_out_data_out_12_tpl, stencil_2d_B6_merge_reg_aunroll_x_out_data_out_11_tpl, stencil_2d_B6_merge_reg_aunroll_x_out_data_out_10_tpl, stencil_2d_B6_merge_reg_aunroll_x_out_data_out_9_tpl, stencil_2d_B6_merge_reg_aunroll_x_out_data_out_8_tpl, stencil_2d_B6_merge_reg_aunroll_x_out_data_out_7_tpl, stencil_2d_B6_merge_reg_aunroll_x_out_data_out_6_tpl, stencil_2d_B6_merge_reg_aunroll_x_out_data_out_5_tpl, stencil_2d_B6_merge_reg_aunroll_x_out_data_out_4_tpl, stencil_2d_B6_merge_reg_aunroll_x_out_data_out_3_tpl, stencil_2d_B6_merge_reg_aunroll_x_out_data_out_2_tpl, stencil_2d_B6_merge_reg_aunroll_x_out_data_out_1_tpl, stencil_2d_B6_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_stencil_2d_B6_merge_reg_aunroll_x(BITSELECT,29)
    assign bubble_select_stencil_2d_B6_merge_reg_aunroll_x_b = $unsigned(bubble_join_stencil_2d_B6_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_stencil_2d_B6_merge_reg_aunroll_x_c = $unsigned(bubble_join_stencil_2d_B6_merge_reg_aunroll_x_q[32:1]);
    assign bubble_select_stencil_2d_B6_merge_reg_aunroll_x_d = $unsigned(bubble_join_stencil_2d_B6_merge_reg_aunroll_x_q[64:33]);
    assign bubble_select_stencil_2d_B6_merge_reg_aunroll_x_e = $unsigned(bubble_join_stencil_2d_B6_merge_reg_aunroll_x_q[65:65]);
    assign bubble_select_stencil_2d_B6_merge_reg_aunroll_x_f = $unsigned(bubble_join_stencil_2d_B6_merge_reg_aunroll_x_q[66:66]);
    assign bubble_select_stencil_2d_B6_merge_reg_aunroll_x_g = $unsigned(bubble_join_stencil_2d_B6_merge_reg_aunroll_x_q[67:67]);
    assign bubble_select_stencil_2d_B6_merge_reg_aunroll_x_h = $unsigned(bubble_join_stencil_2d_B6_merge_reg_aunroll_x_q[68:68]);
    assign bubble_select_stencil_2d_B6_merge_reg_aunroll_x_i = $unsigned(bubble_join_stencil_2d_B6_merge_reg_aunroll_x_q[69:69]);
    assign bubble_select_stencil_2d_B6_merge_reg_aunroll_x_j = $unsigned(bubble_join_stencil_2d_B6_merge_reg_aunroll_x_q[101:70]);
    assign bubble_select_stencil_2d_B6_merge_reg_aunroll_x_k = $unsigned(bubble_join_stencil_2d_B6_merge_reg_aunroll_x_q[102:102]);
    assign bubble_select_stencil_2d_B6_merge_reg_aunroll_x_l = $unsigned(bubble_join_stencil_2d_B6_merge_reg_aunroll_x_q[134:103]);
    assign bubble_select_stencil_2d_B6_merge_reg_aunroll_x_m = $unsigned(bubble_join_stencil_2d_B6_merge_reg_aunroll_x_q[166:135]);
    assign bubble_select_stencil_2d_B6_merge_reg_aunroll_x_n = $unsigned(bubble_join_stencil_2d_B6_merge_reg_aunroll_x_q[167:167]);
    assign bubble_select_stencil_2d_B6_merge_reg_aunroll_x_o = $unsigned(bubble_join_stencil_2d_B6_merge_reg_aunroll_x_q[168:168]);
    assign bubble_select_stencil_2d_B6_merge_reg_aunroll_x_p = $unsigned(bubble_join_stencil_2d_B6_merge_reg_aunroll_x_q[169:169]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_stencil_2d_B6_merge_reg_aunroll_x(STALLENABLE,36)
    // Valid signal propagation
    assign SE_out_stencil_2d_B6_merge_reg_aunroll_x_V0 = SE_out_stencil_2d_B6_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_stencil_2d_B6_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_o_stall | ~ (SE_out_stencil_2d_B6_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_stencil_2d_B6_merge_reg_aunroll_x_wireValid = stencil_2d_B6_merge_reg_aunroll_x_out_valid_out;

    // SE_out_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x(STALLENABLE,34)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_wireValid = i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x(BLACKBOX,18)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_stencil_2d2_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_stencil_2d2_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@7
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit200_0_tpl@7
    // out out_c0_exit200_1_tpl@7
    // out out_c0_exit200_2_tpl@7
    // out out_c0_exit200_3_tpl@7
    // out out_c0_exit200_4_tpl@7
    // out out_c0_exit200_5_tpl@7
    // out out_c0_exit200_6_tpl@7
    // out out_c0_exit200_7_tpl@7
    // out out_c0_exit200_8_tpl@7
    // out out_c0_exit200_9_tpl@7
    // out out_c0_exit200_10_tpl@7
    // out out_c0_exit200_11_tpl@7
    // out out_c0_exit200_12_tpl@7
    // out out_c0_exit200_13_tpl@7
    // out out_c0_exit200_14_tpl@7
    // out out_c0_exit200_15_tpl@7
    // out out_c0_exit200_16_tpl@7
    // out out_c0_exit200_17_tpl@7
    // out out_c0_exit200_18_tpl@7
    // out out_c0_exit200_19_tpl@7
    // out out_c0_exit200_20_tpl@7
    // out out_c0_exit200_21_tpl@7
    // out out_c0_exit200_22_tpl@7
    // out out_c0_exit200_23_tpl@7
    // out out_c0_exit200_24_tpl@7
    // out out_c0_exit200_25_tpl@7
    // out out_c0_exit200_26_tpl@7
    // out out_c0_exit200_27_tpl@7
    // out out_c0_exit200_28_tpl@7
    stencil_2d_i_sfc_s_c0_in_for_cond9_prehe0000ter17922_stencil_2d1 thei_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_backStall),
        .in_i_valid(SE_out_stencil_2d_B6_merge_reg_aunroll_x_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni15_0_tpl(GND_q),
        .in_c0_eni15_1_tpl(bubble_select_stencil_2d_B6_merge_reg_aunroll_x_b),
        .in_c0_eni15_2_tpl(bubble_select_stencil_2d_B6_merge_reg_aunroll_x_l),
        .in_c0_eni15_3_tpl(bubble_select_stencil_2d_B6_merge_reg_aunroll_x_j),
        .in_c0_eni15_4_tpl(bubble_select_stencil_2d_B6_merge_reg_aunroll_x_m),
        .in_c0_eni15_5_tpl(bubble_select_stencil_2d_B6_merge_reg_aunroll_x_n),
        .in_c0_eni15_6_tpl(bubble_select_stencil_2d_B6_merge_reg_aunroll_x_o),
        .in_c0_eni15_7_tpl(bubble_select_stencil_2d_B6_merge_reg_aunroll_x_p),
        .in_c0_eni15_8_tpl(bubble_select_stencil_2d_B6_merge_reg_aunroll_x_h),
        .in_c0_eni15_9_tpl(bubble_select_stencil_2d_B6_merge_reg_aunroll_x_i),
        .in_c0_eni15_10_tpl(bubble_select_stencil_2d_B6_merge_reg_aunroll_x_k),
        .in_c0_eni15_11_tpl(bubble_select_stencil_2d_B6_merge_reg_aunroll_x_c),
        .in_c0_eni15_12_tpl(bubble_select_stencil_2d_B6_merge_reg_aunroll_x_d),
        .in_c0_eni15_13_tpl(bubble_select_stencil_2d_B6_merge_reg_aunroll_x_e),
        .in_c0_eni15_14_tpl(bubble_select_stencil_2d_B6_merge_reg_aunroll_x_f),
        .in_c0_eni15_15_tpl(bubble_select_stencil_2d_B6_merge_reg_aunroll_x_g),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_stencil_2d2_exiting_stall_out(i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_stencil_2d2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_stencil_2d2_exiting_valid_out(i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_stencil_2d2_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit200_0_tpl(),
        .out_c0_exit200_1_tpl(i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_1_tpl),
        .out_c0_exit200_2_tpl(i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_2_tpl),
        .out_c0_exit200_3_tpl(i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_3_tpl),
        .out_c0_exit200_4_tpl(i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_4_tpl),
        .out_c0_exit200_5_tpl(i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_5_tpl),
        .out_c0_exit200_6_tpl(i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_6_tpl),
        .out_c0_exit200_7_tpl(i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_7_tpl),
        .out_c0_exit200_8_tpl(i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_8_tpl),
        .out_c0_exit200_9_tpl(i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_9_tpl),
        .out_c0_exit200_10_tpl(i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_10_tpl),
        .out_c0_exit200_11_tpl(i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_11_tpl),
        .out_c0_exit200_12_tpl(i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_12_tpl),
        .out_c0_exit200_13_tpl(i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_13_tpl),
        .out_c0_exit200_14_tpl(i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_14_tpl),
        .out_c0_exit200_15_tpl(i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_15_tpl),
        .out_c0_exit200_16_tpl(i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_16_tpl),
        .out_c0_exit200_17_tpl(i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_17_tpl),
        .out_c0_exit200_18_tpl(i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_18_tpl),
        .out_c0_exit200_19_tpl(i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_19_tpl),
        .out_c0_exit200_20_tpl(i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_20_tpl),
        .out_c0_exit200_21_tpl(i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_21_tpl),
        .out_c0_exit200_22_tpl(i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_22_tpl),
        .out_c0_exit200_23_tpl(i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_23_tpl),
        .out_c0_exit200_24_tpl(i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_24_tpl),
        .out_c0_exit200_25_tpl(i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_25_tpl),
        .out_c0_exit200_26_tpl(i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_26_tpl),
        .out_c0_exit200_27_tpl(i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_27_tpl),
        .out_c0_exit200_28_tpl(i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_28_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,5)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_stencil_2d2_exiting_valid_out = i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_stencil_2d2_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_stencil_2d2_exiting_stall_out = i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_stencil_2d2_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,11)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,15)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // bubble_join_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x(BITJOIN,25)
    assign bubble_join_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_q = {i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_28_tpl, i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_27_tpl, i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_26_tpl, i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_25_tpl, i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_24_tpl, i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_23_tpl, i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_22_tpl, i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_21_tpl, i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_20_tpl, i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_19_tpl, i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_18_tpl, i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_17_tpl, i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_16_tpl, i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_15_tpl, i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_14_tpl, i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_13_tpl, i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_12_tpl, i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_11_tpl, i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_10_tpl, i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_9_tpl, i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_8_tpl, i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_7_tpl, i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_6_tpl, i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_5_tpl, i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_4_tpl, i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_3_tpl, i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_2_tpl, i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_out_c0_exit200_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x(BITSELECT,26)
    assign bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_q[31:0]);
    assign bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_q[63:32]);
    assign bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_q[95:64]);
    assign bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_q[127:96]);
    assign bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_q[128:128]);
    assign bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_q[129:129]);
    assign bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_q[161:130]);
    assign bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_q[162:162]);
    assign bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_q[163:163]);
    assign bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_q[164:164]);
    assign bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_l = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_q[165:165]);
    assign bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_m = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_q[166:166]);
    assign bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_n = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_q[167:167]);
    assign bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_o = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_q[168:168]);
    assign bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_p = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_q[200:169]);
    assign bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_q = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_q[232:201]);
    assign bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_r = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_q[233:233]);
    assign bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_s = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_q[234:234]);
    assign bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_t = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_q[235:235]);
    assign bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_u = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_q[236:236]);
    assign bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_v = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_q[237:237]);
    assign bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_w = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_q[269:238]);
    assign bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_x = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_q[270:270]);
    assign bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_y = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_q[302:271]);
    assign bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_z = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_q[334:303]);
    assign bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_aa = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_q[335:335]);
    assign bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_bb = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_q[336:336]);
    assign bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_cc = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_q[337:337]);

    // dupName_0_sync_out_x(GPOUT,17)@7
    assign out_c0_exe10210 = bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_k;
    assign out_c0_exe11211 = bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_l;
    assign out_c0_exe1201 = bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_b;
    assign out_c0_exe12212 = bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_m;
    assign out_c0_exe13213 = bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_n;
    assign out_c0_exe14214 = bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_o;
    assign out_c0_exe15 = bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_p;
    assign out_c0_exe16 = bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_q;
    assign out_c0_exe17 = bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_r;
    assign out_c0_exe18 = bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_s;
    assign out_c0_exe19 = bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_t;
    assign out_c0_exe20 = bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_u;
    assign out_c0_exe21 = bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_v;
    assign out_c0_exe22 = bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_w;
    assign out_c0_exe2202 = bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_c;
    assign out_c0_exe23 = bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_x;
    assign out_c0_exe24 = bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_y;
    assign out_c0_exe25 = bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_z;
    assign out_c0_exe26 = bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_aa;
    assign out_c0_exe27 = bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_bb;
    assign out_c0_exe28 = bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_cc;
    assign out_c0_exe3203 = bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_d;
    assign out_c0_exe4204 = bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_e;
    assign out_c0_exe5205 = bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_f;
    assign out_c0_exe6206 = bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_g;
    assign out_c0_exe7207 = bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_h;
    assign out_c0_exe8208 = bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_i;
    assign out_c0_exe9209 = bubble_select_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_j;
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d1_aunroll_x_V0;

endmodule
