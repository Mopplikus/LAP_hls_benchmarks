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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body76_kernel_3mms_c0_enter53850_kernel_3mm0
// Created for function/kernel kernel_3mm
// SystemVerilog created on Fri Apr  7 18:25:07 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_i_sfc_logic_s_c0_in_for_body70000ter53850_kernel_3mm0 (
    input wire [31:0] in_unnamed_kernel_3mm10_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm10_kernel_3mm_avm_writeack,
    input wire [0:0] in_unnamed_kernel_3mm10_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm10_kernel_3mm_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_kernel_3mm2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_kernel_3mm2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    output wire [31:0] out_unnamed_kernel_3mm10_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm10_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm10_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm10_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm10_kernel_3mm_avm_writedata,
    output wire [3:0] out_unnamed_kernel_3mm10_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm10_kernel_3mm_avm_burstcount,
    output wire [0:0] out_c0_exi13556_0_tpl,
    output wire [31:0] out_c0_exi13556_1_tpl,
    output wire [63:0] out_c0_exi13556_2_tpl,
    output wire [63:0] out_c0_exi13556_3_tpl,
    output wire [63:0] out_c0_exi13556_4_tpl,
    output wire [0:0] out_c0_exi13556_5_tpl,
    output wire [31:0] out_c0_exi13556_6_tpl,
    output wire [0:0] out_c0_exi13556_7_tpl,
    output wire [0:0] out_c0_exi13556_8_tpl,
    output wire [0:0] out_c0_exi13556_9_tpl,
    output wire [0:0] out_c0_exi13556_10_tpl,
    output wire [0:0] out_c0_exi13556_11_tpl,
    output wire [31:0] out_c0_exi13556_12_tpl,
    output wire [0:0] out_c0_exi13556_13_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_kernel_3mm0,
    input wire [0:0] in_c0_eni5537_0_tpl,
    input wire [31:0] in_c0_eni5537_1_tpl,
    input wire [0:0] in_c0_eni5537_2_tpl,
    input wire [0:0] in_c0_eni5537_3_tpl,
    input wire [0:0] in_c0_eni5537_4_tpl,
    input wire [0:0] in_c0_eni5537_5_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_038_q;
    wire [31:0] c_i32_142_q;
    wire [4:0] c_i5_141_q;
    wire [4:0] c_i5_839_q;
    wire [63:0] c_kernel_3mm_G_local_pmem_q;
    wire [1:0] i_arrayidx817_kernel_3mm7_vt_const_1_q;
    wire [63:0] i_arrayidx817_kernel_3mm7_vt_join_q;
    wire [61:0] i_arrayidx817_kernel_3mm7_vt_select_63_b;
    wire [5:0] i_fpga_indvars_iv_next21_kernel_3mm17_a;
    wire [5:0] i_fpga_indvars_iv_next21_kernel_3mm17_b;
    logic [5:0] i_fpga_indvars_iv_next21_kernel_3mm17_o;
    wire [5:0] i_fpga_indvars_iv_next21_kernel_3mm17_q;
    wire [63:0] i_idxprom78_kernel_3mm4_vt_join_q;
    wire [31:0] i_idxprom78_kernel_3mm4_vt_select_31_b;
    wire [63:0] i_idxprom80_kernel_3mm6_vt_join_q;
    wire [31:0] i_idxprom80_kernel_3mm6_vt_select_31_b;
    wire [32:0] i_inc103_kernel_3mm19_a;
    wire [32:0] i_inc103_kernel_3mm19_b;
    logic [32:0] i_inc103_kernel_3mm19_o;
    wire [32:0] i_inc103_kernel_3mm19_q;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm9_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm9_out_unnamed_kernel_3mm10_kernel_3mm_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm9_out_unnamed_kernel_3mm10_kernel_3mm_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm9_out_unnamed_kernel_3mm10_kernel_3mm_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm9_out_unnamed_kernel_3mm10_kernel_3mm_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm9_out_unnamed_kernel_3mm10_kernel_3mm_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm9_out_unnamed_kernel_3mm10_kernel_3mm_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm9_out_unnamed_kernel_3mm10_kernel_3mm_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going28_kernel_3mm2_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going28_kernel_3mm2_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going28_kernel_3mm2_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going28_kernel_3mm2_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi7_pop21105_pop43_kernel_3mm8_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi7_pop21105_pop43_kernel_3mm8_out_feedback_stall_out_43;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp31115_pop44_kernel_3mm21_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp31115_pop44_kernel_3mm21_out_feedback_stall_out_44;
    wire [31:0] i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_feedback_stall_out_45;
    wire [31:0] i_llvm_fpga_pop_i32_j_251_pop42_kernel_3mm5_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_251_pop42_kernel_3mm5_out_feedback_stall_out_42;
    wire [4:0] i_llvm_fpga_pop_i5_fpga_indvars_iv20_pop41_kernel_3mm10_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i5_fpga_indvars_iv20_pop41_kernel_3mm10_out_feedback_stall_out_41;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi7_pop21105_push43_kernel_3mm14_out_feedback_out_43;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi7_pop21105_push43_kernel_3mm14_out_feedback_valid_out_43;
    wire [0:0] i_llvm_fpga_push_i1_notcmp31115_push44_kernel_3mm22_out_feedback_out_44;
    wire [0:0] i_llvm_fpga_push_i1_notcmp31115_push44_kernel_3mm22_out_feedback_valid_out_44;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond29_kernel_3mm16_out_feedback_out_4;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond29_kernel_3mm16_out_feedback_valid_out_4;
    wire [31:0] i_llvm_fpga_push_i32_i_252_pop30117_push45_kernel_3mm13_out_feedback_out_45;
    wire [0:0] i_llvm_fpga_push_i32_i_252_pop30117_push45_kernel_3mm13_out_feedback_valid_out_45;
    wire [31:0] i_llvm_fpga_push_i32_j_251_push42_kernel_3mm20_out_feedback_out_42;
    wire [0:0] i_llvm_fpga_push_i32_j_251_push42_kernel_3mm20_out_feedback_valid_out_42;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv20_push41_kernel_3mm18_out_feedback_out_41;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv20_push41_kernel_3mm18_out_feedback_valid_out_41;
    wire [0:0] i_notcmp26_kernel_3mm15_q;
    wire [4:0] bgTrunc_i_fpga_indvars_iv_next21_kernel_3mm17_sel_x_b;
    wire [31:0] bgTrunc_i_inc103_kernel_3mm19_sel_x_b;
    wire [9:0] i_arrayidx817_kernel_3mm0_add_x_a;
    wire [9:0] i_arrayidx817_kernel_3mm0_add_x_b;
    logic [9:0] i_arrayidx817_kernel_3mm0_add_x_o;
    wire [9:0] i_arrayidx817_kernel_3mm0_add_x_q;
    wire [63:0] i_arrayidx817_kernel_3mm0_append_upper_bits_x_q;
    wire [6:0] i_arrayidx817_kernel_3mm0_narrow_x_b;
    wire [8:0] i_arrayidx817_kernel_3mm0_shift_join_x_q;
    wire [9:0] i_arrayidx817_kernel_3mm0_dupName_0_add_x_a;
    wire [9:0] i_arrayidx817_kernel_3mm0_dupName_0_add_x_b;
    logic [9:0] i_arrayidx817_kernel_3mm0_dupName_0_add_x_o;
    wire [9:0] i_arrayidx817_kernel_3mm0_dupName_0_add_x_q;
    wire [17:0] i_arrayidx817_kernel_3mm0_mult_extender_x_q;
    wire [2:0] i_arrayidx817_kernel_3mm0_mult_multconst_x_q;
    wire [8:0] i_arrayidx817_kernel_3mm0_dupName_0_trunc_sel_x_b;
    wire [8:0] i_arrayidx817_kernel_3mm0_dupName_1_trunc_sel_x_b;
    wire [8:0] i_arrayidx817_kernel_3mm0_dupName_2_trunc_sel_x_b;
    wire [8:0] i_arrayidx817_kernel_3mm0_dupName_3_trunc_sel_x_b;
    wire [8:0] i_arrayidx817_kernel_3mm0_dupName_5_trunc_sel_x_b;
    wire [63:0] i_idxprom78_kernel_3mm4_sel_x_b;
    wire [63:0] i_idxprom80_kernel_3mm6_sel_x_b;
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
    wire [0:0] i_exitcond22_kernel_3mm11_cmp_nsign_q;
    wire [9:0] addsumAHighB_uid118_i_arrayidx817_kernel_3mm0_mult_x_a;
    wire [9:0] addsumAHighB_uid118_i_arrayidx817_kernel_3mm0_mult_x_b;
    logic [9:0] addsumAHighB_uid118_i_arrayidx817_kernel_3mm0_mult_x_o;
    wire [9:0] addsumAHighB_uid118_i_arrayidx817_kernel_3mm0_mult_x_q;
    wire [11:0] add_uid119_i_arrayidx817_kernel_3mm0_mult_x_q;
    wire [14:0] sR_mergedSignalTM_uid124_i_arrayidx817_kernel_3mm0_mult_x_q;
    wire [54:0] i_arrayidx817_kernel_3mm0_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx817_kernel_3mm0_upper_bits_x_merged_bit_select_c;
    wire [1:0] lowRangeB_uid116_i_arrayidx817_kernel_3mm0_mult_x_merged_bit_select_b;
    wire [6:0] lowRangeB_uid116_i_arrayidx817_kernel_3mm0_mult_x_merged_bit_select_c;
    reg [0:0] redist0_i_exitcond22_kernel_3mm11_cmp_nsign_q_2_q;
    reg [0:0] redist0_i_exitcond22_kernel_3mm11_cmp_nsign_q_2_delay_0;
    reg [0:0] redist1_i_exitcond22_kernel_3mm11_cmp_nsign_q_3_q;
    reg [0:0] redist2_i_exitcond22_kernel_3mm11_cmp_nsign_q_6_q;
    reg [0:0] redist2_i_exitcond22_kernel_3mm11_cmp_nsign_q_6_delay_0;
    reg [0:0] redist2_i_exitcond22_kernel_3mm11_cmp_nsign_q_6_delay_1;
    reg [31:0] redist3_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_1_q;
    reg [0:0] redist5_sync_together60_aunroll_x_in_c0_eni5537_2_tpl_1_q;
    reg [0:0] redist6_sync_together60_aunroll_x_in_c0_eni5537_2_tpl_2_q;
    reg [0:0] redist7_sync_together60_aunroll_x_in_c0_eni5537_2_tpl_6_q;
    reg [0:0] redist7_sync_together60_aunroll_x_in_c0_eni5537_2_tpl_6_delay_0;
    reg [0:0] redist7_sync_together60_aunroll_x_in_c0_eni5537_2_tpl_6_delay_1;
    reg [0:0] redist7_sync_together60_aunroll_x_in_c0_eni5537_2_tpl_6_delay_2;
    reg [0:0] redist8_sync_together60_aunroll_x_in_c0_eni5537_3_tpl_2_q;
    reg [0:0] redist8_sync_together60_aunroll_x_in_c0_eni5537_3_tpl_2_delay_0;
    reg [0:0] redist9_sync_together60_aunroll_x_in_c0_eni5537_3_tpl_6_q;
    reg [0:0] redist9_sync_together60_aunroll_x_in_c0_eni5537_3_tpl_6_delay_0;
    reg [0:0] redist9_sync_together60_aunroll_x_in_c0_eni5537_3_tpl_6_delay_1;
    reg [0:0] redist9_sync_together60_aunroll_x_in_c0_eni5537_3_tpl_6_delay_2;
    reg [0:0] redist10_sync_together60_aunroll_x_in_c0_eni5537_4_tpl_6_q;
    reg [0:0] redist11_sync_together60_aunroll_x_in_c0_eni5537_5_tpl_6_q;
    reg [0:0] redist12_sync_together60_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist13_sync_together60_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist14_sync_together60_aunroll_x_in_i_valid_5_q;
    reg [0:0] redist14_sync_together60_aunroll_x_in_i_valid_5_delay_0;
    reg [0:0] redist14_sync_together60_aunroll_x_in_i_valid_5_delay_1;
    reg [8:0] redist15_i_arrayidx817_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q;
    reg [31:0] redist16_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_1_q;
    reg [0:0] redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop21105_pop43_kernel_3mm8_out_data_out_1_q;
    reg [0:0] redist19_i_llvm_fpga_pop_i1_memdep_phi7_pop21105_pop43_kernel_3mm8_out_data_out_4_q;
    reg [0:0] redist19_i_llvm_fpga_pop_i1_memdep_phi7_pop21105_pop43_kernel_3mm8_out_data_out_4_delay_0;
    reg [0:0] redist19_i_llvm_fpga_pop_i1_memdep_phi7_pop21105_pop43_kernel_3mm8_out_data_out_4_delay_1;
    wire redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_mem_reset0;
    wire [31:0] redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_mem_ia;
    wire [1:0] redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_mem_aa;
    wire [1:0] redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_mem_ab;
    wire [31:0] redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_mem_iq;
    wire [31:0] redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_mem_q;
    wire [1:0] redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_rdcnt_q;
    (* preserve *) reg [1:0] redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_rdcnt_i;
    reg [1:0] redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_wraddr_q;
    wire [2:0] redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_mem_last_q;
    wire [2:0] redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_cmp_b;
    wire [0:0] redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_cmp_q;
    (* dont_merge *) reg [0:0] redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_cmpReg_q;
    wire [0:0] redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_notEnable_q;
    wire [0:0] redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_nor_q;
    (* dont_merge *) reg [0:0] redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_sticky_ena_q;
    wire [0:0] redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_enaAnd_q;
    wire redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_mem_reset0;
    wire [31:0] redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_mem_ia;
    wire [1:0] redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_mem_aa;
    wire [1:0] redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_mem_ab;
    wire [31:0] redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_mem_iq;
    wire [31:0] redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_mem_q;
    wire [1:0] redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_rdcnt_q;
    (* preserve *) reg [1:0] redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_rdcnt_i;
    (* preserve *) reg redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_rdcnt_eq;
    reg [1:0] redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_wraddr_q;
    wire [1:0] redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_mem_last_q;
    wire [0:0] redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_cmp_q;
    (* dont_merge *) reg [0:0] redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_cmpReg_q;
    wire [0:0] redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_notEnable_q;
    wire [0:0] redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_nor_q;
    (* dont_merge *) reg [0:0] redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_sticky_ena_q;
    wire [0:0] redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_enaAnd_q;
    reg [63:0] redist20_i_idxprom80_kernel_3mm6_vt_join_q_4_inputreg0_q;
    wire redist20_i_idxprom80_kernel_3mm6_vt_join_q_4_mem_reset0;
    wire [63:0] redist20_i_idxprom80_kernel_3mm6_vt_join_q_4_mem_ia;
    wire [0:0] redist20_i_idxprom80_kernel_3mm6_vt_join_q_4_mem_aa;
    wire [0:0] redist20_i_idxprom80_kernel_3mm6_vt_join_q_4_mem_ab;
    wire [63:0] redist20_i_idxprom80_kernel_3mm6_vt_join_q_4_mem_iq;
    wire [63:0] redist20_i_idxprom80_kernel_3mm6_vt_join_q_4_mem_q;
    wire [0:0] redist20_i_idxprom80_kernel_3mm6_vt_join_q_4_rdcnt_q;
    (* preserve *) reg [0:0] redist20_i_idxprom80_kernel_3mm6_vt_join_q_4_rdcnt_i;
    reg [0:0] redist20_i_idxprom80_kernel_3mm6_vt_join_q_4_wraddr_q;
    (* dont_merge *) reg [0:0] redist20_i_idxprom80_kernel_3mm6_vt_join_q_4_cmpReg_q;
    wire [0:0] redist20_i_idxprom80_kernel_3mm6_vt_join_q_4_notEnable_q;
    wire [0:0] redist20_i_idxprom80_kernel_3mm6_vt_join_q_4_nor_q;
    (* dont_merge *) reg [0:0] redist20_i_idxprom80_kernel_3mm6_vt_join_q_4_sticky_ena_q;
    wire [0:0] redist20_i_idxprom80_kernel_3mm6_vt_join_q_4_enaAnd_q;
    wire redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_mem_reset0;
    wire [63:0] redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_mem_ia;
    wire [1:0] redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_mem_aa;
    wire [1:0] redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_mem_ab;
    wire [63:0] redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_mem_iq;
    wire [63:0] redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_mem_q;
    wire [1:0] redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_rdcnt_q;
    (* preserve *) reg [1:0] redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_rdcnt_i;
    reg [1:0] redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_wraddr_q;
    wire [2:0] redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_mem_last_q;
    wire [2:0] redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_cmp_b;
    wire [0:0] redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_cmp_q;
    (* dont_merge *) reg [0:0] redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_cmpReg_q;
    wire [0:0] redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_notEnable_q;
    wire [0:0] redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_nor_q;
    (* dont_merge *) reg [0:0] redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_sticky_ena_q;
    wire [0:0] redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_enaAnd_q;
    reg [63:0] redist22_i_arrayidx817_kernel_3mm7_vt_join_q_4_inputreg0_q;
    wire redist22_i_arrayidx817_kernel_3mm7_vt_join_q_4_mem_reset0;
    wire [63:0] redist22_i_arrayidx817_kernel_3mm7_vt_join_q_4_mem_ia;
    wire [0:0] redist22_i_arrayidx817_kernel_3mm7_vt_join_q_4_mem_aa;
    wire [0:0] redist22_i_arrayidx817_kernel_3mm7_vt_join_q_4_mem_ab;
    wire [63:0] redist22_i_arrayidx817_kernel_3mm7_vt_join_q_4_mem_iq;
    wire [63:0] redist22_i_arrayidx817_kernel_3mm7_vt_join_q_4_mem_q;
    wire [0:0] redist22_i_arrayidx817_kernel_3mm7_vt_join_q_4_rdcnt_q;
    (* preserve *) reg [0:0] redist22_i_arrayidx817_kernel_3mm7_vt_join_q_4_rdcnt_i;
    reg [0:0] redist22_i_arrayidx817_kernel_3mm7_vt_join_q_4_wraddr_q;
    (* dont_merge *) reg [0:0] redist22_i_arrayidx817_kernel_3mm7_vt_join_q_4_cmpReg_q;
    wire [0:0] redist22_i_arrayidx817_kernel_3mm7_vt_join_q_4_notEnable_q;
    wire [0:0] redist22_i_arrayidx817_kernel_3mm7_vt_join_q_4_nor_q;
    (* dont_merge *) reg [0:0] redist22_i_arrayidx817_kernel_3mm7_vt_join_q_4_sticky_ena_q;
    wire [0:0] redist22_i_arrayidx817_kernel_3mm7_vt_join_q_4_enaAnd_q;


    // c_i5_141(CONSTANT,22)
    assign c_i5_141_q = $unsigned(5'b11111);

    // i_fpga_indvars_iv_next21_kernel_3mm17(ADD,31)@1
    assign i_fpga_indvars_iv_next21_kernel_3mm17_a = {1'b0, i_llvm_fpga_pop_i5_fpga_indvars_iv20_pop41_kernel_3mm10_out_data_out};
    assign i_fpga_indvars_iv_next21_kernel_3mm17_b = {1'b0, c_i5_141_q};
    assign i_fpga_indvars_iv_next21_kernel_3mm17_o = $unsigned(i_fpga_indvars_iv_next21_kernel_3mm17_a) + $unsigned(i_fpga_indvars_iv_next21_kernel_3mm17_b);
    assign i_fpga_indvars_iv_next21_kernel_3mm17_q = i_fpga_indvars_iv_next21_kernel_3mm17_o[5:0];

    // bgTrunc_i_fpga_indvars_iv_next21_kernel_3mm17_sel_x(BITSELECT,60)@1
    assign bgTrunc_i_fpga_indvars_iv_next21_kernel_3mm17_sel_x_b = i_fpga_indvars_iv_next21_kernel_3mm17_q[4:0];

    // i_llvm_fpga_push_i5_fpga_indvars_iv20_push41_kernel_3mm18(BLACKBOX,53)@1
    // out out_feedback_out_41@20000000
    // out out_feedback_valid_out_41@20000000
    kernel_3mm_i_llvm_fpga_push_i5_fpga_indvars_iv20_push41_0 thei_llvm_fpga_push_i5_fpga_indvars_iv20_push41_kernel_3mm18 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next21_kernel_3mm17_sel_x_b),
        .in_exitcond22(i_exitcond22_kernel_3mm11_cmp_nsign_q),
        .in_feedback_stall_in_41(i_llvm_fpga_pop_i5_fpga_indvars_iv20_pop41_kernel_3mm10_out_feedback_stall_out_41),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_41(i_llvm_fpga_push_i5_fpga_indvars_iv20_push41_kernel_3mm18_out_feedback_out_41),
        .out_feedback_valid_out_41(i_llvm_fpga_push_i5_fpga_indvars_iv20_push41_kernel_3mm18_out_feedback_valid_out_41),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i5_839(CONSTANT,23)
    assign c_i5_839_q = $unsigned(5'b01000);

    // i_llvm_fpga_pop_i5_fpga_indvars_iv20_pop41_kernel_3mm10(BLACKBOX,47)@1
    // out out_feedback_stall_out_41@20000000
    kernel_3mm_i_llvm_fpga_pop_i5_fpga_indvars_iv20_pop41_0 thei_llvm_fpga_pop_i5_fpga_indvars_iv20_pop41_kernel_3mm10 (
        .in_data_in(c_i5_839_q),
        .in_dir(in_c0_eni5537_2_tpl),
        .in_feedback_in_41(i_llvm_fpga_push_i5_fpga_indvars_iv20_push41_kernel_3mm18_out_feedback_out_41),
        .in_feedback_valid_in_41(i_llvm_fpga_push_i5_fpga_indvars_iv20_push41_kernel_3mm18_out_feedback_valid_out_41),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i5_fpga_indvars_iv20_pop41_kernel_3mm10_out_data_out),
        .out_feedback_stall_out_41(i_llvm_fpga_pop_i5_fpga_indvars_iv20_pop41_kernel_3mm10_out_feedback_stall_out_41),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond22_kernel_3mm11_cmp_nsign(LOGICAL,107)@1
    assign i_exitcond22_kernel_3mm11_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i5_fpga_indvars_iv20_pop41_kernel_3mm10_out_data_out[4:4]));

    // i_llvm_fpga_push_i1_notexitcond29_kernel_3mm16(BLACKBOX,50)@1
    // out out_feedback_out_4@20000000
    // out out_feedback_valid_out_4@20000000
    kernel_3mm_i_llvm_fpga_push_i1_notexitcond29_0 thei_llvm_fpga_push_i1_notexitcond29_kernel_3mm16 (
        .in_data_in(i_exitcond22_kernel_3mm11_cmp_nsign_q),
        .in_feedback_stall_in_4(i_llvm_fpga_pipeline_keep_going28_kernel_3mm2_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_4(i_llvm_fpga_push_i1_notexitcond29_kernel_3mm16_out_feedback_out_4),
        .out_feedback_valid_out_4(i_llvm_fpga_push_i1_notexitcond29_kernel_3mm16_out_feedback_valid_out_4),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_llvm_fpga_pipeline_keep_going28_kernel_3mm2(BLACKBOX,42)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    kernel_3mm_i_llvm_fpga_pipeline_keep_going28_0 thei_llvm_fpga_pipeline_keep_going28_kernel_3mm2 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond29_kernel_3mm16_out_feedback_out_4),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond29_kernel_3mm16_out_feedback_valid_out_4),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going28_kernel_3mm2_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going28_kernel_3mm2_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going28_kernel_3mm2_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going28_kernel_3mm2_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,26)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_kernel_3mm2_exiting_valid_out = i_llvm_fpga_pipeline_keep_going28_kernel_3mm2_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_kernel_3mm2_exiting_stall_out = i_llvm_fpga_pipeline_keep_going28_kernel_3mm2_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,57)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going28_kernel_3mm2_out_pipeline_valid_out;

    // redist12_sync_together60_aunroll_x_in_i_valid_1(DELAY,168)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together60_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist12_sync_together60_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg4(REG,96)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist12_sync_together60_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg3(REG,95)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist12_sync_together60_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist13_sync_together60_aunroll_x_in_i_valid_2(DELAY,169)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together60_aunroll_x_in_i_valid_2_q <= '0;
        end
        else
        begin
            redist13_sync_together60_aunroll_x_in_i_valid_2_q <= $unsigned(redist12_sync_together60_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg6(REG,98)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist13_sync_together60_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist0_i_exitcond22_kernel_3mm11_cmp_nsign_q_2(DELAY,156)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_exitcond22_kernel_3mm11_cmp_nsign_q_2_delay_0 <= '0;
            redist0_i_exitcond22_kernel_3mm11_cmp_nsign_q_2_q <= '0;
        end
        else
        begin
            redist0_i_exitcond22_kernel_3mm11_cmp_nsign_q_2_delay_0 <= $unsigned(i_exitcond22_kernel_3mm11_cmp_nsign_q);
            redist0_i_exitcond22_kernel_3mm11_cmp_nsign_q_2_q <= redist0_i_exitcond22_kernel_3mm11_cmp_nsign_q_2_delay_0;
        end
    end

    // redist1_i_exitcond22_kernel_3mm11_cmp_nsign_q_3(DELAY,157)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_exitcond22_kernel_3mm11_cmp_nsign_q_3_q <= '0;
        end
        else
        begin
            redist1_i_exitcond22_kernel_3mm11_cmp_nsign_q_3_q <= $unsigned(redist0_i_exitcond22_kernel_3mm11_cmp_nsign_q_2_q);
        end
    end

    // redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop21105_pop43_kernel_3mm8_out_data_out_1(DELAY,174)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop21105_pop43_kernel_3mm8_out_data_out_1_q <= '0;
        end
        else
        begin
            redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop21105_pop43_kernel_3mm8_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi7_pop21105_pop43_kernel_3mm8_out_data_out);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi7_pop21105_push43_kernel_3mm14(BLACKBOX,48)@4
    // out out_feedback_out_43@20000000
    // out out_feedback_valid_out_43@20000000
    kernel_3mm_i_llvm_fpga_push_i1_memdep_phi7_pop21105_push43_0 thei_llvm_fpga_push_i1_memdep_phi7_pop21105_push43_kernel_3mm14 (
        .in_data_in(redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop21105_pop43_kernel_3mm8_out_data_out_1_q),
        .in_exitcond22(redist1_i_exitcond22_kernel_3mm11_cmp_nsign_q_3_q),
        .in_feedback_stall_in_43(i_llvm_fpga_pop_i1_memdep_phi7_pop21105_pop43_kernel_3mm8_out_feedback_stall_out_43),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_43(i_llvm_fpga_push_i1_memdep_phi7_pop21105_push43_kernel_3mm14_out_feedback_out_43),
        .out_feedback_valid_out_43(i_llvm_fpga_push_i1_memdep_phi7_pop21105_push43_kernel_3mm14_out_feedback_valid_out_43),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_sync_together60_aunroll_x_in_c0_eni5537_2_tpl_1(DELAY,161)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together60_aunroll_x_in_c0_eni5537_2_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together60_aunroll_x_in_c0_eni5537_2_tpl_1_q <= $unsigned(in_c0_eni5537_2_tpl);
        end
    end

    // redist6_sync_together60_aunroll_x_in_c0_eni5537_2_tpl_2(DELAY,162)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together60_aunroll_x_in_c0_eni5537_2_tpl_2_q <= '0;
        end
        else
        begin
            redist6_sync_together60_aunroll_x_in_c0_eni5537_2_tpl_2_q <= $unsigned(redist5_sync_together60_aunroll_x_in_c0_eni5537_2_tpl_1_q);
        end
    end

    // redist8_sync_together60_aunroll_x_in_c0_eni5537_3_tpl_2(DELAY,164)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together60_aunroll_x_in_c0_eni5537_3_tpl_2_delay_0 <= '0;
            redist8_sync_together60_aunroll_x_in_c0_eni5537_3_tpl_2_q <= '0;
        end
        else
        begin
            redist8_sync_together60_aunroll_x_in_c0_eni5537_3_tpl_2_delay_0 <= $unsigned(in_c0_eni5537_3_tpl);
            redist8_sync_together60_aunroll_x_in_c0_eni5537_3_tpl_2_q <= redist8_sync_together60_aunroll_x_in_c0_eni5537_3_tpl_2_delay_0;
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi7_pop21105_pop43_kernel_3mm8(BLACKBOX,43)@3
    // out out_feedback_stall_out_43@20000000
    kernel_3mm_i_llvm_fpga_pop_i1_memdep_phi7_pop21105_pop43_0 thei_llvm_fpga_pop_i1_memdep_phi7_pop21105_pop43_kernel_3mm8 (
        .in_data_in(redist8_sync_together60_aunroll_x_in_c0_eni5537_3_tpl_2_q),
        .in_dir(redist6_sync_together60_aunroll_x_in_c0_eni5537_2_tpl_2_q),
        .in_feedback_in_43(i_llvm_fpga_push_i1_memdep_phi7_pop21105_push43_kernel_3mm14_out_feedback_out_43),
        .in_feedback_valid_in_43(i_llvm_fpga_push_i1_memdep_phi7_pop21105_push43_kernel_3mm14_out_feedback_valid_out_43),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi7_pop21105_pop43_kernel_3mm8_out_data_out),
        .out_feedback_stall_out_43(i_llvm_fpga_pop_i1_memdep_phi7_pop21105_pop43_kernel_3mm8_out_feedback_stall_out_43),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_kernel_3mm_G_local_pmem(CONSTANT,24)
    assign c_kernel_3mm_G_local_pmem_q = $unsigned(64'b0100000001000110000000000000000000000000000000000000000000000000);

    // i_arrayidx817_kernel_3mm0_upper_bits_x_merged_bit_select(BITSELECT,154)@3
    assign i_arrayidx817_kernel_3mm0_upper_bits_x_merged_bit_select_b = c_kernel_3mm_G_local_pmem_q[63:9];
    assign i_arrayidx817_kernel_3mm0_upper_bits_x_merged_bit_select_c = c_kernel_3mm_G_local_pmem_q[8:0];

    // c_i32_038(CONSTANT,20)
    assign c_i32_038_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg2(REG,94)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist12_sync_together60_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg7(REG,99)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist12_sync_together60_aunroll_x_in_i_valid_1_q);
        end
    end

    // c_i32_142(CONSTANT,21)
    assign c_i32_142_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc103_kernel_3mm19(ADD,40)@3
    assign i_inc103_kernel_3mm19_a = {1'b0, i_llvm_fpga_pop_i32_j_251_pop42_kernel_3mm5_out_data_out};
    assign i_inc103_kernel_3mm19_b = {1'b0, c_i32_142_q};
    assign i_inc103_kernel_3mm19_o = $unsigned(i_inc103_kernel_3mm19_a) + $unsigned(i_inc103_kernel_3mm19_b);
    assign i_inc103_kernel_3mm19_q = i_inc103_kernel_3mm19_o[32:0];

    // bgTrunc_i_inc103_kernel_3mm19_sel_x(BITSELECT,61)@3
    assign bgTrunc_i_inc103_kernel_3mm19_sel_x_b = i_inc103_kernel_3mm19_q[31:0];

    // i_llvm_fpga_push_i32_j_251_push42_kernel_3mm20(BLACKBOX,52)@3
    // out out_feedback_out_42@20000000
    // out out_feedback_valid_out_42@20000000
    kernel_3mm_i_llvm_fpga_push_i32_j_251_push42_0 thei_llvm_fpga_push_i32_j_251_push42_kernel_3mm20 (
        .in_data_in(bgTrunc_i_inc103_kernel_3mm19_sel_x_b),
        .in_exitcond22(redist0_i_exitcond22_kernel_3mm11_cmp_nsign_q_2_q),
        .in_feedback_stall_in_42(i_llvm_fpga_pop_i32_j_251_pop42_kernel_3mm5_out_feedback_stall_out_42),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(),
        .out_feedback_out_42(i_llvm_fpga_push_i32_j_251_push42_kernel_3mm20_out_feedback_out_42),
        .out_feedback_valid_out_42(i_llvm_fpga_push_i32_j_251_push42_kernel_3mm20_out_feedback_valid_out_42),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_j_251_pop42_kernel_3mm5(BLACKBOX,46)@3
    // out out_feedback_stall_out_42@20000000
    kernel_3mm_i_llvm_fpga_pop_i32_j_251_pop42_0 thei_llvm_fpga_pop_i32_j_251_pop42_kernel_3mm5 (
        .in_data_in(c_i32_038_q),
        .in_dir(redist6_sync_together60_aunroll_x_in_c0_eni5537_2_tpl_2_q),
        .in_feedback_in_42(i_llvm_fpga_push_i32_j_251_push42_kernel_3mm20_out_feedback_out_42),
        .in_feedback_valid_in_42(i_llvm_fpga_push_i32_j_251_push42_kernel_3mm20_out_feedback_valid_out_42),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_i32_j_251_pop42_kernel_3mm5_out_data_out),
        .out_feedback_stall_out_42(i_llvm_fpga_pop_i32_j_251_pop42_kernel_3mm5_out_feedback_stall_out_42),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom80_kernel_3mm6_sel_x(BITSELECT,89)@3
    assign i_idxprom80_kernel_3mm6_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_j_251_pop42_kernel_3mm5_out_data_out[31:0]};

    // i_idxprom80_kernel_3mm6_vt_select_31(BITSELECT,39)@3
    assign i_idxprom80_kernel_3mm6_vt_select_31_b = i_idxprom80_kernel_3mm6_sel_x_b[31:0];

    // i_idxprom80_kernel_3mm6_vt_join(BITJOIN,38)@3
    assign i_idxprom80_kernel_3mm6_vt_join_q = {c_i32_038_q, i_idxprom80_kernel_3mm6_vt_select_31_b};

    // i_arrayidx817_kernel_3mm0_dupName_3_trunc_sel_x(BITSELECT,86)@3
    assign i_arrayidx817_kernel_3mm0_dupName_3_trunc_sel_x_b = i_idxprom80_kernel_3mm6_vt_join_q[8:0];

    // i_arrayidx817_kernel_3mm0_narrow_x(BITSELECT,69)@3
    assign i_arrayidx817_kernel_3mm0_narrow_x_b = i_arrayidx817_kernel_3mm0_dupName_3_trunc_sel_x_b[6:0];

    // i_arrayidx817_kernel_3mm0_shift_join_x(BITJOIN,70)@3
    assign i_arrayidx817_kernel_3mm0_shift_join_x_q = {i_arrayidx817_kernel_3mm0_narrow_x_b, i_arrayidx817_kernel_3mm7_vt_const_1_q};

    // i_arrayidx817_kernel_3mm0_mult_multconst_x(CONSTANT,81)
    assign i_arrayidx817_kernel_3mm0_mult_multconst_x_q = $unsigned(3'b000);

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

    // valid_fanout_reg5(REG,97)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist12_sync_together60_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist16_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_1(DELAY,172)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_1_q <= '0;
        end
        else
        begin
            redist16_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out);
        end
    end

    // i_llvm_fpga_push_i32_i_252_pop30117_push45_kernel_3mm13(BLACKBOX,51)@3
    // out out_feedback_out_45@20000000
    // out out_feedback_valid_out_45@20000000
    kernel_3mm_i_llvm_fpga_push_i32_i_252_pop30117_push45_0 thei_llvm_fpga_push_i32_i_252_pop30117_push45_kernel_3mm13 (
        .in_data_in(redist16_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_1_q),
        .in_exitcond22(redist0_i_exitcond22_kernel_3mm11_cmp_nsign_q_2_q),
        .in_feedback_stall_in_45(i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_feedback_stall_out_45),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_45(i_llvm_fpga_push_i32_i_252_pop30117_push45_kernel_3mm13_out_feedback_out_45),
        .out_feedback_valid_out_45(i_llvm_fpga_push_i32_i_252_pop30117_push45_kernel_3mm13_out_feedback_valid_out_45),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_1(DELAY,159)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_1_q <= $unsigned(in_c0_eni5537_1_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3(BLACKBOX,45)@2
    // out out_feedback_stall_out_45@20000000
    kernel_3mm_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_0 thei_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3 (
        .in_data_in(redist3_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_1_q),
        .in_dir(redist5_sync_together60_aunroll_x_in_c0_eni5537_2_tpl_1_q),
        .in_feedback_in_45(i_llvm_fpga_push_i32_i_252_pop30117_push45_kernel_3mm13_out_feedback_out_45),
        .in_feedback_valid_in_45(i_llvm_fpga_push_i32_i_252_pop30117_push45_kernel_3mm13_out_feedback_valid_out_45),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out),
        .out_feedback_stall_out_45(i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_feedback_stall_out_45),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom78_kernel_3mm4_sel_x(BITSELECT,88)@2
    assign i_idxprom78_kernel_3mm4_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out[31:0]};

    // i_idxprom78_kernel_3mm4_vt_select_31(BITSELECT,35)@2
    assign i_idxprom78_kernel_3mm4_vt_select_31_b = i_idxprom78_kernel_3mm4_sel_x_b[31:0];

    // i_idxprom78_kernel_3mm4_vt_join(BITJOIN,34)@2
    assign i_idxprom78_kernel_3mm4_vt_join_q = {c_i32_038_q, i_idxprom78_kernel_3mm4_vt_select_31_b};

    // i_arrayidx817_kernel_3mm0_dupName_0_trunc_sel_x(BITSELECT,83)@2
    assign i_arrayidx817_kernel_3mm0_dupName_0_trunc_sel_x_b = i_idxprom78_kernel_3mm4_vt_join_q[8:0];

    // addsumAHighB_uid118_i_arrayidx817_kernel_3mm0_mult_x(ADD,117)@2
    assign addsumAHighB_uid118_i_arrayidx817_kernel_3mm0_mult_x_a = {1'b0, i_arrayidx817_kernel_3mm0_dupName_0_trunc_sel_x_b};
    assign addsumAHighB_uid118_i_arrayidx817_kernel_3mm0_mult_x_b = {3'b000, lowRangeB_uid116_i_arrayidx817_kernel_3mm0_mult_x_merged_bit_select_c};
    assign addsumAHighB_uid118_i_arrayidx817_kernel_3mm0_mult_x_o = $unsigned(addsumAHighB_uid118_i_arrayidx817_kernel_3mm0_mult_x_a) + $unsigned(addsumAHighB_uid118_i_arrayidx817_kernel_3mm0_mult_x_b);
    assign addsumAHighB_uid118_i_arrayidx817_kernel_3mm0_mult_x_q = addsumAHighB_uid118_i_arrayidx817_kernel_3mm0_mult_x_o[9:0];

    // lowRangeB_uid116_i_arrayidx817_kernel_3mm0_mult_x_merged_bit_select(BITSELECT,155)@2
    assign lowRangeB_uid116_i_arrayidx817_kernel_3mm0_mult_x_merged_bit_select_b = i_arrayidx817_kernel_3mm0_dupName_0_trunc_sel_x_b[1:0];
    assign lowRangeB_uid116_i_arrayidx817_kernel_3mm0_mult_x_merged_bit_select_c = i_arrayidx817_kernel_3mm0_dupName_0_trunc_sel_x_b[8:2];

    // add_uid119_i_arrayidx817_kernel_3mm0_mult_x(BITJOIN,118)@2
    assign add_uid119_i_arrayidx817_kernel_3mm0_mult_x_q = {addsumAHighB_uid118_i_arrayidx817_kernel_3mm0_mult_x_q, lowRangeB_uid116_i_arrayidx817_kernel_3mm0_mult_x_merged_bit_select_b};

    // sR_mergedSignalTM_uid124_i_arrayidx817_kernel_3mm0_mult_x(BITJOIN,123)@2
    assign sR_mergedSignalTM_uid124_i_arrayidx817_kernel_3mm0_mult_x_q = {add_uid119_i_arrayidx817_kernel_3mm0_mult_x_q, i_arrayidx817_kernel_3mm0_mult_multconst_x_q};

    // i_arrayidx817_kernel_3mm0_mult_extender_x(BITJOIN,80)@2
    assign i_arrayidx817_kernel_3mm0_mult_extender_x_q = {i_arrayidx817_kernel_3mm0_mult_multconst_x_q, sR_mergedSignalTM_uid124_i_arrayidx817_kernel_3mm0_mult_x_q};

    // i_arrayidx817_kernel_3mm0_dupName_1_trunc_sel_x(BITSELECT,84)@2
    assign i_arrayidx817_kernel_3mm0_dupName_1_trunc_sel_x_b = i_arrayidx817_kernel_3mm0_mult_extender_x_q[8:0];

    // redist15_i_arrayidx817_kernel_3mm0_dupName_1_trunc_sel_x_b_1(DELAY,171)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_arrayidx817_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist15_i_arrayidx817_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx817_kernel_3mm0_dupName_1_trunc_sel_x_b);
        end
    end

    // i_arrayidx817_kernel_3mm0_add_x(ADD,64)@3
    assign i_arrayidx817_kernel_3mm0_add_x_a = {1'b0, i_arrayidx817_kernel_3mm0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx817_kernel_3mm0_add_x_b = {1'b0, redist15_i_arrayidx817_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q};
    assign i_arrayidx817_kernel_3mm0_add_x_o = $unsigned(i_arrayidx817_kernel_3mm0_add_x_a) + $unsigned(i_arrayidx817_kernel_3mm0_add_x_b);
    assign i_arrayidx817_kernel_3mm0_add_x_q = i_arrayidx817_kernel_3mm0_add_x_o[9:0];

    // i_arrayidx817_kernel_3mm0_dupName_2_trunc_sel_x(BITSELECT,85)@3
    assign i_arrayidx817_kernel_3mm0_dupName_2_trunc_sel_x_b = i_arrayidx817_kernel_3mm0_add_x_q[8:0];

    // i_arrayidx817_kernel_3mm0_dupName_0_add_x(ADD,74)@3
    assign i_arrayidx817_kernel_3mm0_dupName_0_add_x_a = {1'b0, i_arrayidx817_kernel_3mm0_dupName_2_trunc_sel_x_b};
    assign i_arrayidx817_kernel_3mm0_dupName_0_add_x_b = {1'b0, i_arrayidx817_kernel_3mm0_shift_join_x_q};
    assign i_arrayidx817_kernel_3mm0_dupName_0_add_x_o = $unsigned(i_arrayidx817_kernel_3mm0_dupName_0_add_x_a) + $unsigned(i_arrayidx817_kernel_3mm0_dupName_0_add_x_b);
    assign i_arrayidx817_kernel_3mm0_dupName_0_add_x_q = i_arrayidx817_kernel_3mm0_dupName_0_add_x_o[9:0];

    // i_arrayidx817_kernel_3mm0_dupName_5_trunc_sel_x(BITSELECT,87)@3
    assign i_arrayidx817_kernel_3mm0_dupName_5_trunc_sel_x_b = i_arrayidx817_kernel_3mm0_dupName_0_add_x_q[8:0];

    // i_arrayidx817_kernel_3mm0_append_upper_bits_x(BITJOIN,65)@3
    assign i_arrayidx817_kernel_3mm0_append_upper_bits_x_q = {i_arrayidx817_kernel_3mm0_upper_bits_x_merged_bit_select_b, i_arrayidx817_kernel_3mm0_dupName_5_trunc_sel_x_b};

    // i_arrayidx817_kernel_3mm7_vt_select_63(BITSELECT,29)@3
    assign i_arrayidx817_kernel_3mm7_vt_select_63_b = i_arrayidx817_kernel_3mm0_append_upper_bits_x_q[63:2];

    // i_arrayidx817_kernel_3mm7_vt_const_1(CONSTANT,27)
    assign i_arrayidx817_kernel_3mm7_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx817_kernel_3mm7_vt_join(BITJOIN,28)@3
    assign i_arrayidx817_kernel_3mm7_vt_join_q = {i_arrayidx817_kernel_3mm7_vt_select_63_b, i_arrayidx817_kernel_3mm7_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm9(BLACKBOX,41)@3
    // in in_i_stall@20000000
    // out out_o_readdata@7
    // out out_o_stall@6
    // out out_o_valid@7
    // out out_unnamed_kernel_3mm10_kernel_3mm_avm_address@20000000
    // out out_unnamed_kernel_3mm10_kernel_3mm_avm_burstcount@20000000
    // out out_unnamed_kernel_3mm10_kernel_3mm_avm_byteenable@20000000
    // out out_unnamed_kernel_3mm10_kernel_3mm_avm_enable@20000000
    // out out_unnamed_kernel_3mm10_kernel_3mm_avm_read@20000000
    // out out_unnamed_kernel_3mm10_kernel_3mm_avm_write@20000000
    // out out_unnamed_kernel_3mm10_kernel_3mm_avm_writedata@20000000
    kernel_3mm_i_llvm_fpga_mem_unnamed_10_kernel_3mm0 thei_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm9 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx817_kernel_3mm7_vt_join_q),
        .in_i_dependence(i_llvm_fpga_pop_i1_memdep_phi7_pop21105_pop43_kernel_3mm8_out_data_out),
        .in_i_predicate(GND_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg4_q),
        .in_unnamed_kernel_3mm10_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm10_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm10_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm10_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm10_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm10_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm10_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm10_kernel_3mm_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm9_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_address(i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm9_out_unnamed_kernel_3mm10_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_burstcount(i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm9_out_unnamed_kernel_3mm10_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_byteenable(i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm9_out_unnamed_kernel_3mm10_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_enable(i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm9_out_unnamed_kernel_3mm10_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_read(i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm9_out_unnamed_kernel_3mm10_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_write(i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm9_out_unnamed_kernel_3mm10_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_writedata(i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm9_out_unnamed_kernel_3mm10_kernel_3mm_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,63)
    assign out_unnamed_kernel_3mm10_kernel_3mm_avm_address = i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm9_out_unnamed_kernel_3mm10_kernel_3mm_avm_address;
    assign out_unnamed_kernel_3mm10_kernel_3mm_avm_enable = i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm9_out_unnamed_kernel_3mm10_kernel_3mm_avm_enable;
    assign out_unnamed_kernel_3mm10_kernel_3mm_avm_read = i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm9_out_unnamed_kernel_3mm10_kernel_3mm_avm_read;
    assign out_unnamed_kernel_3mm10_kernel_3mm_avm_write = i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm9_out_unnamed_kernel_3mm10_kernel_3mm_avm_write;
    assign out_unnamed_kernel_3mm10_kernel_3mm_avm_writedata = i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm9_out_unnamed_kernel_3mm10_kernel_3mm_avm_writedata;
    assign out_unnamed_kernel_3mm10_kernel_3mm_avm_byteenable = i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm9_out_unnamed_kernel_3mm10_kernel_3mm_avm_byteenable;
    assign out_unnamed_kernel_3mm10_kernel_3mm_avm_burstcount = i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm9_out_unnamed_kernel_3mm10_kernel_3mm_avm_burstcount;

    // redist14_sync_together60_aunroll_x_in_i_valid_5(DELAY,170)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together60_aunroll_x_in_i_valid_5_delay_0 <= '0;
            redist14_sync_together60_aunroll_x_in_i_valid_5_delay_1 <= '0;
            redist14_sync_together60_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist14_sync_together60_aunroll_x_in_i_valid_5_delay_0 <= $unsigned(redist13_sync_together60_aunroll_x_in_i_valid_2_q);
            redist14_sync_together60_aunroll_x_in_i_valid_5_delay_1 <= redist14_sync_together60_aunroll_x_in_i_valid_5_delay_0;
            redist14_sync_together60_aunroll_x_in_i_valid_5_q <= redist14_sync_together60_aunroll_x_in_i_valid_5_delay_1;
        end
    end

    // valid_fanout_reg0(REG,92)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist14_sync_together60_aunroll_x_in_i_valid_5_q);
        end
    end

    // redist9_sync_together60_aunroll_x_in_c0_eni5537_3_tpl_6(DELAY,165)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together60_aunroll_x_in_c0_eni5537_3_tpl_6_delay_0 <= '0;
            redist9_sync_together60_aunroll_x_in_c0_eni5537_3_tpl_6_delay_1 <= '0;
            redist9_sync_together60_aunroll_x_in_c0_eni5537_3_tpl_6_delay_2 <= '0;
            redist9_sync_together60_aunroll_x_in_c0_eni5537_3_tpl_6_q <= '0;
        end
        else
        begin
            redist9_sync_together60_aunroll_x_in_c0_eni5537_3_tpl_6_delay_0 <= $unsigned(redist8_sync_together60_aunroll_x_in_c0_eni5537_3_tpl_2_q);
            redist9_sync_together60_aunroll_x_in_c0_eni5537_3_tpl_6_delay_1 <= redist9_sync_together60_aunroll_x_in_c0_eni5537_3_tpl_6_delay_0;
            redist9_sync_together60_aunroll_x_in_c0_eni5537_3_tpl_6_delay_2 <= redist9_sync_together60_aunroll_x_in_c0_eni5537_3_tpl_6_delay_1;
            redist9_sync_together60_aunroll_x_in_c0_eni5537_3_tpl_6_q <= redist9_sync_together60_aunroll_x_in_c0_eni5537_3_tpl_6_delay_2;
        end
    end

    // redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_notEnable(LOGICAL,185)
    assign redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_notEnable_q = $unsigned(~ (VCC_q));

    // redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_nor(LOGICAL,186)
    assign redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_nor_q = ~ (redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_notEnable_q | redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_sticky_ena_q);

    // redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_mem_last(CONSTANT,182)
    assign redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_mem_last_q = $unsigned(3'b010);

    // redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_cmp(LOGICAL,183)
    assign redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_cmp_b = {1'b0, redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_rdcnt_q};
    assign redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_cmp_q = $unsigned(redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_mem_last_q == redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_cmp_b ? 1'b1 : 1'b0);

    // redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_cmpReg(REG,184)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_cmpReg_q <= $unsigned(redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_cmp_q);
        end
    end

    // redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_sticky_ena(REG,187)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_nor_q == 1'b1)
        begin
            redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_sticky_ena_q <= $unsigned(redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_cmpReg_q);
        end
    end

    // redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_enaAnd(LOGICAL,188)
    assign redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_enaAnd_q = redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_sticky_ena_q & VCC_q;

    // redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_rdcnt(COUNTER,180)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_rdcnt_i <= $unsigned(redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_rdcnt_q = redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_rdcnt_i[1:0];

    // redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_wraddr(REG,181)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_wraddr_q <= $unsigned(redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_rdcnt_q);
        end
    end

    // redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_mem(DUALMEM,179)
    assign redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_mem_ia = $unsigned(redist3_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_1_q);
    assign redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_mem_aa = redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_wraddr_q;
    assign redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_mem_ab = redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_rdcnt_q;
    assign redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(32),
        .widthad_b(2),
        .numwords_b(4),
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
    ) redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_mem_dmem (
        .clocken1(redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_mem_reset0),
        .clock1(clock),
        .address_a(redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_mem_aa),
        .data_a(redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_mem_ab),
        .q_b(redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_mem_iq),
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
    assign redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_mem_q = redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_mem_iq[31:0];

    // redist10_sync_together60_aunroll_x_in_c0_eni5537_4_tpl_6(DELAY,166)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist10_sync_together60_aunroll_x_in_c0_eni5537_4_tpl_6 ( .xin(in_c0_eni5537_4_tpl), .xout(redist10_sync_together60_aunroll_x_in_c0_eni5537_4_tpl_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist11_sync_together60_aunroll_x_in_c0_eni5537_5_tpl_6(DELAY,167)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist11_sync_together60_aunroll_x_in_c0_eni5537_5_tpl_6 ( .xin(in_c0_eni5537_5_tpl), .xout(redist11_sync_together60_aunroll_x_in_c0_eni5537_5_tpl_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg8(REG,100)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist14_sync_together60_aunroll_x_in_i_valid_5_q);
        end
    end

    // valid_fanout_reg9(REG,101)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist14_sync_together60_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp31115_push44_kernel_3mm22(BLACKBOX,49)@7
    // out out_feedback_out_44@20000000
    // out out_feedback_valid_out_44@20000000
    kernel_3mm_i_llvm_fpga_push_i1_notcmp31115_push44_0 thei_llvm_fpga_push_i1_notcmp31115_push44_kernel_3mm22 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp31115_pop44_kernel_3mm21_out_data_out),
        .in_exitcond22(redist2_i_exitcond22_kernel_3mm11_cmp_nsign_q_6_q),
        .in_feedback_stall_in_44(i_llvm_fpga_pop_i1_notcmp31115_pop44_kernel_3mm21_out_feedback_stall_out_44),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(),
        .out_feedback_out_44(i_llvm_fpga_push_i1_notcmp31115_push44_kernel_3mm22_out_feedback_out_44),
        .out_feedback_valid_out_44(i_llvm_fpga_push_i1_notcmp31115_push44_kernel_3mm22_out_feedback_valid_out_44),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_sync_together60_aunroll_x_in_c0_eni5537_2_tpl_6(DELAY,163)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together60_aunroll_x_in_c0_eni5537_2_tpl_6_delay_0 <= '0;
            redist7_sync_together60_aunroll_x_in_c0_eni5537_2_tpl_6_delay_1 <= '0;
            redist7_sync_together60_aunroll_x_in_c0_eni5537_2_tpl_6_delay_2 <= '0;
            redist7_sync_together60_aunroll_x_in_c0_eni5537_2_tpl_6_q <= '0;
        end
        else
        begin
            redist7_sync_together60_aunroll_x_in_c0_eni5537_2_tpl_6_delay_0 <= $unsigned(redist6_sync_together60_aunroll_x_in_c0_eni5537_2_tpl_2_q);
            redist7_sync_together60_aunroll_x_in_c0_eni5537_2_tpl_6_delay_1 <= redist7_sync_together60_aunroll_x_in_c0_eni5537_2_tpl_6_delay_0;
            redist7_sync_together60_aunroll_x_in_c0_eni5537_2_tpl_6_delay_2 <= redist7_sync_together60_aunroll_x_in_c0_eni5537_2_tpl_6_delay_1;
            redist7_sync_together60_aunroll_x_in_c0_eni5537_2_tpl_6_q <= redist7_sync_together60_aunroll_x_in_c0_eni5537_2_tpl_6_delay_2;
        end
    end

    // i_llvm_fpga_pop_i1_notcmp31115_pop44_kernel_3mm21(BLACKBOX,44)@7
    // out out_feedback_stall_out_44@20000000
    kernel_3mm_i_llvm_fpga_pop_i1_notcmp31115_pop44_0 thei_llvm_fpga_pop_i1_notcmp31115_pop44_kernel_3mm21 (
        .in_data_in(redist10_sync_together60_aunroll_x_in_c0_eni5537_4_tpl_6_q),
        .in_dir(redist7_sync_together60_aunroll_x_in_c0_eni5537_2_tpl_6_q),
        .in_feedback_in_44(i_llvm_fpga_push_i1_notcmp31115_push44_kernel_3mm22_out_feedback_out_44),
        .in_feedback_valid_in_44(i_llvm_fpga_push_i1_notcmp31115_push44_kernel_3mm22_out_feedback_valid_out_44),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp31115_pop44_kernel_3mm21_out_data_out),
        .out_feedback_stall_out_44(i_llvm_fpga_pop_i1_notcmp31115_pop44_kernel_3mm21_out_feedback_stall_out_44),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_notcmp26_kernel_3mm15(LOGICAL,54)@7
    assign i_notcmp26_kernel_3mm15_q = redist2_i_exitcond22_kernel_3mm11_cmp_nsign_q_6_q ^ VCC_q;

    // redist2_i_exitcond22_kernel_3mm11_cmp_nsign_q_6(DELAY,158)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_exitcond22_kernel_3mm11_cmp_nsign_q_6_delay_0 <= '0;
            redist2_i_exitcond22_kernel_3mm11_cmp_nsign_q_6_delay_1 <= '0;
            redist2_i_exitcond22_kernel_3mm11_cmp_nsign_q_6_q <= '0;
        end
        else
        begin
            redist2_i_exitcond22_kernel_3mm11_cmp_nsign_q_6_delay_0 <= $unsigned(redist1_i_exitcond22_kernel_3mm11_cmp_nsign_q_3_q);
            redist2_i_exitcond22_kernel_3mm11_cmp_nsign_q_6_delay_1 <= redist2_i_exitcond22_kernel_3mm11_cmp_nsign_q_6_delay_0;
            redist2_i_exitcond22_kernel_3mm11_cmp_nsign_q_6_q <= redist2_i_exitcond22_kernel_3mm11_cmp_nsign_q_6_delay_1;
        end
    end

    // redist19_i_llvm_fpga_pop_i1_memdep_phi7_pop21105_pop43_kernel_3mm8_out_data_out_4(DELAY,175)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_llvm_fpga_pop_i1_memdep_phi7_pop21105_pop43_kernel_3mm8_out_data_out_4_delay_0 <= '0;
            redist19_i_llvm_fpga_pop_i1_memdep_phi7_pop21105_pop43_kernel_3mm8_out_data_out_4_delay_1 <= '0;
            redist19_i_llvm_fpga_pop_i1_memdep_phi7_pop21105_pop43_kernel_3mm8_out_data_out_4_q <= '0;
        end
        else
        begin
            redist19_i_llvm_fpga_pop_i1_memdep_phi7_pop21105_pop43_kernel_3mm8_out_data_out_4_delay_0 <= $unsigned(redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop21105_pop43_kernel_3mm8_out_data_out_1_q);
            redist19_i_llvm_fpga_pop_i1_memdep_phi7_pop21105_pop43_kernel_3mm8_out_data_out_4_delay_1 <= redist19_i_llvm_fpga_pop_i1_memdep_phi7_pop21105_pop43_kernel_3mm8_out_data_out_4_delay_0;
            redist19_i_llvm_fpga_pop_i1_memdep_phi7_pop21105_pop43_kernel_3mm8_out_data_out_4_q <= redist19_i_llvm_fpga_pop_i1_memdep_phi7_pop21105_pop43_kernel_3mm8_out_data_out_4_delay_1;
        end
    end

    // redist22_i_arrayidx817_kernel_3mm7_vt_join_q_4_notEnable(LOGICAL,223)
    assign redist22_i_arrayidx817_kernel_3mm7_vt_join_q_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist22_i_arrayidx817_kernel_3mm7_vt_join_q_4_nor(LOGICAL,224)
    assign redist22_i_arrayidx817_kernel_3mm7_vt_join_q_4_nor_q = ~ (redist22_i_arrayidx817_kernel_3mm7_vt_join_q_4_notEnable_q | redist22_i_arrayidx817_kernel_3mm7_vt_join_q_4_sticky_ena_q);

    // redist22_i_arrayidx817_kernel_3mm7_vt_join_q_4_cmpReg(REG,222)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_arrayidx817_kernel_3mm7_vt_join_q_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist22_i_arrayidx817_kernel_3mm7_vt_join_q_4_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist22_i_arrayidx817_kernel_3mm7_vt_join_q_4_sticky_ena(REG,225)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_arrayidx817_kernel_3mm7_vt_join_q_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist22_i_arrayidx817_kernel_3mm7_vt_join_q_4_nor_q == 1'b1)
        begin
            redist22_i_arrayidx817_kernel_3mm7_vt_join_q_4_sticky_ena_q <= $unsigned(redist22_i_arrayidx817_kernel_3mm7_vt_join_q_4_cmpReg_q);
        end
    end

    // redist22_i_arrayidx817_kernel_3mm7_vt_join_q_4_enaAnd(LOGICAL,226)
    assign redist22_i_arrayidx817_kernel_3mm7_vt_join_q_4_enaAnd_q = redist22_i_arrayidx817_kernel_3mm7_vt_join_q_4_sticky_ena_q & VCC_q;

    // redist22_i_arrayidx817_kernel_3mm7_vt_join_q_4_rdcnt(COUNTER,220)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_arrayidx817_kernel_3mm7_vt_join_q_4_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist22_i_arrayidx817_kernel_3mm7_vt_join_q_4_rdcnt_i <= $unsigned(redist22_i_arrayidx817_kernel_3mm7_vt_join_q_4_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist22_i_arrayidx817_kernel_3mm7_vt_join_q_4_rdcnt_q = redist22_i_arrayidx817_kernel_3mm7_vt_join_q_4_rdcnt_i[0:0];

    // redist22_i_arrayidx817_kernel_3mm7_vt_join_q_4_inputreg0(DELAY,218)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_arrayidx817_kernel_3mm7_vt_join_q_4_inputreg0_q <= '0;
        end
        else
        begin
            redist22_i_arrayidx817_kernel_3mm7_vt_join_q_4_inputreg0_q <= $unsigned(i_arrayidx817_kernel_3mm7_vt_join_q);
        end
    end

    // redist22_i_arrayidx817_kernel_3mm7_vt_join_q_4_wraddr(REG,221)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_arrayidx817_kernel_3mm7_vt_join_q_4_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist22_i_arrayidx817_kernel_3mm7_vt_join_q_4_wraddr_q <= $unsigned(redist22_i_arrayidx817_kernel_3mm7_vt_join_q_4_rdcnt_q);
        end
    end

    // redist22_i_arrayidx817_kernel_3mm7_vt_join_q_4_mem(DUALMEM,219)
    assign redist22_i_arrayidx817_kernel_3mm7_vt_join_q_4_mem_ia = $unsigned(redist22_i_arrayidx817_kernel_3mm7_vt_join_q_4_inputreg0_q);
    assign redist22_i_arrayidx817_kernel_3mm7_vt_join_q_4_mem_aa = redist22_i_arrayidx817_kernel_3mm7_vt_join_q_4_wraddr_q;
    assign redist22_i_arrayidx817_kernel_3mm7_vt_join_q_4_mem_ab = redist22_i_arrayidx817_kernel_3mm7_vt_join_q_4_rdcnt_q;
    assign redist22_i_arrayidx817_kernel_3mm7_vt_join_q_4_mem_reset0 = ~ (resetn);
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
    ) redist22_i_arrayidx817_kernel_3mm7_vt_join_q_4_mem_dmem (
        .clocken1(redist22_i_arrayidx817_kernel_3mm7_vt_join_q_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist22_i_arrayidx817_kernel_3mm7_vt_join_q_4_mem_reset0),
        .clock1(clock),
        .address_a(redist22_i_arrayidx817_kernel_3mm7_vt_join_q_4_mem_aa),
        .data_a(redist22_i_arrayidx817_kernel_3mm7_vt_join_q_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist22_i_arrayidx817_kernel_3mm7_vt_join_q_4_mem_ab),
        .q_b(redist22_i_arrayidx817_kernel_3mm7_vt_join_q_4_mem_iq),
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
    assign redist22_i_arrayidx817_kernel_3mm7_vt_join_q_4_mem_q = redist22_i_arrayidx817_kernel_3mm7_vt_join_q_4_mem_iq[63:0];

    // redist20_i_idxprom80_kernel_3mm6_vt_join_q_4_notEnable(LOGICAL,204)
    assign redist20_i_idxprom80_kernel_3mm6_vt_join_q_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist20_i_idxprom80_kernel_3mm6_vt_join_q_4_nor(LOGICAL,205)
    assign redist20_i_idxprom80_kernel_3mm6_vt_join_q_4_nor_q = ~ (redist20_i_idxprom80_kernel_3mm6_vt_join_q_4_notEnable_q | redist20_i_idxprom80_kernel_3mm6_vt_join_q_4_sticky_ena_q);

    // redist20_i_idxprom80_kernel_3mm6_vt_join_q_4_cmpReg(REG,203)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_idxprom80_kernel_3mm6_vt_join_q_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist20_i_idxprom80_kernel_3mm6_vt_join_q_4_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist20_i_idxprom80_kernel_3mm6_vt_join_q_4_sticky_ena(REG,206)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_idxprom80_kernel_3mm6_vt_join_q_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist20_i_idxprom80_kernel_3mm6_vt_join_q_4_nor_q == 1'b1)
        begin
            redist20_i_idxprom80_kernel_3mm6_vt_join_q_4_sticky_ena_q <= $unsigned(redist20_i_idxprom80_kernel_3mm6_vt_join_q_4_cmpReg_q);
        end
    end

    // redist20_i_idxprom80_kernel_3mm6_vt_join_q_4_enaAnd(LOGICAL,207)
    assign redist20_i_idxprom80_kernel_3mm6_vt_join_q_4_enaAnd_q = redist20_i_idxprom80_kernel_3mm6_vt_join_q_4_sticky_ena_q & VCC_q;

    // redist20_i_idxprom80_kernel_3mm6_vt_join_q_4_rdcnt(COUNTER,201)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_idxprom80_kernel_3mm6_vt_join_q_4_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist20_i_idxprom80_kernel_3mm6_vt_join_q_4_rdcnt_i <= $unsigned(redist20_i_idxprom80_kernel_3mm6_vt_join_q_4_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist20_i_idxprom80_kernel_3mm6_vt_join_q_4_rdcnt_q = redist20_i_idxprom80_kernel_3mm6_vt_join_q_4_rdcnt_i[0:0];

    // redist20_i_idxprom80_kernel_3mm6_vt_join_q_4_inputreg0(DELAY,199)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_idxprom80_kernel_3mm6_vt_join_q_4_inputreg0_q <= '0;
        end
        else
        begin
            redist20_i_idxprom80_kernel_3mm6_vt_join_q_4_inputreg0_q <= $unsigned(i_idxprom80_kernel_3mm6_vt_join_q);
        end
    end

    // redist20_i_idxprom80_kernel_3mm6_vt_join_q_4_wraddr(REG,202)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_idxprom80_kernel_3mm6_vt_join_q_4_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist20_i_idxprom80_kernel_3mm6_vt_join_q_4_wraddr_q <= $unsigned(redist20_i_idxprom80_kernel_3mm6_vt_join_q_4_rdcnt_q);
        end
    end

    // redist20_i_idxprom80_kernel_3mm6_vt_join_q_4_mem(DUALMEM,200)
    assign redist20_i_idxprom80_kernel_3mm6_vt_join_q_4_mem_ia = $unsigned(redist20_i_idxprom80_kernel_3mm6_vt_join_q_4_inputreg0_q);
    assign redist20_i_idxprom80_kernel_3mm6_vt_join_q_4_mem_aa = redist20_i_idxprom80_kernel_3mm6_vt_join_q_4_wraddr_q;
    assign redist20_i_idxprom80_kernel_3mm6_vt_join_q_4_mem_ab = redist20_i_idxprom80_kernel_3mm6_vt_join_q_4_rdcnt_q;
    assign redist20_i_idxprom80_kernel_3mm6_vt_join_q_4_mem_reset0 = ~ (resetn);
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
    ) redist20_i_idxprom80_kernel_3mm6_vt_join_q_4_mem_dmem (
        .clocken1(redist20_i_idxprom80_kernel_3mm6_vt_join_q_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist20_i_idxprom80_kernel_3mm6_vt_join_q_4_mem_reset0),
        .clock1(clock),
        .address_a(redist20_i_idxprom80_kernel_3mm6_vt_join_q_4_mem_aa),
        .data_a(redist20_i_idxprom80_kernel_3mm6_vt_join_q_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist20_i_idxprom80_kernel_3mm6_vt_join_q_4_mem_ab),
        .q_b(redist20_i_idxprom80_kernel_3mm6_vt_join_q_4_mem_iq),
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
    assign redist20_i_idxprom80_kernel_3mm6_vt_join_q_4_mem_q = redist20_i_idxprom80_kernel_3mm6_vt_join_q_4_mem_iq[63:0];

    // redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_notEnable(LOGICAL,214)
    assign redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_nor(LOGICAL,215)
    assign redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_nor_q = ~ (redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_notEnable_q | redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_sticky_ena_q);

    // redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_mem_last(CONSTANT,211)
    assign redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_mem_last_q = $unsigned(3'b010);

    // redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_cmp(LOGICAL,212)
    assign redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_cmp_b = {1'b0, redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_rdcnt_q};
    assign redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_cmp_q = $unsigned(redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_mem_last_q == redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_cmp_b ? 1'b1 : 1'b0);

    // redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_cmpReg(REG,213)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_cmpReg_q <= $unsigned(redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_cmp_q);
        end
    end

    // redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_sticky_ena(REG,216)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_nor_q == 1'b1)
        begin
            redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_sticky_ena_q <= $unsigned(redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_cmpReg_q);
        end
    end

    // redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_enaAnd(LOGICAL,217)
    assign redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_enaAnd_q = redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_sticky_ena_q & VCC_q;

    // redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_rdcnt(COUNTER,209)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_rdcnt_i <= $unsigned(redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_rdcnt_q = redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_rdcnt_i[1:0];

    // redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_wraddr(REG,210)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_wraddr_q <= $unsigned(redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_rdcnt_q);
        end
    end

    // redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_mem(DUALMEM,208)
    assign redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_mem_ia = $unsigned(i_idxprom78_kernel_3mm4_vt_join_q);
    assign redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_mem_aa = redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_wraddr_q;
    assign redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_mem_ab = redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_rdcnt_q;
    assign redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(64),
        .widthad_b(2),
        .numwords_b(4),
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
    ) redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_mem_dmem (
        .clocken1(redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_mem_reset0),
        .clock1(clock),
        .address_a(redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_mem_aa),
        .data_a(redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_mem_ab),
        .q_b(redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_mem_iq),
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
    assign redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_mem_q = redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_mem_iq[63:0];

    // redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_notEnable(LOGICAL,195)
    assign redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_nor(LOGICAL,196)
    assign redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_nor_q = ~ (redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_notEnable_q | redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_sticky_ena_q);

    // redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_mem_last(CONSTANT,192)
    assign redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_mem_last_q = $unsigned(2'b01);

    // redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_cmp(LOGICAL,193)
    assign redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_cmp_q = $unsigned(redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_mem_last_q == redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_rdcnt_q ? 1'b1 : 1'b0);

    // redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_cmpReg(REG,194)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_cmpReg_q <= $unsigned(redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_cmp_q);
        end
    end

    // redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_sticky_ena(REG,197)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_nor_q == 1'b1)
        begin
            redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_sticky_ena_q <= $unsigned(redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_cmpReg_q);
        end
    end

    // redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_enaAnd(LOGICAL,198)
    assign redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_enaAnd_q = redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_sticky_ena_q & VCC_q;

    // redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_rdcnt(COUNTER,190)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_rdcnt_i <= 2'd0;
            redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_rdcnt_i == 2'd1)
            begin
                redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_rdcnt_eq <= 1'b0;
            end
            if (redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_rdcnt_eq == 1'b1)
            begin
                redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_rdcnt_i <= $unsigned(redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_rdcnt_i <= $unsigned(redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_rdcnt_q = redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_rdcnt_i[1:0];

    // redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_wraddr(REG,191)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_wraddr_q <= $unsigned(redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_rdcnt_q);
        end
    end

    // redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_mem(DUALMEM,189)
    assign redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_mem_ia = $unsigned(redist16_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_1_q);
    assign redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_mem_aa = redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_wraddr_q;
    assign redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_mem_ab = redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_rdcnt_q;
    assign redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_mem_reset0 = ~ (resetn);
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
        .intended_device_family("Arria 10")
    ) redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_mem_dmem (
        .clocken1(redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_mem_reset0),
        .clock1(clock),
        .address_a(redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_mem_aa),
        .data_a(redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_mem_ab),
        .q_b(redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_mem_iq),
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
    assign redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_mem_q = redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_mem_iq[31:0];

    // sync_out_aunroll_x(GPOUT,90)@7
    assign out_c0_exi13556_0_tpl = GND_q;
    assign out_c0_exi13556_1_tpl = redist17_i_llvm_fpga_pop_i32_i_252_pop30117_pop45_kernel_3mm3_out_data_out_5_mem_q;
    assign out_c0_exi13556_2_tpl = redist21_i_idxprom78_kernel_3mm4_vt_join_q_5_mem_q;
    assign out_c0_exi13556_3_tpl = redist20_i_idxprom80_kernel_3mm6_vt_join_q_4_mem_q;
    assign out_c0_exi13556_4_tpl = redist22_i_arrayidx817_kernel_3mm7_vt_join_q_4_mem_q;
    assign out_c0_exi13556_5_tpl = redist19_i_llvm_fpga_pop_i1_memdep_phi7_pop21105_pop43_kernel_3mm8_out_data_out_4_q;
    assign out_c0_exi13556_6_tpl = i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm9_out_o_readdata;
    assign out_c0_exi13556_7_tpl = redist2_i_exitcond22_kernel_3mm11_cmp_nsign_q_6_q;
    assign out_c0_exi13556_8_tpl = i_notcmp26_kernel_3mm15_q;
    assign out_c0_exi13556_9_tpl = i_llvm_fpga_pop_i1_notcmp31115_pop44_kernel_3mm21_out_data_out;
    assign out_c0_exi13556_10_tpl = redist11_sync_together60_aunroll_x_in_c0_eni5537_5_tpl_6_q;
    assign out_c0_exi13556_11_tpl = redist10_sync_together60_aunroll_x_in_c0_eni5537_4_tpl_6_q;
    assign out_c0_exi13556_12_tpl = redist4_sync_together60_aunroll_x_in_c0_eni5537_1_tpl_6_mem_q;
    assign out_c0_exi13556_13_tpl = redist9_sync_together60_aunroll_x_in_c0_eni5537_3_tpl_6_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_kernel_3mm0 = GND_q;

endmodule
