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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body11_covariances_c0_enter24032_covariance0
// Created for function/kernel covariance
// SystemVerilog created on Tue Jun 13 02:07:49 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_i_sfc_logic_s_c0_in_for_body10000ter24032_covariance0 (
    output wire [0:0] out_c0_exi10257_0_tpl,
    output wire [0:0] out_c0_exi10257_1_tpl,
    output wire [0:0] out_c0_exi10257_2_tpl,
    output wire [63:0] out_c0_exi10257_3_tpl,
    output wire [0:0] out_c0_exi10257_4_tpl,
    output wire [31:0] out_c0_exi10257_5_tpl,
    output wire [0:0] out_c0_exi10257_6_tpl,
    output wire [0:0] out_c0_exi10257_7_tpl,
    output wire [0:0] out_c0_exi10257_8_tpl,
    output wire [31:0] out_c0_exi10257_9_tpl,
    output wire [31:0] out_c0_exi10257_10_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_covariance0,
    input wire [0:0] in_c0_eni8_0_tpl,
    input wire [0:0] in_c0_eni8_1_tpl,
    input wire [31:0] in_c0_eni8_2_tpl,
    input wire [63:0] in_c0_eni8_3_tpl,
    input wire [31:0] in_c0_eni8_4_tpl,
    input wire [0:0] in_c0_eni8_5_tpl,
    input wire [0:0] in_c0_eni8_6_tpl,
    input wire [31:0] in_c0_eni8_7_tpl,
    input wire [31:0] in_c0_eni8_8_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going41_covariance6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going41_covariance6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [5:0] bgTrunc_i_fpga_indvars_iv_next6_covariance31_sel_x_b;
    wire [31:0] bgTrunc_i_inc16_covariance21_sel_x_b;
    wire [0:0] i_first_cleanup46_covariance3_sel_x_b;
    wire [0:0] i_last_initeration42_covariance10_sel_x_b;
    wire [63:0] i_mptr_bitcast_index81_covariance0_dupName_0_trunc_sel_x_b;
    wire [1:0] i_mptr_bitcast_index81_covariance0_c_i2_01_x_q;
    wire [1:0] c_i2_162_q;
    wire [31:0] c_i32_064_q;
    wire [31:0] c_i32_166_q;
    wire [5:0] c_i6_169_q;
    wire [5:0] c_i6_3067_q;
    wire [32:0] i_add13_covariance16_a;
    wire [32:0] i_add13_covariance16_b;
    logic [32:0] i_add13_covariance16_o;
    wire [32:0] i_add13_covariance16_q;
    wire [1:0] i_cleanups_shl45_covariance5_vt_join_q;
    wire [0:0] i_cleanups_shl45_covariance5_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor47_covariance4_q;
    wire [6:0] i_fpga_indvars_iv_next6_covariance31_a;
    wire [6:0] i_fpga_indvars_iv_next6_covariance31_b;
    logic [6:0] i_fpga_indvars_iv_next6_covariance31_o;
    wire [6:0] i_fpga_indvars_iv_next6_covariance31_q;
    wire [32:0] i_inc16_covariance21_a;
    wire [32:0] i_inc16_covariance21_b;
    logic [32:0] i_inc16_covariance21_o;
    wire [32:0] i_inc16_covariance21_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going41_covariance6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going41_covariance6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going41_covariance6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going41_covariance6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going41_covariance6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going41_covariance6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1090_pop43_covariance36_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1090_pop43_covariance36_out_feedback_stall_out_43;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp6992_pop44_covariance38_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp6992_pop44_covariance38_out_feedback_stall_out_44;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups44_pop41_covariance2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups44_pop41_covariance2_out_feedback_stall_out_41;
    wire [1:0] i_llvm_fpga_pop_i2_initerations39_pop40_covariance7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations39_pop40_covariance7_out_feedback_stall_out_40;
    wire [31:0] i_llvm_fpga_pop_i32_i7_076_pop39_covariance12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i7_076_pop39_covariance12_out_feedback_stall_out_39;
    wire [31:0] i_llvm_fpga_pop_i32_j_077_pop1994_pop45_covariance14_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_077_pop1994_pop45_covariance14_out_feedback_stall_out_45;
    wire [31:0] i_llvm_fpga_pop_i32_lim_ext81_pop42_covariance34_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_lim_ext81_pop42_covariance34_out_feedback_stall_out_42;
    wire [5:0] i_llvm_fpga_pop_i6_fpga_indvars_iv5_pop38_covariance23_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv5_pop38_covariance23_out_feedback_stall_out_38;
    wire [63:0] i_llvm_fpga_pop_p1025i32_mptr_bitcast828697_pop47_covariance18_out_data_out;
    wire [0:0] i_llvm_fpga_pop_p1025i32_mptr_bitcast828697_pop47_covariance18_out_feedback_stall_out_47;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1090_push43_covariance37_out_feedback_out_43;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1090_push43_covariance37_out_feedback_valid_out_43;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration43_covariance11_out_feedback_out_9;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration43_covariance11_out_feedback_valid_out_9;
    wire [0:0] i_llvm_fpga_push_i1_notcmp6992_push44_covariance39_out_feedback_out_44;
    wire [0:0] i_llvm_fpga_push_i1_notcmp6992_push44_covariance39_out_feedback_valid_out_44;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond51_covariance27_out_feedback_out_10;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond51_covariance27_out_feedback_valid_out_10;
    wire [7:0] i_llvm_fpga_push_i2_cleanups44_push41_covariance30_out_feedback_out_41;
    wire [0:0] i_llvm_fpga_push_i2_cleanups44_push41_covariance30_out_feedback_valid_out_41;
    wire [7:0] i_llvm_fpga_push_i2_initerations39_push40_covariance9_out_feedback_out_40;
    wire [0:0] i_llvm_fpga_push_i2_initerations39_push40_covariance9_out_feedback_valid_out_40;
    wire [31:0] i_llvm_fpga_push_i32_i7_076_push39_covariance22_out_feedback_out_39;
    wire [0:0] i_llvm_fpga_push_i32_i7_076_push39_covariance22_out_feedback_valid_out_39;
    wire [31:0] i_llvm_fpga_push_i32_j_077_pop1994_push45_covariance15_out_feedback_out_45;
    wire [0:0] i_llvm_fpga_push_i32_j_077_pop1994_push45_covariance15_out_feedback_valid_out_45;
    wire [31:0] i_llvm_fpga_push_i32_lim_ext81_push42_covariance35_out_feedback_out_42;
    wire [0:0] i_llvm_fpga_push_i32_lim_ext81_push42_covariance35_out_feedback_valid_out_42;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv5_push38_covariance32_out_feedback_out_38;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv5_push38_covariance32_out_feedback_valid_out_38;
    wire [63:0] i_llvm_fpga_push_p1025i32_mptr_bitcast828697_push47_covariance19_out_feedback_out_47;
    wire [0:0] i_llvm_fpga_push_p1025i32_mptr_bitcast828697_push47_covariance19_out_feedback_valid_out_47;
    wire [0:0] i_masked50_covariance33_qi;
    reg [0:0] i_masked50_covariance33_q;
    wire [4:0] i_mul12_covariance13_vt_const_4_q;
    wire [31:0] i_mul12_covariance13_vt_join_q;
    wire [26:0] i_mul12_covariance13_vt_select_31_b;
    wire [0:0] i_next_cleanups49_covariance29_s;
    reg [1:0] i_next_cleanups49_covariance29_q;
    wire [1:0] i_next_initerations40_covariance8_vt_join_q;
    wire [0:0] i_next_initerations40_covariance8_vt_select_0_b;
    wire [0:0] i_notcmp37_covariance26_q;
    wire [0:0] i_or48_covariance28_q;
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
    wire [0:0] leftShiftStage0Idx1Rng1_uid139_i_cleanups_shl45_covariance0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid139_i_cleanups_shl45_covariance0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid140_i_cleanups_shl45_covariance0_shift_x_q;
    wire [0:0] leftShiftStage0_uid142_i_cleanups_shl45_covariance0_shift_x_s;
    reg [1:0] leftShiftStage0_uid142_i_cleanups_shl45_covariance0_shift_x_q;
    wire [30:0] leftShiftStage0Idx1Rng1_uid147_i_mul12_covariance0_shift_x_in;
    wire [30:0] leftShiftStage0Idx1Rng1_uid147_i_mul12_covariance0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid148_i_mul12_covariance0_shift_x_q;
    wire [0:0] leftShiftStage0_uid150_i_mul12_covariance0_shift_x_s;
    reg [31:0] leftShiftStage0_uid150_i_mul12_covariance0_shift_x_q;
    wire [3:0] leftShiftStage1Idx1Pad4_uid151_i_mul12_covariance0_shift_x_q;
    wire [27:0] leftShiftStage1Idx1Rng4_uid152_i_mul12_covariance0_shift_x_in;
    wire [27:0] leftShiftStage1Idx1Rng4_uid152_i_mul12_covariance0_shift_x_b;
    wire [31:0] leftShiftStage1Idx1_uid153_i_mul12_covariance0_shift_x_q;
    wire [0:0] leftShiftStage1_uid155_i_mul12_covariance0_shift_x_s;
    reg [31:0] leftShiftStage1_uid155_i_mul12_covariance0_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid159_i_next_initerations40_covariance0_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid161_i_next_initerations40_covariance0_shift_x_q;
    wire [0:0] rightShiftStage0_uid163_i_next_initerations40_covariance0_shift_x_s;
    reg [1:0] rightShiftStage0_uid163_i_next_initerations40_covariance0_shift_x_q;
    wire [0:0] i_exitcond7_covariance24_cmp_nsign_q;
    wire [60:0] i_mptr_bitcast_index81_covariance0_add_x_p1_of_2_a;
    wire [60:0] i_mptr_bitcast_index81_covariance0_add_x_p1_of_2_b;
    logic [60:0] i_mptr_bitcast_index81_covariance0_add_x_p1_of_2_o;
    wire [0:0] i_mptr_bitcast_index81_covariance0_add_x_p1_of_2_c;
    wire [59:0] i_mptr_bitcast_index81_covariance0_add_x_p1_of_2_q;
    wire [6:0] i_mptr_bitcast_index81_covariance0_add_x_p2_of_2_a;
    wire [6:0] i_mptr_bitcast_index81_covariance0_add_x_p2_of_2_b;
    logic [6:0] i_mptr_bitcast_index81_covariance0_add_x_p2_of_2_o;
    wire [0:0] i_mptr_bitcast_index81_covariance0_add_x_p2_of_2_cin;
    wire [4:0] i_mptr_bitcast_index81_covariance0_add_x_p2_of_2_q;
    wire [64:0] i_mptr_bitcast_index81_covariance0_add_x_BitJoin_for_q_q;
    wire [4:0] i_mptr_bitcast_index81_covariance0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [31:0] i_mptr_bitcast_index81_covariance0_add_x_BitSelect_for_b_tessel0_1_b;
    wire [59:0] i_mptr_bitcast_index81_covariance0_add_x_BitSelect_for_b_BitJoin_for_b_q;
    wire [4:0] i_mptr_bitcast_index81_covariance0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [29:0] i_mptr_bitcast_index81_covariance0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_in;
    wire [25:0] i_mptr_bitcast_index81_covariance0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_b;
    wire [3:0] i_mptr_bitcast_index81_covariance0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_c;
    wire [59:0] i_mptr_bitcast_index81_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    wire [3:0] i_mptr_bitcast_index81_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c;
    reg [3:0] redist0_i_mptr_bitcast_index81_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q;
    reg [31:0] redist1_i_mptr_bitcast_index81_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1_q;
    reg [59:0] redist2_i_mptr_bitcast_index81_covariance0_add_x_p1_of_2_q_1_q;
    reg [0:0] redist3_valid_fanout_reg0_q_3_q;
    reg [0:0] redist3_valid_fanout_reg0_q_3_delay_0;
    reg [0:0] redist3_valid_fanout_reg0_q_3_delay_1;
    reg [26:0] redist4_i_mul12_covariance13_vt_select_31_b_1_q;
    reg [0:0] redist5_i_masked50_covariance33_q_4_q;
    reg [0:0] redist5_i_masked50_covariance33_q_4_delay_0;
    reg [0:0] redist5_i_masked50_covariance33_q_4_delay_1;
    reg [63:0] redist6_i_llvm_fpga_pop_p1025i32_mptr_bitcast828697_pop47_covariance18_out_data_out_2_q;
    reg [63:0] redist6_i_llvm_fpga_pop_p1025i32_mptr_bitcast828697_pop47_covariance18_out_data_out_2_delay_0;
    reg [31:0] redist8_i_llvm_fpga_pop_i32_j_077_pop1994_pop45_covariance14_out_data_out_1_q;
    reg [0:0] redist9_i_llvm_fpga_pop_i1_notcmp6992_pop44_covariance38_out_data_out_4_q;
    reg [0:0] redist9_i_llvm_fpga_pop_i1_notcmp6992_pop44_covariance38_out_data_out_4_delay_0;
    reg [0:0] redist9_i_llvm_fpga_pop_i1_notcmp6992_pop44_covariance38_out_data_out_4_delay_1;
    reg [0:0] redist9_i_llvm_fpga_pop_i1_notcmp6992_pop44_covariance38_out_data_out_4_delay_2;
    reg [0:0] redist10_i_llvm_fpga_pop_i1_exitcond1090_pop43_covariance36_out_data_out_3_q;
    reg [0:0] redist10_i_llvm_fpga_pop_i1_exitcond1090_pop43_covariance36_out_data_out_3_delay_0;
    reg [0:0] redist10_i_llvm_fpga_pop_i1_exitcond1090_pop43_covariance36_out_data_out_3_delay_1;
    reg [0:0] redist11_i_llvm_fpga_pipeline_keep_going41_covariance6_out_data_out_1_q;
    reg [0:0] redist12_i_llvm_fpga_pipeline_keep_going41_covariance6_out_data_out_2_q;
    reg [0:0] redist13_i_llvm_fpga_pipeline_keep_going41_covariance6_out_data_out_5_q;
    reg [0:0] redist13_i_llvm_fpga_pipeline_keep_going41_covariance6_out_data_out_5_delay_0;
    reg [0:0] redist13_i_llvm_fpga_pipeline_keep_going41_covariance6_out_data_out_5_delay_1;
    reg [0:0] redist14_i_first_cleanup_xor47_covariance4_q_4_q;
    reg [0:0] redist14_i_first_cleanup_xor47_covariance4_q_4_delay_0;
    reg [0:0] redist14_i_first_cleanup_xor47_covariance4_q_4_delay_1;
    reg [0:0] redist14_i_first_cleanup_xor47_covariance4_q_4_delay_2;
    reg [0:0] redist15_sync_together93_aunroll_x_in_c0_eni8_1_tpl_1_q;
    reg [0:0] redist16_sync_together93_aunroll_x_in_c0_eni8_1_tpl_2_q;
    reg [0:0] redist17_sync_together93_aunroll_x_in_c0_eni8_1_tpl_5_q;
    reg [0:0] redist17_sync_together93_aunroll_x_in_c0_eni8_1_tpl_5_delay_0;
    reg [0:0] redist17_sync_together93_aunroll_x_in_c0_eni8_1_tpl_5_delay_1;
    reg [31:0] redist18_sync_together93_aunroll_x_in_c0_eni8_2_tpl_1_q;
    reg [63:0] redist19_sync_together93_aunroll_x_in_c0_eni8_3_tpl_1_q;
    reg [31:0] redist20_sync_together93_aunroll_x_in_c0_eni8_4_tpl_2_q;
    reg [31:0] redist20_sync_together93_aunroll_x_in_c0_eni8_4_tpl_2_delay_0;
    reg [0:0] redist21_sync_together93_aunroll_x_in_c0_eni8_5_tpl_2_q;
    reg [0:0] redist21_sync_together93_aunroll_x_in_c0_eni8_5_tpl_2_delay_0;
    reg [0:0] redist22_sync_together93_aunroll_x_in_c0_eni8_6_tpl_1_q;
    reg [0:0] redist25_sync_together93_aunroll_x_in_i_valid_1_q;
    wire redist7_i_llvm_fpga_pop_i32_lim_ext81_pop42_covariance34_out_data_out_3_mem_reset0;
    wire [31:0] redist7_i_llvm_fpga_pop_i32_lim_ext81_pop42_covariance34_out_data_out_3_mem_ia;
    wire [0:0] redist7_i_llvm_fpga_pop_i32_lim_ext81_pop42_covariance34_out_data_out_3_mem_aa;
    wire [0:0] redist7_i_llvm_fpga_pop_i32_lim_ext81_pop42_covariance34_out_data_out_3_mem_ab;
    wire [31:0] redist7_i_llvm_fpga_pop_i32_lim_ext81_pop42_covariance34_out_data_out_3_mem_iq;
    wire [31:0] redist7_i_llvm_fpga_pop_i32_lim_ext81_pop42_covariance34_out_data_out_3_mem_q;
    wire [0:0] redist7_i_llvm_fpga_pop_i32_lim_ext81_pop42_covariance34_out_data_out_3_rdcnt_q;
    (* preserve *) reg [0:0] redist7_i_llvm_fpga_pop_i32_lim_ext81_pop42_covariance34_out_data_out_3_rdcnt_i;
    reg [0:0] redist7_i_llvm_fpga_pop_i32_lim_ext81_pop42_covariance34_out_data_out_3_wraddr_q;
    (* dont_merge *) reg [0:0] redist7_i_llvm_fpga_pop_i32_lim_ext81_pop42_covariance34_out_data_out_3_cmpReg_q;
    wire [0:0] redist7_i_llvm_fpga_pop_i32_lim_ext81_pop42_covariance34_out_data_out_3_notEnable_q;
    wire [0:0] redist7_i_llvm_fpga_pop_i32_lim_ext81_pop42_covariance34_out_data_out_3_nor_q;
    (* dont_merge *) reg [0:0] redist7_i_llvm_fpga_pop_i32_lim_ext81_pop42_covariance34_out_data_out_3_sticky_ena_q;
    wire [0:0] redist7_i_llvm_fpga_pop_i32_lim_ext81_pop42_covariance34_out_data_out_3_enaAnd_q;
    wire redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_mem_reset0;
    wire [31:0] redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_mem_ia;
    wire [1:0] redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_mem_aa;
    wire [1:0] redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_mem_ab;
    wire [31:0] redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_mem_iq;
    wire [31:0] redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_mem_q;
    wire [1:0] redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_rdcnt_i;
    reg [1:0] redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_wraddr_q;
    wire [2:0] redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_mem_last_q;
    wire [2:0] redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_cmp_b;
    wire [0:0] redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_cmpReg_q;
    wire [0:0] redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_notEnable_q;
    wire [0:0] redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_sticky_ena_q;
    wire [0:0] redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_enaAnd_q;
    wire redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_mem_reset0;
    wire [31:0] redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_mem_ia;
    wire [1:0] redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_mem_aa;
    wire [1:0] redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_mem_ab;
    wire [31:0] redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_mem_iq;
    wire [31:0] redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_mem_q;
    wire [1:0] redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_rdcnt_i;
    reg [1:0] redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_wraddr_q;
    wire [2:0] redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_mem_last_q;
    wire [2:0] redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_cmp_b;
    wire [0:0] redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_cmpReg_q;
    wire [0:0] redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_notEnable_q;
    wire [0:0] redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_sticky_ena_q;
    wire [0:0] redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist25_sync_together93_aunroll_x_in_i_valid_1(DELAY,214)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_sync_together93_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist25_sync_together93_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg0(REG,110)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist25_sync_together93_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist3_valid_fanout_reg0_q_3(DELAY,192)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_valid_fanout_reg0_q_3_delay_0 <= '0;
            redist3_valid_fanout_reg0_q_3_delay_1 <= '0;
            redist3_valid_fanout_reg0_q_3_q <= '0;
        end
        else
        begin
            redist3_valid_fanout_reg0_q_3_delay_0 <= $unsigned(valid_fanout_reg0_q);
            redist3_valid_fanout_reg0_q_3_delay_1 <= redist3_valid_fanout_reg0_q_3_delay_0;
            redist3_valid_fanout_reg0_q_3_q <= redist3_valid_fanout_reg0_q_3_delay_1;
        end
    end

    // redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_notEnable(LOGICAL,239)
    assign redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_nor(LOGICAL,240)
    assign redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_nor_q = ~ (redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_notEnable_q | redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_sticky_ena_q);

    // redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_mem_last(CONSTANT,236)
    assign redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_cmp(LOGICAL,237)
    assign redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_cmp_b = {1'b0, redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_rdcnt_q};
    assign redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_cmp_q = $unsigned(redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_mem_last_q == redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_cmpReg(REG,238)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_cmpReg_q <= $unsigned(redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_cmp_q);
        end
    end

    // redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_sticky_ena(REG,241)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_nor_q == 1'b1)
        begin
            redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_sticky_ena_q <= $unsigned(redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_cmpReg_q);
        end
    end

    // redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_enaAnd(LOGICAL,242)
    assign redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_enaAnd_q = redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_sticky_ena_q & VCC_q;

    // redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_rdcnt(COUNTER,234)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_rdcnt_i <= $unsigned(redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_rdcnt_q = redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_rdcnt_i[1:0];

    // redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_wraddr(REG,235)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_wraddr_q <= $unsigned(redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_rdcnt_q);
        end
    end

    // redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_mem(DUALMEM,233)
    assign redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_mem_ia = $unsigned(in_c0_eni8_8_tpl);
    assign redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_mem_aa = redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_wraddr_q;
    assign redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_mem_ab = redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_rdcnt_q;
    assign redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_mem_dmem (
        .clocken1(redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_mem_aa),
        .data_a(redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_mem_ab),
        .q_b(redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_mem_iq),
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
    assign redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_mem_q = redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_mem_iq[31:0];

    // redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_notEnable(LOGICAL,229)
    assign redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_nor(LOGICAL,230)
    assign redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_nor_q = ~ (redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_notEnable_q | redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_sticky_ena_q);

    // redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_mem_last(CONSTANT,226)
    assign redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_cmp(LOGICAL,227)
    assign redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_cmp_b = {1'b0, redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_rdcnt_q};
    assign redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_cmp_q = $unsigned(redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_mem_last_q == redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_cmpReg(REG,228)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_cmpReg_q <= $unsigned(redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_cmp_q);
        end
    end

    // redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_sticky_ena(REG,231)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_nor_q == 1'b1)
        begin
            redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_sticky_ena_q <= $unsigned(redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_cmpReg_q);
        end
    end

    // redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_enaAnd(LOGICAL,232)
    assign redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_enaAnd_q = redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_sticky_ena_q & VCC_q;

    // redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_rdcnt(COUNTER,224)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_rdcnt_i <= $unsigned(redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_rdcnt_q = redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_rdcnt_i[1:0];

    // redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_wraddr(REG,225)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_wraddr_q <= $unsigned(redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_rdcnt_q);
        end
    end

    // redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_mem(DUALMEM,223)
    assign redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_mem_ia = $unsigned(in_c0_eni8_7_tpl);
    assign redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_mem_aa = redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_wraddr_q;
    assign redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_mem_ab = redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_rdcnt_q;
    assign redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_mem_dmem (
        .clocken1(redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_mem_aa),
        .data_a(redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_mem_ab),
        .q_b(redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_mem_iq),
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
    assign redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_mem_q = redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_mem_iq[31:0];

    // redist15_sync_together93_aunroll_x_in_c0_eni8_1_tpl_1(DELAY,204)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together93_aunroll_x_in_c0_eni8_1_tpl_1_q <= '0;
        end
        else
        begin
            redist15_sync_together93_aunroll_x_in_c0_eni8_1_tpl_1_q <= $unsigned(in_c0_eni8_1_tpl);
        end
    end

    // redist16_sync_together93_aunroll_x_in_c0_eni8_1_tpl_2(DELAY,205)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together93_aunroll_x_in_c0_eni8_1_tpl_2_q <= '0;
        end
        else
        begin
            redist16_sync_together93_aunroll_x_in_c0_eni8_1_tpl_2_q <= $unsigned(redist15_sync_together93_aunroll_x_in_c0_eni8_1_tpl_1_q);
        end
    end

    // redist17_sync_together93_aunroll_x_in_c0_eni8_1_tpl_5(DELAY,206)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together93_aunroll_x_in_c0_eni8_1_tpl_5_delay_0 <= '0;
            redist17_sync_together93_aunroll_x_in_c0_eni8_1_tpl_5_delay_1 <= '0;
            redist17_sync_together93_aunroll_x_in_c0_eni8_1_tpl_5_q <= '0;
        end
        else
        begin
            redist17_sync_together93_aunroll_x_in_c0_eni8_1_tpl_5_delay_0 <= $unsigned(redist16_sync_together93_aunroll_x_in_c0_eni8_1_tpl_2_q);
            redist17_sync_together93_aunroll_x_in_c0_eni8_1_tpl_5_delay_1 <= redist17_sync_together93_aunroll_x_in_c0_eni8_1_tpl_5_delay_0;
            redist17_sync_together93_aunroll_x_in_c0_eni8_1_tpl_5_q <= redist17_sync_together93_aunroll_x_in_c0_eni8_1_tpl_5_delay_1;
        end
    end

    // valid_fanout_reg14(REG,124)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg15(REG,125)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(in_i_valid);
        end
    end

    // leftShiftStage0Idx1Rng1_uid139_i_cleanups_shl45_covariance0_shift_x(BITSELECT,138)@2
    assign leftShiftStage0Idx1Rng1_uid139_i_cleanups_shl45_covariance0_shift_x_in = i_llvm_fpga_pop_i2_cleanups44_pop41_covariance2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid139_i_cleanups_shl45_covariance0_shift_x_b = leftShiftStage0Idx1Rng1_uid139_i_cleanups_shl45_covariance0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid140_i_cleanups_shl45_covariance0_shift_x(BITJOIN,139)@2
    assign leftShiftStage0Idx1_uid140_i_cleanups_shl45_covariance0_shift_x_q = {leftShiftStage0Idx1Rng1_uid139_i_cleanups_shl45_covariance0_shift_x_b, GND_q};

    // leftShiftStage0_uid142_i_cleanups_shl45_covariance0_shift_x(MUX,141)@2
    assign leftShiftStage0_uid142_i_cleanups_shl45_covariance0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid142_i_cleanups_shl45_covariance0_shift_x_s or i_llvm_fpga_pop_i2_cleanups44_pop41_covariance2_out_data_out or leftShiftStage0Idx1_uid140_i_cleanups_shl45_covariance0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid142_i_cleanups_shl45_covariance0_shift_x_s)
            1'b0 : leftShiftStage0_uid142_i_cleanups_shl45_covariance0_shift_x_q = i_llvm_fpga_pop_i2_cleanups44_pop41_covariance2_out_data_out;
            1'b1 : leftShiftStage0_uid142_i_cleanups_shl45_covariance0_shift_x_q = leftShiftStage0Idx1_uid140_i_cleanups_shl45_covariance0_shift_x_q;
            default : leftShiftStage0_uid142_i_cleanups_shl45_covariance0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl45_covariance5_vt_select_1(BITSELECT,64)@2
    assign i_cleanups_shl45_covariance5_vt_select_1_b = leftShiftStage0_uid142_i_cleanups_shl45_covariance0_shift_x_q[1:1];

    // i_cleanups_shl45_covariance5_vt_join(BITJOIN,63)@2
    assign i_cleanups_shl45_covariance5_vt_join_q = {i_cleanups_shl45_covariance5_vt_select_1_b, GND_q};

    // i_first_cleanup_xor47_covariance4(LOGICAL,67)@2
    assign i_first_cleanup_xor47_covariance4_q = i_first_cleanup46_covariance3_sel_x_b ^ VCC_q;

    // i_notcmp37_covariance26(LOGICAL,100)@2
    assign i_notcmp37_covariance26_q = i_exitcond7_covariance24_cmp_nsign_q ^ VCC_q;

    // i_or48_covariance28(LOGICAL,101)@2
    assign i_or48_covariance28_q = i_notcmp37_covariance26_q | i_first_cleanup_xor47_covariance4_q;

    // i_next_cleanups49_covariance29(MUX,96)@2
    assign i_next_cleanups49_covariance29_s = i_or48_covariance28_q;
    always @(i_next_cleanups49_covariance29_s or i_llvm_fpga_pop_i2_cleanups44_pop41_covariance2_out_data_out or i_cleanups_shl45_covariance5_vt_join_q)
    begin
        unique case (i_next_cleanups49_covariance29_s)
            1'b0 : i_next_cleanups49_covariance29_q = i_llvm_fpga_pop_i2_cleanups44_pop41_covariance2_out_data_out;
            1'b1 : i_next_cleanups49_covariance29_q = i_cleanups_shl45_covariance5_vt_join_q;
            default : i_next_cleanups49_covariance29_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups44_push41_covariance30(BLACKBOX,85)@2
    // out out_feedback_out_41@20000000
    // out out_feedback_valid_out_41@20000000
    covariance_i_llvm_fpga_push_i2_cleanups44_push41_0 thei_llvm_fpga_push_i2_cleanups44_push41_covariance30 (
        .in_data_in(i_next_cleanups49_covariance29_q),
        .in_feedback_stall_in_41(i_llvm_fpga_pop_i2_cleanups44_pop41_covariance2_out_feedback_stall_out_41),
        .in_keep_going41(redist11_i_llvm_fpga_pipeline_keep_going41_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist25_sync_together93_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_41(i_llvm_fpga_push_i2_cleanups44_push41_covariance30_out_feedback_out_41),
        .out_feedback_valid_out_41(i_llvm_fpga_push_i2_cleanups44_push41_covariance30_out_feedback_valid_out_41),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i2_162(CONSTANT,54)
    assign c_i2_162_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups44_pop41_covariance2(BLACKBOX,74)@2
    // out out_feedback_stall_out_41@20000000
    covariance_i_llvm_fpga_pop_i2_cleanups44_pop41_0 thei_llvm_fpga_pop_i2_cleanups44_pop41_covariance2 (
        .in_data_in(c_i2_162_q),
        .in_dir(redist15_sync_together93_aunroll_x_in_c0_eni8_1_tpl_1_q),
        .in_feedback_in_41(i_llvm_fpga_push_i2_cleanups44_push41_covariance30_out_feedback_out_41),
        .in_feedback_valid_in_41(i_llvm_fpga_push_i2_cleanups44_push41_covariance30_out_feedback_valid_out_41),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist25_sync_together93_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups44_pop41_covariance2_out_data_out),
        .out_feedback_stall_out_41(i_llvm_fpga_pop_i2_cleanups44_pop41_covariance2_out_feedback_stall_out_41),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup46_covariance3_sel_x(BITSELECT,10)@2
    assign i_first_cleanup46_covariance3_sel_x_b = i_llvm_fpga_pop_i2_cleanups44_pop41_covariance2_out_data_out[0:0];

    // c_i6_169(CONSTANT,58)
    assign c_i6_169_q = $unsigned(6'b111111);

    // i_fpga_indvars_iv_next6_covariance31(ADD,68)@2
    assign i_fpga_indvars_iv_next6_covariance31_a = {1'b0, i_llvm_fpga_pop_i6_fpga_indvars_iv5_pop38_covariance23_out_data_out};
    assign i_fpga_indvars_iv_next6_covariance31_b = {1'b0, c_i6_169_q};
    assign i_fpga_indvars_iv_next6_covariance31_o = $unsigned(i_fpga_indvars_iv_next6_covariance31_a) + $unsigned(i_fpga_indvars_iv_next6_covariance31_b);
    assign i_fpga_indvars_iv_next6_covariance31_q = i_fpga_indvars_iv_next6_covariance31_o[6:0];

    // bgTrunc_i_fpga_indvars_iv_next6_covariance31_sel_x(BITSELECT,3)@2
    assign bgTrunc_i_fpga_indvars_iv_next6_covariance31_sel_x_b = i_fpga_indvars_iv_next6_covariance31_q[5:0];

    // i_llvm_fpga_push_i6_fpga_indvars_iv5_push38_covariance32(BLACKBOX,90)@2
    // out out_feedback_out_38@20000000
    // out out_feedback_valid_out_38@20000000
    covariance_i_llvm_fpga_push_i6_fpga_indvars_iv5_push38_0 thei_llvm_fpga_push_i6_fpga_indvars_iv5_push38_covariance32 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next6_covariance31_sel_x_b),
        .in_feedback_stall_in_38(i_llvm_fpga_pop_i6_fpga_indvars_iv5_pop38_covariance23_out_feedback_stall_out_38),
        .in_keep_going41(redist11_i_llvm_fpga_pipeline_keep_going41_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist25_sync_together93_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_38(i_llvm_fpga_push_i6_fpga_indvars_iv5_push38_covariance32_out_feedback_out_38),
        .out_feedback_valid_out_38(i_llvm_fpga_push_i6_fpga_indvars_iv5_push38_covariance32_out_feedback_valid_out_38),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i6_3067(CONSTANT,59)
    assign c_i6_3067_q = $unsigned(6'b011110);

    // i_llvm_fpga_pop_i6_fpga_indvars_iv5_pop38_covariance23(BLACKBOX,79)@2
    // out out_feedback_stall_out_38@20000000
    covariance_i_llvm_fpga_pop_i6_fpga_indvars_iv5_pop38_0 thei_llvm_fpga_pop_i6_fpga_indvars_iv5_pop38_covariance23 (
        .in_data_in(c_i6_3067_q),
        .in_dir(redist15_sync_together93_aunroll_x_in_c0_eni8_1_tpl_1_q),
        .in_feedback_in_38(i_llvm_fpga_push_i6_fpga_indvars_iv5_push38_covariance32_out_feedback_out_38),
        .in_feedback_valid_in_38(i_llvm_fpga_push_i6_fpga_indvars_iv5_push38_covariance32_out_feedback_valid_out_38),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist25_sync_together93_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i6_fpga_indvars_iv5_pop38_covariance23_out_data_out),
        .out_feedback_stall_out_38(i_llvm_fpga_pop_i6_fpga_indvars_iv5_pop38_covariance23_out_feedback_stall_out_38),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond7_covariance24_cmp_nsign(LOGICAL,165)@2
    assign i_exitcond7_covariance24_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i6_fpga_indvars_iv5_pop38_covariance23_out_data_out[5:5]));

    // i_llvm_fpga_push_i1_notexitcond51_covariance27(BLACKBOX,84)@2
    // out out_feedback_out_10@20000000
    // out out_feedback_valid_out_10@20000000
    covariance_i_llvm_fpga_push_i1_notexitcond51_0 thei_llvm_fpga_push_i1_notexitcond51_covariance27 (
        .in_data_in(i_exitcond7_covariance24_cmp_nsign_q),
        .in_feedback_stall_in_10(i_llvm_fpga_pipeline_keep_going41_covariance6_out_not_exitcond_stall_out),
        .in_first_cleanup46(i_first_cleanup46_covariance3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist25_sync_together93_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_10(i_llvm_fpga_push_i1_notexitcond51_covariance27_out_feedback_out_10),
        .out_feedback_valid_out_10(i_llvm_fpga_push_i1_notexitcond51_covariance27_out_feedback_valid_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,113)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid159_i_next_initerations40_covariance0_shift_x(BITSELECT,158)@2
    assign rightShiftStage0Idx1Rng1_uid159_i_next_initerations40_covariance0_shift_x_b = i_llvm_fpga_pop_i2_initerations39_pop40_covariance7_out_data_out[1:1];

    // rightShiftStage0Idx1_uid161_i_next_initerations40_covariance0_shift_x(BITJOIN,160)@2
    assign rightShiftStage0Idx1_uid161_i_next_initerations40_covariance0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid159_i_next_initerations40_covariance0_shift_x_b};

    // valid_fanout_reg1(REG,111)@1 + 1
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

    // valid_fanout_reg2(REG,112)@1 + 1
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

    // i_llvm_fpga_push_i2_initerations39_push40_covariance9(BLACKBOX,86)@2
    // out out_feedback_out_40@20000000
    // out out_feedback_valid_out_40@20000000
    covariance_i_llvm_fpga_push_i2_initerations39_push40_0 thei_llvm_fpga_push_i2_initerations39_push40_covariance9 (
        .in_data_in(i_next_initerations40_covariance8_vt_join_q),
        .in_feedback_stall_in_40(i_llvm_fpga_pop_i2_initerations39_pop40_covariance7_out_feedback_stall_out_40),
        .in_keep_going41(redist11_i_llvm_fpga_pipeline_keep_going41_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_40(i_llvm_fpga_push_i2_initerations39_push40_covariance9_out_feedback_out_40),
        .out_feedback_valid_out_40(i_llvm_fpga_push_i2_initerations39_push40_covariance9_out_feedback_valid_out_40),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations39_pop40_covariance7(BLACKBOX,75)@2
    // out out_feedback_stall_out_40@20000000
    covariance_i_llvm_fpga_pop_i2_initerations39_pop40_0 thei_llvm_fpga_pop_i2_initerations39_pop40_covariance7 (
        .in_data_in(c_i2_162_q),
        .in_dir(redist15_sync_together93_aunroll_x_in_c0_eni8_1_tpl_1_q),
        .in_feedback_in_40(i_llvm_fpga_push_i2_initerations39_push40_covariance9_out_feedback_out_40),
        .in_feedback_valid_in_40(i_llvm_fpga_push_i2_initerations39_push40_covariance9_out_feedback_valid_out_40),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations39_pop40_covariance7_out_data_out),
        .out_feedback_stall_out_40(i_llvm_fpga_pop_i2_initerations39_pop40_covariance7_out_feedback_stall_out_40),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid163_i_next_initerations40_covariance0_shift_x(MUX,162)@2
    assign rightShiftStage0_uid163_i_next_initerations40_covariance0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid163_i_next_initerations40_covariance0_shift_x_s or i_llvm_fpga_pop_i2_initerations39_pop40_covariance7_out_data_out or rightShiftStage0Idx1_uid161_i_next_initerations40_covariance0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid163_i_next_initerations40_covariance0_shift_x_s)
            1'b0 : rightShiftStage0_uid163_i_next_initerations40_covariance0_shift_x_q = i_llvm_fpga_pop_i2_initerations39_pop40_covariance7_out_data_out;
            1'b1 : rightShiftStage0_uid163_i_next_initerations40_covariance0_shift_x_q = rightShiftStage0Idx1_uid161_i_next_initerations40_covariance0_shift_x_q;
            default : rightShiftStage0_uid163_i_next_initerations40_covariance0_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations40_covariance8_vt_select_0(BITSELECT,99)@2
    assign i_next_initerations40_covariance8_vt_select_0_b = rightShiftStage0_uid163_i_next_initerations40_covariance0_shift_x_q[0:0];

    // i_next_initerations40_covariance8_vt_join(BITJOIN,98)@2
    assign i_next_initerations40_covariance8_vt_join_q = {GND_q, i_next_initerations40_covariance8_vt_select_0_b};

    // i_last_initeration42_covariance10_sel_x(BITSELECT,11)@2
    assign i_last_initeration42_covariance10_sel_x_b = i_next_initerations40_covariance8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration43_covariance11(BLACKBOX,82)@2
    // out out_feedback_out_9@20000000
    // out out_feedback_valid_out_9@20000000
    covariance_i_llvm_fpga_push_i1_lastiniteration43_0 thei_llvm_fpga_push_i1_lastiniteration43_covariance11 (
        .in_data_in(i_last_initeration42_covariance10_sel_x_b),
        .in_feedback_stall_in_9(i_llvm_fpga_pipeline_keep_going41_covariance6_out_initeration_stall_out),
        .in_keep_going41(redist11_i_llvm_fpga_pipeline_keep_going41_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_9(i_llvm_fpga_push_i1_lastiniteration43_covariance11_out_feedback_out_9),
        .out_feedback_valid_out_9(i_llvm_fpga_push_i1_lastiniteration43_covariance11_out_feedback_valid_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going41_covariance6(BLACKBOX,71)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    covariance_i_llvm_fpga_pipeline_keep_going41_0 thei_llvm_fpga_pipeline_keep_going41_covariance6 (
        .in_data_in(in_c0_eni8_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration43_covariance11_out_feedback_out_9),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration43_covariance11_out_feedback_valid_out_9),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond51_covariance27_out_feedback_out_10),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond51_covariance27_out_feedback_valid_out_10),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going41_covariance6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going41_covariance6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going41_covariance6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going41_covariance6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going41_covariance6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going41_covariance6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist11_i_llvm_fpga_pipeline_keep_going41_covariance6_out_data_out_1(DELAY,200)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_llvm_fpga_pipeline_keep_going41_covariance6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist11_i_llvm_fpga_pipeline_keep_going41_covariance6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going41_covariance6_out_data_out);
        end
    end

    // i_llvm_fpga_push_i1_notcmp6992_push44_covariance39(BLACKBOX,83)@2
    // out out_feedback_out_44@20000000
    // out out_feedback_valid_out_44@20000000
    covariance_i_llvm_fpga_push_i1_notcmp6992_push44_0 thei_llvm_fpga_push_i1_notcmp6992_push44_covariance39 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp6992_pop44_covariance38_out_data_out),
        .in_feedback_stall_in_44(i_llvm_fpga_pop_i1_notcmp6992_pop44_covariance38_out_feedback_stall_out_44),
        .in_keep_going41(redist11_i_llvm_fpga_pipeline_keep_going41_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(),
        .out_feedback_out_44(i_llvm_fpga_push_i1_notcmp6992_push44_covariance39_out_feedback_out_44),
        .out_feedback_valid_out_44(i_llvm_fpga_push_i1_notcmp6992_push44_covariance39_out_feedback_valid_out_44),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist22_sync_together93_aunroll_x_in_c0_eni8_6_tpl_1(DELAY,211)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_sync_together93_aunroll_x_in_c0_eni8_6_tpl_1_q <= '0;
        end
        else
        begin
            redist22_sync_together93_aunroll_x_in_c0_eni8_6_tpl_1_q <= $unsigned(in_c0_eni8_6_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp6992_pop44_covariance38(BLACKBOX,73)@2
    // out out_feedback_stall_out_44@20000000
    covariance_i_llvm_fpga_pop_i1_notcmp6992_pop44_0 thei_llvm_fpga_pop_i1_notcmp6992_pop44_covariance38 (
        .in_data_in(redist22_sync_together93_aunroll_x_in_c0_eni8_6_tpl_1_q),
        .in_dir(redist15_sync_together93_aunroll_x_in_c0_eni8_1_tpl_1_q),
        .in_feedback_in_44(i_llvm_fpga_push_i1_notcmp6992_push44_covariance39_out_feedback_out_44),
        .in_feedback_valid_in_44(i_llvm_fpga_push_i1_notcmp6992_push44_covariance39_out_feedback_valid_out_44),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp6992_pop44_covariance38_out_data_out),
        .out_feedback_stall_out_44(i_llvm_fpga_pop_i1_notcmp6992_pop44_covariance38_out_feedback_stall_out_44),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist9_i_llvm_fpga_pop_i1_notcmp6992_pop44_covariance38_out_data_out_4(DELAY,198)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_llvm_fpga_pop_i1_notcmp6992_pop44_covariance38_out_data_out_4_delay_0 <= '0;
            redist9_i_llvm_fpga_pop_i1_notcmp6992_pop44_covariance38_out_data_out_4_delay_1 <= '0;
            redist9_i_llvm_fpga_pop_i1_notcmp6992_pop44_covariance38_out_data_out_4_delay_2 <= '0;
            redist9_i_llvm_fpga_pop_i1_notcmp6992_pop44_covariance38_out_data_out_4_q <= '0;
        end
        else
        begin
            redist9_i_llvm_fpga_pop_i1_notcmp6992_pop44_covariance38_out_data_out_4_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_notcmp6992_pop44_covariance38_out_data_out);
            redist9_i_llvm_fpga_pop_i1_notcmp6992_pop44_covariance38_out_data_out_4_delay_1 <= redist9_i_llvm_fpga_pop_i1_notcmp6992_pop44_covariance38_out_data_out_4_delay_0;
            redist9_i_llvm_fpga_pop_i1_notcmp6992_pop44_covariance38_out_data_out_4_delay_2 <= redist9_i_llvm_fpga_pop_i1_notcmp6992_pop44_covariance38_out_data_out_4_delay_1;
            redist9_i_llvm_fpga_pop_i1_notcmp6992_pop44_covariance38_out_data_out_4_q <= redist9_i_llvm_fpga_pop_i1_notcmp6992_pop44_covariance38_out_data_out_4_delay_2;
        end
    end

    // valid_fanout_reg12(REG,122)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist25_sync_together93_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg13(REG,123)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist25_sync_together93_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist12_i_llvm_fpga_pipeline_keep_going41_covariance6_out_data_out_2(DELAY,201)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_llvm_fpga_pipeline_keep_going41_covariance6_out_data_out_2_q <= '0;
        end
        else
        begin
            redist12_i_llvm_fpga_pipeline_keep_going41_covariance6_out_data_out_2_q <= $unsigned(redist11_i_llvm_fpga_pipeline_keep_going41_covariance6_out_data_out_1_q);
        end
    end

    // i_llvm_fpga_push_i1_exitcond1090_push43_covariance37(BLACKBOX,81)@3
    // out out_feedback_out_43@20000000
    // out out_feedback_valid_out_43@20000000
    covariance_i_llvm_fpga_push_i1_exitcond1090_push43_0 thei_llvm_fpga_push_i1_exitcond1090_push43_covariance37 (
        .in_data_in(i_llvm_fpga_pop_i1_exitcond1090_pop43_covariance36_out_data_out),
        .in_feedback_stall_in_43(i_llvm_fpga_pop_i1_exitcond1090_pop43_covariance36_out_feedback_stall_out_43),
        .in_keep_going41(redist12_i_llvm_fpga_pipeline_keep_going41_covariance6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(),
        .out_feedback_out_43(i_llvm_fpga_push_i1_exitcond1090_push43_covariance37_out_feedback_out_43),
        .out_feedback_valid_out_43(i_llvm_fpga_push_i1_exitcond1090_push43_covariance37_out_feedback_valid_out_43),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist21_sync_together93_aunroll_x_in_c0_eni8_5_tpl_2(DELAY,210)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_sync_together93_aunroll_x_in_c0_eni8_5_tpl_2_delay_0 <= '0;
            redist21_sync_together93_aunroll_x_in_c0_eni8_5_tpl_2_q <= '0;
        end
        else
        begin
            redist21_sync_together93_aunroll_x_in_c0_eni8_5_tpl_2_delay_0 <= $unsigned(in_c0_eni8_5_tpl);
            redist21_sync_together93_aunroll_x_in_c0_eni8_5_tpl_2_q <= redist21_sync_together93_aunroll_x_in_c0_eni8_5_tpl_2_delay_0;
        end
    end

    // i_llvm_fpga_pop_i1_exitcond1090_pop43_covariance36(BLACKBOX,72)@3
    // out out_feedback_stall_out_43@20000000
    covariance_i_llvm_fpga_pop_i1_exitcond1090_pop43_0 thei_llvm_fpga_pop_i1_exitcond1090_pop43_covariance36 (
        .in_data_in(redist21_sync_together93_aunroll_x_in_c0_eni8_5_tpl_2_q),
        .in_dir(redist16_sync_together93_aunroll_x_in_c0_eni8_1_tpl_2_q),
        .in_feedback_in_43(i_llvm_fpga_push_i1_exitcond1090_push43_covariance37_out_feedback_out_43),
        .in_feedback_valid_in_43(i_llvm_fpga_push_i1_exitcond1090_push43_covariance37_out_feedback_valid_out_43),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond1090_pop43_covariance36_out_data_out),
        .out_feedback_stall_out_43(i_llvm_fpga_pop_i1_exitcond1090_pop43_covariance36_out_feedback_stall_out_43),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist10_i_llvm_fpga_pop_i1_exitcond1090_pop43_covariance36_out_data_out_3(DELAY,199)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_llvm_fpga_pop_i1_exitcond1090_pop43_covariance36_out_data_out_3_delay_0 <= '0;
            redist10_i_llvm_fpga_pop_i1_exitcond1090_pop43_covariance36_out_data_out_3_delay_1 <= '0;
            redist10_i_llvm_fpga_pop_i1_exitcond1090_pop43_covariance36_out_data_out_3_q <= '0;
        end
        else
        begin
            redist10_i_llvm_fpga_pop_i1_exitcond1090_pop43_covariance36_out_data_out_3_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_exitcond1090_pop43_covariance36_out_data_out);
            redist10_i_llvm_fpga_pop_i1_exitcond1090_pop43_covariance36_out_data_out_3_delay_1 <= redist10_i_llvm_fpga_pop_i1_exitcond1090_pop43_covariance36_out_data_out_3_delay_0;
            redist10_i_llvm_fpga_pop_i1_exitcond1090_pop43_covariance36_out_data_out_3_q <= redist10_i_llvm_fpga_pop_i1_exitcond1090_pop43_covariance36_out_data_out_3_delay_1;
        end
    end

    // redist7_i_llvm_fpga_pop_i32_lim_ext81_pop42_covariance34_out_data_out_3_notEnable(LOGICAL,219)
    assign redist7_i_llvm_fpga_pop_i32_lim_ext81_pop42_covariance34_out_data_out_3_notEnable_q = $unsigned(~ (VCC_q));

    // redist7_i_llvm_fpga_pop_i32_lim_ext81_pop42_covariance34_out_data_out_3_nor(LOGICAL,220)
    assign redist7_i_llvm_fpga_pop_i32_lim_ext81_pop42_covariance34_out_data_out_3_nor_q = ~ (redist7_i_llvm_fpga_pop_i32_lim_ext81_pop42_covariance34_out_data_out_3_notEnable_q | redist7_i_llvm_fpga_pop_i32_lim_ext81_pop42_covariance34_out_data_out_3_sticky_ena_q);

    // redist7_i_llvm_fpga_pop_i32_lim_ext81_pop42_covariance34_out_data_out_3_cmpReg(REG,218)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_llvm_fpga_pop_i32_lim_ext81_pop42_covariance34_out_data_out_3_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist7_i_llvm_fpga_pop_i32_lim_ext81_pop42_covariance34_out_data_out_3_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist7_i_llvm_fpga_pop_i32_lim_ext81_pop42_covariance34_out_data_out_3_sticky_ena(REG,221)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_llvm_fpga_pop_i32_lim_ext81_pop42_covariance34_out_data_out_3_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist7_i_llvm_fpga_pop_i32_lim_ext81_pop42_covariance34_out_data_out_3_nor_q == 1'b1)
        begin
            redist7_i_llvm_fpga_pop_i32_lim_ext81_pop42_covariance34_out_data_out_3_sticky_ena_q <= $unsigned(redist7_i_llvm_fpga_pop_i32_lim_ext81_pop42_covariance34_out_data_out_3_cmpReg_q);
        end
    end

    // redist7_i_llvm_fpga_pop_i32_lim_ext81_pop42_covariance34_out_data_out_3_enaAnd(LOGICAL,222)
    assign redist7_i_llvm_fpga_pop_i32_lim_ext81_pop42_covariance34_out_data_out_3_enaAnd_q = redist7_i_llvm_fpga_pop_i32_lim_ext81_pop42_covariance34_out_data_out_3_sticky_ena_q & VCC_q;

    // redist7_i_llvm_fpga_pop_i32_lim_ext81_pop42_covariance34_out_data_out_3_rdcnt(COUNTER,216)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_llvm_fpga_pop_i32_lim_ext81_pop42_covariance34_out_data_out_3_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist7_i_llvm_fpga_pop_i32_lim_ext81_pop42_covariance34_out_data_out_3_rdcnt_i <= $unsigned(redist7_i_llvm_fpga_pop_i32_lim_ext81_pop42_covariance34_out_data_out_3_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist7_i_llvm_fpga_pop_i32_lim_ext81_pop42_covariance34_out_data_out_3_rdcnt_q = redist7_i_llvm_fpga_pop_i32_lim_ext81_pop42_covariance34_out_data_out_3_rdcnt_i[0:0];

    // valid_fanout_reg10(REG,120)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist25_sync_together93_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg11(REG,121)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist25_sync_together93_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i32_lim_ext81_push42_covariance35(BLACKBOX,89)@3
    // out out_feedback_out_42@20000000
    // out out_feedback_valid_out_42@20000000
    covariance_i_llvm_fpga_push_i32_lim_ext81_push42_0 thei_llvm_fpga_push_i32_lim_ext81_push42_covariance35 (
        .in_data_in(i_llvm_fpga_pop_i32_lim_ext81_pop42_covariance34_out_data_out),
        .in_feedback_stall_in_42(i_llvm_fpga_pop_i32_lim_ext81_pop42_covariance34_out_feedback_stall_out_42),
        .in_keep_going41(redist12_i_llvm_fpga_pipeline_keep_going41_covariance6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(),
        .out_feedback_out_42(i_llvm_fpga_push_i32_lim_ext81_push42_covariance35_out_feedback_out_42),
        .out_feedback_valid_out_42(i_llvm_fpga_push_i32_lim_ext81_push42_covariance35_out_feedback_valid_out_42),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist20_sync_together93_aunroll_x_in_c0_eni8_4_tpl_2(DELAY,209)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together93_aunroll_x_in_c0_eni8_4_tpl_2_delay_0 <= '0;
            redist20_sync_together93_aunroll_x_in_c0_eni8_4_tpl_2_q <= '0;
        end
        else
        begin
            redist20_sync_together93_aunroll_x_in_c0_eni8_4_tpl_2_delay_0 <= $unsigned(in_c0_eni8_4_tpl);
            redist20_sync_together93_aunroll_x_in_c0_eni8_4_tpl_2_q <= redist20_sync_together93_aunroll_x_in_c0_eni8_4_tpl_2_delay_0;
        end
    end

    // i_llvm_fpga_pop_i32_lim_ext81_pop42_covariance34(BLACKBOX,78)@3
    // out out_feedback_stall_out_42@20000000
    covariance_i_llvm_fpga_pop_i32_lim_ext81_pop42_0 thei_llvm_fpga_pop_i32_lim_ext81_pop42_covariance34 (
        .in_data_in(redist20_sync_together93_aunroll_x_in_c0_eni8_4_tpl_2_q),
        .in_dir(redist16_sync_together93_aunroll_x_in_c0_eni8_1_tpl_2_q),
        .in_feedback_in_42(i_llvm_fpga_push_i32_lim_ext81_push42_covariance35_out_feedback_out_42),
        .in_feedback_valid_in_42(i_llvm_fpga_push_i32_lim_ext81_push42_covariance35_out_feedback_valid_out_42),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(i_llvm_fpga_pop_i32_lim_ext81_pop42_covariance34_out_data_out),
        .out_feedback_stall_out_42(i_llvm_fpga_pop_i32_lim_ext81_pop42_covariance34_out_feedback_stall_out_42),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_i_llvm_fpga_pop_i32_lim_ext81_pop42_covariance34_out_data_out_3_wraddr(REG,217)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_llvm_fpga_pop_i32_lim_ext81_pop42_covariance34_out_data_out_3_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist7_i_llvm_fpga_pop_i32_lim_ext81_pop42_covariance34_out_data_out_3_wraddr_q <= $unsigned(redist7_i_llvm_fpga_pop_i32_lim_ext81_pop42_covariance34_out_data_out_3_rdcnt_q);
        end
    end

    // redist7_i_llvm_fpga_pop_i32_lim_ext81_pop42_covariance34_out_data_out_3_mem(DUALMEM,215)
    assign redist7_i_llvm_fpga_pop_i32_lim_ext81_pop42_covariance34_out_data_out_3_mem_ia = $unsigned(i_llvm_fpga_pop_i32_lim_ext81_pop42_covariance34_out_data_out);
    assign redist7_i_llvm_fpga_pop_i32_lim_ext81_pop42_covariance34_out_data_out_3_mem_aa = redist7_i_llvm_fpga_pop_i32_lim_ext81_pop42_covariance34_out_data_out_3_wraddr_q;
    assign redist7_i_llvm_fpga_pop_i32_lim_ext81_pop42_covariance34_out_data_out_3_mem_ab = redist7_i_llvm_fpga_pop_i32_lim_ext81_pop42_covariance34_out_data_out_3_rdcnt_q;
    assign redist7_i_llvm_fpga_pop_i32_lim_ext81_pop42_covariance34_out_data_out_3_mem_reset0 = ~ (resetn);
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
    ) redist7_i_llvm_fpga_pop_i32_lim_ext81_pop42_covariance34_out_data_out_3_mem_dmem (
        .clocken1(redist7_i_llvm_fpga_pop_i32_lim_ext81_pop42_covariance34_out_data_out_3_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist7_i_llvm_fpga_pop_i32_lim_ext81_pop42_covariance34_out_data_out_3_mem_reset0),
        .clock1(clock),
        .address_a(redist7_i_llvm_fpga_pop_i32_lim_ext81_pop42_covariance34_out_data_out_3_mem_aa),
        .data_a(redist7_i_llvm_fpga_pop_i32_lim_ext81_pop42_covariance34_out_data_out_3_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist7_i_llvm_fpga_pop_i32_lim_ext81_pop42_covariance34_out_data_out_3_mem_ab),
        .q_b(redist7_i_llvm_fpga_pop_i32_lim_ext81_pop42_covariance34_out_data_out_3_mem_iq),
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
    assign redist7_i_llvm_fpga_pop_i32_lim_ext81_pop42_covariance34_out_data_out_3_mem_q = redist7_i_llvm_fpga_pop_i32_lim_ext81_pop42_covariance34_out_data_out_3_mem_iq[31:0];

    // i_masked50_covariance33(LOGICAL,92)@2 + 1
    assign i_masked50_covariance33_qi = i_notcmp37_covariance26_q & i_first_cleanup46_covariance3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked50_covariance33_delay ( .xin(i_masked50_covariance33_qi), .xout(i_masked50_covariance33_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist5_i_masked50_covariance33_q_4(DELAY,194)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_masked50_covariance33_q_4_delay_0 <= '0;
            redist5_i_masked50_covariance33_q_4_delay_1 <= '0;
            redist5_i_masked50_covariance33_q_4_q <= '0;
        end
        else
        begin
            redist5_i_masked50_covariance33_q_4_delay_0 <= $unsigned(i_masked50_covariance33_q);
            redist5_i_masked50_covariance33_q_4_delay_1 <= redist5_i_masked50_covariance33_q_4_delay_0;
            redist5_i_masked50_covariance33_q_4_q <= redist5_i_masked50_covariance33_q_4_delay_1;
        end
    end

    // c_i32_064(CONSTANT,55)
    assign c_i32_064_q = $unsigned(32'b00000000000000000000000000000000);

    // i_mptr_bitcast_index81_covariance0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select(BITSELECT,187)
    assign i_mptr_bitcast_index81_covariance0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_in = c_i32_064_q[29:0];
    assign i_mptr_bitcast_index81_covariance0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_b = i_mptr_bitcast_index81_covariance0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_in[25:0];
    assign i_mptr_bitcast_index81_covariance0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_c = i_mptr_bitcast_index81_covariance0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_in[29:26];

    // valid_fanout_reg5(REG,115)@1 + 1
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

    // valid_fanout_reg6(REG,116)@1 + 1
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

    // i_llvm_fpga_push_i32_j_077_pop1994_push45_covariance15(BLACKBOX,88)@2
    // out out_feedback_out_45@20000000
    // out out_feedback_valid_out_45@20000000
    covariance_i_llvm_fpga_push_i32_j_077_pop1994_push45_0 thei_llvm_fpga_push_i32_j_077_pop1994_push45_covariance15 (
        .in_data_in(i_llvm_fpga_pop_i32_j_077_pop1994_pop45_covariance14_out_data_out),
        .in_feedback_stall_in_45(i_llvm_fpga_pop_i32_j_077_pop1994_pop45_covariance14_out_feedback_stall_out_45),
        .in_keep_going41(redist11_i_llvm_fpga_pipeline_keep_going41_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_45(i_llvm_fpga_push_i32_j_077_pop1994_push45_covariance15_out_feedback_out_45),
        .out_feedback_valid_out_45(i_llvm_fpga_push_i32_j_077_pop1994_push45_covariance15_out_feedback_valid_out_45),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist18_sync_together93_aunroll_x_in_c0_eni8_2_tpl_1(DELAY,207)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together93_aunroll_x_in_c0_eni8_2_tpl_1_q <= '0;
        end
        else
        begin
            redist18_sync_together93_aunroll_x_in_c0_eni8_2_tpl_1_q <= $unsigned(in_c0_eni8_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_j_077_pop1994_pop45_covariance14(BLACKBOX,77)@2
    // out out_feedback_stall_out_45@20000000
    covariance_i_llvm_fpga_pop_i32_j_077_pop1994_pop45_0 thei_llvm_fpga_pop_i32_j_077_pop1994_pop45_covariance14 (
        .in_data_in(redist18_sync_together93_aunroll_x_in_c0_eni8_2_tpl_1_q),
        .in_dir(redist15_sync_together93_aunroll_x_in_c0_eni8_1_tpl_1_q),
        .in_feedback_in_45(i_llvm_fpga_push_i32_j_077_pop1994_push45_covariance15_out_feedback_out_45),
        .in_feedback_valid_in_45(i_llvm_fpga_push_i32_j_077_pop1994_push45_covariance15_out_feedback_valid_out_45),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i32_j_077_pop1994_pop45_covariance14_out_data_out),
        .out_feedback_stall_out_45(i_llvm_fpga_pop_i32_j_077_pop1994_pop45_covariance14_out_feedback_stall_out_45),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_i_llvm_fpga_pop_i32_j_077_pop1994_pop45_covariance14_out_data_out_1(DELAY,197)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_llvm_fpga_pop_i32_j_077_pop1994_pop45_covariance14_out_data_out_1_q <= '0;
        end
        else
        begin
            redist8_i_llvm_fpga_pop_i32_j_077_pop1994_pop45_covariance14_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_j_077_pop1994_pop45_covariance14_out_data_out);
        end
    end

    // leftShiftStage1Idx1Rng4_uid152_i_mul12_covariance0_shift_x(BITSELECT,151)@2
    assign leftShiftStage1Idx1Rng4_uid152_i_mul12_covariance0_shift_x_in = leftShiftStage0_uid150_i_mul12_covariance0_shift_x_q[27:0];
    assign leftShiftStage1Idx1Rng4_uid152_i_mul12_covariance0_shift_x_b = leftShiftStage1Idx1Rng4_uid152_i_mul12_covariance0_shift_x_in[27:0];

    // leftShiftStage1Idx1Pad4_uid151_i_mul12_covariance0_shift_x(CONSTANT,150)
    assign leftShiftStage1Idx1Pad4_uid151_i_mul12_covariance0_shift_x_q = $unsigned(4'b0000);

    // leftShiftStage1Idx1_uid153_i_mul12_covariance0_shift_x(BITJOIN,152)@2
    assign leftShiftStage1Idx1_uid153_i_mul12_covariance0_shift_x_q = {leftShiftStage1Idx1Rng4_uid152_i_mul12_covariance0_shift_x_b, leftShiftStage1Idx1Pad4_uid151_i_mul12_covariance0_shift_x_q};

    // leftShiftStage0Idx1Rng1_uid147_i_mul12_covariance0_shift_x(BITSELECT,146)@2
    assign leftShiftStage0Idx1Rng1_uid147_i_mul12_covariance0_shift_x_in = i_llvm_fpga_pop_i32_i7_076_pop39_covariance12_out_data_out[30:0];
    assign leftShiftStage0Idx1Rng1_uid147_i_mul12_covariance0_shift_x_b = leftShiftStage0Idx1Rng1_uid147_i_mul12_covariance0_shift_x_in[30:0];

    // leftShiftStage0Idx1_uid148_i_mul12_covariance0_shift_x(BITJOIN,147)@2
    assign leftShiftStage0Idx1_uid148_i_mul12_covariance0_shift_x_q = {leftShiftStage0Idx1Rng1_uid147_i_mul12_covariance0_shift_x_b, GND_q};

    // valid_fanout_reg4(REG,114)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg9(REG,119)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(in_i_valid);
        end
    end

    // c_i32_166(CONSTANT,56)
    assign c_i32_166_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc16_covariance21(ADD,69)@2
    assign i_inc16_covariance21_a = {1'b0, i_llvm_fpga_pop_i32_i7_076_pop39_covariance12_out_data_out};
    assign i_inc16_covariance21_b = {1'b0, c_i32_166_q};
    assign i_inc16_covariance21_o = $unsigned(i_inc16_covariance21_a) + $unsigned(i_inc16_covariance21_b);
    assign i_inc16_covariance21_q = i_inc16_covariance21_o[32:0];

    // bgTrunc_i_inc16_covariance21_sel_x(BITSELECT,4)@2
    assign bgTrunc_i_inc16_covariance21_sel_x_b = i_inc16_covariance21_q[31:0];

    // i_llvm_fpga_push_i32_i7_076_push39_covariance22(BLACKBOX,87)@2
    // out out_feedback_out_39@20000000
    // out out_feedback_valid_out_39@20000000
    covariance_i_llvm_fpga_push_i32_i7_076_push39_0 thei_llvm_fpga_push_i32_i7_076_push39_covariance22 (
        .in_data_in(bgTrunc_i_inc16_covariance21_sel_x_b),
        .in_feedback_stall_in_39(i_llvm_fpga_pop_i32_i7_076_pop39_covariance12_out_feedback_stall_out_39),
        .in_keep_going41(redist11_i_llvm_fpga_pipeline_keep_going41_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(),
        .out_feedback_out_39(i_llvm_fpga_push_i32_i7_076_push39_covariance22_out_feedback_out_39),
        .out_feedback_valid_out_39(i_llvm_fpga_push_i32_i7_076_push39_covariance22_out_feedback_valid_out_39),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i7_076_pop39_covariance12(BLACKBOX,76)@2
    // out out_feedback_stall_out_39@20000000
    covariance_i_llvm_fpga_pop_i32_i7_076_pop39_0 thei_llvm_fpga_pop_i32_i7_076_pop39_covariance12 (
        .in_data_in(c_i32_064_q),
        .in_dir(redist15_sync_together93_aunroll_x_in_c0_eni8_1_tpl_1_q),
        .in_feedback_in_39(i_llvm_fpga_push_i32_i7_076_push39_covariance22_out_feedback_out_39),
        .in_feedback_valid_in_39(i_llvm_fpga_push_i32_i7_076_push39_covariance22_out_feedback_valid_out_39),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_i7_076_pop39_covariance12_out_data_out),
        .out_feedback_stall_out_39(i_llvm_fpga_pop_i32_i7_076_pop39_covariance12_out_feedback_stall_out_39),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // leftShiftStage0_uid150_i_mul12_covariance0_shift_x(MUX,149)@2
    assign leftShiftStage0_uid150_i_mul12_covariance0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid150_i_mul12_covariance0_shift_x_s or i_llvm_fpga_pop_i32_i7_076_pop39_covariance12_out_data_out or leftShiftStage0Idx1_uid148_i_mul12_covariance0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid150_i_mul12_covariance0_shift_x_s)
            1'b0 : leftShiftStage0_uid150_i_mul12_covariance0_shift_x_q = i_llvm_fpga_pop_i32_i7_076_pop39_covariance12_out_data_out;
            1'b1 : leftShiftStage0_uid150_i_mul12_covariance0_shift_x_q = leftShiftStage0Idx1_uid148_i_mul12_covariance0_shift_x_q;
            default : leftShiftStage0_uid150_i_mul12_covariance0_shift_x_q = 32'b0;
        endcase
    end

    // leftShiftStage1_uid155_i_mul12_covariance0_shift_x(MUX,154)@2
    assign leftShiftStage1_uid155_i_mul12_covariance0_shift_x_s = VCC_q;
    always @(leftShiftStage1_uid155_i_mul12_covariance0_shift_x_s or leftShiftStage0_uid150_i_mul12_covariance0_shift_x_q or leftShiftStage1Idx1_uid153_i_mul12_covariance0_shift_x_q)
    begin
        unique case (leftShiftStage1_uid155_i_mul12_covariance0_shift_x_s)
            1'b0 : leftShiftStage1_uid155_i_mul12_covariance0_shift_x_q = leftShiftStage0_uid150_i_mul12_covariance0_shift_x_q;
            1'b1 : leftShiftStage1_uid155_i_mul12_covariance0_shift_x_q = leftShiftStage1Idx1_uid153_i_mul12_covariance0_shift_x_q;
            default : leftShiftStage1_uid155_i_mul12_covariance0_shift_x_q = 32'b0;
        endcase
    end

    // i_mul12_covariance13_vt_select_31(BITSELECT,95)@2
    assign i_mul12_covariance13_vt_select_31_b = leftShiftStage1_uid155_i_mul12_covariance0_shift_x_q[31:5];

    // redist4_i_mul12_covariance13_vt_select_31_b_1(DELAY,193)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_mul12_covariance13_vt_select_31_b_1_q <= '0;
        end
        else
        begin
            redist4_i_mul12_covariance13_vt_select_31_b_1_q <= $unsigned(i_mul12_covariance13_vt_select_31_b);
        end
    end

    // i_mul12_covariance13_vt_const_4(CONSTANT,93)
    assign i_mul12_covariance13_vt_const_4_q = $unsigned(5'b00000);

    // i_mul12_covariance13_vt_join(BITJOIN,94)@3
    assign i_mul12_covariance13_vt_join_q = {redist4_i_mul12_covariance13_vt_select_31_b_1_q, i_mul12_covariance13_vt_const_4_q};

    // i_add13_covariance16(ADD,61)@3
    assign i_add13_covariance16_a = {1'b0, i_mul12_covariance13_vt_join_q};
    assign i_add13_covariance16_b = {1'b0, redist8_i_llvm_fpga_pop_i32_j_077_pop1994_pop45_covariance14_out_data_out_1_q};
    assign i_add13_covariance16_o = $unsigned(i_add13_covariance16_a) + $unsigned(i_add13_covariance16_b);
    assign i_add13_covariance16_q = i_add13_covariance16_o[32:0];

    // i_mptr_bitcast_index81_covariance0_add_x_BitSelect_for_b_tessel0_1(BITSELECT,181)@3
    assign i_mptr_bitcast_index81_covariance0_add_x_BitSelect_for_b_tessel0_1_b = $unsigned(i_add13_covariance16_q[31:0]);

    // redist1_i_mptr_bitcast_index81_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1(DELAY,190)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_mptr_bitcast_index81_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1_q <= '0;
        end
        else
        begin
            redist1_i_mptr_bitcast_index81_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1_q <= $unsigned(i_mptr_bitcast_index81_covariance0_add_x_BitSelect_for_b_tessel0_1_b);
        end
    end

    // i_mptr_bitcast_index81_covariance0_c_i2_01_x(CONSTANT,15)
    assign i_mptr_bitcast_index81_covariance0_c_i2_01_x_q = $unsigned(2'b00);

    // i_mptr_bitcast_index81_covariance0_add_x_BitSelect_for_b_BitJoin_for_b(BITJOIN,183)@4
    assign i_mptr_bitcast_index81_covariance0_add_x_BitSelect_for_b_BitJoin_for_b_q = {i_mptr_bitcast_index81_covariance0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_b, redist1_i_mptr_bitcast_index81_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1_q, i_mptr_bitcast_index81_covariance0_c_i2_01_x_q};

    // valid_fanout_reg7(REG,117)@1 + 1
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

    // valid_fanout_reg8(REG,118)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_p1025i32_mptr_bitcast828697_push47_covariance19(BLACKBOX,91)@2
    // out out_feedback_out_47@20000000
    // out out_feedback_valid_out_47@20000000
    covariance_i_llvm_fpga_push_p1025i32_mptr_bitcast828697_push47_0 thei_llvm_fpga_push_p1025i32_mptr_bitcast828697_push47_covariance19 (
        .in_data_in(i_llvm_fpga_pop_p1025i32_mptr_bitcast828697_pop47_covariance18_out_data_out),
        .in_feedback_stall_in_47(i_llvm_fpga_pop_p1025i32_mptr_bitcast828697_pop47_covariance18_out_feedback_stall_out_47),
        .in_keep_going41(redist11_i_llvm_fpga_pipeline_keep_going41_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_47(i_llvm_fpga_push_p1025i32_mptr_bitcast828697_push47_covariance19_out_feedback_out_47),
        .out_feedback_valid_out_47(i_llvm_fpga_push_p1025i32_mptr_bitcast828697_push47_covariance19_out_feedback_valid_out_47),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist19_sync_together93_aunroll_x_in_c0_eni8_3_tpl_1(DELAY,208)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together93_aunroll_x_in_c0_eni8_3_tpl_1_q <= '0;
        end
        else
        begin
            redist19_sync_together93_aunroll_x_in_c0_eni8_3_tpl_1_q <= $unsigned(in_c0_eni8_3_tpl);
        end
    end

    // i_llvm_fpga_pop_p1025i32_mptr_bitcast828697_pop47_covariance18(BLACKBOX,80)@2
    // out out_feedback_stall_out_47@20000000
    covariance_i_llvm_fpga_pop_p1025i32_mptr_bitcast828697_pop47_0 thei_llvm_fpga_pop_p1025i32_mptr_bitcast828697_pop47_covariance18 (
        .in_data_in(redist19_sync_together93_aunroll_x_in_c0_eni8_3_tpl_1_q),
        .in_dir(redist15_sync_together93_aunroll_x_in_c0_eni8_1_tpl_1_q),
        .in_feedback_in_47(i_llvm_fpga_push_p1025i32_mptr_bitcast828697_push47_covariance19_out_feedback_out_47),
        .in_feedback_valid_in_47(i_llvm_fpga_push_p1025i32_mptr_bitcast828697_push47_covariance19_out_feedback_valid_out_47),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_p1025i32_mptr_bitcast828697_pop47_covariance18_out_data_out),
        .out_feedback_stall_out_47(i_llvm_fpga_pop_p1025i32_mptr_bitcast828697_pop47_covariance18_out_feedback_stall_out_47),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_i_llvm_fpga_pop_p1025i32_mptr_bitcast828697_pop47_covariance18_out_data_out_2(DELAY,195)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_llvm_fpga_pop_p1025i32_mptr_bitcast828697_pop47_covariance18_out_data_out_2_delay_0 <= '0;
            redist6_i_llvm_fpga_pop_p1025i32_mptr_bitcast828697_pop47_covariance18_out_data_out_2_q <= '0;
        end
        else
        begin
            redist6_i_llvm_fpga_pop_p1025i32_mptr_bitcast828697_pop47_covariance18_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_p1025i32_mptr_bitcast828697_pop47_covariance18_out_data_out);
            redist6_i_llvm_fpga_pop_p1025i32_mptr_bitcast828697_pop47_covariance18_out_data_out_2_q <= redist6_i_llvm_fpga_pop_p1025i32_mptr_bitcast828697_pop47_covariance18_out_data_out_2_delay_0;
        end
    end

    // i_mptr_bitcast_index81_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,188)@4
    assign i_mptr_bitcast_index81_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b = $unsigned(redist6_i_llvm_fpga_pop_p1025i32_mptr_bitcast828697_pop47_covariance18_out_data_out_2_q[59:0]);
    assign i_mptr_bitcast_index81_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c = $unsigned(redist6_i_llvm_fpga_pop_p1025i32_mptr_bitcast828697_pop47_covariance18_out_data_out_2_q[63:60]);

    // i_mptr_bitcast_index81_covariance0_add_x_p1_of_2(ADD,172)@4 + 1
    assign i_mptr_bitcast_index81_covariance0_add_x_p1_of_2_a = {1'b0, i_mptr_bitcast_index81_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b};
    assign i_mptr_bitcast_index81_covariance0_add_x_p1_of_2_b = {1'b0, i_mptr_bitcast_index81_covariance0_add_x_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index81_covariance0_add_x_p1_of_2_o <= 61'b0;
        end
        else
        begin
            i_mptr_bitcast_index81_covariance0_add_x_p1_of_2_o <= $unsigned(i_mptr_bitcast_index81_covariance0_add_x_p1_of_2_a) + $unsigned(i_mptr_bitcast_index81_covariance0_add_x_p1_of_2_b);
        end
    end
    assign i_mptr_bitcast_index81_covariance0_add_x_p1_of_2_c[0] = i_mptr_bitcast_index81_covariance0_add_x_p1_of_2_o[60];
    assign i_mptr_bitcast_index81_covariance0_add_x_p1_of_2_q = i_mptr_bitcast_index81_covariance0_add_x_p1_of_2_o[59:0];

    // i_mptr_bitcast_index81_covariance0_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,186)@5
    assign i_mptr_bitcast_index81_covariance0_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_mptr_bitcast_index81_covariance0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_c};

    // redist0_i_mptr_bitcast_index81_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1(DELAY,189)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_mptr_bitcast_index81_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist0_i_mptr_bitcast_index81_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q <= $unsigned(i_mptr_bitcast_index81_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c);
        end
    end

    // i_mptr_bitcast_index81_covariance0_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,179)@5
    assign i_mptr_bitcast_index81_covariance0_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist0_i_mptr_bitcast_index81_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q};

    // i_mptr_bitcast_index81_covariance0_add_x_p2_of_2(ADD,173)@5 + 1
    assign i_mptr_bitcast_index81_covariance0_add_x_p2_of_2_cin = i_mptr_bitcast_index81_covariance0_add_x_p1_of_2_c;
    assign i_mptr_bitcast_index81_covariance0_add_x_p2_of_2_a = { {1'b0, i_mptr_bitcast_index81_covariance0_add_x_BitSelect_for_a_BitJoin_for_c_q}, 1'b1 };
    assign i_mptr_bitcast_index81_covariance0_add_x_p2_of_2_b = { {1'b0, i_mptr_bitcast_index81_covariance0_add_x_BitSelect_for_b_BitJoin_for_c_q}, i_mptr_bitcast_index81_covariance0_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index81_covariance0_add_x_p2_of_2_o <= 7'b0;
        end
        else
        begin
            i_mptr_bitcast_index81_covariance0_add_x_p2_of_2_o <= $unsigned(i_mptr_bitcast_index81_covariance0_add_x_p2_of_2_a) + $unsigned(i_mptr_bitcast_index81_covariance0_add_x_p2_of_2_b);
        end
    end
    assign i_mptr_bitcast_index81_covariance0_add_x_p2_of_2_q = i_mptr_bitcast_index81_covariance0_add_x_p2_of_2_o[5:1];

    // redist2_i_mptr_bitcast_index81_covariance0_add_x_p1_of_2_q_1(DELAY,191)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_mptr_bitcast_index81_covariance0_add_x_p1_of_2_q_1_q <= '0;
        end
        else
        begin
            redist2_i_mptr_bitcast_index81_covariance0_add_x_p1_of_2_q_1_q <= $unsigned(i_mptr_bitcast_index81_covariance0_add_x_p1_of_2_q);
        end
    end

    // i_mptr_bitcast_index81_covariance0_add_x_BitJoin_for_q(BITJOIN,174)@6
    assign i_mptr_bitcast_index81_covariance0_add_x_BitJoin_for_q_q = {i_mptr_bitcast_index81_covariance0_add_x_p2_of_2_q, redist2_i_mptr_bitcast_index81_covariance0_add_x_p1_of_2_q_1_q};

    // i_mptr_bitcast_index81_covariance0_dupName_0_trunc_sel_x(BITSELECT,12)@6
    assign i_mptr_bitcast_index81_covariance0_dupName_0_trunc_sel_x_b = i_mptr_bitcast_index81_covariance0_add_x_BitJoin_for_q_q[63:0];

    // redist13_i_llvm_fpga_pipeline_keep_going41_covariance6_out_data_out_5(DELAY,202)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_llvm_fpga_pipeline_keep_going41_covariance6_out_data_out_5_delay_0 <= '0;
            redist13_i_llvm_fpga_pipeline_keep_going41_covariance6_out_data_out_5_delay_1 <= '0;
            redist13_i_llvm_fpga_pipeline_keep_going41_covariance6_out_data_out_5_q <= '0;
        end
        else
        begin
            redist13_i_llvm_fpga_pipeline_keep_going41_covariance6_out_data_out_5_delay_0 <= $unsigned(redist12_i_llvm_fpga_pipeline_keep_going41_covariance6_out_data_out_2_q);
            redist13_i_llvm_fpga_pipeline_keep_going41_covariance6_out_data_out_5_delay_1 <= redist13_i_llvm_fpga_pipeline_keep_going41_covariance6_out_data_out_5_delay_0;
            redist13_i_llvm_fpga_pipeline_keep_going41_covariance6_out_data_out_5_q <= redist13_i_llvm_fpga_pipeline_keep_going41_covariance6_out_data_out_5_delay_1;
        end
    end

    // redist14_i_first_cleanup_xor47_covariance4_q_4(DELAY,203)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_first_cleanup_xor47_covariance4_q_4_delay_0 <= '0;
            redist14_i_first_cleanup_xor47_covariance4_q_4_delay_1 <= '0;
            redist14_i_first_cleanup_xor47_covariance4_q_4_delay_2 <= '0;
            redist14_i_first_cleanup_xor47_covariance4_q_4_q <= '0;
        end
        else
        begin
            redist14_i_first_cleanup_xor47_covariance4_q_4_delay_0 <= $unsigned(i_first_cleanup_xor47_covariance4_q);
            redist14_i_first_cleanup_xor47_covariance4_q_4_delay_1 <= redist14_i_first_cleanup_xor47_covariance4_q_4_delay_0;
            redist14_i_first_cleanup_xor47_covariance4_q_4_delay_2 <= redist14_i_first_cleanup_xor47_covariance4_q_4_delay_1;
            redist14_i_first_cleanup_xor47_covariance4_q_4_q <= redist14_i_first_cleanup_xor47_covariance4_q_4_delay_2;
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,27)@6
    assign out_c0_exi10257_0_tpl = GND_q;
    assign out_c0_exi10257_1_tpl = redist14_i_first_cleanup_xor47_covariance4_q_4_q;
    assign out_c0_exi10257_2_tpl = redist13_i_llvm_fpga_pipeline_keep_going41_covariance6_out_data_out_5_q;
    assign out_c0_exi10257_3_tpl = i_mptr_bitcast_index81_covariance0_dupName_0_trunc_sel_x_b;
    assign out_c0_exi10257_4_tpl = redist5_i_masked50_covariance33_q_4_q;
    assign out_c0_exi10257_5_tpl = redist7_i_llvm_fpga_pop_i32_lim_ext81_pop42_covariance34_out_data_out_3_mem_q;
    assign out_c0_exi10257_6_tpl = redist10_i_llvm_fpga_pop_i1_exitcond1090_pop43_covariance36_out_data_out_3_q;
    assign out_c0_exi10257_7_tpl = redist9_i_llvm_fpga_pop_i1_notcmp6992_pop44_covariance38_out_data_out_4_q;
    assign out_c0_exi10257_8_tpl = redist17_sync_together93_aunroll_x_in_c0_eni8_1_tpl_5_q;
    assign out_c0_exi10257_9_tpl = redist23_sync_together93_aunroll_x_in_c0_eni8_7_tpl_5_mem_q;
    assign out_c0_exi10257_10_tpl = redist24_sync_together93_aunroll_x_in_c0_eni8_8_tpl_5_mem_q;
    assign out_o_valid = redist3_valid_fanout_reg0_q_3_q;
    assign out_unnamed_covariance0 = GND_q;

    // ext_sig_sync_out(GPOUT,60)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going41_covariance6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going41_covariance6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going41_covariance6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going41_covariance6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,108)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going41_covariance6_out_pipeline_valid_out;

endmodule
