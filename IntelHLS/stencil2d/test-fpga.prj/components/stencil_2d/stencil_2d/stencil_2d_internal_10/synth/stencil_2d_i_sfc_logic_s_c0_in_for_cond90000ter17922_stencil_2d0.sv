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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_cond9_preheader_stencil_2ds_c0_enter17922_stencil_2d0
// Created for function/kernel stencil_2d
// SystemVerilog created on Wed Mar 29 16:57:07 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_i_sfc_logic_s_c0_in_for_cond90000ter17922_stencil_2d0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_stencil_2d2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_stencil_2d2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_c0_exi28_0_tpl,
    output wire [31:0] out_c0_exi28_1_tpl,
    output wire [31:0] out_c0_exi28_2_tpl,
    output wire [31:0] out_c0_exi28_3_tpl,
    output wire [31:0] out_c0_exi28_4_tpl,
    output wire [0:0] out_c0_exi28_5_tpl,
    output wire [0:0] out_c0_exi28_6_tpl,
    output wire [31:0] out_c0_exi28_7_tpl,
    output wire [0:0] out_c0_exi28_8_tpl,
    output wire [0:0] out_c0_exi28_9_tpl,
    output wire [0:0] out_c0_exi28_10_tpl,
    output wire [0:0] out_c0_exi28_11_tpl,
    output wire [0:0] out_c0_exi28_12_tpl,
    output wire [0:0] out_c0_exi28_13_tpl,
    output wire [0:0] out_c0_exi28_14_tpl,
    output wire [31:0] out_c0_exi28_15_tpl,
    output wire [31:0] out_c0_exi28_16_tpl,
    output wire [0:0] out_c0_exi28_17_tpl,
    output wire [0:0] out_c0_exi28_18_tpl,
    output wire [0:0] out_c0_exi28_19_tpl,
    output wire [0:0] out_c0_exi28_20_tpl,
    output wire [0:0] out_c0_exi28_21_tpl,
    output wire [31:0] out_c0_exi28_22_tpl,
    output wire [0:0] out_c0_exi28_23_tpl,
    output wire [31:0] out_c0_exi28_24_tpl,
    output wire [31:0] out_c0_exi28_25_tpl,
    output wire [0:0] out_c0_exi28_26_tpl,
    output wire [0:0] out_c0_exi28_27_tpl,
    output wire [0:0] out_c0_exi28_28_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_stencil_2d1,
    input wire [0:0] in_c0_eni15_0_tpl,
    input wire [0:0] in_c0_eni15_1_tpl,
    input wire [31:0] in_c0_eni15_2_tpl,
    input wire [31:0] in_c0_eni15_3_tpl,
    input wire [31:0] in_c0_eni15_4_tpl,
    input wire [0:0] in_c0_eni15_5_tpl,
    input wire [0:0] in_c0_eni15_6_tpl,
    input wire [0:0] in_c0_eni15_7_tpl,
    input wire [0:0] in_c0_eni15_8_tpl,
    input wire [0:0] in_c0_eni15_9_tpl,
    input wire [0:0] in_c0_eni15_10_tpl,
    input wire [31:0] in_c0_eni15_11_tpl,
    input wire [31:0] in_c0_eni15_12_tpl,
    input wire [0:0] in_c0_eni15_13_tpl,
    input wire [0:0] in_c0_eni15_14_tpl,
    input wire [0:0] in_c0_eni15_15_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_062_q;
    wire [31:0] c_i32_163_q;
    wire [2:0] c_i3_165_q;
    wire [2:0] c_i3_167_q;
    wire [32:0] i_add14_stencil_2d7_a;
    wire [32:0] i_add14_stencil_2d7_b;
    logic [32:0] i_add14_stencil_2d7_o;
    wire [32:0] i_add14_stencil_2d7_q;
    wire [31:0] i_dot1_prod_stencil_2d9_vt_join_q;
    wire [30:0] i_dot1_prod_stencil_2d9_vt_select_31_b;
    wire [32:0] i_dot_prod_add_stencil_2d10_a;
    wire [32:0] i_dot_prod_add_stencil_2d10_b;
    logic [32:0] i_dot_prod_add_stencil_2d10_o;
    wire [32:0] i_dot_prod_add_stencil_2d10_q;
    wire [3:0] i_fpga_indvars_iv_next4_stencil_2d18_a;
    wire [3:0] i_fpga_indvars_iv_next4_stencil_2d18_b;
    logic [3:0] i_fpga_indvars_iv_next4_stencil_2d18_o;
    wire [3:0] i_fpga_indvars_iv_next4_stencil_2d18_q;
    wire [32:0] i_inc23_stencil_2d20_a;
    wire [32:0] i_inc23_stencil_2d20_b;
    logic [32:0] i_inc23_stencil_2d20_o;
    wire [32:0] i_inc23_stencil_2d20_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going21_stencil_2d2_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going21_stencil_2d2_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going21_stencil_2d2_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going21_stencil_2d2_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1148_pop27_stencil_2d24_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1148_pop27_stencil_2d24_out_feedback_stall_out_27;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond856_pop30_stencil_2d30_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond856_pop30_stencil_2d30_out_feedback_stall_out_30;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi1_pop1454_pop29_stencil_2d28_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi1_pop1454_pop29_stencil_2d28_out_feedback_stall_out_29;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop1762_pop33_stencil_2d34_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop1762_pop33_stencil_2d34_out_feedback_stall_out_33;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2458_pop31_stencil_2d32_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2458_pop31_stencil_2d32_out_feedback_stall_out_31;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2951_pop28_stencil_2d26_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2951_pop28_stencil_2d26_out_feedback_stall_out_28;
    wire [31:0] i_llvm_fpga_pop_i32_c_025_pop1660_pop32_stencil_2d8_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_c_025_pop1660_pop32_stencil_2d8_out_feedback_stall_out_32;
    wire [31:0] i_llvm_fpga_pop_i32_k1_024_pop24_stencil_2d3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_k1_024_pop24_stencil_2d3_out_feedback_stall_out_24;
    wire [31:0] i_llvm_fpga_pop_i32_mul2545_pop26_stencil_2d22_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul2545_pop26_stencil_2d22_out_feedback_stall_out_26;
    wire [31:0] i_llvm_fpga_pop_i32_r_026_pop1342_pop25_stencil_2d6_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_r_026_pop1342_pop25_stencil_2d6_out_feedback_stall_out_25;
    wire [2:0] i_llvm_fpga_pop_i3_fpga_indvars_iv3_pop23_stencil_2d11_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i3_fpga_indvars_iv3_pop23_stencil_2d11_out_feedback_stall_out_23;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1148_push27_stencil_2d25_out_feedback_out_27;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1148_push27_stencil_2d25_out_feedback_valid_out_27;
    wire [0:0] i_llvm_fpga_push_i1_exitcond856_push30_stencil_2d31_out_feedback_out_30;
    wire [0:0] i_llvm_fpga_push_i1_exitcond856_push30_stencil_2d31_out_feedback_valid_out_30;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi1_pop1454_push29_stencil_2d29_out_feedback_out_29;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi1_pop1454_push29_stencil_2d29_out_feedback_valid_out_29;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop1762_push33_stencil_2d35_out_feedback_out_33;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop1762_push33_stencil_2d35_out_feedback_valid_out_33;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2458_push31_stencil_2d33_out_feedback_out_31;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2458_push31_stencil_2d33_out_feedback_valid_out_31;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2951_push28_stencil_2d27_out_feedback_out_28;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2951_push28_stencil_2d27_out_feedback_valid_out_28;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond22_stencil_2d17_out_feedback_out_5;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond22_stencil_2d17_out_feedback_valid_out_5;
    wire [31:0] i_llvm_fpga_push_i32_c_025_pop1660_push32_stencil_2d14_out_feedback_out_32;
    wire [0:0] i_llvm_fpga_push_i32_c_025_pop1660_push32_stencil_2d14_out_feedback_valid_out_32;
    wire [31:0] i_llvm_fpga_push_i32_k1_024_push24_stencil_2d21_out_feedback_out_24;
    wire [0:0] i_llvm_fpga_push_i32_k1_024_push24_stencil_2d21_out_feedback_valid_out_24;
    wire [31:0] i_llvm_fpga_push_i32_mul2545_push26_stencil_2d23_out_feedback_out_26;
    wire [0:0] i_llvm_fpga_push_i32_mul2545_push26_stencil_2d23_out_feedback_valid_out_26;
    wire [31:0] i_llvm_fpga_push_i32_r_026_pop1342_push25_stencil_2d15_out_feedback_out_25;
    wire [0:0] i_llvm_fpga_push_i32_r_026_pop1342_push25_stencil_2d15_out_feedback_valid_out_25;
    wire [7:0] i_llvm_fpga_push_i3_fpga_indvars_iv3_push23_stencil_2d19_out_feedback_out_23;
    wire [0:0] i_llvm_fpga_push_i3_fpga_indvars_iv3_push23_stencil_2d19_out_feedback_valid_out_23;
    wire [32:0] i_mul13_add13_stencil_2d5_a;
    wire [32:0] i_mul13_add13_stencil_2d5_b;
    logic [32:0] i_mul13_add13_stencil_2d5_o;
    wire [32:0] i_mul13_add13_stencil_2d5_q;
    wire [0:0] i_notcmp19_stencil_2d16_q;
    wire [31:0] i_unnamed_stencil_2d4_vt_join_q;
    wire [30:0] i_unnamed_stencil_2d4_vt_select_31_b;
    wire [31:0] bgTrunc_i_add14_stencil_2d7_sel_x_b;
    wire [31:0] bgTrunc_i_dot1_prod_stencil_2d9_sel_x_b;
    wire [31:0] bgTrunc_i_dot_prod_add_stencil_2d10_sel_x_b;
    wire [2:0] bgTrunc_i_fpga_indvars_iv_next4_stencil_2d18_sel_x_b;
    wire [31:0] bgTrunc_i_inc23_stencil_2d20_sel_x_b;
    wire [31:0] bgTrunc_i_mul13_add13_stencil_2d5_sel_x_b;
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
    (* dont_merge *) reg [0:0] valid_fanout_reg13_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg14_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg15_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg16_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg17_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg18_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg19_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg20_q;
    wire [36:0] i_dot1_prod_stencil_2d9_sums_align_1_q;
    wire [36:0] i_dot1_prod_stencil_2d9_sums_align_1_qint;
    wire [37:0] i_dot1_prod_stencil_2d9_sums_result_add_0_0_a;
    wire [37:0] i_dot1_prod_stencil_2d9_sums_result_add_0_0_b;
    logic [37:0] i_dot1_prod_stencil_2d9_sums_result_add_0_0_o;
    wire [37:0] i_dot1_prod_stencil_2d9_sums_result_add_0_0_q;
    wire [0:0] i_exitcond5_stencil_2d12_cmp_nsign_q;
    wire [30:0] leftShiftStage0Idx1Rng1_uid143_i_unnamed_stencil_2d0_shift_x_in;
    wire [30:0] leftShiftStage0Idx1Rng1_uid143_i_unnamed_stencil_2d0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid144_i_unnamed_stencil_2d0_shift_x_q;
    wire [0:0] leftShiftStage0_uid146_i_unnamed_stencil_2d0_shift_x_s;
    reg [31:0] leftShiftStage0_uid146_i_unnamed_stencil_2d0_shift_x_q;
    wire [14:0] xIfSign_mergedSignalTM_uid172_i_dot1_prod_stencil_2d9_im0_q;
    wire [3:0] padACst_uid176_i_dot1_prod_stencil_2d9_im0_q;
    wire [18:0] aPostPad_uid177_i_dot1_prod_stencil_2d9_im0_q;
    wire [19:0] sub_uid178_i_dot1_prod_stencil_2d9_im0_a;
    wire [19:0] sub_uid178_i_dot1_prod_stencil_2d9_im0_b;
    logic [19:0] sub_uid178_i_dot1_prod_stencil_2d9_im0_o;
    wire [19:0] sub_uid178_i_dot1_prod_stencil_2d9_im0_q;
    wire [17:0] sR_bottomRange_uid182_i_dot1_prod_stencil_2d9_im0_in;
    wire [17:0] sR_bottomRange_uid182_i_dot1_prod_stencil_2d9_im0_b;
    wire [18:0] sR_mergedSignalTM_uid183_i_dot1_prod_stencil_2d9_im0_q;
    wire [18:0] xIfSign_mergedSignalTM_uid228_i_dot1_prod_stencil_2d9_im3_q;
    wire [22:0] aPostPad_uid233_i_dot1_prod_stencil_2d9_im3_q;
    wire [23:0] sub_uid234_i_dot1_prod_stencil_2d9_im3_a;
    wire [23:0] sub_uid234_i_dot1_prod_stencil_2d9_im3_b;
    logic [23:0] sub_uid234_i_dot1_prod_stencil_2d9_im3_o;
    wire [23:0] sub_uid234_i_dot1_prod_stencil_2d9_im3_q;
    wire [21:0] sR_bottomRange_uid238_i_dot1_prod_stencil_2d9_im3_in;
    wire [21:0] sR_bottomRange_uid238_i_dot1_prod_stencil_2d9_im3_b;
    wire [22:0] sR_mergedSignalTM_uid239_i_dot1_prod_stencil_2d9_im3_q;
    wire [13:0] i_dot1_prod_stencil_2d9_bs1_merged_bit_select_b;
    wire [17:0] i_dot1_prod_stencil_2d9_bs1_merged_bit_select_c;
    reg [21:0] redist0_sR_bottomRange_uid238_i_dot1_prod_stencil_2d9_im3_b_1_q;
    reg [17:0] redist1_sR_bottomRange_uid182_i_dot1_prod_stencil_2d9_im0_b_1_q;
    reg [0:0] redist2_i_exitcond5_stencil_2d12_cmp_nsign_q_1_q;
    reg [0:0] redist3_i_exitcond5_stencil_2d12_cmp_nsign_q_2_q;
    reg [0:0] redist4_i_exitcond5_stencil_2d12_cmp_nsign_q_3_q;
    reg [0:0] redist5_sync_together95_aunroll_x_in_c0_eni15_1_tpl_1_q;
    reg [0:0] redist6_sync_together95_aunroll_x_in_c0_eni15_1_tpl_3_q;
    reg [0:0] redist6_sync_together95_aunroll_x_in_c0_eni15_1_tpl_3_delay_0;
    reg [31:0] redist7_sync_together95_aunroll_x_in_c0_eni15_2_tpl_1_q;
    reg [31:0] redist8_sync_together95_aunroll_x_in_c0_eni15_2_tpl_3_q;
    reg [31:0] redist8_sync_together95_aunroll_x_in_c0_eni15_2_tpl_3_delay_0;
    reg [31:0] redist9_sync_together95_aunroll_x_in_c0_eni15_3_tpl_3_q;
    reg [31:0] redist9_sync_together95_aunroll_x_in_c0_eni15_3_tpl_3_delay_0;
    reg [0:0] redist11_sync_together95_aunroll_x_in_c0_eni15_5_tpl_3_q;
    reg [0:0] redist11_sync_together95_aunroll_x_in_c0_eni15_5_tpl_3_delay_0;
    reg [0:0] redist11_sync_together95_aunroll_x_in_c0_eni15_5_tpl_3_delay_1;
    reg [0:0] redist12_sync_together95_aunroll_x_in_c0_eni15_6_tpl_3_q;
    reg [0:0] redist12_sync_together95_aunroll_x_in_c0_eni15_6_tpl_3_delay_0;
    reg [0:0] redist12_sync_together95_aunroll_x_in_c0_eni15_6_tpl_3_delay_1;
    reg [0:0] redist13_sync_together95_aunroll_x_in_c0_eni15_7_tpl_3_q;
    reg [0:0] redist13_sync_together95_aunroll_x_in_c0_eni15_7_tpl_3_delay_0;
    reg [0:0] redist13_sync_together95_aunroll_x_in_c0_eni15_7_tpl_3_delay_1;
    reg [0:0] redist14_sync_together95_aunroll_x_in_c0_eni15_8_tpl_3_q;
    reg [0:0] redist14_sync_together95_aunroll_x_in_c0_eni15_8_tpl_3_delay_0;
    reg [0:0] redist14_sync_together95_aunroll_x_in_c0_eni15_8_tpl_3_delay_1;
    reg [0:0] redist15_sync_together95_aunroll_x_in_c0_eni15_9_tpl_3_q;
    reg [0:0] redist15_sync_together95_aunroll_x_in_c0_eni15_9_tpl_3_delay_0;
    reg [0:0] redist15_sync_together95_aunroll_x_in_c0_eni15_9_tpl_3_delay_1;
    reg [0:0] redist16_sync_together95_aunroll_x_in_c0_eni15_10_tpl_3_q;
    reg [0:0] redist16_sync_together95_aunroll_x_in_c0_eni15_10_tpl_3_delay_0;
    reg [0:0] redist16_sync_together95_aunroll_x_in_c0_eni15_10_tpl_3_delay_1;
    reg [0:0] redist19_sync_together95_aunroll_x_in_c0_eni15_13_tpl_3_q;
    reg [0:0] redist19_sync_together95_aunroll_x_in_c0_eni15_13_tpl_3_delay_0;
    reg [0:0] redist19_sync_together95_aunroll_x_in_c0_eni15_13_tpl_3_delay_1;
    reg [0:0] redist20_sync_together95_aunroll_x_in_c0_eni15_14_tpl_3_q;
    reg [0:0] redist20_sync_together95_aunroll_x_in_c0_eni15_14_tpl_3_delay_0;
    reg [0:0] redist20_sync_together95_aunroll_x_in_c0_eni15_14_tpl_3_delay_1;
    reg [0:0] redist21_sync_together95_aunroll_x_in_c0_eni15_15_tpl_3_q;
    reg [0:0] redist21_sync_together95_aunroll_x_in_c0_eni15_15_tpl_3_delay_0;
    reg [0:0] redist21_sync_together95_aunroll_x_in_c0_eni15_15_tpl_3_delay_1;
    reg [0:0] redist22_sync_together95_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist23_sync_together95_aunroll_x_in_i_valid_2_q;
    reg [31:0] redist24_bgTrunc_i_mul13_add13_stencil_2d5_sel_x_b_1_q;
    reg [31:0] redist25_i_llvm_fpga_pop_i32_r_026_pop1342_pop25_stencil_2d6_out_data_out_1_q;
    reg [31:0] redist26_i_llvm_fpga_pop_i32_r_026_pop1342_pop25_stencil_2d6_out_data_out_2_q;
    reg [31:0] redist27_i_llvm_fpga_pop_i32_k1_024_pop24_stencil_2d3_out_data_out_1_q;
    reg [31:0] redist9_sync_together95_aunroll_x_in_c0_eni15_3_tpl_3_outputreg0_q;
    wire redist10_sync_together95_aunroll_x_in_c0_eni15_4_tpl_3_mem_reset0;
    wire [31:0] redist10_sync_together95_aunroll_x_in_c0_eni15_4_tpl_3_mem_ia;
    wire [0:0] redist10_sync_together95_aunroll_x_in_c0_eni15_4_tpl_3_mem_aa;
    wire [0:0] redist10_sync_together95_aunroll_x_in_c0_eni15_4_tpl_3_mem_ab;
    wire [31:0] redist10_sync_together95_aunroll_x_in_c0_eni15_4_tpl_3_mem_iq;
    wire [31:0] redist10_sync_together95_aunroll_x_in_c0_eni15_4_tpl_3_mem_q;
    wire [0:0] redist10_sync_together95_aunroll_x_in_c0_eni15_4_tpl_3_rdcnt_q;
    (* preserve *) reg [0:0] redist10_sync_together95_aunroll_x_in_c0_eni15_4_tpl_3_rdcnt_i;
    reg [0:0] redist10_sync_together95_aunroll_x_in_c0_eni15_4_tpl_3_wraddr_q;
    (* dont_merge *) reg [0:0] redist10_sync_together95_aunroll_x_in_c0_eni15_4_tpl_3_cmpReg_q;
    wire [0:0] redist10_sync_together95_aunroll_x_in_c0_eni15_4_tpl_3_notEnable_q;
    wire [0:0] redist10_sync_together95_aunroll_x_in_c0_eni15_4_tpl_3_nor_q;
    (* dont_merge *) reg [0:0] redist10_sync_together95_aunroll_x_in_c0_eni15_4_tpl_3_sticky_ena_q;
    wire [0:0] redist10_sync_together95_aunroll_x_in_c0_eni15_4_tpl_3_enaAnd_q;
    wire redist17_sync_together95_aunroll_x_in_c0_eni15_11_tpl_3_mem_reset0;
    wire [31:0] redist17_sync_together95_aunroll_x_in_c0_eni15_11_tpl_3_mem_ia;
    wire [0:0] redist17_sync_together95_aunroll_x_in_c0_eni15_11_tpl_3_mem_aa;
    wire [0:0] redist17_sync_together95_aunroll_x_in_c0_eni15_11_tpl_3_mem_ab;
    wire [31:0] redist17_sync_together95_aunroll_x_in_c0_eni15_11_tpl_3_mem_iq;
    wire [31:0] redist17_sync_together95_aunroll_x_in_c0_eni15_11_tpl_3_mem_q;
    wire [0:0] redist17_sync_together95_aunroll_x_in_c0_eni15_11_tpl_3_rdcnt_q;
    (* preserve *) reg [0:0] redist17_sync_together95_aunroll_x_in_c0_eni15_11_tpl_3_rdcnt_i;
    reg [0:0] redist17_sync_together95_aunroll_x_in_c0_eni15_11_tpl_3_wraddr_q;
    (* dont_merge *) reg [0:0] redist17_sync_together95_aunroll_x_in_c0_eni15_11_tpl_3_cmpReg_q;
    wire [0:0] redist17_sync_together95_aunroll_x_in_c0_eni15_11_tpl_3_notEnable_q;
    wire [0:0] redist17_sync_together95_aunroll_x_in_c0_eni15_11_tpl_3_nor_q;
    (* dont_merge *) reg [0:0] redist17_sync_together95_aunroll_x_in_c0_eni15_11_tpl_3_sticky_ena_q;
    wire [0:0] redist17_sync_together95_aunroll_x_in_c0_eni15_11_tpl_3_enaAnd_q;
    wire redist18_sync_together95_aunroll_x_in_c0_eni15_12_tpl_3_mem_reset0;
    wire [31:0] redist18_sync_together95_aunroll_x_in_c0_eni15_12_tpl_3_mem_ia;
    wire [0:0] redist18_sync_together95_aunroll_x_in_c0_eni15_12_tpl_3_mem_aa;
    wire [0:0] redist18_sync_together95_aunroll_x_in_c0_eni15_12_tpl_3_mem_ab;
    wire [31:0] redist18_sync_together95_aunroll_x_in_c0_eni15_12_tpl_3_mem_iq;
    wire [31:0] redist18_sync_together95_aunroll_x_in_c0_eni15_12_tpl_3_mem_q;
    wire [0:0] redist18_sync_together95_aunroll_x_in_c0_eni15_12_tpl_3_rdcnt_q;
    (* preserve *) reg [0:0] redist18_sync_together95_aunroll_x_in_c0_eni15_12_tpl_3_rdcnt_i;
    reg [0:0] redist18_sync_together95_aunroll_x_in_c0_eni15_12_tpl_3_wraddr_q;
    (* dont_merge *) reg [0:0] redist18_sync_together95_aunroll_x_in_c0_eni15_12_tpl_3_cmpReg_q;
    wire [0:0] redist18_sync_together95_aunroll_x_in_c0_eni15_12_tpl_3_notEnable_q;
    wire [0:0] redist18_sync_together95_aunroll_x_in_c0_eni15_12_tpl_3_nor_q;
    (* dont_merge *) reg [0:0] redist18_sync_together95_aunroll_x_in_c0_eni15_12_tpl_3_sticky_ena_q;
    wire [0:0] redist18_sync_together95_aunroll_x_in_c0_eni15_12_tpl_3_enaAnd_q;


    // c_i3_167(CONSTANT,39)
    assign c_i3_167_q = $unsigned(3'b111);

    // i_fpga_indvars_iv_next4_stencil_2d18(ADD,48)@1
    assign i_fpga_indvars_iv_next4_stencil_2d18_a = {1'b0, i_llvm_fpga_pop_i3_fpga_indvars_iv3_pop23_stencil_2d11_out_data_out};
    assign i_fpga_indvars_iv_next4_stencil_2d18_b = {1'b0, c_i3_167_q};
    assign i_fpga_indvars_iv_next4_stencil_2d18_o = $unsigned(i_fpga_indvars_iv_next4_stencil_2d18_a) + $unsigned(i_fpga_indvars_iv_next4_stencil_2d18_b);
    assign i_fpga_indvars_iv_next4_stencil_2d18_q = i_fpga_indvars_iv_next4_stencil_2d18_o[3:0];

    // bgTrunc_i_fpga_indvars_iv_next4_stencil_2d18_sel_x(BITSELECT,86)@1
    assign bgTrunc_i_fpga_indvars_iv_next4_stencil_2d18_sel_x_b = i_fpga_indvars_iv_next4_stencil_2d18_q[2:0];

    // i_llvm_fpga_push_i3_fpga_indvars_iv3_push23_stencil_2d19(BLACKBOX,73)@1
    // out out_feedback_out_23@20000000
    // out out_feedback_valid_out_23@20000000
    stencil_2d_i_llvm_fpga_push_i3_fpga_indvars_iv3_push23_0 thei_llvm_fpga_push_i3_fpga_indvars_iv3_push23_stencil_2d19 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next4_stencil_2d18_sel_x_b),
        .in_exitcond5(i_exitcond5_stencil_2d12_cmp_nsign_q),
        .in_feedback_stall_in_23(i_llvm_fpga_pop_i3_fpga_indvars_iv3_pop23_stencil_2d11_out_feedback_stall_out_23),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_23(i_llvm_fpga_push_i3_fpga_indvars_iv3_push23_stencil_2d19_out_feedback_out_23),
        .out_feedback_valid_out_23(i_llvm_fpga_push_i3_fpga_indvars_iv3_push23_stencil_2d19_out_feedback_valid_out_23),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i3_165(CONSTANT,38)
    assign c_i3_165_q = $unsigned(3'b001);

    // i_llvm_fpga_pop_i3_fpga_indvars_iv3_pop23_stencil_2d11(BLACKBOX,61)@1
    // out out_feedback_stall_out_23@20000000
    stencil_2d_i_llvm_fpga_pop_i3_fpga_indvars_iv3_pop23_0 thei_llvm_fpga_pop_i3_fpga_indvars_iv3_pop23_stencil_2d11 (
        .in_data_in(c_i3_165_q),
        .in_dir(in_c0_eni15_1_tpl),
        .in_feedback_in_23(i_llvm_fpga_push_i3_fpga_indvars_iv3_push23_stencil_2d19_out_feedback_out_23),
        .in_feedback_valid_in_23(i_llvm_fpga_push_i3_fpga_indvars_iv3_push23_stencil_2d19_out_feedback_valid_out_23),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i3_fpga_indvars_iv3_pop23_stencil_2d11_out_data_out),
        .out_feedback_stall_out_23(i_llvm_fpga_pop_i3_fpga_indvars_iv3_pop23_stencil_2d11_out_feedback_stall_out_23),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond5_stencil_2d12_cmp_nsign(LOGICAL,138)@1
    assign i_exitcond5_stencil_2d12_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i3_fpga_indvars_iv3_pop23_stencil_2d11_out_data_out[2:2]));

    // i_llvm_fpga_push_i1_notexitcond22_stencil_2d17(BLACKBOX,68)@1
    // out out_feedback_out_5@20000000
    // out out_feedback_valid_out_5@20000000
    stencil_2d_i_llvm_fpga_push_i1_notexitcond22_0 thei_llvm_fpga_push_i1_notexitcond22_stencil_2d17 (
        .in_data_in(i_exitcond5_stencil_2d12_cmp_nsign_q),
        .in_feedback_stall_in_5(i_llvm_fpga_pipeline_keep_going21_stencil_2d2_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_5(i_llvm_fpga_push_i1_notexitcond22_stencil_2d17_out_feedback_out_5),
        .out_feedback_valid_out_5(i_llvm_fpga_push_i1_notexitcond22_stencil_2d17_out_feedback_valid_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_llvm_fpga_pipeline_keep_going21_stencil_2d2(BLACKBOX,50)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    stencil_2d_i_llvm_fpga_pipeline_keep_going21_0 thei_llvm_fpga_pipeline_keep_going21_stencil_2d2 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond22_stencil_2d17_out_feedback_out_5),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond22_stencil_2d17_out_feedback_valid_out_5),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going21_stencil_2d2_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going21_stencil_2d2_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going21_stencil_2d2_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going21_stencil_2d2_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,40)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_stencil_2d2_exiting_valid_out = i_llvm_fpga_pipeline_keep_going21_stencil_2d2_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_stencil_2d2_exiting_stall_out = i_llvm_fpga_pipeline_keep_going21_stencil_2d2_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,81)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going21_stencil_2d2_out_pipeline_valid_out;

    // redist22_sync_together95_aunroll_x_in_i_valid_1(DELAY,288)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_sync_together95_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist22_sync_together95_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist23_sync_together95_aunroll_x_in_i_valid_2(DELAY,289)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_sync_together95_aunroll_x_in_i_valid_2_q <= '0;
        end
        else
        begin
            redist23_sync_together95_aunroll_x_in_i_valid_2_q <= $unsigned(redist22_sync_together95_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg0(REG,99)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist23_sync_together95_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist13_sync_together95_aunroll_x_in_c0_eni15_7_tpl_3(DELAY,279)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together95_aunroll_x_in_c0_eni15_7_tpl_3_delay_0 <= '0;
            redist13_sync_together95_aunroll_x_in_c0_eni15_7_tpl_3_delay_1 <= '0;
            redist13_sync_together95_aunroll_x_in_c0_eni15_7_tpl_3_q <= '0;
        end
        else
        begin
            redist13_sync_together95_aunroll_x_in_c0_eni15_7_tpl_3_delay_0 <= $unsigned(in_c0_eni15_7_tpl);
            redist13_sync_together95_aunroll_x_in_c0_eni15_7_tpl_3_delay_1 <= redist13_sync_together95_aunroll_x_in_c0_eni15_7_tpl_3_delay_0;
            redist13_sync_together95_aunroll_x_in_c0_eni15_7_tpl_3_q <= redist13_sync_together95_aunroll_x_in_c0_eni15_7_tpl_3_delay_1;
        end
    end

    // redist12_sync_together95_aunroll_x_in_c0_eni15_6_tpl_3(DELAY,278)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together95_aunroll_x_in_c0_eni15_6_tpl_3_delay_0 <= '0;
            redist12_sync_together95_aunroll_x_in_c0_eni15_6_tpl_3_delay_1 <= '0;
            redist12_sync_together95_aunroll_x_in_c0_eni15_6_tpl_3_q <= '0;
        end
        else
        begin
            redist12_sync_together95_aunroll_x_in_c0_eni15_6_tpl_3_delay_0 <= $unsigned(in_c0_eni15_6_tpl);
            redist12_sync_together95_aunroll_x_in_c0_eni15_6_tpl_3_delay_1 <= redist12_sync_together95_aunroll_x_in_c0_eni15_6_tpl_3_delay_0;
            redist12_sync_together95_aunroll_x_in_c0_eni15_6_tpl_3_q <= redist12_sync_together95_aunroll_x_in_c0_eni15_6_tpl_3_delay_1;
        end
    end

    // redist11_sync_together95_aunroll_x_in_c0_eni15_5_tpl_3(DELAY,277)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together95_aunroll_x_in_c0_eni15_5_tpl_3_delay_0 <= '0;
            redist11_sync_together95_aunroll_x_in_c0_eni15_5_tpl_3_delay_1 <= '0;
            redist11_sync_together95_aunroll_x_in_c0_eni15_5_tpl_3_q <= '0;
        end
        else
        begin
            redist11_sync_together95_aunroll_x_in_c0_eni15_5_tpl_3_delay_0 <= $unsigned(in_c0_eni15_5_tpl);
            redist11_sync_together95_aunroll_x_in_c0_eni15_5_tpl_3_delay_1 <= redist11_sync_together95_aunroll_x_in_c0_eni15_5_tpl_3_delay_0;
            redist11_sync_together95_aunroll_x_in_c0_eni15_5_tpl_3_q <= redist11_sync_together95_aunroll_x_in_c0_eni15_5_tpl_3_delay_1;
        end
    end

    // redist10_sync_together95_aunroll_x_in_c0_eni15_4_tpl_3_notEnable(LOGICAL,299)
    assign redist10_sync_together95_aunroll_x_in_c0_eni15_4_tpl_3_notEnable_q = $unsigned(~ (VCC_q));

    // redist10_sync_together95_aunroll_x_in_c0_eni15_4_tpl_3_nor(LOGICAL,300)
    assign redist10_sync_together95_aunroll_x_in_c0_eni15_4_tpl_3_nor_q = ~ (redist10_sync_together95_aunroll_x_in_c0_eni15_4_tpl_3_notEnable_q | redist10_sync_together95_aunroll_x_in_c0_eni15_4_tpl_3_sticky_ena_q);

    // redist10_sync_together95_aunroll_x_in_c0_eni15_4_tpl_3_cmpReg(REG,298)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together95_aunroll_x_in_c0_eni15_4_tpl_3_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist10_sync_together95_aunroll_x_in_c0_eni15_4_tpl_3_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist10_sync_together95_aunroll_x_in_c0_eni15_4_tpl_3_sticky_ena(REG,301)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together95_aunroll_x_in_c0_eni15_4_tpl_3_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist10_sync_together95_aunroll_x_in_c0_eni15_4_tpl_3_nor_q == 1'b1)
        begin
            redist10_sync_together95_aunroll_x_in_c0_eni15_4_tpl_3_sticky_ena_q <= $unsigned(redist10_sync_together95_aunroll_x_in_c0_eni15_4_tpl_3_cmpReg_q);
        end
    end

    // redist10_sync_together95_aunroll_x_in_c0_eni15_4_tpl_3_enaAnd(LOGICAL,302)
    assign redist10_sync_together95_aunroll_x_in_c0_eni15_4_tpl_3_enaAnd_q = redist10_sync_together95_aunroll_x_in_c0_eni15_4_tpl_3_sticky_ena_q & VCC_q;

    // redist10_sync_together95_aunroll_x_in_c0_eni15_4_tpl_3_rdcnt(COUNTER,296)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together95_aunroll_x_in_c0_eni15_4_tpl_3_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist10_sync_together95_aunroll_x_in_c0_eni15_4_tpl_3_rdcnt_i <= $unsigned(redist10_sync_together95_aunroll_x_in_c0_eni15_4_tpl_3_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist10_sync_together95_aunroll_x_in_c0_eni15_4_tpl_3_rdcnt_q = redist10_sync_together95_aunroll_x_in_c0_eni15_4_tpl_3_rdcnt_i[0:0];

    // redist10_sync_together95_aunroll_x_in_c0_eni15_4_tpl_3_wraddr(REG,297)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together95_aunroll_x_in_c0_eni15_4_tpl_3_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist10_sync_together95_aunroll_x_in_c0_eni15_4_tpl_3_wraddr_q <= $unsigned(redist10_sync_together95_aunroll_x_in_c0_eni15_4_tpl_3_rdcnt_q);
        end
    end

    // redist10_sync_together95_aunroll_x_in_c0_eni15_4_tpl_3_mem(DUALMEM,295)
    assign redist10_sync_together95_aunroll_x_in_c0_eni15_4_tpl_3_mem_ia = $unsigned(in_c0_eni15_4_tpl);
    assign redist10_sync_together95_aunroll_x_in_c0_eni15_4_tpl_3_mem_aa = redist10_sync_together95_aunroll_x_in_c0_eni15_4_tpl_3_wraddr_q;
    assign redist10_sync_together95_aunroll_x_in_c0_eni15_4_tpl_3_mem_ab = redist10_sync_together95_aunroll_x_in_c0_eni15_4_tpl_3_rdcnt_q;
    assign redist10_sync_together95_aunroll_x_in_c0_eni15_4_tpl_3_mem_reset0 = ~ (resetn);
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
    ) redist10_sync_together95_aunroll_x_in_c0_eni15_4_tpl_3_mem_dmem (
        .clocken1(redist10_sync_together95_aunroll_x_in_c0_eni15_4_tpl_3_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist10_sync_together95_aunroll_x_in_c0_eni15_4_tpl_3_mem_reset0),
        .clock1(clock),
        .address_a(redist10_sync_together95_aunroll_x_in_c0_eni15_4_tpl_3_mem_aa),
        .data_a(redist10_sync_together95_aunroll_x_in_c0_eni15_4_tpl_3_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist10_sync_together95_aunroll_x_in_c0_eni15_4_tpl_3_mem_ab),
        .q_b(redist10_sync_together95_aunroll_x_in_c0_eni15_4_tpl_3_mem_iq),
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
    assign redist10_sync_together95_aunroll_x_in_c0_eni15_4_tpl_3_mem_q = redist10_sync_together95_aunroll_x_in_c0_eni15_4_tpl_3_mem_iq[31:0];

    // redist7_sync_together95_aunroll_x_in_c0_eni15_2_tpl_1(DELAY,273)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together95_aunroll_x_in_c0_eni15_2_tpl_1_q <= '0;
        end
        else
        begin
            redist7_sync_together95_aunroll_x_in_c0_eni15_2_tpl_1_q <= $unsigned(in_c0_eni15_2_tpl);
        end
    end

    // redist8_sync_together95_aunroll_x_in_c0_eni15_2_tpl_3(DELAY,274)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together95_aunroll_x_in_c0_eni15_2_tpl_3_delay_0 <= '0;
            redist8_sync_together95_aunroll_x_in_c0_eni15_2_tpl_3_q <= '0;
        end
        else
        begin
            redist8_sync_together95_aunroll_x_in_c0_eni15_2_tpl_3_delay_0 <= $unsigned(redist7_sync_together95_aunroll_x_in_c0_eni15_2_tpl_1_q);
            redist8_sync_together95_aunroll_x_in_c0_eni15_2_tpl_3_q <= redist8_sync_together95_aunroll_x_in_c0_eni15_2_tpl_3_delay_0;
        end
    end

    // redist16_sync_together95_aunroll_x_in_c0_eni15_10_tpl_3(DELAY,282)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together95_aunroll_x_in_c0_eni15_10_tpl_3_delay_0 <= '0;
            redist16_sync_together95_aunroll_x_in_c0_eni15_10_tpl_3_delay_1 <= '0;
            redist16_sync_together95_aunroll_x_in_c0_eni15_10_tpl_3_q <= '0;
        end
        else
        begin
            redist16_sync_together95_aunroll_x_in_c0_eni15_10_tpl_3_delay_0 <= $unsigned(in_c0_eni15_10_tpl);
            redist16_sync_together95_aunroll_x_in_c0_eni15_10_tpl_3_delay_1 <= redist16_sync_together95_aunroll_x_in_c0_eni15_10_tpl_3_delay_0;
            redist16_sync_together95_aunroll_x_in_c0_eni15_10_tpl_3_q <= redist16_sync_together95_aunroll_x_in_c0_eni15_10_tpl_3_delay_1;
        end
    end

    // redist9_sync_together95_aunroll_x_in_c0_eni15_3_tpl_3(DELAY,275)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together95_aunroll_x_in_c0_eni15_3_tpl_3_delay_0 <= '0;
            redist9_sync_together95_aunroll_x_in_c0_eni15_3_tpl_3_q <= '0;
        end
        else
        begin
            redist9_sync_together95_aunroll_x_in_c0_eni15_3_tpl_3_delay_0 <= $unsigned(in_c0_eni15_3_tpl);
            redist9_sync_together95_aunroll_x_in_c0_eni15_3_tpl_3_q <= redist9_sync_together95_aunroll_x_in_c0_eni15_3_tpl_3_delay_0;
        end
    end

    // redist9_sync_together95_aunroll_x_in_c0_eni15_3_tpl_3_outputreg0(DELAY,294)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together95_aunroll_x_in_c0_eni15_3_tpl_3_outputreg0_q <= '0;
        end
        else
        begin
            redist9_sync_together95_aunroll_x_in_c0_eni15_3_tpl_3_outputreg0_q <= $unsigned(redist9_sync_together95_aunroll_x_in_c0_eni15_3_tpl_3_q);
        end
    end

    // redist15_sync_together95_aunroll_x_in_c0_eni15_9_tpl_3(DELAY,281)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together95_aunroll_x_in_c0_eni15_9_tpl_3_delay_0 <= '0;
            redist15_sync_together95_aunroll_x_in_c0_eni15_9_tpl_3_delay_1 <= '0;
            redist15_sync_together95_aunroll_x_in_c0_eni15_9_tpl_3_q <= '0;
        end
        else
        begin
            redist15_sync_together95_aunroll_x_in_c0_eni15_9_tpl_3_delay_0 <= $unsigned(in_c0_eni15_9_tpl);
            redist15_sync_together95_aunroll_x_in_c0_eni15_9_tpl_3_delay_1 <= redist15_sync_together95_aunroll_x_in_c0_eni15_9_tpl_3_delay_0;
            redist15_sync_together95_aunroll_x_in_c0_eni15_9_tpl_3_q <= redist15_sync_together95_aunroll_x_in_c0_eni15_9_tpl_3_delay_1;
        end
    end

    // redist14_sync_together95_aunroll_x_in_c0_eni15_8_tpl_3(DELAY,280)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together95_aunroll_x_in_c0_eni15_8_tpl_3_delay_0 <= '0;
            redist14_sync_together95_aunroll_x_in_c0_eni15_8_tpl_3_delay_1 <= '0;
            redist14_sync_together95_aunroll_x_in_c0_eni15_8_tpl_3_q <= '0;
        end
        else
        begin
            redist14_sync_together95_aunroll_x_in_c0_eni15_8_tpl_3_delay_0 <= $unsigned(in_c0_eni15_8_tpl);
            redist14_sync_together95_aunroll_x_in_c0_eni15_8_tpl_3_delay_1 <= redist14_sync_together95_aunroll_x_in_c0_eni15_8_tpl_3_delay_0;
            redist14_sync_together95_aunroll_x_in_c0_eni15_8_tpl_3_q <= redist14_sync_together95_aunroll_x_in_c0_eni15_8_tpl_3_delay_1;
        end
    end

    // redist21_sync_together95_aunroll_x_in_c0_eni15_15_tpl_3(DELAY,287)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_sync_together95_aunroll_x_in_c0_eni15_15_tpl_3_delay_0 <= '0;
            redist21_sync_together95_aunroll_x_in_c0_eni15_15_tpl_3_delay_1 <= '0;
            redist21_sync_together95_aunroll_x_in_c0_eni15_15_tpl_3_q <= '0;
        end
        else
        begin
            redist21_sync_together95_aunroll_x_in_c0_eni15_15_tpl_3_delay_0 <= $unsigned(in_c0_eni15_15_tpl);
            redist21_sync_together95_aunroll_x_in_c0_eni15_15_tpl_3_delay_1 <= redist21_sync_together95_aunroll_x_in_c0_eni15_15_tpl_3_delay_0;
            redist21_sync_together95_aunroll_x_in_c0_eni15_15_tpl_3_q <= redist21_sync_together95_aunroll_x_in_c0_eni15_15_tpl_3_delay_1;
        end
    end

    // redist20_sync_together95_aunroll_x_in_c0_eni15_14_tpl_3(DELAY,286)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together95_aunroll_x_in_c0_eni15_14_tpl_3_delay_0 <= '0;
            redist20_sync_together95_aunroll_x_in_c0_eni15_14_tpl_3_delay_1 <= '0;
            redist20_sync_together95_aunroll_x_in_c0_eni15_14_tpl_3_q <= '0;
        end
        else
        begin
            redist20_sync_together95_aunroll_x_in_c0_eni15_14_tpl_3_delay_0 <= $unsigned(in_c0_eni15_14_tpl);
            redist20_sync_together95_aunroll_x_in_c0_eni15_14_tpl_3_delay_1 <= redist20_sync_together95_aunroll_x_in_c0_eni15_14_tpl_3_delay_0;
            redist20_sync_together95_aunroll_x_in_c0_eni15_14_tpl_3_q <= redist20_sync_together95_aunroll_x_in_c0_eni15_14_tpl_3_delay_1;
        end
    end

    // redist19_sync_together95_aunroll_x_in_c0_eni15_13_tpl_3(DELAY,285)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together95_aunroll_x_in_c0_eni15_13_tpl_3_delay_0 <= '0;
            redist19_sync_together95_aunroll_x_in_c0_eni15_13_tpl_3_delay_1 <= '0;
            redist19_sync_together95_aunroll_x_in_c0_eni15_13_tpl_3_q <= '0;
        end
        else
        begin
            redist19_sync_together95_aunroll_x_in_c0_eni15_13_tpl_3_delay_0 <= $unsigned(in_c0_eni15_13_tpl);
            redist19_sync_together95_aunroll_x_in_c0_eni15_13_tpl_3_delay_1 <= redist19_sync_together95_aunroll_x_in_c0_eni15_13_tpl_3_delay_0;
            redist19_sync_together95_aunroll_x_in_c0_eni15_13_tpl_3_q <= redist19_sync_together95_aunroll_x_in_c0_eni15_13_tpl_3_delay_1;
        end
    end

    // redist18_sync_together95_aunroll_x_in_c0_eni15_12_tpl_3_notEnable(LOGICAL,315)
    assign redist18_sync_together95_aunroll_x_in_c0_eni15_12_tpl_3_notEnable_q = $unsigned(~ (VCC_q));

    // redist18_sync_together95_aunroll_x_in_c0_eni15_12_tpl_3_nor(LOGICAL,316)
    assign redist18_sync_together95_aunroll_x_in_c0_eni15_12_tpl_3_nor_q = ~ (redist18_sync_together95_aunroll_x_in_c0_eni15_12_tpl_3_notEnable_q | redist18_sync_together95_aunroll_x_in_c0_eni15_12_tpl_3_sticky_ena_q);

    // redist18_sync_together95_aunroll_x_in_c0_eni15_12_tpl_3_cmpReg(REG,314)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together95_aunroll_x_in_c0_eni15_12_tpl_3_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist18_sync_together95_aunroll_x_in_c0_eni15_12_tpl_3_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist18_sync_together95_aunroll_x_in_c0_eni15_12_tpl_3_sticky_ena(REG,317)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together95_aunroll_x_in_c0_eni15_12_tpl_3_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist18_sync_together95_aunroll_x_in_c0_eni15_12_tpl_3_nor_q == 1'b1)
        begin
            redist18_sync_together95_aunroll_x_in_c0_eni15_12_tpl_3_sticky_ena_q <= $unsigned(redist18_sync_together95_aunroll_x_in_c0_eni15_12_tpl_3_cmpReg_q);
        end
    end

    // redist18_sync_together95_aunroll_x_in_c0_eni15_12_tpl_3_enaAnd(LOGICAL,318)
    assign redist18_sync_together95_aunroll_x_in_c0_eni15_12_tpl_3_enaAnd_q = redist18_sync_together95_aunroll_x_in_c0_eni15_12_tpl_3_sticky_ena_q & VCC_q;

    // redist18_sync_together95_aunroll_x_in_c0_eni15_12_tpl_3_rdcnt(COUNTER,312)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together95_aunroll_x_in_c0_eni15_12_tpl_3_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist18_sync_together95_aunroll_x_in_c0_eni15_12_tpl_3_rdcnt_i <= $unsigned(redist18_sync_together95_aunroll_x_in_c0_eni15_12_tpl_3_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist18_sync_together95_aunroll_x_in_c0_eni15_12_tpl_3_rdcnt_q = redist18_sync_together95_aunroll_x_in_c0_eni15_12_tpl_3_rdcnt_i[0:0];

    // redist18_sync_together95_aunroll_x_in_c0_eni15_12_tpl_3_wraddr(REG,313)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together95_aunroll_x_in_c0_eni15_12_tpl_3_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist18_sync_together95_aunroll_x_in_c0_eni15_12_tpl_3_wraddr_q <= $unsigned(redist18_sync_together95_aunroll_x_in_c0_eni15_12_tpl_3_rdcnt_q);
        end
    end

    // redist18_sync_together95_aunroll_x_in_c0_eni15_12_tpl_3_mem(DUALMEM,311)
    assign redist18_sync_together95_aunroll_x_in_c0_eni15_12_tpl_3_mem_ia = $unsigned(in_c0_eni15_12_tpl);
    assign redist18_sync_together95_aunroll_x_in_c0_eni15_12_tpl_3_mem_aa = redist18_sync_together95_aunroll_x_in_c0_eni15_12_tpl_3_wraddr_q;
    assign redist18_sync_together95_aunroll_x_in_c0_eni15_12_tpl_3_mem_ab = redist18_sync_together95_aunroll_x_in_c0_eni15_12_tpl_3_rdcnt_q;
    assign redist18_sync_together95_aunroll_x_in_c0_eni15_12_tpl_3_mem_reset0 = ~ (resetn);
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
    ) redist18_sync_together95_aunroll_x_in_c0_eni15_12_tpl_3_mem_dmem (
        .clocken1(redist18_sync_together95_aunroll_x_in_c0_eni15_12_tpl_3_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist18_sync_together95_aunroll_x_in_c0_eni15_12_tpl_3_mem_reset0),
        .clock1(clock),
        .address_a(redist18_sync_together95_aunroll_x_in_c0_eni15_12_tpl_3_mem_aa),
        .data_a(redist18_sync_together95_aunroll_x_in_c0_eni15_12_tpl_3_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist18_sync_together95_aunroll_x_in_c0_eni15_12_tpl_3_mem_ab),
        .q_b(redist18_sync_together95_aunroll_x_in_c0_eni15_12_tpl_3_mem_iq),
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
    assign redist18_sync_together95_aunroll_x_in_c0_eni15_12_tpl_3_mem_q = redist18_sync_together95_aunroll_x_in_c0_eni15_12_tpl_3_mem_iq[31:0];

    // redist17_sync_together95_aunroll_x_in_c0_eni15_11_tpl_3_notEnable(LOGICAL,307)
    assign redist17_sync_together95_aunroll_x_in_c0_eni15_11_tpl_3_notEnable_q = $unsigned(~ (VCC_q));

    // redist17_sync_together95_aunroll_x_in_c0_eni15_11_tpl_3_nor(LOGICAL,308)
    assign redist17_sync_together95_aunroll_x_in_c0_eni15_11_tpl_3_nor_q = ~ (redist17_sync_together95_aunroll_x_in_c0_eni15_11_tpl_3_notEnable_q | redist17_sync_together95_aunroll_x_in_c0_eni15_11_tpl_3_sticky_ena_q);

    // redist17_sync_together95_aunroll_x_in_c0_eni15_11_tpl_3_cmpReg(REG,306)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together95_aunroll_x_in_c0_eni15_11_tpl_3_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist17_sync_together95_aunroll_x_in_c0_eni15_11_tpl_3_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist17_sync_together95_aunroll_x_in_c0_eni15_11_tpl_3_sticky_ena(REG,309)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together95_aunroll_x_in_c0_eni15_11_tpl_3_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist17_sync_together95_aunroll_x_in_c0_eni15_11_tpl_3_nor_q == 1'b1)
        begin
            redist17_sync_together95_aunroll_x_in_c0_eni15_11_tpl_3_sticky_ena_q <= $unsigned(redist17_sync_together95_aunroll_x_in_c0_eni15_11_tpl_3_cmpReg_q);
        end
    end

    // redist17_sync_together95_aunroll_x_in_c0_eni15_11_tpl_3_enaAnd(LOGICAL,310)
    assign redist17_sync_together95_aunroll_x_in_c0_eni15_11_tpl_3_enaAnd_q = redist17_sync_together95_aunroll_x_in_c0_eni15_11_tpl_3_sticky_ena_q & VCC_q;

    // redist17_sync_together95_aunroll_x_in_c0_eni15_11_tpl_3_rdcnt(COUNTER,304)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together95_aunroll_x_in_c0_eni15_11_tpl_3_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist17_sync_together95_aunroll_x_in_c0_eni15_11_tpl_3_rdcnt_i <= $unsigned(redist17_sync_together95_aunroll_x_in_c0_eni15_11_tpl_3_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist17_sync_together95_aunroll_x_in_c0_eni15_11_tpl_3_rdcnt_q = redist17_sync_together95_aunroll_x_in_c0_eni15_11_tpl_3_rdcnt_i[0:0];

    // redist17_sync_together95_aunroll_x_in_c0_eni15_11_tpl_3_wraddr(REG,305)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together95_aunroll_x_in_c0_eni15_11_tpl_3_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist17_sync_together95_aunroll_x_in_c0_eni15_11_tpl_3_wraddr_q <= $unsigned(redist17_sync_together95_aunroll_x_in_c0_eni15_11_tpl_3_rdcnt_q);
        end
    end

    // redist17_sync_together95_aunroll_x_in_c0_eni15_11_tpl_3_mem(DUALMEM,303)
    assign redist17_sync_together95_aunroll_x_in_c0_eni15_11_tpl_3_mem_ia = $unsigned(in_c0_eni15_11_tpl);
    assign redist17_sync_together95_aunroll_x_in_c0_eni15_11_tpl_3_mem_aa = redist17_sync_together95_aunroll_x_in_c0_eni15_11_tpl_3_wraddr_q;
    assign redist17_sync_together95_aunroll_x_in_c0_eni15_11_tpl_3_mem_ab = redist17_sync_together95_aunroll_x_in_c0_eni15_11_tpl_3_rdcnt_q;
    assign redist17_sync_together95_aunroll_x_in_c0_eni15_11_tpl_3_mem_reset0 = ~ (resetn);
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
    ) redist17_sync_together95_aunroll_x_in_c0_eni15_11_tpl_3_mem_dmem (
        .clocken1(redist17_sync_together95_aunroll_x_in_c0_eni15_11_tpl_3_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist17_sync_together95_aunroll_x_in_c0_eni15_11_tpl_3_mem_reset0),
        .clock1(clock),
        .address_a(redist17_sync_together95_aunroll_x_in_c0_eni15_11_tpl_3_mem_aa),
        .data_a(redist17_sync_together95_aunroll_x_in_c0_eni15_11_tpl_3_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist17_sync_together95_aunroll_x_in_c0_eni15_11_tpl_3_mem_ab),
        .q_b(redist17_sync_together95_aunroll_x_in_c0_eni15_11_tpl_3_mem_iq),
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
    assign redist17_sync_together95_aunroll_x_in_c0_eni15_11_tpl_3_mem_q = redist17_sync_together95_aunroll_x_in_c0_eni15_11_tpl_3_mem_iq[31:0];

    // redist5_sync_together95_aunroll_x_in_c0_eni15_1_tpl_1(DELAY,271)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together95_aunroll_x_in_c0_eni15_1_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together95_aunroll_x_in_c0_eni15_1_tpl_1_q <= $unsigned(in_c0_eni15_1_tpl);
        end
    end

    // redist6_sync_together95_aunroll_x_in_c0_eni15_1_tpl_3(DELAY,272)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together95_aunroll_x_in_c0_eni15_1_tpl_3_delay_0 <= '0;
            redist6_sync_together95_aunroll_x_in_c0_eni15_1_tpl_3_q <= '0;
        end
        else
        begin
            redist6_sync_together95_aunroll_x_in_c0_eni15_1_tpl_3_delay_0 <= $unsigned(redist5_sync_together95_aunroll_x_in_c0_eni15_1_tpl_1_q);
            redist6_sync_together95_aunroll_x_in_c0_eni15_1_tpl_3_q <= redist6_sync_together95_aunroll_x_in_c0_eni15_1_tpl_3_delay_0;
        end
    end

    // valid_fanout_reg19(REG,118)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg19_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(redist23_sync_together95_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg20(REG,119)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg20_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg20_q <= $unsigned(redist23_sync_together95_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi_pop1762_push33_stencil_2d35(BLACKBOX,65)@4
    // out out_feedback_out_33@20000000
    // out out_feedback_valid_out_33@20000000
    stencil_2d_i_llvm_fpga_push_i1_memdep_phi_pop1762_push33_0 thei_llvm_fpga_push_i1_memdep_phi_pop1762_push33_stencil_2d35 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi_pop1762_pop33_stencil_2d34_out_data_out),
        .in_exitcond5(redist4_i_exitcond5_stencil_2d12_cmp_nsign_q_3_q),
        .in_feedback_stall_in_33(i_llvm_fpga_pop_i1_memdep_phi_pop1762_pop33_stencil_2d34_out_feedback_stall_out_33),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_data_out(),
        .out_feedback_out_33(i_llvm_fpga_push_i1_memdep_phi_pop1762_push33_stencil_2d35_out_feedback_out_33),
        .out_feedback_valid_out_33(i_llvm_fpga_push_i1_memdep_phi_pop1762_push33_stencil_2d35_out_feedback_valid_out_33),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi_pop1762_pop33_stencil_2d34(BLACKBOX,54)@4
    // out out_feedback_stall_out_33@20000000
    stencil_2d_i_llvm_fpga_pop_i1_memdep_phi_pop1762_pop33_0 thei_llvm_fpga_pop_i1_memdep_phi_pop1762_pop33_stencil_2d34 (
        .in_data_in(redist16_sync_together95_aunroll_x_in_c0_eni15_10_tpl_3_q),
        .in_dir(redist6_sync_together95_aunroll_x_in_c0_eni15_1_tpl_3_q),
        .in_feedback_in_33(i_llvm_fpga_push_i1_memdep_phi_pop1762_push33_stencil_2d35_out_feedback_out_33),
        .in_feedback_valid_in_33(i_llvm_fpga_push_i1_memdep_phi_pop1762_push33_stencil_2d35_out_feedback_valid_out_33),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop1762_pop33_stencil_2d34_out_data_out),
        .out_feedback_stall_out_33(i_llvm_fpga_pop_i1_memdep_phi_pop1762_pop33_stencil_2d34_out_feedback_stall_out_33),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg17(REG,116)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg17_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(redist23_sync_together95_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg18(REG,117)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg18_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(redist23_sync_together95_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp2458_push31_stencil_2d33(BLACKBOX,66)@4
    // out out_feedback_out_31@20000000
    // out out_feedback_valid_out_31@20000000
    stencil_2d_i_llvm_fpga_push_i1_notcmp2458_push31_0 thei_llvm_fpga_push_i1_notcmp2458_push31_stencil_2d33 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp2458_pop31_stencil_2d32_out_data_out),
        .in_exitcond5(redist4_i_exitcond5_stencil_2d12_cmp_nsign_q_3_q),
        .in_feedback_stall_in_31(i_llvm_fpga_pop_i1_notcmp2458_pop31_stencil_2d32_out_feedback_stall_out_31),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_data_out(),
        .out_feedback_out_31(i_llvm_fpga_push_i1_notcmp2458_push31_stencil_2d33_out_feedback_out_31),
        .out_feedback_valid_out_31(i_llvm_fpga_push_i1_notcmp2458_push31_stencil_2d33_out_feedback_valid_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_notcmp2458_pop31_stencil_2d32(BLACKBOX,55)@4
    // out out_feedback_stall_out_31@20000000
    stencil_2d_i_llvm_fpga_pop_i1_notcmp2458_pop31_0 thei_llvm_fpga_pop_i1_notcmp2458_pop31_stencil_2d32 (
        .in_data_in(redist15_sync_together95_aunroll_x_in_c0_eni15_9_tpl_3_q),
        .in_dir(redist6_sync_together95_aunroll_x_in_c0_eni15_1_tpl_3_q),
        .in_feedback_in_31(i_llvm_fpga_push_i1_notcmp2458_push31_stencil_2d33_out_feedback_out_31),
        .in_feedback_valid_in_31(i_llvm_fpga_push_i1_notcmp2458_push31_stencil_2d33_out_feedback_valid_out_31),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp2458_pop31_stencil_2d32_out_data_out),
        .out_feedback_stall_out_31(i_llvm_fpga_pop_i1_notcmp2458_pop31_stencil_2d32_out_feedback_stall_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg15(REG,114)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist23_sync_together95_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg16(REG,115)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist23_sync_together95_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_exitcond856_push30_stencil_2d31(BLACKBOX,63)@4
    // out out_feedback_out_30@20000000
    // out out_feedback_valid_out_30@20000000
    stencil_2d_i_llvm_fpga_push_i1_exitcond856_push30_0 thei_llvm_fpga_push_i1_exitcond856_push30_stencil_2d31 (
        .in_data_in(i_llvm_fpga_pop_i1_exitcond856_pop30_stencil_2d30_out_data_out),
        .in_exitcond5(redist4_i_exitcond5_stencil_2d12_cmp_nsign_q_3_q),
        .in_feedback_stall_in_30(i_llvm_fpga_pop_i1_exitcond856_pop30_stencil_2d30_out_feedback_stall_out_30),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(),
        .out_feedback_out_30(i_llvm_fpga_push_i1_exitcond856_push30_stencil_2d31_out_feedback_out_30),
        .out_feedback_valid_out_30(i_llvm_fpga_push_i1_exitcond856_push30_stencil_2d31_out_feedback_valid_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_exitcond856_pop30_stencil_2d30(BLACKBOX,52)@4
    // out out_feedback_stall_out_30@20000000
    stencil_2d_i_llvm_fpga_pop_i1_exitcond856_pop30_0 thei_llvm_fpga_pop_i1_exitcond856_pop30_stencil_2d30 (
        .in_data_in(redist14_sync_together95_aunroll_x_in_c0_eni15_8_tpl_3_q),
        .in_dir(redist6_sync_together95_aunroll_x_in_c0_eni15_1_tpl_3_q),
        .in_feedback_in_30(i_llvm_fpga_push_i1_exitcond856_push30_stencil_2d31_out_feedback_out_30),
        .in_feedback_valid_in_30(i_llvm_fpga_push_i1_exitcond856_push30_stencil_2d31_out_feedback_valid_out_30),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond856_pop30_stencil_2d30_out_data_out),
        .out_feedback_stall_out_30(i_llvm_fpga_pop_i1_exitcond856_pop30_stencil_2d30_out_feedback_stall_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg13(REG,112)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist23_sync_together95_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg14(REG,113)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist23_sync_together95_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi1_pop1454_push29_stencil_2d29(BLACKBOX,64)@4
    // out out_feedback_out_29@20000000
    // out out_feedback_valid_out_29@20000000
    stencil_2d_i_llvm_fpga_push_i1_memdep_phi1_pop1454_push29_0 thei_llvm_fpga_push_i1_memdep_phi1_pop1454_push29_stencil_2d29 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi1_pop1454_pop29_stencil_2d28_out_data_out),
        .in_exitcond5(redist4_i_exitcond5_stencil_2d12_cmp_nsign_q_3_q),
        .in_feedback_stall_in_29(i_llvm_fpga_pop_i1_memdep_phi1_pop1454_pop29_stencil_2d28_out_feedback_stall_out_29),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(),
        .out_feedback_out_29(i_llvm_fpga_push_i1_memdep_phi1_pop1454_push29_stencil_2d29_out_feedback_out_29),
        .out_feedback_valid_out_29(i_llvm_fpga_push_i1_memdep_phi1_pop1454_push29_stencil_2d29_out_feedback_valid_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi1_pop1454_pop29_stencil_2d28(BLACKBOX,53)@4
    // out out_feedback_stall_out_29@20000000
    stencil_2d_i_llvm_fpga_pop_i1_memdep_phi1_pop1454_pop29_0 thei_llvm_fpga_pop_i1_memdep_phi1_pop1454_pop29_stencil_2d28 (
        .in_data_in(redist13_sync_together95_aunroll_x_in_c0_eni15_7_tpl_3_q),
        .in_dir(redist6_sync_together95_aunroll_x_in_c0_eni15_1_tpl_3_q),
        .in_feedback_in_29(i_llvm_fpga_push_i1_memdep_phi1_pop1454_push29_stencil_2d29_out_feedback_out_29),
        .in_feedback_valid_in_29(i_llvm_fpga_push_i1_memdep_phi1_pop1454_push29_stencil_2d29_out_feedback_valid_out_29),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi1_pop1454_pop29_stencil_2d28_out_data_out),
        .out_feedback_stall_out_29(i_llvm_fpga_pop_i1_memdep_phi1_pop1454_pop29_stencil_2d28_out_feedback_stall_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg11(REG,110)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist23_sync_together95_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg12(REG,111)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist23_sync_together95_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp2951_push28_stencil_2d27(BLACKBOX,67)@4
    // out out_feedback_out_28@20000000
    // out out_feedback_valid_out_28@20000000
    stencil_2d_i_llvm_fpga_push_i1_notcmp2951_push28_0 thei_llvm_fpga_push_i1_notcmp2951_push28_stencil_2d27 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp2951_pop28_stencil_2d26_out_data_out),
        .in_exitcond5(redist4_i_exitcond5_stencil_2d12_cmp_nsign_q_3_q),
        .in_feedback_stall_in_28(i_llvm_fpga_pop_i1_notcmp2951_pop28_stencil_2d26_out_feedback_stall_out_28),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(),
        .out_feedback_out_28(i_llvm_fpga_push_i1_notcmp2951_push28_stencil_2d27_out_feedback_out_28),
        .out_feedback_valid_out_28(i_llvm_fpga_push_i1_notcmp2951_push28_stencil_2d27_out_feedback_valid_out_28),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_notcmp2951_pop28_stencil_2d26(BLACKBOX,56)@4
    // out out_feedback_stall_out_28@20000000
    stencil_2d_i_llvm_fpga_pop_i1_notcmp2951_pop28_0 thei_llvm_fpga_pop_i1_notcmp2951_pop28_stencil_2d26 (
        .in_data_in(redist12_sync_together95_aunroll_x_in_c0_eni15_6_tpl_3_q),
        .in_dir(redist6_sync_together95_aunroll_x_in_c0_eni15_1_tpl_3_q),
        .in_feedback_in_28(i_llvm_fpga_push_i1_notcmp2951_push28_stencil_2d27_out_feedback_out_28),
        .in_feedback_valid_in_28(i_llvm_fpga_push_i1_notcmp2951_push28_stencil_2d27_out_feedback_valid_out_28),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp2951_pop28_stencil_2d26_out_data_out),
        .out_feedback_stall_out_28(i_llvm_fpga_pop_i1_notcmp2951_pop28_stencil_2d26_out_feedback_stall_out_28),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg9(REG,108)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist23_sync_together95_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg10(REG,109)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist23_sync_together95_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_exitcond1148_push27_stencil_2d25(BLACKBOX,62)@4
    // out out_feedback_out_27@20000000
    // out out_feedback_valid_out_27@20000000
    stencil_2d_i_llvm_fpga_push_i1_exitcond1148_push27_0 thei_llvm_fpga_push_i1_exitcond1148_push27_stencil_2d25 (
        .in_data_in(i_llvm_fpga_pop_i1_exitcond1148_pop27_stencil_2d24_out_data_out),
        .in_exitcond5(redist4_i_exitcond5_stencil_2d12_cmp_nsign_q_3_q),
        .in_feedback_stall_in_27(i_llvm_fpga_pop_i1_exitcond1148_pop27_stencil_2d24_out_feedback_stall_out_27),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_27(i_llvm_fpga_push_i1_exitcond1148_push27_stencil_2d25_out_feedback_out_27),
        .out_feedback_valid_out_27(i_llvm_fpga_push_i1_exitcond1148_push27_stencil_2d25_out_feedback_valid_out_27),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_exitcond1148_pop27_stencil_2d24(BLACKBOX,51)@4
    // out out_feedback_stall_out_27@20000000
    stencil_2d_i_llvm_fpga_pop_i1_exitcond1148_pop27_0 thei_llvm_fpga_pop_i1_exitcond1148_pop27_stencil_2d24 (
        .in_data_in(redist11_sync_together95_aunroll_x_in_c0_eni15_5_tpl_3_q),
        .in_dir(redist6_sync_together95_aunroll_x_in_c0_eni15_1_tpl_3_q),
        .in_feedback_in_27(i_llvm_fpga_push_i1_exitcond1148_push27_stencil_2d25_out_feedback_out_27),
        .in_feedback_valid_in_27(i_llvm_fpga_push_i1_exitcond1148_push27_stencil_2d25_out_feedback_valid_out_27),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond1148_pop27_stencil_2d24_out_data_out),
        .out_feedback_stall_out_27(i_llvm_fpga_pop_i1_exitcond1148_pop27_stencil_2d24_out_feedback_stall_out_27),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg7(REG,106)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist23_sync_together95_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg8(REG,107)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist23_sync_together95_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i32_mul2545_push26_stencil_2d23(BLACKBOX,71)@4
    // out out_feedback_out_26@20000000
    // out out_feedback_valid_out_26@20000000
    stencil_2d_i_llvm_fpga_push_i32_mul2545_push26_0 thei_llvm_fpga_push_i32_mul2545_push26_stencil_2d23 (
        .in_data_in(i_llvm_fpga_pop_i32_mul2545_pop26_stencil_2d22_out_data_out),
        .in_exitcond5(redist4_i_exitcond5_stencil_2d12_cmp_nsign_q_3_q),
        .in_feedback_stall_in_26(i_llvm_fpga_pop_i32_mul2545_pop26_stencil_2d22_out_feedback_stall_out_26),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_26(i_llvm_fpga_push_i32_mul2545_push26_stencil_2d23_out_feedback_out_26),
        .out_feedback_valid_out_26(i_llvm_fpga_push_i32_mul2545_push26_stencil_2d23_out_feedback_valid_out_26),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_mul2545_pop26_stencil_2d22(BLACKBOX,59)@4
    // out out_feedback_stall_out_26@20000000
    stencil_2d_i_llvm_fpga_pop_i32_mul2545_pop26_0 thei_llvm_fpga_pop_i32_mul2545_pop26_stencil_2d22 (
        .in_data_in(redist10_sync_together95_aunroll_x_in_c0_eni15_4_tpl_3_mem_q),
        .in_dir(redist6_sync_together95_aunroll_x_in_c0_eni15_1_tpl_3_q),
        .in_feedback_in_26(i_llvm_fpga_push_i32_mul2545_push26_stencil_2d23_out_feedback_out_26),
        .in_feedback_valid_in_26(i_llvm_fpga_push_i32_mul2545_push26_stencil_2d23_out_feedback_valid_out_26),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_i32_mul2545_pop26_stencil_2d22_out_data_out),
        .out_feedback_stall_out_26(i_llvm_fpga_pop_i32_mul2545_pop26_stencil_2d22_out_feedback_stall_out_26),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_notcmp19_stencil_2d16(LOGICAL,75)@4
    assign i_notcmp19_stencil_2d16_q = redist4_i_exitcond5_stencil_2d12_cmp_nsign_q_3_q ^ VCC_q;

    // redist2_i_exitcond5_stencil_2d12_cmp_nsign_q_1(DELAY,268)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_exitcond5_stencil_2d12_cmp_nsign_q_1_q <= '0;
        end
        else
        begin
            redist2_i_exitcond5_stencil_2d12_cmp_nsign_q_1_q <= $unsigned(i_exitcond5_stencil_2d12_cmp_nsign_q);
        end
    end

    // redist3_i_exitcond5_stencil_2d12_cmp_nsign_q_2(DELAY,269)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_exitcond5_stencil_2d12_cmp_nsign_q_2_q <= '0;
        end
        else
        begin
            redist3_i_exitcond5_stencil_2d12_cmp_nsign_q_2_q <= $unsigned(redist2_i_exitcond5_stencil_2d12_cmp_nsign_q_1_q);
        end
    end

    // redist4_i_exitcond5_stencil_2d12_cmp_nsign_q_3(DELAY,270)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_exitcond5_stencil_2d12_cmp_nsign_q_3_q <= '0;
        end
        else
        begin
            redist4_i_exitcond5_stencil_2d12_cmp_nsign_q_3_q <= $unsigned(redist3_i_exitcond5_stencil_2d12_cmp_nsign_q_2_q);
        end
    end

    // i_dot1_prod_stencil_2d9_multconst_x(CONSTANT,92)
    assign i_dot1_prod_stencil_2d9_multconst_x_q = $unsigned(27'b000000000000000000000000000);

    // valid_fanout_reg2(REG,101)@1 + 1
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

    // valid_fanout_reg5(REG,104)@1 + 1
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

    // i_llvm_fpga_push_i32_r_026_pop1342_push25_stencil_2d15(BLACKBOX,72)@2
    // out out_feedback_out_25@20000000
    // out out_feedback_valid_out_25@20000000
    stencil_2d_i_llvm_fpga_push_i32_r_026_pop1342_push25_0 thei_llvm_fpga_push_i32_r_026_pop1342_push25_stencil_2d15 (
        .in_data_in(i_llvm_fpga_pop_i32_r_026_pop1342_pop25_stencil_2d6_out_data_out),
        .in_exitcond5(redist2_i_exitcond5_stencil_2d12_cmp_nsign_q_1_q),
        .in_feedback_stall_in_25(i_llvm_fpga_pop_i32_r_026_pop1342_pop25_stencil_2d6_out_feedback_stall_out_25),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_25(i_llvm_fpga_push_i32_r_026_pop1342_push25_stencil_2d15_out_feedback_out_25),
        .out_feedback_valid_out_25(i_llvm_fpga_push_i32_r_026_pop1342_push25_stencil_2d15_out_feedback_valid_out_25),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_r_026_pop1342_pop25_stencil_2d6(BLACKBOX,60)@2
    // out out_feedback_stall_out_25@20000000
    stencil_2d_i_llvm_fpga_pop_i32_r_026_pop1342_pop25_0 thei_llvm_fpga_pop_i32_r_026_pop1342_pop25_stencil_2d6 (
        .in_data_in(redist7_sync_together95_aunroll_x_in_c0_eni15_2_tpl_1_q),
        .in_dir(redist5_sync_together95_aunroll_x_in_c0_eni15_1_tpl_1_q),
        .in_feedback_in_25(i_llvm_fpga_push_i32_r_026_pop1342_push25_stencil_2d15_out_feedback_out_25),
        .in_feedback_valid_in_25(i_llvm_fpga_push_i32_r_026_pop1342_push25_stencil_2d15_out_feedback_valid_out_25),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_i32_r_026_pop1342_pop25_stencil_2d6_out_data_out),
        .out_feedback_stall_out_25(i_llvm_fpga_pop_i32_r_026_pop1342_pop25_stencil_2d6_out_feedback_stall_out_25),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist25_i_llvm_fpga_pop_i32_r_026_pop1342_pop25_stencil_2d6_out_data_out_1(DELAY,291)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_llvm_fpga_pop_i32_r_026_pop1342_pop25_stencil_2d6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist25_i_llvm_fpga_pop_i32_r_026_pop1342_pop25_stencil_2d6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_r_026_pop1342_pop25_stencil_2d6_out_data_out);
        end
    end

    // valid_fanout_reg1(REG,100)@1 + 1
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

    // valid_fanout_reg6(REG,105)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist22_sync_together95_aunroll_x_in_i_valid_1_q);
        end
    end

    // c_i32_163(CONSTANT,36)
    assign c_i32_163_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc23_stencil_2d20(ADD,49)@3
    assign i_inc23_stencil_2d20_a = {1'b0, redist27_i_llvm_fpga_pop_i32_k1_024_pop24_stencil_2d3_out_data_out_1_q};
    assign i_inc23_stencil_2d20_b = {1'b0, c_i32_163_q};
    assign i_inc23_stencil_2d20_o = $unsigned(i_inc23_stencil_2d20_a) + $unsigned(i_inc23_stencil_2d20_b);
    assign i_inc23_stencil_2d20_q = i_inc23_stencil_2d20_o[32:0];

    // bgTrunc_i_inc23_stencil_2d20_sel_x(BITSELECT,87)@3
    assign bgTrunc_i_inc23_stencil_2d20_sel_x_b = i_inc23_stencil_2d20_q[31:0];

    // i_llvm_fpga_push_i32_k1_024_push24_stencil_2d21(BLACKBOX,70)@3
    // out out_feedback_out_24@20000000
    // out out_feedback_valid_out_24@20000000
    stencil_2d_i_llvm_fpga_push_i32_k1_024_push24_0 thei_llvm_fpga_push_i32_k1_024_push24_stencil_2d21 (
        .in_data_in(bgTrunc_i_inc23_stencil_2d20_sel_x_b),
        .in_exitcond5(redist3_i_exitcond5_stencil_2d12_cmp_nsign_q_2_q),
        .in_feedback_stall_in_24(i_llvm_fpga_pop_i32_k1_024_pop24_stencil_2d3_out_feedback_stall_out_24),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_24(i_llvm_fpga_push_i32_k1_024_push24_stencil_2d21_out_feedback_out_24),
        .out_feedback_valid_out_24(i_llvm_fpga_push_i32_k1_024_push24_stencil_2d21_out_feedback_valid_out_24),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_062(CONSTANT,35)
    assign c_i32_062_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_k1_024_pop24_stencil_2d3(BLACKBOX,58)@2
    // out out_feedback_stall_out_24@20000000
    stencil_2d_i_llvm_fpga_pop_i32_k1_024_pop24_0 thei_llvm_fpga_pop_i32_k1_024_pop24_stencil_2d3 (
        .in_data_in(c_i32_062_q),
        .in_dir(redist5_sync_together95_aunroll_x_in_c0_eni15_1_tpl_1_q),
        .in_feedback_in_24(i_llvm_fpga_push_i32_k1_024_push24_stencil_2d21_out_feedback_out_24),
        .in_feedback_valid_in_24(i_llvm_fpga_push_i32_k1_024_push24_stencil_2d21_out_feedback_valid_out_24),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i32_k1_024_pop24_stencil_2d3_out_data_out),
        .out_feedback_stall_out_24(i_llvm_fpga_pop_i32_k1_024_pop24_stencil_2d3_out_feedback_stall_out_24),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist27_i_llvm_fpga_pop_i32_k1_024_pop24_stencil_2d3_out_data_out_1(DELAY,293)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_llvm_fpga_pop_i32_k1_024_pop24_stencil_2d3_out_data_out_1_q <= '0;
        end
        else
        begin
            redist27_i_llvm_fpga_pop_i32_k1_024_pop24_stencil_2d3_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_k1_024_pop24_stencil_2d3_out_data_out);
        end
    end

    // i_add14_stencil_2d7(ADD,41)@3
    assign i_add14_stencil_2d7_a = {1'b0, redist27_i_llvm_fpga_pop_i32_k1_024_pop24_stencil_2d3_out_data_out_1_q};
    assign i_add14_stencil_2d7_b = {1'b0, redist25_i_llvm_fpga_pop_i32_r_026_pop1342_pop25_stencil_2d6_out_data_out_1_q};
    assign i_add14_stencil_2d7_o = $unsigned(i_add14_stencil_2d7_a) + $unsigned(i_add14_stencil_2d7_b);
    assign i_add14_stencil_2d7_q = i_add14_stencil_2d7_o[32:0];

    // bgTrunc_i_add14_stencil_2d7_sel_x(BITSELECT,83)@3
    assign bgTrunc_i_add14_stencil_2d7_sel_x_b = i_add14_stencil_2d7_q[31:0];

    // i_dot1_prod_stencil_2d9_bs1_merged_bit_select(BITSELECT,265)@3
    assign i_dot1_prod_stencil_2d9_bs1_merged_bit_select_b = bgTrunc_i_add14_stencil_2d7_sel_x_b[31:18];
    assign i_dot1_prod_stencil_2d9_bs1_merged_bit_select_c = bgTrunc_i_add14_stencil_2d7_sel_x_b[17:0];

    // xIfSign_mergedSignalTM_uid172_i_dot1_prod_stencil_2d9_im0(BITJOIN,171)@3
    assign xIfSign_mergedSignalTM_uid172_i_dot1_prod_stencil_2d9_im0_q = {GND_q, i_dot1_prod_stencil_2d9_bs1_merged_bit_select_b};

    // padACst_uid176_i_dot1_prod_stencil_2d9_im0(CONSTANT,175)
    assign padACst_uid176_i_dot1_prod_stencil_2d9_im0_q = $unsigned(4'b0000);

    // aPostPad_uid177_i_dot1_prod_stencil_2d9_im0(BITJOIN,176)@3
    assign aPostPad_uid177_i_dot1_prod_stencil_2d9_im0_q = {xIfSign_mergedSignalTM_uid172_i_dot1_prod_stencil_2d9_im0_q, padACst_uid176_i_dot1_prod_stencil_2d9_im0_q};

    // sub_uid178_i_dot1_prod_stencil_2d9_im0(SUB,177)@3
    assign sub_uid178_i_dot1_prod_stencil_2d9_im0_a = $unsigned({{1{aPostPad_uid177_i_dot1_prod_stencil_2d9_im0_q[18]}}, aPostPad_uid177_i_dot1_prod_stencil_2d9_im0_q});
    assign sub_uid178_i_dot1_prod_stencil_2d9_im0_b = $unsigned({{5{xIfSign_mergedSignalTM_uid172_i_dot1_prod_stencil_2d9_im0_q[14]}}, xIfSign_mergedSignalTM_uid172_i_dot1_prod_stencil_2d9_im0_q});
    assign sub_uid178_i_dot1_prod_stencil_2d9_im0_o = $unsigned($signed(sub_uid178_i_dot1_prod_stencil_2d9_im0_a) - $signed(sub_uid178_i_dot1_prod_stencil_2d9_im0_b));
    assign sub_uid178_i_dot1_prod_stencil_2d9_im0_q = sub_uid178_i_dot1_prod_stencil_2d9_im0_o[19:0];

    // sR_bottomRange_uid182_i_dot1_prod_stencil_2d9_im0(BITSELECT,181)@3
    assign sR_bottomRange_uid182_i_dot1_prod_stencil_2d9_im0_in = $unsigned(sub_uid178_i_dot1_prod_stencil_2d9_im0_q[17:0]);
    assign sR_bottomRange_uid182_i_dot1_prod_stencil_2d9_im0_b = $unsigned(sR_bottomRange_uid182_i_dot1_prod_stencil_2d9_im0_in[17:0]);

    // redist1_sR_bottomRange_uid182_i_dot1_prod_stencil_2d9_im0_b_1(DELAY,267)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sR_bottomRange_uid182_i_dot1_prod_stencil_2d9_im0_b_1_q <= '0;
        end
        else
        begin
            redist1_sR_bottomRange_uid182_i_dot1_prod_stencil_2d9_im0_b_1_q <= $unsigned(sR_bottomRange_uid182_i_dot1_prod_stencil_2d9_im0_b);
        end
    end

    // sR_mergedSignalTM_uid183_i_dot1_prod_stencil_2d9_im0(BITJOIN,182)@4
    assign sR_mergedSignalTM_uid183_i_dot1_prod_stencil_2d9_im0_q = {redist1_sR_bottomRange_uid182_i_dot1_prod_stencil_2d9_im0_b_1_q, GND_q};

    // i_dot1_prod_stencil_2d9_sums_align_1(BITSHIFT,134)@4
    assign i_dot1_prod_stencil_2d9_sums_align_1_qint = { sR_mergedSignalTM_uid183_i_dot1_prod_stencil_2d9_im0_q, 18'b000000000000000000 };
    assign i_dot1_prod_stencil_2d9_sums_align_1_q = i_dot1_prod_stencil_2d9_sums_align_1_qint[36:0];

    // xIfSign_mergedSignalTM_uid228_i_dot1_prod_stencil_2d9_im3(BITJOIN,227)@3
    assign xIfSign_mergedSignalTM_uid228_i_dot1_prod_stencil_2d9_im3_q = {GND_q, i_dot1_prod_stencil_2d9_bs1_merged_bit_select_c};

    // aPostPad_uid233_i_dot1_prod_stencil_2d9_im3(BITJOIN,232)@3
    assign aPostPad_uid233_i_dot1_prod_stencil_2d9_im3_q = {xIfSign_mergedSignalTM_uid228_i_dot1_prod_stencil_2d9_im3_q, padACst_uid176_i_dot1_prod_stencil_2d9_im0_q};

    // sub_uid234_i_dot1_prod_stencil_2d9_im3(SUB,233)@3
    assign sub_uid234_i_dot1_prod_stencil_2d9_im3_a = $unsigned({{1{aPostPad_uid233_i_dot1_prod_stencil_2d9_im3_q[22]}}, aPostPad_uid233_i_dot1_prod_stencil_2d9_im3_q});
    assign sub_uid234_i_dot1_prod_stencil_2d9_im3_b = $unsigned({{5{xIfSign_mergedSignalTM_uid228_i_dot1_prod_stencil_2d9_im3_q[18]}}, xIfSign_mergedSignalTM_uid228_i_dot1_prod_stencil_2d9_im3_q});
    assign sub_uid234_i_dot1_prod_stencil_2d9_im3_o = $unsigned($signed(sub_uid234_i_dot1_prod_stencil_2d9_im3_a) - $signed(sub_uid234_i_dot1_prod_stencil_2d9_im3_b));
    assign sub_uid234_i_dot1_prod_stencil_2d9_im3_q = sub_uid234_i_dot1_prod_stencil_2d9_im3_o[23:0];

    // sR_bottomRange_uid238_i_dot1_prod_stencil_2d9_im3(BITSELECT,237)@3
    assign sR_bottomRange_uid238_i_dot1_prod_stencil_2d9_im3_in = $unsigned(sub_uid234_i_dot1_prod_stencil_2d9_im3_q[21:0]);
    assign sR_bottomRange_uid238_i_dot1_prod_stencil_2d9_im3_b = $unsigned(sR_bottomRange_uid238_i_dot1_prod_stencil_2d9_im3_in[21:0]);

    // redist0_sR_bottomRange_uid238_i_dot1_prod_stencil_2d9_im3_b_1(DELAY,266)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sR_bottomRange_uid238_i_dot1_prod_stencil_2d9_im3_b_1_q <= '0;
        end
        else
        begin
            redist0_sR_bottomRange_uid238_i_dot1_prod_stencil_2d9_im3_b_1_q <= $unsigned(sR_bottomRange_uid238_i_dot1_prod_stencil_2d9_im3_b);
        end
    end

    // sR_mergedSignalTM_uid239_i_dot1_prod_stencil_2d9_im3(BITJOIN,238)@4
    assign sR_mergedSignalTM_uid239_i_dot1_prod_stencil_2d9_im3_q = {redist0_sR_bottomRange_uid238_i_dot1_prod_stencil_2d9_im3_b_1_q, GND_q};

    // i_dot1_prod_stencil_2d9_sums_result_add_0_0(ADD,136)@4
    assign i_dot1_prod_stencil_2d9_sums_result_add_0_0_a = {15'b000000000000000, sR_mergedSignalTM_uid239_i_dot1_prod_stencil_2d9_im3_q};
    assign i_dot1_prod_stencil_2d9_sums_result_add_0_0_b = {1'b0, i_dot1_prod_stencil_2d9_sums_align_1_q};
    assign i_dot1_prod_stencil_2d9_sums_result_add_0_0_o = $unsigned(i_dot1_prod_stencil_2d9_sums_result_add_0_0_a) + $unsigned(i_dot1_prod_stencil_2d9_sums_result_add_0_0_b);
    assign i_dot1_prod_stencil_2d9_sums_result_add_0_0_q = i_dot1_prod_stencil_2d9_sums_result_add_0_0_o[37:0];

    // i_dot1_prod_stencil_2d9_extender_x(BITJOIN,91)@4
    assign i_dot1_prod_stencil_2d9_extender_x_q = {i_dot1_prod_stencil_2d9_multconst_x_q, i_dot1_prod_stencil_2d9_sums_result_add_0_0_q[36:0]};

    // bgTrunc_i_dot1_prod_stencil_2d9_sel_x(BITSELECT,84)@4
    assign bgTrunc_i_dot1_prod_stencil_2d9_sel_x_b = i_dot1_prod_stencil_2d9_extender_x_q[31:0];

    // i_dot1_prod_stencil_2d9_vt_select_31(BITSELECT,45)@4
    assign i_dot1_prod_stencil_2d9_vt_select_31_b = bgTrunc_i_dot1_prod_stencil_2d9_sel_x_b[31:1];

    // i_dot1_prod_stencil_2d9_vt_join(BITJOIN,44)@4
    assign i_dot1_prod_stencil_2d9_vt_join_q = {i_dot1_prod_stencil_2d9_vt_select_31_b, GND_q};

    // i_dot_prod_add_stencil_2d10(ADD,46)@4
    assign i_dot_prod_add_stencil_2d10_a = {1'b0, i_dot1_prod_stencil_2d9_vt_join_q};
    assign i_dot_prod_add_stencil_2d10_b = {1'b0, i_llvm_fpga_pop_i32_c_025_pop1660_pop32_stencil_2d8_out_data_out};
    assign i_dot_prod_add_stencil_2d10_o = $unsigned(i_dot_prod_add_stencil_2d10_a) + $unsigned(i_dot_prod_add_stencil_2d10_b);
    assign i_dot_prod_add_stencil_2d10_q = i_dot_prod_add_stencil_2d10_o[32:0];

    // bgTrunc_i_dot_prod_add_stencil_2d10_sel_x(BITSELECT,85)@4
    assign bgTrunc_i_dot_prod_add_stencil_2d10_sel_x_b = i_dot_prod_add_stencil_2d10_q[31:0];

    // valid_fanout_reg3(REG,102)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist23_sync_together95_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg4(REG,103)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist23_sync_together95_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i32_c_025_pop1660_push32_stencil_2d14(BLACKBOX,69)@4
    // out out_feedback_out_32@20000000
    // out out_feedback_valid_out_32@20000000
    stencil_2d_i_llvm_fpga_push_i32_c_025_pop1660_push32_0 thei_llvm_fpga_push_i32_c_025_pop1660_push32_stencil_2d14 (
        .in_data_in(i_llvm_fpga_pop_i32_c_025_pop1660_pop32_stencil_2d8_out_data_out),
        .in_exitcond5(redist4_i_exitcond5_stencil_2d12_cmp_nsign_q_3_q),
        .in_feedback_stall_in_32(i_llvm_fpga_pop_i32_c_025_pop1660_pop32_stencil_2d8_out_feedback_stall_out_32),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(),
        .out_feedback_out_32(i_llvm_fpga_push_i32_c_025_pop1660_push32_stencil_2d14_out_feedback_out_32),
        .out_feedback_valid_out_32(i_llvm_fpga_push_i32_c_025_pop1660_push32_stencil_2d14_out_feedback_valid_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_c_025_pop1660_pop32_stencil_2d8(BLACKBOX,57)@4
    // out out_feedback_stall_out_32@20000000
    stencil_2d_i_llvm_fpga_pop_i32_c_025_pop1660_pop32_0 thei_llvm_fpga_pop_i32_c_025_pop1660_pop32_stencil_2d8 (
        .in_data_in(redist9_sync_together95_aunroll_x_in_c0_eni15_3_tpl_3_outputreg0_q),
        .in_dir(redist6_sync_together95_aunroll_x_in_c0_eni15_1_tpl_3_q),
        .in_feedback_in_32(i_llvm_fpga_push_i32_c_025_pop1660_push32_stencil_2d14_out_feedback_out_32),
        .in_feedback_valid_in_32(i_llvm_fpga_push_i32_c_025_pop1660_push32_stencil_2d14_out_feedback_valid_out_32),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(i_llvm_fpga_pop_i32_c_025_pop1660_pop32_stencil_2d8_out_data_out),
        .out_feedback_stall_out_32(i_llvm_fpga_pop_i32_c_025_pop1660_pop32_stencil_2d8_out_feedback_stall_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist26_i_llvm_fpga_pop_i32_r_026_pop1342_pop25_stencil_2d6_out_data_out_2(DELAY,292)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_llvm_fpga_pop_i32_r_026_pop1342_pop25_stencil_2d6_out_data_out_2_q <= '0;
        end
        else
        begin
            redist26_i_llvm_fpga_pop_i32_r_026_pop1342_pop25_stencil_2d6_out_data_out_2_q <= $unsigned(redist25_i_llvm_fpga_pop_i32_r_026_pop1342_pop25_stencil_2d6_out_data_out_1_q);
        end
    end

    // leftShiftStage0Idx1Rng1_uid143_i_unnamed_stencil_2d0_shift_x(BITSELECT,142)@3
    assign leftShiftStage0Idx1Rng1_uid143_i_unnamed_stencil_2d0_shift_x_in = redist27_i_llvm_fpga_pop_i32_k1_024_pop24_stencil_2d3_out_data_out_1_q[30:0];
    assign leftShiftStage0Idx1Rng1_uid143_i_unnamed_stencil_2d0_shift_x_b = leftShiftStage0Idx1Rng1_uid143_i_unnamed_stencil_2d0_shift_x_in[30:0];

    // leftShiftStage0Idx1_uid144_i_unnamed_stencil_2d0_shift_x(BITJOIN,143)@3
    assign leftShiftStage0Idx1_uid144_i_unnamed_stencil_2d0_shift_x_q = {leftShiftStage0Idx1Rng1_uid143_i_unnamed_stencil_2d0_shift_x_b, GND_q};

    // leftShiftStage0_uid146_i_unnamed_stencil_2d0_shift_x(MUX,145)@3
    assign leftShiftStage0_uid146_i_unnamed_stencil_2d0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid146_i_unnamed_stencil_2d0_shift_x_s or redist27_i_llvm_fpga_pop_i32_k1_024_pop24_stencil_2d3_out_data_out_1_q or leftShiftStage0Idx1_uid144_i_unnamed_stencil_2d0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid146_i_unnamed_stencil_2d0_shift_x_s)
            1'b0 : leftShiftStage0_uid146_i_unnamed_stencil_2d0_shift_x_q = redist27_i_llvm_fpga_pop_i32_k1_024_pop24_stencil_2d3_out_data_out_1_q;
            1'b1 : leftShiftStage0_uid146_i_unnamed_stencil_2d0_shift_x_q = leftShiftStage0Idx1_uid144_i_unnamed_stencil_2d0_shift_x_q;
            default : leftShiftStage0_uid146_i_unnamed_stencil_2d0_shift_x_q = 32'b0;
        endcase
    end

    // i_unnamed_stencil_2d4_vt_select_31(BITSELECT,78)@3
    assign i_unnamed_stencil_2d4_vt_select_31_b = leftShiftStage0_uid146_i_unnamed_stencil_2d0_shift_x_q[31:1];

    // i_unnamed_stencil_2d4_vt_join(BITJOIN,77)@3
    assign i_unnamed_stencil_2d4_vt_join_q = {i_unnamed_stencil_2d4_vt_select_31_b, GND_q};

    // i_mul13_add13_stencil_2d5(ADD,74)@3
    assign i_mul13_add13_stencil_2d5_a = {1'b0, redist27_i_llvm_fpga_pop_i32_k1_024_pop24_stencil_2d3_out_data_out_1_q};
    assign i_mul13_add13_stencil_2d5_b = {1'b0, i_unnamed_stencil_2d4_vt_join_q};
    assign i_mul13_add13_stencil_2d5_o = $unsigned(i_mul13_add13_stencil_2d5_a) + $unsigned(i_mul13_add13_stencil_2d5_b);
    assign i_mul13_add13_stencil_2d5_q = i_mul13_add13_stencil_2d5_o[32:0];

    // bgTrunc_i_mul13_add13_stencil_2d5_sel_x(BITSELECT,88)@3
    assign bgTrunc_i_mul13_add13_stencil_2d5_sel_x_b = i_mul13_add13_stencil_2d5_q[31:0];

    // redist24_bgTrunc_i_mul13_add13_stencil_2d5_sel_x_b_1(DELAY,290)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_bgTrunc_i_mul13_add13_stencil_2d5_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist24_bgTrunc_i_mul13_add13_stencil_2d5_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul13_add13_stencil_2d5_sel_x_b);
        end
    end

    // sync_out_aunroll_x(GPOUT,97)@4
    assign out_c0_exi28_0_tpl = GND_q;
    assign out_c0_exi28_1_tpl = redist24_bgTrunc_i_mul13_add13_stencil_2d5_sel_x_b_1_q;
    assign out_c0_exi28_2_tpl = redist26_i_llvm_fpga_pop_i32_r_026_pop1342_pop25_stencil_2d6_out_data_out_2_q;
    assign out_c0_exi28_3_tpl = i_llvm_fpga_pop_i32_c_025_pop1660_pop32_stencil_2d8_out_data_out;
    assign out_c0_exi28_4_tpl = bgTrunc_i_dot_prod_add_stencil_2d10_sel_x_b;
    assign out_c0_exi28_5_tpl = redist4_i_exitcond5_stencil_2d12_cmp_nsign_q_3_q;
    assign out_c0_exi28_6_tpl = i_notcmp19_stencil_2d16_q;
    assign out_c0_exi28_7_tpl = i_llvm_fpga_pop_i32_mul2545_pop26_stencil_2d22_out_data_out;
    assign out_c0_exi28_8_tpl = i_llvm_fpga_pop_i1_exitcond1148_pop27_stencil_2d24_out_data_out;
    assign out_c0_exi28_9_tpl = i_llvm_fpga_pop_i1_notcmp2951_pop28_stencil_2d26_out_data_out;
    assign out_c0_exi28_10_tpl = i_llvm_fpga_pop_i1_memdep_phi1_pop1454_pop29_stencil_2d28_out_data_out;
    assign out_c0_exi28_11_tpl = i_llvm_fpga_pop_i1_exitcond856_pop30_stencil_2d30_out_data_out;
    assign out_c0_exi28_12_tpl = i_llvm_fpga_pop_i1_notcmp2458_pop31_stencil_2d32_out_data_out;
    assign out_c0_exi28_13_tpl = i_llvm_fpga_pop_i1_memdep_phi_pop1762_pop33_stencil_2d34_out_data_out;
    assign out_c0_exi28_14_tpl = redist6_sync_together95_aunroll_x_in_c0_eni15_1_tpl_3_q;
    assign out_c0_exi28_15_tpl = redist17_sync_together95_aunroll_x_in_c0_eni15_11_tpl_3_mem_q;
    assign out_c0_exi28_16_tpl = redist18_sync_together95_aunroll_x_in_c0_eni15_12_tpl_3_mem_q;
    assign out_c0_exi28_17_tpl = redist19_sync_together95_aunroll_x_in_c0_eni15_13_tpl_3_q;
    assign out_c0_exi28_18_tpl = redist20_sync_together95_aunroll_x_in_c0_eni15_14_tpl_3_q;
    assign out_c0_exi28_19_tpl = redist21_sync_together95_aunroll_x_in_c0_eni15_15_tpl_3_q;
    assign out_c0_exi28_20_tpl = redist14_sync_together95_aunroll_x_in_c0_eni15_8_tpl_3_q;
    assign out_c0_exi28_21_tpl = redist15_sync_together95_aunroll_x_in_c0_eni15_9_tpl_3_q;
    assign out_c0_exi28_22_tpl = redist9_sync_together95_aunroll_x_in_c0_eni15_3_tpl_3_outputreg0_q;
    assign out_c0_exi28_23_tpl = redist16_sync_together95_aunroll_x_in_c0_eni15_10_tpl_3_q;
    assign out_c0_exi28_24_tpl = redist8_sync_together95_aunroll_x_in_c0_eni15_2_tpl_3_q;
    assign out_c0_exi28_25_tpl = redist10_sync_together95_aunroll_x_in_c0_eni15_4_tpl_3_mem_q;
    assign out_c0_exi28_26_tpl = redist11_sync_together95_aunroll_x_in_c0_eni15_5_tpl_3_q;
    assign out_c0_exi28_27_tpl = redist12_sync_together95_aunroll_x_in_c0_eni15_6_tpl_3_q;
    assign out_c0_exi28_28_tpl = redist13_sync_together95_aunroll_x_in_c0_eni15_7_tpl_3_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_stencil_2d1 = GND_q;

endmodule
