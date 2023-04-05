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
// SystemVerilog created on Wed Mar 29 19:22:59 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module gaussian_bb_B7_stall_region (
    input wire [63:0] in_lm1_gaussian_avm_readdata,
    input wire [0:0] in_lm1_gaussian_avm_writeack,
    input wire [0:0] in_lm1_gaussian_avm_waitrequest,
    input wire [0:0] in_lm1_gaussian_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_gaussian4_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_gaussian4_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [31:0] in_intel_reserved_ffwd_4_0,
    input wire [0:0] in_intel_reserved_ffwd_9_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_add39_pop1150,
    input wire [0:0] in_forked27,
    input wire [31:0] in_i_019_replace_phi47,
    input wire [0:0] in_memdep_phi_pop1049,
    input wire [0:0] in_notcmp3148,
    input wire [0:0] in_unnamed_gaussian15,
    input wire [0:0] in_valid_in,
    input wire [63:0] in_lm32_gaussian_avm_readdata,
    input wire [0:0] in_lm32_gaussian_avm_writeack,
    input wire [0:0] in_lm32_gaussian_avm_waitrequest,
    input wire [0:0] in_lm32_gaussian_avm_readdatavalid,
    output wire [63:0] out_lm1_gaussian_avm_address,
    output wire [0:0] out_lm1_gaussian_avm_enable,
    output wire [0:0] out_lm1_gaussian_avm_read,
    output wire [0:0] out_lm1_gaussian_avm_write,
    output wire [63:0] out_lm1_gaussian_avm_writedata,
    output wire [7:0] out_lm1_gaussian_avm_byteenable,
    output wire [0:0] out_lm1_gaussian_avm_burstcount,
    output wire [31:0] out_add40_push17,
    output wire [0:0] out_masked,
    output wire [0:0] out_memdep,
    output wire [0:0] out_notcmp3142_pop20,
    output wire [0:0] out_pop19,
    output wire [0:0] out_valid_out,
    input wire [63:0] in_lm53_gaussian_avm_readdata,
    input wire [0:0] in_lm53_gaussian_avm_writeack,
    input wire [0:0] in_lm53_gaussian_avm_waitrequest,
    input wire [0:0] in_lm53_gaussian_avm_readdatavalid,
    output wire [63:0] out_lm32_gaussian_avm_address,
    output wire [0:0] out_lm32_gaussian_avm_enable,
    output wire [0:0] out_lm32_gaussian_avm_read,
    output wire [0:0] out_lm32_gaussian_avm_write,
    output wire [63:0] out_lm32_gaussian_avm_writedata,
    output wire [7:0] out_lm32_gaussian_avm_byteenable,
    output wire [0:0] out_lm32_gaussian_avm_burstcount,
    input wire [63:0] in_memdep_gaussian_avm_readdata,
    input wire [0:0] in_memdep_gaussian_avm_writeack,
    input wire [0:0] in_memdep_gaussian_avm_waitrequest,
    input wire [0:0] in_memdep_gaussian_avm_readdatavalid,
    output wire [63:0] out_lm53_gaussian_avm_address,
    output wire [0:0] out_lm53_gaussian_avm_enable,
    output wire [0:0] out_lm53_gaussian_avm_read,
    output wire [0:0] out_lm53_gaussian_avm_write,
    output wire [63:0] out_lm53_gaussian_avm_writedata,
    output wire [7:0] out_lm53_gaussian_avm_byteenable,
    output wire [0:0] out_lm53_gaussian_avm_burstcount,
    output wire [63:0] out_memdep_gaussian_avm_address,
    output wire [0:0] out_memdep_gaussian_avm_enable,
    output wire [0:0] out_memdep_gaussian_avm_read,
    output wire [0:0] out_memdep_gaussian_avm_write,
    output wire [63:0] out_memdep_gaussian_avm_writedata,
    output wire [7:0] out_memdep_gaussian_avm_byteenable,
    output wire [0:0] out_memdep_gaussian_avm_burstcount,
    output wire [0:0] out_lsu_memdep_o_active,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [1:0] c_i2_158_q;
    wire [31:0] c_i32_161_q;
    wire [5:0] c_i6_164_q;
    wire [5:0] c_i6_1762_q;
    wire [1:0] i_cleanups_shl_gaussian3_vt_join_q;
    wire [0:0] i_cleanups_shl_gaussian3_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor_gaussian2_q;
    wire [0:0] i_first_cleanup_xor_or_gaussian23_q;
    wire [6:0] i_fpga_indvars_iv_next_gaussian42_a;
    wire [6:0] i_fpga_indvars_iv_next_gaussian42_b;
    logic [6:0] i_fpga_indvars_iv_next_gaussian42_o;
    wire [6:0] i_fpga_indvars_iv_next_gaussian42_q;
    wire [31:0] i_idxprom11_gaussian16_vt_const_63_q;
    wire [63:0] i_idxprom11_gaussian16_vt_join_q;
    wire [31:0] i_idxprom11_gaussian16_vt_select_31_b;
    wire [63:0] i_idxprom9_gaussian20_vt_join_q;
    wire [31:0] i_idxprom9_gaussian20_vt_select_31_b;
    wire [63:0] i_idxprom_gaussian12_vt_join_q;
    wire [31:0] i_idxprom_gaussian12_vt_select_31_b;
    wire [32:0] i_inc_gaussian37_a;
    wire [32:0] i_inc_gaussian37_b;
    logic [32:0] i_inc_gaussian37_o;
    wire [32:0] i_inc_gaussian37_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_out_dest_data_out_9_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_out_dest_data_out_9_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_j_02018_gaussian15_out_dest_data_out_4_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_j_02018_gaussian15_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_j_02018_gaussian15_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024a20i32_a2214_gaussian30_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024a20i32_a2214_gaussian30_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024a20i32_a2214_gaussian30_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024a20i32_a2215_gaussian21_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024a20i32_a2215_gaussian21_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024a20i32_a2215_gaussian21_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_c2113_gaussian17_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_c2113_gaussian17_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_c2113_gaussian17_out_valid_out;
    wire [63:0] i_llvm_fpga_mem_lm1_gaussian26_out_lm1_gaussian_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm1_gaussian26_out_lm1_gaussian_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm1_gaussian26_out_lm1_gaussian_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm1_gaussian26_out_lm1_gaussian_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm1_gaussian26_out_lm1_gaussian_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm1_gaussian26_out_lm1_gaussian_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm1_gaussian26_out_lm1_gaussian_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm1_gaussian26_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm1_gaussian26_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm1_gaussian26_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_lm32_gaussian29_out_lm32_gaussian_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm32_gaussian29_out_lm32_gaussian_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm32_gaussian29_out_lm32_gaussian_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm32_gaussian29_out_lm32_gaussian_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm32_gaussian29_out_lm32_gaussian_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm32_gaussian29_out_lm32_gaussian_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm32_gaussian29_out_lm32_gaussian_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm32_gaussian29_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm32_gaussian29_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm32_gaussian29_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_lm53_gaussian32_out_lm53_gaussian_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm53_gaussian32_out_lm53_gaussian_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm53_gaussian32_out_lm53_gaussian_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm53_gaussian32_out_lm53_gaussian_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm53_gaussian32_out_lm53_gaussian_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm53_gaussian32_out_lm53_gaussian_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm53_gaussian32_out_lm53_gaussian_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm53_gaussian32_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm53_gaussian32_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm53_gaussian32_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_gaussian35_out_lsu_memdep_o_active;
    wire [63:0] i_llvm_fpga_mem_memdep_gaussian35_out_memdep_gaussian_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_gaussian35_out_memdep_gaussian_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memdep_gaussian35_out_memdep_gaussian_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_gaussian35_out_memdep_gaussian_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_gaussian35_out_memdep_gaussian_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_gaussian35_out_memdep_gaussian_avm_write;
    wire [63:0] i_llvm_fpga_mem_memdep_gaussian35_out_memdep_gaussian_avm_writedata;
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
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_out_feedback_stall_out_14;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_feedback_stall_out_21;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_out_feedback_stall_out_20;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_out_valid_out;
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
    wire [31:0] i_llvm_fpga_pop_i32_add40_pop17_gaussian52_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_add40_pop17_gaussian52_out_feedback_stall_out_17;
    wire [0:0] i_llvm_fpga_pop_i32_add40_pop17_gaussian52_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_add40_pop17_gaussian52_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_out_feedback_stall_out_18;
    wire [0:0] i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_out_feedback_stall_out_13;
    wire [0:0] i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_out_valid_out;
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
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop1043_push21_gaussian25_out_feedback_out_21;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop1043_push21_gaussian25_out_feedback_valid_out_21;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop1043_push21_gaussian25_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop1043_push21_gaussian25_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notcmp3142_push20_gaussian57_out_feedback_out_20;
    wire [0:0] i_llvm_fpga_push_i1_notcmp3142_push20_gaussian57_out_feedback_valid_out_20;
    wire [0:0] i_llvm_fpga_push_i1_notcmp3142_push20_gaussian57_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_notcmp3142_push20_gaussian57_out_valid_out;
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
    wire [31:0] i_llvm_fpga_push_i32_add40_push17_gaussian53_out_data_out;
    wire [31:0] i_llvm_fpga_push_i32_add40_push17_gaussian53_out_feedback_out_17;
    wire [0:0] i_llvm_fpga_push_i32_add40_push17_gaussian53_out_feedback_valid_out_17;
    wire [0:0] i_llvm_fpga_push_i32_add40_push17_gaussian53_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_add40_push17_gaussian53_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i32_i_019_replace_phi41_push18_gaussian11_out_feedback_out_18;
    wire [0:0] i_llvm_fpga_push_i32_i_019_replace_phi41_push18_gaussian11_out_feedback_valid_out_18;
    wire [0:0] i_llvm_fpga_push_i32_i_019_replace_phi41_push18_gaussian11_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_i_019_replace_phi41_push18_gaussian11_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i32_k_017_push13_gaussian38_out_feedback_out_13;
    wire [0:0] i_llvm_fpga_push_i32_k_017_push13_gaussian38_out_feedback_valid_out_13;
    wire [0:0] i_llvm_fpga_push_i32_k_017_push13_gaussian38_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_k_017_push13_gaussian38_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push12_gaussian43_out_feedback_out_12;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push12_gaussian43_out_feedback_valid_out_12;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push12_gaussian43_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push12_gaussian43_out_valid_out;
    wire [0:0] i_masked_gaussian51_qi;
    reg [0:0] i_masked_gaussian51_q;
    wire [0:0] i_memdep_phi_or_gaussian28_q;
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
    wire [0:0] i_unnamed_gaussian14_q;
    wire [0:0] i_unnamed_gaussian45_q;
    wire [5:0] bgTrunc_i_fpga_indvars_iv_next_gaussian42_sel_x_b;
    wire [31:0] bgTrunc_i_inc_gaussian37_sel_x_b;
    wire [63:0] bgTrunc_i_mul_gaussian33_sel_x_in;
    wire [31:0] bgTrunc_i_mul_gaussian33_sel_x_b;
    wire [31:0] bgTrunc_i_sub_gaussian34_sel_x_b;
    wire [0:0] gaussian_B7_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] gaussian_B7_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [31:0] gaussian_B7_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [0:0] gaussian_B7_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [0:0] gaussian_B7_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [0:0] gaussian_B7_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [31:0] gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [64:0] i_arrayidx10_gaussian0_add_x_a;
    wire [64:0] i_arrayidx10_gaussian0_add_x_b;
    logic [64:0] i_arrayidx10_gaussian0_add_x_o;
    wire [64:0] i_arrayidx10_gaussian0_add_x_q;
    wire [1:0] i_arrayidx10_gaussian0_c_i2_02_x_q;
    wire [61:0] i_arrayidx10_gaussian0_narrow_x_b;
    wire [63:0] i_arrayidx10_gaussian0_shift_join_x_q;
    wire [64:0] i_arrayidx10_gaussian0_dupName_0_add_x_a;
    wire [64:0] i_arrayidx10_gaussian0_dupName_0_add_x_b;
    logic [64:0] i_arrayidx10_gaussian0_dupName_0_add_x_o;
    wire [64:0] i_arrayidx10_gaussian0_dupName_0_add_x_q;
    wire [127:0] i_arrayidx10_gaussian0_mult_extender_x_q;
    wire [56:0] i_arrayidx10_gaussian0_mult_multconst_x_q;
    wire [63:0] i_arrayidx10_gaussian0_trunc_sel_x_b;
    wire [63:0] i_arrayidx10_gaussian0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b;
    wire [64:0] i_arrayidx12_gaussian0_add_x_a;
    wire [64:0] i_arrayidx12_gaussian0_add_x_b;
    logic [64:0] i_arrayidx12_gaussian0_add_x_o;
    wire [64:0] i_arrayidx12_gaussian0_add_x_q;
    wire [61:0] i_arrayidx12_gaussian0_narrow_x_b;
    wire [63:0] i_arrayidx12_gaussian0_shift_join_x_q;
    wire [63:0] i_arrayidx12_gaussian0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx16_gaussian0_add_x_a;
    wire [64:0] i_arrayidx16_gaussian0_add_x_b;
    logic [64:0] i_arrayidx16_gaussian0_add_x_o;
    wire [64:0] i_arrayidx16_gaussian0_add_x_q;
    wire [64:0] i_arrayidx16_gaussian0_dupName_0_add_x_a;
    wire [64:0] i_arrayidx16_gaussian0_dupName_0_add_x_b;
    logic [64:0] i_arrayidx16_gaussian0_dupName_0_add_x_o;
    wire [64:0] i_arrayidx16_gaussian0_dupName_0_add_x_q;
    wire [127:0] i_arrayidx16_gaussian0_mult_extender_x_q;
    wire [63:0] i_arrayidx16_gaussian0_trunc_sel_x_b;
    wire [63:0] i_arrayidx16_gaussian0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_arrayidx16_gaussian0_dupName_2_trunc_sel_x_b;
    wire [0:0] i_first_cleanup_gaussian1_sel_x_b;
    wire [63:0] i_idxprom11_gaussian16_sel_x_b;
    wire [63:0] i_idxprom9_gaussian20_sel_x_b;
    wire [63:0] i_idxprom_gaussian12_sel_x_b;
    wire [0:0] i_last_initeration_gaussian8_sel_x_b;
    wire [0:0] i_exitcond_gaussian40_cmp_nsign_q;
    wire [63:0] i_mul_gaussian33_sums_join_0_q;
    wire [50:0] i_mul_gaussian33_sums_align_1_q;
    wire [50:0] i_mul_gaussian33_sums_align_1_qint;
    wire [64:0] i_mul_gaussian33_sums_result_add_0_0_a;
    wire [64:0] i_mul_gaussian33_sums_result_add_0_0_b;
    logic [64:0] i_mul_gaussian33_sums_result_add_0_0_o;
    wire [64:0] i_mul_gaussian33_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx10_gaussian0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx10_gaussian0_mult_x_sums_align_0_qint;
    wire [60:0] i_arrayidx10_gaussian0_mult_x_sums_join_1_q;
    wire [42:0] i_arrayidx10_gaussian0_mult_x_sums_align_2_q;
    wire [42:0] i_arrayidx10_gaussian0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx10_gaussian0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx10_gaussian0_mult_x_sums_align_3_qint;
    wire [70:0] i_arrayidx10_gaussian0_mult_x_sums_join_4_q;
    wire [71:0] i_arrayidx10_gaussian0_mult_x_sums_result_add_0_0_a;
    wire [71:0] i_arrayidx10_gaussian0_mult_x_sums_result_add_0_0_b;
    logic [71:0] i_arrayidx10_gaussian0_mult_x_sums_result_add_0_0_o;
    wire [71:0] i_arrayidx10_gaussian0_mult_x_sums_result_add_0_0_q;
    wire [9:0] i_arrayidx16_gaussian0_mult_x_bs1_b;
    wire [53:0] i_arrayidx16_gaussian0_mult_x_bs4_in;
    wire [17:0] i_arrayidx16_gaussian0_mult_x_bs4_b;
    wire [35:0] i_arrayidx16_gaussian0_mult_x_bs7_in;
    wire [17:0] i_arrayidx16_gaussian0_mult_x_bs7_b;
    wire [17:0] i_arrayidx16_gaussian0_mult_x_bs10_in;
    wire [17:0] i_arrayidx16_gaussian0_mult_x_bs10_b;
    wire [35:0] i_arrayidx16_gaussian0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx16_gaussian0_mult_x_sums_align_0_qint;
    wire [60:0] i_arrayidx16_gaussian0_mult_x_sums_join_1_q;
    wire [42:0] i_arrayidx16_gaussian0_mult_x_sums_align_2_q;
    wire [42:0] i_arrayidx16_gaussian0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx16_gaussian0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx16_gaussian0_mult_x_sums_align_3_qint;
    wire [70:0] i_arrayidx16_gaussian0_mult_x_sums_join_4_q;
    wire [71:0] i_arrayidx16_gaussian0_mult_x_sums_result_add_0_0_a;
    wire [71:0] i_arrayidx16_gaussian0_mult_x_sums_result_add_0_0_b;
    logic [71:0] i_arrayidx16_gaussian0_mult_x_sums_result_add_0_0_o;
    wire [71:0] i_arrayidx16_gaussian0_mult_x_sums_result_add_0_0_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid298_i_cleanups_shl_gaussian0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid298_i_cleanups_shl_gaussian0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid299_i_cleanups_shl_gaussian0_shift_x_q;
    wire [0:0] leftShiftStage0_uid301_i_cleanups_shl_gaussian0_shift_x_s;
    reg [1:0] leftShiftStage0_uid301_i_cleanups_shl_gaussian0_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid305_i_next_initerations_gaussian0_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid307_i_next_initerations_gaussian0_shift_x_q;
    wire [0:0] rightShiftStage0_uid309_i_next_initerations_gaussian0_shift_x_s;
    reg [1:0] rightShiftStage0_uid309_i_next_initerations_gaussian0_shift_x_q;
    wire [10:0] addsumAHighB_uid320_i_arrayidx10_gaussian0_mult_x_im0_a;
    wire [10:0] addsumAHighB_uid320_i_arrayidx10_gaussian0_mult_x_im0_b;
    logic [10:0] addsumAHighB_uid320_i_arrayidx10_gaussian0_mult_x_im0_o;
    wire [10:0] addsumAHighB_uid320_i_arrayidx10_gaussian0_mult_x_im0_q;
    wire [12:0] add_uid321_i_arrayidx10_gaussian0_mult_x_im0_q;
    wire [3:0] sR_bottomExtension_uid324_i_arrayidx10_gaussian0_mult_x_im0_q;
    wire [16:0] sR_mergedSignalTM_uid326_i_arrayidx10_gaussian0_mult_x_im0_q;
    wire [18:0] addsumAHighB_uid366_i_arrayidx10_gaussian0_mult_x_im3_a;
    wire [18:0] addsumAHighB_uid366_i_arrayidx10_gaussian0_mult_x_im3_b;
    logic [18:0] addsumAHighB_uid366_i_arrayidx10_gaussian0_mult_x_im3_o;
    wire [18:0] addsumAHighB_uid366_i_arrayidx10_gaussian0_mult_x_im3_q;
    wire [20:0] add_uid367_i_arrayidx10_gaussian0_mult_x_im3_q;
    wire [24:0] sR_mergedSignalTM_uid372_i_arrayidx10_gaussian0_mult_x_im3_q;
    wire [18:0] addsumAHighB_uid424_i_arrayidx10_gaussian0_mult_x_im6_a;
    wire [18:0] addsumAHighB_uid424_i_arrayidx10_gaussian0_mult_x_im6_b;
    logic [18:0] addsumAHighB_uid424_i_arrayidx10_gaussian0_mult_x_im6_o;
    wire [18:0] addsumAHighB_uid424_i_arrayidx10_gaussian0_mult_x_im6_q;
    wire [20:0] add_uid425_i_arrayidx10_gaussian0_mult_x_im6_q;
    wire [24:0] sR_mergedSignalTM_uid430_i_arrayidx10_gaussian0_mult_x_im6_q;
    wire [18:0] addsumAHighB_uid482_i_arrayidx10_gaussian0_mult_x_im9_a;
    wire [18:0] addsumAHighB_uid482_i_arrayidx10_gaussian0_mult_x_im9_b;
    logic [18:0] addsumAHighB_uid482_i_arrayidx10_gaussian0_mult_x_im9_o;
    wire [18:0] addsumAHighB_uid482_i_arrayidx10_gaussian0_mult_x_im9_q;
    wire [20:0] add_uid483_i_arrayidx10_gaussian0_mult_x_im9_q;
    wire [24:0] sR_mergedSignalTM_uid488_i_arrayidx10_gaussian0_mult_x_im9_q;
    wire [10:0] addsumAHighB_uid540_i_arrayidx16_gaussian0_mult_x_im0_a;
    wire [10:0] addsumAHighB_uid540_i_arrayidx16_gaussian0_mult_x_im0_b;
    logic [10:0] addsumAHighB_uid540_i_arrayidx16_gaussian0_mult_x_im0_o;
    wire [10:0] addsumAHighB_uid540_i_arrayidx16_gaussian0_mult_x_im0_q;
    wire [12:0] add_uid541_i_arrayidx16_gaussian0_mult_x_im0_q;
    wire [16:0] sR_mergedSignalTM_uid546_i_arrayidx16_gaussian0_mult_x_im0_q;
    wire [18:0] addsumAHighB_uid586_i_arrayidx16_gaussian0_mult_x_im3_a;
    wire [18:0] addsumAHighB_uid586_i_arrayidx16_gaussian0_mult_x_im3_b;
    logic [18:0] addsumAHighB_uid586_i_arrayidx16_gaussian0_mult_x_im3_o;
    wire [18:0] addsumAHighB_uid586_i_arrayidx16_gaussian0_mult_x_im3_q;
    wire [20:0] add_uid587_i_arrayidx16_gaussian0_mult_x_im3_q;
    wire [24:0] sR_mergedSignalTM_uid592_i_arrayidx16_gaussian0_mult_x_im3_q;
    wire [18:0] addsumAHighB_uid644_i_arrayidx16_gaussian0_mult_x_im6_a;
    wire [18:0] addsumAHighB_uid644_i_arrayidx16_gaussian0_mult_x_im6_b;
    logic [18:0] addsumAHighB_uid644_i_arrayidx16_gaussian0_mult_x_im6_o;
    wire [18:0] addsumAHighB_uid644_i_arrayidx16_gaussian0_mult_x_im6_q;
    wire [20:0] add_uid645_i_arrayidx16_gaussian0_mult_x_im6_q;
    wire [24:0] sR_mergedSignalTM_uid650_i_arrayidx16_gaussian0_mult_x_im6_q;
    wire [18:0] addsumAHighB_uid702_i_arrayidx16_gaussian0_mult_x_im9_a;
    wire [18:0] addsumAHighB_uid702_i_arrayidx16_gaussian0_mult_x_im9_b;
    logic [18:0] addsumAHighB_uid702_i_arrayidx16_gaussian0_mult_x_im9_o;
    wire [18:0] addsumAHighB_uid702_i_arrayidx16_gaussian0_mult_x_im9_q;
    wire [20:0] add_uid703_i_arrayidx16_gaussian0_mult_x_im9_q;
    wire [24:0] sR_mergedSignalTM_uid708_i_arrayidx16_gaussian0_mult_x_im9_q;
    wire i_mul_gaussian33_im0_cma_reset;
    wire [13:0] i_mul_gaussian33_im0_cma_a0;
    wire [13:0] i_mul_gaussian33_im0_cma_c0;
    wire [27:0] i_mul_gaussian33_im0_cma_s0;
    wire [27:0] i_mul_gaussian33_im0_cma_qq;
    wire [27:0] i_mul_gaussian33_im0_cma_q;
    wire i_mul_gaussian33_im0_cma_ena0;
    wire i_mul_gaussian33_im0_cma_ena1;
    wire i_mul_gaussian33_im0_cma_ena2;
    wire i_mul_gaussian33_im8_cma_reset;
    wire [17:0] i_mul_gaussian33_im8_cma_a0;
    wire [17:0] i_mul_gaussian33_im8_cma_c0;
    wire [35:0] i_mul_gaussian33_im8_cma_s0;
    wire [35:0] i_mul_gaussian33_im8_cma_qq;
    wire [35:0] i_mul_gaussian33_im8_cma_q;
    wire i_mul_gaussian33_im8_cma_ena0;
    wire i_mul_gaussian33_im8_cma_ena1;
    wire i_mul_gaussian33_im8_cma_ena2;
    wire i_mul_gaussian33_ma3_cma_reset;
    wire [13:0] i_mul_gaussian33_ma3_cma_a0;
    wire [17:0] i_mul_gaussian33_ma3_cma_c0;
    wire [13:0] i_mul_gaussian33_ma3_cma_a1;
    wire [17:0] i_mul_gaussian33_ma3_cma_c1;
    wire [32:0] i_mul_gaussian33_ma3_cma_s0;
    wire [32:0] i_mul_gaussian33_ma3_cma_qq;
    wire [32:0] i_mul_gaussian33_ma3_cma_q;
    wire i_mul_gaussian33_ma3_cma_ena0;
    wire i_mul_gaussian33_ma3_cma_ena1;
    wire i_mul_gaussian33_ma3_cma_ena2;
    wire [9:0] i_arrayidx10_gaussian0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx10_gaussian0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx10_gaussian0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx10_gaussian0_mult_x_bs1_merged_bit_select_e;
    wire [13:0] i_mul_gaussian33_bs2_merged_bit_select_b;
    wire [17:0] i_mul_gaussian33_bs2_merged_bit_select_c;
    wire [13:0] i_mul_gaussian33_bs1_merged_bit_select_b;
    wire [17:0] i_mul_gaussian33_bs1_merged_bit_select_c;
    wire [1:0] lowRangeB_uid538_i_arrayidx16_gaussian0_mult_x_im0_merged_bit_select_b;
    wire [7:0] lowRangeB_uid538_i_arrayidx16_gaussian0_mult_x_im0_merged_bit_select_c;
    wire [1:0] lowRangeB_uid584_i_arrayidx16_gaussian0_mult_x_im3_merged_bit_select_b;
    wire [15:0] lowRangeB_uid584_i_arrayidx16_gaussian0_mult_x_im3_merged_bit_select_c;
    wire [1:0] lowRangeB_uid642_i_arrayidx16_gaussian0_mult_x_im6_merged_bit_select_b;
    wire [15:0] lowRangeB_uid642_i_arrayidx16_gaussian0_mult_x_im6_merged_bit_select_c;
    wire [1:0] lowRangeB_uid700_i_arrayidx16_gaussian0_mult_x_im9_merged_bit_select_b;
    wire [15:0] lowRangeB_uid700_i_arrayidx16_gaussian0_mult_x_im9_merged_bit_select_c;
    wire [1:0] lowRangeB_uid318_i_arrayidx10_gaussian0_mult_x_im0_merged_bit_select_b;
    wire [7:0] lowRangeB_uid318_i_arrayidx10_gaussian0_mult_x_im0_merged_bit_select_c;
    wire [1:0] lowRangeB_uid364_i_arrayidx10_gaussian0_mult_x_im3_merged_bit_select_b;
    wire [15:0] lowRangeB_uid364_i_arrayidx10_gaussian0_mult_x_im3_merged_bit_select_c;
    wire [1:0] lowRangeB_uid422_i_arrayidx10_gaussian0_mult_x_im6_merged_bit_select_b;
    wire [15:0] lowRangeB_uid422_i_arrayidx10_gaussian0_mult_x_im6_merged_bit_select_c;
    wire [1:0] lowRangeB_uid480_i_arrayidx10_gaussian0_mult_x_im9_merged_bit_select_b;
    wire [15:0] lowRangeB_uid480_i_arrayidx10_gaussian0_mult_x_im9_merged_bit_select_c;
    wire [1:0] join_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [64:0] join_for_coalesced_delay_1_q;
    wire [63:0] sel_for_coalesced_delay_1_b;
    wire [0:0] sel_for_coalesced_delay_1_c;
    wire [0:0] redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_valid_in;
    wire redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_stall_in;
    wire redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_data_in;
    wire [0:0] redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_valid_out;
    wire redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_stall_out;
    wire redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_data_out;
    reg [63:0] redist1_i_arrayidx16_gaussian0_trunc_sel_x_b_1_0_q;
    reg [61:0] redist2_i_arrayidx12_gaussian0_narrow_x_b_1_0_q;
    reg [63:0] redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_0_q;
    reg [63:0] redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_1_q;
    reg [63:0] redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_2_q;
    reg [63:0] redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_3_q;
    reg [63:0] redist5_i_arrayidx10_gaussian0_trunc_sel_x_b_1_0_q;
    reg [0:0] redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_q;
    wire [0:0] redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_valid_in;
    wire redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_stall_in;
    wire redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_data_in;
    wire [0:0] redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_valid_out;
    wire redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_stall_out;
    wire redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_data_out;
    reg [0:0] redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_q;
    wire [0:0] redist11_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_67_fifo_valid_in;
    wire redist11_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_67_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist11_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_67_fifo_stall_in;
    wire redist11_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_67_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist11_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_67_fifo_data_in;
    wire [0:0] redist11_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_67_fifo_valid_out;
    wire redist11_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_67_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist11_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_67_fifo_stall_out;
    wire redist11_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_67_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist11_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_67_fifo_data_out;
    reg [31:0] redist12_bgTrunc_i_mul_gaussian33_sel_x_b_1_0_q;
    wire [0:0] redist13_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_out_data_out_66_fifo_valid_in;
    wire redist13_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_out_data_out_66_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist13_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_out_data_out_66_fifo_stall_in;
    wire redist13_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_out_data_out_66_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist13_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_out_data_out_66_fifo_data_in;
    wire [0:0] redist13_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_out_data_out_66_fifo_valid_out;
    wire redist13_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_out_data_out_66_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist13_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_out_data_out_66_fifo_stall_out;
    wire redist13_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_out_data_out_66_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist13_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_out_data_out_66_fifo_data_out;
    wire [0:0] redist14_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_out_data_out_67_fifo_valid_in;
    wire redist14_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_out_data_out_67_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist14_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_out_data_out_67_fifo_stall_in;
    wire redist14_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_out_data_out_67_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist14_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_out_data_out_67_fifo_data_in;
    wire [0:0] redist14_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_out_data_out_67_fifo_valid_out;
    wire redist14_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_out_data_out_67_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist14_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_out_data_out_67_fifo_stall_out;
    wire redist14_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_out_data_out_67_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist14_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_out_data_out_67_fifo_data_out;
    wire [0:0] redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_66_fifo_valid_in;
    wire redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_66_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_66_fifo_stall_in;
    wire redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_66_fifo_stall_in_bitsignaltemp;
    wire [1:0] redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_66_fifo_data_in;
    wire [0:0] redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_66_fifo_valid_out;
    wire redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_66_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_66_fifo_stall_out;
    wire redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_66_fifo_stall_out_bitsignaltemp;
    wire [1:0] redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_66_fifo_data_out;
    reg [0:0] redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_1_0_q;
    reg [0:0] redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_0_q;
    reg [0:0] redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_1_q;
    reg [0:0] redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_2_q;
    reg [0:0] redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_3_q;
    wire [0:0] redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_67_fifo_valid_in;
    wire redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_67_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_67_fifo_stall_in;
    wire redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_67_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_67_fifo_data_in;
    wire [0:0] redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_67_fifo_valid_out;
    wire redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_67_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_67_fifo_stall_out;
    wire redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_67_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_67_fifo_data_out;
    reg [0:0] redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_q;
    reg [0:0] redist20_i_first_cleanup_xor_or_gaussian23_q_4_0_q;
    reg [0:0] redist20_i_first_cleanup_xor_or_gaussian23_q_4_1_q;
    reg [0:0] redist20_i_first_cleanup_xor_or_gaussian23_q_4_2_q;
    reg [0:0] redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_q;
    wire [0:0] redist22_i_first_cleanup_xor_gaussian2_q_66_fifo_valid_in;
    wire redist22_i_first_cleanup_xor_gaussian2_q_66_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist22_i_first_cleanup_xor_gaussian2_q_66_fifo_stall_in;
    wire redist22_i_first_cleanup_xor_gaussian2_q_66_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist22_i_first_cleanup_xor_gaussian2_q_66_fifo_data_in;
    wire [0:0] redist22_i_first_cleanup_xor_gaussian2_q_66_fifo_valid_out;
    wire redist22_i_first_cleanup_xor_gaussian2_q_66_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist22_i_first_cleanup_xor_gaussian2_q_66_fifo_stall_out;
    wire redist22_i_first_cleanup_xor_gaussian2_q_66_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist22_i_first_cleanup_xor_gaussian2_q_66_fifo_data_out;
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
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_j_02018_gaussian15_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_j_02018_gaussian15_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024a20i32_a2214_gaussian30_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024a20i32_a2214_gaussian30_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024a20i32_a2215_gaussian21_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024a20i32_a2215_gaussian21_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_c2113_gaussian17_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_c2113_gaussian17_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm1_gaussian26_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm1_gaussian26_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm32_gaussian29_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm32_gaussian29_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm53_gaussian32_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm53_gaussian32_b;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_gaussian35_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_gaussian35_b;
    wire [0:0] bubble_join_i_llvm_fpga_pipeline_keep_going_gaussian4_q;
    wire [0:0] bubble_select_i_llvm_fpga_pipeline_keep_going_gaussian4_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_pop19_gaussian54_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_pop19_gaussian54_b;
    wire [1:0] bubble_join_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_q;
    wire [1:0] bubble_select_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_b;
    wire [1:0] bubble_join_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_q;
    wire [1:0] bubble_select_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_b;
    wire [5:0] bubble_join_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_q;
    wire [5:0] bubble_select_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_b;
    wire [31:0] bubble_join_i_llvm_fpga_push_i32_add40_push17_gaussian53_q;
    wire [31:0] bubble_select_i_llvm_fpga_push_i32_add40_push17_gaussian53_b;
    wire [67:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [67:0] bubble_join_gaussian_B7_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_gaussian_B7_merge_reg_aunroll_x_b;
    wire [31:0] bubble_select_gaussian_B7_merge_reg_aunroll_x_c;
    wire [0:0] bubble_select_gaussian_B7_merge_reg_aunroll_x_d;
    wire [0:0] bubble_select_gaussian_B7_merge_reg_aunroll_x_e;
    wire [0:0] bubble_select_gaussian_B7_merge_reg_aunroll_x_f;
    wire [31:0] bubble_select_gaussian_B7_merge_reg_aunroll_x_g;
    wire [27:0] bubble_join_i_mul_gaussian33_im0_cma_q;
    wire [27:0] bubble_select_i_mul_gaussian33_im0_cma_b;
    wire [35:0] bubble_join_i_mul_gaussian33_im8_cma_q;
    wire [35:0] bubble_select_i_mul_gaussian33_im8_cma_b;
    wire [32:0] bubble_join_i_mul_gaussian33_ma3_cma_q;
    wire [32:0] bubble_select_i_mul_gaussian33_ma3_cma_b;
    wire [0:0] bubble_join_redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_q;
    wire [0:0] bubble_select_redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_b;
    wire [0:0] bubble_join_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_q;
    wire [0:0] bubble_select_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_b;
    wire [31:0] bubble_join_redist11_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_67_fifo_q;
    wire [31:0] bubble_select_redist11_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_67_fifo_b;
    wire [31:0] bubble_join_redist13_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_out_data_out_66_fifo_q;
    wire [31:0] bubble_select_redist13_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_out_data_out_66_fifo_b;
    wire [31:0] bubble_join_redist14_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_out_data_out_67_fifo_q;
    wire [31:0] bubble_select_redist14_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_out_data_out_67_fifo_b;
    wire [1:0] bubble_join_redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_66_fifo_q;
    wire [1:0] bubble_select_redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_66_fifo_b;
    wire [0:0] bubble_join_redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_67_fifo_q;
    wire [0:0] bubble_select_redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_67_fifo_b;
    wire [0:0] bubble_join_redist22_i_first_cleanup_xor_gaussian2_q_66_fifo_q;
    wire [0:0] bubble_select_redist22_i_first_cleanup_xor_gaussian2_q_66_fifo_b;
    wire [1:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [1:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [64:0] bubble_join_coalesced_delay_1_fifo_q;
    wire [64:0] bubble_select_coalesced_delay_1_fifo_b;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_or1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_V2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_j_02018_gaussian15_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_j_02018_gaussian15_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_j_02018_gaussian15_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a20i32_a2214_gaussian30_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a20i32_a2214_gaussian30_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a20i32_a2214_gaussian30_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a20i32_a2214_gaussian30_and2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a20i32_a2214_gaussian30_and3;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a20i32_a2214_gaussian30_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a20i32_a2214_gaussian30_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a20i32_a2215_gaussian21_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a20i32_a2215_gaussian21_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a20i32_a2215_gaussian21_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a20i32_a2215_gaussian21_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a20i32_a2215_gaussian21_V0;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm1_gaussian26_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm1_gaussian26_and0;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm1_gaussian26_and1;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm1_gaussian26_backStall;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm1_gaussian26_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm32_gaussian29_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm32_gaussian29_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm32_gaussian29_V0;
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
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_and0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_V1;
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
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_V2;
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
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_pop1043_push21_gaussian25_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_pop1043_push21_gaussian25_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp3142_push20_gaussian57_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp3142_push20_gaussian57_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp3142_push20_gaussian57_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp3142_push20_gaussian57_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notcmp3142_push20_gaussian57_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notcmp3142_push20_gaussian57_backStall;
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
    wire [0:0] SE_in_i_llvm_fpga_push_i32_add40_push17_gaussian53_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_add40_push17_gaussian53_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_add40_push17_gaussian53_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_add40_push17_gaussian53_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_i_019_replace_phi41_push18_gaussian11_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_i_019_replace_phi41_push18_gaussian11_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_k_017_push13_gaussian38_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_k_017_push13_gaussian38_backStall;
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
    wire [0:0] SE_i_masked_gaussian51_and0;
    wire [0:0] SE_i_masked_gaussian51_backStall;
    wire [0:0] SE_i_masked_gaussian51_V0;
    wire [0:0] SE_i_next_initerations_gaussian6_vt_join_wireValid;
    wire [0:0] SE_i_next_initerations_gaussian6_vt_join_wireStall;
    wire [0:0] SE_i_next_initerations_gaussian6_vt_join_StallValid;
    wire [0:0] SE_i_next_initerations_gaussian6_vt_join_toReg0;
    reg [0:0] SE_i_next_initerations_gaussian6_vt_join_fromReg0;
    wire [0:0] SE_i_next_initerations_gaussian6_vt_join_consumed0;
    wire [0:0] SE_i_next_initerations_gaussian6_vt_join_toReg1;
    reg [0:0] SE_i_next_initerations_gaussian6_vt_join_fromReg1;
    wire [0:0] SE_i_next_initerations_gaussian6_vt_join_consumed1;
    wire [0:0] SE_i_next_initerations_gaussian6_vt_join_and0;
    wire [0:0] SE_i_next_initerations_gaussian6_vt_join_or0;
    wire [0:0] SE_i_next_initerations_gaussian6_vt_join_backStall;
    wire [0:0] SE_i_next_initerations_gaussian6_vt_join_V0;
    wire [0:0] SE_i_next_initerations_gaussian6_vt_join_V1;
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
    wire [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_or1;
    wire [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_or2;
    wire [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_or3;
    wire [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_or4;
    wire [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_or5;
    wire [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_V2;
    wire [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_V3;
    wire [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_V4;
    wire [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_V5;
    wire [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_V6;
    wire [0:0] SE_i_arrayidx12_gaussian0_shift_join_x_wireValid;
    wire [0:0] SE_i_arrayidx12_gaussian0_shift_join_x_and0;
    wire [0:0] SE_i_arrayidx12_gaussian0_shift_join_x_and1;
    wire [0:0] SE_i_arrayidx12_gaussian0_shift_join_x_and2;
    wire [0:0] SE_i_arrayidx12_gaussian0_shift_join_x_backStall;
    wire [0:0] SE_i_arrayidx12_gaussian0_shift_join_x_V0;
    reg [0:0] SE_i_mul_gaussian33_im0_cma_R_s_0;
    reg [0:0] SE_i_mul_gaussian33_im0_cma_R_s_1;
    reg [0:0] SE_i_mul_gaussian33_im0_cma_R_v_0;
    reg [0:0] SE_i_mul_gaussian33_im0_cma_R_v_1;
    reg [0:0] SE_i_mul_gaussian33_im0_cma_R_v_2;
    wire [0:0] SE_i_mul_gaussian33_im0_cma_v_s_0;
    wire [0:0] SE_i_mul_gaussian33_im0_cma_s_tv_0;
    wire [0:0] SE_i_mul_gaussian33_im0_cma_s_tv_1;
    wire [0:0] SE_i_mul_gaussian33_im0_cma_s_tv_2;
    wire [0:0] SE_i_mul_gaussian33_im0_cma_backEN;
    wire [0:0] SE_i_mul_gaussian33_im0_cma_and0;
    wire [0:0] SE_i_mul_gaussian33_im0_cma_or0;
    wire [0:0] SE_i_mul_gaussian33_im0_cma_or1;
    wire [0:0] SE_i_mul_gaussian33_im0_cma_backStall;
    wire [0:0] SE_i_mul_gaussian33_im0_cma_V0;
    wire [0:0] SE_i_mul_gaussian33_im0_cma_V1;
    wire [0:0] SE_i_mul_gaussian33_im0_cma_V2;
    wire [0:0] SE_join_for_coalesced_delay_1_wireValid;
    wire [0:0] SE_join_for_coalesced_delay_1_and0;
    wire [0:0] SE_join_for_coalesced_delay_1_backStall;
    wire [0:0] SE_join_for_coalesced_delay_1_V0;
    wire [0:0] SE_out_redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_wireValid;
    wire [0:0] SE_out_redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_wireStall;
    wire [0:0] SE_out_redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_StallValid;
    wire [0:0] SE_out_redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_toReg0;
    reg [0:0] SE_out_redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_fromReg0;
    wire [0:0] SE_out_redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_consumed0;
    wire [0:0] SE_out_redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_toReg1;
    reg [0:0] SE_out_redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_fromReg1;
    wire [0:0] SE_out_redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_consumed1;
    wire [0:0] SE_out_redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_or0;
    wire [0:0] SE_out_redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_backStall;
    wire [0:0] SE_out_redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_V0;
    wire [0:0] SE_out_redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_V1;
    reg [0:0] SE_redist1_i_arrayidx16_gaussian0_trunc_sel_x_b_1_0_R_v_0;
    reg [0:0] SE_redist1_i_arrayidx16_gaussian0_trunc_sel_x_b_1_0_R_v_1;
    wire [0:0] SE_redist1_i_arrayidx16_gaussian0_trunc_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist1_i_arrayidx16_gaussian0_trunc_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist1_i_arrayidx16_gaussian0_trunc_sel_x_b_1_0_s_tv_1;
    wire [0:0] SE_redist1_i_arrayidx16_gaussian0_trunc_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist1_i_arrayidx16_gaussian0_trunc_sel_x_b_1_0_or0;
    wire [0:0] SE_redist1_i_arrayidx16_gaussian0_trunc_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist1_i_arrayidx16_gaussian0_trunc_sel_x_b_1_0_V0;
    wire [0:0] SE_redist1_i_arrayidx16_gaussian0_trunc_sel_x_b_1_0_V1;
    reg [0:0] SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_0_R_v_0;
    wire [0:0] SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_0_v_s_0;
    wire [0:0] SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_0_s_tv_0;
    wire [0:0] SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_0_backEN;
    wire [0:0] SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_0_backStall;
    wire [0:0] SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_0_V0;
    reg [0:0] SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_1_R_v_0;
    wire [0:0] SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_1_v_s_0;
    wire [0:0] SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_1_s_tv_0;
    wire [0:0] SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_1_backEN;
    wire [0:0] SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_1_backStall;
    wire [0:0] SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_1_V0;
    reg [0:0] SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_2_R_v_0;
    wire [0:0] SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_2_v_s_0;
    wire [0:0] SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_2_s_tv_0;
    wire [0:0] SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_2_backEN;
    wire [0:0] SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_2_backStall;
    wire [0:0] SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_2_V0;
    reg [0:0] SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_3_R_v_0;
    reg [0:0] SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_3_R_v_1;
    wire [0:0] SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_3_v_s_0;
    wire [0:0] SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_3_s_tv_0;
    wire [0:0] SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_3_s_tv_1;
    wire [0:0] SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_3_backEN;
    wire [0:0] SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_3_or0;
    wire [0:0] SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_3_backStall;
    wire [0:0] SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_3_V0;
    wire [0:0] SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_3_V1;
    reg [0:0] SE_redist5_i_arrayidx10_gaussian0_trunc_sel_x_b_1_0_R_v_0;
    wire [0:0] SE_redist5_i_arrayidx10_gaussian0_trunc_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist5_i_arrayidx10_gaussian0_trunc_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist5_i_arrayidx10_gaussian0_trunc_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist5_i_arrayidx10_gaussian0_trunc_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist5_i_arrayidx10_gaussian0_trunc_sel_x_b_1_0_V0;
    reg [0:0] SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_0;
    reg [0:0] SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_1;
    reg [0:0] SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_2;
    reg [0:0] SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_3;
    reg [0:0] SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_4;
    reg [0:0] SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_5;
    reg [0:0] SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_6;
    reg [0:0] SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_7;
    wire [0:0] SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_v_s_0;
    wire [0:0] SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_0;
    wire [0:0] SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_1;
    wire [0:0] SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_2;
    wire [0:0] SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_3;
    wire [0:0] SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_4;
    wire [0:0] SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_5;
    wire [0:0] SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_6;
    wire [0:0] SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_7;
    wire [0:0] SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_backEN;
    wire [0:0] SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_or0;
    wire [0:0] SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_or1;
    wire [0:0] SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_or2;
    wire [0:0] SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_or3;
    wire [0:0] SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_or4;
    wire [0:0] SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_or5;
    wire [0:0] SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_or6;
    wire [0:0] SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_backStall;
    wire [0:0] SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V0;
    wire [0:0] SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V1;
    wire [0:0] SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V2;
    wire [0:0] SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V3;
    wire [0:0] SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V4;
    wire [0:0] SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V5;
    wire [0:0] SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V6;
    wire [0:0] SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V7;
    wire [0:0] SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_wireValid;
    wire [0:0] SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_wireStall;
    wire [0:0] SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_StallValid;
    wire [0:0] SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_toReg0;
    reg [0:0] SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_fromReg0;
    wire [0:0] SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_consumed0;
    wire [0:0] SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_toReg1;
    reg [0:0] SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_fromReg1;
    wire [0:0] SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_consumed1;
    wire [0:0] SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_toReg2;
    reg [0:0] SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_fromReg2;
    wire [0:0] SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_consumed2;
    wire [0:0] SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_toReg3;
    reg [0:0] SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_fromReg3;
    wire [0:0] SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_consumed3;
    wire [0:0] SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_or0;
    wire [0:0] SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_or1;
    wire [0:0] SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_or2;
    wire [0:0] SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_backStall;
    wire [0:0] SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_V0;
    wire [0:0] SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_V1;
    wire [0:0] SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_V2;
    wire [0:0] SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_V3;
    reg [0:0] SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_R_v_0;
    reg [0:0] SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_R_v_1;
    wire [0:0] SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_v_s_0;
    wire [0:0] SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_s_tv_0;
    wire [0:0] SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_s_tv_1;
    wire [0:0] SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_backEN;
    wire [0:0] SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_or0;
    wire [0:0] SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_backStall;
    wire [0:0] SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_V0;
    wire [0:0] SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_V1;
    wire [0:0] SE_out_redist11_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_67_fifo_wireValid;
    wire [0:0] SE_out_redist11_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_67_fifo_and0;
    wire [0:0] SE_out_redist11_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_67_fifo_backStall;
    wire [0:0] SE_out_redist11_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_67_fifo_V0;
    reg [0:0] SE_redist12_bgTrunc_i_mul_gaussian33_sel_x_b_1_0_R_v_0;
    wire [0:0] SE_redist12_bgTrunc_i_mul_gaussian33_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist12_bgTrunc_i_mul_gaussian33_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist12_bgTrunc_i_mul_gaussian33_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist12_bgTrunc_i_mul_gaussian33_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist12_bgTrunc_i_mul_gaussian33_sel_x_b_1_0_V0;
    wire [0:0] SE_out_redist13_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_out_data_out_66_fifo_wireValid;
    wire [0:0] SE_out_redist13_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_out_data_out_66_fifo_and0;
    wire [0:0] SE_out_redist13_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_out_data_out_66_fifo_backStall;
    wire [0:0] SE_out_redist13_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_out_data_out_66_fifo_V0;
    wire [0:0] SE_out_redist14_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_out_data_out_67_fifo_wireValid;
    wire [0:0] SE_out_redist14_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_out_data_out_67_fifo_and0;
    wire [0:0] SE_out_redist14_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_out_data_out_67_fifo_backStall;
    wire [0:0] SE_out_redist14_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_out_data_out_67_fifo_V0;
    reg [0:0] SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_1_0_R_v_0;
    reg [0:0] SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_1_0_R_v_1;
    wire [0:0] SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_1_0_v_s_0;
    wire [0:0] SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_1_0_s_tv_0;
    wire [0:0] SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_1_0_s_tv_1;
    wire [0:0] SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_1_0_backEN;
    wire [0:0] SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_1_0_or0;
    wire [0:0] SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_1_0_backStall;
    wire [0:0] SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_1_0_V0;
    wire [0:0] SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_1_0_V1;
    reg [0:0] SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_0_R_v_0;
    wire [0:0] SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_0_v_s_0;
    wire [0:0] SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_0_s_tv_0;
    wire [0:0] SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_0_backEN;
    wire [0:0] SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_0_backStall;
    wire [0:0] SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_0_V0;
    reg [0:0] SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_1_R_v_0;
    wire [0:0] SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_1_v_s_0;
    wire [0:0] SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_1_s_tv_0;
    wire [0:0] SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_1_backEN;
    wire [0:0] SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_1_backStall;
    wire [0:0] SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_1_V0;
    reg [0:0] SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_2_R_v_0;
    wire [0:0] SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_2_v_s_0;
    wire [0:0] SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_2_s_tv_0;
    wire [0:0] SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_2_backEN;
    wire [0:0] SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_2_backStall;
    wire [0:0] SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_2_V0;
    reg [0:0] SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_3_R_v_0;
    reg [0:0] SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_3_R_v_1;
    wire [0:0] SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_3_v_s_0;
    wire [0:0] SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_3_s_tv_0;
    wire [0:0] SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_3_s_tv_1;
    wire [0:0] SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_3_backEN;
    wire [0:0] SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_3_or0;
    wire [0:0] SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_3_backStall;
    wire [0:0] SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_3_V0;
    wire [0:0] SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_3_V1;
    wire [0:0] SE_out_redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_67_fifo_wireValid;
    wire [0:0] SE_out_redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_67_fifo_and0;
    wire [0:0] SE_out_redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_67_fifo_backStall;
    wire [0:0] SE_out_redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_67_fifo_V0;
    reg [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_R_v_0;
    reg [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_R_v_1;
    reg [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_R_v_2;
    reg [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_R_v_3;
    reg [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_R_v_4;
    wire [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_v_s_0;
    wire [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_s_tv_0;
    wire [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_s_tv_1;
    wire [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_s_tv_2;
    wire [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_s_tv_3;
    wire [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_s_tv_4;
    wire [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_backEN;
    wire [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_or0;
    wire [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_or1;
    wire [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_or2;
    wire [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_or3;
    wire [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_backStall;
    wire [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_V0;
    wire [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_V1;
    wire [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_V2;
    wire [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_V3;
    wire [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_V4;
    reg [0:0] SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_0_R_v_0;
    wire [0:0] SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_0_v_s_0;
    wire [0:0] SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_0_s_tv_0;
    wire [0:0] SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_0_backEN;
    wire [0:0] SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_0_backStall;
    wire [0:0] SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_0_V0;
    reg [0:0] SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_1_R_v_0;
    wire [0:0] SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_1_v_s_0;
    wire [0:0] SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_1_s_tv_0;
    wire [0:0] SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_1_backEN;
    wire [0:0] SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_1_backStall;
    wire [0:0] SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_1_V0;
    reg [0:0] SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_2_R_v_0;
    wire [0:0] SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_2_v_s_0;
    wire [0:0] SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_2_s_tv_0;
    wire [0:0] SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_2_backEN;
    wire [0:0] SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_2_backStall;
    wire [0:0] SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_2_V0;
    reg [0:0] SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_R_v_0;
    reg [0:0] SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_R_v_1;
    wire [0:0] SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_v_s_0;
    wire [0:0] SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_s_tv_0;
    wire [0:0] SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_s_tv_1;
    wire [0:0] SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_backEN;
    wire [0:0] SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_or0;
    wire [0:0] SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_backStall;
    wire [0:0] SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_V0;
    wire [0:0] SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_V1;
    wire [0:0] SE_out_redist22_i_first_cleanup_xor_gaussian2_q_66_fifo_wireValid;
    wire [0:0] SE_out_redist22_i_first_cleanup_xor_gaussian2_q_66_fifo_and0;
    wire [0:0] SE_out_redist22_i_first_cleanup_xor_gaussian2_q_66_fifo_and1;
    wire [0:0] SE_out_redist22_i_first_cleanup_xor_gaussian2_q_66_fifo_and2;
    wire [0:0] SE_out_redist22_i_first_cleanup_xor_gaussian2_q_66_fifo_backStall;
    wire [0:0] SE_out_redist22_i_first_cleanup_xor_gaussian2_q_66_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_StallValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_toReg0;
    reg [0:0] SE_out_coalesced_delay_0_fifo_fromReg0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_consumed0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_toReg1;
    reg [0:0] SE_out_coalesced_delay_0_fifo_fromReg1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_consumed1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_or0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V1;
    wire [0:0] SE_out_coalesced_delay_1_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_1_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_and1;
    wire [0:0] SE_out_coalesced_delay_1_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_1_fifo_V0;
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
    wire [0:0] SE_out_bubble_out_gaussian_B7_merge_reg_aunroll_x_6_wireValid;
    wire [0:0] SE_out_bubble_out_gaussian_B7_merge_reg_aunroll_x_6_backStall;
    wire [0:0] SE_out_bubble_out_gaussian_B7_merge_reg_aunroll_x_6_V0;
    wire [0:0] SE_out_bubble_out_i_mul_gaussian33_ma3_cma_data_wireValid;
    wire [0:0] SE_out_bubble_out_i_mul_gaussian33_ma3_cma_data_and0;
    wire [0:0] SE_out_bubble_out_i_mul_gaussian33_ma3_cma_data_and1;
    wire [0:0] SE_out_bubble_out_i_mul_gaussian33_ma3_cma_data_backStall;
    wire [0:0] SE_out_bubble_out_i_mul_gaussian33_ma3_cma_data_V0;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_1_reg_V0;
    reg [0:0] bubble_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_1_reg_V0;
    reg [0:0] bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_reg_V0;
    wire [0:0] bubble_out_gaussian_B7_merge_reg_aunroll_x_6_reg_valid_in;
    wire bubble_out_gaussian_B7_merge_reg_aunroll_x_6_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_gaussian_B7_merge_reg_aunroll_x_6_reg_stall_in;
    wire bubble_out_gaussian_B7_merge_reg_aunroll_x_6_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_gaussian_B7_merge_reg_aunroll_x_6_reg_valid_out;
    wire bubble_out_gaussian_B7_merge_reg_aunroll_x_6_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_gaussian_B7_merge_reg_aunroll_x_6_reg_stall_out;
    wire bubble_out_gaussian_B7_merge_reg_aunroll_x_6_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_mul_gaussian33_im0_cma_data_reg_valid_in;
    wire bubble_out_i_mul_gaussian33_im0_cma_data_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_mul_gaussian33_im0_cma_data_reg_stall_in;
    wire bubble_out_i_mul_gaussian33_im0_cma_data_reg_stall_in_bitsignaltemp;
    wire [27:0] bubble_out_i_mul_gaussian33_im0_cma_data_reg_data_in;
    wire [0:0] bubble_out_i_mul_gaussian33_im0_cma_data_reg_valid_out;
    wire bubble_out_i_mul_gaussian33_im0_cma_data_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_mul_gaussian33_im0_cma_data_reg_stall_out;
    wire bubble_out_i_mul_gaussian33_im0_cma_data_reg_stall_out_bitsignaltemp;
    wire [27:0] bubble_out_i_mul_gaussian33_im0_cma_data_reg_data_out;
    wire [0:0] bubble_out_i_mul_gaussian33_im8_cma_data_reg_valid_in;
    wire bubble_out_i_mul_gaussian33_im8_cma_data_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_mul_gaussian33_im8_cma_data_reg_stall_in;
    wire bubble_out_i_mul_gaussian33_im8_cma_data_reg_stall_in_bitsignaltemp;
    wire [35:0] bubble_out_i_mul_gaussian33_im8_cma_data_reg_data_in;
    wire [0:0] bubble_out_i_mul_gaussian33_im8_cma_data_reg_valid_out;
    wire bubble_out_i_mul_gaussian33_im8_cma_data_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_mul_gaussian33_im8_cma_data_reg_stall_out;
    wire bubble_out_i_mul_gaussian33_im8_cma_data_reg_stall_out_bitsignaltemp;
    wire [35:0] bubble_out_i_mul_gaussian33_im8_cma_data_reg_data_out;
    wire [0:0] bubble_out_i_mul_gaussian33_ma3_cma_data_reg_valid_in;
    wire bubble_out_i_mul_gaussian33_ma3_cma_data_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_mul_gaussian33_ma3_cma_data_reg_stall_in;
    wire bubble_out_i_mul_gaussian33_ma3_cma_data_reg_stall_in_bitsignaltemp;
    wire [32:0] bubble_out_i_mul_gaussian33_ma3_cma_data_reg_data_in;
    wire [0:0] bubble_out_i_mul_gaussian33_ma3_cma_data_reg_valid_out;
    wire bubble_out_i_mul_gaussian33_ma3_cma_data_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_mul_gaussian33_ma3_cma_data_reg_stall_out;
    wire bubble_out_i_mul_gaussian33_ma3_cma_data_reg_stall_out_bitsignaltemp;
    wire [32:0] bubble_out_i_mul_gaussian33_ma3_cma_data_reg_data_out;
    wire [0:0] SR_SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_i_valid;
    reg [0:0] SR_SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_r_valid;
    reg [0:0] SR_SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_r_data0;
    wire [0:0] SR_SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_backStall;
    wire [0:0] SR_SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_V;
    wire [0:0] SR_SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_D0;
    wire [0:0] SR_SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_i_valid;
    reg [0:0] SR_SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_r_valid;
    reg [0:0] SR_SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_r_data0;
    wire [0:0] SR_SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_backStall;
    wire [0:0] SR_SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_V;
    wire [0:0] SR_SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_D0;


    // SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push12_gaussian43(STALLENABLE,1025)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push12_gaussian43_V0 = SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push12_gaussian43_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push12_gaussian43_backStall = i_llvm_fpga_push_i6_fpga_indvars_iv_push12_gaussian43_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push12_gaussian43_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push12_gaussian43_and0 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_V2;
    assign SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push12_gaussian43_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_V5 & SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push12_gaussian43_and0;

    // SE_out_i_llvm_fpga_push_i2_cleanups_push16_gaussian50(STALLENABLE,1016)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i2_cleanups_push16_gaussian50_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i2_cleanups_push16_gaussian50_wireValid = i_llvm_fpga_push_i2_cleanups_push16_gaussian50_out_valid_out;

    // bubble_join_i_llvm_fpga_pipeline_keep_going_gaussian4(BITJOIN,856)
    assign bubble_join_i_llvm_fpga_pipeline_keep_going_gaussian4_q = i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out;

    // bubble_select_i_llvm_fpga_pipeline_keep_going_gaussian4(BITSELECT,857)
    assign bubble_select_i_llvm_fpga_pipeline_keep_going_gaussian4_b = $unsigned(bubble_join_i_llvm_fpga_pipeline_keep_going_gaussian4_q[0:0]);

    // SE_i_arrayidx12_gaussian0_shift_join_x(STALLENABLE,1055)
    // Valid signal propagation
    assign SE_i_arrayidx12_gaussian0_shift_join_x_V0 = SE_i_arrayidx12_gaussian0_shift_join_x_wireValid;
    // Backward Stall generation
    assign SE_i_arrayidx12_gaussian0_shift_join_x_backStall = i_llvm_fpga_mem_lm32_gaussian29_out_o_stall | ~ (SE_i_arrayidx12_gaussian0_shift_join_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_arrayidx12_gaussian0_shift_join_x_and0 = SE_redist1_i_arrayidx16_gaussian0_trunc_sel_x_b_1_0_V1;
    assign SE_i_arrayidx12_gaussian0_shift_join_x_and1 = i_llvm_fpga_ffwd_dest_p1024i32_c2113_gaussian17_out_valid_out & SE_i_arrayidx12_gaussian0_shift_join_x_and0;
    assign SE_i_arrayidx12_gaussian0_shift_join_x_and2 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_V0 & SE_i_arrayidx12_gaussian0_shift_join_x_and1;
    assign SE_i_arrayidx12_gaussian0_shift_join_x_wireValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_V0 & SE_i_arrayidx12_gaussian0_shift_join_x_and2;

    // i_idxprom11_gaussian16_vt_const_63(CONSTANT,25)
    assign i_idxprom11_gaussian16_vt_const_63_q = $unsigned(32'b00000000000000000000000000000000);

    // SE_out_i_llvm_fpga_ffwd_dest_i32_j_02018_gaussian15(STALLENABLE,966)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_j_02018_gaussian15_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_j_02018_gaussian15_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_j_02018_gaussian15_backStall = SE_redist1_i_arrayidx16_gaussian0_trunc_sel_x_b_1_0_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_j_02018_gaussian15_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_j_02018_gaussian15_wireValid = i_llvm_fpga_ffwd_dest_i32_j_02018_gaussian15_out_valid_out;

    // i_llvm_fpga_ffwd_dest_i32_j_02018_gaussian15(BLACKBOX,40)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_4_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    gaussian_i_llvm_fpga_ffwd_dest_i32_j_02018_0 thei_llvm_fpga_ffwd_dest_i32_j_02018_gaussian15 (
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_j_02018_gaussian15_backStall),
        .in_valid_in(SE_out_gaussian_B7_merge_reg_aunroll_x_V0),
        .out_dest_data_out_4_0(i_llvm_fpga_ffwd_dest_i32_j_02018_gaussian15_out_dest_data_out_4_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_j_02018_gaussian15_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_j_02018_gaussian15_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_j_02018_gaussian15(BITJOIN,831)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_j_02018_gaussian15_q = i_llvm_fpga_ffwd_dest_i32_j_02018_gaussian15_out_dest_data_out_4_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_j_02018_gaussian15(BITSELECT,832)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_j_02018_gaussian15_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_j_02018_gaussian15_q[31:0]);

    // i_idxprom11_gaussian16_sel_x(BITSELECT,222)@2
    assign i_idxprom11_gaussian16_sel_x_b = {32'b00000000000000000000000000000000, bubble_select_i_llvm_fpga_ffwd_dest_i32_j_02018_gaussian15_b[31:0]};

    // i_idxprom11_gaussian16_vt_select_31(BITSELECT,27)@2
    assign i_idxprom11_gaussian16_vt_select_31_b = i_idxprom11_gaussian16_sel_x_b[31:0];

    // i_idxprom11_gaussian16_vt_join(BITJOIN,26)@2
    assign i_idxprom11_gaussian16_vt_join_q = {i_idxprom11_gaussian16_vt_const_63_q, i_idxprom11_gaussian16_vt_select_31_b};

    // i_arrayidx12_gaussian0_narrow_x(BITSELECT,197)@2
    assign i_arrayidx12_gaussian0_narrow_x_b = i_idxprom11_gaussian16_vt_join_q[61:0];

    // redist2_i_arrayidx12_gaussian0_narrow_x_b_1_0(REG,795)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_arrayidx12_gaussian0_narrow_x_b_1_0_q <= $unsigned(62'b00000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist1_i_arrayidx16_gaussian0_trunc_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist2_i_arrayidx12_gaussian0_narrow_x_b_1_0_q <= $unsigned(i_arrayidx12_gaussian0_narrow_x_b);
        end
    end

    // i_arrayidx10_gaussian0_c_i2_02_x(CONSTANT,180)
    assign i_arrayidx10_gaussian0_c_i2_02_x_q = $unsigned(2'b00);

    // i_arrayidx12_gaussian0_shift_join_x(BITJOIN,198)@3
    assign i_arrayidx12_gaussian0_shift_join_x_q = {redist2_i_arrayidx12_gaussian0_narrow_x_b_1_0_q, i_arrayidx10_gaussian0_c_i2_02_x_q};

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_c2113_gaussian17(BITJOIN,840)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_c2113_gaussian17_q = i_llvm_fpga_ffwd_dest_p1024i32_c2113_gaussian17_out_dest_data_out_0_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_c2113_gaussian17(BITSELECT,841)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_c2113_gaussian17_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_c2113_gaussian17_q[63:0]);

    // i_arrayidx12_gaussian0_add_x(ADD,195)@3
    assign i_arrayidx12_gaussian0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_c2113_gaussian17_b};
    assign i_arrayidx12_gaussian0_add_x_b = {1'b0, i_arrayidx12_gaussian0_shift_join_x_q};
    assign i_arrayidx12_gaussian0_add_x_o = $unsigned(i_arrayidx12_gaussian0_add_x_a) + $unsigned(i_arrayidx12_gaussian0_add_x_b);
    assign i_arrayidx12_gaussian0_add_x_q = i_arrayidx12_gaussian0_add_x_o[64:0];

    // i_arrayidx12_gaussian0_dupName_0_trunc_sel_x(BITSELECT,200)@3
    assign i_arrayidx12_gaussian0_dupName_0_trunc_sel_x_b = i_arrayidx12_gaussian0_add_x_q[63:0];

    // i_llvm_fpga_mem_lm32_gaussian29(BLACKBOX,45)@3
    // in in_i_stall@20000000
    // out out_lm32_gaussian_avm_address@20000000
    // out out_lm32_gaussian_avm_burstcount@20000000
    // out out_lm32_gaussian_avm_byteenable@20000000
    // out out_lm32_gaussian_avm_enable@20000000
    // out out_lm32_gaussian_avm_read@20000000
    // out out_lm32_gaussian_avm_write@20000000
    // out out_lm32_gaussian_avm_writedata@20000000
    // out out_o_readdata@35
    // out out_o_stall@20000000
    // out out_o_valid@35
    gaussian_i_llvm_fpga_mem_lm32_0 thei_llvm_fpga_mem_lm32_gaussian29 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx12_gaussian0_dupName_0_trunc_sel_x_b),
        .in_i_dependence(i_memdep_phi_or_gaussian28_q),
        .in_i_predicate(i_first_cleanup_xor_or_gaussian23_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm32_gaussian29_backStall),
        .in_i_valid(SE_i_arrayidx12_gaussian0_shift_join_x_V0),
        .in_lm32_gaussian_avm_readdata(in_lm32_gaussian_avm_readdata),
        .in_lm32_gaussian_avm_readdatavalid(in_lm32_gaussian_avm_readdatavalid),
        .in_lm32_gaussian_avm_waitrequest(in_lm32_gaussian_avm_waitrequest),
        .in_lm32_gaussian_avm_writeack(in_lm32_gaussian_avm_writeack),
        .out_lm32_gaussian_avm_address(i_llvm_fpga_mem_lm32_gaussian29_out_lm32_gaussian_avm_address),
        .out_lm32_gaussian_avm_burstcount(i_llvm_fpga_mem_lm32_gaussian29_out_lm32_gaussian_avm_burstcount),
        .out_lm32_gaussian_avm_byteenable(i_llvm_fpga_mem_lm32_gaussian29_out_lm32_gaussian_avm_byteenable),
        .out_lm32_gaussian_avm_enable(i_llvm_fpga_mem_lm32_gaussian29_out_lm32_gaussian_avm_enable),
        .out_lm32_gaussian_avm_read(i_llvm_fpga_mem_lm32_gaussian29_out_lm32_gaussian_avm_read),
        .out_lm32_gaussian_avm_write(i_llvm_fpga_mem_lm32_gaussian29_out_lm32_gaussian_avm_write),
        .out_lm32_gaussian_avm_writedata(i_llvm_fpga_mem_lm32_gaussian29_out_lm32_gaussian_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm32_gaussian29_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm32_gaussian29_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm32_gaussian29_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_lm32_gaussian29(BITJOIN,846)
    assign bubble_join_i_llvm_fpga_mem_lm32_gaussian29_q = i_llvm_fpga_mem_lm32_gaussian29_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm32_gaussian29(BITSELECT,847)
    assign bubble_select_i_llvm_fpga_mem_lm32_gaussian29_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm32_gaussian29_q[31:0]);

    // i_mul_gaussian33_bs2_merged_bit_select(BITSELECT,754)@35
    assign i_mul_gaussian33_bs2_merged_bit_select_b = bubble_select_i_llvm_fpga_mem_lm32_gaussian29_b[31:18];
    assign i_mul_gaussian33_bs2_merged_bit_select_c = bubble_select_i_llvm_fpga_mem_lm32_gaussian29_b[17:0];

    // bubble_join_i_llvm_fpga_mem_lm53_gaussian32(BITJOIN,849)
    assign bubble_join_i_llvm_fpga_mem_lm53_gaussian32_q = i_llvm_fpga_mem_lm53_gaussian32_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm53_gaussian32(BITSELECT,850)
    assign bubble_select_i_llvm_fpga_mem_lm53_gaussian32_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm53_gaussian32_q[31:0]);

    // i_mul_gaussian33_bs1_merged_bit_select(BITSELECT,755)@35
    assign i_mul_gaussian33_bs1_merged_bit_select_b = bubble_select_i_llvm_fpga_mem_lm53_gaussian32_b[31:18];
    assign i_mul_gaussian33_bs1_merged_bit_select_c = bubble_select_i_llvm_fpga_mem_lm53_gaussian32_b[17:0];

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_mul_gaussian33_ma3_cma(CHAINMULTADD,752)@35 + 3
    assign i_mul_gaussian33_ma3_cma_reset = ~ (resetn);
    assign i_mul_gaussian33_ma3_cma_ena0 = SE_i_mul_gaussian33_im0_cma_backEN[0];
    assign i_mul_gaussian33_ma3_cma_ena1 = i_mul_gaussian33_ma3_cma_ena0;
    assign i_mul_gaussian33_ma3_cma_ena2 = i_mul_gaussian33_ma3_cma_ena0;

    assign i_mul_gaussian33_ma3_cma_a0 = i_mul_gaussian33_bs1_merged_bit_select_b;
    assign i_mul_gaussian33_ma3_cma_c0 = i_mul_gaussian33_bs2_merged_bit_select_c;
    assign i_mul_gaussian33_ma3_cma_a1 = i_mul_gaussian33_bs2_merged_bit_select_b;
    assign i_mul_gaussian33_ma3_cma_c1 = i_mul_gaussian33_bs1_merged_bit_select_c;
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
    ) i_mul_gaussian33_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_gaussian33_ma3_cma_ena2, i_mul_gaussian33_ma3_cma_ena1, i_mul_gaussian33_ma3_cma_ena0 }),
        .aclr({ i_mul_gaussian33_ma3_cma_reset, i_mul_gaussian33_ma3_cma_reset }),
        .ay(i_mul_gaussian33_ma3_cma_a1),
        .by(i_mul_gaussian33_ma3_cma_a0),
        .ax(i_mul_gaussian33_ma3_cma_c1),
        .bx(i_mul_gaussian33_ma3_cma_c0),
        .resulta(i_mul_gaussian33_ma3_cma_s0),
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
    i_mul_gaussian33_ma3_cma_delay ( .xin(i_mul_gaussian33_ma3_cma_s0), .xout(i_mul_gaussian33_ma3_cma_qq), .ena(SE_i_mul_gaussian33_im0_cma_backEN[0]), .clk(clock), .aclr(resetn) );
    assign i_mul_gaussian33_ma3_cma_q = $unsigned(i_mul_gaussian33_ma3_cma_qq[32:0]);

    // bubble_join_i_mul_gaussian33_ma3_cma(BITJOIN,917)
    assign bubble_join_i_mul_gaussian33_ma3_cma_q = i_mul_gaussian33_ma3_cma_q;

    // bubble_select_i_mul_gaussian33_ma3_cma(BITSELECT,918)
    assign bubble_select_i_mul_gaussian33_ma3_cma_b = $unsigned(bubble_out_i_mul_gaussian33_ma3_cma_data_reg_data_out[32:0]);

    // i_mul_gaussian33_sums_align_1(BITSHIFT,255)@38
    assign i_mul_gaussian33_sums_align_1_qint = { bubble_select_i_mul_gaussian33_ma3_cma_b, 18'b000000000000000000 };
    assign i_mul_gaussian33_sums_align_1_q = i_mul_gaussian33_sums_align_1_qint[50:0];

    // bubble_select_i_mul_gaussian33_im0_cma(BITSELECT,912)
    assign bubble_select_i_mul_gaussian33_im0_cma_b = $unsigned(bubble_out_i_mul_gaussian33_im0_cma_data_reg_data_out[27:0]);

    // bubble_select_i_mul_gaussian33_im8_cma(BITSELECT,915)
    assign bubble_select_i_mul_gaussian33_im8_cma_b = $unsigned(bubble_out_i_mul_gaussian33_im8_cma_data_reg_data_out[35:0]);

    // i_mul_gaussian33_sums_join_0(BITJOIN,254)@38
    assign i_mul_gaussian33_sums_join_0_q = {bubble_select_i_mul_gaussian33_im0_cma_b, bubble_select_i_mul_gaussian33_im8_cma_b};

    // i_mul_gaussian33_sums_result_add_0_0(ADD,257)@38
    assign i_mul_gaussian33_sums_result_add_0_0_a = {1'b0, i_mul_gaussian33_sums_join_0_q};
    assign i_mul_gaussian33_sums_result_add_0_0_b = {14'b00000000000000, i_mul_gaussian33_sums_align_1_q};
    assign i_mul_gaussian33_sums_result_add_0_0_o = $unsigned(i_mul_gaussian33_sums_result_add_0_0_a) + $unsigned(i_mul_gaussian33_sums_result_add_0_0_b);
    assign i_mul_gaussian33_sums_result_add_0_0_q = i_mul_gaussian33_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul_gaussian33_sel_x(BITSELECT,166)@38
    assign bgTrunc_i_mul_gaussian33_sel_x_in = i_mul_gaussian33_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul_gaussian33_sel_x_b = bgTrunc_i_mul_gaussian33_sel_x_in[31:0];

    // redist12_bgTrunc_i_mul_gaussian33_sel_x_b_1_0(REG,805)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_bgTrunc_i_mul_gaussian33_sel_x_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist12_bgTrunc_i_mul_gaussian33_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist12_bgTrunc_i_mul_gaussian33_sel_x_b_1_0_q <= $unsigned(bgTrunc_i_mul_gaussian33_sel_x_b);
        end
    end

    // bubble_join_i_llvm_fpga_mem_lm1_gaussian26(BITJOIN,843)
    assign bubble_join_i_llvm_fpga_mem_lm1_gaussian26_q = i_llvm_fpga_mem_lm1_gaussian26_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm1_gaussian26(BITSELECT,844)
    assign bubble_select_i_llvm_fpga_mem_lm1_gaussian26_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm1_gaussian26_q[31:0]);

    // i_sub_gaussian34(SUB,80)@39
    assign i_sub_gaussian34_a = {1'b0, bubble_select_i_llvm_fpga_mem_lm1_gaussian26_b};
    assign i_sub_gaussian34_b = {1'b0, redist12_bgTrunc_i_mul_gaussian33_sel_x_b_1_0_q};
    assign i_sub_gaussian34_o = $unsigned(i_sub_gaussian34_a) - $unsigned(i_sub_gaussian34_b);
    assign i_sub_gaussian34_q = i_sub_gaussian34_o[32:0];

    // bgTrunc_i_sub_gaussian34_sel_x(BITSELECT,167)@39
    assign bgTrunc_i_sub_gaussian34_sel_x_b = $unsigned(i_sub_gaussian34_q[31:0]);

    // SE_out_i_llvm_fpga_push_i1_memdep_phi4_push14_gaussian36(STALLENABLE,1006)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi4_push14_gaussian36_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi4_push14_gaussian36_wireValid = i_llvm_fpga_push_i1_memdep_phi4_push14_gaussian36_out_valid_out;

    // redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0(REG,815)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_backEN == 1'b1)
        begin
            redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_q <= $unsigned(bubble_select_i_llvm_fpga_pipeline_keep_going_gaussian4_b);
        end
    end

    // bubble_join_i_llvm_fpga_mem_memdep_gaussian35(BITJOIN,852)
    assign bubble_join_i_llvm_fpga_mem_memdep_gaussian35_q = i_llvm_fpga_mem_memdep_gaussian35_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_gaussian35(BITSELECT,853)
    assign bubble_select_i_llvm_fpga_mem_memdep_gaussian35_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_gaussian35_q[0:0]);

    // i_llvm_fpga_push_i1_memdep_phi4_push14_gaussian36(BLACKBOX,60)@70
    // in in_stall_in@20000000
    // out out_data_out@71
    // out out_feedback_out_14@20000000
    // out out_feedback_valid_out_14@20000000
    // out out_stall_out@20000000
    // out out_valid_out@71
    gaussian_i_llvm_fpga_push_i1_memdep_phi4_push14_0 thei_llvm_fpga_push_i1_memdep_phi4_push14_gaussian36 (
        .in_data_in(bubble_select_i_llvm_fpga_mem_memdep_gaussian35_b),
        .in_feedback_stall_in_14(i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_out_feedback_stall_out_14),
        .in_keep_going(redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_q),
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

    // SE_out_i_llvm_fpga_push_i1_push19_gaussian55(STALLENABLE,1014)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_push19_gaussian55_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_push19_gaussian55_wireValid = i_llvm_fpga_push_i1_push19_gaussian55_out_valid_out;

    // SE_out_i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56(STALLENABLE,988)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_backStall) & SE_out_i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_wireValid) | SE_out_i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_notcmp3142_push20_gaussian57_backStall) & SE_out_i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_wireValid) | SE_out_i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_StallValid = SE_out_i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_backStall & SE_out_i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_toReg0 = SE_out_i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_StallValid & SE_out_i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_toReg1 = SE_out_i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_StallValid & SE_out_i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_or0 = SE_out_i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_consumed1 & SE_out_i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_or0);
    assign SE_out_i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_backStall = SE_out_i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_V0 = SE_out_i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_V1 = SE_out_i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_wireValid = i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_out_valid_out;

    // SE_out_i_llvm_fpga_push_i1_notcmp3142_push20_gaussian57(STALLENABLE,1010)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_notcmp3142_push20_gaussian57_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_notcmp3142_push20_gaussian57_wireValid = i_llvm_fpga_push_i1_notcmp3142_push20_gaussian57_out_valid_out;

    // bubble_join_i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56(BITJOIN,866)
    assign bubble_join_i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_q = i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56(BITSELECT,867)
    assign bubble_select_i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_q[0:0]);

    // i_llvm_fpga_push_i1_notcmp3142_push20_gaussian57(BLACKBOX,62)@70
    // in in_stall_in@20000000
    // out out_data_out@71
    // out out_feedback_out_20@20000000
    // out out_feedback_valid_out_20@20000000
    // out out_stall_out@20000000
    // out out_valid_out@71
    gaussian_i_llvm_fpga_push_i1_notcmp3142_push20_0 thei_llvm_fpga_push_i1_notcmp3142_push20_gaussian57 (
        .in_data_in(bubble_select_i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_b),
        .in_feedback_stall_in_20(i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_out_feedback_stall_out_20),
        .in_keep_going(redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_q),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_notcmp3142_push20_gaussian57_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_notcmp3142_push20_gaussian57_V0),
        .out_data_out(),
        .out_feedback_out_20(i_llvm_fpga_push_i1_notcmp3142_push20_gaussian57_out_feedback_out_20),
        .out_feedback_valid_out_20(i_llvm_fpga_push_i1_notcmp3142_push20_gaussian57_out_feedback_valid_out_20),
        .out_stall_out(i_llvm_fpga_push_i1_notcmp3142_push20_gaussian57_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_notcmp3142_push20_gaussian57_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56(BLACKBOX,51)@69
    // in in_stall_in@20000000
    // out out_data_out@70
    // out out_feedback_stall_out_20@20000000
    // out out_stall_out@20000000
    // out out_valid_out@70
    gaussian_i_llvm_fpga_pop_i1_notcmp3142_pop20_0 thei_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56 (
        .in_data_in(sel_for_coalesced_delay_0_c),
        .in_dir(redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_q),
        .in_feedback_in_20(i_llvm_fpga_push_i1_notcmp3142_push20_gaussian57_out_feedback_out_20),
        .in_feedback_valid_in_20(i_llvm_fpga_push_i1_notcmp3142_push20_gaussian57_out_feedback_valid_out_20),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_backStall),
        .in_valid_in(SE_out_coalesced_delay_0_fifo_V0),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_out_data_out),
        .out_feedback_stall_out_20(i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_out_feedback_stall_out_20),
        .out_stall_out(i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5(STALLENABLE,994)
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
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_consumed1 = (~ (SE_i_next_initerations_gaussian6_vt_join_backStall) & SE_out_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_wireValid) | SE_out_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_fromReg1;
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

    // SE_out_i_llvm_fpga_push_i2_initerations_push15_gaussian7(STALLENABLE,1018)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i2_initerations_push15_gaussian7_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i2_initerations_push15_gaussian7_wireValid = i_llvm_fpga_push_i2_initerations_push15_gaussian7_out_valid_out;

    // rightShiftStage0Idx1Rng1_uid305_i_next_initerations_gaussian0_shift_x(BITSELECT,304)@70
    assign rightShiftStage0Idx1Rng1_uid305_i_next_initerations_gaussian0_shift_x_b = bubble_select_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_b[1:1];

    // rightShiftStage0Idx1_uid307_i_next_initerations_gaussian0_shift_x(BITJOIN,306)@70
    assign rightShiftStage0Idx1_uid307_i_next_initerations_gaussian0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid305_i_next_initerations_gaussian0_shift_x_b};

    // bubble_join_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5(BITJOIN,877)
    assign bubble_join_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_q = i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5(BITSELECT,878)
    assign bubble_select_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_b = $unsigned(bubble_join_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_q[1:0]);

    // rightShiftStage0_uid309_i_next_initerations_gaussian0_shift_x(MUX,308)@70
    assign rightShiftStage0_uid309_i_next_initerations_gaussian0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid309_i_next_initerations_gaussian0_shift_x_s or bubble_select_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_b or rightShiftStage0Idx1_uid307_i_next_initerations_gaussian0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid309_i_next_initerations_gaussian0_shift_x_s)
            1'b0 : rightShiftStage0_uid309_i_next_initerations_gaussian0_shift_x_q = bubble_select_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_b;
            1'b1 : rightShiftStage0_uid309_i_next_initerations_gaussian0_shift_x_q = rightShiftStage0Idx1_uid307_i_next_initerations_gaussian0_shift_x_q;
            default : rightShiftStage0_uid309_i_next_initerations_gaussian0_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations_gaussian6_vt_select_0(BITSELECT,77)@70
    assign i_next_initerations_gaussian6_vt_select_0_b = rightShiftStage0_uid309_i_next_initerations_gaussian0_shift_x_q[0:0];

    // i_next_initerations_gaussian6_vt_join(BITJOIN,76)@70
    assign i_next_initerations_gaussian6_vt_join_q = {GND_q, i_next_initerations_gaussian6_vt_select_0_b};

    // i_llvm_fpga_push_i2_initerations_push15_gaussian7(BLACKBOX,66)@70
    // in in_stall_in@20000000
    // out out_data_out@71
    // out out_feedback_out_15@20000000
    // out out_feedback_valid_out_15@20000000
    // out out_stall_out@20000000
    // out out_valid_out@71
    gaussian_i_llvm_fpga_push_i2_initerations_push15_0 thei_llvm_fpga_push_i2_initerations_push15_gaussian7 (
        .in_data_in(i_next_initerations_gaussian6_vt_join_q),
        .in_feedback_stall_in_15(i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_out_feedback_stall_out_15),
        .in_keep_going(redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_q),
        .in_stall_in(SE_out_i_llvm_fpga_push_i2_initerations_push15_gaussian7_backStall),
        .in_valid_in(SE_i_next_initerations_gaussian6_vt_join_V1),
        .out_data_out(),
        .out_feedback_out_15(i_llvm_fpga_push_i2_initerations_push15_gaussian7_out_feedback_out_15),
        .out_feedback_valid_out_15(i_llvm_fpga_push_i2_initerations_push15_gaussian7_out_feedback_valid_out_15),
        .out_stall_out(i_llvm_fpga_push_i2_initerations_push15_gaussian7_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i2_initerations_push15_gaussian7_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations_pop15_gaussian5(BLACKBOX,54)@69
    // in in_stall_in@20000000
    // out out_data_out@70
    // out out_feedback_stall_out_15@20000000
    // out out_stall_out@20000000
    // out out_valid_out@70
    gaussian_i_llvm_fpga_pop_i2_initerations_pop15_0 thei_llvm_fpga_pop_i2_initerations_pop15_gaussian5 (
        .in_data_in(c_i2_158_q),
        .in_dir(redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_q),
        .in_feedback_in_15(i_llvm_fpga_push_i2_initerations_push15_gaussian7_out_feedback_out_15),
        .in_feedback_valid_in_15(i_llvm_fpga_push_i2_initerations_push15_gaussian7_out_feedback_valid_out_15),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_backStall),
        .in_valid_in(SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_V1),
        .out_data_out(i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_out_data_out),
        .out_feedback_stall_out_15(i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_out_feedback_stall_out_15),
        .out_stall_out(i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0(STALLENABLE,1148)
    // Valid signal propagation
    assign SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_V0 = SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_R_v_0;
    assign SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_V1 = SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_R_v_1;
    // Stall signal propagation
    assign SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_s_tv_0 = SE_out_coalesced_delay_0_fifo_backStall & SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_R_v_0;
    assign SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_s_tv_1 = i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_out_stall_out & SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_R_v_1;
    // Backward Enable generation
    assign SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_or0 = SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_s_tv_0;
    assign SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_backEN = ~ (SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_s_tv_1 | SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_v_s_0 = SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_backEN & SR_SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_V;
    // Backward Stall generation
    assign SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_backStall = ~ (SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_R_v_0 <= 1'b0;
            SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_backEN == 1'b0)
            begin
                SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_R_v_0 <= SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_R_v_0 & SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_s_tv_0;
            end
            else
            begin
                SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_R_v_0 <= SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_v_s_0;
            end

            if (SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_backEN == 1'b0)
            begin
                SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_R_v_1 <= SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_R_v_1 & SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_s_tv_1;
            end
            else
            begin
                SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_R_v_1 <= SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_v_s_0;
            end

        end
    end

    // bubble_join_stall_entry(BITJOIN,898)
    assign bubble_join_stall_entry_q = {in_unnamed_gaussian15, in_notcmp3148, in_memdep_phi_pop1049, in_i_019_replace_phi47, in_forked27, in_add39_pop1150};

    // bubble_select_stall_entry(BITSELECT,899)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:32]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[64:33]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[65:65]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[66:66]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[67:67]);

    // SE_stall_entry(STALLENABLE,1037)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = gaussian_B7_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // gaussian_B7_merge_reg_aunroll_x(BLACKBOX,178)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    // out out_data_out_3_tpl@1
    // out out_data_out_4_tpl@1
    // out out_data_out_5_tpl@1
    gaussian_B7_merge_reg thegaussian_B7_merge_reg_aunroll_x (
        .in_stall_in(SE_out_gaussian_B7_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_c),
        .in_data_in_1_tpl(bubble_select_stall_entry_d),
        .in_data_in_2_tpl(bubble_select_stall_entry_g),
        .in_data_in_3_tpl(bubble_select_stall_entry_f),
        .in_data_in_4_tpl(bubble_select_stall_entry_e),
        .in_data_in_5_tpl(bubble_select_stall_entry_b),
        .out_stall_out(gaussian_B7_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(gaussian_B7_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(gaussian_B7_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(gaussian_B7_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(gaussian_B7_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(gaussian_B7_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_gaussian_B7_merge_reg_aunroll_x(BITJOIN,902)
    assign bubble_join_gaussian_B7_merge_reg_aunroll_x_q = {gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl, gaussian_B7_merge_reg_aunroll_x_out_data_out_4_tpl, gaussian_B7_merge_reg_aunroll_x_out_data_out_3_tpl, gaussian_B7_merge_reg_aunroll_x_out_data_out_2_tpl, gaussian_B7_merge_reg_aunroll_x_out_data_out_1_tpl, gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_gaussian_B7_merge_reg_aunroll_x(BITSELECT,903)
    assign bubble_select_gaussian_B7_merge_reg_aunroll_x_b = $unsigned(bubble_join_gaussian_B7_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_gaussian_B7_merge_reg_aunroll_x_c = $unsigned(bubble_join_gaussian_B7_merge_reg_aunroll_x_q[32:1]);
    assign bubble_select_gaussian_B7_merge_reg_aunroll_x_d = $unsigned(bubble_join_gaussian_B7_merge_reg_aunroll_x_q[33:33]);
    assign bubble_select_gaussian_B7_merge_reg_aunroll_x_e = $unsigned(bubble_join_gaussian_B7_merge_reg_aunroll_x_q[34:34]);
    assign bubble_select_gaussian_B7_merge_reg_aunroll_x_f = $unsigned(bubble_join_gaussian_B7_merge_reg_aunroll_x_q[35:35]);
    assign bubble_select_gaussian_B7_merge_reg_aunroll_x_g = $unsigned(bubble_join_gaussian_B7_merge_reg_aunroll_x_q[67:36]);

    // join_for_coalesced_delay_0(BITJOIN,788)
    assign join_for_coalesced_delay_0_q = {bubble_select_gaussian_B7_merge_reg_aunroll_x_e, bubble_select_gaussian_B7_merge_reg_aunroll_x_d};

    // coalesced_delay_0_fifo(STALLFIFO,821)
    assign coalesced_delay_0_fifo_valid_in = SE_out_gaussian_B7_merge_reg_aunroll_x_V6;
    assign coalesced_delay_0_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign coalesced_delay_0_fifo_data_in = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_valid_in_bitsignaltemp = coalesced_delay_0_fifo_valid_in[0];
    assign coalesced_delay_0_fifo_stall_in_bitsignaltemp = coalesced_delay_0_fifo_stall_in[0];
    assign coalesced_delay_0_fifo_valid_out[0] = coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_0_fifo_stall_out[0] = coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(69),
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

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,1173)
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
    assign SE_out_coalesced_delay_0_fifo_consumed0 = (~ (i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_out_stall_out) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg0;
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
    assign SE_out_coalesced_delay_0_fifo_and0 = coalesced_delay_0_fifo_valid_out;
    assign SE_out_coalesced_delay_0_fifo_wireValid = SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_V0 & SE_out_coalesced_delay_0_fifo_and0;

    // redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0(REG,803)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_backEN == 1'b1)
        begin
            redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_q <= $unsigned(SR_SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_D0);
        end
    end

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,944)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,945)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[1:0]);

    // sel_for_coalesced_delay_0(BITSELECT,789)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[0:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[1:1]);

    // i_llvm_fpga_pop_i1_pop19_gaussian54(BLACKBOX,52)@69
    // in in_stall_in@20000000
    // out out_data_out@70
    // out out_feedback_stall_out_19@20000000
    // out out_stall_out@20000000
    // out out_valid_out@70
    gaussian_i_llvm_fpga_pop_i1_pop19_0 thei_llvm_fpga_pop_i1_pop19_gaussian54 (
        .in_data_in(sel_for_coalesced_delay_0_b),
        .in_dir(redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_q),
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

    // bubble_join_i_llvm_fpga_pop_i1_pop19_gaussian54(BITJOIN,870)
    assign bubble_join_i_llvm_fpga_pop_i1_pop19_gaussian54_q = i_llvm_fpga_pop_i1_pop19_gaussian54_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_pop19_gaussian54(BITSELECT,871)
    assign bubble_select_i_llvm_fpga_pop_i1_pop19_gaussian54_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_pop19_gaussian54_q[0:0]);

    // i_llvm_fpga_push_i1_push19_gaussian55(BLACKBOX,64)@70
    // in in_stall_in@20000000
    // out out_data_out@71
    // out out_feedback_out_19@20000000
    // out out_feedback_valid_out_19@20000000
    // out out_stall_out@20000000
    // out out_valid_out@71
    gaussian_i_llvm_fpga_push_i1_push19_0 thei_llvm_fpga_push_i1_push19_gaussian55 (
        .in_data_in(bubble_select_i_llvm_fpga_pop_i1_pop19_gaussian54_b),
        .in_feedback_stall_in_19(i_llvm_fpga_pop_i1_pop19_gaussian54_out_feedback_stall_out_19),
        .in_keep_going(redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_q),
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

    // SE_out_i_llvm_fpga_pop_i1_pop19_gaussian54(STALLENABLE,990)
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

    // SE_in_i_llvm_fpga_push_i1_push19_gaussian55(STALLENABLE,1013)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_push19_gaussian55_V0 = SE_in_i_llvm_fpga_push_i1_push19_gaussian55_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_push19_gaussian55_backStall = i_llvm_fpga_push_i1_push19_gaussian55_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_push19_gaussian55_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_push19_gaussian55_and0 = SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_V3;
    assign SE_in_i_llvm_fpga_push_i1_push19_gaussian55_wireValid = SE_out_i_llvm_fpga_pop_i1_pop19_gaussian54_V1 & SE_in_i_llvm_fpga_push_i1_push19_gaussian55_and0;

    // SE_in_i_llvm_fpga_push_i1_notcmp3142_push20_gaussian57(STALLENABLE,1009)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_notcmp3142_push20_gaussian57_V0 = SE_in_i_llvm_fpga_push_i1_notcmp3142_push20_gaussian57_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_notcmp3142_push20_gaussian57_backStall = i_llvm_fpga_push_i1_notcmp3142_push20_gaussian57_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_notcmp3142_push20_gaussian57_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_notcmp3142_push20_gaussian57_and0 = SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_V2;
    assign SE_in_i_llvm_fpga_push_i1_notcmp3142_push20_gaussian57_wireValid = SE_out_i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_V1 & SE_in_i_llvm_fpga_push_i1_notcmp3142_push20_gaussian57_and0;

    // SE_i_next_initerations_gaussian6_vt_join(STALLENABLE,1030)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_next_initerations_gaussian6_vt_join_fromReg0 <= '0;
            SE_i_next_initerations_gaussian6_vt_join_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_next_initerations_gaussian6_vt_join_fromReg0 <= SE_i_next_initerations_gaussian6_vt_join_toReg0;
            // Successor 1
            SE_i_next_initerations_gaussian6_vt_join_fromReg1 <= SE_i_next_initerations_gaussian6_vt_join_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_next_initerations_gaussian6_vt_join_consumed0 = (~ (i_llvm_fpga_push_i1_lastiniteration_gaussian9_out_stall_out) & SE_i_next_initerations_gaussian6_vt_join_wireValid) | SE_i_next_initerations_gaussian6_vt_join_fromReg0;
    assign SE_i_next_initerations_gaussian6_vt_join_consumed1 = (~ (i_llvm_fpga_push_i2_initerations_push15_gaussian7_out_stall_out) & SE_i_next_initerations_gaussian6_vt_join_wireValid) | SE_i_next_initerations_gaussian6_vt_join_fromReg1;
    // Consuming
    assign SE_i_next_initerations_gaussian6_vt_join_StallValid = SE_i_next_initerations_gaussian6_vt_join_backStall & SE_i_next_initerations_gaussian6_vt_join_wireValid;
    assign SE_i_next_initerations_gaussian6_vt_join_toReg0 = SE_i_next_initerations_gaussian6_vt_join_StallValid & SE_i_next_initerations_gaussian6_vt_join_consumed0;
    assign SE_i_next_initerations_gaussian6_vt_join_toReg1 = SE_i_next_initerations_gaussian6_vt_join_StallValid & SE_i_next_initerations_gaussian6_vt_join_consumed1;
    // Backward Stall generation
    assign SE_i_next_initerations_gaussian6_vt_join_or0 = SE_i_next_initerations_gaussian6_vt_join_consumed0;
    assign SE_i_next_initerations_gaussian6_vt_join_wireStall = ~ (SE_i_next_initerations_gaussian6_vt_join_consumed1 & SE_i_next_initerations_gaussian6_vt_join_or0);
    assign SE_i_next_initerations_gaussian6_vt_join_backStall = SE_i_next_initerations_gaussian6_vt_join_wireStall;
    // Valid signal propagation
    assign SE_i_next_initerations_gaussian6_vt_join_V0 = SE_i_next_initerations_gaussian6_vt_join_wireValid & ~ (SE_i_next_initerations_gaussian6_vt_join_fromReg0);
    assign SE_i_next_initerations_gaussian6_vt_join_V1 = SE_i_next_initerations_gaussian6_vt_join_wireValid & ~ (SE_i_next_initerations_gaussian6_vt_join_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_next_initerations_gaussian6_vt_join_and0 = SE_out_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_V1;
    assign SE_i_next_initerations_gaussian6_vt_join_wireValid = SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_V0 & SE_i_next_initerations_gaussian6_vt_join_and0;

    // SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0(STALLENABLE,1165)
    // Valid signal propagation
    assign SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_V0 = SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_R_v_0;
    assign SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_V1 = SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_R_v_1;
    assign SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_V2 = SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_R_v_2;
    assign SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_V3 = SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_R_v_3;
    assign SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_V4 = SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_R_v_4;
    // Stall signal propagation
    assign SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_s_tv_0 = SE_i_next_initerations_gaussian6_vt_join_backStall & SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_R_v_0;
    assign SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_s_tv_1 = SE_in_i_llvm_fpga_push_i1_memdep_phi4_push14_gaussian36_backStall & SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_R_v_1;
    assign SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_s_tv_2 = SE_in_i_llvm_fpga_push_i1_notcmp3142_push20_gaussian57_backStall & SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_R_v_2;
    assign SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_s_tv_3 = SE_in_i_llvm_fpga_push_i1_push19_gaussian55_backStall & SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_R_v_3;
    assign SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_s_tv_4 = SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_backStall & SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_R_v_4;
    // Backward Enable generation
    assign SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_or0 = SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_s_tv_0;
    assign SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_or1 = SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_s_tv_1 | SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_or0;
    assign SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_or2 = SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_s_tv_2 | SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_or1;
    assign SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_or3 = SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_s_tv_3 | SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_or2;
    assign SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_backEN = ~ (SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_s_tv_4 | SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_or3);
    // Determine whether to write valid data into the first register stage
    assign SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_v_s_0 = SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_backEN & SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_V6;
    // Backward Stall generation
    assign SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_backStall = ~ (SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_R_v_0 <= 1'b0;
            SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_R_v_1 <= 1'b0;
            SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_R_v_2 <= 1'b0;
            SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_R_v_3 <= 1'b0;
            SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_R_v_4 <= 1'b0;
        end
        else
        begin
            if (SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_backEN == 1'b0)
            begin
                SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_R_v_0 <= SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_R_v_0 & SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_s_tv_0;
            end
            else
            begin
                SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_R_v_0 <= SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_v_s_0;
            end

            if (SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_backEN == 1'b0)
            begin
                SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_R_v_1 <= SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_R_v_1 & SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_s_tv_1;
            end
            else
            begin
                SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_R_v_1 <= SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_v_s_0;
            end

            if (SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_backEN == 1'b0)
            begin
                SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_R_v_2 <= SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_R_v_2 & SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_s_tv_2;
            end
            else
            begin
                SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_R_v_2 <= SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_v_s_0;
            end

            if (SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_backEN == 1'b0)
            begin
                SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_R_v_3 <= SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_R_v_3 & SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_s_tv_3;
            end
            else
            begin
                SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_R_v_3 <= SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_v_s_0;
            end

            if (SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_backEN == 1'b0)
            begin
                SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_R_v_4 <= SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_R_v_4 & SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_s_tv_4;
            end
            else
            begin
                SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_R_v_4 <= SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_v_s_0;
            end

        end
    end

    // SE_in_i_llvm_fpga_push_i1_memdep_phi4_push14_gaussian36(STALLENABLE,1005)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi4_push14_gaussian36_V0 = SE_in_i_llvm_fpga_push_i1_memdep_phi4_push14_gaussian36_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi4_push14_gaussian36_backStall = i_llvm_fpga_push_i1_memdep_phi4_push14_gaussian36_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_memdep_phi4_push14_gaussian36_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi4_push14_gaussian36_and0 = SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_V1;
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi4_push14_gaussian36_wireValid = SE_out_i_llvm_fpga_mem_memdep_gaussian35_V1 & SE_in_i_llvm_fpga_push_i1_memdep_phi4_push14_gaussian36_and0;

    // bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_1_reg(STALLENABLE,1354)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_1_reg_s_tv_0 = SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_backStall & bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_1_reg_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52(STALLENABLE,996)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_fromReg0 <= SE_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_fromReg1 <= SE_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_consumed0 = (~ (bubble_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_1_reg_backStall) & SE_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_wireValid) | SE_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_consumed1 = (~ (SE_in_i_llvm_fpga_push_i32_add40_push17_gaussian53_backStall) & SE_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_wireValid) | SE_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_StallValid = SE_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_backStall & SE_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_wireValid;
    assign SE_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_toReg0 = SE_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_StallValid & SE_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_toReg1 = SE_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_StallValid & SE_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_or0 = SE_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_wireStall = ~ (SE_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_consumed1 & SE_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_or0);
    assign SE_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_backStall = SE_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_V0 = SE_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_V1 = SE_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_wireValid = i_llvm_fpga_pop_i32_add40_pop17_gaussian52_out_valid_out;

    // SE_in_i_llvm_fpga_push_i32_add40_push17_gaussian53(STALLENABLE,1019)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i32_add40_push17_gaussian53_V0 = SE_in_i_llvm_fpga_push_i32_add40_push17_gaussian53_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i32_add40_push17_gaussian53_backStall = i_llvm_fpga_push_i32_add40_push17_gaussian53_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i32_add40_push17_gaussian53_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i32_add40_push17_gaussian53_and0 = SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_V2;
    assign SE_in_i_llvm_fpga_push_i32_add40_push17_gaussian53_wireValid = SE_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_V1 & SE_in_i_llvm_fpga_push_i32_add40_push17_gaussian53_and0;

    // redist11_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_67_fifo(STALLFIFO,804)
    assign redist11_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_67_fifo_valid_in = SE_out_gaussian_B7_merge_reg_aunroll_x_V5;
    assign redist11_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_67_fifo_stall_in = SE_out_redist11_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_67_fifo_backStall;
    assign redist11_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_67_fifo_data_in = bubble_select_gaussian_B7_merge_reg_aunroll_x_g;
    assign redist11_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_67_fifo_valid_in_bitsignaltemp = redist11_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_67_fifo_valid_in[0];
    assign redist11_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_67_fifo_stall_in_bitsignaltemp = redist11_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_67_fifo_stall_in[0];
    assign redist11_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_67_fifo_valid_out[0] = redist11_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_67_fifo_valid_out_bitsignaltemp;
    assign redist11_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_67_fifo_stall_out[0] = redist11_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_67_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(68),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist11_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_67_fifo (
        .valid_in(redist11_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_67_fifo_valid_in_bitsignaltemp),
        .stall_in(redist11_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_67_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_gaussian_B7_merge_reg_aunroll_x_g),
        .valid_out(redist11_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_67_fifo_valid_out_bitsignaltemp),
        .stall_out(redist11_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_67_fifo_stall_out_bitsignaltemp),
        .data_out(redist11_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_67_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist11_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_67_fifo(BITJOIN,926)
    assign bubble_join_redist11_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_67_fifo_q = redist11_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_67_fifo_data_out;

    // bubble_select_redist11_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_67_fifo(BITSELECT,927)
    assign bubble_select_redist11_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_67_fifo_b = $unsigned(bubble_join_redist11_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_67_fifo_q[31:0]);

    // i_llvm_fpga_pop_i32_add40_pop17_gaussian52(BLACKBOX,55)@68
    // in in_stall_in@20000000
    // out out_data_out@69
    // out out_feedback_stall_out_17@20000000
    // out out_stall_out@20000000
    // out out_valid_out@69
    gaussian_i_llvm_fpga_pop_i32_add40_pop17_0 thei_llvm_fpga_pop_i32_add40_pop17_gaussian52 (
        .in_data_in(bubble_select_redist11_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_67_fifo_b),
        .in_dir(bubble_select_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_b),
        .in_feedback_in_17(i_llvm_fpga_push_i32_add40_push17_gaussian53_out_feedback_out_17),
        .in_feedback_valid_in_17(i_llvm_fpga_push_i32_add40_push17_gaussian53_out_feedback_valid_out_17),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_backStall),
        .in_valid_in(SE_out_redist11_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_67_fifo_V0),
        .out_data_out(i_llvm_fpga_pop_i32_add40_pop17_gaussian52_out_data_out),
        .out_feedback_stall_out_17(i_llvm_fpga_pop_i32_add40_pop17_gaussian52_out_feedback_stall_out_17),
        .out_stall_out(i_llvm_fpga_pop_i32_add40_pop17_gaussian52_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_add40_pop17_gaussian52_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i32_add40_pop17_gaussian52(BITJOIN,881)
    assign bubble_join_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_q = i_llvm_fpga_pop_i32_add40_pop17_gaussian52_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_add40_pop17_gaussian52(BITSELECT,882)
    assign bubble_select_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_q[31:0]);

    // i_llvm_fpga_push_i32_add40_push17_gaussian53(BLACKBOX,67)@69
    // in in_stall_in@20000000
    // out out_data_out@70
    // out out_feedback_out_17@20000000
    // out out_feedback_valid_out_17@20000000
    // out out_stall_out@20000000
    // out out_valid_out@70
    gaussian_i_llvm_fpga_push_i32_add40_push17_0 thei_llvm_fpga_push_i32_add40_push17_gaussian53 (
        .in_data_in(bubble_select_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_b),
        .in_feedback_stall_in_17(i_llvm_fpga_pop_i32_add40_pop17_gaussian52_out_feedback_stall_out_17),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_gaussian4_b),
        .in_stall_in(SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i32_add40_push17_gaussian53_V0),
        .out_data_out(i_llvm_fpga_push_i32_add40_push17_gaussian53_out_data_out),
        .out_feedback_out_17(i_llvm_fpga_push_i32_add40_push17_gaussian53_out_feedback_out_17),
        .out_feedback_valid_out_17(i_llvm_fpga_push_i32_add40_push17_gaussian53_out_feedback_valid_out_17),
        .out_stall_out(i_llvm_fpga_push_i32_add40_push17_gaussian53_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_add40_push17_gaussian53_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_1_reg(STALLENABLE,1356)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_1_reg_V0 = bubble_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_1_reg_s_tv_0 = SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_backStall & bubble_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_1_reg_v_s_0 = bubble_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_1_reg_backEN & SE_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_1_reg_R_v_0 & bubble_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_1_reg_v_s_0;
            end

        end
    end

    // SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1(STALLENABLE,1275)
    // Valid signal propagation
    assign SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_V0 = SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_backStall = in_stall_in | ~ (SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_and0 = bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_reg_V0;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_and1 = bubble_out_i_llvm_fpga_pop_i32_add40_pop17_gaussian52_1_reg_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_and0;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_and2 = i_llvm_fpga_push_i32_add40_push17_gaussian53_out_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_and1;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_and3 = SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_V4 & SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_and2;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_and4 = bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_1_reg_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_and3;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_and5 = SE_i_masked_gaussian51_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_and4;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_and6 = SE_out_i_llvm_fpga_pop_i2_initerations_pop15_gaussian5_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_and5;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_and7 = SE_out_i_llvm_fpga_pop_i1_pop19_gaussian54_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_and6;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_and8 = SE_out_i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_and7;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_wireValid = SE_out_i_llvm_fpga_mem_memdep_gaussian35_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_and8;

    // SE_out_i_llvm_fpga_mem_memdep_gaussian35(STALLENABLE,980)
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

    // bubble_join_coalesced_delay_1_fifo(BITJOIN,947)
    assign bubble_join_coalesced_delay_1_fifo_q = coalesced_delay_1_fifo_data_out;

    // bubble_select_coalesced_delay_1_fifo(BITSELECT,948)
    assign bubble_select_coalesced_delay_1_fifo_b = $unsigned(bubble_join_coalesced_delay_1_fifo_q[64:0]);

    // sel_for_coalesced_delay_1(BITSELECT,792)
    assign sel_for_coalesced_delay_1_b = $unsigned(bubble_select_coalesced_delay_1_fifo_b[63:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(bubble_select_coalesced_delay_1_fifo_b[64:64]);

    // i_llvm_fpga_mem_memdep_gaussian35(BLACKBOX,47)@39
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
    // out out_o_valid@70
    // out out_o_writeack@70
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

    // SE_join_for_coalesced_delay_1(STALLENABLE,1134)
    // Valid signal propagation
    assign SE_join_for_coalesced_delay_1_V0 = SE_join_for_coalesced_delay_1_wireValid;
    // Backward Stall generation
    assign SE_join_for_coalesced_delay_1_backStall = coalesced_delay_1_fifo_stall_out | ~ (SE_join_for_coalesced_delay_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_join_for_coalesced_delay_1_and0 = SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_3_V1;
    assign SE_join_for_coalesced_delay_1_wireValid = SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_V1 & SE_join_for_coalesced_delay_1_and0;

    // SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_0(STALLENABLE,1166)
    // Valid signal propagation
    assign SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_0_V0 = SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_0_R_v_0;
    // Stall signal propagation
    assign SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_0_s_tv_0 = SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_1_backStall & SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_0_R_v_0;
    // Backward Enable generation
    assign SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_0_backEN = ~ (SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_0_v_s_0 = SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_V2;
    // Backward Stall generation
    assign SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_0_backStall = ~ (SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_0_backEN == 1'b0)
            begin
                SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_0_R_v_0 <= SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_0_R_v_0 & SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_0_s_tv_0;
            end
            else
            begin
                SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_0_R_v_0 <= SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_0_v_s_0;
            end

        end
    end

    // SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_1(STALLENABLE,1167)
    // Valid signal propagation
    assign SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_1_V0 = SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_1_R_v_0;
    // Stall signal propagation
    assign SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_1_s_tv_0 = SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_2_backStall & SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_1_R_v_0;
    // Backward Enable generation
    assign SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_1_backEN = ~ (SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_1_v_s_0 = SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_1_backEN & SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_0_V0;
    // Backward Stall generation
    assign SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_1_backStall = ~ (SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_1_backEN == 1'b0)
            begin
                SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_1_R_v_0 <= SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_1_R_v_0 & SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_1_s_tv_0;
            end
            else
            begin
                SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_1_R_v_0 <= SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_1_v_s_0;
            end

        end
    end

    // redist20_i_first_cleanup_xor_or_gaussian23_q_4_0(REG,816)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_first_cleanup_xor_or_gaussian23_q_4_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_0_backEN == 1'b1)
        begin
            redist20_i_first_cleanup_xor_or_gaussian23_q_4_0_q <= $unsigned(i_first_cleanup_xor_or_gaussian23_q);
        end
    end

    // redist20_i_first_cleanup_xor_or_gaussian23_q_4_1(REG,817)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_first_cleanup_xor_or_gaussian23_q_4_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_1_backEN == 1'b1)
        begin
            redist20_i_first_cleanup_xor_or_gaussian23_q_4_1_q <= $unsigned(redist20_i_first_cleanup_xor_or_gaussian23_q_4_0_q);
        end
    end

    // redist20_i_first_cleanup_xor_or_gaussian23_q_4_2(REG,818)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_first_cleanup_xor_or_gaussian23_q_4_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_2_backEN == 1'b1)
        begin
            redist20_i_first_cleanup_xor_or_gaussian23_q_4_2_q <= $unsigned(redist20_i_first_cleanup_xor_or_gaussian23_q_4_1_q);
        end
    end

    // SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_2(STALLENABLE,1168)
    // Valid signal propagation
    assign SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_2_V0 = SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_2_R_v_0;
    // Stall signal propagation
    assign SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_2_s_tv_0 = SR_SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_backStall & SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_2_R_v_0;
    // Backward Enable generation
    assign SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_2_backEN = ~ (SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_2_v_s_0 = SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_2_backEN & SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_1_V0;
    // Backward Stall generation
    assign SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_2_backStall = ~ (SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_2_backEN == 1'b0)
            begin
                SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_2_R_v_0 <= SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_2_R_v_0 & SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_2_s_tv_0;
            end
            else
            begin
                SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_2_R_v_0 <= SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_2_v_s_0;
            end

        end
    end

    // SR_SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3(STALLREG,1367)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_r_valid <= 1'b0;
            SR_SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_r_valid <= SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_backStall & (SR_SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_r_valid | SR_SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_i_valid);

            if (SR_SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_r_data0 <= $unsigned(redist20_i_first_cleanup_xor_or_gaussian23_q_4_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_i_valid = SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_2_V0;
    // Stall signal propagation
    assign SR_SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_backStall = SR_SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_r_valid | ~ (SR_SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_i_valid);

    // Valid
    assign SR_SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_V = SR_SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_r_valid == 1'b1 ? SR_SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_r_valid : SR_SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_i_valid;

    assign SR_SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_D0 = SR_SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_r_valid == 1'b1 ? SR_SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_r_data0 : redist20_i_first_cleanup_xor_or_gaussian23_q_4_2_q;

    // SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3(STALLENABLE,1169)
    // Valid signal propagation
    assign SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_V0 = SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_R_v_0;
    assign SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_V1 = SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_R_v_1;
    // Stall signal propagation
    assign SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_s_tv_0 = SE_in_i_llvm_fpga_mem_lm1_gaussian26_backStall & SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_R_v_0;
    assign SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_s_tv_1 = SE_join_for_coalesced_delay_1_backStall & SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_R_v_1;
    // Backward Enable generation
    assign SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_or0 = SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_s_tv_0;
    assign SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_backEN = ~ (SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_s_tv_1 | SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_v_s_0 = SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_backEN & SR_SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_V;
    // Backward Stall generation
    assign SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_backStall = ~ (SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_R_v_0 <= 1'b0;
            SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_backEN == 1'b0)
            begin
                SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_R_v_0 <= SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_R_v_0 & SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_s_tv_0;
            end
            else
            begin
                SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_R_v_0 <= SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_v_s_0;
            end

            if (SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_backEN == 1'b0)
            begin
                SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_R_v_1 <= SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_R_v_1 & SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_s_tv_1;
            end
            else
            begin
                SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_R_v_1 <= SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_push_i1_memdep_phi_pop1043_push21_gaussian25(STALLENABLE,1008)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_pop1043_push21_gaussian25_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_pop1043_push21_gaussian25_wireValid = i_llvm_fpga_push_i1_memdep_phi_pop1043_push21_gaussian25_out_valid_out;

    // SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_1(STALLENABLE,1160)
    // Valid signal propagation
    assign SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_1_V0 = SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_1_R_v_0;
    // Stall signal propagation
    assign SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_1_s_tv_0 = SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_2_backStall & SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_1_R_v_0;
    // Backward Enable generation
    assign SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_1_backEN = ~ (SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_1_v_s_0 = SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_1_backEN & SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_0_V0;
    // Backward Stall generation
    assign SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_1_backStall = ~ (SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_1_backEN == 1'b0)
            begin
                SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_1_R_v_0 <= SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_1_R_v_0 & SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_1_s_tv_0;
            end
            else
            begin
                SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_1_R_v_0 <= SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_1_v_s_0;
            end

        end
    end

    // SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_0(STALLENABLE,1159)
    // Valid signal propagation
    assign SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_0_V0 = SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_0_R_v_0;
    // Stall signal propagation
    assign SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_0_s_tv_0 = SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_1_backStall & SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_0_R_v_0;
    // Backward Enable generation
    assign SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_0_backEN = ~ (SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_0_v_s_0 = SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_0_backEN & SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_1_0_V1;
    // Backward Stall generation
    assign SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_0_backStall = ~ (SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_0_backEN == 1'b0)
            begin
                SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_0_R_v_0 <= SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_0_R_v_0 & SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_0_s_tv_0;
            end
            else
            begin
                SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_0_R_v_0 <= SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_0_v_s_0;
            end

        end
    end

    // SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_1_0(STALLENABLE,1158)
    // Valid signal propagation
    assign SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_1_0_V0 = SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_1_0_R_v_0;
    assign SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_1_0_V1 = SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_1_0_R_v_1;
    // Stall signal propagation
    assign SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_1_0_s_tv_0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_backStall & SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_1_0_R_v_0;
    assign SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_1_0_s_tv_1 = SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_0_backStall & SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_1_0_R_v_1;
    // Backward Enable generation
    assign SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_1_0_or0 = SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_1_0_s_tv_0;
    assign SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_1_0_backEN = ~ (SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_1_0_s_tv_1 | SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_1_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_1_0_v_s_0 = SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_1_0_backEN & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_V0;
    // Backward Stall generation
    assign SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_1_0_backStall = ~ (SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_1_0_R_v_0 <= 1'b0;
            SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_1_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_1_0_backEN == 1'b0)
            begin
                SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_1_0_R_v_0 <= SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_1_0_R_v_0 & SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_1_0_s_tv_0;
            end
            else
            begin
                SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_1_0_R_v_0 <= SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_1_0_v_s_0;
            end

            if (SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_1_0_backEN == 1'b0)
            begin
                SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_1_0_R_v_1 <= SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_1_0_R_v_1 & SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_1_0_s_tv_1;
            end
            else
            begin
                SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_1_0_R_v_1 <= SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_1_0_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24(STALLENABLE,986)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_backStall = SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_1_0_backStall | ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_wireValid = i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_valid_out;

    // i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24(BLACKBOX,50)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_21@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    gaussian_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_0 thei_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24 (
        .in_data_in(bubble_select_gaussian_B7_merge_reg_aunroll_x_f),
        .in_dir(bubble_select_gaussian_B7_merge_reg_aunroll_x_b),
        .in_feedback_in_21(i_llvm_fpga_push_i1_memdep_phi_pop1043_push21_gaussian25_out_feedback_out_21),
        .in_feedback_valid_in_21(i_llvm_fpga_push_i1_memdep_phi_pop1043_push21_gaussian25_out_feedback_valid_out_21),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_backStall),
        .in_valid_in(SE_out_gaussian_B7_merge_reg_aunroll_x_V3),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out),
        .out_feedback_stall_out_21(i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_feedback_stall_out_21),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_67_fifo(BITJOIN,938)
    assign bubble_join_redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_67_fifo_q = redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_67_fifo_data_out;

    // bubble_select_redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_67_fifo(BITSELECT,939)
    assign bubble_select_redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_67_fifo_b = $unsigned(bubble_join_redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_67_fifo_q[0:0]);

    // i_llvm_fpga_push_i1_memdep_phi_pop1043_push21_gaussian25(BLACKBOX,61)@69
    // in in_stall_in@20000000
    // out out_data_out@70
    // out out_feedback_out_21@20000000
    // out out_feedback_valid_out_21@20000000
    // out out_stall_out@20000000
    // out out_valid_out@70
    gaussian_i_llvm_fpga_push_i1_memdep_phi_pop1043_push21_0 thei_llvm_fpga_push_i1_memdep_phi_pop1043_push21_gaussian25 (
        .in_data_in(bubble_select_redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_67_fifo_b),
        .in_feedback_stall_in_21(i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_feedback_stall_out_21),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_gaussian4_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi_pop1043_push21_gaussian25_backStall),
        .in_valid_in(SE_out_redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_67_fifo_V0),
        .out_data_out(),
        .out_feedback_out_21(i_llvm_fpga_push_i1_memdep_phi_pop1043_push21_gaussian25_out_feedback_out_21),
        .out_feedback_valid_out_21(i_llvm_fpga_push_i1_memdep_phi_pop1043_push21_gaussian25_out_feedback_valid_out_21),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi_pop1043_push21_gaussian25_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi_pop1043_push21_gaussian25_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_67_fifo(STALLENABLE,1164)
    // Valid signal propagation
    assign SE_out_redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_67_fifo_V0 = SE_out_redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_67_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_67_fifo_backStall = i_llvm_fpga_push_i1_memdep_phi_pop1043_push21_gaussian25_out_stall_out | ~ (SE_out_redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_67_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_67_fifo_and0 = redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_67_fifo_valid_out;
    assign SE_out_redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_67_fifo_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_V0 & SE_out_redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_67_fifo_and0;

    // redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_67_fifo(STALLFIFO,814)
    assign redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_67_fifo_valid_in = SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_3_V1;
    assign redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_67_fifo_stall_in = SE_out_redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_67_fifo_backStall;
    assign redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_67_fifo_data_in = redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_3_q;
    assign redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_67_fifo_valid_in_bitsignaltemp = redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_67_fifo_valid_in[0];
    assign redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_67_fifo_stall_in_bitsignaltemp = redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_67_fifo_stall_in[0];
    assign redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_67_fifo_valid_out[0] = redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_67_fifo_valid_out_bitsignaltemp;
    assign redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_67_fifo_stall_out[0] = redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_67_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(63),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist18_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_67_fifo (
        .valid_in(redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_67_fifo_valid_in_bitsignaltemp),
        .stall_in(redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_67_fifo_stall_in_bitsignaltemp),
        .data_in(redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_3_q),
        .valid_out(redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_67_fifo_valid_out_bitsignaltemp),
        .stall_out(redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_67_fifo_stall_out_bitsignaltemp),
        .data_out(redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_67_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_2(STALLENABLE,1161)
    // Valid signal propagation
    assign SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_2_V0 = SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_2_R_v_0;
    // Stall signal propagation
    assign SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_2_s_tv_0 = SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_3_backStall & SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_2_R_v_0;
    // Backward Enable generation
    assign SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_2_backEN = ~ (SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_2_v_s_0 = SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_2_backEN & SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_1_V0;
    // Backward Stall generation
    assign SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_2_backStall = ~ (SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_2_backEN == 1'b0)
            begin
                SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_2_R_v_0 <= SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_2_R_v_0 & SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_2_s_tv_0;
            end
            else
            begin
                SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_2_R_v_0 <= SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_2_v_s_0;
            end

        end
    end

    // SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_3(STALLENABLE,1162)
    // Valid signal propagation
    assign SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_3_V0 = SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_3_R_v_0;
    assign SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_3_V1 = SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_3_R_v_1;
    // Stall signal propagation
    assign SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_3_s_tv_0 = SE_in_i_llvm_fpga_mem_lm1_gaussian26_backStall & SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_3_R_v_0;
    assign SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_3_s_tv_1 = redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_67_fifo_stall_out & SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_3_R_v_1;
    // Backward Enable generation
    assign SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_3_or0 = SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_3_s_tv_0;
    assign SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_3_backEN = ~ (SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_3_s_tv_1 | SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_3_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_3_v_s_0 = SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_3_backEN & SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_2_V0;
    // Backward Stall generation
    assign SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_3_backStall = ~ (SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_3_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_3_R_v_0 <= 1'b0;
            SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_3_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_3_backEN == 1'b0)
            begin
                SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_3_R_v_0 <= SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_3_R_v_0 & SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_3_s_tv_0;
            end
            else
            begin
                SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_3_R_v_0 <= SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_3_v_s_0;
            end

            if (SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_3_backEN == 1'b0)
            begin
                SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_3_R_v_1 <= SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_3_R_v_1 & SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_3_s_tv_1;
            end
            else
            begin
                SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_3_R_v_1 <= SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_3_v_s_0;
            end

        end
    end

    // bubble_join_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10(BITJOIN,885)
    assign bubble_join_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_q = i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10(BITSELECT,886)
    assign bubble_select_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_q[31:0]);

    // SE_out_i_llvm_fpga_push_i32_i_019_replace_phi41_push18_gaussian11(STALLENABLE,1022)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i32_i_019_replace_phi41_push18_gaussian11_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i32_i_019_replace_phi41_push18_gaussian11_wireValid = i_llvm_fpga_push_i32_i_019_replace_phi41_push18_gaussian11_out_valid_out;

    // bubble_join_redist14_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_out_data_out_67_fifo(BITJOIN,932)
    assign bubble_join_redist14_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_out_data_out_67_fifo_q = redist14_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_out_data_out_67_fifo_data_out;

    // bubble_select_redist14_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_out_data_out_67_fifo(BITSELECT,933)
    assign bubble_select_redist14_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_out_data_out_67_fifo_b = $unsigned(bubble_join_redist14_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_out_data_out_67_fifo_q[31:0]);

    // i_llvm_fpga_push_i32_i_019_replace_phi41_push18_gaussian11(BLACKBOX,68)@69
    // in in_stall_in@20000000
    // out out_data_out@70
    // out out_feedback_out_18@20000000
    // out out_feedback_valid_out_18@20000000
    // out out_stall_out@20000000
    // out out_valid_out@70
    gaussian_i_llvm_fpga_push_i32_i_019_replace_phi41_push18_0 thei_llvm_fpga_push_i32_i_019_replace_phi41_push18_gaussian11 (
        .in_data_in(bubble_select_redist14_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_out_data_out_67_fifo_b),
        .in_feedback_stall_in_18(i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_out_feedback_stall_out_18),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_gaussian4_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i32_i_019_replace_phi41_push18_gaussian11_backStall),
        .in_valid_in(SE_out_redist14_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_out_data_out_67_fifo_V0),
        .out_data_out(),
        .out_feedback_out_18(i_llvm_fpga_push_i32_i_019_replace_phi41_push18_gaussian11_out_feedback_out_18),
        .out_feedback_valid_out_18(i_llvm_fpga_push_i32_i_019_replace_phi41_push18_gaussian11_out_feedback_valid_out_18),
        .out_stall_out(i_llvm_fpga_push_i32_i_019_replace_phi41_push18_gaussian11_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_i_019_replace_phi41_push18_gaussian11_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist14_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_out_data_out_67_fifo(STALLENABLE,1155)
    // Valid signal propagation
    assign SE_out_redist14_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_out_data_out_67_fifo_V0 = SE_out_redist14_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_out_data_out_67_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist14_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_out_data_out_67_fifo_backStall = i_llvm_fpga_push_i32_i_019_replace_phi41_push18_gaussian11_out_stall_out | ~ (SE_out_redist14_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_out_data_out_67_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist14_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_out_data_out_67_fifo_and0 = redist14_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_out_data_out_67_fifo_valid_out;
    assign SE_out_redist14_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_out_data_out_67_fifo_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_V3 & SE_out_redist14_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_out_data_out_67_fifo_and0;

    // redist14_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_out_data_out_67_fifo(STALLFIFO,807)
    assign redist14_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_out_data_out_67_fifo_valid_in = SE_out_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_V0;
    assign redist14_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_out_data_out_67_fifo_stall_in = SE_out_redist14_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_out_data_out_67_fifo_backStall;
    assign redist14_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_out_data_out_67_fifo_data_in = bubble_select_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_b;
    assign redist14_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_out_data_out_67_fifo_valid_in_bitsignaltemp = redist14_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_out_data_out_67_fifo_valid_in[0];
    assign redist14_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_out_data_out_67_fifo_stall_in_bitsignaltemp = redist14_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_out_data_out_67_fifo_stall_in[0];
    assign redist14_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_out_data_out_67_fifo_valid_out[0] = redist14_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_out_data_out_67_fifo_valid_out_bitsignaltemp;
    assign redist14_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_out_data_out_67_fifo_stall_out[0] = redist14_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_out_data_out_67_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(68),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist14_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_out_data_out_67_fifo (
        .valid_in(redist14_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_out_data_out_67_fifo_valid_in_bitsignaltemp),
        .stall_in(redist14_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_out_data_out_67_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_b),
        .valid_out(redist14_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_out_data_out_67_fifo_valid_out_bitsignaltemp),
        .stall_out(redist14_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_out_data_out_67_fifo_stall_out_bitsignaltemp),
        .data_out(redist14_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_out_data_out_67_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10(BLACKBOX,56)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_18@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    gaussian_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_0 thei_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10 (
        .in_data_in(bubble_select_gaussian_B7_merge_reg_aunroll_x_c),
        .in_dir(bubble_select_gaussian_B7_merge_reg_aunroll_x_b),
        .in_feedback_in_18(i_llvm_fpga_push_i32_i_019_replace_phi41_push18_gaussian11_out_feedback_out_18),
        .in_feedback_valid_in_18(i_llvm_fpga_push_i32_i_019_replace_phi41_push18_gaussian11_out_feedback_valid_out_18),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_backStall),
        .in_valid_in(SE_out_gaussian_B7_merge_reg_aunroll_x_V4),
        .out_data_out(i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_out_data_out),
        .out_feedback_stall_out_18(i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_out_feedback_stall_out_18),
        .out_stall_out(i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10(STALLENABLE,998)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_fromReg0 <= SE_out_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_fromReg1 <= SE_out_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_consumed0 = (~ (redist14_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_out_data_out_67_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_wireValid) | SE_out_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_consumed1 = (~ (SE_redist5_i_arrayidx10_gaussian0_trunc_sel_x_b_1_0_backStall) & SE_out_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_wireValid) | SE_out_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_StallValid = SE_out_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_backStall & SE_out_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_wireValid;
    assign SE_out_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_toReg0 = SE_out_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_StallValid & SE_out_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_toReg1 = SE_out_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_StallValid & SE_out_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_or0 = SE_out_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_wireStall = ~ (SE_out_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_consumed1 & SE_out_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_or0);
    assign SE_out_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_backStall = SE_out_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_V0 = SE_out_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_V1 = SE_out_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_wireValid = i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_out_valid_out;

    // SE_redist5_i_arrayidx10_gaussian0_trunc_sel_x_b_1_0(STALLENABLE,1144)
    // Valid signal propagation
    assign SE_redist5_i_arrayidx10_gaussian0_trunc_sel_x_b_1_0_V0 = SE_redist5_i_arrayidx10_gaussian0_trunc_sel_x_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist5_i_arrayidx10_gaussian0_trunc_sel_x_b_1_0_s_tv_0 = SE_out_i_llvm_fpga_ffwd_dest_p1024a20i32_a2215_gaussian21_backStall & SE_redist5_i_arrayidx10_gaussian0_trunc_sel_x_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist5_i_arrayidx10_gaussian0_trunc_sel_x_b_1_0_backEN = ~ (SE_redist5_i_arrayidx10_gaussian0_trunc_sel_x_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist5_i_arrayidx10_gaussian0_trunc_sel_x_b_1_0_v_s_0 = SE_redist5_i_arrayidx10_gaussian0_trunc_sel_x_b_1_0_backEN & SE_out_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_V1;
    // Backward Stall generation
    assign SE_redist5_i_arrayidx10_gaussian0_trunc_sel_x_b_1_0_backStall = ~ (SE_redist5_i_arrayidx10_gaussian0_trunc_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist5_i_arrayidx10_gaussian0_trunc_sel_x_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist5_i_arrayidx10_gaussian0_trunc_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist5_i_arrayidx10_gaussian0_trunc_sel_x_b_1_0_R_v_0 <= SE_redist5_i_arrayidx10_gaussian0_trunc_sel_x_b_1_0_R_v_0 & SE_redist5_i_arrayidx10_gaussian0_trunc_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist5_i_arrayidx10_gaussian0_trunc_sel_x_b_1_0_R_v_0 <= SE_redist5_i_arrayidx10_gaussian0_trunc_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_dest_p1024a20i32_a2215_gaussian21(STALLENABLE,970)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a20i32_a2215_gaussian21_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1024a20i32_a2215_gaussian21_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a20i32_a2215_gaussian21_backStall = SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_0_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024a20i32_a2215_gaussian21_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a20i32_a2215_gaussian21_and0 = i_llvm_fpga_ffwd_dest_p1024a20i32_a2215_gaussian21_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a20i32_a2215_gaussian21_and1 = SE_redist5_i_arrayidx10_gaussian0_trunc_sel_x_b_1_0_V0 & SE_out_i_llvm_fpga_ffwd_dest_p1024a20i32_a2215_gaussian21_and0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a20i32_a2215_gaussian21_wireValid = SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_V1 & SE_out_i_llvm_fpga_ffwd_dest_p1024a20i32_a2215_gaussian21_and1;

    // SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_0(STALLENABLE,1140)
    // Valid signal propagation
    assign SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_0_V0 = SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_0_R_v_0;
    // Stall signal propagation
    assign SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_0_s_tv_0 = SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_1_backStall & SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_0_R_v_0;
    // Backward Enable generation
    assign SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_0_backEN = ~ (SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_0_v_s_0 = SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_p1024a20i32_a2215_gaussian21_V0;
    // Backward Stall generation
    assign SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_0_backStall = ~ (SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_0_backEN == 1'b0)
            begin
                SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_0_R_v_0 <= SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_0_R_v_0 & SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_0_s_tv_0;
            end
            else
            begin
                SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_0_R_v_0 <= SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_0_v_s_0;
            end

        end
    end

    // SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_1(STALLENABLE,1141)
    // Valid signal propagation
    assign SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_1_V0 = SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_1_R_v_0;
    // Stall signal propagation
    assign SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_1_s_tv_0 = SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_2_backStall & SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_1_R_v_0;
    // Backward Enable generation
    assign SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_1_backEN = ~ (SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_1_v_s_0 = SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_1_backEN & SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_0_V0;
    // Backward Stall generation
    assign SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_1_backStall = ~ (SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_1_backEN == 1'b0)
            begin
                SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_1_R_v_0 <= SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_1_R_v_0 & SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_1_s_tv_0;
            end
            else
            begin
                SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_1_R_v_0 <= SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_1_v_s_0;
            end

        end
    end

    // SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_2(STALLENABLE,1142)
    // Valid signal propagation
    assign SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_2_V0 = SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_2_R_v_0;
    // Stall signal propagation
    assign SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_2_s_tv_0 = SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_3_backStall & SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_2_R_v_0;
    // Backward Enable generation
    assign SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_2_backEN = ~ (SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_2_v_s_0 = SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_2_backEN & SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_1_V0;
    // Backward Stall generation
    assign SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_2_backStall = ~ (SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_2_backEN == 1'b0)
            begin
                SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_2_R_v_0 <= SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_2_R_v_0 & SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_2_s_tv_0;
            end
            else
            begin
                SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_2_R_v_0 <= SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_2_v_s_0;
            end

        end
    end

    // SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_3(STALLENABLE,1143)
    // Valid signal propagation
    assign SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_3_V0 = SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_3_R_v_0;
    assign SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_3_V1 = SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_3_R_v_1;
    // Stall signal propagation
    assign SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_3_s_tv_0 = SE_in_i_llvm_fpga_mem_lm1_gaussian26_backStall & SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_3_R_v_0;
    assign SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_3_s_tv_1 = SE_join_for_coalesced_delay_1_backStall & SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_3_R_v_1;
    // Backward Enable generation
    assign SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_3_or0 = SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_3_s_tv_0;
    assign SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_3_backEN = ~ (SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_3_s_tv_1 | SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_3_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_3_v_s_0 = SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_3_backEN & SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_2_V0;
    // Backward Stall generation
    assign SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_3_backStall = ~ (SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_3_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_3_R_v_0 <= 1'b0;
            SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_3_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_3_backEN == 1'b0)
            begin
                SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_3_R_v_0 <= SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_3_R_v_0 & SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_3_s_tv_0;
            end
            else
            begin
                SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_3_R_v_0 <= SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_3_v_s_0;
            end

            if (SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_3_backEN == 1'b0)
            begin
                SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_3_R_v_1 <= SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_3_R_v_1 & SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_3_s_tv_1;
            end
            else
            begin
                SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_3_R_v_1 <= SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_3_v_s_0;
            end

        end
    end

    // SE_in_i_llvm_fpga_mem_lm1_gaussian26(STALLENABLE,973)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_mem_lm1_gaussian26_V0 = SE_in_i_llvm_fpga_mem_lm1_gaussian26_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_mem_lm1_gaussian26_backStall = i_llvm_fpga_mem_lm1_gaussian26_out_o_stall | ~ (SE_in_i_llvm_fpga_mem_lm1_gaussian26_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_mem_lm1_gaussian26_and0 = SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_3_V0;
    assign SE_in_i_llvm_fpga_mem_lm1_gaussian26_and1 = SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_3_V0 & SE_in_i_llvm_fpga_mem_lm1_gaussian26_and0;
    assign SE_in_i_llvm_fpga_mem_lm1_gaussian26_wireValid = SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_V0 & SE_in_i_llvm_fpga_mem_lm1_gaussian26_and1;

    // redist20_i_first_cleanup_xor_or_gaussian23_q_4_3(REG,819)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_q <= $unsigned(1'b0);
        end
        else if (SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_backEN == 1'b1)
        begin
            redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_q <= $unsigned(SR_SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_D0);
        end
    end

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24(BITJOIN,863)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_q = i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24(BITSELECT,864)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_q[0:0]);

    // redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_1_0(REG,809)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_1_0_backEN == 1'b1)
        begin
            redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_1_0_q <= $unsigned(bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_b);
        end
    end

    // redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_0(REG,810)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_0_backEN == 1'b1)
        begin
            redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_0_q <= $unsigned(redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_1_0_q);
        end
    end

    // redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_1(REG,811)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_1_backEN == 1'b1)
        begin
            redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_1_q <= $unsigned(redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_0_q);
        end
    end

    // redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_2(REG,812)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_2_backEN == 1'b1)
        begin
            redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_2_q <= $unsigned(redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_1_q);
        end
    end

    // redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_3(REG,813)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_3_q <= $unsigned(1'b0);
        end
        else if (SE_redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_3_backEN == 1'b1)
        begin
            redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_3_q <= $unsigned(redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_2_q);
        end
    end

    // bubble_join_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19(BITJOIN,888)
    assign bubble_join_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_q = i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19(BITSELECT,889)
    assign bubble_select_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_q[31:0]);

    // i_idxprom9_gaussian20_sel_x(BITSELECT,223)@3
    assign i_idxprom9_gaussian20_sel_x_b = {32'b00000000000000000000000000000000, bubble_select_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_b[31:0]};

    // i_idxprom9_gaussian20_vt_select_31(BITSELECT,31)@3
    assign i_idxprom9_gaussian20_vt_select_31_b = i_idxprom9_gaussian20_sel_x_b[31:0];

    // i_idxprom9_gaussian20_vt_join(BITJOIN,30)@3
    assign i_idxprom9_gaussian20_vt_join_q = {i_idxprom11_gaussian16_vt_const_63_q, i_idxprom9_gaussian20_vt_select_31_b};

    // i_arrayidx10_gaussian0_narrow_x(BITSELECT,183)@3
    assign i_arrayidx10_gaussian0_narrow_x_b = i_idxprom9_gaussian20_vt_join_q[61:0];

    // i_arrayidx10_gaussian0_shift_join_x(BITJOIN,184)@3
    assign i_arrayidx10_gaussian0_shift_join_x_q = {i_arrayidx10_gaussian0_narrow_x_b, i_arrayidx10_gaussian0_c_i2_02_x_q};

    // i_arrayidx10_gaussian0_mult_multconst_x(CONSTANT,191)
    assign i_arrayidx10_gaussian0_mult_multconst_x_q = $unsigned(57'b000000000000000000000000000000000000000000000000000000000);

    // i_idxprom_gaussian12_sel_x(BITSELECT,224)@2
    assign i_idxprom_gaussian12_sel_x_b = {32'b00000000000000000000000000000000, bubble_select_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_b[31:0]};

    // i_idxprom_gaussian12_vt_select_31(BITSELECT,35)@2
    assign i_idxprom_gaussian12_vt_select_31_b = i_idxprom_gaussian12_sel_x_b[31:0];

    // i_idxprom_gaussian12_vt_join(BITJOIN,34)@2
    assign i_idxprom_gaussian12_vt_join_q = {i_idxprom11_gaussian16_vt_const_63_q, i_idxprom_gaussian12_vt_select_31_b};

    // i_arrayidx10_gaussian0_mult_x_bs1_merged_bit_select(BITSELECT,753)@2
    assign i_arrayidx10_gaussian0_mult_x_bs1_merged_bit_select_b = i_idxprom_gaussian12_vt_join_q[63:54];
    assign i_arrayidx10_gaussian0_mult_x_bs1_merged_bit_select_c = i_idxprom_gaussian12_vt_join_q[53:36];
    assign i_arrayidx10_gaussian0_mult_x_bs1_merged_bit_select_d = i_idxprom_gaussian12_vt_join_q[35:18];
    assign i_arrayidx10_gaussian0_mult_x_bs1_merged_bit_select_e = i_idxprom_gaussian12_vt_join_q[17:0];

    // addsumAHighB_uid320_i_arrayidx10_gaussian0_mult_x_im0(ADD,319)@2
    assign addsumAHighB_uid320_i_arrayidx10_gaussian0_mult_x_im0_a = {1'b0, i_arrayidx10_gaussian0_mult_x_bs1_merged_bit_select_b};
    assign addsumAHighB_uid320_i_arrayidx10_gaussian0_mult_x_im0_b = {3'b000, lowRangeB_uid318_i_arrayidx10_gaussian0_mult_x_im0_merged_bit_select_c};
    assign addsumAHighB_uid320_i_arrayidx10_gaussian0_mult_x_im0_o = $unsigned(addsumAHighB_uid320_i_arrayidx10_gaussian0_mult_x_im0_a) + $unsigned(addsumAHighB_uid320_i_arrayidx10_gaussian0_mult_x_im0_b);
    assign addsumAHighB_uid320_i_arrayidx10_gaussian0_mult_x_im0_q = addsumAHighB_uid320_i_arrayidx10_gaussian0_mult_x_im0_o[10:0];

    // lowRangeB_uid318_i_arrayidx10_gaussian0_mult_x_im0_merged_bit_select(BITSELECT,760)@2
    assign lowRangeB_uid318_i_arrayidx10_gaussian0_mult_x_im0_merged_bit_select_b = i_arrayidx10_gaussian0_mult_x_bs1_merged_bit_select_b[1:0];
    assign lowRangeB_uid318_i_arrayidx10_gaussian0_mult_x_im0_merged_bit_select_c = i_arrayidx10_gaussian0_mult_x_bs1_merged_bit_select_b[9:2];

    // add_uid321_i_arrayidx10_gaussian0_mult_x_im0(BITJOIN,320)@2
    assign add_uid321_i_arrayidx10_gaussian0_mult_x_im0_q = {addsumAHighB_uid320_i_arrayidx10_gaussian0_mult_x_im0_q, lowRangeB_uid318_i_arrayidx10_gaussian0_mult_x_im0_merged_bit_select_b};

    // sR_bottomExtension_uid324_i_arrayidx10_gaussian0_mult_x_im0(CONSTANT,323)
    assign sR_bottomExtension_uid324_i_arrayidx10_gaussian0_mult_x_im0_q = $unsigned(4'b0000);

    // sR_mergedSignalTM_uid326_i_arrayidx10_gaussian0_mult_x_im0(BITJOIN,325)@2
    assign sR_mergedSignalTM_uid326_i_arrayidx10_gaussian0_mult_x_im0_q = {add_uid321_i_arrayidx10_gaussian0_mult_x_im0_q, sR_bottomExtension_uid324_i_arrayidx10_gaussian0_mult_x_im0_q};

    // i_arrayidx10_gaussian0_mult_x_sums_align_3(BITSHIFT,273)@2
    assign i_arrayidx10_gaussian0_mult_x_sums_align_3_qint = { sR_mergedSignalTM_uid326_i_arrayidx10_gaussian0_mult_x_im0_q, 11'b00000000000 };
    assign i_arrayidx10_gaussian0_mult_x_sums_align_3_q = i_arrayidx10_gaussian0_mult_x_sums_align_3_qint[27:0];

    // addsumAHighB_uid424_i_arrayidx10_gaussian0_mult_x_im6(ADD,423)@2
    assign addsumAHighB_uid424_i_arrayidx10_gaussian0_mult_x_im6_a = {1'b0, i_arrayidx10_gaussian0_mult_x_bs1_merged_bit_select_d};
    assign addsumAHighB_uid424_i_arrayidx10_gaussian0_mult_x_im6_b = {3'b000, lowRangeB_uid422_i_arrayidx10_gaussian0_mult_x_im6_merged_bit_select_c};
    assign addsumAHighB_uid424_i_arrayidx10_gaussian0_mult_x_im6_o = $unsigned(addsumAHighB_uid424_i_arrayidx10_gaussian0_mult_x_im6_a) + $unsigned(addsumAHighB_uid424_i_arrayidx10_gaussian0_mult_x_im6_b);
    assign addsumAHighB_uid424_i_arrayidx10_gaussian0_mult_x_im6_q = addsumAHighB_uid424_i_arrayidx10_gaussian0_mult_x_im6_o[18:0];

    // lowRangeB_uid422_i_arrayidx10_gaussian0_mult_x_im6_merged_bit_select(BITSELECT,762)@2
    assign lowRangeB_uid422_i_arrayidx10_gaussian0_mult_x_im6_merged_bit_select_b = i_arrayidx10_gaussian0_mult_x_bs1_merged_bit_select_d[1:0];
    assign lowRangeB_uid422_i_arrayidx10_gaussian0_mult_x_im6_merged_bit_select_c = i_arrayidx10_gaussian0_mult_x_bs1_merged_bit_select_d[17:2];

    // add_uid425_i_arrayidx10_gaussian0_mult_x_im6(BITJOIN,424)@2
    assign add_uid425_i_arrayidx10_gaussian0_mult_x_im6_q = {addsumAHighB_uid424_i_arrayidx10_gaussian0_mult_x_im6_q, lowRangeB_uid422_i_arrayidx10_gaussian0_mult_x_im6_merged_bit_select_b};

    // sR_mergedSignalTM_uid430_i_arrayidx10_gaussian0_mult_x_im6(BITJOIN,429)@2
    assign sR_mergedSignalTM_uid430_i_arrayidx10_gaussian0_mult_x_im6_q = {add_uid425_i_arrayidx10_gaussian0_mult_x_im6_q, sR_bottomExtension_uid324_i_arrayidx10_gaussian0_mult_x_im0_q};

    // i_arrayidx10_gaussian0_mult_x_sums_align_2(BITSHIFT,272)@2
    assign i_arrayidx10_gaussian0_mult_x_sums_align_2_qint = { sR_mergedSignalTM_uid430_i_arrayidx10_gaussian0_mult_x_im6_q, 18'b000000000000000000 };
    assign i_arrayidx10_gaussian0_mult_x_sums_align_2_q = i_arrayidx10_gaussian0_mult_x_sums_align_2_qint[42:0];

    // i_arrayidx10_gaussian0_mult_x_sums_join_4(BITJOIN,274)@2
    assign i_arrayidx10_gaussian0_mult_x_sums_join_4_q = {i_arrayidx10_gaussian0_mult_x_sums_align_3_q, i_arrayidx10_gaussian0_mult_x_sums_align_2_q};

    // addsumAHighB_uid366_i_arrayidx10_gaussian0_mult_x_im3(ADD,365)@2
    assign addsumAHighB_uid366_i_arrayidx10_gaussian0_mult_x_im3_a = {1'b0, i_arrayidx10_gaussian0_mult_x_bs1_merged_bit_select_c};
    assign addsumAHighB_uid366_i_arrayidx10_gaussian0_mult_x_im3_b = {3'b000, lowRangeB_uid364_i_arrayidx10_gaussian0_mult_x_im3_merged_bit_select_c};
    assign addsumAHighB_uid366_i_arrayidx10_gaussian0_mult_x_im3_o = $unsigned(addsumAHighB_uid366_i_arrayidx10_gaussian0_mult_x_im3_a) + $unsigned(addsumAHighB_uid366_i_arrayidx10_gaussian0_mult_x_im3_b);
    assign addsumAHighB_uid366_i_arrayidx10_gaussian0_mult_x_im3_q = addsumAHighB_uid366_i_arrayidx10_gaussian0_mult_x_im3_o[18:0];

    // lowRangeB_uid364_i_arrayidx10_gaussian0_mult_x_im3_merged_bit_select(BITSELECT,761)@2
    assign lowRangeB_uid364_i_arrayidx10_gaussian0_mult_x_im3_merged_bit_select_b = i_arrayidx10_gaussian0_mult_x_bs1_merged_bit_select_c[1:0];
    assign lowRangeB_uid364_i_arrayidx10_gaussian0_mult_x_im3_merged_bit_select_c = i_arrayidx10_gaussian0_mult_x_bs1_merged_bit_select_c[17:2];

    // add_uid367_i_arrayidx10_gaussian0_mult_x_im3(BITJOIN,366)@2
    assign add_uid367_i_arrayidx10_gaussian0_mult_x_im3_q = {addsumAHighB_uid366_i_arrayidx10_gaussian0_mult_x_im3_q, lowRangeB_uid364_i_arrayidx10_gaussian0_mult_x_im3_merged_bit_select_b};

    // sR_mergedSignalTM_uid372_i_arrayidx10_gaussian0_mult_x_im3(BITJOIN,371)@2
    assign sR_mergedSignalTM_uid372_i_arrayidx10_gaussian0_mult_x_im3_q = {add_uid367_i_arrayidx10_gaussian0_mult_x_im3_q, sR_bottomExtension_uid324_i_arrayidx10_gaussian0_mult_x_im0_q};

    // i_arrayidx10_gaussian0_mult_x_sums_align_0(BITSHIFT,270)@2
    assign i_arrayidx10_gaussian0_mult_x_sums_align_0_qint = { sR_mergedSignalTM_uid372_i_arrayidx10_gaussian0_mult_x_im3_q, 11'b00000000000 };
    assign i_arrayidx10_gaussian0_mult_x_sums_align_0_q = i_arrayidx10_gaussian0_mult_x_sums_align_0_qint[35:0];

    // addsumAHighB_uid482_i_arrayidx10_gaussian0_mult_x_im9(ADD,481)@2
    assign addsumAHighB_uid482_i_arrayidx10_gaussian0_mult_x_im9_a = {1'b0, i_arrayidx10_gaussian0_mult_x_bs1_merged_bit_select_e};
    assign addsumAHighB_uid482_i_arrayidx10_gaussian0_mult_x_im9_b = {3'b000, lowRangeB_uid480_i_arrayidx10_gaussian0_mult_x_im9_merged_bit_select_c};
    assign addsumAHighB_uid482_i_arrayidx10_gaussian0_mult_x_im9_o = $unsigned(addsumAHighB_uid482_i_arrayidx10_gaussian0_mult_x_im9_a) + $unsigned(addsumAHighB_uid482_i_arrayidx10_gaussian0_mult_x_im9_b);
    assign addsumAHighB_uid482_i_arrayidx10_gaussian0_mult_x_im9_q = addsumAHighB_uid482_i_arrayidx10_gaussian0_mult_x_im9_o[18:0];

    // lowRangeB_uid480_i_arrayidx10_gaussian0_mult_x_im9_merged_bit_select(BITSELECT,763)@2
    assign lowRangeB_uid480_i_arrayidx10_gaussian0_mult_x_im9_merged_bit_select_b = i_arrayidx10_gaussian0_mult_x_bs1_merged_bit_select_e[1:0];
    assign lowRangeB_uid480_i_arrayidx10_gaussian0_mult_x_im9_merged_bit_select_c = i_arrayidx10_gaussian0_mult_x_bs1_merged_bit_select_e[17:2];

    // add_uid483_i_arrayidx10_gaussian0_mult_x_im9(BITJOIN,482)@2
    assign add_uid483_i_arrayidx10_gaussian0_mult_x_im9_q = {addsumAHighB_uid482_i_arrayidx10_gaussian0_mult_x_im9_q, lowRangeB_uid480_i_arrayidx10_gaussian0_mult_x_im9_merged_bit_select_b};

    // sR_mergedSignalTM_uid488_i_arrayidx10_gaussian0_mult_x_im9(BITJOIN,487)@2
    assign sR_mergedSignalTM_uid488_i_arrayidx10_gaussian0_mult_x_im9_q = {add_uid483_i_arrayidx10_gaussian0_mult_x_im9_q, sR_bottomExtension_uid324_i_arrayidx10_gaussian0_mult_x_im0_q};

    // i_arrayidx10_gaussian0_mult_x_sums_join_1(BITJOIN,271)@2
    assign i_arrayidx10_gaussian0_mult_x_sums_join_1_q = {i_arrayidx10_gaussian0_mult_x_sums_align_0_q, sR_mergedSignalTM_uid488_i_arrayidx10_gaussian0_mult_x_im9_q};

    // i_arrayidx10_gaussian0_mult_x_sums_result_add_0_0(ADD,275)@2
    assign i_arrayidx10_gaussian0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx10_gaussian0_mult_x_sums_join_1_q};
    assign i_arrayidx10_gaussian0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx10_gaussian0_mult_x_sums_join_4_q};
    assign i_arrayidx10_gaussian0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx10_gaussian0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx10_gaussian0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx10_gaussian0_mult_x_sums_result_add_0_0_q = i_arrayidx10_gaussian0_mult_x_sums_result_add_0_0_o[71:0];

    // i_arrayidx10_gaussian0_mult_extender_x(BITJOIN,190)@2
    assign i_arrayidx10_gaussian0_mult_extender_x_q = {i_arrayidx10_gaussian0_mult_multconst_x_q, i_arrayidx10_gaussian0_mult_x_sums_result_add_0_0_q[70:0]};

    // i_arrayidx10_gaussian0_trunc_sel_x(BITSELECT,192)@2
    assign i_arrayidx10_gaussian0_trunc_sel_x_b = i_arrayidx10_gaussian0_mult_extender_x_q[63:0];

    // redist5_i_arrayidx10_gaussian0_trunc_sel_x_b_1_0(REG,800)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_arrayidx10_gaussian0_trunc_sel_x_b_1_0_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist5_i_arrayidx10_gaussian0_trunc_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist5_i_arrayidx10_gaussian0_trunc_sel_x_b_1_0_q <= $unsigned(i_arrayidx10_gaussian0_trunc_sel_x_b);
        end
    end

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024a20i32_a2215_gaussian21(BITJOIN,837)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024a20i32_a2215_gaussian21_q = i_llvm_fpga_ffwd_dest_p1024a20i32_a2215_gaussian21_out_dest_data_out_1_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024a20i32_a2215_gaussian21(BITSELECT,838)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024a20i32_a2215_gaussian21_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024a20i32_a2215_gaussian21_q[63:0]);

    // i_arrayidx10_gaussian0_add_x(ADD,179)@3
    assign i_arrayidx10_gaussian0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_p1024a20i32_a2215_gaussian21_b};
    assign i_arrayidx10_gaussian0_add_x_b = {1'b0, redist5_i_arrayidx10_gaussian0_trunc_sel_x_b_1_0_q};
    assign i_arrayidx10_gaussian0_add_x_o = $unsigned(i_arrayidx10_gaussian0_add_x_a) + $unsigned(i_arrayidx10_gaussian0_add_x_b);
    assign i_arrayidx10_gaussian0_add_x_q = i_arrayidx10_gaussian0_add_x_o[64:0];

    // i_arrayidx10_gaussian0_dupName_0_trunc_sel_x(BITSELECT,193)@3
    assign i_arrayidx10_gaussian0_dupName_0_trunc_sel_x_b = i_arrayidx10_gaussian0_add_x_q[63:0];

    // i_arrayidx10_gaussian0_dupName_0_add_x(ADD,187)@3
    assign i_arrayidx10_gaussian0_dupName_0_add_x_a = {1'b0, i_arrayidx10_gaussian0_dupName_0_trunc_sel_x_b};
    assign i_arrayidx10_gaussian0_dupName_0_add_x_b = {1'b0, i_arrayidx10_gaussian0_shift_join_x_q};
    assign i_arrayidx10_gaussian0_dupName_0_add_x_o = $unsigned(i_arrayidx10_gaussian0_dupName_0_add_x_a) + $unsigned(i_arrayidx10_gaussian0_dupName_0_add_x_b);
    assign i_arrayidx10_gaussian0_dupName_0_add_x_q = i_arrayidx10_gaussian0_dupName_0_add_x_o[64:0];

    // i_arrayidx10_gaussian0_dupName_2_trunc_sel_x(BITSELECT,194)@3
    assign i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b = i_arrayidx10_gaussian0_dupName_0_add_x_q[63:0];

    // redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_0(REG,796)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_0_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_0_backEN == 1'b1)
        begin
            redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_0_q <= $unsigned(i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b);
        end
    end

    // redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_1(REG,797)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_1_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_1_backEN == 1'b1)
        begin
            redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_1_q <= $unsigned(redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_0_q);
        end
    end

    // redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_2(REG,798)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_2_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_2_backEN == 1'b1)
        begin
            redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_2_q <= $unsigned(redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_1_q);
        end
    end

    // redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_3(REG,799)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_3_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_3_backEN == 1'b1)
        begin
            redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_3_q <= $unsigned(redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_2_q);
        end
    end

    // i_llvm_fpga_mem_lm1_gaussian26(BLACKBOX,44)@7
    // in in_i_stall@20000000
    // out out_lm1_gaussian_avm_address@20000000
    // out out_lm1_gaussian_avm_burstcount@20000000
    // out out_lm1_gaussian_avm_byteenable@20000000
    // out out_lm1_gaussian_avm_enable@20000000
    // out out_lm1_gaussian_avm_read@20000000
    // out out_lm1_gaussian_avm_write@20000000
    // out out_lm1_gaussian_avm_writedata@20000000
    // out out_o_readdata@39
    // out out_o_stall@20000000
    // out out_o_valid@39
    gaussian_i_llvm_fpga_mem_lm1_0 thei_llvm_fpga_mem_lm1_gaussian26 (
        .in_flush(in_flush),
        .in_i_address(redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_3_q),
        .in_i_dependence(redist17_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_5_3_q),
        .in_i_predicate(redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_q),
        .in_i_stall(SE_out_coalesced_delay_1_fifo_backStall),
        .in_i_valid(SE_in_i_llvm_fpga_mem_lm1_gaussian26_V0),
        .in_lm1_gaussian_avm_readdata(in_lm1_gaussian_avm_readdata),
        .in_lm1_gaussian_avm_readdatavalid(in_lm1_gaussian_avm_readdatavalid),
        .in_lm1_gaussian_avm_waitrequest(in_lm1_gaussian_avm_waitrequest),
        .in_lm1_gaussian_avm_writeack(in_lm1_gaussian_avm_writeack),
        .out_lm1_gaussian_avm_address(i_llvm_fpga_mem_lm1_gaussian26_out_lm1_gaussian_avm_address),
        .out_lm1_gaussian_avm_burstcount(i_llvm_fpga_mem_lm1_gaussian26_out_lm1_gaussian_avm_burstcount),
        .out_lm1_gaussian_avm_byteenable(i_llvm_fpga_mem_lm1_gaussian26_out_lm1_gaussian_avm_byteenable),
        .out_lm1_gaussian_avm_enable(i_llvm_fpga_mem_lm1_gaussian26_out_lm1_gaussian_avm_enable),
        .out_lm1_gaussian_avm_read(i_llvm_fpga_mem_lm1_gaussian26_out_lm1_gaussian_avm_read),
        .out_lm1_gaussian_avm_write(i_llvm_fpga_mem_lm1_gaussian26_out_lm1_gaussian_avm_write),
        .out_lm1_gaussian_avm_writedata(i_llvm_fpga_mem_lm1_gaussian26_out_lm1_gaussian_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm1_gaussian26_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm1_gaussian26_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm1_gaussian26_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // join_for_coalesced_delay_1(BITJOIN,791)
    assign join_for_coalesced_delay_1_q = {redist20_i_first_cleanup_xor_or_gaussian23_q_4_3_q, redist3_i_arrayidx10_gaussian0_dupName_2_trunc_sel_x_b_4_3_q};

    // coalesced_delay_1_fifo(STALLFIFO,822)
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

    // SE_out_coalesced_delay_1_fifo(STALLENABLE,1175)
    // Valid signal propagation
    assign SE_out_coalesced_delay_1_fifo_V0 = SE_out_coalesced_delay_1_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_1_fifo_backStall = i_llvm_fpga_mem_memdep_gaussian35_out_o_stall | ~ (SE_out_coalesced_delay_1_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_1_fifo_and0 = coalesced_delay_1_fifo_valid_out;
    assign SE_out_coalesced_delay_1_fifo_and1 = i_llvm_fpga_mem_lm1_gaussian26_out_o_valid & SE_out_coalesced_delay_1_fifo_and0;
    assign SE_out_coalesced_delay_1_fifo_wireValid = SE_redist12_bgTrunc_i_mul_gaussian33_sel_x_b_1_0_V0 & SE_out_coalesced_delay_1_fifo_and1;

    // SE_redist12_bgTrunc_i_mul_gaussian33_sel_x_b_1_0(STALLENABLE,1151)
    // Valid signal propagation
    assign SE_redist12_bgTrunc_i_mul_gaussian33_sel_x_b_1_0_V0 = SE_redist12_bgTrunc_i_mul_gaussian33_sel_x_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist12_bgTrunc_i_mul_gaussian33_sel_x_b_1_0_s_tv_0 = SE_out_coalesced_delay_1_fifo_backStall & SE_redist12_bgTrunc_i_mul_gaussian33_sel_x_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist12_bgTrunc_i_mul_gaussian33_sel_x_b_1_0_backEN = ~ (SE_redist12_bgTrunc_i_mul_gaussian33_sel_x_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist12_bgTrunc_i_mul_gaussian33_sel_x_b_1_0_v_s_0 = SE_redist12_bgTrunc_i_mul_gaussian33_sel_x_b_1_0_backEN & SE_out_bubble_out_i_mul_gaussian33_ma3_cma_data_V0;
    // Backward Stall generation
    assign SE_redist12_bgTrunc_i_mul_gaussian33_sel_x_b_1_0_backStall = ~ (SE_redist12_bgTrunc_i_mul_gaussian33_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist12_bgTrunc_i_mul_gaussian33_sel_x_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist12_bgTrunc_i_mul_gaussian33_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist12_bgTrunc_i_mul_gaussian33_sel_x_b_1_0_R_v_0 <= SE_redist12_bgTrunc_i_mul_gaussian33_sel_x_b_1_0_R_v_0 & SE_redist12_bgTrunc_i_mul_gaussian33_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist12_bgTrunc_i_mul_gaussian33_sel_x_b_1_0_R_v_0 <= SE_redist12_bgTrunc_i_mul_gaussian33_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // SE_out_bubble_out_i_mul_gaussian33_ma3_cma_data(STALLENABLE,1311)
    // Valid signal propagation
    assign SE_out_bubble_out_i_mul_gaussian33_ma3_cma_data_V0 = SE_out_bubble_out_i_mul_gaussian33_ma3_cma_data_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_mul_gaussian33_ma3_cma_data_backStall = SE_redist12_bgTrunc_i_mul_gaussian33_sel_x_b_1_0_backStall | ~ (SE_out_bubble_out_i_mul_gaussian33_ma3_cma_data_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_mul_gaussian33_ma3_cma_data_and0 = bubble_out_i_mul_gaussian33_ma3_cma_data_reg_valid_out;
    assign SE_out_bubble_out_i_mul_gaussian33_ma3_cma_data_and1 = bubble_out_i_mul_gaussian33_im8_cma_data_reg_valid_out & SE_out_bubble_out_i_mul_gaussian33_ma3_cma_data_and0;
    assign SE_out_bubble_out_i_mul_gaussian33_ma3_cma_data_wireValid = bubble_out_i_mul_gaussian33_im0_cma_data_reg_valid_out & SE_out_bubble_out_i_mul_gaussian33_ma3_cma_data_and1;

    // bubble_out_i_mul_gaussian33_ma3_cma_data_reg(STALLFIFO,1365)
    assign bubble_out_i_mul_gaussian33_ma3_cma_data_reg_valid_in = SE_i_mul_gaussian33_im0_cma_V2;
    assign bubble_out_i_mul_gaussian33_ma3_cma_data_reg_stall_in = SE_out_bubble_out_i_mul_gaussian33_ma3_cma_data_backStall;
    assign bubble_out_i_mul_gaussian33_ma3_cma_data_reg_data_in = bubble_join_i_mul_gaussian33_ma3_cma_q;
    assign bubble_out_i_mul_gaussian33_ma3_cma_data_reg_valid_in_bitsignaltemp = bubble_out_i_mul_gaussian33_ma3_cma_data_reg_valid_in[0];
    assign bubble_out_i_mul_gaussian33_ma3_cma_data_reg_stall_in_bitsignaltemp = bubble_out_i_mul_gaussian33_ma3_cma_data_reg_stall_in[0];
    assign bubble_out_i_mul_gaussian33_ma3_cma_data_reg_valid_out[0] = bubble_out_i_mul_gaussian33_ma3_cma_data_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_mul_gaussian33_ma3_cma_data_reg_stall_out[0] = bubble_out_i_mul_gaussian33_ma3_cma_data_reg_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(3),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(33),
        .IMPL("zl_reg")
    ) thebubble_out_i_mul_gaussian33_ma3_cma_data_reg (
        .valid_in(bubble_out_i_mul_gaussian33_ma3_cma_data_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_mul_gaussian33_ma3_cma_data_reg_stall_in_bitsignaltemp),
        .data_in(bubble_join_i_mul_gaussian33_ma3_cma_q),
        .valid_out(bubble_out_i_mul_gaussian33_ma3_cma_data_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_mul_gaussian33_ma3_cma_data_reg_stall_out_bitsignaltemp),
        .data_out(bubble_out_i_mul_gaussian33_ma3_cma_data_reg_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul_gaussian33_im8_cma(CHAINMULTADD,751)@35 + 3
    assign i_mul_gaussian33_im8_cma_reset = ~ (resetn);
    assign i_mul_gaussian33_im8_cma_ena0 = SE_i_mul_gaussian33_im0_cma_backEN[0];
    assign i_mul_gaussian33_im8_cma_ena1 = i_mul_gaussian33_im8_cma_ena0;
    assign i_mul_gaussian33_im8_cma_ena2 = i_mul_gaussian33_im8_cma_ena0;

    assign i_mul_gaussian33_im8_cma_a0 = i_mul_gaussian33_bs1_merged_bit_select_c;
    assign i_mul_gaussian33_im8_cma_c0 = i_mul_gaussian33_bs2_merged_bit_select_c;
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
    ) i_mul_gaussian33_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_gaussian33_im8_cma_ena2, i_mul_gaussian33_im8_cma_ena1, i_mul_gaussian33_im8_cma_ena0 }),
        .aclr({ i_mul_gaussian33_im8_cma_reset, i_mul_gaussian33_im8_cma_reset }),
        .ay(i_mul_gaussian33_im8_cma_a0),
        .ax(i_mul_gaussian33_im8_cma_c0),
        .resulta(i_mul_gaussian33_im8_cma_s0),
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
    i_mul_gaussian33_im8_cma_delay ( .xin(i_mul_gaussian33_im8_cma_s0), .xout(i_mul_gaussian33_im8_cma_qq), .ena(SE_i_mul_gaussian33_im0_cma_backEN[0]), .clk(clock), .aclr(resetn) );
    assign i_mul_gaussian33_im8_cma_q = $unsigned(i_mul_gaussian33_im8_cma_qq[35:0]);

    // bubble_join_i_mul_gaussian33_im8_cma(BITJOIN,914)
    assign bubble_join_i_mul_gaussian33_im8_cma_q = i_mul_gaussian33_im8_cma_q;

    // bubble_out_i_mul_gaussian33_im8_cma_data_reg(STALLFIFO,1364)
    assign bubble_out_i_mul_gaussian33_im8_cma_data_reg_valid_in = SE_i_mul_gaussian33_im0_cma_V1;
    assign bubble_out_i_mul_gaussian33_im8_cma_data_reg_stall_in = SE_out_bubble_out_i_mul_gaussian33_ma3_cma_data_backStall;
    assign bubble_out_i_mul_gaussian33_im8_cma_data_reg_data_in = bubble_join_i_mul_gaussian33_im8_cma_q;
    assign bubble_out_i_mul_gaussian33_im8_cma_data_reg_valid_in_bitsignaltemp = bubble_out_i_mul_gaussian33_im8_cma_data_reg_valid_in[0];
    assign bubble_out_i_mul_gaussian33_im8_cma_data_reg_stall_in_bitsignaltemp = bubble_out_i_mul_gaussian33_im8_cma_data_reg_stall_in[0];
    assign bubble_out_i_mul_gaussian33_im8_cma_data_reg_valid_out[0] = bubble_out_i_mul_gaussian33_im8_cma_data_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_mul_gaussian33_im8_cma_data_reg_stall_out[0] = bubble_out_i_mul_gaussian33_im8_cma_data_reg_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(3),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(36),
        .IMPL("zl_reg")
    ) thebubble_out_i_mul_gaussian33_im8_cma_data_reg (
        .valid_in(bubble_out_i_mul_gaussian33_im8_cma_data_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_mul_gaussian33_im8_cma_data_reg_stall_in_bitsignaltemp),
        .data_in(bubble_join_i_mul_gaussian33_im8_cma_q),
        .valid_out(bubble_out_i_mul_gaussian33_im8_cma_data_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_mul_gaussian33_im8_cma_data_reg_stall_out_bitsignaltemp),
        .data_out(bubble_out_i_mul_gaussian33_im8_cma_data_reg_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul_gaussian33_im0_cma(CHAINMULTADD,750)@35 + 3
    assign i_mul_gaussian33_im0_cma_reset = ~ (resetn);
    assign i_mul_gaussian33_im0_cma_ena0 = SE_i_mul_gaussian33_im0_cma_backEN[0];
    assign i_mul_gaussian33_im0_cma_ena1 = i_mul_gaussian33_im0_cma_ena0;
    assign i_mul_gaussian33_im0_cma_ena2 = i_mul_gaussian33_im0_cma_ena0;

    assign i_mul_gaussian33_im0_cma_a0 = i_mul_gaussian33_bs1_merged_bit_select_b;
    assign i_mul_gaussian33_im0_cma_c0 = i_mul_gaussian33_bs2_merged_bit_select_b;
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
    ) i_mul_gaussian33_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_gaussian33_im0_cma_ena2, i_mul_gaussian33_im0_cma_ena1, i_mul_gaussian33_im0_cma_ena0 }),
        .aclr({ i_mul_gaussian33_im0_cma_reset, i_mul_gaussian33_im0_cma_reset }),
        .ay(i_mul_gaussian33_im0_cma_a0),
        .ax(i_mul_gaussian33_im0_cma_c0),
        .resulta(i_mul_gaussian33_im0_cma_s0),
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
    i_mul_gaussian33_im0_cma_delay ( .xin(i_mul_gaussian33_im0_cma_s0), .xout(i_mul_gaussian33_im0_cma_qq), .ena(SE_i_mul_gaussian33_im0_cma_backEN[0]), .clk(clock), .aclr(resetn) );
    assign i_mul_gaussian33_im0_cma_q = $unsigned(i_mul_gaussian33_im0_cma_qq[27:0]);

    // bubble_join_i_mul_gaussian33_im0_cma(BITJOIN,911)
    assign bubble_join_i_mul_gaussian33_im0_cma_q = i_mul_gaussian33_im0_cma_q;

    // bubble_out_i_mul_gaussian33_im0_cma_data_reg(STALLFIFO,1363)
    assign bubble_out_i_mul_gaussian33_im0_cma_data_reg_valid_in = SE_i_mul_gaussian33_im0_cma_V0;
    assign bubble_out_i_mul_gaussian33_im0_cma_data_reg_stall_in = SE_out_bubble_out_i_mul_gaussian33_ma3_cma_data_backStall;
    assign bubble_out_i_mul_gaussian33_im0_cma_data_reg_data_in = bubble_join_i_mul_gaussian33_im0_cma_q;
    assign bubble_out_i_mul_gaussian33_im0_cma_data_reg_valid_in_bitsignaltemp = bubble_out_i_mul_gaussian33_im0_cma_data_reg_valid_in[0];
    assign bubble_out_i_mul_gaussian33_im0_cma_data_reg_stall_in_bitsignaltemp = bubble_out_i_mul_gaussian33_im0_cma_data_reg_stall_in[0];
    assign bubble_out_i_mul_gaussian33_im0_cma_data_reg_valid_out[0] = bubble_out_i_mul_gaussian33_im0_cma_data_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_mul_gaussian33_im0_cma_data_reg_stall_out[0] = bubble_out_i_mul_gaussian33_im0_cma_data_reg_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(3),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(28),
        .IMPL("zl_reg")
    ) thebubble_out_i_mul_gaussian33_im0_cma_data_reg (
        .valid_in(bubble_out_i_mul_gaussian33_im0_cma_data_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_mul_gaussian33_im0_cma_data_reg_stall_in_bitsignaltemp),
        .data_in(bubble_join_i_mul_gaussian33_im0_cma_q),
        .valid_out(bubble_out_i_mul_gaussian33_im0_cma_data_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_mul_gaussian33_im0_cma_data_reg_stall_out_bitsignaltemp),
        .data_out(bubble_out_i_mul_gaussian33_im0_cma_data_reg_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_lm32_gaussian29(STALLENABLE,976)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_lm32_gaussian29_V0 = SE_out_i_llvm_fpga_mem_lm32_gaussian29_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_lm32_gaussian29_backStall = SE_i_mul_gaussian33_im0_cma_backStall | ~ (SE_out_i_llvm_fpga_mem_lm32_gaussian29_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_lm32_gaussian29_wireValid = i_llvm_fpga_mem_lm32_gaussian29_out_o_valid;

    // SE_i_mul_gaussian33_im0_cma(STALLENABLE,1118)
    // Valid signal propagation
    assign SE_i_mul_gaussian33_im0_cma_V0 = SE_i_mul_gaussian33_im0_cma_R_v_0;
    assign SE_i_mul_gaussian33_im0_cma_V1 = SE_i_mul_gaussian33_im0_cma_R_v_1;
    assign SE_i_mul_gaussian33_im0_cma_V2 = SE_i_mul_gaussian33_im0_cma_R_v_2;
    // Stall signal propagation
    assign SE_i_mul_gaussian33_im0_cma_s_tv_0 = bubble_out_i_mul_gaussian33_im0_cma_data_reg_stall_out & SE_i_mul_gaussian33_im0_cma_R_v_0;
    assign SE_i_mul_gaussian33_im0_cma_s_tv_1 = bubble_out_i_mul_gaussian33_im8_cma_data_reg_stall_out & SE_i_mul_gaussian33_im0_cma_R_v_1;
    assign SE_i_mul_gaussian33_im0_cma_s_tv_2 = bubble_out_i_mul_gaussian33_ma3_cma_data_reg_stall_out & SE_i_mul_gaussian33_im0_cma_R_v_2;
    // Backward Enable generation
    assign SE_i_mul_gaussian33_im0_cma_or0 = SE_i_mul_gaussian33_im0_cma_s_tv_0;
    assign SE_i_mul_gaussian33_im0_cma_or1 = SE_i_mul_gaussian33_im0_cma_s_tv_1 | SE_i_mul_gaussian33_im0_cma_or0;
    assign SE_i_mul_gaussian33_im0_cma_backEN = ~ (SE_i_mul_gaussian33_im0_cma_s_tv_2 | SE_i_mul_gaussian33_im0_cma_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mul_gaussian33_im0_cma_and0 = SE_out_i_llvm_fpga_mem_lm32_gaussian29_V0 & SE_i_mul_gaussian33_im0_cma_backEN;
    assign SE_i_mul_gaussian33_im0_cma_v_s_0 = SE_out_i_llvm_fpga_mem_lm53_gaussian32_V0 & SE_i_mul_gaussian33_im0_cma_and0;
    // Backward Stall generation
    assign SE_i_mul_gaussian33_im0_cma_backStall = ~ (SE_i_mul_gaussian33_im0_cma_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mul_gaussian33_im0_cma_R_s_0 <= 1'b0;
            SE_i_mul_gaussian33_im0_cma_R_s_1 <= 1'b0;
            SE_i_mul_gaussian33_im0_cma_R_v_0 <= 1'b0;
            SE_i_mul_gaussian33_im0_cma_R_v_1 <= 1'b0;
            SE_i_mul_gaussian33_im0_cma_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_i_mul_gaussian33_im0_cma_backEN == 1'b1)
            begin
                SE_i_mul_gaussian33_im0_cma_R_s_0 <= SE_i_mul_gaussian33_im0_cma_v_s_0;
            end

            if (SE_i_mul_gaussian33_im0_cma_backEN == 1'b1)
            begin
                SE_i_mul_gaussian33_im0_cma_R_s_1 <= SE_i_mul_gaussian33_im0_cma_R_s_0;
            end

            if (SE_i_mul_gaussian33_im0_cma_backEN == 1'b0)
            begin
                SE_i_mul_gaussian33_im0_cma_R_v_0 <= SE_i_mul_gaussian33_im0_cma_R_v_0 & SE_i_mul_gaussian33_im0_cma_s_tv_0;
            end
            else
            begin
                SE_i_mul_gaussian33_im0_cma_R_v_0 <= SE_i_mul_gaussian33_im0_cma_R_s_1;
            end

            if (SE_i_mul_gaussian33_im0_cma_backEN == 1'b0)
            begin
                SE_i_mul_gaussian33_im0_cma_R_v_1 <= SE_i_mul_gaussian33_im0_cma_R_v_1 & SE_i_mul_gaussian33_im0_cma_s_tv_1;
            end
            else
            begin
                SE_i_mul_gaussian33_im0_cma_R_v_1 <= SE_i_mul_gaussian33_im0_cma_R_s_1;
            end

            if (SE_i_mul_gaussian33_im0_cma_backEN == 1'b0)
            begin
                SE_i_mul_gaussian33_im0_cma_R_v_2 <= SE_i_mul_gaussian33_im0_cma_R_v_2 & SE_i_mul_gaussian33_im0_cma_s_tv_2;
            end
            else
            begin
                SE_i_mul_gaussian33_im0_cma_R_v_2 <= SE_i_mul_gaussian33_im0_cma_R_s_1;
            end

        end
    end

    // SE_out_i_llvm_fpga_mem_lm53_gaussian32(STALLENABLE,978)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_lm53_gaussian32_V0 = SE_out_i_llvm_fpga_mem_lm53_gaussian32_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_lm53_gaussian32_backStall = SE_i_mul_gaussian33_im0_cma_backStall | ~ (SE_out_i_llvm_fpga_mem_lm53_gaussian32_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_lm53_gaussian32_wireValid = i_llvm_fpga_mem_lm53_gaussian32_out_o_valid;

    // bubble_join_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0(BITJOIN,874)
    assign bubble_join_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_q = i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0(BITSELECT,875)
    assign bubble_select_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_b = $unsigned(bubble_join_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_q[1:0]);

    // i_first_cleanup_gaussian1_sel_x(BITSELECT,221)@3
    assign i_first_cleanup_gaussian1_sel_x_b = bubble_select_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_b[0:0];

    // i_first_cleanup_xor_gaussian2(LOGICAL,21)@3
    assign i_first_cleanup_xor_gaussian2_q = i_first_cleanup_gaussian1_sel_x_b ^ VCC_q;

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13(BITJOIN,828)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_q = i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_out_dest_data_out_9_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13(BITSELECT,829)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_q[0:0]);

    // i_unnamed_gaussian14(LOGICAL,81)@3
    assign i_unnamed_gaussian14_q = bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_b ^ VCC_q;

    // i_first_cleanup_xor_or_gaussian23(LOGICAL,22)@3
    assign i_first_cleanup_xor_or_gaussian23_q = i_unnamed_gaussian14_q | i_first_cleanup_xor_gaussian2_q;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27(BITJOIN,860)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_q = i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27(BITSELECT,861)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_q[0:0]);

    // i_memdep_phi_or_gaussian28(LOGICAL,72)@3
    assign i_memdep_phi_or_gaussian28_q = bubble_select_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_b | redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_1_0_q;

    // i_arrayidx16_gaussian0_mult_x_bs1(BITSELECT,277)@2
    assign i_arrayidx16_gaussian0_mult_x_bs1_b = i_idxprom11_gaussian16_vt_join_q[63:54];

    // addsumAHighB_uid540_i_arrayidx16_gaussian0_mult_x_im0(ADD,539)@2
    assign addsumAHighB_uid540_i_arrayidx16_gaussian0_mult_x_im0_a = {1'b0, i_arrayidx16_gaussian0_mult_x_bs1_b};
    assign addsumAHighB_uid540_i_arrayidx16_gaussian0_mult_x_im0_b = {3'b000, lowRangeB_uid538_i_arrayidx16_gaussian0_mult_x_im0_merged_bit_select_c};
    assign addsumAHighB_uid540_i_arrayidx16_gaussian0_mult_x_im0_o = $unsigned(addsumAHighB_uid540_i_arrayidx16_gaussian0_mult_x_im0_a) + $unsigned(addsumAHighB_uid540_i_arrayidx16_gaussian0_mult_x_im0_b);
    assign addsumAHighB_uid540_i_arrayidx16_gaussian0_mult_x_im0_q = addsumAHighB_uid540_i_arrayidx16_gaussian0_mult_x_im0_o[10:0];

    // lowRangeB_uid538_i_arrayidx16_gaussian0_mult_x_im0_merged_bit_select(BITSELECT,756)@2
    assign lowRangeB_uid538_i_arrayidx16_gaussian0_mult_x_im0_merged_bit_select_b = i_arrayidx16_gaussian0_mult_x_bs1_b[1:0];
    assign lowRangeB_uid538_i_arrayidx16_gaussian0_mult_x_im0_merged_bit_select_c = i_arrayidx16_gaussian0_mult_x_bs1_b[9:2];

    // add_uid541_i_arrayidx16_gaussian0_mult_x_im0(BITJOIN,540)@2
    assign add_uid541_i_arrayidx16_gaussian0_mult_x_im0_q = {addsumAHighB_uid540_i_arrayidx16_gaussian0_mult_x_im0_q, lowRangeB_uid538_i_arrayidx16_gaussian0_mult_x_im0_merged_bit_select_b};

    // sR_mergedSignalTM_uid546_i_arrayidx16_gaussian0_mult_x_im0(BITJOIN,545)@2
    assign sR_mergedSignalTM_uid546_i_arrayidx16_gaussian0_mult_x_im0_q = {add_uid541_i_arrayidx16_gaussian0_mult_x_im0_q, sR_bottomExtension_uid324_i_arrayidx10_gaussian0_mult_x_im0_q};

    // i_arrayidx16_gaussian0_mult_x_sums_align_3(BITSHIFT,291)@2
    assign i_arrayidx16_gaussian0_mult_x_sums_align_3_qint = { sR_mergedSignalTM_uid546_i_arrayidx16_gaussian0_mult_x_im0_q, 11'b00000000000 };
    assign i_arrayidx16_gaussian0_mult_x_sums_align_3_q = i_arrayidx16_gaussian0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx16_gaussian0_mult_x_bs7(BITSELECT,283)@2
    assign i_arrayidx16_gaussian0_mult_x_bs7_in = i_idxprom11_gaussian16_vt_join_q[35:0];
    assign i_arrayidx16_gaussian0_mult_x_bs7_b = i_arrayidx16_gaussian0_mult_x_bs7_in[35:18];

    // addsumAHighB_uid644_i_arrayidx16_gaussian0_mult_x_im6(ADD,643)@2
    assign addsumAHighB_uid644_i_arrayidx16_gaussian0_mult_x_im6_a = {1'b0, i_arrayidx16_gaussian0_mult_x_bs7_b};
    assign addsumAHighB_uid644_i_arrayidx16_gaussian0_mult_x_im6_b = {3'b000, lowRangeB_uid642_i_arrayidx16_gaussian0_mult_x_im6_merged_bit_select_c};
    assign addsumAHighB_uid644_i_arrayidx16_gaussian0_mult_x_im6_o = $unsigned(addsumAHighB_uid644_i_arrayidx16_gaussian0_mult_x_im6_a) + $unsigned(addsumAHighB_uid644_i_arrayidx16_gaussian0_mult_x_im6_b);
    assign addsumAHighB_uid644_i_arrayidx16_gaussian0_mult_x_im6_q = addsumAHighB_uid644_i_arrayidx16_gaussian0_mult_x_im6_o[18:0];

    // lowRangeB_uid642_i_arrayidx16_gaussian0_mult_x_im6_merged_bit_select(BITSELECT,758)@2
    assign lowRangeB_uid642_i_arrayidx16_gaussian0_mult_x_im6_merged_bit_select_b = i_arrayidx16_gaussian0_mult_x_bs7_b[1:0];
    assign lowRangeB_uid642_i_arrayidx16_gaussian0_mult_x_im6_merged_bit_select_c = i_arrayidx16_gaussian0_mult_x_bs7_b[17:2];

    // add_uid645_i_arrayidx16_gaussian0_mult_x_im6(BITJOIN,644)@2
    assign add_uid645_i_arrayidx16_gaussian0_mult_x_im6_q = {addsumAHighB_uid644_i_arrayidx16_gaussian0_mult_x_im6_q, lowRangeB_uid642_i_arrayidx16_gaussian0_mult_x_im6_merged_bit_select_b};

    // sR_mergedSignalTM_uid650_i_arrayidx16_gaussian0_mult_x_im6(BITJOIN,649)@2
    assign sR_mergedSignalTM_uid650_i_arrayidx16_gaussian0_mult_x_im6_q = {add_uid645_i_arrayidx16_gaussian0_mult_x_im6_q, sR_bottomExtension_uid324_i_arrayidx10_gaussian0_mult_x_im0_q};

    // i_arrayidx16_gaussian0_mult_x_sums_align_2(BITSHIFT,290)@2
    assign i_arrayidx16_gaussian0_mult_x_sums_align_2_qint = { sR_mergedSignalTM_uid650_i_arrayidx16_gaussian0_mult_x_im6_q, 18'b000000000000000000 };
    assign i_arrayidx16_gaussian0_mult_x_sums_align_2_q = i_arrayidx16_gaussian0_mult_x_sums_align_2_qint[42:0];

    // i_arrayidx16_gaussian0_mult_x_sums_join_4(BITJOIN,292)@2
    assign i_arrayidx16_gaussian0_mult_x_sums_join_4_q = {i_arrayidx16_gaussian0_mult_x_sums_align_3_q, i_arrayidx16_gaussian0_mult_x_sums_align_2_q};

    // i_arrayidx16_gaussian0_mult_x_bs4(BITSELECT,280)@2
    assign i_arrayidx16_gaussian0_mult_x_bs4_in = i_idxprom11_gaussian16_vt_join_q[53:0];
    assign i_arrayidx16_gaussian0_mult_x_bs4_b = i_arrayidx16_gaussian0_mult_x_bs4_in[53:36];

    // addsumAHighB_uid586_i_arrayidx16_gaussian0_mult_x_im3(ADD,585)@2
    assign addsumAHighB_uid586_i_arrayidx16_gaussian0_mult_x_im3_a = {1'b0, i_arrayidx16_gaussian0_mult_x_bs4_b};
    assign addsumAHighB_uid586_i_arrayidx16_gaussian0_mult_x_im3_b = {3'b000, lowRangeB_uid584_i_arrayidx16_gaussian0_mult_x_im3_merged_bit_select_c};
    assign addsumAHighB_uid586_i_arrayidx16_gaussian0_mult_x_im3_o = $unsigned(addsumAHighB_uid586_i_arrayidx16_gaussian0_mult_x_im3_a) + $unsigned(addsumAHighB_uid586_i_arrayidx16_gaussian0_mult_x_im3_b);
    assign addsumAHighB_uid586_i_arrayidx16_gaussian0_mult_x_im3_q = addsumAHighB_uid586_i_arrayidx16_gaussian0_mult_x_im3_o[18:0];

    // lowRangeB_uid584_i_arrayidx16_gaussian0_mult_x_im3_merged_bit_select(BITSELECT,757)@2
    assign lowRangeB_uid584_i_arrayidx16_gaussian0_mult_x_im3_merged_bit_select_b = i_arrayidx16_gaussian0_mult_x_bs4_b[1:0];
    assign lowRangeB_uid584_i_arrayidx16_gaussian0_mult_x_im3_merged_bit_select_c = i_arrayidx16_gaussian0_mult_x_bs4_b[17:2];

    // add_uid587_i_arrayidx16_gaussian0_mult_x_im3(BITJOIN,586)@2
    assign add_uid587_i_arrayidx16_gaussian0_mult_x_im3_q = {addsumAHighB_uid586_i_arrayidx16_gaussian0_mult_x_im3_q, lowRangeB_uid584_i_arrayidx16_gaussian0_mult_x_im3_merged_bit_select_b};

    // sR_mergedSignalTM_uid592_i_arrayidx16_gaussian0_mult_x_im3(BITJOIN,591)@2
    assign sR_mergedSignalTM_uid592_i_arrayidx16_gaussian0_mult_x_im3_q = {add_uid587_i_arrayidx16_gaussian0_mult_x_im3_q, sR_bottomExtension_uid324_i_arrayidx10_gaussian0_mult_x_im0_q};

    // i_arrayidx16_gaussian0_mult_x_sums_align_0(BITSHIFT,288)@2
    assign i_arrayidx16_gaussian0_mult_x_sums_align_0_qint = { sR_mergedSignalTM_uid592_i_arrayidx16_gaussian0_mult_x_im3_q, 11'b00000000000 };
    assign i_arrayidx16_gaussian0_mult_x_sums_align_0_q = i_arrayidx16_gaussian0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx16_gaussian0_mult_x_bs10(BITSELECT,286)@2
    assign i_arrayidx16_gaussian0_mult_x_bs10_in = i_idxprom11_gaussian16_vt_join_q[17:0];
    assign i_arrayidx16_gaussian0_mult_x_bs10_b = i_arrayidx16_gaussian0_mult_x_bs10_in[17:0];

    // addsumAHighB_uid702_i_arrayidx16_gaussian0_mult_x_im9(ADD,701)@2
    assign addsumAHighB_uid702_i_arrayidx16_gaussian0_mult_x_im9_a = {1'b0, i_arrayidx16_gaussian0_mult_x_bs10_b};
    assign addsumAHighB_uid702_i_arrayidx16_gaussian0_mult_x_im9_b = {3'b000, lowRangeB_uid700_i_arrayidx16_gaussian0_mult_x_im9_merged_bit_select_c};
    assign addsumAHighB_uid702_i_arrayidx16_gaussian0_mult_x_im9_o = $unsigned(addsumAHighB_uid702_i_arrayidx16_gaussian0_mult_x_im9_a) + $unsigned(addsumAHighB_uid702_i_arrayidx16_gaussian0_mult_x_im9_b);
    assign addsumAHighB_uid702_i_arrayidx16_gaussian0_mult_x_im9_q = addsumAHighB_uid702_i_arrayidx16_gaussian0_mult_x_im9_o[18:0];

    // lowRangeB_uid700_i_arrayidx16_gaussian0_mult_x_im9_merged_bit_select(BITSELECT,759)@2
    assign lowRangeB_uid700_i_arrayidx16_gaussian0_mult_x_im9_merged_bit_select_b = i_arrayidx16_gaussian0_mult_x_bs10_b[1:0];
    assign lowRangeB_uid700_i_arrayidx16_gaussian0_mult_x_im9_merged_bit_select_c = i_arrayidx16_gaussian0_mult_x_bs10_b[17:2];

    // add_uid703_i_arrayidx16_gaussian0_mult_x_im9(BITJOIN,702)@2
    assign add_uid703_i_arrayidx16_gaussian0_mult_x_im9_q = {addsumAHighB_uid702_i_arrayidx16_gaussian0_mult_x_im9_q, lowRangeB_uid700_i_arrayidx16_gaussian0_mult_x_im9_merged_bit_select_b};

    // sR_mergedSignalTM_uid708_i_arrayidx16_gaussian0_mult_x_im9(BITJOIN,707)@2
    assign sR_mergedSignalTM_uid708_i_arrayidx16_gaussian0_mult_x_im9_q = {add_uid703_i_arrayidx16_gaussian0_mult_x_im9_q, sR_bottomExtension_uid324_i_arrayidx10_gaussian0_mult_x_im0_q};

    // i_arrayidx16_gaussian0_mult_x_sums_join_1(BITJOIN,289)@2
    assign i_arrayidx16_gaussian0_mult_x_sums_join_1_q = {i_arrayidx16_gaussian0_mult_x_sums_align_0_q, sR_mergedSignalTM_uid708_i_arrayidx16_gaussian0_mult_x_im9_q};

    // i_arrayidx16_gaussian0_mult_x_sums_result_add_0_0(ADD,293)@2
    assign i_arrayidx16_gaussian0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx16_gaussian0_mult_x_sums_join_1_q};
    assign i_arrayidx16_gaussian0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx16_gaussian0_mult_x_sums_join_4_q};
    assign i_arrayidx16_gaussian0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx16_gaussian0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx16_gaussian0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx16_gaussian0_mult_x_sums_result_add_0_0_q = i_arrayidx16_gaussian0_mult_x_sums_result_add_0_0_o[71:0];

    // i_arrayidx16_gaussian0_mult_extender_x(BITJOIN,212)@2
    assign i_arrayidx16_gaussian0_mult_extender_x_q = {i_arrayidx10_gaussian0_mult_multconst_x_q, i_arrayidx16_gaussian0_mult_x_sums_result_add_0_0_q[70:0]};

    // i_arrayidx16_gaussian0_trunc_sel_x(BITSELECT,214)@2
    assign i_arrayidx16_gaussian0_trunc_sel_x_b = i_arrayidx16_gaussian0_mult_extender_x_q[63:0];

    // redist1_i_arrayidx16_gaussian0_trunc_sel_x_b_1_0(REG,794)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_arrayidx16_gaussian0_trunc_sel_x_b_1_0_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist1_i_arrayidx16_gaussian0_trunc_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist1_i_arrayidx16_gaussian0_trunc_sel_x_b_1_0_q <= $unsigned(i_arrayidx16_gaussian0_trunc_sel_x_b);
        end
    end

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024a20i32_a2214_gaussian30(BITJOIN,834)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024a20i32_a2214_gaussian30_q = i_llvm_fpga_ffwd_dest_p1024a20i32_a2214_gaussian30_out_dest_data_out_1_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024a20i32_a2214_gaussian30(BITSELECT,835)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024a20i32_a2214_gaussian30_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024a20i32_a2214_gaussian30_q[63:0]);

    // i_arrayidx16_gaussian0_add_x(ADD,201)@3
    assign i_arrayidx16_gaussian0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_p1024a20i32_a2214_gaussian30_b};
    assign i_arrayidx16_gaussian0_add_x_b = {1'b0, redist1_i_arrayidx16_gaussian0_trunc_sel_x_b_1_0_q};
    assign i_arrayidx16_gaussian0_add_x_o = $unsigned(i_arrayidx16_gaussian0_add_x_a) + $unsigned(i_arrayidx16_gaussian0_add_x_b);
    assign i_arrayidx16_gaussian0_add_x_q = i_arrayidx16_gaussian0_add_x_o[64:0];

    // i_arrayidx16_gaussian0_dupName_0_trunc_sel_x(BITSELECT,215)@3
    assign i_arrayidx16_gaussian0_dupName_0_trunc_sel_x_b = i_arrayidx16_gaussian0_add_x_q[63:0];

    // i_arrayidx16_gaussian0_dupName_0_add_x(ADD,209)@3
    assign i_arrayidx16_gaussian0_dupName_0_add_x_a = {1'b0, i_arrayidx16_gaussian0_dupName_0_trunc_sel_x_b};
    assign i_arrayidx16_gaussian0_dupName_0_add_x_b = {1'b0, i_arrayidx10_gaussian0_shift_join_x_q};
    assign i_arrayidx16_gaussian0_dupName_0_add_x_o = $unsigned(i_arrayidx16_gaussian0_dupName_0_add_x_a) + $unsigned(i_arrayidx16_gaussian0_dupName_0_add_x_b);
    assign i_arrayidx16_gaussian0_dupName_0_add_x_q = i_arrayidx16_gaussian0_dupName_0_add_x_o[64:0];

    // i_arrayidx16_gaussian0_dupName_2_trunc_sel_x(BITSELECT,216)@3
    assign i_arrayidx16_gaussian0_dupName_2_trunc_sel_x_b = i_arrayidx16_gaussian0_dupName_0_add_x_q[63:0];

    // i_llvm_fpga_mem_lm53_gaussian32(BLACKBOX,46)@3
    // in in_i_stall@20000000
    // out out_lm53_gaussian_avm_address@20000000
    // out out_lm53_gaussian_avm_burstcount@20000000
    // out out_lm53_gaussian_avm_byteenable@20000000
    // out out_lm53_gaussian_avm_enable@20000000
    // out out_lm53_gaussian_avm_read@20000000
    // out out_lm53_gaussian_avm_write@20000000
    // out out_lm53_gaussian_avm_writedata@20000000
    // out out_o_readdata@35
    // out out_o_stall@20000000
    // out out_o_valid@35
    gaussian_i_llvm_fpga_mem_lm53_0 thei_llvm_fpga_mem_lm53_gaussian32 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx16_gaussian0_dupName_2_trunc_sel_x_b),
        .in_i_dependence(i_memdep_phi_or_gaussian28_q),
        .in_i_predicate(i_first_cleanup_xor_or_gaussian23_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm53_gaussian32_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_ffwd_dest_p1024a20i32_a2214_gaussian30_V0),
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

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27(STALLENABLE,984)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_consumed0 = (~ (SE_i_arrayidx12_gaussian0_shift_join_x_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_consumed1 = (~ (SE_out_i_llvm_fpga_ffwd_dest_p1024a20i32_a2214_gaussian30_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_or0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_and0 = i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_out_valid_out;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_wireValid = SE_redist16_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_1_0_V0 & SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_and0;

    // SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13(STALLENABLE,964)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_fromReg1 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_fromReg2 <= SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_consumed0 = (~ (SE_i_arrayidx12_gaussian0_shift_join_x_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_consumed1 = (~ (SE_out_i_llvm_fpga_ffwd_dest_p1024a20i32_a2214_gaussian30_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_fromReg1;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_consumed2 = (~ (SE_redist20_i_first_cleanup_xor_or_gaussian23_q_4_0_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_fromReg2;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_backStall & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_consumed1;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_toReg2 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_consumed2;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_or0 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_or1 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_or0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_consumed2 & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_or1);
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_backStall = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_V1 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_fromReg1);
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_V2 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_and0 = i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_wireValid = SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_V1 & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_and0;

    // SE_out_i_llvm_fpga_push_i32_k_017_push13_gaussian38(STALLENABLE,1024)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i32_k_017_push13_gaussian38_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i32_k_017_push13_gaussian38_wireValid = i_llvm_fpga_push_i32_k_017_push13_gaussian38_out_valid_out;

    // c_i32_161(CONSTANT,9)
    assign c_i32_161_q = $unsigned(32'b00000000000000000000000000000001);

    // bubble_join_redist13_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_out_data_out_66_fifo(BITJOIN,929)
    assign bubble_join_redist13_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_out_data_out_66_fifo_q = redist13_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_out_data_out_66_fifo_data_out;

    // bubble_select_redist13_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_out_data_out_66_fifo(BITSELECT,930)
    assign bubble_select_redist13_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_out_data_out_66_fifo_b = $unsigned(bubble_join_redist13_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_out_data_out_66_fifo_q[31:0]);

    // i_inc_gaussian37(ADD,36)@69
    assign i_inc_gaussian37_a = {1'b0, bubble_select_redist13_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_out_data_out_66_fifo_b};
    assign i_inc_gaussian37_b = {1'b0, c_i32_161_q};
    assign i_inc_gaussian37_o = $unsigned(i_inc_gaussian37_a) + $unsigned(i_inc_gaussian37_b);
    assign i_inc_gaussian37_q = i_inc_gaussian37_o[32:0];

    // bgTrunc_i_inc_gaussian37_sel_x(BITSELECT,165)@69
    assign bgTrunc_i_inc_gaussian37_sel_x_b = i_inc_gaussian37_q[31:0];

    // i_llvm_fpga_push_i32_k_017_push13_gaussian38(BLACKBOX,69)@69
    // in in_stall_in@20000000
    // out out_data_out@70
    // out out_feedback_out_13@20000000
    // out out_feedback_valid_out_13@20000000
    // out out_stall_out@20000000
    // out out_valid_out@70
    gaussian_i_llvm_fpga_push_i32_k_017_push13_0 thei_llvm_fpga_push_i32_k_017_push13_gaussian38 (
        .in_data_in(bgTrunc_i_inc_gaussian37_sel_x_b),
        .in_feedback_stall_in_13(i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_out_feedback_stall_out_13),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_gaussian4_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i32_k_017_push13_gaussian38_backStall),
        .in_valid_in(SE_out_redist13_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_out_data_out_66_fifo_V0),
        .out_data_out(),
        .out_feedback_out_13(i_llvm_fpga_push_i32_k_017_push13_gaussian38_out_feedback_out_13),
        .out_feedback_valid_out_13(i_llvm_fpga_push_i32_k_017_push13_gaussian38_out_feedback_valid_out_13),
        .out_stall_out(i_llvm_fpga_push_i32_k_017_push13_gaussian38_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_k_017_push13_gaussian38_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist13_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_out_data_out_66_fifo(STALLENABLE,1153)
    // Valid signal propagation
    assign SE_out_redist13_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_out_data_out_66_fifo_V0 = SE_out_redist13_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_out_data_out_66_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist13_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_out_data_out_66_fifo_backStall = i_llvm_fpga_push_i32_k_017_push13_gaussian38_out_stall_out | ~ (SE_out_redist13_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_out_data_out_66_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist13_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_out_data_out_66_fifo_and0 = redist13_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_out_data_out_66_fifo_valid_out;
    assign SE_out_redist13_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_out_data_out_66_fifo_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_V4 & SE_out_redist13_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_out_data_out_66_fifo_and0;

    // redist13_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_out_data_out_66_fifo(STALLFIFO,806)
    assign redist13_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_out_data_out_66_fifo_valid_in = SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_V0;
    assign redist13_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_out_data_out_66_fifo_stall_in = SE_out_redist13_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_out_data_out_66_fifo_backStall;
    assign redist13_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_out_data_out_66_fifo_data_in = bubble_select_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_b;
    assign redist13_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_out_data_out_66_fifo_valid_in_bitsignaltemp = redist13_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_out_data_out_66_fifo_valid_in[0];
    assign redist13_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_out_data_out_66_fifo_stall_in_bitsignaltemp = redist13_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_out_data_out_66_fifo_stall_in[0];
    assign redist13_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_out_data_out_66_fifo_valid_out[0] = redist13_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_out_data_out_66_fifo_valid_out_bitsignaltemp;
    assign redist13_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_out_data_out_66_fifo_stall_out[0] = redist13_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_out_data_out_66_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(67),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist13_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_out_data_out_66_fifo (
        .valid_in(redist13_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_out_data_out_66_fifo_valid_in_bitsignaltemp),
        .stall_in(redist13_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_out_data_out_66_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_b),
        .valid_out(redist13_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_out_data_out_66_fifo_valid_out_bitsignaltemp),
        .stall_out(redist13_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_out_data_out_66_fifo_stall_out_bitsignaltemp),
        .data_out(redist13_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_out_data_out_66_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19(STALLENABLE,1000)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_fromReg0 <= SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_fromReg1 <= SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_fromReg2 <= SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_consumed0 = (~ (redist13_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_out_data_out_66_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_wireValid) | SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_consumed1 = (~ (SE_out_i_llvm_fpga_ffwd_dest_p1024a20i32_a2215_gaussian21_backStall) & SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_wireValid) | SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_consumed2 = (~ (SE_out_i_llvm_fpga_ffwd_dest_p1024a20i32_a2214_gaussian30_backStall) & SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_wireValid) | SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_fromReg2;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_StallValid = SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_backStall & SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_wireValid;
    assign SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_toReg0 = SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_StallValid & SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_toReg1 = SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_StallValid & SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_consumed1;
    assign SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_toReg2 = SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_StallValid & SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_consumed2;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_or0 = SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_or1 = SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_consumed1 & SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_or0;
    assign SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_wireStall = ~ (SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_consumed2 & SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_or1);
    assign SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_backStall = SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_V0 = SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_V1 = SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_V2 = SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_wireValid = i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_out_valid_out;

    // SE_redist1_i_arrayidx16_gaussian0_trunc_sel_x_b_1_0(STALLENABLE,1138)
    // Valid signal propagation
    assign SE_redist1_i_arrayidx16_gaussian0_trunc_sel_x_b_1_0_V0 = SE_redist1_i_arrayidx16_gaussian0_trunc_sel_x_b_1_0_R_v_0;
    assign SE_redist1_i_arrayidx16_gaussian0_trunc_sel_x_b_1_0_V1 = SE_redist1_i_arrayidx16_gaussian0_trunc_sel_x_b_1_0_R_v_1;
    // Stall signal propagation
    assign SE_redist1_i_arrayidx16_gaussian0_trunc_sel_x_b_1_0_s_tv_0 = SE_out_i_llvm_fpga_ffwd_dest_p1024a20i32_a2214_gaussian30_backStall & SE_redist1_i_arrayidx16_gaussian0_trunc_sel_x_b_1_0_R_v_0;
    assign SE_redist1_i_arrayidx16_gaussian0_trunc_sel_x_b_1_0_s_tv_1 = SE_i_arrayidx12_gaussian0_shift_join_x_backStall & SE_redist1_i_arrayidx16_gaussian0_trunc_sel_x_b_1_0_R_v_1;
    // Backward Enable generation
    assign SE_redist1_i_arrayidx16_gaussian0_trunc_sel_x_b_1_0_or0 = SE_redist1_i_arrayidx16_gaussian0_trunc_sel_x_b_1_0_s_tv_0;
    assign SE_redist1_i_arrayidx16_gaussian0_trunc_sel_x_b_1_0_backEN = ~ (SE_redist1_i_arrayidx16_gaussian0_trunc_sel_x_b_1_0_s_tv_1 | SE_redist1_i_arrayidx16_gaussian0_trunc_sel_x_b_1_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist1_i_arrayidx16_gaussian0_trunc_sel_x_b_1_0_v_s_0 = SE_redist1_i_arrayidx16_gaussian0_trunc_sel_x_b_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_i32_j_02018_gaussian15_V0;
    // Backward Stall generation
    assign SE_redist1_i_arrayidx16_gaussian0_trunc_sel_x_b_1_0_backStall = ~ (SE_redist1_i_arrayidx16_gaussian0_trunc_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist1_i_arrayidx16_gaussian0_trunc_sel_x_b_1_0_R_v_0 <= 1'b0;
            SE_redist1_i_arrayidx16_gaussian0_trunc_sel_x_b_1_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist1_i_arrayidx16_gaussian0_trunc_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist1_i_arrayidx16_gaussian0_trunc_sel_x_b_1_0_R_v_0 <= SE_redist1_i_arrayidx16_gaussian0_trunc_sel_x_b_1_0_R_v_0 & SE_redist1_i_arrayidx16_gaussian0_trunc_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist1_i_arrayidx16_gaussian0_trunc_sel_x_b_1_0_R_v_0 <= SE_redist1_i_arrayidx16_gaussian0_trunc_sel_x_b_1_0_v_s_0;
            end

            if (SE_redist1_i_arrayidx16_gaussian0_trunc_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist1_i_arrayidx16_gaussian0_trunc_sel_x_b_1_0_R_v_1 <= SE_redist1_i_arrayidx16_gaussian0_trunc_sel_x_b_1_0_R_v_1 & SE_redist1_i_arrayidx16_gaussian0_trunc_sel_x_b_1_0_s_tv_1;
            end
            else
            begin
                SE_redist1_i_arrayidx16_gaussian0_trunc_sel_x_b_1_0_R_v_1 <= SE_redist1_i_arrayidx16_gaussian0_trunc_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_dest_p1024a20i32_a2214_gaussian30(STALLENABLE,968)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a20i32_a2214_gaussian30_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1024a20i32_a2214_gaussian30_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a20i32_a2214_gaussian30_backStall = i_llvm_fpga_mem_lm53_gaussian32_out_o_stall | ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024a20i32_a2214_gaussian30_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a20i32_a2214_gaussian30_and0 = i_llvm_fpga_ffwd_dest_p1024a20i32_a2214_gaussian30_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a20i32_a2214_gaussian30_and1 = SE_redist1_i_arrayidx16_gaussian0_trunc_sel_x_b_1_0_V0 & SE_out_i_llvm_fpga_ffwd_dest_p1024a20i32_a2214_gaussian30_and0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a20i32_a2214_gaussian30_and2 = SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_V2 & SE_out_i_llvm_fpga_ffwd_dest_p1024a20i32_a2214_gaussian30_and1;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a20i32_a2214_gaussian30_and3 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_V1 & SE_out_i_llvm_fpga_ffwd_dest_p1024a20i32_a2214_gaussian30_and2;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a20i32_a2214_gaussian30_wireValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_V1 & SE_out_i_llvm_fpga_ffwd_dest_p1024a20i32_a2214_gaussian30_and3;

    // i_llvm_fpga_ffwd_dest_p1024a20i32_a2214_gaussian30(BLACKBOX,41)@2
    // in in_stall_in@20000000
    // out out_dest_data_out_1_0@3
    // out out_stall_out@20000000
    // out out_valid_out@3
    gaussian_i_llvm_fpga_ffwd_dest_p1024a20i32_a2214_0 thei_llvm_fpga_ffwd_dest_p1024a20i32_a2214_gaussian30 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1024a20i32_a2214_gaussian30_backStall),
        .in_valid_in(SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V7),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_p1024a20i32_a2214_gaussian30_out_dest_data_out_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024a20i32_a2214_gaussian30_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024a20i32_a2214_gaussian30_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_p1024a20i32_a2215_gaussian21(BLACKBOX,42)@2
    // in in_stall_in@20000000
    // out out_dest_data_out_1_0@3
    // out out_stall_out@20000000
    // out out_valid_out@3
    gaussian_i_llvm_fpga_ffwd_dest_p1024a20i32_a2215_0 thei_llvm_fpga_ffwd_dest_p1024a20i32_a2215_gaussian21 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1024a20i32_a2215_gaussian21_backStall),
        .in_valid_in(SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V6),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_p1024a20i32_a2215_gaussian21_out_dest_data_out_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024a20i32_a2215_gaussian21_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024a20i32_a2215_gaussian21_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_p1024i32_c2113_gaussian17(BLACKBOX,43)@2
    // in in_stall_in@20000000
    // out out_dest_data_out_0_0@3
    // out out_stall_out@20000000
    // out out_valid_out@3
    gaussian_i_llvm_fpga_ffwd_dest_p1024i32_c2113_0 thei_llvm_fpga_ffwd_dest_p1024i32_c2113_gaussian17 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(SE_i_arrayidx12_gaussian0_shift_join_x_backStall),
        .in_valid_in(SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V5),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_p1024i32_c2113_gaussian17_out_dest_data_out_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024i32_c2113_gaussian17_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024i32_c2113_gaussian17_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13(BLACKBOX,39)@2
    // in in_stall_in@20000000
    // out out_dest_data_out_9_0@3
    // out out_stall_out@20000000
    // out out_valid_out@3
    gaussian_i_llvm_fpga_ffwd_dest_i1_cmp21824_0 thei_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13 (
        .in_intel_reserved_ffwd_9_0(in_intel_reserved_ffwd_9_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_backStall),
        .in_valid_in(SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V4),
        .out_dest_data_out_9_0(i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_out_dest_data_out_9_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_k_017_pop13_gaussian19(BLACKBOX,57)@2
    // in in_stall_in@20000000
    // out out_data_out@3
    // out out_feedback_stall_out_13@20000000
    // out out_stall_out@20000000
    // out out_valid_out@3
    gaussian_i_llvm_fpga_pop_i32_k_017_pop13_0 thei_llvm_fpga_pop_i32_k_017_pop13_gaussian19 (
        .in_data_in(c_i32_161_q),
        .in_dir(redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_q),
        .in_feedback_in_13(i_llvm_fpga_push_i32_k_017_push13_gaussian38_out_feedback_out_13),
        .in_feedback_valid_in_13(i_llvm_fpga_push_i32_k_017_push13_gaussian38_out_feedback_valid_out_13),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_backStall),
        .in_valid_in(SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V2),
        .out_data_out(i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_out_data_out),
        .out_feedback_stall_out_13(i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_out_feedback_stall_out_13),
        .out_stall_out(i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27(BLACKBOX,49)@2
    // in in_stall_in@20000000
    // out out_data_out@3
    // out out_feedback_stall_out_14@20000000
    // out out_stall_out@20000000
    // out out_valid_out@3
    gaussian_i_llvm_fpga_pop_i1_memdep_phi4_pop14_0 thei_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27 (
        .in_data_in(GND_q),
        .in_dir(redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_q),
        .in_feedback_in_14(i_llvm_fpga_push_i1_memdep_phi4_push14_gaussian36_out_feedback_out_14),
        .in_feedback_valid_in_14(i_llvm_fpga_push_i1_memdep_phi4_push14_gaussian36_out_feedback_valid_out_14),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_backStall),
        .in_valid_in(SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_out_data_out),
        .out_feedback_stall_out_14(i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_out_feedback_stall_out_14),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44(BLACKBOX,38)@68
    // in in_stall_in@20000000
    // out out_dest_data_out_9_0@69
    // out out_stall_out@20000000
    // out out_valid_out@69
    gaussian_i_llvm_fpga_ffwd_dest_i1_cmp21823_0 thei_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44 (
        .in_intel_reserved_ffwd_9_0(in_intel_reserved_ffwd_9_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_backStall),
        .in_valid_in(SE_out_bubble_out_gaussian_B7_merge_reg_aunroll_x_6_V0),
        .out_dest_data_out_9_0(i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_out_dest_data_out_9_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_gaussian_B7_merge_reg_aunroll_x_6(STALLENABLE,1301)
    // Valid signal propagation
    assign SE_out_bubble_out_gaussian_B7_merge_reg_aunroll_x_6_V0 = SE_out_bubble_out_gaussian_B7_merge_reg_aunroll_x_6_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_gaussian_B7_merge_reg_aunroll_x_6_backStall = i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_out_stall_out | ~ (SE_out_bubble_out_gaussian_B7_merge_reg_aunroll_x_6_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_gaussian_B7_merge_reg_aunroll_x_6_wireValid = bubble_out_gaussian_B7_merge_reg_aunroll_x_6_reg_valid_out;

    // bubble_out_gaussian_B7_merge_reg_aunroll_x_6_reg(STALLFIFO,1362)
    assign bubble_out_gaussian_B7_merge_reg_aunroll_x_6_reg_valid_in = SE_out_gaussian_B7_merge_reg_aunroll_x_V1;
    assign bubble_out_gaussian_B7_merge_reg_aunroll_x_6_reg_stall_in = SE_out_bubble_out_gaussian_B7_merge_reg_aunroll_x_6_backStall;
    assign bubble_out_gaussian_B7_merge_reg_aunroll_x_6_reg_valid_in_bitsignaltemp = bubble_out_gaussian_B7_merge_reg_aunroll_x_6_reg_valid_in[0];
    assign bubble_out_gaussian_B7_merge_reg_aunroll_x_6_reg_stall_in_bitsignaltemp = bubble_out_gaussian_B7_merge_reg_aunroll_x_6_reg_stall_in[0];
    assign bubble_out_gaussian_B7_merge_reg_aunroll_x_6_reg_valid_out[0] = bubble_out_gaussian_B7_merge_reg_aunroll_x_6_reg_valid_out_bitsignaltemp;
    assign bubble_out_gaussian_B7_merge_reg_aunroll_x_6_reg_stall_out[0] = bubble_out_gaussian_B7_merge_reg_aunroll_x_6_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(68),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_gaussian_B7_merge_reg_aunroll_x_6_reg (
        .valid_in(bubble_out_gaussian_B7_merge_reg_aunroll_x_6_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_gaussian_B7_merge_reg_aunroll_x_6_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_gaussian_B7_merge_reg_aunroll_x_6_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_gaussian_B7_merge_reg_aunroll_x_6_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_gaussian_B7_merge_reg_aunroll_x(STALLENABLE,1044)
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
        end
    end
    // Input Stall processing
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_consumed0 = (~ (i_llvm_fpga_ffwd_dest_i32_j_02018_gaussian15_out_stall_out) & SE_out_gaussian_B7_merge_reg_aunroll_x_wireValid) | SE_out_gaussian_B7_merge_reg_aunroll_x_fromReg0;
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_consumed1 = (~ (bubble_out_gaussian_B7_merge_reg_aunroll_x_6_reg_stall_out) & SE_out_gaussian_B7_merge_reg_aunroll_x_wireValid) | SE_out_gaussian_B7_merge_reg_aunroll_x_fromReg1;
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_consumed2 = (~ (SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_backStall) & SE_out_gaussian_B7_merge_reg_aunroll_x_wireValid) | SE_out_gaussian_B7_merge_reg_aunroll_x_fromReg2;
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_consumed3 = (~ (i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_stall_out) & SE_out_gaussian_B7_merge_reg_aunroll_x_wireValid) | SE_out_gaussian_B7_merge_reg_aunroll_x_fromReg3;
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_consumed4 = (~ (i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_out_stall_out) & SE_out_gaussian_B7_merge_reg_aunroll_x_wireValid) | SE_out_gaussian_B7_merge_reg_aunroll_x_fromReg4;
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_consumed5 = (~ (redist11_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_67_fifo_stall_out) & SE_out_gaussian_B7_merge_reg_aunroll_x_wireValid) | SE_out_gaussian_B7_merge_reg_aunroll_x_fromReg5;
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_consumed6 = (~ (coalesced_delay_0_fifo_stall_out) & SE_out_gaussian_B7_merge_reg_aunroll_x_wireValid) | SE_out_gaussian_B7_merge_reg_aunroll_x_fromReg6;
    // Consuming
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_StallValid = SE_out_gaussian_B7_merge_reg_aunroll_x_backStall & SE_out_gaussian_B7_merge_reg_aunroll_x_wireValid;
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_toReg0 = SE_out_gaussian_B7_merge_reg_aunroll_x_StallValid & SE_out_gaussian_B7_merge_reg_aunroll_x_consumed0;
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_toReg1 = SE_out_gaussian_B7_merge_reg_aunroll_x_StallValid & SE_out_gaussian_B7_merge_reg_aunroll_x_consumed1;
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_toReg2 = SE_out_gaussian_B7_merge_reg_aunroll_x_StallValid & SE_out_gaussian_B7_merge_reg_aunroll_x_consumed2;
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_toReg3 = SE_out_gaussian_B7_merge_reg_aunroll_x_StallValid & SE_out_gaussian_B7_merge_reg_aunroll_x_consumed3;
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_toReg4 = SE_out_gaussian_B7_merge_reg_aunroll_x_StallValid & SE_out_gaussian_B7_merge_reg_aunroll_x_consumed4;
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_toReg5 = SE_out_gaussian_B7_merge_reg_aunroll_x_StallValid & SE_out_gaussian_B7_merge_reg_aunroll_x_consumed5;
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_toReg6 = SE_out_gaussian_B7_merge_reg_aunroll_x_StallValid & SE_out_gaussian_B7_merge_reg_aunroll_x_consumed6;
    // Backward Stall generation
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_or0 = SE_out_gaussian_B7_merge_reg_aunroll_x_consumed0;
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_or1 = SE_out_gaussian_B7_merge_reg_aunroll_x_consumed1 & SE_out_gaussian_B7_merge_reg_aunroll_x_or0;
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_or2 = SE_out_gaussian_B7_merge_reg_aunroll_x_consumed2 & SE_out_gaussian_B7_merge_reg_aunroll_x_or1;
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_or3 = SE_out_gaussian_B7_merge_reg_aunroll_x_consumed3 & SE_out_gaussian_B7_merge_reg_aunroll_x_or2;
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_or4 = SE_out_gaussian_B7_merge_reg_aunroll_x_consumed4 & SE_out_gaussian_B7_merge_reg_aunroll_x_or3;
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_or5 = SE_out_gaussian_B7_merge_reg_aunroll_x_consumed5 & SE_out_gaussian_B7_merge_reg_aunroll_x_or4;
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_wireStall = ~ (SE_out_gaussian_B7_merge_reg_aunroll_x_consumed6 & SE_out_gaussian_B7_merge_reg_aunroll_x_or5);
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_backStall = SE_out_gaussian_B7_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_V0 = SE_out_gaussian_B7_merge_reg_aunroll_x_wireValid & ~ (SE_out_gaussian_B7_merge_reg_aunroll_x_fromReg0);
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_V1 = SE_out_gaussian_B7_merge_reg_aunroll_x_wireValid & ~ (SE_out_gaussian_B7_merge_reg_aunroll_x_fromReg1);
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_V2 = SE_out_gaussian_B7_merge_reg_aunroll_x_wireValid & ~ (SE_out_gaussian_B7_merge_reg_aunroll_x_fromReg2);
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_V3 = SE_out_gaussian_B7_merge_reg_aunroll_x_wireValid & ~ (SE_out_gaussian_B7_merge_reg_aunroll_x_fromReg3);
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_V4 = SE_out_gaussian_B7_merge_reg_aunroll_x_wireValid & ~ (SE_out_gaussian_B7_merge_reg_aunroll_x_fromReg4);
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_V5 = SE_out_gaussian_B7_merge_reg_aunroll_x_wireValid & ~ (SE_out_gaussian_B7_merge_reg_aunroll_x_fromReg5);
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_V6 = SE_out_gaussian_B7_merge_reg_aunroll_x_wireValid & ~ (SE_out_gaussian_B7_merge_reg_aunroll_x_fromReg6);
    // Computing multiple Valid(s)
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_wireValid = gaussian_B7_merge_reg_aunroll_x_out_valid_out;

    // SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0(STALLENABLE,1145)
    // Valid signal propagation
    assign SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V0 = SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_0;
    assign SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V1 = SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_1;
    assign SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V2 = SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_2;
    assign SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V3 = SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_3;
    assign SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V4 = SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_4;
    assign SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V5 = SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_5;
    assign SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V6 = SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_6;
    assign SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V7 = SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_7;
    // Stall signal propagation
    assign SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_0 = i_llvm_fpga_pop_i1_memdep_phi4_pop14_gaussian27_out_stall_out & SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_0;
    assign SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_1 = i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_stall_out & SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_1;
    assign SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_2 = i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_out_stall_out & SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_2;
    assign SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_3 = redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_stall_out & SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_3;
    assign SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_4 = i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_out_stall_out & SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_4;
    assign SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_5 = i_llvm_fpga_ffwd_dest_p1024i32_c2113_gaussian17_out_stall_out & SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_5;
    assign SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_6 = i_llvm_fpga_ffwd_dest_p1024a20i32_a2215_gaussian21_out_stall_out & SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_6;
    assign SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_7 = i_llvm_fpga_ffwd_dest_p1024a20i32_a2214_gaussian30_out_stall_out & SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_7;
    // Backward Enable generation
    assign SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_or0 = SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_0;
    assign SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_or1 = SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_1 | SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_or0;
    assign SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_or2 = SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_2 | SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_or1;
    assign SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_or3 = SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_3 | SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_or2;
    assign SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_or4 = SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_4 | SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_or3;
    assign SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_or5 = SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_5 | SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_or4;
    assign SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_or6 = SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_6 | SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_or5;
    assign SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_backEN = ~ (SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_7 | SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_or6);
    // Determine whether to write valid data into the first register stage
    assign SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_v_s_0 = SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_backEN & SE_out_gaussian_B7_merge_reg_aunroll_x_V2;
    // Backward Stall generation
    assign SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_backStall = ~ (SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_0 <= 1'b0;
            SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_1 <= 1'b0;
            SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_2 <= 1'b0;
            SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_3 <= 1'b0;
            SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_4 <= 1'b0;
            SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_5 <= 1'b0;
            SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_6 <= 1'b0;
            SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_7 <= 1'b0;
        end
        else
        begin
            if (SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_backEN == 1'b0)
            begin
                SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_0 <= SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_0 & SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_0;
            end
            else
            begin
                SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_0 <= SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_v_s_0;
            end

            if (SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_backEN == 1'b0)
            begin
                SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_1 <= SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_1 & SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_1;
            end
            else
            begin
                SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_1 <= SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_v_s_0;
            end

            if (SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_backEN == 1'b0)
            begin
                SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_2 <= SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_2 & SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_2;
            end
            else
            begin
                SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_2 <= SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_v_s_0;
            end

            if (SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_backEN == 1'b0)
            begin
                SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_3 <= SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_3 & SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_3;
            end
            else
            begin
                SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_3 <= SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_v_s_0;
            end

            if (SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_backEN == 1'b0)
            begin
                SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_4 <= SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_4 & SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_4;
            end
            else
            begin
                SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_4 <= SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_v_s_0;
            end

            if (SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_backEN == 1'b0)
            begin
                SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_5 <= SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_5 & SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_5;
            end
            else
            begin
                SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_5 <= SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_v_s_0;
            end

            if (SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_backEN == 1'b0)
            begin
                SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_6 <= SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_6 & SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_6;
            end
            else
            begin
                SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_6 <= SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_v_s_0;
            end

            if (SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_backEN == 1'b0)
            begin
                SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_7 <= SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_7 & SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_7;
            end
            else
            begin
                SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_7 <= SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_v_s_0;
            end

        end
    end

    // SE_out_redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo(STALLENABLE,1137)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_fromReg0 <= '0;
            SE_out_redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_fromReg0 <= SE_out_redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_toReg0;
            // Successor 1
            SE_out_redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_fromReg1 <= SE_out_redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_consumed0 = (~ (SE_in_i_llvm_fpga_push_i1_notexitcond_gaussian47_backStall) & SE_out_redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_wireValid) | SE_out_redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_fromReg0;
    assign SE_out_redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_consumed1 = (~ (SE_i_masked_gaussian51_backStall) & SE_out_redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_wireValid) | SE_out_redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_fromReg1;
    // Consuming
    assign SE_out_redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_StallValid = SE_out_redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_backStall & SE_out_redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_wireValid;
    assign SE_out_redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_toReg0 = SE_out_redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_StallValid & SE_out_redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_consumed0;
    assign SE_out_redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_toReg1 = SE_out_redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_StallValid & SE_out_redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_or0 = SE_out_redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_consumed0;
    assign SE_out_redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_wireStall = ~ (SE_out_redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_consumed1 & SE_out_redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_or0);
    assign SE_out_redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_backStall = SE_out_redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_V0 = SE_out_redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_wireValid & ~ (SE_out_redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_fromReg0);
    assign SE_out_redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_V1 = SE_out_redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_wireValid & ~ (SE_out_redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_wireValid = redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_valid_out;

    // redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo(STALLFIFO,793)
    assign redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_valid_in = SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_V2;
    assign redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_stall_in = SE_out_redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_backStall;
    assign redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_data_in = i_first_cleanup_gaussian1_sel_x_b;
    assign redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_valid_in_bitsignaltemp = redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_valid_in[0];
    assign redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_stall_in_bitsignaltemp = redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_stall_in[0];
    assign redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_valid_out[0] = redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_valid_out_bitsignaltemp;
    assign redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_stall_out[0] = redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(67),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo (
        .valid_in(redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_valid_in_bitsignaltemp),
        .stall_in(redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_stall_in_bitsignaltemp),
        .data_in(i_first_cleanup_gaussian1_sel_x_b),
        .valid_out(redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_valid_out_bitsignaltemp),
        .stall_out(redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_stall_out_bitsignaltemp),
        .data_out(redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0(STALLENABLE,992)
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
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_consumed0 = (~ (redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_66_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_consumed1 = (~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21824_gaussian13_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_consumed2 = (~ (redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_fromReg2;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_consumed3 = (~ (redist22_i_first_cleanup_xor_gaussian2_q_66_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_fromReg3;
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

    // redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0(REG,801)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_backEN == 1'b1)
        begin
            redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_q <= $unsigned(bubble_select_gaussian_B7_merge_reg_aunroll_x_b);
        end
    end

    // c_i2_158(CONSTANT,8)
    assign c_i2_158_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0(BLACKBOX,53)@2
    // in in_stall_in@20000000
    // out out_data_out@3
    // out out_feedback_stall_out_16@20000000
    // out out_stall_out@20000000
    // out out_valid_out@3
    gaussian_i_llvm_fpga_pop_i2_cleanups_pop16_0 thei_llvm_fpga_pop_i2_cleanups_pop16_gaussian0 (
        .in_data_in(c_i2_158_q),
        .in_dir(redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_q),
        .in_feedback_in_16(i_llvm_fpga_push_i2_cleanups_push16_gaussian50_out_feedback_out_16),
        .in_feedback_valid_in_16(i_llvm_fpga_push_i2_cleanups_push16_gaussian50_out_feedback_valid_out_16),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_backStall),
        .in_valid_in(SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V1),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out),
        .out_feedback_stall_out_16(i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_feedback_stall_out_16),
        .out_stall_out(i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // leftShiftStage0Idx1Rng1_uid298_i_cleanups_shl_gaussian0_shift_x(BITSELECT,297)@69
    assign leftShiftStage0Idx1Rng1_uid298_i_cleanups_shl_gaussian0_shift_x_in = bubble_select_redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_66_fifo_b[0:0];
    assign leftShiftStage0Idx1Rng1_uid298_i_cleanups_shl_gaussian0_shift_x_b = leftShiftStage0Idx1Rng1_uid298_i_cleanups_shl_gaussian0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid299_i_cleanups_shl_gaussian0_shift_x(BITJOIN,298)@69
    assign leftShiftStage0Idx1_uid299_i_cleanups_shl_gaussian0_shift_x_q = {leftShiftStage0Idx1Rng1_uid298_i_cleanups_shl_gaussian0_shift_x_b, GND_q};

    // leftShiftStage0_uid301_i_cleanups_shl_gaussian0_shift_x(MUX,300)@69
    assign leftShiftStage0_uid301_i_cleanups_shl_gaussian0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid301_i_cleanups_shl_gaussian0_shift_x_s or bubble_select_redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_66_fifo_b or leftShiftStage0Idx1_uid299_i_cleanups_shl_gaussian0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid301_i_cleanups_shl_gaussian0_shift_x_s)
            1'b0 : leftShiftStage0_uid301_i_cleanups_shl_gaussian0_shift_x_q = bubble_select_redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_66_fifo_b;
            1'b1 : leftShiftStage0_uid301_i_cleanups_shl_gaussian0_shift_x_q = leftShiftStage0Idx1_uid299_i_cleanups_shl_gaussian0_shift_x_q;
            default : leftShiftStage0_uid301_i_cleanups_shl_gaussian0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl_gaussian3_vt_select_1(BITSELECT,18)@69
    assign i_cleanups_shl_gaussian3_vt_select_1_b = leftShiftStage0_uid301_i_cleanups_shl_gaussian0_shift_x_q[1:1];

    // i_cleanups_shl_gaussian3_vt_join(BITJOIN,17)@69
    assign i_cleanups_shl_gaussian3_vt_join_q = {i_cleanups_shl_gaussian3_vt_select_1_b, GND_q};

    // bubble_join_redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_66_fifo(BITJOIN,935)
    assign bubble_join_redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_66_fifo_q = redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_66_fifo_data_out;

    // bubble_select_redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_66_fifo(BITSELECT,936)
    assign bubble_select_redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_66_fifo_b = $unsigned(bubble_join_redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_66_fifo_q[1:0]);

    // bubble_join_redist22_i_first_cleanup_xor_gaussian2_q_66_fifo(BITJOIN,941)
    assign bubble_join_redist22_i_first_cleanup_xor_gaussian2_q_66_fifo_q = redist22_i_first_cleanup_xor_gaussian2_q_66_fifo_data_out;

    // bubble_select_redist22_i_first_cleanup_xor_gaussian2_q_66_fifo(BITSELECT,942)
    assign bubble_select_redist22_i_first_cleanup_xor_gaussian2_q_66_fifo_b = $unsigned(bubble_join_redist22_i_first_cleanup_xor_gaussian2_q_66_fifo_q[0:0]);

    // bubble_join_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39(BITJOIN,891)
    assign bubble_join_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_q = i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39(BITSELECT,892)
    assign bubble_select_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_b = $unsigned(bubble_join_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_q[5:0]);

    // i_exitcond_gaussian40_cmp_nsign(LOGICAL,242)@69
    assign i_exitcond_gaussian40_cmp_nsign_q = $unsigned(~ (bubble_select_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_b[5:5]));

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44(BITJOIN,824)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_q = i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_out_dest_data_out_9_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44(BITSELECT,825)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_q[0:0]);

    // i_unnamed_gaussian45(LOGICAL,82)@69
    assign i_unnamed_gaussian45_q = bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_b & i_exitcond_gaussian40_cmp_nsign_q;

    // i_notcmp_gaussian46(LOGICAL,78)@69
    assign i_notcmp_gaussian46_q = i_unnamed_gaussian45_q ^ VCC_q;

    // i_or_gaussian48(LOGICAL,79)@69
    assign i_or_gaussian48_q = i_notcmp_gaussian46_q | bubble_select_redist22_i_first_cleanup_xor_gaussian2_q_66_fifo_b;

    // i_next_cleanups_gaussian49(MUX,74)@69
    assign i_next_cleanups_gaussian49_s = i_or_gaussian48_q;
    always @(i_next_cleanups_gaussian49_s or bubble_select_redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_66_fifo_b or i_cleanups_shl_gaussian3_vt_join_q)
    begin
        unique case (i_next_cleanups_gaussian49_s)
            1'b0 : i_next_cleanups_gaussian49_q = bubble_select_redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_66_fifo_b;
            1'b1 : i_next_cleanups_gaussian49_q = i_cleanups_shl_gaussian3_vt_join_q;
            default : i_next_cleanups_gaussian49_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups_push16_gaussian50(BLACKBOX,65)@69
    // in in_stall_in@20000000
    // out out_data_out@70
    // out out_feedback_out_16@20000000
    // out out_feedback_valid_out_16@20000000
    // out out_stall_out@20000000
    // out out_valid_out@70
    gaussian_i_llvm_fpga_push_i2_cleanups_push16_0 thei_llvm_fpga_push_i2_cleanups_push16_gaussian50 (
        .in_data_in(i_next_cleanups_gaussian49_q),
        .in_feedback_stall_in_16(i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_feedback_stall_out_16),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_gaussian4_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i2_cleanups_push16_gaussian50_backStall),
        .in_valid_in(SE_out_redist22_i_first_cleanup_xor_gaussian2_q_66_fifo_V0),
        .out_data_out(),
        .out_feedback_out_16(i_llvm_fpga_push_i2_cleanups_push16_gaussian50_out_feedback_out_16),
        .out_feedback_valid_out_16(i_llvm_fpga_push_i2_cleanups_push16_gaussian50_out_feedback_valid_out_16),
        .out_stall_out(i_llvm_fpga_push_i2_cleanups_push16_gaussian50_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i2_cleanups_push16_gaussian50_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_66_fifo(STALLFIFO,808)
    assign redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_66_fifo_valid_in = SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_V0;
    assign redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_66_fifo_stall_in = SE_out_redist22_i_first_cleanup_xor_gaussian2_q_66_fifo_backStall;
    assign redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_66_fifo_data_in = bubble_select_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_b;
    assign redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_66_fifo_valid_in_bitsignaltemp = redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_66_fifo_valid_in[0];
    assign redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_66_fifo_stall_in_bitsignaltemp = redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_66_fifo_stall_in[0];
    assign redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_66_fifo_valid_out[0] = redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_66_fifo_valid_out_bitsignaltemp;
    assign redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_66_fifo_stall_out[0] = redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_66_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(67),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(2),
        .IMPL("ram")
    ) theredist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_66_fifo (
        .valid_in(redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_66_fifo_valid_in_bitsignaltemp),
        .stall_in(redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_66_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_b),
        .valid_out(redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_66_fifo_valid_out_bitsignaltemp),
        .stall_out(redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_66_fifo_stall_out_bitsignaltemp),
        .data_out(redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_66_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist22_i_first_cleanup_xor_gaussian2_q_66_fifo(STALLFIFO,820)
    assign redist22_i_first_cleanup_xor_gaussian2_q_66_fifo_valid_in = SE_out_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_V3;
    assign redist22_i_first_cleanup_xor_gaussian2_q_66_fifo_stall_in = SE_out_redist22_i_first_cleanup_xor_gaussian2_q_66_fifo_backStall;
    assign redist22_i_first_cleanup_xor_gaussian2_q_66_fifo_data_in = i_first_cleanup_xor_gaussian2_q;
    assign redist22_i_first_cleanup_xor_gaussian2_q_66_fifo_valid_in_bitsignaltemp = redist22_i_first_cleanup_xor_gaussian2_q_66_fifo_valid_in[0];
    assign redist22_i_first_cleanup_xor_gaussian2_q_66_fifo_stall_in_bitsignaltemp = redist22_i_first_cleanup_xor_gaussian2_q_66_fifo_stall_in[0];
    assign redist22_i_first_cleanup_xor_gaussian2_q_66_fifo_valid_out[0] = redist22_i_first_cleanup_xor_gaussian2_q_66_fifo_valid_out_bitsignaltemp;
    assign redist22_i_first_cleanup_xor_gaussian2_q_66_fifo_stall_out[0] = redist22_i_first_cleanup_xor_gaussian2_q_66_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(67),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist22_i_first_cleanup_xor_gaussian2_q_66_fifo (
        .valid_in(redist22_i_first_cleanup_xor_gaussian2_q_66_fifo_valid_in_bitsignaltemp),
        .stall_in(redist22_i_first_cleanup_xor_gaussian2_q_66_fifo_stall_in_bitsignaltemp),
        .data_in(i_first_cleanup_xor_gaussian2_q),
        .valid_out(redist22_i_first_cleanup_xor_gaussian2_q_66_fifo_valid_out_bitsignaltemp),
        .stall_out(redist22_i_first_cleanup_xor_gaussian2_q_66_fifo_stall_out_bitsignaltemp),
        .data_out(redist22_i_first_cleanup_xor_gaussian2_q_66_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist22_i_first_cleanup_xor_gaussian2_q_66_fifo(STALLENABLE,1171)
    // Valid signal propagation
    assign SE_out_redist22_i_first_cleanup_xor_gaussian2_q_66_fifo_V0 = SE_out_redist22_i_first_cleanup_xor_gaussian2_q_66_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist22_i_first_cleanup_xor_gaussian2_q_66_fifo_backStall = i_llvm_fpga_push_i2_cleanups_push16_gaussian50_out_stall_out | ~ (SE_out_redist22_i_first_cleanup_xor_gaussian2_q_66_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist22_i_first_cleanup_xor_gaussian2_q_66_fifo_and0 = redist22_i_first_cleanup_xor_gaussian2_q_66_fifo_valid_out;
    assign SE_out_redist22_i_first_cleanup_xor_gaussian2_q_66_fifo_and1 = SE_i_unnamed_gaussian45_V2 & SE_out_redist22_i_first_cleanup_xor_gaussian2_q_66_fifo_and0;
    assign SE_out_redist22_i_first_cleanup_xor_gaussian2_q_66_fifo_and2 = redist15_i_llvm_fpga_pop_i2_cleanups_pop16_gaussian0_out_data_out_66_fifo_valid_out & SE_out_redist22_i_first_cleanup_xor_gaussian2_q_66_fifo_and1;
    assign SE_out_redist22_i_first_cleanup_xor_gaussian2_q_66_fifo_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_V1 & SE_out_redist22_i_first_cleanup_xor_gaussian2_q_66_fifo_and2;

    // SE_i_masked_gaussian51(STALLENABLE,1027)
    // Valid signal propagation
    assign SE_i_masked_gaussian51_V0 = SE_i_masked_gaussian51_R_v_0;
    // Stall signal propagation
    assign SE_i_masked_gaussian51_s_tv_0 = SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_backStall & SE_i_masked_gaussian51_R_v_0;
    // Backward Enable generation
    assign SE_i_masked_gaussian51_backEN = ~ (SE_i_masked_gaussian51_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_masked_gaussian51_and0 = SE_i_unnamed_gaussian45_V1 & SE_i_masked_gaussian51_backEN;
    assign SE_i_masked_gaussian51_v_s_0 = SE_out_redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_V1 & SE_i_masked_gaussian51_and0;
    // Backward Stall generation
    assign SE_i_masked_gaussian51_backStall = ~ (SE_i_masked_gaussian51_v_s_0);
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

    // SE_in_i_llvm_fpga_push_i1_notexitcond_gaussian47(STALLENABLE,1011)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_gaussian47_V0 = SE_in_i_llvm_fpga_push_i1_notexitcond_gaussian47_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_gaussian47_backStall = i_llvm_fpga_push_i1_notexitcond_gaussian47_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_notexitcond_gaussian47_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_gaussian47_and0 = SE_i_unnamed_gaussian45_V0;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_gaussian47_wireValid = SE_out_redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_V0 & SE_in_i_llvm_fpga_push_i1_notexitcond_gaussian47_and0;

    // SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44(STALLENABLE,962)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_consumed0 = (~ (bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_1_reg_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_consumed1 = (~ (SE_i_unnamed_gaussian45_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_backStall & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_or0 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_backStall = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_V1 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_wireValid = i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_out_valid_out;

    // SE_i_unnamed_gaussian45(STALLENABLE,1036)
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
    assign SE_i_unnamed_gaussian45_consumed1 = (~ (SE_i_masked_gaussian51_backStall) & SE_i_unnamed_gaussian45_wireValid) | SE_i_unnamed_gaussian45_fromReg1;
    assign SE_i_unnamed_gaussian45_consumed2 = (~ (SE_out_redist22_i_first_cleanup_xor_gaussian2_q_66_fifo_backStall) & SE_i_unnamed_gaussian45_wireValid) | SE_i_unnamed_gaussian45_fromReg2;
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
    assign SE_i_unnamed_gaussian45_wireValid = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp21823_gaussian44_V1 & SE_i_unnamed_gaussian45_and0;

    // bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_reg(STALLENABLE,1357)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_reg_V0 = bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_reg_s_tv_0 = SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_backStall & bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_reg_v_s_0 = bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_reg_backEN & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_reg_R_v_0 & bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_reg_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39(STALLENABLE,1002)
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
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_consumed0 = (~ (bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_reg_backStall) & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_wireValid) | SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_fromReg0;
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

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_i_llvm_fpga_push_i6_fpga_indvars_iv_push12_gaussian43(STALLENABLE,1026)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i6_fpga_indvars_iv_push12_gaussian43_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i6_fpga_indvars_iv_push12_gaussian43_wireValid = i_llvm_fpga_push_i6_fpga_indvars_iv_push12_gaussian43_out_valid_out;

    // c_i6_164(CONSTANT,10)
    assign c_i6_164_q = $unsigned(6'b111111);

    // i_fpga_indvars_iv_next_gaussian42(ADD,23)@69
    assign i_fpga_indvars_iv_next_gaussian42_a = {1'b0, bubble_select_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_b};
    assign i_fpga_indvars_iv_next_gaussian42_b = {1'b0, c_i6_164_q};
    assign i_fpga_indvars_iv_next_gaussian42_o = $unsigned(i_fpga_indvars_iv_next_gaussian42_a) + $unsigned(i_fpga_indvars_iv_next_gaussian42_b);
    assign i_fpga_indvars_iv_next_gaussian42_q = i_fpga_indvars_iv_next_gaussian42_o[6:0];

    // bgTrunc_i_fpga_indvars_iv_next_gaussian42_sel_x(BITSELECT,164)@69
    assign bgTrunc_i_fpga_indvars_iv_next_gaussian42_sel_x_b = i_fpga_indvars_iv_next_gaussian42_q[5:0];

    // i_llvm_fpga_push_i6_fpga_indvars_iv_push12_gaussian43(BLACKBOX,70)@69
    // in in_stall_in@20000000
    // out out_data_out@70
    // out out_feedback_out_12@20000000
    // out out_feedback_valid_out_12@20000000
    // out out_stall_out@20000000
    // out out_valid_out@70
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

    // c_i6_1762(CONSTANT,11)
    assign c_i6_1762_q = $unsigned(6'b010001);

    // i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39(BLACKBOX,58)@68
    // in in_stall_in@20000000
    // out out_data_out@69
    // out out_feedback_stall_out_12@20000000
    // out out_stall_out@20000000
    // out out_valid_out@69
    gaussian_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_0 thei_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39 (
        .in_data_in(c_i6_1762_q),
        .in_dir(bubble_select_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_b),
        .in_feedback_in_12(i_llvm_fpga_push_i6_fpga_indvars_iv_push12_gaussian43_out_feedback_out_12),
        .in_feedback_valid_in_12(i_llvm_fpga_push_i6_fpga_indvars_iv_push12_gaussian43_out_feedback_valid_out_12),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_backStall),
        .in_valid_in(SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_V3),
        .out_data_out(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_out_data_out),
        .out_feedback_stall_out_12(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_out_feedback_stall_out_12),
        .out_stall_out(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SR_SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0(STALLREG,1366)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_r_valid <= 1'b0;
            SR_SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_r_valid <= SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_backStall & (SR_SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_r_valid | SR_SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_i_valid);

            if (SR_SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_r_data0 <= $unsigned(bubble_select_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_i_valid = SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_V1;
    // Stall signal propagation
    assign SR_SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_backStall = SR_SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_r_valid | ~ (SR_SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_i_valid);

    // Valid
    assign SR_SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_V = SR_SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_r_valid == 1'b1 ? SR_SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_r_valid : SR_SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_i_valid;

    assign SR_SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_D0 = SR_SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_r_valid == 1'b1 ? SR_SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_r_data0 : bubble_select_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_b;

    // SE_out_redist11_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_67_fifo(STALLENABLE,1150)
    // Valid signal propagation
    assign SE_out_redist11_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_67_fifo_V0 = SE_out_redist11_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_67_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist11_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_67_fifo_backStall = i_llvm_fpga_pop_i32_add40_pop17_gaussian52_out_stall_out | ~ (SE_out_redist11_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_67_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist11_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_67_fifo_and0 = redist11_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_67_fifo_valid_out;
    assign SE_out_redist11_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_67_fifo_wireValid = SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_V0 & SE_out_redist11_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_67_fifo_and0;

    // redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo(STALLFIFO,802)
    assign redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_valid_in = SE_redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V3;
    assign redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_stall_in = SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_backStall;
    assign redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_data_in = redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_q;
    assign redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_valid_in_bitsignaltemp = redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_valid_in[0];
    assign redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_stall_in_bitsignaltemp = redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_stall_in[0];
    assign redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_valid_out[0] = redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_valid_out_bitsignaltemp;
    assign redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_stall_out[0] = redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(67),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo (
        .valid_in(redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_valid_in_bitsignaltemp),
        .stall_in(redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_stall_in_bitsignaltemp),
        .data_in(redist6_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_q),
        .valid_out(redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_valid_out_bitsignaltemp),
        .stall_out(redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_stall_out_bitsignaltemp),
        .data_out(redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo(STALLENABLE,1147)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_fromReg0 <= '0;
            SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_fromReg1 <= '0;
            SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_fromReg2 <= '0;
            SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_fromReg0 <= SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_toReg0;
            // Successor 1
            SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_fromReg1 <= SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_toReg1;
            // Successor 2
            SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_fromReg2 <= SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_toReg2;
            // Successor 3
            SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_fromReg3 <= SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_consumed0 = (~ (SE_out_redist11_gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl_67_fifo_backStall) & SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_wireValid) | SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_fromReg0;
    assign SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_consumed1 = (~ (SR_SE_redist8_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_68_0_backStall) & SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_wireValid) | SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_fromReg1;
    assign SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_consumed2 = (~ (i_llvm_fpga_pipeline_keep_going_gaussian4_out_stall_out) & SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_wireValid) | SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_fromReg2;
    assign SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_consumed3 = (~ (i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_out_stall_out) & SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_wireValid) | SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_fromReg3;
    // Consuming
    assign SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_StallValid = SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_backStall & SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_wireValid;
    assign SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_toReg0 = SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_StallValid & SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_consumed0;
    assign SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_toReg1 = SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_StallValid & SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_consumed1;
    assign SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_toReg2 = SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_StallValid & SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_consumed2;
    assign SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_toReg3 = SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_StallValid & SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_consumed3;
    // Backward Stall generation
    assign SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_or0 = SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_consumed0;
    assign SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_or1 = SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_consumed1 & SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_or0;
    assign SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_or2 = SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_consumed2 & SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_or1;
    assign SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_wireStall = ~ (SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_consumed3 & SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_or2);
    assign SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_backStall = SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_V0 = SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_wireValid & ~ (SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_fromReg0);
    assign SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_V1 = SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_wireValid & ~ (SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_fromReg1);
    assign SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_V2 = SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_wireValid & ~ (SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_fromReg2);
    assign SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_V3 = SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_wireValid & ~ (SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_wireValid = redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_valid_out;

    // SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4(STALLENABLE,982)
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
    assign SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_consumed0 = (~ (SE_out_redist18_i_llvm_fpga_pop_i1_memdep_phi_pop1043_pop21_gaussian24_out_data_out_67_fifo_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_fromReg0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_consumed1 = (~ (SE_out_redist22_i_first_cleanup_xor_gaussian2_q_66_fifo_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_fromReg1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_consumed2 = (~ (SE_in_i_llvm_fpga_push_i32_add40_push17_gaussian53_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_fromReg2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_consumed3 = (~ (SE_out_redist14_i_llvm_fpga_pop_i32_i_019_replace_phi41_pop18_gaussian10_out_data_out_67_fifo_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_fromReg3;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_consumed4 = (~ (SE_out_redist13_i_llvm_fpga_pop_i32_k_017_pop13_gaussian19_out_data_out_66_fifo_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_fromReg4;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_consumed5 = (~ (SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push12_gaussian43_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_fromReg5;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_consumed6 = (~ (SE_redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_fromReg6;
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

    // SE_out_i_llvm_fpga_push_i1_notexitcond_gaussian47(STALLENABLE,1012)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_notexitcond_gaussian47_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_notexitcond_gaussian47_wireValid = i_llvm_fpga_push_i1_notexitcond_gaussian47_out_valid_out;

    // bubble_join_redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo(BITJOIN,920)
    assign bubble_join_redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_q = redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_data_out;

    // bubble_select_redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo(BITSELECT,921)
    assign bubble_select_redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_b = $unsigned(bubble_join_redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_q[0:0]);

    // i_llvm_fpga_push_i1_notexitcond_gaussian47(BLACKBOX,63)@69
    // in in_stall_in@20000000
    // out out_data_out@70
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    // out out_stall_out@20000000
    // out out_valid_out@70
    gaussian_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_gaussian47 (
        .in_data_in(i_unnamed_gaussian45_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_gaussian4_out_not_exitcond_stall_out),
        .in_first_cleanup(bubble_select_redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_b),
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

    // SE_out_i_llvm_fpga_push_i1_lastiniteration_gaussian9(STALLENABLE,1004)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration_gaussian9_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration_gaussian9_wireValid = i_llvm_fpga_push_i1_lastiniteration_gaussian9_out_valid_out;

    // i_last_initeration_gaussian8_sel_x(BITSELECT,225)@70
    assign i_last_initeration_gaussian8_sel_x_b = i_next_initerations_gaussian6_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_gaussian9(BLACKBOX,59)@70
    // in in_stall_in@20000000
    // out out_data_out@71
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    // out out_stall_out@20000000
    // out out_valid_out@71
    gaussian_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_gaussian9 (
        .in_data_in(i_last_initeration_gaussian8_sel_x_b),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_gaussian4_out_initeration_stall_out),
        .in_keep_going(redist19_i_llvm_fpga_pipeline_keep_going_gaussian4_out_data_out_1_0_q),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_lastiniteration_gaussian9_backStall),
        .in_valid_in(SE_i_next_initerations_gaussian6_vt_join_V0),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_gaussian9_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_gaussian9_out_feedback_valid_out_2),
        .out_stall_out(i_llvm_fpga_push_i1_lastiniteration_gaussian9_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_lastiniteration_gaussian9_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo(BITJOIN,923)
    assign bubble_join_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_q = redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_data_out;

    // bubble_select_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo(BITSELECT,924)
    assign bubble_select_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_b = $unsigned(bubble_join_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_q[0:0]);

    // i_llvm_fpga_pipeline_keep_going_gaussian4(BLACKBOX,48)@68
    // in in_stall_in@20000000
    // out out_data_out@69
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    // out out_stall_out@20000000
    // out out_valid_out@69
    gaussian_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_gaussian4 (
        .in_data_in(bubble_select_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_b),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_gaussian9_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_gaussian9_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_gaussian47_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_gaussian47_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(SE_out_i_llvm_fpga_pipeline_keep_going_gaussian4_backStall),
        .in_valid_in(SE_out_redist7_gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl_67_fifo_V2),
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

    // ext_sig_sync_out(GPOUT,15)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_gaussian4_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_gaussian4_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_gaussian4_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_gaussian4_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,153)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_gaussian4_out_pipeline_valid_out;

    // sync_out(GPOUT,162)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,170)
    assign out_lm1_gaussian_avm_address = i_llvm_fpga_mem_lm1_gaussian26_out_lm1_gaussian_avm_address;
    assign out_lm1_gaussian_avm_enable = i_llvm_fpga_mem_lm1_gaussian26_out_lm1_gaussian_avm_enable;
    assign out_lm1_gaussian_avm_read = i_llvm_fpga_mem_lm1_gaussian26_out_lm1_gaussian_avm_read;
    assign out_lm1_gaussian_avm_write = i_llvm_fpga_mem_lm1_gaussian26_out_lm1_gaussian_avm_write;
    assign out_lm1_gaussian_avm_writedata = i_llvm_fpga_mem_lm1_gaussian26_out_lm1_gaussian_avm_writedata;
    assign out_lm1_gaussian_avm_byteenable = i_llvm_fpga_mem_lm1_gaussian26_out_lm1_gaussian_avm_byteenable;
    assign out_lm1_gaussian_avm_burstcount = i_llvm_fpga_mem_lm1_gaussian26_out_lm1_gaussian_avm_burstcount;

    // i_masked_gaussian51(LOGICAL,71)@69 + 1
    assign i_masked_gaussian51_qi = i_notcmp_gaussian46_q & bubble_select_redist0_i_first_cleanup_gaussian1_sel_x_b_66_fifo_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_gaussian51_delay ( .xin(i_masked_gaussian51_qi), .xout(i_masked_gaussian51_q), .ena(SE_i_masked_gaussian51_backEN[0]), .clk(clock), .aclr(resetn) );

    // bubble_join_i_llvm_fpga_push_i32_add40_push17_gaussian53(BITJOIN,895)
    assign bubble_join_i_llvm_fpga_push_i32_add40_push17_gaussian53_q = i_llvm_fpga_push_i32_add40_push17_gaussian53_out_data_out;

    // bubble_select_i_llvm_fpga_push_i32_add40_push17_gaussian53(BITSELECT,896)
    assign bubble_select_i_llvm_fpga_push_i32_add40_push17_gaussian53_b = $unsigned(bubble_join_i_llvm_fpga_push_i32_add40_push17_gaussian53_q[31:0]);

    // dupName_0_sync_out_x(GPOUT,171)@70
    assign out_add40_push17 = bubble_select_i_llvm_fpga_push_i32_add40_push17_gaussian53_b;
    assign out_masked = i_masked_gaussian51_q;
    assign out_memdep = bubble_select_i_llvm_fpga_mem_memdep_gaussian35_b;
    assign out_notcmp3142_pop20 = bubble_select_i_llvm_fpga_pop_i1_notcmp3142_pop20_gaussian56_b;
    assign out_pop19 = bubble_select_i_llvm_fpga_pop_i1_pop19_gaussian54_b;
    assign out_valid_out = SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_gaussian39_1_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,173)
    assign out_lm32_gaussian_avm_address = i_llvm_fpga_mem_lm32_gaussian29_out_lm32_gaussian_avm_address;
    assign out_lm32_gaussian_avm_enable = i_llvm_fpga_mem_lm32_gaussian29_out_lm32_gaussian_avm_enable;
    assign out_lm32_gaussian_avm_read = i_llvm_fpga_mem_lm32_gaussian29_out_lm32_gaussian_avm_read;
    assign out_lm32_gaussian_avm_write = i_llvm_fpga_mem_lm32_gaussian29_out_lm32_gaussian_avm_write;
    assign out_lm32_gaussian_avm_writedata = i_llvm_fpga_mem_lm32_gaussian29_out_lm32_gaussian_avm_writedata;
    assign out_lm32_gaussian_avm_byteenable = i_llvm_fpga_mem_lm32_gaussian29_out_lm32_gaussian_avm_byteenable;
    assign out_lm32_gaussian_avm_burstcount = i_llvm_fpga_mem_lm32_gaussian29_out_lm32_gaussian_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,175)
    assign out_lm53_gaussian_avm_address = i_llvm_fpga_mem_lm53_gaussian32_out_lm53_gaussian_avm_address;
    assign out_lm53_gaussian_avm_enable = i_llvm_fpga_mem_lm53_gaussian32_out_lm53_gaussian_avm_enable;
    assign out_lm53_gaussian_avm_read = i_llvm_fpga_mem_lm53_gaussian32_out_lm53_gaussian_avm_read;
    assign out_lm53_gaussian_avm_write = i_llvm_fpga_mem_lm53_gaussian32_out_lm53_gaussian_avm_write;
    assign out_lm53_gaussian_avm_writedata = i_llvm_fpga_mem_lm53_gaussian32_out_lm53_gaussian_avm_writedata;
    assign out_lm53_gaussian_avm_byteenable = i_llvm_fpga_mem_lm53_gaussian32_out_lm53_gaussian_avm_byteenable;
    assign out_lm53_gaussian_avm_burstcount = i_llvm_fpga_mem_lm53_gaussian32_out_lm53_gaussian_avm_burstcount;

    // dupName_3_ext_sig_sync_out_x(GPOUT,176)
    assign out_memdep_gaussian_avm_address = i_llvm_fpga_mem_memdep_gaussian35_out_memdep_gaussian_avm_address;
    assign out_memdep_gaussian_avm_enable = i_llvm_fpga_mem_memdep_gaussian35_out_memdep_gaussian_avm_enable;
    assign out_memdep_gaussian_avm_read = i_llvm_fpga_mem_memdep_gaussian35_out_memdep_gaussian_avm_read;
    assign out_memdep_gaussian_avm_write = i_llvm_fpga_mem_memdep_gaussian35_out_memdep_gaussian_avm_write;
    assign out_memdep_gaussian_avm_writedata = i_llvm_fpga_mem_memdep_gaussian35_out_memdep_gaussian_avm_writedata;
    assign out_memdep_gaussian_avm_byteenable = i_llvm_fpga_mem_memdep_gaussian35_out_memdep_gaussian_avm_byteenable;
    assign out_memdep_gaussian_avm_burstcount = i_llvm_fpga_mem_memdep_gaussian35_out_memdep_gaussian_avm_burstcount;

    // dupName_4_ext_sig_sync_out_x(GPOUT,177)
    assign out_lsu_memdep_o_active = i_llvm_fpga_mem_memdep_gaussian35_out_lsu_memdep_o_active;

endmodule
