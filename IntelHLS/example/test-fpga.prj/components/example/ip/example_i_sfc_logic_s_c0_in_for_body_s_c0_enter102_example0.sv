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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body_examples_c0_enter102_example0
// Created for function/kernel example
// SystemVerilog created on Tue Apr  4 21:14:17 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module example_i_sfc_logic_s_c0_in_for_body_s_c0_enter102_example0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_example6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_example6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    output wire [31:0] out_intel_reserved_ffwd_0_0,
    output wire [0:0] out_c0_exi2_0_tpl,
    output wire [0:0] out_c0_exi2_1_tpl,
    output wire [0:0] out_c0_exi2_2_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_example1,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [0:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_float_0_000000e_0099_q;
    wire [31:0] c_i32_092_q;
    wire [31:0] c_i32_193_q;
    wire [31:0] c_i32_394_q;
    wire [3:0] c_i4_789_q;
    wire [7:0] c_i8_097_q;
    wire [7:0] c_i8_1101_q;
    wire [7:0] c_i8_220_q;
    wire [7:0] c_i8_398_q;
    wire [7:0] c_i8_98100_q;
    wire [31:0] i_add_example59_out_primWireOut;
    wire [3:0] i_cleanups_shl_example5_vt_join_q;
    wire [2:0] i_cleanups_shl_example5_vt_select_3_b;
    wire [9:0] i_cmp13_i_1_i_example22_a;
    wire [9:0] i_cmp13_i_1_i_example22_b;
    logic [9:0] i_cmp13_i_1_i_example22_o;
    wire [0:0] i_cmp13_i_1_i_example22_c;
    wire [9:0] i_cmp13_i_2_i_example27_a;
    wire [9:0] i_cmp13_i_2_i_example27_b;
    logic [9:0] i_cmp13_i_2_i_example27_o;
    wire [0:0] i_cmp13_i_2_i_example27_c;
    wire [9:0] i_cmp13_i_3_i_example32_a;
    wire [9:0] i_cmp13_i_3_i_example32_b;
    logic [9:0] i_cmp13_i_3_i_example32_o;
    wire [0:0] i_cmp13_i_3_i_example32_c;
    wire [9:0] i_cmp13_i_4_i_example37_a;
    wire [9:0] i_cmp13_i_4_i_example37_b;
    logic [9:0] i_cmp13_i_4_i_example37_o;
    wire [0:0] i_cmp13_i_4_i_example37_c;
    wire [9:0] i_cmp13_i_5_i_example42_a;
    wire [9:0] i_cmp13_i_5_i_example42_b;
    logic [9:0] i_cmp13_i_5_i_example42_o;
    wire [0:0] i_cmp13_i_5_i_example42_c;
    wire [9:0] i_cmp13_i_6_i_example47_a;
    wire [9:0] i_cmp13_i_6_i_example47_b;
    logic [9:0] i_cmp13_i_6_i_example47_o;
    wire [0:0] i_cmp13_i_6_i_example47_c;
    wire [9:0] i_cmp13_i_7_i_example52_a;
    wire [9:0] i_cmp13_i_7_i_example52_b;
    logic [9:0] i_cmp13_i_7_i_example52_o;
    wire [0:0] i_cmp13_i_7_i_example52_c;
    wire [31:0] i_conv4_example16_out_primWireOut;
    wire [31:0] i_conv_example55_out_primWireOut;
    wire [0:0] i_first_cleanup_xor_example4_q;
    wire [8:0] i_fpga_indvars_iv_next_example70_a;
    wire [8:0] i_fpga_indvars_iv_next_example70_b;
    logic [8:0] i_fpga_indvars_iv_next_example70_o;
    wire [8:0] i_fpga_indvars_iv_next_example70_q;
    wire [32:0] i_inc_example13_a;
    wire [32:0] i_inc_example13_b;
    logic [32:0] i_inc_example13_o;
    wire [32:0] i_inc_example13_q;
    wire [31:0] i_llvm_fpga_ffwd_source_f32_unnamed_example3_example72_out_intel_reserved_ffwd_0_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_example6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_example6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_example6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_example6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_example6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_example6_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_f32_s_017_pop8_example58_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_s_017_pop8_example58_out_feedback_stall_out_8;
    wire [31:0] i_llvm_fpga_pop_i32_i_018_pop7_example12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_018_pop7_example12_out_feedback_stall_out_7;
    wire [3:0] i_llvm_fpga_pop_i4_cleanups_pop10_example2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups_pop10_example2_out_feedback_stall_out_10;
    wire [3:0] i_llvm_fpga_pop_i4_initerations_pop9_example7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop9_example7_out_feedback_stall_out_9;
    wire [7:0] i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_example62_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_example62_out_feedback_stall_out_6;
    wire [31:0] i_llvm_fpga_push_f32_s_017_push8_example61_out_feedback_out_8;
    wire [0:0] i_llvm_fpga_push_f32_s_017_push8_example61_out_feedback_valid_out_8;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_example11_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_example11_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_example66_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_example66_out_feedback_valid_out_3;
    wire [31:0] i_llvm_fpga_push_i32_i_018_push7_example14_out_feedback_out_7;
    wire [0:0] i_llvm_fpga_push_i32_i_018_push7_example14_out_feedback_valid_out_7;
    wire [7:0] i_llvm_fpga_push_i4_cleanups_push10_example69_out_feedback_out_10;
    wire [0:0] i_llvm_fpga_push_i4_cleanups_push10_example69_out_feedback_valid_out_10;
    wire [7:0] i_llvm_fpga_push_i4_initerations_push9_example9_out_feedback_out_9;
    wire [0:0] i_llvm_fpga_push_i4_initerations_push9_example9_out_feedback_valid_out_9;
    wire [7:0] i_llvm_fpga_push_i8_fpga_indvars_iv_push6_example71_out_feedback_out_6;
    wire [0:0] i_llvm_fpga_push_i8_fpga_indvars_iv_push6_example71_out_feedback_valid_out_6;
    wire [0:0] i_masked_example73_qi;
    reg [0:0] i_masked_example73_q;
    wire [0:0] i_narrow_1_i_example23_s;
    reg [7:0] i_narrow_1_i_example23_q;
    wire [5:0] i_narrow_1_i_example23_vt_const_7_q;
    wire [7:0] i_narrow_1_i_example23_vt_join_q;
    wire [1:0] i_narrow_1_i_example23_vt_select_1_b;
    wire [0:0] i_narrow_2_i_example28_s;
    reg [7:0] i_narrow_2_i_example28_q;
    wire [7:0] i_narrow_2_i_example28_vt_join_q;
    wire [1:0] i_narrow_2_i_example28_vt_select_1_b;
    wire [0:0] i_narrow_3_i_example33_s;
    reg [7:0] i_narrow_3_i_example33_q;
    wire [7:0] i_narrow_3_i_example33_vt_join_q;
    wire [1:0] i_narrow_3_i_example33_vt_select_1_b;
    wire [0:0] i_narrow_4_i_example38_s;
    reg [7:0] i_narrow_4_i_example38_q;
    wire [7:0] i_narrow_4_i_example38_vt_join_q;
    wire [1:0] i_narrow_4_i_example38_vt_select_1_b;
    wire [0:0] i_narrow_5_i_example43_s;
    reg [7:0] i_narrow_5_i_example43_q;
    wire [7:0] i_narrow_5_i_example43_vt_join_q;
    wire [1:0] i_narrow_5_i_example43_vt_select_1_b;
    wire [0:0] i_narrow_6_i_example48_s;
    reg [7:0] i_narrow_6_i_example48_q;
    wire [7:0] i_narrow_6_i_example48_vt_join_q;
    wire [1:0] i_narrow_6_i_example48_vt_select_1_b;
    wire [0:0] i_narrow_7_i_example53_s;
    reg [7:0] i_narrow_7_i_example53_q;
    wire [7:0] i_narrow_7_i_example53_vt_join_q;
    wire [1:0] i_narrow_7_i_example53_vt_select_1_b;
    wire [0:0] i_next_cleanups_example68_s;
    reg [3:0] i_next_cleanups_example68_q;
    wire [3:0] i_next_initerations_example8_vt_join_q;
    wire [2:0] i_next_initerations_example8_vt_select_2_b;
    wire [0:0] i_notcmp_example65_q;
    wire [0:0] i_or_example67_q;
    wire [31:0] i_rem3_example15_q;
    wire [29:0] i_rem3_example15_vt_const_31_q;
    wire [31:0] i_rem3_example15_vt_join_q;
    wire [1:0] i_rem3_example15_vt_select_1_b;
    wire [8:0] i_sub16_i_1_i_example24_a;
    wire [8:0] i_sub16_i_1_i_example24_b;
    logic [8:0] i_sub16_i_1_i_example24_o;
    wire [8:0] i_sub16_i_1_i_example24_q;
    wire [8:0] i_sub16_i_2_i_example29_a;
    wire [8:0] i_sub16_i_2_i_example29_b;
    logic [8:0] i_sub16_i_2_i_example29_o;
    wire [8:0] i_sub16_i_2_i_example29_q;
    wire [8:0] i_sub16_i_3_i_example34_a;
    wire [8:0] i_sub16_i_3_i_example34_b;
    logic [8:0] i_sub16_i_3_i_example34_o;
    wire [8:0] i_sub16_i_3_i_example34_q;
    wire [8:0] i_sub16_i_4_i_example39_a;
    wire [8:0] i_sub16_i_4_i_example39_b;
    logic [8:0] i_sub16_i_4_i_example39_o;
    wire [8:0] i_sub16_i_4_i_example39_q;
    wire [8:0] i_sub16_i_5_i_example44_a;
    wire [8:0] i_sub16_i_5_i_example44_b;
    logic [8:0] i_sub16_i_5_i_example44_o;
    wire [8:0] i_sub16_i_5_i_example44_q;
    wire [8:0] i_sub16_i_6_i_example49_a;
    wire [8:0] i_sub16_i_6_i_example49_b;
    logic [8:0] i_sub16_i_6_i_example49_o;
    wire [8:0] i_sub16_i_6_i_example49_q;
    wire [8:0] i_sub16_i_7_i_example54_a;
    wire [8:0] i_sub16_i_7_i_example54_b;
    logic [8:0] i_sub16_i_7_i_example54_o;
    wire [8:0] i_sub16_i_7_i_example54_q;
    wire [31:0] i_sub_example56_out_primWireOut;
    wire [6:0] i_unnamed_example18_vt_const_7_q;
    wire [7:0] i_unnamed_example18_vt_join_q;
    wire [0:0] i_unnamed_example18_vt_select_0_b;
    wire [0:0] i_unnamed_example60_s;
    reg [31:0] i_unnamed_example60_q;
    wire [7:0] bgTrunc_i_fpga_indvars_iv_next_example70_sel_x_b;
    wire [31:0] bgTrunc_i_inc_example13_sel_x_b;
    wire [7:0] bgTrunc_i_sub16_i_1_i_example24_sel_x_b;
    wire [7:0] bgTrunc_i_sub16_i_2_i_example29_sel_x_b;
    wire [7:0] bgTrunc_i_sub16_i_3_i_example34_sel_x_b;
    wire [7:0] bgTrunc_i_sub16_i_4_i_example39_sel_x_b;
    wire [7:0] bgTrunc_i_sub16_i_5_i_example44_sel_x_b;
    wire [7:0] bgTrunc_i_sub16_i_6_i_example49_sel_x_b;
    wire [7:0] bgTrunc_i_sub16_i_7_i_example54_sel_x_b;
    wire [0:0] i_first_cleanup_example3_sel_x_b;
    wire [0:0] i_last_initeration_example10_sel_x_b;
    wire [23:0] i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_1_shuffle_i_example0_NO_NAME_x_a;
    wire [7:0] i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_1_shuffle_i_example0_NO_NAME_x_q;
    wire [23:0] i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_1_shuffle_i_example0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [23:0] i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_2_shuffle_i_example0_NO_NAME_x_a;
    wire [7:0] i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_2_shuffle_i_example0_NO_NAME_x_q;
    wire [23:0] i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_2_shuffle_i_example0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [23:0] i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_3_shuffle_i_example0_NO_NAME_x_a;
    wire [7:0] i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_3_shuffle_i_example0_NO_NAME_x_q;
    wire [23:0] i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_3_shuffle_i_example0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [23:0] i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_4_shuffle_i_example0_NO_NAME_x_a;
    wire [7:0] i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_4_shuffle_i_example0_NO_NAME_x_q;
    wire [23:0] i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_4_shuffle_i_example0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [23:0] i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_5_shuffle_i_example0_NO_NAME_x_a;
    wire [7:0] i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_5_shuffle_i_example0_NO_NAME_x_q;
    wire [23:0] i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_5_shuffle_i_example0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [23:0] i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_6_shuffle_i_example0_NO_NAME_x_a;
    wire [7:0] i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_6_shuffle_i_example0_NO_NAME_x_q;
    wire [23:0] i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_6_shuffle_i_example0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [23:0] i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_7_shuffle_i_example0_NO_NAME_x_a;
    wire [7:0] i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_7_shuffle_i_example0_NO_NAME_x_q;
    wire [23:0] i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_7_shuffle_i_example0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [7:0] i_rem_lhs_trunc_example17_sel_x_b;
    wire [22:0] cstZeroWF_uid181_i_cmp14_example57_q;
    wire [7:0] exp_x_uid183_i_cmp14_example57_b;
    wire [22:0] frac_x_uid184_i_cmp14_example57_b;
    wire [0:0] expXIsZero_uid185_i_cmp14_example57_q;
    wire [0:0] expXIsMax_uid186_i_cmp14_example57_q;
    wire [0:0] fracXIsZero_uid187_i_cmp14_example57_q;
    wire [0:0] fracXIsNotZero_uid188_i_cmp14_example57_q;
    wire [0:0] excZ_x_uid189_i_cmp14_example57_q;
    wire [0:0] excN_x_uid191_i_cmp14_example57_q;
    wire [7:0] exp_y_uid200_i_cmp14_example57_b;
    wire [22:0] frac_y_uid201_i_cmp14_example57_b;
    wire [0:0] expXIsZero_uid202_i_cmp14_example57_q;
    wire [0:0] expXIsMax_uid203_i_cmp14_example57_q;
    wire [0:0] fracXIsZero_uid204_i_cmp14_example57_q;
    wire [0:0] fracXIsNotZero_uid205_i_cmp14_example57_q;
    wire [0:0] excZ_y_uid206_i_cmp14_example57_q;
    wire [0:0] excN_y_uid208_i_cmp14_example57_q;
    wire [0:0] oneIsNaN_uid214_i_cmp14_example57_qi;
    reg [0:0] oneIsNaN_uid214_i_cmp14_example57_q;
    wire [30:0] expFracX_uid219_i_cmp14_example57_q;
    wire [30:0] expFracY_uid221_i_cmp14_example57_q;
    wire [32:0] efxGTefy_uid223_i_cmp14_example57_a;
    wire [32:0] efxGTefy_uid223_i_cmp14_example57_b;
    logic [32:0] efxGTefy_uid223_i_cmp14_example57_o;
    wire [0:0] efxGTefy_uid223_i_cmp14_example57_c;
    wire [32:0] efxLTefy_uid224_i_cmp14_example57_a;
    wire [32:0] efxLTefy_uid224_i_cmp14_example57_b;
    logic [32:0] efxLTefy_uid224_i_cmp14_example57_o;
    wire [0:0] efxLTefy_uid224_i_cmp14_example57_c;
    wire [0:0] signX_uid228_i_cmp14_example57_b;
    wire [0:0] signY_uid229_i_cmp14_example57_b;
    wire [1:0] two_uid230_i_cmp14_example57_q;
    wire [1:0] concSXSY_uid231_i_cmp14_example57_q;
    wire [0:0] sxLTsy_uid232_i_cmp14_example57_q;
    wire [0:0] xorSigns_uid233_i_cmp14_example57_q;
    wire [0:0] sxEQsy_uid234_i_cmp14_example57_q;
    wire [0:0] expFracCompMux_uid235_i_cmp14_example57_s;
    reg [0:0] expFracCompMux_uid235_i_cmp14_example57_q;
    wire [0:0] invExcYZ_uid236_i_cmp14_example57_q;
    wire [0:0] invExcXZ_uid237_i_cmp14_example57_q;
    wire [0:0] oneNonZero_uid238_i_cmp14_example57_q;
    wire [0:0] rc2_uid239_i_cmp14_example57_q;
    wire [0:0] sxEQsyExpFracCompMux_uid240_i_cmp14_example57_q;
    wire [0:0] r_uid241_i_cmp14_example57_qi;
    reg [0:0] r_uid241_i_cmp14_example57_q;
    wire [0:0] rPostExc_uid242_i_cmp14_example57_qi;
    reg [0:0] rPostExc_uid242_i_cmp14_example57_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg7_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg8_q;
    wire [0:0] i_exitcond_example63_cmp_nsign_q;
    wire [2:0] leftShiftStage0Idx1Rng1_uid273_i_cleanups_shl_example0_shift_x_in;
    wire [2:0] leftShiftStage0Idx1Rng1_uid273_i_cleanups_shl_example0_shift_x_b;
    wire [3:0] leftShiftStage0Idx1_uid274_i_cleanups_shl_example0_shift_x_q;
    wire [0:0] leftShiftStage0_uid276_i_cleanups_shl_example0_shift_x_s;
    reg [3:0] leftShiftStage0_uid276_i_cleanups_shl_example0_shift_x_q;
    wire [2:0] rightShiftStage0Idx1Rng1_uid280_i_next_initerations_example0_shift_x_b;
    wire [3:0] rightShiftStage0Idx1_uid282_i_next_initerations_example0_shift_x_q;
    wire [0:0] rightShiftStage0_uid284_i_next_initerations_example0_shift_x_s;
    reg [3:0] rightShiftStage0_uid284_i_next_initerations_example0_shift_x_q;
    wire [6:0] rightShiftStage0Idx1Rng1_uid288_i_unnamed_example0_shift_x_b;
    wire [7:0] rightShiftStage0Idx1_uid290_i_unnamed_example0_shift_x_q;
    wire [0:0] rightShiftStage0_uid292_i_unnamed_example0_shift_x_s;
    reg [7:0] rightShiftStage0_uid292_i_unnamed_example0_shift_x_q;
    wire [5:0] rightShiftStage1Idx1Rng2_uid293_i_unnamed_example0_shift_x_b;
    wire [1:0] rightShiftStage1Idx1Pad2_uid294_i_unnamed_example0_shift_x_q;
    wire [7:0] rightShiftStage1Idx1_uid295_i_unnamed_example0_shift_x_q;
    wire [0:0] rightShiftStage1_uid297_i_unnamed_example0_shift_x_s;
    reg [7:0] rightShiftStage1_uid297_i_unnamed_example0_shift_x_q;
    wire [3:0] rightShiftStage2Idx1Rng4_uid298_i_unnamed_example0_shift_x_b;
    wire [3:0] rightShiftStage2Idx1Pad4_uid299_i_unnamed_example0_shift_x_q;
    wire [7:0] rightShiftStage2Idx1_uid300_i_unnamed_example0_shift_x_q;
    wire [0:0] rightShiftStage2_uid302_i_unnamed_example0_shift_x_s;
    reg [7:0] rightShiftStage2_uid302_i_unnamed_example0_shift_x_q;
    reg [0:0] redist0_rPostExc_uid242_i_cmp14_example57_q_2_q;
    reg [0:0] redist1_sync_together117_aunroll_x_in_c0_eni1_1_tpl_2_q;
    reg [0:0] redist1_sync_together117_aunroll_x_in_c0_eni1_1_tpl_2_delay_0;
    reg [0:0] redist2_sync_together117_aunroll_x_in_c0_eni1_1_tpl_11_q;
    reg [0:0] redist3_sync_together117_aunroll_x_in_c0_eni1_1_tpl_15_q;
    reg [0:0] redist3_sync_together117_aunroll_x_in_c0_eni1_1_tpl_15_delay_0;
    reg [0:0] redist3_sync_together117_aunroll_x_in_c0_eni1_1_tpl_15_delay_1;
    reg [0:0] redist3_sync_together117_aunroll_x_in_c0_eni1_1_tpl_15_delay_2;
    reg [0:0] redist4_sync_together117_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist5_sync_together117_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist6_sync_together117_aunroll_x_in_i_valid_11_q;
    reg [0:0] redist7_sync_together117_aunroll_x_in_i_valid_14_q;
    reg [0:0] redist7_sync_together117_aunroll_x_in_i_valid_14_delay_0;
    reg [0:0] redist7_sync_together117_aunroll_x_in_i_valid_14_delay_1;
    reg [0:0] redist8_sync_together117_aunroll_x_in_i_valid_17_q;
    reg [0:0] redist8_sync_together117_aunroll_x_in_i_valid_17_delay_0;
    reg [0:0] redist8_sync_together117_aunroll_x_in_i_valid_17_delay_1;
    reg [7:0] redist9_i_rem_lhs_trunc_example17_sel_x_b_1_q;
    reg [7:0] redist10_i_rem_lhs_trunc_example17_sel_x_b_2_q;
    reg [7:0] redist11_i_rem_lhs_trunc_example17_sel_x_b_3_q;
    reg [7:0] redist12_i_rem_lhs_trunc_example17_sel_x_b_5_q;
    reg [7:0] redist12_i_rem_lhs_trunc_example17_sel_x_b_5_delay_0;
    reg [7:0] redist13_i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_7_shuffle_i_example0_NO_NAME_x_q_1_q;
    reg [7:0] redist14_i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_5_shuffle_i_example0_NO_NAME_x_q_1_q;
    reg [7:0] redist15_i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_4_shuffle_i_example0_NO_NAME_x_q_1_q;
    reg [7:0] redist16_i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_3_shuffle_i_example0_NO_NAME_x_q_1_q;
    reg [7:0] redist17_bgTrunc_i_sub16_i_7_i_example54_sel_x_b_1_q;
    reg [7:0] redist18_bgTrunc_i_sub16_i_5_i_example44_sel_x_b_1_q;
    reg [7:0] redist19_bgTrunc_i_sub16_i_1_i_example24_sel_x_b_1_q;
    reg [1:0] redist20_i_rem3_example15_vt_select_1_b_5_q;
    reg [1:0] redist20_i_rem3_example15_vt_select_1_b_5_delay_0;
    reg [1:0] redist20_i_rem3_example15_vt_select_1_b_5_delay_1;
    reg [1:0] redist20_i_rem3_example15_vt_select_1_b_5_delay_2;
    reg [1:0] redist20_i_rem3_example15_vt_select_1_b_5_delay_3;
    reg [0:0] redist21_i_masked_example73_q_7_q;
    reg [31:0] redist22_i_llvm_fpga_pop_f32_s_017_pop8_example58_out_data_out_3_q;
    reg [31:0] redist22_i_llvm_fpga_pop_f32_s_017_pop8_example58_out_data_out_3_delay_0;
    reg [0:0] redist23_i_llvm_fpga_pipeline_keep_going_example6_out_data_out_9_q;
    reg [0:0] redist24_i_llvm_fpga_pipeline_keep_going_example6_out_data_out_16_q;
    reg [0:0] redist25_i_first_cleanup_xor_example4_q_7_q;
    reg [31:0] redist22_i_llvm_fpga_pop_f32_s_017_pop8_example58_out_data_out_3_inputreg0_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist4_sync_together117_aunroll_x_in_i_valid_1(DELAY,307)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together117_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist4_sync_together117_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist5_sync_together117_aunroll_x_in_i_valid_2(DELAY,308)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together117_aunroll_x_in_i_valid_2_q <= '0;
        end
        else
        begin
            redist5_sync_together117_aunroll_x_in_i_valid_2_q <= $unsigned(redist4_sync_together117_aunroll_x_in_i_valid_1_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // redist6_sync_together117_aunroll_x_in_i_valid_11(DELAY,309)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist6_sync_together117_aunroll_x_in_i_valid_11 ( .xin(redist5_sync_together117_aunroll_x_in_i_valid_2_q), .xout(redist6_sync_together117_aunroll_x_in_i_valid_11_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist23_i_llvm_fpga_pipeline_keep_going_example6_out_data_out_9(DELAY,326)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist23_i_llvm_fpga_pipeline_keep_going_example6_out_data_out_9 ( .xin(i_llvm_fpga_pipeline_keep_going_example6_out_data_out), .xout(redist23_i_llvm_fpga_pipeline_keep_going_example6_out_data_out_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // leftShiftStage0Idx1Rng1_uid273_i_cleanups_shl_example0_shift_x(BITSELECT,272)@12
    assign leftShiftStage0Idx1Rng1_uid273_i_cleanups_shl_example0_shift_x_in = i_llvm_fpga_pop_i4_cleanups_pop10_example2_out_data_out[2:0];
    assign leftShiftStage0Idx1Rng1_uid273_i_cleanups_shl_example0_shift_x_b = leftShiftStage0Idx1Rng1_uid273_i_cleanups_shl_example0_shift_x_in[2:0];

    // leftShiftStage0Idx1_uid274_i_cleanups_shl_example0_shift_x(BITJOIN,273)@12
    assign leftShiftStage0Idx1_uid274_i_cleanups_shl_example0_shift_x_q = {leftShiftStage0Idx1Rng1_uid273_i_cleanups_shl_example0_shift_x_b, GND_q};

    // leftShiftStage0_uid276_i_cleanups_shl_example0_shift_x(MUX,275)@12
    assign leftShiftStage0_uid276_i_cleanups_shl_example0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid276_i_cleanups_shl_example0_shift_x_s or i_llvm_fpga_pop_i4_cleanups_pop10_example2_out_data_out or leftShiftStage0Idx1_uid274_i_cleanups_shl_example0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid276_i_cleanups_shl_example0_shift_x_s)
            1'b0 : leftShiftStage0_uid276_i_cleanups_shl_example0_shift_x_q = i_llvm_fpga_pop_i4_cleanups_pop10_example2_out_data_out;
            1'b1 : leftShiftStage0_uid276_i_cleanups_shl_example0_shift_x_q = leftShiftStage0Idx1_uid274_i_cleanups_shl_example0_shift_x_q;
            default : leftShiftStage0_uid276_i_cleanups_shl_example0_shift_x_q = 4'b0;
        endcase
    end

    // i_cleanups_shl_example5_vt_select_3(BITSELECT,42)@12
    assign i_cleanups_shl_example5_vt_select_3_b = leftShiftStage0_uid276_i_cleanups_shl_example0_shift_x_q[3:1];

    // i_cleanups_shl_example5_vt_join(BITJOIN,41)@12
    assign i_cleanups_shl_example5_vt_join_q = {i_cleanups_shl_example5_vt_select_3_b, GND_q};

    // i_first_cleanup_xor_example4(LOGICAL,55)@12
    assign i_first_cleanup_xor_example4_q = i_first_cleanup_example3_sel_x_b ^ VCC_q;

    // i_notcmp_example65(LOGICAL,106)@12
    assign i_notcmp_example65_q = i_exitcond_example63_cmp_nsign_q ^ VCC_q;

    // i_or_example67(LOGICAL,107)@12
    assign i_or_example67_q = i_notcmp_example65_q | i_first_cleanup_xor_example4_q;

    // i_next_cleanups_example68(MUX,102)@12
    assign i_next_cleanups_example68_s = i_or_example67_q;
    always @(i_next_cleanups_example68_s or i_llvm_fpga_pop_i4_cleanups_pop10_example2_out_data_out or i_cleanups_shl_example5_vt_join_q)
    begin
        unique case (i_next_cleanups_example68_s)
            1'b0 : i_next_cleanups_example68_q = i_llvm_fpga_pop_i4_cleanups_pop10_example2_out_data_out;
            1'b1 : i_next_cleanups_example68_q = i_cleanups_shl_example5_vt_join_q;
            default : i_next_cleanups_example68_q = 4'b0;
        endcase
    end

    // i_llvm_fpga_push_i4_cleanups_push10_example69(BLACKBOX,70)@12
    // out out_feedback_out_10@20000000
    // out out_feedback_valid_out_10@20000000
    example_i_llvm_fpga_push_i4_cleanups_push10_0 thei_llvm_fpga_push_i4_cleanups_push10_example69 (
        .in_data_in(i_next_cleanups_example68_q),
        .in_feedback_stall_in_10(i_llvm_fpga_pop_i4_cleanups_pop10_example2_out_feedback_stall_out_10),
        .in_keep_going(redist23_i_llvm_fpga_pipeline_keep_going_example6_out_data_out_9_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist6_sync_together117_aunroll_x_in_i_valid_11_q),
        .out_data_out(),
        .out_feedback_out_10(i_llvm_fpga_push_i4_cleanups_push10_example69_out_feedback_out_10),
        .out_feedback_valid_out_10(i_llvm_fpga_push_i4_cleanups_push10_example69_out_feedback_valid_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together117_aunroll_x_in_c0_eni1_1_tpl_11(DELAY,305)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist2_sync_together117_aunroll_x_in_c0_eni1_1_tpl_11 ( .xin(redist1_sync_together117_aunroll_x_in_c0_eni1_1_tpl_2_q), .xout(redist2_sync_together117_aunroll_x_in_c0_eni1_1_tpl_11_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i4_789(CONSTANT,31)
    assign c_i4_789_q = $unsigned(4'b0111);

    // i_llvm_fpga_pop_i4_cleanups_pop10_example2(BLACKBOX,63)@12
    // out out_feedback_stall_out_10@20000000
    example_i_llvm_fpga_pop_i4_cleanups_pop10_0 thei_llvm_fpga_pop_i4_cleanups_pop10_example2 (
        .in_data_in(c_i4_789_q),
        .in_dir(redist2_sync_together117_aunroll_x_in_c0_eni1_1_tpl_11_q),
        .in_feedback_in_10(i_llvm_fpga_push_i4_cleanups_push10_example69_out_feedback_out_10),
        .in_feedback_valid_in_10(i_llvm_fpga_push_i4_cleanups_push10_example69_out_feedback_valid_out_10),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist6_sync_together117_aunroll_x_in_i_valid_11_q),
        .out_data_out(i_llvm_fpga_pop_i4_cleanups_pop10_example2_out_data_out),
        .out_feedback_stall_out_10(i_llvm_fpga_pop_i4_cleanups_pop10_example2_out_feedback_stall_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_example3_sel_x(BITSELECT,145)@12
    assign i_first_cleanup_example3_sel_x_b = i_llvm_fpga_pop_i4_cleanups_pop10_example2_out_data_out[0:0];

    // c_i8_1101(CONSTANT,33)
    assign c_i8_1101_q = $unsigned(8'b11111111);

    // i_fpga_indvars_iv_next_example70(ADD,56)@12
    assign i_fpga_indvars_iv_next_example70_a = {1'b0, i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_example62_out_data_out};
    assign i_fpga_indvars_iv_next_example70_b = {1'b0, c_i8_1101_q};
    assign i_fpga_indvars_iv_next_example70_o = $unsigned(i_fpga_indvars_iv_next_example70_a) + $unsigned(i_fpga_indvars_iv_next_example70_b);
    assign i_fpga_indvars_iv_next_example70_q = i_fpga_indvars_iv_next_example70_o[8:0];

    // bgTrunc_i_fpga_indvars_iv_next_example70_sel_x(BITSELECT,131)@12
    assign bgTrunc_i_fpga_indvars_iv_next_example70_sel_x_b = i_fpga_indvars_iv_next_example70_q[7:0];

    // i_llvm_fpga_push_i8_fpga_indvars_iv_push6_example71(BLACKBOX,72)@12
    // out out_feedback_out_6@20000000
    // out out_feedback_valid_out_6@20000000
    example_i_llvm_fpga_push_i8_fpga_indvars_iv_push6_0 thei_llvm_fpga_push_i8_fpga_indvars_iv_push6_example71 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_example70_sel_x_b),
        .in_feedback_stall_in_6(i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_example62_out_feedback_stall_out_6),
        .in_keep_going(redist23_i_llvm_fpga_pipeline_keep_going_example6_out_data_out_9_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist6_sync_together117_aunroll_x_in_i_valid_11_q),
        .out_data_out(),
        .out_feedback_out_6(i_llvm_fpga_push_i8_fpga_indvars_iv_push6_example71_out_feedback_out_6),
        .out_feedback_valid_out_6(i_llvm_fpga_push_i8_fpga_indvars_iv_push6_example71_out_feedback_valid_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i8_98100(CONSTANT,37)
    assign c_i8_98100_q = $unsigned(8'b01100010);

    // i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_example62(BLACKBOX,65)@12
    // out out_feedback_stall_out_6@20000000
    example_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_0 thei_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_example62 (
        .in_data_in(c_i8_98100_q),
        .in_dir(redist2_sync_together117_aunroll_x_in_c0_eni1_1_tpl_11_q),
        .in_feedback_in_6(i_llvm_fpga_push_i8_fpga_indvars_iv_push6_example71_out_feedback_out_6),
        .in_feedback_valid_in_6(i_llvm_fpga_push_i8_fpga_indvars_iv_push6_example71_out_feedback_valid_out_6),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist6_sync_together117_aunroll_x_in_i_valid_11_q),
        .out_data_out(i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_example62_out_data_out),
        .out_feedback_stall_out_6(i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_example62_out_feedback_stall_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond_example63_cmp_nsign(LOGICAL,268)@12
    assign i_exitcond_example63_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_example62_out_data_out[7:7]));

    // i_llvm_fpga_push_i1_notexitcond_example66(BLACKBOX,68)@12
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    example_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_example66 (
        .in_data_in(i_exitcond_example63_cmp_nsign_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_example6_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_example3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist6_sync_together117_aunroll_x_in_i_valid_11_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_example66_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_example66_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,246)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist4_sync_together117_aunroll_x_in_i_valid_1_q);
        end
    end

    // rightShiftStage0Idx1Rng1_uid280_i_next_initerations_example0_shift_x(BITSELECT,279)@3
    assign rightShiftStage0Idx1Rng1_uid280_i_next_initerations_example0_shift_x_b = i_llvm_fpga_pop_i4_initerations_pop9_example7_out_data_out[3:1];

    // rightShiftStage0Idx1_uid282_i_next_initerations_example0_shift_x(BITJOIN,281)@3
    assign rightShiftStage0Idx1_uid282_i_next_initerations_example0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid280_i_next_initerations_example0_shift_x_b};

    // valid_fanout_reg1(REG,244)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist4_sync_together117_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg2(REG,245)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist4_sync_together117_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i4_initerations_push9_example9(BLACKBOX,71)@3
    // out out_feedback_out_9@20000000
    // out out_feedback_valid_out_9@20000000
    example_i_llvm_fpga_push_i4_initerations_push9_0 thei_llvm_fpga_push_i4_initerations_push9_example9 (
        .in_data_in(i_next_initerations_example8_vt_join_q),
        .in_feedback_stall_in_9(i_llvm_fpga_pop_i4_initerations_pop9_example7_out_feedback_stall_out_9),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_example6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_9(i_llvm_fpga_push_i4_initerations_push9_example9_out_feedback_out_9),
        .out_feedback_valid_out_9(i_llvm_fpga_push_i4_initerations_push9_example9_out_feedback_valid_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i4_initerations_pop9_example7(BLACKBOX,64)@3
    // out out_feedback_stall_out_9@20000000
    example_i_llvm_fpga_pop_i4_initerations_pop9_0 thei_llvm_fpga_pop_i4_initerations_pop9_example7 (
        .in_data_in(c_i4_789_q),
        .in_dir(redist1_sync_together117_aunroll_x_in_c0_eni1_1_tpl_2_q),
        .in_feedback_in_9(i_llvm_fpga_push_i4_initerations_push9_example9_out_feedback_out_9),
        .in_feedback_valid_in_9(i_llvm_fpga_push_i4_initerations_push9_example9_out_feedback_valid_out_9),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i4_initerations_pop9_example7_out_data_out),
        .out_feedback_stall_out_9(i_llvm_fpga_pop_i4_initerations_pop9_example7_out_feedback_stall_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid284_i_next_initerations_example0_shift_x(MUX,283)@3
    assign rightShiftStage0_uid284_i_next_initerations_example0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid284_i_next_initerations_example0_shift_x_s or i_llvm_fpga_pop_i4_initerations_pop9_example7_out_data_out or rightShiftStage0Idx1_uid282_i_next_initerations_example0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid284_i_next_initerations_example0_shift_x_s)
            1'b0 : rightShiftStage0_uid284_i_next_initerations_example0_shift_x_q = i_llvm_fpga_pop_i4_initerations_pop9_example7_out_data_out;
            1'b1 : rightShiftStage0_uid284_i_next_initerations_example0_shift_x_q = rightShiftStage0Idx1_uid282_i_next_initerations_example0_shift_x_q;
            default : rightShiftStage0_uid284_i_next_initerations_example0_shift_x_q = 4'b0;
        endcase
    end

    // i_next_initerations_example8_vt_select_2(BITSELECT,105)@3
    assign i_next_initerations_example8_vt_select_2_b = rightShiftStage0_uid284_i_next_initerations_example0_shift_x_q[2:0];

    // i_next_initerations_example8_vt_join(BITJOIN,104)@3
    assign i_next_initerations_example8_vt_join_q = {GND_q, i_next_initerations_example8_vt_select_2_b};

    // i_last_initeration_example10_sel_x(BITSELECT,146)@3
    assign i_last_initeration_example10_sel_x_b = i_next_initerations_example8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_example11(BLACKBOX,67)@3
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    example_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_example11 (
        .in_data_in(i_last_initeration_example10_sel_x_b),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_example6_out_initeration_stall_out),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_example6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_example11_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_example11_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together117_aunroll_x_in_c0_eni1_1_tpl_2(DELAY,304)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together117_aunroll_x_in_c0_eni1_1_tpl_2_delay_0 <= '0;
            redist1_sync_together117_aunroll_x_in_c0_eni1_1_tpl_2_q <= '0;
        end
        else
        begin
            redist1_sync_together117_aunroll_x_in_c0_eni1_1_tpl_2_delay_0 <= $unsigned(in_c0_eni1_1_tpl);
            redist1_sync_together117_aunroll_x_in_c0_eni1_1_tpl_2_q <= redist1_sync_together117_aunroll_x_in_c0_eni1_1_tpl_2_delay_0;
        end
    end

    // i_llvm_fpga_pipeline_keep_going_example6(BLACKBOX,60)@3
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    example_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_example6 (
        .in_data_in(redist1_sync_together117_aunroll_x_in_c0_eni1_1_tpl_2_q),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_example11_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_example11_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_example66_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_example66_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(redist5_sync_together117_aunroll_x_in_i_valid_2_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_example6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_example6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_example6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_example6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_example6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_example6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,38)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_example6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_example6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_example6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_example6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,128)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_example6_out_pipeline_valid_out;

    // redist7_sync_together117_aunroll_x_in_i_valid_14(DELAY,310)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together117_aunroll_x_in_i_valid_14_delay_0 <= '0;
            redist7_sync_together117_aunroll_x_in_i_valid_14_delay_1 <= '0;
            redist7_sync_together117_aunroll_x_in_i_valid_14_q <= '0;
        end
        else
        begin
            redist7_sync_together117_aunroll_x_in_i_valid_14_delay_0 <= $unsigned(redist6_sync_together117_aunroll_x_in_i_valid_11_q);
            redist7_sync_together117_aunroll_x_in_i_valid_14_delay_1 <= redist7_sync_together117_aunroll_x_in_i_valid_14_delay_0;
            redist7_sync_together117_aunroll_x_in_i_valid_14_q <= redist7_sync_together117_aunroll_x_in_i_valid_14_delay_1;
        end
    end

    // redist8_sync_together117_aunroll_x_in_i_valid_17(DELAY,311)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together117_aunroll_x_in_i_valid_17_delay_0 <= '0;
            redist8_sync_together117_aunroll_x_in_i_valid_17_delay_1 <= '0;
            redist8_sync_together117_aunroll_x_in_i_valid_17_q <= '0;
        end
        else
        begin
            redist8_sync_together117_aunroll_x_in_i_valid_17_delay_0 <= $unsigned(redist7_sync_together117_aunroll_x_in_i_valid_14_q);
            redist8_sync_together117_aunroll_x_in_i_valid_17_delay_1 <= redist8_sync_together117_aunroll_x_in_i_valid_17_delay_0;
            redist8_sync_together117_aunroll_x_in_i_valid_17_q <= redist8_sync_together117_aunroll_x_in_i_valid_17_delay_1;
        end
    end

    // valid_fanout_reg8(REG,251)@18 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist8_sync_together117_aunroll_x_in_i_valid_17_q);
        end
    end

    // valid_fanout_reg6(REG,249)@15 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist7_sync_together117_aunroll_x_in_i_valid_14_q);
        end
    end

    // valid_fanout_reg7(REG,250)@18 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist8_sync_together117_aunroll_x_in_i_valid_17_q);
        end
    end

    // redist24_i_llvm_fpga_pipeline_keep_going_example6_out_data_out_16(DELAY,327)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist24_i_llvm_fpga_pipeline_keep_going_example6_out_data_out_16 ( .xin(redist23_i_llvm_fpga_pipeline_keep_going_example6_out_data_out_9_q), .xout(redist24_i_llvm_fpga_pipeline_keep_going_example6_out_data_out_16_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_push_f32_s_017_push8_example61(BLACKBOX,66)@19
    // out out_feedback_out_8@20000000
    // out out_feedback_valid_out_8@20000000
    example_i_llvm_fpga_push_f32_s_017_push8_0 thei_llvm_fpga_push_f32_s_017_push8_example61 (
        .in_data_in(i_unnamed_example60_q),
        .in_feedback_stall_in_8(i_llvm_fpga_pop_f32_s_017_pop8_example58_out_feedback_stall_out_8),
        .in_keep_going(redist24_i_llvm_fpga_pipeline_keep_going_example6_out_data_out_16_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(),
        .out_feedback_out_8(i_llvm_fpga_push_f32_s_017_push8_example61_out_feedback_out_8),
        .out_feedback_valid_out_8(i_llvm_fpga_push_f32_s_017_push8_example61_out_feedback_valid_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together117_aunroll_x_in_c0_eni1_1_tpl_15(DELAY,306)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together117_aunroll_x_in_c0_eni1_1_tpl_15_delay_0 <= '0;
            redist3_sync_together117_aunroll_x_in_c0_eni1_1_tpl_15_delay_1 <= '0;
            redist3_sync_together117_aunroll_x_in_c0_eni1_1_tpl_15_delay_2 <= '0;
            redist3_sync_together117_aunroll_x_in_c0_eni1_1_tpl_15_q <= '0;
        end
        else
        begin
            redist3_sync_together117_aunroll_x_in_c0_eni1_1_tpl_15_delay_0 <= $unsigned(redist2_sync_together117_aunroll_x_in_c0_eni1_1_tpl_11_q);
            redist3_sync_together117_aunroll_x_in_c0_eni1_1_tpl_15_delay_1 <= redist3_sync_together117_aunroll_x_in_c0_eni1_1_tpl_15_delay_0;
            redist3_sync_together117_aunroll_x_in_c0_eni1_1_tpl_15_delay_2 <= redist3_sync_together117_aunroll_x_in_c0_eni1_1_tpl_15_delay_1;
            redist3_sync_together117_aunroll_x_in_c0_eni1_1_tpl_15_q <= redist3_sync_together117_aunroll_x_in_c0_eni1_1_tpl_15_delay_2;
        end
    end

    // c_float_0_000000e_0099(FLOATCONSTANT,11)
    assign c_float_0_000000e_0099_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_f32_s_017_pop8_example58(BLACKBOX,61)@16
    // out out_feedback_stall_out_8@20000000
    example_i_llvm_fpga_pop_f32_s_017_pop8_0 thei_llvm_fpga_pop_f32_s_017_pop8_example58 (
        .in_data_in(c_float_0_000000e_0099_q),
        .in_dir(redist3_sync_together117_aunroll_x_in_c0_eni1_1_tpl_15_q),
        .in_feedback_in_8(i_llvm_fpga_push_f32_s_017_push8_example61_out_feedback_out_8),
        .in_feedback_valid_in_8(i_llvm_fpga_push_f32_s_017_push8_example61_out_feedback_valid_out_8),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(i_llvm_fpga_pop_f32_s_017_pop8_example58_out_data_out),
        .out_feedback_stall_out_8(i_llvm_fpga_pop_f32_s_017_pop8_example58_out_feedback_stall_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist22_i_llvm_fpga_pop_f32_s_017_pop8_example58_out_data_out_3_inputreg0(DELAY,329)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_llvm_fpga_pop_f32_s_017_pop8_example58_out_data_out_3_inputreg0_q <= '0;
        end
        else
        begin
            redist22_i_llvm_fpga_pop_f32_s_017_pop8_example58_out_data_out_3_inputreg0_q <= $unsigned(i_llvm_fpga_pop_f32_s_017_pop8_example58_out_data_out);
        end
    end

    // redist22_i_llvm_fpga_pop_f32_s_017_pop8_example58_out_data_out_3(DELAY,325)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_llvm_fpga_pop_f32_s_017_pop8_example58_out_data_out_3_delay_0 <= '0;
            redist22_i_llvm_fpga_pop_f32_s_017_pop8_example58_out_data_out_3_q <= '0;
        end
        else
        begin
            redist22_i_llvm_fpga_pop_f32_s_017_pop8_example58_out_data_out_3_delay_0 <= $unsigned(redist22_i_llvm_fpga_pop_f32_s_017_pop8_example58_out_data_out_3_inputreg0_q);
            redist22_i_llvm_fpga_pop_f32_s_017_pop8_example58_out_data_out_3_q <= redist22_i_llvm_fpga_pop_f32_s_017_pop8_example58_out_data_out_3_delay_0;
        end
    end

    // i_rem3_example15_vt_const_31(CONSTANT,109)
    assign i_rem3_example15_vt_const_31_q = $unsigned(30'b000000000000000000000000000000);

    // c_i32_394(CONSTANT,29)
    assign c_i32_394_q = $unsigned(32'b00000000000000000000000000000011);

    // valid_fanout_reg4(REG,247)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist4_sync_together117_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg5(REG,248)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist4_sync_together117_aunroll_x_in_i_valid_1_q);
        end
    end

    // c_i32_193(CONSTANT,28)
    assign c_i32_193_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_example13(ADD,57)@3
    assign i_inc_example13_a = {1'b0, i_llvm_fpga_pop_i32_i_018_pop7_example12_out_data_out};
    assign i_inc_example13_b = {1'b0, c_i32_193_q};
    assign i_inc_example13_o = $unsigned(i_inc_example13_a) + $unsigned(i_inc_example13_b);
    assign i_inc_example13_q = i_inc_example13_o[32:0];

    // bgTrunc_i_inc_example13_sel_x(BITSELECT,132)@3
    assign bgTrunc_i_inc_example13_sel_x_b = i_inc_example13_q[31:0];

    // i_llvm_fpga_push_i32_i_018_push7_example14(BLACKBOX,69)@3
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    example_i_llvm_fpga_push_i32_i_018_push7_0 thei_llvm_fpga_push_i32_i_018_push7_example14 (
        .in_data_in(bgTrunc_i_inc_example13_sel_x_b),
        .in_feedback_stall_in_7(i_llvm_fpga_pop_i32_i_018_pop7_example12_out_feedback_stall_out_7),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_example6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_7(i_llvm_fpga_push_i32_i_018_push7_example14_out_feedback_out_7),
        .out_feedback_valid_out_7(i_llvm_fpga_push_i32_i_018_push7_example14_out_feedback_valid_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_092(CONSTANT,27)
    assign c_i32_092_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_i_018_pop7_example12(BLACKBOX,62)@3
    // out out_feedback_stall_out_7@20000000
    example_i_llvm_fpga_pop_i32_i_018_pop7_0 thei_llvm_fpga_pop_i32_i_018_pop7_example12 (
        .in_data_in(c_i32_092_q),
        .in_dir(redist1_sync_together117_aunroll_x_in_c0_eni1_1_tpl_2_q),
        .in_feedback_in_7(i_llvm_fpga_push_i32_i_018_push7_example14_out_feedback_out_7),
        .in_feedback_valid_in_7(i_llvm_fpga_push_i32_i_018_push7_example14_out_feedback_valid_out_7),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_018_pop7_example12_out_data_out),
        .out_feedback_stall_out_7(i_llvm_fpga_pop_i32_i_018_pop7_example12_out_feedback_stall_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_rem3_example15(LOGICAL,108)@3
    assign i_rem3_example15_q = i_llvm_fpga_pop_i32_i_018_pop7_example12_out_data_out & c_i32_394_q;

    // i_rem3_example15_vt_select_1(BITSELECT,111)@3
    assign i_rem3_example15_vt_select_1_b = i_rem3_example15_q[1:0];

    // redist20_i_rem3_example15_vt_select_1_b_5(DELAY,323)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_rem3_example15_vt_select_1_b_5_delay_0 <= '0;
            redist20_i_rem3_example15_vt_select_1_b_5_delay_1 <= '0;
            redist20_i_rem3_example15_vt_select_1_b_5_delay_2 <= '0;
            redist20_i_rem3_example15_vt_select_1_b_5_delay_3 <= '0;
            redist20_i_rem3_example15_vt_select_1_b_5_q <= '0;
        end
        else
        begin
            redist20_i_rem3_example15_vt_select_1_b_5_delay_0 <= $unsigned(i_rem3_example15_vt_select_1_b);
            redist20_i_rem3_example15_vt_select_1_b_5_delay_1 <= redist20_i_rem3_example15_vt_select_1_b_5_delay_0;
            redist20_i_rem3_example15_vt_select_1_b_5_delay_2 <= redist20_i_rem3_example15_vt_select_1_b_5_delay_1;
            redist20_i_rem3_example15_vt_select_1_b_5_delay_3 <= redist20_i_rem3_example15_vt_select_1_b_5_delay_2;
            redist20_i_rem3_example15_vt_select_1_b_5_q <= redist20_i_rem3_example15_vt_select_1_b_5_delay_3;
        end
    end

    // i_rem3_example15_vt_join(BITJOIN,110)@8
    assign i_rem3_example15_vt_join_q = {i_rem3_example15_vt_const_31_q, redist20_i_rem3_example15_vt_select_1_b_5_q};

    // i_conv4_example16(BLACKBOX,51)@8
    // out out_primWireOut@13
    example_flt_i_sfc_logic_s_c0_in_for_body00006uq0cp0ju20cp0jo0ouz thei_conv4_example16 (
        .in_0(i_rem3_example15_vt_join_q),
        .out_primWireOut(i_conv4_example16_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_narrow_1_i_example23_vt_const_7(CONSTANT,75)
    assign i_narrow_1_i_example23_vt_const_7_q = $unsigned(6'b000000);

    // c_i8_097(CONSTANT,32)
    assign c_i8_097_q = $unsigned(8'b00000000);

    // c_i8_398(CONSTANT,35)
    assign c_i8_398_q = $unsigned(8'b00000011);

    // i_cmp13_i_7_i_example52(COMPARE,49)@9
    assign i_cmp13_i_7_i_example52_a = {2'b00, redist13_i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_7_shuffle_i_example0_NO_NAME_x_q_1_q};
    assign i_cmp13_i_7_i_example52_b = {2'b00, c_i8_398_q};
    assign i_cmp13_i_7_i_example52_o = $unsigned(i_cmp13_i_7_i_example52_a) - $unsigned(i_cmp13_i_7_i_example52_b);
    assign i_cmp13_i_7_i_example52_c[0] = i_cmp13_i_7_i_example52_o[9];

    // i_narrow_7_i_example53(MUX,98)@9
    assign i_narrow_7_i_example53_s = i_cmp13_i_7_i_example52_c;
    always @(i_narrow_7_i_example53_s or c_i8_398_q or c_i8_097_q)
    begin
        unique case (i_narrow_7_i_example53_s)
            1'b0 : i_narrow_7_i_example53_q = c_i8_398_q;
            1'b1 : i_narrow_7_i_example53_q = c_i8_097_q;
            default : i_narrow_7_i_example53_q = 8'b0;
        endcase
    end

    // i_narrow_7_i_example53_vt_select_1(BITSELECT,101)@9
    assign i_narrow_7_i_example53_vt_select_1_b = i_narrow_7_i_example53_q[1:0];

    // i_narrow_7_i_example53_vt_join(BITJOIN,100)@9
    assign i_narrow_7_i_example53_vt_join_q = {i_narrow_1_i_example23_vt_const_7_q, i_narrow_7_i_example53_vt_select_1_b};

    // c_i8_220(CONSTANT,34)
    assign c_i8_220_q = $unsigned(8'b00000010);

    // i_cmp13_i_6_i_example47(COMPARE,48)@8
    assign i_cmp13_i_6_i_example47_a = {2'b00, i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_6_shuffle_i_example0_NO_NAME_x_q};
    assign i_cmp13_i_6_i_example47_b = {2'b00, c_i8_398_q};
    assign i_cmp13_i_6_i_example47_o = $unsigned(i_cmp13_i_6_i_example47_a) - $unsigned(i_cmp13_i_6_i_example47_b);
    assign i_cmp13_i_6_i_example47_c[0] = i_cmp13_i_6_i_example47_o[9];

    // i_narrow_6_i_example48(MUX,94)@8
    assign i_narrow_6_i_example48_s = i_cmp13_i_6_i_example47_c;
    always @(i_narrow_6_i_example48_s or c_i8_398_q or c_i8_097_q)
    begin
        unique case (i_narrow_6_i_example48_s)
            1'b0 : i_narrow_6_i_example48_q = c_i8_398_q;
            1'b1 : i_narrow_6_i_example48_q = c_i8_097_q;
            default : i_narrow_6_i_example48_q = 8'b0;
        endcase
    end

    // i_narrow_6_i_example48_vt_select_1(BITSELECT,97)@8
    assign i_narrow_6_i_example48_vt_select_1_b = i_narrow_6_i_example48_q[1:0];

    // i_narrow_6_i_example48_vt_join(BITJOIN,96)@8
    assign i_narrow_6_i_example48_vt_join_q = {i_narrow_1_i_example23_vt_const_7_q, i_narrow_6_i_example48_vt_select_1_b};

    // i_cmp13_i_5_i_example42(COMPARE,47)@7
    assign i_cmp13_i_5_i_example42_a = {2'b00, redist14_i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_5_shuffle_i_example0_NO_NAME_x_q_1_q};
    assign i_cmp13_i_5_i_example42_b = {2'b00, c_i8_398_q};
    assign i_cmp13_i_5_i_example42_o = $unsigned(i_cmp13_i_5_i_example42_a) - $unsigned(i_cmp13_i_5_i_example42_b);
    assign i_cmp13_i_5_i_example42_c[0] = i_cmp13_i_5_i_example42_o[9];

    // i_narrow_5_i_example43(MUX,90)@7
    assign i_narrow_5_i_example43_s = i_cmp13_i_5_i_example42_c;
    always @(i_narrow_5_i_example43_s or c_i8_398_q or c_i8_097_q)
    begin
        unique case (i_narrow_5_i_example43_s)
            1'b0 : i_narrow_5_i_example43_q = c_i8_398_q;
            1'b1 : i_narrow_5_i_example43_q = c_i8_097_q;
            default : i_narrow_5_i_example43_q = 8'b0;
        endcase
    end

    // i_narrow_5_i_example43_vt_select_1(BITSELECT,93)@7
    assign i_narrow_5_i_example43_vt_select_1_b = i_narrow_5_i_example43_q[1:0];

    // i_narrow_5_i_example43_vt_join(BITJOIN,92)@7
    assign i_narrow_5_i_example43_vt_join_q = {i_narrow_1_i_example23_vt_const_7_q, i_narrow_5_i_example43_vt_select_1_b};

    // i_cmp13_i_4_i_example37(COMPARE,46)@6
    assign i_cmp13_i_4_i_example37_a = {2'b00, redist15_i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_4_shuffle_i_example0_NO_NAME_x_q_1_q};
    assign i_cmp13_i_4_i_example37_b = {2'b00, c_i8_398_q};
    assign i_cmp13_i_4_i_example37_o = $unsigned(i_cmp13_i_4_i_example37_a) - $unsigned(i_cmp13_i_4_i_example37_b);
    assign i_cmp13_i_4_i_example37_c[0] = i_cmp13_i_4_i_example37_o[9];

    // i_narrow_4_i_example38(MUX,86)@6
    assign i_narrow_4_i_example38_s = i_cmp13_i_4_i_example37_c;
    always @(i_narrow_4_i_example38_s or c_i8_398_q or c_i8_097_q)
    begin
        unique case (i_narrow_4_i_example38_s)
            1'b0 : i_narrow_4_i_example38_q = c_i8_398_q;
            1'b1 : i_narrow_4_i_example38_q = c_i8_097_q;
            default : i_narrow_4_i_example38_q = 8'b0;
        endcase
    end

    // i_narrow_4_i_example38_vt_select_1(BITSELECT,89)@6
    assign i_narrow_4_i_example38_vt_select_1_b = i_narrow_4_i_example38_q[1:0];

    // i_narrow_4_i_example38_vt_join(BITJOIN,88)@6
    assign i_narrow_4_i_example38_vt_join_q = {i_narrow_1_i_example23_vt_const_7_q, i_narrow_4_i_example38_vt_select_1_b};

    // i_cmp13_i_3_i_example32(COMPARE,45)@5
    assign i_cmp13_i_3_i_example32_a = {2'b00, redist16_i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_3_shuffle_i_example0_NO_NAME_x_q_1_q};
    assign i_cmp13_i_3_i_example32_b = {2'b00, c_i8_398_q};
    assign i_cmp13_i_3_i_example32_o = $unsigned(i_cmp13_i_3_i_example32_a) - $unsigned(i_cmp13_i_3_i_example32_b);
    assign i_cmp13_i_3_i_example32_c[0] = i_cmp13_i_3_i_example32_o[9];

    // i_narrow_3_i_example33(MUX,82)@5
    assign i_narrow_3_i_example33_s = i_cmp13_i_3_i_example32_c;
    always @(i_narrow_3_i_example33_s or c_i8_398_q or c_i8_097_q)
    begin
        unique case (i_narrow_3_i_example33_s)
            1'b0 : i_narrow_3_i_example33_q = c_i8_398_q;
            1'b1 : i_narrow_3_i_example33_q = c_i8_097_q;
            default : i_narrow_3_i_example33_q = 8'b0;
        endcase
    end

    // i_narrow_3_i_example33_vt_select_1(BITSELECT,85)@5
    assign i_narrow_3_i_example33_vt_select_1_b = i_narrow_3_i_example33_q[1:0];

    // i_narrow_3_i_example33_vt_join(BITJOIN,84)@5
    assign i_narrow_3_i_example33_vt_join_q = {i_narrow_1_i_example23_vt_const_7_q, i_narrow_3_i_example33_vt_select_1_b};

    // i_cmp13_i_2_i_example27(COMPARE,44)@4
    assign i_cmp13_i_2_i_example27_a = {2'b00, i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_2_shuffle_i_example0_NO_NAME_x_q};
    assign i_cmp13_i_2_i_example27_b = {2'b00, c_i8_398_q};
    assign i_cmp13_i_2_i_example27_o = $unsigned(i_cmp13_i_2_i_example27_a) - $unsigned(i_cmp13_i_2_i_example27_b);
    assign i_cmp13_i_2_i_example27_c[0] = i_cmp13_i_2_i_example27_o[9];

    // i_narrow_2_i_example28(MUX,78)@4
    assign i_narrow_2_i_example28_s = i_cmp13_i_2_i_example27_c;
    always @(i_narrow_2_i_example28_s or c_i8_398_q or c_i8_097_q)
    begin
        unique case (i_narrow_2_i_example28_s)
            1'b0 : i_narrow_2_i_example28_q = c_i8_398_q;
            1'b1 : i_narrow_2_i_example28_q = c_i8_097_q;
            default : i_narrow_2_i_example28_q = 8'b0;
        endcase
    end

    // i_narrow_2_i_example28_vt_select_1(BITSELECT,81)@4
    assign i_narrow_2_i_example28_vt_select_1_b = i_narrow_2_i_example28_q[1:0];

    // i_narrow_2_i_example28_vt_join(BITJOIN,80)@4
    assign i_narrow_2_i_example28_vt_join_q = {i_narrow_1_i_example23_vt_const_7_q, i_narrow_2_i_example28_vt_select_1_b};

    // i_cmp13_i_1_i_example22(COMPARE,43)@3
    assign i_cmp13_i_1_i_example22_a = {2'b00, i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_1_shuffle_i_example0_NO_NAME_x_q};
    assign i_cmp13_i_1_i_example22_b = {2'b00, c_i8_398_q};
    assign i_cmp13_i_1_i_example22_o = $unsigned(i_cmp13_i_1_i_example22_a) - $unsigned(i_cmp13_i_1_i_example22_b);
    assign i_cmp13_i_1_i_example22_c[0] = i_cmp13_i_1_i_example22_o[9];

    // i_narrow_1_i_example23(MUX,74)@3
    assign i_narrow_1_i_example23_s = i_cmp13_i_1_i_example22_c;
    always @(i_narrow_1_i_example23_s or c_i8_398_q or c_i8_097_q)
    begin
        unique case (i_narrow_1_i_example23_s)
            1'b0 : i_narrow_1_i_example23_q = c_i8_398_q;
            1'b1 : i_narrow_1_i_example23_q = c_i8_097_q;
            default : i_narrow_1_i_example23_q = 8'b0;
        endcase
    end

    // i_narrow_1_i_example23_vt_select_1(BITSELECT,77)@3
    assign i_narrow_1_i_example23_vt_select_1_b = i_narrow_1_i_example23_q[1:0];

    // i_narrow_1_i_example23_vt_join(BITJOIN,76)@3
    assign i_narrow_1_i_example23_vt_join_q = {i_narrow_1_i_example23_vt_const_7_q, i_narrow_1_i_example23_vt_select_1_b};

    // i_unnamed_example18_vt_const_7(CONSTANT,121)
    assign i_unnamed_example18_vt_const_7_q = $unsigned(7'b0000000);

    // rightShiftStage2Idx1Pad4_uid299_i_unnamed_example0_shift_x(CONSTANT,298)
    assign rightShiftStage2Idx1Pad4_uid299_i_unnamed_example0_shift_x_q = $unsigned(4'b0000);

    // rightShiftStage2Idx1Rng4_uid298_i_unnamed_example0_shift_x(BITSELECT,297)@3
    assign rightShiftStage2Idx1Rng4_uid298_i_unnamed_example0_shift_x_b = rightShiftStage1_uid297_i_unnamed_example0_shift_x_q[7:4];

    // rightShiftStage2Idx1_uid300_i_unnamed_example0_shift_x(BITJOIN,299)@3
    assign rightShiftStage2Idx1_uid300_i_unnamed_example0_shift_x_q = {rightShiftStage2Idx1Pad4_uid299_i_unnamed_example0_shift_x_q, rightShiftStage2Idx1Rng4_uid298_i_unnamed_example0_shift_x_b};

    // rightShiftStage1Idx1Pad2_uid294_i_unnamed_example0_shift_x(CONSTANT,293)
    assign rightShiftStage1Idx1Pad2_uid294_i_unnamed_example0_shift_x_q = $unsigned(2'b00);

    // rightShiftStage1Idx1Rng2_uid293_i_unnamed_example0_shift_x(BITSELECT,292)@3
    assign rightShiftStage1Idx1Rng2_uid293_i_unnamed_example0_shift_x_b = rightShiftStage0_uid292_i_unnamed_example0_shift_x_q[7:2];

    // rightShiftStage1Idx1_uid295_i_unnamed_example0_shift_x(BITJOIN,294)@3
    assign rightShiftStage1Idx1_uid295_i_unnamed_example0_shift_x_q = {rightShiftStage1Idx1Pad2_uid294_i_unnamed_example0_shift_x_q, rightShiftStage1Idx1Rng2_uid293_i_unnamed_example0_shift_x_b};

    // rightShiftStage0Idx1Rng1_uid288_i_unnamed_example0_shift_x(BITSELECT,287)@3
    assign rightShiftStage0Idx1Rng1_uid288_i_unnamed_example0_shift_x_b = i_rem_lhs_trunc_example17_sel_x_b[7:1];

    // rightShiftStage0Idx1_uid290_i_unnamed_example0_shift_x(BITJOIN,289)@3
    assign rightShiftStage0Idx1_uid290_i_unnamed_example0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid288_i_unnamed_example0_shift_x_b};

    // rightShiftStage0_uid292_i_unnamed_example0_shift_x(MUX,291)@3
    assign rightShiftStage0_uid292_i_unnamed_example0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid292_i_unnamed_example0_shift_x_s or i_rem_lhs_trunc_example17_sel_x_b or rightShiftStage0Idx1_uid290_i_unnamed_example0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid292_i_unnamed_example0_shift_x_s)
            1'b0 : rightShiftStage0_uid292_i_unnamed_example0_shift_x_q = i_rem_lhs_trunc_example17_sel_x_b;
            1'b1 : rightShiftStage0_uid292_i_unnamed_example0_shift_x_q = rightShiftStage0Idx1_uid290_i_unnamed_example0_shift_x_q;
            default : rightShiftStage0_uid292_i_unnamed_example0_shift_x_q = 8'b0;
        endcase
    end

    // rightShiftStage1_uid297_i_unnamed_example0_shift_x(MUX,296)@3
    assign rightShiftStage1_uid297_i_unnamed_example0_shift_x_s = VCC_q;
    always @(rightShiftStage1_uid297_i_unnamed_example0_shift_x_s or rightShiftStage0_uid292_i_unnamed_example0_shift_x_q or rightShiftStage1Idx1_uid295_i_unnamed_example0_shift_x_q)
    begin
        unique case (rightShiftStage1_uid297_i_unnamed_example0_shift_x_s)
            1'b0 : rightShiftStage1_uid297_i_unnamed_example0_shift_x_q = rightShiftStage0_uid292_i_unnamed_example0_shift_x_q;
            1'b1 : rightShiftStage1_uid297_i_unnamed_example0_shift_x_q = rightShiftStage1Idx1_uid295_i_unnamed_example0_shift_x_q;
            default : rightShiftStage1_uid297_i_unnamed_example0_shift_x_q = 8'b0;
        endcase
    end

    // rightShiftStage2_uid302_i_unnamed_example0_shift_x(MUX,301)@3
    assign rightShiftStage2_uid302_i_unnamed_example0_shift_x_s = VCC_q;
    always @(rightShiftStage2_uid302_i_unnamed_example0_shift_x_s or rightShiftStage1_uid297_i_unnamed_example0_shift_x_q or rightShiftStage2Idx1_uid300_i_unnamed_example0_shift_x_q)
    begin
        unique case (rightShiftStage2_uid302_i_unnamed_example0_shift_x_s)
            1'b0 : rightShiftStage2_uid302_i_unnamed_example0_shift_x_q = rightShiftStage1_uid297_i_unnamed_example0_shift_x_q;
            1'b1 : rightShiftStage2_uid302_i_unnamed_example0_shift_x_q = rightShiftStage2Idx1_uid300_i_unnamed_example0_shift_x_q;
            default : rightShiftStage2_uid302_i_unnamed_example0_shift_x_q = 8'b0;
        endcase
    end

    // i_unnamed_example18_vt_select_0(BITSELECT,123)@3
    assign i_unnamed_example18_vt_select_0_b = rightShiftStage2_uid302_i_unnamed_example0_shift_x_q[0:0];

    // i_unnamed_example18_vt_join(BITJOIN,122)@3
    assign i_unnamed_example18_vt_join_q = {i_unnamed_example18_vt_const_7_q, i_unnamed_example18_vt_select_0_b};

    // i_rem_lhs_trunc_example17_sel_x(BITSELECT,172)@3
    assign i_rem_lhs_trunc_example17_sel_x_b = i_llvm_fpga_pop_i32_i_018_pop7_example12_out_data_out[7:0];

    // i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_1_shuffle_i_example0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,148)@3
    assign i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_1_shuffle_i_example0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_220_q, i_unnamed_example18_vt_join_q, i_rem_lhs_trunc_example17_sel_x_b};

    // i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_1_shuffle_i_example0_NO_NAME_x(CHOOSEBITS,147)@3
    assign i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_1_shuffle_i_example0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_1_shuffle_i_example0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_1_shuffle_i_example0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_1_shuffle_i_example0_NO_NAME_x_a[14:14], i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_1_shuffle_i_example0_NO_NAME_x_a[13:13], i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_1_shuffle_i_example0_NO_NAME_x_a[12:12], i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_1_shuffle_i_example0_NO_NAME_x_a[11:11], i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_1_shuffle_i_example0_NO_NAME_x_a[10:10], i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_1_shuffle_i_example0_NO_NAME_x_a[9:9], i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_1_shuffle_i_example0_NO_NAME_x_a[8:8], i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_1_shuffle_i_example0_NO_NAME_x_a[6:6]};

    // i_sub16_i_1_i_example24(SUB,113)@3
    assign i_sub16_i_1_i_example24_a = {1'b0, i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_1_shuffle_i_example0_NO_NAME_x_q};
    assign i_sub16_i_1_i_example24_b = {1'b0, i_narrow_1_i_example23_vt_join_q};
    assign i_sub16_i_1_i_example24_o = $unsigned(i_sub16_i_1_i_example24_a) - $unsigned(i_sub16_i_1_i_example24_b);
    assign i_sub16_i_1_i_example24_q = i_sub16_i_1_i_example24_o[8:0];

    // bgTrunc_i_sub16_i_1_i_example24_sel_x(BITSELECT,133)@3
    assign bgTrunc_i_sub16_i_1_i_example24_sel_x_b = $unsigned(i_sub16_i_1_i_example24_q[7:0]);

    // redist19_bgTrunc_i_sub16_i_1_i_example24_sel_x_b_1(DELAY,322)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_bgTrunc_i_sub16_i_1_i_example24_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist19_bgTrunc_i_sub16_i_1_i_example24_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub16_i_1_i_example24_sel_x_b);
        end
    end

    // i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_2_shuffle_i_example0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,151)@4
    assign i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_2_shuffle_i_example0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_220_q, redist19_bgTrunc_i_sub16_i_1_i_example24_sel_x_b_1_q, redist9_i_rem_lhs_trunc_example17_sel_x_b_1_q};

    // i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_2_shuffle_i_example0_NO_NAME_x(CHOOSEBITS,150)@4
    assign i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_2_shuffle_i_example0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_2_shuffle_i_example0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_2_shuffle_i_example0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_2_shuffle_i_example0_NO_NAME_x_a[14:14], i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_2_shuffle_i_example0_NO_NAME_x_a[13:13], i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_2_shuffle_i_example0_NO_NAME_x_a[12:12], i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_2_shuffle_i_example0_NO_NAME_x_a[11:11], i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_2_shuffle_i_example0_NO_NAME_x_a[10:10], i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_2_shuffle_i_example0_NO_NAME_x_a[9:9], i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_2_shuffle_i_example0_NO_NAME_x_a[8:8], i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_2_shuffle_i_example0_NO_NAME_x_a[5:5]};

    // i_sub16_i_2_i_example29(SUB,114)@4
    assign i_sub16_i_2_i_example29_a = {1'b0, i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_2_shuffle_i_example0_NO_NAME_x_q};
    assign i_sub16_i_2_i_example29_b = {1'b0, i_narrow_2_i_example28_vt_join_q};
    assign i_sub16_i_2_i_example29_o = $unsigned(i_sub16_i_2_i_example29_a) - $unsigned(i_sub16_i_2_i_example29_b);
    assign i_sub16_i_2_i_example29_q = i_sub16_i_2_i_example29_o[8:0];

    // bgTrunc_i_sub16_i_2_i_example29_sel_x(BITSELECT,134)@4
    assign bgTrunc_i_sub16_i_2_i_example29_sel_x_b = $unsigned(i_sub16_i_2_i_example29_q[7:0]);

    // redist9_i_rem_lhs_trunc_example17_sel_x_b_1(DELAY,312)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_rem_lhs_trunc_example17_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist9_i_rem_lhs_trunc_example17_sel_x_b_1_q <= $unsigned(i_rem_lhs_trunc_example17_sel_x_b);
        end
    end

    // i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_3_shuffle_i_example0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,154)@4
    assign i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_3_shuffle_i_example0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_220_q, bgTrunc_i_sub16_i_2_i_example29_sel_x_b, redist9_i_rem_lhs_trunc_example17_sel_x_b_1_q};

    // i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_3_shuffle_i_example0_NO_NAME_x(CHOOSEBITS,153)@4
    assign i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_3_shuffle_i_example0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_3_shuffle_i_example0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_3_shuffle_i_example0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_3_shuffle_i_example0_NO_NAME_x_a[14:14], i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_3_shuffle_i_example0_NO_NAME_x_a[13:13], i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_3_shuffle_i_example0_NO_NAME_x_a[12:12], i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_3_shuffle_i_example0_NO_NAME_x_a[11:11], i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_3_shuffle_i_example0_NO_NAME_x_a[10:10], i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_3_shuffle_i_example0_NO_NAME_x_a[9:9], i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_3_shuffle_i_example0_NO_NAME_x_a[8:8], i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_3_shuffle_i_example0_NO_NAME_x_a[4:4]};

    // redist16_i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_3_shuffle_i_example0_NO_NAME_x_q_1(DELAY,319)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_3_shuffle_i_example0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist16_i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_3_shuffle_i_example0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_3_shuffle_i_example0_NO_NAME_x_q);
        end
    end

    // i_sub16_i_3_i_example34(SUB,115)@5
    assign i_sub16_i_3_i_example34_a = {1'b0, redist16_i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_3_shuffle_i_example0_NO_NAME_x_q_1_q};
    assign i_sub16_i_3_i_example34_b = {1'b0, i_narrow_3_i_example33_vt_join_q};
    assign i_sub16_i_3_i_example34_o = $unsigned(i_sub16_i_3_i_example34_a) - $unsigned(i_sub16_i_3_i_example34_b);
    assign i_sub16_i_3_i_example34_q = i_sub16_i_3_i_example34_o[8:0];

    // bgTrunc_i_sub16_i_3_i_example34_sel_x(BITSELECT,135)@5
    assign bgTrunc_i_sub16_i_3_i_example34_sel_x_b = $unsigned(i_sub16_i_3_i_example34_q[7:0]);

    // redist10_i_rem_lhs_trunc_example17_sel_x_b_2(DELAY,313)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_rem_lhs_trunc_example17_sel_x_b_2_q <= '0;
        end
        else
        begin
            redist10_i_rem_lhs_trunc_example17_sel_x_b_2_q <= $unsigned(redist9_i_rem_lhs_trunc_example17_sel_x_b_1_q);
        end
    end

    // i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_4_shuffle_i_example0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,157)@5
    assign i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_4_shuffle_i_example0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_220_q, bgTrunc_i_sub16_i_3_i_example34_sel_x_b, redist10_i_rem_lhs_trunc_example17_sel_x_b_2_q};

    // i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_4_shuffle_i_example0_NO_NAME_x(CHOOSEBITS,156)@5
    assign i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_4_shuffle_i_example0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_4_shuffle_i_example0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_4_shuffle_i_example0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_4_shuffle_i_example0_NO_NAME_x_a[14:14], i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_4_shuffle_i_example0_NO_NAME_x_a[13:13], i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_4_shuffle_i_example0_NO_NAME_x_a[12:12], i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_4_shuffle_i_example0_NO_NAME_x_a[11:11], i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_4_shuffle_i_example0_NO_NAME_x_a[10:10], i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_4_shuffle_i_example0_NO_NAME_x_a[9:9], i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_4_shuffle_i_example0_NO_NAME_x_a[8:8], i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_4_shuffle_i_example0_NO_NAME_x_a[3:3]};

    // redist15_i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_4_shuffle_i_example0_NO_NAME_x_q_1(DELAY,318)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_4_shuffle_i_example0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist15_i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_4_shuffle_i_example0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_4_shuffle_i_example0_NO_NAME_x_q);
        end
    end

    // i_sub16_i_4_i_example39(SUB,116)@6
    assign i_sub16_i_4_i_example39_a = {1'b0, redist15_i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_4_shuffle_i_example0_NO_NAME_x_q_1_q};
    assign i_sub16_i_4_i_example39_b = {1'b0, i_narrow_4_i_example38_vt_join_q};
    assign i_sub16_i_4_i_example39_o = $unsigned(i_sub16_i_4_i_example39_a) - $unsigned(i_sub16_i_4_i_example39_b);
    assign i_sub16_i_4_i_example39_q = i_sub16_i_4_i_example39_o[8:0];

    // bgTrunc_i_sub16_i_4_i_example39_sel_x(BITSELECT,136)@6
    assign bgTrunc_i_sub16_i_4_i_example39_sel_x_b = $unsigned(i_sub16_i_4_i_example39_q[7:0]);

    // redist11_i_rem_lhs_trunc_example17_sel_x_b_3(DELAY,314)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_rem_lhs_trunc_example17_sel_x_b_3_q <= '0;
        end
        else
        begin
            redist11_i_rem_lhs_trunc_example17_sel_x_b_3_q <= $unsigned(redist10_i_rem_lhs_trunc_example17_sel_x_b_2_q);
        end
    end

    // i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_5_shuffle_i_example0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,160)@6
    assign i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_5_shuffle_i_example0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_220_q, bgTrunc_i_sub16_i_4_i_example39_sel_x_b, redist11_i_rem_lhs_trunc_example17_sel_x_b_3_q};

    // i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_5_shuffle_i_example0_NO_NAME_x(CHOOSEBITS,159)@6
    assign i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_5_shuffle_i_example0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_5_shuffle_i_example0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_5_shuffle_i_example0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_5_shuffle_i_example0_NO_NAME_x_a[14:14], i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_5_shuffle_i_example0_NO_NAME_x_a[13:13], i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_5_shuffle_i_example0_NO_NAME_x_a[12:12], i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_5_shuffle_i_example0_NO_NAME_x_a[11:11], i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_5_shuffle_i_example0_NO_NAME_x_a[10:10], i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_5_shuffle_i_example0_NO_NAME_x_a[9:9], i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_5_shuffle_i_example0_NO_NAME_x_a[8:8], i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_5_shuffle_i_example0_NO_NAME_x_a[2:2]};

    // redist14_i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_5_shuffle_i_example0_NO_NAME_x_q_1(DELAY,317)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_5_shuffle_i_example0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist14_i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_5_shuffle_i_example0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_5_shuffle_i_example0_NO_NAME_x_q);
        end
    end

    // i_sub16_i_5_i_example44(SUB,117)@7
    assign i_sub16_i_5_i_example44_a = {1'b0, redist14_i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_5_shuffle_i_example0_NO_NAME_x_q_1_q};
    assign i_sub16_i_5_i_example44_b = {1'b0, i_narrow_5_i_example43_vt_join_q};
    assign i_sub16_i_5_i_example44_o = $unsigned(i_sub16_i_5_i_example44_a) - $unsigned(i_sub16_i_5_i_example44_b);
    assign i_sub16_i_5_i_example44_q = i_sub16_i_5_i_example44_o[8:0];

    // bgTrunc_i_sub16_i_5_i_example44_sel_x(BITSELECT,137)@7
    assign bgTrunc_i_sub16_i_5_i_example44_sel_x_b = $unsigned(i_sub16_i_5_i_example44_q[7:0]);

    // redist18_bgTrunc_i_sub16_i_5_i_example44_sel_x_b_1(DELAY,321)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_bgTrunc_i_sub16_i_5_i_example44_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist18_bgTrunc_i_sub16_i_5_i_example44_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub16_i_5_i_example44_sel_x_b);
        end
    end

    // i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_6_shuffle_i_example0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,163)@8
    assign i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_6_shuffle_i_example0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_220_q, redist18_bgTrunc_i_sub16_i_5_i_example44_sel_x_b_1_q, redist12_i_rem_lhs_trunc_example17_sel_x_b_5_q};

    // i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_6_shuffle_i_example0_NO_NAME_x(CHOOSEBITS,162)@8
    assign i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_6_shuffle_i_example0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_6_shuffle_i_example0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_6_shuffle_i_example0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_6_shuffle_i_example0_NO_NAME_x_a[14:14], i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_6_shuffle_i_example0_NO_NAME_x_a[13:13], i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_6_shuffle_i_example0_NO_NAME_x_a[12:12], i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_6_shuffle_i_example0_NO_NAME_x_a[11:11], i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_6_shuffle_i_example0_NO_NAME_x_a[10:10], i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_6_shuffle_i_example0_NO_NAME_x_a[9:9], i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_6_shuffle_i_example0_NO_NAME_x_a[8:8], i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_6_shuffle_i_example0_NO_NAME_x_a[1:1]};

    // i_sub16_i_6_i_example49(SUB,118)@8
    assign i_sub16_i_6_i_example49_a = {1'b0, i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_6_shuffle_i_example0_NO_NAME_x_q};
    assign i_sub16_i_6_i_example49_b = {1'b0, i_narrow_6_i_example48_vt_join_q};
    assign i_sub16_i_6_i_example49_o = $unsigned(i_sub16_i_6_i_example49_a) - $unsigned(i_sub16_i_6_i_example49_b);
    assign i_sub16_i_6_i_example49_q = i_sub16_i_6_i_example49_o[8:0];

    // bgTrunc_i_sub16_i_6_i_example49_sel_x(BITSELECT,138)@8
    assign bgTrunc_i_sub16_i_6_i_example49_sel_x_b = $unsigned(i_sub16_i_6_i_example49_q[7:0]);

    // redist12_i_rem_lhs_trunc_example17_sel_x_b_5(DELAY,315)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_rem_lhs_trunc_example17_sel_x_b_5_delay_0 <= '0;
            redist12_i_rem_lhs_trunc_example17_sel_x_b_5_q <= '0;
        end
        else
        begin
            redist12_i_rem_lhs_trunc_example17_sel_x_b_5_delay_0 <= $unsigned(redist11_i_rem_lhs_trunc_example17_sel_x_b_3_q);
            redist12_i_rem_lhs_trunc_example17_sel_x_b_5_q <= redist12_i_rem_lhs_trunc_example17_sel_x_b_5_delay_0;
        end
    end

    // i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_7_shuffle_i_example0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,166)@8
    assign i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_7_shuffle_i_example0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_220_q, bgTrunc_i_sub16_i_6_i_example49_sel_x_b, redist12_i_rem_lhs_trunc_example17_sel_x_b_5_q};

    // i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_7_shuffle_i_example0_NO_NAME_x(CHOOSEBITS,165)@8
    assign i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_7_shuffle_i_example0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_7_shuffle_i_example0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_7_shuffle_i_example0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_7_shuffle_i_example0_NO_NAME_x_a[14:14], i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_7_shuffle_i_example0_NO_NAME_x_a[13:13], i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_7_shuffle_i_example0_NO_NAME_x_a[12:12], i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_7_shuffle_i_example0_NO_NAME_x_a[11:11], i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_7_shuffle_i_example0_NO_NAME_x_a[10:10], i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_7_shuffle_i_example0_NO_NAME_x_a[9:9], i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_7_shuffle_i_example0_NO_NAME_x_a[8:8], i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_7_shuffle_i_example0_NO_NAME_x_a[0:0]};

    // redist13_i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_7_shuffle_i_example0_NO_NAME_x_q_1(DELAY,316)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_7_shuffle_i_example0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist13_i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_7_shuffle_i_example0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_7_shuffle_i_example0_NO_NAME_x_q);
        end
    end

    // i_sub16_i_7_i_example54(SUB,119)@9
    assign i_sub16_i_7_i_example54_a = {1'b0, redist13_i_llvm_fpga_bit_shuffle_i8_s_s_in_entry_acl_soft_int8_mod_fpgaunique_6s_v8i32_or_i_7_shuffle_i_example0_NO_NAME_x_q_1_q};
    assign i_sub16_i_7_i_example54_b = {1'b0, i_narrow_7_i_example53_vt_join_q};
    assign i_sub16_i_7_i_example54_o = $unsigned(i_sub16_i_7_i_example54_a) - $unsigned(i_sub16_i_7_i_example54_b);
    assign i_sub16_i_7_i_example54_q = i_sub16_i_7_i_example54_o[8:0];

    // bgTrunc_i_sub16_i_7_i_example54_sel_x(BITSELECT,139)@9
    assign bgTrunc_i_sub16_i_7_i_example54_sel_x_b = $unsigned(i_sub16_i_7_i_example54_q[7:0]);

    // redist17_bgTrunc_i_sub16_i_7_i_example54_sel_x_b_1(DELAY,320)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_bgTrunc_i_sub16_i_7_i_example54_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist17_bgTrunc_i_sub16_i_7_i_example54_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub16_i_7_i_example54_sel_x_b);
        end
    end

    // i_conv_example55(BLACKBOX,52)@10
    // out out_primWireOut@13
    example_flt_i_sfc_logic_s_c0_in_for_body00016uq0cp0ju20cp0jo0ouz thei_conv_example55 (
        .in_0(redist17_bgTrunc_i_sub16_i_7_i_example54_sel_x_b_1_q),
        .out_primWireOut(i_conv_example55_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_sub_example56(BLACKBOX,120)@13
    // out out_primWireOut@16
    example_flt_i_sfc_logic_s_c0_in_for_body00002463a0054c2a6342iyc5 thei_sub_example56 (
        .in_0(i_conv_example55_out_primWireOut),
        .in_1(i_conv4_example16_out_primWireOut),
        .out_primWireOut(i_sub_example56_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add_example59(BLACKBOX,39)@16
    // out out_primWireOut@19
    example_flt_i_sfc_logic_s_c0_in_for_body00003a0054c2a6344c246w65 thei_add_example59 (
        .in_0(i_llvm_fpga_pop_f32_s_017_pop8_example58_out_data_out),
        .in_1(i_sub_example56_out_primWireOut),
        .out_primWireOut(i_add_example59_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // frac_y_uid201_i_cmp14_example57(BITSELECT,200)@16
    assign frac_y_uid201_i_cmp14_example57_b = c_float_0_000000e_0099_q[22:0];

    // cstZeroWF_uid181_i_cmp14_example57(CONSTANT,180)
    assign cstZeroWF_uid181_i_cmp14_example57_q = $unsigned(23'b00000000000000000000000);

    // fracXIsZero_uid204_i_cmp14_example57(LOGICAL,203)@16
    assign fracXIsZero_uid204_i_cmp14_example57_q = $unsigned(cstZeroWF_uid181_i_cmp14_example57_q == frac_y_uid201_i_cmp14_example57_b ? 1'b1 : 1'b0);

    // fracXIsNotZero_uid205_i_cmp14_example57(LOGICAL,204)@16
    assign fracXIsNotZero_uid205_i_cmp14_example57_q = ~ (fracXIsZero_uid204_i_cmp14_example57_q);

    // exp_y_uid200_i_cmp14_example57(BITSELECT,199)@16
    assign exp_y_uid200_i_cmp14_example57_b = c_float_0_000000e_0099_q[30:23];

    // expXIsMax_uid203_i_cmp14_example57(LOGICAL,202)@16
    assign expXIsMax_uid203_i_cmp14_example57_q = $unsigned(exp_y_uid200_i_cmp14_example57_b == c_i8_1101_q ? 1'b1 : 1'b0);

    // excN_y_uid208_i_cmp14_example57(LOGICAL,207)@16
    assign excN_y_uid208_i_cmp14_example57_q = expXIsMax_uid203_i_cmp14_example57_q & fracXIsNotZero_uid205_i_cmp14_example57_q;

    // frac_x_uid184_i_cmp14_example57(BITSELECT,183)@16
    assign frac_x_uid184_i_cmp14_example57_b = i_sub_example56_out_primWireOut[22:0];

    // fracXIsZero_uid187_i_cmp14_example57(LOGICAL,186)@16
    assign fracXIsZero_uid187_i_cmp14_example57_q = $unsigned(cstZeroWF_uid181_i_cmp14_example57_q == frac_x_uid184_i_cmp14_example57_b ? 1'b1 : 1'b0);

    // fracXIsNotZero_uid188_i_cmp14_example57(LOGICAL,187)@16
    assign fracXIsNotZero_uid188_i_cmp14_example57_q = ~ (fracXIsZero_uid187_i_cmp14_example57_q);

    // exp_x_uid183_i_cmp14_example57(BITSELECT,182)@16
    assign exp_x_uid183_i_cmp14_example57_b = i_sub_example56_out_primWireOut[30:23];

    // expXIsMax_uid186_i_cmp14_example57(LOGICAL,185)@16
    assign expXIsMax_uid186_i_cmp14_example57_q = $unsigned(exp_x_uid183_i_cmp14_example57_b == c_i8_1101_q ? 1'b1 : 1'b0);

    // excN_x_uid191_i_cmp14_example57(LOGICAL,190)@16
    assign excN_x_uid191_i_cmp14_example57_q = expXIsMax_uid186_i_cmp14_example57_q & fracXIsNotZero_uid188_i_cmp14_example57_q;

    // oneIsNaN_uid214_i_cmp14_example57(LOGICAL,213)@16 + 1
    assign oneIsNaN_uid214_i_cmp14_example57_qi = excN_x_uid191_i_cmp14_example57_q | excN_y_uid208_i_cmp14_example57_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    oneIsNaN_uid214_i_cmp14_example57_delay ( .xin(oneIsNaN_uid214_i_cmp14_example57_qi), .xout(oneIsNaN_uid214_i_cmp14_example57_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // expXIsZero_uid202_i_cmp14_example57(LOGICAL,201)@16
    assign expXIsZero_uid202_i_cmp14_example57_q = $unsigned(exp_y_uid200_i_cmp14_example57_b == c_i8_097_q ? 1'b1 : 1'b0);

    // excZ_y_uid206_i_cmp14_example57(LOGICAL,205)@16
    assign excZ_y_uid206_i_cmp14_example57_q = expXIsZero_uid202_i_cmp14_example57_q & fracXIsZero_uid204_i_cmp14_example57_q;

    // invExcYZ_uid236_i_cmp14_example57(LOGICAL,235)@16
    assign invExcYZ_uid236_i_cmp14_example57_q = ~ (excZ_y_uid206_i_cmp14_example57_q);

    // expXIsZero_uid185_i_cmp14_example57(LOGICAL,184)@16
    assign expXIsZero_uid185_i_cmp14_example57_q = $unsigned(exp_x_uid183_i_cmp14_example57_b == c_i8_097_q ? 1'b1 : 1'b0);

    // excZ_x_uid189_i_cmp14_example57(LOGICAL,188)@16
    assign excZ_x_uid189_i_cmp14_example57_q = expXIsZero_uid185_i_cmp14_example57_q & fracXIsZero_uid187_i_cmp14_example57_q;

    // invExcXZ_uid237_i_cmp14_example57(LOGICAL,236)@16
    assign invExcXZ_uid237_i_cmp14_example57_q = ~ (excZ_x_uid189_i_cmp14_example57_q);

    // oneNonZero_uid238_i_cmp14_example57(LOGICAL,237)@16
    assign oneNonZero_uid238_i_cmp14_example57_q = invExcXZ_uid237_i_cmp14_example57_q | invExcYZ_uid236_i_cmp14_example57_q;

    // two_uid230_i_cmp14_example57(CONSTANT,229)
    assign two_uid230_i_cmp14_example57_q = $unsigned(2'b10);

    // signX_uid228_i_cmp14_example57(BITSELECT,227)@16
    assign signX_uid228_i_cmp14_example57_b = $unsigned(i_sub_example56_out_primWireOut[31:31]);

    // signY_uid229_i_cmp14_example57(BITSELECT,228)@16
    assign signY_uid229_i_cmp14_example57_b = $unsigned(c_float_0_000000e_0099_q[31:31]);

    // concSXSY_uid231_i_cmp14_example57(BITJOIN,230)@16
    assign concSXSY_uid231_i_cmp14_example57_q = {signX_uid228_i_cmp14_example57_b, signY_uid229_i_cmp14_example57_b};

    // sxLTsy_uid232_i_cmp14_example57(LOGICAL,231)@16
    assign sxLTsy_uid232_i_cmp14_example57_q = $unsigned(concSXSY_uid231_i_cmp14_example57_q == two_uid230_i_cmp14_example57_q ? 1'b1 : 1'b0);

    // rc2_uid239_i_cmp14_example57(LOGICAL,238)@16
    assign rc2_uid239_i_cmp14_example57_q = sxLTsy_uid232_i_cmp14_example57_q & oneNonZero_uid238_i_cmp14_example57_q;

    // expFracX_uid219_i_cmp14_example57(BITJOIN,218)@16
    assign expFracX_uid219_i_cmp14_example57_q = {exp_x_uid183_i_cmp14_example57_b, frac_x_uid184_i_cmp14_example57_b};

    // expFracY_uid221_i_cmp14_example57(BITJOIN,220)@16
    assign expFracY_uid221_i_cmp14_example57_q = {exp_y_uid200_i_cmp14_example57_b, frac_y_uid201_i_cmp14_example57_b};

    // efxGTefy_uid223_i_cmp14_example57(COMPARE,222)@16
    assign efxGTefy_uid223_i_cmp14_example57_a = {2'b00, expFracY_uid221_i_cmp14_example57_q};
    assign efxGTefy_uid223_i_cmp14_example57_b = {2'b00, expFracX_uid219_i_cmp14_example57_q};
    assign efxGTefy_uid223_i_cmp14_example57_o = $unsigned(efxGTefy_uid223_i_cmp14_example57_a) - $unsigned(efxGTefy_uid223_i_cmp14_example57_b);
    assign efxGTefy_uid223_i_cmp14_example57_c[0] = efxGTefy_uid223_i_cmp14_example57_o[32];

    // efxLTefy_uid224_i_cmp14_example57(COMPARE,223)@16
    assign efxLTefy_uid224_i_cmp14_example57_a = {2'b00, expFracX_uid219_i_cmp14_example57_q};
    assign efxLTefy_uid224_i_cmp14_example57_b = {2'b00, expFracY_uid221_i_cmp14_example57_q};
    assign efxLTefy_uid224_i_cmp14_example57_o = $unsigned(efxLTefy_uid224_i_cmp14_example57_a) - $unsigned(efxLTefy_uid224_i_cmp14_example57_b);
    assign efxLTefy_uid224_i_cmp14_example57_c[0] = efxLTefy_uid224_i_cmp14_example57_o[32];

    // expFracCompMux_uid235_i_cmp14_example57(MUX,234)@16
    assign expFracCompMux_uid235_i_cmp14_example57_s = signX_uid228_i_cmp14_example57_b;
    always @(expFracCompMux_uid235_i_cmp14_example57_s or efxLTefy_uid224_i_cmp14_example57_c or efxGTefy_uid223_i_cmp14_example57_c)
    begin
        unique case (expFracCompMux_uid235_i_cmp14_example57_s)
            1'b0 : expFracCompMux_uid235_i_cmp14_example57_q = efxLTefy_uid224_i_cmp14_example57_c;
            1'b1 : expFracCompMux_uid235_i_cmp14_example57_q = efxGTefy_uid223_i_cmp14_example57_c;
            default : expFracCompMux_uid235_i_cmp14_example57_q = 1'b0;
        endcase
    end

    // xorSigns_uid233_i_cmp14_example57(LOGICAL,232)@16
    assign xorSigns_uid233_i_cmp14_example57_q = signX_uid228_i_cmp14_example57_b ^ signY_uid229_i_cmp14_example57_b;

    // sxEQsy_uid234_i_cmp14_example57(LOGICAL,233)@16
    assign sxEQsy_uid234_i_cmp14_example57_q = ~ (xorSigns_uid233_i_cmp14_example57_q);

    // sxEQsyExpFracCompMux_uid240_i_cmp14_example57(LOGICAL,239)@16
    assign sxEQsyExpFracCompMux_uid240_i_cmp14_example57_q = sxEQsy_uid234_i_cmp14_example57_q & expFracCompMux_uid235_i_cmp14_example57_q;

    // r_uid241_i_cmp14_example57(LOGICAL,240)@16 + 1
    assign r_uid241_i_cmp14_example57_qi = sxEQsyExpFracCompMux_uid240_i_cmp14_example57_q | rc2_uid239_i_cmp14_example57_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    r_uid241_i_cmp14_example57_delay ( .xin(r_uid241_i_cmp14_example57_qi), .xout(r_uid241_i_cmp14_example57_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // rPostExc_uid242_i_cmp14_example57(LOGICAL,241)@17 + 1
    assign rPostExc_uid242_i_cmp14_example57_qi = r_uid241_i_cmp14_example57_q | oneIsNaN_uid214_i_cmp14_example57_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    rPostExc_uid242_i_cmp14_example57_delay ( .xin(rPostExc_uid242_i_cmp14_example57_qi), .xout(rPostExc_uid242_i_cmp14_example57_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist0_rPostExc_uid242_i_cmp14_example57_q_2(DELAY,303)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_rPostExc_uid242_i_cmp14_example57_q_2_q <= '0;
        end
        else
        begin
            redist0_rPostExc_uid242_i_cmp14_example57_q_2_q <= $unsigned(rPostExc_uid242_i_cmp14_example57_q);
        end
    end

    // i_unnamed_example60(MUX,124)@19
    assign i_unnamed_example60_s = redist0_rPostExc_uid242_i_cmp14_example57_q_2_q;
    always @(i_unnamed_example60_s or i_add_example59_out_primWireOut or redist22_i_llvm_fpga_pop_f32_s_017_pop8_example58_out_data_out_3_q)
    begin
        unique case (i_unnamed_example60_s)
            1'b0 : i_unnamed_example60_q = i_add_example59_out_primWireOut;
            1'b1 : i_unnamed_example60_q = redist22_i_llvm_fpga_pop_f32_s_017_pop8_example58_out_data_out_3_q;
            default : i_unnamed_example60_q = 32'b0;
        endcase
    end

    // redist25_i_first_cleanup_xor_example4_q_7(DELAY,328)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist25_i_first_cleanup_xor_example4_q_7 ( .xin(i_first_cleanup_xor_example4_q), .xout(redist25_i_first_cleanup_xor_example4_q_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_ffwd_source_f32_unnamed_example3_example72(BLACKBOX,59)@19
    // out out_intel_reserved_ffwd_0_0@20000000
    example_i_llvm_fpga_ffwd_source_f32_unnamed_3_example0 thei_llvm_fpga_ffwd_source_f32_unnamed_example3_example72 (
        .in_predicate_in(redist25_i_first_cleanup_xor_example4_q_7_q),
        .in_src_data_in_0_0(i_unnamed_example60_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_intel_reserved_ffwd_0_0(i_llvm_fpga_ffwd_source_f32_unnamed_example3_example72_out_intel_reserved_ffwd_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,129)
    assign out_intel_reserved_ffwd_0_0 = i_llvm_fpga_ffwd_source_f32_unnamed_example3_example72_out_intel_reserved_ffwd_0_0;

    // valid_fanout_reg0(REG,243)@18 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist8_sync_together117_aunroll_x_in_i_valid_17_q);
        end
    end

    // i_masked_example73(LOGICAL,73)@12 + 1
    assign i_masked_example73_qi = i_notcmp_example65_q & i_first_cleanup_example3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_example73_delay ( .xin(i_masked_example73_qi), .xout(i_masked_example73_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist21_i_masked_example73_q_7(DELAY,324)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist21_i_masked_example73_q_7 ( .xin(i_masked_example73_q), .xout(redist21_i_masked_example73_q_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,177)@19
    assign out_c0_exi2_0_tpl = GND_q;
    assign out_c0_exi2_1_tpl = redist24_i_llvm_fpga_pipeline_keep_going_example6_out_data_out_16_q;
    assign out_c0_exi2_2_tpl = redist21_i_masked_example73_q_7_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_example1 = GND_q;

endmodule
