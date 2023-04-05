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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body56_kernel_2mms_c0_enter20920_kernel_2mm0
// Created for function/kernel kernel_2mm
// SystemVerilog created on Wed Apr  5 01:12:29 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_2mm_i_sfc_logic_s_c0_in_for_body50000ter20920_kernel_2mm0 (
    input wire [31:0] in_unnamed_kernel_2mm13_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm13_kernel_2mm_avm_writeack,
    input wire [0:0] in_unnamed_kernel_2mm13_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm13_kernel_2mm_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going83_kernel_2mm2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going83_kernel_2mm2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    output wire [31:0] out_unnamed_kernel_2mm13_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm13_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm13_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm13_kernel_2mm_avm_write,
    output wire [31:0] out_unnamed_kernel_2mm13_kernel_2mm_avm_writedata,
    output wire [3:0] out_unnamed_kernel_2mm13_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm13_kernel_2mm_avm_burstcount,
    output wire [0:0] out_c0_exi10222_0_tpl,
    output wire [31:0] out_c0_exi10222_1_tpl,
    output wire [63:0] out_c0_exi10222_2_tpl,
    output wire [63:0] out_c0_exi10222_3_tpl,
    output wire [63:0] out_c0_exi10222_4_tpl,
    output wire [31:0] out_c0_exi10222_5_tpl,
    output wire [0:0] out_c0_exi10222_6_tpl,
    output wire [0:0] out_c0_exi10222_7_tpl,
    output wire [0:0] out_c0_exi10222_8_tpl,
    output wire [0:0] out_c0_exi10222_9_tpl,
    output wire [31:0] out_c0_exi10222_10_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_kernel_2mm1,
    input wire [0:0] in_c0_eni3208_0_tpl,
    input wire [31:0] in_c0_eni3208_1_tpl,
    input wire [0:0] in_c0_eni3208_2_tpl,
    input wire [0:0] in_c0_eni3208_3_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_034_q;
    wire [31:0] c_i32_138_q;
    wire [4:0] c_i5_137_q;
    wire [4:0] c_i5_835_q;
    wire [63:0] c_kernel_2mm_tmp_local_pmem_q;
    wire [1:0] i_arrayidx606_kernel_2mm7_vt_const_1_q;
    wire [63:0] i_arrayidx606_kernel_2mm7_vt_join_q;
    wire [61:0] i_arrayidx606_kernel_2mm7_vt_select_63_b;
    wire [5:0] i_fpga_indvars_iv_next15_kernel_2mm15_a;
    wire [5:0] i_fpga_indvars_iv_next15_kernel_2mm15_b;
    logic [5:0] i_fpga_indvars_iv_next15_kernel_2mm15_o;
    wire [5:0] i_fpga_indvars_iv_next15_kernel_2mm15_q;
    wire [63:0] i_idxprom57_kernel_2mm4_vt_join_q;
    wire [31:0] i_idxprom57_kernel_2mm4_vt_select_31_b;
    wire [63:0] i_idxprom59_kernel_2mm6_vt_join_q;
    wire [31:0] i_idxprom59_kernel_2mm6_vt_select_31_b;
    wire [32:0] i_inc82_kernel_2mm17_a;
    wire [32:0] i_inc82_kernel_2mm17_b;
    logic [32:0] i_inc82_kernel_2mm17_o;
    wire [32:0] i_inc82_kernel_2mm17_q;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_2mm13_kernel_2mm8_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_2mm13_kernel_2mm8_out_unnamed_kernel_2mm13_kernel_2mm_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_2mm13_kernel_2mm8_out_unnamed_kernel_2mm13_kernel_2mm_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_kernel_2mm13_kernel_2mm8_out_unnamed_kernel_2mm13_kernel_2mm_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_2mm13_kernel_2mm8_out_unnamed_kernel_2mm13_kernel_2mm_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_2mm13_kernel_2mm8_out_unnamed_kernel_2mm13_kernel_2mm_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_2mm13_kernel_2mm8_out_unnamed_kernel_2mm13_kernel_2mm_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_2mm13_kernel_2mm8_out_unnamed_kernel_2mm13_kernel_2mm_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going83_kernel_2mm2_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going83_kernel_2mm2_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going83_kernel_2mm2_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going83_kernel_2mm2_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp86122_pop36_kernel_2mm19_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp86122_pop36_kernel_2mm19_out_feedback_stall_out_36;
    wire [31:0] i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_feedback_stall_out_37;
    wire [31:0] i_llvm_fpga_pop_i32_j52_072_pop35_kernel_2mm5_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j52_072_pop35_kernel_2mm5_out_feedback_stall_out_35;
    wire [4:0] i_llvm_fpga_pop_i5_fpga_indvars_iv14_pop34_kernel_2mm9_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i5_fpga_indvars_iv14_pop34_kernel_2mm9_out_feedback_stall_out_34;
    wire [0:0] i_llvm_fpga_push_i1_notcmp86122_push36_kernel_2mm20_out_feedback_out_36;
    wire [0:0] i_llvm_fpga_push_i1_notcmp86122_push36_kernel_2mm20_out_feedback_valid_out_36;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond84_kernel_2mm14_out_feedback_out_13;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond84_kernel_2mm14_out_feedback_valid_out_13;
    wire [31:0] i_llvm_fpga_push_i32_i47_073_pop25126_push37_kernel_2mm12_out_feedback_out_37;
    wire [0:0] i_llvm_fpga_push_i32_i47_073_pop25126_push37_kernel_2mm12_out_feedback_valid_out_37;
    wire [31:0] i_llvm_fpga_push_i32_j52_072_push35_kernel_2mm18_out_feedback_out_35;
    wire [0:0] i_llvm_fpga_push_i32_j52_072_push35_kernel_2mm18_out_feedback_valid_out_35;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv14_push34_kernel_2mm16_out_feedback_out_34;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv14_push34_kernel_2mm16_out_feedback_valid_out_34;
    wire [0:0] i_notcmp81_kernel_2mm13_q;
    wire [4:0] bgTrunc_i_fpga_indvars_iv_next15_kernel_2mm15_sel_x_b;
    wire [31:0] bgTrunc_i_inc82_kernel_2mm17_sel_x_b;
    wire [9:0] i_arrayidx606_kernel_2mm0_add_x_a;
    wire [9:0] i_arrayidx606_kernel_2mm0_add_x_b;
    logic [9:0] i_arrayidx606_kernel_2mm0_add_x_o;
    wire [9:0] i_arrayidx606_kernel_2mm0_add_x_q;
    wire [63:0] i_arrayidx606_kernel_2mm0_append_upper_bits_x_q;
    wire [6:0] i_arrayidx606_kernel_2mm0_narrow_x_b;
    wire [8:0] i_arrayidx606_kernel_2mm0_shift_join_x_q;
    wire [9:0] i_arrayidx606_kernel_2mm0_dupName_0_add_x_a;
    wire [9:0] i_arrayidx606_kernel_2mm0_dupName_0_add_x_b;
    logic [9:0] i_arrayidx606_kernel_2mm0_dupName_0_add_x_o;
    wire [9:0] i_arrayidx606_kernel_2mm0_dupName_0_add_x_q;
    wire [17:0] i_arrayidx606_kernel_2mm0_mult_extender_x_q;
    wire [2:0] i_arrayidx606_kernel_2mm0_mult_multconst_x_q;
    wire [8:0] i_arrayidx606_kernel_2mm0_dupName_0_trunc_sel_x_b;
    wire [8:0] i_arrayidx606_kernel_2mm0_dupName_1_trunc_sel_x_b;
    wire [8:0] i_arrayidx606_kernel_2mm0_dupName_2_trunc_sel_x_b;
    wire [8:0] i_arrayidx606_kernel_2mm0_dupName_3_trunc_sel_x_b;
    wire [8:0] i_arrayidx606_kernel_2mm0_dupName_5_trunc_sel_x_b;
    wire [63:0] i_idxprom57_kernel_2mm4_sel_x_b;
    wire [63:0] i_idxprom59_kernel_2mm6_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg7_q;
    wire [0:0] i_exitcond16_kernel_2mm10_cmp_nsign_q;
    wire [9:0] addsumAHighB_uid112_i_arrayidx606_kernel_2mm0_mult_x_a;
    wire [9:0] addsumAHighB_uid112_i_arrayidx606_kernel_2mm0_mult_x_b;
    logic [9:0] addsumAHighB_uid112_i_arrayidx606_kernel_2mm0_mult_x_o;
    wire [9:0] addsumAHighB_uid112_i_arrayidx606_kernel_2mm0_mult_x_q;
    wire [11:0] add_uid113_i_arrayidx606_kernel_2mm0_mult_x_q;
    wire [14:0] sR_mergedSignalTM_uid118_i_arrayidx606_kernel_2mm0_mult_x_q;
    wire [54:0] i_arrayidx606_kernel_2mm0_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx606_kernel_2mm0_upper_bits_x_merged_bit_select_c;
    wire [1:0] lowRangeB_uid110_i_arrayidx606_kernel_2mm0_mult_x_merged_bit_select_b;
    wire [6:0] lowRangeB_uid110_i_arrayidx606_kernel_2mm0_mult_x_merged_bit_select_c;
    reg [0:0] redist0_i_exitcond16_kernel_2mm10_cmp_nsign_q_1_q;
    reg [0:0] redist1_i_exitcond16_kernel_2mm10_cmp_nsign_q_2_q;
    reg [0:0] redist2_i_exitcond16_kernel_2mm10_cmp_nsign_q_6_q;
    reg [0:0] redist2_i_exitcond16_kernel_2mm10_cmp_nsign_q_6_delay_0;
    reg [0:0] redist2_i_exitcond16_kernel_2mm10_cmp_nsign_q_6_delay_1;
    reg [0:0] redist2_i_exitcond16_kernel_2mm10_cmp_nsign_q_6_delay_2;
    reg [31:0] redist3_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_1_q;
    reg [0:0] redist5_sync_together54_aunroll_x_in_c0_eni3208_2_tpl_1_q;
    reg [0:0] redist6_sync_together54_aunroll_x_in_c0_eni3208_2_tpl_2_q;
    reg [0:0] redist7_sync_together54_aunroll_x_in_c0_eni3208_2_tpl_6_q;
    reg [0:0] redist7_sync_together54_aunroll_x_in_c0_eni3208_2_tpl_6_delay_0;
    reg [0:0] redist7_sync_together54_aunroll_x_in_c0_eni3208_2_tpl_6_delay_1;
    reg [0:0] redist7_sync_together54_aunroll_x_in_c0_eni3208_2_tpl_6_delay_2;
    reg [0:0] redist8_sync_together54_aunroll_x_in_c0_eni3208_3_tpl_6_q;
    reg [0:0] redist9_sync_together54_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist10_sync_together54_aunroll_x_in_i_valid_5_q;
    reg [0:0] redist10_sync_together54_aunroll_x_in_i_valid_5_delay_0;
    reg [0:0] redist10_sync_together54_aunroll_x_in_i_valid_5_delay_1;
    reg [0:0] redist10_sync_together54_aunroll_x_in_i_valid_5_delay_2;
    reg [8:0] redist11_i_arrayidx606_kernel_2mm0_dupName_1_trunc_sel_x_b_1_q;
    wire redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_mem_reset0;
    wire [31:0] redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_mem_ia;
    wire [1:0] redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_mem_aa;
    wire [1:0] redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_mem_ab;
    wire [31:0] redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_mem_iq;
    wire [31:0] redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_mem_q;
    wire [1:0] redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_rdcnt_q;
    (* preserve *) reg [1:0] redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_rdcnt_i;
    reg [1:0] redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_wraddr_q;
    wire [2:0] redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_mem_last_q;
    wire [2:0] redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_cmp_b;
    wire [0:0] redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_cmp_q;
    (* dont_merge *) reg [0:0] redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_cmpReg_q;
    wire [0:0] redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_notEnable_q;
    wire [0:0] redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_nor_q;
    (* dont_merge *) reg [0:0] redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_sticky_ena_q;
    wire [0:0] redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_enaAnd_q;
    wire redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_mem_reset0;
    wire [31:0] redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_mem_ia;
    wire [1:0] redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_mem_aa;
    wire [1:0] redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_mem_ab;
    wire [31:0] redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_mem_iq;
    wire [31:0] redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_mem_q;
    wire [1:0] redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_rdcnt_q;
    (* preserve *) reg [1:0] redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_rdcnt_i;
    reg [1:0] redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_wraddr_q;
    wire [2:0] redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_mem_last_q;
    wire [2:0] redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_cmp_b;
    wire [0:0] redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_cmp_q;
    (* dont_merge *) reg [0:0] redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_cmpReg_q;
    wire [0:0] redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_notEnable_q;
    wire [0:0] redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_nor_q;
    (* dont_merge *) reg [0:0] redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_sticky_ena_q;
    wire [0:0] redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_enaAnd_q;
    reg [63:0] redist13_i_idxprom59_kernel_2mm6_vt_join_q_4_inputreg0_q;
    wire redist13_i_idxprom59_kernel_2mm6_vt_join_q_4_mem_reset0;
    wire [63:0] redist13_i_idxprom59_kernel_2mm6_vt_join_q_4_mem_ia;
    wire [0:0] redist13_i_idxprom59_kernel_2mm6_vt_join_q_4_mem_aa;
    wire [0:0] redist13_i_idxprom59_kernel_2mm6_vt_join_q_4_mem_ab;
    wire [63:0] redist13_i_idxprom59_kernel_2mm6_vt_join_q_4_mem_iq;
    wire [63:0] redist13_i_idxprom59_kernel_2mm6_vt_join_q_4_mem_q;
    wire [0:0] redist13_i_idxprom59_kernel_2mm6_vt_join_q_4_rdcnt_q;
    (* preserve *) reg [0:0] redist13_i_idxprom59_kernel_2mm6_vt_join_q_4_rdcnt_i;
    reg [0:0] redist13_i_idxprom59_kernel_2mm6_vt_join_q_4_wraddr_q;
    (* dont_merge *) reg [0:0] redist13_i_idxprom59_kernel_2mm6_vt_join_q_4_cmpReg_q;
    wire [0:0] redist13_i_idxprom59_kernel_2mm6_vt_join_q_4_notEnable_q;
    wire [0:0] redist13_i_idxprom59_kernel_2mm6_vt_join_q_4_nor_q;
    (* dont_merge *) reg [0:0] redist13_i_idxprom59_kernel_2mm6_vt_join_q_4_sticky_ena_q;
    wire [0:0] redist13_i_idxprom59_kernel_2mm6_vt_join_q_4_enaAnd_q;
    wire redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_mem_reset0;
    wire [63:0] redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_mem_ia;
    wire [1:0] redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_mem_aa;
    wire [1:0] redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_mem_ab;
    wire [63:0] redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_mem_iq;
    wire [63:0] redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_mem_q;
    wire [1:0] redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_rdcnt_q;
    (* preserve *) reg [1:0] redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_rdcnt_i;
    reg [1:0] redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_wraddr_q;
    wire [2:0] redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_mem_last_q;
    wire [2:0] redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_cmp_b;
    wire [0:0] redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_cmp_q;
    (* dont_merge *) reg [0:0] redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_cmpReg_q;
    wire [0:0] redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_notEnable_q;
    wire [0:0] redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_nor_q;
    (* dont_merge *) reg [0:0] redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_sticky_ena_q;
    wire [0:0] redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_enaAnd_q;
    reg [63:0] redist15_i_arrayidx606_kernel_2mm7_vt_join_q_4_inputreg0_q;
    wire redist15_i_arrayidx606_kernel_2mm7_vt_join_q_4_mem_reset0;
    wire [63:0] redist15_i_arrayidx606_kernel_2mm7_vt_join_q_4_mem_ia;
    wire [0:0] redist15_i_arrayidx606_kernel_2mm7_vt_join_q_4_mem_aa;
    wire [0:0] redist15_i_arrayidx606_kernel_2mm7_vt_join_q_4_mem_ab;
    wire [63:0] redist15_i_arrayidx606_kernel_2mm7_vt_join_q_4_mem_iq;
    wire [63:0] redist15_i_arrayidx606_kernel_2mm7_vt_join_q_4_mem_q;
    wire [0:0] redist15_i_arrayidx606_kernel_2mm7_vt_join_q_4_rdcnt_q;
    (* preserve *) reg [0:0] redist15_i_arrayidx606_kernel_2mm7_vt_join_q_4_rdcnt_i;
    reg [0:0] redist15_i_arrayidx606_kernel_2mm7_vt_join_q_4_wraddr_q;
    (* dont_merge *) reg [0:0] redist15_i_arrayidx606_kernel_2mm7_vt_join_q_4_cmpReg_q;
    wire [0:0] redist15_i_arrayidx606_kernel_2mm7_vt_join_q_4_notEnable_q;
    wire [0:0] redist15_i_arrayidx606_kernel_2mm7_vt_join_q_4_nor_q;
    (* dont_merge *) reg [0:0] redist15_i_arrayidx606_kernel_2mm7_vt_join_q_4_sticky_ena_q;
    wire [0:0] redist15_i_arrayidx606_kernel_2mm7_vt_join_q_4_enaAnd_q;


    // c_i5_137(CONSTANT,20)
    assign c_i5_137_q = $unsigned(5'b11111);

    // i_fpga_indvars_iv_next15_kernel_2mm15(ADD,29)@1
    assign i_fpga_indvars_iv_next15_kernel_2mm15_a = {1'b0, i_llvm_fpga_pop_i5_fpga_indvars_iv14_pop34_kernel_2mm9_out_data_out};
    assign i_fpga_indvars_iv_next15_kernel_2mm15_b = {1'b0, c_i5_137_q};
    assign i_fpga_indvars_iv_next15_kernel_2mm15_o = $unsigned(i_fpga_indvars_iv_next15_kernel_2mm15_a) + $unsigned(i_fpga_indvars_iv_next15_kernel_2mm15_b);
    assign i_fpga_indvars_iv_next15_kernel_2mm15_q = i_fpga_indvars_iv_next15_kernel_2mm15_o[5:0];

    // bgTrunc_i_fpga_indvars_iv_next15_kernel_2mm15_sel_x(BITSELECT,56)@1
    assign bgTrunc_i_fpga_indvars_iv_next15_kernel_2mm15_sel_x_b = i_fpga_indvars_iv_next15_kernel_2mm15_q[4:0];

    // i_llvm_fpga_push_i5_fpga_indvars_iv14_push34_kernel_2mm16(BLACKBOX,49)@1
    // out out_feedback_out_34@20000000
    // out out_feedback_valid_out_34@20000000
    kernel_2mm_i_llvm_fpga_push_i5_fpga_indvars_iv14_push34_0 thei_llvm_fpga_push_i5_fpga_indvars_iv14_push34_kernel_2mm16 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next15_kernel_2mm15_sel_x_b),
        .in_exitcond16(i_exitcond16_kernel_2mm10_cmp_nsign_q),
        .in_feedback_stall_in_34(i_llvm_fpga_pop_i5_fpga_indvars_iv14_pop34_kernel_2mm9_out_feedback_stall_out_34),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_34(i_llvm_fpga_push_i5_fpga_indvars_iv14_push34_kernel_2mm16_out_feedback_out_34),
        .out_feedback_valid_out_34(i_llvm_fpga_push_i5_fpga_indvars_iv14_push34_kernel_2mm16_out_feedback_valid_out_34),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i5_835(CONSTANT,21)
    assign c_i5_835_q = $unsigned(5'b01000);

    // i_llvm_fpga_pop_i5_fpga_indvars_iv14_pop34_kernel_2mm9(BLACKBOX,44)@1
    // out out_feedback_stall_out_34@20000000
    kernel_2mm_i_llvm_fpga_pop_i5_fpga_indvars_iv14_pop34_0 thei_llvm_fpga_pop_i5_fpga_indvars_iv14_pop34_kernel_2mm9 (
        .in_data_in(c_i5_835_q),
        .in_dir(in_c0_eni3208_2_tpl),
        .in_feedback_in_34(i_llvm_fpga_push_i5_fpga_indvars_iv14_push34_kernel_2mm16_out_feedback_out_34),
        .in_feedback_valid_in_34(i_llvm_fpga_push_i5_fpga_indvars_iv14_push34_kernel_2mm16_out_feedback_valid_out_34),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i5_fpga_indvars_iv14_pop34_kernel_2mm9_out_data_out),
        .out_feedback_stall_out_34(i_llvm_fpga_pop_i5_fpga_indvars_iv14_pop34_kernel_2mm9_out_feedback_stall_out_34),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond16_kernel_2mm10_cmp_nsign(LOGICAL,101)@1
    assign i_exitcond16_kernel_2mm10_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i5_fpga_indvars_iv14_pop34_kernel_2mm9_out_data_out[4:4]));

    // i_llvm_fpga_push_i1_notexitcond84_kernel_2mm14(BLACKBOX,46)@1
    // out out_feedback_out_13@20000000
    // out out_feedback_valid_out_13@20000000
    kernel_2mm_i_llvm_fpga_push_i1_notexitcond84_0 thei_llvm_fpga_push_i1_notexitcond84_kernel_2mm14 (
        .in_data_in(i_exitcond16_kernel_2mm10_cmp_nsign_q),
        .in_feedback_stall_in_13(i_llvm_fpga_pipeline_keep_going83_kernel_2mm2_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_13(i_llvm_fpga_push_i1_notexitcond84_kernel_2mm14_out_feedback_out_13),
        .out_feedback_valid_out_13(i_llvm_fpga_push_i1_notexitcond84_kernel_2mm14_out_feedback_valid_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_llvm_fpga_pipeline_keep_going83_kernel_2mm2(BLACKBOX,40)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    kernel_2mm_i_llvm_fpga_pipeline_keep_going83_0 thei_llvm_fpga_pipeline_keep_going83_kernel_2mm2 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond84_kernel_2mm14_out_feedback_out_13),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond84_kernel_2mm14_out_feedback_valid_out_13),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going83_kernel_2mm2_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going83_kernel_2mm2_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going83_kernel_2mm2_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going83_kernel_2mm2_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,24)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going83_kernel_2mm2_exiting_valid_out = i_llvm_fpga_pipeline_keep_going83_kernel_2mm2_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going83_kernel_2mm2_exiting_stall_out = i_llvm_fpga_pipeline_keep_going83_kernel_2mm2_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,53)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going83_kernel_2mm2_out_pipeline_valid_out;

    // redist9_sync_together54_aunroll_x_in_i_valid_1(DELAY,159)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together54_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist9_sync_together54_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg3(REG,91)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist9_sync_together54_aunroll_x_in_i_valid_1_q);
        end
    end

    // c_kernel_2mm_tmp_local_pmem(CONSTANT,22)
    assign c_kernel_2mm_tmp_local_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx606_kernel_2mm0_upper_bits_x_merged_bit_select(BITSELECT,148)@3
    assign i_arrayidx606_kernel_2mm0_upper_bits_x_merged_bit_select_b = c_kernel_2mm_tmp_local_pmem_q[63:9];
    assign i_arrayidx606_kernel_2mm0_upper_bits_x_merged_bit_select_c = c_kernel_2mm_tmp_local_pmem_q[8:0];

    // c_i32_034(CONSTANT,18)
    assign c_i32_034_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg2(REG,90)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist9_sync_together54_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg5(REG,93)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist9_sync_together54_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist0_i_exitcond16_kernel_2mm10_cmp_nsign_q_1(DELAY,150)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_exitcond16_kernel_2mm10_cmp_nsign_q_1_q <= '0;
        end
        else
        begin
            redist0_i_exitcond16_kernel_2mm10_cmp_nsign_q_1_q <= $unsigned(i_exitcond16_kernel_2mm10_cmp_nsign_q);
        end
    end

    // redist1_i_exitcond16_kernel_2mm10_cmp_nsign_q_2(DELAY,151)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_exitcond16_kernel_2mm10_cmp_nsign_q_2_q <= '0;
        end
        else
        begin
            redist1_i_exitcond16_kernel_2mm10_cmp_nsign_q_2_q <= $unsigned(redist0_i_exitcond16_kernel_2mm10_cmp_nsign_q_1_q);
        end
    end

    // c_i32_138(CONSTANT,19)
    assign c_i32_138_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc82_kernel_2mm17(ADD,38)@3
    assign i_inc82_kernel_2mm17_a = {1'b0, i_llvm_fpga_pop_i32_j52_072_pop35_kernel_2mm5_out_data_out};
    assign i_inc82_kernel_2mm17_b = {1'b0, c_i32_138_q};
    assign i_inc82_kernel_2mm17_o = $unsigned(i_inc82_kernel_2mm17_a) + $unsigned(i_inc82_kernel_2mm17_b);
    assign i_inc82_kernel_2mm17_q = i_inc82_kernel_2mm17_o[32:0];

    // bgTrunc_i_inc82_kernel_2mm17_sel_x(BITSELECT,57)@3
    assign bgTrunc_i_inc82_kernel_2mm17_sel_x_b = i_inc82_kernel_2mm17_q[31:0];

    // i_llvm_fpga_push_i32_j52_072_push35_kernel_2mm18(BLACKBOX,48)@3
    // out out_feedback_out_35@20000000
    // out out_feedback_valid_out_35@20000000
    kernel_2mm_i_llvm_fpga_push_i32_j52_072_push35_0 thei_llvm_fpga_push_i32_j52_072_push35_kernel_2mm18 (
        .in_data_in(bgTrunc_i_inc82_kernel_2mm17_sel_x_b),
        .in_exitcond16(redist1_i_exitcond16_kernel_2mm10_cmp_nsign_q_2_q),
        .in_feedback_stall_in_35(i_llvm_fpga_pop_i32_j52_072_pop35_kernel_2mm5_out_feedback_stall_out_35),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_35(i_llvm_fpga_push_i32_j52_072_push35_kernel_2mm18_out_feedback_out_35),
        .out_feedback_valid_out_35(i_llvm_fpga_push_i32_j52_072_push35_kernel_2mm18_out_feedback_valid_out_35),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_sync_together54_aunroll_x_in_c0_eni3208_2_tpl_1(DELAY,155)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together54_aunroll_x_in_c0_eni3208_2_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together54_aunroll_x_in_c0_eni3208_2_tpl_1_q <= $unsigned(in_c0_eni3208_2_tpl);
        end
    end

    // redist6_sync_together54_aunroll_x_in_c0_eni3208_2_tpl_2(DELAY,156)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together54_aunroll_x_in_c0_eni3208_2_tpl_2_q <= '0;
        end
        else
        begin
            redist6_sync_together54_aunroll_x_in_c0_eni3208_2_tpl_2_q <= $unsigned(redist5_sync_together54_aunroll_x_in_c0_eni3208_2_tpl_1_q);
        end
    end

    // i_llvm_fpga_pop_i32_j52_072_pop35_kernel_2mm5(BLACKBOX,43)@3
    // out out_feedback_stall_out_35@20000000
    kernel_2mm_i_llvm_fpga_pop_i32_j52_072_pop35_0 thei_llvm_fpga_pop_i32_j52_072_pop35_kernel_2mm5 (
        .in_data_in(c_i32_034_q),
        .in_dir(redist6_sync_together54_aunroll_x_in_c0_eni3208_2_tpl_2_q),
        .in_feedback_in_35(i_llvm_fpga_push_i32_j52_072_push35_kernel_2mm18_out_feedback_out_35),
        .in_feedback_valid_in_35(i_llvm_fpga_push_i32_j52_072_push35_kernel_2mm18_out_feedback_valid_out_35),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_i32_j52_072_pop35_kernel_2mm5_out_data_out),
        .out_feedback_stall_out_35(i_llvm_fpga_pop_i32_j52_072_pop35_kernel_2mm5_out_feedback_stall_out_35),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom59_kernel_2mm6_sel_x(BITSELECT,85)@3
    assign i_idxprom59_kernel_2mm6_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_j52_072_pop35_kernel_2mm5_out_data_out[31:0]};

    // i_idxprom59_kernel_2mm6_vt_select_31(BITSELECT,37)@3
    assign i_idxprom59_kernel_2mm6_vt_select_31_b = i_idxprom59_kernel_2mm6_sel_x_b[31:0];

    // i_idxprom59_kernel_2mm6_vt_join(BITJOIN,36)@3
    assign i_idxprom59_kernel_2mm6_vt_join_q = {c_i32_034_q, i_idxprom59_kernel_2mm6_vt_select_31_b};

    // i_arrayidx606_kernel_2mm0_dupName_3_trunc_sel_x(BITSELECT,82)@3
    assign i_arrayidx606_kernel_2mm0_dupName_3_trunc_sel_x_b = i_idxprom59_kernel_2mm6_vt_join_q[8:0];

    // i_arrayidx606_kernel_2mm0_narrow_x(BITSELECT,65)@3
    assign i_arrayidx606_kernel_2mm0_narrow_x_b = i_arrayidx606_kernel_2mm0_dupName_3_trunc_sel_x_b[6:0];

    // i_arrayidx606_kernel_2mm0_shift_join_x(BITJOIN,66)@3
    assign i_arrayidx606_kernel_2mm0_shift_join_x_q = {i_arrayidx606_kernel_2mm0_narrow_x_b, i_arrayidx606_kernel_2mm7_vt_const_1_q};

    // i_arrayidx606_kernel_2mm0_mult_multconst_x(CONSTANT,77)
    assign i_arrayidx606_kernel_2mm0_mult_multconst_x_q = $unsigned(3'b000);

    // valid_fanout_reg1(REG,89)@1 + 1
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

    // valid_fanout_reg4(REG,92)@1 + 1
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

    // i_llvm_fpga_push_i32_i47_073_pop25126_push37_kernel_2mm12(BLACKBOX,47)@2
    // out out_feedback_out_37@20000000
    // out out_feedback_valid_out_37@20000000
    kernel_2mm_i_llvm_fpga_push_i32_i47_073_pop25126_push37_0 thei_llvm_fpga_push_i32_i47_073_pop25126_push37_kernel_2mm12 (
        .in_data_in(i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out),
        .in_exitcond16(redist0_i_exitcond16_kernel_2mm10_cmp_nsign_q_1_q),
        .in_feedback_stall_in_37(i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_feedback_stall_out_37),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(),
        .out_feedback_out_37(i_llvm_fpga_push_i32_i47_073_pop25126_push37_kernel_2mm12_out_feedback_out_37),
        .out_feedback_valid_out_37(i_llvm_fpga_push_i32_i47_073_pop25126_push37_kernel_2mm12_out_feedback_valid_out_37),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_1(DELAY,153)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_1_q <= $unsigned(in_c0_eni3208_1_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3(BLACKBOX,42)@2
    // out out_feedback_stall_out_37@20000000
    kernel_2mm_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_0 thei_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3 (
        .in_data_in(redist3_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_1_q),
        .in_dir(redist5_sync_together54_aunroll_x_in_c0_eni3208_2_tpl_1_q),
        .in_feedback_in_37(i_llvm_fpga_push_i32_i47_073_pop25126_push37_kernel_2mm12_out_feedback_out_37),
        .in_feedback_valid_in_37(i_llvm_fpga_push_i32_i47_073_pop25126_push37_kernel_2mm12_out_feedback_valid_out_37),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out),
        .out_feedback_stall_out_37(i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_feedback_stall_out_37),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom57_kernel_2mm4_sel_x(BITSELECT,84)@2
    assign i_idxprom57_kernel_2mm4_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out[31:0]};

    // i_idxprom57_kernel_2mm4_vt_select_31(BITSELECT,33)@2
    assign i_idxprom57_kernel_2mm4_vt_select_31_b = i_idxprom57_kernel_2mm4_sel_x_b[31:0];

    // i_idxprom57_kernel_2mm4_vt_join(BITJOIN,32)@2
    assign i_idxprom57_kernel_2mm4_vt_join_q = {c_i32_034_q, i_idxprom57_kernel_2mm4_vt_select_31_b};

    // i_arrayidx606_kernel_2mm0_dupName_0_trunc_sel_x(BITSELECT,79)@2
    assign i_arrayidx606_kernel_2mm0_dupName_0_trunc_sel_x_b = i_idxprom57_kernel_2mm4_vt_join_q[8:0];

    // addsumAHighB_uid112_i_arrayidx606_kernel_2mm0_mult_x(ADD,111)@2
    assign addsumAHighB_uid112_i_arrayidx606_kernel_2mm0_mult_x_a = {1'b0, i_arrayidx606_kernel_2mm0_dupName_0_trunc_sel_x_b};
    assign addsumAHighB_uid112_i_arrayidx606_kernel_2mm0_mult_x_b = {3'b000, lowRangeB_uid110_i_arrayidx606_kernel_2mm0_mult_x_merged_bit_select_c};
    assign addsumAHighB_uid112_i_arrayidx606_kernel_2mm0_mult_x_o = $unsigned(addsumAHighB_uid112_i_arrayidx606_kernel_2mm0_mult_x_a) + $unsigned(addsumAHighB_uid112_i_arrayidx606_kernel_2mm0_mult_x_b);
    assign addsumAHighB_uid112_i_arrayidx606_kernel_2mm0_mult_x_q = addsumAHighB_uid112_i_arrayidx606_kernel_2mm0_mult_x_o[9:0];

    // lowRangeB_uid110_i_arrayidx606_kernel_2mm0_mult_x_merged_bit_select(BITSELECT,149)@2
    assign lowRangeB_uid110_i_arrayidx606_kernel_2mm0_mult_x_merged_bit_select_b = i_arrayidx606_kernel_2mm0_dupName_0_trunc_sel_x_b[1:0];
    assign lowRangeB_uid110_i_arrayidx606_kernel_2mm0_mult_x_merged_bit_select_c = i_arrayidx606_kernel_2mm0_dupName_0_trunc_sel_x_b[8:2];

    // add_uid113_i_arrayidx606_kernel_2mm0_mult_x(BITJOIN,112)@2
    assign add_uid113_i_arrayidx606_kernel_2mm0_mult_x_q = {addsumAHighB_uid112_i_arrayidx606_kernel_2mm0_mult_x_q, lowRangeB_uid110_i_arrayidx606_kernel_2mm0_mult_x_merged_bit_select_b};

    // sR_mergedSignalTM_uid118_i_arrayidx606_kernel_2mm0_mult_x(BITJOIN,117)@2
    assign sR_mergedSignalTM_uid118_i_arrayidx606_kernel_2mm0_mult_x_q = {add_uid113_i_arrayidx606_kernel_2mm0_mult_x_q, i_arrayidx606_kernel_2mm0_mult_multconst_x_q};

    // i_arrayidx606_kernel_2mm0_mult_extender_x(BITJOIN,76)@2
    assign i_arrayidx606_kernel_2mm0_mult_extender_x_q = {i_arrayidx606_kernel_2mm0_mult_multconst_x_q, sR_mergedSignalTM_uid118_i_arrayidx606_kernel_2mm0_mult_x_q};

    // i_arrayidx606_kernel_2mm0_dupName_1_trunc_sel_x(BITSELECT,80)@2
    assign i_arrayidx606_kernel_2mm0_dupName_1_trunc_sel_x_b = i_arrayidx606_kernel_2mm0_mult_extender_x_q[8:0];

    // redist11_i_arrayidx606_kernel_2mm0_dupName_1_trunc_sel_x_b_1(DELAY,161)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_arrayidx606_kernel_2mm0_dupName_1_trunc_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist11_i_arrayidx606_kernel_2mm0_dupName_1_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx606_kernel_2mm0_dupName_1_trunc_sel_x_b);
        end
    end

    // i_arrayidx606_kernel_2mm0_add_x(ADD,60)@3
    assign i_arrayidx606_kernel_2mm0_add_x_a = {1'b0, i_arrayidx606_kernel_2mm0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx606_kernel_2mm0_add_x_b = {1'b0, redist11_i_arrayidx606_kernel_2mm0_dupName_1_trunc_sel_x_b_1_q};
    assign i_arrayidx606_kernel_2mm0_add_x_o = $unsigned(i_arrayidx606_kernel_2mm0_add_x_a) + $unsigned(i_arrayidx606_kernel_2mm0_add_x_b);
    assign i_arrayidx606_kernel_2mm0_add_x_q = i_arrayidx606_kernel_2mm0_add_x_o[9:0];

    // i_arrayidx606_kernel_2mm0_dupName_2_trunc_sel_x(BITSELECT,81)@3
    assign i_arrayidx606_kernel_2mm0_dupName_2_trunc_sel_x_b = i_arrayidx606_kernel_2mm0_add_x_q[8:0];

    // i_arrayidx606_kernel_2mm0_dupName_0_add_x(ADD,70)@3
    assign i_arrayidx606_kernel_2mm0_dupName_0_add_x_a = {1'b0, i_arrayidx606_kernel_2mm0_dupName_2_trunc_sel_x_b};
    assign i_arrayidx606_kernel_2mm0_dupName_0_add_x_b = {1'b0, i_arrayidx606_kernel_2mm0_shift_join_x_q};
    assign i_arrayidx606_kernel_2mm0_dupName_0_add_x_o = $unsigned(i_arrayidx606_kernel_2mm0_dupName_0_add_x_a) + $unsigned(i_arrayidx606_kernel_2mm0_dupName_0_add_x_b);
    assign i_arrayidx606_kernel_2mm0_dupName_0_add_x_q = i_arrayidx606_kernel_2mm0_dupName_0_add_x_o[9:0];

    // i_arrayidx606_kernel_2mm0_dupName_5_trunc_sel_x(BITSELECT,83)@3
    assign i_arrayidx606_kernel_2mm0_dupName_5_trunc_sel_x_b = i_arrayidx606_kernel_2mm0_dupName_0_add_x_q[8:0];

    // i_arrayidx606_kernel_2mm0_append_upper_bits_x(BITJOIN,61)@3
    assign i_arrayidx606_kernel_2mm0_append_upper_bits_x_q = {i_arrayidx606_kernel_2mm0_upper_bits_x_merged_bit_select_b, i_arrayidx606_kernel_2mm0_dupName_5_trunc_sel_x_b};

    // i_arrayidx606_kernel_2mm7_vt_select_63(BITSELECT,27)@3
    assign i_arrayidx606_kernel_2mm7_vt_select_63_b = i_arrayidx606_kernel_2mm0_append_upper_bits_x_q[63:2];

    // i_arrayidx606_kernel_2mm7_vt_const_1(CONSTANT,25)
    assign i_arrayidx606_kernel_2mm7_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx606_kernel_2mm7_vt_join(BITJOIN,26)@3
    assign i_arrayidx606_kernel_2mm7_vt_join_q = {i_arrayidx606_kernel_2mm7_vt_select_63_b, i_arrayidx606_kernel_2mm7_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_kernel_2mm13_kernel_2mm8(BLACKBOX,39)@3
    // in in_i_stall@20000000
    // out out_o_readdata@7
    // out out_o_stall@6
    // out out_o_valid@7
    // out out_unnamed_kernel_2mm13_kernel_2mm_avm_address@20000000
    // out out_unnamed_kernel_2mm13_kernel_2mm_avm_burstcount@20000000
    // out out_unnamed_kernel_2mm13_kernel_2mm_avm_byteenable@20000000
    // out out_unnamed_kernel_2mm13_kernel_2mm_avm_enable@20000000
    // out out_unnamed_kernel_2mm13_kernel_2mm_avm_read@20000000
    // out out_unnamed_kernel_2mm13_kernel_2mm_avm_write@20000000
    // out out_unnamed_kernel_2mm13_kernel_2mm_avm_writedata@20000000
    kernel_2mm_i_llvm_fpga_mem_unnamed_13_kernel_2mm0 thei_llvm_fpga_mem_unnamed_kernel_2mm13_kernel_2mm8 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx606_kernel_2mm7_vt_join_q),
        .in_i_predicate(GND_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg3_q),
        .in_unnamed_kernel_2mm13_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm13_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm13_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm13_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm13_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm13_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm13_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm13_kernel_2mm_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_kernel_2mm13_kernel_2mm8_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_kernel_2mm13_kernel_2mm_avm_address(i_llvm_fpga_mem_unnamed_kernel_2mm13_kernel_2mm8_out_unnamed_kernel_2mm13_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm13_kernel_2mm_avm_burstcount(i_llvm_fpga_mem_unnamed_kernel_2mm13_kernel_2mm8_out_unnamed_kernel_2mm13_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm13_kernel_2mm_avm_byteenable(i_llvm_fpga_mem_unnamed_kernel_2mm13_kernel_2mm8_out_unnamed_kernel_2mm13_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm13_kernel_2mm_avm_enable(i_llvm_fpga_mem_unnamed_kernel_2mm13_kernel_2mm8_out_unnamed_kernel_2mm13_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm13_kernel_2mm_avm_read(i_llvm_fpga_mem_unnamed_kernel_2mm13_kernel_2mm8_out_unnamed_kernel_2mm13_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm13_kernel_2mm_avm_write(i_llvm_fpga_mem_unnamed_kernel_2mm13_kernel_2mm8_out_unnamed_kernel_2mm13_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm13_kernel_2mm_avm_writedata(i_llvm_fpga_mem_unnamed_kernel_2mm13_kernel_2mm8_out_unnamed_kernel_2mm13_kernel_2mm_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,59)
    assign out_unnamed_kernel_2mm13_kernel_2mm_avm_address = i_llvm_fpga_mem_unnamed_kernel_2mm13_kernel_2mm8_out_unnamed_kernel_2mm13_kernel_2mm_avm_address;
    assign out_unnamed_kernel_2mm13_kernel_2mm_avm_enable = i_llvm_fpga_mem_unnamed_kernel_2mm13_kernel_2mm8_out_unnamed_kernel_2mm13_kernel_2mm_avm_enable;
    assign out_unnamed_kernel_2mm13_kernel_2mm_avm_read = i_llvm_fpga_mem_unnamed_kernel_2mm13_kernel_2mm8_out_unnamed_kernel_2mm13_kernel_2mm_avm_read;
    assign out_unnamed_kernel_2mm13_kernel_2mm_avm_write = i_llvm_fpga_mem_unnamed_kernel_2mm13_kernel_2mm8_out_unnamed_kernel_2mm13_kernel_2mm_avm_write;
    assign out_unnamed_kernel_2mm13_kernel_2mm_avm_writedata = i_llvm_fpga_mem_unnamed_kernel_2mm13_kernel_2mm8_out_unnamed_kernel_2mm13_kernel_2mm_avm_writedata;
    assign out_unnamed_kernel_2mm13_kernel_2mm_avm_byteenable = i_llvm_fpga_mem_unnamed_kernel_2mm13_kernel_2mm8_out_unnamed_kernel_2mm13_kernel_2mm_avm_byteenable;
    assign out_unnamed_kernel_2mm13_kernel_2mm_avm_burstcount = i_llvm_fpga_mem_unnamed_kernel_2mm13_kernel_2mm8_out_unnamed_kernel_2mm13_kernel_2mm_avm_burstcount;

    // redist10_sync_together54_aunroll_x_in_i_valid_5(DELAY,160)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together54_aunroll_x_in_i_valid_5_delay_0 <= '0;
            redist10_sync_together54_aunroll_x_in_i_valid_5_delay_1 <= '0;
            redist10_sync_together54_aunroll_x_in_i_valid_5_delay_2 <= '0;
            redist10_sync_together54_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist10_sync_together54_aunroll_x_in_i_valid_5_delay_0 <= $unsigned(redist9_sync_together54_aunroll_x_in_i_valid_1_q);
            redist10_sync_together54_aunroll_x_in_i_valid_5_delay_1 <= redist10_sync_together54_aunroll_x_in_i_valid_5_delay_0;
            redist10_sync_together54_aunroll_x_in_i_valid_5_delay_2 <= redist10_sync_together54_aunroll_x_in_i_valid_5_delay_1;
            redist10_sync_together54_aunroll_x_in_i_valid_5_q <= redist10_sync_together54_aunroll_x_in_i_valid_5_delay_2;
        end
    end

    // valid_fanout_reg0(REG,88)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist10_sync_together54_aunroll_x_in_i_valid_5_q);
        end
    end

    // redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_notEnable(LOGICAL,172)
    assign redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_notEnable_q = $unsigned(~ (VCC_q));

    // redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_nor(LOGICAL,173)
    assign redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_nor_q = ~ (redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_notEnable_q | redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_sticky_ena_q);

    // redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_mem_last(CONSTANT,169)
    assign redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_mem_last_q = $unsigned(3'b010);

    // redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_cmp(LOGICAL,170)
    assign redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_cmp_b = {1'b0, redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_rdcnt_q};
    assign redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_cmp_q = $unsigned(redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_mem_last_q == redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_cmp_b ? 1'b1 : 1'b0);

    // redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_cmpReg(REG,171)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_cmpReg_q <= $unsigned(redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_cmp_q);
        end
    end

    // redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_sticky_ena(REG,174)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_nor_q == 1'b1)
        begin
            redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_sticky_ena_q <= $unsigned(redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_cmpReg_q);
        end
    end

    // redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_enaAnd(LOGICAL,175)
    assign redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_enaAnd_q = redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_sticky_ena_q & VCC_q;

    // redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_rdcnt(COUNTER,167)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_rdcnt_i <= $unsigned(redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_rdcnt_q = redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_rdcnt_i[1:0];

    // redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_wraddr(REG,168)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_wraddr_q <= $unsigned(redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_rdcnt_q);
        end
    end

    // redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_mem(DUALMEM,166)
    assign redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_mem_ia = $unsigned(redist3_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_1_q);
    assign redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_mem_aa = redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_wraddr_q;
    assign redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_mem_ab = redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_rdcnt_q;
    assign redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_mem_reset0 = ~ (resetn);
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
    ) redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_mem_dmem (
        .clocken1(redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_mem_reset0),
        .clock1(clock),
        .address_a(redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_mem_aa),
        .data_a(redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_mem_ab),
        .q_b(redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_mem_iq),
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
    assign redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_mem_q = redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_mem_iq[31:0];

    // redist8_sync_together54_aunroll_x_in_c0_eni3208_3_tpl_6(DELAY,158)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist8_sync_together54_aunroll_x_in_c0_eni3208_3_tpl_6 ( .xin(in_c0_eni3208_3_tpl), .xout(redist8_sync_together54_aunroll_x_in_c0_eni3208_3_tpl_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg6(REG,94)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist10_sync_together54_aunroll_x_in_i_valid_5_q);
        end
    end

    // valid_fanout_reg7(REG,95)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist10_sync_together54_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp86122_push36_kernel_2mm20(BLACKBOX,45)@7
    // out out_feedback_out_36@20000000
    // out out_feedback_valid_out_36@20000000
    kernel_2mm_i_llvm_fpga_push_i1_notcmp86122_push36_0 thei_llvm_fpga_push_i1_notcmp86122_push36_kernel_2mm20 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp86122_pop36_kernel_2mm19_out_data_out),
        .in_exitcond16(redist2_i_exitcond16_kernel_2mm10_cmp_nsign_q_6_q),
        .in_feedback_stall_in_36(i_llvm_fpga_pop_i1_notcmp86122_pop36_kernel_2mm19_out_feedback_stall_out_36),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(),
        .out_feedback_out_36(i_llvm_fpga_push_i1_notcmp86122_push36_kernel_2mm20_out_feedback_out_36),
        .out_feedback_valid_out_36(i_llvm_fpga_push_i1_notcmp86122_push36_kernel_2mm20_out_feedback_valid_out_36),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_sync_together54_aunroll_x_in_c0_eni3208_2_tpl_6(DELAY,157)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together54_aunroll_x_in_c0_eni3208_2_tpl_6_delay_0 <= '0;
            redist7_sync_together54_aunroll_x_in_c0_eni3208_2_tpl_6_delay_1 <= '0;
            redist7_sync_together54_aunroll_x_in_c0_eni3208_2_tpl_6_delay_2 <= '0;
            redist7_sync_together54_aunroll_x_in_c0_eni3208_2_tpl_6_q <= '0;
        end
        else
        begin
            redist7_sync_together54_aunroll_x_in_c0_eni3208_2_tpl_6_delay_0 <= $unsigned(redist6_sync_together54_aunroll_x_in_c0_eni3208_2_tpl_2_q);
            redist7_sync_together54_aunroll_x_in_c0_eni3208_2_tpl_6_delay_1 <= redist7_sync_together54_aunroll_x_in_c0_eni3208_2_tpl_6_delay_0;
            redist7_sync_together54_aunroll_x_in_c0_eni3208_2_tpl_6_delay_2 <= redist7_sync_together54_aunroll_x_in_c0_eni3208_2_tpl_6_delay_1;
            redist7_sync_together54_aunroll_x_in_c0_eni3208_2_tpl_6_q <= redist7_sync_together54_aunroll_x_in_c0_eni3208_2_tpl_6_delay_2;
        end
    end

    // i_llvm_fpga_pop_i1_notcmp86122_pop36_kernel_2mm19(BLACKBOX,41)@7
    // out out_feedback_stall_out_36@20000000
    kernel_2mm_i_llvm_fpga_pop_i1_notcmp86122_pop36_0 thei_llvm_fpga_pop_i1_notcmp86122_pop36_kernel_2mm19 (
        .in_data_in(redist8_sync_together54_aunroll_x_in_c0_eni3208_3_tpl_6_q),
        .in_dir(redist7_sync_together54_aunroll_x_in_c0_eni3208_2_tpl_6_q),
        .in_feedback_in_36(i_llvm_fpga_push_i1_notcmp86122_push36_kernel_2mm20_out_feedback_out_36),
        .in_feedback_valid_in_36(i_llvm_fpga_push_i1_notcmp86122_push36_kernel_2mm20_out_feedback_valid_out_36),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp86122_pop36_kernel_2mm19_out_data_out),
        .out_feedback_stall_out_36(i_llvm_fpga_pop_i1_notcmp86122_pop36_kernel_2mm19_out_feedback_stall_out_36),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_notcmp81_kernel_2mm13(LOGICAL,50)@7
    assign i_notcmp81_kernel_2mm13_q = redist2_i_exitcond16_kernel_2mm10_cmp_nsign_q_6_q ^ VCC_q;

    // redist2_i_exitcond16_kernel_2mm10_cmp_nsign_q_6(DELAY,152)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_exitcond16_kernel_2mm10_cmp_nsign_q_6_delay_0 <= '0;
            redist2_i_exitcond16_kernel_2mm10_cmp_nsign_q_6_delay_1 <= '0;
            redist2_i_exitcond16_kernel_2mm10_cmp_nsign_q_6_delay_2 <= '0;
            redist2_i_exitcond16_kernel_2mm10_cmp_nsign_q_6_q <= '0;
        end
        else
        begin
            redist2_i_exitcond16_kernel_2mm10_cmp_nsign_q_6_delay_0 <= $unsigned(redist1_i_exitcond16_kernel_2mm10_cmp_nsign_q_2_q);
            redist2_i_exitcond16_kernel_2mm10_cmp_nsign_q_6_delay_1 <= redist2_i_exitcond16_kernel_2mm10_cmp_nsign_q_6_delay_0;
            redist2_i_exitcond16_kernel_2mm10_cmp_nsign_q_6_delay_2 <= redist2_i_exitcond16_kernel_2mm10_cmp_nsign_q_6_delay_1;
            redist2_i_exitcond16_kernel_2mm10_cmp_nsign_q_6_q <= redist2_i_exitcond16_kernel_2mm10_cmp_nsign_q_6_delay_2;
        end
    end

    // redist15_i_arrayidx606_kernel_2mm7_vt_join_q_4_notEnable(LOGICAL,210)
    assign redist15_i_arrayidx606_kernel_2mm7_vt_join_q_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist15_i_arrayidx606_kernel_2mm7_vt_join_q_4_nor(LOGICAL,211)
    assign redist15_i_arrayidx606_kernel_2mm7_vt_join_q_4_nor_q = ~ (redist15_i_arrayidx606_kernel_2mm7_vt_join_q_4_notEnable_q | redist15_i_arrayidx606_kernel_2mm7_vt_join_q_4_sticky_ena_q);

    // redist15_i_arrayidx606_kernel_2mm7_vt_join_q_4_cmpReg(REG,209)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_arrayidx606_kernel_2mm7_vt_join_q_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist15_i_arrayidx606_kernel_2mm7_vt_join_q_4_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist15_i_arrayidx606_kernel_2mm7_vt_join_q_4_sticky_ena(REG,212)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_arrayidx606_kernel_2mm7_vt_join_q_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist15_i_arrayidx606_kernel_2mm7_vt_join_q_4_nor_q == 1'b1)
        begin
            redist15_i_arrayidx606_kernel_2mm7_vt_join_q_4_sticky_ena_q <= $unsigned(redist15_i_arrayidx606_kernel_2mm7_vt_join_q_4_cmpReg_q);
        end
    end

    // redist15_i_arrayidx606_kernel_2mm7_vt_join_q_4_enaAnd(LOGICAL,213)
    assign redist15_i_arrayidx606_kernel_2mm7_vt_join_q_4_enaAnd_q = redist15_i_arrayidx606_kernel_2mm7_vt_join_q_4_sticky_ena_q & VCC_q;

    // redist15_i_arrayidx606_kernel_2mm7_vt_join_q_4_rdcnt(COUNTER,207)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_arrayidx606_kernel_2mm7_vt_join_q_4_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist15_i_arrayidx606_kernel_2mm7_vt_join_q_4_rdcnt_i <= $unsigned(redist15_i_arrayidx606_kernel_2mm7_vt_join_q_4_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist15_i_arrayidx606_kernel_2mm7_vt_join_q_4_rdcnt_q = redist15_i_arrayidx606_kernel_2mm7_vt_join_q_4_rdcnt_i[0:0];

    // redist15_i_arrayidx606_kernel_2mm7_vt_join_q_4_inputreg0(DELAY,205)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_arrayidx606_kernel_2mm7_vt_join_q_4_inputreg0_q <= '0;
        end
        else
        begin
            redist15_i_arrayidx606_kernel_2mm7_vt_join_q_4_inputreg0_q <= $unsigned(i_arrayidx606_kernel_2mm7_vt_join_q);
        end
    end

    // redist15_i_arrayidx606_kernel_2mm7_vt_join_q_4_wraddr(REG,208)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_arrayidx606_kernel_2mm7_vt_join_q_4_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist15_i_arrayidx606_kernel_2mm7_vt_join_q_4_wraddr_q <= $unsigned(redist15_i_arrayidx606_kernel_2mm7_vt_join_q_4_rdcnt_q);
        end
    end

    // redist15_i_arrayidx606_kernel_2mm7_vt_join_q_4_mem(DUALMEM,206)
    assign redist15_i_arrayidx606_kernel_2mm7_vt_join_q_4_mem_ia = $unsigned(redist15_i_arrayidx606_kernel_2mm7_vt_join_q_4_inputreg0_q);
    assign redist15_i_arrayidx606_kernel_2mm7_vt_join_q_4_mem_aa = redist15_i_arrayidx606_kernel_2mm7_vt_join_q_4_wraddr_q;
    assign redist15_i_arrayidx606_kernel_2mm7_vt_join_q_4_mem_ab = redist15_i_arrayidx606_kernel_2mm7_vt_join_q_4_rdcnt_q;
    assign redist15_i_arrayidx606_kernel_2mm7_vt_join_q_4_mem_reset0 = ~ (resetn);
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
    ) redist15_i_arrayidx606_kernel_2mm7_vt_join_q_4_mem_dmem (
        .clocken1(redist15_i_arrayidx606_kernel_2mm7_vt_join_q_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist15_i_arrayidx606_kernel_2mm7_vt_join_q_4_mem_reset0),
        .clock1(clock),
        .address_a(redist15_i_arrayidx606_kernel_2mm7_vt_join_q_4_mem_aa),
        .data_a(redist15_i_arrayidx606_kernel_2mm7_vt_join_q_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist15_i_arrayidx606_kernel_2mm7_vt_join_q_4_mem_ab),
        .q_b(redist15_i_arrayidx606_kernel_2mm7_vt_join_q_4_mem_iq),
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
    assign redist15_i_arrayidx606_kernel_2mm7_vt_join_q_4_mem_q = redist15_i_arrayidx606_kernel_2mm7_vt_join_q_4_mem_iq[63:0];

    // redist13_i_idxprom59_kernel_2mm6_vt_join_q_4_notEnable(LOGICAL,191)
    assign redist13_i_idxprom59_kernel_2mm6_vt_join_q_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist13_i_idxprom59_kernel_2mm6_vt_join_q_4_nor(LOGICAL,192)
    assign redist13_i_idxprom59_kernel_2mm6_vt_join_q_4_nor_q = ~ (redist13_i_idxprom59_kernel_2mm6_vt_join_q_4_notEnable_q | redist13_i_idxprom59_kernel_2mm6_vt_join_q_4_sticky_ena_q);

    // redist13_i_idxprom59_kernel_2mm6_vt_join_q_4_cmpReg(REG,190)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_idxprom59_kernel_2mm6_vt_join_q_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist13_i_idxprom59_kernel_2mm6_vt_join_q_4_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist13_i_idxprom59_kernel_2mm6_vt_join_q_4_sticky_ena(REG,193)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_idxprom59_kernel_2mm6_vt_join_q_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist13_i_idxprom59_kernel_2mm6_vt_join_q_4_nor_q == 1'b1)
        begin
            redist13_i_idxprom59_kernel_2mm6_vt_join_q_4_sticky_ena_q <= $unsigned(redist13_i_idxprom59_kernel_2mm6_vt_join_q_4_cmpReg_q);
        end
    end

    // redist13_i_idxprom59_kernel_2mm6_vt_join_q_4_enaAnd(LOGICAL,194)
    assign redist13_i_idxprom59_kernel_2mm6_vt_join_q_4_enaAnd_q = redist13_i_idxprom59_kernel_2mm6_vt_join_q_4_sticky_ena_q & VCC_q;

    // redist13_i_idxprom59_kernel_2mm6_vt_join_q_4_rdcnt(COUNTER,188)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_idxprom59_kernel_2mm6_vt_join_q_4_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist13_i_idxprom59_kernel_2mm6_vt_join_q_4_rdcnt_i <= $unsigned(redist13_i_idxprom59_kernel_2mm6_vt_join_q_4_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist13_i_idxprom59_kernel_2mm6_vt_join_q_4_rdcnt_q = redist13_i_idxprom59_kernel_2mm6_vt_join_q_4_rdcnt_i[0:0];

    // redist13_i_idxprom59_kernel_2mm6_vt_join_q_4_inputreg0(DELAY,186)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_idxprom59_kernel_2mm6_vt_join_q_4_inputreg0_q <= '0;
        end
        else
        begin
            redist13_i_idxprom59_kernel_2mm6_vt_join_q_4_inputreg0_q <= $unsigned(i_idxprom59_kernel_2mm6_vt_join_q);
        end
    end

    // redist13_i_idxprom59_kernel_2mm6_vt_join_q_4_wraddr(REG,189)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_idxprom59_kernel_2mm6_vt_join_q_4_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist13_i_idxprom59_kernel_2mm6_vt_join_q_4_wraddr_q <= $unsigned(redist13_i_idxprom59_kernel_2mm6_vt_join_q_4_rdcnt_q);
        end
    end

    // redist13_i_idxprom59_kernel_2mm6_vt_join_q_4_mem(DUALMEM,187)
    assign redist13_i_idxprom59_kernel_2mm6_vt_join_q_4_mem_ia = $unsigned(redist13_i_idxprom59_kernel_2mm6_vt_join_q_4_inputreg0_q);
    assign redist13_i_idxprom59_kernel_2mm6_vt_join_q_4_mem_aa = redist13_i_idxprom59_kernel_2mm6_vt_join_q_4_wraddr_q;
    assign redist13_i_idxprom59_kernel_2mm6_vt_join_q_4_mem_ab = redist13_i_idxprom59_kernel_2mm6_vt_join_q_4_rdcnt_q;
    assign redist13_i_idxprom59_kernel_2mm6_vt_join_q_4_mem_reset0 = ~ (resetn);
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
    ) redist13_i_idxprom59_kernel_2mm6_vt_join_q_4_mem_dmem (
        .clocken1(redist13_i_idxprom59_kernel_2mm6_vt_join_q_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist13_i_idxprom59_kernel_2mm6_vt_join_q_4_mem_reset0),
        .clock1(clock),
        .address_a(redist13_i_idxprom59_kernel_2mm6_vt_join_q_4_mem_aa),
        .data_a(redist13_i_idxprom59_kernel_2mm6_vt_join_q_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist13_i_idxprom59_kernel_2mm6_vt_join_q_4_mem_ab),
        .q_b(redist13_i_idxprom59_kernel_2mm6_vt_join_q_4_mem_iq),
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
    assign redist13_i_idxprom59_kernel_2mm6_vt_join_q_4_mem_q = redist13_i_idxprom59_kernel_2mm6_vt_join_q_4_mem_iq[63:0];

    // redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_notEnable(LOGICAL,201)
    assign redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_nor(LOGICAL,202)
    assign redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_nor_q = ~ (redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_notEnable_q | redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_sticky_ena_q);

    // redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_mem_last(CONSTANT,198)
    assign redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_mem_last_q = $unsigned(3'b010);

    // redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_cmp(LOGICAL,199)
    assign redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_cmp_b = {1'b0, redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_rdcnt_q};
    assign redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_cmp_q = $unsigned(redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_mem_last_q == redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_cmp_b ? 1'b1 : 1'b0);

    // redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_cmpReg(REG,200)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_cmpReg_q <= $unsigned(redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_cmp_q);
        end
    end

    // redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_sticky_ena(REG,203)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_nor_q == 1'b1)
        begin
            redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_sticky_ena_q <= $unsigned(redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_cmpReg_q);
        end
    end

    // redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_enaAnd(LOGICAL,204)
    assign redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_enaAnd_q = redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_sticky_ena_q & VCC_q;

    // redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_rdcnt(COUNTER,196)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_rdcnt_i <= $unsigned(redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_rdcnt_q = redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_rdcnt_i[1:0];

    // redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_wraddr(REG,197)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_wraddr_q <= $unsigned(redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_rdcnt_q);
        end
    end

    // redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_mem(DUALMEM,195)
    assign redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_mem_ia = $unsigned(i_idxprom57_kernel_2mm4_vt_join_q);
    assign redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_mem_aa = redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_wraddr_q;
    assign redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_mem_ab = redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_rdcnt_q;
    assign redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_mem_reset0 = ~ (resetn);
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
    ) redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_mem_dmem (
        .clocken1(redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_mem_reset0),
        .clock1(clock),
        .address_a(redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_mem_aa),
        .data_a(redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_mem_ab),
        .q_b(redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_mem_iq),
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
    assign redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_mem_q = redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_mem_iq[63:0];

    // redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_notEnable(LOGICAL,182)
    assign redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_nor(LOGICAL,183)
    assign redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_nor_q = ~ (redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_notEnable_q | redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_sticky_ena_q);

    // redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_mem_last(CONSTANT,179)
    assign redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_mem_last_q = $unsigned(3'b010);

    // redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_cmp(LOGICAL,180)
    assign redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_cmp_b = {1'b0, redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_rdcnt_q};
    assign redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_cmp_q = $unsigned(redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_mem_last_q == redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_cmp_b ? 1'b1 : 1'b0);

    // redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_cmpReg(REG,181)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_cmpReg_q <= $unsigned(redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_cmp_q);
        end
    end

    // redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_sticky_ena(REG,184)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_nor_q == 1'b1)
        begin
            redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_sticky_ena_q <= $unsigned(redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_cmpReg_q);
        end
    end

    // redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_enaAnd(LOGICAL,185)
    assign redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_enaAnd_q = redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_sticky_ena_q & VCC_q;

    // redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_rdcnt(COUNTER,177)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_rdcnt_i <= $unsigned(redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_rdcnt_q = redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_rdcnt_i[1:0];

    // redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_wraddr(REG,178)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_wraddr_q <= $unsigned(redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_rdcnt_q);
        end
    end

    // redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_mem(DUALMEM,176)
    assign redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_mem_ia = $unsigned(i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out);
    assign redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_mem_aa = redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_wraddr_q;
    assign redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_mem_ab = redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_rdcnt_q;
    assign redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_mem_reset0 = ~ (resetn);
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
    ) redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_mem_dmem (
        .clocken1(redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_mem_reset0),
        .clock1(clock),
        .address_a(redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_mem_aa),
        .data_a(redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_mem_ab),
        .q_b(redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_mem_iq),
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
    assign redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_mem_q = redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_mem_iq[31:0];

    // sync_out_aunroll_x(GPOUT,86)@7
    assign out_c0_exi10222_0_tpl = GND_q;
    assign out_c0_exi10222_1_tpl = redist12_i_llvm_fpga_pop_i32_i47_073_pop25126_pop37_kernel_2mm3_out_data_out_5_mem_q;
    assign out_c0_exi10222_2_tpl = redist14_i_idxprom57_kernel_2mm4_vt_join_q_5_mem_q;
    assign out_c0_exi10222_3_tpl = redist13_i_idxprom59_kernel_2mm6_vt_join_q_4_mem_q;
    assign out_c0_exi10222_4_tpl = redist15_i_arrayidx606_kernel_2mm7_vt_join_q_4_mem_q;
    assign out_c0_exi10222_5_tpl = i_llvm_fpga_mem_unnamed_kernel_2mm13_kernel_2mm8_out_o_readdata;
    assign out_c0_exi10222_6_tpl = redist2_i_exitcond16_kernel_2mm10_cmp_nsign_q_6_q;
    assign out_c0_exi10222_7_tpl = i_notcmp81_kernel_2mm13_q;
    assign out_c0_exi10222_8_tpl = i_llvm_fpga_pop_i1_notcmp86122_pop36_kernel_2mm19_out_data_out;
    assign out_c0_exi10222_9_tpl = redist8_sync_together54_aunroll_x_in_c0_eni3208_3_tpl_6_q;
    assign out_c0_exi10222_10_tpl = redist4_sync_together54_aunroll_x_in_c0_eni3208_1_tpl_6_mem_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_kernel_2mm1 = GND_q;

endmodule
