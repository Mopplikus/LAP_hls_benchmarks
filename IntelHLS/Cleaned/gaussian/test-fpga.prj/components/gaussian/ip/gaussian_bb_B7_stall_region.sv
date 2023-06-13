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

// SystemVerilog created from bb_gaussian_B7_stall_region
// Created for function/kernel gaussian
// SystemVerilog created on Tue Jun 13 02:18:44 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module gaussian_bb_B7_stall_region (
    input wire [31:0] in_lm32_gaussian_avm_readdata,
    input wire [0:0] in_lm32_gaussian_avm_writeack,
    input wire [0:0] in_lm32_gaussian_avm_waitrequest,
    input wire [0:0] in_lm32_gaussian_avm_readdatavalid,
    output wire [31:0] out_lm1_gaussian_avm_address,
    output wire [0:0] out_lm1_gaussian_avm_enable,
    output wire [0:0] out_lm1_gaussian_avm_read,
    output wire [0:0] out_lm1_gaussian_avm_write,
    output wire [31:0] out_lm1_gaussian_avm_writedata,
    output wire [3:0] out_lm1_gaussian_avm_byteenable,
    output wire [0:0] out_lm1_gaussian_avm_burstcount,
    output wire [31:0] out_add44_push17,
    output wire [0:0] out_masked,
    output wire [0:0] out_memdep,
    output wire [0:0] out_notcmp3546_pop20,
    output wire [0:0] out_pop19,
    output wire [0:0] out_valid_out,
    input wire [31:0] in_lm53_gaussian_avm_readdata,
    input wire [0:0] in_lm53_gaussian_avm_writeack,
    input wire [0:0] in_lm53_gaussian_avm_waitrequest,
    input wire [0:0] in_lm53_gaussian_avm_readdatavalid,
    output wire [31:0] out_lm32_gaussian_avm_address,
    output wire [0:0] out_lm32_gaussian_avm_enable,
    output wire [0:0] out_lm32_gaussian_avm_read,
    output wire [0:0] out_lm32_gaussian_avm_write,
    output wire [31:0] out_lm32_gaussian_avm_writedata,
    output wire [3:0] out_lm32_gaussian_avm_byteenable,
    output wire [0:0] out_lm32_gaussian_avm_burstcount,
    input wire [31:0] in_memdep_gaussian_avm_readdata,
    input wire [0:0] in_memdep_gaussian_avm_writeack,
    input wire [0:0] in_memdep_gaussian_avm_waitrequest,
    input wire [0:0] in_memdep_gaussian_avm_readdatavalid,
    output wire [31:0] out_lm53_gaussian_avm_address,
    output wire [0:0] out_lm53_gaussian_avm_enable,
    output wire [0:0] out_lm53_gaussian_avm_read,
    output wire [0:0] out_lm53_gaussian_avm_write,
    output wire [31:0] out_lm53_gaussian_avm_writedata,
    output wire [3:0] out_lm53_gaussian_avm_byteenable,
    output wire [0:0] out_lm53_gaussian_avm_burstcount,
    output wire [31:0] out_memdep_gaussian_avm_address,
    output wire [0:0] out_memdep_gaussian_avm_enable,
    output wire [0:0] out_memdep_gaussian_avm_read,
    output wire [0:0] out_memdep_gaussian_avm_write,
    output wire [31:0] out_memdep_gaussian_avm_writedata,
    output wire [3:0] out_memdep_gaussian_avm_byteenable,
    output wire [0:0] out_memdep_gaussian_avm_burstcount,
    output wire [0:0] out_lsu_memdep_o_active,
    input wire [31:0] in_lm1_gaussian_avm_readdata,
    input wire [0:0] in_lm1_gaussian_avm_writeack,
    input wire [0:0] in_lm1_gaussian_avm_waitrequest,
    input wire [0:0] in_lm1_gaussian_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_gaussian4_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_gaussian4_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_10_0,
    input wire [0:0] in_intel_reserved_ffwd_8_0,
    input wire [31:0] in_intel_reserved_ffwd_9_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_add43_pop1154,
    input wire [0:0] in_forked31,
    input wire [0:0] in_memdep_phi_pop1053,
    input wire [31:0] in_mul_add1651,
    input wire [0:0] in_notcmp3552,
    input wire [0:0] in_unnamed_gaussian17,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [5:0] bgTrunc_i_fpga_indvars_iv_next_gaussian42_sel_x_b;
    wire [31:0] bgTrunc_i_inc_gaussian37_sel_x_b;
    wire [63:0] bgTrunc_i_mul14_gaussian33_sel_x_in;
    wire [31:0] bgTrunc_i_mul14_gaussian33_sel_x_b;
    wire [31:0] bgTrunc_i_sub_gaussian34_sel_x_b;
    wire [0:0] gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [31:0] gaussian_B7_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [0:0] gaussian_B7_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [0:0] gaussian_B7_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [0:0] gaussian_B7_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [31:0] gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [0:0] gaussian_B7_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] gaussian_B7_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] i_first_cleanup_gaussian1_sel_x_b;
    wire [0:0] i_last_initeration_gaussian8_sel_x_b;
    wire [63:0] i_mptr_bitcast_index51_gaussian0_dupName_0_trunc_sel_x_b;
    wire [1:0] i_mptr_bitcast_index51_gaussian0_c_i2_01_x_q;
    wire [63:0] i_mptr_bitcast_index53_gaussian0_dupName_0_trunc_sel_x_b;
    wire [1:0] c_i2_158_q;
    wire [31:0] c_i32_161_q;
    wire [5:0] c_i6_164_q;
    wire [5:0] c_i6_1762_q;
    wire [32:0] i_add12_gaussian29_a;
    wire [32:0] i_add12_gaussian29_b;
    logic [32:0] i_add12_gaussian29_o;
    wire [32:0] i_add12_gaussian29_q;
    wire [32:0] i_add9_gaussian17_a;
    wire [32:0] i_add9_gaussian17_b;
    logic [32:0] i_add9_gaussian17_o;
    wire [32:0] i_add9_gaussian17_q;
    wire [1:0] i_cleanups_shl_gaussian3_vt_join_q;
    wire [0:0] i_cleanups_shl_gaussian3_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor_gaussian2_q;
    wire [0:0] i_first_cleanup_xor_or_gaussian20_q;
    wire [6:0] i_fpga_indvars_iv_next_gaussian42_a;
    wire [6:0] i_fpga_indvars_iv_next_gaussian42_b;
    logic [6:0] i_fpga_indvars_iv_next_gaussian42_o;
    wire [6:0] i_fpga_indvars_iv_next_gaussian42_q;
    wire [32:0] i_inc_gaussian37_a;
    wire [32:0] i_inc_gaussian37_b;
    logic [32:0] i_inc_gaussian37_o;
    wire [32:0] i_inc_gaussian37_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_out_dest_data_out_8_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_mul11_add1429_gaussian28_out_dest_data_out_9_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_mul11_add1429_gaussian28_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_mul11_add1429_gaussian28_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_out_dest_data_out_10_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_valid_out;
    wire [31:0] i_llvm_fpga_mem_lm1_gaussian23_out_lm1_gaussian_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm1_gaussian23_out_lm1_gaussian_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_lm1_gaussian23_out_lm1_gaussian_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm1_gaussian23_out_lm1_gaussian_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm1_gaussian23_out_lm1_gaussian_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm1_gaussian23_out_lm1_gaussian_avm_write;
    wire [31:0] i_llvm_fpga_mem_lm1_gaussian23_out_lm1_gaussian_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm1_gaussian23_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm1_gaussian23_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm1_gaussian23_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_lm32_gaussian27_out_lm32_gaussian_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm32_gaussian27_out_lm32_gaussian_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_lm32_gaussian27_out_lm32_gaussian_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm32_gaussian27_out_lm32_gaussian_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm32_gaussian27_out_lm32_gaussian_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm32_gaussian27_out_lm32_gaussian_avm_write;
    wire [31:0] i_llvm_fpga_mem_lm32_gaussian27_out_lm32_gaussian_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm32_gaussian27_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm32_gaussian27_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm32_gaussian27_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_lm53_gaussian32_out_lm53_gaussian_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm53_gaussian32_out_lm53_gaussian_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_lm53_gaussian32_out_lm53_gaussian_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm53_gaussian32_out_lm53_gaussian_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm53_gaussian32_out_lm53_gaussian_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm53_gaussian32_out_lm53_gaussian_avm_write;
    wire [31:0] i_llvm_fpga_mem_lm53_gaussian32_out_lm53_gaussian_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm53_gaussian32_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm53_gaussian32_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm53_gaussian32_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_gaussian35_out_lsu_memdep_o_active;
    wire [31:0] i_llvm_fpga_mem_memdep_gaussian35_out_memdep_gaussian_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_gaussian35_out_memdep_gaussian_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_gaussian35_out_memdep_gaussian_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_gaussian35_out_memdep_gaussian_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_gaussian35_out_memdep_gaussian_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_gaussian35_out_memdep_gaussian_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_gaussian35_out_memdep_gaussian_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_gaussian35_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_gaussian35_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_gaussian35_out_o_writeack;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_gaussian4_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_gaussian4_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_gaussian4_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_gaussian4_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_gaussian4_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_gaussian4_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_gaussian4_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_out_feedback_stall_out_14;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_feedback_stall_out_21;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_out_feedback_stall_out_20;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop19_gaussian54_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop19_gaussian54_out_feedback_stall_out_19;
    wire [0:0] i_llvm_fpga_pop_i1_pop19_gaussian54_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop19_gaussian54_out_valid_out;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_feedback_stall_out_16;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_valid_out;
    wire [1:0] i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_out_feedback_stall_out_15;
    wire [0:0] i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_add44_pop17_gaussian52_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_add44_pop17_gaussian52_out_feedback_stall_out_17;
    wire [0:0] i_llvm_fpga_pop_i32_add44_pop17_gaussian52_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_add44_pop17_gaussian52_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_feedback_stall_out_13;
    wire [0:0] i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_feedback_stall_out_18;
    wire [0:0] i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_valid_out;
    wire [5:0] i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_out_feedback_stall_out_12;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_gaussian9_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_gaussian9_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_gaussian9_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_gaussian9_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi4_push14_gaussian36_out_feedback_out_14;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi4_push14_gaussian36_out_feedback_valid_out_14;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi4_push14_gaussian36_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi4_push14_gaussian36_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop1047_push21_gaussian22_out_feedback_out_21;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop1047_push21_gaussian22_out_feedback_valid_out_21;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop1047_push21_gaussian22_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop1047_push21_gaussian22_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notcmp3546_push20_gaussian57_out_feedback_out_20;
    wire [0:0] i_llvm_fpga_push_i1_notcmp3546_push20_gaussian57_out_feedback_valid_out_20;
    wire [0:0] i_llvm_fpga_push_i1_notcmp3546_push20_gaussian57_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_notcmp3546_push20_gaussian57_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_gaussian47_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_gaussian47_out_feedback_valid_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_gaussian47_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_gaussian47_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_push19_gaussian55_out_feedback_out_19;
    wire [0:0] i_llvm_fpga_push_i1_push19_gaussian55_out_feedback_valid_out_19;
    wire [0:0] i_llvm_fpga_push_i1_push19_gaussian55_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_push19_gaussian55_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i2_cleanups_push16_gaussian50_out_feedback_out_16;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push16_gaussian50_out_feedback_valid_out_16;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push16_gaussian50_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push16_gaussian50_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i2_initerations_push15_gaussian7_out_feedback_out_15;
    wire [0:0] i_llvm_fpga_push_i2_initerations_push15_gaussian7_out_feedback_valid_out_15;
    wire [0:0] i_llvm_fpga_push_i2_initerations_push15_gaussian7_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i2_initerations_push15_gaussian7_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i32_add44_push17_gaussian53_out_data_out;
    wire [31:0] i_llvm_fpga_push_i32_add44_push17_gaussian53_out_feedback_out_17;
    wire [0:0] i_llvm_fpga_push_i32_add44_push17_gaussian53_out_feedback_valid_out_17;
    wire [0:0] i_llvm_fpga_push_i32_add44_push17_gaussian53_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_add44_push17_gaussian53_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i32_k_044_push13_gaussian38_out_feedback_out_13;
    wire [0:0] i_llvm_fpga_push_i32_k_044_push13_gaussian38_out_feedback_valid_out_13;
    wire [0:0] i_llvm_fpga_push_i32_k_044_push13_gaussian38_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_k_044_push13_gaussian38_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i32_mul_add1645_push18_gaussian16_out_feedback_out_18;
    wire [0:0] i_llvm_fpga_push_i32_mul_add1645_push18_gaussian16_out_feedback_valid_out_18;
    wire [0:0] i_llvm_fpga_push_i32_mul_add1645_push18_gaussian16_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_mul_add1645_push18_gaussian16_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push12_gaussian43_out_feedback_out_12;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push12_gaussian43_out_feedback_valid_out_12;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push12_gaussian43_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push12_gaussian43_out_valid_out;
    wire [0:0] i_masked_gaussian51_qi;
    reg [0:0] i_masked_gaussian51_q;
    wire [0:0] i_memdep_phi_or_gaussian25_q;
    wire [0:0] i_next_cleanups_gaussian49_s;
    reg [1:0] i_next_cleanups_gaussian49_q;
    wire [1:0] i_next_initerations_gaussian6_vt_join_q;
    wire [0:0] i_next_initerations_gaussian6_vt_select_0_b;
    wire [0:0] i_notcmp_gaussian46_q;
    wire [0:0] i_or_gaussian48_q;
    wire [32:0] i_sub_gaussian34_a;
    wire [32:0] i_sub_gaussian34_b;
    logic [32:0] i_sub_gaussian34_o;
    wire [32:0] i_sub_gaussian34_q;
    wire [0:0] i_unnamed_gaussian11_q;
    wire [31:0] i_unnamed_gaussian18_vt_const_63_q;
    wire [0:0] i_unnamed_gaussian45_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid218_i_cleanups_shl_gaussian0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid218_i_cleanups_shl_gaussian0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid219_i_cleanups_shl_gaussian0_shift_x_q;
    wire [0:0] leftShiftStage0_uid221_i_cleanups_shl_gaussian0_shift_x_s;
    reg [1:0] leftShiftStage0_uid221_i_cleanups_shl_gaussian0_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid225_i_next_initerations_gaussian0_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid227_i_next_initerations_gaussian0_shift_x_q;
    wire [0:0] rightShiftStage0_uid229_i_next_initerations_gaussian0_shift_x_s;
    reg [1:0] rightShiftStage0_uid229_i_next_initerations_gaussian0_shift_x_q;
    wire [0:0] i_exitcond_gaussian40_cmp_nsign_q;
    wire [50:0] i_mul14_gaussian33_sums_align_1_q;
    wire [50:0] i_mul14_gaussian33_sums_align_1_qint;
    wire i_mul14_gaussian33_im0_cma_reset;
    (* preserve *) reg [17:0] i_mul14_gaussian33_im0_cma_a0 [0:0];
    (* preserve *) reg [17:0] i_mul14_gaussian33_im0_cma_c0 [0:0];
    wire [35:0] i_mul14_gaussian33_im0_cma_p [0:0];
    wire [35:0] i_mul14_gaussian33_im0_cma_u [0:0];
    wire [35:0] i_mul14_gaussian33_im0_cma_w [0:0];
    wire [35:0] i_mul14_gaussian33_im0_cma_x [0:0];
    wire [35:0] i_mul14_gaussian33_im0_cma_y [0:0];
    reg [35:0] i_mul14_gaussian33_im0_cma_s [0:0];
    wire [35:0] i_mul14_gaussian33_im0_cma_qq;
    wire [35:0] i_mul14_gaussian33_im0_cma_q;
    wire i_mul14_gaussian33_im0_cma_ena0;
    wire i_mul14_gaussian33_im0_cma_ena1;
    wire i_mul14_gaussian33_im8_cma_reset;
    (* preserve *) reg [13:0] i_mul14_gaussian33_im8_cma_a0 [0:0];
    (* preserve *) reg [13:0] i_mul14_gaussian33_im8_cma_c0 [0:0];
    wire [27:0] i_mul14_gaussian33_im8_cma_p [0:0];
    wire [27:0] i_mul14_gaussian33_im8_cma_u [0:0];
    wire [27:0] i_mul14_gaussian33_im8_cma_w [0:0];
    wire [27:0] i_mul14_gaussian33_im8_cma_x [0:0];
    wire [27:0] i_mul14_gaussian33_im8_cma_y [0:0];
    reg [27:0] i_mul14_gaussian33_im8_cma_s [0:0];
    wire [27:0] i_mul14_gaussian33_im8_cma_qq;
    wire [27:0] i_mul14_gaussian33_im8_cma_q;
    wire i_mul14_gaussian33_im8_cma_ena0;
    wire i_mul14_gaussian33_im8_cma_ena1;
    wire i_mul14_gaussian33_ma3_cma_reset;
    (* preserve *) reg [13:0] i_mul14_gaussian33_ma3_cma_a0 [0:1];
    (* preserve *) reg [17:0] i_mul14_gaussian33_ma3_cma_c0 [0:1];
    wire [31:0] i_mul14_gaussian33_ma3_cma_p [0:1];
    wire [32:0] i_mul14_gaussian33_ma3_cma_u [0:1];
    wire [32:0] i_mul14_gaussian33_ma3_cma_w [0:0];
    wire [32:0] i_mul14_gaussian33_ma3_cma_x [0:0];
    wire [32:0] i_mul14_gaussian33_ma3_cma_y [0:0];
    reg [32:0] i_mul14_gaussian33_ma3_cma_s [0:0];
    wire [32:0] i_mul14_gaussian33_ma3_cma_qq;
    wire [32:0] i_mul14_gaussian33_ma3_cma_q;
    wire i_mul14_gaussian33_ma3_cma_ena0;
    wire i_mul14_gaussian33_ma3_cma_ena1;
    wire [60:0] i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_a;
    wire [60:0] i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_b;
    logic [60:0] i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_o;
    wire [0:0] i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_c;
    wire [59:0] i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_q;
    wire [6:0] i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_a;
    wire [6:0] i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_b;
    logic [6:0] i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_o;
    wire [0:0] i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_cin;
    wire [4:0] i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_q;
    wire [64:0] i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q_q;
    wire [60:0] i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_a;
    wire [60:0] i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_b;
    logic [60:0] i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_o;
    wire [0:0] i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_c;
    wire [59:0] i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_q;
    wire [6:0] i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_a;
    wire [6:0] i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_b;
    logic [6:0] i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_o;
    wire [0:0] i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_cin;
    wire [4:0] i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_q;
    wire [64:0] i_mptr_bitcast_index53_gaussian0_add_x_BitJoin_for_q_q;
    wire [13:0] i_mul14_gaussian33_sums_result_add_0_0_UpperBits_for_b_q;
    wire [60:0] i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_a;
    wire [60:0] i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_b;
    logic [60:0] i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_o;
    wire [0:0] i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_c;
    wire [59:0] i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_q;
    wire [6:0] i_mul14_gaussian33_sums_result_add_0_0_p2_of_2_a;
    wire [6:0] i_mul14_gaussian33_sums_result_add_0_0_p2_of_2_b;
    logic [6:0] i_mul14_gaussian33_sums_result_add_0_0_p2_of_2_o;
    wire [0:0] i_mul14_gaussian33_sums_result_add_0_0_p2_of_2_cin;
    wire [4:0] i_mul14_gaussian33_sums_result_add_0_0_p2_of_2_q;
    wire [64:0] i_mul14_gaussian33_sums_result_add_0_0_BitJoin_for_q_q;
    wire [59:0] i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_a_tessel0_0_b;
    wire [3:0] i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_a_tessel1_0_b;
    wire [4:0] i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [31:0] i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_tessel0_1_b;
    wire [25:0] i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_tessel0_2_b;
    wire [59:0] i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_BitJoin_for_b_q;
    wire [3:0] i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_tessel1_0_b;
    wire [4:0] i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [59:0] i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_a_tessel0_0_b;
    wire [3:0] i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_a_tessel1_0_b;
    wire [4:0] i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [31:0] i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_tessel0_1_b;
    wire [59:0] i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_BitJoin_for_b_q;
    wire [59:0] i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q;
    wire [4:0] i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q;
    wire [59:0] i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q;
    wire [17:0] i_mul14_gaussian33_bs2_merged_bit_select_b;
    wire [13:0] i_mul14_gaussian33_bs2_merged_bit_select_c;
    wire [17:0] i_mul14_gaussian33_bs1_merged_bit_select_b;
    wire [13:0] i_mul14_gaussian33_bs1_merged_bit_select_c;
    wire [23:0] i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b;
    wire [3:0] i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c;
    wire [8:0] i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b;
    wire [4:0] i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c;
    wire [1:0] join_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [64:0] join_for_coalesced_delay_1_q;
    wire [63:0] sel_for_coalesced_delay_1_b;
    wire [0:0] sel_for_coalesced_delay_1_c;
    reg [3:0] redist0_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_q;
    reg [31:0] redist1_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_q;
    reg [3:0] redist2_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_a_tessel1_0_b_1_0_q;
    reg [31:0] redist3_i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_q;
    reg [59:0] redist4_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_q_1_0_q;
    reg [59:0] redist5_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_q_1_0_q;
    reg [59:0] redist6_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_q_1_0_q;
    reg [32:0] redist7_i_mul14_gaussian33_ma3_cma_q_1_0_q;
    reg [27:0] redist8_i_mul14_gaussian33_im8_cma_q_1_0_q;
    reg [35:0] redist9_i_mul14_gaussian33_im0_cma_q_1_0_q;
    reg [0:0] redist10_i_masked_gaussian51_q_3_0_q;
    reg [0:0] redist10_i_masked_gaussian51_q_3_1_q;
    reg [31:0] redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_0_q;
    reg [31:0] redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_1_q;
    reg [31:0] redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_2_q;
    reg [31:0] redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_3_q;
    reg [31:0] redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_4_q;
    wire [0:0] redist12_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_68_fifo_valid_in;
    wire redist12_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_68_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist12_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_68_fifo_stall_in;
    wire redist12_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_68_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist12_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_68_fifo_data_in;
    wire [0:0] redist12_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_68_fifo_valid_out;
    wire redist12_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_68_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist12_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_68_fifo_stall_out;
    wire redist12_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_68_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist12_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_68_fifo_data_out;
    reg [31:0] redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_0_q;
    reg [31:0] redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_1_q;
    reg [31:0] redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_2_q;
    reg [31:0] redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_3_q;
    reg [31:0] redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_q;
    wire [0:0] redist14_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_68_fifo_valid_in;
    wire redist14_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_68_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist14_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_68_fifo_stall_in;
    wire redist14_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_68_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist14_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_68_fifo_data_in;
    wire [0:0] redist14_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_68_fifo_valid_out;
    wire redist14_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_68_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist14_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_68_fifo_stall_out;
    wire redist14_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_68_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist14_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_68_fifo_data_out;
    wire [0:0] redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_65_fifo_valid_in;
    wire redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_65_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_65_fifo_stall_in;
    wire redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_65_fifo_stall_in_bitsignaltemp;
    wire [1:0] redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_65_fifo_data_in;
    wire [0:0] redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_65_fifo_valid_out;
    wire redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_65_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_65_fifo_stall_out;
    wire redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_65_fifo_stall_out_bitsignaltemp;
    wire [1:0] redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_65_fifo_data_out;
    reg [0:0] redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_0_q;
    reg [0:0] redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_1_q;
    reg [0:0] redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_2_q;
    reg [0:0] redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_0_q;
    reg [0:0] redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_1_q;
    reg [0:0] redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_2_q;
    reg [0:0] redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_3_q;
    reg [0:0] redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_q;
    wire [0:0] redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_68_fifo_valid_in;
    wire redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_68_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_68_fifo_stall_in;
    wire redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_68_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_68_fifo_data_in;
    wire [0:0] redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_68_fifo_valid_out;
    wire redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_68_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_68_fifo_stall_out;
    wire redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_68_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_68_fifo_data_out;
    reg [0:0] redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_0_q;
    reg [0:0] redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_q;
    reg [0:0] redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_q;
    reg [63:0] redist21_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_1_0_q;
    reg [63:0] redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_0_q;
    reg [63:0] redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_1_q;
    reg [63:0] redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_2_q;
    reg [63:0] redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_q;
    reg [0:0] redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_0_q;
    reg [0:0] redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_1_q;
    reg [0:0] redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_2_q;
    reg [0:0] redist24_i_first_cleanup_xor_or_gaussian20_q_5_0_q;
    reg [0:0] redist24_i_first_cleanup_xor_or_gaussian20_q_5_1_q;
    reg [0:0] redist24_i_first_cleanup_xor_or_gaussian20_q_5_2_q;
    reg [0:0] redist24_i_first_cleanup_xor_or_gaussian20_q_5_3_q;
    reg [0:0] redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_q;
    wire [0:0] redist26_i_first_cleanup_xor_gaussian2_q_65_fifo_valid_in;
    wire redist26_i_first_cleanup_xor_gaussian2_q_65_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist26_i_first_cleanup_xor_gaussian2_q_65_fifo_stall_in;
    wire redist26_i_first_cleanup_xor_gaussian2_q_65_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist26_i_first_cleanup_xor_gaussian2_q_65_fifo_data_in;
    wire [0:0] redist26_i_first_cleanup_xor_gaussian2_q_65_fifo_valid_out;
    wire redist26_i_first_cleanup_xor_gaussian2_q_65_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist26_i_first_cleanup_xor_gaussian2_q_65_fifo_stall_out;
    wire redist26_i_first_cleanup_xor_gaussian2_q_65_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist26_i_first_cleanup_xor_gaussian2_q_65_fifo_data_out;
    wire [0:0] redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_valid_in;
    wire redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_stall_in;
    wire redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_data_in;
    wire [0:0] redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_valid_out;
    wire redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_stall_out;
    wire redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_data_out;
    reg [0:0] redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_q;
    reg [0:0] redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_q;
    reg [0:0] redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_q;
    wire [0:0] redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_valid_in;
    wire redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_stall_in;
    wire redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_data_in;
    wire [0:0] redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_valid_out;
    wire redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_stall_out;
    wire redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_data_out;
    reg [0:0] redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_0_q;
    reg [0:0] redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_q;
    reg [0:0] redist32_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_q;
    wire [0:0] redist35_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_70_fifo_valid_in;
    wire redist35_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_70_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist35_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_70_fifo_stall_in;
    wire redist35_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_70_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist35_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_70_fifo_data_in;
    wire [0:0] redist35_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_70_fifo_valid_out;
    wire redist35_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_70_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist35_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_70_fifo_stall_out;
    wire redist35_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_70_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist35_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_70_fifo_data_out;
    wire [0:0] coalesced_delay_0_fifo_valid_in;
    wire coalesced_delay_0_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_in;
    wire coalesced_delay_0_fifo_stall_in_bitsignaltemp;
    wire [1:0] coalesced_delay_0_fifo_data_in;
    wire [0:0] coalesced_delay_0_fifo_valid_out;
    wire coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_out;
    wire coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    wire [1:0] coalesced_delay_0_fifo_data_out;
    wire [0:0] coalesced_delay_1_fifo_valid_in;
    wire coalesced_delay_1_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_in;
    wire coalesced_delay_1_fifo_stall_in_bitsignaltemp;
    wire [64:0] coalesced_delay_1_fifo_data_in;
    wire [0:0] coalesced_delay_1_fifo_valid_out;
    wire coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_out;
    wire coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    wire [64:0] coalesced_delay_1_fifo_data_out;
    wire [67:0] bubble_join_gaussian_B7_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_gaussian_B7_merge_reg_aunroll_x_b;
    wire [31:0] bubble_select_gaussian_B7_merge_reg_aunroll_x_c;
    wire [0:0] bubble_select_gaussian_B7_merge_reg_aunroll_x_d;
    wire [0:0] bubble_select_gaussian_B7_merge_reg_aunroll_x_e;
    wire [0:0] bubble_select_gaussian_B7_merge_reg_aunroll_x_f;
    wire [31:0] bubble_select_gaussian_B7_merge_reg_aunroll_x_g;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_mul11_add1429_gaussian28_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_mul11_add1429_gaussian28_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm1_gaussian23_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm1_gaussian23_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm32_gaussian27_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm32_gaussian27_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm53_gaussian32_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm53_gaussian32_b;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_gaussian35_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_gaussian35_b;
    wire [0:0] bubble_join_i_llvm_fpga_pipeline_keep_going_gaussian4_q;
    wire [0:0] bubble_select_i_llvm_fpga_pipeline_keep_going_gaussian4_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_pop19_gaussian54_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_pop19_gaussian54_b;
    wire [1:0] bubble_join_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_q;
    wire [1:0] bubble_select_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_b;
    wire [1:0] bubble_join_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_q;
    wire [1:0] bubble_select_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_b;
    wire [5:0] bubble_join_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_q;
    wire [5:0] bubble_select_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_b;
    wire [31:0] bubble_join_i_llvm_fpga_push_i32_add44_push17_gaussian53_q;
    wire [31:0] bubble_select_i_llvm_fpga_push_i32_add44_push17_gaussian53_b;
    wire [67:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [31:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [35:0] bubble_join_i_mul14_gaussian33_im0_cma_q;
    wire [35:0] bubble_select_i_mul14_gaussian33_im0_cma_b;
    wire [27:0] bubble_join_i_mul14_gaussian33_im8_cma_q;
    wire [27:0] bubble_select_i_mul14_gaussian33_im8_cma_b;
    wire [32:0] bubble_join_i_mul14_gaussian33_ma3_cma_q;
    wire [32:0] bubble_select_i_mul14_gaussian33_ma3_cma_b;
    wire [31:0] bubble_join_redist12_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_68_fifo_q;
    wire [31:0] bubble_select_redist12_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_68_fifo_b;
    wire [31:0] bubble_join_redist14_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_68_fifo_q;
    wire [31:0] bubble_select_redist14_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_68_fifo_b;
    wire [1:0] bubble_join_redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_65_fifo_q;
    wire [1:0] bubble_select_redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_65_fifo_b;
    wire [0:0] bubble_join_redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_68_fifo_q;
    wire [0:0] bubble_select_redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_68_fifo_b;
    wire [0:0] bubble_join_redist26_i_first_cleanup_xor_gaussian2_q_65_fifo_q;
    wire [0:0] bubble_select_redist26_i_first_cleanup_xor_gaussian2_q_65_fifo_b;
    wire [0:0] bubble_join_redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_q;
    wire [0:0] bubble_select_redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_b;
    wire [0:0] bubble_join_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_q;
    wire [0:0] bubble_select_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_b;
    wire [31:0] bubble_join_redist35_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_70_fifo_q;
    wire [31:0] bubble_select_redist35_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_70_fifo_b;
    wire [1:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [1:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [64:0] bubble_join_coalesced_delay_1_fifo_q;
    wire [64:0] bubble_select_coalesced_delay_1_fifo_b;
    wire [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_toReg2;
    reg [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_fromReg2;
    wire [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_consumed2;
    wire [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_toReg3;
    reg [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_fromReg3;
    wire [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_consumed3;
    wire [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_toReg4;
    reg [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_fromReg4;
    wire [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_consumed4;
    wire [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_toReg5;
    reg [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_fromReg5;
    wire [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_consumed5;
    wire [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_toReg6;
    reg [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_fromReg6;
    wire [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_consumed6;
    wire [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_toReg7;
    reg [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_fromReg7;
    wire [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_consumed7;
    wire [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_toReg8;
    reg [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_fromReg8;
    wire [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_consumed8;
    wire [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_toReg9;
    reg [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_fromReg9;
    wire [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_consumed9;
    wire [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_or1;
    wire [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_or2;
    wire [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_or3;
    wire [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_or4;
    wire [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_or5;
    wire [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_or6;
    wire [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_or7;
    wire [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_or8;
    wire [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_V2;
    wire [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_V3;
    wire [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_V4;
    wire [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_V5;
    wire [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_V6;
    wire [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_V7;
    wire [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_V8;
    wire [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_V9;
    wire [0:0] SE_i_add9_gaussian17_wireValid;
    wire [0:0] SE_i_add9_gaussian17_and0;
    wire [0:0] SE_i_add9_gaussian17_backStall;
    wire [0:0] SE_i_add9_gaussian17_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_mul11_add1429_gaussian28_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_mul11_add1429_gaussian28_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_mul11_add1429_gaussian28_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_mul11_add1429_gaussian28_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_V1;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm1_gaussian23_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm1_gaussian23_and0;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm1_gaussian23_and1;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm1_gaussian23_backStall;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm1_gaussian23_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm32_gaussian27_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm32_gaussian27_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm32_gaussian27_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm53_gaussian32_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm53_gaussian32_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm53_gaussian32_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_gaussian35_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_gaussian35_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_gaussian35_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_gaussian35_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_gaussian35_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_gaussian35_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_gaussian35_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_gaussian35_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_gaussian35_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_gaussian35_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_gaussian35_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_gaussian35_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_gaussian35_V1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_toReg4;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_fromReg4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_consumed4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_toReg5;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_fromReg5;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_consumed5;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_toReg6;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_fromReg6;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_consumed6;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_or0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_or1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_or2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_or3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_or4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_or5;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_V0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_V1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_V2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_V3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_V4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_V5;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_V6;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_and0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_pop19_gaussian54_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_pop19_gaussian54_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_pop19_gaussian54_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_pop19_gaussian54_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_pop19_gaussian54_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_pop19_gaussian54_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_pop19_gaussian54_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_pop19_gaussian54_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_pop19_gaussian54_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_pop19_gaussian54_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_pop19_gaussian54_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_pop19_gaussian54_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_pop19_gaussian54_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_or2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_V3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_V2;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_lastiniteration_gaussian9_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_lastiniteration_gaussian9_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi4_push14_gaussian36_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi4_push14_gaussian36_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi4_push14_gaussian36_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi4_push14_gaussian36_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi4_push14_gaussian36_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi4_push14_gaussian36_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_pop1047_push21_gaussian22_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_pop1047_push21_gaussian22_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp3546_push20_gaussian57_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp3546_push20_gaussian57_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp3546_push20_gaussian57_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp3546_push20_gaussian57_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notcmp3546_push20_gaussian57_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notcmp3546_push20_gaussian57_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_gaussian47_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_gaussian47_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_gaussian47_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_gaussian47_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond_gaussian47_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond_gaussian47_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_push19_gaussian55_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_push19_gaussian55_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_push19_gaussian55_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_push19_gaussian55_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_push19_gaussian55_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_push19_gaussian55_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i2_cleanups_push16_gaussian50_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i2_cleanups_push16_gaussian50_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i2_initerations_push15_gaussian7_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i2_initerations_push15_gaussian7_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_add44_push17_gaussian53_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_add44_push17_gaussian53_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_add44_push17_gaussian53_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_add44_push17_gaussian53_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_k_044_push13_gaussian38_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_k_044_push13_gaussian38_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_mul_add1645_push18_gaussian16_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_mul_add1645_push18_gaussian16_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push12_gaussian43_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push12_gaussian43_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push12_gaussian43_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push12_gaussian43_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i6_fpga_indvars_iv_push12_gaussian43_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i6_fpga_indvars_iv_push12_gaussian43_backStall;
    reg [0:0] SE_i_masked_gaussian51_R_v_0;
    wire [0:0] SE_i_masked_gaussian51_v_s_0;
    wire [0:0] SE_i_masked_gaussian51_s_tv_0;
    wire [0:0] SE_i_masked_gaussian51_backEN;
    wire [0:0] SE_i_masked_gaussian51_backStall;
    wire [0:0] SE_i_masked_gaussian51_V0;
    wire [0:0] SE_i_next_initerations_gaussian6_vt_select_0_wireValid;
    wire [0:0] SE_i_next_initerations_gaussian6_vt_select_0_wireStall;
    wire [0:0] SE_i_next_initerations_gaussian6_vt_select_0_StallValid;
    wire [0:0] SE_i_next_initerations_gaussian6_vt_select_0_toReg0;
    reg [0:0] SE_i_next_initerations_gaussian6_vt_select_0_fromReg0;
    wire [0:0] SE_i_next_initerations_gaussian6_vt_select_0_consumed0;
    wire [0:0] SE_i_next_initerations_gaussian6_vt_select_0_toReg1;
    reg [0:0] SE_i_next_initerations_gaussian6_vt_select_0_fromReg1;
    wire [0:0] SE_i_next_initerations_gaussian6_vt_select_0_consumed1;
    wire [0:0] SE_i_next_initerations_gaussian6_vt_select_0_or0;
    wire [0:0] SE_i_next_initerations_gaussian6_vt_select_0_backStall;
    wire [0:0] SE_i_next_initerations_gaussian6_vt_select_0_V0;
    wire [0:0] SE_i_next_initerations_gaussian6_vt_select_0_V1;
    wire [0:0] SE_i_unnamed_gaussian11_wireValid;
    wire [0:0] SE_i_unnamed_gaussian11_wireStall;
    wire [0:0] SE_i_unnamed_gaussian11_StallValid;
    wire [0:0] SE_i_unnamed_gaussian11_toReg0;
    reg [0:0] SE_i_unnamed_gaussian11_fromReg0;
    wire [0:0] SE_i_unnamed_gaussian11_consumed0;
    wire [0:0] SE_i_unnamed_gaussian11_toReg1;
    reg [0:0] SE_i_unnamed_gaussian11_fromReg1;
    wire [0:0] SE_i_unnamed_gaussian11_consumed1;
    wire [0:0] SE_i_unnamed_gaussian11_toReg2;
    reg [0:0] SE_i_unnamed_gaussian11_fromReg2;
    wire [0:0] SE_i_unnamed_gaussian11_consumed2;
    wire [0:0] SE_i_unnamed_gaussian11_and0;
    wire [0:0] SE_i_unnamed_gaussian11_or0;
    wire [0:0] SE_i_unnamed_gaussian11_or1;
    wire [0:0] SE_i_unnamed_gaussian11_backStall;
    wire [0:0] SE_i_unnamed_gaussian11_V0;
    wire [0:0] SE_i_unnamed_gaussian11_V1;
    wire [0:0] SE_i_unnamed_gaussian11_V2;
    wire [0:0] SE_i_unnamed_gaussian45_wireValid;
    wire [0:0] SE_i_unnamed_gaussian45_wireStall;
    wire [0:0] SE_i_unnamed_gaussian45_StallValid;
    wire [0:0] SE_i_unnamed_gaussian45_toReg0;
    reg [0:0] SE_i_unnamed_gaussian45_fromReg0;
    wire [0:0] SE_i_unnamed_gaussian45_consumed0;
    wire [0:0] SE_i_unnamed_gaussian45_toReg1;
    reg [0:0] SE_i_unnamed_gaussian45_fromReg1;
    wire [0:0] SE_i_unnamed_gaussian45_consumed1;
    wire [0:0] SE_i_unnamed_gaussian45_toReg2;
    reg [0:0] SE_i_unnamed_gaussian45_fromReg2;
    wire [0:0] SE_i_unnamed_gaussian45_consumed2;
    wire [0:0] SE_i_unnamed_gaussian45_and0;
    wire [0:0] SE_i_unnamed_gaussian45_or0;
    wire [0:0] SE_i_unnamed_gaussian45_or1;
    wire [0:0] SE_i_unnamed_gaussian45_backStall;
    wire [0:0] SE_i_unnamed_gaussian45_V0;
    wire [0:0] SE_i_unnamed_gaussian45_V1;
    wire [0:0] SE_i_unnamed_gaussian45_V2;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_i_mul14_gaussian33_sums_align_1_wireValid;
    wire [0:0] SE_i_mul14_gaussian33_sums_align_1_and0;
    wire [0:0] SE_i_mul14_gaussian33_sums_align_1_backStall;
    wire [0:0] SE_i_mul14_gaussian33_sums_align_1_V0;
    reg [0:0] SE_i_mul14_gaussian33_im0_cma_R_s_0;
    reg [0:0] SE_i_mul14_gaussian33_im0_cma_R_v_0;
    reg [0:0] SE_i_mul14_gaussian33_im0_cma_R_v_1;
    reg [0:0] SE_i_mul14_gaussian33_im0_cma_R_v_2;
    wire [0:0] SE_i_mul14_gaussian33_im0_cma_v_s_0;
    wire [0:0] SE_i_mul14_gaussian33_im0_cma_s_tv_0;
    wire [0:0] SE_i_mul14_gaussian33_im0_cma_s_tv_1;
    wire [0:0] SE_i_mul14_gaussian33_im0_cma_s_tv_2;
    wire [0:0] SE_i_mul14_gaussian33_im0_cma_backEN;
    wire [0:0] SE_i_mul14_gaussian33_im0_cma_and0;
    wire [0:0] SE_i_mul14_gaussian33_im0_cma_or0;
    wire [0:0] SE_i_mul14_gaussian33_im0_cma_or1;
    wire [0:0] SE_i_mul14_gaussian33_im0_cma_backStall;
    wire [0:0] SE_i_mul14_gaussian33_im0_cma_V0;
    wire [0:0] SE_i_mul14_gaussian33_im0_cma_V1;
    wire [0:0] SE_i_mul14_gaussian33_im0_cma_V2;
    reg [0:0] SE_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_R_v_0;
    reg [0:0] SE_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_R_v_1;
    wire [0:0] SE_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_v_s_0;
    wire [0:0] SE_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_s_tv_0;
    wire [0:0] SE_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_s_tv_1;
    wire [0:0] SE_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_backEN;
    wire [0:0] SE_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_and0;
    wire [0:0] SE_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_or0;
    wire [0:0] SE_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_backStall;
    wire [0:0] SE_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_V0;
    wire [0:0] SE_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_V1;
    reg [0:0] SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_R_v_0;
    wire [0:0] SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_v_s_0;
    wire [0:0] SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_s_tv_0;
    wire [0:0] SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_backEN;
    wire [0:0] SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_backStall;
    wire [0:0] SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_V0;
    wire [0:0] SE_i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q_wireValid;
    wire [0:0] SE_i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q_backStall;
    wire [0:0] SE_i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q_V0;
    reg [0:0] SE_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_R_v_0;
    reg [0:0] SE_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_R_v_1;
    wire [0:0] SE_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_v_s_0;
    wire [0:0] SE_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_s_tv_0;
    wire [0:0] SE_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_s_tv_1;
    wire [0:0] SE_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_backEN;
    wire [0:0] SE_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_and0;
    wire [0:0] SE_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_or0;
    wire [0:0] SE_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_backStall;
    wire [0:0] SE_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_V0;
    wire [0:0] SE_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_V1;
    reg [0:0] SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_R_v_0;
    wire [0:0] SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_v_s_0;
    wire [0:0] SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_s_tv_0;
    wire [0:0] SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_backEN;
    wire [0:0] SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_backStall;
    wire [0:0] SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_V0;
    wire [0:0] SE_i_mptr_bitcast_index53_gaussian0_add_x_BitJoin_for_q_wireValid;
    wire [0:0] SE_i_mptr_bitcast_index53_gaussian0_add_x_BitJoin_for_q_wireStall;
    wire [0:0] SE_i_mptr_bitcast_index53_gaussian0_add_x_BitJoin_for_q_StallValid;
    wire [0:0] SE_i_mptr_bitcast_index53_gaussian0_add_x_BitJoin_for_q_toReg0;
    reg [0:0] SE_i_mptr_bitcast_index53_gaussian0_add_x_BitJoin_for_q_fromReg0;
    wire [0:0] SE_i_mptr_bitcast_index53_gaussian0_add_x_BitJoin_for_q_consumed0;
    wire [0:0] SE_i_mptr_bitcast_index53_gaussian0_add_x_BitJoin_for_q_toReg1;
    reg [0:0] SE_i_mptr_bitcast_index53_gaussian0_add_x_BitJoin_for_q_fromReg1;
    wire [0:0] SE_i_mptr_bitcast_index53_gaussian0_add_x_BitJoin_for_q_consumed1;
    wire [0:0] SE_i_mptr_bitcast_index53_gaussian0_add_x_BitJoin_for_q_and0;
    wire [0:0] SE_i_mptr_bitcast_index53_gaussian0_add_x_BitJoin_for_q_or0;
    wire [0:0] SE_i_mptr_bitcast_index53_gaussian0_add_x_BitJoin_for_q_backStall;
    wire [0:0] SE_i_mptr_bitcast_index53_gaussian0_add_x_BitJoin_for_q_V0;
    wire [0:0] SE_i_mptr_bitcast_index53_gaussian0_add_x_BitJoin_for_q_V1;
    reg [0:0] SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_R_v_0;
    reg [0:0] SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_R_v_1;
    wire [0:0] SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_v_s_0;
    wire [0:0] SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_s_tv_0;
    wire [0:0] SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_s_tv_1;
    wire [0:0] SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_backEN;
    wire [0:0] SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_or0;
    wire [0:0] SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_backStall;
    wire [0:0] SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_V0;
    wire [0:0] SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_V1;
    reg [0:0] SE_i_mul14_gaussian33_sums_result_add_0_0_p2_of_2_R_v_0;
    wire [0:0] SE_i_mul14_gaussian33_sums_result_add_0_0_p2_of_2_v_s_0;
    wire [0:0] SE_i_mul14_gaussian33_sums_result_add_0_0_p2_of_2_s_tv_0;
    wire [0:0] SE_i_mul14_gaussian33_sums_result_add_0_0_p2_of_2_backEN;
    wire [0:0] SE_i_mul14_gaussian33_sums_result_add_0_0_p2_of_2_and0;
    wire [0:0] SE_i_mul14_gaussian33_sums_result_add_0_0_p2_of_2_and1;
    wire [0:0] SE_i_mul14_gaussian33_sums_result_add_0_0_p2_of_2_backStall;
    wire [0:0] SE_i_mul14_gaussian33_sums_result_add_0_0_p2_of_2_V0;
    wire [0:0] SE_i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_tessel0_2_V0;
    wire [0:0] SE_i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_tessel0_2_V1;
    wire [0:0] SE_i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid;
    wire [0:0] SE_i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_BitJoin_for_b_and0;
    wire [0:0] SE_i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_BitJoin_for_b_backStall;
    wire [0:0] SE_i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_BitJoin_for_b_V0;
    wire [0:0] SE_i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_tessel1_0_V0;
    wire [0:0] SE_i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_tessel1_0_V1;
    wire [0:0] SE_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_a_BitJoin_for_c_wireValid;
    wire [0:0] SE_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_a_BitJoin_for_c_backStall;
    wire [0:0] SE_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_a_BitJoin_for_c_V0;
    wire [0:0] SE_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid;
    wire [0:0] SE_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_BitJoin_for_b_and0;
    wire [0:0] SE_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_BitJoin_for_b_backStall;
    wire [0:0] SE_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_BitJoin_for_b_V0;
    wire [0:0] SE_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_wireValid;
    wire [0:0] SE_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_and0;
    wire [0:0] SE_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_backStall;
    wire [0:0] SE_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_V0;
    wire [0:0] SE_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_V0;
    wire [0:0] SE_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_V1;
    wire [0:0] SE_join_for_coalesced_delay_1_wireValid;
    wire [0:0] SE_join_for_coalesced_delay_1_and0;
    wire [0:0] SE_join_for_coalesced_delay_1_backStall;
    wire [0:0] SE_join_for_coalesced_delay_1_V0;
    reg [0:0] SE_redist0_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_R_v_0;
    wire [0:0] SE_redist0_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_v_s_0;
    wire [0:0] SE_redist0_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_s_tv_0;
    wire [0:0] SE_redist0_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backEN;
    wire [0:0] SE_redist0_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backStall;
    wire [0:0] SE_redist0_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_V0;
    reg [0:0] SE_redist1_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_R_v_0;
    wire [0:0] SE_redist1_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_v_s_0;
    wire [0:0] SE_redist1_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_s_tv_0;
    wire [0:0] SE_redist1_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_backEN;
    wire [0:0] SE_redist1_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_backStall;
    wire [0:0] SE_redist1_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_V0;
    reg [0:0] SE_redist2_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_a_tessel1_0_b_1_0_R_v_0;
    wire [0:0] SE_redist2_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_a_tessel1_0_b_1_0_v_s_0;
    wire [0:0] SE_redist2_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_a_tessel1_0_b_1_0_s_tv_0;
    wire [0:0] SE_redist2_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_a_tessel1_0_b_1_0_backEN;
    wire [0:0] SE_redist2_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_a_tessel1_0_b_1_0_backStall;
    wire [0:0] SE_redist2_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_a_tessel1_0_b_1_0_V0;
    reg [0:0] SE_redist3_i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_R_v_0;
    wire [0:0] SE_redist3_i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_v_s_0;
    wire [0:0] SE_redist3_i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_s_tv_0;
    wire [0:0] SE_redist3_i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_backEN;
    wire [0:0] SE_redist3_i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_backStall;
    wire [0:0] SE_redist3_i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_V0;
    reg [0:0] SE_redist4_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_q_1_0_R_v_0;
    wire [0:0] SE_redist4_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_q_1_0_v_s_0;
    wire [0:0] SE_redist4_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_q_1_0_s_tv_0;
    wire [0:0] SE_redist4_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_q_1_0_backEN;
    wire [0:0] SE_redist4_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_q_1_0_backStall;
    wire [0:0] SE_redist4_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_q_1_0_V0;
    reg [0:0] SE_redist5_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_q_1_0_R_v_0;
    wire [0:0] SE_redist5_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_q_1_0_v_s_0;
    wire [0:0] SE_redist5_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_q_1_0_s_tv_0;
    wire [0:0] SE_redist5_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_q_1_0_backEN;
    wire [0:0] SE_redist5_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SE_redist5_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_q_1_0_V0;
    reg [0:0] SE_redist6_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_q_1_0_R_v_0;
    wire [0:0] SE_redist6_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_q_1_0_v_s_0;
    wire [0:0] SE_redist6_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_q_1_0_s_tv_0;
    wire [0:0] SE_redist6_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_q_1_0_backEN;
    wire [0:0] SE_redist6_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SE_redist6_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_q_1_0_V0;
    reg [0:0] SE_redist7_i_mul14_gaussian33_ma3_cma_q_1_0_R_v_0;
    wire [0:0] SE_redist7_i_mul14_gaussian33_ma3_cma_q_1_0_v_s_0;
    wire [0:0] SE_redist7_i_mul14_gaussian33_ma3_cma_q_1_0_s_tv_0;
    wire [0:0] SE_redist7_i_mul14_gaussian33_ma3_cma_q_1_0_backEN;
    wire [0:0] SE_redist7_i_mul14_gaussian33_ma3_cma_q_1_0_backStall;
    wire [0:0] SE_redist7_i_mul14_gaussian33_ma3_cma_q_1_0_V0;
    reg [0:0] SE_redist8_i_mul14_gaussian33_im8_cma_q_1_0_R_v_0;
    reg [0:0] SE_redist8_i_mul14_gaussian33_im8_cma_q_1_0_R_v_1;
    wire [0:0] SE_redist8_i_mul14_gaussian33_im8_cma_q_1_0_v_s_0;
    wire [0:0] SE_redist8_i_mul14_gaussian33_im8_cma_q_1_0_s_tv_0;
    wire [0:0] SE_redist8_i_mul14_gaussian33_im8_cma_q_1_0_s_tv_1;
    wire [0:0] SE_redist8_i_mul14_gaussian33_im8_cma_q_1_0_backEN;
    wire [0:0] SE_redist8_i_mul14_gaussian33_im8_cma_q_1_0_or0;
    wire [0:0] SE_redist8_i_mul14_gaussian33_im8_cma_q_1_0_backStall;
    wire [0:0] SE_redist8_i_mul14_gaussian33_im8_cma_q_1_0_V0;
    wire [0:0] SE_redist8_i_mul14_gaussian33_im8_cma_q_1_0_V1;
    reg [0:0] SE_redist9_i_mul14_gaussian33_im0_cma_q_1_0_R_v_0;
    wire [0:0] SE_redist9_i_mul14_gaussian33_im0_cma_q_1_0_v_s_0;
    wire [0:0] SE_redist9_i_mul14_gaussian33_im0_cma_q_1_0_s_tv_0;
    wire [0:0] SE_redist9_i_mul14_gaussian33_im0_cma_q_1_0_backEN;
    wire [0:0] SE_redist9_i_mul14_gaussian33_im0_cma_q_1_0_backStall;
    wire [0:0] SE_redist9_i_mul14_gaussian33_im0_cma_q_1_0_V0;
    reg [0:0] SE_redist10_i_masked_gaussian51_q_3_0_R_v_0;
    wire [0:0] SE_redist10_i_masked_gaussian51_q_3_0_v_s_0;
    wire [0:0] SE_redist10_i_masked_gaussian51_q_3_0_s_tv_0;
    wire [0:0] SE_redist10_i_masked_gaussian51_q_3_0_backEN;
    wire [0:0] SE_redist10_i_masked_gaussian51_q_3_0_backStall;
    wire [0:0] SE_redist10_i_masked_gaussian51_q_3_0_V0;
    reg [0:0] SE_redist10_i_masked_gaussian51_q_3_1_R_v_0;
    wire [0:0] SE_redist10_i_masked_gaussian51_q_3_1_v_s_0;
    wire [0:0] SE_redist10_i_masked_gaussian51_q_3_1_s_tv_0;
    wire [0:0] SE_redist10_i_masked_gaussian51_q_3_1_backEN;
    wire [0:0] SE_redist10_i_masked_gaussian51_q_3_1_backStall;
    wire [0:0] SE_redist10_i_masked_gaussian51_q_3_1_V0;
    reg [0:0] SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_0_R_v_0;
    wire [0:0] SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_0_v_s_0;
    wire [0:0] SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_0_s_tv_0;
    wire [0:0] SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_0_backEN;
    wire [0:0] SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_0_backStall;
    wire [0:0] SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_0_V0;
    reg [0:0] SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_1_R_v_0;
    wire [0:0] SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_1_v_s_0;
    wire [0:0] SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_1_s_tv_0;
    wire [0:0] SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_1_backEN;
    wire [0:0] SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_1_backStall;
    wire [0:0] SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_1_V0;
    reg [0:0] SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_2_R_v_0;
    wire [0:0] SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_2_v_s_0;
    wire [0:0] SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_2_s_tv_0;
    wire [0:0] SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_2_backEN;
    wire [0:0] SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_2_backStall;
    wire [0:0] SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_2_V0;
    reg [0:0] SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_3_R_v_0;
    wire [0:0] SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_3_v_s_0;
    wire [0:0] SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_3_s_tv_0;
    wire [0:0] SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_3_backEN;
    wire [0:0] SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_3_backStall;
    wire [0:0] SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_3_V0;
    reg [0:0] SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_4_R_v_0;
    reg [0:0] SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_4_R_v_1;
    wire [0:0] SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_4_v_s_0;
    wire [0:0] SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_4_s_tv_0;
    wire [0:0] SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_4_s_tv_1;
    wire [0:0] SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_4_backEN;
    wire [0:0] SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_4_or0;
    wire [0:0] SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_4_backStall;
    wire [0:0] SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_4_V0;
    wire [0:0] SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_4_V1;
    wire [0:0] SE_out_redist12_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_68_fifo_wireValid;
    wire [0:0] SE_out_redist12_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_68_fifo_and0;
    wire [0:0] SE_out_redist12_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_68_fifo_backStall;
    wire [0:0] SE_out_redist12_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_68_fifo_V0;
    reg [0:0] SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_0_R_v_0;
    wire [0:0] SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_0_v_s_0;
    wire [0:0] SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_0_s_tv_0;
    wire [0:0] SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_0_backEN;
    wire [0:0] SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_0_backStall;
    wire [0:0] SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_0_V0;
    reg [0:0] SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_1_R_v_0;
    wire [0:0] SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_1_v_s_0;
    wire [0:0] SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_1_s_tv_0;
    wire [0:0] SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_1_backEN;
    wire [0:0] SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_1_backStall;
    wire [0:0] SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_1_V0;
    reg [0:0] SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_2_R_v_0;
    wire [0:0] SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_2_v_s_0;
    wire [0:0] SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_2_s_tv_0;
    wire [0:0] SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_2_backEN;
    wire [0:0] SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_2_backStall;
    wire [0:0] SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_2_V0;
    reg [0:0] SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_3_R_v_0;
    wire [0:0] SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_3_v_s_0;
    wire [0:0] SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_3_s_tv_0;
    wire [0:0] SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_3_backEN;
    wire [0:0] SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_3_backStall;
    wire [0:0] SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_3_V0;
    reg [0:0] SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_R_v_0;
    reg [0:0] SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_R_v_1;
    wire [0:0] SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_v_s_0;
    wire [0:0] SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_s_tv_0;
    wire [0:0] SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_s_tv_1;
    wire [0:0] SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_backEN;
    wire [0:0] SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_or0;
    wire [0:0] SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_backStall;
    wire [0:0] SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_V0;
    wire [0:0] SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_V1;
    wire [0:0] SE_out_redist14_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_68_fifo_wireValid;
    wire [0:0] SE_out_redist14_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_68_fifo_and0;
    wire [0:0] SE_out_redist14_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_68_fifo_backStall;
    wire [0:0] SE_out_redist14_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_68_fifo_V0;
    reg [0:0] SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_0_R_v_0;
    wire [0:0] SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_0_v_s_0;
    wire [0:0] SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_0_s_tv_0;
    wire [0:0] SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_0_backEN;
    wire [0:0] SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_0_backStall;
    wire [0:0] SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_0_V0;
    reg [0:0] SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_1_R_v_0;
    wire [0:0] SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_1_v_s_0;
    wire [0:0] SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_1_s_tv_0;
    wire [0:0] SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_1_backEN;
    wire [0:0] SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_1_backStall;
    wire [0:0] SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_1_V0;
    reg [0:0] SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_2_R_v_0;
    reg [0:0] SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_2_R_v_1;
    wire [0:0] SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_2_v_s_0;
    wire [0:0] SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_2_s_tv_0;
    wire [0:0] SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_2_s_tv_1;
    wire [0:0] SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_2_backEN;
    wire [0:0] SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_2_or0;
    wire [0:0] SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_2_backStall;
    wire [0:0] SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_2_V0;
    wire [0:0] SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_2_V1;
    reg [0:0] SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_0_R_v_0;
    wire [0:0] SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_0_v_s_0;
    wire [0:0] SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_0_s_tv_0;
    wire [0:0] SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_0_backEN;
    wire [0:0] SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_0_backStall;
    wire [0:0] SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_0_V0;
    reg [0:0] SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_1_R_v_0;
    wire [0:0] SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_1_v_s_0;
    wire [0:0] SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_1_s_tv_0;
    wire [0:0] SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_1_backEN;
    wire [0:0] SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_1_backStall;
    wire [0:0] SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_1_V0;
    reg [0:0] SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_2_R_v_0;
    wire [0:0] SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_2_v_s_0;
    wire [0:0] SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_2_s_tv_0;
    wire [0:0] SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_2_backEN;
    wire [0:0] SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_2_backStall;
    wire [0:0] SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_2_V0;
    reg [0:0] SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_3_R_v_0;
    wire [0:0] SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_3_v_s_0;
    wire [0:0] SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_3_s_tv_0;
    wire [0:0] SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_3_backEN;
    wire [0:0] SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_3_backStall;
    wire [0:0] SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_3_V0;
    reg [0:0] SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_R_v_0;
    reg [0:0] SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_R_v_1;
    wire [0:0] SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_v_s_0;
    wire [0:0] SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_s_tv_0;
    wire [0:0] SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_s_tv_1;
    wire [0:0] SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_backEN;
    wire [0:0] SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_or0;
    wire [0:0] SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_backStall;
    wire [0:0] SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_V0;
    wire [0:0] SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_V1;
    wire [0:0] SE_out_redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_68_fifo_wireValid;
    wire [0:0] SE_out_redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_68_fifo_and0;
    wire [0:0] SE_out_redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_68_fifo_backStall;
    wire [0:0] SE_out_redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_68_fifo_V0;
    reg [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_0_R_v_0;
    wire [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_0_v_s_0;
    wire [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_0_s_tv_0;
    wire [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_0_backEN;
    wire [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_0_backStall;
    wire [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_0_V0;
    reg [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_R_v_0;
    reg [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_R_v_1;
    wire [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_v_s_0;
    wire [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_s_tv_0;
    wire [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_s_tv_1;
    wire [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_backEN;
    wire [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_or0;
    wire [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_backStall;
    wire [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_V0;
    wire [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_V1;
    reg [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_R_v_0;
    reg [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_R_v_1;
    reg [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_R_v_2;
    reg [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_R_v_3;
    wire [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_v_s_0;
    wire [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_s_tv_0;
    wire [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_s_tv_1;
    wire [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_s_tv_2;
    wire [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_s_tv_3;
    wire [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_backEN;
    wire [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_or0;
    wire [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_or1;
    wire [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_or2;
    wire [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_backStall;
    wire [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_V0;
    wire [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_V1;
    wire [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_V2;
    wire [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_V3;
    reg [0:0] SE_redist21_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_1_0_R_v_0;
    reg [0:0] SE_redist21_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_1_0_R_v_1;
    wire [0:0] SE_redist21_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_1_0_v_s_0;
    wire [0:0] SE_redist21_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_1_0_s_tv_0;
    wire [0:0] SE_redist21_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_1_0_s_tv_1;
    wire [0:0] SE_redist21_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_1_0_backEN;
    wire [0:0] SE_redist21_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_1_0_or0;
    wire [0:0] SE_redist21_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_1_0_backStall;
    wire [0:0] SE_redist21_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_1_0_V0;
    wire [0:0] SE_redist21_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_1_0_V1;
    reg [0:0] SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_0_R_v_0;
    wire [0:0] SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_0_v_s_0;
    wire [0:0] SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_0_s_tv_0;
    wire [0:0] SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_0_backEN;
    wire [0:0] SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_0_backStall;
    wire [0:0] SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_0_V0;
    reg [0:0] SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_1_R_v_0;
    wire [0:0] SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_1_v_s_0;
    wire [0:0] SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_1_s_tv_0;
    wire [0:0] SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_1_backEN;
    wire [0:0] SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_1_backStall;
    wire [0:0] SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_1_V0;
    reg [0:0] SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_2_R_v_0;
    wire [0:0] SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_2_v_s_0;
    wire [0:0] SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_2_s_tv_0;
    wire [0:0] SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_2_backEN;
    wire [0:0] SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_2_backStall;
    wire [0:0] SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_2_V0;
    reg [0:0] SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_R_v_0;
    reg [0:0] SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_R_v_1;
    wire [0:0] SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_v_s_0;
    wire [0:0] SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_s_tv_0;
    wire [0:0] SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_s_tv_1;
    wire [0:0] SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_backEN;
    wire [0:0] SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_or0;
    wire [0:0] SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_backStall;
    wire [0:0] SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_V0;
    wire [0:0] SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_V1;
    reg [0:0] SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_0_R_v_0;
    wire [0:0] SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_0_v_s_0;
    wire [0:0] SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_0_s_tv_0;
    wire [0:0] SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_0_backEN;
    wire [0:0] SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_0_backStall;
    wire [0:0] SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_0_V0;
    reg [0:0] SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_1_R_v_0;
    wire [0:0] SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_1_v_s_0;
    wire [0:0] SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_1_s_tv_0;
    wire [0:0] SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_1_backEN;
    wire [0:0] SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_1_backStall;
    wire [0:0] SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_1_V0;
    reg [0:0] SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_2_R_v_0;
    wire [0:0] SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_2_v_s_0;
    wire [0:0] SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_2_s_tv_0;
    wire [0:0] SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_2_backEN;
    wire [0:0] SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_2_backStall;
    wire [0:0] SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_2_V0;
    reg [0:0] SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_0_R_v_0;
    wire [0:0] SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_0_v_s_0;
    wire [0:0] SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_0_s_tv_0;
    wire [0:0] SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_0_backEN;
    wire [0:0] SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_0_backStall;
    wire [0:0] SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_0_V0;
    reg [0:0] SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_1_R_v_0;
    wire [0:0] SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_1_v_s_0;
    wire [0:0] SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_1_s_tv_0;
    wire [0:0] SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_1_backEN;
    wire [0:0] SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_1_backStall;
    wire [0:0] SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_1_V0;
    reg [0:0] SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_2_R_v_0;
    wire [0:0] SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_2_v_s_0;
    wire [0:0] SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_2_s_tv_0;
    wire [0:0] SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_2_backEN;
    wire [0:0] SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_2_backStall;
    wire [0:0] SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_2_V0;
    reg [0:0] SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_3_R_v_0;
    wire [0:0] SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_3_v_s_0;
    wire [0:0] SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_3_s_tv_0;
    wire [0:0] SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_3_backEN;
    wire [0:0] SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_3_backStall;
    wire [0:0] SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_3_V0;
    reg [0:0] SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_R_v_0;
    reg [0:0] SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_R_v_1;
    wire [0:0] SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_v_s_0;
    wire [0:0] SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_s_tv_0;
    wire [0:0] SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_s_tv_1;
    wire [0:0] SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_backEN;
    wire [0:0] SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_or0;
    wire [0:0] SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_backStall;
    wire [0:0] SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_V0;
    wire [0:0] SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_V1;
    wire [0:0] SE_out_redist26_i_first_cleanup_xor_gaussian2_q_65_fifo_wireValid;
    wire [0:0] SE_out_redist26_i_first_cleanup_xor_gaussian2_q_65_fifo_and0;
    wire [0:0] SE_out_redist26_i_first_cleanup_xor_gaussian2_q_65_fifo_and1;
    wire [0:0] SE_out_redist26_i_first_cleanup_xor_gaussian2_q_65_fifo_and2;
    wire [0:0] SE_out_redist26_i_first_cleanup_xor_gaussian2_q_65_fifo_backStall;
    wire [0:0] SE_out_redist26_i_first_cleanup_xor_gaussian2_q_65_fifo_V0;
    wire [0:0] SE_out_redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_wireValid;
    wire [0:0] SE_out_redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_wireStall;
    wire [0:0] SE_out_redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_StallValid;
    wire [0:0] SE_out_redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_toReg0;
    reg [0:0] SE_out_redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_fromReg0;
    wire [0:0] SE_out_redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_consumed0;
    wire [0:0] SE_out_redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_toReg1;
    reg [0:0] SE_out_redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_fromReg1;
    wire [0:0] SE_out_redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_consumed1;
    wire [0:0] SE_out_redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_or0;
    wire [0:0] SE_out_redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_backStall;
    wire [0:0] SE_out_redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_V0;
    wire [0:0] SE_out_redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_V1;
    reg [0:0] SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_R_v_0;
    reg [0:0] SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_R_v_1;
    wire [0:0] SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_v_s_0;
    wire [0:0] SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_s_tv_0;
    wire [0:0] SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_s_tv_1;
    wire [0:0] SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_backEN;
    wire [0:0] SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_or0;
    wire [0:0] SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_backStall;
    wire [0:0] SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_V0;
    wire [0:0] SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_V1;
    reg [0:0] SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_R_v_0;
    wire [0:0] SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_v_s_0;
    wire [0:0] SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_s_tv_0;
    wire [0:0] SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_backEN;
    wire [0:0] SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_backStall;
    wire [0:0] SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_V0;
    reg [0:0] SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_R_v_0;
    reg [0:0] SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_R_v_1;
    reg [0:0] SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_R_v_2;
    wire [0:0] SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_v_s_0;
    wire [0:0] SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_s_tv_0;
    wire [0:0] SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_s_tv_1;
    wire [0:0] SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_s_tv_2;
    wire [0:0] SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_backEN;
    wire [0:0] SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_or0;
    wire [0:0] SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_or1;
    wire [0:0] SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_backStall;
    wire [0:0] SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_V0;
    wire [0:0] SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_V1;
    wire [0:0] SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_V2;
    wire [0:0] SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_wireValid;
    wire [0:0] SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_wireStall;
    wire [0:0] SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_StallValid;
    wire [0:0] SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_toReg0;
    reg [0:0] SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_fromReg0;
    wire [0:0] SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_consumed0;
    wire [0:0] SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_toReg1;
    reg [0:0] SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_fromReg1;
    wire [0:0] SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_consumed1;
    wire [0:0] SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_toReg2;
    reg [0:0] SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_fromReg2;
    wire [0:0] SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_consumed2;
    wire [0:0] SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_or0;
    wire [0:0] SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_or1;
    wire [0:0] SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_backStall;
    wire [0:0] SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_V0;
    wire [0:0] SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_V1;
    wire [0:0] SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_V2;
    reg [0:0] SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_0_R_v_0;
    wire [0:0] SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_0_v_s_0;
    wire [0:0] SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_0_s_tv_0;
    wire [0:0] SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_0_backEN;
    wire [0:0] SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_0_backStall;
    wire [0:0] SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_0_V0;
    reg [0:0] SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_R_v_0;
    reg [0:0] SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_R_v_1;
    wire [0:0] SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_v_s_0;
    wire [0:0] SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_s_tv_0;
    wire [0:0] SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_s_tv_1;
    wire [0:0] SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_backEN;
    wire [0:0] SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_or0;
    wire [0:0] SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_backStall;
    wire [0:0] SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_V0;
    wire [0:0] SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_V1;
    reg [0:0] SE_redist32_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_R_v_0;
    reg [0:0] SE_redist32_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_R_v_1;
    wire [0:0] SE_redist32_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_v_s_0;
    wire [0:0] SE_redist32_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_s_tv_0;
    wire [0:0] SE_redist32_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_s_tv_1;
    wire [0:0] SE_redist32_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_backEN;
    wire [0:0] SE_redist32_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_or0;
    wire [0:0] SE_redist32_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_backStall;
    wire [0:0] SE_redist32_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_V0;
    wire [0:0] SE_redist32_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_V1;
    wire [0:0] SE_out_redist35_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_70_fifo_wireValid;
    wire [0:0] SE_out_redist35_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_70_fifo_and0;
    wire [0:0] SE_out_redist35_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_70_fifo_backStall;
    wire [0:0] SE_out_redist35_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_70_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_StallValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_toReg0;
    reg [0:0] SE_out_coalesced_delay_0_fifo_fromReg0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_consumed0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_toReg1;
    reg [0:0] SE_out_coalesced_delay_0_fifo_fromReg1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_consumed1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_or0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V1;
    wire [0:0] SE_out_coalesced_delay_1_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_1_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_and1;
    wire [0:0] SE_out_coalesced_delay_1_fifo_and2;
    wire [0:0] SE_out_coalesced_delay_1_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_1_fifo_V0;
    wire [0:0] SE_out_bubble_out_gaussian_B7_merge_reg_aunroll_x_3_wireValid;
    wire [0:0] SE_out_bubble_out_gaussian_B7_merge_reg_aunroll_x_3_backStall;
    wire [0:0] SE_out_bubble_out_gaussian_B7_merge_reg_aunroll_x_3_V0;
    wire [0:0] SE_out_bubble_out_gaussian_B7_merge_reg_aunroll_x_5_wireValid;
    wire [0:0] SE_out_bubble_out_gaussian_B7_merge_reg_aunroll_x_5_backStall;
    wire [0:0] SE_out_bubble_out_gaussian_B7_merge_reg_aunroll_x_5_V0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_and0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_and1;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_and2;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_and3;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_and4;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_and5;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_and6;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_and7;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_and8;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_backStall;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_V0;
    wire [0:0] SE_out_bubble_out_i_mul14_gaussian33_im0_cma_data_wireValid;
    wire [0:0] SE_out_bubble_out_i_mul14_gaussian33_im0_cma_data_backStall;
    wire [0:0] SE_out_bubble_out_i_mul14_gaussian33_im0_cma_data_V0;
    wire [0:0] SE_out_bubble_out_i_mul14_gaussian33_im8_cma_data_wireValid;
    wire [0:0] SE_out_bubble_out_i_mul14_gaussian33_im8_cma_data_backStall;
    wire [0:0] SE_out_bubble_out_i_mul14_gaussian33_im8_cma_data_V0;
    wire [0:0] SE_out_bubble_out_i_mul14_gaussian33_ma3_cma_data_wireValid;
    wire [0:0] SE_out_bubble_out_i_mul14_gaussian33_ma3_cma_data_backStall;
    wire [0:0] SE_out_bubble_out_i_mul14_gaussian33_ma3_cma_data_V0;
    wire [0:0] bubble_out_gaussian_B7_merge_reg_aunroll_x_3_reg_valid_in;
    wire bubble_out_gaussian_B7_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_gaussian_B7_merge_reg_aunroll_x_3_reg_stall_in;
    wire bubble_out_gaussian_B7_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_gaussian_B7_merge_reg_aunroll_x_3_reg_valid_out;
    wire bubble_out_gaussian_B7_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_gaussian_B7_merge_reg_aunroll_x_3_reg_stall_out;
    wire bubble_out_gaussian_B7_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_gaussian_B7_merge_reg_aunroll_x_5_reg_valid_in;
    wire bubble_out_gaussian_B7_merge_reg_aunroll_x_5_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_gaussian_B7_merge_reg_aunroll_x_5_reg_stall_in;
    wire bubble_out_gaussian_B7_merge_reg_aunroll_x_5_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_gaussian_B7_merge_reg_aunroll_x_5_reg_valid_out;
    wire bubble_out_gaussian_B7_merge_reg_aunroll_x_5_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_gaussian_B7_merge_reg_aunroll_x_5_reg_stall_out;
    wire bubble_out_gaussian_B7_merge_reg_aunroll_x_5_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_gaussian4_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_gaussian4_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_gaussian4_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_gaussian4_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_gaussian4_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_gaussian4_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_gaussian4_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_gaussian4_1_reg_stall_out_bitsignaltemp;
    reg [0:0] bubble_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_1_reg_V0;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_mul14_gaussian33_im0_cma_data_reg_valid_in;
    wire bubble_out_i_mul14_gaussian33_im0_cma_data_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_mul14_gaussian33_im0_cma_data_reg_stall_in;
    wire bubble_out_i_mul14_gaussian33_im0_cma_data_reg_stall_in_bitsignaltemp;
    wire [35:0] bubble_out_i_mul14_gaussian33_im0_cma_data_reg_data_in;
    wire [0:0] bubble_out_i_mul14_gaussian33_im0_cma_data_reg_valid_out;
    wire bubble_out_i_mul14_gaussian33_im0_cma_data_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_mul14_gaussian33_im0_cma_data_reg_stall_out;
    wire bubble_out_i_mul14_gaussian33_im0_cma_data_reg_stall_out_bitsignaltemp;
    wire [35:0] bubble_out_i_mul14_gaussian33_im0_cma_data_reg_data_out;
    wire [0:0] bubble_out_i_mul14_gaussian33_im8_cma_data_reg_valid_in;
    wire bubble_out_i_mul14_gaussian33_im8_cma_data_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_mul14_gaussian33_im8_cma_data_reg_stall_in;
    wire bubble_out_i_mul14_gaussian33_im8_cma_data_reg_stall_in_bitsignaltemp;
    wire [27:0] bubble_out_i_mul14_gaussian33_im8_cma_data_reg_data_in;
    wire [0:0] bubble_out_i_mul14_gaussian33_im8_cma_data_reg_valid_out;
    wire bubble_out_i_mul14_gaussian33_im8_cma_data_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_mul14_gaussian33_im8_cma_data_reg_stall_out;
    wire bubble_out_i_mul14_gaussian33_im8_cma_data_reg_stall_out_bitsignaltemp;
    wire [27:0] bubble_out_i_mul14_gaussian33_im8_cma_data_reg_data_out;
    wire [0:0] bubble_out_i_mul14_gaussian33_ma3_cma_data_reg_valid_in;
    wire bubble_out_i_mul14_gaussian33_ma3_cma_data_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_mul14_gaussian33_ma3_cma_data_reg_stall_in;
    wire bubble_out_i_mul14_gaussian33_ma3_cma_data_reg_stall_in_bitsignaltemp;
    wire [32:0] bubble_out_i_mul14_gaussian33_ma3_cma_data_reg_data_in;
    wire [0:0] bubble_out_i_mul14_gaussian33_ma3_cma_data_reg_valid_out;
    wire bubble_out_i_mul14_gaussian33_ma3_cma_data_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_mul14_gaussian33_ma3_cma_data_reg_stall_out;
    wire bubble_out_i_mul14_gaussian33_ma3_cma_data_reg_stall_out_bitsignaltemp;
    wire [32:0] bubble_out_i_mul14_gaussian33_ma3_cma_data_reg_data_out;
    wire [0:0] SR_SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_i_valid;
    reg [0:0] SR_SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_r_valid;
    reg [0:0] SR_SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_r_data0;
    wire [0:0] SR_SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_backStall;
    wire [0:0] SR_SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_V;
    wire [0:0] SR_SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_D0;
    wire [0:0] SR_SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_i_valid;
    reg [0:0] SR_SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_r_valid;
    reg [0:0] SR_SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_r_data0;
    wire [0:0] SR_SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_backStall;
    wire [0:0] SR_SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_V;
    wire [0:0] SR_SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_D0;
    wire [0:0] SR_SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_i_valid;
    reg [0:0] SR_SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_r_valid;
    reg [0:0] SR_SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_r_data0;
    reg [0:0] SR_SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_r_data1;
    reg [0:0] SR_SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_r_data2;
    wire [0:0] SR_SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_backStall;
    wire [0:0] SR_SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_V;
    wire [0:0] SR_SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_D0;
    wire [0:0] SR_SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_D1;
    wire [0:0] SR_SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_D2;
    wire [0:0] SR_SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_i_valid;
    reg [0:0] SR_SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_r_valid;
    reg [0:0] SR_SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_r_data0;
    wire [0:0] SR_SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_backStall;
    wire [0:0] SR_SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_V;
    wire [0:0] SR_SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_D0;
    wire [0:0] SR_SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_i_valid;
    reg [0:0] SR_SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_r_valid;
    reg [0:0] SR_SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_r_data0;
    wire [0:0] SR_SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_backStall;
    wire [0:0] SR_SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_V;
    wire [0:0] SR_SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_D0;
    wire [0:0] SR_SE_i_masked_gaussian51_i_valid;
    reg [0:0] SR_SE_i_masked_gaussian51_r_valid;
    wire [0:0] SR_SE_i_masked_gaussian51_and0;
    reg [0:0] SR_SE_i_masked_gaussian51_r_data0;
    reg [0:0] SR_SE_i_masked_gaussian51_r_data1;
    wire [0:0] SR_SE_i_masked_gaussian51_backStall;
    wire [0:0] SR_SE_i_masked_gaussian51_V;
    wire [0:0] SR_SE_i_masked_gaussian51_D0;
    wire [0:0] SR_SE_i_masked_gaussian51_D1;
    wire [0:0] SR_SE_redist10_i_masked_gaussian51_q_3_1_i_valid;
    reg [0:0] SR_SE_redist10_i_masked_gaussian51_q_3_1_r_valid;
    reg [0:0] SR_SE_redist10_i_masked_gaussian51_q_3_1_r_data0;
    wire [0:0] SR_SE_redist10_i_masked_gaussian51_q_3_1_backStall;
    wire [0:0] SR_SE_redist10_i_masked_gaussian51_q_3_1_V;
    wire [0:0] SR_SE_redist10_i_masked_gaussian51_q_3_1_D0;
    wire [0:0] SR_SE_out_coalesced_delay_0_fifo_i_valid;
    reg [0:0] SR_SE_out_coalesced_delay_0_fifo_r_valid;
    wire [0:0] SR_SE_out_coalesced_delay_0_fifo_and0;
    reg [0:0] SR_SE_out_coalesced_delay_0_fifo_r_data0;
    reg [0:0] SR_SE_out_coalesced_delay_0_fifo_r_data1;
    reg [0:0] SR_SE_out_coalesced_delay_0_fifo_r_data2;
    reg [0:0] SR_SE_out_coalesced_delay_0_fifo_r_data3;
    wire [0:0] SR_SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SR_SE_out_coalesced_delay_0_fifo_V;
    wire [0:0] SR_SE_out_coalesced_delay_0_fifo_D0;
    wire [0:0] SR_SE_out_coalesced_delay_0_fifo_D1;
    wire [0:0] SR_SE_out_coalesced_delay_0_fifo_D2;
    wire [0:0] SR_SE_out_coalesced_delay_0_fifo_D3;
    wire [0:0] SR_SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_1_i_valid;
    reg [0:0] SR_SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_1_r_valid;
    reg [63:0] SR_SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_1_r_data0;
    wire [0:0] SR_SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_1_backStall;
    wire [0:0] SR_SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_1_V;
    wire [63:0] SR_SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_1_D0;
    wire [0:0] SR_SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_i_valid;
    reg [0:0] SR_SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_r_valid;
    reg [63:0] SR_SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_r_data0;
    wire [0:0] SR_SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_backStall;
    wire [0:0] SR_SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_V;
    wire [63:0] SR_SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_D0;
    wire [0:0] SR_SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_3_i_valid;
    reg [0:0] SR_SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_3_r_valid;
    reg [31:0] SR_SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_3_r_data0;
    wire [0:0] SR_SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_3_backStall;
    wire [0:0] SR_SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_3_V;
    wire [31:0] SR_SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_3_D0;
    wire [0:0] SR_SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_2_i_valid;
    reg [0:0] SR_SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_2_r_valid;
    reg [31:0] SR_SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_2_r_data0;
    wire [0:0] SR_SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_2_backStall;
    wire [0:0] SR_SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_2_V;
    wire [31:0] SR_SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_2_D0;
    wire [0:0] SR_SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_i_valid;
    reg [0:0] SR_SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_r_valid;
    reg [31:0] SR_SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_r_data0;
    wire [0:0] SR_SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_backStall;
    wire [0:0] SR_SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_V;
    wire [31:0] SR_SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_D0;
    wire [0:0] SR_SE_redist1_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_i_valid;
    reg [0:0] SR_SE_redist1_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_r_valid;
    reg [31:0] SR_SE_redist1_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_r_data0;
    wire [0:0] SR_SE_redist1_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_backStall;
    wire [0:0] SR_SE_redist1_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_V;
    wire [31:0] SR_SE_redist1_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_D0;
    wire [0:0] SR_SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_r_valid;
    wire [0:0] SR_SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_and0;
    wire [0:0] SR_SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_and1;
    reg [4:0] SR_SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_r_data0;
    reg [4:0] SR_SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_r_data2;
    wire [0:0] SR_SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_backStall;
    wire [0:0] SR_SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_V;
    wire [4:0] SR_SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_D0;
    wire [4:0] SR_SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_D1;
    wire [0:0] SR_SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_D2;
    wire [0:0] SR_SE_redist5_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_q_1_0_i_valid;
    reg [0:0] SR_SE_redist5_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_q_1_0_r_valid;
    reg [59:0] SR_SE_redist5_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_q_1_0_r_data0;
    wire [0:0] SR_SE_redist5_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SR_SE_redist5_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_q_1_0_V;
    wire [59:0] SR_SE_redist5_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_q_1_0_D0;
    wire [0:0] SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_0_i_valid;
    reg [0:0] SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_0_r_valid;
    reg [0:0] SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_0_r_data0;
    wire [0:0] SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_0_backStall;
    wire [0:0] SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_0_V;
    wire [0:0] SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_0_D0;
    wire [0:0] SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_2_i_valid;
    reg [0:0] SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_2_r_valid;
    reg [0:0] SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_2_r_data0;
    wire [0:0] SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_2_backStall;
    wire [0:0] SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_2_V;
    wire [0:0] SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_2_D0;
    wire [0:0] SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_i_valid;
    reg [0:0] SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_r_valid;
    reg [0:0] SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_r_data0;
    wire [0:0] SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_backStall;
    wire [0:0] SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_V;
    wire [0:0] SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_D0;
    wire [0:0] SR_SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_i_valid;
    reg [0:0] SR_SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_r_valid;
    wire [0:0] SR_SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_and0;
    wire [0:0] SR_SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_and1;
    reg [63:0] SR_SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_r_data0;
    reg [0:0] SR_SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_r_data1;
    reg [0:0] SR_SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_r_data2;
    wire [0:0] SR_SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_backStall;
    wire [0:0] SR_SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_V;
    wire [63:0] SR_SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_D0;
    wire [0:0] SR_SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_D1;
    wire [0:0] SR_SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_D2;
    wire [0:0] SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_r_valid;
    wire [0:0] SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_and0;
    wire [0:0] SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_and1;
    reg [4:0] SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_r_data0;
    reg [4:0] SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_r_data2;
    wire [0:0] SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_backStall;
    wire [0:0] SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_V;
    wire [4:0] SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_D0;
    wire [4:0] SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_D1;
    wire [0:0] SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_D2;
    wire [0:0] SR_SE_redist6_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_q_1_0_i_valid;
    reg [0:0] SR_SE_redist6_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_q_1_0_r_valid;
    reg [59:0] SR_SE_redist6_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_q_1_0_r_data0;
    wire [0:0] SR_SE_redist6_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SR_SE_redist6_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_q_1_0_V;
    wire [59:0] SR_SE_redist6_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_q_1_0_D0;
    wire [0:0] SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q_i_valid;
    reg [0:0] SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q_r_valid;
    wire [0:0] SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q_and0;
    wire [0:0] SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q_and1;
    wire [0:0] SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q_and2;
    reg [63:0] SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q_r_data0;
    reg [0:0] SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q_r_data1;
    reg [0:0] SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q_r_data2;
    wire [0:0] SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q_backStall;
    wire [0:0] SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q_V;
    wire [63:0] SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q_D0;
    wire [0:0] SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q_D1;
    wire [0:0] SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q_D2;
    wire [0:0] SR_SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_i_valid;
    reg [0:0] SR_SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_r_valid;
    wire [0:0] SR_SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_and0;
    reg [59:0] SR_SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_r_data0;
    reg [59:0] SR_SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_r_data1;
    wire [0:0] SR_SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_backStall;
    wire [0:0] SR_SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_V;
    wire [59:0] SR_SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_D0;
    wire [59:0] SR_SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_D1;
    wire [0:0] SR_SE_redist0_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_i_valid;
    reg [0:0] SR_SE_redist0_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_r_valid;
    reg [3:0] SR_SE_redist0_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_r_data0;
    wire [0:0] SR_SE_redist0_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backStall;
    wire [0:0] SR_SE_redist0_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_V;
    wire [3:0] SR_SE_redist0_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_D0;
    wire [0:0] SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_0_i_valid;
    reg [0:0] SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_0_r_valid;
    reg [0:0] SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_0_r_data0;
    wire [0:0] SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_0_backStall;
    wire [0:0] SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_0_V;
    wire [0:0] SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_0_D0;
    wire [0:0] SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_2_i_valid;
    reg [0:0] SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_2_r_valid;
    reg [0:0] SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_2_r_data0;
    wire [0:0] SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_2_backStall;
    wire [0:0] SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_2_V;
    wire [0:0] SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_2_D0;
    wire [0:0] SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_i_valid;
    reg [0:0] SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_r_valid;
    reg [0:0] SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_r_data0;
    wire [0:0] SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_backStall;
    wire [0:0] SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_V;
    wire [0:0] SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_D0;
    wire [0:0] SR_SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_i_valid;
    reg [0:0] SR_SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_r_valid;
    reg [0:0] SR_SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_r_data0;
    wire [0:0] SR_SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_backStall;
    wire [0:0] SR_SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_V;
    wire [0:0] SR_SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_D0;
    wire [0:0] SR_SE_i_next_initerations_gaussian6_vt_select_0_i_valid;
    reg [0:0] SR_SE_i_next_initerations_gaussian6_vt_select_0_r_valid;
    wire [0:0] SR_SE_i_next_initerations_gaussian6_vt_select_0_and0;
    reg [0:0] SR_SE_i_next_initerations_gaussian6_vt_select_0_r_data0;
    reg [0:0] SR_SE_i_next_initerations_gaussian6_vt_select_0_r_data1;
    reg [0:0] SR_SE_i_next_initerations_gaussian6_vt_select_0_r_data2;
    reg [1:0] SR_SE_i_next_initerations_gaussian6_vt_select_0_r_data3;
    wire [0:0] SR_SE_i_next_initerations_gaussian6_vt_select_0_backStall;
    wire [0:0] SR_SE_i_next_initerations_gaussian6_vt_select_0_V;
    wire [0:0] SR_SE_i_next_initerations_gaussian6_vt_select_0_D0;
    wire [0:0] SR_SE_i_next_initerations_gaussian6_vt_select_0_D1;
    wire [0:0] SR_SE_i_next_initerations_gaussian6_vt_select_0_D2;
    wire [1:0] SR_SE_i_next_initerations_gaussian6_vt_select_0_D3;


    // join_for_coalesced_delay_1(BITJOIN,356)
    assign join_for_coalesced_delay_1_q = {redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_q, i_mptr_bitcast_index53_gaussian0_dupName_0_trunc_sel_x_b};

    // coalesced_delay_1_fifo(STALLFIFO,419)
    assign coalesced_delay_1_fifo_valid_in = SE_join_for_coalesced_delay_1_V0;
    assign coalesced_delay_1_fifo_stall_in = SE_out_coalesced_delay_1_fifo_backStall;
    assign coalesced_delay_1_fifo_data_in = join_for_coalesced_delay_1_q;
    assign coalesced_delay_1_fifo_valid_in_bitsignaltemp = coalesced_delay_1_fifo_valid_in[0];
    assign coalesced_delay_1_fifo_stall_in_bitsignaltemp = coalesced_delay_1_fifo_stall_in[0];
    assign coalesced_delay_1_fifo_valid_out[0] = coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_1_fifo_stall_out[0] = coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(65),
        .IMPL("ram")
    ) thecoalesced_delay_1_fifo (
        .valid_in(coalesced_delay_1_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_1_fifo_stall_in_bitsignaltemp),
        .data_in(join_for_coalesced_delay_1_q),
        .valid_out(coalesced_delay_1_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_1_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_1_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_join_for_coalesced_delay_1(STALLENABLE,678)
    // Valid signal propagation
    assign SE_join_for_coalesced_delay_1_V0 = SE_join_for_coalesced_delay_1_wireValid;
    // Backward Stall generation
    assign SE_join_for_coalesced_delay_1_backStall = coalesced_delay_1_fifo_stall_out | ~ (SE_join_for_coalesced_delay_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_join_for_coalesced_delay_1_and0 = SE_i_mptr_bitcast_index53_gaussian0_add_x_BitJoin_for_q_V1;
    assign SE_join_for_coalesced_delay_1_wireValid = SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_V1 & SE_join_for_coalesced_delay_1_and0;

    // SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_2(STALLENABLE,731)
    // Valid signal propagation
    assign SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_2_V0 = SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_2_R_v_0;
    // Stall signal propagation
    assign SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_2_s_tv_0 = SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_3_backStall & SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_2_R_v_0;
    // Backward Enable generation
    assign SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_2_backEN = ~ (SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_2_v_s_0 = SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_2_backEN & SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_2_V;
    // Backward Stall generation
    assign SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_2_backStall = ~ (SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_2_backEN == 1'b0)
            begin
                SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_2_R_v_0 <= SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_2_R_v_0 & SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_2_s_tv_0;
            end
            else
            begin
                SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_2_R_v_0 <= SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_2_v_s_0;
            end

        end
    end

    // SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_0(STALLENABLE,729)
    // Valid signal propagation
    assign SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_0_V0 = SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_0_R_v_0;
    // Stall signal propagation
    assign SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_0_s_tv_0 = SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_1_backStall & SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_0_R_v_0;
    // Backward Enable generation
    assign SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_0_backEN = ~ (SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_0_v_s_0 = SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_0_backEN & SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_0_V;
    // Backward Stall generation
    assign SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_0_backStall = ~ (SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_0_backEN == 1'b0)
            begin
                SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_0_R_v_0 <= SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_0_R_v_0 & SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_0_s_tv_0;
            end
            else
            begin
                SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_0_R_v_0 <= SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_0_v_s_0;
            end

        end
    end

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // bubble_join_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo(BITJOIN,531)
    assign bubble_join_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_q = redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_data_out;

    // bubble_select_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo(BITSELECT,532)
    assign bubble_select_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_b = $unsigned(bubble_join_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_q[0:0]);

    // bubble_join_i_llvm_fpga_pipeline_keep_going_gaussian4(BITJOIN,458)
    assign bubble_join_i_llvm_fpga_pipeline_keep_going_gaussian4_q = i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out;

    // bubble_select_i_llvm_fpga_pipeline_keep_going_gaussian4(BITSELECT,459)
    assign bubble_select_i_llvm_fpga_pipeline_keep_going_gaussian4_b = $unsigned(bubble_join_i_llvm_fpga_pipeline_keep_going_gaussian4_q[0:0]);

    // redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_0(REG,392)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_0_backEN == 1'b1)
        begin
            redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_0_q <= $unsigned(bubble_select_i_llvm_fpga_pipeline_keep_going_gaussian4_b);
        end
    end

    // redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1(REG,393)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_backEN == 1'b1)
        begin
            redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_q <= $unsigned(SR_SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_D0);
        end
    end

    // SE_out_i_llvm_fpga_push_i1_push19_gaussian55(STALLENABLE,611)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_push19_gaussian55_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_push19_gaussian55_wireValid = i_llvm_fpga_push_i1_push19_gaussian55_out_valid_out;

    // redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0(REG,394)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_backEN == 1'b1)
        begin
            redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_q <= $unsigned(SR_SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_D0);
        end
    end

    // SE_redist4_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_q_1_0(STALLENABLE,684)
    // Valid signal propagation
    assign SE_redist4_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_q_1_0_V0 = SE_redist4_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist4_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_q_1_0_s_tv_0 = SE_out_coalesced_delay_1_fifo_backStall & SE_redist4_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist4_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_q_1_0_backEN = ~ (SE_redist4_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist4_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_q_1_0_v_s_0 = SE_redist4_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_q_1_0_backEN & SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_V1;
    // Backward Stall generation
    assign SE_redist4_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_q_1_0_backStall = ~ (SE_redist4_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_q_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist4_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist4_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_q_1_0_backEN == 1'b0)
            begin
                SE_redist4_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_q_1_0_R_v_0 <= SE_redist4_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_q_1_0_R_v_0 & SE_redist4_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist4_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_q_1_0_R_v_0 <= SE_redist4_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_q_1_0_v_s_0;
            end

        end
    end

    // SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2(STALLENABLE,653)
    // Valid signal propagation
    assign SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_V0 = SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_R_v_0;
    assign SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_V1 = SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_s_tv_0 = SE_i_mul14_gaussian33_sums_result_add_0_0_p2_of_2_backStall & SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_R_v_0;
    assign SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_s_tv_1 = SE_redist4_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_q_1_0_backStall & SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_or0 = SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_s_tv_0;
    assign SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_backEN = ~ (SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_s_tv_1 | SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_v_s_0 = SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_backEN & SR_SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_V;
    // Backward Stall generation
    assign SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_backStall = ~ (SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_R_v_0 <= 1'b0;
            SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_backEN == 1'b0)
            begin
                SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_R_v_0 <= SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_R_v_0 & SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_R_v_0 <= SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_v_s_0;
            end

            if (SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_backEN == 1'b0)
            begin
                SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_R_v_1 <= SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_R_v_1 & SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_R_v_1 <= SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26(STALLENABLE,567)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_backStall = i_llvm_fpga_mem_lm32_gaussian27_out_o_stall | ~ (SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_wireValid = SR_SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_V;

    // SE_out_i_llvm_fpga_mem_lm32_gaussian27(STALLENABLE,573)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_lm32_gaussian27_V0 = SE_out_i_llvm_fpga_mem_lm32_gaussian27_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_lm32_gaussian27_backStall = SE_i_mul14_gaussian33_im0_cma_backStall | ~ (SE_out_i_llvm_fpga_mem_lm32_gaussian27_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_lm32_gaussian27_wireValid = i_llvm_fpga_mem_lm32_gaussian27_out_o_valid;

    // redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_0(REG,386)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_0_backEN == 1'b1)
        begin
            redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_0_q <= $unsigned(SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_0_D0);
        end
    end

    // redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_1(REG,387)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_1_backEN == 1'b1)
        begin
            redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_1_q <= $unsigned(redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_0_q);
        end
    end

    // redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_2(REG,388)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_2_backEN == 1'b1)
        begin
            redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_2_q <= $unsigned(SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_2_D0);
        end
    end

    // redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_3(REG,389)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_3_q <= $unsigned(1'b0);
        end
        else if (SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_3_backEN == 1'b1)
        begin
            redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_3_q <= $unsigned(redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_2_q);
        end
    end

    // SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4(STALLREG,961)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_r_valid <= 1'b0;
            SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_r_valid <= SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_backStall & (SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_r_valid | SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_i_valid);

            if (SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_r_data0 <= $unsigned(redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_3_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_i_valid = SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_3_V0;
    // Stall signal propagation
    assign SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_backStall = SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_r_valid | ~ (SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_i_valid);

    // Valid
    assign SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_V = SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_r_valid == 1'b1 ? SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_r_valid : SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_i_valid;

    assign SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_D0 = SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_r_valid == 1'b1 ? SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_r_data0 : redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_3_q;

    // SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_3(STALLENABLE,714)
    // Valid signal propagation
    assign SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_3_V0 = SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_3_R_v_0;
    // Stall signal propagation
    assign SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_3_s_tv_0 = SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_backStall & SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_3_R_v_0;
    // Backward Enable generation
    assign SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_3_backEN = ~ (SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_3_v_s_0 = SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_3_backEN & SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_2_V0;
    // Backward Stall generation
    assign SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_3_backStall = ~ (SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_3_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_3_backEN == 1'b0)
            begin
                SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_3_R_v_0 <= SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_3_R_v_0 & SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_3_s_tv_0;
            end
            else
            begin
                SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_3_R_v_0 <= SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_3_v_s_0;
            end

        end
    end

    // SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_2(STALLENABLE,713)
    // Valid signal propagation
    assign SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_2_V0 = SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_2_R_v_0;
    // Stall signal propagation
    assign SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_2_s_tv_0 = SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_3_backStall & SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_2_R_v_0;
    // Backward Enable generation
    assign SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_2_backEN = ~ (SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_2_v_s_0 = SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_2_backEN & SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_2_V;
    // Backward Stall generation
    assign SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_2_backStall = ~ (SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_2_backEN == 1'b0)
            begin
                SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_2_R_v_0 <= SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_2_R_v_0 & SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_2_s_tv_0;
            end
            else
            begin
                SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_2_R_v_0 <= SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_2_v_s_0;
            end

        end
    end

    // SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_2(STALLREG,960)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_2_r_valid <= 1'b0;
            SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_2_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_2_r_valid <= SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_2_backStall & (SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_2_r_valid | SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_2_i_valid);

            if (SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_2_r_data0 <= $unsigned(redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_2_i_valid = SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_1_V0;
    // Stall signal propagation
    assign SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_2_backStall = SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_2_r_valid | ~ (SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_2_i_valid);

    // Valid
    assign SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_2_V = SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_2_r_valid == 1'b1 ? SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_2_r_valid : SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_2_i_valid;

    assign SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_2_D0 = SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_2_r_valid == 1'b1 ? SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_2_r_data0 : redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_1_q;

    // SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_1(STALLENABLE,712)
    // Valid signal propagation
    assign SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_1_V0 = SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_1_R_v_0;
    // Stall signal propagation
    assign SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_1_s_tv_0 = SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_2_backStall & SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_1_R_v_0;
    // Backward Enable generation
    assign SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_1_backEN = ~ (SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_1_v_s_0 = SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_1_backEN & SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_0_V0;
    // Backward Stall generation
    assign SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_1_backStall = ~ (SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_1_backEN == 1'b0)
            begin
                SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_1_R_v_0 <= SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_1_R_v_0 & SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_1_s_tv_0;
            end
            else
            begin
                SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_1_R_v_0 <= SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_1_v_s_0;
            end

        end
    end

    // SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_0(STALLENABLE,711)
    // Valid signal propagation
    assign SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_0_V0 = SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_0_R_v_0;
    // Stall signal propagation
    assign SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_0_s_tv_0 = SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_1_backStall & SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_0_R_v_0;
    // Backward Enable generation
    assign SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_0_backEN = ~ (SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_0_v_s_0 = SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_0_backEN & SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_0_V;
    // Backward Stall generation
    assign SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_0_backStall = ~ (SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_0_backEN == 1'b0)
            begin
                SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_0_R_v_0 <= SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_0_R_v_0 & SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_0_s_tv_0;
            end
            else
            begin
                SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_0_R_v_0 <= SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_0_v_s_0;
            end

        end
    end

    // SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_0(STALLREG,959)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_0_r_valid <= 1'b0;
            SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_0_r_valid <= SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_0_backStall & (SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_0_r_valid | SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_0_i_valid);

            if (SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_0_r_data0 <= $unsigned(redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_0_i_valid = SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_2_V1;
    // Stall signal propagation
    assign SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_0_backStall = SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_0_r_valid | ~ (SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_0_i_valid);

    // Valid
    assign SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_0_V = SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_0_r_valid == 1'b1 ? SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_0_r_valid : SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_0_i_valid;

    assign SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_0_D0 = SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_0_r_valid == 1'b1 ? SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_0_r_data0 : redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_2_q;

    // join_for_coalesced_delay_0(BITJOIN,353)
    assign join_for_coalesced_delay_0_q = {bubble_select_gaussian_B7_merge_reg_aunroll_x_e, bubble_select_gaussian_B7_merge_reg_aunroll_x_d};

    // coalesced_delay_0_fifo(STALLFIFO,418)
    assign coalesced_delay_0_fifo_valid_in = SE_out_gaussian_B7_merge_reg_aunroll_x_V9;
    assign coalesced_delay_0_fifo_stall_in = SR_SE_out_coalesced_delay_0_fifo_backStall;
    assign coalesced_delay_0_fifo_data_in = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_valid_in_bitsignaltemp = coalesced_delay_0_fifo_valid_in[0];
    assign coalesced_delay_0_fifo_stall_in_bitsignaltemp = coalesced_delay_0_fifo_stall_in[0];
    assign coalesced_delay_0_fifo_valid_out[0] = coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_0_fifo_stall_out[0] = coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(72),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(2),
        .IMPL("ram")
    ) thecoalesced_delay_0_fifo (
        .valid_in(coalesced_delay_0_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_0_fifo_stall_in_bitsignaltemp),
        .data_in(join_for_coalesced_delay_0_q),
        .valid_out(coalesced_delay_0_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_0_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_0_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52(STALLENABLE,593)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_fromReg0 <= SE_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_fromReg1 <= SE_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_consumed0 = (~ (bubble_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_1_reg_backStall) & SE_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_wireValid) | SE_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_consumed1 = (~ (SE_in_i_llvm_fpga_push_i32_add44_push17_gaussian53_backStall) & SE_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_wireValid) | SE_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_StallValid = SE_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_backStall & SE_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_wireValid;
    assign SE_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_toReg0 = SE_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_StallValid & SE_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_toReg1 = SE_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_StallValid & SE_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_or0 = SE_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_wireStall = ~ (SE_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_consumed1 & SE_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_or0);
    assign SE_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_backStall = SE_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_V0 = SE_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_V1 = SE_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_wireValid = i_llvm_fpga_pop_i32_add44_pop17_gaussian52_out_valid_out;

    // redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_0(REG,414)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_0_backEN == 1'b1)
        begin
            redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_0_q <= $unsigned(SR_SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_D2);
        end
    end

    // SR_SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1(STALLREG,937)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_r_valid <= 1'b0;
            SR_SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_r_valid <= SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_backStall & (SR_SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_r_valid | SR_SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_i_valid);

            if (SR_SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_r_data0 <= $unsigned(redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_i_valid = SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_0_V0;
    // Stall signal propagation
    assign SR_SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_backStall = SR_SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_r_valid | ~ (SR_SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_i_valid);

    // Valid
    assign SR_SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_V = SR_SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_r_valid == 1'b1 ? SR_SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_r_valid : SR_SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_i_valid;

    assign SR_SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_D0 = SR_SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_r_valid == 1'b1 ? SR_SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_r_data0 : redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_0_q;

    // redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1(REG,415)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_backEN == 1'b1)
        begin
            redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_q <= $unsigned(SR_SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_D0);
        end
    end

    // bubble_join_redist35_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_70_fifo(BITJOIN,534)
    assign bubble_join_redist35_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_70_fifo_q = redist35_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_70_fifo_data_out;

    // bubble_select_redist35_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_70_fifo(BITSELECT,535)
    assign bubble_select_redist35_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_70_fifo_b = $unsigned(bubble_join_redist35_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_70_fifo_q[31:0]);

    // i_llvm_fpga_pop_i32_add44_pop17_gaussian52(BLACKBOX,87)@71
    // in in_stall_in@20000000
    // out out_data_out@72
    // out out_feedback_stall_out_17@20000000
    // out out_stall_out@20000000
    // out out_valid_out@72
    gaussian_i_llvm_fpga_pop_i32_add44_pop17_0 thei_llvm_fpga_pop_i32_add44_pop17_gaussian52 (
        .in_data_in(bubble_select_redist35_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_70_fifo_b),
        .in_dir(redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_q),
        .in_feedback_in_17(i_llvm_fpga_push_i32_add44_push17_gaussian53_out_feedback_out_17),
        .in_feedback_valid_in_17(i_llvm_fpga_push_i32_add44_push17_gaussian53_out_feedback_valid_out_17),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_backStall),
        .in_valid_in(SE_out_redist35_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_70_fifo_V0),
        .out_data_out(i_llvm_fpga_pop_i32_add44_pop17_gaussian52_out_data_out),
        .out_feedback_stall_out_17(i_llvm_fpga_pop_i32_add44_pop17_gaussian52_out_feedback_stall_out_17),
        .out_stall_out(i_llvm_fpga_pop_i32_add44_pop17_gaussian52_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_add44_pop17_gaussian52_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_i1_lastiniteration_gaussian9(STALLENABLE,601)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration_gaussian9_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration_gaussian9_wireValid = i_llvm_fpga_push_i1_lastiniteration_gaussian9_out_valid_out;

    // i_llvm_fpga_push_i1_lastiniteration_gaussian9(BLACKBOX,91)@73
    // in in_stall_in@20000000
    // out out_data_out@74
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    // out out_stall_out@20000000
    // out out_valid_out@74
    gaussian_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_gaussian9 (
        .in_data_in(SR_SE_i_next_initerations_gaussian6_vt_select_0_D0),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_gaussian4_out_initeration_stall_out),
        .in_keep_going(SR_SE_i_next_initerations_gaussian6_vt_select_0_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_lastiniteration_gaussian9_backStall),
        .in_valid_in(SE_i_next_initerations_gaussian6_vt_select_0_V0),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_gaussian9_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_gaussian9_out_feedback_valid_out_2),
        .out_stall_out(i_llvm_fpga_push_i1_lastiniteration_gaussian9_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_lastiniteration_gaussian9_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_next_initerations_gaussian6_vt_select_0(STALLENABLE,628)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_next_initerations_gaussian6_vt_select_0_fromReg0 <= '0;
            SE_i_next_initerations_gaussian6_vt_select_0_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_next_initerations_gaussian6_vt_select_0_fromReg0 <= SE_i_next_initerations_gaussian6_vt_select_0_toReg0;
            // Successor 1
            SE_i_next_initerations_gaussian6_vt_select_0_fromReg1 <= SE_i_next_initerations_gaussian6_vt_select_0_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_next_initerations_gaussian6_vt_select_0_consumed0 = (~ (i_llvm_fpga_push_i1_lastiniteration_gaussian9_out_stall_out) & SE_i_next_initerations_gaussian6_vt_select_0_wireValid) | SE_i_next_initerations_gaussian6_vt_select_0_fromReg0;
    assign SE_i_next_initerations_gaussian6_vt_select_0_consumed1 = (~ (i_llvm_fpga_push_i2_initerations_push15_gaussian7_out_stall_out) & SE_i_next_initerations_gaussian6_vt_select_0_wireValid) | SE_i_next_initerations_gaussian6_vt_select_0_fromReg1;
    // Consuming
    assign SE_i_next_initerations_gaussian6_vt_select_0_StallValid = SE_i_next_initerations_gaussian6_vt_select_0_backStall & SE_i_next_initerations_gaussian6_vt_select_0_wireValid;
    assign SE_i_next_initerations_gaussian6_vt_select_0_toReg0 = SE_i_next_initerations_gaussian6_vt_select_0_StallValid & SE_i_next_initerations_gaussian6_vt_select_0_consumed0;
    assign SE_i_next_initerations_gaussian6_vt_select_0_toReg1 = SE_i_next_initerations_gaussian6_vt_select_0_StallValid & SE_i_next_initerations_gaussian6_vt_select_0_consumed1;
    // Backward Stall generation
    assign SE_i_next_initerations_gaussian6_vt_select_0_or0 = SE_i_next_initerations_gaussian6_vt_select_0_consumed0;
    assign SE_i_next_initerations_gaussian6_vt_select_0_wireStall = ~ (SE_i_next_initerations_gaussian6_vt_select_0_consumed1 & SE_i_next_initerations_gaussian6_vt_select_0_or0);
    assign SE_i_next_initerations_gaussian6_vt_select_0_backStall = SE_i_next_initerations_gaussian6_vt_select_0_wireStall;
    // Valid signal propagation
    assign SE_i_next_initerations_gaussian6_vt_select_0_V0 = SE_i_next_initerations_gaussian6_vt_select_0_wireValid & ~ (SE_i_next_initerations_gaussian6_vt_select_0_fromReg0);
    assign SE_i_next_initerations_gaussian6_vt_select_0_V1 = SE_i_next_initerations_gaussian6_vt_select_0_wireValid & ~ (SE_i_next_initerations_gaussian6_vt_select_0_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_next_initerations_gaussian6_vt_select_0_wireValid = SR_SE_i_next_initerations_gaussian6_vt_select_0_V;

    // SE_out_i_llvm_fpga_push_i2_initerations_push15_gaussian7(STALLENABLE,615)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i2_initerations_push15_gaussian7_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i2_initerations_push15_gaussian7_wireValid = i_llvm_fpga_push_i2_initerations_push15_gaussian7_out_valid_out;

    // i_llvm_fpga_push_i2_initerations_push15_gaussian7(BLACKBOX,98)@73
    // in in_stall_in@20000000
    // out out_data_out@74
    // out out_feedback_out_15@20000000
    // out out_feedback_valid_out_15@20000000
    // out out_stall_out@20000000
    // out out_valid_out@74
    gaussian_i_llvm_fpga_push_i2_initerations_push15_0 thei_llvm_fpga_push_i2_initerations_push15_gaussian7 (
        .in_data_in(SR_SE_i_next_initerations_gaussian6_vt_select_0_D3),
        .in_feedback_stall_in_15(i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_out_feedback_stall_out_15),
        .in_keep_going(SR_SE_i_next_initerations_gaussian6_vt_select_0_D2),
        .in_stall_in(SE_out_i_llvm_fpga_push_i2_initerations_push15_gaussian7_backStall),
        .in_valid_in(SE_i_next_initerations_gaussian6_vt_select_0_V1),
        .out_data_out(),
        .out_feedback_out_15(i_llvm_fpga_push_i2_initerations_push15_gaussian7_out_feedback_out_15),
        .out_feedback_valid_out_15(i_llvm_fpga_push_i2_initerations_push15_gaussian7_out_feedback_valid_out_15),
        .out_stall_out(i_llvm_fpga_push_i2_initerations_push15_gaussian7_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i2_initerations_push15_gaussian7_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist32_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_71_0(REG,416)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist32_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_backEN == 1'b1)
        begin
            redist32_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_q <= $unsigned(redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_q);
        end
    end

    // i_llvm_fpga_pop_i2_initerations_pop15_gaussian5(BLACKBOX,86)@72
    // in in_stall_in@20000000
    // out out_data_out@73
    // out out_feedback_stall_out_15@20000000
    // out out_stall_out@20000000
    // out out_valid_out@73
    gaussian_i_llvm_fpga_pop_i2_initerations_pop15_0 thei_llvm_fpga_pop_i2_initerations_pop15_gaussian5 (
        .in_data_in(c_i2_158_q),
        .in_dir(redist32_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_q),
        .in_feedback_in_15(i_llvm_fpga_push_i2_initerations_push15_gaussian7_out_feedback_out_15),
        .in_feedback_valid_in_15(i_llvm_fpga_push_i2_initerations_push15_gaussian7_out_feedback_valid_out_15),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_backStall),
        .in_valid_in(SE_redist32_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_V1),
        .out_data_out(i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_out_data_out),
        .out_feedback_stall_out_15(i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_out_feedback_stall_out_15),
        .out_stall_out(i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist32_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_71_0(STALLENABLE,745)
    // Valid signal propagation
    assign SE_redist32_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_V0 = SE_redist32_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_R_v_0;
    assign SE_redist32_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_V1 = SE_redist32_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_R_v_1;
    // Stall signal propagation
    assign SE_redist32_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_s_tv_0 = SR_SE_out_coalesced_delay_0_fifo_backStall & SE_redist32_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_R_v_0;
    assign SE_redist32_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_s_tv_1 = i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_out_stall_out & SE_redist32_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_R_v_1;
    // Backward Enable generation
    assign SE_redist32_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_or0 = SE_redist32_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_s_tv_0;
    assign SE_redist32_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_backEN = ~ (SE_redist32_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_s_tv_1 | SE_redist32_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist32_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_v_s_0 = SE_redist32_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_backEN & SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_V1;
    // Backward Stall generation
    assign SE_redist32_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_backStall = ~ (SE_redist32_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist32_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_R_v_0 <= 1'b0;
            SE_redist32_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist32_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_backEN == 1'b0)
            begin
                SE_redist32_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_R_v_0 <= SE_redist32_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_R_v_0 & SE_redist32_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_s_tv_0;
            end
            else
            begin
                SE_redist32_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_R_v_0 <= SE_redist32_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_v_s_0;
            end

            if (SE_redist32_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_backEN == 1'b0)
            begin
                SE_redist32_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_R_v_1 <= SE_redist32_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_R_v_1 & SE_redist32_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_s_tv_1;
            end
            else
            begin
                SE_redist32_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_R_v_1 <= SE_redist32_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_v_s_0;
            end

        end
    end

    // SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1(STALLENABLE,744)
    // Valid signal propagation
    assign SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_V0 = SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_R_v_0;
    assign SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_V1 = SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_R_v_1;
    // Stall signal propagation
    assign SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_s_tv_0 = SE_out_redist35_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_70_fifo_backStall & SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_R_v_0;
    assign SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_s_tv_1 = SE_redist32_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_backStall & SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_R_v_1;
    // Backward Enable generation
    assign SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_or0 = SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_s_tv_0;
    assign SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_backEN = ~ (SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_s_tv_1 | SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_v_s_0 = SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_backEN & SR_SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_V;
    // Backward Stall generation
    assign SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_backStall = ~ (SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_R_v_0 <= 1'b0;
            SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_backEN == 1'b0)
            begin
                SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_R_v_0 <= SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_R_v_0 & SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_s_tv_0;
            end
            else
            begin
                SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_R_v_0 <= SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_v_s_0;
            end

            if (SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_backEN == 1'b0)
            begin
                SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_R_v_1 <= SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_R_v_1 & SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_s_tv_1;
            end
            else
            begin
                SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_R_v_1 <= SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_v_s_0;
            end

        end
    end

    // SE_out_redist35_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_70_fifo(STALLENABLE,747)
    // Valid signal propagation
    assign SE_out_redist35_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_70_fifo_V0 = SE_out_redist35_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_70_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist35_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_70_fifo_backStall = i_llvm_fpga_pop_i32_add44_pop17_gaussian52_out_stall_out | ~ (SE_out_redist35_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_70_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist35_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_70_fifo_and0 = redist35_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_70_fifo_valid_out;
    assign SE_out_redist35_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_70_fifo_wireValid = SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_V0 & SE_out_redist35_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_70_fifo_and0;

    // redist35_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_70_fifo(STALLFIFO,417)
    assign redist35_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_70_fifo_valid_in = SE_out_gaussian_B7_merge_reg_aunroll_x_V8;
    assign redist35_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_70_fifo_stall_in = SE_out_redist35_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_70_fifo_backStall;
    assign redist35_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_70_fifo_data_in = bubble_select_gaussian_B7_merge_reg_aunroll_x_g;
    assign redist35_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_70_fifo_valid_in_bitsignaltemp = redist35_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_70_fifo_valid_in[0];
    assign redist35_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_70_fifo_stall_in_bitsignaltemp = redist35_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_70_fifo_stall_in[0];
    assign redist35_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_70_fifo_valid_out[0] = redist35_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_70_fifo_valid_out_bitsignaltemp;
    assign redist35_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_70_fifo_stall_out[0] = redist35_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_70_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(71),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist35_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_70_fifo (
        .valid_in(redist35_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_70_fifo_valid_in_bitsignaltemp),
        .stall_in(redist35_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_70_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_gaussian_B7_merge_reg_aunroll_x_g),
        .valid_out(redist35_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_70_fifo_valid_out_bitsignaltemp),
        .stall_out(redist35_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_70_fifo_stall_out_bitsignaltemp),
        .data_out(redist35_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_70_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15(BITJOIN,490)
    assign bubble_join_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_q = i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15(BITSELECT,491)
    assign bubble_select_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_q[31:0]);

    // redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_0(REG,370)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_0_backEN == 1'b1)
        begin
            redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_0_q <= $unsigned(bubble_select_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_b);
        end
    end

    // redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_1(REG,371)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_1_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_1_backEN == 1'b1)
        begin
            redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_1_q <= $unsigned(redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_0_q);
        end
    end

    // redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_2(REG,372)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_2_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_2_backEN == 1'b1)
        begin
            redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_2_q <= $unsigned(redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_1_q);
        end
    end

    // redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_3(REG,373)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_3_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_3_backEN == 1'b1)
        begin
            redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_3_q <= $unsigned(SR_SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_3_D0);
        end
    end

    // redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_4(REG,374)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_4_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_4_backEN == 1'b1)
        begin
            redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_4_q <= $unsigned(redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_3_q);
        end
    end

    // redist12_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_68_fifo(STALLFIFO,375)
    assign redist12_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_68_fifo_valid_in = SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_4_V1;
    assign redist12_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_68_fifo_stall_in = SE_out_redist12_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_68_fifo_backStall;
    assign redist12_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_68_fifo_data_in = redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_4_q;
    assign redist12_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_68_fifo_valid_in_bitsignaltemp = redist12_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_68_fifo_valid_in[0];
    assign redist12_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_68_fifo_stall_in_bitsignaltemp = redist12_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_68_fifo_stall_in[0];
    assign redist12_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_68_fifo_valid_out[0] = redist12_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_68_fifo_valid_out_bitsignaltemp;
    assign redist12_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_68_fifo_stall_out[0] = redist12_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_68_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(64),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist12_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_68_fifo (
        .valid_in(redist12_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_68_fifo_valid_in_bitsignaltemp),
        .stall_in(redist12_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_68_fifo_stall_in_bitsignaltemp),
        .data_in(redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_4_q),
        .valid_out(redist12_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_68_fifo_valid_out_bitsignaltemp),
        .stall_out(redist12_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_68_fifo_stall_out_bitsignaltemp),
        .data_out(redist12_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_68_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_2(STALLENABLE,701)
    // Valid signal propagation
    assign SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_2_V0 = SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_2_R_v_0;
    // Stall signal propagation
    assign SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_2_s_tv_0 = SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_3_backStall & SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_2_R_v_0;
    // Backward Enable generation
    assign SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_2_backEN = ~ (SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_2_v_s_0 = SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_2_backEN & SR_SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_2_V;
    // Backward Stall generation
    assign SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_2_backStall = ~ (SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_2_backEN == 1'b0)
            begin
                SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_2_R_v_0 <= SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_2_R_v_0 & SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_2_s_tv_0;
            end
            else
            begin
                SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_2_R_v_0 <= SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_2_v_s_0;
            end

        end
    end

    // i_unnamed_gaussian18_vt_const_63(CONSTANT,115)
    assign i_unnamed_gaussian18_vt_const_63_q = $unsigned(32'b00000000000000000000000000000000);

    // i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_tessel0_2(BITSELECT,284)
    assign i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_tessel0_2_b = i_unnamed_gaussian18_vt_const_63_q[25:0];

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_mul11_add1429_gaussian28(BITJOIN,436)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_mul11_add1429_gaussian28_q = i_llvm_fpga_ffwd_dest_i32_mul11_add1429_gaussian28_out_dest_data_out_9_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_mul11_add1429_gaussian28(BITSELECT,437)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_mul11_add1429_gaussian28_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_mul11_add1429_gaussian28_q[31:0]);

    // i_add12_gaussian29(ADD,59)@2
    assign i_add12_gaussian29_a = {1'b0, bubble_select_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_b};
    assign i_add12_gaussian29_b = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_i32_mul11_add1429_gaussian28_b};
    assign i_add12_gaussian29_o = $unsigned(i_add12_gaussian29_a) + $unsigned(i_add12_gaussian29_b);
    assign i_add12_gaussian29_q = i_add12_gaussian29_o[32:0];

    // i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_tessel0_1(BITSELECT,283)@2
    assign i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_tessel0_1_b = $unsigned(i_add12_gaussian29_q[31:0]);

    // redist3_i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0(REG,361)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist3_i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_backEN == 1'b1)
        begin
            redist3_i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_q <= $unsigned(i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_tessel0_1_b);
        end
    end

    // i_mptr_bitcast_index51_gaussian0_c_i2_01_x(CONSTANT,28)
    assign i_mptr_bitcast_index51_gaussian0_c_i2_01_x_q = $unsigned(2'b00);

    // i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_BitJoin_for_b(BITJOIN,285)@3
    assign i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_BitJoin_for_b_q = {i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_tessel0_2_b, redist3_i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_q, i_mptr_bitcast_index51_gaussian0_c_i2_01_x_q};

    // i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12(BLACKBOX,75)@2
    // in in_stall_in@20000000
    // out out_dest_data_out_0_0@3
    // out out_stall_out@20000000
    // out out_valid_out@3
    gaussian_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_0 thei_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_backStall),
        .in_valid_in(SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_V1),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12(BITJOIN,442)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_q = i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12(BITSELECT,443)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_q[63:0]);

    // i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_a_tessel0_0(BITSELECT,277)@3
    assign i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_a_tessel0_0_b = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_b[59:0]);

    // i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2(ADD,256)@3 + 1
    assign i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_a = {1'b0, i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_a_tessel0_0_b};
    assign i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_b = {1'b0, i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_o <= 61'b0;
        end
        else if (SE_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_o <= $unsigned(i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_a) + $unsigned(i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_b);
        end
    end
    assign i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_c[0] = i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_o[60];
    assign i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_q = i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_o[59:0];

    // i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2(ADD,257)@4 + 1
    assign i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_cin = SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_D2;
    assign i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_a = { {1'b0, SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_D0}, 1'b1 };
    assign i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_b = { {1'b0, SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_D1}, i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_o <= 7'b0;
        end
        else if (SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_o <= $unsigned(i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_a) + $unsigned(i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_b);
        end
    end
    assign i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_q = i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_o[5:1];

    // redist6_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_q_1_0(REG,364)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_q_1_0_q <= $unsigned(60'b000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist6_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_q_1_0_backEN == 1'b1)
        begin
            redist6_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_q_1_0_q <= $unsigned(SR_SE_redist6_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_q_1_0_D0);
        end
    end

    // i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q(BITJOIN,258)@5
    assign i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q_q = {i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_q, redist6_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_q_1_0_q};

    // i_mptr_bitcast_index51_gaussian0_dupName_0_trunc_sel_x(BITSELECT,25)@5
    assign i_mptr_bitcast_index51_gaussian0_dupName_0_trunc_sel_x_b = i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q_q[63:0];

    // SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2(STALLENABLE,648)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_V0 = SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_s_tv_0 = SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q_backStall & SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_backEN = ~ (SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_v_s_0 = SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_backEN & SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_backStall = ~ (SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_backEN == 1'b0)
            begin
                SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_R_v_0 <= SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_R_v_0 & SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_R_v_0 <= SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_mem_lm53_gaussian32(STALLENABLE,575)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_lm53_gaussian32_V0 = SE_out_i_llvm_fpga_mem_lm53_gaussian32_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_lm53_gaussian32_backStall = SE_i_mul14_gaussian33_im0_cma_backStall | ~ (SE_out_i_llvm_fpga_mem_lm53_gaussian32_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_lm53_gaussian32_wireValid = i_llvm_fpga_mem_lm53_gaussian32_out_o_valid;

    // i_llvm_fpga_mem_lm53_gaussian32(BLACKBOX,78)@5
    // in in_i_stall@20000000
    // out out_lm53_gaussian_avm_address@20000000
    // out out_lm53_gaussian_avm_burstcount@20000000
    // out out_lm53_gaussian_avm_byteenable@20000000
    // out out_lm53_gaussian_avm_enable@20000000
    // out out_lm53_gaussian_avm_read@20000000
    // out out_lm53_gaussian_avm_write@20000000
    // out out_lm53_gaussian_avm_writedata@20000000
    // out out_o_readdata@37
    // out out_o_stall@20000000
    // out out_o_valid@37
    gaussian_i_llvm_fpga_mem_lm53_0 thei_llvm_fpga_mem_lm53_gaussian32 (
        .in_flush(in_flush),
        .in_i_address(SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q_D0),
        .in_i_dependence(SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q_D1),
        .in_i_predicate(SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q_D2),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm53_gaussian32_backStall),
        .in_i_valid(SE_i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q_V0),
        .in_lm53_gaussian_avm_readdata(in_lm53_gaussian_avm_readdata),
        .in_lm53_gaussian_avm_readdatavalid(in_lm53_gaussian_avm_readdatavalid),
        .in_lm53_gaussian_avm_waitrequest(in_lm53_gaussian_avm_waitrequest),
        .in_lm53_gaussian_avm_writeack(in_lm53_gaussian_avm_writeack),
        .out_lm53_gaussian_avm_address(i_llvm_fpga_mem_lm53_gaussian32_out_lm53_gaussian_avm_address),
        .out_lm53_gaussian_avm_burstcount(i_llvm_fpga_mem_lm53_gaussian32_out_lm53_gaussian_avm_burstcount),
        .out_lm53_gaussian_avm_byteenable(i_llvm_fpga_mem_lm53_gaussian32_out_lm53_gaussian_avm_byteenable),
        .out_lm53_gaussian_avm_enable(i_llvm_fpga_mem_lm53_gaussian32_out_lm53_gaussian_avm_enable),
        .out_lm53_gaussian_avm_read(i_llvm_fpga_mem_lm53_gaussian32_out_lm53_gaussian_avm_read),
        .out_lm53_gaussian_avm_write(i_llvm_fpga_mem_lm53_gaussian32_out_lm53_gaussian_avm_write),
        .out_lm53_gaussian_avm_writedata(i_llvm_fpga_mem_lm53_gaussian32_out_lm53_gaussian_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm53_gaussian32_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm53_gaussian32_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm53_gaussian32_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q(STALLENABLE,649)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q_V0 = SE_i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q_wireValid;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q_backStall = i_llvm_fpga_mem_lm53_gaussian32_out_o_stall | ~ (SE_i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q_wireValid = SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q_V;

    // SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q(STALLREG,956)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q_r_valid <= 1'b0;
            SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q_r_data0 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q_r_data1 <= 1'bx;
            SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q_r_valid <= SE_i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q_backStall & (SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q_r_valid | SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q_i_valid);

            if (SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q_r_data0 <= i_mptr_bitcast_index51_gaussian0_dupName_0_trunc_sel_x_b;
                SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q_r_data1 <= i_memdep_phi_or_gaussian25_q;
                SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q_r_data2 <= i_first_cleanup_xor_or_gaussian20_q;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q_and0 = SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_V0;
    assign SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q_and1 = SE_redist6_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_q_1_0_V0 & SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q_and0;
    assign SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q_and2 = SE_i_unnamed_gaussian11_V1 & SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q_and1;
    assign SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q_i_valid = SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_V1 & SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q_and2;
    // Stall signal propagation
    assign SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q_backStall = SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q_r_valid | ~ (SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q_i_valid);

    // Valid
    assign SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q_V = SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q_r_valid : SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q_i_valid;

    // Data0
    assign SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q_D0 = SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q_r_data0 : i_mptr_bitcast_index51_gaussian0_dupName_0_trunc_sel_x_b;
    // Data1
    assign SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q_D1 = SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q_r_data1 : i_memdep_phi_or_gaussian25_q;
    // Data2
    assign SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q_D2 = SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q_r_data2 : i_first_cleanup_xor_or_gaussian20_q;

    // SE_redist6_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_q_1_0(STALLENABLE,686)
    // Valid signal propagation
    assign SE_redist6_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_q_1_0_V0 = SE_redist6_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist6_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_q_1_0_s_tv_0 = SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q_backStall & SE_redist6_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist6_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_q_1_0_backEN = ~ (SE_redist6_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist6_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_q_1_0_v_s_0 = SE_redist6_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_q_1_0_backEN & SR_SE_redist6_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_q_1_0_V;
    // Backward Stall generation
    assign SE_redist6_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_q_1_0_backStall = ~ (SE_redist6_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_q_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist6_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist6_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_q_1_0_backEN == 1'b0)
            begin
                SE_redist6_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist6_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_q_1_0_R_v_0 & SE_redist6_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist6_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist6_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_q_1_0_v_s_0;
            end

        end
    end

    // SR_SE_redist6_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_q_1_0(STALLREG,955)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist6_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_q_1_0_r_valid <= 1'b0;
            SR_SE_redist6_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_q_1_0_r_data0 <= 60'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist6_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_q_1_0_r_valid <= SE_redist6_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_q_1_0_backStall & (SR_SE_redist6_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_q_1_0_r_valid | SR_SE_redist6_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_q_1_0_i_valid);

            if (SR_SE_redist6_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_q_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist6_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_q_1_0_r_data0 <= $unsigned(i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist6_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_q_1_0_i_valid = SE_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_V1;
    // Stall signal propagation
    assign SR_SE_redist6_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_q_1_0_backStall = SR_SE_redist6_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_q_1_0_r_valid | ~ (SR_SE_redist6_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_q_1_0_i_valid);

    // Valid
    assign SR_SE_redist6_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_q_1_0_V = SR_SE_redist6_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist6_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_q_1_0_r_valid : SR_SE_redist6_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_q_1_0_i_valid;

    assign SR_SE_redist6_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_q_1_0_D0 = SR_SE_redist6_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist6_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_q_1_0_r_data0 : i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_q;

    // i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_tessel1_0(BITSELECT,286)
    assign i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_tessel1_0_b = i_unnamed_gaussian18_vt_const_63_q[29:26];

    // i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,288)@4
    assign i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_tessel1_0_b};

    // redist21_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_1_0(REG,395)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_1_0_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist21_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_1_0_backEN == 1'b1)
        begin
            redist21_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_1_0_q <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_b);
        end
    end

    // i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_a_tessel1_0(BITSELECT,279)@4
    assign i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_a_tessel1_0_b = $unsigned(redist21_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_1_0_q[63:60]);

    // i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,281)@4
    assign i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_a_tessel1_0_b};

    // redist1_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0(REG,359)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist1_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_backEN == 1'b1)
        begin
            redist1_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_q <= $unsigned(SR_SE_redist1_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_D0);
        end
    end

    // i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_BitJoin_for_b(BITJOIN,297)@8
    assign i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_BitJoin_for_b_q = {i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_tessel0_2_b, redist1_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_q, i_mptr_bitcast_index51_gaussian0_c_i2_01_x_q};

    // SE_redist2_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_a_tessel1_0_b_1_0(STALLENABLE,682)
    // Valid signal propagation
    assign SE_redist2_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_a_tessel1_0_b_1_0_V0 = SE_redist2_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_a_tessel1_0_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist2_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_a_tessel1_0_b_1_0_s_tv_0 = SE_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_a_BitJoin_for_c_backStall & SE_redist2_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_a_tessel1_0_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist2_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_a_tessel1_0_b_1_0_backEN = ~ (SE_redist2_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_a_tessel1_0_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist2_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_a_tessel1_0_b_1_0_v_s_0 = SE_redist2_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_a_tessel1_0_b_1_0_backEN & SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_V1;
    // Backward Stall generation
    assign SE_redist2_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_a_tessel1_0_b_1_0_backStall = ~ (SE_redist2_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_a_tessel1_0_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist2_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_a_tessel1_0_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist2_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_a_tessel1_0_b_1_0_backEN == 1'b0)
            begin
                SE_redist2_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_a_tessel1_0_b_1_0_R_v_0 <= SE_redist2_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_a_tessel1_0_b_1_0_R_v_0 & SE_redist2_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_a_tessel1_0_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist2_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_a_tessel1_0_b_1_0_R_v_0 <= SE_redist2_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_a_tessel1_0_b_1_0_v_s_0;
            end

        end
    end

    // SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3(STALLENABLE,725)
    // Valid signal propagation
    assign SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_V0 = SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_R_v_0;
    assign SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_V1 = SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_R_v_1;
    // Stall signal propagation
    assign SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_s_tv_0 = SE_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_backStall & SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_R_v_0;
    assign SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_s_tv_1 = SE_redist2_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_a_tessel1_0_b_1_0_backStall & SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_R_v_1;
    // Backward Enable generation
    assign SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_or0 = SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_s_tv_0;
    assign SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_backEN = ~ (SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_s_tv_1 | SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_v_s_0 = SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_backEN & SR_SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_V;
    // Backward Stall generation
    assign SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_backStall = ~ (SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_R_v_0 <= 1'b0;
            SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_backEN == 1'b0)
            begin
                SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_R_v_0 <= SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_R_v_0 & SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_s_tv_0;
            end
            else
            begin
                SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_R_v_0 <= SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_v_s_0;
            end

            if (SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_backEN == 1'b0)
            begin
                SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_R_v_1 <= SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_R_v_1 & SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_s_tv_1;
            end
            else
            begin
                SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_R_v_1 <= SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_v_s_0;
            end

        end
    end

    // SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_1(STALLENABLE,723)
    // Valid signal propagation
    assign SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_1_V0 = SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_1_R_v_0;
    // Stall signal propagation
    assign SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_1_s_tv_0 = SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_2_backStall & SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_1_R_v_0;
    // Backward Enable generation
    assign SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_1_backEN = ~ (SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_1_v_s_0 = SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_1_backEN & SR_SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_1_V;
    // Backward Stall generation
    assign SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_1_backStall = ~ (SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_1_backEN == 1'b0)
            begin
                SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_1_R_v_0 <= SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_1_R_v_0 & SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_1_s_tv_0;
            end
            else
            begin
                SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_1_R_v_0 <= SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_1_v_s_0;
            end

        end
    end

    // redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_0(REG,396)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_0_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_0_backEN == 1'b1)
        begin
            redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_0_q <= $unsigned(redist21_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_1_0_q);
        end
    end

    // SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_0(STALLENABLE,722)
    // Valid signal propagation
    assign SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_0_V0 = SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_0_R_v_0;
    // Stall signal propagation
    assign SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_0_s_tv_0 = SR_SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_1_backStall & SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_0_R_v_0;
    // Backward Enable generation
    assign SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_0_backEN = ~ (SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_0_v_s_0 = SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_0_backEN & SE_redist21_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_1_0_V0;
    // Backward Stall generation
    assign SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_0_backStall = ~ (SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_0_backEN == 1'b0)
            begin
                SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_0_R_v_0 <= SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_0_R_v_0 & SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_0_s_tv_0;
            end
            else
            begin
                SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_0_R_v_0 <= SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_0_v_s_0;
            end

        end
    end

    // SR_SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_1(STALLREG,942)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_1_r_valid <= 1'b0;
            SR_SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_1_r_data0 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_1_r_valid <= SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_1_backStall & (SR_SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_1_r_valid | SR_SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_1_i_valid);

            if (SR_SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_1_r_data0 <= $unsigned(redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_1_i_valid = SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_0_V0;
    // Stall signal propagation
    assign SR_SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_1_backStall = SR_SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_1_r_valid | ~ (SR_SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_1_i_valid);

    // Valid
    assign SR_SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_1_V = SR_SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_1_r_valid == 1'b1 ? SR_SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_1_r_valid : SR_SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_1_i_valid;

    assign SR_SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_1_D0 = SR_SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_1_r_valid == 1'b1 ? SR_SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_1_r_data0 : redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_0_q;

    // redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_1(REG,397)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_1_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_1_backEN == 1'b1)
        begin
            redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_1_q <= $unsigned(SR_SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_1_D0);
        end
    end

    // redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_2(REG,398)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_2_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_2_backEN == 1'b1)
        begin
            redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_2_q <= $unsigned(redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_1_q);
        end
    end

    // SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_2(STALLENABLE,724)
    // Valid signal propagation
    assign SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_2_V0 = SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_2_R_v_0;
    // Stall signal propagation
    assign SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_2_s_tv_0 = SR_SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_backStall & SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_2_R_v_0;
    // Backward Enable generation
    assign SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_2_backEN = ~ (SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_2_v_s_0 = SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_2_backEN & SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_1_V0;
    // Backward Stall generation
    assign SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_2_backStall = ~ (SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_2_backEN == 1'b0)
            begin
                SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_2_R_v_0 <= SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_2_R_v_0 & SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_2_s_tv_0;
            end
            else
            begin
                SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_2_R_v_0 <= SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_2_v_s_0;
            end

        end
    end

    // SR_SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3(STALLREG,943)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_r_valid <= 1'b0;
            SR_SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_r_data0 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_r_valid <= SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_backStall & (SR_SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_r_valid | SR_SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_i_valid);

            if (SR_SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_r_data0 <= $unsigned(redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_i_valid = SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_2_V0;
    // Stall signal propagation
    assign SR_SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_backStall = SR_SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_r_valid | ~ (SR_SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_i_valid);

    // Valid
    assign SR_SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_V = SR_SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_r_valid == 1'b1 ? SR_SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_r_valid : SR_SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_i_valid;

    assign SR_SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_D0 = SR_SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_r_valid == 1'b1 ? SR_SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_r_data0 : redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_2_q;

    // redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3(REG,399)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_backEN == 1'b1)
        begin
            redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_q <= $unsigned(SR_SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_D0);
        end
    end

    // i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_a_tessel0_0(BITSELECT,289)@8
    assign i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_a_tessel0_0_b = $unsigned(redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_q[59:0]);

    // i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2(ADD,265)@8 + 1
    assign i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_a = {1'b0, i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_a_tessel0_0_b};
    assign i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_b = {1'b0, i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_o <= 61'b0;
        end
        else if (SE_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_o <= $unsigned(i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_a) + $unsigned(i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_b);
        end
    end
    assign i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_c[0] = i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_o[60];
    assign i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_q = i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_o[59:0];

    // i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_a_tessel1_0(BITSELECT,291)@8
    assign i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_a_tessel1_0_b = $unsigned(redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_q[63:60]);

    // redist2_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_a_tessel1_0_b_1_0(REG,360)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_a_tessel1_0_b_1_0_q <= $unsigned(4'b0000);
        end
        else if (SE_redist2_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_a_tessel1_0_b_1_0_backEN == 1'b1)
        begin
            redist2_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_a_tessel1_0_b_1_0_q <= $unsigned(i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_a_tessel1_0_b);
        end
    end

    // i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,293)@9
    assign i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist2_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_a_tessel1_0_b_1_0_q};

    // SE_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_a_BitJoin_for_c(STALLENABLE,666)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_a_BitJoin_for_c_V0 = SE_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_a_BitJoin_for_c_wireValid;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_a_BitJoin_for_c_backStall = SR_SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_backStall | ~ (SE_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_a_BitJoin_for_c_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_a_BitJoin_for_c_wireValid = SE_redist2_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_a_tessel1_0_b_1_0_V0;

    // SE_redist5_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_q_1_0(STALLENABLE,685)
    // Valid signal propagation
    assign SE_redist5_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_q_1_0_V0 = SE_redist5_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist5_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_q_1_0_s_tv_0 = SE_i_mptr_bitcast_index53_gaussian0_add_x_BitJoin_for_q_backStall & SE_redist5_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist5_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_q_1_0_backEN = ~ (SE_redist5_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist5_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_q_1_0_v_s_0 = SE_redist5_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_q_1_0_backEN & SR_SE_redist5_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_q_1_0_V;
    // Backward Stall generation
    assign SE_redist5_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_q_1_0_backStall = ~ (SE_redist5_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_q_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist5_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist5_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_q_1_0_backEN == 1'b0)
            begin
                SE_redist5_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist5_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_q_1_0_R_v_0 & SE_redist5_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist5_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist5_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_q_1_0_v_s_0;
            end

        end
    end

    // SR_SE_redist5_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_q_1_0(STALLREG,949)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist5_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_q_1_0_r_valid <= 1'b0;
            SR_SE_redist5_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_q_1_0_r_data0 <= 60'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist5_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_q_1_0_r_valid <= SE_redist5_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_q_1_0_backStall & (SR_SE_redist5_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_q_1_0_r_valid | SR_SE_redist5_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_q_1_0_i_valid);

            if (SR_SE_redist5_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_q_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist5_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_q_1_0_r_data0 <= $unsigned(i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist5_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_q_1_0_i_valid = SE_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_V1;
    // Stall signal propagation
    assign SR_SE_redist5_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_q_1_0_backStall = SR_SE_redist5_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_q_1_0_r_valid | ~ (SR_SE_redist5_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_q_1_0_i_valid);

    // Valid
    assign SR_SE_redist5_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_q_1_0_V = SR_SE_redist5_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist5_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_q_1_0_r_valid : SR_SE_redist5_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_q_1_0_i_valid;

    assign SR_SE_redist5_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_q_1_0_D0 = SR_SE_redist5_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist5_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_q_1_0_r_data0 : i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_q;

    // SE_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_BitJoin_for_b(STALLENABLE,668)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_BitJoin_for_b_V0 = SE_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_BitJoin_for_b_backStall = SE_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_backStall | ~ (SE_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_BitJoin_for_b_and0 = SE_i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_tessel0_2_V1;
    assign SE_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid = SE_redist1_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_V0 & SE_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_BitJoin_for_b_and0;

    // SE_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2(STALLENABLE,650)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_V0 = SE_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_R_v_0;
    assign SE_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_V1 = SE_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_s_tv_0 = SR_SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_backStall & SE_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_R_v_0;
    assign SE_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_s_tv_1 = SR_SE_redist5_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_q_1_0_backStall & SE_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_or0 = SE_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_s_tv_0;
    assign SE_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_backEN = ~ (SE_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_s_tv_1 | SE_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_and0 = SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_3_V0 & SE_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_backEN;
    assign SE_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_v_s_0 = SE_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_BitJoin_for_b_V0 & SE_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_and0;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_backStall = ~ (SE_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_R_v_0 <= 1'b0;
            SE_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_R_v_0 <= SE_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_R_v_0 & SE_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_R_v_0 <= SE_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_v_s_0;
            end

            if (SE_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_R_v_1 <= SE_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_R_v_1 & SE_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_R_v_1 <= SE_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_v_s_0;
            end

        end
    end

    // SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2(STALLENABLE,651)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_V0 = SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_s_tv_0 = SE_i_mptr_bitcast_index53_gaussian0_add_x_BitJoin_for_q_backStall & SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_backEN = ~ (SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_v_s_0 = SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_backEN & SR_SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_backStall = ~ (SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_backEN == 1'b0)
            begin
                SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_R_v_0 <= SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_R_v_0 & SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_R_v_0 <= SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2(STALLREG,948)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_r_data0 <= 5'bxxxxx;
            SR_SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_r_data1 <= 5'bxxxxx;
            SR_SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_r_valid <= SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_backStall & (SR_SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_r_valid | SR_SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_i_valid);

            if (SR_SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_r_data0 <= $unsigned(i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_r_data1 <= $unsigned(i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_r_data2 <= $unsigned(i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_and0 = SE_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_V0;
    assign SR_SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_and1 = SE_i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_tessel1_0_V1 & SR_SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_and0;
    assign SR_SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_i_valid = SE_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_a_BitJoin_for_c_V0 & SR_SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_and1;
    // Stall signal propagation
    assign SR_SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_backStall = SR_SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_r_valid | ~ (SR_SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_V = SR_SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_r_valid : SR_SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_D0 = SR_SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_r_data0 : i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    // Data1
    assign SR_SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_D1 = SR_SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_r_data1 : i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data2
    assign SR_SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_D2 = SR_SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_r_data2 : i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_c;

    // SE_i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_tessel1_0(STALLENABLE,662)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_tessel1_0_V0 = 1'b1;
    assign SE_i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_tessel1_0_V1 = 1'b1;

    // SE_redist21_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_1_0(STALLENABLE,721)
    // Valid signal propagation
    assign SE_redist21_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_1_0_V0 = SE_redist21_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_1_0_R_v_0;
    assign SE_redist21_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_1_0_V1 = SE_redist21_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_1_0_R_v_1;
    // Stall signal propagation
    assign SE_redist21_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_1_0_s_tv_0 = SE_redist22_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_5_0_backStall & SE_redist21_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_1_0_R_v_0;
    assign SE_redist21_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_1_0_s_tv_1 = SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_backStall & SE_redist21_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_1_0_R_v_1;
    // Backward Enable generation
    assign SE_redist21_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_1_0_or0 = SE_redist21_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_1_0_s_tv_0;
    assign SE_redist21_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_1_0_backEN = ~ (SE_redist21_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_1_0_s_tv_1 | SE_redist21_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_1_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist21_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_1_0_v_s_0 = SE_redist21_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_V0;
    // Backward Stall generation
    assign SE_redist21_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_1_0_backStall = ~ (SE_redist21_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist21_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_1_0_R_v_0 <= 1'b0;
            SE_redist21_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_1_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist21_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_1_0_backEN == 1'b0)
            begin
                SE_redist21_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_1_0_R_v_0 <= SE_redist21_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_1_0_R_v_0 & SE_redist21_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_1_0_s_tv_0;
            end
            else
            begin
                SE_redist21_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_1_0_R_v_0 <= SE_redist21_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_1_0_v_s_0;
            end

            if (SE_redist21_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_1_0_backEN == 1'b0)
            begin
                SE_redist21_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_1_0_R_v_1 <= SE_redist21_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_1_0_R_v_1 & SE_redist21_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_1_0_s_tv_1;
            end
            else
            begin
                SE_redist21_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_1_0_R_v_1 <= SE_redist21_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_1_0_v_s_0;
            end

        end
    end

    // SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2(STALLREG,954)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_r_data0 <= 5'bxxxxx;
            SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_r_data1 <= 5'bxxxxx;
            SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_r_valid <= SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_backStall & (SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_r_valid | SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_i_valid);

            if (SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_r_data0 <= $unsigned(i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_r_data1 <= $unsigned(i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_r_data2 <= $unsigned(i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_and0 = SE_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_V0;
    assign SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_and1 = SE_redist21_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_1_0_V1 & SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_and0;
    assign SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_i_valid = SE_i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_tessel1_0_V0 & SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_and1;
    // Stall signal propagation
    assign SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_backStall = SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_r_valid | ~ (SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_V = SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_r_valid : SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_D0 = SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_r_data0 : i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    // Data1
    assign SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_D1 = SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_r_data1 : i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data2
    assign SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_D2 = SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_r_data2 : i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_c;

    // SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12(STALLENABLE,569)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_consumed0 = (~ (SE_redist21_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_dest_data_out_0_0_1_0_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_consumed1 = (~ (SE_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_StallValid = SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_backStall & SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_or0 = SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_backStall = SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_V1 = SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_wireValid = i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_valid_out;

    // SE_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2(STALLENABLE,647)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_V0 = SE_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_R_v_0;
    assign SE_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_V1 = SE_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_s_tv_0 = SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_p2_of_2_backStall & SE_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_R_v_0;
    assign SE_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_s_tv_1 = SR_SE_redist6_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_q_1_0_backStall & SE_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_or0 = SE_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_s_tv_0;
    assign SE_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_backEN = ~ (SE_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_s_tv_1 | SE_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_and0 = SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_V1 & SE_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_backEN;
    assign SE_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_v_s_0 = SE_i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_BitJoin_for_b_V0 & SE_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_and0;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_backStall = ~ (SE_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_R_v_0 <= 1'b0;
            SE_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_R_v_0 <= SE_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_R_v_0 & SE_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_R_v_0 <= SE_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_v_s_0;
            end

            if (SE_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_R_v_1 <= SE_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_R_v_1 & SE_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_R_v_1 <= SE_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_v_s_0;
            end

        end
    end

    // SE_i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_tessel0_2(STALLENABLE,660)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_tessel0_2_V0 = 1'b1;
    assign SE_i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_tessel0_2_V1 = 1'b1;

    // SE_i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_BitJoin_for_b(STALLENABLE,661)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_BitJoin_for_b_V0 = SE_i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_BitJoin_for_b_backStall = SE_i_mptr_bitcast_index51_gaussian0_add_x_p1_of_2_backStall | ~ (SE_i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_BitJoin_for_b_and0 = SE_i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_tessel0_2_V0;
    assign SE_i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid = SE_redist3_i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_V0 & SE_i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_BitJoin_for_b_and0;

    // SE_redist3_i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0(STALLENABLE,683)
    // Valid signal propagation
    assign SE_redist3_i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_V0 = SE_redist3_i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist3_i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_s_tv_0 = SE_i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_BitJoin_for_b_backStall & SE_redist3_i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist3_i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_backEN = ~ (SE_redist3_i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist3_i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_v_s_0 = SE_redist3_i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_i32_mul11_add1429_gaussian28_V0;
    // Backward Stall generation
    assign SE_redist3_i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_backStall = ~ (SE_redist3_i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist3_i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist3_i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_backEN == 1'b0)
            begin
                SE_redist3_i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_R_v_0 <= SE_redist3_i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_R_v_0 & SE_redist3_i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist3_i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_R_v_0 <= SE_redist3_i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_dest_i32_mul11_add1429_gaussian28(STALLENABLE,565)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_mul11_add1429_gaussian28_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_mul11_add1429_gaussian28_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_mul11_add1429_gaussian28_backStall = SE_redist3_i_mptr_bitcast_index51_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_mul11_add1429_gaussian28_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_mul11_add1429_gaussian28_and0 = i_llvm_fpga_ffwd_dest_i32_mul11_add1429_gaussian28_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_mul11_add1429_gaussian28_wireValid = SE_out_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_V0 & SE_out_i_llvm_fpga_ffwd_dest_i32_mul11_add1429_gaussian28_and0;

    // SE_out_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14(STALLENABLE,595)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_fromReg0 <= SE_out_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_fromReg1 <= SE_out_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_consumed0 = (~ (SE_out_i_llvm_fpga_ffwd_dest_i32_mul11_add1429_gaussian28_backStall) & SE_out_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_wireValid) | SE_out_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_consumed1 = (~ (SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_0_backStall) & SE_out_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_wireValid) | SE_out_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_StallValid = SE_out_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_backStall & SE_out_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_wireValid;
    assign SE_out_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_toReg0 = SE_out_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_StallValid & SE_out_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_toReg1 = SE_out_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_StallValid & SE_out_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_or0 = SE_out_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_wireStall = ~ (SE_out_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_consumed1 & SE_out_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_or0);
    assign SE_out_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_backStall = SE_out_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_V0 = SE_out_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_V1 = SE_out_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_wireValid = i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_valid_out;

    // SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_0(STALLENABLE,699)
    // Valid signal propagation
    assign SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_0_V0 = SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_0_R_v_0;
    // Stall signal propagation
    assign SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_0_s_tv_0 = SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_1_backStall & SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_0_R_v_0;
    // Backward Enable generation
    assign SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_0_backEN = ~ (SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_0_v_s_0 = SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_0_backEN & SE_out_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_V1;
    // Backward Stall generation
    assign SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_0_backStall = ~ (SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_0_backEN == 1'b0)
            begin
                SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_0_R_v_0 <= SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_0_R_v_0 & SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_0_s_tv_0;
            end
            else
            begin
                SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_0_R_v_0 <= SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_0_v_s_0;
            end

        end
    end

    // bubble_join_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14(BITJOIN,487)
    assign bubble_join_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_q = i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14(BITSELECT,488)
    assign bubble_select_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_q[31:0]);

    // redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_0(REG,376)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_0_backEN == 1'b1)
        begin
            redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_0_q <= $unsigned(bubble_select_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_b);
        end
    end

    // redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_1(REG,377)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_1_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_1_backEN == 1'b1)
        begin
            redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_1_q <= $unsigned(redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_0_q);
        end
    end

    // SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_1(STALLENABLE,700)
    // Valid signal propagation
    assign SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_1_V0 = SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_1_R_v_0;
    // Stall signal propagation
    assign SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_1_s_tv_0 = SR_SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_2_backStall & SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_1_R_v_0;
    // Backward Enable generation
    assign SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_1_backEN = ~ (SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_1_v_s_0 = SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_1_backEN & SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_0_V0;
    // Backward Stall generation
    assign SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_1_backStall = ~ (SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_1_backEN == 1'b0)
            begin
                SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_1_R_v_0 <= SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_1_R_v_0 & SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_1_s_tv_0;
            end
            else
            begin
                SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_1_R_v_0 <= SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_1_v_s_0;
            end

        end
    end

    // SR_SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_2(STALLREG,945)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_2_r_valid <= 1'b0;
            SR_SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_2_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_2_r_valid <= SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_2_backStall & (SR_SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_2_r_valid | SR_SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_2_i_valid);

            if (SR_SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_2_r_data0 <= $unsigned(redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_2_i_valid = SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_1_V0;
    // Stall signal propagation
    assign SR_SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_2_backStall = SR_SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_2_r_valid | ~ (SR_SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_2_i_valid);

    // Valid
    assign SR_SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_2_V = SR_SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_2_r_valid == 1'b1 ? SR_SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_2_r_valid : SR_SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_2_i_valid;

    assign SR_SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_2_D0 = SR_SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_2_r_valid == 1'b1 ? SR_SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_2_r_data0 : redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_1_q;

    // redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_2(REG,378)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_2_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_2_backEN == 1'b1)
        begin
            redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_2_q <= $unsigned(SR_SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_2_D0);
        end
    end

    // redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_3(REG,379)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_3_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_3_backEN == 1'b1)
        begin
            redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_3_q <= $unsigned(redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_2_q);
        end
    end

    // SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_3(STALLENABLE,702)
    // Valid signal propagation
    assign SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_3_V0 = SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_3_R_v_0;
    // Stall signal propagation
    assign SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_3_s_tv_0 = SR_SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_backStall & SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_3_R_v_0;
    // Backward Enable generation
    assign SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_3_backEN = ~ (SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_3_v_s_0 = SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_3_backEN & SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_2_V0;
    // Backward Stall generation
    assign SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_3_backStall = ~ (SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_3_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_3_backEN == 1'b0)
            begin
                SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_3_R_v_0 <= SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_3_R_v_0 & SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_3_s_tv_0;
            end
            else
            begin
                SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_3_R_v_0 <= SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_3_v_s_0;
            end

        end
    end

    // SR_SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4(STALLREG,946)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_r_valid <= 1'b0;
            SR_SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_r_valid <= SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_backStall & (SR_SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_r_valid | SR_SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_i_valid);

            if (SR_SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_r_data0 <= $unsigned(redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_3_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_i_valid = SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_3_V0;
    // Stall signal propagation
    assign SR_SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_backStall = SR_SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_r_valid | ~ (SR_SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_i_valid);

    // Valid
    assign SR_SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_V = SR_SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_r_valid == 1'b1 ? SR_SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_r_valid : SR_SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_i_valid;

    assign SR_SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_D0 = SR_SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_r_valid == 1'b1 ? SR_SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_r_data0 : redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_3_q;

    // redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4(REG,380)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_backEN == 1'b1)
        begin
            redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_q <= $unsigned(SR_SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_D0);
        end
    end

    // i_add9_gaussian17(ADD,60)@7
    assign i_add9_gaussian17_a = {1'b0, redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_q};
    assign i_add9_gaussian17_b = {1'b0, redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_4_q};
    assign i_add9_gaussian17_o = $unsigned(i_add9_gaussian17_a) + $unsigned(i_add9_gaussian17_b);
    assign i_add9_gaussian17_q = i_add9_gaussian17_o[32:0];

    // i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_tessel0_1(BITSELECT,295)@7
    assign i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_tessel0_1_b = $unsigned(i_add9_gaussian17_q[31:0]);

    // SE_redist1_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0(STALLENABLE,681)
    // Valid signal propagation
    assign SE_redist1_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_V0 = SE_redist1_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist1_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_s_tv_0 = SE_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_BitJoin_for_b_backStall & SE_redist1_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist1_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_backEN = ~ (SE_redist1_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist1_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_v_s_0 = SE_redist1_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_backEN & SR_SE_redist1_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_V;
    // Backward Stall generation
    assign SE_redist1_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_backStall = ~ (SE_redist1_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist1_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist1_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_backEN == 1'b0)
            begin
                SE_redist1_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_R_v_0 <= SE_redist1_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_R_v_0 & SE_redist1_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist1_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_R_v_0 <= SE_redist1_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_v_s_0;
            end

        end
    end

    // SR_SE_redist1_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0(STALLREG,947)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist1_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_r_valid <= 1'b0;
            SR_SE_redist1_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist1_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_r_valid <= SE_redist1_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_backStall & (SR_SE_redist1_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_r_valid | SR_SE_redist1_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_i_valid);

            if (SR_SE_redist1_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist1_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_r_data0 <= $unsigned(i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_tessel0_1_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist1_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_i_valid = SE_i_add9_gaussian17_V0;
    // Stall signal propagation
    assign SR_SE_redist1_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_backStall = SR_SE_redist1_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_r_valid | ~ (SR_SE_redist1_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_i_valid);

    // Valid
    assign SR_SE_redist1_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_V = SR_SE_redist1_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_r_valid == 1'b1 ? SR_SE_redist1_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_r_valid : SR_SE_redist1_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_i_valid;

    assign SR_SE_redist1_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_D0 = SR_SE_redist1_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_r_valid == 1'b1 ? SR_SE_redist1_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_r_data0 : i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_tessel0_1_b;

    // redist14_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_68_fifo(STALLFIFO,381)
    assign redist14_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_68_fifo_valid_in = SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_V1;
    assign redist14_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_68_fifo_stall_in = SE_out_redist14_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_68_fifo_backStall;
    assign redist14_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_68_fifo_data_in = redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_q;
    assign redist14_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_68_fifo_valid_in_bitsignaltemp = redist14_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_68_fifo_valid_in[0];
    assign redist14_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_68_fifo_stall_in_bitsignaltemp = redist14_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_68_fifo_stall_in[0];
    assign redist14_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_68_fifo_valid_out[0] = redist14_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_68_fifo_valid_out_bitsignaltemp;
    assign redist14_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_68_fifo_stall_out[0] = redist14_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_68_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(64),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist14_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_68_fifo (
        .valid_in(redist14_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_68_fifo_valid_in_bitsignaltemp),
        .stall_in(redist14_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_68_fifo_stall_in_bitsignaltemp),
        .data_in(redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_q),
        .valid_out(redist14_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_68_fifo_valid_out_bitsignaltemp),
        .stall_out(redist14_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_68_fifo_stall_out_bitsignaltemp),
        .data_out(redist14_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_68_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4(STALLENABLE,703)
    // Valid signal propagation
    assign SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_V0 = SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_R_v_0;
    assign SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_V1 = SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_R_v_1;
    // Stall signal propagation
    assign SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_s_tv_0 = SE_i_add9_gaussian17_backStall & SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_R_v_0;
    assign SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_s_tv_1 = redist14_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_68_fifo_stall_out & SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_R_v_1;
    // Backward Enable generation
    assign SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_or0 = SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_s_tv_0;
    assign SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_backEN = ~ (SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_s_tv_1 | SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_v_s_0 = SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_backEN & SR_SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_V;
    // Backward Stall generation
    assign SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_backStall = ~ (SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_R_v_0 <= 1'b0;
            SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_backEN == 1'b0)
            begin
                SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_R_v_0 <= SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_R_v_0 & SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_s_tv_0;
            end
            else
            begin
                SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_R_v_0 <= SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_v_s_0;
            end

            if (SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_backEN == 1'b0)
            begin
                SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_R_v_1 <= SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_R_v_1 & SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_s_tv_1;
            end
            else
            begin
                SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_R_v_1 <= SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_v_s_0;
            end

        end
    end

    // SE_i_add9_gaussian17(STALLENABLE,553)
    // Valid signal propagation
    assign SE_i_add9_gaussian17_V0 = SE_i_add9_gaussian17_wireValid;
    // Backward Stall generation
    assign SE_i_add9_gaussian17_backStall = SR_SE_redist1_i_mptr_bitcast_index53_gaussian0_add_x_BitSelect_for_b_tessel0_1_b_1_0_backStall | ~ (SE_i_add9_gaussian17_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_add9_gaussian17_and0 = SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_4_V0;
    assign SE_i_add9_gaussian17_wireValid = SE_redist13_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_5_4_V0 & SE_i_add9_gaussian17_and0;

    // SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_4(STALLENABLE,696)
    // Valid signal propagation
    assign SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_4_V0 = SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_4_R_v_0;
    assign SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_4_V1 = SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_4_R_v_1;
    // Stall signal propagation
    assign SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_4_s_tv_0 = SE_i_add9_gaussian17_backStall & SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_4_R_v_0;
    assign SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_4_s_tv_1 = redist12_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_68_fifo_stall_out & SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_4_R_v_1;
    // Backward Enable generation
    assign SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_4_or0 = SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_4_s_tv_0;
    assign SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_4_backEN = ~ (SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_4_s_tv_1 | SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_4_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_4_v_s_0 = SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_4_backEN & SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_3_V0;
    // Backward Stall generation
    assign SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_4_backStall = ~ (SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_4_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_4_R_v_0 <= 1'b0;
            SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_4_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_4_backEN == 1'b0)
            begin
                SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_4_R_v_0 <= SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_4_R_v_0 & SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_4_s_tv_0;
            end
            else
            begin
                SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_4_R_v_0 <= SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_4_v_s_0;
            end

            if (SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_4_backEN == 1'b0)
            begin
                SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_4_R_v_1 <= SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_4_R_v_1 & SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_4_s_tv_1;
            end
            else
            begin
                SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_4_R_v_1 <= SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_4_v_s_0;
            end

        end
    end

    // SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_3(STALLENABLE,695)
    // Valid signal propagation
    assign SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_3_V0 = SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_3_R_v_0;
    // Stall signal propagation
    assign SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_3_s_tv_0 = SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_4_backStall & SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_3_R_v_0;
    // Backward Enable generation
    assign SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_3_backEN = ~ (SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_3_v_s_0 = SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_3_backEN & SR_SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_3_V;
    // Backward Stall generation
    assign SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_3_backStall = ~ (SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_3_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_3_backEN == 1'b0)
            begin
                SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_3_R_v_0 <= SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_3_R_v_0 & SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_3_s_tv_0;
            end
            else
            begin
                SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_3_R_v_0 <= SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_3_v_s_0;
            end

        end
    end

    // SR_SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_3(STALLREG,944)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_3_r_valid <= 1'b0;
            SR_SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_3_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_3_r_valid <= SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_3_backStall & (SR_SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_3_r_valid | SR_SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_3_i_valid);

            if (SR_SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_3_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_3_r_data0 <= $unsigned(redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_3_i_valid = SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_2_V0;
    // Stall signal propagation
    assign SR_SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_3_backStall = SR_SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_3_r_valid | ~ (SR_SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_3_i_valid);

    // Valid
    assign SR_SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_3_V = SR_SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_3_r_valid == 1'b1 ? SR_SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_3_r_valid : SR_SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_3_i_valid;

    assign SR_SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_3_D0 = SR_SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_3_r_valid == 1'b1 ? SR_SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_3_r_data0 : redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_2_q;

    // SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_2(STALLENABLE,694)
    // Valid signal propagation
    assign SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_2_V0 = SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_2_R_v_0;
    // Stall signal propagation
    assign SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_2_s_tv_0 = SR_SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_3_backStall & SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_2_R_v_0;
    // Backward Enable generation
    assign SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_2_backEN = ~ (SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_2_v_s_0 = SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_2_backEN & SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_1_V0;
    // Backward Stall generation
    assign SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_2_backStall = ~ (SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_2_backEN == 1'b0)
            begin
                SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_2_R_v_0 <= SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_2_R_v_0 & SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_2_s_tv_0;
            end
            else
            begin
                SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_2_R_v_0 <= SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_2_v_s_0;
            end

        end
    end

    // SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_1(STALLENABLE,693)
    // Valid signal propagation
    assign SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_1_V0 = SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_1_R_v_0;
    // Stall signal propagation
    assign SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_1_s_tv_0 = SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_2_backStall & SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_1_R_v_0;
    // Backward Enable generation
    assign SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_1_backEN = ~ (SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_1_v_s_0 = SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_1_backEN & SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_0_V0;
    // Backward Stall generation
    assign SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_1_backStall = ~ (SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_1_backEN == 1'b0)
            begin
                SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_1_R_v_0 <= SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_1_R_v_0 & SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_1_s_tv_0;
            end
            else
            begin
                SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_1_R_v_0 <= SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_1_v_s_0;
            end

        end
    end

    // SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_0(STALLENABLE,692)
    // Valid signal propagation
    assign SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_0_V0 = SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_0_R_v_0;
    // Stall signal propagation
    assign SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_0_s_tv_0 = SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_1_backStall & SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_0_R_v_0;
    // Backward Enable generation
    assign SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_0_backEN = ~ (SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_0_v_s_0 = SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_0_backEN & SE_out_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_V0;
    // Backward Stall generation
    assign SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_0_backStall = ~ (SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_0_backEN == 1'b0)
            begin
                SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_0_R_v_0 <= SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_0_R_v_0 & SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_0_s_tv_0;
            end
            else
            begin
                SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_0_R_v_0 <= SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_0_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15(STALLENABLE,597)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_V0 = SE_out_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_backStall = SE_redist11_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_5_0_backStall | ~ (SE_out_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_wireValid = i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_valid_out;

    // SE_out_i_llvm_fpga_push_i32_mul_add1645_push18_gaussian16(STALLENABLE,621)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i32_mul_add1645_push18_gaussian16_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i32_mul_add1645_push18_gaussian16_wireValid = i_llvm_fpga_push_i32_mul_add1645_push18_gaussian16_out_valid_out;

    // bubble_join_redist12_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_68_fifo(BITJOIN,513)
    assign bubble_join_redist12_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_68_fifo_q = redist12_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_68_fifo_data_out;

    // bubble_select_redist12_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_68_fifo(BITSELECT,514)
    assign bubble_select_redist12_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_68_fifo_b = $unsigned(bubble_join_redist12_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_68_fifo_q[31:0]);

    // i_llvm_fpga_push_i32_mul_add1645_push18_gaussian16(BLACKBOX,101)@70
    // in in_stall_in@20000000
    // out out_data_out@71
    // out out_feedback_out_18@20000000
    // out out_feedback_valid_out_18@20000000
    // out out_stall_out@20000000
    // out out_valid_out@71
    gaussian_i_llvm_fpga_push_i32_mul_add1645_push18_0 thei_llvm_fpga_push_i32_mul_add1645_push18_gaussian16 (
        .in_data_in(bubble_select_redist12_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_68_fifo_b),
        .in_feedback_stall_in_18(i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_feedback_stall_out_18),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_gaussian4_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i32_mul_add1645_push18_gaussian16_backStall),
        .in_valid_in(SE_out_redist12_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_68_fifo_V0),
        .out_data_out(),
        .out_feedback_out_18(i_llvm_fpga_push_i32_mul_add1645_push18_gaussian16_out_feedback_out_18),
        .out_feedback_valid_out_18(i_llvm_fpga_push_i32_mul_add1645_push18_gaussian16_out_feedback_valid_out_18),
        .out_stall_out(i_llvm_fpga_push_i32_mul_add1645_push18_gaussian16_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_mul_add1645_push18_gaussian16_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15(BLACKBOX,89)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_18@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    gaussian_i_llvm_fpga_pop_i32_mul_add1645_pop18_0 thei_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15 (
        .in_data_in(bubble_select_gaussian_B7_merge_reg_aunroll_x_c),
        .in_dir(bubble_select_gaussian_B7_merge_reg_aunroll_x_b),
        .in_feedback_in_18(i_llvm_fpga_push_i32_mul_add1645_push18_gaussian16_out_feedback_out_18),
        .in_feedback_valid_in_18(i_llvm_fpga_push_i32_mul_add1645_push18_gaussian16_out_feedback_valid_out_18),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_backStall),
        .in_valid_in(SE_out_gaussian_B7_merge_reg_aunroll_x_V7),
        .out_data_out(i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out),
        .out_feedback_stall_out_18(i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_feedback_stall_out_18),
        .out_stall_out(i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_i32_k_044_push13_gaussian38(STALLENABLE,619)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i32_k_044_push13_gaussian38_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i32_k_044_push13_gaussian38_wireValid = i_llvm_fpga_push_i32_k_044_push13_gaussian38_out_valid_out;

    // bubble_join_redist14_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_68_fifo(BITJOIN,516)
    assign bubble_join_redist14_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_68_fifo_q = redist14_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_68_fifo_data_out;

    // bubble_select_redist14_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_68_fifo(BITSELECT,517)
    assign bubble_select_redist14_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_68_fifo_b = $unsigned(bubble_join_redist14_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_68_fifo_q[31:0]);

    // i_inc_gaussian37(ADD,69)@70
    assign i_inc_gaussian37_a = {1'b0, bubble_select_redist14_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_68_fifo_b};
    assign i_inc_gaussian37_b = {1'b0, c_i32_161_q};
    assign i_inc_gaussian37_o = $unsigned(i_inc_gaussian37_a) + $unsigned(i_inc_gaussian37_b);
    assign i_inc_gaussian37_q = i_inc_gaussian37_o[32:0];

    // bgTrunc_i_inc_gaussian37_sel_x(BITSELECT,5)@70
    assign bgTrunc_i_inc_gaussian37_sel_x_b = i_inc_gaussian37_q[31:0];

    // i_llvm_fpga_push_i32_k_044_push13_gaussian38(BLACKBOX,100)@70
    // in in_stall_in@20000000
    // out out_data_out@71
    // out out_feedback_out_13@20000000
    // out out_feedback_valid_out_13@20000000
    // out out_stall_out@20000000
    // out out_valid_out@71
    gaussian_i_llvm_fpga_push_i32_k_044_push13_0 thei_llvm_fpga_push_i32_k_044_push13_gaussian38 (
        .in_data_in(bgTrunc_i_inc_gaussian37_sel_x_b),
        .in_feedback_stall_in_13(i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_feedback_stall_out_13),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_gaussian4_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i32_k_044_push13_gaussian38_backStall),
        .in_valid_in(SE_out_redist14_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_68_fifo_V0),
        .out_data_out(),
        .out_feedback_out_13(i_llvm_fpga_push_i32_k_044_push13_gaussian38_out_feedback_out_13),
        .out_feedback_valid_out_13(i_llvm_fpga_push_i32_k_044_push13_gaussian38_out_feedback_valid_out_13),
        .out_stall_out(i_llvm_fpga_push_i32_k_044_push13_gaussian38_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_k_044_push13_gaussian38_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_161(CONSTANT,52)
    assign c_i32_161_q = $unsigned(32'b00000000000000000000000000000001);

    // i_llvm_fpga_pop_i32_k_044_pop13_gaussian14(BLACKBOX,88)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_13@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    gaussian_i_llvm_fpga_pop_i32_k_044_pop13_0 thei_llvm_fpga_pop_i32_k_044_pop13_gaussian14 (
        .in_data_in(c_i32_161_q),
        .in_dir(bubble_select_gaussian_B7_merge_reg_aunroll_x_b),
        .in_feedback_in_13(i_llvm_fpga_push_i32_k_044_push13_gaussian38_out_feedback_out_13),
        .in_feedback_valid_in_13(i_llvm_fpga_push_i32_k_044_push13_gaussian38_out_feedback_valid_out_13),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_backStall),
        .in_valid_in(SE_out_gaussian_B7_merge_reg_aunroll_x_V6),
        .out_data_out(i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out),
        .out_feedback_stall_out_13(i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_feedback_stall_out_13),
        .out_stall_out(i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_0(REG,410)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_backEN == 1'b1)
        begin
            redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_q <= $unsigned(bubble_select_gaussian_B7_merge_reg_aunroll_x_b);
        end
    end

    // SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_1(STALLENABLE,739)
    // Valid signal propagation
    assign SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_V0 = SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_R_v_0;
    // Stall signal propagation
    assign SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_s_tv_0 = SR_SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_backStall & SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_R_v_0;
    // Backward Enable generation
    assign SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_backEN = ~ (SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_v_s_0 = SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_backEN & SR_SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_V;
    // Backward Stall generation
    assign SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_backStall = ~ (SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_backEN == 1'b0)
            begin
                SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_R_v_0 <= SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_R_v_0 & SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_s_tv_0;
            end
            else
            begin
                SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_R_v_0 <= SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_v_s_0;
            end

        end
    end

    // SR_SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_1(STALLREG,934)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_r_valid <= 1'b0;
            SR_SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_r_valid <= SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_backStall & (SR_SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_r_valid | SR_SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_i_valid);

            if (SR_SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_r_data0 <= $unsigned(redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_i_valid = SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_V0;
    // Stall signal propagation
    assign SR_SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_backStall = SR_SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_r_valid | ~ (SR_SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_i_valid);

    // Valid
    assign SR_SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_V = SR_SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_r_valid == 1'b1 ? SR_SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_r_valid : SR_SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_i_valid;

    assign SR_SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_D0 = SR_SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_r_valid == 1'b1 ? SR_SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_r_data0 : redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_q;

    // SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_0(STALLENABLE,738)
    // Valid signal propagation
    assign SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_V0 = SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_R_v_0;
    assign SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_V1 = SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_R_v_1;
    // Stall signal propagation
    assign SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_s_tv_0 = SR_SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_backStall & SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_R_v_0;
    assign SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_s_tv_1 = i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a5917_gaussian12_out_stall_out & SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_R_v_1;
    // Backward Enable generation
    assign SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_or0 = SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_s_tv_0;
    assign SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_backEN = ~ (SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_s_tv_1 | SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_v_s_0 = SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_backEN & SE_out_gaussian_B7_merge_reg_aunroll_x_V4;
    // Backward Stall generation
    assign SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_backStall = ~ (SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_R_v_0 <= 1'b0;
            SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_backEN == 1'b0)
            begin
                SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_R_v_0 <= SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_R_v_0 & SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_s_tv_0;
            end
            else
            begin
                SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_R_v_0 <= SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_v_s_0;
            end

            if (SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_backEN == 1'b0)
            begin
                SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_R_v_1 <= SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_R_v_1 & SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_s_tv_1;
            end
            else
            begin
                SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_R_v_1 <= SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44(STALLENABLE,561)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_consumed0 = (~ (bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_1_reg_stall_out) & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_consumed1 = (~ (SE_i_unnamed_gaussian45_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_backStall & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_or0 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_backStall = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_V1 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_wireValid = i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_out_valid_out;

    // i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44(BLACKBOX,71)@69
    // in in_stall_in@20000000
    // out out_dest_data_out_8_0@70
    // out out_stall_out@20000000
    // out out_valid_out@70
    gaussian_i_llvm_fpga_ffwd_dest_i1_cmp24525_0 thei_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44 (
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_backStall),
        .in_valid_in(SE_out_bubble_out_gaussian_B7_merge_reg_aunroll_x_5_V0),
        .out_dest_data_out_8_0(i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_out_dest_data_out_8_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_gaussian_B7_merge_reg_aunroll_x_5(STALLENABLE,765)
    // Valid signal propagation
    assign SE_out_bubble_out_gaussian_B7_merge_reg_aunroll_x_5_V0 = SE_out_bubble_out_gaussian_B7_merge_reg_aunroll_x_5_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_gaussian_B7_merge_reg_aunroll_x_5_backStall = i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_out_stall_out | ~ (SE_out_bubble_out_gaussian_B7_merge_reg_aunroll_x_5_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_gaussian_B7_merge_reg_aunroll_x_5_wireValid = bubble_out_gaussian_B7_merge_reg_aunroll_x_5_reg_valid_out;

    // bubble_out_gaussian_B7_merge_reg_aunroll_x_5_reg(STALLFIFO,926)
    assign bubble_out_gaussian_B7_merge_reg_aunroll_x_5_reg_valid_in = SE_out_gaussian_B7_merge_reg_aunroll_x_V3;
    assign bubble_out_gaussian_B7_merge_reg_aunroll_x_5_reg_stall_in = SE_out_bubble_out_gaussian_B7_merge_reg_aunroll_x_5_backStall;
    assign bubble_out_gaussian_B7_merge_reg_aunroll_x_5_reg_valid_in_bitsignaltemp = bubble_out_gaussian_B7_merge_reg_aunroll_x_5_reg_valid_in[0];
    assign bubble_out_gaussian_B7_merge_reg_aunroll_x_5_reg_stall_in_bitsignaltemp = bubble_out_gaussian_B7_merge_reg_aunroll_x_5_reg_stall_in[0];
    assign bubble_out_gaussian_B7_merge_reg_aunroll_x_5_reg_valid_out[0] = bubble_out_gaussian_B7_merge_reg_aunroll_x_5_reg_valid_out_bitsignaltemp;
    assign bubble_out_gaussian_B7_merge_reg_aunroll_x_5_reg_stall_out[0] = bubble_out_gaussian_B7_merge_reg_aunroll_x_5_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(69),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_gaussian_B7_merge_reg_aunroll_x_5_reg (
        .valid_in(bubble_out_gaussian_B7_merge_reg_aunroll_x_5_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_gaussian_B7_merge_reg_aunroll_x_5_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_gaussian_B7_merge_reg_aunroll_x_5_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_gaussian_B7_merge_reg_aunroll_x_5_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_gaussian_B7_merge_reg_aunroll_x_3(STALLENABLE,761)
    // Valid signal propagation
    assign SE_out_bubble_out_gaussian_B7_merge_reg_aunroll_x_3_V0 = SE_out_bubble_out_gaussian_B7_merge_reg_aunroll_x_3_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_gaussian_B7_merge_reg_aunroll_x_3_backStall = i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_out_stall_out | ~ (SE_out_bubble_out_gaussian_B7_merge_reg_aunroll_x_3_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_gaussian_B7_merge_reg_aunroll_x_3_wireValid = bubble_out_gaussian_B7_merge_reg_aunroll_x_3_reg_valid_out;

    // bubble_out_gaussian_B7_merge_reg_aunroll_x_3_reg(STALLFIFO,925)
    assign bubble_out_gaussian_B7_merge_reg_aunroll_x_3_reg_valid_in = SE_out_gaussian_B7_merge_reg_aunroll_x_V2;
    assign bubble_out_gaussian_B7_merge_reg_aunroll_x_3_reg_stall_in = SE_out_bubble_out_gaussian_B7_merge_reg_aunroll_x_3_backStall;
    assign bubble_out_gaussian_B7_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp = bubble_out_gaussian_B7_merge_reg_aunroll_x_3_reg_valid_in[0];
    assign bubble_out_gaussian_B7_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp = bubble_out_gaussian_B7_merge_reg_aunroll_x_3_reg_stall_in[0];
    assign bubble_out_gaussian_B7_merge_reg_aunroll_x_3_reg_valid_out[0] = bubble_out_gaussian_B7_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp;
    assign bubble_out_gaussian_B7_merge_reg_aunroll_x_3_reg_stall_out[0] = bubble_out_gaussian_B7_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(4),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_gaussian_B7_merge_reg_aunroll_x_3_reg (
        .valid_in(bubble_out_gaussian_B7_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_gaussian_B7_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_gaussian_B7_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_gaussian_B7_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_mul11_add1429_gaussian28(BLACKBOX,73)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_9_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    gaussian_i_llvm_fpga_ffwd_dest_i32_mul11_add1429_0 thei_llvm_fpga_ffwd_dest_i32_mul11_add1429_gaussian28 (
        .in_intel_reserved_ffwd_9_0(in_intel_reserved_ffwd_9_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_mul11_add1429_gaussian28_backStall),
        .in_valid_in(SE_out_gaussian_B7_merge_reg_aunroll_x_V1),
        .out_dest_data_out_9_0(i_llvm_fpga_ffwd_dest_i32_mul11_add1429_gaussian28_out_dest_data_out_9_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_mul11_add1429_gaussian28_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_mul11_add1429_gaussian28_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_2(STALLENABLE,728)
    // Valid signal propagation
    assign SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_2_V0 = SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_2_R_v_0;
    // Stall signal propagation
    assign SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_2_s_tv_0 = SE_i_unnamed_gaussian11_backStall & SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_2_R_v_0;
    // Backward Enable generation
    assign SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_2_backEN = ~ (SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_2_v_s_0 = SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_2_backEN & SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_1_V0;
    // Backward Stall generation
    assign SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_2_backStall = ~ (SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_2_backEN == 1'b0)
            begin
                SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_2_R_v_0 <= SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_2_R_v_0 & SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_2_s_tv_0;
            end
            else
            begin
                SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_2_R_v_0 <= SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_2_v_s_0;
            end

        end
    end

    // SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_1(STALLENABLE,727)
    // Valid signal propagation
    assign SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_1_V0 = SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_1_R_v_0;
    // Stall signal propagation
    assign SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_1_s_tv_0 = SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_2_backStall & SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_1_R_v_0;
    // Backward Enable generation
    assign SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_1_backEN = ~ (SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_1_v_s_0 = SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_1_backEN & SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_0_V0;
    // Backward Stall generation
    assign SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_1_backStall = ~ (SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_1_backEN == 1'b0)
            begin
                SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_1_R_v_0 <= SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_1_R_v_0 & SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_1_s_tv_0;
            end
            else
            begin
                SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_1_R_v_0 <= SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_1_v_s_0;
            end

        end
    end

    // SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_0(STALLENABLE,726)
    // Valid signal propagation
    assign SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_0_V0 = SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_0_R_v_0;
    // Stall signal propagation
    assign SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_0_s_tv_0 = SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_1_backStall & SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_0_R_v_0;
    // Backward Enable generation
    assign SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_0_backEN = ~ (SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_0_v_s_0 = SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_V0;
    // Backward Stall generation
    assign SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_0_backStall = ~ (SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_0_backEN == 1'b0)
            begin
                SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_0_R_v_0 <= SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_0_R_v_0 & SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_0_s_tv_0;
            end
            else
            begin
                SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_0_R_v_0 <= SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_0_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10(STALLENABLE,563)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_backStall = SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_0_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_wireValid = i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_valid_out;

    // i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10(BLACKBOX,72)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_8_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    gaussian_i_llvm_fpga_ffwd_dest_i1_cmp24526_0 thei_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10 (
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_backStall),
        .in_valid_in(SE_out_gaussian_B7_merge_reg_aunroll_x_V0),
        .out_dest_data_out_8_0(i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,634)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = gaussian_B7_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bubble_join_stall_entry(BITJOIN,500)
    assign bubble_join_stall_entry_q = {in_unnamed_gaussian17, in_notcmp3552, in_mul_add1651, in_memdep_phi_pop1053, in_forked31, in_add43_pop1154};

    // bubble_select_stall_entry(BITSELECT,501)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:32]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[33:33]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[65:34]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[66:66]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[67:67]);

    // gaussian_B7_merge_reg_aunroll_x(BLACKBOX,18)@0
    // in in_stall_in@20000000
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    // out out_data_out_3_tpl@1
    // out out_data_out_4_tpl@1
    // out out_data_out_5_tpl@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    gaussian_B7_merge_reg thegaussian_B7_merge_reg_aunroll_x (
        .in_data_in_0_tpl(bubble_select_stall_entry_c),
        .in_data_in_1_tpl(bubble_select_stall_entry_e),
        .in_data_in_2_tpl(bubble_select_stall_entry_g),
        .in_data_in_3_tpl(bubble_select_stall_entry_f),
        .in_data_in_4_tpl(bubble_select_stall_entry_d),
        .in_data_in_5_tpl(bubble_select_stall_entry_b),
        .in_stall_in(SE_out_gaussian_B7_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out_0_tpl(gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(gaussian_B7_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(gaussian_B7_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(gaussian_B7_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(gaussian_B7_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_stall_out(gaussian_B7_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(gaussian_B7_merge_reg_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_gaussian_B7_merge_reg_aunroll_x(STALLENABLE,547)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_gaussian_B7_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_gaussian_B7_merge_reg_aunroll_x_fromReg1 <= '0;
            SE_out_gaussian_B7_merge_reg_aunroll_x_fromReg2 <= '0;
            SE_out_gaussian_B7_merge_reg_aunroll_x_fromReg3 <= '0;
            SE_out_gaussian_B7_merge_reg_aunroll_x_fromReg4 <= '0;
            SE_out_gaussian_B7_merge_reg_aunroll_x_fromReg5 <= '0;
            SE_out_gaussian_B7_merge_reg_aunroll_x_fromReg6 <= '0;
            SE_out_gaussian_B7_merge_reg_aunroll_x_fromReg7 <= '0;
            SE_out_gaussian_B7_merge_reg_aunroll_x_fromReg8 <= '0;
            SE_out_gaussian_B7_merge_reg_aunroll_x_fromReg9 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_gaussian_B7_merge_reg_aunroll_x_fromReg0 <= SE_out_gaussian_B7_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_gaussian_B7_merge_reg_aunroll_x_fromReg1 <= SE_out_gaussian_B7_merge_reg_aunroll_x_toReg1;
            // Successor 2
            SE_out_gaussian_B7_merge_reg_aunroll_x_fromReg2 <= SE_out_gaussian_B7_merge_reg_aunroll_x_toReg2;
            // Successor 3
            SE_out_gaussian_B7_merge_reg_aunroll_x_fromReg3 <= SE_out_gaussian_B7_merge_reg_aunroll_x_toReg3;
            // Successor 4
            SE_out_gaussian_B7_merge_reg_aunroll_x_fromReg4 <= SE_out_gaussian_B7_merge_reg_aunroll_x_toReg4;
            // Successor 5
            SE_out_gaussian_B7_merge_reg_aunroll_x_fromReg5 <= SE_out_gaussian_B7_merge_reg_aunroll_x_toReg5;
            // Successor 6
            SE_out_gaussian_B7_merge_reg_aunroll_x_fromReg6 <= SE_out_gaussian_B7_merge_reg_aunroll_x_toReg6;
            // Successor 7
            SE_out_gaussian_B7_merge_reg_aunroll_x_fromReg7 <= SE_out_gaussian_B7_merge_reg_aunroll_x_toReg7;
            // Successor 8
            SE_out_gaussian_B7_merge_reg_aunroll_x_fromReg8 <= SE_out_gaussian_B7_merge_reg_aunroll_x_toReg8;
            // Successor 9
            SE_out_gaussian_B7_merge_reg_aunroll_x_fromReg9 <= SE_out_gaussian_B7_merge_reg_aunroll_x_toReg9;
        end
    end
    // Input Stall processing
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_consumed0 = (~ (i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_stall_out) & SE_out_gaussian_B7_merge_reg_aunroll_x_wireValid) | SE_out_gaussian_B7_merge_reg_aunroll_x_fromReg0;
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_consumed1 = (~ (i_llvm_fpga_ffwd_dest_i32_mul11_add1429_gaussian28_out_stall_out) & SE_out_gaussian_B7_merge_reg_aunroll_x_wireValid) | SE_out_gaussian_B7_merge_reg_aunroll_x_fromReg1;
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_consumed2 = (~ (bubble_out_gaussian_B7_merge_reg_aunroll_x_3_reg_stall_out) & SE_out_gaussian_B7_merge_reg_aunroll_x_wireValid) | SE_out_gaussian_B7_merge_reg_aunroll_x_fromReg2;
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_consumed3 = (~ (bubble_out_gaussian_B7_merge_reg_aunroll_x_5_reg_stall_out) & SE_out_gaussian_B7_merge_reg_aunroll_x_wireValid) | SE_out_gaussian_B7_merge_reg_aunroll_x_fromReg3;
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_consumed4 = (~ (SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_backStall) & SE_out_gaussian_B7_merge_reg_aunroll_x_wireValid) | SE_out_gaussian_B7_merge_reg_aunroll_x_fromReg4;
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_consumed5 = (~ (i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_stall_out) & SE_out_gaussian_B7_merge_reg_aunroll_x_wireValid) | SE_out_gaussian_B7_merge_reg_aunroll_x_fromReg5;
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_consumed6 = (~ (i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_stall_out) & SE_out_gaussian_B7_merge_reg_aunroll_x_wireValid) | SE_out_gaussian_B7_merge_reg_aunroll_x_fromReg6;
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_consumed7 = (~ (i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_stall_out) & SE_out_gaussian_B7_merge_reg_aunroll_x_wireValid) | SE_out_gaussian_B7_merge_reg_aunroll_x_fromReg7;
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_consumed8 = (~ (redist35_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_70_fifo_stall_out) & SE_out_gaussian_B7_merge_reg_aunroll_x_wireValid) | SE_out_gaussian_B7_merge_reg_aunroll_x_fromReg8;
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_consumed9 = (~ (coalesced_delay_0_fifo_stall_out) & SE_out_gaussian_B7_merge_reg_aunroll_x_wireValid) | SE_out_gaussian_B7_merge_reg_aunroll_x_fromReg9;
    // Consuming
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_StallValid = SE_out_gaussian_B7_merge_reg_aunroll_x_backStall & SE_out_gaussian_B7_merge_reg_aunroll_x_wireValid;
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_toReg0 = SE_out_gaussian_B7_merge_reg_aunroll_x_StallValid & SE_out_gaussian_B7_merge_reg_aunroll_x_consumed0;
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_toReg1 = SE_out_gaussian_B7_merge_reg_aunroll_x_StallValid & SE_out_gaussian_B7_merge_reg_aunroll_x_consumed1;
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_toReg2 = SE_out_gaussian_B7_merge_reg_aunroll_x_StallValid & SE_out_gaussian_B7_merge_reg_aunroll_x_consumed2;
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_toReg3 = SE_out_gaussian_B7_merge_reg_aunroll_x_StallValid & SE_out_gaussian_B7_merge_reg_aunroll_x_consumed3;
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_toReg4 = SE_out_gaussian_B7_merge_reg_aunroll_x_StallValid & SE_out_gaussian_B7_merge_reg_aunroll_x_consumed4;
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_toReg5 = SE_out_gaussian_B7_merge_reg_aunroll_x_StallValid & SE_out_gaussian_B7_merge_reg_aunroll_x_consumed5;
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_toReg6 = SE_out_gaussian_B7_merge_reg_aunroll_x_StallValid & SE_out_gaussian_B7_merge_reg_aunroll_x_consumed6;
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_toReg7 = SE_out_gaussian_B7_merge_reg_aunroll_x_StallValid & SE_out_gaussian_B7_merge_reg_aunroll_x_consumed7;
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_toReg8 = SE_out_gaussian_B7_merge_reg_aunroll_x_StallValid & SE_out_gaussian_B7_merge_reg_aunroll_x_consumed8;
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_toReg9 = SE_out_gaussian_B7_merge_reg_aunroll_x_StallValid & SE_out_gaussian_B7_merge_reg_aunroll_x_consumed9;
    // Backward Stall generation
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_or0 = SE_out_gaussian_B7_merge_reg_aunroll_x_consumed0;
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_or1 = SE_out_gaussian_B7_merge_reg_aunroll_x_consumed1 & SE_out_gaussian_B7_merge_reg_aunroll_x_or0;
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_or2 = SE_out_gaussian_B7_merge_reg_aunroll_x_consumed2 & SE_out_gaussian_B7_merge_reg_aunroll_x_or1;
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_or3 = SE_out_gaussian_B7_merge_reg_aunroll_x_consumed3 & SE_out_gaussian_B7_merge_reg_aunroll_x_or2;
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_or4 = SE_out_gaussian_B7_merge_reg_aunroll_x_consumed4 & SE_out_gaussian_B7_merge_reg_aunroll_x_or3;
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_or5 = SE_out_gaussian_B7_merge_reg_aunroll_x_consumed5 & SE_out_gaussian_B7_merge_reg_aunroll_x_or4;
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_or6 = SE_out_gaussian_B7_merge_reg_aunroll_x_consumed6 & SE_out_gaussian_B7_merge_reg_aunroll_x_or5;
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_or7 = SE_out_gaussian_B7_merge_reg_aunroll_x_consumed7 & SE_out_gaussian_B7_merge_reg_aunroll_x_or6;
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_or8 = SE_out_gaussian_B7_merge_reg_aunroll_x_consumed8 & SE_out_gaussian_B7_merge_reg_aunroll_x_or7;
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_wireStall = ~ (SE_out_gaussian_B7_merge_reg_aunroll_x_consumed9 & SE_out_gaussian_B7_merge_reg_aunroll_x_or8);
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_backStall = SE_out_gaussian_B7_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_V0 = SE_out_gaussian_B7_merge_reg_aunroll_x_wireValid & ~ (SE_out_gaussian_B7_merge_reg_aunroll_x_fromReg0);
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_V1 = SE_out_gaussian_B7_merge_reg_aunroll_x_wireValid & ~ (SE_out_gaussian_B7_merge_reg_aunroll_x_fromReg1);
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_V2 = SE_out_gaussian_B7_merge_reg_aunroll_x_wireValid & ~ (SE_out_gaussian_B7_merge_reg_aunroll_x_fromReg2);
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_V3 = SE_out_gaussian_B7_merge_reg_aunroll_x_wireValid & ~ (SE_out_gaussian_B7_merge_reg_aunroll_x_fromReg3);
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_V4 = SE_out_gaussian_B7_merge_reg_aunroll_x_wireValid & ~ (SE_out_gaussian_B7_merge_reg_aunroll_x_fromReg4);
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_V5 = SE_out_gaussian_B7_merge_reg_aunroll_x_wireValid & ~ (SE_out_gaussian_B7_merge_reg_aunroll_x_fromReg5);
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_V6 = SE_out_gaussian_B7_merge_reg_aunroll_x_wireValid & ~ (SE_out_gaussian_B7_merge_reg_aunroll_x_fromReg6);
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_V7 = SE_out_gaussian_B7_merge_reg_aunroll_x_wireValid & ~ (SE_out_gaussian_B7_merge_reg_aunroll_x_fromReg7);
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_V8 = SE_out_gaussian_B7_merge_reg_aunroll_x_wireValid & ~ (SE_out_gaussian_B7_merge_reg_aunroll_x_fromReg8);
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_V9 = SE_out_gaussian_B7_merge_reg_aunroll_x_wireValid & ~ (SE_out_gaussian_B7_merge_reg_aunroll_x_fromReg9);
    // Computing multiple Valid(s)
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_wireValid = gaussian_B7_merge_reg_aunroll_x_out_valid_out;

    // SE_out_i_llvm_fpga_push_i1_memdep_phi_pop1047_push21_gaussian22(STALLENABLE,605)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_pop1047_push21_gaussian22_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_pop1047_push21_gaussian22_wireValid = i_llvm_fpga_push_i1_memdep_phi_pop1047_push21_gaussian22_out_valid_out;

    // redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_68_fifo(STALLFIFO,391)
    assign redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_68_fifo_valid_in = SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_V1;
    assign redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_68_fifo_stall_in = SE_out_redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_68_fifo_backStall;
    assign redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_68_fifo_data_in = redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_q;
    assign redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_68_fifo_valid_in_bitsignaltemp = redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_68_fifo_valid_in[0];
    assign redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_68_fifo_stall_in_bitsignaltemp = redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_68_fifo_stall_in[0];
    assign redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_68_fifo_valid_out[0] = redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_68_fifo_valid_out_bitsignaltemp;
    assign redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_68_fifo_stall_out[0] = redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_68_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(61),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist18_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_68_fifo (
        .valid_in(redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_68_fifo_valid_in_bitsignaltemp),
        .stall_in(redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_68_fifo_stall_in_bitsignaltemp),
        .data_in(redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_q),
        .valid_out(redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_68_fifo_valid_out_bitsignaltemp),
        .stall_out(redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_68_fifo_stall_out_bitsignaltemp),
        .data_out(redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_68_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_68_fifo(BITJOIN,522)
    assign bubble_join_redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_68_fifo_q = redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_68_fifo_data_out;

    // bubble_select_redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_68_fifo(BITSELECT,523)
    assign bubble_select_redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_68_fifo_b = $unsigned(bubble_join_redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_68_fifo_q[0:0]);

    // i_llvm_fpga_push_i1_memdep_phi_pop1047_push21_gaussian22(BLACKBOX,93)@70
    // in in_stall_in@20000000
    // out out_data_out@71
    // out out_feedback_out_21@20000000
    // out out_feedback_valid_out_21@20000000
    // out out_stall_out@20000000
    // out out_valid_out@71
    gaussian_i_llvm_fpga_push_i1_memdep_phi_pop1047_push21_0 thei_llvm_fpga_push_i1_memdep_phi_pop1047_push21_gaussian22 (
        .in_data_in(bubble_select_redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_68_fifo_b),
        .in_feedback_stall_in_21(i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_feedback_stall_out_21),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_gaussian4_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi_pop1047_push21_gaussian22_backStall),
        .in_valid_in(SE_out_redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_68_fifo_V0),
        .out_data_out(),
        .out_feedback_out_21(i_llvm_fpga_push_i1_memdep_phi_pop1047_push21_gaussian22_out_feedback_out_21),
        .out_feedback_valid_out_21(i_llvm_fpga_push_i1_memdep_phi_pop1047_push21_gaussian22_out_feedback_valid_out_21),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi_pop1047_push21_gaussian22_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi_pop1047_push21_gaussian22_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_gaussian_B7_merge_reg_aunroll_x(BITJOIN,421)
    assign bubble_join_gaussian_B7_merge_reg_aunroll_x_q = {gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl, gaussian_B7_merge_reg_aunroll_x_out_data_out_4_tpl, gaussian_B7_merge_reg_aunroll_x_out_data_out_3_tpl, gaussian_B7_merge_reg_aunroll_x_out_data_out_2_tpl, gaussian_B7_merge_reg_aunroll_x_out_data_out_1_tpl, gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_gaussian_B7_merge_reg_aunroll_x(BITSELECT,422)
    assign bubble_select_gaussian_B7_merge_reg_aunroll_x_b = $unsigned(bubble_join_gaussian_B7_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_gaussian_B7_merge_reg_aunroll_x_c = $unsigned(bubble_join_gaussian_B7_merge_reg_aunroll_x_q[32:1]);
    assign bubble_select_gaussian_B7_merge_reg_aunroll_x_d = $unsigned(bubble_join_gaussian_B7_merge_reg_aunroll_x_q[33:33]);
    assign bubble_select_gaussian_B7_merge_reg_aunroll_x_e = $unsigned(bubble_join_gaussian_B7_merge_reg_aunroll_x_q[34:34]);
    assign bubble_select_gaussian_B7_merge_reg_aunroll_x_f = $unsigned(bubble_join_gaussian_B7_merge_reg_aunroll_x_q[35:35]);
    assign bubble_select_gaussian_B7_merge_reg_aunroll_x_g = $unsigned(bubble_join_gaussian_B7_merge_reg_aunroll_x_q[67:36]);

    // i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21(BLACKBOX,82)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_21@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    gaussian_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_0 thei_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21 (
        .in_data_in(bubble_select_gaussian_B7_merge_reg_aunroll_x_f),
        .in_dir(bubble_select_gaussian_B7_merge_reg_aunroll_x_b),
        .in_feedback_in_21(i_llvm_fpga_push_i1_memdep_phi_pop1047_push21_gaussian22_out_feedback_out_21),
        .in_feedback_valid_in_21(i_llvm_fpga_push_i1_memdep_phi_pop1047_push21_gaussian22_out_feedback_valid_out_21),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_backStall),
        .in_valid_in(SE_out_gaussian_B7_merge_reg_aunroll_x_V5),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out),
        .out_feedback_stall_out_21(i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_feedback_stall_out_21),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21(STALLENABLE,583)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_backStall = SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_0_backStall | ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_wireValid = i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_valid_out;

    // SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_0(STALLENABLE,708)
    // Valid signal propagation
    assign SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_0_V0 = SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_0_R_v_0;
    // Stall signal propagation
    assign SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_0_s_tv_0 = SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_1_backStall & SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_0_R_v_0;
    // Backward Enable generation
    assign SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_0_backEN = ~ (SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_0_v_s_0 = SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_0_backEN & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_V0;
    // Backward Stall generation
    assign SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_0_backStall = ~ (SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_0_backEN == 1'b0)
            begin
                SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_0_R_v_0 <= SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_0_R_v_0 & SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_0_s_tv_0;
            end
            else
            begin
                SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_0_R_v_0 <= SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_0_v_s_0;
            end

        end
    end

    // SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_1(STALLENABLE,709)
    // Valid signal propagation
    assign SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_1_V0 = SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_1_R_v_0;
    // Stall signal propagation
    assign SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_1_s_tv_0 = SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_2_backStall & SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_1_R_v_0;
    // Backward Enable generation
    assign SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_1_backEN = ~ (SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_1_v_s_0 = SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_1_backEN & SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_0_V0;
    // Backward Stall generation
    assign SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_1_backStall = ~ (SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_1_backEN == 1'b0)
            begin
                SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_1_R_v_0 <= SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_1_R_v_0 & SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_1_s_tv_0;
            end
            else
            begin
                SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_1_R_v_0 <= SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_1_v_s_0;
            end

        end
    end

    // SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_2(STALLENABLE,710)
    // Valid signal propagation
    assign SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_2_V0 = SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_2_R_v_0;
    assign SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_2_V1 = SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_2_R_v_1;
    // Stall signal propagation
    assign SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_2_s_tv_0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_backStall & SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_2_R_v_0;
    assign SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_2_s_tv_1 = SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_0_backStall & SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_2_R_v_1;
    // Backward Enable generation
    assign SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_2_or0 = SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_2_s_tv_0;
    assign SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_2_backEN = ~ (SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_2_s_tv_1 | SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_2_v_s_0 = SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_2_backEN & SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_1_V0;
    // Backward Stall generation
    assign SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_2_backStall = ~ (SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_2_R_v_0 <= 1'b0;
            SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_2_backEN == 1'b0)
            begin
                SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_2_R_v_0 <= SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_2_R_v_0 & SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_2_s_tv_0;
            end
            else
            begin
                SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_2_R_v_0 <= SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_2_v_s_0;
            end

            if (SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_2_backEN == 1'b0)
            begin
                SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_2_R_v_1 <= SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_2_R_v_1 & SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_2_s_tv_1;
            end
            else
            begin
                SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_2_R_v_1 <= SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_2_v_s_0;
            end

        end
    end

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21(BITJOIN,465)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_q = i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21(BITSELECT,466)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_q[0:0]);

    // redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_0(REG,383)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_0_backEN == 1'b1)
        begin
            redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_0_q <= $unsigned(bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_b);
        end
    end

    // redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_1(REG,384)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_1_backEN == 1'b1)
        begin
            redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_1_q <= $unsigned(redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_0_q);
        end
    end

    // redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_2(REG,385)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_2_backEN == 1'b1)
        begin
            redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_2_q <= $unsigned(redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_1_q);
        end
    end

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24(BITJOIN,462)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_q = i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24(BITSELECT,463)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_q[0:0]);

    // i_memdep_phi_or_gaussian25(LOGICAL,104)@5
    assign i_memdep_phi_or_gaussian25_q = bubble_select_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_b | redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_2_q;

    // bubble_join_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26(BITJOIN,439)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_q = i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_out_dest_data_out_10_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26(BITSELECT,440)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_q[63:0]);

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24(STALLENABLE,581)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_consumed0 = (~ (SR_SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_consumed1 = (~ (SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_or0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_and0 = i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_out_valid_out;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_wireValid = SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_3_2_V0 & SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_and0;

    // i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26(BLACKBOX,74)@4
    // in in_stall_in@20000000
    // out out_dest_data_out_10_0@5
    // out out_stall_out@20000000
    // out out_valid_out@5
    gaussian_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_0 thei_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26 (
        .in_intel_reserved_ffwd_10_0(in_intel_reserved_ffwd_10_0),
        .in_stall_in(SR_SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_backStall),
        .in_valid_in(SE_out_bubble_out_gaussian_B7_merge_reg_aunroll_x_3_V0),
        .out_dest_data_out_10_0(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_out_dest_data_out_10_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SR_SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26(STALLREG,953)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_r_valid <= 1'b0;
            SR_SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_r_data0 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_r_data1 <= 1'bx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_r_valid <= SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_backStall & (SR_SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_r_valid | SR_SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_i_valid);

            if (SR_SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_r_data0 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_b);
                SR_SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_r_data1 <= i_memdep_phi_or_gaussian25_q;
                SR_SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_r_data2 <= i_first_cleanup_xor_or_gaussian20_q;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_and0 = i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_out_valid_out;
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_and1 = SE_i_unnamed_gaussian11_V0 & SR_SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_and0;
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_i_valid = SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_V0 & SR_SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_and1;
    // Stall signal propagation
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_backStall = SR_SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_r_valid | ~ (SR_SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_i_valid);

    // Valid
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_V = SR_SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_r_valid : SR_SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_i_valid;

    // Data0
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_D0 = SR_SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_r_data0 : bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_b;
    // Data1
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_D1 = SR_SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_r_data1 : i_memdep_phi_or_gaussian25_q;
    // Data2
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_D2 = SR_SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_r_data2 : i_first_cleanup_xor_or_gaussian20_q;

    // i_llvm_fpga_mem_lm32_gaussian27(BLACKBOX,77)@5
    // in in_i_stall@20000000
    // out out_lm32_gaussian_avm_address@20000000
    // out out_lm32_gaussian_avm_burstcount@20000000
    // out out_lm32_gaussian_avm_byteenable@20000000
    // out out_lm32_gaussian_avm_enable@20000000
    // out out_lm32_gaussian_avm_read@20000000
    // out out_lm32_gaussian_avm_write@20000000
    // out out_lm32_gaussian_avm_writedata@20000000
    // out out_o_readdata@37
    // out out_o_stall@20000000
    // out out_o_valid@37
    gaussian_i_llvm_fpga_mem_lm32_0 thei_llvm_fpga_mem_lm32_gaussian27 (
        .in_flush(in_flush),
        .in_i_address(SR_SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_D0),
        .in_i_dependence(SR_SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_D1),
        .in_i_predicate(SR_SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_D2),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm32_gaussian27_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_V0),
        .in_lm32_gaussian_avm_readdata(in_lm32_gaussian_avm_readdata),
        .in_lm32_gaussian_avm_readdatavalid(in_lm32_gaussian_avm_readdatavalid),
        .in_lm32_gaussian_avm_waitrequest(in_lm32_gaussian_avm_waitrequest),
        .in_lm32_gaussian_avm_writeack(in_lm32_gaussian_avm_writeack),
        .out_lm32_gaussian_avm_address(i_llvm_fpga_mem_lm32_gaussian27_out_lm32_gaussian_avm_address),
        .out_lm32_gaussian_avm_burstcount(i_llvm_fpga_mem_lm32_gaussian27_out_lm32_gaussian_avm_burstcount),
        .out_lm32_gaussian_avm_byteenable(i_llvm_fpga_mem_lm32_gaussian27_out_lm32_gaussian_avm_byteenable),
        .out_lm32_gaussian_avm_enable(i_llvm_fpga_mem_lm32_gaussian27_out_lm32_gaussian_avm_enable),
        .out_lm32_gaussian_avm_read(i_llvm_fpga_mem_lm32_gaussian27_out_lm32_gaussian_avm_read),
        .out_lm32_gaussian_avm_write(i_llvm_fpga_mem_lm32_gaussian27_out_lm32_gaussian_avm_write),
        .out_lm32_gaussian_avm_writedata(i_llvm_fpga_mem_lm32_gaussian27_out_lm32_gaussian_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm32_gaussian27_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm32_gaussian27_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm32_gaussian27_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_lm32_gaussian27(BITJOIN,448)
    assign bubble_join_i_llvm_fpga_mem_lm32_gaussian27_q = i_llvm_fpga_mem_lm32_gaussian27_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm32_gaussian27(BITSELECT,449)
    assign bubble_select_i_llvm_fpga_mem_lm32_gaussian27_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm32_gaussian27_q[31:0]);

    // i_mul14_gaussian33_bs2_merged_bit_select(BITSELECT,312)@37
    assign i_mul14_gaussian33_bs2_merged_bit_select_b = bubble_select_i_llvm_fpga_mem_lm32_gaussian27_b[17:0];
    assign i_mul14_gaussian33_bs2_merged_bit_select_c = bubble_select_i_llvm_fpga_mem_lm32_gaussian27_b[31:18];

    // bubble_join_i_llvm_fpga_mem_lm53_gaussian32(BITJOIN,451)
    assign bubble_join_i_llvm_fpga_mem_lm53_gaussian32_q = i_llvm_fpga_mem_lm53_gaussian32_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm53_gaussian32(BITSELECT,452)
    assign bubble_select_i_llvm_fpga_mem_lm53_gaussian32_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm53_gaussian32_q[31:0]);

    // i_mul14_gaussian33_bs1_merged_bit_select(BITSELECT,313)@37
    assign i_mul14_gaussian33_bs1_merged_bit_select_b = bubble_select_i_llvm_fpga_mem_lm53_gaussian32_b[17:0];
    assign i_mul14_gaussian33_bs1_merged_bit_select_c = bubble_select_i_llvm_fpga_mem_lm53_gaussian32_b[31:18];

    // i_mul14_gaussian33_ma3_cma(CHAINMULTADD,249)@37 + 2
    assign i_mul14_gaussian33_ma3_cma_reset = ~ (resetn);
    assign i_mul14_gaussian33_ma3_cma_ena0 = SE_i_mul14_gaussian33_im0_cma_backEN[0];
    assign i_mul14_gaussian33_ma3_cma_ena1 = i_mul14_gaussian33_ma3_cma_ena0;
    assign i_mul14_gaussian33_ma3_cma_p[0] = i_mul14_gaussian33_ma3_cma_a0[0] * i_mul14_gaussian33_ma3_cma_c0[0];
    assign i_mul14_gaussian33_ma3_cma_p[1] = i_mul14_gaussian33_ma3_cma_a0[1] * i_mul14_gaussian33_ma3_cma_c0[1];
    assign i_mul14_gaussian33_ma3_cma_u[0] = {1'b0, i_mul14_gaussian33_ma3_cma_p[0][31:0]};
    assign i_mul14_gaussian33_ma3_cma_u[1] = {1'b0, i_mul14_gaussian33_ma3_cma_p[1][31:0]};
    assign i_mul14_gaussian33_ma3_cma_w[0] = i_mul14_gaussian33_ma3_cma_u[0] + i_mul14_gaussian33_ma3_cma_u[1];
    assign i_mul14_gaussian33_ma3_cma_x[0] = i_mul14_gaussian33_ma3_cma_w[0];
    assign i_mul14_gaussian33_ma3_cma_y[0] = i_mul14_gaussian33_ma3_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul14_gaussian33_ma3_cma_a0 <= '{default: '0};
            i_mul14_gaussian33_ma3_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul14_gaussian33_ma3_cma_ena0 == 1'b1)
            begin
                i_mul14_gaussian33_ma3_cma_a0[0] <= i_mul14_gaussian33_bs1_merged_bit_select_c;
                i_mul14_gaussian33_ma3_cma_a0[1] <= i_mul14_gaussian33_bs2_merged_bit_select_c;
                i_mul14_gaussian33_ma3_cma_c0[0] <= i_mul14_gaussian33_bs2_merged_bit_select_b;
                i_mul14_gaussian33_ma3_cma_c0[1] <= i_mul14_gaussian33_bs1_merged_bit_select_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul14_gaussian33_ma3_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul14_gaussian33_ma3_cma_ena1 == 1'b1)
            begin
                i_mul14_gaussian33_ma3_cma_s[0] <= i_mul14_gaussian33_ma3_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(33), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul14_gaussian33_ma3_cma_delay ( .xin(i_mul14_gaussian33_ma3_cma_s[0]), .xout(i_mul14_gaussian33_ma3_cma_qq), .ena(SE_i_mul14_gaussian33_im0_cma_backEN[0]), .clk(clock), .aclr(resetn) );
    assign i_mul14_gaussian33_ma3_cma_q = $unsigned(i_mul14_gaussian33_ma3_cma_qq[32:0]);

    // bubble_join_i_mul14_gaussian33_ma3_cma(BITJOIN,510)
    assign bubble_join_i_mul14_gaussian33_ma3_cma_q = i_mul14_gaussian33_ma3_cma_q;

    // i_mul14_gaussian33_im8_cma(CHAINMULTADD,248)@37 + 2
    assign i_mul14_gaussian33_im8_cma_reset = ~ (resetn);
    assign i_mul14_gaussian33_im8_cma_ena0 = SE_i_mul14_gaussian33_im0_cma_backEN[0];
    assign i_mul14_gaussian33_im8_cma_ena1 = i_mul14_gaussian33_im8_cma_ena0;
    assign i_mul14_gaussian33_im8_cma_p[0] = i_mul14_gaussian33_im8_cma_a0[0] * i_mul14_gaussian33_im8_cma_c0[0];
    assign i_mul14_gaussian33_im8_cma_u[0] = i_mul14_gaussian33_im8_cma_p[0][27:0];
    assign i_mul14_gaussian33_im8_cma_w[0] = i_mul14_gaussian33_im8_cma_u[0];
    assign i_mul14_gaussian33_im8_cma_x[0] = i_mul14_gaussian33_im8_cma_w[0];
    assign i_mul14_gaussian33_im8_cma_y[0] = i_mul14_gaussian33_im8_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul14_gaussian33_im8_cma_a0 <= '{default: '0};
            i_mul14_gaussian33_im8_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul14_gaussian33_im8_cma_ena0 == 1'b1)
            begin
                i_mul14_gaussian33_im8_cma_a0[0] <= i_mul14_gaussian33_bs1_merged_bit_select_c;
                i_mul14_gaussian33_im8_cma_c0[0] <= i_mul14_gaussian33_bs2_merged_bit_select_c;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul14_gaussian33_im8_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul14_gaussian33_im8_cma_ena1 == 1'b1)
            begin
                i_mul14_gaussian33_im8_cma_s[0] <= i_mul14_gaussian33_im8_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(28), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul14_gaussian33_im8_cma_delay ( .xin(i_mul14_gaussian33_im8_cma_s[0]), .xout(i_mul14_gaussian33_im8_cma_qq), .ena(SE_i_mul14_gaussian33_im0_cma_backEN[0]), .clk(clock), .aclr(resetn) );
    assign i_mul14_gaussian33_im8_cma_q = $unsigned(i_mul14_gaussian33_im8_cma_qq[27:0]);

    // bubble_join_i_mul14_gaussian33_im8_cma(BITJOIN,507)
    assign bubble_join_i_mul14_gaussian33_im8_cma_q = i_mul14_gaussian33_im8_cma_q;

    // bubble_select_i_mul14_gaussian33_im8_cma(BITSELECT,508)
    assign bubble_select_i_mul14_gaussian33_im8_cma_b = $unsigned(bubble_out_i_mul14_gaussian33_im8_cma_data_reg_data_out[27:0]);

    // redist8_i_mul14_gaussian33_im8_cma_q_1_0(REG,366)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_mul14_gaussian33_im8_cma_q_1_0_q <= $unsigned(28'b0000000000000000000000000000);
        end
        else if (SE_redist8_i_mul14_gaussian33_im8_cma_q_1_0_backEN == 1'b1)
        begin
            redist8_i_mul14_gaussian33_im8_cma_q_1_0_q <= $unsigned(bubble_select_i_mul14_gaussian33_im8_cma_b);
        end
    end

    // i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select(BITSELECT,314)@40
    assign i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b = $unsigned(redist8_i_mul14_gaussian33_im8_cma_q_1_0_q[23:0]);
    assign i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c = $unsigned(redist8_i_mul14_gaussian33_im8_cma_q_1_0_q[27:24]);

    // SE_redist0_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0(STALLENABLE,680)
    // Valid signal propagation
    assign SE_redist0_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_V0 = SE_redist0_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist0_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_s_tv_0 = SE_i_mul14_gaussian33_sums_result_add_0_0_p2_of_2_backStall & SE_redist0_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist0_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backEN = ~ (SE_redist0_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_v_s_0 = SE_redist0_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backEN & SR_SE_redist0_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_V;
    // Backward Stall generation
    assign SE_redist0_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backStall = ~ (SE_redist0_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backEN == 1'b0)
            begin
                SE_redist0_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_R_v_0 <= SE_redist0_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_R_v_0 & SE_redist0_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_s_tv_0;
            end
            else
            begin
                SE_redist0_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_R_v_0 <= SE_redist0_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_v_s_0;
            end

        end
    end

    // SR_SE_redist0_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0(STALLREG,958)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist0_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_r_valid <= 1'b0;
            SR_SE_redist0_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_r_data0 <= 4'bxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist0_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_r_valid <= SE_redist0_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backStall & (SR_SE_redist0_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_r_valid | SR_SE_redist0_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_i_valid);

            if (SR_SE_redist0_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist0_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_r_data0 <= $unsigned(i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist0_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_i_valid = SE_redist8_i_mul14_gaussian33_im8_cma_q_1_0_V1;
    // Stall signal propagation
    assign SR_SE_redist0_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backStall = SR_SE_redist0_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_r_valid | ~ (SR_SE_redist0_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_i_valid);

    // Valid
    assign SR_SE_redist0_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_V = SR_SE_redist0_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_r_valid == 1'b1 ? SR_SE_redist0_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_r_valid : SR_SE_redist0_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_i_valid;

    assign SR_SE_redist0_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_D0 = SR_SE_redist0_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_r_valid == 1'b1 ? SR_SE_redist0_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_r_data0 : i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c;

    // SE_redist8_i_mul14_gaussian33_im8_cma_q_1_0(STALLENABLE,688)
    // Valid signal propagation
    assign SE_redist8_i_mul14_gaussian33_im8_cma_q_1_0_V0 = SE_redist8_i_mul14_gaussian33_im8_cma_q_1_0_R_v_0;
    assign SE_redist8_i_mul14_gaussian33_im8_cma_q_1_0_V1 = SE_redist8_i_mul14_gaussian33_im8_cma_q_1_0_R_v_1;
    // Stall signal propagation
    assign SE_redist8_i_mul14_gaussian33_im8_cma_q_1_0_s_tv_0 = SE_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_backStall & SE_redist8_i_mul14_gaussian33_im8_cma_q_1_0_R_v_0;
    assign SE_redist8_i_mul14_gaussian33_im8_cma_q_1_0_s_tv_1 = SR_SE_redist0_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backStall & SE_redist8_i_mul14_gaussian33_im8_cma_q_1_0_R_v_1;
    // Backward Enable generation
    assign SE_redist8_i_mul14_gaussian33_im8_cma_q_1_0_or0 = SE_redist8_i_mul14_gaussian33_im8_cma_q_1_0_s_tv_0;
    assign SE_redist8_i_mul14_gaussian33_im8_cma_q_1_0_backEN = ~ (SE_redist8_i_mul14_gaussian33_im8_cma_q_1_0_s_tv_1 | SE_redist8_i_mul14_gaussian33_im8_cma_q_1_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist8_i_mul14_gaussian33_im8_cma_q_1_0_v_s_0 = SE_redist8_i_mul14_gaussian33_im8_cma_q_1_0_backEN & SE_out_bubble_out_i_mul14_gaussian33_im8_cma_data_V0;
    // Backward Stall generation
    assign SE_redist8_i_mul14_gaussian33_im8_cma_q_1_0_backStall = ~ (SE_redist8_i_mul14_gaussian33_im8_cma_q_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist8_i_mul14_gaussian33_im8_cma_q_1_0_R_v_0 <= 1'b0;
            SE_redist8_i_mul14_gaussian33_im8_cma_q_1_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist8_i_mul14_gaussian33_im8_cma_q_1_0_backEN == 1'b0)
            begin
                SE_redist8_i_mul14_gaussian33_im8_cma_q_1_0_R_v_0 <= SE_redist8_i_mul14_gaussian33_im8_cma_q_1_0_R_v_0 & SE_redist8_i_mul14_gaussian33_im8_cma_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist8_i_mul14_gaussian33_im8_cma_q_1_0_R_v_0 <= SE_redist8_i_mul14_gaussian33_im8_cma_q_1_0_v_s_0;
            end

            if (SE_redist8_i_mul14_gaussian33_im8_cma_q_1_0_backEN == 1'b0)
            begin
                SE_redist8_i_mul14_gaussian33_im8_cma_q_1_0_R_v_1 <= SE_redist8_i_mul14_gaussian33_im8_cma_q_1_0_R_v_1 & SE_redist8_i_mul14_gaussian33_im8_cma_q_1_0_s_tv_1;
            end
            else
            begin
                SE_redist8_i_mul14_gaussian33_im8_cma_q_1_0_R_v_1 <= SE_redist8_i_mul14_gaussian33_im8_cma_q_1_0_v_s_0;
            end

        end
    end

    // SE_out_bubble_out_i_mul14_gaussian33_im8_cma_data(STALLENABLE,877)
    // Valid signal propagation
    assign SE_out_bubble_out_i_mul14_gaussian33_im8_cma_data_V0 = SE_out_bubble_out_i_mul14_gaussian33_im8_cma_data_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_mul14_gaussian33_im8_cma_data_backStall = SE_redist8_i_mul14_gaussian33_im8_cma_q_1_0_backStall | ~ (SE_out_bubble_out_i_mul14_gaussian33_im8_cma_data_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_mul14_gaussian33_im8_cma_data_wireValid = bubble_out_i_mul14_gaussian33_im8_cma_data_reg_valid_out;

    // bubble_out_i_mul14_gaussian33_im8_cma_data_reg(STALLFIFO,932)
    assign bubble_out_i_mul14_gaussian33_im8_cma_data_reg_valid_in = SE_i_mul14_gaussian33_im0_cma_V1;
    assign bubble_out_i_mul14_gaussian33_im8_cma_data_reg_stall_in = SE_out_bubble_out_i_mul14_gaussian33_im8_cma_data_backStall;
    assign bubble_out_i_mul14_gaussian33_im8_cma_data_reg_data_in = bubble_join_i_mul14_gaussian33_im8_cma_q;
    assign bubble_out_i_mul14_gaussian33_im8_cma_data_reg_valid_in_bitsignaltemp = bubble_out_i_mul14_gaussian33_im8_cma_data_reg_valid_in[0];
    assign bubble_out_i_mul14_gaussian33_im8_cma_data_reg_stall_in_bitsignaltemp = bubble_out_i_mul14_gaussian33_im8_cma_data_reg_stall_in[0];
    assign bubble_out_i_mul14_gaussian33_im8_cma_data_reg_valid_out[0] = bubble_out_i_mul14_gaussian33_im8_cma_data_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_mul14_gaussian33_im8_cma_data_reg_stall_out[0] = bubble_out_i_mul14_gaussian33_im8_cma_data_reg_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(1),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(1),
        .DATA_WIDTH(28),
        .IMPL("zl_reg")
    ) thebubble_out_i_mul14_gaussian33_im8_cma_data_reg (
        .valid_in(bubble_out_i_mul14_gaussian33_im8_cma_data_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_mul14_gaussian33_im8_cma_data_reg_stall_in_bitsignaltemp),
        .data_in(bubble_join_i_mul14_gaussian33_im8_cma_q),
        .valid_out(bubble_out_i_mul14_gaussian33_im8_cma_data_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_mul14_gaussian33_im8_cma_data_reg_stall_out_bitsignaltemp),
        .data_out(bubble_out_i_mul14_gaussian33_im8_cma_data_reg_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul14_gaussian33_im0_cma(CHAINMULTADD,247)@37 + 2
    assign i_mul14_gaussian33_im0_cma_reset = ~ (resetn);
    assign i_mul14_gaussian33_im0_cma_ena0 = SE_i_mul14_gaussian33_im0_cma_backEN[0];
    assign i_mul14_gaussian33_im0_cma_ena1 = i_mul14_gaussian33_im0_cma_ena0;
    assign i_mul14_gaussian33_im0_cma_p[0] = i_mul14_gaussian33_im0_cma_a0[0] * i_mul14_gaussian33_im0_cma_c0[0];
    assign i_mul14_gaussian33_im0_cma_u[0] = i_mul14_gaussian33_im0_cma_p[0][35:0];
    assign i_mul14_gaussian33_im0_cma_w[0] = i_mul14_gaussian33_im0_cma_u[0];
    assign i_mul14_gaussian33_im0_cma_x[0] = i_mul14_gaussian33_im0_cma_w[0];
    assign i_mul14_gaussian33_im0_cma_y[0] = i_mul14_gaussian33_im0_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul14_gaussian33_im0_cma_a0 <= '{default: '0};
            i_mul14_gaussian33_im0_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul14_gaussian33_im0_cma_ena0 == 1'b1)
            begin
                i_mul14_gaussian33_im0_cma_a0[0] <= i_mul14_gaussian33_bs1_merged_bit_select_b;
                i_mul14_gaussian33_im0_cma_c0[0] <= i_mul14_gaussian33_bs2_merged_bit_select_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul14_gaussian33_im0_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul14_gaussian33_im0_cma_ena1 == 1'b1)
            begin
                i_mul14_gaussian33_im0_cma_s[0] <= i_mul14_gaussian33_im0_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul14_gaussian33_im0_cma_delay ( .xin(i_mul14_gaussian33_im0_cma_s[0]), .xout(i_mul14_gaussian33_im0_cma_qq), .ena(SE_i_mul14_gaussian33_im0_cma_backEN[0]), .clk(clock), .aclr(resetn) );
    assign i_mul14_gaussian33_im0_cma_q = $unsigned(i_mul14_gaussian33_im0_cma_qq[35:0]);

    // bubble_join_i_mul14_gaussian33_im0_cma(BITJOIN,504)
    assign bubble_join_i_mul14_gaussian33_im0_cma_q = i_mul14_gaussian33_im0_cma_q;

    // SE_redist9_i_mul14_gaussian33_im0_cma_q_1_0(STALLENABLE,689)
    // Valid signal propagation
    assign SE_redist9_i_mul14_gaussian33_im0_cma_q_1_0_V0 = SE_redist9_i_mul14_gaussian33_im0_cma_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist9_i_mul14_gaussian33_im0_cma_q_1_0_s_tv_0 = SE_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_backStall & SE_redist9_i_mul14_gaussian33_im0_cma_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist9_i_mul14_gaussian33_im0_cma_q_1_0_backEN = ~ (SE_redist9_i_mul14_gaussian33_im0_cma_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist9_i_mul14_gaussian33_im0_cma_q_1_0_v_s_0 = SE_redist9_i_mul14_gaussian33_im0_cma_q_1_0_backEN & SE_out_bubble_out_i_mul14_gaussian33_im0_cma_data_V0;
    // Backward Stall generation
    assign SE_redist9_i_mul14_gaussian33_im0_cma_q_1_0_backStall = ~ (SE_redist9_i_mul14_gaussian33_im0_cma_q_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist9_i_mul14_gaussian33_im0_cma_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist9_i_mul14_gaussian33_im0_cma_q_1_0_backEN == 1'b0)
            begin
                SE_redist9_i_mul14_gaussian33_im0_cma_q_1_0_R_v_0 <= SE_redist9_i_mul14_gaussian33_im0_cma_q_1_0_R_v_0 & SE_redist9_i_mul14_gaussian33_im0_cma_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist9_i_mul14_gaussian33_im0_cma_q_1_0_R_v_0 <= SE_redist9_i_mul14_gaussian33_im0_cma_q_1_0_v_s_0;
            end

        end
    end

    // SE_out_bubble_out_i_mul14_gaussian33_im0_cma_data(STALLENABLE,873)
    // Valid signal propagation
    assign SE_out_bubble_out_i_mul14_gaussian33_im0_cma_data_V0 = SE_out_bubble_out_i_mul14_gaussian33_im0_cma_data_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_mul14_gaussian33_im0_cma_data_backStall = SE_redist9_i_mul14_gaussian33_im0_cma_q_1_0_backStall | ~ (SE_out_bubble_out_i_mul14_gaussian33_im0_cma_data_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_mul14_gaussian33_im0_cma_data_wireValid = bubble_out_i_mul14_gaussian33_im0_cma_data_reg_valid_out;

    // bubble_out_i_mul14_gaussian33_im0_cma_data_reg(STALLFIFO,931)
    assign bubble_out_i_mul14_gaussian33_im0_cma_data_reg_valid_in = SE_i_mul14_gaussian33_im0_cma_V0;
    assign bubble_out_i_mul14_gaussian33_im0_cma_data_reg_stall_in = SE_out_bubble_out_i_mul14_gaussian33_im0_cma_data_backStall;
    assign bubble_out_i_mul14_gaussian33_im0_cma_data_reg_data_in = bubble_join_i_mul14_gaussian33_im0_cma_q;
    assign bubble_out_i_mul14_gaussian33_im0_cma_data_reg_valid_in_bitsignaltemp = bubble_out_i_mul14_gaussian33_im0_cma_data_reg_valid_in[0];
    assign bubble_out_i_mul14_gaussian33_im0_cma_data_reg_stall_in_bitsignaltemp = bubble_out_i_mul14_gaussian33_im0_cma_data_reg_stall_in[0];
    assign bubble_out_i_mul14_gaussian33_im0_cma_data_reg_valid_out[0] = bubble_out_i_mul14_gaussian33_im0_cma_data_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_mul14_gaussian33_im0_cma_data_reg_stall_out[0] = bubble_out_i_mul14_gaussian33_im0_cma_data_reg_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(1),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(1),
        .DATA_WIDTH(36),
        .IMPL("zl_reg")
    ) thebubble_out_i_mul14_gaussian33_im0_cma_data_reg (
        .valid_in(bubble_out_i_mul14_gaussian33_im0_cma_data_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_mul14_gaussian33_im0_cma_data_reg_stall_in_bitsignaltemp),
        .data_in(bubble_join_i_mul14_gaussian33_im0_cma_q),
        .valid_out(bubble_out_i_mul14_gaussian33_im0_cma_data_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_mul14_gaussian33_im0_cma_data_reg_stall_out_bitsignaltemp),
        .data_out(bubble_out_i_mul14_gaussian33_im0_cma_data_reg_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_mul14_gaussian33_im0_cma(STALLENABLE,644)
    // Valid signal propagation
    assign SE_i_mul14_gaussian33_im0_cma_V0 = SE_i_mul14_gaussian33_im0_cma_R_v_0;
    assign SE_i_mul14_gaussian33_im0_cma_V1 = SE_i_mul14_gaussian33_im0_cma_R_v_1;
    assign SE_i_mul14_gaussian33_im0_cma_V2 = SE_i_mul14_gaussian33_im0_cma_R_v_2;
    // Stall signal propagation
    assign SE_i_mul14_gaussian33_im0_cma_s_tv_0 = bubble_out_i_mul14_gaussian33_im0_cma_data_reg_stall_out & SE_i_mul14_gaussian33_im0_cma_R_v_0;
    assign SE_i_mul14_gaussian33_im0_cma_s_tv_1 = bubble_out_i_mul14_gaussian33_im8_cma_data_reg_stall_out & SE_i_mul14_gaussian33_im0_cma_R_v_1;
    assign SE_i_mul14_gaussian33_im0_cma_s_tv_2 = bubble_out_i_mul14_gaussian33_ma3_cma_data_reg_stall_out & SE_i_mul14_gaussian33_im0_cma_R_v_2;
    // Backward Enable generation
    assign SE_i_mul14_gaussian33_im0_cma_or0 = SE_i_mul14_gaussian33_im0_cma_s_tv_0;
    assign SE_i_mul14_gaussian33_im0_cma_or1 = SE_i_mul14_gaussian33_im0_cma_s_tv_1 | SE_i_mul14_gaussian33_im0_cma_or0;
    assign SE_i_mul14_gaussian33_im0_cma_backEN = ~ (SE_i_mul14_gaussian33_im0_cma_s_tv_2 | SE_i_mul14_gaussian33_im0_cma_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mul14_gaussian33_im0_cma_and0 = SE_out_i_llvm_fpga_mem_lm32_gaussian27_V0 & SE_i_mul14_gaussian33_im0_cma_backEN;
    assign SE_i_mul14_gaussian33_im0_cma_v_s_0 = SE_out_i_llvm_fpga_mem_lm53_gaussian32_V0 & SE_i_mul14_gaussian33_im0_cma_and0;
    // Backward Stall generation
    assign SE_i_mul14_gaussian33_im0_cma_backStall = ~ (SE_i_mul14_gaussian33_im0_cma_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mul14_gaussian33_im0_cma_R_s_0 <= 1'b0;
            SE_i_mul14_gaussian33_im0_cma_R_v_0 <= 1'b0;
            SE_i_mul14_gaussian33_im0_cma_R_v_1 <= 1'b0;
            SE_i_mul14_gaussian33_im0_cma_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_i_mul14_gaussian33_im0_cma_backEN == 1'b1)
            begin
                SE_i_mul14_gaussian33_im0_cma_R_s_0 <= SE_i_mul14_gaussian33_im0_cma_v_s_0;
            end

            if (SE_i_mul14_gaussian33_im0_cma_backEN == 1'b0)
            begin
                SE_i_mul14_gaussian33_im0_cma_R_v_0 <= SE_i_mul14_gaussian33_im0_cma_R_v_0 & SE_i_mul14_gaussian33_im0_cma_s_tv_0;
            end
            else
            begin
                SE_i_mul14_gaussian33_im0_cma_R_v_0 <= SE_i_mul14_gaussian33_im0_cma_R_s_0;
            end

            if (SE_i_mul14_gaussian33_im0_cma_backEN == 1'b0)
            begin
                SE_i_mul14_gaussian33_im0_cma_R_v_1 <= SE_i_mul14_gaussian33_im0_cma_R_v_1 & SE_i_mul14_gaussian33_im0_cma_s_tv_1;
            end
            else
            begin
                SE_i_mul14_gaussian33_im0_cma_R_v_1 <= SE_i_mul14_gaussian33_im0_cma_R_s_0;
            end

            if (SE_i_mul14_gaussian33_im0_cma_backEN == 1'b0)
            begin
                SE_i_mul14_gaussian33_im0_cma_R_v_2 <= SE_i_mul14_gaussian33_im0_cma_R_v_2 & SE_i_mul14_gaussian33_im0_cma_s_tv_2;
            end
            else
            begin
                SE_i_mul14_gaussian33_im0_cma_R_v_2 <= SE_i_mul14_gaussian33_im0_cma_R_s_0;
            end

        end
    end

    // bubble_out_i_mul14_gaussian33_ma3_cma_data_reg(STALLFIFO,933)
    assign bubble_out_i_mul14_gaussian33_ma3_cma_data_reg_valid_in = SE_i_mul14_gaussian33_im0_cma_V2;
    assign bubble_out_i_mul14_gaussian33_ma3_cma_data_reg_stall_in = SE_out_bubble_out_i_mul14_gaussian33_ma3_cma_data_backStall;
    assign bubble_out_i_mul14_gaussian33_ma3_cma_data_reg_data_in = bubble_join_i_mul14_gaussian33_ma3_cma_q;
    assign bubble_out_i_mul14_gaussian33_ma3_cma_data_reg_valid_in_bitsignaltemp = bubble_out_i_mul14_gaussian33_ma3_cma_data_reg_valid_in[0];
    assign bubble_out_i_mul14_gaussian33_ma3_cma_data_reg_stall_in_bitsignaltemp = bubble_out_i_mul14_gaussian33_ma3_cma_data_reg_stall_in[0];
    assign bubble_out_i_mul14_gaussian33_ma3_cma_data_reg_valid_out[0] = bubble_out_i_mul14_gaussian33_ma3_cma_data_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_mul14_gaussian33_ma3_cma_data_reg_stall_out[0] = bubble_out_i_mul14_gaussian33_ma3_cma_data_reg_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(1),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(1),
        .DATA_WIDTH(33),
        .IMPL("zl_reg")
    ) thebubble_out_i_mul14_gaussian33_ma3_cma_data_reg (
        .valid_in(bubble_out_i_mul14_gaussian33_ma3_cma_data_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_mul14_gaussian33_ma3_cma_data_reg_stall_in_bitsignaltemp),
        .data_in(bubble_join_i_mul14_gaussian33_ma3_cma_q),
        .valid_out(bubble_out_i_mul14_gaussian33_ma3_cma_data_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_mul14_gaussian33_ma3_cma_data_reg_stall_out_bitsignaltemp),
        .data_out(bubble_out_i_mul14_gaussian33_ma3_cma_data_reg_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_i_mul14_gaussian33_ma3_cma_data(STALLENABLE,881)
    // Valid signal propagation
    assign SE_out_bubble_out_i_mul14_gaussian33_ma3_cma_data_V0 = SE_out_bubble_out_i_mul14_gaussian33_ma3_cma_data_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_mul14_gaussian33_ma3_cma_data_backStall = SE_redist7_i_mul14_gaussian33_ma3_cma_q_1_0_backStall | ~ (SE_out_bubble_out_i_mul14_gaussian33_ma3_cma_data_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_mul14_gaussian33_ma3_cma_data_wireValid = bubble_out_i_mul14_gaussian33_ma3_cma_data_reg_valid_out;

    // SE_redist7_i_mul14_gaussian33_ma3_cma_q_1_0(STALLENABLE,687)
    // Valid signal propagation
    assign SE_redist7_i_mul14_gaussian33_ma3_cma_q_1_0_V0 = SE_redist7_i_mul14_gaussian33_ma3_cma_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist7_i_mul14_gaussian33_ma3_cma_q_1_0_s_tv_0 = SE_i_mul14_gaussian33_sums_align_1_backStall & SE_redist7_i_mul14_gaussian33_ma3_cma_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist7_i_mul14_gaussian33_ma3_cma_q_1_0_backEN = ~ (SE_redist7_i_mul14_gaussian33_ma3_cma_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist7_i_mul14_gaussian33_ma3_cma_q_1_0_v_s_0 = SE_redist7_i_mul14_gaussian33_ma3_cma_q_1_0_backEN & SE_out_bubble_out_i_mul14_gaussian33_ma3_cma_data_V0;
    // Backward Stall generation
    assign SE_redist7_i_mul14_gaussian33_ma3_cma_q_1_0_backStall = ~ (SE_redist7_i_mul14_gaussian33_ma3_cma_q_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist7_i_mul14_gaussian33_ma3_cma_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist7_i_mul14_gaussian33_ma3_cma_q_1_0_backEN == 1'b0)
            begin
                SE_redist7_i_mul14_gaussian33_ma3_cma_q_1_0_R_v_0 <= SE_redist7_i_mul14_gaussian33_ma3_cma_q_1_0_R_v_0 & SE_redist7_i_mul14_gaussian33_ma3_cma_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist7_i_mul14_gaussian33_ma3_cma_q_1_0_R_v_0 <= SE_redist7_i_mul14_gaussian33_ma3_cma_q_1_0_v_s_0;
            end

        end
    end

    // bubble_select_i_mul14_gaussian33_ma3_cma(BITSELECT,511)
    assign bubble_select_i_mul14_gaussian33_ma3_cma_b = $unsigned(bubble_out_i_mul14_gaussian33_ma3_cma_data_reg_data_out[32:0]);

    // redist7_i_mul14_gaussian33_ma3_cma_q_1_0(REG,365)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_mul14_gaussian33_ma3_cma_q_1_0_q <= $unsigned(33'b000000000000000000000000000000000);
        end
        else if (SE_redist7_i_mul14_gaussian33_ma3_cma_q_1_0_backEN == 1'b1)
        begin
            redist7_i_mul14_gaussian33_ma3_cma_q_1_0_q <= $unsigned(bubble_select_i_mul14_gaussian33_ma3_cma_b);
        end
    end

    // i_mul14_gaussian33_sums_align_1(BITSHIFT,244)@40
    assign i_mul14_gaussian33_sums_align_1_qint = { redist7_i_mul14_gaussian33_ma3_cma_q_1_0_q, 18'b000000000000000000 };
    assign i_mul14_gaussian33_sums_align_1_q = i_mul14_gaussian33_sums_align_1_qint[50:0];

    // i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b(BITJOIN,309)@40
    assign i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q = {i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b, i_mul14_gaussian33_sums_align_1_q};

    // bubble_select_i_mul14_gaussian33_im0_cma(BITSELECT,505)
    assign bubble_select_i_mul14_gaussian33_im0_cma_b = $unsigned(bubble_out_i_mul14_gaussian33_im0_cma_data_reg_data_out[35:0]);

    // redist9_i_mul14_gaussian33_im0_cma_q_1_0(REG,367)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_mul14_gaussian33_im0_cma_q_1_0_q <= $unsigned(36'b000000000000000000000000000000000000);
        end
        else if (SE_redist9_i_mul14_gaussian33_im0_cma_q_1_0_backEN == 1'b1)
        begin
            redist9_i_mul14_gaussian33_im0_cma_q_1_0_q <= $unsigned(bubble_select_i_mul14_gaussian33_im0_cma_b);
        end
    end

    // i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b(BITJOIN,303)@40
    assign i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q = {i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b, redist9_i_mul14_gaussian33_im0_cma_q_1_0_q};

    // SE_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select(STALLENABLE,675)
    // Valid signal propagation
    assign SE_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_V0 = 1'b1;
    assign SE_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_V1 = 1'b1;

    // SE_i_mul14_gaussian33_sums_align_1(STALLENABLE,643)
    // Valid signal propagation
    assign SE_i_mul14_gaussian33_sums_align_1_V0 = SE_i_mul14_gaussian33_sums_align_1_wireValid;
    // Backward Stall generation
    assign SE_i_mul14_gaussian33_sums_align_1_backStall = SR_SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_backStall | ~ (SE_i_mul14_gaussian33_sums_align_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_mul14_gaussian33_sums_align_1_and0 = SE_redist7_i_mul14_gaussian33_ma3_cma_q_1_0_V0;
    assign SE_i_mul14_gaussian33_sums_align_1_wireValid = SE_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_V1 & SE_i_mul14_gaussian33_sums_align_1_and0;

    // SE_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b(STALLENABLE,669)
    // Valid signal propagation
    assign SE_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_V0 = SE_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_wireValid;
    // Backward Stall generation
    assign SE_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_backStall = SR_SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_backStall | ~ (SE_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_and0 = SE_redist8_i_mul14_gaussian33_im8_cma_q_1_0_V0;
    assign SE_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_wireValid = SE_redist9_i_mul14_gaussian33_im0_cma_q_1_0_V0 & SE_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_and0;

    // SR_SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2(STALLREG,957)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_r_valid <= 1'b0;
            SR_SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_r_data0 <= 60'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_r_data1 <= 60'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_r_valid <= SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_backStall & (SR_SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_r_valid | SR_SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_i_valid);

            if (SR_SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_r_data0 <= $unsigned(i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q);
                SR_SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_r_data1 <= $unsigned(i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_and0 = SE_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_V0;
    assign SR_SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_i_valid = SE_i_mul14_gaussian33_sums_align_1_V0 & SR_SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_and0;
    // Stall signal propagation
    assign SR_SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_backStall = SR_SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_r_valid | ~ (SR_SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_i_valid);

    // Valid
    assign SR_SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_V = SR_SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_r_valid : SR_SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_i_valid;

    // Data0
    assign SR_SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_D0 = SR_SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_r_data0 : i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q;
    // Data1
    assign SR_SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_D1 = SR_SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_r_data1 : i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q;

    // i_mul14_gaussian33_sums_result_add_0_0_p1_of_2(ADD,274)@40 + 1
    assign i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_a = {1'b0, SR_SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_D0};
    assign i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_b = {1'b0, SR_SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_D1};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_o <= 61'b0;
        end
        else if (SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_o <= $unsigned(i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_a) + $unsigned(i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_b);
        end
    end
    assign i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_c[0] = i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_o[60];
    assign i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_q = i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_o[59:0];

    // SE_i_mul14_gaussian33_sums_result_add_0_0_p2_of_2(STALLENABLE,654)
    // Valid signal propagation
    assign SE_i_mul14_gaussian33_sums_result_add_0_0_p2_of_2_V0 = SE_i_mul14_gaussian33_sums_result_add_0_0_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_mul14_gaussian33_sums_result_add_0_0_p2_of_2_s_tv_0 = SE_out_coalesced_delay_1_fifo_backStall & SE_i_mul14_gaussian33_sums_result_add_0_0_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_mul14_gaussian33_sums_result_add_0_0_p2_of_2_backEN = ~ (SE_i_mul14_gaussian33_sums_result_add_0_0_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mul14_gaussian33_sums_result_add_0_0_p2_of_2_and0 = SE_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_V0 & SE_i_mul14_gaussian33_sums_result_add_0_0_p2_of_2_backEN;
    assign SE_i_mul14_gaussian33_sums_result_add_0_0_p2_of_2_and1 = SE_redist0_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_V0 & SE_i_mul14_gaussian33_sums_result_add_0_0_p2_of_2_and0;
    assign SE_i_mul14_gaussian33_sums_result_add_0_0_p2_of_2_v_s_0 = SE_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_V0 & SE_i_mul14_gaussian33_sums_result_add_0_0_p2_of_2_and1;
    // Backward Stall generation
    assign SE_i_mul14_gaussian33_sums_result_add_0_0_p2_of_2_backStall = ~ (SE_i_mul14_gaussian33_sums_result_add_0_0_p2_of_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mul14_gaussian33_sums_result_add_0_0_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_mul14_gaussian33_sums_result_add_0_0_p2_of_2_backEN == 1'b0)
            begin
                SE_i_mul14_gaussian33_sums_result_add_0_0_p2_of_2_R_v_0 <= SE_i_mul14_gaussian33_sums_result_add_0_0_p2_of_2_R_v_0 & SE_i_mul14_gaussian33_sums_result_add_0_0_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_mul14_gaussian33_sums_result_add_0_0_p2_of_2_R_v_0 <= SE_i_mul14_gaussian33_sums_result_add_0_0_p2_of_2_v_s_0;
            end

        end
    end

    // i_mul14_gaussian33_sums_result_add_0_0_UpperBits_for_b(CONSTANT,271)
    assign i_mul14_gaussian33_sums_result_add_0_0_UpperBits_for_b_q = $unsigned(14'b00000000000000);

    // i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select(BITSELECT,315)
    assign i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b = $unsigned(i_mul14_gaussian33_sums_result_add_0_0_UpperBits_for_b_q[8:0]);
    assign i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c = $unsigned(i_mul14_gaussian33_sums_result_add_0_0_UpperBits_for_b_q[13:9]);

    // redist0_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0(REG,358)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_q <= $unsigned(4'b0000);
        end
        else if (SE_redist0_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backEN == 1'b1)
        begin
            redist0_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_q <= $unsigned(SR_SE_redist0_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_D0);
        end
    end

    // i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c(BITJOIN,306)@41
    assign i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist0_i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_q};

    // i_mul14_gaussian33_sums_result_add_0_0_p2_of_2(ADD,275)@41 + 1
    assign i_mul14_gaussian33_sums_result_add_0_0_p2_of_2_cin = i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_c;
    assign i_mul14_gaussian33_sums_result_add_0_0_p2_of_2_a = { {1'b0, i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q}, 1'b1 };
    assign i_mul14_gaussian33_sums_result_add_0_0_p2_of_2_b = { {1'b0, i_mul14_gaussian33_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c}, i_mul14_gaussian33_sums_result_add_0_0_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul14_gaussian33_sums_result_add_0_0_p2_of_2_o <= 7'b0;
        end
        else if (SE_i_mul14_gaussian33_sums_result_add_0_0_p2_of_2_backEN == 1'b1)
        begin
            i_mul14_gaussian33_sums_result_add_0_0_p2_of_2_o <= $unsigned(i_mul14_gaussian33_sums_result_add_0_0_p2_of_2_a) + $unsigned(i_mul14_gaussian33_sums_result_add_0_0_p2_of_2_b);
        end
    end
    assign i_mul14_gaussian33_sums_result_add_0_0_p2_of_2_q = i_mul14_gaussian33_sums_result_add_0_0_p2_of_2_o[5:1];

    // redist4_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_q_1_0(REG,362)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_q_1_0_q <= $unsigned(60'b000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist4_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_q_1_0_backEN == 1'b1)
        begin
            redist4_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_q_1_0_q <= $unsigned(i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_q);
        end
    end

    // i_mul14_gaussian33_sums_result_add_0_0_BitJoin_for_q(BITJOIN,276)@42
    assign i_mul14_gaussian33_sums_result_add_0_0_BitJoin_for_q_q = {i_mul14_gaussian33_sums_result_add_0_0_p2_of_2_q, redist4_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_q_1_0_q};

    // bgTrunc_i_mul14_gaussian33_sel_x(BITSELECT,6)@42
    assign bgTrunc_i_mul14_gaussian33_sel_x_in = i_mul14_gaussian33_sums_result_add_0_0_BitJoin_for_q_q[63:0];
    assign bgTrunc_i_mul14_gaussian33_sel_x_b = bgTrunc_i_mul14_gaussian33_sel_x_in[31:0];

    // bubble_join_i_llvm_fpga_mem_lm1_gaussian23(BITJOIN,445)
    assign bubble_join_i_llvm_fpga_mem_lm1_gaussian23_q = i_llvm_fpga_mem_lm1_gaussian23_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm1_gaussian23(BITSELECT,446)
    assign bubble_select_i_llvm_fpga_mem_lm1_gaussian23_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm1_gaussian23_q[31:0]);

    // i_sub_gaussian34(SUB,112)@42
    assign i_sub_gaussian34_a = {1'b0, bubble_select_i_llvm_fpga_mem_lm1_gaussian23_b};
    assign i_sub_gaussian34_b = {1'b0, bgTrunc_i_mul14_gaussian33_sel_x_b};
    assign i_sub_gaussian34_o = $unsigned(i_sub_gaussian34_a) - $unsigned(i_sub_gaussian34_b);
    assign i_sub_gaussian34_q = i_sub_gaussian34_o[32:0];

    // bgTrunc_i_sub_gaussian34_sel_x(BITSELECT,7)@42
    assign bgTrunc_i_sub_gaussian34_sel_x_b = $unsigned(i_sub_gaussian34_q[31:0]);

    // bubble_join_coalesced_delay_1_fifo(BITJOIN,540)
    assign bubble_join_coalesced_delay_1_fifo_q = coalesced_delay_1_fifo_data_out;

    // bubble_select_coalesced_delay_1_fifo(BITSELECT,541)
    assign bubble_select_coalesced_delay_1_fifo_b = $unsigned(bubble_join_coalesced_delay_1_fifo_q[64:0]);

    // sel_for_coalesced_delay_1(BITSELECT,357)
    assign sel_for_coalesced_delay_1_b = $unsigned(bubble_select_coalesced_delay_1_fifo_b[63:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(bubble_select_coalesced_delay_1_fifo_b[64:64]);

    // i_llvm_fpga_mem_memdep_gaussian35(BLACKBOX,79)@42
    // in in_i_stall@20000000
    // out out_lsu_memdep_o_active@20000000
    // out out_memdep_gaussian_avm_address@20000000
    // out out_memdep_gaussian_avm_burstcount@20000000
    // out out_memdep_gaussian_avm_byteenable@20000000
    // out out_memdep_gaussian_avm_enable@20000000
    // out out_memdep_gaussian_avm_read@20000000
    // out out_memdep_gaussian_avm_write@20000000
    // out out_memdep_gaussian_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@73
    // out out_o_writeack@73
    gaussian_i_llvm_fpga_mem_memdep_0 thei_llvm_fpga_mem_memdep_gaussian35 (
        .in_flush(in_flush),
        .in_i_address(sel_for_coalesced_delay_1_b),
        .in_i_predicate(sel_for_coalesced_delay_1_c),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_gaussian35_backStall),
        .in_i_valid(SE_out_coalesced_delay_1_fifo_V0),
        .in_i_writedata(bgTrunc_i_sub_gaussian34_sel_x_b),
        .in_memdep_gaussian_avm_readdata(in_memdep_gaussian_avm_readdata),
        .in_memdep_gaussian_avm_readdatavalid(in_memdep_gaussian_avm_readdatavalid),
        .in_memdep_gaussian_avm_waitrequest(in_memdep_gaussian_avm_waitrequest),
        .in_memdep_gaussian_avm_writeack(in_memdep_gaussian_avm_writeack),
        .out_lsu_memdep_o_active(i_llvm_fpga_mem_memdep_gaussian35_out_lsu_memdep_o_active),
        .out_memdep_gaussian_avm_address(i_llvm_fpga_mem_memdep_gaussian35_out_memdep_gaussian_avm_address),
        .out_memdep_gaussian_avm_burstcount(i_llvm_fpga_mem_memdep_gaussian35_out_memdep_gaussian_avm_burstcount),
        .out_memdep_gaussian_avm_byteenable(i_llvm_fpga_mem_memdep_gaussian35_out_memdep_gaussian_avm_byteenable),
        .out_memdep_gaussian_avm_enable(i_llvm_fpga_mem_memdep_gaussian35_out_memdep_gaussian_avm_enable),
        .out_memdep_gaussian_avm_read(i_llvm_fpga_mem_memdep_gaussian35_out_memdep_gaussian_avm_read),
        .out_memdep_gaussian_avm_write(i_llvm_fpga_mem_memdep_gaussian35_out_memdep_gaussian_avm_write),
        .out_memdep_gaussian_avm_writedata(i_llvm_fpga_mem_memdep_gaussian35_out_memdep_gaussian_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_gaussian35_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_gaussian35_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_gaussian35_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_memdep_gaussian35(STALLENABLE,577)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_memdep_gaussian35_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_gaussian35_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memdep_gaussian35_fromReg0 <= SE_out_i_llvm_fpga_mem_memdep_gaussian35_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memdep_gaussian35_fromReg1 <= SE_out_i_llvm_fpga_mem_memdep_gaussian35_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memdep_gaussian35_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_backStall) & SE_out_i_llvm_fpga_mem_memdep_gaussian35_wireValid) | SE_out_i_llvm_fpga_mem_memdep_gaussian35_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memdep_gaussian35_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi4_push14_gaussian36_backStall) & SE_out_i_llvm_fpga_mem_memdep_gaussian35_wireValid) | SE_out_i_llvm_fpga_mem_memdep_gaussian35_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memdep_gaussian35_StallValid = SE_out_i_llvm_fpga_mem_memdep_gaussian35_backStall & SE_out_i_llvm_fpga_mem_memdep_gaussian35_wireValid;
    assign SE_out_i_llvm_fpga_mem_memdep_gaussian35_toReg0 = SE_out_i_llvm_fpga_mem_memdep_gaussian35_StallValid & SE_out_i_llvm_fpga_mem_memdep_gaussian35_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_gaussian35_toReg1 = SE_out_i_llvm_fpga_mem_memdep_gaussian35_StallValid & SE_out_i_llvm_fpga_mem_memdep_gaussian35_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_gaussian35_or0 = SE_out_i_llvm_fpga_mem_memdep_gaussian35_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_gaussian35_wireStall = ~ (SE_out_i_llvm_fpga_mem_memdep_gaussian35_consumed1 & SE_out_i_llvm_fpga_mem_memdep_gaussian35_or0);
    assign SE_out_i_llvm_fpga_mem_memdep_gaussian35_backStall = SE_out_i_llvm_fpga_mem_memdep_gaussian35_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_gaussian35_V0 = SE_out_i_llvm_fpga_mem_memdep_gaussian35_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_gaussian35_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memdep_gaussian35_V1 = SE_out_i_llvm_fpga_mem_memdep_gaussian35_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_gaussian35_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_gaussian35_wireValid = i_llvm_fpga_mem_memdep_gaussian35_out_o_valid;

    // SE_out_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5(STALLENABLE,591)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_fromReg0 <= SE_out_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_fromReg1 <= SE_out_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_backStall) & SE_out_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_wireValid) | SE_out_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_consumed1 = (~ (SR_SE_i_next_initerations_gaussian6_vt_select_0_backStall) & SE_out_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_wireValid) | SE_out_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_StallValid = SE_out_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_backStall & SE_out_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_wireValid;
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_toReg0 = SE_out_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_StallValid & SE_out_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_consumed0;
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_toReg1 = SE_out_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_StallValid & SE_out_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_or0 = SE_out_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_consumed0;
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_wireStall = ~ (SE_out_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_consumed1 & SE_out_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_or0);
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_backStall = SE_out_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_V0 = SE_out_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_V1 = SE_out_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_wireValid = i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_out_valid_out;

    // redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo(STALLFIFO,409)
    assign redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_valid_in = SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_V2;
    assign redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_stall_in = SE_out_redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_backStall;
    assign redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_data_in = i_first_cleanup_gaussian1_sel_x_b;
    assign redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_valid_in_bitsignaltemp = redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_valid_in[0];
    assign redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_stall_in_bitsignaltemp = redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_stall_in[0];
    assign redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_valid_out[0] = redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_valid_out_bitsignaltemp;
    assign redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_stall_out[0] = redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(66),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo (
        .valid_in(redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_valid_in_bitsignaltemp),
        .stall_in(redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_stall_in_bitsignaltemp),
        .data_in(i_first_cleanup_gaussian1_sel_x_b),
        .valid_out(redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_valid_out_bitsignaltemp),
        .stall_out(redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_stall_out_bitsignaltemp),
        .data_out(redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo(BITJOIN,528)
    assign bubble_join_redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_q = redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_data_out;

    // bubble_select_redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo(BITSELECT,529)
    assign bubble_select_redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_b = $unsigned(bubble_join_redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_q[0:0]);

    // bubble_join_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39(BITJOIN,493)
    assign bubble_join_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_q = i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39(BITSELECT,494)
    assign bubble_select_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_b = $unsigned(bubble_join_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_q[5:0]);

    // i_exitcond_gaussian40_cmp_nsign(LOGICAL,231)@70
    assign i_exitcond_gaussian40_cmp_nsign_q = $unsigned(~ (bubble_select_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_b[5:5]));

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44(BITJOIN,429)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_q = i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_out_dest_data_out_8_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44(BITSELECT,430)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_q[0:0]);

    // i_unnamed_gaussian45(LOGICAL,122)@70
    assign i_unnamed_gaussian45_q = bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_b & i_exitcond_gaussian40_cmp_nsign_q;

    // i_notcmp_gaussian46(LOGICAL,110)@70
    assign i_notcmp_gaussian46_q = i_unnamed_gaussian45_q ^ VCC_q;

    // SE_out_i_llvm_fpga_push_i1_notexitcond_gaussian47(STALLENABLE,609)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_notexitcond_gaussian47_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_notexitcond_gaussian47_wireValid = i_llvm_fpga_push_i1_notexitcond_gaussian47_out_valid_out;

    // i_llvm_fpga_push_i1_notexitcond_gaussian47(BLACKBOX,95)@70
    // in in_stall_in@20000000
    // out out_data_out@71
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    // out out_stall_out@20000000
    // out out_valid_out@71
    gaussian_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_gaussian47 (
        .in_data_in(i_unnamed_gaussian45_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_gaussian4_out_not_exitcond_stall_out),
        .in_first_cleanup(bubble_select_redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_notexitcond_gaussian47_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_notexitcond_gaussian47_V0),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_gaussian47_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_gaussian47_out_feedback_valid_out_3),
        .out_stall_out(i_llvm_fpga_push_i1_notexitcond_gaussian47_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_notexitcond_gaussian47_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i1_notexitcond_gaussian47(STALLENABLE,608)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_gaussian47_V0 = SE_in_i_llvm_fpga_push_i1_notexitcond_gaussian47_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_gaussian47_backStall = i_llvm_fpga_push_i1_notexitcond_gaussian47_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_notexitcond_gaussian47_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_gaussian47_and0 = SE_i_unnamed_gaussian45_V0;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_gaussian47_wireValid = SE_out_redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_V0 & SE_in_i_llvm_fpga_push_i1_notexitcond_gaussian47_and0;

    // SE_out_redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo(STALLENABLE,737)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_fromReg0 <= '0;
            SE_out_redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_fromReg0 <= SE_out_redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_toReg0;
            // Successor 1
            SE_out_redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_fromReg1 <= SE_out_redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_consumed0 = (~ (SE_in_i_llvm_fpga_push_i1_notexitcond_gaussian47_backStall) & SE_out_redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_wireValid) | SE_out_redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_fromReg0;
    assign SE_out_redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_consumed1 = (~ (SR_SE_i_masked_gaussian51_backStall) & SE_out_redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_wireValid) | SE_out_redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_fromReg1;
    // Consuming
    assign SE_out_redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_StallValid = SE_out_redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_backStall & SE_out_redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_wireValid;
    assign SE_out_redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_toReg0 = SE_out_redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_StallValid & SE_out_redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_consumed0;
    assign SE_out_redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_toReg1 = SE_out_redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_StallValid & SE_out_redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_or0 = SE_out_redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_consumed0;
    assign SE_out_redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_wireStall = ~ (SE_out_redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_consumed1 & SE_out_redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_or0);
    assign SE_out_redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_backStall = SE_out_redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_V0 = SE_out_redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_wireValid & ~ (SE_out_redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_fromReg0);
    assign SE_out_redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_V1 = SE_out_redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_wireValid & ~ (SE_out_redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_wireValid = redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_valid_out;

    // SR_SE_i_masked_gaussian51(STALLREG,939)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_masked_gaussian51_r_valid <= 1'b0;
            SR_SE_i_masked_gaussian51_r_data0 <= 1'bx;
            SR_SE_i_masked_gaussian51_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_masked_gaussian51_r_valid <= SE_i_masked_gaussian51_backStall & (SR_SE_i_masked_gaussian51_r_valid | SR_SE_i_masked_gaussian51_i_valid);

            if (SR_SE_i_masked_gaussian51_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_masked_gaussian51_r_data0 <= i_notcmp_gaussian46_q;
                SR_SE_i_masked_gaussian51_r_data1 <= $unsigned(bubble_select_redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_masked_gaussian51_and0 = SE_i_unnamed_gaussian45_V1;
    assign SR_SE_i_masked_gaussian51_i_valid = SE_out_redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_V1 & SR_SE_i_masked_gaussian51_and0;
    // Stall signal propagation
    assign SR_SE_i_masked_gaussian51_backStall = SR_SE_i_masked_gaussian51_r_valid | ~ (SR_SE_i_masked_gaussian51_i_valid);

    // Valid
    assign SR_SE_i_masked_gaussian51_V = SR_SE_i_masked_gaussian51_r_valid == 1'b1 ? SR_SE_i_masked_gaussian51_r_valid : SR_SE_i_masked_gaussian51_i_valid;

    // Data0
    assign SR_SE_i_masked_gaussian51_D0 = SR_SE_i_masked_gaussian51_r_valid == 1'b1 ? SR_SE_i_masked_gaussian51_r_data0 : i_notcmp_gaussian46_q;
    // Data1
    assign SR_SE_i_masked_gaussian51_D1 = SR_SE_i_masked_gaussian51_r_valid == 1'b1 ? SR_SE_i_masked_gaussian51_r_data1 : bubble_select_redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_b;

    // SE_i_masked_gaussian51(STALLENABLE,624)
    // Valid signal propagation
    assign SE_i_masked_gaussian51_V0 = SE_i_masked_gaussian51_R_v_0;
    // Stall signal propagation
    assign SE_i_masked_gaussian51_s_tv_0 = SE_redist10_i_masked_gaussian51_q_3_0_backStall & SE_i_masked_gaussian51_R_v_0;
    // Backward Enable generation
    assign SE_i_masked_gaussian51_backEN = ~ (SE_i_masked_gaussian51_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_masked_gaussian51_v_s_0 = SE_i_masked_gaussian51_backEN & SR_SE_i_masked_gaussian51_V;
    // Backward Stall generation
    assign SE_i_masked_gaussian51_backStall = ~ (SE_i_masked_gaussian51_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_masked_gaussian51_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_masked_gaussian51_backEN == 1'b0)
            begin
                SE_i_masked_gaussian51_R_v_0 <= SE_i_masked_gaussian51_R_v_0 & SE_i_masked_gaussian51_s_tv_0;
            end
            else
            begin
                SE_i_masked_gaussian51_R_v_0 <= SE_i_masked_gaussian51_v_s_0;
            end

        end
    end

    // i_masked_gaussian51(LOGICAL,103)@70 + 1
    assign i_masked_gaussian51_qi = SR_SE_i_masked_gaussian51_D0 & SR_SE_i_masked_gaussian51_D1;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_gaussian51_delay ( .xin(i_masked_gaussian51_qi), .xout(i_masked_gaussian51_q), .ena(SE_i_masked_gaussian51_backEN[0]), .clk(clock), .aclr(resetn) );

    // redist10_i_masked_gaussian51_q_3_0(REG,368)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_masked_gaussian51_q_3_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist10_i_masked_gaussian51_q_3_0_backEN == 1'b1)
        begin
            redist10_i_masked_gaussian51_q_3_0_q <= $unsigned(i_masked_gaussian51_q);
        end
    end

    // SE_redist10_i_masked_gaussian51_q_3_0(STALLENABLE,690)
    // Valid signal propagation
    assign SE_redist10_i_masked_gaussian51_q_3_0_V0 = SE_redist10_i_masked_gaussian51_q_3_0_R_v_0;
    // Stall signal propagation
    assign SE_redist10_i_masked_gaussian51_q_3_0_s_tv_0 = SR_SE_redist10_i_masked_gaussian51_q_3_1_backStall & SE_redist10_i_masked_gaussian51_q_3_0_R_v_0;
    // Backward Enable generation
    assign SE_redist10_i_masked_gaussian51_q_3_0_backEN = ~ (SE_redist10_i_masked_gaussian51_q_3_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist10_i_masked_gaussian51_q_3_0_v_s_0 = SE_redist10_i_masked_gaussian51_q_3_0_backEN & SE_i_masked_gaussian51_V0;
    // Backward Stall generation
    assign SE_redist10_i_masked_gaussian51_q_3_0_backStall = ~ (SE_redist10_i_masked_gaussian51_q_3_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist10_i_masked_gaussian51_q_3_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist10_i_masked_gaussian51_q_3_0_backEN == 1'b0)
            begin
                SE_redist10_i_masked_gaussian51_q_3_0_R_v_0 <= SE_redist10_i_masked_gaussian51_q_3_0_R_v_0 & SE_redist10_i_masked_gaussian51_q_3_0_s_tv_0;
            end
            else
            begin
                SE_redist10_i_masked_gaussian51_q_3_0_R_v_0 <= SE_redist10_i_masked_gaussian51_q_3_0_v_s_0;
            end

        end
    end

    // SR_SE_redist10_i_masked_gaussian51_q_3_1(STALLREG,940)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist10_i_masked_gaussian51_q_3_1_r_valid <= 1'b0;
            SR_SE_redist10_i_masked_gaussian51_q_3_1_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist10_i_masked_gaussian51_q_3_1_r_valid <= SE_redist10_i_masked_gaussian51_q_3_1_backStall & (SR_SE_redist10_i_masked_gaussian51_q_3_1_r_valid | SR_SE_redist10_i_masked_gaussian51_q_3_1_i_valid);

            if (SR_SE_redist10_i_masked_gaussian51_q_3_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist10_i_masked_gaussian51_q_3_1_r_data0 <= $unsigned(redist10_i_masked_gaussian51_q_3_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist10_i_masked_gaussian51_q_3_1_i_valid = SE_redist10_i_masked_gaussian51_q_3_0_V0;
    // Stall signal propagation
    assign SR_SE_redist10_i_masked_gaussian51_q_3_1_backStall = SR_SE_redist10_i_masked_gaussian51_q_3_1_r_valid | ~ (SR_SE_redist10_i_masked_gaussian51_q_3_1_i_valid);

    // Valid
    assign SR_SE_redist10_i_masked_gaussian51_q_3_1_V = SR_SE_redist10_i_masked_gaussian51_q_3_1_r_valid == 1'b1 ? SR_SE_redist10_i_masked_gaussian51_q_3_1_r_valid : SR_SE_redist10_i_masked_gaussian51_q_3_1_i_valid;

    assign SR_SE_redist10_i_masked_gaussian51_q_3_1_D0 = SR_SE_redist10_i_masked_gaussian51_q_3_1_r_valid == 1'b1 ? SR_SE_redist10_i_masked_gaussian51_q_3_1_r_data0 : redist10_i_masked_gaussian51_q_3_0_q;

    // SE_redist10_i_masked_gaussian51_q_3_1(STALLENABLE,691)
    // Valid signal propagation
    assign SE_redist10_i_masked_gaussian51_q_3_1_V0 = SE_redist10_i_masked_gaussian51_q_3_1_R_v_0;
    // Stall signal propagation
    assign SE_redist10_i_masked_gaussian51_q_3_1_s_tv_0 = SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_backStall & SE_redist10_i_masked_gaussian51_q_3_1_R_v_0;
    // Backward Enable generation
    assign SE_redist10_i_masked_gaussian51_q_3_1_backEN = ~ (SE_redist10_i_masked_gaussian51_q_3_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist10_i_masked_gaussian51_q_3_1_v_s_0 = SE_redist10_i_masked_gaussian51_q_3_1_backEN & SR_SE_redist10_i_masked_gaussian51_q_3_1_V;
    // Backward Stall generation
    assign SE_redist10_i_masked_gaussian51_q_3_1_backStall = ~ (SE_redist10_i_masked_gaussian51_q_3_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist10_i_masked_gaussian51_q_3_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist10_i_masked_gaussian51_q_3_1_backEN == 1'b0)
            begin
                SE_redist10_i_masked_gaussian51_q_3_1_R_v_0 <= SE_redist10_i_masked_gaussian51_q_3_1_R_v_0 & SE_redist10_i_masked_gaussian51_q_3_1_s_tv_0;
            end
            else
            begin
                SE_redist10_i_masked_gaussian51_q_3_1_R_v_0 <= SE_redist10_i_masked_gaussian51_q_3_1_v_s_0;
            end

        end
    end

    // bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_1_reg(STALLFIFO,927)
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_V0;
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(4),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i32_add44_pop17_gaussian52(BITJOIN,483)
    assign bubble_join_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_q = i_llvm_fpga_pop_i32_add44_pop17_gaussian52_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_add44_pop17_gaussian52(BITSELECT,484)
    assign bubble_select_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_q[31:0]);

    // i_llvm_fpga_push_i32_add44_push17_gaussian53(BLACKBOX,99)@72
    // in in_stall_in@20000000
    // out out_data_out@73
    // out out_feedback_out_17@20000000
    // out out_feedback_valid_out_17@20000000
    // out out_stall_out@20000000
    // out out_valid_out@73
    gaussian_i_llvm_fpga_push_i32_add44_push17_0 thei_llvm_fpga_push_i32_add44_push17_gaussian53 (
        .in_data_in(bubble_select_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_b),
        .in_feedback_stall_in_17(i_llvm_fpga_pop_i32_add44_pop17_gaussian52_out_feedback_stall_out_17),
        .in_keep_going(redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_q),
        .in_stall_in(SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i32_add44_push17_gaussian53_V0),
        .out_data_out(i_llvm_fpga_push_i32_add44_push17_gaussian53_out_data_out),
        .out_feedback_out_17(i_llvm_fpga_push_i32_add44_push17_gaussian53_out_feedback_out_17),
        .out_feedback_valid_out_17(i_llvm_fpga_push_i32_add44_push17_gaussian53_out_feedback_valid_out_17),
        .out_stall_out(i_llvm_fpga_push_i32_add44_push17_gaussian53_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_add44_push17_gaussian53_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_1_reg(STALLENABLE,929)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_1_reg_V0 = bubble_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_1_reg_s_tv_0 = SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_backStall & bubble_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_1_reg_v_s_0 = bubble_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_1_reg_backEN & SE_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_1_reg_R_v_0 & bubble_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_1_reg_v_s_0;
            end

        end
    end

    // SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1(STALLENABLE,861)
    // Valid signal propagation
    assign SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_V0 = SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_backStall = in_stall_in | ~ (SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_and0 = bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_reg_valid_out;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_and1 = bubble_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_1_reg_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_and0;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_and2 = i_llvm_fpga_push_i32_add44_push17_gaussian53_out_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_and1;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_and3 = bubble_out_i_llvm_fpga_pipeline_keep_going_gaussian4_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_and2;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_and4 = bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_and3;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_and5 = SE_redist10_i_masked_gaussian51_q_3_1_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_and4;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_and6 = SE_out_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_and5;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_and7 = SE_out_i_llvm_fpga_pop_i1_pop19_gaussian54_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_and6;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_and8 = SE_out_i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_and7;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_wireValid = SE_out_i_llvm_fpga_mem_memdep_gaussian35_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_and8;

    // SE_out_i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56(STALLENABLE,585)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_backStall) & SE_out_i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_wireValid) | SE_out_i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_notcmp3546_push20_gaussian57_backStall) & SE_out_i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_wireValid) | SE_out_i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_StallValid = SE_out_i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_backStall & SE_out_i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_toReg0 = SE_out_i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_StallValid & SE_out_i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_toReg1 = SE_out_i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_StallValid & SE_out_i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_or0 = SE_out_i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_consumed1 & SE_out_i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_or0);
    assign SE_out_i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_backStall = SE_out_i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_V0 = SE_out_i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_V1 = SE_out_i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_wireValid = i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_out_valid_out;

    // SE_out_i_llvm_fpga_push_i1_notcmp3546_push20_gaussian57(STALLENABLE,607)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_notcmp3546_push20_gaussian57_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_notcmp3546_push20_gaussian57_wireValid = i_llvm_fpga_push_i1_notcmp3546_push20_gaussian57_out_valid_out;

    // bubble_join_i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56(BITJOIN,468)
    assign bubble_join_i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_q = i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56(BITSELECT,469)
    assign bubble_select_i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_q[0:0]);

    // i_llvm_fpga_push_i1_notcmp3546_push20_gaussian57(BLACKBOX,94)@73
    // in in_stall_in@20000000
    // out out_data_out@74
    // out out_feedback_out_20@20000000
    // out out_feedback_valid_out_20@20000000
    // out out_stall_out@20000000
    // out out_valid_out@74
    gaussian_i_llvm_fpga_push_i1_notcmp3546_push20_0 thei_llvm_fpga_push_i1_notcmp3546_push20_gaussian57 (
        .in_data_in(bubble_select_i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_b),
        .in_feedback_stall_in_20(i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_out_feedback_stall_out_20),
        .in_keep_going(redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_q),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_notcmp3546_push20_gaussian57_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_notcmp3546_push20_gaussian57_V0),
        .out_data_out(),
        .out_feedback_out_20(i_llvm_fpga_push_i1_notcmp3546_push20_gaussian57_out_feedback_out_20),
        .out_feedback_valid_out_20(i_llvm_fpga_push_i1_notcmp3546_push20_gaussian57_out_feedback_valid_out_20),
        .out_stall_out(i_llvm_fpga_push_i1_notcmp3546_push20_gaussian57_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_notcmp3546_push20_gaussian57_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56(BLACKBOX,83)@72
    // in in_stall_in@20000000
    // out out_data_out@73
    // out out_feedback_stall_out_20@20000000
    // out out_stall_out@20000000
    // out out_valid_out@73
    gaussian_i_llvm_fpga_pop_i1_notcmp3546_pop20_0 thei_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56 (
        .in_data_in(SR_SE_out_coalesced_delay_0_fifo_D0),
        .in_dir(SR_SE_out_coalesced_delay_0_fifo_D1),
        .in_feedback_in_20(i_llvm_fpga_push_i1_notcmp3546_push20_gaussian57_out_feedback_out_20),
        .in_feedback_valid_in_20(i_llvm_fpga_push_i1_notcmp3546_push20_gaussian57_out_feedback_valid_out_20),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_backStall),
        .in_valid_in(SE_out_coalesced_delay_0_fifo_V0),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_out_data_out),
        .out_feedback_stall_out_20(i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_out_feedback_stall_out_20),
        .out_stall_out(i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,749)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_coalesced_delay_0_fifo_fromReg0 <= '0;
            SE_out_coalesced_delay_0_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_coalesced_delay_0_fifo_fromReg0 <= SE_out_coalesced_delay_0_fifo_toReg0;
            // Successor 1
            SE_out_coalesced_delay_0_fifo_fromReg1 <= SE_out_coalesced_delay_0_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_coalesced_delay_0_fifo_consumed0 = (~ (i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_out_stall_out) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg0;
    assign SE_out_coalesced_delay_0_fifo_consumed1 = (~ (i_llvm_fpga_pop_i1_pop19_gaussian54_out_stall_out) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg1;
    // Consuming
    assign SE_out_coalesced_delay_0_fifo_StallValid = SE_out_coalesced_delay_0_fifo_backStall & SE_out_coalesced_delay_0_fifo_wireValid;
    assign SE_out_coalesced_delay_0_fifo_toReg0 = SE_out_coalesced_delay_0_fifo_StallValid & SE_out_coalesced_delay_0_fifo_consumed0;
    assign SE_out_coalesced_delay_0_fifo_toReg1 = SE_out_coalesced_delay_0_fifo_StallValid & SE_out_coalesced_delay_0_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_or0 = SE_out_coalesced_delay_0_fifo_consumed0;
    assign SE_out_coalesced_delay_0_fifo_wireStall = ~ (SE_out_coalesced_delay_0_fifo_consumed1 & SE_out_coalesced_delay_0_fifo_or0);
    assign SE_out_coalesced_delay_0_fifo_backStall = SE_out_coalesced_delay_0_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid & ~ (SE_out_coalesced_delay_0_fifo_fromReg0);
    assign SE_out_coalesced_delay_0_fifo_V1 = SE_out_coalesced_delay_0_fifo_wireValid & ~ (SE_out_coalesced_delay_0_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_wireValid = SR_SE_out_coalesced_delay_0_fifo_V;

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,537)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,538)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[1:0]);

    // sel_for_coalesced_delay_0(BITSELECT,354)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[0:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[1:1]);

    // SR_SE_out_coalesced_delay_0_fifo(STALLREG,941)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_out_coalesced_delay_0_fifo_r_valid <= 1'b0;
            SR_SE_out_coalesced_delay_0_fifo_r_data0 <= 1'bx;
            SR_SE_out_coalesced_delay_0_fifo_r_data1 <= 1'bx;
            SR_SE_out_coalesced_delay_0_fifo_r_data2 <= 1'bx;
            SR_SE_out_coalesced_delay_0_fifo_r_data3 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_out_coalesced_delay_0_fifo_r_valid <= SE_out_coalesced_delay_0_fifo_backStall & (SR_SE_out_coalesced_delay_0_fifo_r_valid | SR_SE_out_coalesced_delay_0_fifo_i_valid);

            if (SR_SE_out_coalesced_delay_0_fifo_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_out_coalesced_delay_0_fifo_r_data0 <= $unsigned(sel_for_coalesced_delay_0_c);
                SR_SE_out_coalesced_delay_0_fifo_r_data1 <= $unsigned(redist32_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_q);
                SR_SE_out_coalesced_delay_0_fifo_r_data2 <= $unsigned(redist32_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_q);
                SR_SE_out_coalesced_delay_0_fifo_r_data3 <= $unsigned(sel_for_coalesced_delay_0_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_out_coalesced_delay_0_fifo_and0 = coalesced_delay_0_fifo_valid_out;
    assign SR_SE_out_coalesced_delay_0_fifo_i_valid = SE_redist32_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_V0 & SR_SE_out_coalesced_delay_0_fifo_and0;
    // Stall signal propagation
    assign SR_SE_out_coalesced_delay_0_fifo_backStall = SR_SE_out_coalesced_delay_0_fifo_r_valid | ~ (SR_SE_out_coalesced_delay_0_fifo_i_valid);

    // Valid
    assign SR_SE_out_coalesced_delay_0_fifo_V = SR_SE_out_coalesced_delay_0_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_0_fifo_r_valid : SR_SE_out_coalesced_delay_0_fifo_i_valid;

    // Data0
    assign SR_SE_out_coalesced_delay_0_fifo_D0 = SR_SE_out_coalesced_delay_0_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_0_fifo_r_data0 : sel_for_coalesced_delay_0_c;
    // Data1
    assign SR_SE_out_coalesced_delay_0_fifo_D1 = SR_SE_out_coalesced_delay_0_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_0_fifo_r_data1 : redist32_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_q;
    // Data2
    assign SR_SE_out_coalesced_delay_0_fifo_D2 = SR_SE_out_coalesced_delay_0_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_0_fifo_r_data2 : redist32_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_q;
    // Data3
    assign SR_SE_out_coalesced_delay_0_fifo_D3 = SR_SE_out_coalesced_delay_0_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_0_fifo_r_data3 : sel_for_coalesced_delay_0_b;

    // i_llvm_fpga_pop_i1_pop19_gaussian54(BLACKBOX,84)@72
    // in in_stall_in@20000000
    // out out_data_out@73
    // out out_feedback_stall_out_19@20000000
    // out out_stall_out@20000000
    // out out_valid_out@73
    gaussian_i_llvm_fpga_pop_i1_pop19_0 thei_llvm_fpga_pop_i1_pop19_gaussian54 (
        .in_data_in(SR_SE_out_coalesced_delay_0_fifo_D3),
        .in_dir(SR_SE_out_coalesced_delay_0_fifo_D2),
        .in_feedback_in_19(i_llvm_fpga_push_i1_push19_gaussian55_out_feedback_out_19),
        .in_feedback_valid_in_19(i_llvm_fpga_push_i1_push19_gaussian55_out_feedback_valid_out_19),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_pop19_gaussian54_backStall),
        .in_valid_in(SE_out_coalesced_delay_0_fifo_V1),
        .out_data_out(i_llvm_fpga_pop_i1_pop19_gaussian54_out_data_out),
        .out_feedback_stall_out_19(i_llvm_fpga_pop_i1_pop19_gaussian54_out_feedback_stall_out_19),
        .out_stall_out(i_llvm_fpga_pop_i1_pop19_gaussian54_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_pop19_gaussian54_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i1_pop19_gaussian54(BITJOIN,472)
    assign bubble_join_i_llvm_fpga_pop_i1_pop19_gaussian54_q = i_llvm_fpga_pop_i1_pop19_gaussian54_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_pop19_gaussian54(BITSELECT,473)
    assign bubble_select_i_llvm_fpga_pop_i1_pop19_gaussian54_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_pop19_gaussian54_q[0:0]);

    // i_llvm_fpga_push_i1_push19_gaussian55(BLACKBOX,96)@73
    // in in_stall_in@20000000
    // out out_data_out@74
    // out out_feedback_out_19@20000000
    // out out_feedback_valid_out_19@20000000
    // out out_stall_out@20000000
    // out out_valid_out@74
    gaussian_i_llvm_fpga_push_i1_push19_0 thei_llvm_fpga_push_i1_push19_gaussian55 (
        .in_data_in(bubble_select_i_llvm_fpga_pop_i1_pop19_gaussian54_b),
        .in_feedback_stall_in_19(i_llvm_fpga_pop_i1_pop19_gaussian54_out_feedback_stall_out_19),
        .in_keep_going(redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_q),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_push19_gaussian55_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_push19_gaussian55_V0),
        .out_data_out(),
        .out_feedback_out_19(i_llvm_fpga_push_i1_push19_gaussian55_out_feedback_out_19),
        .out_feedback_valid_out_19(i_llvm_fpga_push_i1_push19_gaussian55_out_feedback_valid_out_19),
        .out_stall_out(i_llvm_fpga_push_i1_push19_gaussian55_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_push19_gaussian55_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i1_pop19_gaussian54(STALLENABLE,587)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_pop19_gaussian54_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_pop19_gaussian54_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_pop19_gaussian54_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_pop19_gaussian54_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_pop19_gaussian54_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_pop19_gaussian54_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_pop19_gaussian54_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_backStall) & SE_out_i_llvm_fpga_pop_i1_pop19_gaussian54_wireValid) | SE_out_i_llvm_fpga_pop_i1_pop19_gaussian54_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_pop19_gaussian54_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_push19_gaussian55_backStall) & SE_out_i_llvm_fpga_pop_i1_pop19_gaussian54_wireValid) | SE_out_i_llvm_fpga_pop_i1_pop19_gaussian54_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_pop19_gaussian54_StallValid = SE_out_i_llvm_fpga_pop_i1_pop19_gaussian54_backStall & SE_out_i_llvm_fpga_pop_i1_pop19_gaussian54_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_pop19_gaussian54_toReg0 = SE_out_i_llvm_fpga_pop_i1_pop19_gaussian54_StallValid & SE_out_i_llvm_fpga_pop_i1_pop19_gaussian54_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_pop19_gaussian54_toReg1 = SE_out_i_llvm_fpga_pop_i1_pop19_gaussian54_StallValid & SE_out_i_llvm_fpga_pop_i1_pop19_gaussian54_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_pop19_gaussian54_or0 = SE_out_i_llvm_fpga_pop_i1_pop19_gaussian54_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_pop19_gaussian54_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_pop19_gaussian54_consumed1 & SE_out_i_llvm_fpga_pop_i1_pop19_gaussian54_or0);
    assign SE_out_i_llvm_fpga_pop_i1_pop19_gaussian54_backStall = SE_out_i_llvm_fpga_pop_i1_pop19_gaussian54_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_pop19_gaussian54_V0 = SE_out_i_llvm_fpga_pop_i1_pop19_gaussian54_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_pop19_gaussian54_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_pop19_gaussian54_V1 = SE_out_i_llvm_fpga_pop_i1_pop19_gaussian54_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_pop19_gaussian54_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_pop19_gaussian54_wireValid = i_llvm_fpga_pop_i1_pop19_gaussian54_out_valid_out;

    // SE_in_i_llvm_fpga_push_i1_push19_gaussian55(STALLENABLE,610)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_push19_gaussian55_V0 = SE_in_i_llvm_fpga_push_i1_push19_gaussian55_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_push19_gaussian55_backStall = i_llvm_fpga_push_i1_push19_gaussian55_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_push19_gaussian55_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_push19_gaussian55_and0 = SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_V3;
    assign SE_in_i_llvm_fpga_push_i1_push19_gaussian55_wireValid = SE_out_i_llvm_fpga_pop_i1_pop19_gaussian54_V1 & SE_in_i_llvm_fpga_push_i1_push19_gaussian55_and0;

    // SE_in_i_llvm_fpga_push_i1_notcmp3546_push20_gaussian57(STALLENABLE,606)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_notcmp3546_push20_gaussian57_V0 = SE_in_i_llvm_fpga_push_i1_notcmp3546_push20_gaussian57_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_notcmp3546_push20_gaussian57_backStall = i_llvm_fpga_push_i1_notcmp3546_push20_gaussian57_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_notcmp3546_push20_gaussian57_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_notcmp3546_push20_gaussian57_and0 = SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_V2;
    assign SE_in_i_llvm_fpga_push_i1_notcmp3546_push20_gaussian57_wireValid = SE_out_i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_V1 & SE_in_i_llvm_fpga_push_i1_notcmp3546_push20_gaussian57_and0;

    // SE_out_i_llvm_fpga_push_i1_memdep_phi4_push14_gaussian36(STALLENABLE,603)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi4_push14_gaussian36_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi4_push14_gaussian36_wireValid = i_llvm_fpga_push_i1_memdep_phi4_push14_gaussian36_out_valid_out;

    // bubble_join_i_llvm_fpga_mem_memdep_gaussian35(BITJOIN,454)
    assign bubble_join_i_llvm_fpga_mem_memdep_gaussian35_q = i_llvm_fpga_mem_memdep_gaussian35_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_gaussian35(BITSELECT,455)
    assign bubble_select_i_llvm_fpga_mem_memdep_gaussian35_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_gaussian35_q[0:0]);

    // i_llvm_fpga_push_i1_memdep_phi4_push14_gaussian36(BLACKBOX,92)@73
    // in in_stall_in@20000000
    // out out_data_out@74
    // out out_feedback_out_14@20000000
    // out out_feedback_valid_out_14@20000000
    // out out_stall_out@20000000
    // out out_valid_out@74
    gaussian_i_llvm_fpga_push_i1_memdep_phi4_push14_0 thei_llvm_fpga_push_i1_memdep_phi4_push14_gaussian36 (
        .in_data_in(bubble_select_i_llvm_fpga_mem_memdep_gaussian35_b),
        .in_feedback_stall_in_14(i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_out_feedback_stall_out_14),
        .in_keep_going(redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_q),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi4_push14_gaussian36_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_memdep_phi4_push14_gaussian36_V0),
        .out_data_out(),
        .out_feedback_out_14(i_llvm_fpga_push_i1_memdep_phi4_push14_gaussian36_out_feedback_out_14),
        .out_feedback_valid_out_14(i_llvm_fpga_push_i1_memdep_phi4_push14_gaussian36_out_feedback_valid_out_14),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi4_push14_gaussian36_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi4_push14_gaussian36_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i1_memdep_phi4_push14_gaussian36(STALLENABLE,602)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi4_push14_gaussian36_V0 = SE_in_i_llvm_fpga_push_i1_memdep_phi4_push14_gaussian36_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi4_push14_gaussian36_backStall = i_llvm_fpga_push_i1_memdep_phi4_push14_gaussian36_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_memdep_phi4_push14_gaussian36_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi4_push14_gaussian36_and0 = SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_V1;
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi4_push14_gaussian36_wireValid = SE_out_i_llvm_fpga_mem_memdep_gaussian35_V1 & SE_in_i_llvm_fpga_push_i1_memdep_phi4_push14_gaussian36_and0;

    // rightShiftStage0Idx1Rng1_uid225_i_next_initerations_gaussian0_shift_x(BITSELECT,224)@73
    assign rightShiftStage0Idx1Rng1_uid225_i_next_initerations_gaussian0_shift_x_b = bubble_select_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_b[1:1];

    // rightShiftStage0Idx1_uid227_i_next_initerations_gaussian0_shift_x(BITJOIN,226)@73
    assign rightShiftStage0Idx1_uid227_i_next_initerations_gaussian0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid225_i_next_initerations_gaussian0_shift_x_b};

    // bubble_join_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5(BITJOIN,479)
    assign bubble_join_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_q = i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5(BITSELECT,480)
    assign bubble_select_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_b = $unsigned(bubble_join_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_q[1:0]);

    // rightShiftStage0_uid229_i_next_initerations_gaussian0_shift_x(MUX,228)@73
    assign rightShiftStage0_uid229_i_next_initerations_gaussian0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid229_i_next_initerations_gaussian0_shift_x_s or bubble_select_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_b or rightShiftStage0Idx1_uid227_i_next_initerations_gaussian0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid229_i_next_initerations_gaussian0_shift_x_s)
            1'b0 : rightShiftStage0_uid229_i_next_initerations_gaussian0_shift_x_q = bubble_select_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_b;
            1'b1 : rightShiftStage0_uid229_i_next_initerations_gaussian0_shift_x_q = rightShiftStage0Idx1_uid227_i_next_initerations_gaussian0_shift_x_q;
            default : rightShiftStage0_uid229_i_next_initerations_gaussian0_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations_gaussian6_vt_select_0(BITSELECT,109)@73
    assign i_next_initerations_gaussian6_vt_select_0_b = rightShiftStage0_uid229_i_next_initerations_gaussian0_shift_x_q[0:0];

    // i_next_initerations_gaussian6_vt_join(BITJOIN,108)@73
    assign i_next_initerations_gaussian6_vt_join_q = {GND_q, i_next_initerations_gaussian6_vt_select_0_b};

    // i_last_initeration_gaussian8_sel_x(BITSELECT,24)@73
    assign i_last_initeration_gaussian8_sel_x_b = i_next_initerations_gaussian6_vt_join_q[0:0];

    // SR_SE_i_next_initerations_gaussian6_vt_select_0(STALLREG,963)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_next_initerations_gaussian6_vt_select_0_r_valid <= 1'b0;
            SR_SE_i_next_initerations_gaussian6_vt_select_0_r_data0 <= 1'bx;
            SR_SE_i_next_initerations_gaussian6_vt_select_0_r_data1 <= 1'bx;
            SR_SE_i_next_initerations_gaussian6_vt_select_0_r_data2 <= 1'bx;
            SR_SE_i_next_initerations_gaussian6_vt_select_0_r_data3 <= 2'bxx;
        end
        else
        begin
            // Valid
            SR_SE_i_next_initerations_gaussian6_vt_select_0_r_valid <= SE_i_next_initerations_gaussian6_vt_select_0_backStall & (SR_SE_i_next_initerations_gaussian6_vt_select_0_r_valid | SR_SE_i_next_initerations_gaussian6_vt_select_0_i_valid);

            if (SR_SE_i_next_initerations_gaussian6_vt_select_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_next_initerations_gaussian6_vt_select_0_r_data0 <= i_last_initeration_gaussian8_sel_x_b;
                SR_SE_i_next_initerations_gaussian6_vt_select_0_r_data1 <= $unsigned(redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_q);
                SR_SE_i_next_initerations_gaussian6_vt_select_0_r_data2 <= $unsigned(redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_q);
                SR_SE_i_next_initerations_gaussian6_vt_select_0_r_data3 <= i_next_initerations_gaussian6_vt_join_q;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_next_initerations_gaussian6_vt_select_0_and0 = SE_out_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_V1;
    assign SR_SE_i_next_initerations_gaussian6_vt_select_0_i_valid = SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_V0 & SR_SE_i_next_initerations_gaussian6_vt_select_0_and0;
    // Stall signal propagation
    assign SR_SE_i_next_initerations_gaussian6_vt_select_0_backStall = SR_SE_i_next_initerations_gaussian6_vt_select_0_r_valid | ~ (SR_SE_i_next_initerations_gaussian6_vt_select_0_i_valid);

    // Valid
    assign SR_SE_i_next_initerations_gaussian6_vt_select_0_V = SR_SE_i_next_initerations_gaussian6_vt_select_0_r_valid == 1'b1 ? SR_SE_i_next_initerations_gaussian6_vt_select_0_r_valid : SR_SE_i_next_initerations_gaussian6_vt_select_0_i_valid;

    // Data0
    assign SR_SE_i_next_initerations_gaussian6_vt_select_0_D0 = SR_SE_i_next_initerations_gaussian6_vt_select_0_r_valid == 1'b1 ? SR_SE_i_next_initerations_gaussian6_vt_select_0_r_data0 : i_last_initeration_gaussian8_sel_x_b;
    // Data1
    assign SR_SE_i_next_initerations_gaussian6_vt_select_0_D1 = SR_SE_i_next_initerations_gaussian6_vt_select_0_r_valid == 1'b1 ? SR_SE_i_next_initerations_gaussian6_vt_select_0_r_data1 : redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_q;
    // Data2
    assign SR_SE_i_next_initerations_gaussian6_vt_select_0_D2 = SR_SE_i_next_initerations_gaussian6_vt_select_0_r_valid == 1'b1 ? SR_SE_i_next_initerations_gaussian6_vt_select_0_r_data2 : redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_q;
    // Data3
    assign SR_SE_i_next_initerations_gaussian6_vt_select_0_D3 = SR_SE_i_next_initerations_gaussian6_vt_select_0_r_valid == 1'b1 ? SR_SE_i_next_initerations_gaussian6_vt_select_0_r_data3 : i_next_initerations_gaussian6_vt_join_q;

    // SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0(STALLENABLE,720)
    // Valid signal propagation
    assign SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_V0 = SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_R_v_0;
    assign SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_V1 = SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_R_v_1;
    assign SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_V2 = SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_R_v_2;
    assign SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_V3 = SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_R_v_3;
    // Stall signal propagation
    assign SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_s_tv_0 = SR_SE_i_next_initerations_gaussian6_vt_select_0_backStall & SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_R_v_0;
    assign SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_s_tv_1 = SE_in_i_llvm_fpga_push_i1_memdep_phi4_push14_gaussian36_backStall & SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_R_v_1;
    assign SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_s_tv_2 = SE_in_i_llvm_fpga_push_i1_notcmp3546_push20_gaussian57_backStall & SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_R_v_2;
    assign SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_s_tv_3 = SE_in_i_llvm_fpga_push_i1_push19_gaussian55_backStall & SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_R_v_3;
    // Backward Enable generation
    assign SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_or0 = SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_s_tv_0;
    assign SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_or1 = SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_s_tv_1 | SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_or0;
    assign SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_or2 = SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_s_tv_2 | SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_or1;
    assign SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_backEN = ~ (SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_s_tv_3 | SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_or2);
    // Determine whether to write valid data into the first register stage
    assign SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_v_s_0 = SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_backEN & SR_SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_V;
    // Backward Stall generation
    assign SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_backStall = ~ (SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_R_v_0 <= 1'b0;
            SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_R_v_1 <= 1'b0;
            SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_R_v_2 <= 1'b0;
            SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_R_v_3 <= 1'b0;
        end
        else
        begin
            if (SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_backEN == 1'b0)
            begin
                SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_R_v_0 <= SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_R_v_0 & SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_s_tv_0;
            end
            else
            begin
                SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_R_v_0 <= SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_v_s_0;
            end

            if (SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_backEN == 1'b0)
            begin
                SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_R_v_1 <= SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_R_v_1 & SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_s_tv_1;
            end
            else
            begin
                SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_R_v_1 <= SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_v_s_0;
            end

            if (SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_backEN == 1'b0)
            begin
                SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_R_v_2 <= SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_R_v_2 & SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_s_tv_2;
            end
            else
            begin
                SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_R_v_2 <= SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_v_s_0;
            end

            if (SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_backEN == 1'b0)
            begin
                SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_R_v_3 <= SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_R_v_3 & SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_s_tv_3;
            end
            else
            begin
                SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_R_v_3 <= SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_v_s_0;
            end

        end
    end

    // SR_SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0(STALLREG,962)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_r_valid <= 1'b0;
            SR_SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_r_valid <= SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_backStall & (SR_SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_r_valid | SR_SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_i_valid);

            if (SR_SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_r_data0 <= $unsigned(redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_i_valid = SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_V1;
    // Stall signal propagation
    assign SR_SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_backStall = SR_SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_r_valid | ~ (SR_SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_i_valid);

    // Valid
    assign SR_SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_V = SR_SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_r_valid == 1'b1 ? SR_SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_r_valid : SR_SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_i_valid;

    assign SR_SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_D0 = SR_SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_r_valid == 1'b1 ? SR_SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_r_data0 : redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_q;

    // SE_in_i_llvm_fpga_push_i32_add44_push17_gaussian53(STALLENABLE,616)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i32_add44_push17_gaussian53_V0 = SE_in_i_llvm_fpga_push_i32_add44_push17_gaussian53_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i32_add44_push17_gaussian53_backStall = i_llvm_fpga_push_i32_add44_push17_gaussian53_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i32_add44_push17_gaussian53_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i32_add44_push17_gaussian53_and0 = SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_V0;
    assign SE_in_i_llvm_fpga_push_i32_add44_push17_gaussian53_wireValid = SE_out_i_llvm_fpga_pop_i32_add44_pop17_gaussian52_V1 & SE_in_i_llvm_fpga_push_i32_add44_push17_gaussian53_and0;

    // SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1(STALLENABLE,719)
    // Valid signal propagation
    assign SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_V0 = SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_R_v_0;
    assign SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_V1 = SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_R_v_1;
    // Stall signal propagation
    assign SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_s_tv_0 = SE_in_i_llvm_fpga_push_i32_add44_push17_gaussian53_backStall & SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_R_v_0;
    assign SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_s_tv_1 = SR_SE_redist20_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_3_0_backStall & SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_R_v_1;
    // Backward Enable generation
    assign SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_or0 = SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_s_tv_0;
    assign SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_backEN = ~ (SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_s_tv_1 | SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_v_s_0 = SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_backEN & SR_SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_V;
    // Backward Stall generation
    assign SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_backStall = ~ (SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_R_v_0 <= 1'b0;
            SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_backEN == 1'b0)
            begin
                SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_R_v_0 <= SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_R_v_0 & SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_s_tv_0;
            end
            else
            begin
                SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_R_v_0 <= SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_v_s_0;
            end

            if (SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_backEN == 1'b0)
            begin
                SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_R_v_1 <= SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_R_v_1 & SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_s_tv_1;
            end
            else
            begin
                SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_R_v_1 <= SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_v_s_0;
            end

        end
    end

    // SR_SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1(STALLREG,938)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_r_valid <= 1'b0;
            SR_SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_r_valid <= SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_backStall & (SR_SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_r_valid | SR_SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_i_valid);

            if (SR_SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_r_data0 <= $unsigned(redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_i_valid = SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_0_V0;
    // Stall signal propagation
    assign SR_SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_backStall = SR_SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_r_valid | ~ (SR_SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_i_valid);

    // Valid
    assign SR_SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_V = SR_SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_r_valid == 1'b1 ? SR_SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_r_valid : SR_SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_i_valid;

    assign SR_SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_D0 = SR_SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_r_valid == 1'b1 ? SR_SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_r_data0 : redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_0_q;

    // SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_0(STALLENABLE,718)
    // Valid signal propagation
    assign SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_0_V0 = SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_0_R_v_0;
    // Stall signal propagation
    assign SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_0_s_tv_0 = SR_SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_1_backStall & SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_0_R_v_0;
    // Backward Enable generation
    assign SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_0_backEN = ~ (SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_0_v_s_0 = SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_0_backEN & SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_V6;
    // Backward Stall generation
    assign SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_0_backStall = ~ (SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_0_backEN == 1'b0)
            begin
                SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_0_R_v_0 <= SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_0_R_v_0 & SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_0_s_tv_0;
            end
            else
            begin
                SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_0_R_v_0 <= SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_0_v_s_0;
            end

        end
    end

    // SE_out_redist12_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_68_fifo(STALLENABLE,698)
    // Valid signal propagation
    assign SE_out_redist12_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_68_fifo_V0 = SE_out_redist12_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_68_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist12_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_68_fifo_backStall = i_llvm_fpga_push_i32_mul_add1645_push18_gaussian16_out_stall_out | ~ (SE_out_redist12_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_68_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist12_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_68_fifo_and0 = redist12_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_68_fifo_valid_out;
    assign SE_out_redist12_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_68_fifo_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_V4 & SE_out_redist12_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_68_fifo_and0;

    // SE_out_redist14_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_68_fifo(STALLENABLE,705)
    // Valid signal propagation
    assign SE_out_redist14_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_68_fifo_V0 = SE_out_redist14_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_68_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist14_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_68_fifo_backStall = i_llvm_fpga_push_i32_k_044_push13_gaussian38_out_stall_out | ~ (SE_out_redist14_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_68_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist14_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_68_fifo_and0 = redist14_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_68_fifo_valid_out;
    assign SE_out_redist14_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_68_fifo_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_V3 & SE_out_redist14_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_68_fifo_and0;

    // redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_65_fifo(STALLFIFO,382)
    assign redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_65_fifo_valid_in = SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_V0;
    assign redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_65_fifo_stall_in = SE_out_redist26_i_first_cleanup_xor_gaussian2_q_65_fifo_backStall;
    assign redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_65_fifo_data_in = bubble_select_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_b;
    assign redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_65_fifo_valid_in_bitsignaltemp = redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_65_fifo_valid_in[0];
    assign redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_65_fifo_stall_in_bitsignaltemp = redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_65_fifo_stall_in[0];
    assign redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_65_fifo_valid_out[0] = redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_65_fifo_valid_out_bitsignaltemp;
    assign redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_65_fifo_stall_out[0] = redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_65_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(66),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(2),
        .IMPL("ram")
    ) theredist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_65_fifo (
        .valid_in(redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_65_fifo_valid_in_bitsignaltemp),
        .stall_in(redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_65_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_b),
        .valid_out(redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_65_fifo_valid_out_bitsignaltemp),
        .stall_out(redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_65_fifo_stall_out_bitsignaltemp),
        .data_out(redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_65_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist26_i_first_cleanup_xor_gaussian2_q_65_fifo(STALLFIFO,408)
    assign redist26_i_first_cleanup_xor_gaussian2_q_65_fifo_valid_in = SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_V3;
    assign redist26_i_first_cleanup_xor_gaussian2_q_65_fifo_stall_in = SE_out_redist26_i_first_cleanup_xor_gaussian2_q_65_fifo_backStall;
    assign redist26_i_first_cleanup_xor_gaussian2_q_65_fifo_data_in = i_first_cleanup_xor_gaussian2_q;
    assign redist26_i_first_cleanup_xor_gaussian2_q_65_fifo_valid_in_bitsignaltemp = redist26_i_first_cleanup_xor_gaussian2_q_65_fifo_valid_in[0];
    assign redist26_i_first_cleanup_xor_gaussian2_q_65_fifo_stall_in_bitsignaltemp = redist26_i_first_cleanup_xor_gaussian2_q_65_fifo_stall_in[0];
    assign redist26_i_first_cleanup_xor_gaussian2_q_65_fifo_valid_out[0] = redist26_i_first_cleanup_xor_gaussian2_q_65_fifo_valid_out_bitsignaltemp;
    assign redist26_i_first_cleanup_xor_gaussian2_q_65_fifo_stall_out[0] = redist26_i_first_cleanup_xor_gaussian2_q_65_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(66),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist26_i_first_cleanup_xor_gaussian2_q_65_fifo (
        .valid_in(redist26_i_first_cleanup_xor_gaussian2_q_65_fifo_valid_in_bitsignaltemp),
        .stall_in(redist26_i_first_cleanup_xor_gaussian2_q_65_fifo_stall_in_bitsignaltemp),
        .data_in(i_first_cleanup_xor_gaussian2_q),
        .valid_out(redist26_i_first_cleanup_xor_gaussian2_q_65_fifo_valid_out_bitsignaltemp),
        .stall_out(redist26_i_first_cleanup_xor_gaussian2_q_65_fifo_stall_out_bitsignaltemp),
        .data_out(redist26_i_first_cleanup_xor_gaussian2_q_65_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist26_i_first_cleanup_xor_gaussian2_q_65_fifo(STALLENABLE,735)
    // Valid signal propagation
    assign SE_out_redist26_i_first_cleanup_xor_gaussian2_q_65_fifo_V0 = SE_out_redist26_i_first_cleanup_xor_gaussian2_q_65_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist26_i_first_cleanup_xor_gaussian2_q_65_fifo_backStall = i_llvm_fpga_push_i2_cleanups_push16_gaussian50_out_stall_out | ~ (SE_out_redist26_i_first_cleanup_xor_gaussian2_q_65_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist26_i_first_cleanup_xor_gaussian2_q_65_fifo_and0 = redist26_i_first_cleanup_xor_gaussian2_q_65_fifo_valid_out;
    assign SE_out_redist26_i_first_cleanup_xor_gaussian2_q_65_fifo_and1 = SE_i_unnamed_gaussian45_V2 & SE_out_redist26_i_first_cleanup_xor_gaussian2_q_65_fifo_and0;
    assign SE_out_redist26_i_first_cleanup_xor_gaussian2_q_65_fifo_and2 = redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_65_fifo_valid_out & SE_out_redist26_i_first_cleanup_xor_gaussian2_q_65_fifo_and1;
    assign SE_out_redist26_i_first_cleanup_xor_gaussian2_q_65_fifo_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_V2 & SE_out_redist26_i_first_cleanup_xor_gaussian2_q_65_fifo_and2;

    // SE_out_redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_68_fifo(STALLENABLE,717)
    // Valid signal propagation
    assign SE_out_redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_68_fifo_V0 = SE_out_redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_68_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_68_fifo_backStall = i_llvm_fpga_push_i1_memdep_phi_pop1047_push21_gaussian22_out_stall_out | ~ (SE_out_redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_68_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_68_fifo_and0 = redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_68_fifo_valid_out;
    assign SE_out_redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_68_fifo_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_V1 & SE_out_redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_68_fifo_and0;

    // bubble_out_i_llvm_fpga_pipeline_keep_going_gaussian4_1_reg(STALLFIFO,928)
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_gaussian4_1_reg_valid_in = SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_V0;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_gaussian4_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_backStall;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_gaussian4_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pipeline_keep_going_gaussian4_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_gaussian4_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pipeline_keep_going_gaussian4_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_gaussian4_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pipeline_keep_going_gaussian4_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_gaussian4_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pipeline_keep_going_gaussian4_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(4),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pipeline_keep_going_gaussian4_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pipeline_keep_going_gaussian4_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pipeline_keep_going_gaussian4_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pipeline_keep_going_gaussian4_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pipeline_keep_going_gaussian4_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4(STALLENABLE,579)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_fromReg3 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_fromReg4 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_fromReg5 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_fromReg6 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_fromReg0 <= SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_fromReg1 <= SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_fromReg2 <= SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_fromReg3 <= SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_toReg3;
            // Successor 4
            SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_fromReg4 <= SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_toReg4;
            // Successor 5
            SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_fromReg5 <= SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_toReg5;
            // Successor 6
            SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_fromReg6 <= SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_toReg6;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_consumed0 = (~ (bubble_out_i_llvm_fpga_pipeline_keep_going_gaussian4_1_reg_stall_out) & SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_fromReg0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_consumed1 = (~ (SE_out_redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_68_fifo_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_fromReg1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_consumed2 = (~ (SE_out_redist26_i_first_cleanup_xor_gaussian2_q_65_fifo_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_fromReg2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_consumed3 = (~ (SE_out_redist14_i_llvm_fpga_pop_i32_k_044_pop13_gaussian14_out_data_out_68_fifo_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_fromReg3;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_consumed4 = (~ (SE_out_redist12_i_llvm_fpga_pop_i32_mul_add1645_pop18_gaussian15_out_data_out_68_fifo_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_fromReg4;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_consumed5 = (~ (SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push12_gaussian43_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_fromReg5;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_consumed6 = (~ (SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_2_0_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_fromReg6;
    // Consuming
    assign SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_StallValid = SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_backStall & SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_wireValid;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_toReg0 = SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_consumed0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_toReg1 = SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_consumed1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_toReg2 = SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_consumed2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_toReg3 = SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_consumed3;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_toReg4 = SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_consumed4;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_toReg5 = SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_consumed5;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_toReg6 = SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_consumed6;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_or0 = SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_consumed0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_or1 = SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_consumed1 & SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_or0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_or2 = SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_consumed2 & SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_or1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_or3 = SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_consumed3 & SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_or2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_or4 = SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_consumed4 & SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_or3;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_or5 = SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_consumed5 & SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_or4;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_wireStall = ~ (SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_consumed6 & SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_or5);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_backStall = SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_V0 = SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_fromReg0);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_V1 = SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_fromReg1);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_V2 = SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_fromReg2);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_V3 = SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_fromReg3);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_V4 = SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_fromReg4);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_V5 = SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_fromReg5);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_V6 = SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_fromReg6);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_wireValid = i_llvm_fpga_pipeline_keep_going_gaussian4_out_valid_out;

    // SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push12_gaussian43(STALLENABLE,622)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push12_gaussian43_V0 = SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push12_gaussian43_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push12_gaussian43_backStall = i_llvm_fpga_push_i6_fpga_indvars_iv_push12_gaussian43_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push12_gaussian43_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push12_gaussian43_and0 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_V2;
    assign SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push12_gaussian43_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_V5 & SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push12_gaussian43_and0;

    // SE_i_unnamed_gaussian45(STALLENABLE,633)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_unnamed_gaussian45_fromReg0 <= '0;
            SE_i_unnamed_gaussian45_fromReg1 <= '0;
            SE_i_unnamed_gaussian45_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_unnamed_gaussian45_fromReg0 <= SE_i_unnamed_gaussian45_toReg0;
            // Successor 1
            SE_i_unnamed_gaussian45_fromReg1 <= SE_i_unnamed_gaussian45_toReg1;
            // Successor 2
            SE_i_unnamed_gaussian45_fromReg2 <= SE_i_unnamed_gaussian45_toReg2;
        end
    end
    // Input Stall processing
    assign SE_i_unnamed_gaussian45_consumed0 = (~ (SE_in_i_llvm_fpga_push_i1_notexitcond_gaussian47_backStall) & SE_i_unnamed_gaussian45_wireValid) | SE_i_unnamed_gaussian45_fromReg0;
    assign SE_i_unnamed_gaussian45_consumed1 = (~ (SR_SE_i_masked_gaussian51_backStall) & SE_i_unnamed_gaussian45_wireValid) | SE_i_unnamed_gaussian45_fromReg1;
    assign SE_i_unnamed_gaussian45_consumed2 = (~ (SE_out_redist26_i_first_cleanup_xor_gaussian2_q_65_fifo_backStall) & SE_i_unnamed_gaussian45_wireValid) | SE_i_unnamed_gaussian45_fromReg2;
    // Consuming
    assign SE_i_unnamed_gaussian45_StallValid = SE_i_unnamed_gaussian45_backStall & SE_i_unnamed_gaussian45_wireValid;
    assign SE_i_unnamed_gaussian45_toReg0 = SE_i_unnamed_gaussian45_StallValid & SE_i_unnamed_gaussian45_consumed0;
    assign SE_i_unnamed_gaussian45_toReg1 = SE_i_unnamed_gaussian45_StallValid & SE_i_unnamed_gaussian45_consumed1;
    assign SE_i_unnamed_gaussian45_toReg2 = SE_i_unnamed_gaussian45_StallValid & SE_i_unnamed_gaussian45_consumed2;
    // Backward Stall generation
    assign SE_i_unnamed_gaussian45_or0 = SE_i_unnamed_gaussian45_consumed0;
    assign SE_i_unnamed_gaussian45_or1 = SE_i_unnamed_gaussian45_consumed1 & SE_i_unnamed_gaussian45_or0;
    assign SE_i_unnamed_gaussian45_wireStall = ~ (SE_i_unnamed_gaussian45_consumed2 & SE_i_unnamed_gaussian45_or1);
    assign SE_i_unnamed_gaussian45_backStall = SE_i_unnamed_gaussian45_wireStall;
    // Valid signal propagation
    assign SE_i_unnamed_gaussian45_V0 = SE_i_unnamed_gaussian45_wireValid & ~ (SE_i_unnamed_gaussian45_fromReg0);
    assign SE_i_unnamed_gaussian45_V1 = SE_i_unnamed_gaussian45_wireValid & ~ (SE_i_unnamed_gaussian45_fromReg1);
    assign SE_i_unnamed_gaussian45_V2 = SE_i_unnamed_gaussian45_wireValid & ~ (SE_i_unnamed_gaussian45_fromReg2);
    // Computing multiple Valid(s)
    assign SE_i_unnamed_gaussian45_and0 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_V1;
    assign SE_i_unnamed_gaussian45_wireValid = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24525_gaussian44_V1 & SE_i_unnamed_gaussian45_and0;

    // bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_reg(STALLFIFO,930)
    assign bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_reg_valid_in = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_V0;
    assign bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_backStall;
    assign bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(4),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39(STALLENABLE,599)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_fromReg0 <= SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_fromReg1 <= SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_fromReg2 <= SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_consumed0 = (~ (bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_reg_stall_out) & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_wireValid) | SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_consumed1 = (~ (SE_i_unnamed_gaussian45_backStall) & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_wireValid) | SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_consumed2 = (~ (SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push12_gaussian43_backStall) & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_wireValid) | SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_fromReg2;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_StallValid = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_backStall & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_wireValid;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_toReg0 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_StallValid & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_consumed0;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_toReg1 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_StallValid & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_consumed1;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_toReg2 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_StallValid & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_consumed2;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_or0 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_consumed0;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_or1 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_consumed1 & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_or0;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_wireStall = ~ (SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_consumed2 & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_or1);
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_backStall = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_V0 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_wireValid & ~ (SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_V1 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_wireValid & ~ (SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_V2 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_wireValid & ~ (SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_wireValid = i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_out_valid_out;

    // SE_out_i_llvm_fpga_push_i6_fpga_indvars_iv_push12_gaussian43(STALLENABLE,623)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i6_fpga_indvars_iv_push12_gaussian43_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i6_fpga_indvars_iv_push12_gaussian43_wireValid = i_llvm_fpga_push_i6_fpga_indvars_iv_push12_gaussian43_out_valid_out;

    // c_i6_164(CONSTANT,53)
    assign c_i6_164_q = $unsigned(6'b111111);

    // i_fpga_indvars_iv_next_gaussian42(ADD,68)@70
    assign i_fpga_indvars_iv_next_gaussian42_a = {1'b0, bubble_select_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_b};
    assign i_fpga_indvars_iv_next_gaussian42_b = {1'b0, c_i6_164_q};
    assign i_fpga_indvars_iv_next_gaussian42_o = $unsigned(i_fpga_indvars_iv_next_gaussian42_a) + $unsigned(i_fpga_indvars_iv_next_gaussian42_b);
    assign i_fpga_indvars_iv_next_gaussian42_q = i_fpga_indvars_iv_next_gaussian42_o[6:0];

    // bgTrunc_i_fpga_indvars_iv_next_gaussian42_sel_x(BITSELECT,4)@70
    assign bgTrunc_i_fpga_indvars_iv_next_gaussian42_sel_x_b = i_fpga_indvars_iv_next_gaussian42_q[5:0];

    // i_llvm_fpga_push_i6_fpga_indvars_iv_push12_gaussian43(BLACKBOX,102)@70
    // in in_stall_in@20000000
    // out out_data_out@71
    // out out_feedback_out_12@20000000
    // out out_feedback_valid_out_12@20000000
    // out out_stall_out@20000000
    // out out_valid_out@71
    gaussian_i_llvm_fpga_push_i6_fpga_indvars_iv_push12_0 thei_llvm_fpga_push_i6_fpga_indvars_iv_push12_gaussian43 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_gaussian42_sel_x_b),
        .in_feedback_stall_in_12(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_out_feedback_stall_out_12),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_gaussian4_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i6_fpga_indvars_iv_push12_gaussian43_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push12_gaussian43_V0),
        .out_data_out(),
        .out_feedback_out_12(i_llvm_fpga_push_i6_fpga_indvars_iv_push12_gaussian43_out_feedback_out_12),
        .out_feedback_valid_out_12(i_llvm_fpga_push_i6_fpga_indvars_iv_push12_gaussian43_out_feedback_valid_out_12),
        .out_stall_out(i_llvm_fpga_push_i6_fpga_indvars_iv_push12_gaussian43_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i6_fpga_indvars_iv_push12_gaussian43_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i6_1762(CONSTANT,54)
    assign c_i6_1762_q = $unsigned(6'b010001);

    // i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39(BLACKBOX,90)@69
    // in in_stall_in@20000000
    // out out_data_out@70
    // out out_feedback_stall_out_12@20000000
    // out out_stall_out@20000000
    // out out_valid_out@70
    gaussian_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_0 thei_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39 (
        .in_data_in(c_i6_1762_q),
        .in_dir(SR_SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_D1),
        .in_feedback_in_12(i_llvm_fpga_push_i6_fpga_indvars_iv_push12_gaussian43_out_feedback_out_12),
        .in_feedback_valid_in_12(i_llvm_fpga_push_i6_fpga_indvars_iv_push12_gaussian43_out_feedback_valid_out_12),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_backStall),
        .in_valid_in(SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_V2),
        .out_data_out(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_out_data_out),
        .out_feedback_stall_out_12(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_out_feedback_stall_out_12),
        .out_stall_out(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_gaussian4(BLACKBOX,80)@69
    // in in_stall_in@20000000
    // out out_data_out@70
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    // out out_stall_out@20000000
    // out out_valid_out@70
    gaussian_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_gaussian4 (
        .in_data_in(SR_SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_D0),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_gaussian9_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_gaussian9_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_gaussian47_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_gaussian47_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_backStall),
        .in_valid_in(SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_V1),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_gaussian4_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_gaussian4_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_gaussian4_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_gaussian4_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_gaussian4_out_pipeline_valid_out),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_gaussian4_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_gaussian4_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_0(STALLENABLE,743)
    // Valid signal propagation
    assign SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_0_V0 = SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_0_R_v_0;
    // Stall signal propagation
    assign SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_0_s_tv_0 = SR_SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_1_backStall & SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_0_R_v_0;
    // Backward Enable generation
    assign SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_0_backEN = ~ (SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_0_v_s_0 = SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_0_backEN & SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_V0;
    // Backward Stall generation
    assign SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_0_backStall = ~ (SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_0_backEN == 1'b0)
            begin
                SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_0_R_v_0 <= SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_0_R_v_0 & SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_0_s_tv_0;
            end
            else
            begin
                SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_0_R_v_0 <= SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_0_v_s_0;
            end

        end
    end

    // SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo(STALLENABLE,742)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_fromReg0 <= '0;
            SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_fromReg1 <= '0;
            SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_fromReg0 <= SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_toReg0;
            // Successor 1
            SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_fromReg1 <= SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_toReg1;
            // Successor 2
            SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_fromReg2 <= SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_consumed0 = (~ (SE_redist31_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_70_0_backStall) & SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_wireValid) | SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_fromReg0;
    assign SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_consumed1 = (~ (i_llvm_fpga_pipeline_keep_going_gaussian4_out_stall_out) & SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_wireValid) | SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_fromReg1;
    assign SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_consumed2 = (~ (i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_out_stall_out) & SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_wireValid) | SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_fromReg2;
    // Consuming
    assign SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_StallValid = SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_backStall & SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_wireValid;
    assign SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_toReg0 = SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_StallValid & SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_consumed0;
    assign SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_toReg1 = SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_StallValid & SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_consumed1;
    assign SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_toReg2 = SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_StallValid & SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_consumed2;
    // Backward Stall generation
    assign SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_or0 = SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_consumed0;
    assign SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_or1 = SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_consumed1 & SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_or0;
    assign SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_wireStall = ~ (SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_consumed2 & SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_or1);
    assign SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_backStall = SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_V0 = SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_wireValid & ~ (SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_fromReg0);
    assign SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_V1 = SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_wireValid & ~ (SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_fromReg1);
    assign SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_V2 = SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_wireValid & ~ (SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_wireValid = SR_SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_V;

    // SR_SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo(STALLREG,936)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_r_valid <= 1'b0;
            SR_SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_r_data0 <= 1'bx;
            SR_SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_r_data1 <= 1'bx;
            SR_SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_r_valid <= SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_backStall & (SR_SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_r_valid | SR_SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_i_valid);

            if (SR_SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_r_data0 <= $unsigned(bubble_select_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_b);
                SR_SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_r_data1 <= $unsigned(bubble_select_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_b);
                SR_SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_r_data2 <= $unsigned(bubble_select_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_i_valid = redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_valid_out;
    // Stall signal propagation
    assign SR_SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_backStall = SR_SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_r_valid | ~ (SR_SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_i_valid);

    // Valid
    assign SR_SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_V = SR_SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_r_valid == 1'b1 ? SR_SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_r_valid : SR_SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_i_valid;

    // Data0
    assign SR_SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_D0 = SR_SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_r_valid == 1'b1 ? SR_SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_r_data0 : bubble_select_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_b;
    // Data1
    assign SR_SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_D1 = SR_SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_r_valid == 1'b1 ? SR_SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_r_data1 : bubble_select_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_b;
    // Data2
    assign SR_SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_D2 = SR_SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_r_valid == 1'b1 ? SR_SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_r_data2 : bubble_select_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_b;

    // redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo(STALLFIFO,413)
    assign redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_valid_in = SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_V2;
    assign redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_stall_in = SR_SE_out_redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_backStall;
    assign redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_data_in = redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_q;
    assign redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_valid_in_bitsignaltemp = redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_valid_in[0];
    assign redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_stall_in_bitsignaltemp = redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_stall_in[0];
    assign redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_valid_out[0] = redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_valid_out_bitsignaltemp;
    assign redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_stall_out[0] = redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(66),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo (
        .valid_in(redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_valid_in_bitsignaltemp),
        .stall_in(redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_stall_in_bitsignaltemp),
        .data_in(redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_q),
        .valid_out(redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_valid_out_bitsignaltemp),
        .stall_out(redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_stall_out_bitsignaltemp),
        .data_out(redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24(BLACKBOX,81)@4
    // in in_stall_in@20000000
    // out out_data_out@5
    // out out_feedback_stall_out_14@20000000
    // out out_stall_out@20000000
    // out out_valid_out@5
    gaussian_i_llvm_fpga_pop_i1_memdep_phi4_pop14_0 thei_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24 (
        .in_data_in(GND_q),
        .in_dir(redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_q),
        .in_feedback_in_14(i_llvm_fpga_push_i1_memdep_phi4_push14_gaussian36_out_feedback_out_14),
        .in_feedback_valid_in_14(i_llvm_fpga_push_i1_memdep_phi4_push14_gaussian36_out_feedback_valid_out_14),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_backStall),
        .in_valid_in(SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_out_data_out),
        .out_feedback_stall_out_14(i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_out_feedback_stall_out_14),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_1(REG,411)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_backEN == 1'b1)
        begin
            redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_q <= $unsigned(SR_SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_D0);
        end
    end

    // SR_SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2(STALLREG,935)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_r_valid <= 1'b0;
            SR_SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_r_valid <= SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_backStall & (SR_SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_r_valid | SR_SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_i_valid);

            if (SR_SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_r_data0 <= $unsigned(redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_i_valid = SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_V0;
    // Stall signal propagation
    assign SR_SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_backStall = SR_SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_r_valid | ~ (SR_SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_i_valid);

    // Valid
    assign SR_SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_V = SR_SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_r_valid == 1'b1 ? SR_SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_r_valid : SR_SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_i_valid;

    assign SR_SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_D0 = SR_SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_r_valid == 1'b1 ? SR_SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_r_data0 : redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_q;

    // SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2(STALLENABLE,740)
    // Valid signal propagation
    assign SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_V0 = SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_R_v_0;
    assign SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_V1 = SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_R_v_1;
    assign SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_V2 = SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_R_v_2;
    // Stall signal propagation
    assign SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_s_tv_0 = i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian24_out_stall_out & SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_R_v_0;
    assign SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_s_tv_1 = i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_stall_out & SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_R_v_1;
    assign SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_s_tv_2 = redist30_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_stall_out & SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_R_v_2;
    // Backward Enable generation
    assign SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_or0 = SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_s_tv_0;
    assign SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_or1 = SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_s_tv_1 | SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_or0;
    assign SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_backEN = ~ (SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_s_tv_2 | SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_v_s_0 = SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_backEN & SR_SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_V;
    // Backward Stall generation
    assign SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_backStall = ~ (SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_R_v_0 <= 1'b0;
            SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_R_v_1 <= 1'b0;
            SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_backEN == 1'b0)
            begin
                SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_R_v_0 <= SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_R_v_0 & SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_s_tv_0;
            end
            else
            begin
                SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_R_v_0 <= SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_v_s_0;
            end

            if (SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_backEN == 1'b0)
            begin
                SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_R_v_1 <= SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_R_v_1 & SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_s_tv_1;
            end
            else
            begin
                SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_R_v_1 <= SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_v_s_0;
            end

            if (SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_backEN == 1'b0)
            begin
                SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_R_v_2 <= SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_R_v_2 & SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_s_tv_2;
            end
            else
            begin
                SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_R_v_2 <= SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0(STALLENABLE,589)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_fromReg0 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_fromReg1 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_fromReg2 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_fromReg3 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_consumed0 = (~ (redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_65_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_consumed1 = (~ (SE_i_unnamed_gaussian11_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_consumed2 = (~ (redist28_i_first_cleanup_gaussian1_sel_x_b_65_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_fromReg2;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_consumed3 = (~ (redist26_i_first_cleanup_xor_gaussian2_q_65_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_fromReg3;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_StallValid = SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_backStall & SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_wireValid;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_toReg0 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_consumed0;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_toReg1 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_consumed1;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_toReg2 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_consumed2;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_toReg3 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_consumed3;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_or0 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_consumed0;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_or1 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_consumed1 & SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_or0;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_or2 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_consumed2 & SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_or1;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_wireStall = ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_consumed3 & SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_or2);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_backStall = SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_V0 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_V1 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_V2 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_fromReg2);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_V3 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_wireValid = i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_valid_out;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_i_llvm_fpga_push_i2_cleanups_push16_gaussian50(STALLENABLE,613)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i2_cleanups_push16_gaussian50_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i2_cleanups_push16_gaussian50_wireValid = i_llvm_fpga_push_i2_cleanups_push16_gaussian50_out_valid_out;

    // leftShiftStage0Idx1Rng1_uid218_i_cleanups_shl_gaussian0_shift_x(BITSELECT,217)@70
    assign leftShiftStage0Idx1Rng1_uid218_i_cleanups_shl_gaussian0_shift_x_in = bubble_select_redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_65_fifo_b[0:0];
    assign leftShiftStage0Idx1Rng1_uid218_i_cleanups_shl_gaussian0_shift_x_b = leftShiftStage0Idx1Rng1_uid218_i_cleanups_shl_gaussian0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid219_i_cleanups_shl_gaussian0_shift_x(BITJOIN,218)@70
    assign leftShiftStage0Idx1_uid219_i_cleanups_shl_gaussian0_shift_x_q = {leftShiftStage0Idx1Rng1_uid218_i_cleanups_shl_gaussian0_shift_x_b, GND_q};

    // leftShiftStage0_uid221_i_cleanups_shl_gaussian0_shift_x(MUX,220)@70
    assign leftShiftStage0_uid221_i_cleanups_shl_gaussian0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid221_i_cleanups_shl_gaussian0_shift_x_s or bubble_select_redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_65_fifo_b or leftShiftStage0Idx1_uid219_i_cleanups_shl_gaussian0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid221_i_cleanups_shl_gaussian0_shift_x_s)
            1'b0 : leftShiftStage0_uid221_i_cleanups_shl_gaussian0_shift_x_q = bubble_select_redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_65_fifo_b;
            1'b1 : leftShiftStage0_uid221_i_cleanups_shl_gaussian0_shift_x_q = leftShiftStage0Idx1_uid219_i_cleanups_shl_gaussian0_shift_x_q;
            default : leftShiftStage0_uid221_i_cleanups_shl_gaussian0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl_gaussian3_vt_select_1(BITSELECT,63)@70
    assign i_cleanups_shl_gaussian3_vt_select_1_b = leftShiftStage0_uid221_i_cleanups_shl_gaussian0_shift_x_q[1:1];

    // i_cleanups_shl_gaussian3_vt_join(BITJOIN,62)@70
    assign i_cleanups_shl_gaussian3_vt_join_q = {i_cleanups_shl_gaussian3_vt_select_1_b, GND_q};

    // bubble_join_redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_65_fifo(BITJOIN,519)
    assign bubble_join_redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_65_fifo_q = redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_65_fifo_data_out;

    // bubble_select_redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_65_fifo(BITSELECT,520)
    assign bubble_select_redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_65_fifo_b = $unsigned(bubble_join_redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_65_fifo_q[1:0]);

    // bubble_join_redist26_i_first_cleanup_xor_gaussian2_q_65_fifo(BITJOIN,525)
    assign bubble_join_redist26_i_first_cleanup_xor_gaussian2_q_65_fifo_q = redist26_i_first_cleanup_xor_gaussian2_q_65_fifo_data_out;

    // bubble_select_redist26_i_first_cleanup_xor_gaussian2_q_65_fifo(BITSELECT,526)
    assign bubble_select_redist26_i_first_cleanup_xor_gaussian2_q_65_fifo_b = $unsigned(bubble_join_redist26_i_first_cleanup_xor_gaussian2_q_65_fifo_q[0:0]);

    // i_or_gaussian48(LOGICAL,111)@70
    assign i_or_gaussian48_q = i_notcmp_gaussian46_q | bubble_select_redist26_i_first_cleanup_xor_gaussian2_q_65_fifo_b;

    // i_next_cleanups_gaussian49(MUX,106)@70
    assign i_next_cleanups_gaussian49_s = i_or_gaussian48_q;
    always @(i_next_cleanups_gaussian49_s or bubble_select_redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_65_fifo_b or i_cleanups_shl_gaussian3_vt_join_q)
    begin
        unique case (i_next_cleanups_gaussian49_s)
            1'b0 : i_next_cleanups_gaussian49_q = bubble_select_redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_65_fifo_b;
            1'b1 : i_next_cleanups_gaussian49_q = i_cleanups_shl_gaussian3_vt_join_q;
            default : i_next_cleanups_gaussian49_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups_push16_gaussian50(BLACKBOX,97)@70
    // in in_stall_in@20000000
    // out out_data_out@71
    // out out_feedback_out_16@20000000
    // out out_feedback_valid_out_16@20000000
    // out out_stall_out@20000000
    // out out_valid_out@71
    gaussian_i_llvm_fpga_push_i2_cleanups_push16_0 thei_llvm_fpga_push_i2_cleanups_push16_gaussian50 (
        .in_data_in(i_next_cleanups_gaussian49_q),
        .in_feedback_stall_in_16(i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_feedback_stall_out_16),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_gaussian4_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i2_cleanups_push16_gaussian50_backStall),
        .in_valid_in(SE_out_redist26_i_first_cleanup_xor_gaussian2_q_65_fifo_V0),
        .out_data_out(),
        .out_feedback_out_16(i_llvm_fpga_push_i2_cleanups_push16_gaussian50_out_feedback_out_16),
        .out_feedback_valid_out_16(i_llvm_fpga_push_i2_cleanups_push16_gaussian50_out_feedback_valid_out_16),
        .out_stall_out(i_llvm_fpga_push_i2_cleanups_push16_gaussian50_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i2_cleanups_push16_gaussian50_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2(REG,412)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_backEN == 1'b1)
        begin
            redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_q <= $unsigned(SR_SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_D0);
        end
    end

    // c_i2_158(CONSTANT,51)
    assign c_i2_158_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0(BLACKBOX,85)@4
    // in in_stall_in@20000000
    // out out_data_out@5
    // out out_feedback_stall_out_16@20000000
    // out out_stall_out@20000000
    // out out_valid_out@5
    gaussian_i_llvm_fpga_pop_i2_cleanups_pop16_0 thei_llvm_fpga_pop_i2_cleanups_pop16_gaussian0 (
        .in_data_in(c_i2_158_q),
        .in_dir(redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_q),
        .in_feedback_in_16(i_llvm_fpga_push_i2_cleanups_push16_gaussian50_out_feedback_out_16),
        .in_feedback_valid_in_16(i_llvm_fpga_push_i2_cleanups_push16_gaussian50_out_feedback_valid_out_16),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_backStall),
        .in_valid_in(SE_redist29_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_V1),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out),
        .out_feedback_stall_out_16(i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_feedback_stall_out_16),
        .out_stall_out(i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0(BITJOIN,476)
    assign bubble_join_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_q = i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0(BITSELECT,477)
    assign bubble_select_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_b = $unsigned(bubble_join_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_q[1:0]);

    // i_first_cleanup_gaussian1_sel_x(BITSELECT,23)@5
    assign i_first_cleanup_gaussian1_sel_x_b = bubble_select_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_b[0:0];

    // i_first_cleanup_xor_gaussian2(LOGICAL,66)@5
    assign i_first_cleanup_xor_gaussian2_q = i_first_cleanup_gaussian1_sel_x_b ^ VCC_q;

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10(BITJOIN,433)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_q = i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10(BITSELECT,434)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_q[0:0]);

    // redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_0(REG,400)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_0_backEN == 1'b1)
        begin
            redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_0_q <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_b);
        end
    end

    // redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_1(REG,401)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_1_backEN == 1'b1)
        begin
            redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_1_q <= $unsigned(redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_0_q);
        end
    end

    // redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_2(REG,402)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_2_backEN == 1'b1)
        begin
            redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_2_q <= $unsigned(redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_1_q);
        end
    end

    // i_unnamed_gaussian11(LOGICAL,113)@5
    assign i_unnamed_gaussian11_q = redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_2_q ^ VCC_q;

    // i_first_cleanup_xor_or_gaussian20(LOGICAL,67)@5
    assign i_first_cleanup_xor_or_gaussian20_q = i_unnamed_gaussian11_q | i_first_cleanup_xor_gaussian2_q;

    // SE_i_unnamed_gaussian11(STALLENABLE,632)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_unnamed_gaussian11_fromReg0 <= '0;
            SE_i_unnamed_gaussian11_fromReg1 <= '0;
            SE_i_unnamed_gaussian11_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_unnamed_gaussian11_fromReg0 <= SE_i_unnamed_gaussian11_toReg0;
            // Successor 1
            SE_i_unnamed_gaussian11_fromReg1 <= SE_i_unnamed_gaussian11_toReg1;
            // Successor 2
            SE_i_unnamed_gaussian11_fromReg2 <= SE_i_unnamed_gaussian11_toReg2;
        end
    end
    // Input Stall processing
    assign SE_i_unnamed_gaussian11_consumed0 = (~ (SR_SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast_index30_gaussian26_backStall) & SE_i_unnamed_gaussian11_wireValid) | SE_i_unnamed_gaussian11_fromReg0;
    assign SE_i_unnamed_gaussian11_consumed1 = (~ (SR_SE_i_mptr_bitcast_index51_gaussian0_add_x_BitJoin_for_q_backStall) & SE_i_unnamed_gaussian11_wireValid) | SE_i_unnamed_gaussian11_fromReg1;
    assign SE_i_unnamed_gaussian11_consumed2 = (~ (SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_0_backStall) & SE_i_unnamed_gaussian11_wireValid) | SE_i_unnamed_gaussian11_fromReg2;
    // Consuming
    assign SE_i_unnamed_gaussian11_StallValid = SE_i_unnamed_gaussian11_backStall & SE_i_unnamed_gaussian11_wireValid;
    assign SE_i_unnamed_gaussian11_toReg0 = SE_i_unnamed_gaussian11_StallValid & SE_i_unnamed_gaussian11_consumed0;
    assign SE_i_unnamed_gaussian11_toReg1 = SE_i_unnamed_gaussian11_StallValid & SE_i_unnamed_gaussian11_consumed1;
    assign SE_i_unnamed_gaussian11_toReg2 = SE_i_unnamed_gaussian11_StallValid & SE_i_unnamed_gaussian11_consumed2;
    // Backward Stall generation
    assign SE_i_unnamed_gaussian11_or0 = SE_i_unnamed_gaussian11_consumed0;
    assign SE_i_unnamed_gaussian11_or1 = SE_i_unnamed_gaussian11_consumed1 & SE_i_unnamed_gaussian11_or0;
    assign SE_i_unnamed_gaussian11_wireStall = ~ (SE_i_unnamed_gaussian11_consumed2 & SE_i_unnamed_gaussian11_or1);
    assign SE_i_unnamed_gaussian11_backStall = SE_i_unnamed_gaussian11_wireStall;
    // Valid signal propagation
    assign SE_i_unnamed_gaussian11_V0 = SE_i_unnamed_gaussian11_wireValid & ~ (SE_i_unnamed_gaussian11_fromReg0);
    assign SE_i_unnamed_gaussian11_V1 = SE_i_unnamed_gaussian11_wireValid & ~ (SE_i_unnamed_gaussian11_fromReg1);
    assign SE_i_unnamed_gaussian11_V2 = SE_i_unnamed_gaussian11_wireValid & ~ (SE_i_unnamed_gaussian11_fromReg2);
    // Computing multiple Valid(s)
    assign SE_i_unnamed_gaussian11_and0 = SE_redist23_i_llvm_fpga_ffwd_dest_i1_cmp24526_gaussian10_out_dest_data_out_8_0_3_2_V0;
    assign SE_i_unnamed_gaussian11_wireValid = SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_V1 & SE_i_unnamed_gaussian11_and0;

    // SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_0(STALLREG,950)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_0_r_valid <= 1'b0;
            SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_0_r_valid <= SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_0_backStall & (SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_0_r_valid | SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_0_i_valid);

            if (SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_0_r_data0 <= i_first_cleanup_xor_or_gaussian20_q;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_0_i_valid = SE_i_unnamed_gaussian11_V2;
    // Stall signal propagation
    assign SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_0_backStall = SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_0_r_valid | ~ (SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_0_i_valid);

    // Valid
    assign SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_0_V = SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_0_r_valid == 1'b1 ? SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_0_r_valid : SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_0_i_valid;

    assign SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_0_D0 = SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_0_r_valid == 1'b1 ? SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_0_r_data0 : i_first_cleanup_xor_or_gaussian20_q;

    // redist24_i_first_cleanup_xor_or_gaussian20_q_5_0(REG,403)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_first_cleanup_xor_or_gaussian20_q_5_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_0_backEN == 1'b1)
        begin
            redist24_i_first_cleanup_xor_or_gaussian20_q_5_0_q <= $unsigned(SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_0_D0);
        end
    end

    // redist24_i_first_cleanup_xor_or_gaussian20_q_5_1(REG,404)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_first_cleanup_xor_or_gaussian20_q_5_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_1_backEN == 1'b1)
        begin
            redist24_i_first_cleanup_xor_or_gaussian20_q_5_1_q <= $unsigned(redist24_i_first_cleanup_xor_or_gaussian20_q_5_0_q);
        end
    end

    // SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_1(STALLENABLE,730)
    // Valid signal propagation
    assign SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_1_V0 = SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_1_R_v_0;
    // Stall signal propagation
    assign SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_1_s_tv_0 = SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_2_backStall & SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_1_R_v_0;
    // Backward Enable generation
    assign SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_1_backEN = ~ (SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_1_v_s_0 = SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_1_backEN & SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_0_V0;
    // Backward Stall generation
    assign SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_1_backStall = ~ (SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_1_backEN == 1'b0)
            begin
                SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_1_R_v_0 <= SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_1_R_v_0 & SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_1_s_tv_0;
            end
            else
            begin
                SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_1_R_v_0 <= SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_1_v_s_0;
            end

        end
    end

    // SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_2(STALLREG,951)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_2_r_valid <= 1'b0;
            SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_2_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_2_r_valid <= SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_2_backStall & (SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_2_r_valid | SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_2_i_valid);

            if (SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_2_r_data0 <= $unsigned(redist24_i_first_cleanup_xor_or_gaussian20_q_5_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_2_i_valid = SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_1_V0;
    // Stall signal propagation
    assign SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_2_backStall = SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_2_r_valid | ~ (SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_2_i_valid);

    // Valid
    assign SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_2_V = SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_2_r_valid == 1'b1 ? SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_2_r_valid : SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_2_i_valid;

    assign SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_2_D0 = SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_2_r_valid == 1'b1 ? SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_2_r_data0 : redist24_i_first_cleanup_xor_or_gaussian20_q_5_1_q;

    // redist24_i_first_cleanup_xor_or_gaussian20_q_5_2(REG,405)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_first_cleanup_xor_or_gaussian20_q_5_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_2_backEN == 1'b1)
        begin
            redist24_i_first_cleanup_xor_or_gaussian20_q_5_2_q <= $unsigned(SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_2_D0);
        end
    end

    // redist24_i_first_cleanup_xor_or_gaussian20_q_5_3(REG,406)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_first_cleanup_xor_or_gaussian20_q_5_3_q <= $unsigned(1'b0);
        end
        else if (SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_3_backEN == 1'b1)
        begin
            redist24_i_first_cleanup_xor_or_gaussian20_q_5_3_q <= $unsigned(redist24_i_first_cleanup_xor_or_gaussian20_q_5_2_q);
        end
    end

    // SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_3(STALLENABLE,732)
    // Valid signal propagation
    assign SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_3_V0 = SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_3_R_v_0;
    // Stall signal propagation
    assign SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_3_s_tv_0 = SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_backStall & SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_3_R_v_0;
    // Backward Enable generation
    assign SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_3_backEN = ~ (SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_3_v_s_0 = SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_3_backEN & SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_2_V0;
    // Backward Stall generation
    assign SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_3_backStall = ~ (SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_3_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_3_backEN == 1'b0)
            begin
                SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_3_R_v_0 <= SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_3_R_v_0 & SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_3_s_tv_0;
            end
            else
            begin
                SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_3_R_v_0 <= SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_3_v_s_0;
            end

        end
    end

    // SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4(STALLREG,952)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_r_valid <= 1'b0;
            SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_r_valid <= SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_backStall & (SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_r_valid | SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_i_valid);

            if (SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_r_data0 <= $unsigned(redist24_i_first_cleanup_xor_or_gaussian20_q_5_3_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_i_valid = SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_3_V0;
    // Stall signal propagation
    assign SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_backStall = SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_r_valid | ~ (SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_i_valid);

    // Valid
    assign SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_V = SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_r_valid == 1'b1 ? SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_r_valid : SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_i_valid;

    assign SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_D0 = SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_r_valid == 1'b1 ? SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_r_data0 : redist24_i_first_cleanup_xor_or_gaussian20_q_5_3_q;

    // SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4(STALLENABLE,733)
    // Valid signal propagation
    assign SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_V0 = SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_R_v_0;
    assign SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_V1 = SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_R_v_1;
    // Stall signal propagation
    assign SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_s_tv_0 = SE_in_i_llvm_fpga_mem_lm1_gaussian23_backStall & SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_R_v_0;
    assign SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_s_tv_1 = SE_join_for_coalesced_delay_1_backStall & SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_R_v_1;
    // Backward Enable generation
    assign SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_or0 = SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_s_tv_0;
    assign SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_backEN = ~ (SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_s_tv_1 | SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_v_s_0 = SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_backEN & SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_V;
    // Backward Stall generation
    assign SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_backStall = ~ (SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_R_v_0 <= 1'b0;
            SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_backEN == 1'b0)
            begin
                SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_R_v_0 <= SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_R_v_0 & SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_s_tv_0;
            end
            else
            begin
                SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_R_v_0 <= SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_v_s_0;
            end

            if (SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_backEN == 1'b0)
            begin
                SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_R_v_1 <= SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_R_v_1 & SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_s_tv_1;
            end
            else
            begin
                SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_R_v_1 <= SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_v_s_0;
            end

        end
    end

    // SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4(STALLENABLE,715)
    // Valid signal propagation
    assign SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_V0 = SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_R_v_0;
    assign SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_V1 = SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_R_v_1;
    // Stall signal propagation
    assign SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_s_tv_0 = SE_in_i_llvm_fpga_mem_lm1_gaussian23_backStall & SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_R_v_0;
    assign SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_s_tv_1 = redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_68_fifo_stall_out & SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_R_v_1;
    // Backward Enable generation
    assign SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_or0 = SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_s_tv_0;
    assign SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_backEN = ~ (SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_s_tv_1 | SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_v_s_0 = SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_backEN & SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_V;
    // Backward Stall generation
    assign SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_backStall = ~ (SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_R_v_0 <= 1'b0;
            SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_backEN == 1'b0)
            begin
                SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_R_v_0 <= SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_R_v_0 & SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_s_tv_0;
            end
            else
            begin
                SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_R_v_0 <= SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_v_s_0;
            end

            if (SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_backEN == 1'b0)
            begin
                SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_R_v_1 <= SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_R_v_1 & SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_s_tv_1;
            end
            else
            begin
                SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_R_v_1 <= SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_v_s_0;
            end

        end
    end

    // SE_i_mptr_bitcast_index53_gaussian0_add_x_BitJoin_for_q(STALLENABLE,652)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mptr_bitcast_index53_gaussian0_add_x_BitJoin_for_q_fromReg0 <= '0;
            SE_i_mptr_bitcast_index53_gaussian0_add_x_BitJoin_for_q_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_mptr_bitcast_index53_gaussian0_add_x_BitJoin_for_q_fromReg0 <= SE_i_mptr_bitcast_index53_gaussian0_add_x_BitJoin_for_q_toReg0;
            // Successor 1
            SE_i_mptr_bitcast_index53_gaussian0_add_x_BitJoin_for_q_fromReg1 <= SE_i_mptr_bitcast_index53_gaussian0_add_x_BitJoin_for_q_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_mptr_bitcast_index53_gaussian0_add_x_BitJoin_for_q_consumed0 = (~ (SE_in_i_llvm_fpga_mem_lm1_gaussian23_backStall) & SE_i_mptr_bitcast_index53_gaussian0_add_x_BitJoin_for_q_wireValid) | SE_i_mptr_bitcast_index53_gaussian0_add_x_BitJoin_for_q_fromReg0;
    assign SE_i_mptr_bitcast_index53_gaussian0_add_x_BitJoin_for_q_consumed1 = (~ (SE_join_for_coalesced_delay_1_backStall) & SE_i_mptr_bitcast_index53_gaussian0_add_x_BitJoin_for_q_wireValid) | SE_i_mptr_bitcast_index53_gaussian0_add_x_BitJoin_for_q_fromReg1;
    // Consuming
    assign SE_i_mptr_bitcast_index53_gaussian0_add_x_BitJoin_for_q_StallValid = SE_i_mptr_bitcast_index53_gaussian0_add_x_BitJoin_for_q_backStall & SE_i_mptr_bitcast_index53_gaussian0_add_x_BitJoin_for_q_wireValid;
    assign SE_i_mptr_bitcast_index53_gaussian0_add_x_BitJoin_for_q_toReg0 = SE_i_mptr_bitcast_index53_gaussian0_add_x_BitJoin_for_q_StallValid & SE_i_mptr_bitcast_index53_gaussian0_add_x_BitJoin_for_q_consumed0;
    assign SE_i_mptr_bitcast_index53_gaussian0_add_x_BitJoin_for_q_toReg1 = SE_i_mptr_bitcast_index53_gaussian0_add_x_BitJoin_for_q_StallValid & SE_i_mptr_bitcast_index53_gaussian0_add_x_BitJoin_for_q_consumed1;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index53_gaussian0_add_x_BitJoin_for_q_or0 = SE_i_mptr_bitcast_index53_gaussian0_add_x_BitJoin_for_q_consumed0;
    assign SE_i_mptr_bitcast_index53_gaussian0_add_x_BitJoin_for_q_wireStall = ~ (SE_i_mptr_bitcast_index53_gaussian0_add_x_BitJoin_for_q_consumed1 & SE_i_mptr_bitcast_index53_gaussian0_add_x_BitJoin_for_q_or0);
    assign SE_i_mptr_bitcast_index53_gaussian0_add_x_BitJoin_for_q_backStall = SE_i_mptr_bitcast_index53_gaussian0_add_x_BitJoin_for_q_wireStall;
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index53_gaussian0_add_x_BitJoin_for_q_V0 = SE_i_mptr_bitcast_index53_gaussian0_add_x_BitJoin_for_q_wireValid & ~ (SE_i_mptr_bitcast_index53_gaussian0_add_x_BitJoin_for_q_fromReg0);
    assign SE_i_mptr_bitcast_index53_gaussian0_add_x_BitJoin_for_q_V1 = SE_i_mptr_bitcast_index53_gaussian0_add_x_BitJoin_for_q_wireValid & ~ (SE_i_mptr_bitcast_index53_gaussian0_add_x_BitJoin_for_q_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_mptr_bitcast_index53_gaussian0_add_x_BitJoin_for_q_and0 = SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_V0;
    assign SE_i_mptr_bitcast_index53_gaussian0_add_x_BitJoin_for_q_wireValid = SE_redist5_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_q_1_0_V0 & SE_i_mptr_bitcast_index53_gaussian0_add_x_BitJoin_for_q_and0;

    // SE_in_i_llvm_fpga_mem_lm1_gaussian23(STALLENABLE,570)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_mem_lm1_gaussian23_V0 = SE_in_i_llvm_fpga_mem_lm1_gaussian23_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_mem_lm1_gaussian23_backStall = i_llvm_fpga_mem_lm1_gaussian23_out_o_stall | ~ (SE_in_i_llvm_fpga_mem_lm1_gaussian23_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_mem_lm1_gaussian23_and0 = SE_i_mptr_bitcast_index53_gaussian0_add_x_BitJoin_for_q_V0;
    assign SE_in_i_llvm_fpga_mem_lm1_gaussian23_and1 = SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_V0 & SE_in_i_llvm_fpga_mem_lm1_gaussian23_and0;
    assign SE_in_i_llvm_fpga_mem_lm1_gaussian23_wireValid = SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_V0 & SE_in_i_llvm_fpga_mem_lm1_gaussian23_and1;

    // SE_out_coalesced_delay_1_fifo(STALLENABLE,751)
    // Valid signal propagation
    assign SE_out_coalesced_delay_1_fifo_V0 = SE_out_coalesced_delay_1_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_1_fifo_backStall = i_llvm_fpga_mem_memdep_gaussian35_out_o_stall | ~ (SE_out_coalesced_delay_1_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_1_fifo_and0 = coalesced_delay_1_fifo_valid_out;
    assign SE_out_coalesced_delay_1_fifo_and1 = SE_i_mul14_gaussian33_sums_result_add_0_0_p2_of_2_V0 & SE_out_coalesced_delay_1_fifo_and0;
    assign SE_out_coalesced_delay_1_fifo_and2 = SE_redist4_i_mul14_gaussian33_sums_result_add_0_0_p1_of_2_q_1_0_V0 & SE_out_coalesced_delay_1_fifo_and1;
    assign SE_out_coalesced_delay_1_fifo_wireValid = i_llvm_fpga_mem_lm1_gaussian23_out_o_valid & SE_out_coalesced_delay_1_fifo_and2;

    // redist24_i_first_cleanup_xor_or_gaussian20_q_5_4(REG,407)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_q <= $unsigned(1'b0);
        end
        else if (SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_backEN == 1'b1)
        begin
            redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_q <= $unsigned(SR_SE_redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_D0);
        end
    end

    // redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4(REG,390)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_q <= $unsigned(1'b0);
        end
        else if (SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_backEN == 1'b1)
        begin
            redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_q <= $unsigned(SR_SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_D0);
        end
    end

    // i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2(ADD,266)@9 + 1
    assign i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_cin = SR_SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_D2;
    assign i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_a = { {1'b0, SR_SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_D0}, 1'b1 };
    assign i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_b = { {1'b0, SR_SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_D1}, i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_o <= 7'b0;
        end
        else if (SE_i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_o <= $unsigned(i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_a) + $unsigned(i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_b);
        end
    end
    assign i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_q = i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_o[5:1];

    // redist5_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_q_1_0(REG,363)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_q_1_0_q <= $unsigned(60'b000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist5_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_q_1_0_backEN == 1'b1)
        begin
            redist5_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_q_1_0_q <= $unsigned(SR_SE_redist5_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_q_1_0_D0);
        end
    end

    // i_mptr_bitcast_index53_gaussian0_add_x_BitJoin_for_q(BITJOIN,267)@10
    assign i_mptr_bitcast_index53_gaussian0_add_x_BitJoin_for_q_q = {i_mptr_bitcast_index53_gaussian0_add_x_p2_of_2_q, redist5_i_mptr_bitcast_index53_gaussian0_add_x_p1_of_2_q_1_0_q};

    // i_mptr_bitcast_index53_gaussian0_dupName_0_trunc_sel_x(BITSELECT,31)@10
    assign i_mptr_bitcast_index53_gaussian0_dupName_0_trunc_sel_x_b = i_mptr_bitcast_index53_gaussian0_add_x_BitJoin_for_q_q[63:0];

    // i_llvm_fpga_mem_lm1_gaussian23(BLACKBOX,76)@10
    // in in_i_stall@20000000
    // out out_lm1_gaussian_avm_address@20000000
    // out out_lm1_gaussian_avm_burstcount@20000000
    // out out_lm1_gaussian_avm_byteenable@20000000
    // out out_lm1_gaussian_avm_enable@20000000
    // out out_lm1_gaussian_avm_read@20000000
    // out out_lm1_gaussian_avm_write@20000000
    // out out_lm1_gaussian_avm_writedata@20000000
    // out out_o_readdata@42
    // out out_o_stall@20000000
    // out out_o_valid@42
    gaussian_i_llvm_fpga_mem_lm1_0 thei_llvm_fpga_mem_lm1_gaussian23 (
        .in_flush(in_flush),
        .in_i_address(i_mptr_bitcast_index53_gaussian0_dupName_0_trunc_sel_x_b),
        .in_i_dependence(redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1047_pop21_gaussian21_out_data_out_8_4_q),
        .in_i_predicate(redist24_i_first_cleanup_xor_or_gaussian20_q_5_4_q),
        .in_i_stall(SE_out_coalesced_delay_1_fifo_backStall),
        .in_i_valid(SE_in_i_llvm_fpga_mem_lm1_gaussian23_V0),
        .in_lm1_gaussian_avm_readdata(in_lm1_gaussian_avm_readdata),
        .in_lm1_gaussian_avm_readdatavalid(in_lm1_gaussian_avm_readdatavalid),
        .in_lm1_gaussian_avm_waitrequest(in_lm1_gaussian_avm_waitrequest),
        .in_lm1_gaussian_avm_writeack(in_lm1_gaussian_avm_writeack),
        .out_lm1_gaussian_avm_address(i_llvm_fpga_mem_lm1_gaussian23_out_lm1_gaussian_avm_address),
        .out_lm1_gaussian_avm_burstcount(i_llvm_fpga_mem_lm1_gaussian23_out_lm1_gaussian_avm_burstcount),
        .out_lm1_gaussian_avm_byteenable(i_llvm_fpga_mem_lm1_gaussian23_out_lm1_gaussian_avm_byteenable),
        .out_lm1_gaussian_avm_enable(i_llvm_fpga_mem_lm1_gaussian23_out_lm1_gaussian_avm_enable),
        .out_lm1_gaussian_avm_read(i_llvm_fpga_mem_lm1_gaussian23_out_lm1_gaussian_avm_read),
        .out_lm1_gaussian_avm_write(i_llvm_fpga_mem_lm1_gaussian23_out_lm1_gaussian_avm_write),
        .out_lm1_gaussian_avm_writedata(i_llvm_fpga_mem_lm1_gaussian23_out_lm1_gaussian_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm1_gaussian23_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm1_gaussian23_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm1_gaussian23_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,10)
    assign out_lm1_gaussian_avm_address = i_llvm_fpga_mem_lm1_gaussian23_out_lm1_gaussian_avm_address;
    assign out_lm1_gaussian_avm_enable = i_llvm_fpga_mem_lm1_gaussian23_out_lm1_gaussian_avm_enable;
    assign out_lm1_gaussian_avm_read = i_llvm_fpga_mem_lm1_gaussian23_out_lm1_gaussian_avm_read;
    assign out_lm1_gaussian_avm_write = i_llvm_fpga_mem_lm1_gaussian23_out_lm1_gaussian_avm_write;
    assign out_lm1_gaussian_avm_writedata = i_llvm_fpga_mem_lm1_gaussian23_out_lm1_gaussian_avm_writedata;
    assign out_lm1_gaussian_avm_byteenable = i_llvm_fpga_mem_lm1_gaussian23_out_lm1_gaussian_avm_byteenable;
    assign out_lm1_gaussian_avm_burstcount = i_llvm_fpga_mem_lm1_gaussian23_out_lm1_gaussian_avm_burstcount;

    // redist10_i_masked_gaussian51_q_3_1(REG,369)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_masked_gaussian51_q_3_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist10_i_masked_gaussian51_q_3_1_backEN == 1'b1)
        begin
            redist10_i_masked_gaussian51_q_3_1_q <= $unsigned(SR_SE_redist10_i_masked_gaussian51_q_3_1_D0);
        end
    end

    // bubble_join_i_llvm_fpga_push_i32_add44_push17_gaussian53(BITJOIN,497)
    assign bubble_join_i_llvm_fpga_push_i32_add44_push17_gaussian53_q = i_llvm_fpga_push_i32_add44_push17_gaussian53_out_data_out;

    // bubble_select_i_llvm_fpga_push_i32_add44_push17_gaussian53(BITSELECT,498)
    assign bubble_select_i_llvm_fpga_push_i32_add44_push17_gaussian53_b = $unsigned(bubble_join_i_llvm_fpga_push_i32_add44_push17_gaussian53_q[31:0]);

    // dupName_0_sync_out_x(GPOUT,11)@73
    assign out_add44_push17 = bubble_select_i_llvm_fpga_push_i32_add44_push17_gaussian53_b;
    assign out_masked = redist10_i_masked_gaussian51_q_3_1_q;
    assign out_memdep = bubble_select_i_llvm_fpga_mem_memdep_gaussian35_b;
    assign out_notcmp3546_pop20 = bubble_select_i_llvm_fpga_pop_i1_notcmp3546_pop20_gaussian56_b;
    assign out_pop19 = bubble_select_i_llvm_fpga_pop_i1_pop19_gaussian54_b;
    assign out_valid_out = SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,13)
    assign out_lm32_gaussian_avm_address = i_llvm_fpga_mem_lm32_gaussian27_out_lm32_gaussian_avm_address;
    assign out_lm32_gaussian_avm_enable = i_llvm_fpga_mem_lm32_gaussian27_out_lm32_gaussian_avm_enable;
    assign out_lm32_gaussian_avm_read = i_llvm_fpga_mem_lm32_gaussian27_out_lm32_gaussian_avm_read;
    assign out_lm32_gaussian_avm_write = i_llvm_fpga_mem_lm32_gaussian27_out_lm32_gaussian_avm_write;
    assign out_lm32_gaussian_avm_writedata = i_llvm_fpga_mem_lm32_gaussian27_out_lm32_gaussian_avm_writedata;
    assign out_lm32_gaussian_avm_byteenable = i_llvm_fpga_mem_lm32_gaussian27_out_lm32_gaussian_avm_byteenable;
    assign out_lm32_gaussian_avm_burstcount = i_llvm_fpga_mem_lm32_gaussian27_out_lm32_gaussian_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,15)
    assign out_lm53_gaussian_avm_address = i_llvm_fpga_mem_lm53_gaussian32_out_lm53_gaussian_avm_address;
    assign out_lm53_gaussian_avm_enable = i_llvm_fpga_mem_lm53_gaussian32_out_lm53_gaussian_avm_enable;
    assign out_lm53_gaussian_avm_read = i_llvm_fpga_mem_lm53_gaussian32_out_lm53_gaussian_avm_read;
    assign out_lm53_gaussian_avm_write = i_llvm_fpga_mem_lm53_gaussian32_out_lm53_gaussian_avm_write;
    assign out_lm53_gaussian_avm_writedata = i_llvm_fpga_mem_lm53_gaussian32_out_lm53_gaussian_avm_writedata;
    assign out_lm53_gaussian_avm_byteenable = i_llvm_fpga_mem_lm53_gaussian32_out_lm53_gaussian_avm_byteenable;
    assign out_lm53_gaussian_avm_burstcount = i_llvm_fpga_mem_lm53_gaussian32_out_lm53_gaussian_avm_burstcount;

    // dupName_3_ext_sig_sync_out_x(GPOUT,16)
    assign out_memdep_gaussian_avm_address = i_llvm_fpga_mem_memdep_gaussian35_out_memdep_gaussian_avm_address;
    assign out_memdep_gaussian_avm_enable = i_llvm_fpga_mem_memdep_gaussian35_out_memdep_gaussian_avm_enable;
    assign out_memdep_gaussian_avm_read = i_llvm_fpga_mem_memdep_gaussian35_out_memdep_gaussian_avm_read;
    assign out_memdep_gaussian_avm_write = i_llvm_fpga_mem_memdep_gaussian35_out_memdep_gaussian_avm_write;
    assign out_memdep_gaussian_avm_writedata = i_llvm_fpga_mem_memdep_gaussian35_out_memdep_gaussian_avm_writedata;
    assign out_memdep_gaussian_avm_byteenable = i_llvm_fpga_mem_memdep_gaussian35_out_memdep_gaussian_avm_byteenable;
    assign out_memdep_gaussian_avm_burstcount = i_llvm_fpga_mem_memdep_gaussian35_out_memdep_gaussian_avm_burstcount;

    // dupName_4_ext_sig_sync_out_x(GPOUT,17)
    assign out_lsu_memdep_o_active = i_llvm_fpga_mem_memdep_gaussian35_out_lsu_memdep_o_active;

    // ext_sig_sync_out(GPOUT,58)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_gaussian4_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_gaussian4_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_gaussian4_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_gaussian4_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,191)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_gaussian4_out_pipeline_valid_out;

    // sync_out(GPOUT,200)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
