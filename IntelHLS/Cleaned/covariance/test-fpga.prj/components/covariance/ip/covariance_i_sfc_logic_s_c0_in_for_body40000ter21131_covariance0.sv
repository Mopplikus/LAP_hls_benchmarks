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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body4_covariances_c0_enter21131_covariance0
// Created for function/kernel covariance
// SystemVerilog created on Tue Jun 13 02:07:48 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_i_sfc_logic_s_c0_in_for_body40000ter21131_covariance0 (
    input wire [63:0] in_intel_reserved_ffwd_0_0_0_tpl,
    input wire [63:0] in_intel_reserved_ffwd_0_0_1_tpl,
    output wire [0:0] out_c0_exi12_0_tpl,
    output wire [0:0] out_c0_exi12_1_tpl,
    output wire [0:0] out_c0_exi12_2_tpl,
    output wire [63:0] out_c0_exi12_3_tpl,
    output wire [31:0] out_c0_exi12_4_tpl,
    output wire [63:0] out_c0_exi12_5_tpl,
    output wire [0:0] out_c0_exi12_6_tpl,
    output wire [0:0] out_c0_exi12_7_tpl,
    output wire [31:0] out_c0_exi12_8_tpl,
    output wire [0:0] out_c0_exi12_9_tpl,
    output wire [0:0] out_c0_exi12_10_tpl,
    output wire [0:0] out_c0_exi12_11_tpl,
    output wire [31:0] out_c0_exi12_12_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_covariance0,
    input wire [0:0] in_c0_eni7_0_tpl,
    input wire [0:0] in_c0_eni7_1_tpl,
    input wire [31:0] in_c0_eni7_2_tpl,
    input wire [0:0] in_c0_eni7_3_tpl,
    input wire [31:0] in_c0_eni7_4_tpl,
    input wire [0:0] in_c0_eni7_5_tpl,
    input wire [0:0] in_c0_eni7_6_tpl,
    input wire [31:0] in_c0_eni7_7_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going57_covariance6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going57_covariance6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    output wire [63:0] out_intel_reserved_ffwd_3_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [5:0] bgTrunc_i_fpga_indvars_iv_next_covariance34_sel_x_b;
    wire [31:0] bgTrunc_i_inc_covariance24_sel_x_b;
    wire [0:0] i_first_cleanup62_covariance3_sel_x_b;
    wire [0:0] i_last_initeration58_covariance10_sel_x_b;
    wire [63:0] i_llvm_fpga_ffwd_dest_s_struct_covariance_yaxaeav_mm_host_hu_dwidth_0ca_ihc_u_awidth_0ca_2_u_latency_00_2_ihc_0_z_inputss_unnamed_covariance5_covariance12_aunroll_x_out_dest_data_out_0_0_0_tpl;
    wire [63:0] i_mptr_bitcast_index83_covariance0_dupName_0_trunc_sel_x_b;
    wire [1:0] i_mptr_bitcast_index83_covariance0_c_i2_01_x_q;
    wire [1:0] c_i2_168_q;
    wire [31:0] c_i32_070_q;
    wire [31:0] c_i32_172_q;
    wire [5:0] c_i6_175_q;
    wire [5:0] c_i6_3073_q;
    wire [32:0] i_add_covariance19_a;
    wire [32:0] i_add_covariance19_b;
    logic [32:0] i_add_covariance19_o;
    wire [32:0] i_add_covariance19_q;
    wire [1:0] i_cleanups_shl61_covariance5_vt_join_q;
    wire [0:0] i_cleanups_shl61_covariance5_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor63_covariance4_q;
    wire [6:0] i_fpga_indvars_iv_next_covariance34_a;
    wire [6:0] i_fpga_indvars_iv_next_covariance34_b;
    logic [6:0] i_fpga_indvars_iv_next_covariance34_o;
    wire [6:0] i_fpga_indvars_iv_next_covariance34_q;
    wire [32:0] i_inc_covariance24_a;
    wire [32:0] i_inc_covariance24_b;
    logic [32:0] i_inc_covariance24_o;
    wire [32:0] i_inc_covariance24_q;
    wire [63:0] i_llvm_fpga_ffwd_source_p1025i32_unnamed_covariance7_covariance36_out_intel_reserved_ffwd_3_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going57_covariance6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going57_covariance6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going57_covariance6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going57_covariance6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going57_covariance6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going57_covariance6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1089_pop34_covariance40_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1089_pop34_covariance40_out_feedback_stall_out_34;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop2095_pop37_covariance22_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop2095_pop37_covariance22_out_feedback_stall_out_37;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp6991_pop35_covariance42_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp6991_pop35_covariance42_out_feedback_stall_out_35;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups60_pop32_covariance2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups60_pop32_covariance2_out_feedback_stall_out_32;
    wire [1:0] i_llvm_fpga_pop_i2_initerations55_pop31_covariance7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations55_pop31_covariance7_out_feedback_stall_out_31;
    wire [31:0] i_llvm_fpga_pop_i32_i_075_pop29_covariance15_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_075_pop29_covariance15_out_feedback_stall_out_29;
    wire [31:0] i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_feedback_stall_out_36;
    wire [31:0] i_llvm_fpga_pop_i32_lim_ext80_pop33_covariance38_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_lim_ext80_pop33_covariance38_out_feedback_stall_out_33;
    wire [5:0] i_llvm_fpga_pop_i6_fpga_indvars_iv_pop28_covariance26_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv_pop28_covariance26_out_feedback_stall_out_28;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1089_push34_covariance41_out_feedback_out_34;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1089_push34_covariance41_out_feedback_valid_out_34;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration59_covariance11_out_feedback_out_11;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration59_covariance11_out_feedback_valid_out_11;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop2095_push37_covariance23_out_feedback_out_37;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop2095_push37_covariance23_out_feedback_valid_out_37;
    wire [0:0] i_llvm_fpga_push_i1_notcmp6991_push35_covariance43_out_feedback_out_35;
    wire [0:0] i_llvm_fpga_push_i1_notcmp6991_push35_covariance43_out_feedback_valid_out_35;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond67_covariance30_out_feedback_out_12;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond67_covariance30_out_feedback_valid_out_12;
    wire [7:0] i_llvm_fpga_push_i2_cleanups60_push32_covariance33_out_feedback_out_32;
    wire [0:0] i_llvm_fpga_push_i2_cleanups60_push32_covariance33_out_feedback_valid_out_32;
    wire [7:0] i_llvm_fpga_push_i2_initerations55_push31_covariance9_out_feedback_out_31;
    wire [0:0] i_llvm_fpga_push_i2_initerations55_push31_covariance9_out_feedback_valid_out_31;
    wire [31:0] i_llvm_fpga_push_i32_i_075_push29_covariance25_out_feedback_out_29;
    wire [0:0] i_llvm_fpga_push_i32_i_075_push29_covariance25_out_feedback_valid_out_29;
    wire [31:0] i_llvm_fpga_push_i32_j_077_pop1993_push36_covariance18_out_feedback_out_36;
    wire [0:0] i_llvm_fpga_push_i32_j_077_pop1993_push36_covariance18_out_feedback_valid_out_36;
    wire [31:0] i_llvm_fpga_push_i32_lim_ext80_push33_covariance39_out_feedback_out_33;
    wire [0:0] i_llvm_fpga_push_i32_lim_ext80_push33_covariance39_out_feedback_valid_out_33;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push28_covariance35_out_feedback_out_28;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push28_covariance35_out_feedback_valid_out_28;
    wire [0:0] i_masked66_covariance37_qi;
    reg [0:0] i_masked66_covariance37_q;
    wire [4:0] i_mul_covariance16_vt_const_4_q;
    wire [31:0] i_mul_covariance16_vt_join_q;
    wire [26:0] i_mul_covariance16_vt_select_31_b;
    wire [0:0] i_next_cleanups65_covariance32_s;
    reg [1:0] i_next_cleanups65_covariance32_q;
    wire [1:0] i_next_initerations56_covariance8_vt_join_q;
    wire [0:0] i_next_initerations56_covariance8_vt_select_0_b;
    wire [0:0] i_notcmp53_covariance29_q;
    wire [0:0] i_or64_covariance31_q;
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
    wire [0:0] leftShiftStage0Idx1Rng1_uid147_i_cleanups_shl61_covariance0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid147_i_cleanups_shl61_covariance0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid148_i_cleanups_shl61_covariance0_shift_x_q;
    wire [0:0] leftShiftStage0_uid150_i_cleanups_shl61_covariance0_shift_x_s;
    reg [1:0] leftShiftStage0_uid150_i_cleanups_shl61_covariance0_shift_x_q;
    wire [30:0] leftShiftStage0Idx1Rng1_uid155_i_mul_covariance0_shift_x_in;
    wire [30:0] leftShiftStage0Idx1Rng1_uid155_i_mul_covariance0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid156_i_mul_covariance0_shift_x_q;
    wire [0:0] leftShiftStage0_uid158_i_mul_covariance0_shift_x_s;
    reg [31:0] leftShiftStage0_uid158_i_mul_covariance0_shift_x_q;
    wire [3:0] leftShiftStage1Idx1Pad4_uid159_i_mul_covariance0_shift_x_q;
    wire [27:0] leftShiftStage1Idx1Rng4_uid160_i_mul_covariance0_shift_x_in;
    wire [27:0] leftShiftStage1Idx1Rng4_uid160_i_mul_covariance0_shift_x_b;
    wire [31:0] leftShiftStage1Idx1_uid161_i_mul_covariance0_shift_x_q;
    wire [0:0] leftShiftStage1_uid163_i_mul_covariance0_shift_x_s;
    reg [31:0] leftShiftStage1_uid163_i_mul_covariance0_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid167_i_next_initerations56_covariance0_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid169_i_next_initerations56_covariance0_shift_x_q;
    wire [0:0] rightShiftStage0_uid171_i_next_initerations56_covariance0_shift_x_s;
    reg [1:0] rightShiftStage0_uid171_i_next_initerations56_covariance0_shift_x_q;
    wire [0:0] i_exitcond_covariance27_cmp_nsign_q;
    wire [60:0] i_mptr_bitcast_index83_covariance0_add_x_p1_of_2_a;
    wire [60:0] i_mptr_bitcast_index83_covariance0_add_x_p1_of_2_b;
    logic [60:0] i_mptr_bitcast_index83_covariance0_add_x_p1_of_2_o;
    wire [0:0] i_mptr_bitcast_index83_covariance0_add_x_p1_of_2_c;
    wire [59:0] i_mptr_bitcast_index83_covariance0_add_x_p1_of_2_q;
    wire [6:0] i_mptr_bitcast_index83_covariance0_add_x_p2_of_2_a;
    wire [6:0] i_mptr_bitcast_index83_covariance0_add_x_p2_of_2_b;
    logic [6:0] i_mptr_bitcast_index83_covariance0_add_x_p2_of_2_o;
    wire [0:0] i_mptr_bitcast_index83_covariance0_add_x_p2_of_2_cin;
    wire [4:0] i_mptr_bitcast_index83_covariance0_add_x_p2_of_2_q;
    wire [64:0] i_mptr_bitcast_index83_covariance0_add_x_BitJoin_for_q_q;
    wire [4:0] i_mptr_bitcast_index83_covariance0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [31:0] i_mptr_bitcast_index83_covariance0_add_x_BitSelect_for_b_tessel0_1_b;
    wire [59:0] i_mptr_bitcast_index83_covariance0_add_x_BitSelect_for_b_BitJoin_for_b_q;
    wire [4:0] i_mptr_bitcast_index83_covariance0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [59:0] i_mptr_bitcast_index83_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    wire [3:0] i_mptr_bitcast_index83_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c;
    wire [29:0] i_mptr_bitcast_index83_covariance0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_in;
    wire [25:0] i_mptr_bitcast_index83_covariance0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_b;
    wire [3:0] i_mptr_bitcast_index83_covariance0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_c;
    reg [3:0] redist0_i_mptr_bitcast_index83_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q;
    reg [31:0] redist1_i_mptr_bitcast_index83_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1_q;
    reg [59:0] redist2_i_mptr_bitcast_index83_covariance0_add_x_p1_of_2_q_1_q;
    reg [0:0] redist3_valid_fanout_reg0_q_2_q;
    reg [0:0] redist3_valid_fanout_reg0_q_2_delay_0;
    reg [26:0] redist4_i_mul_covariance16_vt_select_31_b_1_q;
    reg [0:0] redist5_i_masked66_covariance37_q_4_q;
    reg [0:0] redist5_i_masked66_covariance37_q_4_delay_0;
    reg [0:0] redist5_i_masked66_covariance37_q_4_delay_1;
    reg [31:0] redist6_i_llvm_fpga_pop_i32_lim_ext80_pop33_covariance38_out_data_out_2_q;
    reg [31:0] redist6_i_llvm_fpga_pop_i32_lim_ext80_pop33_covariance38_out_data_out_2_delay_0;
    reg [31:0] redist7_i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_data_out_1_q;
    reg [0:0] redist9_i_llvm_fpga_pop_i1_notcmp6991_pop35_covariance42_out_data_out_4_q;
    reg [0:0] redist9_i_llvm_fpga_pop_i1_notcmp6991_pop35_covariance42_out_data_out_4_delay_0;
    reg [0:0] redist9_i_llvm_fpga_pop_i1_notcmp6991_pop35_covariance42_out_data_out_4_delay_1;
    reg [0:0] redist9_i_llvm_fpga_pop_i1_notcmp6991_pop35_covariance42_out_data_out_4_delay_2;
    reg [0:0] redist10_i_llvm_fpga_pop_i1_memdep_phi_pop2095_pop37_covariance22_out_data_out_2_q;
    reg [0:0] redist10_i_llvm_fpga_pop_i1_memdep_phi_pop2095_pop37_covariance22_out_data_out_2_delay_0;
    reg [0:0] redist11_i_llvm_fpga_pop_i1_exitcond1089_pop34_covariance40_out_data_out_2_q;
    reg [0:0] redist11_i_llvm_fpga_pop_i1_exitcond1089_pop34_covariance40_out_data_out_2_delay_0;
    reg [0:0] redist12_i_llvm_fpga_pipeline_keep_going57_covariance6_out_data_out_1_q;
    reg [0:0] redist13_i_llvm_fpga_pipeline_keep_going57_covariance6_out_data_out_3_q;
    reg [0:0] redist13_i_llvm_fpga_pipeline_keep_going57_covariance6_out_data_out_3_delay_0;
    reg [0:0] redist14_i_llvm_fpga_pipeline_keep_going57_covariance6_out_data_out_5_q;
    reg [0:0] redist14_i_llvm_fpga_pipeline_keep_going57_covariance6_out_data_out_5_delay_0;
    reg [0:0] redist15_i_first_cleanup_xor63_covariance4_q_2_q;
    reg [0:0] redist15_i_first_cleanup_xor63_covariance4_q_2_delay_0;
    reg [0:0] redist16_i_first_cleanup_xor63_covariance4_q_4_q;
    reg [0:0] redist16_i_first_cleanup_xor63_covariance4_q_4_delay_0;
    reg [0:0] redist17_sync_together100_aunroll_x_in_c0_eni7_1_tpl_1_q;
    reg [0:0] redist18_sync_together100_aunroll_x_in_c0_eni7_1_tpl_3_q;
    reg [0:0] redist18_sync_together100_aunroll_x_in_c0_eni7_1_tpl_3_delay_0;
    reg [0:0] redist19_sync_together100_aunroll_x_in_c0_eni7_1_tpl_5_q;
    reg [0:0] redist19_sync_together100_aunroll_x_in_c0_eni7_1_tpl_5_delay_0;
    reg [31:0] redist20_sync_together100_aunroll_x_in_c0_eni7_2_tpl_1_q;
    reg [0:0] redist21_sync_together100_aunroll_x_in_c0_eni7_3_tpl_3_q;
    reg [0:0] redist21_sync_together100_aunroll_x_in_c0_eni7_3_tpl_3_delay_0;
    reg [0:0] redist21_sync_together100_aunroll_x_in_c0_eni7_3_tpl_3_delay_1;
    reg [0:0] redist23_sync_together100_aunroll_x_in_c0_eni7_5_tpl_3_q;
    reg [0:0] redist23_sync_together100_aunroll_x_in_c0_eni7_5_tpl_3_delay_0;
    reg [0:0] redist23_sync_together100_aunroll_x_in_c0_eni7_5_tpl_3_delay_1;
    reg [0:0] redist24_sync_together100_aunroll_x_in_c0_eni7_6_tpl_1_q;
    reg [0:0] redist26_sync_together100_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist27_sync_together100_aunroll_x_in_i_valid_2_q;
    reg [63:0] redist28_i_llvm_fpga_ffwd_dest_s_struct_covariance_yaxaeav_mm_host_hu_dwidth_0ca_ihc_u_awidth_0ca_2_u_latency_00_2_ihc_0_z_inputss_unnamed_covariance5_covariance12_aunroll_x_out_dest_data_out_0_0_0_tpl_2_q;
    reg [63:0] redist28_i_llvm_fpga_ffwd_dest_s_struct_covariance_yaxaeav_mm_host_hu_dwidth_0ca_ihc_u_awidth_0ca_2_u_latency_00_2_ihc_0_z_inputss_unnamed_covariance5_covariance12_aunroll_x_out_dest_data_out_0_0_0_tpl_2_delay_0;
    wire redist8_i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_data_out_4_mem_reset0;
    wire [31:0] redist8_i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_data_out_4_mem_ia;
    wire [0:0] redist8_i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_data_out_4_mem_aa;
    wire [0:0] redist8_i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_data_out_4_mem_ab;
    wire [31:0] redist8_i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_data_out_4_mem_iq;
    wire [31:0] redist8_i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_data_out_4_mem_q;
    wire [0:0] redist8_i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_data_out_4_rdcnt_q;
    (* preserve *) reg [0:0] redist8_i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_data_out_4_rdcnt_i;
    reg [0:0] redist8_i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_data_out_4_wraddr_q;
    (* dont_merge *) reg [0:0] redist8_i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_data_out_4_cmpReg_q;
    wire [0:0] redist8_i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_data_out_4_notEnable_q;
    wire [0:0] redist8_i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_data_out_4_nor_q;
    (* dont_merge *) reg [0:0] redist8_i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_data_out_4_sticky_ena_q;
    wire [0:0] redist8_i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_data_out_4_enaAnd_q;
    wire redist22_sync_together100_aunroll_x_in_c0_eni7_4_tpl_3_mem_reset0;
    wire [31:0] redist22_sync_together100_aunroll_x_in_c0_eni7_4_tpl_3_mem_ia;
    wire [0:0] redist22_sync_together100_aunroll_x_in_c0_eni7_4_tpl_3_mem_aa;
    wire [0:0] redist22_sync_together100_aunroll_x_in_c0_eni7_4_tpl_3_mem_ab;
    wire [31:0] redist22_sync_together100_aunroll_x_in_c0_eni7_4_tpl_3_mem_iq;
    wire [31:0] redist22_sync_together100_aunroll_x_in_c0_eni7_4_tpl_3_mem_q;
    wire [0:0] redist22_sync_together100_aunroll_x_in_c0_eni7_4_tpl_3_rdcnt_q;
    (* preserve *) reg [0:0] redist22_sync_together100_aunroll_x_in_c0_eni7_4_tpl_3_rdcnt_i;
    reg [0:0] redist22_sync_together100_aunroll_x_in_c0_eni7_4_tpl_3_wraddr_q;
    (* dont_merge *) reg [0:0] redist22_sync_together100_aunroll_x_in_c0_eni7_4_tpl_3_cmpReg_q;
    wire [0:0] redist22_sync_together100_aunroll_x_in_c0_eni7_4_tpl_3_notEnable_q;
    wire [0:0] redist22_sync_together100_aunroll_x_in_c0_eni7_4_tpl_3_nor_q;
    (* dont_merge *) reg [0:0] redist22_sync_together100_aunroll_x_in_c0_eni7_4_tpl_3_sticky_ena_q;
    wire [0:0] redist22_sync_together100_aunroll_x_in_c0_eni7_4_tpl_3_enaAnd_q;
    wire redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_mem_reset0;
    wire [31:0] redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_mem_ia;
    wire [1:0] redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_mem_aa;
    wire [1:0] redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_mem_ab;
    wire [31:0] redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_mem_iq;
    wire [31:0] redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_mem_q;
    wire [1:0] redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_rdcnt_i;
    reg [1:0] redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_wraddr_q;
    wire [2:0] redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_mem_last_q;
    wire [2:0] redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_cmp_b;
    wire [0:0] redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_cmpReg_q;
    wire [0:0] redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_notEnable_q;
    wire [0:0] redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_sticky_ena_q;
    wire [0:0] redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist26_sync_together100_aunroll_x_in_i_valid_1(DELAY,223)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_sync_together100_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist26_sync_together100_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist27_sync_together100_aunroll_x_in_i_valid_2(DELAY,224)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_sync_together100_aunroll_x_in_i_valid_2_q <= '0;
        end
        else
        begin
            redist27_sync_together100_aunroll_x_in_i_valid_2_q <= $unsigned(redist26_sync_together100_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg0(REG,116)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist27_sync_together100_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist3_valid_fanout_reg0_q_2(DELAY,200)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_valid_fanout_reg0_q_2_delay_0 <= '0;
            redist3_valid_fanout_reg0_q_2_q <= '0;
        end
        else
        begin
            redist3_valid_fanout_reg0_q_2_delay_0 <= $unsigned(valid_fanout_reg0_q);
            redist3_valid_fanout_reg0_q_2_q <= redist3_valid_fanout_reg0_q_2_delay_0;
        end
    end

    // redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_notEnable(LOGICAL,248)
    assign redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_nor(LOGICAL,249)
    assign redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_nor_q = ~ (redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_notEnable_q | redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_sticky_ena_q);

    // redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_mem_last(CONSTANT,245)
    assign redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_cmp(LOGICAL,246)
    assign redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_cmp_b = {1'b0, redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_rdcnt_q};
    assign redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_cmp_q = $unsigned(redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_mem_last_q == redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_cmpReg(REG,247)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_cmpReg_q <= $unsigned(redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_cmp_q);
        end
    end

    // redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_sticky_ena(REG,250)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_nor_q == 1'b1)
        begin
            redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_sticky_ena_q <= $unsigned(redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_cmpReg_q);
        end
    end

    // redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_enaAnd(LOGICAL,251)
    assign redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_enaAnd_q = redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_sticky_ena_q & VCC_q;

    // redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_rdcnt(COUNTER,243)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_rdcnt_i <= $unsigned(redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_rdcnt_q = redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_rdcnt_i[1:0];

    // redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_wraddr(REG,244)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_wraddr_q <= $unsigned(redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_rdcnt_q);
        end
    end

    // redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_mem(DUALMEM,242)
    assign redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_mem_ia = $unsigned(in_c0_eni7_7_tpl);
    assign redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_mem_aa = redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_wraddr_q;
    assign redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_mem_ab = redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_rdcnt_q;
    assign redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_mem_dmem (
        .clocken1(redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_mem_aa),
        .data_a(redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_mem_ab),
        .q_b(redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_mem_iq),
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
    assign redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_mem_q = redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_mem_iq[31:0];

    // redist17_sync_together100_aunroll_x_in_c0_eni7_1_tpl_1(DELAY,214)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together100_aunroll_x_in_c0_eni7_1_tpl_1_q <= '0;
        end
        else
        begin
            redist17_sync_together100_aunroll_x_in_c0_eni7_1_tpl_1_q <= $unsigned(in_c0_eni7_1_tpl);
        end
    end

    // redist18_sync_together100_aunroll_x_in_c0_eni7_1_tpl_3(DELAY,215)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together100_aunroll_x_in_c0_eni7_1_tpl_3_delay_0 <= '0;
            redist18_sync_together100_aunroll_x_in_c0_eni7_1_tpl_3_q <= '0;
        end
        else
        begin
            redist18_sync_together100_aunroll_x_in_c0_eni7_1_tpl_3_delay_0 <= $unsigned(redist17_sync_together100_aunroll_x_in_c0_eni7_1_tpl_1_q);
            redist18_sync_together100_aunroll_x_in_c0_eni7_1_tpl_3_q <= redist18_sync_together100_aunroll_x_in_c0_eni7_1_tpl_3_delay_0;
        end
    end

    // redist19_sync_together100_aunroll_x_in_c0_eni7_1_tpl_5(DELAY,216)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together100_aunroll_x_in_c0_eni7_1_tpl_5_delay_0 <= '0;
            redist19_sync_together100_aunroll_x_in_c0_eni7_1_tpl_5_q <= '0;
        end
        else
        begin
            redist19_sync_together100_aunroll_x_in_c0_eni7_1_tpl_5_delay_0 <= $unsigned(redist18_sync_together100_aunroll_x_in_c0_eni7_1_tpl_3_q);
            redist19_sync_together100_aunroll_x_in_c0_eni7_1_tpl_5_q <= redist19_sync_together100_aunroll_x_in_c0_eni7_1_tpl_5_delay_0;
        end
    end

    // valid_fanout_reg16(REG,132)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg17(REG,133)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg17_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(in_i_valid);
        end
    end

    // leftShiftStage0Idx1Rng1_uid147_i_cleanups_shl61_covariance0_shift_x(BITSELECT,146)@2
    assign leftShiftStage0Idx1Rng1_uid147_i_cleanups_shl61_covariance0_shift_x_in = i_llvm_fpga_pop_i2_cleanups60_pop32_covariance2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid147_i_cleanups_shl61_covariance0_shift_x_b = leftShiftStage0Idx1Rng1_uid147_i_cleanups_shl61_covariance0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid148_i_cleanups_shl61_covariance0_shift_x(BITJOIN,147)@2
    assign leftShiftStage0Idx1_uid148_i_cleanups_shl61_covariance0_shift_x_q = {leftShiftStage0Idx1Rng1_uid147_i_cleanups_shl61_covariance0_shift_x_b, GND_q};

    // leftShiftStage0_uid150_i_cleanups_shl61_covariance0_shift_x(MUX,149)@2
    assign leftShiftStage0_uid150_i_cleanups_shl61_covariance0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid150_i_cleanups_shl61_covariance0_shift_x_s or i_llvm_fpga_pop_i2_cleanups60_pop32_covariance2_out_data_out or leftShiftStage0Idx1_uid148_i_cleanups_shl61_covariance0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid150_i_cleanups_shl61_covariance0_shift_x_s)
            1'b0 : leftShiftStage0_uid150_i_cleanups_shl61_covariance0_shift_x_q = i_llvm_fpga_pop_i2_cleanups60_pop32_covariance2_out_data_out;
            1'b1 : leftShiftStage0_uid150_i_cleanups_shl61_covariance0_shift_x_q = leftShiftStage0Idx1_uid148_i_cleanups_shl61_covariance0_shift_x_q;
            default : leftShiftStage0_uid150_i_cleanups_shl61_covariance0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl61_covariance5_vt_select_1(BITSELECT,68)@2
    assign i_cleanups_shl61_covariance5_vt_select_1_b = leftShiftStage0_uid150_i_cleanups_shl61_covariance0_shift_x_q[1:1];

    // i_cleanups_shl61_covariance5_vt_join(BITJOIN,67)@2
    assign i_cleanups_shl61_covariance5_vt_join_q = {i_cleanups_shl61_covariance5_vt_select_1_b, GND_q};

    // i_first_cleanup_xor63_covariance4(LOGICAL,71)@2
    assign i_first_cleanup_xor63_covariance4_q = i_first_cleanup62_covariance3_sel_x_b ^ VCC_q;

    // i_notcmp53_covariance29(LOGICAL,105)@2
    assign i_notcmp53_covariance29_q = i_exitcond_covariance27_cmp_nsign_q ^ VCC_q;

    // i_or64_covariance31(LOGICAL,106)@2
    assign i_or64_covariance31_q = i_notcmp53_covariance29_q | i_first_cleanup_xor63_covariance4_q;

    // i_next_cleanups65_covariance32(MUX,101)@2
    assign i_next_cleanups65_covariance32_s = i_or64_covariance31_q;
    always @(i_next_cleanups65_covariance32_s or i_llvm_fpga_pop_i2_cleanups60_pop32_covariance2_out_data_out or i_cleanups_shl61_covariance5_vt_join_q)
    begin
        unique case (i_next_cleanups65_covariance32_s)
            1'b0 : i_next_cleanups65_covariance32_q = i_llvm_fpga_pop_i2_cleanups60_pop32_covariance2_out_data_out;
            1'b1 : i_next_cleanups65_covariance32_q = i_cleanups_shl61_covariance5_vt_join_q;
            default : i_next_cleanups65_covariance32_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups60_push32_covariance33(BLACKBOX,91)@2
    // out out_feedback_out_32@20000000
    // out out_feedback_valid_out_32@20000000
    covariance_i_llvm_fpga_push_i2_cleanups60_push32_0 thei_llvm_fpga_push_i2_cleanups60_push32_covariance33 (
        .in_data_in(i_next_cleanups65_covariance32_q),
        .in_feedback_stall_in_32(i_llvm_fpga_pop_i2_cleanups60_pop32_covariance2_out_feedback_stall_out_32),
        .in_keep_going57(redist12_i_llvm_fpga_pipeline_keep_going57_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist26_sync_together100_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_32(i_llvm_fpga_push_i2_cleanups60_push32_covariance33_out_feedback_out_32),
        .out_feedback_valid_out_32(i_llvm_fpga_push_i2_cleanups60_push32_covariance33_out_feedback_valid_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i2_168(CONSTANT,58)
    assign c_i2_168_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups60_pop32_covariance2(BLACKBOX,80)@2
    // out out_feedback_stall_out_32@20000000
    covariance_i_llvm_fpga_pop_i2_cleanups60_pop32_0 thei_llvm_fpga_pop_i2_cleanups60_pop32_covariance2 (
        .in_data_in(c_i2_168_q),
        .in_dir(redist17_sync_together100_aunroll_x_in_c0_eni7_1_tpl_1_q),
        .in_feedback_in_32(i_llvm_fpga_push_i2_cleanups60_push32_covariance33_out_feedback_out_32),
        .in_feedback_valid_in_32(i_llvm_fpga_push_i2_cleanups60_push32_covariance33_out_feedback_valid_out_32),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist26_sync_together100_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups60_pop32_covariance2_out_data_out),
        .out_feedback_stall_out_32(i_llvm_fpga_pop_i2_cleanups60_pop32_covariance2_out_feedback_stall_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup62_covariance3_sel_x(BITSELECT,10)@2
    assign i_first_cleanup62_covariance3_sel_x_b = i_llvm_fpga_pop_i2_cleanups60_pop32_covariance2_out_data_out[0:0];

    // c_i6_175(CONSTANT,62)
    assign c_i6_175_q = $unsigned(6'b111111);

    // i_fpga_indvars_iv_next_covariance34(ADD,72)@2
    assign i_fpga_indvars_iv_next_covariance34_a = {1'b0, i_llvm_fpga_pop_i6_fpga_indvars_iv_pop28_covariance26_out_data_out};
    assign i_fpga_indvars_iv_next_covariance34_b = {1'b0, c_i6_175_q};
    assign i_fpga_indvars_iv_next_covariance34_o = $unsigned(i_fpga_indvars_iv_next_covariance34_a) + $unsigned(i_fpga_indvars_iv_next_covariance34_b);
    assign i_fpga_indvars_iv_next_covariance34_q = i_fpga_indvars_iv_next_covariance34_o[6:0];

    // bgTrunc_i_fpga_indvars_iv_next_covariance34_sel_x(BITSELECT,3)@2
    assign bgTrunc_i_fpga_indvars_iv_next_covariance34_sel_x_b = i_fpga_indvars_iv_next_covariance34_q[5:0];

    // i_llvm_fpga_push_i6_fpga_indvars_iv_push28_covariance35(BLACKBOX,96)@2
    // out out_feedback_out_28@20000000
    // out out_feedback_valid_out_28@20000000
    covariance_i_llvm_fpga_push_i6_fpga_indvars_iv_push28_0 thei_llvm_fpga_push_i6_fpga_indvars_iv_push28_covariance35 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_covariance34_sel_x_b),
        .in_feedback_stall_in_28(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop28_covariance26_out_feedback_stall_out_28),
        .in_keep_going57(redist12_i_llvm_fpga_pipeline_keep_going57_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist26_sync_together100_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_28(i_llvm_fpga_push_i6_fpga_indvars_iv_push28_covariance35_out_feedback_out_28),
        .out_feedback_valid_out_28(i_llvm_fpga_push_i6_fpga_indvars_iv_push28_covariance35_out_feedback_valid_out_28),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i6_3073(CONSTANT,63)
    assign c_i6_3073_q = $unsigned(6'b011110);

    // i_llvm_fpga_pop_i6_fpga_indvars_iv_pop28_covariance26(BLACKBOX,85)@2
    // out out_feedback_stall_out_28@20000000
    covariance_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop28_0 thei_llvm_fpga_pop_i6_fpga_indvars_iv_pop28_covariance26 (
        .in_data_in(c_i6_3073_q),
        .in_dir(redist17_sync_together100_aunroll_x_in_c0_eni7_1_tpl_1_q),
        .in_feedback_in_28(i_llvm_fpga_push_i6_fpga_indvars_iv_push28_covariance35_out_feedback_out_28),
        .in_feedback_valid_in_28(i_llvm_fpga_push_i6_fpga_indvars_iv_push28_covariance35_out_feedback_valid_out_28),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist26_sync_together100_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop28_covariance26_out_data_out),
        .out_feedback_stall_out_28(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop28_covariance26_out_feedback_stall_out_28),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond_covariance27_cmp_nsign(LOGICAL,173)@2
    assign i_exitcond_covariance27_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i6_fpga_indvars_iv_pop28_covariance26_out_data_out[5:5]));

    // i_llvm_fpga_push_i1_notexitcond67_covariance30(BLACKBOX,90)@2
    // out out_feedback_out_12@20000000
    // out out_feedback_valid_out_12@20000000
    covariance_i_llvm_fpga_push_i1_notexitcond67_0 thei_llvm_fpga_push_i1_notexitcond67_covariance30 (
        .in_data_in(i_exitcond_covariance27_cmp_nsign_q),
        .in_feedback_stall_in_12(i_llvm_fpga_pipeline_keep_going57_covariance6_out_not_exitcond_stall_out),
        .in_first_cleanup62(i_first_cleanup62_covariance3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist26_sync_together100_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_12(i_llvm_fpga_push_i1_notexitcond67_covariance30_out_feedback_out_12),
        .out_feedback_valid_out_12(i_llvm_fpga_push_i1_notexitcond67_covariance30_out_feedback_valid_out_12),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,119)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(in_i_valid);
        end
    end

    // rightShiftStage0Idx1Rng1_uid167_i_next_initerations56_covariance0_shift_x(BITSELECT,166)@2
    assign rightShiftStage0Idx1Rng1_uid167_i_next_initerations56_covariance0_shift_x_b = i_llvm_fpga_pop_i2_initerations55_pop31_covariance7_out_data_out[1:1];

    // rightShiftStage0Idx1_uid169_i_next_initerations56_covariance0_shift_x(BITJOIN,168)@2
    assign rightShiftStage0Idx1_uid169_i_next_initerations56_covariance0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid167_i_next_initerations56_covariance0_shift_x_b};

    // valid_fanout_reg1(REG,117)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg2(REG,118)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i2_initerations55_push31_covariance9(BLACKBOX,92)@2
    // out out_feedback_out_31@20000000
    // out out_feedback_valid_out_31@20000000
    covariance_i_llvm_fpga_push_i2_initerations55_push31_0 thei_llvm_fpga_push_i2_initerations55_push31_covariance9 (
        .in_data_in(i_next_initerations56_covariance8_vt_join_q),
        .in_feedback_stall_in_31(i_llvm_fpga_pop_i2_initerations55_pop31_covariance7_out_feedback_stall_out_31),
        .in_keep_going57(redist12_i_llvm_fpga_pipeline_keep_going57_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_31(i_llvm_fpga_push_i2_initerations55_push31_covariance9_out_feedback_out_31),
        .out_feedback_valid_out_31(i_llvm_fpga_push_i2_initerations55_push31_covariance9_out_feedback_valid_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations55_pop31_covariance7(BLACKBOX,81)@2
    // out out_feedback_stall_out_31@20000000
    covariance_i_llvm_fpga_pop_i2_initerations55_pop31_0 thei_llvm_fpga_pop_i2_initerations55_pop31_covariance7 (
        .in_data_in(c_i2_168_q),
        .in_dir(redist17_sync_together100_aunroll_x_in_c0_eni7_1_tpl_1_q),
        .in_feedback_in_31(i_llvm_fpga_push_i2_initerations55_push31_covariance9_out_feedback_out_31),
        .in_feedback_valid_in_31(i_llvm_fpga_push_i2_initerations55_push31_covariance9_out_feedback_valid_out_31),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations55_pop31_covariance7_out_data_out),
        .out_feedback_stall_out_31(i_llvm_fpga_pop_i2_initerations55_pop31_covariance7_out_feedback_stall_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid171_i_next_initerations56_covariance0_shift_x(MUX,170)@2
    assign rightShiftStage0_uid171_i_next_initerations56_covariance0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid171_i_next_initerations56_covariance0_shift_x_s or i_llvm_fpga_pop_i2_initerations55_pop31_covariance7_out_data_out or rightShiftStage0Idx1_uid169_i_next_initerations56_covariance0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid171_i_next_initerations56_covariance0_shift_x_s)
            1'b0 : rightShiftStage0_uid171_i_next_initerations56_covariance0_shift_x_q = i_llvm_fpga_pop_i2_initerations55_pop31_covariance7_out_data_out;
            1'b1 : rightShiftStage0_uid171_i_next_initerations56_covariance0_shift_x_q = rightShiftStage0Idx1_uid169_i_next_initerations56_covariance0_shift_x_q;
            default : rightShiftStage0_uid171_i_next_initerations56_covariance0_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations56_covariance8_vt_select_0(BITSELECT,104)@2
    assign i_next_initerations56_covariance8_vt_select_0_b = rightShiftStage0_uid171_i_next_initerations56_covariance0_shift_x_q[0:0];

    // i_next_initerations56_covariance8_vt_join(BITJOIN,103)@2
    assign i_next_initerations56_covariance8_vt_join_q = {GND_q, i_next_initerations56_covariance8_vt_select_0_b};

    // i_last_initeration58_covariance10_sel_x(BITSELECT,11)@2
    assign i_last_initeration58_covariance10_sel_x_b = i_next_initerations56_covariance8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration59_covariance11(BLACKBOX,87)@2
    // out out_feedback_out_11@20000000
    // out out_feedback_valid_out_11@20000000
    covariance_i_llvm_fpga_push_i1_lastiniteration59_0 thei_llvm_fpga_push_i1_lastiniteration59_covariance11 (
        .in_data_in(i_last_initeration58_covariance10_sel_x_b),
        .in_feedback_stall_in_11(i_llvm_fpga_pipeline_keep_going57_covariance6_out_initeration_stall_out),
        .in_keep_going57(redist12_i_llvm_fpga_pipeline_keep_going57_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_11(i_llvm_fpga_push_i1_lastiniteration59_covariance11_out_feedback_out_11),
        .out_feedback_valid_out_11(i_llvm_fpga_push_i1_lastiniteration59_covariance11_out_feedback_valid_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going57_covariance6(BLACKBOX,76)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    covariance_i_llvm_fpga_pipeline_keep_going57_0 thei_llvm_fpga_pipeline_keep_going57_covariance6 (
        .in_data_in(in_c0_eni7_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration59_covariance11_out_feedback_out_11),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration59_covariance11_out_feedback_valid_out_11),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond67_covariance30_out_feedback_out_12),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond67_covariance30_out_feedback_valid_out_12),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going57_covariance6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going57_covariance6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going57_covariance6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going57_covariance6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going57_covariance6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going57_covariance6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist12_i_llvm_fpga_pipeline_keep_going57_covariance6_out_data_out_1(DELAY,209)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_llvm_fpga_pipeline_keep_going57_covariance6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist12_i_llvm_fpga_pipeline_keep_going57_covariance6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going57_covariance6_out_data_out);
        end
    end

    // i_llvm_fpga_push_i1_notcmp6991_push35_covariance43(BLACKBOX,89)@2
    // out out_feedback_out_35@20000000
    // out out_feedback_valid_out_35@20000000
    covariance_i_llvm_fpga_push_i1_notcmp6991_push35_0 thei_llvm_fpga_push_i1_notcmp6991_push35_covariance43 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp6991_pop35_covariance42_out_data_out),
        .in_feedback_stall_in_35(i_llvm_fpga_pop_i1_notcmp6991_pop35_covariance42_out_feedback_stall_out_35),
        .in_keep_going57(redist12_i_llvm_fpga_pipeline_keep_going57_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(),
        .out_feedback_out_35(i_llvm_fpga_push_i1_notcmp6991_push35_covariance43_out_feedback_out_35),
        .out_feedback_valid_out_35(i_llvm_fpga_push_i1_notcmp6991_push35_covariance43_out_feedback_valid_out_35),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist24_sync_together100_aunroll_x_in_c0_eni7_6_tpl_1(DELAY,221)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_sync_together100_aunroll_x_in_c0_eni7_6_tpl_1_q <= '0;
        end
        else
        begin
            redist24_sync_together100_aunroll_x_in_c0_eni7_6_tpl_1_q <= $unsigned(in_c0_eni7_6_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp6991_pop35_covariance42(BLACKBOX,79)@2
    // out out_feedback_stall_out_35@20000000
    covariance_i_llvm_fpga_pop_i1_notcmp6991_pop35_0 thei_llvm_fpga_pop_i1_notcmp6991_pop35_covariance42 (
        .in_data_in(redist24_sync_together100_aunroll_x_in_c0_eni7_6_tpl_1_q),
        .in_dir(redist17_sync_together100_aunroll_x_in_c0_eni7_1_tpl_1_q),
        .in_feedback_in_35(i_llvm_fpga_push_i1_notcmp6991_push35_covariance43_out_feedback_out_35),
        .in_feedback_valid_in_35(i_llvm_fpga_push_i1_notcmp6991_push35_covariance43_out_feedback_valid_out_35),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp6991_pop35_covariance42_out_data_out),
        .out_feedback_stall_out_35(i_llvm_fpga_pop_i1_notcmp6991_pop35_covariance42_out_feedback_stall_out_35),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist9_i_llvm_fpga_pop_i1_notcmp6991_pop35_covariance42_out_data_out_4(DELAY,206)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_llvm_fpga_pop_i1_notcmp6991_pop35_covariance42_out_data_out_4_delay_0 <= '0;
            redist9_i_llvm_fpga_pop_i1_notcmp6991_pop35_covariance42_out_data_out_4_delay_1 <= '0;
            redist9_i_llvm_fpga_pop_i1_notcmp6991_pop35_covariance42_out_data_out_4_delay_2 <= '0;
            redist9_i_llvm_fpga_pop_i1_notcmp6991_pop35_covariance42_out_data_out_4_q <= '0;
        end
        else
        begin
            redist9_i_llvm_fpga_pop_i1_notcmp6991_pop35_covariance42_out_data_out_4_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_notcmp6991_pop35_covariance42_out_data_out);
            redist9_i_llvm_fpga_pop_i1_notcmp6991_pop35_covariance42_out_data_out_4_delay_1 <= redist9_i_llvm_fpga_pop_i1_notcmp6991_pop35_covariance42_out_data_out_4_delay_0;
            redist9_i_llvm_fpga_pop_i1_notcmp6991_pop35_covariance42_out_data_out_4_delay_2 <= redist9_i_llvm_fpga_pop_i1_notcmp6991_pop35_covariance42_out_data_out_4_delay_1;
            redist9_i_llvm_fpga_pop_i1_notcmp6991_pop35_covariance42_out_data_out_4_q <= redist9_i_llvm_fpga_pop_i1_notcmp6991_pop35_covariance42_out_data_out_4_delay_2;
        end
    end

    // valid_fanout_reg14(REG,130)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist27_sync_together100_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg15(REG,131)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist27_sync_together100_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist13_i_llvm_fpga_pipeline_keep_going57_covariance6_out_data_out_3(DELAY,210)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_llvm_fpga_pipeline_keep_going57_covariance6_out_data_out_3_delay_0 <= '0;
            redist13_i_llvm_fpga_pipeline_keep_going57_covariance6_out_data_out_3_q <= '0;
        end
        else
        begin
            redist13_i_llvm_fpga_pipeline_keep_going57_covariance6_out_data_out_3_delay_0 <= $unsigned(redist12_i_llvm_fpga_pipeline_keep_going57_covariance6_out_data_out_1_q);
            redist13_i_llvm_fpga_pipeline_keep_going57_covariance6_out_data_out_3_q <= redist13_i_llvm_fpga_pipeline_keep_going57_covariance6_out_data_out_3_delay_0;
        end
    end

    // i_llvm_fpga_push_i1_exitcond1089_push34_covariance41(BLACKBOX,86)@4
    // out out_feedback_out_34@20000000
    // out out_feedback_valid_out_34@20000000
    covariance_i_llvm_fpga_push_i1_exitcond1089_push34_0 thei_llvm_fpga_push_i1_exitcond1089_push34_covariance41 (
        .in_data_in(i_llvm_fpga_pop_i1_exitcond1089_pop34_covariance40_out_data_out),
        .in_feedback_stall_in_34(i_llvm_fpga_pop_i1_exitcond1089_pop34_covariance40_out_feedback_stall_out_34),
        .in_keep_going57(redist13_i_llvm_fpga_pipeline_keep_going57_covariance6_out_data_out_3_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(),
        .out_feedback_out_34(i_llvm_fpga_push_i1_exitcond1089_push34_covariance41_out_feedback_out_34),
        .out_feedback_valid_out_34(i_llvm_fpga_push_i1_exitcond1089_push34_covariance41_out_feedback_valid_out_34),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist23_sync_together100_aunroll_x_in_c0_eni7_5_tpl_3(DELAY,220)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_sync_together100_aunroll_x_in_c0_eni7_5_tpl_3_delay_0 <= '0;
            redist23_sync_together100_aunroll_x_in_c0_eni7_5_tpl_3_delay_1 <= '0;
            redist23_sync_together100_aunroll_x_in_c0_eni7_5_tpl_3_q <= '0;
        end
        else
        begin
            redist23_sync_together100_aunroll_x_in_c0_eni7_5_tpl_3_delay_0 <= $unsigned(in_c0_eni7_5_tpl);
            redist23_sync_together100_aunroll_x_in_c0_eni7_5_tpl_3_delay_1 <= redist23_sync_together100_aunroll_x_in_c0_eni7_5_tpl_3_delay_0;
            redist23_sync_together100_aunroll_x_in_c0_eni7_5_tpl_3_q <= redist23_sync_together100_aunroll_x_in_c0_eni7_5_tpl_3_delay_1;
        end
    end

    // i_llvm_fpga_pop_i1_exitcond1089_pop34_covariance40(BLACKBOX,77)@4
    // out out_feedback_stall_out_34@20000000
    covariance_i_llvm_fpga_pop_i1_exitcond1089_pop34_0 thei_llvm_fpga_pop_i1_exitcond1089_pop34_covariance40 (
        .in_data_in(redist23_sync_together100_aunroll_x_in_c0_eni7_5_tpl_3_q),
        .in_dir(redist18_sync_together100_aunroll_x_in_c0_eni7_1_tpl_3_q),
        .in_feedback_in_34(i_llvm_fpga_push_i1_exitcond1089_push34_covariance41_out_feedback_out_34),
        .in_feedback_valid_in_34(i_llvm_fpga_push_i1_exitcond1089_push34_covariance41_out_feedback_valid_out_34),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond1089_pop34_covariance40_out_data_out),
        .out_feedback_stall_out_34(i_llvm_fpga_pop_i1_exitcond1089_pop34_covariance40_out_feedback_stall_out_34),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist11_i_llvm_fpga_pop_i1_exitcond1089_pop34_covariance40_out_data_out_2(DELAY,208)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_llvm_fpga_pop_i1_exitcond1089_pop34_covariance40_out_data_out_2_delay_0 <= '0;
            redist11_i_llvm_fpga_pop_i1_exitcond1089_pop34_covariance40_out_data_out_2_q <= '0;
        end
        else
        begin
            redist11_i_llvm_fpga_pop_i1_exitcond1089_pop34_covariance40_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_exitcond1089_pop34_covariance40_out_data_out);
            redist11_i_llvm_fpga_pop_i1_exitcond1089_pop34_covariance40_out_data_out_2_q <= redist11_i_llvm_fpga_pop_i1_exitcond1089_pop34_covariance40_out_data_out_2_delay_0;
        end
    end

    // valid_fanout_reg12(REG,128)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist27_sync_together100_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg13(REG,129)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist27_sync_together100_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i32_lim_ext80_push33_covariance39(BLACKBOX,95)@4
    // out out_feedback_out_33@20000000
    // out out_feedback_valid_out_33@20000000
    covariance_i_llvm_fpga_push_i32_lim_ext80_push33_0 thei_llvm_fpga_push_i32_lim_ext80_push33_covariance39 (
        .in_data_in(i_llvm_fpga_pop_i32_lim_ext80_pop33_covariance38_out_data_out),
        .in_feedback_stall_in_33(i_llvm_fpga_pop_i32_lim_ext80_pop33_covariance38_out_feedback_stall_out_33),
        .in_keep_going57(redist13_i_llvm_fpga_pipeline_keep_going57_covariance6_out_data_out_3_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(),
        .out_feedback_out_33(i_llvm_fpga_push_i32_lim_ext80_push33_covariance39_out_feedback_out_33),
        .out_feedback_valid_out_33(i_llvm_fpga_push_i32_lim_ext80_push33_covariance39_out_feedback_valid_out_33),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist22_sync_together100_aunroll_x_in_c0_eni7_4_tpl_3_notEnable(LOGICAL,238)
    assign redist22_sync_together100_aunroll_x_in_c0_eni7_4_tpl_3_notEnable_q = $unsigned(~ (VCC_q));

    // redist22_sync_together100_aunroll_x_in_c0_eni7_4_tpl_3_nor(LOGICAL,239)
    assign redist22_sync_together100_aunroll_x_in_c0_eni7_4_tpl_3_nor_q = ~ (redist22_sync_together100_aunroll_x_in_c0_eni7_4_tpl_3_notEnable_q | redist22_sync_together100_aunroll_x_in_c0_eni7_4_tpl_3_sticky_ena_q);

    // redist22_sync_together100_aunroll_x_in_c0_eni7_4_tpl_3_cmpReg(REG,237)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_sync_together100_aunroll_x_in_c0_eni7_4_tpl_3_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist22_sync_together100_aunroll_x_in_c0_eni7_4_tpl_3_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist22_sync_together100_aunroll_x_in_c0_eni7_4_tpl_3_sticky_ena(REG,240)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_sync_together100_aunroll_x_in_c0_eni7_4_tpl_3_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist22_sync_together100_aunroll_x_in_c0_eni7_4_tpl_3_nor_q == 1'b1)
        begin
            redist22_sync_together100_aunroll_x_in_c0_eni7_4_tpl_3_sticky_ena_q <= $unsigned(redist22_sync_together100_aunroll_x_in_c0_eni7_4_tpl_3_cmpReg_q);
        end
    end

    // redist22_sync_together100_aunroll_x_in_c0_eni7_4_tpl_3_enaAnd(LOGICAL,241)
    assign redist22_sync_together100_aunroll_x_in_c0_eni7_4_tpl_3_enaAnd_q = redist22_sync_together100_aunroll_x_in_c0_eni7_4_tpl_3_sticky_ena_q & VCC_q;

    // redist22_sync_together100_aunroll_x_in_c0_eni7_4_tpl_3_rdcnt(COUNTER,235)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_sync_together100_aunroll_x_in_c0_eni7_4_tpl_3_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist22_sync_together100_aunroll_x_in_c0_eni7_4_tpl_3_rdcnt_i <= $unsigned(redist22_sync_together100_aunroll_x_in_c0_eni7_4_tpl_3_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist22_sync_together100_aunroll_x_in_c0_eni7_4_tpl_3_rdcnt_q = redist22_sync_together100_aunroll_x_in_c0_eni7_4_tpl_3_rdcnt_i[0:0];

    // redist22_sync_together100_aunroll_x_in_c0_eni7_4_tpl_3_wraddr(REG,236)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_sync_together100_aunroll_x_in_c0_eni7_4_tpl_3_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist22_sync_together100_aunroll_x_in_c0_eni7_4_tpl_3_wraddr_q <= $unsigned(redist22_sync_together100_aunroll_x_in_c0_eni7_4_tpl_3_rdcnt_q);
        end
    end

    // redist22_sync_together100_aunroll_x_in_c0_eni7_4_tpl_3_mem(DUALMEM,234)
    assign redist22_sync_together100_aunroll_x_in_c0_eni7_4_tpl_3_mem_ia = $unsigned(in_c0_eni7_4_tpl);
    assign redist22_sync_together100_aunroll_x_in_c0_eni7_4_tpl_3_mem_aa = redist22_sync_together100_aunroll_x_in_c0_eni7_4_tpl_3_wraddr_q;
    assign redist22_sync_together100_aunroll_x_in_c0_eni7_4_tpl_3_mem_ab = redist22_sync_together100_aunroll_x_in_c0_eni7_4_tpl_3_rdcnt_q;
    assign redist22_sync_together100_aunroll_x_in_c0_eni7_4_tpl_3_mem_reset0 = ~ (resetn);
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
    ) redist22_sync_together100_aunroll_x_in_c0_eni7_4_tpl_3_mem_dmem (
        .clocken1(redist22_sync_together100_aunroll_x_in_c0_eni7_4_tpl_3_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist22_sync_together100_aunroll_x_in_c0_eni7_4_tpl_3_mem_reset0),
        .clock1(clock),
        .address_a(redist22_sync_together100_aunroll_x_in_c0_eni7_4_tpl_3_mem_aa),
        .data_a(redist22_sync_together100_aunroll_x_in_c0_eni7_4_tpl_3_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist22_sync_together100_aunroll_x_in_c0_eni7_4_tpl_3_mem_ab),
        .q_b(redist22_sync_together100_aunroll_x_in_c0_eni7_4_tpl_3_mem_iq),
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
    assign redist22_sync_together100_aunroll_x_in_c0_eni7_4_tpl_3_mem_q = redist22_sync_together100_aunroll_x_in_c0_eni7_4_tpl_3_mem_iq[31:0];

    // i_llvm_fpga_pop_i32_lim_ext80_pop33_covariance38(BLACKBOX,84)@4
    // out out_feedback_stall_out_33@20000000
    covariance_i_llvm_fpga_pop_i32_lim_ext80_pop33_0 thei_llvm_fpga_pop_i32_lim_ext80_pop33_covariance38 (
        .in_data_in(redist22_sync_together100_aunroll_x_in_c0_eni7_4_tpl_3_mem_q),
        .in_dir(redist18_sync_together100_aunroll_x_in_c0_eni7_1_tpl_3_q),
        .in_feedback_in_33(i_llvm_fpga_push_i32_lim_ext80_push33_covariance39_out_feedback_out_33),
        .in_feedback_valid_in_33(i_llvm_fpga_push_i32_lim_ext80_push33_covariance39_out_feedback_valid_out_33),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(i_llvm_fpga_pop_i32_lim_ext80_pop33_covariance38_out_data_out),
        .out_feedback_stall_out_33(i_llvm_fpga_pop_i32_lim_ext80_pop33_covariance38_out_feedback_stall_out_33),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_i_llvm_fpga_pop_i32_lim_ext80_pop33_covariance38_out_data_out_2(DELAY,203)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_llvm_fpga_pop_i32_lim_ext80_pop33_covariance38_out_data_out_2_delay_0 <= '0;
            redist6_i_llvm_fpga_pop_i32_lim_ext80_pop33_covariance38_out_data_out_2_q <= '0;
        end
        else
        begin
            redist6_i_llvm_fpga_pop_i32_lim_ext80_pop33_covariance38_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_i32_lim_ext80_pop33_covariance38_out_data_out);
            redist6_i_llvm_fpga_pop_i32_lim_ext80_pop33_covariance38_out_data_out_2_q <= redist6_i_llvm_fpga_pop_i32_lim_ext80_pop33_covariance38_out_data_out_2_delay_0;
        end
    end

    // i_masked66_covariance37(LOGICAL,97)@2 + 1
    assign i_masked66_covariance37_qi = i_notcmp53_covariance29_q & i_first_cleanup62_covariance3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked66_covariance37_delay ( .xin(i_masked66_covariance37_qi), .xout(i_masked66_covariance37_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist5_i_masked66_covariance37_q_4(DELAY,202)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_masked66_covariance37_q_4_delay_0 <= '0;
            redist5_i_masked66_covariance37_q_4_delay_1 <= '0;
            redist5_i_masked66_covariance37_q_4_q <= '0;
        end
        else
        begin
            redist5_i_masked66_covariance37_q_4_delay_0 <= $unsigned(i_masked66_covariance37_q);
            redist5_i_masked66_covariance37_q_4_delay_1 <= redist5_i_masked66_covariance37_q_4_delay_0;
            redist5_i_masked66_covariance37_q_4_q <= redist5_i_masked66_covariance37_q_4_delay_1;
        end
    end

    // valid_fanout_reg8(REG,124)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist27_sync_together100_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg9(REG,125)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist27_sync_together100_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi_pop2095_push37_covariance23(BLACKBOX,88)@4
    // out out_feedback_out_37@20000000
    // out out_feedback_valid_out_37@20000000
    covariance_i_llvm_fpga_push_i1_memdep_phi_pop2095_push37_0 thei_llvm_fpga_push_i1_memdep_phi_pop2095_push37_covariance23 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi_pop2095_pop37_covariance22_out_data_out),
        .in_feedback_stall_in_37(i_llvm_fpga_pop_i1_memdep_phi_pop2095_pop37_covariance22_out_feedback_stall_out_37),
        .in_keep_going57(redist13_i_llvm_fpga_pipeline_keep_going57_covariance6_out_data_out_3_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(),
        .out_feedback_out_37(i_llvm_fpga_push_i1_memdep_phi_pop2095_push37_covariance23_out_feedback_out_37),
        .out_feedback_valid_out_37(i_llvm_fpga_push_i1_memdep_phi_pop2095_push37_covariance23_out_feedback_valid_out_37),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist21_sync_together100_aunroll_x_in_c0_eni7_3_tpl_3(DELAY,218)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_sync_together100_aunroll_x_in_c0_eni7_3_tpl_3_delay_0 <= '0;
            redist21_sync_together100_aunroll_x_in_c0_eni7_3_tpl_3_delay_1 <= '0;
            redist21_sync_together100_aunroll_x_in_c0_eni7_3_tpl_3_q <= '0;
        end
        else
        begin
            redist21_sync_together100_aunroll_x_in_c0_eni7_3_tpl_3_delay_0 <= $unsigned(in_c0_eni7_3_tpl);
            redist21_sync_together100_aunroll_x_in_c0_eni7_3_tpl_3_delay_1 <= redist21_sync_together100_aunroll_x_in_c0_eni7_3_tpl_3_delay_0;
            redist21_sync_together100_aunroll_x_in_c0_eni7_3_tpl_3_q <= redist21_sync_together100_aunroll_x_in_c0_eni7_3_tpl_3_delay_1;
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi_pop2095_pop37_covariance22(BLACKBOX,78)@4
    // out out_feedback_stall_out_37@20000000
    covariance_i_llvm_fpga_pop_i1_memdep_phi_pop2095_pop37_0 thei_llvm_fpga_pop_i1_memdep_phi_pop2095_pop37_covariance22 (
        .in_data_in(redist21_sync_together100_aunroll_x_in_c0_eni7_3_tpl_3_q),
        .in_dir(redist18_sync_together100_aunroll_x_in_c0_eni7_1_tpl_3_q),
        .in_feedback_in_37(i_llvm_fpga_push_i1_memdep_phi_pop2095_push37_covariance23_out_feedback_out_37),
        .in_feedback_valid_in_37(i_llvm_fpga_push_i1_memdep_phi_pop2095_push37_covariance23_out_feedback_valid_out_37),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop2095_pop37_covariance22_out_data_out),
        .out_feedback_stall_out_37(i_llvm_fpga_pop_i1_memdep_phi_pop2095_pop37_covariance22_out_feedback_stall_out_37),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist10_i_llvm_fpga_pop_i1_memdep_phi_pop2095_pop37_covariance22_out_data_out_2(DELAY,207)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_llvm_fpga_pop_i1_memdep_phi_pop2095_pop37_covariance22_out_data_out_2_delay_0 <= '0;
            redist10_i_llvm_fpga_pop_i1_memdep_phi_pop2095_pop37_covariance22_out_data_out_2_q <= '0;
        end
        else
        begin
            redist10_i_llvm_fpga_pop_i1_memdep_phi_pop2095_pop37_covariance22_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi_pop2095_pop37_covariance22_out_data_out);
            redist10_i_llvm_fpga_pop_i1_memdep_phi_pop2095_pop37_covariance22_out_data_out_2_q <= redist10_i_llvm_fpga_pop_i1_memdep_phi_pop2095_pop37_covariance22_out_data_out_2_delay_0;
        end
    end

    // c_i32_070(CONSTANT,59)
    assign c_i32_070_q = $unsigned(32'b00000000000000000000000000000000);

    // i_mptr_bitcast_index83_covariance0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select(BITSELECT,196)
    assign i_mptr_bitcast_index83_covariance0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_in = c_i32_070_q[29:0];
    assign i_mptr_bitcast_index83_covariance0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_b = i_mptr_bitcast_index83_covariance0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_in[25:0];
    assign i_mptr_bitcast_index83_covariance0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_c = i_mptr_bitcast_index83_covariance0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_in[29:26];

    // valid_fanout_reg6(REG,122)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg7(REG,123)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_j_077_pop1993_push36_covariance18(BLACKBOX,94)@2
    // out out_feedback_out_36@20000000
    // out out_feedback_valid_out_36@20000000
    covariance_i_llvm_fpga_push_i32_j_077_pop1993_push36_0 thei_llvm_fpga_push_i32_j_077_pop1993_push36_covariance18 (
        .in_data_in(i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_data_out),
        .in_feedback_stall_in_36(i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_feedback_stall_out_36),
        .in_keep_going57(redist12_i_llvm_fpga_pipeline_keep_going57_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(),
        .out_feedback_out_36(i_llvm_fpga_push_i32_j_077_pop1993_push36_covariance18_out_feedback_out_36),
        .out_feedback_valid_out_36(i_llvm_fpga_push_i32_j_077_pop1993_push36_covariance18_out_feedback_valid_out_36),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist20_sync_together100_aunroll_x_in_c0_eni7_2_tpl_1(DELAY,217)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together100_aunroll_x_in_c0_eni7_2_tpl_1_q <= '0;
        end
        else
        begin
            redist20_sync_together100_aunroll_x_in_c0_eni7_2_tpl_1_q <= $unsigned(in_c0_eni7_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17(BLACKBOX,83)@2
    // out out_feedback_stall_out_36@20000000
    covariance_i_llvm_fpga_pop_i32_j_077_pop1993_pop36_0 thei_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17 (
        .in_data_in(redist20_sync_together100_aunroll_x_in_c0_eni7_2_tpl_1_q),
        .in_dir(redist17_sync_together100_aunroll_x_in_c0_eni7_1_tpl_1_q),
        .in_feedback_in_36(i_llvm_fpga_push_i32_j_077_pop1993_push36_covariance18_out_feedback_out_36),
        .in_feedback_valid_in_36(i_llvm_fpga_push_i32_j_077_pop1993_push36_covariance18_out_feedback_valid_out_36),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_data_out),
        .out_feedback_stall_out_36(i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_feedback_stall_out_36),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_data_out_1(DELAY,204)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_data_out_1_q <= '0;
        end
        else
        begin
            redist7_i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_data_out);
        end
    end

    // leftShiftStage1Idx1Rng4_uid160_i_mul_covariance0_shift_x(BITSELECT,159)@2
    assign leftShiftStage1Idx1Rng4_uid160_i_mul_covariance0_shift_x_in = leftShiftStage0_uid158_i_mul_covariance0_shift_x_q[27:0];
    assign leftShiftStage1Idx1Rng4_uid160_i_mul_covariance0_shift_x_b = leftShiftStage1Idx1Rng4_uid160_i_mul_covariance0_shift_x_in[27:0];

    // leftShiftStage1Idx1Pad4_uid159_i_mul_covariance0_shift_x(CONSTANT,158)
    assign leftShiftStage1Idx1Pad4_uid159_i_mul_covariance0_shift_x_q = $unsigned(4'b0000);

    // leftShiftStage1Idx1_uid161_i_mul_covariance0_shift_x(BITJOIN,160)@2
    assign leftShiftStage1Idx1_uid161_i_mul_covariance0_shift_x_q = {leftShiftStage1Idx1Rng4_uid160_i_mul_covariance0_shift_x_b, leftShiftStage1Idx1Pad4_uid159_i_mul_covariance0_shift_x_q};

    // leftShiftStage0Idx1Rng1_uid155_i_mul_covariance0_shift_x(BITSELECT,154)@2
    assign leftShiftStage0Idx1Rng1_uid155_i_mul_covariance0_shift_x_in = i_llvm_fpga_pop_i32_i_075_pop29_covariance15_out_data_out[30:0];
    assign leftShiftStage0Idx1Rng1_uid155_i_mul_covariance0_shift_x_b = leftShiftStage0Idx1Rng1_uid155_i_mul_covariance0_shift_x_in[30:0];

    // leftShiftStage0Idx1_uid156_i_mul_covariance0_shift_x(BITJOIN,155)@2
    assign leftShiftStage0Idx1_uid156_i_mul_covariance0_shift_x_q = {leftShiftStage0Idx1Rng1_uid155_i_mul_covariance0_shift_x_b, GND_q};

    // valid_fanout_reg5(REG,121)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg10(REG,126)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(in_i_valid);
        end
    end

    // c_i32_172(CONSTANT,60)
    assign c_i32_172_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_covariance24(ADD,73)@2
    assign i_inc_covariance24_a = {1'b0, i_llvm_fpga_pop_i32_i_075_pop29_covariance15_out_data_out};
    assign i_inc_covariance24_b = {1'b0, c_i32_172_q};
    assign i_inc_covariance24_o = $unsigned(i_inc_covariance24_a) + $unsigned(i_inc_covariance24_b);
    assign i_inc_covariance24_q = i_inc_covariance24_o[32:0];

    // bgTrunc_i_inc_covariance24_sel_x(BITSELECT,4)@2
    assign bgTrunc_i_inc_covariance24_sel_x_b = i_inc_covariance24_q[31:0];

    // i_llvm_fpga_push_i32_i_075_push29_covariance25(BLACKBOX,93)@2
    // out out_feedback_out_29@20000000
    // out out_feedback_valid_out_29@20000000
    covariance_i_llvm_fpga_push_i32_i_075_push29_0 thei_llvm_fpga_push_i32_i_075_push29_covariance25 (
        .in_data_in(bgTrunc_i_inc_covariance24_sel_x_b),
        .in_feedback_stall_in_29(i_llvm_fpga_pop_i32_i_075_pop29_covariance15_out_feedback_stall_out_29),
        .in_keep_going57(redist12_i_llvm_fpga_pipeline_keep_going57_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_29(i_llvm_fpga_push_i32_i_075_push29_covariance25_out_feedback_out_29),
        .out_feedback_valid_out_29(i_llvm_fpga_push_i32_i_075_push29_covariance25_out_feedback_valid_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_075_pop29_covariance15(BLACKBOX,82)@2
    // out out_feedback_stall_out_29@20000000
    covariance_i_llvm_fpga_pop_i32_i_075_pop29_0 thei_llvm_fpga_pop_i32_i_075_pop29_covariance15 (
        .in_data_in(c_i32_070_q),
        .in_dir(redist17_sync_together100_aunroll_x_in_c0_eni7_1_tpl_1_q),
        .in_feedback_in_29(i_llvm_fpga_push_i32_i_075_push29_covariance25_out_feedback_out_29),
        .in_feedback_valid_in_29(i_llvm_fpga_push_i32_i_075_push29_covariance25_out_feedback_valid_out_29),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_075_pop29_covariance15_out_data_out),
        .out_feedback_stall_out_29(i_llvm_fpga_pop_i32_i_075_pop29_covariance15_out_feedback_stall_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // leftShiftStage0_uid158_i_mul_covariance0_shift_x(MUX,157)@2
    assign leftShiftStage0_uid158_i_mul_covariance0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid158_i_mul_covariance0_shift_x_s or i_llvm_fpga_pop_i32_i_075_pop29_covariance15_out_data_out or leftShiftStage0Idx1_uid156_i_mul_covariance0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid158_i_mul_covariance0_shift_x_s)
            1'b0 : leftShiftStage0_uid158_i_mul_covariance0_shift_x_q = i_llvm_fpga_pop_i32_i_075_pop29_covariance15_out_data_out;
            1'b1 : leftShiftStage0_uid158_i_mul_covariance0_shift_x_q = leftShiftStage0Idx1_uid156_i_mul_covariance0_shift_x_q;
            default : leftShiftStage0_uid158_i_mul_covariance0_shift_x_q = 32'b0;
        endcase
    end

    // leftShiftStage1_uid163_i_mul_covariance0_shift_x(MUX,162)@2
    assign leftShiftStage1_uid163_i_mul_covariance0_shift_x_s = VCC_q;
    always @(leftShiftStage1_uid163_i_mul_covariance0_shift_x_s or leftShiftStage0_uid158_i_mul_covariance0_shift_x_q or leftShiftStage1Idx1_uid161_i_mul_covariance0_shift_x_q)
    begin
        unique case (leftShiftStage1_uid163_i_mul_covariance0_shift_x_s)
            1'b0 : leftShiftStage1_uid163_i_mul_covariance0_shift_x_q = leftShiftStage0_uid158_i_mul_covariance0_shift_x_q;
            1'b1 : leftShiftStage1_uid163_i_mul_covariance0_shift_x_q = leftShiftStage1Idx1_uid161_i_mul_covariance0_shift_x_q;
            default : leftShiftStage1_uid163_i_mul_covariance0_shift_x_q = 32'b0;
        endcase
    end

    // i_mul_covariance16_vt_select_31(BITSELECT,100)@2
    assign i_mul_covariance16_vt_select_31_b = leftShiftStage1_uid163_i_mul_covariance0_shift_x_q[31:5];

    // redist4_i_mul_covariance16_vt_select_31_b_1(DELAY,201)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_mul_covariance16_vt_select_31_b_1_q <= '0;
        end
        else
        begin
            redist4_i_mul_covariance16_vt_select_31_b_1_q <= $unsigned(i_mul_covariance16_vt_select_31_b);
        end
    end

    // i_mul_covariance16_vt_const_4(CONSTANT,98)
    assign i_mul_covariance16_vt_const_4_q = $unsigned(5'b00000);

    // i_mul_covariance16_vt_join(BITJOIN,99)@3
    assign i_mul_covariance16_vt_join_q = {redist4_i_mul_covariance16_vt_select_31_b_1_q, i_mul_covariance16_vt_const_4_q};

    // i_add_covariance19(ADD,65)@3
    assign i_add_covariance19_a = {1'b0, i_mul_covariance16_vt_join_q};
    assign i_add_covariance19_b = {1'b0, redist7_i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_data_out_1_q};
    assign i_add_covariance19_o = $unsigned(i_add_covariance19_a) + $unsigned(i_add_covariance19_b);
    assign i_add_covariance19_q = i_add_covariance19_o[32:0];

    // i_mptr_bitcast_index83_covariance0_add_x_BitSelect_for_b_tessel0_1(BITSELECT,189)@3
    assign i_mptr_bitcast_index83_covariance0_add_x_BitSelect_for_b_tessel0_1_b = $unsigned(i_add_covariance19_q[31:0]);

    // redist1_i_mptr_bitcast_index83_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1(DELAY,198)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_mptr_bitcast_index83_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1_q <= '0;
        end
        else
        begin
            redist1_i_mptr_bitcast_index83_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1_q <= $unsigned(i_mptr_bitcast_index83_covariance0_add_x_BitSelect_for_b_tessel0_1_b);
        end
    end

    // i_mptr_bitcast_index83_covariance0_c_i2_01_x(CONSTANT,16)
    assign i_mptr_bitcast_index83_covariance0_c_i2_01_x_q = $unsigned(2'b00);

    // i_mptr_bitcast_index83_covariance0_add_x_BitSelect_for_b_BitJoin_for_b(BITJOIN,191)@4
    assign i_mptr_bitcast_index83_covariance0_add_x_BitSelect_for_b_BitJoin_for_b_q = {i_mptr_bitcast_index83_covariance0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_b, redist1_i_mptr_bitcast_index83_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1_q, i_mptr_bitcast_index83_covariance0_c_i2_01_x_q};

    // valid_fanout_reg4(REG,120)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist27_sync_together100_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_s_struct_covariance_yaxaeav_mm_host_hu_dwidth_0ca_ihc_u_awidth_0ca_2_u_latency_00_2_ihc_0_z_inputss_unnamed_covariance5_covariance12_aunroll_x(BLACKBOX,12)@4
    covariance_i_llvm_fpga_ffwd_dest_s_struc0000ariance5_covariance0 thei_llvm_fpga_ffwd_dest_s_struct_covariance_yaxaeav_mm_host_hu_dwidth_0ca_ihc_u_awidth_0ca_2_u_latency_00_2_ihc_0_z_inputss_unnamed_covariance5_covariance12_aunroll_x (
        .in_intel_reserved_ffwd_0_0_0_tpl(in_intel_reserved_ffwd_0_0_0_tpl),
        .in_intel_reserved_ffwd_0_0_1_tpl(in_intel_reserved_ffwd_0_0_1_tpl),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_dest_data_out_0_0_0_tpl(i_llvm_fpga_ffwd_dest_s_struct_covariance_yaxaeav_mm_host_hu_dwidth_0ca_ihc_u_awidth_0ca_2_u_latency_00_2_ihc_0_z_inputss_unnamed_covariance5_covariance12_aunroll_x_out_dest_data_out_0_0_0_tpl),
        .out_dest_data_out_0_0_1_tpl(),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mptr_bitcast_index83_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,195)@4
    assign i_mptr_bitcast_index83_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b = $unsigned(i_llvm_fpga_ffwd_dest_s_struct_covariance_yaxaeav_mm_host_hu_dwidth_0ca_ihc_u_awidth_0ca_2_u_latency_00_2_ihc_0_z_inputss_unnamed_covariance5_covariance12_aunroll_x_out_dest_data_out_0_0_0_tpl[59:0]);
    assign i_mptr_bitcast_index83_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c = $unsigned(i_llvm_fpga_ffwd_dest_s_struct_covariance_yaxaeav_mm_host_hu_dwidth_0ca_ihc_u_awidth_0ca_2_u_latency_00_2_ihc_0_z_inputss_unnamed_covariance5_covariance12_aunroll_x_out_dest_data_out_0_0_0_tpl[63:60]);

    // i_mptr_bitcast_index83_covariance0_add_x_p1_of_2(ADD,180)@4 + 1
    assign i_mptr_bitcast_index83_covariance0_add_x_p1_of_2_a = {1'b0, i_mptr_bitcast_index83_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b};
    assign i_mptr_bitcast_index83_covariance0_add_x_p1_of_2_b = {1'b0, i_mptr_bitcast_index83_covariance0_add_x_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index83_covariance0_add_x_p1_of_2_o <= 61'b0;
        end
        else
        begin
            i_mptr_bitcast_index83_covariance0_add_x_p1_of_2_o <= $unsigned(i_mptr_bitcast_index83_covariance0_add_x_p1_of_2_a) + $unsigned(i_mptr_bitcast_index83_covariance0_add_x_p1_of_2_b);
        end
    end
    assign i_mptr_bitcast_index83_covariance0_add_x_p1_of_2_c[0] = i_mptr_bitcast_index83_covariance0_add_x_p1_of_2_o[60];
    assign i_mptr_bitcast_index83_covariance0_add_x_p1_of_2_q = i_mptr_bitcast_index83_covariance0_add_x_p1_of_2_o[59:0];

    // i_mptr_bitcast_index83_covariance0_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,194)@5
    assign i_mptr_bitcast_index83_covariance0_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_mptr_bitcast_index83_covariance0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_c};

    // redist0_i_mptr_bitcast_index83_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1(DELAY,197)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_mptr_bitcast_index83_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist0_i_mptr_bitcast_index83_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q <= $unsigned(i_mptr_bitcast_index83_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c);
        end
    end

    // i_mptr_bitcast_index83_covariance0_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,187)@5
    assign i_mptr_bitcast_index83_covariance0_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist0_i_mptr_bitcast_index83_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q};

    // i_mptr_bitcast_index83_covariance0_add_x_p2_of_2(ADD,181)@5 + 1
    assign i_mptr_bitcast_index83_covariance0_add_x_p2_of_2_cin = i_mptr_bitcast_index83_covariance0_add_x_p1_of_2_c;
    assign i_mptr_bitcast_index83_covariance0_add_x_p2_of_2_a = { {1'b0, i_mptr_bitcast_index83_covariance0_add_x_BitSelect_for_a_BitJoin_for_c_q}, 1'b1 };
    assign i_mptr_bitcast_index83_covariance0_add_x_p2_of_2_b = { {1'b0, i_mptr_bitcast_index83_covariance0_add_x_BitSelect_for_b_BitJoin_for_c_q}, i_mptr_bitcast_index83_covariance0_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index83_covariance0_add_x_p2_of_2_o <= 7'b0;
        end
        else
        begin
            i_mptr_bitcast_index83_covariance0_add_x_p2_of_2_o <= $unsigned(i_mptr_bitcast_index83_covariance0_add_x_p2_of_2_a) + $unsigned(i_mptr_bitcast_index83_covariance0_add_x_p2_of_2_b);
        end
    end
    assign i_mptr_bitcast_index83_covariance0_add_x_p2_of_2_q = i_mptr_bitcast_index83_covariance0_add_x_p2_of_2_o[5:1];

    // redist2_i_mptr_bitcast_index83_covariance0_add_x_p1_of_2_q_1(DELAY,199)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_mptr_bitcast_index83_covariance0_add_x_p1_of_2_q_1_q <= '0;
        end
        else
        begin
            redist2_i_mptr_bitcast_index83_covariance0_add_x_p1_of_2_q_1_q <= $unsigned(i_mptr_bitcast_index83_covariance0_add_x_p1_of_2_q);
        end
    end

    // i_mptr_bitcast_index83_covariance0_add_x_BitJoin_for_q(BITJOIN,182)@6
    assign i_mptr_bitcast_index83_covariance0_add_x_BitJoin_for_q_q = {i_mptr_bitcast_index83_covariance0_add_x_p2_of_2_q, redist2_i_mptr_bitcast_index83_covariance0_add_x_p1_of_2_q_1_q};

    // i_mptr_bitcast_index83_covariance0_dupName_0_trunc_sel_x(BITSELECT,13)@6
    assign i_mptr_bitcast_index83_covariance0_dupName_0_trunc_sel_x_b = i_mptr_bitcast_index83_covariance0_add_x_BitJoin_for_q_q[63:0];

    // redist8_i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_data_out_4_notEnable(LOGICAL,230)
    assign redist8_i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_data_out_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist8_i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_data_out_4_nor(LOGICAL,231)
    assign redist8_i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_data_out_4_nor_q = ~ (redist8_i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_data_out_4_notEnable_q | redist8_i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_data_out_4_sticky_ena_q);

    // redist8_i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_data_out_4_cmpReg(REG,229)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_data_out_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist8_i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_data_out_4_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist8_i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_data_out_4_sticky_ena(REG,232)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_data_out_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist8_i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_data_out_4_nor_q == 1'b1)
        begin
            redist8_i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_data_out_4_sticky_ena_q <= $unsigned(redist8_i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_data_out_4_cmpReg_q);
        end
    end

    // redist8_i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_data_out_4_enaAnd(LOGICAL,233)
    assign redist8_i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_data_out_4_enaAnd_q = redist8_i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_data_out_4_sticky_ena_q & VCC_q;

    // redist8_i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_data_out_4_rdcnt(COUNTER,227)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_data_out_4_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist8_i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_data_out_4_rdcnt_i <= $unsigned(redist8_i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_data_out_4_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist8_i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_data_out_4_rdcnt_q = redist8_i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_data_out_4_rdcnt_i[0:0];

    // redist8_i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_data_out_4_wraddr(REG,228)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_data_out_4_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist8_i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_data_out_4_wraddr_q <= $unsigned(redist8_i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_data_out_4_rdcnt_q);
        end
    end

    // redist8_i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_data_out_4_mem(DUALMEM,226)
    assign redist8_i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_data_out_4_mem_ia = $unsigned(redist7_i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_data_out_1_q);
    assign redist8_i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_data_out_4_mem_aa = redist8_i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_data_out_4_wraddr_q;
    assign redist8_i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_data_out_4_mem_ab = redist8_i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_data_out_4_rdcnt_q;
    assign redist8_i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_data_out_4_mem_reset0 = ~ (resetn);
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
    ) redist8_i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_data_out_4_mem_dmem (
        .clocken1(redist8_i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_data_out_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist8_i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_data_out_4_mem_reset0),
        .clock1(clock),
        .address_a(redist8_i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_data_out_4_mem_aa),
        .data_a(redist8_i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_data_out_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist8_i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_data_out_4_mem_ab),
        .q_b(redist8_i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_data_out_4_mem_iq),
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
    assign redist8_i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_data_out_4_mem_q = redist8_i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_data_out_4_mem_iq[31:0];

    // redist28_i_llvm_fpga_ffwd_dest_s_struct_covariance_yaxaeav_mm_host_hu_dwidth_0ca_ihc_u_awidth_0ca_2_u_latency_00_2_ihc_0_z_inputss_unnamed_covariance5_covariance12_aunroll_x_out_dest_data_out_0_0_0_tpl_2(DELAY,225)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_i_llvm_fpga_ffwd_dest_s_struct_covariance_yaxaeav_mm_host_hu_dwidth_0ca_ihc_u_awidth_0ca_2_u_latency_00_2_ihc_0_z_inputss_unnamed_covariance5_covariance12_aunroll_x_out_dest_data_out_0_0_0_tpl_2_delay_0 <= '0;
            redist28_i_llvm_fpga_ffwd_dest_s_struct_covariance_yaxaeav_mm_host_hu_dwidth_0ca_ihc_u_awidth_0ca_2_u_latency_00_2_ihc_0_z_inputss_unnamed_covariance5_covariance12_aunroll_x_out_dest_data_out_0_0_0_tpl_2_q <= '0;
        end
        else
        begin
            redist28_i_llvm_fpga_ffwd_dest_s_struct_covariance_yaxaeav_mm_host_hu_dwidth_0ca_ihc_u_awidth_0ca_2_u_latency_00_2_ihc_0_z_inputss_unnamed_covariance5_covariance12_aunroll_x_out_dest_data_out_0_0_0_tpl_2_delay_0 <= $unsigned(i_llvm_fpga_ffwd_dest_s_struct_covariance_yaxaeav_mm_host_hu_dwidth_0ca_ihc_u_awidth_0ca_2_u_latency_00_2_ihc_0_z_inputss_unnamed_covariance5_covariance12_aunroll_x_out_dest_data_out_0_0_0_tpl);
            redist28_i_llvm_fpga_ffwd_dest_s_struct_covariance_yaxaeav_mm_host_hu_dwidth_0ca_ihc_u_awidth_0ca_2_u_latency_00_2_ihc_0_z_inputss_unnamed_covariance5_covariance12_aunroll_x_out_dest_data_out_0_0_0_tpl_2_q <= redist28_i_llvm_fpga_ffwd_dest_s_struct_covariance_yaxaeav_mm_host_hu_dwidth_0ca_ihc_u_awidth_0ca_2_u_latency_00_2_ihc_0_z_inputss_unnamed_covariance5_covariance12_aunroll_x_out_dest_data_out_0_0_0_tpl_2_delay_0;
        end
    end

    // redist14_i_llvm_fpga_pipeline_keep_going57_covariance6_out_data_out_5(DELAY,211)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_llvm_fpga_pipeline_keep_going57_covariance6_out_data_out_5_delay_0 <= '0;
            redist14_i_llvm_fpga_pipeline_keep_going57_covariance6_out_data_out_5_q <= '0;
        end
        else
        begin
            redist14_i_llvm_fpga_pipeline_keep_going57_covariance6_out_data_out_5_delay_0 <= $unsigned(redist13_i_llvm_fpga_pipeline_keep_going57_covariance6_out_data_out_3_q);
            redist14_i_llvm_fpga_pipeline_keep_going57_covariance6_out_data_out_5_q <= redist14_i_llvm_fpga_pipeline_keep_going57_covariance6_out_data_out_5_delay_0;
        end
    end

    // redist15_i_first_cleanup_xor63_covariance4_q_2(DELAY,212)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_first_cleanup_xor63_covariance4_q_2_delay_0 <= '0;
            redist15_i_first_cleanup_xor63_covariance4_q_2_q <= '0;
        end
        else
        begin
            redist15_i_first_cleanup_xor63_covariance4_q_2_delay_0 <= $unsigned(i_first_cleanup_xor63_covariance4_q);
            redist15_i_first_cleanup_xor63_covariance4_q_2_q <= redist15_i_first_cleanup_xor63_covariance4_q_2_delay_0;
        end
    end

    // redist16_i_first_cleanup_xor63_covariance4_q_4(DELAY,213)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_first_cleanup_xor63_covariance4_q_4_delay_0 <= '0;
            redist16_i_first_cleanup_xor63_covariance4_q_4_q <= '0;
        end
        else
        begin
            redist16_i_first_cleanup_xor63_covariance4_q_4_delay_0 <= $unsigned(redist15_i_first_cleanup_xor63_covariance4_q_2_q);
            redist16_i_first_cleanup_xor63_covariance4_q_4_q <= redist16_i_first_cleanup_xor63_covariance4_q_4_delay_0;
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,29)@6
    assign out_c0_exi12_0_tpl = GND_q;
    assign out_c0_exi12_1_tpl = redist16_i_first_cleanup_xor63_covariance4_q_4_q;
    assign out_c0_exi12_2_tpl = redist14_i_llvm_fpga_pipeline_keep_going57_covariance6_out_data_out_5_q;
    assign out_c0_exi12_3_tpl = redist28_i_llvm_fpga_ffwd_dest_s_struct_covariance_yaxaeav_mm_host_hu_dwidth_0ca_ihc_u_awidth_0ca_2_u_latency_00_2_ihc_0_z_inputss_unnamed_covariance5_covariance12_aunroll_x_out_dest_data_out_0_0_0_tpl_2_q;
    assign out_c0_exi12_4_tpl = redist8_i_llvm_fpga_pop_i32_j_077_pop1993_pop36_covariance17_out_data_out_4_mem_q;
    assign out_c0_exi12_5_tpl = i_mptr_bitcast_index83_covariance0_dupName_0_trunc_sel_x_b;
    assign out_c0_exi12_6_tpl = redist10_i_llvm_fpga_pop_i1_memdep_phi_pop2095_pop37_covariance22_out_data_out_2_q;
    assign out_c0_exi12_7_tpl = redist5_i_masked66_covariance37_q_4_q;
    assign out_c0_exi12_8_tpl = redist6_i_llvm_fpga_pop_i32_lim_ext80_pop33_covariance38_out_data_out_2_q;
    assign out_c0_exi12_9_tpl = redist11_i_llvm_fpga_pop_i1_exitcond1089_pop34_covariance40_out_data_out_2_q;
    assign out_c0_exi12_10_tpl = redist9_i_llvm_fpga_pop_i1_notcmp6991_pop35_covariance42_out_data_out_4_q;
    assign out_c0_exi12_11_tpl = redist19_sync_together100_aunroll_x_in_c0_eni7_1_tpl_5_q;
    assign out_c0_exi12_12_tpl = redist25_sync_together100_aunroll_x_in_c0_eni7_7_tpl_5_mem_q;
    assign out_o_valid = redist3_valid_fanout_reg0_q_2_q;
    assign out_unnamed_covariance0 = GND_q;

    // ext_sig_sync_out(GPOUT,64)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going57_covariance6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going57_covariance6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going57_covariance6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going57_covariance6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,113)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going57_covariance6_out_pipeline_valid_out;

    // valid_fanout_reg11(REG,127)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist27_sync_together100_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_source_p1025i32_unnamed_covariance7_covariance36(BLACKBOX,75)@4
    // out out_intel_reserved_ffwd_3_0@20000000
    covariance_i_llvm_fpga_ffwd_source_p10250000nnamed_7_covariance0 thei_llvm_fpga_ffwd_source_p1025i32_unnamed_covariance7_covariance36 (
        .in_predicate_in(redist15_i_first_cleanup_xor63_covariance4_q_2_q),
        .in_src_data_in_3_0(i_llvm_fpga_ffwd_dest_s_struct_covariance_yaxaeav_mm_host_hu_dwidth_0ca_ihc_u_awidth_0ca_2_u_latency_00_2_ihc_0_z_inputss_unnamed_covariance5_covariance12_aunroll_x_out_dest_data_out_0_0_0_tpl),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_intel_reserved_ffwd_3_0(i_llvm_fpga_ffwd_source_p1025i32_unnamed_covariance7_covariance36_out_intel_reserved_ffwd_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,114)
    assign out_intel_reserved_ffwd_3_0 = i_llvm_fpga_ffwd_source_p1025i32_unnamed_covariance7_covariance36_out_intel_reserved_ffwd_3_0;

endmodule
