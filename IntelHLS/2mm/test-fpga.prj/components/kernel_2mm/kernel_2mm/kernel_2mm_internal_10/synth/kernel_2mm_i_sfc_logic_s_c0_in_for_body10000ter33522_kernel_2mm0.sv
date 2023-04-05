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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body140_kernel_2mms_c0_enter33522_kernel_2mm0
// Created for function/kernel kernel_2mm
// SystemVerilog created on Wed Apr  5 01:12:28 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_2mm_i_sfc_logic_s_c0_in_for_body10000ter33522_kernel_2mm0 (
    input wire [31:0] in_unnamed_kernel_2mm21_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm21_kernel_2mm_avm_writeack,
    input wire [0:0] in_unnamed_kernel_2mm21_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm21_kernel_2mm_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_5_0,
    input wire [63:0] in_memdep_7_kernel_2mm_avm_readdata,
    input wire [0:0] in_memdep_7_kernel_2mm_avm_writeack,
    input wire [0:0] in_memdep_7_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_memdep_7_kernel_2mm_avm_readdatavalid,
    output wire [31:0] out_unnamed_kernel_2mm21_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm21_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm21_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm21_kernel_2mm_avm_write,
    output wire [31:0] out_unnamed_kernel_2mm21_kernel_2mm_avm_writedata,
    output wire [3:0] out_unnamed_kernel_2mm21_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm21_kernel_2mm_avm_burstcount,
    output wire [63:0] out_memdep_7_kernel_2mm_avm_address,
    output wire [0:0] out_memdep_7_kernel_2mm_avm_enable,
    output wire [0:0] out_memdep_7_kernel_2mm_avm_read,
    output wire [0:0] out_memdep_7_kernel_2mm_avm_write,
    output wire [63:0] out_memdep_7_kernel_2mm_avm_writedata,
    output wire [7:0] out_memdep_7_kernel_2mm_avm_byteenable,
    output wire [0:0] out_memdep_7_kernel_2mm_avm_burstcount,
    output wire [0:0] out_lsu_memdep_7_o_active,
    output wire [0:0] out_c0_exi3341_0_tpl,
    output wire [0:0] out_c0_exi3341_1_tpl,
    output wire [0:0] out_c0_exi3341_2_tpl,
    output wire [0:0] out_c0_exi3341_3_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_kernel_2mm1,
    input wire [0:0] in_c0_eni3334_0_tpl,
    input wire [0:0] in_c0_eni3334_1_tpl,
    input wire [31:0] in_c0_eni3334_2_tpl,
    input wire [0:0] in_c0_eni3334_3_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [1:0] c_i2_156_q;
    wire [31:0] c_i32_058_q;
    wire [31:0] c_i32_159_q;
    wire [4:0] c_i5_162_q;
    wire [4:0] c_i5_860_q;
    wire [63:0] c_kernel_2mm_D_local_pmem_q;
    wire [1:0] i_arrayidx14412_kernel_2mm17_vt_const_1_q;
    wire [63:0] i_arrayidx14412_kernel_2mm17_vt_join_q;
    wire [61:0] i_arrayidx14412_kernel_2mm17_vt_select_63_b;
    wire [1:0] i_cleanups_shl_kernel_2mm5_vt_join_q;
    wire [0:0] i_cleanups_shl_kernel_2mm5_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor_kernel_2mm4_q;
    wire [5:0] i_fpga_indvars_iv_next27_kernel_2mm32_a;
    wire [5:0] i_fpga_indvars_iv_next27_kernel_2mm32_b;
    logic [5:0] i_fpga_indvars_iv_next27_kernel_2mm32_o;
    wire [5:0] i_fpga_indvars_iv_next27_kernel_2mm32_q;
    wire [63:0] i_idxprom141_kernel_2mm14_vt_join_q;
    wire [31:0] i_idxprom141_kernel_2mm14_vt_select_31_b;
    wire [63:0] i_idxprom143_kernel_2mm16_vt_join_q;
    wire [31:0] i_idxprom143_kernel_2mm16_vt_select_31_b;
    wire [32:0] i_inc150_kernel_2mm22_a;
    wire [32:0] i_inc150_kernel_2mm22_b;
    logic [32:0] i_inc150_kernel_2mm22_o;
    wire [32:0] i_inc150_kernel_2mm22_q;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024a10i32_d8137_kernel_2mm19_out_dest_data_out_5_0;
    wire [0:0] i_llvm_fpga_mem_memdep_7_kernel_2mm21_out_lsu_memdep_7_o_active;
    wire [63:0] i_llvm_fpga_mem_memdep_7_kernel_2mm21_out_memdep_7_kernel_2mm_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_7_kernel_2mm21_out_memdep_7_kernel_2mm_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memdep_7_kernel_2mm21_out_memdep_7_kernel_2mm_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_7_kernel_2mm21_out_memdep_7_kernel_2mm_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_7_kernel_2mm21_out_memdep_7_kernel_2mm_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_7_kernel_2mm21_out_memdep_7_kernel_2mm_avm_write;
    wire [63:0] i_llvm_fpga_mem_memdep_7_kernel_2mm21_out_memdep_7_kernel_2mm_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_2mm21_kernel_2mm18_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_2mm21_kernel_2mm18_out_unnamed_kernel_2mm21_kernel_2mm_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_2mm21_kernel_2mm18_out_unnamed_kernel_2mm21_kernel_2mm_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_kernel_2mm21_kernel_2mm18_out_unnamed_kernel_2mm21_kernel_2mm_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_2mm21_kernel_2mm18_out_unnamed_kernel_2mm21_kernel_2mm_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_2mm21_kernel_2mm18_out_unnamed_kernel_2mm21_kernel_2mm_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_2mm21_kernel_2mm18_out_unnamed_kernel_2mm21_kernel_2mm_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_2mm21_kernel_2mm18_out_unnamed_kernel_2mm21_kernel_2mm_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp39131_pop46_kernel_2mm35_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp39131_pop46_kernel_2mm35_out_feedback_stall_out_46;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups_pop45_kernel_2mm2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop45_kernel_2mm2_out_feedback_stall_out_45;
    wire [1:0] i_llvm_fpga_pop_i2_initerations_pop44_kernel_2mm7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations_pop44_kernel_2mm7_out_feedback_stall_out_44;
    wire [31:0] i_llvm_fpga_pop_i32_i131_065_pop27132_pop47_kernel_2mm12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i131_065_pop27132_pop47_kernel_2mm12_out_feedback_stall_out_47;
    wire [31:0] i_llvm_fpga_pop_i32_j136_064_pop43_kernel_2mm15_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j136_064_pop43_kernel_2mm15_out_feedback_stall_out_43;
    wire [4:0] i_llvm_fpga_pop_i5_fpga_indvars_iv26_pop42_kernel_2mm24_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i5_fpga_indvars_iv26_pop42_kernel_2mm24_out_feedback_stall_out_42;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_kernel_2mm11_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_kernel_2mm11_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notcmp39131_push46_kernel_2mm36_out_feedback_out_46;
    wire [0:0] i_llvm_fpga_push_i1_notcmp39131_push46_kernel_2mm36_out_feedback_valid_out_46;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_kernel_2mm28_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_kernel_2mm28_out_feedback_valid_out_3;
    wire [7:0] i_llvm_fpga_push_i2_cleanups_push45_kernel_2mm31_out_feedback_out_45;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push45_kernel_2mm31_out_feedback_valid_out_45;
    wire [7:0] i_llvm_fpga_push_i2_initerations_push44_kernel_2mm9_out_feedback_out_44;
    wire [0:0] i_llvm_fpga_push_i2_initerations_push44_kernel_2mm9_out_feedback_valid_out_44;
    wire [31:0] i_llvm_fpga_push_i32_i131_065_pop27132_push47_kernel_2mm13_out_feedback_out_47;
    wire [0:0] i_llvm_fpga_push_i32_i131_065_pop27132_push47_kernel_2mm13_out_feedback_valid_out_47;
    wire [31:0] i_llvm_fpga_push_i32_j136_064_push43_kernel_2mm23_out_feedback_out_43;
    wire [0:0] i_llvm_fpga_push_i32_j136_064_push43_kernel_2mm23_out_feedback_valid_out_43;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv26_push42_kernel_2mm33_out_feedback_out_42;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv26_push42_kernel_2mm33_out_feedback_valid_out_42;
    wire [0:0] i_masked_kernel_2mm34_qi;
    reg [0:0] i_masked_kernel_2mm34_q;
    wire [0:0] i_next_cleanups_kernel_2mm30_s;
    reg [1:0] i_next_cleanups_kernel_2mm30_q;
    wire [1:0] i_next_initerations_kernel_2mm8_vt_join_q;
    wire [0:0] i_next_initerations_kernel_2mm8_vt_select_0_b;
    wire [0:0] i_notcmp_kernel_2mm27_q;
    wire [0:0] i_or_kernel_2mm29_q;
    wire [4:0] bgTrunc_i_fpga_indvars_iv_next27_kernel_2mm32_sel_x_b;
    wire [31:0] bgTrunc_i_inc150_kernel_2mm22_sel_x_b;
    wire [9:0] i_arrayidx14412_kernel_2mm0_add_x_a;
    wire [9:0] i_arrayidx14412_kernel_2mm0_add_x_b;
    logic [9:0] i_arrayidx14412_kernel_2mm0_add_x_o;
    wire [9:0] i_arrayidx14412_kernel_2mm0_add_x_q;
    wire [63:0] i_arrayidx14412_kernel_2mm0_append_upper_bits_x_q;
    wire [6:0] i_arrayidx14412_kernel_2mm0_narrow_x_b;
    wire [8:0] i_arrayidx14412_kernel_2mm0_shift_join_x_q;
    wire [9:0] i_arrayidx14412_kernel_2mm0_dupName_0_add_x_a;
    wire [9:0] i_arrayidx14412_kernel_2mm0_dupName_0_add_x_b;
    logic [9:0] i_arrayidx14412_kernel_2mm0_dupName_0_add_x_o;
    wire [9:0] i_arrayidx14412_kernel_2mm0_dupName_0_add_x_q;
    wire [17:0] i_arrayidx14412_kernel_2mm0_mult_extender_x_q;
    wire [2:0] i_arrayidx14412_kernel_2mm0_mult_multconst_x_q;
    wire [8:0] i_arrayidx14412_kernel_2mm0_dupName_0_trunc_sel_x_b;
    wire [8:0] i_arrayidx14412_kernel_2mm0_dupName_1_trunc_sel_x_b;
    wire [8:0] i_arrayidx14412_kernel_2mm0_dupName_2_trunc_sel_x_b;
    wire [8:0] i_arrayidx14412_kernel_2mm0_dupName_3_trunc_sel_x_b;
    wire [8:0] i_arrayidx14412_kernel_2mm0_dupName_5_trunc_sel_x_b;
    wire [64:0] i_arrayidx148_kernel_2mm0_add_x_a;
    wire [64:0] i_arrayidx148_kernel_2mm0_add_x_b;
    logic [64:0] i_arrayidx148_kernel_2mm0_add_x_o;
    wire [64:0] i_arrayidx148_kernel_2mm0_add_x_q;
    wire [61:0] i_arrayidx148_kernel_2mm0_narrow_x_b;
    wire [63:0] i_arrayidx148_kernel_2mm0_shift_join_x_q;
    wire [64:0] i_arrayidx148_kernel_2mm0_dupName_0_add_x_a;
    wire [64:0] i_arrayidx148_kernel_2mm0_dupName_0_add_x_b;
    logic [64:0] i_arrayidx148_kernel_2mm0_dupName_0_add_x_o;
    wire [64:0] i_arrayidx148_kernel_2mm0_dupName_0_add_x_q;
    wire [127:0] i_arrayidx148_kernel_2mm0_mult_extender_x_q;
    wire [57:0] i_arrayidx148_kernel_2mm0_mult_multconst_x_q;
    wire [63:0] i_arrayidx148_kernel_2mm0_trunc_sel_x_b;
    wire [63:0] i_arrayidx148_kernel_2mm0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_arrayidx148_kernel_2mm0_dupName_2_trunc_sel_x_b;
    wire [0:0] i_first_cleanup_kernel_2mm3_sel_x_b;
    wire [63:0] i_idxprom141_kernel_2mm14_sel_x_b;
    wire [63:0] i_idxprom143_kernel_2mm16_sel_x_b;
    wire [0:0] i_last_initeration_kernel_2mm10_sel_x_b;
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
    wire [0:0] i_exitcond28_kernel_2mm25_cmp_nsign_q;
    wire [9:0] addsumAHighB_uid176_i_arrayidx14412_kernel_2mm0_mult_x_a;
    wire [9:0] addsumAHighB_uid176_i_arrayidx14412_kernel_2mm0_mult_x_b;
    logic [9:0] addsumAHighB_uid176_i_arrayidx14412_kernel_2mm0_mult_x_o;
    wire [9:0] addsumAHighB_uid176_i_arrayidx14412_kernel_2mm0_mult_x_q;
    wire [11:0] add_uid177_i_arrayidx14412_kernel_2mm0_mult_x_q;
    wire [14:0] sR_mergedSignalTM_uid182_i_arrayidx14412_kernel_2mm0_mult_x_q;
    wire [9:0] i_arrayidx148_kernel_2mm0_mult_x_bs1_b;
    wire [53:0] i_arrayidx148_kernel_2mm0_mult_x_bs4_in;
    wire [17:0] i_arrayidx148_kernel_2mm0_mult_x_bs4_b;
    wire [35:0] i_arrayidx148_kernel_2mm0_mult_x_bs7_in;
    wire [17:0] i_arrayidx148_kernel_2mm0_mult_x_bs7_b;
    wire [17:0] i_arrayidx148_kernel_2mm0_mult_x_bs10_in;
    wire [17:0] i_arrayidx148_kernel_2mm0_mult_x_bs10_b;
    wire [35:0] i_arrayidx148_kernel_2mm0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx148_kernel_2mm0_mult_x_sums_align_0_qint;
    wire [59:0] i_arrayidx148_kernel_2mm0_mult_x_sums_join_1_q;
    wire [41:0] i_arrayidx148_kernel_2mm0_mult_x_sums_align_2_q;
    wire [41:0] i_arrayidx148_kernel_2mm0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx148_kernel_2mm0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx148_kernel_2mm0_mult_x_sums_align_3_qint;
    wire [69:0] i_arrayidx148_kernel_2mm0_mult_x_sums_join_4_q;
    wire [70:0] i_arrayidx148_kernel_2mm0_mult_x_sums_result_add_0_0_a;
    wire [70:0] i_arrayidx148_kernel_2mm0_mult_x_sums_result_add_0_0_b;
    logic [70:0] i_arrayidx148_kernel_2mm0_mult_x_sums_result_add_0_0_o;
    wire [70:0] i_arrayidx148_kernel_2mm0_mult_x_sums_result_add_0_0_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid234_i_cleanups_shl_kernel_2mm0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid234_i_cleanups_shl_kernel_2mm0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid235_i_cleanups_shl_kernel_2mm0_shift_x_q;
    wire [0:0] leftShiftStage0_uid237_i_cleanups_shl_kernel_2mm0_shift_x_s;
    reg [1:0] leftShiftStage0_uid237_i_cleanups_shl_kernel_2mm0_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid241_i_next_initerations_kernel_2mm0_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid243_i_next_initerations_kernel_2mm0_shift_x_q;
    wire [0:0] rightShiftStage0_uid245_i_next_initerations_kernel_2mm0_shift_x_s;
    reg [1:0] rightShiftStage0_uid245_i_next_initerations_kernel_2mm0_shift_x_q;
    wire [10:0] addsumAHighB_uid256_i_arrayidx148_kernel_2mm0_mult_x_im0_a;
    wire [10:0] addsumAHighB_uid256_i_arrayidx148_kernel_2mm0_mult_x_im0_b;
    logic [10:0] addsumAHighB_uid256_i_arrayidx148_kernel_2mm0_mult_x_im0_o;
    wire [10:0] addsumAHighB_uid256_i_arrayidx148_kernel_2mm0_mult_x_im0_q;
    wire [12:0] add_uid257_i_arrayidx148_kernel_2mm0_mult_x_im0_q;
    wire [15:0] sR_mergedSignalTM_uid262_i_arrayidx148_kernel_2mm0_mult_x_im0_q;
    wire [18:0] addsumAHighB_uid302_i_arrayidx148_kernel_2mm0_mult_x_im3_a;
    wire [18:0] addsumAHighB_uid302_i_arrayidx148_kernel_2mm0_mult_x_im3_b;
    logic [18:0] addsumAHighB_uid302_i_arrayidx148_kernel_2mm0_mult_x_im3_o;
    wire [18:0] addsumAHighB_uid302_i_arrayidx148_kernel_2mm0_mult_x_im3_q;
    wire [20:0] add_uid303_i_arrayidx148_kernel_2mm0_mult_x_im3_q;
    wire [23:0] sR_mergedSignalTM_uid308_i_arrayidx148_kernel_2mm0_mult_x_im3_q;
    wire [18:0] addsumAHighB_uid360_i_arrayidx148_kernel_2mm0_mult_x_im6_a;
    wire [18:0] addsumAHighB_uid360_i_arrayidx148_kernel_2mm0_mult_x_im6_b;
    logic [18:0] addsumAHighB_uid360_i_arrayidx148_kernel_2mm0_mult_x_im6_o;
    wire [18:0] addsumAHighB_uid360_i_arrayidx148_kernel_2mm0_mult_x_im6_q;
    wire [20:0] add_uid361_i_arrayidx148_kernel_2mm0_mult_x_im6_q;
    wire [23:0] sR_mergedSignalTM_uid366_i_arrayidx148_kernel_2mm0_mult_x_im6_q;
    wire [18:0] addsumAHighB_uid418_i_arrayidx148_kernel_2mm0_mult_x_im9_a;
    wire [18:0] addsumAHighB_uid418_i_arrayidx148_kernel_2mm0_mult_x_im9_b;
    logic [18:0] addsumAHighB_uid418_i_arrayidx148_kernel_2mm0_mult_x_im9_o;
    wire [18:0] addsumAHighB_uid418_i_arrayidx148_kernel_2mm0_mult_x_im9_q;
    wire [20:0] add_uid419_i_arrayidx148_kernel_2mm0_mult_x_im9_q;
    wire [23:0] sR_mergedSignalTM_uid424_i_arrayidx148_kernel_2mm0_mult_x_im9_q;
    wire [54:0] i_arrayidx14412_kernel_2mm0_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx14412_kernel_2mm0_upper_bits_x_merged_bit_select_c;
    wire [1:0] lowRangeB_uid174_i_arrayidx14412_kernel_2mm0_mult_x_merged_bit_select_b;
    wire [6:0] lowRangeB_uid174_i_arrayidx14412_kernel_2mm0_mult_x_merged_bit_select_c;
    wire [1:0] lowRangeB_uid254_i_arrayidx148_kernel_2mm0_mult_x_im0_merged_bit_select_b;
    wire [7:0] lowRangeB_uid254_i_arrayidx148_kernel_2mm0_mult_x_im0_merged_bit_select_c;
    wire [1:0] lowRangeB_uid300_i_arrayidx148_kernel_2mm0_mult_x_im3_merged_bit_select_b;
    wire [15:0] lowRangeB_uid300_i_arrayidx148_kernel_2mm0_mult_x_im3_merged_bit_select_c;
    wire [1:0] lowRangeB_uid358_i_arrayidx148_kernel_2mm0_mult_x_im6_merged_bit_select_b;
    wire [15:0] lowRangeB_uid358_i_arrayidx148_kernel_2mm0_mult_x_im6_merged_bit_select_c;
    wire [1:0] lowRangeB_uid416_i_arrayidx148_kernel_2mm0_mult_x_im9_merged_bit_select_b;
    wire [15:0] lowRangeB_uid416_i_arrayidx148_kernel_2mm0_mult_x_im9_merged_bit_select_c;
    reg [0:0] redist0_sync_together82_aunroll_x_in_c0_eni3334_1_tpl_1_q;
    reg [0:0] redist1_sync_together82_aunroll_x_in_c0_eni3334_1_tpl_3_q;
    reg [0:0] redist1_sync_together82_aunroll_x_in_c0_eni3334_1_tpl_3_delay_0;
    reg [31:0] redist2_sync_together82_aunroll_x_in_c0_eni3334_2_tpl_1_q;
    reg [0:0] redist3_sync_together82_aunroll_x_in_c0_eni3334_3_tpl_3_q;
    reg [0:0] redist3_sync_together82_aunroll_x_in_c0_eni3334_3_tpl_3_delay_0;
    reg [0:0] redist3_sync_together82_aunroll_x_in_c0_eni3334_3_tpl_3_delay_1;
    reg [0:0] redist4_sync_together82_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist5_sync_together82_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist6_sync_together82_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist7_sync_together82_aunroll_x_in_i_valid_6_q;
    reg [0:0] redist7_sync_together82_aunroll_x_in_i_valid_6_delay_0;
    reg [0:0] redist7_sync_together82_aunroll_x_in_i_valid_6_delay_1;
    reg [0:0] redist8_sync_together82_aunroll_x_in_i_valid_10_q;
    reg [0:0] redist8_sync_together82_aunroll_x_in_i_valid_10_delay_0;
    reg [0:0] redist8_sync_together82_aunroll_x_in_i_valid_10_delay_1;
    reg [0:0] redist8_sync_together82_aunroll_x_in_i_valid_10_delay_2;
    reg [63:0] redist10_i_arrayidx148_kernel_2mm0_trunc_sel_x_b_1_q;
    reg [8:0] redist11_i_arrayidx14412_kernel_2mm0_dupName_1_trunc_sel_x_b_1_q;
    reg [0:0] redist12_i_masked_kernel_2mm34_q_10_q;
    reg [31:0] redist13_i_llvm_fpga_pop_i32_i131_065_pop27132_pop47_kernel_2mm12_out_data_out_1_q;
    reg [0:0] redist14_i_llvm_fpga_pop_i1_notcmp39131_pop46_kernel_2mm35_out_data_out_1_q;
    reg [0:0] redist15_i_llvm_fpga_pop_i1_notcmp39131_pop46_kernel_2mm35_out_data_out_8_q;
    reg [0:0] redist16_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_1_q;
    reg [0:0] redist17_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_2_q;
    reg [0:0] redist18_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_3_q;
    reg [0:0] redist19_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_4_q;
    reg [0:0] redist20_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_11_q;
    reg [0:0] redist21_i_first_cleanup_xor_kernel_2mm4_q_2_q;
    reg [0:0] redist21_i_first_cleanup_xor_kernel_2mm4_q_2_delay_0;
    reg [0:0] redist22_i_first_cleanup_xor_kernel_2mm4_q_6_q;
    reg [0:0] redist22_i_first_cleanup_xor_kernel_2mm4_q_6_delay_0;
    reg [0:0] redist22_i_first_cleanup_xor_kernel_2mm4_q_6_delay_1;
    reg [0:0] redist22_i_first_cleanup_xor_kernel_2mm4_q_6_delay_2;
    reg [63:0] redist9_i_arrayidx148_kernel_2mm0_dupName_2_trunc_sel_x_b_4_inputreg0_q;
    wire redist9_i_arrayidx148_kernel_2mm0_dupName_2_trunc_sel_x_b_4_mem_reset0;
    wire [63:0] redist9_i_arrayidx148_kernel_2mm0_dupName_2_trunc_sel_x_b_4_mem_ia;
    wire [0:0] redist9_i_arrayidx148_kernel_2mm0_dupName_2_trunc_sel_x_b_4_mem_aa;
    wire [0:0] redist9_i_arrayidx148_kernel_2mm0_dupName_2_trunc_sel_x_b_4_mem_ab;
    wire [63:0] redist9_i_arrayidx148_kernel_2mm0_dupName_2_trunc_sel_x_b_4_mem_iq;
    wire [63:0] redist9_i_arrayidx148_kernel_2mm0_dupName_2_trunc_sel_x_b_4_mem_q;
    wire [0:0] redist9_i_arrayidx148_kernel_2mm0_dupName_2_trunc_sel_x_b_4_rdcnt_q;
    (* preserve *) reg [0:0] redist9_i_arrayidx148_kernel_2mm0_dupName_2_trunc_sel_x_b_4_rdcnt_i;
    reg [0:0] redist9_i_arrayidx148_kernel_2mm0_dupName_2_trunc_sel_x_b_4_wraddr_q;
    (* dont_merge *) reg [0:0] redist9_i_arrayidx148_kernel_2mm0_dupName_2_trunc_sel_x_b_4_cmpReg_q;
    wire [0:0] redist9_i_arrayidx148_kernel_2mm0_dupName_2_trunc_sel_x_b_4_notEnable_q;
    wire [0:0] redist9_i_arrayidx148_kernel_2mm0_dupName_2_trunc_sel_x_b_4_nor_q;
    (* dont_merge *) reg [0:0] redist9_i_arrayidx148_kernel_2mm0_dupName_2_trunc_sel_x_b_4_sticky_ena_q;
    wire [0:0] redist9_i_arrayidx148_kernel_2mm0_dupName_2_trunc_sel_x_b_4_enaAnd_q;


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

    // redist16_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_1(DELAY,488)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist16_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid234_i_cleanups_shl_kernel_2mm0_shift_x(BITSELECT,233)@2
    assign leftShiftStage0Idx1Rng1_uid234_i_cleanups_shl_kernel_2mm0_shift_x_in = i_llvm_fpga_pop_i2_cleanups_pop45_kernel_2mm2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid234_i_cleanups_shl_kernel_2mm0_shift_x_b = leftShiftStage0Idx1Rng1_uid234_i_cleanups_shl_kernel_2mm0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid235_i_cleanups_shl_kernel_2mm0_shift_x(BITJOIN,234)@2
    assign leftShiftStage0Idx1_uid235_i_cleanups_shl_kernel_2mm0_shift_x_q = {leftShiftStage0Idx1Rng1_uid234_i_cleanups_shl_kernel_2mm0_shift_x_b, GND_q};

    // leftShiftStage0_uid237_i_cleanups_shl_kernel_2mm0_shift_x(MUX,236)@2
    assign leftShiftStage0_uid237_i_cleanups_shl_kernel_2mm0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid237_i_cleanups_shl_kernel_2mm0_shift_x_s or i_llvm_fpga_pop_i2_cleanups_pop45_kernel_2mm2_out_data_out or leftShiftStage0Idx1_uid235_i_cleanups_shl_kernel_2mm0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid237_i_cleanups_shl_kernel_2mm0_shift_x_s)
            1'b0 : leftShiftStage0_uid237_i_cleanups_shl_kernel_2mm0_shift_x_q = i_llvm_fpga_pop_i2_cleanups_pop45_kernel_2mm2_out_data_out;
            1'b1 : leftShiftStage0_uid237_i_cleanups_shl_kernel_2mm0_shift_x_q = leftShiftStage0Idx1_uid235_i_cleanups_shl_kernel_2mm0_shift_x_q;
            default : leftShiftStage0_uid237_i_cleanups_shl_kernel_2mm0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl_kernel_2mm5_vt_select_1(BITSELECT,36)@2
    assign i_cleanups_shl_kernel_2mm5_vt_select_1_b = leftShiftStage0_uid237_i_cleanups_shl_kernel_2mm0_shift_x_q[1:1];

    // i_cleanups_shl_kernel_2mm5_vt_join(BITJOIN,35)@2
    assign i_cleanups_shl_kernel_2mm5_vt_join_q = {i_cleanups_shl_kernel_2mm5_vt_select_1_b, GND_q};

    // i_first_cleanup_xor_kernel_2mm4(LOGICAL,39)@2
    assign i_first_cleanup_xor_kernel_2mm4_q = i_first_cleanup_kernel_2mm3_sel_x_b ^ VCC_q;

    // i_notcmp_kernel_2mm27(LOGICAL,74)@2
    assign i_notcmp_kernel_2mm27_q = i_exitcond28_kernel_2mm25_cmp_nsign_q ^ VCC_q;

    // i_or_kernel_2mm29(LOGICAL,75)@2
    assign i_or_kernel_2mm29_q = i_notcmp_kernel_2mm27_q | i_first_cleanup_xor_kernel_2mm4_q;

    // i_next_cleanups_kernel_2mm30(MUX,70)@2
    assign i_next_cleanups_kernel_2mm30_s = i_or_kernel_2mm29_q;
    always @(i_next_cleanups_kernel_2mm30_s or i_llvm_fpga_pop_i2_cleanups_pop45_kernel_2mm2_out_data_out or i_cleanups_shl_kernel_2mm5_vt_join_q)
    begin
        unique case (i_next_cleanups_kernel_2mm30_s)
            1'b0 : i_next_cleanups_kernel_2mm30_q = i_llvm_fpga_pop_i2_cleanups_pop45_kernel_2mm2_out_data_out;
            1'b1 : i_next_cleanups_kernel_2mm30_q = i_cleanups_shl_kernel_2mm5_vt_join_q;
            default : i_next_cleanups_kernel_2mm30_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups_push45_kernel_2mm31(BLACKBOX,64)@2
    // out out_feedback_out_45@20000000
    // out out_feedback_valid_out_45@20000000
    kernel_2mm_i_llvm_fpga_push_i2_cleanups_push45_0 thei_llvm_fpga_push_i2_cleanups_push45_kernel_2mm31 (
        .in_data_in(i_next_cleanups_kernel_2mm30_q),
        .in_feedback_stall_in_45(i_llvm_fpga_pop_i2_cleanups_pop45_kernel_2mm2_out_feedback_stall_out_45),
        .in_keep_going(redist16_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist4_sync_together82_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_45(i_llvm_fpga_push_i2_cleanups_push45_kernel_2mm31_out_feedback_out_45),
        .out_feedback_valid_out_45(i_llvm_fpga_push_i2_cleanups_push45_kernel_2mm31_out_feedback_valid_out_45),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together82_aunroll_x_in_c0_eni3334_1_tpl_1(DELAY,472)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together82_aunroll_x_in_c0_eni3334_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together82_aunroll_x_in_c0_eni3334_1_tpl_1_q <= $unsigned(in_c0_eni3334_1_tpl);
        end
    end

    // c_i2_156(CONSTANT,23)
    assign c_i2_156_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups_pop45_kernel_2mm2(BLACKBOX,56)@2
    // out out_feedback_stall_out_45@20000000
    kernel_2mm_i_llvm_fpga_pop_i2_cleanups_pop45_0 thei_llvm_fpga_pop_i2_cleanups_pop45_kernel_2mm2 (
        .in_data_in(c_i2_156_q),
        .in_dir(redist0_sync_together82_aunroll_x_in_c0_eni3334_1_tpl_1_q),
        .in_feedback_in_45(i_llvm_fpga_push_i2_cleanups_push45_kernel_2mm31_out_feedback_out_45),
        .in_feedback_valid_in_45(i_llvm_fpga_push_i2_cleanups_push45_kernel_2mm31_out_feedback_valid_out_45),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist4_sync_together82_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups_pop45_kernel_2mm2_out_data_out),
        .out_feedback_stall_out_45(i_llvm_fpga_pop_i2_cleanups_pop45_kernel_2mm2_out_feedback_stall_out_45),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_kernel_2mm3_sel_x(BITSELECT,133)@2
    assign i_first_cleanup_kernel_2mm3_sel_x_b = i_llvm_fpga_pop_i2_cleanups_pop45_kernel_2mm2_out_data_out[0:0];

    // c_i5_162(CONSTANT,26)
    assign c_i5_162_q = $unsigned(5'b11111);

    // i_fpga_indvars_iv_next27_kernel_2mm32(ADD,40)@2
    assign i_fpga_indvars_iv_next27_kernel_2mm32_a = {1'b0, i_llvm_fpga_pop_i5_fpga_indvars_iv26_pop42_kernel_2mm24_out_data_out};
    assign i_fpga_indvars_iv_next27_kernel_2mm32_b = {1'b0, c_i5_162_q};
    assign i_fpga_indvars_iv_next27_kernel_2mm32_o = $unsigned(i_fpga_indvars_iv_next27_kernel_2mm32_a) + $unsigned(i_fpga_indvars_iv_next27_kernel_2mm32_b);
    assign i_fpga_indvars_iv_next27_kernel_2mm32_q = i_fpga_indvars_iv_next27_kernel_2mm32_o[5:0];

    // bgTrunc_i_fpga_indvars_iv_next27_kernel_2mm32_sel_x(BITSELECT,82)@2
    assign bgTrunc_i_fpga_indvars_iv_next27_kernel_2mm32_sel_x_b = i_fpga_indvars_iv_next27_kernel_2mm32_q[4:0];

    // i_llvm_fpga_push_i5_fpga_indvars_iv26_push42_kernel_2mm33(BLACKBOX,68)@2
    // out out_feedback_out_42@20000000
    // out out_feedback_valid_out_42@20000000
    kernel_2mm_i_llvm_fpga_push_i5_fpga_indvars_iv26_push42_0 thei_llvm_fpga_push_i5_fpga_indvars_iv26_push42_kernel_2mm33 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next27_kernel_2mm32_sel_x_b),
        .in_feedback_stall_in_42(i_llvm_fpga_pop_i5_fpga_indvars_iv26_pop42_kernel_2mm24_out_feedback_stall_out_42),
        .in_keep_going(redist16_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist4_sync_together82_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_42(i_llvm_fpga_push_i5_fpga_indvars_iv26_push42_kernel_2mm33_out_feedback_out_42),
        .out_feedback_valid_out_42(i_llvm_fpga_push_i5_fpga_indvars_iv26_push42_kernel_2mm33_out_feedback_valid_out_42),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i5_860(CONSTANT,27)
    assign c_i5_860_q = $unsigned(5'b01000);

    // i_llvm_fpga_pop_i5_fpga_indvars_iv26_pop42_kernel_2mm24(BLACKBOX,60)@2
    // out out_feedback_stall_out_42@20000000
    kernel_2mm_i_llvm_fpga_pop_i5_fpga_indvars_iv26_pop42_0 thei_llvm_fpga_pop_i5_fpga_indvars_iv26_pop42_kernel_2mm24 (
        .in_data_in(c_i5_860_q),
        .in_dir(redist0_sync_together82_aunroll_x_in_c0_eni3334_1_tpl_1_q),
        .in_feedback_in_42(i_llvm_fpga_push_i5_fpga_indvars_iv26_push42_kernel_2mm33_out_feedback_out_42),
        .in_feedback_valid_in_42(i_llvm_fpga_push_i5_fpga_indvars_iv26_push42_kernel_2mm33_out_feedback_valid_out_42),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist4_sync_together82_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i5_fpga_indvars_iv26_pop42_kernel_2mm24_out_data_out),
        .out_feedback_stall_out_42(i_llvm_fpga_pop_i5_fpga_indvars_iv26_pop42_kernel_2mm24_out_feedback_stall_out_42),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond28_kernel_2mm25_cmp_nsign(LOGICAL,165)@2
    assign i_exitcond28_kernel_2mm25_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i5_fpga_indvars_iv26_pop42_kernel_2mm24_out_data_out[4:4]));

    // i_llvm_fpga_push_i1_notexitcond_kernel_2mm28(BLACKBOX,63)@2
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    kernel_2mm_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_kernel_2mm28 (
        .in_data_in(i_exitcond28_kernel_2mm25_cmp_nsign_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_kernel_2mm3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist4_sync_together82_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_kernel_2mm28_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_kernel_2mm28_out_feedback_valid_out_3),
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

    // rightShiftStage0Idx1Rng1_uid241_i_next_initerations_kernel_2mm0_shift_x(BITSELECT,240)@2
    assign rightShiftStage0Idx1Rng1_uid241_i_next_initerations_kernel_2mm0_shift_x_b = i_llvm_fpga_pop_i2_initerations_pop44_kernel_2mm7_out_data_out[1:1];

    // rightShiftStage0Idx1_uid243_i_next_initerations_kernel_2mm0_shift_x(BITJOIN,242)@2
    assign rightShiftStage0Idx1_uid243_i_next_initerations_kernel_2mm0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid241_i_next_initerations_kernel_2mm0_shift_x_b};

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

    // i_llvm_fpga_push_i2_initerations_push44_kernel_2mm9(BLACKBOX,65)@2
    // out out_feedback_out_44@20000000
    // out out_feedback_valid_out_44@20000000
    kernel_2mm_i_llvm_fpga_push_i2_initerations_push44_0 thei_llvm_fpga_push_i2_initerations_push44_kernel_2mm9 (
        .in_data_in(i_next_initerations_kernel_2mm8_vt_join_q),
        .in_feedback_stall_in_44(i_llvm_fpga_pop_i2_initerations_pop44_kernel_2mm7_out_feedback_stall_out_44),
        .in_keep_going(redist16_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_44(i_llvm_fpga_push_i2_initerations_push44_kernel_2mm9_out_feedback_out_44),
        .out_feedback_valid_out_44(i_llvm_fpga_push_i2_initerations_push44_kernel_2mm9_out_feedback_valid_out_44),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations_pop44_kernel_2mm7(BLACKBOX,57)@2
    // out out_feedback_stall_out_44@20000000
    kernel_2mm_i_llvm_fpga_pop_i2_initerations_pop44_0 thei_llvm_fpga_pop_i2_initerations_pop44_kernel_2mm7 (
        .in_data_in(c_i2_156_q),
        .in_dir(redist0_sync_together82_aunroll_x_in_c0_eni3334_1_tpl_1_q),
        .in_feedback_in_44(i_llvm_fpga_push_i2_initerations_push44_kernel_2mm9_out_feedback_out_44),
        .in_feedback_valid_in_44(i_llvm_fpga_push_i2_initerations_push44_kernel_2mm9_out_feedback_valid_out_44),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations_pop44_kernel_2mm7_out_data_out),
        .out_feedback_stall_out_44(i_llvm_fpga_pop_i2_initerations_pop44_kernel_2mm7_out_feedback_stall_out_44),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid245_i_next_initerations_kernel_2mm0_shift_x(MUX,244)@2
    assign rightShiftStage0_uid245_i_next_initerations_kernel_2mm0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid245_i_next_initerations_kernel_2mm0_shift_x_s or i_llvm_fpga_pop_i2_initerations_pop44_kernel_2mm7_out_data_out or rightShiftStage0Idx1_uid243_i_next_initerations_kernel_2mm0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid245_i_next_initerations_kernel_2mm0_shift_x_s)
            1'b0 : rightShiftStage0_uid245_i_next_initerations_kernel_2mm0_shift_x_q = i_llvm_fpga_pop_i2_initerations_pop44_kernel_2mm7_out_data_out;
            1'b1 : rightShiftStage0_uid245_i_next_initerations_kernel_2mm0_shift_x_q = rightShiftStage0Idx1_uid243_i_next_initerations_kernel_2mm0_shift_x_q;
            default : rightShiftStage0_uid245_i_next_initerations_kernel_2mm0_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations_kernel_2mm8_vt_select_0(BITSELECT,73)@2
    assign i_next_initerations_kernel_2mm8_vt_select_0_b = rightShiftStage0_uid245_i_next_initerations_kernel_2mm0_shift_x_q[0:0];

    // i_next_initerations_kernel_2mm8_vt_join(BITJOIN,72)@2
    assign i_next_initerations_kernel_2mm8_vt_join_q = {GND_q, i_next_initerations_kernel_2mm8_vt_select_0_b};

    // i_last_initeration_kernel_2mm10_sel_x(BITSELECT,136)@2
    assign i_last_initeration_kernel_2mm10_sel_x_b = i_next_initerations_kernel_2mm8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_kernel_2mm11(BLACKBOX,61)@2
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    kernel_2mm_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_kernel_2mm11 (
        .in_data_in(i_last_initeration_kernel_2mm10_sel_x_b),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_initeration_stall_out),
        .in_keep_going(redist16_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_kernel_2mm11_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_kernel_2mm11_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_kernel_2mm6(BLACKBOX,54)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    kernel_2mm_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_kernel_2mm6 (
        .in_data_in(in_c0_eni3334_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_kernel_2mm11_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_kernel_2mm11_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_kernel_2mm28_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_kernel_2mm28_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,30)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,78)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_pipeline_valid_out;

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

    // redist21_i_first_cleanup_xor_kernel_2mm4_q_2(DELAY,493)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_first_cleanup_xor_kernel_2mm4_q_2_delay_0 <= '0;
            redist21_i_first_cleanup_xor_kernel_2mm4_q_2_q <= '0;
        end
        else
        begin
            redist21_i_first_cleanup_xor_kernel_2mm4_q_2_delay_0 <= $unsigned(i_first_cleanup_xor_kernel_2mm4_q);
            redist21_i_first_cleanup_xor_kernel_2mm4_q_2_q <= redist21_i_first_cleanup_xor_kernel_2mm4_q_2_delay_0;
        end
    end

    // c_kernel_2mm_D_local_pmem(CONSTANT,28)
    assign c_kernel_2mm_D_local_pmem_q = $unsigned(64'b0100000001000100000000000000000000000000000000000000000000000000);

    // i_arrayidx14412_kernel_2mm0_upper_bits_x_merged_bit_select(BITSELECT,466)@4
    assign i_arrayidx14412_kernel_2mm0_upper_bits_x_merged_bit_select_b = c_kernel_2mm_D_local_pmem_q[63:9];
    assign i_arrayidx14412_kernel_2mm0_upper_bits_x_merged_bit_select_c = c_kernel_2mm_D_local_pmem_q[8:0];

    // c_i32_058(CONSTANT,24)
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

    // redist17_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_2(DELAY,489)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_2_q <= '0;
        end
        else
        begin
            redist17_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_2_q <= $unsigned(redist16_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_1_q);
        end
    end

    // redist18_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_3(DELAY,490)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_3_q <= '0;
        end
        else
        begin
            redist18_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_3_q <= $unsigned(redist17_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_2_q);
        end
    end

    // c_i32_159(CONSTANT,25)
    assign c_i32_159_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc150_kernel_2mm22(ADD,49)@4
    assign i_inc150_kernel_2mm22_a = {1'b0, i_llvm_fpga_pop_i32_j136_064_pop43_kernel_2mm15_out_data_out};
    assign i_inc150_kernel_2mm22_b = {1'b0, c_i32_159_q};
    assign i_inc150_kernel_2mm22_o = $unsigned(i_inc150_kernel_2mm22_a) + $unsigned(i_inc150_kernel_2mm22_b);
    assign i_inc150_kernel_2mm22_q = i_inc150_kernel_2mm22_o[32:0];

    // bgTrunc_i_inc150_kernel_2mm22_sel_x(BITSELECT,83)@4
    assign bgTrunc_i_inc150_kernel_2mm22_sel_x_b = i_inc150_kernel_2mm22_q[31:0];

    // i_llvm_fpga_push_i32_j136_064_push43_kernel_2mm23(BLACKBOX,67)@4
    // out out_feedback_out_43@20000000
    // out out_feedback_valid_out_43@20000000
    kernel_2mm_i_llvm_fpga_push_i32_j136_064_push43_0 thei_llvm_fpga_push_i32_j136_064_push43_kernel_2mm23 (
        .in_data_in(bgTrunc_i_inc150_kernel_2mm22_sel_x_b),
        .in_feedback_stall_in_43(i_llvm_fpga_pop_i32_j136_064_pop43_kernel_2mm15_out_feedback_stall_out_43),
        .in_keep_going(redist18_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_3_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_43(i_llvm_fpga_push_i32_j136_064_push43_kernel_2mm23_out_feedback_out_43),
        .out_feedback_valid_out_43(i_llvm_fpga_push_i32_j136_064_push43_kernel_2mm23_out_feedback_valid_out_43),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together82_aunroll_x_in_c0_eni3334_1_tpl_3(DELAY,473)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together82_aunroll_x_in_c0_eni3334_1_tpl_3_delay_0 <= '0;
            redist1_sync_together82_aunroll_x_in_c0_eni3334_1_tpl_3_q <= '0;
        end
        else
        begin
            redist1_sync_together82_aunroll_x_in_c0_eni3334_1_tpl_3_delay_0 <= $unsigned(redist0_sync_together82_aunroll_x_in_c0_eni3334_1_tpl_1_q);
            redist1_sync_together82_aunroll_x_in_c0_eni3334_1_tpl_3_q <= redist1_sync_together82_aunroll_x_in_c0_eni3334_1_tpl_3_delay_0;
        end
    end

    // i_llvm_fpga_pop_i32_j136_064_pop43_kernel_2mm15(BLACKBOX,59)@4
    // out out_feedback_stall_out_43@20000000
    kernel_2mm_i_llvm_fpga_pop_i32_j136_064_pop43_0 thei_llvm_fpga_pop_i32_j136_064_pop43_kernel_2mm15 (
        .in_data_in(c_i32_058_q),
        .in_dir(redist1_sync_together82_aunroll_x_in_c0_eni3334_1_tpl_3_q),
        .in_feedback_in_43(i_llvm_fpga_push_i32_j136_064_push43_kernel_2mm23_out_feedback_out_43),
        .in_feedback_valid_in_43(i_llvm_fpga_push_i32_j136_064_push43_kernel_2mm23_out_feedback_valid_out_43),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(i_llvm_fpga_pop_i32_j136_064_pop43_kernel_2mm15_out_data_out),
        .out_feedback_stall_out_43(i_llvm_fpga_pop_i32_j136_064_pop43_kernel_2mm15_out_feedback_stall_out_43),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom143_kernel_2mm16_sel_x(BITSELECT,135)@4
    assign i_idxprom143_kernel_2mm16_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_j136_064_pop43_kernel_2mm15_out_data_out[31:0]};

    // i_idxprom143_kernel_2mm16_vt_select_31(BITSELECT,48)@4
    assign i_idxprom143_kernel_2mm16_vt_select_31_b = i_idxprom143_kernel_2mm16_sel_x_b[31:0];

    // i_idxprom143_kernel_2mm16_vt_join(BITJOIN,47)@4
    assign i_idxprom143_kernel_2mm16_vt_join_q = {c_i32_058_q, i_idxprom143_kernel_2mm16_vt_select_31_b};

    // i_arrayidx14412_kernel_2mm0_dupName_3_trunc_sel_x(BITSELECT,111)@4
    assign i_arrayidx14412_kernel_2mm0_dupName_3_trunc_sel_x_b = i_idxprom143_kernel_2mm16_vt_join_q[8:0];

    // i_arrayidx14412_kernel_2mm0_narrow_x(BITSELECT,94)@4
    assign i_arrayidx14412_kernel_2mm0_narrow_x_b = i_arrayidx14412_kernel_2mm0_dupName_3_trunc_sel_x_b[6:0];

    // i_arrayidx14412_kernel_2mm0_shift_join_x(BITJOIN,95)@4
    assign i_arrayidx14412_kernel_2mm0_shift_join_x_q = {i_arrayidx14412_kernel_2mm0_narrow_x_b, i_arrayidx14412_kernel_2mm17_vt_const_1_q};

    // i_arrayidx14412_kernel_2mm0_mult_multconst_x(CONSTANT,106)
    assign i_arrayidx14412_kernel_2mm0_mult_multconst_x_q = $unsigned(3'b000);

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

    // valid_fanout_reg5(REG,148)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist4_sync_together82_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i32_i131_065_pop27132_push47_kernel_2mm13(BLACKBOX,66)@3
    // out out_feedback_out_47@20000000
    // out out_feedback_valid_out_47@20000000
    kernel_2mm_i_llvm_fpga_push_i32_i131_065_pop27132_push47_0 thei_llvm_fpga_push_i32_i131_065_pop27132_push47_kernel_2mm13 (
        .in_data_in(redist13_i_llvm_fpga_pop_i32_i131_065_pop27132_pop47_kernel_2mm12_out_data_out_1_q),
        .in_feedback_stall_in_47(i_llvm_fpga_pop_i32_i131_065_pop27132_pop47_kernel_2mm12_out_feedback_stall_out_47),
        .in_keep_going(redist17_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_47(i_llvm_fpga_push_i32_i131_065_pop27132_push47_kernel_2mm13_out_feedback_out_47),
        .out_feedback_valid_out_47(i_llvm_fpga_push_i32_i131_065_pop27132_push47_kernel_2mm13_out_feedback_valid_out_47),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together82_aunroll_x_in_c0_eni3334_2_tpl_1(DELAY,474)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together82_aunroll_x_in_c0_eni3334_2_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together82_aunroll_x_in_c0_eni3334_2_tpl_1_q <= $unsigned(in_c0_eni3334_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_i131_065_pop27132_pop47_kernel_2mm12(BLACKBOX,58)@2
    // out out_feedback_stall_out_47@20000000
    kernel_2mm_i_llvm_fpga_pop_i32_i131_065_pop27132_pop47_0 thei_llvm_fpga_pop_i32_i131_065_pop27132_pop47_kernel_2mm12 (
        .in_data_in(redist2_sync_together82_aunroll_x_in_c0_eni3334_2_tpl_1_q),
        .in_dir(redist0_sync_together82_aunroll_x_in_c0_eni3334_1_tpl_1_q),
        .in_feedback_in_47(i_llvm_fpga_push_i32_i131_065_pop27132_push47_kernel_2mm13_out_feedback_out_47),
        .in_feedback_valid_in_47(i_llvm_fpga_push_i32_i131_065_pop27132_push47_kernel_2mm13_out_feedback_valid_out_47),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_i131_065_pop27132_pop47_kernel_2mm12_out_data_out),
        .out_feedback_stall_out_47(i_llvm_fpga_pop_i32_i131_065_pop27132_pop47_kernel_2mm12_out_feedback_stall_out_47),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist13_i_llvm_fpga_pop_i32_i131_065_pop27132_pop47_kernel_2mm12_out_data_out_1(DELAY,485)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_llvm_fpga_pop_i32_i131_065_pop27132_pop47_kernel_2mm12_out_data_out_1_q <= '0;
        end
        else
        begin
            redist13_i_llvm_fpga_pop_i32_i131_065_pop27132_pop47_kernel_2mm12_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_i131_065_pop27132_pop47_kernel_2mm12_out_data_out);
        end
    end

    // i_idxprom141_kernel_2mm14_sel_x(BITSELECT,134)@3
    assign i_idxprom141_kernel_2mm14_sel_x_b = {32'b00000000000000000000000000000000, redist13_i_llvm_fpga_pop_i32_i131_065_pop27132_pop47_kernel_2mm12_out_data_out_1_q[31:0]};

    // i_idxprom141_kernel_2mm14_vt_select_31(BITSELECT,44)@3
    assign i_idxprom141_kernel_2mm14_vt_select_31_b = i_idxprom141_kernel_2mm14_sel_x_b[31:0];

    // i_idxprom141_kernel_2mm14_vt_join(BITJOIN,43)@3
    assign i_idxprom141_kernel_2mm14_vt_join_q = {c_i32_058_q, i_idxprom141_kernel_2mm14_vt_select_31_b};

    // i_arrayidx14412_kernel_2mm0_dupName_0_trunc_sel_x(BITSELECT,108)@3
    assign i_arrayidx14412_kernel_2mm0_dupName_0_trunc_sel_x_b = i_idxprom141_kernel_2mm14_vt_join_q[8:0];

    // addsumAHighB_uid176_i_arrayidx14412_kernel_2mm0_mult_x(ADD,175)@3
    assign addsumAHighB_uid176_i_arrayidx14412_kernel_2mm0_mult_x_a = {1'b0, i_arrayidx14412_kernel_2mm0_dupName_0_trunc_sel_x_b};
    assign addsumAHighB_uid176_i_arrayidx14412_kernel_2mm0_mult_x_b = {3'b000, lowRangeB_uid174_i_arrayidx14412_kernel_2mm0_mult_x_merged_bit_select_c};
    assign addsumAHighB_uid176_i_arrayidx14412_kernel_2mm0_mult_x_o = $unsigned(addsumAHighB_uid176_i_arrayidx14412_kernel_2mm0_mult_x_a) + $unsigned(addsumAHighB_uid176_i_arrayidx14412_kernel_2mm0_mult_x_b);
    assign addsumAHighB_uid176_i_arrayidx14412_kernel_2mm0_mult_x_q = addsumAHighB_uid176_i_arrayidx14412_kernel_2mm0_mult_x_o[9:0];

    // lowRangeB_uid174_i_arrayidx14412_kernel_2mm0_mult_x_merged_bit_select(BITSELECT,467)@3
    assign lowRangeB_uid174_i_arrayidx14412_kernel_2mm0_mult_x_merged_bit_select_b = i_arrayidx14412_kernel_2mm0_dupName_0_trunc_sel_x_b[1:0];
    assign lowRangeB_uid174_i_arrayidx14412_kernel_2mm0_mult_x_merged_bit_select_c = i_arrayidx14412_kernel_2mm0_dupName_0_trunc_sel_x_b[8:2];

    // add_uid177_i_arrayidx14412_kernel_2mm0_mult_x(BITJOIN,176)@3
    assign add_uid177_i_arrayidx14412_kernel_2mm0_mult_x_q = {addsumAHighB_uid176_i_arrayidx14412_kernel_2mm0_mult_x_q, lowRangeB_uid174_i_arrayidx14412_kernel_2mm0_mult_x_merged_bit_select_b};

    // sR_mergedSignalTM_uid182_i_arrayidx14412_kernel_2mm0_mult_x(BITJOIN,181)@3
    assign sR_mergedSignalTM_uid182_i_arrayidx14412_kernel_2mm0_mult_x_q = {add_uid177_i_arrayidx14412_kernel_2mm0_mult_x_q, i_arrayidx14412_kernel_2mm0_mult_multconst_x_q};

    // i_arrayidx14412_kernel_2mm0_mult_extender_x(BITJOIN,105)@3
    assign i_arrayidx14412_kernel_2mm0_mult_extender_x_q = {i_arrayidx14412_kernel_2mm0_mult_multconst_x_q, sR_mergedSignalTM_uid182_i_arrayidx14412_kernel_2mm0_mult_x_q};

    // i_arrayidx14412_kernel_2mm0_dupName_1_trunc_sel_x(BITSELECT,109)@3
    assign i_arrayidx14412_kernel_2mm0_dupName_1_trunc_sel_x_b = i_arrayidx14412_kernel_2mm0_mult_extender_x_q[8:0];

    // redist11_i_arrayidx14412_kernel_2mm0_dupName_1_trunc_sel_x_b_1(DELAY,483)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_arrayidx14412_kernel_2mm0_dupName_1_trunc_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist11_i_arrayidx14412_kernel_2mm0_dupName_1_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx14412_kernel_2mm0_dupName_1_trunc_sel_x_b);
        end
    end

    // i_arrayidx14412_kernel_2mm0_add_x(ADD,89)@4
    assign i_arrayidx14412_kernel_2mm0_add_x_a = {1'b0, i_arrayidx14412_kernel_2mm0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx14412_kernel_2mm0_add_x_b = {1'b0, redist11_i_arrayidx14412_kernel_2mm0_dupName_1_trunc_sel_x_b_1_q};
    assign i_arrayidx14412_kernel_2mm0_add_x_o = $unsigned(i_arrayidx14412_kernel_2mm0_add_x_a) + $unsigned(i_arrayidx14412_kernel_2mm0_add_x_b);
    assign i_arrayidx14412_kernel_2mm0_add_x_q = i_arrayidx14412_kernel_2mm0_add_x_o[9:0];

    // i_arrayidx14412_kernel_2mm0_dupName_2_trunc_sel_x(BITSELECT,110)@4
    assign i_arrayidx14412_kernel_2mm0_dupName_2_trunc_sel_x_b = i_arrayidx14412_kernel_2mm0_add_x_q[8:0];

    // i_arrayidx14412_kernel_2mm0_dupName_0_add_x(ADD,99)@4
    assign i_arrayidx14412_kernel_2mm0_dupName_0_add_x_a = {1'b0, i_arrayidx14412_kernel_2mm0_dupName_2_trunc_sel_x_b};
    assign i_arrayidx14412_kernel_2mm0_dupName_0_add_x_b = {1'b0, i_arrayidx14412_kernel_2mm0_shift_join_x_q};
    assign i_arrayidx14412_kernel_2mm0_dupName_0_add_x_o = $unsigned(i_arrayidx14412_kernel_2mm0_dupName_0_add_x_a) + $unsigned(i_arrayidx14412_kernel_2mm0_dupName_0_add_x_b);
    assign i_arrayidx14412_kernel_2mm0_dupName_0_add_x_q = i_arrayidx14412_kernel_2mm0_dupName_0_add_x_o[9:0];

    // i_arrayidx14412_kernel_2mm0_dupName_5_trunc_sel_x(BITSELECT,112)@4
    assign i_arrayidx14412_kernel_2mm0_dupName_5_trunc_sel_x_b = i_arrayidx14412_kernel_2mm0_dupName_0_add_x_q[8:0];

    // i_arrayidx14412_kernel_2mm0_append_upper_bits_x(BITJOIN,90)@4
    assign i_arrayidx14412_kernel_2mm0_append_upper_bits_x_q = {i_arrayidx14412_kernel_2mm0_upper_bits_x_merged_bit_select_b, i_arrayidx14412_kernel_2mm0_dupName_5_trunc_sel_x_b};

    // i_arrayidx14412_kernel_2mm17_vt_select_63(BITSELECT,33)@4
    assign i_arrayidx14412_kernel_2mm17_vt_select_63_b = i_arrayidx14412_kernel_2mm0_append_upper_bits_x_q[63:2];

    // i_arrayidx14412_kernel_2mm17_vt_const_1(CONSTANT,31)
    assign i_arrayidx14412_kernel_2mm17_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx14412_kernel_2mm17_vt_join(BITJOIN,32)@4
    assign i_arrayidx14412_kernel_2mm17_vt_join_q = {i_arrayidx14412_kernel_2mm17_vt_select_63_b, i_arrayidx14412_kernel_2mm17_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_kernel_2mm21_kernel_2mm18(BLACKBOX,53)@4
    // in in_i_stall@20000000
    // out out_o_readdata@8
    // out out_o_stall@7
    // out out_o_valid@8
    // out out_unnamed_kernel_2mm21_kernel_2mm_avm_address@20000000
    // out out_unnamed_kernel_2mm21_kernel_2mm_avm_burstcount@20000000
    // out out_unnamed_kernel_2mm21_kernel_2mm_avm_byteenable@20000000
    // out out_unnamed_kernel_2mm21_kernel_2mm_avm_enable@20000000
    // out out_unnamed_kernel_2mm21_kernel_2mm_avm_read@20000000
    // out out_unnamed_kernel_2mm21_kernel_2mm_avm_write@20000000
    // out out_unnamed_kernel_2mm21_kernel_2mm_avm_writedata@20000000
    kernel_2mm_i_llvm_fpga_mem_unnamed_21_kernel_2mm0 thei_llvm_fpga_mem_unnamed_kernel_2mm21_kernel_2mm18 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx14412_kernel_2mm17_vt_join_q),
        .in_i_predicate(redist21_i_first_cleanup_xor_kernel_2mm4_q_2_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg7_q),
        .in_unnamed_kernel_2mm21_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm21_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm21_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm21_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm21_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm21_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm21_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm21_kernel_2mm_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_kernel_2mm21_kernel_2mm18_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_kernel_2mm21_kernel_2mm_avm_address(i_llvm_fpga_mem_unnamed_kernel_2mm21_kernel_2mm18_out_unnamed_kernel_2mm21_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm21_kernel_2mm_avm_burstcount(i_llvm_fpga_mem_unnamed_kernel_2mm21_kernel_2mm18_out_unnamed_kernel_2mm21_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm21_kernel_2mm_avm_byteenable(i_llvm_fpga_mem_unnamed_kernel_2mm21_kernel_2mm18_out_unnamed_kernel_2mm21_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm21_kernel_2mm_avm_enable(i_llvm_fpga_mem_unnamed_kernel_2mm21_kernel_2mm18_out_unnamed_kernel_2mm21_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm21_kernel_2mm_avm_read(i_llvm_fpga_mem_unnamed_kernel_2mm21_kernel_2mm18_out_unnamed_kernel_2mm21_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm21_kernel_2mm_avm_write(i_llvm_fpga_mem_unnamed_kernel_2mm21_kernel_2mm18_out_unnamed_kernel_2mm21_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm21_kernel_2mm_avm_writedata(i_llvm_fpga_mem_unnamed_kernel_2mm21_kernel_2mm18_out_unnamed_kernel_2mm21_kernel_2mm_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,86)
    assign out_unnamed_kernel_2mm21_kernel_2mm_avm_address = i_llvm_fpga_mem_unnamed_kernel_2mm21_kernel_2mm18_out_unnamed_kernel_2mm21_kernel_2mm_avm_address;
    assign out_unnamed_kernel_2mm21_kernel_2mm_avm_enable = i_llvm_fpga_mem_unnamed_kernel_2mm21_kernel_2mm18_out_unnamed_kernel_2mm21_kernel_2mm_avm_enable;
    assign out_unnamed_kernel_2mm21_kernel_2mm_avm_read = i_llvm_fpga_mem_unnamed_kernel_2mm21_kernel_2mm18_out_unnamed_kernel_2mm21_kernel_2mm_avm_read;
    assign out_unnamed_kernel_2mm21_kernel_2mm_avm_write = i_llvm_fpga_mem_unnamed_kernel_2mm21_kernel_2mm18_out_unnamed_kernel_2mm21_kernel_2mm_avm_write;
    assign out_unnamed_kernel_2mm21_kernel_2mm_avm_writedata = i_llvm_fpga_mem_unnamed_kernel_2mm21_kernel_2mm18_out_unnamed_kernel_2mm21_kernel_2mm_avm_writedata;
    assign out_unnamed_kernel_2mm21_kernel_2mm_avm_byteenable = i_llvm_fpga_mem_unnamed_kernel_2mm21_kernel_2mm18_out_unnamed_kernel_2mm21_kernel_2mm_avm_byteenable;
    assign out_unnamed_kernel_2mm21_kernel_2mm_avm_burstcount = i_llvm_fpga_mem_unnamed_kernel_2mm21_kernel_2mm18_out_unnamed_kernel_2mm21_kernel_2mm_avm_burstcount;

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

    // redist7_sync_together82_aunroll_x_in_i_valid_6(DELAY,479)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together82_aunroll_x_in_i_valid_6_delay_0 <= '0;
            redist7_sync_together82_aunroll_x_in_i_valid_6_delay_1 <= '0;
            redist7_sync_together82_aunroll_x_in_i_valid_6_q <= '0;
        end
        else
        begin
            redist7_sync_together82_aunroll_x_in_i_valid_6_delay_0 <= $unsigned(redist6_sync_together82_aunroll_x_in_i_valid_3_q);
            redist7_sync_together82_aunroll_x_in_i_valid_6_delay_1 <= redist7_sync_together82_aunroll_x_in_i_valid_6_delay_0;
            redist7_sync_together82_aunroll_x_in_i_valid_6_q <= redist7_sync_together82_aunroll_x_in_i_valid_6_delay_1;
        end
    end

    // valid_fanout_reg9(REG,152)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist7_sync_together82_aunroll_x_in_i_valid_6_q);
        end
    end

    // redist22_i_first_cleanup_xor_kernel_2mm4_q_6(DELAY,494)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_first_cleanup_xor_kernel_2mm4_q_6_delay_0 <= '0;
            redist22_i_first_cleanup_xor_kernel_2mm4_q_6_delay_1 <= '0;
            redist22_i_first_cleanup_xor_kernel_2mm4_q_6_delay_2 <= '0;
            redist22_i_first_cleanup_xor_kernel_2mm4_q_6_q <= '0;
        end
        else
        begin
            redist22_i_first_cleanup_xor_kernel_2mm4_q_6_delay_0 <= $unsigned(redist21_i_first_cleanup_xor_kernel_2mm4_q_2_q);
            redist22_i_first_cleanup_xor_kernel_2mm4_q_6_delay_1 <= redist22_i_first_cleanup_xor_kernel_2mm4_q_6_delay_0;
            redist22_i_first_cleanup_xor_kernel_2mm4_q_6_delay_2 <= redist22_i_first_cleanup_xor_kernel_2mm4_q_6_delay_1;
            redist22_i_first_cleanup_xor_kernel_2mm4_q_6_q <= redist22_i_first_cleanup_xor_kernel_2mm4_q_6_delay_2;
        end
    end

    // redist9_i_arrayidx148_kernel_2mm0_dupName_2_trunc_sel_x_b_4_notEnable(LOGICAL,500)
    assign redist9_i_arrayidx148_kernel_2mm0_dupName_2_trunc_sel_x_b_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist9_i_arrayidx148_kernel_2mm0_dupName_2_trunc_sel_x_b_4_nor(LOGICAL,501)
    assign redist9_i_arrayidx148_kernel_2mm0_dupName_2_trunc_sel_x_b_4_nor_q = ~ (redist9_i_arrayidx148_kernel_2mm0_dupName_2_trunc_sel_x_b_4_notEnable_q | redist9_i_arrayidx148_kernel_2mm0_dupName_2_trunc_sel_x_b_4_sticky_ena_q);

    // redist9_i_arrayidx148_kernel_2mm0_dupName_2_trunc_sel_x_b_4_cmpReg(REG,499)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_arrayidx148_kernel_2mm0_dupName_2_trunc_sel_x_b_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist9_i_arrayidx148_kernel_2mm0_dupName_2_trunc_sel_x_b_4_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist9_i_arrayidx148_kernel_2mm0_dupName_2_trunc_sel_x_b_4_sticky_ena(REG,502)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_arrayidx148_kernel_2mm0_dupName_2_trunc_sel_x_b_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist9_i_arrayidx148_kernel_2mm0_dupName_2_trunc_sel_x_b_4_nor_q == 1'b1)
        begin
            redist9_i_arrayidx148_kernel_2mm0_dupName_2_trunc_sel_x_b_4_sticky_ena_q <= $unsigned(redist9_i_arrayidx148_kernel_2mm0_dupName_2_trunc_sel_x_b_4_cmpReg_q);
        end
    end

    // redist9_i_arrayidx148_kernel_2mm0_dupName_2_trunc_sel_x_b_4_enaAnd(LOGICAL,503)
    assign redist9_i_arrayidx148_kernel_2mm0_dupName_2_trunc_sel_x_b_4_enaAnd_q = redist9_i_arrayidx148_kernel_2mm0_dupName_2_trunc_sel_x_b_4_sticky_ena_q & VCC_q;

    // redist9_i_arrayidx148_kernel_2mm0_dupName_2_trunc_sel_x_b_4_rdcnt(COUNTER,497)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_arrayidx148_kernel_2mm0_dupName_2_trunc_sel_x_b_4_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist9_i_arrayidx148_kernel_2mm0_dupName_2_trunc_sel_x_b_4_rdcnt_i <= $unsigned(redist9_i_arrayidx148_kernel_2mm0_dupName_2_trunc_sel_x_b_4_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist9_i_arrayidx148_kernel_2mm0_dupName_2_trunc_sel_x_b_4_rdcnt_q = redist9_i_arrayidx148_kernel_2mm0_dupName_2_trunc_sel_x_b_4_rdcnt_i[0:0];

    // i_arrayidx148_kernel_2mm0_narrow_x(BITSELECT,117)@4
    assign i_arrayidx148_kernel_2mm0_narrow_x_b = i_idxprom143_kernel_2mm16_vt_join_q[61:0];

    // i_arrayidx148_kernel_2mm0_shift_join_x(BITJOIN,118)@4
    assign i_arrayidx148_kernel_2mm0_shift_join_x_q = {i_arrayidx148_kernel_2mm0_narrow_x_b, i_arrayidx14412_kernel_2mm17_vt_const_1_q};

    // i_arrayidx148_kernel_2mm0_mult_multconst_x(CONSTANT,125)
    assign i_arrayidx148_kernel_2mm0_mult_multconst_x_q = $unsigned(58'b0000000000000000000000000000000000000000000000000000000000);

    // i_arrayidx148_kernel_2mm0_mult_x_bs1(BITSELECT,213)@3
    assign i_arrayidx148_kernel_2mm0_mult_x_bs1_b = i_idxprom141_kernel_2mm14_vt_join_q[63:54];

    // addsumAHighB_uid256_i_arrayidx148_kernel_2mm0_mult_x_im0(ADD,255)@3
    assign addsumAHighB_uid256_i_arrayidx148_kernel_2mm0_mult_x_im0_a = {1'b0, i_arrayidx148_kernel_2mm0_mult_x_bs1_b};
    assign addsumAHighB_uid256_i_arrayidx148_kernel_2mm0_mult_x_im0_b = {3'b000, lowRangeB_uid254_i_arrayidx148_kernel_2mm0_mult_x_im0_merged_bit_select_c};
    assign addsumAHighB_uid256_i_arrayidx148_kernel_2mm0_mult_x_im0_o = $unsigned(addsumAHighB_uid256_i_arrayidx148_kernel_2mm0_mult_x_im0_a) + $unsigned(addsumAHighB_uid256_i_arrayidx148_kernel_2mm0_mult_x_im0_b);
    assign addsumAHighB_uid256_i_arrayidx148_kernel_2mm0_mult_x_im0_q = addsumAHighB_uid256_i_arrayidx148_kernel_2mm0_mult_x_im0_o[10:0];

    // lowRangeB_uid254_i_arrayidx148_kernel_2mm0_mult_x_im0_merged_bit_select(BITSELECT,468)@3
    assign lowRangeB_uid254_i_arrayidx148_kernel_2mm0_mult_x_im0_merged_bit_select_b = i_arrayidx148_kernel_2mm0_mult_x_bs1_b[1:0];
    assign lowRangeB_uid254_i_arrayidx148_kernel_2mm0_mult_x_im0_merged_bit_select_c = i_arrayidx148_kernel_2mm0_mult_x_bs1_b[9:2];

    // add_uid257_i_arrayidx148_kernel_2mm0_mult_x_im0(BITJOIN,256)@3
    assign add_uid257_i_arrayidx148_kernel_2mm0_mult_x_im0_q = {addsumAHighB_uid256_i_arrayidx148_kernel_2mm0_mult_x_im0_q, lowRangeB_uid254_i_arrayidx148_kernel_2mm0_mult_x_im0_merged_bit_select_b};

    // sR_mergedSignalTM_uid262_i_arrayidx148_kernel_2mm0_mult_x_im0(BITJOIN,261)@3
    assign sR_mergedSignalTM_uid262_i_arrayidx148_kernel_2mm0_mult_x_im0_q = {add_uid257_i_arrayidx148_kernel_2mm0_mult_x_im0_q, i_arrayidx14412_kernel_2mm0_mult_multconst_x_q};

    // i_arrayidx148_kernel_2mm0_mult_x_sums_align_3(BITSHIFT,227)@3
    assign i_arrayidx148_kernel_2mm0_mult_x_sums_align_3_qint = { sR_mergedSignalTM_uid262_i_arrayidx148_kernel_2mm0_mult_x_im0_q, 12'b000000000000 };
    assign i_arrayidx148_kernel_2mm0_mult_x_sums_align_3_q = i_arrayidx148_kernel_2mm0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx148_kernel_2mm0_mult_x_bs7(BITSELECT,219)@3
    assign i_arrayidx148_kernel_2mm0_mult_x_bs7_in = i_idxprom141_kernel_2mm14_vt_join_q[35:0];
    assign i_arrayidx148_kernel_2mm0_mult_x_bs7_b = i_arrayidx148_kernel_2mm0_mult_x_bs7_in[35:18];

    // addsumAHighB_uid360_i_arrayidx148_kernel_2mm0_mult_x_im6(ADD,359)@3
    assign addsumAHighB_uid360_i_arrayidx148_kernel_2mm0_mult_x_im6_a = {1'b0, i_arrayidx148_kernel_2mm0_mult_x_bs7_b};
    assign addsumAHighB_uid360_i_arrayidx148_kernel_2mm0_mult_x_im6_b = {3'b000, lowRangeB_uid358_i_arrayidx148_kernel_2mm0_mult_x_im6_merged_bit_select_c};
    assign addsumAHighB_uid360_i_arrayidx148_kernel_2mm0_mult_x_im6_o = $unsigned(addsumAHighB_uid360_i_arrayidx148_kernel_2mm0_mult_x_im6_a) + $unsigned(addsumAHighB_uid360_i_arrayidx148_kernel_2mm0_mult_x_im6_b);
    assign addsumAHighB_uid360_i_arrayidx148_kernel_2mm0_mult_x_im6_q = addsumAHighB_uid360_i_arrayidx148_kernel_2mm0_mult_x_im6_o[18:0];

    // lowRangeB_uid358_i_arrayidx148_kernel_2mm0_mult_x_im6_merged_bit_select(BITSELECT,470)@3
    assign lowRangeB_uid358_i_arrayidx148_kernel_2mm0_mult_x_im6_merged_bit_select_b = i_arrayidx148_kernel_2mm0_mult_x_bs7_b[1:0];
    assign lowRangeB_uid358_i_arrayidx148_kernel_2mm0_mult_x_im6_merged_bit_select_c = i_arrayidx148_kernel_2mm0_mult_x_bs7_b[17:2];

    // add_uid361_i_arrayidx148_kernel_2mm0_mult_x_im6(BITJOIN,360)@3
    assign add_uid361_i_arrayidx148_kernel_2mm0_mult_x_im6_q = {addsumAHighB_uid360_i_arrayidx148_kernel_2mm0_mult_x_im6_q, lowRangeB_uid358_i_arrayidx148_kernel_2mm0_mult_x_im6_merged_bit_select_b};

    // sR_mergedSignalTM_uid366_i_arrayidx148_kernel_2mm0_mult_x_im6(BITJOIN,365)@3
    assign sR_mergedSignalTM_uid366_i_arrayidx148_kernel_2mm0_mult_x_im6_q = {add_uid361_i_arrayidx148_kernel_2mm0_mult_x_im6_q, i_arrayidx14412_kernel_2mm0_mult_multconst_x_q};

    // i_arrayidx148_kernel_2mm0_mult_x_sums_align_2(BITSHIFT,226)@3
    assign i_arrayidx148_kernel_2mm0_mult_x_sums_align_2_qint = { sR_mergedSignalTM_uid366_i_arrayidx148_kernel_2mm0_mult_x_im6_q, 18'b000000000000000000 };
    assign i_arrayidx148_kernel_2mm0_mult_x_sums_align_2_q = i_arrayidx148_kernel_2mm0_mult_x_sums_align_2_qint[41:0];

    // i_arrayidx148_kernel_2mm0_mult_x_sums_join_4(BITJOIN,228)@3
    assign i_arrayidx148_kernel_2mm0_mult_x_sums_join_4_q = {i_arrayidx148_kernel_2mm0_mult_x_sums_align_3_q, i_arrayidx148_kernel_2mm0_mult_x_sums_align_2_q};

    // i_arrayidx148_kernel_2mm0_mult_x_bs4(BITSELECT,216)@3
    assign i_arrayidx148_kernel_2mm0_mult_x_bs4_in = i_idxprom141_kernel_2mm14_vt_join_q[53:0];
    assign i_arrayidx148_kernel_2mm0_mult_x_bs4_b = i_arrayidx148_kernel_2mm0_mult_x_bs4_in[53:36];

    // addsumAHighB_uid302_i_arrayidx148_kernel_2mm0_mult_x_im3(ADD,301)@3
    assign addsumAHighB_uid302_i_arrayidx148_kernel_2mm0_mult_x_im3_a = {1'b0, i_arrayidx148_kernel_2mm0_mult_x_bs4_b};
    assign addsumAHighB_uid302_i_arrayidx148_kernel_2mm0_mult_x_im3_b = {3'b000, lowRangeB_uid300_i_arrayidx148_kernel_2mm0_mult_x_im3_merged_bit_select_c};
    assign addsumAHighB_uid302_i_arrayidx148_kernel_2mm0_mult_x_im3_o = $unsigned(addsumAHighB_uid302_i_arrayidx148_kernel_2mm0_mult_x_im3_a) + $unsigned(addsumAHighB_uid302_i_arrayidx148_kernel_2mm0_mult_x_im3_b);
    assign addsumAHighB_uid302_i_arrayidx148_kernel_2mm0_mult_x_im3_q = addsumAHighB_uid302_i_arrayidx148_kernel_2mm0_mult_x_im3_o[18:0];

    // lowRangeB_uid300_i_arrayidx148_kernel_2mm0_mult_x_im3_merged_bit_select(BITSELECT,469)@3
    assign lowRangeB_uid300_i_arrayidx148_kernel_2mm0_mult_x_im3_merged_bit_select_b = i_arrayidx148_kernel_2mm0_mult_x_bs4_b[1:0];
    assign lowRangeB_uid300_i_arrayidx148_kernel_2mm0_mult_x_im3_merged_bit_select_c = i_arrayidx148_kernel_2mm0_mult_x_bs4_b[17:2];

    // add_uid303_i_arrayidx148_kernel_2mm0_mult_x_im3(BITJOIN,302)@3
    assign add_uid303_i_arrayidx148_kernel_2mm0_mult_x_im3_q = {addsumAHighB_uid302_i_arrayidx148_kernel_2mm0_mult_x_im3_q, lowRangeB_uid300_i_arrayidx148_kernel_2mm0_mult_x_im3_merged_bit_select_b};

    // sR_mergedSignalTM_uid308_i_arrayidx148_kernel_2mm0_mult_x_im3(BITJOIN,307)@3
    assign sR_mergedSignalTM_uid308_i_arrayidx148_kernel_2mm0_mult_x_im3_q = {add_uid303_i_arrayidx148_kernel_2mm0_mult_x_im3_q, i_arrayidx14412_kernel_2mm0_mult_multconst_x_q};

    // i_arrayidx148_kernel_2mm0_mult_x_sums_align_0(BITSHIFT,224)@3
    assign i_arrayidx148_kernel_2mm0_mult_x_sums_align_0_qint = { sR_mergedSignalTM_uid308_i_arrayidx148_kernel_2mm0_mult_x_im3_q, 12'b000000000000 };
    assign i_arrayidx148_kernel_2mm0_mult_x_sums_align_0_q = i_arrayidx148_kernel_2mm0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx148_kernel_2mm0_mult_x_bs10(BITSELECT,222)@3
    assign i_arrayidx148_kernel_2mm0_mult_x_bs10_in = i_idxprom141_kernel_2mm14_vt_join_q[17:0];
    assign i_arrayidx148_kernel_2mm0_mult_x_bs10_b = i_arrayidx148_kernel_2mm0_mult_x_bs10_in[17:0];

    // addsumAHighB_uid418_i_arrayidx148_kernel_2mm0_mult_x_im9(ADD,417)@3
    assign addsumAHighB_uid418_i_arrayidx148_kernel_2mm0_mult_x_im9_a = {1'b0, i_arrayidx148_kernel_2mm0_mult_x_bs10_b};
    assign addsumAHighB_uid418_i_arrayidx148_kernel_2mm0_mult_x_im9_b = {3'b000, lowRangeB_uid416_i_arrayidx148_kernel_2mm0_mult_x_im9_merged_bit_select_c};
    assign addsumAHighB_uid418_i_arrayidx148_kernel_2mm0_mult_x_im9_o = $unsigned(addsumAHighB_uid418_i_arrayidx148_kernel_2mm0_mult_x_im9_a) + $unsigned(addsumAHighB_uid418_i_arrayidx148_kernel_2mm0_mult_x_im9_b);
    assign addsumAHighB_uid418_i_arrayidx148_kernel_2mm0_mult_x_im9_q = addsumAHighB_uid418_i_arrayidx148_kernel_2mm0_mult_x_im9_o[18:0];

    // lowRangeB_uid416_i_arrayidx148_kernel_2mm0_mult_x_im9_merged_bit_select(BITSELECT,471)@3
    assign lowRangeB_uid416_i_arrayidx148_kernel_2mm0_mult_x_im9_merged_bit_select_b = i_arrayidx148_kernel_2mm0_mult_x_bs10_b[1:0];
    assign lowRangeB_uid416_i_arrayidx148_kernel_2mm0_mult_x_im9_merged_bit_select_c = i_arrayidx148_kernel_2mm0_mult_x_bs10_b[17:2];

    // add_uid419_i_arrayidx148_kernel_2mm0_mult_x_im9(BITJOIN,418)@3
    assign add_uid419_i_arrayidx148_kernel_2mm0_mult_x_im9_q = {addsumAHighB_uid418_i_arrayidx148_kernel_2mm0_mult_x_im9_q, lowRangeB_uid416_i_arrayidx148_kernel_2mm0_mult_x_im9_merged_bit_select_b};

    // sR_mergedSignalTM_uid424_i_arrayidx148_kernel_2mm0_mult_x_im9(BITJOIN,423)@3
    assign sR_mergedSignalTM_uid424_i_arrayidx148_kernel_2mm0_mult_x_im9_q = {add_uid419_i_arrayidx148_kernel_2mm0_mult_x_im9_q, i_arrayidx14412_kernel_2mm0_mult_multconst_x_q};

    // i_arrayidx148_kernel_2mm0_mult_x_sums_join_1(BITJOIN,225)@3
    assign i_arrayidx148_kernel_2mm0_mult_x_sums_join_1_q = {i_arrayidx148_kernel_2mm0_mult_x_sums_align_0_q, sR_mergedSignalTM_uid424_i_arrayidx148_kernel_2mm0_mult_x_im9_q};

    // i_arrayidx148_kernel_2mm0_mult_x_sums_result_add_0_0(ADD,229)@3
    assign i_arrayidx148_kernel_2mm0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx148_kernel_2mm0_mult_x_sums_join_1_q};
    assign i_arrayidx148_kernel_2mm0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx148_kernel_2mm0_mult_x_sums_join_4_q};
    assign i_arrayidx148_kernel_2mm0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx148_kernel_2mm0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx148_kernel_2mm0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx148_kernel_2mm0_mult_x_sums_result_add_0_0_q = i_arrayidx148_kernel_2mm0_mult_x_sums_result_add_0_0_o[70:0];

    // i_arrayidx148_kernel_2mm0_mult_extender_x(BITJOIN,124)@3
    assign i_arrayidx148_kernel_2mm0_mult_extender_x_q = {i_arrayidx148_kernel_2mm0_mult_multconst_x_q, i_arrayidx148_kernel_2mm0_mult_x_sums_result_add_0_0_q[69:0]};

    // i_arrayidx148_kernel_2mm0_trunc_sel_x(BITSELECT,126)@3
    assign i_arrayidx148_kernel_2mm0_trunc_sel_x_b = i_arrayidx148_kernel_2mm0_mult_extender_x_q[63:0];

    // redist10_i_arrayidx148_kernel_2mm0_trunc_sel_x_b_1(DELAY,482)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_arrayidx148_kernel_2mm0_trunc_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist10_i_arrayidx148_kernel_2mm0_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx148_kernel_2mm0_trunc_sel_x_b);
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

    // i_llvm_fpga_ffwd_dest_p1024a10i32_d8137_kernel_2mm19(BLACKBOX,51)@4
    kernel_2mm_i_llvm_fpga_ffwd_dest_p1024a10i32_d8137_0 thei_llvm_fpga_ffwd_dest_p1024a10i32_d8137_kernel_2mm19 (
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_dest_data_out_5_0(i_llvm_fpga_ffwd_dest_p1024a10i32_d8137_kernel_2mm19_out_dest_data_out_5_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx148_kernel_2mm0_add_x(ADD,113)@4
    assign i_arrayidx148_kernel_2mm0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_p1024a10i32_d8137_kernel_2mm19_out_dest_data_out_5_0};
    assign i_arrayidx148_kernel_2mm0_add_x_b = {1'b0, redist10_i_arrayidx148_kernel_2mm0_trunc_sel_x_b_1_q};
    assign i_arrayidx148_kernel_2mm0_add_x_o = $unsigned(i_arrayidx148_kernel_2mm0_add_x_a) + $unsigned(i_arrayidx148_kernel_2mm0_add_x_b);
    assign i_arrayidx148_kernel_2mm0_add_x_q = i_arrayidx148_kernel_2mm0_add_x_o[64:0];

    // i_arrayidx148_kernel_2mm0_dupName_0_trunc_sel_x(BITSELECT,127)@4
    assign i_arrayidx148_kernel_2mm0_dupName_0_trunc_sel_x_b = i_arrayidx148_kernel_2mm0_add_x_q[63:0];

    // i_arrayidx148_kernel_2mm0_dupName_0_add_x(ADD,121)@4
    assign i_arrayidx148_kernel_2mm0_dupName_0_add_x_a = {1'b0, i_arrayidx148_kernel_2mm0_dupName_0_trunc_sel_x_b};
    assign i_arrayidx148_kernel_2mm0_dupName_0_add_x_b = {1'b0, i_arrayidx148_kernel_2mm0_shift_join_x_q};
    assign i_arrayidx148_kernel_2mm0_dupName_0_add_x_o = $unsigned(i_arrayidx148_kernel_2mm0_dupName_0_add_x_a) + $unsigned(i_arrayidx148_kernel_2mm0_dupName_0_add_x_b);
    assign i_arrayidx148_kernel_2mm0_dupName_0_add_x_q = i_arrayidx148_kernel_2mm0_dupName_0_add_x_o[64:0];

    // i_arrayidx148_kernel_2mm0_dupName_2_trunc_sel_x(BITSELECT,128)@4
    assign i_arrayidx148_kernel_2mm0_dupName_2_trunc_sel_x_b = i_arrayidx148_kernel_2mm0_dupName_0_add_x_q[63:0];

    // redist9_i_arrayidx148_kernel_2mm0_dupName_2_trunc_sel_x_b_4_inputreg0(DELAY,495)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_arrayidx148_kernel_2mm0_dupName_2_trunc_sel_x_b_4_inputreg0_q <= '0;
        end
        else
        begin
            redist9_i_arrayidx148_kernel_2mm0_dupName_2_trunc_sel_x_b_4_inputreg0_q <= $unsigned(i_arrayidx148_kernel_2mm0_dupName_2_trunc_sel_x_b);
        end
    end

    // redist9_i_arrayidx148_kernel_2mm0_dupName_2_trunc_sel_x_b_4_wraddr(REG,498)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_arrayidx148_kernel_2mm0_dupName_2_trunc_sel_x_b_4_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist9_i_arrayidx148_kernel_2mm0_dupName_2_trunc_sel_x_b_4_wraddr_q <= $unsigned(redist9_i_arrayidx148_kernel_2mm0_dupName_2_trunc_sel_x_b_4_rdcnt_q);
        end
    end

    // redist9_i_arrayidx148_kernel_2mm0_dupName_2_trunc_sel_x_b_4_mem(DUALMEM,496)
    assign redist9_i_arrayidx148_kernel_2mm0_dupName_2_trunc_sel_x_b_4_mem_ia = $unsigned(redist9_i_arrayidx148_kernel_2mm0_dupName_2_trunc_sel_x_b_4_inputreg0_q);
    assign redist9_i_arrayidx148_kernel_2mm0_dupName_2_trunc_sel_x_b_4_mem_aa = redist9_i_arrayidx148_kernel_2mm0_dupName_2_trunc_sel_x_b_4_wraddr_q;
    assign redist9_i_arrayidx148_kernel_2mm0_dupName_2_trunc_sel_x_b_4_mem_ab = redist9_i_arrayidx148_kernel_2mm0_dupName_2_trunc_sel_x_b_4_rdcnt_q;
    assign redist9_i_arrayidx148_kernel_2mm0_dupName_2_trunc_sel_x_b_4_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(64),
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
    ) redist9_i_arrayidx148_kernel_2mm0_dupName_2_trunc_sel_x_b_4_mem_dmem (
        .clocken1(redist9_i_arrayidx148_kernel_2mm0_dupName_2_trunc_sel_x_b_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist9_i_arrayidx148_kernel_2mm0_dupName_2_trunc_sel_x_b_4_mem_reset0),
        .clock1(clock),
        .address_a(redist9_i_arrayidx148_kernel_2mm0_dupName_2_trunc_sel_x_b_4_mem_aa),
        .data_a(redist9_i_arrayidx148_kernel_2mm0_dupName_2_trunc_sel_x_b_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist9_i_arrayidx148_kernel_2mm0_dupName_2_trunc_sel_x_b_4_mem_ab),
        .q_b(redist9_i_arrayidx148_kernel_2mm0_dupName_2_trunc_sel_x_b_4_mem_iq),
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
    assign redist9_i_arrayidx148_kernel_2mm0_dupName_2_trunc_sel_x_b_4_mem_q = redist9_i_arrayidx148_kernel_2mm0_dupName_2_trunc_sel_x_b_4_mem_iq[63:0];

    // i_llvm_fpga_mem_memdep_7_kernel_2mm21(BLACKBOX,52)@8
    // out out_lsu_memdep_7_o_active@20000000
    // out out_memdep_7_kernel_2mm_avm_address@20000000
    // out out_memdep_7_kernel_2mm_avm_burstcount@20000000
    // out out_memdep_7_kernel_2mm_avm_byteenable@20000000
    // out out_memdep_7_kernel_2mm_avm_enable@20000000
    // out out_memdep_7_kernel_2mm_avm_read@20000000
    // out out_memdep_7_kernel_2mm_avm_write@20000000
    // out out_memdep_7_kernel_2mm_avm_writedata@20000000
    // out out_o_stall@12
    // out out_o_valid@12
    // out out_o_writeack@12
    kernel_2mm_i_llvm_fpga_mem_memdep_7_0 thei_llvm_fpga_mem_memdep_7_kernel_2mm21 (
        .in_flush(in_flush),
        .in_i_address(redist9_i_arrayidx148_kernel_2mm0_dupName_2_trunc_sel_x_b_4_mem_q),
        .in_i_predicate(redist22_i_first_cleanup_xor_kernel_2mm4_q_6_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg9_q),
        .in_i_writedata(i_llvm_fpga_mem_unnamed_kernel_2mm21_kernel_2mm18_out_o_readdata),
        .in_memdep_7_kernel_2mm_avm_readdata(in_memdep_7_kernel_2mm_avm_readdata),
        .in_memdep_7_kernel_2mm_avm_readdatavalid(in_memdep_7_kernel_2mm_avm_readdatavalid),
        .in_memdep_7_kernel_2mm_avm_waitrequest(in_memdep_7_kernel_2mm_avm_waitrequest),
        .in_memdep_7_kernel_2mm_avm_writeack(in_memdep_7_kernel_2mm_avm_writeack),
        .out_lsu_memdep_7_o_active(i_llvm_fpga_mem_memdep_7_kernel_2mm21_out_lsu_memdep_7_o_active),
        .out_memdep_7_kernel_2mm_avm_address(i_llvm_fpga_mem_memdep_7_kernel_2mm21_out_memdep_7_kernel_2mm_avm_address),
        .out_memdep_7_kernel_2mm_avm_burstcount(i_llvm_fpga_mem_memdep_7_kernel_2mm21_out_memdep_7_kernel_2mm_avm_burstcount),
        .out_memdep_7_kernel_2mm_avm_byteenable(i_llvm_fpga_mem_memdep_7_kernel_2mm21_out_memdep_7_kernel_2mm_avm_byteenable),
        .out_memdep_7_kernel_2mm_avm_enable(i_llvm_fpga_mem_memdep_7_kernel_2mm21_out_memdep_7_kernel_2mm_avm_enable),
        .out_memdep_7_kernel_2mm_avm_read(i_llvm_fpga_mem_memdep_7_kernel_2mm21_out_memdep_7_kernel_2mm_avm_read),
        .out_memdep_7_kernel_2mm_avm_write(i_llvm_fpga_mem_memdep_7_kernel_2mm21_out_memdep_7_kernel_2mm_avm_write),
        .out_memdep_7_kernel_2mm_avm_writedata(i_llvm_fpga_mem_memdep_7_kernel_2mm21_out_memdep_7_kernel_2mm_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_ext_sig_sync_out_x(GPOUT,87)
    assign out_memdep_7_kernel_2mm_avm_address = i_llvm_fpga_mem_memdep_7_kernel_2mm21_out_memdep_7_kernel_2mm_avm_address;
    assign out_memdep_7_kernel_2mm_avm_enable = i_llvm_fpga_mem_memdep_7_kernel_2mm21_out_memdep_7_kernel_2mm_avm_enable;
    assign out_memdep_7_kernel_2mm_avm_read = i_llvm_fpga_mem_memdep_7_kernel_2mm21_out_memdep_7_kernel_2mm_avm_read;
    assign out_memdep_7_kernel_2mm_avm_write = i_llvm_fpga_mem_memdep_7_kernel_2mm21_out_memdep_7_kernel_2mm_avm_write;
    assign out_memdep_7_kernel_2mm_avm_writedata = i_llvm_fpga_mem_memdep_7_kernel_2mm21_out_memdep_7_kernel_2mm_avm_writedata;
    assign out_memdep_7_kernel_2mm_avm_byteenable = i_llvm_fpga_mem_memdep_7_kernel_2mm21_out_memdep_7_kernel_2mm_avm_byteenable;
    assign out_memdep_7_kernel_2mm_avm_burstcount = i_llvm_fpga_mem_memdep_7_kernel_2mm21_out_memdep_7_kernel_2mm_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,88)
    assign out_lsu_memdep_7_o_active = i_llvm_fpga_mem_memdep_7_kernel_2mm21_out_lsu_memdep_7_o_active;

    // redist8_sync_together82_aunroll_x_in_i_valid_10(DELAY,480)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together82_aunroll_x_in_i_valid_10_delay_0 <= '0;
            redist8_sync_together82_aunroll_x_in_i_valid_10_delay_1 <= '0;
            redist8_sync_together82_aunroll_x_in_i_valid_10_delay_2 <= '0;
            redist8_sync_together82_aunroll_x_in_i_valid_10_q <= '0;
        end
        else
        begin
            redist8_sync_together82_aunroll_x_in_i_valid_10_delay_0 <= $unsigned(redist7_sync_together82_aunroll_x_in_i_valid_6_q);
            redist8_sync_together82_aunroll_x_in_i_valid_10_delay_1 <= redist8_sync_together82_aunroll_x_in_i_valid_10_delay_0;
            redist8_sync_together82_aunroll_x_in_i_valid_10_delay_2 <= redist8_sync_together82_aunroll_x_in_i_valid_10_delay_1;
            redist8_sync_together82_aunroll_x_in_i_valid_10_q <= redist8_sync_together82_aunroll_x_in_i_valid_10_delay_2;
        end
    end

    // valid_fanout_reg0(REG,143)@11 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist8_sync_together82_aunroll_x_in_i_valid_10_q);
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

    // redist19_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_4(DELAY,491)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_4_q <= '0;
        end
        else
        begin
            redist19_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_4_q <= $unsigned(redist18_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_3_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp39131_push46_kernel_2mm36(BLACKBOX,62)@5
    // out out_feedback_out_46@20000000
    // out out_feedback_valid_out_46@20000000
    kernel_2mm_i_llvm_fpga_push_i1_notcmp39131_push46_0 thei_llvm_fpga_push_i1_notcmp39131_push46_kernel_2mm36 (
        .in_data_in(redist14_i_llvm_fpga_pop_i1_notcmp39131_pop46_kernel_2mm35_out_data_out_1_q),
        .in_feedback_stall_in_46(i_llvm_fpga_pop_i1_notcmp39131_pop46_kernel_2mm35_out_feedback_stall_out_46),
        .in_keep_going(redist19_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_4_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(),
        .out_feedback_out_46(i_llvm_fpga_push_i1_notcmp39131_push46_kernel_2mm36_out_feedback_out_46),
        .out_feedback_valid_out_46(i_llvm_fpga_push_i1_notcmp39131_push46_kernel_2mm36_out_feedback_valid_out_46),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together82_aunroll_x_in_c0_eni3334_3_tpl_3(DELAY,475)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together82_aunroll_x_in_c0_eni3334_3_tpl_3_delay_0 <= '0;
            redist3_sync_together82_aunroll_x_in_c0_eni3334_3_tpl_3_delay_1 <= '0;
            redist3_sync_together82_aunroll_x_in_c0_eni3334_3_tpl_3_q <= '0;
        end
        else
        begin
            redist3_sync_together82_aunroll_x_in_c0_eni3334_3_tpl_3_delay_0 <= $unsigned(in_c0_eni3334_3_tpl);
            redist3_sync_together82_aunroll_x_in_c0_eni3334_3_tpl_3_delay_1 <= redist3_sync_together82_aunroll_x_in_c0_eni3334_3_tpl_3_delay_0;
            redist3_sync_together82_aunroll_x_in_c0_eni3334_3_tpl_3_q <= redist3_sync_together82_aunroll_x_in_c0_eni3334_3_tpl_3_delay_1;
        end
    end

    // i_llvm_fpga_pop_i1_notcmp39131_pop46_kernel_2mm35(BLACKBOX,55)@4
    // out out_feedback_stall_out_46@20000000
    kernel_2mm_i_llvm_fpga_pop_i1_notcmp39131_pop46_0 thei_llvm_fpga_pop_i1_notcmp39131_pop46_kernel_2mm35 (
        .in_data_in(redist3_sync_together82_aunroll_x_in_c0_eni3334_3_tpl_3_q),
        .in_dir(redist1_sync_together82_aunroll_x_in_c0_eni3334_1_tpl_3_q),
        .in_feedback_in_46(i_llvm_fpga_push_i1_notcmp39131_push46_kernel_2mm36_out_feedback_out_46),
        .in_feedback_valid_in_46(i_llvm_fpga_push_i1_notcmp39131_push46_kernel_2mm36_out_feedback_valid_out_46),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp39131_pop46_kernel_2mm35_out_data_out),
        .out_feedback_stall_out_46(i_llvm_fpga_pop_i1_notcmp39131_pop46_kernel_2mm35_out_feedback_stall_out_46),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist14_i_llvm_fpga_pop_i1_notcmp39131_pop46_kernel_2mm35_out_data_out_1(DELAY,486)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_llvm_fpga_pop_i1_notcmp39131_pop46_kernel_2mm35_out_data_out_1_q <= '0;
        end
        else
        begin
            redist14_i_llvm_fpga_pop_i1_notcmp39131_pop46_kernel_2mm35_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_notcmp39131_pop46_kernel_2mm35_out_data_out);
        end
    end

    // redist15_i_llvm_fpga_pop_i1_notcmp39131_pop46_kernel_2mm35_out_data_out_8(DELAY,487)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist15_i_llvm_fpga_pop_i1_notcmp39131_pop46_kernel_2mm35_out_data_out_8 ( .xin(redist14_i_llvm_fpga_pop_i1_notcmp39131_pop46_kernel_2mm35_out_data_out_1_q), .xout(redist15_i_llvm_fpga_pop_i1_notcmp39131_pop46_kernel_2mm35_out_data_out_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_masked_kernel_2mm34(LOGICAL,69)@2 + 1
    assign i_masked_kernel_2mm34_qi = i_notcmp_kernel_2mm27_q & i_first_cleanup_kernel_2mm3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_kernel_2mm34_delay ( .xin(i_masked_kernel_2mm34_qi), .xout(i_masked_kernel_2mm34_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist12_i_masked_kernel_2mm34_q_10(DELAY,484)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist12_i_masked_kernel_2mm34_q_10 ( .xin(i_masked_kernel_2mm34_q), .xout(redist12_i_masked_kernel_2mm34_q_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist20_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_11(DELAY,492)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist20_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_11 ( .xin(redist19_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_4_q), .xout(redist20_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_11_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,141)@12
    assign out_c0_exi3341_0_tpl = GND_q;
    assign out_c0_exi3341_1_tpl = redist20_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_11_q;
    assign out_c0_exi3341_2_tpl = redist12_i_masked_kernel_2mm34_q_10_q;
    assign out_c0_exi3341_3_tpl = redist15_i_llvm_fpga_pop_i1_notcmp39131_pop46_kernel_2mm35_out_data_out_8_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_kernel_2mm1 = GND_q;

endmodule
