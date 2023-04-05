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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body58_gaussians_c0_enter18013_gaussian0
// Created for function/kernel gaussian
// SystemVerilog created on Tue Apr  4 21:38:49 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module gaussian_i_sfc_logic_s_c0_in_for_body58_0000enter18013_gaussian0 (
    input wire [31:0] in_unnamed_gaussian15_gaussian_avm_readdata,
    input wire [0:0] in_unnamed_gaussian15_gaussian_avm_writeack,
    input wire [0:0] in_unnamed_gaussian15_gaussian_avm_waitrequest,
    input wire [0:0] in_unnamed_gaussian15_gaussian_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_gaussian6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_gaussian6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_unnamed_gaussian16_gaussian_avm_readdata,
    input wire [0:0] in_unnamed_gaussian16_gaussian_avm_writeack,
    input wire [0:0] in_unnamed_gaussian16_gaussian_avm_waitrequest,
    input wire [0:0] in_unnamed_gaussian16_gaussian_avm_readdatavalid,
    output wire [31:0] out_unnamed_gaussian15_gaussian_avm_address,
    output wire [0:0] out_unnamed_gaussian15_gaussian_avm_enable,
    output wire [0:0] out_unnamed_gaussian15_gaussian_avm_read,
    output wire [0:0] out_unnamed_gaussian15_gaussian_avm_write,
    output wire [31:0] out_unnamed_gaussian15_gaussian_avm_writedata,
    output wire [3:0] out_unnamed_gaussian15_gaussian_avm_byteenable,
    output wire [0:0] out_unnamed_gaussian15_gaussian_avm_burstcount,
    output wire [63:0] out_unnamed_gaussian16_gaussian_avm_address,
    output wire [0:0] out_unnamed_gaussian16_gaussian_avm_enable,
    output wire [0:0] out_unnamed_gaussian16_gaussian_avm_read,
    output wire [0:0] out_unnamed_gaussian16_gaussian_avm_write,
    output wire [63:0] out_unnamed_gaussian16_gaussian_avm_writedata,
    output wire [7:0] out_unnamed_gaussian16_gaussian_avm_byteenable,
    output wire [0:0] out_unnamed_gaussian16_gaussian_avm_burstcount,
    output wire [0:0] out_lsu_unnamed_gaussian16_o_active,
    output wire [0:0] out_c0_exi3186_0_tpl,
    output wire [0:0] out_c0_exi3186_1_tpl,
    output wire [0:0] out_c0_exi3186_2_tpl,
    output wire [0:0] out_c0_exi3186_3_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_gaussian1,
    input wire [0:0] in_c0_eni3179_0_tpl,
    input wire [0:0] in_c0_eni3179_1_tpl,
    input wire [31:0] in_c0_eni3179_2_tpl,
    input wire [0:0] in_c0_eni3179_3_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_gaussian_A_pmem_q;
    wire [1:0] c_i2_156_q;
    wire [31:0] c_i32_058_q;
    wire [31:0] c_i32_159_q;
    wire [5:0] c_i6_162_q;
    wire [5:0] c_i6_1860_q;
    wire [1:0] i_arrayidx623_gaussian17_vt_const_1_q;
    wire [63:0] i_arrayidx623_gaussian17_vt_join_q;
    wire [61:0] i_arrayidx623_gaussian17_vt_select_63_b;
    wire [1:0] i_cleanups_shl_gaussian5_vt_join_q;
    wire [0:0] i_cleanups_shl_gaussian5_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor_gaussian4_q;
    wire [6:0] i_fpga_indvars_iv_next21_gaussian32_a;
    wire [6:0] i_fpga_indvars_iv_next21_gaussian32_b;
    logic [6:0] i_fpga_indvars_iv_next21_gaussian32_o;
    wire [6:0] i_fpga_indvars_iv_next21_gaussian32_q;
    wire [63:0] i_idxprom59_gaussian14_vt_join_q;
    wire [31:0] i_idxprom59_gaussian14_vt_select_31_b;
    wire [63:0] i_idxprom61_gaussian16_vt_join_q;
    wire [31:0] i_idxprom61_gaussian16_vt_select_31_b;
    wire [32:0] i_inc68_gaussian22_a;
    wire [32:0] i_inc68_gaussian22_b;
    logic [32:0] i_inc68_gaussian22_o;
    wire [32:0] i_inc68_gaussian22_q;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024a20i32_a_r3826_gaussian19_out_dest_data_out_0_0;
    wire [31:0] i_llvm_fpga_mem_unnamed_gaussian15_gaussian18_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_gaussian15_gaussian18_out_unnamed_gaussian15_gaussian_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_gaussian15_gaussian18_out_unnamed_gaussian15_gaussian_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_gaussian15_gaussian18_out_unnamed_gaussian15_gaussian_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_gaussian15_gaussian18_out_unnamed_gaussian15_gaussian_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_gaussian15_gaussian18_out_unnamed_gaussian15_gaussian_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_gaussian15_gaussian18_out_unnamed_gaussian15_gaussian_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_gaussian15_gaussian18_out_unnamed_gaussian15_gaussian_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_unnamed_gaussian16_gaussian21_out_lsu_unnamed_gaussian16_o_active;
    wire [63:0] i_llvm_fpga_mem_unnamed_gaussian16_gaussian21_out_unnamed_gaussian16_gaussian_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_gaussian16_gaussian21_out_unnamed_gaussian16_gaussian_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_gaussian16_gaussian21_out_unnamed_gaussian16_gaussian_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_gaussian16_gaussian21_out_unnamed_gaussian16_gaussian_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_gaussian16_gaussian21_out_unnamed_gaussian16_gaussian_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_gaussian16_gaussian21_out_unnamed_gaussian16_gaussian_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_gaussian16_gaussian21_out_unnamed_gaussian16_gaussian_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_gaussian6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_gaussian6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_gaussian6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_gaussian6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_gaussian6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp3998_pop34_gaussian35_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp3998_pop34_gaussian35_out_feedback_stall_out_34;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups_pop33_gaussian2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop33_gaussian2_out_feedback_stall_out_33;
    wire [1:0] i_llvm_fpga_pop_i2_initerations_pop32_gaussian7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations_pop32_gaussian7_out_feedback_stall_out_32;
    wire [31:0] i_llvm_fpga_pop_i32_i49_031_pop1999_pop35_gaussian12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i49_031_pop1999_pop35_gaussian12_out_feedback_stall_out_35;
    wire [31:0] i_llvm_fpga_pop_i32_j54_030_pop31_gaussian15_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j54_030_pop31_gaussian15_out_feedback_stall_out_31;
    wire [5:0] i_llvm_fpga_pop_i6_fpga_indvars_iv20_pop30_gaussian24_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv20_pop30_gaussian24_out_feedback_stall_out_30;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_gaussian11_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_gaussian11_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notcmp3998_push34_gaussian36_out_feedback_out_34;
    wire [0:0] i_llvm_fpga_push_i1_notcmp3998_push34_gaussian36_out_feedback_valid_out_34;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_gaussian28_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_gaussian28_out_feedback_valid_out_3;
    wire [7:0] i_llvm_fpga_push_i2_cleanups_push33_gaussian31_out_feedback_out_33;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push33_gaussian31_out_feedback_valid_out_33;
    wire [7:0] i_llvm_fpga_push_i2_initerations_push32_gaussian9_out_feedback_out_32;
    wire [0:0] i_llvm_fpga_push_i2_initerations_push32_gaussian9_out_feedback_valid_out_32;
    wire [31:0] i_llvm_fpga_push_i32_i49_031_pop1999_push35_gaussian13_out_feedback_out_35;
    wire [0:0] i_llvm_fpga_push_i32_i49_031_pop1999_push35_gaussian13_out_feedback_valid_out_35;
    wire [31:0] i_llvm_fpga_push_i32_j54_030_push31_gaussian23_out_feedback_out_31;
    wire [0:0] i_llvm_fpga_push_i32_j54_030_push31_gaussian23_out_feedback_valid_out_31;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv20_push30_gaussian33_out_feedback_out_30;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv20_push30_gaussian33_out_feedback_valid_out_30;
    wire [0:0] i_masked_gaussian34_qi;
    reg [0:0] i_masked_gaussian34_q;
    wire [0:0] i_next_cleanups_gaussian30_s;
    reg [1:0] i_next_cleanups_gaussian30_q;
    wire [1:0] i_next_initerations_gaussian8_vt_join_q;
    wire [0:0] i_next_initerations_gaussian8_vt_select_0_b;
    wire [0:0] i_notcmp_gaussian27_q;
    wire [0:0] i_or_gaussian29_q;
    wire [5:0] bgTrunc_i_fpga_indvars_iv_next21_gaussian32_sel_x_b;
    wire [31:0] bgTrunc_i_inc68_gaussian22_sel_x_b;
    wire [11:0] i_arrayidx623_gaussian0_add_x_a;
    wire [11:0] i_arrayidx623_gaussian0_add_x_b;
    logic [11:0] i_arrayidx623_gaussian0_add_x_o;
    wire [11:0] i_arrayidx623_gaussian0_add_x_q;
    wire [63:0] i_arrayidx623_gaussian0_append_upper_bits_x_q;
    wire [8:0] i_arrayidx623_gaussian0_narrow_x_b;
    wire [10:0] i_arrayidx623_gaussian0_shift_join_x_q;
    wire [11:0] i_arrayidx623_gaussian0_dupName_0_add_x_a;
    wire [11:0] i_arrayidx623_gaussian0_dupName_0_add_x_b;
    logic [11:0] i_arrayidx623_gaussian0_dupName_0_add_x_o;
    wire [11:0] i_arrayidx623_gaussian0_dupName_0_add_x_q;
    wire [21:0] i_arrayidx623_gaussian0_mult_extender_x_q;
    wire [3:0] i_arrayidx623_gaussian0_mult_multconst_x_q;
    wire [10:0] i_arrayidx623_gaussian0_dupName_0_trunc_sel_x_b;
    wire [10:0] i_arrayidx623_gaussian0_dupName_1_trunc_sel_x_b;
    wire [10:0] i_arrayidx623_gaussian0_dupName_2_trunc_sel_x_b;
    wire [10:0] i_arrayidx623_gaussian0_dupName_3_trunc_sel_x_b;
    wire [10:0] i_arrayidx623_gaussian0_dupName_5_trunc_sel_x_b;
    wire [64:0] i_arrayidx66_gaussian0_add_x_a;
    wire [64:0] i_arrayidx66_gaussian0_add_x_b;
    logic [64:0] i_arrayidx66_gaussian0_add_x_o;
    wire [64:0] i_arrayidx66_gaussian0_add_x_q;
    wire [61:0] i_arrayidx66_gaussian0_narrow_x_b;
    wire [63:0] i_arrayidx66_gaussian0_shift_join_x_q;
    wire [64:0] i_arrayidx66_gaussian0_dupName_0_add_x_a;
    wire [64:0] i_arrayidx66_gaussian0_dupName_0_add_x_b;
    logic [64:0] i_arrayidx66_gaussian0_dupName_0_add_x_o;
    wire [64:0] i_arrayidx66_gaussian0_dupName_0_add_x_q;
    wire [127:0] i_arrayidx66_gaussian0_mult_extender_x_q;
    wire [56:0] i_arrayidx66_gaussian0_mult_multconst_x_q;
    wire [63:0] i_arrayidx66_gaussian0_trunc_sel_x_b;
    wire [63:0] i_arrayidx66_gaussian0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_arrayidx66_gaussian0_dupName_2_trunc_sel_x_b;
    wire [0:0] i_first_cleanup_gaussian3_sel_x_b;
    wire [63:0] i_idxprom59_gaussian14_sel_x_b;
    wire [63:0] i_idxprom61_gaussian16_sel_x_b;
    wire [0:0] i_last_initeration_gaussian10_sel_x_b;
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
    wire [0:0] i_exitcond22_gaussian25_cmp_nsign_q;
    wire [11:0] addsumAHighB_uid176_i_arrayidx623_gaussian0_mult_x_a;
    wire [11:0] addsumAHighB_uid176_i_arrayidx623_gaussian0_mult_x_b;
    logic [11:0] addsumAHighB_uid176_i_arrayidx623_gaussian0_mult_x_o;
    wire [11:0] addsumAHighB_uid176_i_arrayidx623_gaussian0_mult_x_q;
    wire [13:0] add_uid177_i_arrayidx623_gaussian0_mult_x_q;
    wire [17:0] sR_mergedSignalTM_uid182_i_arrayidx623_gaussian0_mult_x_q;
    wire [9:0] i_arrayidx66_gaussian0_mult_x_bs1_b;
    wire [53:0] i_arrayidx66_gaussian0_mult_x_bs4_in;
    wire [17:0] i_arrayidx66_gaussian0_mult_x_bs4_b;
    wire [35:0] i_arrayidx66_gaussian0_mult_x_bs7_in;
    wire [17:0] i_arrayidx66_gaussian0_mult_x_bs7_b;
    wire [17:0] i_arrayidx66_gaussian0_mult_x_bs10_in;
    wire [17:0] i_arrayidx66_gaussian0_mult_x_bs10_b;
    wire [35:0] i_arrayidx66_gaussian0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx66_gaussian0_mult_x_sums_align_0_qint;
    wire [60:0] i_arrayidx66_gaussian0_mult_x_sums_join_1_q;
    wire [42:0] i_arrayidx66_gaussian0_mult_x_sums_align_2_q;
    wire [42:0] i_arrayidx66_gaussian0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx66_gaussian0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx66_gaussian0_mult_x_sums_align_3_qint;
    wire [70:0] i_arrayidx66_gaussian0_mult_x_sums_join_4_q;
    wire [71:0] i_arrayidx66_gaussian0_mult_x_sums_result_add_0_0_a;
    wire [71:0] i_arrayidx66_gaussian0_mult_x_sums_result_add_0_0_b;
    logic [71:0] i_arrayidx66_gaussian0_mult_x_sums_result_add_0_0_o;
    wire [71:0] i_arrayidx66_gaussian0_mult_x_sums_result_add_0_0_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid234_i_cleanups_shl_gaussian0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid234_i_cleanups_shl_gaussian0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid235_i_cleanups_shl_gaussian0_shift_x_q;
    wire [0:0] leftShiftStage0_uid237_i_cleanups_shl_gaussian0_shift_x_s;
    reg [1:0] leftShiftStage0_uid237_i_cleanups_shl_gaussian0_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid241_i_next_initerations_gaussian0_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid243_i_next_initerations_gaussian0_shift_x_q;
    wire [0:0] rightShiftStage0_uid245_i_next_initerations_gaussian0_shift_x_s;
    reg [1:0] rightShiftStage0_uid245_i_next_initerations_gaussian0_shift_x_q;
    wire [10:0] addsumAHighB_uid256_i_arrayidx66_gaussian0_mult_x_im0_a;
    wire [10:0] addsumAHighB_uid256_i_arrayidx66_gaussian0_mult_x_im0_b;
    logic [10:0] addsumAHighB_uid256_i_arrayidx66_gaussian0_mult_x_im0_o;
    wire [10:0] addsumAHighB_uid256_i_arrayidx66_gaussian0_mult_x_im0_q;
    wire [12:0] add_uid257_i_arrayidx66_gaussian0_mult_x_im0_q;
    wire [16:0] sR_mergedSignalTM_uid262_i_arrayidx66_gaussian0_mult_x_im0_q;
    wire [18:0] addsumAHighB_uid302_i_arrayidx66_gaussian0_mult_x_im3_a;
    wire [18:0] addsumAHighB_uid302_i_arrayidx66_gaussian0_mult_x_im3_b;
    logic [18:0] addsumAHighB_uid302_i_arrayidx66_gaussian0_mult_x_im3_o;
    wire [18:0] addsumAHighB_uid302_i_arrayidx66_gaussian0_mult_x_im3_q;
    wire [20:0] add_uid303_i_arrayidx66_gaussian0_mult_x_im3_q;
    wire [24:0] sR_mergedSignalTM_uid308_i_arrayidx66_gaussian0_mult_x_im3_q;
    wire [18:0] addsumAHighB_uid360_i_arrayidx66_gaussian0_mult_x_im6_a;
    wire [18:0] addsumAHighB_uid360_i_arrayidx66_gaussian0_mult_x_im6_b;
    logic [18:0] addsumAHighB_uid360_i_arrayidx66_gaussian0_mult_x_im6_o;
    wire [18:0] addsumAHighB_uid360_i_arrayidx66_gaussian0_mult_x_im6_q;
    wire [20:0] add_uid361_i_arrayidx66_gaussian0_mult_x_im6_q;
    wire [24:0] sR_mergedSignalTM_uid366_i_arrayidx66_gaussian0_mult_x_im6_q;
    wire [18:0] addsumAHighB_uid418_i_arrayidx66_gaussian0_mult_x_im9_a;
    wire [18:0] addsumAHighB_uid418_i_arrayidx66_gaussian0_mult_x_im9_b;
    logic [18:0] addsumAHighB_uid418_i_arrayidx66_gaussian0_mult_x_im9_o;
    wire [18:0] addsumAHighB_uid418_i_arrayidx66_gaussian0_mult_x_im9_q;
    wire [20:0] add_uid419_i_arrayidx66_gaussian0_mult_x_im9_q;
    wire [24:0] sR_mergedSignalTM_uid424_i_arrayidx66_gaussian0_mult_x_im9_q;
    wire [52:0] i_arrayidx623_gaussian0_upper_bits_x_merged_bit_select_b;
    wire [10:0] i_arrayidx623_gaussian0_upper_bits_x_merged_bit_select_c;
    wire [1:0] lowRangeB_uid174_i_arrayidx623_gaussian0_mult_x_merged_bit_select_b;
    wire [8:0] lowRangeB_uid174_i_arrayidx623_gaussian0_mult_x_merged_bit_select_c;
    wire [1:0] lowRangeB_uid254_i_arrayidx66_gaussian0_mult_x_im0_merged_bit_select_b;
    wire [7:0] lowRangeB_uid254_i_arrayidx66_gaussian0_mult_x_im0_merged_bit_select_c;
    wire [1:0] lowRangeB_uid300_i_arrayidx66_gaussian0_mult_x_im3_merged_bit_select_b;
    wire [15:0] lowRangeB_uid300_i_arrayidx66_gaussian0_mult_x_im3_merged_bit_select_c;
    wire [1:0] lowRangeB_uid358_i_arrayidx66_gaussian0_mult_x_im6_merged_bit_select_b;
    wire [15:0] lowRangeB_uid358_i_arrayidx66_gaussian0_mult_x_im6_merged_bit_select_c;
    wire [1:0] lowRangeB_uid416_i_arrayidx66_gaussian0_mult_x_im9_merged_bit_select_b;
    wire [15:0] lowRangeB_uid416_i_arrayidx66_gaussian0_mult_x_im9_merged_bit_select_c;
    reg [0:0] redist0_sync_together82_aunroll_x_in_c0_eni3179_1_tpl_1_q;
    reg [0:0] redist1_sync_together82_aunroll_x_in_c0_eni3179_1_tpl_3_q;
    reg [0:0] redist1_sync_together82_aunroll_x_in_c0_eni3179_1_tpl_3_delay_0;
    reg [31:0] redist2_sync_together82_aunroll_x_in_c0_eni3179_2_tpl_1_q;
    reg [0:0] redist3_sync_together82_aunroll_x_in_c0_eni3179_3_tpl_3_q;
    reg [0:0] redist3_sync_together82_aunroll_x_in_c0_eni3179_3_tpl_3_delay_0;
    reg [0:0] redist3_sync_together82_aunroll_x_in_c0_eni3179_3_tpl_3_delay_1;
    reg [0:0] redist4_sync_together82_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist5_sync_together82_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist6_sync_together82_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist7_sync_together82_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist8_sync_together82_aunroll_x_in_i_valid_7_q;
    reg [0:0] redist8_sync_together82_aunroll_x_in_i_valid_7_delay_0;
    reg [0:0] redist8_sync_together82_aunroll_x_in_i_valid_7_delay_1;
    reg [63:0] redist9_i_arrayidx66_gaussian0_dupName_2_trunc_sel_x_b_2_q;
    reg [63:0] redist9_i_arrayidx66_gaussian0_dupName_2_trunc_sel_x_b_2_delay_0;
    reg [63:0] redist10_i_arrayidx66_gaussian0_trunc_sel_x_b_1_q;
    reg [10:0] redist11_i_arrayidx623_gaussian0_dupName_1_trunc_sel_x_b_1_q;
    reg [0:0] redist12_i_masked_gaussian34_q_7_q;
    reg [31:0] redist13_i_llvm_fpga_pop_i32_i49_031_pop1999_pop35_gaussian12_out_data_out_1_q;
    reg [0:0] redist14_i_llvm_fpga_pop_i1_notcmp3998_pop34_gaussian35_out_data_out_1_q;
    reg [0:0] redist15_i_llvm_fpga_pop_i1_notcmp3998_pop34_gaussian35_out_data_out_5_q;
    reg [0:0] redist15_i_llvm_fpga_pop_i1_notcmp3998_pop34_gaussian35_out_data_out_5_delay_0;
    reg [0:0] redist15_i_llvm_fpga_pop_i1_notcmp3998_pop34_gaussian35_out_data_out_5_delay_1;
    reg [0:0] redist15_i_llvm_fpga_pop_i1_notcmp3998_pop34_gaussian35_out_data_out_5_delay_2;
    reg [0:0] redist16_i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out_1_q;
    reg [0:0] redist17_i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out_3_q;
    reg [0:0] redist17_i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out_3_delay_0;
    reg [0:0] redist18_i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out_4_q;
    reg [0:0] redist19_i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out_8_q;
    reg [0:0] redist19_i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out_8_delay_0;
    reg [0:0] redist19_i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out_8_delay_1;
    reg [0:0] redist19_i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out_8_delay_2;
    reg [0:0] redist20_i_first_cleanup_xor_gaussian4_q_2_q;
    reg [0:0] redist20_i_first_cleanup_xor_gaussian4_q_2_delay_0;
    reg [0:0] redist21_i_first_cleanup_xor_gaussian4_q_4_q;
    reg [0:0] redist21_i_first_cleanup_xor_gaussian4_q_4_delay_0;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist4_sync_together82_aunroll_x_in_i_valid_1(DELAY,476)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together82_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist4_sync_together82_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist16_i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out_1(DELAY,488)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist16_i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid234_i_cleanups_shl_gaussian0_shift_x(BITSELECT,233)@2
    assign leftShiftStage0Idx1Rng1_uid234_i_cleanups_shl_gaussian0_shift_x_in = i_llvm_fpga_pop_i2_cleanups_pop33_gaussian2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid234_i_cleanups_shl_gaussian0_shift_x_b = leftShiftStage0Idx1Rng1_uid234_i_cleanups_shl_gaussian0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid235_i_cleanups_shl_gaussian0_shift_x(BITJOIN,234)@2
    assign leftShiftStage0Idx1_uid235_i_cleanups_shl_gaussian0_shift_x_q = {leftShiftStage0Idx1Rng1_uid234_i_cleanups_shl_gaussian0_shift_x_b, GND_q};

    // leftShiftStage0_uid237_i_cleanups_shl_gaussian0_shift_x(MUX,236)@2
    assign leftShiftStage0_uid237_i_cleanups_shl_gaussian0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid237_i_cleanups_shl_gaussian0_shift_x_s or i_llvm_fpga_pop_i2_cleanups_pop33_gaussian2_out_data_out or leftShiftStage0Idx1_uid235_i_cleanups_shl_gaussian0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid237_i_cleanups_shl_gaussian0_shift_x_s)
            1'b0 : leftShiftStage0_uid237_i_cleanups_shl_gaussian0_shift_x_q = i_llvm_fpga_pop_i2_cleanups_pop33_gaussian2_out_data_out;
            1'b1 : leftShiftStage0_uid237_i_cleanups_shl_gaussian0_shift_x_q = leftShiftStage0Idx1_uid235_i_cleanups_shl_gaussian0_shift_x_q;
            default : leftShiftStage0_uid237_i_cleanups_shl_gaussian0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl_gaussian5_vt_select_1(BITSELECT,36)@2
    assign i_cleanups_shl_gaussian5_vt_select_1_b = leftShiftStage0_uid237_i_cleanups_shl_gaussian0_shift_x_q[1:1];

    // i_cleanups_shl_gaussian5_vt_join(BITJOIN,35)@2
    assign i_cleanups_shl_gaussian5_vt_join_q = {i_cleanups_shl_gaussian5_vt_select_1_b, GND_q};

    // i_first_cleanup_xor_gaussian4(LOGICAL,39)@2
    assign i_first_cleanup_xor_gaussian4_q = i_first_cleanup_gaussian3_sel_x_b ^ VCC_q;

    // i_notcmp_gaussian27(LOGICAL,74)@2
    assign i_notcmp_gaussian27_q = i_exitcond22_gaussian25_cmp_nsign_q ^ VCC_q;

    // i_or_gaussian29(LOGICAL,75)@2
    assign i_or_gaussian29_q = i_notcmp_gaussian27_q | i_first_cleanup_xor_gaussian4_q;

    // i_next_cleanups_gaussian30(MUX,70)@2
    assign i_next_cleanups_gaussian30_s = i_or_gaussian29_q;
    always @(i_next_cleanups_gaussian30_s or i_llvm_fpga_pop_i2_cleanups_pop33_gaussian2_out_data_out or i_cleanups_shl_gaussian5_vt_join_q)
    begin
        unique case (i_next_cleanups_gaussian30_s)
            1'b0 : i_next_cleanups_gaussian30_q = i_llvm_fpga_pop_i2_cleanups_pop33_gaussian2_out_data_out;
            1'b1 : i_next_cleanups_gaussian30_q = i_cleanups_shl_gaussian5_vt_join_q;
            default : i_next_cleanups_gaussian30_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups_push33_gaussian31(BLACKBOX,64)@2
    // out out_feedback_out_33@20000000
    // out out_feedback_valid_out_33@20000000
    gaussian_i_llvm_fpga_push_i2_cleanups_push33_0 thei_llvm_fpga_push_i2_cleanups_push33_gaussian31 (
        .in_data_in(i_next_cleanups_gaussian30_q),
        .in_feedback_stall_in_33(i_llvm_fpga_pop_i2_cleanups_pop33_gaussian2_out_feedback_stall_out_33),
        .in_keep_going(redist16_i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist4_sync_together82_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_33(i_llvm_fpga_push_i2_cleanups_push33_gaussian31_out_feedback_out_33),
        .out_feedback_valid_out_33(i_llvm_fpga_push_i2_cleanups_push33_gaussian31_out_feedback_valid_out_33),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together82_aunroll_x_in_c0_eni3179_1_tpl_1(DELAY,472)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together82_aunroll_x_in_c0_eni3179_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together82_aunroll_x_in_c0_eni3179_1_tpl_1_q <= $unsigned(in_c0_eni3179_1_tpl);
        end
    end

    // c_i2_156(CONSTANT,24)
    assign c_i2_156_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups_pop33_gaussian2(BLACKBOX,56)@2
    // out out_feedback_stall_out_33@20000000
    gaussian_i_llvm_fpga_pop_i2_cleanups_pop33_0 thei_llvm_fpga_pop_i2_cleanups_pop33_gaussian2 (
        .in_data_in(c_i2_156_q),
        .in_dir(redist0_sync_together82_aunroll_x_in_c0_eni3179_1_tpl_1_q),
        .in_feedback_in_33(i_llvm_fpga_push_i2_cleanups_push33_gaussian31_out_feedback_out_33),
        .in_feedback_valid_in_33(i_llvm_fpga_push_i2_cleanups_push33_gaussian31_out_feedback_valid_out_33),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist4_sync_together82_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups_pop33_gaussian2_out_data_out),
        .out_feedback_stall_out_33(i_llvm_fpga_pop_i2_cleanups_pop33_gaussian2_out_feedback_stall_out_33),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_gaussian3_sel_x(BITSELECT,133)@2
    assign i_first_cleanup_gaussian3_sel_x_b = i_llvm_fpga_pop_i2_cleanups_pop33_gaussian2_out_data_out[0:0];

    // c_i6_162(CONSTANT,27)
    assign c_i6_162_q = $unsigned(6'b111111);

    // i_fpga_indvars_iv_next21_gaussian32(ADD,40)@2
    assign i_fpga_indvars_iv_next21_gaussian32_a = {1'b0, i_llvm_fpga_pop_i6_fpga_indvars_iv20_pop30_gaussian24_out_data_out};
    assign i_fpga_indvars_iv_next21_gaussian32_b = {1'b0, c_i6_162_q};
    assign i_fpga_indvars_iv_next21_gaussian32_o = $unsigned(i_fpga_indvars_iv_next21_gaussian32_a) + $unsigned(i_fpga_indvars_iv_next21_gaussian32_b);
    assign i_fpga_indvars_iv_next21_gaussian32_q = i_fpga_indvars_iv_next21_gaussian32_o[6:0];

    // bgTrunc_i_fpga_indvars_iv_next21_gaussian32_sel_x(BITSELECT,82)@2
    assign bgTrunc_i_fpga_indvars_iv_next21_gaussian32_sel_x_b = i_fpga_indvars_iv_next21_gaussian32_q[5:0];

    // i_llvm_fpga_push_i6_fpga_indvars_iv20_push30_gaussian33(BLACKBOX,68)@2
    // out out_feedback_out_30@20000000
    // out out_feedback_valid_out_30@20000000
    gaussian_i_llvm_fpga_push_i6_fpga_indvars_iv20_push30_0 thei_llvm_fpga_push_i6_fpga_indvars_iv20_push30_gaussian33 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next21_gaussian32_sel_x_b),
        .in_feedback_stall_in_30(i_llvm_fpga_pop_i6_fpga_indvars_iv20_pop30_gaussian24_out_feedback_stall_out_30),
        .in_keep_going(redist16_i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist4_sync_together82_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_30(i_llvm_fpga_push_i6_fpga_indvars_iv20_push30_gaussian33_out_feedback_out_30),
        .out_feedback_valid_out_30(i_llvm_fpga_push_i6_fpga_indvars_iv20_push30_gaussian33_out_feedback_valid_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i6_1860(CONSTANT,28)
    assign c_i6_1860_q = $unsigned(6'b010010);

    // i_llvm_fpga_pop_i6_fpga_indvars_iv20_pop30_gaussian24(BLACKBOX,60)@2
    // out out_feedback_stall_out_30@20000000
    gaussian_i_llvm_fpga_pop_i6_fpga_indvars_iv20_pop30_0 thei_llvm_fpga_pop_i6_fpga_indvars_iv20_pop30_gaussian24 (
        .in_data_in(c_i6_1860_q),
        .in_dir(redist0_sync_together82_aunroll_x_in_c0_eni3179_1_tpl_1_q),
        .in_feedback_in_30(i_llvm_fpga_push_i6_fpga_indvars_iv20_push30_gaussian33_out_feedback_out_30),
        .in_feedback_valid_in_30(i_llvm_fpga_push_i6_fpga_indvars_iv20_push30_gaussian33_out_feedback_valid_out_30),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist4_sync_together82_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i6_fpga_indvars_iv20_pop30_gaussian24_out_data_out),
        .out_feedback_stall_out_30(i_llvm_fpga_pop_i6_fpga_indvars_iv20_pop30_gaussian24_out_feedback_stall_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond22_gaussian25_cmp_nsign(LOGICAL,165)@2
    assign i_exitcond22_gaussian25_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i6_fpga_indvars_iv20_pop30_gaussian24_out_data_out[5:5]));

    // i_llvm_fpga_push_i1_notexitcond_gaussian28(BLACKBOX,63)@2
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    gaussian_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_gaussian28 (
        .in_data_in(i_exitcond22_gaussian25_cmp_nsign_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_gaussian6_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_gaussian3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist4_sync_together82_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_gaussian28_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_gaussian28_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,146)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid241_i_next_initerations_gaussian0_shift_x(BITSELECT,240)@2
    assign rightShiftStage0Idx1Rng1_uid241_i_next_initerations_gaussian0_shift_x_b = i_llvm_fpga_pop_i2_initerations_pop32_gaussian7_out_data_out[1:1];

    // rightShiftStage0Idx1_uid243_i_next_initerations_gaussian0_shift_x(BITJOIN,242)@2
    assign rightShiftStage0Idx1_uid243_i_next_initerations_gaussian0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid241_i_next_initerations_gaussian0_shift_x_b};

    // valid_fanout_reg1(REG,144)@1 + 1
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

    // valid_fanout_reg2(REG,145)@1 + 1
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

    // i_llvm_fpga_push_i2_initerations_push32_gaussian9(BLACKBOX,65)@2
    // out out_feedback_out_32@20000000
    // out out_feedback_valid_out_32@20000000
    gaussian_i_llvm_fpga_push_i2_initerations_push32_0 thei_llvm_fpga_push_i2_initerations_push32_gaussian9 (
        .in_data_in(i_next_initerations_gaussian8_vt_join_q),
        .in_feedback_stall_in_32(i_llvm_fpga_pop_i2_initerations_pop32_gaussian7_out_feedback_stall_out_32),
        .in_keep_going(redist16_i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_32(i_llvm_fpga_push_i2_initerations_push32_gaussian9_out_feedback_out_32),
        .out_feedback_valid_out_32(i_llvm_fpga_push_i2_initerations_push32_gaussian9_out_feedback_valid_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations_pop32_gaussian7(BLACKBOX,57)@2
    // out out_feedback_stall_out_32@20000000
    gaussian_i_llvm_fpga_pop_i2_initerations_pop32_0 thei_llvm_fpga_pop_i2_initerations_pop32_gaussian7 (
        .in_data_in(c_i2_156_q),
        .in_dir(redist0_sync_together82_aunroll_x_in_c0_eni3179_1_tpl_1_q),
        .in_feedback_in_32(i_llvm_fpga_push_i2_initerations_push32_gaussian9_out_feedback_out_32),
        .in_feedback_valid_in_32(i_llvm_fpga_push_i2_initerations_push32_gaussian9_out_feedback_valid_out_32),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations_pop32_gaussian7_out_data_out),
        .out_feedback_stall_out_32(i_llvm_fpga_pop_i2_initerations_pop32_gaussian7_out_feedback_stall_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid245_i_next_initerations_gaussian0_shift_x(MUX,244)@2
    assign rightShiftStage0_uid245_i_next_initerations_gaussian0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid245_i_next_initerations_gaussian0_shift_x_s or i_llvm_fpga_pop_i2_initerations_pop32_gaussian7_out_data_out or rightShiftStage0Idx1_uid243_i_next_initerations_gaussian0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid245_i_next_initerations_gaussian0_shift_x_s)
            1'b0 : rightShiftStage0_uid245_i_next_initerations_gaussian0_shift_x_q = i_llvm_fpga_pop_i2_initerations_pop32_gaussian7_out_data_out;
            1'b1 : rightShiftStage0_uid245_i_next_initerations_gaussian0_shift_x_q = rightShiftStage0Idx1_uid243_i_next_initerations_gaussian0_shift_x_q;
            default : rightShiftStage0_uid245_i_next_initerations_gaussian0_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations_gaussian8_vt_select_0(BITSELECT,73)@2
    assign i_next_initerations_gaussian8_vt_select_0_b = rightShiftStage0_uid245_i_next_initerations_gaussian0_shift_x_q[0:0];

    // i_next_initerations_gaussian8_vt_join(BITJOIN,72)@2
    assign i_next_initerations_gaussian8_vt_join_q = {GND_q, i_next_initerations_gaussian8_vt_select_0_b};

    // i_last_initeration_gaussian10_sel_x(BITSELECT,136)@2
    assign i_last_initeration_gaussian10_sel_x_b = i_next_initerations_gaussian8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_gaussian11(BLACKBOX,61)@2
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    gaussian_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_gaussian11 (
        .in_data_in(i_last_initeration_gaussian10_sel_x_b),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_gaussian6_out_initeration_stall_out),
        .in_keep_going(redist16_i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_gaussian11_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_gaussian11_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_gaussian6(BLACKBOX,54)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    gaussian_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_gaussian6 (
        .in_data_in(in_c0_eni3179_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_gaussian11_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_gaussian11_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_gaussian28_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_gaussian28_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_gaussian6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_gaussian6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_gaussian6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_gaussian6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_gaussian6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,30)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_gaussian6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_gaussian6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_gaussian6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_gaussian6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,78)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_gaussian6_out_pipeline_valid_out;

    // redist5_sync_together82_aunroll_x_in_i_valid_2(DELAY,477)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together82_aunroll_x_in_i_valid_2_q <= '0;
        end
        else
        begin
            redist5_sync_together82_aunroll_x_in_i_valid_2_q <= $unsigned(redist4_sync_together82_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg7(REG,150)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist5_sync_together82_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist20_i_first_cleanup_xor_gaussian4_q_2(DELAY,492)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_first_cleanup_xor_gaussian4_q_2_delay_0 <= '0;
            redist20_i_first_cleanup_xor_gaussian4_q_2_q <= '0;
        end
        else
        begin
            redist20_i_first_cleanup_xor_gaussian4_q_2_delay_0 <= $unsigned(i_first_cleanup_xor_gaussian4_q);
            redist20_i_first_cleanup_xor_gaussian4_q_2_q <= redist20_i_first_cleanup_xor_gaussian4_q_2_delay_0;
        end
    end

    // c_gaussian_A_pmem(CONSTANT,4)
    assign c_gaussian_A_pmem_q = $unsigned(64'b0100000001000001000000000000000000000000000000000000000000000000);

    // i_arrayidx623_gaussian0_upper_bits_x_merged_bit_select(BITSELECT,466)@4
    assign i_arrayidx623_gaussian0_upper_bits_x_merged_bit_select_b = c_gaussian_A_pmem_q[63:11];
    assign i_arrayidx623_gaussian0_upper_bits_x_merged_bit_select_c = c_gaussian_A_pmem_q[10:0];

    // c_i32_058(CONSTANT,25)
    assign c_i32_058_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg6(REG,149)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist5_sync_together82_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg10(REG,153)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist5_sync_together82_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist17_i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out_3(DELAY,489)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out_3_delay_0 <= '0;
            redist17_i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out_3_q <= '0;
        end
        else
        begin
            redist17_i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out_3_delay_0 <= $unsigned(redist16_i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out_1_q);
            redist17_i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out_3_q <= redist17_i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out_3_delay_0;
        end
    end

    // c_i32_159(CONSTANT,26)
    assign c_i32_159_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc68_gaussian22(ADD,49)@4
    assign i_inc68_gaussian22_a = {1'b0, i_llvm_fpga_pop_i32_j54_030_pop31_gaussian15_out_data_out};
    assign i_inc68_gaussian22_b = {1'b0, c_i32_159_q};
    assign i_inc68_gaussian22_o = $unsigned(i_inc68_gaussian22_a) + $unsigned(i_inc68_gaussian22_b);
    assign i_inc68_gaussian22_q = i_inc68_gaussian22_o[32:0];

    // bgTrunc_i_inc68_gaussian22_sel_x(BITSELECT,83)@4
    assign bgTrunc_i_inc68_gaussian22_sel_x_b = i_inc68_gaussian22_q[31:0];

    // i_llvm_fpga_push_i32_j54_030_push31_gaussian23(BLACKBOX,67)@4
    // out out_feedback_out_31@20000000
    // out out_feedback_valid_out_31@20000000
    gaussian_i_llvm_fpga_push_i32_j54_030_push31_0 thei_llvm_fpga_push_i32_j54_030_push31_gaussian23 (
        .in_data_in(bgTrunc_i_inc68_gaussian22_sel_x_b),
        .in_feedback_stall_in_31(i_llvm_fpga_pop_i32_j54_030_pop31_gaussian15_out_feedback_stall_out_31),
        .in_keep_going(redist17_i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out_3_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_31(i_llvm_fpga_push_i32_j54_030_push31_gaussian23_out_feedback_out_31),
        .out_feedback_valid_out_31(i_llvm_fpga_push_i32_j54_030_push31_gaussian23_out_feedback_valid_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together82_aunroll_x_in_c0_eni3179_1_tpl_3(DELAY,473)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together82_aunroll_x_in_c0_eni3179_1_tpl_3_delay_0 <= '0;
            redist1_sync_together82_aunroll_x_in_c0_eni3179_1_tpl_3_q <= '0;
        end
        else
        begin
            redist1_sync_together82_aunroll_x_in_c0_eni3179_1_tpl_3_delay_0 <= $unsigned(redist0_sync_together82_aunroll_x_in_c0_eni3179_1_tpl_1_q);
            redist1_sync_together82_aunroll_x_in_c0_eni3179_1_tpl_3_q <= redist1_sync_together82_aunroll_x_in_c0_eni3179_1_tpl_3_delay_0;
        end
    end

    // i_llvm_fpga_pop_i32_j54_030_pop31_gaussian15(BLACKBOX,59)@4
    // out out_feedback_stall_out_31@20000000
    gaussian_i_llvm_fpga_pop_i32_j54_030_pop31_0 thei_llvm_fpga_pop_i32_j54_030_pop31_gaussian15 (
        .in_data_in(c_i32_058_q),
        .in_dir(redist1_sync_together82_aunroll_x_in_c0_eni3179_1_tpl_3_q),
        .in_feedback_in_31(i_llvm_fpga_push_i32_j54_030_push31_gaussian23_out_feedback_out_31),
        .in_feedback_valid_in_31(i_llvm_fpga_push_i32_j54_030_push31_gaussian23_out_feedback_valid_out_31),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(i_llvm_fpga_pop_i32_j54_030_pop31_gaussian15_out_data_out),
        .out_feedback_stall_out_31(i_llvm_fpga_pop_i32_j54_030_pop31_gaussian15_out_feedback_stall_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom61_gaussian16_sel_x(BITSELECT,135)@4
    assign i_idxprom61_gaussian16_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_j54_030_pop31_gaussian15_out_data_out[31:0]};

    // i_idxprom61_gaussian16_vt_select_31(BITSELECT,48)@4
    assign i_idxprom61_gaussian16_vt_select_31_b = i_idxprom61_gaussian16_sel_x_b[31:0];

    // i_idxprom61_gaussian16_vt_join(BITJOIN,47)@4
    assign i_idxprom61_gaussian16_vt_join_q = {c_i32_058_q, i_idxprom61_gaussian16_vt_select_31_b};

    // i_arrayidx623_gaussian0_dupName_3_trunc_sel_x(BITSELECT,111)@4
    assign i_arrayidx623_gaussian0_dupName_3_trunc_sel_x_b = i_idxprom61_gaussian16_vt_join_q[10:0];

    // i_arrayidx623_gaussian0_narrow_x(BITSELECT,94)@4
    assign i_arrayidx623_gaussian0_narrow_x_b = i_arrayidx623_gaussian0_dupName_3_trunc_sel_x_b[8:0];

    // i_arrayidx623_gaussian0_shift_join_x(BITJOIN,95)@4
    assign i_arrayidx623_gaussian0_shift_join_x_q = {i_arrayidx623_gaussian0_narrow_x_b, i_arrayidx623_gaussian17_vt_const_1_q};

    // i_arrayidx623_gaussian0_mult_multconst_x(CONSTANT,106)
    assign i_arrayidx623_gaussian0_mult_multconst_x_q = $unsigned(4'b0000);

    // valid_fanout_reg4(REG,147)@1 + 1
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

    // valid_fanout_reg5(REG,148)@1 + 1
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

    // i_llvm_fpga_push_i32_i49_031_pop1999_push35_gaussian13(BLACKBOX,66)@2
    // out out_feedback_out_35@20000000
    // out out_feedback_valid_out_35@20000000
    gaussian_i_llvm_fpga_push_i32_i49_031_pop1999_push35_0 thei_llvm_fpga_push_i32_i49_031_pop1999_push35_gaussian13 (
        .in_data_in(i_llvm_fpga_pop_i32_i49_031_pop1999_pop35_gaussian12_out_data_out),
        .in_feedback_stall_in_35(i_llvm_fpga_pop_i32_i49_031_pop1999_pop35_gaussian12_out_feedback_stall_out_35),
        .in_keep_going(redist16_i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_35(i_llvm_fpga_push_i32_i49_031_pop1999_push35_gaussian13_out_feedback_out_35),
        .out_feedback_valid_out_35(i_llvm_fpga_push_i32_i49_031_pop1999_push35_gaussian13_out_feedback_valid_out_35),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together82_aunroll_x_in_c0_eni3179_2_tpl_1(DELAY,474)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together82_aunroll_x_in_c0_eni3179_2_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together82_aunroll_x_in_c0_eni3179_2_tpl_1_q <= $unsigned(in_c0_eni3179_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_i49_031_pop1999_pop35_gaussian12(BLACKBOX,58)@2
    // out out_feedback_stall_out_35@20000000
    gaussian_i_llvm_fpga_pop_i32_i49_031_pop1999_pop35_0 thei_llvm_fpga_pop_i32_i49_031_pop1999_pop35_gaussian12 (
        .in_data_in(redist2_sync_together82_aunroll_x_in_c0_eni3179_2_tpl_1_q),
        .in_dir(redist0_sync_together82_aunroll_x_in_c0_eni3179_1_tpl_1_q),
        .in_feedback_in_35(i_llvm_fpga_push_i32_i49_031_pop1999_push35_gaussian13_out_feedback_out_35),
        .in_feedback_valid_in_35(i_llvm_fpga_push_i32_i49_031_pop1999_push35_gaussian13_out_feedback_valid_out_35),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_i49_031_pop1999_pop35_gaussian12_out_data_out),
        .out_feedback_stall_out_35(i_llvm_fpga_pop_i32_i49_031_pop1999_pop35_gaussian12_out_feedback_stall_out_35),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist13_i_llvm_fpga_pop_i32_i49_031_pop1999_pop35_gaussian12_out_data_out_1(DELAY,485)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_llvm_fpga_pop_i32_i49_031_pop1999_pop35_gaussian12_out_data_out_1_q <= '0;
        end
        else
        begin
            redist13_i_llvm_fpga_pop_i32_i49_031_pop1999_pop35_gaussian12_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_i49_031_pop1999_pop35_gaussian12_out_data_out);
        end
    end

    // i_idxprom59_gaussian14_sel_x(BITSELECT,134)@3
    assign i_idxprom59_gaussian14_sel_x_b = {32'b00000000000000000000000000000000, redist13_i_llvm_fpga_pop_i32_i49_031_pop1999_pop35_gaussian12_out_data_out_1_q[31:0]};

    // i_idxprom59_gaussian14_vt_select_31(BITSELECT,44)@3
    assign i_idxprom59_gaussian14_vt_select_31_b = i_idxprom59_gaussian14_sel_x_b[31:0];

    // i_idxprom59_gaussian14_vt_join(BITJOIN,43)@3
    assign i_idxprom59_gaussian14_vt_join_q = {c_i32_058_q, i_idxprom59_gaussian14_vt_select_31_b};

    // i_arrayidx623_gaussian0_dupName_0_trunc_sel_x(BITSELECT,108)@3
    assign i_arrayidx623_gaussian0_dupName_0_trunc_sel_x_b = i_idxprom59_gaussian14_vt_join_q[10:0];

    // addsumAHighB_uid176_i_arrayidx623_gaussian0_mult_x(ADD,175)@3
    assign addsumAHighB_uid176_i_arrayidx623_gaussian0_mult_x_a = {1'b0, i_arrayidx623_gaussian0_dupName_0_trunc_sel_x_b};
    assign addsumAHighB_uid176_i_arrayidx623_gaussian0_mult_x_b = {3'b000, lowRangeB_uid174_i_arrayidx623_gaussian0_mult_x_merged_bit_select_c};
    assign addsumAHighB_uid176_i_arrayidx623_gaussian0_mult_x_o = $unsigned(addsumAHighB_uid176_i_arrayidx623_gaussian0_mult_x_a) + $unsigned(addsumAHighB_uid176_i_arrayidx623_gaussian0_mult_x_b);
    assign addsumAHighB_uid176_i_arrayidx623_gaussian0_mult_x_q = addsumAHighB_uid176_i_arrayidx623_gaussian0_mult_x_o[11:0];

    // lowRangeB_uid174_i_arrayidx623_gaussian0_mult_x_merged_bit_select(BITSELECT,467)@3
    assign lowRangeB_uid174_i_arrayidx623_gaussian0_mult_x_merged_bit_select_b = i_arrayidx623_gaussian0_dupName_0_trunc_sel_x_b[1:0];
    assign lowRangeB_uid174_i_arrayidx623_gaussian0_mult_x_merged_bit_select_c = i_arrayidx623_gaussian0_dupName_0_trunc_sel_x_b[10:2];

    // add_uid177_i_arrayidx623_gaussian0_mult_x(BITJOIN,176)@3
    assign add_uid177_i_arrayidx623_gaussian0_mult_x_q = {addsumAHighB_uid176_i_arrayidx623_gaussian0_mult_x_q, lowRangeB_uid174_i_arrayidx623_gaussian0_mult_x_merged_bit_select_b};

    // sR_mergedSignalTM_uid182_i_arrayidx623_gaussian0_mult_x(BITJOIN,181)@3
    assign sR_mergedSignalTM_uid182_i_arrayidx623_gaussian0_mult_x_q = {add_uid177_i_arrayidx623_gaussian0_mult_x_q, i_arrayidx623_gaussian0_mult_multconst_x_q};

    // i_arrayidx623_gaussian0_mult_extender_x(BITJOIN,105)@3
    assign i_arrayidx623_gaussian0_mult_extender_x_q = {i_arrayidx623_gaussian0_mult_multconst_x_q, sR_mergedSignalTM_uid182_i_arrayidx623_gaussian0_mult_x_q};

    // i_arrayidx623_gaussian0_dupName_1_trunc_sel_x(BITSELECT,109)@3
    assign i_arrayidx623_gaussian0_dupName_1_trunc_sel_x_b = i_arrayidx623_gaussian0_mult_extender_x_q[10:0];

    // redist11_i_arrayidx623_gaussian0_dupName_1_trunc_sel_x_b_1(DELAY,483)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_arrayidx623_gaussian0_dupName_1_trunc_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist11_i_arrayidx623_gaussian0_dupName_1_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx623_gaussian0_dupName_1_trunc_sel_x_b);
        end
    end

    // i_arrayidx623_gaussian0_add_x(ADD,89)@4
    assign i_arrayidx623_gaussian0_add_x_a = {1'b0, i_arrayidx623_gaussian0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx623_gaussian0_add_x_b = {1'b0, redist11_i_arrayidx623_gaussian0_dupName_1_trunc_sel_x_b_1_q};
    assign i_arrayidx623_gaussian0_add_x_o = $unsigned(i_arrayidx623_gaussian0_add_x_a) + $unsigned(i_arrayidx623_gaussian0_add_x_b);
    assign i_arrayidx623_gaussian0_add_x_q = i_arrayidx623_gaussian0_add_x_o[11:0];

    // i_arrayidx623_gaussian0_dupName_2_trunc_sel_x(BITSELECT,110)@4
    assign i_arrayidx623_gaussian0_dupName_2_trunc_sel_x_b = i_arrayidx623_gaussian0_add_x_q[10:0];

    // i_arrayidx623_gaussian0_dupName_0_add_x(ADD,99)@4
    assign i_arrayidx623_gaussian0_dupName_0_add_x_a = {1'b0, i_arrayidx623_gaussian0_dupName_2_trunc_sel_x_b};
    assign i_arrayidx623_gaussian0_dupName_0_add_x_b = {1'b0, i_arrayidx623_gaussian0_shift_join_x_q};
    assign i_arrayidx623_gaussian0_dupName_0_add_x_o = $unsigned(i_arrayidx623_gaussian0_dupName_0_add_x_a) + $unsigned(i_arrayidx623_gaussian0_dupName_0_add_x_b);
    assign i_arrayidx623_gaussian0_dupName_0_add_x_q = i_arrayidx623_gaussian0_dupName_0_add_x_o[11:0];

    // i_arrayidx623_gaussian0_dupName_5_trunc_sel_x(BITSELECT,112)@4
    assign i_arrayidx623_gaussian0_dupName_5_trunc_sel_x_b = i_arrayidx623_gaussian0_dupName_0_add_x_q[10:0];

    // i_arrayidx623_gaussian0_append_upper_bits_x(BITJOIN,90)@4
    assign i_arrayidx623_gaussian0_append_upper_bits_x_q = {i_arrayidx623_gaussian0_upper_bits_x_merged_bit_select_b, i_arrayidx623_gaussian0_dupName_5_trunc_sel_x_b};

    // i_arrayidx623_gaussian17_vt_select_63(BITSELECT,33)@4
    assign i_arrayidx623_gaussian17_vt_select_63_b = i_arrayidx623_gaussian0_append_upper_bits_x_q[63:2];

    // i_arrayidx623_gaussian17_vt_const_1(CONSTANT,31)
    assign i_arrayidx623_gaussian17_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx623_gaussian17_vt_join(BITJOIN,32)@4
    assign i_arrayidx623_gaussian17_vt_join_q = {i_arrayidx623_gaussian17_vt_select_63_b, i_arrayidx623_gaussian17_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_gaussian15_gaussian18(BLACKBOX,52)@4
    // in in_i_stall@20000000
    // out out_o_readdata@6
    // out out_o_stall@5
    // out out_o_valid@6
    // out out_unnamed_gaussian15_gaussian_avm_address@20000000
    // out out_unnamed_gaussian15_gaussian_avm_burstcount@20000000
    // out out_unnamed_gaussian15_gaussian_avm_byteenable@20000000
    // out out_unnamed_gaussian15_gaussian_avm_enable@20000000
    // out out_unnamed_gaussian15_gaussian_avm_read@20000000
    // out out_unnamed_gaussian15_gaussian_avm_write@20000000
    // out out_unnamed_gaussian15_gaussian_avm_writedata@20000000
    gaussian_i_llvm_fpga_mem_unnamed_15_gaussian0 thei_llvm_fpga_mem_unnamed_gaussian15_gaussian18 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx623_gaussian17_vt_join_q),
        .in_i_predicate(redist20_i_first_cleanup_xor_gaussian4_q_2_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg7_q),
        .in_unnamed_gaussian15_gaussian_avm_readdata(in_unnamed_gaussian15_gaussian_avm_readdata),
        .in_unnamed_gaussian15_gaussian_avm_readdatavalid(in_unnamed_gaussian15_gaussian_avm_readdatavalid),
        .in_unnamed_gaussian15_gaussian_avm_waitrequest(in_unnamed_gaussian15_gaussian_avm_waitrequest),
        .in_unnamed_gaussian15_gaussian_avm_writeack(in_unnamed_gaussian15_gaussian_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_gaussian15_gaussian18_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_gaussian15_gaussian_avm_address(i_llvm_fpga_mem_unnamed_gaussian15_gaussian18_out_unnamed_gaussian15_gaussian_avm_address),
        .out_unnamed_gaussian15_gaussian_avm_burstcount(i_llvm_fpga_mem_unnamed_gaussian15_gaussian18_out_unnamed_gaussian15_gaussian_avm_burstcount),
        .out_unnamed_gaussian15_gaussian_avm_byteenable(i_llvm_fpga_mem_unnamed_gaussian15_gaussian18_out_unnamed_gaussian15_gaussian_avm_byteenable),
        .out_unnamed_gaussian15_gaussian_avm_enable(i_llvm_fpga_mem_unnamed_gaussian15_gaussian18_out_unnamed_gaussian15_gaussian_avm_enable),
        .out_unnamed_gaussian15_gaussian_avm_read(i_llvm_fpga_mem_unnamed_gaussian15_gaussian18_out_unnamed_gaussian15_gaussian_avm_read),
        .out_unnamed_gaussian15_gaussian_avm_write(i_llvm_fpga_mem_unnamed_gaussian15_gaussian18_out_unnamed_gaussian15_gaussian_avm_write),
        .out_unnamed_gaussian15_gaussian_avm_writedata(i_llvm_fpga_mem_unnamed_gaussian15_gaussian18_out_unnamed_gaussian15_gaussian_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,86)
    assign out_unnamed_gaussian15_gaussian_avm_address = i_llvm_fpga_mem_unnamed_gaussian15_gaussian18_out_unnamed_gaussian15_gaussian_avm_address;
    assign out_unnamed_gaussian15_gaussian_avm_enable = i_llvm_fpga_mem_unnamed_gaussian15_gaussian18_out_unnamed_gaussian15_gaussian_avm_enable;
    assign out_unnamed_gaussian15_gaussian_avm_read = i_llvm_fpga_mem_unnamed_gaussian15_gaussian18_out_unnamed_gaussian15_gaussian_avm_read;
    assign out_unnamed_gaussian15_gaussian_avm_write = i_llvm_fpga_mem_unnamed_gaussian15_gaussian18_out_unnamed_gaussian15_gaussian_avm_write;
    assign out_unnamed_gaussian15_gaussian_avm_writedata = i_llvm_fpga_mem_unnamed_gaussian15_gaussian18_out_unnamed_gaussian15_gaussian_avm_writedata;
    assign out_unnamed_gaussian15_gaussian_avm_byteenable = i_llvm_fpga_mem_unnamed_gaussian15_gaussian18_out_unnamed_gaussian15_gaussian_avm_byteenable;
    assign out_unnamed_gaussian15_gaussian_avm_burstcount = i_llvm_fpga_mem_unnamed_gaussian15_gaussian18_out_unnamed_gaussian15_gaussian_avm_burstcount;

    // redist6_sync_together82_aunroll_x_in_i_valid_3(DELAY,478)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together82_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist6_sync_together82_aunroll_x_in_i_valid_3_q <= $unsigned(redist5_sync_together82_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist7_sync_together82_aunroll_x_in_i_valid_4(DELAY,479)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together82_aunroll_x_in_i_valid_4_q <= '0;
        end
        else
        begin
            redist7_sync_together82_aunroll_x_in_i_valid_4_q <= $unsigned(redist6_sync_together82_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg9(REG,152)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist7_sync_together82_aunroll_x_in_i_valid_4_q);
        end
    end

    // redist21_i_first_cleanup_xor_gaussian4_q_4(DELAY,493)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_first_cleanup_xor_gaussian4_q_4_delay_0 <= '0;
            redist21_i_first_cleanup_xor_gaussian4_q_4_q <= '0;
        end
        else
        begin
            redist21_i_first_cleanup_xor_gaussian4_q_4_delay_0 <= $unsigned(redist20_i_first_cleanup_xor_gaussian4_q_2_q);
            redist21_i_first_cleanup_xor_gaussian4_q_4_q <= redist21_i_first_cleanup_xor_gaussian4_q_4_delay_0;
        end
    end

    // i_arrayidx66_gaussian0_narrow_x(BITSELECT,117)@4
    assign i_arrayidx66_gaussian0_narrow_x_b = i_idxprom61_gaussian16_vt_join_q[61:0];

    // i_arrayidx66_gaussian0_shift_join_x(BITJOIN,118)@4
    assign i_arrayidx66_gaussian0_shift_join_x_q = {i_arrayidx66_gaussian0_narrow_x_b, i_arrayidx623_gaussian17_vt_const_1_q};

    // i_arrayidx66_gaussian0_mult_multconst_x(CONSTANT,125)
    assign i_arrayidx66_gaussian0_mult_multconst_x_q = $unsigned(57'b000000000000000000000000000000000000000000000000000000000);

    // i_arrayidx66_gaussian0_mult_x_bs1(BITSELECT,213)@3
    assign i_arrayidx66_gaussian0_mult_x_bs1_b = i_idxprom59_gaussian14_vt_join_q[63:54];

    // addsumAHighB_uid256_i_arrayidx66_gaussian0_mult_x_im0(ADD,255)@3
    assign addsumAHighB_uid256_i_arrayidx66_gaussian0_mult_x_im0_a = {1'b0, i_arrayidx66_gaussian0_mult_x_bs1_b};
    assign addsumAHighB_uid256_i_arrayidx66_gaussian0_mult_x_im0_b = {3'b000, lowRangeB_uid254_i_arrayidx66_gaussian0_mult_x_im0_merged_bit_select_c};
    assign addsumAHighB_uid256_i_arrayidx66_gaussian0_mult_x_im0_o = $unsigned(addsumAHighB_uid256_i_arrayidx66_gaussian0_mult_x_im0_a) + $unsigned(addsumAHighB_uid256_i_arrayidx66_gaussian0_mult_x_im0_b);
    assign addsumAHighB_uid256_i_arrayidx66_gaussian0_mult_x_im0_q = addsumAHighB_uid256_i_arrayidx66_gaussian0_mult_x_im0_o[10:0];

    // lowRangeB_uid254_i_arrayidx66_gaussian0_mult_x_im0_merged_bit_select(BITSELECT,468)@3
    assign lowRangeB_uid254_i_arrayidx66_gaussian0_mult_x_im0_merged_bit_select_b = i_arrayidx66_gaussian0_mult_x_bs1_b[1:0];
    assign lowRangeB_uid254_i_arrayidx66_gaussian0_mult_x_im0_merged_bit_select_c = i_arrayidx66_gaussian0_mult_x_bs1_b[9:2];

    // add_uid257_i_arrayidx66_gaussian0_mult_x_im0(BITJOIN,256)@3
    assign add_uid257_i_arrayidx66_gaussian0_mult_x_im0_q = {addsumAHighB_uid256_i_arrayidx66_gaussian0_mult_x_im0_q, lowRangeB_uid254_i_arrayidx66_gaussian0_mult_x_im0_merged_bit_select_b};

    // sR_mergedSignalTM_uid262_i_arrayidx66_gaussian0_mult_x_im0(BITJOIN,261)@3
    assign sR_mergedSignalTM_uid262_i_arrayidx66_gaussian0_mult_x_im0_q = {add_uid257_i_arrayidx66_gaussian0_mult_x_im0_q, i_arrayidx623_gaussian0_mult_multconst_x_q};

    // i_arrayidx66_gaussian0_mult_x_sums_align_3(BITSHIFT,227)@3
    assign i_arrayidx66_gaussian0_mult_x_sums_align_3_qint = { sR_mergedSignalTM_uid262_i_arrayidx66_gaussian0_mult_x_im0_q, 11'b00000000000 };
    assign i_arrayidx66_gaussian0_mult_x_sums_align_3_q = i_arrayidx66_gaussian0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx66_gaussian0_mult_x_bs7(BITSELECT,219)@3
    assign i_arrayidx66_gaussian0_mult_x_bs7_in = i_idxprom59_gaussian14_vt_join_q[35:0];
    assign i_arrayidx66_gaussian0_mult_x_bs7_b = i_arrayidx66_gaussian0_mult_x_bs7_in[35:18];

    // addsumAHighB_uid360_i_arrayidx66_gaussian0_mult_x_im6(ADD,359)@3
    assign addsumAHighB_uid360_i_arrayidx66_gaussian0_mult_x_im6_a = {1'b0, i_arrayidx66_gaussian0_mult_x_bs7_b};
    assign addsumAHighB_uid360_i_arrayidx66_gaussian0_mult_x_im6_b = {3'b000, lowRangeB_uid358_i_arrayidx66_gaussian0_mult_x_im6_merged_bit_select_c};
    assign addsumAHighB_uid360_i_arrayidx66_gaussian0_mult_x_im6_o = $unsigned(addsumAHighB_uid360_i_arrayidx66_gaussian0_mult_x_im6_a) + $unsigned(addsumAHighB_uid360_i_arrayidx66_gaussian0_mult_x_im6_b);
    assign addsumAHighB_uid360_i_arrayidx66_gaussian0_mult_x_im6_q = addsumAHighB_uid360_i_arrayidx66_gaussian0_mult_x_im6_o[18:0];

    // lowRangeB_uid358_i_arrayidx66_gaussian0_mult_x_im6_merged_bit_select(BITSELECT,470)@3
    assign lowRangeB_uid358_i_arrayidx66_gaussian0_mult_x_im6_merged_bit_select_b = i_arrayidx66_gaussian0_mult_x_bs7_b[1:0];
    assign lowRangeB_uid358_i_arrayidx66_gaussian0_mult_x_im6_merged_bit_select_c = i_arrayidx66_gaussian0_mult_x_bs7_b[17:2];

    // add_uid361_i_arrayidx66_gaussian0_mult_x_im6(BITJOIN,360)@3
    assign add_uid361_i_arrayidx66_gaussian0_mult_x_im6_q = {addsumAHighB_uid360_i_arrayidx66_gaussian0_mult_x_im6_q, lowRangeB_uid358_i_arrayidx66_gaussian0_mult_x_im6_merged_bit_select_b};

    // sR_mergedSignalTM_uid366_i_arrayidx66_gaussian0_mult_x_im6(BITJOIN,365)@3
    assign sR_mergedSignalTM_uid366_i_arrayidx66_gaussian0_mult_x_im6_q = {add_uid361_i_arrayidx66_gaussian0_mult_x_im6_q, i_arrayidx623_gaussian0_mult_multconst_x_q};

    // i_arrayidx66_gaussian0_mult_x_sums_align_2(BITSHIFT,226)@3
    assign i_arrayidx66_gaussian0_mult_x_sums_align_2_qint = { sR_mergedSignalTM_uid366_i_arrayidx66_gaussian0_mult_x_im6_q, 18'b000000000000000000 };
    assign i_arrayidx66_gaussian0_mult_x_sums_align_2_q = i_arrayidx66_gaussian0_mult_x_sums_align_2_qint[42:0];

    // i_arrayidx66_gaussian0_mult_x_sums_join_4(BITJOIN,228)@3
    assign i_arrayidx66_gaussian0_mult_x_sums_join_4_q = {i_arrayidx66_gaussian0_mult_x_sums_align_3_q, i_arrayidx66_gaussian0_mult_x_sums_align_2_q};

    // i_arrayidx66_gaussian0_mult_x_bs4(BITSELECT,216)@3
    assign i_arrayidx66_gaussian0_mult_x_bs4_in = i_idxprom59_gaussian14_vt_join_q[53:0];
    assign i_arrayidx66_gaussian0_mult_x_bs4_b = i_arrayidx66_gaussian0_mult_x_bs4_in[53:36];

    // addsumAHighB_uid302_i_arrayidx66_gaussian0_mult_x_im3(ADD,301)@3
    assign addsumAHighB_uid302_i_arrayidx66_gaussian0_mult_x_im3_a = {1'b0, i_arrayidx66_gaussian0_mult_x_bs4_b};
    assign addsumAHighB_uid302_i_arrayidx66_gaussian0_mult_x_im3_b = {3'b000, lowRangeB_uid300_i_arrayidx66_gaussian0_mult_x_im3_merged_bit_select_c};
    assign addsumAHighB_uid302_i_arrayidx66_gaussian0_mult_x_im3_o = $unsigned(addsumAHighB_uid302_i_arrayidx66_gaussian0_mult_x_im3_a) + $unsigned(addsumAHighB_uid302_i_arrayidx66_gaussian0_mult_x_im3_b);
    assign addsumAHighB_uid302_i_arrayidx66_gaussian0_mult_x_im3_q = addsumAHighB_uid302_i_arrayidx66_gaussian0_mult_x_im3_o[18:0];

    // lowRangeB_uid300_i_arrayidx66_gaussian0_mult_x_im3_merged_bit_select(BITSELECT,469)@3
    assign lowRangeB_uid300_i_arrayidx66_gaussian0_mult_x_im3_merged_bit_select_b = i_arrayidx66_gaussian0_mult_x_bs4_b[1:0];
    assign lowRangeB_uid300_i_arrayidx66_gaussian0_mult_x_im3_merged_bit_select_c = i_arrayidx66_gaussian0_mult_x_bs4_b[17:2];

    // add_uid303_i_arrayidx66_gaussian0_mult_x_im3(BITJOIN,302)@3
    assign add_uid303_i_arrayidx66_gaussian0_mult_x_im3_q = {addsumAHighB_uid302_i_arrayidx66_gaussian0_mult_x_im3_q, lowRangeB_uid300_i_arrayidx66_gaussian0_mult_x_im3_merged_bit_select_b};

    // sR_mergedSignalTM_uid308_i_arrayidx66_gaussian0_mult_x_im3(BITJOIN,307)@3
    assign sR_mergedSignalTM_uid308_i_arrayidx66_gaussian0_mult_x_im3_q = {add_uid303_i_arrayidx66_gaussian0_mult_x_im3_q, i_arrayidx623_gaussian0_mult_multconst_x_q};

    // i_arrayidx66_gaussian0_mult_x_sums_align_0(BITSHIFT,224)@3
    assign i_arrayidx66_gaussian0_mult_x_sums_align_0_qint = { sR_mergedSignalTM_uid308_i_arrayidx66_gaussian0_mult_x_im3_q, 11'b00000000000 };
    assign i_arrayidx66_gaussian0_mult_x_sums_align_0_q = i_arrayidx66_gaussian0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx66_gaussian0_mult_x_bs10(BITSELECT,222)@3
    assign i_arrayidx66_gaussian0_mult_x_bs10_in = i_idxprom59_gaussian14_vt_join_q[17:0];
    assign i_arrayidx66_gaussian0_mult_x_bs10_b = i_arrayidx66_gaussian0_mult_x_bs10_in[17:0];

    // addsumAHighB_uid418_i_arrayidx66_gaussian0_mult_x_im9(ADD,417)@3
    assign addsumAHighB_uid418_i_arrayidx66_gaussian0_mult_x_im9_a = {1'b0, i_arrayidx66_gaussian0_mult_x_bs10_b};
    assign addsumAHighB_uid418_i_arrayidx66_gaussian0_mult_x_im9_b = {3'b000, lowRangeB_uid416_i_arrayidx66_gaussian0_mult_x_im9_merged_bit_select_c};
    assign addsumAHighB_uid418_i_arrayidx66_gaussian0_mult_x_im9_o = $unsigned(addsumAHighB_uid418_i_arrayidx66_gaussian0_mult_x_im9_a) + $unsigned(addsumAHighB_uid418_i_arrayidx66_gaussian0_mult_x_im9_b);
    assign addsumAHighB_uid418_i_arrayidx66_gaussian0_mult_x_im9_q = addsumAHighB_uid418_i_arrayidx66_gaussian0_mult_x_im9_o[18:0];

    // lowRangeB_uid416_i_arrayidx66_gaussian0_mult_x_im9_merged_bit_select(BITSELECT,471)@3
    assign lowRangeB_uid416_i_arrayidx66_gaussian0_mult_x_im9_merged_bit_select_b = i_arrayidx66_gaussian0_mult_x_bs10_b[1:0];
    assign lowRangeB_uid416_i_arrayidx66_gaussian0_mult_x_im9_merged_bit_select_c = i_arrayidx66_gaussian0_mult_x_bs10_b[17:2];

    // add_uid419_i_arrayidx66_gaussian0_mult_x_im9(BITJOIN,418)@3
    assign add_uid419_i_arrayidx66_gaussian0_mult_x_im9_q = {addsumAHighB_uid418_i_arrayidx66_gaussian0_mult_x_im9_q, lowRangeB_uid416_i_arrayidx66_gaussian0_mult_x_im9_merged_bit_select_b};

    // sR_mergedSignalTM_uid424_i_arrayidx66_gaussian0_mult_x_im9(BITJOIN,423)@3
    assign sR_mergedSignalTM_uid424_i_arrayidx66_gaussian0_mult_x_im9_q = {add_uid419_i_arrayidx66_gaussian0_mult_x_im9_q, i_arrayidx623_gaussian0_mult_multconst_x_q};

    // i_arrayidx66_gaussian0_mult_x_sums_join_1(BITJOIN,225)@3
    assign i_arrayidx66_gaussian0_mult_x_sums_join_1_q = {i_arrayidx66_gaussian0_mult_x_sums_align_0_q, sR_mergedSignalTM_uid424_i_arrayidx66_gaussian0_mult_x_im9_q};

    // i_arrayidx66_gaussian0_mult_x_sums_result_add_0_0(ADD,229)@3
    assign i_arrayidx66_gaussian0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx66_gaussian0_mult_x_sums_join_1_q};
    assign i_arrayidx66_gaussian0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx66_gaussian0_mult_x_sums_join_4_q};
    assign i_arrayidx66_gaussian0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx66_gaussian0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx66_gaussian0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx66_gaussian0_mult_x_sums_result_add_0_0_q = i_arrayidx66_gaussian0_mult_x_sums_result_add_0_0_o[71:0];

    // i_arrayidx66_gaussian0_mult_extender_x(BITJOIN,124)@3
    assign i_arrayidx66_gaussian0_mult_extender_x_q = {i_arrayidx66_gaussian0_mult_multconst_x_q, i_arrayidx66_gaussian0_mult_x_sums_result_add_0_0_q[70:0]};

    // i_arrayidx66_gaussian0_trunc_sel_x(BITSELECT,126)@3
    assign i_arrayidx66_gaussian0_trunc_sel_x_b = i_arrayidx66_gaussian0_mult_extender_x_q[63:0];

    // redist10_i_arrayidx66_gaussian0_trunc_sel_x_b_1(DELAY,482)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_arrayidx66_gaussian0_trunc_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist10_i_arrayidx66_gaussian0_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx66_gaussian0_trunc_sel_x_b);
        end
    end

    // valid_fanout_reg8(REG,151)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist5_sync_together82_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024a20i32_a_r3826_gaussian19(BLACKBOX,51)@4
    gaussian_i_llvm_fpga_ffwd_dest_p1024a20i32_a_r3826_0 thei_llvm_fpga_ffwd_dest_p1024a20i32_a_r3826_gaussian19 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_p1024a20i32_a_r3826_gaussian19_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx66_gaussian0_add_x(ADD,113)@4
    assign i_arrayidx66_gaussian0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_p1024a20i32_a_r3826_gaussian19_out_dest_data_out_0_0};
    assign i_arrayidx66_gaussian0_add_x_b = {1'b0, redist10_i_arrayidx66_gaussian0_trunc_sel_x_b_1_q};
    assign i_arrayidx66_gaussian0_add_x_o = $unsigned(i_arrayidx66_gaussian0_add_x_a) + $unsigned(i_arrayidx66_gaussian0_add_x_b);
    assign i_arrayidx66_gaussian0_add_x_q = i_arrayidx66_gaussian0_add_x_o[64:0];

    // i_arrayidx66_gaussian0_dupName_0_trunc_sel_x(BITSELECT,127)@4
    assign i_arrayidx66_gaussian0_dupName_0_trunc_sel_x_b = i_arrayidx66_gaussian0_add_x_q[63:0];

    // i_arrayidx66_gaussian0_dupName_0_add_x(ADD,121)@4
    assign i_arrayidx66_gaussian0_dupName_0_add_x_a = {1'b0, i_arrayidx66_gaussian0_dupName_0_trunc_sel_x_b};
    assign i_arrayidx66_gaussian0_dupName_0_add_x_b = {1'b0, i_arrayidx66_gaussian0_shift_join_x_q};
    assign i_arrayidx66_gaussian0_dupName_0_add_x_o = $unsigned(i_arrayidx66_gaussian0_dupName_0_add_x_a) + $unsigned(i_arrayidx66_gaussian0_dupName_0_add_x_b);
    assign i_arrayidx66_gaussian0_dupName_0_add_x_q = i_arrayidx66_gaussian0_dupName_0_add_x_o[64:0];

    // i_arrayidx66_gaussian0_dupName_2_trunc_sel_x(BITSELECT,128)@4
    assign i_arrayidx66_gaussian0_dupName_2_trunc_sel_x_b = i_arrayidx66_gaussian0_dupName_0_add_x_q[63:0];

    // redist9_i_arrayidx66_gaussian0_dupName_2_trunc_sel_x_b_2(DELAY,481)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_arrayidx66_gaussian0_dupName_2_trunc_sel_x_b_2_delay_0 <= '0;
            redist9_i_arrayidx66_gaussian0_dupName_2_trunc_sel_x_b_2_q <= '0;
        end
        else
        begin
            redist9_i_arrayidx66_gaussian0_dupName_2_trunc_sel_x_b_2_delay_0 <= $unsigned(i_arrayidx66_gaussian0_dupName_2_trunc_sel_x_b);
            redist9_i_arrayidx66_gaussian0_dupName_2_trunc_sel_x_b_2_q <= redist9_i_arrayidx66_gaussian0_dupName_2_trunc_sel_x_b_2_delay_0;
        end
    end

    // i_llvm_fpga_mem_unnamed_gaussian16_gaussian21(BLACKBOX,53)@6
    // out out_lsu_unnamed_gaussian16_o_active@20000000
    // out out_o_stall@9
    // out out_o_valid@9
    // out out_unnamed_gaussian16_gaussian_avm_address@20000000
    // out out_unnamed_gaussian16_gaussian_avm_burstcount@20000000
    // out out_unnamed_gaussian16_gaussian_avm_byteenable@20000000
    // out out_unnamed_gaussian16_gaussian_avm_enable@20000000
    // out out_unnamed_gaussian16_gaussian_avm_read@20000000
    // out out_unnamed_gaussian16_gaussian_avm_write@20000000
    // out out_unnamed_gaussian16_gaussian_avm_writedata@20000000
    gaussian_i_llvm_fpga_mem_unnamed_16_gaussian0 thei_llvm_fpga_mem_unnamed_gaussian16_gaussian21 (
        .in_flush(in_flush),
        .in_i_address(redist9_i_arrayidx66_gaussian0_dupName_2_trunc_sel_x_b_2_q),
        .in_i_predicate(redist21_i_first_cleanup_xor_gaussian4_q_4_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg9_q),
        .in_i_writedata(i_llvm_fpga_mem_unnamed_gaussian15_gaussian18_out_o_readdata),
        .in_unnamed_gaussian16_gaussian_avm_readdata(in_unnamed_gaussian16_gaussian_avm_readdata),
        .in_unnamed_gaussian16_gaussian_avm_readdatavalid(in_unnamed_gaussian16_gaussian_avm_readdatavalid),
        .in_unnamed_gaussian16_gaussian_avm_waitrequest(in_unnamed_gaussian16_gaussian_avm_waitrequest),
        .in_unnamed_gaussian16_gaussian_avm_writeack(in_unnamed_gaussian16_gaussian_avm_writeack),
        .out_lsu_unnamed_gaussian16_o_active(i_llvm_fpga_mem_unnamed_gaussian16_gaussian21_out_lsu_unnamed_gaussian16_o_active),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_gaussian16_gaussian_avm_address(i_llvm_fpga_mem_unnamed_gaussian16_gaussian21_out_unnamed_gaussian16_gaussian_avm_address),
        .out_unnamed_gaussian16_gaussian_avm_burstcount(i_llvm_fpga_mem_unnamed_gaussian16_gaussian21_out_unnamed_gaussian16_gaussian_avm_burstcount),
        .out_unnamed_gaussian16_gaussian_avm_byteenable(i_llvm_fpga_mem_unnamed_gaussian16_gaussian21_out_unnamed_gaussian16_gaussian_avm_byteenable),
        .out_unnamed_gaussian16_gaussian_avm_enable(i_llvm_fpga_mem_unnamed_gaussian16_gaussian21_out_unnamed_gaussian16_gaussian_avm_enable),
        .out_unnamed_gaussian16_gaussian_avm_read(i_llvm_fpga_mem_unnamed_gaussian16_gaussian21_out_unnamed_gaussian16_gaussian_avm_read),
        .out_unnamed_gaussian16_gaussian_avm_write(i_llvm_fpga_mem_unnamed_gaussian16_gaussian21_out_unnamed_gaussian16_gaussian_avm_write),
        .out_unnamed_gaussian16_gaussian_avm_writedata(i_llvm_fpga_mem_unnamed_gaussian16_gaussian21_out_unnamed_gaussian16_gaussian_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_ext_sig_sync_out_x(GPOUT,87)
    assign out_unnamed_gaussian16_gaussian_avm_address = i_llvm_fpga_mem_unnamed_gaussian16_gaussian21_out_unnamed_gaussian16_gaussian_avm_address;
    assign out_unnamed_gaussian16_gaussian_avm_enable = i_llvm_fpga_mem_unnamed_gaussian16_gaussian21_out_unnamed_gaussian16_gaussian_avm_enable;
    assign out_unnamed_gaussian16_gaussian_avm_read = i_llvm_fpga_mem_unnamed_gaussian16_gaussian21_out_unnamed_gaussian16_gaussian_avm_read;
    assign out_unnamed_gaussian16_gaussian_avm_write = i_llvm_fpga_mem_unnamed_gaussian16_gaussian21_out_unnamed_gaussian16_gaussian_avm_write;
    assign out_unnamed_gaussian16_gaussian_avm_writedata = i_llvm_fpga_mem_unnamed_gaussian16_gaussian21_out_unnamed_gaussian16_gaussian_avm_writedata;
    assign out_unnamed_gaussian16_gaussian_avm_byteenable = i_llvm_fpga_mem_unnamed_gaussian16_gaussian21_out_unnamed_gaussian16_gaussian_avm_byteenable;
    assign out_unnamed_gaussian16_gaussian_avm_burstcount = i_llvm_fpga_mem_unnamed_gaussian16_gaussian21_out_unnamed_gaussian16_gaussian_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,88)
    assign out_lsu_unnamed_gaussian16_o_active = i_llvm_fpga_mem_unnamed_gaussian16_gaussian21_out_lsu_unnamed_gaussian16_o_active;

    // redist8_sync_together82_aunroll_x_in_i_valid_7(DELAY,480)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together82_aunroll_x_in_i_valid_7_delay_0 <= '0;
            redist8_sync_together82_aunroll_x_in_i_valid_7_delay_1 <= '0;
            redist8_sync_together82_aunroll_x_in_i_valid_7_q <= '0;
        end
        else
        begin
            redist8_sync_together82_aunroll_x_in_i_valid_7_delay_0 <= $unsigned(redist7_sync_together82_aunroll_x_in_i_valid_4_q);
            redist8_sync_together82_aunroll_x_in_i_valid_7_delay_1 <= redist8_sync_together82_aunroll_x_in_i_valid_7_delay_0;
            redist8_sync_together82_aunroll_x_in_i_valid_7_q <= redist8_sync_together82_aunroll_x_in_i_valid_7_delay_1;
        end
    end

    // valid_fanout_reg0(REG,143)@8 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist8_sync_together82_aunroll_x_in_i_valid_7_q);
        end
    end

    // valid_fanout_reg11(REG,154)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist5_sync_together82_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg12(REG,155)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist6_sync_together82_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist18_i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out_4(DELAY,490)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out_4_q <= '0;
        end
        else
        begin
            redist18_i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out_4_q <= $unsigned(redist17_i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out_3_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp3998_push34_gaussian36(BLACKBOX,62)@5
    // out out_feedback_out_34@20000000
    // out out_feedback_valid_out_34@20000000
    gaussian_i_llvm_fpga_push_i1_notcmp3998_push34_0 thei_llvm_fpga_push_i1_notcmp3998_push34_gaussian36 (
        .in_data_in(redist14_i_llvm_fpga_pop_i1_notcmp3998_pop34_gaussian35_out_data_out_1_q),
        .in_feedback_stall_in_34(i_llvm_fpga_pop_i1_notcmp3998_pop34_gaussian35_out_feedback_stall_out_34),
        .in_keep_going(redist18_i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out_4_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(),
        .out_feedback_out_34(i_llvm_fpga_push_i1_notcmp3998_push34_gaussian36_out_feedback_out_34),
        .out_feedback_valid_out_34(i_llvm_fpga_push_i1_notcmp3998_push34_gaussian36_out_feedback_valid_out_34),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together82_aunroll_x_in_c0_eni3179_3_tpl_3(DELAY,475)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together82_aunroll_x_in_c0_eni3179_3_tpl_3_delay_0 <= '0;
            redist3_sync_together82_aunroll_x_in_c0_eni3179_3_tpl_3_delay_1 <= '0;
            redist3_sync_together82_aunroll_x_in_c0_eni3179_3_tpl_3_q <= '0;
        end
        else
        begin
            redist3_sync_together82_aunroll_x_in_c0_eni3179_3_tpl_3_delay_0 <= $unsigned(in_c0_eni3179_3_tpl);
            redist3_sync_together82_aunroll_x_in_c0_eni3179_3_tpl_3_delay_1 <= redist3_sync_together82_aunroll_x_in_c0_eni3179_3_tpl_3_delay_0;
            redist3_sync_together82_aunroll_x_in_c0_eni3179_3_tpl_3_q <= redist3_sync_together82_aunroll_x_in_c0_eni3179_3_tpl_3_delay_1;
        end
    end

    // i_llvm_fpga_pop_i1_notcmp3998_pop34_gaussian35(BLACKBOX,55)@4
    // out out_feedback_stall_out_34@20000000
    gaussian_i_llvm_fpga_pop_i1_notcmp3998_pop34_0 thei_llvm_fpga_pop_i1_notcmp3998_pop34_gaussian35 (
        .in_data_in(redist3_sync_together82_aunroll_x_in_c0_eni3179_3_tpl_3_q),
        .in_dir(redist1_sync_together82_aunroll_x_in_c0_eni3179_1_tpl_3_q),
        .in_feedback_in_34(i_llvm_fpga_push_i1_notcmp3998_push34_gaussian36_out_feedback_out_34),
        .in_feedback_valid_in_34(i_llvm_fpga_push_i1_notcmp3998_push34_gaussian36_out_feedback_valid_out_34),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp3998_pop34_gaussian35_out_data_out),
        .out_feedback_stall_out_34(i_llvm_fpga_pop_i1_notcmp3998_pop34_gaussian35_out_feedback_stall_out_34),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist14_i_llvm_fpga_pop_i1_notcmp3998_pop34_gaussian35_out_data_out_1(DELAY,486)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_llvm_fpga_pop_i1_notcmp3998_pop34_gaussian35_out_data_out_1_q <= '0;
        end
        else
        begin
            redist14_i_llvm_fpga_pop_i1_notcmp3998_pop34_gaussian35_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_notcmp3998_pop34_gaussian35_out_data_out);
        end
    end

    // redist15_i_llvm_fpga_pop_i1_notcmp3998_pop34_gaussian35_out_data_out_5(DELAY,487)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_llvm_fpga_pop_i1_notcmp3998_pop34_gaussian35_out_data_out_5_delay_0 <= '0;
            redist15_i_llvm_fpga_pop_i1_notcmp3998_pop34_gaussian35_out_data_out_5_delay_1 <= '0;
            redist15_i_llvm_fpga_pop_i1_notcmp3998_pop34_gaussian35_out_data_out_5_delay_2 <= '0;
            redist15_i_llvm_fpga_pop_i1_notcmp3998_pop34_gaussian35_out_data_out_5_q <= '0;
        end
        else
        begin
            redist15_i_llvm_fpga_pop_i1_notcmp3998_pop34_gaussian35_out_data_out_5_delay_0 <= $unsigned(redist14_i_llvm_fpga_pop_i1_notcmp3998_pop34_gaussian35_out_data_out_1_q);
            redist15_i_llvm_fpga_pop_i1_notcmp3998_pop34_gaussian35_out_data_out_5_delay_1 <= redist15_i_llvm_fpga_pop_i1_notcmp3998_pop34_gaussian35_out_data_out_5_delay_0;
            redist15_i_llvm_fpga_pop_i1_notcmp3998_pop34_gaussian35_out_data_out_5_delay_2 <= redist15_i_llvm_fpga_pop_i1_notcmp3998_pop34_gaussian35_out_data_out_5_delay_1;
            redist15_i_llvm_fpga_pop_i1_notcmp3998_pop34_gaussian35_out_data_out_5_q <= redist15_i_llvm_fpga_pop_i1_notcmp3998_pop34_gaussian35_out_data_out_5_delay_2;
        end
    end

    // i_masked_gaussian34(LOGICAL,69)@2 + 1
    assign i_masked_gaussian34_qi = i_notcmp_gaussian27_q & i_first_cleanup_gaussian3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_gaussian34_delay ( .xin(i_masked_gaussian34_qi), .xout(i_masked_gaussian34_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist12_i_masked_gaussian34_q_7(DELAY,484)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist12_i_masked_gaussian34_q_7 ( .xin(i_masked_gaussian34_q), .xout(redist12_i_masked_gaussian34_q_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist19_i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out_8(DELAY,491)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out_8_delay_0 <= '0;
            redist19_i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out_8_delay_1 <= '0;
            redist19_i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out_8_delay_2 <= '0;
            redist19_i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out_8_q <= '0;
        end
        else
        begin
            redist19_i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out_8_delay_0 <= $unsigned(redist18_i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out_4_q);
            redist19_i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out_8_delay_1 <= redist19_i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out_8_delay_0;
            redist19_i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out_8_delay_2 <= redist19_i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out_8_delay_1;
            redist19_i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out_8_q <= redist19_i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out_8_delay_2;
        end
    end

    // sync_out_aunroll_x(GPOUT,141)@9
    assign out_c0_exi3186_0_tpl = GND_q;
    assign out_c0_exi3186_1_tpl = redist19_i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out_8_q;
    assign out_c0_exi3186_2_tpl = redist12_i_masked_gaussian34_q_7_q;
    assign out_c0_exi3186_3_tpl = redist15_i_llvm_fpga_pop_i1_notcmp3998_pop34_gaussian35_out_data_out_5_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_gaussian1 = GND_q;

endmodule
