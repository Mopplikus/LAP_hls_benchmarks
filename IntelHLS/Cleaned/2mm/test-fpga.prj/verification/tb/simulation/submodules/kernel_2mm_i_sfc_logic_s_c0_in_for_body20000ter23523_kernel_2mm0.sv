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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm0
// Created for function/kernel kernel_2mm
// SystemVerilog created on Tue Jun 13 01:31:47 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_2mm_i_sfc_logic_s_c0_in_for_body20000ter23523_kernel_2mm0 (
    output wire [0:0] out_c0_exi13_0_tpl,
    output wire [0:0] out_c0_exi13_1_tpl,
    output wire [0:0] out_c0_exi13_2_tpl,
    output wire [63:0] out_c0_exi13_3_tpl,
    output wire [63:0] out_c0_exi13_4_tpl,
    output wire [0:0] out_c0_exi13_5_tpl,
    output wire [0:0] out_c0_exi13_6_tpl,
    output wire [63:0] out_c0_exi13_7_tpl,
    output wire [0:0] out_c0_exi13_8_tpl,
    output wire [0:0] out_c0_exi13_9_tpl,
    output wire [31:0] out_c0_exi13_10_tpl,
    output wire [31:0] out_c0_exi13_11_tpl,
    output wire [0:0] out_c0_exi13_12_tpl,
    output wire [31:0] out_c0_exi13_13_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_kernel_2mm1,
    input wire [0:0] in_c0_eni11_0_tpl,
    input wire [0:0] in_c0_eni11_1_tpl,
    input wire [31:0] in_c0_eni11_2_tpl,
    input wire [31:0] in_c0_eni11_3_tpl,
    input wire [31:0] in_c0_eni11_4_tpl,
    input wire [0:0] in_c0_eni11_5_tpl,
    input wire [63:0] in_c0_eni11_6_tpl,
    input wire [0:0] in_c0_eni11_7_tpl,
    input wire [31:0] in_c0_eni11_8_tpl,
    input wire [31:0] in_c0_eni11_9_tpl,
    input wire [0:0] in_c0_eni11_10_tpl,
    input wire [31:0] in_c0_eni11_11_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_intel_reserved_ffwd_4_0,
    input wire [63:0] in_intel_reserved_ffwd_5_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [4:0] bgTrunc_i_fpga_indvars_iv_next8_kernel_2mm38_sel_x_b;
    wire [31:0] bgTrunc_i_inc36_kernel_2mm28_sel_x_b;
    wire [31:0] bgTrunc_i_mul30_add28_kernel_2mm21_sel_x_b;
    wire [0:0] i_first_cleanup60_kernel_2mm3_sel_x_b;
    wire [0:0] i_last_initeration56_kernel_2mm10_sel_x_b;
    wire [63:0] i_mptr_bitcast_index86_kernel_2mm0_dupName_0_trunc_sel_x_b;
    wire [1:0] i_mptr_bitcast_index86_kernel_2mm0_c_i2_01_x_q;
    wire [63:0] i_mptr_bitcast_index_kernel_2mm0_dupName_0_trunc_sel_x_b;
    wire [1:0] c_i2_175_q;
    wire [31:0] c_i32_077_q;
    wire [31:0] c_i32_178_q;
    wire [4:0] c_i5_182_q;
    wire [4:0] c_i5_880_q;
    wire [32:0] i_add31_kernel_2mm24_a;
    wire [32:0] i_add31_kernel_2mm24_b;
    logic [32:0] i_add31_kernel_2mm24_o;
    wire [32:0] i_add31_kernel_2mm24_q;
    wire [32:0] i_add_kernel_2mm15_a;
    wire [32:0] i_add_kernel_2mm15_b;
    logic [32:0] i_add_kernel_2mm15_o;
    wire [32:0] i_add_kernel_2mm15_q;
    wire [1:0] i_cleanups_shl59_kernel_2mm5_vt_join_q;
    wire [0:0] i_cleanups_shl59_kernel_2mm5_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor61_kernel_2mm4_q;
    wire [5:0] i_fpga_indvars_iv_next8_kernel_2mm38_a;
    wire [5:0] i_fpga_indvars_iv_next8_kernel_2mm38_b;
    logic [5:0] i_fpga_indvars_iv_next8_kernel_2mm38_o;
    wire [5:0] i_fpga_indvars_iv_next8_kernel_2mm38_q;
    wire [32:0] i_inc36_kernel_2mm28_a;
    wire [32:0] i_inc36_kernel_2mm28_b;
    logic [32:0] i_inc36_kernel_2mm28_o;
    wire [32:0] i_inc36_kernel_2mm28_q;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast859438_kernel_2mm26_out_dest_data_out_5_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast9337_kernel_2mm17_out_dest_data_out_4_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp67127_pop56_kernel_2mm47_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp67127_pop56_kernel_2mm47_out_feedback_stall_out_56;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp72113_pop53_kernel_2mm43_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp72113_pop53_kernel_2mm43_out_feedback_stall_out_53;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups58_pop50_kernel_2mm2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups58_pop50_kernel_2mm2_out_feedback_stall_out_50;
    wire [1:0] i_llvm_fpga_pop_i2_initerations53_pop49_kernel_2mm7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations53_pop49_kernel_2mm7_out_feedback_stall_out_49;
    wire [31:0] i_llvm_fpga_pop_i32_i11_082_pop23109_pop51_kernel_2mm41_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i11_082_pop23109_pop51_kernel_2mm41_out_feedback_stall_out_51;
    wire [31:0] i_llvm_fpga_pop_i32_j16_081_pop34125_pop54_kernel_2mm22_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j16_081_pop34125_pop54_kernel_2mm22_out_feedback_stall_out_54;
    wire [31:0] i_llvm_fpga_pop_i32_k_080_pop47_kernel_2mm12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_k_080_pop47_kernel_2mm12_out_feedback_stall_out_47;
    wire [31:0] i_llvm_fpga_pop_i32_mul_add26111_pop52_kernel_2mm13_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul_add26111_pop52_kernel_2mm13_out_feedback_stall_out_52;
    wire [4:0] i_llvm_fpga_pop_i5_fpga_indvars_iv7_pop46_kernel_2mm30_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i5_fpga_indvars_iv7_pop46_kernel_2mm30_out_feedback_stall_out_46;
    wire [63:0] i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out;
    wire [0:0] i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_feedback_stall_out_55;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration57_kernel_2mm11_out_feedback_out_8;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration57_kernel_2mm11_out_feedback_valid_out_8;
    wire [0:0] i_llvm_fpga_push_i1_notcmp67127_push56_kernel_2mm48_out_feedback_out_56;
    wire [0:0] i_llvm_fpga_push_i1_notcmp67127_push56_kernel_2mm48_out_feedback_valid_out_56;
    wire [0:0] i_llvm_fpga_push_i1_notcmp72113_push53_kernel_2mm44_out_feedback_out_53;
    wire [0:0] i_llvm_fpga_push_i1_notcmp72113_push53_kernel_2mm44_out_feedback_valid_out_53;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond65_kernel_2mm34_out_feedback_out_9;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond65_kernel_2mm34_out_feedback_valid_out_9;
    wire [7:0] i_llvm_fpga_push_i2_cleanups58_push50_kernel_2mm37_out_feedback_out_50;
    wire [0:0] i_llvm_fpga_push_i2_cleanups58_push50_kernel_2mm37_out_feedback_valid_out_50;
    wire [7:0] i_llvm_fpga_push_i2_initerations53_push49_kernel_2mm9_out_feedback_out_49;
    wire [0:0] i_llvm_fpga_push_i2_initerations53_push49_kernel_2mm9_out_feedback_valid_out_49;
    wire [31:0] i_llvm_fpga_push_i32_i11_082_pop23109_push51_kernel_2mm42_out_feedback_out_51;
    wire [0:0] i_llvm_fpga_push_i32_i11_082_pop23109_push51_kernel_2mm42_out_feedback_valid_out_51;
    wire [31:0] i_llvm_fpga_push_i32_j16_081_pop34125_push54_kernel_2mm23_out_feedback_out_54;
    wire [0:0] i_llvm_fpga_push_i32_j16_081_pop34125_push54_kernel_2mm23_out_feedback_valid_out_54;
    wire [31:0] i_llvm_fpga_push_i32_k_080_push47_kernel_2mm29_out_feedback_out_47;
    wire [0:0] i_llvm_fpga_push_i32_k_080_push47_kernel_2mm29_out_feedback_valid_out_47;
    wire [31:0] i_llvm_fpga_push_i32_mul_add26111_push52_kernel_2mm14_out_feedback_out_52;
    wire [0:0] i_llvm_fpga_push_i32_mul_add26111_push52_kernel_2mm14_out_feedback_valid_out_52;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv7_push46_kernel_2mm39_out_feedback_out_46;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv7_push46_kernel_2mm39_out_feedback_valid_out_46;
    wire [63:0] i_llvm_fpga_push_p64i32_arrayidx243126_push55_kernel_2mm46_out_feedback_out_55;
    wire [0:0] i_llvm_fpga_push_p64i32_arrayidx243126_push55_kernel_2mm46_out_feedback_valid_out_55;
    wire [0:0] i_masked64_kernel_2mm40_qi;
    reg [0:0] i_masked64_kernel_2mm40_q;
    wire [32:0] i_mul30_add28_kernel_2mm21_a;
    wire [32:0] i_mul30_add28_kernel_2mm21_b;
    logic [32:0] i_mul30_add28_kernel_2mm21_o;
    wire [32:0] i_mul30_add28_kernel_2mm21_q;
    wire [31:0] i_mul30_add28_kernel_2mm21_vt_join_q;
    wire [30:0] i_mul30_add28_kernel_2mm21_vt_select_31_b;
    wire [0:0] i_next_cleanups63_kernel_2mm36_s;
    reg [1:0] i_next_cleanups63_kernel_2mm36_q;
    wire [1:0] i_next_initerations54_kernel_2mm8_vt_join_q;
    wire [0:0] i_next_initerations54_kernel_2mm8_vt_select_0_b;
    wire [0:0] i_notcmp51_kernel_2mm33_q;
    wire [0:0] i_or62_kernel_2mm35_q;
    wire [31:0] i_unnamed_kernel_2mm19_vt_join_q;
    wire [30:0] i_unnamed_kernel_2mm19_vt_select_31_b;
    wire [2:0] i_unnamed_kernel_2mm20_vt_const_2_q;
    wire [31:0] i_unnamed_kernel_2mm20_vt_join_q;
    wire [28:0] i_unnamed_kernel_2mm20_vt_select_31_b;
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
    wire [30:0] leftShiftStage0Idx1Rng1_uid184_dupName_1_i_unnamed_kernel_2mm0_shift_x_in;
    wire [30:0] leftShiftStage0Idx1Rng1_uid184_dupName_1_i_unnamed_kernel_2mm0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid185_dupName_1_i_unnamed_kernel_2mm0_shift_x_q;
    wire [0:0] leftShiftStage0_uid187_dupName_1_i_unnamed_kernel_2mm0_shift_x_s;
    reg [31:0] leftShiftStage0_uid187_dupName_1_i_unnamed_kernel_2mm0_shift_x_q;
    wire [29:0] leftShiftStage1Idx1Rng2_uid197_dupName_2_i_unnamed_kernel_2mm0_shift_x_in;
    wire [29:0] leftShiftStage1Idx1Rng2_uid197_dupName_2_i_unnamed_kernel_2mm0_shift_x_b;
    wire [31:0] leftShiftStage1Idx1_uid198_dupName_2_i_unnamed_kernel_2mm0_shift_x_q;
    wire [0:0] leftShiftStage1_uid200_dupName_2_i_unnamed_kernel_2mm0_shift_x_s;
    reg [31:0] leftShiftStage1_uid200_dupName_2_i_unnamed_kernel_2mm0_shift_x_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid205_i_cleanups_shl59_kernel_2mm0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid205_i_cleanups_shl59_kernel_2mm0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid206_i_cleanups_shl59_kernel_2mm0_shift_x_q;
    wire [0:0] leftShiftStage0_uid208_i_cleanups_shl59_kernel_2mm0_shift_x_s;
    reg [1:0] leftShiftStage0_uid208_i_cleanups_shl59_kernel_2mm0_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid212_i_next_initerations54_kernel_2mm0_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid214_i_next_initerations54_kernel_2mm0_shift_x_q;
    wire [0:0] rightShiftStage0_uid216_i_next_initerations54_kernel_2mm0_shift_x_s;
    reg [1:0] rightShiftStage0_uid216_i_next_initerations54_kernel_2mm0_shift_x_q;
    wire [0:0] i_exitcond9_kernel_2mm31_cmp_nsign_q;
    wire [60:0] i_mptr_bitcast_index86_kernel_2mm0_add_x_p1_of_2_a;
    wire [60:0] i_mptr_bitcast_index86_kernel_2mm0_add_x_p1_of_2_b;
    logic [60:0] i_mptr_bitcast_index86_kernel_2mm0_add_x_p1_of_2_o;
    wire [0:0] i_mptr_bitcast_index86_kernel_2mm0_add_x_p1_of_2_c;
    wire [59:0] i_mptr_bitcast_index86_kernel_2mm0_add_x_p1_of_2_q;
    wire [6:0] i_mptr_bitcast_index86_kernel_2mm0_add_x_p2_of_2_a;
    wire [6:0] i_mptr_bitcast_index86_kernel_2mm0_add_x_p2_of_2_b;
    logic [6:0] i_mptr_bitcast_index86_kernel_2mm0_add_x_p2_of_2_o;
    wire [0:0] i_mptr_bitcast_index86_kernel_2mm0_add_x_p2_of_2_cin;
    wire [4:0] i_mptr_bitcast_index86_kernel_2mm0_add_x_p2_of_2_q;
    wire [64:0] i_mptr_bitcast_index86_kernel_2mm0_add_x_BitJoin_for_q_q;
    wire [60:0] i_mptr_bitcast_index_kernel_2mm0_add_x_p1_of_2_a;
    wire [60:0] i_mptr_bitcast_index_kernel_2mm0_add_x_p1_of_2_b;
    logic [60:0] i_mptr_bitcast_index_kernel_2mm0_add_x_p1_of_2_o;
    wire [0:0] i_mptr_bitcast_index_kernel_2mm0_add_x_p1_of_2_c;
    wire [59:0] i_mptr_bitcast_index_kernel_2mm0_add_x_p1_of_2_q;
    wire [6:0] i_mptr_bitcast_index_kernel_2mm0_add_x_p2_of_2_a;
    wire [6:0] i_mptr_bitcast_index_kernel_2mm0_add_x_p2_of_2_b;
    logic [6:0] i_mptr_bitcast_index_kernel_2mm0_add_x_p2_of_2_o;
    wire [0:0] i_mptr_bitcast_index_kernel_2mm0_add_x_p2_of_2_cin;
    wire [4:0] i_mptr_bitcast_index_kernel_2mm0_add_x_p2_of_2_q;
    wire [64:0] i_mptr_bitcast_index_kernel_2mm0_add_x_BitJoin_for_q_q;
    wire [4:0] i_mptr_bitcast_index86_kernel_2mm0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [31:0] i_mptr_bitcast_index86_kernel_2mm0_add_x_BitSelect_for_b_tessel0_1_b;
    wire [25:0] i_mptr_bitcast_index86_kernel_2mm0_add_x_BitSelect_for_b_tessel0_2_b;
    wire [59:0] i_mptr_bitcast_index86_kernel_2mm0_add_x_BitSelect_for_b_BitJoin_for_b_q;
    wire [3:0] i_mptr_bitcast_index86_kernel_2mm0_add_x_BitSelect_for_b_tessel1_0_b;
    wire [4:0] i_mptr_bitcast_index86_kernel_2mm0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [4:0] i_mptr_bitcast_index_kernel_2mm0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [31:0] i_mptr_bitcast_index_kernel_2mm0_add_x_BitSelect_for_b_tessel0_1_b;
    wire [59:0] i_mptr_bitcast_index_kernel_2mm0_add_x_BitSelect_for_b_BitJoin_for_b_q;
    wire [59:0] i_mptr_bitcast_index86_kernel_2mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    wire [3:0] i_mptr_bitcast_index86_kernel_2mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c;
    wire [59:0] i_mptr_bitcast_index_kernel_2mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    wire [3:0] i_mptr_bitcast_index_kernel_2mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c;
    reg [3:0] redist0_i_mptr_bitcast_index_kernel_2mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q;
    reg [3:0] redist1_i_mptr_bitcast_index86_kernel_2mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q;
    reg [31:0] redist2_i_mptr_bitcast_index_kernel_2mm0_add_x_BitSelect_for_b_tessel0_1_b_2_q;
    reg [31:0] redist2_i_mptr_bitcast_index_kernel_2mm0_add_x_BitSelect_for_b_tessel0_1_b_2_delay_0;
    reg [31:0] redist3_i_mptr_bitcast_index86_kernel_2mm0_add_x_BitSelect_for_b_tessel0_1_b_1_q;
    reg [59:0] redist4_i_mptr_bitcast_index_kernel_2mm0_add_x_p1_of_2_q_1_q;
    reg [59:0] redist5_i_mptr_bitcast_index86_kernel_2mm0_add_x_p1_of_2_q_1_q;
    reg [30:0] redist6_i_mul30_add28_kernel_2mm21_vt_select_31_b_1_q;
    reg [0:0] redist7_i_masked64_kernel_2mm40_q_5_q;
    reg [0:0] redist7_i_masked64_kernel_2mm40_q_5_delay_0;
    reg [0:0] redist7_i_masked64_kernel_2mm40_q_5_delay_1;
    reg [0:0] redist7_i_masked64_kernel_2mm40_q_5_delay_2;
    reg [63:0] redist8_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_1_q;
    reg [31:0] redist10_i_llvm_fpga_pop_i32_mul_add26111_pop52_kernel_2mm13_out_data_out_1_q;
    reg [31:0] redist11_i_llvm_fpga_pop_i32_k_080_pop47_kernel_2mm12_out_data_out_1_q;
    reg [31:0] redist12_i_llvm_fpga_pop_i32_j16_081_pop34125_pop54_kernel_2mm22_out_data_out_2_q;
    reg [31:0] redist12_i_llvm_fpga_pop_i32_j16_081_pop34125_pop54_kernel_2mm22_out_data_out_2_delay_0;
    reg [0:0] redist13_i_llvm_fpga_pop_i1_notcmp72113_pop53_kernel_2mm43_out_data_out_1_q;
    reg [0:0] redist14_i_llvm_fpga_pop_i1_notcmp72113_pop53_kernel_2mm43_out_data_out_5_q;
    reg [0:0] redist14_i_llvm_fpga_pop_i1_notcmp72113_pop53_kernel_2mm43_out_data_out_5_delay_0;
    reg [0:0] redist14_i_llvm_fpga_pop_i1_notcmp72113_pop53_kernel_2mm43_out_data_out_5_delay_1;
    reg [0:0] redist14_i_llvm_fpga_pop_i1_notcmp72113_pop53_kernel_2mm43_out_data_out_5_delay_2;
    reg [0:0] redist15_i_llvm_fpga_pop_i1_notcmp67127_pop56_kernel_2mm47_out_data_out_1_q;
    reg [0:0] redist16_i_llvm_fpga_pop_i1_notcmp67127_pop56_kernel_2mm47_out_data_out_5_q;
    reg [0:0] redist16_i_llvm_fpga_pop_i1_notcmp67127_pop56_kernel_2mm47_out_data_out_5_delay_0;
    reg [0:0] redist16_i_llvm_fpga_pop_i1_notcmp67127_pop56_kernel_2mm47_out_data_out_5_delay_1;
    reg [0:0] redist16_i_llvm_fpga_pop_i1_notcmp67127_pop56_kernel_2mm47_out_data_out_5_delay_2;
    reg [0:0] redist17_i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_out_data_out_1_q;
    reg [0:0] redist18_i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_out_data_out_2_q;
    reg [0:0] redist19_i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_out_data_out_6_q;
    reg [0:0] redist19_i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_out_data_out_6_delay_0;
    reg [0:0] redist19_i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_out_data_out_6_delay_1;
    reg [0:0] redist19_i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_out_data_out_6_delay_2;
    reg [0:0] redist20_i_first_cleanup_xor61_kernel_2mm4_q_5_q;
    reg [0:0] redist20_i_first_cleanup_xor61_kernel_2mm4_q_5_delay_0;
    reg [0:0] redist20_i_first_cleanup_xor61_kernel_2mm4_q_5_delay_1;
    reg [0:0] redist20_i_first_cleanup_xor61_kernel_2mm4_q_5_delay_2;
    reg [0:0] redist20_i_first_cleanup_xor61_kernel_2mm4_q_5_delay_3;
    reg [0:0] redist21_sync_together110_aunroll_x_in_c0_eni11_1_tpl_1_q;
    reg [0:0] redist22_sync_together110_aunroll_x_in_c0_eni11_1_tpl_6_q;
    reg [0:0] redist22_sync_together110_aunroll_x_in_c0_eni11_1_tpl_6_delay_0;
    reg [0:0] redist22_sync_together110_aunroll_x_in_c0_eni11_1_tpl_6_delay_1;
    reg [0:0] redist22_sync_together110_aunroll_x_in_c0_eni11_1_tpl_6_delay_2;
    reg [0:0] redist22_sync_together110_aunroll_x_in_c0_eni11_1_tpl_6_delay_3;
    reg [31:0] redist23_sync_together110_aunroll_x_in_c0_eni11_2_tpl_1_q;
    reg [31:0] redist24_sync_together110_aunroll_x_in_c0_eni11_3_tpl_1_q;
    reg [31:0] redist25_sync_together110_aunroll_x_in_c0_eni11_4_tpl_1_q;
    reg [0:0] redist26_sync_together110_aunroll_x_in_c0_eni11_5_tpl_1_q;
    reg [63:0] redist27_sync_together110_aunroll_x_in_c0_eni11_6_tpl_1_q;
    reg [0:0] redist28_sync_together110_aunroll_x_in_c0_eni11_7_tpl_1_q;
    reg [0:0] redist31_sync_together110_aunroll_x_in_c0_eni11_10_tpl_6_q;
    reg [0:0] redist33_sync_together110_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist34_sync_together110_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist34_sync_together110_aunroll_x_in_i_valid_3_delay_0;
    reg [0:0] redist35_sync_together110_aunroll_x_in_i_valid_5_q;
    reg [0:0] redist35_sync_together110_aunroll_x_in_i_valid_5_delay_0;
    wire redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_mem_reset0;
    wire [63:0] redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_mem_ia;
    wire [1:0] redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_mem_aa;
    wire [1:0] redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_mem_ab;
    wire [63:0] redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_mem_iq;
    wire [63:0] redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_mem_q;
    wire [1:0] redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_rdcnt_q;
    (* preserve *) reg [1:0] redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_rdcnt_i;
    (* preserve *) reg redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_rdcnt_eq;
    reg [1:0] redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_wraddr_q;
    wire [1:0] redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_mem_last_q;
    wire [0:0] redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_cmp_q;
    (* dont_merge *) reg [0:0] redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_cmpReg_q;
    wire [0:0] redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_notEnable_q;
    wire [0:0] redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_nor_q;
    (* dont_merge *) reg [0:0] redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_sticky_ena_q;
    wire [0:0] redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_enaAnd_q;
    wire redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_mem_reset0;
    wire [31:0] redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_mem_ia;
    wire [2:0] redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_mem_aa;
    wire [2:0] redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_mem_ab;
    wire [31:0] redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_mem_iq;
    wire [31:0] redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_mem_q;
    wire [2:0] redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_rdcnt_q;
    (* preserve *) reg [2:0] redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_rdcnt_i;
    (* preserve *) reg redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_rdcnt_eq;
    reg [2:0] redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_wraddr_q;
    wire [2:0] redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_mem_last_q;
    wire [0:0] redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_cmp_q;
    (* dont_merge *) reg [0:0] redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_cmpReg_q;
    wire [0:0] redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_notEnable_q;
    wire [0:0] redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_nor_q;
    (* dont_merge *) reg [0:0] redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_sticky_ena_q;
    wire [0:0] redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_enaAnd_q;
    wire redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_mem_reset0;
    wire [31:0] redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_mem_ia;
    wire [2:0] redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_mem_aa;
    wire [2:0] redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_mem_ab;
    wire [31:0] redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_mem_iq;
    wire [31:0] redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_mem_q;
    wire [2:0] redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_rdcnt_q;
    (* preserve *) reg [2:0] redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_rdcnt_i;
    (* preserve *) reg redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_rdcnt_eq;
    reg [2:0] redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_wraddr_q;
    wire [2:0] redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_mem_last_q;
    wire [0:0] redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_cmp_q;
    (* dont_merge *) reg [0:0] redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_cmpReg_q;
    wire [0:0] redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_notEnable_q;
    wire [0:0] redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_nor_q;
    (* dont_merge *) reg [0:0] redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_sticky_ena_q;
    wire [0:0] redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_enaAnd_q;
    wire redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_mem_reset0;
    wire [31:0] redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_mem_ia;
    wire [2:0] redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_mem_aa;
    wire [2:0] redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_mem_ab;
    wire [31:0] redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_mem_iq;
    wire [31:0] redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_mem_q;
    wire [2:0] redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_rdcnt_q;
    (* preserve *) reg [2:0] redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_rdcnt_i;
    (* preserve *) reg redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_rdcnt_eq;
    reg [2:0] redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_wraddr_q;
    wire [2:0] redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_mem_last_q;
    wire [0:0] redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_cmp_q;
    (* dont_merge *) reg [0:0] redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_cmpReg_q;
    wire [0:0] redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_notEnable_q;
    wire [0:0] redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_nor_q;
    (* dont_merge *) reg [0:0] redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_sticky_ena_q;
    wire [0:0] redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist33_sync_together110_aunroll_x_in_i_valid_1(DELAY,296)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_sync_together110_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist33_sync_together110_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist34_sync_together110_aunroll_x_in_i_valid_3(DELAY,297)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_sync_together110_aunroll_x_in_i_valid_3_delay_0 <= '0;
            redist34_sync_together110_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist34_sync_together110_aunroll_x_in_i_valid_3_delay_0 <= $unsigned(redist33_sync_together110_aunroll_x_in_i_valid_1_q);
            redist34_sync_together110_aunroll_x_in_i_valid_3_q <= redist34_sync_together110_aunroll_x_in_i_valid_3_delay_0;
        end
    end

    // redist35_sync_together110_aunroll_x_in_i_valid_5(DELAY,298)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_sync_together110_aunroll_x_in_i_valid_5_delay_0 <= '0;
            redist35_sync_together110_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist35_sync_together110_aunroll_x_in_i_valid_5_delay_0 <= $unsigned(redist34_sync_together110_aunroll_x_in_i_valid_3_q);
            redist35_sync_together110_aunroll_x_in_i_valid_5_q <= redist35_sync_together110_aunroll_x_in_i_valid_5_delay_0;
        end
    end

    // valid_fanout_reg0(REG,147)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist35_sync_together110_aunroll_x_in_i_valid_5_q);
        end
    end

    // redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_notEnable(LOGICAL,335)
    assign redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_notEnable_q = $unsigned(~ (VCC_q));

    // redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_nor(LOGICAL,336)
    assign redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_nor_q = ~ (redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_notEnable_q | redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_sticky_ena_q);

    // redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_mem_last(CONSTANT,332)
    assign redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_mem_last_q = $unsigned(3'b011);

    // redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_cmp(LOGICAL,333)
    assign redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_cmp_q = $unsigned(redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_mem_last_q == redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_rdcnt_q ? 1'b1 : 1'b0);

    // redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_cmpReg(REG,334)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_cmpReg_q <= $unsigned(redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_cmp_q);
        end
    end

    // redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_sticky_ena(REG,337)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_nor_q == 1'b1)
        begin
            redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_sticky_ena_q <= $unsigned(redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_cmpReg_q);
        end
    end

    // redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_enaAnd(LOGICAL,338)
    assign redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_enaAnd_q = redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_sticky_ena_q & VCC_q;

    // redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_rdcnt(COUNTER,330)
    // low=0, high=4, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_rdcnt_i <= 3'd0;
            redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_rdcnt_i == 3'd3)
            begin
                redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_rdcnt_eq <= 1'b0;
            end
            if (redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_rdcnt_eq == 1'b1)
            begin
                redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_rdcnt_i <= $unsigned(redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_rdcnt_i) + $unsigned(3'd4);
            end
            else
            begin
                redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_rdcnt_i <= $unsigned(redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_rdcnt_q = redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_rdcnt_i[2:0];

    // redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_wraddr(REG,331)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_wraddr_q <= $unsigned(3'b100);
        end
        else
        begin
            redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_wraddr_q <= $unsigned(redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_rdcnt_q);
        end
    end

    // redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_mem(DUALMEM,329)
    assign redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_mem_ia = $unsigned(in_c0_eni11_11_tpl);
    assign redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_mem_aa = redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_wraddr_q;
    assign redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_mem_ab = redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_rdcnt_q;
    assign redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(5),
        .width_b(32),
        .widthad_b(3),
        .numwords_b(5),
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
    ) redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_mem_dmem (
        .clocken1(redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_mem_reset0),
        .clock1(clock),
        .address_a(redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_mem_aa),
        .data_a(redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_mem_ab),
        .q_b(redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_mem_iq),
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
    assign redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_mem_q = redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_mem_iq[31:0];

    // redist31_sync_together110_aunroll_x_in_c0_eni11_10_tpl_6(DELAY,294)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist31_sync_together110_aunroll_x_in_c0_eni11_10_tpl_6 ( .xin(in_c0_eni11_10_tpl), .xout(redist31_sync_together110_aunroll_x_in_c0_eni11_10_tpl_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_notEnable(LOGICAL,325)
    assign redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_notEnable_q = $unsigned(~ (VCC_q));

    // redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_nor(LOGICAL,326)
    assign redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_nor_q = ~ (redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_notEnable_q | redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_sticky_ena_q);

    // redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_mem_last(CONSTANT,322)
    assign redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_mem_last_q = $unsigned(3'b011);

    // redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_cmp(LOGICAL,323)
    assign redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_cmp_q = $unsigned(redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_mem_last_q == redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_rdcnt_q ? 1'b1 : 1'b0);

    // redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_cmpReg(REG,324)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_cmpReg_q <= $unsigned(redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_cmp_q);
        end
    end

    // redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_sticky_ena(REG,327)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_nor_q == 1'b1)
        begin
            redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_sticky_ena_q <= $unsigned(redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_cmpReg_q);
        end
    end

    // redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_enaAnd(LOGICAL,328)
    assign redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_enaAnd_q = redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_sticky_ena_q & VCC_q;

    // redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_rdcnt(COUNTER,320)
    // low=0, high=4, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_rdcnt_i <= 3'd0;
            redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_rdcnt_i == 3'd3)
            begin
                redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_rdcnt_eq <= 1'b0;
            end
            if (redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_rdcnt_eq == 1'b1)
            begin
                redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_rdcnt_i <= $unsigned(redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_rdcnt_i) + $unsigned(3'd4);
            end
            else
            begin
                redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_rdcnt_i <= $unsigned(redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_rdcnt_q = redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_rdcnt_i[2:0];

    // redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_wraddr(REG,321)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_wraddr_q <= $unsigned(3'b100);
        end
        else
        begin
            redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_wraddr_q <= $unsigned(redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_rdcnt_q);
        end
    end

    // redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_mem(DUALMEM,319)
    assign redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_mem_ia = $unsigned(in_c0_eni11_9_tpl);
    assign redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_mem_aa = redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_wraddr_q;
    assign redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_mem_ab = redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_rdcnt_q;
    assign redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(5),
        .width_b(32),
        .widthad_b(3),
        .numwords_b(5),
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
    ) redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_mem_dmem (
        .clocken1(redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_mem_reset0),
        .clock1(clock),
        .address_a(redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_mem_aa),
        .data_a(redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_mem_ab),
        .q_b(redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_mem_iq),
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
    assign redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_mem_q = redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_mem_iq[31:0];

    // redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_notEnable(LOGICAL,315)
    assign redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_notEnable_q = $unsigned(~ (VCC_q));

    // redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_nor(LOGICAL,316)
    assign redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_nor_q = ~ (redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_notEnable_q | redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_sticky_ena_q);

    // redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_mem_last(CONSTANT,312)
    assign redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_mem_last_q = $unsigned(3'b011);

    // redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_cmp(LOGICAL,313)
    assign redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_cmp_q = $unsigned(redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_mem_last_q == redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_rdcnt_q ? 1'b1 : 1'b0);

    // redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_cmpReg(REG,314)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_cmpReg_q <= $unsigned(redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_cmp_q);
        end
    end

    // redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_sticky_ena(REG,317)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_nor_q == 1'b1)
        begin
            redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_sticky_ena_q <= $unsigned(redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_cmpReg_q);
        end
    end

    // redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_enaAnd(LOGICAL,318)
    assign redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_enaAnd_q = redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_sticky_ena_q & VCC_q;

    // redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_rdcnt(COUNTER,310)
    // low=0, high=4, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_rdcnt_i <= 3'd0;
            redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_rdcnt_i == 3'd3)
            begin
                redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_rdcnt_eq <= 1'b0;
            end
            if (redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_rdcnt_eq == 1'b1)
            begin
                redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_rdcnt_i <= $unsigned(redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_rdcnt_i) + $unsigned(3'd4);
            end
            else
            begin
                redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_rdcnt_i <= $unsigned(redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_rdcnt_q = redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_rdcnt_i[2:0];

    // redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_wraddr(REG,311)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_wraddr_q <= $unsigned(3'b100);
        end
        else
        begin
            redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_wraddr_q <= $unsigned(redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_rdcnt_q);
        end
    end

    // redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_mem(DUALMEM,309)
    assign redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_mem_ia = $unsigned(in_c0_eni11_8_tpl);
    assign redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_mem_aa = redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_wraddr_q;
    assign redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_mem_ab = redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_rdcnt_q;
    assign redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(5),
        .width_b(32),
        .widthad_b(3),
        .numwords_b(5),
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
    ) redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_mem_dmem (
        .clocken1(redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_mem_reset0),
        .clock1(clock),
        .address_a(redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_mem_aa),
        .data_a(redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_mem_ab),
        .q_b(redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_mem_iq),
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
    assign redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_mem_q = redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_mem_iq[31:0];

    // redist21_sync_together110_aunroll_x_in_c0_eni11_1_tpl_1(DELAY,284)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_sync_together110_aunroll_x_in_c0_eni11_1_tpl_1_q <= '0;
        end
        else
        begin
            redist21_sync_together110_aunroll_x_in_c0_eni11_1_tpl_1_q <= $unsigned(in_c0_eni11_1_tpl);
        end
    end

    // redist22_sync_together110_aunroll_x_in_c0_eni11_1_tpl_6(DELAY,285)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_sync_together110_aunroll_x_in_c0_eni11_1_tpl_6_delay_0 <= '0;
            redist22_sync_together110_aunroll_x_in_c0_eni11_1_tpl_6_delay_1 <= '0;
            redist22_sync_together110_aunroll_x_in_c0_eni11_1_tpl_6_delay_2 <= '0;
            redist22_sync_together110_aunroll_x_in_c0_eni11_1_tpl_6_delay_3 <= '0;
            redist22_sync_together110_aunroll_x_in_c0_eni11_1_tpl_6_q <= '0;
        end
        else
        begin
            redist22_sync_together110_aunroll_x_in_c0_eni11_1_tpl_6_delay_0 <= $unsigned(redist21_sync_together110_aunroll_x_in_c0_eni11_1_tpl_1_q);
            redist22_sync_together110_aunroll_x_in_c0_eni11_1_tpl_6_delay_1 <= redist22_sync_together110_aunroll_x_in_c0_eni11_1_tpl_6_delay_0;
            redist22_sync_together110_aunroll_x_in_c0_eni11_1_tpl_6_delay_2 <= redist22_sync_together110_aunroll_x_in_c0_eni11_1_tpl_6_delay_1;
            redist22_sync_together110_aunroll_x_in_c0_eni11_1_tpl_6_delay_3 <= redist22_sync_together110_aunroll_x_in_c0_eni11_1_tpl_6_delay_2;
            redist22_sync_together110_aunroll_x_in_c0_eni11_1_tpl_6_q <= redist22_sync_together110_aunroll_x_in_c0_eni11_1_tpl_6_delay_3;
        end
    end

    // valid_fanout_reg18(REG,165)@1 + 1
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

    // valid_fanout_reg19(REG,166)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg19_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(redist33_sync_together110_aunroll_x_in_i_valid_1_q);
        end
    end

    // leftShiftStage0Idx1Rng1_uid205_i_cleanups_shl59_kernel_2mm0_shift_x(BITSELECT,204)@2
    assign leftShiftStage0Idx1Rng1_uid205_i_cleanups_shl59_kernel_2mm0_shift_x_in = i_llvm_fpga_pop_i2_cleanups58_pop50_kernel_2mm2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid205_i_cleanups_shl59_kernel_2mm0_shift_x_b = leftShiftStage0Idx1Rng1_uid205_i_cleanups_shl59_kernel_2mm0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid206_i_cleanups_shl59_kernel_2mm0_shift_x(BITJOIN,205)@2
    assign leftShiftStage0Idx1_uid206_i_cleanups_shl59_kernel_2mm0_shift_x_q = {leftShiftStage0Idx1Rng1_uid205_i_cleanups_shl59_kernel_2mm0_shift_x_b, GND_q};

    // leftShiftStage0_uid208_i_cleanups_shl59_kernel_2mm0_shift_x(MUX,207)@2
    assign leftShiftStage0_uid208_i_cleanups_shl59_kernel_2mm0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid208_i_cleanups_shl59_kernel_2mm0_shift_x_s or i_llvm_fpga_pop_i2_cleanups58_pop50_kernel_2mm2_out_data_out or leftShiftStage0Idx1_uid206_i_cleanups_shl59_kernel_2mm0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid208_i_cleanups_shl59_kernel_2mm0_shift_x_s)
            1'b0 : leftShiftStage0_uid208_i_cleanups_shl59_kernel_2mm0_shift_x_q = i_llvm_fpga_pop_i2_cleanups58_pop50_kernel_2mm2_out_data_out;
            1'b1 : leftShiftStage0_uid208_i_cleanups_shl59_kernel_2mm0_shift_x_q = leftShiftStage0Idx1_uid206_i_cleanups_shl59_kernel_2mm0_shift_x_q;
            default : leftShiftStage0_uid208_i_cleanups_shl59_kernel_2mm0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl59_kernel_2mm5_vt_select_1(BITSELECT,84)@2
    assign i_cleanups_shl59_kernel_2mm5_vt_select_1_b = leftShiftStage0_uid208_i_cleanups_shl59_kernel_2mm0_shift_x_q[1:1];

    // i_cleanups_shl59_kernel_2mm5_vt_join(BITJOIN,83)@2
    assign i_cleanups_shl59_kernel_2mm5_vt_join_q = {i_cleanups_shl59_kernel_2mm5_vt_select_1_b, GND_q};

    // i_first_cleanup_xor61_kernel_2mm4(LOGICAL,87)@2
    assign i_first_cleanup_xor61_kernel_2mm4_q = i_first_cleanup60_kernel_2mm3_sel_x_b ^ VCC_q;

    // i_notcmp51_kernel_2mm33(LOGICAL,125)@2
    assign i_notcmp51_kernel_2mm33_q = i_exitcond9_kernel_2mm31_cmp_nsign_q ^ VCC_q;

    // i_or62_kernel_2mm35(LOGICAL,126)@2
    assign i_or62_kernel_2mm35_q = i_notcmp51_kernel_2mm33_q | i_first_cleanup_xor61_kernel_2mm4_q;

    // i_next_cleanups63_kernel_2mm36(MUX,121)@2
    assign i_next_cleanups63_kernel_2mm36_s = i_or62_kernel_2mm35_q;
    always @(i_next_cleanups63_kernel_2mm36_s or i_llvm_fpga_pop_i2_cleanups58_pop50_kernel_2mm2_out_data_out or i_cleanups_shl59_kernel_2mm5_vt_join_q)
    begin
        unique case (i_next_cleanups63_kernel_2mm36_s)
            1'b0 : i_next_cleanups63_kernel_2mm36_q = i_llvm_fpga_pop_i2_cleanups58_pop50_kernel_2mm2_out_data_out;
            1'b1 : i_next_cleanups63_kernel_2mm36_q = i_cleanups_shl59_kernel_2mm5_vt_join_q;
            default : i_next_cleanups63_kernel_2mm36_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups58_push50_kernel_2mm37(BLACKBOX,108)@2
    // out out_feedback_out_50@20000000
    // out out_feedback_valid_out_50@20000000
    kernel_2mm_i_llvm_fpga_push_i2_cleanups58_push50_0 thei_llvm_fpga_push_i2_cleanups58_push50_kernel_2mm37 (
        .in_data_in(i_next_cleanups63_kernel_2mm36_q),
        .in_feedback_stall_in_50(i_llvm_fpga_pop_i2_cleanups58_pop50_kernel_2mm2_out_feedback_stall_out_50),
        .in_keep_going55(redist17_i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist33_sync_together110_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_50(i_llvm_fpga_push_i2_cleanups58_push50_kernel_2mm37_out_feedback_out_50),
        .out_feedback_valid_out_50(i_llvm_fpga_push_i2_cleanups58_push50_kernel_2mm37_out_feedback_valid_out_50),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i2_175(CONSTANT,73)
    assign c_i2_175_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups58_pop50_kernel_2mm2(BLACKBOX,96)@2
    // out out_feedback_stall_out_50@20000000
    kernel_2mm_i_llvm_fpga_pop_i2_cleanups58_pop50_0 thei_llvm_fpga_pop_i2_cleanups58_pop50_kernel_2mm2 (
        .in_data_in(c_i2_175_q),
        .in_dir(redist21_sync_together110_aunroll_x_in_c0_eni11_1_tpl_1_q),
        .in_feedback_in_50(i_llvm_fpga_push_i2_cleanups58_push50_kernel_2mm37_out_feedback_out_50),
        .in_feedback_valid_in_50(i_llvm_fpga_push_i2_cleanups58_push50_kernel_2mm37_out_feedback_valid_out_50),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist33_sync_together110_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups58_pop50_kernel_2mm2_out_data_out),
        .out_feedback_stall_out_50(i_llvm_fpga_pop_i2_cleanups58_pop50_kernel_2mm2_out_feedback_stall_out_50),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup60_kernel_2mm3_sel_x(BITSELECT,20)@2
    assign i_first_cleanup60_kernel_2mm3_sel_x_b = i_llvm_fpga_pop_i2_cleanups58_pop50_kernel_2mm2_out_data_out[0:0];

    // c_i5_182(CONSTANT,77)
    assign c_i5_182_q = $unsigned(5'b11111);

    // i_fpga_indvars_iv_next8_kernel_2mm38(ADD,88)@2
    assign i_fpga_indvars_iv_next8_kernel_2mm38_a = {1'b0, i_llvm_fpga_pop_i5_fpga_indvars_iv7_pop46_kernel_2mm30_out_data_out};
    assign i_fpga_indvars_iv_next8_kernel_2mm38_b = {1'b0, c_i5_182_q};
    assign i_fpga_indvars_iv_next8_kernel_2mm38_o = $unsigned(i_fpga_indvars_iv_next8_kernel_2mm38_a) + $unsigned(i_fpga_indvars_iv_next8_kernel_2mm38_b);
    assign i_fpga_indvars_iv_next8_kernel_2mm38_q = i_fpga_indvars_iv_next8_kernel_2mm38_o[5:0];

    // bgTrunc_i_fpga_indvars_iv_next8_kernel_2mm38_sel_x(BITSELECT,12)@2
    assign bgTrunc_i_fpga_indvars_iv_next8_kernel_2mm38_sel_x_b = i_fpga_indvars_iv_next8_kernel_2mm38_q[4:0];

    // i_llvm_fpga_push_i5_fpga_indvars_iv7_push46_kernel_2mm39(BLACKBOX,114)@2
    // out out_feedback_out_46@20000000
    // out out_feedback_valid_out_46@20000000
    kernel_2mm_i_llvm_fpga_push_i5_fpga_indvars_iv7_push46_0 thei_llvm_fpga_push_i5_fpga_indvars_iv7_push46_kernel_2mm39 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next8_kernel_2mm38_sel_x_b),
        .in_feedback_stall_in_46(i_llvm_fpga_pop_i5_fpga_indvars_iv7_pop46_kernel_2mm30_out_feedback_stall_out_46),
        .in_keep_going55(redist17_i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist33_sync_together110_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_46(i_llvm_fpga_push_i5_fpga_indvars_iv7_push46_kernel_2mm39_out_feedback_out_46),
        .out_feedback_valid_out_46(i_llvm_fpga_push_i5_fpga_indvars_iv7_push46_kernel_2mm39_out_feedback_valid_out_46),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i5_880(CONSTANT,78)
    assign c_i5_880_q = $unsigned(5'b01000);

    // i_llvm_fpga_pop_i5_fpga_indvars_iv7_pop46_kernel_2mm30(BLACKBOX,102)@2
    // out out_feedback_stall_out_46@20000000
    kernel_2mm_i_llvm_fpga_pop_i5_fpga_indvars_iv7_pop46_0 thei_llvm_fpga_pop_i5_fpga_indvars_iv7_pop46_kernel_2mm30 (
        .in_data_in(c_i5_880_q),
        .in_dir(redist21_sync_together110_aunroll_x_in_c0_eni11_1_tpl_1_q),
        .in_feedback_in_46(i_llvm_fpga_push_i5_fpga_indvars_iv7_push46_kernel_2mm39_out_feedback_out_46),
        .in_feedback_valid_in_46(i_llvm_fpga_push_i5_fpga_indvars_iv7_push46_kernel_2mm39_out_feedback_valid_out_46),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist33_sync_together110_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i5_fpga_indvars_iv7_pop46_kernel_2mm30_out_data_out),
        .out_feedback_stall_out_46(i_llvm_fpga_pop_i5_fpga_indvars_iv7_pop46_kernel_2mm30_out_feedback_stall_out_46),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond9_kernel_2mm31_cmp_nsign(LOGICAL,218)@2
    assign i_exitcond9_kernel_2mm31_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i5_fpga_indvars_iv7_pop46_kernel_2mm30_out_data_out[4:4]));

    // i_llvm_fpga_push_i1_notexitcond65_kernel_2mm34(BLACKBOX,107)@2
    // out out_feedback_out_9@20000000
    // out out_feedback_valid_out_9@20000000
    kernel_2mm_i_llvm_fpga_push_i1_notexitcond65_0 thei_llvm_fpga_push_i1_notexitcond65_kernel_2mm34 (
        .in_data_in(i_exitcond9_kernel_2mm31_cmp_nsign_q),
        .in_feedback_stall_in_9(i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_out_not_exitcond_stall_out),
        .in_first_cleanup60(i_first_cleanup60_kernel_2mm3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist33_sync_together110_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_9(i_llvm_fpga_push_i1_notexitcond65_kernel_2mm34_out_feedback_out_9),
        .out_feedback_valid_out_9(i_llvm_fpga_push_i1_notexitcond65_kernel_2mm34_out_feedback_valid_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,150)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid212_i_next_initerations54_kernel_2mm0_shift_x(BITSELECT,211)@2
    assign rightShiftStage0Idx1Rng1_uid212_i_next_initerations54_kernel_2mm0_shift_x_b = i_llvm_fpga_pop_i2_initerations53_pop49_kernel_2mm7_out_data_out[1:1];

    // rightShiftStage0Idx1_uid214_i_next_initerations54_kernel_2mm0_shift_x(BITJOIN,213)@2
    assign rightShiftStage0Idx1_uid214_i_next_initerations54_kernel_2mm0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid212_i_next_initerations54_kernel_2mm0_shift_x_b};

    // valid_fanout_reg1(REG,148)@1 + 1
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

    // valid_fanout_reg2(REG,149)@1 + 1
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

    // i_llvm_fpga_push_i2_initerations53_push49_kernel_2mm9(BLACKBOX,109)@2
    // out out_feedback_out_49@20000000
    // out out_feedback_valid_out_49@20000000
    kernel_2mm_i_llvm_fpga_push_i2_initerations53_push49_0 thei_llvm_fpga_push_i2_initerations53_push49_kernel_2mm9 (
        .in_data_in(i_next_initerations54_kernel_2mm8_vt_join_q),
        .in_feedback_stall_in_49(i_llvm_fpga_pop_i2_initerations53_pop49_kernel_2mm7_out_feedback_stall_out_49),
        .in_keep_going55(redist17_i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_49(i_llvm_fpga_push_i2_initerations53_push49_kernel_2mm9_out_feedback_out_49),
        .out_feedback_valid_out_49(i_llvm_fpga_push_i2_initerations53_push49_kernel_2mm9_out_feedback_valid_out_49),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations53_pop49_kernel_2mm7(BLACKBOX,97)@2
    // out out_feedback_stall_out_49@20000000
    kernel_2mm_i_llvm_fpga_pop_i2_initerations53_pop49_0 thei_llvm_fpga_pop_i2_initerations53_pop49_kernel_2mm7 (
        .in_data_in(c_i2_175_q),
        .in_dir(redist21_sync_together110_aunroll_x_in_c0_eni11_1_tpl_1_q),
        .in_feedback_in_49(i_llvm_fpga_push_i2_initerations53_push49_kernel_2mm9_out_feedback_out_49),
        .in_feedback_valid_in_49(i_llvm_fpga_push_i2_initerations53_push49_kernel_2mm9_out_feedback_valid_out_49),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations53_pop49_kernel_2mm7_out_data_out),
        .out_feedback_stall_out_49(i_llvm_fpga_pop_i2_initerations53_pop49_kernel_2mm7_out_feedback_stall_out_49),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid216_i_next_initerations54_kernel_2mm0_shift_x(MUX,215)@2
    assign rightShiftStage0_uid216_i_next_initerations54_kernel_2mm0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid216_i_next_initerations54_kernel_2mm0_shift_x_s or i_llvm_fpga_pop_i2_initerations53_pop49_kernel_2mm7_out_data_out or rightShiftStage0Idx1_uid214_i_next_initerations54_kernel_2mm0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid216_i_next_initerations54_kernel_2mm0_shift_x_s)
            1'b0 : rightShiftStage0_uid216_i_next_initerations54_kernel_2mm0_shift_x_q = i_llvm_fpga_pop_i2_initerations53_pop49_kernel_2mm7_out_data_out;
            1'b1 : rightShiftStage0_uid216_i_next_initerations54_kernel_2mm0_shift_x_q = rightShiftStage0Idx1_uid214_i_next_initerations54_kernel_2mm0_shift_x_q;
            default : rightShiftStage0_uid216_i_next_initerations54_kernel_2mm0_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations54_kernel_2mm8_vt_select_0(BITSELECT,124)@2
    assign i_next_initerations54_kernel_2mm8_vt_select_0_b = rightShiftStage0_uid216_i_next_initerations54_kernel_2mm0_shift_x_q[0:0];

    // i_next_initerations54_kernel_2mm8_vt_join(BITJOIN,123)@2
    assign i_next_initerations54_kernel_2mm8_vt_join_q = {GND_q, i_next_initerations54_kernel_2mm8_vt_select_0_b};

    // i_last_initeration56_kernel_2mm10_sel_x(BITSELECT,21)@2
    assign i_last_initeration56_kernel_2mm10_sel_x_b = i_next_initerations54_kernel_2mm8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration57_kernel_2mm11(BLACKBOX,104)@2
    // out out_feedback_out_8@20000000
    // out out_feedback_valid_out_8@20000000
    kernel_2mm_i_llvm_fpga_push_i1_lastiniteration57_0 thei_llvm_fpga_push_i1_lastiniteration57_kernel_2mm11 (
        .in_data_in(i_last_initeration56_kernel_2mm10_sel_x_b),
        .in_feedback_stall_in_8(i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_out_initeration_stall_out),
        .in_keep_going55(redist17_i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_8(i_llvm_fpga_push_i1_lastiniteration57_kernel_2mm11_out_feedback_out_8),
        .out_feedback_valid_out_8(i_llvm_fpga_push_i1_lastiniteration57_kernel_2mm11_out_feedback_valid_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going55_kernel_2mm6(BLACKBOX,93)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    kernel_2mm_i_llvm_fpga_pipeline_keep_going55_0 thei_llvm_fpga_pipeline_keep_going55_kernel_2mm6 (
        .in_data_in(in_c0_eni11_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration57_kernel_2mm11_out_feedback_out_8),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration57_kernel_2mm11_out_feedback_valid_out_8),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond65_kernel_2mm34_out_feedback_out_9),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond65_kernel_2mm34_out_feedback_valid_out_9),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist17_i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_out_data_out_1(DELAY,280)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist17_i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_out_data_out);
        end
    end

    // redist18_i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_out_data_out_2(DELAY,281)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_out_data_out_2_q <= '0;
        end
        else
        begin
            redist18_i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_out_data_out_2_q <= $unsigned(redist17_i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_out_data_out_1_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp67127_push56_kernel_2mm48(BLACKBOX,105)@3
    // out out_feedback_out_56@20000000
    // out out_feedback_valid_out_56@20000000
    kernel_2mm_i_llvm_fpga_push_i1_notcmp67127_push56_0 thei_llvm_fpga_push_i1_notcmp67127_push56_kernel_2mm48 (
        .in_data_in(redist15_i_llvm_fpga_pop_i1_notcmp67127_pop56_kernel_2mm47_out_data_out_1_q),
        .in_feedback_stall_in_56(i_llvm_fpga_pop_i1_notcmp67127_pop56_kernel_2mm47_out_feedback_stall_out_56),
        .in_keep_going55(redist18_i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_data_out(),
        .out_feedback_out_56(i_llvm_fpga_push_i1_notcmp67127_push56_kernel_2mm48_out_feedback_out_56),
        .out_feedback_valid_out_56(i_llvm_fpga_push_i1_notcmp67127_push56_kernel_2mm48_out_feedback_valid_out_56),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist28_sync_together110_aunroll_x_in_c0_eni11_7_tpl_1(DELAY,291)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_sync_together110_aunroll_x_in_c0_eni11_7_tpl_1_q <= '0;
        end
        else
        begin
            redist28_sync_together110_aunroll_x_in_c0_eni11_7_tpl_1_q <= $unsigned(in_c0_eni11_7_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp67127_pop56_kernel_2mm47(BLACKBOX,94)@2
    // out out_feedback_stall_out_56@20000000
    kernel_2mm_i_llvm_fpga_pop_i1_notcmp67127_pop56_0 thei_llvm_fpga_pop_i1_notcmp67127_pop56_kernel_2mm47 (
        .in_data_in(redist28_sync_together110_aunroll_x_in_c0_eni11_7_tpl_1_q),
        .in_dir(redist21_sync_together110_aunroll_x_in_c0_eni11_1_tpl_1_q),
        .in_feedback_in_56(i_llvm_fpga_push_i1_notcmp67127_push56_kernel_2mm48_out_feedback_out_56),
        .in_feedback_valid_in_56(i_llvm_fpga_push_i1_notcmp67127_push56_kernel_2mm48_out_feedback_valid_out_56),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp67127_pop56_kernel_2mm47_out_data_out),
        .out_feedback_stall_out_56(i_llvm_fpga_pop_i1_notcmp67127_pop56_kernel_2mm47_out_feedback_stall_out_56),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist15_i_llvm_fpga_pop_i1_notcmp67127_pop56_kernel_2mm47_out_data_out_1(DELAY,278)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_llvm_fpga_pop_i1_notcmp67127_pop56_kernel_2mm47_out_data_out_1_q <= '0;
        end
        else
        begin
            redist15_i_llvm_fpga_pop_i1_notcmp67127_pop56_kernel_2mm47_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_notcmp67127_pop56_kernel_2mm47_out_data_out);
        end
    end

    // redist16_i_llvm_fpga_pop_i1_notcmp67127_pop56_kernel_2mm47_out_data_out_5(DELAY,279)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_llvm_fpga_pop_i1_notcmp67127_pop56_kernel_2mm47_out_data_out_5_delay_0 <= '0;
            redist16_i_llvm_fpga_pop_i1_notcmp67127_pop56_kernel_2mm47_out_data_out_5_delay_1 <= '0;
            redist16_i_llvm_fpga_pop_i1_notcmp67127_pop56_kernel_2mm47_out_data_out_5_delay_2 <= '0;
            redist16_i_llvm_fpga_pop_i1_notcmp67127_pop56_kernel_2mm47_out_data_out_5_q <= '0;
        end
        else
        begin
            redist16_i_llvm_fpga_pop_i1_notcmp67127_pop56_kernel_2mm47_out_data_out_5_delay_0 <= $unsigned(redist15_i_llvm_fpga_pop_i1_notcmp67127_pop56_kernel_2mm47_out_data_out_1_q);
            redist16_i_llvm_fpga_pop_i1_notcmp67127_pop56_kernel_2mm47_out_data_out_5_delay_1 <= redist16_i_llvm_fpga_pop_i1_notcmp67127_pop56_kernel_2mm47_out_data_out_5_delay_0;
            redist16_i_llvm_fpga_pop_i1_notcmp67127_pop56_kernel_2mm47_out_data_out_5_delay_2 <= redist16_i_llvm_fpga_pop_i1_notcmp67127_pop56_kernel_2mm47_out_data_out_5_delay_1;
            redist16_i_llvm_fpga_pop_i1_notcmp67127_pop56_kernel_2mm47_out_data_out_5_q <= redist16_i_llvm_fpga_pop_i1_notcmp67127_pop56_kernel_2mm47_out_data_out_5_delay_2;
        end
    end

    // redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_notEnable(LOGICAL,305)
    assign redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_nor(LOGICAL,306)
    assign redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_nor_q = ~ (redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_notEnable_q | redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_sticky_ena_q);

    // redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_mem_last(CONSTANT,302)
    assign redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_mem_last_q = $unsigned(2'b01);

    // redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_cmp(LOGICAL,303)
    assign redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_cmp_q = $unsigned(redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_mem_last_q == redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_rdcnt_q ? 1'b1 : 1'b0);

    // redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_cmpReg(REG,304)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_cmpReg_q <= $unsigned(redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_cmp_q);
        end
    end

    // redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_sticky_ena(REG,307)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_nor_q == 1'b1)
        begin
            redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_sticky_ena_q <= $unsigned(redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_cmpReg_q);
        end
    end

    // redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_enaAnd(LOGICAL,308)
    assign redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_enaAnd_q = redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_sticky_ena_q & VCC_q;

    // redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_rdcnt(COUNTER,300)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_rdcnt_i <= 2'd0;
            redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_rdcnt_i == 2'd1)
            begin
                redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_rdcnt_eq <= 1'b0;
            end
            if (redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_rdcnt_eq == 1'b1)
            begin
                redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_rdcnt_i <= $unsigned(redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_rdcnt_i <= $unsigned(redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_rdcnt_q = redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_rdcnt_i[1:0];

    // valid_fanout_reg16(REG,163)@1 + 1
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

    // valid_fanout_reg17(REG,164)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg17_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(redist33_sync_together110_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_p64i32_arrayidx243126_push55_kernel_2mm46(BLACKBOX,115)@3
    // out out_feedback_out_55@20000000
    // out out_feedback_valid_out_55@20000000
    kernel_2mm_i_llvm_fpga_push_p64i32_arrayidx243126_push55_0 thei_llvm_fpga_push_p64i32_arrayidx243126_push55_kernel_2mm46 (
        .in_data_in(redist8_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_1_q),
        .in_feedback_stall_in_55(i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_feedback_stall_out_55),
        .in_keep_going55(redist18_i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(),
        .out_feedback_out_55(i_llvm_fpga_push_p64i32_arrayidx243126_push55_kernel_2mm46_out_feedback_out_55),
        .out_feedback_valid_out_55(i_llvm_fpga_push_p64i32_arrayidx243126_push55_kernel_2mm46_out_feedback_valid_out_55),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist27_sync_together110_aunroll_x_in_c0_eni11_6_tpl_1(DELAY,290)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_sync_together110_aunroll_x_in_c0_eni11_6_tpl_1_q <= '0;
        end
        else
        begin
            redist27_sync_together110_aunroll_x_in_c0_eni11_6_tpl_1_q <= $unsigned(in_c0_eni11_6_tpl);
        end
    end

    // i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45(BLACKBOX,103)@2
    // out out_feedback_stall_out_55@20000000
    kernel_2mm_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_0 thei_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45 (
        .in_data_in(redist27_sync_together110_aunroll_x_in_c0_eni11_6_tpl_1_q),
        .in_dir(redist21_sync_together110_aunroll_x_in_c0_eni11_1_tpl_1_q),
        .in_feedback_in_55(i_llvm_fpga_push_p64i32_arrayidx243126_push55_kernel_2mm46_out_feedback_out_55),
        .in_feedback_valid_in_55(i_llvm_fpga_push_p64i32_arrayidx243126_push55_kernel_2mm46_out_feedback_valid_out_55),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out),
        .out_feedback_stall_out_55(i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_feedback_stall_out_55),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_1(DELAY,271)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_1_q <= '0;
        end
        else
        begin
            redist8_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out);
        end
    end

    // redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_wraddr(REG,301)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_wraddr_q <= $unsigned(redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_rdcnt_q);
        end
    end

    // redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_mem(DUALMEM,299)
    assign redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_mem_ia = $unsigned(redist8_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_1_q);
    assign redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_mem_aa = redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_wraddr_q;
    assign redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_mem_ab = redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_rdcnt_q;
    assign redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(2),
        .numwords_a(3),
        .width_b(64),
        .widthad_b(2),
        .numwords_b(3),
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
    ) redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_mem_dmem (
        .clocken1(redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_mem_reset0),
        .clock1(clock),
        .address_a(redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_mem_aa),
        .data_a(redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_mem_ab),
        .q_b(redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_mem_iq),
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
    assign redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_mem_q = redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_mem_iq[63:0];

    // valid_fanout_reg14(REG,161)@1 + 1
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

    // valid_fanout_reg15(REG,162)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist33_sync_together110_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp72113_push53_kernel_2mm44(BLACKBOX,106)@3
    // out out_feedback_out_53@20000000
    // out out_feedback_valid_out_53@20000000
    kernel_2mm_i_llvm_fpga_push_i1_notcmp72113_push53_0 thei_llvm_fpga_push_i1_notcmp72113_push53_kernel_2mm44 (
        .in_data_in(redist13_i_llvm_fpga_pop_i1_notcmp72113_pop53_kernel_2mm43_out_data_out_1_q),
        .in_feedback_stall_in_53(i_llvm_fpga_pop_i1_notcmp72113_pop53_kernel_2mm43_out_feedback_stall_out_53),
        .in_keep_going55(redist18_i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(),
        .out_feedback_out_53(i_llvm_fpga_push_i1_notcmp72113_push53_kernel_2mm44_out_feedback_out_53),
        .out_feedback_valid_out_53(i_llvm_fpga_push_i1_notcmp72113_push53_kernel_2mm44_out_feedback_valid_out_53),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist26_sync_together110_aunroll_x_in_c0_eni11_5_tpl_1(DELAY,289)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_sync_together110_aunroll_x_in_c0_eni11_5_tpl_1_q <= '0;
        end
        else
        begin
            redist26_sync_together110_aunroll_x_in_c0_eni11_5_tpl_1_q <= $unsigned(in_c0_eni11_5_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp72113_pop53_kernel_2mm43(BLACKBOX,95)@2
    // out out_feedback_stall_out_53@20000000
    kernel_2mm_i_llvm_fpga_pop_i1_notcmp72113_pop53_0 thei_llvm_fpga_pop_i1_notcmp72113_pop53_kernel_2mm43 (
        .in_data_in(redist26_sync_together110_aunroll_x_in_c0_eni11_5_tpl_1_q),
        .in_dir(redist21_sync_together110_aunroll_x_in_c0_eni11_1_tpl_1_q),
        .in_feedback_in_53(i_llvm_fpga_push_i1_notcmp72113_push53_kernel_2mm44_out_feedback_out_53),
        .in_feedback_valid_in_53(i_llvm_fpga_push_i1_notcmp72113_push53_kernel_2mm44_out_feedback_valid_out_53),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp72113_pop53_kernel_2mm43_out_data_out),
        .out_feedback_stall_out_53(i_llvm_fpga_pop_i1_notcmp72113_pop53_kernel_2mm43_out_feedback_stall_out_53),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist13_i_llvm_fpga_pop_i1_notcmp72113_pop53_kernel_2mm43_out_data_out_1(DELAY,276)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_llvm_fpga_pop_i1_notcmp72113_pop53_kernel_2mm43_out_data_out_1_q <= '0;
        end
        else
        begin
            redist13_i_llvm_fpga_pop_i1_notcmp72113_pop53_kernel_2mm43_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_notcmp72113_pop53_kernel_2mm43_out_data_out);
        end
    end

    // redist14_i_llvm_fpga_pop_i1_notcmp72113_pop53_kernel_2mm43_out_data_out_5(DELAY,277)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_llvm_fpga_pop_i1_notcmp72113_pop53_kernel_2mm43_out_data_out_5_delay_0 <= '0;
            redist14_i_llvm_fpga_pop_i1_notcmp72113_pop53_kernel_2mm43_out_data_out_5_delay_1 <= '0;
            redist14_i_llvm_fpga_pop_i1_notcmp72113_pop53_kernel_2mm43_out_data_out_5_delay_2 <= '0;
            redist14_i_llvm_fpga_pop_i1_notcmp72113_pop53_kernel_2mm43_out_data_out_5_q <= '0;
        end
        else
        begin
            redist14_i_llvm_fpga_pop_i1_notcmp72113_pop53_kernel_2mm43_out_data_out_5_delay_0 <= $unsigned(redist13_i_llvm_fpga_pop_i1_notcmp72113_pop53_kernel_2mm43_out_data_out_1_q);
            redist14_i_llvm_fpga_pop_i1_notcmp72113_pop53_kernel_2mm43_out_data_out_5_delay_1 <= redist14_i_llvm_fpga_pop_i1_notcmp72113_pop53_kernel_2mm43_out_data_out_5_delay_0;
            redist14_i_llvm_fpga_pop_i1_notcmp72113_pop53_kernel_2mm43_out_data_out_5_delay_2 <= redist14_i_llvm_fpga_pop_i1_notcmp72113_pop53_kernel_2mm43_out_data_out_5_delay_1;
            redist14_i_llvm_fpga_pop_i1_notcmp72113_pop53_kernel_2mm43_out_data_out_5_q <= redist14_i_llvm_fpga_pop_i1_notcmp72113_pop53_kernel_2mm43_out_data_out_5_delay_2;
        end
    end

    // i_masked64_kernel_2mm40(LOGICAL,116)@2 + 1
    assign i_masked64_kernel_2mm40_qi = i_notcmp51_kernel_2mm33_q & i_first_cleanup60_kernel_2mm3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked64_kernel_2mm40_delay ( .xin(i_masked64_kernel_2mm40_qi), .xout(i_masked64_kernel_2mm40_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist7_i_masked64_kernel_2mm40_q_5(DELAY,270)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_masked64_kernel_2mm40_q_5_delay_0 <= '0;
            redist7_i_masked64_kernel_2mm40_q_5_delay_1 <= '0;
            redist7_i_masked64_kernel_2mm40_q_5_delay_2 <= '0;
            redist7_i_masked64_kernel_2mm40_q_5_q <= '0;
        end
        else
        begin
            redist7_i_masked64_kernel_2mm40_q_5_delay_0 <= $unsigned(i_masked64_kernel_2mm40_q);
            redist7_i_masked64_kernel_2mm40_q_5_delay_1 <= redist7_i_masked64_kernel_2mm40_q_5_delay_0;
            redist7_i_masked64_kernel_2mm40_q_5_delay_2 <= redist7_i_masked64_kernel_2mm40_q_5_delay_1;
            redist7_i_masked64_kernel_2mm40_q_5_q <= redist7_i_masked64_kernel_2mm40_q_5_delay_2;
        end
    end

    // c_i32_077(CONSTANT,74)
    assign c_i32_077_q = $unsigned(32'b00000000000000000000000000000000);

    // i_mptr_bitcast_index86_kernel_2mm0_add_x_BitSelect_for_b_tessel0_2(BITSELECT,244)
    assign i_mptr_bitcast_index86_kernel_2mm0_add_x_BitSelect_for_b_tessel0_2_b = c_i32_077_q[25:0];

    // valid_fanout_reg8(REG,155)@1 + 1
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

    // valid_fanout_reg9(REG,156)@1 + 1
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

    // i_llvm_fpga_push_i32_j16_081_pop34125_push54_kernel_2mm23(BLACKBOX,111)@2
    // out out_feedback_out_54@20000000
    // out out_feedback_valid_out_54@20000000
    kernel_2mm_i_llvm_fpga_push_i32_j16_081_pop34125_push54_0 thei_llvm_fpga_push_i32_j16_081_pop34125_push54_kernel_2mm23 (
        .in_data_in(i_llvm_fpga_pop_i32_j16_081_pop34125_pop54_kernel_2mm22_out_data_out),
        .in_feedback_stall_in_54(i_llvm_fpga_pop_i32_j16_081_pop34125_pop54_kernel_2mm22_out_feedback_stall_out_54),
        .in_keep_going55(redist17_i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(),
        .out_feedback_out_54(i_llvm_fpga_push_i32_j16_081_pop34125_push54_kernel_2mm23_out_feedback_out_54),
        .out_feedback_valid_out_54(i_llvm_fpga_push_i32_j16_081_pop34125_push54_kernel_2mm23_out_feedback_valid_out_54),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist24_sync_together110_aunroll_x_in_c0_eni11_3_tpl_1(DELAY,287)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_sync_together110_aunroll_x_in_c0_eni11_3_tpl_1_q <= '0;
        end
        else
        begin
            redist24_sync_together110_aunroll_x_in_c0_eni11_3_tpl_1_q <= $unsigned(in_c0_eni11_3_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_j16_081_pop34125_pop54_kernel_2mm22(BLACKBOX,99)@2
    // out out_feedback_stall_out_54@20000000
    kernel_2mm_i_llvm_fpga_pop_i32_j16_081_pop34125_pop54_0 thei_llvm_fpga_pop_i32_j16_081_pop34125_pop54_kernel_2mm22 (
        .in_data_in(redist24_sync_together110_aunroll_x_in_c0_eni11_3_tpl_1_q),
        .in_dir(redist21_sync_together110_aunroll_x_in_c0_eni11_1_tpl_1_q),
        .in_feedback_in_54(i_llvm_fpga_push_i32_j16_081_pop34125_push54_kernel_2mm23_out_feedback_out_54),
        .in_feedback_valid_in_54(i_llvm_fpga_push_i32_j16_081_pop34125_push54_kernel_2mm23_out_feedback_valid_out_54),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(i_llvm_fpga_pop_i32_j16_081_pop34125_pop54_kernel_2mm22_out_data_out),
        .out_feedback_stall_out_54(i_llvm_fpga_pop_i32_j16_081_pop34125_pop54_kernel_2mm22_out_feedback_stall_out_54),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist12_i_llvm_fpga_pop_i32_j16_081_pop34125_pop54_kernel_2mm22_out_data_out_2(DELAY,275)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_llvm_fpga_pop_i32_j16_081_pop34125_pop54_kernel_2mm22_out_data_out_2_delay_0 <= '0;
            redist12_i_llvm_fpga_pop_i32_j16_081_pop34125_pop54_kernel_2mm22_out_data_out_2_q <= '0;
        end
        else
        begin
            redist12_i_llvm_fpga_pop_i32_j16_081_pop34125_pop54_kernel_2mm22_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_i32_j16_081_pop34125_pop54_kernel_2mm22_out_data_out);
            redist12_i_llvm_fpga_pop_i32_j16_081_pop34125_pop54_kernel_2mm22_out_data_out_2_q <= redist12_i_llvm_fpga_pop_i32_j16_081_pop34125_pop54_kernel_2mm22_out_data_out_2_delay_0;
        end
    end

    // leftShiftStage1Idx1Rng2_uid197_dupName_2_i_unnamed_kernel_2mm0_shift_x(BITSELECT,196)@3
    assign leftShiftStage1Idx1Rng2_uid197_dupName_2_i_unnamed_kernel_2mm0_shift_x_in = leftShiftStage0_uid187_dupName_1_i_unnamed_kernel_2mm0_shift_x_q[29:0];
    assign leftShiftStage1Idx1Rng2_uid197_dupName_2_i_unnamed_kernel_2mm0_shift_x_b = leftShiftStage1Idx1Rng2_uid197_dupName_2_i_unnamed_kernel_2mm0_shift_x_in[29:0];

    // leftShiftStage1Idx1_uid198_dupName_2_i_unnamed_kernel_2mm0_shift_x(BITJOIN,197)@3
    assign leftShiftStage1Idx1_uid198_dupName_2_i_unnamed_kernel_2mm0_shift_x_q = {leftShiftStage1Idx1Rng2_uid197_dupName_2_i_unnamed_kernel_2mm0_shift_x_b, i_mptr_bitcast_index86_kernel_2mm0_c_i2_01_x_q};

    // leftShiftStage0Idx1Rng1_uid184_dupName_1_i_unnamed_kernel_2mm0_shift_x(BITSELECT,183)@3
    assign leftShiftStage0Idx1Rng1_uid184_dupName_1_i_unnamed_kernel_2mm0_shift_x_in = redist11_i_llvm_fpga_pop_i32_k_080_pop47_kernel_2mm12_out_data_out_1_q[30:0];
    assign leftShiftStage0Idx1Rng1_uid184_dupName_1_i_unnamed_kernel_2mm0_shift_x_b = leftShiftStage0Idx1Rng1_uid184_dupName_1_i_unnamed_kernel_2mm0_shift_x_in[30:0];

    // leftShiftStage0Idx1_uid185_dupName_1_i_unnamed_kernel_2mm0_shift_x(BITJOIN,184)@3
    assign leftShiftStage0Idx1_uid185_dupName_1_i_unnamed_kernel_2mm0_shift_x_q = {leftShiftStage0Idx1Rng1_uid184_dupName_1_i_unnamed_kernel_2mm0_shift_x_b, GND_q};

    // valid_fanout_reg4(REG,151)@1 + 1
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

    // valid_fanout_reg11(REG,158)@1 + 1
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

    // c_i32_178(CONSTANT,75)
    assign c_i32_178_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc36_kernel_2mm28(ADD,89)@2
    assign i_inc36_kernel_2mm28_a = {1'b0, i_llvm_fpga_pop_i32_k_080_pop47_kernel_2mm12_out_data_out};
    assign i_inc36_kernel_2mm28_b = {1'b0, c_i32_178_q};
    assign i_inc36_kernel_2mm28_o = $unsigned(i_inc36_kernel_2mm28_a) + $unsigned(i_inc36_kernel_2mm28_b);
    assign i_inc36_kernel_2mm28_q = i_inc36_kernel_2mm28_o[32:0];

    // bgTrunc_i_inc36_kernel_2mm28_sel_x(BITSELECT,13)@2
    assign bgTrunc_i_inc36_kernel_2mm28_sel_x_b = i_inc36_kernel_2mm28_q[31:0];

    // i_llvm_fpga_push_i32_k_080_push47_kernel_2mm29(BLACKBOX,112)@2
    // out out_feedback_out_47@20000000
    // out out_feedback_valid_out_47@20000000
    kernel_2mm_i_llvm_fpga_push_i32_k_080_push47_0 thei_llvm_fpga_push_i32_k_080_push47_kernel_2mm29 (
        .in_data_in(bgTrunc_i_inc36_kernel_2mm28_sel_x_b),
        .in_feedback_stall_in_47(i_llvm_fpga_pop_i32_k_080_pop47_kernel_2mm12_out_feedback_stall_out_47),
        .in_keep_going55(redist17_i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(),
        .out_feedback_out_47(i_llvm_fpga_push_i32_k_080_push47_kernel_2mm29_out_feedback_out_47),
        .out_feedback_valid_out_47(i_llvm_fpga_push_i32_k_080_push47_kernel_2mm29_out_feedback_valid_out_47),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_k_080_pop47_kernel_2mm12(BLACKBOX,100)@2
    // out out_feedback_stall_out_47@20000000
    kernel_2mm_i_llvm_fpga_pop_i32_k_080_pop47_0 thei_llvm_fpga_pop_i32_k_080_pop47_kernel_2mm12 (
        .in_data_in(c_i32_077_q),
        .in_dir(redist21_sync_together110_aunroll_x_in_c0_eni11_1_tpl_1_q),
        .in_feedback_in_47(i_llvm_fpga_push_i32_k_080_push47_kernel_2mm29_out_feedback_out_47),
        .in_feedback_valid_in_47(i_llvm_fpga_push_i32_k_080_push47_kernel_2mm29_out_feedback_valid_out_47),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_k_080_pop47_kernel_2mm12_out_data_out),
        .out_feedback_stall_out_47(i_llvm_fpga_pop_i32_k_080_pop47_kernel_2mm12_out_feedback_stall_out_47),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist11_i_llvm_fpga_pop_i32_k_080_pop47_kernel_2mm12_out_data_out_1(DELAY,274)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_llvm_fpga_pop_i32_k_080_pop47_kernel_2mm12_out_data_out_1_q <= '0;
        end
        else
        begin
            redist11_i_llvm_fpga_pop_i32_k_080_pop47_kernel_2mm12_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_k_080_pop47_kernel_2mm12_out_data_out);
        end
    end

    // leftShiftStage0_uid187_dupName_1_i_unnamed_kernel_2mm0_shift_x(MUX,186)@3
    assign leftShiftStage0_uid187_dupName_1_i_unnamed_kernel_2mm0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid187_dupName_1_i_unnamed_kernel_2mm0_shift_x_s or redist11_i_llvm_fpga_pop_i32_k_080_pop47_kernel_2mm12_out_data_out_1_q or leftShiftStage0Idx1_uid185_dupName_1_i_unnamed_kernel_2mm0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid187_dupName_1_i_unnamed_kernel_2mm0_shift_x_s)
            1'b0 : leftShiftStage0_uid187_dupName_1_i_unnamed_kernel_2mm0_shift_x_q = redist11_i_llvm_fpga_pop_i32_k_080_pop47_kernel_2mm12_out_data_out_1_q;
            1'b1 : leftShiftStage0_uid187_dupName_1_i_unnamed_kernel_2mm0_shift_x_q = leftShiftStage0Idx1_uid185_dupName_1_i_unnamed_kernel_2mm0_shift_x_q;
            default : leftShiftStage0_uid187_dupName_1_i_unnamed_kernel_2mm0_shift_x_q = 32'b0;
        endcase
    end

    // leftShiftStage1_uid200_dupName_2_i_unnamed_kernel_2mm0_shift_x(MUX,199)@3
    assign leftShiftStage1_uid200_dupName_2_i_unnamed_kernel_2mm0_shift_x_s = VCC_q;
    always @(leftShiftStage1_uid200_dupName_2_i_unnamed_kernel_2mm0_shift_x_s or leftShiftStage0_uid187_dupName_1_i_unnamed_kernel_2mm0_shift_x_q or leftShiftStage1Idx1_uid198_dupName_2_i_unnamed_kernel_2mm0_shift_x_q)
    begin
        unique case (leftShiftStage1_uid200_dupName_2_i_unnamed_kernel_2mm0_shift_x_s)
            1'b0 : leftShiftStage1_uid200_dupName_2_i_unnamed_kernel_2mm0_shift_x_q = leftShiftStage0_uid187_dupName_1_i_unnamed_kernel_2mm0_shift_x_q;
            1'b1 : leftShiftStage1_uid200_dupName_2_i_unnamed_kernel_2mm0_shift_x_q = leftShiftStage1Idx1_uid198_dupName_2_i_unnamed_kernel_2mm0_shift_x_q;
            default : leftShiftStage1_uid200_dupName_2_i_unnamed_kernel_2mm0_shift_x_q = 32'b0;
        endcase
    end

    // i_unnamed_kernel_2mm20_vt_select_31(BITSELECT,136)@3
    assign i_unnamed_kernel_2mm20_vt_select_31_b = leftShiftStage1_uid200_dupName_2_i_unnamed_kernel_2mm0_shift_x_q[31:3];

    // i_unnamed_kernel_2mm20_vt_const_2(CONSTANT,134)
    assign i_unnamed_kernel_2mm20_vt_const_2_q = $unsigned(3'b000);

    // i_unnamed_kernel_2mm20_vt_join(BITJOIN,135)@3
    assign i_unnamed_kernel_2mm20_vt_join_q = {i_unnamed_kernel_2mm20_vt_select_31_b, i_unnamed_kernel_2mm20_vt_const_2_q};

    // i_unnamed_kernel_2mm19_vt_select_31(BITSELECT,133)@3
    assign i_unnamed_kernel_2mm19_vt_select_31_b = leftShiftStage0_uid187_dupName_1_i_unnamed_kernel_2mm0_shift_x_q[31:1];

    // i_unnamed_kernel_2mm19_vt_join(BITJOIN,132)@3
    assign i_unnamed_kernel_2mm19_vt_join_q = {i_unnamed_kernel_2mm19_vt_select_31_b, GND_q};

    // i_mul30_add28_kernel_2mm21(ADD,117)@3
    assign i_mul30_add28_kernel_2mm21_a = {1'b0, i_unnamed_kernel_2mm19_vt_join_q};
    assign i_mul30_add28_kernel_2mm21_b = {1'b0, i_unnamed_kernel_2mm20_vt_join_q};
    assign i_mul30_add28_kernel_2mm21_o = $unsigned(i_mul30_add28_kernel_2mm21_a) + $unsigned(i_mul30_add28_kernel_2mm21_b);
    assign i_mul30_add28_kernel_2mm21_q = i_mul30_add28_kernel_2mm21_o[32:0];

    // bgTrunc_i_mul30_add28_kernel_2mm21_sel_x(BITSELECT,14)@3
    assign bgTrunc_i_mul30_add28_kernel_2mm21_sel_x_b = i_mul30_add28_kernel_2mm21_q[31:0];

    // i_mul30_add28_kernel_2mm21_vt_select_31(BITSELECT,120)@3
    assign i_mul30_add28_kernel_2mm21_vt_select_31_b = bgTrunc_i_mul30_add28_kernel_2mm21_sel_x_b[31:1];

    // redist6_i_mul30_add28_kernel_2mm21_vt_select_31_b_1(DELAY,269)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_mul30_add28_kernel_2mm21_vt_select_31_b_1_q <= '0;
        end
        else
        begin
            redist6_i_mul30_add28_kernel_2mm21_vt_select_31_b_1_q <= $unsigned(i_mul30_add28_kernel_2mm21_vt_select_31_b);
        end
    end

    // i_mul30_add28_kernel_2mm21_vt_join(BITJOIN,119)@4
    assign i_mul30_add28_kernel_2mm21_vt_join_q = {redist6_i_mul30_add28_kernel_2mm21_vt_select_31_b_1_q, GND_q};

    // i_add31_kernel_2mm24(ADD,80)@4
    assign i_add31_kernel_2mm24_a = {1'b0, i_mul30_add28_kernel_2mm21_vt_join_q};
    assign i_add31_kernel_2mm24_b = {1'b0, redist12_i_llvm_fpga_pop_i32_j16_081_pop34125_pop54_kernel_2mm22_out_data_out_2_q};
    assign i_add31_kernel_2mm24_o = $unsigned(i_add31_kernel_2mm24_a) + $unsigned(i_add31_kernel_2mm24_b);
    assign i_add31_kernel_2mm24_q = i_add31_kernel_2mm24_o[32:0];

    // i_mptr_bitcast_index86_kernel_2mm0_add_x_BitSelect_for_b_tessel0_1(BITSELECT,243)@4
    assign i_mptr_bitcast_index86_kernel_2mm0_add_x_BitSelect_for_b_tessel0_1_b = $unsigned(i_add31_kernel_2mm24_q[31:0]);

    // redist3_i_mptr_bitcast_index86_kernel_2mm0_add_x_BitSelect_for_b_tessel0_1_b_1(DELAY,266)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_mptr_bitcast_index86_kernel_2mm0_add_x_BitSelect_for_b_tessel0_1_b_1_q <= '0;
        end
        else
        begin
            redist3_i_mptr_bitcast_index86_kernel_2mm0_add_x_BitSelect_for_b_tessel0_1_b_1_q <= $unsigned(i_mptr_bitcast_index86_kernel_2mm0_add_x_BitSelect_for_b_tessel0_1_b);
        end
    end

    // i_mptr_bitcast_index86_kernel_2mm0_c_i2_01_x(CONSTANT,25)
    assign i_mptr_bitcast_index86_kernel_2mm0_c_i2_01_x_q = $unsigned(2'b00);

    // i_mptr_bitcast_index86_kernel_2mm0_add_x_BitSelect_for_b_BitJoin_for_b(BITJOIN,245)@5
    assign i_mptr_bitcast_index86_kernel_2mm0_add_x_BitSelect_for_b_BitJoin_for_b_q = {i_mptr_bitcast_index86_kernel_2mm0_add_x_BitSelect_for_b_tessel0_2_b, redist3_i_mptr_bitcast_index86_kernel_2mm0_add_x_BitSelect_for_b_tessel0_1_b_1_q, i_mptr_bitcast_index86_kernel_2mm0_c_i2_01_x_q};

    // valid_fanout_reg10(REG,157)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist34_sync_together110_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast859438_kernel_2mm26(BLACKBOX,91)@5
    kernel_2mm_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast859438_0 thei_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast859438_kernel_2mm26 (
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_dest_data_out_5_0(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast859438_kernel_2mm26_out_dest_data_out_5_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mptr_bitcast_index86_kernel_2mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,261)@5
    assign i_mptr_bitcast_index86_kernel_2mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b = $unsigned(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast859438_kernel_2mm26_out_dest_data_out_5_0[59:0]);
    assign i_mptr_bitcast_index86_kernel_2mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c = $unsigned(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast859438_kernel_2mm26_out_dest_data_out_5_0[63:60]);

    // i_mptr_bitcast_index86_kernel_2mm0_add_x_p1_of_2(ADD,225)@5 + 1
    assign i_mptr_bitcast_index86_kernel_2mm0_add_x_p1_of_2_a = {1'b0, i_mptr_bitcast_index86_kernel_2mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b};
    assign i_mptr_bitcast_index86_kernel_2mm0_add_x_p1_of_2_b = {1'b0, i_mptr_bitcast_index86_kernel_2mm0_add_x_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index86_kernel_2mm0_add_x_p1_of_2_o <= 61'b0;
        end
        else
        begin
            i_mptr_bitcast_index86_kernel_2mm0_add_x_p1_of_2_o <= $unsigned(i_mptr_bitcast_index86_kernel_2mm0_add_x_p1_of_2_a) + $unsigned(i_mptr_bitcast_index86_kernel_2mm0_add_x_p1_of_2_b);
        end
    end
    assign i_mptr_bitcast_index86_kernel_2mm0_add_x_p1_of_2_c[0] = i_mptr_bitcast_index86_kernel_2mm0_add_x_p1_of_2_o[60];
    assign i_mptr_bitcast_index86_kernel_2mm0_add_x_p1_of_2_q = i_mptr_bitcast_index86_kernel_2mm0_add_x_p1_of_2_o[59:0];

    // i_mptr_bitcast_index86_kernel_2mm0_add_x_BitSelect_for_b_tessel1_0(BITSELECT,246)
    assign i_mptr_bitcast_index86_kernel_2mm0_add_x_BitSelect_for_b_tessel1_0_b = c_i32_077_q[29:26];

    // i_mptr_bitcast_index86_kernel_2mm0_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,248)@6
    assign i_mptr_bitcast_index86_kernel_2mm0_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_mptr_bitcast_index86_kernel_2mm0_add_x_BitSelect_for_b_tessel1_0_b};

    // redist1_i_mptr_bitcast_index86_kernel_2mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1(DELAY,264)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_mptr_bitcast_index86_kernel_2mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist1_i_mptr_bitcast_index86_kernel_2mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q <= $unsigned(i_mptr_bitcast_index86_kernel_2mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c);
        end
    end

    // i_mptr_bitcast_index86_kernel_2mm0_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,241)@6
    assign i_mptr_bitcast_index86_kernel_2mm0_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist1_i_mptr_bitcast_index86_kernel_2mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q};

    // i_mptr_bitcast_index86_kernel_2mm0_add_x_p2_of_2(ADD,226)@6 + 1
    assign i_mptr_bitcast_index86_kernel_2mm0_add_x_p2_of_2_cin = i_mptr_bitcast_index86_kernel_2mm0_add_x_p1_of_2_c;
    assign i_mptr_bitcast_index86_kernel_2mm0_add_x_p2_of_2_a = { {1'b0, i_mptr_bitcast_index86_kernel_2mm0_add_x_BitSelect_for_a_BitJoin_for_c_q}, 1'b1 };
    assign i_mptr_bitcast_index86_kernel_2mm0_add_x_p2_of_2_b = { {1'b0, i_mptr_bitcast_index86_kernel_2mm0_add_x_BitSelect_for_b_BitJoin_for_c_q}, i_mptr_bitcast_index86_kernel_2mm0_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index86_kernel_2mm0_add_x_p2_of_2_o <= 7'b0;
        end
        else
        begin
            i_mptr_bitcast_index86_kernel_2mm0_add_x_p2_of_2_o <= $unsigned(i_mptr_bitcast_index86_kernel_2mm0_add_x_p2_of_2_a) + $unsigned(i_mptr_bitcast_index86_kernel_2mm0_add_x_p2_of_2_b);
        end
    end
    assign i_mptr_bitcast_index86_kernel_2mm0_add_x_p2_of_2_q = i_mptr_bitcast_index86_kernel_2mm0_add_x_p2_of_2_o[5:1];

    // redist5_i_mptr_bitcast_index86_kernel_2mm0_add_x_p1_of_2_q_1(DELAY,268)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_mptr_bitcast_index86_kernel_2mm0_add_x_p1_of_2_q_1_q <= '0;
        end
        else
        begin
            redist5_i_mptr_bitcast_index86_kernel_2mm0_add_x_p1_of_2_q_1_q <= $unsigned(i_mptr_bitcast_index86_kernel_2mm0_add_x_p1_of_2_q);
        end
    end

    // i_mptr_bitcast_index86_kernel_2mm0_add_x_BitJoin_for_q(BITJOIN,227)@7
    assign i_mptr_bitcast_index86_kernel_2mm0_add_x_BitJoin_for_q_q = {i_mptr_bitcast_index86_kernel_2mm0_add_x_p2_of_2_q, redist5_i_mptr_bitcast_index86_kernel_2mm0_add_x_p1_of_2_q_1_q};

    // i_mptr_bitcast_index86_kernel_2mm0_dupName_0_trunc_sel_x(BITSELECT,22)@7
    assign i_mptr_bitcast_index86_kernel_2mm0_dupName_0_trunc_sel_x_b = i_mptr_bitcast_index86_kernel_2mm0_add_x_BitJoin_for_q_q[63:0];

    // valid_fanout_reg5(REG,152)@1 + 1
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

    // valid_fanout_reg6(REG,153)@1 + 1
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

    // i_llvm_fpga_push_i32_mul_add26111_push52_kernel_2mm14(BLACKBOX,113)@2
    // out out_feedback_out_52@20000000
    // out out_feedback_valid_out_52@20000000
    kernel_2mm_i_llvm_fpga_push_i32_mul_add26111_push52_0 thei_llvm_fpga_push_i32_mul_add26111_push52_kernel_2mm14 (
        .in_data_in(i_llvm_fpga_pop_i32_mul_add26111_pop52_kernel_2mm13_out_data_out),
        .in_feedback_stall_in_52(i_llvm_fpga_pop_i32_mul_add26111_pop52_kernel_2mm13_out_feedback_stall_out_52),
        .in_keep_going55(redist17_i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_52(i_llvm_fpga_push_i32_mul_add26111_push52_kernel_2mm14_out_feedback_out_52),
        .out_feedback_valid_out_52(i_llvm_fpga_push_i32_mul_add26111_push52_kernel_2mm14_out_feedback_valid_out_52),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist23_sync_together110_aunroll_x_in_c0_eni11_2_tpl_1(DELAY,286)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_sync_together110_aunroll_x_in_c0_eni11_2_tpl_1_q <= '0;
        end
        else
        begin
            redist23_sync_together110_aunroll_x_in_c0_eni11_2_tpl_1_q <= $unsigned(in_c0_eni11_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_mul_add26111_pop52_kernel_2mm13(BLACKBOX,101)@2
    // out out_feedback_stall_out_52@20000000
    kernel_2mm_i_llvm_fpga_pop_i32_mul_add26111_pop52_0 thei_llvm_fpga_pop_i32_mul_add26111_pop52_kernel_2mm13 (
        .in_data_in(redist23_sync_together110_aunroll_x_in_c0_eni11_2_tpl_1_q),
        .in_dir(redist21_sync_together110_aunroll_x_in_c0_eni11_1_tpl_1_q),
        .in_feedback_in_52(i_llvm_fpga_push_i32_mul_add26111_push52_kernel_2mm14_out_feedback_out_52),
        .in_feedback_valid_in_52(i_llvm_fpga_push_i32_mul_add26111_push52_kernel_2mm14_out_feedback_valid_out_52),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i32_mul_add26111_pop52_kernel_2mm13_out_data_out),
        .out_feedback_stall_out_52(i_llvm_fpga_pop_i32_mul_add26111_pop52_kernel_2mm13_out_feedback_stall_out_52),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist10_i_llvm_fpga_pop_i32_mul_add26111_pop52_kernel_2mm13_out_data_out_1(DELAY,273)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_llvm_fpga_pop_i32_mul_add26111_pop52_kernel_2mm13_out_data_out_1_q <= '0;
        end
        else
        begin
            redist10_i_llvm_fpga_pop_i32_mul_add26111_pop52_kernel_2mm13_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_mul_add26111_pop52_kernel_2mm13_out_data_out);
        end
    end

    // i_add_kernel_2mm15(ADD,81)@3
    assign i_add_kernel_2mm15_a = {1'b0, redist11_i_llvm_fpga_pop_i32_k_080_pop47_kernel_2mm12_out_data_out_1_q};
    assign i_add_kernel_2mm15_b = {1'b0, redist10_i_llvm_fpga_pop_i32_mul_add26111_pop52_kernel_2mm13_out_data_out_1_q};
    assign i_add_kernel_2mm15_o = $unsigned(i_add_kernel_2mm15_a) + $unsigned(i_add_kernel_2mm15_b);
    assign i_add_kernel_2mm15_q = i_add_kernel_2mm15_o[32:0];

    // i_mptr_bitcast_index_kernel_2mm0_add_x_BitSelect_for_b_tessel0_1(BITSELECT,255)@3
    assign i_mptr_bitcast_index_kernel_2mm0_add_x_BitSelect_for_b_tessel0_1_b = $unsigned(i_add_kernel_2mm15_q[31:0]);

    // redist2_i_mptr_bitcast_index_kernel_2mm0_add_x_BitSelect_for_b_tessel0_1_b_2(DELAY,265)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_mptr_bitcast_index_kernel_2mm0_add_x_BitSelect_for_b_tessel0_1_b_2_delay_0 <= '0;
            redist2_i_mptr_bitcast_index_kernel_2mm0_add_x_BitSelect_for_b_tessel0_1_b_2_q <= '0;
        end
        else
        begin
            redist2_i_mptr_bitcast_index_kernel_2mm0_add_x_BitSelect_for_b_tessel0_1_b_2_delay_0 <= $unsigned(i_mptr_bitcast_index_kernel_2mm0_add_x_BitSelect_for_b_tessel0_1_b);
            redist2_i_mptr_bitcast_index_kernel_2mm0_add_x_BitSelect_for_b_tessel0_1_b_2_q <= redist2_i_mptr_bitcast_index_kernel_2mm0_add_x_BitSelect_for_b_tessel0_1_b_2_delay_0;
        end
    end

    // i_mptr_bitcast_index_kernel_2mm0_add_x_BitSelect_for_b_BitJoin_for_b(BITJOIN,257)@5
    assign i_mptr_bitcast_index_kernel_2mm0_add_x_BitSelect_for_b_BitJoin_for_b_q = {i_mptr_bitcast_index86_kernel_2mm0_add_x_BitSelect_for_b_tessel0_2_b, redist2_i_mptr_bitcast_index_kernel_2mm0_add_x_BitSelect_for_b_tessel0_1_b_2_q, i_mptr_bitcast_index86_kernel_2mm0_c_i2_01_x_q};

    // valid_fanout_reg7(REG,154)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist34_sync_together110_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast9337_kernel_2mm17(BLACKBOX,92)@5
    kernel_2mm_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast9337_0 thei_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast9337_kernel_2mm17 (
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_dest_data_out_4_0(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast9337_kernel_2mm17_out_dest_data_out_4_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mptr_bitcast_index_kernel_2mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,262)@5
    assign i_mptr_bitcast_index_kernel_2mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b = $unsigned(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast9337_kernel_2mm17_out_dest_data_out_4_0[59:0]);
    assign i_mptr_bitcast_index_kernel_2mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c = $unsigned(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast9337_kernel_2mm17_out_dest_data_out_4_0[63:60]);

    // i_mptr_bitcast_index_kernel_2mm0_add_x_p1_of_2(ADD,234)@5 + 1
    assign i_mptr_bitcast_index_kernel_2mm0_add_x_p1_of_2_a = {1'b0, i_mptr_bitcast_index_kernel_2mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b};
    assign i_mptr_bitcast_index_kernel_2mm0_add_x_p1_of_2_b = {1'b0, i_mptr_bitcast_index_kernel_2mm0_add_x_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index_kernel_2mm0_add_x_p1_of_2_o <= 61'b0;
        end
        else
        begin
            i_mptr_bitcast_index_kernel_2mm0_add_x_p1_of_2_o <= $unsigned(i_mptr_bitcast_index_kernel_2mm0_add_x_p1_of_2_a) + $unsigned(i_mptr_bitcast_index_kernel_2mm0_add_x_p1_of_2_b);
        end
    end
    assign i_mptr_bitcast_index_kernel_2mm0_add_x_p1_of_2_c[0] = i_mptr_bitcast_index_kernel_2mm0_add_x_p1_of_2_o[60];
    assign i_mptr_bitcast_index_kernel_2mm0_add_x_p1_of_2_q = i_mptr_bitcast_index_kernel_2mm0_add_x_p1_of_2_o[59:0];

    // redist0_i_mptr_bitcast_index_kernel_2mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1(DELAY,263)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_mptr_bitcast_index_kernel_2mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist0_i_mptr_bitcast_index_kernel_2mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q <= $unsigned(i_mptr_bitcast_index_kernel_2mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c);
        end
    end

    // i_mptr_bitcast_index_kernel_2mm0_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,253)@6
    assign i_mptr_bitcast_index_kernel_2mm0_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist0_i_mptr_bitcast_index_kernel_2mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q};

    // i_mptr_bitcast_index_kernel_2mm0_add_x_p2_of_2(ADD,235)@6 + 1
    assign i_mptr_bitcast_index_kernel_2mm0_add_x_p2_of_2_cin = i_mptr_bitcast_index_kernel_2mm0_add_x_p1_of_2_c;
    assign i_mptr_bitcast_index_kernel_2mm0_add_x_p2_of_2_a = { {1'b0, i_mptr_bitcast_index_kernel_2mm0_add_x_BitSelect_for_a_BitJoin_for_c_q}, 1'b1 };
    assign i_mptr_bitcast_index_kernel_2mm0_add_x_p2_of_2_b = { {1'b0, i_mptr_bitcast_index86_kernel_2mm0_add_x_BitSelect_for_b_BitJoin_for_c_q}, i_mptr_bitcast_index_kernel_2mm0_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index_kernel_2mm0_add_x_p2_of_2_o <= 7'b0;
        end
        else
        begin
            i_mptr_bitcast_index_kernel_2mm0_add_x_p2_of_2_o <= $unsigned(i_mptr_bitcast_index_kernel_2mm0_add_x_p2_of_2_a) + $unsigned(i_mptr_bitcast_index_kernel_2mm0_add_x_p2_of_2_b);
        end
    end
    assign i_mptr_bitcast_index_kernel_2mm0_add_x_p2_of_2_q = i_mptr_bitcast_index_kernel_2mm0_add_x_p2_of_2_o[5:1];

    // redist4_i_mptr_bitcast_index_kernel_2mm0_add_x_p1_of_2_q_1(DELAY,267)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_mptr_bitcast_index_kernel_2mm0_add_x_p1_of_2_q_1_q <= '0;
        end
        else
        begin
            redist4_i_mptr_bitcast_index_kernel_2mm0_add_x_p1_of_2_q_1_q <= $unsigned(i_mptr_bitcast_index_kernel_2mm0_add_x_p1_of_2_q);
        end
    end

    // i_mptr_bitcast_index_kernel_2mm0_add_x_BitJoin_for_q(BITJOIN,236)@7
    assign i_mptr_bitcast_index_kernel_2mm0_add_x_BitJoin_for_q_q = {i_mptr_bitcast_index_kernel_2mm0_add_x_p2_of_2_q, redist4_i_mptr_bitcast_index_kernel_2mm0_add_x_p1_of_2_q_1_q};

    // i_mptr_bitcast_index_kernel_2mm0_dupName_0_trunc_sel_x(BITSELECT,28)@7
    assign i_mptr_bitcast_index_kernel_2mm0_dupName_0_trunc_sel_x_b = i_mptr_bitcast_index_kernel_2mm0_add_x_BitJoin_for_q_q[63:0];

    // redist19_i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_out_data_out_6(DELAY,282)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_out_data_out_6_delay_0 <= '0;
            redist19_i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_out_data_out_6_delay_1 <= '0;
            redist19_i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_out_data_out_6_delay_2 <= '0;
            redist19_i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_out_data_out_6_q <= '0;
        end
        else
        begin
            redist19_i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_out_data_out_6_delay_0 <= $unsigned(redist18_i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_out_data_out_2_q);
            redist19_i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_out_data_out_6_delay_1 <= redist19_i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_out_data_out_6_delay_0;
            redist19_i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_out_data_out_6_delay_2 <= redist19_i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_out_data_out_6_delay_1;
            redist19_i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_out_data_out_6_q <= redist19_i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_out_data_out_6_delay_2;
        end
    end

    // redist20_i_first_cleanup_xor61_kernel_2mm4_q_5(DELAY,283)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_first_cleanup_xor61_kernel_2mm4_q_5_delay_0 <= '0;
            redist20_i_first_cleanup_xor61_kernel_2mm4_q_5_delay_1 <= '0;
            redist20_i_first_cleanup_xor61_kernel_2mm4_q_5_delay_2 <= '0;
            redist20_i_first_cleanup_xor61_kernel_2mm4_q_5_delay_3 <= '0;
            redist20_i_first_cleanup_xor61_kernel_2mm4_q_5_q <= '0;
        end
        else
        begin
            redist20_i_first_cleanup_xor61_kernel_2mm4_q_5_delay_0 <= $unsigned(i_first_cleanup_xor61_kernel_2mm4_q);
            redist20_i_first_cleanup_xor61_kernel_2mm4_q_5_delay_1 <= redist20_i_first_cleanup_xor61_kernel_2mm4_q_5_delay_0;
            redist20_i_first_cleanup_xor61_kernel_2mm4_q_5_delay_2 <= redist20_i_first_cleanup_xor61_kernel_2mm4_q_5_delay_1;
            redist20_i_first_cleanup_xor61_kernel_2mm4_q_5_delay_3 <= redist20_i_first_cleanup_xor61_kernel_2mm4_q_5_delay_2;
            redist20_i_first_cleanup_xor61_kernel_2mm4_q_5_q <= redist20_i_first_cleanup_xor61_kernel_2mm4_q_5_delay_3;
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,40)@7
    assign out_c0_exi13_0_tpl = GND_q;
    assign out_c0_exi13_1_tpl = redist20_i_first_cleanup_xor61_kernel_2mm4_q_5_q;
    assign out_c0_exi13_2_tpl = redist19_i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_out_data_out_6_q;
    assign out_c0_exi13_3_tpl = i_mptr_bitcast_index_kernel_2mm0_dupName_0_trunc_sel_x_b;
    assign out_c0_exi13_4_tpl = i_mptr_bitcast_index86_kernel_2mm0_dupName_0_trunc_sel_x_b;
    assign out_c0_exi13_5_tpl = redist7_i_masked64_kernel_2mm40_q_5_q;
    assign out_c0_exi13_6_tpl = redist14_i_llvm_fpga_pop_i1_notcmp72113_pop53_kernel_2mm43_out_data_out_5_q;
    assign out_c0_exi13_7_tpl = redist9_i_llvm_fpga_pop_p64i32_arrayidx243126_pop55_kernel_2mm45_out_data_out_5_mem_q;
    assign out_c0_exi13_8_tpl = redist16_i_llvm_fpga_pop_i1_notcmp67127_pop56_kernel_2mm47_out_data_out_5_q;
    assign out_c0_exi13_9_tpl = redist22_sync_together110_aunroll_x_in_c0_eni11_1_tpl_6_q;
    assign out_c0_exi13_10_tpl = redist29_sync_together110_aunroll_x_in_c0_eni11_8_tpl_6_mem_q;
    assign out_c0_exi13_11_tpl = redist30_sync_together110_aunroll_x_in_c0_eni11_9_tpl_6_mem_q;
    assign out_c0_exi13_12_tpl = redist31_sync_together110_aunroll_x_in_c0_eni11_10_tpl_6_q;
    assign out_c0_exi13_13_tpl = redist32_sync_together110_aunroll_x_in_c0_eni11_11_tpl_6_mem_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_kernel_2mm1 = GND_q;

    // ext_sig_sync_out(GPOUT,79)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,143)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_out_pipeline_valid_out;

    // i_llvm_fpga_pop_i32_i11_082_pop23109_pop51_kernel_2mm41(BLACKBOX,98)@2
    // out out_feedback_stall_out_51@20000000
    kernel_2mm_i_llvm_fpga_pop_i32_i11_082_pop23109_pop51_0 thei_llvm_fpga_pop_i32_i11_082_pop23109_pop51_kernel_2mm41 (
        .in_data_in(redist25_sync_together110_aunroll_x_in_c0_eni11_4_tpl_1_q),
        .in_dir(redist21_sync_together110_aunroll_x_in_c0_eni11_1_tpl_1_q),
        .in_feedback_in_51(i_llvm_fpga_push_i32_i11_082_pop23109_push51_kernel_2mm42_out_feedback_out_51),
        .in_feedback_valid_in_51(i_llvm_fpga_push_i32_i11_082_pop23109_push51_kernel_2mm42_out_feedback_valid_out_51),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(i_llvm_fpga_pop_i32_i11_082_pop23109_pop51_kernel_2mm41_out_data_out),
        .out_feedback_stall_out_51(i_llvm_fpga_pop_i32_i11_082_pop23109_pop51_kernel_2mm41_out_feedback_stall_out_51),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i32_i11_082_pop23109_push51_kernel_2mm42(BLACKBOX,110)@2
    // out out_feedback_out_51@20000000
    // out out_feedback_valid_out_51@20000000
    kernel_2mm_i_llvm_fpga_push_i32_i11_082_pop23109_push51_0 thei_llvm_fpga_push_i32_i11_082_pop23109_push51_kernel_2mm42 (
        .in_data_in(i_llvm_fpga_pop_i32_i11_082_pop23109_pop51_kernel_2mm41_out_data_out),
        .in_feedback_stall_in_51(i_llvm_fpga_pop_i32_i11_082_pop23109_pop51_kernel_2mm41_out_feedback_stall_out_51),
        .in_keep_going55(redist17_i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(),
        .out_feedback_out_51(i_llvm_fpga_push_i32_i11_082_pop23109_push51_kernel_2mm42_out_feedback_out_51),
        .out_feedback_valid_out_51(i_llvm_fpga_push_i32_i11_082_pop23109_push51_kernel_2mm42_out_feedback_valid_out_51),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg12(REG,159)@1 + 1
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

    // valid_fanout_reg13(REG,160)@1 + 1
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

    // redist25_sync_together110_aunroll_x_in_c0_eni11_4_tpl_1(DELAY,288)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_sync_together110_aunroll_x_in_c0_eni11_4_tpl_1_q <= '0;
        end
        else
        begin
            redist25_sync_together110_aunroll_x_in_c0_eni11_4_tpl_1_q <= $unsigned(in_c0_eni11_4_tpl);
        end
    end

endmodule
