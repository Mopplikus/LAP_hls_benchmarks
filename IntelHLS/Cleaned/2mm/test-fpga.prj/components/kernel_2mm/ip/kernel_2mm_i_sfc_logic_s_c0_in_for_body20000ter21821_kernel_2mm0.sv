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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm0
// Created for function/kernel kernel_2mm
// SystemVerilog created on Tue Jun 13 01:31:47 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_2mm_i_sfc_logic_s_c0_in_for_body20000ter21821_kernel_2mm0 (
    output wire [31:0] out_unnamed_kernel_2mm11_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm11_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm11_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm11_kernel_2mm_avm_write,
    output wire [31:0] out_unnamed_kernel_2mm11_kernel_2mm_avm_writedata,
    output wire [3:0] out_unnamed_kernel_2mm11_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm11_kernel_2mm_avm_burstcount,
    output wire [0:0] out_c0_exi11_0_tpl,
    output wire [31:0] out_c0_exi11_1_tpl,
    output wire [31:0] out_c0_exi11_2_tpl,
    output wire [63:0] out_c0_exi11_3_tpl,
    output wire [31:0] out_c0_exi11_4_tpl,
    output wire [0:0] out_c0_exi11_5_tpl,
    output wire [0:0] out_c0_exi11_6_tpl,
    output wire [31:0] out_c0_exi11_7_tpl,
    output wire [0:0] out_c0_exi11_8_tpl,
    output wire [31:0] out_c0_exi11_9_tpl,
    output wire [31:0] out_c0_exi11_10_tpl,
    output wire [0:0] out_c0_exi11_11_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_kernel_2mm1,
    input wire [0:0] in_c0_eni4_0_tpl,
    input wire [31:0] in_c0_eni4_1_tpl,
    input wire [0:0] in_c0_eni4_2_tpl,
    input wire [31:0] in_c0_eni4_3_tpl,
    input wire [0:0] in_c0_eni4_4_tpl,
    input wire [0:0] in_i_valid,
    input wire [31:0] in_unnamed_kernel_2mm11_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm11_kernel_2mm_avm_writeack,
    input wire [0:0] in_unnamed_kernel_2mm11_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm11_kernel_2mm_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going69_kernel_2mm2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going69_kernel_2mm2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [4:0] bgTrunc_i_fpga_indvars_iv_next11_kernel_2mm15_sel_x_b;
    wire [31:0] bgTrunc_i_inc43_kernel_2mm17_sel_x_b;
    wire [8:0] i_arrayidx243_kernel_2mm0_dupName_0_trunc_sel_x_b;
    wire [8:0] i_arrayidx243_kernel_2mm0_dupName_1_trunc_sel_x_b;
    wire [8:0] i_arrayidx243_kernel_2mm0_dupName_2_trunc_sel_x_b;
    wire [8:0] i_arrayidx243_kernel_2mm0_dupName_3_trunc_sel_x_b;
    wire [8:0] i_arrayidx243_kernel_2mm0_dupName_5_trunc_sel_x_b;
    wire [9:0] i_arrayidx243_kernel_2mm0_dupName_0_add_x_a;
    wire [9:0] i_arrayidx243_kernel_2mm0_dupName_0_add_x_b;
    logic [9:0] i_arrayidx243_kernel_2mm0_dupName_0_add_x_o;
    wire [9:0] i_arrayidx243_kernel_2mm0_dupName_0_add_x_q;
    wire [17:0] i_arrayidx243_kernel_2mm0_mult_extender_x_q;
    wire [2:0] i_arrayidx243_kernel_2mm0_mult_multconst_x_q;
    wire [9:0] i_arrayidx243_kernel_2mm0_add_x_a;
    wire [9:0] i_arrayidx243_kernel_2mm0_add_x_b;
    logic [9:0] i_arrayidx243_kernel_2mm0_add_x_o;
    wire [9:0] i_arrayidx243_kernel_2mm0_add_x_q;
    wire [63:0] i_arrayidx243_kernel_2mm0_append_upper_bits_x_q;
    wire [1:0] i_arrayidx243_kernel_2mm0_c_i2_02_x_q;
    wire [6:0] i_arrayidx243_kernel_2mm0_narrow_x_b;
    wire [8:0] i_arrayidx243_kernel_2mm0_shift_join_x_q;
    wire [63:0] i_idxprom21_kernel_2mm4_sel_x_b;
    wire [63:0] i_idxprom23_kernel_2mm6_sel_x_b;
    wire [31:0] c_i32_038_q;
    wire [31:0] c_i32_142_q;
    wire [4:0] c_i5_141_q;
    wire [4:0] c_i5_839_q;
    wire [63:0] c_kernel_2mm_tmp_pmem_q;
    wire [63:0] i_arrayidx243_kernel_2mm7_vt_join_q;
    wire [61:0] i_arrayidx243_kernel_2mm7_vt_select_63_b;
    wire [5:0] i_fpga_indvars_iv_next11_kernel_2mm15_a;
    wire [5:0] i_fpga_indvars_iv_next11_kernel_2mm15_b;
    logic [5:0] i_fpga_indvars_iv_next11_kernel_2mm15_o;
    wire [5:0] i_fpga_indvars_iv_next11_kernel_2mm15_q;
    wire [63:0] i_idxprom21_kernel_2mm4_vt_join_q;
    wire [31:0] i_idxprom21_kernel_2mm4_vt_select_31_b;
    wire [63:0] i_idxprom23_kernel_2mm6_vt_join_q;
    wire [31:0] i_idxprom23_kernel_2mm6_vt_select_31_b;
    wire [32:0] i_inc43_kernel_2mm17_a;
    wire [32:0] i_inc43_kernel_2mm17_b;
    logic [32:0] i_inc43_kernel_2mm17_o;
    wire [32:0] i_inc43_kernel_2mm17_q;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_2mm11_kernel_2mm8_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_2mm11_kernel_2mm8_out_unnamed_kernel_2mm11_kernel_2mm_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_2mm11_kernel_2mm8_out_unnamed_kernel_2mm11_kernel_2mm_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_kernel_2mm11_kernel_2mm8_out_unnamed_kernel_2mm11_kernel_2mm_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_2mm11_kernel_2mm8_out_unnamed_kernel_2mm11_kernel_2mm_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_2mm11_kernel_2mm8_out_unnamed_kernel_2mm11_kernel_2mm_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_2mm11_kernel_2mm8_out_unnamed_kernel_2mm11_kernel_2mm_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_2mm11_kernel_2mm8_out_unnamed_kernel_2mm11_kernel_2mm_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going69_kernel_2mm2_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going69_kernel_2mm2_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going69_kernel_2mm2_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going69_kernel_2mm2_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp72112_pop37_kernel_2mm21_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp72112_pop37_kernel_2mm21_out_feedback_stall_out_37;
    wire [31:0] i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_feedback_stall_out_35;
    wire [31:0] i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_feedback_stall_out_34;
    wire [31:0] i_llvm_fpga_pop_i32_mul_add26110_pop36_kernel_2mm19_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul_add26110_pop36_kernel_2mm19_out_feedback_stall_out_36;
    wire [4:0] i_llvm_fpga_pop_i5_fpga_indvars_iv10_pop33_kernel_2mm9_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i5_fpga_indvars_iv10_pop33_kernel_2mm9_out_feedback_stall_out_33;
    wire [0:0] i_llvm_fpga_push_i1_notcmp72112_push37_kernel_2mm22_out_feedback_out_37;
    wire [0:0] i_llvm_fpga_push_i1_notcmp72112_push37_kernel_2mm22_out_feedback_valid_out_37;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond70_kernel_2mm14_out_feedback_out_11;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond70_kernel_2mm14_out_feedback_valid_out_11;
    wire [31:0] i_llvm_fpga_push_i32_i11_082_pop23108_push35_kernel_2mm12_out_feedback_out_35;
    wire [0:0] i_llvm_fpga_push_i32_i11_082_pop23108_push35_kernel_2mm12_out_feedback_valid_out_35;
    wire [31:0] i_llvm_fpga_push_i32_j16_081_push34_kernel_2mm18_out_feedback_out_34;
    wire [0:0] i_llvm_fpga_push_i32_j16_081_push34_kernel_2mm18_out_feedback_valid_out_34;
    wire [31:0] i_llvm_fpga_push_i32_mul_add26110_push36_kernel_2mm20_out_feedback_out_36;
    wire [0:0] i_llvm_fpga_push_i32_mul_add26110_push36_kernel_2mm20_out_feedback_valid_out_36;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv10_push33_kernel_2mm16_out_feedback_out_33;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv10_push33_kernel_2mm16_out_feedback_valid_out_33;
    wire [0:0] i_notcmp67_kernel_2mm13_q;
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
    wire [9:0] addsumAHighB_uid116_i_arrayidx243_kernel_2mm0_mult_x_a;
    wire [9:0] addsumAHighB_uid116_i_arrayidx243_kernel_2mm0_mult_x_b;
    logic [9:0] addsumAHighB_uid116_i_arrayidx243_kernel_2mm0_mult_x_o;
    wire [9:0] addsumAHighB_uid116_i_arrayidx243_kernel_2mm0_mult_x_q;
    wire [11:0] add_uid117_i_arrayidx243_kernel_2mm0_mult_x_q;
    wire [14:0] sR_mergedSignalTM_uid122_i_arrayidx243_kernel_2mm0_mult_x_q;
    wire [0:0] i_exitcond12_kernel_2mm10_cmp_nsign_q;
    wire [1:0] lowRangeB_uid114_i_arrayidx243_kernel_2mm0_mult_x_merged_bit_select_b;
    wire [6:0] lowRangeB_uid114_i_arrayidx243_kernel_2mm0_mult_x_merged_bit_select_c;
    wire [8:0] i_arrayidx243_kernel_2mm0_trunc_sel_x_merged_bit_select_b;
    wire [54:0] i_arrayidx243_kernel_2mm0_trunc_sel_x_merged_bit_select_c;
    reg [54:0] redist0_i_arrayidx243_kernel_2mm0_trunc_sel_x_merged_bit_select_c_1_q;
    reg [0:0] redist1_i_exitcond12_kernel_2mm10_cmp_nsign_q_1_q;
    reg [0:0] redist2_i_exitcond12_kernel_2mm10_cmp_nsign_q_4_q;
    reg [0:0] redist2_i_exitcond12_kernel_2mm10_cmp_nsign_q_4_delay_0;
    reg [0:0] redist2_i_exitcond12_kernel_2mm10_cmp_nsign_q_4_delay_1;
    reg [0:0] redist3_i_exitcond12_kernel_2mm10_cmp_nsign_q_8_q;
    reg [0:0] redist3_i_exitcond12_kernel_2mm10_cmp_nsign_q_8_delay_0;
    reg [0:0] redist3_i_exitcond12_kernel_2mm10_cmp_nsign_q_8_delay_1;
    reg [0:0] redist3_i_exitcond12_kernel_2mm10_cmp_nsign_q_8_delay_2;
    reg [31:0] redist5_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_1_q;
    reg [31:0] redist8_sync_together59_aunroll_x_in_c0_eni4_1_tpl_1_q;
    reg [0:0] redist10_sync_together59_aunroll_x_in_c0_eni4_2_tpl_1_q;
    reg [0:0] redist11_sync_together59_aunroll_x_in_c0_eni4_2_tpl_4_q;
    reg [0:0] redist11_sync_together59_aunroll_x_in_c0_eni4_2_tpl_4_delay_0;
    reg [0:0] redist11_sync_together59_aunroll_x_in_c0_eni4_2_tpl_4_delay_1;
    reg [0:0] redist12_sync_together59_aunroll_x_in_c0_eni4_2_tpl_8_q;
    reg [0:0] redist12_sync_together59_aunroll_x_in_c0_eni4_2_tpl_8_delay_0;
    reg [0:0] redist12_sync_together59_aunroll_x_in_c0_eni4_2_tpl_8_delay_1;
    reg [0:0] redist12_sync_together59_aunroll_x_in_c0_eni4_2_tpl_8_delay_2;
    reg [0:0] redist14_sync_together59_aunroll_x_in_c0_eni4_4_tpl_8_q;
    reg [0:0] redist15_sync_together59_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist15_sync_together59_aunroll_x_in_i_valid_3_delay_0;
    reg [0:0] redist15_sync_together59_aunroll_x_in_i_valid_3_delay_1;
    reg [0:0] redist16_sync_together59_aunroll_x_in_i_valid_7_q;
    reg [0:0] redist16_sync_together59_aunroll_x_in_i_valid_7_delay_0;
    reg [0:0] redist16_sync_together59_aunroll_x_in_i_valid_7_delay_1;
    reg [0:0] redist16_sync_together59_aunroll_x_in_i_valid_7_delay_2;
    reg [8:0] redist17_i_arrayidx243_kernel_2mm0_dupName_2_trunc_sel_x_b_1_q;
    reg [8:0] redist18_i_arrayidx243_kernel_2mm0_dupName_1_trunc_sel_x_b_1_q;
    wire redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_mem_reset0;
    wire [31:0] redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_mem_ia;
    wire [1:0] redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_mem_aa;
    wire [1:0] redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_mem_ab;
    wire [31:0] redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_mem_iq;
    wire [31:0] redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_mem_q;
    wire [1:0] redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_rdcnt_q;
    (* preserve *) reg [1:0] redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_rdcnt_i;
    (* preserve *) reg redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_rdcnt_eq;
    reg [1:0] redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_wraddr_q;
    wire [1:0] redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_mem_last_q;
    wire [0:0] redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_cmp_q;
    (* dont_merge *) reg [0:0] redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_cmpReg_q;
    wire [0:0] redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_notEnable_q;
    wire [0:0] redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_nor_q;
    (* dont_merge *) reg [0:0] redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_sticky_ena_q;
    wire [0:0] redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_enaAnd_q;
    wire redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_mem_reset0;
    wire [31:0] redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_mem_ia;
    wire [2:0] redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_mem_aa;
    wire [2:0] redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_mem_ab;
    wire [31:0] redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_mem_iq;
    wire [31:0] redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_mem_q;
    wire [2:0] redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_rdcnt_q;
    (* preserve *) reg [2:0] redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_rdcnt_i;
    (* preserve *) reg redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_rdcnt_eq;
    reg [2:0] redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_wraddr_q;
    wire [2:0] redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_mem_last_q;
    wire [0:0] redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_cmp_q;
    (* dont_merge *) reg [0:0] redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_cmpReg_q;
    wire [0:0] redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_notEnable_q;
    wire [0:0] redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_nor_q;
    (* dont_merge *) reg [0:0] redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_sticky_ena_q;
    wire [0:0] redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_enaAnd_q;
    reg [63:0] redist7_i_arrayidx243_kernel_2mm7_vt_join_q_4_inputreg0_q;
    wire redist7_i_arrayidx243_kernel_2mm7_vt_join_q_4_mem_reset0;
    wire [63:0] redist7_i_arrayidx243_kernel_2mm7_vt_join_q_4_mem_ia;
    wire [0:0] redist7_i_arrayidx243_kernel_2mm7_vt_join_q_4_mem_aa;
    wire [0:0] redist7_i_arrayidx243_kernel_2mm7_vt_join_q_4_mem_ab;
    wire [63:0] redist7_i_arrayidx243_kernel_2mm7_vt_join_q_4_mem_iq;
    wire [63:0] redist7_i_arrayidx243_kernel_2mm7_vt_join_q_4_mem_q;
    wire [0:0] redist7_i_arrayidx243_kernel_2mm7_vt_join_q_4_rdcnt_q;
    (* preserve *) reg [0:0] redist7_i_arrayidx243_kernel_2mm7_vt_join_q_4_rdcnt_i;
    reg [0:0] redist7_i_arrayidx243_kernel_2mm7_vt_join_q_4_wraddr_q;
    (* dont_merge *) reg [0:0] redist7_i_arrayidx243_kernel_2mm7_vt_join_q_4_cmpReg_q;
    wire [0:0] redist7_i_arrayidx243_kernel_2mm7_vt_join_q_4_notEnable_q;
    wire [0:0] redist7_i_arrayidx243_kernel_2mm7_vt_join_q_4_nor_q;
    (* dont_merge *) reg [0:0] redist7_i_arrayidx243_kernel_2mm7_vt_join_q_4_sticky_ena_q;
    wire [0:0] redist7_i_arrayidx243_kernel_2mm7_vt_join_q_4_enaAnd_q;
    wire redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_mem_reset0;
    wire [31:0] redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_mem_ia;
    wire [2:0] redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_mem_aa;
    wire [2:0] redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_mem_ab;
    wire [31:0] redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_mem_iq;
    wire [31:0] redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_mem_q;
    wire [2:0] redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_rdcnt_q;
    (* preserve *) reg [2:0] redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_rdcnt_i;
    (* preserve *) reg redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_rdcnt_eq;
    reg [2:0] redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_wraddr_q;
    wire [3:0] redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_mem_last_q;
    wire [3:0] redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_cmp_b;
    wire [0:0] redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_cmp_q;
    (* dont_merge *) reg [0:0] redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_cmpReg_q;
    wire [0:0] redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_notEnable_q;
    wire [0:0] redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_nor_q;
    (* dont_merge *) reg [0:0] redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_sticky_ena_q;
    wire [0:0] redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_enaAnd_q;
    reg [31:0] redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_outputreg0_q;
    wire redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_mem_reset0;
    wire [31:0] redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_mem_ia;
    wire [2:0] redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_mem_aa;
    wire [2:0] redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_mem_ab;
    wire [31:0] redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_mem_iq;
    wire [31:0] redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_mem_q;
    wire [2:0] redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_rdcnt_q;
    (* preserve *) reg [2:0] redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_rdcnt_i;
    (* preserve *) reg redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_rdcnt_eq;
    reg [2:0] redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_wraddr_q;
    wire [3:0] redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_mem_last_q;
    wire [3:0] redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_cmp_b;
    wire [0:0] redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_cmp_q;
    (* dont_merge *) reg [0:0] redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_cmpReg_q;
    wire [0:0] redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_notEnable_q;
    wire [0:0] redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_nor_q;
    (* dont_merge *) reg [0:0] redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_sticky_ena_q;
    wire [0:0] redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist15_sync_together59_aunroll_x_in_i_valid_3(DELAY,171)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together59_aunroll_x_in_i_valid_3_delay_0 <= '0;
            redist15_sync_together59_aunroll_x_in_i_valid_3_delay_1 <= '0;
            redist15_sync_together59_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist15_sync_together59_aunroll_x_in_i_valid_3_delay_0 <= $unsigned(in_i_valid);
            redist15_sync_together59_aunroll_x_in_i_valid_3_delay_1 <= redist15_sync_together59_aunroll_x_in_i_valid_3_delay_0;
            redist15_sync_together59_aunroll_x_in_i_valid_3_q <= redist15_sync_together59_aunroll_x_in_i_valid_3_delay_1;
        end
    end

    // valid_fanout_reg3(REG,95)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist15_sync_together59_aunroll_x_in_i_valid_3_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // c_kernel_2mm_tmp_pmem(CONSTANT,56)
    assign c_kernel_2mm_tmp_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx243_kernel_2mm0_trunc_sel_x_merged_bit_select(BITSELECT,155)@4
    assign i_arrayidx243_kernel_2mm0_trunc_sel_x_merged_bit_select_b = c_kernel_2mm_tmp_pmem_q[8:0];
    assign i_arrayidx243_kernel_2mm0_trunc_sel_x_merged_bit_select_c = c_kernel_2mm_tmp_pmem_q[63:9];

    // redist0_i_arrayidx243_kernel_2mm0_trunc_sel_x_merged_bit_select_c_1(DELAY,156)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_arrayidx243_kernel_2mm0_trunc_sel_x_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist0_i_arrayidx243_kernel_2mm0_trunc_sel_x_merged_bit_select_c_1_q <= $unsigned(i_arrayidx243_kernel_2mm0_trunc_sel_x_merged_bit_select_c);
        end
    end

    // c_i32_038(CONSTANT,52)
    assign c_i32_038_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg2(REG,94)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist15_sync_together59_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg5(REG,97)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist15_sync_together59_aunroll_x_in_i_valid_3_q);
        end
    end

    // c_i5_141(CONSTANT,54)
    assign c_i5_141_q = $unsigned(5'b11111);

    // i_fpga_indvars_iv_next11_kernel_2mm15(ADD,63)@1
    assign i_fpga_indvars_iv_next11_kernel_2mm15_a = {1'b0, i_llvm_fpga_pop_i5_fpga_indvars_iv10_pop33_kernel_2mm9_out_data_out};
    assign i_fpga_indvars_iv_next11_kernel_2mm15_b = {1'b0, c_i5_141_q};
    assign i_fpga_indvars_iv_next11_kernel_2mm15_o = $unsigned(i_fpga_indvars_iv_next11_kernel_2mm15_a) + $unsigned(i_fpga_indvars_iv_next11_kernel_2mm15_b);
    assign i_fpga_indvars_iv_next11_kernel_2mm15_q = i_fpga_indvars_iv_next11_kernel_2mm15_o[5:0];

    // bgTrunc_i_fpga_indvars_iv_next11_kernel_2mm15_sel_x(BITSELECT,2)@1
    assign bgTrunc_i_fpga_indvars_iv_next11_kernel_2mm15_sel_x_b = i_fpga_indvars_iv_next11_kernel_2mm15_q[4:0];

    // i_llvm_fpga_push_i5_fpga_indvars_iv10_push33_kernel_2mm16(BLACKBOX,85)@1
    // out out_feedback_out_33@20000000
    // out out_feedback_valid_out_33@20000000
    kernel_2mm_i_llvm_fpga_push_i5_fpga_indvars_iv10_push33_0 thei_llvm_fpga_push_i5_fpga_indvars_iv10_push33_kernel_2mm16 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next11_kernel_2mm15_sel_x_b),
        .in_exitcond12(i_exitcond12_kernel_2mm10_cmp_nsign_q),
        .in_feedback_stall_in_33(i_llvm_fpga_pop_i5_fpga_indvars_iv10_pop33_kernel_2mm9_out_feedback_stall_out_33),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_33(i_llvm_fpga_push_i5_fpga_indvars_iv10_push33_kernel_2mm16_out_feedback_out_33),
        .out_feedback_valid_out_33(i_llvm_fpga_push_i5_fpga_indvars_iv10_push33_kernel_2mm16_out_feedback_valid_out_33),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i5_839(CONSTANT,55)
    assign c_i5_839_q = $unsigned(5'b01000);

    // i_llvm_fpga_pop_i5_fpga_indvars_iv10_pop33_kernel_2mm9(BLACKBOX,79)@1
    // out out_feedback_stall_out_33@20000000
    kernel_2mm_i_llvm_fpga_pop_i5_fpga_indvars_iv10_pop33_0 thei_llvm_fpga_pop_i5_fpga_indvars_iv10_pop33_kernel_2mm9 (
        .in_data_in(c_i5_839_q),
        .in_dir(in_c0_eni4_2_tpl),
        .in_feedback_in_33(i_llvm_fpga_push_i5_fpga_indvars_iv10_push33_kernel_2mm16_out_feedback_out_33),
        .in_feedback_valid_in_33(i_llvm_fpga_push_i5_fpga_indvars_iv10_push33_kernel_2mm16_out_feedback_valid_out_33),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i5_fpga_indvars_iv10_pop33_kernel_2mm9_out_data_out),
        .out_feedback_stall_out_33(i_llvm_fpga_pop_i5_fpga_indvars_iv10_pop33_kernel_2mm9_out_feedback_stall_out_33),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond12_kernel_2mm10_cmp_nsign(LOGICAL,153)@1
    assign i_exitcond12_kernel_2mm10_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i5_fpga_indvars_iv10_pop33_kernel_2mm9_out_data_out[4:4]));

    // redist1_i_exitcond12_kernel_2mm10_cmp_nsign_q_1(DELAY,157)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_exitcond12_kernel_2mm10_cmp_nsign_q_1_q <= '0;
        end
        else
        begin
            redist1_i_exitcond12_kernel_2mm10_cmp_nsign_q_1_q <= $unsigned(i_exitcond12_kernel_2mm10_cmp_nsign_q);
        end
    end

    // redist2_i_exitcond12_kernel_2mm10_cmp_nsign_q_4(DELAY,158)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_exitcond12_kernel_2mm10_cmp_nsign_q_4_delay_0 <= '0;
            redist2_i_exitcond12_kernel_2mm10_cmp_nsign_q_4_delay_1 <= '0;
            redist2_i_exitcond12_kernel_2mm10_cmp_nsign_q_4_q <= '0;
        end
        else
        begin
            redist2_i_exitcond12_kernel_2mm10_cmp_nsign_q_4_delay_0 <= $unsigned(redist1_i_exitcond12_kernel_2mm10_cmp_nsign_q_1_q);
            redist2_i_exitcond12_kernel_2mm10_cmp_nsign_q_4_delay_1 <= redist2_i_exitcond12_kernel_2mm10_cmp_nsign_q_4_delay_0;
            redist2_i_exitcond12_kernel_2mm10_cmp_nsign_q_4_q <= redist2_i_exitcond12_kernel_2mm10_cmp_nsign_q_4_delay_1;
        end
    end

    // c_i32_142(CONSTANT,53)
    assign c_i32_142_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc43_kernel_2mm17(ADD,72)@5
    assign i_inc43_kernel_2mm17_a = {1'b0, i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out};
    assign i_inc43_kernel_2mm17_b = {1'b0, c_i32_142_q};
    assign i_inc43_kernel_2mm17_o = $unsigned(i_inc43_kernel_2mm17_a) + $unsigned(i_inc43_kernel_2mm17_b);
    assign i_inc43_kernel_2mm17_q = i_inc43_kernel_2mm17_o[32:0];

    // bgTrunc_i_inc43_kernel_2mm17_sel_x(BITSELECT,3)@5
    assign bgTrunc_i_inc43_kernel_2mm17_sel_x_b = i_inc43_kernel_2mm17_q[31:0];

    // i_llvm_fpga_push_i32_j16_081_push34_kernel_2mm18(BLACKBOX,83)@5
    // out out_feedback_out_34@20000000
    // out out_feedback_valid_out_34@20000000
    kernel_2mm_i_llvm_fpga_push_i32_j16_081_push34_0 thei_llvm_fpga_push_i32_j16_081_push34_kernel_2mm18 (
        .in_data_in(bgTrunc_i_inc43_kernel_2mm17_sel_x_b),
        .in_exitcond12(redist2_i_exitcond12_kernel_2mm10_cmp_nsign_q_4_q),
        .in_feedback_stall_in_34(i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_feedback_stall_out_34),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_34(i_llvm_fpga_push_i32_j16_081_push34_kernel_2mm18_out_feedback_out_34),
        .out_feedback_valid_out_34(i_llvm_fpga_push_i32_j16_081_push34_kernel_2mm18_out_feedback_valid_out_34),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist10_sync_together59_aunroll_x_in_c0_eni4_2_tpl_1(DELAY,166)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together59_aunroll_x_in_c0_eni4_2_tpl_1_q <= '0;
        end
        else
        begin
            redist10_sync_together59_aunroll_x_in_c0_eni4_2_tpl_1_q <= $unsigned(in_c0_eni4_2_tpl);
        end
    end

    // redist11_sync_together59_aunroll_x_in_c0_eni4_2_tpl_4(DELAY,167)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together59_aunroll_x_in_c0_eni4_2_tpl_4_delay_0 <= '0;
            redist11_sync_together59_aunroll_x_in_c0_eni4_2_tpl_4_delay_1 <= '0;
            redist11_sync_together59_aunroll_x_in_c0_eni4_2_tpl_4_q <= '0;
        end
        else
        begin
            redist11_sync_together59_aunroll_x_in_c0_eni4_2_tpl_4_delay_0 <= $unsigned(redist10_sync_together59_aunroll_x_in_c0_eni4_2_tpl_1_q);
            redist11_sync_together59_aunroll_x_in_c0_eni4_2_tpl_4_delay_1 <= redist11_sync_together59_aunroll_x_in_c0_eni4_2_tpl_4_delay_0;
            redist11_sync_together59_aunroll_x_in_c0_eni4_2_tpl_4_q <= redist11_sync_together59_aunroll_x_in_c0_eni4_2_tpl_4_delay_1;
        end
    end

    // i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5(BLACKBOX,77)@5
    // out out_feedback_stall_out_34@20000000
    kernel_2mm_i_llvm_fpga_pop_i32_j16_081_pop34_0 thei_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5 (
        .in_data_in(c_i32_038_q),
        .in_dir(redist11_sync_together59_aunroll_x_in_c0_eni4_2_tpl_4_q),
        .in_feedback_in_34(i_llvm_fpga_push_i32_j16_081_push34_kernel_2mm18_out_feedback_out_34),
        .in_feedback_valid_in_34(i_llvm_fpga_push_i32_j16_081_push34_kernel_2mm18_out_feedback_valid_out_34),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out),
        .out_feedback_stall_out_34(i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_feedback_stall_out_34),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom23_kernel_2mm6_sel_x(BITSELECT,31)@5
    assign i_idxprom23_kernel_2mm6_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out[31:0]};

    // i_idxprom23_kernel_2mm6_vt_select_31(BITSELECT,71)@5
    assign i_idxprom23_kernel_2mm6_vt_select_31_b = i_idxprom23_kernel_2mm6_sel_x_b[31:0];

    // i_idxprom23_kernel_2mm6_vt_join(BITJOIN,70)@5
    assign i_idxprom23_kernel_2mm6_vt_join_q = {c_i32_038_q, i_idxprom23_kernel_2mm6_vt_select_31_b};

    // i_arrayidx243_kernel_2mm0_dupName_3_trunc_sel_x(BITSELECT,9)@5
    assign i_arrayidx243_kernel_2mm0_dupName_3_trunc_sel_x_b = i_idxprom23_kernel_2mm6_vt_join_q[8:0];

    // i_arrayidx243_kernel_2mm0_narrow_x(BITSELECT,26)@5
    assign i_arrayidx243_kernel_2mm0_narrow_x_b = i_arrayidx243_kernel_2mm0_dupName_3_trunc_sel_x_b[6:0];

    // i_arrayidx243_kernel_2mm0_shift_join_x(BITJOIN,27)@5
    assign i_arrayidx243_kernel_2mm0_shift_join_x_q = {i_arrayidx243_kernel_2mm0_narrow_x_b, i_arrayidx243_kernel_2mm0_c_i2_02_x_q};

    // i_arrayidx243_kernel_2mm0_mult_multconst_x(CONSTANT,19)
    assign i_arrayidx243_kernel_2mm0_mult_multconst_x_q = $unsigned(3'b000);

    // valid_fanout_reg1(REG,93)@1 + 1
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

    // valid_fanout_reg4(REG,96)@1 + 1
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

    // i_llvm_fpga_push_i32_i11_082_pop23108_push35_kernel_2mm12(BLACKBOX,82)@2
    // out out_feedback_out_35@20000000
    // out out_feedback_valid_out_35@20000000
    kernel_2mm_i_llvm_fpga_push_i32_i11_082_pop23108_push35_0 thei_llvm_fpga_push_i32_i11_082_pop23108_push35_kernel_2mm12 (
        .in_data_in(i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out),
        .in_exitcond12(redist1_i_exitcond12_kernel_2mm10_cmp_nsign_q_1_q),
        .in_feedback_stall_in_35(i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_feedback_stall_out_35),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(),
        .out_feedback_out_35(i_llvm_fpga_push_i32_i11_082_pop23108_push35_kernel_2mm12_out_feedback_out_35),
        .out_feedback_valid_out_35(i_llvm_fpga_push_i32_i11_082_pop23108_push35_kernel_2mm12_out_feedback_valid_out_35),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_sync_together59_aunroll_x_in_c0_eni4_1_tpl_1(DELAY,164)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together59_aunroll_x_in_c0_eni4_1_tpl_1_q <= '0;
        end
        else
        begin
            redist8_sync_together59_aunroll_x_in_c0_eni4_1_tpl_1_q <= $unsigned(in_c0_eni4_1_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3(BLACKBOX,76)@2
    // out out_feedback_stall_out_35@20000000
    kernel_2mm_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_0 thei_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3 (
        .in_data_in(redist8_sync_together59_aunroll_x_in_c0_eni4_1_tpl_1_q),
        .in_dir(redist10_sync_together59_aunroll_x_in_c0_eni4_2_tpl_1_q),
        .in_feedback_in_35(i_llvm_fpga_push_i32_i11_082_pop23108_push35_kernel_2mm12_out_feedback_out_35),
        .in_feedback_valid_in_35(i_llvm_fpga_push_i32_i11_082_pop23108_push35_kernel_2mm12_out_feedback_valid_out_35),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out),
        .out_feedback_stall_out_35(i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_feedback_stall_out_35),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_1(DELAY,161)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_1_q <= '0;
        end
        else
        begin
            redist5_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out);
        end
    end

    // i_idxprom21_kernel_2mm4_sel_x(BITSELECT,30)@3
    assign i_idxprom21_kernel_2mm4_sel_x_b = {32'b00000000000000000000000000000000, redist5_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_1_q[31:0]};

    // i_idxprom21_kernel_2mm4_vt_select_31(BITSELECT,67)@3
    assign i_idxprom21_kernel_2mm4_vt_select_31_b = i_idxprom21_kernel_2mm4_sel_x_b[31:0];

    // i_idxprom21_kernel_2mm4_vt_join(BITJOIN,66)@3
    assign i_idxprom21_kernel_2mm4_vt_join_q = {c_i32_038_q, i_idxprom21_kernel_2mm4_vt_select_31_b};

    // i_arrayidx243_kernel_2mm0_dupName_0_trunc_sel_x(BITSELECT,6)@3
    assign i_arrayidx243_kernel_2mm0_dupName_0_trunc_sel_x_b = i_idxprom21_kernel_2mm4_vt_join_q[8:0];

    // addsumAHighB_uid116_i_arrayidx243_kernel_2mm0_mult_x(ADD,115)@3
    assign addsumAHighB_uid116_i_arrayidx243_kernel_2mm0_mult_x_a = {1'b0, i_arrayidx243_kernel_2mm0_dupName_0_trunc_sel_x_b};
    assign addsumAHighB_uid116_i_arrayidx243_kernel_2mm0_mult_x_b = {3'b000, lowRangeB_uid114_i_arrayidx243_kernel_2mm0_mult_x_merged_bit_select_c};
    assign addsumAHighB_uid116_i_arrayidx243_kernel_2mm0_mult_x_o = $unsigned(addsumAHighB_uid116_i_arrayidx243_kernel_2mm0_mult_x_a) + $unsigned(addsumAHighB_uid116_i_arrayidx243_kernel_2mm0_mult_x_b);
    assign addsumAHighB_uid116_i_arrayidx243_kernel_2mm0_mult_x_q = addsumAHighB_uid116_i_arrayidx243_kernel_2mm0_mult_x_o[9:0];

    // lowRangeB_uid114_i_arrayidx243_kernel_2mm0_mult_x_merged_bit_select(BITSELECT,154)@3
    assign lowRangeB_uid114_i_arrayidx243_kernel_2mm0_mult_x_merged_bit_select_b = i_arrayidx243_kernel_2mm0_dupName_0_trunc_sel_x_b[1:0];
    assign lowRangeB_uid114_i_arrayidx243_kernel_2mm0_mult_x_merged_bit_select_c = i_arrayidx243_kernel_2mm0_dupName_0_trunc_sel_x_b[8:2];

    // add_uid117_i_arrayidx243_kernel_2mm0_mult_x(BITJOIN,116)@3
    assign add_uid117_i_arrayidx243_kernel_2mm0_mult_x_q = {addsumAHighB_uid116_i_arrayidx243_kernel_2mm0_mult_x_q, lowRangeB_uid114_i_arrayidx243_kernel_2mm0_mult_x_merged_bit_select_b};

    // sR_mergedSignalTM_uid122_i_arrayidx243_kernel_2mm0_mult_x(BITJOIN,121)@3
    assign sR_mergedSignalTM_uid122_i_arrayidx243_kernel_2mm0_mult_x_q = {add_uid117_i_arrayidx243_kernel_2mm0_mult_x_q, i_arrayidx243_kernel_2mm0_mult_multconst_x_q};

    // i_arrayidx243_kernel_2mm0_mult_extender_x(BITJOIN,18)@3
    assign i_arrayidx243_kernel_2mm0_mult_extender_x_q = {i_arrayidx243_kernel_2mm0_mult_multconst_x_q, sR_mergedSignalTM_uid122_i_arrayidx243_kernel_2mm0_mult_x_q};

    // i_arrayidx243_kernel_2mm0_dupName_1_trunc_sel_x(BITSELECT,7)@3
    assign i_arrayidx243_kernel_2mm0_dupName_1_trunc_sel_x_b = i_arrayidx243_kernel_2mm0_mult_extender_x_q[8:0];

    // redist18_i_arrayidx243_kernel_2mm0_dupName_1_trunc_sel_x_b_1(DELAY,174)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_arrayidx243_kernel_2mm0_dupName_1_trunc_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist18_i_arrayidx243_kernel_2mm0_dupName_1_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx243_kernel_2mm0_dupName_1_trunc_sel_x_b);
        end
    end

    // i_arrayidx243_kernel_2mm0_add_x(ADD,21)@4
    assign i_arrayidx243_kernel_2mm0_add_x_a = {1'b0, i_arrayidx243_kernel_2mm0_trunc_sel_x_merged_bit_select_b};
    assign i_arrayidx243_kernel_2mm0_add_x_b = {1'b0, redist18_i_arrayidx243_kernel_2mm0_dupName_1_trunc_sel_x_b_1_q};
    assign i_arrayidx243_kernel_2mm0_add_x_o = $unsigned(i_arrayidx243_kernel_2mm0_add_x_a) + $unsigned(i_arrayidx243_kernel_2mm0_add_x_b);
    assign i_arrayidx243_kernel_2mm0_add_x_q = i_arrayidx243_kernel_2mm0_add_x_o[9:0];

    // i_arrayidx243_kernel_2mm0_dupName_2_trunc_sel_x(BITSELECT,8)@4
    assign i_arrayidx243_kernel_2mm0_dupName_2_trunc_sel_x_b = i_arrayidx243_kernel_2mm0_add_x_q[8:0];

    // redist17_i_arrayidx243_kernel_2mm0_dupName_2_trunc_sel_x_b_1(DELAY,173)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_arrayidx243_kernel_2mm0_dupName_2_trunc_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist17_i_arrayidx243_kernel_2mm0_dupName_2_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx243_kernel_2mm0_dupName_2_trunc_sel_x_b);
        end
    end

    // i_arrayidx243_kernel_2mm0_dupName_0_add_x(ADD,12)@5
    assign i_arrayidx243_kernel_2mm0_dupName_0_add_x_a = {1'b0, redist17_i_arrayidx243_kernel_2mm0_dupName_2_trunc_sel_x_b_1_q};
    assign i_arrayidx243_kernel_2mm0_dupName_0_add_x_b = {1'b0, i_arrayidx243_kernel_2mm0_shift_join_x_q};
    assign i_arrayidx243_kernel_2mm0_dupName_0_add_x_o = $unsigned(i_arrayidx243_kernel_2mm0_dupName_0_add_x_a) + $unsigned(i_arrayidx243_kernel_2mm0_dupName_0_add_x_b);
    assign i_arrayidx243_kernel_2mm0_dupName_0_add_x_q = i_arrayidx243_kernel_2mm0_dupName_0_add_x_o[9:0];

    // i_arrayidx243_kernel_2mm0_dupName_5_trunc_sel_x(BITSELECT,10)@5
    assign i_arrayidx243_kernel_2mm0_dupName_5_trunc_sel_x_b = i_arrayidx243_kernel_2mm0_dupName_0_add_x_q[8:0];

    // i_arrayidx243_kernel_2mm0_append_upper_bits_x(BITJOIN,22)@5
    assign i_arrayidx243_kernel_2mm0_append_upper_bits_x_q = {redist0_i_arrayidx243_kernel_2mm0_trunc_sel_x_merged_bit_select_c_1_q, i_arrayidx243_kernel_2mm0_dupName_5_trunc_sel_x_b};

    // i_arrayidx243_kernel_2mm7_vt_select_63(BITSELECT,61)@5
    assign i_arrayidx243_kernel_2mm7_vt_select_63_b = i_arrayidx243_kernel_2mm0_append_upper_bits_x_q[63:2];

    // i_arrayidx243_kernel_2mm0_c_i2_02_x(CONSTANT,23)
    assign i_arrayidx243_kernel_2mm0_c_i2_02_x_q = $unsigned(2'b00);

    // i_arrayidx243_kernel_2mm7_vt_join(BITJOIN,60)@5
    assign i_arrayidx243_kernel_2mm7_vt_join_q = {i_arrayidx243_kernel_2mm7_vt_select_63_b, i_arrayidx243_kernel_2mm0_c_i2_02_x_q};

    // i_llvm_fpga_mem_unnamed_kernel_2mm11_kernel_2mm8(BLACKBOX,73)@5
    // in in_i_stall@20000000
    // out out_o_readdata@9
    // out out_o_stall@8
    // out out_o_valid@9
    // out out_unnamed_kernel_2mm11_kernel_2mm_avm_address@20000000
    // out out_unnamed_kernel_2mm11_kernel_2mm_avm_burstcount@20000000
    // out out_unnamed_kernel_2mm11_kernel_2mm_avm_byteenable@20000000
    // out out_unnamed_kernel_2mm11_kernel_2mm_avm_enable@20000000
    // out out_unnamed_kernel_2mm11_kernel_2mm_avm_read@20000000
    // out out_unnamed_kernel_2mm11_kernel_2mm_avm_write@20000000
    // out out_unnamed_kernel_2mm11_kernel_2mm_avm_writedata@20000000
    kernel_2mm_i_llvm_fpga_mem_unnamed_11_kernel_2mm0 thei_llvm_fpga_mem_unnamed_kernel_2mm11_kernel_2mm8 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx243_kernel_2mm7_vt_join_q),
        .in_i_predicate(GND_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg3_q),
        .in_unnamed_kernel_2mm11_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm11_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm11_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm11_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm11_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm11_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm11_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm11_kernel_2mm_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_kernel_2mm11_kernel_2mm8_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_address(i_llvm_fpga_mem_unnamed_kernel_2mm11_kernel_2mm8_out_unnamed_kernel_2mm11_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_burstcount(i_llvm_fpga_mem_unnamed_kernel_2mm11_kernel_2mm8_out_unnamed_kernel_2mm11_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_byteenable(i_llvm_fpga_mem_unnamed_kernel_2mm11_kernel_2mm8_out_unnamed_kernel_2mm11_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_enable(i_llvm_fpga_mem_unnamed_kernel_2mm11_kernel_2mm8_out_unnamed_kernel_2mm11_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_read(i_llvm_fpga_mem_unnamed_kernel_2mm11_kernel_2mm8_out_unnamed_kernel_2mm11_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_write(i_llvm_fpga_mem_unnamed_kernel_2mm11_kernel_2mm8_out_unnamed_kernel_2mm11_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_writedata(i_llvm_fpga_mem_unnamed_kernel_2mm11_kernel_2mm8_out_unnamed_kernel_2mm11_kernel_2mm_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,5)
    assign out_unnamed_kernel_2mm11_kernel_2mm_avm_address = i_llvm_fpga_mem_unnamed_kernel_2mm11_kernel_2mm8_out_unnamed_kernel_2mm11_kernel_2mm_avm_address;
    assign out_unnamed_kernel_2mm11_kernel_2mm_avm_enable = i_llvm_fpga_mem_unnamed_kernel_2mm11_kernel_2mm8_out_unnamed_kernel_2mm11_kernel_2mm_avm_enable;
    assign out_unnamed_kernel_2mm11_kernel_2mm_avm_read = i_llvm_fpga_mem_unnamed_kernel_2mm11_kernel_2mm8_out_unnamed_kernel_2mm11_kernel_2mm_avm_read;
    assign out_unnamed_kernel_2mm11_kernel_2mm_avm_write = i_llvm_fpga_mem_unnamed_kernel_2mm11_kernel_2mm8_out_unnamed_kernel_2mm11_kernel_2mm_avm_write;
    assign out_unnamed_kernel_2mm11_kernel_2mm_avm_writedata = i_llvm_fpga_mem_unnamed_kernel_2mm11_kernel_2mm8_out_unnamed_kernel_2mm11_kernel_2mm_avm_writedata;
    assign out_unnamed_kernel_2mm11_kernel_2mm_avm_byteenable = i_llvm_fpga_mem_unnamed_kernel_2mm11_kernel_2mm8_out_unnamed_kernel_2mm11_kernel_2mm_avm_byteenable;
    assign out_unnamed_kernel_2mm11_kernel_2mm_avm_burstcount = i_llvm_fpga_mem_unnamed_kernel_2mm11_kernel_2mm8_out_unnamed_kernel_2mm11_kernel_2mm_avm_burstcount;

    // redist16_sync_together59_aunroll_x_in_i_valid_7(DELAY,172)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together59_aunroll_x_in_i_valid_7_delay_0 <= '0;
            redist16_sync_together59_aunroll_x_in_i_valid_7_delay_1 <= '0;
            redist16_sync_together59_aunroll_x_in_i_valid_7_delay_2 <= '0;
            redist16_sync_together59_aunroll_x_in_i_valid_7_q <= '0;
        end
        else
        begin
            redist16_sync_together59_aunroll_x_in_i_valid_7_delay_0 <= $unsigned(redist15_sync_together59_aunroll_x_in_i_valid_3_q);
            redist16_sync_together59_aunroll_x_in_i_valid_7_delay_1 <= redist16_sync_together59_aunroll_x_in_i_valid_7_delay_0;
            redist16_sync_together59_aunroll_x_in_i_valid_7_delay_2 <= redist16_sync_together59_aunroll_x_in_i_valid_7_delay_1;
            redist16_sync_together59_aunroll_x_in_i_valid_7_q <= redist16_sync_together59_aunroll_x_in_i_valid_7_delay_2;
        end
    end

    // valid_fanout_reg0(REG,92)@8 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist16_sync_together59_aunroll_x_in_i_valid_7_q);
        end
    end

    // redist14_sync_together59_aunroll_x_in_c0_eni4_4_tpl_8(DELAY,170)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist14_sync_together59_aunroll_x_in_c0_eni4_4_tpl_8 ( .xin(in_c0_eni4_4_tpl), .xout(redist14_sync_together59_aunroll_x_in_c0_eni4_4_tpl_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_notEnable(LOGICAL,221)
    assign redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_notEnable_q = $unsigned(~ (VCC_q));

    // redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_nor(LOGICAL,222)
    assign redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_nor_q = ~ (redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_notEnable_q | redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_sticky_ena_q);

    // redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_mem_last(CONSTANT,218)
    assign redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_mem_last_q = $unsigned(4'b0100);

    // redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_cmp(LOGICAL,219)
    assign redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_cmp_b = {1'b0, redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_rdcnt_q};
    assign redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_cmp_q = $unsigned(redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_mem_last_q == redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_cmp_b ? 1'b1 : 1'b0);

    // redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_cmpReg(REG,220)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_cmpReg_q <= $unsigned(redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_cmp_q);
        end
    end

    // redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_sticky_ena(REG,223)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_nor_q == 1'b1)
        begin
            redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_sticky_ena_q <= $unsigned(redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_cmpReg_q);
        end
    end

    // redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_enaAnd(LOGICAL,224)
    assign redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_enaAnd_q = redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_sticky_ena_q & VCC_q;

    // redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_rdcnt(COUNTER,216)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_rdcnt_i <= 3'd0;
            redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_rdcnt_i == 3'd4)
            begin
                redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_rdcnt_eq <= 1'b0;
            end
            if (redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_rdcnt_eq == 1'b1)
            begin
                redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_rdcnt_i <= $unsigned(redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_rdcnt_i <= $unsigned(redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_rdcnt_q = redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_rdcnt_i[2:0];

    // redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_wraddr(REG,217)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_wraddr_q <= $unsigned(redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_rdcnt_q);
        end
    end

    // redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_mem(DUALMEM,215)
    assign redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_mem_ia = $unsigned(in_c0_eni4_3_tpl);
    assign redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_mem_aa = redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_wraddr_q;
    assign redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_mem_ab = redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_rdcnt_q;
    assign redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(6),
        .width_b(32),
        .widthad_b(3),
        .numwords_b(6),
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
    ) redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_mem_dmem (
        .clocken1(redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_mem_reset0),
        .clock1(clock),
        .address_a(redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_mem_aa),
        .data_a(redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_mem_ab),
        .q_b(redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_mem_iq),
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
    assign redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_mem_q = redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_mem_iq[31:0];

    // redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_outputreg0(DELAY,214)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_outputreg0_q <= '0;
        end
        else
        begin
            redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_outputreg0_q <= $unsigned(redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_mem_q);
        end
    end

    // redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_notEnable(LOGICAL,210)
    assign redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_notEnable_q = $unsigned(~ (VCC_q));

    // redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_nor(LOGICAL,211)
    assign redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_nor_q = ~ (redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_notEnable_q | redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_sticky_ena_q);

    // redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_mem_last(CONSTANT,207)
    assign redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_mem_last_q = $unsigned(4'b0100);

    // redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_cmp(LOGICAL,208)
    assign redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_cmp_b = {1'b0, redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_rdcnt_q};
    assign redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_cmp_q = $unsigned(redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_mem_last_q == redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_cmp_b ? 1'b1 : 1'b0);

    // redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_cmpReg(REG,209)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_cmpReg_q <= $unsigned(redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_cmp_q);
        end
    end

    // redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_sticky_ena(REG,212)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_nor_q == 1'b1)
        begin
            redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_sticky_ena_q <= $unsigned(redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_cmpReg_q);
        end
    end

    // redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_enaAnd(LOGICAL,213)
    assign redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_enaAnd_q = redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_sticky_ena_q & VCC_q;

    // redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_rdcnt(COUNTER,205)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_rdcnt_i <= 3'd0;
            redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_rdcnt_i == 3'd4)
            begin
                redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_rdcnt_eq <= 1'b0;
            end
            if (redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_rdcnt_eq == 1'b1)
            begin
                redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_rdcnt_i <= $unsigned(redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_rdcnt_i <= $unsigned(redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_rdcnt_q = redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_rdcnt_i[2:0];

    // redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_wraddr(REG,206)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_wraddr_q <= $unsigned(redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_rdcnt_q);
        end
    end

    // redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_mem(DUALMEM,204)
    assign redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_mem_ia = $unsigned(redist8_sync_together59_aunroll_x_in_c0_eni4_1_tpl_1_q);
    assign redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_mem_aa = redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_wraddr_q;
    assign redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_mem_ab = redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_rdcnt_q;
    assign redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(6),
        .width_b(32),
        .widthad_b(3),
        .numwords_b(6),
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
    ) redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_mem_dmem (
        .clocken1(redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_mem_reset0),
        .clock1(clock),
        .address_a(redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_mem_aa),
        .data_a(redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_mem_ab),
        .q_b(redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_mem_iq),
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
    assign redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_mem_q = redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_mem_iq[31:0];

    // valid_fanout_reg8(REG,100)@8 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist16_sync_together59_aunroll_x_in_i_valid_7_q);
        end
    end

    // valid_fanout_reg9(REG,101)@8 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist16_sync_together59_aunroll_x_in_i_valid_7_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp72112_push37_kernel_2mm22(BLACKBOX,80)@9
    // out out_feedback_out_37@20000000
    // out out_feedback_valid_out_37@20000000
    kernel_2mm_i_llvm_fpga_push_i1_notcmp72112_push37_0 thei_llvm_fpga_push_i1_notcmp72112_push37_kernel_2mm22 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp72112_pop37_kernel_2mm21_out_data_out),
        .in_exitcond12(redist3_i_exitcond12_kernel_2mm10_cmp_nsign_q_8_q),
        .in_feedback_stall_in_37(i_llvm_fpga_pop_i1_notcmp72112_pop37_kernel_2mm21_out_feedback_stall_out_37),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(),
        .out_feedback_out_37(i_llvm_fpga_push_i1_notcmp72112_push37_kernel_2mm22_out_feedback_out_37),
        .out_feedback_valid_out_37(i_llvm_fpga_push_i1_notcmp72112_push37_kernel_2mm22_out_feedback_valid_out_37),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist12_sync_together59_aunroll_x_in_c0_eni4_2_tpl_8(DELAY,168)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together59_aunroll_x_in_c0_eni4_2_tpl_8_delay_0 <= '0;
            redist12_sync_together59_aunroll_x_in_c0_eni4_2_tpl_8_delay_1 <= '0;
            redist12_sync_together59_aunroll_x_in_c0_eni4_2_tpl_8_delay_2 <= '0;
            redist12_sync_together59_aunroll_x_in_c0_eni4_2_tpl_8_q <= '0;
        end
        else
        begin
            redist12_sync_together59_aunroll_x_in_c0_eni4_2_tpl_8_delay_0 <= $unsigned(redist11_sync_together59_aunroll_x_in_c0_eni4_2_tpl_4_q);
            redist12_sync_together59_aunroll_x_in_c0_eni4_2_tpl_8_delay_1 <= redist12_sync_together59_aunroll_x_in_c0_eni4_2_tpl_8_delay_0;
            redist12_sync_together59_aunroll_x_in_c0_eni4_2_tpl_8_delay_2 <= redist12_sync_together59_aunroll_x_in_c0_eni4_2_tpl_8_delay_1;
            redist12_sync_together59_aunroll_x_in_c0_eni4_2_tpl_8_q <= redist12_sync_together59_aunroll_x_in_c0_eni4_2_tpl_8_delay_2;
        end
    end

    // i_llvm_fpga_pop_i1_notcmp72112_pop37_kernel_2mm21(BLACKBOX,75)@9
    // out out_feedback_stall_out_37@20000000
    kernel_2mm_i_llvm_fpga_pop_i1_notcmp72112_pop37_0 thei_llvm_fpga_pop_i1_notcmp72112_pop37_kernel_2mm21 (
        .in_data_in(redist14_sync_together59_aunroll_x_in_c0_eni4_4_tpl_8_q),
        .in_dir(redist12_sync_together59_aunroll_x_in_c0_eni4_2_tpl_8_q),
        .in_feedback_in_37(i_llvm_fpga_push_i1_notcmp72112_push37_kernel_2mm22_out_feedback_out_37),
        .in_feedback_valid_in_37(i_llvm_fpga_push_i1_notcmp72112_push37_kernel_2mm22_out_feedback_valid_out_37),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp72112_pop37_kernel_2mm21_out_data_out),
        .out_feedback_stall_out_37(i_llvm_fpga_pop_i1_notcmp72112_pop37_kernel_2mm21_out_feedback_stall_out_37),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg6(REG,98)@8 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist16_sync_together59_aunroll_x_in_i_valid_7_q);
        end
    end

    // valid_fanout_reg7(REG,99)@8 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist16_sync_together59_aunroll_x_in_i_valid_7_q);
        end
    end

    // i_llvm_fpga_push_i32_mul_add26110_push36_kernel_2mm20(BLACKBOX,84)@9
    // out out_feedback_out_36@20000000
    // out out_feedback_valid_out_36@20000000
    kernel_2mm_i_llvm_fpga_push_i32_mul_add26110_push36_0 thei_llvm_fpga_push_i32_mul_add26110_push36_kernel_2mm20 (
        .in_data_in(i_llvm_fpga_pop_i32_mul_add26110_pop36_kernel_2mm19_out_data_out),
        .in_exitcond12(redist3_i_exitcond12_kernel_2mm10_cmp_nsign_q_8_q),
        .in_feedback_stall_in_36(i_llvm_fpga_pop_i32_mul_add26110_pop36_kernel_2mm19_out_feedback_stall_out_36),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(),
        .out_feedback_out_36(i_llvm_fpga_push_i32_mul_add26110_push36_kernel_2mm20_out_feedback_out_36),
        .out_feedback_valid_out_36(i_llvm_fpga_push_i32_mul_add26110_push36_kernel_2mm20_out_feedback_valid_out_36),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_mul_add26110_pop36_kernel_2mm19(BLACKBOX,78)@9
    // out out_feedback_stall_out_36@20000000
    kernel_2mm_i_llvm_fpga_pop_i32_mul_add26110_pop36_0 thei_llvm_fpga_pop_i32_mul_add26110_pop36_kernel_2mm19 (
        .in_data_in(redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_outputreg0_q),
        .in_dir(redist12_sync_together59_aunroll_x_in_c0_eni4_2_tpl_8_q),
        .in_feedback_in_36(i_llvm_fpga_push_i32_mul_add26110_push36_kernel_2mm20_out_feedback_out_36),
        .in_feedback_valid_in_36(i_llvm_fpga_push_i32_mul_add26110_push36_kernel_2mm20_out_feedback_valid_out_36),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(i_llvm_fpga_pop_i32_mul_add26110_pop36_kernel_2mm19_out_data_out),
        .out_feedback_stall_out_36(i_llvm_fpga_pop_i32_mul_add26110_pop36_kernel_2mm19_out_feedback_stall_out_36),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_notcmp67_kernel_2mm13(LOGICAL,86)@9
    assign i_notcmp67_kernel_2mm13_q = redist3_i_exitcond12_kernel_2mm10_cmp_nsign_q_8_q ^ VCC_q;

    // redist3_i_exitcond12_kernel_2mm10_cmp_nsign_q_8(DELAY,159)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_exitcond12_kernel_2mm10_cmp_nsign_q_8_delay_0 <= '0;
            redist3_i_exitcond12_kernel_2mm10_cmp_nsign_q_8_delay_1 <= '0;
            redist3_i_exitcond12_kernel_2mm10_cmp_nsign_q_8_delay_2 <= '0;
            redist3_i_exitcond12_kernel_2mm10_cmp_nsign_q_8_q <= '0;
        end
        else
        begin
            redist3_i_exitcond12_kernel_2mm10_cmp_nsign_q_8_delay_0 <= $unsigned(redist2_i_exitcond12_kernel_2mm10_cmp_nsign_q_4_q);
            redist3_i_exitcond12_kernel_2mm10_cmp_nsign_q_8_delay_1 <= redist3_i_exitcond12_kernel_2mm10_cmp_nsign_q_8_delay_0;
            redist3_i_exitcond12_kernel_2mm10_cmp_nsign_q_8_delay_2 <= redist3_i_exitcond12_kernel_2mm10_cmp_nsign_q_8_delay_1;
            redist3_i_exitcond12_kernel_2mm10_cmp_nsign_q_8_q <= redist3_i_exitcond12_kernel_2mm10_cmp_nsign_q_8_delay_2;
        end
    end

    // redist7_i_arrayidx243_kernel_2mm7_vt_join_q_4_notEnable(LOGICAL,200)
    assign redist7_i_arrayidx243_kernel_2mm7_vt_join_q_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist7_i_arrayidx243_kernel_2mm7_vt_join_q_4_nor(LOGICAL,201)
    assign redist7_i_arrayidx243_kernel_2mm7_vt_join_q_4_nor_q = ~ (redist7_i_arrayidx243_kernel_2mm7_vt_join_q_4_notEnable_q | redist7_i_arrayidx243_kernel_2mm7_vt_join_q_4_sticky_ena_q);

    // redist7_i_arrayidx243_kernel_2mm7_vt_join_q_4_cmpReg(REG,199)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_arrayidx243_kernel_2mm7_vt_join_q_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist7_i_arrayidx243_kernel_2mm7_vt_join_q_4_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist7_i_arrayidx243_kernel_2mm7_vt_join_q_4_sticky_ena(REG,202)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_arrayidx243_kernel_2mm7_vt_join_q_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist7_i_arrayidx243_kernel_2mm7_vt_join_q_4_nor_q == 1'b1)
        begin
            redist7_i_arrayidx243_kernel_2mm7_vt_join_q_4_sticky_ena_q <= $unsigned(redist7_i_arrayidx243_kernel_2mm7_vt_join_q_4_cmpReg_q);
        end
    end

    // redist7_i_arrayidx243_kernel_2mm7_vt_join_q_4_enaAnd(LOGICAL,203)
    assign redist7_i_arrayidx243_kernel_2mm7_vt_join_q_4_enaAnd_q = redist7_i_arrayidx243_kernel_2mm7_vt_join_q_4_sticky_ena_q & VCC_q;

    // redist7_i_arrayidx243_kernel_2mm7_vt_join_q_4_rdcnt(COUNTER,197)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_arrayidx243_kernel_2mm7_vt_join_q_4_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist7_i_arrayidx243_kernel_2mm7_vt_join_q_4_rdcnt_i <= $unsigned(redist7_i_arrayidx243_kernel_2mm7_vt_join_q_4_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist7_i_arrayidx243_kernel_2mm7_vt_join_q_4_rdcnt_q = redist7_i_arrayidx243_kernel_2mm7_vt_join_q_4_rdcnt_i[0:0];

    // redist7_i_arrayidx243_kernel_2mm7_vt_join_q_4_inputreg0(DELAY,195)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_arrayidx243_kernel_2mm7_vt_join_q_4_inputreg0_q <= '0;
        end
        else
        begin
            redist7_i_arrayidx243_kernel_2mm7_vt_join_q_4_inputreg0_q <= $unsigned(i_arrayidx243_kernel_2mm7_vt_join_q);
        end
    end

    // redist7_i_arrayidx243_kernel_2mm7_vt_join_q_4_wraddr(REG,198)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_arrayidx243_kernel_2mm7_vt_join_q_4_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist7_i_arrayidx243_kernel_2mm7_vt_join_q_4_wraddr_q <= $unsigned(redist7_i_arrayidx243_kernel_2mm7_vt_join_q_4_rdcnt_q);
        end
    end

    // redist7_i_arrayidx243_kernel_2mm7_vt_join_q_4_mem(DUALMEM,196)
    assign redist7_i_arrayidx243_kernel_2mm7_vt_join_q_4_mem_ia = $unsigned(redist7_i_arrayidx243_kernel_2mm7_vt_join_q_4_inputreg0_q);
    assign redist7_i_arrayidx243_kernel_2mm7_vt_join_q_4_mem_aa = redist7_i_arrayidx243_kernel_2mm7_vt_join_q_4_wraddr_q;
    assign redist7_i_arrayidx243_kernel_2mm7_vt_join_q_4_mem_ab = redist7_i_arrayidx243_kernel_2mm7_vt_join_q_4_rdcnt_q;
    assign redist7_i_arrayidx243_kernel_2mm7_vt_join_q_4_mem_reset0 = ~ (resetn);
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
        .intended_device_family("Cyclone V")
    ) redist7_i_arrayidx243_kernel_2mm7_vt_join_q_4_mem_dmem (
        .clocken1(redist7_i_arrayidx243_kernel_2mm7_vt_join_q_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist7_i_arrayidx243_kernel_2mm7_vt_join_q_4_mem_reset0),
        .clock1(clock),
        .address_a(redist7_i_arrayidx243_kernel_2mm7_vt_join_q_4_mem_aa),
        .data_a(redist7_i_arrayidx243_kernel_2mm7_vt_join_q_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist7_i_arrayidx243_kernel_2mm7_vt_join_q_4_mem_ab),
        .q_b(redist7_i_arrayidx243_kernel_2mm7_vt_join_q_4_mem_iq),
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
    assign redist7_i_arrayidx243_kernel_2mm7_vt_join_q_4_mem_q = redist7_i_arrayidx243_kernel_2mm7_vt_join_q_4_mem_iq[63:0];

    // redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_notEnable(LOGICAL,181)
    assign redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_nor(LOGICAL,182)
    assign redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_nor_q = ~ (redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_notEnable_q | redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_sticky_ena_q);

    // redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_mem_last(CONSTANT,178)
    assign redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_mem_last_q = $unsigned(2'b01);

    // redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_cmp(LOGICAL,179)
    assign redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_cmp_q = $unsigned(redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_mem_last_q == redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_rdcnt_q ? 1'b1 : 1'b0);

    // redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_cmpReg(REG,180)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_cmpReg_q <= $unsigned(redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_cmp_q);
        end
    end

    // redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_sticky_ena(REG,183)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_nor_q == 1'b1)
        begin
            redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_sticky_ena_q <= $unsigned(redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_cmpReg_q);
        end
    end

    // redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_enaAnd(LOGICAL,184)
    assign redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_enaAnd_q = redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_sticky_ena_q & VCC_q;

    // redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_rdcnt(COUNTER,176)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_rdcnt_i <= 2'd0;
            redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_rdcnt_i == 2'd1)
            begin
                redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_rdcnt_eq <= 1'b0;
            end
            if (redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_rdcnt_eq == 1'b1)
            begin
                redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_rdcnt_i <= $unsigned(redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_rdcnt_i <= $unsigned(redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_rdcnt_q = redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_rdcnt_i[1:0];

    // redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_wraddr(REG,177)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_wraddr_q <= $unsigned(redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_rdcnt_q);
        end
    end

    // redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_mem(DUALMEM,175)
    assign redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_mem_ia = $unsigned(i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out);
    assign redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_mem_aa = redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_wraddr_q;
    assign redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_mem_ab = redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_rdcnt_q;
    assign redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(2),
        .numwords_a(3),
        .width_b(32),
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
    ) redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_mem_dmem (
        .clocken1(redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_mem_reset0),
        .clock1(clock),
        .address_a(redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_mem_aa),
        .data_a(redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_mem_ab),
        .q_b(redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_mem_iq),
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
    assign redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_mem_q = redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_mem_iq[31:0];

    // redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_notEnable(LOGICAL,191)
    assign redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_notEnable_q = $unsigned(~ (VCC_q));

    // redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_nor(LOGICAL,192)
    assign redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_nor_q = ~ (redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_notEnable_q | redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_sticky_ena_q);

    // redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_mem_last(CONSTANT,188)
    assign redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_mem_last_q = $unsigned(3'b011);

    // redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_cmp(LOGICAL,189)
    assign redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_cmp_q = $unsigned(redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_mem_last_q == redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_rdcnt_q ? 1'b1 : 1'b0);

    // redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_cmpReg(REG,190)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_cmpReg_q <= $unsigned(redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_cmp_q);
        end
    end

    // redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_sticky_ena(REG,193)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_nor_q == 1'b1)
        begin
            redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_sticky_ena_q <= $unsigned(redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_cmpReg_q);
        end
    end

    // redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_enaAnd(LOGICAL,194)
    assign redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_enaAnd_q = redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_sticky_ena_q & VCC_q;

    // redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_rdcnt(COUNTER,186)
    // low=0, high=4, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_rdcnt_i <= 3'd0;
            redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_rdcnt_i == 3'd3)
            begin
                redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_rdcnt_eq <= 1'b0;
            end
            if (redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_rdcnt_eq == 1'b1)
            begin
                redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_rdcnt_i <= $unsigned(redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_rdcnt_i) + $unsigned(3'd4);
            end
            else
            begin
                redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_rdcnt_i <= $unsigned(redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_rdcnt_q = redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_rdcnt_i[2:0];

    // redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_wraddr(REG,187)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_wraddr_q <= $unsigned(3'b100);
        end
        else
        begin
            redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_wraddr_q <= $unsigned(redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_rdcnt_q);
        end
    end

    // redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_mem(DUALMEM,185)
    assign redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_mem_ia = $unsigned(redist5_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_1_q);
    assign redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_mem_aa = redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_wraddr_q;
    assign redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_mem_ab = redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_rdcnt_q;
    assign redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_mem_reset0 = ~ (resetn);
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
    ) redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_mem_dmem (
        .clocken1(redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_mem_reset0),
        .clock1(clock),
        .address_a(redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_mem_aa),
        .data_a(redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_mem_ab),
        .q_b(redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_mem_iq),
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
    assign redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_mem_q = redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_mem_iq[31:0];

    // sync_out_aunroll_x(GPOUT,32)@9
    assign out_c0_exi11_0_tpl = GND_q;
    assign out_c0_exi11_1_tpl = redist6_i_llvm_fpga_pop_i32_i11_082_pop23108_pop35_kernel_2mm3_out_data_out_7_mem_q;
    assign out_c0_exi11_2_tpl = redist4_i_llvm_fpga_pop_i32_j16_081_pop34_kernel_2mm5_out_data_out_4_mem_q;
    assign out_c0_exi11_3_tpl = redist7_i_arrayidx243_kernel_2mm7_vt_join_q_4_mem_q;
    assign out_c0_exi11_4_tpl = i_llvm_fpga_mem_unnamed_kernel_2mm11_kernel_2mm8_out_o_readdata;
    assign out_c0_exi11_5_tpl = redist3_i_exitcond12_kernel_2mm10_cmp_nsign_q_8_q;
    assign out_c0_exi11_6_tpl = i_notcmp67_kernel_2mm13_q;
    assign out_c0_exi11_7_tpl = i_llvm_fpga_pop_i32_mul_add26110_pop36_kernel_2mm19_out_data_out;
    assign out_c0_exi11_8_tpl = i_llvm_fpga_pop_i1_notcmp72112_pop37_kernel_2mm21_out_data_out;
    assign out_c0_exi11_9_tpl = redist9_sync_together59_aunroll_x_in_c0_eni4_1_tpl_8_mem_q;
    assign out_c0_exi11_10_tpl = redist13_sync_together59_aunroll_x_in_c0_eni4_3_tpl_8_outputreg0_q;
    assign out_c0_exi11_11_tpl = redist14_sync_together59_aunroll_x_in_c0_eni4_4_tpl_8_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_kernel_2mm1 = GND_q;

    // i_llvm_fpga_push_i1_notexitcond70_kernel_2mm14(BLACKBOX,81)@1
    // out out_feedback_out_11@20000000
    // out out_feedback_valid_out_11@20000000
    kernel_2mm_i_llvm_fpga_push_i1_notexitcond70_0 thei_llvm_fpga_push_i1_notexitcond70_kernel_2mm14 (
        .in_data_in(i_exitcond12_kernel_2mm10_cmp_nsign_q),
        .in_feedback_stall_in_11(i_llvm_fpga_pipeline_keep_going69_kernel_2mm2_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_11(i_llvm_fpga_push_i1_notexitcond70_kernel_2mm14_out_feedback_out_11),
        .out_feedback_valid_out_11(i_llvm_fpga_push_i1_notexitcond70_kernel_2mm14_out_feedback_valid_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going69_kernel_2mm2(BLACKBOX,74)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    kernel_2mm_i_llvm_fpga_pipeline_keep_going69_0 thei_llvm_fpga_pipeline_keep_going69_kernel_2mm2 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond70_kernel_2mm14_out_feedback_out_11),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond70_kernel_2mm14_out_feedback_valid_out_11),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going69_kernel_2mm2_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going69_kernel_2mm2_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going69_kernel_2mm2_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going69_kernel_2mm2_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,58)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going69_kernel_2mm2_exiting_valid_out = i_llvm_fpga_pipeline_keep_going69_kernel_2mm2_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going69_kernel_2mm2_exiting_stall_out = i_llvm_fpga_pipeline_keep_going69_kernel_2mm2_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,89)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going69_kernel_2mm2_out_pipeline_valid_out;

endmodule
