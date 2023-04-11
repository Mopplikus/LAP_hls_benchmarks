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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body44_kernel_2mms_c0_enter14816_kernel_2mm0
// Created for function/kernel kernel_2mm
// SystemVerilog created on Fri Apr  7 18:35:51 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_2mm_i_sfc_logic_s_c0_in_for_body40000ter14816_kernel_2mm0 (
    input wire [31:0] in_unnamed_kernel_2mm10_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm10_kernel_2mm_avm_writeack,
    input wire [0:0] in_unnamed_kernel_2mm10_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm10_kernel_2mm_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going18_kernel_2mm2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going18_kernel_2mm2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [31:0] in_intel_reserved_ffwd_1_0,
    output wire [31:0] out_unnamed_kernel_2mm10_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm10_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm10_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm10_kernel_2mm_avm_write,
    output wire [31:0] out_unnamed_kernel_2mm10_kernel_2mm_avm_writedata,
    output wire [3:0] out_unnamed_kernel_2mm10_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm10_kernel_2mm_avm_burstcount,
    output wire [0:0] out_c0_exi9160_0_tpl,
    output wire [63:0] out_c0_exi9160_1_tpl,
    output wire [63:0] out_c0_exi9160_2_tpl,
    output wire [63:0] out_c0_exi9160_3_tpl,
    output wire [31:0] out_c0_exi9160_4_tpl,
    output wire [0:0] out_c0_exi9160_5_tpl,
    output wire [0:0] out_c0_exi9160_6_tpl,
    output wire [0:0] out_c0_exi9160_7_tpl,
    output wire [63:0] out_c0_exi9160_8_tpl,
    output wire [0:0] out_c0_exi9160_9_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_kernel_2mm1,
    input wire [0:0] in_c0_eni3147_0_tpl,
    input wire [0:0] in_c0_eni3147_1_tpl,
    input wire [63:0] in_c0_eni3147_2_tpl,
    input wire [0:0] in_c0_eni3147_3_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_036_q;
    wire [31:0] c_i32_140_q;
    wire [4:0] c_i5_139_q;
    wire [4:0] c_i5_837_q;
    wire [63:0] c_kernel_2mm_D_local_pmem_q;
    wire [1:0] i_arrayidx494_kernel_2mm6_vt_const_1_q;
    wire [63:0] i_arrayidx494_kernel_2mm6_vt_join_q;
    wire [61:0] i_arrayidx494_kernel_2mm6_vt_select_63_b;
    wire [5:0] i_fpga_indvars_iv_next9_kernel_2mm16_a;
    wire [5:0] i_fpga_indvars_iv_next9_kernel_2mm16_b;
    logic [5:0] i_fpga_indvars_iv_next9_kernel_2mm16_o;
    wire [5:0] i_fpga_indvars_iv_next9_kernel_2mm16_q;
    wire [63:0] i_idxprom48_kernel_2mm4_vt_join_q;
    wire [31:0] i_idxprom48_kernel_2mm4_vt_select_31_b;
    wire [32:0] i_inc74_kernel_2mm18_a;
    wire [32:0] i_inc74_kernel_2mm18_b;
    logic [32:0] i_inc74_kernel_2mm18_o;
    wire [32:0] i_inc74_kernel_2mm18_q;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_beta4215_kernel_2mm8_out_dest_data_out_1_0;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_2mm10_kernel_2mm7_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_2mm10_kernel_2mm7_out_unnamed_kernel_2mm10_kernel_2mm_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_2mm10_kernel_2mm7_out_unnamed_kernel_2mm10_kernel_2mm_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_kernel_2mm10_kernel_2mm7_out_unnamed_kernel_2mm10_kernel_2mm_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_2mm10_kernel_2mm7_out_unnamed_kernel_2mm10_kernel_2mm_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_2mm10_kernel_2mm7_out_unnamed_kernel_2mm10_kernel_2mm_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_2mm10_kernel_2mm7_out_unnamed_kernel_2mm10_kernel_2mm_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_2mm10_kernel_2mm7_out_unnamed_kernel_2mm10_kernel_2mm_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going18_kernel_2mm2_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going18_kernel_2mm2_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going18_kernel_2mm2_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going18_kernel_2mm2_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp4255_pop22_kernel_2mm20_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp4255_pop22_kernel_2mm20_out_feedback_stall_out_22;
    wire [31:0] i_llvm_fpga_pop_i32_j40_035_pop21_kernel_2mm3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j40_035_pop21_kernel_2mm3_out_feedback_stall_out_21;
    wire [4:0] i_llvm_fpga_pop_i5_fpga_indvars_iv8_pop20_kernel_2mm10_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i5_fpga_indvars_iv8_pop20_kernel_2mm10_out_feedback_stall_out_20;
    wire [63:0] i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_feedback_stall_out_23;
    wire [0:0] i_llvm_fpga_push_i1_notcmp4255_push22_kernel_2mm21_out_feedback_out_22;
    wire [0:0] i_llvm_fpga_push_i1_notcmp4255_push22_kernel_2mm21_out_feedback_valid_out_22;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond19_kernel_2mm15_out_feedback_out_5;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond19_kernel_2mm15_out_feedback_valid_out_5;
    wire [31:0] i_llvm_fpga_push_i32_j40_035_push21_kernel_2mm19_out_feedback_out_21;
    wire [0:0] i_llvm_fpga_push_i32_j40_035_push21_kernel_2mm19_out_feedback_valid_out_21;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv8_push20_kernel_2mm17_out_feedback_out_20;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv8_push20_kernel_2mm17_out_feedback_valid_out_20;
    wire [63:0] i_llvm_fpga_push_i64_idxprom60_push23_kernel_2mm13_out_feedback_out_23;
    wire [0:0] i_llvm_fpga_push_i64_idxprom60_push23_kernel_2mm13_out_feedback_valid_out_23;
    wire [0:0] i_notcmp16_kernel_2mm14_q;
    wire [4:0] bgTrunc_i_fpga_indvars_iv_next9_kernel_2mm16_sel_x_b;
    wire [31:0] bgTrunc_i_inc74_kernel_2mm18_sel_x_b;
    wire [63:0] bgTrunc_i_mul50_kernel_2mm9_sel_x_in;
    wire [31:0] bgTrunc_i_mul50_kernel_2mm9_sel_x_b;
    wire [9:0] i_arrayidx494_kernel_2mm0_add_x_a;
    wire [9:0] i_arrayidx494_kernel_2mm0_add_x_b;
    logic [9:0] i_arrayidx494_kernel_2mm0_add_x_o;
    wire [9:0] i_arrayidx494_kernel_2mm0_add_x_q;
    wire [63:0] i_arrayidx494_kernel_2mm0_append_upper_bits_x_q;
    wire [6:0] i_arrayidx494_kernel_2mm0_narrow_x_b;
    wire [8:0] i_arrayidx494_kernel_2mm0_shift_join_x_q;
    wire [9:0] i_arrayidx494_kernel_2mm0_dupName_0_add_x_a;
    wire [9:0] i_arrayidx494_kernel_2mm0_dupName_0_add_x_b;
    logic [9:0] i_arrayidx494_kernel_2mm0_dupName_0_add_x_o;
    wire [9:0] i_arrayidx494_kernel_2mm0_dupName_0_add_x_q;
    wire [17:0] i_arrayidx494_kernel_2mm0_mult_extender_x_q;
    wire [2:0] i_arrayidx494_kernel_2mm0_mult_multconst_x_q;
    wire [8:0] i_arrayidx494_kernel_2mm0_dupName_0_trunc_sel_x_b;
    wire [8:0] i_arrayidx494_kernel_2mm0_dupName_1_trunc_sel_x_b;
    wire [8:0] i_arrayidx494_kernel_2mm0_dupName_2_trunc_sel_x_b;
    wire [8:0] i_arrayidx494_kernel_2mm0_dupName_3_trunc_sel_x_b;
    wire [8:0] i_arrayidx494_kernel_2mm0_dupName_5_trunc_sel_x_b;
    wire [63:0] i_idxprom48_kernel_2mm4_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg7_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg8_q;
    wire [0:0] i_exitcond10_kernel_2mm11_cmp_nsign_q;
    wire [63:0] i_mul50_kernel_2mm9_sums_join_0_q;
    wire [50:0] i_mul50_kernel_2mm9_sums_align_1_q;
    wire [50:0] i_mul50_kernel_2mm9_sums_align_1_qint;
    wire [64:0] i_mul50_kernel_2mm9_sums_result_add_0_0_a;
    wire [64:0] i_mul50_kernel_2mm9_sums_result_add_0_0_b;
    logic [64:0] i_mul50_kernel_2mm9_sums_result_add_0_0_o;
    wire [64:0] i_mul50_kernel_2mm9_sums_result_add_0_0_q;
    wire [9:0] addsumAHighB_uid129_i_arrayidx494_kernel_2mm0_mult_x_a;
    wire [9:0] addsumAHighB_uid129_i_arrayidx494_kernel_2mm0_mult_x_b;
    logic [9:0] addsumAHighB_uid129_i_arrayidx494_kernel_2mm0_mult_x_o;
    wire [9:0] addsumAHighB_uid129_i_arrayidx494_kernel_2mm0_mult_x_q;
    wire [11:0] add_uid130_i_arrayidx494_kernel_2mm0_mult_x_q;
    wire [14:0] sR_mergedSignalTM_uid135_i_arrayidx494_kernel_2mm0_mult_x_q;
    wire i_mul50_kernel_2mm9_im0_cma_reset;
    wire [13:0] i_mul50_kernel_2mm9_im0_cma_a0;
    wire [13:0] i_mul50_kernel_2mm9_im0_cma_c0;
    wire [27:0] i_mul50_kernel_2mm9_im0_cma_s0;
    wire [27:0] i_mul50_kernel_2mm9_im0_cma_qq;
    wire [27:0] i_mul50_kernel_2mm9_im0_cma_q;
    wire i_mul50_kernel_2mm9_im0_cma_ena0;
    wire i_mul50_kernel_2mm9_im0_cma_ena1;
    wire i_mul50_kernel_2mm9_im0_cma_ena2;
    wire i_mul50_kernel_2mm9_im8_cma_reset;
    wire [17:0] i_mul50_kernel_2mm9_im8_cma_a0;
    wire [17:0] i_mul50_kernel_2mm9_im8_cma_c0;
    wire [35:0] i_mul50_kernel_2mm9_im8_cma_s0;
    wire [35:0] i_mul50_kernel_2mm9_im8_cma_qq;
    wire [35:0] i_mul50_kernel_2mm9_im8_cma_q;
    wire i_mul50_kernel_2mm9_im8_cma_ena0;
    wire i_mul50_kernel_2mm9_im8_cma_ena1;
    wire i_mul50_kernel_2mm9_im8_cma_ena2;
    wire i_mul50_kernel_2mm9_ma3_cma_reset;
    wire [13:0] i_mul50_kernel_2mm9_ma3_cma_a0;
    wire [17:0] i_mul50_kernel_2mm9_ma3_cma_c0;
    wire [13:0] i_mul50_kernel_2mm9_ma3_cma_a1;
    wire [17:0] i_mul50_kernel_2mm9_ma3_cma_c1;
    wire [32:0] i_mul50_kernel_2mm9_ma3_cma_s0;
    wire [32:0] i_mul50_kernel_2mm9_ma3_cma_qq;
    wire [32:0] i_mul50_kernel_2mm9_ma3_cma_q;
    wire i_mul50_kernel_2mm9_ma3_cma_ena0;
    wire i_mul50_kernel_2mm9_ma3_cma_ena1;
    wire i_mul50_kernel_2mm9_ma3_cma_ena2;
    wire [54:0] i_arrayidx494_kernel_2mm0_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx494_kernel_2mm0_upper_bits_x_merged_bit_select_c;
    wire [13:0] i_mul50_kernel_2mm9_bs2_merged_bit_select_b;
    wire [17:0] i_mul50_kernel_2mm9_bs2_merged_bit_select_c;
    wire [13:0] i_mul50_kernel_2mm9_bs1_merged_bit_select_b;
    wire [17:0] i_mul50_kernel_2mm9_bs1_merged_bit_select_c;
    wire [1:0] lowRangeB_uid127_i_arrayidx494_kernel_2mm0_mult_x_merged_bit_select_b;
    wire [6:0] lowRangeB_uid127_i_arrayidx494_kernel_2mm0_mult_x_merged_bit_select_c;
    reg [0:0] redist0_i_exitcond10_kernel_2mm11_cmp_nsign_q_1_q;
    reg [0:0] redist1_i_exitcond10_kernel_2mm11_cmp_nsign_q_2_q;
    reg [0:0] redist2_i_exitcond10_kernel_2mm11_cmp_nsign_q_3_q;
    reg [0:0] redist3_i_exitcond10_kernel_2mm11_cmp_nsign_q_9_q;
    reg [0:0] redist4_sync_together57_aunroll_x_in_c0_eni3147_1_tpl_1_q;
    reg [0:0] redist5_sync_together57_aunroll_x_in_c0_eni3147_1_tpl_2_q;
    reg [63:0] redist6_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_1_q;
    reg [0:0] redist8_sync_together57_aunroll_x_in_c0_eni3147_3_tpl_2_q;
    reg [0:0] redist8_sync_together57_aunroll_x_in_c0_eni3147_3_tpl_2_delay_0;
    reg [0:0] redist9_sync_together57_aunroll_x_in_c0_eni3147_3_tpl_9_q;
    reg [0:0] redist10_sync_together57_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist11_sync_together57_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist12_sync_together57_aunroll_x_in_i_valid_5_q;
    reg [0:0] redist12_sync_together57_aunroll_x_in_i_valid_5_delay_0;
    reg [0:0] redist12_sync_together57_aunroll_x_in_i_valid_5_delay_1;
    reg [0:0] redist13_sync_together57_aunroll_x_in_i_valid_8_q;
    reg [0:0] redist13_sync_together57_aunroll_x_in_i_valid_8_delay_0;
    reg [0:0] redist13_sync_together57_aunroll_x_in_i_valid_8_delay_1;
    reg [8:0] redist14_i_arrayidx494_kernel_2mm0_dupName_1_trunc_sel_x_b_1_q;
    reg [0:0] redist16_i_llvm_fpga_pop_i1_notcmp4255_pop22_kernel_2mm20_out_data_out_1_q;
    reg [0:0] redist17_i_llvm_fpga_pop_i1_notcmp4255_pop22_kernel_2mm20_out_data_out_7_q;
    wire redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_mem_reset0;
    wire [63:0] redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_mem_ia;
    wire [2:0] redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_mem_aa;
    wire [2:0] redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_mem_ab;
    wire [63:0] redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_mem_iq;
    wire [63:0] redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_mem_q;
    wire [2:0] redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_rdcnt_q;
    (* preserve *) reg [2:0] redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_rdcnt_i;
    (* preserve *) reg redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_rdcnt_eq;
    reg [2:0] redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_wraddr_q;
    wire [3:0] redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_mem_last_q;
    wire [3:0] redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_cmp_b;
    wire [0:0] redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_cmp_q;
    (* dont_merge *) reg [0:0] redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_cmpReg_q;
    wire [0:0] redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_notEnable_q;
    wire [0:0] redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_nor_q;
    (* dont_merge *) reg [0:0] redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_sticky_ena_q;
    wire [0:0] redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_enaAnd_q;
    wire redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_mem_reset0;
    wire [63:0] redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_mem_ia;
    wire [2:0] redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_mem_aa;
    wire [2:0] redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_mem_ab;
    wire [63:0] redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_mem_iq;
    wire [63:0] redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_mem_q;
    wire [2:0] redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_rdcnt_q;
    (* preserve *) reg [2:0] redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_rdcnt_i;
    (* preserve *) reg redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_rdcnt_eq;
    reg [2:0] redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_wraddr_q;
    wire [3:0] redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_mem_last_q;
    wire [3:0] redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_cmp_b;
    wire [0:0] redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_cmp_q;
    (* dont_merge *) reg [0:0] redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_cmpReg_q;
    wire [0:0] redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_notEnable_q;
    wire [0:0] redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_nor_q;
    (* dont_merge *) reg [0:0] redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_sticky_ena_q;
    wire [0:0] redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_enaAnd_q;
    reg [63:0] redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_inputreg0_q;
    wire redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_mem_reset0;
    wire [63:0] redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_mem_ia;
    wire [2:0] redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_mem_aa;
    wire [2:0] redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_mem_ab;
    wire [63:0] redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_mem_iq;
    wire [63:0] redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_mem_q;
    wire [2:0] redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_rdcnt_q;
    (* preserve *) reg [2:0] redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_rdcnt_i;
    (* preserve *) reg redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_rdcnt_eq;
    reg [2:0] redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_wraddr_q;
    wire [2:0] redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_mem_last_q;
    wire [0:0] redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_cmp_q;
    (* dont_merge *) reg [0:0] redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_cmpReg_q;
    wire [0:0] redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_notEnable_q;
    wire [0:0] redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_nor_q;
    (* dont_merge *) reg [0:0] redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_sticky_ena_q;
    wire [0:0] redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_enaAnd_q;
    reg [63:0] redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_inputreg0_q;
    wire redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_mem_reset0;
    wire [63:0] redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_mem_ia;
    wire [2:0] redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_mem_aa;
    wire [2:0] redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_mem_ab;
    wire [63:0] redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_mem_iq;
    wire [63:0] redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_mem_q;
    wire [2:0] redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_rdcnt_q;
    (* preserve *) reg [2:0] redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_rdcnt_i;
    (* preserve *) reg redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_rdcnt_eq;
    reg [2:0] redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_wraddr_q;
    wire [2:0] redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_mem_last_q;
    wire [0:0] redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_cmp_q;
    (* dont_merge *) reg [0:0] redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_cmpReg_q;
    wire [0:0] redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_notEnable_q;
    wire [0:0] redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_nor_q;
    (* dont_merge *) reg [0:0] redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_sticky_ena_q;
    wire [0:0] redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_enaAnd_q;


    // c_i5_139(CONSTANT,22)
    assign c_i5_139_q = $unsigned(5'b11111);

    // i_fpga_indvars_iv_next9_kernel_2mm16(ADD,31)@1
    assign i_fpga_indvars_iv_next9_kernel_2mm16_a = {1'b0, i_llvm_fpga_pop_i5_fpga_indvars_iv8_pop20_kernel_2mm10_out_data_out};
    assign i_fpga_indvars_iv_next9_kernel_2mm16_b = {1'b0, c_i5_139_q};
    assign i_fpga_indvars_iv_next9_kernel_2mm16_o = $unsigned(i_fpga_indvars_iv_next9_kernel_2mm16_a) + $unsigned(i_fpga_indvars_iv_next9_kernel_2mm16_b);
    assign i_fpga_indvars_iv_next9_kernel_2mm16_q = i_fpga_indvars_iv_next9_kernel_2mm16_o[5:0];

    // bgTrunc_i_fpga_indvars_iv_next9_kernel_2mm16_sel_x(BITSELECT,57)@1
    assign bgTrunc_i_fpga_indvars_iv_next9_kernel_2mm16_sel_x_b = i_fpga_indvars_iv_next9_kernel_2mm16_q[4:0];

    // i_llvm_fpga_push_i5_fpga_indvars_iv8_push20_kernel_2mm17(BLACKBOX,47)@1
    // out out_feedback_out_20@20000000
    // out out_feedback_valid_out_20@20000000
    kernel_2mm_i_llvm_fpga_push_i5_fpga_indvars_iv8_push20_0 thei_llvm_fpga_push_i5_fpga_indvars_iv8_push20_kernel_2mm17 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next9_kernel_2mm16_sel_x_b),
        .in_exitcond10(i_exitcond10_kernel_2mm11_cmp_nsign_q),
        .in_feedback_stall_in_20(i_llvm_fpga_pop_i5_fpga_indvars_iv8_pop20_kernel_2mm10_out_feedback_stall_out_20),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_20(i_llvm_fpga_push_i5_fpga_indvars_iv8_push20_kernel_2mm17_out_feedback_out_20),
        .out_feedback_valid_out_20(i_llvm_fpga_push_i5_fpga_indvars_iv8_push20_kernel_2mm17_out_feedback_valid_out_20),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i5_837(CONSTANT,23)
    assign c_i5_837_q = $unsigned(5'b01000);

    // i_llvm_fpga_pop_i5_fpga_indvars_iv8_pop20_kernel_2mm10(BLACKBOX,42)@1
    // out out_feedback_stall_out_20@20000000
    kernel_2mm_i_llvm_fpga_pop_i5_fpga_indvars_iv8_pop20_0 thei_llvm_fpga_pop_i5_fpga_indvars_iv8_pop20_kernel_2mm10 (
        .in_data_in(c_i5_837_q),
        .in_dir(in_c0_eni3147_1_tpl),
        .in_feedback_in_20(i_llvm_fpga_push_i5_fpga_indvars_iv8_push20_kernel_2mm17_out_feedback_out_20),
        .in_feedback_valid_in_20(i_llvm_fpga_push_i5_fpga_indvars_iv8_push20_kernel_2mm17_out_feedback_valid_out_20),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i5_fpga_indvars_iv8_pop20_kernel_2mm10_out_data_out),
        .out_feedback_stall_out_20(i_llvm_fpga_pop_i5_fpga_indvars_iv8_pop20_kernel_2mm10_out_feedback_stall_out_20),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond10_kernel_2mm11_cmp_nsign(LOGICAL,103)@1
    assign i_exitcond10_kernel_2mm11_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i5_fpga_indvars_iv8_pop20_kernel_2mm10_out_data_out[4:4]));

    // i_llvm_fpga_push_i1_notexitcond19_kernel_2mm15(BLACKBOX,45)@1
    // out out_feedback_out_5@20000000
    // out out_feedback_valid_out_5@20000000
    kernel_2mm_i_llvm_fpga_push_i1_notexitcond19_0 thei_llvm_fpga_push_i1_notexitcond19_kernel_2mm15 (
        .in_data_in(i_exitcond10_kernel_2mm11_cmp_nsign_q),
        .in_feedback_stall_in_5(i_llvm_fpga_pipeline_keep_going18_kernel_2mm2_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_5(i_llvm_fpga_push_i1_notexitcond19_kernel_2mm15_out_feedback_out_5),
        .out_feedback_valid_out_5(i_llvm_fpga_push_i1_notexitcond19_kernel_2mm15_out_feedback_valid_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_llvm_fpga_pipeline_keep_going18_kernel_2mm2(BLACKBOX,39)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    kernel_2mm_i_llvm_fpga_pipeline_keep_going18_0 thei_llvm_fpga_pipeline_keep_going18_kernel_2mm2 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond19_kernel_2mm15_out_feedback_out_5),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond19_kernel_2mm15_out_feedback_valid_out_5),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going18_kernel_2mm2_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going18_kernel_2mm2_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going18_kernel_2mm2_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going18_kernel_2mm2_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,26)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going18_kernel_2mm2_exiting_valid_out = i_llvm_fpga_pipeline_keep_going18_kernel_2mm2_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going18_kernel_2mm2_exiting_stall_out = i_llvm_fpga_pipeline_keep_going18_kernel_2mm2_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,53)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going18_kernel_2mm2_out_pipeline_valid_out;

    // redist10_sync_together57_aunroll_x_in_i_valid_1(DELAY,182)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together57_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist10_sync_together57_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg3(REG,92)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist10_sync_together57_aunroll_x_in_i_valid_1_q);
        end
    end

    // c_kernel_2mm_D_local_pmem(CONSTANT,24)
    assign c_kernel_2mm_D_local_pmem_q = $unsigned(64'b0100000001000100000000000000000000000000000000000000000000000000);

    // i_arrayidx494_kernel_2mm0_upper_bits_x_merged_bit_select(BITSELECT,168)@3
    assign i_arrayidx494_kernel_2mm0_upper_bits_x_merged_bit_select_b = c_kernel_2mm_D_local_pmem_q[63:9];
    assign i_arrayidx494_kernel_2mm0_upper_bits_x_merged_bit_select_c = c_kernel_2mm_D_local_pmem_q[8:0];

    // c_i32_036(CONSTANT,20)
    assign c_i32_036_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg1(REG,90)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist10_sync_together57_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg6(REG,95)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist10_sync_together57_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist0_i_exitcond10_kernel_2mm11_cmp_nsign_q_1(DELAY,172)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_exitcond10_kernel_2mm11_cmp_nsign_q_1_q <= '0;
        end
        else
        begin
            redist0_i_exitcond10_kernel_2mm11_cmp_nsign_q_1_q <= $unsigned(i_exitcond10_kernel_2mm11_cmp_nsign_q);
        end
    end

    // redist1_i_exitcond10_kernel_2mm11_cmp_nsign_q_2(DELAY,173)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_exitcond10_kernel_2mm11_cmp_nsign_q_2_q <= '0;
        end
        else
        begin
            redist1_i_exitcond10_kernel_2mm11_cmp_nsign_q_2_q <= $unsigned(redist0_i_exitcond10_kernel_2mm11_cmp_nsign_q_1_q);
        end
    end

    // c_i32_140(CONSTANT,21)
    assign c_i32_140_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc74_kernel_2mm18(ADD,36)@3
    assign i_inc74_kernel_2mm18_a = {1'b0, i_llvm_fpga_pop_i32_j40_035_pop21_kernel_2mm3_out_data_out};
    assign i_inc74_kernel_2mm18_b = {1'b0, c_i32_140_q};
    assign i_inc74_kernel_2mm18_o = $unsigned(i_inc74_kernel_2mm18_a) + $unsigned(i_inc74_kernel_2mm18_b);
    assign i_inc74_kernel_2mm18_q = i_inc74_kernel_2mm18_o[32:0];

    // bgTrunc_i_inc74_kernel_2mm18_sel_x(BITSELECT,58)@3
    assign bgTrunc_i_inc74_kernel_2mm18_sel_x_b = i_inc74_kernel_2mm18_q[31:0];

    // i_llvm_fpga_push_i32_j40_035_push21_kernel_2mm19(BLACKBOX,46)@3
    // out out_feedback_out_21@20000000
    // out out_feedback_valid_out_21@20000000
    kernel_2mm_i_llvm_fpga_push_i32_j40_035_push21_0 thei_llvm_fpga_push_i32_j40_035_push21_kernel_2mm19 (
        .in_data_in(bgTrunc_i_inc74_kernel_2mm18_sel_x_b),
        .in_exitcond10(redist1_i_exitcond10_kernel_2mm11_cmp_nsign_q_2_q),
        .in_feedback_stall_in_21(i_llvm_fpga_pop_i32_j40_035_pop21_kernel_2mm3_out_feedback_stall_out_21),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_21(i_llvm_fpga_push_i32_j40_035_push21_kernel_2mm19_out_feedback_out_21),
        .out_feedback_valid_out_21(i_llvm_fpga_push_i32_j40_035_push21_kernel_2mm19_out_feedback_valid_out_21),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_sync_together57_aunroll_x_in_c0_eni3147_1_tpl_1(DELAY,176)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together57_aunroll_x_in_c0_eni3147_1_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together57_aunroll_x_in_c0_eni3147_1_tpl_1_q <= $unsigned(in_c0_eni3147_1_tpl);
        end
    end

    // redist5_sync_together57_aunroll_x_in_c0_eni3147_1_tpl_2(DELAY,177)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together57_aunroll_x_in_c0_eni3147_1_tpl_2_q <= '0;
        end
        else
        begin
            redist5_sync_together57_aunroll_x_in_c0_eni3147_1_tpl_2_q <= $unsigned(redist4_sync_together57_aunroll_x_in_c0_eni3147_1_tpl_1_q);
        end
    end

    // i_llvm_fpga_pop_i32_j40_035_pop21_kernel_2mm3(BLACKBOX,41)@3
    // out out_feedback_stall_out_21@20000000
    kernel_2mm_i_llvm_fpga_pop_i32_j40_035_pop21_0 thei_llvm_fpga_pop_i32_j40_035_pop21_kernel_2mm3 (
        .in_data_in(c_i32_036_q),
        .in_dir(redist5_sync_together57_aunroll_x_in_c0_eni3147_1_tpl_2_q),
        .in_feedback_in_21(i_llvm_fpga_push_i32_j40_035_push21_kernel_2mm19_out_feedback_out_21),
        .in_feedback_valid_in_21(i_llvm_fpga_push_i32_j40_035_push21_kernel_2mm19_out_feedback_valid_out_21),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i32_j40_035_pop21_kernel_2mm3_out_data_out),
        .out_feedback_stall_out_21(i_llvm_fpga_pop_i32_j40_035_pop21_kernel_2mm3_out_feedback_stall_out_21),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom48_kernel_2mm4_sel_x(BITSELECT,86)@3
    assign i_idxprom48_kernel_2mm4_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_j40_035_pop21_kernel_2mm3_out_data_out[31:0]};

    // i_idxprom48_kernel_2mm4_vt_select_31(BITSELECT,35)@3
    assign i_idxprom48_kernel_2mm4_vt_select_31_b = i_idxprom48_kernel_2mm4_sel_x_b[31:0];

    // i_idxprom48_kernel_2mm4_vt_join(BITJOIN,34)@3
    assign i_idxprom48_kernel_2mm4_vt_join_q = {c_i32_036_q, i_idxprom48_kernel_2mm4_vt_select_31_b};

    // i_arrayidx494_kernel_2mm0_dupName_3_trunc_sel_x(BITSELECT,84)@3
    assign i_arrayidx494_kernel_2mm0_dupName_3_trunc_sel_x_b = i_idxprom48_kernel_2mm4_vt_join_q[8:0];

    // i_arrayidx494_kernel_2mm0_narrow_x(BITSELECT,67)@3
    assign i_arrayidx494_kernel_2mm0_narrow_x_b = i_arrayidx494_kernel_2mm0_dupName_3_trunc_sel_x_b[6:0];

    // i_arrayidx494_kernel_2mm0_shift_join_x(BITJOIN,68)@3
    assign i_arrayidx494_kernel_2mm0_shift_join_x_q = {i_arrayidx494_kernel_2mm0_narrow_x_b, i_arrayidx494_kernel_2mm6_vt_const_1_q};

    // i_arrayidx494_kernel_2mm0_mult_multconst_x(CONSTANT,79)
    assign i_arrayidx494_kernel_2mm0_mult_multconst_x_q = $unsigned(3'b000);

    // valid_fanout_reg2(REG,91)@1 + 1
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

    // valid_fanout_reg5(REG,94)@1 + 1
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

    // i_llvm_fpga_push_i64_idxprom60_push23_kernel_2mm13(BLACKBOX,48)@2
    // out out_feedback_out_23@20000000
    // out out_feedback_valid_out_23@20000000
    kernel_2mm_i_llvm_fpga_push_i64_idxprom60_push23_0 thei_llvm_fpga_push_i64_idxprom60_push23_kernel_2mm13 (
        .in_data_in(i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out),
        .in_exitcond10(redist0_i_exitcond10_kernel_2mm11_cmp_nsign_q_1_q),
        .in_feedback_stall_in_23(i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_feedback_stall_out_23),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_23(i_llvm_fpga_push_i64_idxprom60_push23_kernel_2mm13_out_feedback_out_23),
        .out_feedback_valid_out_23(i_llvm_fpga_push_i64_idxprom60_push23_kernel_2mm13_out_feedback_valid_out_23),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_1(DELAY,178)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_1_q <= '0;
        end
        else
        begin
            redist6_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_1_q <= $unsigned(in_c0_eni3147_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5(BLACKBOX,43)@2
    // out out_feedback_stall_out_23@20000000
    kernel_2mm_i_llvm_fpga_pop_i64_idxprom60_pop23_0 thei_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5 (
        .in_data_in(redist6_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_1_q),
        .in_dir(redist4_sync_together57_aunroll_x_in_c0_eni3147_1_tpl_1_q),
        .in_feedback_in_23(i_llvm_fpga_push_i64_idxprom60_push23_kernel_2mm13_out_feedback_out_23),
        .in_feedback_valid_in_23(i_llvm_fpga_push_i64_idxprom60_push23_kernel_2mm13_out_feedback_valid_out_23),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out),
        .out_feedback_stall_out_23(i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_feedback_stall_out_23),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx494_kernel_2mm0_dupName_0_trunc_sel_x(BITSELECT,81)@2
    assign i_arrayidx494_kernel_2mm0_dupName_0_trunc_sel_x_b = i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out[8:0];

    // addsumAHighB_uid129_i_arrayidx494_kernel_2mm0_mult_x(ADD,128)@2
    assign addsumAHighB_uid129_i_arrayidx494_kernel_2mm0_mult_x_a = {1'b0, i_arrayidx494_kernel_2mm0_dupName_0_trunc_sel_x_b};
    assign addsumAHighB_uid129_i_arrayidx494_kernel_2mm0_mult_x_b = {3'b000, lowRangeB_uid127_i_arrayidx494_kernel_2mm0_mult_x_merged_bit_select_c};
    assign addsumAHighB_uid129_i_arrayidx494_kernel_2mm0_mult_x_o = $unsigned(addsumAHighB_uid129_i_arrayidx494_kernel_2mm0_mult_x_a) + $unsigned(addsumAHighB_uid129_i_arrayidx494_kernel_2mm0_mult_x_b);
    assign addsumAHighB_uid129_i_arrayidx494_kernel_2mm0_mult_x_q = addsumAHighB_uid129_i_arrayidx494_kernel_2mm0_mult_x_o[9:0];

    // lowRangeB_uid127_i_arrayidx494_kernel_2mm0_mult_x_merged_bit_select(BITSELECT,171)@2
    assign lowRangeB_uid127_i_arrayidx494_kernel_2mm0_mult_x_merged_bit_select_b = i_arrayidx494_kernel_2mm0_dupName_0_trunc_sel_x_b[1:0];
    assign lowRangeB_uid127_i_arrayidx494_kernel_2mm0_mult_x_merged_bit_select_c = i_arrayidx494_kernel_2mm0_dupName_0_trunc_sel_x_b[8:2];

    // add_uid130_i_arrayidx494_kernel_2mm0_mult_x(BITJOIN,129)@2
    assign add_uid130_i_arrayidx494_kernel_2mm0_mult_x_q = {addsumAHighB_uid129_i_arrayidx494_kernel_2mm0_mult_x_q, lowRangeB_uid127_i_arrayidx494_kernel_2mm0_mult_x_merged_bit_select_b};

    // sR_mergedSignalTM_uid135_i_arrayidx494_kernel_2mm0_mult_x(BITJOIN,134)@2
    assign sR_mergedSignalTM_uid135_i_arrayidx494_kernel_2mm0_mult_x_q = {add_uid130_i_arrayidx494_kernel_2mm0_mult_x_q, i_arrayidx494_kernel_2mm0_mult_multconst_x_q};

    // i_arrayidx494_kernel_2mm0_mult_extender_x(BITJOIN,78)@2
    assign i_arrayidx494_kernel_2mm0_mult_extender_x_q = {i_arrayidx494_kernel_2mm0_mult_multconst_x_q, sR_mergedSignalTM_uid135_i_arrayidx494_kernel_2mm0_mult_x_q};

    // i_arrayidx494_kernel_2mm0_dupName_1_trunc_sel_x(BITSELECT,82)@2
    assign i_arrayidx494_kernel_2mm0_dupName_1_trunc_sel_x_b = i_arrayidx494_kernel_2mm0_mult_extender_x_q[8:0];

    // redist14_i_arrayidx494_kernel_2mm0_dupName_1_trunc_sel_x_b_1(DELAY,186)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_arrayidx494_kernel_2mm0_dupName_1_trunc_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist14_i_arrayidx494_kernel_2mm0_dupName_1_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx494_kernel_2mm0_dupName_1_trunc_sel_x_b);
        end
    end

    // i_arrayidx494_kernel_2mm0_add_x(ADD,62)@3
    assign i_arrayidx494_kernel_2mm0_add_x_a = {1'b0, i_arrayidx494_kernel_2mm0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx494_kernel_2mm0_add_x_b = {1'b0, redist14_i_arrayidx494_kernel_2mm0_dupName_1_trunc_sel_x_b_1_q};
    assign i_arrayidx494_kernel_2mm0_add_x_o = $unsigned(i_arrayidx494_kernel_2mm0_add_x_a) + $unsigned(i_arrayidx494_kernel_2mm0_add_x_b);
    assign i_arrayidx494_kernel_2mm0_add_x_q = i_arrayidx494_kernel_2mm0_add_x_o[9:0];

    // i_arrayidx494_kernel_2mm0_dupName_2_trunc_sel_x(BITSELECT,83)@3
    assign i_arrayidx494_kernel_2mm0_dupName_2_trunc_sel_x_b = i_arrayidx494_kernel_2mm0_add_x_q[8:0];

    // i_arrayidx494_kernel_2mm0_dupName_0_add_x(ADD,72)@3
    assign i_arrayidx494_kernel_2mm0_dupName_0_add_x_a = {1'b0, i_arrayidx494_kernel_2mm0_dupName_2_trunc_sel_x_b};
    assign i_arrayidx494_kernel_2mm0_dupName_0_add_x_b = {1'b0, i_arrayidx494_kernel_2mm0_shift_join_x_q};
    assign i_arrayidx494_kernel_2mm0_dupName_0_add_x_o = $unsigned(i_arrayidx494_kernel_2mm0_dupName_0_add_x_a) + $unsigned(i_arrayidx494_kernel_2mm0_dupName_0_add_x_b);
    assign i_arrayidx494_kernel_2mm0_dupName_0_add_x_q = i_arrayidx494_kernel_2mm0_dupName_0_add_x_o[9:0];

    // i_arrayidx494_kernel_2mm0_dupName_5_trunc_sel_x(BITSELECT,85)@3
    assign i_arrayidx494_kernel_2mm0_dupName_5_trunc_sel_x_b = i_arrayidx494_kernel_2mm0_dupName_0_add_x_q[8:0];

    // i_arrayidx494_kernel_2mm0_append_upper_bits_x(BITJOIN,63)@3
    assign i_arrayidx494_kernel_2mm0_append_upper_bits_x_q = {i_arrayidx494_kernel_2mm0_upper_bits_x_merged_bit_select_b, i_arrayidx494_kernel_2mm0_dupName_5_trunc_sel_x_b};

    // i_arrayidx494_kernel_2mm6_vt_select_63(BITSELECT,29)@3
    assign i_arrayidx494_kernel_2mm6_vt_select_63_b = i_arrayidx494_kernel_2mm0_append_upper_bits_x_q[63:2];

    // i_arrayidx494_kernel_2mm6_vt_const_1(CONSTANT,27)
    assign i_arrayidx494_kernel_2mm6_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx494_kernel_2mm6_vt_join(BITJOIN,28)@3
    assign i_arrayidx494_kernel_2mm6_vt_join_q = {i_arrayidx494_kernel_2mm6_vt_select_63_b, i_arrayidx494_kernel_2mm6_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_kernel_2mm10_kernel_2mm7(BLACKBOX,38)@3
    // in in_i_stall@20000000
    // out out_o_readdata@7
    // out out_o_stall@6
    // out out_o_valid@7
    // out out_unnamed_kernel_2mm10_kernel_2mm_avm_address@20000000
    // out out_unnamed_kernel_2mm10_kernel_2mm_avm_burstcount@20000000
    // out out_unnamed_kernel_2mm10_kernel_2mm_avm_byteenable@20000000
    // out out_unnamed_kernel_2mm10_kernel_2mm_avm_enable@20000000
    // out out_unnamed_kernel_2mm10_kernel_2mm_avm_read@20000000
    // out out_unnamed_kernel_2mm10_kernel_2mm_avm_write@20000000
    // out out_unnamed_kernel_2mm10_kernel_2mm_avm_writedata@20000000
    kernel_2mm_i_llvm_fpga_mem_unnamed_10_kernel_2mm0 thei_llvm_fpga_mem_unnamed_kernel_2mm10_kernel_2mm7 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx494_kernel_2mm6_vt_join_q),
        .in_i_predicate(GND_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg3_q),
        .in_unnamed_kernel_2mm10_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm10_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm10_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm10_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm10_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm10_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm10_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm10_kernel_2mm_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_kernel_2mm10_kernel_2mm7_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_address(i_llvm_fpga_mem_unnamed_kernel_2mm10_kernel_2mm7_out_unnamed_kernel_2mm10_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_burstcount(i_llvm_fpga_mem_unnamed_kernel_2mm10_kernel_2mm7_out_unnamed_kernel_2mm10_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_byteenable(i_llvm_fpga_mem_unnamed_kernel_2mm10_kernel_2mm7_out_unnamed_kernel_2mm10_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_enable(i_llvm_fpga_mem_unnamed_kernel_2mm10_kernel_2mm7_out_unnamed_kernel_2mm10_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_read(i_llvm_fpga_mem_unnamed_kernel_2mm10_kernel_2mm7_out_unnamed_kernel_2mm10_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_write(i_llvm_fpga_mem_unnamed_kernel_2mm10_kernel_2mm7_out_unnamed_kernel_2mm10_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_writedata(i_llvm_fpga_mem_unnamed_kernel_2mm10_kernel_2mm7_out_unnamed_kernel_2mm10_kernel_2mm_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,61)
    assign out_unnamed_kernel_2mm10_kernel_2mm_avm_address = i_llvm_fpga_mem_unnamed_kernel_2mm10_kernel_2mm7_out_unnamed_kernel_2mm10_kernel_2mm_avm_address;
    assign out_unnamed_kernel_2mm10_kernel_2mm_avm_enable = i_llvm_fpga_mem_unnamed_kernel_2mm10_kernel_2mm7_out_unnamed_kernel_2mm10_kernel_2mm_avm_enable;
    assign out_unnamed_kernel_2mm10_kernel_2mm_avm_read = i_llvm_fpga_mem_unnamed_kernel_2mm10_kernel_2mm7_out_unnamed_kernel_2mm10_kernel_2mm_avm_read;
    assign out_unnamed_kernel_2mm10_kernel_2mm_avm_write = i_llvm_fpga_mem_unnamed_kernel_2mm10_kernel_2mm7_out_unnamed_kernel_2mm10_kernel_2mm_avm_write;
    assign out_unnamed_kernel_2mm10_kernel_2mm_avm_writedata = i_llvm_fpga_mem_unnamed_kernel_2mm10_kernel_2mm7_out_unnamed_kernel_2mm10_kernel_2mm_avm_writedata;
    assign out_unnamed_kernel_2mm10_kernel_2mm_avm_byteenable = i_llvm_fpga_mem_unnamed_kernel_2mm10_kernel_2mm7_out_unnamed_kernel_2mm10_kernel_2mm_avm_byteenable;
    assign out_unnamed_kernel_2mm10_kernel_2mm_avm_burstcount = i_llvm_fpga_mem_unnamed_kernel_2mm10_kernel_2mm7_out_unnamed_kernel_2mm10_kernel_2mm_avm_burstcount;

    // redist11_sync_together57_aunroll_x_in_i_valid_2(DELAY,183)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together57_aunroll_x_in_i_valid_2_q <= '0;
        end
        else
        begin
            redist11_sync_together57_aunroll_x_in_i_valid_2_q <= $unsigned(redist10_sync_together57_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist12_sync_together57_aunroll_x_in_i_valid_5(DELAY,184)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together57_aunroll_x_in_i_valid_5_delay_0 <= '0;
            redist12_sync_together57_aunroll_x_in_i_valid_5_delay_1 <= '0;
            redist12_sync_together57_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist12_sync_together57_aunroll_x_in_i_valid_5_delay_0 <= $unsigned(redist11_sync_together57_aunroll_x_in_i_valid_2_q);
            redist12_sync_together57_aunroll_x_in_i_valid_5_delay_1 <= redist12_sync_together57_aunroll_x_in_i_valid_5_delay_0;
            redist12_sync_together57_aunroll_x_in_i_valid_5_q <= redist12_sync_together57_aunroll_x_in_i_valid_5_delay_1;
        end
    end

    // redist13_sync_together57_aunroll_x_in_i_valid_8(DELAY,185)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together57_aunroll_x_in_i_valid_8_delay_0 <= '0;
            redist13_sync_together57_aunroll_x_in_i_valid_8_delay_1 <= '0;
            redist13_sync_together57_aunroll_x_in_i_valid_8_q <= '0;
        end
        else
        begin
            redist13_sync_together57_aunroll_x_in_i_valid_8_delay_0 <= $unsigned(redist12_sync_together57_aunroll_x_in_i_valid_5_q);
            redist13_sync_together57_aunroll_x_in_i_valid_8_delay_1 <= redist13_sync_together57_aunroll_x_in_i_valid_8_delay_0;
            redist13_sync_together57_aunroll_x_in_i_valid_8_q <= redist13_sync_together57_aunroll_x_in_i_valid_8_delay_1;
        end
    end

    // valid_fanout_reg0(REG,89)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist13_sync_together57_aunroll_x_in_i_valid_8_q);
        end
    end

    // redist8_sync_together57_aunroll_x_in_c0_eni3147_3_tpl_2(DELAY,180)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together57_aunroll_x_in_c0_eni3147_3_tpl_2_delay_0 <= '0;
            redist8_sync_together57_aunroll_x_in_c0_eni3147_3_tpl_2_q <= '0;
        end
        else
        begin
            redist8_sync_together57_aunroll_x_in_c0_eni3147_3_tpl_2_delay_0 <= $unsigned(in_c0_eni3147_3_tpl);
            redist8_sync_together57_aunroll_x_in_c0_eni3147_3_tpl_2_q <= redist8_sync_together57_aunroll_x_in_c0_eni3147_3_tpl_2_delay_0;
        end
    end

    // redist9_sync_together57_aunroll_x_in_c0_eni3147_3_tpl_9(DELAY,181)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist9_sync_together57_aunroll_x_in_c0_eni3147_3_tpl_9 ( .xin(redist8_sync_together57_aunroll_x_in_c0_eni3147_3_tpl_2_q), .xout(redist9_sync_together57_aunroll_x_in_c0_eni3147_3_tpl_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_notEnable(LOGICAL,198)
    assign redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_notEnable_q = $unsigned(~ (VCC_q));

    // redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_nor(LOGICAL,199)
    assign redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_nor_q = ~ (redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_notEnable_q | redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_sticky_ena_q);

    // redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_mem_last(CONSTANT,195)
    assign redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_mem_last_q = $unsigned(4'b0101);

    // redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_cmp(LOGICAL,196)
    assign redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_cmp_b = {1'b0, redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_rdcnt_q};
    assign redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_cmp_q = $unsigned(redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_mem_last_q == redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_cmp_b ? 1'b1 : 1'b0);

    // redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_cmpReg(REG,197)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_cmpReg_q <= $unsigned(redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_cmp_q);
        end
    end

    // redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_sticky_ena(REG,200)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_nor_q == 1'b1)
        begin
            redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_sticky_ena_q <= $unsigned(redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_cmpReg_q);
        end
    end

    // redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_enaAnd(LOGICAL,201)
    assign redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_enaAnd_q = redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_sticky_ena_q & VCC_q;

    // redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_rdcnt(COUNTER,193)
    // low=0, high=6, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_rdcnt_i <= 3'd0;
            redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_rdcnt_i == 3'd5)
            begin
                redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_rdcnt_eq <= 1'b0;
            end
            if (redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_rdcnt_eq == 1'b1)
            begin
                redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_rdcnt_i <= $unsigned(redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_rdcnt_i) + $unsigned(3'd2);
            end
            else
            begin
                redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_rdcnt_i <= $unsigned(redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_rdcnt_q = redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_rdcnt_i[2:0];

    // redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_wraddr(REG,194)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_wraddr_q <= $unsigned(3'b110);
        end
        else
        begin
            redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_wraddr_q <= $unsigned(redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_rdcnt_q);
        end
    end

    // redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_mem(DUALMEM,192)
    assign redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_mem_ia = $unsigned(redist6_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_1_q);
    assign redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_mem_aa = redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_wraddr_q;
    assign redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_mem_ab = redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_rdcnt_q;
    assign redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(3),
        .numwords_a(7),
        .width_b(64),
        .widthad_b(3),
        .numwords_b(7),
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
    ) redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_mem_dmem (
        .clocken1(redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_mem_reset0),
        .clock1(clock),
        .address_a(redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_mem_aa),
        .data_a(redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_mem_ab),
        .q_b(redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_mem_iq),
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
    assign redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_mem_q = redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_mem_iq[63:0];

    // valid_fanout_reg7(REG,96)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist10_sync_together57_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg8(REG,97)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist11_sync_together57_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist2_i_exitcond10_kernel_2mm11_cmp_nsign_q_3(DELAY,174)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_exitcond10_kernel_2mm11_cmp_nsign_q_3_q <= '0;
        end
        else
        begin
            redist2_i_exitcond10_kernel_2mm11_cmp_nsign_q_3_q <= $unsigned(redist1_i_exitcond10_kernel_2mm11_cmp_nsign_q_2_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp4255_push22_kernel_2mm21(BLACKBOX,44)@4
    // out out_feedback_out_22@20000000
    // out out_feedback_valid_out_22@20000000
    kernel_2mm_i_llvm_fpga_push_i1_notcmp4255_push22_0 thei_llvm_fpga_push_i1_notcmp4255_push22_kernel_2mm21 (
        .in_data_in(redist16_i_llvm_fpga_pop_i1_notcmp4255_pop22_kernel_2mm20_out_data_out_1_q),
        .in_exitcond10(redist2_i_exitcond10_kernel_2mm11_cmp_nsign_q_3_q),
        .in_feedback_stall_in_22(i_llvm_fpga_pop_i1_notcmp4255_pop22_kernel_2mm20_out_feedback_stall_out_22),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_22(i_llvm_fpga_push_i1_notcmp4255_push22_kernel_2mm21_out_feedback_out_22),
        .out_feedback_valid_out_22(i_llvm_fpga_push_i1_notcmp4255_push22_kernel_2mm21_out_feedback_valid_out_22),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_notcmp4255_pop22_kernel_2mm20(BLACKBOX,40)@3
    // out out_feedback_stall_out_22@20000000
    kernel_2mm_i_llvm_fpga_pop_i1_notcmp4255_pop22_0 thei_llvm_fpga_pop_i1_notcmp4255_pop22_kernel_2mm20 (
        .in_data_in(redist8_sync_together57_aunroll_x_in_c0_eni3147_3_tpl_2_q),
        .in_dir(redist5_sync_together57_aunroll_x_in_c0_eni3147_1_tpl_2_q),
        .in_feedback_in_22(i_llvm_fpga_push_i1_notcmp4255_push22_kernel_2mm21_out_feedback_out_22),
        .in_feedback_valid_in_22(i_llvm_fpga_push_i1_notcmp4255_push22_kernel_2mm21_out_feedback_valid_out_22),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp4255_pop22_kernel_2mm20_out_data_out),
        .out_feedback_stall_out_22(i_llvm_fpga_pop_i1_notcmp4255_pop22_kernel_2mm20_out_feedback_stall_out_22),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist16_i_llvm_fpga_pop_i1_notcmp4255_pop22_kernel_2mm20_out_data_out_1(DELAY,188)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_llvm_fpga_pop_i1_notcmp4255_pop22_kernel_2mm20_out_data_out_1_q <= '0;
        end
        else
        begin
            redist16_i_llvm_fpga_pop_i1_notcmp4255_pop22_kernel_2mm20_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_notcmp4255_pop22_kernel_2mm20_out_data_out);
        end
    end

    // redist17_i_llvm_fpga_pop_i1_notcmp4255_pop22_kernel_2mm20_out_data_out_7(DELAY,189)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist17_i_llvm_fpga_pop_i1_notcmp4255_pop22_kernel_2mm20_out_data_out_7 ( .xin(redist16_i_llvm_fpga_pop_i1_notcmp4255_pop22_kernel_2mm20_out_data_out_1_q), .xout(redist17_i_llvm_fpga_pop_i1_notcmp4255_pop22_kernel_2mm20_out_data_out_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_notcmp16_kernel_2mm14(LOGICAL,50)@10
    assign i_notcmp16_kernel_2mm14_q = redist3_i_exitcond10_kernel_2mm11_cmp_nsign_q_9_q ^ VCC_q;

    // redist3_i_exitcond10_kernel_2mm11_cmp_nsign_q_9(DELAY,175)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist3_i_exitcond10_kernel_2mm11_cmp_nsign_q_9 ( .xin(redist2_i_exitcond10_kernel_2mm11_cmp_nsign_q_3_q), .xout(redist3_i_exitcond10_kernel_2mm11_cmp_nsign_q_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg4(REG,93)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist12_sync_together57_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_beta4215_kernel_2mm8(BLACKBOX,37)@7
    kernel_2mm_i_llvm_fpga_ffwd_dest_i32_beta4215_0 thei_llvm_fpga_ffwd_dest_i32_beta4215_kernel_2mm8 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i32_beta4215_kernel_2mm8_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul50_kernel_2mm9_bs2_merged_bit_select(BITSELECT,169)@7
    assign i_mul50_kernel_2mm9_bs2_merged_bit_select_b = i_llvm_fpga_ffwd_dest_i32_beta4215_kernel_2mm8_out_dest_data_out_1_0[31:18];
    assign i_mul50_kernel_2mm9_bs2_merged_bit_select_c = i_llvm_fpga_ffwd_dest_i32_beta4215_kernel_2mm8_out_dest_data_out_1_0[17:0];

    // i_mul50_kernel_2mm9_bs1_merged_bit_select(BITSELECT,170)@7
    assign i_mul50_kernel_2mm9_bs1_merged_bit_select_b = i_llvm_fpga_mem_unnamed_kernel_2mm10_kernel_2mm7_out_o_readdata[31:18];
    assign i_mul50_kernel_2mm9_bs1_merged_bit_select_c = i_llvm_fpga_mem_unnamed_kernel_2mm10_kernel_2mm7_out_o_readdata[17:0];

    // i_mul50_kernel_2mm9_ma3_cma(CHAINMULTADD,167)@7 + 3
    assign i_mul50_kernel_2mm9_ma3_cma_reset = ~ (resetn);
    assign i_mul50_kernel_2mm9_ma3_cma_ena0 = 1'b1;
    assign i_mul50_kernel_2mm9_ma3_cma_ena1 = i_mul50_kernel_2mm9_ma3_cma_ena0;
    assign i_mul50_kernel_2mm9_ma3_cma_ena2 = i_mul50_kernel_2mm9_ma3_cma_ena0;

    assign i_mul50_kernel_2mm9_ma3_cma_a0 = i_mul50_kernel_2mm9_bs1_merged_bit_select_b;
    assign i_mul50_kernel_2mm9_ma3_cma_c0 = i_mul50_kernel_2mm9_bs2_merged_bit_select_c;
    assign i_mul50_kernel_2mm9_ma3_cma_a1 = i_mul50_kernel_2mm9_bs2_merged_bit_select_b;
    assign i_mul50_kernel_2mm9_ma3_cma_c1 = i_mul50_kernel_2mm9_bs1_merged_bit_select_c;
    twentynm_mac #(
        .operation_mode("m18x18_sumof2"),
        .use_chainadder("false"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(14),
        .by_clock("0"),
        .by_width(14),
        .ax_clock("0"),
        .bx_clock("0"),
        .ax_width(18),
        .bx_width(18),
        .signed_may("false"),
        .signed_mby("false"),
        .signed_max("false"),
        .signed_mbx("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(33)
    ) i_mul50_kernel_2mm9_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul50_kernel_2mm9_ma3_cma_ena2, i_mul50_kernel_2mm9_ma3_cma_ena1, i_mul50_kernel_2mm9_ma3_cma_ena0 }),
        .aclr({ i_mul50_kernel_2mm9_ma3_cma_reset, i_mul50_kernel_2mm9_ma3_cma_reset }),
        .ay(i_mul50_kernel_2mm9_ma3_cma_a1),
        .by(i_mul50_kernel_2mm9_ma3_cma_a0),
        .ax(i_mul50_kernel_2mm9_ma3_cma_c1),
        .bx(i_mul50_kernel_2mm9_ma3_cma_c0),
        .resulta(i_mul50_kernel_2mm9_ma3_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(33), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul50_kernel_2mm9_ma3_cma_delay ( .xin(i_mul50_kernel_2mm9_ma3_cma_s0), .xout(i_mul50_kernel_2mm9_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul50_kernel_2mm9_ma3_cma_q = $unsigned(i_mul50_kernel_2mm9_ma3_cma_qq[32:0]);

    // i_mul50_kernel_2mm9_sums_align_1(BITSHIFT,116)@10
    assign i_mul50_kernel_2mm9_sums_align_1_qint = { i_mul50_kernel_2mm9_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul50_kernel_2mm9_sums_align_1_q = i_mul50_kernel_2mm9_sums_align_1_qint[50:0];

    // i_mul50_kernel_2mm9_im0_cma(CHAINMULTADD,165)@7 + 3
    assign i_mul50_kernel_2mm9_im0_cma_reset = ~ (resetn);
    assign i_mul50_kernel_2mm9_im0_cma_ena0 = 1'b1;
    assign i_mul50_kernel_2mm9_im0_cma_ena1 = i_mul50_kernel_2mm9_im0_cma_ena0;
    assign i_mul50_kernel_2mm9_im0_cma_ena2 = i_mul50_kernel_2mm9_im0_cma_ena0;

    assign i_mul50_kernel_2mm9_im0_cma_a0 = i_mul50_kernel_2mm9_bs1_merged_bit_select_b;
    assign i_mul50_kernel_2mm9_im0_cma_c0 = i_mul50_kernel_2mm9_bs2_merged_bit_select_b;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(14),
        .ax_clock("0"),
        .ax_width(14),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(28)
    ) i_mul50_kernel_2mm9_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul50_kernel_2mm9_im0_cma_ena2, i_mul50_kernel_2mm9_im0_cma_ena1, i_mul50_kernel_2mm9_im0_cma_ena0 }),
        .aclr({ i_mul50_kernel_2mm9_im0_cma_reset, i_mul50_kernel_2mm9_im0_cma_reset }),
        .ay(i_mul50_kernel_2mm9_im0_cma_a0),
        .ax(i_mul50_kernel_2mm9_im0_cma_c0),
        .resulta(i_mul50_kernel_2mm9_im0_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(28), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul50_kernel_2mm9_im0_cma_delay ( .xin(i_mul50_kernel_2mm9_im0_cma_s0), .xout(i_mul50_kernel_2mm9_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul50_kernel_2mm9_im0_cma_q = $unsigned(i_mul50_kernel_2mm9_im0_cma_qq[27:0]);

    // i_mul50_kernel_2mm9_im8_cma(CHAINMULTADD,166)@7 + 3
    assign i_mul50_kernel_2mm9_im8_cma_reset = ~ (resetn);
    assign i_mul50_kernel_2mm9_im8_cma_ena0 = 1'b1;
    assign i_mul50_kernel_2mm9_im8_cma_ena1 = i_mul50_kernel_2mm9_im8_cma_ena0;
    assign i_mul50_kernel_2mm9_im8_cma_ena2 = i_mul50_kernel_2mm9_im8_cma_ena0;

    assign i_mul50_kernel_2mm9_im8_cma_a0 = i_mul50_kernel_2mm9_bs1_merged_bit_select_c;
    assign i_mul50_kernel_2mm9_im8_cma_c0 = i_mul50_kernel_2mm9_bs2_merged_bit_select_c;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(18),
        .ax_clock("0"),
        .ax_width(18),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(36)
    ) i_mul50_kernel_2mm9_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul50_kernel_2mm9_im8_cma_ena2, i_mul50_kernel_2mm9_im8_cma_ena1, i_mul50_kernel_2mm9_im8_cma_ena0 }),
        .aclr({ i_mul50_kernel_2mm9_im8_cma_reset, i_mul50_kernel_2mm9_im8_cma_reset }),
        .ay(i_mul50_kernel_2mm9_im8_cma_a0),
        .ax(i_mul50_kernel_2mm9_im8_cma_c0),
        .resulta(i_mul50_kernel_2mm9_im8_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul50_kernel_2mm9_im8_cma_delay ( .xin(i_mul50_kernel_2mm9_im8_cma_s0), .xout(i_mul50_kernel_2mm9_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul50_kernel_2mm9_im8_cma_q = $unsigned(i_mul50_kernel_2mm9_im8_cma_qq[35:0]);

    // i_mul50_kernel_2mm9_sums_join_0(BITJOIN,115)@10
    assign i_mul50_kernel_2mm9_sums_join_0_q = {i_mul50_kernel_2mm9_im0_cma_q, i_mul50_kernel_2mm9_im8_cma_q};

    // i_mul50_kernel_2mm9_sums_result_add_0_0(ADD,118)@10
    assign i_mul50_kernel_2mm9_sums_result_add_0_0_a = {1'b0, i_mul50_kernel_2mm9_sums_join_0_q};
    assign i_mul50_kernel_2mm9_sums_result_add_0_0_b = {14'b00000000000000, i_mul50_kernel_2mm9_sums_align_1_q};
    assign i_mul50_kernel_2mm9_sums_result_add_0_0_o = $unsigned(i_mul50_kernel_2mm9_sums_result_add_0_0_a) + $unsigned(i_mul50_kernel_2mm9_sums_result_add_0_0_b);
    assign i_mul50_kernel_2mm9_sums_result_add_0_0_q = i_mul50_kernel_2mm9_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul50_kernel_2mm9_sel_x(BITSELECT,59)@10
    assign bgTrunc_i_mul50_kernel_2mm9_sel_x_in = i_mul50_kernel_2mm9_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul50_kernel_2mm9_sel_x_b = bgTrunc_i_mul50_kernel_2mm9_sel_x_in[31:0];

    // redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_notEnable(LOGICAL,230)
    assign redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_notEnable_q = $unsigned(~ (VCC_q));

    // redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_nor(LOGICAL,231)
    assign redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_nor_q = ~ (redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_notEnable_q | redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_sticky_ena_q);

    // redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_mem_last(CONSTANT,227)
    assign redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_mem_last_q = $unsigned(3'b011);

    // redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_cmp(LOGICAL,228)
    assign redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_cmp_q = $unsigned(redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_mem_last_q == redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_rdcnt_q ? 1'b1 : 1'b0);

    // redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_cmpReg(REG,229)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_cmpReg_q <= $unsigned(redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_cmp_q);
        end
    end

    // redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_sticky_ena(REG,232)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_nor_q == 1'b1)
        begin
            redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_sticky_ena_q <= $unsigned(redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_cmpReg_q);
        end
    end

    // redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_enaAnd(LOGICAL,233)
    assign redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_enaAnd_q = redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_sticky_ena_q & VCC_q;

    // redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_rdcnt(COUNTER,225)
    // low=0, high=4, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_rdcnt_i <= 3'd0;
            redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_rdcnt_i == 3'd3)
            begin
                redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_rdcnt_eq <= 1'b0;
            end
            if (redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_rdcnt_eq == 1'b1)
            begin
                redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_rdcnt_i <= $unsigned(redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_rdcnt_i) + $unsigned(3'd4);
            end
            else
            begin
                redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_rdcnt_i <= $unsigned(redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_rdcnt_q = redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_rdcnt_i[2:0];

    // redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_inputreg0(DELAY,223)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_inputreg0_q <= '0;
        end
        else
        begin
            redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_inputreg0_q <= $unsigned(i_arrayidx494_kernel_2mm6_vt_join_q);
        end
    end

    // redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_wraddr(REG,226)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_wraddr_q <= $unsigned(3'b100);
        end
        else
        begin
            redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_wraddr_q <= $unsigned(redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_rdcnt_q);
        end
    end

    // redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_mem(DUALMEM,224)
    assign redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_mem_ia = $unsigned(redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_inputreg0_q);
    assign redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_mem_aa = redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_wraddr_q;
    assign redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_mem_ab = redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_rdcnt_q;
    assign redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(3),
        .numwords_a(5),
        .width_b(64),
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
        .intended_device_family("Arria 10")
    ) redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_mem_dmem (
        .clocken1(redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_mem_reset0),
        .clock1(clock),
        .address_a(redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_mem_aa),
        .data_a(redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_mem_ab),
        .q_b(redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_mem_iq),
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
    assign redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_mem_q = redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_mem_iq[63:0];

    // redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_notEnable(LOGICAL,208)
    assign redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_notEnable_q = $unsigned(~ (VCC_q));

    // redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_nor(LOGICAL,209)
    assign redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_nor_q = ~ (redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_notEnable_q | redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_sticky_ena_q);

    // redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_mem_last(CONSTANT,205)
    assign redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_mem_last_q = $unsigned(4'b0101);

    // redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_cmp(LOGICAL,206)
    assign redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_cmp_b = {1'b0, redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_rdcnt_q};
    assign redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_cmp_q = $unsigned(redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_mem_last_q == redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_cmp_b ? 1'b1 : 1'b0);

    // redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_cmpReg(REG,207)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_cmpReg_q <= $unsigned(redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_cmp_q);
        end
    end

    // redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_sticky_ena(REG,210)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_nor_q == 1'b1)
        begin
            redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_sticky_ena_q <= $unsigned(redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_cmpReg_q);
        end
    end

    // redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_enaAnd(LOGICAL,211)
    assign redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_enaAnd_q = redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_sticky_ena_q & VCC_q;

    // redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_rdcnt(COUNTER,203)
    // low=0, high=6, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_rdcnt_i <= 3'd0;
            redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_rdcnt_i == 3'd5)
            begin
                redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_rdcnt_eq <= 1'b0;
            end
            if (redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_rdcnt_eq == 1'b1)
            begin
                redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_rdcnt_i <= $unsigned(redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_rdcnt_i) + $unsigned(3'd2);
            end
            else
            begin
                redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_rdcnt_i <= $unsigned(redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_rdcnt_q = redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_rdcnt_i[2:0];

    // redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_wraddr(REG,204)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_wraddr_q <= $unsigned(3'b110);
        end
        else
        begin
            redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_wraddr_q <= $unsigned(redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_rdcnt_q);
        end
    end

    // redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_mem(DUALMEM,202)
    assign redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_mem_ia = $unsigned(i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out);
    assign redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_mem_aa = redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_wraddr_q;
    assign redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_mem_ab = redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_rdcnt_q;
    assign redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(3),
        .numwords_a(7),
        .width_b(64),
        .widthad_b(3),
        .numwords_b(7),
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
    ) redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_mem_dmem (
        .clocken1(redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_mem_reset0),
        .clock1(clock),
        .address_a(redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_mem_aa),
        .data_a(redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_mem_ab),
        .q_b(redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_mem_iq),
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
    assign redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_mem_q = redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_mem_iq[63:0];

    // redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_notEnable(LOGICAL,219)
    assign redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_notEnable_q = $unsigned(~ (VCC_q));

    // redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_nor(LOGICAL,220)
    assign redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_nor_q = ~ (redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_notEnable_q | redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_sticky_ena_q);

    // redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_mem_last(CONSTANT,216)
    assign redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_mem_last_q = $unsigned(3'b011);

    // redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_cmp(LOGICAL,217)
    assign redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_cmp_q = $unsigned(redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_mem_last_q == redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_rdcnt_q ? 1'b1 : 1'b0);

    // redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_cmpReg(REG,218)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_cmpReg_q <= $unsigned(redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_cmp_q);
        end
    end

    // redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_sticky_ena(REG,221)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_nor_q == 1'b1)
        begin
            redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_sticky_ena_q <= $unsigned(redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_cmpReg_q);
        end
    end

    // redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_enaAnd(LOGICAL,222)
    assign redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_enaAnd_q = redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_sticky_ena_q & VCC_q;

    // redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_rdcnt(COUNTER,214)
    // low=0, high=4, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_rdcnt_i <= 3'd0;
            redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_rdcnt_i == 3'd3)
            begin
                redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_rdcnt_eq <= 1'b0;
            end
            if (redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_rdcnt_eq == 1'b1)
            begin
                redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_rdcnt_i <= $unsigned(redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_rdcnt_i) + $unsigned(3'd4);
            end
            else
            begin
                redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_rdcnt_i <= $unsigned(redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_rdcnt_q = redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_rdcnt_i[2:0];

    // redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_inputreg0(DELAY,212)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_inputreg0_q <= '0;
        end
        else
        begin
            redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_inputreg0_q <= $unsigned(i_idxprom48_kernel_2mm4_vt_join_q);
        end
    end

    // redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_wraddr(REG,215)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_wraddr_q <= $unsigned(3'b100);
        end
        else
        begin
            redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_wraddr_q <= $unsigned(redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_rdcnt_q);
        end
    end

    // redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_mem(DUALMEM,213)
    assign redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_mem_ia = $unsigned(redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_inputreg0_q);
    assign redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_mem_aa = redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_wraddr_q;
    assign redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_mem_ab = redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_rdcnt_q;
    assign redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(3),
        .numwords_a(5),
        .width_b(64),
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
        .intended_device_family("Arria 10")
    ) redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_mem_dmem (
        .clocken1(redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_mem_reset0),
        .clock1(clock),
        .address_a(redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_mem_aa),
        .data_a(redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_mem_ab),
        .q_b(redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_mem_iq),
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
    assign redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_mem_q = redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_mem_iq[63:0];

    // sync_out_aunroll_x(GPOUT,87)@10
    assign out_c0_exi9160_0_tpl = GND_q;
    assign out_c0_exi9160_1_tpl = redist18_i_idxprom48_kernel_2mm4_vt_join_q_7_mem_q;
    assign out_c0_exi9160_2_tpl = redist15_i_llvm_fpga_pop_i64_idxprom60_pop23_kernel_2mm5_out_data_out_8_mem_q;
    assign out_c0_exi9160_3_tpl = redist19_i_arrayidx494_kernel_2mm6_vt_join_q_7_mem_q;
    assign out_c0_exi9160_4_tpl = bgTrunc_i_mul50_kernel_2mm9_sel_x_b;
    assign out_c0_exi9160_5_tpl = redist3_i_exitcond10_kernel_2mm11_cmp_nsign_q_9_q;
    assign out_c0_exi9160_6_tpl = i_notcmp16_kernel_2mm14_q;
    assign out_c0_exi9160_7_tpl = redist17_i_llvm_fpga_pop_i1_notcmp4255_pop22_kernel_2mm20_out_data_out_7_q;
    assign out_c0_exi9160_8_tpl = redist7_sync_together57_aunroll_x_in_c0_eni3147_2_tpl_9_mem_q;
    assign out_c0_exi9160_9_tpl = redist9_sync_together57_aunroll_x_in_c0_eni3147_3_tpl_9_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_kernel_2mm1 = GND_q;

endmodule
