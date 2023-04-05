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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d0
// Created for function/kernel stencil_2d
// SystemVerilog created on Tue Apr  4 22:01:34 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_i_sfc_logic_s_c0_in_for_cond20000ter19718_stencil_2d0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_stencil_2d2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_stencil_2d2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_c0_exi18_0_tpl,
    output wire [31:0] out_c0_exi18_1_tpl,
    output wire [31:0] out_c0_exi18_2_tpl,
    output wire [31:0] out_c0_exi18_3_tpl,
    output wire [31:0] out_c0_exi18_4_tpl,
    output wire [0:0] out_c0_exi18_5_tpl,
    output wire [0:0] out_c0_exi18_6_tpl,
    output wire [31:0] out_c0_exi18_7_tpl,
    output wire [0:0] out_c0_exi18_8_tpl,
    output wire [0:0] out_c0_exi18_9_tpl,
    output wire [0:0] out_c0_exi18_10_tpl,
    output wire [31:0] out_c0_exi18_11_tpl,
    output wire [31:0] out_c0_exi18_12_tpl,
    output wire [0:0] out_c0_exi18_13_tpl,
    output wire [0:0] out_c0_exi18_14_tpl,
    output wire [31:0] out_c0_exi18_15_tpl,
    output wire [31:0] out_c0_exi18_16_tpl,
    output wire [31:0] out_c0_exi18_17_tpl,
    output wire [0:0] out_c0_exi18_18_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_stencil_2d1,
    input wire [0:0] in_c0_eni9_0_tpl,
    input wire [0:0] in_c0_eni9_1_tpl,
    input wire [31:0] in_c0_eni9_2_tpl,
    input wire [31:0] in_c0_eni9_3_tpl,
    input wire [31:0] in_c0_eni9_4_tpl,
    input wire [0:0] in_c0_eni9_5_tpl,
    input wire [0:0] in_c0_eni9_6_tpl,
    input wire [31:0] in_c0_eni9_7_tpl,
    input wire [31:0] in_c0_eni9_8_tpl,
    input wire [0:0] in_c0_eni9_9_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_046_q;
    wire [31:0] c_i32_147_q;
    wire [2:0] c_i3_149_q;
    wire [2:0] c_i3_151_q;
    wire [32:0] i_add36_stencil_2d7_a;
    wire [32:0] i_add36_stencil_2d7_b;
    logic [32:0] i_add36_stencil_2d7_o;
    wire [32:0] i_add36_stencil_2d7_q;
    wire [31:0] i_dot1_prod_stencil_2d9_vt_join_q;
    wire [30:0] i_dot1_prod_stencil_2d9_vt_select_31_b;
    wire [32:0] i_dot_prod_add_stencil_2d10_a;
    wire [32:0] i_dot_prod_add_stencil_2d10_b;
    logic [32:0] i_dot_prod_add_stencil_2d10_o;
    wire [32:0] i_dot_prod_add_stencil_2d10_q;
    wire [3:0] i_fpga_indvars_iv_next9_stencil_2d18_a;
    wire [3:0] i_fpga_indvars_iv_next9_stencil_2d18_b;
    logic [3:0] i_fpga_indvars_iv_next9_stencil_2d18_o;
    wire [3:0] i_fpga_indvars_iv_next9_stencil_2d18_q;
    wire [32:0] i_inc48_stencil_2d20_a;
    wire [32:0] i_inc48_stencil_2d20_b;
    logic [32:0] i_inc48_stencil_2d20_o;
    wire [32:0] i_inc48_stencil_2d20_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going31_stencil_2d2_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going31_stencil_2d2_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going31_stencil_2d2_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going31_stencil_2d2_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp3492_pop36_stencil_2d26_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp3492_pop36_stencil_2d26_out_feedback_stall_out_36;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp3990_pop35_stencil_2d24_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp3990_pop35_stencil_2d24_out_feedback_stall_out_35;
    wire [31:0] i_llvm_fpga_pop_i32_c_035_pop2794_pop37_stencil_2d8_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_c_035_pop2794_pop37_stencil_2d8_out_feedback_stall_out_37;
    wire [31:0] i_llvm_fpga_pop_i32_k1_034_pop32_stencil_2d3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_k1_034_pop32_stencil_2d3_out_feedback_stall_out_32;
    wire [31:0] i_llvm_fpga_pop_i32_mul5087_pop34_stencil_2d22_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul5087_pop34_stencil_2d22_out_feedback_stall_out_34;
    wire [31:0] i_llvm_fpga_pop_i32_r_036_pop2584_pop33_stencil_2d6_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_r_036_pop2584_pop33_stencil_2d6_out_feedback_stall_out_33;
    wire [2:0] i_llvm_fpga_pop_i3_fpga_indvars_iv8_pop31_stencil_2d11_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i3_fpga_indvars_iv8_pop31_stencil_2d11_out_feedback_stall_out_31;
    wire [0:0] i_llvm_fpga_push_i1_notcmp3492_push36_stencil_2d27_out_feedback_out_36;
    wire [0:0] i_llvm_fpga_push_i1_notcmp3492_push36_stencil_2d27_out_feedback_valid_out_36;
    wire [0:0] i_llvm_fpga_push_i1_notcmp3990_push35_stencil_2d25_out_feedback_out_35;
    wire [0:0] i_llvm_fpga_push_i1_notcmp3990_push35_stencil_2d25_out_feedback_valid_out_35;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond32_stencil_2d17_out_feedback_out_5;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond32_stencil_2d17_out_feedback_valid_out_5;
    wire [31:0] i_llvm_fpga_push_i32_c_035_pop2794_push37_stencil_2d14_out_feedback_out_37;
    wire [0:0] i_llvm_fpga_push_i32_c_035_pop2794_push37_stencil_2d14_out_feedback_valid_out_37;
    wire [31:0] i_llvm_fpga_push_i32_k1_034_push32_stencil_2d21_out_feedback_out_32;
    wire [0:0] i_llvm_fpga_push_i32_k1_034_push32_stencil_2d21_out_feedback_valid_out_32;
    wire [31:0] i_llvm_fpga_push_i32_mul5087_push34_stencil_2d23_out_feedback_out_34;
    wire [0:0] i_llvm_fpga_push_i32_mul5087_push34_stencil_2d23_out_feedback_valid_out_34;
    wire [31:0] i_llvm_fpga_push_i32_r_036_pop2584_push33_stencil_2d15_out_feedback_out_33;
    wire [0:0] i_llvm_fpga_push_i32_r_036_pop2584_push33_stencil_2d15_out_feedback_valid_out_33;
    wire [7:0] i_llvm_fpga_push_i3_fpga_indvars_iv8_push31_stencil_2d19_out_feedback_out_31;
    wire [0:0] i_llvm_fpga_push_i3_fpga_indvars_iv8_push31_stencil_2d19_out_feedback_valid_out_31;
    wire [32:0] i_mul33_add18_stencil_2d5_a;
    wire [32:0] i_mul33_add18_stencil_2d5_b;
    logic [32:0] i_mul33_add18_stencil_2d5_o;
    wire [32:0] i_mul33_add18_stencil_2d5_q;
    wire [0:0] i_notcmp29_stencil_2d16_q;
    wire [31:0] i_unnamed_stencil_2d4_vt_join_q;
    wire [30:0] i_unnamed_stencil_2d4_vt_select_31_b;
    wire [31:0] bgTrunc_i_add36_stencil_2d7_sel_x_b;
    wire [31:0] bgTrunc_i_dot1_prod_stencil_2d9_sel_x_b;
    wire [31:0] bgTrunc_i_dot_prod_add_stencil_2d10_sel_x_b;
    wire [2:0] bgTrunc_i_fpga_indvars_iv_next9_stencil_2d18_sel_x_b;
    wire [31:0] bgTrunc_i_inc48_stencil_2d20_sel_x_b;
    wire [31:0] bgTrunc_i_mul33_add18_stencil_2d5_sel_x_b;
    wire [63:0] i_dot1_prod_stencil_2d9_extender_x_q;
    wire [26:0] i_dot1_prod_stencil_2d9_multconst_x_q;
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
    wire [36:0] i_dot1_prod_stencil_2d9_sums_align_1_q;
    wire [36:0] i_dot1_prod_stencil_2d9_sums_align_1_qint;
    wire [37:0] i_dot1_prod_stencil_2d9_sums_result_add_0_0_a;
    wire [37:0] i_dot1_prod_stencil_2d9_sums_result_add_0_0_b;
    logic [37:0] i_dot1_prod_stencil_2d9_sums_result_add_0_0_o;
    wire [37:0] i_dot1_prod_stencil_2d9_sums_result_add_0_0_q;
    wire [0:0] i_exitcond10_stencil_2d12_cmp_nsign_q;
    wire [30:0] leftShiftStage0Idx1Rng1_uid119_dupName_6_i_unnamed_stencil_2d0_shift_x_in;
    wire [30:0] leftShiftStage0Idx1Rng1_uid119_dupName_6_i_unnamed_stencil_2d0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid120_dupName_6_i_unnamed_stencil_2d0_shift_x_q;
    wire [0:0] leftShiftStage0_uid122_dupName_6_i_unnamed_stencil_2d0_shift_x_s;
    reg [31:0] leftShiftStage0_uid122_dupName_6_i_unnamed_stencil_2d0_shift_x_q;
    wire [14:0] xIfSign_mergedSignalTM_uid148_i_dot1_prod_stencil_2d9_im0_q;
    wire [3:0] padACst_uid152_i_dot1_prod_stencil_2d9_im0_q;
    wire [18:0] aPostPad_uid153_i_dot1_prod_stencil_2d9_im0_q;
    wire [19:0] sub_uid154_i_dot1_prod_stencil_2d9_im0_a;
    wire [19:0] sub_uid154_i_dot1_prod_stencil_2d9_im0_b;
    logic [19:0] sub_uid154_i_dot1_prod_stencil_2d9_im0_o;
    wire [19:0] sub_uid154_i_dot1_prod_stencil_2d9_im0_q;
    wire [17:0] sR_bottomRange_uid158_i_dot1_prod_stencil_2d9_im0_in;
    wire [17:0] sR_bottomRange_uid158_i_dot1_prod_stencil_2d9_im0_b;
    wire [18:0] sR_mergedSignalTM_uid159_i_dot1_prod_stencil_2d9_im0_q;
    wire [18:0] xIfSign_mergedSignalTM_uid204_i_dot1_prod_stencil_2d9_im3_q;
    wire [22:0] aPostPad_uid209_i_dot1_prod_stencil_2d9_im3_q;
    wire [23:0] sub_uid210_i_dot1_prod_stencil_2d9_im3_a;
    wire [23:0] sub_uid210_i_dot1_prod_stencil_2d9_im3_b;
    logic [23:0] sub_uid210_i_dot1_prod_stencil_2d9_im3_o;
    wire [23:0] sub_uid210_i_dot1_prod_stencil_2d9_im3_q;
    wire [21:0] sR_bottomRange_uid214_i_dot1_prod_stencil_2d9_im3_in;
    wire [21:0] sR_bottomRange_uid214_i_dot1_prod_stencil_2d9_im3_b;
    wire [22:0] sR_mergedSignalTM_uid215_i_dot1_prod_stencil_2d9_im3_q;
    wire [13:0] i_dot1_prod_stencil_2d9_bs1_merged_bit_select_b;
    wire [17:0] i_dot1_prod_stencil_2d9_bs1_merged_bit_select_c;
    reg [21:0] redist0_sR_bottomRange_uid214_i_dot1_prod_stencil_2d9_im3_b_1_q;
    reg [17:0] redist1_sR_bottomRange_uid158_i_dot1_prod_stencil_2d9_im0_b_1_q;
    reg [0:0] redist2_i_exitcond10_stencil_2d12_cmp_nsign_q_1_q;
    reg [0:0] redist3_i_exitcond10_stencil_2d12_cmp_nsign_q_2_q;
    reg [0:0] redist4_i_exitcond10_stencil_2d12_cmp_nsign_q_3_q;
    reg [0:0] redist5_sync_together71_aunroll_x_in_c0_eni9_1_tpl_1_q;
    reg [0:0] redist6_sync_together71_aunroll_x_in_c0_eni9_1_tpl_3_q;
    reg [0:0] redist6_sync_together71_aunroll_x_in_c0_eni9_1_tpl_3_delay_0;
    reg [31:0] redist7_sync_together71_aunroll_x_in_c0_eni9_2_tpl_1_q;
    reg [31:0] redist8_sync_together71_aunroll_x_in_c0_eni9_2_tpl_3_q;
    reg [31:0] redist8_sync_together71_aunroll_x_in_c0_eni9_2_tpl_3_delay_0;
    reg [31:0] redist9_sync_together71_aunroll_x_in_c0_eni9_3_tpl_3_q;
    reg [31:0] redist9_sync_together71_aunroll_x_in_c0_eni9_3_tpl_3_delay_0;
    reg [0:0] redist11_sync_together71_aunroll_x_in_c0_eni9_5_tpl_3_q;
    reg [0:0] redist11_sync_together71_aunroll_x_in_c0_eni9_5_tpl_3_delay_0;
    reg [0:0] redist11_sync_together71_aunroll_x_in_c0_eni9_5_tpl_3_delay_1;
    reg [0:0] redist12_sync_together71_aunroll_x_in_c0_eni9_6_tpl_3_q;
    reg [0:0] redist12_sync_together71_aunroll_x_in_c0_eni9_6_tpl_3_delay_0;
    reg [0:0] redist12_sync_together71_aunroll_x_in_c0_eni9_6_tpl_3_delay_1;
    reg [0:0] redist15_sync_together71_aunroll_x_in_c0_eni9_9_tpl_3_q;
    reg [0:0] redist15_sync_together71_aunroll_x_in_c0_eni9_9_tpl_3_delay_0;
    reg [0:0] redist15_sync_together71_aunroll_x_in_c0_eni9_9_tpl_3_delay_1;
    reg [0:0] redist16_sync_together71_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist17_sync_together71_aunroll_x_in_i_valid_2_q;
    reg [31:0] redist18_bgTrunc_i_mul33_add18_stencil_2d5_sel_x_b_1_q;
    reg [31:0] redist19_i_llvm_fpga_pop_i32_r_036_pop2584_pop33_stencil_2d6_out_data_out_1_q;
    reg [31:0] redist20_i_llvm_fpga_pop_i32_r_036_pop2584_pop33_stencil_2d6_out_data_out_2_q;
    reg [31:0] redist21_i_llvm_fpga_pop_i32_k1_034_pop32_stencil_2d3_out_data_out_1_q;
    reg [31:0] redist9_sync_together71_aunroll_x_in_c0_eni9_3_tpl_3_outputreg0_q;
    wire redist10_sync_together71_aunroll_x_in_c0_eni9_4_tpl_3_mem_reset0;
    wire [31:0] redist10_sync_together71_aunroll_x_in_c0_eni9_4_tpl_3_mem_ia;
    wire [0:0] redist10_sync_together71_aunroll_x_in_c0_eni9_4_tpl_3_mem_aa;
    wire [0:0] redist10_sync_together71_aunroll_x_in_c0_eni9_4_tpl_3_mem_ab;
    wire [31:0] redist10_sync_together71_aunroll_x_in_c0_eni9_4_tpl_3_mem_iq;
    wire [31:0] redist10_sync_together71_aunroll_x_in_c0_eni9_4_tpl_3_mem_q;
    wire [0:0] redist10_sync_together71_aunroll_x_in_c0_eni9_4_tpl_3_rdcnt_q;
    (* preserve *) reg [0:0] redist10_sync_together71_aunroll_x_in_c0_eni9_4_tpl_3_rdcnt_i;
    reg [0:0] redist10_sync_together71_aunroll_x_in_c0_eni9_4_tpl_3_wraddr_q;
    (* dont_merge *) reg [0:0] redist10_sync_together71_aunroll_x_in_c0_eni9_4_tpl_3_cmpReg_q;
    wire [0:0] redist10_sync_together71_aunroll_x_in_c0_eni9_4_tpl_3_notEnable_q;
    wire [0:0] redist10_sync_together71_aunroll_x_in_c0_eni9_4_tpl_3_nor_q;
    (* dont_merge *) reg [0:0] redist10_sync_together71_aunroll_x_in_c0_eni9_4_tpl_3_sticky_ena_q;
    wire [0:0] redist10_sync_together71_aunroll_x_in_c0_eni9_4_tpl_3_enaAnd_q;
    wire redist13_sync_together71_aunroll_x_in_c0_eni9_7_tpl_3_mem_reset0;
    wire [31:0] redist13_sync_together71_aunroll_x_in_c0_eni9_7_tpl_3_mem_ia;
    wire [0:0] redist13_sync_together71_aunroll_x_in_c0_eni9_7_tpl_3_mem_aa;
    wire [0:0] redist13_sync_together71_aunroll_x_in_c0_eni9_7_tpl_3_mem_ab;
    wire [31:0] redist13_sync_together71_aunroll_x_in_c0_eni9_7_tpl_3_mem_iq;
    wire [31:0] redist13_sync_together71_aunroll_x_in_c0_eni9_7_tpl_3_mem_q;
    wire [0:0] redist13_sync_together71_aunroll_x_in_c0_eni9_7_tpl_3_rdcnt_q;
    (* preserve *) reg [0:0] redist13_sync_together71_aunroll_x_in_c0_eni9_7_tpl_3_rdcnt_i;
    reg [0:0] redist13_sync_together71_aunroll_x_in_c0_eni9_7_tpl_3_wraddr_q;
    (* dont_merge *) reg [0:0] redist13_sync_together71_aunroll_x_in_c0_eni9_7_tpl_3_cmpReg_q;
    wire [0:0] redist13_sync_together71_aunroll_x_in_c0_eni9_7_tpl_3_notEnable_q;
    wire [0:0] redist13_sync_together71_aunroll_x_in_c0_eni9_7_tpl_3_nor_q;
    (* dont_merge *) reg [0:0] redist13_sync_together71_aunroll_x_in_c0_eni9_7_tpl_3_sticky_ena_q;
    wire [0:0] redist13_sync_together71_aunroll_x_in_c0_eni9_7_tpl_3_enaAnd_q;
    wire redist14_sync_together71_aunroll_x_in_c0_eni9_8_tpl_3_mem_reset0;
    wire [31:0] redist14_sync_together71_aunroll_x_in_c0_eni9_8_tpl_3_mem_ia;
    wire [0:0] redist14_sync_together71_aunroll_x_in_c0_eni9_8_tpl_3_mem_aa;
    wire [0:0] redist14_sync_together71_aunroll_x_in_c0_eni9_8_tpl_3_mem_ab;
    wire [31:0] redist14_sync_together71_aunroll_x_in_c0_eni9_8_tpl_3_mem_iq;
    wire [31:0] redist14_sync_together71_aunroll_x_in_c0_eni9_8_tpl_3_mem_q;
    wire [0:0] redist14_sync_together71_aunroll_x_in_c0_eni9_8_tpl_3_rdcnt_q;
    (* preserve *) reg [0:0] redist14_sync_together71_aunroll_x_in_c0_eni9_8_tpl_3_rdcnt_i;
    reg [0:0] redist14_sync_together71_aunroll_x_in_c0_eni9_8_tpl_3_wraddr_q;
    (* dont_merge *) reg [0:0] redist14_sync_together71_aunroll_x_in_c0_eni9_8_tpl_3_cmpReg_q;
    wire [0:0] redist14_sync_together71_aunroll_x_in_c0_eni9_8_tpl_3_notEnable_q;
    wire [0:0] redist14_sync_together71_aunroll_x_in_c0_eni9_8_tpl_3_nor_q;
    (* dont_merge *) reg [0:0] redist14_sync_together71_aunroll_x_in_c0_eni9_8_tpl_3_sticky_ena_q;
    wire [0:0] redist14_sync_together71_aunroll_x_in_c0_eni9_8_tpl_3_enaAnd_q;


    // c_i3_151(CONSTANT,31)
    assign c_i3_151_q = $unsigned(3'b111);

    // i_fpga_indvars_iv_next9_stencil_2d18(ADD,40)@1
    assign i_fpga_indvars_iv_next9_stencil_2d18_a = {1'b0, i_llvm_fpga_pop_i3_fpga_indvars_iv8_pop31_stencil_2d11_out_data_out};
    assign i_fpga_indvars_iv_next9_stencil_2d18_b = {1'b0, c_i3_151_q};
    assign i_fpga_indvars_iv_next9_stencil_2d18_o = $unsigned(i_fpga_indvars_iv_next9_stencil_2d18_a) + $unsigned(i_fpga_indvars_iv_next9_stencil_2d18_b);
    assign i_fpga_indvars_iv_next9_stencil_2d18_q = i_fpga_indvars_iv_next9_stencil_2d18_o[3:0];

    // bgTrunc_i_fpga_indvars_iv_next9_stencil_2d18_sel_x(BITSELECT,70)@1
    assign bgTrunc_i_fpga_indvars_iv_next9_stencil_2d18_sel_x_b = i_fpga_indvars_iv_next9_stencil_2d18_q[2:0];

    // i_llvm_fpga_push_i3_fpga_indvars_iv8_push31_stencil_2d19(BLACKBOX,57)@1
    // out out_feedback_out_31@20000000
    // out out_feedback_valid_out_31@20000000
    stencil_2d_i_llvm_fpga_push_i3_fpga_indvars_iv8_push31_0 thei_llvm_fpga_push_i3_fpga_indvars_iv8_push31_stencil_2d19 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next9_stencil_2d18_sel_x_b),
        .in_exitcond10(i_exitcond10_stencil_2d12_cmp_nsign_q),
        .in_feedback_stall_in_31(i_llvm_fpga_pop_i3_fpga_indvars_iv8_pop31_stencil_2d11_out_feedback_stall_out_31),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_31(i_llvm_fpga_push_i3_fpga_indvars_iv8_push31_stencil_2d19_out_feedback_out_31),
        .out_feedback_valid_out_31(i_llvm_fpga_push_i3_fpga_indvars_iv8_push31_stencil_2d19_out_feedback_valid_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i3_149(CONSTANT,30)
    assign c_i3_149_q = $unsigned(3'b001);

    // i_llvm_fpga_pop_i3_fpga_indvars_iv8_pop31_stencil_2d11(BLACKBOX,49)@1
    // out out_feedback_stall_out_31@20000000
    stencil_2d_i_llvm_fpga_pop_i3_fpga_indvars_iv8_pop31_0 thei_llvm_fpga_pop_i3_fpga_indvars_iv8_pop31_stencil_2d11 (
        .in_data_in(c_i3_149_q),
        .in_dir(in_c0_eni9_1_tpl),
        .in_feedback_in_31(i_llvm_fpga_push_i3_fpga_indvars_iv8_push31_stencil_2d19_out_feedback_out_31),
        .in_feedback_valid_in_31(i_llvm_fpga_push_i3_fpga_indvars_iv8_push31_stencil_2d19_out_feedback_valid_out_31),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i3_fpga_indvars_iv8_pop31_stencil_2d11_out_data_out),
        .out_feedback_stall_out_31(i_llvm_fpga_pop_i3_fpga_indvars_iv8_pop31_stencil_2d11_out_feedback_stall_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond10_stencil_2d12_cmp_nsign(LOGICAL,114)@1
    assign i_exitcond10_stencil_2d12_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i3_fpga_indvars_iv8_pop31_stencil_2d11_out_data_out[2:2]));

    // i_llvm_fpga_push_i1_notexitcond32_stencil_2d17(BLACKBOX,52)@1
    // out out_feedback_out_5@20000000
    // out out_feedback_valid_out_5@20000000
    stencil_2d_i_llvm_fpga_push_i1_notexitcond32_0 thei_llvm_fpga_push_i1_notexitcond32_stencil_2d17 (
        .in_data_in(i_exitcond10_stencil_2d12_cmp_nsign_q),
        .in_feedback_stall_in_5(i_llvm_fpga_pipeline_keep_going31_stencil_2d2_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_5(i_llvm_fpga_push_i1_notexitcond32_stencil_2d17_out_feedback_out_5),
        .out_feedback_valid_out_5(i_llvm_fpga_push_i1_notexitcond32_stencil_2d17_out_feedback_valid_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_llvm_fpga_pipeline_keep_going31_stencil_2d2(BLACKBOX,42)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    stencil_2d_i_llvm_fpga_pipeline_keep_going31_0 thei_llvm_fpga_pipeline_keep_going31_stencil_2d2 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond32_stencil_2d17_out_feedback_out_5),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond32_stencil_2d17_out_feedback_valid_out_5),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going31_stencil_2d2_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going31_stencil_2d2_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going31_stencil_2d2_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going31_stencil_2d2_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,32)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_stencil_2d2_exiting_valid_out = i_llvm_fpga_pipeline_keep_going31_stencil_2d2_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_stencil_2d2_exiting_stall_out = i_llvm_fpga_pipeline_keep_going31_stencil_2d2_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,65)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going31_stencil_2d2_out_pipeline_valid_out;

    // redist16_sync_together71_aunroll_x_in_i_valid_1(DELAY,258)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together71_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist16_sync_together71_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist17_sync_together71_aunroll_x_in_i_valid_2(DELAY,259)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together71_aunroll_x_in_i_valid_2_q <= '0;
        end
        else
        begin
            redist17_sync_together71_aunroll_x_in_i_valid_2_q <= $unsigned(redist16_sync_together71_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg0(REG,83)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist17_sync_together71_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist11_sync_together71_aunroll_x_in_c0_eni9_5_tpl_3(DELAY,253)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together71_aunroll_x_in_c0_eni9_5_tpl_3_delay_0 <= '0;
            redist11_sync_together71_aunroll_x_in_c0_eni9_5_tpl_3_delay_1 <= '0;
            redist11_sync_together71_aunroll_x_in_c0_eni9_5_tpl_3_q <= '0;
        end
        else
        begin
            redist11_sync_together71_aunroll_x_in_c0_eni9_5_tpl_3_delay_0 <= $unsigned(in_c0_eni9_5_tpl);
            redist11_sync_together71_aunroll_x_in_c0_eni9_5_tpl_3_delay_1 <= redist11_sync_together71_aunroll_x_in_c0_eni9_5_tpl_3_delay_0;
            redist11_sync_together71_aunroll_x_in_c0_eni9_5_tpl_3_q <= redist11_sync_together71_aunroll_x_in_c0_eni9_5_tpl_3_delay_1;
        end
    end

    // redist10_sync_together71_aunroll_x_in_c0_eni9_4_tpl_3_notEnable(LOGICAL,269)
    assign redist10_sync_together71_aunroll_x_in_c0_eni9_4_tpl_3_notEnable_q = $unsigned(~ (VCC_q));

    // redist10_sync_together71_aunroll_x_in_c0_eni9_4_tpl_3_nor(LOGICAL,270)
    assign redist10_sync_together71_aunroll_x_in_c0_eni9_4_tpl_3_nor_q = ~ (redist10_sync_together71_aunroll_x_in_c0_eni9_4_tpl_3_notEnable_q | redist10_sync_together71_aunroll_x_in_c0_eni9_4_tpl_3_sticky_ena_q);

    // redist10_sync_together71_aunroll_x_in_c0_eni9_4_tpl_3_cmpReg(REG,268)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together71_aunroll_x_in_c0_eni9_4_tpl_3_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist10_sync_together71_aunroll_x_in_c0_eni9_4_tpl_3_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist10_sync_together71_aunroll_x_in_c0_eni9_4_tpl_3_sticky_ena(REG,271)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together71_aunroll_x_in_c0_eni9_4_tpl_3_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist10_sync_together71_aunroll_x_in_c0_eni9_4_tpl_3_nor_q == 1'b1)
        begin
            redist10_sync_together71_aunroll_x_in_c0_eni9_4_tpl_3_sticky_ena_q <= $unsigned(redist10_sync_together71_aunroll_x_in_c0_eni9_4_tpl_3_cmpReg_q);
        end
    end

    // redist10_sync_together71_aunroll_x_in_c0_eni9_4_tpl_3_enaAnd(LOGICAL,272)
    assign redist10_sync_together71_aunroll_x_in_c0_eni9_4_tpl_3_enaAnd_q = redist10_sync_together71_aunroll_x_in_c0_eni9_4_tpl_3_sticky_ena_q & VCC_q;

    // redist10_sync_together71_aunroll_x_in_c0_eni9_4_tpl_3_rdcnt(COUNTER,266)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together71_aunroll_x_in_c0_eni9_4_tpl_3_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist10_sync_together71_aunroll_x_in_c0_eni9_4_tpl_3_rdcnt_i <= $unsigned(redist10_sync_together71_aunroll_x_in_c0_eni9_4_tpl_3_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist10_sync_together71_aunroll_x_in_c0_eni9_4_tpl_3_rdcnt_q = redist10_sync_together71_aunroll_x_in_c0_eni9_4_tpl_3_rdcnt_i[0:0];

    // redist10_sync_together71_aunroll_x_in_c0_eni9_4_tpl_3_wraddr(REG,267)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together71_aunroll_x_in_c0_eni9_4_tpl_3_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist10_sync_together71_aunroll_x_in_c0_eni9_4_tpl_3_wraddr_q <= $unsigned(redist10_sync_together71_aunroll_x_in_c0_eni9_4_tpl_3_rdcnt_q);
        end
    end

    // redist10_sync_together71_aunroll_x_in_c0_eni9_4_tpl_3_mem(DUALMEM,265)
    assign redist10_sync_together71_aunroll_x_in_c0_eni9_4_tpl_3_mem_ia = $unsigned(in_c0_eni9_4_tpl);
    assign redist10_sync_together71_aunroll_x_in_c0_eni9_4_tpl_3_mem_aa = redist10_sync_together71_aunroll_x_in_c0_eni9_4_tpl_3_wraddr_q;
    assign redist10_sync_together71_aunroll_x_in_c0_eni9_4_tpl_3_mem_ab = redist10_sync_together71_aunroll_x_in_c0_eni9_4_tpl_3_rdcnt_q;
    assign redist10_sync_together71_aunroll_x_in_c0_eni9_4_tpl_3_mem_reset0 = ~ (resetn);
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
        .intended_device_family("Arria 10")
    ) redist10_sync_together71_aunroll_x_in_c0_eni9_4_tpl_3_mem_dmem (
        .clocken1(redist10_sync_together71_aunroll_x_in_c0_eni9_4_tpl_3_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist10_sync_together71_aunroll_x_in_c0_eni9_4_tpl_3_mem_reset0),
        .clock1(clock),
        .address_a(redist10_sync_together71_aunroll_x_in_c0_eni9_4_tpl_3_mem_aa),
        .data_a(redist10_sync_together71_aunroll_x_in_c0_eni9_4_tpl_3_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist10_sync_together71_aunroll_x_in_c0_eni9_4_tpl_3_mem_ab),
        .q_b(redist10_sync_together71_aunroll_x_in_c0_eni9_4_tpl_3_mem_iq),
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
    assign redist10_sync_together71_aunroll_x_in_c0_eni9_4_tpl_3_mem_q = redist10_sync_together71_aunroll_x_in_c0_eni9_4_tpl_3_mem_iq[31:0];

    // redist7_sync_together71_aunroll_x_in_c0_eni9_2_tpl_1(DELAY,249)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together71_aunroll_x_in_c0_eni9_2_tpl_1_q <= '0;
        end
        else
        begin
            redist7_sync_together71_aunroll_x_in_c0_eni9_2_tpl_1_q <= $unsigned(in_c0_eni9_2_tpl);
        end
    end

    // redist8_sync_together71_aunroll_x_in_c0_eni9_2_tpl_3(DELAY,250)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together71_aunroll_x_in_c0_eni9_2_tpl_3_delay_0 <= '0;
            redist8_sync_together71_aunroll_x_in_c0_eni9_2_tpl_3_q <= '0;
        end
        else
        begin
            redist8_sync_together71_aunroll_x_in_c0_eni9_2_tpl_3_delay_0 <= $unsigned(redist7_sync_together71_aunroll_x_in_c0_eni9_2_tpl_1_q);
            redist8_sync_together71_aunroll_x_in_c0_eni9_2_tpl_3_q <= redist8_sync_together71_aunroll_x_in_c0_eni9_2_tpl_3_delay_0;
        end
    end

    // redist9_sync_together71_aunroll_x_in_c0_eni9_3_tpl_3(DELAY,251)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together71_aunroll_x_in_c0_eni9_3_tpl_3_delay_0 <= '0;
            redist9_sync_together71_aunroll_x_in_c0_eni9_3_tpl_3_q <= '0;
        end
        else
        begin
            redist9_sync_together71_aunroll_x_in_c0_eni9_3_tpl_3_delay_0 <= $unsigned(in_c0_eni9_3_tpl);
            redist9_sync_together71_aunroll_x_in_c0_eni9_3_tpl_3_q <= redist9_sync_together71_aunroll_x_in_c0_eni9_3_tpl_3_delay_0;
        end
    end

    // redist9_sync_together71_aunroll_x_in_c0_eni9_3_tpl_3_outputreg0(DELAY,264)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together71_aunroll_x_in_c0_eni9_3_tpl_3_outputreg0_q <= '0;
        end
        else
        begin
            redist9_sync_together71_aunroll_x_in_c0_eni9_3_tpl_3_outputreg0_q <= $unsigned(redist9_sync_together71_aunroll_x_in_c0_eni9_3_tpl_3_q);
        end
    end

    // redist12_sync_together71_aunroll_x_in_c0_eni9_6_tpl_3(DELAY,254)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together71_aunroll_x_in_c0_eni9_6_tpl_3_delay_0 <= '0;
            redist12_sync_together71_aunroll_x_in_c0_eni9_6_tpl_3_delay_1 <= '0;
            redist12_sync_together71_aunroll_x_in_c0_eni9_6_tpl_3_q <= '0;
        end
        else
        begin
            redist12_sync_together71_aunroll_x_in_c0_eni9_6_tpl_3_delay_0 <= $unsigned(in_c0_eni9_6_tpl);
            redist12_sync_together71_aunroll_x_in_c0_eni9_6_tpl_3_delay_1 <= redist12_sync_together71_aunroll_x_in_c0_eni9_6_tpl_3_delay_0;
            redist12_sync_together71_aunroll_x_in_c0_eni9_6_tpl_3_q <= redist12_sync_together71_aunroll_x_in_c0_eni9_6_tpl_3_delay_1;
        end
    end

    // redist15_sync_together71_aunroll_x_in_c0_eni9_9_tpl_3(DELAY,257)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together71_aunroll_x_in_c0_eni9_9_tpl_3_delay_0 <= '0;
            redist15_sync_together71_aunroll_x_in_c0_eni9_9_tpl_3_delay_1 <= '0;
            redist15_sync_together71_aunroll_x_in_c0_eni9_9_tpl_3_q <= '0;
        end
        else
        begin
            redist15_sync_together71_aunroll_x_in_c0_eni9_9_tpl_3_delay_0 <= $unsigned(in_c0_eni9_9_tpl);
            redist15_sync_together71_aunroll_x_in_c0_eni9_9_tpl_3_delay_1 <= redist15_sync_together71_aunroll_x_in_c0_eni9_9_tpl_3_delay_0;
            redist15_sync_together71_aunroll_x_in_c0_eni9_9_tpl_3_q <= redist15_sync_together71_aunroll_x_in_c0_eni9_9_tpl_3_delay_1;
        end
    end

    // redist14_sync_together71_aunroll_x_in_c0_eni9_8_tpl_3_notEnable(LOGICAL,285)
    assign redist14_sync_together71_aunroll_x_in_c0_eni9_8_tpl_3_notEnable_q = $unsigned(~ (VCC_q));

    // redist14_sync_together71_aunroll_x_in_c0_eni9_8_tpl_3_nor(LOGICAL,286)
    assign redist14_sync_together71_aunroll_x_in_c0_eni9_8_tpl_3_nor_q = ~ (redist14_sync_together71_aunroll_x_in_c0_eni9_8_tpl_3_notEnable_q | redist14_sync_together71_aunroll_x_in_c0_eni9_8_tpl_3_sticky_ena_q);

    // redist14_sync_together71_aunroll_x_in_c0_eni9_8_tpl_3_cmpReg(REG,284)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together71_aunroll_x_in_c0_eni9_8_tpl_3_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist14_sync_together71_aunroll_x_in_c0_eni9_8_tpl_3_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist14_sync_together71_aunroll_x_in_c0_eni9_8_tpl_3_sticky_ena(REG,287)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together71_aunroll_x_in_c0_eni9_8_tpl_3_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist14_sync_together71_aunroll_x_in_c0_eni9_8_tpl_3_nor_q == 1'b1)
        begin
            redist14_sync_together71_aunroll_x_in_c0_eni9_8_tpl_3_sticky_ena_q <= $unsigned(redist14_sync_together71_aunroll_x_in_c0_eni9_8_tpl_3_cmpReg_q);
        end
    end

    // redist14_sync_together71_aunroll_x_in_c0_eni9_8_tpl_3_enaAnd(LOGICAL,288)
    assign redist14_sync_together71_aunroll_x_in_c0_eni9_8_tpl_3_enaAnd_q = redist14_sync_together71_aunroll_x_in_c0_eni9_8_tpl_3_sticky_ena_q & VCC_q;

    // redist14_sync_together71_aunroll_x_in_c0_eni9_8_tpl_3_rdcnt(COUNTER,282)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together71_aunroll_x_in_c0_eni9_8_tpl_3_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist14_sync_together71_aunroll_x_in_c0_eni9_8_tpl_3_rdcnt_i <= $unsigned(redist14_sync_together71_aunroll_x_in_c0_eni9_8_tpl_3_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist14_sync_together71_aunroll_x_in_c0_eni9_8_tpl_3_rdcnt_q = redist14_sync_together71_aunroll_x_in_c0_eni9_8_tpl_3_rdcnt_i[0:0];

    // redist14_sync_together71_aunroll_x_in_c0_eni9_8_tpl_3_wraddr(REG,283)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together71_aunroll_x_in_c0_eni9_8_tpl_3_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist14_sync_together71_aunroll_x_in_c0_eni9_8_tpl_3_wraddr_q <= $unsigned(redist14_sync_together71_aunroll_x_in_c0_eni9_8_tpl_3_rdcnt_q);
        end
    end

    // redist14_sync_together71_aunroll_x_in_c0_eni9_8_tpl_3_mem(DUALMEM,281)
    assign redist14_sync_together71_aunroll_x_in_c0_eni9_8_tpl_3_mem_ia = $unsigned(in_c0_eni9_8_tpl);
    assign redist14_sync_together71_aunroll_x_in_c0_eni9_8_tpl_3_mem_aa = redist14_sync_together71_aunroll_x_in_c0_eni9_8_tpl_3_wraddr_q;
    assign redist14_sync_together71_aunroll_x_in_c0_eni9_8_tpl_3_mem_ab = redist14_sync_together71_aunroll_x_in_c0_eni9_8_tpl_3_rdcnt_q;
    assign redist14_sync_together71_aunroll_x_in_c0_eni9_8_tpl_3_mem_reset0 = ~ (resetn);
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
        .intended_device_family("Arria 10")
    ) redist14_sync_together71_aunroll_x_in_c0_eni9_8_tpl_3_mem_dmem (
        .clocken1(redist14_sync_together71_aunroll_x_in_c0_eni9_8_tpl_3_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist14_sync_together71_aunroll_x_in_c0_eni9_8_tpl_3_mem_reset0),
        .clock1(clock),
        .address_a(redist14_sync_together71_aunroll_x_in_c0_eni9_8_tpl_3_mem_aa),
        .data_a(redist14_sync_together71_aunroll_x_in_c0_eni9_8_tpl_3_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist14_sync_together71_aunroll_x_in_c0_eni9_8_tpl_3_mem_ab),
        .q_b(redist14_sync_together71_aunroll_x_in_c0_eni9_8_tpl_3_mem_iq),
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
    assign redist14_sync_together71_aunroll_x_in_c0_eni9_8_tpl_3_mem_q = redist14_sync_together71_aunroll_x_in_c0_eni9_8_tpl_3_mem_iq[31:0];

    // redist13_sync_together71_aunroll_x_in_c0_eni9_7_tpl_3_notEnable(LOGICAL,277)
    assign redist13_sync_together71_aunroll_x_in_c0_eni9_7_tpl_3_notEnable_q = $unsigned(~ (VCC_q));

    // redist13_sync_together71_aunroll_x_in_c0_eni9_7_tpl_3_nor(LOGICAL,278)
    assign redist13_sync_together71_aunroll_x_in_c0_eni9_7_tpl_3_nor_q = ~ (redist13_sync_together71_aunroll_x_in_c0_eni9_7_tpl_3_notEnable_q | redist13_sync_together71_aunroll_x_in_c0_eni9_7_tpl_3_sticky_ena_q);

    // redist13_sync_together71_aunroll_x_in_c0_eni9_7_tpl_3_cmpReg(REG,276)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together71_aunroll_x_in_c0_eni9_7_tpl_3_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist13_sync_together71_aunroll_x_in_c0_eni9_7_tpl_3_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist13_sync_together71_aunroll_x_in_c0_eni9_7_tpl_3_sticky_ena(REG,279)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together71_aunroll_x_in_c0_eni9_7_tpl_3_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist13_sync_together71_aunroll_x_in_c0_eni9_7_tpl_3_nor_q == 1'b1)
        begin
            redist13_sync_together71_aunroll_x_in_c0_eni9_7_tpl_3_sticky_ena_q <= $unsigned(redist13_sync_together71_aunroll_x_in_c0_eni9_7_tpl_3_cmpReg_q);
        end
    end

    // redist13_sync_together71_aunroll_x_in_c0_eni9_7_tpl_3_enaAnd(LOGICAL,280)
    assign redist13_sync_together71_aunroll_x_in_c0_eni9_7_tpl_3_enaAnd_q = redist13_sync_together71_aunroll_x_in_c0_eni9_7_tpl_3_sticky_ena_q & VCC_q;

    // redist13_sync_together71_aunroll_x_in_c0_eni9_7_tpl_3_rdcnt(COUNTER,274)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together71_aunroll_x_in_c0_eni9_7_tpl_3_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist13_sync_together71_aunroll_x_in_c0_eni9_7_tpl_3_rdcnt_i <= $unsigned(redist13_sync_together71_aunroll_x_in_c0_eni9_7_tpl_3_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist13_sync_together71_aunroll_x_in_c0_eni9_7_tpl_3_rdcnt_q = redist13_sync_together71_aunroll_x_in_c0_eni9_7_tpl_3_rdcnt_i[0:0];

    // redist13_sync_together71_aunroll_x_in_c0_eni9_7_tpl_3_wraddr(REG,275)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together71_aunroll_x_in_c0_eni9_7_tpl_3_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist13_sync_together71_aunroll_x_in_c0_eni9_7_tpl_3_wraddr_q <= $unsigned(redist13_sync_together71_aunroll_x_in_c0_eni9_7_tpl_3_rdcnt_q);
        end
    end

    // redist13_sync_together71_aunroll_x_in_c0_eni9_7_tpl_3_mem(DUALMEM,273)
    assign redist13_sync_together71_aunroll_x_in_c0_eni9_7_tpl_3_mem_ia = $unsigned(in_c0_eni9_7_tpl);
    assign redist13_sync_together71_aunroll_x_in_c0_eni9_7_tpl_3_mem_aa = redist13_sync_together71_aunroll_x_in_c0_eni9_7_tpl_3_wraddr_q;
    assign redist13_sync_together71_aunroll_x_in_c0_eni9_7_tpl_3_mem_ab = redist13_sync_together71_aunroll_x_in_c0_eni9_7_tpl_3_rdcnt_q;
    assign redist13_sync_together71_aunroll_x_in_c0_eni9_7_tpl_3_mem_reset0 = ~ (resetn);
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
        .intended_device_family("Arria 10")
    ) redist13_sync_together71_aunroll_x_in_c0_eni9_7_tpl_3_mem_dmem (
        .clocken1(redist13_sync_together71_aunroll_x_in_c0_eni9_7_tpl_3_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist13_sync_together71_aunroll_x_in_c0_eni9_7_tpl_3_mem_reset0),
        .clock1(clock),
        .address_a(redist13_sync_together71_aunroll_x_in_c0_eni9_7_tpl_3_mem_aa),
        .data_a(redist13_sync_together71_aunroll_x_in_c0_eni9_7_tpl_3_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist13_sync_together71_aunroll_x_in_c0_eni9_7_tpl_3_mem_ab),
        .q_b(redist13_sync_together71_aunroll_x_in_c0_eni9_7_tpl_3_mem_iq),
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
    assign redist13_sync_together71_aunroll_x_in_c0_eni9_7_tpl_3_mem_q = redist13_sync_together71_aunroll_x_in_c0_eni9_7_tpl_3_mem_iq[31:0];

    // redist5_sync_together71_aunroll_x_in_c0_eni9_1_tpl_1(DELAY,247)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together71_aunroll_x_in_c0_eni9_1_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together71_aunroll_x_in_c0_eni9_1_tpl_1_q <= $unsigned(in_c0_eni9_1_tpl);
        end
    end

    // redist6_sync_together71_aunroll_x_in_c0_eni9_1_tpl_3(DELAY,248)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together71_aunroll_x_in_c0_eni9_1_tpl_3_delay_0 <= '0;
            redist6_sync_together71_aunroll_x_in_c0_eni9_1_tpl_3_q <= '0;
        end
        else
        begin
            redist6_sync_together71_aunroll_x_in_c0_eni9_1_tpl_3_delay_0 <= $unsigned(redist5_sync_together71_aunroll_x_in_c0_eni9_1_tpl_1_q);
            redist6_sync_together71_aunroll_x_in_c0_eni9_1_tpl_3_q <= redist6_sync_together71_aunroll_x_in_c0_eni9_1_tpl_3_delay_0;
        end
    end

    // valid_fanout_reg11(REG,94)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist17_sync_together71_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg12(REG,95)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist17_sync_together71_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp3492_push36_stencil_2d27(BLACKBOX,50)@4
    // out out_feedback_out_36@20000000
    // out out_feedback_valid_out_36@20000000
    stencil_2d_i_llvm_fpga_push_i1_notcmp3492_push36_0 thei_llvm_fpga_push_i1_notcmp3492_push36_stencil_2d27 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp3492_pop36_stencil_2d26_out_data_out),
        .in_exitcond10(redist4_i_exitcond10_stencil_2d12_cmp_nsign_q_3_q),
        .in_feedback_stall_in_36(i_llvm_fpga_pop_i1_notcmp3492_pop36_stencil_2d26_out_feedback_stall_out_36),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(),
        .out_feedback_out_36(i_llvm_fpga_push_i1_notcmp3492_push36_stencil_2d27_out_feedback_out_36),
        .out_feedback_valid_out_36(i_llvm_fpga_push_i1_notcmp3492_push36_stencil_2d27_out_feedback_valid_out_36),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_notcmp3492_pop36_stencil_2d26(BLACKBOX,43)@4
    // out out_feedback_stall_out_36@20000000
    stencil_2d_i_llvm_fpga_pop_i1_notcmp3492_pop36_0 thei_llvm_fpga_pop_i1_notcmp3492_pop36_stencil_2d26 (
        .in_data_in(redist12_sync_together71_aunroll_x_in_c0_eni9_6_tpl_3_q),
        .in_dir(redist6_sync_together71_aunroll_x_in_c0_eni9_1_tpl_3_q),
        .in_feedback_in_36(i_llvm_fpga_push_i1_notcmp3492_push36_stencil_2d27_out_feedback_out_36),
        .in_feedback_valid_in_36(i_llvm_fpga_push_i1_notcmp3492_push36_stencil_2d27_out_feedback_valid_out_36),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp3492_pop36_stencil_2d26_out_data_out),
        .out_feedback_stall_out_36(i_llvm_fpga_pop_i1_notcmp3492_pop36_stencil_2d26_out_feedback_stall_out_36),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg9(REG,92)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist17_sync_together71_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg10(REG,93)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist17_sync_together71_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp3990_push35_stencil_2d25(BLACKBOX,51)@4
    // out out_feedback_out_35@20000000
    // out out_feedback_valid_out_35@20000000
    stencil_2d_i_llvm_fpga_push_i1_notcmp3990_push35_0 thei_llvm_fpga_push_i1_notcmp3990_push35_stencil_2d25 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp3990_pop35_stencil_2d24_out_data_out),
        .in_exitcond10(redist4_i_exitcond10_stencil_2d12_cmp_nsign_q_3_q),
        .in_feedback_stall_in_35(i_llvm_fpga_pop_i1_notcmp3990_pop35_stencil_2d24_out_feedback_stall_out_35),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_35(i_llvm_fpga_push_i1_notcmp3990_push35_stencil_2d25_out_feedback_out_35),
        .out_feedback_valid_out_35(i_llvm_fpga_push_i1_notcmp3990_push35_stencil_2d25_out_feedback_valid_out_35),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_notcmp3990_pop35_stencil_2d24(BLACKBOX,44)@4
    // out out_feedback_stall_out_35@20000000
    stencil_2d_i_llvm_fpga_pop_i1_notcmp3990_pop35_0 thei_llvm_fpga_pop_i1_notcmp3990_pop35_stencil_2d24 (
        .in_data_in(redist11_sync_together71_aunroll_x_in_c0_eni9_5_tpl_3_q),
        .in_dir(redist6_sync_together71_aunroll_x_in_c0_eni9_1_tpl_3_q),
        .in_feedback_in_35(i_llvm_fpga_push_i1_notcmp3990_push35_stencil_2d25_out_feedback_out_35),
        .in_feedback_valid_in_35(i_llvm_fpga_push_i1_notcmp3990_push35_stencil_2d25_out_feedback_valid_out_35),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp3990_pop35_stencil_2d24_out_data_out),
        .out_feedback_stall_out_35(i_llvm_fpga_pop_i1_notcmp3990_pop35_stencil_2d24_out_feedback_stall_out_35),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg7(REG,90)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist17_sync_together71_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg8(REG,91)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist17_sync_together71_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i32_mul5087_push34_stencil_2d23(BLACKBOX,55)@4
    // out out_feedback_out_34@20000000
    // out out_feedback_valid_out_34@20000000
    stencil_2d_i_llvm_fpga_push_i32_mul5087_push34_0 thei_llvm_fpga_push_i32_mul5087_push34_stencil_2d23 (
        .in_data_in(i_llvm_fpga_pop_i32_mul5087_pop34_stencil_2d22_out_data_out),
        .in_exitcond10(redist4_i_exitcond10_stencil_2d12_cmp_nsign_q_3_q),
        .in_feedback_stall_in_34(i_llvm_fpga_pop_i32_mul5087_pop34_stencil_2d22_out_feedback_stall_out_34),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_34(i_llvm_fpga_push_i32_mul5087_push34_stencil_2d23_out_feedback_out_34),
        .out_feedback_valid_out_34(i_llvm_fpga_push_i32_mul5087_push34_stencil_2d23_out_feedback_valid_out_34),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_mul5087_pop34_stencil_2d22(BLACKBOX,47)@4
    // out out_feedback_stall_out_34@20000000
    stencil_2d_i_llvm_fpga_pop_i32_mul5087_pop34_0 thei_llvm_fpga_pop_i32_mul5087_pop34_stencil_2d22 (
        .in_data_in(redist10_sync_together71_aunroll_x_in_c0_eni9_4_tpl_3_mem_q),
        .in_dir(redist6_sync_together71_aunroll_x_in_c0_eni9_1_tpl_3_q),
        .in_feedback_in_34(i_llvm_fpga_push_i32_mul5087_push34_stencil_2d23_out_feedback_out_34),
        .in_feedback_valid_in_34(i_llvm_fpga_push_i32_mul5087_push34_stencil_2d23_out_feedback_valid_out_34),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_i32_mul5087_pop34_stencil_2d22_out_data_out),
        .out_feedback_stall_out_34(i_llvm_fpga_pop_i32_mul5087_pop34_stencil_2d22_out_feedback_stall_out_34),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_notcmp29_stencil_2d16(LOGICAL,59)@4
    assign i_notcmp29_stencil_2d16_q = redist4_i_exitcond10_stencil_2d12_cmp_nsign_q_3_q ^ VCC_q;

    // redist2_i_exitcond10_stencil_2d12_cmp_nsign_q_1(DELAY,244)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_exitcond10_stencil_2d12_cmp_nsign_q_1_q <= '0;
        end
        else
        begin
            redist2_i_exitcond10_stencil_2d12_cmp_nsign_q_1_q <= $unsigned(i_exitcond10_stencil_2d12_cmp_nsign_q);
        end
    end

    // redist3_i_exitcond10_stencil_2d12_cmp_nsign_q_2(DELAY,245)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_exitcond10_stencil_2d12_cmp_nsign_q_2_q <= '0;
        end
        else
        begin
            redist3_i_exitcond10_stencil_2d12_cmp_nsign_q_2_q <= $unsigned(redist2_i_exitcond10_stencil_2d12_cmp_nsign_q_1_q);
        end
    end

    // redist4_i_exitcond10_stencil_2d12_cmp_nsign_q_3(DELAY,246)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_exitcond10_stencil_2d12_cmp_nsign_q_3_q <= '0;
        end
        else
        begin
            redist4_i_exitcond10_stencil_2d12_cmp_nsign_q_3_q <= $unsigned(redist3_i_exitcond10_stencil_2d12_cmp_nsign_q_2_q);
        end
    end

    // i_dot1_prod_stencil_2d9_multconst_x(CONSTANT,76)
    assign i_dot1_prod_stencil_2d9_multconst_x_q = $unsigned(27'b000000000000000000000000000);

    // valid_fanout_reg2(REG,85)@1 + 1
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

    // valid_fanout_reg5(REG,88)@1 + 1
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

    // i_llvm_fpga_push_i32_r_036_pop2584_push33_stencil_2d15(BLACKBOX,56)@2
    // out out_feedback_out_33@20000000
    // out out_feedback_valid_out_33@20000000
    stencil_2d_i_llvm_fpga_push_i32_r_036_pop2584_push33_0 thei_llvm_fpga_push_i32_r_036_pop2584_push33_stencil_2d15 (
        .in_data_in(i_llvm_fpga_pop_i32_r_036_pop2584_pop33_stencil_2d6_out_data_out),
        .in_exitcond10(redist2_i_exitcond10_stencil_2d12_cmp_nsign_q_1_q),
        .in_feedback_stall_in_33(i_llvm_fpga_pop_i32_r_036_pop2584_pop33_stencil_2d6_out_feedback_stall_out_33),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_33(i_llvm_fpga_push_i32_r_036_pop2584_push33_stencil_2d15_out_feedback_out_33),
        .out_feedback_valid_out_33(i_llvm_fpga_push_i32_r_036_pop2584_push33_stencil_2d15_out_feedback_valid_out_33),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_r_036_pop2584_pop33_stencil_2d6(BLACKBOX,48)@2
    // out out_feedback_stall_out_33@20000000
    stencil_2d_i_llvm_fpga_pop_i32_r_036_pop2584_pop33_0 thei_llvm_fpga_pop_i32_r_036_pop2584_pop33_stencil_2d6 (
        .in_data_in(redist7_sync_together71_aunroll_x_in_c0_eni9_2_tpl_1_q),
        .in_dir(redist5_sync_together71_aunroll_x_in_c0_eni9_1_tpl_1_q),
        .in_feedback_in_33(i_llvm_fpga_push_i32_r_036_pop2584_push33_stencil_2d15_out_feedback_out_33),
        .in_feedback_valid_in_33(i_llvm_fpga_push_i32_r_036_pop2584_push33_stencil_2d15_out_feedback_valid_out_33),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_i32_r_036_pop2584_pop33_stencil_2d6_out_data_out),
        .out_feedback_stall_out_33(i_llvm_fpga_pop_i32_r_036_pop2584_pop33_stencil_2d6_out_feedback_stall_out_33),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist19_i_llvm_fpga_pop_i32_r_036_pop2584_pop33_stencil_2d6_out_data_out_1(DELAY,261)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_llvm_fpga_pop_i32_r_036_pop2584_pop33_stencil_2d6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist19_i_llvm_fpga_pop_i32_r_036_pop2584_pop33_stencil_2d6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_r_036_pop2584_pop33_stencil_2d6_out_data_out);
        end
    end

    // valid_fanout_reg1(REG,84)@1 + 1
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

    // valid_fanout_reg6(REG,89)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist16_sync_together71_aunroll_x_in_i_valid_1_q);
        end
    end

    // c_i32_147(CONSTANT,28)
    assign c_i32_147_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc48_stencil_2d20(ADD,41)@3
    assign i_inc48_stencil_2d20_a = {1'b0, redist21_i_llvm_fpga_pop_i32_k1_034_pop32_stencil_2d3_out_data_out_1_q};
    assign i_inc48_stencil_2d20_b = {1'b0, c_i32_147_q};
    assign i_inc48_stencil_2d20_o = $unsigned(i_inc48_stencil_2d20_a) + $unsigned(i_inc48_stencil_2d20_b);
    assign i_inc48_stencil_2d20_q = i_inc48_stencil_2d20_o[32:0];

    // bgTrunc_i_inc48_stencil_2d20_sel_x(BITSELECT,71)@3
    assign bgTrunc_i_inc48_stencil_2d20_sel_x_b = i_inc48_stencil_2d20_q[31:0];

    // i_llvm_fpga_push_i32_k1_034_push32_stencil_2d21(BLACKBOX,54)@3
    // out out_feedback_out_32@20000000
    // out out_feedback_valid_out_32@20000000
    stencil_2d_i_llvm_fpga_push_i32_k1_034_push32_0 thei_llvm_fpga_push_i32_k1_034_push32_stencil_2d21 (
        .in_data_in(bgTrunc_i_inc48_stencil_2d20_sel_x_b),
        .in_exitcond10(redist3_i_exitcond10_stencil_2d12_cmp_nsign_q_2_q),
        .in_feedback_stall_in_32(i_llvm_fpga_pop_i32_k1_034_pop32_stencil_2d3_out_feedback_stall_out_32),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_32(i_llvm_fpga_push_i32_k1_034_push32_stencil_2d21_out_feedback_out_32),
        .out_feedback_valid_out_32(i_llvm_fpga_push_i32_k1_034_push32_stencil_2d21_out_feedback_valid_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_046(CONSTANT,27)
    assign c_i32_046_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_k1_034_pop32_stencil_2d3(BLACKBOX,46)@2
    // out out_feedback_stall_out_32@20000000
    stencil_2d_i_llvm_fpga_pop_i32_k1_034_pop32_0 thei_llvm_fpga_pop_i32_k1_034_pop32_stencil_2d3 (
        .in_data_in(c_i32_046_q),
        .in_dir(redist5_sync_together71_aunroll_x_in_c0_eni9_1_tpl_1_q),
        .in_feedback_in_32(i_llvm_fpga_push_i32_k1_034_push32_stencil_2d21_out_feedback_out_32),
        .in_feedback_valid_in_32(i_llvm_fpga_push_i32_k1_034_push32_stencil_2d21_out_feedback_valid_out_32),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i32_k1_034_pop32_stencil_2d3_out_data_out),
        .out_feedback_stall_out_32(i_llvm_fpga_pop_i32_k1_034_pop32_stencil_2d3_out_feedback_stall_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist21_i_llvm_fpga_pop_i32_k1_034_pop32_stencil_2d3_out_data_out_1(DELAY,263)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_llvm_fpga_pop_i32_k1_034_pop32_stencil_2d3_out_data_out_1_q <= '0;
        end
        else
        begin
            redist21_i_llvm_fpga_pop_i32_k1_034_pop32_stencil_2d3_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_k1_034_pop32_stencil_2d3_out_data_out);
        end
    end

    // i_add36_stencil_2d7(ADD,33)@3
    assign i_add36_stencil_2d7_a = {1'b0, redist21_i_llvm_fpga_pop_i32_k1_034_pop32_stencil_2d3_out_data_out_1_q};
    assign i_add36_stencil_2d7_b = {1'b0, redist19_i_llvm_fpga_pop_i32_r_036_pop2584_pop33_stencil_2d6_out_data_out_1_q};
    assign i_add36_stencil_2d7_o = $unsigned(i_add36_stencil_2d7_a) + $unsigned(i_add36_stencil_2d7_b);
    assign i_add36_stencil_2d7_q = i_add36_stencil_2d7_o[32:0];

    // bgTrunc_i_add36_stencil_2d7_sel_x(BITSELECT,67)@3
    assign bgTrunc_i_add36_stencil_2d7_sel_x_b = i_add36_stencil_2d7_q[31:0];

    // i_dot1_prod_stencil_2d9_bs1_merged_bit_select(BITSELECT,241)@3
    assign i_dot1_prod_stencil_2d9_bs1_merged_bit_select_b = bgTrunc_i_add36_stencil_2d7_sel_x_b[31:18];
    assign i_dot1_prod_stencil_2d9_bs1_merged_bit_select_c = bgTrunc_i_add36_stencil_2d7_sel_x_b[17:0];

    // xIfSign_mergedSignalTM_uid148_i_dot1_prod_stencil_2d9_im0(BITJOIN,147)@3
    assign xIfSign_mergedSignalTM_uid148_i_dot1_prod_stencil_2d9_im0_q = {GND_q, i_dot1_prod_stencil_2d9_bs1_merged_bit_select_b};

    // padACst_uid152_i_dot1_prod_stencil_2d9_im0(CONSTANT,151)
    assign padACst_uid152_i_dot1_prod_stencil_2d9_im0_q = $unsigned(4'b0000);

    // aPostPad_uid153_i_dot1_prod_stencil_2d9_im0(BITJOIN,152)@3
    assign aPostPad_uid153_i_dot1_prod_stencil_2d9_im0_q = {xIfSign_mergedSignalTM_uid148_i_dot1_prod_stencil_2d9_im0_q, padACst_uid152_i_dot1_prod_stencil_2d9_im0_q};

    // sub_uid154_i_dot1_prod_stencil_2d9_im0(SUB,153)@3
    assign sub_uid154_i_dot1_prod_stencil_2d9_im0_a = $unsigned({{1{aPostPad_uid153_i_dot1_prod_stencil_2d9_im0_q[18]}}, aPostPad_uid153_i_dot1_prod_stencil_2d9_im0_q});
    assign sub_uid154_i_dot1_prod_stencil_2d9_im0_b = $unsigned({{5{xIfSign_mergedSignalTM_uid148_i_dot1_prod_stencil_2d9_im0_q[14]}}, xIfSign_mergedSignalTM_uid148_i_dot1_prod_stencil_2d9_im0_q});
    assign sub_uid154_i_dot1_prod_stencil_2d9_im0_o = $unsigned($signed(sub_uid154_i_dot1_prod_stencil_2d9_im0_a) - $signed(sub_uid154_i_dot1_prod_stencil_2d9_im0_b));
    assign sub_uid154_i_dot1_prod_stencil_2d9_im0_q = sub_uid154_i_dot1_prod_stencil_2d9_im0_o[19:0];

    // sR_bottomRange_uid158_i_dot1_prod_stencil_2d9_im0(BITSELECT,157)@3
    assign sR_bottomRange_uid158_i_dot1_prod_stencil_2d9_im0_in = $unsigned(sub_uid154_i_dot1_prod_stencil_2d9_im0_q[17:0]);
    assign sR_bottomRange_uid158_i_dot1_prod_stencil_2d9_im0_b = $unsigned(sR_bottomRange_uid158_i_dot1_prod_stencil_2d9_im0_in[17:0]);

    // redist1_sR_bottomRange_uid158_i_dot1_prod_stencil_2d9_im0_b_1(DELAY,243)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sR_bottomRange_uid158_i_dot1_prod_stencil_2d9_im0_b_1_q <= '0;
        end
        else
        begin
            redist1_sR_bottomRange_uid158_i_dot1_prod_stencil_2d9_im0_b_1_q <= $unsigned(sR_bottomRange_uid158_i_dot1_prod_stencil_2d9_im0_b);
        end
    end

    // sR_mergedSignalTM_uid159_i_dot1_prod_stencil_2d9_im0(BITJOIN,158)@4
    assign sR_mergedSignalTM_uid159_i_dot1_prod_stencil_2d9_im0_q = {redist1_sR_bottomRange_uid158_i_dot1_prod_stencil_2d9_im0_b_1_q, GND_q};

    // i_dot1_prod_stencil_2d9_sums_align_1(BITSHIFT,110)@4
    assign i_dot1_prod_stencil_2d9_sums_align_1_qint = { sR_mergedSignalTM_uid159_i_dot1_prod_stencil_2d9_im0_q, 18'b000000000000000000 };
    assign i_dot1_prod_stencil_2d9_sums_align_1_q = i_dot1_prod_stencil_2d9_sums_align_1_qint[36:0];

    // xIfSign_mergedSignalTM_uid204_i_dot1_prod_stencil_2d9_im3(BITJOIN,203)@3
    assign xIfSign_mergedSignalTM_uid204_i_dot1_prod_stencil_2d9_im3_q = {GND_q, i_dot1_prod_stencil_2d9_bs1_merged_bit_select_c};

    // aPostPad_uid209_i_dot1_prod_stencil_2d9_im3(BITJOIN,208)@3
    assign aPostPad_uid209_i_dot1_prod_stencil_2d9_im3_q = {xIfSign_mergedSignalTM_uid204_i_dot1_prod_stencil_2d9_im3_q, padACst_uid152_i_dot1_prod_stencil_2d9_im0_q};

    // sub_uid210_i_dot1_prod_stencil_2d9_im3(SUB,209)@3
    assign sub_uid210_i_dot1_prod_stencil_2d9_im3_a = $unsigned({{1{aPostPad_uid209_i_dot1_prod_stencil_2d9_im3_q[22]}}, aPostPad_uid209_i_dot1_prod_stencil_2d9_im3_q});
    assign sub_uid210_i_dot1_prod_stencil_2d9_im3_b = $unsigned({{5{xIfSign_mergedSignalTM_uid204_i_dot1_prod_stencil_2d9_im3_q[18]}}, xIfSign_mergedSignalTM_uid204_i_dot1_prod_stencil_2d9_im3_q});
    assign sub_uid210_i_dot1_prod_stencil_2d9_im3_o = $unsigned($signed(sub_uid210_i_dot1_prod_stencil_2d9_im3_a) - $signed(sub_uid210_i_dot1_prod_stencil_2d9_im3_b));
    assign sub_uid210_i_dot1_prod_stencil_2d9_im3_q = sub_uid210_i_dot1_prod_stencil_2d9_im3_o[23:0];

    // sR_bottomRange_uid214_i_dot1_prod_stencil_2d9_im3(BITSELECT,213)@3
    assign sR_bottomRange_uid214_i_dot1_prod_stencil_2d9_im3_in = $unsigned(sub_uid210_i_dot1_prod_stencil_2d9_im3_q[21:0]);
    assign sR_bottomRange_uid214_i_dot1_prod_stencil_2d9_im3_b = $unsigned(sR_bottomRange_uid214_i_dot1_prod_stencil_2d9_im3_in[21:0]);

    // redist0_sR_bottomRange_uid214_i_dot1_prod_stencil_2d9_im3_b_1(DELAY,242)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sR_bottomRange_uid214_i_dot1_prod_stencil_2d9_im3_b_1_q <= '0;
        end
        else
        begin
            redist0_sR_bottomRange_uid214_i_dot1_prod_stencil_2d9_im3_b_1_q <= $unsigned(sR_bottomRange_uid214_i_dot1_prod_stencil_2d9_im3_b);
        end
    end

    // sR_mergedSignalTM_uid215_i_dot1_prod_stencil_2d9_im3(BITJOIN,214)@4
    assign sR_mergedSignalTM_uid215_i_dot1_prod_stencil_2d9_im3_q = {redist0_sR_bottomRange_uid214_i_dot1_prod_stencil_2d9_im3_b_1_q, GND_q};

    // i_dot1_prod_stencil_2d9_sums_result_add_0_0(ADD,112)@4
    assign i_dot1_prod_stencil_2d9_sums_result_add_0_0_a = {15'b000000000000000, sR_mergedSignalTM_uid215_i_dot1_prod_stencil_2d9_im3_q};
    assign i_dot1_prod_stencil_2d9_sums_result_add_0_0_b = {1'b0, i_dot1_prod_stencil_2d9_sums_align_1_q};
    assign i_dot1_prod_stencil_2d9_sums_result_add_0_0_o = $unsigned(i_dot1_prod_stencil_2d9_sums_result_add_0_0_a) + $unsigned(i_dot1_prod_stencil_2d9_sums_result_add_0_0_b);
    assign i_dot1_prod_stencil_2d9_sums_result_add_0_0_q = i_dot1_prod_stencil_2d9_sums_result_add_0_0_o[37:0];

    // i_dot1_prod_stencil_2d9_extender_x(BITJOIN,75)@4
    assign i_dot1_prod_stencil_2d9_extender_x_q = {i_dot1_prod_stencil_2d9_multconst_x_q, i_dot1_prod_stencil_2d9_sums_result_add_0_0_q[36:0]};

    // bgTrunc_i_dot1_prod_stencil_2d9_sel_x(BITSELECT,68)@4
    assign bgTrunc_i_dot1_prod_stencil_2d9_sel_x_b = i_dot1_prod_stencil_2d9_extender_x_q[31:0];

    // i_dot1_prod_stencil_2d9_vt_select_31(BITSELECT,37)@4
    assign i_dot1_prod_stencil_2d9_vt_select_31_b = bgTrunc_i_dot1_prod_stencil_2d9_sel_x_b[31:1];

    // i_dot1_prod_stencil_2d9_vt_join(BITJOIN,36)@4
    assign i_dot1_prod_stencil_2d9_vt_join_q = {i_dot1_prod_stencil_2d9_vt_select_31_b, GND_q};

    // i_dot_prod_add_stencil_2d10(ADD,38)@4
    assign i_dot_prod_add_stencil_2d10_a = {1'b0, i_dot1_prod_stencil_2d9_vt_join_q};
    assign i_dot_prod_add_stencil_2d10_b = {1'b0, i_llvm_fpga_pop_i32_c_035_pop2794_pop37_stencil_2d8_out_data_out};
    assign i_dot_prod_add_stencil_2d10_o = $unsigned(i_dot_prod_add_stencil_2d10_a) + $unsigned(i_dot_prod_add_stencil_2d10_b);
    assign i_dot_prod_add_stencil_2d10_q = i_dot_prod_add_stencil_2d10_o[32:0];

    // bgTrunc_i_dot_prod_add_stencil_2d10_sel_x(BITSELECT,69)@4
    assign bgTrunc_i_dot_prod_add_stencil_2d10_sel_x_b = i_dot_prod_add_stencil_2d10_q[31:0];

    // valid_fanout_reg3(REG,86)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist17_sync_together71_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg4(REG,87)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist17_sync_together71_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i32_c_035_pop2794_push37_stencil_2d14(BLACKBOX,53)@4
    // out out_feedback_out_37@20000000
    // out out_feedback_valid_out_37@20000000
    stencil_2d_i_llvm_fpga_push_i32_c_035_pop2794_push37_0 thei_llvm_fpga_push_i32_c_035_pop2794_push37_stencil_2d14 (
        .in_data_in(i_llvm_fpga_pop_i32_c_035_pop2794_pop37_stencil_2d8_out_data_out),
        .in_exitcond10(redist4_i_exitcond10_stencil_2d12_cmp_nsign_q_3_q),
        .in_feedback_stall_in_37(i_llvm_fpga_pop_i32_c_035_pop2794_pop37_stencil_2d8_out_feedback_stall_out_37),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(),
        .out_feedback_out_37(i_llvm_fpga_push_i32_c_035_pop2794_push37_stencil_2d14_out_feedback_out_37),
        .out_feedback_valid_out_37(i_llvm_fpga_push_i32_c_035_pop2794_push37_stencil_2d14_out_feedback_valid_out_37),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_c_035_pop2794_pop37_stencil_2d8(BLACKBOX,45)@4
    // out out_feedback_stall_out_37@20000000
    stencil_2d_i_llvm_fpga_pop_i32_c_035_pop2794_pop37_0 thei_llvm_fpga_pop_i32_c_035_pop2794_pop37_stencil_2d8 (
        .in_data_in(redist9_sync_together71_aunroll_x_in_c0_eni9_3_tpl_3_outputreg0_q),
        .in_dir(redist6_sync_together71_aunroll_x_in_c0_eni9_1_tpl_3_q),
        .in_feedback_in_37(i_llvm_fpga_push_i32_c_035_pop2794_push37_stencil_2d14_out_feedback_out_37),
        .in_feedback_valid_in_37(i_llvm_fpga_push_i32_c_035_pop2794_push37_stencil_2d14_out_feedback_valid_out_37),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(i_llvm_fpga_pop_i32_c_035_pop2794_pop37_stencil_2d8_out_data_out),
        .out_feedback_stall_out_37(i_llvm_fpga_pop_i32_c_035_pop2794_pop37_stencil_2d8_out_feedback_stall_out_37),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist20_i_llvm_fpga_pop_i32_r_036_pop2584_pop33_stencil_2d6_out_data_out_2(DELAY,262)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_llvm_fpga_pop_i32_r_036_pop2584_pop33_stencil_2d6_out_data_out_2_q <= '0;
        end
        else
        begin
            redist20_i_llvm_fpga_pop_i32_r_036_pop2584_pop33_stencil_2d6_out_data_out_2_q <= $unsigned(redist19_i_llvm_fpga_pop_i32_r_036_pop2584_pop33_stencil_2d6_out_data_out_1_q);
        end
    end

    // leftShiftStage0Idx1Rng1_uid119_dupName_6_i_unnamed_stencil_2d0_shift_x(BITSELECT,118)@3
    assign leftShiftStage0Idx1Rng1_uid119_dupName_6_i_unnamed_stencil_2d0_shift_x_in = redist21_i_llvm_fpga_pop_i32_k1_034_pop32_stencil_2d3_out_data_out_1_q[30:0];
    assign leftShiftStage0Idx1Rng1_uid119_dupName_6_i_unnamed_stencil_2d0_shift_x_b = leftShiftStage0Idx1Rng1_uid119_dupName_6_i_unnamed_stencil_2d0_shift_x_in[30:0];

    // leftShiftStage0Idx1_uid120_dupName_6_i_unnamed_stencil_2d0_shift_x(BITJOIN,119)@3
    assign leftShiftStage0Idx1_uid120_dupName_6_i_unnamed_stencil_2d0_shift_x_q = {leftShiftStage0Idx1Rng1_uid119_dupName_6_i_unnamed_stencil_2d0_shift_x_b, GND_q};

    // leftShiftStage0_uid122_dupName_6_i_unnamed_stencil_2d0_shift_x(MUX,121)@3
    assign leftShiftStage0_uid122_dupName_6_i_unnamed_stencil_2d0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid122_dupName_6_i_unnamed_stencil_2d0_shift_x_s or redist21_i_llvm_fpga_pop_i32_k1_034_pop32_stencil_2d3_out_data_out_1_q or leftShiftStage0Idx1_uid120_dupName_6_i_unnamed_stencil_2d0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid122_dupName_6_i_unnamed_stencil_2d0_shift_x_s)
            1'b0 : leftShiftStage0_uid122_dupName_6_i_unnamed_stencil_2d0_shift_x_q = redist21_i_llvm_fpga_pop_i32_k1_034_pop32_stencil_2d3_out_data_out_1_q;
            1'b1 : leftShiftStage0_uid122_dupName_6_i_unnamed_stencil_2d0_shift_x_q = leftShiftStage0Idx1_uid120_dupName_6_i_unnamed_stencil_2d0_shift_x_q;
            default : leftShiftStage0_uid122_dupName_6_i_unnamed_stencil_2d0_shift_x_q = 32'b0;
        endcase
    end

    // i_unnamed_stencil_2d4_vt_select_31(BITSELECT,62)@3
    assign i_unnamed_stencil_2d4_vt_select_31_b = leftShiftStage0_uid122_dupName_6_i_unnamed_stencil_2d0_shift_x_q[31:1];

    // i_unnamed_stencil_2d4_vt_join(BITJOIN,61)@3
    assign i_unnamed_stencil_2d4_vt_join_q = {i_unnamed_stencil_2d4_vt_select_31_b, GND_q};

    // i_mul33_add18_stencil_2d5(ADD,58)@3
    assign i_mul33_add18_stencil_2d5_a = {1'b0, redist21_i_llvm_fpga_pop_i32_k1_034_pop32_stencil_2d3_out_data_out_1_q};
    assign i_mul33_add18_stencil_2d5_b = {1'b0, i_unnamed_stencil_2d4_vt_join_q};
    assign i_mul33_add18_stencil_2d5_o = $unsigned(i_mul33_add18_stencil_2d5_a) + $unsigned(i_mul33_add18_stencil_2d5_b);
    assign i_mul33_add18_stencil_2d5_q = i_mul33_add18_stencil_2d5_o[32:0];

    // bgTrunc_i_mul33_add18_stencil_2d5_sel_x(BITSELECT,72)@3
    assign bgTrunc_i_mul33_add18_stencil_2d5_sel_x_b = i_mul33_add18_stencil_2d5_q[31:0];

    // redist18_bgTrunc_i_mul33_add18_stencil_2d5_sel_x_b_1(DELAY,260)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_bgTrunc_i_mul33_add18_stencil_2d5_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist18_bgTrunc_i_mul33_add18_stencil_2d5_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul33_add18_stencil_2d5_sel_x_b);
        end
    end

    // sync_out_aunroll_x(GPOUT,77)@4
    assign out_c0_exi18_0_tpl = GND_q;
    assign out_c0_exi18_1_tpl = redist18_bgTrunc_i_mul33_add18_stencil_2d5_sel_x_b_1_q;
    assign out_c0_exi18_2_tpl = redist20_i_llvm_fpga_pop_i32_r_036_pop2584_pop33_stencil_2d6_out_data_out_2_q;
    assign out_c0_exi18_3_tpl = i_llvm_fpga_pop_i32_c_035_pop2794_pop37_stencil_2d8_out_data_out;
    assign out_c0_exi18_4_tpl = bgTrunc_i_dot_prod_add_stencil_2d10_sel_x_b;
    assign out_c0_exi18_5_tpl = redist4_i_exitcond10_stencil_2d12_cmp_nsign_q_3_q;
    assign out_c0_exi18_6_tpl = i_notcmp29_stencil_2d16_q;
    assign out_c0_exi18_7_tpl = i_llvm_fpga_pop_i32_mul5087_pop34_stencil_2d22_out_data_out;
    assign out_c0_exi18_8_tpl = i_llvm_fpga_pop_i1_notcmp3990_pop35_stencil_2d24_out_data_out;
    assign out_c0_exi18_9_tpl = i_llvm_fpga_pop_i1_notcmp3492_pop36_stencil_2d26_out_data_out;
    assign out_c0_exi18_10_tpl = redist6_sync_together71_aunroll_x_in_c0_eni9_1_tpl_3_q;
    assign out_c0_exi18_11_tpl = redist13_sync_together71_aunroll_x_in_c0_eni9_7_tpl_3_mem_q;
    assign out_c0_exi18_12_tpl = redist14_sync_together71_aunroll_x_in_c0_eni9_8_tpl_3_mem_q;
    assign out_c0_exi18_13_tpl = redist15_sync_together71_aunroll_x_in_c0_eni9_9_tpl_3_q;
    assign out_c0_exi18_14_tpl = redist12_sync_together71_aunroll_x_in_c0_eni9_6_tpl_3_q;
    assign out_c0_exi18_15_tpl = redist9_sync_together71_aunroll_x_in_c0_eni9_3_tpl_3_outputreg0_q;
    assign out_c0_exi18_16_tpl = redist8_sync_together71_aunroll_x_in_c0_eni9_2_tpl_3_q;
    assign out_c0_exi18_17_tpl = redist10_sync_together71_aunroll_x_in_c0_eni9_4_tpl_3_mem_q;
    assign out_c0_exi18_18_tpl = redist11_sync_together71_aunroll_x_in_c0_eni9_5_tpl_3_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_stencil_2d1 = GND_q;

endmodule
