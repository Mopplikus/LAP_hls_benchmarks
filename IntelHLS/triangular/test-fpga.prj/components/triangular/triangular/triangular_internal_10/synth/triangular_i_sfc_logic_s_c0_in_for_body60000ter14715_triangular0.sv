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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body6_triangulars_c0_enter14715_triangular0
// Created for function/kernel triangular
// SystemVerilog created on Wed Apr  5 14:46:58 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module triangular_i_sfc_logic_s_c0_in_for_body60000ter14715_triangular0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_triangular6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_triangular6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    output wire [0:0] out_c0_exi9_0_tpl,
    output wire [0:0] out_c0_exi9_1_tpl,
    output wire [0:0] out_c0_exi9_2_tpl,
    output wire [63:0] out_c0_exi9_3_tpl,
    output wire [63:0] out_c0_exi9_4_tpl,
    output wire [63:0] out_c0_exi9_5_tpl,
    output wire [0:0] out_c0_exi9_6_tpl,
    output wire [31:0] out_c0_exi9_7_tpl,
    output wire [0:0] out_c0_exi9_8_tpl,
    output wire [31:0] out_c0_exi9_9_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_triangular0,
    input wire [0:0] in_c0_eni5_0_tpl,
    input wire [0:0] in_c0_eni5_1_tpl,
    input wire [31:0] in_c0_eni5_2_tpl,
    input wire [31:0] in_c0_eni5_3_tpl,
    input wire [0:0] in_c0_eni5_4_tpl,
    input wire [31:0] in_c0_eni5_5_tpl,
    input wire [0:0] in_enable,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [1:0] c_i2_140_q;
    wire [31:0] c_i32_042_q;
    wire [31:0] c_i32_143_q;
    wire [7:0] c_i8_146_q;
    wire [7:0] c_i8_9844_q;
    wire [63:0] c_triangular_A_local_pmem_q;
    wire [1:0] i_arrayidx121_triangular19_vt_const_1_q;
    wire [63:0] i_arrayidx121_triangular19_vt_join_q;
    wire [61:0] i_arrayidx121_triangular19_vt_select_63_b;
    wire [1:0] i_cleanups_shl75_triangular5_vt_join_q;
    wire [0:0] i_cleanups_shl75_triangular5_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor77_triangular4_q;
    wire [8:0] i_fpga_indvars_iv_next_triangular30_a;
    wire [8:0] i_fpga_indvars_iv_next_triangular30_b;
    logic [8:0] i_fpga_indvars_iv_next_triangular30_o;
    wire [8:0] i_fpga_indvars_iv_next_triangular30_q;
    wire [63:0] i_idxprom7_triangular16_vt_join_q;
    wire [31:0] i_idxprom7_triangular16_vt_select_31_b;
    wire [63:0] i_idxprom_triangular14_vt_join_q;
    wire [31:0] i_idxprom_triangular14_vt_select_31_b;
    wire [32:0] i_inc_triangular20_a;
    wire [32:0] i_inc_triangular20_b;
    logic [32:0] i_inc_triangular20_o;
    wire [32:0] i_inc_triangular20_q;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024a100i32_a4529_triangular17_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going71_triangular6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going71_triangular6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going71_triangular6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going71_triangular6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going71_triangular6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going71_triangular6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp83100_pop34_triangular35_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp83100_pop34_triangular35_out_feedback_stall_out_34;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups74_pop32_triangular2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups74_pop32_triangular2_out_feedback_stall_out_32;
    wire [1:0] i_llvm_fpga_pop_i2_initerations69_pop31_triangular7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations69_pop31_triangular7_out_feedback_stall_out_31;
    wire [31:0] i_llvm_fpga_pop_i32_i_041_pop19101_pop35_triangular12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_041_pop19101_pop35_triangular12_out_feedback_stall_out_35;
    wire [31:0] i_llvm_fpga_pop_i32_j_040_pop30_triangular15_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_040_pop30_triangular15_out_feedback_stall_out_30;
    wire [31:0] i_llvm_fpga_pop_i32_lim_ext94_pop33_triangular33_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_lim_ext94_pop33_triangular33_out_feedback_stall_out_33;
    wire [7:0] i_llvm_fpga_pop_i8_fpga_indvars_iv_pop29_triangular22_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i8_fpga_indvars_iv_pop29_triangular22_out_feedback_stall_out_29;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration73_triangular11_out_feedback_out_11;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration73_triangular11_out_feedback_valid_out_11;
    wire [0:0] i_llvm_fpga_push_i1_notcmp83100_push34_triangular36_out_feedback_out_34;
    wire [0:0] i_llvm_fpga_push_i1_notcmp83100_push34_triangular36_out_feedback_valid_out_34;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond81_triangular26_out_feedback_out_12;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond81_triangular26_out_feedback_valid_out_12;
    wire [7:0] i_llvm_fpga_push_i2_cleanups74_push32_triangular29_out_feedback_out_32;
    wire [0:0] i_llvm_fpga_push_i2_cleanups74_push32_triangular29_out_feedback_valid_out_32;
    wire [7:0] i_llvm_fpga_push_i2_initerations69_push31_triangular9_out_feedback_out_31;
    wire [0:0] i_llvm_fpga_push_i2_initerations69_push31_triangular9_out_feedback_valid_out_31;
    wire [31:0] i_llvm_fpga_push_i32_i_041_pop19101_push35_triangular13_out_feedback_out_35;
    wire [0:0] i_llvm_fpga_push_i32_i_041_pop19101_push35_triangular13_out_feedback_valid_out_35;
    wire [31:0] i_llvm_fpga_push_i32_j_040_push30_triangular21_out_feedback_out_30;
    wire [0:0] i_llvm_fpga_push_i32_j_040_push30_triangular21_out_feedback_valid_out_30;
    wire [31:0] i_llvm_fpga_push_i32_lim_ext94_push33_triangular34_out_feedback_out_33;
    wire [0:0] i_llvm_fpga_push_i32_lim_ext94_push33_triangular34_out_feedback_valid_out_33;
    wire [7:0] i_llvm_fpga_push_i8_fpga_indvars_iv_push29_triangular31_out_feedback_out_29;
    wire [0:0] i_llvm_fpga_push_i8_fpga_indvars_iv_push29_triangular31_out_feedback_valid_out_29;
    wire [0:0] i_masked80_triangular32_qi;
    reg [0:0] i_masked80_triangular32_q;
    wire [0:0] i_next_cleanups79_triangular28_s;
    reg [1:0] i_next_cleanups79_triangular28_q;
    wire [1:0] i_next_initerations70_triangular8_vt_join_q;
    wire [0:0] i_next_initerations70_triangular8_vt_select_0_b;
    wire [0:0] i_notcmp67_triangular25_q;
    wire [0:0] i_or78_triangular27_q;
    wire [7:0] bgTrunc_i_fpga_indvars_iv_next_triangular30_sel_x_b;
    wire [31:0] bgTrunc_i_inc_triangular20_sel_x_b;
    wire [16:0] i_arrayidx121_triangular0_add_x_a;
    wire [16:0] i_arrayidx121_triangular0_add_x_b;
    logic [16:0] i_arrayidx121_triangular0_add_x_o;
    wire [16:0] i_arrayidx121_triangular0_add_x_q;
    wire [63:0] i_arrayidx121_triangular0_append_upper_bits_x_q;
    wire [13:0] i_arrayidx121_triangular0_narrow_x_b;
    wire [15:0] i_arrayidx121_triangular0_shift_join_x_q;
    wire [16:0] i_arrayidx121_triangular0_dupName_0_add_x_a;
    wire [16:0] i_arrayidx121_triangular0_dupName_0_add_x_b;
    logic [16:0] i_arrayidx121_triangular0_dupName_0_add_x_o;
    wire [16:0] i_arrayidx121_triangular0_dupName_0_add_x_q;
    wire [31:0] i_arrayidx121_triangular0_mult_extender_x_q;
    wire [6:0] i_arrayidx121_triangular0_mult_multconst_x_q;
    wire [15:0] i_arrayidx121_triangular0_dupName_0_trunc_sel_x_b;
    wire [15:0] i_arrayidx121_triangular0_dupName_1_trunc_sel_x_b;
    wire [15:0] i_arrayidx121_triangular0_dupName_2_trunc_sel_x_b;
    wire [15:0] i_arrayidx121_triangular0_dupName_3_trunc_sel_x_b;
    wire [15:0] i_arrayidx121_triangular0_dupName_5_trunc_sel_x_b;
    wire [64:0] i_arrayidx8_triangular0_add_x_a;
    wire [64:0] i_arrayidx8_triangular0_add_x_b;
    logic [64:0] i_arrayidx8_triangular0_add_x_o;
    wire [64:0] i_arrayidx8_triangular0_add_x_q;
    wire [61:0] i_arrayidx8_triangular0_narrow_x_b;
    wire [63:0] i_arrayidx8_triangular0_shift_join_x_q;
    wire [64:0] i_arrayidx8_triangular0_dupName_0_add_x_a;
    wire [64:0] i_arrayidx8_triangular0_dupName_0_add_x_b;
    logic [64:0] i_arrayidx8_triangular0_dupName_0_add_x_o;
    wire [64:0] i_arrayidx8_triangular0_dupName_0_add_x_q;
    wire [127:0] i_arrayidx8_triangular0_mult_extender_x_q;
    wire [54:0] i_arrayidx8_triangular0_mult_multconst_x_q;
    wire [63:0] i_arrayidx8_triangular0_trunc_sel_x_b;
    wire [63:0] i_arrayidx8_triangular0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_arrayidx8_triangular0_dupName_2_trunc_sel_x_b;
    wire [0:0] i_first_cleanup76_triangular3_sel_x_b;
    wire [63:0] i_idxprom7_triangular16_sel_x_b;
    wire [63:0] i_idxprom_triangular14_sel_x_b;
    wire [0:0] i_last_initeration72_triangular10_sel_x_b;
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
    wire [0:0] i_exitcond_triangular23_cmp_nsign_q;
    wire [0:0] lowRangeB_uid171_i_arrayidx121_triangular0_mult_x_in;
    wire [0:0] lowRangeB_uid171_i_arrayidx121_triangular0_mult_x_b;
    wire [14:0] highBBits_uid172_i_arrayidx121_triangular0_mult_x_b;
    wire [16:0] addsumAHighB_uid173_i_arrayidx121_triangular0_mult_x_a;
    wire [16:0] addsumAHighB_uid173_i_arrayidx121_triangular0_mult_x_b;
    logic [16:0] addsumAHighB_uid173_i_arrayidx121_triangular0_mult_x_o;
    wire [16:0] addsumAHighB_uid173_i_arrayidx121_triangular0_mult_x_q;
    wire [17:0] add_uid174_i_arrayidx121_triangular0_mult_x_q;
    wire [2:0] lowRangeB_uid176_i_arrayidx121_triangular0_mult_x_in;
    wire [2:0] lowRangeB_uid176_i_arrayidx121_triangular0_mult_x_b;
    wire [12:0] highBBits_uid177_i_arrayidx121_triangular0_mult_x_b;
    wire [18:0] a_subconst_25_sumAHighB_uid178_i_arrayidx121_triangular0_mult_x_a;
    wire [18:0] a_subconst_25_sumAHighB_uid178_i_arrayidx121_triangular0_mult_x_b;
    logic [18:0] a_subconst_25_sumAHighB_uid178_i_arrayidx121_triangular0_mult_x_o;
    wire [18:0] a_subconst_25_sumAHighB_uid178_i_arrayidx121_triangular0_mult_x_q;
    wire [21:0] a_subconst_25_uid179_i_arrayidx121_triangular0_mult_x_q;
    wire [3:0] sR_bottomExtension_uid182_i_arrayidx121_triangular0_mult_x_q;
    wire [20:0] sR_bottomRange_uid183_i_arrayidx121_triangular0_mult_x_in;
    wire [20:0] sR_bottomRange_uid183_i_arrayidx121_triangular0_mult_x_b;
    wire [24:0] sR_mergedSignalTM_uid184_i_arrayidx121_triangular0_mult_x_q;
    wire [9:0] i_arrayidx8_triangular0_mult_x_bs1_b;
    wire [53:0] i_arrayidx8_triangular0_mult_x_bs4_in;
    wire [17:0] i_arrayidx8_triangular0_mult_x_bs4_b;
    wire [35:0] i_arrayidx8_triangular0_mult_x_bs7_in;
    wire [17:0] i_arrayidx8_triangular0_mult_x_bs7_b;
    wire [17:0] i_arrayidx8_triangular0_mult_x_bs10_in;
    wire [17:0] i_arrayidx8_triangular0_mult_x_bs10_b;
    wire [35:0] i_arrayidx8_triangular0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx8_triangular0_mult_x_sums_align_0_qint;
    wire [62:0] i_arrayidx8_triangular0_mult_x_sums_join_1_q;
    wire [44:0] i_arrayidx8_triangular0_mult_x_sums_align_2_q;
    wire [44:0] i_arrayidx8_triangular0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx8_triangular0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx8_triangular0_mult_x_sums_align_3_qint;
    wire [72:0] i_arrayidx8_triangular0_mult_x_sums_join_4_q;
    wire [73:0] i_arrayidx8_triangular0_mult_x_sums_result_add_0_0_a;
    wire [73:0] i_arrayidx8_triangular0_mult_x_sums_result_add_0_0_b;
    logic [73:0] i_arrayidx8_triangular0_mult_x_sums_result_add_0_0_o;
    wire [73:0] i_arrayidx8_triangular0_mult_x_sums_result_add_0_0_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid247_i_cleanups_shl75_triangular0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid247_i_cleanups_shl75_triangular0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid248_i_cleanups_shl75_triangular0_shift_x_q;
    wire [0:0] leftShiftStage0_uid250_i_cleanups_shl75_triangular0_shift_x_s;
    reg [1:0] leftShiftStage0_uid250_i_cleanups_shl75_triangular0_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid254_i_next_initerations70_triangular0_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid256_i_next_initerations70_triangular0_shift_x_q;
    wire [0:0] rightShiftStage0_uid258_i_next_initerations70_triangular0_shift_x_s;
    reg [1:0] rightShiftStage0_uid258_i_next_initerations70_triangular0_shift_x_q;
    wire [0:0] lowRangeB_uid268_i_arrayidx8_triangular0_mult_x_im0_in;
    wire [0:0] lowRangeB_uid268_i_arrayidx8_triangular0_mult_x_im0_b;
    wire [8:0] highBBits_uid269_i_arrayidx8_triangular0_mult_x_im0_b;
    wire [10:0] addsumAHighB_uid270_i_arrayidx8_triangular0_mult_x_im0_a;
    wire [10:0] addsumAHighB_uid270_i_arrayidx8_triangular0_mult_x_im0_b;
    logic [10:0] addsumAHighB_uid270_i_arrayidx8_triangular0_mult_x_im0_o;
    wire [10:0] addsumAHighB_uid270_i_arrayidx8_triangular0_mult_x_im0_q;
    wire [11:0] add_uid271_i_arrayidx8_triangular0_mult_x_im0_q;
    wire [2:0] lowRangeB_uid273_i_arrayidx8_triangular0_mult_x_im0_in;
    wire [2:0] lowRangeB_uid273_i_arrayidx8_triangular0_mult_x_im0_b;
    wire [6:0] highBBits_uid274_i_arrayidx8_triangular0_mult_x_im0_b;
    wire [12:0] a_subconst_25_sumAHighB_uid275_i_arrayidx8_triangular0_mult_x_im0_a;
    wire [12:0] a_subconst_25_sumAHighB_uid275_i_arrayidx8_triangular0_mult_x_im0_b;
    logic [12:0] a_subconst_25_sumAHighB_uid275_i_arrayidx8_triangular0_mult_x_im0_o;
    wire [12:0] a_subconst_25_sumAHighB_uid275_i_arrayidx8_triangular0_mult_x_im0_q;
    wire [15:0] a_subconst_25_uid276_i_arrayidx8_triangular0_mult_x_im0_q;
    wire [14:0] sR_bottomRange_uid280_i_arrayidx8_triangular0_mult_x_im0_in;
    wire [14:0] sR_bottomRange_uid280_i_arrayidx8_triangular0_mult_x_im0_b;
    wire [18:0] sR_mergedSignalTM_uid281_i_arrayidx8_triangular0_mult_x_im0_q;
    wire [0:0] lowRangeB_uid325_i_arrayidx8_triangular0_mult_x_im3_in;
    wire [0:0] lowRangeB_uid325_i_arrayidx8_triangular0_mult_x_im3_b;
    wire [16:0] highBBits_uid326_i_arrayidx8_triangular0_mult_x_im3_b;
    wire [18:0] addsumAHighB_uid327_i_arrayidx8_triangular0_mult_x_im3_a;
    wire [18:0] addsumAHighB_uid327_i_arrayidx8_triangular0_mult_x_im3_b;
    logic [18:0] addsumAHighB_uid327_i_arrayidx8_triangular0_mult_x_im3_o;
    wire [18:0] addsumAHighB_uid327_i_arrayidx8_triangular0_mult_x_im3_q;
    wire [19:0] add_uid328_i_arrayidx8_triangular0_mult_x_im3_q;
    wire [2:0] lowRangeB_uid330_i_arrayidx8_triangular0_mult_x_im3_in;
    wire [2:0] lowRangeB_uid330_i_arrayidx8_triangular0_mult_x_im3_b;
    wire [14:0] highBBits_uid331_i_arrayidx8_triangular0_mult_x_im3_b;
    wire [20:0] a_subconst_25_sumAHighB_uid332_i_arrayidx8_triangular0_mult_x_im3_a;
    wire [20:0] a_subconst_25_sumAHighB_uid332_i_arrayidx8_triangular0_mult_x_im3_b;
    logic [20:0] a_subconst_25_sumAHighB_uid332_i_arrayidx8_triangular0_mult_x_im3_o;
    wire [20:0] a_subconst_25_sumAHighB_uid332_i_arrayidx8_triangular0_mult_x_im3_q;
    wire [23:0] a_subconst_25_uid333_i_arrayidx8_triangular0_mult_x_im3_q;
    wire [22:0] sR_bottomRange_uid337_i_arrayidx8_triangular0_mult_x_im3_in;
    wire [22:0] sR_bottomRange_uid337_i_arrayidx8_triangular0_mult_x_im3_b;
    wire [26:0] sR_mergedSignalTM_uid338_i_arrayidx8_triangular0_mult_x_im3_q;
    wire [0:0] lowRangeB_uid394_i_arrayidx8_triangular0_mult_x_im6_in;
    wire [0:0] lowRangeB_uid394_i_arrayidx8_triangular0_mult_x_im6_b;
    wire [16:0] highBBits_uid395_i_arrayidx8_triangular0_mult_x_im6_b;
    wire [18:0] addsumAHighB_uid396_i_arrayidx8_triangular0_mult_x_im6_a;
    wire [18:0] addsumAHighB_uid396_i_arrayidx8_triangular0_mult_x_im6_b;
    logic [18:0] addsumAHighB_uid396_i_arrayidx8_triangular0_mult_x_im6_o;
    wire [18:0] addsumAHighB_uid396_i_arrayidx8_triangular0_mult_x_im6_q;
    wire [19:0] add_uid397_i_arrayidx8_triangular0_mult_x_im6_q;
    wire [2:0] lowRangeB_uid399_i_arrayidx8_triangular0_mult_x_im6_in;
    wire [2:0] lowRangeB_uid399_i_arrayidx8_triangular0_mult_x_im6_b;
    wire [14:0] highBBits_uid400_i_arrayidx8_triangular0_mult_x_im6_b;
    wire [20:0] a_subconst_25_sumAHighB_uid401_i_arrayidx8_triangular0_mult_x_im6_a;
    wire [20:0] a_subconst_25_sumAHighB_uid401_i_arrayidx8_triangular0_mult_x_im6_b;
    logic [20:0] a_subconst_25_sumAHighB_uid401_i_arrayidx8_triangular0_mult_x_im6_o;
    wire [20:0] a_subconst_25_sumAHighB_uid401_i_arrayidx8_triangular0_mult_x_im6_q;
    wire [23:0] a_subconst_25_uid402_i_arrayidx8_triangular0_mult_x_im6_q;
    wire [22:0] sR_bottomRange_uid406_i_arrayidx8_triangular0_mult_x_im6_in;
    wire [22:0] sR_bottomRange_uid406_i_arrayidx8_triangular0_mult_x_im6_b;
    wire [26:0] sR_mergedSignalTM_uid407_i_arrayidx8_triangular0_mult_x_im6_q;
    wire [0:0] lowRangeB_uid463_i_arrayidx8_triangular0_mult_x_im9_in;
    wire [0:0] lowRangeB_uid463_i_arrayidx8_triangular0_mult_x_im9_b;
    wire [16:0] highBBits_uid464_i_arrayidx8_triangular0_mult_x_im9_b;
    wire [18:0] addsumAHighB_uid465_i_arrayidx8_triangular0_mult_x_im9_a;
    wire [18:0] addsumAHighB_uid465_i_arrayidx8_triangular0_mult_x_im9_b;
    logic [18:0] addsumAHighB_uid465_i_arrayidx8_triangular0_mult_x_im9_o;
    wire [18:0] addsumAHighB_uid465_i_arrayidx8_triangular0_mult_x_im9_q;
    wire [19:0] add_uid466_i_arrayidx8_triangular0_mult_x_im9_q;
    wire [2:0] lowRangeB_uid468_i_arrayidx8_triangular0_mult_x_im9_in;
    wire [2:0] lowRangeB_uid468_i_arrayidx8_triangular0_mult_x_im9_b;
    wire [14:0] highBBits_uid469_i_arrayidx8_triangular0_mult_x_im9_b;
    wire [20:0] a_subconst_25_sumAHighB_uid470_i_arrayidx8_triangular0_mult_x_im9_a;
    wire [20:0] a_subconst_25_sumAHighB_uid470_i_arrayidx8_triangular0_mult_x_im9_b;
    logic [20:0] a_subconst_25_sumAHighB_uid470_i_arrayidx8_triangular0_mult_x_im9_o;
    wire [20:0] a_subconst_25_sumAHighB_uid470_i_arrayidx8_triangular0_mult_x_im9_q;
    wire [23:0] a_subconst_25_uid471_i_arrayidx8_triangular0_mult_x_im9_q;
    wire [22:0] sR_bottomRange_uid475_i_arrayidx8_triangular0_mult_x_im9_in;
    wire [22:0] sR_bottomRange_uid475_i_arrayidx8_triangular0_mult_x_im9_b;
    wire [26:0] sR_mergedSignalTM_uid476_i_arrayidx8_triangular0_mult_x_im9_q;
    wire [47:0] i_arrayidx121_triangular0_upper_bits_x_merged_bit_select_b;
    wire [15:0] i_arrayidx121_triangular0_upper_bits_x_merged_bit_select_c;
    reg [14:0] redist0_sR_bottomRange_uid280_i_arrayidx8_triangular0_mult_x_im0_b_1_q;
    reg [17:0] redist1_i_arrayidx8_triangular0_mult_x_bs10_b_1_q;
    reg [17:0] redist2_i_arrayidx8_triangular0_mult_x_bs7_b_1_q;
    reg [17:0] redist3_i_arrayidx8_triangular0_mult_x_bs4_b_1_q;
    reg [0:0] redist4_sync_together68_aunroll_x_in_c0_eni5_1_tpl_1_q;
    reg [0:0] redist5_sync_together68_aunroll_x_in_c0_eni5_1_tpl_3_q;
    reg [0:0] redist5_sync_together68_aunroll_x_in_c0_eni5_1_tpl_3_delay_0;
    reg [31:0] redist6_sync_together68_aunroll_x_in_c0_eni5_2_tpl_1_q;
    reg [31:0] redist7_sync_together68_aunroll_x_in_c0_eni5_3_tpl_1_q;
    reg [0:0] redist8_sync_together68_aunroll_x_in_c0_eni5_4_tpl_3_q;
    reg [0:0] redist8_sync_together68_aunroll_x_in_c0_eni5_4_tpl_3_delay_0;
    reg [0:0] redist8_sync_together68_aunroll_x_in_c0_eni5_4_tpl_3_delay_1;
    reg [0:0] redist10_sync_together68_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist11_sync_together68_aunroll_x_in_i_valid_2_q;
    reg [63:0] redist12_i_arrayidx8_triangular0_trunc_sel_x_b_1_q;
    reg [15:0] redist13_i_arrayidx121_triangular0_dupName_1_trunc_sel_x_b_1_q;
    reg [0:0] redist14_i_masked80_triangular32_q_2_q;
    reg [31:0] redist15_i_llvm_fpga_pop_i32_lim_ext94_pop33_triangular33_out_data_out_2_q;
    reg [31:0] redist15_i_llvm_fpga_pop_i32_lim_ext94_pop33_triangular33_out_data_out_2_delay_0;
    reg [0:0] redist16_i_llvm_fpga_pipeline_keep_going71_triangular6_out_data_out_1_q;
    reg [0:0] redist17_i_llvm_fpga_pipeline_keep_going71_triangular6_out_data_out_3_q;
    reg [0:0] redist17_i_llvm_fpga_pipeline_keep_going71_triangular6_out_data_out_3_delay_0;
    reg [63:0] redist18_i_idxprom_triangular14_vt_join_q_1_q;
    reg [63:0] redist19_i_idxprom_triangular14_vt_join_q_2_q;
    reg [0:0] redist20_i_first_cleanup_xor77_triangular4_q_2_q;
    reg [0:0] redist20_i_first_cleanup_xor77_triangular4_q_2_delay_0;
    wire [0:0] enable_stall_connector_not_enable_q;
    wire redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_mem_reset0;
    wire [31:0] redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_mem_ia;
    wire [0:0] redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_mem_aa;
    wire [0:0] redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_mem_ab;
    wire [31:0] redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_mem_iq;
    wire [31:0] redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_mem_q;
    wire [0:0] redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_rdcnt_q;
    (* preserve *) reg [0:0] redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_rdcnt_i;
    wire [0:0] redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_rdmux_s;
    reg [0:0] redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_rdmux_q;
    reg [0:0] redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_wraddr_q;
    (* dont_merge *) reg [0:0] redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_cmpReg_q;
    wire [0:0] redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_notEnable_q;
    wire [0:0] redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_nor_q;
    (* dont_merge *) reg [0:0] redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_sticky_ena_q;
    wire [0:0] redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // enable_stall_connector_not_enable(LOGICAL,545)
    assign enable_stall_connector_not_enable_q = $unsigned(~ (in_enable));

    // redist10_sync_together68_aunroll_x_in_i_valid_1(DELAY,534)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together68_aunroll_x_in_i_valid_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist10_sync_together68_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // redist16_i_llvm_fpga_pipeline_keep_going71_triangular6_out_data_out_1(DELAY,540)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_llvm_fpga_pipeline_keep_going71_triangular6_out_data_out_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist16_i_llvm_fpga_pipeline_keep_going71_triangular6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going71_triangular6_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid247_i_cleanups_shl75_triangular0_shift_x(BITSELECT,246)@2
    assign leftShiftStage0Idx1Rng1_uid247_i_cleanups_shl75_triangular0_shift_x_in = i_llvm_fpga_pop_i2_cleanups74_pop32_triangular2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid247_i_cleanups_shl75_triangular0_shift_x_b = leftShiftStage0Idx1Rng1_uid247_i_cleanups_shl75_triangular0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid248_i_cleanups_shl75_triangular0_shift_x(BITJOIN,247)@2
    assign leftShiftStage0Idx1_uid248_i_cleanups_shl75_triangular0_shift_x_q = {leftShiftStage0Idx1Rng1_uid247_i_cleanups_shl75_triangular0_shift_x_b, GND_q};

    // leftShiftStage0_uid250_i_cleanups_shl75_triangular0_shift_x(MUX,249)@2
    assign leftShiftStage0_uid250_i_cleanups_shl75_triangular0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid250_i_cleanups_shl75_triangular0_shift_x_s or i_llvm_fpga_pop_i2_cleanups74_pop32_triangular2_out_data_out or leftShiftStage0Idx1_uid248_i_cleanups_shl75_triangular0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid250_i_cleanups_shl75_triangular0_shift_x_s)
            1'b0 : leftShiftStage0_uid250_i_cleanups_shl75_triangular0_shift_x_q = i_llvm_fpga_pop_i2_cleanups74_pop32_triangular2_out_data_out;
            1'b1 : leftShiftStage0_uid250_i_cleanups_shl75_triangular0_shift_x_q = leftShiftStage0Idx1_uid248_i_cleanups_shl75_triangular0_shift_x_q;
            default : leftShiftStage0_uid250_i_cleanups_shl75_triangular0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl75_triangular5_vt_select_1(BITSELECT,20)@2
    assign i_cleanups_shl75_triangular5_vt_select_1_b = leftShiftStage0_uid250_i_cleanups_shl75_triangular0_shift_x_q[1:1];

    // i_cleanups_shl75_triangular5_vt_join(BITJOIN,19)@2
    assign i_cleanups_shl75_triangular5_vt_join_q = {i_cleanups_shl75_triangular5_vt_select_1_b, GND_q};

    // i_first_cleanup_xor77_triangular4(LOGICAL,23)@2
    assign i_first_cleanup_xor77_triangular4_q = i_first_cleanup76_triangular3_sel_x_b ^ VCC_q;

    // i_notcmp67_triangular25(LOGICAL,58)@2
    assign i_notcmp67_triangular25_q = i_exitcond_triangular23_cmp_nsign_q ^ VCC_q;

    // i_or78_triangular27(LOGICAL,59)@2
    assign i_or78_triangular27_q = i_notcmp67_triangular25_q | i_first_cleanup_xor77_triangular4_q;

    // i_next_cleanups79_triangular28(MUX,54)@2
    assign i_next_cleanups79_triangular28_s = i_or78_triangular27_q;
    always @(i_next_cleanups79_triangular28_s or i_llvm_fpga_pop_i2_cleanups74_pop32_triangular2_out_data_out or i_cleanups_shl75_triangular5_vt_join_q)
    begin
        unique case (i_next_cleanups79_triangular28_s)
            1'b0 : i_next_cleanups79_triangular28_q = i_llvm_fpga_pop_i2_cleanups74_pop32_triangular2_out_data_out;
            1'b1 : i_next_cleanups79_triangular28_q = i_cleanups_shl75_triangular5_vt_join_q;
            default : i_next_cleanups79_triangular28_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups74_push32_triangular29(BLACKBOX,47)@2
    // out out_feedback_out_32@20000000
    // out out_feedback_valid_out_32@20000000
    triangular_i_llvm_fpga_push_i2_cleanups74_push32_0 thei_llvm_fpga_push_i2_cleanups74_push32_triangular29 (
        .in_data_in(i_next_cleanups79_triangular28_q),
        .in_feedback_stall_in_32(i_llvm_fpga_pop_i2_cleanups74_pop32_triangular2_out_feedback_stall_out_32),
        .in_keep_going71(redist16_i_llvm_fpga_pipeline_keep_going71_triangular6_out_data_out_1_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist10_sync_together68_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_32(i_llvm_fpga_push_i2_cleanups74_push32_triangular29_out_feedback_out_32),
        .out_feedback_valid_out_32(i_llvm_fpga_push_i2_cleanups74_push32_triangular29_out_feedback_valid_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_sync_together68_aunroll_x_in_c0_eni5_1_tpl_1(DELAY,528)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together68_aunroll_x_in_c0_eni5_1_tpl_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist4_sync_together68_aunroll_x_in_c0_eni5_1_tpl_1_q <= $unsigned(in_c0_eni5_1_tpl);
        end
    end

    // c_i2_140(CONSTANT,6)
    assign c_i2_140_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups74_pop32_triangular2(BLACKBOX,38)@2
    // out out_feedback_stall_out_32@20000000
    triangular_i_llvm_fpga_pop_i2_cleanups74_pop32_0 thei_llvm_fpga_pop_i2_cleanups74_pop32_triangular2 (
        .in_data_in(c_i2_140_q),
        .in_dir(redist4_sync_together68_aunroll_x_in_c0_eni5_1_tpl_1_q),
        .in_feedback_in_32(i_llvm_fpga_push_i2_cleanups74_push32_triangular29_out_feedback_out_32),
        .in_feedback_valid_in_32(i_llvm_fpga_push_i2_cleanups74_push32_triangular29_out_feedback_valid_out_32),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist10_sync_together68_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups74_pop32_triangular2_out_data_out),
        .out_feedback_stall_out_32(i_llvm_fpga_pop_i2_cleanups74_pop32_triangular2_out_feedback_stall_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup76_triangular3_sel_x(BITSELECT,129)@2
    assign i_first_cleanup76_triangular3_sel_x_b = i_llvm_fpga_pop_i2_cleanups74_pop32_triangular2_out_data_out[0:0];

    // c_i8_146(CONSTANT,9)
    assign c_i8_146_q = $unsigned(8'b11111111);

    // i_fpga_indvars_iv_next_triangular30(ADD,24)@2
    assign i_fpga_indvars_iv_next_triangular30_a = {1'b0, i_llvm_fpga_pop_i8_fpga_indvars_iv_pop29_triangular22_out_data_out};
    assign i_fpga_indvars_iv_next_triangular30_b = {1'b0, c_i8_146_q};
    assign i_fpga_indvars_iv_next_triangular30_o = $unsigned(i_fpga_indvars_iv_next_triangular30_a) + $unsigned(i_fpga_indvars_iv_next_triangular30_b);
    assign i_fpga_indvars_iv_next_triangular30_q = i_fpga_indvars_iv_next_triangular30_o[8:0];

    // bgTrunc_i_fpga_indvars_iv_next_triangular30_sel_x(BITSELECT,65)@2
    assign bgTrunc_i_fpga_indvars_iv_next_triangular30_sel_x_b = i_fpga_indvars_iv_next_triangular30_q[7:0];

    // i_llvm_fpga_push_i8_fpga_indvars_iv_push29_triangular31(BLACKBOX,52)@2
    // out out_feedback_out_29@20000000
    // out out_feedback_valid_out_29@20000000
    triangular_i_llvm_fpga_push_i8_fpga_indvars_iv_push29_0 thei_llvm_fpga_push_i8_fpga_indvars_iv_push29_triangular31 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_triangular30_sel_x_b),
        .in_feedback_stall_in_29(i_llvm_fpga_pop_i8_fpga_indvars_iv_pop29_triangular22_out_feedback_stall_out_29),
        .in_keep_going71(redist16_i_llvm_fpga_pipeline_keep_going71_triangular6_out_data_out_1_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist10_sync_together68_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_29(i_llvm_fpga_push_i8_fpga_indvars_iv_push29_triangular31_out_feedback_out_29),
        .out_feedback_valid_out_29(i_llvm_fpga_push_i8_fpga_indvars_iv_push29_triangular31_out_feedback_valid_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i8_9844(CONSTANT,10)
    assign c_i8_9844_q = $unsigned(8'b01100010);

    // i_llvm_fpga_pop_i8_fpga_indvars_iv_pop29_triangular22(BLACKBOX,43)@2
    // out out_feedback_stall_out_29@20000000
    triangular_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop29_0 thei_llvm_fpga_pop_i8_fpga_indvars_iv_pop29_triangular22 (
        .in_data_in(c_i8_9844_q),
        .in_dir(redist4_sync_together68_aunroll_x_in_c0_eni5_1_tpl_1_q),
        .in_feedback_in_29(i_llvm_fpga_push_i8_fpga_indvars_iv_push29_triangular31_out_feedback_out_29),
        .in_feedback_valid_in_29(i_llvm_fpga_push_i8_fpga_indvars_iv_push29_triangular31_out_feedback_valid_out_29),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist10_sync_together68_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i8_fpga_indvars_iv_pop29_triangular22_out_data_out),
        .out_feedback_stall_out_29(i_llvm_fpga_pop_i8_fpga_indvars_iv_pop29_triangular22_out_feedback_stall_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond_triangular23_cmp_nsign(LOGICAL,161)@2
    assign i_exitcond_triangular23_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i8_fpga_indvars_iv_pop29_triangular22_out_data_out[7:7]));

    // i_llvm_fpga_push_i1_notexitcond81_triangular26(BLACKBOX,46)@2
    // out out_feedback_out_12@20000000
    // out out_feedback_valid_out_12@20000000
    triangular_i_llvm_fpga_push_i1_notexitcond81_0 thei_llvm_fpga_push_i1_notexitcond81_triangular26 (
        .in_data_in(i_exitcond_triangular23_cmp_nsign_q),
        .in_feedback_stall_in_12(i_llvm_fpga_pipeline_keep_going71_triangular6_out_not_exitcond_stall_out),
        .in_first_cleanup76(i_first_cleanup76_triangular3_sel_x_b),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist10_sync_together68_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_12(i_llvm_fpga_push_i1_notexitcond81_triangular26_out_feedback_out_12),
        .out_feedback_valid_out_12(i_llvm_fpga_push_i1_notexitcond81_triangular26_out_feedback_valid_out_12),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,142)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid254_i_next_initerations70_triangular0_shift_x(BITSELECT,253)@2
    assign rightShiftStage0Idx1Rng1_uid254_i_next_initerations70_triangular0_shift_x_b = i_llvm_fpga_pop_i2_initerations69_pop31_triangular7_out_data_out[1:1];

    // rightShiftStage0Idx1_uid256_i_next_initerations70_triangular0_shift_x(BITJOIN,255)@2
    assign rightShiftStage0Idx1_uid256_i_next_initerations70_triangular0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid254_i_next_initerations70_triangular0_shift_x_b};

    // valid_fanout_reg1(REG,140)@1 + 1
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

    // valid_fanout_reg2(REG,141)@1 + 1
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

    // i_llvm_fpga_push_i2_initerations69_push31_triangular9(BLACKBOX,48)@2
    // out out_feedback_out_31@20000000
    // out out_feedback_valid_out_31@20000000
    triangular_i_llvm_fpga_push_i2_initerations69_push31_0 thei_llvm_fpga_push_i2_initerations69_push31_triangular9 (
        .in_data_in(i_next_initerations70_triangular8_vt_join_q),
        .in_feedback_stall_in_31(i_llvm_fpga_pop_i2_initerations69_pop31_triangular7_out_feedback_stall_out_31),
        .in_keep_going71(redist16_i_llvm_fpga_pipeline_keep_going71_triangular6_out_data_out_1_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_31(i_llvm_fpga_push_i2_initerations69_push31_triangular9_out_feedback_out_31),
        .out_feedback_valid_out_31(i_llvm_fpga_push_i2_initerations69_push31_triangular9_out_feedback_valid_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations69_pop31_triangular7(BLACKBOX,39)@2
    // out out_feedback_stall_out_31@20000000
    triangular_i_llvm_fpga_pop_i2_initerations69_pop31_0 thei_llvm_fpga_pop_i2_initerations69_pop31_triangular7 (
        .in_data_in(c_i2_140_q),
        .in_dir(redist4_sync_together68_aunroll_x_in_c0_eni5_1_tpl_1_q),
        .in_feedback_in_31(i_llvm_fpga_push_i2_initerations69_push31_triangular9_out_feedback_out_31),
        .in_feedback_valid_in_31(i_llvm_fpga_push_i2_initerations69_push31_triangular9_out_feedback_valid_out_31),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations69_pop31_triangular7_out_data_out),
        .out_feedback_stall_out_31(i_llvm_fpga_pop_i2_initerations69_pop31_triangular7_out_feedback_stall_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid258_i_next_initerations70_triangular0_shift_x(MUX,257)@2
    assign rightShiftStage0_uid258_i_next_initerations70_triangular0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid258_i_next_initerations70_triangular0_shift_x_s or i_llvm_fpga_pop_i2_initerations69_pop31_triangular7_out_data_out or rightShiftStage0Idx1_uid256_i_next_initerations70_triangular0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid258_i_next_initerations70_triangular0_shift_x_s)
            1'b0 : rightShiftStage0_uid258_i_next_initerations70_triangular0_shift_x_q = i_llvm_fpga_pop_i2_initerations69_pop31_triangular7_out_data_out;
            1'b1 : rightShiftStage0_uid258_i_next_initerations70_triangular0_shift_x_q = rightShiftStage0Idx1_uid256_i_next_initerations70_triangular0_shift_x_q;
            default : rightShiftStage0_uid258_i_next_initerations70_triangular0_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations70_triangular8_vt_select_0(BITSELECT,57)@2
    assign i_next_initerations70_triangular8_vt_select_0_b = rightShiftStage0_uid258_i_next_initerations70_triangular0_shift_x_q[0:0];

    // i_next_initerations70_triangular8_vt_join(BITJOIN,56)@2
    assign i_next_initerations70_triangular8_vt_join_q = {GND_q, i_next_initerations70_triangular8_vt_select_0_b};

    // i_last_initeration72_triangular10_sel_x(BITSELECT,132)@2
    assign i_last_initeration72_triangular10_sel_x_b = i_next_initerations70_triangular8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration73_triangular11(BLACKBOX,44)@2
    // out out_feedback_out_11@20000000
    // out out_feedback_valid_out_11@20000000
    triangular_i_llvm_fpga_push_i1_lastiniteration73_0 thei_llvm_fpga_push_i1_lastiniteration73_triangular11 (
        .in_data_in(i_last_initeration72_triangular10_sel_x_b),
        .in_feedback_stall_in_11(i_llvm_fpga_pipeline_keep_going71_triangular6_out_initeration_stall_out),
        .in_keep_going71(redist16_i_llvm_fpga_pipeline_keep_going71_triangular6_out_data_out_1_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_11(i_llvm_fpga_push_i1_lastiniteration73_triangular11_out_feedback_out_11),
        .out_feedback_valid_out_11(i_llvm_fpga_push_i1_lastiniteration73_triangular11_out_feedback_valid_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going71_triangular6(BLACKBOX,36)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    triangular_i_llvm_fpga_pipeline_keep_going71_0 thei_llvm_fpga_pipeline_keep_going71_triangular6 (
        .in_data_in(in_c0_eni5_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration73_triangular11_out_feedback_out_11),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration73_triangular11_out_feedback_valid_out_11),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond81_triangular26_out_feedback_out_12),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond81_triangular26_out_feedback_valid_out_12),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going71_triangular6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going71_triangular6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going71_triangular6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going71_triangular6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going71_triangular6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going71_triangular6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,14)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_triangular6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going71_triangular6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_triangular6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going71_triangular6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,62)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going71_triangular6_out_pipeline_valid_out;

    // redist11_sync_together68_aunroll_x_in_i_valid_2(DELAY,535)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together68_aunroll_x_in_i_valid_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist11_sync_together68_aunroll_x_in_i_valid_2_q <= $unsigned(redist10_sync_together68_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg0(REG,139)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg0_q <= $unsigned(redist11_sync_together68_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_notEnable(LOGICAL,568)
    assign redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_notEnable_q = $unsigned(~ (in_enable));

    // redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_nor(LOGICAL,569)
    assign redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_nor_q = ~ (redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_notEnable_q | redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_sticky_ena_q);

    // redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_cmpReg(REG,567)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_cmpReg_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_sticky_ena(REG,570)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_nor_q == 1'b1)
        begin
            redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_sticky_ena_q <= $unsigned(redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_cmpReg_q);
        end
    end

    // redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_enaAnd(LOGICAL,571)
    assign redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_enaAnd_q = redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_sticky_ena_q & in_enable;

    // redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_rdcnt(COUNTER,564)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_rdcnt_i <= 1'd0;
        end
        else if (in_enable == 1'b1)
        begin
            redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_rdcnt_i <= $unsigned(redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_rdcnt_q = redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_rdcnt_i[0:0];

    // redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_rdmux(MUX,565)
    assign redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_rdmux_s = in_enable;
    always @(redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_rdmux_s or redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_wraddr_q or redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_rdcnt_q)
    begin
        unique case (redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_rdmux_s)
            1'b0 : redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_rdmux_q = redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_wraddr_q;
            1'b1 : redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_rdmux_q = redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_rdcnt_q;
            default : redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_rdmux_q = 1'b0;
        endcase
    end

    // redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_wraddr(REG,566)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_wraddr_q <= $unsigned(redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_rdmux_q);
        end
    end

    // redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_mem(DUALMEM,563)
    assign redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_mem_ia = $unsigned(in_c0_eni5_5_tpl);
    assign redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_mem_aa = redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_wraddr_q;
    assign redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_mem_ab = redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_rdmux_q;
    assign redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_mem_reset0 = ~ (resetn);
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
    ) redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_mem_dmem (
        .clocken1(redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_mem_reset0),
        .clock1(clock),
        .address_a(redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_mem_aa),
        .data_a(redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_mem_ia),
        .wren_a(in_enable[0]),
        .address_b(redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_mem_ab),
        .q_b(redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_mem_iq),
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
    assign redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_mem_q = redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_mem_iq[31:0];

    // valid_fanout_reg11(REG,150)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg11_q <= $unsigned(redist11_sync_together68_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg12(REG,151)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg12_q <= $unsigned(redist11_sync_together68_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp83100_push34_triangular36(BLACKBOX,45)@4
    // out out_feedback_out_34@20000000
    // out out_feedback_valid_out_34@20000000
    triangular_i_llvm_fpga_push_i1_notcmp83100_push34_0 thei_llvm_fpga_push_i1_notcmp83100_push34_triangular36 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp83100_pop34_triangular35_out_data_out),
        .in_feedback_stall_in_34(i_llvm_fpga_pop_i1_notcmp83100_pop34_triangular35_out_feedback_stall_out_34),
        .in_keep_going71(redist17_i_llvm_fpga_pipeline_keep_going71_triangular6_out_data_out_3_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(),
        .out_feedback_out_34(i_llvm_fpga_push_i1_notcmp83100_push34_triangular36_out_feedback_out_34),
        .out_feedback_valid_out_34(i_llvm_fpga_push_i1_notcmp83100_push34_triangular36_out_feedback_valid_out_34),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_sync_together68_aunroll_x_in_c0_eni5_1_tpl_3(DELAY,529)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together68_aunroll_x_in_c0_eni5_1_tpl_3_delay_0 <= '0;
            redist5_sync_together68_aunroll_x_in_c0_eni5_1_tpl_3_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist5_sync_together68_aunroll_x_in_c0_eni5_1_tpl_3_delay_0 <= $unsigned(redist4_sync_together68_aunroll_x_in_c0_eni5_1_tpl_1_q);
            redist5_sync_together68_aunroll_x_in_c0_eni5_1_tpl_3_q <= redist5_sync_together68_aunroll_x_in_c0_eni5_1_tpl_3_delay_0;
        end
    end

    // redist8_sync_together68_aunroll_x_in_c0_eni5_4_tpl_3(DELAY,532)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together68_aunroll_x_in_c0_eni5_4_tpl_3_delay_0 <= '0;
            redist8_sync_together68_aunroll_x_in_c0_eni5_4_tpl_3_delay_1 <= '0;
            redist8_sync_together68_aunroll_x_in_c0_eni5_4_tpl_3_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist8_sync_together68_aunroll_x_in_c0_eni5_4_tpl_3_delay_0 <= $unsigned(in_c0_eni5_4_tpl);
            redist8_sync_together68_aunroll_x_in_c0_eni5_4_tpl_3_delay_1 <= redist8_sync_together68_aunroll_x_in_c0_eni5_4_tpl_3_delay_0;
            redist8_sync_together68_aunroll_x_in_c0_eni5_4_tpl_3_q <= redist8_sync_together68_aunroll_x_in_c0_eni5_4_tpl_3_delay_1;
        end
    end

    // i_llvm_fpga_pop_i1_notcmp83100_pop34_triangular35(BLACKBOX,37)@4
    // out out_feedback_stall_out_34@20000000
    triangular_i_llvm_fpga_pop_i1_notcmp83100_pop34_0 thei_llvm_fpga_pop_i1_notcmp83100_pop34_triangular35 (
        .in_data_in(redist8_sync_together68_aunroll_x_in_c0_eni5_4_tpl_3_q),
        .in_dir(redist5_sync_together68_aunroll_x_in_c0_eni5_1_tpl_3_q),
        .in_feedback_in_34(i_llvm_fpga_push_i1_notcmp83100_push34_triangular36_out_feedback_out_34),
        .in_feedback_valid_in_34(i_llvm_fpga_push_i1_notcmp83100_push34_triangular36_out_feedback_valid_out_34),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp83100_pop34_triangular35_out_data_out),
        .out_feedback_stall_out_34(i_llvm_fpga_pop_i1_notcmp83100_pop34_triangular35_out_feedback_stall_out_34),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg9(REG,148)@1 + 1
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

    // valid_fanout_reg10(REG,149)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg10_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_lim_ext94_push33_triangular34(BLACKBOX,51)@2
    // out out_feedback_out_33@20000000
    // out out_feedback_valid_out_33@20000000
    triangular_i_llvm_fpga_push_i32_lim_ext94_push33_0 thei_llvm_fpga_push_i32_lim_ext94_push33_triangular34 (
        .in_data_in(i_llvm_fpga_pop_i32_lim_ext94_pop33_triangular33_out_data_out),
        .in_feedback_stall_in_33(i_llvm_fpga_pop_i32_lim_ext94_pop33_triangular33_out_feedback_stall_out_33),
        .in_keep_going71(redist16_i_llvm_fpga_pipeline_keep_going71_triangular6_out_data_out_1_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_33(i_llvm_fpga_push_i32_lim_ext94_push33_triangular34_out_feedback_out_33),
        .out_feedback_valid_out_33(i_llvm_fpga_push_i32_lim_ext94_push33_triangular34_out_feedback_valid_out_33),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_sync_together68_aunroll_x_in_c0_eni5_3_tpl_1(DELAY,531)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together68_aunroll_x_in_c0_eni5_3_tpl_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist7_sync_together68_aunroll_x_in_c0_eni5_3_tpl_1_q <= $unsigned(in_c0_eni5_3_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_lim_ext94_pop33_triangular33(BLACKBOX,42)@2
    // out out_feedback_stall_out_33@20000000
    triangular_i_llvm_fpga_pop_i32_lim_ext94_pop33_0 thei_llvm_fpga_pop_i32_lim_ext94_pop33_triangular33 (
        .in_data_in(redist7_sync_together68_aunroll_x_in_c0_eni5_3_tpl_1_q),
        .in_dir(redist4_sync_together68_aunroll_x_in_c0_eni5_1_tpl_1_q),
        .in_feedback_in_33(i_llvm_fpga_push_i32_lim_ext94_push33_triangular34_out_feedback_out_33),
        .in_feedback_valid_in_33(i_llvm_fpga_push_i32_lim_ext94_push33_triangular34_out_feedback_valid_out_33),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(i_llvm_fpga_pop_i32_lim_ext94_pop33_triangular33_out_data_out),
        .out_feedback_stall_out_33(i_llvm_fpga_pop_i32_lim_ext94_pop33_triangular33_out_feedback_stall_out_33),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist15_i_llvm_fpga_pop_i32_lim_ext94_pop33_triangular33_out_data_out_2(DELAY,539)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_llvm_fpga_pop_i32_lim_ext94_pop33_triangular33_out_data_out_2_delay_0 <= '0;
            redist15_i_llvm_fpga_pop_i32_lim_ext94_pop33_triangular33_out_data_out_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist15_i_llvm_fpga_pop_i32_lim_ext94_pop33_triangular33_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_i32_lim_ext94_pop33_triangular33_out_data_out);
            redist15_i_llvm_fpga_pop_i32_lim_ext94_pop33_triangular33_out_data_out_2_q <= redist15_i_llvm_fpga_pop_i32_lim_ext94_pop33_triangular33_out_data_out_2_delay_0;
        end
    end

    // i_masked80_triangular32(LOGICAL,53)@2 + 1
    assign i_masked80_triangular32_qi = i_notcmp67_triangular25_q & i_first_cleanup76_triangular3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked80_triangular32_delay ( .xin(i_masked80_triangular32_qi), .xout(i_masked80_triangular32_q), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );

    // redist14_i_masked80_triangular32_q_2(DELAY,538)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_masked80_triangular32_q_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist14_i_masked80_triangular32_q_2_q <= $unsigned(i_masked80_triangular32_q);
        end
    end

    // c_triangular_A_local_pmem(CONSTANT,11)
    assign c_triangular_A_local_pmem_q = $unsigned(64'b0100000001000001000000000000000000000000000000000000000000000000);

    // i_arrayidx121_triangular0_upper_bits_x_merged_bit_select(BITSELECT,523)@4
    assign i_arrayidx121_triangular0_upper_bits_x_merged_bit_select_b = c_triangular_A_local_pmem_q[63:16];
    assign i_arrayidx121_triangular0_upper_bits_x_merged_bit_select_c = c_triangular_A_local_pmem_q[15:0];

    // c_i32_042(CONSTANT,7)
    assign c_i32_042_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg6(REG,145)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg6_q <= $unsigned(redist11_sync_together68_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg8(REG,147)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg8_q <= $unsigned(redist11_sync_together68_aunroll_x_in_i_valid_2_q);
        end
    end

    // c_i32_143(CONSTANT,8)
    assign c_i32_143_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_triangular20(ADD,33)@4
    assign i_inc_triangular20_a = {1'b0, i_llvm_fpga_pop_i32_j_040_pop30_triangular15_out_data_out};
    assign i_inc_triangular20_b = {1'b0, c_i32_143_q};
    assign i_inc_triangular20_o = $unsigned(i_inc_triangular20_a) + $unsigned(i_inc_triangular20_b);
    assign i_inc_triangular20_q = i_inc_triangular20_o[32:0];

    // bgTrunc_i_inc_triangular20_sel_x(BITSELECT,66)@4
    assign bgTrunc_i_inc_triangular20_sel_x_b = i_inc_triangular20_q[31:0];

    // i_llvm_fpga_push_i32_j_040_push30_triangular21(BLACKBOX,50)@4
    // out out_feedback_out_30@20000000
    // out out_feedback_valid_out_30@20000000
    triangular_i_llvm_fpga_push_i32_j_040_push30_0 thei_llvm_fpga_push_i32_j_040_push30_triangular21 (
        .in_data_in(bgTrunc_i_inc_triangular20_sel_x_b),
        .in_feedback_stall_in_30(i_llvm_fpga_pop_i32_j_040_pop30_triangular15_out_feedback_stall_out_30),
        .in_keep_going71(redist17_i_llvm_fpga_pipeline_keep_going71_triangular6_out_data_out_3_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_30(i_llvm_fpga_push_i32_j_040_push30_triangular21_out_feedback_out_30),
        .out_feedback_valid_out_30(i_llvm_fpga_push_i32_j_040_push30_triangular21_out_feedback_valid_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_j_040_pop30_triangular15(BLACKBOX,41)@4
    // out out_feedback_stall_out_30@20000000
    triangular_i_llvm_fpga_pop_i32_j_040_pop30_0 thei_llvm_fpga_pop_i32_j_040_pop30_triangular15 (
        .in_data_in(c_i32_042_q),
        .in_dir(redist5_sync_together68_aunroll_x_in_c0_eni5_1_tpl_3_q),
        .in_feedback_in_30(i_llvm_fpga_push_i32_j_040_push30_triangular21_out_feedback_out_30),
        .in_feedback_valid_in_30(i_llvm_fpga_push_i32_j_040_push30_triangular21_out_feedback_valid_out_30),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(i_llvm_fpga_pop_i32_j_040_pop30_triangular15_out_data_out),
        .out_feedback_stall_out_30(i_llvm_fpga_pop_i32_j_040_pop30_triangular15_out_feedback_stall_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom7_triangular16_sel_x(BITSELECT,130)@4
    assign i_idxprom7_triangular16_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_j_040_pop30_triangular15_out_data_out[31:0]};

    // i_idxprom7_triangular16_vt_select_31(BITSELECT,28)@4
    assign i_idxprom7_triangular16_vt_select_31_b = i_idxprom7_triangular16_sel_x_b[31:0];

    // i_idxprom7_triangular16_vt_join(BITJOIN,27)@4
    assign i_idxprom7_triangular16_vt_join_q = {c_i32_042_q, i_idxprom7_triangular16_vt_select_31_b};

    // i_arrayidx121_triangular0_dupName_3_trunc_sel_x(BITSELECT,107)@4
    assign i_arrayidx121_triangular0_dupName_3_trunc_sel_x_b = i_idxprom7_triangular16_vt_join_q[15:0];

    // i_arrayidx121_triangular0_narrow_x(BITSELECT,90)@4
    assign i_arrayidx121_triangular0_narrow_x_b = i_arrayidx121_triangular0_dupName_3_trunc_sel_x_b[13:0];

    // i_arrayidx121_triangular0_shift_join_x(BITJOIN,91)@4
    assign i_arrayidx121_triangular0_shift_join_x_q = {i_arrayidx121_triangular0_narrow_x_b, i_arrayidx121_triangular19_vt_const_1_q};

    // i_arrayidx121_triangular0_mult_multconst_x(CONSTANT,102)
    assign i_arrayidx121_triangular0_mult_multconst_x_q = $unsigned(7'b0000000);

    // valid_fanout_reg4(REG,143)@1 + 1
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

    // valid_fanout_reg5(REG,144)@1 + 1
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

    // i_llvm_fpga_push_i32_i_041_pop19101_push35_triangular13(BLACKBOX,49)@2
    // out out_feedback_out_35@20000000
    // out out_feedback_valid_out_35@20000000
    triangular_i_llvm_fpga_push_i32_i_041_pop19101_push35_0 thei_llvm_fpga_push_i32_i_041_pop19101_push35_triangular13 (
        .in_data_in(i_llvm_fpga_pop_i32_i_041_pop19101_pop35_triangular12_out_data_out),
        .in_feedback_stall_in_35(i_llvm_fpga_pop_i32_i_041_pop19101_pop35_triangular12_out_feedback_stall_out_35),
        .in_keep_going71(redist16_i_llvm_fpga_pipeline_keep_going71_triangular6_out_data_out_1_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_35(i_llvm_fpga_push_i32_i_041_pop19101_push35_triangular13_out_feedback_out_35),
        .out_feedback_valid_out_35(i_llvm_fpga_push_i32_i_041_pop19101_push35_triangular13_out_feedback_valid_out_35),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_sync_together68_aunroll_x_in_c0_eni5_2_tpl_1(DELAY,530)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together68_aunroll_x_in_c0_eni5_2_tpl_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist6_sync_together68_aunroll_x_in_c0_eni5_2_tpl_1_q <= $unsigned(in_c0_eni5_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_i_041_pop19101_pop35_triangular12(BLACKBOX,40)@2
    // out out_feedback_stall_out_35@20000000
    triangular_i_llvm_fpga_pop_i32_i_041_pop19101_pop35_0 thei_llvm_fpga_pop_i32_i_041_pop19101_pop35_triangular12 (
        .in_data_in(redist6_sync_together68_aunroll_x_in_c0_eni5_2_tpl_1_q),
        .in_dir(redist4_sync_together68_aunroll_x_in_c0_eni5_1_tpl_1_q),
        .in_feedback_in_35(i_llvm_fpga_push_i32_i_041_pop19101_push35_triangular13_out_feedback_out_35),
        .in_feedback_valid_in_35(i_llvm_fpga_push_i32_i_041_pop19101_push35_triangular13_out_feedback_valid_out_35),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_041_pop19101_pop35_triangular12_out_data_out),
        .out_feedback_stall_out_35(i_llvm_fpga_pop_i32_i_041_pop19101_pop35_triangular12_out_feedback_stall_out_35),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom_triangular14_sel_x(BITSELECT,131)@2
    assign i_idxprom_triangular14_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_i_041_pop19101_pop35_triangular12_out_data_out[31:0]};

    // i_idxprom_triangular14_vt_select_31(BITSELECT,32)@2
    assign i_idxprom_triangular14_vt_select_31_b = i_idxprom_triangular14_sel_x_b[31:0];

    // i_idxprom_triangular14_vt_join(BITJOIN,31)@2
    assign i_idxprom_triangular14_vt_join_q = {c_i32_042_q, i_idxprom_triangular14_vt_select_31_b};

    // redist18_i_idxprom_triangular14_vt_join_q_1(DELAY,542)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_idxprom_triangular14_vt_join_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist18_i_idxprom_triangular14_vt_join_q_1_q <= $unsigned(i_idxprom_triangular14_vt_join_q);
        end
    end

    // i_arrayidx121_triangular0_dupName_0_trunc_sel_x(BITSELECT,104)@3
    assign i_arrayidx121_triangular0_dupName_0_trunc_sel_x_b = redist18_i_idxprom_triangular14_vt_join_q_1_q[15:0];

    // highBBits_uid177_i_arrayidx121_triangular0_mult_x(BITSELECT,176)@3
    assign highBBits_uid177_i_arrayidx121_triangular0_mult_x_b = i_arrayidx121_triangular0_dupName_0_trunc_sel_x_b[15:3];

    // highBBits_uid172_i_arrayidx121_triangular0_mult_x(BITSELECT,171)@3
    assign highBBits_uid172_i_arrayidx121_triangular0_mult_x_b = i_arrayidx121_triangular0_dupName_0_trunc_sel_x_b[15:1];

    // addsumAHighB_uid173_i_arrayidx121_triangular0_mult_x(ADD,172)@3
    assign addsumAHighB_uid173_i_arrayidx121_triangular0_mult_x_a = {1'b0, i_arrayidx121_triangular0_dupName_0_trunc_sel_x_b};
    assign addsumAHighB_uid173_i_arrayidx121_triangular0_mult_x_b = {2'b00, highBBits_uid172_i_arrayidx121_triangular0_mult_x_b};
    assign addsumAHighB_uid173_i_arrayidx121_triangular0_mult_x_o = $unsigned(addsumAHighB_uid173_i_arrayidx121_triangular0_mult_x_a) + $unsigned(addsumAHighB_uid173_i_arrayidx121_triangular0_mult_x_b);
    assign addsumAHighB_uid173_i_arrayidx121_triangular0_mult_x_q = addsumAHighB_uid173_i_arrayidx121_triangular0_mult_x_o[16:0];

    // lowRangeB_uid171_i_arrayidx121_triangular0_mult_x(BITSELECT,170)@3
    assign lowRangeB_uid171_i_arrayidx121_triangular0_mult_x_in = i_arrayidx121_triangular0_dupName_0_trunc_sel_x_b[0:0];
    assign lowRangeB_uid171_i_arrayidx121_triangular0_mult_x_b = lowRangeB_uid171_i_arrayidx121_triangular0_mult_x_in[0:0];

    // add_uid174_i_arrayidx121_triangular0_mult_x(BITJOIN,173)@3
    assign add_uid174_i_arrayidx121_triangular0_mult_x_q = {addsumAHighB_uid173_i_arrayidx121_triangular0_mult_x_q, lowRangeB_uid171_i_arrayidx121_triangular0_mult_x_b};

    // a_subconst_25_sumAHighB_uid178_i_arrayidx121_triangular0_mult_x(ADD,177)@3
    assign a_subconst_25_sumAHighB_uid178_i_arrayidx121_triangular0_mult_x_a = {1'b0, add_uid174_i_arrayidx121_triangular0_mult_x_q};
    assign a_subconst_25_sumAHighB_uid178_i_arrayidx121_triangular0_mult_x_b = {6'b000000, highBBits_uid177_i_arrayidx121_triangular0_mult_x_b};
    assign a_subconst_25_sumAHighB_uid178_i_arrayidx121_triangular0_mult_x_o = $unsigned(a_subconst_25_sumAHighB_uid178_i_arrayidx121_triangular0_mult_x_a) + $unsigned(a_subconst_25_sumAHighB_uid178_i_arrayidx121_triangular0_mult_x_b);
    assign a_subconst_25_sumAHighB_uid178_i_arrayidx121_triangular0_mult_x_q = a_subconst_25_sumAHighB_uid178_i_arrayidx121_triangular0_mult_x_o[18:0];

    // lowRangeB_uid176_i_arrayidx121_triangular0_mult_x(BITSELECT,175)@3
    assign lowRangeB_uid176_i_arrayidx121_triangular0_mult_x_in = i_arrayidx121_triangular0_dupName_0_trunc_sel_x_b[2:0];
    assign lowRangeB_uid176_i_arrayidx121_triangular0_mult_x_b = lowRangeB_uid176_i_arrayidx121_triangular0_mult_x_in[2:0];

    // a_subconst_25_uid179_i_arrayidx121_triangular0_mult_x(BITJOIN,178)@3
    assign a_subconst_25_uid179_i_arrayidx121_triangular0_mult_x_q = {a_subconst_25_sumAHighB_uid178_i_arrayidx121_triangular0_mult_x_q, lowRangeB_uid176_i_arrayidx121_triangular0_mult_x_b};

    // sR_bottomRange_uid183_i_arrayidx121_triangular0_mult_x(BITSELECT,182)@3
    assign sR_bottomRange_uid183_i_arrayidx121_triangular0_mult_x_in = a_subconst_25_uid179_i_arrayidx121_triangular0_mult_x_q[20:0];
    assign sR_bottomRange_uid183_i_arrayidx121_triangular0_mult_x_b = sR_bottomRange_uid183_i_arrayidx121_triangular0_mult_x_in[20:0];

    // sR_bottomExtension_uid182_i_arrayidx121_triangular0_mult_x(CONSTANT,181)
    assign sR_bottomExtension_uid182_i_arrayidx121_triangular0_mult_x_q = $unsigned(4'b0000);

    // sR_mergedSignalTM_uid184_i_arrayidx121_triangular0_mult_x(BITJOIN,183)@3
    assign sR_mergedSignalTM_uid184_i_arrayidx121_triangular0_mult_x_q = {sR_bottomRange_uid183_i_arrayidx121_triangular0_mult_x_b, sR_bottomExtension_uid182_i_arrayidx121_triangular0_mult_x_q};

    // i_arrayidx121_triangular0_mult_extender_x(BITJOIN,101)@3
    assign i_arrayidx121_triangular0_mult_extender_x_q = {i_arrayidx121_triangular0_mult_multconst_x_q, sR_mergedSignalTM_uid184_i_arrayidx121_triangular0_mult_x_q};

    // i_arrayidx121_triangular0_dupName_1_trunc_sel_x(BITSELECT,105)@3
    assign i_arrayidx121_triangular0_dupName_1_trunc_sel_x_b = i_arrayidx121_triangular0_mult_extender_x_q[15:0];

    // redist13_i_arrayidx121_triangular0_dupName_1_trunc_sel_x_b_1(DELAY,537)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_arrayidx121_triangular0_dupName_1_trunc_sel_x_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist13_i_arrayidx121_triangular0_dupName_1_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx121_triangular0_dupName_1_trunc_sel_x_b);
        end
    end

    // i_arrayidx121_triangular0_add_x(ADD,85)@4
    assign i_arrayidx121_triangular0_add_x_a = {1'b0, i_arrayidx121_triangular0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx121_triangular0_add_x_b = {1'b0, redist13_i_arrayidx121_triangular0_dupName_1_trunc_sel_x_b_1_q};
    assign i_arrayidx121_triangular0_add_x_o = $unsigned(i_arrayidx121_triangular0_add_x_a) + $unsigned(i_arrayidx121_triangular0_add_x_b);
    assign i_arrayidx121_triangular0_add_x_q = i_arrayidx121_triangular0_add_x_o[16:0];

    // i_arrayidx121_triangular0_dupName_2_trunc_sel_x(BITSELECT,106)@4
    assign i_arrayidx121_triangular0_dupName_2_trunc_sel_x_b = i_arrayidx121_triangular0_add_x_q[15:0];

    // i_arrayidx121_triangular0_dupName_0_add_x(ADD,95)@4
    assign i_arrayidx121_triangular0_dupName_0_add_x_a = {1'b0, i_arrayidx121_triangular0_dupName_2_trunc_sel_x_b};
    assign i_arrayidx121_triangular0_dupName_0_add_x_b = {1'b0, i_arrayidx121_triangular0_shift_join_x_q};
    assign i_arrayidx121_triangular0_dupName_0_add_x_o = $unsigned(i_arrayidx121_triangular0_dupName_0_add_x_a) + $unsigned(i_arrayidx121_triangular0_dupName_0_add_x_b);
    assign i_arrayidx121_triangular0_dupName_0_add_x_q = i_arrayidx121_triangular0_dupName_0_add_x_o[16:0];

    // i_arrayidx121_triangular0_dupName_5_trunc_sel_x(BITSELECT,108)@4
    assign i_arrayidx121_triangular0_dupName_5_trunc_sel_x_b = i_arrayidx121_triangular0_dupName_0_add_x_q[15:0];

    // i_arrayidx121_triangular0_append_upper_bits_x(BITJOIN,86)@4
    assign i_arrayidx121_triangular0_append_upper_bits_x_q = {i_arrayidx121_triangular0_upper_bits_x_merged_bit_select_b, i_arrayidx121_triangular0_dupName_5_trunc_sel_x_b};

    // i_arrayidx121_triangular19_vt_select_63(BITSELECT,17)@4
    assign i_arrayidx121_triangular19_vt_select_63_b = i_arrayidx121_triangular0_append_upper_bits_x_q[63:2];

    // i_arrayidx121_triangular19_vt_const_1(CONSTANT,15)
    assign i_arrayidx121_triangular19_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx121_triangular19_vt_join(BITJOIN,16)@4
    assign i_arrayidx121_triangular19_vt_join_q = {i_arrayidx121_triangular19_vt_select_63_b, i_arrayidx121_triangular19_vt_const_1_q};

    // i_arrayidx8_triangular0_narrow_x(BITSELECT,113)@4
    assign i_arrayidx8_triangular0_narrow_x_b = i_idxprom7_triangular16_vt_join_q[61:0];

    // i_arrayidx8_triangular0_shift_join_x(BITJOIN,114)@4
    assign i_arrayidx8_triangular0_shift_join_x_q = {i_arrayidx8_triangular0_narrow_x_b, i_arrayidx121_triangular19_vt_const_1_q};

    // i_arrayidx8_triangular0_mult_multconst_x(CONSTANT,121)
    assign i_arrayidx8_triangular0_mult_multconst_x_q = $unsigned(55'b0000000000000000000000000000000000000000000000000000000);

    // i_arrayidx8_triangular0_mult_x_bs1(BITSELECT,226)@2
    assign i_arrayidx8_triangular0_mult_x_bs1_b = i_idxprom_triangular14_vt_join_q[63:54];

    // highBBits_uid274_i_arrayidx8_triangular0_mult_x_im0(BITSELECT,273)@2
    assign highBBits_uid274_i_arrayidx8_triangular0_mult_x_im0_b = i_arrayidx8_triangular0_mult_x_bs1_b[9:3];

    // highBBits_uid269_i_arrayidx8_triangular0_mult_x_im0(BITSELECT,268)@2
    assign highBBits_uid269_i_arrayidx8_triangular0_mult_x_im0_b = i_arrayidx8_triangular0_mult_x_bs1_b[9:1];

    // addsumAHighB_uid270_i_arrayidx8_triangular0_mult_x_im0(ADD,269)@2
    assign addsumAHighB_uid270_i_arrayidx8_triangular0_mult_x_im0_a = {1'b0, i_arrayidx8_triangular0_mult_x_bs1_b};
    assign addsumAHighB_uid270_i_arrayidx8_triangular0_mult_x_im0_b = {2'b00, highBBits_uid269_i_arrayidx8_triangular0_mult_x_im0_b};
    assign addsumAHighB_uid270_i_arrayidx8_triangular0_mult_x_im0_o = $unsigned(addsumAHighB_uid270_i_arrayidx8_triangular0_mult_x_im0_a) + $unsigned(addsumAHighB_uid270_i_arrayidx8_triangular0_mult_x_im0_b);
    assign addsumAHighB_uid270_i_arrayidx8_triangular0_mult_x_im0_q = addsumAHighB_uid270_i_arrayidx8_triangular0_mult_x_im0_o[10:0];

    // lowRangeB_uid268_i_arrayidx8_triangular0_mult_x_im0(BITSELECT,267)@2
    assign lowRangeB_uid268_i_arrayidx8_triangular0_mult_x_im0_in = i_arrayidx8_triangular0_mult_x_bs1_b[0:0];
    assign lowRangeB_uid268_i_arrayidx8_triangular0_mult_x_im0_b = lowRangeB_uid268_i_arrayidx8_triangular0_mult_x_im0_in[0:0];

    // add_uid271_i_arrayidx8_triangular0_mult_x_im0(BITJOIN,270)@2
    assign add_uid271_i_arrayidx8_triangular0_mult_x_im0_q = {addsumAHighB_uid270_i_arrayidx8_triangular0_mult_x_im0_q, lowRangeB_uid268_i_arrayidx8_triangular0_mult_x_im0_b};

    // a_subconst_25_sumAHighB_uid275_i_arrayidx8_triangular0_mult_x_im0(ADD,274)@2
    assign a_subconst_25_sumAHighB_uid275_i_arrayidx8_triangular0_mult_x_im0_a = {1'b0, add_uid271_i_arrayidx8_triangular0_mult_x_im0_q};
    assign a_subconst_25_sumAHighB_uid275_i_arrayidx8_triangular0_mult_x_im0_b = {6'b000000, highBBits_uid274_i_arrayidx8_triangular0_mult_x_im0_b};
    assign a_subconst_25_sumAHighB_uid275_i_arrayidx8_triangular0_mult_x_im0_o = $unsigned(a_subconst_25_sumAHighB_uid275_i_arrayidx8_triangular0_mult_x_im0_a) + $unsigned(a_subconst_25_sumAHighB_uid275_i_arrayidx8_triangular0_mult_x_im0_b);
    assign a_subconst_25_sumAHighB_uid275_i_arrayidx8_triangular0_mult_x_im0_q = a_subconst_25_sumAHighB_uid275_i_arrayidx8_triangular0_mult_x_im0_o[12:0];

    // lowRangeB_uid273_i_arrayidx8_triangular0_mult_x_im0(BITSELECT,272)@2
    assign lowRangeB_uid273_i_arrayidx8_triangular0_mult_x_im0_in = i_arrayidx8_triangular0_mult_x_bs1_b[2:0];
    assign lowRangeB_uid273_i_arrayidx8_triangular0_mult_x_im0_b = lowRangeB_uid273_i_arrayidx8_triangular0_mult_x_im0_in[2:0];

    // a_subconst_25_uid276_i_arrayidx8_triangular0_mult_x_im0(BITJOIN,275)@2
    assign a_subconst_25_uid276_i_arrayidx8_triangular0_mult_x_im0_q = {a_subconst_25_sumAHighB_uid275_i_arrayidx8_triangular0_mult_x_im0_q, lowRangeB_uid273_i_arrayidx8_triangular0_mult_x_im0_b};

    // sR_bottomRange_uid280_i_arrayidx8_triangular0_mult_x_im0(BITSELECT,279)@2
    assign sR_bottomRange_uid280_i_arrayidx8_triangular0_mult_x_im0_in = a_subconst_25_uid276_i_arrayidx8_triangular0_mult_x_im0_q[14:0];
    assign sR_bottomRange_uid280_i_arrayidx8_triangular0_mult_x_im0_b = sR_bottomRange_uid280_i_arrayidx8_triangular0_mult_x_im0_in[14:0];

    // redist0_sR_bottomRange_uid280_i_arrayidx8_triangular0_mult_x_im0_b_1(DELAY,524)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sR_bottomRange_uid280_i_arrayidx8_triangular0_mult_x_im0_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist0_sR_bottomRange_uid280_i_arrayidx8_triangular0_mult_x_im0_b_1_q <= $unsigned(sR_bottomRange_uid280_i_arrayidx8_triangular0_mult_x_im0_b);
        end
    end

    // sR_mergedSignalTM_uid281_i_arrayidx8_triangular0_mult_x_im0(BITJOIN,280)@3
    assign sR_mergedSignalTM_uid281_i_arrayidx8_triangular0_mult_x_im0_q = {redist0_sR_bottomRange_uid280_i_arrayidx8_triangular0_mult_x_im0_b_1_q, sR_bottomExtension_uid182_i_arrayidx121_triangular0_mult_x_q};

    // i_arrayidx8_triangular0_mult_x_sums_align_3(BITSHIFT,240)@3
    assign i_arrayidx8_triangular0_mult_x_sums_align_3_qint = { sR_mergedSignalTM_uid281_i_arrayidx8_triangular0_mult_x_im0_q, 9'b000000000 };
    assign i_arrayidx8_triangular0_mult_x_sums_align_3_q = i_arrayidx8_triangular0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx8_triangular0_mult_x_bs7(BITSELECT,232)@2
    assign i_arrayidx8_triangular0_mult_x_bs7_in = i_idxprom_triangular14_vt_join_q[35:0];
    assign i_arrayidx8_triangular0_mult_x_bs7_b = i_arrayidx8_triangular0_mult_x_bs7_in[35:18];

    // redist2_i_arrayidx8_triangular0_mult_x_bs7_b_1(DELAY,526)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_arrayidx8_triangular0_mult_x_bs7_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist2_i_arrayidx8_triangular0_mult_x_bs7_b_1_q <= $unsigned(i_arrayidx8_triangular0_mult_x_bs7_b);
        end
    end

    // highBBits_uid400_i_arrayidx8_triangular0_mult_x_im6(BITSELECT,399)@3
    assign highBBits_uid400_i_arrayidx8_triangular0_mult_x_im6_b = redist2_i_arrayidx8_triangular0_mult_x_bs7_b_1_q[17:3];

    // highBBits_uid395_i_arrayidx8_triangular0_mult_x_im6(BITSELECT,394)@2
    assign highBBits_uid395_i_arrayidx8_triangular0_mult_x_im6_b = i_arrayidx8_triangular0_mult_x_bs7_b[17:1];

    // addsumAHighB_uid396_i_arrayidx8_triangular0_mult_x_im6(ADD,395)@2 + 1
    assign addsumAHighB_uid396_i_arrayidx8_triangular0_mult_x_im6_a = {1'b0, i_arrayidx8_triangular0_mult_x_bs7_b};
    assign addsumAHighB_uid396_i_arrayidx8_triangular0_mult_x_im6_b = {2'b00, highBBits_uid395_i_arrayidx8_triangular0_mult_x_im6_b};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            addsumAHighB_uid396_i_arrayidx8_triangular0_mult_x_im6_o <= 19'b0;
        end
        else if (in_enable == 1'b1)
        begin
            addsumAHighB_uid396_i_arrayidx8_triangular0_mult_x_im6_o <= $unsigned(addsumAHighB_uid396_i_arrayidx8_triangular0_mult_x_im6_a) + $unsigned(addsumAHighB_uid396_i_arrayidx8_triangular0_mult_x_im6_b);
        end
    end
    assign addsumAHighB_uid396_i_arrayidx8_triangular0_mult_x_im6_q = addsumAHighB_uid396_i_arrayidx8_triangular0_mult_x_im6_o[18:0];

    // lowRangeB_uid394_i_arrayidx8_triangular0_mult_x_im6(BITSELECT,393)@3
    assign lowRangeB_uid394_i_arrayidx8_triangular0_mult_x_im6_in = redist2_i_arrayidx8_triangular0_mult_x_bs7_b_1_q[0:0];
    assign lowRangeB_uid394_i_arrayidx8_triangular0_mult_x_im6_b = lowRangeB_uid394_i_arrayidx8_triangular0_mult_x_im6_in[0:0];

    // add_uid397_i_arrayidx8_triangular0_mult_x_im6(BITJOIN,396)@3
    assign add_uid397_i_arrayidx8_triangular0_mult_x_im6_q = {addsumAHighB_uid396_i_arrayidx8_triangular0_mult_x_im6_q, lowRangeB_uid394_i_arrayidx8_triangular0_mult_x_im6_b};

    // a_subconst_25_sumAHighB_uid401_i_arrayidx8_triangular0_mult_x_im6(ADD,400)@3
    assign a_subconst_25_sumAHighB_uid401_i_arrayidx8_triangular0_mult_x_im6_a = {1'b0, add_uid397_i_arrayidx8_triangular0_mult_x_im6_q};
    assign a_subconst_25_sumAHighB_uid401_i_arrayidx8_triangular0_mult_x_im6_b = {6'b000000, highBBits_uid400_i_arrayidx8_triangular0_mult_x_im6_b};
    assign a_subconst_25_sumAHighB_uid401_i_arrayidx8_triangular0_mult_x_im6_o = $unsigned(a_subconst_25_sumAHighB_uid401_i_arrayidx8_triangular0_mult_x_im6_a) + $unsigned(a_subconst_25_sumAHighB_uid401_i_arrayidx8_triangular0_mult_x_im6_b);
    assign a_subconst_25_sumAHighB_uid401_i_arrayidx8_triangular0_mult_x_im6_q = a_subconst_25_sumAHighB_uid401_i_arrayidx8_triangular0_mult_x_im6_o[20:0];

    // lowRangeB_uid399_i_arrayidx8_triangular0_mult_x_im6(BITSELECT,398)@3
    assign lowRangeB_uid399_i_arrayidx8_triangular0_mult_x_im6_in = redist2_i_arrayidx8_triangular0_mult_x_bs7_b_1_q[2:0];
    assign lowRangeB_uid399_i_arrayidx8_triangular0_mult_x_im6_b = lowRangeB_uid399_i_arrayidx8_triangular0_mult_x_im6_in[2:0];

    // a_subconst_25_uid402_i_arrayidx8_triangular0_mult_x_im6(BITJOIN,401)@3
    assign a_subconst_25_uid402_i_arrayidx8_triangular0_mult_x_im6_q = {a_subconst_25_sumAHighB_uid401_i_arrayidx8_triangular0_mult_x_im6_q, lowRangeB_uid399_i_arrayidx8_triangular0_mult_x_im6_b};

    // sR_bottomRange_uid406_i_arrayidx8_triangular0_mult_x_im6(BITSELECT,405)@3
    assign sR_bottomRange_uid406_i_arrayidx8_triangular0_mult_x_im6_in = a_subconst_25_uid402_i_arrayidx8_triangular0_mult_x_im6_q[22:0];
    assign sR_bottomRange_uid406_i_arrayidx8_triangular0_mult_x_im6_b = sR_bottomRange_uid406_i_arrayidx8_triangular0_mult_x_im6_in[22:0];

    // sR_mergedSignalTM_uid407_i_arrayidx8_triangular0_mult_x_im6(BITJOIN,406)@3
    assign sR_mergedSignalTM_uid407_i_arrayidx8_triangular0_mult_x_im6_q = {sR_bottomRange_uid406_i_arrayidx8_triangular0_mult_x_im6_b, sR_bottomExtension_uid182_i_arrayidx121_triangular0_mult_x_q};

    // i_arrayidx8_triangular0_mult_x_sums_align_2(BITSHIFT,239)@3
    assign i_arrayidx8_triangular0_mult_x_sums_align_2_qint = { sR_mergedSignalTM_uid407_i_arrayidx8_triangular0_mult_x_im6_q, 18'b000000000000000000 };
    assign i_arrayidx8_triangular0_mult_x_sums_align_2_q = i_arrayidx8_triangular0_mult_x_sums_align_2_qint[44:0];

    // i_arrayidx8_triangular0_mult_x_sums_join_4(BITJOIN,241)@3
    assign i_arrayidx8_triangular0_mult_x_sums_join_4_q = {i_arrayidx8_triangular0_mult_x_sums_align_3_q, i_arrayidx8_triangular0_mult_x_sums_align_2_q};

    // i_arrayidx8_triangular0_mult_x_bs4(BITSELECT,229)@2
    assign i_arrayidx8_triangular0_mult_x_bs4_in = i_idxprom_triangular14_vt_join_q[53:0];
    assign i_arrayidx8_triangular0_mult_x_bs4_b = i_arrayidx8_triangular0_mult_x_bs4_in[53:36];

    // redist3_i_arrayidx8_triangular0_mult_x_bs4_b_1(DELAY,527)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_arrayidx8_triangular0_mult_x_bs4_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist3_i_arrayidx8_triangular0_mult_x_bs4_b_1_q <= $unsigned(i_arrayidx8_triangular0_mult_x_bs4_b);
        end
    end

    // highBBits_uid331_i_arrayidx8_triangular0_mult_x_im3(BITSELECT,330)@3
    assign highBBits_uid331_i_arrayidx8_triangular0_mult_x_im3_b = redist3_i_arrayidx8_triangular0_mult_x_bs4_b_1_q[17:3];

    // highBBits_uid326_i_arrayidx8_triangular0_mult_x_im3(BITSELECT,325)@2
    assign highBBits_uid326_i_arrayidx8_triangular0_mult_x_im3_b = i_arrayidx8_triangular0_mult_x_bs4_b[17:1];

    // addsumAHighB_uid327_i_arrayidx8_triangular0_mult_x_im3(ADD,326)@2 + 1
    assign addsumAHighB_uid327_i_arrayidx8_triangular0_mult_x_im3_a = {1'b0, i_arrayidx8_triangular0_mult_x_bs4_b};
    assign addsumAHighB_uid327_i_arrayidx8_triangular0_mult_x_im3_b = {2'b00, highBBits_uid326_i_arrayidx8_triangular0_mult_x_im3_b};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            addsumAHighB_uid327_i_arrayidx8_triangular0_mult_x_im3_o <= 19'b0;
        end
        else if (in_enable == 1'b1)
        begin
            addsumAHighB_uid327_i_arrayidx8_triangular0_mult_x_im3_o <= $unsigned(addsumAHighB_uid327_i_arrayidx8_triangular0_mult_x_im3_a) + $unsigned(addsumAHighB_uid327_i_arrayidx8_triangular0_mult_x_im3_b);
        end
    end
    assign addsumAHighB_uid327_i_arrayidx8_triangular0_mult_x_im3_q = addsumAHighB_uid327_i_arrayidx8_triangular0_mult_x_im3_o[18:0];

    // lowRangeB_uid325_i_arrayidx8_triangular0_mult_x_im3(BITSELECT,324)@3
    assign lowRangeB_uid325_i_arrayidx8_triangular0_mult_x_im3_in = redist3_i_arrayidx8_triangular0_mult_x_bs4_b_1_q[0:0];
    assign lowRangeB_uid325_i_arrayidx8_triangular0_mult_x_im3_b = lowRangeB_uid325_i_arrayidx8_triangular0_mult_x_im3_in[0:0];

    // add_uid328_i_arrayidx8_triangular0_mult_x_im3(BITJOIN,327)@3
    assign add_uid328_i_arrayidx8_triangular0_mult_x_im3_q = {addsumAHighB_uid327_i_arrayidx8_triangular0_mult_x_im3_q, lowRangeB_uid325_i_arrayidx8_triangular0_mult_x_im3_b};

    // a_subconst_25_sumAHighB_uid332_i_arrayidx8_triangular0_mult_x_im3(ADD,331)@3
    assign a_subconst_25_sumAHighB_uid332_i_arrayidx8_triangular0_mult_x_im3_a = {1'b0, add_uid328_i_arrayidx8_triangular0_mult_x_im3_q};
    assign a_subconst_25_sumAHighB_uid332_i_arrayidx8_triangular0_mult_x_im3_b = {6'b000000, highBBits_uid331_i_arrayidx8_triangular0_mult_x_im3_b};
    assign a_subconst_25_sumAHighB_uid332_i_arrayidx8_triangular0_mult_x_im3_o = $unsigned(a_subconst_25_sumAHighB_uid332_i_arrayidx8_triangular0_mult_x_im3_a) + $unsigned(a_subconst_25_sumAHighB_uid332_i_arrayidx8_triangular0_mult_x_im3_b);
    assign a_subconst_25_sumAHighB_uid332_i_arrayidx8_triangular0_mult_x_im3_q = a_subconst_25_sumAHighB_uid332_i_arrayidx8_triangular0_mult_x_im3_o[20:0];

    // lowRangeB_uid330_i_arrayidx8_triangular0_mult_x_im3(BITSELECT,329)@3
    assign lowRangeB_uid330_i_arrayidx8_triangular0_mult_x_im3_in = redist3_i_arrayidx8_triangular0_mult_x_bs4_b_1_q[2:0];
    assign lowRangeB_uid330_i_arrayidx8_triangular0_mult_x_im3_b = lowRangeB_uid330_i_arrayidx8_triangular0_mult_x_im3_in[2:0];

    // a_subconst_25_uid333_i_arrayidx8_triangular0_mult_x_im3(BITJOIN,332)@3
    assign a_subconst_25_uid333_i_arrayidx8_triangular0_mult_x_im3_q = {a_subconst_25_sumAHighB_uid332_i_arrayidx8_triangular0_mult_x_im3_q, lowRangeB_uid330_i_arrayidx8_triangular0_mult_x_im3_b};

    // sR_bottomRange_uid337_i_arrayidx8_triangular0_mult_x_im3(BITSELECT,336)@3
    assign sR_bottomRange_uid337_i_arrayidx8_triangular0_mult_x_im3_in = a_subconst_25_uid333_i_arrayidx8_triangular0_mult_x_im3_q[22:0];
    assign sR_bottomRange_uid337_i_arrayidx8_triangular0_mult_x_im3_b = sR_bottomRange_uid337_i_arrayidx8_triangular0_mult_x_im3_in[22:0];

    // sR_mergedSignalTM_uid338_i_arrayidx8_triangular0_mult_x_im3(BITJOIN,337)@3
    assign sR_mergedSignalTM_uid338_i_arrayidx8_triangular0_mult_x_im3_q = {sR_bottomRange_uid337_i_arrayidx8_triangular0_mult_x_im3_b, sR_bottomExtension_uid182_i_arrayidx121_triangular0_mult_x_q};

    // i_arrayidx8_triangular0_mult_x_sums_align_0(BITSHIFT,237)@3
    assign i_arrayidx8_triangular0_mult_x_sums_align_0_qint = { sR_mergedSignalTM_uid338_i_arrayidx8_triangular0_mult_x_im3_q, 9'b000000000 };
    assign i_arrayidx8_triangular0_mult_x_sums_align_0_q = i_arrayidx8_triangular0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx8_triangular0_mult_x_bs10(BITSELECT,235)@2
    assign i_arrayidx8_triangular0_mult_x_bs10_in = i_idxprom_triangular14_vt_join_q[17:0];
    assign i_arrayidx8_triangular0_mult_x_bs10_b = i_arrayidx8_triangular0_mult_x_bs10_in[17:0];

    // redist1_i_arrayidx8_triangular0_mult_x_bs10_b_1(DELAY,525)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_arrayidx8_triangular0_mult_x_bs10_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist1_i_arrayidx8_triangular0_mult_x_bs10_b_1_q <= $unsigned(i_arrayidx8_triangular0_mult_x_bs10_b);
        end
    end

    // highBBits_uid469_i_arrayidx8_triangular0_mult_x_im9(BITSELECT,468)@3
    assign highBBits_uid469_i_arrayidx8_triangular0_mult_x_im9_b = redist1_i_arrayidx8_triangular0_mult_x_bs10_b_1_q[17:3];

    // highBBits_uid464_i_arrayidx8_triangular0_mult_x_im9(BITSELECT,463)@2
    assign highBBits_uid464_i_arrayidx8_triangular0_mult_x_im9_b = i_arrayidx8_triangular0_mult_x_bs10_b[17:1];

    // addsumAHighB_uid465_i_arrayidx8_triangular0_mult_x_im9(ADD,464)@2 + 1
    assign addsumAHighB_uid465_i_arrayidx8_triangular0_mult_x_im9_a = {1'b0, i_arrayidx8_triangular0_mult_x_bs10_b};
    assign addsumAHighB_uid465_i_arrayidx8_triangular0_mult_x_im9_b = {2'b00, highBBits_uid464_i_arrayidx8_triangular0_mult_x_im9_b};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            addsumAHighB_uid465_i_arrayidx8_triangular0_mult_x_im9_o <= 19'b0;
        end
        else if (in_enable == 1'b1)
        begin
            addsumAHighB_uid465_i_arrayidx8_triangular0_mult_x_im9_o <= $unsigned(addsumAHighB_uid465_i_arrayidx8_triangular0_mult_x_im9_a) + $unsigned(addsumAHighB_uid465_i_arrayidx8_triangular0_mult_x_im9_b);
        end
    end
    assign addsumAHighB_uid465_i_arrayidx8_triangular0_mult_x_im9_q = addsumAHighB_uid465_i_arrayidx8_triangular0_mult_x_im9_o[18:0];

    // lowRangeB_uid463_i_arrayidx8_triangular0_mult_x_im9(BITSELECT,462)@3
    assign lowRangeB_uid463_i_arrayidx8_triangular0_mult_x_im9_in = redist1_i_arrayidx8_triangular0_mult_x_bs10_b_1_q[0:0];
    assign lowRangeB_uid463_i_arrayidx8_triangular0_mult_x_im9_b = lowRangeB_uid463_i_arrayidx8_triangular0_mult_x_im9_in[0:0];

    // add_uid466_i_arrayidx8_triangular0_mult_x_im9(BITJOIN,465)@3
    assign add_uid466_i_arrayidx8_triangular0_mult_x_im9_q = {addsumAHighB_uid465_i_arrayidx8_triangular0_mult_x_im9_q, lowRangeB_uid463_i_arrayidx8_triangular0_mult_x_im9_b};

    // a_subconst_25_sumAHighB_uid470_i_arrayidx8_triangular0_mult_x_im9(ADD,469)@3
    assign a_subconst_25_sumAHighB_uid470_i_arrayidx8_triangular0_mult_x_im9_a = {1'b0, add_uid466_i_arrayidx8_triangular0_mult_x_im9_q};
    assign a_subconst_25_sumAHighB_uid470_i_arrayidx8_triangular0_mult_x_im9_b = {6'b000000, highBBits_uid469_i_arrayidx8_triangular0_mult_x_im9_b};
    assign a_subconst_25_sumAHighB_uid470_i_arrayidx8_triangular0_mult_x_im9_o = $unsigned(a_subconst_25_sumAHighB_uid470_i_arrayidx8_triangular0_mult_x_im9_a) + $unsigned(a_subconst_25_sumAHighB_uid470_i_arrayidx8_triangular0_mult_x_im9_b);
    assign a_subconst_25_sumAHighB_uid470_i_arrayidx8_triangular0_mult_x_im9_q = a_subconst_25_sumAHighB_uid470_i_arrayidx8_triangular0_mult_x_im9_o[20:0];

    // lowRangeB_uid468_i_arrayidx8_triangular0_mult_x_im9(BITSELECT,467)@3
    assign lowRangeB_uid468_i_arrayidx8_triangular0_mult_x_im9_in = redist1_i_arrayidx8_triangular0_mult_x_bs10_b_1_q[2:0];
    assign lowRangeB_uid468_i_arrayidx8_triangular0_mult_x_im9_b = lowRangeB_uid468_i_arrayidx8_triangular0_mult_x_im9_in[2:0];

    // a_subconst_25_uid471_i_arrayidx8_triangular0_mult_x_im9(BITJOIN,470)@3
    assign a_subconst_25_uid471_i_arrayidx8_triangular0_mult_x_im9_q = {a_subconst_25_sumAHighB_uid470_i_arrayidx8_triangular0_mult_x_im9_q, lowRangeB_uid468_i_arrayidx8_triangular0_mult_x_im9_b};

    // sR_bottomRange_uid475_i_arrayidx8_triangular0_mult_x_im9(BITSELECT,474)@3
    assign sR_bottomRange_uid475_i_arrayidx8_triangular0_mult_x_im9_in = a_subconst_25_uid471_i_arrayidx8_triangular0_mult_x_im9_q[22:0];
    assign sR_bottomRange_uid475_i_arrayidx8_triangular0_mult_x_im9_b = sR_bottomRange_uid475_i_arrayidx8_triangular0_mult_x_im9_in[22:0];

    // sR_mergedSignalTM_uid476_i_arrayidx8_triangular0_mult_x_im9(BITJOIN,475)@3
    assign sR_mergedSignalTM_uid476_i_arrayidx8_triangular0_mult_x_im9_q = {sR_bottomRange_uid475_i_arrayidx8_triangular0_mult_x_im9_b, sR_bottomExtension_uid182_i_arrayidx121_triangular0_mult_x_q};

    // i_arrayidx8_triangular0_mult_x_sums_join_1(BITJOIN,238)@3
    assign i_arrayidx8_triangular0_mult_x_sums_join_1_q = {i_arrayidx8_triangular0_mult_x_sums_align_0_q, sR_mergedSignalTM_uid476_i_arrayidx8_triangular0_mult_x_im9_q};

    // i_arrayidx8_triangular0_mult_x_sums_result_add_0_0(ADD,242)@3
    assign i_arrayidx8_triangular0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx8_triangular0_mult_x_sums_join_1_q};
    assign i_arrayidx8_triangular0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx8_triangular0_mult_x_sums_join_4_q};
    assign i_arrayidx8_triangular0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx8_triangular0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx8_triangular0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx8_triangular0_mult_x_sums_result_add_0_0_q = i_arrayidx8_triangular0_mult_x_sums_result_add_0_0_o[73:0];

    // i_arrayidx8_triangular0_mult_extender_x(BITJOIN,120)@3
    assign i_arrayidx8_triangular0_mult_extender_x_q = {i_arrayidx8_triangular0_mult_multconst_x_q, i_arrayidx8_triangular0_mult_x_sums_result_add_0_0_q[72:0]};

    // i_arrayidx8_triangular0_trunc_sel_x(BITSELECT,122)@3
    assign i_arrayidx8_triangular0_trunc_sel_x_b = i_arrayidx8_triangular0_mult_extender_x_q[63:0];

    // redist12_i_arrayidx8_triangular0_trunc_sel_x_b_1(DELAY,536)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_arrayidx8_triangular0_trunc_sel_x_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist12_i_arrayidx8_triangular0_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx8_triangular0_trunc_sel_x_b);
        end
    end

    // valid_fanout_reg7(REG,146)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg7_q <= $unsigned(redist11_sync_together68_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024a100i32_a4529_triangular17(BLACKBOX,35)@4
    triangular_i_llvm_fpga_ffwd_dest_p1024a100i32_a4529_0 thei_llvm_fpga_ffwd_dest_p1024a100i32_a4529_triangular17 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_p1024a100i32_a4529_triangular17_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx8_triangular0_add_x(ADD,109)@4
    assign i_arrayidx8_triangular0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_p1024a100i32_a4529_triangular17_out_dest_data_out_1_0};
    assign i_arrayidx8_triangular0_add_x_b = {1'b0, redist12_i_arrayidx8_triangular0_trunc_sel_x_b_1_q};
    assign i_arrayidx8_triangular0_add_x_o = $unsigned(i_arrayidx8_triangular0_add_x_a) + $unsigned(i_arrayidx8_triangular0_add_x_b);
    assign i_arrayidx8_triangular0_add_x_q = i_arrayidx8_triangular0_add_x_o[64:0];

    // i_arrayidx8_triangular0_dupName_0_trunc_sel_x(BITSELECT,123)@4
    assign i_arrayidx8_triangular0_dupName_0_trunc_sel_x_b = i_arrayidx8_triangular0_add_x_q[63:0];

    // i_arrayidx8_triangular0_dupName_0_add_x(ADD,117)@4
    assign i_arrayidx8_triangular0_dupName_0_add_x_a = {1'b0, i_arrayidx8_triangular0_dupName_0_trunc_sel_x_b};
    assign i_arrayidx8_triangular0_dupName_0_add_x_b = {1'b0, i_arrayidx8_triangular0_shift_join_x_q};
    assign i_arrayidx8_triangular0_dupName_0_add_x_o = $unsigned(i_arrayidx8_triangular0_dupName_0_add_x_a) + $unsigned(i_arrayidx8_triangular0_dupName_0_add_x_b);
    assign i_arrayidx8_triangular0_dupName_0_add_x_q = i_arrayidx8_triangular0_dupName_0_add_x_o[64:0];

    // i_arrayidx8_triangular0_dupName_2_trunc_sel_x(BITSELECT,124)@4
    assign i_arrayidx8_triangular0_dupName_2_trunc_sel_x_b = i_arrayidx8_triangular0_dupName_0_add_x_q[63:0];

    // redist19_i_idxprom_triangular14_vt_join_q_2(DELAY,543)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_idxprom_triangular14_vt_join_q_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist19_i_idxprom_triangular14_vt_join_q_2_q <= $unsigned(redist18_i_idxprom_triangular14_vt_join_q_1_q);
        end
    end

    // redist17_i_llvm_fpga_pipeline_keep_going71_triangular6_out_data_out_3(DELAY,541)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_llvm_fpga_pipeline_keep_going71_triangular6_out_data_out_3_delay_0 <= '0;
            redist17_i_llvm_fpga_pipeline_keep_going71_triangular6_out_data_out_3_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist17_i_llvm_fpga_pipeline_keep_going71_triangular6_out_data_out_3_delay_0 <= $unsigned(redist16_i_llvm_fpga_pipeline_keep_going71_triangular6_out_data_out_1_q);
            redist17_i_llvm_fpga_pipeline_keep_going71_triangular6_out_data_out_3_q <= redist17_i_llvm_fpga_pipeline_keep_going71_triangular6_out_data_out_3_delay_0;
        end
    end

    // redist20_i_first_cleanup_xor77_triangular4_q_2(DELAY,544)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_first_cleanup_xor77_triangular4_q_2_delay_0 <= '0;
            redist20_i_first_cleanup_xor77_triangular4_q_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist20_i_first_cleanup_xor77_triangular4_q_2_delay_0 <= $unsigned(i_first_cleanup_xor77_triangular4_q);
            redist20_i_first_cleanup_xor77_triangular4_q_2_q <= redist20_i_first_cleanup_xor77_triangular4_q_2_delay_0;
        end
    end

    // sync_out_aunroll_x(GPOUT,137)@4
    assign out_c0_exi9_0_tpl = GND_q;
    assign out_c0_exi9_1_tpl = redist20_i_first_cleanup_xor77_triangular4_q_2_q;
    assign out_c0_exi9_2_tpl = redist17_i_llvm_fpga_pipeline_keep_going71_triangular6_out_data_out_3_q;
    assign out_c0_exi9_3_tpl = redist19_i_idxprom_triangular14_vt_join_q_2_q;
    assign out_c0_exi9_4_tpl = i_arrayidx8_triangular0_dupName_2_trunc_sel_x_b;
    assign out_c0_exi9_5_tpl = i_arrayidx121_triangular19_vt_join_q;
    assign out_c0_exi9_6_tpl = redist14_i_masked80_triangular32_q_2_q;
    assign out_c0_exi9_7_tpl = redist15_i_llvm_fpga_pop_i32_lim_ext94_pop33_triangular33_out_data_out_2_q;
    assign out_c0_exi9_8_tpl = i_llvm_fpga_pop_i1_notcmp83100_pop34_triangular35_out_data_out;
    assign out_c0_exi9_9_tpl = redist9_sync_together68_aunroll_x_in_c0_eni5_5_tpl_3_mem_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_triangular0 = GND_q;

endmodule
