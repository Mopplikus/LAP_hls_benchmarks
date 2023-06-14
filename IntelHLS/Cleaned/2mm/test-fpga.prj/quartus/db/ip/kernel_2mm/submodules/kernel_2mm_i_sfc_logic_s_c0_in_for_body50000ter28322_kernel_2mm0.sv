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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body57_kernel_2mms_c0_enter28322_kernel_2mm0
// Created for function/kernel kernel_2mm
// SystemVerilog created on Tue Jun 13 12:37:15 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_2mm_i_sfc_logic_s_c0_in_for_body50000ter28322_kernel_2mm0 (
    output wire [0:0] out_c0_exi15_0_tpl,
    output wire [31:0] out_c0_exi15_1_tpl,
    output wire [31:0] out_c0_exi15_2_tpl,
    output wire [63:0] out_c0_exi15_3_tpl,
    output wire [0:0] out_c0_exi15_4_tpl,
    output wire [0:0] out_c0_exi15_5_tpl,
    output wire [31:0] out_c0_exi15_6_tpl,
    output wire [0:0] out_c0_exi15_7_tpl,
    output wire [0:0] out_c0_exi15_8_tpl,
    output wire [0:0] out_c0_exi15_9_tpl,
    output wire [0:0] out_c0_exi15_10_tpl,
    output wire [31:0] out_c0_exi15_11_tpl,
    output wire [31:0] out_c0_exi15_12_tpl,
    output wire [0:0] out_c0_exi15_13_tpl,
    output wire [0:0] out_c0_exi15_14_tpl,
    output wire [0:0] out_c0_exi15_15_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_kernel_2mm1,
    input wire [0:0] in_c0_eni6282_0_tpl,
    input wire [0:0] in_c0_eni6282_1_tpl,
    input wire [31:0] in_c0_eni6282_2_tpl,
    input wire [31:0] in_c0_eni6282_3_tpl,
    input wire [0:0] in_c0_eni6282_4_tpl,
    input wire [0:0] in_c0_eni6282_5_tpl,
    input wire [0:0] in_c0_eni6282_6_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_kernel_2mm2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_kernel_2mm2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_intel_reserved_ffwd_6_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [4:0] bgTrunc_i_fpga_indvars_iv_next20_kernel_2mm15_sel_x_b;
    wire [31:0] bgTrunc_i_inc84_kernel_2mm17_sel_x_b;
    wire [63:0] i_mptr_bitcast_index92_kernel_2mm0_dupName_0_trunc_sel_x_b;
    wire [1:0] i_mptr_bitcast_index92_kernel_2mm0_c_i2_01_x_q;
    wire [31:0] c_i32_046_q;
    wire [31:0] c_i32_150_q;
    wire [4:0] c_i5_149_q;
    wire [4:0] c_i5_847_q;
    wire [32:0] i_add60_kernel_2mm5_a;
    wire [32:0] i_add60_kernel_2mm5_b;
    logic [32:0] i_add60_kernel_2mm5_o;
    wire [32:0] i_add60_kernel_2mm5_q;
    wire [5:0] i_fpga_indvars_iv_next20_kernel_2mm15_a;
    wire [5:0] i_fpga_indvars_iv_next20_kernel_2mm15_b;
    logic [5:0] i_fpga_indvars_iv_next20_kernel_2mm15_o;
    wire [5:0] i_fpga_indvars_iv_next20_kernel_2mm15_q;
    wire [32:0] i_inc84_kernel_2mm17_a;
    wire [32:0] i_inc84_kernel_2mm17_b;
    logic [32:0] i_inc84_kernel_2mm17_o;
    wire [32:0] i_inc84_kernel_2mm17_q;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast919639_kernel_2mm7_out_dest_data_out_6_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going43_kernel_2mm2_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going43_kernel_2mm2_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going43_kernel_2mm2_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going43_kernel_2mm2_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond24119_pop43_kernel_2mm21_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond24119_pop43_kernel_2mm21_out_feedback_stall_out_43;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop26123_pop45_kernel_2mm25_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop26123_pop45_kernel_2mm25_out_feedback_stall_out_45;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp46121_pop44_kernel_2mm23_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp46121_pop44_kernel_2mm23_out_feedback_stall_out_44;
    wire [31:0] i_llvm_fpga_pop_i32_i48_078_pop25115_pop41_kernel_2mm19_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i48_078_pop25115_pop41_kernel_2mm19_out_feedback_stall_out_41;
    wire [31:0] i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_feedback_stall_out_39;
    wire [31:0] i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_feedback_stall_out_42;
    wire [4:0] i_llvm_fpga_pop_i5_fpga_indvars_iv19_pop38_kernel_2mm9_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i5_fpga_indvars_iv19_pop38_kernel_2mm9_out_feedback_stall_out_38;
    wire [0:0] i_llvm_fpga_push_i1_exitcond24119_push43_kernel_2mm22_out_feedback_out_43;
    wire [0:0] i_llvm_fpga_push_i1_exitcond24119_push43_kernel_2mm22_out_feedback_valid_out_43;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_pop26123_push45_kernel_2mm26_out_feedback_out_45;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_pop26123_push45_kernel_2mm26_out_feedback_valid_out_45;
    wire [0:0] i_llvm_fpga_push_i1_notcmp46121_push44_kernel_2mm24_out_feedback_out_44;
    wire [0:0] i_llvm_fpga_push_i1_notcmp46121_push44_kernel_2mm24_out_feedback_valid_out_44;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond44_kernel_2mm14_out_feedback_out_5;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond44_kernel_2mm14_out_feedback_valid_out_5;
    wire [31:0] i_llvm_fpga_push_i32_i48_078_pop25115_push41_kernel_2mm20_out_feedback_out_41;
    wire [0:0] i_llvm_fpga_push_i32_i48_078_pop25115_push41_kernel_2mm20_out_feedback_valid_out_41;
    wire [31:0] i_llvm_fpga_push_i32_j53_077_push39_kernel_2mm18_out_feedback_out_39;
    wire [0:0] i_llvm_fpga_push_i32_j53_077_push39_kernel_2mm18_out_feedback_valid_out_39;
    wire [31:0] i_llvm_fpga_push_i32_mul59_add30117_push42_kernel_2mm12_out_feedback_out_42;
    wire [0:0] i_llvm_fpga_push_i32_mul59_add30117_push42_kernel_2mm12_out_feedback_valid_out_42;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv19_push38_kernel_2mm16_out_feedback_out_38;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv19_push38_kernel_2mm16_out_feedback_valid_out_38;
    wire [0:0] i_notcmp41_kernel_2mm13_q;
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
    wire [0:0] i_exitcond21_kernel_2mm10_cmp_nsign_q;
    wire [60:0] i_mptr_bitcast_index92_kernel_2mm0_add_x_p1_of_2_a;
    wire [60:0] i_mptr_bitcast_index92_kernel_2mm0_add_x_p1_of_2_b;
    logic [60:0] i_mptr_bitcast_index92_kernel_2mm0_add_x_p1_of_2_o;
    wire [0:0] i_mptr_bitcast_index92_kernel_2mm0_add_x_p1_of_2_c;
    wire [59:0] i_mptr_bitcast_index92_kernel_2mm0_add_x_p1_of_2_q;
    wire [6:0] i_mptr_bitcast_index92_kernel_2mm0_add_x_p2_of_2_a;
    wire [6:0] i_mptr_bitcast_index92_kernel_2mm0_add_x_p2_of_2_b;
    logic [6:0] i_mptr_bitcast_index92_kernel_2mm0_add_x_p2_of_2_o;
    wire [0:0] i_mptr_bitcast_index92_kernel_2mm0_add_x_p2_of_2_cin;
    wire [4:0] i_mptr_bitcast_index92_kernel_2mm0_add_x_p2_of_2_q;
    wire [64:0] i_mptr_bitcast_index92_kernel_2mm0_add_x_BitJoin_for_q_q;
    wire [4:0] i_mptr_bitcast_index92_kernel_2mm0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [31:0] i_mptr_bitcast_index92_kernel_2mm0_add_x_BitSelect_for_b_tessel0_1_b;
    wire [59:0] i_mptr_bitcast_index92_kernel_2mm0_add_x_BitSelect_for_b_BitJoin_for_b_q;
    wire [4:0] i_mptr_bitcast_index92_kernel_2mm0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [29:0] i_mptr_bitcast_index92_kernel_2mm0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_in;
    wire [25:0] i_mptr_bitcast_index92_kernel_2mm0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_b;
    wire [3:0] i_mptr_bitcast_index92_kernel_2mm0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_c;
    wire [59:0] i_mptr_bitcast_index92_kernel_2mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    wire [3:0] i_mptr_bitcast_index92_kernel_2mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c;
    reg [3:0] redist0_i_mptr_bitcast_index92_kernel_2mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q;
    reg [31:0] redist1_i_mptr_bitcast_index92_kernel_2mm0_add_x_BitSelect_for_b_tessel0_1_b_1_q;
    reg [59:0] redist2_i_mptr_bitcast_index92_kernel_2mm0_add_x_p1_of_2_q_1_q;
    reg [0:0] redist3_i_exitcond21_kernel_2mm10_cmp_nsign_q_1_q;
    reg [0:0] redist4_i_exitcond21_kernel_2mm10_cmp_nsign_q_2_q;
    reg [0:0] redist5_i_exitcond21_kernel_2mm10_cmp_nsign_q_5_q;
    reg [0:0] redist5_i_exitcond21_kernel_2mm10_cmp_nsign_q_5_delay_0;
    reg [0:0] redist5_i_exitcond21_kernel_2mm10_cmp_nsign_q_5_delay_1;
    reg [31:0] redist6_i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_data_out_1_q;
    reg [31:0] redist8_i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_data_out_1_q;
    reg [0:0] redist10_sync_together71_aunroll_x_in_c0_eni6282_1_tpl_1_q;
    reg [0:0] redist11_sync_together71_aunroll_x_in_c0_eni6282_1_tpl_5_q;
    reg [0:0] redist11_sync_together71_aunroll_x_in_c0_eni6282_1_tpl_5_delay_0;
    reg [0:0] redist11_sync_together71_aunroll_x_in_c0_eni6282_1_tpl_5_delay_1;
    reg [0:0] redist11_sync_together71_aunroll_x_in_c0_eni6282_1_tpl_5_delay_2;
    reg [31:0] redist12_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_1_q;
    reg [0:0] redist15_sync_together71_aunroll_x_in_c0_eni6282_4_tpl_5_q;
    reg [0:0] redist15_sync_together71_aunroll_x_in_c0_eni6282_4_tpl_5_delay_0;
    reg [0:0] redist15_sync_together71_aunroll_x_in_c0_eni6282_4_tpl_5_delay_1;
    reg [0:0] redist15_sync_together71_aunroll_x_in_c0_eni6282_4_tpl_5_delay_2;
    reg [0:0] redist15_sync_together71_aunroll_x_in_c0_eni6282_4_tpl_5_delay_3;
    reg [0:0] redist16_sync_together71_aunroll_x_in_c0_eni6282_5_tpl_5_q;
    reg [0:0] redist16_sync_together71_aunroll_x_in_c0_eni6282_5_tpl_5_delay_0;
    reg [0:0] redist16_sync_together71_aunroll_x_in_c0_eni6282_5_tpl_5_delay_1;
    reg [0:0] redist16_sync_together71_aunroll_x_in_c0_eni6282_5_tpl_5_delay_2;
    reg [0:0] redist16_sync_together71_aunroll_x_in_c0_eni6282_5_tpl_5_delay_3;
    reg [0:0] redist17_sync_together71_aunroll_x_in_c0_eni6282_6_tpl_5_q;
    reg [0:0] redist17_sync_together71_aunroll_x_in_c0_eni6282_6_tpl_5_delay_0;
    reg [0:0] redist17_sync_together71_aunroll_x_in_c0_eni6282_6_tpl_5_delay_1;
    reg [0:0] redist17_sync_together71_aunroll_x_in_c0_eni6282_6_tpl_5_delay_2;
    reg [0:0] redist17_sync_together71_aunroll_x_in_c0_eni6282_6_tpl_5_delay_3;
    reg [0:0] redist18_sync_together71_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist19_sync_together71_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist20_sync_together71_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist20_sync_together71_aunroll_x_in_i_valid_4_delay_0;
    wire redist7_i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_data_out_4_mem_reset0;
    wire [31:0] redist7_i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_data_out_4_mem_ia;
    wire [0:0] redist7_i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_data_out_4_mem_aa;
    wire [0:0] redist7_i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_data_out_4_mem_ab;
    wire [31:0] redist7_i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_data_out_4_mem_iq;
    wire [31:0] redist7_i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_data_out_4_mem_q;
    wire [0:0] redist7_i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_data_out_4_rdcnt_q;
    (* preserve *) reg [0:0] redist7_i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_data_out_4_rdcnt_i;
    reg [0:0] redist7_i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_data_out_4_wraddr_q;
    (* dont_merge *) reg [0:0] redist7_i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_data_out_4_cmpReg_q;
    wire [0:0] redist7_i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_data_out_4_notEnable_q;
    wire [0:0] redist7_i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_data_out_4_nor_q;
    (* dont_merge *) reg [0:0] redist7_i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_data_out_4_sticky_ena_q;
    wire [0:0] redist7_i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_data_out_4_enaAnd_q;
    wire redist9_i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_data_out_4_mem_reset0;
    wire [31:0] redist9_i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_data_out_4_mem_ia;
    wire [0:0] redist9_i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_data_out_4_mem_aa;
    wire [0:0] redist9_i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_data_out_4_mem_ab;
    wire [31:0] redist9_i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_data_out_4_mem_iq;
    wire [31:0] redist9_i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_data_out_4_mem_q;
    wire [0:0] redist9_i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_data_out_4_rdcnt_q;
    (* preserve *) reg [0:0] redist9_i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_data_out_4_rdcnt_i;
    reg [0:0] redist9_i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_data_out_4_wraddr_q;
    (* dont_merge *) reg [0:0] redist9_i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_data_out_4_cmpReg_q;
    wire [0:0] redist9_i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_data_out_4_notEnable_q;
    wire [0:0] redist9_i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_data_out_4_nor_q;
    (* dont_merge *) reg [0:0] redist9_i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_data_out_4_sticky_ena_q;
    wire [0:0] redist9_i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_data_out_4_enaAnd_q;
    wire redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_mem_reset0;
    wire [31:0] redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_mem_ia;
    wire [1:0] redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_mem_aa;
    wire [1:0] redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_mem_ab;
    wire [31:0] redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_mem_iq;
    wire [31:0] redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_mem_q;
    wire [1:0] redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_rdcnt_i;
    (* preserve *) reg redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_rdcnt_eq;
    reg [1:0] redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_wraddr_q;
    wire [1:0] redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_mem_last_q;
    wire [0:0] redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_cmpReg_q;
    wire [0:0] redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_notEnable_q;
    wire [0:0] redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_sticky_ena_q;
    wire [0:0] redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_enaAnd_q;
    reg [31:0] redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_outputreg0_q;
    wire redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_mem_reset0;
    wire [31:0] redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_mem_ia;
    wire [1:0] redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_mem_aa;
    wire [1:0] redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_mem_ab;
    wire [31:0] redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_mem_iq;
    wire [31:0] redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_mem_q;
    wire [1:0] redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_rdcnt_i;
    (* preserve *) reg redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_rdcnt_eq;
    reg [1:0] redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_wraddr_q;
    wire [1:0] redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_mem_last_q;
    wire [0:0] redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_cmpReg_q;
    wire [0:0] redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_notEnable_q;
    wire [0:0] redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_sticky_ena_q;
    wire [0:0] redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist18_sync_together71_aunroll_x_in_i_valid_1(DELAY,135)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together71_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist18_sync_together71_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist19_sync_together71_aunroll_x_in_i_valid_2(DELAY,136)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together71_aunroll_x_in_i_valid_2_q <= '0;
        end
        else
        begin
            redist19_sync_together71_aunroll_x_in_i_valid_2_q <= $unsigned(redist18_sync_together71_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist20_sync_together71_aunroll_x_in_i_valid_4(DELAY,137)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together71_aunroll_x_in_i_valid_4_delay_0 <= '0;
            redist20_sync_together71_aunroll_x_in_i_valid_4_q <= '0;
        end
        else
        begin
            redist20_sync_together71_aunroll_x_in_i_valid_4_delay_0 <= $unsigned(redist19_sync_together71_aunroll_x_in_i_valid_2_q);
            redist20_sync_together71_aunroll_x_in_i_valid_4_q <= redist20_sync_together71_aunroll_x_in_i_valid_4_delay_0;
        end
    end

    // valid_fanout_reg0(REG,74)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist20_sync_together71_aunroll_x_in_i_valid_4_q);
        end
    end

    // redist17_sync_together71_aunroll_x_in_c0_eni6282_6_tpl_5(DELAY,134)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together71_aunroll_x_in_c0_eni6282_6_tpl_5_delay_0 <= '0;
            redist17_sync_together71_aunroll_x_in_c0_eni6282_6_tpl_5_delay_1 <= '0;
            redist17_sync_together71_aunroll_x_in_c0_eni6282_6_tpl_5_delay_2 <= '0;
            redist17_sync_together71_aunroll_x_in_c0_eni6282_6_tpl_5_delay_3 <= '0;
            redist17_sync_together71_aunroll_x_in_c0_eni6282_6_tpl_5_q <= '0;
        end
        else
        begin
            redist17_sync_together71_aunroll_x_in_c0_eni6282_6_tpl_5_delay_0 <= $unsigned(in_c0_eni6282_6_tpl);
            redist17_sync_together71_aunroll_x_in_c0_eni6282_6_tpl_5_delay_1 <= redist17_sync_together71_aunroll_x_in_c0_eni6282_6_tpl_5_delay_0;
            redist17_sync_together71_aunroll_x_in_c0_eni6282_6_tpl_5_delay_2 <= redist17_sync_together71_aunroll_x_in_c0_eni6282_6_tpl_5_delay_1;
            redist17_sync_together71_aunroll_x_in_c0_eni6282_6_tpl_5_delay_3 <= redist17_sync_together71_aunroll_x_in_c0_eni6282_6_tpl_5_delay_2;
            redist17_sync_together71_aunroll_x_in_c0_eni6282_6_tpl_5_q <= redist17_sync_together71_aunroll_x_in_c0_eni6282_6_tpl_5_delay_3;
        end
    end

    // redist16_sync_together71_aunroll_x_in_c0_eni6282_5_tpl_5(DELAY,133)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together71_aunroll_x_in_c0_eni6282_5_tpl_5_delay_0 <= '0;
            redist16_sync_together71_aunroll_x_in_c0_eni6282_5_tpl_5_delay_1 <= '0;
            redist16_sync_together71_aunroll_x_in_c0_eni6282_5_tpl_5_delay_2 <= '0;
            redist16_sync_together71_aunroll_x_in_c0_eni6282_5_tpl_5_delay_3 <= '0;
            redist16_sync_together71_aunroll_x_in_c0_eni6282_5_tpl_5_q <= '0;
        end
        else
        begin
            redist16_sync_together71_aunroll_x_in_c0_eni6282_5_tpl_5_delay_0 <= $unsigned(in_c0_eni6282_5_tpl);
            redist16_sync_together71_aunroll_x_in_c0_eni6282_5_tpl_5_delay_1 <= redist16_sync_together71_aunroll_x_in_c0_eni6282_5_tpl_5_delay_0;
            redist16_sync_together71_aunroll_x_in_c0_eni6282_5_tpl_5_delay_2 <= redist16_sync_together71_aunroll_x_in_c0_eni6282_5_tpl_5_delay_1;
            redist16_sync_together71_aunroll_x_in_c0_eni6282_5_tpl_5_delay_3 <= redist16_sync_together71_aunroll_x_in_c0_eni6282_5_tpl_5_delay_2;
            redist16_sync_together71_aunroll_x_in_c0_eni6282_5_tpl_5_q <= redist16_sync_together71_aunroll_x_in_c0_eni6282_5_tpl_5_delay_3;
        end
    end

    // redist15_sync_together71_aunroll_x_in_c0_eni6282_4_tpl_5(DELAY,132)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together71_aunroll_x_in_c0_eni6282_4_tpl_5_delay_0 <= '0;
            redist15_sync_together71_aunroll_x_in_c0_eni6282_4_tpl_5_delay_1 <= '0;
            redist15_sync_together71_aunroll_x_in_c0_eni6282_4_tpl_5_delay_2 <= '0;
            redist15_sync_together71_aunroll_x_in_c0_eni6282_4_tpl_5_delay_3 <= '0;
            redist15_sync_together71_aunroll_x_in_c0_eni6282_4_tpl_5_q <= '0;
        end
        else
        begin
            redist15_sync_together71_aunroll_x_in_c0_eni6282_4_tpl_5_delay_0 <= $unsigned(in_c0_eni6282_4_tpl);
            redist15_sync_together71_aunroll_x_in_c0_eni6282_4_tpl_5_delay_1 <= redist15_sync_together71_aunroll_x_in_c0_eni6282_4_tpl_5_delay_0;
            redist15_sync_together71_aunroll_x_in_c0_eni6282_4_tpl_5_delay_2 <= redist15_sync_together71_aunroll_x_in_c0_eni6282_4_tpl_5_delay_1;
            redist15_sync_together71_aunroll_x_in_c0_eni6282_4_tpl_5_delay_3 <= redist15_sync_together71_aunroll_x_in_c0_eni6282_4_tpl_5_delay_2;
            redist15_sync_together71_aunroll_x_in_c0_eni6282_4_tpl_5_q <= redist15_sync_together71_aunroll_x_in_c0_eni6282_4_tpl_5_delay_3;
        end
    end

    // redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_notEnable(LOGICAL,160)
    assign redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_nor(LOGICAL,161)
    assign redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_nor_q = ~ (redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_notEnable_q | redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_sticky_ena_q);

    // redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_mem_last(CONSTANT,157)
    assign redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_mem_last_q = $unsigned(2'b01);

    // redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_cmp(LOGICAL,158)
    assign redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_cmp_q = $unsigned(redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_mem_last_q == redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_rdcnt_q ? 1'b1 : 1'b0);

    // redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_cmpReg(REG,159)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_cmpReg_q <= $unsigned(redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_cmp_q);
        end
    end

    // redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_sticky_ena(REG,162)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_nor_q == 1'b1)
        begin
            redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_sticky_ena_q <= $unsigned(redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_cmpReg_q);
        end
    end

    // redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_enaAnd(LOGICAL,163)
    assign redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_enaAnd_q = redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_sticky_ena_q & VCC_q;

    // redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_rdcnt(COUNTER,155)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_rdcnt_i <= 2'd0;
            redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_rdcnt_i == 2'd1)
            begin
                redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_rdcnt_eq <= 1'b0;
            end
            if (redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_rdcnt_eq == 1'b1)
            begin
                redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_rdcnt_i <= $unsigned(redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_rdcnt_i <= $unsigned(redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_rdcnt_q = redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_rdcnt_i[1:0];

    // redist12_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_1(DELAY,129)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_1_q <= '0;
        end
        else
        begin
            redist12_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_1_q <= $unsigned(in_c0_eni6282_2_tpl);
        end
    end

    // redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_wraddr(REG,156)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_wraddr_q <= $unsigned(redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_rdcnt_q);
        end
    end

    // redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_mem(DUALMEM,154)
    assign redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_mem_ia = $unsigned(redist12_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_1_q);
    assign redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_mem_aa = redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_wraddr_q;
    assign redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_mem_ab = redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_rdcnt_q;
    assign redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_mem_dmem (
        .clocken1(redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_mem_aa),
        .data_a(redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_mem_ab),
        .q_b(redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_mem_iq),
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
    assign redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_mem_q = redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_mem_iq[31:0];

    // redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_notEnable(LOGICAL,171)
    assign redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_nor(LOGICAL,172)
    assign redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_nor_q = ~ (redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_notEnable_q | redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_sticky_ena_q);

    // redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_mem_last(CONSTANT,168)
    assign redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_mem_last_q = $unsigned(2'b01);

    // redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_cmp(LOGICAL,169)
    assign redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_cmp_q = $unsigned(redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_mem_last_q == redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_rdcnt_q ? 1'b1 : 1'b0);

    // redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_cmpReg(REG,170)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_cmpReg_q <= $unsigned(redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_cmp_q);
        end
    end

    // redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_sticky_ena(REG,173)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_nor_q == 1'b1)
        begin
            redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_sticky_ena_q <= $unsigned(redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_cmpReg_q);
        end
    end

    // redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_enaAnd(LOGICAL,174)
    assign redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_enaAnd_q = redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_sticky_ena_q & VCC_q;

    // redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_rdcnt(COUNTER,166)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_rdcnt_i <= 2'd0;
            redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_rdcnt_i == 2'd1)
            begin
                redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_rdcnt_eq <= 1'b0;
            end
            if (redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_rdcnt_eq == 1'b1)
            begin
                redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_rdcnt_i <= $unsigned(redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_rdcnt_i <= $unsigned(redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_rdcnt_q = redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_rdcnt_i[1:0];

    // redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_wraddr(REG,167)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_wraddr_q <= $unsigned(redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_rdcnt_q);
        end
    end

    // redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_mem(DUALMEM,165)
    assign redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_mem_ia = $unsigned(in_c0_eni6282_3_tpl);
    assign redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_mem_aa = redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_wraddr_q;
    assign redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_mem_ab = redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_rdcnt_q;
    assign redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_mem_dmem (
        .clocken1(redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_mem_aa),
        .data_a(redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_mem_ab),
        .q_b(redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_mem_iq),
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
    assign redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_mem_q = redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_mem_iq[31:0];

    // redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_outputreg0(DELAY,164)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_outputreg0_q <= '0;
        end
        else
        begin
            redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_outputreg0_q <= $unsigned(redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_mem_q);
        end
    end

    // redist10_sync_together71_aunroll_x_in_c0_eni6282_1_tpl_1(DELAY,127)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together71_aunroll_x_in_c0_eni6282_1_tpl_1_q <= '0;
        end
        else
        begin
            redist10_sync_together71_aunroll_x_in_c0_eni6282_1_tpl_1_q <= $unsigned(in_c0_eni6282_1_tpl);
        end
    end

    // redist11_sync_together71_aunroll_x_in_c0_eni6282_1_tpl_5(DELAY,128)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together71_aunroll_x_in_c0_eni6282_1_tpl_5_delay_0 <= '0;
            redist11_sync_together71_aunroll_x_in_c0_eni6282_1_tpl_5_delay_1 <= '0;
            redist11_sync_together71_aunroll_x_in_c0_eni6282_1_tpl_5_delay_2 <= '0;
            redist11_sync_together71_aunroll_x_in_c0_eni6282_1_tpl_5_q <= '0;
        end
        else
        begin
            redist11_sync_together71_aunroll_x_in_c0_eni6282_1_tpl_5_delay_0 <= $unsigned(redist10_sync_together71_aunroll_x_in_c0_eni6282_1_tpl_1_q);
            redist11_sync_together71_aunroll_x_in_c0_eni6282_1_tpl_5_delay_1 <= redist11_sync_together71_aunroll_x_in_c0_eni6282_1_tpl_5_delay_0;
            redist11_sync_together71_aunroll_x_in_c0_eni6282_1_tpl_5_delay_2 <= redist11_sync_together71_aunroll_x_in_c0_eni6282_1_tpl_5_delay_1;
            redist11_sync_together71_aunroll_x_in_c0_eni6282_1_tpl_5_q <= redist11_sync_together71_aunroll_x_in_c0_eni6282_1_tpl_5_delay_2;
        end
    end

    // valid_fanout_reg12(REG,86)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist20_sync_together71_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg13(REG,87)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist20_sync_together71_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi3_pop26123_push45_kernel_2mm26(BLACKBOX,57)@6
    // out out_feedback_out_45@20000000
    // out out_feedback_valid_out_45@20000000
    kernel_2mm_i_llvm_fpga_push_i1_memdep_phi3_pop26123_push45_0 thei_llvm_fpga_push_i1_memdep_phi3_pop26123_push45_kernel_2mm26 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi3_pop26123_pop45_kernel_2mm25_out_data_out),
        .in_exitcond21(redist5_i_exitcond21_kernel_2mm10_cmp_nsign_q_5_q),
        .in_feedback_stall_in_45(i_llvm_fpga_pop_i1_memdep_phi3_pop26123_pop45_kernel_2mm25_out_feedback_stall_out_45),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(),
        .out_feedback_out_45(i_llvm_fpga_push_i1_memdep_phi3_pop26123_push45_kernel_2mm26_out_feedback_out_45),
        .out_feedback_valid_out_45(i_llvm_fpga_push_i1_memdep_phi3_pop26123_push45_kernel_2mm26_out_feedback_valid_out_45),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi3_pop26123_pop45_kernel_2mm25(BLACKBOX,50)@6
    // out out_feedback_stall_out_45@20000000
    kernel_2mm_i_llvm_fpga_pop_i1_memdep_phi3_pop26123_pop45_0 thei_llvm_fpga_pop_i1_memdep_phi3_pop26123_pop45_kernel_2mm25 (
        .in_data_in(redist17_sync_together71_aunroll_x_in_c0_eni6282_6_tpl_5_q),
        .in_dir(redist11_sync_together71_aunroll_x_in_c0_eni6282_1_tpl_5_q),
        .in_feedback_in_45(i_llvm_fpga_push_i1_memdep_phi3_pop26123_push45_kernel_2mm26_out_feedback_out_45),
        .in_feedback_valid_in_45(i_llvm_fpga_push_i1_memdep_phi3_pop26123_push45_kernel_2mm26_out_feedback_valid_out_45),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi3_pop26123_pop45_kernel_2mm25_out_data_out),
        .out_feedback_stall_out_45(i_llvm_fpga_pop_i1_memdep_phi3_pop26123_pop45_kernel_2mm25_out_feedback_stall_out_45),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg10(REG,84)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist20_sync_together71_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg11(REG,85)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist20_sync_together71_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp46121_push44_kernel_2mm24(BLACKBOX,58)@6
    // out out_feedback_out_44@20000000
    // out out_feedback_valid_out_44@20000000
    kernel_2mm_i_llvm_fpga_push_i1_notcmp46121_push44_0 thei_llvm_fpga_push_i1_notcmp46121_push44_kernel_2mm24 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp46121_pop44_kernel_2mm23_out_data_out),
        .in_exitcond21(redist5_i_exitcond21_kernel_2mm10_cmp_nsign_q_5_q),
        .in_feedback_stall_in_44(i_llvm_fpga_pop_i1_notcmp46121_pop44_kernel_2mm23_out_feedback_stall_out_44),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(),
        .out_feedback_out_44(i_llvm_fpga_push_i1_notcmp46121_push44_kernel_2mm24_out_feedback_out_44),
        .out_feedback_valid_out_44(i_llvm_fpga_push_i1_notcmp46121_push44_kernel_2mm24_out_feedback_valid_out_44),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_notcmp46121_pop44_kernel_2mm23(BLACKBOX,51)@6
    // out out_feedback_stall_out_44@20000000
    kernel_2mm_i_llvm_fpga_pop_i1_notcmp46121_pop44_0 thei_llvm_fpga_pop_i1_notcmp46121_pop44_kernel_2mm23 (
        .in_data_in(redist16_sync_together71_aunroll_x_in_c0_eni6282_5_tpl_5_q),
        .in_dir(redist11_sync_together71_aunroll_x_in_c0_eni6282_1_tpl_5_q),
        .in_feedback_in_44(i_llvm_fpga_push_i1_notcmp46121_push44_kernel_2mm24_out_feedback_out_44),
        .in_feedback_valid_in_44(i_llvm_fpga_push_i1_notcmp46121_push44_kernel_2mm24_out_feedback_valid_out_44),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp46121_pop44_kernel_2mm23_out_data_out),
        .out_feedback_stall_out_44(i_llvm_fpga_pop_i1_notcmp46121_pop44_kernel_2mm23_out_feedback_stall_out_44),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg8(REG,82)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist20_sync_together71_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg9(REG,83)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist20_sync_together71_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i1_exitcond24119_push43_kernel_2mm22(BLACKBOX,56)@6
    // out out_feedback_out_43@20000000
    // out out_feedback_valid_out_43@20000000
    kernel_2mm_i_llvm_fpga_push_i1_exitcond24119_push43_0 thei_llvm_fpga_push_i1_exitcond24119_push43_kernel_2mm22 (
        .in_data_in(i_llvm_fpga_pop_i1_exitcond24119_pop43_kernel_2mm21_out_data_out),
        .in_exitcond21(redist5_i_exitcond21_kernel_2mm10_cmp_nsign_q_5_q),
        .in_feedback_stall_in_43(i_llvm_fpga_pop_i1_exitcond24119_pop43_kernel_2mm21_out_feedback_stall_out_43),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(),
        .out_feedback_out_43(i_llvm_fpga_push_i1_exitcond24119_push43_kernel_2mm22_out_feedback_out_43),
        .out_feedback_valid_out_43(i_llvm_fpga_push_i1_exitcond24119_push43_kernel_2mm22_out_feedback_valid_out_43),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_exitcond24119_pop43_kernel_2mm21(BLACKBOX,49)@6
    // out out_feedback_stall_out_43@20000000
    kernel_2mm_i_llvm_fpga_pop_i1_exitcond24119_pop43_0 thei_llvm_fpga_pop_i1_exitcond24119_pop43_kernel_2mm21 (
        .in_data_in(redist15_sync_together71_aunroll_x_in_c0_eni6282_4_tpl_5_q),
        .in_dir(redist11_sync_together71_aunroll_x_in_c0_eni6282_1_tpl_5_q),
        .in_feedback_in_43(i_llvm_fpga_push_i1_exitcond24119_push43_kernel_2mm22_out_feedback_out_43),
        .in_feedback_valid_in_43(i_llvm_fpga_push_i1_exitcond24119_push43_kernel_2mm22_out_feedback_valid_out_43),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond24119_pop43_kernel_2mm21_out_data_out),
        .out_feedback_stall_out_43(i_llvm_fpga_pop_i1_exitcond24119_pop43_kernel_2mm21_out_feedback_stall_out_43),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg6(REG,80)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist20_sync_together71_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg7(REG,81)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist20_sync_together71_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i32_i48_078_pop25115_push41_kernel_2mm20(BLACKBOX,60)@6
    // out out_feedback_out_41@20000000
    // out out_feedback_valid_out_41@20000000
    kernel_2mm_i_llvm_fpga_push_i32_i48_078_pop25115_push41_0 thei_llvm_fpga_push_i32_i48_078_pop25115_push41_kernel_2mm20 (
        .in_data_in(i_llvm_fpga_pop_i32_i48_078_pop25115_pop41_kernel_2mm19_out_data_out),
        .in_exitcond21(redist5_i_exitcond21_kernel_2mm10_cmp_nsign_q_5_q),
        .in_feedback_stall_in_41(i_llvm_fpga_pop_i32_i48_078_pop25115_pop41_kernel_2mm19_out_feedback_stall_out_41),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(),
        .out_feedback_out_41(i_llvm_fpga_push_i32_i48_078_pop25115_push41_kernel_2mm20_out_feedback_out_41),
        .out_feedback_valid_out_41(i_llvm_fpga_push_i32_i48_078_pop25115_push41_kernel_2mm20_out_feedback_valid_out_41),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i48_078_pop25115_pop41_kernel_2mm19(BLACKBOX,52)@6
    // out out_feedback_stall_out_41@20000000
    kernel_2mm_i_llvm_fpga_pop_i32_i48_078_pop25115_pop41_0 thei_llvm_fpga_pop_i32_i48_078_pop25115_pop41_kernel_2mm19 (
        .in_data_in(redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_outputreg0_q),
        .in_dir(redist11_sync_together71_aunroll_x_in_c0_eni6282_1_tpl_5_q),
        .in_feedback_in_41(i_llvm_fpga_push_i32_i48_078_pop25115_push41_kernel_2mm20_out_feedback_out_41),
        .in_feedback_valid_in_41(i_llvm_fpga_push_i32_i48_078_pop25115_push41_kernel_2mm20_out_feedback_valid_out_41),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(i_llvm_fpga_pop_i32_i48_078_pop25115_pop41_kernel_2mm19_out_data_out),
        .out_feedback_stall_out_41(i_llvm_fpga_pop_i32_i48_078_pop25115_pop41_kernel_2mm19_out_feedback_stall_out_41),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_notcmp41_kernel_2mm13(LOGICAL,64)@6
    assign i_notcmp41_kernel_2mm13_q = redist5_i_exitcond21_kernel_2mm10_cmp_nsign_q_5_q ^ VCC_q;

    // c_i5_149(CONSTANT,40)
    assign c_i5_149_q = $unsigned(5'b11111);

    // i_fpga_indvars_iv_next20_kernel_2mm15(ADD,45)@1
    assign i_fpga_indvars_iv_next20_kernel_2mm15_a = {1'b0, i_llvm_fpga_pop_i5_fpga_indvars_iv19_pop38_kernel_2mm9_out_data_out};
    assign i_fpga_indvars_iv_next20_kernel_2mm15_b = {1'b0, c_i5_149_q};
    assign i_fpga_indvars_iv_next20_kernel_2mm15_o = $unsigned(i_fpga_indvars_iv_next20_kernel_2mm15_a) + $unsigned(i_fpga_indvars_iv_next20_kernel_2mm15_b);
    assign i_fpga_indvars_iv_next20_kernel_2mm15_q = i_fpga_indvars_iv_next20_kernel_2mm15_o[5:0];

    // bgTrunc_i_fpga_indvars_iv_next20_kernel_2mm15_sel_x(BITSELECT,3)@1
    assign bgTrunc_i_fpga_indvars_iv_next20_kernel_2mm15_sel_x_b = i_fpga_indvars_iv_next20_kernel_2mm15_q[4:0];

    // i_llvm_fpga_push_i5_fpga_indvars_iv19_push38_kernel_2mm16(BLACKBOX,63)@1
    // out out_feedback_out_38@20000000
    // out out_feedback_valid_out_38@20000000
    kernel_2mm_i_llvm_fpga_push_i5_fpga_indvars_iv19_push38_0 thei_llvm_fpga_push_i5_fpga_indvars_iv19_push38_kernel_2mm16 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next20_kernel_2mm15_sel_x_b),
        .in_exitcond21(i_exitcond21_kernel_2mm10_cmp_nsign_q),
        .in_feedback_stall_in_38(i_llvm_fpga_pop_i5_fpga_indvars_iv19_pop38_kernel_2mm9_out_feedback_stall_out_38),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_38(i_llvm_fpga_push_i5_fpga_indvars_iv19_push38_kernel_2mm16_out_feedback_out_38),
        .out_feedback_valid_out_38(i_llvm_fpga_push_i5_fpga_indvars_iv19_push38_kernel_2mm16_out_feedback_valid_out_38),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i5_847(CONSTANT,41)
    assign c_i5_847_q = $unsigned(5'b01000);

    // i_llvm_fpga_pop_i5_fpga_indvars_iv19_pop38_kernel_2mm9(BLACKBOX,55)@1
    // out out_feedback_stall_out_38@20000000
    kernel_2mm_i_llvm_fpga_pop_i5_fpga_indvars_iv19_pop38_0 thei_llvm_fpga_pop_i5_fpga_indvars_iv19_pop38_kernel_2mm9 (
        .in_data_in(c_i5_847_q),
        .in_dir(in_c0_eni6282_1_tpl),
        .in_feedback_in_38(i_llvm_fpga_push_i5_fpga_indvars_iv19_push38_kernel_2mm16_out_feedback_out_38),
        .in_feedback_valid_in_38(i_llvm_fpga_push_i5_fpga_indvars_iv19_push38_kernel_2mm16_out_feedback_valid_out_38),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i5_fpga_indvars_iv19_pop38_kernel_2mm9_out_data_out),
        .out_feedback_stall_out_38(i_llvm_fpga_pop_i5_fpga_indvars_iv19_pop38_kernel_2mm9_out_feedback_stall_out_38),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond21_kernel_2mm10_cmp_nsign(LOGICAL,93)@1
    assign i_exitcond21_kernel_2mm10_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i5_fpga_indvars_iv19_pop38_kernel_2mm9_out_data_out[4:4]));

    // redist3_i_exitcond21_kernel_2mm10_cmp_nsign_q_1(DELAY,120)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_exitcond21_kernel_2mm10_cmp_nsign_q_1_q <= '0;
        end
        else
        begin
            redist3_i_exitcond21_kernel_2mm10_cmp_nsign_q_1_q <= $unsigned(i_exitcond21_kernel_2mm10_cmp_nsign_q);
        end
    end

    // redist4_i_exitcond21_kernel_2mm10_cmp_nsign_q_2(DELAY,121)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_exitcond21_kernel_2mm10_cmp_nsign_q_2_q <= '0;
        end
        else
        begin
            redist4_i_exitcond21_kernel_2mm10_cmp_nsign_q_2_q <= $unsigned(redist3_i_exitcond21_kernel_2mm10_cmp_nsign_q_1_q);
        end
    end

    // redist5_i_exitcond21_kernel_2mm10_cmp_nsign_q_5(DELAY,122)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_exitcond21_kernel_2mm10_cmp_nsign_q_5_delay_0 <= '0;
            redist5_i_exitcond21_kernel_2mm10_cmp_nsign_q_5_delay_1 <= '0;
            redist5_i_exitcond21_kernel_2mm10_cmp_nsign_q_5_q <= '0;
        end
        else
        begin
            redist5_i_exitcond21_kernel_2mm10_cmp_nsign_q_5_delay_0 <= $unsigned(redist4_i_exitcond21_kernel_2mm10_cmp_nsign_q_2_q);
            redist5_i_exitcond21_kernel_2mm10_cmp_nsign_q_5_delay_1 <= redist5_i_exitcond21_kernel_2mm10_cmp_nsign_q_5_delay_0;
            redist5_i_exitcond21_kernel_2mm10_cmp_nsign_q_5_q <= redist5_i_exitcond21_kernel_2mm10_cmp_nsign_q_5_delay_1;
        end
    end

    // c_i32_046(CONSTANT,38)
    assign c_i32_046_q = $unsigned(32'b00000000000000000000000000000000);

    // i_mptr_bitcast_index92_kernel_2mm0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select(BITSELECT,115)
    assign i_mptr_bitcast_index92_kernel_2mm0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_in = c_i32_046_q[29:0];
    assign i_mptr_bitcast_index92_kernel_2mm0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_b = i_mptr_bitcast_index92_kernel_2mm0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_in[25:0];
    assign i_mptr_bitcast_index92_kernel_2mm0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_c = i_mptr_bitcast_index92_kernel_2mm0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_in[29:26];

    // valid_fanout_reg2(REG,76)@1 + 1
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

    // valid_fanout_reg4(REG,78)@1 + 1
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

    // i_llvm_fpga_push_i32_mul59_add30117_push42_kernel_2mm12(BLACKBOX,62)@2
    // out out_feedback_out_42@20000000
    // out out_feedback_valid_out_42@20000000
    kernel_2mm_i_llvm_fpga_push_i32_mul59_add30117_push42_0 thei_llvm_fpga_push_i32_mul59_add30117_push42_kernel_2mm12 (
        .in_data_in(i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_data_out),
        .in_exitcond21(redist3_i_exitcond21_kernel_2mm10_cmp_nsign_q_1_q),
        .in_feedback_stall_in_42(i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_feedback_stall_out_42),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(),
        .out_feedback_out_42(i_llvm_fpga_push_i32_mul59_add30117_push42_kernel_2mm12_out_feedback_out_42),
        .out_feedback_valid_out_42(i_llvm_fpga_push_i32_mul59_add30117_push42_kernel_2mm12_out_feedback_valid_out_42),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4(BLACKBOX,54)@2
    // out out_feedback_stall_out_42@20000000
    kernel_2mm_i_llvm_fpga_pop_i32_mul59_add30117_pop42_0 thei_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4 (
        .in_data_in(redist12_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_1_q),
        .in_dir(redist10_sync_together71_aunroll_x_in_c0_eni6282_1_tpl_1_q),
        .in_feedback_in_42(i_llvm_fpga_push_i32_mul59_add30117_push42_kernel_2mm12_out_feedback_out_42),
        .in_feedback_valid_in_42(i_llvm_fpga_push_i32_mul59_add30117_push42_kernel_2mm12_out_feedback_valid_out_42),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_data_out),
        .out_feedback_stall_out_42(i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_feedback_stall_out_42),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_data_out_1(DELAY,123)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_data_out_1_q <= '0;
        end
        else
        begin
            redist6_i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_data_out);
        end
    end

    // valid_fanout_reg1(REG,75)@1 + 1
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

    // valid_fanout_reg5(REG,79)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist18_sync_together71_aunroll_x_in_i_valid_1_q);
        end
    end

    // c_i32_150(CONSTANT,39)
    assign c_i32_150_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc84_kernel_2mm17(ADD,46)@3
    assign i_inc84_kernel_2mm17_a = {1'b0, redist8_i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_data_out_1_q};
    assign i_inc84_kernel_2mm17_b = {1'b0, c_i32_150_q};
    assign i_inc84_kernel_2mm17_o = $unsigned(i_inc84_kernel_2mm17_a) + $unsigned(i_inc84_kernel_2mm17_b);
    assign i_inc84_kernel_2mm17_q = i_inc84_kernel_2mm17_o[32:0];

    // bgTrunc_i_inc84_kernel_2mm17_sel_x(BITSELECT,4)@3
    assign bgTrunc_i_inc84_kernel_2mm17_sel_x_b = i_inc84_kernel_2mm17_q[31:0];

    // i_llvm_fpga_push_i32_j53_077_push39_kernel_2mm18(BLACKBOX,61)@3
    // out out_feedback_out_39@20000000
    // out out_feedback_valid_out_39@20000000
    kernel_2mm_i_llvm_fpga_push_i32_j53_077_push39_0 thei_llvm_fpga_push_i32_j53_077_push39_kernel_2mm18 (
        .in_data_in(bgTrunc_i_inc84_kernel_2mm17_sel_x_b),
        .in_exitcond21(redist4_i_exitcond21_kernel_2mm10_cmp_nsign_q_2_q),
        .in_feedback_stall_in_39(i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_feedback_stall_out_39),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_39(i_llvm_fpga_push_i32_j53_077_push39_kernel_2mm18_out_feedback_out_39),
        .out_feedback_valid_out_39(i_llvm_fpga_push_i32_j53_077_push39_kernel_2mm18_out_feedback_valid_out_39),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3(BLACKBOX,53)@2
    // out out_feedback_stall_out_39@20000000
    kernel_2mm_i_llvm_fpga_pop_i32_j53_077_pop39_0 thei_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3 (
        .in_data_in(c_i32_046_q),
        .in_dir(redist10_sync_together71_aunroll_x_in_c0_eni6282_1_tpl_1_q),
        .in_feedback_in_39(i_llvm_fpga_push_i32_j53_077_push39_kernel_2mm18_out_feedback_out_39),
        .in_feedback_valid_in_39(i_llvm_fpga_push_i32_j53_077_push39_kernel_2mm18_out_feedback_valid_out_39),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_data_out),
        .out_feedback_stall_out_39(i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_feedback_stall_out_39),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_data_out_1(DELAY,125)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_data_out_1_q <= '0;
        end
        else
        begin
            redist8_i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_data_out);
        end
    end

    // i_add60_kernel_2mm5(ADD,43)@3
    assign i_add60_kernel_2mm5_a = {1'b0, redist8_i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_data_out_1_q};
    assign i_add60_kernel_2mm5_b = {1'b0, redist6_i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_data_out_1_q};
    assign i_add60_kernel_2mm5_o = $unsigned(i_add60_kernel_2mm5_a) + $unsigned(i_add60_kernel_2mm5_b);
    assign i_add60_kernel_2mm5_q = i_add60_kernel_2mm5_o[32:0];

    // i_mptr_bitcast_index92_kernel_2mm0_add_x_BitSelect_for_b_tessel0_1(BITSELECT,109)@3
    assign i_mptr_bitcast_index92_kernel_2mm0_add_x_BitSelect_for_b_tessel0_1_b = $unsigned(i_add60_kernel_2mm5_q[31:0]);

    // redist1_i_mptr_bitcast_index92_kernel_2mm0_add_x_BitSelect_for_b_tessel0_1_b_1(DELAY,118)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_mptr_bitcast_index92_kernel_2mm0_add_x_BitSelect_for_b_tessel0_1_b_1_q <= '0;
        end
        else
        begin
            redist1_i_mptr_bitcast_index92_kernel_2mm0_add_x_BitSelect_for_b_tessel0_1_b_1_q <= $unsigned(i_mptr_bitcast_index92_kernel_2mm0_add_x_BitSelect_for_b_tessel0_1_b);
        end
    end

    // i_mptr_bitcast_index92_kernel_2mm0_c_i2_01_x(CONSTANT,9)
    assign i_mptr_bitcast_index92_kernel_2mm0_c_i2_01_x_q = $unsigned(2'b00);

    // i_mptr_bitcast_index92_kernel_2mm0_add_x_BitSelect_for_b_BitJoin_for_b(BITJOIN,111)@4
    assign i_mptr_bitcast_index92_kernel_2mm0_add_x_BitSelect_for_b_BitJoin_for_b_q = {i_mptr_bitcast_index92_kernel_2mm0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_b, redist1_i_mptr_bitcast_index92_kernel_2mm0_add_x_BitSelect_for_b_tessel0_1_b_1_q, i_mptr_bitcast_index92_kernel_2mm0_c_i2_01_x_q};

    // valid_fanout_reg3(REG,77)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist19_sync_together71_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast919639_kernel_2mm7(BLACKBOX,47)@4
    kernel_2mm_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast919639_0 thei_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast919639_kernel_2mm7 (
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_dest_data_out_6_0(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast919639_kernel_2mm7_out_dest_data_out_6_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mptr_bitcast_index92_kernel_2mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,116)@4
    assign i_mptr_bitcast_index92_kernel_2mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b = $unsigned(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast919639_kernel_2mm7_out_dest_data_out_6_0[59:0]);
    assign i_mptr_bitcast_index92_kernel_2mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c = $unsigned(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast919639_kernel_2mm7_out_dest_data_out_6_0[63:60]);

    // i_mptr_bitcast_index92_kernel_2mm0_add_x_p1_of_2(ADD,100)@4 + 1
    assign i_mptr_bitcast_index92_kernel_2mm0_add_x_p1_of_2_a = {1'b0, i_mptr_bitcast_index92_kernel_2mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b};
    assign i_mptr_bitcast_index92_kernel_2mm0_add_x_p1_of_2_b = {1'b0, i_mptr_bitcast_index92_kernel_2mm0_add_x_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index92_kernel_2mm0_add_x_p1_of_2_o <= 61'b0;
        end
        else
        begin
            i_mptr_bitcast_index92_kernel_2mm0_add_x_p1_of_2_o <= $unsigned(i_mptr_bitcast_index92_kernel_2mm0_add_x_p1_of_2_a) + $unsigned(i_mptr_bitcast_index92_kernel_2mm0_add_x_p1_of_2_b);
        end
    end
    assign i_mptr_bitcast_index92_kernel_2mm0_add_x_p1_of_2_c[0] = i_mptr_bitcast_index92_kernel_2mm0_add_x_p1_of_2_o[60];
    assign i_mptr_bitcast_index92_kernel_2mm0_add_x_p1_of_2_q = i_mptr_bitcast_index92_kernel_2mm0_add_x_p1_of_2_o[59:0];

    // i_mptr_bitcast_index92_kernel_2mm0_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,114)@5
    assign i_mptr_bitcast_index92_kernel_2mm0_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_mptr_bitcast_index92_kernel_2mm0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_c};

    // redist0_i_mptr_bitcast_index92_kernel_2mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1(DELAY,117)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_mptr_bitcast_index92_kernel_2mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist0_i_mptr_bitcast_index92_kernel_2mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q <= $unsigned(i_mptr_bitcast_index92_kernel_2mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c);
        end
    end

    // i_mptr_bitcast_index92_kernel_2mm0_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,107)@5
    assign i_mptr_bitcast_index92_kernel_2mm0_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist0_i_mptr_bitcast_index92_kernel_2mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q};

    // i_mptr_bitcast_index92_kernel_2mm0_add_x_p2_of_2(ADD,101)@5 + 1
    assign i_mptr_bitcast_index92_kernel_2mm0_add_x_p2_of_2_cin = i_mptr_bitcast_index92_kernel_2mm0_add_x_p1_of_2_c;
    assign i_mptr_bitcast_index92_kernel_2mm0_add_x_p2_of_2_a = { {1'b0, i_mptr_bitcast_index92_kernel_2mm0_add_x_BitSelect_for_a_BitJoin_for_c_q}, 1'b1 };
    assign i_mptr_bitcast_index92_kernel_2mm0_add_x_p2_of_2_b = { {1'b0, i_mptr_bitcast_index92_kernel_2mm0_add_x_BitSelect_for_b_BitJoin_for_c_q}, i_mptr_bitcast_index92_kernel_2mm0_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index92_kernel_2mm0_add_x_p2_of_2_o <= 7'b0;
        end
        else
        begin
            i_mptr_bitcast_index92_kernel_2mm0_add_x_p2_of_2_o <= $unsigned(i_mptr_bitcast_index92_kernel_2mm0_add_x_p2_of_2_a) + $unsigned(i_mptr_bitcast_index92_kernel_2mm0_add_x_p2_of_2_b);
        end
    end
    assign i_mptr_bitcast_index92_kernel_2mm0_add_x_p2_of_2_q = i_mptr_bitcast_index92_kernel_2mm0_add_x_p2_of_2_o[5:1];

    // redist2_i_mptr_bitcast_index92_kernel_2mm0_add_x_p1_of_2_q_1(DELAY,119)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_mptr_bitcast_index92_kernel_2mm0_add_x_p1_of_2_q_1_q <= '0;
        end
        else
        begin
            redist2_i_mptr_bitcast_index92_kernel_2mm0_add_x_p1_of_2_q_1_q <= $unsigned(i_mptr_bitcast_index92_kernel_2mm0_add_x_p1_of_2_q);
        end
    end

    // i_mptr_bitcast_index92_kernel_2mm0_add_x_BitJoin_for_q(BITJOIN,102)@6
    assign i_mptr_bitcast_index92_kernel_2mm0_add_x_BitJoin_for_q_q = {i_mptr_bitcast_index92_kernel_2mm0_add_x_p2_of_2_q, redist2_i_mptr_bitcast_index92_kernel_2mm0_add_x_p1_of_2_q_1_q};

    // i_mptr_bitcast_index92_kernel_2mm0_dupName_0_trunc_sel_x(BITSELECT,6)@6
    assign i_mptr_bitcast_index92_kernel_2mm0_dupName_0_trunc_sel_x_b = i_mptr_bitcast_index92_kernel_2mm0_add_x_BitJoin_for_q_q[63:0];

    // redist7_i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_data_out_4_notEnable(LOGICAL,142)
    assign redist7_i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_data_out_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist7_i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_data_out_4_nor(LOGICAL,143)
    assign redist7_i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_data_out_4_nor_q = ~ (redist7_i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_data_out_4_notEnable_q | redist7_i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_data_out_4_sticky_ena_q);

    // redist7_i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_data_out_4_cmpReg(REG,141)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_data_out_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist7_i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_data_out_4_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist7_i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_data_out_4_sticky_ena(REG,144)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_data_out_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist7_i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_data_out_4_nor_q == 1'b1)
        begin
            redist7_i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_data_out_4_sticky_ena_q <= $unsigned(redist7_i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_data_out_4_cmpReg_q);
        end
    end

    // redist7_i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_data_out_4_enaAnd(LOGICAL,145)
    assign redist7_i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_data_out_4_enaAnd_q = redist7_i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_data_out_4_sticky_ena_q & VCC_q;

    // redist7_i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_data_out_4_rdcnt(COUNTER,139)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_data_out_4_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist7_i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_data_out_4_rdcnt_i <= $unsigned(redist7_i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_data_out_4_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist7_i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_data_out_4_rdcnt_q = redist7_i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_data_out_4_rdcnt_i[0:0];

    // redist7_i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_data_out_4_wraddr(REG,140)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_data_out_4_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist7_i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_data_out_4_wraddr_q <= $unsigned(redist7_i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_data_out_4_rdcnt_q);
        end
    end

    // redist7_i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_data_out_4_mem(DUALMEM,138)
    assign redist7_i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_data_out_4_mem_ia = $unsigned(redist6_i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_data_out_1_q);
    assign redist7_i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_data_out_4_mem_aa = redist7_i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_data_out_4_wraddr_q;
    assign redist7_i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_data_out_4_mem_ab = redist7_i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_data_out_4_rdcnt_q;
    assign redist7_i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_data_out_4_mem_reset0 = ~ (resetn);
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
        .intended_device_family("Cyclone V")
    ) redist7_i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_data_out_4_mem_dmem (
        .clocken1(redist7_i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_data_out_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist7_i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_data_out_4_mem_reset0),
        .clock1(clock),
        .address_a(redist7_i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_data_out_4_mem_aa),
        .data_a(redist7_i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_data_out_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist7_i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_data_out_4_mem_ab),
        .q_b(redist7_i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_data_out_4_mem_iq),
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
    assign redist7_i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_data_out_4_mem_q = redist7_i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_data_out_4_mem_iq[31:0];

    // redist9_i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_data_out_4_notEnable(LOGICAL,150)
    assign redist9_i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_data_out_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist9_i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_data_out_4_nor(LOGICAL,151)
    assign redist9_i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_data_out_4_nor_q = ~ (redist9_i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_data_out_4_notEnable_q | redist9_i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_data_out_4_sticky_ena_q);

    // redist9_i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_data_out_4_cmpReg(REG,149)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_data_out_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist9_i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_data_out_4_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist9_i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_data_out_4_sticky_ena(REG,152)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_data_out_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist9_i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_data_out_4_nor_q == 1'b1)
        begin
            redist9_i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_data_out_4_sticky_ena_q <= $unsigned(redist9_i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_data_out_4_cmpReg_q);
        end
    end

    // redist9_i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_data_out_4_enaAnd(LOGICAL,153)
    assign redist9_i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_data_out_4_enaAnd_q = redist9_i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_data_out_4_sticky_ena_q & VCC_q;

    // redist9_i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_data_out_4_rdcnt(COUNTER,147)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_data_out_4_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist9_i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_data_out_4_rdcnt_i <= $unsigned(redist9_i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_data_out_4_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist9_i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_data_out_4_rdcnt_q = redist9_i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_data_out_4_rdcnt_i[0:0];

    // redist9_i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_data_out_4_wraddr(REG,148)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_data_out_4_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist9_i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_data_out_4_wraddr_q <= $unsigned(redist9_i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_data_out_4_rdcnt_q);
        end
    end

    // redist9_i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_data_out_4_mem(DUALMEM,146)
    assign redist9_i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_data_out_4_mem_ia = $unsigned(redist8_i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_data_out_1_q);
    assign redist9_i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_data_out_4_mem_aa = redist9_i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_data_out_4_wraddr_q;
    assign redist9_i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_data_out_4_mem_ab = redist9_i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_data_out_4_rdcnt_q;
    assign redist9_i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_data_out_4_mem_reset0 = ~ (resetn);
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
        .intended_device_family("Cyclone V")
    ) redist9_i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_data_out_4_mem_dmem (
        .clocken1(redist9_i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_data_out_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist9_i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_data_out_4_mem_reset0),
        .clock1(clock),
        .address_a(redist9_i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_data_out_4_mem_aa),
        .data_a(redist9_i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_data_out_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist9_i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_data_out_4_mem_ab),
        .q_b(redist9_i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_data_out_4_mem_iq),
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
    assign redist9_i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_data_out_4_mem_q = redist9_i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_data_out_4_mem_iq[31:0];

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,13)@6
    assign out_c0_exi15_0_tpl = GND_q;
    assign out_c0_exi15_1_tpl = redist9_i_llvm_fpga_pop_i32_j53_077_pop39_kernel_2mm3_out_data_out_4_mem_q;
    assign out_c0_exi15_2_tpl = redist7_i_llvm_fpga_pop_i32_mul59_add30117_pop42_kernel_2mm4_out_data_out_4_mem_q;
    assign out_c0_exi15_3_tpl = i_mptr_bitcast_index92_kernel_2mm0_dupName_0_trunc_sel_x_b;
    assign out_c0_exi15_4_tpl = redist5_i_exitcond21_kernel_2mm10_cmp_nsign_q_5_q;
    assign out_c0_exi15_5_tpl = i_notcmp41_kernel_2mm13_q;
    assign out_c0_exi15_6_tpl = i_llvm_fpga_pop_i32_i48_078_pop25115_pop41_kernel_2mm19_out_data_out;
    assign out_c0_exi15_7_tpl = i_llvm_fpga_pop_i1_exitcond24119_pop43_kernel_2mm21_out_data_out;
    assign out_c0_exi15_8_tpl = i_llvm_fpga_pop_i1_notcmp46121_pop44_kernel_2mm23_out_data_out;
    assign out_c0_exi15_9_tpl = i_llvm_fpga_pop_i1_memdep_phi3_pop26123_pop45_kernel_2mm25_out_data_out;
    assign out_c0_exi15_10_tpl = redist11_sync_together71_aunroll_x_in_c0_eni6282_1_tpl_5_q;
    assign out_c0_exi15_11_tpl = redist14_sync_together71_aunroll_x_in_c0_eni6282_3_tpl_5_outputreg0_q;
    assign out_c0_exi15_12_tpl = redist13_sync_together71_aunroll_x_in_c0_eni6282_2_tpl_5_mem_q;
    assign out_c0_exi15_13_tpl = redist15_sync_together71_aunroll_x_in_c0_eni6282_4_tpl_5_q;
    assign out_c0_exi15_14_tpl = redist16_sync_together71_aunroll_x_in_c0_eni6282_5_tpl_5_q;
    assign out_c0_exi15_15_tpl = redist17_sync_together71_aunroll_x_in_c0_eni6282_6_tpl_5_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_kernel_2mm1 = GND_q;

    // i_llvm_fpga_push_i1_notexitcond44_kernel_2mm14(BLACKBOX,59)@1
    // out out_feedback_out_5@20000000
    // out out_feedback_valid_out_5@20000000
    kernel_2mm_i_llvm_fpga_push_i1_notexitcond44_0 thei_llvm_fpga_push_i1_notexitcond44_kernel_2mm14 (
        .in_data_in(i_exitcond21_kernel_2mm10_cmp_nsign_q),
        .in_feedback_stall_in_5(i_llvm_fpga_pipeline_keep_going43_kernel_2mm2_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_5(i_llvm_fpga_push_i1_notexitcond44_kernel_2mm14_out_feedback_out_5),
        .out_feedback_valid_out_5(i_llvm_fpga_push_i1_notexitcond44_kernel_2mm14_out_feedback_valid_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going43_kernel_2mm2(BLACKBOX,48)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    kernel_2mm_i_llvm_fpga_pipeline_keep_going43_0 thei_llvm_fpga_pipeline_keep_going43_kernel_2mm2 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond44_kernel_2mm14_out_feedback_out_5),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond44_kernel_2mm14_out_feedback_valid_out_5),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going43_kernel_2mm2_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going43_kernel_2mm2_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going43_kernel_2mm2_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going43_kernel_2mm2_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,42)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_kernel_2mm2_exiting_valid_out = i_llvm_fpga_pipeline_keep_going43_kernel_2mm2_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_kernel_2mm2_exiting_stall_out = i_llvm_fpga_pipeline_keep_going43_kernel_2mm2_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,71)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going43_kernel_2mm2_out_pipeline_valid_out;

endmodule
