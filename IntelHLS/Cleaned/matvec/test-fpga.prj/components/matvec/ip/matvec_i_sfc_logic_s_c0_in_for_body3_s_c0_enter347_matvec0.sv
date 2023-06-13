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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body3_matvecs_c0_enter347_matvec0
// Created for function/kernel matvec
// SystemVerilog created on Tue Jun 13 02:57:01 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module matvec_i_sfc_logic_s_c0_in_for_body3_s_c0_enter347_matvec0 (
    output wire [0:0] out_c0_exi10_0_tpl,
    output wire [0:0] out_c0_exi10_1_tpl,
    output wire [0:0] out_c0_exi10_2_tpl,
    output wire [31:0] out_c0_exi10_3_tpl,
    output wire [63:0] out_c0_exi10_4_tpl,
    output wire [0:0] out_c0_exi10_5_tpl,
    output wire [63:0] out_c0_exi10_6_tpl,
    output wire [0:0] out_c0_exi10_7_tpl,
    output wire [0:0] out_c0_exi10_8_tpl,
    output wire [0:0] out_c0_exi10_9_tpl,
    output wire [0:0] out_c0_exi10_10_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_matvec1,
    input wire [0:0] in_c0_eni5_0_tpl,
    input wire [0:0] in_c0_eni5_1_tpl,
    input wire [31:0] in_c0_eni5_2_tpl,
    input wire [0:0] in_c0_eni5_3_tpl,
    input wire [0:0] in_c0_eni5_4_tpl,
    input wire [0:0] in_c0_eni5_5_tpl,
    input wire [0:0] in_enable,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_matvec6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_matvec6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] bgTrunc_i_dot1_prod_matvec20_sel_x_b;
    wire [5:0] bgTrunc_i_fpga_indvars_iv_next_matvec35_sel_x_b;
    wire [31:0] bgTrunc_i_inc_matvec25_sel_x_b;
    wire [63:0] i_dot1_prod_matvec20_extender_x_q;
    wire [26:0] i_dot1_prod_matvec20_multconst_x_q;
    wire [0:0] i_first_cleanup_matvec3_sel_x_b;
    wire [0:0] i_last_initeration_matvec10_sel_x_b;
    wire [63:0] i_mptr_bitcast_index34_matvec0_dupName_0_trunc_sel_x_b;
    wire [1:0] i_mptr_bitcast_index34_matvec0_c_i2_01_x_q;
    wire [63:0] i_mptr_bitcast_index_matvec0_dupName_0_trunc_sel_x_b;
    wire [1:0] c_i2_145_q;
    wire [31:0] c_i32_047_q;
    wire [31:0] c_i32_149_q;
    wire [5:0] c_i6_152_q;
    wire [5:0] c_i6_2850_q;
    wire [1:0] i_cleanups_shl_matvec5_vt_join_q;
    wire [0:0] i_cleanups_shl_matvec5_vt_select_1_b;
    wire [31:0] i_dot1_prod_matvec20_vt_join_q;
    wire [30:0] i_dot1_prod_matvec20_vt_select_31_b;
    wire [32:0] i_dot_prod_add_matvec21_a;
    wire [32:0] i_dot_prod_add_matvec21_b;
    logic [32:0] i_dot_prod_add_matvec21_o;
    wire [32:0] i_dot_prod_add_matvec21_q;
    wire [0:0] i_first_cleanup_xor_matvec4_q;
    wire [6:0] i_fpga_indvars_iv_next_matvec35_a;
    wire [6:0] i_fpga_indvars_iv_next_matvec35_b;
    logic [6:0] i_fpga_indvars_iv_next_matvec35_o;
    wire [6:0] i_fpga_indvars_iv_next_matvec35_q;
    wire [32:0] i_inc_matvec25_a;
    wire [32:0] i_inc_matvec25_b;
    logic [32:0] i_inc_matvec25_o;
    wire [32:0] i_inc_matvec25_q;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast33385_matvec16_out_dest_data_out_1_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast376_matvec23_out_dest_data_out_2_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_matvec6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_matvec6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_matvec6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_matvec6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_matvec6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond317_pop16_matvec38_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond317_pop16_matvec38_out_feedback_stall_out_16;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop1020_pop19_matvec18_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop1020_pop19_matvec18_out_feedback_stall_out_19;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp718_pop17_matvec40_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp718_pop17_matvec40_out_feedback_stall_out_17;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups_pop15_matvec2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop15_matvec2_out_feedback_stall_out_15;
    wire [1:0] i_llvm_fpga_pop_i2_initerations_pop14_matvec7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations_pop14_matvec7_out_feedback_stall_out_14;
    wire [31:0] i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_feedback_stall_out_18;
    wire [31:0] i_llvm_fpga_pop_i32_j_030_pop13_matvec14_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_030_pop13_matvec14_out_feedback_stall_out_13;
    wire [5:0] i_llvm_fpga_pop_i6_fpga_indvars_iv_pop11_matvec27_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv_pop11_matvec27_out_feedback_stall_out_11;
    wire [0:0] i_llvm_fpga_push_i1_exitcond317_push16_matvec39_out_feedback_out_16;
    wire [0:0] i_llvm_fpga_push_i1_exitcond317_push16_matvec39_out_feedback_valid_out_16;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_matvec11_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_matvec11_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop1020_push19_matvec19_out_feedback_out_19;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop1020_push19_matvec19_out_feedback_valid_out_19;
    wire [0:0] i_llvm_fpga_push_i1_notcmp718_push17_matvec41_out_feedback_out_17;
    wire [0:0] i_llvm_fpga_push_i1_notcmp718_push17_matvec41_out_feedback_valid_out_17;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_matvec31_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_matvec31_out_feedback_valid_out_3;
    wire [7:0] i_llvm_fpga_push_i2_cleanups_push15_matvec34_out_feedback_out_15;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push15_matvec34_out_feedback_valid_out_15;
    wire [7:0] i_llvm_fpga_push_i2_initerations_push14_matvec9_out_feedback_out_14;
    wire [0:0] i_llvm_fpga_push_i2_initerations_push14_matvec9_out_feedback_valid_out_14;
    wire [31:0] i_llvm_fpga_push_i32_i_032_pop919_push18_matvec13_out_feedback_out_18;
    wire [0:0] i_llvm_fpga_push_i32_i_032_pop919_push18_matvec13_out_feedback_valid_out_18;
    wire [31:0] i_llvm_fpga_push_i32_j_030_push13_matvec26_out_feedback_out_13;
    wire [0:0] i_llvm_fpga_push_i32_j_030_push13_matvec26_out_feedback_valid_out_13;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push11_matvec36_out_feedback_out_11;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push11_matvec36_out_feedback_valid_out_11;
    wire [0:0] i_masked_matvec37_qi;
    reg [0:0] i_masked_matvec37_q;
    wire [0:0] i_next_cleanups_matvec33_s;
    reg [1:0] i_next_cleanups_matvec33_q;
    wire [1:0] i_next_initerations_matvec8_vt_join_q;
    wire [0:0] i_next_initerations_matvec8_vt_select_0_b;
    wire [0:0] i_notcmp_matvec30_q;
    wire [0:0] i_or_matvec32_q;
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
    wire [0:0] leftShiftStage0Idx1Rng1_uid157_i_cleanups_shl_matvec0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid157_i_cleanups_shl_matvec0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid158_i_cleanups_shl_matvec0_shift_x_q;
    wire [0:0] leftShiftStage0_uid160_i_cleanups_shl_matvec0_shift_x_s;
    reg [1:0] leftShiftStage0_uid160_i_cleanups_shl_matvec0_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid164_i_next_initerations_matvec0_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid166_i_next_initerations_matvec0_shift_x_q;
    wire [0:0] rightShiftStage0_uid168_i_next_initerations_matvec0_shift_x_s;
    reg [1:0] rightShiftStage0_uid168_i_next_initerations_matvec0_shift_x_q;
    wire [36:0] i_dot1_prod_matvec20_sums_align_1_q;
    wire [36:0] i_dot1_prod_matvec20_sums_align_1_qint;
    wire [37:0] i_dot1_prod_matvec20_sums_result_add_0_0_a;
    wire [37:0] i_dot1_prod_matvec20_sums_result_add_0_0_b;
    logic [37:0] i_dot1_prod_matvec20_sums_result_add_0_0_o;
    wire [37:0] i_dot1_prod_matvec20_sums_result_add_0_0_q;
    wire [0:0] i_exitcond_matvec28_cmp_nsign_q;
    wire [18:0] xIfSign_mergedSignalTM_uid206_i_dot1_prod_matvec20_im0_q;
    wire [3:0] padACst_uid210_i_dot1_prod_matvec20_im0_q;
    wire [22:0] aPostPad_uid211_i_dot1_prod_matvec20_im0_q;
    wire [23:0] sub_uid212_i_dot1_prod_matvec20_im0_a;
    wire [23:0] sub_uid212_i_dot1_prod_matvec20_im0_b;
    logic [23:0] sub_uid212_i_dot1_prod_matvec20_im0_o;
    wire [23:0] sub_uid212_i_dot1_prod_matvec20_im0_q;
    wire [21:0] sR_bottomRange_uid216_i_dot1_prod_matvec20_im0_in;
    wire [21:0] sR_bottomRange_uid216_i_dot1_prod_matvec20_im0_b;
    wire [22:0] sR_mergedSignalTM_uid217_i_dot1_prod_matvec20_im0_q;
    wire [14:0] xIfSign_mergedSignalTM_uid268_i_dot1_prod_matvec20_im3_q;
    wire [18:0] aPostPad_uid273_i_dot1_prod_matvec20_im3_q;
    wire [19:0] sub_uid274_i_dot1_prod_matvec20_im3_a;
    wire [19:0] sub_uid274_i_dot1_prod_matvec20_im3_b;
    logic [19:0] sub_uid274_i_dot1_prod_matvec20_im3_o;
    wire [19:0] sub_uid274_i_dot1_prod_matvec20_im3_q;
    wire [17:0] sR_bottomRange_uid278_i_dot1_prod_matvec20_im3_in;
    wire [17:0] sR_bottomRange_uid278_i_dot1_prod_matvec20_im3_b;
    wire [18:0] sR_mergedSignalTM_uid279_i_dot1_prod_matvec20_im3_q;
    wire [60:0] i_mptr_bitcast_index34_matvec0_add_x_p1_of_2_a;
    wire [60:0] i_mptr_bitcast_index34_matvec0_add_x_p1_of_2_b;
    logic [60:0] i_mptr_bitcast_index34_matvec0_add_x_p1_of_2_o;
    wire [0:0] i_mptr_bitcast_index34_matvec0_add_x_p1_of_2_c;
    wire [59:0] i_mptr_bitcast_index34_matvec0_add_x_p1_of_2_q;
    wire [6:0] i_mptr_bitcast_index34_matvec0_add_x_p2_of_2_a;
    wire [6:0] i_mptr_bitcast_index34_matvec0_add_x_p2_of_2_b;
    logic [6:0] i_mptr_bitcast_index34_matvec0_add_x_p2_of_2_o;
    wire [0:0] i_mptr_bitcast_index34_matvec0_add_x_p2_of_2_cin;
    wire [4:0] i_mptr_bitcast_index34_matvec0_add_x_p2_of_2_q;
    wire [64:0] i_mptr_bitcast_index34_matvec0_add_x_BitJoin_for_q_q;
    wire [60:0] i_mptr_bitcast_index_matvec0_add_x_p1_of_2_a;
    wire [60:0] i_mptr_bitcast_index_matvec0_add_x_p1_of_2_b;
    logic [60:0] i_mptr_bitcast_index_matvec0_add_x_p1_of_2_o;
    wire [0:0] i_mptr_bitcast_index_matvec0_add_x_p1_of_2_c;
    wire [59:0] i_mptr_bitcast_index_matvec0_add_x_p1_of_2_q;
    wire [6:0] i_mptr_bitcast_index_matvec0_add_x_p2_of_2_a;
    wire [6:0] i_mptr_bitcast_index_matvec0_add_x_p2_of_2_b;
    logic [6:0] i_mptr_bitcast_index_matvec0_add_x_p2_of_2_o;
    wire [0:0] i_mptr_bitcast_index_matvec0_add_x_p2_of_2_cin;
    wire [4:0] i_mptr_bitcast_index_matvec0_add_x_p2_of_2_q;
    wire [64:0] i_mptr_bitcast_index_matvec0_add_x_BitJoin_for_q_q;
    wire [4:0] i_mptr_bitcast_index34_matvec0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [25:0] i_mptr_bitcast_index34_matvec0_add_x_BitSelect_for_b_tessel0_2_b;
    wire [59:0] i_mptr_bitcast_index34_matvec0_add_x_BitSelect_for_b_BitJoin_for_b_q;
    wire [3:0] i_mptr_bitcast_index34_matvec0_add_x_BitSelect_for_b_tessel1_0_b;
    wire [4:0] i_mptr_bitcast_index34_matvec0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [4:0] i_mptr_bitcast_index_matvec0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [31:0] i_mptr_bitcast_index_matvec0_add_x_BitSelect_for_b_tessel0_1_b;
    wire [59:0] i_mptr_bitcast_index_matvec0_add_x_BitSelect_for_b_BitJoin_for_b_q;
    wire [59:0] i_mptr_bitcast_index34_matvec0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    wire [3:0] i_mptr_bitcast_index34_matvec0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c;
    wire [59:0] i_mptr_bitcast_index_matvec0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    wire [3:0] i_mptr_bitcast_index_matvec0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c;
    wire [17:0] i_dot1_prod_matvec20_bs1_merged_bit_select_b;
    wire [13:0] i_dot1_prod_matvec20_bs1_merged_bit_select_c;
    reg [3:0] redist0_i_mptr_bitcast_index_matvec0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q;
    reg [3:0] redist1_i_mptr_bitcast_index34_matvec0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q;
    reg [31:0] redist2_i_mptr_bitcast_index_matvec0_add_x_BitSelect_for_b_tessel0_1_b_1_q;
    reg [59:0] redist3_i_mptr_bitcast_index_matvec0_add_x_p1_of_2_q_1_q;
    reg [59:0] redist4_i_mptr_bitcast_index34_matvec0_add_x_p1_of_2_q_1_q;
    reg [17:0] redist5_sR_bottomRange_uid278_i_dot1_prod_matvec20_im3_b_1_q;
    reg [21:0] redist6_sR_bottomRange_uid216_i_dot1_prod_matvec20_im0_b_1_q;
    reg [0:0] redist7_valid_fanout_reg0_q_2_q;
    reg [0:0] redist7_valid_fanout_reg0_q_2_delay_0;
    reg [0:0] redist8_i_masked_matvec37_q_6_q;
    reg [0:0] redist8_i_masked_matvec37_q_6_delay_0;
    reg [0:0] redist8_i_masked_matvec37_q_6_delay_1;
    reg [0:0] redist8_i_masked_matvec37_q_6_delay_2;
    reg [0:0] redist8_i_masked_matvec37_q_6_delay_3;
    reg [31:0] redist9_i_llvm_fpga_pop_i32_j_030_pop13_matvec14_out_data_out_1_q;
    reg [31:0] redist10_i_llvm_fpga_pop_i32_j_030_pop13_matvec14_out_data_out_2_q;
    reg [31:0] redist11_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_1_q;
    reg [0:0] redist13_i_llvm_fpga_pop_i1_notcmp718_pop17_matvec40_out_data_out_2_q;
    reg [0:0] redist13_i_llvm_fpga_pop_i1_notcmp718_pop17_matvec40_out_data_out_2_delay_0;
    reg [0:0] redist14_i_llvm_fpga_pop_i1_memdep_phi_pop1020_pop19_matvec18_out_data_out_2_q;
    reg [0:0] redist14_i_llvm_fpga_pop_i1_memdep_phi_pop1020_pop19_matvec18_out_data_out_2_delay_0;
    reg [0:0] redist15_i_llvm_fpga_pop_i1_exitcond317_pop16_matvec38_out_data_out_2_q;
    reg [0:0] redist15_i_llvm_fpga_pop_i1_exitcond317_pop16_matvec38_out_data_out_2_delay_0;
    reg [0:0] redist16_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_1_q;
    reg [0:0] redist17_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_2_q;
    reg [0:0] redist18_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_4_q;
    reg [0:0] redist18_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_4_delay_0;
    reg [0:0] redist19_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_5_q;
    reg [0:0] redist20_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_7_q;
    reg [0:0] redist20_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_7_delay_0;
    reg [0:0] redist21_i_first_cleanup_xor_matvec4_q_6_q;
    reg [30:0] redist22_i_dot1_prod_matvec20_vt_select_31_b_1_q;
    reg [0:0] redist23_sync_together76_aunroll_x_in_c0_eni5_1_tpl_1_q;
    reg [0:0] redist24_sync_together76_aunroll_x_in_c0_eni5_1_tpl_3_q;
    reg [0:0] redist24_sync_together76_aunroll_x_in_c0_eni5_1_tpl_3_delay_0;
    reg [0:0] redist25_sync_together76_aunroll_x_in_c0_eni5_1_tpl_5_q;
    reg [0:0] redist25_sync_together76_aunroll_x_in_c0_eni5_1_tpl_5_delay_0;
    reg [0:0] redist26_sync_together76_aunroll_x_in_c0_eni5_1_tpl_7_q;
    reg [0:0] redist26_sync_together76_aunroll_x_in_c0_eni5_1_tpl_7_delay_0;
    reg [31:0] redist27_sync_together76_aunroll_x_in_c0_eni5_2_tpl_1_q;
    reg [0:0] redist28_sync_together76_aunroll_x_in_c0_eni5_3_tpl_5_q;
    reg [0:0] redist28_sync_together76_aunroll_x_in_c0_eni5_3_tpl_5_delay_0;
    reg [0:0] redist28_sync_together76_aunroll_x_in_c0_eni5_3_tpl_5_delay_1;
    reg [0:0] redist28_sync_together76_aunroll_x_in_c0_eni5_3_tpl_5_delay_2;
    reg [0:0] redist28_sync_together76_aunroll_x_in_c0_eni5_3_tpl_5_delay_3;
    reg [0:0] redist29_sync_together76_aunroll_x_in_c0_eni5_4_tpl_5_q;
    reg [0:0] redist29_sync_together76_aunroll_x_in_c0_eni5_4_tpl_5_delay_0;
    reg [0:0] redist29_sync_together76_aunroll_x_in_c0_eni5_4_tpl_5_delay_1;
    reg [0:0] redist29_sync_together76_aunroll_x_in_c0_eni5_4_tpl_5_delay_2;
    reg [0:0] redist29_sync_together76_aunroll_x_in_c0_eni5_4_tpl_5_delay_3;
    reg [0:0] redist30_sync_together76_aunroll_x_in_c0_eni5_5_tpl_5_q;
    reg [0:0] redist30_sync_together76_aunroll_x_in_c0_eni5_5_tpl_5_delay_0;
    reg [0:0] redist30_sync_together76_aunroll_x_in_c0_eni5_5_tpl_5_delay_1;
    reg [0:0] redist30_sync_together76_aunroll_x_in_c0_eni5_5_tpl_5_delay_2;
    reg [0:0] redist30_sync_together76_aunroll_x_in_c0_eni5_5_tpl_5_delay_3;
    reg [0:0] redist31_sync_together76_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist32_sync_together76_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist33_sync_together76_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist34_sync_together76_aunroll_x_in_i_valid_4_q;
    wire [0:0] dupName_0_enable_stall_connector_x_not_enable_q;
    reg [31:0] redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_inputreg0_q;
    reg [31:0] redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_outputreg0_q;
    wire redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_mem_reset0;
    wire [31:0] redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_mem_ia;
    wire [0:0] redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_mem_aa;
    wire [0:0] redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_mem_ab;
    wire [31:0] redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_mem_iq;
    wire [31:0] redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_mem_q;
    wire [0:0] redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_rdcnt_q;
    (* preserve *) reg [0:0] redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_rdcnt_i;
    wire [0:0] redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_rdmux_s;
    reg [0:0] redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_rdmux_q;
    reg [0:0] redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_wraddr_q;
    (* dont_merge *) reg [0:0] redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_cmpReg_q;
    wire [0:0] redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_notEnable_q;
    wire [0:0] redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_nor_q;
    (* dont_merge *) reg [0:0] redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_sticky_ena_q;
    wire [0:0] redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_enaAnd_q;


    // redist31_sync_together76_aunroll_x_in_i_valid_1(DELAY,375)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_sync_together76_aunroll_x_in_i_valid_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist31_sync_together76_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist32_sync_together76_aunroll_x_in_i_valid_2(DELAY,376)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_sync_together76_aunroll_x_in_i_valid_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist32_sync_together76_aunroll_x_in_i_valid_2_q <= $unsigned(redist31_sync_together76_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist33_sync_together76_aunroll_x_in_i_valid_3(DELAY,377)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_sync_together76_aunroll_x_in_i_valid_3_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist33_sync_together76_aunroll_x_in_i_valid_3_q <= $unsigned(redist32_sync_together76_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist34_sync_together76_aunroll_x_in_i_valid_4(DELAY,378)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_sync_together76_aunroll_x_in_i_valid_4_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist34_sync_together76_aunroll_x_in_i_valid_4_q <= $unsigned(redist33_sync_together76_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg0(REG,127)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg0_q <= $unsigned(redist34_sync_together76_aunroll_x_in_i_valid_4_q);
        end
    end

    // redist7_valid_fanout_reg0_q_2(DELAY,351)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_valid_fanout_reg0_q_2_delay_0 <= '0;
            redist7_valid_fanout_reg0_q_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist7_valid_fanout_reg0_q_2_delay_0 <= $unsigned(valid_fanout_reg0_q);
            redist7_valid_fanout_reg0_q_2_q <= redist7_valid_fanout_reg0_q_2_delay_0;
        end
    end

    // redist23_sync_together76_aunroll_x_in_c0_eni5_1_tpl_1(DELAY,367)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_sync_together76_aunroll_x_in_c0_eni5_1_tpl_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist23_sync_together76_aunroll_x_in_c0_eni5_1_tpl_1_q <= $unsigned(in_c0_eni5_1_tpl);
        end
    end

    // redist24_sync_together76_aunroll_x_in_c0_eni5_1_tpl_3(DELAY,368)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_sync_together76_aunroll_x_in_c0_eni5_1_tpl_3_delay_0 <= '0;
            redist24_sync_together76_aunroll_x_in_c0_eni5_1_tpl_3_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist24_sync_together76_aunroll_x_in_c0_eni5_1_tpl_3_delay_0 <= $unsigned(redist23_sync_together76_aunroll_x_in_c0_eni5_1_tpl_1_q);
            redist24_sync_together76_aunroll_x_in_c0_eni5_1_tpl_3_q <= redist24_sync_together76_aunroll_x_in_c0_eni5_1_tpl_3_delay_0;
        end
    end

    // redist25_sync_together76_aunroll_x_in_c0_eni5_1_tpl_5(DELAY,369)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_sync_together76_aunroll_x_in_c0_eni5_1_tpl_5_delay_0 <= '0;
            redist25_sync_together76_aunroll_x_in_c0_eni5_1_tpl_5_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist25_sync_together76_aunroll_x_in_c0_eni5_1_tpl_5_delay_0 <= $unsigned(redist24_sync_together76_aunroll_x_in_c0_eni5_1_tpl_3_q);
            redist25_sync_together76_aunroll_x_in_c0_eni5_1_tpl_5_q <= redist25_sync_together76_aunroll_x_in_c0_eni5_1_tpl_5_delay_0;
        end
    end

    // redist26_sync_together76_aunroll_x_in_c0_eni5_1_tpl_7(DELAY,370)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_sync_together76_aunroll_x_in_c0_eni5_1_tpl_7_delay_0 <= '0;
            redist26_sync_together76_aunroll_x_in_c0_eni5_1_tpl_7_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist26_sync_together76_aunroll_x_in_c0_eni5_1_tpl_7_delay_0 <= $unsigned(redist25_sync_together76_aunroll_x_in_c0_eni5_1_tpl_5_q);
            redist26_sync_together76_aunroll_x_in_c0_eni5_1_tpl_7_q <= redist26_sync_together76_aunroll_x_in_c0_eni5_1_tpl_7_delay_0;
        end
    end

    // valid_fanout_reg14(REG,141)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg14_q <= $unsigned(redist34_sync_together76_aunroll_x_in_i_valid_4_q);
        end
    end

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // dupName_0_enable_stall_connector_x_not_enable(LOGICAL,379)
    assign dupName_0_enable_stall_connector_x_not_enable_q = $unsigned(~ (in_enable));

    // valid_fanout_reg15(REG,142)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg15_q <= $unsigned(redist34_sync_together76_aunroll_x_in_i_valid_4_q);
        end
    end

    // leftShiftStage0Idx1Rng1_uid157_i_cleanups_shl_matvec0_shift_x(BITSELECT,156)@2
    assign leftShiftStage0Idx1Rng1_uid157_i_cleanups_shl_matvec0_shift_x_in = i_llvm_fpga_pop_i2_cleanups_pop15_matvec2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid157_i_cleanups_shl_matvec0_shift_x_b = leftShiftStage0Idx1Rng1_uid157_i_cleanups_shl_matvec0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid158_i_cleanups_shl_matvec0_shift_x(BITJOIN,157)@2
    assign leftShiftStage0Idx1_uid158_i_cleanups_shl_matvec0_shift_x_q = {leftShiftStage0Idx1Rng1_uid157_i_cleanups_shl_matvec0_shift_x_b, GND_q};

    // leftShiftStage0_uid160_i_cleanups_shl_matvec0_shift_x(MUX,159)@2
    assign leftShiftStage0_uid160_i_cleanups_shl_matvec0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid160_i_cleanups_shl_matvec0_shift_x_s or i_llvm_fpga_pop_i2_cleanups_pop15_matvec2_out_data_out or leftShiftStage0Idx1_uid158_i_cleanups_shl_matvec0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid160_i_cleanups_shl_matvec0_shift_x_s)
            1'b0 : leftShiftStage0_uid160_i_cleanups_shl_matvec0_shift_x_q = i_llvm_fpga_pop_i2_cleanups_pop15_matvec2_out_data_out;
            1'b1 : leftShiftStage0_uid160_i_cleanups_shl_matvec0_shift_x_q = leftShiftStage0Idx1_uid158_i_cleanups_shl_matvec0_shift_x_q;
            default : leftShiftStage0_uid160_i_cleanups_shl_matvec0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl_matvec5_vt_select_1(BITSELECT,73)@2
    assign i_cleanups_shl_matvec5_vt_select_1_b = leftShiftStage0_uid160_i_cleanups_shl_matvec0_shift_x_q[1:1];

    // i_cleanups_shl_matvec5_vt_join(BITJOIN,72)@2
    assign i_cleanups_shl_matvec5_vt_join_q = {i_cleanups_shl_matvec5_vt_select_1_b, GND_q};

    // i_first_cleanup_xor_matvec4(LOGICAL,81)@2
    assign i_first_cleanup_xor_matvec4_q = i_first_cleanup_matvec3_sel_x_b ^ VCC_q;

    // i_notcmp_matvec30(LOGICAL,111)@2
    assign i_notcmp_matvec30_q = i_exitcond_matvec28_cmp_nsign_q ^ VCC_q;

    // i_or_matvec32(LOGICAL,112)@2
    assign i_or_matvec32_q = i_notcmp_matvec30_q | i_first_cleanup_xor_matvec4_q;

    // i_next_cleanups_matvec33(MUX,107)@2
    assign i_next_cleanups_matvec33_s = i_or_matvec32_q;
    always @(i_next_cleanups_matvec33_s or i_llvm_fpga_pop_i2_cleanups_pop15_matvec2_out_data_out or i_cleanups_shl_matvec5_vt_join_q)
    begin
        unique case (i_next_cleanups_matvec33_s)
            1'b0 : i_next_cleanups_matvec33_q = i_llvm_fpga_pop_i2_cleanups_pop15_matvec2_out_data_out;
            1'b1 : i_next_cleanups_matvec33_q = i_cleanups_shl_matvec5_vt_join_q;
            default : i_next_cleanups_matvec33_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups_push15_matvec34(BLACKBOX,101)@2
    // out out_feedback_out_15@20000000
    // out out_feedback_valid_out_15@20000000
    matvec_i_llvm_fpga_push_i2_cleanups_push15_0 thei_llvm_fpga_push_i2_cleanups_push15_matvec34 (
        .in_data_in(i_next_cleanups_matvec33_q),
        .in_feedback_stall_in_15(i_llvm_fpga_pop_i2_cleanups_pop15_matvec2_out_feedback_stall_out_15),
        .in_keep_going(redist16_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_1_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(redist31_sync_together76_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_15(i_llvm_fpga_push_i2_cleanups_push15_matvec34_out_feedback_out_15),
        .out_feedback_valid_out_15(i_llvm_fpga_push_i2_cleanups_push15_matvec34_out_feedback_valid_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i2_145(CONSTANT,62)
    assign c_i2_145_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups_pop15_matvec2(BLACKBOX,91)@2
    // out out_feedback_stall_out_15@20000000
    matvec_i_llvm_fpga_pop_i2_cleanups_pop15_0 thei_llvm_fpga_pop_i2_cleanups_pop15_matvec2 (
        .in_data_in(c_i2_145_q),
        .in_dir(redist23_sync_together76_aunroll_x_in_c0_eni5_1_tpl_1_q),
        .in_feedback_in_15(i_llvm_fpga_push_i2_cleanups_push15_matvec34_out_feedback_out_15),
        .in_feedback_valid_in_15(i_llvm_fpga_push_i2_cleanups_push15_matvec34_out_feedback_valid_out_15),
        .in_predicate(GND_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(redist31_sync_together76_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups_pop15_matvec2_out_data_out),
        .out_feedback_stall_out_15(i_llvm_fpga_pop_i2_cleanups_pop15_matvec2_out_feedback_stall_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_matvec3_sel_x(BITSELECT,34)@2
    assign i_first_cleanup_matvec3_sel_x_b = i_llvm_fpga_pop_i2_cleanups_pop15_matvec2_out_data_out[0:0];

    // c_i6_152(CONSTANT,66)
    assign c_i6_152_q = $unsigned(6'b111111);

    // i_fpga_indvars_iv_next_matvec35(ADD,82)@2
    assign i_fpga_indvars_iv_next_matvec35_a = {1'b0, i_llvm_fpga_pop_i6_fpga_indvars_iv_pop11_matvec27_out_data_out};
    assign i_fpga_indvars_iv_next_matvec35_b = {1'b0, c_i6_152_q};
    assign i_fpga_indvars_iv_next_matvec35_o = $unsigned(i_fpga_indvars_iv_next_matvec35_a) + $unsigned(i_fpga_indvars_iv_next_matvec35_b);
    assign i_fpga_indvars_iv_next_matvec35_q = i_fpga_indvars_iv_next_matvec35_o[6:0];

    // bgTrunc_i_fpga_indvars_iv_next_matvec35_sel_x(BITSELECT,4)@2
    assign bgTrunc_i_fpga_indvars_iv_next_matvec35_sel_x_b = i_fpga_indvars_iv_next_matvec35_q[5:0];

    // i_llvm_fpga_push_i6_fpga_indvars_iv_push11_matvec36(BLACKBOX,105)@2
    // out out_feedback_out_11@20000000
    // out out_feedback_valid_out_11@20000000
    matvec_i_llvm_fpga_push_i6_fpga_indvars_iv_push11_0 thei_llvm_fpga_push_i6_fpga_indvars_iv_push11_matvec36 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_matvec35_sel_x_b),
        .in_feedback_stall_in_11(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop11_matvec27_out_feedback_stall_out_11),
        .in_keep_going(redist16_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_1_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(redist31_sync_together76_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_11(i_llvm_fpga_push_i6_fpga_indvars_iv_push11_matvec36_out_feedback_out_11),
        .out_feedback_valid_out_11(i_llvm_fpga_push_i6_fpga_indvars_iv_push11_matvec36_out_feedback_valid_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i6_2850(CONSTANT,67)
    assign c_i6_2850_q = $unsigned(6'b011100);

    // i_llvm_fpga_pop_i6_fpga_indvars_iv_pop11_matvec27(BLACKBOX,95)@2
    // out out_feedback_stall_out_11@20000000
    matvec_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop11_0 thei_llvm_fpga_pop_i6_fpga_indvars_iv_pop11_matvec27 (
        .in_data_in(c_i6_2850_q),
        .in_dir(redist23_sync_together76_aunroll_x_in_c0_eni5_1_tpl_1_q),
        .in_feedback_in_11(i_llvm_fpga_push_i6_fpga_indvars_iv_push11_matvec36_out_feedback_out_11),
        .in_feedback_valid_in_11(i_llvm_fpga_push_i6_fpga_indvars_iv_push11_matvec36_out_feedback_valid_out_11),
        .in_predicate(GND_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(redist31_sync_together76_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop11_matvec27_out_data_out),
        .out_feedback_stall_out_11(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop11_matvec27_out_feedback_stall_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond_matvec28_cmp_nsign(LOGICAL,180)@2
    assign i_exitcond_matvec28_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i6_fpga_indvars_iv_pop11_matvec27_out_data_out[5:5]));

    // i_llvm_fpga_push_i1_notexitcond_matvec31(BLACKBOX,100)@2
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    matvec_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_matvec31 (
        .in_data_in(i_exitcond_matvec28_cmp_nsign_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_matvec6_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_matvec3_sel_x_b),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(redist31_sync_together76_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_matvec31_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_matvec31_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,130)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid164_i_next_initerations_matvec0_shift_x(BITSELECT,163)@2
    assign rightShiftStage0Idx1Rng1_uid164_i_next_initerations_matvec0_shift_x_b = i_llvm_fpga_pop_i2_initerations_pop14_matvec7_out_data_out[1:1];

    // rightShiftStage0Idx1_uid166_i_next_initerations_matvec0_shift_x(BITJOIN,165)@2
    assign rightShiftStage0Idx1_uid166_i_next_initerations_matvec0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid164_i_next_initerations_matvec0_shift_x_b};

    // valid_fanout_reg1(REG,128)@1 + 1
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

    // valid_fanout_reg2(REG,129)@1 + 1
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

    // i_llvm_fpga_push_i2_initerations_push14_matvec9(BLACKBOX,102)@2
    // out out_feedback_out_14@20000000
    // out out_feedback_valid_out_14@20000000
    matvec_i_llvm_fpga_push_i2_initerations_push14_0 thei_llvm_fpga_push_i2_initerations_push14_matvec9 (
        .in_data_in(i_next_initerations_matvec8_vt_join_q),
        .in_feedback_stall_in_14(i_llvm_fpga_pop_i2_initerations_pop14_matvec7_out_feedback_stall_out_14),
        .in_keep_going(redist16_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_1_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_14(i_llvm_fpga_push_i2_initerations_push14_matvec9_out_feedback_out_14),
        .out_feedback_valid_out_14(i_llvm_fpga_push_i2_initerations_push14_matvec9_out_feedback_valid_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations_pop14_matvec7(BLACKBOX,92)@2
    // out out_feedback_stall_out_14@20000000
    matvec_i_llvm_fpga_pop_i2_initerations_pop14_0 thei_llvm_fpga_pop_i2_initerations_pop14_matvec7 (
        .in_data_in(c_i2_145_q),
        .in_dir(redist23_sync_together76_aunroll_x_in_c0_eni5_1_tpl_1_q),
        .in_feedback_in_14(i_llvm_fpga_push_i2_initerations_push14_matvec9_out_feedback_out_14),
        .in_feedback_valid_in_14(i_llvm_fpga_push_i2_initerations_push14_matvec9_out_feedback_valid_out_14),
        .in_predicate(GND_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations_pop14_matvec7_out_data_out),
        .out_feedback_stall_out_14(i_llvm_fpga_pop_i2_initerations_pop14_matvec7_out_feedback_stall_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid168_i_next_initerations_matvec0_shift_x(MUX,167)@2
    assign rightShiftStage0_uid168_i_next_initerations_matvec0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid168_i_next_initerations_matvec0_shift_x_s or i_llvm_fpga_pop_i2_initerations_pop14_matvec7_out_data_out or rightShiftStage0Idx1_uid166_i_next_initerations_matvec0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid168_i_next_initerations_matvec0_shift_x_s)
            1'b0 : rightShiftStage0_uid168_i_next_initerations_matvec0_shift_x_q = i_llvm_fpga_pop_i2_initerations_pop14_matvec7_out_data_out;
            1'b1 : rightShiftStage0_uid168_i_next_initerations_matvec0_shift_x_q = rightShiftStage0Idx1_uid166_i_next_initerations_matvec0_shift_x_q;
            default : rightShiftStage0_uid168_i_next_initerations_matvec0_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations_matvec8_vt_select_0(BITSELECT,110)@2
    assign i_next_initerations_matvec8_vt_select_0_b = rightShiftStage0_uid168_i_next_initerations_matvec0_shift_x_q[0:0];

    // i_next_initerations_matvec8_vt_join(BITJOIN,109)@2
    assign i_next_initerations_matvec8_vt_join_q = {GND_q, i_next_initerations_matvec8_vt_select_0_b};

    // i_last_initeration_matvec10_sel_x(BITSELECT,35)@2
    assign i_last_initeration_matvec10_sel_x_b = i_next_initerations_matvec8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_matvec11(BLACKBOX,97)@2
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    matvec_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_matvec11 (
        .in_data_in(i_last_initeration_matvec10_sel_x_b),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_matvec6_out_initeration_stall_out),
        .in_keep_going(redist16_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_1_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_matvec11_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_matvec11_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_matvec6(BLACKBOX,87)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    matvec_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_matvec6 (
        .in_data_in(in_c0_eni5_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_matvec11_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_matvec11_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_matvec31_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_matvec31_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_matvec6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_matvec6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_matvec6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_matvec6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_matvec6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist16_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_1(DELAY,360)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist16_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out);
        end
    end

    // redist17_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_2(DELAY,361)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist17_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_2_q <= $unsigned(redist16_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_1_q);
        end
    end

    // redist18_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_4(DELAY,362)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_4_delay_0 <= '0;
            redist18_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_4_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist18_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_4_delay_0 <= $unsigned(redist17_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_2_q);
            redist18_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_4_q <= redist18_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_4_delay_0;
        end
    end

    // redist19_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_5(DELAY,363)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_5_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist19_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_5_q <= $unsigned(redist18_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_4_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp718_push17_matvec41(BLACKBOX,99)@6
    // out out_feedback_out_17@20000000
    // out out_feedback_valid_out_17@20000000
    matvec_i_llvm_fpga_push_i1_notcmp718_push17_0 thei_llvm_fpga_push_i1_notcmp718_push17_matvec41 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp718_pop17_matvec40_out_data_out),
        .in_feedback_stall_in_17(i_llvm_fpga_pop_i1_notcmp718_pop17_matvec40_out_feedback_stall_out_17),
        .in_keep_going(redist19_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_5_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(),
        .out_feedback_out_17(i_llvm_fpga_push_i1_notcmp718_push17_matvec41_out_feedback_out_17),
        .out_feedback_valid_out_17(i_llvm_fpga_push_i1_notcmp718_push17_matvec41_out_feedback_valid_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist30_sync_together76_aunroll_x_in_c0_eni5_5_tpl_5(DELAY,374)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_sync_together76_aunroll_x_in_c0_eni5_5_tpl_5_delay_0 <= '0;
            redist30_sync_together76_aunroll_x_in_c0_eni5_5_tpl_5_delay_1 <= '0;
            redist30_sync_together76_aunroll_x_in_c0_eni5_5_tpl_5_delay_2 <= '0;
            redist30_sync_together76_aunroll_x_in_c0_eni5_5_tpl_5_delay_3 <= '0;
            redist30_sync_together76_aunroll_x_in_c0_eni5_5_tpl_5_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist30_sync_together76_aunroll_x_in_c0_eni5_5_tpl_5_delay_0 <= $unsigned(in_c0_eni5_5_tpl);
            redist30_sync_together76_aunroll_x_in_c0_eni5_5_tpl_5_delay_1 <= redist30_sync_together76_aunroll_x_in_c0_eni5_5_tpl_5_delay_0;
            redist30_sync_together76_aunroll_x_in_c0_eni5_5_tpl_5_delay_2 <= redist30_sync_together76_aunroll_x_in_c0_eni5_5_tpl_5_delay_1;
            redist30_sync_together76_aunroll_x_in_c0_eni5_5_tpl_5_delay_3 <= redist30_sync_together76_aunroll_x_in_c0_eni5_5_tpl_5_delay_2;
            redist30_sync_together76_aunroll_x_in_c0_eni5_5_tpl_5_q <= redist30_sync_together76_aunroll_x_in_c0_eni5_5_tpl_5_delay_3;
        end
    end

    // i_llvm_fpga_pop_i1_notcmp718_pop17_matvec40(BLACKBOX,90)@6
    // out out_feedback_stall_out_17@20000000
    matvec_i_llvm_fpga_pop_i1_notcmp718_pop17_0 thei_llvm_fpga_pop_i1_notcmp718_pop17_matvec40 (
        .in_data_in(redist30_sync_together76_aunroll_x_in_c0_eni5_5_tpl_5_q),
        .in_dir(redist25_sync_together76_aunroll_x_in_c0_eni5_1_tpl_5_q),
        .in_feedback_in_17(i_llvm_fpga_push_i1_notcmp718_push17_matvec41_out_feedback_out_17),
        .in_feedback_valid_in_17(i_llvm_fpga_push_i1_notcmp718_push17_matvec41_out_feedback_valid_out_17),
        .in_predicate(GND_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp718_pop17_matvec40_out_data_out),
        .out_feedback_stall_out_17(i_llvm_fpga_pop_i1_notcmp718_pop17_matvec40_out_feedback_stall_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist13_i_llvm_fpga_pop_i1_notcmp718_pop17_matvec40_out_data_out_2(DELAY,357)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_llvm_fpga_pop_i1_notcmp718_pop17_matvec40_out_data_out_2_delay_0 <= '0;
            redist13_i_llvm_fpga_pop_i1_notcmp718_pop17_matvec40_out_data_out_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist13_i_llvm_fpga_pop_i1_notcmp718_pop17_matvec40_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_notcmp718_pop17_matvec40_out_data_out);
            redist13_i_llvm_fpga_pop_i1_notcmp718_pop17_matvec40_out_data_out_2_q <= redist13_i_llvm_fpga_pop_i1_notcmp718_pop17_matvec40_out_data_out_2_delay_0;
        end
    end

    // valid_fanout_reg12(REG,139)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg12_q <= $unsigned(redist34_sync_together76_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg13(REG,140)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg13_q <= $unsigned(redist34_sync_together76_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i1_exitcond317_push16_matvec39(BLACKBOX,96)@6
    // out out_feedback_out_16@20000000
    // out out_feedback_valid_out_16@20000000
    matvec_i_llvm_fpga_push_i1_exitcond317_push16_0 thei_llvm_fpga_push_i1_exitcond317_push16_matvec39 (
        .in_data_in(i_llvm_fpga_pop_i1_exitcond317_pop16_matvec38_out_data_out),
        .in_feedback_stall_in_16(i_llvm_fpga_pop_i1_exitcond317_pop16_matvec38_out_feedback_stall_out_16),
        .in_keep_going(redist19_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_5_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(),
        .out_feedback_out_16(i_llvm_fpga_push_i1_exitcond317_push16_matvec39_out_feedback_out_16),
        .out_feedback_valid_out_16(i_llvm_fpga_push_i1_exitcond317_push16_matvec39_out_feedback_valid_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist29_sync_together76_aunroll_x_in_c0_eni5_4_tpl_5(DELAY,373)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_sync_together76_aunroll_x_in_c0_eni5_4_tpl_5_delay_0 <= '0;
            redist29_sync_together76_aunroll_x_in_c0_eni5_4_tpl_5_delay_1 <= '0;
            redist29_sync_together76_aunroll_x_in_c0_eni5_4_tpl_5_delay_2 <= '0;
            redist29_sync_together76_aunroll_x_in_c0_eni5_4_tpl_5_delay_3 <= '0;
            redist29_sync_together76_aunroll_x_in_c0_eni5_4_tpl_5_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist29_sync_together76_aunroll_x_in_c0_eni5_4_tpl_5_delay_0 <= $unsigned(in_c0_eni5_4_tpl);
            redist29_sync_together76_aunroll_x_in_c0_eni5_4_tpl_5_delay_1 <= redist29_sync_together76_aunroll_x_in_c0_eni5_4_tpl_5_delay_0;
            redist29_sync_together76_aunroll_x_in_c0_eni5_4_tpl_5_delay_2 <= redist29_sync_together76_aunroll_x_in_c0_eni5_4_tpl_5_delay_1;
            redist29_sync_together76_aunroll_x_in_c0_eni5_4_tpl_5_delay_3 <= redist29_sync_together76_aunroll_x_in_c0_eni5_4_tpl_5_delay_2;
            redist29_sync_together76_aunroll_x_in_c0_eni5_4_tpl_5_q <= redist29_sync_together76_aunroll_x_in_c0_eni5_4_tpl_5_delay_3;
        end
    end

    // i_llvm_fpga_pop_i1_exitcond317_pop16_matvec38(BLACKBOX,88)@6
    // out out_feedback_stall_out_16@20000000
    matvec_i_llvm_fpga_pop_i1_exitcond317_pop16_0 thei_llvm_fpga_pop_i1_exitcond317_pop16_matvec38 (
        .in_data_in(redist29_sync_together76_aunroll_x_in_c0_eni5_4_tpl_5_q),
        .in_dir(redist25_sync_together76_aunroll_x_in_c0_eni5_1_tpl_5_q),
        .in_feedback_in_16(i_llvm_fpga_push_i1_exitcond317_push16_matvec39_out_feedback_out_16),
        .in_feedback_valid_in_16(i_llvm_fpga_push_i1_exitcond317_push16_matvec39_out_feedback_valid_out_16),
        .in_predicate(GND_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond317_pop16_matvec38_out_data_out),
        .out_feedback_stall_out_16(i_llvm_fpga_pop_i1_exitcond317_pop16_matvec38_out_feedback_stall_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist15_i_llvm_fpga_pop_i1_exitcond317_pop16_matvec38_out_data_out_2(DELAY,359)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_llvm_fpga_pop_i1_exitcond317_pop16_matvec38_out_data_out_2_delay_0 <= '0;
            redist15_i_llvm_fpga_pop_i1_exitcond317_pop16_matvec38_out_data_out_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist15_i_llvm_fpga_pop_i1_exitcond317_pop16_matvec38_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_exitcond317_pop16_matvec38_out_data_out);
            redist15_i_llvm_fpga_pop_i1_exitcond317_pop16_matvec38_out_data_out_2_q <= redist15_i_llvm_fpga_pop_i1_exitcond317_pop16_matvec38_out_data_out_2_delay_0;
        end
    end

    // i_masked_matvec37(LOGICAL,106)@2 + 1
    assign i_masked_matvec37_qi = i_notcmp_matvec30_q & i_first_cleanup_matvec3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_matvec37_delay ( .xin(i_masked_matvec37_qi), .xout(i_masked_matvec37_q), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );

    // redist8_i_masked_matvec37_q_6(DELAY,352)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_masked_matvec37_q_6_delay_0 <= '0;
            redist8_i_masked_matvec37_q_6_delay_1 <= '0;
            redist8_i_masked_matvec37_q_6_delay_2 <= '0;
            redist8_i_masked_matvec37_q_6_delay_3 <= '0;
            redist8_i_masked_matvec37_q_6_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist8_i_masked_matvec37_q_6_delay_0 <= $unsigned(i_masked_matvec37_q);
            redist8_i_masked_matvec37_q_6_delay_1 <= redist8_i_masked_matvec37_q_6_delay_0;
            redist8_i_masked_matvec37_q_6_delay_2 <= redist8_i_masked_matvec37_q_6_delay_1;
            redist8_i_masked_matvec37_q_6_delay_3 <= redist8_i_masked_matvec37_q_6_delay_2;
            redist8_i_masked_matvec37_q_6_q <= redist8_i_masked_matvec37_q_6_delay_3;
        end
    end

    // c_i32_047(CONSTANT,63)
    assign c_i32_047_q = $unsigned(32'b00000000000000000000000000000000);

    // i_mptr_bitcast_index34_matvec0_add_x_BitSelect_for_b_tessel0_2(BITSELECT,324)
    assign i_mptr_bitcast_index34_matvec0_add_x_BitSelect_for_b_tessel0_2_b = c_i32_047_q[25:0];

    // valid_fanout_reg6(REG,133)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg6_q <= $unsigned(redist32_sync_together76_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg11(REG,138)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg11_q <= $unsigned(redist33_sync_together76_aunroll_x_in_i_valid_3_q);
        end
    end

    // c_i32_149(CONSTANT,64)
    assign c_i32_149_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_matvec25(ADD,83)@5
    assign i_inc_matvec25_a = {1'b0, redist9_i_llvm_fpga_pop_i32_j_030_pop13_matvec14_out_data_out_1_q};
    assign i_inc_matvec25_b = {1'b0, c_i32_149_q};
    assign i_inc_matvec25_o = $unsigned(i_inc_matvec25_a) + $unsigned(i_inc_matvec25_b);
    assign i_inc_matvec25_q = i_inc_matvec25_o[32:0];

    // bgTrunc_i_inc_matvec25_sel_x(BITSELECT,5)@5
    assign bgTrunc_i_inc_matvec25_sel_x_b = i_inc_matvec25_q[31:0];

    // i_llvm_fpga_push_i32_j_030_push13_matvec26(BLACKBOX,104)@5
    // out out_feedback_out_13@20000000
    // out out_feedback_valid_out_13@20000000
    matvec_i_llvm_fpga_push_i32_j_030_push13_0 thei_llvm_fpga_push_i32_j_030_push13_matvec26 (
        .in_data_in(bgTrunc_i_inc_matvec25_sel_x_b),
        .in_feedback_stall_in_13(i_llvm_fpga_pop_i32_j_030_pop13_matvec14_out_feedback_stall_out_13),
        .in_keep_going(redist18_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_4_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(),
        .out_feedback_out_13(i_llvm_fpga_push_i32_j_030_push13_matvec26_out_feedback_out_13),
        .out_feedback_valid_out_13(i_llvm_fpga_push_i32_j_030_push13_matvec26_out_feedback_valid_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_j_030_pop13_matvec14(BLACKBOX,94)@4
    // out out_feedback_stall_out_13@20000000
    matvec_i_llvm_fpga_pop_i32_j_030_pop13_0 thei_llvm_fpga_pop_i32_j_030_pop13_matvec14 (
        .in_data_in(c_i32_047_q),
        .in_dir(redist24_sync_together76_aunroll_x_in_c0_eni5_1_tpl_3_q),
        .in_feedback_in_13(i_llvm_fpga_push_i32_j_030_push13_matvec26_out_feedback_out_13),
        .in_feedback_valid_in_13(i_llvm_fpga_push_i32_j_030_push13_matvec26_out_feedback_valid_out_13),
        .in_predicate(GND_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(i_llvm_fpga_pop_i32_j_030_pop13_matvec14_out_data_out),
        .out_feedback_stall_out_13(i_llvm_fpga_pop_i32_j_030_pop13_matvec14_out_feedback_stall_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist9_i_llvm_fpga_pop_i32_j_030_pop13_matvec14_out_data_out_1(DELAY,353)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_llvm_fpga_pop_i32_j_030_pop13_matvec14_out_data_out_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist9_i_llvm_fpga_pop_i32_j_030_pop13_matvec14_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_j_030_pop13_matvec14_out_data_out);
        end
    end

    // i_dot1_prod_matvec20_multconst_x(CONSTANT,33)
    assign i_dot1_prod_matvec20_multconst_x_q = $unsigned(27'b000000000000000000000000000);

    // valid_fanout_reg4(REG,131)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg4_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg5(REG,132)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg5_q <= $unsigned(redist31_sync_together76_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i32_i_032_pop919_push18_matvec13(BLACKBOX,103)@3
    // out out_feedback_out_18@20000000
    // out out_feedback_valid_out_18@20000000
    matvec_i_llvm_fpga_push_i32_i_032_pop919_push18_0 thei_llvm_fpga_push_i32_i_032_pop919_push18_matvec13 (
        .in_data_in(redist11_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_1_q),
        .in_feedback_stall_in_18(i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_feedback_stall_out_18),
        .in_keep_going(redist17_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_2_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_18(i_llvm_fpga_push_i32_i_032_pop919_push18_matvec13_out_feedback_out_18),
        .out_feedback_valid_out_18(i_llvm_fpga_push_i32_i_032_pop919_push18_matvec13_out_feedback_valid_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist27_sync_together76_aunroll_x_in_c0_eni5_2_tpl_1(DELAY,371)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_sync_together76_aunroll_x_in_c0_eni5_2_tpl_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist27_sync_together76_aunroll_x_in_c0_eni5_2_tpl_1_q <= $unsigned(in_c0_eni5_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12(BLACKBOX,93)@2
    // out out_feedback_stall_out_18@20000000
    matvec_i_llvm_fpga_pop_i32_i_032_pop919_pop18_0 thei_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12 (
        .in_data_in(redist27_sync_together76_aunroll_x_in_c0_eni5_2_tpl_1_q),
        .in_dir(redist23_sync_together76_aunroll_x_in_c0_eni5_1_tpl_1_q),
        .in_feedback_in_18(i_llvm_fpga_push_i32_i_032_pop919_push18_matvec13_out_feedback_out_18),
        .in_feedback_valid_in_18(i_llvm_fpga_push_i32_i_032_pop919_push18_matvec13_out_feedback_valid_out_18),
        .in_predicate(GND_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out),
        .out_feedback_stall_out_18(i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_feedback_stall_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist11_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_1(DELAY,355)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist11_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out);
        end
    end

    // i_dot1_prod_matvec20_bs1_merged_bit_select(BITSELECT,343)@3
    assign i_dot1_prod_matvec20_bs1_merged_bit_select_b = redist11_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_1_q[17:0];
    assign i_dot1_prod_matvec20_bs1_merged_bit_select_c = redist11_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_1_q[31:18];

    // xIfSign_mergedSignalTM_uid268_i_dot1_prod_matvec20_im3(BITJOIN,267)@3
    assign xIfSign_mergedSignalTM_uid268_i_dot1_prod_matvec20_im3_q = {GND_q, i_dot1_prod_matvec20_bs1_merged_bit_select_c};

    // padACst_uid210_i_dot1_prod_matvec20_im0(CONSTANT,209)
    assign padACst_uid210_i_dot1_prod_matvec20_im0_q = $unsigned(4'b0000);

    // aPostPad_uid273_i_dot1_prod_matvec20_im3(BITJOIN,272)@3
    assign aPostPad_uid273_i_dot1_prod_matvec20_im3_q = {xIfSign_mergedSignalTM_uid268_i_dot1_prod_matvec20_im3_q, padACst_uid210_i_dot1_prod_matvec20_im0_q};

    // sub_uid274_i_dot1_prod_matvec20_im3(SUB,273)@3
    assign sub_uid274_i_dot1_prod_matvec20_im3_a = $unsigned({{1{aPostPad_uid273_i_dot1_prod_matvec20_im3_q[18]}}, aPostPad_uid273_i_dot1_prod_matvec20_im3_q});
    assign sub_uid274_i_dot1_prod_matvec20_im3_b = $unsigned({{5{xIfSign_mergedSignalTM_uid268_i_dot1_prod_matvec20_im3_q[14]}}, xIfSign_mergedSignalTM_uid268_i_dot1_prod_matvec20_im3_q});
    assign sub_uid274_i_dot1_prod_matvec20_im3_o = $unsigned($signed(sub_uid274_i_dot1_prod_matvec20_im3_a) - $signed(sub_uid274_i_dot1_prod_matvec20_im3_b));
    assign sub_uid274_i_dot1_prod_matvec20_im3_q = sub_uid274_i_dot1_prod_matvec20_im3_o[19:0];

    // sR_bottomRange_uid278_i_dot1_prod_matvec20_im3(BITSELECT,277)@3
    assign sR_bottomRange_uid278_i_dot1_prod_matvec20_im3_in = $unsigned(sub_uid274_i_dot1_prod_matvec20_im3_q[17:0]);
    assign sR_bottomRange_uid278_i_dot1_prod_matvec20_im3_b = $unsigned(sR_bottomRange_uid278_i_dot1_prod_matvec20_im3_in[17:0]);

    // redist5_sR_bottomRange_uid278_i_dot1_prod_matvec20_im3_b_1(DELAY,349)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sR_bottomRange_uid278_i_dot1_prod_matvec20_im3_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist5_sR_bottomRange_uid278_i_dot1_prod_matvec20_im3_b_1_q <= $unsigned(sR_bottomRange_uid278_i_dot1_prod_matvec20_im3_b);
        end
    end

    // sR_mergedSignalTM_uid279_i_dot1_prod_matvec20_im3(BITJOIN,278)@4
    assign sR_mergedSignalTM_uid279_i_dot1_prod_matvec20_im3_q = {redist5_sR_bottomRange_uid278_i_dot1_prod_matvec20_im3_b_1_q, GND_q};

    // i_dot1_prod_matvec20_sums_align_1(BITSHIFT,176)@4
    assign i_dot1_prod_matvec20_sums_align_1_qint = { sR_mergedSignalTM_uid279_i_dot1_prod_matvec20_im3_q, 18'b000000000000000000 };
    assign i_dot1_prod_matvec20_sums_align_1_q = i_dot1_prod_matvec20_sums_align_1_qint[36:0];

    // xIfSign_mergedSignalTM_uid206_i_dot1_prod_matvec20_im0(BITJOIN,205)@3
    assign xIfSign_mergedSignalTM_uid206_i_dot1_prod_matvec20_im0_q = {GND_q, i_dot1_prod_matvec20_bs1_merged_bit_select_b};

    // aPostPad_uid211_i_dot1_prod_matvec20_im0(BITJOIN,210)@3
    assign aPostPad_uid211_i_dot1_prod_matvec20_im0_q = {xIfSign_mergedSignalTM_uid206_i_dot1_prod_matvec20_im0_q, padACst_uid210_i_dot1_prod_matvec20_im0_q};

    // sub_uid212_i_dot1_prod_matvec20_im0(SUB,211)@3
    assign sub_uid212_i_dot1_prod_matvec20_im0_a = $unsigned({{1{aPostPad_uid211_i_dot1_prod_matvec20_im0_q[22]}}, aPostPad_uid211_i_dot1_prod_matvec20_im0_q});
    assign sub_uid212_i_dot1_prod_matvec20_im0_b = $unsigned({{5{xIfSign_mergedSignalTM_uid206_i_dot1_prod_matvec20_im0_q[18]}}, xIfSign_mergedSignalTM_uid206_i_dot1_prod_matvec20_im0_q});
    assign sub_uid212_i_dot1_prod_matvec20_im0_o = $unsigned($signed(sub_uid212_i_dot1_prod_matvec20_im0_a) - $signed(sub_uid212_i_dot1_prod_matvec20_im0_b));
    assign sub_uid212_i_dot1_prod_matvec20_im0_q = sub_uid212_i_dot1_prod_matvec20_im0_o[23:0];

    // sR_bottomRange_uid216_i_dot1_prod_matvec20_im0(BITSELECT,215)@3
    assign sR_bottomRange_uid216_i_dot1_prod_matvec20_im0_in = $unsigned(sub_uid212_i_dot1_prod_matvec20_im0_q[21:0]);
    assign sR_bottomRange_uid216_i_dot1_prod_matvec20_im0_b = $unsigned(sR_bottomRange_uid216_i_dot1_prod_matvec20_im0_in[21:0]);

    // redist6_sR_bottomRange_uid216_i_dot1_prod_matvec20_im0_b_1(DELAY,350)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sR_bottomRange_uid216_i_dot1_prod_matvec20_im0_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist6_sR_bottomRange_uid216_i_dot1_prod_matvec20_im0_b_1_q <= $unsigned(sR_bottomRange_uid216_i_dot1_prod_matvec20_im0_b);
        end
    end

    // sR_mergedSignalTM_uid217_i_dot1_prod_matvec20_im0(BITJOIN,216)@4
    assign sR_mergedSignalTM_uid217_i_dot1_prod_matvec20_im0_q = {redist6_sR_bottomRange_uid216_i_dot1_prod_matvec20_im0_b_1_q, GND_q};

    // i_dot1_prod_matvec20_sums_result_add_0_0(ADD,178)@4
    assign i_dot1_prod_matvec20_sums_result_add_0_0_a = {15'b000000000000000, sR_mergedSignalTM_uid217_i_dot1_prod_matvec20_im0_q};
    assign i_dot1_prod_matvec20_sums_result_add_0_0_b = {1'b0, i_dot1_prod_matvec20_sums_align_1_q};
    assign i_dot1_prod_matvec20_sums_result_add_0_0_o = $unsigned(i_dot1_prod_matvec20_sums_result_add_0_0_a) + $unsigned(i_dot1_prod_matvec20_sums_result_add_0_0_b);
    assign i_dot1_prod_matvec20_sums_result_add_0_0_q = i_dot1_prod_matvec20_sums_result_add_0_0_o[37:0];

    // i_dot1_prod_matvec20_extender_x(BITJOIN,32)@4
    assign i_dot1_prod_matvec20_extender_x_q = {i_dot1_prod_matvec20_multconst_x_q, i_dot1_prod_matvec20_sums_result_add_0_0_q[36:0]};

    // bgTrunc_i_dot1_prod_matvec20_sel_x(BITSELECT,2)@4
    assign bgTrunc_i_dot1_prod_matvec20_sel_x_b = i_dot1_prod_matvec20_extender_x_q[31:0];

    // i_dot1_prod_matvec20_vt_select_31(BITSELECT,77)@4
    assign i_dot1_prod_matvec20_vt_select_31_b = bgTrunc_i_dot1_prod_matvec20_sel_x_b[31:1];

    // redist22_i_dot1_prod_matvec20_vt_select_31_b_1(DELAY,366)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_dot1_prod_matvec20_vt_select_31_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist22_i_dot1_prod_matvec20_vt_select_31_b_1_q <= $unsigned(i_dot1_prod_matvec20_vt_select_31_b);
        end
    end

    // i_dot1_prod_matvec20_vt_join(BITJOIN,76)@5
    assign i_dot1_prod_matvec20_vt_join_q = {redist22_i_dot1_prod_matvec20_vt_select_31_b_1_q, GND_q};

    // i_dot_prod_add_matvec21(ADD,78)@5
    assign i_dot_prod_add_matvec21_a = {1'b0, i_dot1_prod_matvec20_vt_join_q};
    assign i_dot_prod_add_matvec21_b = {1'b0, redist9_i_llvm_fpga_pop_i32_j_030_pop13_matvec14_out_data_out_1_q};
    assign i_dot_prod_add_matvec21_o = $unsigned(i_dot_prod_add_matvec21_a) + $unsigned(i_dot_prod_add_matvec21_b);
    assign i_dot_prod_add_matvec21_q = i_dot_prod_add_matvec21_o[32:0];

    // i_mptr_bitcast_index_matvec0_add_x_BitSelect_for_b_tessel0_1(BITSELECT,335)@5
    assign i_mptr_bitcast_index_matvec0_add_x_BitSelect_for_b_tessel0_1_b = $unsigned(i_dot_prod_add_matvec21_q[31:0]);

    // redist2_i_mptr_bitcast_index_matvec0_add_x_BitSelect_for_b_tessel0_1_b_1(DELAY,346)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_mptr_bitcast_index_matvec0_add_x_BitSelect_for_b_tessel0_1_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist2_i_mptr_bitcast_index_matvec0_add_x_BitSelect_for_b_tessel0_1_b_1_q <= $unsigned(i_mptr_bitcast_index_matvec0_add_x_BitSelect_for_b_tessel0_1_b);
        end
    end

    // i_mptr_bitcast_index34_matvec0_c_i2_01_x(CONSTANT,39)
    assign i_mptr_bitcast_index34_matvec0_c_i2_01_x_q = $unsigned(2'b00);

    // i_mptr_bitcast_index_matvec0_add_x_BitSelect_for_b_BitJoin_for_b(BITJOIN,337)@6
    assign i_mptr_bitcast_index_matvec0_add_x_BitSelect_for_b_BitJoin_for_b_q = {i_mptr_bitcast_index34_matvec0_add_x_BitSelect_for_b_tessel0_2_b, redist2_i_mptr_bitcast_index_matvec0_add_x_BitSelect_for_b_tessel0_1_b_1_q, i_mptr_bitcast_index34_matvec0_c_i2_01_x_q};

    // valid_fanout_reg10(REG,137)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg10_q <= $unsigned(redist34_sync_together76_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast376_matvec23(BLACKBOX,86)@6
    matvec_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast376_0 thei_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast376_matvec23 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast376_matvec23_out_dest_data_out_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mptr_bitcast_index_matvec0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,342)@6
    assign i_mptr_bitcast_index_matvec0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b = $unsigned(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast376_matvec23_out_dest_data_out_2_0[59:0]);
    assign i_mptr_bitcast_index_matvec0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c = $unsigned(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast376_matvec23_out_dest_data_out_2_0[63:60]);

    // i_mptr_bitcast_index_matvec0_add_x_p1_of_2(ADD,314)@6 + 1
    assign i_mptr_bitcast_index_matvec0_add_x_p1_of_2_a = {1'b0, i_mptr_bitcast_index_matvec0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b};
    assign i_mptr_bitcast_index_matvec0_add_x_p1_of_2_b = {1'b0, i_mptr_bitcast_index_matvec0_add_x_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index_matvec0_add_x_p1_of_2_o <= 61'b0;
        end
        else if (in_enable == 1'b1)
        begin
            i_mptr_bitcast_index_matvec0_add_x_p1_of_2_o <= $unsigned(i_mptr_bitcast_index_matvec0_add_x_p1_of_2_a) + $unsigned(i_mptr_bitcast_index_matvec0_add_x_p1_of_2_b);
        end
    end
    assign i_mptr_bitcast_index_matvec0_add_x_p1_of_2_c[0] = i_mptr_bitcast_index_matvec0_add_x_p1_of_2_o[60];
    assign i_mptr_bitcast_index_matvec0_add_x_p1_of_2_q = i_mptr_bitcast_index_matvec0_add_x_p1_of_2_o[59:0];

    // i_mptr_bitcast_index34_matvec0_add_x_BitSelect_for_b_tessel1_0(BITSELECT,326)
    assign i_mptr_bitcast_index34_matvec0_add_x_BitSelect_for_b_tessel1_0_b = c_i32_047_q[29:26];

    // i_mptr_bitcast_index34_matvec0_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,328)@7
    assign i_mptr_bitcast_index34_matvec0_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_mptr_bitcast_index34_matvec0_add_x_BitSelect_for_b_tessel1_0_b};

    // redist0_i_mptr_bitcast_index_matvec0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1(DELAY,344)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_mptr_bitcast_index_matvec0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist0_i_mptr_bitcast_index_matvec0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q <= $unsigned(i_mptr_bitcast_index_matvec0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c);
        end
    end

    // i_mptr_bitcast_index_matvec0_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,333)@7
    assign i_mptr_bitcast_index_matvec0_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist0_i_mptr_bitcast_index_matvec0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q};

    // i_mptr_bitcast_index_matvec0_add_x_p2_of_2(ADD,315)@7 + 1
    assign i_mptr_bitcast_index_matvec0_add_x_p2_of_2_cin = i_mptr_bitcast_index_matvec0_add_x_p1_of_2_c;
    assign i_mptr_bitcast_index_matvec0_add_x_p2_of_2_a = { {1'b0, i_mptr_bitcast_index_matvec0_add_x_BitSelect_for_a_BitJoin_for_c_q}, 1'b1 };
    assign i_mptr_bitcast_index_matvec0_add_x_p2_of_2_b = { {1'b0, i_mptr_bitcast_index34_matvec0_add_x_BitSelect_for_b_BitJoin_for_c_q}, i_mptr_bitcast_index_matvec0_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index_matvec0_add_x_p2_of_2_o <= 7'b0;
        end
        else if (in_enable == 1'b1)
        begin
            i_mptr_bitcast_index_matvec0_add_x_p2_of_2_o <= $unsigned(i_mptr_bitcast_index_matvec0_add_x_p2_of_2_a) + $unsigned(i_mptr_bitcast_index_matvec0_add_x_p2_of_2_b);
        end
    end
    assign i_mptr_bitcast_index_matvec0_add_x_p2_of_2_q = i_mptr_bitcast_index_matvec0_add_x_p2_of_2_o[5:1];

    // redist3_i_mptr_bitcast_index_matvec0_add_x_p1_of_2_q_1(DELAY,347)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_mptr_bitcast_index_matvec0_add_x_p1_of_2_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist3_i_mptr_bitcast_index_matvec0_add_x_p1_of_2_q_1_q <= $unsigned(i_mptr_bitcast_index_matvec0_add_x_p1_of_2_q);
        end
    end

    // i_mptr_bitcast_index_matvec0_add_x_BitJoin_for_q(BITJOIN,316)@8
    assign i_mptr_bitcast_index_matvec0_add_x_BitJoin_for_q_q = {i_mptr_bitcast_index_matvec0_add_x_p2_of_2_q, redist3_i_mptr_bitcast_index_matvec0_add_x_p1_of_2_q_1_q};

    // i_mptr_bitcast_index_matvec0_dupName_0_trunc_sel_x(BITSELECT,42)@8
    assign i_mptr_bitcast_index_matvec0_dupName_0_trunc_sel_x_b = i_mptr_bitcast_index_matvec0_add_x_BitJoin_for_q_q[63:0];

    // valid_fanout_reg8(REG,135)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg8_q <= $unsigned(redist34_sync_together76_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg9(REG,136)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg9_q <= $unsigned(redist34_sync_together76_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi_pop1020_push19_matvec19(BLACKBOX,98)@6
    // out out_feedback_out_19@20000000
    // out out_feedback_valid_out_19@20000000
    matvec_i_llvm_fpga_push_i1_memdep_phi_pop1020_push19_0 thei_llvm_fpga_push_i1_memdep_phi_pop1020_push19_matvec19 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi_pop1020_pop19_matvec18_out_data_out),
        .in_feedback_stall_in_19(i_llvm_fpga_pop_i1_memdep_phi_pop1020_pop19_matvec18_out_feedback_stall_out_19),
        .in_keep_going(redist19_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_5_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(),
        .out_feedback_out_19(i_llvm_fpga_push_i1_memdep_phi_pop1020_push19_matvec19_out_feedback_out_19),
        .out_feedback_valid_out_19(i_llvm_fpga_push_i1_memdep_phi_pop1020_push19_matvec19_out_feedback_valid_out_19),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist28_sync_together76_aunroll_x_in_c0_eni5_3_tpl_5(DELAY,372)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_sync_together76_aunroll_x_in_c0_eni5_3_tpl_5_delay_0 <= '0;
            redist28_sync_together76_aunroll_x_in_c0_eni5_3_tpl_5_delay_1 <= '0;
            redist28_sync_together76_aunroll_x_in_c0_eni5_3_tpl_5_delay_2 <= '0;
            redist28_sync_together76_aunroll_x_in_c0_eni5_3_tpl_5_delay_3 <= '0;
            redist28_sync_together76_aunroll_x_in_c0_eni5_3_tpl_5_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist28_sync_together76_aunroll_x_in_c0_eni5_3_tpl_5_delay_0 <= $unsigned(in_c0_eni5_3_tpl);
            redist28_sync_together76_aunroll_x_in_c0_eni5_3_tpl_5_delay_1 <= redist28_sync_together76_aunroll_x_in_c0_eni5_3_tpl_5_delay_0;
            redist28_sync_together76_aunroll_x_in_c0_eni5_3_tpl_5_delay_2 <= redist28_sync_together76_aunroll_x_in_c0_eni5_3_tpl_5_delay_1;
            redist28_sync_together76_aunroll_x_in_c0_eni5_3_tpl_5_delay_3 <= redist28_sync_together76_aunroll_x_in_c0_eni5_3_tpl_5_delay_2;
            redist28_sync_together76_aunroll_x_in_c0_eni5_3_tpl_5_q <= redist28_sync_together76_aunroll_x_in_c0_eni5_3_tpl_5_delay_3;
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi_pop1020_pop19_matvec18(BLACKBOX,89)@6
    // out out_feedback_stall_out_19@20000000
    matvec_i_llvm_fpga_pop_i1_memdep_phi_pop1020_pop19_0 thei_llvm_fpga_pop_i1_memdep_phi_pop1020_pop19_matvec18 (
        .in_data_in(redist28_sync_together76_aunroll_x_in_c0_eni5_3_tpl_5_q),
        .in_dir(redist25_sync_together76_aunroll_x_in_c0_eni5_1_tpl_5_q),
        .in_feedback_in_19(i_llvm_fpga_push_i1_memdep_phi_pop1020_push19_matvec19_out_feedback_out_19),
        .in_feedback_valid_in_19(i_llvm_fpga_push_i1_memdep_phi_pop1020_push19_matvec19_out_feedback_valid_out_19),
        .in_predicate(GND_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop1020_pop19_matvec18_out_data_out),
        .out_feedback_stall_out_19(i_llvm_fpga_pop_i1_memdep_phi_pop1020_pop19_matvec18_out_feedback_stall_out_19),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist14_i_llvm_fpga_pop_i1_memdep_phi_pop1020_pop19_matvec18_out_data_out_2(DELAY,358)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_llvm_fpga_pop_i1_memdep_phi_pop1020_pop19_matvec18_out_data_out_2_delay_0 <= '0;
            redist14_i_llvm_fpga_pop_i1_memdep_phi_pop1020_pop19_matvec18_out_data_out_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist14_i_llvm_fpga_pop_i1_memdep_phi_pop1020_pop19_matvec18_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi_pop1020_pop19_matvec18_out_data_out);
            redist14_i_llvm_fpga_pop_i1_memdep_phi_pop1020_pop19_matvec18_out_data_out_2_q <= redist14_i_llvm_fpga_pop_i1_memdep_phi_pop1020_pop19_matvec18_out_data_out_2_delay_0;
        end
    end

    // redist10_i_llvm_fpga_pop_i32_j_030_pop13_matvec14_out_data_out_2(DELAY,354)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_llvm_fpga_pop_i32_j_030_pop13_matvec14_out_data_out_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist10_i_llvm_fpga_pop_i32_j_030_pop13_matvec14_out_data_out_2_q <= $unsigned(redist9_i_llvm_fpga_pop_i32_j_030_pop13_matvec14_out_data_out_1_q);
        end
    end

    // i_mptr_bitcast_index34_matvec0_add_x_BitSelect_for_b_BitJoin_for_b(BITJOIN,325)@6
    assign i_mptr_bitcast_index34_matvec0_add_x_BitSelect_for_b_BitJoin_for_b_q = {i_mptr_bitcast_index34_matvec0_add_x_BitSelect_for_b_tessel0_2_b, redist10_i_llvm_fpga_pop_i32_j_030_pop13_matvec14_out_data_out_2_q, i_mptr_bitcast_index34_matvec0_c_i2_01_x_q};

    // valid_fanout_reg7(REG,134)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg7_q <= $unsigned(redist34_sync_together76_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast33385_matvec16(BLACKBOX,85)@6
    matvec_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast33385_0 thei_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast33385_matvec16 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast33385_matvec16_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mptr_bitcast_index34_matvec0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,341)@6
    assign i_mptr_bitcast_index34_matvec0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b = $unsigned(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast33385_matvec16_out_dest_data_out_1_0[59:0]);
    assign i_mptr_bitcast_index34_matvec0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c = $unsigned(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast33385_matvec16_out_dest_data_out_1_0[63:60]);

    // i_mptr_bitcast_index34_matvec0_add_x_p1_of_2(ADD,305)@6 + 1
    assign i_mptr_bitcast_index34_matvec0_add_x_p1_of_2_a = {1'b0, i_mptr_bitcast_index34_matvec0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b};
    assign i_mptr_bitcast_index34_matvec0_add_x_p1_of_2_b = {1'b0, i_mptr_bitcast_index34_matvec0_add_x_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index34_matvec0_add_x_p1_of_2_o <= 61'b0;
        end
        else if (in_enable == 1'b1)
        begin
            i_mptr_bitcast_index34_matvec0_add_x_p1_of_2_o <= $unsigned(i_mptr_bitcast_index34_matvec0_add_x_p1_of_2_a) + $unsigned(i_mptr_bitcast_index34_matvec0_add_x_p1_of_2_b);
        end
    end
    assign i_mptr_bitcast_index34_matvec0_add_x_p1_of_2_c[0] = i_mptr_bitcast_index34_matvec0_add_x_p1_of_2_o[60];
    assign i_mptr_bitcast_index34_matvec0_add_x_p1_of_2_q = i_mptr_bitcast_index34_matvec0_add_x_p1_of_2_o[59:0];

    // redist1_i_mptr_bitcast_index34_matvec0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1(DELAY,345)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_mptr_bitcast_index34_matvec0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist1_i_mptr_bitcast_index34_matvec0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q <= $unsigned(i_mptr_bitcast_index34_matvec0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c);
        end
    end

    // i_mptr_bitcast_index34_matvec0_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,321)@7
    assign i_mptr_bitcast_index34_matvec0_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist1_i_mptr_bitcast_index34_matvec0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q};

    // i_mptr_bitcast_index34_matvec0_add_x_p2_of_2(ADD,306)@7 + 1
    assign i_mptr_bitcast_index34_matvec0_add_x_p2_of_2_cin = i_mptr_bitcast_index34_matvec0_add_x_p1_of_2_c;
    assign i_mptr_bitcast_index34_matvec0_add_x_p2_of_2_a = { {1'b0, i_mptr_bitcast_index34_matvec0_add_x_BitSelect_for_a_BitJoin_for_c_q}, 1'b1 };
    assign i_mptr_bitcast_index34_matvec0_add_x_p2_of_2_b = { {1'b0, i_mptr_bitcast_index34_matvec0_add_x_BitSelect_for_b_BitJoin_for_c_q}, i_mptr_bitcast_index34_matvec0_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index34_matvec0_add_x_p2_of_2_o <= 7'b0;
        end
        else if (in_enable == 1'b1)
        begin
            i_mptr_bitcast_index34_matvec0_add_x_p2_of_2_o <= $unsigned(i_mptr_bitcast_index34_matvec0_add_x_p2_of_2_a) + $unsigned(i_mptr_bitcast_index34_matvec0_add_x_p2_of_2_b);
        end
    end
    assign i_mptr_bitcast_index34_matvec0_add_x_p2_of_2_q = i_mptr_bitcast_index34_matvec0_add_x_p2_of_2_o[5:1];

    // redist4_i_mptr_bitcast_index34_matvec0_add_x_p1_of_2_q_1(DELAY,348)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_mptr_bitcast_index34_matvec0_add_x_p1_of_2_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist4_i_mptr_bitcast_index34_matvec0_add_x_p1_of_2_q_1_q <= $unsigned(i_mptr_bitcast_index34_matvec0_add_x_p1_of_2_q);
        end
    end

    // i_mptr_bitcast_index34_matvec0_add_x_BitJoin_for_q(BITJOIN,307)@8
    assign i_mptr_bitcast_index34_matvec0_add_x_BitJoin_for_q_q = {i_mptr_bitcast_index34_matvec0_add_x_p2_of_2_q, redist4_i_mptr_bitcast_index34_matvec0_add_x_p1_of_2_q_1_q};

    // i_mptr_bitcast_index34_matvec0_dupName_0_trunc_sel_x(BITSELECT,36)@8
    assign i_mptr_bitcast_index34_matvec0_dupName_0_trunc_sel_x_b = i_mptr_bitcast_index34_matvec0_add_x_BitJoin_for_q_q[63:0];

    // redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_notEnable(LOGICAL,407)
    assign redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_notEnable_q = $unsigned(~ (in_enable));

    // redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_nor(LOGICAL,408)
    assign redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_nor_q = ~ (redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_notEnable_q | redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_sticky_ena_q);

    // redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_cmpReg(REG,406)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_cmpReg_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_sticky_ena(REG,409)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_nor_q == 1'b1)
        begin
            redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_sticky_ena_q <= $unsigned(redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_cmpReg_q);
        end
    end

    // redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_enaAnd(LOGICAL,410)
    assign redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_enaAnd_q = redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_sticky_ena_q & in_enable;

    // redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_rdcnt(COUNTER,403)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_rdcnt_i <= 1'd0;
        end
        else if (in_enable == 1'b1)
        begin
            redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_rdcnt_i <= $unsigned(redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_rdcnt_q = redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_rdcnt_i[0:0];

    // redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_rdmux(MUX,404)
    assign redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_rdmux_s = in_enable;
    always @(redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_rdmux_s or redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_wraddr_q or redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_rdcnt_q)
    begin
        unique case (redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_rdmux_s)
            1'b0 : redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_rdmux_q = redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_wraddr_q;
            1'b1 : redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_rdmux_q = redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_rdcnt_q;
            default : redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_rdmux_q = 1'b0;
        endcase
    end

    // redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_inputreg0(DELAY,400)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_inputreg0_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_inputreg0_q <= $unsigned(redist11_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_1_q);
        end
    end

    // redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_wraddr(REG,405)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_wraddr_q <= $unsigned(redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_rdmux_q);
        end
    end

    // redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_mem(DUALMEM,402)
    assign redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_mem_ia = $unsigned(redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_inputreg0_q);
    assign redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_mem_aa = redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_wraddr_q;
    assign redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_mem_ab = redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_rdmux_q;
    assign redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_mem_reset0 = ~ (resetn);
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
    ) redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_mem_dmem (
        .clocken1(redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_mem_reset0),
        .clock1(clock),
        .address_a(redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_mem_aa),
        .data_a(redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_mem_ia),
        .wren_a(in_enable[0]),
        .address_b(redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_mem_ab),
        .q_b(redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_mem_iq),
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
    assign redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_mem_q = redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_mem_iq[31:0];

    // redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_outputreg0(DELAY,401)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_outputreg0_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_outputreg0_q <= $unsigned(redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_mem_q);
        end
    end

    // redist20_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_7(DELAY,364)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_7_delay_0 <= '0;
            redist20_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_7_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist20_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_7_delay_0 <= $unsigned(redist19_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_5_q);
            redist20_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_7_q <= redist20_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_7_delay_0;
        end
    end

    // redist21_i_first_cleanup_xor_matvec4_q_6(DELAY,365)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist21_i_first_cleanup_xor_matvec4_q_6 ( .xin(i_first_cleanup_xor_matvec4_q), .xout(redist21_i_first_cleanup_xor_matvec4_q_6_q), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,54)@8
    assign out_c0_exi10_0_tpl = GND_q;
    assign out_c0_exi10_1_tpl = redist21_i_first_cleanup_xor_matvec4_q_6_q;
    assign out_c0_exi10_2_tpl = redist20_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_7_q;
    assign out_c0_exi10_3_tpl = redist12_i_llvm_fpga_pop_i32_i_032_pop919_pop18_matvec12_out_data_out_6_outputreg0_q;
    assign out_c0_exi10_4_tpl = i_mptr_bitcast_index34_matvec0_dupName_0_trunc_sel_x_b;
    assign out_c0_exi10_5_tpl = redist14_i_llvm_fpga_pop_i1_memdep_phi_pop1020_pop19_matvec18_out_data_out_2_q;
    assign out_c0_exi10_6_tpl = i_mptr_bitcast_index_matvec0_dupName_0_trunc_sel_x_b;
    assign out_c0_exi10_7_tpl = redist8_i_masked_matvec37_q_6_q;
    assign out_c0_exi10_8_tpl = redist15_i_llvm_fpga_pop_i1_exitcond317_pop16_matvec38_out_data_out_2_q;
    assign out_c0_exi10_9_tpl = redist13_i_llvm_fpga_pop_i1_notcmp718_pop17_matvec40_out_data_out_2_q;
    assign out_c0_exi10_10_tpl = redist26_sync_together76_aunroll_x_in_c0_eni5_1_tpl_7_q;
    assign out_o_valid = redist7_valid_fanout_reg0_q_2_q;
    assign out_unnamed_matvec1 = GND_q;

    // ext_sig_sync_out(GPOUT,70)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_matvec6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_matvec6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_matvec6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_matvec6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,123)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_matvec6_out_pipeline_valid_out;

endmodule
