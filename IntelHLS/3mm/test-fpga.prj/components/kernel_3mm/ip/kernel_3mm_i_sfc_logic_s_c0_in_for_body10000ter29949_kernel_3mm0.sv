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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body10_kernel_3mms_c0_enter29949_kernel_3mm0
// Created for function/kernel kernel_3mm
// SystemVerilog created on Fri Apr  7 18:25:07 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_i_sfc_logic_s_c0_in_for_body10000ter29949_kernel_3mm0 (
    input wire [31:0] in_unnamed_kernel_3mm2_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm2_kernel_3mm_avm_writeack,
    input wire [0:0] in_unnamed_kernel_3mm2_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm2_kernel_3mm_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going70_kernel_3mm2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going70_kernel_3mm2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    output wire [31:0] out_unnamed_kernel_3mm2_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm2_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm2_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm2_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm2_kernel_3mm_avm_writedata,
    output wire [3:0] out_unnamed_kernel_3mm2_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm2_kernel_3mm_avm_burstcount,
    output wire [0:0] out_c0_exi25_0_tpl,
    output wire [31:0] out_c0_exi25_1_tpl,
    output wire [63:0] out_c0_exi25_2_tpl,
    output wire [63:0] out_c0_exi25_3_tpl,
    output wire [63:0] out_c0_exi25_4_tpl,
    output wire [0:0] out_c0_exi25_5_tpl,
    output wire [31:0] out_c0_exi25_6_tpl,
    output wire [0:0] out_c0_exi25_7_tpl,
    output wire [0:0] out_c0_exi25_8_tpl,
    output wire [0:0] out_c0_exi25_9_tpl,
    output wire [0:0] out_c0_exi25_10_tpl,
    output wire [0:0] out_c0_exi25_11_tpl,
    output wire [0:0] out_c0_exi25_12_tpl,
    output wire [0:0] out_c0_exi25_13_tpl,
    output wire [0:0] out_c0_exi25_14_tpl,
    output wire [0:0] out_c0_exi25_15_tpl,
    output wire [0:0] out_c0_exi25_16_tpl,
    output wire [0:0] out_c0_exi25_17_tpl,
    output wire [0:0] out_c0_exi25_18_tpl,
    output wire [31:0] out_c0_exi25_19_tpl,
    output wire [0:0] out_c0_exi25_20_tpl,
    output wire [0:0] out_c0_exi25_21_tpl,
    output wire [0:0] out_c0_exi25_22_tpl,
    output wire [0:0] out_c0_exi25_23_tpl,
    output wire [0:0] out_c0_exi25_24_tpl,
    output wire [0:0] out_c0_exi25_25_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_kernel_3mm0,
    input wire [0:0] in_c0_eni13_0_tpl,
    input wire [31:0] in_c0_eni13_1_tpl,
    input wire [0:0] in_c0_eni13_2_tpl,
    input wire [0:0] in_c0_eni13_3_tpl,
    input wire [0:0] in_c0_eni13_4_tpl,
    input wire [0:0] in_c0_eni13_5_tpl,
    input wire [0:0] in_c0_eni13_6_tpl,
    input wire [0:0] in_c0_eni13_7_tpl,
    input wire [0:0] in_c0_eni13_8_tpl,
    input wire [0:0] in_c0_eni13_9_tpl,
    input wire [0:0] in_c0_eni13_10_tpl,
    input wire [0:0] in_c0_eni13_11_tpl,
    input wire [0:0] in_c0_eni13_12_tpl,
    input wire [0:0] in_c0_eni13_13_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_054_q;
    wire [31:0] c_i32_158_q;
    wire [4:0] c_i5_157_q;
    wire [4:0] c_i5_855_q;
    wire [63:0] c_kernel_3mm_E_local_pmem_q;
    wire [1:0] i_arrayidx121_kernel_3mm7_vt_const_1_q;
    wire [63:0] i_arrayidx121_kernel_3mm7_vt_join_q;
    wire [61:0] i_arrayidx121_kernel_3mm7_vt_select_63_b;
    wire [5:0] i_fpga_indvars_iv_next12_kernel_3mm17_a;
    wire [5:0] i_fpga_indvars_iv_next12_kernel_3mm17_b;
    logic [5:0] i_fpga_indvars_iv_next12_kernel_3mm17_o;
    wire [5:0] i_fpga_indvars_iv_next12_kernel_3mm17_q;
    wire [63:0] i_idxprom11_kernel_3mm6_vt_join_q;
    wire [31:0] i_idxprom11_kernel_3mm6_vt_select_31_b;
    wire [63:0] i_idxprom_kernel_3mm4_vt_join_q;
    wire [31:0] i_idxprom_kernel_3mm4_vt_select_31_b;
    wire [32:0] i_inc29_kernel_3mm19_a;
    wire [32:0] i_inc29_kernel_3mm19_b;
    logic [32:0] i_inc29_kernel_3mm19_o;
    wire [32:0] i_inc29_kernel_3mm19_q;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_3mm2_kernel_3mm9_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_3mm2_kernel_3mm9_out_unnamed_kernel_3mm2_kernel_3mm_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm2_kernel_3mm9_out_unnamed_kernel_3mm2_kernel_3mm_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_kernel_3mm2_kernel_3mm9_out_unnamed_kernel_3mm2_kernel_3mm_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm2_kernel_3mm9_out_unnamed_kernel_3mm2_kernel_3mm_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm2_kernel_3mm9_out_unnamed_kernel_3mm2_kernel_3mm_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm2_kernel_3mm9_out_unnamed_kernel_3mm2_kernel_3mm_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_3mm2_kernel_3mm9_out_unnamed_kernel_3mm2_kernel_3mm_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going70_kernel_3mm2_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going70_kernel_3mm2_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going70_kernel_3mm2_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going70_kernel_3mm2_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_forked8184_pop34_kernel_3mm21_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_forked8184_pop34_kernel_3mm21_out_feedback_stall_out_34;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop1892_pop36_kernel_3mm23_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop1892_pop36_kernel_3mm23_out_feedback_stall_out_36;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop1996_pop37_kernel_3mm25_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop1996_pop37_kernel_3mm25_out_feedback_stall_out_37;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi5_pop20100_pop38_kernel_3mm27_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi5_pop20100_pop38_kernel_3mm27_out_feedback_stall_out_38;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop1788_pop35_kernel_3mm8_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop1788_pop35_kernel_3mm8_out_feedback_stall_out_35;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp73111_pop40_kernel_3mm29_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp73111_pop40_kernel_3mm29_out_feedback_stall_out_40;
    wire [31:0] i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_feedback_stall_out_39;
    wire [31:0] i_llvm_fpga_pop_i32_j_059_pop33_kernel_3mm5_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_059_pop33_kernel_3mm5_out_feedback_stall_out_33;
    wire [4:0] i_llvm_fpga_pop_i5_fpga_indvars_iv11_pop32_kernel_3mm10_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i5_fpga_indvars_iv11_pop32_kernel_3mm10_out_feedback_stall_out_32;
    wire [0:0] i_llvm_fpga_push_i1_forked8184_push34_kernel_3mm22_out_feedback_out_34;
    wire [0:0] i_llvm_fpga_push_i1_forked8184_push34_kernel_3mm22_out_feedback_valid_out_34;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1892_push36_kernel_3mm24_out_feedback_out_36;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1892_push36_kernel_3mm24_out_feedback_valid_out_36;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_pop1996_push37_kernel_3mm26_out_feedback_out_37;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_pop1996_push37_kernel_3mm26_out_feedback_valid_out_37;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi5_pop20100_push38_kernel_3mm28_out_feedback_out_38;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi5_pop20100_push38_kernel_3mm28_out_feedback_valid_out_38;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop1788_push35_kernel_3mm14_out_feedback_out_35;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop1788_push35_kernel_3mm14_out_feedback_valid_out_35;
    wire [0:0] i_llvm_fpga_push_i1_notcmp73111_push40_kernel_3mm30_out_feedback_out_40;
    wire [0:0] i_llvm_fpga_push_i1_notcmp73111_push40_kernel_3mm30_out_feedback_valid_out_40;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond71_kernel_3mm16_out_feedback_out_12;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond71_kernel_3mm16_out_feedback_valid_out_12;
    wire [31:0] i_llvm_fpga_push_i32_i_060_pop23108_push39_kernel_3mm13_out_feedback_out_39;
    wire [0:0] i_llvm_fpga_push_i32_i_060_pop23108_push39_kernel_3mm13_out_feedback_valid_out_39;
    wire [31:0] i_llvm_fpga_push_i32_j_059_push33_kernel_3mm20_out_feedback_out_33;
    wire [0:0] i_llvm_fpga_push_i32_j_059_push33_kernel_3mm20_out_feedback_valid_out_33;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv11_push32_kernel_3mm18_out_feedback_out_32;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv11_push32_kernel_3mm18_out_feedback_valid_out_32;
    wire [0:0] i_notcmp68_kernel_3mm15_q;
    wire [4:0] bgTrunc_i_fpga_indvars_iv_next12_kernel_3mm17_sel_x_b;
    wire [31:0] bgTrunc_i_inc29_kernel_3mm19_sel_x_b;
    wire [9:0] i_arrayidx121_kernel_3mm0_add_x_a;
    wire [9:0] i_arrayidx121_kernel_3mm0_add_x_b;
    logic [9:0] i_arrayidx121_kernel_3mm0_add_x_o;
    wire [9:0] i_arrayidx121_kernel_3mm0_add_x_q;
    wire [63:0] i_arrayidx121_kernel_3mm0_append_upper_bits_x_q;
    wire [6:0] i_arrayidx121_kernel_3mm0_narrow_x_b;
    wire [8:0] i_arrayidx121_kernel_3mm0_shift_join_x_q;
    wire [9:0] i_arrayidx121_kernel_3mm0_dupName_0_add_x_a;
    wire [9:0] i_arrayidx121_kernel_3mm0_dupName_0_add_x_b;
    logic [9:0] i_arrayidx121_kernel_3mm0_dupName_0_add_x_o;
    wire [9:0] i_arrayidx121_kernel_3mm0_dupName_0_add_x_q;
    wire [17:0] i_arrayidx121_kernel_3mm0_mult_extender_x_q;
    wire [2:0] i_arrayidx121_kernel_3mm0_mult_multconst_x_q;
    wire [8:0] i_arrayidx121_kernel_3mm0_dupName_0_trunc_sel_x_b;
    wire [8:0] i_arrayidx121_kernel_3mm0_dupName_1_trunc_sel_x_b;
    wire [8:0] i_arrayidx121_kernel_3mm0_dupName_2_trunc_sel_x_b;
    wire [8:0] i_arrayidx121_kernel_3mm0_dupName_3_trunc_sel_x_b;
    wire [8:0] i_arrayidx121_kernel_3mm0_dupName_5_trunc_sel_x_b;
    wire [63:0] i_idxprom11_kernel_3mm6_sel_x_b;
    wire [63:0] i_idxprom_kernel_3mm4_sel_x_b;
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
    wire [0:0] i_exitcond13_kernel_3mm11_cmp_nsign_q;
    wire [9:0] addsumAHighB_uid142_i_arrayidx121_kernel_3mm0_mult_x_a;
    wire [9:0] addsumAHighB_uid142_i_arrayidx121_kernel_3mm0_mult_x_b;
    logic [9:0] addsumAHighB_uid142_i_arrayidx121_kernel_3mm0_mult_x_o;
    wire [9:0] addsumAHighB_uid142_i_arrayidx121_kernel_3mm0_mult_x_q;
    wire [11:0] add_uid143_i_arrayidx121_kernel_3mm0_mult_x_q;
    wire [14:0] sR_mergedSignalTM_uid148_i_arrayidx121_kernel_3mm0_mult_x_q;
    wire [54:0] i_arrayidx121_kernel_3mm0_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx121_kernel_3mm0_upper_bits_x_merged_bit_select_c;
    wire [1:0] lowRangeB_uid140_i_arrayidx121_kernel_3mm0_mult_x_merged_bit_select_b;
    wire [6:0] lowRangeB_uid140_i_arrayidx121_kernel_3mm0_mult_x_merged_bit_select_c;
    reg [0:0] redist0_i_exitcond13_kernel_3mm11_cmp_nsign_q_1_q;
    reg [0:0] redist1_i_exitcond13_kernel_3mm11_cmp_nsign_q_2_q;
    reg [0:0] redist2_i_exitcond13_kernel_3mm11_cmp_nsign_q_3_q;
    reg [0:0] redist3_i_exitcond13_kernel_3mm11_cmp_nsign_q_6_q;
    reg [0:0] redist3_i_exitcond13_kernel_3mm11_cmp_nsign_q_6_delay_0;
    reg [0:0] redist3_i_exitcond13_kernel_3mm11_cmp_nsign_q_6_delay_1;
    reg [31:0] redist4_sync_together84_aunroll_x_in_c0_eni13_1_tpl_1_q;
    reg [0:0] redist6_sync_together84_aunroll_x_in_c0_eni13_2_tpl_1_q;
    reg [0:0] redist7_sync_together84_aunroll_x_in_c0_eni13_2_tpl_2_q;
    reg [0:0] redist8_sync_together84_aunroll_x_in_c0_eni13_2_tpl_6_q;
    reg [0:0] redist8_sync_together84_aunroll_x_in_c0_eni13_2_tpl_6_delay_0;
    reg [0:0] redist8_sync_together84_aunroll_x_in_c0_eni13_2_tpl_6_delay_1;
    reg [0:0] redist8_sync_together84_aunroll_x_in_c0_eni13_2_tpl_6_delay_2;
    reg [0:0] redist9_sync_together84_aunroll_x_in_c0_eni13_3_tpl_2_q;
    reg [0:0] redist9_sync_together84_aunroll_x_in_c0_eni13_3_tpl_2_delay_0;
    reg [0:0] redist10_sync_together84_aunroll_x_in_c0_eni13_3_tpl_6_q;
    reg [0:0] redist10_sync_together84_aunroll_x_in_c0_eni13_3_tpl_6_delay_0;
    reg [0:0] redist10_sync_together84_aunroll_x_in_c0_eni13_3_tpl_6_delay_1;
    reg [0:0] redist10_sync_together84_aunroll_x_in_c0_eni13_3_tpl_6_delay_2;
    reg [0:0] redist11_sync_together84_aunroll_x_in_c0_eni13_4_tpl_6_q;
    reg [0:0] redist12_sync_together84_aunroll_x_in_c0_eni13_5_tpl_6_q;
    reg [0:0] redist13_sync_together84_aunroll_x_in_c0_eni13_6_tpl_6_q;
    reg [0:0] redist14_sync_together84_aunroll_x_in_c0_eni13_7_tpl_6_q;
    reg [0:0] redist15_sync_together84_aunroll_x_in_c0_eni13_8_tpl_6_q;
    reg [0:0] redist16_sync_together84_aunroll_x_in_c0_eni13_9_tpl_6_q;
    reg [0:0] redist17_sync_together84_aunroll_x_in_c0_eni13_10_tpl_6_q;
    reg [0:0] redist18_sync_together84_aunroll_x_in_c0_eni13_11_tpl_6_q;
    reg [0:0] redist19_sync_together84_aunroll_x_in_c0_eni13_12_tpl_6_q;
    reg [0:0] redist20_sync_together84_aunroll_x_in_c0_eni13_13_tpl_6_q;
    reg [0:0] redist21_sync_together84_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist22_sync_together84_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist23_sync_together84_aunroll_x_in_i_valid_5_q;
    reg [0:0] redist23_sync_together84_aunroll_x_in_i_valid_5_delay_0;
    reg [0:0] redist23_sync_together84_aunroll_x_in_i_valid_5_delay_1;
    reg [8:0] redist24_i_arrayidx121_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q;
    reg [0:0] redist26_i_llvm_fpga_pop_i1_memdep_phi_pop1788_pop35_kernel_3mm8_out_data_out_1_q;
    reg [0:0] redist27_i_llvm_fpga_pop_i1_memdep_phi_pop1788_pop35_kernel_3mm8_out_data_out_4_q;
    reg [0:0] redist27_i_llvm_fpga_pop_i1_memdep_phi_pop1788_pop35_kernel_3mm8_out_data_out_4_delay_0;
    reg [0:0] redist27_i_llvm_fpga_pop_i1_memdep_phi_pop1788_pop35_kernel_3mm8_out_data_out_4_delay_1;
    wire redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_mem_reset0;
    wire [31:0] redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_mem_ia;
    wire [1:0] redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_mem_aa;
    wire [1:0] redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_mem_ab;
    wire [31:0] redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_mem_iq;
    wire [31:0] redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_mem_q;
    wire [1:0] redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_rdcnt_q;
    (* preserve *) reg [1:0] redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_rdcnt_i;
    reg [1:0] redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_wraddr_q;
    wire [2:0] redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_mem_last_q;
    wire [2:0] redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_cmp_b;
    wire [0:0] redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_cmp_q;
    (* dont_merge *) reg [0:0] redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_cmpReg_q;
    wire [0:0] redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_notEnable_q;
    wire [0:0] redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_nor_q;
    (* dont_merge *) reg [0:0] redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_sticky_ena_q;
    wire [0:0] redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_enaAnd_q;
    wire redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_mem_reset0;
    wire [31:0] redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_mem_ia;
    wire [1:0] redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_mem_aa;
    wire [1:0] redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_mem_ab;
    wire [31:0] redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_mem_iq;
    wire [31:0] redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_mem_q;
    wire [1:0] redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_rdcnt_q;
    (* preserve *) reg [1:0] redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_rdcnt_i;
    reg [1:0] redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_wraddr_q;
    wire [2:0] redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_mem_last_q;
    wire [2:0] redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_cmp_b;
    wire [0:0] redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_cmp_q;
    (* dont_merge *) reg [0:0] redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_cmpReg_q;
    wire [0:0] redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_notEnable_q;
    wire [0:0] redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_nor_q;
    (* dont_merge *) reg [0:0] redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_sticky_ena_q;
    wire [0:0] redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_enaAnd_q;
    wire redist28_i_idxprom_kernel_3mm4_vt_join_q_5_mem_reset0;
    wire [63:0] redist28_i_idxprom_kernel_3mm4_vt_join_q_5_mem_ia;
    wire [1:0] redist28_i_idxprom_kernel_3mm4_vt_join_q_5_mem_aa;
    wire [1:0] redist28_i_idxprom_kernel_3mm4_vt_join_q_5_mem_ab;
    wire [63:0] redist28_i_idxprom_kernel_3mm4_vt_join_q_5_mem_iq;
    wire [63:0] redist28_i_idxprom_kernel_3mm4_vt_join_q_5_mem_q;
    wire [1:0] redist28_i_idxprom_kernel_3mm4_vt_join_q_5_rdcnt_q;
    (* preserve *) reg [1:0] redist28_i_idxprom_kernel_3mm4_vt_join_q_5_rdcnt_i;
    reg [1:0] redist28_i_idxprom_kernel_3mm4_vt_join_q_5_wraddr_q;
    wire [2:0] redist28_i_idxprom_kernel_3mm4_vt_join_q_5_mem_last_q;
    wire [2:0] redist28_i_idxprom_kernel_3mm4_vt_join_q_5_cmp_b;
    wire [0:0] redist28_i_idxprom_kernel_3mm4_vt_join_q_5_cmp_q;
    (* dont_merge *) reg [0:0] redist28_i_idxprom_kernel_3mm4_vt_join_q_5_cmpReg_q;
    wire [0:0] redist28_i_idxprom_kernel_3mm4_vt_join_q_5_notEnable_q;
    wire [0:0] redist28_i_idxprom_kernel_3mm4_vt_join_q_5_nor_q;
    (* dont_merge *) reg [0:0] redist28_i_idxprom_kernel_3mm4_vt_join_q_5_sticky_ena_q;
    wire [0:0] redist28_i_idxprom_kernel_3mm4_vt_join_q_5_enaAnd_q;
    reg [63:0] redist29_i_idxprom11_kernel_3mm6_vt_join_q_4_inputreg0_q;
    wire redist29_i_idxprom11_kernel_3mm6_vt_join_q_4_mem_reset0;
    wire [63:0] redist29_i_idxprom11_kernel_3mm6_vt_join_q_4_mem_ia;
    wire [0:0] redist29_i_idxprom11_kernel_3mm6_vt_join_q_4_mem_aa;
    wire [0:0] redist29_i_idxprom11_kernel_3mm6_vt_join_q_4_mem_ab;
    wire [63:0] redist29_i_idxprom11_kernel_3mm6_vt_join_q_4_mem_iq;
    wire [63:0] redist29_i_idxprom11_kernel_3mm6_vt_join_q_4_mem_q;
    wire [0:0] redist29_i_idxprom11_kernel_3mm6_vt_join_q_4_rdcnt_q;
    (* preserve *) reg [0:0] redist29_i_idxprom11_kernel_3mm6_vt_join_q_4_rdcnt_i;
    reg [0:0] redist29_i_idxprom11_kernel_3mm6_vt_join_q_4_wraddr_q;
    (* dont_merge *) reg [0:0] redist29_i_idxprom11_kernel_3mm6_vt_join_q_4_cmpReg_q;
    wire [0:0] redist29_i_idxprom11_kernel_3mm6_vt_join_q_4_notEnable_q;
    wire [0:0] redist29_i_idxprom11_kernel_3mm6_vt_join_q_4_nor_q;
    (* dont_merge *) reg [0:0] redist29_i_idxprom11_kernel_3mm6_vt_join_q_4_sticky_ena_q;
    wire [0:0] redist29_i_idxprom11_kernel_3mm6_vt_join_q_4_enaAnd_q;
    reg [63:0] redist30_i_arrayidx121_kernel_3mm7_vt_join_q_4_inputreg0_q;
    wire redist30_i_arrayidx121_kernel_3mm7_vt_join_q_4_mem_reset0;
    wire [63:0] redist30_i_arrayidx121_kernel_3mm7_vt_join_q_4_mem_ia;
    wire [0:0] redist30_i_arrayidx121_kernel_3mm7_vt_join_q_4_mem_aa;
    wire [0:0] redist30_i_arrayidx121_kernel_3mm7_vt_join_q_4_mem_ab;
    wire [63:0] redist30_i_arrayidx121_kernel_3mm7_vt_join_q_4_mem_iq;
    wire [63:0] redist30_i_arrayidx121_kernel_3mm7_vt_join_q_4_mem_q;
    wire [0:0] redist30_i_arrayidx121_kernel_3mm7_vt_join_q_4_rdcnt_q;
    (* preserve *) reg [0:0] redist30_i_arrayidx121_kernel_3mm7_vt_join_q_4_rdcnt_i;
    reg [0:0] redist30_i_arrayidx121_kernel_3mm7_vt_join_q_4_wraddr_q;
    (* dont_merge *) reg [0:0] redist30_i_arrayidx121_kernel_3mm7_vt_join_q_4_cmpReg_q;
    wire [0:0] redist30_i_arrayidx121_kernel_3mm7_vt_join_q_4_notEnable_q;
    wire [0:0] redist30_i_arrayidx121_kernel_3mm7_vt_join_q_4_nor_q;
    (* dont_merge *) reg [0:0] redist30_i_arrayidx121_kernel_3mm7_vt_join_q_4_sticky_ena_q;
    wire [0:0] redist30_i_arrayidx121_kernel_3mm7_vt_join_q_4_enaAnd_q;


    // c_i5_157(CONSTANT,30)
    assign c_i5_157_q = $unsigned(5'b11111);

    // i_fpga_indvars_iv_next12_kernel_3mm17(ADD,39)@1
    assign i_fpga_indvars_iv_next12_kernel_3mm17_a = {1'b0, i_llvm_fpga_pop_i5_fpga_indvars_iv11_pop32_kernel_3mm10_out_data_out};
    assign i_fpga_indvars_iv_next12_kernel_3mm17_b = {1'b0, c_i5_157_q};
    assign i_fpga_indvars_iv_next12_kernel_3mm17_o = $unsigned(i_fpga_indvars_iv_next12_kernel_3mm17_a) + $unsigned(i_fpga_indvars_iv_next12_kernel_3mm17_b);
    assign i_fpga_indvars_iv_next12_kernel_3mm17_q = i_fpga_indvars_iv_next12_kernel_3mm17_o[5:0];

    // bgTrunc_i_fpga_indvars_iv_next12_kernel_3mm17_sel_x(BITSELECT,76)@1
    assign bgTrunc_i_fpga_indvars_iv_next12_kernel_3mm17_sel_x_b = i_fpga_indvars_iv_next12_kernel_3mm17_q[4:0];

    // i_llvm_fpga_push_i5_fpga_indvars_iv11_push32_kernel_3mm18(BLACKBOX,69)@1
    // out out_feedback_out_32@20000000
    // out out_feedback_valid_out_32@20000000
    kernel_3mm_i_llvm_fpga_push_i5_fpga_indvars_iv11_push32_0 thei_llvm_fpga_push_i5_fpga_indvars_iv11_push32_kernel_3mm18 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next12_kernel_3mm17_sel_x_b),
        .in_exitcond13(i_exitcond13_kernel_3mm11_cmp_nsign_q),
        .in_feedback_stall_in_32(i_llvm_fpga_pop_i5_fpga_indvars_iv11_pop32_kernel_3mm10_out_feedback_stall_out_32),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_32(i_llvm_fpga_push_i5_fpga_indvars_iv11_push32_kernel_3mm18_out_feedback_out_32),
        .out_feedback_valid_out_32(i_llvm_fpga_push_i5_fpga_indvars_iv11_push32_kernel_3mm18_out_feedback_valid_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i5_855(CONSTANT,31)
    assign c_i5_855_q = $unsigned(5'b01000);

    // i_llvm_fpga_pop_i5_fpga_indvars_iv11_pop32_kernel_3mm10(BLACKBOX,59)@1
    // out out_feedback_stall_out_32@20000000
    kernel_3mm_i_llvm_fpga_pop_i5_fpga_indvars_iv11_pop32_0 thei_llvm_fpga_pop_i5_fpga_indvars_iv11_pop32_kernel_3mm10 (
        .in_data_in(c_i5_855_q),
        .in_dir(in_c0_eni13_2_tpl),
        .in_feedback_in_32(i_llvm_fpga_push_i5_fpga_indvars_iv11_push32_kernel_3mm18_out_feedback_out_32),
        .in_feedback_valid_in_32(i_llvm_fpga_push_i5_fpga_indvars_iv11_push32_kernel_3mm18_out_feedback_valid_out_32),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i5_fpga_indvars_iv11_pop32_kernel_3mm10_out_data_out),
        .out_feedback_stall_out_32(i_llvm_fpga_pop_i5_fpga_indvars_iv11_pop32_kernel_3mm10_out_feedback_stall_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond13_kernel_3mm11_cmp_nsign(LOGICAL,131)@1
    assign i_exitcond13_kernel_3mm11_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i5_fpga_indvars_iv11_pop32_kernel_3mm10_out_data_out[4:4]));

    // i_llvm_fpga_push_i1_notexitcond71_kernel_3mm16(BLACKBOX,66)@1
    // out out_feedback_out_12@20000000
    // out out_feedback_valid_out_12@20000000
    kernel_3mm_i_llvm_fpga_push_i1_notexitcond71_0 thei_llvm_fpga_push_i1_notexitcond71_kernel_3mm16 (
        .in_data_in(i_exitcond13_kernel_3mm11_cmp_nsign_q),
        .in_feedback_stall_in_12(i_llvm_fpga_pipeline_keep_going70_kernel_3mm2_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_12(i_llvm_fpga_push_i1_notexitcond71_kernel_3mm16_out_feedback_out_12),
        .out_feedback_valid_out_12(i_llvm_fpga_push_i1_notexitcond71_kernel_3mm16_out_feedback_valid_out_12),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_llvm_fpga_pipeline_keep_going70_kernel_3mm2(BLACKBOX,50)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    kernel_3mm_i_llvm_fpga_pipeline_keep_going70_0 thei_llvm_fpga_pipeline_keep_going70_kernel_3mm2 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond71_kernel_3mm16_out_feedback_out_12),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond71_kernel_3mm16_out_feedback_valid_out_12),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going70_kernel_3mm2_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going70_kernel_3mm2_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going70_kernel_3mm2_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going70_kernel_3mm2_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,34)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going70_kernel_3mm2_exiting_valid_out = i_llvm_fpga_pipeline_keep_going70_kernel_3mm2_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going70_kernel_3mm2_exiting_stall_out = i_llvm_fpga_pipeline_keep_going70_kernel_3mm2_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,73)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going70_kernel_3mm2_out_pipeline_valid_out;

    // redist21_sync_together84_aunroll_x_in_i_valid_1(DELAY,201)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_sync_together84_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist21_sync_together84_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg4(REG,112)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist21_sync_together84_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg3(REG,111)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist21_sync_together84_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist22_sync_together84_aunroll_x_in_i_valid_2(DELAY,202)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_sync_together84_aunroll_x_in_i_valid_2_q <= '0;
        end
        else
        begin
            redist22_sync_together84_aunroll_x_in_i_valid_2_q <= $unsigned(redist21_sync_together84_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg6(REG,114)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist22_sync_together84_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist0_i_exitcond13_kernel_3mm11_cmp_nsign_q_1(DELAY,180)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_exitcond13_kernel_3mm11_cmp_nsign_q_1_q <= '0;
        end
        else
        begin
            redist0_i_exitcond13_kernel_3mm11_cmp_nsign_q_1_q <= $unsigned(i_exitcond13_kernel_3mm11_cmp_nsign_q);
        end
    end

    // redist1_i_exitcond13_kernel_3mm11_cmp_nsign_q_2(DELAY,181)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_exitcond13_kernel_3mm11_cmp_nsign_q_2_q <= '0;
        end
        else
        begin
            redist1_i_exitcond13_kernel_3mm11_cmp_nsign_q_2_q <= $unsigned(redist0_i_exitcond13_kernel_3mm11_cmp_nsign_q_1_q);
        end
    end

    // redist2_i_exitcond13_kernel_3mm11_cmp_nsign_q_3(DELAY,182)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_exitcond13_kernel_3mm11_cmp_nsign_q_3_q <= '0;
        end
        else
        begin
            redist2_i_exitcond13_kernel_3mm11_cmp_nsign_q_3_q <= $unsigned(redist1_i_exitcond13_kernel_3mm11_cmp_nsign_q_2_q);
        end
    end

    // redist26_i_llvm_fpga_pop_i1_memdep_phi_pop1788_pop35_kernel_3mm8_out_data_out_1(DELAY,206)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_llvm_fpga_pop_i1_memdep_phi_pop1788_pop35_kernel_3mm8_out_data_out_1_q <= '0;
        end
        else
        begin
            redist26_i_llvm_fpga_pop_i1_memdep_phi_pop1788_pop35_kernel_3mm8_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi_pop1788_pop35_kernel_3mm8_out_data_out);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi_pop1788_push35_kernel_3mm14(BLACKBOX,64)@4
    // out out_feedback_out_35@20000000
    // out out_feedback_valid_out_35@20000000
    kernel_3mm_i_llvm_fpga_push_i1_memdep_phi_pop1788_push35_0 thei_llvm_fpga_push_i1_memdep_phi_pop1788_push35_kernel_3mm14 (
        .in_data_in(redist26_i_llvm_fpga_pop_i1_memdep_phi_pop1788_pop35_kernel_3mm8_out_data_out_1_q),
        .in_exitcond13(redist2_i_exitcond13_kernel_3mm11_cmp_nsign_q_3_q),
        .in_feedback_stall_in_35(i_llvm_fpga_pop_i1_memdep_phi_pop1788_pop35_kernel_3mm8_out_feedback_stall_out_35),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_35(i_llvm_fpga_push_i1_memdep_phi_pop1788_push35_kernel_3mm14_out_feedback_out_35),
        .out_feedback_valid_out_35(i_llvm_fpga_push_i1_memdep_phi_pop1788_push35_kernel_3mm14_out_feedback_valid_out_35),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_sync_together84_aunroll_x_in_c0_eni13_2_tpl_1(DELAY,186)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together84_aunroll_x_in_c0_eni13_2_tpl_1_q <= '0;
        end
        else
        begin
            redist6_sync_together84_aunroll_x_in_c0_eni13_2_tpl_1_q <= $unsigned(in_c0_eni13_2_tpl);
        end
    end

    // redist7_sync_together84_aunroll_x_in_c0_eni13_2_tpl_2(DELAY,187)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together84_aunroll_x_in_c0_eni13_2_tpl_2_q <= '0;
        end
        else
        begin
            redist7_sync_together84_aunroll_x_in_c0_eni13_2_tpl_2_q <= $unsigned(redist6_sync_together84_aunroll_x_in_c0_eni13_2_tpl_1_q);
        end
    end

    // redist9_sync_together84_aunroll_x_in_c0_eni13_3_tpl_2(DELAY,189)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together84_aunroll_x_in_c0_eni13_3_tpl_2_delay_0 <= '0;
            redist9_sync_together84_aunroll_x_in_c0_eni13_3_tpl_2_q <= '0;
        end
        else
        begin
            redist9_sync_together84_aunroll_x_in_c0_eni13_3_tpl_2_delay_0 <= $unsigned(in_c0_eni13_3_tpl);
            redist9_sync_together84_aunroll_x_in_c0_eni13_3_tpl_2_q <= redist9_sync_together84_aunroll_x_in_c0_eni13_3_tpl_2_delay_0;
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi_pop1788_pop35_kernel_3mm8(BLACKBOX,55)@3
    // out out_feedback_stall_out_35@20000000
    kernel_3mm_i_llvm_fpga_pop_i1_memdep_phi_pop1788_pop35_0 thei_llvm_fpga_pop_i1_memdep_phi_pop1788_pop35_kernel_3mm8 (
        .in_data_in(redist9_sync_together84_aunroll_x_in_c0_eni13_3_tpl_2_q),
        .in_dir(redist7_sync_together84_aunroll_x_in_c0_eni13_2_tpl_2_q),
        .in_feedback_in_35(i_llvm_fpga_push_i1_memdep_phi_pop1788_push35_kernel_3mm14_out_feedback_out_35),
        .in_feedback_valid_in_35(i_llvm_fpga_push_i1_memdep_phi_pop1788_push35_kernel_3mm14_out_feedback_valid_out_35),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop1788_pop35_kernel_3mm8_out_data_out),
        .out_feedback_stall_out_35(i_llvm_fpga_pop_i1_memdep_phi_pop1788_pop35_kernel_3mm8_out_feedback_stall_out_35),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_kernel_3mm_E_local_pmem(CONSTANT,32)
    assign c_kernel_3mm_E_local_pmem_q = $unsigned(64'b0100000001000100000000000000000000000000000000000000000000000000);

    // i_arrayidx121_kernel_3mm0_upper_bits_x_merged_bit_select(BITSELECT,178)@3
    assign i_arrayidx121_kernel_3mm0_upper_bits_x_merged_bit_select_b = c_kernel_3mm_E_local_pmem_q[63:9];
    assign i_arrayidx121_kernel_3mm0_upper_bits_x_merged_bit_select_c = c_kernel_3mm_E_local_pmem_q[8:0];

    // c_i32_054(CONSTANT,28)
    assign c_i32_054_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg2(REG,110)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist21_sync_together84_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg7(REG,115)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist21_sync_together84_aunroll_x_in_i_valid_1_q);
        end
    end

    // c_i32_158(CONSTANT,29)
    assign c_i32_158_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc29_kernel_3mm19(ADD,48)@3
    assign i_inc29_kernel_3mm19_a = {1'b0, i_llvm_fpga_pop_i32_j_059_pop33_kernel_3mm5_out_data_out};
    assign i_inc29_kernel_3mm19_b = {1'b0, c_i32_158_q};
    assign i_inc29_kernel_3mm19_o = $unsigned(i_inc29_kernel_3mm19_a) + $unsigned(i_inc29_kernel_3mm19_b);
    assign i_inc29_kernel_3mm19_q = i_inc29_kernel_3mm19_o[32:0];

    // bgTrunc_i_inc29_kernel_3mm19_sel_x(BITSELECT,77)@3
    assign bgTrunc_i_inc29_kernel_3mm19_sel_x_b = i_inc29_kernel_3mm19_q[31:0];

    // i_llvm_fpga_push_i32_j_059_push33_kernel_3mm20(BLACKBOX,68)@3
    // out out_feedback_out_33@20000000
    // out out_feedback_valid_out_33@20000000
    kernel_3mm_i_llvm_fpga_push_i32_j_059_push33_0 thei_llvm_fpga_push_i32_j_059_push33_kernel_3mm20 (
        .in_data_in(bgTrunc_i_inc29_kernel_3mm19_sel_x_b),
        .in_exitcond13(redist1_i_exitcond13_kernel_3mm11_cmp_nsign_q_2_q),
        .in_feedback_stall_in_33(i_llvm_fpga_pop_i32_j_059_pop33_kernel_3mm5_out_feedback_stall_out_33),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(),
        .out_feedback_out_33(i_llvm_fpga_push_i32_j_059_push33_kernel_3mm20_out_feedback_out_33),
        .out_feedback_valid_out_33(i_llvm_fpga_push_i32_j_059_push33_kernel_3mm20_out_feedback_valid_out_33),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_j_059_pop33_kernel_3mm5(BLACKBOX,58)@3
    // out out_feedback_stall_out_33@20000000
    kernel_3mm_i_llvm_fpga_pop_i32_j_059_pop33_0 thei_llvm_fpga_pop_i32_j_059_pop33_kernel_3mm5 (
        .in_data_in(c_i32_054_q),
        .in_dir(redist7_sync_together84_aunroll_x_in_c0_eni13_2_tpl_2_q),
        .in_feedback_in_33(i_llvm_fpga_push_i32_j_059_push33_kernel_3mm20_out_feedback_out_33),
        .in_feedback_valid_in_33(i_llvm_fpga_push_i32_j_059_push33_kernel_3mm20_out_feedback_valid_out_33),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_i32_j_059_pop33_kernel_3mm5_out_data_out),
        .out_feedback_stall_out_33(i_llvm_fpga_pop_i32_j_059_pop33_kernel_3mm5_out_feedback_stall_out_33),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom11_kernel_3mm6_sel_x(BITSELECT,104)@3
    assign i_idxprom11_kernel_3mm6_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_j_059_pop33_kernel_3mm5_out_data_out[31:0]};

    // i_idxprom11_kernel_3mm6_vt_select_31(BITSELECT,43)@3
    assign i_idxprom11_kernel_3mm6_vt_select_31_b = i_idxprom11_kernel_3mm6_sel_x_b[31:0];

    // i_idxprom11_kernel_3mm6_vt_join(BITJOIN,42)@3
    assign i_idxprom11_kernel_3mm6_vt_join_q = {c_i32_054_q, i_idxprom11_kernel_3mm6_vt_select_31_b};

    // i_arrayidx121_kernel_3mm0_dupName_3_trunc_sel_x(BITSELECT,102)@3
    assign i_arrayidx121_kernel_3mm0_dupName_3_trunc_sel_x_b = i_idxprom11_kernel_3mm6_vt_join_q[8:0];

    // i_arrayidx121_kernel_3mm0_narrow_x(BITSELECT,85)@3
    assign i_arrayidx121_kernel_3mm0_narrow_x_b = i_arrayidx121_kernel_3mm0_dupName_3_trunc_sel_x_b[6:0];

    // i_arrayidx121_kernel_3mm0_shift_join_x(BITJOIN,86)@3
    assign i_arrayidx121_kernel_3mm0_shift_join_x_q = {i_arrayidx121_kernel_3mm0_narrow_x_b, i_arrayidx121_kernel_3mm7_vt_const_1_q};

    // i_arrayidx121_kernel_3mm0_mult_multconst_x(CONSTANT,97)
    assign i_arrayidx121_kernel_3mm0_mult_multconst_x_q = $unsigned(3'b000);

    // valid_fanout_reg1(REG,109)@1 + 1
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

    // valid_fanout_reg5(REG,113)@1 + 1
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

    // i_llvm_fpga_push_i32_i_060_pop23108_push39_kernel_3mm13(BLACKBOX,67)@2
    // out out_feedback_out_39@20000000
    // out out_feedback_valid_out_39@20000000
    kernel_3mm_i_llvm_fpga_push_i32_i_060_pop23108_push39_0 thei_llvm_fpga_push_i32_i_060_pop23108_push39_kernel_3mm13 (
        .in_data_in(i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out),
        .in_exitcond13(redist0_i_exitcond13_kernel_3mm11_cmp_nsign_q_1_q),
        .in_feedback_stall_in_39(i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_feedback_stall_out_39),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_39(i_llvm_fpga_push_i32_i_060_pop23108_push39_kernel_3mm13_out_feedback_out_39),
        .out_feedback_valid_out_39(i_llvm_fpga_push_i32_i_060_pop23108_push39_kernel_3mm13_out_feedback_valid_out_39),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_sync_together84_aunroll_x_in_c0_eni13_1_tpl_1(DELAY,184)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together84_aunroll_x_in_c0_eni13_1_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together84_aunroll_x_in_c0_eni13_1_tpl_1_q <= $unsigned(in_c0_eni13_1_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3(BLACKBOX,57)@2
    // out out_feedback_stall_out_39@20000000
    kernel_3mm_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_0 thei_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3 (
        .in_data_in(redist4_sync_together84_aunroll_x_in_c0_eni13_1_tpl_1_q),
        .in_dir(redist6_sync_together84_aunroll_x_in_c0_eni13_2_tpl_1_q),
        .in_feedback_in_39(i_llvm_fpga_push_i32_i_060_pop23108_push39_kernel_3mm13_out_feedback_out_39),
        .in_feedback_valid_in_39(i_llvm_fpga_push_i32_i_060_pop23108_push39_kernel_3mm13_out_feedback_valid_out_39),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out),
        .out_feedback_stall_out_39(i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_feedback_stall_out_39),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom_kernel_3mm4_sel_x(BITSELECT,105)@2
    assign i_idxprom_kernel_3mm4_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out[31:0]};

    // i_idxprom_kernel_3mm4_vt_select_31(BITSELECT,47)@2
    assign i_idxprom_kernel_3mm4_vt_select_31_b = i_idxprom_kernel_3mm4_sel_x_b[31:0];

    // i_idxprom_kernel_3mm4_vt_join(BITJOIN,46)@2
    assign i_idxprom_kernel_3mm4_vt_join_q = {c_i32_054_q, i_idxprom_kernel_3mm4_vt_select_31_b};

    // i_arrayidx121_kernel_3mm0_dupName_0_trunc_sel_x(BITSELECT,99)@2
    assign i_arrayidx121_kernel_3mm0_dupName_0_trunc_sel_x_b = i_idxprom_kernel_3mm4_vt_join_q[8:0];

    // addsumAHighB_uid142_i_arrayidx121_kernel_3mm0_mult_x(ADD,141)@2
    assign addsumAHighB_uid142_i_arrayidx121_kernel_3mm0_mult_x_a = {1'b0, i_arrayidx121_kernel_3mm0_dupName_0_trunc_sel_x_b};
    assign addsumAHighB_uid142_i_arrayidx121_kernel_3mm0_mult_x_b = {3'b000, lowRangeB_uid140_i_arrayidx121_kernel_3mm0_mult_x_merged_bit_select_c};
    assign addsumAHighB_uid142_i_arrayidx121_kernel_3mm0_mult_x_o = $unsigned(addsumAHighB_uid142_i_arrayidx121_kernel_3mm0_mult_x_a) + $unsigned(addsumAHighB_uid142_i_arrayidx121_kernel_3mm0_mult_x_b);
    assign addsumAHighB_uid142_i_arrayidx121_kernel_3mm0_mult_x_q = addsumAHighB_uid142_i_arrayidx121_kernel_3mm0_mult_x_o[9:0];

    // lowRangeB_uid140_i_arrayidx121_kernel_3mm0_mult_x_merged_bit_select(BITSELECT,179)@2
    assign lowRangeB_uid140_i_arrayidx121_kernel_3mm0_mult_x_merged_bit_select_b = i_arrayidx121_kernel_3mm0_dupName_0_trunc_sel_x_b[1:0];
    assign lowRangeB_uid140_i_arrayidx121_kernel_3mm0_mult_x_merged_bit_select_c = i_arrayidx121_kernel_3mm0_dupName_0_trunc_sel_x_b[8:2];

    // add_uid143_i_arrayidx121_kernel_3mm0_mult_x(BITJOIN,142)@2
    assign add_uid143_i_arrayidx121_kernel_3mm0_mult_x_q = {addsumAHighB_uid142_i_arrayidx121_kernel_3mm0_mult_x_q, lowRangeB_uid140_i_arrayidx121_kernel_3mm0_mult_x_merged_bit_select_b};

    // sR_mergedSignalTM_uid148_i_arrayidx121_kernel_3mm0_mult_x(BITJOIN,147)@2
    assign sR_mergedSignalTM_uid148_i_arrayidx121_kernel_3mm0_mult_x_q = {add_uid143_i_arrayidx121_kernel_3mm0_mult_x_q, i_arrayidx121_kernel_3mm0_mult_multconst_x_q};

    // i_arrayidx121_kernel_3mm0_mult_extender_x(BITJOIN,96)@2
    assign i_arrayidx121_kernel_3mm0_mult_extender_x_q = {i_arrayidx121_kernel_3mm0_mult_multconst_x_q, sR_mergedSignalTM_uid148_i_arrayidx121_kernel_3mm0_mult_x_q};

    // i_arrayidx121_kernel_3mm0_dupName_1_trunc_sel_x(BITSELECT,100)@2
    assign i_arrayidx121_kernel_3mm0_dupName_1_trunc_sel_x_b = i_arrayidx121_kernel_3mm0_mult_extender_x_q[8:0];

    // redist24_i_arrayidx121_kernel_3mm0_dupName_1_trunc_sel_x_b_1(DELAY,204)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_arrayidx121_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist24_i_arrayidx121_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx121_kernel_3mm0_dupName_1_trunc_sel_x_b);
        end
    end

    // i_arrayidx121_kernel_3mm0_add_x(ADD,80)@3
    assign i_arrayidx121_kernel_3mm0_add_x_a = {1'b0, i_arrayidx121_kernel_3mm0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx121_kernel_3mm0_add_x_b = {1'b0, redist24_i_arrayidx121_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q};
    assign i_arrayidx121_kernel_3mm0_add_x_o = $unsigned(i_arrayidx121_kernel_3mm0_add_x_a) + $unsigned(i_arrayidx121_kernel_3mm0_add_x_b);
    assign i_arrayidx121_kernel_3mm0_add_x_q = i_arrayidx121_kernel_3mm0_add_x_o[9:0];

    // i_arrayidx121_kernel_3mm0_dupName_2_trunc_sel_x(BITSELECT,101)@3
    assign i_arrayidx121_kernel_3mm0_dupName_2_trunc_sel_x_b = i_arrayidx121_kernel_3mm0_add_x_q[8:0];

    // i_arrayidx121_kernel_3mm0_dupName_0_add_x(ADD,90)@3
    assign i_arrayidx121_kernel_3mm0_dupName_0_add_x_a = {1'b0, i_arrayidx121_kernel_3mm0_dupName_2_trunc_sel_x_b};
    assign i_arrayidx121_kernel_3mm0_dupName_0_add_x_b = {1'b0, i_arrayidx121_kernel_3mm0_shift_join_x_q};
    assign i_arrayidx121_kernel_3mm0_dupName_0_add_x_o = $unsigned(i_arrayidx121_kernel_3mm0_dupName_0_add_x_a) + $unsigned(i_arrayidx121_kernel_3mm0_dupName_0_add_x_b);
    assign i_arrayidx121_kernel_3mm0_dupName_0_add_x_q = i_arrayidx121_kernel_3mm0_dupName_0_add_x_o[9:0];

    // i_arrayidx121_kernel_3mm0_dupName_5_trunc_sel_x(BITSELECT,103)@3
    assign i_arrayidx121_kernel_3mm0_dupName_5_trunc_sel_x_b = i_arrayidx121_kernel_3mm0_dupName_0_add_x_q[8:0];

    // i_arrayidx121_kernel_3mm0_append_upper_bits_x(BITJOIN,81)@3
    assign i_arrayidx121_kernel_3mm0_append_upper_bits_x_q = {i_arrayidx121_kernel_3mm0_upper_bits_x_merged_bit_select_b, i_arrayidx121_kernel_3mm0_dupName_5_trunc_sel_x_b};

    // i_arrayidx121_kernel_3mm7_vt_select_63(BITSELECT,37)@3
    assign i_arrayidx121_kernel_3mm7_vt_select_63_b = i_arrayidx121_kernel_3mm0_append_upper_bits_x_q[63:2];

    // i_arrayidx121_kernel_3mm7_vt_const_1(CONSTANT,35)
    assign i_arrayidx121_kernel_3mm7_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx121_kernel_3mm7_vt_join(BITJOIN,36)@3
    assign i_arrayidx121_kernel_3mm7_vt_join_q = {i_arrayidx121_kernel_3mm7_vt_select_63_b, i_arrayidx121_kernel_3mm7_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_kernel_3mm2_kernel_3mm9(BLACKBOX,49)@3
    // in in_i_stall@20000000
    // out out_o_readdata@7
    // out out_o_stall@6
    // out out_o_valid@7
    // out out_unnamed_kernel_3mm2_kernel_3mm_avm_address@20000000
    // out out_unnamed_kernel_3mm2_kernel_3mm_avm_burstcount@20000000
    // out out_unnamed_kernel_3mm2_kernel_3mm_avm_byteenable@20000000
    // out out_unnamed_kernel_3mm2_kernel_3mm_avm_enable@20000000
    // out out_unnamed_kernel_3mm2_kernel_3mm_avm_read@20000000
    // out out_unnamed_kernel_3mm2_kernel_3mm_avm_write@20000000
    // out out_unnamed_kernel_3mm2_kernel_3mm_avm_writedata@20000000
    kernel_3mm_i_llvm_fpga_mem_unnamed_2_kernel_3mm0 thei_llvm_fpga_mem_unnamed_kernel_3mm2_kernel_3mm9 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx121_kernel_3mm7_vt_join_q),
        .in_i_dependence(i_llvm_fpga_pop_i1_memdep_phi_pop1788_pop35_kernel_3mm8_out_data_out),
        .in_i_predicate(GND_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg4_q),
        .in_unnamed_kernel_3mm2_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm2_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm2_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm2_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm2_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm2_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm2_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm2_kernel_3mm_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_kernel_3mm2_kernel_3mm9_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_kernel_3mm2_kernel_3mm_avm_address(i_llvm_fpga_mem_unnamed_kernel_3mm2_kernel_3mm9_out_unnamed_kernel_3mm2_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm2_kernel_3mm_avm_burstcount(i_llvm_fpga_mem_unnamed_kernel_3mm2_kernel_3mm9_out_unnamed_kernel_3mm2_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm2_kernel_3mm_avm_byteenable(i_llvm_fpga_mem_unnamed_kernel_3mm2_kernel_3mm9_out_unnamed_kernel_3mm2_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm2_kernel_3mm_avm_enable(i_llvm_fpga_mem_unnamed_kernel_3mm2_kernel_3mm9_out_unnamed_kernel_3mm2_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm2_kernel_3mm_avm_read(i_llvm_fpga_mem_unnamed_kernel_3mm2_kernel_3mm9_out_unnamed_kernel_3mm2_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm2_kernel_3mm_avm_write(i_llvm_fpga_mem_unnamed_kernel_3mm2_kernel_3mm9_out_unnamed_kernel_3mm2_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm2_kernel_3mm_avm_writedata(i_llvm_fpga_mem_unnamed_kernel_3mm2_kernel_3mm9_out_unnamed_kernel_3mm2_kernel_3mm_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,79)
    assign out_unnamed_kernel_3mm2_kernel_3mm_avm_address = i_llvm_fpga_mem_unnamed_kernel_3mm2_kernel_3mm9_out_unnamed_kernel_3mm2_kernel_3mm_avm_address;
    assign out_unnamed_kernel_3mm2_kernel_3mm_avm_enable = i_llvm_fpga_mem_unnamed_kernel_3mm2_kernel_3mm9_out_unnamed_kernel_3mm2_kernel_3mm_avm_enable;
    assign out_unnamed_kernel_3mm2_kernel_3mm_avm_read = i_llvm_fpga_mem_unnamed_kernel_3mm2_kernel_3mm9_out_unnamed_kernel_3mm2_kernel_3mm_avm_read;
    assign out_unnamed_kernel_3mm2_kernel_3mm_avm_write = i_llvm_fpga_mem_unnamed_kernel_3mm2_kernel_3mm9_out_unnamed_kernel_3mm2_kernel_3mm_avm_write;
    assign out_unnamed_kernel_3mm2_kernel_3mm_avm_writedata = i_llvm_fpga_mem_unnamed_kernel_3mm2_kernel_3mm9_out_unnamed_kernel_3mm2_kernel_3mm_avm_writedata;
    assign out_unnamed_kernel_3mm2_kernel_3mm_avm_byteenable = i_llvm_fpga_mem_unnamed_kernel_3mm2_kernel_3mm9_out_unnamed_kernel_3mm2_kernel_3mm_avm_byteenable;
    assign out_unnamed_kernel_3mm2_kernel_3mm_avm_burstcount = i_llvm_fpga_mem_unnamed_kernel_3mm2_kernel_3mm9_out_unnamed_kernel_3mm2_kernel_3mm_avm_burstcount;

    // redist23_sync_together84_aunroll_x_in_i_valid_5(DELAY,203)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_sync_together84_aunroll_x_in_i_valid_5_delay_0 <= '0;
            redist23_sync_together84_aunroll_x_in_i_valid_5_delay_1 <= '0;
            redist23_sync_together84_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist23_sync_together84_aunroll_x_in_i_valid_5_delay_0 <= $unsigned(redist22_sync_together84_aunroll_x_in_i_valid_2_q);
            redist23_sync_together84_aunroll_x_in_i_valid_5_delay_1 <= redist23_sync_together84_aunroll_x_in_i_valid_5_delay_0;
            redist23_sync_together84_aunroll_x_in_i_valid_5_q <= redist23_sync_together84_aunroll_x_in_i_valid_5_delay_1;
        end
    end

    // valid_fanout_reg0(REG,108)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist23_sync_together84_aunroll_x_in_i_valid_5_q);
        end
    end

    // redist14_sync_together84_aunroll_x_in_c0_eni13_7_tpl_6(DELAY,194)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist14_sync_together84_aunroll_x_in_c0_eni13_7_tpl_6 ( .xin(in_c0_eni13_7_tpl), .xout(redist14_sync_together84_aunroll_x_in_c0_eni13_7_tpl_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist13_sync_together84_aunroll_x_in_c0_eni13_6_tpl_6(DELAY,193)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist13_sync_together84_aunroll_x_in_c0_eni13_6_tpl_6 ( .xin(in_c0_eni13_6_tpl), .xout(redist13_sync_together84_aunroll_x_in_c0_eni13_6_tpl_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist12_sync_together84_aunroll_x_in_c0_eni13_5_tpl_6(DELAY,192)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist12_sync_together84_aunroll_x_in_c0_eni13_5_tpl_6 ( .xin(in_c0_eni13_5_tpl), .xout(redist12_sync_together84_aunroll_x_in_c0_eni13_5_tpl_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist10_sync_together84_aunroll_x_in_c0_eni13_3_tpl_6(DELAY,190)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together84_aunroll_x_in_c0_eni13_3_tpl_6_delay_0 <= '0;
            redist10_sync_together84_aunroll_x_in_c0_eni13_3_tpl_6_delay_1 <= '0;
            redist10_sync_together84_aunroll_x_in_c0_eni13_3_tpl_6_delay_2 <= '0;
            redist10_sync_together84_aunroll_x_in_c0_eni13_3_tpl_6_q <= '0;
        end
        else
        begin
            redist10_sync_together84_aunroll_x_in_c0_eni13_3_tpl_6_delay_0 <= $unsigned(redist9_sync_together84_aunroll_x_in_c0_eni13_3_tpl_2_q);
            redist10_sync_together84_aunroll_x_in_c0_eni13_3_tpl_6_delay_1 <= redist10_sync_together84_aunroll_x_in_c0_eni13_3_tpl_6_delay_0;
            redist10_sync_together84_aunroll_x_in_c0_eni13_3_tpl_6_delay_2 <= redist10_sync_together84_aunroll_x_in_c0_eni13_3_tpl_6_delay_1;
            redist10_sync_together84_aunroll_x_in_c0_eni13_3_tpl_6_q <= redist10_sync_together84_aunroll_x_in_c0_eni13_3_tpl_6_delay_2;
        end
    end

    // redist11_sync_together84_aunroll_x_in_c0_eni13_4_tpl_6(DELAY,191)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist11_sync_together84_aunroll_x_in_c0_eni13_4_tpl_6 ( .xin(in_c0_eni13_4_tpl), .xout(redist11_sync_together84_aunroll_x_in_c0_eni13_4_tpl_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist15_sync_together84_aunroll_x_in_c0_eni13_8_tpl_6(DELAY,195)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist15_sync_together84_aunroll_x_in_c0_eni13_8_tpl_6 ( .xin(in_c0_eni13_8_tpl), .xout(redist15_sync_together84_aunroll_x_in_c0_eni13_8_tpl_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_notEnable(LOGICAL,217)
    assign redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_notEnable_q = $unsigned(~ (VCC_q));

    // redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_nor(LOGICAL,218)
    assign redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_nor_q = ~ (redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_notEnable_q | redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_sticky_ena_q);

    // redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_mem_last(CONSTANT,214)
    assign redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_mem_last_q = $unsigned(3'b010);

    // redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_cmp(LOGICAL,215)
    assign redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_cmp_b = {1'b0, redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_rdcnt_q};
    assign redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_cmp_q = $unsigned(redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_mem_last_q == redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_cmp_b ? 1'b1 : 1'b0);

    // redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_cmpReg(REG,216)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_cmpReg_q <= $unsigned(redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_cmp_q);
        end
    end

    // redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_sticky_ena(REG,219)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_nor_q == 1'b1)
        begin
            redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_sticky_ena_q <= $unsigned(redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_cmpReg_q);
        end
    end

    // redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_enaAnd(LOGICAL,220)
    assign redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_enaAnd_q = redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_sticky_ena_q & VCC_q;

    // redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_rdcnt(COUNTER,212)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_rdcnt_i <= $unsigned(redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_rdcnt_q = redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_rdcnt_i[1:0];

    // redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_wraddr(REG,213)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_wraddr_q <= $unsigned(redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_rdcnt_q);
        end
    end

    // redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_mem(DUALMEM,211)
    assign redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_mem_ia = $unsigned(redist4_sync_together84_aunroll_x_in_c0_eni13_1_tpl_1_q);
    assign redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_mem_aa = redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_wraddr_q;
    assign redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_mem_ab = redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_rdcnt_q;
    assign redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_mem_reset0 = ~ (resetn);
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
    ) redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_mem_dmem (
        .clocken1(redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_mem_reset0),
        .clock1(clock),
        .address_a(redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_mem_aa),
        .data_a(redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_mem_ab),
        .q_b(redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_mem_iq),
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
    assign redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_mem_q = redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_mem_iq[31:0];

    // redist20_sync_together84_aunroll_x_in_c0_eni13_13_tpl_6(DELAY,200)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist20_sync_together84_aunroll_x_in_c0_eni13_13_tpl_6 ( .xin(in_c0_eni13_13_tpl), .xout(redist20_sync_together84_aunroll_x_in_c0_eni13_13_tpl_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist19_sync_together84_aunroll_x_in_c0_eni13_12_tpl_6(DELAY,199)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist19_sync_together84_aunroll_x_in_c0_eni13_12_tpl_6 ( .xin(in_c0_eni13_12_tpl), .xout(redist19_sync_together84_aunroll_x_in_c0_eni13_12_tpl_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist18_sync_together84_aunroll_x_in_c0_eni13_11_tpl_6(DELAY,198)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist18_sync_together84_aunroll_x_in_c0_eni13_11_tpl_6 ( .xin(in_c0_eni13_11_tpl), .xout(redist18_sync_together84_aunroll_x_in_c0_eni13_11_tpl_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist17_sync_together84_aunroll_x_in_c0_eni13_10_tpl_6(DELAY,197)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist17_sync_together84_aunroll_x_in_c0_eni13_10_tpl_6 ( .xin(in_c0_eni13_10_tpl), .xout(redist17_sync_together84_aunroll_x_in_c0_eni13_10_tpl_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist16_sync_together84_aunroll_x_in_c0_eni13_9_tpl_6(DELAY,196)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist16_sync_together84_aunroll_x_in_c0_eni13_9_tpl_6 ( .xin(in_c0_eni13_9_tpl), .xout(redist16_sync_together84_aunroll_x_in_c0_eni13_9_tpl_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg16(REG,124)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist23_sync_together84_aunroll_x_in_i_valid_5_q);
        end
    end

    // valid_fanout_reg17(REG,125)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg17_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(redist23_sync_together84_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp73111_push40_kernel_3mm30(BLACKBOX,65)@7
    // out out_feedback_out_40@20000000
    // out out_feedback_valid_out_40@20000000
    kernel_3mm_i_llvm_fpga_push_i1_notcmp73111_push40_0 thei_llvm_fpga_push_i1_notcmp73111_push40_kernel_3mm30 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp73111_pop40_kernel_3mm29_out_data_out),
        .in_exitcond13(redist3_i_exitcond13_kernel_3mm11_cmp_nsign_q_6_q),
        .in_feedback_stall_in_40(i_llvm_fpga_pop_i1_notcmp73111_pop40_kernel_3mm29_out_feedback_stall_out_40),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(),
        .out_feedback_out_40(i_llvm_fpga_push_i1_notcmp73111_push40_kernel_3mm30_out_feedback_out_40),
        .out_feedback_valid_out_40(i_llvm_fpga_push_i1_notcmp73111_push40_kernel_3mm30_out_feedback_valid_out_40),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_sync_together84_aunroll_x_in_c0_eni13_2_tpl_6(DELAY,188)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together84_aunroll_x_in_c0_eni13_2_tpl_6_delay_0 <= '0;
            redist8_sync_together84_aunroll_x_in_c0_eni13_2_tpl_6_delay_1 <= '0;
            redist8_sync_together84_aunroll_x_in_c0_eni13_2_tpl_6_delay_2 <= '0;
            redist8_sync_together84_aunroll_x_in_c0_eni13_2_tpl_6_q <= '0;
        end
        else
        begin
            redist8_sync_together84_aunroll_x_in_c0_eni13_2_tpl_6_delay_0 <= $unsigned(redist7_sync_together84_aunroll_x_in_c0_eni13_2_tpl_2_q);
            redist8_sync_together84_aunroll_x_in_c0_eni13_2_tpl_6_delay_1 <= redist8_sync_together84_aunroll_x_in_c0_eni13_2_tpl_6_delay_0;
            redist8_sync_together84_aunroll_x_in_c0_eni13_2_tpl_6_delay_2 <= redist8_sync_together84_aunroll_x_in_c0_eni13_2_tpl_6_delay_1;
            redist8_sync_together84_aunroll_x_in_c0_eni13_2_tpl_6_q <= redist8_sync_together84_aunroll_x_in_c0_eni13_2_tpl_6_delay_2;
        end
    end

    // i_llvm_fpga_pop_i1_notcmp73111_pop40_kernel_3mm29(BLACKBOX,56)@7
    // out out_feedback_stall_out_40@20000000
    kernel_3mm_i_llvm_fpga_pop_i1_notcmp73111_pop40_0 thei_llvm_fpga_pop_i1_notcmp73111_pop40_kernel_3mm29 (
        .in_data_in(redist15_sync_together84_aunroll_x_in_c0_eni13_8_tpl_6_q),
        .in_dir(redist8_sync_together84_aunroll_x_in_c0_eni13_2_tpl_6_q),
        .in_feedback_in_40(i_llvm_fpga_push_i1_notcmp73111_push40_kernel_3mm30_out_feedback_out_40),
        .in_feedback_valid_in_40(i_llvm_fpga_push_i1_notcmp73111_push40_kernel_3mm30_out_feedback_valid_out_40),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp73111_pop40_kernel_3mm29_out_data_out),
        .out_feedback_stall_out_40(i_llvm_fpga_pop_i1_notcmp73111_pop40_kernel_3mm29_out_feedback_stall_out_40),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg14(REG,122)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist23_sync_together84_aunroll_x_in_i_valid_5_q);
        end
    end

    // valid_fanout_reg15(REG,123)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist23_sync_together84_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi5_pop20100_push38_kernel_3mm28(BLACKBOX,63)@7
    // out out_feedback_out_38@20000000
    // out out_feedback_valid_out_38@20000000
    kernel_3mm_i_llvm_fpga_push_i1_memdep_phi5_pop20100_push38_0 thei_llvm_fpga_push_i1_memdep_phi5_pop20100_push38_kernel_3mm28 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi5_pop20100_pop38_kernel_3mm27_out_data_out),
        .in_exitcond13(redist3_i_exitcond13_kernel_3mm11_cmp_nsign_q_6_q),
        .in_feedback_stall_in_38(i_llvm_fpga_pop_i1_memdep_phi5_pop20100_pop38_kernel_3mm27_out_feedback_stall_out_38),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(),
        .out_feedback_out_38(i_llvm_fpga_push_i1_memdep_phi5_pop20100_push38_kernel_3mm28_out_feedback_out_38),
        .out_feedback_valid_out_38(i_llvm_fpga_push_i1_memdep_phi5_pop20100_push38_kernel_3mm28_out_feedback_valid_out_38),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi5_pop20100_pop38_kernel_3mm27(BLACKBOX,54)@7
    // out out_feedback_stall_out_38@20000000
    kernel_3mm_i_llvm_fpga_pop_i1_memdep_phi5_pop20100_pop38_0 thei_llvm_fpga_pop_i1_memdep_phi5_pop20100_pop38_kernel_3mm27 (
        .in_data_in(redist14_sync_together84_aunroll_x_in_c0_eni13_7_tpl_6_q),
        .in_dir(redist8_sync_together84_aunroll_x_in_c0_eni13_2_tpl_6_q),
        .in_feedback_in_38(i_llvm_fpga_push_i1_memdep_phi5_pop20100_push38_kernel_3mm28_out_feedback_out_38),
        .in_feedback_valid_in_38(i_llvm_fpga_push_i1_memdep_phi5_pop20100_push38_kernel_3mm28_out_feedback_valid_out_38),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi5_pop20100_pop38_kernel_3mm27_out_data_out),
        .out_feedback_stall_out_38(i_llvm_fpga_pop_i1_memdep_phi5_pop20100_pop38_kernel_3mm27_out_feedback_stall_out_38),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg12(REG,120)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist23_sync_together84_aunroll_x_in_i_valid_5_q);
        end
    end

    // valid_fanout_reg13(REG,121)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist23_sync_together84_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi3_pop1996_push37_kernel_3mm26(BLACKBOX,62)@7
    // out out_feedback_out_37@20000000
    // out out_feedback_valid_out_37@20000000
    kernel_3mm_i_llvm_fpga_push_i1_memdep_phi3_pop1996_push37_0 thei_llvm_fpga_push_i1_memdep_phi3_pop1996_push37_kernel_3mm26 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi3_pop1996_pop37_kernel_3mm25_out_data_out),
        .in_exitcond13(redist3_i_exitcond13_kernel_3mm11_cmp_nsign_q_6_q),
        .in_feedback_stall_in_37(i_llvm_fpga_pop_i1_memdep_phi3_pop1996_pop37_kernel_3mm25_out_feedback_stall_out_37),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(),
        .out_feedback_out_37(i_llvm_fpga_push_i1_memdep_phi3_pop1996_push37_kernel_3mm26_out_feedback_out_37),
        .out_feedback_valid_out_37(i_llvm_fpga_push_i1_memdep_phi3_pop1996_push37_kernel_3mm26_out_feedback_valid_out_37),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi3_pop1996_pop37_kernel_3mm25(BLACKBOX,53)@7
    // out out_feedback_stall_out_37@20000000
    kernel_3mm_i_llvm_fpga_pop_i1_memdep_phi3_pop1996_pop37_0 thei_llvm_fpga_pop_i1_memdep_phi3_pop1996_pop37_kernel_3mm25 (
        .in_data_in(redist13_sync_together84_aunroll_x_in_c0_eni13_6_tpl_6_q),
        .in_dir(redist8_sync_together84_aunroll_x_in_c0_eni13_2_tpl_6_q),
        .in_feedback_in_37(i_llvm_fpga_push_i1_memdep_phi3_pop1996_push37_kernel_3mm26_out_feedback_out_37),
        .in_feedback_valid_in_37(i_llvm_fpga_push_i1_memdep_phi3_pop1996_push37_kernel_3mm26_out_feedback_valid_out_37),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi3_pop1996_pop37_kernel_3mm25_out_data_out),
        .out_feedback_stall_out_37(i_llvm_fpga_pop_i1_memdep_phi3_pop1996_pop37_kernel_3mm25_out_feedback_stall_out_37),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg10(REG,118)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist23_sync_together84_aunroll_x_in_i_valid_5_q);
        end
    end

    // valid_fanout_reg11(REG,119)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist23_sync_together84_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi2_pop1892_push36_kernel_3mm24(BLACKBOX,61)@7
    // out out_feedback_out_36@20000000
    // out out_feedback_valid_out_36@20000000
    kernel_3mm_i_llvm_fpga_push_i1_memdep_phi2_pop1892_push36_0 thei_llvm_fpga_push_i1_memdep_phi2_pop1892_push36_kernel_3mm24 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi2_pop1892_pop36_kernel_3mm23_out_data_out),
        .in_exitcond13(redist3_i_exitcond13_kernel_3mm11_cmp_nsign_q_6_q),
        .in_feedback_stall_in_36(i_llvm_fpga_pop_i1_memdep_phi2_pop1892_pop36_kernel_3mm23_out_feedback_stall_out_36),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(),
        .out_feedback_out_36(i_llvm_fpga_push_i1_memdep_phi2_pop1892_push36_kernel_3mm24_out_feedback_out_36),
        .out_feedback_valid_out_36(i_llvm_fpga_push_i1_memdep_phi2_pop1892_push36_kernel_3mm24_out_feedback_valid_out_36),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi2_pop1892_pop36_kernel_3mm23(BLACKBOX,52)@7
    // out out_feedback_stall_out_36@20000000
    kernel_3mm_i_llvm_fpga_pop_i1_memdep_phi2_pop1892_pop36_0 thei_llvm_fpga_pop_i1_memdep_phi2_pop1892_pop36_kernel_3mm23 (
        .in_data_in(redist12_sync_together84_aunroll_x_in_c0_eni13_5_tpl_6_q),
        .in_dir(redist8_sync_together84_aunroll_x_in_c0_eni13_2_tpl_6_q),
        .in_feedback_in_36(i_llvm_fpga_push_i1_memdep_phi2_pop1892_push36_kernel_3mm24_out_feedback_out_36),
        .in_feedback_valid_in_36(i_llvm_fpga_push_i1_memdep_phi2_pop1892_push36_kernel_3mm24_out_feedback_valid_out_36),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi2_pop1892_pop36_kernel_3mm23_out_data_out),
        .out_feedback_stall_out_36(i_llvm_fpga_pop_i1_memdep_phi2_pop1892_pop36_kernel_3mm23_out_feedback_stall_out_36),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg8(REG,116)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist23_sync_together84_aunroll_x_in_i_valid_5_q);
        end
    end

    // valid_fanout_reg9(REG,117)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist23_sync_together84_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_push_i1_forked8184_push34_kernel_3mm22(BLACKBOX,60)@7
    // out out_feedback_out_34@20000000
    // out out_feedback_valid_out_34@20000000
    kernel_3mm_i_llvm_fpga_push_i1_forked8184_push34_0 thei_llvm_fpga_push_i1_forked8184_push34_kernel_3mm22 (
        .in_data_in(i_llvm_fpga_pop_i1_forked8184_pop34_kernel_3mm21_out_data_out),
        .in_exitcond13(redist3_i_exitcond13_kernel_3mm11_cmp_nsign_q_6_q),
        .in_feedback_stall_in_34(i_llvm_fpga_pop_i1_forked8184_pop34_kernel_3mm21_out_feedback_stall_out_34),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(),
        .out_feedback_out_34(i_llvm_fpga_push_i1_forked8184_push34_kernel_3mm22_out_feedback_out_34),
        .out_feedback_valid_out_34(i_llvm_fpga_push_i1_forked8184_push34_kernel_3mm22_out_feedback_valid_out_34),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_forked8184_pop34_kernel_3mm21(BLACKBOX,51)@7
    // out out_feedback_stall_out_34@20000000
    kernel_3mm_i_llvm_fpga_pop_i1_forked8184_pop34_0 thei_llvm_fpga_pop_i1_forked8184_pop34_kernel_3mm21 (
        .in_data_in(redist11_sync_together84_aunroll_x_in_c0_eni13_4_tpl_6_q),
        .in_dir(redist8_sync_together84_aunroll_x_in_c0_eni13_2_tpl_6_q),
        .in_feedback_in_34(i_llvm_fpga_push_i1_forked8184_push34_kernel_3mm22_out_feedback_out_34),
        .in_feedback_valid_in_34(i_llvm_fpga_push_i1_forked8184_push34_kernel_3mm22_out_feedback_valid_out_34),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(i_llvm_fpga_pop_i1_forked8184_pop34_kernel_3mm21_out_data_out),
        .out_feedback_stall_out_34(i_llvm_fpga_pop_i1_forked8184_pop34_kernel_3mm21_out_feedback_stall_out_34),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_notcmp68_kernel_3mm15(LOGICAL,70)@7
    assign i_notcmp68_kernel_3mm15_q = redist3_i_exitcond13_kernel_3mm11_cmp_nsign_q_6_q ^ VCC_q;

    // redist3_i_exitcond13_kernel_3mm11_cmp_nsign_q_6(DELAY,183)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_exitcond13_kernel_3mm11_cmp_nsign_q_6_delay_0 <= '0;
            redist3_i_exitcond13_kernel_3mm11_cmp_nsign_q_6_delay_1 <= '0;
            redist3_i_exitcond13_kernel_3mm11_cmp_nsign_q_6_q <= '0;
        end
        else
        begin
            redist3_i_exitcond13_kernel_3mm11_cmp_nsign_q_6_delay_0 <= $unsigned(redist2_i_exitcond13_kernel_3mm11_cmp_nsign_q_3_q);
            redist3_i_exitcond13_kernel_3mm11_cmp_nsign_q_6_delay_1 <= redist3_i_exitcond13_kernel_3mm11_cmp_nsign_q_6_delay_0;
            redist3_i_exitcond13_kernel_3mm11_cmp_nsign_q_6_q <= redist3_i_exitcond13_kernel_3mm11_cmp_nsign_q_6_delay_1;
        end
    end

    // redist27_i_llvm_fpga_pop_i1_memdep_phi_pop1788_pop35_kernel_3mm8_out_data_out_4(DELAY,207)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_llvm_fpga_pop_i1_memdep_phi_pop1788_pop35_kernel_3mm8_out_data_out_4_delay_0 <= '0;
            redist27_i_llvm_fpga_pop_i1_memdep_phi_pop1788_pop35_kernel_3mm8_out_data_out_4_delay_1 <= '0;
            redist27_i_llvm_fpga_pop_i1_memdep_phi_pop1788_pop35_kernel_3mm8_out_data_out_4_q <= '0;
        end
        else
        begin
            redist27_i_llvm_fpga_pop_i1_memdep_phi_pop1788_pop35_kernel_3mm8_out_data_out_4_delay_0 <= $unsigned(redist26_i_llvm_fpga_pop_i1_memdep_phi_pop1788_pop35_kernel_3mm8_out_data_out_1_q);
            redist27_i_llvm_fpga_pop_i1_memdep_phi_pop1788_pop35_kernel_3mm8_out_data_out_4_delay_1 <= redist27_i_llvm_fpga_pop_i1_memdep_phi_pop1788_pop35_kernel_3mm8_out_data_out_4_delay_0;
            redist27_i_llvm_fpga_pop_i1_memdep_phi_pop1788_pop35_kernel_3mm8_out_data_out_4_q <= redist27_i_llvm_fpga_pop_i1_memdep_phi_pop1788_pop35_kernel_3mm8_out_data_out_4_delay_1;
        end
    end

    // redist30_i_arrayidx121_kernel_3mm7_vt_join_q_4_notEnable(LOGICAL,255)
    assign redist30_i_arrayidx121_kernel_3mm7_vt_join_q_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist30_i_arrayidx121_kernel_3mm7_vt_join_q_4_nor(LOGICAL,256)
    assign redist30_i_arrayidx121_kernel_3mm7_vt_join_q_4_nor_q = ~ (redist30_i_arrayidx121_kernel_3mm7_vt_join_q_4_notEnable_q | redist30_i_arrayidx121_kernel_3mm7_vt_join_q_4_sticky_ena_q);

    // redist30_i_arrayidx121_kernel_3mm7_vt_join_q_4_cmpReg(REG,254)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_arrayidx121_kernel_3mm7_vt_join_q_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist30_i_arrayidx121_kernel_3mm7_vt_join_q_4_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist30_i_arrayidx121_kernel_3mm7_vt_join_q_4_sticky_ena(REG,257)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_arrayidx121_kernel_3mm7_vt_join_q_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist30_i_arrayidx121_kernel_3mm7_vt_join_q_4_nor_q == 1'b1)
        begin
            redist30_i_arrayidx121_kernel_3mm7_vt_join_q_4_sticky_ena_q <= $unsigned(redist30_i_arrayidx121_kernel_3mm7_vt_join_q_4_cmpReg_q);
        end
    end

    // redist30_i_arrayidx121_kernel_3mm7_vt_join_q_4_enaAnd(LOGICAL,258)
    assign redist30_i_arrayidx121_kernel_3mm7_vt_join_q_4_enaAnd_q = redist30_i_arrayidx121_kernel_3mm7_vt_join_q_4_sticky_ena_q & VCC_q;

    // redist30_i_arrayidx121_kernel_3mm7_vt_join_q_4_rdcnt(COUNTER,252)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_arrayidx121_kernel_3mm7_vt_join_q_4_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist30_i_arrayidx121_kernel_3mm7_vt_join_q_4_rdcnt_i <= $unsigned(redist30_i_arrayidx121_kernel_3mm7_vt_join_q_4_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist30_i_arrayidx121_kernel_3mm7_vt_join_q_4_rdcnt_q = redist30_i_arrayidx121_kernel_3mm7_vt_join_q_4_rdcnt_i[0:0];

    // redist30_i_arrayidx121_kernel_3mm7_vt_join_q_4_inputreg0(DELAY,250)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_arrayidx121_kernel_3mm7_vt_join_q_4_inputreg0_q <= '0;
        end
        else
        begin
            redist30_i_arrayidx121_kernel_3mm7_vt_join_q_4_inputreg0_q <= $unsigned(i_arrayidx121_kernel_3mm7_vt_join_q);
        end
    end

    // redist30_i_arrayidx121_kernel_3mm7_vt_join_q_4_wraddr(REG,253)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_arrayidx121_kernel_3mm7_vt_join_q_4_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist30_i_arrayidx121_kernel_3mm7_vt_join_q_4_wraddr_q <= $unsigned(redist30_i_arrayidx121_kernel_3mm7_vt_join_q_4_rdcnt_q);
        end
    end

    // redist30_i_arrayidx121_kernel_3mm7_vt_join_q_4_mem(DUALMEM,251)
    assign redist30_i_arrayidx121_kernel_3mm7_vt_join_q_4_mem_ia = $unsigned(redist30_i_arrayidx121_kernel_3mm7_vt_join_q_4_inputreg0_q);
    assign redist30_i_arrayidx121_kernel_3mm7_vt_join_q_4_mem_aa = redist30_i_arrayidx121_kernel_3mm7_vt_join_q_4_wraddr_q;
    assign redist30_i_arrayidx121_kernel_3mm7_vt_join_q_4_mem_ab = redist30_i_arrayidx121_kernel_3mm7_vt_join_q_4_rdcnt_q;
    assign redist30_i_arrayidx121_kernel_3mm7_vt_join_q_4_mem_reset0 = ~ (resetn);
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
    ) redist30_i_arrayidx121_kernel_3mm7_vt_join_q_4_mem_dmem (
        .clocken1(redist30_i_arrayidx121_kernel_3mm7_vt_join_q_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist30_i_arrayidx121_kernel_3mm7_vt_join_q_4_mem_reset0),
        .clock1(clock),
        .address_a(redist30_i_arrayidx121_kernel_3mm7_vt_join_q_4_mem_aa),
        .data_a(redist30_i_arrayidx121_kernel_3mm7_vt_join_q_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist30_i_arrayidx121_kernel_3mm7_vt_join_q_4_mem_ab),
        .q_b(redist30_i_arrayidx121_kernel_3mm7_vt_join_q_4_mem_iq),
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
    assign redist30_i_arrayidx121_kernel_3mm7_vt_join_q_4_mem_q = redist30_i_arrayidx121_kernel_3mm7_vt_join_q_4_mem_iq[63:0];

    // redist29_i_idxprom11_kernel_3mm6_vt_join_q_4_notEnable(LOGICAL,246)
    assign redist29_i_idxprom11_kernel_3mm6_vt_join_q_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist29_i_idxprom11_kernel_3mm6_vt_join_q_4_nor(LOGICAL,247)
    assign redist29_i_idxprom11_kernel_3mm6_vt_join_q_4_nor_q = ~ (redist29_i_idxprom11_kernel_3mm6_vt_join_q_4_notEnable_q | redist29_i_idxprom11_kernel_3mm6_vt_join_q_4_sticky_ena_q);

    // redist29_i_idxprom11_kernel_3mm6_vt_join_q_4_cmpReg(REG,245)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_i_idxprom11_kernel_3mm6_vt_join_q_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist29_i_idxprom11_kernel_3mm6_vt_join_q_4_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist29_i_idxprom11_kernel_3mm6_vt_join_q_4_sticky_ena(REG,248)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_i_idxprom11_kernel_3mm6_vt_join_q_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist29_i_idxprom11_kernel_3mm6_vt_join_q_4_nor_q == 1'b1)
        begin
            redist29_i_idxprom11_kernel_3mm6_vt_join_q_4_sticky_ena_q <= $unsigned(redist29_i_idxprom11_kernel_3mm6_vt_join_q_4_cmpReg_q);
        end
    end

    // redist29_i_idxprom11_kernel_3mm6_vt_join_q_4_enaAnd(LOGICAL,249)
    assign redist29_i_idxprom11_kernel_3mm6_vt_join_q_4_enaAnd_q = redist29_i_idxprom11_kernel_3mm6_vt_join_q_4_sticky_ena_q & VCC_q;

    // redist29_i_idxprom11_kernel_3mm6_vt_join_q_4_rdcnt(COUNTER,243)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_i_idxprom11_kernel_3mm6_vt_join_q_4_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist29_i_idxprom11_kernel_3mm6_vt_join_q_4_rdcnt_i <= $unsigned(redist29_i_idxprom11_kernel_3mm6_vt_join_q_4_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist29_i_idxprom11_kernel_3mm6_vt_join_q_4_rdcnt_q = redist29_i_idxprom11_kernel_3mm6_vt_join_q_4_rdcnt_i[0:0];

    // redist29_i_idxprom11_kernel_3mm6_vt_join_q_4_inputreg0(DELAY,241)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_i_idxprom11_kernel_3mm6_vt_join_q_4_inputreg0_q <= '0;
        end
        else
        begin
            redist29_i_idxprom11_kernel_3mm6_vt_join_q_4_inputreg0_q <= $unsigned(i_idxprom11_kernel_3mm6_vt_join_q);
        end
    end

    // redist29_i_idxprom11_kernel_3mm6_vt_join_q_4_wraddr(REG,244)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_i_idxprom11_kernel_3mm6_vt_join_q_4_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist29_i_idxprom11_kernel_3mm6_vt_join_q_4_wraddr_q <= $unsigned(redist29_i_idxprom11_kernel_3mm6_vt_join_q_4_rdcnt_q);
        end
    end

    // redist29_i_idxprom11_kernel_3mm6_vt_join_q_4_mem(DUALMEM,242)
    assign redist29_i_idxprom11_kernel_3mm6_vt_join_q_4_mem_ia = $unsigned(redist29_i_idxprom11_kernel_3mm6_vt_join_q_4_inputreg0_q);
    assign redist29_i_idxprom11_kernel_3mm6_vt_join_q_4_mem_aa = redist29_i_idxprom11_kernel_3mm6_vt_join_q_4_wraddr_q;
    assign redist29_i_idxprom11_kernel_3mm6_vt_join_q_4_mem_ab = redist29_i_idxprom11_kernel_3mm6_vt_join_q_4_rdcnt_q;
    assign redist29_i_idxprom11_kernel_3mm6_vt_join_q_4_mem_reset0 = ~ (resetn);
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
    ) redist29_i_idxprom11_kernel_3mm6_vt_join_q_4_mem_dmem (
        .clocken1(redist29_i_idxprom11_kernel_3mm6_vt_join_q_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist29_i_idxprom11_kernel_3mm6_vt_join_q_4_mem_reset0),
        .clock1(clock),
        .address_a(redist29_i_idxprom11_kernel_3mm6_vt_join_q_4_mem_aa),
        .data_a(redist29_i_idxprom11_kernel_3mm6_vt_join_q_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist29_i_idxprom11_kernel_3mm6_vt_join_q_4_mem_ab),
        .q_b(redist29_i_idxprom11_kernel_3mm6_vt_join_q_4_mem_iq),
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
    assign redist29_i_idxprom11_kernel_3mm6_vt_join_q_4_mem_q = redist29_i_idxprom11_kernel_3mm6_vt_join_q_4_mem_iq[63:0];

    // redist28_i_idxprom_kernel_3mm4_vt_join_q_5_notEnable(LOGICAL,237)
    assign redist28_i_idxprom_kernel_3mm4_vt_join_q_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist28_i_idxprom_kernel_3mm4_vt_join_q_5_nor(LOGICAL,238)
    assign redist28_i_idxprom_kernel_3mm4_vt_join_q_5_nor_q = ~ (redist28_i_idxprom_kernel_3mm4_vt_join_q_5_notEnable_q | redist28_i_idxprom_kernel_3mm4_vt_join_q_5_sticky_ena_q);

    // redist28_i_idxprom_kernel_3mm4_vt_join_q_5_mem_last(CONSTANT,234)
    assign redist28_i_idxprom_kernel_3mm4_vt_join_q_5_mem_last_q = $unsigned(3'b010);

    // redist28_i_idxprom_kernel_3mm4_vt_join_q_5_cmp(LOGICAL,235)
    assign redist28_i_idxprom_kernel_3mm4_vt_join_q_5_cmp_b = {1'b0, redist28_i_idxprom_kernel_3mm4_vt_join_q_5_rdcnt_q};
    assign redist28_i_idxprom_kernel_3mm4_vt_join_q_5_cmp_q = $unsigned(redist28_i_idxprom_kernel_3mm4_vt_join_q_5_mem_last_q == redist28_i_idxprom_kernel_3mm4_vt_join_q_5_cmp_b ? 1'b1 : 1'b0);

    // redist28_i_idxprom_kernel_3mm4_vt_join_q_5_cmpReg(REG,236)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_i_idxprom_kernel_3mm4_vt_join_q_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist28_i_idxprom_kernel_3mm4_vt_join_q_5_cmpReg_q <= $unsigned(redist28_i_idxprom_kernel_3mm4_vt_join_q_5_cmp_q);
        end
    end

    // redist28_i_idxprom_kernel_3mm4_vt_join_q_5_sticky_ena(REG,239)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_i_idxprom_kernel_3mm4_vt_join_q_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist28_i_idxprom_kernel_3mm4_vt_join_q_5_nor_q == 1'b1)
        begin
            redist28_i_idxprom_kernel_3mm4_vt_join_q_5_sticky_ena_q <= $unsigned(redist28_i_idxprom_kernel_3mm4_vt_join_q_5_cmpReg_q);
        end
    end

    // redist28_i_idxprom_kernel_3mm4_vt_join_q_5_enaAnd(LOGICAL,240)
    assign redist28_i_idxprom_kernel_3mm4_vt_join_q_5_enaAnd_q = redist28_i_idxprom_kernel_3mm4_vt_join_q_5_sticky_ena_q & VCC_q;

    // redist28_i_idxprom_kernel_3mm4_vt_join_q_5_rdcnt(COUNTER,232)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_i_idxprom_kernel_3mm4_vt_join_q_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist28_i_idxprom_kernel_3mm4_vt_join_q_5_rdcnt_i <= $unsigned(redist28_i_idxprom_kernel_3mm4_vt_join_q_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist28_i_idxprom_kernel_3mm4_vt_join_q_5_rdcnt_q = redist28_i_idxprom_kernel_3mm4_vt_join_q_5_rdcnt_i[1:0];

    // redist28_i_idxprom_kernel_3mm4_vt_join_q_5_wraddr(REG,233)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_i_idxprom_kernel_3mm4_vt_join_q_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist28_i_idxprom_kernel_3mm4_vt_join_q_5_wraddr_q <= $unsigned(redist28_i_idxprom_kernel_3mm4_vt_join_q_5_rdcnt_q);
        end
    end

    // redist28_i_idxprom_kernel_3mm4_vt_join_q_5_mem(DUALMEM,231)
    assign redist28_i_idxprom_kernel_3mm4_vt_join_q_5_mem_ia = $unsigned(i_idxprom_kernel_3mm4_vt_join_q);
    assign redist28_i_idxprom_kernel_3mm4_vt_join_q_5_mem_aa = redist28_i_idxprom_kernel_3mm4_vt_join_q_5_wraddr_q;
    assign redist28_i_idxprom_kernel_3mm4_vt_join_q_5_mem_ab = redist28_i_idxprom_kernel_3mm4_vt_join_q_5_rdcnt_q;
    assign redist28_i_idxprom_kernel_3mm4_vt_join_q_5_mem_reset0 = ~ (resetn);
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
    ) redist28_i_idxprom_kernel_3mm4_vt_join_q_5_mem_dmem (
        .clocken1(redist28_i_idxprom_kernel_3mm4_vt_join_q_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist28_i_idxprom_kernel_3mm4_vt_join_q_5_mem_reset0),
        .clock1(clock),
        .address_a(redist28_i_idxprom_kernel_3mm4_vt_join_q_5_mem_aa),
        .data_a(redist28_i_idxprom_kernel_3mm4_vt_join_q_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist28_i_idxprom_kernel_3mm4_vt_join_q_5_mem_ab),
        .q_b(redist28_i_idxprom_kernel_3mm4_vt_join_q_5_mem_iq),
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
    assign redist28_i_idxprom_kernel_3mm4_vt_join_q_5_mem_q = redist28_i_idxprom_kernel_3mm4_vt_join_q_5_mem_iq[63:0];

    // redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_notEnable(LOGICAL,227)
    assign redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_nor(LOGICAL,228)
    assign redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_nor_q = ~ (redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_notEnable_q | redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_sticky_ena_q);

    // redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_mem_last(CONSTANT,224)
    assign redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_mem_last_q = $unsigned(3'b010);

    // redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_cmp(LOGICAL,225)
    assign redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_cmp_b = {1'b0, redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_rdcnt_q};
    assign redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_cmp_q = $unsigned(redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_mem_last_q == redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_cmp_b ? 1'b1 : 1'b0);

    // redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_cmpReg(REG,226)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_cmpReg_q <= $unsigned(redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_cmp_q);
        end
    end

    // redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_sticky_ena(REG,229)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_nor_q == 1'b1)
        begin
            redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_sticky_ena_q <= $unsigned(redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_cmpReg_q);
        end
    end

    // redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_enaAnd(LOGICAL,230)
    assign redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_enaAnd_q = redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_sticky_ena_q & VCC_q;

    // redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_rdcnt(COUNTER,222)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_rdcnt_i <= $unsigned(redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_rdcnt_q = redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_rdcnt_i[1:0];

    // redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_wraddr(REG,223)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_wraddr_q <= $unsigned(redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_rdcnt_q);
        end
    end

    // redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_mem(DUALMEM,221)
    assign redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_mem_ia = $unsigned(i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out);
    assign redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_mem_aa = redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_wraddr_q;
    assign redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_mem_ab = redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_rdcnt_q;
    assign redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_mem_reset0 = ~ (resetn);
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
    ) redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_mem_dmem (
        .clocken1(redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_mem_reset0),
        .clock1(clock),
        .address_a(redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_mem_aa),
        .data_a(redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_mem_ab),
        .q_b(redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_mem_iq),
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
    assign redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_mem_q = redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_mem_iq[31:0];

    // sync_out_aunroll_x(GPOUT,106)@7
    assign out_c0_exi25_0_tpl = GND_q;
    assign out_c0_exi25_1_tpl = redist25_i_llvm_fpga_pop_i32_i_060_pop23108_pop39_kernel_3mm3_out_data_out_5_mem_q;
    assign out_c0_exi25_2_tpl = redist28_i_idxprom_kernel_3mm4_vt_join_q_5_mem_q;
    assign out_c0_exi25_3_tpl = redist29_i_idxprom11_kernel_3mm6_vt_join_q_4_mem_q;
    assign out_c0_exi25_4_tpl = redist30_i_arrayidx121_kernel_3mm7_vt_join_q_4_mem_q;
    assign out_c0_exi25_5_tpl = redist27_i_llvm_fpga_pop_i1_memdep_phi_pop1788_pop35_kernel_3mm8_out_data_out_4_q;
    assign out_c0_exi25_6_tpl = i_llvm_fpga_mem_unnamed_kernel_3mm2_kernel_3mm9_out_o_readdata;
    assign out_c0_exi25_7_tpl = redist3_i_exitcond13_kernel_3mm11_cmp_nsign_q_6_q;
    assign out_c0_exi25_8_tpl = i_notcmp68_kernel_3mm15_q;
    assign out_c0_exi25_9_tpl = i_llvm_fpga_pop_i1_forked8184_pop34_kernel_3mm21_out_data_out;
    assign out_c0_exi25_10_tpl = i_llvm_fpga_pop_i1_memdep_phi2_pop1892_pop36_kernel_3mm23_out_data_out;
    assign out_c0_exi25_11_tpl = i_llvm_fpga_pop_i1_memdep_phi3_pop1996_pop37_kernel_3mm25_out_data_out;
    assign out_c0_exi25_12_tpl = i_llvm_fpga_pop_i1_memdep_phi5_pop20100_pop38_kernel_3mm27_out_data_out;
    assign out_c0_exi25_13_tpl = i_llvm_fpga_pop_i1_notcmp73111_pop40_kernel_3mm29_out_data_out;
    assign out_c0_exi25_14_tpl = redist16_sync_together84_aunroll_x_in_c0_eni13_9_tpl_6_q;
    assign out_c0_exi25_15_tpl = redist17_sync_together84_aunroll_x_in_c0_eni13_10_tpl_6_q;
    assign out_c0_exi25_16_tpl = redist18_sync_together84_aunroll_x_in_c0_eni13_11_tpl_6_q;
    assign out_c0_exi25_17_tpl = redist19_sync_together84_aunroll_x_in_c0_eni13_12_tpl_6_q;
    assign out_c0_exi25_18_tpl = redist20_sync_together84_aunroll_x_in_c0_eni13_13_tpl_6_q;
    assign out_c0_exi25_19_tpl = redist5_sync_together84_aunroll_x_in_c0_eni13_1_tpl_6_mem_q;
    assign out_c0_exi25_20_tpl = redist15_sync_together84_aunroll_x_in_c0_eni13_8_tpl_6_q;
    assign out_c0_exi25_21_tpl = redist11_sync_together84_aunroll_x_in_c0_eni13_4_tpl_6_q;
    assign out_c0_exi25_22_tpl = redist10_sync_together84_aunroll_x_in_c0_eni13_3_tpl_6_q;
    assign out_c0_exi25_23_tpl = redist12_sync_together84_aunroll_x_in_c0_eni13_5_tpl_6_q;
    assign out_c0_exi25_24_tpl = redist13_sync_together84_aunroll_x_in_c0_eni13_6_tpl_6_q;
    assign out_c0_exi25_25_tpl = redist14_sync_together84_aunroll_x_in_c0_eni13_7_tpl_6_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_kernel_3mm0 = GND_q;

endmodule
