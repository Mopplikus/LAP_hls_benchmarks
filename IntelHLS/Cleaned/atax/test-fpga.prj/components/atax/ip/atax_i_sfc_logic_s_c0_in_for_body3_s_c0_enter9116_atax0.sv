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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body3_ataxs_c0_enter9116_atax0
// Created for function/kernel atax
// SystemVerilog created on Tue Jun 13 01:54:00 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_i_sfc_logic_s_c0_in_for_body3_s_c0_enter9116_atax0 (
    output wire [0:0] out_c0_exi14_0_tpl,
    output wire [0:0] out_c0_exi14_1_tpl,
    output wire [0:0] out_c0_exi14_2_tpl,
    output wire [63:0] out_c0_exi14_3_tpl,
    output wire [31:0] out_c0_exi14_4_tpl,
    output wire [63:0] out_c0_exi14_5_tpl,
    output wire [0:0] out_c0_exi14_6_tpl,
    output wire [0:0] out_c0_exi14_7_tpl,
    output wire [63:0] out_c0_exi14_8_tpl,
    output wire [0:0] out_c0_exi14_9_tpl,
    output wire [63:0] out_c0_exi14_10_tpl,
    output wire [0:0] out_c0_exi14_11_tpl,
    output wire [0:0] out_c0_exi14_12_tpl,
    output wire [0:0] out_c0_exi14_13_tpl,
    output wire [31:0] out_c0_exi14_14_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_atax1,
    input wire [0:0] in_c0_eni8_0_tpl,
    input wire [0:0] in_c0_eni8_1_tpl,
    input wire [31:0] in_c0_eni8_2_tpl,
    input wire [0:0] in_c0_eni8_3_tpl,
    input wire [0:0] in_c0_eni8_4_tpl,
    input wire [63:0] in_c0_eni8_5_tpl,
    input wire [0:0] in_c0_eni8_6_tpl,
    input wire [0:0] in_c0_eni8_7_tpl,
    input wire [31:0] in_c0_eni8_8_tpl,
    input wire [0:0] in_enable,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going23_atax6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going23_atax6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [5:0] bgTrunc_i_fpga_indvars_iv_next_atax38_sel_x_b;
    wire [31:0] bgTrunc_i_inc_atax28_sel_x_b;
    wire [0:0] i_first_cleanup28_atax3_sel_x_b;
    wire [0:0] i_last_initeration24_atax10_sel_x_b;
    wire [63:0] i_mptr_bitcast_index78_atax0_dupName_0_trunc_sel_x_b;
    wire [1:0] i_mptr_bitcast_index78_atax0_c_i2_01_x_q;
    wire [63:0] i_mptr_bitcast_index80_atax0_dupName_0_trunc_sel_x_b;
    wire [1:0] c_i2_150_q;
    wire [31:0] c_i32_052_q;
    wire [31:0] c_i32_153_q;
    wire [5:0] c_i6_156_q;
    wire [5:0] c_i6_1854_q;
    wire [32:0] i_add_atax17_a;
    wire [32:0] i_add_atax17_b;
    logic [32:0] i_add_atax17_o;
    wire [32:0] i_add_atax17_q;
    wire [1:0] i_cleanups_shl27_atax5_vt_join_q;
    wire [0:0] i_cleanups_shl27_atax5_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor29_atax4_q;
    wire [6:0] i_fpga_indvars_iv_next_atax38_a;
    wire [6:0] i_fpga_indvars_iv_next_atax38_b;
    logic [6:0] i_fpga_indvars_iv_next_atax38_o;
    wire [6:0] i_fpga_indvars_iv_next_atax38_q;
    wire [32:0] i_inc_atax28_a;
    wire [32:0] i_inc_atax28_b;
    logic [32:0] i_inc_atax28_o;
    wire [32:0] i_inc_atax28_q;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast799117_atax26_out_dest_data_out_2_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a9615_atax12_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going23_atax6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going23_atax6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going23_atax6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going23_atax6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going23_atax6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going23_atax6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1250_pop22_atax43_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1250_pop22_atax43_out_feedback_stall_out_22;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop1354_pop24_atax22_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop1354_pop24_atax22_out_feedback_stall_out_24;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop1247_pop20_atax20_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop1247_pop20_atax20_out_feedback_stall_out_20;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp3552_pop23_atax45_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp3552_pop23_atax45_out_feedback_stall_out_23;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups26_pop18_atax2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups26_pop18_atax2_out_feedback_stall_out_18;
    wire [1:0] i_llvm_fpga_pop_i2_initerations21_pop17_atax7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations21_pop17_atax7_out_feedback_stall_out_17;
    wire [31:0] i_llvm_fpga_pop_i32_j_073_pop16_atax14_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_073_pop16_atax14_out_feedback_stall_out_16;
    wire [31:0] i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_feedback_stall_out_21;
    wire [5:0] i_llvm_fpga_pop_i6_fpga_indvars_iv_pop14_atax30_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv_pop14_atax30_out_feedback_stall_out_14;
    wire [63:0] i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8845_pop19_atax41_out_data_out;
    wire [0:0] i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8845_pop19_atax41_out_feedback_stall_out_19;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1250_push22_atax44_out_feedback_out_22;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1250_push22_atax44_out_feedback_valid_out_22;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration25_atax11_out_feedback_out_4;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration25_atax11_out_feedback_valid_out_4;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_pop1354_push24_atax23_out_feedback_out_24;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_pop1354_push24_atax23_out_feedback_valid_out_24;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop1247_push20_atax21_out_feedback_out_20;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop1247_push20_atax21_out_feedback_valid_out_20;
    wire [0:0] i_llvm_fpga_push_i1_notcmp3552_push23_atax46_out_feedback_out_23;
    wire [0:0] i_llvm_fpga_push_i1_notcmp3552_push23_atax46_out_feedback_valid_out_23;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond33_atax34_out_feedback_out_5;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond33_atax34_out_feedback_valid_out_5;
    wire [7:0] i_llvm_fpga_push_i2_cleanups26_push18_atax37_out_feedback_out_18;
    wire [0:0] i_llvm_fpga_push_i2_cleanups26_push18_atax37_out_feedback_valid_out_18;
    wire [7:0] i_llvm_fpga_push_i2_initerations21_push17_atax9_out_feedback_out_17;
    wire [0:0] i_llvm_fpga_push_i2_initerations21_push17_atax9_out_feedback_valid_out_17;
    wire [31:0] i_llvm_fpga_push_i32_j_073_push16_atax29_out_feedback_out_16;
    wire [0:0] i_llvm_fpga_push_i32_j_073_push16_atax29_out_feedback_valid_out_16;
    wire [31:0] i_llvm_fpga_push_i32_mul_add1448_push21_atax16_out_feedback_out_21;
    wire [0:0] i_llvm_fpga_push_i32_mul_add1448_push21_atax16_out_feedback_valid_out_21;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push14_atax39_out_feedback_out_14;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push14_atax39_out_feedback_valid_out_14;
    wire [63:0] i_llvm_fpga_push_p1025i32_mptr_bitcast_index8845_push19_atax42_out_feedback_out_19;
    wire [0:0] i_llvm_fpga_push_p1025i32_mptr_bitcast_index8845_push19_atax42_out_feedback_valid_out_19;
    wire [0:0] i_masked32_atax40_qi;
    reg [0:0] i_masked32_atax40_q;
    wire [0:0] i_memdep_phi3_or_atax24_q;
    wire [0:0] i_next_cleanups31_atax36_s;
    reg [1:0] i_next_cleanups31_atax36_q;
    wire [1:0] i_next_initerations22_atax8_vt_join_q;
    wire [0:0] i_next_initerations22_atax8_vt_select_0_b;
    wire [0:0] i_notcmp19_atax33_q;
    wire [0:0] i_or30_atax35_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg7_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg8_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg9_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg10_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg11_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg12_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg13_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg14_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg15_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg16_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg17_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg18_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg19_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid159_i_cleanups_shl27_atax0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid159_i_cleanups_shl27_atax0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid160_i_cleanups_shl27_atax0_shift_x_q;
    wire [0:0] leftShiftStage0_uid162_i_cleanups_shl27_atax0_shift_x_s;
    reg [1:0] leftShiftStage0_uid162_i_cleanups_shl27_atax0_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid166_i_next_initerations22_atax0_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid168_i_next_initerations22_atax0_shift_x_q;
    wire [0:0] rightShiftStage0_uid170_i_next_initerations22_atax0_shift_x_s;
    reg [1:0] rightShiftStage0_uid170_i_next_initerations22_atax0_shift_x_q;
    wire [0:0] i_exitcond_atax31_cmp_nsign_q;
    wire [60:0] i_mptr_bitcast_index78_atax0_add_x_p1_of_2_a;
    wire [60:0] i_mptr_bitcast_index78_atax0_add_x_p1_of_2_b;
    logic [60:0] i_mptr_bitcast_index78_atax0_add_x_p1_of_2_o;
    wire [0:0] i_mptr_bitcast_index78_atax0_add_x_p1_of_2_c;
    wire [59:0] i_mptr_bitcast_index78_atax0_add_x_p1_of_2_q;
    wire [6:0] i_mptr_bitcast_index78_atax0_add_x_p2_of_2_a;
    wire [6:0] i_mptr_bitcast_index78_atax0_add_x_p2_of_2_b;
    logic [6:0] i_mptr_bitcast_index78_atax0_add_x_p2_of_2_o;
    wire [0:0] i_mptr_bitcast_index78_atax0_add_x_p2_of_2_cin;
    wire [4:0] i_mptr_bitcast_index78_atax0_add_x_p2_of_2_q;
    wire [64:0] i_mptr_bitcast_index78_atax0_add_x_BitJoin_for_q_q;
    wire [60:0] i_mptr_bitcast_index80_atax0_add_x_p1_of_2_a;
    wire [60:0] i_mptr_bitcast_index80_atax0_add_x_p1_of_2_b;
    logic [60:0] i_mptr_bitcast_index80_atax0_add_x_p1_of_2_o;
    wire [0:0] i_mptr_bitcast_index80_atax0_add_x_p1_of_2_c;
    wire [59:0] i_mptr_bitcast_index80_atax0_add_x_p1_of_2_q;
    wire [6:0] i_mptr_bitcast_index80_atax0_add_x_p2_of_2_a;
    wire [6:0] i_mptr_bitcast_index80_atax0_add_x_p2_of_2_b;
    logic [6:0] i_mptr_bitcast_index80_atax0_add_x_p2_of_2_o;
    wire [0:0] i_mptr_bitcast_index80_atax0_add_x_p2_of_2_cin;
    wire [4:0] i_mptr_bitcast_index80_atax0_add_x_p2_of_2_q;
    wire [64:0] i_mptr_bitcast_index80_atax0_add_x_BitJoin_for_q_q;
    wire [4:0] i_mptr_bitcast_index78_atax0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [31:0] i_mptr_bitcast_index78_atax0_add_x_BitSelect_for_b_tessel0_1_b;
    wire [25:0] i_mptr_bitcast_index78_atax0_add_x_BitSelect_for_b_tessel0_2_b;
    wire [59:0] i_mptr_bitcast_index78_atax0_add_x_BitSelect_for_b_BitJoin_for_b_q;
    wire [3:0] i_mptr_bitcast_index78_atax0_add_x_BitSelect_for_b_tessel1_0_b;
    wire [4:0] i_mptr_bitcast_index78_atax0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [4:0] i_mptr_bitcast_index80_atax0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [59:0] i_mptr_bitcast_index80_atax0_add_x_BitSelect_for_b_BitJoin_for_b_q;
    wire [59:0] i_mptr_bitcast_index80_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    wire [3:0] i_mptr_bitcast_index80_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c;
    wire [59:0] i_mptr_bitcast_index78_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    wire [3:0] i_mptr_bitcast_index78_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c;
    reg [3:0] redist0_i_mptr_bitcast_index78_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q;
    reg [3:0] redist1_i_mptr_bitcast_index80_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q;
    reg [31:0] redist2_i_mptr_bitcast_index78_atax0_add_x_BitSelect_for_b_tessel0_1_b_1_q;
    reg [59:0] redist3_i_mptr_bitcast_index80_atax0_add_x_p1_of_2_q_1_q;
    reg [59:0] redist4_i_mptr_bitcast_index78_atax0_add_x_p1_of_2_q_1_q;
    reg [0:0] redist5_valid_fanout_reg0_q_2_q;
    reg [0:0] redist5_valid_fanout_reg0_q_2_delay_0;
    reg [0:0] redist6_i_masked32_atax40_q_4_q;
    reg [0:0] redist6_i_masked32_atax40_q_4_delay_0;
    reg [0:0] redist6_i_masked32_atax40_q_4_delay_1;
    reg [63:0] redist7_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8845_pop19_atax41_out_data_out_1_q;
    reg [63:0] redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8845_pop19_atax41_out_data_out_4_q;
    reg [63:0] redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8845_pop19_atax41_out_data_out_4_delay_0;
    reg [31:0] redist9_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_1_q;
    reg [31:0] redist11_i_llvm_fpga_pop_i32_j_073_pop16_atax14_out_data_out_1_q;
    reg [31:0] redist12_i_llvm_fpga_pop_i32_j_073_pop16_atax14_out_data_out_2_q;
    reg [0:0] redist13_i_llvm_fpga_pop_i1_notcmp3552_pop23_atax45_out_data_out_4_q;
    reg [0:0] redist13_i_llvm_fpga_pop_i1_notcmp3552_pop23_atax45_out_data_out_4_delay_0;
    reg [0:0] redist13_i_llvm_fpga_pop_i1_notcmp3552_pop23_atax45_out_data_out_4_delay_1;
    reg [0:0] redist13_i_llvm_fpga_pop_i1_notcmp3552_pop23_atax45_out_data_out_4_delay_2;
    reg [0:0] redist14_i_llvm_fpga_pop_i1_memdep_phi_pop1247_pop20_atax20_out_data_out_4_q;
    reg [0:0] redist14_i_llvm_fpga_pop_i1_memdep_phi_pop1247_pop20_atax20_out_data_out_4_delay_0;
    reg [0:0] redist14_i_llvm_fpga_pop_i1_memdep_phi_pop1247_pop20_atax20_out_data_out_4_delay_1;
    reg [0:0] redist14_i_llvm_fpga_pop_i1_memdep_phi_pop1247_pop20_atax20_out_data_out_4_delay_2;
    reg [0:0] redist15_i_llvm_fpga_pop_i1_memdep_phi3_pop1354_pop24_atax22_out_data_out_2_q;
    reg [0:0] redist15_i_llvm_fpga_pop_i1_memdep_phi3_pop1354_pop24_atax22_out_data_out_2_delay_0;
    reg [0:0] redist16_i_llvm_fpga_pop_i1_exitcond1250_pop22_atax43_out_data_out_2_q;
    reg [0:0] redist16_i_llvm_fpga_pop_i1_exitcond1250_pop22_atax43_out_data_out_2_delay_0;
    reg [0:0] redist17_i_llvm_fpga_pipeline_keep_going23_atax6_out_data_out_1_q;
    reg [0:0] redist18_i_llvm_fpga_pipeline_keep_going23_atax6_out_data_out_2_q;
    reg [0:0] redist19_i_llvm_fpga_pipeline_keep_going23_atax6_out_data_out_3_q;
    reg [0:0] redist20_i_llvm_fpga_pipeline_keep_going23_atax6_out_data_out_5_q;
    reg [0:0] redist20_i_llvm_fpga_pipeline_keep_going23_atax6_out_data_out_5_delay_0;
    reg [63:0] redist21_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a9615_atax12_out_dest_data_out_0_0_2_q;
    reg [63:0] redist21_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a9615_atax12_out_dest_data_out_0_0_2_delay_0;
    reg [0:0] redist22_i_first_cleanup_xor29_atax4_q_4_q;
    reg [0:0] redist22_i_first_cleanup_xor29_atax4_q_4_delay_0;
    reg [0:0] redist22_i_first_cleanup_xor29_atax4_q_4_delay_1;
    reg [0:0] redist22_i_first_cleanup_xor29_atax4_q_4_delay_2;
    reg [0:0] redist23_sync_together84_aunroll_x_in_c0_eni8_1_tpl_1_q;
    reg [0:0] redist24_sync_together84_aunroll_x_in_c0_eni8_1_tpl_3_q;
    reg [0:0] redist24_sync_together84_aunroll_x_in_c0_eni8_1_tpl_3_delay_0;
    reg [0:0] redist25_sync_together84_aunroll_x_in_c0_eni8_1_tpl_5_q;
    reg [0:0] redist25_sync_together84_aunroll_x_in_c0_eni8_1_tpl_5_delay_0;
    reg [31:0] redist26_sync_together84_aunroll_x_in_c0_eni8_2_tpl_1_q;
    reg [0:0] redist27_sync_together84_aunroll_x_in_c0_eni8_3_tpl_1_q;
    reg [0:0] redist28_sync_together84_aunroll_x_in_c0_eni8_4_tpl_3_q;
    reg [0:0] redist28_sync_together84_aunroll_x_in_c0_eni8_4_tpl_3_delay_0;
    reg [0:0] redist28_sync_together84_aunroll_x_in_c0_eni8_4_tpl_3_delay_1;
    reg [63:0] redist29_sync_together84_aunroll_x_in_c0_eni8_5_tpl_1_q;
    reg [0:0] redist30_sync_together84_aunroll_x_in_c0_eni8_6_tpl_3_q;
    reg [0:0] redist30_sync_together84_aunroll_x_in_c0_eni8_6_tpl_3_delay_0;
    reg [0:0] redist30_sync_together84_aunroll_x_in_c0_eni8_6_tpl_3_delay_1;
    reg [0:0] redist31_sync_together84_aunroll_x_in_c0_eni8_7_tpl_1_q;
    reg [0:0] redist33_sync_together84_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist34_sync_together84_aunroll_x_in_i_valid_2_q;
    wire [0:0] dupName_0_enable_stall_connector_x_not_enable_q;
    reg [63:0] redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8845_pop19_atax41_out_data_out_4_inputreg0_q;
    wire redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_mem_reset0;
    wire [31:0] redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_mem_ia;
    wire [0:0] redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_mem_aa;
    wire [0:0] redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_mem_ab;
    wire [31:0] redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_mem_iq;
    wire [31:0] redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_mem_q;
    wire [0:0] redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_rdcnt_q;
    (* preserve *) reg [0:0] redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_rdcnt_i;
    wire [0:0] redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_rdmux_s;
    reg [0:0] redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_rdmux_q;
    reg [0:0] redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_wraddr_q;
    (* dont_merge *) reg [0:0] redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_cmpReg_q;
    wire [0:0] redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_notEnable_q;
    wire [0:0] redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_nor_q;
    (* dont_merge *) reg [0:0] redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_sticky_ena_q;
    wire [0:0] redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_enaAnd_q;
    wire redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_mem_reset0;
    wire [31:0] redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_mem_ia;
    wire [1:0] redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_mem_aa;
    wire [1:0] redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_mem_ab;
    wire [31:0] redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_mem_iq;
    wire [31:0] redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_mem_q;
    wire [1:0] redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_rdcnt_i;
    wire [0:0] redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_rdmux_s;
    reg [1:0] redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_rdmux_q;
    reg [1:0] redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_wraddr_q;
    wire [2:0] redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_mem_last_q;
    wire [2:0] redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_cmp_b;
    wire [0:0] redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_cmpReg_q;
    wire [0:0] redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_notEnable_q;
    wire [0:0] redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_sticky_ena_q;
    wire [0:0] redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_enaAnd_q;


    // redist33_sync_together84_aunroll_x_in_i_valid_1(DELAY,250)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_sync_together84_aunroll_x_in_i_valid_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist33_sync_together84_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist34_sync_together84_aunroll_x_in_i_valid_2(DELAY,251)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_sync_together84_aunroll_x_in_i_valid_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist34_sync_together84_aunroll_x_in_i_valid_2_q <= $unsigned(redist33_sync_together84_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg0(REG,126)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg0_q <= $unsigned(redist34_sync_together84_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist5_valid_fanout_reg0_q_2(DELAY,222)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_valid_fanout_reg0_q_2_delay_0 <= '0;
            redist5_valid_fanout_reg0_q_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist5_valid_fanout_reg0_q_2_delay_0 <= $unsigned(valid_fanout_reg0_q);
            redist5_valid_fanout_reg0_q_2_q <= redist5_valid_fanout_reg0_q_2_delay_0;
        end
    end

    // redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_notEnable(LOGICAL,294)
    assign redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_notEnable_q = $unsigned(~ (in_enable));

    // redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_nor(LOGICAL,295)
    assign redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_nor_q = ~ (redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_notEnable_q | redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_sticky_ena_q);

    // redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_mem_last(CONSTANT,291)
    assign redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_cmp(LOGICAL,292)
    assign redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_cmp_b = {1'b0, redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_rdmux_q};
    assign redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_cmp_q = $unsigned(redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_mem_last_q == redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_cmpReg(REG,293)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_cmpReg_q <= $unsigned(redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_cmp_q);
        end
    end

    // redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_sticky_ena(REG,296)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_nor_q == 1'b1)
        begin
            redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_sticky_ena_q <= $unsigned(redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_cmpReg_q);
        end
    end

    // redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_enaAnd(LOGICAL,297)
    assign redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_enaAnd_q = redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_sticky_ena_q & in_enable;

    // redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_rdcnt(COUNTER,288)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_rdcnt_i <= 2'd0;
        end
        else if (in_enable == 1'b1)
        begin
            redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_rdcnt_i <= $unsigned(redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_rdcnt_q = redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_rdcnt_i[1:0];

    // redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_rdmux(MUX,289)
    assign redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_rdmux_s = in_enable;
    always @(redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_rdmux_s or redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_wraddr_q or redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_rdcnt_q)
    begin
        unique case (redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_rdmux_s)
            1'b0 : redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_rdmux_q = redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_wraddr_q;
            1'b1 : redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_rdmux_q = redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_rdcnt_q;
            default : redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_rdmux_q = 2'b0;
        endcase
    end

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_wraddr(REG,290)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_wraddr_q <= $unsigned(redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_rdmux_q);
        end
    end

    // redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_mem(DUALMEM,287)
    assign redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_mem_ia = $unsigned(in_c0_eni8_8_tpl);
    assign redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_mem_aa = redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_wraddr_q;
    assign redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_mem_ab = redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_rdmux_q;
    assign redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(32),
        .widthad_b(2),
        .numwords_b(4),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone V")
    ) redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_mem_dmem (
        .clocken1(redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_mem_aa),
        .data_a(redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_mem_ia),
        .wren_a(in_enable[0]),
        .address_b(redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_mem_ab),
        .q_b(redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_mem_q = redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_mem_iq[31:0];

    // redist23_sync_together84_aunroll_x_in_c0_eni8_1_tpl_1(DELAY,240)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_sync_together84_aunroll_x_in_c0_eni8_1_tpl_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist23_sync_together84_aunroll_x_in_c0_eni8_1_tpl_1_q <= $unsigned(in_c0_eni8_1_tpl);
        end
    end

    // redist24_sync_together84_aunroll_x_in_c0_eni8_1_tpl_3(DELAY,241)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_sync_together84_aunroll_x_in_c0_eni8_1_tpl_3_delay_0 <= '0;
            redist24_sync_together84_aunroll_x_in_c0_eni8_1_tpl_3_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist24_sync_together84_aunroll_x_in_c0_eni8_1_tpl_3_delay_0 <= $unsigned(redist23_sync_together84_aunroll_x_in_c0_eni8_1_tpl_1_q);
            redist24_sync_together84_aunroll_x_in_c0_eni8_1_tpl_3_q <= redist24_sync_together84_aunroll_x_in_c0_eni8_1_tpl_3_delay_0;
        end
    end

    // redist25_sync_together84_aunroll_x_in_c0_eni8_1_tpl_5(DELAY,242)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_sync_together84_aunroll_x_in_c0_eni8_1_tpl_5_delay_0 <= '0;
            redist25_sync_together84_aunroll_x_in_c0_eni8_1_tpl_5_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist25_sync_together84_aunroll_x_in_c0_eni8_1_tpl_5_delay_0 <= $unsigned(redist24_sync_together84_aunroll_x_in_c0_eni8_1_tpl_3_q);
            redist25_sync_together84_aunroll_x_in_c0_eni8_1_tpl_5_q <= redist25_sync_together84_aunroll_x_in_c0_eni8_1_tpl_5_delay_0;
        end
    end

    // valid_fanout_reg18(REG,144)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg18_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg18_q <= $unsigned(in_i_valid);
        end
    end

    // dupName_0_enable_stall_connector_x_not_enable(LOGICAL,252)
    assign dupName_0_enable_stall_connector_x_not_enable_q = $unsigned(~ (in_enable));

    // valid_fanout_reg19(REG,145)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg19_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg19_q <= $unsigned(in_i_valid);
        end
    end

    // leftShiftStage0Idx1Rng1_uid159_i_cleanups_shl27_atax0_shift_x(BITSELECT,158)@2
    assign leftShiftStage0Idx1Rng1_uid159_i_cleanups_shl27_atax0_shift_x_in = i_llvm_fpga_pop_i2_cleanups26_pop18_atax2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid159_i_cleanups_shl27_atax0_shift_x_b = leftShiftStage0Idx1Rng1_uid159_i_cleanups_shl27_atax0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid160_i_cleanups_shl27_atax0_shift_x(BITJOIN,159)@2
    assign leftShiftStage0Idx1_uid160_i_cleanups_shl27_atax0_shift_x_q = {leftShiftStage0Idx1Rng1_uid159_i_cleanups_shl27_atax0_shift_x_b, GND_q};

    // leftShiftStage0_uid162_i_cleanups_shl27_atax0_shift_x(MUX,161)@2
    assign leftShiftStage0_uid162_i_cleanups_shl27_atax0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid162_i_cleanups_shl27_atax0_shift_x_s or i_llvm_fpga_pop_i2_cleanups26_pop18_atax2_out_data_out or leftShiftStage0Idx1_uid160_i_cleanups_shl27_atax0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid162_i_cleanups_shl27_atax0_shift_x_s)
            1'b0 : leftShiftStage0_uid162_i_cleanups_shl27_atax0_shift_x_q = i_llvm_fpga_pop_i2_cleanups26_pop18_atax2_out_data_out;
            1'b1 : leftShiftStage0_uid162_i_cleanups_shl27_atax0_shift_x_q = leftShiftStage0Idx1_uid160_i_cleanups_shl27_atax0_shift_x_q;
            default : leftShiftStage0_uid162_i_cleanups_shl27_atax0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl27_atax5_vt_select_1(BITSELECT,72)@2
    assign i_cleanups_shl27_atax5_vt_select_1_b = leftShiftStage0_uid162_i_cleanups_shl27_atax0_shift_x_q[1:1];

    // i_cleanups_shl27_atax5_vt_join(BITJOIN,71)@2
    assign i_cleanups_shl27_atax5_vt_join_q = {i_cleanups_shl27_atax5_vt_select_1_b, GND_q};

    // i_first_cleanup_xor29_atax4(LOGICAL,75)@2
    assign i_first_cleanup_xor29_atax4_q = i_first_cleanup28_atax3_sel_x_b ^ VCC_q;

    // i_notcmp19_atax33(LOGICAL,110)@2
    assign i_notcmp19_atax33_q = i_exitcond_atax31_cmp_nsign_q ^ VCC_q;

    // i_or30_atax35(LOGICAL,111)@2
    assign i_or30_atax35_q = i_notcmp19_atax33_q | i_first_cleanup_xor29_atax4_q;

    // i_next_cleanups31_atax36(MUX,106)@2
    assign i_next_cleanups31_atax36_s = i_or30_atax35_q;
    always @(i_next_cleanups31_atax36_s or i_llvm_fpga_pop_i2_cleanups26_pop18_atax2_out_data_out or i_cleanups_shl27_atax5_vt_join_q)
    begin
        unique case (i_next_cleanups31_atax36_s)
            1'b0 : i_next_cleanups31_atax36_q = i_llvm_fpga_pop_i2_cleanups26_pop18_atax2_out_data_out;
            1'b1 : i_next_cleanups31_atax36_q = i_cleanups_shl27_atax5_vt_join_q;
            default : i_next_cleanups31_atax36_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups26_push18_atax37(BLACKBOX,98)@2
    // out out_feedback_out_18@20000000
    // out out_feedback_valid_out_18@20000000
    atax_i_llvm_fpga_push_i2_cleanups26_push18_0 thei_llvm_fpga_push_i2_cleanups26_push18_atax37 (
        .in_data_in(i_next_cleanups31_atax36_q),
        .in_feedback_stall_in_18(i_llvm_fpga_pop_i2_cleanups26_pop18_atax2_out_feedback_stall_out_18),
        .in_keep_going23(redist17_i_llvm_fpga_pipeline_keep_going23_atax6_out_data_out_1_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(redist33_sync_together84_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_18(i_llvm_fpga_push_i2_cleanups26_push18_atax37_out_feedback_out_18),
        .out_feedback_valid_out_18(i_llvm_fpga_push_i2_cleanups26_push18_atax37_out_feedback_valid_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i2_150(CONSTANT,61)
    assign c_i2_150_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups26_pop18_atax2(BLACKBOX,86)@2
    // out out_feedback_stall_out_18@20000000
    atax_i_llvm_fpga_pop_i2_cleanups26_pop18_0 thei_llvm_fpga_pop_i2_cleanups26_pop18_atax2 (
        .in_data_in(c_i2_150_q),
        .in_dir(redist23_sync_together84_aunroll_x_in_c0_eni8_1_tpl_1_q),
        .in_feedback_in_18(i_llvm_fpga_push_i2_cleanups26_push18_atax37_out_feedback_out_18),
        .in_feedback_valid_in_18(i_llvm_fpga_push_i2_cleanups26_push18_atax37_out_feedback_valid_out_18),
        .in_predicate(GND_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(redist33_sync_together84_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups26_pop18_atax2_out_data_out),
        .out_feedback_stall_out_18(i_llvm_fpga_pop_i2_cleanups26_pop18_atax2_out_feedback_stall_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup28_atax3_sel_x(BITSELECT,34)@2
    assign i_first_cleanup28_atax3_sel_x_b = i_llvm_fpga_pop_i2_cleanups26_pop18_atax2_out_data_out[0:0];

    // c_i6_156(CONSTANT,64)
    assign c_i6_156_q = $unsigned(6'b111111);

    // i_fpga_indvars_iv_next_atax38(ADD,76)@2
    assign i_fpga_indvars_iv_next_atax38_a = {1'b0, i_llvm_fpga_pop_i6_fpga_indvars_iv_pop14_atax30_out_data_out};
    assign i_fpga_indvars_iv_next_atax38_b = {1'b0, c_i6_156_q};
    assign i_fpga_indvars_iv_next_atax38_o = $unsigned(i_fpga_indvars_iv_next_atax38_a) + $unsigned(i_fpga_indvars_iv_next_atax38_b);
    assign i_fpga_indvars_iv_next_atax38_q = i_fpga_indvars_iv_next_atax38_o[6:0];

    // bgTrunc_i_fpga_indvars_iv_next_atax38_sel_x(BITSELECT,3)@2
    assign bgTrunc_i_fpga_indvars_iv_next_atax38_sel_x_b = i_fpga_indvars_iv_next_atax38_q[5:0];

    // i_llvm_fpga_push_i6_fpga_indvars_iv_push14_atax39(BLACKBOX,102)@2
    // out out_feedback_out_14@20000000
    // out out_feedback_valid_out_14@20000000
    atax_i_llvm_fpga_push_i6_fpga_indvars_iv_push14_0 thei_llvm_fpga_push_i6_fpga_indvars_iv_push14_atax39 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_atax38_sel_x_b),
        .in_feedback_stall_in_14(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop14_atax30_out_feedback_stall_out_14),
        .in_keep_going23(redist17_i_llvm_fpga_pipeline_keep_going23_atax6_out_data_out_1_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(redist33_sync_together84_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_14(i_llvm_fpga_push_i6_fpga_indvars_iv_push14_atax39_out_feedback_out_14),
        .out_feedback_valid_out_14(i_llvm_fpga_push_i6_fpga_indvars_iv_push14_atax39_out_feedback_valid_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i6_1854(CONSTANT,65)
    assign c_i6_1854_q = $unsigned(6'b010010);

    // i_llvm_fpga_pop_i6_fpga_indvars_iv_pop14_atax30(BLACKBOX,90)@2
    // out out_feedback_stall_out_14@20000000
    atax_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop14_0 thei_llvm_fpga_pop_i6_fpga_indvars_iv_pop14_atax30 (
        .in_data_in(c_i6_1854_q),
        .in_dir(redist23_sync_together84_aunroll_x_in_c0_eni8_1_tpl_1_q),
        .in_feedback_in_14(i_llvm_fpga_push_i6_fpga_indvars_iv_push14_atax39_out_feedback_out_14),
        .in_feedback_valid_in_14(i_llvm_fpga_push_i6_fpga_indvars_iv_push14_atax39_out_feedback_valid_out_14),
        .in_predicate(GND_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(redist33_sync_together84_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop14_atax30_out_data_out),
        .out_feedback_stall_out_14(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop14_atax30_out_feedback_stall_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond_atax31_cmp_nsign(LOGICAL,172)@2
    assign i_exitcond_atax31_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i6_fpga_indvars_iv_pop14_atax30_out_data_out[5:5]));

    // i_llvm_fpga_push_i1_notexitcond33_atax34(BLACKBOX,97)@2
    // out out_feedback_out_5@20000000
    // out out_feedback_valid_out_5@20000000
    atax_i_llvm_fpga_push_i1_notexitcond33_0 thei_llvm_fpga_push_i1_notexitcond33_atax34 (
        .in_data_in(i_exitcond_atax31_cmp_nsign_q),
        .in_feedback_stall_in_5(i_llvm_fpga_pipeline_keep_going23_atax6_out_not_exitcond_stall_out),
        .in_first_cleanup28(i_first_cleanup28_atax3_sel_x_b),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(redist33_sync_together84_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_5(i_llvm_fpga_push_i1_notexitcond33_atax34_out_feedback_out_5),
        .out_feedback_valid_out_5(i_llvm_fpga_push_i1_notexitcond33_atax34_out_feedback_valid_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,129)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg3_q <= $unsigned(in_i_valid);
        end
    end

    // rightShiftStage0Idx1Rng1_uid166_i_next_initerations22_atax0_shift_x(BITSELECT,165)@2
    assign rightShiftStage0Idx1Rng1_uid166_i_next_initerations22_atax0_shift_x_b = i_llvm_fpga_pop_i2_initerations21_pop17_atax7_out_data_out[1:1];

    // rightShiftStage0Idx1_uid168_i_next_initerations22_atax0_shift_x(BITJOIN,167)@2
    assign rightShiftStage0Idx1_uid168_i_next_initerations22_atax0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid166_i_next_initerations22_atax0_shift_x_b};

    // valid_fanout_reg1(REG,127)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg1_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg2(REG,128)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg2_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i2_initerations21_push17_atax9(BLACKBOX,99)@2
    // out out_feedback_out_17@20000000
    // out out_feedback_valid_out_17@20000000
    atax_i_llvm_fpga_push_i2_initerations21_push17_0 thei_llvm_fpga_push_i2_initerations21_push17_atax9 (
        .in_data_in(i_next_initerations22_atax8_vt_join_q),
        .in_feedback_stall_in_17(i_llvm_fpga_pop_i2_initerations21_pop17_atax7_out_feedback_stall_out_17),
        .in_keep_going23(redist17_i_llvm_fpga_pipeline_keep_going23_atax6_out_data_out_1_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_17(i_llvm_fpga_push_i2_initerations21_push17_atax9_out_feedback_out_17),
        .out_feedback_valid_out_17(i_llvm_fpga_push_i2_initerations21_push17_atax9_out_feedback_valid_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations21_pop17_atax7(BLACKBOX,87)@2
    // out out_feedback_stall_out_17@20000000
    atax_i_llvm_fpga_pop_i2_initerations21_pop17_0 thei_llvm_fpga_pop_i2_initerations21_pop17_atax7 (
        .in_data_in(c_i2_150_q),
        .in_dir(redist23_sync_together84_aunroll_x_in_c0_eni8_1_tpl_1_q),
        .in_feedback_in_17(i_llvm_fpga_push_i2_initerations21_push17_atax9_out_feedback_out_17),
        .in_feedback_valid_in_17(i_llvm_fpga_push_i2_initerations21_push17_atax9_out_feedback_valid_out_17),
        .in_predicate(GND_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations21_pop17_atax7_out_data_out),
        .out_feedback_stall_out_17(i_llvm_fpga_pop_i2_initerations21_pop17_atax7_out_feedback_stall_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid170_i_next_initerations22_atax0_shift_x(MUX,169)@2
    assign rightShiftStage0_uid170_i_next_initerations22_atax0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid170_i_next_initerations22_atax0_shift_x_s or i_llvm_fpga_pop_i2_initerations21_pop17_atax7_out_data_out or rightShiftStage0Idx1_uid168_i_next_initerations22_atax0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid170_i_next_initerations22_atax0_shift_x_s)
            1'b0 : rightShiftStage0_uid170_i_next_initerations22_atax0_shift_x_q = i_llvm_fpga_pop_i2_initerations21_pop17_atax7_out_data_out;
            1'b1 : rightShiftStage0_uid170_i_next_initerations22_atax0_shift_x_q = rightShiftStage0Idx1_uid168_i_next_initerations22_atax0_shift_x_q;
            default : rightShiftStage0_uid170_i_next_initerations22_atax0_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations22_atax8_vt_select_0(BITSELECT,109)@2
    assign i_next_initerations22_atax8_vt_select_0_b = rightShiftStage0_uid170_i_next_initerations22_atax0_shift_x_q[0:0];

    // i_next_initerations22_atax8_vt_join(BITJOIN,108)@2
    assign i_next_initerations22_atax8_vt_join_q = {GND_q, i_next_initerations22_atax8_vt_select_0_b};

    // i_last_initeration24_atax10_sel_x(BITSELECT,35)@2
    assign i_last_initeration24_atax10_sel_x_b = i_next_initerations22_atax8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration25_atax11(BLACKBOX,93)@2
    // out out_feedback_out_4@20000000
    // out out_feedback_valid_out_4@20000000
    atax_i_llvm_fpga_push_i1_lastiniteration25_0 thei_llvm_fpga_push_i1_lastiniteration25_atax11 (
        .in_data_in(i_last_initeration24_atax10_sel_x_b),
        .in_feedback_stall_in_4(i_llvm_fpga_pipeline_keep_going23_atax6_out_initeration_stall_out),
        .in_keep_going23(redist17_i_llvm_fpga_pipeline_keep_going23_atax6_out_data_out_1_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_4(i_llvm_fpga_push_i1_lastiniteration25_atax11_out_feedback_out_4),
        .out_feedback_valid_out_4(i_llvm_fpga_push_i1_lastiniteration25_atax11_out_feedback_valid_out_4),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going23_atax6(BLACKBOX,81)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    atax_i_llvm_fpga_pipeline_keep_going23_0 thei_llvm_fpga_pipeline_keep_going23_atax6 (
        .in_data_in(in_c0_eni8_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration25_atax11_out_feedback_out_4),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration25_atax11_out_feedback_valid_out_4),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond33_atax34_out_feedback_out_5),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond33_atax34_out_feedback_valid_out_5),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going23_atax6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going23_atax6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going23_atax6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going23_atax6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going23_atax6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going23_atax6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist17_i_llvm_fpga_pipeline_keep_going23_atax6_out_data_out_1(DELAY,234)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_llvm_fpga_pipeline_keep_going23_atax6_out_data_out_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist17_i_llvm_fpga_pipeline_keep_going23_atax6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going23_atax6_out_data_out);
        end
    end

    // i_llvm_fpga_push_i1_notcmp3552_push23_atax46(BLACKBOX,96)@2
    // out out_feedback_out_23@20000000
    // out out_feedback_valid_out_23@20000000
    atax_i_llvm_fpga_push_i1_notcmp3552_push23_0 thei_llvm_fpga_push_i1_notcmp3552_push23_atax46 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp3552_pop23_atax45_out_data_out),
        .in_feedback_stall_in_23(i_llvm_fpga_pop_i1_notcmp3552_pop23_atax45_out_feedback_stall_out_23),
        .in_keep_going23(redist17_i_llvm_fpga_pipeline_keep_going23_atax6_out_data_out_1_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_data_out(),
        .out_feedback_out_23(i_llvm_fpga_push_i1_notcmp3552_push23_atax46_out_feedback_out_23),
        .out_feedback_valid_out_23(i_llvm_fpga_push_i1_notcmp3552_push23_atax46_out_feedback_valid_out_23),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist31_sync_together84_aunroll_x_in_c0_eni8_7_tpl_1(DELAY,248)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_sync_together84_aunroll_x_in_c0_eni8_7_tpl_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist31_sync_together84_aunroll_x_in_c0_eni8_7_tpl_1_q <= $unsigned(in_c0_eni8_7_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp3552_pop23_atax45(BLACKBOX,85)@2
    // out out_feedback_stall_out_23@20000000
    atax_i_llvm_fpga_pop_i1_notcmp3552_pop23_0 thei_llvm_fpga_pop_i1_notcmp3552_pop23_atax45 (
        .in_data_in(redist31_sync_together84_aunroll_x_in_c0_eni8_7_tpl_1_q),
        .in_dir(redist23_sync_together84_aunroll_x_in_c0_eni8_1_tpl_1_q),
        .in_feedback_in_23(i_llvm_fpga_push_i1_notcmp3552_push23_atax46_out_feedback_out_23),
        .in_feedback_valid_in_23(i_llvm_fpga_push_i1_notcmp3552_push23_atax46_out_feedback_valid_out_23),
        .in_predicate(GND_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp3552_pop23_atax45_out_data_out),
        .out_feedback_stall_out_23(i_llvm_fpga_pop_i1_notcmp3552_pop23_atax45_out_feedback_stall_out_23),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist13_i_llvm_fpga_pop_i1_notcmp3552_pop23_atax45_out_data_out_4(DELAY,230)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_llvm_fpga_pop_i1_notcmp3552_pop23_atax45_out_data_out_4_delay_0 <= '0;
            redist13_i_llvm_fpga_pop_i1_notcmp3552_pop23_atax45_out_data_out_4_delay_1 <= '0;
            redist13_i_llvm_fpga_pop_i1_notcmp3552_pop23_atax45_out_data_out_4_delay_2 <= '0;
            redist13_i_llvm_fpga_pop_i1_notcmp3552_pop23_atax45_out_data_out_4_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist13_i_llvm_fpga_pop_i1_notcmp3552_pop23_atax45_out_data_out_4_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_notcmp3552_pop23_atax45_out_data_out);
            redist13_i_llvm_fpga_pop_i1_notcmp3552_pop23_atax45_out_data_out_4_delay_1 <= redist13_i_llvm_fpga_pop_i1_notcmp3552_pop23_atax45_out_data_out_4_delay_0;
            redist13_i_llvm_fpga_pop_i1_notcmp3552_pop23_atax45_out_data_out_4_delay_2 <= redist13_i_llvm_fpga_pop_i1_notcmp3552_pop23_atax45_out_data_out_4_delay_1;
            redist13_i_llvm_fpga_pop_i1_notcmp3552_pop23_atax45_out_data_out_4_q <= redist13_i_llvm_fpga_pop_i1_notcmp3552_pop23_atax45_out_data_out_4_delay_2;
        end
    end

    // valid_fanout_reg16(REG,142)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg16_q <= $unsigned(redist34_sync_together84_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg17(REG,143)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg17_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg17_q <= $unsigned(redist34_sync_together84_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist18_i_llvm_fpga_pipeline_keep_going23_atax6_out_data_out_2(DELAY,235)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_llvm_fpga_pipeline_keep_going23_atax6_out_data_out_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist18_i_llvm_fpga_pipeline_keep_going23_atax6_out_data_out_2_q <= $unsigned(redist17_i_llvm_fpga_pipeline_keep_going23_atax6_out_data_out_1_q);
        end
    end

    // redist19_i_llvm_fpga_pipeline_keep_going23_atax6_out_data_out_3(DELAY,236)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_llvm_fpga_pipeline_keep_going23_atax6_out_data_out_3_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist19_i_llvm_fpga_pipeline_keep_going23_atax6_out_data_out_3_q <= $unsigned(redist18_i_llvm_fpga_pipeline_keep_going23_atax6_out_data_out_2_q);
        end
    end

    // i_llvm_fpga_push_i1_exitcond1250_push22_atax44(BLACKBOX,92)@4
    // out out_feedback_out_22@20000000
    // out out_feedback_valid_out_22@20000000
    atax_i_llvm_fpga_push_i1_exitcond1250_push22_0 thei_llvm_fpga_push_i1_exitcond1250_push22_atax44 (
        .in_data_in(i_llvm_fpga_pop_i1_exitcond1250_pop22_atax43_out_data_out),
        .in_feedback_stall_in_22(i_llvm_fpga_pop_i1_exitcond1250_pop22_atax43_out_feedback_stall_out_22),
        .in_keep_going23(redist19_i_llvm_fpga_pipeline_keep_going23_atax6_out_data_out_3_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(),
        .out_feedback_out_22(i_llvm_fpga_push_i1_exitcond1250_push22_atax44_out_feedback_out_22),
        .out_feedback_valid_out_22(i_llvm_fpga_push_i1_exitcond1250_push22_atax44_out_feedback_valid_out_22),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist30_sync_together84_aunroll_x_in_c0_eni8_6_tpl_3(DELAY,247)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_sync_together84_aunroll_x_in_c0_eni8_6_tpl_3_delay_0 <= '0;
            redist30_sync_together84_aunroll_x_in_c0_eni8_6_tpl_3_delay_1 <= '0;
            redist30_sync_together84_aunroll_x_in_c0_eni8_6_tpl_3_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist30_sync_together84_aunroll_x_in_c0_eni8_6_tpl_3_delay_0 <= $unsigned(in_c0_eni8_6_tpl);
            redist30_sync_together84_aunroll_x_in_c0_eni8_6_tpl_3_delay_1 <= redist30_sync_together84_aunroll_x_in_c0_eni8_6_tpl_3_delay_0;
            redist30_sync_together84_aunroll_x_in_c0_eni8_6_tpl_3_q <= redist30_sync_together84_aunroll_x_in_c0_eni8_6_tpl_3_delay_1;
        end
    end

    // i_llvm_fpga_pop_i1_exitcond1250_pop22_atax43(BLACKBOX,82)@4
    // out out_feedback_stall_out_22@20000000
    atax_i_llvm_fpga_pop_i1_exitcond1250_pop22_0 thei_llvm_fpga_pop_i1_exitcond1250_pop22_atax43 (
        .in_data_in(redist30_sync_together84_aunroll_x_in_c0_eni8_6_tpl_3_q),
        .in_dir(redist24_sync_together84_aunroll_x_in_c0_eni8_1_tpl_3_q),
        .in_feedback_in_22(i_llvm_fpga_push_i1_exitcond1250_push22_atax44_out_feedback_out_22),
        .in_feedback_valid_in_22(i_llvm_fpga_push_i1_exitcond1250_push22_atax44_out_feedback_valid_out_22),
        .in_predicate(GND_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond1250_pop22_atax43_out_data_out),
        .out_feedback_stall_out_22(i_llvm_fpga_pop_i1_exitcond1250_pop22_atax43_out_feedback_stall_out_22),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist16_i_llvm_fpga_pop_i1_exitcond1250_pop22_atax43_out_data_out_2(DELAY,233)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_llvm_fpga_pop_i1_exitcond1250_pop22_atax43_out_data_out_2_delay_0 <= '0;
            redist16_i_llvm_fpga_pop_i1_exitcond1250_pop22_atax43_out_data_out_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist16_i_llvm_fpga_pop_i1_exitcond1250_pop22_atax43_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_exitcond1250_pop22_atax43_out_data_out);
            redist16_i_llvm_fpga_pop_i1_exitcond1250_pop22_atax43_out_data_out_2_q <= redist16_i_llvm_fpga_pop_i1_exitcond1250_pop22_atax43_out_data_out_2_delay_0;
        end
    end

    // valid_fanout_reg14(REG,140)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg14_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg15(REG,141)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg15_q <= $unsigned(redist33_sync_together84_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_p1025i32_mptr_bitcast_index8845_push19_atax42(BLACKBOX,103)@3
    // out out_feedback_out_19@20000000
    // out out_feedback_valid_out_19@20000000
    atax_i_llvm_fpga_push_p1025i32_mptr_bitcast_index8845_push19_0 thei_llvm_fpga_push_p1025i32_mptr_bitcast_index8845_push19_atax42 (
        .in_data_in(redist7_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8845_pop19_atax41_out_data_out_1_q),
        .in_feedback_stall_in_19(i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8845_pop19_atax41_out_feedback_stall_out_19),
        .in_keep_going23(redist18_i_llvm_fpga_pipeline_keep_going23_atax6_out_data_out_2_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(),
        .out_feedback_out_19(i_llvm_fpga_push_p1025i32_mptr_bitcast_index8845_push19_atax42_out_feedback_out_19),
        .out_feedback_valid_out_19(i_llvm_fpga_push_p1025i32_mptr_bitcast_index8845_push19_atax42_out_feedback_valid_out_19),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist29_sync_together84_aunroll_x_in_c0_eni8_5_tpl_1(DELAY,246)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_sync_together84_aunroll_x_in_c0_eni8_5_tpl_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist29_sync_together84_aunroll_x_in_c0_eni8_5_tpl_1_q <= $unsigned(in_c0_eni8_5_tpl);
        end
    end

    // i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8845_pop19_atax41(BLACKBOX,91)@2
    // out out_feedback_stall_out_19@20000000
    atax_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8845_pop19_0 thei_llvm_fpga_pop_p1025i32_mptr_bitcast_index8845_pop19_atax41 (
        .in_data_in(redist29_sync_together84_aunroll_x_in_c0_eni8_5_tpl_1_q),
        .in_dir(redist23_sync_together84_aunroll_x_in_c0_eni8_1_tpl_1_q),
        .in_feedback_in_19(i_llvm_fpga_push_p1025i32_mptr_bitcast_index8845_push19_atax42_out_feedback_out_19),
        .in_feedback_valid_in_19(i_llvm_fpga_push_p1025i32_mptr_bitcast_index8845_push19_atax42_out_feedback_valid_out_19),
        .in_predicate(GND_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8845_pop19_atax41_out_data_out),
        .out_feedback_stall_out_19(i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8845_pop19_atax41_out_feedback_stall_out_19),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8845_pop19_atax41_out_data_out_1(DELAY,224)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8845_pop19_atax41_out_data_out_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist7_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8845_pop19_atax41_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8845_pop19_atax41_out_data_out);
        end
    end

    // redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8845_pop19_atax41_out_data_out_4_inputreg0(DELAY,277)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8845_pop19_atax41_out_data_out_4_inputreg0_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8845_pop19_atax41_out_data_out_4_inputreg0_q <= $unsigned(redist7_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8845_pop19_atax41_out_data_out_1_q);
        end
    end

    // redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8845_pop19_atax41_out_data_out_4(DELAY,225)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8845_pop19_atax41_out_data_out_4_delay_0 <= '0;
            redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8845_pop19_atax41_out_data_out_4_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8845_pop19_atax41_out_data_out_4_delay_0 <= $unsigned(redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8845_pop19_atax41_out_data_out_4_inputreg0_q);
            redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8845_pop19_atax41_out_data_out_4_q <= redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8845_pop19_atax41_out_data_out_4_delay_0;
        end
    end

    // i_masked32_atax40(LOGICAL,104)@2 + 1
    assign i_masked32_atax40_qi = i_notcmp19_atax33_q & i_first_cleanup28_atax3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked32_atax40_delay ( .xin(i_masked32_atax40_qi), .xout(i_masked32_atax40_q), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );

    // redist6_i_masked32_atax40_q_4(DELAY,223)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_masked32_atax40_q_4_delay_0 <= '0;
            redist6_i_masked32_atax40_q_4_delay_1 <= '0;
            redist6_i_masked32_atax40_q_4_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist6_i_masked32_atax40_q_4_delay_0 <= $unsigned(i_masked32_atax40_q);
            redist6_i_masked32_atax40_q_4_delay_1 <= redist6_i_masked32_atax40_q_4_delay_0;
            redist6_i_masked32_atax40_q_4_q <= redist6_i_masked32_atax40_q_4_delay_1;
        end
    end

    // c_i32_052(CONSTANT,62)
    assign c_i32_052_q = $unsigned(32'b00000000000000000000000000000000);

    // i_mptr_bitcast_index78_atax0_add_x_BitSelect_for_b_tessel0_2(BITSELECT,198)
    assign i_mptr_bitcast_index78_atax0_add_x_BitSelect_for_b_tessel0_2_b = c_i32_052_q[25:0];

    // valid_fanout_reg5(REG,131)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg5_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg13(REG,139)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg13_q <= $unsigned(in_i_valid);
        end
    end

    // c_i32_153(CONSTANT,63)
    assign c_i32_153_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_atax28(ADD,77)@2
    assign i_inc_atax28_a = {1'b0, i_llvm_fpga_pop_i32_j_073_pop16_atax14_out_data_out};
    assign i_inc_atax28_b = {1'b0, c_i32_153_q};
    assign i_inc_atax28_o = $unsigned(i_inc_atax28_a) + $unsigned(i_inc_atax28_b);
    assign i_inc_atax28_q = i_inc_atax28_o[32:0];

    // bgTrunc_i_inc_atax28_sel_x(BITSELECT,4)@2
    assign bgTrunc_i_inc_atax28_sel_x_b = i_inc_atax28_q[31:0];

    // i_llvm_fpga_push_i32_j_073_push16_atax29(BLACKBOX,100)@2
    // out out_feedback_out_16@20000000
    // out out_feedback_valid_out_16@20000000
    atax_i_llvm_fpga_push_i32_j_073_push16_0 thei_llvm_fpga_push_i32_j_073_push16_atax29 (
        .in_data_in(bgTrunc_i_inc_atax28_sel_x_b),
        .in_feedback_stall_in_16(i_llvm_fpga_pop_i32_j_073_pop16_atax14_out_feedback_stall_out_16),
        .in_keep_going23(redist17_i_llvm_fpga_pipeline_keep_going23_atax6_out_data_out_1_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(),
        .out_feedback_out_16(i_llvm_fpga_push_i32_j_073_push16_atax29_out_feedback_out_16),
        .out_feedback_valid_out_16(i_llvm_fpga_push_i32_j_073_push16_atax29_out_feedback_valid_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_j_073_pop16_atax14(BLACKBOX,88)@2
    // out out_feedback_stall_out_16@20000000
    atax_i_llvm_fpga_pop_i32_j_073_pop16_0 thei_llvm_fpga_pop_i32_j_073_pop16_atax14 (
        .in_data_in(c_i32_052_q),
        .in_dir(redist23_sync_together84_aunroll_x_in_c0_eni8_1_tpl_1_q),
        .in_feedback_in_16(i_llvm_fpga_push_i32_j_073_push16_atax29_out_feedback_out_16),
        .in_feedback_valid_in_16(i_llvm_fpga_push_i32_j_073_push16_atax29_out_feedback_valid_out_16),
        .in_predicate(GND_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i32_j_073_pop16_atax14_out_data_out),
        .out_feedback_stall_out_16(i_llvm_fpga_pop_i32_j_073_pop16_atax14_out_feedback_stall_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist11_i_llvm_fpga_pop_i32_j_073_pop16_atax14_out_data_out_1(DELAY,228)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_llvm_fpga_pop_i32_j_073_pop16_atax14_out_data_out_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist11_i_llvm_fpga_pop_i32_j_073_pop16_atax14_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_j_073_pop16_atax14_out_data_out);
        end
    end

    // redist12_i_llvm_fpga_pop_i32_j_073_pop16_atax14_out_data_out_2(DELAY,229)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_llvm_fpga_pop_i32_j_073_pop16_atax14_out_data_out_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist12_i_llvm_fpga_pop_i32_j_073_pop16_atax14_out_data_out_2_q <= $unsigned(redist11_i_llvm_fpga_pop_i32_j_073_pop16_atax14_out_data_out_1_q);
        end
    end

    // i_mptr_bitcast_index78_atax0_c_i2_01_x(CONSTANT,39)
    assign i_mptr_bitcast_index78_atax0_c_i2_01_x_q = $unsigned(2'b00);

    // i_mptr_bitcast_index80_atax0_add_x_BitSelect_for_b_BitJoin_for_b(BITJOIN,211)@4
    assign i_mptr_bitcast_index80_atax0_add_x_BitSelect_for_b_BitJoin_for_b_q = {i_mptr_bitcast_index78_atax0_add_x_BitSelect_for_b_tessel0_2_b, redist12_i_llvm_fpga_pop_i32_j_073_pop16_atax14_out_data_out_2_q, i_mptr_bitcast_index78_atax0_c_i2_01_x_q};

    // valid_fanout_reg12(REG,138)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg12_q <= $unsigned(redist34_sync_together84_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast799117_atax26(BLACKBOX,79)@4
    atax_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast799117_0 thei_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast799117_atax26 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast799117_atax26_out_dest_data_out_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mptr_bitcast_index80_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,215)@4
    assign i_mptr_bitcast_index80_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b = $unsigned(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast799117_atax26_out_dest_data_out_2_0[59:0]);
    assign i_mptr_bitcast_index80_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c = $unsigned(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast799117_atax26_out_dest_data_out_2_0[63:60]);

    // i_mptr_bitcast_index80_atax0_add_x_p1_of_2(ADD,188)@4 + 1
    assign i_mptr_bitcast_index80_atax0_add_x_p1_of_2_a = {1'b0, i_mptr_bitcast_index80_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b};
    assign i_mptr_bitcast_index80_atax0_add_x_p1_of_2_b = {1'b0, i_mptr_bitcast_index80_atax0_add_x_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index80_atax0_add_x_p1_of_2_o <= 61'b0;
        end
        else if (in_enable == 1'b1)
        begin
            i_mptr_bitcast_index80_atax0_add_x_p1_of_2_o <= $unsigned(i_mptr_bitcast_index80_atax0_add_x_p1_of_2_a) + $unsigned(i_mptr_bitcast_index80_atax0_add_x_p1_of_2_b);
        end
    end
    assign i_mptr_bitcast_index80_atax0_add_x_p1_of_2_c[0] = i_mptr_bitcast_index80_atax0_add_x_p1_of_2_o[60];
    assign i_mptr_bitcast_index80_atax0_add_x_p1_of_2_q = i_mptr_bitcast_index80_atax0_add_x_p1_of_2_o[59:0];

    // i_mptr_bitcast_index78_atax0_add_x_BitSelect_for_b_tessel1_0(BITSELECT,200)
    assign i_mptr_bitcast_index78_atax0_add_x_BitSelect_for_b_tessel1_0_b = c_i32_052_q[29:26];

    // i_mptr_bitcast_index78_atax0_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,202)@5
    assign i_mptr_bitcast_index78_atax0_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_mptr_bitcast_index78_atax0_add_x_BitSelect_for_b_tessel1_0_b};

    // redist1_i_mptr_bitcast_index80_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1(DELAY,218)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_mptr_bitcast_index80_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist1_i_mptr_bitcast_index80_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q <= $unsigned(i_mptr_bitcast_index80_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c);
        end
    end

    // i_mptr_bitcast_index80_atax0_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,207)@5
    assign i_mptr_bitcast_index80_atax0_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist1_i_mptr_bitcast_index80_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q};

    // i_mptr_bitcast_index80_atax0_add_x_p2_of_2(ADD,189)@5 + 1
    assign i_mptr_bitcast_index80_atax0_add_x_p2_of_2_cin = i_mptr_bitcast_index80_atax0_add_x_p1_of_2_c;
    assign i_mptr_bitcast_index80_atax0_add_x_p2_of_2_a = { {1'b0, i_mptr_bitcast_index80_atax0_add_x_BitSelect_for_a_BitJoin_for_c_q}, 1'b1 };
    assign i_mptr_bitcast_index80_atax0_add_x_p2_of_2_b = { {1'b0, i_mptr_bitcast_index78_atax0_add_x_BitSelect_for_b_BitJoin_for_c_q}, i_mptr_bitcast_index80_atax0_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index80_atax0_add_x_p2_of_2_o <= 7'b0;
        end
        else if (in_enable == 1'b1)
        begin
            i_mptr_bitcast_index80_atax0_add_x_p2_of_2_o <= $unsigned(i_mptr_bitcast_index80_atax0_add_x_p2_of_2_a) + $unsigned(i_mptr_bitcast_index80_atax0_add_x_p2_of_2_b);
        end
    end
    assign i_mptr_bitcast_index80_atax0_add_x_p2_of_2_q = i_mptr_bitcast_index80_atax0_add_x_p2_of_2_o[5:1];

    // redist3_i_mptr_bitcast_index80_atax0_add_x_p1_of_2_q_1(DELAY,220)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_mptr_bitcast_index80_atax0_add_x_p1_of_2_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist3_i_mptr_bitcast_index80_atax0_add_x_p1_of_2_q_1_q <= $unsigned(i_mptr_bitcast_index80_atax0_add_x_p1_of_2_q);
        end
    end

    // i_mptr_bitcast_index80_atax0_add_x_BitJoin_for_q(BITJOIN,190)@6
    assign i_mptr_bitcast_index80_atax0_add_x_BitJoin_for_q_q = {i_mptr_bitcast_index80_atax0_add_x_p2_of_2_q, redist3_i_mptr_bitcast_index80_atax0_add_x_p1_of_2_q_1_q};

    // i_mptr_bitcast_index80_atax0_dupName_0_trunc_sel_x(BITSELECT,42)@6
    assign i_mptr_bitcast_index80_atax0_dupName_0_trunc_sel_x_b = i_mptr_bitcast_index80_atax0_add_x_BitJoin_for_q_q[63:0];

    // valid_fanout_reg8(REG,134)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg8_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg9(REG,135)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg9_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi_pop1247_push20_atax21(BLACKBOX,95)@2
    // out out_feedback_out_20@20000000
    // out out_feedback_valid_out_20@20000000
    atax_i_llvm_fpga_push_i1_memdep_phi_pop1247_push20_0 thei_llvm_fpga_push_i1_memdep_phi_pop1247_push20_atax21 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi_pop1247_pop20_atax20_out_data_out),
        .in_feedback_stall_in_20(i_llvm_fpga_pop_i1_memdep_phi_pop1247_pop20_atax20_out_feedback_stall_out_20),
        .in_keep_going23(redist17_i_llvm_fpga_pipeline_keep_going23_atax6_out_data_out_1_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(),
        .out_feedback_out_20(i_llvm_fpga_push_i1_memdep_phi_pop1247_push20_atax21_out_feedback_out_20),
        .out_feedback_valid_out_20(i_llvm_fpga_push_i1_memdep_phi_pop1247_push20_atax21_out_feedback_valid_out_20),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist27_sync_together84_aunroll_x_in_c0_eni8_3_tpl_1(DELAY,244)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_sync_together84_aunroll_x_in_c0_eni8_3_tpl_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist27_sync_together84_aunroll_x_in_c0_eni8_3_tpl_1_q <= $unsigned(in_c0_eni8_3_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi_pop1247_pop20_atax20(BLACKBOX,84)@2
    // out out_feedback_stall_out_20@20000000
    atax_i_llvm_fpga_pop_i1_memdep_phi_pop1247_pop20_0 thei_llvm_fpga_pop_i1_memdep_phi_pop1247_pop20_atax20 (
        .in_data_in(redist27_sync_together84_aunroll_x_in_c0_eni8_3_tpl_1_q),
        .in_dir(redist23_sync_together84_aunroll_x_in_c0_eni8_1_tpl_1_q),
        .in_feedback_in_20(i_llvm_fpga_push_i1_memdep_phi_pop1247_push20_atax21_out_feedback_out_20),
        .in_feedback_valid_in_20(i_llvm_fpga_push_i1_memdep_phi_pop1247_push20_atax21_out_feedback_valid_out_20),
        .in_predicate(GND_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop1247_pop20_atax20_out_data_out),
        .out_feedback_stall_out_20(i_llvm_fpga_pop_i1_memdep_phi_pop1247_pop20_atax20_out_feedback_stall_out_20),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist14_i_llvm_fpga_pop_i1_memdep_phi_pop1247_pop20_atax20_out_data_out_4(DELAY,231)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_llvm_fpga_pop_i1_memdep_phi_pop1247_pop20_atax20_out_data_out_4_delay_0 <= '0;
            redist14_i_llvm_fpga_pop_i1_memdep_phi_pop1247_pop20_atax20_out_data_out_4_delay_1 <= '0;
            redist14_i_llvm_fpga_pop_i1_memdep_phi_pop1247_pop20_atax20_out_data_out_4_delay_2 <= '0;
            redist14_i_llvm_fpga_pop_i1_memdep_phi_pop1247_pop20_atax20_out_data_out_4_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist14_i_llvm_fpga_pop_i1_memdep_phi_pop1247_pop20_atax20_out_data_out_4_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi_pop1247_pop20_atax20_out_data_out);
            redist14_i_llvm_fpga_pop_i1_memdep_phi_pop1247_pop20_atax20_out_data_out_4_delay_1 <= redist14_i_llvm_fpga_pop_i1_memdep_phi_pop1247_pop20_atax20_out_data_out_4_delay_0;
            redist14_i_llvm_fpga_pop_i1_memdep_phi_pop1247_pop20_atax20_out_data_out_4_delay_2 <= redist14_i_llvm_fpga_pop_i1_memdep_phi_pop1247_pop20_atax20_out_data_out_4_delay_1;
            redist14_i_llvm_fpga_pop_i1_memdep_phi_pop1247_pop20_atax20_out_data_out_4_q <= redist14_i_llvm_fpga_pop_i1_memdep_phi_pop1247_pop20_atax20_out_data_out_4_delay_2;
        end
    end

    // i_memdep_phi3_or_atax24(LOGICAL,105)@6
    assign i_memdep_phi3_or_atax24_q = redist14_i_llvm_fpga_pop_i1_memdep_phi_pop1247_pop20_atax20_out_data_out_4_q | redist15_i_llvm_fpga_pop_i1_memdep_phi3_pop1354_pop24_atax22_out_data_out_2_q;

    // valid_fanout_reg10(REG,136)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg10_q <= $unsigned(redist34_sync_together84_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg11(REG,137)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg11_q <= $unsigned(redist34_sync_together84_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi3_pop1354_push24_atax23(BLACKBOX,94)@4
    // out out_feedback_out_24@20000000
    // out out_feedback_valid_out_24@20000000
    atax_i_llvm_fpga_push_i1_memdep_phi3_pop1354_push24_0 thei_llvm_fpga_push_i1_memdep_phi3_pop1354_push24_atax23 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi3_pop1354_pop24_atax22_out_data_out),
        .in_feedback_stall_in_24(i_llvm_fpga_pop_i1_memdep_phi3_pop1354_pop24_atax22_out_feedback_stall_out_24),
        .in_keep_going23(redist19_i_llvm_fpga_pipeline_keep_going23_atax6_out_data_out_3_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(),
        .out_feedback_out_24(i_llvm_fpga_push_i1_memdep_phi3_pop1354_push24_atax23_out_feedback_out_24),
        .out_feedback_valid_out_24(i_llvm_fpga_push_i1_memdep_phi3_pop1354_push24_atax23_out_feedback_valid_out_24),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist28_sync_together84_aunroll_x_in_c0_eni8_4_tpl_3(DELAY,245)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_sync_together84_aunroll_x_in_c0_eni8_4_tpl_3_delay_0 <= '0;
            redist28_sync_together84_aunroll_x_in_c0_eni8_4_tpl_3_delay_1 <= '0;
            redist28_sync_together84_aunroll_x_in_c0_eni8_4_tpl_3_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist28_sync_together84_aunroll_x_in_c0_eni8_4_tpl_3_delay_0 <= $unsigned(in_c0_eni8_4_tpl);
            redist28_sync_together84_aunroll_x_in_c0_eni8_4_tpl_3_delay_1 <= redist28_sync_together84_aunroll_x_in_c0_eni8_4_tpl_3_delay_0;
            redist28_sync_together84_aunroll_x_in_c0_eni8_4_tpl_3_q <= redist28_sync_together84_aunroll_x_in_c0_eni8_4_tpl_3_delay_1;
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi3_pop1354_pop24_atax22(BLACKBOX,83)@4
    // out out_feedback_stall_out_24@20000000
    atax_i_llvm_fpga_pop_i1_memdep_phi3_pop1354_pop24_0 thei_llvm_fpga_pop_i1_memdep_phi3_pop1354_pop24_atax22 (
        .in_data_in(redist28_sync_together84_aunroll_x_in_c0_eni8_4_tpl_3_q),
        .in_dir(redist24_sync_together84_aunroll_x_in_c0_eni8_1_tpl_3_q),
        .in_feedback_in_24(i_llvm_fpga_push_i1_memdep_phi3_pop1354_push24_atax23_out_feedback_out_24),
        .in_feedback_valid_in_24(i_llvm_fpga_push_i1_memdep_phi3_pop1354_push24_atax23_out_feedback_valid_out_24),
        .in_predicate(GND_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi3_pop1354_pop24_atax22_out_data_out),
        .out_feedback_stall_out_24(i_llvm_fpga_pop_i1_memdep_phi3_pop1354_pop24_atax22_out_feedback_stall_out_24),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist15_i_llvm_fpga_pop_i1_memdep_phi3_pop1354_pop24_atax22_out_data_out_2(DELAY,232)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_llvm_fpga_pop_i1_memdep_phi3_pop1354_pop24_atax22_out_data_out_2_delay_0 <= '0;
            redist15_i_llvm_fpga_pop_i1_memdep_phi3_pop1354_pop24_atax22_out_data_out_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist15_i_llvm_fpga_pop_i1_memdep_phi3_pop1354_pop24_atax22_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi3_pop1354_pop24_atax22_out_data_out);
            redist15_i_llvm_fpga_pop_i1_memdep_phi3_pop1354_pop24_atax22_out_data_out_2_q <= redist15_i_llvm_fpga_pop_i1_memdep_phi3_pop1354_pop24_atax22_out_data_out_2_delay_0;
        end
    end

    // valid_fanout_reg6(REG,132)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg6_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg7(REG,133)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg7_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_mul_add1448_push21_atax16(BLACKBOX,101)@2
    // out out_feedback_out_21@20000000
    // out out_feedback_valid_out_21@20000000
    atax_i_llvm_fpga_push_i32_mul_add1448_push21_0 thei_llvm_fpga_push_i32_mul_add1448_push21_atax16 (
        .in_data_in(i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out),
        .in_feedback_stall_in_21(i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_feedback_stall_out_21),
        .in_keep_going23(redist17_i_llvm_fpga_pipeline_keep_going23_atax6_out_data_out_1_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(),
        .out_feedback_out_21(i_llvm_fpga_push_i32_mul_add1448_push21_atax16_out_feedback_out_21),
        .out_feedback_valid_out_21(i_llvm_fpga_push_i32_mul_add1448_push21_atax16_out_feedback_valid_out_21),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist26_sync_together84_aunroll_x_in_c0_eni8_2_tpl_1(DELAY,243)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_sync_together84_aunroll_x_in_c0_eni8_2_tpl_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist26_sync_together84_aunroll_x_in_c0_eni8_2_tpl_1_q <= $unsigned(in_c0_eni8_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15(BLACKBOX,89)@2
    // out out_feedback_stall_out_21@20000000
    atax_i_llvm_fpga_pop_i32_mul_add1448_pop21_0 thei_llvm_fpga_pop_i32_mul_add1448_pop21_atax15 (
        .in_data_in(redist26_sync_together84_aunroll_x_in_c0_eni8_2_tpl_1_q),
        .in_dir(redist23_sync_together84_aunroll_x_in_c0_eni8_1_tpl_1_q),
        .in_feedback_in_21(i_llvm_fpga_push_i32_mul_add1448_push21_atax16_out_feedback_out_21),
        .in_feedback_valid_in_21(i_llvm_fpga_push_i32_mul_add1448_push21_atax16_out_feedback_valid_out_21),
        .in_predicate(GND_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out),
        .out_feedback_stall_out_21(i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_feedback_stall_out_21),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist9_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_1(DELAY,226)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist9_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out);
        end
    end

    // i_add_atax17(ADD,69)@3
    assign i_add_atax17_a = {1'b0, redist11_i_llvm_fpga_pop_i32_j_073_pop16_atax14_out_data_out_1_q};
    assign i_add_atax17_b = {1'b0, redist9_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_1_q};
    assign i_add_atax17_o = $unsigned(i_add_atax17_a) + $unsigned(i_add_atax17_b);
    assign i_add_atax17_q = i_add_atax17_o[32:0];

    // i_mptr_bitcast_index78_atax0_add_x_BitSelect_for_b_tessel0_1(BITSELECT,197)@3
    assign i_mptr_bitcast_index78_atax0_add_x_BitSelect_for_b_tessel0_1_b = $unsigned(i_add_atax17_q[31:0]);

    // redist2_i_mptr_bitcast_index78_atax0_add_x_BitSelect_for_b_tessel0_1_b_1(DELAY,219)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_mptr_bitcast_index78_atax0_add_x_BitSelect_for_b_tessel0_1_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist2_i_mptr_bitcast_index78_atax0_add_x_BitSelect_for_b_tessel0_1_b_1_q <= $unsigned(i_mptr_bitcast_index78_atax0_add_x_BitSelect_for_b_tessel0_1_b);
        end
    end

    // i_mptr_bitcast_index78_atax0_add_x_BitSelect_for_b_BitJoin_for_b(BITJOIN,199)@4
    assign i_mptr_bitcast_index78_atax0_add_x_BitSelect_for_b_BitJoin_for_b_q = {i_mptr_bitcast_index78_atax0_add_x_BitSelect_for_b_tessel0_2_b, redist2_i_mptr_bitcast_index78_atax0_add_x_BitSelect_for_b_tessel0_1_b_1_q, i_mptr_bitcast_index78_atax0_c_i2_01_x_q};

    // valid_fanout_reg4(REG,130)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg4_q <= $unsigned(redist34_sync_together84_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a9615_atax12(BLACKBOX,80)@4
    atax_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a9615_0 thei_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a9615_atax12 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a9615_atax12_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mptr_bitcast_index78_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,216)@4
    assign i_mptr_bitcast_index78_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b = $unsigned(i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a9615_atax12_out_dest_data_out_0_0[59:0]);
    assign i_mptr_bitcast_index78_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c = $unsigned(i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a9615_atax12_out_dest_data_out_0_0[63:60]);

    // i_mptr_bitcast_index78_atax0_add_x_p1_of_2(ADD,179)@4 + 1
    assign i_mptr_bitcast_index78_atax0_add_x_p1_of_2_a = {1'b0, i_mptr_bitcast_index78_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b};
    assign i_mptr_bitcast_index78_atax0_add_x_p1_of_2_b = {1'b0, i_mptr_bitcast_index78_atax0_add_x_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index78_atax0_add_x_p1_of_2_o <= 61'b0;
        end
        else if (in_enable == 1'b1)
        begin
            i_mptr_bitcast_index78_atax0_add_x_p1_of_2_o <= $unsigned(i_mptr_bitcast_index78_atax0_add_x_p1_of_2_a) + $unsigned(i_mptr_bitcast_index78_atax0_add_x_p1_of_2_b);
        end
    end
    assign i_mptr_bitcast_index78_atax0_add_x_p1_of_2_c[0] = i_mptr_bitcast_index78_atax0_add_x_p1_of_2_o[60];
    assign i_mptr_bitcast_index78_atax0_add_x_p1_of_2_q = i_mptr_bitcast_index78_atax0_add_x_p1_of_2_o[59:0];

    // redist0_i_mptr_bitcast_index78_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1(DELAY,217)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_mptr_bitcast_index78_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist0_i_mptr_bitcast_index78_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q <= $unsigned(i_mptr_bitcast_index78_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c);
        end
    end

    // i_mptr_bitcast_index78_atax0_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,195)@5
    assign i_mptr_bitcast_index78_atax0_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist0_i_mptr_bitcast_index78_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q};

    // i_mptr_bitcast_index78_atax0_add_x_p2_of_2(ADD,180)@5 + 1
    assign i_mptr_bitcast_index78_atax0_add_x_p2_of_2_cin = i_mptr_bitcast_index78_atax0_add_x_p1_of_2_c;
    assign i_mptr_bitcast_index78_atax0_add_x_p2_of_2_a = { {1'b0, i_mptr_bitcast_index78_atax0_add_x_BitSelect_for_a_BitJoin_for_c_q}, 1'b1 };
    assign i_mptr_bitcast_index78_atax0_add_x_p2_of_2_b = { {1'b0, i_mptr_bitcast_index78_atax0_add_x_BitSelect_for_b_BitJoin_for_c_q}, i_mptr_bitcast_index78_atax0_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index78_atax0_add_x_p2_of_2_o <= 7'b0;
        end
        else if (in_enable == 1'b1)
        begin
            i_mptr_bitcast_index78_atax0_add_x_p2_of_2_o <= $unsigned(i_mptr_bitcast_index78_atax0_add_x_p2_of_2_a) + $unsigned(i_mptr_bitcast_index78_atax0_add_x_p2_of_2_b);
        end
    end
    assign i_mptr_bitcast_index78_atax0_add_x_p2_of_2_q = i_mptr_bitcast_index78_atax0_add_x_p2_of_2_o[5:1];

    // redist4_i_mptr_bitcast_index78_atax0_add_x_p1_of_2_q_1(DELAY,221)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_mptr_bitcast_index78_atax0_add_x_p1_of_2_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist4_i_mptr_bitcast_index78_atax0_add_x_p1_of_2_q_1_q <= $unsigned(i_mptr_bitcast_index78_atax0_add_x_p1_of_2_q);
        end
    end

    // i_mptr_bitcast_index78_atax0_add_x_BitJoin_for_q(BITJOIN,181)@6
    assign i_mptr_bitcast_index78_atax0_add_x_BitJoin_for_q_q = {i_mptr_bitcast_index78_atax0_add_x_p2_of_2_q, redist4_i_mptr_bitcast_index78_atax0_add_x_p1_of_2_q_1_q};

    // i_mptr_bitcast_index78_atax0_dupName_0_trunc_sel_x(BITSELECT,36)@6
    assign i_mptr_bitcast_index78_atax0_dupName_0_trunc_sel_x_b = i_mptr_bitcast_index78_atax0_add_x_BitJoin_for_q_q[63:0];

    // redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_notEnable(LOGICAL,283)
    assign redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_notEnable_q = $unsigned(~ (in_enable));

    // redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_nor(LOGICAL,284)
    assign redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_nor_q = ~ (redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_notEnable_q | redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_sticky_ena_q);

    // redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_cmpReg(REG,282)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_cmpReg_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_sticky_ena(REG,285)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_nor_q == 1'b1)
        begin
            redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_sticky_ena_q <= $unsigned(redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_cmpReg_q);
        end
    end

    // redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_enaAnd(LOGICAL,286)
    assign redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_enaAnd_q = redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_sticky_ena_q & in_enable;

    // redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_rdcnt(COUNTER,279)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_rdcnt_i <= 1'd0;
        end
        else if (in_enable == 1'b1)
        begin
            redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_rdcnt_i <= $unsigned(redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_rdcnt_q = redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_rdcnt_i[0:0];

    // redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_rdmux(MUX,280)
    assign redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_rdmux_s = in_enable;
    always @(redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_rdmux_s or redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_wraddr_q or redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_rdcnt_q)
    begin
        unique case (redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_rdmux_s)
            1'b0 : redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_rdmux_q = redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_wraddr_q;
            1'b1 : redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_rdmux_q = redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_rdcnt_q;
            default : redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_rdmux_q = 1'b0;
        endcase
    end

    // redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_wraddr(REG,281)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_wraddr_q <= $unsigned(redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_rdmux_q);
        end
    end

    // redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_mem(DUALMEM,278)
    assign redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_mem_ia = $unsigned(redist9_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_1_q);
    assign redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_mem_aa = redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_wraddr_q;
    assign redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_mem_ab = redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_rdmux_q;
    assign redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(32),
        .widthad_b(1),
        .numwords_b(2),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone V")
    ) redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_mem_dmem (
        .clocken1(redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_mem_reset0),
        .clock1(clock),
        .address_a(redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_mem_aa),
        .data_a(redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_mem_ia),
        .wren_a(in_enable[0]),
        .address_b(redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_mem_ab),
        .q_b(redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_mem_q = redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_mem_iq[31:0];

    // redist21_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a9615_atax12_out_dest_data_out_0_0_2(DELAY,238)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a9615_atax12_out_dest_data_out_0_0_2_delay_0 <= '0;
            redist21_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a9615_atax12_out_dest_data_out_0_0_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist21_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a9615_atax12_out_dest_data_out_0_0_2_delay_0 <= $unsigned(i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a9615_atax12_out_dest_data_out_0_0);
            redist21_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a9615_atax12_out_dest_data_out_0_0_2_q <= redist21_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a9615_atax12_out_dest_data_out_0_0_2_delay_0;
        end
    end

    // redist20_i_llvm_fpga_pipeline_keep_going23_atax6_out_data_out_5(DELAY,237)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_llvm_fpga_pipeline_keep_going23_atax6_out_data_out_5_delay_0 <= '0;
            redist20_i_llvm_fpga_pipeline_keep_going23_atax6_out_data_out_5_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist20_i_llvm_fpga_pipeline_keep_going23_atax6_out_data_out_5_delay_0 <= $unsigned(redist19_i_llvm_fpga_pipeline_keep_going23_atax6_out_data_out_3_q);
            redist20_i_llvm_fpga_pipeline_keep_going23_atax6_out_data_out_5_q <= redist20_i_llvm_fpga_pipeline_keep_going23_atax6_out_data_out_5_delay_0;
        end
    end

    // redist22_i_first_cleanup_xor29_atax4_q_4(DELAY,239)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_first_cleanup_xor29_atax4_q_4_delay_0 <= '0;
            redist22_i_first_cleanup_xor29_atax4_q_4_delay_1 <= '0;
            redist22_i_first_cleanup_xor29_atax4_q_4_delay_2 <= '0;
            redist22_i_first_cleanup_xor29_atax4_q_4_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist22_i_first_cleanup_xor29_atax4_q_4_delay_0 <= $unsigned(i_first_cleanup_xor29_atax4_q);
            redist22_i_first_cleanup_xor29_atax4_q_4_delay_1 <= redist22_i_first_cleanup_xor29_atax4_q_4_delay_0;
            redist22_i_first_cleanup_xor29_atax4_q_4_delay_2 <= redist22_i_first_cleanup_xor29_atax4_q_4_delay_1;
            redist22_i_first_cleanup_xor29_atax4_q_4_q <= redist22_i_first_cleanup_xor29_atax4_q_4_delay_2;
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,54)@6
    assign out_c0_exi14_0_tpl = GND_q;
    assign out_c0_exi14_1_tpl = redist22_i_first_cleanup_xor29_atax4_q_4_q;
    assign out_c0_exi14_2_tpl = redist20_i_llvm_fpga_pipeline_keep_going23_atax6_out_data_out_5_q;
    assign out_c0_exi14_3_tpl = redist21_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a9615_atax12_out_dest_data_out_0_0_2_q;
    assign out_c0_exi14_4_tpl = redist10_i_llvm_fpga_pop_i32_mul_add1448_pop21_atax15_out_data_out_4_mem_q;
    assign out_c0_exi14_5_tpl = i_mptr_bitcast_index78_atax0_dupName_0_trunc_sel_x_b;
    assign out_c0_exi14_6_tpl = redist15_i_llvm_fpga_pop_i1_memdep_phi3_pop1354_pop24_atax22_out_data_out_2_q;
    assign out_c0_exi14_7_tpl = i_memdep_phi3_or_atax24_q;
    assign out_c0_exi14_8_tpl = i_mptr_bitcast_index80_atax0_dupName_0_trunc_sel_x_b;
    assign out_c0_exi14_9_tpl = redist6_i_masked32_atax40_q_4_q;
    assign out_c0_exi14_10_tpl = redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8845_pop19_atax41_out_data_out_4_q;
    assign out_c0_exi14_11_tpl = redist16_i_llvm_fpga_pop_i1_exitcond1250_pop22_atax43_out_data_out_2_q;
    assign out_c0_exi14_12_tpl = redist13_i_llvm_fpga_pop_i1_notcmp3552_pop23_atax45_out_data_out_4_q;
    assign out_c0_exi14_13_tpl = redist25_sync_together84_aunroll_x_in_c0_eni8_1_tpl_5_q;
    assign out_c0_exi14_14_tpl = redist32_sync_together84_aunroll_x_in_c0_eni8_8_tpl_5_mem_q;
    assign out_o_valid = redist5_valid_fanout_reg0_q_2_q;
    assign out_unnamed_atax1 = GND_q;

    // ext_sig_sync_out(GPOUT,68)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going23_atax6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going23_atax6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going23_atax6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going23_atax6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,122)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going23_atax6_out_pipeline_valid_out;

endmodule
