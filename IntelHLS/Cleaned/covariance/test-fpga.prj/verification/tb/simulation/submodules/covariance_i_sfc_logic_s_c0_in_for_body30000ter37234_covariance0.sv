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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body34_covariances_c0_enter37234_covariance0
// Created for function/kernel covariance
// SystemVerilog created on Tue Jun 13 02:07:48 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_i_sfc_logic_s_c0_in_for_body30000ter37234_covariance0 (
    output wire [0:0] out_c0_exi26_0_tpl,
    output wire [0:0] out_c0_exi26_1_tpl,
    output wire [0:0] out_c0_exi26_2_tpl,
    output wire [63:0] out_c0_exi26_3_tpl,
    output wire [0:0] out_c0_exi26_4_tpl,
    output wire [31:0] out_c0_exi26_5_tpl,
    output wire [63:0] out_c0_exi26_6_tpl,
    output wire [0:0] out_c0_exi26_7_tpl,
    output wire [31:0] out_c0_exi26_8_tpl,
    output wire [31:0] out_c0_exi26_9_tpl,
    output wire [31:0] out_c0_exi26_10_tpl,
    output wire [0:0] out_c0_exi26_11_tpl,
    output wire [0:0] out_c0_exi26_12_tpl,
    output wire [0:0] out_c0_exi26_13_tpl,
    output wire [0:0] out_c0_exi26_14_tpl,
    output wire [0:0] out_c0_exi26_15_tpl,
    output wire [0:0] out_c0_exi26_16_tpl,
    output wire [31:0] out_c0_exi26_17_tpl,
    output wire [31:0] out_c0_exi26_18_tpl,
    output wire [31:0] out_c0_exi26_19_tpl,
    output wire [31:0] out_c0_exi26_20_tpl,
    output wire [32:0] out_c0_exi26_21_tpl,
    output wire [0:0] out_c0_exi26_22_tpl,
    output wire [0:0] out_c0_exi26_23_tpl,
    output wire [0:0] out_c0_exi26_24_tpl,
    output wire [31:0] out_c0_exi26_25_tpl,
    output wire [31:0] out_c0_exi26_26_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_covariance0,
    input wire [0:0] in_c0_eni23_0_tpl,
    input wire [0:0] in_c0_eni23_1_tpl,
    input wire [31:0] in_c0_eni23_2_tpl,
    input wire [0:0] in_c0_eni23_3_tpl,
    input wire [0:0] in_c0_eni23_4_tpl,
    input wire [31:0] in_c0_eni23_5_tpl,
    input wire [31:0] in_c0_eni23_6_tpl,
    input wire [31:0] in_c0_eni23_7_tpl,
    input wire [31:0] in_c0_eni23_8_tpl,
    input wire [0:0] in_c0_eni23_9_tpl,
    input wire [0:0] in_c0_eni23_10_tpl,
    input wire [0:0] in_c0_eni23_11_tpl,
    input wire [0:0] in_c0_eni23_12_tpl,
    input wire [0:0] in_c0_eni23_13_tpl,
    input wire [31:0] in_c0_eni23_14_tpl,
    input wire [31:0] in_c0_eni23_15_tpl,
    input wire [31:0] in_c0_eni23_16_tpl,
    input wire [31:0] in_c0_eni23_17_tpl,
    input wire [32:0] in_c0_eni23_18_tpl,
    input wire [0:0] in_c0_eni23_19_tpl,
    input wire [0:0] in_c0_eni23_20_tpl,
    input wire [0:0] in_c0_eni23_21_tpl,
    input wire [31:0] in_c0_eni23_22_tpl,
    input wire [31:0] in_c0_eni23_23_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_covariance6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_covariance6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_intel_reserved_ffwd_3_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [5:0] bgTrunc_i_fpga_indvars_iv_next12_covariance41_sel_x_b;
    wire [31:0] bgTrunc_i_inc44_covariance31_sel_x_b;
    wire [0:0] i_first_cleanup_covariance3_sel_x_b;
    wire [0:0] i_last_initeration_covariance10_sel_x_b;
    wire [63:0] i_mptr_bitcast_index79_covariance0_dupName_0_trunc_sel_x_b;
    wire [1:0] i_mptr_bitcast_index79_covariance0_c_i2_01_x_q;
    wire [63:0] i_mptr_bitcast_index_covariance0_dupName_0_trunc_sel_x_b;
    wire [1:0] c_i2_198_q;
    wire [31:0] c_i32_0100_q;
    wire [31:0] c_i32_1102_q;
    wire [5:0] c_i6_1105_q;
    wire [5:0] c_i6_30103_q;
    wire [32:0] i_add36_covariance16_a;
    wire [32:0] i_add36_covariance16_b;
    logic [32:0] i_add36_covariance16_o;
    wire [32:0] i_add36_covariance16_q;
    wire [32:0] i_add39_covariance27_a;
    wire [32:0] i_add39_covariance27_b;
    logic [32:0] i_add39_covariance27_o;
    wire [32:0] i_add39_covariance27_q;
    wire [1:0] i_cleanups_shl_covariance5_vt_join_q;
    wire [0:0] i_cleanups_shl_covariance5_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor_covariance4_q;
    wire [6:0] i_fpga_indvars_iv_next12_covariance41_a;
    wire [6:0] i_fpga_indvars_iv_next12_covariance41_b;
    logic [6:0] i_fpga_indvars_iv_next12_covariance41_o;
    wire [6:0] i_fpga_indvars_iv_next12_covariance41_q;
    wire [32:0] i_inc44_covariance31_a;
    wire [32:0] i_inc44_covariance31_b;
    logic [32:0] i_inc44_covariance31_o;
    wire [32:0] i_inc44_covariance31_q;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast828624_covariance29_out_dest_data_out_3_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast828625_covariance18_out_dest_data_out_3_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_covariance6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_covariance6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_covariance6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_covariance6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_covariance6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond18109_pop71_covariance56_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond18109_pop71_covariance56_out_feedback_stall_out_71;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond21103_pop67_covariance50_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond21103_pop67_covariance50_out_feedback_stall_out_67;
    wire [0:0] i_llvm_fpga_pop_i1_forked27108_pop70_covariance54_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_forked27108_pop70_covariance54_out_feedback_stall_out_70;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop50112_pop74_covariance22_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop50112_pop74_covariance22_out_feedback_stall_out_74;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop25107_pop69_covariance20_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop25107_pop69_covariance20_out_feedback_stall_out_69;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp26110_pop72_covariance58_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp26110_pop72_covariance58_out_feedback_stall_out_72;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp31105_pop68_covariance52_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp31105_pop68_covariance52_out_feedback_stall_out_68;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups_pop62_covariance2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop62_covariance2_out_feedback_stall_out_62;
    wire [1:0] i_llvm_fpga_pop_i2_initerations_pop61_covariance7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations_pop61_covariance7_out_feedback_stall_out_61;
    wire [31:0] i_llvm_fpga_pop_i32_i21_072_pop2499_pop65_covariance14_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i21_072_pop2499_pop65_covariance14_out_feedback_stall_out_65;
    wire [31:0] i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_feedback_stall_out_73;
    wire [31:0] i_llvm_fpga_pop_i32_k_069_pop59_covariance12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_k_069_pop59_covariance12_out_feedback_stall_out_59;
    wire [31:0] i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_feedback_stall_out_63;
    wire [31:0] i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_feedback_stall_out_66;
    wire [31:0] i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_feedback_stall_out_64;
    wire [5:0] i_llvm_fpga_pop_i6_fpga_indvars_iv11_pop58_covariance33_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv11_pop58_covariance33_out_feedback_stall_out_58;
    wire [0:0] i_llvm_fpga_push_i1_exitcond18109_push71_covariance57_out_feedback_out_71;
    wire [0:0] i_llvm_fpga_push_i1_exitcond18109_push71_covariance57_out_feedback_valid_out_71;
    wire [0:0] i_llvm_fpga_push_i1_exitcond21103_push67_covariance51_out_feedback_out_67;
    wire [0:0] i_llvm_fpga_push_i1_exitcond21103_push67_covariance51_out_feedback_valid_out_67;
    wire [0:0] i_llvm_fpga_push_i1_forked27108_push70_covariance55_out_feedback_out_70;
    wire [0:0] i_llvm_fpga_push_i1_forked27108_push70_covariance55_out_feedback_valid_out_70;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_covariance11_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_covariance11_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop50112_push74_covariance23_out_feedback_out_74;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop50112_push74_covariance23_out_feedback_valid_out_74;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_pop25107_push69_covariance21_out_feedback_out_69;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_pop25107_push69_covariance21_out_feedback_valid_out_69;
    wire [0:0] i_llvm_fpga_push_i1_notcmp26110_push72_covariance59_out_feedback_out_72;
    wire [0:0] i_llvm_fpga_push_i1_notcmp26110_push72_covariance59_out_feedback_valid_out_72;
    wire [0:0] i_llvm_fpga_push_i1_notcmp31105_push68_covariance53_out_feedback_out_68;
    wire [0:0] i_llvm_fpga_push_i1_notcmp31105_push68_covariance53_out_feedback_valid_out_68;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_covariance37_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_covariance37_out_feedback_valid_out_3;
    wire [7:0] i_llvm_fpga_push_i2_cleanups_push62_covariance40_out_feedback_out_62;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push62_covariance40_out_feedback_valid_out_62;
    wire [7:0] i_llvm_fpga_push_i2_initerations_push61_covariance9_out_feedback_out_61;
    wire [0:0] i_llvm_fpga_push_i2_initerations_push61_covariance9_out_feedback_valid_out_61;
    wire [31:0] i_llvm_fpga_push_i32_i21_072_pop2499_push65_covariance15_out_feedback_out_65;
    wire [0:0] i_llvm_fpga_push_i32_i21_072_pop2499_push65_covariance15_out_feedback_valid_out_65;
    wire [31:0] i_llvm_fpga_push_i32_j26_071_pop49111_push73_covariance26_out_feedback_out_73;
    wire [0:0] i_llvm_fpga_push_i32_j26_071_pop49111_push73_covariance26_out_feedback_valid_out_73;
    wire [31:0] i_llvm_fpga_push_i32_k_069_push59_covariance32_out_feedback_out_59;
    wire [0:0] i_llvm_fpga_push_i32_k_069_push59_covariance32_out_feedback_valid_out_59;
    wire [31:0] i_llvm_fpga_push_i32_lim_ext84_push63_covariance45_out_feedback_out_63;
    wire [0:0] i_llvm_fpga_push_i32_lim_ext84_push63_covariance45_out_feedback_valid_out_63;
    wire [31:0] i_llvm_fpga_push_i32_mul47101_push66_covariance49_out_feedback_out_66;
    wire [0:0] i_llvm_fpga_push_i32_mul47101_push66_covariance49_out_feedback_valid_out_66;
    wire [31:0] i_llvm_fpga_push_i32_reorder_limiter_enter88_push64_covariance47_out_feedback_out_64;
    wire [0:0] i_llvm_fpga_push_i32_reorder_limiter_enter88_push64_covariance47_out_feedback_valid_out_64;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv11_push58_covariance42_out_feedback_out_58;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv11_push58_covariance42_out_feedback_valid_out_58;
    wire [0:0] i_masked_covariance43_qi;
    reg [0:0] i_masked_covariance43_q;
    wire [0:0] i_memdep_phi3_or_covariance24_qi;
    reg [0:0] i_memdep_phi3_or_covariance24_q;
    wire [4:0] i_mul35_covariance13_vt_const_4_q;
    wire [31:0] i_mul35_covariance13_vt_join_q;
    wire [26:0] i_mul35_covariance13_vt_select_31_b;
    wire [0:0] i_next_cleanups_covariance39_s;
    reg [1:0] i_next_cleanups_covariance39_q;
    wire [1:0] i_next_initerations_covariance8_vt_join_q;
    wire [0:0] i_next_initerations_covariance8_vt_select_0_b;
    wire [0:0] i_notcmp_covariance36_q;
    wire [0:0] i_or_covariance38_q;
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
    (* dont_merge *) reg [0:0] valid_fanout_reg20_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg21_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg22_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg23_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg24_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg25_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg26_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg27_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg28_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg29_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg30_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg31_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid205_i_cleanups_shl_covariance0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid205_i_cleanups_shl_covariance0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid206_i_cleanups_shl_covariance0_shift_x_q;
    wire [0:0] leftShiftStage0_uid208_i_cleanups_shl_covariance0_shift_x_s;
    reg [1:0] leftShiftStage0_uid208_i_cleanups_shl_covariance0_shift_x_q;
    wire [30:0] leftShiftStage0Idx1Rng1_uid213_i_mul35_covariance0_shift_x_in;
    wire [30:0] leftShiftStage0Idx1Rng1_uid213_i_mul35_covariance0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid214_i_mul35_covariance0_shift_x_q;
    wire [0:0] leftShiftStage0_uid216_i_mul35_covariance0_shift_x_s;
    reg [31:0] leftShiftStage0_uid216_i_mul35_covariance0_shift_x_q;
    wire [3:0] leftShiftStage1Idx1Pad4_uid217_i_mul35_covariance0_shift_x_q;
    wire [27:0] leftShiftStage1Idx1Rng4_uid218_i_mul35_covariance0_shift_x_in;
    wire [27:0] leftShiftStage1Idx1Rng4_uid218_i_mul35_covariance0_shift_x_b;
    wire [31:0] leftShiftStage1Idx1_uid219_i_mul35_covariance0_shift_x_q;
    wire [0:0] leftShiftStage1_uid221_i_mul35_covariance0_shift_x_s;
    reg [31:0] leftShiftStage1_uid221_i_mul35_covariance0_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid225_i_next_initerations_covariance0_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid227_i_next_initerations_covariance0_shift_x_q;
    wire [0:0] rightShiftStage0_uid229_i_next_initerations_covariance0_shift_x_s;
    reg [1:0] rightShiftStage0_uid229_i_next_initerations_covariance0_shift_x_q;
    wire [0:0] i_exitcond13_covariance34_cmp_nsign_q;
    wire [60:0] i_mptr_bitcast_index79_covariance0_add_x_p1_of_2_a;
    wire [60:0] i_mptr_bitcast_index79_covariance0_add_x_p1_of_2_b;
    logic [60:0] i_mptr_bitcast_index79_covariance0_add_x_p1_of_2_o;
    wire [0:0] i_mptr_bitcast_index79_covariance0_add_x_p1_of_2_c;
    wire [59:0] i_mptr_bitcast_index79_covariance0_add_x_p1_of_2_q;
    wire [6:0] i_mptr_bitcast_index79_covariance0_add_x_p2_of_2_a;
    wire [6:0] i_mptr_bitcast_index79_covariance0_add_x_p2_of_2_b;
    logic [6:0] i_mptr_bitcast_index79_covariance0_add_x_p2_of_2_o;
    wire [0:0] i_mptr_bitcast_index79_covariance0_add_x_p2_of_2_cin;
    wire [4:0] i_mptr_bitcast_index79_covariance0_add_x_p2_of_2_q;
    wire [64:0] i_mptr_bitcast_index79_covariance0_add_x_BitJoin_for_q_q;
    wire [60:0] i_mptr_bitcast_index_covariance0_add_x_p1_of_2_a;
    wire [60:0] i_mptr_bitcast_index_covariance0_add_x_p1_of_2_b;
    logic [60:0] i_mptr_bitcast_index_covariance0_add_x_p1_of_2_o;
    wire [0:0] i_mptr_bitcast_index_covariance0_add_x_p1_of_2_c;
    wire [59:0] i_mptr_bitcast_index_covariance0_add_x_p1_of_2_q;
    wire [6:0] i_mptr_bitcast_index_covariance0_add_x_p2_of_2_a;
    wire [6:0] i_mptr_bitcast_index_covariance0_add_x_p2_of_2_b;
    logic [6:0] i_mptr_bitcast_index_covariance0_add_x_p2_of_2_o;
    wire [0:0] i_mptr_bitcast_index_covariance0_add_x_p2_of_2_cin;
    wire [4:0] i_mptr_bitcast_index_covariance0_add_x_p2_of_2_q;
    wire [64:0] i_mptr_bitcast_index_covariance0_add_x_BitJoin_for_q_q;
    wire [4:0] i_mptr_bitcast_index79_covariance0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [31:0] i_mptr_bitcast_index79_covariance0_add_x_BitSelect_for_b_tessel0_1_b;
    wire [25:0] i_mptr_bitcast_index79_covariance0_add_x_BitSelect_for_b_tessel0_2_b;
    wire [59:0] i_mptr_bitcast_index79_covariance0_add_x_BitSelect_for_b_BitJoin_for_b_q;
    wire [3:0] i_mptr_bitcast_index79_covariance0_add_x_BitSelect_for_b_tessel1_0_b;
    wire [4:0] i_mptr_bitcast_index79_covariance0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [4:0] i_mptr_bitcast_index_covariance0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [31:0] i_mptr_bitcast_index_covariance0_add_x_BitSelect_for_b_tessel0_1_b;
    wire [59:0] i_mptr_bitcast_index_covariance0_add_x_BitSelect_for_b_BitJoin_for_b_q;
    wire [59:0] i_mptr_bitcast_index79_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    wire [3:0] i_mptr_bitcast_index79_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c;
    wire [59:0] i_mptr_bitcast_index_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    wire [3:0] i_mptr_bitcast_index_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c;
    reg [3:0] redist0_i_mptr_bitcast_index_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q;
    reg [3:0] redist1_i_mptr_bitcast_index79_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q;
    reg [31:0] redist2_i_mptr_bitcast_index_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1_q;
    reg [31:0] redist3_i_mptr_bitcast_index79_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1_q;
    reg [59:0] redist4_i_mptr_bitcast_index_covariance0_add_x_p1_of_2_q_1_q;
    reg [59:0] redist5_i_mptr_bitcast_index79_covariance0_add_x_p1_of_2_q_1_q;
    reg [26:0] redist6_i_mul35_covariance13_vt_select_31_b_1_q;
    reg [0:0] redist7_i_memdep_phi3_or_covariance24_q_4_q;
    reg [0:0] redist7_i_memdep_phi3_or_covariance24_q_4_delay_0;
    reg [0:0] redist7_i_memdep_phi3_or_covariance24_q_4_delay_1;
    reg [0:0] redist8_i_masked_covariance43_q_4_q;
    reg [0:0] redist8_i_masked_covariance43_q_4_delay_0;
    reg [0:0] redist8_i_masked_covariance43_q_4_delay_1;
    reg [31:0] redist9_i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_data_out_1_q;
    reg [31:0] redist11_i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_data_out_1_q;
    reg [31:0] redist13_i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_data_out_1_q;
    reg [31:0] redist15_i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_data_out_1_q;
    reg [31:0] redist17_i_llvm_fpga_pop_i32_i21_072_pop2499_pop65_covariance14_out_data_out_1_q;
    reg [0:0] redist18_i_llvm_fpga_pop_i1_notcmp31105_pop68_covariance52_out_data_out_1_q;
    reg [0:0] redist19_i_llvm_fpga_pop_i1_notcmp31105_pop68_covariance52_out_data_out_4_q;
    reg [0:0] redist19_i_llvm_fpga_pop_i1_notcmp31105_pop68_covariance52_out_data_out_4_delay_0;
    reg [0:0] redist19_i_llvm_fpga_pop_i1_notcmp31105_pop68_covariance52_out_data_out_4_delay_1;
    reg [0:0] redist20_i_llvm_fpga_pop_i1_forked27108_pop70_covariance54_out_data_out_1_q;
    reg [0:0] redist21_i_llvm_fpga_pop_i1_forked27108_pop70_covariance54_out_data_out_4_q;
    reg [0:0] redist21_i_llvm_fpga_pop_i1_forked27108_pop70_covariance54_out_data_out_4_delay_0;
    reg [0:0] redist21_i_llvm_fpga_pop_i1_forked27108_pop70_covariance54_out_data_out_4_delay_1;
    reg [0:0] redist22_i_llvm_fpga_pop_i1_exitcond18109_pop71_covariance56_out_data_out_1_q;
    reg [0:0] redist23_i_llvm_fpga_pop_i1_exitcond18109_pop71_covariance56_out_data_out_4_q;
    reg [0:0] redist23_i_llvm_fpga_pop_i1_exitcond18109_pop71_covariance56_out_data_out_4_delay_0;
    reg [0:0] redist23_i_llvm_fpga_pop_i1_exitcond18109_pop71_covariance56_out_data_out_4_delay_1;
    reg [0:0] redist24_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_1_q;
    reg [0:0] redist25_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_2_q;
    reg [0:0] redist26_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_5_q;
    reg [0:0] redist26_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_5_delay_0;
    reg [0:0] redist26_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_5_delay_1;
    reg [0:0] redist27_i_first_cleanup_xor_covariance4_q_4_q;
    reg [0:0] redist27_i_first_cleanup_xor_covariance4_q_4_delay_0;
    reg [0:0] redist27_i_first_cleanup_xor_covariance4_q_4_delay_1;
    reg [0:0] redist27_i_first_cleanup_xor_covariance4_q_4_delay_2;
    reg [0:0] redist28_sync_together145_aunroll_x_in_c0_eni23_1_tpl_1_q;
    reg [0:0] redist29_sync_together145_aunroll_x_in_c0_eni23_1_tpl_5_q;
    reg [0:0] redist29_sync_together145_aunroll_x_in_c0_eni23_1_tpl_5_delay_0;
    reg [0:0] redist29_sync_together145_aunroll_x_in_c0_eni23_1_tpl_5_delay_1;
    reg [0:0] redist29_sync_together145_aunroll_x_in_c0_eni23_1_tpl_5_delay_2;
    reg [31:0] redist30_sync_together145_aunroll_x_in_c0_eni23_2_tpl_1_q;
    reg [0:0] redist31_sync_together145_aunroll_x_in_c0_eni23_3_tpl_1_q;
    reg [0:0] redist32_sync_together145_aunroll_x_in_c0_eni23_4_tpl_1_q;
    reg [31:0] redist33_sync_together145_aunroll_x_in_c0_eni23_5_tpl_1_q;
    reg [31:0] redist34_sync_together145_aunroll_x_in_c0_eni23_6_tpl_1_q;
    reg [31:0] redist35_sync_together145_aunroll_x_in_c0_eni23_7_tpl_1_q;
    reg [31:0] redist36_sync_together145_aunroll_x_in_c0_eni23_8_tpl_1_q;
    reg [0:0] redist37_sync_together145_aunroll_x_in_c0_eni23_9_tpl_5_q;
    reg [0:0] redist37_sync_together145_aunroll_x_in_c0_eni23_9_tpl_5_delay_0;
    reg [0:0] redist37_sync_together145_aunroll_x_in_c0_eni23_9_tpl_5_delay_1;
    reg [0:0] redist37_sync_together145_aunroll_x_in_c0_eni23_9_tpl_5_delay_2;
    reg [0:0] redist37_sync_together145_aunroll_x_in_c0_eni23_9_tpl_5_delay_3;
    reg [0:0] redist38_sync_together145_aunroll_x_in_c0_eni23_10_tpl_1_q;
    reg [0:0] redist39_sync_together145_aunroll_x_in_c0_eni23_11_tpl_1_q;
    reg [0:0] redist40_sync_together145_aunroll_x_in_c0_eni23_12_tpl_1_q;
    reg [0:0] redist41_sync_together145_aunroll_x_in_c0_eni23_13_tpl_5_q;
    reg [0:0] redist41_sync_together145_aunroll_x_in_c0_eni23_13_tpl_5_delay_0;
    reg [0:0] redist41_sync_together145_aunroll_x_in_c0_eni23_13_tpl_5_delay_1;
    reg [0:0] redist41_sync_together145_aunroll_x_in_c0_eni23_13_tpl_5_delay_2;
    reg [0:0] redist41_sync_together145_aunroll_x_in_c0_eni23_13_tpl_5_delay_3;
    reg [0:0] redist47_sync_together145_aunroll_x_in_c0_eni23_19_tpl_5_q;
    reg [0:0] redist47_sync_together145_aunroll_x_in_c0_eni23_19_tpl_5_delay_0;
    reg [0:0] redist47_sync_together145_aunroll_x_in_c0_eni23_19_tpl_5_delay_1;
    reg [0:0] redist47_sync_together145_aunroll_x_in_c0_eni23_19_tpl_5_delay_2;
    reg [0:0] redist47_sync_together145_aunroll_x_in_c0_eni23_19_tpl_5_delay_3;
    reg [0:0] redist48_sync_together145_aunroll_x_in_c0_eni23_20_tpl_5_q;
    reg [0:0] redist48_sync_together145_aunroll_x_in_c0_eni23_20_tpl_5_delay_0;
    reg [0:0] redist48_sync_together145_aunroll_x_in_c0_eni23_20_tpl_5_delay_1;
    reg [0:0] redist48_sync_together145_aunroll_x_in_c0_eni23_20_tpl_5_delay_2;
    reg [0:0] redist48_sync_together145_aunroll_x_in_c0_eni23_20_tpl_5_delay_3;
    reg [0:0] redist49_sync_together145_aunroll_x_in_c0_eni23_21_tpl_5_q;
    reg [0:0] redist49_sync_together145_aunroll_x_in_c0_eni23_21_tpl_5_delay_0;
    reg [0:0] redist49_sync_together145_aunroll_x_in_c0_eni23_21_tpl_5_delay_1;
    reg [0:0] redist49_sync_together145_aunroll_x_in_c0_eni23_21_tpl_5_delay_2;
    reg [0:0] redist49_sync_together145_aunroll_x_in_c0_eni23_21_tpl_5_delay_3;
    reg [0:0] redist52_sync_together145_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist53_sync_together145_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist54_sync_together145_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist54_sync_together145_aunroll_x_in_i_valid_4_delay_0;
    wire redist10_i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_data_out_4_mem_reset0;
    wire [31:0] redist10_i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_data_out_4_mem_ia;
    wire [0:0] redist10_i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_data_out_4_mem_aa;
    wire [0:0] redist10_i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_data_out_4_mem_ab;
    wire [31:0] redist10_i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_data_out_4_mem_iq;
    wire [31:0] redist10_i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_data_out_4_mem_q;
    wire [0:0] redist10_i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_data_out_4_rdcnt_q;
    (* preserve *) reg [0:0] redist10_i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_data_out_4_rdcnt_i;
    reg [0:0] redist10_i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_data_out_4_wraddr_q;
    (* dont_merge *) reg [0:0] redist10_i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_data_out_4_cmpReg_q;
    wire [0:0] redist10_i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_data_out_4_notEnable_q;
    wire [0:0] redist10_i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_data_out_4_nor_q;
    (* dont_merge *) reg [0:0] redist10_i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_data_out_4_sticky_ena_q;
    wire [0:0] redist10_i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_data_out_4_enaAnd_q;
    wire redist12_i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_data_out_4_mem_reset0;
    wire [31:0] redist12_i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_data_out_4_mem_ia;
    wire [0:0] redist12_i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_data_out_4_mem_aa;
    wire [0:0] redist12_i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_data_out_4_mem_ab;
    wire [31:0] redist12_i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_data_out_4_mem_iq;
    wire [31:0] redist12_i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_data_out_4_mem_q;
    wire [0:0] redist12_i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_data_out_4_rdcnt_q;
    (* preserve *) reg [0:0] redist12_i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_data_out_4_rdcnt_i;
    reg [0:0] redist12_i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_data_out_4_wraddr_q;
    (* dont_merge *) reg [0:0] redist12_i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_data_out_4_cmpReg_q;
    wire [0:0] redist12_i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_data_out_4_notEnable_q;
    wire [0:0] redist12_i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_data_out_4_nor_q;
    (* dont_merge *) reg [0:0] redist12_i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_data_out_4_sticky_ena_q;
    wire [0:0] redist12_i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_data_out_4_enaAnd_q;
    wire redist14_i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_data_out_4_mem_reset0;
    wire [31:0] redist14_i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_data_out_4_mem_ia;
    wire [0:0] redist14_i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_data_out_4_mem_aa;
    wire [0:0] redist14_i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_data_out_4_mem_ab;
    wire [31:0] redist14_i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_data_out_4_mem_iq;
    wire [31:0] redist14_i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_data_out_4_mem_q;
    wire [0:0] redist14_i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_data_out_4_rdcnt_q;
    (* preserve *) reg [0:0] redist14_i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_data_out_4_rdcnt_i;
    reg [0:0] redist14_i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_data_out_4_wraddr_q;
    (* dont_merge *) reg [0:0] redist14_i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_data_out_4_cmpReg_q;
    wire [0:0] redist14_i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_data_out_4_notEnable_q;
    wire [0:0] redist14_i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_data_out_4_nor_q;
    (* dont_merge *) reg [0:0] redist14_i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_data_out_4_sticky_ena_q;
    wire [0:0] redist14_i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_data_out_4_enaAnd_q;
    wire redist16_i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_data_out_4_mem_reset0;
    wire [31:0] redist16_i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_data_out_4_mem_ia;
    wire [0:0] redist16_i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_data_out_4_mem_aa;
    wire [0:0] redist16_i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_data_out_4_mem_ab;
    wire [31:0] redist16_i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_data_out_4_mem_iq;
    wire [31:0] redist16_i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_data_out_4_mem_q;
    wire [0:0] redist16_i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_data_out_4_rdcnt_q;
    (* preserve *) reg [0:0] redist16_i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_data_out_4_rdcnt_i;
    reg [0:0] redist16_i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_data_out_4_wraddr_q;
    (* dont_merge *) reg [0:0] redist16_i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_data_out_4_cmpReg_q;
    wire [0:0] redist16_i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_data_out_4_notEnable_q;
    wire [0:0] redist16_i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_data_out_4_nor_q;
    (* dont_merge *) reg [0:0] redist16_i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_data_out_4_sticky_ena_q;
    wire [0:0] redist16_i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_data_out_4_enaAnd_q;
    wire redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_mem_reset0;
    wire [31:0] redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_mem_ia;
    wire [1:0] redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_mem_aa;
    wire [1:0] redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_mem_ab;
    wire [31:0] redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_mem_iq;
    wire [31:0] redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_mem_q;
    wire [1:0] redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_rdcnt_i;
    reg [1:0] redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_wraddr_q;
    wire [2:0] redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_mem_last_q;
    wire [2:0] redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_cmp_b;
    wire [0:0] redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_cmpReg_q;
    wire [0:0] redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_notEnable_q;
    wire [0:0] redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_sticky_ena_q;
    wire [0:0] redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_enaAnd_q;
    wire redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_mem_reset0;
    wire [31:0] redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_mem_ia;
    wire [1:0] redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_mem_aa;
    wire [1:0] redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_mem_ab;
    wire [31:0] redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_mem_iq;
    wire [31:0] redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_mem_q;
    wire [1:0] redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_rdcnt_i;
    reg [1:0] redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_wraddr_q;
    wire [2:0] redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_mem_last_q;
    wire [2:0] redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_cmp_b;
    wire [0:0] redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_cmpReg_q;
    wire [0:0] redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_notEnable_q;
    wire [0:0] redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_sticky_ena_q;
    wire [0:0] redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_enaAnd_q;
    wire redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_mem_reset0;
    wire [31:0] redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_mem_ia;
    wire [1:0] redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_mem_aa;
    wire [1:0] redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_mem_ab;
    wire [31:0] redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_mem_iq;
    wire [31:0] redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_mem_q;
    wire [1:0] redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_rdcnt_i;
    reg [1:0] redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_wraddr_q;
    wire [2:0] redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_mem_last_q;
    wire [2:0] redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_cmp_b;
    wire [0:0] redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_cmpReg_q;
    wire [0:0] redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_notEnable_q;
    wire [0:0] redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_sticky_ena_q;
    wire [0:0] redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_enaAnd_q;
    wire redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_mem_reset0;
    wire [31:0] redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_mem_ia;
    wire [1:0] redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_mem_aa;
    wire [1:0] redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_mem_ab;
    wire [31:0] redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_mem_iq;
    wire [31:0] redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_mem_q;
    wire [1:0] redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_rdcnt_i;
    reg [1:0] redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_wraddr_q;
    wire [2:0] redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_mem_last_q;
    wire [2:0] redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_cmp_b;
    wire [0:0] redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_cmpReg_q;
    wire [0:0] redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_notEnable_q;
    wire [0:0] redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_sticky_ena_q;
    wire [0:0] redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_enaAnd_q;
    wire redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_mem_reset0;
    wire [32:0] redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_mem_ia;
    wire [1:0] redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_mem_aa;
    wire [1:0] redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_mem_ab;
    wire [32:0] redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_mem_iq;
    wire [32:0] redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_mem_q;
    wire [1:0] redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_rdcnt_i;
    reg [1:0] redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_wraddr_q;
    wire [2:0] redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_mem_last_q;
    wire [2:0] redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_cmp_b;
    wire [0:0] redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_cmpReg_q;
    wire [0:0] redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_notEnable_q;
    wire [0:0] redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_sticky_ena_q;
    wire [0:0] redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_enaAnd_q;
    wire redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_mem_reset0;
    wire [31:0] redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_mem_ia;
    wire [1:0] redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_mem_aa;
    wire [1:0] redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_mem_ab;
    wire [31:0] redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_mem_iq;
    wire [31:0] redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_mem_q;
    wire [1:0] redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_rdcnt_i;
    reg [1:0] redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_wraddr_q;
    wire [2:0] redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_mem_last_q;
    wire [2:0] redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_cmp_b;
    wire [0:0] redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_cmpReg_q;
    wire [0:0] redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_notEnable_q;
    wire [0:0] redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_sticky_ena_q;
    wire [0:0] redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_enaAnd_q;
    wire redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_mem_reset0;
    wire [31:0] redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_mem_ia;
    wire [1:0] redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_mem_aa;
    wire [1:0] redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_mem_ab;
    wire [31:0] redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_mem_iq;
    wire [31:0] redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_mem_q;
    wire [1:0] redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_rdcnt_i;
    reg [1:0] redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_wraddr_q;
    wire [2:0] redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_mem_last_q;
    wire [2:0] redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_cmp_b;
    wire [0:0] redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_cmpReg_q;
    wire [0:0] redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_notEnable_q;
    wire [0:0] redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_sticky_ena_q;
    wire [0:0] redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist52_sync_together145_aunroll_x_in_i_valid_1(DELAY,328)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist52_sync_together145_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist52_sync_together145_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist53_sync_together145_aunroll_x_in_i_valid_2(DELAY,329)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist53_sync_together145_aunroll_x_in_i_valid_2_q <= '0;
        end
        else
        begin
            redist53_sync_together145_aunroll_x_in_i_valid_2_q <= $unsigned(redist52_sync_together145_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist54_sync_together145_aunroll_x_in_i_valid_4(DELAY,330)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist54_sync_together145_aunroll_x_in_i_valid_4_delay_0 <= '0;
            redist54_sync_together145_aunroll_x_in_i_valid_4_q <= '0;
        end
        else
        begin
            redist54_sync_together145_aunroll_x_in_i_valid_4_delay_0 <= $unsigned(redist53_sync_together145_aunroll_x_in_i_valid_2_q);
            redist54_sync_together145_aunroll_x_in_i_valid_4_q <= redist54_sync_together145_aunroll_x_in_i_valid_4_delay_0;
        end
    end

    // valid_fanout_reg0(REG,158)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist54_sync_together145_aunroll_x_in_i_valid_4_q);
        end
    end

    // redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_notEnable(LOGICAL,429)
    assign redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_nor(LOGICAL,430)
    assign redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_nor_q = ~ (redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_notEnable_q | redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_sticky_ena_q);

    // redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_mem_last(CONSTANT,426)
    assign redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_cmp(LOGICAL,427)
    assign redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_cmp_b = {1'b0, redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_rdcnt_q};
    assign redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_cmp_q = $unsigned(redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_mem_last_q == redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_cmpReg(REG,428)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_cmpReg_q <= $unsigned(redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_cmp_q);
        end
    end

    // redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_sticky_ena(REG,431)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_nor_q == 1'b1)
        begin
            redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_sticky_ena_q <= $unsigned(redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_cmpReg_q);
        end
    end

    // redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_enaAnd(LOGICAL,432)
    assign redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_enaAnd_q = redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_sticky_ena_q & VCC_q;

    // redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_rdcnt(COUNTER,424)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_rdcnt_i <= $unsigned(redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_rdcnt_q = redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_rdcnt_i[1:0];

    // redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_wraddr(REG,425)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_wraddr_q <= $unsigned(redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_rdcnt_q);
        end
    end

    // redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_mem(DUALMEM,423)
    assign redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_mem_ia = $unsigned(in_c0_eni23_23_tpl);
    assign redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_mem_aa = redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_wraddr_q;
    assign redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_mem_ab = redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_rdcnt_q;
    assign redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_mem_dmem (
        .clocken1(redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_mem_aa),
        .data_a(redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_mem_ab),
        .q_b(redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_mem_iq),
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
    assign redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_mem_q = redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_mem_iq[31:0];

    // redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_notEnable(LOGICAL,419)
    assign redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_nor(LOGICAL,420)
    assign redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_nor_q = ~ (redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_notEnable_q | redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_sticky_ena_q);

    // redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_mem_last(CONSTANT,416)
    assign redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_cmp(LOGICAL,417)
    assign redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_cmp_b = {1'b0, redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_rdcnt_q};
    assign redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_cmp_q = $unsigned(redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_mem_last_q == redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_cmpReg(REG,418)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_cmpReg_q <= $unsigned(redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_cmp_q);
        end
    end

    // redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_sticky_ena(REG,421)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_nor_q == 1'b1)
        begin
            redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_sticky_ena_q <= $unsigned(redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_cmpReg_q);
        end
    end

    // redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_enaAnd(LOGICAL,422)
    assign redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_enaAnd_q = redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_sticky_ena_q & VCC_q;

    // redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_rdcnt(COUNTER,414)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_rdcnt_i <= $unsigned(redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_rdcnt_q = redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_rdcnt_i[1:0];

    // redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_wraddr(REG,415)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_wraddr_q <= $unsigned(redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_rdcnt_q);
        end
    end

    // redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_mem(DUALMEM,413)
    assign redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_mem_ia = $unsigned(in_c0_eni23_22_tpl);
    assign redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_mem_aa = redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_wraddr_q;
    assign redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_mem_ab = redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_rdcnt_q;
    assign redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_mem_dmem (
        .clocken1(redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_mem_aa),
        .data_a(redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_mem_ab),
        .q_b(redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_mem_iq),
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
    assign redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_mem_q = redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_mem_iq[31:0];

    // redist49_sync_together145_aunroll_x_in_c0_eni23_21_tpl_5(DELAY,325)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist49_sync_together145_aunroll_x_in_c0_eni23_21_tpl_5_delay_0 <= '0;
            redist49_sync_together145_aunroll_x_in_c0_eni23_21_tpl_5_delay_1 <= '0;
            redist49_sync_together145_aunroll_x_in_c0_eni23_21_tpl_5_delay_2 <= '0;
            redist49_sync_together145_aunroll_x_in_c0_eni23_21_tpl_5_delay_3 <= '0;
            redist49_sync_together145_aunroll_x_in_c0_eni23_21_tpl_5_q <= '0;
        end
        else
        begin
            redist49_sync_together145_aunroll_x_in_c0_eni23_21_tpl_5_delay_0 <= $unsigned(in_c0_eni23_21_tpl);
            redist49_sync_together145_aunroll_x_in_c0_eni23_21_tpl_5_delay_1 <= redist49_sync_together145_aunroll_x_in_c0_eni23_21_tpl_5_delay_0;
            redist49_sync_together145_aunroll_x_in_c0_eni23_21_tpl_5_delay_2 <= redist49_sync_together145_aunroll_x_in_c0_eni23_21_tpl_5_delay_1;
            redist49_sync_together145_aunroll_x_in_c0_eni23_21_tpl_5_delay_3 <= redist49_sync_together145_aunroll_x_in_c0_eni23_21_tpl_5_delay_2;
            redist49_sync_together145_aunroll_x_in_c0_eni23_21_tpl_5_q <= redist49_sync_together145_aunroll_x_in_c0_eni23_21_tpl_5_delay_3;
        end
    end

    // redist48_sync_together145_aunroll_x_in_c0_eni23_20_tpl_5(DELAY,324)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist48_sync_together145_aunroll_x_in_c0_eni23_20_tpl_5_delay_0 <= '0;
            redist48_sync_together145_aunroll_x_in_c0_eni23_20_tpl_5_delay_1 <= '0;
            redist48_sync_together145_aunroll_x_in_c0_eni23_20_tpl_5_delay_2 <= '0;
            redist48_sync_together145_aunroll_x_in_c0_eni23_20_tpl_5_delay_3 <= '0;
            redist48_sync_together145_aunroll_x_in_c0_eni23_20_tpl_5_q <= '0;
        end
        else
        begin
            redist48_sync_together145_aunroll_x_in_c0_eni23_20_tpl_5_delay_0 <= $unsigned(in_c0_eni23_20_tpl);
            redist48_sync_together145_aunroll_x_in_c0_eni23_20_tpl_5_delay_1 <= redist48_sync_together145_aunroll_x_in_c0_eni23_20_tpl_5_delay_0;
            redist48_sync_together145_aunroll_x_in_c0_eni23_20_tpl_5_delay_2 <= redist48_sync_together145_aunroll_x_in_c0_eni23_20_tpl_5_delay_1;
            redist48_sync_together145_aunroll_x_in_c0_eni23_20_tpl_5_delay_3 <= redist48_sync_together145_aunroll_x_in_c0_eni23_20_tpl_5_delay_2;
            redist48_sync_together145_aunroll_x_in_c0_eni23_20_tpl_5_q <= redist48_sync_together145_aunroll_x_in_c0_eni23_20_tpl_5_delay_3;
        end
    end

    // redist47_sync_together145_aunroll_x_in_c0_eni23_19_tpl_5(DELAY,323)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist47_sync_together145_aunroll_x_in_c0_eni23_19_tpl_5_delay_0 <= '0;
            redist47_sync_together145_aunroll_x_in_c0_eni23_19_tpl_5_delay_1 <= '0;
            redist47_sync_together145_aunroll_x_in_c0_eni23_19_tpl_5_delay_2 <= '0;
            redist47_sync_together145_aunroll_x_in_c0_eni23_19_tpl_5_delay_3 <= '0;
            redist47_sync_together145_aunroll_x_in_c0_eni23_19_tpl_5_q <= '0;
        end
        else
        begin
            redist47_sync_together145_aunroll_x_in_c0_eni23_19_tpl_5_delay_0 <= $unsigned(in_c0_eni23_19_tpl);
            redist47_sync_together145_aunroll_x_in_c0_eni23_19_tpl_5_delay_1 <= redist47_sync_together145_aunroll_x_in_c0_eni23_19_tpl_5_delay_0;
            redist47_sync_together145_aunroll_x_in_c0_eni23_19_tpl_5_delay_2 <= redist47_sync_together145_aunroll_x_in_c0_eni23_19_tpl_5_delay_1;
            redist47_sync_together145_aunroll_x_in_c0_eni23_19_tpl_5_delay_3 <= redist47_sync_together145_aunroll_x_in_c0_eni23_19_tpl_5_delay_2;
            redist47_sync_together145_aunroll_x_in_c0_eni23_19_tpl_5_q <= redist47_sync_together145_aunroll_x_in_c0_eni23_19_tpl_5_delay_3;
        end
    end

    // redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_notEnable(LOGICAL,409)
    assign redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_nor(LOGICAL,410)
    assign redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_nor_q = ~ (redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_notEnable_q | redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_sticky_ena_q);

    // redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_mem_last(CONSTANT,406)
    assign redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_cmp(LOGICAL,407)
    assign redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_cmp_b = {1'b0, redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_rdcnt_q};
    assign redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_cmp_q = $unsigned(redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_mem_last_q == redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_cmpReg(REG,408)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_cmpReg_q <= $unsigned(redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_cmp_q);
        end
    end

    // redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_sticky_ena(REG,411)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_nor_q == 1'b1)
        begin
            redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_sticky_ena_q <= $unsigned(redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_cmpReg_q);
        end
    end

    // redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_enaAnd(LOGICAL,412)
    assign redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_enaAnd_q = redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_sticky_ena_q & VCC_q;

    // redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_rdcnt(COUNTER,404)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_rdcnt_i <= $unsigned(redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_rdcnt_q = redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_rdcnt_i[1:0];

    // redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_wraddr(REG,405)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_wraddr_q <= $unsigned(redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_rdcnt_q);
        end
    end

    // redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_mem(DUALMEM,403)
    assign redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_mem_ia = $unsigned(in_c0_eni23_18_tpl);
    assign redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_mem_aa = redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_wraddr_q;
    assign redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_mem_ab = redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_rdcnt_q;
    assign redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(33),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(33),
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
    ) redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_mem_dmem (
        .clocken1(redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_mem_aa),
        .data_a(redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_mem_ab),
        .q_b(redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_mem_iq),
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
    assign redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_mem_q = redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_mem_iq[32:0];

    // redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_notEnable(LOGICAL,399)
    assign redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_nor(LOGICAL,400)
    assign redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_nor_q = ~ (redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_notEnable_q | redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_sticky_ena_q);

    // redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_mem_last(CONSTANT,396)
    assign redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_cmp(LOGICAL,397)
    assign redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_cmp_b = {1'b0, redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_rdcnt_q};
    assign redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_cmp_q = $unsigned(redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_mem_last_q == redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_cmpReg(REG,398)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_cmpReg_q <= $unsigned(redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_cmp_q);
        end
    end

    // redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_sticky_ena(REG,401)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_nor_q == 1'b1)
        begin
            redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_sticky_ena_q <= $unsigned(redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_cmpReg_q);
        end
    end

    // redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_enaAnd(LOGICAL,402)
    assign redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_enaAnd_q = redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_sticky_ena_q & VCC_q;

    // redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_rdcnt(COUNTER,394)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_rdcnt_i <= $unsigned(redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_rdcnt_q = redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_rdcnt_i[1:0];

    // redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_wraddr(REG,395)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_wraddr_q <= $unsigned(redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_rdcnt_q);
        end
    end

    // redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_mem(DUALMEM,393)
    assign redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_mem_ia = $unsigned(in_c0_eni23_17_tpl);
    assign redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_mem_aa = redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_wraddr_q;
    assign redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_mem_ab = redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_rdcnt_q;
    assign redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_mem_dmem (
        .clocken1(redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_mem_aa),
        .data_a(redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_mem_ab),
        .q_b(redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_mem_iq),
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
    assign redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_mem_q = redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_mem_iq[31:0];

    // redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_notEnable(LOGICAL,389)
    assign redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_nor(LOGICAL,390)
    assign redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_nor_q = ~ (redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_notEnable_q | redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_sticky_ena_q);

    // redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_mem_last(CONSTANT,386)
    assign redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_cmp(LOGICAL,387)
    assign redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_cmp_b = {1'b0, redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_rdcnt_q};
    assign redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_cmp_q = $unsigned(redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_mem_last_q == redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_cmpReg(REG,388)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_cmpReg_q <= $unsigned(redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_cmp_q);
        end
    end

    // redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_sticky_ena(REG,391)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_nor_q == 1'b1)
        begin
            redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_sticky_ena_q <= $unsigned(redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_cmpReg_q);
        end
    end

    // redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_enaAnd(LOGICAL,392)
    assign redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_enaAnd_q = redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_sticky_ena_q & VCC_q;

    // redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_rdcnt(COUNTER,384)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_rdcnt_i <= $unsigned(redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_rdcnt_q = redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_rdcnt_i[1:0];

    // redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_wraddr(REG,385)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_wraddr_q <= $unsigned(redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_rdcnt_q);
        end
    end

    // redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_mem(DUALMEM,383)
    assign redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_mem_ia = $unsigned(in_c0_eni23_16_tpl);
    assign redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_mem_aa = redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_wraddr_q;
    assign redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_mem_ab = redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_rdcnt_q;
    assign redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_mem_dmem (
        .clocken1(redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_mem_aa),
        .data_a(redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_mem_ab),
        .q_b(redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_mem_iq),
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
    assign redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_mem_q = redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_mem_iq[31:0];

    // redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_notEnable(LOGICAL,379)
    assign redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_nor(LOGICAL,380)
    assign redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_nor_q = ~ (redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_notEnable_q | redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_sticky_ena_q);

    // redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_mem_last(CONSTANT,376)
    assign redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_cmp(LOGICAL,377)
    assign redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_cmp_b = {1'b0, redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_rdcnt_q};
    assign redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_cmp_q = $unsigned(redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_mem_last_q == redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_cmpReg(REG,378)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_cmpReg_q <= $unsigned(redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_cmp_q);
        end
    end

    // redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_sticky_ena(REG,381)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_nor_q == 1'b1)
        begin
            redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_sticky_ena_q <= $unsigned(redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_cmpReg_q);
        end
    end

    // redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_enaAnd(LOGICAL,382)
    assign redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_enaAnd_q = redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_sticky_ena_q & VCC_q;

    // redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_rdcnt(COUNTER,374)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_rdcnt_i <= $unsigned(redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_rdcnt_q = redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_rdcnt_i[1:0];

    // redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_wraddr(REG,375)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_wraddr_q <= $unsigned(redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_rdcnt_q);
        end
    end

    // redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_mem(DUALMEM,373)
    assign redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_mem_ia = $unsigned(in_c0_eni23_15_tpl);
    assign redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_mem_aa = redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_wraddr_q;
    assign redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_mem_ab = redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_rdcnt_q;
    assign redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_mem_dmem (
        .clocken1(redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_mem_aa),
        .data_a(redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_mem_ab),
        .q_b(redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_mem_iq),
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
    assign redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_mem_q = redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_mem_iq[31:0];

    // redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_notEnable(LOGICAL,369)
    assign redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_nor(LOGICAL,370)
    assign redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_nor_q = ~ (redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_notEnable_q | redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_sticky_ena_q);

    // redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_mem_last(CONSTANT,366)
    assign redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_cmp(LOGICAL,367)
    assign redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_cmp_b = {1'b0, redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_rdcnt_q};
    assign redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_cmp_q = $unsigned(redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_mem_last_q == redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_cmpReg(REG,368)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_cmpReg_q <= $unsigned(redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_cmp_q);
        end
    end

    // redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_sticky_ena(REG,371)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_nor_q == 1'b1)
        begin
            redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_sticky_ena_q <= $unsigned(redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_cmpReg_q);
        end
    end

    // redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_enaAnd(LOGICAL,372)
    assign redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_enaAnd_q = redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_sticky_ena_q & VCC_q;

    // redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_rdcnt(COUNTER,364)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_rdcnt_i <= $unsigned(redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_rdcnt_q = redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_rdcnt_i[1:0];

    // redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_wraddr(REG,365)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_wraddr_q <= $unsigned(redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_rdcnt_q);
        end
    end

    // redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_mem(DUALMEM,363)
    assign redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_mem_ia = $unsigned(in_c0_eni23_14_tpl);
    assign redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_mem_aa = redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_wraddr_q;
    assign redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_mem_ab = redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_rdcnt_q;
    assign redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_mem_dmem (
        .clocken1(redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_mem_aa),
        .data_a(redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_mem_ab),
        .q_b(redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_mem_iq),
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
    assign redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_mem_q = redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_mem_iq[31:0];

    // redist28_sync_together145_aunroll_x_in_c0_eni23_1_tpl_1(DELAY,304)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_sync_together145_aunroll_x_in_c0_eni23_1_tpl_1_q <= '0;
        end
        else
        begin
            redist28_sync_together145_aunroll_x_in_c0_eni23_1_tpl_1_q <= $unsigned(in_c0_eni23_1_tpl);
        end
    end

    // redist29_sync_together145_aunroll_x_in_c0_eni23_1_tpl_5(DELAY,305)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_sync_together145_aunroll_x_in_c0_eni23_1_tpl_5_delay_0 <= '0;
            redist29_sync_together145_aunroll_x_in_c0_eni23_1_tpl_5_delay_1 <= '0;
            redist29_sync_together145_aunroll_x_in_c0_eni23_1_tpl_5_delay_2 <= '0;
            redist29_sync_together145_aunroll_x_in_c0_eni23_1_tpl_5_q <= '0;
        end
        else
        begin
            redist29_sync_together145_aunroll_x_in_c0_eni23_1_tpl_5_delay_0 <= $unsigned(redist28_sync_together145_aunroll_x_in_c0_eni23_1_tpl_1_q);
            redist29_sync_together145_aunroll_x_in_c0_eni23_1_tpl_5_delay_1 <= redist29_sync_together145_aunroll_x_in_c0_eni23_1_tpl_5_delay_0;
            redist29_sync_together145_aunroll_x_in_c0_eni23_1_tpl_5_delay_2 <= redist29_sync_together145_aunroll_x_in_c0_eni23_1_tpl_5_delay_1;
            redist29_sync_together145_aunroll_x_in_c0_eni23_1_tpl_5_q <= redist29_sync_together145_aunroll_x_in_c0_eni23_1_tpl_5_delay_2;
        end
    end

    // valid_fanout_reg30(REG,188)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg30_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg30_q <= $unsigned(redist54_sync_together145_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg31(REG,189)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg31_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg31_q <= $unsigned(redist54_sync_together145_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp26110_push72_covariance59(BLACKBOX,122)@6
    // out out_feedback_out_72@20000000
    // out out_feedback_valid_out_72@20000000
    covariance_i_llvm_fpga_push_i1_notcmp26110_push72_0 thei_llvm_fpga_push_i1_notcmp26110_push72_covariance59 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp26110_pop72_covariance58_out_data_out),
        .in_feedback_stall_in_72(i_llvm_fpga_pop_i1_notcmp26110_pop72_covariance58_out_feedback_stall_out_72),
        .in_keep_going(redist26_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_5_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg31_q),
        .out_data_out(),
        .out_feedback_out_72(i_llvm_fpga_push_i1_notcmp26110_push72_covariance59_out_feedback_out_72),
        .out_feedback_valid_out_72(i_llvm_fpga_push_i1_notcmp26110_push72_covariance59_out_feedback_valid_out_72),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist41_sync_together145_aunroll_x_in_c0_eni23_13_tpl_5(DELAY,317)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_sync_together145_aunroll_x_in_c0_eni23_13_tpl_5_delay_0 <= '0;
            redist41_sync_together145_aunroll_x_in_c0_eni23_13_tpl_5_delay_1 <= '0;
            redist41_sync_together145_aunroll_x_in_c0_eni23_13_tpl_5_delay_2 <= '0;
            redist41_sync_together145_aunroll_x_in_c0_eni23_13_tpl_5_delay_3 <= '0;
            redist41_sync_together145_aunroll_x_in_c0_eni23_13_tpl_5_q <= '0;
        end
        else
        begin
            redist41_sync_together145_aunroll_x_in_c0_eni23_13_tpl_5_delay_0 <= $unsigned(in_c0_eni23_13_tpl);
            redist41_sync_together145_aunroll_x_in_c0_eni23_13_tpl_5_delay_1 <= redist41_sync_together145_aunroll_x_in_c0_eni23_13_tpl_5_delay_0;
            redist41_sync_together145_aunroll_x_in_c0_eni23_13_tpl_5_delay_2 <= redist41_sync_together145_aunroll_x_in_c0_eni23_13_tpl_5_delay_1;
            redist41_sync_together145_aunroll_x_in_c0_eni23_13_tpl_5_delay_3 <= redist41_sync_together145_aunroll_x_in_c0_eni23_13_tpl_5_delay_2;
            redist41_sync_together145_aunroll_x_in_c0_eni23_13_tpl_5_q <= redist41_sync_together145_aunroll_x_in_c0_eni23_13_tpl_5_delay_3;
        end
    end

    // i_llvm_fpga_pop_i1_notcmp26110_pop72_covariance58(BLACKBOX,105)@6
    // out out_feedback_stall_out_72@20000000
    covariance_i_llvm_fpga_pop_i1_notcmp26110_pop72_0 thei_llvm_fpga_pop_i1_notcmp26110_pop72_covariance58 (
        .in_data_in(redist41_sync_together145_aunroll_x_in_c0_eni23_13_tpl_5_q),
        .in_dir(redist29_sync_together145_aunroll_x_in_c0_eni23_1_tpl_5_q),
        .in_feedback_in_72(i_llvm_fpga_push_i1_notcmp26110_push72_covariance59_out_feedback_out_72),
        .in_feedback_valid_in_72(i_llvm_fpga_push_i1_notcmp26110_push72_covariance59_out_feedback_valid_out_72),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg30_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp26110_pop72_covariance58_out_data_out),
        .out_feedback_stall_out_72(i_llvm_fpga_pop_i1_notcmp26110_pop72_covariance58_out_feedback_stall_out_72),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg28(REG,186)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg28_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg28_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg29(REG,187)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg29_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg29_q <= $unsigned(redist52_sync_together145_aunroll_x_in_i_valid_1_q);
        end
    end

    // leftShiftStage0Idx1Rng1_uid205_i_cleanups_shl_covariance0_shift_x(BITSELECT,204)@2
    assign leftShiftStage0Idx1Rng1_uid205_i_cleanups_shl_covariance0_shift_x_in = i_llvm_fpga_pop_i2_cleanups_pop62_covariance2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid205_i_cleanups_shl_covariance0_shift_x_b = leftShiftStage0Idx1Rng1_uid205_i_cleanups_shl_covariance0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid206_i_cleanups_shl_covariance0_shift_x(BITJOIN,205)@2
    assign leftShiftStage0Idx1_uid206_i_cleanups_shl_covariance0_shift_x_q = {leftShiftStage0Idx1Rng1_uid205_i_cleanups_shl_covariance0_shift_x_b, GND_q};

    // leftShiftStage0_uid208_i_cleanups_shl_covariance0_shift_x(MUX,207)@2
    assign leftShiftStage0_uid208_i_cleanups_shl_covariance0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid208_i_cleanups_shl_covariance0_shift_x_s or i_llvm_fpga_pop_i2_cleanups_pop62_covariance2_out_data_out or leftShiftStage0Idx1_uid206_i_cleanups_shl_covariance0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid208_i_cleanups_shl_covariance0_shift_x_s)
            1'b0 : leftShiftStage0_uid208_i_cleanups_shl_covariance0_shift_x_q = i_llvm_fpga_pop_i2_cleanups_pop62_covariance2_out_data_out;
            1'b1 : leftShiftStage0_uid208_i_cleanups_shl_covariance0_shift_x_q = leftShiftStage0Idx1_uid206_i_cleanups_shl_covariance0_shift_x_q;
            default : leftShiftStage0_uid208_i_cleanups_shl_covariance0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl_covariance5_vt_select_1(BITSELECT,90)@2
    assign i_cleanups_shl_covariance5_vt_select_1_b = leftShiftStage0_uid208_i_cleanups_shl_covariance0_shift_x_q[1:1];

    // i_cleanups_shl_covariance5_vt_join(BITJOIN,89)@2
    assign i_cleanups_shl_covariance5_vt_join_q = {i_cleanups_shl_covariance5_vt_select_1_b, GND_q};

    // i_first_cleanup_xor_covariance4(LOGICAL,93)@2
    assign i_first_cleanup_xor_covariance4_q = i_first_cleanup_covariance3_sel_x_b ^ VCC_q;

    // i_notcmp_covariance36(LOGICAL,143)@2
    assign i_notcmp_covariance36_q = i_exitcond13_covariance34_cmp_nsign_q ^ VCC_q;

    // i_or_covariance38(LOGICAL,144)@2
    assign i_or_covariance38_q = i_notcmp_covariance36_q | i_first_cleanup_xor_covariance4_q;

    // i_next_cleanups_covariance39(MUX,139)@2
    assign i_next_cleanups_covariance39_s = i_or_covariance38_q;
    always @(i_next_cleanups_covariance39_s or i_llvm_fpga_pop_i2_cleanups_pop62_covariance2_out_data_out or i_cleanups_shl_covariance5_vt_join_q)
    begin
        unique case (i_next_cleanups_covariance39_s)
            1'b0 : i_next_cleanups_covariance39_q = i_llvm_fpga_pop_i2_cleanups_pop62_covariance2_out_data_out;
            1'b1 : i_next_cleanups_covariance39_q = i_cleanups_shl_covariance5_vt_join_q;
            default : i_next_cleanups_covariance39_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups_push62_covariance40(BLACKBOX,125)@2
    // out out_feedback_out_62@20000000
    // out out_feedback_valid_out_62@20000000
    covariance_i_llvm_fpga_push_i2_cleanups_push62_0 thei_llvm_fpga_push_i2_cleanups_push62_covariance40 (
        .in_data_in(i_next_cleanups_covariance39_q),
        .in_feedback_stall_in_62(i_llvm_fpga_pop_i2_cleanups_pop62_covariance2_out_feedback_stall_out_62),
        .in_keep_going(redist24_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist52_sync_together145_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_62(i_llvm_fpga_push_i2_cleanups_push62_covariance40_out_feedback_out_62),
        .out_feedback_valid_out_62(i_llvm_fpga_push_i2_cleanups_push62_covariance40_out_feedback_valid_out_62),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i2_198(CONSTANT,79)
    assign c_i2_198_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups_pop62_covariance2(BLACKBOX,107)@2
    // out out_feedback_stall_out_62@20000000
    covariance_i_llvm_fpga_pop_i2_cleanups_pop62_0 thei_llvm_fpga_pop_i2_cleanups_pop62_covariance2 (
        .in_data_in(c_i2_198_q),
        .in_dir(redist28_sync_together145_aunroll_x_in_c0_eni23_1_tpl_1_q),
        .in_feedback_in_62(i_llvm_fpga_push_i2_cleanups_push62_covariance40_out_feedback_out_62),
        .in_feedback_valid_in_62(i_llvm_fpga_push_i2_cleanups_push62_covariance40_out_feedback_valid_out_62),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist52_sync_together145_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups_pop62_covariance2_out_data_out),
        .out_feedback_stall_out_62(i_llvm_fpga_pop_i2_cleanups_pop62_covariance2_out_feedback_stall_out_62),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_covariance3_sel_x(BITSELECT,11)@2
    assign i_first_cleanup_covariance3_sel_x_b = i_llvm_fpga_pop_i2_cleanups_pop62_covariance2_out_data_out[0:0];

    // c_i6_1105(CONSTANT,83)
    assign c_i6_1105_q = $unsigned(6'b111111);

    // i_fpga_indvars_iv_next12_covariance41(ADD,94)@2
    assign i_fpga_indvars_iv_next12_covariance41_a = {1'b0, i_llvm_fpga_pop_i6_fpga_indvars_iv11_pop58_covariance33_out_data_out};
    assign i_fpga_indvars_iv_next12_covariance41_b = {1'b0, c_i6_1105_q};
    assign i_fpga_indvars_iv_next12_covariance41_o = $unsigned(i_fpga_indvars_iv_next12_covariance41_a) + $unsigned(i_fpga_indvars_iv_next12_covariance41_b);
    assign i_fpga_indvars_iv_next12_covariance41_q = i_fpga_indvars_iv_next12_covariance41_o[6:0];

    // bgTrunc_i_fpga_indvars_iv_next12_covariance41_sel_x(BITSELECT,4)@2
    assign bgTrunc_i_fpga_indvars_iv_next12_covariance41_sel_x_b = i_fpga_indvars_iv_next12_covariance41_q[5:0];

    // i_llvm_fpga_push_i6_fpga_indvars_iv11_push58_covariance42(BLACKBOX,133)@2
    // out out_feedback_out_58@20000000
    // out out_feedback_valid_out_58@20000000
    covariance_i_llvm_fpga_push_i6_fpga_indvars_iv11_push58_0 thei_llvm_fpga_push_i6_fpga_indvars_iv11_push58_covariance42 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next12_covariance41_sel_x_b),
        .in_feedback_stall_in_58(i_llvm_fpga_pop_i6_fpga_indvars_iv11_pop58_covariance33_out_feedback_stall_out_58),
        .in_keep_going(redist24_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist52_sync_together145_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_58(i_llvm_fpga_push_i6_fpga_indvars_iv11_push58_covariance42_out_feedback_out_58),
        .out_feedback_valid_out_58(i_llvm_fpga_push_i6_fpga_indvars_iv11_push58_covariance42_out_feedback_valid_out_58),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i6_30103(CONSTANT,84)
    assign c_i6_30103_q = $unsigned(6'b011110);

    // i_llvm_fpga_pop_i6_fpga_indvars_iv11_pop58_covariance33(BLACKBOX,115)@2
    // out out_feedback_stall_out_58@20000000
    covariance_i_llvm_fpga_pop_i6_fpga_indvars_iv11_pop58_0 thei_llvm_fpga_pop_i6_fpga_indvars_iv11_pop58_covariance33 (
        .in_data_in(c_i6_30103_q),
        .in_dir(redist28_sync_together145_aunroll_x_in_c0_eni23_1_tpl_1_q),
        .in_feedback_in_58(i_llvm_fpga_push_i6_fpga_indvars_iv11_push58_covariance42_out_feedback_out_58),
        .in_feedback_valid_in_58(i_llvm_fpga_push_i6_fpga_indvars_iv11_push58_covariance42_out_feedback_valid_out_58),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist52_sync_together145_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i6_fpga_indvars_iv11_pop58_covariance33_out_data_out),
        .out_feedback_stall_out_58(i_llvm_fpga_pop_i6_fpga_indvars_iv11_pop58_covariance33_out_feedback_stall_out_58),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond13_covariance34_cmp_nsign(LOGICAL,231)@2
    assign i_exitcond13_covariance34_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i6_fpga_indvars_iv11_pop58_covariance33_out_data_out[5:5]));

    // i_llvm_fpga_push_i1_notexitcond_covariance37(BLACKBOX,124)@2
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    covariance_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_covariance37 (
        .in_data_in(i_exitcond13_covariance34_cmp_nsign_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_covariance6_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_covariance3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist52_sync_together145_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_covariance37_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_covariance37_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,161)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid225_i_next_initerations_covariance0_shift_x(BITSELECT,224)@2
    assign rightShiftStage0Idx1Rng1_uid225_i_next_initerations_covariance0_shift_x_b = i_llvm_fpga_pop_i2_initerations_pop61_covariance7_out_data_out[1:1];

    // rightShiftStage0Idx1_uid227_i_next_initerations_covariance0_shift_x(BITJOIN,226)@2
    assign rightShiftStage0Idx1_uid227_i_next_initerations_covariance0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid225_i_next_initerations_covariance0_shift_x_b};

    // valid_fanout_reg1(REG,159)@1 + 1
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

    // valid_fanout_reg2(REG,160)@1 + 1
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

    // i_llvm_fpga_push_i2_initerations_push61_covariance9(BLACKBOX,126)@2
    // out out_feedback_out_61@20000000
    // out out_feedback_valid_out_61@20000000
    covariance_i_llvm_fpga_push_i2_initerations_push61_0 thei_llvm_fpga_push_i2_initerations_push61_covariance9 (
        .in_data_in(i_next_initerations_covariance8_vt_join_q),
        .in_feedback_stall_in_61(i_llvm_fpga_pop_i2_initerations_pop61_covariance7_out_feedback_stall_out_61),
        .in_keep_going(redist24_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_61(i_llvm_fpga_push_i2_initerations_push61_covariance9_out_feedback_out_61),
        .out_feedback_valid_out_61(i_llvm_fpga_push_i2_initerations_push61_covariance9_out_feedback_valid_out_61),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations_pop61_covariance7(BLACKBOX,108)@2
    // out out_feedback_stall_out_61@20000000
    covariance_i_llvm_fpga_pop_i2_initerations_pop61_0 thei_llvm_fpga_pop_i2_initerations_pop61_covariance7 (
        .in_data_in(c_i2_198_q),
        .in_dir(redist28_sync_together145_aunroll_x_in_c0_eni23_1_tpl_1_q),
        .in_feedback_in_61(i_llvm_fpga_push_i2_initerations_push61_covariance9_out_feedback_out_61),
        .in_feedback_valid_in_61(i_llvm_fpga_push_i2_initerations_push61_covariance9_out_feedback_valid_out_61),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations_pop61_covariance7_out_data_out),
        .out_feedback_stall_out_61(i_llvm_fpga_pop_i2_initerations_pop61_covariance7_out_feedback_stall_out_61),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid229_i_next_initerations_covariance0_shift_x(MUX,228)@2
    assign rightShiftStage0_uid229_i_next_initerations_covariance0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid229_i_next_initerations_covariance0_shift_x_s or i_llvm_fpga_pop_i2_initerations_pop61_covariance7_out_data_out or rightShiftStage0Idx1_uid227_i_next_initerations_covariance0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid229_i_next_initerations_covariance0_shift_x_s)
            1'b0 : rightShiftStage0_uid229_i_next_initerations_covariance0_shift_x_q = i_llvm_fpga_pop_i2_initerations_pop61_covariance7_out_data_out;
            1'b1 : rightShiftStage0_uid229_i_next_initerations_covariance0_shift_x_q = rightShiftStage0Idx1_uid227_i_next_initerations_covariance0_shift_x_q;
            default : rightShiftStage0_uid229_i_next_initerations_covariance0_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations_covariance8_vt_select_0(BITSELECT,142)@2
    assign i_next_initerations_covariance8_vt_select_0_b = rightShiftStage0_uid229_i_next_initerations_covariance0_shift_x_q[0:0];

    // i_next_initerations_covariance8_vt_join(BITJOIN,141)@2
    assign i_next_initerations_covariance8_vt_join_q = {GND_q, i_next_initerations_covariance8_vt_select_0_b};

    // i_last_initeration_covariance10_sel_x(BITSELECT,12)@2
    assign i_last_initeration_covariance10_sel_x_b = i_next_initerations_covariance8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_covariance11(BLACKBOX,119)@2
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    covariance_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_covariance11 (
        .in_data_in(i_last_initeration_covariance10_sel_x_b),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_covariance6_out_initeration_stall_out),
        .in_keep_going(redist24_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_covariance11_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_covariance11_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_covariance6(BLACKBOX,99)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    covariance_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_covariance6 (
        .in_data_in(in_c0_eni23_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_covariance11_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_covariance11_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_covariance37_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_covariance37_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_covariance6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_covariance6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_covariance6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_covariance6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_covariance6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist24_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_1(DELAY,300)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist24_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out);
        end
    end

    // redist25_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_2(DELAY,301)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_2_q <= '0;
        end
        else
        begin
            redist25_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_2_q <= $unsigned(redist24_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_1_q);
        end
    end

    // i_llvm_fpga_push_i1_exitcond18109_push71_covariance57(BLACKBOX,116)@3
    // out out_feedback_out_71@20000000
    // out out_feedback_valid_out_71@20000000
    covariance_i_llvm_fpga_push_i1_exitcond18109_push71_0 thei_llvm_fpga_push_i1_exitcond18109_push71_covariance57 (
        .in_data_in(redist22_i_llvm_fpga_pop_i1_exitcond18109_pop71_covariance56_out_data_out_1_q),
        .in_feedback_stall_in_71(i_llvm_fpga_pop_i1_exitcond18109_pop71_covariance56_out_feedback_stall_out_71),
        .in_keep_going(redist25_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg29_q),
        .out_data_out(),
        .out_feedback_out_71(i_llvm_fpga_push_i1_exitcond18109_push71_covariance57_out_feedback_out_71),
        .out_feedback_valid_out_71(i_llvm_fpga_push_i1_exitcond18109_push71_covariance57_out_feedback_valid_out_71),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist40_sync_together145_aunroll_x_in_c0_eni23_12_tpl_1(DELAY,316)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_sync_together145_aunroll_x_in_c0_eni23_12_tpl_1_q <= '0;
        end
        else
        begin
            redist40_sync_together145_aunroll_x_in_c0_eni23_12_tpl_1_q <= $unsigned(in_c0_eni23_12_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_exitcond18109_pop71_covariance56(BLACKBOX,100)@2
    // out out_feedback_stall_out_71@20000000
    covariance_i_llvm_fpga_pop_i1_exitcond18109_pop71_0 thei_llvm_fpga_pop_i1_exitcond18109_pop71_covariance56 (
        .in_data_in(redist40_sync_together145_aunroll_x_in_c0_eni23_12_tpl_1_q),
        .in_dir(redist28_sync_together145_aunroll_x_in_c0_eni23_1_tpl_1_q),
        .in_feedback_in_71(i_llvm_fpga_push_i1_exitcond18109_push71_covariance57_out_feedback_out_71),
        .in_feedback_valid_in_71(i_llvm_fpga_push_i1_exitcond18109_push71_covariance57_out_feedback_valid_out_71),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg28_q),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond18109_pop71_covariance56_out_data_out),
        .out_feedback_stall_out_71(i_llvm_fpga_pop_i1_exitcond18109_pop71_covariance56_out_feedback_stall_out_71),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist22_i_llvm_fpga_pop_i1_exitcond18109_pop71_covariance56_out_data_out_1(DELAY,298)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_llvm_fpga_pop_i1_exitcond18109_pop71_covariance56_out_data_out_1_q <= '0;
        end
        else
        begin
            redist22_i_llvm_fpga_pop_i1_exitcond18109_pop71_covariance56_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_exitcond18109_pop71_covariance56_out_data_out);
        end
    end

    // redist23_i_llvm_fpga_pop_i1_exitcond18109_pop71_covariance56_out_data_out_4(DELAY,299)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_llvm_fpga_pop_i1_exitcond18109_pop71_covariance56_out_data_out_4_delay_0 <= '0;
            redist23_i_llvm_fpga_pop_i1_exitcond18109_pop71_covariance56_out_data_out_4_delay_1 <= '0;
            redist23_i_llvm_fpga_pop_i1_exitcond18109_pop71_covariance56_out_data_out_4_q <= '0;
        end
        else
        begin
            redist23_i_llvm_fpga_pop_i1_exitcond18109_pop71_covariance56_out_data_out_4_delay_0 <= $unsigned(redist22_i_llvm_fpga_pop_i1_exitcond18109_pop71_covariance56_out_data_out_1_q);
            redist23_i_llvm_fpga_pop_i1_exitcond18109_pop71_covariance56_out_data_out_4_delay_1 <= redist23_i_llvm_fpga_pop_i1_exitcond18109_pop71_covariance56_out_data_out_4_delay_0;
            redist23_i_llvm_fpga_pop_i1_exitcond18109_pop71_covariance56_out_data_out_4_q <= redist23_i_llvm_fpga_pop_i1_exitcond18109_pop71_covariance56_out_data_out_4_delay_1;
        end
    end

    // valid_fanout_reg26(REG,184)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg26_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg26_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg27(REG,185)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg27_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg27_q <= $unsigned(redist52_sync_together145_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i1_forked27108_push70_covariance55(BLACKBOX,118)@3
    // out out_feedback_out_70@20000000
    // out out_feedback_valid_out_70@20000000
    covariance_i_llvm_fpga_push_i1_forked27108_push70_0 thei_llvm_fpga_push_i1_forked27108_push70_covariance55 (
        .in_data_in(redist20_i_llvm_fpga_pop_i1_forked27108_pop70_covariance54_out_data_out_1_q),
        .in_feedback_stall_in_70(i_llvm_fpga_pop_i1_forked27108_pop70_covariance54_out_feedback_stall_out_70),
        .in_keep_going(redist25_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg27_q),
        .out_data_out(),
        .out_feedback_out_70(i_llvm_fpga_push_i1_forked27108_push70_covariance55_out_feedback_out_70),
        .out_feedback_valid_out_70(i_llvm_fpga_push_i1_forked27108_push70_covariance55_out_feedback_valid_out_70),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist39_sync_together145_aunroll_x_in_c0_eni23_11_tpl_1(DELAY,315)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_sync_together145_aunroll_x_in_c0_eni23_11_tpl_1_q <= '0;
        end
        else
        begin
            redist39_sync_together145_aunroll_x_in_c0_eni23_11_tpl_1_q <= $unsigned(in_c0_eni23_11_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_forked27108_pop70_covariance54(BLACKBOX,102)@2
    // out out_feedback_stall_out_70@20000000
    covariance_i_llvm_fpga_pop_i1_forked27108_pop70_0 thei_llvm_fpga_pop_i1_forked27108_pop70_covariance54 (
        .in_data_in(redist39_sync_together145_aunroll_x_in_c0_eni23_11_tpl_1_q),
        .in_dir(redist28_sync_together145_aunroll_x_in_c0_eni23_1_tpl_1_q),
        .in_feedback_in_70(i_llvm_fpga_push_i1_forked27108_push70_covariance55_out_feedback_out_70),
        .in_feedback_valid_in_70(i_llvm_fpga_push_i1_forked27108_push70_covariance55_out_feedback_valid_out_70),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg26_q),
        .out_data_out(i_llvm_fpga_pop_i1_forked27108_pop70_covariance54_out_data_out),
        .out_feedback_stall_out_70(i_llvm_fpga_pop_i1_forked27108_pop70_covariance54_out_feedback_stall_out_70),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist20_i_llvm_fpga_pop_i1_forked27108_pop70_covariance54_out_data_out_1(DELAY,296)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_llvm_fpga_pop_i1_forked27108_pop70_covariance54_out_data_out_1_q <= '0;
        end
        else
        begin
            redist20_i_llvm_fpga_pop_i1_forked27108_pop70_covariance54_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_forked27108_pop70_covariance54_out_data_out);
        end
    end

    // redist21_i_llvm_fpga_pop_i1_forked27108_pop70_covariance54_out_data_out_4(DELAY,297)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_llvm_fpga_pop_i1_forked27108_pop70_covariance54_out_data_out_4_delay_0 <= '0;
            redist21_i_llvm_fpga_pop_i1_forked27108_pop70_covariance54_out_data_out_4_delay_1 <= '0;
            redist21_i_llvm_fpga_pop_i1_forked27108_pop70_covariance54_out_data_out_4_q <= '0;
        end
        else
        begin
            redist21_i_llvm_fpga_pop_i1_forked27108_pop70_covariance54_out_data_out_4_delay_0 <= $unsigned(redist20_i_llvm_fpga_pop_i1_forked27108_pop70_covariance54_out_data_out_1_q);
            redist21_i_llvm_fpga_pop_i1_forked27108_pop70_covariance54_out_data_out_4_delay_1 <= redist21_i_llvm_fpga_pop_i1_forked27108_pop70_covariance54_out_data_out_4_delay_0;
            redist21_i_llvm_fpga_pop_i1_forked27108_pop70_covariance54_out_data_out_4_q <= redist21_i_llvm_fpga_pop_i1_forked27108_pop70_covariance54_out_data_out_4_delay_1;
        end
    end

    // valid_fanout_reg24(REG,182)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg24_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg24_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg25(REG,183)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg25_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg25_q <= $unsigned(redist52_sync_together145_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp31105_push68_covariance53(BLACKBOX,123)@3
    // out out_feedback_out_68@20000000
    // out out_feedback_valid_out_68@20000000
    covariance_i_llvm_fpga_push_i1_notcmp31105_push68_0 thei_llvm_fpga_push_i1_notcmp31105_push68_covariance53 (
        .in_data_in(redist18_i_llvm_fpga_pop_i1_notcmp31105_pop68_covariance52_out_data_out_1_q),
        .in_feedback_stall_in_68(i_llvm_fpga_pop_i1_notcmp31105_pop68_covariance52_out_feedback_stall_out_68),
        .in_keep_going(redist25_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg25_q),
        .out_data_out(),
        .out_feedback_out_68(i_llvm_fpga_push_i1_notcmp31105_push68_covariance53_out_feedback_out_68),
        .out_feedback_valid_out_68(i_llvm_fpga_push_i1_notcmp31105_push68_covariance53_out_feedback_valid_out_68),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist38_sync_together145_aunroll_x_in_c0_eni23_10_tpl_1(DELAY,314)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_sync_together145_aunroll_x_in_c0_eni23_10_tpl_1_q <= '0;
        end
        else
        begin
            redist38_sync_together145_aunroll_x_in_c0_eni23_10_tpl_1_q <= $unsigned(in_c0_eni23_10_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp31105_pop68_covariance52(BLACKBOX,106)@2
    // out out_feedback_stall_out_68@20000000
    covariance_i_llvm_fpga_pop_i1_notcmp31105_pop68_0 thei_llvm_fpga_pop_i1_notcmp31105_pop68_covariance52 (
        .in_data_in(redist38_sync_together145_aunroll_x_in_c0_eni23_10_tpl_1_q),
        .in_dir(redist28_sync_together145_aunroll_x_in_c0_eni23_1_tpl_1_q),
        .in_feedback_in_68(i_llvm_fpga_push_i1_notcmp31105_push68_covariance53_out_feedback_out_68),
        .in_feedback_valid_in_68(i_llvm_fpga_push_i1_notcmp31105_push68_covariance53_out_feedback_valid_out_68),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg24_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp31105_pop68_covariance52_out_data_out),
        .out_feedback_stall_out_68(i_llvm_fpga_pop_i1_notcmp31105_pop68_covariance52_out_feedback_stall_out_68),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist18_i_llvm_fpga_pop_i1_notcmp31105_pop68_covariance52_out_data_out_1(DELAY,294)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_llvm_fpga_pop_i1_notcmp31105_pop68_covariance52_out_data_out_1_q <= '0;
        end
        else
        begin
            redist18_i_llvm_fpga_pop_i1_notcmp31105_pop68_covariance52_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_notcmp31105_pop68_covariance52_out_data_out);
        end
    end

    // redist19_i_llvm_fpga_pop_i1_notcmp31105_pop68_covariance52_out_data_out_4(DELAY,295)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_llvm_fpga_pop_i1_notcmp31105_pop68_covariance52_out_data_out_4_delay_0 <= '0;
            redist19_i_llvm_fpga_pop_i1_notcmp31105_pop68_covariance52_out_data_out_4_delay_1 <= '0;
            redist19_i_llvm_fpga_pop_i1_notcmp31105_pop68_covariance52_out_data_out_4_q <= '0;
        end
        else
        begin
            redist19_i_llvm_fpga_pop_i1_notcmp31105_pop68_covariance52_out_data_out_4_delay_0 <= $unsigned(redist18_i_llvm_fpga_pop_i1_notcmp31105_pop68_covariance52_out_data_out_1_q);
            redist19_i_llvm_fpga_pop_i1_notcmp31105_pop68_covariance52_out_data_out_4_delay_1 <= redist19_i_llvm_fpga_pop_i1_notcmp31105_pop68_covariance52_out_data_out_4_delay_0;
            redist19_i_llvm_fpga_pop_i1_notcmp31105_pop68_covariance52_out_data_out_4_q <= redist19_i_llvm_fpga_pop_i1_notcmp31105_pop68_covariance52_out_data_out_4_delay_1;
        end
    end

    // valid_fanout_reg22(REG,180)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg22_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg22_q <= $unsigned(redist54_sync_together145_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg23(REG,181)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg23_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg23_q <= $unsigned(redist54_sync_together145_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i1_exitcond21103_push67_covariance51(BLACKBOX,117)@6
    // out out_feedback_out_67@20000000
    // out out_feedback_valid_out_67@20000000
    covariance_i_llvm_fpga_push_i1_exitcond21103_push67_0 thei_llvm_fpga_push_i1_exitcond21103_push67_covariance51 (
        .in_data_in(i_llvm_fpga_pop_i1_exitcond21103_pop67_covariance50_out_data_out),
        .in_feedback_stall_in_67(i_llvm_fpga_pop_i1_exitcond21103_pop67_covariance50_out_feedback_stall_out_67),
        .in_keep_going(redist26_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_5_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg23_q),
        .out_data_out(),
        .out_feedback_out_67(i_llvm_fpga_push_i1_exitcond21103_push67_covariance51_out_feedback_out_67),
        .out_feedback_valid_out_67(i_llvm_fpga_push_i1_exitcond21103_push67_covariance51_out_feedback_valid_out_67),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist37_sync_together145_aunroll_x_in_c0_eni23_9_tpl_5(DELAY,313)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_sync_together145_aunroll_x_in_c0_eni23_9_tpl_5_delay_0 <= '0;
            redist37_sync_together145_aunroll_x_in_c0_eni23_9_tpl_5_delay_1 <= '0;
            redist37_sync_together145_aunroll_x_in_c0_eni23_9_tpl_5_delay_2 <= '0;
            redist37_sync_together145_aunroll_x_in_c0_eni23_9_tpl_5_delay_3 <= '0;
            redist37_sync_together145_aunroll_x_in_c0_eni23_9_tpl_5_q <= '0;
        end
        else
        begin
            redist37_sync_together145_aunroll_x_in_c0_eni23_9_tpl_5_delay_0 <= $unsigned(in_c0_eni23_9_tpl);
            redist37_sync_together145_aunroll_x_in_c0_eni23_9_tpl_5_delay_1 <= redist37_sync_together145_aunroll_x_in_c0_eni23_9_tpl_5_delay_0;
            redist37_sync_together145_aunroll_x_in_c0_eni23_9_tpl_5_delay_2 <= redist37_sync_together145_aunroll_x_in_c0_eni23_9_tpl_5_delay_1;
            redist37_sync_together145_aunroll_x_in_c0_eni23_9_tpl_5_delay_3 <= redist37_sync_together145_aunroll_x_in_c0_eni23_9_tpl_5_delay_2;
            redist37_sync_together145_aunroll_x_in_c0_eni23_9_tpl_5_q <= redist37_sync_together145_aunroll_x_in_c0_eni23_9_tpl_5_delay_3;
        end
    end

    // i_llvm_fpga_pop_i1_exitcond21103_pop67_covariance50(BLACKBOX,101)@6
    // out out_feedback_stall_out_67@20000000
    covariance_i_llvm_fpga_pop_i1_exitcond21103_pop67_0 thei_llvm_fpga_pop_i1_exitcond21103_pop67_covariance50 (
        .in_data_in(redist37_sync_together145_aunroll_x_in_c0_eni23_9_tpl_5_q),
        .in_dir(redist29_sync_together145_aunroll_x_in_c0_eni23_1_tpl_5_q),
        .in_feedback_in_67(i_llvm_fpga_push_i1_exitcond21103_push67_covariance51_out_feedback_out_67),
        .in_feedback_valid_in_67(i_llvm_fpga_push_i1_exitcond21103_push67_covariance51_out_feedback_valid_out_67),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg22_q),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond21103_pop67_covariance50_out_data_out),
        .out_feedback_stall_out_67(i_llvm_fpga_pop_i1_exitcond21103_pop67_covariance50_out_feedback_stall_out_67),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist12_i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_data_out_4_notEnable(LOGICAL,343)
    assign redist12_i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_data_out_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist12_i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_data_out_4_nor(LOGICAL,344)
    assign redist12_i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_data_out_4_nor_q = ~ (redist12_i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_data_out_4_notEnable_q | redist12_i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_data_out_4_sticky_ena_q);

    // redist12_i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_data_out_4_cmpReg(REG,342)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_data_out_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist12_i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_data_out_4_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist12_i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_data_out_4_sticky_ena(REG,345)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_data_out_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist12_i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_data_out_4_nor_q == 1'b1)
        begin
            redist12_i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_data_out_4_sticky_ena_q <= $unsigned(redist12_i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_data_out_4_cmpReg_q);
        end
    end

    // redist12_i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_data_out_4_enaAnd(LOGICAL,346)
    assign redist12_i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_data_out_4_enaAnd_q = redist12_i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_data_out_4_sticky_ena_q & VCC_q;

    // redist12_i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_data_out_4_rdcnt(COUNTER,340)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_data_out_4_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist12_i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_data_out_4_rdcnt_i <= $unsigned(redist12_i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_data_out_4_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist12_i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_data_out_4_rdcnt_q = redist12_i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_data_out_4_rdcnt_i[0:0];

    // valid_fanout_reg20(REG,178)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg20_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg20_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg21(REG,179)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg21_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg21_q <= $unsigned(redist52_sync_together145_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i32_mul47101_push66_covariance49(BLACKBOX,131)@3
    // out out_feedback_out_66@20000000
    // out out_feedback_valid_out_66@20000000
    covariance_i_llvm_fpga_push_i32_mul47101_push66_0 thei_llvm_fpga_push_i32_mul47101_push66_covariance49 (
        .in_data_in(redist11_i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_data_out_1_q),
        .in_feedback_stall_in_66(i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_feedback_stall_out_66),
        .in_keep_going(redist25_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_data_out(),
        .out_feedback_out_66(i_llvm_fpga_push_i32_mul47101_push66_covariance49_out_feedback_out_66),
        .out_feedback_valid_out_66(i_llvm_fpga_push_i32_mul47101_push66_covariance49_out_feedback_valid_out_66),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist36_sync_together145_aunroll_x_in_c0_eni23_8_tpl_1(DELAY,312)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_sync_together145_aunroll_x_in_c0_eni23_8_tpl_1_q <= '0;
        end
        else
        begin
            redist36_sync_together145_aunroll_x_in_c0_eni23_8_tpl_1_q <= $unsigned(in_c0_eni23_8_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_mul47101_pop66_covariance48(BLACKBOX,113)@2
    // out out_feedback_stall_out_66@20000000
    covariance_i_llvm_fpga_pop_i32_mul47101_pop66_0 thei_llvm_fpga_pop_i32_mul47101_pop66_covariance48 (
        .in_data_in(redist36_sync_together145_aunroll_x_in_c0_eni23_8_tpl_1_q),
        .in_dir(redist28_sync_together145_aunroll_x_in_c0_eni23_1_tpl_1_q),
        .in_feedback_in_66(i_llvm_fpga_push_i32_mul47101_push66_covariance49_out_feedback_out_66),
        .in_feedback_valid_in_66(i_llvm_fpga_push_i32_mul47101_push66_covariance49_out_feedback_valid_out_66),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_data_out(i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_data_out),
        .out_feedback_stall_out_66(i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_feedback_stall_out_66),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist11_i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_data_out_1(DELAY,287)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_data_out_1_q <= '0;
        end
        else
        begin
            redist11_i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_data_out);
        end
    end

    // redist12_i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_data_out_4_wraddr(REG,341)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_data_out_4_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist12_i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_data_out_4_wraddr_q <= $unsigned(redist12_i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_data_out_4_rdcnt_q);
        end
    end

    // redist12_i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_data_out_4_mem(DUALMEM,339)
    assign redist12_i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_data_out_4_mem_ia = $unsigned(redist11_i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_data_out_1_q);
    assign redist12_i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_data_out_4_mem_aa = redist12_i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_data_out_4_wraddr_q;
    assign redist12_i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_data_out_4_mem_ab = redist12_i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_data_out_4_rdcnt_q;
    assign redist12_i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_data_out_4_mem_reset0 = ~ (resetn);
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
    ) redist12_i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_data_out_4_mem_dmem (
        .clocken1(redist12_i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_data_out_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist12_i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_data_out_4_mem_reset0),
        .clock1(clock),
        .address_a(redist12_i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_data_out_4_mem_aa),
        .data_a(redist12_i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_data_out_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist12_i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_data_out_4_mem_ab),
        .q_b(redist12_i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_data_out_4_mem_iq),
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
    assign redist12_i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_data_out_4_mem_q = redist12_i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_data_out_4_mem_iq[31:0];

    // redist10_i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_data_out_4_notEnable(LOGICAL,335)
    assign redist10_i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_data_out_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist10_i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_data_out_4_nor(LOGICAL,336)
    assign redist10_i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_data_out_4_nor_q = ~ (redist10_i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_data_out_4_notEnable_q | redist10_i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_data_out_4_sticky_ena_q);

    // redist10_i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_data_out_4_cmpReg(REG,334)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_data_out_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist10_i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_data_out_4_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist10_i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_data_out_4_sticky_ena(REG,337)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_data_out_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist10_i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_data_out_4_nor_q == 1'b1)
        begin
            redist10_i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_data_out_4_sticky_ena_q <= $unsigned(redist10_i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_data_out_4_cmpReg_q);
        end
    end

    // redist10_i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_data_out_4_enaAnd(LOGICAL,338)
    assign redist10_i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_data_out_4_enaAnd_q = redist10_i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_data_out_4_sticky_ena_q & VCC_q;

    // redist10_i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_data_out_4_rdcnt(COUNTER,332)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_data_out_4_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist10_i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_data_out_4_rdcnt_i <= $unsigned(redist10_i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_data_out_4_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist10_i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_data_out_4_rdcnt_q = redist10_i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_data_out_4_rdcnt_i[0:0];

    // valid_fanout_reg18(REG,176)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg18_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg19(REG,177)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg19_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(redist52_sync_together145_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i32_reorder_limiter_enter88_push64_covariance47(BLACKBOX,132)@3
    // out out_feedback_out_64@20000000
    // out out_feedback_valid_out_64@20000000
    covariance_i_llvm_fpga_push_i32_reorder_limiter_enter88_push64_0 thei_llvm_fpga_push_i32_reorder_limiter_enter88_push64_covariance47 (
        .in_data_in(redist9_i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_data_out_1_q),
        .in_feedback_stall_in_64(i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_feedback_stall_out_64),
        .in_keep_going(redist25_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_data_out(),
        .out_feedback_out_64(i_llvm_fpga_push_i32_reorder_limiter_enter88_push64_covariance47_out_feedback_out_64),
        .out_feedback_valid_out_64(i_llvm_fpga_push_i32_reorder_limiter_enter88_push64_covariance47_out_feedback_valid_out_64),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist35_sync_together145_aunroll_x_in_c0_eni23_7_tpl_1(DELAY,311)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_sync_together145_aunroll_x_in_c0_eni23_7_tpl_1_q <= '0;
        end
        else
        begin
            redist35_sync_together145_aunroll_x_in_c0_eni23_7_tpl_1_q <= $unsigned(in_c0_eni23_7_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46(BLACKBOX,114)@2
    // out out_feedback_stall_out_64@20000000
    covariance_i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_0 thei_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46 (
        .in_data_in(redist35_sync_together145_aunroll_x_in_c0_eni23_7_tpl_1_q),
        .in_dir(redist28_sync_together145_aunroll_x_in_c0_eni23_1_tpl_1_q),
        .in_feedback_in_64(i_llvm_fpga_push_i32_reorder_limiter_enter88_push64_covariance47_out_feedback_out_64),
        .in_feedback_valid_in_64(i_llvm_fpga_push_i32_reorder_limiter_enter88_push64_covariance47_out_feedback_valid_out_64),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_data_out(i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_data_out),
        .out_feedback_stall_out_64(i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_feedback_stall_out_64),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist9_i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_data_out_1(DELAY,285)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_data_out_1_q <= '0;
        end
        else
        begin
            redist9_i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_data_out);
        end
    end

    // redist10_i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_data_out_4_wraddr(REG,333)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_data_out_4_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist10_i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_data_out_4_wraddr_q <= $unsigned(redist10_i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_data_out_4_rdcnt_q);
        end
    end

    // redist10_i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_data_out_4_mem(DUALMEM,331)
    assign redist10_i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_data_out_4_mem_ia = $unsigned(redist9_i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_data_out_1_q);
    assign redist10_i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_data_out_4_mem_aa = redist10_i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_data_out_4_wraddr_q;
    assign redist10_i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_data_out_4_mem_ab = redist10_i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_data_out_4_rdcnt_q;
    assign redist10_i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_data_out_4_mem_reset0 = ~ (resetn);
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
    ) redist10_i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_data_out_4_mem_dmem (
        .clocken1(redist10_i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_data_out_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist10_i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_data_out_4_mem_reset0),
        .clock1(clock),
        .address_a(redist10_i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_data_out_4_mem_aa),
        .data_a(redist10_i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_data_out_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist10_i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_data_out_4_mem_ab),
        .q_b(redist10_i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_data_out_4_mem_iq),
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
    assign redist10_i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_data_out_4_mem_q = redist10_i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_data_out_4_mem_iq[31:0];

    // redist14_i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_data_out_4_notEnable(LOGICAL,351)
    assign redist14_i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_data_out_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist14_i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_data_out_4_nor(LOGICAL,352)
    assign redist14_i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_data_out_4_nor_q = ~ (redist14_i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_data_out_4_notEnable_q | redist14_i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_data_out_4_sticky_ena_q);

    // redist14_i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_data_out_4_cmpReg(REG,350)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_data_out_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist14_i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_data_out_4_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist14_i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_data_out_4_sticky_ena(REG,353)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_data_out_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist14_i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_data_out_4_nor_q == 1'b1)
        begin
            redist14_i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_data_out_4_sticky_ena_q <= $unsigned(redist14_i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_data_out_4_cmpReg_q);
        end
    end

    // redist14_i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_data_out_4_enaAnd(LOGICAL,354)
    assign redist14_i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_data_out_4_enaAnd_q = redist14_i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_data_out_4_sticky_ena_q & VCC_q;

    // redist14_i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_data_out_4_rdcnt(COUNTER,348)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_data_out_4_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist14_i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_data_out_4_rdcnt_i <= $unsigned(redist14_i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_data_out_4_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist14_i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_data_out_4_rdcnt_q = redist14_i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_data_out_4_rdcnt_i[0:0];

    // valid_fanout_reg16(REG,174)@1 + 1
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

    // valid_fanout_reg17(REG,175)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg17_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(redist52_sync_together145_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i32_lim_ext84_push63_covariance45(BLACKBOX,130)@3
    // out out_feedback_out_63@20000000
    // out out_feedback_valid_out_63@20000000
    covariance_i_llvm_fpga_push_i32_lim_ext84_push63_0 thei_llvm_fpga_push_i32_lim_ext84_push63_covariance45 (
        .in_data_in(redist13_i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_data_out_1_q),
        .in_feedback_stall_in_63(i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_feedback_stall_out_63),
        .in_keep_going(redist25_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(),
        .out_feedback_out_63(i_llvm_fpga_push_i32_lim_ext84_push63_covariance45_out_feedback_out_63),
        .out_feedback_valid_out_63(i_llvm_fpga_push_i32_lim_ext84_push63_covariance45_out_feedback_valid_out_63),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist34_sync_together145_aunroll_x_in_c0_eni23_6_tpl_1(DELAY,310)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_sync_together145_aunroll_x_in_c0_eni23_6_tpl_1_q <= '0;
        end
        else
        begin
            redist34_sync_together145_aunroll_x_in_c0_eni23_6_tpl_1_q <= $unsigned(in_c0_eni23_6_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44(BLACKBOX,112)@2
    // out out_feedback_stall_out_63@20000000
    covariance_i_llvm_fpga_pop_i32_lim_ext84_pop63_0 thei_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44 (
        .in_data_in(redist34_sync_together145_aunroll_x_in_c0_eni23_6_tpl_1_q),
        .in_dir(redist28_sync_together145_aunroll_x_in_c0_eni23_1_tpl_1_q),
        .in_feedback_in_63(i_llvm_fpga_push_i32_lim_ext84_push63_covariance45_out_feedback_out_63),
        .in_feedback_valid_in_63(i_llvm_fpga_push_i32_lim_ext84_push63_covariance45_out_feedback_valid_out_63),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_data_out),
        .out_feedback_stall_out_63(i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_feedback_stall_out_63),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist13_i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_data_out_1(DELAY,289)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_data_out_1_q <= '0;
        end
        else
        begin
            redist13_i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_data_out);
        end
    end

    // redist14_i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_data_out_4_wraddr(REG,349)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_data_out_4_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist14_i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_data_out_4_wraddr_q <= $unsigned(redist14_i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_data_out_4_rdcnt_q);
        end
    end

    // redist14_i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_data_out_4_mem(DUALMEM,347)
    assign redist14_i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_data_out_4_mem_ia = $unsigned(redist13_i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_data_out_1_q);
    assign redist14_i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_data_out_4_mem_aa = redist14_i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_data_out_4_wraddr_q;
    assign redist14_i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_data_out_4_mem_ab = redist14_i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_data_out_4_rdcnt_q;
    assign redist14_i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_data_out_4_mem_reset0 = ~ (resetn);
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
    ) redist14_i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_data_out_4_mem_dmem (
        .clocken1(redist14_i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_data_out_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist14_i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_data_out_4_mem_reset0),
        .clock1(clock),
        .address_a(redist14_i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_data_out_4_mem_aa),
        .data_a(redist14_i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_data_out_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist14_i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_data_out_4_mem_ab),
        .q_b(redist14_i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_data_out_4_mem_iq),
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
    assign redist14_i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_data_out_4_mem_q = redist14_i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_data_out_4_mem_iq[31:0];

    // i_masked_covariance43(LOGICAL,134)@2 + 1
    assign i_masked_covariance43_qi = i_notcmp_covariance36_q & i_first_cleanup_covariance3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_covariance43_delay ( .xin(i_masked_covariance43_qi), .xout(i_masked_covariance43_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist8_i_masked_covariance43_q_4(DELAY,284)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_masked_covariance43_q_4_delay_0 <= '0;
            redist8_i_masked_covariance43_q_4_delay_1 <= '0;
            redist8_i_masked_covariance43_q_4_q <= '0;
        end
        else
        begin
            redist8_i_masked_covariance43_q_4_delay_0 <= $unsigned(i_masked_covariance43_q);
            redist8_i_masked_covariance43_q_4_delay_1 <= redist8_i_masked_covariance43_q_4_delay_0;
            redist8_i_masked_covariance43_q_4_q <= redist8_i_masked_covariance43_q_4_delay_1;
        end
    end

    // c_i32_0100(CONSTANT,80)
    assign c_i32_0100_q = $unsigned(32'b00000000000000000000000000000000);

    // i_mptr_bitcast_index79_covariance0_add_x_BitSelect_for_b_tessel0_2(BITSELECT,257)
    assign i_mptr_bitcast_index79_covariance0_add_x_BitSelect_for_b_tessel0_2_b = c_i32_0100_q[25:0];

    // valid_fanout_reg12(REG,170)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg13(REG,171)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_j26_071_pop49111_push73_covariance26(BLACKBOX,128)@2
    // out out_feedback_out_73@20000000
    // out out_feedback_valid_out_73@20000000
    covariance_i_llvm_fpga_push_i32_j26_071_pop49111_push73_0 thei_llvm_fpga_push_i32_j26_071_pop49111_push73_covariance26 (
        .in_data_in(i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_data_out),
        .in_feedback_stall_in_73(i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_feedback_stall_out_73),
        .in_keep_going(redist24_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(),
        .out_feedback_out_73(i_llvm_fpga_push_i32_j26_071_pop49111_push73_covariance26_out_feedback_out_73),
        .out_feedback_valid_out_73(i_llvm_fpga_push_i32_j26_071_pop49111_push73_covariance26_out_feedback_valid_out_73),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist33_sync_together145_aunroll_x_in_c0_eni23_5_tpl_1(DELAY,309)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_sync_together145_aunroll_x_in_c0_eni23_5_tpl_1_q <= '0;
        end
        else
        begin
            redist33_sync_together145_aunroll_x_in_c0_eni23_5_tpl_1_q <= $unsigned(in_c0_eni23_5_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25(BLACKBOX,110)@2
    // out out_feedback_stall_out_73@20000000
    covariance_i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_0 thei_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25 (
        .in_data_in(redist33_sync_together145_aunroll_x_in_c0_eni23_5_tpl_1_q),
        .in_dir(redist28_sync_together145_aunroll_x_in_c0_eni23_1_tpl_1_q),
        .in_feedback_in_73(i_llvm_fpga_push_i32_j26_071_pop49111_push73_covariance26_out_feedback_out_73),
        .in_feedback_valid_in_73(i_llvm_fpga_push_i32_j26_071_pop49111_push73_covariance26_out_feedback_valid_out_73),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_data_out),
        .out_feedback_stall_out_73(i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_feedback_stall_out_73),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist15_i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_data_out_1(DELAY,291)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_data_out_1_q <= '0;
        end
        else
        begin
            redist15_i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_data_out);
        end
    end

    // leftShiftStage1Idx1Rng4_uid218_i_mul35_covariance0_shift_x(BITSELECT,217)@2
    assign leftShiftStage1Idx1Rng4_uid218_i_mul35_covariance0_shift_x_in = leftShiftStage0_uid216_i_mul35_covariance0_shift_x_q[27:0];
    assign leftShiftStage1Idx1Rng4_uid218_i_mul35_covariance0_shift_x_b = leftShiftStage1Idx1Rng4_uid218_i_mul35_covariance0_shift_x_in[27:0];

    // leftShiftStage1Idx1Pad4_uid217_i_mul35_covariance0_shift_x(CONSTANT,216)
    assign leftShiftStage1Idx1Pad4_uid217_i_mul35_covariance0_shift_x_q = $unsigned(4'b0000);

    // leftShiftStage1Idx1_uid219_i_mul35_covariance0_shift_x(BITJOIN,218)@2
    assign leftShiftStage1Idx1_uid219_i_mul35_covariance0_shift_x_q = {leftShiftStage1Idx1Rng4_uid218_i_mul35_covariance0_shift_x_b, leftShiftStage1Idx1Pad4_uid217_i_mul35_covariance0_shift_x_q};

    // leftShiftStage0Idx1Rng1_uid213_i_mul35_covariance0_shift_x(BITSELECT,212)@2
    assign leftShiftStage0Idx1Rng1_uid213_i_mul35_covariance0_shift_x_in = i_llvm_fpga_pop_i32_k_069_pop59_covariance12_out_data_out[30:0];
    assign leftShiftStage0Idx1Rng1_uid213_i_mul35_covariance0_shift_x_b = leftShiftStage0Idx1Rng1_uid213_i_mul35_covariance0_shift_x_in[30:0];

    // leftShiftStage0Idx1_uid214_i_mul35_covariance0_shift_x(BITJOIN,213)@2
    assign leftShiftStage0Idx1_uid214_i_mul35_covariance0_shift_x_q = {leftShiftStage0Idx1Rng1_uid213_i_mul35_covariance0_shift_x_b, GND_q};

    // valid_fanout_reg4(REG,162)@1 + 1
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

    // valid_fanout_reg15(REG,173)@1 + 1
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

    // c_i32_1102(CONSTANT,81)
    assign c_i32_1102_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc44_covariance31(ADD,95)@2
    assign i_inc44_covariance31_a = {1'b0, i_llvm_fpga_pop_i32_k_069_pop59_covariance12_out_data_out};
    assign i_inc44_covariance31_b = {1'b0, c_i32_1102_q};
    assign i_inc44_covariance31_o = $unsigned(i_inc44_covariance31_a) + $unsigned(i_inc44_covariance31_b);
    assign i_inc44_covariance31_q = i_inc44_covariance31_o[32:0];

    // bgTrunc_i_inc44_covariance31_sel_x(BITSELECT,5)@2
    assign bgTrunc_i_inc44_covariance31_sel_x_b = i_inc44_covariance31_q[31:0];

    // i_llvm_fpga_push_i32_k_069_push59_covariance32(BLACKBOX,129)@2
    // out out_feedback_out_59@20000000
    // out out_feedback_valid_out_59@20000000
    covariance_i_llvm_fpga_push_i32_k_069_push59_0 thei_llvm_fpga_push_i32_k_069_push59_covariance32 (
        .in_data_in(bgTrunc_i_inc44_covariance31_sel_x_b),
        .in_feedback_stall_in_59(i_llvm_fpga_pop_i32_k_069_pop59_covariance12_out_feedback_stall_out_59),
        .in_keep_going(redist24_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(),
        .out_feedback_out_59(i_llvm_fpga_push_i32_k_069_push59_covariance32_out_feedback_out_59),
        .out_feedback_valid_out_59(i_llvm_fpga_push_i32_k_069_push59_covariance32_out_feedback_valid_out_59),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_k_069_pop59_covariance12(BLACKBOX,111)@2
    // out out_feedback_stall_out_59@20000000
    covariance_i_llvm_fpga_pop_i32_k_069_pop59_0 thei_llvm_fpga_pop_i32_k_069_pop59_covariance12 (
        .in_data_in(c_i32_0100_q),
        .in_dir(redist28_sync_together145_aunroll_x_in_c0_eni23_1_tpl_1_q),
        .in_feedback_in_59(i_llvm_fpga_push_i32_k_069_push59_covariance32_out_feedback_out_59),
        .in_feedback_valid_in_59(i_llvm_fpga_push_i32_k_069_push59_covariance32_out_feedback_valid_out_59),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_k_069_pop59_covariance12_out_data_out),
        .out_feedback_stall_out_59(i_llvm_fpga_pop_i32_k_069_pop59_covariance12_out_feedback_stall_out_59),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // leftShiftStage0_uid216_i_mul35_covariance0_shift_x(MUX,215)@2
    assign leftShiftStage0_uid216_i_mul35_covariance0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid216_i_mul35_covariance0_shift_x_s or i_llvm_fpga_pop_i32_k_069_pop59_covariance12_out_data_out or leftShiftStage0Idx1_uid214_i_mul35_covariance0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid216_i_mul35_covariance0_shift_x_s)
            1'b0 : leftShiftStage0_uid216_i_mul35_covariance0_shift_x_q = i_llvm_fpga_pop_i32_k_069_pop59_covariance12_out_data_out;
            1'b1 : leftShiftStage0_uid216_i_mul35_covariance0_shift_x_q = leftShiftStage0Idx1_uid214_i_mul35_covariance0_shift_x_q;
            default : leftShiftStage0_uid216_i_mul35_covariance0_shift_x_q = 32'b0;
        endcase
    end

    // leftShiftStage1_uid221_i_mul35_covariance0_shift_x(MUX,220)@2
    assign leftShiftStage1_uid221_i_mul35_covariance0_shift_x_s = VCC_q;
    always @(leftShiftStage1_uid221_i_mul35_covariance0_shift_x_s or leftShiftStage0_uid216_i_mul35_covariance0_shift_x_q or leftShiftStage1Idx1_uid219_i_mul35_covariance0_shift_x_q)
    begin
        unique case (leftShiftStage1_uid221_i_mul35_covariance0_shift_x_s)
            1'b0 : leftShiftStage1_uid221_i_mul35_covariance0_shift_x_q = leftShiftStage0_uid216_i_mul35_covariance0_shift_x_q;
            1'b1 : leftShiftStage1_uid221_i_mul35_covariance0_shift_x_q = leftShiftStage1Idx1_uid219_i_mul35_covariance0_shift_x_q;
            default : leftShiftStage1_uid221_i_mul35_covariance0_shift_x_q = 32'b0;
        endcase
    end

    // i_mul35_covariance13_vt_select_31(BITSELECT,138)@2
    assign i_mul35_covariance13_vt_select_31_b = leftShiftStage1_uid221_i_mul35_covariance0_shift_x_q[31:5];

    // redist6_i_mul35_covariance13_vt_select_31_b_1(DELAY,282)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_mul35_covariance13_vt_select_31_b_1_q <= '0;
        end
        else
        begin
            redist6_i_mul35_covariance13_vt_select_31_b_1_q <= $unsigned(i_mul35_covariance13_vt_select_31_b);
        end
    end

    // i_mul35_covariance13_vt_const_4(CONSTANT,136)
    assign i_mul35_covariance13_vt_const_4_q = $unsigned(5'b00000);

    // i_mul35_covariance13_vt_join(BITJOIN,137)@3
    assign i_mul35_covariance13_vt_join_q = {redist6_i_mul35_covariance13_vt_select_31_b_1_q, i_mul35_covariance13_vt_const_4_q};

    // i_add39_covariance27(ADD,87)@3
    assign i_add39_covariance27_a = {1'b0, i_mul35_covariance13_vt_join_q};
    assign i_add39_covariance27_b = {1'b0, redist15_i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_data_out_1_q};
    assign i_add39_covariance27_o = $unsigned(i_add39_covariance27_a) + $unsigned(i_add39_covariance27_b);
    assign i_add39_covariance27_q = i_add39_covariance27_o[32:0];

    // i_mptr_bitcast_index79_covariance0_add_x_BitSelect_for_b_tessel0_1(BITSELECT,256)@3
    assign i_mptr_bitcast_index79_covariance0_add_x_BitSelect_for_b_tessel0_1_b = $unsigned(i_add39_covariance27_q[31:0]);

    // redist3_i_mptr_bitcast_index79_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1(DELAY,279)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_mptr_bitcast_index79_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1_q <= '0;
        end
        else
        begin
            redist3_i_mptr_bitcast_index79_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1_q <= $unsigned(i_mptr_bitcast_index79_covariance0_add_x_BitSelect_for_b_tessel0_1_b);
        end
    end

    // i_mptr_bitcast_index79_covariance0_c_i2_01_x(CONSTANT,16)
    assign i_mptr_bitcast_index79_covariance0_c_i2_01_x_q = $unsigned(2'b00);

    // i_mptr_bitcast_index79_covariance0_add_x_BitSelect_for_b_BitJoin_for_b(BITJOIN,258)@4
    assign i_mptr_bitcast_index79_covariance0_add_x_BitSelect_for_b_BitJoin_for_b_q = {i_mptr_bitcast_index79_covariance0_add_x_BitSelect_for_b_tessel0_2_b, redist3_i_mptr_bitcast_index79_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1_q, i_mptr_bitcast_index79_covariance0_c_i2_01_x_q};

    // valid_fanout_reg14(REG,172)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist53_sync_together145_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast828624_covariance29(BLACKBOX,97)@4
    covariance_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast828624_0 thei_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast828624_covariance29 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast828624_covariance29_out_dest_data_out_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mptr_bitcast_index79_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,274)@4
    assign i_mptr_bitcast_index79_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b = $unsigned(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast828624_covariance29_out_dest_data_out_3_0[59:0]);
    assign i_mptr_bitcast_index79_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c = $unsigned(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast828624_covariance29_out_dest_data_out_3_0[63:60]);

    // i_mptr_bitcast_index79_covariance0_add_x_p1_of_2(ADD,238)@4 + 1
    assign i_mptr_bitcast_index79_covariance0_add_x_p1_of_2_a = {1'b0, i_mptr_bitcast_index79_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b};
    assign i_mptr_bitcast_index79_covariance0_add_x_p1_of_2_b = {1'b0, i_mptr_bitcast_index79_covariance0_add_x_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index79_covariance0_add_x_p1_of_2_o <= 61'b0;
        end
        else
        begin
            i_mptr_bitcast_index79_covariance0_add_x_p1_of_2_o <= $unsigned(i_mptr_bitcast_index79_covariance0_add_x_p1_of_2_a) + $unsigned(i_mptr_bitcast_index79_covariance0_add_x_p1_of_2_b);
        end
    end
    assign i_mptr_bitcast_index79_covariance0_add_x_p1_of_2_c[0] = i_mptr_bitcast_index79_covariance0_add_x_p1_of_2_o[60];
    assign i_mptr_bitcast_index79_covariance0_add_x_p1_of_2_q = i_mptr_bitcast_index79_covariance0_add_x_p1_of_2_o[59:0];

    // i_mptr_bitcast_index79_covariance0_add_x_BitSelect_for_b_tessel1_0(BITSELECT,259)
    assign i_mptr_bitcast_index79_covariance0_add_x_BitSelect_for_b_tessel1_0_b = c_i32_0100_q[29:26];

    // i_mptr_bitcast_index79_covariance0_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,261)@5
    assign i_mptr_bitcast_index79_covariance0_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_mptr_bitcast_index79_covariance0_add_x_BitSelect_for_b_tessel1_0_b};

    // redist1_i_mptr_bitcast_index79_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1(DELAY,277)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_mptr_bitcast_index79_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist1_i_mptr_bitcast_index79_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q <= $unsigned(i_mptr_bitcast_index79_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c);
        end
    end

    // i_mptr_bitcast_index79_covariance0_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,254)@5
    assign i_mptr_bitcast_index79_covariance0_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist1_i_mptr_bitcast_index79_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q};

    // i_mptr_bitcast_index79_covariance0_add_x_p2_of_2(ADD,239)@5 + 1
    assign i_mptr_bitcast_index79_covariance0_add_x_p2_of_2_cin = i_mptr_bitcast_index79_covariance0_add_x_p1_of_2_c;
    assign i_mptr_bitcast_index79_covariance0_add_x_p2_of_2_a = { {1'b0, i_mptr_bitcast_index79_covariance0_add_x_BitSelect_for_a_BitJoin_for_c_q}, 1'b1 };
    assign i_mptr_bitcast_index79_covariance0_add_x_p2_of_2_b = { {1'b0, i_mptr_bitcast_index79_covariance0_add_x_BitSelect_for_b_BitJoin_for_c_q}, i_mptr_bitcast_index79_covariance0_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index79_covariance0_add_x_p2_of_2_o <= 7'b0;
        end
        else
        begin
            i_mptr_bitcast_index79_covariance0_add_x_p2_of_2_o <= $unsigned(i_mptr_bitcast_index79_covariance0_add_x_p2_of_2_a) + $unsigned(i_mptr_bitcast_index79_covariance0_add_x_p2_of_2_b);
        end
    end
    assign i_mptr_bitcast_index79_covariance0_add_x_p2_of_2_q = i_mptr_bitcast_index79_covariance0_add_x_p2_of_2_o[5:1];

    // redist5_i_mptr_bitcast_index79_covariance0_add_x_p1_of_2_q_1(DELAY,281)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_mptr_bitcast_index79_covariance0_add_x_p1_of_2_q_1_q <= '0;
        end
        else
        begin
            redist5_i_mptr_bitcast_index79_covariance0_add_x_p1_of_2_q_1_q <= $unsigned(i_mptr_bitcast_index79_covariance0_add_x_p1_of_2_q);
        end
    end

    // i_mptr_bitcast_index79_covariance0_add_x_BitJoin_for_q(BITJOIN,240)@6
    assign i_mptr_bitcast_index79_covariance0_add_x_BitJoin_for_q_q = {i_mptr_bitcast_index79_covariance0_add_x_p2_of_2_q, redist5_i_mptr_bitcast_index79_covariance0_add_x_p1_of_2_q_1_q};

    // i_mptr_bitcast_index79_covariance0_dupName_0_trunc_sel_x(BITSELECT,13)@6
    assign i_mptr_bitcast_index79_covariance0_dupName_0_trunc_sel_x_b = i_mptr_bitcast_index79_covariance0_add_x_BitJoin_for_q_q[63:0];

    // redist16_i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_data_out_4_notEnable(LOGICAL,359)
    assign redist16_i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_data_out_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist16_i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_data_out_4_nor(LOGICAL,360)
    assign redist16_i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_data_out_4_nor_q = ~ (redist16_i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_data_out_4_notEnable_q | redist16_i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_data_out_4_sticky_ena_q);

    // redist16_i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_data_out_4_cmpReg(REG,358)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_data_out_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist16_i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_data_out_4_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist16_i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_data_out_4_sticky_ena(REG,361)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_data_out_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist16_i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_data_out_4_nor_q == 1'b1)
        begin
            redist16_i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_data_out_4_sticky_ena_q <= $unsigned(redist16_i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_data_out_4_cmpReg_q);
        end
    end

    // redist16_i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_data_out_4_enaAnd(LOGICAL,362)
    assign redist16_i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_data_out_4_enaAnd_q = redist16_i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_data_out_4_sticky_ena_q & VCC_q;

    // redist16_i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_data_out_4_rdcnt(COUNTER,356)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_data_out_4_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist16_i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_data_out_4_rdcnt_i <= $unsigned(redist16_i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_data_out_4_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist16_i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_data_out_4_rdcnt_q = redist16_i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_data_out_4_rdcnt_i[0:0];

    // redist16_i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_data_out_4_wraddr(REG,357)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_data_out_4_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist16_i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_data_out_4_wraddr_q <= $unsigned(redist16_i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_data_out_4_rdcnt_q);
        end
    end

    // redist16_i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_data_out_4_mem(DUALMEM,355)
    assign redist16_i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_data_out_4_mem_ia = $unsigned(redist15_i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_data_out_1_q);
    assign redist16_i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_data_out_4_mem_aa = redist16_i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_data_out_4_wraddr_q;
    assign redist16_i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_data_out_4_mem_ab = redist16_i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_data_out_4_rdcnt_q;
    assign redist16_i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_data_out_4_mem_reset0 = ~ (resetn);
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
    ) redist16_i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_data_out_4_mem_dmem (
        .clocken1(redist16_i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_data_out_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist16_i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_data_out_4_mem_reset0),
        .clock1(clock),
        .address_a(redist16_i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_data_out_4_mem_aa),
        .data_a(redist16_i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_data_out_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist16_i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_data_out_4_mem_ab),
        .q_b(redist16_i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_data_out_4_mem_iq),
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
    assign redist16_i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_data_out_4_mem_q = redist16_i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_data_out_4_mem_iq[31:0];

    // valid_fanout_reg8(REG,166)@1 + 1
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

    // valid_fanout_reg9(REG,167)@1 + 1
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

    // i_llvm_fpga_push_i1_memdep_phi3_pop25107_push69_covariance21(BLACKBOX,121)@2
    // out out_feedback_out_69@20000000
    // out out_feedback_valid_out_69@20000000
    covariance_i_llvm_fpga_push_i1_memdep_phi3_pop25107_push69_0 thei_llvm_fpga_push_i1_memdep_phi3_pop25107_push69_covariance21 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi3_pop25107_pop69_covariance20_out_data_out),
        .in_feedback_stall_in_69(i_llvm_fpga_pop_i1_memdep_phi3_pop25107_pop69_covariance20_out_feedback_stall_out_69),
        .in_keep_going(redist24_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(),
        .out_feedback_out_69(i_llvm_fpga_push_i1_memdep_phi3_pop25107_push69_covariance21_out_feedback_out_69),
        .out_feedback_valid_out_69(i_llvm_fpga_push_i1_memdep_phi3_pop25107_push69_covariance21_out_feedback_valid_out_69),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist31_sync_together145_aunroll_x_in_c0_eni23_3_tpl_1(DELAY,307)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_sync_together145_aunroll_x_in_c0_eni23_3_tpl_1_q <= '0;
        end
        else
        begin
            redist31_sync_together145_aunroll_x_in_c0_eni23_3_tpl_1_q <= $unsigned(in_c0_eni23_3_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi3_pop25107_pop69_covariance20(BLACKBOX,104)@2
    // out out_feedback_stall_out_69@20000000
    covariance_i_llvm_fpga_pop_i1_memdep_phi3_pop25107_pop69_0 thei_llvm_fpga_pop_i1_memdep_phi3_pop25107_pop69_covariance20 (
        .in_data_in(redist31_sync_together145_aunroll_x_in_c0_eni23_3_tpl_1_q),
        .in_dir(redist28_sync_together145_aunroll_x_in_c0_eni23_1_tpl_1_q),
        .in_feedback_in_69(i_llvm_fpga_push_i1_memdep_phi3_pop25107_push69_covariance21_out_feedback_out_69),
        .in_feedback_valid_in_69(i_llvm_fpga_push_i1_memdep_phi3_pop25107_push69_covariance21_out_feedback_valid_out_69),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi3_pop25107_pop69_covariance20_out_data_out),
        .out_feedback_stall_out_69(i_llvm_fpga_pop_i1_memdep_phi3_pop25107_pop69_covariance20_out_feedback_stall_out_69),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg10(REG,168)@1 + 1
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

    // valid_fanout_reg11(REG,169)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi2_pop50112_push74_covariance23(BLACKBOX,120)@2
    // out out_feedback_out_74@20000000
    // out out_feedback_valid_out_74@20000000
    covariance_i_llvm_fpga_push_i1_memdep_phi2_pop50112_push74_0 thei_llvm_fpga_push_i1_memdep_phi2_pop50112_push74_covariance23 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi2_pop50112_pop74_covariance22_out_data_out),
        .in_feedback_stall_in_74(i_llvm_fpga_pop_i1_memdep_phi2_pop50112_pop74_covariance22_out_feedback_stall_out_74),
        .in_keep_going(redist24_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(),
        .out_feedback_out_74(i_llvm_fpga_push_i1_memdep_phi2_pop50112_push74_covariance23_out_feedback_out_74),
        .out_feedback_valid_out_74(i_llvm_fpga_push_i1_memdep_phi2_pop50112_push74_covariance23_out_feedback_valid_out_74),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist32_sync_together145_aunroll_x_in_c0_eni23_4_tpl_1(DELAY,308)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_sync_together145_aunroll_x_in_c0_eni23_4_tpl_1_q <= '0;
        end
        else
        begin
            redist32_sync_together145_aunroll_x_in_c0_eni23_4_tpl_1_q <= $unsigned(in_c0_eni23_4_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi2_pop50112_pop74_covariance22(BLACKBOX,103)@2
    // out out_feedback_stall_out_74@20000000
    covariance_i_llvm_fpga_pop_i1_memdep_phi2_pop50112_pop74_0 thei_llvm_fpga_pop_i1_memdep_phi2_pop50112_pop74_covariance22 (
        .in_data_in(redist32_sync_together145_aunroll_x_in_c0_eni23_4_tpl_1_q),
        .in_dir(redist28_sync_together145_aunroll_x_in_c0_eni23_1_tpl_1_q),
        .in_feedback_in_74(i_llvm_fpga_push_i1_memdep_phi2_pop50112_push74_covariance23_out_feedback_out_74),
        .in_feedback_valid_in_74(i_llvm_fpga_push_i1_memdep_phi2_pop50112_push74_covariance23_out_feedback_valid_out_74),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi2_pop50112_pop74_covariance22_out_data_out),
        .out_feedback_stall_out_74(i_llvm_fpga_pop_i1_memdep_phi2_pop50112_pop74_covariance22_out_feedback_stall_out_74),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_memdep_phi3_or_covariance24(LOGICAL,135)@2 + 1
    assign i_memdep_phi3_or_covariance24_qi = i_llvm_fpga_pop_i1_memdep_phi2_pop50112_pop74_covariance22_out_data_out | i_llvm_fpga_pop_i1_memdep_phi3_pop25107_pop69_covariance20_out_data_out;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_memdep_phi3_or_covariance24_delay ( .xin(i_memdep_phi3_or_covariance24_qi), .xout(i_memdep_phi3_or_covariance24_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist7_i_memdep_phi3_or_covariance24_q_4(DELAY,283)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_memdep_phi3_or_covariance24_q_4_delay_0 <= '0;
            redist7_i_memdep_phi3_or_covariance24_q_4_delay_1 <= '0;
            redist7_i_memdep_phi3_or_covariance24_q_4_q <= '0;
        end
        else
        begin
            redist7_i_memdep_phi3_or_covariance24_q_4_delay_0 <= $unsigned(i_memdep_phi3_or_covariance24_q);
            redist7_i_memdep_phi3_or_covariance24_q_4_delay_1 <= redist7_i_memdep_phi3_or_covariance24_q_4_delay_0;
            redist7_i_memdep_phi3_or_covariance24_q_4_q <= redist7_i_memdep_phi3_or_covariance24_q_4_delay_1;
        end
    end

    // valid_fanout_reg5(REG,163)@1 + 1
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

    // valid_fanout_reg6(REG,164)@1 + 1
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

    // i_llvm_fpga_push_i32_i21_072_pop2499_push65_covariance15(BLACKBOX,127)@2
    // out out_feedback_out_65@20000000
    // out out_feedback_valid_out_65@20000000
    covariance_i_llvm_fpga_push_i32_i21_072_pop2499_push65_0 thei_llvm_fpga_push_i32_i21_072_pop2499_push65_covariance15 (
        .in_data_in(i_llvm_fpga_pop_i32_i21_072_pop2499_pop65_covariance14_out_data_out),
        .in_feedback_stall_in_65(i_llvm_fpga_pop_i32_i21_072_pop2499_pop65_covariance14_out_feedback_stall_out_65),
        .in_keep_going(redist24_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_65(i_llvm_fpga_push_i32_i21_072_pop2499_push65_covariance15_out_feedback_out_65),
        .out_feedback_valid_out_65(i_llvm_fpga_push_i32_i21_072_pop2499_push65_covariance15_out_feedback_valid_out_65),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist30_sync_together145_aunroll_x_in_c0_eni23_2_tpl_1(DELAY,306)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_sync_together145_aunroll_x_in_c0_eni23_2_tpl_1_q <= '0;
        end
        else
        begin
            redist30_sync_together145_aunroll_x_in_c0_eni23_2_tpl_1_q <= $unsigned(in_c0_eni23_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_i21_072_pop2499_pop65_covariance14(BLACKBOX,109)@2
    // out out_feedback_stall_out_65@20000000
    covariance_i_llvm_fpga_pop_i32_i21_072_pop2499_pop65_0 thei_llvm_fpga_pop_i32_i21_072_pop2499_pop65_covariance14 (
        .in_data_in(redist30_sync_together145_aunroll_x_in_c0_eni23_2_tpl_1_q),
        .in_dir(redist28_sync_together145_aunroll_x_in_c0_eni23_1_tpl_1_q),
        .in_feedback_in_65(i_llvm_fpga_push_i32_i21_072_pop2499_push65_covariance15_out_feedback_out_65),
        .in_feedback_valid_in_65(i_llvm_fpga_push_i32_i21_072_pop2499_push65_covariance15_out_feedback_valid_out_65),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i32_i21_072_pop2499_pop65_covariance14_out_data_out),
        .out_feedback_stall_out_65(i_llvm_fpga_pop_i32_i21_072_pop2499_pop65_covariance14_out_feedback_stall_out_65),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist17_i_llvm_fpga_pop_i32_i21_072_pop2499_pop65_covariance14_out_data_out_1(DELAY,293)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_llvm_fpga_pop_i32_i21_072_pop2499_pop65_covariance14_out_data_out_1_q <= '0;
        end
        else
        begin
            redist17_i_llvm_fpga_pop_i32_i21_072_pop2499_pop65_covariance14_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_i21_072_pop2499_pop65_covariance14_out_data_out);
        end
    end

    // i_add36_covariance16(ADD,86)@3
    assign i_add36_covariance16_a = {1'b0, i_mul35_covariance13_vt_join_q};
    assign i_add36_covariance16_b = {1'b0, redist17_i_llvm_fpga_pop_i32_i21_072_pop2499_pop65_covariance14_out_data_out_1_q};
    assign i_add36_covariance16_o = $unsigned(i_add36_covariance16_a) + $unsigned(i_add36_covariance16_b);
    assign i_add36_covariance16_q = i_add36_covariance16_o[32:0];

    // i_mptr_bitcast_index_covariance0_add_x_BitSelect_for_b_tessel0_1(BITSELECT,268)@3
    assign i_mptr_bitcast_index_covariance0_add_x_BitSelect_for_b_tessel0_1_b = $unsigned(i_add36_covariance16_q[31:0]);

    // redist2_i_mptr_bitcast_index_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1(DELAY,278)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_mptr_bitcast_index_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1_q <= '0;
        end
        else
        begin
            redist2_i_mptr_bitcast_index_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1_q <= $unsigned(i_mptr_bitcast_index_covariance0_add_x_BitSelect_for_b_tessel0_1_b);
        end
    end

    // i_mptr_bitcast_index_covariance0_add_x_BitSelect_for_b_BitJoin_for_b(BITJOIN,270)@4
    assign i_mptr_bitcast_index_covariance0_add_x_BitSelect_for_b_BitJoin_for_b_q = {i_mptr_bitcast_index79_covariance0_add_x_BitSelect_for_b_tessel0_2_b, redist2_i_mptr_bitcast_index_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1_q, i_mptr_bitcast_index79_covariance0_c_i2_01_x_q};

    // valid_fanout_reg7(REG,165)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist53_sync_together145_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast828625_covariance18(BLACKBOX,98)@4
    covariance_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast828625_0 thei_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast828625_covariance18 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast828625_covariance18_out_dest_data_out_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mptr_bitcast_index_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,275)@4
    assign i_mptr_bitcast_index_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b = $unsigned(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast828625_covariance18_out_dest_data_out_3_0[59:0]);
    assign i_mptr_bitcast_index_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c = $unsigned(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast828625_covariance18_out_dest_data_out_3_0[63:60]);

    // i_mptr_bitcast_index_covariance0_add_x_p1_of_2(ADD,247)@4 + 1
    assign i_mptr_bitcast_index_covariance0_add_x_p1_of_2_a = {1'b0, i_mptr_bitcast_index_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b};
    assign i_mptr_bitcast_index_covariance0_add_x_p1_of_2_b = {1'b0, i_mptr_bitcast_index_covariance0_add_x_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index_covariance0_add_x_p1_of_2_o <= 61'b0;
        end
        else
        begin
            i_mptr_bitcast_index_covariance0_add_x_p1_of_2_o <= $unsigned(i_mptr_bitcast_index_covariance0_add_x_p1_of_2_a) + $unsigned(i_mptr_bitcast_index_covariance0_add_x_p1_of_2_b);
        end
    end
    assign i_mptr_bitcast_index_covariance0_add_x_p1_of_2_c[0] = i_mptr_bitcast_index_covariance0_add_x_p1_of_2_o[60];
    assign i_mptr_bitcast_index_covariance0_add_x_p1_of_2_q = i_mptr_bitcast_index_covariance0_add_x_p1_of_2_o[59:0];

    // redist0_i_mptr_bitcast_index_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1(DELAY,276)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_mptr_bitcast_index_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist0_i_mptr_bitcast_index_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q <= $unsigned(i_mptr_bitcast_index_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c);
        end
    end

    // i_mptr_bitcast_index_covariance0_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,266)@5
    assign i_mptr_bitcast_index_covariance0_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist0_i_mptr_bitcast_index_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q};

    // i_mptr_bitcast_index_covariance0_add_x_p2_of_2(ADD,248)@5 + 1
    assign i_mptr_bitcast_index_covariance0_add_x_p2_of_2_cin = i_mptr_bitcast_index_covariance0_add_x_p1_of_2_c;
    assign i_mptr_bitcast_index_covariance0_add_x_p2_of_2_a = { {1'b0, i_mptr_bitcast_index_covariance0_add_x_BitSelect_for_a_BitJoin_for_c_q}, 1'b1 };
    assign i_mptr_bitcast_index_covariance0_add_x_p2_of_2_b = { {1'b0, i_mptr_bitcast_index79_covariance0_add_x_BitSelect_for_b_BitJoin_for_c_q}, i_mptr_bitcast_index_covariance0_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index_covariance0_add_x_p2_of_2_o <= 7'b0;
        end
        else
        begin
            i_mptr_bitcast_index_covariance0_add_x_p2_of_2_o <= $unsigned(i_mptr_bitcast_index_covariance0_add_x_p2_of_2_a) + $unsigned(i_mptr_bitcast_index_covariance0_add_x_p2_of_2_b);
        end
    end
    assign i_mptr_bitcast_index_covariance0_add_x_p2_of_2_q = i_mptr_bitcast_index_covariance0_add_x_p2_of_2_o[5:1];

    // redist4_i_mptr_bitcast_index_covariance0_add_x_p1_of_2_q_1(DELAY,280)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_mptr_bitcast_index_covariance0_add_x_p1_of_2_q_1_q <= '0;
        end
        else
        begin
            redist4_i_mptr_bitcast_index_covariance0_add_x_p1_of_2_q_1_q <= $unsigned(i_mptr_bitcast_index_covariance0_add_x_p1_of_2_q);
        end
    end

    // i_mptr_bitcast_index_covariance0_add_x_BitJoin_for_q(BITJOIN,249)@6
    assign i_mptr_bitcast_index_covariance0_add_x_BitJoin_for_q_q = {i_mptr_bitcast_index_covariance0_add_x_p2_of_2_q, redist4_i_mptr_bitcast_index_covariance0_add_x_p1_of_2_q_1_q};

    // i_mptr_bitcast_index_covariance0_dupName_0_trunc_sel_x(BITSELECT,19)@6
    assign i_mptr_bitcast_index_covariance0_dupName_0_trunc_sel_x_b = i_mptr_bitcast_index_covariance0_add_x_BitJoin_for_q_q[63:0];

    // redist26_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_5(DELAY,302)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_5_delay_0 <= '0;
            redist26_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_5_delay_1 <= '0;
            redist26_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_5_q <= '0;
        end
        else
        begin
            redist26_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_5_delay_0 <= $unsigned(redist25_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_2_q);
            redist26_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_5_delay_1 <= redist26_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_5_delay_0;
            redist26_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_5_q <= redist26_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_5_delay_1;
        end
    end

    // redist27_i_first_cleanup_xor_covariance4_q_4(DELAY,303)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_first_cleanup_xor_covariance4_q_4_delay_0 <= '0;
            redist27_i_first_cleanup_xor_covariance4_q_4_delay_1 <= '0;
            redist27_i_first_cleanup_xor_covariance4_q_4_delay_2 <= '0;
            redist27_i_first_cleanup_xor_covariance4_q_4_q <= '0;
        end
        else
        begin
            redist27_i_first_cleanup_xor_covariance4_q_4_delay_0 <= $unsigned(i_first_cleanup_xor_covariance4_q);
            redist27_i_first_cleanup_xor_covariance4_q_4_delay_1 <= redist27_i_first_cleanup_xor_covariance4_q_4_delay_0;
            redist27_i_first_cleanup_xor_covariance4_q_4_delay_2 <= redist27_i_first_cleanup_xor_covariance4_q_4_delay_1;
            redist27_i_first_cleanup_xor_covariance4_q_4_q <= redist27_i_first_cleanup_xor_covariance4_q_4_delay_2;
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,35)@6
    assign out_c0_exi26_0_tpl = GND_q;
    assign out_c0_exi26_1_tpl = redist27_i_first_cleanup_xor_covariance4_q_4_q;
    assign out_c0_exi26_2_tpl = redist26_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_5_q;
    assign out_c0_exi26_3_tpl = i_mptr_bitcast_index_covariance0_dupName_0_trunc_sel_x_b;
    assign out_c0_exi26_4_tpl = redist7_i_memdep_phi3_or_covariance24_q_4_q;
    assign out_c0_exi26_5_tpl = redist16_i_llvm_fpga_pop_i32_j26_071_pop49111_pop73_covariance25_out_data_out_4_mem_q;
    assign out_c0_exi26_6_tpl = i_mptr_bitcast_index79_covariance0_dupName_0_trunc_sel_x_b;
    assign out_c0_exi26_7_tpl = redist8_i_masked_covariance43_q_4_q;
    assign out_c0_exi26_8_tpl = redist14_i_llvm_fpga_pop_i32_lim_ext84_pop63_covariance44_out_data_out_4_mem_q;
    assign out_c0_exi26_9_tpl = redist10_i_llvm_fpga_pop_i32_reorder_limiter_enter88_pop64_covariance46_out_data_out_4_mem_q;
    assign out_c0_exi26_10_tpl = redist12_i_llvm_fpga_pop_i32_mul47101_pop66_covariance48_out_data_out_4_mem_q;
    assign out_c0_exi26_11_tpl = i_llvm_fpga_pop_i1_exitcond21103_pop67_covariance50_out_data_out;
    assign out_c0_exi26_12_tpl = redist19_i_llvm_fpga_pop_i1_notcmp31105_pop68_covariance52_out_data_out_4_q;
    assign out_c0_exi26_13_tpl = redist21_i_llvm_fpga_pop_i1_forked27108_pop70_covariance54_out_data_out_4_q;
    assign out_c0_exi26_14_tpl = redist23_i_llvm_fpga_pop_i1_exitcond18109_pop71_covariance56_out_data_out_4_q;
    assign out_c0_exi26_15_tpl = i_llvm_fpga_pop_i1_notcmp26110_pop72_covariance58_out_data_out;
    assign out_c0_exi26_16_tpl = redist29_sync_together145_aunroll_x_in_c0_eni23_1_tpl_5_q;
    assign out_c0_exi26_17_tpl = redist42_sync_together145_aunroll_x_in_c0_eni23_14_tpl_5_mem_q;
    assign out_c0_exi26_18_tpl = redist43_sync_together145_aunroll_x_in_c0_eni23_15_tpl_5_mem_q;
    assign out_c0_exi26_19_tpl = redist44_sync_together145_aunroll_x_in_c0_eni23_16_tpl_5_mem_q;
    assign out_c0_exi26_20_tpl = redist45_sync_together145_aunroll_x_in_c0_eni23_17_tpl_5_mem_q;
    assign out_c0_exi26_21_tpl = redist46_sync_together145_aunroll_x_in_c0_eni23_18_tpl_5_mem_q;
    assign out_c0_exi26_22_tpl = redist47_sync_together145_aunroll_x_in_c0_eni23_19_tpl_5_q;
    assign out_c0_exi26_23_tpl = redist48_sync_together145_aunroll_x_in_c0_eni23_20_tpl_5_q;
    assign out_c0_exi26_24_tpl = redist49_sync_together145_aunroll_x_in_c0_eni23_21_tpl_5_q;
    assign out_c0_exi26_25_tpl = redist50_sync_together145_aunroll_x_in_c0_eni23_22_tpl_5_mem_q;
    assign out_c0_exi26_26_tpl = redist51_sync_together145_aunroll_x_in_c0_eni23_23_tpl_5_mem_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_covariance0 = GND_q;

    // ext_sig_sync_out(GPOUT,85)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_covariance6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_covariance6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_covariance6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_covariance6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,155)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_covariance6_out_pipeline_valid_out;

endmodule
