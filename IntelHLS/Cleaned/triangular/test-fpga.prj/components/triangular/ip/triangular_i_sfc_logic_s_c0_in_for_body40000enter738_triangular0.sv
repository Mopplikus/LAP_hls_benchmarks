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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body4_triangulars_c0_enter738_triangular0
// Created for function/kernel triangular
// SystemVerilog created on Wed Jun 14 20:51:12 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module triangular_i_sfc_logic_s_c0_in_for_body40000enter738_triangular0 (
    output wire [0:0] out_c0_exi14_0_tpl,
    output wire [0:0] out_c0_exi14_1_tpl,
    output wire [0:0] out_c0_exi14_2_tpl,
    output wire [0:0] out_c0_exi14_3_tpl,
    output wire [0:0] out_c0_exi14_4_tpl,
    output wire [0:0] out_c0_exi14_5_tpl,
    output wire [0:0] out_c0_exi14_6_tpl,
    output wire [31:0] out_c0_exi14_7_tpl,
    output wire [0:0] out_c0_exi14_8_tpl,
    output wire [0:0] out_c0_exi14_9_tpl,
    output wire [31:0] out_c0_exi14_10_tpl,
    output wire [31:0] out_c0_exi14_11_tpl,
    output wire [31:0] out_c0_exi14_12_tpl,
    output wire [31:0] out_c0_exi14_13_tpl,
    output wire [63:0] out_c0_exi14_14_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_triangular0,
    input wire [0:0] in_c0_eni13_0_tpl,
    input wire [0:0] in_c0_eni13_1_tpl,
    input wire [0:0] in_c0_eni13_2_tpl,
    input wire [0:0] in_c0_eni13_3_tpl,
    input wire [32:0] in_c0_eni13_4_tpl,
    input wire [31:0] in_c0_eni13_5_tpl,
    input wire [0:0] in_c0_eni13_6_tpl,
    input wire [31:0] in_c0_eni13_7_tpl,
    input wire [0:0] in_c0_eni13_8_tpl,
    input wire [31:0] in_c0_eni13_9_tpl,
    input wire [31:0] in_c0_eni13_10_tpl,
    input wire [31:0] in_c0_eni13_11_tpl,
    input wire [31:0] in_c0_eni13_12_tpl,
    input wire [63:0] in_c0_eni13_13_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_triangular6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_triangular6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next8_triangular19_sel_x_b;
    wire [0:0] i_first_cleanup_triangular3_sel_x_b;
    wire [0:0] i_last_initeration_triangular10_sel_x_b;
    wire [1:0] c_i2_160_q;
    wire [32:0] c_i33_163_q;
    wire [1:0] i_cleanups_shl_triangular5_vt_join_q;
    wire [0:0] i_cleanups_shl_triangular5_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor_triangular4_q;
    wire [33:0] i_fpga_indvars_iv_next8_triangular19_a;
    wire [33:0] i_fpga_indvars_iv_next8_triangular19_b;
    logic [33:0] i_fpga_indvars_iv_next8_triangular19_o;
    wire [33:0] i_fpga_indvars_iv_next8_triangular19_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_triangular6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_triangular6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_triangular6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_triangular6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_triangular6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_triangular6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_triangular32_out_o_exit_outer_loop;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi4_pop1343_pop28_triangular14_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi4_pop1343_pop28_triangular14_out_feedback_stall_out_28;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_feedback_stall_out_27;
    wire [0:0] i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop24_triangular12_out_feedback_stall_out_24;
    wire [0:0] i_llvm_fpga_pop_i1_pop26_triangular35_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop26_triangular35_out_feedback_stall_out_26;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups_pop20_triangular2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop20_triangular2_out_feedback_stall_out_20;
    wire [1:0] i_llvm_fpga_pop_i2_initerations_pop19_triangular7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations_pop19_triangular7_out_feedback_stall_out_19;
    wire [31:0] i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_feedback_stall_out_21;
    wire [31:0] i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_feedback_stall_out_22;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv7_pop16_triangular16_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv7_pop16_triangular16_out_feedback_stall_out_16;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_triangular11_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_triangular11_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi4_pop1343_push28_triangular15_out_feedback_out_28;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi4_pop1343_push28_triangular15_out_feedback_valid_out_28;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2742_push27_triangular31_out_feedback_out_27;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2742_push27_triangular31_out_feedback_valid_out_27;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_triangular23_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_triangular23_out_feedback_valid_out_3;
    wire [0:0] i_llvm_fpga_push_i1_push24_triangular13_out_feedback_out_24;
    wire [0:0] i_llvm_fpga_push_i1_push24_triangular13_out_feedback_valid_out_24;
    wire [0:0] i_llvm_fpga_push_i1_push26_triangular36_out_feedback_out_26;
    wire [0:0] i_llvm_fpga_push_i1_push26_triangular36_out_feedback_valid_out_26;
    wire [7:0] i_llvm_fpga_push_i2_cleanups_push20_triangular26_out_feedback_out_20;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push20_triangular26_out_feedback_valid_out_20;
    wire [7:0] i_llvm_fpga_push_i2_initerations_push19_triangular9_out_feedback_out_19;
    wire [0:0] i_llvm_fpga_push_i2_initerations_push19_triangular9_out_feedback_valid_out_19;
    wire [31:0] i_llvm_fpga_push_i32_lim_ext36_push21_triangular34_out_feedback_out_21;
    wire [0:0] i_llvm_fpga_push_i32_lim_ext36_push21_triangular34_out_feedback_valid_out_21;
    wire [31:0] i_llvm_fpga_push_i32_reorder_limiter_enter38_push22_triangular29_out_feedback_out_22;
    wire [0:0] i_llvm_fpga_push_i32_reorder_limiter_enter38_push22_triangular29_out_feedback_valid_out_22;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv7_push16_triangular20_out_feedback_out_16;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv7_push16_triangular20_out_feedback_valid_out_16;
    wire [0:0] i_masked_triangular27_q;
    wire [0:0] i_next_cleanups_triangular25_s;
    reg [1:0] i_next_cleanups_triangular25_q;
    wire [1:0] i_next_initerations_triangular8_vt_join_q;
    wire [0:0] i_next_initerations_triangular8_vt_select_0_b;
    wire [0:0] i_notcmp_triangular22_q;
    wire [0:0] i_or_triangular24_q;
    wire [0:0] i_unnamed_triangular21_q;
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
    wire [0:0] leftShiftStage0Idx1Rng1_uid109_i_cleanups_shl_triangular0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid109_i_cleanups_shl_triangular0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid110_i_cleanups_shl_triangular0_shift_x_q;
    wire [0:0] leftShiftStage0_uid112_i_cleanups_shl_triangular0_shift_x_s;
    reg [1:0] leftShiftStage0_uid112_i_cleanups_shl_triangular0_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid116_i_next_initerations_triangular0_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid118_i_next_initerations_triangular0_shift_x_q;
    wire [0:0] rightShiftStage0_uid120_i_next_initerations_triangular0_shift_x_s;
    reg [1:0] rightShiftStage0_uid120_i_next_initerations_triangular0_shift_x_q;
    wire [0:0] i_exitcond_triangular17_cmp_nsign_q;
    reg [0:0] redist0_i_unnamed_triangular21_q_3_q;
    reg [0:0] redist0_i_unnamed_triangular21_q_3_delay_0;
    reg [0:0] redist0_i_unnamed_triangular21_q_3_delay_1;
    reg [1:0] redist1_i_next_cleanups_triangular25_q_3_q;
    reg [1:0] redist1_i_next_cleanups_triangular25_q_3_delay_0;
    reg [0:0] redist2_i_masked_triangular27_q_3_q;
    reg [0:0] redist2_i_masked_triangular27_q_3_delay_0;
    reg [0:0] redist2_i_masked_triangular27_q_3_delay_1;
    reg [32:0] redist3_i_llvm_fpga_pop_i33_fpga_indvars_iv7_pop16_triangular16_out_data_out_1_q;
    reg [32:0] redist4_i_llvm_fpga_pop_i33_fpga_indvars_iv7_pop16_triangular16_out_data_out_4_q;
    reg [32:0] redist4_i_llvm_fpga_pop_i33_fpga_indvars_iv7_pop16_triangular16_out_data_out_4_delay_0;
    reg [31:0] redist6_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_67_q;
    reg [31:0] redist6_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_67_delay_0;
    reg [0:0] redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_q;
    reg [0:0] redist9_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_68_q;
    reg [0:0] redist9_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_68_delay_0;
    reg [0:0] redist9_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_68_delay_1;
    reg [0:0] redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_q;
    reg [0:0] redist11_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_67_q;
    reg [0:0] redist11_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_67_delay_0;
    reg [0:0] redist11_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_67_delay_1;
    reg [0:0] redist12_i_first_cleanup_xor_triangular4_q_3_q;
    reg [0:0] redist12_i_first_cleanup_xor_triangular4_q_3_delay_0;
    reg [0:0] redist12_i_first_cleanup_xor_triangular4_q_3_delay_1;
    reg [0:0] redist13_sync_together88_aunroll_x_in_c0_eni13_1_tpl_1_q;
    reg [0:0] redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_q;
    reg [0:0] redist15_sync_together88_aunroll_x_in_c0_eni13_1_tpl_65_q;
    reg [0:0] redist16_sync_together88_aunroll_x_in_c0_eni13_1_tpl_68_q;
    reg [0:0] redist16_sync_together88_aunroll_x_in_c0_eni13_1_tpl_68_delay_0;
    reg [0:0] redist16_sync_together88_aunroll_x_in_c0_eni13_1_tpl_68_delay_1;
    reg [0:0] redist17_sync_together88_aunroll_x_in_c0_eni13_3_tpl_68_q;
    reg [31:0] redist19_sync_together88_aunroll_x_in_c0_eni13_5_tpl_1_q;
    reg [0:0] redist20_sync_together88_aunroll_x_in_c0_eni13_6_tpl_1_q;
    reg [31:0] redist21_sync_together88_aunroll_x_in_c0_eni13_7_tpl_1_q;
    reg [0:0] redist22_sync_together88_aunroll_x_in_c0_eni13_8_tpl_68_q;
    reg [0:0] redist28_sync_together88_aunroll_x_in_i_valid_64_q;
    reg [0:0] redist29_sync_together88_aunroll_x_in_i_valid_65_q;
    reg [0:0] redist30_sync_together88_aunroll_x_in_i_valid_67_q;
    reg [0:0] redist30_sync_together88_aunroll_x_in_i_valid_67_delay_0;
    reg [0:0] redist31_sync_together88_aunroll_x_in_i_valid_68_q;
    reg [0:0] redist32_i_first_cleanup_triangular3_sel_x_b_3_q;
    reg [0:0] redist32_i_first_cleanup_triangular3_sel_x_b_3_delay_0;
    reg [0:0] redist32_i_first_cleanup_triangular3_sel_x_b_3_delay_1;
    reg [32:0] redist4_i_llvm_fpga_pop_i33_fpga_indvars_iv7_pop16_triangular16_out_data_out_4_inputreg0_q;
    reg [31:0] redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_outputreg0_q;
    wire redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_mem_reset0;
    wire [31:0] redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_mem_ia;
    wire [5:0] redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_mem_aa;
    wire [5:0] redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_mem_ab;
    wire [31:0] redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_mem_iq;
    wire [31:0] redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_mem_q;
    wire [5:0] redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_rdcnt_q;
    (* preserve *) reg [5:0] redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_rdcnt_i;
    (* preserve *) reg redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_rdcnt_eq;
    reg [5:0] redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_wraddr_q;
    wire [6:0] redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_mem_last_q;
    wire [6:0] redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_cmp_b;
    wire [0:0] redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_cmp_q;
    reg [0:0] redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_cmpReg_q;
    wire [0:0] redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_notEnable_q;
    wire [0:0] redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_nor_q;
    reg [0:0] redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_sticky_ena_q;
    wire [0:0] redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_enaAnd_q;
    reg [31:0] redist6_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_67_inputreg0_q;
    reg [31:0] redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_outputreg0_q;
    wire redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_mem_reset0;
    wire [31:0] redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_mem_ia;
    wire [6:0] redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_mem_aa;
    wire [6:0] redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_mem_ab;
    wire [31:0] redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_mem_iq;
    wire [31:0] redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_mem_q;
    wire [6:0] redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_rdcnt_q;
    (* preserve *) reg [6:0] redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_rdcnt_i;
    (* preserve *) reg redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_rdcnt_eq;
    reg [6:0] redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_wraddr_q;
    wire [6:0] redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_mem_last_q;
    wire [0:0] redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_cmp_q;
    reg [0:0] redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_cmpReg_q;
    wire [0:0] redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_notEnable_q;
    wire [0:0] redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_nor_q;
    reg [0:0] redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_sticky_ena_q;
    wire [0:0] redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_enaAnd_q;
    reg [0:0] redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_inputreg0_q;
    reg [0:0] redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_outputreg0_q;
    reg [0:0] redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_inputreg0_q;
    wire redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_mem_reset0;
    wire [32:0] redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_mem_ia;
    wire [5:0] redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_mem_aa;
    wire [5:0] redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_mem_ab;
    wire [32:0] redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_mem_iq;
    wire [32:0] redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_mem_q;
    wire [5:0] redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_rdcnt_q;
    (* preserve *) reg [5:0] redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_rdcnt_i;
    (* preserve *) reg redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_rdcnt_eq;
    reg [5:0] redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_wraddr_q;
    wire [6:0] redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_mem_last_q;
    wire [6:0] redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_cmp_b;
    wire [0:0] redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_cmp_q;
    reg [0:0] redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_cmpReg_q;
    wire [0:0] redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_notEnable_q;
    wire [0:0] redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_nor_q;
    reg [0:0] redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_sticky_ena_q;
    wire [0:0] redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_enaAnd_q;
    reg [31:0] redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_outputreg0_q;
    wire redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_mem_reset0;
    wire [31:0] redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_mem_ia;
    wire [6:0] redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_mem_aa;
    wire [6:0] redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_mem_ab;
    wire [31:0] redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_mem_iq;
    wire [31:0] redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_mem_q;
    wire [6:0] redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_rdcnt_q;
    (* preserve *) reg [6:0] redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_rdcnt_i;
    (* preserve *) reg redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_rdcnt_eq;
    reg [6:0] redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_wraddr_q;
    wire [7:0] redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_mem_last_q;
    wire [7:0] redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_cmp_b;
    wire [0:0] redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_cmp_q;
    reg [0:0] redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_cmpReg_q;
    wire [0:0] redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_notEnable_q;
    wire [0:0] redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_nor_q;
    reg [0:0] redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_sticky_ena_q;
    wire [0:0] redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_enaAnd_q;
    reg [31:0] redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_outputreg0_q;
    wire redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_mem_reset0;
    wire [31:0] redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_mem_ia;
    wire [6:0] redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_mem_aa;
    wire [6:0] redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_mem_ab;
    wire [31:0] redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_mem_iq;
    wire [31:0] redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_mem_q;
    wire [6:0] redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_rdcnt_q;
    (* preserve *) reg [6:0] redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_rdcnt_i;
    (* preserve *) reg redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_rdcnt_eq;
    reg [6:0] redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_wraddr_q;
    wire [7:0] redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_mem_last_q;
    wire [7:0] redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_cmp_b;
    wire [0:0] redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_cmp_q;
    reg [0:0] redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_cmpReg_q;
    wire [0:0] redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_notEnable_q;
    wire [0:0] redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_nor_q;
    reg [0:0] redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_sticky_ena_q;
    wire [0:0] redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_enaAnd_q;
    reg [31:0] redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_outputreg0_q;
    wire redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_mem_reset0;
    wire [31:0] redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_mem_ia;
    wire [6:0] redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_mem_aa;
    wire [6:0] redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_mem_ab;
    wire [31:0] redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_mem_iq;
    wire [31:0] redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_mem_q;
    wire [6:0] redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_rdcnt_q;
    (* preserve *) reg [6:0] redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_rdcnt_i;
    (* preserve *) reg redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_rdcnt_eq;
    reg [6:0] redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_wraddr_q;
    wire [7:0] redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_mem_last_q;
    wire [7:0] redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_cmp_b;
    wire [0:0] redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_cmp_q;
    reg [0:0] redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_cmpReg_q;
    wire [0:0] redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_notEnable_q;
    wire [0:0] redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_nor_q;
    reg [0:0] redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_sticky_ena_q;
    wire [0:0] redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_enaAnd_q;
    reg [31:0] redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_outputreg0_q;
    wire redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_mem_reset0;
    wire [31:0] redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_mem_ia;
    wire [6:0] redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_mem_aa;
    wire [6:0] redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_mem_ab;
    wire [31:0] redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_mem_iq;
    wire [31:0] redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_mem_q;
    wire [6:0] redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_rdcnt_q;
    (* preserve *) reg [6:0] redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_rdcnt_i;
    (* preserve *) reg redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_rdcnt_eq;
    reg [6:0] redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_wraddr_q;
    wire [7:0] redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_mem_last_q;
    wire [7:0] redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_cmp_b;
    wire [0:0] redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_cmp_q;
    reg [0:0] redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_cmpReg_q;
    wire [0:0] redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_notEnable_q;
    wire [0:0] redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_nor_q;
    reg [0:0] redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_sticky_ena_q;
    wire [0:0] redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_enaAnd_q;
    reg [63:0] redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_outputreg0_q;
    wire redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_mem_reset0;
    wire [63:0] redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_mem_ia;
    wire [6:0] redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_mem_aa;
    wire [6:0] redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_mem_ab;
    wire [63:0] redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_mem_iq;
    wire [63:0] redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_mem_q;
    wire [6:0] redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_rdcnt_q;
    (* preserve *) reg [6:0] redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_rdcnt_i;
    (* preserve *) reg redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_rdcnt_eq;
    reg [6:0] redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_wraddr_q;
    wire [7:0] redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_mem_last_q;
    wire [7:0] redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_cmp_b;
    wire [0:0] redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_cmp_q;
    reg [0:0] redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_cmpReg_q;
    wire [0:0] redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_notEnable_q;
    wire [0:0] redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_nor_q;
    reg [0:0] redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_sticky_ena_q;
    wire [0:0] redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_enaAnd_q;
    reg [0:0] redist28_sync_together88_aunroll_x_in_i_valid_64_inputreg0_q;
    reg [0:0] redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_outputreg0_q;
    wire redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_mem_reset0;
    wire [0:0] redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_mem_ia;
    wire [4:0] redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_mem_aa;
    wire [4:0] redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_mem_ab;
    wire [0:0] redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_mem_iq;
    wire [0:0] redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_mem_q;
    wire [4:0] redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_rdcnt_q;
    (* preserve *) reg [4:0] redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_rdcnt_i;
    (* preserve *) reg redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_rdcnt_eq;
    reg [4:0] redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_wraddr_q;
    wire [5:0] redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_mem_last_q;
    wire [5:0] redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_cmp_b;
    wire [0:0] redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_cmp_q;
    (* dont_merge *) reg [0:0] redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_cmpReg_q;
    wire [0:0] redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_notEnable_q;
    wire [0:0] redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_nor_q;
    (* dont_merge *) reg [0:0] redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_sticky_ena_q;
    wire [0:0] redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_enaAnd_q;
    reg [0:0] redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_outputreg0_q;
    wire redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_mem_reset0;
    wire [0:0] redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_mem_ia;
    wire [4:0] redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_mem_aa;
    wire [4:0] redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_mem_ab;
    wire [0:0] redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_mem_iq;
    wire [0:0] redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_mem_q;
    wire [4:0] redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_rdcnt_q;
    (* preserve *) reg [4:0] redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_rdcnt_i;
    (* preserve *) reg redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_rdcnt_eq;
    reg [4:0] redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_wraddr_q;
    wire [5:0] redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_mem_last_q;
    wire [5:0] redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_cmp_b;
    wire [0:0] redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_cmp_q;
    (* dont_merge *) reg [0:0] redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_cmpReg_q;
    wire [0:0] redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_notEnable_q;
    wire [0:0] redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_nor_q;
    (* dont_merge *) reg [0:0] redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_sticky_ena_q;
    wire [0:0] redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_enaAnd_q;
    reg [0:0] redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_outputreg0_q;
    wire redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_mem_reset0;
    wire [0:0] redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_mem_ia;
    wire [4:0] redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_mem_aa;
    wire [4:0] redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_mem_ab;
    wire [0:0] redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_mem_iq;
    wire [0:0] redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_mem_q;
    wire [4:0] redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_rdcnt_q;
    (* preserve *) reg [4:0] redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_rdcnt_i;
    (* preserve *) reg redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_rdcnt_eq;
    reg [4:0] redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_wraddr_q;
    wire [5:0] redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_mem_last_q;
    wire [5:0] redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_cmp_b;
    wire [0:0] redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_cmp_q;
    (* dont_merge *) reg [0:0] redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_cmpReg_q;
    wire [0:0] redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_notEnable_q;
    wire [0:0] redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_nor_q;
    (* dont_merge *) reg [0:0] redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_sticky_ena_q;
    wire [0:0] redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_enaAnd_q;
    reg [0:0] redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_outputreg0_q;
    wire redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_mem_reset0;
    wire [0:0] redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_mem_ia;
    wire [4:0] redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_mem_aa;
    wire [4:0] redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_mem_ab;
    wire [0:0] redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_mem_iq;
    wire [0:0] redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_mem_q;
    wire [4:0] redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_rdcnt_q;
    (* preserve *) reg [4:0] redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_rdcnt_i;
    (* preserve *) reg redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_rdcnt_eq;
    reg [4:0] redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_wraddr_q;
    wire [5:0] redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_mem_last_q;
    wire [5:0] redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_cmp_b;
    wire [0:0] redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_cmp_q;
    (* dont_merge *) reg [0:0] redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_cmpReg_q;
    wire [0:0] redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_notEnable_q;
    wire [0:0] redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_nor_q;
    (* dont_merge *) reg [0:0] redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_sticky_ena_q;
    wire [0:0] redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_notEnable(LOGICAL,293)
    assign redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_notEnable_q = $unsigned(~ (VCC_q));

    // redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_nor(LOGICAL,294)
    assign redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_nor_q = ~ (redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_notEnable_q | redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_sticky_ena_q);

    // redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_mem_last(CONSTANT,290)
    assign redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_mem_last_q = $unsigned(6'b011101);

    // redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_cmp(LOGICAL,291)
    assign redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_cmp_b = {1'b0, redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_rdcnt_q};
    assign redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_cmp_q = $unsigned(redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_mem_last_q == redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_cmp_b ? 1'b1 : 1'b0);

    // redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_cmpReg(REG,292)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_cmpReg_q <= $unsigned(redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_cmp_q);
        end
    end

    // redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_sticky_ena(REG,295)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_nor_q == 1'b1)
        begin
            redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_sticky_ena_q <= $unsigned(redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_cmpReg_q);
        end
    end

    // redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_enaAnd(LOGICAL,296)
    assign redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_enaAnd_q = redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_sticky_ena_q & VCC_q;

    // redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_rdcnt(COUNTER,288)
    // low=0, high=30, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_rdcnt_i <= 5'd0;
            redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_rdcnt_i == 5'd29)
            begin
                redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_rdcnt_eq <= 1'b0;
            end
            if (redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_rdcnt_eq == 1'b1)
            begin
                redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_rdcnt_i <= $unsigned(redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_rdcnt_i) + $unsigned(5'd2);
            end
            else
            begin
                redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_rdcnt_i <= $unsigned(redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_rdcnt_q = redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_rdcnt_i[4:0];

    // redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_wraddr(REG,289)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_wraddr_q <= $unsigned(5'b11110);
        end
        else
        begin
            redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_wraddr_q <= $unsigned(redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_rdcnt_q);
        end
    end

    // redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_mem(DUALMEM,287)
    assign redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_mem_ia = $unsigned(in_i_valid);
    assign redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_mem_aa = redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_wraddr_q;
    assign redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_mem_ab = redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_rdcnt_q;
    assign redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(1),
        .widthad_a(5),
        .numwords_a(31),
        .width_b(1),
        .widthad_b(5),
        .numwords_b(31),
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
    ) redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_mem_dmem (
        .clocken1(redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_mem_reset0),
        .clock1(clock),
        .address_a(redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_mem_aa),
        .data_a(redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_mem_ab),
        .q_b(redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_mem_iq),
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
    assign redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_mem_q = redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_mem_iq[0:0];

    // redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_outputreg0(DELAY,286)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_outputreg0_q <= '0;
        end
        else
        begin
            redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_outputreg0_q <= $unsigned(redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_mem_q);
        end
    end

    // redist28_sync_together88_aunroll_x_in_i_valid_64_inputreg0(DELAY,252)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_sync_together88_aunroll_x_in_i_valid_64_inputreg0_q <= '0;
        end
        else
        begin
            redist28_sync_together88_aunroll_x_in_i_valid_64_inputreg0_q <= $unsigned(redist28_sync_together88_aunroll_x_in_i_valid_64_split_0_outputreg0_q);
        end
    end

    // redist28_sync_together88_aunroll_x_in_i_valid_64(DELAY,151)
    dspba_delay_ver #( .width(1), .depth(30), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist28_sync_together88_aunroll_x_in_i_valid_64 ( .xin(redist28_sync_together88_aunroll_x_in_i_valid_64_inputreg0_q), .xout(redist28_sync_together88_aunroll_x_in_i_valid_64_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist29_sync_together88_aunroll_x_in_i_valid_65(DELAY,152)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_sync_together88_aunroll_x_in_i_valid_65_q <= '0;
        end
        else
        begin
            redist29_sync_together88_aunroll_x_in_i_valid_65_q <= $unsigned(redist28_sync_together88_aunroll_x_in_i_valid_64_q);
        end
    end

    // redist30_sync_together88_aunroll_x_in_i_valid_67(DELAY,153)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_sync_together88_aunroll_x_in_i_valid_67_delay_0 <= '0;
            redist30_sync_together88_aunroll_x_in_i_valid_67_q <= '0;
        end
        else
        begin
            redist30_sync_together88_aunroll_x_in_i_valid_67_delay_0 <= $unsigned(redist29_sync_together88_aunroll_x_in_i_valid_65_q);
            redist30_sync_together88_aunroll_x_in_i_valid_67_q <= redist30_sync_together88_aunroll_x_in_i_valid_67_delay_0;
        end
    end

    // valid_fanout_reg0(REG,85)@68 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist30_sync_together88_aunroll_x_in_i_valid_67_q);
        end
    end

    // redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_notEnable(LOGICAL,248)
    assign redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_notEnable_q = $unsigned(~ (VCC_q));

    // redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_nor(LOGICAL,249)
    assign redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_nor_q = ~ (redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_notEnable_q | redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_sticky_ena_q);

    // redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_mem_last(CONSTANT,245)
    assign redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_mem_last_q = $unsigned(8'b01000000);

    // redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_cmp(LOGICAL,246)
    assign redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_cmp_b = {1'b0, redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_rdcnt_q};
    assign redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_cmp_q = $unsigned(redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_mem_last_q == redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_cmp_b ? 1'b1 : 1'b0);

    // redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_cmpReg(REG,247)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_cmpReg_q <= $unsigned(redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_cmp_q);
        end
    end

    // redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_sticky_ena(REG,250)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_nor_q == 1'b1)
        begin
            redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_sticky_ena_q <= $unsigned(redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_cmpReg_q);
        end
    end

    // redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_enaAnd(LOGICAL,251)
    assign redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_enaAnd_q = redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_sticky_ena_q & VCC_q;

    // redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_rdcnt(COUNTER,243)
    // low=0, high=65, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_rdcnt_i <= 7'd0;
            redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_rdcnt_i == 7'd64)
            begin
                redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_rdcnt_eq <= 1'b0;
            end
            if (redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_rdcnt_eq == 1'b1)
            begin
                redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_rdcnt_i <= $unsigned(redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_rdcnt_i) + $unsigned(7'd63);
            end
            else
            begin
                redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_rdcnt_i <= $unsigned(redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_rdcnt_i) + $unsigned(7'd1);
            end
        end
    end
    assign redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_rdcnt_q = redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_rdcnt_i[6:0];

    // redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_wraddr(REG,244)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_wraddr_q <= $unsigned(7'b1000001);
        end
        else
        begin
            redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_wraddr_q <= $unsigned(redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_rdcnt_q);
        end
    end

    // redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_mem(DUALMEM,242)
    assign redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_mem_ia = $unsigned(in_c0_eni13_13_tpl);
    assign redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_mem_aa = redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_wraddr_q;
    assign redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_mem_ab = redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_rdcnt_q;
    assign redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M10K"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(7),
        .numwords_a(66),
        .width_b(64),
        .widthad_b(7),
        .numwords_b(66),
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
    ) redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_mem_dmem (
        .clocken1(redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_mem_reset0),
        .clock1(clock),
        .address_a(redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_mem_aa),
        .data_a(redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_mem_ab),
        .q_b(redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_mem_iq),
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
    assign redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_mem_q = redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_mem_iq[63:0];

    // redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_outputreg0(DELAY,241)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_outputreg0_q <= '0;
        end
        else
        begin
            redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_outputreg0_q <= $unsigned(redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_mem_q);
        end
    end

    // redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_notEnable(LOGICAL,237)
    assign redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_notEnable_q = $unsigned(~ (VCC_q));

    // redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_nor(LOGICAL,238)
    assign redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_nor_q = ~ (redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_notEnable_q | redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_sticky_ena_q);

    // redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_mem_last(CONSTANT,234)
    assign redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_mem_last_q = $unsigned(8'b01000000);

    // redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_cmp(LOGICAL,235)
    assign redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_cmp_b = {1'b0, redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_rdcnt_q};
    assign redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_cmp_q = $unsigned(redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_mem_last_q == redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_cmp_b ? 1'b1 : 1'b0);

    // redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_cmpReg(REG,236)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_cmpReg_q <= $unsigned(redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_cmp_q);
        end
    end

    // redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_sticky_ena(REG,239)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_nor_q == 1'b1)
        begin
            redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_sticky_ena_q <= $unsigned(redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_cmpReg_q);
        end
    end

    // redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_enaAnd(LOGICAL,240)
    assign redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_enaAnd_q = redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_sticky_ena_q & VCC_q;

    // redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_rdcnt(COUNTER,232)
    // low=0, high=65, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_rdcnt_i <= 7'd0;
            redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_rdcnt_i == 7'd64)
            begin
                redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_rdcnt_eq <= 1'b0;
            end
            if (redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_rdcnt_eq == 1'b1)
            begin
                redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_rdcnt_i <= $unsigned(redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_rdcnt_i) + $unsigned(7'd63);
            end
            else
            begin
                redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_rdcnt_i <= $unsigned(redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_rdcnt_i) + $unsigned(7'd1);
            end
        end
    end
    assign redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_rdcnt_q = redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_rdcnt_i[6:0];

    // redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_wraddr(REG,233)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_wraddr_q <= $unsigned(7'b1000001);
        end
        else
        begin
            redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_wraddr_q <= $unsigned(redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_rdcnt_q);
        end
    end

    // redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_mem(DUALMEM,231)
    assign redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_mem_ia = $unsigned(in_c0_eni13_12_tpl);
    assign redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_mem_aa = redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_wraddr_q;
    assign redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_mem_ab = redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_rdcnt_q;
    assign redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M10K"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(7),
        .numwords_a(66),
        .width_b(32),
        .widthad_b(7),
        .numwords_b(66),
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
    ) redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_mem_dmem (
        .clocken1(redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_mem_reset0),
        .clock1(clock),
        .address_a(redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_mem_aa),
        .data_a(redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_mem_ab),
        .q_b(redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_mem_iq),
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
    assign redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_mem_q = redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_mem_iq[31:0];

    // redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_outputreg0(DELAY,230)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_outputreg0_q <= '0;
        end
        else
        begin
            redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_outputreg0_q <= $unsigned(redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_mem_q);
        end
    end

    // redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_notEnable(LOGICAL,226)
    assign redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_notEnable_q = $unsigned(~ (VCC_q));

    // redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_nor(LOGICAL,227)
    assign redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_nor_q = ~ (redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_notEnable_q | redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_sticky_ena_q);

    // redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_mem_last(CONSTANT,223)
    assign redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_mem_last_q = $unsigned(8'b01000000);

    // redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_cmp(LOGICAL,224)
    assign redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_cmp_b = {1'b0, redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_rdcnt_q};
    assign redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_cmp_q = $unsigned(redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_mem_last_q == redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_cmp_b ? 1'b1 : 1'b0);

    // redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_cmpReg(REG,225)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_cmpReg_q <= $unsigned(redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_cmp_q);
        end
    end

    // redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_sticky_ena(REG,228)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_nor_q == 1'b1)
        begin
            redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_sticky_ena_q <= $unsigned(redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_cmpReg_q);
        end
    end

    // redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_enaAnd(LOGICAL,229)
    assign redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_enaAnd_q = redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_sticky_ena_q & VCC_q;

    // redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_rdcnt(COUNTER,221)
    // low=0, high=65, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_rdcnt_i <= 7'd0;
            redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_rdcnt_i == 7'd64)
            begin
                redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_rdcnt_eq <= 1'b0;
            end
            if (redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_rdcnt_eq == 1'b1)
            begin
                redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_rdcnt_i <= $unsigned(redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_rdcnt_i) + $unsigned(7'd63);
            end
            else
            begin
                redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_rdcnt_i <= $unsigned(redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_rdcnt_i) + $unsigned(7'd1);
            end
        end
    end
    assign redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_rdcnt_q = redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_rdcnt_i[6:0];

    // redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_wraddr(REG,222)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_wraddr_q <= $unsigned(7'b1000001);
        end
        else
        begin
            redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_wraddr_q <= $unsigned(redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_rdcnt_q);
        end
    end

    // redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_mem(DUALMEM,220)
    assign redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_mem_ia = $unsigned(in_c0_eni13_11_tpl);
    assign redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_mem_aa = redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_wraddr_q;
    assign redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_mem_ab = redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_rdcnt_q;
    assign redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M10K"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(7),
        .numwords_a(66),
        .width_b(32),
        .widthad_b(7),
        .numwords_b(66),
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
    ) redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_mem_dmem (
        .clocken1(redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_mem_reset0),
        .clock1(clock),
        .address_a(redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_mem_aa),
        .data_a(redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_mem_ab),
        .q_b(redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_mem_iq),
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
    assign redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_mem_q = redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_mem_iq[31:0];

    // redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_outputreg0(DELAY,219)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_outputreg0_q <= '0;
        end
        else
        begin
            redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_outputreg0_q <= $unsigned(redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_mem_q);
        end
    end

    // redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_notEnable(LOGICAL,215)
    assign redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_notEnable_q = $unsigned(~ (VCC_q));

    // redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_nor(LOGICAL,216)
    assign redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_nor_q = ~ (redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_notEnable_q | redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_sticky_ena_q);

    // redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_mem_last(CONSTANT,212)
    assign redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_mem_last_q = $unsigned(8'b01000000);

    // redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_cmp(LOGICAL,213)
    assign redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_cmp_b = {1'b0, redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_rdcnt_q};
    assign redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_cmp_q = $unsigned(redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_mem_last_q == redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_cmp_b ? 1'b1 : 1'b0);

    // redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_cmpReg(REG,214)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_cmpReg_q <= $unsigned(redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_cmp_q);
        end
    end

    // redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_sticky_ena(REG,217)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_nor_q == 1'b1)
        begin
            redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_sticky_ena_q <= $unsigned(redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_cmpReg_q);
        end
    end

    // redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_enaAnd(LOGICAL,218)
    assign redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_enaAnd_q = redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_sticky_ena_q & VCC_q;

    // redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_rdcnt(COUNTER,210)
    // low=0, high=65, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_rdcnt_i <= 7'd0;
            redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_rdcnt_i == 7'd64)
            begin
                redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_rdcnt_eq <= 1'b0;
            end
            if (redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_rdcnt_eq == 1'b1)
            begin
                redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_rdcnt_i <= $unsigned(redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_rdcnt_i) + $unsigned(7'd63);
            end
            else
            begin
                redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_rdcnt_i <= $unsigned(redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_rdcnt_i) + $unsigned(7'd1);
            end
        end
    end
    assign redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_rdcnt_q = redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_rdcnt_i[6:0];

    // redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_wraddr(REG,211)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_wraddr_q <= $unsigned(7'b1000001);
        end
        else
        begin
            redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_wraddr_q <= $unsigned(redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_rdcnt_q);
        end
    end

    // redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_mem(DUALMEM,209)
    assign redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_mem_ia = $unsigned(in_c0_eni13_10_tpl);
    assign redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_mem_aa = redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_wraddr_q;
    assign redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_mem_ab = redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_rdcnt_q;
    assign redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M10K"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(7),
        .numwords_a(66),
        .width_b(32),
        .widthad_b(7),
        .numwords_b(66),
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
    ) redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_mem_dmem (
        .clocken1(redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_mem_reset0),
        .clock1(clock),
        .address_a(redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_mem_aa),
        .data_a(redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_mem_ab),
        .q_b(redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_mem_iq),
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
    assign redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_mem_q = redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_mem_iq[31:0];

    // redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_outputreg0(DELAY,208)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_outputreg0_q <= '0;
        end
        else
        begin
            redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_outputreg0_q <= $unsigned(redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_mem_q);
        end
    end

    // redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_notEnable(LOGICAL,204)
    assign redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_notEnable_q = $unsigned(~ (VCC_q));

    // redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_nor(LOGICAL,205)
    assign redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_nor_q = ~ (redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_notEnable_q | redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_sticky_ena_q);

    // redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_mem_last(CONSTANT,201)
    assign redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_mem_last_q = $unsigned(8'b01000000);

    // redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_cmp(LOGICAL,202)
    assign redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_cmp_b = {1'b0, redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_rdcnt_q};
    assign redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_cmp_q = $unsigned(redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_mem_last_q == redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_cmp_b ? 1'b1 : 1'b0);

    // redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_cmpReg(REG,203)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_cmpReg_q <= $unsigned(redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_cmp_q);
        end
    end

    // redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_sticky_ena(REG,206)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_nor_q == 1'b1)
        begin
            redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_sticky_ena_q <= $unsigned(redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_cmpReg_q);
        end
    end

    // redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_enaAnd(LOGICAL,207)
    assign redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_enaAnd_q = redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_sticky_ena_q & VCC_q;

    // redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_rdcnt(COUNTER,199)
    // low=0, high=65, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_rdcnt_i <= 7'd0;
            redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_rdcnt_i == 7'd64)
            begin
                redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_rdcnt_eq <= 1'b0;
            end
            if (redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_rdcnt_eq == 1'b1)
            begin
                redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_rdcnt_i <= $unsigned(redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_rdcnt_i) + $unsigned(7'd63);
            end
            else
            begin
                redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_rdcnt_i <= $unsigned(redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_rdcnt_i) + $unsigned(7'd1);
            end
        end
    end
    assign redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_rdcnt_q = redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_rdcnt_i[6:0];

    // redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_wraddr(REG,200)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_wraddr_q <= $unsigned(7'b1000001);
        end
        else
        begin
            redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_wraddr_q <= $unsigned(redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_rdcnt_q);
        end
    end

    // redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_mem(DUALMEM,198)
    assign redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_mem_ia = $unsigned(in_c0_eni13_9_tpl);
    assign redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_mem_aa = redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_wraddr_q;
    assign redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_mem_ab = redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_rdcnt_q;
    assign redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M10K"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(7),
        .numwords_a(66),
        .width_b(32),
        .widthad_b(7),
        .numwords_b(66),
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
    ) redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_mem_dmem (
        .clocken1(redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_mem_reset0),
        .clock1(clock),
        .address_a(redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_mem_aa),
        .data_a(redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_mem_ab),
        .q_b(redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_mem_iq),
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
    assign redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_mem_q = redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_mem_iq[31:0];

    // redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_outputreg0(DELAY,197)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_outputreg0_q <= '0;
        end
        else
        begin
            redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_outputreg0_q <= $unsigned(redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_mem_q);
        end
    end

    // redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_notEnable(LOGICAL,282)
    assign redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_notEnable_q = $unsigned(~ (VCC_q));

    // redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_nor(LOGICAL,283)
    assign redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_nor_q = ~ (redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_notEnable_q | redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_sticky_ena_q);

    // redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_mem_last(CONSTANT,279)
    assign redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_mem_last_q = $unsigned(6'b011101);

    // redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_cmp(LOGICAL,280)
    assign redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_cmp_b = {1'b0, redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_rdcnt_q};
    assign redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_cmp_q = $unsigned(redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_mem_last_q == redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_cmp_b ? 1'b1 : 1'b0);

    // redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_cmpReg(REG,281)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_cmpReg_q <= $unsigned(redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_cmp_q);
        end
    end

    // redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_sticky_ena(REG,284)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_nor_q == 1'b1)
        begin
            redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_sticky_ena_q <= $unsigned(redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_cmpReg_q);
        end
    end

    // redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_enaAnd(LOGICAL,285)
    assign redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_enaAnd_q = redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_sticky_ena_q & VCC_q;

    // redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_rdcnt(COUNTER,277)
    // low=0, high=30, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_rdcnt_i <= 5'd0;
            redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_rdcnt_i == 5'd29)
            begin
                redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_rdcnt_eq <= 1'b0;
            end
            if (redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_rdcnt_eq == 1'b1)
            begin
                redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_rdcnt_i <= $unsigned(redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_rdcnt_i) + $unsigned(5'd2);
            end
            else
            begin
                redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_rdcnt_i <= $unsigned(redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_rdcnt_q = redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_rdcnt_i[4:0];

    // redist13_sync_together88_aunroll_x_in_c0_eni13_1_tpl_1(DELAY,136)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together88_aunroll_x_in_c0_eni13_1_tpl_1_q <= '0;
        end
        else
        begin
            redist13_sync_together88_aunroll_x_in_c0_eni13_1_tpl_1_q <= $unsigned(in_c0_eni13_1_tpl);
        end
    end

    // redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_wraddr(REG,278)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_wraddr_q <= $unsigned(5'b11110);
        end
        else
        begin
            redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_wraddr_q <= $unsigned(redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_rdcnt_q);
        end
    end

    // redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_mem(DUALMEM,276)
    assign redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_mem_ia = $unsigned(redist13_sync_together88_aunroll_x_in_c0_eni13_1_tpl_1_q);
    assign redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_mem_aa = redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_wraddr_q;
    assign redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_mem_ab = redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_rdcnt_q;
    assign redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(1),
        .widthad_a(5),
        .numwords_a(31),
        .width_b(1),
        .widthad_b(5),
        .numwords_b(31),
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
    ) redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_mem_dmem (
        .clocken1(redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_mem_reset0),
        .clock1(clock),
        .address_a(redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_mem_aa),
        .data_a(redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_mem_ab),
        .q_b(redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_mem_iq),
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
    assign redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_mem_q = redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_mem_iq[0:0];

    // redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_outputreg0(DELAY,275)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_outputreg0_q <= '0;
        end
        else
        begin
            redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_outputreg0_q <= $unsigned(redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_mem_q);
        end
    end

    // redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64(DELAY,137)
    dspba_delay_ver #( .width(1), .depth(30), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64 ( .xin(redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_split_0_outputreg0_q), .xout(redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist15_sync_together88_aunroll_x_in_c0_eni13_1_tpl_65(DELAY,138)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together88_aunroll_x_in_c0_eni13_1_tpl_65_q <= '0;
        end
        else
        begin
            redist15_sync_together88_aunroll_x_in_c0_eni13_1_tpl_65_q <= $unsigned(redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_q);
        end
    end

    // redist16_sync_together88_aunroll_x_in_c0_eni13_1_tpl_68(DELAY,139)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together88_aunroll_x_in_c0_eni13_1_tpl_68_delay_0 <= '0;
            redist16_sync_together88_aunroll_x_in_c0_eni13_1_tpl_68_delay_1 <= '0;
            redist16_sync_together88_aunroll_x_in_c0_eni13_1_tpl_68_q <= '0;
        end
        else
        begin
            redist16_sync_together88_aunroll_x_in_c0_eni13_1_tpl_68_delay_0 <= $unsigned(redist15_sync_together88_aunroll_x_in_c0_eni13_1_tpl_65_q);
            redist16_sync_together88_aunroll_x_in_c0_eni13_1_tpl_68_delay_1 <= redist16_sync_together88_aunroll_x_in_c0_eni13_1_tpl_68_delay_0;
            redist16_sync_together88_aunroll_x_in_c0_eni13_1_tpl_68_q <= redist16_sync_together88_aunroll_x_in_c0_eni13_1_tpl_68_delay_1;
        end
    end

    // valid_fanout_reg13(REG,98)@68 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist30_sync_together88_aunroll_x_in_i_valid_67_q);
        end
    end

    // valid_fanout_reg14(REG,99)@68 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist30_sync_together88_aunroll_x_in_i_valid_67_q);
        end
    end

    // i_llvm_fpga_push_i1_push26_triangular36(BLACKBOX,67)@69
    // out out_feedback_out_26@20000000
    // out out_feedback_valid_out_26@20000000
    triangular_i_llvm_fpga_push_i1_push26_0 thei_llvm_fpga_push_i1_push26_triangular36 (
        .in_data_in(i_llvm_fpga_pop_i1_pop26_triangular35_out_data_out),
        .in_feedback_stall_in_26(i_llvm_fpga_pop_i1_pop26_triangular35_out_feedback_stall_out_26),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_triangular6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(),
        .out_feedback_out_26(i_llvm_fpga_push_i1_push26_triangular36_out_feedback_out_26),
        .out_feedback_valid_out_26(i_llvm_fpga_push_i1_push26_triangular36_out_feedback_valid_out_26),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist22_sync_together88_aunroll_x_in_c0_eni13_8_tpl_68(DELAY,145)
    dspba_delay_ver #( .width(1), .depth(68), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist22_sync_together88_aunroll_x_in_c0_eni13_8_tpl_68 ( .xin(in_c0_eni13_8_tpl), .xout(redist22_sync_together88_aunroll_x_in_c0_eni13_8_tpl_68_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_pop_i1_pop26_triangular35(BLACKBOX,56)@69
    // out out_feedback_stall_out_26@20000000
    triangular_i_llvm_fpga_pop_i1_pop26_0 thei_llvm_fpga_pop_i1_pop26_triangular35 (
        .in_data_in(redist22_sync_together88_aunroll_x_in_c0_eni13_8_tpl_68_q),
        .in_dir(redist16_sync_together88_aunroll_x_in_c0_eni13_1_tpl_68_q),
        .in_feedback_in_26(i_llvm_fpga_push_i1_push26_triangular36_out_feedback_out_26),
        .in_feedback_valid_in_26(i_llvm_fpga_push_i1_push26_triangular36_out_feedback_valid_out_26),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(i_llvm_fpga_pop_i1_pop26_triangular35_out_data_out),
        .out_feedback_stall_out_26(i_llvm_fpga_pop_i1_pop26_triangular35_out_feedback_stall_out_26),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_notEnable(LOGICAL,180)
    assign redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_notEnable_q = $unsigned(~ (VCC_q));

    // redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_nor(LOGICAL,181)
    assign redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_nor_q = ~ (redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_notEnable_q | redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_sticky_ena_q);

    // redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_mem_last(CONSTANT,177)
    assign redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_mem_last_q = $unsigned(7'b0111111);

    // redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_cmp(LOGICAL,178)
    assign redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_cmp_q = $unsigned(redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_mem_last_q == redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_rdcnt_q ? 1'b1 : 1'b0);

    // redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_cmpReg(REG,179)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_cmpReg_q <= $unsigned(redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_cmp_q);
        end
    end

    // redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_sticky_ena(REG,182)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_nor_q == 1'b1)
        begin
            redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_sticky_ena_q <= $unsigned(redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_cmpReg_q);
        end
    end

    // redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_enaAnd(LOGICAL,183)
    assign redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_enaAnd_q = redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_sticky_ena_q & VCC_q;

    // redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_rdcnt(COUNTER,175)
    // low=0, high=64, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_rdcnt_i <= 7'd0;
            redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_rdcnt_i == 7'd63)
            begin
                redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_rdcnt_eq <= 1'b0;
            end
            if (redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_rdcnt_eq == 1'b1)
            begin
                redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_rdcnt_i <= $unsigned(redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_rdcnt_i) + $unsigned(7'd64);
            end
            else
            begin
                redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_rdcnt_i <= $unsigned(redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_rdcnt_i) + $unsigned(7'd1);
            end
        end
    end
    assign redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_rdcnt_q = redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_rdcnt_i[6:0];

    // valid_fanout_reg11(REG,96)@1 + 1
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

    // valid_fanout_reg12(REG,97)@68 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist30_sync_together88_aunroll_x_in_i_valid_67_q);
        end
    end

    // i_llvm_fpga_push_i32_lim_ext36_push21_triangular34(BLACKBOX,70)@69
    // out out_feedback_out_21@20000000
    // out out_feedback_valid_out_21@20000000
    triangular_i_llvm_fpga_push_i32_lim_ext36_push21_0 thei_llvm_fpga_push_i32_lim_ext36_push21_triangular34 (
        .in_data_in(redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_outputreg0_q),
        .in_feedback_stall_in_21(i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_feedback_stall_out_21),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_triangular6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(),
        .out_feedback_out_21(i_llvm_fpga_push_i32_lim_ext36_push21_triangular34_out_feedback_out_21),
        .out_feedback_valid_out_21(i_llvm_fpga_push_i32_lim_ext36_push21_triangular34_out_feedback_valid_out_21),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist21_sync_together88_aunroll_x_in_c0_eni13_7_tpl_1(DELAY,144)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_sync_together88_aunroll_x_in_c0_eni13_7_tpl_1_q <= '0;
        end
        else
        begin
            redist21_sync_together88_aunroll_x_in_c0_eni13_7_tpl_1_q <= $unsigned(in_c0_eni13_7_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33(BLACKBOX,59)@2
    // out out_feedback_stall_out_21@20000000
    triangular_i_llvm_fpga_pop_i32_lim_ext36_pop21_0 thei_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33 (
        .in_data_in(redist21_sync_together88_aunroll_x_in_c0_eni13_7_tpl_1_q),
        .in_dir(redist13_sync_together88_aunroll_x_in_c0_eni13_1_tpl_1_q),
        .in_feedback_in_21(i_llvm_fpga_push_i32_lim_ext36_push21_triangular34_out_feedback_out_21),
        .in_feedback_valid_in_21(i_llvm_fpga_push_i32_lim_ext36_push21_triangular34_out_feedback_valid_out_21),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out),
        .out_feedback_stall_out_21(i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_feedback_stall_out_21),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_wraddr(REG,176)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_wraddr_q <= $unsigned(7'b1000000);
        end
        else
        begin
            redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_wraddr_q <= $unsigned(redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_rdcnt_q);
        end
    end

    // redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_mem(DUALMEM,174)
    assign redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_mem_ia = $unsigned(i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out);
    assign redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_mem_aa = redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_wraddr_q;
    assign redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_mem_ab = redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_rdcnt_q;
    assign redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M10K"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(7),
        .numwords_a(65),
        .width_b(32),
        .widthad_b(7),
        .numwords_b(65),
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
    ) redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_mem_dmem (
        .clocken1(redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_mem_reset0),
        .clock1(clock),
        .address_a(redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_mem_aa),
        .data_a(redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_mem_ab),
        .q_b(redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_mem_iq),
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
    assign redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_mem_q = redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_mem_iq[31:0];

    // redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_outputreg0(DELAY,173)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_outputreg0_q <= '0;
        end
        else
        begin
            redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_outputreg0_q <= $unsigned(redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_mem_q);
        end
    end

    // valid_fanout_reg10(REG,95)@65 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist28_sync_together88_aunroll_x_in_i_valid_64_q);
        end
    end

    // redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_notEnable(LOGICAL,168)
    assign redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_notEnable_q = $unsigned(~ (VCC_q));

    // redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_nor(LOGICAL,169)
    assign redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_nor_q = ~ (redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_notEnable_q | redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_sticky_ena_q);

    // redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_mem_last(CONSTANT,165)
    assign redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_mem_last_q = $unsigned(7'b0111100);

    // redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_cmp(LOGICAL,166)
    assign redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_cmp_b = {1'b0, redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_rdcnt_q};
    assign redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_cmp_q = $unsigned(redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_mem_last_q == redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_cmp_b ? 1'b1 : 1'b0);

    // redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_cmpReg(REG,167)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_cmpReg_q <= $unsigned(redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_cmp_q);
        end
    end

    // redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_sticky_ena(REG,170)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_nor_q == 1'b1)
        begin
            redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_sticky_ena_q <= $unsigned(redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_cmpReg_q);
        end
    end

    // redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_enaAnd(LOGICAL,171)
    assign redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_enaAnd_q = redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_sticky_ena_q & VCC_q;

    // redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_rdcnt(COUNTER,163)
    // low=0, high=61, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_rdcnt_i <= 6'd0;
            redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_rdcnt_i == 6'd60)
            begin
                redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_rdcnt_eq <= 1'b0;
            end
            if (redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_rdcnt_eq == 1'b1)
            begin
                redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_rdcnt_i <= $unsigned(redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_rdcnt_i) + $unsigned(6'd3);
            end
            else
            begin
                redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_rdcnt_i <= $unsigned(redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_rdcnt_i) + $unsigned(6'd1);
            end
        end
    end
    assign redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_rdcnt_q = redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_rdcnt_i[5:0];

    // valid_fanout_reg6(REG,91)@1 + 1
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

    // valid_fanout_reg7(REG,92)@68 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist30_sync_together88_aunroll_x_in_i_valid_67_q);
        end
    end

    // redist6_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_67_inputreg0(DELAY,172)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_67_inputreg0_q <= '0;
        end
        else
        begin
            redist6_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_67_inputreg0_q <= $unsigned(redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_outputreg0_q);
        end
    end

    // redist6_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_67(DELAY,129)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_67_delay_0 <= '0;
            redist6_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_67_q <= '0;
        end
        else
        begin
            redist6_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_67_delay_0 <= $unsigned(redist6_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_67_inputreg0_q);
            redist6_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_67_q <= redist6_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_67_delay_0;
        end
    end

    // i_llvm_fpga_push_i32_reorder_limiter_enter38_push22_triangular29(BLACKBOX,71)@69
    // out out_feedback_out_22@20000000
    // out out_feedback_valid_out_22@20000000
    triangular_i_llvm_fpga_push_i32_reorder_limiter_enter38_push22_0 thei_llvm_fpga_push_i32_reorder_limiter_enter38_push22_triangular29 (
        .in_data_in(redist6_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_67_q),
        .in_feedback_stall_in_22(i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_feedback_stall_out_22),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_triangular6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(),
        .out_feedback_out_22(i_llvm_fpga_push_i32_reorder_limiter_enter38_push22_triangular29_out_feedback_out_22),
        .out_feedback_valid_out_22(i_llvm_fpga_push_i32_reorder_limiter_enter38_push22_triangular29_out_feedback_valid_out_22),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist19_sync_together88_aunroll_x_in_c0_eni13_5_tpl_1(DELAY,142)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together88_aunroll_x_in_c0_eni13_5_tpl_1_q <= '0;
        end
        else
        begin
            redist19_sync_together88_aunroll_x_in_c0_eni13_5_tpl_1_q <= $unsigned(in_c0_eni13_5_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28(BLACKBOX,60)@2
    // out out_feedback_stall_out_22@20000000
    triangular_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_0 thei_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28 (
        .in_data_in(redist19_sync_together88_aunroll_x_in_c0_eni13_5_tpl_1_q),
        .in_dir(redist13_sync_together88_aunroll_x_in_c0_eni13_1_tpl_1_q),
        .in_feedback_in_22(i_llvm_fpga_push_i32_reorder_limiter_enter38_push22_triangular29_out_feedback_out_22),
        .in_feedback_valid_in_22(i_llvm_fpga_push_i32_reorder_limiter_enter38_push22_triangular29_out_feedback_valid_out_22),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out),
        .out_feedback_stall_out_22(i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_feedback_stall_out_22),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_wraddr(REG,164)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_wraddr_q <= $unsigned(6'b111101);
        end
        else
        begin
            redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_wraddr_q <= $unsigned(redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_rdcnt_q);
        end
    end

    // redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_mem(DUALMEM,162)
    assign redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_mem_ia = $unsigned(i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out);
    assign redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_mem_aa = redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_wraddr_q;
    assign redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_mem_ab = redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_rdcnt_q;
    assign redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M10K"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(6),
        .numwords_a(62),
        .width_b(32),
        .widthad_b(6),
        .numwords_b(62),
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
    ) redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_mem_dmem (
        .clocken1(redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_mem_reset0),
        .clock1(clock),
        .address_a(redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_mem_aa),
        .data_a(redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_mem_ab),
        .q_b(redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_mem_iq),
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
    assign redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_mem_q = redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_mem_iq[31:0];

    // redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_outputreg0(DELAY,161)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_outputreg0_q <= '0;
        end
        else
        begin
            redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_outputreg0_q <= $unsigned(redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_mem_q);
        end
    end

    // redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_notEnable(LOGICAL,271)
    assign redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_notEnable_q = $unsigned(~ (VCC_q));

    // redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_nor(LOGICAL,272)
    assign redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_nor_q = ~ (redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_notEnable_q | redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_sticky_ena_q);

    // redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_mem_last(CONSTANT,268)
    assign redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_mem_last_q = $unsigned(6'b011101);

    // redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_cmp(LOGICAL,269)
    assign redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_cmp_b = {1'b0, redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_rdcnt_q};
    assign redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_cmp_q = $unsigned(redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_mem_last_q == redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_cmp_b ? 1'b1 : 1'b0);

    // redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_cmpReg(REG,270)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_cmpReg_q <= $unsigned(redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_cmp_q);
        end
    end

    // redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_sticky_ena(REG,273)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_nor_q == 1'b1)
        begin
            redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_sticky_ena_q <= $unsigned(redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_cmpReg_q);
        end
    end

    // redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_enaAnd(LOGICAL,274)
    assign redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_enaAnd_q = redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_sticky_ena_q & VCC_q;

    // redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_rdcnt(COUNTER,266)
    // low=0, high=30, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_rdcnt_i <= 5'd0;
            redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_rdcnt_i == 5'd29)
            begin
                redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_rdcnt_eq <= 1'b0;
            end
            if (redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_rdcnt_eq == 1'b1)
            begin
                redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_rdcnt_i <= $unsigned(redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_rdcnt_i) + $unsigned(5'd2);
            end
            else
            begin
                redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_rdcnt_i <= $unsigned(redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_rdcnt_q = redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_rdcnt_i[4:0];

    // valid_fanout_reg8(REG,93)@1 + 1
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

    // valid_fanout_reg9(REG,94)@68 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist30_sync_together88_aunroll_x_in_i_valid_67_q);
        end
    end

    // redist11_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_67(DELAY,134)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_67_delay_0 <= '0;
            redist11_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_67_delay_1 <= '0;
            redist11_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_67_q <= '0;
        end
        else
        begin
            redist11_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_67_delay_0 <= $unsigned(redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_q);
            redist11_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_67_delay_1 <= redist11_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_67_delay_0;
            redist11_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_67_q <= redist11_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_67_delay_1;
        end
    end

    // i_llvm_fpga_push_i1_notcmp2742_push27_triangular31(BLACKBOX,64)@69
    // out out_feedback_out_27@20000000
    // out out_feedback_valid_out_27@20000000
    triangular_i_llvm_fpga_push_i1_notcmp2742_push27_0 thei_llvm_fpga_push_i1_notcmp2742_push27_triangular31 (
        .in_data_in(redist11_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_67_q),
        .in_feedback_stall_in_27(i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_feedback_stall_out_27),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_triangular6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(),
        .out_feedback_out_27(i_llvm_fpga_push_i1_notcmp2742_push27_triangular31_out_feedback_out_27),
        .out_feedback_valid_out_27(i_llvm_fpga_push_i1_notcmp2742_push27_triangular31_out_feedback_valid_out_27),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist20_sync_together88_aunroll_x_in_c0_eni13_6_tpl_1(DELAY,143)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together88_aunroll_x_in_c0_eni13_6_tpl_1_q <= '0;
        end
        else
        begin
            redist20_sync_together88_aunroll_x_in_c0_eni13_6_tpl_1_q <= $unsigned(in_c0_eni13_6_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30(BLACKBOX,54)@2
    // out out_feedback_stall_out_27@20000000
    triangular_i_llvm_fpga_pop_i1_notcmp2742_pop27_0 thei_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30 (
        .in_data_in(redist20_sync_together88_aunroll_x_in_c0_eni13_6_tpl_1_q),
        .in_dir(redist13_sync_together88_aunroll_x_in_c0_eni13_1_tpl_1_q),
        .in_feedback_in_27(i_llvm_fpga_push_i1_notcmp2742_push27_triangular31_out_feedback_out_27),
        .in_feedback_valid_in_27(i_llvm_fpga_push_i1_notcmp2742_push27_triangular31_out_feedback_valid_out_27),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out),
        .out_feedback_stall_out_27(i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_feedback_stall_out_27),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_wraddr(REG,267)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_wraddr_q <= $unsigned(5'b11110);
        end
        else
        begin
            redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_wraddr_q <= $unsigned(redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_rdcnt_q);
        end
    end

    // redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_mem(DUALMEM,265)
    assign redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_mem_ia = $unsigned(i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out);
    assign redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_mem_aa = redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_wraddr_q;
    assign redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_mem_ab = redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_rdcnt_q;
    assign redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(1),
        .widthad_a(5),
        .numwords_a(31),
        .width_b(1),
        .widthad_b(5),
        .numwords_b(31),
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
    ) redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_mem_dmem (
        .clocken1(redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_mem_reset0),
        .clock1(clock),
        .address_a(redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_mem_aa),
        .data_a(redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_mem_ab),
        .q_b(redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_mem_iq),
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
    assign redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_mem_q = redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_mem_iq[0:0];

    // redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_outputreg0(DELAY,264)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_outputreg0_q <= '0;
        end
        else
        begin
            redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_outputreg0_q <= $unsigned(redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_mem_q);
        end
    end

    // redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_inputreg0(DELAY,186)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_inputreg0_q <= '0;
        end
        else
        begin
            redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_inputreg0_q <= $unsigned(redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_split_0_outputreg0_q);
        end
    end

    // redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64(DELAY,133)
    dspba_delay_ver #( .width(1), .depth(30), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64 ( .xin(redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_inputreg0_q), .xout(redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist31_sync_together88_aunroll_x_in_i_valid_68(DELAY,154)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_sync_together88_aunroll_x_in_i_valid_68_q <= '0;
        end
        else
        begin
            redist31_sync_together88_aunroll_x_in_i_valid_68_q <= $unsigned(redist30_sync_together88_aunroll_x_in_i_valid_67_q);
        end
    end

    // leftShiftStage0Idx1Rng1_uid109_i_cleanups_shl_triangular0_shift_x(BITSELECT,108)@66
    assign leftShiftStage0Idx1Rng1_uid109_i_cleanups_shl_triangular0_shift_x_in = i_llvm_fpga_pop_i2_cleanups_pop20_triangular2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid109_i_cleanups_shl_triangular0_shift_x_b = leftShiftStage0Idx1Rng1_uid109_i_cleanups_shl_triangular0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid110_i_cleanups_shl_triangular0_shift_x(BITJOIN,109)@66
    assign leftShiftStage0Idx1_uid110_i_cleanups_shl_triangular0_shift_x_q = {leftShiftStage0Idx1Rng1_uid109_i_cleanups_shl_triangular0_shift_x_b, GND_q};

    // leftShiftStage0_uid112_i_cleanups_shl_triangular0_shift_x(MUX,111)@66
    assign leftShiftStage0_uid112_i_cleanups_shl_triangular0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid112_i_cleanups_shl_triangular0_shift_x_s or i_llvm_fpga_pop_i2_cleanups_pop20_triangular2_out_data_out or leftShiftStage0Idx1_uid110_i_cleanups_shl_triangular0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid112_i_cleanups_shl_triangular0_shift_x_s)
            1'b0 : leftShiftStage0_uid112_i_cleanups_shl_triangular0_shift_x_q = i_llvm_fpga_pop_i2_cleanups_pop20_triangular2_out_data_out;
            1'b1 : leftShiftStage0_uid112_i_cleanups_shl_triangular0_shift_x_q = leftShiftStage0Idx1_uid110_i_cleanups_shl_triangular0_shift_x_q;
            default : leftShiftStage0_uid112_i_cleanups_shl_triangular0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl_triangular5_vt_select_1(BITSELECT,45)@66
    assign i_cleanups_shl_triangular5_vt_select_1_b = leftShiftStage0_uid112_i_cleanups_shl_triangular0_shift_x_q[1:1];

    // i_cleanups_shl_triangular5_vt_join(BITJOIN,44)@66
    assign i_cleanups_shl_triangular5_vt_join_q = {i_cleanups_shl_triangular5_vt_select_1_b, GND_q};

    // i_first_cleanup_xor_triangular4(LOGICAL,48)@66
    assign i_first_cleanup_xor_triangular4_q = i_first_cleanup_triangular3_sel_x_b ^ VCC_q;

    // i_or_triangular24(LOGICAL,79)@66
    assign i_or_triangular24_q = i_notcmp_triangular22_q | i_first_cleanup_xor_triangular4_q;

    // i_next_cleanups_triangular25(MUX,74)@66 + 1
    assign i_next_cleanups_triangular25_s = i_or_triangular24_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_next_cleanups_triangular25_q <= 2'b0;
        end
        else
        begin
            unique case (i_next_cleanups_triangular25_s)
                1'b0 : i_next_cleanups_triangular25_q <= i_llvm_fpga_pop_i2_cleanups_pop20_triangular2_out_data_out;
                1'b1 : i_next_cleanups_triangular25_q <= i_cleanups_shl_triangular5_vt_join_q;
                default : i_next_cleanups_triangular25_q <= 2'b0;
            endcase
        end
    end

    // redist1_i_next_cleanups_triangular25_q_3(DELAY,124)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_next_cleanups_triangular25_q_3_delay_0 <= '0;
            redist1_i_next_cleanups_triangular25_q_3_q <= '0;
        end
        else
        begin
            redist1_i_next_cleanups_triangular25_q_3_delay_0 <= $unsigned(i_next_cleanups_triangular25_q);
            redist1_i_next_cleanups_triangular25_q_3_q <= redist1_i_next_cleanups_triangular25_q_3_delay_0;
        end
    end

    // i_llvm_fpga_push_i2_cleanups_push20_triangular26(BLACKBOX,68)@69
    // out out_feedback_out_20@20000000
    // out out_feedback_valid_out_20@20000000
    triangular_i_llvm_fpga_push_i2_cleanups_push20_0 thei_llvm_fpga_push_i2_cleanups_push20_triangular26 (
        .in_data_in(redist1_i_next_cleanups_triangular25_q_3_q),
        .in_feedback_stall_in_20(i_llvm_fpga_pop_i2_cleanups_pop20_triangular2_out_feedback_stall_out_20),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_triangular6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(redist31_sync_together88_aunroll_x_in_i_valid_68_q),
        .out_data_out(),
        .out_feedback_out_20(i_llvm_fpga_push_i2_cleanups_push20_triangular26_out_feedback_out_20),
        .out_feedback_valid_out_20(i_llvm_fpga_push_i2_cleanups_push20_triangular26_out_feedback_valid_out_20),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i2_160(CONSTANT,40)
    assign c_i2_160_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups_pop20_triangular2(BLACKBOX,57)@66
    // out out_feedback_stall_out_20@20000000
    triangular_i_llvm_fpga_pop_i2_cleanups_pop20_0 thei_llvm_fpga_pop_i2_cleanups_pop20_triangular2 (
        .in_data_in(c_i2_160_q),
        .in_dir(redist15_sync_together88_aunroll_x_in_c0_eni13_1_tpl_65_q),
        .in_feedback_in_20(i_llvm_fpga_push_i2_cleanups_push20_triangular26_out_feedback_out_20),
        .in_feedback_valid_in_20(i_llvm_fpga_push_i2_cleanups_push20_triangular26_out_feedback_valid_out_20),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist29_sync_together88_aunroll_x_in_i_valid_65_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups_pop20_triangular2_out_data_out),
        .out_feedback_stall_out_20(i_llvm_fpga_pop_i2_cleanups_pop20_triangular2_out_feedback_stall_out_20),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_triangular3_sel_x(BITSELECT,8)@66
    assign i_first_cleanup_triangular3_sel_x_b = i_llvm_fpga_pop_i2_cleanups_pop20_triangular2_out_data_out[0:0];

    // c_i33_163(CONSTANT,41)
    assign c_i33_163_q = $unsigned(33'b111111111111111111111111111111111);

    // redist4_i_llvm_fpga_pop_i33_fpga_indvars_iv7_pop16_triangular16_out_data_out_4_inputreg0(DELAY,160)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_llvm_fpga_pop_i33_fpga_indvars_iv7_pop16_triangular16_out_data_out_4_inputreg0_q <= '0;
        end
        else
        begin
            redist4_i_llvm_fpga_pop_i33_fpga_indvars_iv7_pop16_triangular16_out_data_out_4_inputreg0_q <= $unsigned(redist3_i_llvm_fpga_pop_i33_fpga_indvars_iv7_pop16_triangular16_out_data_out_1_q);
        end
    end

    // redist4_i_llvm_fpga_pop_i33_fpga_indvars_iv7_pop16_triangular16_out_data_out_4(DELAY,127)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_llvm_fpga_pop_i33_fpga_indvars_iv7_pop16_triangular16_out_data_out_4_delay_0 <= '0;
            redist4_i_llvm_fpga_pop_i33_fpga_indvars_iv7_pop16_triangular16_out_data_out_4_q <= '0;
        end
        else
        begin
            redist4_i_llvm_fpga_pop_i33_fpga_indvars_iv7_pop16_triangular16_out_data_out_4_delay_0 <= $unsigned(redist4_i_llvm_fpga_pop_i33_fpga_indvars_iv7_pop16_triangular16_out_data_out_4_inputreg0_q);
            redist4_i_llvm_fpga_pop_i33_fpga_indvars_iv7_pop16_triangular16_out_data_out_4_q <= redist4_i_llvm_fpga_pop_i33_fpga_indvars_iv7_pop16_triangular16_out_data_out_4_delay_0;
        end
    end

    // i_fpga_indvars_iv_next8_triangular19(ADD,49)@69
    assign i_fpga_indvars_iv_next8_triangular19_a = {1'b0, redist4_i_llvm_fpga_pop_i33_fpga_indvars_iv7_pop16_triangular16_out_data_out_4_q};
    assign i_fpga_indvars_iv_next8_triangular19_b = {1'b0, c_i33_163_q};
    assign i_fpga_indvars_iv_next8_triangular19_o = $unsigned(i_fpga_indvars_iv_next8_triangular19_a) + $unsigned(i_fpga_indvars_iv_next8_triangular19_b);
    assign i_fpga_indvars_iv_next8_triangular19_q = i_fpga_indvars_iv_next8_triangular19_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next8_triangular19_sel_x(BITSELECT,2)@69
    assign bgTrunc_i_fpga_indvars_iv_next8_triangular19_sel_x_b = i_fpga_indvars_iv_next8_triangular19_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv7_push16_triangular20(BLACKBOX,72)@69
    // out out_feedback_out_16@20000000
    // out out_feedback_valid_out_16@20000000
    triangular_i_llvm_fpga_push_i33_fpga_indvars_iv7_push16_0 thei_llvm_fpga_push_i33_fpga_indvars_iv7_push16_triangular20 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next8_triangular19_sel_x_b),
        .in_feedback_stall_in_16(i_llvm_fpga_pop_i33_fpga_indvars_iv7_pop16_triangular16_out_feedback_stall_out_16),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_triangular6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(redist31_sync_together88_aunroll_x_in_i_valid_68_q),
        .out_data_out(),
        .out_feedback_out_16(i_llvm_fpga_push_i33_fpga_indvars_iv7_push16_triangular20_out_feedback_out_16),
        .out_feedback_valid_out_16(i_llvm_fpga_push_i33_fpga_indvars_iv7_push16_triangular20_out_feedback_valid_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_notEnable(LOGICAL,193)
    assign redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_notEnable_q = $unsigned(~ (VCC_q));

    // redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_nor(LOGICAL,194)
    assign redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_nor_q = ~ (redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_notEnable_q | redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_sticky_ena_q);

    // redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_mem_last(CONSTANT,190)
    assign redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_mem_last_q = $unsigned(7'b0111101);

    // redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_cmp(LOGICAL,191)
    assign redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_cmp_b = {1'b0, redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_rdcnt_q};
    assign redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_cmp_q = $unsigned(redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_mem_last_q == redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_cmp_b ? 1'b1 : 1'b0);

    // redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_cmpReg(REG,192)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_cmpReg_q <= $unsigned(redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_cmp_q);
        end
    end

    // redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_sticky_ena(REG,195)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_nor_q == 1'b1)
        begin
            redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_sticky_ena_q <= $unsigned(redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_cmpReg_q);
        end
    end

    // redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_enaAnd(LOGICAL,196)
    assign redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_enaAnd_q = redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_sticky_ena_q & VCC_q;

    // redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_rdcnt(COUNTER,188)
    // low=0, high=62, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_rdcnt_i <= 6'd0;
            redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_rdcnt_i == 6'd61)
            begin
                redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_rdcnt_eq <= 1'b0;
            end
            if (redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_rdcnt_eq == 1'b1)
            begin
                redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_rdcnt_i <= $unsigned(redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_rdcnt_i) + $unsigned(6'd2);
            end
            else
            begin
                redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_rdcnt_i <= $unsigned(redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_rdcnt_i) + $unsigned(6'd1);
            end
        end
    end
    assign redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_rdcnt_q = redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_rdcnt_i[5:0];

    // redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_wraddr(REG,189)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_wraddr_q <= $unsigned(6'b111110);
        end
        else
        begin
            redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_wraddr_q <= $unsigned(redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_rdcnt_q);
        end
    end

    // redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_mem(DUALMEM,187)
    assign redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_mem_ia = $unsigned(in_c0_eni13_4_tpl);
    assign redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_mem_aa = redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_wraddr_q;
    assign redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_mem_ab = redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_rdcnt_q;
    assign redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M10K"),
        .operation_mode("DUAL_PORT"),
        .width_a(33),
        .widthad_a(6),
        .numwords_a(63),
        .width_b(33),
        .widthad_b(6),
        .numwords_b(63),
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
    ) redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_mem_dmem (
        .clocken1(redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_mem_reset0),
        .clock1(clock),
        .address_a(redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_mem_aa),
        .data_a(redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_mem_ab),
        .q_b(redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_mem_iq),
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
    assign redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_mem_q = redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_mem_iq[32:0];

    // i_llvm_fpga_pop_i33_fpga_indvars_iv7_pop16_triangular16(BLACKBOX,61)@65
    // out out_feedback_stall_out_16@20000000
    triangular_i_llvm_fpga_pop_i33_fpga_indvars_iv7_pop16_0 thei_llvm_fpga_pop_i33_fpga_indvars_iv7_pop16_triangular16 (
        .in_data_in(redist18_sync_together88_aunroll_x_in_c0_eni13_4_tpl_64_mem_q),
        .in_dir(redist14_sync_together88_aunroll_x_in_c0_eni13_1_tpl_64_q),
        .in_feedback_in_16(i_llvm_fpga_push_i33_fpga_indvars_iv7_push16_triangular20_out_feedback_out_16),
        .in_feedback_valid_in_16(i_llvm_fpga_push_i33_fpga_indvars_iv7_push16_triangular20_out_feedback_valid_out_16),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist28_sync_together88_aunroll_x_in_i_valid_64_q),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv7_pop16_triangular16_out_data_out),
        .out_feedback_stall_out_16(i_llvm_fpga_pop_i33_fpga_indvars_iv7_pop16_triangular16_out_feedback_stall_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_i_llvm_fpga_pop_i33_fpga_indvars_iv7_pop16_triangular16_out_data_out_1(DELAY,126)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_llvm_fpga_pop_i33_fpga_indvars_iv7_pop16_triangular16_out_data_out_1_q <= '0;
        end
        else
        begin
            redist3_i_llvm_fpga_pop_i33_fpga_indvars_iv7_pop16_triangular16_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i33_fpga_indvars_iv7_pop16_triangular16_out_data_out);
        end
    end

    // i_exitcond_triangular17_cmp_nsign(LOGICAL,122)@66
    assign i_exitcond_triangular17_cmp_nsign_q = $unsigned(~ (redist3_i_llvm_fpga_pop_i33_fpga_indvars_iv7_pop16_triangular16_out_data_out_1_q[32:32]));

    // redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_notEnable(LOGICAL,260)
    assign redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_notEnable_q = $unsigned(~ (VCC_q));

    // redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_nor(LOGICAL,261)
    assign redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_nor_q = ~ (redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_notEnable_q | redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_sticky_ena_q);

    // redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_mem_last(CONSTANT,257)
    assign redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_mem_last_q = $unsigned(6'b011101);

    // redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_cmp(LOGICAL,258)
    assign redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_cmp_b = {1'b0, redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_rdcnt_q};
    assign redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_cmp_q = $unsigned(redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_mem_last_q == redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_cmp_b ? 1'b1 : 1'b0);

    // redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_cmpReg(REG,259)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_cmpReg_q <= $unsigned(redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_cmp_q);
        end
    end

    // redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_sticky_ena(REG,262)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_nor_q == 1'b1)
        begin
            redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_sticky_ena_q <= $unsigned(redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_cmpReg_q);
        end
    end

    // redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_enaAnd(LOGICAL,263)
    assign redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_enaAnd_q = redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_sticky_ena_q & VCC_q;

    // redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_rdcnt(COUNTER,255)
    // low=0, high=30, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_rdcnt_i <= 5'd0;
            redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_rdcnt_i == 5'd29)
            begin
                redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_rdcnt_eq <= 1'b0;
            end
            if (redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_rdcnt_eq == 1'b1)
            begin
                redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_rdcnt_i <= $unsigned(redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_rdcnt_i) + $unsigned(5'd2);
            end
            else
            begin
                redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_rdcnt_i <= $unsigned(redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_rdcnt_q = redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_rdcnt_i[4:0];

    // i_llvm_fpga_push_i1_push24_triangular13(BLACKBOX,66)@69
    // out out_feedback_out_24@20000000
    // out out_feedback_valid_out_24@20000000
    triangular_i_llvm_fpga_push_i1_push24_0 thei_llvm_fpga_push_i1_push24_triangular13 (
        .in_data_in(redist9_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_68_q),
        .in_feedback_stall_in_24(i_llvm_fpga_pop_i1_pop24_triangular12_out_feedback_stall_out_24),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_triangular6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(redist31_sync_together88_aunroll_x_in_i_valid_68_q),
        .out_data_out(),
        .out_feedback_out_24(i_llvm_fpga_push_i1_push24_triangular13_out_feedback_out_24),
        .out_feedback_valid_out_24(i_llvm_fpga_push_i1_push24_triangular13_out_feedback_valid_out_24),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_pop24_triangular12(BLACKBOX,55)@1
    // out out_feedback_stall_out_24@20000000
    triangular_i_llvm_fpga_pop_i1_pop24_0 thei_llvm_fpga_pop_i1_pop24_triangular12 (
        .in_data_in(in_c0_eni13_2_tpl),
        .in_dir(in_c0_eni13_1_tpl),
        .in_feedback_in_24(i_llvm_fpga_push_i1_push24_triangular13_out_feedback_out_24),
        .in_feedback_valid_in_24(i_llvm_fpga_push_i1_push24_triangular13_out_feedback_valid_out_24),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out),
        .out_feedback_stall_out_24(i_llvm_fpga_pop_i1_pop24_triangular12_out_feedback_stall_out_24),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_wraddr(REG,256)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_wraddr_q <= $unsigned(5'b11110);
        end
        else
        begin
            redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_wraddr_q <= $unsigned(redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_rdcnt_q);
        end
    end

    // redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_mem(DUALMEM,254)
    assign redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_mem_ia = $unsigned(i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out);
    assign redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_mem_aa = redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_wraddr_q;
    assign redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_mem_ab = redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_rdcnt_q;
    assign redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(1),
        .widthad_a(5),
        .numwords_a(31),
        .width_b(1),
        .widthad_b(5),
        .numwords_b(31),
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
    ) redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_mem_dmem (
        .clocken1(redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_mem_reset0),
        .clock1(clock),
        .address_a(redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_mem_aa),
        .data_a(redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_mem_ab),
        .q_b(redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_mem_iq),
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
    assign redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_mem_q = redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_mem_iq[0:0];

    // redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_outputreg0(DELAY,253)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_outputreg0_q <= '0;
        end
        else
        begin
            redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_outputreg0_q <= $unsigned(redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_mem_q);
        end
    end

    // redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_inputreg0(DELAY,184)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_inputreg0_q <= '0;
        end
        else
        begin
            redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_inputreg0_q <= $unsigned(redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_split_0_outputreg0_q);
        end
    end

    // redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65(DELAY,131)
    dspba_delay_ver #( .width(1), .depth(30), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65 ( .xin(redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_inputreg0_q), .xout(redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_outputreg0(DELAY,185)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_outputreg0_q <= '0;
        end
        else
        begin
            redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_outputreg0_q <= $unsigned(redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_q);
        end
    end

    // i_unnamed_triangular21(LOGICAL,80)@66
    assign i_unnamed_triangular21_q = redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_outputreg0_q & i_exitcond_triangular17_cmp_nsign_q;

    // i_notcmp_triangular22(LOGICAL,78)@66
    assign i_notcmp_triangular22_q = i_unnamed_triangular21_q ^ VCC_q;

    // i_masked_triangular27(LOGICAL,73)@66
    assign i_masked_triangular27_q = i_notcmp_triangular22_q & i_first_cleanup_triangular3_sel_x_b;

    // i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_triangular32(BLACKBOX,52)@66
    // out out_o_exit_outer_loop@69
    // out out_o_stall@69
    // out out_o_valid@69
    triangular_i_llvm_fpga_pipeline_order_pa0000i32_reorder_parent_0 thei_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_triangular32 (
        .in_i_exit_inner_loop(i_masked_triangular27_q),
        .in_i_exit_outer_loop(redist10_i_llvm_fpga_pop_i1_notcmp2742_pop27_triangular30_out_data_out_64_q),
        .in_i_outer_loop_token(redist5_i_llvm_fpga_pop_i32_reorder_limiter_enter38_pop22_triangular28_out_data_out_64_outputreg0_q),
        .in_i_predicate(GND_q),
        .in_i_stall(GND_q),
        .in_i_start_inner_loop(redist15_sync_together88_aunroll_x_in_c0_eni13_1_tpl_65_q),
        .in_i_valid(valid_fanout_reg10_q),
        .out_o_exit_outer_loop(i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_triangular32_out_o_exit_outer_loop),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_i_masked_triangular27_q_3(DELAY,125)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_masked_triangular27_q_3_delay_0 <= '0;
            redist2_i_masked_triangular27_q_3_delay_1 <= '0;
            redist2_i_masked_triangular27_q_3_q <= '0;
        end
        else
        begin
            redist2_i_masked_triangular27_q_3_delay_0 <= $unsigned(i_masked_triangular27_q);
            redist2_i_masked_triangular27_q_3_delay_1 <= redist2_i_masked_triangular27_q_3_delay_0;
            redist2_i_masked_triangular27_q_3_q <= redist2_i_masked_triangular27_q_3_delay_1;
        end
    end

    // valid_fanout_reg4(REG,89)@68 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist30_sync_together88_aunroll_x_in_i_valid_67_q);
        end
    end

    // valid_fanout_reg5(REG,90)@68 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist30_sync_together88_aunroll_x_in_i_valid_67_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi4_pop1343_push28_triangular15(BLACKBOX,63)@69
    // out out_feedback_out_28@20000000
    // out out_feedback_valid_out_28@20000000
    triangular_i_llvm_fpga_push_i1_memdep_phi4_pop1343_push28_0 thei_llvm_fpga_push_i1_memdep_phi4_pop1343_push28_triangular15 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi4_pop1343_pop28_triangular14_out_data_out),
        .in_feedback_stall_in_28(i_llvm_fpga_pop_i1_memdep_phi4_pop1343_pop28_triangular14_out_feedback_stall_out_28),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_triangular6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_28(i_llvm_fpga_push_i1_memdep_phi4_pop1343_push28_triangular15_out_feedback_out_28),
        .out_feedback_valid_out_28(i_llvm_fpga_push_i1_memdep_phi4_pop1343_push28_triangular15_out_feedback_valid_out_28),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist17_sync_together88_aunroll_x_in_c0_eni13_3_tpl_68(DELAY,140)
    dspba_delay_ver #( .width(1), .depth(68), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist17_sync_together88_aunroll_x_in_c0_eni13_3_tpl_68 ( .xin(in_c0_eni13_3_tpl), .xout(redist17_sync_together88_aunroll_x_in_c0_eni13_3_tpl_68_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_pop_i1_memdep_phi4_pop1343_pop28_triangular14(BLACKBOX,53)@69
    // out out_feedback_stall_out_28@20000000
    triangular_i_llvm_fpga_pop_i1_memdep_phi4_pop1343_pop28_0 thei_llvm_fpga_pop_i1_memdep_phi4_pop1343_pop28_triangular14 (
        .in_data_in(redist17_sync_together88_aunroll_x_in_c0_eni13_3_tpl_68_q),
        .in_dir(redist16_sync_together88_aunroll_x_in_c0_eni13_1_tpl_68_q),
        .in_feedback_in_28(i_llvm_fpga_push_i1_memdep_phi4_pop1343_push28_triangular15_out_feedback_out_28),
        .in_feedback_valid_in_28(i_llvm_fpga_push_i1_memdep_phi4_pop1343_push28_triangular15_out_feedback_valid_out_28),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi4_pop1343_pop28_triangular14_out_data_out),
        .out_feedback_stall_out_28(i_llvm_fpga_pop_i1_memdep_phi4_pop1343_pop28_triangular14_out_feedback_stall_out_28),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist9_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_68(DELAY,132)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_68_delay_0 <= '0;
            redist9_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_68_delay_1 <= '0;
            redist9_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_68_q <= '0;
        end
        else
        begin
            redist9_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_68_delay_0 <= $unsigned(redist8_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_65_outputreg0_q);
            redist9_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_68_delay_1 <= redist9_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_68_delay_0;
            redist9_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_68_q <= redist9_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_68_delay_1;
        end
    end

    // redist32_i_first_cleanup_triangular3_sel_x_b_3(DELAY,155)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_i_first_cleanup_triangular3_sel_x_b_3_delay_0 <= '0;
            redist32_i_first_cleanup_triangular3_sel_x_b_3_delay_1 <= '0;
            redist32_i_first_cleanup_triangular3_sel_x_b_3_q <= '0;
        end
        else
        begin
            redist32_i_first_cleanup_triangular3_sel_x_b_3_delay_0 <= $unsigned(i_first_cleanup_triangular3_sel_x_b);
            redist32_i_first_cleanup_triangular3_sel_x_b_3_delay_1 <= redist32_i_first_cleanup_triangular3_sel_x_b_3_delay_0;
            redist32_i_first_cleanup_triangular3_sel_x_b_3_q <= redist32_i_first_cleanup_triangular3_sel_x_b_3_delay_1;
        end
    end

    // redist0_i_unnamed_triangular21_q_3(DELAY,123)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_unnamed_triangular21_q_3_delay_0 <= '0;
            redist0_i_unnamed_triangular21_q_3_delay_1 <= '0;
            redist0_i_unnamed_triangular21_q_3_q <= '0;
        end
        else
        begin
            redist0_i_unnamed_triangular21_q_3_delay_0 <= $unsigned(i_unnamed_triangular21_q);
            redist0_i_unnamed_triangular21_q_3_delay_1 <= redist0_i_unnamed_triangular21_q_3_delay_0;
            redist0_i_unnamed_triangular21_q_3_q <= redist0_i_unnamed_triangular21_q_3_delay_1;
        end
    end

    // i_llvm_fpga_push_i1_notexitcond_triangular23(BLACKBOX,65)@69
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    triangular_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_triangular23 (
        .in_data_in(redist0_i_unnamed_triangular21_q_3_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_triangular6_out_not_exitcond_stall_out),
        .in_first_cleanup(redist32_i_first_cleanup_triangular3_sel_x_b_3_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist31_sync_together88_aunroll_x_in_i_valid_68_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_triangular23_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_triangular23_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,88)@68 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist30_sync_together88_aunroll_x_in_i_valid_67_q);
        end
    end

    // rightShiftStage0Idx1Rng1_uid116_i_next_initerations_triangular0_shift_x(BITSELECT,115)@69
    assign rightShiftStage0Idx1Rng1_uid116_i_next_initerations_triangular0_shift_x_b = i_llvm_fpga_pop_i2_initerations_pop19_triangular7_out_data_out[1:1];

    // rightShiftStage0Idx1_uid118_i_next_initerations_triangular0_shift_x(BITJOIN,117)@69
    assign rightShiftStage0Idx1_uid118_i_next_initerations_triangular0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid116_i_next_initerations_triangular0_shift_x_b};

    // valid_fanout_reg1(REG,86)@68 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist30_sync_together88_aunroll_x_in_i_valid_67_q);
        end
    end

    // valid_fanout_reg2(REG,87)@68 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist30_sync_together88_aunroll_x_in_i_valid_67_q);
        end
    end

    // i_llvm_fpga_push_i2_initerations_push19_triangular9(BLACKBOX,69)@69
    // out out_feedback_out_19@20000000
    // out out_feedback_valid_out_19@20000000
    triangular_i_llvm_fpga_push_i2_initerations_push19_0 thei_llvm_fpga_push_i2_initerations_push19_triangular9 (
        .in_data_in(i_next_initerations_triangular8_vt_join_q),
        .in_feedback_stall_in_19(i_llvm_fpga_pop_i2_initerations_pop19_triangular7_out_feedback_stall_out_19),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_triangular6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_19(i_llvm_fpga_push_i2_initerations_push19_triangular9_out_feedback_out_19),
        .out_feedback_valid_out_19(i_llvm_fpga_push_i2_initerations_push19_triangular9_out_feedback_valid_out_19),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations_pop19_triangular7(BLACKBOX,58)@69
    // out out_feedback_stall_out_19@20000000
    triangular_i_llvm_fpga_pop_i2_initerations_pop19_0 thei_llvm_fpga_pop_i2_initerations_pop19_triangular7 (
        .in_data_in(c_i2_160_q),
        .in_dir(redist16_sync_together88_aunroll_x_in_c0_eni13_1_tpl_68_q),
        .in_feedback_in_19(i_llvm_fpga_push_i2_initerations_push19_triangular9_out_feedback_out_19),
        .in_feedback_valid_in_19(i_llvm_fpga_push_i2_initerations_push19_triangular9_out_feedback_valid_out_19),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations_pop19_triangular7_out_data_out),
        .out_feedback_stall_out_19(i_llvm_fpga_pop_i2_initerations_pop19_triangular7_out_feedback_stall_out_19),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid120_i_next_initerations_triangular0_shift_x(MUX,119)@69
    assign rightShiftStage0_uid120_i_next_initerations_triangular0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid120_i_next_initerations_triangular0_shift_x_s or i_llvm_fpga_pop_i2_initerations_pop19_triangular7_out_data_out or rightShiftStage0Idx1_uid118_i_next_initerations_triangular0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid120_i_next_initerations_triangular0_shift_x_s)
            1'b0 : rightShiftStage0_uid120_i_next_initerations_triangular0_shift_x_q = i_llvm_fpga_pop_i2_initerations_pop19_triangular7_out_data_out;
            1'b1 : rightShiftStage0_uid120_i_next_initerations_triangular0_shift_x_q = rightShiftStage0Idx1_uid118_i_next_initerations_triangular0_shift_x_q;
            default : rightShiftStage0_uid120_i_next_initerations_triangular0_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations_triangular8_vt_select_0(BITSELECT,77)@69
    assign i_next_initerations_triangular8_vt_select_0_b = rightShiftStage0_uid120_i_next_initerations_triangular0_shift_x_q[0:0];

    // i_next_initerations_triangular8_vt_join(BITJOIN,76)@69
    assign i_next_initerations_triangular8_vt_join_q = {GND_q, i_next_initerations_triangular8_vt_select_0_b};

    // i_last_initeration_triangular10_sel_x(BITSELECT,9)@69
    assign i_last_initeration_triangular10_sel_x_b = i_next_initerations_triangular8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_triangular11(BLACKBOX,62)@69
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    triangular_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_triangular11 (
        .in_data_in(i_last_initeration_triangular10_sel_x_b),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_triangular6_out_initeration_stall_out),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_triangular6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_triangular11_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_triangular11_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_triangular6(BLACKBOX,51)@69
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    triangular_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_triangular6 (
        .in_data_in(redist16_sync_together88_aunroll_x_in_c0_eni13_1_tpl_68_q),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_triangular11_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_triangular11_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_triangular23_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_triangular23_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(redist31_sync_together88_aunroll_x_in_i_valid_68_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_triangular6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_triangular6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_triangular6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_triangular6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_triangular6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_triangular6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist12_i_first_cleanup_xor_triangular4_q_3(DELAY,135)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_first_cleanup_xor_triangular4_q_3_delay_0 <= '0;
            redist12_i_first_cleanup_xor_triangular4_q_3_delay_1 <= '0;
            redist12_i_first_cleanup_xor_triangular4_q_3_q <= '0;
        end
        else
        begin
            redist12_i_first_cleanup_xor_triangular4_q_3_delay_0 <= $unsigned(i_first_cleanup_xor_triangular4_q);
            redist12_i_first_cleanup_xor_triangular4_q_3_delay_1 <= redist12_i_first_cleanup_xor_triangular4_q_3_delay_0;
            redist12_i_first_cleanup_xor_triangular4_q_3_q <= redist12_i_first_cleanup_xor_triangular4_q_3_delay_1;
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,14)@69
    assign out_c0_exi14_0_tpl = GND_q;
    assign out_c0_exi14_1_tpl = redist12_i_first_cleanup_xor_triangular4_q_3_q;
    assign out_c0_exi14_2_tpl = i_llvm_fpga_pipeline_keep_going_triangular6_out_data_out;
    assign out_c0_exi14_3_tpl = redist9_i_llvm_fpga_pop_i1_pop24_triangular12_out_data_out_68_q;
    assign out_c0_exi14_4_tpl = i_llvm_fpga_pop_i1_memdep_phi4_pop1343_pop28_triangular14_out_data_out;
    assign out_c0_exi14_5_tpl = redist2_i_masked_triangular27_q_3_q;
    assign out_c0_exi14_6_tpl = i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_triangular32_out_o_exit_outer_loop;
    assign out_c0_exi14_7_tpl = redist7_i_llvm_fpga_pop_i32_lim_ext36_pop21_triangular33_out_data_out_67_outputreg0_q;
    assign out_c0_exi14_8_tpl = i_llvm_fpga_pop_i1_pop26_triangular35_out_data_out;
    assign out_c0_exi14_9_tpl = redist16_sync_together88_aunroll_x_in_c0_eni13_1_tpl_68_q;
    assign out_c0_exi14_10_tpl = redist23_sync_together88_aunroll_x_in_c0_eni13_9_tpl_68_outputreg0_q;
    assign out_c0_exi14_11_tpl = redist24_sync_together88_aunroll_x_in_c0_eni13_10_tpl_68_outputreg0_q;
    assign out_c0_exi14_12_tpl = redist25_sync_together88_aunroll_x_in_c0_eni13_11_tpl_68_outputreg0_q;
    assign out_c0_exi14_13_tpl = redist26_sync_together88_aunroll_x_in_c0_eni13_12_tpl_68_outputreg0_q;
    assign out_c0_exi14_14_tpl = redist27_sync_together88_aunroll_x_in_c0_eni13_13_tpl_68_outputreg0_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_triangular0 = GND_q;

    // ext_sig_sync_out(GPOUT,42)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_triangular6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_triangular6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_triangular6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_triangular6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,83)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_triangular6_out_pipeline_valid_out;

endmodule
