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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm0
// Created for function/kernel kernel_3mm
// SystemVerilog created on Fri Apr  7 18:25:08 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_i_sfc_logic_s_c0_in_for_body40000ter44852_kernel_3mm0 (
    input wire [31:0] in_unnamed_kernel_3mm8_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm8_kernel_3mm_avm_writeack,
    input wire [0:0] in_unnamed_kernel_3mm8_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm8_kernel_3mm_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [31:0] in_unnamed_kernel_3mm9_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm9_kernel_3mm_avm_writeack,
    input wire [0:0] in_unnamed_kernel_3mm9_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm9_kernel_3mm_avm_readdatavalid,
    output wire [31:0] out_unnamed_kernel_3mm8_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm8_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm8_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm8_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm8_kernel_3mm_avm_writedata,
    output wire [3:0] out_unnamed_kernel_3mm8_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm8_kernel_3mm_avm_burstcount,
    output wire [31:0] out_unnamed_kernel_3mm9_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm9_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm9_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm9_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm9_kernel_3mm_avm_writedata,
    output wire [3:0] out_unnamed_kernel_3mm9_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm9_kernel_3mm_avm_burstcount,
    output wire [0:0] out_c0_exi21494_0_tpl,
    output wire [0:0] out_c0_exi21494_1_tpl,
    output wire [31:0] out_c0_exi21494_2_tpl,
    output wire [0:0] out_c0_exi21494_3_tpl,
    output wire [0:0] out_c0_exi21494_4_tpl,
    output wire [0:0] out_c0_exi21494_5_tpl,
    output wire [0:0] out_c0_exi21494_6_tpl,
    output wire [0:0] out_c0_exi21494_7_tpl,
    output wire [0:0] out_c0_exi21494_8_tpl,
    output wire [63:0] out_c0_exi21494_9_tpl,
    output wire [0:0] out_c0_exi21494_10_tpl,
    output wire [0:0] out_c0_exi21494_11_tpl,
    output wire [0:0] out_c0_exi21494_12_tpl,
    output wire [0:0] out_c0_exi21494_13_tpl,
    output wire [0:0] out_c0_exi21494_14_tpl,
    output wire [31:0] out_c0_exi21494_15_tpl,
    output wire [0:0] out_c0_exi21494_16_tpl,
    output wire [0:0] out_c0_exi21494_17_tpl,
    output wire [0:0] out_c0_exi21494_18_tpl,
    output wire [0:0] out_c0_exi21494_19_tpl,
    output wire [0:0] out_c0_exi21494_20_tpl,
    output wire [0:0] out_c0_exi21494_21_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_kernel_3mm0,
    input wire [0:0] in_c0_eni26_0_tpl,
    input wire [0:0] in_c0_eni26_1_tpl,
    input wire [63:0] in_c0_eni26_2_tpl,
    input wire [63:0] in_c0_eni26_3_tpl,
    input wire [31:0] in_c0_eni26_4_tpl,
    input wire [0:0] in_c0_eni26_5_tpl,
    input wire [0:0] in_c0_eni26_6_tpl,
    input wire [0:0] in_c0_eni26_7_tpl,
    input wire [0:0] in_c0_eni26_8_tpl,
    input wire [0:0] in_c0_eni26_9_tpl,
    input wire [31:0] in_c0_eni26_10_tpl,
    input wire [0:0] in_c0_eni26_11_tpl,
    input wire [0:0] in_c0_eni26_12_tpl,
    input wire [0:0] in_c0_eni26_13_tpl,
    input wire [63:0] in_c0_eni26_14_tpl,
    input wire [0:0] in_c0_eni26_15_tpl,
    input wire [0:0] in_c0_eni26_16_tpl,
    input wire [0:0] in_c0_eni26_17_tpl,
    input wire [0:0] in_c0_eni26_18_tpl,
    input wire [0:0] in_c0_eni26_19_tpl,
    input wire [31:0] in_c0_eni26_20_tpl,
    input wire [0:0] in_c0_eni26_21_tpl,
    input wire [0:0] in_c0_eni26_22_tpl,
    input wire [0:0] in_c0_eni26_23_tpl,
    input wire [0:0] in_c0_eni26_24_tpl,
    input wire [0:0] in_c0_eni26_25_tpl,
    input wire [0:0] in_c0_eni26_26_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [1:0] c_i2_199_q;
    wire [31:0] c_i32_0101_q;
    wire [31:0] c_i32_1102_q;
    wire [4:0] c_i5_1105_q;
    wire [4:0] c_i5_8103_q;
    wire [63:0] c_kernel_3mm_C_local_pmem_q;
    wire [63:0] c_kernel_3mm_D_local_pmem_q;
    wire [32:0] i_add57_kernel_3mm24_a;
    wire [32:0] i_add57_kernel_3mm24_b;
    logic [32:0] i_add57_kernel_3mm24_o;
    wire [32:0] i_add57_kernel_3mm24_q;
    wire [1:0] i_arrayidx515_kernel_3mm16_vt_const_1_q;
    wire [63:0] i_arrayidx515_kernel_3mm16_vt_join_q;
    wire [61:0] i_arrayidx515_kernel_3mm16_vt_select_63_b;
    wire [63:0] i_arrayidx556_kernel_3mm20_vt_join_q;
    wire [61:0] i_arrayidx556_kernel_3mm20_vt_select_63_b;
    wire [1:0] i_cleanups_shl44_kernel_3mm5_vt_join_q;
    wire [0:0] i_cleanups_shl44_kernel_3mm5_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor46_kernel_3mm4_q;
    wire [5:0] i_fpga_indvars_iv_next9_kernel_3mm36_a;
    wire [5:0] i_fpga_indvars_iv_next9_kernel_3mm36_b;
    logic [5:0] i_fpga_indvars_iv_next9_kernel_3mm36_o;
    wire [5:0] i_fpga_indvars_iv_next9_kernel_3mm36_q;
    wire [63:0] i_idxprom50_kernel_3mm13_vt_join_q;
    wire [31:0] i_idxprom50_kernel_3mm13_vt_select_31_b;
    wire [32:0] i_inc59_kernel_3mm26_a;
    wire [32:0] i_inc59_kernel_3mm26_b;
    logic [32:0] i_inc59_kernel_3mm26_o;
    wire [32:0] i_inc59_kernel_3mm26_q;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_3mm8_kernel_3mm17_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_3mm8_kernel_3mm17_out_unnamed_kernel_3mm8_kernel_3mm_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm8_kernel_3mm17_out_unnamed_kernel_3mm8_kernel_3mm_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_kernel_3mm8_kernel_3mm17_out_unnamed_kernel_3mm8_kernel_3mm_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm8_kernel_3mm17_out_unnamed_kernel_3mm8_kernel_3mm_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm8_kernel_3mm17_out_unnamed_kernel_3mm8_kernel_3mm_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm8_kernel_3mm17_out_unnamed_kernel_3mm8_kernel_3mm_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_3mm8_kernel_3mm17_out_unnamed_kernel_3mm8_kernel_3mm_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_3mm9_kernel_3mm21_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_3mm9_kernel_3mm21_out_unnamed_kernel_3mm9_kernel_3mm_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm9_kernel_3mm21_out_unnamed_kernel_3mm9_kernel_3mm_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_kernel_3mm9_kernel_3mm21_out_unnamed_kernel_3mm9_kernel_3mm_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm9_kernel_3mm21_out_unnamed_kernel_3mm9_kernel_3mm_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm9_kernel_3mm21_out_unnamed_kernel_3mm9_kernel_3mm_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm9_kernel_3mm21_out_unnamed_kernel_3mm9_kernel_3mm_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_3mm9_kernel_3mm21_out_unnamed_kernel_3mm9_kernel_3mm_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_forked8186_pop67_kernel_3mm39_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_forked8186_pop67_kernel_3mm39_out_feedback_stall_out_67;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_126_pop77_kernel_3mm55_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_126_pop77_kernel_3mm55_out_feedback_stall_out_77;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop1894_pop69_kernel_3mm43_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop1894_pop69_kernel_3mm43_out_feedback_stall_out_69;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop1998_pop70_kernel_3mm45_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop1998_pop70_kernel_3mm45_out_feedback_stall_out_70;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi5_pop20102_pop71_kernel_3mm47_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi5_pop20102_pop71_kernel_3mm47_out_feedback_stall_out_71;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop1790_pop68_kernel_3mm41_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop1790_pop68_kernel_3mm41_out_feedback_stall_out_68;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp68125_pop76_kernel_3mm53_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp68125_pop76_kernel_3mm53_out_feedback_stall_out_76;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp73113_pop73_kernel_3mm51_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp73113_pop73_kernel_3mm51_out_feedback_stall_out_73;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups43_pop66_kernel_3mm2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups43_pop66_kernel_3mm2_out_feedback_stall_out_66;
    wire [1:0] i_llvm_fpga_pop_i2_initerations38_pop65_kernel_3mm7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations38_pop65_kernel_3mm7_out_feedback_stall_out_65;
    wire [31:0] i_llvm_fpga_pop_i32_i_060_pop23110_pop72_kernel_3mm49_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_060_pop23110_pop72_kernel_3mm49_out_feedback_stall_out_72;
    wire [31:0] i_llvm_fpga_pop_i32_k_153_pop64_kernel_3mm12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_k_153_pop64_kernel_3mm12_out_feedback_stall_out_64;
    wire [31:0] i_llvm_fpga_pop_i32_tmp40_054_pop63_kernel_3mm23_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_tmp40_054_pop63_kernel_3mm23_out_feedback_stall_out_63;
    wire [4:0] i_llvm_fpga_pop_i5_fpga_indvars_iv8_pop62_kernel_3mm28_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i5_fpga_indvars_iv8_pop62_kernel_3mm28_out_feedback_stall_out_62;
    wire [63:0] i_llvm_fpga_pop_i64_idxprom11122_pop75_kernel_3mm18_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i64_idxprom11122_pop75_kernel_3mm18_out_feedback_stall_out_75;
    wire [63:0] i_llvm_fpga_pop_i64_idxprom120_pop74_kernel_3mm14_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i64_idxprom120_pop74_kernel_3mm14_out_feedback_stall_out_74;
    wire [63:0] i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out;
    wire [0:0] i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_feedback_stall_out_78;
    wire [0:0] i_llvm_fpga_push_i1_forked8186_push67_kernel_3mm40_out_feedback_out_67;
    wire [0:0] i_llvm_fpga_push_i1_forked8186_push67_kernel_3mm40_out_feedback_valid_out_67;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration42_kernel_3mm11_out_feedback_out_7;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration42_kernel_3mm11_out_feedback_valid_out_7;
    wire [0:0] i_llvm_fpga_push_i1_memdep_126_push77_kernel_3mm56_out_feedback_out_77;
    wire [0:0] i_llvm_fpga_push_i1_memdep_126_push77_kernel_3mm56_out_feedback_valid_out_77;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1894_push69_kernel_3mm44_out_feedback_out_69;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1894_push69_kernel_3mm44_out_feedback_valid_out_69;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_pop1998_push70_kernel_3mm46_out_feedback_out_70;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_pop1998_push70_kernel_3mm46_out_feedback_valid_out_70;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi5_pop20102_push71_kernel_3mm48_out_feedback_out_71;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi5_pop20102_push71_kernel_3mm48_out_feedback_valid_out_71;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop1790_push68_kernel_3mm42_out_feedback_out_68;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop1790_push68_kernel_3mm42_out_feedback_valid_out_68;
    wire [0:0] i_llvm_fpga_push_i1_notcmp68125_push76_kernel_3mm54_out_feedback_out_76;
    wire [0:0] i_llvm_fpga_push_i1_notcmp68125_push76_kernel_3mm54_out_feedback_valid_out_76;
    wire [0:0] i_llvm_fpga_push_i1_notcmp73113_push73_kernel_3mm52_out_feedback_out_73;
    wire [0:0] i_llvm_fpga_push_i1_notcmp73113_push73_kernel_3mm52_out_feedback_valid_out_73;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond50_kernel_3mm32_out_feedback_out_8;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond50_kernel_3mm32_out_feedback_valid_out_8;
    wire [7:0] i_llvm_fpga_push_i2_cleanups43_push66_kernel_3mm35_out_feedback_out_66;
    wire [0:0] i_llvm_fpga_push_i2_cleanups43_push66_kernel_3mm35_out_feedback_valid_out_66;
    wire [7:0] i_llvm_fpga_push_i2_initerations38_push65_kernel_3mm9_out_feedback_out_65;
    wire [0:0] i_llvm_fpga_push_i2_initerations38_push65_kernel_3mm9_out_feedback_valid_out_65;
    wire [31:0] i_llvm_fpga_push_i32_i_060_pop23110_push72_kernel_3mm50_out_feedback_out_72;
    wire [0:0] i_llvm_fpga_push_i32_i_060_pop23110_push72_kernel_3mm50_out_feedback_valid_out_72;
    wire [31:0] i_llvm_fpga_push_i32_k_153_push64_kernel_3mm27_out_feedback_out_64;
    wire [0:0] i_llvm_fpga_push_i32_k_153_push64_kernel_3mm27_out_feedback_valid_out_64;
    wire [31:0] i_llvm_fpga_push_i32_tmp40_054_push63_kernel_3mm25_out_feedback_out_63;
    wire [0:0] i_llvm_fpga_push_i32_tmp40_054_push63_kernel_3mm25_out_feedback_valid_out_63;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv8_push62_kernel_3mm37_out_feedback_out_62;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv8_push62_kernel_3mm37_out_feedback_valid_out_62;
    wire [63:0] i_llvm_fpga_push_i64_idxprom11122_push75_kernel_3mm19_out_feedback_out_75;
    wire [0:0] i_llvm_fpga_push_i64_idxprom11122_push75_kernel_3mm19_out_feedback_valid_out_75;
    wire [63:0] i_llvm_fpga_push_i64_idxprom120_push74_kernel_3mm15_out_feedback_out_74;
    wire [0:0] i_llvm_fpga_push_i64_idxprom120_push74_kernel_3mm15_out_feedback_valid_out_74;
    wire [63:0] i_llvm_fpga_push_p69i32_arrayidx444127_push78_kernel_3mm58_out_feedback_out_78;
    wire [0:0] i_llvm_fpga_push_p69i32_arrayidx444127_push78_kernel_3mm58_out_feedback_valid_out_78;
    wire [0:0] i_masked49_kernel_3mm38_qi;
    reg [0:0] i_masked49_kernel_3mm38_q;
    wire [0:0] i_next_cleanups48_kernel_3mm34_s;
    reg [1:0] i_next_cleanups48_kernel_3mm34_q;
    wire [1:0] i_next_initerations39_kernel_3mm8_vt_join_q;
    wire [0:0] i_next_initerations39_kernel_3mm8_vt_select_0_b;
    wire [0:0] i_notcmp36_kernel_3mm31_q;
    wire [0:0] i_or47_kernel_3mm33_q;
    wire [31:0] bgTrunc_i_add57_kernel_3mm24_sel_x_b;
    wire [4:0] bgTrunc_i_fpga_indvars_iv_next9_kernel_3mm36_sel_x_b;
    wire [31:0] bgTrunc_i_inc59_kernel_3mm26_sel_x_b;
    wire [63:0] bgTrunc_i_mul56_kernel_3mm22_sel_x_in;
    wire [31:0] bgTrunc_i_mul56_kernel_3mm22_sel_x_b;
    wire [9:0] i_arrayidx515_kernel_3mm0_add_x_a;
    wire [9:0] i_arrayidx515_kernel_3mm0_add_x_b;
    logic [9:0] i_arrayidx515_kernel_3mm0_add_x_o;
    wire [9:0] i_arrayidx515_kernel_3mm0_add_x_q;
    wire [63:0] i_arrayidx515_kernel_3mm0_append_upper_bits_x_q;
    wire [6:0] i_arrayidx515_kernel_3mm0_narrow_x_b;
    wire [8:0] i_arrayidx515_kernel_3mm0_shift_join_x_q;
    wire [9:0] i_arrayidx515_kernel_3mm0_dupName_0_add_x_a;
    wire [9:0] i_arrayidx515_kernel_3mm0_dupName_0_add_x_b;
    logic [9:0] i_arrayidx515_kernel_3mm0_dupName_0_add_x_o;
    wire [9:0] i_arrayidx515_kernel_3mm0_dupName_0_add_x_q;
    wire [17:0] i_arrayidx515_kernel_3mm0_mult_extender_x_q;
    wire [2:0] i_arrayidx515_kernel_3mm0_mult_multconst_x_q;
    wire [8:0] i_arrayidx515_kernel_3mm0_dupName_0_trunc_sel_x_b;
    wire [8:0] i_arrayidx515_kernel_3mm0_dupName_1_trunc_sel_x_b;
    wire [8:0] i_arrayidx515_kernel_3mm0_dupName_2_trunc_sel_x_b;
    wire [8:0] i_arrayidx515_kernel_3mm0_dupName_3_trunc_sel_x_b;
    wire [8:0] i_arrayidx515_kernel_3mm0_dupName_5_trunc_sel_x_b;
    wire [9:0] i_arrayidx556_kernel_3mm0_add_x_a;
    wire [9:0] i_arrayidx556_kernel_3mm0_add_x_b;
    logic [9:0] i_arrayidx556_kernel_3mm0_add_x_o;
    wire [9:0] i_arrayidx556_kernel_3mm0_add_x_q;
    wire [63:0] i_arrayidx556_kernel_3mm0_append_upper_bits_x_q;
    wire [6:0] i_arrayidx556_kernel_3mm0_narrow_x_b;
    wire [8:0] i_arrayidx556_kernel_3mm0_shift_join_x_q;
    wire [9:0] i_arrayidx556_kernel_3mm0_dupName_0_add_x_a;
    wire [9:0] i_arrayidx556_kernel_3mm0_dupName_0_add_x_b;
    logic [9:0] i_arrayidx556_kernel_3mm0_dupName_0_add_x_o;
    wire [9:0] i_arrayidx556_kernel_3mm0_dupName_0_add_x_q;
    wire [17:0] i_arrayidx556_kernel_3mm0_mult_extender_x_q;
    wire [8:0] i_arrayidx556_kernel_3mm0_dupName_1_trunc_sel_x_b;
    wire [8:0] i_arrayidx556_kernel_3mm0_dupName_2_trunc_sel_x_b;
    wire [8:0] i_arrayidx556_kernel_3mm0_dupName_3_trunc_sel_x_b;
    wire [8:0] i_arrayidx556_kernel_3mm0_dupName_5_trunc_sel_x_b;
    wire [0:0] i_first_cleanup45_kernel_3mm3_sel_x_b;
    wire [63:0] i_idxprom50_kernel_3mm13_sel_x_b;
    wire [0:0] i_last_initeration41_kernel_3mm10_sel_x_b;
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
    (* dont_merge *) reg [0:0] valid_fanout_reg21_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg22_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg23_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg24_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg25_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg26_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg27_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg28_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg29_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg30_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg31_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg32_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg33_q;
    wire [0:0] i_exitcond10_kernel_3mm29_cmp_nsign_q;
    wire [63:0] i_mul56_kernel_3mm22_sums_join_0_q;
    wire [50:0] i_mul56_kernel_3mm22_sums_align_1_q;
    wire [50:0] i_mul56_kernel_3mm22_sums_align_1_qint;
    wire [64:0] i_mul56_kernel_3mm22_sums_result_add_0_0_a;
    wire [64:0] i_mul56_kernel_3mm22_sums_result_add_0_0_b;
    logic [64:0] i_mul56_kernel_3mm22_sums_result_add_0_0_o;
    wire [64:0] i_mul56_kernel_3mm22_sums_result_add_0_0_q;
    wire [9:0] addsumAHighB_uid266_i_arrayidx515_kernel_3mm0_mult_x_a;
    wire [9:0] addsumAHighB_uid266_i_arrayidx515_kernel_3mm0_mult_x_b;
    logic [9:0] addsumAHighB_uid266_i_arrayidx515_kernel_3mm0_mult_x_o;
    wire [9:0] addsumAHighB_uid266_i_arrayidx515_kernel_3mm0_mult_x_q;
    wire [11:0] add_uid267_i_arrayidx515_kernel_3mm0_mult_x_q;
    wire [14:0] sR_mergedSignalTM_uid272_i_arrayidx515_kernel_3mm0_mult_x_q;
    wire [1:0] lowRangeB_uid310_i_arrayidx556_kernel_3mm0_mult_x_in;
    wire [1:0] lowRangeB_uid310_i_arrayidx556_kernel_3mm0_mult_x_b;
    wire [6:0] highBBits_uid311_i_arrayidx556_kernel_3mm0_mult_x_b;
    wire [9:0] addsumAHighB_uid312_i_arrayidx556_kernel_3mm0_mult_x_a;
    wire [9:0] addsumAHighB_uid312_i_arrayidx556_kernel_3mm0_mult_x_b;
    logic [9:0] addsumAHighB_uid312_i_arrayidx556_kernel_3mm0_mult_x_o;
    wire [9:0] addsumAHighB_uid312_i_arrayidx556_kernel_3mm0_mult_x_q;
    wire [11:0] add_uid313_i_arrayidx556_kernel_3mm0_mult_x_q;
    wire [14:0] sR_mergedSignalTM_uid318_i_arrayidx556_kernel_3mm0_mult_x_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid352_i_cleanups_shl44_kernel_3mm0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid352_i_cleanups_shl44_kernel_3mm0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid353_i_cleanups_shl44_kernel_3mm0_shift_x_q;
    wire [0:0] leftShiftStage0_uid355_i_cleanups_shl44_kernel_3mm0_shift_x_s;
    reg [1:0] leftShiftStage0_uid355_i_cleanups_shl44_kernel_3mm0_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid359_i_next_initerations39_kernel_3mm0_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid361_i_next_initerations39_kernel_3mm0_shift_x_q;
    wire [0:0] rightShiftStage0_uid363_i_next_initerations39_kernel_3mm0_shift_x_s;
    reg [1:0] rightShiftStage0_uid363_i_next_initerations39_kernel_3mm0_shift_x_q;
    wire i_mul56_kernel_3mm22_im0_cma_reset;
    wire [13:0] i_mul56_kernel_3mm22_im0_cma_a0;
    wire [13:0] i_mul56_kernel_3mm22_im0_cma_c0;
    wire [27:0] i_mul56_kernel_3mm22_im0_cma_s0;
    wire [27:0] i_mul56_kernel_3mm22_im0_cma_qq;
    wire [27:0] i_mul56_kernel_3mm22_im0_cma_q;
    wire i_mul56_kernel_3mm22_im0_cma_ena0;
    wire i_mul56_kernel_3mm22_im0_cma_ena1;
    wire i_mul56_kernel_3mm22_im0_cma_ena2;
    wire i_mul56_kernel_3mm22_im8_cma_reset;
    wire [17:0] i_mul56_kernel_3mm22_im8_cma_a0;
    wire [17:0] i_mul56_kernel_3mm22_im8_cma_c0;
    wire [35:0] i_mul56_kernel_3mm22_im8_cma_s0;
    wire [35:0] i_mul56_kernel_3mm22_im8_cma_qq;
    wire [35:0] i_mul56_kernel_3mm22_im8_cma_q;
    wire i_mul56_kernel_3mm22_im8_cma_ena0;
    wire i_mul56_kernel_3mm22_im8_cma_ena1;
    wire i_mul56_kernel_3mm22_im8_cma_ena2;
    wire i_mul56_kernel_3mm22_ma3_cma_reset;
    wire [13:0] i_mul56_kernel_3mm22_ma3_cma_a0;
    wire [17:0] i_mul56_kernel_3mm22_ma3_cma_c0;
    wire [13:0] i_mul56_kernel_3mm22_ma3_cma_a1;
    wire [17:0] i_mul56_kernel_3mm22_ma3_cma_c1;
    wire [32:0] i_mul56_kernel_3mm22_ma3_cma_s0;
    wire [32:0] i_mul56_kernel_3mm22_ma3_cma_qq;
    wire [32:0] i_mul56_kernel_3mm22_ma3_cma_q;
    wire i_mul56_kernel_3mm22_ma3_cma_ena0;
    wire i_mul56_kernel_3mm22_ma3_cma_ena1;
    wire i_mul56_kernel_3mm22_ma3_cma_ena2;
    wire [54:0] i_arrayidx515_kernel_3mm0_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx515_kernel_3mm0_upper_bits_x_merged_bit_select_c;
    wire [54:0] i_arrayidx556_kernel_3mm0_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx556_kernel_3mm0_upper_bits_x_merged_bit_select_c;
    wire [13:0] i_mul56_kernel_3mm22_bs2_merged_bit_select_b;
    wire [17:0] i_mul56_kernel_3mm22_bs2_merged_bit_select_c;
    wire [13:0] i_mul56_kernel_3mm22_bs1_merged_bit_select_b;
    wire [17:0] i_mul56_kernel_3mm22_bs1_merged_bit_select_c;
    wire [1:0] lowRangeB_uid264_i_arrayidx515_kernel_3mm0_mult_x_merged_bit_select_b;
    wire [6:0] lowRangeB_uid264_i_arrayidx515_kernel_3mm0_mult_x_merged_bit_select_c;
    reg [0:0] redist0_sync_together146_aunroll_x_in_c0_eni26_1_tpl_1_q;
    reg [0:0] redist1_sync_together146_aunroll_x_in_c0_eni26_1_tpl_9_q;
    reg [63:0] redist2_sync_together146_aunroll_x_in_c0_eni26_2_tpl_1_q;
    reg [63:0] redist3_sync_together146_aunroll_x_in_c0_eni26_3_tpl_1_q;
    reg [0:0] redist5_sync_together146_aunroll_x_in_c0_eni26_5_tpl_9_q;
    reg [0:0] redist6_sync_together146_aunroll_x_in_c0_eni26_6_tpl_1_q;
    reg [0:0] redist7_sync_together146_aunroll_x_in_c0_eni26_7_tpl_1_q;
    reg [0:0] redist8_sync_together146_aunroll_x_in_c0_eni26_8_tpl_1_q;
    reg [0:0] redist9_sync_together146_aunroll_x_in_c0_eni26_9_tpl_9_q;
    reg [31:0] redist10_sync_together146_aunroll_x_in_c0_eni26_10_tpl_1_q;
    reg [0:0] redist11_sync_together146_aunroll_x_in_c0_eni26_11_tpl_1_q;
    reg [0:0] redist12_sync_together146_aunroll_x_in_c0_eni26_12_tpl_1_q;
    reg [0:0] redist13_sync_together146_aunroll_x_in_c0_eni26_13_tpl_9_q;
    reg [63:0] redist14_sync_together146_aunroll_x_in_c0_eni26_14_tpl_1_q;
    reg [0:0] redist15_sync_together146_aunroll_x_in_c0_eni26_15_tpl_10_q;
    reg [0:0] redist16_sync_together146_aunroll_x_in_c0_eni26_16_tpl_10_q;
    reg [0:0] redist17_sync_together146_aunroll_x_in_c0_eni26_17_tpl_10_q;
    reg [0:0] redist18_sync_together146_aunroll_x_in_c0_eni26_18_tpl_10_q;
    reg [0:0] redist19_sync_together146_aunroll_x_in_c0_eni26_19_tpl_10_q;
    reg [0:0] redist21_sync_together146_aunroll_x_in_c0_eni26_21_tpl_10_q;
    reg [0:0] redist22_sync_together146_aunroll_x_in_c0_eni26_22_tpl_10_q;
    reg [0:0] redist23_sync_together146_aunroll_x_in_c0_eni26_23_tpl_10_q;
    reg [0:0] redist24_sync_together146_aunroll_x_in_c0_eni26_24_tpl_10_q;
    reg [0:0] redist25_sync_together146_aunroll_x_in_c0_eni26_25_tpl_10_q;
    reg [0:0] redist26_sync_together146_aunroll_x_in_c0_eni26_26_tpl_10_q;
    reg [0:0] redist27_sync_together146_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist28_sync_together146_aunroll_x_in_i_valid_8_q;
    reg [0:0] redist29_sync_together146_aunroll_x_in_i_valid_9_q;
    reg [8:0] redist30_i_arrayidx556_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q;
    reg [6:0] redist31_i_arrayidx556_kernel_3mm0_narrow_x_b_1_q;
    reg [8:0] redist32_i_arrayidx515_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q;
    reg [6:0] redist33_i_arrayidx515_kernel_3mm0_narrow_x_b_1_q;
    reg [31:0] redist34_bgTrunc_i_mul56_kernel_3mm22_sel_x_b_1_q;
    reg [0:0] redist35_i_masked49_kernel_3mm38_q_9_q;
    reg [31:0] redist37_i_llvm_fpga_pop_i32_tmp40_054_pop63_kernel_3mm23_out_data_out_1_q;
    reg [0:0] redist38_i_llvm_fpga_pop_i1_notcmp73113_pop73_kernel_3mm51_out_data_out_9_q;
    reg [0:0] redist39_i_llvm_fpga_pop_i1_notcmp68125_pop76_kernel_3mm53_out_data_out_9_q;
    reg [0:0] redist40_i_llvm_fpga_pop_i1_memdep_phi5_pop20102_pop71_kernel_3mm47_out_data_out_1_q;
    reg [0:0] redist41_i_llvm_fpga_pop_i1_memdep_126_pop77_kernel_3mm55_out_data_out_1_q;
    reg [0:0] redist42_i_llvm_fpga_pop_i1_forked8186_pop67_kernel_3mm39_out_data_out_1_q;
    reg [0:0] redist43_i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_out_data_out_1_q;
    reg [0:0] redist44_i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_out_data_out_10_q;
    reg [0:0] redist45_i_first_cleanup_xor46_kernel_3mm4_q_1_q;
    wire redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_mem_reset0;
    wire [31:0] redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_mem_ia;
    wire [2:0] redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_mem_aa;
    wire [2:0] redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_mem_ab;
    wire [31:0] redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_mem_iq;
    wire [31:0] redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_mem_q;
    wire [2:0] redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_rdcnt_q;
    (* preserve *) reg [2:0] redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_rdcnt_i;
    reg [2:0] redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_wraddr_q;
    wire [3:0] redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_mem_last_q;
    wire [3:0] redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_cmp_b;
    wire [0:0] redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_cmp_q;
    (* dont_merge *) reg [0:0] redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_cmpReg_q;
    wire [0:0] redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_notEnable_q;
    wire [0:0] redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_nor_q;
    (* dont_merge *) reg [0:0] redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_sticky_ena_q;
    wire [0:0] redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_enaAnd_q;
    wire redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_mem_reset0;
    wire [31:0] redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_mem_ia;
    wire [3:0] redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_mem_aa;
    wire [3:0] redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_mem_ab;
    wire [31:0] redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_mem_iq;
    wire [31:0] redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_mem_q;
    wire [3:0] redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_rdcnt_q;
    (* preserve *) reg [3:0] redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_rdcnt_i;
    (* preserve *) reg redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_rdcnt_eq;
    reg [3:0] redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_wraddr_q;
    wire [3:0] redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_mem_last_q;
    wire [0:0] redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_cmp_q;
    (* dont_merge *) reg [0:0] redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_cmpReg_q;
    wire [0:0] redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_notEnable_q;
    wire [0:0] redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_nor_q;
    (* dont_merge *) reg [0:0] redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_sticky_ena_q;
    wire [0:0] redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_enaAnd_q;
    wire redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_mem_reset0;
    wire [63:0] redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_mem_ia;
    wire [2:0] redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_mem_aa;
    wire [2:0] redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_mem_ab;
    wire [63:0] redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_mem_iq;
    wire [63:0] redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_mem_q;
    wire [2:0] redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_rdcnt_q;
    (* preserve *) reg [2:0] redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_rdcnt_i;
    reg [2:0] redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_wraddr_q;
    wire [3:0] redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_mem_last_q;
    wire [3:0] redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_cmp_b;
    wire [0:0] redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_cmp_q;
    (* dont_merge *) reg [0:0] redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_cmpReg_q;
    wire [0:0] redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_notEnable_q;
    wire [0:0] redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_nor_q;
    (* dont_merge *) reg [0:0] redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_sticky_ena_q;
    wire [0:0] redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_enaAnd_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist27_sync_together146_aunroll_x_in_i_valid_1(DELAY,399)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_sync_together146_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist27_sync_together146_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist43_i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_out_data_out_1(DELAY,415)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist43_i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid352_i_cleanups_shl44_kernel_3mm0_shift_x(BITSELECT,351)@2
    assign leftShiftStage0Idx1Rng1_uid352_i_cleanups_shl44_kernel_3mm0_shift_x_in = i_llvm_fpga_pop_i2_cleanups43_pop66_kernel_3mm2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid352_i_cleanups_shl44_kernel_3mm0_shift_x_b = leftShiftStage0Idx1Rng1_uid352_i_cleanups_shl44_kernel_3mm0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid353_i_cleanups_shl44_kernel_3mm0_shift_x(BITJOIN,352)@2
    assign leftShiftStage0Idx1_uid353_i_cleanups_shl44_kernel_3mm0_shift_x_q = {leftShiftStage0Idx1Rng1_uid352_i_cleanups_shl44_kernel_3mm0_shift_x_b, GND_q};

    // leftShiftStage0_uid355_i_cleanups_shl44_kernel_3mm0_shift_x(MUX,354)@2
    assign leftShiftStage0_uid355_i_cleanups_shl44_kernel_3mm0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid355_i_cleanups_shl44_kernel_3mm0_shift_x_s or i_llvm_fpga_pop_i2_cleanups43_pop66_kernel_3mm2_out_data_out or leftShiftStage0Idx1_uid353_i_cleanups_shl44_kernel_3mm0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid355_i_cleanups_shl44_kernel_3mm0_shift_x_s)
            1'b0 : leftShiftStage0_uid355_i_cleanups_shl44_kernel_3mm0_shift_x_q = i_llvm_fpga_pop_i2_cleanups43_pop66_kernel_3mm2_out_data_out;
            1'b1 : leftShiftStage0_uid355_i_cleanups_shl44_kernel_3mm0_shift_x_q = leftShiftStage0Idx1_uid353_i_cleanups_shl44_kernel_3mm0_shift_x_q;
            default : leftShiftStage0_uid355_i_cleanups_shl44_kernel_3mm0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl44_kernel_3mm5_vt_select_1(BITSELECT,64)@2
    assign i_cleanups_shl44_kernel_3mm5_vt_select_1_b = leftShiftStage0_uid355_i_cleanups_shl44_kernel_3mm0_shift_x_q[1:1];

    // i_cleanups_shl44_kernel_3mm5_vt_join(BITJOIN,63)@2
    assign i_cleanups_shl44_kernel_3mm5_vt_join_q = {i_cleanups_shl44_kernel_3mm5_vt_select_1_b, GND_q};

    // i_first_cleanup_xor46_kernel_3mm4(LOGICAL,67)@2
    assign i_first_cleanup_xor46_kernel_3mm4_q = i_first_cleanup45_kernel_3mm3_sel_x_b ^ VCC_q;

    // i_notcmp36_kernel_3mm31(LOGICAL,120)@2
    assign i_notcmp36_kernel_3mm31_q = i_exitcond10_kernel_3mm29_cmp_nsign_q ^ VCC_q;

    // i_or47_kernel_3mm33(LOGICAL,121)@2
    assign i_or47_kernel_3mm33_q = i_notcmp36_kernel_3mm31_q | i_first_cleanup_xor46_kernel_3mm4_q;

    // i_next_cleanups48_kernel_3mm34(MUX,116)@2
    assign i_next_cleanups48_kernel_3mm34_s = i_or47_kernel_3mm33_q;
    always @(i_next_cleanups48_kernel_3mm34_s or i_llvm_fpga_pop_i2_cleanups43_pop66_kernel_3mm2_out_data_out or i_cleanups_shl44_kernel_3mm5_vt_join_q)
    begin
        unique case (i_next_cleanups48_kernel_3mm34_s)
            1'b0 : i_next_cleanups48_kernel_3mm34_q = i_llvm_fpga_pop_i2_cleanups43_pop66_kernel_3mm2_out_data_out;
            1'b1 : i_next_cleanups48_kernel_3mm34_q = i_cleanups_shl44_kernel_3mm5_vt_join_q;
            default : i_next_cleanups48_kernel_3mm34_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups43_push66_kernel_3mm35(BLACKBOX,105)@2
    // out out_feedback_out_66@20000000
    // out out_feedback_valid_out_66@20000000
    kernel_3mm_i_llvm_fpga_push_i2_cleanups43_push66_0 thei_llvm_fpga_push_i2_cleanups43_push66_kernel_3mm35 (
        .in_data_in(i_next_cleanups48_kernel_3mm34_q),
        .in_feedback_stall_in_66(i_llvm_fpga_pop_i2_cleanups43_pop66_kernel_3mm2_out_feedback_stall_out_66),
        .in_keep_going40(redist43_i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist27_sync_together146_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_66(i_llvm_fpga_push_i2_cleanups43_push66_kernel_3mm35_out_feedback_out_66),
        .out_feedback_valid_out_66(i_llvm_fpga_push_i2_cleanups43_push66_kernel_3mm35_out_feedback_valid_out_66),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together146_aunroll_x_in_c0_eni26_1_tpl_1(DELAY,372)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together146_aunroll_x_in_c0_eni26_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together146_aunroll_x_in_c0_eni26_1_tpl_1_q <= $unsigned(in_c0_eni26_1_tpl);
        end
    end

    // c_i2_199(CONSTANT,46)
    assign c_i2_199_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups43_pop66_kernel_3mm2(BLACKBOX,86)@2
    // out out_feedback_stall_out_66@20000000
    kernel_3mm_i_llvm_fpga_pop_i2_cleanups43_pop66_0 thei_llvm_fpga_pop_i2_cleanups43_pop66_kernel_3mm2 (
        .in_data_in(c_i2_199_q),
        .in_dir(redist0_sync_together146_aunroll_x_in_c0_eni26_1_tpl_1_q),
        .in_feedback_in_66(i_llvm_fpga_push_i2_cleanups43_push66_kernel_3mm35_out_feedback_out_66),
        .in_feedback_valid_in_66(i_llvm_fpga_push_i2_cleanups43_push66_kernel_3mm35_out_feedback_valid_out_66),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist27_sync_together146_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups43_pop66_kernel_3mm2_out_data_out),
        .out_feedback_stall_out_66(i_llvm_fpga_pop_i2_cleanups43_pop66_kernel_3mm2_out_feedback_stall_out_66),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup45_kernel_3mm3_sel_x(BITSELECT,187)@2
    assign i_first_cleanup45_kernel_3mm3_sel_x_b = i_llvm_fpga_pop_i2_cleanups43_pop66_kernel_3mm2_out_data_out[0:0];

    // c_i5_1105(CONSTANT,49)
    assign c_i5_1105_q = $unsigned(5'b11111);

    // i_fpga_indvars_iv_next9_kernel_3mm36(ADD,68)@2
    assign i_fpga_indvars_iv_next9_kernel_3mm36_a = {1'b0, i_llvm_fpga_pop_i5_fpga_indvars_iv8_pop62_kernel_3mm28_out_data_out};
    assign i_fpga_indvars_iv_next9_kernel_3mm36_b = {1'b0, c_i5_1105_q};
    assign i_fpga_indvars_iv_next9_kernel_3mm36_o = $unsigned(i_fpga_indvars_iv_next9_kernel_3mm36_a) + $unsigned(i_fpga_indvars_iv_next9_kernel_3mm36_b);
    assign i_fpga_indvars_iv_next9_kernel_3mm36_q = i_fpga_indvars_iv_next9_kernel_3mm36_o[5:0];

    // bgTrunc_i_fpga_indvars_iv_next9_kernel_3mm36_sel_x(BITSELECT,128)@2
    assign bgTrunc_i_fpga_indvars_iv_next9_kernel_3mm36_sel_x_b = i_fpga_indvars_iv_next9_kernel_3mm36_q[4:0];

    // i_llvm_fpga_push_i5_fpga_indvars_iv8_push62_kernel_3mm37(BLACKBOX,110)@2
    // out out_feedback_out_62@20000000
    // out out_feedback_valid_out_62@20000000
    kernel_3mm_i_llvm_fpga_push_i5_fpga_indvars_iv8_push62_0 thei_llvm_fpga_push_i5_fpga_indvars_iv8_push62_kernel_3mm37 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next9_kernel_3mm36_sel_x_b),
        .in_feedback_stall_in_62(i_llvm_fpga_pop_i5_fpga_indvars_iv8_pop62_kernel_3mm28_out_feedback_stall_out_62),
        .in_keep_going40(redist43_i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist27_sync_together146_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_62(i_llvm_fpga_push_i5_fpga_indvars_iv8_push62_kernel_3mm37_out_feedback_out_62),
        .out_feedback_valid_out_62(i_llvm_fpga_push_i5_fpga_indvars_iv8_push62_kernel_3mm37_out_feedback_valid_out_62),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i5_8103(CONSTANT,50)
    assign c_i5_8103_q = $unsigned(5'b01000);

    // i_llvm_fpga_pop_i5_fpga_indvars_iv8_pop62_kernel_3mm28(BLACKBOX,91)@2
    // out out_feedback_stall_out_62@20000000
    kernel_3mm_i_llvm_fpga_pop_i5_fpga_indvars_iv8_pop62_0 thei_llvm_fpga_pop_i5_fpga_indvars_iv8_pop62_kernel_3mm28 (
        .in_data_in(c_i5_8103_q),
        .in_dir(redist0_sync_together146_aunroll_x_in_c0_eni26_1_tpl_1_q),
        .in_feedback_in_62(i_llvm_fpga_push_i5_fpga_indvars_iv8_push62_kernel_3mm37_out_feedback_out_62),
        .in_feedback_valid_in_62(i_llvm_fpga_push_i5_fpga_indvars_iv8_push62_kernel_3mm37_out_feedback_valid_out_62),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist27_sync_together146_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i5_fpga_indvars_iv8_pop62_kernel_3mm28_out_data_out),
        .out_feedback_stall_out_62(i_llvm_fpga_pop_i5_fpga_indvars_iv8_pop62_kernel_3mm28_out_feedback_stall_out_62),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond10_kernel_3mm29_cmp_nsign(LOGICAL,240)@2
    assign i_exitcond10_kernel_3mm29_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i5_fpga_indvars_iv8_pop62_kernel_3mm28_out_data_out[4:4]));

    // i_llvm_fpga_push_i1_notexitcond50_kernel_3mm32(BLACKBOX,104)@2
    // out out_feedback_out_8@20000000
    // out out_feedback_valid_out_8@20000000
    kernel_3mm_i_llvm_fpga_push_i1_notexitcond50_0 thei_llvm_fpga_push_i1_notexitcond50_kernel_3mm32 (
        .in_data_in(i_exitcond10_kernel_3mm29_cmp_nsign_q),
        .in_feedback_stall_in_8(i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_out_not_exitcond_stall_out),
        .in_first_cleanup45(i_first_cleanup45_kernel_3mm3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist27_sync_together146_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_8(i_llvm_fpga_push_i1_notexitcond50_kernel_3mm32_out_feedback_out_8),
        .out_feedback_valid_out_8(i_llvm_fpga_push_i1_notexitcond50_kernel_3mm32_out_feedback_valid_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,199)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid359_i_next_initerations39_kernel_3mm0_shift_x(BITSELECT,358)@2
    assign rightShiftStage0Idx1Rng1_uid359_i_next_initerations39_kernel_3mm0_shift_x_b = i_llvm_fpga_pop_i2_initerations38_pop65_kernel_3mm7_out_data_out[1:1];

    // rightShiftStage0Idx1_uid361_i_next_initerations39_kernel_3mm0_shift_x(BITJOIN,360)@2
    assign rightShiftStage0Idx1_uid361_i_next_initerations39_kernel_3mm0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid359_i_next_initerations39_kernel_3mm0_shift_x_b};

    // valid_fanout_reg1(REG,197)@1 + 1
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

    // valid_fanout_reg2(REG,198)@1 + 1
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

    // i_llvm_fpga_push_i2_initerations38_push65_kernel_3mm9(BLACKBOX,106)@2
    // out out_feedback_out_65@20000000
    // out out_feedback_valid_out_65@20000000
    kernel_3mm_i_llvm_fpga_push_i2_initerations38_push65_0 thei_llvm_fpga_push_i2_initerations38_push65_kernel_3mm9 (
        .in_data_in(i_next_initerations39_kernel_3mm8_vt_join_q),
        .in_feedback_stall_in_65(i_llvm_fpga_pop_i2_initerations38_pop65_kernel_3mm7_out_feedback_stall_out_65),
        .in_keep_going40(redist43_i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_65(i_llvm_fpga_push_i2_initerations38_push65_kernel_3mm9_out_feedback_out_65),
        .out_feedback_valid_out_65(i_llvm_fpga_push_i2_initerations38_push65_kernel_3mm9_out_feedback_valid_out_65),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations38_pop65_kernel_3mm7(BLACKBOX,87)@2
    // out out_feedback_stall_out_65@20000000
    kernel_3mm_i_llvm_fpga_pop_i2_initerations38_pop65_0 thei_llvm_fpga_pop_i2_initerations38_pop65_kernel_3mm7 (
        .in_data_in(c_i2_199_q),
        .in_dir(redist0_sync_together146_aunroll_x_in_c0_eni26_1_tpl_1_q),
        .in_feedback_in_65(i_llvm_fpga_push_i2_initerations38_push65_kernel_3mm9_out_feedback_out_65),
        .in_feedback_valid_in_65(i_llvm_fpga_push_i2_initerations38_push65_kernel_3mm9_out_feedback_valid_out_65),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations38_pop65_kernel_3mm7_out_data_out),
        .out_feedback_stall_out_65(i_llvm_fpga_pop_i2_initerations38_pop65_kernel_3mm7_out_feedback_stall_out_65),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid363_i_next_initerations39_kernel_3mm0_shift_x(MUX,362)@2
    assign rightShiftStage0_uid363_i_next_initerations39_kernel_3mm0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid363_i_next_initerations39_kernel_3mm0_shift_x_s or i_llvm_fpga_pop_i2_initerations38_pop65_kernel_3mm7_out_data_out or rightShiftStage0Idx1_uid361_i_next_initerations39_kernel_3mm0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid363_i_next_initerations39_kernel_3mm0_shift_x_s)
            1'b0 : rightShiftStage0_uid363_i_next_initerations39_kernel_3mm0_shift_x_q = i_llvm_fpga_pop_i2_initerations38_pop65_kernel_3mm7_out_data_out;
            1'b1 : rightShiftStage0_uid363_i_next_initerations39_kernel_3mm0_shift_x_q = rightShiftStage0Idx1_uid361_i_next_initerations39_kernel_3mm0_shift_x_q;
            default : rightShiftStage0_uid363_i_next_initerations39_kernel_3mm0_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations39_kernel_3mm8_vt_select_0(BITSELECT,119)@2
    assign i_next_initerations39_kernel_3mm8_vt_select_0_b = rightShiftStage0_uid363_i_next_initerations39_kernel_3mm0_shift_x_q[0:0];

    // i_next_initerations39_kernel_3mm8_vt_join(BITJOIN,118)@2
    assign i_next_initerations39_kernel_3mm8_vt_join_q = {GND_q, i_next_initerations39_kernel_3mm8_vt_select_0_b};

    // i_last_initeration41_kernel_3mm10_sel_x(BITSELECT,189)@2
    assign i_last_initeration41_kernel_3mm10_sel_x_b = i_next_initerations39_kernel_3mm8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration42_kernel_3mm11(BLACKBOX,96)@2
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    kernel_3mm_i_llvm_fpga_push_i1_lastiniteration42_0 thei_llvm_fpga_push_i1_lastiniteration42_kernel_3mm11 (
        .in_data_in(i_last_initeration41_kernel_3mm10_sel_x_b),
        .in_feedback_stall_in_7(i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_out_initeration_stall_out),
        .in_keep_going40(redist43_i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_7(i_llvm_fpga_push_i1_lastiniteration42_kernel_3mm11_out_feedback_out_7),
        .out_feedback_valid_out_7(i_llvm_fpga_push_i1_lastiniteration42_kernel_3mm11_out_feedback_valid_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going40_kernel_3mm6(BLACKBOX,77)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    kernel_3mm_i_llvm_fpga_pipeline_keep_going40_0 thei_llvm_fpga_pipeline_keep_going40_kernel_3mm6 (
        .in_data_in(in_c0_eni26_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration42_kernel_3mm11_out_feedback_out_7),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration42_kernel_3mm11_out_feedback_valid_out_7),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond50_kernel_3mm32_out_feedback_out_8),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond50_kernel_3mm32_out_feedback_valid_out_8),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,54)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,124)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_out_pipeline_valid_out;

    // valid_fanout_reg7(REG,203)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist27_sync_together146_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist45_i_first_cleanup_xor46_kernel_3mm4_q_1(DELAY,417)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_i_first_cleanup_xor46_kernel_3mm4_q_1_q <= '0;
        end
        else
        begin
            redist45_i_first_cleanup_xor46_kernel_3mm4_q_1_q <= $unsigned(i_first_cleanup_xor46_kernel_3mm4_q);
        end
    end

    // c_kernel_3mm_C_local_pmem(CONSTANT,51)
    assign c_kernel_3mm_C_local_pmem_q = $unsigned(64'b0100000001000010000000000000000000000000000000000000000000000000);

    // i_arrayidx515_kernel_3mm0_upper_bits_x_merged_bit_select(BITSELECT,367)@3
    assign i_arrayidx515_kernel_3mm0_upper_bits_x_merged_bit_select_b = c_kernel_3mm_C_local_pmem_q[63:9];
    assign i_arrayidx515_kernel_3mm0_upper_bits_x_merged_bit_select_c = c_kernel_3mm_C_local_pmem_q[8:0];

    // c_i32_0101(CONSTANT,47)
    assign c_i32_0101_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg4(REG,200)@1 + 1
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

    // valid_fanout_reg13(REG,209)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(in_i_valid);
        end
    end

    // c_i32_1102(CONSTANT,48)
    assign c_i32_1102_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc59_kernel_3mm26(ADD,73)@2
    assign i_inc59_kernel_3mm26_a = {1'b0, i_llvm_fpga_pop_i32_k_153_pop64_kernel_3mm12_out_data_out};
    assign i_inc59_kernel_3mm26_b = {1'b0, c_i32_1102_q};
    assign i_inc59_kernel_3mm26_o = $unsigned(i_inc59_kernel_3mm26_a) + $unsigned(i_inc59_kernel_3mm26_b);
    assign i_inc59_kernel_3mm26_q = i_inc59_kernel_3mm26_o[32:0];

    // bgTrunc_i_inc59_kernel_3mm26_sel_x(BITSELECT,129)@2
    assign bgTrunc_i_inc59_kernel_3mm26_sel_x_b = i_inc59_kernel_3mm26_q[31:0];

    // i_llvm_fpga_push_i32_k_153_push64_kernel_3mm27(BLACKBOX,108)@2
    // out out_feedback_out_64@20000000
    // out out_feedback_valid_out_64@20000000
    kernel_3mm_i_llvm_fpga_push_i32_k_153_push64_0 thei_llvm_fpga_push_i32_k_153_push64_kernel_3mm27 (
        .in_data_in(bgTrunc_i_inc59_kernel_3mm26_sel_x_b),
        .in_feedback_stall_in_64(i_llvm_fpga_pop_i32_k_153_pop64_kernel_3mm12_out_feedback_stall_out_64),
        .in_keep_going40(redist43_i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(),
        .out_feedback_out_64(i_llvm_fpga_push_i32_k_153_push64_kernel_3mm27_out_feedback_out_64),
        .out_feedback_valid_out_64(i_llvm_fpga_push_i32_k_153_push64_kernel_3mm27_out_feedback_valid_out_64),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_k_153_pop64_kernel_3mm12(BLACKBOX,89)@2
    // out out_feedback_stall_out_64@20000000
    kernel_3mm_i_llvm_fpga_pop_i32_k_153_pop64_0 thei_llvm_fpga_pop_i32_k_153_pop64_kernel_3mm12 (
        .in_data_in(c_i32_0101_q),
        .in_dir(redist0_sync_together146_aunroll_x_in_c0_eni26_1_tpl_1_q),
        .in_feedback_in_64(i_llvm_fpga_push_i32_k_153_push64_kernel_3mm27_out_feedback_out_64),
        .in_feedback_valid_in_64(i_llvm_fpga_push_i32_k_153_push64_kernel_3mm27_out_feedback_valid_out_64),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_k_153_pop64_kernel_3mm12_out_data_out),
        .out_feedback_stall_out_64(i_llvm_fpga_pop_i32_k_153_pop64_kernel_3mm12_out_feedback_stall_out_64),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom50_kernel_3mm13_sel_x(BITSELECT,188)@2
    assign i_idxprom50_kernel_3mm13_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_k_153_pop64_kernel_3mm12_out_data_out[31:0]};

    // i_idxprom50_kernel_3mm13_vt_select_31(BITSELECT,72)@2
    assign i_idxprom50_kernel_3mm13_vt_select_31_b = i_idxprom50_kernel_3mm13_sel_x_b[31:0];

    // i_idxprom50_kernel_3mm13_vt_join(BITJOIN,71)@2
    assign i_idxprom50_kernel_3mm13_vt_join_q = {c_i32_0101_q, i_idxprom50_kernel_3mm13_vt_select_31_b};

    // i_arrayidx515_kernel_3mm0_dupName_3_trunc_sel_x(BITSELECT,157)@2
    assign i_arrayidx515_kernel_3mm0_dupName_3_trunc_sel_x_b = i_idxprom50_kernel_3mm13_vt_join_q[8:0];

    // i_arrayidx515_kernel_3mm0_narrow_x(BITSELECT,140)@2
    assign i_arrayidx515_kernel_3mm0_narrow_x_b = i_arrayidx515_kernel_3mm0_dupName_3_trunc_sel_x_b[6:0];

    // redist33_i_arrayidx515_kernel_3mm0_narrow_x_b_1(DELAY,405)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_i_arrayidx515_kernel_3mm0_narrow_x_b_1_q <= '0;
        end
        else
        begin
            redist33_i_arrayidx515_kernel_3mm0_narrow_x_b_1_q <= $unsigned(i_arrayidx515_kernel_3mm0_narrow_x_b);
        end
    end

    // i_arrayidx515_kernel_3mm0_shift_join_x(BITJOIN,141)@3
    assign i_arrayidx515_kernel_3mm0_shift_join_x_q = {redist33_i_arrayidx515_kernel_3mm0_narrow_x_b_1_q, i_arrayidx515_kernel_3mm16_vt_const_1_q};

    // i_arrayidx515_kernel_3mm0_mult_multconst_x(CONSTANT,152)
    assign i_arrayidx515_kernel_3mm0_mult_multconst_x_q = $unsigned(3'b000);

    // valid_fanout_reg5(REG,201)@1 + 1
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

    // valid_fanout_reg6(REG,202)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i64_idxprom120_push74_kernel_3mm15(BLACKBOX,112)@2
    // out out_feedback_out_74@20000000
    // out out_feedback_valid_out_74@20000000
    kernel_3mm_i_llvm_fpga_push_i64_idxprom120_push74_0 thei_llvm_fpga_push_i64_idxprom120_push74_kernel_3mm15 (
        .in_data_in(i_llvm_fpga_pop_i64_idxprom120_pop74_kernel_3mm14_out_data_out),
        .in_feedback_stall_in_74(i_llvm_fpga_pop_i64_idxprom120_pop74_kernel_3mm14_out_feedback_stall_out_74),
        .in_keep_going40(redist43_i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_74(i_llvm_fpga_push_i64_idxprom120_push74_kernel_3mm15_out_feedback_out_74),
        .out_feedback_valid_out_74(i_llvm_fpga_push_i64_idxprom120_push74_kernel_3mm15_out_feedback_valid_out_74),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together146_aunroll_x_in_c0_eni26_2_tpl_1(DELAY,374)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together146_aunroll_x_in_c0_eni26_2_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together146_aunroll_x_in_c0_eni26_2_tpl_1_q <= $unsigned(in_c0_eni26_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i64_idxprom120_pop74_kernel_3mm14(BLACKBOX,93)@2
    // out out_feedback_stall_out_74@20000000
    kernel_3mm_i_llvm_fpga_pop_i64_idxprom120_pop74_0 thei_llvm_fpga_pop_i64_idxprom120_pop74_kernel_3mm14 (
        .in_data_in(redist2_sync_together146_aunroll_x_in_c0_eni26_2_tpl_1_q),
        .in_dir(redist0_sync_together146_aunroll_x_in_c0_eni26_1_tpl_1_q),
        .in_feedback_in_74(i_llvm_fpga_push_i64_idxprom120_push74_kernel_3mm15_out_feedback_out_74),
        .in_feedback_valid_in_74(i_llvm_fpga_push_i64_idxprom120_push74_kernel_3mm15_out_feedback_valid_out_74),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i64_idxprom120_pop74_kernel_3mm14_out_data_out),
        .out_feedback_stall_out_74(i_llvm_fpga_pop_i64_idxprom120_pop74_kernel_3mm14_out_feedback_stall_out_74),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx515_kernel_3mm0_dupName_0_trunc_sel_x(BITSELECT,154)@2
    assign i_arrayidx515_kernel_3mm0_dupName_0_trunc_sel_x_b = i_llvm_fpga_pop_i64_idxprom120_pop74_kernel_3mm14_out_data_out[8:0];

    // addsumAHighB_uid266_i_arrayidx515_kernel_3mm0_mult_x(ADD,265)@2
    assign addsumAHighB_uid266_i_arrayidx515_kernel_3mm0_mult_x_a = {1'b0, i_arrayidx515_kernel_3mm0_dupName_0_trunc_sel_x_b};
    assign addsumAHighB_uid266_i_arrayidx515_kernel_3mm0_mult_x_b = {3'b000, lowRangeB_uid264_i_arrayidx515_kernel_3mm0_mult_x_merged_bit_select_c};
    assign addsumAHighB_uid266_i_arrayidx515_kernel_3mm0_mult_x_o = $unsigned(addsumAHighB_uid266_i_arrayidx515_kernel_3mm0_mult_x_a) + $unsigned(addsumAHighB_uid266_i_arrayidx515_kernel_3mm0_mult_x_b);
    assign addsumAHighB_uid266_i_arrayidx515_kernel_3mm0_mult_x_q = addsumAHighB_uid266_i_arrayidx515_kernel_3mm0_mult_x_o[9:0];

    // lowRangeB_uid264_i_arrayidx515_kernel_3mm0_mult_x_merged_bit_select(BITSELECT,371)@2
    assign lowRangeB_uid264_i_arrayidx515_kernel_3mm0_mult_x_merged_bit_select_b = i_arrayidx515_kernel_3mm0_dupName_0_trunc_sel_x_b[1:0];
    assign lowRangeB_uid264_i_arrayidx515_kernel_3mm0_mult_x_merged_bit_select_c = i_arrayidx515_kernel_3mm0_dupName_0_trunc_sel_x_b[8:2];

    // add_uid267_i_arrayidx515_kernel_3mm0_mult_x(BITJOIN,266)@2
    assign add_uid267_i_arrayidx515_kernel_3mm0_mult_x_q = {addsumAHighB_uid266_i_arrayidx515_kernel_3mm0_mult_x_q, lowRangeB_uid264_i_arrayidx515_kernel_3mm0_mult_x_merged_bit_select_b};

    // sR_mergedSignalTM_uid272_i_arrayidx515_kernel_3mm0_mult_x(BITJOIN,271)@2
    assign sR_mergedSignalTM_uid272_i_arrayidx515_kernel_3mm0_mult_x_q = {add_uid267_i_arrayidx515_kernel_3mm0_mult_x_q, i_arrayidx515_kernel_3mm0_mult_multconst_x_q};

    // i_arrayidx515_kernel_3mm0_mult_extender_x(BITJOIN,151)@2
    assign i_arrayidx515_kernel_3mm0_mult_extender_x_q = {i_arrayidx515_kernel_3mm0_mult_multconst_x_q, sR_mergedSignalTM_uid272_i_arrayidx515_kernel_3mm0_mult_x_q};

    // i_arrayidx515_kernel_3mm0_dupName_1_trunc_sel_x(BITSELECT,155)@2
    assign i_arrayidx515_kernel_3mm0_dupName_1_trunc_sel_x_b = i_arrayidx515_kernel_3mm0_mult_extender_x_q[8:0];

    // redist32_i_arrayidx515_kernel_3mm0_dupName_1_trunc_sel_x_b_1(DELAY,404)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_i_arrayidx515_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist32_i_arrayidx515_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx515_kernel_3mm0_dupName_1_trunc_sel_x_b);
        end
    end

    // i_arrayidx515_kernel_3mm0_add_x(ADD,135)@3
    assign i_arrayidx515_kernel_3mm0_add_x_a = {1'b0, i_arrayidx515_kernel_3mm0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx515_kernel_3mm0_add_x_b = {1'b0, redist32_i_arrayidx515_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q};
    assign i_arrayidx515_kernel_3mm0_add_x_o = $unsigned(i_arrayidx515_kernel_3mm0_add_x_a) + $unsigned(i_arrayidx515_kernel_3mm0_add_x_b);
    assign i_arrayidx515_kernel_3mm0_add_x_q = i_arrayidx515_kernel_3mm0_add_x_o[9:0];

    // i_arrayidx515_kernel_3mm0_dupName_2_trunc_sel_x(BITSELECT,156)@3
    assign i_arrayidx515_kernel_3mm0_dupName_2_trunc_sel_x_b = i_arrayidx515_kernel_3mm0_add_x_q[8:0];

    // i_arrayidx515_kernel_3mm0_dupName_0_add_x(ADD,145)@3
    assign i_arrayidx515_kernel_3mm0_dupName_0_add_x_a = {1'b0, i_arrayidx515_kernel_3mm0_dupName_2_trunc_sel_x_b};
    assign i_arrayidx515_kernel_3mm0_dupName_0_add_x_b = {1'b0, i_arrayidx515_kernel_3mm0_shift_join_x_q};
    assign i_arrayidx515_kernel_3mm0_dupName_0_add_x_o = $unsigned(i_arrayidx515_kernel_3mm0_dupName_0_add_x_a) + $unsigned(i_arrayidx515_kernel_3mm0_dupName_0_add_x_b);
    assign i_arrayidx515_kernel_3mm0_dupName_0_add_x_q = i_arrayidx515_kernel_3mm0_dupName_0_add_x_o[9:0];

    // i_arrayidx515_kernel_3mm0_dupName_5_trunc_sel_x(BITSELECT,158)@3
    assign i_arrayidx515_kernel_3mm0_dupName_5_trunc_sel_x_b = i_arrayidx515_kernel_3mm0_dupName_0_add_x_q[8:0];

    // i_arrayidx515_kernel_3mm0_append_upper_bits_x(BITJOIN,136)@3
    assign i_arrayidx515_kernel_3mm0_append_upper_bits_x_q = {i_arrayidx515_kernel_3mm0_upper_bits_x_merged_bit_select_b, i_arrayidx515_kernel_3mm0_dupName_5_trunc_sel_x_b};

    // i_arrayidx515_kernel_3mm16_vt_select_63(BITSELECT,58)@3
    assign i_arrayidx515_kernel_3mm16_vt_select_63_b = i_arrayidx515_kernel_3mm0_append_upper_bits_x_q[63:2];

    // i_arrayidx515_kernel_3mm16_vt_const_1(CONSTANT,56)
    assign i_arrayidx515_kernel_3mm16_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx515_kernel_3mm16_vt_join(BITJOIN,57)@3
    assign i_arrayidx515_kernel_3mm16_vt_join_q = {i_arrayidx515_kernel_3mm16_vt_select_63_b, i_arrayidx515_kernel_3mm16_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_kernel_3mm8_kernel_3mm17(BLACKBOX,75)@3
    // in in_i_stall@20000000
    // out out_o_readdata@7
    // out out_o_stall@6
    // out out_o_valid@7
    // out out_unnamed_kernel_3mm8_kernel_3mm_avm_address@20000000
    // out out_unnamed_kernel_3mm8_kernel_3mm_avm_burstcount@20000000
    // out out_unnamed_kernel_3mm8_kernel_3mm_avm_byteenable@20000000
    // out out_unnamed_kernel_3mm8_kernel_3mm_avm_enable@20000000
    // out out_unnamed_kernel_3mm8_kernel_3mm_avm_read@20000000
    // out out_unnamed_kernel_3mm8_kernel_3mm_avm_write@20000000
    // out out_unnamed_kernel_3mm8_kernel_3mm_avm_writedata@20000000
    kernel_3mm_i_llvm_fpga_mem_unnamed_8_kernel_3mm0 thei_llvm_fpga_mem_unnamed_kernel_3mm8_kernel_3mm17 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx515_kernel_3mm16_vt_join_q),
        .in_i_predicate(redist45_i_first_cleanup_xor46_kernel_3mm4_q_1_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg7_q),
        .in_unnamed_kernel_3mm8_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm8_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm8_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm8_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm8_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm8_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm8_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm8_kernel_3mm_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_kernel_3mm8_kernel_3mm17_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_kernel_3mm8_kernel_3mm_avm_address(i_llvm_fpga_mem_unnamed_kernel_3mm8_kernel_3mm17_out_unnamed_kernel_3mm8_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm8_kernel_3mm_avm_burstcount(i_llvm_fpga_mem_unnamed_kernel_3mm8_kernel_3mm17_out_unnamed_kernel_3mm8_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm8_kernel_3mm_avm_byteenable(i_llvm_fpga_mem_unnamed_kernel_3mm8_kernel_3mm17_out_unnamed_kernel_3mm8_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm8_kernel_3mm_avm_enable(i_llvm_fpga_mem_unnamed_kernel_3mm8_kernel_3mm17_out_unnamed_kernel_3mm8_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm8_kernel_3mm_avm_read(i_llvm_fpga_mem_unnamed_kernel_3mm8_kernel_3mm17_out_unnamed_kernel_3mm8_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm8_kernel_3mm_avm_write(i_llvm_fpga_mem_unnamed_kernel_3mm8_kernel_3mm17_out_unnamed_kernel_3mm8_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm8_kernel_3mm_avm_writedata(i_llvm_fpga_mem_unnamed_kernel_3mm8_kernel_3mm17_out_unnamed_kernel_3mm8_kernel_3mm_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,133)
    assign out_unnamed_kernel_3mm8_kernel_3mm_avm_address = i_llvm_fpga_mem_unnamed_kernel_3mm8_kernel_3mm17_out_unnamed_kernel_3mm8_kernel_3mm_avm_address;
    assign out_unnamed_kernel_3mm8_kernel_3mm_avm_enable = i_llvm_fpga_mem_unnamed_kernel_3mm8_kernel_3mm17_out_unnamed_kernel_3mm8_kernel_3mm_avm_enable;
    assign out_unnamed_kernel_3mm8_kernel_3mm_avm_read = i_llvm_fpga_mem_unnamed_kernel_3mm8_kernel_3mm17_out_unnamed_kernel_3mm8_kernel_3mm_avm_read;
    assign out_unnamed_kernel_3mm8_kernel_3mm_avm_write = i_llvm_fpga_mem_unnamed_kernel_3mm8_kernel_3mm17_out_unnamed_kernel_3mm8_kernel_3mm_avm_write;
    assign out_unnamed_kernel_3mm8_kernel_3mm_avm_writedata = i_llvm_fpga_mem_unnamed_kernel_3mm8_kernel_3mm17_out_unnamed_kernel_3mm8_kernel_3mm_avm_writedata;
    assign out_unnamed_kernel_3mm8_kernel_3mm_avm_byteenable = i_llvm_fpga_mem_unnamed_kernel_3mm8_kernel_3mm17_out_unnamed_kernel_3mm8_kernel_3mm_avm_byteenable;
    assign out_unnamed_kernel_3mm8_kernel_3mm_avm_burstcount = i_llvm_fpga_mem_unnamed_kernel_3mm8_kernel_3mm17_out_unnamed_kernel_3mm8_kernel_3mm_avm_burstcount;

    // valid_fanout_reg10(REG,206)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist27_sync_together146_aunroll_x_in_i_valid_1_q);
        end
    end

    // c_kernel_3mm_D_local_pmem(CONSTANT,52)
    assign c_kernel_3mm_D_local_pmem_q = $unsigned(64'b0100000001000011000000000000000000000000000000000000000000000000);

    // i_arrayidx556_kernel_3mm0_upper_bits_x_merged_bit_select(BITSELECT,368)@3
    assign i_arrayidx556_kernel_3mm0_upper_bits_x_merged_bit_select_b = c_kernel_3mm_D_local_pmem_q[63:9];
    assign i_arrayidx556_kernel_3mm0_upper_bits_x_merged_bit_select_c = c_kernel_3mm_D_local_pmem_q[8:0];

    // valid_fanout_reg8(REG,204)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg9(REG,205)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i64_idxprom11122_push75_kernel_3mm19(BLACKBOX,111)@2
    // out out_feedback_out_75@20000000
    // out out_feedback_valid_out_75@20000000
    kernel_3mm_i_llvm_fpga_push_i64_idxprom11122_push75_0 thei_llvm_fpga_push_i64_idxprom11122_push75_kernel_3mm19 (
        .in_data_in(i_llvm_fpga_pop_i64_idxprom11122_pop75_kernel_3mm18_out_data_out),
        .in_feedback_stall_in_75(i_llvm_fpga_pop_i64_idxprom11122_pop75_kernel_3mm18_out_feedback_stall_out_75),
        .in_keep_going40(redist43_i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(),
        .out_feedback_out_75(i_llvm_fpga_push_i64_idxprom11122_push75_kernel_3mm19_out_feedback_out_75),
        .out_feedback_valid_out_75(i_llvm_fpga_push_i64_idxprom11122_push75_kernel_3mm19_out_feedback_valid_out_75),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together146_aunroll_x_in_c0_eni26_3_tpl_1(DELAY,375)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together146_aunroll_x_in_c0_eni26_3_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together146_aunroll_x_in_c0_eni26_3_tpl_1_q <= $unsigned(in_c0_eni26_3_tpl);
        end
    end

    // i_llvm_fpga_pop_i64_idxprom11122_pop75_kernel_3mm18(BLACKBOX,92)@2
    // out out_feedback_stall_out_75@20000000
    kernel_3mm_i_llvm_fpga_pop_i64_idxprom11122_pop75_0 thei_llvm_fpga_pop_i64_idxprom11122_pop75_kernel_3mm18 (
        .in_data_in(redist3_sync_together146_aunroll_x_in_c0_eni26_3_tpl_1_q),
        .in_dir(redist0_sync_together146_aunroll_x_in_c0_eni26_1_tpl_1_q),
        .in_feedback_in_75(i_llvm_fpga_push_i64_idxprom11122_push75_kernel_3mm19_out_feedback_out_75),
        .in_feedback_valid_in_75(i_llvm_fpga_push_i64_idxprom11122_push75_kernel_3mm19_out_feedback_valid_out_75),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(i_llvm_fpga_pop_i64_idxprom11122_pop75_kernel_3mm18_out_data_out),
        .out_feedback_stall_out_75(i_llvm_fpga_pop_i64_idxprom11122_pop75_kernel_3mm18_out_feedback_stall_out_75),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx556_kernel_3mm0_dupName_3_trunc_sel_x(BITSELECT,181)@2
    assign i_arrayidx556_kernel_3mm0_dupName_3_trunc_sel_x_b = i_llvm_fpga_pop_i64_idxprom11122_pop75_kernel_3mm18_out_data_out[8:0];

    // i_arrayidx556_kernel_3mm0_narrow_x(BITSELECT,164)@2
    assign i_arrayidx556_kernel_3mm0_narrow_x_b = i_arrayidx556_kernel_3mm0_dupName_3_trunc_sel_x_b[6:0];

    // redist31_i_arrayidx556_kernel_3mm0_narrow_x_b_1(DELAY,403)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_i_arrayidx556_kernel_3mm0_narrow_x_b_1_q <= '0;
        end
        else
        begin
            redist31_i_arrayidx556_kernel_3mm0_narrow_x_b_1_q <= $unsigned(i_arrayidx556_kernel_3mm0_narrow_x_b);
        end
    end

    // i_arrayidx556_kernel_3mm0_shift_join_x(BITJOIN,165)@3
    assign i_arrayidx556_kernel_3mm0_shift_join_x_q = {redist31_i_arrayidx556_kernel_3mm0_narrow_x_b_1_q, i_arrayidx515_kernel_3mm16_vt_const_1_q};

    // highBBits_uid311_i_arrayidx556_kernel_3mm0_mult_x(BITSELECT,310)@2
    assign highBBits_uid311_i_arrayidx556_kernel_3mm0_mult_x_b = i_arrayidx515_kernel_3mm0_dupName_3_trunc_sel_x_b[8:2];

    // addsumAHighB_uid312_i_arrayidx556_kernel_3mm0_mult_x(ADD,311)@2
    assign addsumAHighB_uid312_i_arrayidx556_kernel_3mm0_mult_x_a = {1'b0, i_arrayidx515_kernel_3mm0_dupName_3_trunc_sel_x_b};
    assign addsumAHighB_uid312_i_arrayidx556_kernel_3mm0_mult_x_b = {3'b000, highBBits_uid311_i_arrayidx556_kernel_3mm0_mult_x_b};
    assign addsumAHighB_uid312_i_arrayidx556_kernel_3mm0_mult_x_o = $unsigned(addsumAHighB_uid312_i_arrayidx556_kernel_3mm0_mult_x_a) + $unsigned(addsumAHighB_uid312_i_arrayidx556_kernel_3mm0_mult_x_b);
    assign addsumAHighB_uid312_i_arrayidx556_kernel_3mm0_mult_x_q = addsumAHighB_uid312_i_arrayidx556_kernel_3mm0_mult_x_o[9:0];

    // lowRangeB_uid310_i_arrayidx556_kernel_3mm0_mult_x(BITSELECT,309)@2
    assign lowRangeB_uid310_i_arrayidx556_kernel_3mm0_mult_x_in = i_arrayidx515_kernel_3mm0_dupName_3_trunc_sel_x_b[1:0];
    assign lowRangeB_uid310_i_arrayidx556_kernel_3mm0_mult_x_b = lowRangeB_uid310_i_arrayidx556_kernel_3mm0_mult_x_in[1:0];

    // add_uid313_i_arrayidx556_kernel_3mm0_mult_x(BITJOIN,312)@2
    assign add_uid313_i_arrayidx556_kernel_3mm0_mult_x_q = {addsumAHighB_uid312_i_arrayidx556_kernel_3mm0_mult_x_q, lowRangeB_uid310_i_arrayidx556_kernel_3mm0_mult_x_b};

    // sR_mergedSignalTM_uid318_i_arrayidx556_kernel_3mm0_mult_x(BITJOIN,317)@2
    assign sR_mergedSignalTM_uid318_i_arrayidx556_kernel_3mm0_mult_x_q = {add_uid313_i_arrayidx556_kernel_3mm0_mult_x_q, i_arrayidx515_kernel_3mm0_mult_multconst_x_q};

    // i_arrayidx556_kernel_3mm0_mult_extender_x(BITJOIN,175)@2
    assign i_arrayidx556_kernel_3mm0_mult_extender_x_q = {i_arrayidx515_kernel_3mm0_mult_multconst_x_q, sR_mergedSignalTM_uid318_i_arrayidx556_kernel_3mm0_mult_x_q};

    // i_arrayidx556_kernel_3mm0_dupName_1_trunc_sel_x(BITSELECT,179)@2
    assign i_arrayidx556_kernel_3mm0_dupName_1_trunc_sel_x_b = i_arrayidx556_kernel_3mm0_mult_extender_x_q[8:0];

    // redist30_i_arrayidx556_kernel_3mm0_dupName_1_trunc_sel_x_b_1(DELAY,402)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_arrayidx556_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist30_i_arrayidx556_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx556_kernel_3mm0_dupName_1_trunc_sel_x_b);
        end
    end

    // i_arrayidx556_kernel_3mm0_add_x(ADD,159)@3
    assign i_arrayidx556_kernel_3mm0_add_x_a = {1'b0, i_arrayidx556_kernel_3mm0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx556_kernel_3mm0_add_x_b = {1'b0, redist30_i_arrayidx556_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q};
    assign i_arrayidx556_kernel_3mm0_add_x_o = $unsigned(i_arrayidx556_kernel_3mm0_add_x_a) + $unsigned(i_arrayidx556_kernel_3mm0_add_x_b);
    assign i_arrayidx556_kernel_3mm0_add_x_q = i_arrayidx556_kernel_3mm0_add_x_o[9:0];

    // i_arrayidx556_kernel_3mm0_dupName_2_trunc_sel_x(BITSELECT,180)@3
    assign i_arrayidx556_kernel_3mm0_dupName_2_trunc_sel_x_b = i_arrayidx556_kernel_3mm0_add_x_q[8:0];

    // i_arrayidx556_kernel_3mm0_dupName_0_add_x(ADD,169)@3
    assign i_arrayidx556_kernel_3mm0_dupName_0_add_x_a = {1'b0, i_arrayidx556_kernel_3mm0_dupName_2_trunc_sel_x_b};
    assign i_arrayidx556_kernel_3mm0_dupName_0_add_x_b = {1'b0, i_arrayidx556_kernel_3mm0_shift_join_x_q};
    assign i_arrayidx556_kernel_3mm0_dupName_0_add_x_o = $unsigned(i_arrayidx556_kernel_3mm0_dupName_0_add_x_a) + $unsigned(i_arrayidx556_kernel_3mm0_dupName_0_add_x_b);
    assign i_arrayidx556_kernel_3mm0_dupName_0_add_x_q = i_arrayidx556_kernel_3mm0_dupName_0_add_x_o[9:0];

    // i_arrayidx556_kernel_3mm0_dupName_5_trunc_sel_x(BITSELECT,182)@3
    assign i_arrayidx556_kernel_3mm0_dupName_5_trunc_sel_x_b = i_arrayidx556_kernel_3mm0_dupName_0_add_x_q[8:0];

    // i_arrayidx556_kernel_3mm0_append_upper_bits_x(BITJOIN,160)@3
    assign i_arrayidx556_kernel_3mm0_append_upper_bits_x_q = {i_arrayidx556_kernel_3mm0_upper_bits_x_merged_bit_select_b, i_arrayidx556_kernel_3mm0_dupName_5_trunc_sel_x_b};

    // i_arrayidx556_kernel_3mm20_vt_select_63(BITSELECT,61)@3
    assign i_arrayidx556_kernel_3mm20_vt_select_63_b = i_arrayidx556_kernel_3mm0_append_upper_bits_x_q[63:2];

    // i_arrayidx556_kernel_3mm20_vt_join(BITJOIN,60)@3
    assign i_arrayidx556_kernel_3mm20_vt_join_q = {i_arrayidx556_kernel_3mm20_vt_select_63_b, i_arrayidx515_kernel_3mm16_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_kernel_3mm9_kernel_3mm21(BLACKBOX,76)@3
    // in in_i_stall@20000000
    // out out_o_readdata@7
    // out out_o_stall@6
    // out out_o_valid@7
    // out out_unnamed_kernel_3mm9_kernel_3mm_avm_address@20000000
    // out out_unnamed_kernel_3mm9_kernel_3mm_avm_burstcount@20000000
    // out out_unnamed_kernel_3mm9_kernel_3mm_avm_byteenable@20000000
    // out out_unnamed_kernel_3mm9_kernel_3mm_avm_enable@20000000
    // out out_unnamed_kernel_3mm9_kernel_3mm_avm_read@20000000
    // out out_unnamed_kernel_3mm9_kernel_3mm_avm_write@20000000
    // out out_unnamed_kernel_3mm9_kernel_3mm_avm_writedata@20000000
    kernel_3mm_i_llvm_fpga_mem_unnamed_9_kernel_3mm0 thei_llvm_fpga_mem_unnamed_kernel_3mm9_kernel_3mm21 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx556_kernel_3mm20_vt_join_q),
        .in_i_predicate(redist45_i_first_cleanup_xor46_kernel_3mm4_q_1_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg10_q),
        .in_unnamed_kernel_3mm9_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm9_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm9_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm9_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm9_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm9_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm9_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm9_kernel_3mm_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_kernel_3mm9_kernel_3mm21_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_kernel_3mm9_kernel_3mm_avm_address(i_llvm_fpga_mem_unnamed_kernel_3mm9_kernel_3mm21_out_unnamed_kernel_3mm9_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm9_kernel_3mm_avm_burstcount(i_llvm_fpga_mem_unnamed_kernel_3mm9_kernel_3mm21_out_unnamed_kernel_3mm9_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm9_kernel_3mm_avm_byteenable(i_llvm_fpga_mem_unnamed_kernel_3mm9_kernel_3mm21_out_unnamed_kernel_3mm9_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm9_kernel_3mm_avm_enable(i_llvm_fpga_mem_unnamed_kernel_3mm9_kernel_3mm21_out_unnamed_kernel_3mm9_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm9_kernel_3mm_avm_read(i_llvm_fpga_mem_unnamed_kernel_3mm9_kernel_3mm21_out_unnamed_kernel_3mm9_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm9_kernel_3mm_avm_write(i_llvm_fpga_mem_unnamed_kernel_3mm9_kernel_3mm21_out_unnamed_kernel_3mm9_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm9_kernel_3mm_avm_writedata(i_llvm_fpga_mem_unnamed_kernel_3mm9_kernel_3mm21_out_unnamed_kernel_3mm9_kernel_3mm_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_ext_sig_sync_out_x(GPOUT,134)
    assign out_unnamed_kernel_3mm9_kernel_3mm_avm_address = i_llvm_fpga_mem_unnamed_kernel_3mm9_kernel_3mm21_out_unnamed_kernel_3mm9_kernel_3mm_avm_address;
    assign out_unnamed_kernel_3mm9_kernel_3mm_avm_enable = i_llvm_fpga_mem_unnamed_kernel_3mm9_kernel_3mm21_out_unnamed_kernel_3mm9_kernel_3mm_avm_enable;
    assign out_unnamed_kernel_3mm9_kernel_3mm_avm_read = i_llvm_fpga_mem_unnamed_kernel_3mm9_kernel_3mm21_out_unnamed_kernel_3mm9_kernel_3mm_avm_read;
    assign out_unnamed_kernel_3mm9_kernel_3mm_avm_write = i_llvm_fpga_mem_unnamed_kernel_3mm9_kernel_3mm21_out_unnamed_kernel_3mm9_kernel_3mm_avm_write;
    assign out_unnamed_kernel_3mm9_kernel_3mm_avm_writedata = i_llvm_fpga_mem_unnamed_kernel_3mm9_kernel_3mm21_out_unnamed_kernel_3mm9_kernel_3mm_avm_writedata;
    assign out_unnamed_kernel_3mm9_kernel_3mm_avm_byteenable = i_llvm_fpga_mem_unnamed_kernel_3mm9_kernel_3mm21_out_unnamed_kernel_3mm9_kernel_3mm_avm_byteenable;
    assign out_unnamed_kernel_3mm9_kernel_3mm_avm_burstcount = i_llvm_fpga_mem_unnamed_kernel_3mm9_kernel_3mm21_out_unnamed_kernel_3mm9_kernel_3mm_avm_burstcount;

    // redist28_sync_together146_aunroll_x_in_i_valid_8(DELAY,400)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist28_sync_together146_aunroll_x_in_i_valid_8 ( .xin(redist27_sync_together146_aunroll_x_in_i_valid_1_q), .xout(redist28_sync_together146_aunroll_x_in_i_valid_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist29_sync_together146_aunroll_x_in_i_valid_9(DELAY,401)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_sync_together146_aunroll_x_in_i_valid_9_q <= '0;
        end
        else
        begin
            redist29_sync_together146_aunroll_x_in_i_valid_9_q <= $unsigned(redist28_sync_together146_aunroll_x_in_i_valid_8_q);
        end
    end

    // valid_fanout_reg0(REG,196)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist29_sync_together146_aunroll_x_in_i_valid_9_q);
        end
    end

    // redist26_sync_together146_aunroll_x_in_c0_eni26_26_tpl_10(DELAY,398)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist26_sync_together146_aunroll_x_in_c0_eni26_26_tpl_10 ( .xin(in_c0_eni26_26_tpl), .xout(redist26_sync_together146_aunroll_x_in_c0_eni26_26_tpl_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist25_sync_together146_aunroll_x_in_c0_eni26_25_tpl_10(DELAY,397)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist25_sync_together146_aunroll_x_in_c0_eni26_25_tpl_10 ( .xin(in_c0_eni26_25_tpl), .xout(redist25_sync_together146_aunroll_x_in_c0_eni26_25_tpl_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist24_sync_together146_aunroll_x_in_c0_eni26_24_tpl_10(DELAY,396)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist24_sync_together146_aunroll_x_in_c0_eni26_24_tpl_10 ( .xin(in_c0_eni26_24_tpl), .xout(redist24_sync_together146_aunroll_x_in_c0_eni26_24_tpl_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist23_sync_together146_aunroll_x_in_c0_eni26_23_tpl_10(DELAY,395)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist23_sync_together146_aunroll_x_in_c0_eni26_23_tpl_10 ( .xin(in_c0_eni26_23_tpl), .xout(redist23_sync_together146_aunroll_x_in_c0_eni26_23_tpl_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist22_sync_together146_aunroll_x_in_c0_eni26_22_tpl_10(DELAY,394)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist22_sync_together146_aunroll_x_in_c0_eni26_22_tpl_10 ( .xin(in_c0_eni26_22_tpl), .xout(redist22_sync_together146_aunroll_x_in_c0_eni26_22_tpl_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist21_sync_together146_aunroll_x_in_c0_eni26_21_tpl_10(DELAY,393)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist21_sync_together146_aunroll_x_in_c0_eni26_21_tpl_10 ( .xin(in_c0_eni26_21_tpl), .xout(redist21_sync_together146_aunroll_x_in_c0_eni26_21_tpl_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_notEnable(LOGICAL,434)
    assign redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_notEnable_q = $unsigned(~ (VCC_q));

    // redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_nor(LOGICAL,435)
    assign redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_nor_q = ~ (redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_notEnable_q | redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_sticky_ena_q);

    // redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_mem_last(CONSTANT,431)
    assign redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_mem_last_q = $unsigned(4'b0111);

    // redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_cmp(LOGICAL,432)
    assign redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_cmp_q = $unsigned(redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_mem_last_q == redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_rdcnt_q ? 1'b1 : 1'b0);

    // redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_cmpReg(REG,433)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_cmpReg_q <= $unsigned(redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_cmp_q);
        end
    end

    // redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_sticky_ena(REG,436)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_nor_q == 1'b1)
        begin
            redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_sticky_ena_q <= $unsigned(redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_cmpReg_q);
        end
    end

    // redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_enaAnd(LOGICAL,437)
    assign redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_enaAnd_q = redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_sticky_ena_q & VCC_q;

    // redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_rdcnt(COUNTER,429)
    // low=0, high=8, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_rdcnt_i <= 4'd0;
            redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_rdcnt_i == 4'd7)
            begin
                redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_rdcnt_eq <= 1'b0;
            end
            if (redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_rdcnt_eq == 1'b1)
            begin
                redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_rdcnt_i <= $unsigned(redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_rdcnt_i) + $unsigned(4'd8);
            end
            else
            begin
                redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_rdcnt_i <= $unsigned(redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_rdcnt_i) + $unsigned(4'd1);
            end
        end
    end
    assign redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_rdcnt_q = redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_rdcnt_i[3:0];

    // redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_wraddr(REG,430)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_wraddr_q <= $unsigned(4'b1000);
        end
        else
        begin
            redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_wraddr_q <= $unsigned(redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_rdcnt_q);
        end
    end

    // redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_mem(DUALMEM,428)
    assign redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_mem_ia = $unsigned(in_c0_eni26_20_tpl);
    assign redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_mem_aa = redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_wraddr_q;
    assign redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_mem_ab = redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_rdcnt_q;
    assign redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(4),
        .numwords_a(9),
        .width_b(32),
        .widthad_b(4),
        .numwords_b(9),
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
    ) redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_mem_dmem (
        .clocken1(redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_mem_reset0),
        .clock1(clock),
        .address_a(redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_mem_aa),
        .data_a(redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_mem_ab),
        .q_b(redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_mem_iq),
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
    assign redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_mem_q = redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_mem_iq[31:0];

    // redist19_sync_together146_aunroll_x_in_c0_eni26_19_tpl_10(DELAY,391)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist19_sync_together146_aunroll_x_in_c0_eni26_19_tpl_10 ( .xin(in_c0_eni26_19_tpl), .xout(redist19_sync_together146_aunroll_x_in_c0_eni26_19_tpl_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist18_sync_together146_aunroll_x_in_c0_eni26_18_tpl_10(DELAY,390)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist18_sync_together146_aunroll_x_in_c0_eni26_18_tpl_10 ( .xin(in_c0_eni26_18_tpl), .xout(redist18_sync_together146_aunroll_x_in_c0_eni26_18_tpl_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist17_sync_together146_aunroll_x_in_c0_eni26_17_tpl_10(DELAY,389)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist17_sync_together146_aunroll_x_in_c0_eni26_17_tpl_10 ( .xin(in_c0_eni26_17_tpl), .xout(redist17_sync_together146_aunroll_x_in_c0_eni26_17_tpl_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist16_sync_together146_aunroll_x_in_c0_eni26_16_tpl_10(DELAY,388)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist16_sync_together146_aunroll_x_in_c0_eni26_16_tpl_10 ( .xin(in_c0_eni26_16_tpl), .xout(redist16_sync_together146_aunroll_x_in_c0_eni26_16_tpl_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist15_sync_together146_aunroll_x_in_c0_eni26_15_tpl_10(DELAY,387)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist15_sync_together146_aunroll_x_in_c0_eni26_15_tpl_10 ( .xin(in_c0_eni26_15_tpl), .xout(redist15_sync_together146_aunroll_x_in_c0_eni26_15_tpl_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_notEnable(LOGICAL,444)
    assign redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_notEnable_q = $unsigned(~ (VCC_q));

    // redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_nor(LOGICAL,445)
    assign redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_nor_q = ~ (redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_notEnable_q | redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_sticky_ena_q);

    // redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_mem_last(CONSTANT,441)
    assign redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_mem_last_q = $unsigned(4'b0110);

    // redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_cmp(LOGICAL,442)
    assign redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_cmp_b = {1'b0, redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_rdcnt_q};
    assign redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_cmp_q = $unsigned(redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_mem_last_q == redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_cmp_b ? 1'b1 : 1'b0);

    // redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_cmpReg(REG,443)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_cmpReg_q <= $unsigned(redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_cmp_q);
        end
    end

    // redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_sticky_ena(REG,446)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_nor_q == 1'b1)
        begin
            redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_sticky_ena_q <= $unsigned(redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_cmpReg_q);
        end
    end

    // redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_enaAnd(LOGICAL,447)
    assign redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_enaAnd_q = redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_sticky_ena_q & VCC_q;

    // redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_rdcnt(COUNTER,439)
    // low=0, high=7, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_rdcnt_i <= 3'd0;
        end
        else
        begin
            redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_rdcnt_i <= $unsigned(redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_rdcnt_i) + $unsigned(3'd1);
        end
    end
    assign redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_rdcnt_q = redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_rdcnt_i[2:0];

    // valid_fanout_reg32(REG,228)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg32_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg32_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg33(REG,229)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg33_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg33_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_p69i32_arrayidx444127_push78_kernel_3mm58(BLACKBOX,113)@2
    // out out_feedback_out_78@20000000
    // out out_feedback_valid_out_78@20000000
    kernel_3mm_i_llvm_fpga_push_p69i32_arrayidx444127_push78_0 thei_llvm_fpga_push_p69i32_arrayidx444127_push78_kernel_3mm58 (
        .in_data_in(i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out),
        .in_feedback_stall_in_78(i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_feedback_stall_out_78),
        .in_keep_going40(redist43_i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg33_q),
        .out_data_out(),
        .out_feedback_out_78(i_llvm_fpga_push_p69i32_arrayidx444127_push78_kernel_3mm58_out_feedback_out_78),
        .out_feedback_valid_out_78(i_llvm_fpga_push_p69i32_arrayidx444127_push78_kernel_3mm58_out_feedback_valid_out_78),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist14_sync_together146_aunroll_x_in_c0_eni26_14_tpl_1(DELAY,386)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together146_aunroll_x_in_c0_eni26_14_tpl_1_q <= '0;
        end
        else
        begin
            redist14_sync_together146_aunroll_x_in_c0_eni26_14_tpl_1_q <= $unsigned(in_c0_eni26_14_tpl);
        end
    end

    // i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57(BLACKBOX,94)@2
    // out out_feedback_stall_out_78@20000000
    kernel_3mm_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_0 thei_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57 (
        .in_data_in(redist14_sync_together146_aunroll_x_in_c0_eni26_14_tpl_1_q),
        .in_dir(redist0_sync_together146_aunroll_x_in_c0_eni26_1_tpl_1_q),
        .in_feedback_in_78(i_llvm_fpga_push_p69i32_arrayidx444127_push78_kernel_3mm58_out_feedback_out_78),
        .in_feedback_valid_in_78(i_llvm_fpga_push_p69i32_arrayidx444127_push78_kernel_3mm58_out_feedback_valid_out_78),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg32_q),
        .out_data_out(i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out),
        .out_feedback_stall_out_78(i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_feedback_stall_out_78),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_wraddr(REG,440)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_wraddr_q <= $unsigned(3'b111);
        end
        else
        begin
            redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_wraddr_q <= $unsigned(redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_rdcnt_q);
        end
    end

    // redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_mem(DUALMEM,438)
    assign redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_mem_ia = $unsigned(i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out);
    assign redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_mem_aa = redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_wraddr_q;
    assign redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_mem_ab = redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_rdcnt_q;
    assign redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(3),
        .numwords_a(8),
        .width_b(64),
        .widthad_b(3),
        .numwords_b(8),
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
    ) redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_mem_dmem (
        .clocken1(redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_mem_reset0),
        .clock1(clock),
        .address_a(redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_mem_aa),
        .data_a(redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_mem_ab),
        .q_b(redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_mem_iq),
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
    assign redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_mem_q = redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_mem_iq[63:0];

    // valid_fanout_reg30(REG,226)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg30_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg30_q <= $unsigned(redist28_sync_together146_aunroll_x_in_i_valid_8_q);
        end
    end

    // valid_fanout_reg31(REG,227)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg31_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg31_q <= $unsigned(redist29_sync_together146_aunroll_x_in_i_valid_9_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_126_push77_kernel_3mm56(BLACKBOX,97)@11
    // out out_feedback_out_77@20000000
    // out out_feedback_valid_out_77@20000000
    kernel_3mm_i_llvm_fpga_push_i1_memdep_126_push77_0 thei_llvm_fpga_push_i1_memdep_126_push77_kernel_3mm56 (
        .in_data_in(redist41_i_llvm_fpga_pop_i1_memdep_126_pop77_kernel_3mm55_out_data_out_1_q),
        .in_feedback_stall_in_77(i_llvm_fpga_pop_i1_memdep_126_pop77_kernel_3mm55_out_feedback_stall_out_77),
        .in_keep_going40(redist44_i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_out_data_out_10_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg31_q),
        .out_data_out(),
        .out_feedback_out_77(i_llvm_fpga_push_i1_memdep_126_push77_kernel_3mm56_out_feedback_out_77),
        .out_feedback_valid_out_77(i_llvm_fpga_push_i1_memdep_126_push77_kernel_3mm56_out_feedback_valid_out_77),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together146_aunroll_x_in_c0_eni26_1_tpl_9(DELAY,373)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist1_sync_together146_aunroll_x_in_c0_eni26_1_tpl_9 ( .xin(redist0_sync_together146_aunroll_x_in_c0_eni26_1_tpl_1_q), .xout(redist1_sync_together146_aunroll_x_in_c0_eni26_1_tpl_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist13_sync_together146_aunroll_x_in_c0_eni26_13_tpl_9(DELAY,385)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist13_sync_together146_aunroll_x_in_c0_eni26_13_tpl_9 ( .xin(in_c0_eni26_13_tpl), .xout(redist13_sync_together146_aunroll_x_in_c0_eni26_13_tpl_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_pop_i1_memdep_126_pop77_kernel_3mm55(BLACKBOX,79)@10
    // out out_feedback_stall_out_77@20000000
    kernel_3mm_i_llvm_fpga_pop_i1_memdep_126_pop77_0 thei_llvm_fpga_pop_i1_memdep_126_pop77_kernel_3mm55 (
        .in_data_in(redist13_sync_together146_aunroll_x_in_c0_eni26_13_tpl_9_q),
        .in_dir(redist1_sync_together146_aunroll_x_in_c0_eni26_1_tpl_9_q),
        .in_feedback_in_77(i_llvm_fpga_push_i1_memdep_126_push77_kernel_3mm56_out_feedback_out_77),
        .in_feedback_valid_in_77(i_llvm_fpga_push_i1_memdep_126_push77_kernel_3mm56_out_feedback_valid_out_77),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg30_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_126_pop77_kernel_3mm55_out_data_out),
        .out_feedback_stall_out_77(i_llvm_fpga_pop_i1_memdep_126_pop77_kernel_3mm55_out_feedback_stall_out_77),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist41_i_llvm_fpga_pop_i1_memdep_126_pop77_kernel_3mm55_out_data_out_1(DELAY,413)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_i_llvm_fpga_pop_i1_memdep_126_pop77_kernel_3mm55_out_data_out_1_q <= '0;
        end
        else
        begin
            redist41_i_llvm_fpga_pop_i1_memdep_126_pop77_kernel_3mm55_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_memdep_126_pop77_kernel_3mm55_out_data_out);
        end
    end

    // valid_fanout_reg28(REG,224)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg28_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg28_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg29(REG,225)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg29_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg29_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_notcmp68125_push76_kernel_3mm54(BLACKBOX,102)@2
    // out out_feedback_out_76@20000000
    // out out_feedback_valid_out_76@20000000
    kernel_3mm_i_llvm_fpga_push_i1_notcmp68125_push76_0 thei_llvm_fpga_push_i1_notcmp68125_push76_kernel_3mm54 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp68125_pop76_kernel_3mm53_out_data_out),
        .in_feedback_stall_in_76(i_llvm_fpga_pop_i1_notcmp68125_pop76_kernel_3mm53_out_feedback_stall_out_76),
        .in_keep_going40(redist43_i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg29_q),
        .out_data_out(),
        .out_feedback_out_76(i_llvm_fpga_push_i1_notcmp68125_push76_kernel_3mm54_out_feedback_out_76),
        .out_feedback_valid_out_76(i_llvm_fpga_push_i1_notcmp68125_push76_kernel_3mm54_out_feedback_valid_out_76),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist12_sync_together146_aunroll_x_in_c0_eni26_12_tpl_1(DELAY,384)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together146_aunroll_x_in_c0_eni26_12_tpl_1_q <= '0;
        end
        else
        begin
            redist12_sync_together146_aunroll_x_in_c0_eni26_12_tpl_1_q <= $unsigned(in_c0_eni26_12_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp68125_pop76_kernel_3mm53(BLACKBOX,84)@2
    // out out_feedback_stall_out_76@20000000
    kernel_3mm_i_llvm_fpga_pop_i1_notcmp68125_pop76_0 thei_llvm_fpga_pop_i1_notcmp68125_pop76_kernel_3mm53 (
        .in_data_in(redist12_sync_together146_aunroll_x_in_c0_eni26_12_tpl_1_q),
        .in_dir(redist0_sync_together146_aunroll_x_in_c0_eni26_1_tpl_1_q),
        .in_feedback_in_76(i_llvm_fpga_push_i1_notcmp68125_push76_kernel_3mm54_out_feedback_out_76),
        .in_feedback_valid_in_76(i_llvm_fpga_push_i1_notcmp68125_push76_kernel_3mm54_out_feedback_valid_out_76),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg28_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp68125_pop76_kernel_3mm53_out_data_out),
        .out_feedback_stall_out_76(i_llvm_fpga_pop_i1_notcmp68125_pop76_kernel_3mm53_out_feedback_stall_out_76),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist39_i_llvm_fpga_pop_i1_notcmp68125_pop76_kernel_3mm53_out_data_out_9(DELAY,411)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist39_i_llvm_fpga_pop_i1_notcmp68125_pop76_kernel_3mm53_out_data_out_9 ( .xin(i_llvm_fpga_pop_i1_notcmp68125_pop76_kernel_3mm53_out_data_out), .xout(redist39_i_llvm_fpga_pop_i1_notcmp68125_pop76_kernel_3mm53_out_data_out_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg26(REG,222)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg26_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg26_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg27(REG,223)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg27_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg27_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_notcmp73113_push73_kernel_3mm52(BLACKBOX,103)@2
    // out out_feedback_out_73@20000000
    // out out_feedback_valid_out_73@20000000
    kernel_3mm_i_llvm_fpga_push_i1_notcmp73113_push73_0 thei_llvm_fpga_push_i1_notcmp73113_push73_kernel_3mm52 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp73113_pop73_kernel_3mm51_out_data_out),
        .in_feedback_stall_in_73(i_llvm_fpga_pop_i1_notcmp73113_pop73_kernel_3mm51_out_feedback_stall_out_73),
        .in_keep_going40(redist43_i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg27_q),
        .out_data_out(),
        .out_feedback_out_73(i_llvm_fpga_push_i1_notcmp73113_push73_kernel_3mm52_out_feedback_out_73),
        .out_feedback_valid_out_73(i_llvm_fpga_push_i1_notcmp73113_push73_kernel_3mm52_out_feedback_valid_out_73),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist11_sync_together146_aunroll_x_in_c0_eni26_11_tpl_1(DELAY,383)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together146_aunroll_x_in_c0_eni26_11_tpl_1_q <= '0;
        end
        else
        begin
            redist11_sync_together146_aunroll_x_in_c0_eni26_11_tpl_1_q <= $unsigned(in_c0_eni26_11_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp73113_pop73_kernel_3mm51(BLACKBOX,85)@2
    // out out_feedback_stall_out_73@20000000
    kernel_3mm_i_llvm_fpga_pop_i1_notcmp73113_pop73_0 thei_llvm_fpga_pop_i1_notcmp73113_pop73_kernel_3mm51 (
        .in_data_in(redist11_sync_together146_aunroll_x_in_c0_eni26_11_tpl_1_q),
        .in_dir(redist0_sync_together146_aunroll_x_in_c0_eni26_1_tpl_1_q),
        .in_feedback_in_73(i_llvm_fpga_push_i1_notcmp73113_push73_kernel_3mm52_out_feedback_out_73),
        .in_feedback_valid_in_73(i_llvm_fpga_push_i1_notcmp73113_push73_kernel_3mm52_out_feedback_valid_out_73),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg26_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp73113_pop73_kernel_3mm51_out_data_out),
        .out_feedback_stall_out_73(i_llvm_fpga_pop_i1_notcmp73113_pop73_kernel_3mm51_out_feedback_stall_out_73),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist38_i_llvm_fpga_pop_i1_notcmp73113_pop73_kernel_3mm51_out_data_out_9(DELAY,410)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist38_i_llvm_fpga_pop_i1_notcmp73113_pop73_kernel_3mm51_out_data_out_9 ( .xin(i_llvm_fpga_pop_i1_notcmp73113_pop73_kernel_3mm51_out_data_out), .xout(redist38_i_llvm_fpga_pop_i1_notcmp73113_pop73_kernel_3mm51_out_data_out_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg22(REG,218)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg22_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg22_q <= $unsigned(redist28_sync_together146_aunroll_x_in_i_valid_8_q);
        end
    end

    // valid_fanout_reg23(REG,219)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg23_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg23_q <= $unsigned(redist29_sync_together146_aunroll_x_in_i_valid_9_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi5_pop20102_push71_kernel_3mm48(BLACKBOX,100)@11
    // out out_feedback_out_71@20000000
    // out out_feedback_valid_out_71@20000000
    kernel_3mm_i_llvm_fpga_push_i1_memdep_phi5_pop20102_push71_0 thei_llvm_fpga_push_i1_memdep_phi5_pop20102_push71_kernel_3mm48 (
        .in_data_in(redist40_i_llvm_fpga_pop_i1_memdep_phi5_pop20102_pop71_kernel_3mm47_out_data_out_1_q),
        .in_feedback_stall_in_71(i_llvm_fpga_pop_i1_memdep_phi5_pop20102_pop71_kernel_3mm47_out_feedback_stall_out_71),
        .in_keep_going40(redist44_i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_out_data_out_10_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg23_q),
        .out_data_out(),
        .out_feedback_out_71(i_llvm_fpga_push_i1_memdep_phi5_pop20102_push71_kernel_3mm48_out_feedback_out_71),
        .out_feedback_valid_out_71(i_llvm_fpga_push_i1_memdep_phi5_pop20102_push71_kernel_3mm48_out_feedback_valid_out_71),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist9_sync_together146_aunroll_x_in_c0_eni26_9_tpl_9(DELAY,381)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist9_sync_together146_aunroll_x_in_c0_eni26_9_tpl_9 ( .xin(in_c0_eni26_9_tpl), .xout(redist9_sync_together146_aunroll_x_in_c0_eni26_9_tpl_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_pop_i1_memdep_phi5_pop20102_pop71_kernel_3mm47(BLACKBOX,82)@10
    // out out_feedback_stall_out_71@20000000
    kernel_3mm_i_llvm_fpga_pop_i1_memdep_phi5_pop20102_pop71_0 thei_llvm_fpga_pop_i1_memdep_phi5_pop20102_pop71_kernel_3mm47 (
        .in_data_in(redist9_sync_together146_aunroll_x_in_c0_eni26_9_tpl_9_q),
        .in_dir(redist1_sync_together146_aunroll_x_in_c0_eni26_1_tpl_9_q),
        .in_feedback_in_71(i_llvm_fpga_push_i1_memdep_phi5_pop20102_push71_kernel_3mm48_out_feedback_out_71),
        .in_feedback_valid_in_71(i_llvm_fpga_push_i1_memdep_phi5_pop20102_push71_kernel_3mm48_out_feedback_valid_out_71),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg22_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi5_pop20102_pop71_kernel_3mm47_out_data_out),
        .out_feedback_stall_out_71(i_llvm_fpga_pop_i1_memdep_phi5_pop20102_pop71_kernel_3mm47_out_feedback_stall_out_71),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist40_i_llvm_fpga_pop_i1_memdep_phi5_pop20102_pop71_kernel_3mm47_out_data_out_1(DELAY,412)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_i_llvm_fpga_pop_i1_memdep_phi5_pop20102_pop71_kernel_3mm47_out_data_out_1_q <= '0;
        end
        else
        begin
            redist40_i_llvm_fpga_pop_i1_memdep_phi5_pop20102_pop71_kernel_3mm47_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi5_pop20102_pop71_kernel_3mm47_out_data_out);
        end
    end

    // valid_fanout_reg14(REG,210)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist28_sync_together146_aunroll_x_in_i_valid_8_q);
        end
    end

    // valid_fanout_reg15(REG,211)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist29_sync_together146_aunroll_x_in_i_valid_9_q);
        end
    end

    // i_llvm_fpga_push_i1_forked8186_push67_kernel_3mm40(BLACKBOX,95)@11
    // out out_feedback_out_67@20000000
    // out out_feedback_valid_out_67@20000000
    kernel_3mm_i_llvm_fpga_push_i1_forked8186_push67_0 thei_llvm_fpga_push_i1_forked8186_push67_kernel_3mm40 (
        .in_data_in(redist42_i_llvm_fpga_pop_i1_forked8186_pop67_kernel_3mm39_out_data_out_1_q),
        .in_feedback_stall_in_67(i_llvm_fpga_pop_i1_forked8186_pop67_kernel_3mm39_out_feedback_stall_out_67),
        .in_keep_going40(redist44_i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_out_data_out_10_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(),
        .out_feedback_out_67(i_llvm_fpga_push_i1_forked8186_push67_kernel_3mm40_out_feedback_out_67),
        .out_feedback_valid_out_67(i_llvm_fpga_push_i1_forked8186_push67_kernel_3mm40_out_feedback_valid_out_67),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_sync_together146_aunroll_x_in_c0_eni26_5_tpl_9(DELAY,377)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist5_sync_together146_aunroll_x_in_c0_eni26_5_tpl_9 ( .xin(in_c0_eni26_5_tpl), .xout(redist5_sync_together146_aunroll_x_in_c0_eni26_5_tpl_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_pop_i1_forked8186_pop67_kernel_3mm39(BLACKBOX,78)@10
    // out out_feedback_stall_out_67@20000000
    kernel_3mm_i_llvm_fpga_pop_i1_forked8186_pop67_0 thei_llvm_fpga_pop_i1_forked8186_pop67_kernel_3mm39 (
        .in_data_in(redist5_sync_together146_aunroll_x_in_c0_eni26_5_tpl_9_q),
        .in_dir(redist1_sync_together146_aunroll_x_in_c0_eni26_1_tpl_9_q),
        .in_feedback_in_67(i_llvm_fpga_push_i1_forked8186_push67_kernel_3mm40_out_feedback_out_67),
        .in_feedback_valid_in_67(i_llvm_fpga_push_i1_forked8186_push67_kernel_3mm40_out_feedback_valid_out_67),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(i_llvm_fpga_pop_i1_forked8186_pop67_kernel_3mm39_out_data_out),
        .out_feedback_stall_out_67(i_llvm_fpga_pop_i1_forked8186_pop67_kernel_3mm39_out_feedback_stall_out_67),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist42_i_llvm_fpga_pop_i1_forked8186_pop67_kernel_3mm39_out_data_out_1(DELAY,414)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_i_llvm_fpga_pop_i1_forked8186_pop67_kernel_3mm39_out_data_out_1_q <= '0;
        end
        else
        begin
            redist42_i_llvm_fpga_pop_i1_forked8186_pop67_kernel_3mm39_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_forked8186_pop67_kernel_3mm39_out_data_out);
        end
    end

    // i_masked49_kernel_3mm38(LOGICAL,114)@2 + 1
    assign i_masked49_kernel_3mm38_qi = i_notcmp36_kernel_3mm31_q & i_first_cleanup45_kernel_3mm3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked49_kernel_3mm38_delay ( .xin(i_masked49_kernel_3mm38_qi), .xout(i_masked49_kernel_3mm38_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist35_i_masked49_kernel_3mm38_q_9(DELAY,407)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist35_i_masked49_kernel_3mm38_q_9 ( .xin(i_masked49_kernel_3mm38_q), .xout(redist35_i_masked49_kernel_3mm38_q_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg11(REG,207)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist28_sync_together146_aunroll_x_in_i_valid_8_q);
        end
    end

    // valid_fanout_reg12(REG,208)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist29_sync_together146_aunroll_x_in_i_valid_9_q);
        end
    end

    // i_llvm_fpga_push_i32_tmp40_054_push63_kernel_3mm25(BLACKBOX,109)@11
    // out out_feedback_out_63@20000000
    // out out_feedback_valid_out_63@20000000
    kernel_3mm_i_llvm_fpga_push_i32_tmp40_054_push63_0 thei_llvm_fpga_push_i32_tmp40_054_push63_kernel_3mm25 (
        .in_data_in(bgTrunc_i_add57_kernel_3mm24_sel_x_b),
        .in_feedback_stall_in_63(i_llvm_fpga_pop_i32_tmp40_054_pop63_kernel_3mm23_out_feedback_stall_out_63),
        .in_keep_going40(redist44_i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_out_data_out_10_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(),
        .out_feedback_out_63(i_llvm_fpga_push_i32_tmp40_054_push63_kernel_3mm25_out_feedback_out_63),
        .out_feedback_valid_out_63(i_llvm_fpga_push_i32_tmp40_054_push63_kernel_3mm25_out_feedback_valid_out_63),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_notEnable(LOGICAL,424)
    assign redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_notEnable_q = $unsigned(~ (VCC_q));

    // redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_nor(LOGICAL,425)
    assign redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_nor_q = ~ (redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_notEnable_q | redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_sticky_ena_q);

    // redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_mem_last(CONSTANT,421)
    assign redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_mem_last_q = $unsigned(4'b0110);

    // redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_cmp(LOGICAL,422)
    assign redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_cmp_b = {1'b0, redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_rdcnt_q};
    assign redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_cmp_q = $unsigned(redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_mem_last_q == redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_cmp_b ? 1'b1 : 1'b0);

    // redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_cmpReg(REG,423)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_cmpReg_q <= $unsigned(redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_cmp_q);
        end
    end

    // redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_sticky_ena(REG,426)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_nor_q == 1'b1)
        begin
            redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_sticky_ena_q <= $unsigned(redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_cmpReg_q);
        end
    end

    // redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_enaAnd(LOGICAL,427)
    assign redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_enaAnd_q = redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_sticky_ena_q & VCC_q;

    // redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_rdcnt(COUNTER,419)
    // low=0, high=7, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_rdcnt_i <= 3'd0;
        end
        else
        begin
            redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_rdcnt_i <= $unsigned(redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_rdcnt_i) + $unsigned(3'd1);
        end
    end
    assign redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_rdcnt_q = redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_rdcnt_i[2:0];

    // redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_wraddr(REG,420)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_wraddr_q <= $unsigned(3'b111);
        end
        else
        begin
            redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_wraddr_q <= $unsigned(redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_rdcnt_q);
        end
    end

    // redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_mem(DUALMEM,418)
    assign redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_mem_ia = $unsigned(in_c0_eni26_4_tpl);
    assign redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_mem_aa = redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_wraddr_q;
    assign redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_mem_ab = redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_rdcnt_q;
    assign redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(8),
        .width_b(32),
        .widthad_b(3),
        .numwords_b(8),
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
    ) redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_mem_dmem (
        .clocken1(redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_mem_reset0),
        .clock1(clock),
        .address_a(redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_mem_aa),
        .data_a(redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_mem_ab),
        .q_b(redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_mem_iq),
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
    assign redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_mem_q = redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_mem_iq[31:0];

    // i_llvm_fpga_pop_i32_tmp40_054_pop63_kernel_3mm23(BLACKBOX,90)@10
    // out out_feedback_stall_out_63@20000000
    kernel_3mm_i_llvm_fpga_pop_i32_tmp40_054_pop63_0 thei_llvm_fpga_pop_i32_tmp40_054_pop63_kernel_3mm23 (
        .in_data_in(redist4_sync_together146_aunroll_x_in_c0_eni26_4_tpl_9_mem_q),
        .in_dir(redist1_sync_together146_aunroll_x_in_c0_eni26_1_tpl_9_q),
        .in_feedback_in_63(i_llvm_fpga_push_i32_tmp40_054_push63_kernel_3mm25_out_feedback_out_63),
        .in_feedback_valid_in_63(i_llvm_fpga_push_i32_tmp40_054_push63_kernel_3mm25_out_feedback_valid_out_63),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(i_llvm_fpga_pop_i32_tmp40_054_pop63_kernel_3mm23_out_data_out),
        .out_feedback_stall_out_63(i_llvm_fpga_pop_i32_tmp40_054_pop63_kernel_3mm23_out_feedback_stall_out_63),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist37_i_llvm_fpga_pop_i32_tmp40_054_pop63_kernel_3mm23_out_data_out_1(DELAY,409)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_i_llvm_fpga_pop_i32_tmp40_054_pop63_kernel_3mm23_out_data_out_1_q <= '0;
        end
        else
        begin
            redist37_i_llvm_fpga_pop_i32_tmp40_054_pop63_kernel_3mm23_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_tmp40_054_pop63_kernel_3mm23_out_data_out);
        end
    end

    // i_mul56_kernel_3mm22_bs2_merged_bit_select(BITSELECT,369)@7
    assign i_mul56_kernel_3mm22_bs2_merged_bit_select_b = i_llvm_fpga_mem_unnamed_kernel_3mm8_kernel_3mm17_out_o_readdata[31:18];
    assign i_mul56_kernel_3mm22_bs2_merged_bit_select_c = i_llvm_fpga_mem_unnamed_kernel_3mm8_kernel_3mm17_out_o_readdata[17:0];

    // i_mul56_kernel_3mm22_bs1_merged_bit_select(BITSELECT,370)@7
    assign i_mul56_kernel_3mm22_bs1_merged_bit_select_b = i_llvm_fpga_mem_unnamed_kernel_3mm9_kernel_3mm21_out_o_readdata[31:18];
    assign i_mul56_kernel_3mm22_bs1_merged_bit_select_c = i_llvm_fpga_mem_unnamed_kernel_3mm9_kernel_3mm21_out_o_readdata[17:0];

    // i_mul56_kernel_3mm22_ma3_cma(CHAINMULTADD,366)@7 + 3
    assign i_mul56_kernel_3mm22_ma3_cma_reset = ~ (resetn);
    assign i_mul56_kernel_3mm22_ma3_cma_ena0 = 1'b1;
    assign i_mul56_kernel_3mm22_ma3_cma_ena1 = i_mul56_kernel_3mm22_ma3_cma_ena0;
    assign i_mul56_kernel_3mm22_ma3_cma_ena2 = i_mul56_kernel_3mm22_ma3_cma_ena0;

    assign i_mul56_kernel_3mm22_ma3_cma_a0 = i_mul56_kernel_3mm22_bs1_merged_bit_select_b;
    assign i_mul56_kernel_3mm22_ma3_cma_c0 = i_mul56_kernel_3mm22_bs2_merged_bit_select_c;
    assign i_mul56_kernel_3mm22_ma3_cma_a1 = i_mul56_kernel_3mm22_bs2_merged_bit_select_b;
    assign i_mul56_kernel_3mm22_ma3_cma_c1 = i_mul56_kernel_3mm22_bs1_merged_bit_select_c;
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
    ) i_mul56_kernel_3mm22_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul56_kernel_3mm22_ma3_cma_ena2, i_mul56_kernel_3mm22_ma3_cma_ena1, i_mul56_kernel_3mm22_ma3_cma_ena0 }),
        .aclr({ i_mul56_kernel_3mm22_ma3_cma_reset, i_mul56_kernel_3mm22_ma3_cma_reset }),
        .ay(i_mul56_kernel_3mm22_ma3_cma_a1),
        .by(i_mul56_kernel_3mm22_ma3_cma_a0),
        .ax(i_mul56_kernel_3mm22_ma3_cma_c1),
        .bx(i_mul56_kernel_3mm22_ma3_cma_c0),
        .resulta(i_mul56_kernel_3mm22_ma3_cma_s0),
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
    i_mul56_kernel_3mm22_ma3_cma_delay ( .xin(i_mul56_kernel_3mm22_ma3_cma_s0), .xout(i_mul56_kernel_3mm22_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul56_kernel_3mm22_ma3_cma_q = $unsigned(i_mul56_kernel_3mm22_ma3_cma_qq[32:0]);

    // i_mul56_kernel_3mm22_sums_align_1(BITSHIFT,253)@10
    assign i_mul56_kernel_3mm22_sums_align_1_qint = { i_mul56_kernel_3mm22_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul56_kernel_3mm22_sums_align_1_q = i_mul56_kernel_3mm22_sums_align_1_qint[50:0];

    // i_mul56_kernel_3mm22_im0_cma(CHAINMULTADD,364)@7 + 3
    assign i_mul56_kernel_3mm22_im0_cma_reset = ~ (resetn);
    assign i_mul56_kernel_3mm22_im0_cma_ena0 = 1'b1;
    assign i_mul56_kernel_3mm22_im0_cma_ena1 = i_mul56_kernel_3mm22_im0_cma_ena0;
    assign i_mul56_kernel_3mm22_im0_cma_ena2 = i_mul56_kernel_3mm22_im0_cma_ena0;

    assign i_mul56_kernel_3mm22_im0_cma_a0 = i_mul56_kernel_3mm22_bs1_merged_bit_select_b;
    assign i_mul56_kernel_3mm22_im0_cma_c0 = i_mul56_kernel_3mm22_bs2_merged_bit_select_b;
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
    ) i_mul56_kernel_3mm22_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul56_kernel_3mm22_im0_cma_ena2, i_mul56_kernel_3mm22_im0_cma_ena1, i_mul56_kernel_3mm22_im0_cma_ena0 }),
        .aclr({ i_mul56_kernel_3mm22_im0_cma_reset, i_mul56_kernel_3mm22_im0_cma_reset }),
        .ay(i_mul56_kernel_3mm22_im0_cma_a0),
        .ax(i_mul56_kernel_3mm22_im0_cma_c0),
        .resulta(i_mul56_kernel_3mm22_im0_cma_s0),
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
    i_mul56_kernel_3mm22_im0_cma_delay ( .xin(i_mul56_kernel_3mm22_im0_cma_s0), .xout(i_mul56_kernel_3mm22_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul56_kernel_3mm22_im0_cma_q = $unsigned(i_mul56_kernel_3mm22_im0_cma_qq[27:0]);

    // i_mul56_kernel_3mm22_im8_cma(CHAINMULTADD,365)@7 + 3
    assign i_mul56_kernel_3mm22_im8_cma_reset = ~ (resetn);
    assign i_mul56_kernel_3mm22_im8_cma_ena0 = 1'b1;
    assign i_mul56_kernel_3mm22_im8_cma_ena1 = i_mul56_kernel_3mm22_im8_cma_ena0;
    assign i_mul56_kernel_3mm22_im8_cma_ena2 = i_mul56_kernel_3mm22_im8_cma_ena0;

    assign i_mul56_kernel_3mm22_im8_cma_a0 = i_mul56_kernel_3mm22_bs1_merged_bit_select_c;
    assign i_mul56_kernel_3mm22_im8_cma_c0 = i_mul56_kernel_3mm22_bs2_merged_bit_select_c;
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
    ) i_mul56_kernel_3mm22_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul56_kernel_3mm22_im8_cma_ena2, i_mul56_kernel_3mm22_im8_cma_ena1, i_mul56_kernel_3mm22_im8_cma_ena0 }),
        .aclr({ i_mul56_kernel_3mm22_im8_cma_reset, i_mul56_kernel_3mm22_im8_cma_reset }),
        .ay(i_mul56_kernel_3mm22_im8_cma_a0),
        .ax(i_mul56_kernel_3mm22_im8_cma_c0),
        .resulta(i_mul56_kernel_3mm22_im8_cma_s0),
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
    i_mul56_kernel_3mm22_im8_cma_delay ( .xin(i_mul56_kernel_3mm22_im8_cma_s0), .xout(i_mul56_kernel_3mm22_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul56_kernel_3mm22_im8_cma_q = $unsigned(i_mul56_kernel_3mm22_im8_cma_qq[35:0]);

    // i_mul56_kernel_3mm22_sums_join_0(BITJOIN,252)@10
    assign i_mul56_kernel_3mm22_sums_join_0_q = {i_mul56_kernel_3mm22_im0_cma_q, i_mul56_kernel_3mm22_im8_cma_q};

    // i_mul56_kernel_3mm22_sums_result_add_0_0(ADD,255)@10
    assign i_mul56_kernel_3mm22_sums_result_add_0_0_a = {1'b0, i_mul56_kernel_3mm22_sums_join_0_q};
    assign i_mul56_kernel_3mm22_sums_result_add_0_0_b = {14'b00000000000000, i_mul56_kernel_3mm22_sums_align_1_q};
    assign i_mul56_kernel_3mm22_sums_result_add_0_0_o = $unsigned(i_mul56_kernel_3mm22_sums_result_add_0_0_a) + $unsigned(i_mul56_kernel_3mm22_sums_result_add_0_0_b);
    assign i_mul56_kernel_3mm22_sums_result_add_0_0_q = i_mul56_kernel_3mm22_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul56_kernel_3mm22_sel_x(BITSELECT,130)@10
    assign bgTrunc_i_mul56_kernel_3mm22_sel_x_in = i_mul56_kernel_3mm22_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul56_kernel_3mm22_sel_x_b = bgTrunc_i_mul56_kernel_3mm22_sel_x_in[31:0];

    // redist34_bgTrunc_i_mul56_kernel_3mm22_sel_x_b_1(DELAY,406)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_bgTrunc_i_mul56_kernel_3mm22_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist34_bgTrunc_i_mul56_kernel_3mm22_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul56_kernel_3mm22_sel_x_b);
        end
    end

    // i_add57_kernel_3mm24(ADD,55)@11
    assign i_add57_kernel_3mm24_a = {1'b0, redist34_bgTrunc_i_mul56_kernel_3mm22_sel_x_b_1_q};
    assign i_add57_kernel_3mm24_b = {1'b0, redist37_i_llvm_fpga_pop_i32_tmp40_054_pop63_kernel_3mm23_out_data_out_1_q};
    assign i_add57_kernel_3mm24_o = $unsigned(i_add57_kernel_3mm24_a) + $unsigned(i_add57_kernel_3mm24_b);
    assign i_add57_kernel_3mm24_q = i_add57_kernel_3mm24_o[32:0];

    // bgTrunc_i_add57_kernel_3mm24_sel_x(BITSELECT,127)@11
    assign bgTrunc_i_add57_kernel_3mm24_sel_x_b = i_add57_kernel_3mm24_q[31:0];

    // redist44_i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_out_data_out_10(DELAY,416)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist44_i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_out_data_out_10 ( .xin(redist43_i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_out_data_out_1_q), .xout(redist44_i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_out_data_out_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,194)@11
    assign out_c0_exi21494_0_tpl = GND_q;
    assign out_c0_exi21494_1_tpl = redist44_i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_out_data_out_10_q;
    assign out_c0_exi21494_2_tpl = bgTrunc_i_add57_kernel_3mm24_sel_x_b;
    assign out_c0_exi21494_3_tpl = redist35_i_masked49_kernel_3mm38_q_9_q;
    assign out_c0_exi21494_4_tpl = redist42_i_llvm_fpga_pop_i1_forked8186_pop67_kernel_3mm39_out_data_out_1_q;
    assign out_c0_exi21494_5_tpl = redist40_i_llvm_fpga_pop_i1_memdep_phi5_pop20102_pop71_kernel_3mm47_out_data_out_1_q;
    assign out_c0_exi21494_6_tpl = redist38_i_llvm_fpga_pop_i1_notcmp73113_pop73_kernel_3mm51_out_data_out_9_q;
    assign out_c0_exi21494_7_tpl = redist39_i_llvm_fpga_pop_i1_notcmp68125_pop76_kernel_3mm53_out_data_out_9_q;
    assign out_c0_exi21494_8_tpl = redist41_i_llvm_fpga_pop_i1_memdep_126_pop77_kernel_3mm55_out_data_out_1_q;
    assign out_c0_exi21494_9_tpl = redist36_i_llvm_fpga_pop_p69i32_arrayidx444127_pop78_kernel_3mm57_out_data_out_9_mem_q;
    assign out_c0_exi21494_10_tpl = redist15_sync_together146_aunroll_x_in_c0_eni26_15_tpl_10_q;
    assign out_c0_exi21494_11_tpl = redist16_sync_together146_aunroll_x_in_c0_eni26_16_tpl_10_q;
    assign out_c0_exi21494_12_tpl = redist17_sync_together146_aunroll_x_in_c0_eni26_17_tpl_10_q;
    assign out_c0_exi21494_13_tpl = redist18_sync_together146_aunroll_x_in_c0_eni26_18_tpl_10_q;
    assign out_c0_exi21494_14_tpl = redist19_sync_together146_aunroll_x_in_c0_eni26_19_tpl_10_q;
    assign out_c0_exi21494_15_tpl = redist20_sync_together146_aunroll_x_in_c0_eni26_20_tpl_10_mem_q;
    assign out_c0_exi21494_16_tpl = redist21_sync_together146_aunroll_x_in_c0_eni26_21_tpl_10_q;
    assign out_c0_exi21494_17_tpl = redist22_sync_together146_aunroll_x_in_c0_eni26_22_tpl_10_q;
    assign out_c0_exi21494_18_tpl = redist23_sync_together146_aunroll_x_in_c0_eni26_23_tpl_10_q;
    assign out_c0_exi21494_19_tpl = redist24_sync_together146_aunroll_x_in_c0_eni26_24_tpl_10_q;
    assign out_c0_exi21494_20_tpl = redist25_sync_together146_aunroll_x_in_c0_eni26_25_tpl_10_q;
    assign out_c0_exi21494_21_tpl = redist26_sync_together146_aunroll_x_in_c0_eni26_26_tpl_10_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_kernel_3mm0 = GND_q;

    // i_llvm_fpga_pop_i1_memdep_phi2_pop1894_pop69_kernel_3mm43(BLACKBOX,80)@2
    // out out_feedback_stall_out_69@20000000
    kernel_3mm_i_llvm_fpga_pop_i1_memdep_phi2_pop1894_pop69_0 thei_llvm_fpga_pop_i1_memdep_phi2_pop1894_pop69_kernel_3mm43 (
        .in_data_in(redist7_sync_together146_aunroll_x_in_c0_eni26_7_tpl_1_q),
        .in_dir(redist0_sync_together146_aunroll_x_in_c0_eni26_1_tpl_1_q),
        .in_feedback_in_69(i_llvm_fpga_push_i1_memdep_phi2_pop1894_push69_kernel_3mm44_out_feedback_out_69),
        .in_feedback_valid_in_69(i_llvm_fpga_push_i1_memdep_phi2_pop1894_push69_kernel_3mm44_out_feedback_valid_out_69),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi2_pop1894_pop69_kernel_3mm43_out_data_out),
        .out_feedback_stall_out_69(i_llvm_fpga_pop_i1_memdep_phi2_pop1894_pop69_kernel_3mm43_out_feedback_stall_out_69),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi3_pop1998_pop70_kernel_3mm45(BLACKBOX,81)@2
    // out out_feedback_stall_out_70@20000000
    kernel_3mm_i_llvm_fpga_pop_i1_memdep_phi3_pop1998_pop70_0 thei_llvm_fpga_pop_i1_memdep_phi3_pop1998_pop70_kernel_3mm45 (
        .in_data_in(redist8_sync_together146_aunroll_x_in_c0_eni26_8_tpl_1_q),
        .in_dir(redist0_sync_together146_aunroll_x_in_c0_eni26_1_tpl_1_q),
        .in_feedback_in_70(i_llvm_fpga_push_i1_memdep_phi3_pop1998_push70_kernel_3mm46_out_feedback_out_70),
        .in_feedback_valid_in_70(i_llvm_fpga_push_i1_memdep_phi3_pop1998_push70_kernel_3mm46_out_feedback_valid_out_70),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi3_pop1998_pop70_kernel_3mm45_out_data_out),
        .out_feedback_stall_out_70(i_llvm_fpga_pop_i1_memdep_phi3_pop1998_pop70_kernel_3mm45_out_feedback_stall_out_70),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi_pop1790_pop68_kernel_3mm41(BLACKBOX,83)@2
    // out out_feedback_stall_out_68@20000000
    kernel_3mm_i_llvm_fpga_pop_i1_memdep_phi_pop1790_pop68_0 thei_llvm_fpga_pop_i1_memdep_phi_pop1790_pop68_kernel_3mm41 (
        .in_data_in(redist6_sync_together146_aunroll_x_in_c0_eni26_6_tpl_1_q),
        .in_dir(redist0_sync_together146_aunroll_x_in_c0_eni26_1_tpl_1_q),
        .in_feedback_in_68(i_llvm_fpga_push_i1_memdep_phi_pop1790_push68_kernel_3mm42_out_feedback_out_68),
        .in_feedback_valid_in_68(i_llvm_fpga_push_i1_memdep_phi_pop1790_push68_kernel_3mm42_out_feedback_valid_out_68),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop1790_pop68_kernel_3mm41_out_data_out),
        .out_feedback_stall_out_68(i_llvm_fpga_pop_i1_memdep_phi_pop1790_pop68_kernel_3mm41_out_feedback_stall_out_68),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_060_pop23110_pop72_kernel_3mm49(BLACKBOX,88)@2
    // out out_feedback_stall_out_72@20000000
    kernel_3mm_i_llvm_fpga_pop_i32_i_060_pop23110_pop72_0 thei_llvm_fpga_pop_i32_i_060_pop23110_pop72_kernel_3mm49 (
        .in_data_in(redist10_sync_together146_aunroll_x_in_c0_eni26_10_tpl_1_q),
        .in_dir(redist0_sync_together146_aunroll_x_in_c0_eni26_1_tpl_1_q),
        .in_feedback_in_72(i_llvm_fpga_push_i32_i_060_pop23110_push72_kernel_3mm50_out_feedback_out_72),
        .in_feedback_valid_in_72(i_llvm_fpga_push_i32_i_060_pop23110_push72_kernel_3mm50_out_feedback_valid_out_72),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg24_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_060_pop23110_pop72_kernel_3mm49_out_data_out),
        .out_feedback_stall_out_72(i_llvm_fpga_pop_i32_i_060_pop23110_pop72_kernel_3mm49_out_feedback_stall_out_72),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_memdep_phi2_pop1894_push69_kernel_3mm44(BLACKBOX,98)@2
    // out out_feedback_out_69@20000000
    // out out_feedback_valid_out_69@20000000
    kernel_3mm_i_llvm_fpga_push_i1_memdep_phi2_pop1894_push69_0 thei_llvm_fpga_push_i1_memdep_phi2_pop1894_push69_kernel_3mm44 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi2_pop1894_pop69_kernel_3mm43_out_data_out),
        .in_feedback_stall_in_69(i_llvm_fpga_pop_i1_memdep_phi2_pop1894_pop69_kernel_3mm43_out_feedback_stall_out_69),
        .in_keep_going40(redist43_i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_data_out(),
        .out_feedback_out_69(i_llvm_fpga_push_i1_memdep_phi2_pop1894_push69_kernel_3mm44_out_feedback_out_69),
        .out_feedback_valid_out_69(i_llvm_fpga_push_i1_memdep_phi2_pop1894_push69_kernel_3mm44_out_feedback_valid_out_69),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_memdep_phi3_pop1998_push70_kernel_3mm46(BLACKBOX,99)@2
    // out out_feedback_out_70@20000000
    // out out_feedback_valid_out_70@20000000
    kernel_3mm_i_llvm_fpga_push_i1_memdep_phi3_pop1998_push70_0 thei_llvm_fpga_push_i1_memdep_phi3_pop1998_push70_kernel_3mm46 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi3_pop1998_pop70_kernel_3mm45_out_data_out),
        .in_feedback_stall_in_70(i_llvm_fpga_pop_i1_memdep_phi3_pop1998_pop70_kernel_3mm45_out_feedback_stall_out_70),
        .in_keep_going40(redist43_i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_data_out(),
        .out_feedback_out_70(i_llvm_fpga_push_i1_memdep_phi3_pop1998_push70_kernel_3mm46_out_feedback_out_70),
        .out_feedback_valid_out_70(i_llvm_fpga_push_i1_memdep_phi3_pop1998_push70_kernel_3mm46_out_feedback_valid_out_70),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_memdep_phi_pop1790_push68_kernel_3mm42(BLACKBOX,101)@2
    // out out_feedback_out_68@20000000
    // out out_feedback_valid_out_68@20000000
    kernel_3mm_i_llvm_fpga_push_i1_memdep_phi_pop1790_push68_0 thei_llvm_fpga_push_i1_memdep_phi_pop1790_push68_kernel_3mm42 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi_pop1790_pop68_kernel_3mm41_out_data_out),
        .in_feedback_stall_in_68(i_llvm_fpga_pop_i1_memdep_phi_pop1790_pop68_kernel_3mm41_out_feedback_stall_out_68),
        .in_keep_going40(redist43_i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(),
        .out_feedback_out_68(i_llvm_fpga_push_i1_memdep_phi_pop1790_push68_kernel_3mm42_out_feedback_out_68),
        .out_feedback_valid_out_68(i_llvm_fpga_push_i1_memdep_phi_pop1790_push68_kernel_3mm42_out_feedback_valid_out_68),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i32_i_060_pop23110_push72_kernel_3mm50(BLACKBOX,107)@2
    // out out_feedback_out_72@20000000
    // out out_feedback_valid_out_72@20000000
    kernel_3mm_i_llvm_fpga_push_i32_i_060_pop23110_push72_0 thei_llvm_fpga_push_i32_i_060_pop23110_push72_kernel_3mm50 (
        .in_data_in(i_llvm_fpga_pop_i32_i_060_pop23110_pop72_kernel_3mm49_out_data_out),
        .in_feedback_stall_in_72(i_llvm_fpga_pop_i32_i_060_pop23110_pop72_kernel_3mm49_out_feedback_stall_out_72),
        .in_keep_going40(redist43_i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg25_q),
        .out_data_out(),
        .out_feedback_out_72(i_llvm_fpga_push_i32_i_060_pop23110_push72_kernel_3mm50_out_feedback_out_72),
        .out_feedback_valid_out_72(i_llvm_fpga_push_i32_i_060_pop23110_push72_kernel_3mm50_out_feedback_valid_out_72),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg16(REG,212)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg17(REG,213)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg17_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg18(REG,214)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg18_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg19(REG,215)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg19_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg20(REG,216)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg20_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg20_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg21(REG,217)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg21_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg21_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg24(REG,220)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg24_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg24_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg25(REG,221)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg25_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg25_q <= $unsigned(in_i_valid);
        end
    end

    // redist6_sync_together146_aunroll_x_in_c0_eni26_6_tpl_1(DELAY,378)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together146_aunroll_x_in_c0_eni26_6_tpl_1_q <= '0;
        end
        else
        begin
            redist6_sync_together146_aunroll_x_in_c0_eni26_6_tpl_1_q <= $unsigned(in_c0_eni26_6_tpl);
        end
    end

    // redist7_sync_together146_aunroll_x_in_c0_eni26_7_tpl_1(DELAY,379)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together146_aunroll_x_in_c0_eni26_7_tpl_1_q <= '0;
        end
        else
        begin
            redist7_sync_together146_aunroll_x_in_c0_eni26_7_tpl_1_q <= $unsigned(in_c0_eni26_7_tpl);
        end
    end

    // redist8_sync_together146_aunroll_x_in_c0_eni26_8_tpl_1(DELAY,380)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together146_aunroll_x_in_c0_eni26_8_tpl_1_q <= '0;
        end
        else
        begin
            redist8_sync_together146_aunroll_x_in_c0_eni26_8_tpl_1_q <= $unsigned(in_c0_eni26_8_tpl);
        end
    end

    // redist10_sync_together146_aunroll_x_in_c0_eni26_10_tpl_1(DELAY,382)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together146_aunroll_x_in_c0_eni26_10_tpl_1_q <= '0;
        end
        else
        begin
            redist10_sync_together146_aunroll_x_in_c0_eni26_10_tpl_1_q <= $unsigned(in_c0_eni26_10_tpl);
        end
    end

endmodule
