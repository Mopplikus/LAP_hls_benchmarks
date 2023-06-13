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

// SystemVerilog created from bb_atax_B5_stall_region
// Created for function/kernel atax
// SystemVerilog created on Tue Jun 13 01:54:01 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_bb_B5_stall_region (
    input wire [31:0] in_unnamed_atax17_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax17_atax_avm_writeack,
    input wire [0:0] in_unnamed_atax17_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax17_atax_avm_readdatavalid,
    output wire [31:0] out_unnamed_atax15_atax_avm_address,
    output wire [0:0] out_unnamed_atax15_atax_avm_enable,
    output wire [0:0] out_unnamed_atax15_atax_avm_read,
    output wire [0:0] out_unnamed_atax15_atax_avm_write,
    output wire [31:0] out_unnamed_atax15_atax_avm_writedata,
    output wire [3:0] out_unnamed_atax15_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax15_atax_avm_burstcount,
    output wire [31:0] out_add758_pop37,
    output wire [0:0] out_exitcond1251_pop32,
    output wire [63:0] out_mPtr_bitcast_index8846_pop30,
    output wire [0:0] out_masked,
    output wire [0:0] out_memdep,
    output wire [0:0] out_notcmp3553_pop33,
    output wire [0:0] out_valid_out,
    input wire [31:0] in_memdep_atax_avm_readdata,
    input wire [0:0] in_memdep_atax_avm_writeack,
    input wire [0:0] in_memdep_atax_avm_waitrequest,
    input wire [0:0] in_memdep_atax_avm_readdatavalid,
    output wire [31:0] out_unnamed_atax17_atax_avm_address,
    output wire [0:0] out_unnamed_atax17_atax_avm_enable,
    output wire [0:0] out_unnamed_atax17_atax_avm_read,
    output wire [0:0] out_unnamed_atax17_atax_avm_write,
    output wire [31:0] out_unnamed_atax17_atax_avm_writedata,
    output wire [3:0] out_unnamed_atax17_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax17_atax_avm_burstcount,
    output wire [31:0] out_memdep_atax_avm_address,
    output wire [0:0] out_memdep_atax_avm_enable,
    output wire [0:0] out_memdep_atax_avm_read,
    output wire [0:0] out_memdep_atax_avm_write,
    output wire [31:0] out_memdep_atax_avm_writedata,
    output wire [3:0] out_memdep_atax_avm_byteenable,
    output wire [0:0] out_memdep_atax_avm_burstcount,
    output wire [0:0] out_lsu_memdep_o_active,
    input wire [31:0] in_unnamed_atax15_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax15_atax_avm_writeack,
    input wire [0:0] in_unnamed_atax15_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax15_atax_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_atax4_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_atax4_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_3_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_add773,
    input wire [0:0] in_exitcond1250_pop2277,
    input wire [0:0] in_forked,
    input wire [63:0] in_mPtr_bitcast778965,
    input wire [63:0] in_mPtr_bitcast_index8845_pop1975,
    input wire [0:0] in_memdep_phi3_or71,
    input wire [0:0] in_memdep_phi3_pop1354_pop2469,
    input wire [31:0] in_mul_add1448_pop2167,
    input wire [0:0] in_notcmp3552_pop2379,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [63:0] atax_B5_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [31:0] atax_B5_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [0:0] atax_B5_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [0:0] atax_B5_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [31:0] atax_B5_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [63:0] atax_B5_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [0:0] atax_B5_merge_reg_aunroll_x_out_data_out_7_tpl;
    wire [0:0] atax_B5_merge_reg_aunroll_x_out_data_out_8_tpl;
    wire [0:0] atax_B5_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] atax_B5_merge_reg_aunroll_x_out_valid_out;
    wire [31:0] bgTrunc_i_add16_atax30_sel_x_b;
    wire [5:0] bgTrunc_i_fpga_indvars_iv_next8_atax45_sel_x_b;
    wire [31:0] bgTrunc_i_inc19_atax35_sel_x_b;
    wire [63:0] bgTrunc_i_mul15_atax29_sel_x_in;
    wire [31:0] bgTrunc_i_mul15_atax29_sel_x_b;
    wire [0:0] i_first_cleanup_atax1_sel_x_b;
    wire [0:0] i_last_initeration_atax8_sel_x_b;
    wire [63:0] i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b;
    wire [1:0] i_mptr_bitcast_index84_atax0_c_i2_01_x_q;
    wire [63:0] i_mptr_bitcast_index_atax0_dupName_0_trunc_sel_x_b;
    wire [1:0] c_i2_154_q;
    wire [31:0] c_i32_057_q;
    wire [31:0] c_i32_158_q;
    wire [5:0] c_i6_161_q;
    wire [5:0] c_i6_1859_q;
    wire [32:0] i_add13_atax19_a;
    wire [32:0] i_add13_atax19_b;
    logic [32:0] i_add13_atax19_o;
    wire [32:0] i_add13_atax19_q;
    wire [32:0] i_add16_atax30_a;
    wire [32:0] i_add16_atax30_b;
    logic [32:0] i_add16_atax30_o;
    wire [32:0] i_add16_atax30_q;
    wire [1:0] i_cleanups_shl_atax3_vt_join_q;
    wire [0:0] i_cleanups_shl_atax3_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor_atax2_q;
    wire [6:0] i_fpga_indvars_iv_next8_atax45_a;
    wire [6:0] i_fpga_indvars_iv_next8_atax45_b;
    logic [6:0] i_fpga_indvars_iv_next8_atax45_o;
    wire [6:0] i_fpga_indvars_iv_next8_atax45_q;
    wire [32:0] i_inc19_atax35_a;
    wire [32:0] i_inc19_atax35_b;
    logic [32:0] i_inc19_atax35_o;
    wire [32:0] i_inc19_atax35_q;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12_out_dest_data_out_3_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12_out_valid_out;
    wire [0:0] i_llvm_fpga_mem_memdep_atax33_out_lsu_memdep_o_active;
    wire [31:0] i_llvm_fpga_mem_memdep_atax33_out_memdep_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_atax33_out_memdep_atax_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_atax33_out_memdep_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_atax33_out_memdep_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_atax33_out_memdep_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_atax33_out_memdep_atax_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_atax33_out_memdep_atax_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_atax33_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_atax33_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_atax33_out_o_writeack;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax15_atax16_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax15_atax16_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax15_atax16_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax15_atax16_out_unnamed_atax15_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax15_atax16_out_unnamed_atax15_atax_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_atax15_atax16_out_unnamed_atax15_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax15_atax16_out_unnamed_atax15_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax15_atax16_out_unnamed_atax15_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax15_atax16_out_unnamed_atax15_atax_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax15_atax16_out_unnamed_atax15_atax_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax17_atax26_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax17_atax26_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax17_atax26_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax17_atax26_out_unnamed_atax17_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax17_atax26_out_unnamed_atax17_atax_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_atax17_atax26_out_unnamed_atax17_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax17_atax26_out_unnamed_atax17_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax17_atax26_out_unnamed_atax17_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax17_atax26_out_unnamed_atax17_atax_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax17_atax26_out_unnamed_atax17_atax_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_atax4_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_atax4_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_atax4_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_atax4_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_atax4_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_atax4_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_atax4_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_atax4_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_out_feedback_stall_out_32;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi1_pop27_atax24_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi1_pop27_atax24_out_feedback_stall_out_27;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi1_pop27_atax24_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi1_pop27_atax24_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_feedback_stall_out_36;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_feedback_stall_out_34;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_out_feedback_stall_out_33;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_out_valid_out;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups_pop29_atax0_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop29_atax0_out_feedback_stall_out_29;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop29_atax0_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop29_atax0_out_valid_out;
    wire [1:0] i_llvm_fpga_pop_i2_initerations_pop28_atax5_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations_pop28_atax5_out_feedback_stall_out_28;
    wire [0:0] i_llvm_fpga_pop_i2_initerations_pop28_atax5_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations_pop28_atax5_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_add758_pop37_atax27_out_feedback_stall_out_37;
    wire [0:0] i_llvm_fpga_pop_i32_add758_pop37_atax27_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_add758_pop37_atax27_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_feedback_stall_out_26;
    wire [0:0] i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_out_feedback_stall_out_31;
    wire [0:0] i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_out_valid_out;
    wire [5:0] i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_out_feedback_stall_out_25;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_out_valid_out;
    wire [63:0] i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out;
    wire [0:0] i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_feedback_stall_out_35;
    wire [0:0] i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_valid_out;
    wire [63:0] i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_out_data_out;
    wire [0:0] i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_out_feedback_stall_out_30;
    wire [0:0] i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1251_push32_atax51_out_feedback_out_32;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1251_push32_atax51_out_feedback_valid_out_32;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1251_push32_atax51_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1251_push32_atax51_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_atax9_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_atax9_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_atax9_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_atax9_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi1_push27_atax34_out_feedback_out_27;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi1_push27_atax34_out_feedback_valid_out_27;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi1_push27_atax34_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi1_push27_atax34_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_or57_push36_atax15_out_feedback_out_36;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_or57_push36_atax15_out_feedback_valid_out_36;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_or57_push36_atax15_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_or57_push36_atax15_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_pop1355_push34_atax32_out_feedback_out_34;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_pop1355_push34_atax32_out_feedback_valid_out_34;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_pop1355_push34_atax32_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_pop1355_push34_atax32_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notcmp3553_push33_atax53_out_feedback_out_33;
    wire [0:0] i_llvm_fpga_push_i1_notcmp3553_push33_atax53_out_feedback_valid_out_33;
    wire [0:0] i_llvm_fpga_push_i1_notcmp3553_push33_atax53_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_notcmp3553_push33_atax53_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_atax41_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_atax41_out_feedback_valid_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_atax41_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_atax41_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i2_cleanups_push29_atax44_out_feedback_out_29;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push29_atax44_out_feedback_valid_out_29;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push29_atax44_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push29_atax44_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i2_initerations_push28_atax7_out_feedback_out_28;
    wire [0:0] i_llvm_fpga_push_i2_initerations_push28_atax7_out_feedback_valid_out_28;
    wire [0:0] i_llvm_fpga_push_i2_initerations_push28_atax7_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i2_initerations_push28_atax7_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i32_add758_push37_atax28_out_feedback_out_37;
    wire [0:0] i_llvm_fpga_push_i32_add758_push37_atax28_out_feedback_valid_out_37;
    wire [0:0] i_llvm_fpga_push_i32_add758_push37_atax28_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_add758_push37_atax28_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i32_j_175_push26_atax36_out_feedback_out_26;
    wire [0:0] i_llvm_fpga_push_i32_j_175_push26_atax36_out_feedback_valid_out_26;
    wire [0:0] i_llvm_fpga_push_i32_j_175_push26_atax36_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_j_175_push26_atax36_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i32_mul_add1449_push31_atax18_out_feedback_out_31;
    wire [0:0] i_llvm_fpga_push_i32_mul_add1449_push31_atax18_out_feedback_valid_out_31;
    wire [0:0] i_llvm_fpga_push_i32_mul_add1449_push31_atax18_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_mul_add1449_push31_atax18_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv7_push25_atax46_out_feedback_out_25;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv7_push25_atax46_out_feedback_valid_out_25;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv7_push25_atax46_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv7_push25_atax46_out_valid_out;
    wire [63:0] i_llvm_fpga_push_p1025i32_mptr_bitcast778956_push35_atax22_out_feedback_out_35;
    wire [0:0] i_llvm_fpga_push_p1025i32_mptr_bitcast778956_push35_atax22_out_feedback_valid_out_35;
    wire [0:0] i_llvm_fpga_push_p1025i32_mptr_bitcast778956_push35_atax22_out_stall_out;
    wire [0:0] i_llvm_fpga_push_p1025i32_mptr_bitcast778956_push35_atax22_out_valid_out;
    wire [63:0] i_llvm_fpga_push_p1025i32_mptr_bitcast_index8846_push30_atax49_out_feedback_out_30;
    wire [0:0] i_llvm_fpga_push_p1025i32_mptr_bitcast_index8846_push30_atax49_out_feedback_valid_out_30;
    wire [0:0] i_llvm_fpga_push_p1025i32_mptr_bitcast_index8846_push30_atax49_out_stall_out;
    wire [0:0] i_llvm_fpga_push_p1025i32_mptr_bitcast_index8846_push30_atax49_out_valid_out;
    wire [0:0] i_masked_atax47_qi;
    reg [0:0] i_masked_atax47_q;
    wire [0:0] i_next_cleanups_atax43_s;
    reg [1:0] i_next_cleanups_atax43_q;
    wire [1:0] i_next_initerations_atax6_vt_join_q;
    wire [0:0] i_next_initerations_atax6_vt_select_0_b;
    wire [0:0] i_notcmp_atax40_q;
    wire [0:0] i_or_atax42_q;
    wire [0:0] i_reduction_atax_1_atax25_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid210_i_cleanups_shl_atax0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid210_i_cleanups_shl_atax0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid211_i_cleanups_shl_atax0_shift_x_q;
    wire [0:0] leftShiftStage0_uid213_i_cleanups_shl_atax0_shift_x_s;
    reg [1:0] leftShiftStage0_uid213_i_cleanups_shl_atax0_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid217_i_next_initerations_atax0_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid219_i_next_initerations_atax0_shift_x_q;
    wire [0:0] rightShiftStage0_uid221_i_next_initerations_atax0_shift_x_s;
    reg [1:0] rightShiftStage0_uid221_i_next_initerations_atax0_shift_x_q;
    wire [0:0] i_exitcond9_atax38_cmp_nsign_q;
    wire [50:0] i_mul15_atax29_sums_align_1_q;
    wire [50:0] i_mul15_atax29_sums_align_1_qint;
    wire i_mul15_atax29_im0_cma_reset;
    (* preserve *) reg [17:0] i_mul15_atax29_im0_cma_a0 [0:0];
    (* preserve *) reg [17:0] i_mul15_atax29_im0_cma_c0 [0:0];
    wire [35:0] i_mul15_atax29_im0_cma_p [0:0];
    wire [35:0] i_mul15_atax29_im0_cma_u [0:0];
    wire [35:0] i_mul15_atax29_im0_cma_w [0:0];
    wire [35:0] i_mul15_atax29_im0_cma_x [0:0];
    wire [35:0] i_mul15_atax29_im0_cma_y [0:0];
    reg [35:0] i_mul15_atax29_im0_cma_s [0:0];
    wire [35:0] i_mul15_atax29_im0_cma_qq;
    wire [35:0] i_mul15_atax29_im0_cma_q;
    wire i_mul15_atax29_im0_cma_ena0;
    wire i_mul15_atax29_im0_cma_ena1;
    wire i_mul15_atax29_im8_cma_reset;
    (* preserve *) reg [13:0] i_mul15_atax29_im8_cma_a0 [0:0];
    (* preserve *) reg [13:0] i_mul15_atax29_im8_cma_c0 [0:0];
    wire [27:0] i_mul15_atax29_im8_cma_p [0:0];
    wire [27:0] i_mul15_atax29_im8_cma_u [0:0];
    wire [27:0] i_mul15_atax29_im8_cma_w [0:0];
    wire [27:0] i_mul15_atax29_im8_cma_x [0:0];
    wire [27:0] i_mul15_atax29_im8_cma_y [0:0];
    reg [27:0] i_mul15_atax29_im8_cma_s [0:0];
    wire [27:0] i_mul15_atax29_im8_cma_qq;
    wire [27:0] i_mul15_atax29_im8_cma_q;
    wire i_mul15_atax29_im8_cma_ena0;
    wire i_mul15_atax29_im8_cma_ena1;
    wire i_mul15_atax29_ma3_cma_reset;
    (* preserve *) reg [13:0] i_mul15_atax29_ma3_cma_a0 [0:1];
    (* preserve *) reg [17:0] i_mul15_atax29_ma3_cma_c0 [0:1];
    wire [31:0] i_mul15_atax29_ma3_cma_p [0:1];
    wire [32:0] i_mul15_atax29_ma3_cma_u [0:1];
    wire [32:0] i_mul15_atax29_ma3_cma_w [0:0];
    wire [32:0] i_mul15_atax29_ma3_cma_x [0:0];
    wire [32:0] i_mul15_atax29_ma3_cma_y [0:0];
    reg [32:0] i_mul15_atax29_ma3_cma_s [0:0];
    wire [32:0] i_mul15_atax29_ma3_cma_qq;
    wire [32:0] i_mul15_atax29_ma3_cma_q;
    wire i_mul15_atax29_ma3_cma_ena0;
    wire i_mul15_atax29_ma3_cma_ena1;
    wire [60:0] i_mptr_bitcast_index84_atax0_add_x_p1_of_2_a;
    wire [60:0] i_mptr_bitcast_index84_atax0_add_x_p1_of_2_b;
    logic [60:0] i_mptr_bitcast_index84_atax0_add_x_p1_of_2_o;
    wire [0:0] i_mptr_bitcast_index84_atax0_add_x_p1_of_2_c;
    wire [59:0] i_mptr_bitcast_index84_atax0_add_x_p1_of_2_q;
    wire [6:0] i_mptr_bitcast_index84_atax0_add_x_p2_of_2_a;
    wire [6:0] i_mptr_bitcast_index84_atax0_add_x_p2_of_2_b;
    logic [6:0] i_mptr_bitcast_index84_atax0_add_x_p2_of_2_o;
    wire [0:0] i_mptr_bitcast_index84_atax0_add_x_p2_of_2_cin;
    wire [4:0] i_mptr_bitcast_index84_atax0_add_x_p2_of_2_q;
    wire [64:0] i_mptr_bitcast_index84_atax0_add_x_BitJoin_for_q_q;
    wire [60:0] i_mptr_bitcast_index_atax0_add_x_p1_of_2_a;
    wire [60:0] i_mptr_bitcast_index_atax0_add_x_p1_of_2_b;
    logic [60:0] i_mptr_bitcast_index_atax0_add_x_p1_of_2_o;
    wire [0:0] i_mptr_bitcast_index_atax0_add_x_p1_of_2_c;
    wire [59:0] i_mptr_bitcast_index_atax0_add_x_p1_of_2_q;
    wire [6:0] i_mptr_bitcast_index_atax0_add_x_p2_of_2_a;
    wire [6:0] i_mptr_bitcast_index_atax0_add_x_p2_of_2_b;
    logic [6:0] i_mptr_bitcast_index_atax0_add_x_p2_of_2_o;
    wire [0:0] i_mptr_bitcast_index_atax0_add_x_p2_of_2_cin;
    wire [4:0] i_mptr_bitcast_index_atax0_add_x_p2_of_2_q;
    wire [64:0] i_mptr_bitcast_index_atax0_add_x_BitJoin_for_q_q;
    wire [13:0] i_mul15_atax29_sums_result_add_0_0_UpperBits_for_b_q;
    wire [60:0] i_mul15_atax29_sums_result_add_0_0_p1_of_2_a;
    wire [60:0] i_mul15_atax29_sums_result_add_0_0_p1_of_2_b;
    logic [60:0] i_mul15_atax29_sums_result_add_0_0_p1_of_2_o;
    wire [0:0] i_mul15_atax29_sums_result_add_0_0_p1_of_2_c;
    wire [59:0] i_mul15_atax29_sums_result_add_0_0_p1_of_2_q;
    wire [6:0] i_mul15_atax29_sums_result_add_0_0_p2_of_2_a;
    wire [6:0] i_mul15_atax29_sums_result_add_0_0_p2_of_2_b;
    logic [6:0] i_mul15_atax29_sums_result_add_0_0_p2_of_2_o;
    wire [0:0] i_mul15_atax29_sums_result_add_0_0_p2_of_2_cin;
    wire [4:0] i_mul15_atax29_sums_result_add_0_0_p2_of_2_q;
    wire [64:0] i_mul15_atax29_sums_result_add_0_0_BitJoin_for_q_q;
    wire [4:0] i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [25:0] i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_b_tessel0_2_b;
    wire [59:0] i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_b_BitJoin_for_b_q;
    wire [3:0] i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_b_tessel1_0_b;
    wire [4:0] i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [4:0] i_mptr_bitcast_index_atax0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [31:0] i_mptr_bitcast_index_atax0_add_x_BitSelect_for_b_tessel0_1_b;
    wire [59:0] i_mptr_bitcast_index_atax0_add_x_BitSelect_for_b_BitJoin_for_b_q;
    wire [59:0] i_mul15_atax29_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q;
    wire [4:0] i_mul15_atax29_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q;
    wire [59:0] i_mul15_atax29_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q;
    wire [59:0] i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    wire [3:0] i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c;
    wire [17:0] i_mul15_atax29_bs1_merged_bit_select_b;
    wire [13:0] i_mul15_atax29_bs1_merged_bit_select_c;
    wire [17:0] i_mul15_atax29_bs2_merged_bit_select_b;
    wire [13:0] i_mul15_atax29_bs2_merged_bit_select_c;
    wire [59:0] i_mptr_bitcast_index_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    wire [3:0] i_mptr_bitcast_index_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c;
    wire [23:0] i_mul15_atax29_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b;
    wire [3:0] i_mul15_atax29_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c;
    wire [8:0] i_mul15_atax29_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b;
    wire [4:0] i_mul15_atax29_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c;
    wire [32:0] join_for_coalesced_delay_0_q;
    wire [31:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [65:0] join_for_coalesced_delay_1_q;
    wire [63:0] sel_for_coalesced_delay_1_b;
    wire [0:0] sel_for_coalesced_delay_1_c;
    wire [0:0] sel_for_coalesced_delay_1_d;
    reg [3:0] redist0_i_mul15_atax29_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_q;
    reg [3:0] redist1_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q;
    reg [3:0] redist2_i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q;
    reg [31:0] redist3_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_b_tessel0_1_b_1_0_q;
    reg [59:0] redist4_i_mul15_atax29_sums_result_add_0_0_p1_of_2_q_1_0_q;
    reg [59:0] redist5_i_mptr_bitcast_index_atax0_add_x_p1_of_2_q_1_0_q;
    reg [59:0] redist6_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_q_1_0_q;
    reg [32:0] redist7_i_mul15_atax29_ma3_cma_q_1_0_q;
    reg [27:0] redist8_i_mul15_atax29_im8_cma_q_1_0_q;
    reg [35:0] redist9_i_mul15_atax29_im0_cma_q_1_0_q;
    reg [0:0] redist10_i_masked_atax47_q_3_0_q;
    reg [0:0] redist10_i_masked_atax47_q_3_1_q;
    reg [63:0] redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_q;
    wire [0:0] redist12_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_68_fifo_valid_in;
    wire redist12_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_68_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist12_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_68_fifo_stall_in;
    wire redist12_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_68_fifo_stall_in_bitsignaltemp;
    wire [63:0] redist12_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_68_fifo_data_in;
    wire [0:0] redist12_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_68_fifo_valid_out;
    wire redist12_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_68_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist12_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_68_fifo_stall_out;
    wire redist12_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_68_fifo_stall_out_bitsignaltemp;
    wire [63:0] redist12_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_68_fifo_data_out;
    wire [0:0] redist13_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_out_data_out_68_fifo_valid_in;
    wire redist13_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_out_data_out_68_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist13_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_out_data_out_68_fifo_stall_in;
    wire redist13_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_out_data_out_68_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist13_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_out_data_out_68_fifo_data_in;
    wire [0:0] redist13_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_out_data_out_68_fifo_valid_out;
    wire redist13_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_out_data_out_68_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist13_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_out_data_out_68_fifo_stall_out;
    wire redist13_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_out_data_out_68_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist13_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_out_data_out_68_fifo_data_out;
    reg [31:0] redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_0_q;
    reg [31:0] redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_1_q;
    reg [31:0] redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_2_q;
    reg [31:0] redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_3_q;
    reg [31:0] redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_4_q;
    reg [31:0] redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_5_q;
    wire [0:0] redist15_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_68_fifo_valid_in;
    wire redist15_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_68_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist15_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_68_fifo_stall_in;
    wire redist15_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_68_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist15_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_68_fifo_data_in;
    wire [0:0] redist15_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_68_fifo_valid_out;
    wire redist15_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_68_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist15_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_68_fifo_stall_out;
    wire redist15_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_68_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist15_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_68_fifo_data_out;
    wire [0:0] redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_valid_in;
    wire redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_stall_in;
    wire redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_data_in;
    wire [0:0] redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_valid_out;
    wire redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_stall_out;
    wire redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_data_out;
    wire [0:0] redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_valid_in;
    wire redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_stall_in;
    wire redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_data_in;
    wire [0:0] redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_valid_out;
    wire redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_stall_out;
    wire redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_data_out;
    wire [0:0] redist18_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_out_data_out_65_fifo_valid_in;
    wire redist18_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_out_data_out_65_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist18_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_out_data_out_65_fifo_stall_in;
    wire redist18_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_out_data_out_65_fifo_stall_in_bitsignaltemp;
    wire [1:0] redist18_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_out_data_out_65_fifo_data_in;
    wire [0:0] redist18_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_out_data_out_65_fifo_valid_out;
    wire redist18_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_out_data_out_65_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist18_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_out_data_out_65_fifo_stall_out;
    wire redist18_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_out_data_out_65_fifo_stall_out_bitsignaltemp;
    wire [1:0] redist18_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_out_data_out_65_fifo_data_out;
    wire [0:0] redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_valid_in;
    wire redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_stall_in;
    wire redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_data_in;
    wire [0:0] redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_valid_out;
    wire redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_stall_out;
    wire redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_data_out;
    wire [0:0] redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_68_fifo_valid_in;
    wire redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_68_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_68_fifo_stall_in;
    wire redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_68_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_68_fifo_data_in;
    wire [0:0] redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_68_fifo_valid_out;
    wire redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_68_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_68_fifo_stall_out;
    wire redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_68_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_68_fifo_data_out;
    reg [0:0] redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_0_q;
    reg [0:0] redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_1_q;
    reg [0:0] redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_2_q;
    reg [0:0] redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_0_q;
    reg [0:0] redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_1_q;
    reg [0:0] redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_2_q;
    reg [0:0] redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_3_q;
    reg [0:0] redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_q;
    wire [0:0] redist23_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_68_fifo_valid_in;
    wire redist23_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_68_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist23_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_68_fifo_stall_in;
    wire redist23_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_68_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist23_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_68_fifo_data_in;
    wire [0:0] redist23_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_68_fifo_valid_out;
    wire redist23_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_68_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist23_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_68_fifo_stall_out;
    wire redist23_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_68_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist23_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_68_fifo_data_out;
    reg [0:0] redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_0_q;
    reg [0:0] redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_1_q;
    reg [0:0] redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_q;
    reg [0:0] redist25_i_first_cleanup_xor_atax2_q_5_0_q;
    reg [0:0] redist25_i_first_cleanup_xor_atax2_q_5_1_q;
    reg [0:0] redist25_i_first_cleanup_xor_atax2_q_5_2_q;
    reg [0:0] redist25_i_first_cleanup_xor_atax2_q_5_3_q;
    reg [0:0] redist25_i_first_cleanup_xor_atax2_q_5_4_q;
    wire [0:0] redist26_i_first_cleanup_xor_atax2_q_37_fifo_valid_in;
    wire redist26_i_first_cleanup_xor_atax2_q_37_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist26_i_first_cleanup_xor_atax2_q_37_fifo_stall_in;
    wire redist26_i_first_cleanup_xor_atax2_q_37_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist26_i_first_cleanup_xor_atax2_q_37_fifo_data_in;
    wire [0:0] redist26_i_first_cleanup_xor_atax2_q_37_fifo_valid_out;
    wire redist26_i_first_cleanup_xor_atax2_q_37_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist26_i_first_cleanup_xor_atax2_q_37_fifo_stall_out;
    wire redist26_i_first_cleanup_xor_atax2_q_37_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist26_i_first_cleanup_xor_atax2_q_37_fifo_data_out;
    wire [0:0] redist27_i_first_cleanup_xor_atax2_q_65_fifo_valid_in;
    wire redist27_i_first_cleanup_xor_atax2_q_65_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist27_i_first_cleanup_xor_atax2_q_65_fifo_stall_in;
    wire redist27_i_first_cleanup_xor_atax2_q_65_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist27_i_first_cleanup_xor_atax2_q_65_fifo_data_in;
    wire [0:0] redist27_i_first_cleanup_xor_atax2_q_65_fifo_valid_out;
    wire redist27_i_first_cleanup_xor_atax2_q_65_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist27_i_first_cleanup_xor_atax2_q_65_fifo_stall_out;
    wire redist27_i_first_cleanup_xor_atax2_q_65_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist27_i_first_cleanup_xor_atax2_q_65_fifo_data_out;
    wire [0:0] redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_valid_in;
    wire redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_stall_in;
    wire redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_stall_in_bitsignaltemp;
    wire [63:0] redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_data_in;
    wire [0:0] redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_valid_out;
    wire redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_stall_out;
    wire redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_stall_out_bitsignaltemp;
    wire [63:0] redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_data_out;
    wire [0:0] redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_valid_in;
    wire redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_stall_in;
    wire redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_data_in;
    wire [0:0] redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_valid_out;
    wire redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_stall_out;
    wire redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_data_out;
    wire [0:0] redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_valid_in;
    wire redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_stall_in;
    wire redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_data_in;
    wire [0:0] redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_valid_out;
    wire redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_stall_out;
    wire redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_data_out;
    reg [0:0] redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_q;
    reg [0:0] redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_q;
    reg [0:0] redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_2_q;
    reg [32:0] coalesced_delay_0_0_q;
    reg [32:0] coalesced_delay_0_1_q;
    reg [32:0] coalesced_delay_0_2_q;
    wire [0:0] coalesced_delay_1_fifo_valid_in;
    wire coalesced_delay_1_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_in;
    wire coalesced_delay_1_fifo_stall_in_bitsignaltemp;
    wire [65:0] coalesced_delay_1_fifo_data_in;
    wire [0:0] coalesced_delay_1_fifo_valid_out;
    wire coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_out;
    wire coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    wire [65:0] coalesced_delay_1_fifo_data_out;
    wire [196:0] bubble_join_atax_B5_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_atax_B5_merge_reg_aunroll_x_b;
    wire [63:0] bubble_select_atax_B5_merge_reg_aunroll_x_c;
    wire [31:0] bubble_select_atax_B5_merge_reg_aunroll_x_d;
    wire [0:0] bubble_select_atax_B5_merge_reg_aunroll_x_e;
    wire [0:0] bubble_select_atax_B5_merge_reg_aunroll_x_f;
    wire [31:0] bubble_select_atax_B5_merge_reg_aunroll_x_g;
    wire [63:0] bubble_select_atax_B5_merge_reg_aunroll_x_h;
    wire [0:0] bubble_select_atax_B5_merge_reg_aunroll_x_i;
    wire [0:0] bubble_select_atax_B5_merge_reg_aunroll_x_j;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12_b;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_atax33_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_atax33_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_atax15_atax16_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_atax15_atax16_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_atax17_atax26_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_atax17_atax26_b;
    wire [0:0] bubble_join_i_llvm_fpga_pipeline_keep_going_atax4_q;
    wire [0:0] bubble_select_i_llvm_fpga_pipeline_keep_going_atax4_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi1_pop27_atax24_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi1_pop27_atax24_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_b;
    wire [1:0] bubble_join_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_q;
    wire [1:0] bubble_select_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_b;
    wire [1:0] bubble_join_i_llvm_fpga_pop_i2_initerations_pop28_atax5_q;
    wire [1:0] bubble_select_i_llvm_fpga_pop_i2_initerations_pop28_atax5_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_add758_pop37_atax27_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_add758_pop37_atax27_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_j_175_pop26_atax10_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_j_175_pop26_atax10_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_b;
    wire [5:0] bubble_join_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_q;
    wire [5:0] bubble_select_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_b;
    wire [63:0] bubble_join_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_q;
    wire [63:0] bubble_select_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_b;
    wire [63:0] bubble_join_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_q;
    wire [63:0] bubble_select_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_b;
    wire [196:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [63:0] bubble_select_stall_entry_e;
    wire [63:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [0:0] bubble_select_stall_entry_h;
    wire [31:0] bubble_select_stall_entry_i;
    wire [0:0] bubble_select_stall_entry_j;
    wire [35:0] bubble_join_i_mul15_atax29_im0_cma_q;
    wire [35:0] bubble_select_i_mul15_atax29_im0_cma_b;
    wire [27:0] bubble_join_i_mul15_atax29_im8_cma_q;
    wire [27:0] bubble_select_i_mul15_atax29_im8_cma_b;
    wire [32:0] bubble_join_i_mul15_atax29_ma3_cma_q;
    wire [32:0] bubble_select_i_mul15_atax29_ma3_cma_b;
    wire [63:0] bubble_join_redist12_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_68_fifo_q;
    wire [63:0] bubble_select_redist12_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_68_fifo_b;
    wire [31:0] bubble_join_redist13_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_out_data_out_68_fifo_q;
    wire [31:0] bubble_select_redist13_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_out_data_out_68_fifo_b;
    wire [31:0] bubble_join_redist15_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_68_fifo_q;
    wire [31:0] bubble_select_redist15_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_68_fifo_b;
    wire [31:0] bubble_join_redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_q;
    wire [31:0] bubble_select_redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_b;
    wire [31:0] bubble_join_redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_q;
    wire [31:0] bubble_select_redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_b;
    wire [1:0] bubble_join_redist18_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_out_data_out_65_fifo_q;
    wire [1:0] bubble_select_redist18_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_out_data_out_65_fifo_b;
    wire [0:0] bubble_join_redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_q;
    wire [0:0] bubble_select_redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_b;
    wire [0:0] bubble_join_redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_68_fifo_q;
    wire [0:0] bubble_select_redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_68_fifo_b;
    wire [0:0] bubble_join_redist23_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_68_fifo_q;
    wire [0:0] bubble_select_redist23_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_68_fifo_b;
    wire [0:0] bubble_join_redist26_i_first_cleanup_xor_atax2_q_37_fifo_q;
    wire [0:0] bubble_select_redist26_i_first_cleanup_xor_atax2_q_37_fifo_b;
    wire [0:0] bubble_join_redist27_i_first_cleanup_xor_atax2_q_65_fifo_q;
    wire [0:0] bubble_select_redist27_i_first_cleanup_xor_atax2_q_65_fifo_b;
    wire [63:0] bubble_join_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_q;
    wire [63:0] bubble_select_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_b;
    wire [0:0] bubble_join_redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_q;
    wire [0:0] bubble_select_redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_b;
    wire [0:0] bubble_join_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_q;
    wire [0:0] bubble_select_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_b;
    wire [65:0] bubble_join_coalesced_delay_1_fifo_q;
    wire [65:0] bubble_select_coalesced_delay_1_fifo_b;
    wire [0:0] SE_out_atax_B5_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_atax_B5_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_atax_B5_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_atax_B5_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_atax_B5_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_atax_B5_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_atax_B5_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_atax_B5_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_atax_B5_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_atax_B5_merge_reg_aunroll_x_toReg2;
    reg [0:0] SE_out_atax_B5_merge_reg_aunroll_x_fromReg2;
    wire [0:0] SE_out_atax_B5_merge_reg_aunroll_x_consumed2;
    wire [0:0] SE_out_atax_B5_merge_reg_aunroll_x_toReg3;
    reg [0:0] SE_out_atax_B5_merge_reg_aunroll_x_fromReg3;
    wire [0:0] SE_out_atax_B5_merge_reg_aunroll_x_consumed3;
    wire [0:0] SE_out_atax_B5_merge_reg_aunroll_x_toReg4;
    reg [0:0] SE_out_atax_B5_merge_reg_aunroll_x_fromReg4;
    wire [0:0] SE_out_atax_B5_merge_reg_aunroll_x_consumed4;
    wire [0:0] SE_out_atax_B5_merge_reg_aunroll_x_toReg5;
    reg [0:0] SE_out_atax_B5_merge_reg_aunroll_x_fromReg5;
    wire [0:0] SE_out_atax_B5_merge_reg_aunroll_x_consumed5;
    wire [0:0] SE_out_atax_B5_merge_reg_aunroll_x_toReg6;
    reg [0:0] SE_out_atax_B5_merge_reg_aunroll_x_fromReg6;
    wire [0:0] SE_out_atax_B5_merge_reg_aunroll_x_consumed6;
    wire [0:0] SE_out_atax_B5_merge_reg_aunroll_x_toReg7;
    reg [0:0] SE_out_atax_B5_merge_reg_aunroll_x_fromReg7;
    wire [0:0] SE_out_atax_B5_merge_reg_aunroll_x_consumed7;
    wire [0:0] SE_out_atax_B5_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_atax_B5_merge_reg_aunroll_x_or1;
    wire [0:0] SE_out_atax_B5_merge_reg_aunroll_x_or2;
    wire [0:0] SE_out_atax_B5_merge_reg_aunroll_x_or3;
    wire [0:0] SE_out_atax_B5_merge_reg_aunroll_x_or4;
    wire [0:0] SE_out_atax_B5_merge_reg_aunroll_x_or5;
    wire [0:0] SE_out_atax_B5_merge_reg_aunroll_x_or6;
    wire [0:0] SE_out_atax_B5_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_atax_B5_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_atax_B5_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_atax_B5_merge_reg_aunroll_x_V2;
    wire [0:0] SE_out_atax_B5_merge_reg_aunroll_x_V3;
    wire [0:0] SE_out_atax_B5_merge_reg_aunroll_x_V4;
    wire [0:0] SE_out_atax_B5_merge_reg_aunroll_x_V5;
    wire [0:0] SE_out_atax_B5_merge_reg_aunroll_x_V6;
    wire [0:0] SE_out_atax_B5_merge_reg_aunroll_x_V7;
    wire [0:0] SE_i_add13_atax19_wireValid;
    wire [0:0] SE_i_add13_atax19_and0;
    wire [0:0] SE_i_add13_atax19_backStall;
    wire [0:0] SE_i_add13_atax19_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_atax33_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_atax33_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_atax33_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_atax33_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_atax33_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_atax33_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_atax33_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_atax33_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_atax33_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_atax33_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_atax33_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_atax33_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_atax33_V1;
    wire [0:0] SE_in_i_llvm_fpga_mem_unnamed_atax15_atax16_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_mem_unnamed_atax15_atax16_backStall;
    wire [0:0] SE_in_i_llvm_fpga_mem_unnamed_atax15_atax16_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_atax17_atax26_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_atax17_atax26_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_atax17_atax26_V0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax4_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax4_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax4_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax4_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax4_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax4_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax4_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax4_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax4_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax4_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax4_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax4_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax4_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax4_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax4_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax4_toReg4;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax4_fromReg4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax4_consumed4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax4_toReg5;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax4_fromReg5;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax4_consumed5;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax4_toReg6;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax4_fromReg6;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax4_consumed6;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax4_toReg7;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax4_fromReg7;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax4_consumed7;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax4_toReg8;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax4_fromReg8;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax4_consumed8;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax4_or0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax4_or1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax4_or2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax4_or3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax4_or4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax4_or5;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax4_or6;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax4_or7;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax4_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax4_V0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax4_V1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax4_V2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax4_V3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax4_V4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax4_V5;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax4_V6;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax4_V7;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax4_V8;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop27_atax24_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop27_atax24_and0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop27_atax24_and1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop27_atax24_and2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop27_atax24_and3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop27_atax24_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop27_atax24_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_or2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_V3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop28_atax5_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop28_atax5_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop28_atax5_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop28_atax5_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop28_atax5_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop28_atax5_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop28_atax5_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop28_atax5_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop28_atax5_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop28_atax5_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop28_atax5_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop28_atax5_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop28_atax5_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_add758_pop37_atax27_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_add758_pop37_atax27_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_add758_pop37_atax27_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_175_pop26_atax10_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_175_pop26_atax10_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_175_pop26_atax10_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_175_pop26_atax10_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_j_175_pop26_atax10_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_175_pop26_atax10_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_175_pop26_atax10_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_j_175_pop26_atax10_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_175_pop26_atax10_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_175_pop26_atax10_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_175_pop26_atax10_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_175_pop26_atax10_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_175_pop26_atax10_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_toReg4;
    reg [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_fromReg4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_consumed4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_or2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_or3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_V3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_V4;
    wire [0:0] SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_V1;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_exitcond1251_push32_atax51_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_exitcond1251_push32_atax51_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_exitcond1251_push32_atax51_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_exitcond1251_push32_atax51_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_exitcond1251_push32_atax51_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_exitcond1251_push32_atax51_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_lastiniteration_atax9_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_lastiniteration_atax9_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi1_push27_atax34_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi1_push27_atax34_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi1_push27_atax34_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi1_push27_atax34_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi1_push27_atax34_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi1_push27_atax34_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi3_or57_push36_atax15_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi3_or57_push36_atax15_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi3_pop1355_push34_atax32_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi3_pop1355_push34_atax32_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp3553_push33_atax53_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp3553_push33_atax53_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp3553_push33_atax53_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp3553_push33_atax53_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notcmp3553_push33_atax53_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notcmp3553_push33_atax53_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_atax41_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_atax41_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_atax41_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_atax41_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond_atax41_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond_atax41_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i2_cleanups_push29_atax44_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i2_cleanups_push29_atax44_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i2_initerations_push28_atax7_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i2_initerations_push28_atax7_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_add758_push37_atax28_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_add758_push37_atax28_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_add758_push37_atax28_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_add758_push37_atax28_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_add758_push37_atax28_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_add758_push37_atax28_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_j_175_push26_atax36_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_j_175_push26_atax36_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_mul_add1449_push31_atax18_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_mul_add1449_push31_atax18_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv7_push25_atax46_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv7_push25_atax46_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv7_push25_atax46_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv7_push25_atax46_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i6_fpga_indvars_iv7_push25_atax46_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i6_fpga_indvars_iv7_push25_atax46_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_p1025i32_mptr_bitcast778956_push35_atax22_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_p1025i32_mptr_bitcast778956_push35_atax22_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_p1025i32_mptr_bitcast_index8846_push30_atax49_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_p1025i32_mptr_bitcast_index8846_push30_atax49_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_p1025i32_mptr_bitcast_index8846_push30_atax49_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_p1025i32_mptr_bitcast_index8846_push30_atax49_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_p1025i32_mptr_bitcast_index8846_push30_atax49_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_p1025i32_mptr_bitcast_index8846_push30_atax49_backStall;
    reg [0:0] SE_i_masked_atax47_R_v_0;
    wire [0:0] SE_i_masked_atax47_v_s_0;
    wire [0:0] SE_i_masked_atax47_s_tv_0;
    wire [0:0] SE_i_masked_atax47_backEN;
    wire [0:0] SE_i_masked_atax47_backStall;
    wire [0:0] SE_i_masked_atax47_V0;
    wire [0:0] SE_i_next_initerations_atax6_vt_select_0_wireValid;
    wire [0:0] SE_i_next_initerations_atax6_vt_select_0_wireStall;
    wire [0:0] SE_i_next_initerations_atax6_vt_select_0_StallValid;
    wire [0:0] SE_i_next_initerations_atax6_vt_select_0_toReg0;
    reg [0:0] SE_i_next_initerations_atax6_vt_select_0_fromReg0;
    wire [0:0] SE_i_next_initerations_atax6_vt_select_0_consumed0;
    wire [0:0] SE_i_next_initerations_atax6_vt_select_0_toReg1;
    reg [0:0] SE_i_next_initerations_atax6_vt_select_0_fromReg1;
    wire [0:0] SE_i_next_initerations_atax6_vt_select_0_consumed1;
    wire [0:0] SE_i_next_initerations_atax6_vt_select_0_or0;
    wire [0:0] SE_i_next_initerations_atax6_vt_select_0_backStall;
    wire [0:0] SE_i_next_initerations_atax6_vt_select_0_V0;
    wire [0:0] SE_i_next_initerations_atax6_vt_select_0_V1;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_i_mul15_atax29_sums_align_1_wireValid;
    wire [0:0] SE_i_mul15_atax29_sums_align_1_and0;
    wire [0:0] SE_i_mul15_atax29_sums_align_1_backStall;
    wire [0:0] SE_i_mul15_atax29_sums_align_1_V0;
    reg [0:0] SE_i_mul15_atax29_im0_cma_R_s_0;
    reg [0:0] SE_i_mul15_atax29_im0_cma_R_v_0;
    reg [0:0] SE_i_mul15_atax29_im0_cma_R_v_1;
    reg [0:0] SE_i_mul15_atax29_im0_cma_R_v_2;
    wire [0:0] SE_i_mul15_atax29_im0_cma_v_s_0;
    wire [0:0] SE_i_mul15_atax29_im0_cma_s_tv_0;
    wire [0:0] SE_i_mul15_atax29_im0_cma_s_tv_1;
    wire [0:0] SE_i_mul15_atax29_im0_cma_s_tv_2;
    wire [0:0] SE_i_mul15_atax29_im0_cma_backEN;
    wire [0:0] SE_i_mul15_atax29_im0_cma_and0;
    wire [0:0] SE_i_mul15_atax29_im0_cma_or0;
    wire [0:0] SE_i_mul15_atax29_im0_cma_or1;
    wire [0:0] SE_i_mul15_atax29_im0_cma_backStall;
    wire [0:0] SE_i_mul15_atax29_im0_cma_V0;
    wire [0:0] SE_i_mul15_atax29_im0_cma_V1;
    wire [0:0] SE_i_mul15_atax29_im0_cma_V2;
    reg [0:0] SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_R_v_0;
    reg [0:0] SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_R_v_1;
    wire [0:0] SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_v_s_0;
    wire [0:0] SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_s_tv_0;
    wire [0:0] SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_s_tv_1;
    wire [0:0] SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_backEN;
    wire [0:0] SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_or0;
    wire [0:0] SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_backStall;
    wire [0:0] SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_V0;
    wire [0:0] SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_V1;
    reg [0:0] SE_i_mptr_bitcast_index84_atax0_add_x_p2_of_2_R_v_0;
    wire [0:0] SE_i_mptr_bitcast_index84_atax0_add_x_p2_of_2_v_s_0;
    wire [0:0] SE_i_mptr_bitcast_index84_atax0_add_x_p2_of_2_s_tv_0;
    wire [0:0] SE_i_mptr_bitcast_index84_atax0_add_x_p2_of_2_backEN;
    wire [0:0] SE_i_mptr_bitcast_index84_atax0_add_x_p2_of_2_and0;
    wire [0:0] SE_i_mptr_bitcast_index84_atax0_add_x_p2_of_2_and1;
    wire [0:0] SE_i_mptr_bitcast_index84_atax0_add_x_p2_of_2_backStall;
    wire [0:0] SE_i_mptr_bitcast_index84_atax0_add_x_p2_of_2_V0;
    wire [0:0] SE_i_mptr_bitcast_index84_atax0_add_x_BitJoin_for_q_wireValid;
    wire [0:0] SE_i_mptr_bitcast_index84_atax0_add_x_BitJoin_for_q_wireStall;
    wire [0:0] SE_i_mptr_bitcast_index84_atax0_add_x_BitJoin_for_q_StallValid;
    wire [0:0] SE_i_mptr_bitcast_index84_atax0_add_x_BitJoin_for_q_toReg0;
    reg [0:0] SE_i_mptr_bitcast_index84_atax0_add_x_BitJoin_for_q_fromReg0;
    wire [0:0] SE_i_mptr_bitcast_index84_atax0_add_x_BitJoin_for_q_consumed0;
    wire [0:0] SE_i_mptr_bitcast_index84_atax0_add_x_BitJoin_for_q_toReg1;
    reg [0:0] SE_i_mptr_bitcast_index84_atax0_add_x_BitJoin_for_q_fromReg1;
    wire [0:0] SE_i_mptr_bitcast_index84_atax0_add_x_BitJoin_for_q_consumed1;
    wire [0:0] SE_i_mptr_bitcast_index84_atax0_add_x_BitJoin_for_q_and0;
    wire [0:0] SE_i_mptr_bitcast_index84_atax0_add_x_BitJoin_for_q_or0;
    wire [0:0] SE_i_mptr_bitcast_index84_atax0_add_x_BitJoin_for_q_backStall;
    wire [0:0] SE_i_mptr_bitcast_index84_atax0_add_x_BitJoin_for_q_V0;
    wire [0:0] SE_i_mptr_bitcast_index84_atax0_add_x_BitJoin_for_q_V1;
    reg [0:0] SE_i_mptr_bitcast_index_atax0_add_x_p1_of_2_R_v_0;
    reg [0:0] SE_i_mptr_bitcast_index_atax0_add_x_p1_of_2_R_v_1;
    wire [0:0] SE_i_mptr_bitcast_index_atax0_add_x_p1_of_2_v_s_0;
    wire [0:0] SE_i_mptr_bitcast_index_atax0_add_x_p1_of_2_s_tv_0;
    wire [0:0] SE_i_mptr_bitcast_index_atax0_add_x_p1_of_2_s_tv_1;
    wire [0:0] SE_i_mptr_bitcast_index_atax0_add_x_p1_of_2_backEN;
    wire [0:0] SE_i_mptr_bitcast_index_atax0_add_x_p1_of_2_and0;
    wire [0:0] SE_i_mptr_bitcast_index_atax0_add_x_p1_of_2_or0;
    wire [0:0] SE_i_mptr_bitcast_index_atax0_add_x_p1_of_2_backStall;
    wire [0:0] SE_i_mptr_bitcast_index_atax0_add_x_p1_of_2_V0;
    wire [0:0] SE_i_mptr_bitcast_index_atax0_add_x_p1_of_2_V1;
    reg [0:0] SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_R_v_0;
    wire [0:0] SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_v_s_0;
    wire [0:0] SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_s_tv_0;
    wire [0:0] SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_backEN;
    wire [0:0] SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_backStall;
    wire [0:0] SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_V0;
    reg [0:0] SE_i_mul15_atax29_sums_result_add_0_0_p1_of_2_R_v_0;
    reg [0:0] SE_i_mul15_atax29_sums_result_add_0_0_p1_of_2_R_v_1;
    wire [0:0] SE_i_mul15_atax29_sums_result_add_0_0_p1_of_2_v_s_0;
    wire [0:0] SE_i_mul15_atax29_sums_result_add_0_0_p1_of_2_s_tv_0;
    wire [0:0] SE_i_mul15_atax29_sums_result_add_0_0_p1_of_2_s_tv_1;
    wire [0:0] SE_i_mul15_atax29_sums_result_add_0_0_p1_of_2_backEN;
    wire [0:0] SE_i_mul15_atax29_sums_result_add_0_0_p1_of_2_and0;
    wire [0:0] SE_i_mul15_atax29_sums_result_add_0_0_p1_of_2_or0;
    wire [0:0] SE_i_mul15_atax29_sums_result_add_0_0_p1_of_2_backStall;
    wire [0:0] SE_i_mul15_atax29_sums_result_add_0_0_p1_of_2_V0;
    wire [0:0] SE_i_mul15_atax29_sums_result_add_0_0_p1_of_2_V1;
    reg [0:0] SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_R_v_0;
    wire [0:0] SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_v_s_0;
    wire [0:0] SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_s_tv_0;
    wire [0:0] SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_backEN;
    wire [0:0] SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_backStall;
    wire [0:0] SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_V0;
    wire [0:0] SE_i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_b_tessel0_2_V0;
    wire [0:0] SE_i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_b_tessel0_2_V1;
    wire [0:0] SE_i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid;
    wire [0:0] SE_i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_b_BitJoin_for_b_and0;
    wire [0:0] SE_i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_b_BitJoin_for_b_backStall;
    wire [0:0] SE_i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_b_BitJoin_for_b_V0;
    wire [0:0] SE_i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_b_tessel1_0_V0;
    wire [0:0] SE_i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_b_tessel1_0_V1;
    wire [0:0] SE_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_a_BitJoin_for_c_wireValid;
    wire [0:0] SE_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_a_BitJoin_for_c_backStall;
    wire [0:0] SE_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_a_BitJoin_for_c_V0;
    wire [0:0] SE_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid;
    wire [0:0] SE_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_b_BitJoin_for_b_and0;
    wire [0:0] SE_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_b_BitJoin_for_b_backStall;
    wire [0:0] SE_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_b_BitJoin_for_b_V0;
    wire [0:0] SE_i_mul15_atax29_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_wireValid;
    wire [0:0] SE_i_mul15_atax29_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_and0;
    wire [0:0] SE_i_mul15_atax29_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_backStall;
    wire [0:0] SE_i_mul15_atax29_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_V0;
    wire [0:0] SE_i_mul15_atax29_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_V0;
    wire [0:0] SE_i_mul15_atax29_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_V1;
    reg [0:0] SE_redist0_i_mul15_atax29_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_R_v_0;
    wire [0:0] SE_redist0_i_mul15_atax29_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_v_s_0;
    wire [0:0] SE_redist0_i_mul15_atax29_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_s_tv_0;
    wire [0:0] SE_redist0_i_mul15_atax29_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backEN;
    wire [0:0] SE_redist0_i_mul15_atax29_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backStall;
    wire [0:0] SE_redist0_i_mul15_atax29_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_V0;
    reg [0:0] SE_redist1_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    wire [0:0] SE_redist1_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
    wire [0:0] SE_redist1_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
    wire [0:0] SE_redist1_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN;
    wire [0:0] SE_redist1_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall;
    wire [0:0] SE_redist1_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0;
    reg [0:0] SE_redist2_i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    wire [0:0] SE_redist2_i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
    wire [0:0] SE_redist2_i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
    wire [0:0] SE_redist2_i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN;
    wire [0:0] SE_redist2_i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall;
    wire [0:0] SE_redist2_i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0;
    reg [0:0] SE_redist3_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_b_tessel0_1_b_1_0_R_v_0;
    wire [0:0] SE_redist3_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_b_tessel0_1_b_1_0_v_s_0;
    wire [0:0] SE_redist3_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_b_tessel0_1_b_1_0_s_tv_0;
    wire [0:0] SE_redist3_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_b_tessel0_1_b_1_0_backEN;
    wire [0:0] SE_redist3_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_b_tessel0_1_b_1_0_backStall;
    wire [0:0] SE_redist3_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_b_tessel0_1_b_1_0_V0;
    reg [0:0] SE_redist4_i_mul15_atax29_sums_result_add_0_0_p1_of_2_q_1_0_R_v_0;
    wire [0:0] SE_redist4_i_mul15_atax29_sums_result_add_0_0_p1_of_2_q_1_0_v_s_0;
    wire [0:0] SE_redist4_i_mul15_atax29_sums_result_add_0_0_p1_of_2_q_1_0_s_tv_0;
    wire [0:0] SE_redist4_i_mul15_atax29_sums_result_add_0_0_p1_of_2_q_1_0_backEN;
    wire [0:0] SE_redist4_i_mul15_atax29_sums_result_add_0_0_p1_of_2_q_1_0_backStall;
    wire [0:0] SE_redist4_i_mul15_atax29_sums_result_add_0_0_p1_of_2_q_1_0_V0;
    reg [0:0] SE_redist5_i_mptr_bitcast_index_atax0_add_x_p1_of_2_q_1_0_R_v_0;
    wire [0:0] SE_redist5_i_mptr_bitcast_index_atax0_add_x_p1_of_2_q_1_0_v_s_0;
    wire [0:0] SE_redist5_i_mptr_bitcast_index_atax0_add_x_p1_of_2_q_1_0_s_tv_0;
    wire [0:0] SE_redist5_i_mptr_bitcast_index_atax0_add_x_p1_of_2_q_1_0_backEN;
    wire [0:0] SE_redist5_i_mptr_bitcast_index_atax0_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SE_redist5_i_mptr_bitcast_index_atax0_add_x_p1_of_2_q_1_0_V0;
    reg [0:0] SE_redist6_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_q_1_0_R_v_0;
    wire [0:0] SE_redist6_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_q_1_0_v_s_0;
    wire [0:0] SE_redist6_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_q_1_0_s_tv_0;
    wire [0:0] SE_redist6_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_q_1_0_backEN;
    wire [0:0] SE_redist6_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SE_redist6_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_q_1_0_V0;
    reg [0:0] SE_redist7_i_mul15_atax29_ma3_cma_q_1_0_R_v_0;
    wire [0:0] SE_redist7_i_mul15_atax29_ma3_cma_q_1_0_v_s_0;
    wire [0:0] SE_redist7_i_mul15_atax29_ma3_cma_q_1_0_s_tv_0;
    wire [0:0] SE_redist7_i_mul15_atax29_ma3_cma_q_1_0_backEN;
    wire [0:0] SE_redist7_i_mul15_atax29_ma3_cma_q_1_0_backStall;
    wire [0:0] SE_redist7_i_mul15_atax29_ma3_cma_q_1_0_V0;
    reg [0:0] SE_redist8_i_mul15_atax29_im8_cma_q_1_0_R_v_0;
    reg [0:0] SE_redist8_i_mul15_atax29_im8_cma_q_1_0_R_v_1;
    wire [0:0] SE_redist8_i_mul15_atax29_im8_cma_q_1_0_v_s_0;
    wire [0:0] SE_redist8_i_mul15_atax29_im8_cma_q_1_0_s_tv_0;
    wire [0:0] SE_redist8_i_mul15_atax29_im8_cma_q_1_0_s_tv_1;
    wire [0:0] SE_redist8_i_mul15_atax29_im8_cma_q_1_0_backEN;
    wire [0:0] SE_redist8_i_mul15_atax29_im8_cma_q_1_0_or0;
    wire [0:0] SE_redist8_i_mul15_atax29_im8_cma_q_1_0_backStall;
    wire [0:0] SE_redist8_i_mul15_atax29_im8_cma_q_1_0_V0;
    wire [0:0] SE_redist8_i_mul15_atax29_im8_cma_q_1_0_V1;
    reg [0:0] SE_redist9_i_mul15_atax29_im0_cma_q_1_0_R_v_0;
    wire [0:0] SE_redist9_i_mul15_atax29_im0_cma_q_1_0_v_s_0;
    wire [0:0] SE_redist9_i_mul15_atax29_im0_cma_q_1_0_s_tv_0;
    wire [0:0] SE_redist9_i_mul15_atax29_im0_cma_q_1_0_backEN;
    wire [0:0] SE_redist9_i_mul15_atax29_im0_cma_q_1_0_backStall;
    wire [0:0] SE_redist9_i_mul15_atax29_im0_cma_q_1_0_V0;
    reg [0:0] SE_redist10_i_masked_atax47_q_3_0_R_v_0;
    wire [0:0] SE_redist10_i_masked_atax47_q_3_0_v_s_0;
    wire [0:0] SE_redist10_i_masked_atax47_q_3_0_s_tv_0;
    wire [0:0] SE_redist10_i_masked_atax47_q_3_0_backEN;
    wire [0:0] SE_redist10_i_masked_atax47_q_3_0_backStall;
    wire [0:0] SE_redist10_i_masked_atax47_q_3_0_V0;
    reg [0:0] SE_redist10_i_masked_atax47_q_3_1_R_v_0;
    wire [0:0] SE_redist10_i_masked_atax47_q_3_1_v_s_0;
    wire [0:0] SE_redist10_i_masked_atax47_q_3_1_s_tv_0;
    wire [0:0] SE_redist10_i_masked_atax47_q_3_1_backEN;
    wire [0:0] SE_redist10_i_masked_atax47_q_3_1_backStall;
    wire [0:0] SE_redist10_i_masked_atax47_q_3_1_V0;
    reg [0:0] SE_redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_R_v_0;
    reg [0:0] SE_redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_R_v_1;
    reg [0:0] SE_redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_R_v_2;
    wire [0:0] SE_redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_v_s_0;
    wire [0:0] SE_redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_s_tv_0;
    wire [0:0] SE_redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_s_tv_1;
    wire [0:0] SE_redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_s_tv_2;
    wire [0:0] SE_redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_backEN;
    wire [0:0] SE_redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_or0;
    wire [0:0] SE_redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_or1;
    wire [0:0] SE_redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_backStall;
    wire [0:0] SE_redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_V0;
    wire [0:0] SE_redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_V1;
    wire [0:0] SE_redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_V2;
    wire [0:0] SE_out_redist12_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_68_fifo_wireValid;
    wire [0:0] SE_out_redist12_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_68_fifo_and0;
    wire [0:0] SE_out_redist12_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_68_fifo_backStall;
    wire [0:0] SE_out_redist12_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_68_fifo_V0;
    wire [0:0] SE_out_redist13_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_out_data_out_68_fifo_wireValid;
    wire [0:0] SE_out_redist13_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_out_data_out_68_fifo_and0;
    wire [0:0] SE_out_redist13_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_out_data_out_68_fifo_backStall;
    wire [0:0] SE_out_redist13_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_out_data_out_68_fifo_V0;
    reg [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_0_R_v_0;
    wire [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_0_v_s_0;
    wire [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_0_s_tv_0;
    wire [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_0_backEN;
    wire [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_0_backStall;
    wire [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_0_V0;
    reg [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_1_R_v_0;
    wire [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_1_v_s_0;
    wire [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_1_s_tv_0;
    wire [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_1_backEN;
    wire [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_1_backStall;
    wire [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_1_V0;
    reg [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_2_R_v_0;
    wire [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_2_v_s_0;
    wire [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_2_s_tv_0;
    wire [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_2_backEN;
    wire [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_2_backStall;
    wire [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_2_V0;
    reg [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_3_R_v_0;
    wire [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_3_v_s_0;
    wire [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_3_s_tv_0;
    wire [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_3_backEN;
    wire [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_3_backStall;
    wire [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_3_V0;
    reg [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_4_R_v_0;
    wire [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_4_v_s_0;
    wire [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_4_s_tv_0;
    wire [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_4_backEN;
    wire [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_4_backStall;
    wire [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_4_V0;
    reg [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_5_R_v_0;
    reg [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_5_R_v_1;
    wire [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_5_v_s_0;
    wire [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_5_s_tv_0;
    wire [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_5_s_tv_1;
    wire [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_5_backEN;
    wire [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_5_or0;
    wire [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_5_backStall;
    wire [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_5_V0;
    wire [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_5_V1;
    wire [0:0] SE_out_redist15_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_68_fifo_wireValid;
    wire [0:0] SE_out_redist15_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_68_fifo_and0;
    wire [0:0] SE_out_redist15_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_68_fifo_backStall;
    wire [0:0] SE_out_redist15_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_68_fifo_V0;
    wire [0:0] SE_out_redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_wireValid;
    wire [0:0] SE_out_redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_wireStall;
    wire [0:0] SE_out_redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_StallValid;
    wire [0:0] SE_out_redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_toReg0;
    reg [0:0] SE_out_redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_fromReg0;
    wire [0:0] SE_out_redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_consumed0;
    wire [0:0] SE_out_redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_toReg1;
    reg [0:0] SE_out_redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_fromReg1;
    wire [0:0] SE_out_redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_consumed1;
    wire [0:0] SE_out_redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_or0;
    wire [0:0] SE_out_redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_backStall;
    wire [0:0] SE_out_redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_V0;
    wire [0:0] SE_out_redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_V1;
    wire [0:0] SE_out_redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_wireValid;
    wire [0:0] SE_out_redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_wireStall;
    wire [0:0] SE_out_redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_StallValid;
    wire [0:0] SE_out_redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_toReg0;
    reg [0:0] SE_out_redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_fromReg0;
    wire [0:0] SE_out_redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_consumed0;
    wire [0:0] SE_out_redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_toReg1;
    reg [0:0] SE_out_redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_fromReg1;
    wire [0:0] SE_out_redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_consumed1;
    wire [0:0] SE_out_redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_or0;
    wire [0:0] SE_out_redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_backStall;
    wire [0:0] SE_out_redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_V0;
    wire [0:0] SE_out_redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_V1;
    wire [0:0] SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_wireValid;
    wire [0:0] SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_wireStall;
    wire [0:0] SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_StallValid;
    wire [0:0] SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_toReg0;
    reg [0:0] SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_fromReg0;
    wire [0:0] SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_consumed0;
    wire [0:0] SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_toReg1;
    reg [0:0] SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_fromReg1;
    wire [0:0] SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_consumed1;
    wire [0:0] SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_or0;
    wire [0:0] SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_backStall;
    wire [0:0] SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_V0;
    wire [0:0] SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_V1;
    wire [0:0] SE_out_redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_68_fifo_wireValid;
    wire [0:0] SE_out_redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_68_fifo_and0;
    wire [0:0] SE_out_redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_68_fifo_backStall;
    wire [0:0] SE_out_redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_68_fifo_V0;
    reg [0:0] SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_0_R_v_0;
    wire [0:0] SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_0_v_s_0;
    wire [0:0] SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_0_s_tv_0;
    wire [0:0] SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_0_backEN;
    wire [0:0] SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_0_backStall;
    wire [0:0] SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_0_V0;
    reg [0:0] SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_1_R_v_0;
    wire [0:0] SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_1_v_s_0;
    wire [0:0] SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_1_s_tv_0;
    wire [0:0] SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_1_backEN;
    wire [0:0] SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_1_backStall;
    wire [0:0] SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_1_V0;
    reg [0:0] SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_2_R_v_0;
    reg [0:0] SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_2_R_v_1;
    wire [0:0] SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_2_v_s_0;
    wire [0:0] SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_2_s_tv_0;
    wire [0:0] SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_2_s_tv_1;
    wire [0:0] SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_2_backEN;
    wire [0:0] SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_2_or0;
    wire [0:0] SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_2_backStall;
    wire [0:0] SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_2_V0;
    wire [0:0] SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_2_V1;
    reg [0:0] SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_0_R_v_0;
    wire [0:0] SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_0_v_s_0;
    wire [0:0] SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_0_s_tv_0;
    wire [0:0] SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_0_backEN;
    wire [0:0] SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_0_backStall;
    wire [0:0] SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_0_V0;
    reg [0:0] SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_1_R_v_0;
    wire [0:0] SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_1_v_s_0;
    wire [0:0] SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_1_s_tv_0;
    wire [0:0] SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_1_backEN;
    wire [0:0] SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_1_backStall;
    wire [0:0] SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_1_V0;
    reg [0:0] SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_2_R_v_0;
    wire [0:0] SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_2_v_s_0;
    wire [0:0] SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_2_s_tv_0;
    wire [0:0] SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_2_backEN;
    wire [0:0] SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_2_backStall;
    wire [0:0] SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_2_V0;
    reg [0:0] SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_3_R_v_0;
    wire [0:0] SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_3_v_s_0;
    wire [0:0] SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_3_s_tv_0;
    wire [0:0] SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_3_backEN;
    wire [0:0] SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_3_backStall;
    wire [0:0] SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_3_V0;
    reg [0:0] SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_R_v_0;
    reg [0:0] SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_R_v_1;
    wire [0:0] SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_v_s_0;
    wire [0:0] SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_s_tv_0;
    wire [0:0] SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_s_tv_1;
    wire [0:0] SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_backEN;
    wire [0:0] SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_or0;
    wire [0:0] SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_backStall;
    wire [0:0] SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_V0;
    wire [0:0] SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_V1;
    wire [0:0] SE_out_redist23_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_68_fifo_wireValid;
    wire [0:0] SE_out_redist23_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_68_fifo_and0;
    wire [0:0] SE_out_redist23_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_68_fifo_backStall;
    wire [0:0] SE_out_redist23_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_68_fifo_V0;
    reg [0:0] SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_0_R_v_0;
    wire [0:0] SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_0_v_s_0;
    wire [0:0] SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_0_s_tv_0;
    wire [0:0] SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_0_backEN;
    wire [0:0] SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_0_backStall;
    wire [0:0] SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_0_V0;
    reg [0:0] SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_1_R_v_0;
    wire [0:0] SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_1_v_s_0;
    wire [0:0] SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_1_s_tv_0;
    wire [0:0] SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_1_backEN;
    wire [0:0] SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_1_backStall;
    wire [0:0] SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_1_V0;
    reg [0:0] SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_R_v_0;
    reg [0:0] SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_R_v_1;
    reg [0:0] SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_R_v_2;
    reg [0:0] SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_R_v_3;
    reg [0:0] SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_R_v_4;
    reg [0:0] SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_R_v_5;
    wire [0:0] SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_v_s_0;
    wire [0:0] SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_s_tv_0;
    wire [0:0] SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_s_tv_1;
    wire [0:0] SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_s_tv_2;
    wire [0:0] SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_s_tv_3;
    wire [0:0] SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_s_tv_4;
    wire [0:0] SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_s_tv_5;
    wire [0:0] SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_backEN;
    wire [0:0] SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_or0;
    wire [0:0] SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_or1;
    wire [0:0] SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_or2;
    wire [0:0] SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_or3;
    wire [0:0] SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_or4;
    wire [0:0] SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_backStall;
    wire [0:0] SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_V0;
    wire [0:0] SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_V1;
    wire [0:0] SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_V2;
    wire [0:0] SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_V3;
    wire [0:0] SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_V4;
    wire [0:0] SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_V5;
    reg [0:0] SE_redist25_i_first_cleanup_xor_atax2_q_5_0_R_v_0;
    wire [0:0] SE_redist25_i_first_cleanup_xor_atax2_q_5_0_v_s_0;
    wire [0:0] SE_redist25_i_first_cleanup_xor_atax2_q_5_0_s_tv_0;
    wire [0:0] SE_redist25_i_first_cleanup_xor_atax2_q_5_0_backEN;
    wire [0:0] SE_redist25_i_first_cleanup_xor_atax2_q_5_0_backStall;
    wire [0:0] SE_redist25_i_first_cleanup_xor_atax2_q_5_0_V0;
    reg [0:0] SE_redist25_i_first_cleanup_xor_atax2_q_5_1_R_v_0;
    wire [0:0] SE_redist25_i_first_cleanup_xor_atax2_q_5_1_v_s_0;
    wire [0:0] SE_redist25_i_first_cleanup_xor_atax2_q_5_1_s_tv_0;
    wire [0:0] SE_redist25_i_first_cleanup_xor_atax2_q_5_1_backEN;
    wire [0:0] SE_redist25_i_first_cleanup_xor_atax2_q_5_1_backStall;
    wire [0:0] SE_redist25_i_first_cleanup_xor_atax2_q_5_1_V0;
    reg [0:0] SE_redist25_i_first_cleanup_xor_atax2_q_5_2_R_v_0;
    wire [0:0] SE_redist25_i_first_cleanup_xor_atax2_q_5_2_v_s_0;
    wire [0:0] SE_redist25_i_first_cleanup_xor_atax2_q_5_2_s_tv_0;
    wire [0:0] SE_redist25_i_first_cleanup_xor_atax2_q_5_2_backEN;
    wire [0:0] SE_redist25_i_first_cleanup_xor_atax2_q_5_2_backStall;
    wire [0:0] SE_redist25_i_first_cleanup_xor_atax2_q_5_2_V0;
    reg [0:0] SE_redist25_i_first_cleanup_xor_atax2_q_5_3_R_v_0;
    wire [0:0] SE_redist25_i_first_cleanup_xor_atax2_q_5_3_v_s_0;
    wire [0:0] SE_redist25_i_first_cleanup_xor_atax2_q_5_3_s_tv_0;
    wire [0:0] SE_redist25_i_first_cleanup_xor_atax2_q_5_3_backEN;
    wire [0:0] SE_redist25_i_first_cleanup_xor_atax2_q_5_3_backStall;
    wire [0:0] SE_redist25_i_first_cleanup_xor_atax2_q_5_3_V0;
    reg [0:0] SE_redist25_i_first_cleanup_xor_atax2_q_5_4_R_v_0;
    reg [0:0] SE_redist25_i_first_cleanup_xor_atax2_q_5_4_R_v_1;
    wire [0:0] SE_redist25_i_first_cleanup_xor_atax2_q_5_4_v_s_0;
    wire [0:0] SE_redist25_i_first_cleanup_xor_atax2_q_5_4_s_tv_0;
    wire [0:0] SE_redist25_i_first_cleanup_xor_atax2_q_5_4_s_tv_1;
    wire [0:0] SE_redist25_i_first_cleanup_xor_atax2_q_5_4_backEN;
    wire [0:0] SE_redist25_i_first_cleanup_xor_atax2_q_5_4_or0;
    wire [0:0] SE_redist25_i_first_cleanup_xor_atax2_q_5_4_backStall;
    wire [0:0] SE_redist25_i_first_cleanup_xor_atax2_q_5_4_V0;
    wire [0:0] SE_redist25_i_first_cleanup_xor_atax2_q_5_4_V1;
    wire [0:0] SE_out_redist26_i_first_cleanup_xor_atax2_q_37_fifo_wireValid;
    wire [0:0] SE_out_redist26_i_first_cleanup_xor_atax2_q_37_fifo_wireStall;
    wire [0:0] SE_out_redist26_i_first_cleanup_xor_atax2_q_37_fifo_StallValid;
    wire [0:0] SE_out_redist26_i_first_cleanup_xor_atax2_q_37_fifo_toReg0;
    reg [0:0] SE_out_redist26_i_first_cleanup_xor_atax2_q_37_fifo_fromReg0;
    wire [0:0] SE_out_redist26_i_first_cleanup_xor_atax2_q_37_fifo_consumed0;
    wire [0:0] SE_out_redist26_i_first_cleanup_xor_atax2_q_37_fifo_toReg1;
    reg [0:0] SE_out_redist26_i_first_cleanup_xor_atax2_q_37_fifo_fromReg1;
    wire [0:0] SE_out_redist26_i_first_cleanup_xor_atax2_q_37_fifo_consumed1;
    wire [0:0] SE_out_redist26_i_first_cleanup_xor_atax2_q_37_fifo_or0;
    wire [0:0] SE_out_redist26_i_first_cleanup_xor_atax2_q_37_fifo_backStall;
    wire [0:0] SE_out_redist26_i_first_cleanup_xor_atax2_q_37_fifo_V0;
    wire [0:0] SE_out_redist26_i_first_cleanup_xor_atax2_q_37_fifo_V1;
    wire [0:0] SE_out_redist27_i_first_cleanup_xor_atax2_q_65_fifo_wireValid;
    wire [0:0] SE_out_redist27_i_first_cleanup_xor_atax2_q_65_fifo_and0;
    wire [0:0] SE_out_redist27_i_first_cleanup_xor_atax2_q_65_fifo_and1;
    wire [0:0] SE_out_redist27_i_first_cleanup_xor_atax2_q_65_fifo_and2;
    wire [0:0] SE_out_redist27_i_first_cleanup_xor_atax2_q_65_fifo_backStall;
    wire [0:0] SE_out_redist27_i_first_cleanup_xor_atax2_q_65_fifo_V0;
    wire [0:0] SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_wireValid;
    wire [0:0] SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_backStall;
    wire [0:0] SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_V0;
    wire [0:0] SE_out_redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_wireValid;
    wire [0:0] SE_out_redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_wireStall;
    wire [0:0] SE_out_redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_StallValid;
    wire [0:0] SE_out_redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_toReg0;
    reg [0:0] SE_out_redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_fromReg0;
    wire [0:0] SE_out_redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_consumed0;
    wire [0:0] SE_out_redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_toReg1;
    reg [0:0] SE_out_redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_fromReg1;
    wire [0:0] SE_out_redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_consumed1;
    wire [0:0] SE_out_redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_or0;
    wire [0:0] SE_out_redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_backStall;
    wire [0:0] SE_out_redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_V0;
    wire [0:0] SE_out_redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_V1;
    wire [0:0] SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_wireValid;
    wire [0:0] SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_wireStall;
    wire [0:0] SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_StallValid;
    wire [0:0] SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_toReg0;
    reg [0:0] SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_fromReg0;
    wire [0:0] SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_consumed0;
    wire [0:0] SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_toReg1;
    reg [0:0] SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_fromReg1;
    wire [0:0] SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_consumed1;
    wire [0:0] SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_toReg2;
    reg [0:0] SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_fromReg2;
    wire [0:0] SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_consumed2;
    wire [0:0] SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_or0;
    wire [0:0] SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_or1;
    wire [0:0] SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_backStall;
    wire [0:0] SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_V0;
    wire [0:0] SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_V1;
    wire [0:0] SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_V2;
    reg [0:0] SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_R_v_0;
    wire [0:0] SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_v_s_0;
    wire [0:0] SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_s_tv_0;
    wire [0:0] SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_backEN;
    wire [0:0] SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_backStall;
    wire [0:0] SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_V0;
    reg [0:0] SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_0;
    wire [0:0] SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_v_s_0;
    wire [0:0] SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_s_tv_0;
    wire [0:0] SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_backEN;
    wire [0:0] SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_backStall;
    wire [0:0] SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_V0;
    reg [0:0] SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_2_R_v_0;
    reg [0:0] SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_2_R_v_1;
    wire [0:0] SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_2_v_s_0;
    wire [0:0] SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_2_s_tv_0;
    wire [0:0] SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_2_s_tv_1;
    wire [0:0] SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_2_backEN;
    wire [0:0] SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_2_or0;
    wire [0:0] SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_2_backStall;
    wire [0:0] SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_2_V0;
    wire [0:0] SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_2_V1;
    reg [0:0] SE_coalesced_delay_0_0_R_v_0;
    wire [0:0] SE_coalesced_delay_0_0_v_s_0;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_0_backEN;
    wire [0:0] SE_coalesced_delay_0_0_backStall;
    wire [0:0] SE_coalesced_delay_0_0_V0;
    reg [0:0] SE_coalesced_delay_0_1_R_v_0;
    wire [0:0] SE_coalesced_delay_0_1_v_s_0;
    wire [0:0] SE_coalesced_delay_0_1_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_1_backEN;
    wire [0:0] SE_coalesced_delay_0_1_backStall;
    wire [0:0] SE_coalesced_delay_0_1_V0;
    reg [0:0] SE_coalesced_delay_0_2_R_v_0;
    reg [0:0] SE_coalesced_delay_0_2_R_v_1;
    reg [0:0] SE_coalesced_delay_0_2_R_v_2;
    reg [0:0] SE_coalesced_delay_0_2_R_v_3;
    wire [0:0] SE_coalesced_delay_0_2_v_s_0;
    wire [0:0] SE_coalesced_delay_0_2_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_2_s_tv_1;
    wire [0:0] SE_coalesced_delay_0_2_s_tv_2;
    wire [0:0] SE_coalesced_delay_0_2_s_tv_3;
    wire [0:0] SE_coalesced_delay_0_2_backEN;
    wire [0:0] SE_coalesced_delay_0_2_or0;
    wire [0:0] SE_coalesced_delay_0_2_or1;
    wire [0:0] SE_coalesced_delay_0_2_or2;
    wire [0:0] SE_coalesced_delay_0_2_backStall;
    wire [0:0] SE_coalesced_delay_0_2_V0;
    wire [0:0] SE_coalesced_delay_0_2_V1;
    wire [0:0] SE_coalesced_delay_0_2_V2;
    wire [0:0] SE_coalesced_delay_0_2_V3;
    wire [0:0] SE_out_coalesced_delay_1_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_1_fifo_wireStall;
    wire [0:0] SE_out_coalesced_delay_1_fifo_StallValid;
    wire [0:0] SE_out_coalesced_delay_1_fifo_toReg0;
    reg [0:0] SE_out_coalesced_delay_1_fifo_fromReg0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_consumed0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_toReg1;
    reg [0:0] SE_out_coalesced_delay_1_fifo_fromReg1;
    wire [0:0] SE_out_coalesced_delay_1_fifo_consumed1;
    wire [0:0] SE_out_coalesced_delay_1_fifo_toReg2;
    reg [0:0] SE_out_coalesced_delay_1_fifo_fromReg2;
    wire [0:0] SE_out_coalesced_delay_1_fifo_consumed2;
    wire [0:0] SE_out_coalesced_delay_1_fifo_or0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_or1;
    wire [0:0] SE_out_coalesced_delay_1_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_1_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_V1;
    wire [0:0] SE_out_coalesced_delay_1_fifo_V2;
    wire [0:0] SE_out_bubble_out_atax_B5_merge_reg_aunroll_x_1_wireValid;
    wire [0:0] SE_out_bubble_out_atax_B5_merge_reg_aunroll_x_1_backStall;
    wire [0:0] SE_out_bubble_out_atax_B5_merge_reg_aunroll_x_1_V0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1_and0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1_and1;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1_and2;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1_and3;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1_and4;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1_and5;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1_and6;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1_and7;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1_backStall;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1_V0;
    wire [0:0] SE_out_bubble_out_i_mul15_atax29_im0_cma_data_wireValid;
    wire [0:0] SE_out_bubble_out_i_mul15_atax29_im0_cma_data_backStall;
    wire [0:0] SE_out_bubble_out_i_mul15_atax29_im0_cma_data_V0;
    wire [0:0] SE_out_bubble_out_i_mul15_atax29_im8_cma_data_wireValid;
    wire [0:0] SE_out_bubble_out_i_mul15_atax29_im8_cma_data_backStall;
    wire [0:0] SE_out_bubble_out_i_mul15_atax29_im8_cma_data_V0;
    wire [0:0] SE_out_bubble_out_i_mul15_atax29_ma3_cma_data_wireValid;
    wire [0:0] SE_out_bubble_out_i_mul15_atax29_ma3_cma_data_backStall;
    wire [0:0] SE_out_bubble_out_i_mul15_atax29_ma3_cma_data_V0;
    wire [0:0] bubble_out_atax_B5_merge_reg_aunroll_x_1_reg_valid_in;
    wire bubble_out_atax_B5_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_atax_B5_merge_reg_aunroll_x_1_reg_stall_in;
    wire bubble_out_atax_B5_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_atax_B5_merge_reg_aunroll_x_1_reg_valid_out;
    wire bubble_out_atax_B5_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_atax_B5_merge_reg_aunroll_x_1_reg_stall_out;
    wire bubble_out_atax_B5_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_atax4_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_atax4_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_atax4_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_atax4_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_atax4_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_atax4_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_atax4_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_atax4_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_mul15_atax29_im0_cma_data_reg_valid_in;
    wire bubble_out_i_mul15_atax29_im0_cma_data_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_mul15_atax29_im0_cma_data_reg_stall_in;
    wire bubble_out_i_mul15_atax29_im0_cma_data_reg_stall_in_bitsignaltemp;
    wire [35:0] bubble_out_i_mul15_atax29_im0_cma_data_reg_data_in;
    wire [0:0] bubble_out_i_mul15_atax29_im0_cma_data_reg_valid_out;
    wire bubble_out_i_mul15_atax29_im0_cma_data_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_mul15_atax29_im0_cma_data_reg_stall_out;
    wire bubble_out_i_mul15_atax29_im0_cma_data_reg_stall_out_bitsignaltemp;
    wire [35:0] bubble_out_i_mul15_atax29_im0_cma_data_reg_data_out;
    wire [0:0] bubble_out_i_mul15_atax29_im8_cma_data_reg_valid_in;
    wire bubble_out_i_mul15_atax29_im8_cma_data_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_mul15_atax29_im8_cma_data_reg_stall_in;
    wire bubble_out_i_mul15_atax29_im8_cma_data_reg_stall_in_bitsignaltemp;
    wire [27:0] bubble_out_i_mul15_atax29_im8_cma_data_reg_data_in;
    wire [0:0] bubble_out_i_mul15_atax29_im8_cma_data_reg_valid_out;
    wire bubble_out_i_mul15_atax29_im8_cma_data_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_mul15_atax29_im8_cma_data_reg_stall_out;
    wire bubble_out_i_mul15_atax29_im8_cma_data_reg_stall_out_bitsignaltemp;
    wire [27:0] bubble_out_i_mul15_atax29_im8_cma_data_reg_data_out;
    wire [0:0] bubble_out_i_mul15_atax29_ma3_cma_data_reg_valid_in;
    wire bubble_out_i_mul15_atax29_ma3_cma_data_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_mul15_atax29_ma3_cma_data_reg_stall_in;
    wire bubble_out_i_mul15_atax29_ma3_cma_data_reg_stall_in_bitsignaltemp;
    wire [32:0] bubble_out_i_mul15_atax29_ma3_cma_data_reg_data_in;
    wire [0:0] bubble_out_i_mul15_atax29_ma3_cma_data_reg_valid_out;
    wire bubble_out_i_mul15_atax29_ma3_cma_data_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_mul15_atax29_ma3_cma_data_reg_stall_out;
    wire bubble_out_i_mul15_atax29_ma3_cma_data_reg_stall_out_bitsignaltemp;
    wire [32:0] bubble_out_i_mul15_atax29_ma3_cma_data_reg_data_out;
    wire [0:0] SR_SE_coalesced_delay_0_1_i_valid;
    reg [0:0] SR_SE_coalesced_delay_0_1_r_valid;
    reg [32:0] SR_SE_coalesced_delay_0_1_r_data0;
    wire [0:0] SR_SE_coalesced_delay_0_1_backStall;
    wire [0:0] SR_SE_coalesced_delay_0_1_V;
    wire [32:0] SR_SE_coalesced_delay_0_1_D0;
    wire [0:0] SR_SE_coalesced_delay_0_2_i_valid;
    reg [0:0] SR_SE_coalesced_delay_0_2_r_valid;
    reg [32:0] SR_SE_coalesced_delay_0_2_r_data0;
    wire [0:0] SR_SE_coalesced_delay_0_2_backStall;
    wire [0:0] SR_SE_coalesced_delay_0_2_V;
    wire [32:0] SR_SE_coalesced_delay_0_2_D0;
    wire [0:0] SR_SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_i_valid;
    reg [0:0] SR_SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_r_valid;
    reg [0:0] SR_SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_r_data0;
    reg [0:0] SR_SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_r_data1;
    reg [0:0] SR_SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_r_data2;
    wire [0:0] SR_SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_backStall;
    wire [0:0] SR_SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_V;
    wire [0:0] SR_SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_D0;
    wire [0:0] SR_SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_D1;
    wire [0:0] SR_SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_D2;
    wire [0:0] SR_SE_i_masked_atax47_i_valid;
    reg [0:0] SR_SE_i_masked_atax47_r_valid;
    wire [0:0] SR_SE_i_masked_atax47_and0;
    reg [0:0] SR_SE_i_masked_atax47_r_data0;
    reg [0:0] SR_SE_i_masked_atax47_r_data1;
    wire [0:0] SR_SE_i_masked_atax47_backStall;
    wire [0:0] SR_SE_i_masked_atax47_V;
    wire [0:0] SR_SE_i_masked_atax47_D0;
    wire [0:0] SR_SE_i_masked_atax47_D1;
    wire [0:0] SR_SE_redist10_i_masked_atax47_q_3_1_i_valid;
    reg [0:0] SR_SE_redist10_i_masked_atax47_q_3_1_r_valid;
    reg [0:0] SR_SE_redist10_i_masked_atax47_q_3_1_r_data0;
    wire [0:0] SR_SE_redist10_i_masked_atax47_q_3_1_backStall;
    wire [0:0] SR_SE_redist10_i_masked_atax47_q_3_1_V;
    wire [0:0] SR_SE_redist10_i_masked_atax47_q_3_1_D0;
    wire [0:0] SR_SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_i_valid;
    reg [0:0] SR_SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_r_valid;
    reg [0:0] SR_SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_r_data0;
    wire [0:0] SR_SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_backStall;
    wire [0:0] SR_SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_V;
    wire [0:0] SR_SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_D0;
    wire [0:0] SR_SE_out_coalesced_delay_1_fifo_i_valid;
    reg [0:0] SR_SE_out_coalesced_delay_1_fifo_r_valid;
    wire [0:0] SR_SE_out_coalesced_delay_1_fifo_and0;
    reg [0:0] SR_SE_out_coalesced_delay_1_fifo_r_data0;
    reg [0:0] SR_SE_out_coalesced_delay_1_fifo_r_data1;
    reg [0:0] SR_SE_out_coalesced_delay_1_fifo_r_data2;
    reg [0:0] SR_SE_out_coalesced_delay_1_fifo_r_data3;
    reg [0:0] SR_SE_out_coalesced_delay_1_fifo_r_data4;
    reg [63:0] SR_SE_out_coalesced_delay_1_fifo_r_data5;
    wire [0:0] SR_SE_out_coalesced_delay_1_fifo_backStall;
    wire [0:0] SR_SE_out_coalesced_delay_1_fifo_V;
    wire [0:0] SR_SE_out_coalesced_delay_1_fifo_D0;
    wire [0:0] SR_SE_out_coalesced_delay_1_fifo_D1;
    wire [0:0] SR_SE_out_coalesced_delay_1_fifo_D2;
    wire [0:0] SR_SE_out_coalesced_delay_1_fifo_D3;
    wire [0:0] SR_SE_out_coalesced_delay_1_fifo_D4;
    wire [63:0] SR_SE_out_coalesced_delay_1_fifo_D5;
    wire [0:0] SR_SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_2_i_valid;
    reg [0:0] SR_SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_2_r_valid;
    reg [31:0] SR_SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_2_r_data0;
    wire [0:0] SR_SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_2_backStall;
    wire [0:0] SR_SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_2_V;
    wire [31:0] SR_SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_2_D0;
    wire [0:0] SR_SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_4_i_valid;
    reg [0:0] SR_SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_4_r_valid;
    reg [31:0] SR_SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_4_r_data0;
    wire [0:0] SR_SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_4_backStall;
    wire [0:0] SR_SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_4_V;
    wire [31:0] SR_SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_4_D0;
    wire [0:0] SR_SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_i_valid;
    reg [0:0] SR_SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_r_valid;
    wire [0:0] SR_SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_and0;
    reg [59:0] SR_SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_r_data0;
    reg [59:0] SR_SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_r_data1;
    wire [0:0] SR_SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_backStall;
    wire [0:0] SR_SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_V;
    wire [59:0] SR_SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_D0;
    wire [59:0] SR_SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_D1;
    wire [0:0] SR_SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_r_valid;
    wire [0:0] SR_SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_and0;
    wire [0:0] SR_SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_and1;
    reg [4:0] SR_SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_r_data0;
    reg [4:0] SR_SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_r_data2;
    wire [0:0] SR_SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_backStall;
    wire [0:0] SR_SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_V;
    wire [4:0] SR_SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_D0;
    wire [4:0] SR_SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_D1;
    wire [0:0] SR_SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_D2;
    wire [0:0] SR_SE_redist5_i_mptr_bitcast_index_atax0_add_x_p1_of_2_q_1_0_i_valid;
    reg [0:0] SR_SE_redist5_i_mptr_bitcast_index_atax0_add_x_p1_of_2_q_1_0_r_valid;
    reg [59:0] SR_SE_redist5_i_mptr_bitcast_index_atax0_add_x_p1_of_2_q_1_0_r_data0;
    wire [0:0] SR_SE_redist5_i_mptr_bitcast_index_atax0_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SR_SE_redist5_i_mptr_bitcast_index_atax0_add_x_p1_of_2_q_1_0_V;
    wire [59:0] SR_SE_redist5_i_mptr_bitcast_index_atax0_add_x_p1_of_2_q_1_0_D0;
    wire [0:0] SR_SE_redist8_i_mul15_atax29_im8_cma_q_1_0_i_valid;
    reg [0:0] SR_SE_redist8_i_mul15_atax29_im8_cma_q_1_0_r_valid;
    reg [27:0] SR_SE_redist8_i_mul15_atax29_im8_cma_q_1_0_r_data0;
    wire [0:0] SR_SE_redist8_i_mul15_atax29_im8_cma_q_1_0_backStall;
    wire [0:0] SR_SE_redist8_i_mul15_atax29_im8_cma_q_1_0_V;
    wire [27:0] SR_SE_redist8_i_mul15_atax29_im8_cma_q_1_0_D0;
    wire [0:0] SR_SE_redist9_i_mul15_atax29_im0_cma_q_1_0_i_valid;
    reg [0:0] SR_SE_redist9_i_mul15_atax29_im0_cma_q_1_0_r_valid;
    reg [35:0] SR_SE_redist9_i_mul15_atax29_im0_cma_q_1_0_r_data0;
    wire [0:0] SR_SE_redist9_i_mul15_atax29_im0_cma_q_1_0_backStall;
    wire [0:0] SR_SE_redist9_i_mul15_atax29_im0_cma_q_1_0_V;
    wire [35:0] SR_SE_redist9_i_mul15_atax29_im0_cma_q_1_0_D0;
    wire [0:0] SR_SE_redist7_i_mul15_atax29_ma3_cma_q_1_0_i_valid;
    reg [0:0] SR_SE_redist7_i_mul15_atax29_ma3_cma_q_1_0_r_valid;
    reg [32:0] SR_SE_redist7_i_mul15_atax29_ma3_cma_q_1_0_r_data0;
    wire [0:0] SR_SE_redist7_i_mul15_atax29_ma3_cma_q_1_0_backStall;
    wire [0:0] SR_SE_redist7_i_mul15_atax29_ma3_cma_q_1_0_V;
    wire [32:0] SR_SE_redist7_i_mul15_atax29_ma3_cma_q_1_0_D0;
    wire [0:0] SR_SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_r_valid;
    wire [0:0] SR_SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_and0;
    wire [0:0] SR_SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_and1;
    reg [4:0] SR_SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_r_data0;
    reg [4:0] SR_SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_r_data2;
    wire [0:0] SR_SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_backStall;
    wire [0:0] SR_SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_V;
    wire [4:0] SR_SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_D0;
    wire [4:0] SR_SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_D1;
    wire [0:0] SR_SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_D2;
    wire [0:0] SR_SE_redist4_i_mul15_atax29_sums_result_add_0_0_p1_of_2_q_1_0_i_valid;
    reg [0:0] SR_SE_redist4_i_mul15_atax29_sums_result_add_0_0_p1_of_2_q_1_0_r_valid;
    reg [59:0] SR_SE_redist4_i_mul15_atax29_sums_result_add_0_0_p1_of_2_q_1_0_r_data0;
    wire [0:0] SR_SE_redist4_i_mul15_atax29_sums_result_add_0_0_p1_of_2_q_1_0_backStall;
    wire [0:0] SR_SE_redist4_i_mul15_atax29_sums_result_add_0_0_p1_of_2_q_1_0_V;
    wire [59:0] SR_SE_redist4_i_mul15_atax29_sums_result_add_0_0_p1_of_2_q_1_0_D0;
    wire [0:0] SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_0_i_valid;
    reg [0:0] SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_0_r_valid;
    reg [0:0] SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_0_r_data0;
    wire [0:0] SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_0_backStall;
    wire [0:0] SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_0_V;
    wire [0:0] SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_0_D0;
    wire [0:0] SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_2_i_valid;
    reg [0:0] SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_2_r_valid;
    reg [0:0] SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_2_r_data0;
    wire [0:0] SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_2_backStall;
    wire [0:0] SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_2_V;
    wire [0:0] SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_2_D0;
    wire [0:0] SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_i_valid;
    reg [0:0] SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_r_valid;
    reg [0:0] SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_r_data0;
    wire [0:0] SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_backStall;
    wire [0:0] SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_V;
    wire [0:0] SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_D0;
    wire [0:0] SR_SE_redist25_i_first_cleanup_xor_atax2_q_5_1_i_valid;
    reg [0:0] SR_SE_redist25_i_first_cleanup_xor_atax2_q_5_1_r_valid;
    reg [0:0] SR_SE_redist25_i_first_cleanup_xor_atax2_q_5_1_r_data0;
    wire [0:0] SR_SE_redist25_i_first_cleanup_xor_atax2_q_5_1_backStall;
    wire [0:0] SR_SE_redist25_i_first_cleanup_xor_atax2_q_5_1_V;
    wire [0:0] SR_SE_redist25_i_first_cleanup_xor_atax2_q_5_1_D0;
    wire [0:0] SR_SE_redist25_i_first_cleanup_xor_atax2_q_5_3_i_valid;
    reg [0:0] SR_SE_redist25_i_first_cleanup_xor_atax2_q_5_3_r_valid;
    reg [0:0] SR_SE_redist25_i_first_cleanup_xor_atax2_q_5_3_r_data0;
    wire [0:0] SR_SE_redist25_i_first_cleanup_xor_atax2_q_5_3_backStall;
    wire [0:0] SR_SE_redist25_i_first_cleanup_xor_atax2_q_5_3_V;
    wire [0:0] SR_SE_redist25_i_first_cleanup_xor_atax2_q_5_3_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_mem_unnamed_atax15_atax16_i_valid;
    reg [0:0] SR_SE_in_i_llvm_fpga_mem_unnamed_atax15_atax16_r_valid;
    wire [0:0] SR_SE_in_i_llvm_fpga_mem_unnamed_atax15_atax16_and0;
    wire [0:0] SR_SE_in_i_llvm_fpga_mem_unnamed_atax15_atax16_and1;
    reg [63:0] SR_SE_in_i_llvm_fpga_mem_unnamed_atax15_atax16_r_data0;
    reg [0:0] SR_SE_in_i_llvm_fpga_mem_unnamed_atax15_atax16_r_data1;
    reg [0:0] SR_SE_in_i_llvm_fpga_mem_unnamed_atax15_atax16_r_data2;
    wire [0:0] SR_SE_in_i_llvm_fpga_mem_unnamed_atax15_atax16_backStall;
    wire [0:0] SR_SE_in_i_llvm_fpga_mem_unnamed_atax15_atax16_V;
    wire [63:0] SR_SE_in_i_llvm_fpga_mem_unnamed_atax15_atax16_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_mem_unnamed_atax15_atax16_D1;
    wire [0:0] SR_SE_in_i_llvm_fpga_mem_unnamed_atax15_atax16_D2;
    wire [0:0] SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_i_valid;
    reg [0:0] SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_r_valid;
    wire [0:0] SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_and0;
    wire [0:0] SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_and1;
    wire [0:0] SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_and2;
    wire [0:0] SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_and3;
    wire [0:0] SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_and4;
    reg [63:0] SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_r_data0;
    reg [0:0] SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_r_data1;
    reg [0:0] SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_r_data2;
    reg [31:0] SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_r_data3;
    wire [0:0] SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_backStall;
    wire [0:0] SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_V;
    wire [63:0] SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_D0;
    wire [0:0] SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_D1;
    wire [0:0] SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_D2;
    wire [31:0] SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_D3;
    wire [0:0] SR_SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_1_i_valid;
    reg [0:0] SR_SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_1_r_valid;
    reg [0:0] SR_SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_1_r_data0;
    wire [0:0] SR_SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_1_backStall;
    wire [0:0] SR_SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_1_V;
    wire [0:0] SR_SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_1_D0;
    wire [0:0] SR_SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_i_valid;
    reg [0:0] SR_SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_r_valid;
    reg [0:0] SR_SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_r_data0;
    wire [0:0] SR_SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_backStall;
    wire [0:0] SR_SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_V;
    wire [0:0] SR_SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_D0;
    wire [0:0] SR_SE_i_next_initerations_atax6_vt_select_0_i_valid;
    reg [0:0] SR_SE_i_next_initerations_atax6_vt_select_0_r_valid;
    wire [0:0] SR_SE_i_next_initerations_atax6_vt_select_0_and0;
    reg [0:0] SR_SE_i_next_initerations_atax6_vt_select_0_r_data0;
    reg [0:0] SR_SE_i_next_initerations_atax6_vt_select_0_r_data1;
    reg [0:0] SR_SE_i_next_initerations_atax6_vt_select_0_r_data2;
    reg [1:0] SR_SE_i_next_initerations_atax6_vt_select_0_r_data3;
    wire [0:0] SR_SE_i_next_initerations_atax6_vt_select_0_backStall;
    wire [0:0] SR_SE_i_next_initerations_atax6_vt_select_0_V;
    wire [0:0] SR_SE_i_next_initerations_atax6_vt_select_0_D0;
    wire [0:0] SR_SE_i_next_initerations_atax6_vt_select_0_D1;
    wire [0:0] SR_SE_i_next_initerations_atax6_vt_select_0_D2;
    wire [1:0] SR_SE_i_next_initerations_atax6_vt_select_0_D3;


    // SE_in_i_llvm_fpga_mem_unnamed_atax15_atax16(STALLENABLE,553)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_mem_unnamed_atax15_atax16_V0 = SE_in_i_llvm_fpga_mem_unnamed_atax15_atax16_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_mem_unnamed_atax15_atax16_backStall = i_llvm_fpga_mem_unnamed_atax15_atax16_out_o_stall | ~ (SE_in_i_llvm_fpga_mem_unnamed_atax15_atax16_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_mem_unnamed_atax15_atax16_wireValid = SR_SE_in_i_llvm_fpga_mem_unnamed_atax15_atax16_V;

    // bubble_join_i_llvm_fpga_mem_unnamed_atax15_atax16(BITJOIN,421)
    assign bubble_join_i_llvm_fpga_mem_unnamed_atax15_atax16_q = i_llvm_fpga_mem_unnamed_atax15_atax16_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_atax15_atax16(BITSELECT,422)
    assign bubble_select_i_llvm_fpga_mem_unnamed_atax15_atax16_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_atax15_atax16_q[31:0]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_i_mul15_atax29_sums_align_1(STALLENABLE,631)
    // Valid signal propagation
    assign SE_i_mul15_atax29_sums_align_1_V0 = SE_i_mul15_atax29_sums_align_1_wireValid;
    // Backward Stall generation
    assign SE_i_mul15_atax29_sums_align_1_backStall = SE_i_mul15_atax29_sums_result_add_0_0_p1_of_2_backStall | ~ (SE_i_mul15_atax29_sums_align_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_mul15_atax29_sums_align_1_and0 = SE_redist7_i_mul15_atax29_ma3_cma_q_1_0_V0;
    assign SE_i_mul15_atax29_sums_align_1_wireValid = SE_i_mul15_atax29_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_V1 & SE_i_mul15_atax29_sums_align_1_and0;

    // SE_redist7_i_mul15_atax29_ma3_cma_q_1_0(STALLENABLE,672)
    // Valid signal propagation
    assign SE_redist7_i_mul15_atax29_ma3_cma_q_1_0_V0 = SE_redist7_i_mul15_atax29_ma3_cma_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist7_i_mul15_atax29_ma3_cma_q_1_0_s_tv_0 = SE_i_mul15_atax29_sums_align_1_backStall & SE_redist7_i_mul15_atax29_ma3_cma_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist7_i_mul15_atax29_ma3_cma_q_1_0_backEN = ~ (SE_redist7_i_mul15_atax29_ma3_cma_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist7_i_mul15_atax29_ma3_cma_q_1_0_v_s_0 = SE_redist7_i_mul15_atax29_ma3_cma_q_1_0_backEN & SR_SE_redist7_i_mul15_atax29_ma3_cma_q_1_0_V;
    // Backward Stall generation
    assign SE_redist7_i_mul15_atax29_ma3_cma_q_1_0_backStall = ~ (SE_redist7_i_mul15_atax29_ma3_cma_q_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist7_i_mul15_atax29_ma3_cma_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist7_i_mul15_atax29_ma3_cma_q_1_0_backEN == 1'b0)
            begin
                SE_redist7_i_mul15_atax29_ma3_cma_q_1_0_R_v_0 <= SE_redist7_i_mul15_atax29_ma3_cma_q_1_0_R_v_0 & SE_redist7_i_mul15_atax29_ma3_cma_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist7_i_mul15_atax29_ma3_cma_q_1_0_R_v_0 <= SE_redist7_i_mul15_atax29_ma3_cma_q_1_0_v_s_0;
            end

        end
    end

    // bubble_join_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo(BITJOIN,527)
    assign bubble_join_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_q = redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_data_out;

    // bubble_select_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo(BITSELECT,528)
    assign bubble_select_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_b = $unsigned(bubble_join_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_q[0:0]);

    // SE_out_i_llvm_fpga_push_i2_cleanups_push29_atax44(STALLENABLE,600)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i2_cleanups_push29_atax44_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i2_cleanups_push29_atax44_wireValid = i_llvm_fpga_push_i2_cleanups_push29_atax44_out_valid_out;

    // bubble_join_i_llvm_fpga_pipeline_keep_going_atax4(BITJOIN,427)
    assign bubble_join_i_llvm_fpga_pipeline_keep_going_atax4_q = i_llvm_fpga_pipeline_keep_going_atax4_out_data_out;

    // bubble_select_i_llvm_fpga_pipeline_keep_going_atax4(BITSELECT,428)
    assign bubble_select_i_llvm_fpga_pipeline_keep_going_atax4_b = $unsigned(bubble_join_i_llvm_fpga_pipeline_keep_going_atax4_q[0:0]);

    // leftShiftStage0Idx1Rng1_uid210_i_cleanups_shl_atax0_shift_x(BITSELECT,209)@70
    assign leftShiftStage0Idx1Rng1_uid210_i_cleanups_shl_atax0_shift_x_in = bubble_select_redist18_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_out_data_out_65_fifo_b[0:0];
    assign leftShiftStage0Idx1Rng1_uid210_i_cleanups_shl_atax0_shift_x_b = leftShiftStage0Idx1Rng1_uid210_i_cleanups_shl_atax0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid211_i_cleanups_shl_atax0_shift_x(BITJOIN,210)@70
    assign leftShiftStage0Idx1_uid211_i_cleanups_shl_atax0_shift_x_q = {leftShiftStage0Idx1Rng1_uid210_i_cleanups_shl_atax0_shift_x_b, GND_q};

    // leftShiftStage0_uid213_i_cleanups_shl_atax0_shift_x(MUX,212)@70
    assign leftShiftStage0_uid213_i_cleanups_shl_atax0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid213_i_cleanups_shl_atax0_shift_x_s or bubble_select_redist18_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_out_data_out_65_fifo_b or leftShiftStage0Idx1_uid211_i_cleanups_shl_atax0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid213_i_cleanups_shl_atax0_shift_x_s)
            1'b0 : leftShiftStage0_uid213_i_cleanups_shl_atax0_shift_x_q = bubble_select_redist18_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_out_data_out_65_fifo_b;
            1'b1 : leftShiftStage0_uid213_i_cleanups_shl_atax0_shift_x_q = leftShiftStage0Idx1_uid211_i_cleanups_shl_atax0_shift_x_q;
            default : leftShiftStage0_uid213_i_cleanups_shl_atax0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl_atax3_vt_select_1(BITSELECT,60)@70
    assign i_cleanups_shl_atax3_vt_select_1_b = leftShiftStage0_uid213_i_cleanups_shl_atax0_shift_x_q[1:1];

    // i_cleanups_shl_atax3_vt_join(BITJOIN,59)@70
    assign i_cleanups_shl_atax3_vt_join_q = {i_cleanups_shl_atax3_vt_select_1_b, GND_q};

    // bubble_join_redist18_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_out_data_out_65_fifo(BITJOIN,503)
    assign bubble_join_redist18_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_out_data_out_65_fifo_q = redist18_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_out_data_out_65_fifo_data_out;

    // bubble_select_redist18_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_out_data_out_65_fifo(BITSELECT,504)
    assign bubble_select_redist18_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_out_data_out_65_fifo_b = $unsigned(bubble_join_redist18_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_out_data_out_65_fifo_q[1:0]);

    // bubble_join_redist27_i_first_cleanup_xor_atax2_q_65_fifo(BITJOIN,518)
    assign bubble_join_redist27_i_first_cleanup_xor_atax2_q_65_fifo_q = redist27_i_first_cleanup_xor_atax2_q_65_fifo_data_out;

    // bubble_select_redist27_i_first_cleanup_xor_atax2_q_65_fifo(BITSELECT,519)
    assign bubble_select_redist27_i_first_cleanup_xor_atax2_q_65_fifo_b = $unsigned(bubble_join_redist27_i_first_cleanup_xor_atax2_q_65_fifo_q[0:0]);

    // bubble_join_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37(BITJOIN,464)
    assign bubble_join_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_q = i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37(BITSELECT,465)
    assign bubble_select_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_b = $unsigned(bubble_join_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_q[5:0]);

    // i_exitcond9_atax38_cmp_nsign(LOGICAL,223)@70
    assign i_exitcond9_atax38_cmp_nsign_q = $unsigned(~ (bubble_select_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_b[5:5]));

    // i_notcmp_atax40(LOGICAL,106)@70
    assign i_notcmp_atax40_q = i_exitcond9_atax38_cmp_nsign_q ^ VCC_q;

    // i_or_atax42(LOGICAL,107)@70
    assign i_or_atax42_q = i_notcmp_atax40_q | bubble_select_redist27_i_first_cleanup_xor_atax2_q_65_fifo_b;

    // i_next_cleanups_atax43(MUX,102)@70
    assign i_next_cleanups_atax43_s = i_or_atax42_q;
    always @(i_next_cleanups_atax43_s or bubble_select_redist18_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_out_data_out_65_fifo_b or i_cleanups_shl_atax3_vt_join_q)
    begin
        unique case (i_next_cleanups_atax43_s)
            1'b0 : i_next_cleanups_atax43_q = bubble_select_redist18_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_out_data_out_65_fifo_b;
            1'b1 : i_next_cleanups_atax43_q = i_cleanups_shl_atax3_vt_join_q;
            default : i_next_cleanups_atax43_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups_push29_atax44(BLACKBOX,92)@70
    // in in_stall_in@20000000
    // out out_data_out@71
    // out out_feedback_out_29@20000000
    // out out_feedback_valid_out_29@20000000
    // out out_stall_out@20000000
    // out out_valid_out@71
    atax_i_llvm_fpga_push_i2_cleanups_push29_0 thei_llvm_fpga_push_i2_cleanups_push29_atax44 (
        .in_data_in(i_next_cleanups_atax43_q),
        .in_feedback_stall_in_29(i_llvm_fpga_pop_i2_cleanups_pop29_atax0_out_feedback_stall_out_29),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_atax4_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i2_cleanups_push29_atax44_backStall),
        .in_valid_in(SE_out_redist27_i_first_cleanup_xor_atax2_q_65_fifo_V0),
        .out_data_out(),
        .out_feedback_out_29(i_llvm_fpga_push_i2_cleanups_push29_atax44_out_feedback_out_29),
        .out_feedback_valid_out_29(i_llvm_fpga_push_i2_cleanups_push29_atax44_out_feedback_valid_out_29),
        .out_stall_out(i_llvm_fpga_push_i2_cleanups_push29_atax44_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i2_cleanups_push29_atax44_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_0(REG,389)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_0_backEN == 1'b1)
        begin
            redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_0_q <= $unsigned(bubble_select_i_llvm_fpga_pipeline_keep_going_atax4_b);
        end
    end

    // redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_1(REG,390)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_1_backEN == 1'b1)
        begin
            redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_1_q <= $unsigned(SR_SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_1_D0);
        end
    end

    // SE_out_i_llvm_fpga_push_p1025i32_mptr_bitcast_index8846_push30_atax49(STALLENABLE,614)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_p1025i32_mptr_bitcast_index8846_push30_atax49_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_p1025i32_mptr_bitcast_index8846_push30_atax49_wireValid = i_llvm_fpga_push_p1025i32_mptr_bitcast_index8846_push30_atax49_out_valid_out;

    // redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2(REG,391)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_backEN == 1'b1)
        begin
            redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_q <= $unsigned(SR_SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_D0);
        end
    end

    // i_llvm_fpga_mem_memdep_atax33(BLACKBOX,68)@42
    // in in_i_stall@20000000
    // out out_lsu_memdep_o_active@20000000
    // out out_memdep_atax_avm_address@20000000
    // out out_memdep_atax_avm_burstcount@20000000
    // out out_memdep_atax_avm_byteenable@20000000
    // out out_memdep_atax_avm_enable@20000000
    // out out_memdep_atax_avm_read@20000000
    // out out_memdep_atax_avm_write@20000000
    // out out_memdep_atax_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@73
    // out out_o_writeack@73
    atax_i_llvm_fpga_mem_memdep_0 thei_llvm_fpga_mem_memdep_atax33 (
        .in_flush(in_flush),
        .in_i_address(SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_D0),
        .in_i_dependence(SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_D1),
        .in_i_predicate(SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_D2),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_atax33_backStall),
        .in_i_valid(SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_V0),
        .in_i_writedata(SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_D3),
        .in_memdep_atax_avm_readdata(in_memdep_atax_avm_readdata),
        .in_memdep_atax_avm_readdatavalid(in_memdep_atax_avm_readdatavalid),
        .in_memdep_atax_avm_waitrequest(in_memdep_atax_avm_waitrequest),
        .in_memdep_atax_avm_writeack(in_memdep_atax_avm_writeack),
        .out_lsu_memdep_o_active(i_llvm_fpga_mem_memdep_atax33_out_lsu_memdep_o_active),
        .out_memdep_atax_avm_address(i_llvm_fpga_mem_memdep_atax33_out_memdep_atax_avm_address),
        .out_memdep_atax_avm_burstcount(i_llvm_fpga_mem_memdep_atax33_out_memdep_atax_avm_burstcount),
        .out_memdep_atax_avm_byteenable(i_llvm_fpga_mem_memdep_atax33_out_memdep_atax_avm_byteenable),
        .out_memdep_atax_avm_enable(i_llvm_fpga_mem_memdep_atax33_out_memdep_atax_avm_enable),
        .out_memdep_atax_avm_read(i_llvm_fpga_mem_memdep_atax33_out_memdep_atax_avm_read),
        .out_memdep_atax_avm_write(i_llvm_fpga_mem_memdep_atax33_out_memdep_atax_avm_write),
        .out_memdep_atax_avm_writedata(i_llvm_fpga_mem_memdep_atax33_out_memdep_atax_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_atax33_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_atax33_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_atax33_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_memdep_atax33(STALLENABLE,552)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_memdep_atax33_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_atax33_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memdep_atax33_fromReg0 <= SE_out_i_llvm_fpga_mem_memdep_atax33_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memdep_atax33_fromReg1 <= SE_out_i_llvm_fpga_mem_memdep_atax33_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memdep_atax33_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1_backStall) & SE_out_i_llvm_fpga_mem_memdep_atax33_wireValid) | SE_out_i_llvm_fpga_mem_memdep_atax33_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memdep_atax33_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi1_push27_atax34_backStall) & SE_out_i_llvm_fpga_mem_memdep_atax33_wireValid) | SE_out_i_llvm_fpga_mem_memdep_atax33_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memdep_atax33_StallValid = SE_out_i_llvm_fpga_mem_memdep_atax33_backStall & SE_out_i_llvm_fpga_mem_memdep_atax33_wireValid;
    assign SE_out_i_llvm_fpga_mem_memdep_atax33_toReg0 = SE_out_i_llvm_fpga_mem_memdep_atax33_StallValid & SE_out_i_llvm_fpga_mem_memdep_atax33_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_atax33_toReg1 = SE_out_i_llvm_fpga_mem_memdep_atax33_StallValid & SE_out_i_llvm_fpga_mem_memdep_atax33_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_atax33_or0 = SE_out_i_llvm_fpga_mem_memdep_atax33_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_atax33_wireStall = ~ (SE_out_i_llvm_fpga_mem_memdep_atax33_consumed1 & SE_out_i_llvm_fpga_mem_memdep_atax33_or0);
    assign SE_out_i_llvm_fpga_mem_memdep_atax33_backStall = SE_out_i_llvm_fpga_mem_memdep_atax33_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_atax33_V0 = SE_out_i_llvm_fpga_mem_memdep_atax33_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_atax33_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memdep_atax33_V1 = SE_out_i_llvm_fpga_mem_memdep_atax33_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_atax33_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_atax33_wireValid = i_llvm_fpga_mem_memdep_atax33_out_o_valid;

    // SE_out_i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50(STALLENABLE,560)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1_backStall) & SE_out_i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_wireValid) | SE_out_i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_exitcond1251_push32_atax51_backStall) & SE_out_i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_wireValid) | SE_out_i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_StallValid = SE_out_i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_backStall & SE_out_i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_toReg0 = SE_out_i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_StallValid & SE_out_i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_toReg1 = SE_out_i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_StallValid & SE_out_i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_or0 = SE_out_i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_consumed1 & SE_out_i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_or0);
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_backStall = SE_out_i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_V0 = SE_out_i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_V1 = SE_out_i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_wireValid = i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_out_valid_out;

    // redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_0(REG,402)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_backEN == 1'b1)
        begin
            redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_q <= $unsigned(SR_SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_D2);
        end
    end

    // SR_SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_1(STALLREG,917)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_r_valid <= 1'b0;
            SR_SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_r_valid <= SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_backStall & (SR_SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_r_valid | SR_SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_i_valid);

            if (SR_SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_r_data0 <= $unsigned(redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_i_valid = SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_V0;
    // Stall signal propagation
    assign SR_SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_backStall = SR_SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_r_valid | ~ (SR_SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_i_valid);

    // Valid
    assign SR_SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_V = SR_SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_r_valid == 1'b1 ? SR_SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_r_valid : SR_SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_i_valid;

    assign SR_SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_D0 = SR_SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_r_valid == 1'b1 ? SR_SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_r_data0 : redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_q;

    // SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_1(STALLENABLE,729)
    // Valid signal propagation
    assign SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_V0 = SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_0;
    // Stall signal propagation
    assign SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_s_tv_0 = SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_2_backStall & SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_0;
    // Backward Enable generation
    assign SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_backEN = ~ (SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_v_s_0 = SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_backEN & SR_SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_V;
    // Backward Stall generation
    assign SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_backStall = ~ (SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_backEN == 1'b0)
            begin
                SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_0 <= SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_0 & SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_s_tv_0;
            end
            else
            begin
                SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_0 <= SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_v_s_0;
            end

        end
    end

    // SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_2(STALLENABLE,730)
    // Valid signal propagation
    assign SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_2_V0 = SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_2_R_v_0;
    assign SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_2_V1 = SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_2_R_v_1;
    // Stall signal propagation
    assign SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_2_s_tv_0 = SR_SE_out_coalesced_delay_1_fifo_backStall & SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_2_R_v_0;
    assign SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_2_s_tv_1 = i_llvm_fpga_pop_i2_initerations_pop28_atax5_out_stall_out & SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_2_R_v_1;
    // Backward Enable generation
    assign SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_2_or0 = SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_2_s_tv_0;
    assign SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_2_backEN = ~ (SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_2_s_tv_1 | SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_2_v_s_0 = SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_2_backEN & SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_V0;
    // Backward Stall generation
    assign SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_2_backStall = ~ (SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_2_R_v_0 <= 1'b0;
            SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_2_backEN == 1'b0)
            begin
                SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_2_R_v_0 <= SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_2_R_v_0 & SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_2_s_tv_0;
            end
            else
            begin
                SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_2_R_v_0 <= SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_2_v_s_0;
            end

            if (SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_2_backEN == 1'b0)
            begin
                SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_2_R_v_1 <= SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_2_R_v_1 & SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_2_s_tv_1;
            end
            else
            begin
                SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_2_R_v_1 <= SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_2_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_push_i1_lastiniteration_atax9(STALLENABLE,588)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration_atax9_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration_atax9_wireValid = i_llvm_fpga_push_i1_lastiniteration_atax9_out_valid_out;

    // i_llvm_fpga_push_i1_lastiniteration_atax9(BLACKBOX,86)@73
    // in in_stall_in@20000000
    // out out_data_out@74
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    // out out_stall_out@20000000
    // out out_valid_out@74
    atax_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_atax9 (
        .in_data_in(SR_SE_i_next_initerations_atax6_vt_select_0_D0),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_atax4_out_initeration_stall_out),
        .in_keep_going(SR_SE_i_next_initerations_atax6_vt_select_0_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_lastiniteration_atax9_backStall),
        .in_valid_in(SE_i_next_initerations_atax6_vt_select_0_V0),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_atax9_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_atax9_out_feedback_valid_out_2),
        .out_stall_out(i_llvm_fpga_push_i1_lastiniteration_atax9_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_lastiniteration_atax9_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_next_initerations_atax6_vt_select_0(STALLENABLE,618)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_next_initerations_atax6_vt_select_0_fromReg0 <= '0;
            SE_i_next_initerations_atax6_vt_select_0_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_next_initerations_atax6_vt_select_0_fromReg0 <= SE_i_next_initerations_atax6_vt_select_0_toReg0;
            // Successor 1
            SE_i_next_initerations_atax6_vt_select_0_fromReg1 <= SE_i_next_initerations_atax6_vt_select_0_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_next_initerations_atax6_vt_select_0_consumed0 = (~ (i_llvm_fpga_push_i1_lastiniteration_atax9_out_stall_out) & SE_i_next_initerations_atax6_vt_select_0_wireValid) | SE_i_next_initerations_atax6_vt_select_0_fromReg0;
    assign SE_i_next_initerations_atax6_vt_select_0_consumed1 = (~ (i_llvm_fpga_push_i2_initerations_push28_atax7_out_stall_out) & SE_i_next_initerations_atax6_vt_select_0_wireValid) | SE_i_next_initerations_atax6_vt_select_0_fromReg1;
    // Consuming
    assign SE_i_next_initerations_atax6_vt_select_0_StallValid = SE_i_next_initerations_atax6_vt_select_0_backStall & SE_i_next_initerations_atax6_vt_select_0_wireValid;
    assign SE_i_next_initerations_atax6_vt_select_0_toReg0 = SE_i_next_initerations_atax6_vt_select_0_StallValid & SE_i_next_initerations_atax6_vt_select_0_consumed0;
    assign SE_i_next_initerations_atax6_vt_select_0_toReg1 = SE_i_next_initerations_atax6_vt_select_0_StallValid & SE_i_next_initerations_atax6_vt_select_0_consumed1;
    // Backward Stall generation
    assign SE_i_next_initerations_atax6_vt_select_0_or0 = SE_i_next_initerations_atax6_vt_select_0_consumed0;
    assign SE_i_next_initerations_atax6_vt_select_0_wireStall = ~ (SE_i_next_initerations_atax6_vt_select_0_consumed1 & SE_i_next_initerations_atax6_vt_select_0_or0);
    assign SE_i_next_initerations_atax6_vt_select_0_backStall = SE_i_next_initerations_atax6_vt_select_0_wireStall;
    // Valid signal propagation
    assign SE_i_next_initerations_atax6_vt_select_0_V0 = SE_i_next_initerations_atax6_vt_select_0_wireValid & ~ (SE_i_next_initerations_atax6_vt_select_0_fromReg0);
    assign SE_i_next_initerations_atax6_vt_select_0_V1 = SE_i_next_initerations_atax6_vt_select_0_wireValid & ~ (SE_i_next_initerations_atax6_vt_select_0_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_next_initerations_atax6_vt_select_0_wireValid = SR_SE_i_next_initerations_atax6_vt_select_0_V;

    // SE_out_i_llvm_fpga_push_i2_initerations_push28_atax7(STALLENABLE,602)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i2_initerations_push28_atax7_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i2_initerations_push28_atax7_wireValid = i_llvm_fpga_push_i2_initerations_push28_atax7_out_valid_out;

    // i_llvm_fpga_push_i2_initerations_push28_atax7(BLACKBOX,93)@73
    // in in_stall_in@20000000
    // out out_data_out@74
    // out out_feedback_out_28@20000000
    // out out_feedback_valid_out_28@20000000
    // out out_stall_out@20000000
    // out out_valid_out@74
    atax_i_llvm_fpga_push_i2_initerations_push28_0 thei_llvm_fpga_push_i2_initerations_push28_atax7 (
        .in_data_in(SR_SE_i_next_initerations_atax6_vt_select_0_D3),
        .in_feedback_stall_in_28(i_llvm_fpga_pop_i2_initerations_pop28_atax5_out_feedback_stall_out_28),
        .in_keep_going(SR_SE_i_next_initerations_atax6_vt_select_0_D2),
        .in_stall_in(SE_out_i_llvm_fpga_push_i2_initerations_push28_atax7_backStall),
        .in_valid_in(SE_i_next_initerations_atax6_vt_select_0_V1),
        .out_data_out(),
        .out_feedback_out_28(i_llvm_fpga_push_i2_initerations_push28_atax7_out_feedback_out_28),
        .out_feedback_valid_out_28(i_llvm_fpga_push_i2_initerations_push28_atax7_out_feedback_valid_out_28),
        .out_stall_out(i_llvm_fpga_push_i2_initerations_push28_atax7_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i2_initerations_push28_atax7_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_1(REG,403)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_backEN == 1'b1)
        begin
            redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_q <= $unsigned(SR_SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_D0);
        end
    end

    // redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_2(REG,404)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_2_backEN == 1'b1)
        begin
            redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_2_q <= $unsigned(redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_q);
        end
    end

    // c_i2_154(CONSTANT,47)
    assign c_i2_154_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_initerations_pop28_atax5(BLACKBOX,78)@72
    // in in_stall_in@20000000
    // out out_data_out@73
    // out out_feedback_stall_out_28@20000000
    // out out_stall_out@20000000
    // out out_valid_out@73
    atax_i_llvm_fpga_pop_i2_initerations_pop28_0 thei_llvm_fpga_pop_i2_initerations_pop28_atax5 (
        .in_data_in(c_i2_154_q),
        .in_dir(redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_2_q),
        .in_feedback_in_28(i_llvm_fpga_push_i2_initerations_push28_atax7_out_feedback_out_28),
        .in_feedback_valid_in_28(i_llvm_fpga_push_i2_initerations_push28_atax7_out_feedback_valid_out_28),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i2_initerations_pop28_atax5_backStall),
        .in_valid_in(SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_2_V1),
        .out_data_out(i_llvm_fpga_pop_i2_initerations_pop28_atax5_out_data_out),
        .out_feedback_stall_out_28(i_llvm_fpga_pop_i2_initerations_pop28_atax5_out_feedback_stall_out_28),
        .out_stall_out(i_llvm_fpga_pop_i2_initerations_pop28_atax5_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i2_initerations_pop28_atax5_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i2_initerations_pop28_atax5(STALLENABLE,572)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i2_initerations_pop28_atax5_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i2_initerations_pop28_atax5_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i2_initerations_pop28_atax5_fromReg0 <= SE_out_i_llvm_fpga_pop_i2_initerations_pop28_atax5_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i2_initerations_pop28_atax5_fromReg1 <= SE_out_i_llvm_fpga_pop_i2_initerations_pop28_atax5_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop28_atax5_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1_backStall) & SE_out_i_llvm_fpga_pop_i2_initerations_pop28_atax5_wireValid) | SE_out_i_llvm_fpga_pop_i2_initerations_pop28_atax5_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop28_atax5_consumed1 = (~ (SR_SE_i_next_initerations_atax6_vt_select_0_backStall) & SE_out_i_llvm_fpga_pop_i2_initerations_pop28_atax5_wireValid) | SE_out_i_llvm_fpga_pop_i2_initerations_pop28_atax5_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop28_atax5_StallValid = SE_out_i_llvm_fpga_pop_i2_initerations_pop28_atax5_backStall & SE_out_i_llvm_fpga_pop_i2_initerations_pop28_atax5_wireValid;
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop28_atax5_toReg0 = SE_out_i_llvm_fpga_pop_i2_initerations_pop28_atax5_StallValid & SE_out_i_llvm_fpga_pop_i2_initerations_pop28_atax5_consumed0;
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop28_atax5_toReg1 = SE_out_i_llvm_fpga_pop_i2_initerations_pop28_atax5_StallValid & SE_out_i_llvm_fpga_pop_i2_initerations_pop28_atax5_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop28_atax5_or0 = SE_out_i_llvm_fpga_pop_i2_initerations_pop28_atax5_consumed0;
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop28_atax5_wireStall = ~ (SE_out_i_llvm_fpga_pop_i2_initerations_pop28_atax5_consumed1 & SE_out_i_llvm_fpga_pop_i2_initerations_pop28_atax5_or0);
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop28_atax5_backStall = SE_out_i_llvm_fpga_pop_i2_initerations_pop28_atax5_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop28_atax5_V0 = SE_out_i_llvm_fpga_pop_i2_initerations_pop28_atax5_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_initerations_pop28_atax5_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop28_atax5_V1 = SE_out_i_llvm_fpga_pop_i2_initerations_pop28_atax5_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_initerations_pop28_atax5_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop28_atax5_wireValid = i_llvm_fpga_pop_i2_initerations_pop28_atax5_out_valid_out;

    // SE_i_masked_atax47(STALLENABLE,615)
    // Valid signal propagation
    assign SE_i_masked_atax47_V0 = SE_i_masked_atax47_R_v_0;
    // Stall signal propagation
    assign SE_i_masked_atax47_s_tv_0 = SE_redist10_i_masked_atax47_q_3_0_backStall & SE_i_masked_atax47_R_v_0;
    // Backward Enable generation
    assign SE_i_masked_atax47_backEN = ~ (SE_i_masked_atax47_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_masked_atax47_v_s_0 = SE_i_masked_atax47_backEN & SR_SE_i_masked_atax47_V;
    // Backward Stall generation
    assign SE_i_masked_atax47_backStall = ~ (SE_i_masked_atax47_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_masked_atax47_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_masked_atax47_backEN == 1'b0)
            begin
                SE_i_masked_atax47_R_v_0 <= SE_i_masked_atax47_R_v_0 & SE_i_masked_atax47_s_tv_0;
            end
            else
            begin
                SE_i_masked_atax47_R_v_0 <= SE_i_masked_atax47_v_s_0;
            end

        end
    end

    // i_masked_atax47(LOGICAL,100)@70 + 1
    assign i_masked_atax47_qi = SR_SE_i_masked_atax47_D0 & SR_SE_i_masked_atax47_D1;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_atax47_delay ( .xin(i_masked_atax47_qi), .xout(i_masked_atax47_q), .ena(SE_i_masked_atax47_backEN[0]), .clk(clock), .aclr(resetn) );

    // redist10_i_masked_atax47_q_3_0(REG,363)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_masked_atax47_q_3_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist10_i_masked_atax47_q_3_0_backEN == 1'b1)
        begin
            redist10_i_masked_atax47_q_3_0_q <= $unsigned(i_masked_atax47_q);
        end
    end

    // SE_redist10_i_masked_atax47_q_3_0(STALLENABLE,675)
    // Valid signal propagation
    assign SE_redist10_i_masked_atax47_q_3_0_V0 = SE_redist10_i_masked_atax47_q_3_0_R_v_0;
    // Stall signal propagation
    assign SE_redist10_i_masked_atax47_q_3_0_s_tv_0 = SR_SE_redist10_i_masked_atax47_q_3_1_backStall & SE_redist10_i_masked_atax47_q_3_0_R_v_0;
    // Backward Enable generation
    assign SE_redist10_i_masked_atax47_q_3_0_backEN = ~ (SE_redist10_i_masked_atax47_q_3_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist10_i_masked_atax47_q_3_0_v_s_0 = SE_redist10_i_masked_atax47_q_3_0_backEN & SE_i_masked_atax47_V0;
    // Backward Stall generation
    assign SE_redist10_i_masked_atax47_q_3_0_backStall = ~ (SE_redist10_i_masked_atax47_q_3_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist10_i_masked_atax47_q_3_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist10_i_masked_atax47_q_3_0_backEN == 1'b0)
            begin
                SE_redist10_i_masked_atax47_q_3_0_R_v_0 <= SE_redist10_i_masked_atax47_q_3_0_R_v_0 & SE_redist10_i_masked_atax47_q_3_0_s_tv_0;
            end
            else
            begin
                SE_redist10_i_masked_atax47_q_3_0_R_v_0 <= SE_redist10_i_masked_atax47_q_3_0_v_s_0;
            end

        end
    end

    // SR_SE_redist10_i_masked_atax47_q_3_1(STALLREG,916)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist10_i_masked_atax47_q_3_1_r_valid <= 1'b0;
            SR_SE_redist10_i_masked_atax47_q_3_1_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist10_i_masked_atax47_q_3_1_r_valid <= SE_redist10_i_masked_atax47_q_3_1_backStall & (SR_SE_redist10_i_masked_atax47_q_3_1_r_valid | SR_SE_redist10_i_masked_atax47_q_3_1_i_valid);

            if (SR_SE_redist10_i_masked_atax47_q_3_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist10_i_masked_atax47_q_3_1_r_data0 <= $unsigned(redist10_i_masked_atax47_q_3_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist10_i_masked_atax47_q_3_1_i_valid = SE_redist10_i_masked_atax47_q_3_0_V0;
    // Stall signal propagation
    assign SR_SE_redist10_i_masked_atax47_q_3_1_backStall = SR_SE_redist10_i_masked_atax47_q_3_1_r_valid | ~ (SR_SE_redist10_i_masked_atax47_q_3_1_i_valid);

    // Valid
    assign SR_SE_redist10_i_masked_atax47_q_3_1_V = SR_SE_redist10_i_masked_atax47_q_3_1_r_valid == 1'b1 ? SR_SE_redist10_i_masked_atax47_q_3_1_r_valid : SR_SE_redist10_i_masked_atax47_q_3_1_i_valid;

    assign SR_SE_redist10_i_masked_atax47_q_3_1_D0 = SR_SE_redist10_i_masked_atax47_q_3_1_r_valid == 1'b1 ? SR_SE_redist10_i_masked_atax47_q_3_1_r_data0 : redist10_i_masked_atax47_q_3_0_q;

    // SE_redist10_i_masked_atax47_q_3_1(STALLENABLE,676)
    // Valid signal propagation
    assign SE_redist10_i_masked_atax47_q_3_1_V0 = SE_redist10_i_masked_atax47_q_3_1_R_v_0;
    // Stall signal propagation
    assign SE_redist10_i_masked_atax47_q_3_1_s_tv_0 = SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1_backStall & SE_redist10_i_masked_atax47_q_3_1_R_v_0;
    // Backward Enable generation
    assign SE_redist10_i_masked_atax47_q_3_1_backEN = ~ (SE_redist10_i_masked_atax47_q_3_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist10_i_masked_atax47_q_3_1_v_s_0 = SE_redist10_i_masked_atax47_q_3_1_backEN & SR_SE_redist10_i_masked_atax47_q_3_1_V;
    // Backward Stall generation
    assign SE_redist10_i_masked_atax47_q_3_1_backStall = ~ (SE_redist10_i_masked_atax47_q_3_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist10_i_masked_atax47_q_3_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist10_i_masked_atax47_q_3_1_backEN == 1'b0)
            begin
                SE_redist10_i_masked_atax47_q_3_1_R_v_0 <= SE_redist10_i_masked_atax47_q_3_1_R_v_0 & SE_redist10_i_masked_atax47_q_3_1_s_tv_0;
            end
            else
            begin
                SE_redist10_i_masked_atax47_q_3_1_R_v_0 <= SE_redist10_i_masked_atax47_q_3_1_v_s_0;
            end

        end
    end

    // redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo(STALLFIFO,376)
    assign redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_valid_in = SE_out_redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_V1;
    assign redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_stall_in = SE_out_redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_backStall;
    assign redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_data_in = bubble_select_redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_b;
    assign redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_valid_in_bitsignaltemp = redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_valid_in[0];
    assign redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_stall_in_bitsignaltemp = redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_stall_in[0];
    assign redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_valid_out[0] = redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_valid_out_bitsignaltemp;
    assign redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_stall_out[0] = redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(37),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo (
        .valid_in(redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_valid_in_bitsignaltemp),
        .stall_in(redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_b),
        .valid_out(redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_valid_out_bitsignaltemp),
        .stall_out(redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_stall_out_bitsignaltemp),
        .data_out(redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo(STALLENABLE,693)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_fromReg0 <= '0;
            SE_out_redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_fromReg0 <= SE_out_redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_toReg0;
            // Successor 1
            SE_out_redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_fromReg1 <= SE_out_redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_consumed0 = (~ (SE_in_i_llvm_fpga_push_i32_add758_push37_atax28_backStall) & SE_out_redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_wireValid) | SE_out_redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_fromReg0;
    assign SE_out_redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_consumed1 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1_backStall) & SE_out_redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_wireValid) | SE_out_redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_fromReg1;
    // Consuming
    assign SE_out_redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_StallValid = SE_out_redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_backStall & SE_out_redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_wireValid;
    assign SE_out_redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_toReg0 = SE_out_redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_StallValid & SE_out_redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_consumed0;
    assign SE_out_redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_toReg1 = SE_out_redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_StallValid & SE_out_redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_or0 = SE_out_redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_consumed0;
    assign SE_out_redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_wireStall = ~ (SE_out_redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_consumed1 & SE_out_redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_or0);
    assign SE_out_redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_backStall = SE_out_redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_V0 = SE_out_redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_wireValid & ~ (SE_out_redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_fromReg0);
    assign SE_out_redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_V1 = SE_out_redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_wireValid & ~ (SE_out_redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_wireValid = redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_valid_out;

    // SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1(STALLENABLE,817)
    // Valid signal propagation
    assign SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1_V0 = SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1_backStall = in_stall_in | ~ (SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1_and0 = bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1_reg_valid_out;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1_and1 = bubble_out_i_llvm_fpga_pipeline_keep_going_atax4_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1_and0;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1_and2 = SE_out_redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_V1 & SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1_and1;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1_and3 = SE_redist10_i_masked_atax47_q_3_1_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1_and2;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1_and4 = SE_out_i_llvm_fpga_pop_i2_initerations_pop28_atax5_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1_and3;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1_and5 = SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1_and4;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1_and6 = SE_out_i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1_and5;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1_and7 = SE_out_i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1_and6;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1_wireValid = SE_out_i_llvm_fpga_mem_memdep_atax33_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1_and7;

    // SE_out_i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52(STALLENABLE,568)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1_backStall) & SE_out_i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_wireValid) | SE_out_i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_notcmp3553_push33_atax53_backStall) & SE_out_i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_wireValid) | SE_out_i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_StallValid = SE_out_i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_backStall & SE_out_i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_toReg0 = SE_out_i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_StallValid & SE_out_i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_toReg1 = SE_out_i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_StallValid & SE_out_i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_or0 = SE_out_i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_consumed1 & SE_out_i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_or0);
    assign SE_out_i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_backStall = SE_out_i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_V0 = SE_out_i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_V1 = SE_out_i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_wireValid = i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_out_valid_out;

    // SE_out_i_llvm_fpga_push_i1_notcmp3553_push33_atax53(STALLENABLE,596)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_notcmp3553_push33_atax53_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_notcmp3553_push33_atax53_wireValid = i_llvm_fpga_push_i1_notcmp3553_push33_atax53_out_valid_out;

    // bubble_join_i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52(BITJOIN,444)
    assign bubble_join_i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_q = i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52(BITSELECT,445)
    assign bubble_select_i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_q[0:0]);

    // i_llvm_fpga_push_i1_notcmp3553_push33_atax53(BLACKBOX,90)@73
    // in in_stall_in@20000000
    // out out_data_out@74
    // out out_feedback_out_33@20000000
    // out out_feedback_valid_out_33@20000000
    // out out_stall_out@20000000
    // out out_valid_out@74
    atax_i_llvm_fpga_push_i1_notcmp3553_push33_0 thei_llvm_fpga_push_i1_notcmp3553_push33_atax53 (
        .in_data_in(bubble_select_i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_b),
        .in_feedback_stall_in_33(i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_out_feedback_stall_out_33),
        .in_keep_going(redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_q),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_notcmp3553_push33_atax53_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_notcmp3553_push33_atax53_V0),
        .out_data_out(),
        .out_feedback_out_33(i_llvm_fpga_push_i1_notcmp3553_push33_atax53_out_feedback_out_33),
        .out_feedback_valid_out_33(i_llvm_fpga_push_i1_notcmp3553_push33_atax53_out_feedback_valid_out_33),
        .out_stall_out(i_llvm_fpga_push_i1_notcmp3553_push33_atax53_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_notcmp3553_push33_atax53_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52(BLACKBOX,76)@72
    // in in_stall_in@20000000
    // out out_data_out@73
    // out out_feedback_stall_out_33@20000000
    // out out_stall_out@20000000
    // out out_valid_out@73
    atax_i_llvm_fpga_pop_i1_notcmp3553_pop33_0 thei_llvm_fpga_pop_i1_notcmp3553_pop33_atax52 (
        .in_data_in(SR_SE_out_coalesced_delay_1_fifo_D4),
        .in_dir(SR_SE_out_coalesced_delay_1_fifo_D2),
        .in_feedback_in_33(i_llvm_fpga_push_i1_notcmp3553_push33_atax53_out_feedback_out_33),
        .in_feedback_valid_in_33(i_llvm_fpga_push_i1_notcmp3553_push33_atax53_out_feedback_valid_out_33),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_backStall),
        .in_valid_in(SE_out_coalesced_delay_1_fifo_V1),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_out_data_out),
        .out_feedback_stall_out_33(i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_out_feedback_stall_out_33),
        .out_stall_out(i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_i1_exitcond1251_push32_atax51(STALLENABLE,586)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_exitcond1251_push32_atax51_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_exitcond1251_push32_atax51_wireValid = i_llvm_fpga_push_i1_exitcond1251_push32_atax51_out_valid_out;

    // bubble_join_i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50(BITJOIN,431)
    assign bubble_join_i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_q = i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50(BITSELECT,432)
    assign bubble_select_i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_q[0:0]);

    // i_llvm_fpga_push_i1_exitcond1251_push32_atax51(BLACKBOX,85)@73
    // in in_stall_in@20000000
    // out out_data_out@74
    // out out_feedback_out_32@20000000
    // out out_feedback_valid_out_32@20000000
    // out out_stall_out@20000000
    // out out_valid_out@74
    atax_i_llvm_fpga_push_i1_exitcond1251_push32_0 thei_llvm_fpga_push_i1_exitcond1251_push32_atax51 (
        .in_data_in(bubble_select_i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_b),
        .in_feedback_stall_in_32(i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_out_feedback_stall_out_32),
        .in_keep_going(redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_q),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_exitcond1251_push32_atax51_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_exitcond1251_push32_atax51_V0),
        .out_data_out(),
        .out_feedback_out_32(i_llvm_fpga_push_i1_exitcond1251_push32_atax51_out_feedback_out_32),
        .out_feedback_valid_out_32(i_llvm_fpga_push_i1_exitcond1251_push32_atax51_out_feedback_valid_out_32),
        .out_stall_out(i_llvm_fpga_push_i1_exitcond1251_push32_atax51_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_exitcond1251_push32_atax51_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50(BLACKBOX,72)@72
    // in in_stall_in@20000000
    // out out_data_out@73
    // out out_feedback_stall_out_32@20000000
    // out out_stall_out@20000000
    // out out_valid_out@73
    atax_i_llvm_fpga_pop_i1_exitcond1251_pop32_0 thei_llvm_fpga_pop_i1_exitcond1251_pop32_atax50 (
        .in_data_in(SR_SE_out_coalesced_delay_1_fifo_D0),
        .in_dir(SR_SE_out_coalesced_delay_1_fifo_D1),
        .in_feedback_in_32(i_llvm_fpga_push_i1_exitcond1251_push32_atax51_out_feedback_out_32),
        .in_feedback_valid_in_32(i_llvm_fpga_push_i1_exitcond1251_push32_atax51_out_feedback_valid_out_32),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_backStall),
        .in_valid_in(SE_out_coalesced_delay_1_fifo_V0),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_out_data_out),
        .out_feedback_stall_out_32(i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_out_feedback_stall_out_32),
        .out_stall_out(i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_coalesced_delay_1_fifo(STALLENABLE,735)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_coalesced_delay_1_fifo_fromReg0 <= '0;
            SE_out_coalesced_delay_1_fifo_fromReg1 <= '0;
            SE_out_coalesced_delay_1_fifo_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_coalesced_delay_1_fifo_fromReg0 <= SE_out_coalesced_delay_1_fifo_toReg0;
            // Successor 1
            SE_out_coalesced_delay_1_fifo_fromReg1 <= SE_out_coalesced_delay_1_fifo_toReg1;
            // Successor 2
            SE_out_coalesced_delay_1_fifo_fromReg2 <= SE_out_coalesced_delay_1_fifo_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_coalesced_delay_1_fifo_consumed0 = (~ (i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_out_stall_out) & SE_out_coalesced_delay_1_fifo_wireValid) | SE_out_coalesced_delay_1_fifo_fromReg0;
    assign SE_out_coalesced_delay_1_fifo_consumed1 = (~ (i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_out_stall_out) & SE_out_coalesced_delay_1_fifo_wireValid) | SE_out_coalesced_delay_1_fifo_fromReg1;
    assign SE_out_coalesced_delay_1_fifo_consumed2 = (~ (i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_out_stall_out) & SE_out_coalesced_delay_1_fifo_wireValid) | SE_out_coalesced_delay_1_fifo_fromReg2;
    // Consuming
    assign SE_out_coalesced_delay_1_fifo_StallValid = SE_out_coalesced_delay_1_fifo_backStall & SE_out_coalesced_delay_1_fifo_wireValid;
    assign SE_out_coalesced_delay_1_fifo_toReg0 = SE_out_coalesced_delay_1_fifo_StallValid & SE_out_coalesced_delay_1_fifo_consumed0;
    assign SE_out_coalesced_delay_1_fifo_toReg1 = SE_out_coalesced_delay_1_fifo_StallValid & SE_out_coalesced_delay_1_fifo_consumed1;
    assign SE_out_coalesced_delay_1_fifo_toReg2 = SE_out_coalesced_delay_1_fifo_StallValid & SE_out_coalesced_delay_1_fifo_consumed2;
    // Backward Stall generation
    assign SE_out_coalesced_delay_1_fifo_or0 = SE_out_coalesced_delay_1_fifo_consumed0;
    assign SE_out_coalesced_delay_1_fifo_or1 = SE_out_coalesced_delay_1_fifo_consumed1 & SE_out_coalesced_delay_1_fifo_or0;
    assign SE_out_coalesced_delay_1_fifo_wireStall = ~ (SE_out_coalesced_delay_1_fifo_consumed2 & SE_out_coalesced_delay_1_fifo_or1);
    assign SE_out_coalesced_delay_1_fifo_backStall = SE_out_coalesced_delay_1_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_coalesced_delay_1_fifo_V0 = SE_out_coalesced_delay_1_fifo_wireValid & ~ (SE_out_coalesced_delay_1_fifo_fromReg0);
    assign SE_out_coalesced_delay_1_fifo_V1 = SE_out_coalesced_delay_1_fifo_wireValid & ~ (SE_out_coalesced_delay_1_fifo_fromReg1);
    assign SE_out_coalesced_delay_1_fifo_V2 = SE_out_coalesced_delay_1_fifo_wireValid & ~ (SE_out_coalesced_delay_1_fifo_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_1_fifo_wireValid = SR_SE_out_coalesced_delay_1_fifo_V;

    // bubble_join_coalesced_delay_1_fifo(BITJOIN,530)
    assign bubble_join_coalesced_delay_1_fifo_q = coalesced_delay_1_fifo_data_out;

    // bubble_select_coalesced_delay_1_fifo(BITSELECT,531)
    assign bubble_select_coalesced_delay_1_fifo_b = $unsigned(bubble_join_coalesced_delay_1_fifo_q[65:0]);

    // sel_for_coalesced_delay_1(BITSELECT,352)
    assign sel_for_coalesced_delay_1_b = $unsigned(bubble_select_coalesced_delay_1_fifo_b[63:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(bubble_select_coalesced_delay_1_fifo_b[64:64]);
    assign sel_for_coalesced_delay_1_d = $unsigned(bubble_select_coalesced_delay_1_fifo_b[65:65]);

    // SE_stall_entry(STALLENABLE,622)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = atax_B5_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bubble_join_stall_entry(BITJOIN,475)
    assign bubble_join_stall_entry_q = {in_notcmp3552_pop2379, in_mul_add1448_pop2167, in_memdep_phi3_pop1354_pop2469, in_memdep_phi3_or71, in_mPtr_bitcast_index8845_pop1975, in_mPtr_bitcast778965, in_forked, in_exitcond1250_pop2277, in_add773};

    // bubble_select_stall_entry(BITSELECT,476)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:32]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[33:33]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[97:34]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[161:98]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[162:162]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[163:163]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[195:164]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[196:196]);

    // atax_B5_merge_reg_aunroll_x(BLACKBOX,2)@0
    // in in_stall_in@20000000
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    // out out_data_out_3_tpl@1
    // out out_data_out_4_tpl@1
    // out out_data_out_5_tpl@1
    // out out_data_out_6_tpl@1
    // out out_data_out_7_tpl@1
    // out out_data_out_8_tpl@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    atax_B5_merge_reg theatax_B5_merge_reg_aunroll_x (
        .in_data_in_0_tpl(bubble_select_stall_entry_d),
        .in_data_in_1_tpl(bubble_select_stall_entry_e),
        .in_data_in_2_tpl(bubble_select_stall_entry_i),
        .in_data_in_3_tpl(bubble_select_stall_entry_h),
        .in_data_in_4_tpl(bubble_select_stall_entry_g),
        .in_data_in_5_tpl(bubble_select_stall_entry_b),
        .in_data_in_6_tpl(bubble_select_stall_entry_f),
        .in_data_in_7_tpl(bubble_select_stall_entry_c),
        .in_data_in_8_tpl(bubble_select_stall_entry_j),
        .in_stall_in(SE_out_atax_B5_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out_0_tpl(atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(atax_B5_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(atax_B5_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(atax_B5_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(atax_B5_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(atax_B5_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(atax_B5_merge_reg_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(atax_B5_merge_reg_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(atax_B5_merge_reg_aunroll_x_out_data_out_8_tpl),
        .out_stall_out(atax_B5_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(atax_B5_merge_reg_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_atax_B5_merge_reg_aunroll_x(BITJOIN,410)
    assign bubble_join_atax_B5_merge_reg_aunroll_x_q = {atax_B5_merge_reg_aunroll_x_out_data_out_8_tpl, atax_B5_merge_reg_aunroll_x_out_data_out_7_tpl, atax_B5_merge_reg_aunroll_x_out_data_out_6_tpl, atax_B5_merge_reg_aunroll_x_out_data_out_5_tpl, atax_B5_merge_reg_aunroll_x_out_data_out_4_tpl, atax_B5_merge_reg_aunroll_x_out_data_out_3_tpl, atax_B5_merge_reg_aunroll_x_out_data_out_2_tpl, atax_B5_merge_reg_aunroll_x_out_data_out_1_tpl, atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_atax_B5_merge_reg_aunroll_x(BITSELECT,411)
    assign bubble_select_atax_B5_merge_reg_aunroll_x_b = $unsigned(bubble_join_atax_B5_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_atax_B5_merge_reg_aunroll_x_c = $unsigned(bubble_join_atax_B5_merge_reg_aunroll_x_q[64:1]);
    assign bubble_select_atax_B5_merge_reg_aunroll_x_d = $unsigned(bubble_join_atax_B5_merge_reg_aunroll_x_q[96:65]);
    assign bubble_select_atax_B5_merge_reg_aunroll_x_e = $unsigned(bubble_join_atax_B5_merge_reg_aunroll_x_q[97:97]);
    assign bubble_select_atax_B5_merge_reg_aunroll_x_f = $unsigned(bubble_join_atax_B5_merge_reg_aunroll_x_q[98:98]);
    assign bubble_select_atax_B5_merge_reg_aunroll_x_g = $unsigned(bubble_join_atax_B5_merge_reg_aunroll_x_q[130:99]);
    assign bubble_select_atax_B5_merge_reg_aunroll_x_h = $unsigned(bubble_join_atax_B5_merge_reg_aunroll_x_q[194:131]);
    assign bubble_select_atax_B5_merge_reg_aunroll_x_i = $unsigned(bubble_join_atax_B5_merge_reg_aunroll_x_q[195:195]);
    assign bubble_select_atax_B5_merge_reg_aunroll_x_j = $unsigned(bubble_join_atax_B5_merge_reg_aunroll_x_q[196:196]);

    // join_for_coalesced_delay_1(BITJOIN,351)
    assign join_for_coalesced_delay_1_q = {bubble_select_atax_B5_merge_reg_aunroll_x_j, bubble_select_atax_B5_merge_reg_aunroll_x_i, bubble_select_atax_B5_merge_reg_aunroll_x_h};

    // join_for_coalesced_delay_0(BITJOIN,348)
    assign join_for_coalesced_delay_0_q = {bubble_select_atax_B5_merge_reg_aunroll_x_b, bubble_select_atax_B5_merge_reg_aunroll_x_g};

    // coalesced_delay_0_0(REG,405)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(33'b000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // SE_coalesced_delay_0_1(STALLENABLE,732)
    // Valid signal propagation
    assign SE_coalesced_delay_0_1_V0 = SE_coalesced_delay_0_1_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_1_s_tv_0 = SR_SE_coalesced_delay_0_2_backStall & SE_coalesced_delay_0_1_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_1_backEN = ~ (SE_coalesced_delay_0_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_1_v_s_0 = SE_coalesced_delay_0_1_backEN & SR_SE_coalesced_delay_0_1_V;
    // Backward Stall generation
    assign SE_coalesced_delay_0_1_backStall = ~ (SE_coalesced_delay_0_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_1_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_1_R_v_0 <= SE_coalesced_delay_0_1_R_v_0 & SE_coalesced_delay_0_1_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_1_R_v_0 <= SE_coalesced_delay_0_1_v_s_0;
            end

        end
    end

    // SR_SE_coalesced_delay_0_1(STALLREG,912)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_coalesced_delay_0_1_r_valid <= 1'b0;
            SR_SE_coalesced_delay_0_1_r_data0 <= 33'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_coalesced_delay_0_1_r_valid <= SE_coalesced_delay_0_1_backStall & (SR_SE_coalesced_delay_0_1_r_valid | SR_SE_coalesced_delay_0_1_i_valid);

            if (SR_SE_coalesced_delay_0_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_coalesced_delay_0_1_r_data0 <= $unsigned(coalesced_delay_0_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_coalesced_delay_0_1_i_valid = SE_coalesced_delay_0_0_V0;
    // Stall signal propagation
    assign SR_SE_coalesced_delay_0_1_backStall = SR_SE_coalesced_delay_0_1_r_valid | ~ (SR_SE_coalesced_delay_0_1_i_valid);

    // Valid
    assign SR_SE_coalesced_delay_0_1_V = SR_SE_coalesced_delay_0_1_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_1_r_valid : SR_SE_coalesced_delay_0_1_i_valid;

    assign SR_SE_coalesced_delay_0_1_D0 = SR_SE_coalesced_delay_0_1_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_1_r_data0 : coalesced_delay_0_0_q;

    // SE_coalesced_delay_0_0(STALLENABLE,731)
    // Valid signal propagation
    assign SE_coalesced_delay_0_0_V0 = SE_coalesced_delay_0_0_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_0_s_tv_0 = SR_SE_coalesced_delay_0_1_backStall & SE_coalesced_delay_0_0_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_0_backEN = ~ (SE_coalesced_delay_0_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_0_v_s_0 = SE_coalesced_delay_0_0_backEN & SE_out_atax_B5_merge_reg_aunroll_x_V6;
    // Backward Stall generation
    assign SE_coalesced_delay_0_0_backStall = ~ (SE_coalesced_delay_0_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_0_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_R_v_0 & SE_coalesced_delay_0_0_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_v_s_0;
            end

        end
    end

    // bubble_join_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21(BITJOIN,468)
    assign bubble_join_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_q = i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out;

    // bubble_select_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21(BITSELECT,469)
    assign bubble_select_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_b = $unsigned(bubble_join_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_q[63:0]);

    // redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0(REG,365)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_backEN == 1'b1)
        begin
            redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_q <= $unsigned(bubble_select_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_b);
        end
    end

    // redist12_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_68_fifo(STALLFIFO,366)
    assign redist12_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_68_fifo_valid_in = SE_redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_V2;
    assign redist12_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_68_fifo_stall_in = SE_out_redist12_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_68_fifo_backStall;
    assign redist12_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_68_fifo_data_in = redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_q;
    assign redist12_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_68_fifo_valid_in_bitsignaltemp = redist12_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_68_fifo_valid_in[0];
    assign redist12_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_68_fifo_stall_in_bitsignaltemp = redist12_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_68_fifo_stall_in[0];
    assign redist12_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_68_fifo_valid_out[0] = redist12_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_68_fifo_valid_out_bitsignaltemp;
    assign redist12_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_68_fifo_stall_out[0] = redist12_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_68_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(68),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(64),
        .IMPL("ram")
    ) theredist12_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_68_fifo (
        .valid_in(redist12_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_68_fifo_valid_in_bitsignaltemp),
        .stall_in(redist12_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_68_fifo_stall_in_bitsignaltemp),
        .data_in(redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_q),
        .valid_out(redist12_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_68_fifo_valid_out_bitsignaltemp),
        .stall_out(redist12_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_68_fifo_stall_out_bitsignaltemp),
        .data_out(redist12_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_68_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_057(CONSTANT,48)
    assign c_i32_057_q = $unsigned(32'b00000000000000000000000000000000);

    // i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_b_tessel0_2(BITSELECT,276)
    assign i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_b_tessel0_2_b = c_i32_057_q[25:0];

    // SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_4(STALLENABLE,686)
    // Valid signal propagation
    assign SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_4_V0 = SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_4_R_v_0;
    // Stall signal propagation
    assign SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_4_s_tv_0 = SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_5_backStall & SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_4_R_v_0;
    // Backward Enable generation
    assign SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_4_backEN = ~ (SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_4_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_4_v_s_0 = SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_4_backEN & SR_SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_4_V;
    // Backward Stall generation
    assign SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_4_backStall = ~ (SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_4_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_4_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_4_backEN == 1'b0)
            begin
                SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_4_R_v_0 <= SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_4_R_v_0 & SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_4_s_tv_0;
            end
            else
            begin
                SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_4_R_v_0 <= SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_4_v_s_0;
            end

        end
    end

    // SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_2(STALLENABLE,684)
    // Valid signal propagation
    assign SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_2_V0 = SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_2_R_v_0;
    // Stall signal propagation
    assign SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_2_s_tv_0 = SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_3_backStall & SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_2_R_v_0;
    // Backward Enable generation
    assign SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_2_backEN = ~ (SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_2_v_s_0 = SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_2_backEN & SR_SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_2_V;
    // Backward Stall generation
    assign SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_2_backStall = ~ (SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_2_backEN == 1'b0)
            begin
                SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_2_R_v_0 <= SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_2_R_v_0 & SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_2_s_tv_0;
            end
            else
            begin
                SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_2_R_v_0 <= SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_2_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_pop_i32_j_175_pop26_atax10(STALLENABLE,576)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i32_j_175_pop26_atax10_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i32_j_175_pop26_atax10_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i32_j_175_pop26_atax10_fromReg0 <= SE_out_i_llvm_fpga_pop_i32_j_175_pop26_atax10_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i32_j_175_pop26_atax10_fromReg1 <= SE_out_i_llvm_fpga_pop_i32_j_175_pop26_atax10_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i32_j_175_pop26_atax10_consumed0 = (~ (SE_i_add13_atax19_backStall) & SE_out_i_llvm_fpga_pop_i32_j_175_pop26_atax10_wireValid) | SE_out_i_llvm_fpga_pop_i32_j_175_pop26_atax10_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i32_j_175_pop26_atax10_consumed1 = (~ (SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_0_backStall) & SE_out_i_llvm_fpga_pop_i32_j_175_pop26_atax10_wireValid) | SE_out_i_llvm_fpga_pop_i32_j_175_pop26_atax10_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i32_j_175_pop26_atax10_StallValid = SE_out_i_llvm_fpga_pop_i32_j_175_pop26_atax10_backStall & SE_out_i_llvm_fpga_pop_i32_j_175_pop26_atax10_wireValid;
    assign SE_out_i_llvm_fpga_pop_i32_j_175_pop26_atax10_toReg0 = SE_out_i_llvm_fpga_pop_i32_j_175_pop26_atax10_StallValid & SE_out_i_llvm_fpga_pop_i32_j_175_pop26_atax10_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_j_175_pop26_atax10_toReg1 = SE_out_i_llvm_fpga_pop_i32_j_175_pop26_atax10_StallValid & SE_out_i_llvm_fpga_pop_i32_j_175_pop26_atax10_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i32_j_175_pop26_atax10_or0 = SE_out_i_llvm_fpga_pop_i32_j_175_pop26_atax10_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_j_175_pop26_atax10_wireStall = ~ (SE_out_i_llvm_fpga_pop_i32_j_175_pop26_atax10_consumed1 & SE_out_i_llvm_fpga_pop_i32_j_175_pop26_atax10_or0);
    assign SE_out_i_llvm_fpga_pop_i32_j_175_pop26_atax10_backStall = SE_out_i_llvm_fpga_pop_i32_j_175_pop26_atax10_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i32_j_175_pop26_atax10_V0 = SE_out_i_llvm_fpga_pop_i32_j_175_pop26_atax10_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_j_175_pop26_atax10_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i32_j_175_pop26_atax10_V1 = SE_out_i_llvm_fpga_pop_i32_j_175_pop26_atax10_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_j_175_pop26_atax10_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i32_j_175_pop26_atax10_wireValid = i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_valid_out;

    // SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_0(STALLENABLE,682)
    // Valid signal propagation
    assign SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_0_V0 = SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_0_R_v_0;
    // Stall signal propagation
    assign SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_0_s_tv_0 = SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_1_backStall & SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_0_R_v_0;
    // Backward Enable generation
    assign SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_0_backEN = ~ (SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_0_v_s_0 = SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_0_backEN & SE_out_i_llvm_fpga_pop_i32_j_175_pop26_atax10_V1;
    // Backward Stall generation
    assign SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_0_backStall = ~ (SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_0_backEN == 1'b0)
            begin
                SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_0_R_v_0 <= SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_0_R_v_0 & SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_0_s_tv_0;
            end
            else
            begin
                SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_0_R_v_0 <= SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_0_v_s_0;
            end

        end
    end

    // bubble_join_i_llvm_fpga_pop_i32_j_175_pop26_atax10(BITJOIN,458)
    assign bubble_join_i_llvm_fpga_pop_i32_j_175_pop26_atax10_q = i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_j_175_pop26_atax10(BITSELECT,459)
    assign bubble_select_i_llvm_fpga_pop_i32_j_175_pop26_atax10_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_j_175_pop26_atax10_q[31:0]);

    // redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_0(REG,368)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_0_backEN == 1'b1)
        begin
            redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_0_q <= $unsigned(bubble_select_i_llvm_fpga_pop_i32_j_175_pop26_atax10_b);
        end
    end

    // redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_1(REG,369)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_1_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_1_backEN == 1'b1)
        begin
            redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_1_q <= $unsigned(redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_0_q);
        end
    end

    // SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_1(STALLENABLE,683)
    // Valid signal propagation
    assign SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_1_V0 = SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_1_R_v_0;
    // Stall signal propagation
    assign SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_1_s_tv_0 = SR_SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_2_backStall & SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_1_R_v_0;
    // Backward Enable generation
    assign SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_1_backEN = ~ (SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_1_v_s_0 = SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_1_backEN & SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_0_V0;
    // Backward Stall generation
    assign SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_1_backStall = ~ (SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_1_backEN == 1'b0)
            begin
                SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_1_R_v_0 <= SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_1_R_v_0 & SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_1_s_tv_0;
            end
            else
            begin
                SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_1_R_v_0 <= SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_1_v_s_0;
            end

        end
    end

    // SR_SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_2(STALLREG,919)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_2_r_valid <= 1'b0;
            SR_SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_2_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_2_r_valid <= SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_2_backStall & (SR_SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_2_r_valid | SR_SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_2_i_valid);

            if (SR_SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_2_r_data0 <= $unsigned(redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_2_i_valid = SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_1_V0;
    // Stall signal propagation
    assign SR_SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_2_backStall = SR_SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_2_r_valid | ~ (SR_SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_2_i_valid);

    // Valid
    assign SR_SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_2_V = SR_SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_2_r_valid == 1'b1 ? SR_SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_2_r_valid : SR_SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_2_i_valid;

    assign SR_SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_2_D0 = SR_SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_2_r_valid == 1'b1 ? SR_SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_2_r_data0 : redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_1_q;

    // redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_2(REG,370)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_2_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_2_backEN == 1'b1)
        begin
            redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_2_q <= $unsigned(SR_SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_2_D0);
        end
    end

    // redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_3(REG,371)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_3_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_3_backEN == 1'b1)
        begin
            redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_3_q <= $unsigned(redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_2_q);
        end
    end

    // SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_3(STALLENABLE,685)
    // Valid signal propagation
    assign SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_3_V0 = SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_3_R_v_0;
    // Stall signal propagation
    assign SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_3_s_tv_0 = SR_SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_4_backStall & SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_3_R_v_0;
    // Backward Enable generation
    assign SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_3_backEN = ~ (SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_3_v_s_0 = SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_3_backEN & SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_2_V0;
    // Backward Stall generation
    assign SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_3_backStall = ~ (SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_3_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_3_backEN == 1'b0)
            begin
                SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_3_R_v_0 <= SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_3_R_v_0 & SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_3_s_tv_0;
            end
            else
            begin
                SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_3_R_v_0 <= SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_3_v_s_0;
            end

        end
    end

    // SR_SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_4(STALLREG,920)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_4_r_valid <= 1'b0;
            SR_SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_4_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_4_r_valid <= SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_4_backStall & (SR_SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_4_r_valid | SR_SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_4_i_valid);

            if (SR_SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_4_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_4_r_data0 <= $unsigned(redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_3_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_4_i_valid = SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_3_V0;
    // Stall signal propagation
    assign SR_SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_4_backStall = SR_SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_4_r_valid | ~ (SR_SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_4_i_valid);

    // Valid
    assign SR_SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_4_V = SR_SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_4_r_valid == 1'b1 ? SR_SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_4_r_valid : SR_SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_4_i_valid;

    assign SR_SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_4_D0 = SR_SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_4_r_valid == 1'b1 ? SR_SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_4_r_data0 : redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_3_q;

    // redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_4(REG,372)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_4_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_4_backEN == 1'b1)
        begin
            redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_4_q <= $unsigned(SR_SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_4_D0);
        end
    end

    // redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_5(REG,373)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_5_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_5_backEN == 1'b1)
        begin
            redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_5_q <= $unsigned(redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_4_q);
        end
    end

    // i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_b_BitJoin_for_b(BITJOIN,277)@8
    assign i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_b_BitJoin_for_b_q = {i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_b_tessel0_2_b, redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_5_q, i_mptr_bitcast_index84_atax0_c_i2_01_x_q};

    // SE_out_bubble_out_atax_B5_merge_reg_aunroll_x_1(STALLENABLE,741)
    // Valid signal propagation
    assign SE_out_bubble_out_atax_B5_merge_reg_aunroll_x_1_V0 = SE_out_bubble_out_atax_B5_merge_reg_aunroll_x_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_atax_B5_merge_reg_aunroll_x_1_backStall = i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12_out_stall_out | ~ (SE_out_bubble_out_atax_B5_merge_reg_aunroll_x_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_atax_B5_merge_reg_aunroll_x_1_wireValid = bubble_out_atax_B5_merge_reg_aunroll_x_1_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12(BLACKBOX,67)@7
    // in in_stall_in@20000000
    // out out_dest_data_out_3_0@8
    // out out_stall_out@20000000
    // out out_valid_out@8
    atax_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_0 thei_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12_backStall),
        .in_valid_in(SE_out_bubble_out_atax_B5_merge_reg_aunroll_x_1_V0),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12_out_dest_data_out_3_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12(BITJOIN,414)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12_q = i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12_out_dest_data_out_3_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12(BITSELECT,415)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12_q[63:0]);

    // i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,304)@8
    assign i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12_b[59:0]);
    assign i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12_b[63:60]);

    // SE_redist6_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_q_1_0(STALLENABLE,671)
    // Valid signal propagation
    assign SE_redist6_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_q_1_0_V0 = SE_redist6_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist6_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_q_1_0_s_tv_0 = SE_i_mptr_bitcast_index84_atax0_add_x_BitJoin_for_q_backStall & SE_redist6_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist6_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_q_1_0_backEN = ~ (SE_redist6_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist6_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_q_1_0_v_s_0 = SE_redist6_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_q_1_0_backEN & SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_V1;
    // Backward Stall generation
    assign SE_redist6_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_q_1_0_backStall = ~ (SE_redist6_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_q_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist6_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist6_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_q_1_0_backEN == 1'b0)
            begin
                SE_redist6_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist6_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_q_1_0_R_v_0 & SE_redist6_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist6_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist6_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_q_1_0_v_s_0;
            end

        end
    end

    // SE_i_mptr_bitcast_index84_atax0_add_x_BitJoin_for_q(STALLENABLE,637)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mptr_bitcast_index84_atax0_add_x_BitJoin_for_q_fromReg0 <= '0;
            SE_i_mptr_bitcast_index84_atax0_add_x_BitJoin_for_q_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_mptr_bitcast_index84_atax0_add_x_BitJoin_for_q_fromReg0 <= SE_i_mptr_bitcast_index84_atax0_add_x_BitJoin_for_q_toReg0;
            // Successor 1
            SE_i_mptr_bitcast_index84_atax0_add_x_BitJoin_for_q_fromReg1 <= SE_i_mptr_bitcast_index84_atax0_add_x_BitJoin_for_q_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_mptr_bitcast_index84_atax0_add_x_BitJoin_for_q_consumed0 = (~ (SR_SE_in_i_llvm_fpga_mem_unnamed_atax15_atax16_backStall) & SE_i_mptr_bitcast_index84_atax0_add_x_BitJoin_for_q_wireValid) | SE_i_mptr_bitcast_index84_atax0_add_x_BitJoin_for_q_fromReg0;
    assign SE_i_mptr_bitcast_index84_atax0_add_x_BitJoin_for_q_consumed1 = (~ (redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_stall_out) & SE_i_mptr_bitcast_index84_atax0_add_x_BitJoin_for_q_wireValid) | SE_i_mptr_bitcast_index84_atax0_add_x_BitJoin_for_q_fromReg1;
    // Consuming
    assign SE_i_mptr_bitcast_index84_atax0_add_x_BitJoin_for_q_StallValid = SE_i_mptr_bitcast_index84_atax0_add_x_BitJoin_for_q_backStall & SE_i_mptr_bitcast_index84_atax0_add_x_BitJoin_for_q_wireValid;
    assign SE_i_mptr_bitcast_index84_atax0_add_x_BitJoin_for_q_toReg0 = SE_i_mptr_bitcast_index84_atax0_add_x_BitJoin_for_q_StallValid & SE_i_mptr_bitcast_index84_atax0_add_x_BitJoin_for_q_consumed0;
    assign SE_i_mptr_bitcast_index84_atax0_add_x_BitJoin_for_q_toReg1 = SE_i_mptr_bitcast_index84_atax0_add_x_BitJoin_for_q_StallValid & SE_i_mptr_bitcast_index84_atax0_add_x_BitJoin_for_q_consumed1;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index84_atax0_add_x_BitJoin_for_q_or0 = SE_i_mptr_bitcast_index84_atax0_add_x_BitJoin_for_q_consumed0;
    assign SE_i_mptr_bitcast_index84_atax0_add_x_BitJoin_for_q_wireStall = ~ (SE_i_mptr_bitcast_index84_atax0_add_x_BitJoin_for_q_consumed1 & SE_i_mptr_bitcast_index84_atax0_add_x_BitJoin_for_q_or0);
    assign SE_i_mptr_bitcast_index84_atax0_add_x_BitJoin_for_q_backStall = SE_i_mptr_bitcast_index84_atax0_add_x_BitJoin_for_q_wireStall;
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index84_atax0_add_x_BitJoin_for_q_V0 = SE_i_mptr_bitcast_index84_atax0_add_x_BitJoin_for_q_wireValid & ~ (SE_i_mptr_bitcast_index84_atax0_add_x_BitJoin_for_q_fromReg0);
    assign SE_i_mptr_bitcast_index84_atax0_add_x_BitJoin_for_q_V1 = SE_i_mptr_bitcast_index84_atax0_add_x_BitJoin_for_q_wireValid & ~ (SE_i_mptr_bitcast_index84_atax0_add_x_BitJoin_for_q_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_mptr_bitcast_index84_atax0_add_x_BitJoin_for_q_and0 = SE_i_mptr_bitcast_index84_atax0_add_x_p2_of_2_V0;
    assign SE_i_mptr_bitcast_index84_atax0_add_x_BitJoin_for_q_wireValid = SE_redist6_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_q_1_0_V0 & SE_i_mptr_bitcast_index84_atax0_add_x_BitJoin_for_q_and0;

    // SE_i_mptr_bitcast_index84_atax0_add_x_p2_of_2(STALLENABLE,636)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index84_atax0_add_x_p2_of_2_V0 = SE_i_mptr_bitcast_index84_atax0_add_x_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_mptr_bitcast_index84_atax0_add_x_p2_of_2_s_tv_0 = SE_i_mptr_bitcast_index84_atax0_add_x_BitJoin_for_q_backStall & SE_i_mptr_bitcast_index84_atax0_add_x_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_mptr_bitcast_index84_atax0_add_x_p2_of_2_backEN = ~ (SE_i_mptr_bitcast_index84_atax0_add_x_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mptr_bitcast_index84_atax0_add_x_p2_of_2_and0 = SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_V0 & SE_i_mptr_bitcast_index84_atax0_add_x_p2_of_2_backEN;
    assign SE_i_mptr_bitcast_index84_atax0_add_x_p2_of_2_and1 = SE_redist2_i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 & SE_i_mptr_bitcast_index84_atax0_add_x_p2_of_2_and0;
    assign SE_i_mptr_bitcast_index84_atax0_add_x_p2_of_2_v_s_0 = SE_i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_b_tessel1_0_V0 & SE_i_mptr_bitcast_index84_atax0_add_x_p2_of_2_and1;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index84_atax0_add_x_p2_of_2_backStall = ~ (SE_i_mptr_bitcast_index84_atax0_add_x_p2_of_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mptr_bitcast_index84_atax0_add_x_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_mptr_bitcast_index84_atax0_add_x_p2_of_2_backEN == 1'b0)
            begin
                SE_i_mptr_bitcast_index84_atax0_add_x_p2_of_2_R_v_0 <= SE_i_mptr_bitcast_index84_atax0_add_x_p2_of_2_R_v_0 & SE_i_mptr_bitcast_index84_atax0_add_x_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_mptr_bitcast_index84_atax0_add_x_p2_of_2_R_v_0 <= SE_i_mptr_bitcast_index84_atax0_add_x_p2_of_2_v_s_0;
            end

        end
    end

    // SE_redist2_i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(STALLENABLE,667)
    // Valid signal propagation
    assign SE_redist2_i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 = SE_redist2_i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist2_i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0 = SE_i_mptr_bitcast_index84_atax0_add_x_p2_of_2_backStall & SE_redist2_i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist2_i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN = ~ (SE_redist2_i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist2_i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0 = SE_redist2_i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12_V1;
    // Backward Stall generation
    assign SE_redist2_i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall = ~ (SE_redist2_i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist2_i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist2_i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b0)
            begin
                SE_redist2_i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist2_i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 & SE_redist2_i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
            end
            else
            begin
                SE_redist2_i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist2_i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12(STALLENABLE,550)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12_consumed0 = (~ (SR_SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12_consumed1 = (~ (SE_redist2_i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12_StallValid = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12_backStall & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12_or0 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12_backStall = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12_V1 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12_wireValid = i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12_out_valid_out;

    // SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2(STALLENABLE,635)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_V0 = SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_R_v_0;
    assign SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_V1 = SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_s_tv_0 = SE_i_mptr_bitcast_index84_atax0_add_x_p2_of_2_backStall & SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_R_v_0;
    assign SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_s_tv_1 = SE_redist6_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_q_1_0_backStall & SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_or0 = SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_s_tv_0;
    assign SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_backEN = ~ (SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_s_tv_1 | SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_v_s_0 = SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_backEN & SR_SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_V;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_backStall = ~ (SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_R_v_0 <= 1'b0;
            SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_R_v_0 <= SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_R_v_0 & SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_R_v_0 <= SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_v_s_0;
            end

            if (SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_R_v_1 <= SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_R_v_1 & SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_R_v_1 <= SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2(STALLREG,921)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_r_valid <= 1'b0;
            SR_SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_r_data0 <= 60'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_r_data1 <= 60'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_r_valid <= SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_backStall & (SR_SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_r_valid | SR_SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_i_valid);

            if (SR_SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_r_data0 <= $unsigned(i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b);
                SR_SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_r_data1 <= $unsigned(i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_b_BitJoin_for_b_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_and0 = SE_i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_b_BitJoin_for_b_V0;
    assign SR_SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_i_valid = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839218_atax12_V0 & SR_SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_and0;
    // Stall signal propagation
    assign SR_SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_backStall = SR_SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_r_valid | ~ (SR_SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_i_valid);

    // Valid
    assign SR_SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_V = SR_SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_r_valid : SR_SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_i_valid;

    // Data0
    assign SR_SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_D0 = SR_SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_r_data0 : i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    // Data1
    assign SR_SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_D1 = SR_SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_r_data1 : i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_b_BitJoin_for_b_q;

    // redist15_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_68_fifo(STALLFIFO,374)
    assign redist15_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_68_fifo_valid_in = SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_5_V1;
    assign redist15_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_68_fifo_stall_in = SE_out_redist15_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_68_fifo_backStall;
    assign redist15_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_68_fifo_data_in = redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_5_q;
    assign redist15_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_68_fifo_valid_in_bitsignaltemp = redist15_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_68_fifo_valid_in[0];
    assign redist15_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_68_fifo_stall_in_bitsignaltemp = redist15_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_68_fifo_stall_in[0];
    assign redist15_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_68_fifo_valid_out[0] = redist15_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_68_fifo_valid_out_bitsignaltemp;
    assign redist15_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_68_fifo_stall_out[0] = redist15_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_68_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(63),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist15_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_68_fifo (
        .valid_in(redist15_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_68_fifo_valid_in_bitsignaltemp),
        .stall_in(redist15_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_68_fifo_stall_in_bitsignaltemp),
        .data_in(redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_5_q),
        .valid_out(redist15_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_68_fifo_valid_out_bitsignaltemp),
        .stall_out(redist15_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_68_fifo_stall_out_bitsignaltemp),
        .data_out(redist15_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_68_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_5(STALLENABLE,687)
    // Valid signal propagation
    assign SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_5_V0 = SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_5_R_v_0;
    assign SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_5_V1 = SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_5_R_v_1;
    // Stall signal propagation
    assign SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_5_s_tv_0 = SE_i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_b_BitJoin_for_b_backStall & SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_5_R_v_0;
    assign SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_5_s_tv_1 = redist15_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_68_fifo_stall_out & SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_5_R_v_1;
    // Backward Enable generation
    assign SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_5_or0 = SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_5_s_tv_0;
    assign SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_5_backEN = ~ (SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_5_s_tv_1 | SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_5_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_5_v_s_0 = SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_5_backEN & SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_4_V0;
    // Backward Stall generation
    assign SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_5_backStall = ~ (SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_5_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_5_R_v_0 <= 1'b0;
            SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_5_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_5_backEN == 1'b0)
            begin
                SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_5_R_v_0 <= SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_5_R_v_0 & SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_5_s_tv_0;
            end
            else
            begin
                SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_5_R_v_0 <= SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_5_v_s_0;
            end

            if (SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_5_backEN == 1'b0)
            begin
                SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_5_R_v_1 <= SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_5_R_v_1 & SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_5_s_tv_1;
            end
            else
            begin
                SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_5_R_v_1 <= SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_5_v_s_0;
            end

        end
    end

    // SE_i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_b_BitJoin_for_b(STALLENABLE,646)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_b_BitJoin_for_b_V0 = SE_i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_b_BitJoin_for_b_backStall = SR_SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_backStall | ~ (SE_i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_b_BitJoin_for_b_and0 = SE_i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_b_tessel0_2_V0;
    assign SE_i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid = SE_redist14_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_6_5_V0 & SE_i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_b_BitJoin_for_b_and0;

    // SE_i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_b_tessel0_2(STALLENABLE,645)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_b_tessel0_2_V0 = 1'b1;
    assign SE_i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_b_tessel0_2_V1 = 1'b1;

    // SE_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_b_BitJoin_for_b(STALLENABLE,651)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_b_BitJoin_for_b_V0 = SE_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_b_BitJoin_for_b_backStall = SE_i_mptr_bitcast_index_atax0_add_x_p1_of_2_backStall | ~ (SE_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_b_BitJoin_for_b_and0 = SE_i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_b_tessel0_2_V1;
    assign SE_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid = SE_redist3_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_b_tessel0_1_b_1_0_V0 & SE_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_b_BitJoin_for_b_and0;

    // bubble_join_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17(BITJOIN,461)
    assign bubble_join_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_q = i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17(BITSELECT,462)
    assign bubble_select_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_q[31:0]);

    // redist13_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_out_data_out_68_fifo(STALLFIFO,367)
    assign redist13_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_out_data_out_68_fifo_valid_in = SE_out_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_V1;
    assign redist13_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_out_data_out_68_fifo_stall_in = SE_out_redist13_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_out_data_out_68_fifo_backStall;
    assign redist13_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_out_data_out_68_fifo_data_in = bubble_select_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_b;
    assign redist13_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_out_data_out_68_fifo_valid_in_bitsignaltemp = redist13_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_out_data_out_68_fifo_valid_in[0];
    assign redist13_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_out_data_out_68_fifo_stall_in_bitsignaltemp = redist13_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_out_data_out_68_fifo_stall_in[0];
    assign redist13_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_out_data_out_68_fifo_valid_out[0] = redist13_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_out_data_out_68_fifo_valid_out_bitsignaltemp;
    assign redist13_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_out_data_out_68_fifo_stall_out[0] = redist13_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_out_data_out_68_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(69),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist13_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_out_data_out_68_fifo (
        .valid_in(redist13_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_out_data_out_68_fifo_valid_in_bitsignaltemp),
        .stall_in(redist13_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_out_data_out_68_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_b),
        .valid_out(redist13_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_out_data_out_68_fifo_valid_out_bitsignaltemp),
        .stall_out(redist13_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_out_data_out_68_fifo_stall_out_bitsignaltemp),
        .data_out(redist13_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_out_data_out_68_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17(STALLENABLE,578)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_fromReg0 <= SE_out_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_fromReg1 <= SE_out_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_consumed0 = (~ (SE_i_add13_atax19_backStall) & SE_out_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_wireValid) | SE_out_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_consumed1 = (~ (redist13_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_out_data_out_68_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_wireValid) | SE_out_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_StallValid = SE_out_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_backStall & SE_out_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_wireValid;
    assign SE_out_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_toReg0 = SE_out_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_StallValid & SE_out_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_toReg1 = SE_out_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_StallValid & SE_out_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_or0 = SE_out_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_wireStall = ~ (SE_out_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_consumed1 & SE_out_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_or0);
    assign SE_out_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_backStall = SE_out_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_V0 = SE_out_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_V1 = SE_out_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_wireValid = i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_out_valid_out;

    // SE_i_add13_atax19(STALLENABLE,542)
    // Valid signal propagation
    assign SE_i_add13_atax19_V0 = SE_i_add13_atax19_wireValid;
    // Backward Stall generation
    assign SE_i_add13_atax19_backStall = SE_redist3_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_b_tessel0_1_b_1_0_backStall | ~ (SE_i_add13_atax19_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_add13_atax19_and0 = SE_out_i_llvm_fpga_pop_i32_j_175_pop26_atax10_V0;
    assign SE_i_add13_atax19_wireValid = SE_out_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_V0 & SE_i_add13_atax19_and0;

    // SE_redist3_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_b_tessel0_1_b_1_0(STALLENABLE,668)
    // Valid signal propagation
    assign SE_redist3_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_b_tessel0_1_b_1_0_V0 = SE_redist3_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_b_tessel0_1_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist3_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_b_tessel0_1_b_1_0_s_tv_0 = SE_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_b_BitJoin_for_b_backStall & SE_redist3_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_b_tessel0_1_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist3_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_b_tessel0_1_b_1_0_backEN = ~ (SE_redist3_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_b_tessel0_1_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist3_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_b_tessel0_1_b_1_0_v_s_0 = SE_redist3_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_b_tessel0_1_b_1_0_backEN & SE_i_add13_atax19_V0;
    // Backward Stall generation
    assign SE_redist3_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_b_tessel0_1_b_1_0_backStall = ~ (SE_redist3_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_b_tessel0_1_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist3_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_b_tessel0_1_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist3_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_b_tessel0_1_b_1_0_backEN == 1'b0)
            begin
                SE_redist3_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_b_tessel0_1_b_1_0_R_v_0 <= SE_redist3_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_b_tessel0_1_b_1_0_R_v_0 & SE_redist3_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_b_tessel0_1_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist3_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_b_tessel0_1_b_1_0_R_v_0 <= SE_redist3_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_b_tessel0_1_b_1_0_v_s_0;
            end

        end
    end

    // i_add13_atax19(ADD,56)@2
    assign i_add13_atax19_a = {1'b0, bubble_select_i_llvm_fpga_pop_i32_j_175_pop26_atax10_b};
    assign i_add13_atax19_b = {1'b0, bubble_select_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_b};
    assign i_add13_atax19_o = $unsigned(i_add13_atax19_a) + $unsigned(i_add13_atax19_b);
    assign i_add13_atax19_q = i_add13_atax19_o[32:0];

    // i_mptr_bitcast_index_atax0_add_x_BitSelect_for_b_tessel0_1(BITSELECT,287)@2
    assign i_mptr_bitcast_index_atax0_add_x_BitSelect_for_b_tessel0_1_b = $unsigned(i_add13_atax19_q[31:0]);

    // redist3_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_b_tessel0_1_b_1_0(REG,356)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_b_tessel0_1_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist3_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_b_tessel0_1_b_1_0_backEN == 1'b1)
        begin
            redist3_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_b_tessel0_1_b_1_0_q <= $unsigned(i_mptr_bitcast_index_atax0_add_x_BitSelect_for_b_tessel0_1_b);
        end
    end

    // i_mptr_bitcast_index84_atax0_c_i2_01_x(CONSTANT,25)
    assign i_mptr_bitcast_index84_atax0_c_i2_01_x_q = $unsigned(2'b00);

    // i_mptr_bitcast_index_atax0_add_x_BitSelect_for_b_BitJoin_for_b(BITJOIN,289)@3
    assign i_mptr_bitcast_index_atax0_add_x_BitSelect_for_b_BitJoin_for_b_q = {i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_b_tessel0_2_b, redist3_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_b_tessel0_1_b_1_0_q, i_mptr_bitcast_index84_atax0_c_i2_01_x_q};

    // i_mptr_bitcast_index_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,307)@3
    assign i_mptr_bitcast_index_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b = $unsigned(redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_q[59:0]);
    assign i_mptr_bitcast_index_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c = $unsigned(redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_q[63:60]);

    // i_mptr_bitcast_index_atax0_add_x_p1_of_2(ADD,257)@3 + 1
    assign i_mptr_bitcast_index_atax0_add_x_p1_of_2_a = {1'b0, i_mptr_bitcast_index_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b};
    assign i_mptr_bitcast_index_atax0_add_x_p1_of_2_b = {1'b0, i_mptr_bitcast_index_atax0_add_x_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index_atax0_add_x_p1_of_2_o <= 61'b0;
        end
        else if (SE_i_mptr_bitcast_index_atax0_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_mptr_bitcast_index_atax0_add_x_p1_of_2_o <= $unsigned(i_mptr_bitcast_index_atax0_add_x_p1_of_2_a) + $unsigned(i_mptr_bitcast_index_atax0_add_x_p1_of_2_b);
        end
    end
    assign i_mptr_bitcast_index_atax0_add_x_p1_of_2_c[0] = i_mptr_bitcast_index_atax0_add_x_p1_of_2_o[60];
    assign i_mptr_bitcast_index_atax0_add_x_p1_of_2_q = i_mptr_bitcast_index_atax0_add_x_p1_of_2_o[59:0];

    // i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_b_tessel1_0(BITSELECT,278)
    assign i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_b_tessel1_0_b = c_i32_057_q[29:26];

    // i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,280)@9
    assign i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_b_tessel1_0_b};

    // redist1_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(REG,354)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(4'b0000);
        end
        else if (SE_redist1_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b1)
        begin
            redist1_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(i_mptr_bitcast_index_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c);
        end
    end

    // i_mptr_bitcast_index_atax0_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,285)@4
    assign i_mptr_bitcast_index_atax0_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist1_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q};

    // SE_i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_b_tessel1_0(STALLENABLE,647)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_b_tessel1_0_V0 = 1'b1;
    assign SE_i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_b_tessel1_0_V1 = 1'b1;

    // SE_out_i_llvm_fpga_mem_unnamed_atax17_atax26(STALLENABLE,556)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_atax17_atax26_V0 = SE_out_i_llvm_fpga_mem_unnamed_atax17_atax26_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_atax17_atax26_backStall = SE_i_mul15_atax29_im0_cma_backStall | ~ (SE_out_i_llvm_fpga_mem_unnamed_atax17_atax26_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_atax17_atax26_wireValid = i_llvm_fpga_mem_unnamed_atax17_atax26_out_o_valid;

    // bubble_join_i_llvm_fpga_pop_i2_cleanups_pop29_atax0(BITJOIN,448)
    assign bubble_join_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_q = i_llvm_fpga_pop_i2_cleanups_pop29_atax0_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i2_cleanups_pop29_atax0(BITSELECT,449)
    assign bubble_select_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_b = $unsigned(bubble_join_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_q[1:0]);

    // i_first_cleanup_atax1_sel_x(BITSELECT,20)@5
    assign i_first_cleanup_atax1_sel_x_b = bubble_select_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_b[0:0];

    // i_first_cleanup_xor_atax2(LOGICAL,63)@5
    assign i_first_cleanup_xor_atax2_q = i_first_cleanup_atax1_sel_x_b ^ VCC_q;

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14(STALLENABLE,564)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_backStall = SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_0_backStall | ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_wireValid = i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_valid_out;

    // SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_0(STALLENABLE,700)
    // Valid signal propagation
    assign SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_0_V0 = SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_0_R_v_0;
    // Stall signal propagation
    assign SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_0_s_tv_0 = SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_1_backStall & SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_0_R_v_0;
    // Backward Enable generation
    assign SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_0_backEN = ~ (SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_0_v_s_0 = SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_0_backEN & SE_out_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_V0;
    // Backward Stall generation
    assign SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_0_backStall = ~ (SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_0_backEN == 1'b0)
            begin
                SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_0_R_v_0 <= SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_0_R_v_0 & SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_0_s_tv_0;
            end
            else
            begin
                SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_0_R_v_0 <= SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_0_v_s_0;
            end

        end
    end

    // SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_1(STALLENABLE,701)
    // Valid signal propagation
    assign SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_1_V0 = SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_1_R_v_0;
    // Stall signal propagation
    assign SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_1_s_tv_0 = SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_2_backStall & SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_1_R_v_0;
    // Backward Enable generation
    assign SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_1_backEN = ~ (SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_1_v_s_0 = SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_1_backEN & SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_0_V0;
    // Backward Stall generation
    assign SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_1_backStall = ~ (SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_1_backEN == 1'b0)
            begin
                SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_1_R_v_0 <= SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_1_R_v_0 & SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_1_s_tv_0;
            end
            else
            begin
                SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_1_R_v_0 <= SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_1_v_s_0;
            end

        end
    end

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14(BITJOIN,438)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_q = i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14(BITSELECT,439)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_q[0:0]);

    // redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_0(REG,380)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_0_backEN == 1'b1)
        begin
            redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_0_q <= $unsigned(bubble_select_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_b);
        end
    end

    // redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_1(REG,381)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_1_backEN == 1'b1)
        begin
            redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_1_q <= $unsigned(redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_0_q);
        end
    end

    // redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_2(REG,382)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_2_backEN == 1'b1)
        begin
            redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_2_q <= $unsigned(redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_1_q);
        end
    end

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi1_pop27_atax24(BITJOIN,435)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi1_pop27_atax24_q = i_llvm_fpga_pop_i1_memdep_phi1_pop27_atax24_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi1_pop27_atax24(BITSELECT,436)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi1_pop27_atax24_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi1_pop27_atax24_q[0:0]);

    // i_reduction_atax_1_atax25(LOGICAL,108)@5
    assign i_reduction_atax_1_atax25_q = bubble_select_i_llvm_fpga_pop_i1_memdep_phi1_pop27_atax24_b | redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_2_q;

    // i_mptr_bitcast_index_atax0_add_x_p2_of_2(ADD,258)@4 + 1
    assign i_mptr_bitcast_index_atax0_add_x_p2_of_2_cin = SR_SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_D2;
    assign i_mptr_bitcast_index_atax0_add_x_p2_of_2_a = { {1'b0, SR_SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_D0}, 1'b1 };
    assign i_mptr_bitcast_index_atax0_add_x_p2_of_2_b = { {1'b0, SR_SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_D1}, i_mptr_bitcast_index_atax0_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index_atax0_add_x_p2_of_2_o <= 7'b0;
        end
        else if (SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_mptr_bitcast_index_atax0_add_x_p2_of_2_o <= $unsigned(i_mptr_bitcast_index_atax0_add_x_p2_of_2_a) + $unsigned(i_mptr_bitcast_index_atax0_add_x_p2_of_2_b);
        end
    end
    assign i_mptr_bitcast_index_atax0_add_x_p2_of_2_q = i_mptr_bitcast_index_atax0_add_x_p2_of_2_o[5:1];

    // SR_SE_redist5_i_mptr_bitcast_index_atax0_add_x_p1_of_2_q_1_0(STALLREG,923)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist5_i_mptr_bitcast_index_atax0_add_x_p1_of_2_q_1_0_r_valid <= 1'b0;
            SR_SE_redist5_i_mptr_bitcast_index_atax0_add_x_p1_of_2_q_1_0_r_data0 <= 60'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist5_i_mptr_bitcast_index_atax0_add_x_p1_of_2_q_1_0_r_valid <= SE_redist5_i_mptr_bitcast_index_atax0_add_x_p1_of_2_q_1_0_backStall & (SR_SE_redist5_i_mptr_bitcast_index_atax0_add_x_p1_of_2_q_1_0_r_valid | SR_SE_redist5_i_mptr_bitcast_index_atax0_add_x_p1_of_2_q_1_0_i_valid);

            if (SR_SE_redist5_i_mptr_bitcast_index_atax0_add_x_p1_of_2_q_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist5_i_mptr_bitcast_index_atax0_add_x_p1_of_2_q_1_0_r_data0 <= $unsigned(i_mptr_bitcast_index_atax0_add_x_p1_of_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist5_i_mptr_bitcast_index_atax0_add_x_p1_of_2_q_1_0_i_valid = SE_i_mptr_bitcast_index_atax0_add_x_p1_of_2_V1;
    // Stall signal propagation
    assign SR_SE_redist5_i_mptr_bitcast_index_atax0_add_x_p1_of_2_q_1_0_backStall = SR_SE_redist5_i_mptr_bitcast_index_atax0_add_x_p1_of_2_q_1_0_r_valid | ~ (SR_SE_redist5_i_mptr_bitcast_index_atax0_add_x_p1_of_2_q_1_0_i_valid);

    // Valid
    assign SR_SE_redist5_i_mptr_bitcast_index_atax0_add_x_p1_of_2_q_1_0_V = SR_SE_redist5_i_mptr_bitcast_index_atax0_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist5_i_mptr_bitcast_index_atax0_add_x_p1_of_2_q_1_0_r_valid : SR_SE_redist5_i_mptr_bitcast_index_atax0_add_x_p1_of_2_q_1_0_i_valid;

    assign SR_SE_redist5_i_mptr_bitcast_index_atax0_add_x_p1_of_2_q_1_0_D0 = SR_SE_redist5_i_mptr_bitcast_index_atax0_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist5_i_mptr_bitcast_index_atax0_add_x_p1_of_2_q_1_0_r_data0 : i_mptr_bitcast_index_atax0_add_x_p1_of_2_q;

    // redist5_i_mptr_bitcast_index_atax0_add_x_p1_of_2_q_1_0(REG,358)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_mptr_bitcast_index_atax0_add_x_p1_of_2_q_1_0_q <= $unsigned(60'b000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist5_i_mptr_bitcast_index_atax0_add_x_p1_of_2_q_1_0_backEN == 1'b1)
        begin
            redist5_i_mptr_bitcast_index_atax0_add_x_p1_of_2_q_1_0_q <= $unsigned(SR_SE_redist5_i_mptr_bitcast_index_atax0_add_x_p1_of_2_q_1_0_D0);
        end
    end

    // i_mptr_bitcast_index_atax0_add_x_BitJoin_for_q(BITJOIN,259)@5
    assign i_mptr_bitcast_index_atax0_add_x_BitJoin_for_q_q = {i_mptr_bitcast_index_atax0_add_x_p2_of_2_q, redist5_i_mptr_bitcast_index_atax0_add_x_p1_of_2_q_1_0_q};

    // i_mptr_bitcast_index_atax0_dupName_0_trunc_sel_x(BITSELECT,28)@5
    assign i_mptr_bitcast_index_atax0_dupName_0_trunc_sel_x_b = i_mptr_bitcast_index_atax0_add_x_BitJoin_for_q_q[63:0];

    // i_llvm_fpga_mem_unnamed_atax17_atax26(BLACKBOX,70)@5
    // in in_i_stall@20000000
    // out out_o_readdata@37
    // out out_o_stall@20000000
    // out out_o_valid@37
    // out out_unnamed_atax17_atax_avm_address@20000000
    // out out_unnamed_atax17_atax_avm_burstcount@20000000
    // out out_unnamed_atax17_atax_avm_byteenable@20000000
    // out out_unnamed_atax17_atax_avm_enable@20000000
    // out out_unnamed_atax17_atax_avm_read@20000000
    // out out_unnamed_atax17_atax_avm_write@20000000
    // out out_unnamed_atax17_atax_avm_writedata@20000000
    atax_i_llvm_fpga_mem_unnamed_17_atax0 thei_llvm_fpga_mem_unnamed_atax17_atax26 (
        .in_flush(in_flush),
        .in_i_address(i_mptr_bitcast_index_atax0_dupName_0_trunc_sel_x_b),
        .in_i_dependence(i_reduction_atax_1_atax25_q),
        .in_i_predicate(i_first_cleanup_xor_atax2_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_atax17_atax26_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop27_atax24_V0),
        .in_unnamed_atax17_atax_avm_readdata(in_unnamed_atax17_atax_avm_readdata),
        .in_unnamed_atax17_atax_avm_readdatavalid(in_unnamed_atax17_atax_avm_readdatavalid),
        .in_unnamed_atax17_atax_avm_waitrequest(in_unnamed_atax17_atax_avm_waitrequest),
        .in_unnamed_atax17_atax_avm_writeack(in_unnamed_atax17_atax_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_atax17_atax26_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_atax17_atax26_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_atax17_atax26_out_o_valid),
        .out_unnamed_atax17_atax_avm_address(i_llvm_fpga_mem_unnamed_atax17_atax26_out_unnamed_atax17_atax_avm_address),
        .out_unnamed_atax17_atax_avm_burstcount(i_llvm_fpga_mem_unnamed_atax17_atax26_out_unnamed_atax17_atax_avm_burstcount),
        .out_unnamed_atax17_atax_avm_byteenable(i_llvm_fpga_mem_unnamed_atax17_atax26_out_unnamed_atax17_atax_avm_byteenable),
        .out_unnamed_atax17_atax_avm_enable(i_llvm_fpga_mem_unnamed_atax17_atax26_out_unnamed_atax17_atax_avm_enable),
        .out_unnamed_atax17_atax_avm_read(i_llvm_fpga_mem_unnamed_atax17_atax26_out_unnamed_atax17_atax_avm_read),
        .out_unnamed_atax17_atax_avm_write(i_llvm_fpga_mem_unnamed_atax17_atax26_out_unnamed_atax17_atax_avm_write),
        .out_unnamed_atax17_atax_avm_writedata(i_llvm_fpga_mem_unnamed_atax17_atax26_out_unnamed_atax17_atax_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist29_i_first_cleanup_atax1_sel_x_b_65_fifo(STALLENABLE,725)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_fromReg0 <= '0;
            SE_out_redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_fromReg0 <= SE_out_redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_toReg0;
            // Successor 1
            SE_out_redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_fromReg1 <= SE_out_redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_consumed0 = (~ (SE_in_i_llvm_fpga_push_i1_notexitcond_atax41_backStall) & SE_out_redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_wireValid) | SE_out_redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_fromReg0;
    assign SE_out_redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_consumed1 = (~ (SR_SE_i_masked_atax47_backStall) & SE_out_redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_wireValid) | SE_out_redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_fromReg1;
    // Consuming
    assign SE_out_redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_StallValid = SE_out_redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_backStall & SE_out_redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_wireValid;
    assign SE_out_redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_toReg0 = SE_out_redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_StallValid & SE_out_redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_consumed0;
    assign SE_out_redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_toReg1 = SE_out_redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_StallValid & SE_out_redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_or0 = SE_out_redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_consumed0;
    assign SE_out_redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_wireStall = ~ (SE_out_redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_consumed1 & SE_out_redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_or0);
    assign SE_out_redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_backStall = SE_out_redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_V0 = SE_out_redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_wireValid & ~ (SE_out_redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_fromReg0);
    assign SE_out_redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_V1 = SE_out_redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_wireValid & ~ (SE_out_redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_wireValid = redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_valid_out;

    // redist29_i_first_cleanup_atax1_sel_x_b_65_fifo(STALLFIFO,400)
    assign redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_valid_in = SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_V3;
    assign redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_stall_in = SE_out_redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_backStall;
    assign redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_data_in = i_first_cleanup_atax1_sel_x_b;
    assign redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_valid_in_bitsignaltemp = redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_valid_in[0];
    assign redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_stall_in_bitsignaltemp = redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_stall_in[0];
    assign redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_valid_out[0] = redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_valid_out_bitsignaltemp;
    assign redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_stall_out[0] = redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(66),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist29_i_first_cleanup_atax1_sel_x_b_65_fifo (
        .valid_in(redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_valid_in_bitsignaltemp),
        .stall_in(redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_stall_in_bitsignaltemp),
        .data_in(i_first_cleanup_atax1_sel_x_b),
        .valid_out(redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_valid_out_bitsignaltemp),
        .stall_out(redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_stall_out_bitsignaltemp),
        .data_out(redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist25_i_first_cleanup_xor_atax2_q_5_0(REG,392)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_first_cleanup_xor_atax2_q_5_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist25_i_first_cleanup_xor_atax2_q_5_0_backEN == 1'b1)
        begin
            redist25_i_first_cleanup_xor_atax2_q_5_0_q <= $unsigned(i_first_cleanup_xor_atax2_q);
        end
    end

    // redist25_i_first_cleanup_xor_atax2_q_5_1(REG,393)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_first_cleanup_xor_atax2_q_5_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist25_i_first_cleanup_xor_atax2_q_5_1_backEN == 1'b1)
        begin
            redist25_i_first_cleanup_xor_atax2_q_5_1_q <= $unsigned(SR_SE_redist25_i_first_cleanup_xor_atax2_q_5_1_D0);
        end
    end

    // redist25_i_first_cleanup_xor_atax2_q_5_2(REG,394)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_first_cleanup_xor_atax2_q_5_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist25_i_first_cleanup_xor_atax2_q_5_2_backEN == 1'b1)
        begin
            redist25_i_first_cleanup_xor_atax2_q_5_2_q <= $unsigned(redist25_i_first_cleanup_xor_atax2_q_5_1_q);
        end
    end

    // redist25_i_first_cleanup_xor_atax2_q_5_3(REG,395)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_first_cleanup_xor_atax2_q_5_3_q <= $unsigned(1'b0);
        end
        else if (SE_redist25_i_first_cleanup_xor_atax2_q_5_3_backEN == 1'b1)
        begin
            redist25_i_first_cleanup_xor_atax2_q_5_3_q <= $unsigned(SR_SE_redist25_i_first_cleanup_xor_atax2_q_5_3_D0);
        end
    end

    // redist25_i_first_cleanup_xor_atax2_q_5_4(REG,396)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_first_cleanup_xor_atax2_q_5_4_q <= $unsigned(1'b0);
        end
        else if (SE_redist25_i_first_cleanup_xor_atax2_q_5_4_backEN == 1'b1)
        begin
            redist25_i_first_cleanup_xor_atax2_q_5_4_q <= $unsigned(redist25_i_first_cleanup_xor_atax2_q_5_3_q);
        end
    end

    // redist26_i_first_cleanup_xor_atax2_q_37_fifo(STALLFIFO,397)
    assign redist26_i_first_cleanup_xor_atax2_q_37_fifo_valid_in = SE_redist25_i_first_cleanup_xor_atax2_q_5_4_V1;
    assign redist26_i_first_cleanup_xor_atax2_q_37_fifo_stall_in = SE_out_redist26_i_first_cleanup_xor_atax2_q_37_fifo_backStall;
    assign redist26_i_first_cleanup_xor_atax2_q_37_fifo_data_in = redist25_i_first_cleanup_xor_atax2_q_5_4_q;
    assign redist26_i_first_cleanup_xor_atax2_q_37_fifo_valid_in_bitsignaltemp = redist26_i_first_cleanup_xor_atax2_q_37_fifo_valid_in[0];
    assign redist26_i_first_cleanup_xor_atax2_q_37_fifo_stall_in_bitsignaltemp = redist26_i_first_cleanup_xor_atax2_q_37_fifo_stall_in[0];
    assign redist26_i_first_cleanup_xor_atax2_q_37_fifo_valid_out[0] = redist26_i_first_cleanup_xor_atax2_q_37_fifo_valid_out_bitsignaltemp;
    assign redist26_i_first_cleanup_xor_atax2_q_37_fifo_stall_out[0] = redist26_i_first_cleanup_xor_atax2_q_37_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist26_i_first_cleanup_xor_atax2_q_37_fifo (
        .valid_in(redist26_i_first_cleanup_xor_atax2_q_37_fifo_valid_in_bitsignaltemp),
        .stall_in(redist26_i_first_cleanup_xor_atax2_q_37_fifo_stall_in_bitsignaltemp),
        .data_in(redist25_i_first_cleanup_xor_atax2_q_5_4_q),
        .valid_out(redist26_i_first_cleanup_xor_atax2_q_37_fifo_valid_out_bitsignaltemp),
        .stall_out(redist26_i_first_cleanup_xor_atax2_q_37_fifo_stall_out_bitsignaltemp),
        .data_out(redist26_i_first_cleanup_xor_atax2_q_37_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist25_i_first_cleanup_xor_atax2_q_5_4(STALLENABLE,717)
    // Valid signal propagation
    assign SE_redist25_i_first_cleanup_xor_atax2_q_5_4_V0 = SE_redist25_i_first_cleanup_xor_atax2_q_5_4_R_v_0;
    assign SE_redist25_i_first_cleanup_xor_atax2_q_5_4_V1 = SE_redist25_i_first_cleanup_xor_atax2_q_5_4_R_v_1;
    // Stall signal propagation
    assign SE_redist25_i_first_cleanup_xor_atax2_q_5_4_s_tv_0 = SR_SE_in_i_llvm_fpga_mem_unnamed_atax15_atax16_backStall & SE_redist25_i_first_cleanup_xor_atax2_q_5_4_R_v_0;
    assign SE_redist25_i_first_cleanup_xor_atax2_q_5_4_s_tv_1 = redist26_i_first_cleanup_xor_atax2_q_37_fifo_stall_out & SE_redist25_i_first_cleanup_xor_atax2_q_5_4_R_v_1;
    // Backward Enable generation
    assign SE_redist25_i_first_cleanup_xor_atax2_q_5_4_or0 = SE_redist25_i_first_cleanup_xor_atax2_q_5_4_s_tv_0;
    assign SE_redist25_i_first_cleanup_xor_atax2_q_5_4_backEN = ~ (SE_redist25_i_first_cleanup_xor_atax2_q_5_4_s_tv_1 | SE_redist25_i_first_cleanup_xor_atax2_q_5_4_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist25_i_first_cleanup_xor_atax2_q_5_4_v_s_0 = SE_redist25_i_first_cleanup_xor_atax2_q_5_4_backEN & SE_redist25_i_first_cleanup_xor_atax2_q_5_3_V0;
    // Backward Stall generation
    assign SE_redist25_i_first_cleanup_xor_atax2_q_5_4_backStall = ~ (SE_redist25_i_first_cleanup_xor_atax2_q_5_4_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist25_i_first_cleanup_xor_atax2_q_5_4_R_v_0 <= 1'b0;
            SE_redist25_i_first_cleanup_xor_atax2_q_5_4_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist25_i_first_cleanup_xor_atax2_q_5_4_backEN == 1'b0)
            begin
                SE_redist25_i_first_cleanup_xor_atax2_q_5_4_R_v_0 <= SE_redist25_i_first_cleanup_xor_atax2_q_5_4_R_v_0 & SE_redist25_i_first_cleanup_xor_atax2_q_5_4_s_tv_0;
            end
            else
            begin
                SE_redist25_i_first_cleanup_xor_atax2_q_5_4_R_v_0 <= SE_redist25_i_first_cleanup_xor_atax2_q_5_4_v_s_0;
            end

            if (SE_redist25_i_first_cleanup_xor_atax2_q_5_4_backEN == 1'b0)
            begin
                SE_redist25_i_first_cleanup_xor_atax2_q_5_4_R_v_1 <= SE_redist25_i_first_cleanup_xor_atax2_q_5_4_R_v_1 & SE_redist25_i_first_cleanup_xor_atax2_q_5_4_s_tv_1;
            end
            else
            begin
                SE_redist25_i_first_cleanup_xor_atax2_q_5_4_R_v_1 <= SE_redist25_i_first_cleanup_xor_atax2_q_5_4_v_s_0;
            end

        end
    end

    // SE_redist25_i_first_cleanup_xor_atax2_q_5_3(STALLENABLE,716)
    // Valid signal propagation
    assign SE_redist25_i_first_cleanup_xor_atax2_q_5_3_V0 = SE_redist25_i_first_cleanup_xor_atax2_q_5_3_R_v_0;
    // Stall signal propagation
    assign SE_redist25_i_first_cleanup_xor_atax2_q_5_3_s_tv_0 = SE_redist25_i_first_cleanup_xor_atax2_q_5_4_backStall & SE_redist25_i_first_cleanup_xor_atax2_q_5_3_R_v_0;
    // Backward Enable generation
    assign SE_redist25_i_first_cleanup_xor_atax2_q_5_3_backEN = ~ (SE_redist25_i_first_cleanup_xor_atax2_q_5_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist25_i_first_cleanup_xor_atax2_q_5_3_v_s_0 = SE_redist25_i_first_cleanup_xor_atax2_q_5_3_backEN & SR_SE_redist25_i_first_cleanup_xor_atax2_q_5_3_V;
    // Backward Stall generation
    assign SE_redist25_i_first_cleanup_xor_atax2_q_5_3_backStall = ~ (SE_redist25_i_first_cleanup_xor_atax2_q_5_3_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist25_i_first_cleanup_xor_atax2_q_5_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist25_i_first_cleanup_xor_atax2_q_5_3_backEN == 1'b0)
            begin
                SE_redist25_i_first_cleanup_xor_atax2_q_5_3_R_v_0 <= SE_redist25_i_first_cleanup_xor_atax2_q_5_3_R_v_0 & SE_redist25_i_first_cleanup_xor_atax2_q_5_3_s_tv_0;
            end
            else
            begin
                SE_redist25_i_first_cleanup_xor_atax2_q_5_3_R_v_0 <= SE_redist25_i_first_cleanup_xor_atax2_q_5_3_v_s_0;
            end

        end
    end

    // SR_SE_redist25_i_first_cleanup_xor_atax2_q_5_3(STALLREG,933)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist25_i_first_cleanup_xor_atax2_q_5_3_r_valid <= 1'b0;
            SR_SE_redist25_i_first_cleanup_xor_atax2_q_5_3_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist25_i_first_cleanup_xor_atax2_q_5_3_r_valid <= SE_redist25_i_first_cleanup_xor_atax2_q_5_3_backStall & (SR_SE_redist25_i_first_cleanup_xor_atax2_q_5_3_r_valid | SR_SE_redist25_i_first_cleanup_xor_atax2_q_5_3_i_valid);

            if (SR_SE_redist25_i_first_cleanup_xor_atax2_q_5_3_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist25_i_first_cleanup_xor_atax2_q_5_3_r_data0 <= $unsigned(redist25_i_first_cleanup_xor_atax2_q_5_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist25_i_first_cleanup_xor_atax2_q_5_3_i_valid = SE_redist25_i_first_cleanup_xor_atax2_q_5_2_V0;
    // Stall signal propagation
    assign SR_SE_redist25_i_first_cleanup_xor_atax2_q_5_3_backStall = SR_SE_redist25_i_first_cleanup_xor_atax2_q_5_3_r_valid | ~ (SR_SE_redist25_i_first_cleanup_xor_atax2_q_5_3_i_valid);

    // Valid
    assign SR_SE_redist25_i_first_cleanup_xor_atax2_q_5_3_V = SR_SE_redist25_i_first_cleanup_xor_atax2_q_5_3_r_valid == 1'b1 ? SR_SE_redist25_i_first_cleanup_xor_atax2_q_5_3_r_valid : SR_SE_redist25_i_first_cleanup_xor_atax2_q_5_3_i_valid;

    assign SR_SE_redist25_i_first_cleanup_xor_atax2_q_5_3_D0 = SR_SE_redist25_i_first_cleanup_xor_atax2_q_5_3_r_valid == 1'b1 ? SR_SE_redist25_i_first_cleanup_xor_atax2_q_5_3_r_data0 : redist25_i_first_cleanup_xor_atax2_q_5_2_q;

    // SE_redist25_i_first_cleanup_xor_atax2_q_5_2(STALLENABLE,715)
    // Valid signal propagation
    assign SE_redist25_i_first_cleanup_xor_atax2_q_5_2_V0 = SE_redist25_i_first_cleanup_xor_atax2_q_5_2_R_v_0;
    // Stall signal propagation
    assign SE_redist25_i_first_cleanup_xor_atax2_q_5_2_s_tv_0 = SR_SE_redist25_i_first_cleanup_xor_atax2_q_5_3_backStall & SE_redist25_i_first_cleanup_xor_atax2_q_5_2_R_v_0;
    // Backward Enable generation
    assign SE_redist25_i_first_cleanup_xor_atax2_q_5_2_backEN = ~ (SE_redist25_i_first_cleanup_xor_atax2_q_5_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist25_i_first_cleanup_xor_atax2_q_5_2_v_s_0 = SE_redist25_i_first_cleanup_xor_atax2_q_5_2_backEN & SE_redist25_i_first_cleanup_xor_atax2_q_5_1_V0;
    // Backward Stall generation
    assign SE_redist25_i_first_cleanup_xor_atax2_q_5_2_backStall = ~ (SE_redist25_i_first_cleanup_xor_atax2_q_5_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist25_i_first_cleanup_xor_atax2_q_5_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist25_i_first_cleanup_xor_atax2_q_5_2_backEN == 1'b0)
            begin
                SE_redist25_i_first_cleanup_xor_atax2_q_5_2_R_v_0 <= SE_redist25_i_first_cleanup_xor_atax2_q_5_2_R_v_0 & SE_redist25_i_first_cleanup_xor_atax2_q_5_2_s_tv_0;
            end
            else
            begin
                SE_redist25_i_first_cleanup_xor_atax2_q_5_2_R_v_0 <= SE_redist25_i_first_cleanup_xor_atax2_q_5_2_v_s_0;
            end

        end
    end

    // SE_redist25_i_first_cleanup_xor_atax2_q_5_1(STALLENABLE,714)
    // Valid signal propagation
    assign SE_redist25_i_first_cleanup_xor_atax2_q_5_1_V0 = SE_redist25_i_first_cleanup_xor_atax2_q_5_1_R_v_0;
    // Stall signal propagation
    assign SE_redist25_i_first_cleanup_xor_atax2_q_5_1_s_tv_0 = SE_redist25_i_first_cleanup_xor_atax2_q_5_2_backStall & SE_redist25_i_first_cleanup_xor_atax2_q_5_1_R_v_0;
    // Backward Enable generation
    assign SE_redist25_i_first_cleanup_xor_atax2_q_5_1_backEN = ~ (SE_redist25_i_first_cleanup_xor_atax2_q_5_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist25_i_first_cleanup_xor_atax2_q_5_1_v_s_0 = SE_redist25_i_first_cleanup_xor_atax2_q_5_1_backEN & SR_SE_redist25_i_first_cleanup_xor_atax2_q_5_1_V;
    // Backward Stall generation
    assign SE_redist25_i_first_cleanup_xor_atax2_q_5_1_backStall = ~ (SE_redist25_i_first_cleanup_xor_atax2_q_5_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist25_i_first_cleanup_xor_atax2_q_5_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist25_i_first_cleanup_xor_atax2_q_5_1_backEN == 1'b0)
            begin
                SE_redist25_i_first_cleanup_xor_atax2_q_5_1_R_v_0 <= SE_redist25_i_first_cleanup_xor_atax2_q_5_1_R_v_0 & SE_redist25_i_first_cleanup_xor_atax2_q_5_1_s_tv_0;
            end
            else
            begin
                SE_redist25_i_first_cleanup_xor_atax2_q_5_1_R_v_0 <= SE_redist25_i_first_cleanup_xor_atax2_q_5_1_v_s_0;
            end

        end
    end

    // SR_SE_redist25_i_first_cleanup_xor_atax2_q_5_1(STALLREG,932)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist25_i_first_cleanup_xor_atax2_q_5_1_r_valid <= 1'b0;
            SR_SE_redist25_i_first_cleanup_xor_atax2_q_5_1_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist25_i_first_cleanup_xor_atax2_q_5_1_r_valid <= SE_redist25_i_first_cleanup_xor_atax2_q_5_1_backStall & (SR_SE_redist25_i_first_cleanup_xor_atax2_q_5_1_r_valid | SR_SE_redist25_i_first_cleanup_xor_atax2_q_5_1_i_valid);

            if (SR_SE_redist25_i_first_cleanup_xor_atax2_q_5_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist25_i_first_cleanup_xor_atax2_q_5_1_r_data0 <= $unsigned(redist25_i_first_cleanup_xor_atax2_q_5_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist25_i_first_cleanup_xor_atax2_q_5_1_i_valid = SE_redist25_i_first_cleanup_xor_atax2_q_5_0_V0;
    // Stall signal propagation
    assign SR_SE_redist25_i_first_cleanup_xor_atax2_q_5_1_backStall = SR_SE_redist25_i_first_cleanup_xor_atax2_q_5_1_r_valid | ~ (SR_SE_redist25_i_first_cleanup_xor_atax2_q_5_1_i_valid);

    // Valid
    assign SR_SE_redist25_i_first_cleanup_xor_atax2_q_5_1_V = SR_SE_redist25_i_first_cleanup_xor_atax2_q_5_1_r_valid == 1'b1 ? SR_SE_redist25_i_first_cleanup_xor_atax2_q_5_1_r_valid : SR_SE_redist25_i_first_cleanup_xor_atax2_q_5_1_i_valid;

    assign SR_SE_redist25_i_first_cleanup_xor_atax2_q_5_1_D0 = SR_SE_redist25_i_first_cleanup_xor_atax2_q_5_1_r_valid == 1'b1 ? SR_SE_redist25_i_first_cleanup_xor_atax2_q_5_1_r_data0 : redist25_i_first_cleanup_xor_atax2_q_5_0_q;

    // SE_redist25_i_first_cleanup_xor_atax2_q_5_0(STALLENABLE,713)
    // Valid signal propagation
    assign SE_redist25_i_first_cleanup_xor_atax2_q_5_0_V0 = SE_redist25_i_first_cleanup_xor_atax2_q_5_0_R_v_0;
    // Stall signal propagation
    assign SE_redist25_i_first_cleanup_xor_atax2_q_5_0_s_tv_0 = SR_SE_redist25_i_first_cleanup_xor_atax2_q_5_1_backStall & SE_redist25_i_first_cleanup_xor_atax2_q_5_0_R_v_0;
    // Backward Enable generation
    assign SE_redist25_i_first_cleanup_xor_atax2_q_5_0_backEN = ~ (SE_redist25_i_first_cleanup_xor_atax2_q_5_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist25_i_first_cleanup_xor_atax2_q_5_0_v_s_0 = SE_redist25_i_first_cleanup_xor_atax2_q_5_0_backEN & SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_V2;
    // Backward Stall generation
    assign SE_redist25_i_first_cleanup_xor_atax2_q_5_0_backStall = ~ (SE_redist25_i_first_cleanup_xor_atax2_q_5_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist25_i_first_cleanup_xor_atax2_q_5_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist25_i_first_cleanup_xor_atax2_q_5_0_backEN == 1'b0)
            begin
                SE_redist25_i_first_cleanup_xor_atax2_q_5_0_R_v_0 <= SE_redist25_i_first_cleanup_xor_atax2_q_5_0_R_v_0 & SE_redist25_i_first_cleanup_xor_atax2_q_5_0_s_tv_0;
            end
            else
            begin
                SE_redist25_i_first_cleanup_xor_atax2_q_5_0_R_v_0 <= SE_redist25_i_first_cleanup_xor_atax2_q_5_0_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0(STALLENABLE,570)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_fromReg0 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_fromReg1 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_fromReg2 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_fromReg3 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_consumed0 = (~ (redist18_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_out_data_out_65_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_consumed1 = (~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop27_atax24_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_consumed2 = (~ (SE_redist25_i_first_cleanup_xor_atax2_q_5_0_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_fromReg2;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_consumed3 = (~ (redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_fromReg3;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_StallValid = SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_backStall & SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_wireValid;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_toReg0 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_consumed0;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_toReg1 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_consumed1;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_toReg2 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_consumed2;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_toReg3 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_consumed3;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_or0 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_consumed0;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_or1 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_consumed1 & SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_or0;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_or2 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_consumed2 & SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_or1;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_wireStall = ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_consumed3 & SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_or2);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_backStall = SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_V0 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_V1 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_V2 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_fromReg2);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_V3 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_wireValid = i_llvm_fpga_pop_i2_cleanups_pop29_atax0_out_valid_out;

    // SE_redist5_i_mptr_bitcast_index_atax0_add_x_p1_of_2_q_1_0(STALLENABLE,670)
    // Valid signal propagation
    assign SE_redist5_i_mptr_bitcast_index_atax0_add_x_p1_of_2_q_1_0_V0 = SE_redist5_i_mptr_bitcast_index_atax0_add_x_p1_of_2_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist5_i_mptr_bitcast_index_atax0_add_x_p1_of_2_q_1_0_s_tv_0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop27_atax24_backStall & SE_redist5_i_mptr_bitcast_index_atax0_add_x_p1_of_2_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist5_i_mptr_bitcast_index_atax0_add_x_p1_of_2_q_1_0_backEN = ~ (SE_redist5_i_mptr_bitcast_index_atax0_add_x_p1_of_2_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist5_i_mptr_bitcast_index_atax0_add_x_p1_of_2_q_1_0_v_s_0 = SE_redist5_i_mptr_bitcast_index_atax0_add_x_p1_of_2_q_1_0_backEN & SR_SE_redist5_i_mptr_bitcast_index_atax0_add_x_p1_of_2_q_1_0_V;
    // Backward Stall generation
    assign SE_redist5_i_mptr_bitcast_index_atax0_add_x_p1_of_2_q_1_0_backStall = ~ (SE_redist5_i_mptr_bitcast_index_atax0_add_x_p1_of_2_q_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist5_i_mptr_bitcast_index_atax0_add_x_p1_of_2_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist5_i_mptr_bitcast_index_atax0_add_x_p1_of_2_q_1_0_backEN == 1'b0)
            begin
                SE_redist5_i_mptr_bitcast_index_atax0_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist5_i_mptr_bitcast_index_atax0_add_x_p1_of_2_q_1_0_R_v_0 & SE_redist5_i_mptr_bitcast_index_atax0_add_x_p1_of_2_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist5_i_mptr_bitcast_index_atax0_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist5_i_mptr_bitcast_index_atax0_add_x_p1_of_2_q_1_0_v_s_0;
            end

        end
    end

    // redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_0(REG,383)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_0_backEN == 1'b1)
        begin
            redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_0_q <= $unsigned(SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_0_D0);
        end
    end

    // redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_1(REG,384)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_1_backEN == 1'b1)
        begin
            redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_1_q <= $unsigned(redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_0_q);
        end
    end

    // redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_2(REG,385)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_2_backEN == 1'b1)
        begin
            redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_2_q <= $unsigned(SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_2_D0);
        end
    end

    // redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_3(REG,386)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_3_q <= $unsigned(1'b0);
        end
        else if (SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_3_backEN == 1'b1)
        begin
            redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_3_q <= $unsigned(redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_2_q);
        end
    end

    // redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4(REG,387)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_q <= $unsigned(1'b0);
        end
        else if (SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_backEN == 1'b1)
        begin
            redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_q <= $unsigned(SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_D0);
        end
    end

    // redist23_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_68_fifo(STALLFIFO,388)
    assign redist23_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_68_fifo_valid_in = SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_V1;
    assign redist23_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_68_fifo_stall_in = SE_out_redist23_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_68_fifo_backStall;
    assign redist23_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_68_fifo_data_in = redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_q;
    assign redist23_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_68_fifo_valid_in_bitsignaltemp = redist23_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_68_fifo_valid_in[0];
    assign redist23_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_68_fifo_stall_in_bitsignaltemp = redist23_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_68_fifo_stall_in[0];
    assign redist23_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_68_fifo_valid_out[0] = redist23_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_68_fifo_valid_out_bitsignaltemp;
    assign redist23_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_68_fifo_stall_out[0] = redist23_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_68_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(61),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist23_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_68_fifo (
        .valid_in(redist23_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_68_fifo_valid_in_bitsignaltemp),
        .stall_in(redist23_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_68_fifo_stall_in_bitsignaltemp),
        .data_in(redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_q),
        .valid_out(redist23_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_68_fifo_valid_out_bitsignaltemp),
        .stall_out(redist23_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_68_fifo_stall_out_bitsignaltemp),
        .data_out(redist23_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_68_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4(STALLENABLE,707)
    // Valid signal propagation
    assign SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_V0 = SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_R_v_0;
    assign SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_V1 = SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_R_v_1;
    // Stall signal propagation
    assign SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_s_tv_0 = SR_SE_in_i_llvm_fpga_mem_unnamed_atax15_atax16_backStall & SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_R_v_0;
    assign SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_s_tv_1 = redist23_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_68_fifo_stall_out & SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_R_v_1;
    // Backward Enable generation
    assign SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_or0 = SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_s_tv_0;
    assign SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_backEN = ~ (SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_s_tv_1 | SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_v_s_0 = SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_backEN & SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_V;
    // Backward Stall generation
    assign SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_backStall = ~ (SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_R_v_0 <= 1'b0;
            SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_backEN == 1'b0)
            begin
                SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_R_v_0 <= SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_R_v_0 & SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_s_tv_0;
            end
            else
            begin
                SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_R_v_0 <= SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_v_s_0;
            end

            if (SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_backEN == 1'b0)
            begin
                SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_R_v_1 <= SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_R_v_1 & SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_s_tv_1;
            end
            else
            begin
                SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_R_v_1 <= SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_v_s_0;
            end

        end
    end

    // SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4(STALLREG,931)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_r_valid <= 1'b0;
            SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_r_valid <= SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_backStall & (SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_r_valid | SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_i_valid);

            if (SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_r_data0 <= $unsigned(redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_3_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_i_valid = SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_3_V0;
    // Stall signal propagation
    assign SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_backStall = SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_r_valid | ~ (SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_i_valid);

    // Valid
    assign SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_V = SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_r_valid == 1'b1 ? SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_r_valid : SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_i_valid;

    assign SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_D0 = SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_r_valid == 1'b1 ? SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_r_data0 : redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_3_q;

    // SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_3(STALLENABLE,706)
    // Valid signal propagation
    assign SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_3_V0 = SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_3_R_v_0;
    // Stall signal propagation
    assign SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_3_s_tv_0 = SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_backStall & SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_3_R_v_0;
    // Backward Enable generation
    assign SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_3_backEN = ~ (SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_3_v_s_0 = SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_3_backEN & SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_2_V0;
    // Backward Stall generation
    assign SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_3_backStall = ~ (SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_3_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_3_backEN == 1'b0)
            begin
                SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_3_R_v_0 <= SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_3_R_v_0 & SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_3_s_tv_0;
            end
            else
            begin
                SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_3_R_v_0 <= SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_3_v_s_0;
            end

        end
    end

    // SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_2(STALLENABLE,705)
    // Valid signal propagation
    assign SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_2_V0 = SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_2_R_v_0;
    // Stall signal propagation
    assign SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_2_s_tv_0 = SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_3_backStall & SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_2_R_v_0;
    // Backward Enable generation
    assign SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_2_backEN = ~ (SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_2_v_s_0 = SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_2_backEN & SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_2_V;
    // Backward Stall generation
    assign SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_2_backStall = ~ (SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_2_backEN == 1'b0)
            begin
                SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_2_R_v_0 <= SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_2_R_v_0 & SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_2_s_tv_0;
            end
            else
            begin
                SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_2_R_v_0 <= SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_2_v_s_0;
            end

        end
    end

    // SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_2(STALLREG,930)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_2_r_valid <= 1'b0;
            SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_2_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_2_r_valid <= SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_2_backStall & (SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_2_r_valid | SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_2_i_valid);

            if (SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_2_r_data0 <= $unsigned(redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_2_i_valid = SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_1_V0;
    // Stall signal propagation
    assign SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_2_backStall = SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_2_r_valid | ~ (SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_2_i_valid);

    // Valid
    assign SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_2_V = SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_2_r_valid == 1'b1 ? SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_2_r_valid : SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_2_i_valid;

    assign SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_2_D0 = SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_2_r_valid == 1'b1 ? SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_2_r_data0 : redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_1_q;

    // SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_1(STALLENABLE,704)
    // Valid signal propagation
    assign SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_1_V0 = SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_1_R_v_0;
    // Stall signal propagation
    assign SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_1_s_tv_0 = SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_2_backStall & SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_1_R_v_0;
    // Backward Enable generation
    assign SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_1_backEN = ~ (SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_1_v_s_0 = SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_1_backEN & SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_0_V0;
    // Backward Stall generation
    assign SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_1_backStall = ~ (SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_1_backEN == 1'b0)
            begin
                SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_1_R_v_0 <= SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_1_R_v_0 & SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_1_s_tv_0;
            end
            else
            begin
                SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_1_R_v_0 <= SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_1_v_s_0;
            end

        end
    end

    // SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_0(STALLENABLE,703)
    // Valid signal propagation
    assign SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_0_V0 = SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_0_R_v_0;
    // Stall signal propagation
    assign SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_0_s_tv_0 = SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_1_backStall & SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_0_R_v_0;
    // Backward Enable generation
    assign SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_0_backEN = ~ (SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_0_v_s_0 = SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_0_backEN & SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_0_V;
    // Backward Stall generation
    assign SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_0_backStall = ~ (SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_0_backEN == 1'b0)
            begin
                SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_0_R_v_0 <= SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_0_R_v_0 & SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_0_s_tv_0;
            end
            else
            begin
                SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_0_R_v_0 <= SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_0_v_s_0;
            end

        end
    end

    // SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_0(STALLREG,929)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_0_r_valid <= 1'b0;
            SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_0_r_valid <= SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_0_backStall & (SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_0_r_valid | SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_0_i_valid);

            if (SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_0_r_data0 <= $unsigned(redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_0_i_valid = SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_2_V1;
    // Stall signal propagation
    assign SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_0_backStall = SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_0_r_valid | ~ (SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_0_i_valid);

    // Valid
    assign SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_0_V = SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_0_r_valid == 1'b1 ? SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_0_r_valid : SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_0_i_valid;

    assign SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_0_D0 = SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_0_r_valid == 1'b1 ? SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_0_r_data0 : redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_2_q;

    // SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_2(STALLENABLE,702)
    // Valid signal propagation
    assign SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_2_V0 = SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_2_R_v_0;
    assign SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_2_V1 = SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_2_R_v_1;
    // Stall signal propagation
    assign SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_2_s_tv_0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop27_atax24_backStall & SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_2_R_v_0;
    assign SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_2_s_tv_1 = SR_SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_0_backStall & SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_2_R_v_1;
    // Backward Enable generation
    assign SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_2_or0 = SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_2_s_tv_0;
    assign SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_2_backEN = ~ (SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_2_s_tv_1 | SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_2_v_s_0 = SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_2_backEN & SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_1_V0;
    // Backward Stall generation
    assign SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_2_backStall = ~ (SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_2_R_v_0 <= 1'b0;
            SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_2_backEN == 1'b0)
            begin
                SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_2_R_v_0 <= SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_2_R_v_0 & SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_2_s_tv_0;
            end
            else
            begin
                SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_2_R_v_0 <= SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_2_v_s_0;
            end

            if (SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_2_backEN == 1'b0)
            begin
                SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_2_R_v_1 <= SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_2_R_v_1 & SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_2_s_tv_1;
            end
            else
            begin
                SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_2_R_v_1 <= SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_2_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop27_atax24(STALLENABLE,562)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop27_atax24_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop27_atax24_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop27_atax24_backStall = i_llvm_fpga_mem_unnamed_atax17_atax26_out_o_stall | ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop27_atax24_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop27_atax24_and0 = i_llvm_fpga_pop_i1_memdep_phi1_pop27_atax24_out_valid_out;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop27_atax24_and1 = SE_redist21_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_3_2_V0 & SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop27_atax24_and0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop27_atax24_and2 = SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_V0 & SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop27_atax24_and1;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop27_atax24_and3 = SE_redist5_i_mptr_bitcast_index_atax0_add_x_p1_of_2_q_1_0_V0 & SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop27_atax24_and2;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop27_atax24_wireValid = SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_V1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop27_atax24_and3;

    // SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2(STALLENABLE,639)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_V0 = SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_s_tv_0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop27_atax24_backStall & SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_backEN = ~ (SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_v_s_0 = SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_backEN & SR_SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_backStall = ~ (SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_backEN == 1'b0)
            begin
                SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_R_v_0 <= SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_R_v_0 & SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_R_v_0 <= SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2(STALLREG,922)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_r_data0 <= 5'bxxxxx;
            SR_SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_r_data1 <= 5'bxxxxx;
            SR_SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_r_valid <= SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_backStall & (SR_SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_r_valid | SR_SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_i_valid);

            if (SR_SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_r_data0 <= $unsigned(i_mptr_bitcast_index_atax0_add_x_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_r_data1 <= $unsigned(i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_r_data2 <= $unsigned(i_mptr_bitcast_index_atax0_add_x_p1_of_2_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_and0 = SE_i_mptr_bitcast_index_atax0_add_x_p1_of_2_V0;
    assign SR_SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_and1 = SE_i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_b_tessel1_0_V1 & SR_SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_and0;
    assign SR_SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_i_valid = SE_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_a_BitJoin_for_c_V0 & SR_SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_and1;
    // Stall signal propagation
    assign SR_SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_backStall = SR_SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_r_valid | ~ (SR_SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_V = SR_SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_r_valid : SR_SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_D0 = SR_SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_r_data0 : i_mptr_bitcast_index_atax0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    // Data1
    assign SR_SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_D1 = SR_SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_r_data1 : i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data2
    assign SR_SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_D2 = SR_SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_r_data2 : i_mptr_bitcast_index_atax0_add_x_p1_of_2_c;

    // SE_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_a_BitJoin_for_c(STALLENABLE,649)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_a_BitJoin_for_c_V0 = SE_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_a_BitJoin_for_c_wireValid;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_a_BitJoin_for_c_backStall = SR_SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_backStall | ~ (SE_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_a_BitJoin_for_c_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_a_BitJoin_for_c_wireValid = SE_redist1_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0;

    // SE_redist1_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(STALLENABLE,666)
    // Valid signal propagation
    assign SE_redist1_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 = SE_redist1_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist1_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0 = SE_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_a_BitJoin_for_c_backStall & SE_redist1_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist1_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN = ~ (SE_redist1_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist1_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0 = SE_redist1_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN & SE_redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_V1;
    // Backward Stall generation
    assign SE_redist1_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall = ~ (SE_redist1_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist1_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist1_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b0)
            begin
                SE_redist1_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist1_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 & SE_redist1_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
            end
            else
            begin
                SE_redist1_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist1_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
            end

        end
    end

    // SE_i_mptr_bitcast_index_atax0_add_x_p1_of_2(STALLENABLE,638)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index_atax0_add_x_p1_of_2_V0 = SE_i_mptr_bitcast_index_atax0_add_x_p1_of_2_R_v_0;
    assign SE_i_mptr_bitcast_index_atax0_add_x_p1_of_2_V1 = SE_i_mptr_bitcast_index_atax0_add_x_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_mptr_bitcast_index_atax0_add_x_p1_of_2_s_tv_0 = SR_SE_i_mptr_bitcast_index_atax0_add_x_p2_of_2_backStall & SE_i_mptr_bitcast_index_atax0_add_x_p1_of_2_R_v_0;
    assign SE_i_mptr_bitcast_index_atax0_add_x_p1_of_2_s_tv_1 = SR_SE_redist5_i_mptr_bitcast_index_atax0_add_x_p1_of_2_q_1_0_backStall & SE_i_mptr_bitcast_index_atax0_add_x_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_mptr_bitcast_index_atax0_add_x_p1_of_2_or0 = SE_i_mptr_bitcast_index_atax0_add_x_p1_of_2_s_tv_0;
    assign SE_i_mptr_bitcast_index_atax0_add_x_p1_of_2_backEN = ~ (SE_i_mptr_bitcast_index_atax0_add_x_p1_of_2_s_tv_1 | SE_i_mptr_bitcast_index_atax0_add_x_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mptr_bitcast_index_atax0_add_x_p1_of_2_and0 = SE_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_b_BitJoin_for_b_V0 & SE_i_mptr_bitcast_index_atax0_add_x_p1_of_2_backEN;
    assign SE_i_mptr_bitcast_index_atax0_add_x_p1_of_2_v_s_0 = SE_redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_V0 & SE_i_mptr_bitcast_index_atax0_add_x_p1_of_2_and0;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index_atax0_add_x_p1_of_2_backStall = ~ (SE_i_mptr_bitcast_index_atax0_add_x_p1_of_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mptr_bitcast_index_atax0_add_x_p1_of_2_R_v_0 <= 1'b0;
            SE_i_mptr_bitcast_index_atax0_add_x_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_mptr_bitcast_index_atax0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_mptr_bitcast_index_atax0_add_x_p1_of_2_R_v_0 <= SE_i_mptr_bitcast_index_atax0_add_x_p1_of_2_R_v_0 & SE_i_mptr_bitcast_index_atax0_add_x_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_mptr_bitcast_index_atax0_add_x_p1_of_2_R_v_0 <= SE_i_mptr_bitcast_index_atax0_add_x_p1_of_2_v_s_0;
            end

            if (SE_i_mptr_bitcast_index_atax0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_mptr_bitcast_index_atax0_add_x_p1_of_2_R_v_1 <= SE_i_mptr_bitcast_index_atax0_add_x_p1_of_2_R_v_1 & SE_i_mptr_bitcast_index_atax0_add_x_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_mptr_bitcast_index_atax0_add_x_p1_of_2_R_v_1 <= SE_i_mptr_bitcast_index_atax0_add_x_p1_of_2_v_s_0;
            end

        end
    end

    // SE_redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0(STALLENABLE,677)
    // Valid signal propagation
    assign SE_redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_V0 = SE_redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_R_v_0;
    assign SE_redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_V1 = SE_redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_R_v_1;
    assign SE_redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_V2 = SE_redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_R_v_2;
    // Stall signal propagation
    assign SE_redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_s_tv_0 = SE_i_mptr_bitcast_index_atax0_add_x_p1_of_2_backStall & SE_redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_R_v_0;
    assign SE_redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_s_tv_1 = SE_redist1_i_mptr_bitcast_index_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall & SE_redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_R_v_1;
    assign SE_redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_s_tv_2 = redist12_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_68_fifo_stall_out & SE_redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_R_v_2;
    // Backward Enable generation
    assign SE_redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_or0 = SE_redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_s_tv_0;
    assign SE_redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_or1 = SE_redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_s_tv_1 | SE_redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_or0;
    assign SE_redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_backEN = ~ (SE_redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_s_tv_2 | SE_redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_v_s_0 = SE_redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_backEN & SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_V0;
    // Backward Stall generation
    assign SE_redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_backStall = ~ (SE_redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_R_v_0 <= 1'b0;
            SE_redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_R_v_1 <= 1'b0;
            SE_redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_backEN == 1'b0)
            begin
                SE_redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_R_v_0 <= SE_redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_R_v_0 & SE_redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_s_tv_0;
            end
            else
            begin
                SE_redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_R_v_0 <= SE_redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_v_s_0;
            end

            if (SE_redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_backEN == 1'b0)
            begin
                SE_redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_R_v_1 <= SE_redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_R_v_1 & SE_redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_s_tv_1;
            end
            else
            begin
                SE_redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_R_v_1 <= SE_redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_v_s_0;
            end

            if (SE_redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_backEN == 1'b0)
            begin
                SE_redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_R_v_2 <= SE_redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_R_v_2 & SE_redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_s_tv_2;
            end
            else
            begin
                SE_redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_R_v_2 <= SE_redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21(STALLENABLE,582)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_V0 = SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_backStall = SE_redist11_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_1_0_backStall | ~ (SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_wireValid = i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_valid_out;

    // SE_out_i_llvm_fpga_push_p1025i32_mptr_bitcast778956_push35_atax22(STALLENABLE,612)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_p1025i32_mptr_bitcast778956_push35_atax22_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_p1025i32_mptr_bitcast778956_push35_atax22_wireValid = i_llvm_fpga_push_p1025i32_mptr_bitcast778956_push35_atax22_out_valid_out;

    // bubble_join_redist12_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_68_fifo(BITJOIN,488)
    assign bubble_join_redist12_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_68_fifo_q = redist12_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_68_fifo_data_out;

    // bubble_select_redist12_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_68_fifo(BITSELECT,489)
    assign bubble_select_redist12_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_68_fifo_b = $unsigned(bubble_join_redist12_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_68_fifo_q[63:0]);

    // i_llvm_fpga_push_p1025i32_mptr_bitcast778956_push35_atax22(BLACKBOX,98)@70
    // in in_stall_in@20000000
    // out out_data_out@71
    // out out_feedback_out_35@20000000
    // out out_feedback_valid_out_35@20000000
    // out out_stall_out@20000000
    // out out_valid_out@71
    atax_i_llvm_fpga_push_p1025i32_mptr_bitcast778956_push35_0 thei_llvm_fpga_push_p1025i32_mptr_bitcast778956_push35_atax22 (
        .in_data_in(bubble_select_redist12_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_68_fifo_b),
        .in_feedback_stall_in_35(i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_feedback_stall_out_35),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_atax4_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_p1025i32_mptr_bitcast778956_push35_atax22_backStall),
        .in_valid_in(SE_out_redist12_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_68_fifo_V0),
        .out_data_out(),
        .out_feedback_out_35(i_llvm_fpga_push_p1025i32_mptr_bitcast778956_push35_atax22_out_feedback_out_35),
        .out_feedback_valid_out_35(i_llvm_fpga_push_p1025i32_mptr_bitcast778956_push35_atax22_out_feedback_valid_out_35),
        .out_stall_out(i_llvm_fpga_push_p1025i32_mptr_bitcast778956_push35_atax22_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_p1025i32_mptr_bitcast778956_push35_atax22_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21(BLACKBOX,83)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_35@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    atax_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_0 thei_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21 (
        .in_data_in(bubble_select_atax_B5_merge_reg_aunroll_x_c),
        .in_dir(bubble_select_atax_B5_merge_reg_aunroll_x_b),
        .in_feedback_in_35(i_llvm_fpga_push_p1025i32_mptr_bitcast778956_push35_atax22_out_feedback_out_35),
        .in_feedback_valid_in_35(i_llvm_fpga_push_p1025i32_mptr_bitcast778956_push35_atax22_out_feedback_valid_out_35),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_backStall),
        .in_valid_in(SE_out_atax_B5_merge_reg_aunroll_x_V5),
        .out_data_out(i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out),
        .out_feedback_stall_out_35(i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_feedback_stall_out_35),
        .out_stall_out(i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_i32_mul_add1449_push31_atax18(STALLENABLE,608)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i32_mul_add1449_push31_atax18_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i32_mul_add1449_push31_atax18_wireValid = i_llvm_fpga_push_i32_mul_add1449_push31_atax18_out_valid_out;

    // bubble_join_redist13_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_out_data_out_68_fifo(BITJOIN,491)
    assign bubble_join_redist13_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_out_data_out_68_fifo_q = redist13_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_out_data_out_68_fifo_data_out;

    // bubble_select_redist13_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_out_data_out_68_fifo(BITSELECT,492)
    assign bubble_select_redist13_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_out_data_out_68_fifo_b = $unsigned(bubble_join_redist13_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_out_data_out_68_fifo_q[31:0]);

    // i_llvm_fpga_push_i32_mul_add1449_push31_atax18(BLACKBOX,96)@70
    // in in_stall_in@20000000
    // out out_data_out@71
    // out out_feedback_out_31@20000000
    // out out_feedback_valid_out_31@20000000
    // out out_stall_out@20000000
    // out out_valid_out@71
    atax_i_llvm_fpga_push_i32_mul_add1449_push31_0 thei_llvm_fpga_push_i32_mul_add1449_push31_atax18 (
        .in_data_in(bubble_select_redist13_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_out_data_out_68_fifo_b),
        .in_feedback_stall_in_31(i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_out_feedback_stall_out_31),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_atax4_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i32_mul_add1449_push31_atax18_backStall),
        .in_valid_in(SE_out_redist13_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_out_data_out_68_fifo_V0),
        .out_data_out(),
        .out_feedback_out_31(i_llvm_fpga_push_i32_mul_add1449_push31_atax18_out_feedback_out_31),
        .out_feedback_valid_out_31(i_llvm_fpga_push_i32_mul_add1449_push31_atax18_out_feedback_valid_out_31),
        .out_stall_out(i_llvm_fpga_push_i32_mul_add1449_push31_atax18_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_mul_add1449_push31_atax18_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17(BLACKBOX,81)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_31@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    atax_i_llvm_fpga_pop_i32_mul_add1449_pop31_0 thei_llvm_fpga_pop_i32_mul_add1449_pop31_atax17 (
        .in_data_in(bubble_select_atax_B5_merge_reg_aunroll_x_d),
        .in_dir(bubble_select_atax_B5_merge_reg_aunroll_x_b),
        .in_feedback_in_31(i_llvm_fpga_push_i32_mul_add1449_push31_atax18_out_feedback_out_31),
        .in_feedback_valid_in_31(i_llvm_fpga_push_i32_mul_add1449_push31_atax18_out_feedback_valid_out_31),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_backStall),
        .in_valid_in(SE_out_atax_B5_merge_reg_aunroll_x_V4),
        .out_data_out(i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_out_data_out),
        .out_feedback_stall_out_31(i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_out_feedback_stall_out_31),
        .out_stall_out(i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_i32_j_175_push26_atax36(STALLENABLE,606)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i32_j_175_push26_atax36_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i32_j_175_push26_atax36_wireValid = i_llvm_fpga_push_i32_j_175_push26_atax36_out_valid_out;

    // c_i32_158(CONSTANT,49)
    assign c_i32_158_q = $unsigned(32'b00000000000000000000000000000001);

    // bubble_join_redist15_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_68_fifo(BITJOIN,494)
    assign bubble_join_redist15_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_68_fifo_q = redist15_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_68_fifo_data_out;

    // bubble_select_redist15_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_68_fifo(BITSELECT,495)
    assign bubble_select_redist15_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_68_fifo_b = $unsigned(bubble_join_redist15_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_68_fifo_q[31:0]);

    // i_inc19_atax35(ADD,65)@70
    assign i_inc19_atax35_a = {1'b0, bubble_select_redist15_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_68_fifo_b};
    assign i_inc19_atax35_b = {1'b0, c_i32_158_q};
    assign i_inc19_atax35_o = $unsigned(i_inc19_atax35_a) + $unsigned(i_inc19_atax35_b);
    assign i_inc19_atax35_q = i_inc19_atax35_o[32:0];

    // bgTrunc_i_inc19_atax35_sel_x(BITSELECT,6)@70
    assign bgTrunc_i_inc19_atax35_sel_x_b = i_inc19_atax35_q[31:0];

    // i_llvm_fpga_push_i32_j_175_push26_atax36(BLACKBOX,95)@70
    // in in_stall_in@20000000
    // out out_data_out@71
    // out out_feedback_out_26@20000000
    // out out_feedback_valid_out_26@20000000
    // out out_stall_out@20000000
    // out out_valid_out@71
    atax_i_llvm_fpga_push_i32_j_175_push26_0 thei_llvm_fpga_push_i32_j_175_push26_atax36 (
        .in_data_in(bgTrunc_i_inc19_atax35_sel_x_b),
        .in_feedback_stall_in_26(i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_feedback_stall_out_26),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_atax4_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i32_j_175_push26_atax36_backStall),
        .in_valid_in(SE_out_redist15_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_68_fifo_V0),
        .out_data_out(),
        .out_feedback_out_26(i_llvm_fpga_push_i32_j_175_push26_atax36_out_feedback_out_26),
        .out_feedback_valid_out_26(i_llvm_fpga_push_i32_j_175_push26_atax36_out_feedback_valid_out_26),
        .out_stall_out(i_llvm_fpga_push_i32_j_175_push26_atax36_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_j_175_push26_atax36_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_j_175_pop26_atax10(BLACKBOX,80)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_26@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    atax_i_llvm_fpga_pop_i32_j_175_pop26_0 thei_llvm_fpga_pop_i32_j_175_pop26_atax10 (
        .in_data_in(c_i32_057_q),
        .in_dir(bubble_select_atax_B5_merge_reg_aunroll_x_b),
        .in_feedback_in_26(i_llvm_fpga_push_i32_j_175_push26_atax36_out_feedback_out_26),
        .in_feedback_valid_in_26(i_llvm_fpga_push_i32_j_175_push26_atax36_out_feedback_valid_out_26),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_j_175_pop26_atax10_backStall),
        .in_valid_in(SE_out_atax_B5_merge_reg_aunroll_x_V3),
        .out_data_out(i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out),
        .out_feedback_stall_out_26(i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_feedback_stall_out_26),
        .out_stall_out(i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31(BITJOIN,441)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_q = i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31(BITSELECT,442)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_q[0:0]);

    // redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo(STALLFIFO,378)
    assign redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_valid_in = SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_V0;
    assign redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_stall_in = SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_backStall;
    assign redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_data_in = bubble_select_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_b;
    assign redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_valid_in_bitsignaltemp = redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_valid_in[0];
    assign redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_stall_in_bitsignaltemp = redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_stall_in[0];
    assign redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_valid_out[0] = redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_valid_out_bitsignaltemp;
    assign redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_stall_out[0] = redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(41),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo (
        .valid_in(redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_valid_in_bitsignaltemp),
        .stall_in(redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_b),
        .valid_out(redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_valid_out_bitsignaltemp),
        .stall_out(redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_stall_out_bitsignaltemp),
        .data_out(redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31(STALLENABLE,566)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_backStall = redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_stall_out | ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_wireValid = i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_valid_out;

    // SE_out_i_llvm_fpga_push_i1_memdep_phi3_pop1355_push34_atax32(STALLENABLE,594)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi3_pop1355_push34_atax32_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi3_pop1355_push34_atax32_wireValid = i_llvm_fpga_push_i1_memdep_phi3_pop1355_push34_atax32_out_valid_out;

    // redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_68_fifo(STALLFIFO,379)
    assign redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_68_fifo_valid_in = SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_V1;
    assign redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_68_fifo_stall_in = SE_out_redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_68_fifo_backStall;
    assign redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_68_fifo_data_in = bubble_select_redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_b;
    assign redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_68_fifo_valid_in_bitsignaltemp = redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_68_fifo_valid_in[0];
    assign redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_68_fifo_stall_in_bitsignaltemp = redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_68_fifo_stall_in[0];
    assign redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_68_fifo_valid_out[0] = redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_68_fifo_valid_out_bitsignaltemp;
    assign redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_68_fifo_stall_out[0] = redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_68_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(29),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_68_fifo (
        .valid_in(redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_68_fifo_valid_in_bitsignaltemp),
        .stall_in(redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_68_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_b),
        .valid_out(redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_68_fifo_valid_out_bitsignaltemp),
        .stall_out(redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_68_fifo_stall_out_bitsignaltemp),
        .data_out(redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_68_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_68_fifo(BITJOIN,509)
    assign bubble_join_redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_68_fifo_q = redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_68_fifo_data_out;

    // bubble_select_redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_68_fifo(BITSELECT,510)
    assign bubble_select_redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_68_fifo_b = $unsigned(bubble_join_redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_68_fifo_q[0:0]);

    // i_llvm_fpga_push_i1_memdep_phi3_pop1355_push34_atax32(BLACKBOX,89)@70
    // in in_stall_in@20000000
    // out out_data_out@71
    // out out_feedback_out_34@20000000
    // out out_feedback_valid_out_34@20000000
    // out out_stall_out@20000000
    // out out_valid_out@71
    atax_i_llvm_fpga_push_i1_memdep_phi3_pop1355_push34_0 thei_llvm_fpga_push_i1_memdep_phi3_pop1355_push34_atax32 (
        .in_data_in(bubble_select_redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_68_fifo_b),
        .in_feedback_stall_in_34(i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_feedback_stall_out_34),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_atax4_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi3_pop1355_push34_atax32_backStall),
        .in_valid_in(SE_out_redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_68_fifo_V0),
        .out_data_out(),
        .out_feedback_out_34(i_llvm_fpga_push_i1_memdep_phi3_pop1355_push34_atax32_out_feedback_out_34),
        .out_feedback_valid_out_34(i_llvm_fpga_push_i1_memdep_phi3_pop1355_push34_atax32_out_feedback_valid_out_34),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi3_pop1355_push34_atax32_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi3_pop1355_push34_atax32_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31(BLACKBOX,75)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_34@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    atax_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_0 thei_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31 (
        .in_data_in(bubble_select_atax_B5_merge_reg_aunroll_x_e),
        .in_dir(bubble_select_atax_B5_merge_reg_aunroll_x_b),
        .in_feedback_in_34(i_llvm_fpga_push_i1_memdep_phi3_pop1355_push34_atax32_out_feedback_out_34),
        .in_feedback_valid_in_34(i_llvm_fpga_push_i1_memdep_phi3_pop1355_push34_atax32_out_feedback_valid_out_34),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_backStall),
        .in_valid_in(SE_out_atax_B5_merge_reg_aunroll_x_V2),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out),
        .out_feedback_stall_out_34(i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_feedback_stall_out_34),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_i1_memdep_phi3_or57_push36_atax15(STALLENABLE,592)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi3_or57_push36_atax15_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi3_or57_push36_atax15_wireValid = i_llvm_fpga_push_i1_memdep_phi3_or57_push36_atax15_out_valid_out;

    // bubble_join_redist23_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_68_fifo(BITJOIN,512)
    assign bubble_join_redist23_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_68_fifo_q = redist23_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_68_fifo_data_out;

    // bubble_select_redist23_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_68_fifo(BITSELECT,513)
    assign bubble_select_redist23_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_68_fifo_b = $unsigned(bubble_join_redist23_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_68_fifo_q[0:0]);

    // i_llvm_fpga_push_i1_memdep_phi3_or57_push36_atax15(BLACKBOX,88)@70
    // in in_stall_in@20000000
    // out out_data_out@71
    // out out_feedback_out_36@20000000
    // out out_feedback_valid_out_36@20000000
    // out out_stall_out@20000000
    // out out_valid_out@71
    atax_i_llvm_fpga_push_i1_memdep_phi3_or57_push36_0 thei_llvm_fpga_push_i1_memdep_phi3_or57_push36_atax15 (
        .in_data_in(bubble_select_redist23_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_68_fifo_b),
        .in_feedback_stall_in_36(i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_feedback_stall_out_36),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_atax4_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi3_or57_push36_atax15_backStall),
        .in_valid_in(SE_out_redist23_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_68_fifo_V0),
        .out_data_out(),
        .out_feedback_out_36(i_llvm_fpga_push_i1_memdep_phi3_or57_push36_atax15_out_feedback_out_36),
        .out_feedback_valid_out_36(i_llvm_fpga_push_i1_memdep_phi3_or57_push36_atax15_out_feedback_valid_out_36),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi3_or57_push36_atax15_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi3_or57_push36_atax15_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14(BLACKBOX,74)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_36@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    atax_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_0 thei_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14 (
        .in_data_in(bubble_select_atax_B5_merge_reg_aunroll_x_f),
        .in_dir(bubble_select_atax_B5_merge_reg_aunroll_x_b),
        .in_feedback_in_36(i_llvm_fpga_push_i1_memdep_phi3_or57_push36_atax15_out_feedback_out_36),
        .in_feedback_valid_in_36(i_llvm_fpga_push_i1_memdep_phi3_or57_push36_atax15_out_feedback_valid_out_36),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_backStall),
        .in_valid_in(SE_out_atax_B5_merge_reg_aunroll_x_V1),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out),
        .out_feedback_stall_out_36(i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_feedback_stall_out_36),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_atax_B5_merge_reg_aunroll_x_1_reg(STALLFIFO,906)
    assign bubble_out_atax_B5_merge_reg_aunroll_x_1_reg_valid_in = SE_out_atax_B5_merge_reg_aunroll_x_V0;
    assign bubble_out_atax_B5_merge_reg_aunroll_x_1_reg_stall_in = SE_out_bubble_out_atax_B5_merge_reg_aunroll_x_1_backStall;
    assign bubble_out_atax_B5_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp = bubble_out_atax_B5_merge_reg_aunroll_x_1_reg_valid_in[0];
    assign bubble_out_atax_B5_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp = bubble_out_atax_B5_merge_reg_aunroll_x_1_reg_stall_in[0];
    assign bubble_out_atax_B5_merge_reg_aunroll_x_1_reg_valid_out[0] = bubble_out_atax_B5_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_atax_B5_merge_reg_aunroll_x_1_reg_stall_out[0] = bubble_out_atax_B5_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(7),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_atax_B5_merge_reg_aunroll_x_1_reg (
        .valid_in(bubble_out_atax_B5_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_atax_B5_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_atax_B5_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_atax_B5_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_atax_B5_merge_reg_aunroll_x(STALLENABLE,533)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_atax_B5_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_atax_B5_merge_reg_aunroll_x_fromReg1 <= '0;
            SE_out_atax_B5_merge_reg_aunroll_x_fromReg2 <= '0;
            SE_out_atax_B5_merge_reg_aunroll_x_fromReg3 <= '0;
            SE_out_atax_B5_merge_reg_aunroll_x_fromReg4 <= '0;
            SE_out_atax_B5_merge_reg_aunroll_x_fromReg5 <= '0;
            SE_out_atax_B5_merge_reg_aunroll_x_fromReg6 <= '0;
            SE_out_atax_B5_merge_reg_aunroll_x_fromReg7 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_atax_B5_merge_reg_aunroll_x_fromReg0 <= SE_out_atax_B5_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_atax_B5_merge_reg_aunroll_x_fromReg1 <= SE_out_atax_B5_merge_reg_aunroll_x_toReg1;
            // Successor 2
            SE_out_atax_B5_merge_reg_aunroll_x_fromReg2 <= SE_out_atax_B5_merge_reg_aunroll_x_toReg2;
            // Successor 3
            SE_out_atax_B5_merge_reg_aunroll_x_fromReg3 <= SE_out_atax_B5_merge_reg_aunroll_x_toReg3;
            // Successor 4
            SE_out_atax_B5_merge_reg_aunroll_x_fromReg4 <= SE_out_atax_B5_merge_reg_aunroll_x_toReg4;
            // Successor 5
            SE_out_atax_B5_merge_reg_aunroll_x_fromReg5 <= SE_out_atax_B5_merge_reg_aunroll_x_toReg5;
            // Successor 6
            SE_out_atax_B5_merge_reg_aunroll_x_fromReg6 <= SE_out_atax_B5_merge_reg_aunroll_x_toReg6;
            // Successor 7
            SE_out_atax_B5_merge_reg_aunroll_x_fromReg7 <= SE_out_atax_B5_merge_reg_aunroll_x_toReg7;
        end
    end
    // Input Stall processing
    assign SE_out_atax_B5_merge_reg_aunroll_x_consumed0 = (~ (bubble_out_atax_B5_merge_reg_aunroll_x_1_reg_stall_out) & SE_out_atax_B5_merge_reg_aunroll_x_wireValid) | SE_out_atax_B5_merge_reg_aunroll_x_fromReg0;
    assign SE_out_atax_B5_merge_reg_aunroll_x_consumed1 = (~ (i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_stall_out) & SE_out_atax_B5_merge_reg_aunroll_x_wireValid) | SE_out_atax_B5_merge_reg_aunroll_x_fromReg1;
    assign SE_out_atax_B5_merge_reg_aunroll_x_consumed2 = (~ (i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_stall_out) & SE_out_atax_B5_merge_reg_aunroll_x_wireValid) | SE_out_atax_B5_merge_reg_aunroll_x_fromReg2;
    assign SE_out_atax_B5_merge_reg_aunroll_x_consumed3 = (~ (i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_stall_out) & SE_out_atax_B5_merge_reg_aunroll_x_wireValid) | SE_out_atax_B5_merge_reg_aunroll_x_fromReg3;
    assign SE_out_atax_B5_merge_reg_aunroll_x_consumed4 = (~ (i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_out_stall_out) & SE_out_atax_B5_merge_reg_aunroll_x_wireValid) | SE_out_atax_B5_merge_reg_aunroll_x_fromReg4;
    assign SE_out_atax_B5_merge_reg_aunroll_x_consumed5 = (~ (i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_stall_out) & SE_out_atax_B5_merge_reg_aunroll_x_wireValid) | SE_out_atax_B5_merge_reg_aunroll_x_fromReg5;
    assign SE_out_atax_B5_merge_reg_aunroll_x_consumed6 = (~ (SE_coalesced_delay_0_0_backStall) & SE_out_atax_B5_merge_reg_aunroll_x_wireValid) | SE_out_atax_B5_merge_reg_aunroll_x_fromReg6;
    assign SE_out_atax_B5_merge_reg_aunroll_x_consumed7 = (~ (coalesced_delay_1_fifo_stall_out) & SE_out_atax_B5_merge_reg_aunroll_x_wireValid) | SE_out_atax_B5_merge_reg_aunroll_x_fromReg7;
    // Consuming
    assign SE_out_atax_B5_merge_reg_aunroll_x_StallValid = SE_out_atax_B5_merge_reg_aunroll_x_backStall & SE_out_atax_B5_merge_reg_aunroll_x_wireValid;
    assign SE_out_atax_B5_merge_reg_aunroll_x_toReg0 = SE_out_atax_B5_merge_reg_aunroll_x_StallValid & SE_out_atax_B5_merge_reg_aunroll_x_consumed0;
    assign SE_out_atax_B5_merge_reg_aunroll_x_toReg1 = SE_out_atax_B5_merge_reg_aunroll_x_StallValid & SE_out_atax_B5_merge_reg_aunroll_x_consumed1;
    assign SE_out_atax_B5_merge_reg_aunroll_x_toReg2 = SE_out_atax_B5_merge_reg_aunroll_x_StallValid & SE_out_atax_B5_merge_reg_aunroll_x_consumed2;
    assign SE_out_atax_B5_merge_reg_aunroll_x_toReg3 = SE_out_atax_B5_merge_reg_aunroll_x_StallValid & SE_out_atax_B5_merge_reg_aunroll_x_consumed3;
    assign SE_out_atax_B5_merge_reg_aunroll_x_toReg4 = SE_out_atax_B5_merge_reg_aunroll_x_StallValid & SE_out_atax_B5_merge_reg_aunroll_x_consumed4;
    assign SE_out_atax_B5_merge_reg_aunroll_x_toReg5 = SE_out_atax_B5_merge_reg_aunroll_x_StallValid & SE_out_atax_B5_merge_reg_aunroll_x_consumed5;
    assign SE_out_atax_B5_merge_reg_aunroll_x_toReg6 = SE_out_atax_B5_merge_reg_aunroll_x_StallValid & SE_out_atax_B5_merge_reg_aunroll_x_consumed6;
    assign SE_out_atax_B5_merge_reg_aunroll_x_toReg7 = SE_out_atax_B5_merge_reg_aunroll_x_StallValid & SE_out_atax_B5_merge_reg_aunroll_x_consumed7;
    // Backward Stall generation
    assign SE_out_atax_B5_merge_reg_aunroll_x_or0 = SE_out_atax_B5_merge_reg_aunroll_x_consumed0;
    assign SE_out_atax_B5_merge_reg_aunroll_x_or1 = SE_out_atax_B5_merge_reg_aunroll_x_consumed1 & SE_out_atax_B5_merge_reg_aunroll_x_or0;
    assign SE_out_atax_B5_merge_reg_aunroll_x_or2 = SE_out_atax_B5_merge_reg_aunroll_x_consumed2 & SE_out_atax_B5_merge_reg_aunroll_x_or1;
    assign SE_out_atax_B5_merge_reg_aunroll_x_or3 = SE_out_atax_B5_merge_reg_aunroll_x_consumed3 & SE_out_atax_B5_merge_reg_aunroll_x_or2;
    assign SE_out_atax_B5_merge_reg_aunroll_x_or4 = SE_out_atax_B5_merge_reg_aunroll_x_consumed4 & SE_out_atax_B5_merge_reg_aunroll_x_or3;
    assign SE_out_atax_B5_merge_reg_aunroll_x_or5 = SE_out_atax_B5_merge_reg_aunroll_x_consumed5 & SE_out_atax_B5_merge_reg_aunroll_x_or4;
    assign SE_out_atax_B5_merge_reg_aunroll_x_or6 = SE_out_atax_B5_merge_reg_aunroll_x_consumed6 & SE_out_atax_B5_merge_reg_aunroll_x_or5;
    assign SE_out_atax_B5_merge_reg_aunroll_x_wireStall = ~ (SE_out_atax_B5_merge_reg_aunroll_x_consumed7 & SE_out_atax_B5_merge_reg_aunroll_x_or6);
    assign SE_out_atax_B5_merge_reg_aunroll_x_backStall = SE_out_atax_B5_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_atax_B5_merge_reg_aunroll_x_V0 = SE_out_atax_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_atax_B5_merge_reg_aunroll_x_fromReg0);
    assign SE_out_atax_B5_merge_reg_aunroll_x_V1 = SE_out_atax_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_atax_B5_merge_reg_aunroll_x_fromReg1);
    assign SE_out_atax_B5_merge_reg_aunroll_x_V2 = SE_out_atax_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_atax_B5_merge_reg_aunroll_x_fromReg2);
    assign SE_out_atax_B5_merge_reg_aunroll_x_V3 = SE_out_atax_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_atax_B5_merge_reg_aunroll_x_fromReg3);
    assign SE_out_atax_B5_merge_reg_aunroll_x_V4 = SE_out_atax_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_atax_B5_merge_reg_aunroll_x_fromReg4);
    assign SE_out_atax_B5_merge_reg_aunroll_x_V5 = SE_out_atax_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_atax_B5_merge_reg_aunroll_x_fromReg5);
    assign SE_out_atax_B5_merge_reg_aunroll_x_V6 = SE_out_atax_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_atax_B5_merge_reg_aunroll_x_fromReg6);
    assign SE_out_atax_B5_merge_reg_aunroll_x_V7 = SE_out_atax_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_atax_B5_merge_reg_aunroll_x_fromReg7);
    // Computing multiple Valid(s)
    assign SE_out_atax_B5_merge_reg_aunroll_x_wireValid = atax_B5_merge_reg_aunroll_x_out_valid_out;

    // coalesced_delay_1_fifo(STALLFIFO,408)
    assign coalesced_delay_1_fifo_valid_in = SE_out_atax_B5_merge_reg_aunroll_x_V7;
    assign coalesced_delay_1_fifo_stall_in = SR_SE_out_coalesced_delay_1_fifo_backStall;
    assign coalesced_delay_1_fifo_data_in = join_for_coalesced_delay_1_q;
    assign coalesced_delay_1_fifo_valid_in_bitsignaltemp = coalesced_delay_1_fifo_valid_in[0];
    assign coalesced_delay_1_fifo_stall_in_bitsignaltemp = coalesced_delay_1_fifo_stall_in[0];
    assign coalesced_delay_1_fifo_valid_out[0] = coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_1_fifo_stall_out[0] = coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(72),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(66),
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

    // SR_SE_out_coalesced_delay_1_fifo(STALLREG,918)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_out_coalesced_delay_1_fifo_r_valid <= 1'b0;
            SR_SE_out_coalesced_delay_1_fifo_r_data0 <= 1'bx;
            SR_SE_out_coalesced_delay_1_fifo_r_data1 <= 1'bx;
            SR_SE_out_coalesced_delay_1_fifo_r_data2 <= 1'bx;
            SR_SE_out_coalesced_delay_1_fifo_r_data3 <= 1'bx;
            SR_SE_out_coalesced_delay_1_fifo_r_data4 <= 1'bx;
            SR_SE_out_coalesced_delay_1_fifo_r_data5 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_out_coalesced_delay_1_fifo_r_valid <= SE_out_coalesced_delay_1_fifo_backStall & (SR_SE_out_coalesced_delay_1_fifo_r_valid | SR_SE_out_coalesced_delay_1_fifo_i_valid);

            if (SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_out_coalesced_delay_1_fifo_r_data0 <= $unsigned(sel_for_coalesced_delay_1_c);
                SR_SE_out_coalesced_delay_1_fifo_r_data1 <= $unsigned(redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_2_q);
                SR_SE_out_coalesced_delay_1_fifo_r_data2 <= $unsigned(redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_2_q);
                SR_SE_out_coalesced_delay_1_fifo_r_data3 <= $unsigned(redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_2_q);
                SR_SE_out_coalesced_delay_1_fifo_r_data4 <= $unsigned(sel_for_coalesced_delay_1_d);
                SR_SE_out_coalesced_delay_1_fifo_r_data5 <= $unsigned(sel_for_coalesced_delay_1_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_out_coalesced_delay_1_fifo_and0 = coalesced_delay_1_fifo_valid_out;
    assign SR_SE_out_coalesced_delay_1_fifo_i_valid = SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_2_V0 & SR_SE_out_coalesced_delay_1_fifo_and0;
    // Stall signal propagation
    assign SR_SE_out_coalesced_delay_1_fifo_backStall = SR_SE_out_coalesced_delay_1_fifo_r_valid | ~ (SR_SE_out_coalesced_delay_1_fifo_i_valid);

    // Valid
    assign SR_SE_out_coalesced_delay_1_fifo_V = SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_1_fifo_r_valid : SR_SE_out_coalesced_delay_1_fifo_i_valid;

    // Data0
    assign SR_SE_out_coalesced_delay_1_fifo_D0 = SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_1_fifo_r_data0 : sel_for_coalesced_delay_1_c;
    // Data1
    assign SR_SE_out_coalesced_delay_1_fifo_D1 = SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_1_fifo_r_data1 : redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_2_q;
    // Data2
    assign SR_SE_out_coalesced_delay_1_fifo_D2 = SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_1_fifo_r_data2 : redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_2_q;
    // Data3
    assign SR_SE_out_coalesced_delay_1_fifo_D3 = SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_1_fifo_r_data3 : redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_2_q;
    // Data4
    assign SR_SE_out_coalesced_delay_1_fifo_D4 = SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_1_fifo_r_data4 : sel_for_coalesced_delay_1_d;
    // Data5
    assign SR_SE_out_coalesced_delay_1_fifo_D5 = SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_1_fifo_r_data5 : sel_for_coalesced_delay_1_b;

    // i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48(BLACKBOX,84)@72
    // in in_stall_in@20000000
    // out out_data_out@73
    // out out_feedback_stall_out_30@20000000
    // out out_stall_out@20000000
    // out out_valid_out@73
    atax_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_0 thei_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48 (
        .in_data_in(SR_SE_out_coalesced_delay_1_fifo_D5),
        .in_dir(SR_SE_out_coalesced_delay_1_fifo_D3),
        .in_feedback_in_30(i_llvm_fpga_push_p1025i32_mptr_bitcast_index8846_push30_atax49_out_feedback_out_30),
        .in_feedback_valid_in_30(i_llvm_fpga_push_p1025i32_mptr_bitcast_index8846_push30_atax49_out_feedback_valid_out_30),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_backStall),
        .in_valid_in(SE_out_coalesced_delay_1_fifo_V2),
        .out_data_out(i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_out_data_out),
        .out_feedback_stall_out_30(i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_out_feedback_stall_out_30),
        .out_stall_out(i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48(BITJOIN,471)
    assign bubble_join_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_q = i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_out_data_out;

    // bubble_select_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48(BITSELECT,472)
    assign bubble_select_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_b = $unsigned(bubble_join_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_q[63:0]);

    // i_llvm_fpga_push_p1025i32_mptr_bitcast_index8846_push30_atax49(BLACKBOX,99)@73
    // in in_stall_in@20000000
    // out out_data_out@74
    // out out_feedback_out_30@20000000
    // out out_feedback_valid_out_30@20000000
    // out out_stall_out@20000000
    // out out_valid_out@74
    atax_i_llvm_fpga_push_p1025i32_mptr_bitcast_index8846_push30_0 thei_llvm_fpga_push_p1025i32_mptr_bitcast_index8846_push30_atax49 (
        .in_data_in(bubble_select_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_b),
        .in_feedback_stall_in_30(i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_out_feedback_stall_out_30),
        .in_keep_going(redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_q),
        .in_stall_in(SE_out_i_llvm_fpga_push_p1025i32_mptr_bitcast_index8846_push30_atax49_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_p1025i32_mptr_bitcast_index8846_push30_atax49_V0),
        .out_data_out(),
        .out_feedback_out_30(i_llvm_fpga_push_p1025i32_mptr_bitcast_index8846_push30_atax49_out_feedback_out_30),
        .out_feedback_valid_out_30(i_llvm_fpga_push_p1025i32_mptr_bitcast_index8846_push30_atax49_out_feedback_valid_out_30),
        .out_stall_out(i_llvm_fpga_push_p1025i32_mptr_bitcast_index8846_push30_atax49_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_p1025i32_mptr_bitcast_index8846_push30_atax49_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48(STALLENABLE,584)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_fromReg0 <= SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_fromReg1 <= SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1_backStall) & SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_wireValid) | SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_fromReg0;
    assign SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_consumed1 = (~ (SE_in_i_llvm_fpga_push_p1025i32_mptr_bitcast_index8846_push30_atax49_backStall) & SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_wireValid) | SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_StallValid = SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_backStall & SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_wireValid;
    assign SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_toReg0 = SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_StallValid & SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_consumed0;
    assign SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_toReg1 = SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_StallValid & SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_or0 = SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_consumed0;
    assign SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_wireStall = ~ (SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_consumed1 & SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_or0);
    assign SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_backStall = SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_V0 = SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_wireValid & ~ (SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_fromReg0);
    assign SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_V1 = SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_wireValid & ~ (SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_wireValid = i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_out_valid_out;

    // SE_in_i_llvm_fpga_push_p1025i32_mptr_bitcast_index8846_push30_atax49(STALLENABLE,613)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_p1025i32_mptr_bitcast_index8846_push30_atax49_V0 = SE_in_i_llvm_fpga_push_p1025i32_mptr_bitcast_index8846_push30_atax49_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_p1025i32_mptr_bitcast_index8846_push30_atax49_backStall = i_llvm_fpga_push_p1025i32_mptr_bitcast_index8846_push30_atax49_out_stall_out | ~ (SE_in_i_llvm_fpga_push_p1025i32_mptr_bitcast_index8846_push30_atax49_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_p1025i32_mptr_bitcast_index8846_push30_atax49_and0 = SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_V5;
    assign SE_in_i_llvm_fpga_push_p1025i32_mptr_bitcast_index8846_push30_atax49_wireValid = SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_V1 & SE_in_i_llvm_fpga_push_p1025i32_mptr_bitcast_index8846_push30_atax49_and0;

    // SE_in_i_llvm_fpga_push_i32_add758_push37_atax28(STALLENABLE,603)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i32_add758_push37_atax28_V0 = SE_in_i_llvm_fpga_push_i32_add758_push37_atax28_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i32_add758_push37_atax28_backStall = i_llvm_fpga_push_i32_add758_push37_atax28_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i32_add758_push37_atax28_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i32_add758_push37_atax28_and0 = SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_V4;
    assign SE_in_i_llvm_fpga_push_i32_add758_push37_atax28_wireValid = SE_out_redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_V0 & SE_in_i_llvm_fpga_push_i32_add758_push37_atax28_and0;

    // SE_in_i_llvm_fpga_push_i1_notcmp3553_push33_atax53(STALLENABLE,595)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_notcmp3553_push33_atax53_V0 = SE_in_i_llvm_fpga_push_i1_notcmp3553_push33_atax53_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_notcmp3553_push33_atax53_backStall = i_llvm_fpga_push_i1_notcmp3553_push33_atax53_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_notcmp3553_push33_atax53_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_notcmp3553_push33_atax53_and0 = SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_V3;
    assign SE_in_i_llvm_fpga_push_i1_notcmp3553_push33_atax53_wireValid = SE_out_i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_V1 & SE_in_i_llvm_fpga_push_i1_notcmp3553_push33_atax53_and0;

    // SE_out_i_llvm_fpga_push_i1_memdep_phi1_push27_atax34(STALLENABLE,590)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi1_push27_atax34_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi1_push27_atax34_wireValid = i_llvm_fpga_push_i1_memdep_phi1_push27_atax34_out_valid_out;

    // bubble_join_i_llvm_fpga_mem_memdep_atax33(BITJOIN,417)
    assign bubble_join_i_llvm_fpga_mem_memdep_atax33_q = i_llvm_fpga_mem_memdep_atax33_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_atax33(BITSELECT,418)
    assign bubble_select_i_llvm_fpga_mem_memdep_atax33_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_atax33_q[0:0]);

    // i_llvm_fpga_push_i1_memdep_phi1_push27_atax34(BLACKBOX,87)@73
    // in in_stall_in@20000000
    // out out_data_out@74
    // out out_feedback_out_27@20000000
    // out out_feedback_valid_out_27@20000000
    // out out_stall_out@20000000
    // out out_valid_out@74
    atax_i_llvm_fpga_push_i1_memdep_phi1_push27_0 thei_llvm_fpga_push_i1_memdep_phi1_push27_atax34 (
        .in_data_in(bubble_select_i_llvm_fpga_mem_memdep_atax33_b),
        .in_feedback_stall_in_27(i_llvm_fpga_pop_i1_memdep_phi1_pop27_atax24_out_feedback_stall_out_27),
        .in_keep_going(redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_q),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi1_push27_atax34_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_memdep_phi1_push27_atax34_V0),
        .out_data_out(),
        .out_feedback_out_27(i_llvm_fpga_push_i1_memdep_phi1_push27_atax34_out_feedback_out_27),
        .out_feedback_valid_out_27(i_llvm_fpga_push_i1_memdep_phi1_push27_atax34_out_feedback_valid_out_27),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi1_push27_atax34_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi1_push27_atax34_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i1_memdep_phi1_push27_atax34(STALLENABLE,589)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi1_push27_atax34_V0 = SE_in_i_llvm_fpga_push_i1_memdep_phi1_push27_atax34_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi1_push27_atax34_backStall = i_llvm_fpga_push_i1_memdep_phi1_push27_atax34_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_memdep_phi1_push27_atax34_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi1_push27_atax34_and0 = SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_V2;
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi1_push27_atax34_wireValid = SE_out_i_llvm_fpga_mem_memdep_atax33_V1 & SE_in_i_llvm_fpga_push_i1_memdep_phi1_push27_atax34_and0;

    // rightShiftStage0Idx1Rng1_uid217_i_next_initerations_atax0_shift_x(BITSELECT,216)@73
    assign rightShiftStage0Idx1Rng1_uid217_i_next_initerations_atax0_shift_x_b = bubble_select_i_llvm_fpga_pop_i2_initerations_pop28_atax5_b[1:1];

    // rightShiftStage0Idx1_uid219_i_next_initerations_atax0_shift_x(BITJOIN,218)@73
    assign rightShiftStage0Idx1_uid219_i_next_initerations_atax0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid217_i_next_initerations_atax0_shift_x_b};

    // bubble_join_i_llvm_fpga_pop_i2_initerations_pop28_atax5(BITJOIN,451)
    assign bubble_join_i_llvm_fpga_pop_i2_initerations_pop28_atax5_q = i_llvm_fpga_pop_i2_initerations_pop28_atax5_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i2_initerations_pop28_atax5(BITSELECT,452)
    assign bubble_select_i_llvm_fpga_pop_i2_initerations_pop28_atax5_b = $unsigned(bubble_join_i_llvm_fpga_pop_i2_initerations_pop28_atax5_q[1:0]);

    // rightShiftStage0_uid221_i_next_initerations_atax0_shift_x(MUX,220)@73
    assign rightShiftStage0_uid221_i_next_initerations_atax0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid221_i_next_initerations_atax0_shift_x_s or bubble_select_i_llvm_fpga_pop_i2_initerations_pop28_atax5_b or rightShiftStage0Idx1_uid219_i_next_initerations_atax0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid221_i_next_initerations_atax0_shift_x_s)
            1'b0 : rightShiftStage0_uid221_i_next_initerations_atax0_shift_x_q = bubble_select_i_llvm_fpga_pop_i2_initerations_pop28_atax5_b;
            1'b1 : rightShiftStage0_uid221_i_next_initerations_atax0_shift_x_q = rightShiftStage0Idx1_uid219_i_next_initerations_atax0_shift_x_q;
            default : rightShiftStage0_uid221_i_next_initerations_atax0_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations_atax6_vt_select_0(BITSELECT,105)@73
    assign i_next_initerations_atax6_vt_select_0_b = rightShiftStage0_uid221_i_next_initerations_atax0_shift_x_q[0:0];

    // i_next_initerations_atax6_vt_join(BITJOIN,104)@73
    assign i_next_initerations_atax6_vt_join_q = {GND_q, i_next_initerations_atax6_vt_select_0_b};

    // i_last_initeration_atax8_sel_x(BITSELECT,21)@73
    assign i_last_initeration_atax8_sel_x_b = i_next_initerations_atax6_vt_join_q[0:0];

    // SR_SE_i_next_initerations_atax6_vt_select_0(STALLREG,938)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_next_initerations_atax6_vt_select_0_r_valid <= 1'b0;
            SR_SE_i_next_initerations_atax6_vt_select_0_r_data0 <= 1'bx;
            SR_SE_i_next_initerations_atax6_vt_select_0_r_data1 <= 1'bx;
            SR_SE_i_next_initerations_atax6_vt_select_0_r_data2 <= 1'bx;
            SR_SE_i_next_initerations_atax6_vt_select_0_r_data3 <= 2'bxx;
        end
        else
        begin
            // Valid
            SR_SE_i_next_initerations_atax6_vt_select_0_r_valid <= SE_i_next_initerations_atax6_vt_select_0_backStall & (SR_SE_i_next_initerations_atax6_vt_select_0_r_valid | SR_SE_i_next_initerations_atax6_vt_select_0_i_valid);

            if (SR_SE_i_next_initerations_atax6_vt_select_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_next_initerations_atax6_vt_select_0_r_data0 <= i_last_initeration_atax8_sel_x_b;
                SR_SE_i_next_initerations_atax6_vt_select_0_r_data1 <= $unsigned(redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_q);
                SR_SE_i_next_initerations_atax6_vt_select_0_r_data2 <= $unsigned(redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_q);
                SR_SE_i_next_initerations_atax6_vt_select_0_r_data3 <= i_next_initerations_atax6_vt_join_q;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_next_initerations_atax6_vt_select_0_and0 = SE_out_i_llvm_fpga_pop_i2_initerations_pop28_atax5_V1;
    assign SR_SE_i_next_initerations_atax6_vt_select_0_i_valid = SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_V1 & SR_SE_i_next_initerations_atax6_vt_select_0_and0;
    // Stall signal propagation
    assign SR_SE_i_next_initerations_atax6_vt_select_0_backStall = SR_SE_i_next_initerations_atax6_vt_select_0_r_valid | ~ (SR_SE_i_next_initerations_atax6_vt_select_0_i_valid);

    // Valid
    assign SR_SE_i_next_initerations_atax6_vt_select_0_V = SR_SE_i_next_initerations_atax6_vt_select_0_r_valid == 1'b1 ? SR_SE_i_next_initerations_atax6_vt_select_0_r_valid : SR_SE_i_next_initerations_atax6_vt_select_0_i_valid;

    // Data0
    assign SR_SE_i_next_initerations_atax6_vt_select_0_D0 = SR_SE_i_next_initerations_atax6_vt_select_0_r_valid == 1'b1 ? SR_SE_i_next_initerations_atax6_vt_select_0_r_data0 : i_last_initeration_atax8_sel_x_b;
    // Data1
    assign SR_SE_i_next_initerations_atax6_vt_select_0_D1 = SR_SE_i_next_initerations_atax6_vt_select_0_r_valid == 1'b1 ? SR_SE_i_next_initerations_atax6_vt_select_0_r_data1 : redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_q;
    // Data2
    assign SR_SE_i_next_initerations_atax6_vt_select_0_D2 = SR_SE_i_next_initerations_atax6_vt_select_0_r_valid == 1'b1 ? SR_SE_i_next_initerations_atax6_vt_select_0_r_data2 : redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_q;
    // Data3
    assign SR_SE_i_next_initerations_atax6_vt_select_0_D3 = SR_SE_i_next_initerations_atax6_vt_select_0_r_valid == 1'b1 ? SR_SE_i_next_initerations_atax6_vt_select_0_r_data3 : i_next_initerations_atax6_vt_join_q;

    // SE_in_i_llvm_fpga_push_i1_exitcond1251_push32_atax51(STALLENABLE,585)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_exitcond1251_push32_atax51_V0 = SE_in_i_llvm_fpga_push_i1_exitcond1251_push32_atax51_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_exitcond1251_push32_atax51_backStall = i_llvm_fpga_push_i1_exitcond1251_push32_atax51_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_exitcond1251_push32_atax51_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_exitcond1251_push32_atax51_and0 = SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_V0;
    assign SE_in_i_llvm_fpga_push_i1_exitcond1251_push32_atax51_wireValid = SE_out_i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_V1 & SE_in_i_llvm_fpga_push_i1_exitcond1251_push32_atax51_and0;

    // SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2(STALLENABLE,712)
    // Valid signal propagation
    assign SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_V0 = SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_R_v_0;
    assign SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_V1 = SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_R_v_1;
    assign SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_V2 = SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_R_v_2;
    assign SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_V3 = SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_R_v_3;
    assign SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_V4 = SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_R_v_4;
    assign SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_V5 = SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_R_v_5;
    // Stall signal propagation
    assign SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_s_tv_0 = SE_in_i_llvm_fpga_push_i1_exitcond1251_push32_atax51_backStall & SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_R_v_0;
    assign SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_s_tv_1 = SR_SE_i_next_initerations_atax6_vt_select_0_backStall & SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_R_v_1;
    assign SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_s_tv_2 = SE_in_i_llvm_fpga_push_i1_memdep_phi1_push27_atax34_backStall & SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_R_v_2;
    assign SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_s_tv_3 = SE_in_i_llvm_fpga_push_i1_notcmp3553_push33_atax53_backStall & SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_R_v_3;
    assign SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_s_tv_4 = SE_in_i_llvm_fpga_push_i32_add758_push37_atax28_backStall & SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_R_v_4;
    assign SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_s_tv_5 = SE_in_i_llvm_fpga_push_p1025i32_mptr_bitcast_index8846_push30_atax49_backStall & SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_R_v_5;
    // Backward Enable generation
    assign SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_or0 = SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_s_tv_0;
    assign SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_or1 = SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_s_tv_1 | SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_or0;
    assign SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_or2 = SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_s_tv_2 | SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_or1;
    assign SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_or3 = SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_s_tv_3 | SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_or2;
    assign SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_or4 = SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_s_tv_4 | SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_or3;
    assign SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_backEN = ~ (SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_s_tv_5 | SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_or4);
    // Determine whether to write valid data into the first register stage
    assign SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_v_s_0 = SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_backEN & SR_SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_V;
    // Backward Stall generation
    assign SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_backStall = ~ (SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_R_v_0 <= 1'b0;
            SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_R_v_1 <= 1'b0;
            SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_R_v_2 <= 1'b0;
            SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_R_v_3 <= 1'b0;
            SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_R_v_4 <= 1'b0;
            SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_R_v_5 <= 1'b0;
        end
        else
        begin
            if (SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_backEN == 1'b0)
            begin
                SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_R_v_0 <= SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_R_v_0 & SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_s_tv_0;
            end
            else
            begin
                SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_R_v_0 <= SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_v_s_0;
            end

            if (SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_backEN == 1'b0)
            begin
                SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_R_v_1 <= SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_R_v_1 & SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_s_tv_1;
            end
            else
            begin
                SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_R_v_1 <= SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_v_s_0;
            end

            if (SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_backEN == 1'b0)
            begin
                SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_R_v_2 <= SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_R_v_2 & SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_s_tv_2;
            end
            else
            begin
                SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_R_v_2 <= SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_v_s_0;
            end

            if (SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_backEN == 1'b0)
            begin
                SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_R_v_3 <= SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_R_v_3 & SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_s_tv_3;
            end
            else
            begin
                SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_R_v_3 <= SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_v_s_0;
            end

            if (SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_backEN == 1'b0)
            begin
                SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_R_v_4 <= SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_R_v_4 & SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_s_tv_4;
            end
            else
            begin
                SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_R_v_4 <= SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_v_s_0;
            end

            if (SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_backEN == 1'b0)
            begin
                SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_R_v_5 <= SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_R_v_5 & SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_s_tv_5;
            end
            else
            begin
                SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_R_v_5 <= SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_v_s_0;
            end

        end
    end

    // SR_SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2(STALLREG,937)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_r_valid <= 1'b0;
            SR_SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_r_valid <= SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_backStall & (SR_SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_r_valid | SR_SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_i_valid);

            if (SR_SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_r_data0 <= $unsigned(redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_i_valid = SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_1_V0;
    // Stall signal propagation
    assign SR_SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_backStall = SR_SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_r_valid | ~ (SR_SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_i_valid);

    // Valid
    assign SR_SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_V = SR_SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_r_valid == 1'b1 ? SR_SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_r_valid : SR_SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_i_valid;

    assign SR_SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_D0 = SR_SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_r_valid == 1'b1 ? SR_SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_r_data0 : redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_1_q;

    // SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_1(STALLENABLE,711)
    // Valid signal propagation
    assign SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_1_V0 = SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_1_R_v_0;
    // Stall signal propagation
    assign SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_1_s_tv_0 = SR_SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_backStall & SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_1_R_v_0;
    // Backward Enable generation
    assign SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_1_backEN = ~ (SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_1_v_s_0 = SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_1_backEN & SR_SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_1_V;
    // Backward Stall generation
    assign SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_1_backStall = ~ (SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_1_backEN == 1'b0)
            begin
                SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_1_R_v_0 <= SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_1_R_v_0 & SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_1_s_tv_0;
            end
            else
            begin
                SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_1_R_v_0 <= SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_1_v_s_0;
            end

        end
    end

    // SR_SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_1(STALLREG,936)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_1_r_valid <= 1'b0;
            SR_SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_1_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_1_r_valid <= SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_1_backStall & (SR_SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_1_r_valid | SR_SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_1_i_valid);

            if (SR_SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_1_r_data0 <= $unsigned(redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_1_i_valid = SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_0_V0;
    // Stall signal propagation
    assign SR_SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_1_backStall = SR_SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_1_r_valid | ~ (SR_SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_1_i_valid);

    // Valid
    assign SR_SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_1_V = SR_SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_1_r_valid == 1'b1 ? SR_SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_1_r_valid : SR_SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_1_i_valid;

    assign SR_SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_1_D0 = SR_SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_1_r_valid == 1'b1 ? SR_SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_1_r_data0 : redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_0_q;

    // SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_0(STALLENABLE,710)
    // Valid signal propagation
    assign SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_0_V0 = SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_0_R_v_0;
    // Stall signal propagation
    assign SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_0_s_tv_0 = SR_SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_1_backStall & SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_0_R_v_0;
    // Backward Enable generation
    assign SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_0_backEN = ~ (SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_0_v_s_0 = SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_0_backEN & SE_out_i_llvm_fpga_pipeline_keep_going_atax4_V8;
    // Backward Stall generation
    assign SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_0_backStall = ~ (SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_0_backEN == 1'b0)
            begin
                SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_0_R_v_0 <= SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_0_R_v_0 & SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_0_s_tv_0;
            end
            else
            begin
                SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_0_R_v_0 <= SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_0_v_s_0;
            end

        end
    end

    // SE_out_redist12_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_68_fifo(STALLENABLE,679)
    // Valid signal propagation
    assign SE_out_redist12_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_68_fifo_V0 = SE_out_redist12_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_68_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist12_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_68_fifo_backStall = i_llvm_fpga_push_p1025i32_mptr_bitcast778956_push35_atax22_out_stall_out | ~ (SE_out_redist12_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_68_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist12_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_68_fifo_and0 = redist12_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_68_fifo_valid_out;
    assign SE_out_redist12_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_68_fifo_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_atax4_V7 & SE_out_redist12_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_68_fifo_and0;

    // SE_out_redist13_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_out_data_out_68_fifo(STALLENABLE,681)
    // Valid signal propagation
    assign SE_out_redist13_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_out_data_out_68_fifo_V0 = SE_out_redist13_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_out_data_out_68_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist13_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_out_data_out_68_fifo_backStall = i_llvm_fpga_push_i32_mul_add1449_push31_atax18_out_stall_out | ~ (SE_out_redist13_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_out_data_out_68_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist13_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_out_data_out_68_fifo_and0 = redist13_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_out_data_out_68_fifo_valid_out;
    assign SE_out_redist13_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_out_data_out_68_fifo_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_atax4_V5 & SE_out_redist13_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_out_data_out_68_fifo_and0;

    // SE_out_redist15_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_68_fifo(STALLENABLE,689)
    // Valid signal propagation
    assign SE_out_redist15_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_68_fifo_V0 = SE_out_redist15_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_68_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist15_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_68_fifo_backStall = i_llvm_fpga_push_i32_j_175_push26_atax36_out_stall_out | ~ (SE_out_redist15_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_68_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist15_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_68_fifo_and0 = redist15_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_68_fifo_valid_out;
    assign SE_out_redist15_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_68_fifo_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_atax4_V4 & SE_out_redist15_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_68_fifo_and0;

    // SE_out_redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_68_fifo(STALLENABLE,699)
    // Valid signal propagation
    assign SE_out_redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_68_fifo_V0 = SE_out_redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_68_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_68_fifo_backStall = i_llvm_fpga_push_i1_memdep_phi3_pop1355_push34_atax32_out_stall_out | ~ (SE_out_redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_68_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_68_fifo_and0 = redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_68_fifo_valid_out;
    assign SE_out_redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_68_fifo_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_atax4_V2 & SE_out_redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_68_fifo_and0;

    // SE_out_redist23_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_68_fifo(STALLENABLE,709)
    // Valid signal propagation
    assign SE_out_redist23_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_68_fifo_V0 = SE_out_redist23_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_68_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist23_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_68_fifo_backStall = i_llvm_fpga_push_i1_memdep_phi3_or57_push36_atax15_out_stall_out | ~ (SE_out_redist23_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_68_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist23_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_68_fifo_and0 = redist23_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_68_fifo_valid_out;
    assign SE_out_redist23_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_68_fifo_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_atax4_V1 & SE_out_redist23_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_68_fifo_and0;

    // bubble_out_i_llvm_fpga_pipeline_keep_going_atax4_1_reg(STALLFIFO,907)
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_atax4_1_reg_valid_in = SE_out_i_llvm_fpga_pipeline_keep_going_atax4_V0;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_atax4_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1_backStall;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_atax4_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pipeline_keep_going_atax4_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_atax4_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pipeline_keep_going_atax4_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_atax4_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pipeline_keep_going_atax4_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_atax4_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pipeline_keep_going_atax4_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(4),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pipeline_keep_going_atax4_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pipeline_keep_going_atax4_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pipeline_keep_going_atax4_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pipeline_keep_going_atax4_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pipeline_keep_going_atax4_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pipeline_keep_going_atax4(STALLENABLE,558)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pipeline_keep_going_atax4_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_atax4_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_atax4_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_atax4_fromReg3 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_atax4_fromReg4 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_atax4_fromReg5 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_atax4_fromReg6 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_atax4_fromReg7 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_atax4_fromReg8 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pipeline_keep_going_atax4_fromReg0 <= SE_out_i_llvm_fpga_pipeline_keep_going_atax4_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pipeline_keep_going_atax4_fromReg1 <= SE_out_i_llvm_fpga_pipeline_keep_going_atax4_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pipeline_keep_going_atax4_fromReg2 <= SE_out_i_llvm_fpga_pipeline_keep_going_atax4_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pipeline_keep_going_atax4_fromReg3 <= SE_out_i_llvm_fpga_pipeline_keep_going_atax4_toReg3;
            // Successor 4
            SE_out_i_llvm_fpga_pipeline_keep_going_atax4_fromReg4 <= SE_out_i_llvm_fpga_pipeline_keep_going_atax4_toReg4;
            // Successor 5
            SE_out_i_llvm_fpga_pipeline_keep_going_atax4_fromReg5 <= SE_out_i_llvm_fpga_pipeline_keep_going_atax4_toReg5;
            // Successor 6
            SE_out_i_llvm_fpga_pipeline_keep_going_atax4_fromReg6 <= SE_out_i_llvm_fpga_pipeline_keep_going_atax4_toReg6;
            // Successor 7
            SE_out_i_llvm_fpga_pipeline_keep_going_atax4_fromReg7 <= SE_out_i_llvm_fpga_pipeline_keep_going_atax4_toReg7;
            // Successor 8
            SE_out_i_llvm_fpga_pipeline_keep_going_atax4_fromReg8 <= SE_out_i_llvm_fpga_pipeline_keep_going_atax4_toReg8;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax4_consumed0 = (~ (bubble_out_i_llvm_fpga_pipeline_keep_going_atax4_1_reg_stall_out) & SE_out_i_llvm_fpga_pipeline_keep_going_atax4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_atax4_fromReg0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax4_consumed1 = (~ (SE_out_redist23_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_68_fifo_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_atax4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_atax4_fromReg1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax4_consumed2 = (~ (SE_out_redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_68_fifo_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_atax4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_atax4_fromReg2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax4_consumed3 = (~ (SE_out_redist27_i_first_cleanup_xor_atax2_q_65_fifo_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_atax4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_atax4_fromReg3;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax4_consumed4 = (~ (SE_out_redist15_i_llvm_fpga_pop_i32_j_175_pop26_atax10_out_data_out_68_fifo_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_atax4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_atax4_fromReg4;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax4_consumed5 = (~ (SE_out_redist13_i_llvm_fpga_pop_i32_mul_add1449_pop31_atax17_out_data_out_68_fifo_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_atax4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_atax4_fromReg5;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax4_consumed6 = (~ (SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv7_push25_atax46_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_atax4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_atax4_fromReg6;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax4_consumed7 = (~ (SE_out_redist12_i_llvm_fpga_pop_p1025i32_mptr_bitcast778956_pop35_atax21_out_data_out_68_fifo_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_atax4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_atax4_fromReg7;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax4_consumed8 = (~ (SE_redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_0_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_atax4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_atax4_fromReg8;
    // Consuming
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax4_StallValid = SE_out_i_llvm_fpga_pipeline_keep_going_atax4_backStall & SE_out_i_llvm_fpga_pipeline_keep_going_atax4_wireValid;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax4_toReg0 = SE_out_i_llvm_fpga_pipeline_keep_going_atax4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_atax4_consumed0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax4_toReg1 = SE_out_i_llvm_fpga_pipeline_keep_going_atax4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_atax4_consumed1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax4_toReg2 = SE_out_i_llvm_fpga_pipeline_keep_going_atax4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_atax4_consumed2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax4_toReg3 = SE_out_i_llvm_fpga_pipeline_keep_going_atax4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_atax4_consumed3;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax4_toReg4 = SE_out_i_llvm_fpga_pipeline_keep_going_atax4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_atax4_consumed4;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax4_toReg5 = SE_out_i_llvm_fpga_pipeline_keep_going_atax4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_atax4_consumed5;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax4_toReg6 = SE_out_i_llvm_fpga_pipeline_keep_going_atax4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_atax4_consumed6;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax4_toReg7 = SE_out_i_llvm_fpga_pipeline_keep_going_atax4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_atax4_consumed7;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax4_toReg8 = SE_out_i_llvm_fpga_pipeline_keep_going_atax4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_atax4_consumed8;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax4_or0 = SE_out_i_llvm_fpga_pipeline_keep_going_atax4_consumed0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax4_or1 = SE_out_i_llvm_fpga_pipeline_keep_going_atax4_consumed1 & SE_out_i_llvm_fpga_pipeline_keep_going_atax4_or0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax4_or2 = SE_out_i_llvm_fpga_pipeline_keep_going_atax4_consumed2 & SE_out_i_llvm_fpga_pipeline_keep_going_atax4_or1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax4_or3 = SE_out_i_llvm_fpga_pipeline_keep_going_atax4_consumed3 & SE_out_i_llvm_fpga_pipeline_keep_going_atax4_or2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax4_or4 = SE_out_i_llvm_fpga_pipeline_keep_going_atax4_consumed4 & SE_out_i_llvm_fpga_pipeline_keep_going_atax4_or3;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax4_or5 = SE_out_i_llvm_fpga_pipeline_keep_going_atax4_consumed5 & SE_out_i_llvm_fpga_pipeline_keep_going_atax4_or4;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax4_or6 = SE_out_i_llvm_fpga_pipeline_keep_going_atax4_consumed6 & SE_out_i_llvm_fpga_pipeline_keep_going_atax4_or5;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax4_or7 = SE_out_i_llvm_fpga_pipeline_keep_going_atax4_consumed7 & SE_out_i_llvm_fpga_pipeline_keep_going_atax4_or6;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax4_wireStall = ~ (SE_out_i_llvm_fpga_pipeline_keep_going_atax4_consumed8 & SE_out_i_llvm_fpga_pipeline_keep_going_atax4_or7);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax4_backStall = SE_out_i_llvm_fpga_pipeline_keep_going_atax4_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax4_V0 = SE_out_i_llvm_fpga_pipeline_keep_going_atax4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_atax4_fromReg0);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax4_V1 = SE_out_i_llvm_fpga_pipeline_keep_going_atax4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_atax4_fromReg1);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax4_V2 = SE_out_i_llvm_fpga_pipeline_keep_going_atax4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_atax4_fromReg2);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax4_V3 = SE_out_i_llvm_fpga_pipeline_keep_going_atax4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_atax4_fromReg3);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax4_V4 = SE_out_i_llvm_fpga_pipeline_keep_going_atax4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_atax4_fromReg4);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax4_V5 = SE_out_i_llvm_fpga_pipeline_keep_going_atax4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_atax4_fromReg5);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax4_V6 = SE_out_i_llvm_fpga_pipeline_keep_going_atax4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_atax4_fromReg6);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax4_V7 = SE_out_i_llvm_fpga_pipeline_keep_going_atax4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_atax4_fromReg7);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax4_V8 = SE_out_i_llvm_fpga_pipeline_keep_going_atax4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_atax4_fromReg8);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax4_wireValid = i_llvm_fpga_pipeline_keep_going_atax4_out_valid_out;

    // redist18_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_out_data_out_65_fifo(STALLFIFO,377)
    assign redist18_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_out_data_out_65_fifo_valid_in = SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_V0;
    assign redist18_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_out_data_out_65_fifo_stall_in = SE_out_redist27_i_first_cleanup_xor_atax2_q_65_fifo_backStall;
    assign redist18_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_out_data_out_65_fifo_data_in = bubble_select_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_b;
    assign redist18_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_out_data_out_65_fifo_valid_in_bitsignaltemp = redist18_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_out_data_out_65_fifo_valid_in[0];
    assign redist18_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_out_data_out_65_fifo_stall_in_bitsignaltemp = redist18_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_out_data_out_65_fifo_stall_in[0];
    assign redist18_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_out_data_out_65_fifo_valid_out[0] = redist18_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_out_data_out_65_fifo_valid_out_bitsignaltemp;
    assign redist18_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_out_data_out_65_fifo_stall_out[0] = redist18_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_out_data_out_65_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(66),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(2),
        .IMPL("ram")
    ) theredist18_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_out_data_out_65_fifo (
        .valid_in(redist18_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_out_data_out_65_fifo_valid_in_bitsignaltemp),
        .stall_in(redist18_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_out_data_out_65_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_b),
        .valid_out(redist18_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_out_data_out_65_fifo_valid_out_bitsignaltemp),
        .stall_out(redist18_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_out_data_out_65_fifo_stall_out_bitsignaltemp),
        .data_out(redist18_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_out_data_out_65_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist27_i_first_cleanup_xor_atax2_q_65_fifo(STALLFIFO,398)
    assign redist27_i_first_cleanup_xor_atax2_q_65_fifo_valid_in = SE_out_redist26_i_first_cleanup_xor_atax2_q_37_fifo_V1;
    assign redist27_i_first_cleanup_xor_atax2_q_65_fifo_stall_in = SE_out_redist27_i_first_cleanup_xor_atax2_q_65_fifo_backStall;
    assign redist27_i_first_cleanup_xor_atax2_q_65_fifo_data_in = bubble_select_redist26_i_first_cleanup_xor_atax2_q_37_fifo_b;
    assign redist27_i_first_cleanup_xor_atax2_q_65_fifo_valid_in_bitsignaltemp = redist27_i_first_cleanup_xor_atax2_q_65_fifo_valid_in[0];
    assign redist27_i_first_cleanup_xor_atax2_q_65_fifo_stall_in_bitsignaltemp = redist27_i_first_cleanup_xor_atax2_q_65_fifo_stall_in[0];
    assign redist27_i_first_cleanup_xor_atax2_q_65_fifo_valid_out[0] = redist27_i_first_cleanup_xor_atax2_q_65_fifo_valid_out_bitsignaltemp;
    assign redist27_i_first_cleanup_xor_atax2_q_65_fifo_stall_out[0] = redist27_i_first_cleanup_xor_atax2_q_65_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(29),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist27_i_first_cleanup_xor_atax2_q_65_fifo (
        .valid_in(redist27_i_first_cleanup_xor_atax2_q_65_fifo_valid_in_bitsignaltemp),
        .stall_in(redist27_i_first_cleanup_xor_atax2_q_65_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist26_i_first_cleanup_xor_atax2_q_37_fifo_b),
        .valid_out(redist27_i_first_cleanup_xor_atax2_q_65_fifo_valid_out_bitsignaltemp),
        .stall_out(redist27_i_first_cleanup_xor_atax2_q_65_fifo_stall_out_bitsignaltemp),
        .data_out(redist27_i_first_cleanup_xor_atax2_q_65_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist27_i_first_cleanup_xor_atax2_q_65_fifo(STALLENABLE,721)
    // Valid signal propagation
    assign SE_out_redist27_i_first_cleanup_xor_atax2_q_65_fifo_V0 = SE_out_redist27_i_first_cleanup_xor_atax2_q_65_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist27_i_first_cleanup_xor_atax2_q_65_fifo_backStall = i_llvm_fpga_push_i2_cleanups_push29_atax44_out_stall_out | ~ (SE_out_redist27_i_first_cleanup_xor_atax2_q_65_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist27_i_first_cleanup_xor_atax2_q_65_fifo_and0 = redist27_i_first_cleanup_xor_atax2_q_65_fifo_valid_out;
    assign SE_out_redist27_i_first_cleanup_xor_atax2_q_65_fifo_and1 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_V4 & SE_out_redist27_i_first_cleanup_xor_atax2_q_65_fifo_and0;
    assign SE_out_redist27_i_first_cleanup_xor_atax2_q_65_fifo_and2 = redist18_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_out_data_out_65_fifo_valid_out & SE_out_redist27_i_first_cleanup_xor_atax2_q_65_fifo_and1;
    assign SE_out_redist27_i_first_cleanup_xor_atax2_q_65_fifo_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_atax4_V3 & SE_out_redist27_i_first_cleanup_xor_atax2_q_65_fifo_and2;

    // bubble_join_redist29_i_first_cleanup_atax1_sel_x_b_65_fifo(BITJOIN,524)
    assign bubble_join_redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_q = redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_data_out;

    // bubble_select_redist29_i_first_cleanup_atax1_sel_x_b_65_fifo(BITSELECT,525)
    assign bubble_select_redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_b = $unsigned(bubble_join_redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_q[0:0]);

    // SR_SE_i_masked_atax47(STALLREG,915)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_masked_atax47_r_valid <= 1'b0;
            SR_SE_i_masked_atax47_r_data0 <= 1'bx;
            SR_SE_i_masked_atax47_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_masked_atax47_r_valid <= SE_i_masked_atax47_backStall & (SR_SE_i_masked_atax47_r_valid | SR_SE_i_masked_atax47_i_valid);

            if (SR_SE_i_masked_atax47_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_masked_atax47_r_data0 <= i_notcmp_atax40_q;
                SR_SE_i_masked_atax47_r_data1 <= $unsigned(bubble_select_redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_masked_atax47_and0 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_V3;
    assign SR_SE_i_masked_atax47_i_valid = SE_out_redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_V1 & SR_SE_i_masked_atax47_and0;
    // Stall signal propagation
    assign SR_SE_i_masked_atax47_backStall = SR_SE_i_masked_atax47_r_valid | ~ (SR_SE_i_masked_atax47_i_valid);

    // Valid
    assign SR_SE_i_masked_atax47_V = SR_SE_i_masked_atax47_r_valid == 1'b1 ? SR_SE_i_masked_atax47_r_valid : SR_SE_i_masked_atax47_i_valid;

    // Data0
    assign SR_SE_i_masked_atax47_D0 = SR_SE_i_masked_atax47_r_valid == 1'b1 ? SR_SE_i_masked_atax47_r_data0 : i_notcmp_atax40_q;
    // Data1
    assign SR_SE_i_masked_atax47_D1 = SR_SE_i_masked_atax47_r_valid == 1'b1 ? SR_SE_i_masked_atax47_r_data1 : bubble_select_redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_b;

    // SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv7_push25_atax46(STALLENABLE,609)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv7_push25_atax46_V0 = SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv7_push25_atax46_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv7_push25_atax46_backStall = i_llvm_fpga_push_i6_fpga_indvars_iv7_push25_atax46_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv7_push25_atax46_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv7_push25_atax46_and0 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_V2;
    assign SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv7_push25_atax46_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_atax4_V6 & SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv7_push25_atax46_and0;

    // SE_out_i_llvm_fpga_push_i1_notexitcond_atax41(STALLENABLE,598)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_notexitcond_atax41_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_notexitcond_atax41_wireValid = i_llvm_fpga_push_i1_notexitcond_atax41_out_valid_out;

    // i_llvm_fpga_push_i1_notexitcond_atax41(BLACKBOX,91)@70
    // in in_stall_in@20000000
    // out out_data_out@71
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    // out out_stall_out@20000000
    // out out_valid_out@71
    atax_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_atax41 (
        .in_data_in(i_exitcond9_atax38_cmp_nsign_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_atax4_out_not_exitcond_stall_out),
        .in_first_cleanup(bubble_select_redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_notexitcond_atax41_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_notexitcond_atax41_V0),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_atax41_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_atax41_out_feedback_valid_out_3),
        .out_stall_out(i_llvm_fpga_push_i1_notexitcond_atax41_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_notexitcond_atax41_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i1_notexitcond_atax41(STALLENABLE,597)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_atax41_V0 = SE_in_i_llvm_fpga_push_i1_notexitcond_atax41_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_atax41_backStall = i_llvm_fpga_push_i1_notexitcond_atax41_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_notexitcond_atax41_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_atax41_and0 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_V1;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_atax41_wireValid = SE_out_redist29_i_first_cleanup_atax1_sel_x_b_65_fifo_V0 & SE_in_i_llvm_fpga_push_i1_notexitcond_atax41_and0;

    // bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1_reg(STALLFIFO,908)
    assign bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1_reg_valid_in = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_V0;
    assign bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1_backStall;
    assign bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(4),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37(STALLENABLE,580)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_fromReg3 <= '0;
            SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_fromReg4 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_fromReg0 <= SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_fromReg1 <= SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_fromReg2 <= SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_fromReg3 <= SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_toReg3;
            // Successor 4
            SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_fromReg4 <= SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_toReg4;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_consumed0 = (~ (bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1_reg_stall_out) & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_wireValid) | SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_notexitcond_atax41_backStall) & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_wireValid) | SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_consumed2 = (~ (SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv7_push25_atax46_backStall) & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_wireValid) | SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_fromReg2;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_consumed3 = (~ (SR_SE_i_masked_atax47_backStall) & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_wireValid) | SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_fromReg3;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_consumed4 = (~ (SE_out_redist27_i_first_cleanup_xor_atax2_q_65_fifo_backStall) & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_wireValid) | SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_fromReg4;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_StallValid = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_backStall & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_wireValid;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_toReg0 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_StallValid & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_consumed0;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_toReg1 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_StallValid & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_consumed1;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_toReg2 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_StallValid & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_consumed2;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_toReg3 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_StallValid & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_consumed3;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_toReg4 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_StallValid & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_consumed4;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_or0 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_consumed0;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_or1 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_consumed1 & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_or0;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_or2 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_consumed2 & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_or1;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_or3 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_consumed3 & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_or2;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_wireStall = ~ (SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_consumed4 & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_or3);
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_backStall = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_V0 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_wireValid & ~ (SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_V1 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_wireValid & ~ (SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_V2 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_wireValid & ~ (SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_fromReg2);
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_V3 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_wireValid & ~ (SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_fromReg3);
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_V4 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_wireValid & ~ (SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_fromReg4);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_wireValid = i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_out_valid_out;

    // SE_out_i_llvm_fpga_push_i6_fpga_indvars_iv7_push25_atax46(STALLENABLE,610)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i6_fpga_indvars_iv7_push25_atax46_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i6_fpga_indvars_iv7_push25_atax46_wireValid = i_llvm_fpga_push_i6_fpga_indvars_iv7_push25_atax46_out_valid_out;

    // c_i6_161(CONSTANT,50)
    assign c_i6_161_q = $unsigned(6'b111111);

    // i_fpga_indvars_iv_next8_atax45(ADD,64)@70
    assign i_fpga_indvars_iv_next8_atax45_a = {1'b0, bubble_select_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_b};
    assign i_fpga_indvars_iv_next8_atax45_b = {1'b0, c_i6_161_q};
    assign i_fpga_indvars_iv_next8_atax45_o = $unsigned(i_fpga_indvars_iv_next8_atax45_a) + $unsigned(i_fpga_indvars_iv_next8_atax45_b);
    assign i_fpga_indvars_iv_next8_atax45_q = i_fpga_indvars_iv_next8_atax45_o[6:0];

    // bgTrunc_i_fpga_indvars_iv_next8_atax45_sel_x(BITSELECT,5)@70
    assign bgTrunc_i_fpga_indvars_iv_next8_atax45_sel_x_b = i_fpga_indvars_iv_next8_atax45_q[5:0];

    // i_llvm_fpga_push_i6_fpga_indvars_iv7_push25_atax46(BLACKBOX,97)@70
    // in in_stall_in@20000000
    // out out_data_out@71
    // out out_feedback_out_25@20000000
    // out out_feedback_valid_out_25@20000000
    // out out_stall_out@20000000
    // out out_valid_out@71
    atax_i_llvm_fpga_push_i6_fpga_indvars_iv7_push25_0 thei_llvm_fpga_push_i6_fpga_indvars_iv7_push25_atax46 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next8_atax45_sel_x_b),
        .in_feedback_stall_in_25(i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_out_feedback_stall_out_25),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_atax4_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i6_fpga_indvars_iv7_push25_atax46_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv7_push25_atax46_V0),
        .out_data_out(),
        .out_feedback_out_25(i_llvm_fpga_push_i6_fpga_indvars_iv7_push25_atax46_out_feedback_out_25),
        .out_feedback_valid_out_25(i_llvm_fpga_push_i6_fpga_indvars_iv7_push25_atax46_out_feedback_valid_out_25),
        .out_stall_out(i_llvm_fpga_push_i6_fpga_indvars_iv7_push25_atax46_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i6_fpga_indvars_iv7_push25_atax46_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i6_1859(CONSTANT,51)
    assign c_i6_1859_q = $unsigned(6'b010010);

    // i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37(BLACKBOX,82)@69
    // in in_stall_in@20000000
    // out out_data_out@70
    // out out_feedback_stall_out_25@20000000
    // out out_stall_out@20000000
    // out out_valid_out@70
    atax_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_0 thei_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37 (
        .in_data_in(c_i6_1859_q),
        .in_dir(SR_SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_D1),
        .in_feedback_in_25(i_llvm_fpga_push_i6_fpga_indvars_iv7_push25_atax46_out_feedback_out_25),
        .in_feedback_valid_in_25(i_llvm_fpga_push_i6_fpga_indvars_iv7_push25_atax46_out_feedback_valid_out_25),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_backStall),
        .in_valid_in(SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_V2),
        .out_data_out(i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_out_data_out),
        .out_feedback_stall_out_25(i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_out_feedback_stall_out_25),
        .out_stall_out(i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_atax4(BLACKBOX,71)@69
    // in in_stall_in@20000000
    // out out_data_out@70
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    // out out_stall_out@20000000
    // out out_valid_out@70
    atax_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_atax4 (
        .in_data_in(SR_SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_D0),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_atax9_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_atax9_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_atax41_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_atax41_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(SE_out_i_llvm_fpga_pipeline_keep_going_atax4_backStall),
        .in_valid_in(SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_V1),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_atax4_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_atax4_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_atax4_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_atax4_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_atax4_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_atax4_out_pipeline_valid_out),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_atax4_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_atax4_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_0(STALLENABLE,728)
    // Valid signal propagation
    assign SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_V0 = SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_R_v_0;
    // Stall signal propagation
    assign SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_s_tv_0 = SR_SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_backStall & SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_R_v_0;
    // Backward Enable generation
    assign SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_backEN = ~ (SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_v_s_0 = SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_backEN & SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_V0;
    // Backward Stall generation
    assign SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_backStall = ~ (SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_backEN == 1'b0)
            begin
                SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_R_v_0 <= SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_R_v_0 & SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_s_tv_0;
            end
            else
            begin
                SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_R_v_0 <= SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_v_s_0;
            end

        end
    end

    // SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo(STALLENABLE,727)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_fromReg0 <= '0;
            SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_fromReg1 <= '0;
            SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_fromReg0 <= SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_toReg0;
            // Successor 1
            SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_fromReg1 <= SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_toReg1;
            // Successor 2
            SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_fromReg2 <= SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_consumed0 = (~ (SE_redist32_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_backStall) & SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_wireValid) | SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_fromReg0;
    assign SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_consumed1 = (~ (i_llvm_fpga_pipeline_keep_going_atax4_out_stall_out) & SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_wireValid) | SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_fromReg1;
    assign SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_consumed2 = (~ (i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_out_stall_out) & SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_wireValid) | SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_fromReg2;
    // Consuming
    assign SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_StallValid = SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_backStall & SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_wireValid;
    assign SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_toReg0 = SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_StallValid & SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_consumed0;
    assign SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_toReg1 = SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_StallValid & SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_consumed1;
    assign SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_toReg2 = SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_StallValid & SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_consumed2;
    // Backward Stall generation
    assign SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_or0 = SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_consumed0;
    assign SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_or1 = SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_consumed1 & SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_or0;
    assign SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_wireStall = ~ (SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_consumed2 & SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_or1);
    assign SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_backStall = SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_V0 = SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_wireValid & ~ (SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_fromReg0);
    assign SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_V1 = SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_wireValid & ~ (SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_fromReg1);
    assign SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_V2 = SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_wireValid & ~ (SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_wireValid = SR_SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_V;

    // SR_SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo(STALLREG,914)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_r_valid <= 1'b0;
            SR_SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_r_data0 <= 1'bx;
            SR_SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_r_data1 <= 1'bx;
            SR_SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_r_valid <= SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_backStall & (SR_SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_r_valid | SR_SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_i_valid);

            if (SR_SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_r_data0 <= $unsigned(bubble_select_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_b);
                SR_SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_r_data1 <= $unsigned(bubble_select_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_b);
                SR_SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_r_data2 <= $unsigned(bubble_select_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_i_valid = redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_valid_out;
    // Stall signal propagation
    assign SR_SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_backStall = SR_SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_r_valid | ~ (SR_SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_i_valid);

    // Valid
    assign SR_SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_V = SR_SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_r_valid == 1'b1 ? SR_SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_r_valid : SR_SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_i_valid;

    // Data0
    assign SR_SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_D0 = SR_SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_r_valid == 1'b1 ? SR_SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_r_data0 : bubble_select_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_b;
    // Data1
    assign SR_SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_D1 = SR_SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_r_valid == 1'b1 ? SR_SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_r_data1 : bubble_select_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_b;
    // Data2
    assign SR_SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_D2 = SR_SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_r_valid == 1'b1 ? SR_SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_r_data2 : bubble_select_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_b;

    // redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo(STALLFIFO,401)
    assign redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_valid_in = SE_coalesced_delay_0_2_V3;
    assign redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_stall_in = SR_SE_out_redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_backStall;
    assign redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_data_in = sel_for_coalesced_delay_0_c;
    assign redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_valid_in_bitsignaltemp = redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_valid_in[0];
    assign redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_stall_in_bitsignaltemp = redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_stall_in[0];
    assign redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_valid_out[0] = redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_valid_out_bitsignaltemp;
    assign redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_stall_out[0] = redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(66),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo (
        .valid_in(redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_valid_in_bitsignaltemp),
        .stall_in(redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_stall_in_bitsignaltemp),
        .data_in(sel_for_coalesced_delay_0_c),
        .valid_out(redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_valid_out_bitsignaltemp),
        .stall_out(redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_stall_out_bitsignaltemp),
        .data_out(redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_cleanups_pop29_atax0(BLACKBOX,77)@4
    // in in_stall_in@20000000
    // out out_data_out@5
    // out out_feedback_stall_out_29@20000000
    // out out_stall_out@20000000
    // out out_valid_out@5
    atax_i_llvm_fpga_pop_i2_cleanups_pop29_0 thei_llvm_fpga_pop_i2_cleanups_pop29_atax0 (
        .in_data_in(c_i2_154_q),
        .in_dir(sel_for_coalesced_delay_0_c),
        .in_feedback_in_29(i_llvm_fpga_push_i2_cleanups_push29_atax44_out_feedback_out_29),
        .in_feedback_valid_in_29(i_llvm_fpga_push_i2_cleanups_push29_atax44_out_feedback_valid_out_29),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i2_cleanups_pop29_atax0_backStall),
        .in_valid_in(SE_coalesced_delay_0_2_V1),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups_pop29_atax0_out_data_out),
        .out_feedback_stall_out_29(i_llvm_fpga_pop_i2_cleanups_pop29_atax0_out_feedback_stall_out_29),
        .out_stall_out(i_llvm_fpga_pop_i2_cleanups_pop29_atax0_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i2_cleanups_pop29_atax0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi1_pop27_atax24(BLACKBOX,73)@4
    // in in_stall_in@20000000
    // out out_data_out@5
    // out out_feedback_stall_out_27@20000000
    // out out_stall_out@20000000
    // out out_valid_out@5
    atax_i_llvm_fpga_pop_i1_memdep_phi1_pop27_0 thei_llvm_fpga_pop_i1_memdep_phi1_pop27_atax24 (
        .in_data_in(GND_q),
        .in_dir(sel_for_coalesced_delay_0_c),
        .in_feedback_in_27(i_llvm_fpga_push_i1_memdep_phi1_push27_atax34_out_feedback_out_27),
        .in_feedback_valid_in_27(i_llvm_fpga_push_i1_memdep_phi1_push27_atax34_out_feedback_valid_out_27),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop27_atax24_backStall),
        .in_valid_in(SE_coalesced_delay_0_2_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi1_pop27_atax24_out_data_out),
        .out_feedback_stall_out_27(i_llvm_fpga_pop_i1_memdep_phi1_pop27_atax24_out_feedback_stall_out_27),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi1_pop27_atax24_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi1_pop27_atax24_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // coalesced_delay_0_1(REG,406)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_1_q <= $unsigned(33'b000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_1_backEN == 1'b1)
        begin
            coalesced_delay_0_1_q <= $unsigned(SR_SE_coalesced_delay_0_1_D0);
        end
    end

    // SR_SE_coalesced_delay_0_2(STALLREG,913)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_coalesced_delay_0_2_r_valid <= 1'b0;
            SR_SE_coalesced_delay_0_2_r_data0 <= 33'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_coalesced_delay_0_2_r_valid <= SE_coalesced_delay_0_2_backStall & (SR_SE_coalesced_delay_0_2_r_valid | SR_SE_coalesced_delay_0_2_i_valid);

            if (SR_SE_coalesced_delay_0_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_coalesced_delay_0_2_r_data0 <= $unsigned(coalesced_delay_0_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_coalesced_delay_0_2_i_valid = SE_coalesced_delay_0_1_V0;
    // Stall signal propagation
    assign SR_SE_coalesced_delay_0_2_backStall = SR_SE_coalesced_delay_0_2_r_valid | ~ (SR_SE_coalesced_delay_0_2_i_valid);

    // Valid
    assign SR_SE_coalesced_delay_0_2_V = SR_SE_coalesced_delay_0_2_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_2_r_valid : SR_SE_coalesced_delay_0_2_i_valid;

    assign SR_SE_coalesced_delay_0_2_D0 = SR_SE_coalesced_delay_0_2_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_2_r_data0 : coalesced_delay_0_1_q;

    // SE_coalesced_delay_0_2(STALLENABLE,733)
    // Valid signal propagation
    assign SE_coalesced_delay_0_2_V0 = SE_coalesced_delay_0_2_R_v_0;
    assign SE_coalesced_delay_0_2_V1 = SE_coalesced_delay_0_2_R_v_1;
    assign SE_coalesced_delay_0_2_V2 = SE_coalesced_delay_0_2_R_v_2;
    assign SE_coalesced_delay_0_2_V3 = SE_coalesced_delay_0_2_R_v_3;
    // Stall signal propagation
    assign SE_coalesced_delay_0_2_s_tv_0 = i_llvm_fpga_pop_i1_memdep_phi1_pop27_atax24_out_stall_out & SE_coalesced_delay_0_2_R_v_0;
    assign SE_coalesced_delay_0_2_s_tv_1 = i_llvm_fpga_pop_i2_cleanups_pop29_atax0_out_stall_out & SE_coalesced_delay_0_2_R_v_1;
    assign SE_coalesced_delay_0_2_s_tv_2 = i_llvm_fpga_pop_i32_add758_pop37_atax27_out_stall_out & SE_coalesced_delay_0_2_R_v_2;
    assign SE_coalesced_delay_0_2_s_tv_3 = redist31_atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_stall_out & SE_coalesced_delay_0_2_R_v_3;
    // Backward Enable generation
    assign SE_coalesced_delay_0_2_or0 = SE_coalesced_delay_0_2_s_tv_0;
    assign SE_coalesced_delay_0_2_or1 = SE_coalesced_delay_0_2_s_tv_1 | SE_coalesced_delay_0_2_or0;
    assign SE_coalesced_delay_0_2_or2 = SE_coalesced_delay_0_2_s_tv_2 | SE_coalesced_delay_0_2_or1;
    assign SE_coalesced_delay_0_2_backEN = ~ (SE_coalesced_delay_0_2_s_tv_3 | SE_coalesced_delay_0_2_or2);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_2_v_s_0 = SE_coalesced_delay_0_2_backEN & SR_SE_coalesced_delay_0_2_V;
    // Backward Stall generation
    assign SE_coalesced_delay_0_2_backStall = ~ (SE_coalesced_delay_0_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_2_R_v_0 <= 1'b0;
            SE_coalesced_delay_0_2_R_v_1 <= 1'b0;
            SE_coalesced_delay_0_2_R_v_2 <= 1'b0;
            SE_coalesced_delay_0_2_R_v_3 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_2_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_2_R_v_0 <= SE_coalesced_delay_0_2_R_v_0 & SE_coalesced_delay_0_2_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_2_R_v_0 <= SE_coalesced_delay_0_2_v_s_0;
            end

            if (SE_coalesced_delay_0_2_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_2_R_v_1 <= SE_coalesced_delay_0_2_R_v_1 & SE_coalesced_delay_0_2_s_tv_1;
            end
            else
            begin
                SE_coalesced_delay_0_2_R_v_1 <= SE_coalesced_delay_0_2_v_s_0;
            end

            if (SE_coalesced_delay_0_2_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_2_R_v_2 <= SE_coalesced_delay_0_2_R_v_2 & SE_coalesced_delay_0_2_s_tv_2;
            end
            else
            begin
                SE_coalesced_delay_0_2_R_v_2 <= SE_coalesced_delay_0_2_v_s_0;
            end

            if (SE_coalesced_delay_0_2_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_2_R_v_3 <= SE_coalesced_delay_0_2_R_v_3 & SE_coalesced_delay_0_2_s_tv_3;
            end
            else
            begin
                SE_coalesced_delay_0_2_R_v_3 <= SE_coalesced_delay_0_2_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_push_i32_add758_push37_atax28(STALLENABLE,604)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i32_add758_push37_atax28_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i32_add758_push37_atax28_wireValid = i_llvm_fpga_push_i32_add758_push37_atax28_out_valid_out;

    // bubble_join_redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo(BITJOIN,500)
    assign bubble_join_redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_q = redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_data_out;

    // bubble_select_redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo(BITSELECT,501)
    assign bubble_select_redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_b = $unsigned(bubble_join_redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_q[31:0]);

    // i_llvm_fpga_push_i32_add758_push37_atax28(BLACKBOX,94)@73
    // in in_stall_in@20000000
    // out out_data_out@74
    // out out_feedback_out_37@20000000
    // out out_feedback_valid_out_37@20000000
    // out out_stall_out@20000000
    // out out_valid_out@74
    atax_i_llvm_fpga_push_i32_add758_push37_0 thei_llvm_fpga_push_i32_add758_push37_atax28 (
        .in_data_in(bubble_select_redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_b),
        .in_feedback_stall_in_37(i_llvm_fpga_pop_i32_add758_pop37_atax27_out_feedback_stall_out_37),
        .in_keep_going(redist24_i_llvm_fpga_pipeline_keep_going_atax4_out_data_out_3_2_q),
        .in_stall_in(SE_out_i_llvm_fpga_push_i32_add758_push37_atax28_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i32_add758_push37_atax28_V0),
        .out_data_out(),
        .out_feedback_out_37(i_llvm_fpga_push_i32_add758_push37_atax28_out_feedback_out_37),
        .out_feedback_valid_out_37(i_llvm_fpga_push_i32_add758_push37_atax28_out_feedback_valid_out_37),
        .out_stall_out(i_llvm_fpga_push_i32_add758_push37_atax28_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_add758_push37_atax28_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // coalesced_delay_0_2(REG,407)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_2_q <= $unsigned(33'b000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_2_backEN == 1'b1)
        begin
            coalesced_delay_0_2_q <= $unsigned(SR_SE_coalesced_delay_0_2_D0);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,349)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_2_q[31:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_2_q[32:32]);

    // i_llvm_fpga_pop_i32_add758_pop37_atax27(BLACKBOX,79)@4
    // in in_stall_in@20000000
    // out out_data_out@5
    // out out_feedback_stall_out_37@20000000
    // out out_stall_out@20000000
    // out out_valid_out@5
    atax_i_llvm_fpga_pop_i32_add758_pop37_0 thei_llvm_fpga_pop_i32_add758_pop37_atax27 (
        .in_data_in(sel_for_coalesced_delay_0_b),
        .in_dir(sel_for_coalesced_delay_0_c),
        .in_feedback_in_37(i_llvm_fpga_push_i32_add758_push37_atax28_out_feedback_out_37),
        .in_feedback_valid_in_37(i_llvm_fpga_push_i32_add758_push37_atax28_out_feedback_valid_out_37),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_add758_pop37_atax27_backStall),
        .in_valid_in(SE_coalesced_delay_0_2_V2),
        .out_data_out(i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out),
        .out_feedback_stall_out_37(i_llvm_fpga_pop_i32_add758_pop37_atax27_out_feedback_stall_out_37),
        .out_stall_out(i_llvm_fpga_pop_i32_add758_pop37_atax27_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_add758_pop37_atax27_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i32_add758_pop37_atax27(BITJOIN,455)
    assign bubble_join_i_llvm_fpga_pop_i32_add758_pop37_atax27_q = i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_add758_pop37_atax27(BITSELECT,456)
    assign bubble_select_i_llvm_fpga_pop_i32_add758_pop37_atax27_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_add758_pop37_atax27_q[31:0]);

    // SE_out_redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo(STALLENABLE,691)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_fromReg0 <= '0;
            SE_out_redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_fromReg0 <= SE_out_redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_toReg0;
            // Successor 1
            SE_out_redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_fromReg1 <= SE_out_redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_consumed0 = (~ (SE_i_mul15_atax29_im0_cma_backStall) & SE_out_redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_wireValid) | SE_out_redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_fromReg0;
    assign SE_out_redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_consumed1 = (~ (redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_stall_out) & SE_out_redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_wireValid) | SE_out_redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_fromReg1;
    // Consuming
    assign SE_out_redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_StallValid = SE_out_redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_backStall & SE_out_redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_wireValid;
    assign SE_out_redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_toReg0 = SE_out_redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_StallValid & SE_out_redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_consumed0;
    assign SE_out_redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_toReg1 = SE_out_redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_StallValid & SE_out_redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_or0 = SE_out_redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_consumed0;
    assign SE_out_redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_wireStall = ~ (SE_out_redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_consumed1 & SE_out_redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_or0);
    assign SE_out_redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_backStall = SE_out_redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_V0 = SE_out_redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_wireValid & ~ (SE_out_redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_fromReg0);
    assign SE_out_redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_V1 = SE_out_redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_wireValid & ~ (SE_out_redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_wireValid = redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_valid_out;

    // SE_out_i_llvm_fpga_pop_i32_add758_pop37_atax27(STALLENABLE,574)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i32_add758_pop37_atax27_V0 = SE_out_i_llvm_fpga_pop_i32_add758_pop37_atax27_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i32_add758_pop37_atax27_backStall = redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_stall_out | ~ (SE_out_i_llvm_fpga_pop_i32_add758_pop37_atax27_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i32_add758_pop37_atax27_wireValid = i_llvm_fpga_pop_i32_add758_pop37_atax27_out_valid_out;

    // redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo(STALLFIFO,375)
    assign redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_valid_in = SE_out_i_llvm_fpga_pop_i32_add758_pop37_atax27_V0;
    assign redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_stall_in = SE_out_redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_backStall;
    assign redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_data_in = bubble_select_i_llvm_fpga_pop_i32_add758_pop37_atax27_b;
    assign redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_valid_in_bitsignaltemp = redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_valid_in[0];
    assign redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_stall_in_bitsignaltemp = redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_stall_in[0];
    assign redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_valid_out[0] = redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_valid_out_bitsignaltemp;
    assign redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_stall_out[0] = redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo (
        .valid_in(redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_valid_in_bitsignaltemp),
        .stall_in(redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_i32_add758_pop37_atax27_b),
        .valid_out(redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_valid_out_bitsignaltemp),
        .stall_out(redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_stall_out_bitsignaltemp),
        .data_out(redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo(BITJOIN,497)
    assign bubble_join_redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_q = redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_data_out;

    // bubble_select_redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo(BITSELECT,498)
    assign bubble_select_redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_b = $unsigned(bubble_join_redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_q[31:0]);

    // i_mul15_atax29_bs2_merged_bit_select(BITSELECT,306)@37
    assign i_mul15_atax29_bs2_merged_bit_select_b = bubble_select_redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_b[17:0];
    assign i_mul15_atax29_bs2_merged_bit_select_c = bubble_select_redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_b[31:18];

    // bubble_join_i_llvm_fpga_mem_unnamed_atax17_atax26(BITJOIN,424)
    assign bubble_join_i_llvm_fpga_mem_unnamed_atax17_atax26_q = i_llvm_fpga_mem_unnamed_atax17_atax26_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_atax17_atax26(BITSELECT,425)
    assign bubble_select_i_llvm_fpga_mem_unnamed_atax17_atax26_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_atax17_atax26_q[31:0]);

    // i_mul15_atax29_bs1_merged_bit_select(BITSELECT,305)@37
    assign i_mul15_atax29_bs1_merged_bit_select_b = bubble_select_i_llvm_fpga_mem_unnamed_atax17_atax26_b[17:0];
    assign i_mul15_atax29_bs1_merged_bit_select_c = bubble_select_i_llvm_fpga_mem_unnamed_atax17_atax26_b[31:18];

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_mul15_atax29_ma3_cma(CHAINMULTADD,241)@37 + 2
    assign i_mul15_atax29_ma3_cma_reset = ~ (resetn);
    assign i_mul15_atax29_ma3_cma_ena0 = SE_i_mul15_atax29_im0_cma_backEN[0];
    assign i_mul15_atax29_ma3_cma_ena1 = i_mul15_atax29_ma3_cma_ena0;
    assign i_mul15_atax29_ma3_cma_p[0] = i_mul15_atax29_ma3_cma_a0[0] * i_mul15_atax29_ma3_cma_c0[0];
    assign i_mul15_atax29_ma3_cma_p[1] = i_mul15_atax29_ma3_cma_a0[1] * i_mul15_atax29_ma3_cma_c0[1];
    assign i_mul15_atax29_ma3_cma_u[0] = {1'b0, i_mul15_atax29_ma3_cma_p[0][31:0]};
    assign i_mul15_atax29_ma3_cma_u[1] = {1'b0, i_mul15_atax29_ma3_cma_p[1][31:0]};
    assign i_mul15_atax29_ma3_cma_w[0] = i_mul15_atax29_ma3_cma_u[0] + i_mul15_atax29_ma3_cma_u[1];
    assign i_mul15_atax29_ma3_cma_x[0] = i_mul15_atax29_ma3_cma_w[0];
    assign i_mul15_atax29_ma3_cma_y[0] = i_mul15_atax29_ma3_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul15_atax29_ma3_cma_a0 <= '{default: '0};
            i_mul15_atax29_ma3_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul15_atax29_ma3_cma_ena0 == 1'b1)
            begin
                i_mul15_atax29_ma3_cma_a0[0] <= i_mul15_atax29_bs1_merged_bit_select_c;
                i_mul15_atax29_ma3_cma_a0[1] <= i_mul15_atax29_bs2_merged_bit_select_c;
                i_mul15_atax29_ma3_cma_c0[0] <= i_mul15_atax29_bs2_merged_bit_select_b;
                i_mul15_atax29_ma3_cma_c0[1] <= i_mul15_atax29_bs1_merged_bit_select_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul15_atax29_ma3_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul15_atax29_ma3_cma_ena1 == 1'b1)
            begin
                i_mul15_atax29_ma3_cma_s[0] <= i_mul15_atax29_ma3_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(33), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul15_atax29_ma3_cma_delay ( .xin(i_mul15_atax29_ma3_cma_s[0]), .xout(i_mul15_atax29_ma3_cma_qq), .ena(SE_i_mul15_atax29_im0_cma_backEN[0]), .clk(clock), .aclr(resetn) );
    assign i_mul15_atax29_ma3_cma_q = $unsigned(i_mul15_atax29_ma3_cma_qq[32:0]);

    // bubble_join_i_mul15_atax29_ma3_cma(BITJOIN,485)
    assign bubble_join_i_mul15_atax29_ma3_cma_q = i_mul15_atax29_ma3_cma_q;

    // i_mul15_atax29_im8_cma(CHAINMULTADD,240)@37 + 2
    assign i_mul15_atax29_im8_cma_reset = ~ (resetn);
    assign i_mul15_atax29_im8_cma_ena0 = SE_i_mul15_atax29_im0_cma_backEN[0];
    assign i_mul15_atax29_im8_cma_ena1 = i_mul15_atax29_im8_cma_ena0;
    assign i_mul15_atax29_im8_cma_p[0] = i_mul15_atax29_im8_cma_a0[0] * i_mul15_atax29_im8_cma_c0[0];
    assign i_mul15_atax29_im8_cma_u[0] = i_mul15_atax29_im8_cma_p[0][27:0];
    assign i_mul15_atax29_im8_cma_w[0] = i_mul15_atax29_im8_cma_u[0];
    assign i_mul15_atax29_im8_cma_x[0] = i_mul15_atax29_im8_cma_w[0];
    assign i_mul15_atax29_im8_cma_y[0] = i_mul15_atax29_im8_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul15_atax29_im8_cma_a0 <= '{default: '0};
            i_mul15_atax29_im8_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul15_atax29_im8_cma_ena0 == 1'b1)
            begin
                i_mul15_atax29_im8_cma_a0[0] <= i_mul15_atax29_bs1_merged_bit_select_c;
                i_mul15_atax29_im8_cma_c0[0] <= i_mul15_atax29_bs2_merged_bit_select_c;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul15_atax29_im8_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul15_atax29_im8_cma_ena1 == 1'b1)
            begin
                i_mul15_atax29_im8_cma_s[0] <= i_mul15_atax29_im8_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(28), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul15_atax29_im8_cma_delay ( .xin(i_mul15_atax29_im8_cma_s[0]), .xout(i_mul15_atax29_im8_cma_qq), .ena(SE_i_mul15_atax29_im0_cma_backEN[0]), .clk(clock), .aclr(resetn) );
    assign i_mul15_atax29_im8_cma_q = $unsigned(i_mul15_atax29_im8_cma_qq[27:0]);

    // bubble_join_i_mul15_atax29_im8_cma(BITJOIN,482)
    assign bubble_join_i_mul15_atax29_im8_cma_q = i_mul15_atax29_im8_cma_q;

    // bubble_select_i_mul15_atax29_im8_cma(BITSELECT,483)
    assign bubble_select_i_mul15_atax29_im8_cma_b = $unsigned(bubble_out_i_mul15_atax29_im8_cma_data_reg_data_out[27:0]);

    // bubble_select_i_mul15_atax29_im0_cma(BITSELECT,480)
    assign bubble_select_i_mul15_atax29_im0_cma_b = $unsigned(bubble_out_i_mul15_atax29_im0_cma_data_reg_data_out[35:0]);

    // SE_out_bubble_out_i_mul15_atax29_im0_cma_data(STALLENABLE,835)
    // Valid signal propagation
    assign SE_out_bubble_out_i_mul15_atax29_im0_cma_data_V0 = SE_out_bubble_out_i_mul15_atax29_im0_cma_data_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_mul15_atax29_im0_cma_data_backStall = SR_SE_redist9_i_mul15_atax29_im0_cma_q_1_0_backStall | ~ (SE_out_bubble_out_i_mul15_atax29_im0_cma_data_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_mul15_atax29_im0_cma_data_wireValid = bubble_out_i_mul15_atax29_im0_cma_data_reg_valid_out;

    // SR_SE_redist9_i_mul15_atax29_im0_cma_q_1_0(STALLREG,925)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist9_i_mul15_atax29_im0_cma_q_1_0_r_valid <= 1'b0;
            SR_SE_redist9_i_mul15_atax29_im0_cma_q_1_0_r_data0 <= 36'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist9_i_mul15_atax29_im0_cma_q_1_0_r_valid <= SE_redist9_i_mul15_atax29_im0_cma_q_1_0_backStall & (SR_SE_redist9_i_mul15_atax29_im0_cma_q_1_0_r_valid | SR_SE_redist9_i_mul15_atax29_im0_cma_q_1_0_i_valid);

            if (SR_SE_redist9_i_mul15_atax29_im0_cma_q_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist9_i_mul15_atax29_im0_cma_q_1_0_r_data0 <= $unsigned(bubble_select_i_mul15_atax29_im0_cma_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist9_i_mul15_atax29_im0_cma_q_1_0_i_valid = SE_out_bubble_out_i_mul15_atax29_im0_cma_data_V0;
    // Stall signal propagation
    assign SR_SE_redist9_i_mul15_atax29_im0_cma_q_1_0_backStall = SR_SE_redist9_i_mul15_atax29_im0_cma_q_1_0_r_valid | ~ (SR_SE_redist9_i_mul15_atax29_im0_cma_q_1_0_i_valid);

    // Valid
    assign SR_SE_redist9_i_mul15_atax29_im0_cma_q_1_0_V = SR_SE_redist9_i_mul15_atax29_im0_cma_q_1_0_r_valid == 1'b1 ? SR_SE_redist9_i_mul15_atax29_im0_cma_q_1_0_r_valid : SR_SE_redist9_i_mul15_atax29_im0_cma_q_1_0_i_valid;

    assign SR_SE_redist9_i_mul15_atax29_im0_cma_q_1_0_D0 = SR_SE_redist9_i_mul15_atax29_im0_cma_q_1_0_r_valid == 1'b1 ? SR_SE_redist9_i_mul15_atax29_im0_cma_q_1_0_r_data0 : bubble_select_i_mul15_atax29_im0_cma_b;

    // SE_redist9_i_mul15_atax29_im0_cma_q_1_0(STALLENABLE,674)
    // Valid signal propagation
    assign SE_redist9_i_mul15_atax29_im0_cma_q_1_0_V0 = SE_redist9_i_mul15_atax29_im0_cma_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist9_i_mul15_atax29_im0_cma_q_1_0_s_tv_0 = SE_i_mul15_atax29_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_backStall & SE_redist9_i_mul15_atax29_im0_cma_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist9_i_mul15_atax29_im0_cma_q_1_0_backEN = ~ (SE_redist9_i_mul15_atax29_im0_cma_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist9_i_mul15_atax29_im0_cma_q_1_0_v_s_0 = SE_redist9_i_mul15_atax29_im0_cma_q_1_0_backEN & SR_SE_redist9_i_mul15_atax29_im0_cma_q_1_0_V;
    // Backward Stall generation
    assign SE_redist9_i_mul15_atax29_im0_cma_q_1_0_backStall = ~ (SE_redist9_i_mul15_atax29_im0_cma_q_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist9_i_mul15_atax29_im0_cma_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist9_i_mul15_atax29_im0_cma_q_1_0_backEN == 1'b0)
            begin
                SE_redist9_i_mul15_atax29_im0_cma_q_1_0_R_v_0 <= SE_redist9_i_mul15_atax29_im0_cma_q_1_0_R_v_0 & SE_redist9_i_mul15_atax29_im0_cma_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist9_i_mul15_atax29_im0_cma_q_1_0_R_v_0 <= SE_redist9_i_mul15_atax29_im0_cma_q_1_0_v_s_0;
            end

        end
    end

    // SE_i_mul15_atax29_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b(STALLENABLE,652)
    // Valid signal propagation
    assign SE_i_mul15_atax29_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_V0 = SE_i_mul15_atax29_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_wireValid;
    // Backward Stall generation
    assign SE_i_mul15_atax29_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_backStall = SE_i_mul15_atax29_sums_result_add_0_0_p1_of_2_backStall | ~ (SE_i_mul15_atax29_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_mul15_atax29_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_and0 = SE_redist8_i_mul15_atax29_im8_cma_q_1_0_V0;
    assign SE_i_mul15_atax29_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_wireValid = SE_redist9_i_mul15_atax29_im0_cma_q_1_0_V0 & SE_i_mul15_atax29_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_and0;

    // SE_redist8_i_mul15_atax29_im8_cma_q_1_0(STALLENABLE,673)
    // Valid signal propagation
    assign SE_redist8_i_mul15_atax29_im8_cma_q_1_0_V0 = SE_redist8_i_mul15_atax29_im8_cma_q_1_0_R_v_0;
    assign SE_redist8_i_mul15_atax29_im8_cma_q_1_0_V1 = SE_redist8_i_mul15_atax29_im8_cma_q_1_0_R_v_1;
    // Stall signal propagation
    assign SE_redist8_i_mul15_atax29_im8_cma_q_1_0_s_tv_0 = SE_i_mul15_atax29_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_backStall & SE_redist8_i_mul15_atax29_im8_cma_q_1_0_R_v_0;
    assign SE_redist8_i_mul15_atax29_im8_cma_q_1_0_s_tv_1 = SE_redist0_i_mul15_atax29_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backStall & SE_redist8_i_mul15_atax29_im8_cma_q_1_0_R_v_1;
    // Backward Enable generation
    assign SE_redist8_i_mul15_atax29_im8_cma_q_1_0_or0 = SE_redist8_i_mul15_atax29_im8_cma_q_1_0_s_tv_0;
    assign SE_redist8_i_mul15_atax29_im8_cma_q_1_0_backEN = ~ (SE_redist8_i_mul15_atax29_im8_cma_q_1_0_s_tv_1 | SE_redist8_i_mul15_atax29_im8_cma_q_1_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist8_i_mul15_atax29_im8_cma_q_1_0_v_s_0 = SE_redist8_i_mul15_atax29_im8_cma_q_1_0_backEN & SR_SE_redist8_i_mul15_atax29_im8_cma_q_1_0_V;
    // Backward Stall generation
    assign SE_redist8_i_mul15_atax29_im8_cma_q_1_0_backStall = ~ (SE_redist8_i_mul15_atax29_im8_cma_q_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist8_i_mul15_atax29_im8_cma_q_1_0_R_v_0 <= 1'b0;
            SE_redist8_i_mul15_atax29_im8_cma_q_1_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist8_i_mul15_atax29_im8_cma_q_1_0_backEN == 1'b0)
            begin
                SE_redist8_i_mul15_atax29_im8_cma_q_1_0_R_v_0 <= SE_redist8_i_mul15_atax29_im8_cma_q_1_0_R_v_0 & SE_redist8_i_mul15_atax29_im8_cma_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist8_i_mul15_atax29_im8_cma_q_1_0_R_v_0 <= SE_redist8_i_mul15_atax29_im8_cma_q_1_0_v_s_0;
            end

            if (SE_redist8_i_mul15_atax29_im8_cma_q_1_0_backEN == 1'b0)
            begin
                SE_redist8_i_mul15_atax29_im8_cma_q_1_0_R_v_1 <= SE_redist8_i_mul15_atax29_im8_cma_q_1_0_R_v_1 & SE_redist8_i_mul15_atax29_im8_cma_q_1_0_s_tv_1;
            end
            else
            begin
                SE_redist8_i_mul15_atax29_im8_cma_q_1_0_R_v_1 <= SE_redist8_i_mul15_atax29_im8_cma_q_1_0_v_s_0;
            end

        end
    end

    // SR_SE_redist8_i_mul15_atax29_im8_cma_q_1_0(STALLREG,924)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist8_i_mul15_atax29_im8_cma_q_1_0_r_valid <= 1'b0;
            SR_SE_redist8_i_mul15_atax29_im8_cma_q_1_0_r_data0 <= 28'bxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist8_i_mul15_atax29_im8_cma_q_1_0_r_valid <= SE_redist8_i_mul15_atax29_im8_cma_q_1_0_backStall & (SR_SE_redist8_i_mul15_atax29_im8_cma_q_1_0_r_valid | SR_SE_redist8_i_mul15_atax29_im8_cma_q_1_0_i_valid);

            if (SR_SE_redist8_i_mul15_atax29_im8_cma_q_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist8_i_mul15_atax29_im8_cma_q_1_0_r_data0 <= $unsigned(bubble_select_i_mul15_atax29_im8_cma_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist8_i_mul15_atax29_im8_cma_q_1_0_i_valid = SE_out_bubble_out_i_mul15_atax29_im8_cma_data_V0;
    // Stall signal propagation
    assign SR_SE_redist8_i_mul15_atax29_im8_cma_q_1_0_backStall = SR_SE_redist8_i_mul15_atax29_im8_cma_q_1_0_r_valid | ~ (SR_SE_redist8_i_mul15_atax29_im8_cma_q_1_0_i_valid);

    // Valid
    assign SR_SE_redist8_i_mul15_atax29_im8_cma_q_1_0_V = SR_SE_redist8_i_mul15_atax29_im8_cma_q_1_0_r_valid == 1'b1 ? SR_SE_redist8_i_mul15_atax29_im8_cma_q_1_0_r_valid : SR_SE_redist8_i_mul15_atax29_im8_cma_q_1_0_i_valid;

    assign SR_SE_redist8_i_mul15_atax29_im8_cma_q_1_0_D0 = SR_SE_redist8_i_mul15_atax29_im8_cma_q_1_0_r_valid == 1'b1 ? SR_SE_redist8_i_mul15_atax29_im8_cma_q_1_0_r_data0 : bubble_select_i_mul15_atax29_im8_cma_b;

    // SE_out_bubble_out_i_mul15_atax29_im8_cma_data(STALLENABLE,839)
    // Valid signal propagation
    assign SE_out_bubble_out_i_mul15_atax29_im8_cma_data_V0 = SE_out_bubble_out_i_mul15_atax29_im8_cma_data_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_mul15_atax29_im8_cma_data_backStall = SR_SE_redist8_i_mul15_atax29_im8_cma_q_1_0_backStall | ~ (SE_out_bubble_out_i_mul15_atax29_im8_cma_data_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_mul15_atax29_im8_cma_data_wireValid = bubble_out_i_mul15_atax29_im8_cma_data_reg_valid_out;

    // bubble_out_i_mul15_atax29_im8_cma_data_reg(STALLFIFO,910)
    assign bubble_out_i_mul15_atax29_im8_cma_data_reg_valid_in = SE_i_mul15_atax29_im0_cma_V1;
    assign bubble_out_i_mul15_atax29_im8_cma_data_reg_stall_in = SE_out_bubble_out_i_mul15_atax29_im8_cma_data_backStall;
    assign bubble_out_i_mul15_atax29_im8_cma_data_reg_data_in = bubble_join_i_mul15_atax29_im8_cma_q;
    assign bubble_out_i_mul15_atax29_im8_cma_data_reg_valid_in_bitsignaltemp = bubble_out_i_mul15_atax29_im8_cma_data_reg_valid_in[0];
    assign bubble_out_i_mul15_atax29_im8_cma_data_reg_stall_in_bitsignaltemp = bubble_out_i_mul15_atax29_im8_cma_data_reg_stall_in[0];
    assign bubble_out_i_mul15_atax29_im8_cma_data_reg_valid_out[0] = bubble_out_i_mul15_atax29_im8_cma_data_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_mul15_atax29_im8_cma_data_reg_stall_out[0] = bubble_out_i_mul15_atax29_im8_cma_data_reg_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(1),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(1),
        .DATA_WIDTH(28),
        .IMPL("zl_reg")
    ) thebubble_out_i_mul15_atax29_im8_cma_data_reg (
        .valid_in(bubble_out_i_mul15_atax29_im8_cma_data_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_mul15_atax29_im8_cma_data_reg_stall_in_bitsignaltemp),
        .data_in(bubble_join_i_mul15_atax29_im8_cma_q),
        .valid_out(bubble_out_i_mul15_atax29_im8_cma_data_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_mul15_atax29_im8_cma_data_reg_stall_out_bitsignaltemp),
        .data_out(bubble_out_i_mul15_atax29_im8_cma_data_reg_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul15_atax29_im0_cma(CHAINMULTADD,239)@37 + 2
    assign i_mul15_atax29_im0_cma_reset = ~ (resetn);
    assign i_mul15_atax29_im0_cma_ena0 = SE_i_mul15_atax29_im0_cma_backEN[0];
    assign i_mul15_atax29_im0_cma_ena1 = i_mul15_atax29_im0_cma_ena0;
    assign i_mul15_atax29_im0_cma_p[0] = i_mul15_atax29_im0_cma_a0[0] * i_mul15_atax29_im0_cma_c0[0];
    assign i_mul15_atax29_im0_cma_u[0] = i_mul15_atax29_im0_cma_p[0][35:0];
    assign i_mul15_atax29_im0_cma_w[0] = i_mul15_atax29_im0_cma_u[0];
    assign i_mul15_atax29_im0_cma_x[0] = i_mul15_atax29_im0_cma_w[0];
    assign i_mul15_atax29_im0_cma_y[0] = i_mul15_atax29_im0_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul15_atax29_im0_cma_a0 <= '{default: '0};
            i_mul15_atax29_im0_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul15_atax29_im0_cma_ena0 == 1'b1)
            begin
                i_mul15_atax29_im0_cma_a0[0] <= i_mul15_atax29_bs1_merged_bit_select_b;
                i_mul15_atax29_im0_cma_c0[0] <= i_mul15_atax29_bs2_merged_bit_select_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul15_atax29_im0_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul15_atax29_im0_cma_ena1 == 1'b1)
            begin
                i_mul15_atax29_im0_cma_s[0] <= i_mul15_atax29_im0_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul15_atax29_im0_cma_delay ( .xin(i_mul15_atax29_im0_cma_s[0]), .xout(i_mul15_atax29_im0_cma_qq), .ena(SE_i_mul15_atax29_im0_cma_backEN[0]), .clk(clock), .aclr(resetn) );
    assign i_mul15_atax29_im0_cma_q = $unsigned(i_mul15_atax29_im0_cma_qq[35:0]);

    // bubble_join_i_mul15_atax29_im0_cma(BITJOIN,479)
    assign bubble_join_i_mul15_atax29_im0_cma_q = i_mul15_atax29_im0_cma_q;

    // bubble_out_i_mul15_atax29_im0_cma_data_reg(STALLFIFO,909)
    assign bubble_out_i_mul15_atax29_im0_cma_data_reg_valid_in = SE_i_mul15_atax29_im0_cma_V0;
    assign bubble_out_i_mul15_atax29_im0_cma_data_reg_stall_in = SE_out_bubble_out_i_mul15_atax29_im0_cma_data_backStall;
    assign bubble_out_i_mul15_atax29_im0_cma_data_reg_data_in = bubble_join_i_mul15_atax29_im0_cma_q;
    assign bubble_out_i_mul15_atax29_im0_cma_data_reg_valid_in_bitsignaltemp = bubble_out_i_mul15_atax29_im0_cma_data_reg_valid_in[0];
    assign bubble_out_i_mul15_atax29_im0_cma_data_reg_stall_in_bitsignaltemp = bubble_out_i_mul15_atax29_im0_cma_data_reg_stall_in[0];
    assign bubble_out_i_mul15_atax29_im0_cma_data_reg_valid_out[0] = bubble_out_i_mul15_atax29_im0_cma_data_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_mul15_atax29_im0_cma_data_reg_stall_out[0] = bubble_out_i_mul15_atax29_im0_cma_data_reg_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(1),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(1),
        .DATA_WIDTH(36),
        .IMPL("zl_reg")
    ) thebubble_out_i_mul15_atax29_im0_cma_data_reg (
        .valid_in(bubble_out_i_mul15_atax29_im0_cma_data_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_mul15_atax29_im0_cma_data_reg_stall_in_bitsignaltemp),
        .data_in(bubble_join_i_mul15_atax29_im0_cma_q),
        .valid_out(bubble_out_i_mul15_atax29_im0_cma_data_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_mul15_atax29_im0_cma_data_reg_stall_out_bitsignaltemp),
        .data_out(bubble_out_i_mul15_atax29_im0_cma_data_reg_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_mul15_atax29_im0_cma(STALLENABLE,632)
    // Valid signal propagation
    assign SE_i_mul15_atax29_im0_cma_V0 = SE_i_mul15_atax29_im0_cma_R_v_0;
    assign SE_i_mul15_atax29_im0_cma_V1 = SE_i_mul15_atax29_im0_cma_R_v_1;
    assign SE_i_mul15_atax29_im0_cma_V2 = SE_i_mul15_atax29_im0_cma_R_v_2;
    // Stall signal propagation
    assign SE_i_mul15_atax29_im0_cma_s_tv_0 = bubble_out_i_mul15_atax29_im0_cma_data_reg_stall_out & SE_i_mul15_atax29_im0_cma_R_v_0;
    assign SE_i_mul15_atax29_im0_cma_s_tv_1 = bubble_out_i_mul15_atax29_im8_cma_data_reg_stall_out & SE_i_mul15_atax29_im0_cma_R_v_1;
    assign SE_i_mul15_atax29_im0_cma_s_tv_2 = bubble_out_i_mul15_atax29_ma3_cma_data_reg_stall_out & SE_i_mul15_atax29_im0_cma_R_v_2;
    // Backward Enable generation
    assign SE_i_mul15_atax29_im0_cma_or0 = SE_i_mul15_atax29_im0_cma_s_tv_0;
    assign SE_i_mul15_atax29_im0_cma_or1 = SE_i_mul15_atax29_im0_cma_s_tv_1 | SE_i_mul15_atax29_im0_cma_or0;
    assign SE_i_mul15_atax29_im0_cma_backEN = ~ (SE_i_mul15_atax29_im0_cma_s_tv_2 | SE_i_mul15_atax29_im0_cma_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mul15_atax29_im0_cma_and0 = SE_out_i_llvm_fpga_mem_unnamed_atax17_atax26_V0 & SE_i_mul15_atax29_im0_cma_backEN;
    assign SE_i_mul15_atax29_im0_cma_v_s_0 = SE_out_redist16_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_32_fifo_V0 & SE_i_mul15_atax29_im0_cma_and0;
    // Backward Stall generation
    assign SE_i_mul15_atax29_im0_cma_backStall = ~ (SE_i_mul15_atax29_im0_cma_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mul15_atax29_im0_cma_R_s_0 <= 1'b0;
            SE_i_mul15_atax29_im0_cma_R_v_0 <= 1'b0;
            SE_i_mul15_atax29_im0_cma_R_v_1 <= 1'b0;
            SE_i_mul15_atax29_im0_cma_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_i_mul15_atax29_im0_cma_backEN == 1'b1)
            begin
                SE_i_mul15_atax29_im0_cma_R_s_0 <= SE_i_mul15_atax29_im0_cma_v_s_0;
            end

            if (SE_i_mul15_atax29_im0_cma_backEN == 1'b0)
            begin
                SE_i_mul15_atax29_im0_cma_R_v_0 <= SE_i_mul15_atax29_im0_cma_R_v_0 & SE_i_mul15_atax29_im0_cma_s_tv_0;
            end
            else
            begin
                SE_i_mul15_atax29_im0_cma_R_v_0 <= SE_i_mul15_atax29_im0_cma_R_s_0;
            end

            if (SE_i_mul15_atax29_im0_cma_backEN == 1'b0)
            begin
                SE_i_mul15_atax29_im0_cma_R_v_1 <= SE_i_mul15_atax29_im0_cma_R_v_1 & SE_i_mul15_atax29_im0_cma_s_tv_1;
            end
            else
            begin
                SE_i_mul15_atax29_im0_cma_R_v_1 <= SE_i_mul15_atax29_im0_cma_R_s_0;
            end

            if (SE_i_mul15_atax29_im0_cma_backEN == 1'b0)
            begin
                SE_i_mul15_atax29_im0_cma_R_v_2 <= SE_i_mul15_atax29_im0_cma_R_v_2 & SE_i_mul15_atax29_im0_cma_s_tv_2;
            end
            else
            begin
                SE_i_mul15_atax29_im0_cma_R_v_2 <= SE_i_mul15_atax29_im0_cma_R_s_0;
            end

        end
    end

    // bubble_out_i_mul15_atax29_ma3_cma_data_reg(STALLFIFO,911)
    assign bubble_out_i_mul15_atax29_ma3_cma_data_reg_valid_in = SE_i_mul15_atax29_im0_cma_V2;
    assign bubble_out_i_mul15_atax29_ma3_cma_data_reg_stall_in = SE_out_bubble_out_i_mul15_atax29_ma3_cma_data_backStall;
    assign bubble_out_i_mul15_atax29_ma3_cma_data_reg_data_in = bubble_join_i_mul15_atax29_ma3_cma_q;
    assign bubble_out_i_mul15_atax29_ma3_cma_data_reg_valid_in_bitsignaltemp = bubble_out_i_mul15_atax29_ma3_cma_data_reg_valid_in[0];
    assign bubble_out_i_mul15_atax29_ma3_cma_data_reg_stall_in_bitsignaltemp = bubble_out_i_mul15_atax29_ma3_cma_data_reg_stall_in[0];
    assign bubble_out_i_mul15_atax29_ma3_cma_data_reg_valid_out[0] = bubble_out_i_mul15_atax29_ma3_cma_data_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_mul15_atax29_ma3_cma_data_reg_stall_out[0] = bubble_out_i_mul15_atax29_ma3_cma_data_reg_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(1),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(1),
        .DATA_WIDTH(33),
        .IMPL("zl_reg")
    ) thebubble_out_i_mul15_atax29_ma3_cma_data_reg (
        .valid_in(bubble_out_i_mul15_atax29_ma3_cma_data_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_mul15_atax29_ma3_cma_data_reg_stall_in_bitsignaltemp),
        .data_in(bubble_join_i_mul15_atax29_ma3_cma_q),
        .valid_out(bubble_out_i_mul15_atax29_ma3_cma_data_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_mul15_atax29_ma3_cma_data_reg_stall_out_bitsignaltemp),
        .data_out(bubble_out_i_mul15_atax29_ma3_cma_data_reg_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_select_i_mul15_atax29_ma3_cma(BITSELECT,486)
    assign bubble_select_i_mul15_atax29_ma3_cma_b = $unsigned(bubble_out_i_mul15_atax29_ma3_cma_data_reg_data_out[32:0]);

    // SE_out_bubble_out_i_mul15_atax29_ma3_cma_data(STALLENABLE,843)
    // Valid signal propagation
    assign SE_out_bubble_out_i_mul15_atax29_ma3_cma_data_V0 = SE_out_bubble_out_i_mul15_atax29_ma3_cma_data_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_mul15_atax29_ma3_cma_data_backStall = SR_SE_redist7_i_mul15_atax29_ma3_cma_q_1_0_backStall | ~ (SE_out_bubble_out_i_mul15_atax29_ma3_cma_data_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_mul15_atax29_ma3_cma_data_wireValid = bubble_out_i_mul15_atax29_ma3_cma_data_reg_valid_out;

    // SR_SE_redist7_i_mul15_atax29_ma3_cma_q_1_0(STALLREG,926)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist7_i_mul15_atax29_ma3_cma_q_1_0_r_valid <= 1'b0;
            SR_SE_redist7_i_mul15_atax29_ma3_cma_q_1_0_r_data0 <= 33'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist7_i_mul15_atax29_ma3_cma_q_1_0_r_valid <= SE_redist7_i_mul15_atax29_ma3_cma_q_1_0_backStall & (SR_SE_redist7_i_mul15_atax29_ma3_cma_q_1_0_r_valid | SR_SE_redist7_i_mul15_atax29_ma3_cma_q_1_0_i_valid);

            if (SR_SE_redist7_i_mul15_atax29_ma3_cma_q_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist7_i_mul15_atax29_ma3_cma_q_1_0_r_data0 <= $unsigned(bubble_select_i_mul15_atax29_ma3_cma_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist7_i_mul15_atax29_ma3_cma_q_1_0_i_valid = SE_out_bubble_out_i_mul15_atax29_ma3_cma_data_V0;
    // Stall signal propagation
    assign SR_SE_redist7_i_mul15_atax29_ma3_cma_q_1_0_backStall = SR_SE_redist7_i_mul15_atax29_ma3_cma_q_1_0_r_valid | ~ (SR_SE_redist7_i_mul15_atax29_ma3_cma_q_1_0_i_valid);

    // Valid
    assign SR_SE_redist7_i_mul15_atax29_ma3_cma_q_1_0_V = SR_SE_redist7_i_mul15_atax29_ma3_cma_q_1_0_r_valid == 1'b1 ? SR_SE_redist7_i_mul15_atax29_ma3_cma_q_1_0_r_valid : SR_SE_redist7_i_mul15_atax29_ma3_cma_q_1_0_i_valid;

    assign SR_SE_redist7_i_mul15_atax29_ma3_cma_q_1_0_D0 = SR_SE_redist7_i_mul15_atax29_ma3_cma_q_1_0_r_valid == 1'b1 ? SR_SE_redist7_i_mul15_atax29_ma3_cma_q_1_0_r_data0 : bubble_select_i_mul15_atax29_ma3_cma_b;

    // redist7_i_mul15_atax29_ma3_cma_q_1_0(REG,360)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_mul15_atax29_ma3_cma_q_1_0_q <= $unsigned(33'b000000000000000000000000000000000);
        end
        else if (SE_redist7_i_mul15_atax29_ma3_cma_q_1_0_backEN == 1'b1)
        begin
            redist7_i_mul15_atax29_ma3_cma_q_1_0_q <= $unsigned(SR_SE_redist7_i_mul15_atax29_ma3_cma_q_1_0_D0);
        end
    end

    // i_mul15_atax29_sums_align_1(BITSHIFT,236)@40
    assign i_mul15_atax29_sums_align_1_qint = { redist7_i_mul15_atax29_ma3_cma_q_1_0_q, 18'b000000000000000000 };
    assign i_mul15_atax29_sums_align_1_q = i_mul15_atax29_sums_align_1_qint[50:0];

    // i_mul15_atax29_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b(BITJOIN,301)@40
    assign i_mul15_atax29_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q = {i_mul15_atax29_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b, i_mul15_atax29_sums_align_1_q};

    // redist8_i_mul15_atax29_im8_cma_q_1_0(REG,361)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_mul15_atax29_im8_cma_q_1_0_q <= $unsigned(28'b0000000000000000000000000000);
        end
        else if (SE_redist8_i_mul15_atax29_im8_cma_q_1_0_backEN == 1'b1)
        begin
            redist8_i_mul15_atax29_im8_cma_q_1_0_q <= $unsigned(SR_SE_redist8_i_mul15_atax29_im8_cma_q_1_0_D0);
        end
    end

    // i_mul15_atax29_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select(BITSELECT,308)@40
    assign i_mul15_atax29_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b = $unsigned(redist8_i_mul15_atax29_im8_cma_q_1_0_q[23:0]);
    assign i_mul15_atax29_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c = $unsigned(redist8_i_mul15_atax29_im8_cma_q_1_0_q[27:24]);

    // redist9_i_mul15_atax29_im0_cma_q_1_0(REG,362)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_mul15_atax29_im0_cma_q_1_0_q <= $unsigned(36'b000000000000000000000000000000000000);
        end
        else if (SE_redist9_i_mul15_atax29_im0_cma_q_1_0_backEN == 1'b1)
        begin
            redist9_i_mul15_atax29_im0_cma_q_1_0_q <= $unsigned(SR_SE_redist9_i_mul15_atax29_im0_cma_q_1_0_D0);
        end
    end

    // i_mul15_atax29_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b(BITJOIN,295)@40
    assign i_mul15_atax29_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q = {i_mul15_atax29_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b, redist9_i_mul15_atax29_im0_cma_q_1_0_q};

    // i_mul15_atax29_sums_result_add_0_0_p1_of_2(ADD,266)@40 + 1
    assign i_mul15_atax29_sums_result_add_0_0_p1_of_2_a = {1'b0, i_mul15_atax29_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q};
    assign i_mul15_atax29_sums_result_add_0_0_p1_of_2_b = {1'b0, i_mul15_atax29_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul15_atax29_sums_result_add_0_0_p1_of_2_o <= 61'b0;
        end
        else if (SE_i_mul15_atax29_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            i_mul15_atax29_sums_result_add_0_0_p1_of_2_o <= $unsigned(i_mul15_atax29_sums_result_add_0_0_p1_of_2_a) + $unsigned(i_mul15_atax29_sums_result_add_0_0_p1_of_2_b);
        end
    end
    assign i_mul15_atax29_sums_result_add_0_0_p1_of_2_c[0] = i_mul15_atax29_sums_result_add_0_0_p1_of_2_o[60];
    assign i_mul15_atax29_sums_result_add_0_0_p1_of_2_q = i_mul15_atax29_sums_result_add_0_0_p1_of_2_o[59:0];

    // i_mul15_atax29_sums_result_add_0_0_UpperBits_for_b(CONSTANT,263)
    assign i_mul15_atax29_sums_result_add_0_0_UpperBits_for_b_q = $unsigned(14'b00000000000000);

    // i_mul15_atax29_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select(BITSELECT,309)
    assign i_mul15_atax29_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b = $unsigned(i_mul15_atax29_sums_result_add_0_0_UpperBits_for_b_q[8:0]);
    assign i_mul15_atax29_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c = $unsigned(i_mul15_atax29_sums_result_add_0_0_UpperBits_for_b_q[13:9]);

    // redist0_i_mul15_atax29_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0(REG,353)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_mul15_atax29_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_q <= $unsigned(4'b0000);
        end
        else if (SE_redist0_i_mul15_atax29_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backEN == 1'b1)
        begin
            redist0_i_mul15_atax29_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_q <= $unsigned(i_mul15_atax29_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c);
        end
    end

    // i_mul15_atax29_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c(BITJOIN,298)@41
    assign i_mul15_atax29_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist0_i_mul15_atax29_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_q};

    // SE_i_mul15_atax29_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select(STALLENABLE,660)
    // Valid signal propagation
    assign SE_i_mul15_atax29_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_V0 = 1'b1;
    assign SE_i_mul15_atax29_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_V1 = 1'b1;

    // SE_redist0_i_mul15_atax29_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0(STALLENABLE,665)
    // Valid signal propagation
    assign SE_redist0_i_mul15_atax29_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_V0 = SE_redist0_i_mul15_atax29_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist0_i_mul15_atax29_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_s_tv_0 = SR_SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_backStall & SE_redist0_i_mul15_atax29_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist0_i_mul15_atax29_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backEN = ~ (SE_redist0_i_mul15_atax29_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_i_mul15_atax29_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_v_s_0 = SE_redist0_i_mul15_atax29_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backEN & SE_redist8_i_mul15_atax29_im8_cma_q_1_0_V1;
    // Backward Stall generation
    assign SE_redist0_i_mul15_atax29_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backStall = ~ (SE_redist0_i_mul15_atax29_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_i_mul15_atax29_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_i_mul15_atax29_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backEN == 1'b0)
            begin
                SE_redist0_i_mul15_atax29_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_R_v_0 <= SE_redist0_i_mul15_atax29_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_R_v_0 & SE_redist0_i_mul15_atax29_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_s_tv_0;
            end
            else
            begin
                SE_redist0_i_mul15_atax29_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_R_v_0 <= SE_redist0_i_mul15_atax29_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_v_s_0;
            end

        end
    end

    // SR_SE_redist4_i_mul15_atax29_sums_result_add_0_0_p1_of_2_q_1_0(STALLREG,928)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist4_i_mul15_atax29_sums_result_add_0_0_p1_of_2_q_1_0_r_valid <= 1'b0;
            SR_SE_redist4_i_mul15_atax29_sums_result_add_0_0_p1_of_2_q_1_0_r_data0 <= 60'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist4_i_mul15_atax29_sums_result_add_0_0_p1_of_2_q_1_0_r_valid <= SE_redist4_i_mul15_atax29_sums_result_add_0_0_p1_of_2_q_1_0_backStall & (SR_SE_redist4_i_mul15_atax29_sums_result_add_0_0_p1_of_2_q_1_0_r_valid | SR_SE_redist4_i_mul15_atax29_sums_result_add_0_0_p1_of_2_q_1_0_i_valid);

            if (SR_SE_redist4_i_mul15_atax29_sums_result_add_0_0_p1_of_2_q_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist4_i_mul15_atax29_sums_result_add_0_0_p1_of_2_q_1_0_r_data0 <= $unsigned(i_mul15_atax29_sums_result_add_0_0_p1_of_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist4_i_mul15_atax29_sums_result_add_0_0_p1_of_2_q_1_0_i_valid = SE_i_mul15_atax29_sums_result_add_0_0_p1_of_2_V1;
    // Stall signal propagation
    assign SR_SE_redist4_i_mul15_atax29_sums_result_add_0_0_p1_of_2_q_1_0_backStall = SR_SE_redist4_i_mul15_atax29_sums_result_add_0_0_p1_of_2_q_1_0_r_valid | ~ (SR_SE_redist4_i_mul15_atax29_sums_result_add_0_0_p1_of_2_q_1_0_i_valid);

    // Valid
    assign SR_SE_redist4_i_mul15_atax29_sums_result_add_0_0_p1_of_2_q_1_0_V = SR_SE_redist4_i_mul15_atax29_sums_result_add_0_0_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist4_i_mul15_atax29_sums_result_add_0_0_p1_of_2_q_1_0_r_valid : SR_SE_redist4_i_mul15_atax29_sums_result_add_0_0_p1_of_2_q_1_0_i_valid;

    assign SR_SE_redist4_i_mul15_atax29_sums_result_add_0_0_p1_of_2_q_1_0_D0 = SR_SE_redist4_i_mul15_atax29_sums_result_add_0_0_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist4_i_mul15_atax29_sums_result_add_0_0_p1_of_2_q_1_0_r_data0 : i_mul15_atax29_sums_result_add_0_0_p1_of_2_q;

    // SE_i_mul15_atax29_sums_result_add_0_0_p1_of_2(STALLENABLE,641)
    // Valid signal propagation
    assign SE_i_mul15_atax29_sums_result_add_0_0_p1_of_2_V0 = SE_i_mul15_atax29_sums_result_add_0_0_p1_of_2_R_v_0;
    assign SE_i_mul15_atax29_sums_result_add_0_0_p1_of_2_V1 = SE_i_mul15_atax29_sums_result_add_0_0_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_mul15_atax29_sums_result_add_0_0_p1_of_2_s_tv_0 = SR_SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_backStall & SE_i_mul15_atax29_sums_result_add_0_0_p1_of_2_R_v_0;
    assign SE_i_mul15_atax29_sums_result_add_0_0_p1_of_2_s_tv_1 = SR_SE_redist4_i_mul15_atax29_sums_result_add_0_0_p1_of_2_q_1_0_backStall & SE_i_mul15_atax29_sums_result_add_0_0_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_mul15_atax29_sums_result_add_0_0_p1_of_2_or0 = SE_i_mul15_atax29_sums_result_add_0_0_p1_of_2_s_tv_0;
    assign SE_i_mul15_atax29_sums_result_add_0_0_p1_of_2_backEN = ~ (SE_i_mul15_atax29_sums_result_add_0_0_p1_of_2_s_tv_1 | SE_i_mul15_atax29_sums_result_add_0_0_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mul15_atax29_sums_result_add_0_0_p1_of_2_and0 = SE_i_mul15_atax29_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_V0 & SE_i_mul15_atax29_sums_result_add_0_0_p1_of_2_backEN;
    assign SE_i_mul15_atax29_sums_result_add_0_0_p1_of_2_v_s_0 = SE_i_mul15_atax29_sums_align_1_V0 & SE_i_mul15_atax29_sums_result_add_0_0_p1_of_2_and0;
    // Backward Stall generation
    assign SE_i_mul15_atax29_sums_result_add_0_0_p1_of_2_backStall = ~ (SE_i_mul15_atax29_sums_result_add_0_0_p1_of_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mul15_atax29_sums_result_add_0_0_p1_of_2_R_v_0 <= 1'b0;
            SE_i_mul15_atax29_sums_result_add_0_0_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_mul15_atax29_sums_result_add_0_0_p1_of_2_backEN == 1'b0)
            begin
                SE_i_mul15_atax29_sums_result_add_0_0_p1_of_2_R_v_0 <= SE_i_mul15_atax29_sums_result_add_0_0_p1_of_2_R_v_0 & SE_i_mul15_atax29_sums_result_add_0_0_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_mul15_atax29_sums_result_add_0_0_p1_of_2_R_v_0 <= SE_i_mul15_atax29_sums_result_add_0_0_p1_of_2_v_s_0;
            end

            if (SE_i_mul15_atax29_sums_result_add_0_0_p1_of_2_backEN == 1'b0)
            begin
                SE_i_mul15_atax29_sums_result_add_0_0_p1_of_2_R_v_1 <= SE_i_mul15_atax29_sums_result_add_0_0_p1_of_2_R_v_1 & SE_i_mul15_atax29_sums_result_add_0_0_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_mul15_atax29_sums_result_add_0_0_p1_of_2_R_v_1 <= SE_i_mul15_atax29_sums_result_add_0_0_p1_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2(STALLREG,927)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_r_data0 <= 5'bxxxxx;
            SR_SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_r_data1 <= 5'bxxxxx;
            SR_SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_r_valid <= SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_backStall & (SR_SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_r_valid | SR_SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_i_valid);

            if (SR_SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_r_data0 <= $unsigned(i_mul15_atax29_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_r_data1 <= $unsigned(i_mul15_atax29_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c);
                SR_SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_r_data2 <= $unsigned(i_mul15_atax29_sums_result_add_0_0_p1_of_2_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_and0 = SE_i_mul15_atax29_sums_result_add_0_0_p1_of_2_V0;
    assign SR_SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_and1 = SE_redist0_i_mul15_atax29_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_V0 & SR_SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_and0;
    assign SR_SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_i_valid = SE_i_mul15_atax29_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_V0 & SR_SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_and1;
    // Stall signal propagation
    assign SR_SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_backStall = SR_SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_r_valid | ~ (SR_SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_V = SR_SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_r_valid : SR_SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_D0 = SR_SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_r_data0 : i_mul15_atax29_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q;
    // Data1
    assign SR_SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_D1 = SR_SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_r_data1 : i_mul15_atax29_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c;
    // Data2
    assign SR_SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_D2 = SR_SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_r_data2 : i_mul15_atax29_sums_result_add_0_0_p1_of_2_c;

    // i_mul15_atax29_sums_result_add_0_0_p2_of_2(ADD,267)@41 + 1
    assign i_mul15_atax29_sums_result_add_0_0_p2_of_2_cin = SR_SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_D2;
    assign i_mul15_atax29_sums_result_add_0_0_p2_of_2_a = { {1'b0, SR_SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_D0}, 1'b1 };
    assign i_mul15_atax29_sums_result_add_0_0_p2_of_2_b = { {1'b0, SR_SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_D1}, i_mul15_atax29_sums_result_add_0_0_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul15_atax29_sums_result_add_0_0_p2_of_2_o <= 7'b0;
        end
        else if (SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_backEN == 1'b1)
        begin
            i_mul15_atax29_sums_result_add_0_0_p2_of_2_o <= $unsigned(i_mul15_atax29_sums_result_add_0_0_p2_of_2_a) + $unsigned(i_mul15_atax29_sums_result_add_0_0_p2_of_2_b);
        end
    end
    assign i_mul15_atax29_sums_result_add_0_0_p2_of_2_q = i_mul15_atax29_sums_result_add_0_0_p2_of_2_o[5:1];

    // redist4_i_mul15_atax29_sums_result_add_0_0_p1_of_2_q_1_0(REG,357)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_mul15_atax29_sums_result_add_0_0_p1_of_2_q_1_0_q <= $unsigned(60'b000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist4_i_mul15_atax29_sums_result_add_0_0_p1_of_2_q_1_0_backEN == 1'b1)
        begin
            redist4_i_mul15_atax29_sums_result_add_0_0_p1_of_2_q_1_0_q <= $unsigned(SR_SE_redist4_i_mul15_atax29_sums_result_add_0_0_p1_of_2_q_1_0_D0);
        end
    end

    // i_mul15_atax29_sums_result_add_0_0_BitJoin_for_q(BITJOIN,268)@42
    assign i_mul15_atax29_sums_result_add_0_0_BitJoin_for_q_q = {i_mul15_atax29_sums_result_add_0_0_p2_of_2_q, redist4_i_mul15_atax29_sums_result_add_0_0_p1_of_2_q_1_0_q};

    // bgTrunc_i_mul15_atax29_sel_x(BITSELECT,7)@42
    assign bgTrunc_i_mul15_atax29_sel_x_in = i_mul15_atax29_sums_result_add_0_0_BitJoin_for_q_q[63:0];
    assign bgTrunc_i_mul15_atax29_sel_x_b = bgTrunc_i_mul15_atax29_sel_x_in[31:0];

    // i_add16_atax30(ADD,57)@42
    assign i_add16_atax30_a = {1'b0, bgTrunc_i_mul15_atax29_sel_x_b};
    assign i_add16_atax30_b = {1'b0, bubble_select_i_llvm_fpga_mem_unnamed_atax15_atax16_b};
    assign i_add16_atax30_o = $unsigned(i_add16_atax30_a) + $unsigned(i_add16_atax30_b);
    assign i_add16_atax30_q = i_add16_atax30_o[32:0];

    // bgTrunc_i_add16_atax30_sel_x(BITSELECT,4)@42
    assign bgTrunc_i_add16_atax30_sel_x_b = i_add16_atax30_q[31:0];

    // bubble_join_redist26_i_first_cleanup_xor_atax2_q_37_fifo(BITJOIN,515)
    assign bubble_join_redist26_i_first_cleanup_xor_atax2_q_37_fifo_q = redist26_i_first_cleanup_xor_atax2_q_37_fifo_data_out;

    // bubble_select_redist26_i_first_cleanup_xor_atax2_q_37_fifo(BITSELECT,516)
    assign bubble_select_redist26_i_first_cleanup_xor_atax2_q_37_fifo_b = $unsigned(bubble_join_redist26_i_first_cleanup_xor_atax2_q_37_fifo_q[0:0]);

    // bubble_join_redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo(BITJOIN,506)
    assign bubble_join_redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_q = redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_data_out;

    // bubble_select_redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo(BITSELECT,507)
    assign bubble_select_redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_b = $unsigned(bubble_join_redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_q[0:0]);

    // bubble_join_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo(BITJOIN,521)
    assign bubble_join_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_q = redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_data_out;

    // bubble_select_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo(BITSELECT,522)
    assign bubble_select_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_b = $unsigned(bubble_join_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_q[63:0]);

    // SE_out_redist26_i_first_cleanup_xor_atax2_q_37_fifo(STALLENABLE,719)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist26_i_first_cleanup_xor_atax2_q_37_fifo_fromReg0 <= '0;
            SE_out_redist26_i_first_cleanup_xor_atax2_q_37_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist26_i_first_cleanup_xor_atax2_q_37_fifo_fromReg0 <= SE_out_redist26_i_first_cleanup_xor_atax2_q_37_fifo_toReg0;
            // Successor 1
            SE_out_redist26_i_first_cleanup_xor_atax2_q_37_fifo_fromReg1 <= SE_out_redist26_i_first_cleanup_xor_atax2_q_37_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist26_i_first_cleanup_xor_atax2_q_37_fifo_consumed0 = (~ (SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_backStall) & SE_out_redist26_i_first_cleanup_xor_atax2_q_37_fifo_wireValid) | SE_out_redist26_i_first_cleanup_xor_atax2_q_37_fifo_fromReg0;
    assign SE_out_redist26_i_first_cleanup_xor_atax2_q_37_fifo_consumed1 = (~ (redist27_i_first_cleanup_xor_atax2_q_65_fifo_stall_out) & SE_out_redist26_i_first_cleanup_xor_atax2_q_37_fifo_wireValid) | SE_out_redist26_i_first_cleanup_xor_atax2_q_37_fifo_fromReg1;
    // Consuming
    assign SE_out_redist26_i_first_cleanup_xor_atax2_q_37_fifo_StallValid = SE_out_redist26_i_first_cleanup_xor_atax2_q_37_fifo_backStall & SE_out_redist26_i_first_cleanup_xor_atax2_q_37_fifo_wireValid;
    assign SE_out_redist26_i_first_cleanup_xor_atax2_q_37_fifo_toReg0 = SE_out_redist26_i_first_cleanup_xor_atax2_q_37_fifo_StallValid & SE_out_redist26_i_first_cleanup_xor_atax2_q_37_fifo_consumed0;
    assign SE_out_redist26_i_first_cleanup_xor_atax2_q_37_fifo_toReg1 = SE_out_redist26_i_first_cleanup_xor_atax2_q_37_fifo_StallValid & SE_out_redist26_i_first_cleanup_xor_atax2_q_37_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist26_i_first_cleanup_xor_atax2_q_37_fifo_or0 = SE_out_redist26_i_first_cleanup_xor_atax2_q_37_fifo_consumed0;
    assign SE_out_redist26_i_first_cleanup_xor_atax2_q_37_fifo_wireStall = ~ (SE_out_redist26_i_first_cleanup_xor_atax2_q_37_fifo_consumed1 & SE_out_redist26_i_first_cleanup_xor_atax2_q_37_fifo_or0);
    assign SE_out_redist26_i_first_cleanup_xor_atax2_q_37_fifo_backStall = SE_out_redist26_i_first_cleanup_xor_atax2_q_37_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist26_i_first_cleanup_xor_atax2_q_37_fifo_V0 = SE_out_redist26_i_first_cleanup_xor_atax2_q_37_fifo_wireValid & ~ (SE_out_redist26_i_first_cleanup_xor_atax2_q_37_fifo_fromReg0);
    assign SE_out_redist26_i_first_cleanup_xor_atax2_q_37_fifo_V1 = SE_out_redist26_i_first_cleanup_xor_atax2_q_37_fifo_wireValid & ~ (SE_out_redist26_i_first_cleanup_xor_atax2_q_37_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist26_i_first_cleanup_xor_atax2_q_37_fifo_wireValid = redist26_i_first_cleanup_xor_atax2_q_37_fifo_valid_out;

    // SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo(STALLENABLE,697)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_fromReg0 <= '0;
            SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_fromReg0 <= SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_toReg0;
            // Successor 1
            SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_fromReg1 <= SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_consumed0 = (~ (SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_backStall) & SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_wireValid) | SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_fromReg0;
    assign SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_consumed1 = (~ (redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_68_fifo_stall_out) & SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_wireValid) | SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_fromReg1;
    // Consuming
    assign SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_StallValid = SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_backStall & SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_wireValid;
    assign SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_toReg0 = SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_StallValid & SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_consumed0;
    assign SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_toReg1 = SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_StallValid & SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_or0 = SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_consumed0;
    assign SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_wireStall = ~ (SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_consumed1 & SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_or0);
    assign SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_backStall = SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_V0 = SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_wireValid & ~ (SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_fromReg0);
    assign SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_V1 = SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_wireValid & ~ (SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_wireValid = redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_valid_out;

    // SE_redist4_i_mul15_atax29_sums_result_add_0_0_p1_of_2_q_1_0(STALLENABLE,669)
    // Valid signal propagation
    assign SE_redist4_i_mul15_atax29_sums_result_add_0_0_p1_of_2_q_1_0_V0 = SE_redist4_i_mul15_atax29_sums_result_add_0_0_p1_of_2_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist4_i_mul15_atax29_sums_result_add_0_0_p1_of_2_q_1_0_s_tv_0 = SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_backStall & SE_redist4_i_mul15_atax29_sums_result_add_0_0_p1_of_2_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist4_i_mul15_atax29_sums_result_add_0_0_p1_of_2_q_1_0_backEN = ~ (SE_redist4_i_mul15_atax29_sums_result_add_0_0_p1_of_2_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist4_i_mul15_atax29_sums_result_add_0_0_p1_of_2_q_1_0_v_s_0 = SE_redist4_i_mul15_atax29_sums_result_add_0_0_p1_of_2_q_1_0_backEN & SR_SE_redist4_i_mul15_atax29_sums_result_add_0_0_p1_of_2_q_1_0_V;
    // Backward Stall generation
    assign SE_redist4_i_mul15_atax29_sums_result_add_0_0_p1_of_2_q_1_0_backStall = ~ (SE_redist4_i_mul15_atax29_sums_result_add_0_0_p1_of_2_q_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist4_i_mul15_atax29_sums_result_add_0_0_p1_of_2_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist4_i_mul15_atax29_sums_result_add_0_0_p1_of_2_q_1_0_backEN == 1'b0)
            begin
                SE_redist4_i_mul15_atax29_sums_result_add_0_0_p1_of_2_q_1_0_R_v_0 <= SE_redist4_i_mul15_atax29_sums_result_add_0_0_p1_of_2_q_1_0_R_v_0 & SE_redist4_i_mul15_atax29_sums_result_add_0_0_p1_of_2_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist4_i_mul15_atax29_sums_result_add_0_0_p1_of_2_q_1_0_R_v_0 <= SE_redist4_i_mul15_atax29_sums_result_add_0_0_p1_of_2_q_1_0_v_s_0;
            end

        end
    end

    // SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2(STALLENABLE,642)
    // Valid signal propagation
    assign SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_V0 = SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_s_tv_0 = SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_backStall & SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_backEN = ~ (SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_v_s_0 = SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_backEN & SR_SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_backStall = ~ (SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_backEN == 1'b0)
            begin
                SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_R_v_0 <= SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_R_v_0 & SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_R_v_0 <= SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_v_s_0;
            end

        end
    end

    // i_mptr_bitcast_index84_atax0_add_x_p1_of_2(ADD,248)@8 + 1
    assign i_mptr_bitcast_index84_atax0_add_x_p1_of_2_a = {1'b0, SR_SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_D0};
    assign i_mptr_bitcast_index84_atax0_add_x_p1_of_2_b = {1'b0, SR_SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_D1};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index84_atax0_add_x_p1_of_2_o <= 61'b0;
        end
        else if (SE_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_mptr_bitcast_index84_atax0_add_x_p1_of_2_o <= $unsigned(i_mptr_bitcast_index84_atax0_add_x_p1_of_2_a) + $unsigned(i_mptr_bitcast_index84_atax0_add_x_p1_of_2_b);
        end
    end
    assign i_mptr_bitcast_index84_atax0_add_x_p1_of_2_c[0] = i_mptr_bitcast_index84_atax0_add_x_p1_of_2_o[60];
    assign i_mptr_bitcast_index84_atax0_add_x_p1_of_2_q = i_mptr_bitcast_index84_atax0_add_x_p1_of_2_o[59:0];

    // redist2_i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(REG,355)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(4'b0000);
        end
        else if (SE_redist2_i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b1)
        begin
            redist2_i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c);
        end
    end

    // i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,273)@9
    assign i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist2_i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q};

    // i_mptr_bitcast_index84_atax0_add_x_p2_of_2(ADD,249)@9 + 1
    assign i_mptr_bitcast_index84_atax0_add_x_p2_of_2_cin = i_mptr_bitcast_index84_atax0_add_x_p1_of_2_c;
    assign i_mptr_bitcast_index84_atax0_add_x_p2_of_2_a = { {1'b0, i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_a_BitJoin_for_c_q}, 1'b1 };
    assign i_mptr_bitcast_index84_atax0_add_x_p2_of_2_b = { {1'b0, i_mptr_bitcast_index84_atax0_add_x_BitSelect_for_b_BitJoin_for_c_q}, i_mptr_bitcast_index84_atax0_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index84_atax0_add_x_p2_of_2_o <= 7'b0;
        end
        else if (SE_i_mptr_bitcast_index84_atax0_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_mptr_bitcast_index84_atax0_add_x_p2_of_2_o <= $unsigned(i_mptr_bitcast_index84_atax0_add_x_p2_of_2_a) + $unsigned(i_mptr_bitcast_index84_atax0_add_x_p2_of_2_b);
        end
    end
    assign i_mptr_bitcast_index84_atax0_add_x_p2_of_2_q = i_mptr_bitcast_index84_atax0_add_x_p2_of_2_o[5:1];

    // redist6_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_q_1_0(REG,359)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_q_1_0_q <= $unsigned(60'b000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist6_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_q_1_0_backEN == 1'b1)
        begin
            redist6_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_q_1_0_q <= $unsigned(i_mptr_bitcast_index84_atax0_add_x_p1_of_2_q);
        end
    end

    // i_mptr_bitcast_index84_atax0_add_x_BitJoin_for_q(BITJOIN,250)@10
    assign i_mptr_bitcast_index84_atax0_add_x_BitJoin_for_q_q = {i_mptr_bitcast_index84_atax0_add_x_p2_of_2_q, redist6_i_mptr_bitcast_index84_atax0_add_x_p1_of_2_q_1_0_q};

    // i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x(BITSELECT,22)@10
    assign i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b = i_mptr_bitcast_index84_atax0_add_x_BitJoin_for_q_q[63:0];

    // redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo(STALLFIFO,399)
    assign redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_valid_in = SE_i_mptr_bitcast_index84_atax0_add_x_BitJoin_for_q_V1;
    assign redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_stall_in = SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_backStall;
    assign redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_data_in = i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b;
    assign redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_valid_in_bitsignaltemp = redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_valid_in[0];
    assign redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_stall_in_bitsignaltemp = redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_stall_in[0];
    assign redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_valid_out[0] = redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_valid_out_bitsignaltemp;
    assign redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_stall_out[0] = redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(64),
        .IMPL("ram")
    ) theredist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo (
        .valid_in(redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_valid_in_bitsignaltemp),
        .stall_in(redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_stall_in_bitsignaltemp),
        .data_in(i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b),
        .valid_out(redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_valid_out_bitsignaltemp),
        .stall_out(redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_stall_out_bitsignaltemp),
        .data_out(redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo(STALLENABLE,723)
    // Valid signal propagation
    assign SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_V0 = SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_backStall = i_llvm_fpga_mem_memdep_atax33_out_o_stall | ~ (SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_wireValid = SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_V;

    // SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo(STALLREG,935)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_r_valid <= 1'b0;
            SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_r_data0 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_r_data1 <= 1'bx;
            SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_r_data2 <= 1'bx;
            SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_r_data3 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_r_valid <= SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_backStall & (SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_r_valid | SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_i_valid);

            if (SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_r_data0 <= $unsigned(bubble_select_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_b);
                SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_r_data1 <= $unsigned(bubble_select_redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_b);
                SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_r_data2 <= $unsigned(bubble_select_redist26_i_first_cleanup_xor_atax2_q_37_fifo_b);
                SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_r_data3 <= bgTrunc_i_add16_atax30_sel_x_b;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_and0 = redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_valid_out;
    assign SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_and1 = SE_i_mul15_atax29_sums_result_add_0_0_p2_of_2_V0 & SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_and0;
    assign SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_and2 = SE_redist4_i_mul15_atax29_sums_result_add_0_0_p1_of_2_q_1_0_V0 & SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_and1;
    assign SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_and3 = i_llvm_fpga_mem_unnamed_atax15_atax16_out_o_valid & SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_and2;
    assign SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_and4 = SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_V0 & SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_and3;
    assign SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_i_valid = SE_out_redist26_i_first_cleanup_xor_atax2_q_37_fifo_V0 & SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_and4;
    // Stall signal propagation
    assign SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_backStall = SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_r_valid | ~ (SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_i_valid);

    // Valid
    assign SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_V = SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_r_valid == 1'b1 ? SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_r_valid : SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_i_valid;

    // Data0
    assign SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_D0 = SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_r_valid == 1'b1 ? SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_r_data0 : bubble_select_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_b;
    // Data1
    assign SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_D1 = SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_r_valid == 1'b1 ? SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_r_data1 : bubble_select_redist19_i_llvm_fpga_pop_i1_memdep_phi3_pop1355_pop34_atax31_out_data_out_40_fifo_b;
    // Data2
    assign SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_D2 = SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_r_valid == 1'b1 ? SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_r_data2 : bubble_select_redist26_i_first_cleanup_xor_atax2_q_37_fifo_b;
    // Data3
    assign SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_D3 = SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_r_valid == 1'b1 ? SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_r_data3 : bgTrunc_i_add16_atax30_sel_x_b;

    // SR_SE_in_i_llvm_fpga_mem_unnamed_atax15_atax16(STALLREG,934)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_in_i_llvm_fpga_mem_unnamed_atax15_atax16_r_valid <= 1'b0;
            SR_SE_in_i_llvm_fpga_mem_unnamed_atax15_atax16_r_data0 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_in_i_llvm_fpga_mem_unnamed_atax15_atax16_r_data1 <= 1'bx;
            SR_SE_in_i_llvm_fpga_mem_unnamed_atax15_atax16_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_in_i_llvm_fpga_mem_unnamed_atax15_atax16_r_valid <= SE_in_i_llvm_fpga_mem_unnamed_atax15_atax16_backStall & (SR_SE_in_i_llvm_fpga_mem_unnamed_atax15_atax16_r_valid | SR_SE_in_i_llvm_fpga_mem_unnamed_atax15_atax16_i_valid);

            if (SR_SE_in_i_llvm_fpga_mem_unnamed_atax15_atax16_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_in_i_llvm_fpga_mem_unnamed_atax15_atax16_r_data0 <= i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b;
                SR_SE_in_i_llvm_fpga_mem_unnamed_atax15_atax16_r_data1 <= $unsigned(redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_q);
                SR_SE_in_i_llvm_fpga_mem_unnamed_atax15_atax16_r_data2 <= $unsigned(redist25_i_first_cleanup_xor_atax2_q_5_4_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_in_i_llvm_fpga_mem_unnamed_atax15_atax16_and0 = SE_i_mptr_bitcast_index84_atax0_add_x_BitJoin_for_q_V0;
    assign SR_SE_in_i_llvm_fpga_mem_unnamed_atax15_atax16_and1 = SE_redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_V0 & SR_SE_in_i_llvm_fpga_mem_unnamed_atax15_atax16_and0;
    assign SR_SE_in_i_llvm_fpga_mem_unnamed_atax15_atax16_i_valid = SE_redist25_i_first_cleanup_xor_atax2_q_5_4_V0 & SR_SE_in_i_llvm_fpga_mem_unnamed_atax15_atax16_and1;
    // Stall signal propagation
    assign SR_SE_in_i_llvm_fpga_mem_unnamed_atax15_atax16_backStall = SR_SE_in_i_llvm_fpga_mem_unnamed_atax15_atax16_r_valid | ~ (SR_SE_in_i_llvm_fpga_mem_unnamed_atax15_atax16_i_valid);

    // Valid
    assign SR_SE_in_i_llvm_fpga_mem_unnamed_atax15_atax16_V = SR_SE_in_i_llvm_fpga_mem_unnamed_atax15_atax16_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_mem_unnamed_atax15_atax16_r_valid : SR_SE_in_i_llvm_fpga_mem_unnamed_atax15_atax16_i_valid;

    // Data0
    assign SR_SE_in_i_llvm_fpga_mem_unnamed_atax15_atax16_D0 = SR_SE_in_i_llvm_fpga_mem_unnamed_atax15_atax16_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_mem_unnamed_atax15_atax16_r_data0 : i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b;
    // Data1
    assign SR_SE_in_i_llvm_fpga_mem_unnamed_atax15_atax16_D1 = SR_SE_in_i_llvm_fpga_mem_unnamed_atax15_atax16_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_mem_unnamed_atax15_atax16_r_data1 : redist22_i_llvm_fpga_pop_i1_memdep_phi3_or57_pop36_atax14_out_data_out_8_4_q;
    // Data2
    assign SR_SE_in_i_llvm_fpga_mem_unnamed_atax15_atax16_D2 = SR_SE_in_i_llvm_fpga_mem_unnamed_atax15_atax16_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_mem_unnamed_atax15_atax16_r_data2 : redist25_i_first_cleanup_xor_atax2_q_5_4_q;

    // i_llvm_fpga_mem_unnamed_atax15_atax16(BLACKBOX,69)@10
    // in in_i_stall@20000000
    // out out_o_readdata@42
    // out out_o_stall@20000000
    // out out_o_valid@42
    // out out_unnamed_atax15_atax_avm_address@20000000
    // out out_unnamed_atax15_atax_avm_burstcount@20000000
    // out out_unnamed_atax15_atax_avm_byteenable@20000000
    // out out_unnamed_atax15_atax_avm_enable@20000000
    // out out_unnamed_atax15_atax_avm_read@20000000
    // out out_unnamed_atax15_atax_avm_write@20000000
    // out out_unnamed_atax15_atax_avm_writedata@20000000
    atax_i_llvm_fpga_mem_unnamed_15_atax0 thei_llvm_fpga_mem_unnamed_atax15_atax16 (
        .in_flush(in_flush),
        .in_i_address(SR_SE_in_i_llvm_fpga_mem_unnamed_atax15_atax16_D0),
        .in_i_dependence(SR_SE_in_i_llvm_fpga_mem_unnamed_atax15_atax16_D1),
        .in_i_predicate(SR_SE_in_i_llvm_fpga_mem_unnamed_atax15_atax16_D2),
        .in_i_stall(SR_SE_out_redist28_i_mptr_bitcast_index84_atax0_dupName_0_trunc_sel_x_b_32_fifo_backStall),
        .in_i_valid(SE_in_i_llvm_fpga_mem_unnamed_atax15_atax16_V0),
        .in_unnamed_atax15_atax_avm_readdata(in_unnamed_atax15_atax_avm_readdata),
        .in_unnamed_atax15_atax_avm_readdatavalid(in_unnamed_atax15_atax_avm_readdatavalid),
        .in_unnamed_atax15_atax_avm_waitrequest(in_unnamed_atax15_atax_avm_waitrequest),
        .in_unnamed_atax15_atax_avm_writeack(in_unnamed_atax15_atax_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_atax15_atax16_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_atax15_atax16_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_atax15_atax16_out_o_valid),
        .out_unnamed_atax15_atax_avm_address(i_llvm_fpga_mem_unnamed_atax15_atax16_out_unnamed_atax15_atax_avm_address),
        .out_unnamed_atax15_atax_avm_burstcount(i_llvm_fpga_mem_unnamed_atax15_atax16_out_unnamed_atax15_atax_avm_burstcount),
        .out_unnamed_atax15_atax_avm_byteenable(i_llvm_fpga_mem_unnamed_atax15_atax16_out_unnamed_atax15_atax_avm_byteenable),
        .out_unnamed_atax15_atax_avm_enable(i_llvm_fpga_mem_unnamed_atax15_atax16_out_unnamed_atax15_atax_avm_enable),
        .out_unnamed_atax15_atax_avm_read(i_llvm_fpga_mem_unnamed_atax15_atax16_out_unnamed_atax15_atax_avm_read),
        .out_unnamed_atax15_atax_avm_write(i_llvm_fpga_mem_unnamed_atax15_atax16_out_unnamed_atax15_atax_avm_write),
        .out_unnamed_atax15_atax_avm_writedata(i_llvm_fpga_mem_unnamed_atax15_atax16_out_unnamed_atax15_atax_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,10)
    assign out_unnamed_atax15_atax_avm_address = i_llvm_fpga_mem_unnamed_atax15_atax16_out_unnamed_atax15_atax_avm_address;
    assign out_unnamed_atax15_atax_avm_enable = i_llvm_fpga_mem_unnamed_atax15_atax16_out_unnamed_atax15_atax_avm_enable;
    assign out_unnamed_atax15_atax_avm_read = i_llvm_fpga_mem_unnamed_atax15_atax16_out_unnamed_atax15_atax_avm_read;
    assign out_unnamed_atax15_atax_avm_write = i_llvm_fpga_mem_unnamed_atax15_atax16_out_unnamed_atax15_atax_avm_write;
    assign out_unnamed_atax15_atax_avm_writedata = i_llvm_fpga_mem_unnamed_atax15_atax16_out_unnamed_atax15_atax_avm_writedata;
    assign out_unnamed_atax15_atax_avm_byteenable = i_llvm_fpga_mem_unnamed_atax15_atax16_out_unnamed_atax15_atax_avm_byteenable;
    assign out_unnamed_atax15_atax_avm_burstcount = i_llvm_fpga_mem_unnamed_atax15_atax16_out_unnamed_atax15_atax_avm_burstcount;

    // redist10_i_masked_atax47_q_3_1(REG,364)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_masked_atax47_q_3_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist10_i_masked_atax47_q_3_1_backEN == 1'b1)
        begin
            redist10_i_masked_atax47_q_3_1_q <= $unsigned(SR_SE_redist10_i_masked_atax47_q_3_1_D0);
        end
    end

    // dupName_0_sync_out_x(GPOUT,11)@73
    assign out_add758_pop37 = bubble_select_redist17_i_llvm_fpga_pop_i32_add758_pop37_atax27_out_data_out_68_fifo_b;
    assign out_exitcond1251_pop32 = bubble_select_i_llvm_fpga_pop_i1_exitcond1251_pop32_atax50_b;
    assign out_mPtr_bitcast_index8846_pop30 = bubble_select_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8846_pop30_atax48_b;
    assign out_masked = redist10_i_masked_atax47_q_3_1_q;
    assign out_memdep = bubble_select_i_llvm_fpga_mem_memdep_atax33_b;
    assign out_notcmp3553_pop33 = bubble_select_i_llvm_fpga_pop_i1_notcmp3553_pop33_atax52_b;
    assign out_valid_out = SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop25_atax37_1_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,13)
    assign out_unnamed_atax17_atax_avm_address = i_llvm_fpga_mem_unnamed_atax17_atax26_out_unnamed_atax17_atax_avm_address;
    assign out_unnamed_atax17_atax_avm_enable = i_llvm_fpga_mem_unnamed_atax17_atax26_out_unnamed_atax17_atax_avm_enable;
    assign out_unnamed_atax17_atax_avm_read = i_llvm_fpga_mem_unnamed_atax17_atax26_out_unnamed_atax17_atax_avm_read;
    assign out_unnamed_atax17_atax_avm_write = i_llvm_fpga_mem_unnamed_atax17_atax26_out_unnamed_atax17_atax_avm_write;
    assign out_unnamed_atax17_atax_avm_writedata = i_llvm_fpga_mem_unnamed_atax17_atax26_out_unnamed_atax17_atax_avm_writedata;
    assign out_unnamed_atax17_atax_avm_byteenable = i_llvm_fpga_mem_unnamed_atax17_atax26_out_unnamed_atax17_atax_avm_byteenable;
    assign out_unnamed_atax17_atax_avm_burstcount = i_llvm_fpga_mem_unnamed_atax17_atax26_out_unnamed_atax17_atax_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,14)
    assign out_memdep_atax_avm_address = i_llvm_fpga_mem_memdep_atax33_out_memdep_atax_avm_address;
    assign out_memdep_atax_avm_enable = i_llvm_fpga_mem_memdep_atax33_out_memdep_atax_avm_enable;
    assign out_memdep_atax_avm_read = i_llvm_fpga_mem_memdep_atax33_out_memdep_atax_avm_read;
    assign out_memdep_atax_avm_write = i_llvm_fpga_mem_memdep_atax33_out_memdep_atax_avm_write;
    assign out_memdep_atax_avm_writedata = i_llvm_fpga_mem_memdep_atax33_out_memdep_atax_avm_writedata;
    assign out_memdep_atax_avm_byteenable = i_llvm_fpga_mem_memdep_atax33_out_memdep_atax_avm_byteenable;
    assign out_memdep_atax_avm_burstcount = i_llvm_fpga_mem_memdep_atax33_out_memdep_atax_avm_burstcount;

    // dupName_3_ext_sig_sync_out_x(GPOUT,15)
    assign out_lsu_memdep_o_active = i_llvm_fpga_mem_memdep_atax33_out_lsu_memdep_o_active;

    // ext_sig_sync_out(GPOUT,55)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_atax4_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_atax4_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_atax4_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_atax4_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,187)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_atax4_out_pipeline_valid_out;

    // sync_out(GPOUT,193)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
