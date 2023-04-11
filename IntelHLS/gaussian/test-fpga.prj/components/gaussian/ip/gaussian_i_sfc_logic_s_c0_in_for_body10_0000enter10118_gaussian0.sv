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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian0
// Created for function/kernel gaussian
// SystemVerilog created on Fri Apr  7 17:25:52 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module gaussian_i_sfc_logic_s_c0_in_for_body10_0000enter10118_gaussian0 (
    input wire [31:0] in_lm1_gaussian_avm_readdata,
    input wire [0:0] in_lm1_gaussian_avm_writeack,
    input wire [0:0] in_lm1_gaussian_avm_waitrequest,
    input wire [0:0] in_lm1_gaussian_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_gaussian6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_gaussian6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [31:0] in_lm62_gaussian_avm_readdata,
    input wire [0:0] in_lm62_gaussian_avm_writeack,
    input wire [0:0] in_lm62_gaussian_avm_waitrequest,
    input wire [0:0] in_lm62_gaussian_avm_readdatavalid,
    output wire [31:0] out_lm1_gaussian_avm_address,
    output wire [0:0] out_lm1_gaussian_avm_enable,
    output wire [0:0] out_lm1_gaussian_avm_read,
    output wire [0:0] out_lm1_gaussian_avm_write,
    output wire [31:0] out_lm1_gaussian_avm_writedata,
    output wire [3:0] out_lm1_gaussian_avm_byteenable,
    output wire [0:0] out_lm1_gaussian_avm_burstcount,
    input wire [31:0] in_lm83_gaussian_avm_readdata,
    input wire [0:0] in_lm83_gaussian_avm_writeack,
    input wire [0:0] in_lm83_gaussian_avm_waitrequest,
    input wire [0:0] in_lm83_gaussian_avm_readdatavalid,
    output wire [31:0] out_lm62_gaussian_avm_address,
    output wire [0:0] out_lm62_gaussian_avm_enable,
    output wire [0:0] out_lm62_gaussian_avm_read,
    output wire [0:0] out_lm62_gaussian_avm_write,
    output wire [31:0] out_lm62_gaussian_avm_writedata,
    output wire [3:0] out_lm62_gaussian_avm_byteenable,
    output wire [0:0] out_lm62_gaussian_avm_burstcount,
    input wire [31:0] in_memdep_gaussian_avm_readdata,
    input wire [0:0] in_memdep_gaussian_avm_writeack,
    input wire [0:0] in_memdep_gaussian_avm_waitrequest,
    input wire [0:0] in_memdep_gaussian_avm_readdatavalid,
    output wire [31:0] out_lm83_gaussian_avm_address,
    output wire [0:0] out_lm83_gaussian_avm_enable,
    output wire [0:0] out_lm83_gaussian_avm_read,
    output wire [0:0] out_lm83_gaussian_avm_write,
    output wire [31:0] out_lm83_gaussian_avm_writedata,
    output wire [3:0] out_lm83_gaussian_avm_byteenable,
    output wire [0:0] out_lm83_gaussian_avm_burstcount,
    output wire [31:0] out_memdep_gaussian_avm_address,
    output wire [0:0] out_memdep_gaussian_avm_enable,
    output wire [0:0] out_memdep_gaussian_avm_read,
    output wire [0:0] out_memdep_gaussian_avm_write,
    output wire [31:0] out_memdep_gaussian_avm_writedata,
    output wire [3:0] out_memdep_gaussian_avm_byteenable,
    output wire [0:0] out_memdep_gaussian_avm_burstcount,
    output wire [0:0] out_c0_exi17126_0_tpl,
    output wire [0:0] out_c0_exi17126_1_tpl,
    output wire [0:0] out_c0_exi17126_2_tpl,
    output wire [0:0] out_c0_exi17126_3_tpl,
    output wire [0:0] out_c0_exi17126_4_tpl,
    output wire [0:0] out_c0_exi17126_5_tpl,
    output wire [31:0] out_c0_exi17126_6_tpl,
    output wire [31:0] out_c0_exi17126_7_tpl,
    output wire [31:0] out_c0_exi17126_8_tpl,
    output wire [0:0] out_c0_exi17126_9_tpl,
    output wire [0:0] out_c0_exi17126_10_tpl,
    output wire [31:0] out_c0_exi17126_11_tpl,
    output wire [31:0] out_c0_exi17126_12_tpl,
    output wire [31:0] out_c0_exi17126_13_tpl,
    output wire [0:0] out_c0_exi17126_14_tpl,
    output wire [32:0] out_c0_exi17126_15_tpl,
    output wire [31:0] out_c0_exi17126_16_tpl,
    output wire [0:0] out_c0_exi17126_17_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_gaussian0,
    input wire [0:0] in_c0_eni18_0_tpl,
    input wire [0:0] in_c0_eni18_1_tpl,
    input wire [31:0] in_c0_eni18_2_tpl,
    input wire [0:0] in_c0_eni18_3_tpl,
    input wire [31:0] in_c0_eni18_4_tpl,
    input wire [0:0] in_c0_eni18_5_tpl,
    input wire [0:0] in_c0_eni18_6_tpl,
    input wire [31:0] in_c0_eni18_7_tpl,
    input wire [31:0] in_c0_eni18_8_tpl,
    input wire [31:0] in_c0_eni18_9_tpl,
    input wire [0:0] in_c0_eni18_10_tpl,
    input wire [0:0] in_c0_eni18_11_tpl,
    input wire [31:0] in_c0_eni18_12_tpl,
    input wire [31:0] in_c0_eni18_13_tpl,
    input wire [31:0] in_c0_eni18_14_tpl,
    input wire [0:0] in_c0_eni18_15_tpl,
    input wire [32:0] in_c0_eni18_16_tpl,
    input wire [31:0] in_c0_eni18_17_tpl,
    input wire [0:0] in_c0_eni18_18_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_gaussian_A_pmem_q;
    wire [63:0] c_gaussian_c_pmem_q;
    wire [1:0] c_i2_1103_q;
    wire [31:0] c_i32_1105_q;
    wire [5:0] c_i6_1108_q;
    wire [5:0] c_i6_17106_q;
    wire [1:0] i_arrayidx122_gaussian26_vt_const_1_q;
    wire [63:0] i_arrayidx122_gaussian26_vt_join_q;
    wire [61:0] i_arrayidx122_gaussian26_vt_select_63_b;
    wire [63:0] i_arrayidx141_gaussian21_vt_join_q;
    wire [61:0] i_arrayidx141_gaussian21_vt_select_63_b;
    wire [63:0] i_arrayidx183_gaussian33_vt_join_q;
    wire [61:0] i_arrayidx183_gaussian33_vt_select_63_b;
    wire [1:0] i_cleanups_shl_gaussian5_vt_join_q;
    wire [0:0] i_cleanups_shl_gaussian5_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor_gaussian4_q;
    wire [0:0] i_first_cleanup_xor_or_gaussian22_q;
    wire [6:0] i_fpga_indvars_iv_next_gaussian46_a;
    wire [6:0] i_fpga_indvars_iv_next_gaussian46_b;
    logic [6:0] i_fpga_indvars_iv_next_gaussian46_o;
    wire [6:0] i_fpga_indvars_iv_next_gaussian46_q;
    wire [31:0] i_idxprom11_gaussian25_vt_const_63_q;
    wire [63:0] i_idxprom11_gaussian25_vt_join_q;
    wire [31:0] i_idxprom11_gaussian25_vt_select_31_b;
    wire [63:0] i_idxprom13_gaussian20_vt_join_q;
    wire [31:0] i_idxprom13_gaussian20_vt_select_31_b;
    wire [63:0] i_idxprom_gaussian14_vt_join_q;
    wire [31:0] i_idxprom_gaussian14_vt_select_31_b;
    wire [32:0] i_inc_gaussian41_a;
    wire [32:0] i_inc_gaussian41_b;
    logic [32:0] i_inc_gaussian41_o;
    wire [32:0] i_inc_gaussian41_q;
    wire [31:0] i_llvm_fpga_mem_lm1_gaussian23_out_lm1_gaussian_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm1_gaussian23_out_lm1_gaussian_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_lm1_gaussian23_out_lm1_gaussian_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm1_gaussian23_out_lm1_gaussian_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm1_gaussian23_out_lm1_gaussian_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm1_gaussian23_out_lm1_gaussian_avm_write;
    wire [31:0] i_llvm_fpga_mem_lm1_gaussian23_out_lm1_gaussian_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm1_gaussian23_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_lm62_gaussian32_out_lm62_gaussian_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm62_gaussian32_out_lm62_gaussian_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_lm62_gaussian32_out_lm62_gaussian_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm62_gaussian32_out_lm62_gaussian_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm62_gaussian32_out_lm62_gaussian_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm62_gaussian32_out_lm62_gaussian_avm_write;
    wire [31:0] i_llvm_fpga_mem_lm62_gaussian32_out_lm62_gaussian_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm62_gaussian32_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_lm83_gaussian36_out_lm83_gaussian_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm83_gaussian36_out_lm83_gaussian_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_lm83_gaussian36_out_lm83_gaussian_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm83_gaussian36_out_lm83_gaussian_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm83_gaussian36_out_lm83_gaussian_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm83_gaussian36_out_lm83_gaussian_avm_write;
    wire [31:0] i_llvm_fpga_mem_lm83_gaussian36_out_lm83_gaussian_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm83_gaussian36_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_memdep_gaussian39_out_memdep_gaussian_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_gaussian39_out_memdep_gaussian_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_gaussian39_out_memdep_gaussian_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_gaussian39_out_memdep_gaussian_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_gaussian39_out_memdep_gaussian_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_gaussian39_out_memdep_gaussian_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_gaussian39_out_memdep_gaussian_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_gaussian39_out_o_writeack;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_gaussian6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_gaussian6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_gaussian6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_gaussian6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_gaussian6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_cmp41639_pop27_gaussian15_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_cmp41639_pop27_gaussian15_out_feedback_stall_out_27;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi4_pop728_pop22_gaussian27_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi4_pop728_pop22_gaussian27_out_feedback_stall_out_22;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi5_pop19_gaussian34_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi5_pop19_gaussian34_out_feedback_stall_out_19;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop1042_pop31_gaussian29_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop1042_pop31_gaussian29_out_feedback_stall_out_31;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1740_pop29_gaussian63_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1740_pop29_gaussian63_out_feedback_stall_out_29;
    wire [0:0] i_llvm_fpga_pop_i1_pop28_gaussian61_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop28_gaussian61_out_feedback_stall_out_28;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups_pop21_gaussian2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop21_gaussian2_out_feedback_stall_out_21;
    wire [1:0] i_llvm_fpga_pop_i2_initerations_pop20_gaussian7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations_pop20_gaussian7_out_feedback_stall_out_20;
    wire [31:0] i_llvm_fpga_pop_i32_add37_pop26_gaussian59_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_add37_pop26_gaussian59_out_feedback_stall_out_26;
    wire [31:0] i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_feedback_stall_out_24;
    wire [31:0] i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_feedback_stall_out_23;
    wire [31:0] i_llvm_fpga_pop_i32_i_017_pop941_pop30_gaussian12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_017_pop941_pop30_gaussian12_out_feedback_stall_out_30;
    wire [31:0] i_llvm_fpga_pop_i32_j_01835_pop25_gaussian18_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_01835_pop25_gaussian18_out_feedback_stall_out_25;
    wire [31:0] i_llvm_fpga_pop_i32_k_015_pop18_gaussian24_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_k_015_pop18_gaussian24_out_feedback_stall_out_18;
    wire [5:0] i_llvm_fpga_pop_i6_fpga_indvars_iv_pop17_gaussian43_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv_pop17_gaussian43_out_feedback_stall_out_17;
    wire [0:0] i_llvm_fpga_push_i1_cmp41639_push27_gaussian16_out_feedback_out_27;
    wire [0:0] i_llvm_fpga_push_i1_cmp41639_push27_gaussian16_out_feedback_valid_out_27;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_gaussian11_out_feedback_out_1;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_gaussian11_out_feedback_valid_out_1;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi4_pop728_push22_gaussian28_out_data_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi4_pop728_push22_gaussian28_out_feedback_out_22;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi4_pop728_push22_gaussian28_out_feedback_valid_out_22;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi5_push19_gaussian40_out_feedback_out_19;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi5_push19_gaussian40_out_feedback_valid_out_19;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop1042_push31_gaussian30_out_feedback_out_31;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop1042_push31_gaussian30_out_feedback_valid_out_31;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1740_push29_gaussian64_out_feedback_out_29;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1740_push29_gaussian64_out_feedback_valid_out_29;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_gaussian50_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_gaussian50_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_push28_gaussian62_out_feedback_out_28;
    wire [0:0] i_llvm_fpga_push_i1_push28_gaussian62_out_feedback_valid_out_28;
    wire [7:0] i_llvm_fpga_push_i2_cleanups_push21_gaussian53_out_feedback_out_21;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push21_gaussian53_out_feedback_valid_out_21;
    wire [7:0] i_llvm_fpga_push_i2_initerations_push20_gaussian9_out_feedback_out_20;
    wire [0:0] i_llvm_fpga_push_i2_initerations_push20_gaussian9_out_feedback_valid_out_20;
    wire [31:0] i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out;
    wire [31:0] i_llvm_fpga_push_i32_add37_push26_gaussian60_out_feedback_out_26;
    wire [0:0] i_llvm_fpga_push_i32_add37_push26_gaussian60_out_feedback_valid_out_26;
    wire [31:0] i_llvm_fpga_push_i32_fpga_indvars_iv733_push24_gaussian58_out_feedback_out_24;
    wire [0:0] i_llvm_fpga_push_i32_fpga_indvars_iv733_push24_gaussian58_out_feedback_valid_out_24;
    wire [31:0] i_llvm_fpga_push_i32_fpga_indvars_iv931_push23_gaussian56_out_feedback_out_23;
    wire [0:0] i_llvm_fpga_push_i32_fpga_indvars_iv931_push23_gaussian56_out_feedback_valid_out_23;
    wire [31:0] i_llvm_fpga_push_i32_i_017_pop941_push30_gaussian13_out_feedback_out_30;
    wire [0:0] i_llvm_fpga_push_i32_i_017_pop941_push30_gaussian13_out_feedback_valid_out_30;
    wire [31:0] i_llvm_fpga_push_i32_j_01835_push25_gaussian19_out_feedback_out_25;
    wire [0:0] i_llvm_fpga_push_i32_j_01835_push25_gaussian19_out_feedback_valid_out_25;
    wire [31:0] i_llvm_fpga_push_i32_k_015_push18_gaussian42_out_feedback_out_18;
    wire [0:0] i_llvm_fpga_push_i32_k_015_push18_gaussian42_out_feedback_valid_out_18;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push17_gaussian47_out_feedback_out_17;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push17_gaussian47_out_feedback_valid_out_17;
    wire [0:0] i_masked_gaussian54_qi;
    reg [0:0] i_masked_gaussian54_q;
    wire [0:0] i_memdep_phi4_or_gaussian31_q;
    wire [0:0] i_next_cleanups_gaussian52_s;
    reg [1:0] i_next_cleanups_gaussian52_q;
    wire [1:0] i_next_initerations_gaussian8_vt_join_q;
    wire [0:0] i_next_initerations_gaussian8_vt_select_0_b;
    wire [0:0] i_notcmp_gaussian49_q;
    wire [0:0] i_or_gaussian51_q;
    wire [0:0] i_reduction_gaussian_1_gaussian35_q;
    wire [32:0] i_sub_gaussian38_a;
    wire [32:0] i_sub_gaussian38_b;
    logic [32:0] i_sub_gaussian38_o;
    wire [32:0] i_sub_gaussian38_q;
    wire [0:0] i_unnamed_gaussian17_q;
    wire [0:0] i_unnamed_gaussian48_q;
    wire [5:0] bgTrunc_i_fpga_indvars_iv_next_gaussian46_sel_x_b;
    wire [31:0] bgTrunc_i_inc_gaussian41_sel_x_b;
    wire [63:0] bgTrunc_i_mul_gaussian37_sel_x_in;
    wire [31:0] bgTrunc_i_mul_gaussian37_sel_x_b;
    wire [31:0] bgTrunc_i_sub_gaussian38_sel_x_b;
    wire [11:0] i_arrayidx122_gaussian0_add_x_a;
    wire [11:0] i_arrayidx122_gaussian0_add_x_b;
    logic [11:0] i_arrayidx122_gaussian0_add_x_o;
    wire [11:0] i_arrayidx122_gaussian0_add_x_q;
    wire [63:0] i_arrayidx122_gaussian0_append_upper_bits_x_q;
    wire [8:0] i_arrayidx122_gaussian0_narrow_x_b;
    wire [10:0] i_arrayidx122_gaussian0_shift_join_x_q;
    wire [11:0] i_arrayidx122_gaussian0_dupName_0_add_x_a;
    wire [11:0] i_arrayidx122_gaussian0_dupName_0_add_x_b;
    logic [11:0] i_arrayidx122_gaussian0_dupName_0_add_x_o;
    wire [11:0] i_arrayidx122_gaussian0_dupName_0_add_x_q;
    wire [21:0] i_arrayidx122_gaussian0_mult_extender_x_q;
    wire [3:0] i_arrayidx122_gaussian0_mult_multconst_x_q;
    wire [10:0] i_arrayidx122_gaussian0_dupName_0_trunc_sel_x_b;
    wire [10:0] i_arrayidx122_gaussian0_dupName_1_trunc_sel_x_b;
    wire [10:0] i_arrayidx122_gaussian0_dupName_2_trunc_sel_x_b;
    wire [10:0] i_arrayidx122_gaussian0_dupName_3_trunc_sel_x_b;
    wire [10:0] i_arrayidx122_gaussian0_dupName_5_trunc_sel_x_b;
    wire [7:0] i_arrayidx141_gaussian0_add_x_a;
    wire [7:0] i_arrayidx141_gaussian0_add_x_b;
    logic [7:0] i_arrayidx141_gaussian0_add_x_o;
    wire [7:0] i_arrayidx141_gaussian0_add_x_q;
    wire [63:0] i_arrayidx141_gaussian0_append_upper_bits_x_q;
    wire [4:0] i_arrayidx141_gaussian0_narrow_x_b;
    wire [6:0] i_arrayidx141_gaussian0_shift_join_x_q;
    wire [6:0] i_arrayidx141_gaussian0_dupName_0_trunc_sel_x_b;
    wire [6:0] i_arrayidx141_gaussian0_dupName_2_trunc_sel_x_b;
    wire [11:0] i_arrayidx183_gaussian0_add_x_a;
    wire [11:0] i_arrayidx183_gaussian0_add_x_b;
    logic [11:0] i_arrayidx183_gaussian0_add_x_o;
    wire [11:0] i_arrayidx183_gaussian0_add_x_q;
    wire [63:0] i_arrayidx183_gaussian0_append_upper_bits_x_q;
    wire [11:0] i_arrayidx183_gaussian0_dupName_0_add_x_a;
    wire [11:0] i_arrayidx183_gaussian0_dupName_0_add_x_b;
    logic [11:0] i_arrayidx183_gaussian0_dupName_0_add_x_o;
    wire [11:0] i_arrayidx183_gaussian0_dupName_0_add_x_q;
    wire [21:0] i_arrayidx183_gaussian0_mult_extender_x_q;
    wire [10:0] i_arrayidx183_gaussian0_dupName_0_trunc_sel_x_b;
    wire [10:0] i_arrayidx183_gaussian0_dupName_1_trunc_sel_x_b;
    wire [10:0] i_arrayidx183_gaussian0_dupName_2_trunc_sel_x_b;
    wire [10:0] i_arrayidx183_gaussian0_dupName_5_trunc_sel_x_b;
    wire [0:0] i_first_cleanup_gaussian3_sel_x_b;
    wire [63:0] i_idxprom11_gaussian25_sel_x_b;
    wire [63:0] i_idxprom13_gaussian20_sel_x_b;
    wire [63:0] i_idxprom_gaussian14_sel_x_b;
    wire [0:0] i_last_initeration_gaussian10_sel_x_b;
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
    wire [0:0] i_exitcond_gaussian44_cmp_nsign_q;
    wire [63:0] i_mul_gaussian37_sums_join_0_q;
    wire [50:0] i_mul_gaussian37_sums_align_1_q;
    wire [50:0] i_mul_gaussian37_sums_align_1_qint;
    wire [64:0] i_mul_gaussian37_sums_result_add_0_0_a;
    wire [64:0] i_mul_gaussian37_sums_result_add_0_0_b;
    logic [64:0] i_mul_gaussian37_sums_result_add_0_0_o;
    wire [64:0] i_mul_gaussian37_sums_result_add_0_0_q;
    wire [11:0] addsumAHighB_uid293_i_arrayidx122_gaussian0_mult_x_a;
    wire [11:0] addsumAHighB_uid293_i_arrayidx122_gaussian0_mult_x_b;
    logic [11:0] addsumAHighB_uid293_i_arrayidx122_gaussian0_mult_x_o;
    wire [11:0] addsumAHighB_uid293_i_arrayidx122_gaussian0_mult_x_q;
    wire [13:0] add_uid294_i_arrayidx122_gaussian0_mult_x_q;
    wire [17:0] sR_mergedSignalTM_uid299_i_arrayidx122_gaussian0_mult_x_q;
    wire [11:0] addsumAHighB_uid339_i_arrayidx183_gaussian0_mult_x_a;
    wire [11:0] addsumAHighB_uid339_i_arrayidx183_gaussian0_mult_x_b;
    logic [11:0] addsumAHighB_uid339_i_arrayidx183_gaussian0_mult_x_o;
    wire [11:0] addsumAHighB_uid339_i_arrayidx183_gaussian0_mult_x_q;
    wire [13:0] add_uid340_i_arrayidx183_gaussian0_mult_x_q;
    wire [17:0] sR_mergedSignalTM_uid345_i_arrayidx183_gaussian0_mult_x_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid379_i_cleanups_shl_gaussian0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid379_i_cleanups_shl_gaussian0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid380_i_cleanups_shl_gaussian0_shift_x_q;
    wire [0:0] leftShiftStage0_uid382_i_cleanups_shl_gaussian0_shift_x_s;
    reg [1:0] leftShiftStage0_uid382_i_cleanups_shl_gaussian0_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid386_i_next_initerations_gaussian0_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid388_i_next_initerations_gaussian0_shift_x_q;
    wire [0:0] rightShiftStage0_uid390_i_next_initerations_gaussian0_shift_x_s;
    reg [1:0] rightShiftStage0_uid390_i_next_initerations_gaussian0_shift_x_q;
    wire i_mul_gaussian37_im0_cma_reset;
    wire [13:0] i_mul_gaussian37_im0_cma_a0;
    wire [13:0] i_mul_gaussian37_im0_cma_c0;
    wire [27:0] i_mul_gaussian37_im0_cma_s0;
    wire [27:0] i_mul_gaussian37_im0_cma_qq;
    wire [27:0] i_mul_gaussian37_im0_cma_q;
    wire i_mul_gaussian37_im0_cma_ena0;
    wire i_mul_gaussian37_im0_cma_ena1;
    wire i_mul_gaussian37_im0_cma_ena2;
    wire i_mul_gaussian37_im8_cma_reset;
    wire [17:0] i_mul_gaussian37_im8_cma_a0;
    wire [17:0] i_mul_gaussian37_im8_cma_c0;
    wire [35:0] i_mul_gaussian37_im8_cma_s0;
    wire [35:0] i_mul_gaussian37_im8_cma_qq;
    wire [35:0] i_mul_gaussian37_im8_cma_q;
    wire i_mul_gaussian37_im8_cma_ena0;
    wire i_mul_gaussian37_im8_cma_ena1;
    wire i_mul_gaussian37_im8_cma_ena2;
    wire i_mul_gaussian37_ma3_cma_reset;
    wire [13:0] i_mul_gaussian37_ma3_cma_a0;
    wire [17:0] i_mul_gaussian37_ma3_cma_c0;
    wire [13:0] i_mul_gaussian37_ma3_cma_a1;
    wire [17:0] i_mul_gaussian37_ma3_cma_c1;
    wire [32:0] i_mul_gaussian37_ma3_cma_s0;
    wire [32:0] i_mul_gaussian37_ma3_cma_qq;
    wire [32:0] i_mul_gaussian37_ma3_cma_q;
    wire i_mul_gaussian37_ma3_cma_ena0;
    wire i_mul_gaussian37_ma3_cma_ena1;
    wire i_mul_gaussian37_ma3_cma_ena2;
    wire [52:0] i_arrayidx122_gaussian0_upper_bits_x_merged_bit_select_b;
    wire [10:0] i_arrayidx122_gaussian0_upper_bits_x_merged_bit_select_c;
    wire [56:0] i_arrayidx141_gaussian0_upper_bits_x_merged_bit_select_b;
    wire [6:0] i_arrayidx141_gaussian0_upper_bits_x_merged_bit_select_c;
    wire [13:0] i_mul_gaussian37_bs2_merged_bit_select_b;
    wire [17:0] i_mul_gaussian37_bs2_merged_bit_select_c;
    wire [13:0] i_mul_gaussian37_bs1_merged_bit_select_b;
    wire [17:0] i_mul_gaussian37_bs1_merged_bit_select_c;
    wire [1:0] lowRangeB_uid291_i_arrayidx122_gaussian0_mult_x_merged_bit_select_b;
    wire [8:0] lowRangeB_uid291_i_arrayidx122_gaussian0_mult_x_merged_bit_select_c;
    wire [1:0] lowRangeB_uid337_i_arrayidx183_gaussian0_mult_x_merged_bit_select_b;
    wire [8:0] lowRangeB_uid337_i_arrayidx183_gaussian0_mult_x_merged_bit_select_c;
    reg [0:0] redist0_sync_together147_aunroll_x_in_c0_eni18_1_tpl_1_q;
    reg [0:0] redist1_sync_together147_aunroll_x_in_c0_eni18_1_tpl_3_q;
    reg [0:0] redist1_sync_together147_aunroll_x_in_c0_eni18_1_tpl_3_delay_0;
    reg [0:0] redist2_sync_together147_aunroll_x_in_c0_eni18_1_tpl_4_q;
    reg [31:0] redist3_sync_together147_aunroll_x_in_c0_eni18_2_tpl_3_q;
    reg [31:0] redist3_sync_together147_aunroll_x_in_c0_eni18_2_tpl_3_delay_0;
    reg [0:0] redist4_sync_together147_aunroll_x_in_c0_eni18_3_tpl_1_q;
    reg [31:0] redist5_sync_together147_aunroll_x_in_c0_eni18_4_tpl_1_q;
    reg [0:0] redist6_sync_together147_aunroll_x_in_c0_eni18_5_tpl_1_q;
    reg [0:0] redist7_sync_together147_aunroll_x_in_c0_eni18_6_tpl_1_q;
    reg [31:0] redist8_sync_together147_aunroll_x_in_c0_eni18_7_tpl_1_q;
    reg [31:0] redist9_sync_together147_aunroll_x_in_c0_eni18_8_tpl_1_q;
    reg [31:0] redist10_sync_together147_aunroll_x_in_c0_eni18_9_tpl_1_q;
    reg [0:0] redist11_sync_together147_aunroll_x_in_c0_eni18_10_tpl_1_q;
    reg [0:0] redist12_sync_together147_aunroll_x_in_c0_eni18_11_tpl_1_q;
    reg [0:0] redist16_sync_together147_aunroll_x_in_c0_eni18_15_tpl_9_q;
    reg [0:0] redist19_sync_together147_aunroll_x_in_c0_eni18_18_tpl_9_q;
    reg [0:0] redist20_sync_together147_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist21_sync_together147_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist22_sync_together147_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist23_sync_together147_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist24_sync_together147_aunroll_x_in_i_valid_5_q;
    reg [0:0] redist25_sync_together147_aunroll_x_in_i_valid_6_q;
    reg [0:0] redist26_sync_together147_aunroll_x_in_i_valid_7_q;
    reg [0:0] redist27_sync_together147_aunroll_x_in_i_valid_8_q;
    reg [0:0] redist28_i_first_cleanup_gaussian3_sel_x_b_3_q;
    reg [0:0] redist28_i_first_cleanup_gaussian3_sel_x_b_3_delay_0;
    reg [0:0] redist28_i_first_cleanup_gaussian3_sel_x_b_3_delay_1;
    reg [10:0] redist29_i_arrayidx183_gaussian0_dupName_1_trunc_sel_x_b_1_q;
    reg [10:0] redist30_i_arrayidx183_gaussian0_dupName_0_trunc_sel_x_b_2_q;
    reg [10:0] redist30_i_arrayidx183_gaussian0_dupName_0_trunc_sel_x_b_2_delay_0;
    reg [10:0] redist31_i_arrayidx122_gaussian0_dupName_1_trunc_sel_x_b_1_q;
    reg [0:0] redist32_i_memdep_phi4_or_gaussian31_q_2_q;
    reg [0:0] redist32_i_memdep_phi4_or_gaussian31_q_2_delay_0;
    reg [0:0] redist33_i_masked_gaussian54_q_5_q;
    reg [0:0] redist33_i_masked_gaussian54_q_5_delay_0;
    reg [0:0] redist33_i_masked_gaussian54_q_5_delay_1;
    reg [0:0] redist33_i_masked_gaussian54_q_5_delay_2;
    reg [0:0] redist35_i_llvm_fpga_push_i1_memdep_phi4_pop728_push22_gaussian28_out_data_out_5_q;
    reg [0:0] redist35_i_llvm_fpga_push_i1_memdep_phi4_pop728_push22_gaussian28_out_data_out_5_delay_0;
    reg [0:0] redist35_i_llvm_fpga_push_i1_memdep_phi4_pop728_push22_gaussian28_out_data_out_5_delay_1;
    reg [0:0] redist35_i_llvm_fpga_push_i1_memdep_phi4_pop728_push22_gaussian28_out_data_out_5_delay_2;
    reg [0:0] redist35_i_llvm_fpga_push_i1_memdep_phi4_pop728_push22_gaussian28_out_data_out_5_delay_3;
    reg [31:0] redist37_i_llvm_fpga_pop_i32_i_017_pop941_pop30_gaussian12_out_data_out_1_q;
    reg [31:0] redist38_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_3_q;
    reg [31:0] redist38_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_3_delay_0;
    reg [31:0] redist40_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_3_q;
    reg [31:0] redist40_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_3_delay_0;
    reg [1:0] redist43_i_llvm_fpga_pop_i2_cleanups_pop21_gaussian2_out_data_out_3_q;
    reg [1:0] redist43_i_llvm_fpga_pop_i2_cleanups_pop21_gaussian2_out_data_out_3_delay_0;
    reg [1:0] redist43_i_llvm_fpga_pop_i2_cleanups_pop21_gaussian2_out_data_out_3_delay_1;
    reg [0:0] redist44_i_llvm_fpga_pop_i1_pop28_gaussian61_out_data_out_3_q;
    reg [0:0] redist44_i_llvm_fpga_pop_i1_pop28_gaussian61_out_data_out_3_delay_0;
    reg [0:0] redist44_i_llvm_fpga_pop_i1_pop28_gaussian61_out_data_out_3_delay_1;
    reg [0:0] redist45_i_llvm_fpga_pop_i1_pop28_gaussian61_out_data_out_8_q;
    reg [0:0] redist45_i_llvm_fpga_pop_i1_pop28_gaussian61_out_data_out_8_delay_0;
    reg [0:0] redist45_i_llvm_fpga_pop_i1_pop28_gaussian61_out_data_out_8_delay_1;
    reg [0:0] redist45_i_llvm_fpga_pop_i1_pop28_gaussian61_out_data_out_8_delay_2;
    reg [0:0] redist45_i_llvm_fpga_pop_i1_pop28_gaussian61_out_data_out_8_delay_3;
    reg [0:0] redist46_i_llvm_fpga_pop_i1_notcmp1740_pop29_gaussian63_out_data_out_3_q;
    reg [0:0] redist46_i_llvm_fpga_pop_i1_notcmp1740_pop29_gaussian63_out_data_out_3_delay_0;
    reg [0:0] redist46_i_llvm_fpga_pop_i1_notcmp1740_pop29_gaussian63_out_data_out_3_delay_1;
    reg [0:0] redist47_i_llvm_fpga_pop_i1_notcmp1740_pop29_gaussian63_out_data_out_8_q;
    reg [0:0] redist47_i_llvm_fpga_pop_i1_notcmp1740_pop29_gaussian63_out_data_out_8_delay_0;
    reg [0:0] redist47_i_llvm_fpga_pop_i1_notcmp1740_pop29_gaussian63_out_data_out_8_delay_1;
    reg [0:0] redist47_i_llvm_fpga_pop_i1_notcmp1740_pop29_gaussian63_out_data_out_8_delay_2;
    reg [0:0] redist47_i_llvm_fpga_pop_i1_notcmp1740_pop29_gaussian63_out_data_out_8_delay_3;
    reg [0:0] redist48_i_llvm_fpga_pop_i1_memdep_phi_pop1042_pop31_gaussian29_out_data_out_3_q;
    reg [0:0] redist48_i_llvm_fpga_pop_i1_memdep_phi_pop1042_pop31_gaussian29_out_data_out_3_delay_0;
    reg [0:0] redist48_i_llvm_fpga_pop_i1_memdep_phi_pop1042_pop31_gaussian29_out_data_out_3_delay_1;
    reg [0:0] redist49_i_llvm_fpga_pop_i1_memdep_phi4_pop728_pop22_gaussian27_out_data_out_3_q;
    reg [0:0] redist49_i_llvm_fpga_pop_i1_memdep_phi4_pop728_pop22_gaussian27_out_data_out_3_delay_0;
    reg [0:0] redist49_i_llvm_fpga_pop_i1_memdep_phi4_pop728_pop22_gaussian27_out_data_out_3_delay_1;
    reg [0:0] redist50_i_llvm_fpga_pop_i1_cmp41639_pop27_gaussian15_out_data_out_3_q;
    reg [0:0] redist50_i_llvm_fpga_pop_i1_cmp41639_pop27_gaussian15_out_data_out_3_delay_0;
    reg [0:0] redist50_i_llvm_fpga_pop_i1_cmp41639_pop27_gaussian15_out_data_out_3_delay_1;
    reg [0:0] redist51_i_llvm_fpga_pop_i1_cmp41639_pop27_gaussian15_out_data_out_5_q;
    reg [0:0] redist51_i_llvm_fpga_pop_i1_cmp41639_pop27_gaussian15_out_data_out_5_delay_0;
    reg [0:0] redist52_i_llvm_fpga_pop_i1_cmp41639_pop27_gaussian15_out_data_out_8_q;
    reg [0:0] redist52_i_llvm_fpga_pop_i1_cmp41639_pop27_gaussian15_out_data_out_8_delay_0;
    reg [0:0] redist52_i_llvm_fpga_pop_i1_cmp41639_pop27_gaussian15_out_data_out_8_delay_1;
    reg [0:0] redist53_i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out_2_q;
    reg [0:0] redist53_i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out_2_delay_0;
    reg [0:0] redist54_i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out_5_q;
    reg [0:0] redist54_i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out_5_delay_0;
    reg [0:0] redist54_i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out_5_delay_1;
    reg [0:0] redist55_i_first_cleanup_xor_or_gaussian22_q_3_q;
    reg [0:0] redist55_i_first_cleanup_xor_or_gaussian22_q_3_delay_0;
    reg [0:0] redist55_i_first_cleanup_xor_or_gaussian22_q_3_delay_1;
    reg [0:0] redist56_i_first_cleanup_xor_or_gaussian22_q_5_q;
    reg [0:0] redist56_i_first_cleanup_xor_or_gaussian22_q_5_delay_0;
    reg [0:0] redist57_i_first_cleanup_xor_or_gaussian22_q_7_q;
    reg [0:0] redist57_i_first_cleanup_xor_or_gaussian22_q_7_delay_0;
    reg [0:0] redist58_i_first_cleanup_xor_gaussian4_q_3_q;
    reg [0:0] redist58_i_first_cleanup_xor_gaussian4_q_3_delay_0;
    reg [0:0] redist58_i_first_cleanup_xor_gaussian4_q_3_delay_1;
    reg [61:0] redist59_i_arrayidx122_gaussian26_vt_select_63_b_2_q;
    reg [61:0] redist59_i_arrayidx122_gaussian26_vt_select_63_b_2_delay_0;
    reg [63:0] redist60_i_arrayidx122_gaussian26_vt_join_q_2_q;
    reg [63:0] redist60_i_arrayidx122_gaussian26_vt_join_q_2_delay_0;
    reg [31:0] redist3_sync_together147_aunroll_x_in_c0_eni18_2_tpl_3_outputreg0_q;
    wire redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_mem_reset0;
    wire [31:0] redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_mem_ia;
    wire [2:0] redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_mem_aa;
    wire [2:0] redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_mem_ab;
    wire [31:0] redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_mem_iq;
    wire [31:0] redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_mem_q;
    wire [2:0] redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_rdcnt_q;
    (* preserve *) reg [2:0] redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_rdcnt_i;
    reg [2:0] redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_wraddr_q;
    wire [3:0] redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_mem_last_q;
    wire [3:0] redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_cmp_b;
    wire [0:0] redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_cmp_q;
    (* dont_merge *) reg [0:0] redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_cmpReg_q;
    wire [0:0] redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_notEnable_q;
    wire [0:0] redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_nor_q;
    (* dont_merge *) reg [0:0] redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_sticky_ena_q;
    wire [0:0] redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_enaAnd_q;
    wire redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_mem_reset0;
    wire [31:0] redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_mem_ia;
    wire [2:0] redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_mem_aa;
    wire [2:0] redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_mem_ab;
    wire [31:0] redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_mem_iq;
    wire [31:0] redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_mem_q;
    wire [2:0] redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_rdcnt_q;
    (* preserve *) reg [2:0] redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_rdcnt_i;
    reg [2:0] redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_wraddr_q;
    wire [3:0] redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_mem_last_q;
    wire [3:0] redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_cmp_b;
    wire [0:0] redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_cmp_q;
    (* dont_merge *) reg [0:0] redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_cmpReg_q;
    wire [0:0] redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_notEnable_q;
    wire [0:0] redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_nor_q;
    (* dont_merge *) reg [0:0] redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_sticky_ena_q;
    wire [0:0] redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_enaAnd_q;
    wire redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_mem_reset0;
    wire [31:0] redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_mem_ia;
    wire [2:0] redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_mem_aa;
    wire [2:0] redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_mem_ab;
    wire [31:0] redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_mem_iq;
    wire [31:0] redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_mem_q;
    wire [2:0] redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_rdcnt_q;
    (* preserve *) reg [2:0] redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_rdcnt_i;
    reg [2:0] redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_wraddr_q;
    wire [3:0] redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_mem_last_q;
    wire [3:0] redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_cmp_b;
    wire [0:0] redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_cmp_q;
    (* dont_merge *) reg [0:0] redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_cmpReg_q;
    wire [0:0] redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_notEnable_q;
    wire [0:0] redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_nor_q;
    (* dont_merge *) reg [0:0] redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_sticky_ena_q;
    wire [0:0] redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_enaAnd_q;
    wire redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_mem_reset0;
    wire [32:0] redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_mem_ia;
    wire [2:0] redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_mem_aa;
    wire [2:0] redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_mem_ab;
    wire [32:0] redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_mem_iq;
    wire [32:0] redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_mem_q;
    wire [2:0] redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_rdcnt_q;
    (* preserve *) reg [2:0] redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_rdcnt_i;
    reg [2:0] redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_wraddr_q;
    wire [3:0] redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_mem_last_q;
    wire [3:0] redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_cmp_b;
    wire [0:0] redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_cmp_q;
    (* dont_merge *) reg [0:0] redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_cmpReg_q;
    wire [0:0] redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_notEnable_q;
    wire [0:0] redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_nor_q;
    (* dont_merge *) reg [0:0] redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_sticky_ena_q;
    wire [0:0] redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_enaAnd_q;
    wire redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_mem_reset0;
    wire [31:0] redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_mem_ia;
    wire [2:0] redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_mem_aa;
    wire [2:0] redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_mem_ab;
    wire [31:0] redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_mem_iq;
    wire [31:0] redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_mem_q;
    wire [2:0] redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_rdcnt_q;
    (* preserve *) reg [2:0] redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_rdcnt_i;
    reg [2:0] redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_wraddr_q;
    wire [3:0] redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_mem_last_q;
    wire [3:0] redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_cmp_b;
    wire [0:0] redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_cmp_q;
    (* dont_merge *) reg [0:0] redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_cmpReg_q;
    wire [0:0] redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_notEnable_q;
    wire [0:0] redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_nor_q;
    (* dont_merge *) reg [0:0] redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_sticky_ena_q;
    wire [0:0] redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_enaAnd_q;
    reg [31:0] redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_inputreg0_q;
    wire redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_mem_reset0;
    wire [31:0] redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_mem_ia;
    wire [1:0] redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_mem_aa;
    wire [1:0] redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_mem_ab;
    wire [31:0] redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_mem_iq;
    wire [31:0] redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_mem_q;
    wire [1:0] redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_rdcnt_q;
    (* preserve *) reg [1:0] redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_rdcnt_i;
    (* preserve *) reg redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_rdcnt_eq;
    reg [1:0] redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_wraddr_q;
    wire [1:0] redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_mem_last_q;
    wire [0:0] redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_cmp_q;
    (* dont_merge *) reg [0:0] redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_cmpReg_q;
    wire [0:0] redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_notEnable_q;
    wire [0:0] redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_nor_q;
    (* dont_merge *) reg [0:0] redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_sticky_ena_q;
    wire [0:0] redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_enaAnd_q;
    wire redist36_i_llvm_fpga_pop_i32_j_01835_pop25_gaussian18_out_data_out_3_mem_reset0;
    wire [31:0] redist36_i_llvm_fpga_pop_i32_j_01835_pop25_gaussian18_out_data_out_3_mem_ia;
    wire [0:0] redist36_i_llvm_fpga_pop_i32_j_01835_pop25_gaussian18_out_data_out_3_mem_aa;
    wire [0:0] redist36_i_llvm_fpga_pop_i32_j_01835_pop25_gaussian18_out_data_out_3_mem_ab;
    wire [31:0] redist36_i_llvm_fpga_pop_i32_j_01835_pop25_gaussian18_out_data_out_3_mem_iq;
    wire [31:0] redist36_i_llvm_fpga_pop_i32_j_01835_pop25_gaussian18_out_data_out_3_mem_q;
    wire [0:0] redist36_i_llvm_fpga_pop_i32_j_01835_pop25_gaussian18_out_data_out_3_rdcnt_q;
    (* preserve *) reg [0:0] redist36_i_llvm_fpga_pop_i32_j_01835_pop25_gaussian18_out_data_out_3_rdcnt_i;
    reg [0:0] redist36_i_llvm_fpga_pop_i32_j_01835_pop25_gaussian18_out_data_out_3_wraddr_q;
    (* dont_merge *) reg [0:0] redist36_i_llvm_fpga_pop_i32_j_01835_pop25_gaussian18_out_data_out_3_cmpReg_q;
    wire [0:0] redist36_i_llvm_fpga_pop_i32_j_01835_pop25_gaussian18_out_data_out_3_notEnable_q;
    wire [0:0] redist36_i_llvm_fpga_pop_i32_j_01835_pop25_gaussian18_out_data_out_3_nor_q;
    (* dont_merge *) reg [0:0] redist36_i_llvm_fpga_pop_i32_j_01835_pop25_gaussian18_out_data_out_3_sticky_ena_q;
    wire [0:0] redist36_i_llvm_fpga_pop_i32_j_01835_pop25_gaussian18_out_data_out_3_enaAnd_q;
    reg [31:0] redist38_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_3_inputreg0_q;
    wire redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_mem_reset0;
    wire [31:0] redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_mem_ia;
    wire [1:0] redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_mem_aa;
    wire [1:0] redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_mem_ab;
    wire [31:0] redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_mem_iq;
    wire [31:0] redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_mem_q;
    wire [1:0] redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_rdcnt_q;
    (* preserve *) reg [1:0] redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_rdcnt_i;
    reg [1:0] redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_wraddr_q;
    wire [2:0] redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_mem_last_q;
    wire [2:0] redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_cmp_b;
    wire [0:0] redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_cmp_q;
    (* dont_merge *) reg [0:0] redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_cmpReg_q;
    wire [0:0] redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_notEnable_q;
    wire [0:0] redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_nor_q;
    (* dont_merge *) reg [0:0] redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_sticky_ena_q;
    wire [0:0] redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_enaAnd_q;
    reg [31:0] redist40_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_3_inputreg0_q;
    wire redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_mem_reset0;
    wire [31:0] redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_mem_ia;
    wire [1:0] redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_mem_aa;
    wire [1:0] redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_mem_ab;
    wire [31:0] redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_mem_iq;
    wire [31:0] redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_mem_q;
    wire [1:0] redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_rdcnt_q;
    (* preserve *) reg [1:0] redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_rdcnt_i;
    reg [1:0] redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_wraddr_q;
    wire [2:0] redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_mem_last_q;
    wire [2:0] redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_cmp_b;
    wire [0:0] redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_cmp_q;
    (* dont_merge *) reg [0:0] redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_cmpReg_q;
    wire [0:0] redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_notEnable_q;
    wire [0:0] redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_nor_q;
    (* dont_merge *) reg [0:0] redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_sticky_ena_q;
    wire [0:0] redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_enaAnd_q;
    wire redist42_i_llvm_fpga_pop_i32_add37_pop26_gaussian59_out_data_out_3_mem_reset0;
    wire [31:0] redist42_i_llvm_fpga_pop_i32_add37_pop26_gaussian59_out_data_out_3_mem_ia;
    wire [0:0] redist42_i_llvm_fpga_pop_i32_add37_pop26_gaussian59_out_data_out_3_mem_aa;
    wire [0:0] redist42_i_llvm_fpga_pop_i32_add37_pop26_gaussian59_out_data_out_3_mem_ab;
    wire [31:0] redist42_i_llvm_fpga_pop_i32_add37_pop26_gaussian59_out_data_out_3_mem_iq;
    wire [31:0] redist42_i_llvm_fpga_pop_i32_add37_pop26_gaussian59_out_data_out_3_mem_q;
    wire [0:0] redist42_i_llvm_fpga_pop_i32_add37_pop26_gaussian59_out_data_out_3_rdcnt_q;
    (* preserve *) reg [0:0] redist42_i_llvm_fpga_pop_i32_add37_pop26_gaussian59_out_data_out_3_rdcnt_i;
    reg [0:0] redist42_i_llvm_fpga_pop_i32_add37_pop26_gaussian59_out_data_out_3_wraddr_q;
    (* dont_merge *) reg [0:0] redist42_i_llvm_fpga_pop_i32_add37_pop26_gaussian59_out_data_out_3_cmpReg_q;
    wire [0:0] redist42_i_llvm_fpga_pop_i32_add37_pop26_gaussian59_out_data_out_3_notEnable_q;
    wire [0:0] redist42_i_llvm_fpga_pop_i32_add37_pop26_gaussian59_out_data_out_3_nor_q;
    (* dont_merge *) reg [0:0] redist42_i_llvm_fpga_pop_i32_add37_pop26_gaussian59_out_data_out_3_sticky_ena_q;
    wire [0:0] redist42_i_llvm_fpga_pop_i32_add37_pop26_gaussian59_out_data_out_3_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist20_sync_together147_aunroll_x_in_i_valid_1(DELAY,420)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together147_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist20_sync_together147_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist21_sync_together147_aunroll_x_in_i_valid_2(DELAY,421)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_sync_together147_aunroll_x_in_i_valid_2_q <= '0;
        end
        else
        begin
            redist21_sync_together147_aunroll_x_in_i_valid_2_q <= $unsigned(redist20_sync_together147_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist22_sync_together147_aunroll_x_in_i_valid_3(DELAY,422)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_sync_together147_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist22_sync_together147_aunroll_x_in_i_valid_3_q <= $unsigned(redist21_sync_together147_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist23_sync_together147_aunroll_x_in_i_valid_4(DELAY,423)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_sync_together147_aunroll_x_in_i_valid_4_q <= '0;
        end
        else
        begin
            redist23_sync_together147_aunroll_x_in_i_valid_4_q <= $unsigned(redist22_sync_together147_aunroll_x_in_i_valid_3_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // leftShiftStage0Idx1Rng1_uid379_i_cleanups_shl_gaussian0_shift_x(BITSELECT,378)@5
    assign leftShiftStage0Idx1Rng1_uid379_i_cleanups_shl_gaussian0_shift_x_in = redist43_i_llvm_fpga_pop_i2_cleanups_pop21_gaussian2_out_data_out_3_q[0:0];
    assign leftShiftStage0Idx1Rng1_uid379_i_cleanups_shl_gaussian0_shift_x_b = leftShiftStage0Idx1Rng1_uid379_i_cleanups_shl_gaussian0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid380_i_cleanups_shl_gaussian0_shift_x(BITJOIN,379)@5
    assign leftShiftStage0Idx1_uid380_i_cleanups_shl_gaussian0_shift_x_q = {leftShiftStage0Idx1Rng1_uid379_i_cleanups_shl_gaussian0_shift_x_b, GND_q};

    // leftShiftStage0_uid382_i_cleanups_shl_gaussian0_shift_x(MUX,381)@5
    assign leftShiftStage0_uid382_i_cleanups_shl_gaussian0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid382_i_cleanups_shl_gaussian0_shift_x_s or redist43_i_llvm_fpga_pop_i2_cleanups_pop21_gaussian2_out_data_out_3_q or leftShiftStage0Idx1_uid380_i_cleanups_shl_gaussian0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid382_i_cleanups_shl_gaussian0_shift_x_s)
            1'b0 : leftShiftStage0_uid382_i_cleanups_shl_gaussian0_shift_x_q = redist43_i_llvm_fpga_pop_i2_cleanups_pop21_gaussian2_out_data_out_3_q;
            1'b1 : leftShiftStage0_uid382_i_cleanups_shl_gaussian0_shift_x_q = leftShiftStage0Idx1_uid380_i_cleanups_shl_gaussian0_shift_x_q;
            default : leftShiftStage0_uid382_i_cleanups_shl_gaussian0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl_gaussian5_vt_select_1(BITSELECT,63)@5
    assign i_cleanups_shl_gaussian5_vt_select_1_b = leftShiftStage0_uid382_i_cleanups_shl_gaussian0_shift_x_q[1:1];

    // i_cleanups_shl_gaussian5_vt_join(BITJOIN,62)@5
    assign i_cleanups_shl_gaussian5_vt_join_q = {i_cleanups_shl_gaussian5_vt_select_1_b, GND_q};

    // redist43_i_llvm_fpga_pop_i2_cleanups_pop21_gaussian2_out_data_out_3(DELAY,443)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_i_llvm_fpga_pop_i2_cleanups_pop21_gaussian2_out_data_out_3_delay_0 <= '0;
            redist43_i_llvm_fpga_pop_i2_cleanups_pop21_gaussian2_out_data_out_3_delay_1 <= '0;
            redist43_i_llvm_fpga_pop_i2_cleanups_pop21_gaussian2_out_data_out_3_q <= '0;
        end
        else
        begin
            redist43_i_llvm_fpga_pop_i2_cleanups_pop21_gaussian2_out_data_out_3_delay_0 <= $unsigned(i_llvm_fpga_pop_i2_cleanups_pop21_gaussian2_out_data_out);
            redist43_i_llvm_fpga_pop_i2_cleanups_pop21_gaussian2_out_data_out_3_delay_1 <= redist43_i_llvm_fpga_pop_i2_cleanups_pop21_gaussian2_out_data_out_3_delay_0;
            redist43_i_llvm_fpga_pop_i2_cleanups_pop21_gaussian2_out_data_out_3_q <= redist43_i_llvm_fpga_pop_i2_cleanups_pop21_gaussian2_out_data_out_3_delay_1;
        end
    end

    // i_first_cleanup_xor_gaussian4(LOGICAL,66)@2
    assign i_first_cleanup_xor_gaussian4_q = i_first_cleanup_gaussian3_sel_x_b ^ VCC_q;

    // redist58_i_first_cleanup_xor_gaussian4_q_3(DELAY,458)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist58_i_first_cleanup_xor_gaussian4_q_3_delay_0 <= '0;
            redist58_i_first_cleanup_xor_gaussian4_q_3_delay_1 <= '0;
            redist58_i_first_cleanup_xor_gaussian4_q_3_q <= '0;
        end
        else
        begin
            redist58_i_first_cleanup_xor_gaussian4_q_3_delay_0 <= $unsigned(i_first_cleanup_xor_gaussian4_q);
            redist58_i_first_cleanup_xor_gaussian4_q_3_delay_1 <= redist58_i_first_cleanup_xor_gaussian4_q_3_delay_0;
            redist58_i_first_cleanup_xor_gaussian4_q_3_q <= redist58_i_first_cleanup_xor_gaussian4_q_3_delay_1;
        end
    end

    // i_notcmp_gaussian49(LOGICAL,127)@5
    assign i_notcmp_gaussian49_q = i_unnamed_gaussian48_q ^ VCC_q;

    // i_or_gaussian51(LOGICAL,128)@5
    assign i_or_gaussian51_q = i_notcmp_gaussian49_q | redist58_i_first_cleanup_xor_gaussian4_q_3_q;

    // i_next_cleanups_gaussian52(MUX,123)@5
    assign i_next_cleanups_gaussian52_s = i_or_gaussian51_q;
    always @(i_next_cleanups_gaussian52_s or redist43_i_llvm_fpga_pop_i2_cleanups_pop21_gaussian2_out_data_out_3_q or i_cleanups_shl_gaussian5_vt_join_q)
    begin
        unique case (i_next_cleanups_gaussian52_s)
            1'b0 : i_next_cleanups_gaussian52_q = redist43_i_llvm_fpga_pop_i2_cleanups_pop21_gaussian2_out_data_out_3_q;
            1'b1 : i_next_cleanups_gaussian52_q = i_cleanups_shl_gaussian5_vt_join_q;
            default : i_next_cleanups_gaussian52_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups_push21_gaussian53(BLACKBOX,111)@5
    // out out_feedback_out_21@20000000
    // out out_feedback_valid_out_21@20000000
    gaussian_i_llvm_fpga_push_i2_cleanups_push21_0 thei_llvm_fpga_push_i2_cleanups_push21_gaussian53 (
        .in_data_in(i_next_cleanups_gaussian52_q),
        .in_feedback_stall_in_21(i_llvm_fpga_pop_i2_cleanups_pop21_gaussian2_out_feedback_stall_out_21),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(redist23_sync_together147_aunroll_x_in_i_valid_4_q),
        .out_data_out(),
        .out_feedback_out_21(i_llvm_fpga_push_i2_cleanups_push21_gaussian53_out_feedback_out_21),
        .out_feedback_valid_out_21(i_llvm_fpga_push_i2_cleanups_push21_gaussian53_out_feedback_valid_out_21),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together147_aunroll_x_in_c0_eni18_1_tpl_1(DELAY,400)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together147_aunroll_x_in_c0_eni18_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together147_aunroll_x_in_c0_eni18_1_tpl_1_q <= $unsigned(in_c0_eni18_1_tpl);
        end
    end

    // c_i2_1103(CONSTANT,46)
    assign c_i2_1103_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups_pop21_gaussian2(BLACKBOX,94)@2
    // out out_feedback_stall_out_21@20000000
    gaussian_i_llvm_fpga_pop_i2_cleanups_pop21_0 thei_llvm_fpga_pop_i2_cleanups_pop21_gaussian2 (
        .in_data_in(c_i2_1103_q),
        .in_dir(redist0_sync_together147_aunroll_x_in_c0_eni18_1_tpl_1_q),
        .in_feedback_in_21(i_llvm_fpga_push_i2_cleanups_push21_gaussian53_out_feedback_out_21),
        .in_feedback_valid_in_21(i_llvm_fpga_push_i2_cleanups_push21_gaussian53_out_feedback_valid_out_21),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist20_sync_together147_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups_pop21_gaussian2_out_data_out),
        .out_feedback_stall_out_21(i_llvm_fpga_pop_i2_cleanups_pop21_gaussian2_out_feedback_stall_out_21),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_gaussian3_sel_x(BITSELECT,214)@2
    assign i_first_cleanup_gaussian3_sel_x_b = i_llvm_fpga_pop_i2_cleanups_pop21_gaussian2_out_data_out[0:0];

    // redist28_i_first_cleanup_gaussian3_sel_x_b_3(DELAY,428)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_i_first_cleanup_gaussian3_sel_x_b_3_delay_0 <= '0;
            redist28_i_first_cleanup_gaussian3_sel_x_b_3_delay_1 <= '0;
            redist28_i_first_cleanup_gaussian3_sel_x_b_3_q <= '0;
        end
        else
        begin
            redist28_i_first_cleanup_gaussian3_sel_x_b_3_delay_0 <= $unsigned(i_first_cleanup_gaussian3_sel_x_b);
            redist28_i_first_cleanup_gaussian3_sel_x_b_3_delay_1 <= redist28_i_first_cleanup_gaussian3_sel_x_b_3_delay_0;
            redist28_i_first_cleanup_gaussian3_sel_x_b_3_q <= redist28_i_first_cleanup_gaussian3_sel_x_b_3_delay_1;
        end
    end

    // c_i6_1108(CONSTANT,48)
    assign c_i6_1108_q = $unsigned(6'b111111);

    // i_fpga_indvars_iv_next_gaussian46(ADD,68)@5
    assign i_fpga_indvars_iv_next_gaussian46_a = {1'b0, i_llvm_fpga_pop_i6_fpga_indvars_iv_pop17_gaussian43_out_data_out};
    assign i_fpga_indvars_iv_next_gaussian46_b = {1'b0, c_i6_1108_q};
    assign i_fpga_indvars_iv_next_gaussian46_o = $unsigned(i_fpga_indvars_iv_next_gaussian46_a) + $unsigned(i_fpga_indvars_iv_next_gaussian46_b);
    assign i_fpga_indvars_iv_next_gaussian46_q = i_fpga_indvars_iv_next_gaussian46_o[6:0];

    // bgTrunc_i_fpga_indvars_iv_next_gaussian46_sel_x(BITSELECT,138)@5
    assign bgTrunc_i_fpga_indvars_iv_next_gaussian46_sel_x_b = i_fpga_indvars_iv_next_gaussian46_q[5:0];

    // i_llvm_fpga_push_i6_fpga_indvars_iv_push17_gaussian47(BLACKBOX,119)@5
    // out out_feedback_out_17@20000000
    // out out_feedback_valid_out_17@20000000
    gaussian_i_llvm_fpga_push_i6_fpga_indvars_iv_push17_0 thei_llvm_fpga_push_i6_fpga_indvars_iv_push17_gaussian47 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_gaussian46_sel_x_b),
        .in_feedback_stall_in_17(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop17_gaussian43_out_feedback_stall_out_17),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(redist23_sync_together147_aunroll_x_in_i_valid_4_q),
        .out_data_out(),
        .out_feedback_out_17(i_llvm_fpga_push_i6_fpga_indvars_iv_push17_gaussian47_out_feedback_out_17),
        .out_feedback_valid_out_17(i_llvm_fpga_push_i6_fpga_indvars_iv_push17_gaussian47_out_feedback_valid_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i6_17106(CONSTANT,49)
    assign c_i6_17106_q = $unsigned(6'b010001);

    // i_llvm_fpga_pop_i6_fpga_indvars_iv_pop17_gaussian43(BLACKBOX,102)@5
    // out out_feedback_stall_out_17@20000000
    gaussian_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop17_0 thei_llvm_fpga_pop_i6_fpga_indvars_iv_pop17_gaussian43 (
        .in_data_in(c_i6_17106_q),
        .in_dir(redist2_sync_together147_aunroll_x_in_c0_eni18_1_tpl_4_q),
        .in_feedback_in_17(i_llvm_fpga_push_i6_fpga_indvars_iv_push17_gaussian47_out_feedback_out_17),
        .in_feedback_valid_in_17(i_llvm_fpga_push_i6_fpga_indvars_iv_push17_gaussian47_out_feedback_valid_out_17),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist23_sync_together147_aunroll_x_in_i_valid_4_q),
        .out_data_out(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop17_gaussian43_out_data_out),
        .out_feedback_stall_out_17(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop17_gaussian43_out_feedback_stall_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond_gaussian44_cmp_nsign(LOGICAL,267)@5
    assign i_exitcond_gaussian44_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i6_fpga_indvars_iv_pop17_gaussian43_out_data_out[5:5]));

    // redist24_sync_together147_aunroll_x_in_i_valid_5(DELAY,424)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_sync_together147_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist24_sync_together147_aunroll_x_in_i_valid_5_q <= $unsigned(redist23_sync_together147_aunroll_x_in_i_valid_4_q);
        end
    end

    // redist25_sync_together147_aunroll_x_in_i_valid_6(DELAY,425)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_sync_together147_aunroll_x_in_i_valid_6_q <= '0;
        end
        else
        begin
            redist25_sync_together147_aunroll_x_in_i_valid_6_q <= $unsigned(redist24_sync_together147_aunroll_x_in_i_valid_5_q);
        end
    end

    // redist53_i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out_2(DELAY,453)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist53_i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out_2_delay_0 <= '0;
            redist53_i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out_2_q <= '0;
        end
        else
        begin
            redist53_i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out);
            redist53_i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out_2_q <= redist53_i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out_2_delay_0;
        end
    end

    // redist51_i_llvm_fpga_pop_i1_cmp41639_pop27_gaussian15_out_data_out_5(DELAY,451)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist51_i_llvm_fpga_pop_i1_cmp41639_pop27_gaussian15_out_data_out_5_delay_0 <= '0;
            redist51_i_llvm_fpga_pop_i1_cmp41639_pop27_gaussian15_out_data_out_5_q <= '0;
        end
        else
        begin
            redist51_i_llvm_fpga_pop_i1_cmp41639_pop27_gaussian15_out_data_out_5_delay_0 <= $unsigned(redist50_i_llvm_fpga_pop_i1_cmp41639_pop27_gaussian15_out_data_out_3_q);
            redist51_i_llvm_fpga_pop_i1_cmp41639_pop27_gaussian15_out_data_out_5_q <= redist51_i_llvm_fpga_pop_i1_cmp41639_pop27_gaussian15_out_data_out_5_delay_0;
        end
    end

    // i_llvm_fpga_push_i1_cmp41639_push27_gaussian16(BLACKBOX,103)@7
    // out out_feedback_out_27@20000000
    // out out_feedback_valid_out_27@20000000
    gaussian_i_llvm_fpga_push_i1_cmp41639_push27_0 thei_llvm_fpga_push_i1_cmp41639_push27_gaussian16 (
        .in_data_in(redist51_i_llvm_fpga_pop_i1_cmp41639_pop27_gaussian15_out_data_out_5_q),
        .in_feedback_stall_in_27(i_llvm_fpga_pop_i1_cmp41639_pop27_gaussian15_out_feedback_stall_out_27),
        .in_keep_going(redist53_i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist25_sync_together147_aunroll_x_in_i_valid_6_q),
        .out_data_out(),
        .out_feedback_out_27(i_llvm_fpga_push_i1_cmp41639_push27_gaussian16_out_feedback_out_27),
        .out_feedback_valid_out_27(i_llvm_fpga_push_i1_cmp41639_push27_gaussian16_out_feedback_valid_out_27),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_sync_together147_aunroll_x_in_c0_eni18_3_tpl_1(DELAY,404)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together147_aunroll_x_in_c0_eni18_3_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together147_aunroll_x_in_c0_eni18_3_tpl_1_q <= $unsigned(in_c0_eni18_3_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_cmp41639_pop27_gaussian15(BLACKBOX,88)@2
    // out out_feedback_stall_out_27@20000000
    gaussian_i_llvm_fpga_pop_i1_cmp41639_pop27_0 thei_llvm_fpga_pop_i1_cmp41639_pop27_gaussian15 (
        .in_data_in(redist4_sync_together147_aunroll_x_in_c0_eni18_3_tpl_1_q),
        .in_dir(redist0_sync_together147_aunroll_x_in_c0_eni18_1_tpl_1_q),
        .in_feedback_in_27(i_llvm_fpga_push_i1_cmp41639_push27_gaussian16_out_feedback_out_27),
        .in_feedback_valid_in_27(i_llvm_fpga_push_i1_cmp41639_push27_gaussian16_out_feedback_valid_out_27),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist20_sync_together147_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i1_cmp41639_pop27_gaussian15_out_data_out),
        .out_feedback_stall_out_27(i_llvm_fpga_pop_i1_cmp41639_pop27_gaussian15_out_feedback_stall_out_27),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist50_i_llvm_fpga_pop_i1_cmp41639_pop27_gaussian15_out_data_out_3(DELAY,450)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist50_i_llvm_fpga_pop_i1_cmp41639_pop27_gaussian15_out_data_out_3_delay_0 <= '0;
            redist50_i_llvm_fpga_pop_i1_cmp41639_pop27_gaussian15_out_data_out_3_delay_1 <= '0;
            redist50_i_llvm_fpga_pop_i1_cmp41639_pop27_gaussian15_out_data_out_3_q <= '0;
        end
        else
        begin
            redist50_i_llvm_fpga_pop_i1_cmp41639_pop27_gaussian15_out_data_out_3_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_cmp41639_pop27_gaussian15_out_data_out);
            redist50_i_llvm_fpga_pop_i1_cmp41639_pop27_gaussian15_out_data_out_3_delay_1 <= redist50_i_llvm_fpga_pop_i1_cmp41639_pop27_gaussian15_out_data_out_3_delay_0;
            redist50_i_llvm_fpga_pop_i1_cmp41639_pop27_gaussian15_out_data_out_3_q <= redist50_i_llvm_fpga_pop_i1_cmp41639_pop27_gaussian15_out_data_out_3_delay_1;
        end
    end

    // i_unnamed_gaussian48(LOGICAL,132)@5
    assign i_unnamed_gaussian48_q = redist50_i_llvm_fpga_pop_i1_cmp41639_pop27_gaussian15_out_data_out_3_q & i_exitcond_gaussian44_cmp_nsign_q;

    // i_llvm_fpga_push_i1_notexitcond_gaussian50(BLACKBOX,109)@5
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    gaussian_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_gaussian50 (
        .in_data_in(i_unnamed_gaussian48_q),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_gaussian6_out_not_exitcond_stall_out),
        .in_first_cleanup(redist28_i_first_cleanup_gaussian3_sel_x_b_3_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist23_sync_together147_aunroll_x_in_i_valid_4_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_notexitcond_gaussian50_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_notexitcond_gaussian50_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,228)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist22_sync_together147_aunroll_x_in_i_valid_3_q);
        end
    end

    // rightShiftStage0Idx1Rng1_uid386_i_next_initerations_gaussian0_shift_x(BITSELECT,385)@5
    assign rightShiftStage0Idx1Rng1_uid386_i_next_initerations_gaussian0_shift_x_b = i_llvm_fpga_pop_i2_initerations_pop20_gaussian7_out_data_out[1:1];

    // rightShiftStage0Idx1_uid388_i_next_initerations_gaussian0_shift_x(BITJOIN,387)@5
    assign rightShiftStage0Idx1_uid388_i_next_initerations_gaussian0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid386_i_next_initerations_gaussian0_shift_x_b};

    // valid_fanout_reg1(REG,226)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist22_sync_together147_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg2(REG,227)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist22_sync_together147_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i2_initerations_push20_gaussian9(BLACKBOX,112)@5
    // out out_feedback_out_20@20000000
    // out out_feedback_valid_out_20@20000000
    gaussian_i_llvm_fpga_push_i2_initerations_push20_0 thei_llvm_fpga_push_i2_initerations_push20_gaussian9 (
        .in_data_in(i_next_initerations_gaussian8_vt_join_q),
        .in_feedback_stall_in_20(i_llvm_fpga_pop_i2_initerations_pop20_gaussian7_out_feedback_stall_out_20),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_20(i_llvm_fpga_push_i2_initerations_push20_gaussian9_out_feedback_out_20),
        .out_feedback_valid_out_20(i_llvm_fpga_push_i2_initerations_push20_gaussian9_out_feedback_valid_out_20),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations_pop20_gaussian7(BLACKBOX,95)@5
    // out out_feedback_stall_out_20@20000000
    gaussian_i_llvm_fpga_pop_i2_initerations_pop20_0 thei_llvm_fpga_pop_i2_initerations_pop20_gaussian7 (
        .in_data_in(c_i2_1103_q),
        .in_dir(redist2_sync_together147_aunroll_x_in_c0_eni18_1_tpl_4_q),
        .in_feedback_in_20(i_llvm_fpga_push_i2_initerations_push20_gaussian9_out_feedback_out_20),
        .in_feedback_valid_in_20(i_llvm_fpga_push_i2_initerations_push20_gaussian9_out_feedback_valid_out_20),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations_pop20_gaussian7_out_data_out),
        .out_feedback_stall_out_20(i_llvm_fpga_pop_i2_initerations_pop20_gaussian7_out_feedback_stall_out_20),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid390_i_next_initerations_gaussian0_shift_x(MUX,389)@5
    assign rightShiftStage0_uid390_i_next_initerations_gaussian0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid390_i_next_initerations_gaussian0_shift_x_s or i_llvm_fpga_pop_i2_initerations_pop20_gaussian7_out_data_out or rightShiftStage0Idx1_uid388_i_next_initerations_gaussian0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid390_i_next_initerations_gaussian0_shift_x_s)
            1'b0 : rightShiftStage0_uid390_i_next_initerations_gaussian0_shift_x_q = i_llvm_fpga_pop_i2_initerations_pop20_gaussian7_out_data_out;
            1'b1 : rightShiftStage0_uid390_i_next_initerations_gaussian0_shift_x_q = rightShiftStage0Idx1_uid388_i_next_initerations_gaussian0_shift_x_q;
            default : rightShiftStage0_uid390_i_next_initerations_gaussian0_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations_gaussian8_vt_select_0(BITSELECT,126)@5
    assign i_next_initerations_gaussian8_vt_select_0_b = rightShiftStage0_uid390_i_next_initerations_gaussian0_shift_x_q[0:0];

    // i_next_initerations_gaussian8_vt_join(BITJOIN,125)@5
    assign i_next_initerations_gaussian8_vt_join_q = {GND_q, i_next_initerations_gaussian8_vt_select_0_b};

    // i_last_initeration_gaussian10_sel_x(BITSELECT,218)@5
    assign i_last_initeration_gaussian10_sel_x_b = i_next_initerations_gaussian8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_gaussian11(BLACKBOX,104)@5
    // out out_feedback_out_1@20000000
    // out out_feedback_valid_out_1@20000000
    gaussian_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_gaussian11 (
        .in_data_in(i_last_initeration_gaussian10_sel_x_b),
        .in_feedback_stall_in_1(i_llvm_fpga_pipeline_keep_going_gaussian6_out_initeration_stall_out),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_1(i_llvm_fpga_push_i1_lastiniteration_gaussian11_out_feedback_out_1),
        .out_feedback_valid_out_1(i_llvm_fpga_push_i1_lastiniteration_gaussian11_out_feedback_valid_out_1),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together147_aunroll_x_in_c0_eni18_1_tpl_3(DELAY,401)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together147_aunroll_x_in_c0_eni18_1_tpl_3_delay_0 <= '0;
            redist1_sync_together147_aunroll_x_in_c0_eni18_1_tpl_3_q <= '0;
        end
        else
        begin
            redist1_sync_together147_aunroll_x_in_c0_eni18_1_tpl_3_delay_0 <= $unsigned(redist0_sync_together147_aunroll_x_in_c0_eni18_1_tpl_1_q);
            redist1_sync_together147_aunroll_x_in_c0_eni18_1_tpl_3_q <= redist1_sync_together147_aunroll_x_in_c0_eni18_1_tpl_3_delay_0;
        end
    end

    // redist2_sync_together147_aunroll_x_in_c0_eni18_1_tpl_4(DELAY,402)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together147_aunroll_x_in_c0_eni18_1_tpl_4_q <= '0;
        end
        else
        begin
            redist2_sync_together147_aunroll_x_in_c0_eni18_1_tpl_4_q <= $unsigned(redist1_sync_together147_aunroll_x_in_c0_eni18_1_tpl_3_q);
        end
    end

    // i_llvm_fpga_pipeline_keep_going_gaussian6(BLACKBOX,87)@5
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    gaussian_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_gaussian6 (
        .in_data_in(redist2_sync_together147_aunroll_x_in_c0_eni18_1_tpl_4_q),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_gaussian11_out_feedback_out_1),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_gaussian11_out_feedback_valid_out_1),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_gaussian50_out_feedback_out_2),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_gaussian50_out_feedback_valid_out_2),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(redist23_sync_together147_aunroll_x_in_i_valid_4_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_gaussian6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_gaussian6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_gaussian6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_gaussian6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_gaussian6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,51)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_gaussian6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_gaussian6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_gaussian6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_gaussian6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,135)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_gaussian6_out_pipeline_valid_out;

    // valid_fanout_reg8(REG,233)@1 + 1
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

    // i_unnamed_gaussian17(LOGICAL,131)@2
    assign i_unnamed_gaussian17_q = i_llvm_fpga_pop_i1_cmp41639_pop27_gaussian15_out_data_out ^ VCC_q;

    // i_first_cleanup_xor_or_gaussian22(LOGICAL,67)@2
    assign i_first_cleanup_xor_or_gaussian22_q = i_unnamed_gaussian17_q | i_first_cleanup_xor_gaussian4_q;

    // c_gaussian_c_pmem(CONSTANT,7)
    assign c_gaussian_c_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx141_gaussian0_upper_bits_x_merged_bit_select(BITSELECT,395)@2
    assign i_arrayidx141_gaussian0_upper_bits_x_merged_bit_select_b = c_gaussian_c_pmem_q[63:7];
    assign i_arrayidx141_gaussian0_upper_bits_x_merged_bit_select_c = c_gaussian_c_pmem_q[6:0];

    // i_idxprom11_gaussian25_vt_const_63(CONSTANT,70)
    assign i_idxprom11_gaussian25_vt_const_63_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg6(REG,231)@1 + 1
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

    // valid_fanout_reg7(REG,232)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist22_sync_together147_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist36_i_llvm_fpga_pop_i32_j_01835_pop25_gaussian18_out_data_out_3_notEnable(LOGICAL,527)
    assign redist36_i_llvm_fpga_pop_i32_j_01835_pop25_gaussian18_out_data_out_3_notEnable_q = $unsigned(~ (VCC_q));

    // redist36_i_llvm_fpga_pop_i32_j_01835_pop25_gaussian18_out_data_out_3_nor(LOGICAL,528)
    assign redist36_i_llvm_fpga_pop_i32_j_01835_pop25_gaussian18_out_data_out_3_nor_q = ~ (redist36_i_llvm_fpga_pop_i32_j_01835_pop25_gaussian18_out_data_out_3_notEnable_q | redist36_i_llvm_fpga_pop_i32_j_01835_pop25_gaussian18_out_data_out_3_sticky_ena_q);

    // redist36_i_llvm_fpga_pop_i32_j_01835_pop25_gaussian18_out_data_out_3_cmpReg(REG,526)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_i_llvm_fpga_pop_i32_j_01835_pop25_gaussian18_out_data_out_3_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist36_i_llvm_fpga_pop_i32_j_01835_pop25_gaussian18_out_data_out_3_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist36_i_llvm_fpga_pop_i32_j_01835_pop25_gaussian18_out_data_out_3_sticky_ena(REG,529)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_i_llvm_fpga_pop_i32_j_01835_pop25_gaussian18_out_data_out_3_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist36_i_llvm_fpga_pop_i32_j_01835_pop25_gaussian18_out_data_out_3_nor_q == 1'b1)
        begin
            redist36_i_llvm_fpga_pop_i32_j_01835_pop25_gaussian18_out_data_out_3_sticky_ena_q <= $unsigned(redist36_i_llvm_fpga_pop_i32_j_01835_pop25_gaussian18_out_data_out_3_cmpReg_q);
        end
    end

    // redist36_i_llvm_fpga_pop_i32_j_01835_pop25_gaussian18_out_data_out_3_enaAnd(LOGICAL,530)
    assign redist36_i_llvm_fpga_pop_i32_j_01835_pop25_gaussian18_out_data_out_3_enaAnd_q = redist36_i_llvm_fpga_pop_i32_j_01835_pop25_gaussian18_out_data_out_3_sticky_ena_q & VCC_q;

    // redist36_i_llvm_fpga_pop_i32_j_01835_pop25_gaussian18_out_data_out_3_rdcnt(COUNTER,524)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_i_llvm_fpga_pop_i32_j_01835_pop25_gaussian18_out_data_out_3_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist36_i_llvm_fpga_pop_i32_j_01835_pop25_gaussian18_out_data_out_3_rdcnt_i <= $unsigned(redist36_i_llvm_fpga_pop_i32_j_01835_pop25_gaussian18_out_data_out_3_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist36_i_llvm_fpga_pop_i32_j_01835_pop25_gaussian18_out_data_out_3_rdcnt_q = redist36_i_llvm_fpga_pop_i32_j_01835_pop25_gaussian18_out_data_out_3_rdcnt_i[0:0];

    // redist36_i_llvm_fpga_pop_i32_j_01835_pop25_gaussian18_out_data_out_3_wraddr(REG,525)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_i_llvm_fpga_pop_i32_j_01835_pop25_gaussian18_out_data_out_3_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist36_i_llvm_fpga_pop_i32_j_01835_pop25_gaussian18_out_data_out_3_wraddr_q <= $unsigned(redist36_i_llvm_fpga_pop_i32_j_01835_pop25_gaussian18_out_data_out_3_rdcnt_q);
        end
    end

    // redist36_i_llvm_fpga_pop_i32_j_01835_pop25_gaussian18_out_data_out_3_mem(DUALMEM,523)
    assign redist36_i_llvm_fpga_pop_i32_j_01835_pop25_gaussian18_out_data_out_3_mem_ia = $unsigned(i_llvm_fpga_pop_i32_j_01835_pop25_gaussian18_out_data_out);
    assign redist36_i_llvm_fpga_pop_i32_j_01835_pop25_gaussian18_out_data_out_3_mem_aa = redist36_i_llvm_fpga_pop_i32_j_01835_pop25_gaussian18_out_data_out_3_wraddr_q;
    assign redist36_i_llvm_fpga_pop_i32_j_01835_pop25_gaussian18_out_data_out_3_mem_ab = redist36_i_llvm_fpga_pop_i32_j_01835_pop25_gaussian18_out_data_out_3_rdcnt_q;
    assign redist36_i_llvm_fpga_pop_i32_j_01835_pop25_gaussian18_out_data_out_3_mem_reset0 = ~ (resetn);
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
        .intended_device_family("Arria 10")
    ) redist36_i_llvm_fpga_pop_i32_j_01835_pop25_gaussian18_out_data_out_3_mem_dmem (
        .clocken1(redist36_i_llvm_fpga_pop_i32_j_01835_pop25_gaussian18_out_data_out_3_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist36_i_llvm_fpga_pop_i32_j_01835_pop25_gaussian18_out_data_out_3_mem_reset0),
        .clock1(clock),
        .address_a(redist36_i_llvm_fpga_pop_i32_j_01835_pop25_gaussian18_out_data_out_3_mem_aa),
        .data_a(redist36_i_llvm_fpga_pop_i32_j_01835_pop25_gaussian18_out_data_out_3_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist36_i_llvm_fpga_pop_i32_j_01835_pop25_gaussian18_out_data_out_3_mem_ab),
        .q_b(redist36_i_llvm_fpga_pop_i32_j_01835_pop25_gaussian18_out_data_out_3_mem_iq),
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
    assign redist36_i_llvm_fpga_pop_i32_j_01835_pop25_gaussian18_out_data_out_3_mem_q = redist36_i_llvm_fpga_pop_i32_j_01835_pop25_gaussian18_out_data_out_3_mem_iq[31:0];

    // i_llvm_fpga_push_i32_j_01835_push25_gaussian19(BLACKBOX,117)@5
    // out out_feedback_out_25@20000000
    // out out_feedback_valid_out_25@20000000
    gaussian_i_llvm_fpga_push_i32_j_01835_push25_0 thei_llvm_fpga_push_i32_j_01835_push25_gaussian19 (
        .in_data_in(redist36_i_llvm_fpga_pop_i32_j_01835_pop25_gaussian18_out_data_out_3_mem_q),
        .in_feedback_stall_in_25(i_llvm_fpga_pop_i32_j_01835_pop25_gaussian18_out_feedback_stall_out_25),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(),
        .out_feedback_out_25(i_llvm_fpga_push_i32_j_01835_push25_gaussian19_out_feedback_out_25),
        .out_feedback_valid_out_25(i_llvm_fpga_push_i32_j_01835_push25_gaussian19_out_feedback_valid_out_25),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_sync_together147_aunroll_x_in_c0_eni18_4_tpl_1(DELAY,405)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together147_aunroll_x_in_c0_eni18_4_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together147_aunroll_x_in_c0_eni18_4_tpl_1_q <= $unsigned(in_c0_eni18_4_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_j_01835_pop25_gaussian18(BLACKBOX,100)@2
    // out out_feedback_stall_out_25@20000000
    gaussian_i_llvm_fpga_pop_i32_j_01835_pop25_0 thei_llvm_fpga_pop_i32_j_01835_pop25_gaussian18 (
        .in_data_in(redist5_sync_together147_aunroll_x_in_c0_eni18_4_tpl_1_q),
        .in_dir(redist0_sync_together147_aunroll_x_in_c0_eni18_1_tpl_1_q),
        .in_feedback_in_25(i_llvm_fpga_push_i32_j_01835_push25_gaussian19_out_feedback_out_25),
        .in_feedback_valid_in_25(i_llvm_fpga_push_i32_j_01835_push25_gaussian19_out_feedback_valid_out_25),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(i_llvm_fpga_pop_i32_j_01835_pop25_gaussian18_out_data_out),
        .out_feedback_stall_out_25(i_llvm_fpga_pop_i32_j_01835_pop25_gaussian18_out_feedback_stall_out_25),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom13_gaussian20_sel_x(BITSELECT,216)@2
    assign i_idxprom13_gaussian20_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_j_01835_pop25_gaussian18_out_data_out[31:0]};

    // i_idxprom13_gaussian20_vt_select_31(BITSELECT,76)@2
    assign i_idxprom13_gaussian20_vt_select_31_b = i_idxprom13_gaussian20_sel_x_b[31:0];

    // i_idxprom13_gaussian20_vt_join(BITJOIN,75)@2
    assign i_idxprom13_gaussian20_vt_join_q = {i_idxprom11_gaussian25_vt_const_63_q, i_idxprom13_gaussian20_vt_select_31_b};

    // i_arrayidx141_gaussian0_dupName_0_trunc_sel_x(BITSELECT,184)@2
    assign i_arrayidx141_gaussian0_dupName_0_trunc_sel_x_b = i_idxprom13_gaussian20_vt_join_q[6:0];

    // i_arrayidx141_gaussian0_narrow_x(BITSELECT,177)@2
    assign i_arrayidx141_gaussian0_narrow_x_b = i_arrayidx141_gaussian0_dupName_0_trunc_sel_x_b[4:0];

    // i_arrayidx141_gaussian0_shift_join_x(BITJOIN,178)@2
    assign i_arrayidx141_gaussian0_shift_join_x_q = {i_arrayidx141_gaussian0_narrow_x_b, i_arrayidx122_gaussian26_vt_const_1_q};

    // i_arrayidx141_gaussian0_add_x(ADD,174)@2
    assign i_arrayidx141_gaussian0_add_x_a = {1'b0, i_arrayidx141_gaussian0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx141_gaussian0_add_x_b = {1'b0, i_arrayidx141_gaussian0_shift_join_x_q};
    assign i_arrayidx141_gaussian0_add_x_o = $unsigned(i_arrayidx141_gaussian0_add_x_a) + $unsigned(i_arrayidx141_gaussian0_add_x_b);
    assign i_arrayidx141_gaussian0_add_x_q = i_arrayidx141_gaussian0_add_x_o[7:0];

    // i_arrayidx141_gaussian0_dupName_2_trunc_sel_x(BITSELECT,185)@2
    assign i_arrayidx141_gaussian0_dupName_2_trunc_sel_x_b = i_arrayidx141_gaussian0_add_x_q[6:0];

    // i_arrayidx141_gaussian0_append_upper_bits_x(BITJOIN,175)@2
    assign i_arrayidx141_gaussian0_append_upper_bits_x_q = {i_arrayidx141_gaussian0_upper_bits_x_merged_bit_select_b, i_arrayidx141_gaussian0_dupName_2_trunc_sel_x_b};

    // i_arrayidx141_gaussian21_vt_select_63(BITSELECT,57)@2
    assign i_arrayidx141_gaussian21_vt_select_63_b = i_arrayidx141_gaussian0_append_upper_bits_x_q[63:2];

    // i_arrayidx122_gaussian26_vt_const_1(CONSTANT,52)
    assign i_arrayidx122_gaussian26_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx141_gaussian21_vt_join(BITJOIN,56)@2
    assign i_arrayidx141_gaussian21_vt_join_q = {i_arrayidx141_gaussian21_vt_select_63_b, i_arrayidx122_gaussian26_vt_const_1_q};

    // i_llvm_fpga_mem_lm1_gaussian23(BLACKBOX,83)@2
    // in in_i_stall@20000000
    // out out_lm1_gaussian_avm_address@20000000
    // out out_lm1_gaussian_avm_burstcount@20000000
    // out out_lm1_gaussian_avm_byteenable@20000000
    // out out_lm1_gaussian_avm_enable@20000000
    // out out_lm1_gaussian_avm_read@20000000
    // out out_lm1_gaussian_avm_write@20000000
    // out out_lm1_gaussian_avm_writedata@20000000
    // out out_o_readdata@6
    // out out_o_stall@5
    // out out_o_valid@6
    gaussian_i_llvm_fpga_mem_lm1_0 thei_llvm_fpga_mem_lm1_gaussian23 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx141_gaussian21_vt_join_q),
        .in_i_predicate(i_first_cleanup_xor_or_gaussian22_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg8_q),
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
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,144)
    assign out_lm1_gaussian_avm_address = i_llvm_fpga_mem_lm1_gaussian23_out_lm1_gaussian_avm_address;
    assign out_lm1_gaussian_avm_enable = i_llvm_fpga_mem_lm1_gaussian23_out_lm1_gaussian_avm_enable;
    assign out_lm1_gaussian_avm_read = i_llvm_fpga_mem_lm1_gaussian23_out_lm1_gaussian_avm_read;
    assign out_lm1_gaussian_avm_write = i_llvm_fpga_mem_lm1_gaussian23_out_lm1_gaussian_avm_write;
    assign out_lm1_gaussian_avm_writedata = i_llvm_fpga_mem_lm1_gaussian23_out_lm1_gaussian_avm_writedata;
    assign out_lm1_gaussian_avm_byteenable = i_llvm_fpga_mem_lm1_gaussian23_out_lm1_gaussian_avm_byteenable;
    assign out_lm1_gaussian_avm_burstcount = i_llvm_fpga_mem_lm1_gaussian23_out_lm1_gaussian_avm_burstcount;

    // valid_fanout_reg14(REG,239)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist24_sync_together147_aunroll_x_in_i_valid_5_q);
        end
    end

    // redist55_i_first_cleanup_xor_or_gaussian22_q_3(DELAY,455)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist55_i_first_cleanup_xor_or_gaussian22_q_3_delay_0 <= '0;
            redist55_i_first_cleanup_xor_or_gaussian22_q_3_delay_1 <= '0;
            redist55_i_first_cleanup_xor_or_gaussian22_q_3_q <= '0;
        end
        else
        begin
            redist55_i_first_cleanup_xor_or_gaussian22_q_3_delay_0 <= $unsigned(i_first_cleanup_xor_or_gaussian22_q);
            redist55_i_first_cleanup_xor_or_gaussian22_q_3_delay_1 <= redist55_i_first_cleanup_xor_or_gaussian22_q_3_delay_0;
            redist55_i_first_cleanup_xor_or_gaussian22_q_3_q <= redist55_i_first_cleanup_xor_or_gaussian22_q_3_delay_1;
        end
    end

    // redist56_i_first_cleanup_xor_or_gaussian22_q_5(DELAY,456)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist56_i_first_cleanup_xor_or_gaussian22_q_5_delay_0 <= '0;
            redist56_i_first_cleanup_xor_or_gaussian22_q_5_q <= '0;
        end
        else
        begin
            redist56_i_first_cleanup_xor_or_gaussian22_q_5_delay_0 <= $unsigned(redist55_i_first_cleanup_xor_or_gaussian22_q_3_q);
            redist56_i_first_cleanup_xor_or_gaussian22_q_5_q <= redist56_i_first_cleanup_xor_or_gaussian22_q_5_delay_0;
        end
    end

    // valid_fanout_reg10(REG,235)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg11(REG,236)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist22_sync_together147_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi4_pop728_push22_gaussian28(BLACKBOX,105)@5
    // out out_feedback_out_22@20000000
    // out out_feedback_valid_out_22@20000000
    gaussian_i_llvm_fpga_push_i1_memdep_phi4_pop728_push22_0 thei_llvm_fpga_push_i1_memdep_phi4_pop728_push22_gaussian28 (
        .in_data_in(redist49_i_llvm_fpga_pop_i1_memdep_phi4_pop728_pop22_gaussian27_out_data_out_3_q),
        .in_feedback_stall_in_22(i_llvm_fpga_pop_i1_memdep_phi4_pop728_pop22_gaussian27_out_feedback_stall_out_22),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(i_llvm_fpga_push_i1_memdep_phi4_pop728_push22_gaussian28_out_data_out),
        .out_feedback_out_22(i_llvm_fpga_push_i1_memdep_phi4_pop728_push22_gaussian28_out_feedback_out_22),
        .out_feedback_valid_out_22(i_llvm_fpga_push_i1_memdep_phi4_pop728_push22_gaussian28_out_feedback_valid_out_22),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_sync_together147_aunroll_x_in_c0_eni18_5_tpl_1(DELAY,406)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together147_aunroll_x_in_c0_eni18_5_tpl_1_q <= '0;
        end
        else
        begin
            redist6_sync_together147_aunroll_x_in_c0_eni18_5_tpl_1_q <= $unsigned(in_c0_eni18_5_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi4_pop728_pop22_gaussian27(BLACKBOX,89)@2
    // out out_feedback_stall_out_22@20000000
    gaussian_i_llvm_fpga_pop_i1_memdep_phi4_pop728_pop22_0 thei_llvm_fpga_pop_i1_memdep_phi4_pop728_pop22_gaussian27 (
        .in_data_in(redist6_sync_together147_aunroll_x_in_c0_eni18_5_tpl_1_q),
        .in_dir(redist0_sync_together147_aunroll_x_in_c0_eni18_1_tpl_1_q),
        .in_feedback_in_22(i_llvm_fpga_push_i1_memdep_phi4_pop728_push22_gaussian28_out_feedback_out_22),
        .in_feedback_valid_in_22(i_llvm_fpga_push_i1_memdep_phi4_pop728_push22_gaussian28_out_feedback_valid_out_22),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi4_pop728_pop22_gaussian27_out_data_out),
        .out_feedback_stall_out_22(i_llvm_fpga_pop_i1_memdep_phi4_pop728_pop22_gaussian27_out_feedback_stall_out_22),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist49_i_llvm_fpga_pop_i1_memdep_phi4_pop728_pop22_gaussian27_out_data_out_3(DELAY,449)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist49_i_llvm_fpga_pop_i1_memdep_phi4_pop728_pop22_gaussian27_out_data_out_3_delay_0 <= '0;
            redist49_i_llvm_fpga_pop_i1_memdep_phi4_pop728_pop22_gaussian27_out_data_out_3_delay_1 <= '0;
            redist49_i_llvm_fpga_pop_i1_memdep_phi4_pop728_pop22_gaussian27_out_data_out_3_q <= '0;
        end
        else
        begin
            redist49_i_llvm_fpga_pop_i1_memdep_phi4_pop728_pop22_gaussian27_out_data_out_3_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi4_pop728_pop22_gaussian27_out_data_out);
            redist49_i_llvm_fpga_pop_i1_memdep_phi4_pop728_pop22_gaussian27_out_data_out_3_delay_1 <= redist49_i_llvm_fpga_pop_i1_memdep_phi4_pop728_pop22_gaussian27_out_data_out_3_delay_0;
            redist49_i_llvm_fpga_pop_i1_memdep_phi4_pop728_pop22_gaussian27_out_data_out_3_q <= redist49_i_llvm_fpga_pop_i1_memdep_phi4_pop728_pop22_gaussian27_out_data_out_3_delay_1;
        end
    end

    // valid_fanout_reg12(REG,237)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg13(REG,238)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist22_sync_together147_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi_pop1042_push31_gaussian30(BLACKBOX,107)@5
    // out out_feedback_out_31@20000000
    // out out_feedback_valid_out_31@20000000
    gaussian_i_llvm_fpga_push_i1_memdep_phi_pop1042_push31_0 thei_llvm_fpga_push_i1_memdep_phi_pop1042_push31_gaussian30 (
        .in_data_in(redist48_i_llvm_fpga_pop_i1_memdep_phi_pop1042_pop31_gaussian29_out_data_out_3_q),
        .in_feedback_stall_in_31(i_llvm_fpga_pop_i1_memdep_phi_pop1042_pop31_gaussian29_out_feedback_stall_out_31),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(),
        .out_feedback_out_31(i_llvm_fpga_push_i1_memdep_phi_pop1042_push31_gaussian30_out_feedback_out_31),
        .out_feedback_valid_out_31(i_llvm_fpga_push_i1_memdep_phi_pop1042_push31_gaussian30_out_feedback_valid_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_sync_together147_aunroll_x_in_c0_eni18_6_tpl_1(DELAY,407)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together147_aunroll_x_in_c0_eni18_6_tpl_1_q <= '0;
        end
        else
        begin
            redist7_sync_together147_aunroll_x_in_c0_eni18_6_tpl_1_q <= $unsigned(in_c0_eni18_6_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi_pop1042_pop31_gaussian29(BLACKBOX,91)@2
    // out out_feedback_stall_out_31@20000000
    gaussian_i_llvm_fpga_pop_i1_memdep_phi_pop1042_pop31_0 thei_llvm_fpga_pop_i1_memdep_phi_pop1042_pop31_gaussian29 (
        .in_data_in(redist7_sync_together147_aunroll_x_in_c0_eni18_6_tpl_1_q),
        .in_dir(redist0_sync_together147_aunroll_x_in_c0_eni18_1_tpl_1_q),
        .in_feedback_in_31(i_llvm_fpga_push_i1_memdep_phi_pop1042_push31_gaussian30_out_feedback_out_31),
        .in_feedback_valid_in_31(i_llvm_fpga_push_i1_memdep_phi_pop1042_push31_gaussian30_out_feedback_valid_out_31),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop1042_pop31_gaussian29_out_data_out),
        .out_feedback_stall_out_31(i_llvm_fpga_pop_i1_memdep_phi_pop1042_pop31_gaussian29_out_feedback_stall_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist48_i_llvm_fpga_pop_i1_memdep_phi_pop1042_pop31_gaussian29_out_data_out_3(DELAY,448)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist48_i_llvm_fpga_pop_i1_memdep_phi_pop1042_pop31_gaussian29_out_data_out_3_delay_0 <= '0;
            redist48_i_llvm_fpga_pop_i1_memdep_phi_pop1042_pop31_gaussian29_out_data_out_3_delay_1 <= '0;
            redist48_i_llvm_fpga_pop_i1_memdep_phi_pop1042_pop31_gaussian29_out_data_out_3_q <= '0;
        end
        else
        begin
            redist48_i_llvm_fpga_pop_i1_memdep_phi_pop1042_pop31_gaussian29_out_data_out_3_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi_pop1042_pop31_gaussian29_out_data_out);
            redist48_i_llvm_fpga_pop_i1_memdep_phi_pop1042_pop31_gaussian29_out_data_out_3_delay_1 <= redist48_i_llvm_fpga_pop_i1_memdep_phi_pop1042_pop31_gaussian29_out_data_out_3_delay_0;
            redist48_i_llvm_fpga_pop_i1_memdep_phi_pop1042_pop31_gaussian29_out_data_out_3_q <= redist48_i_llvm_fpga_pop_i1_memdep_phi_pop1042_pop31_gaussian29_out_data_out_3_delay_1;
        end
    end

    // i_memdep_phi4_or_gaussian31(LOGICAL,121)@5
    assign i_memdep_phi4_or_gaussian31_q = redist48_i_llvm_fpga_pop_i1_memdep_phi_pop1042_pop31_gaussian29_out_data_out_3_q | redist49_i_llvm_fpga_pop_i1_memdep_phi4_pop728_pop22_gaussian27_out_data_out_3_q;

    // redist32_i_memdep_phi4_or_gaussian31_q_2(DELAY,432)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_i_memdep_phi4_or_gaussian31_q_2_delay_0 <= '0;
            redist32_i_memdep_phi4_or_gaussian31_q_2_q <= '0;
        end
        else
        begin
            redist32_i_memdep_phi4_or_gaussian31_q_2_delay_0 <= $unsigned(i_memdep_phi4_or_gaussian31_q);
            redist32_i_memdep_phi4_or_gaussian31_q_2_q <= redist32_i_memdep_phi4_or_gaussian31_q_2_delay_0;
        end
    end

    // c_gaussian_A_pmem(CONSTANT,6)
    assign c_gaussian_A_pmem_q = $unsigned(64'b0100000001000001000000000000000000000000000000000000000000000000);

    // i_arrayidx122_gaussian0_upper_bits_x_merged_bit_select(BITSELECT,394)@5
    assign i_arrayidx122_gaussian0_upper_bits_x_merged_bit_select_b = c_gaussian_A_pmem_q[63:11];
    assign i_arrayidx122_gaussian0_upper_bits_x_merged_bit_select_c = c_gaussian_A_pmem_q[10:0];

    // valid_fanout_reg9(REG,234)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist22_sync_together147_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg19(REG,244)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg19_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(redist22_sync_together147_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_inc_gaussian41(ADD,81)@5
    assign i_inc_gaussian41_a = {1'b0, i_llvm_fpga_pop_i32_k_015_pop18_gaussian24_out_data_out};
    assign i_inc_gaussian41_b = {1'b0, c_i32_1105_q};
    assign i_inc_gaussian41_o = $unsigned(i_inc_gaussian41_a) + $unsigned(i_inc_gaussian41_b);
    assign i_inc_gaussian41_q = i_inc_gaussian41_o[32:0];

    // bgTrunc_i_inc_gaussian41_sel_x(BITSELECT,139)@5
    assign bgTrunc_i_inc_gaussian41_sel_x_b = i_inc_gaussian41_q[31:0];

    // i_llvm_fpga_push_i32_k_015_push18_gaussian42(BLACKBOX,118)@5
    // out out_feedback_out_18@20000000
    // out out_feedback_valid_out_18@20000000
    gaussian_i_llvm_fpga_push_i32_k_015_push18_0 thei_llvm_fpga_push_i32_k_015_push18_gaussian42 (
        .in_data_in(bgTrunc_i_inc_gaussian41_sel_x_b),
        .in_feedback_stall_in_18(i_llvm_fpga_pop_i32_k_015_pop18_gaussian24_out_feedback_stall_out_18),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_data_out(),
        .out_feedback_out_18(i_llvm_fpga_push_i32_k_015_push18_gaussian42_out_feedback_out_18),
        .out_feedback_valid_out_18(i_llvm_fpga_push_i32_k_015_push18_gaussian42_out_feedback_valid_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_1105(CONSTANT,47)
    assign c_i32_1105_q = $unsigned(32'b00000000000000000000000000000001);

    // i_llvm_fpga_pop_i32_k_015_pop18_gaussian24(BLACKBOX,101)@5
    // out out_feedback_stall_out_18@20000000
    gaussian_i_llvm_fpga_pop_i32_k_015_pop18_0 thei_llvm_fpga_pop_i32_k_015_pop18_gaussian24 (
        .in_data_in(c_i32_1105_q),
        .in_dir(redist2_sync_together147_aunroll_x_in_c0_eni18_1_tpl_4_q),
        .in_feedback_in_18(i_llvm_fpga_push_i32_k_015_push18_gaussian42_out_feedback_out_18),
        .in_feedback_valid_in_18(i_llvm_fpga_push_i32_k_015_push18_gaussian42_out_feedback_valid_out_18),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(i_llvm_fpga_pop_i32_k_015_pop18_gaussian24_out_data_out),
        .out_feedback_stall_out_18(i_llvm_fpga_pop_i32_k_015_pop18_gaussian24_out_feedback_stall_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom11_gaussian25_sel_x(BITSELECT,215)@5
    assign i_idxprom11_gaussian25_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_k_015_pop18_gaussian24_out_data_out[31:0]};

    // i_idxprom11_gaussian25_vt_select_31(BITSELECT,72)@5
    assign i_idxprom11_gaussian25_vt_select_31_b = i_idxprom11_gaussian25_sel_x_b[31:0];

    // i_idxprom11_gaussian25_vt_join(BITJOIN,71)@5
    assign i_idxprom11_gaussian25_vt_join_q = {i_idxprom11_gaussian25_vt_const_63_q, i_idxprom11_gaussian25_vt_select_31_b};

    // i_arrayidx122_gaussian0_dupName_3_trunc_sel_x(BITSELECT,172)@5
    assign i_arrayidx122_gaussian0_dupName_3_trunc_sel_x_b = i_idxprom11_gaussian25_vt_join_q[10:0];

    // i_arrayidx122_gaussian0_narrow_x(BITSELECT,155)@5
    assign i_arrayidx122_gaussian0_narrow_x_b = i_arrayidx122_gaussian0_dupName_3_trunc_sel_x_b[8:0];

    // i_arrayidx122_gaussian0_shift_join_x(BITJOIN,156)@5
    assign i_arrayidx122_gaussian0_shift_join_x_q = {i_arrayidx122_gaussian0_narrow_x_b, i_arrayidx122_gaussian26_vt_const_1_q};

    // i_arrayidx122_gaussian0_mult_multconst_x(CONSTANT,167)
    assign i_arrayidx122_gaussian0_mult_multconst_x_q = $unsigned(4'b0000);

    // valid_fanout_reg4(REG,229)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist21_sync_together147_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg5(REG,230)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist22_sync_together147_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist37_i_llvm_fpga_pop_i32_i_017_pop941_pop30_gaussian12_out_data_out_1(DELAY,437)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_i_llvm_fpga_pop_i32_i_017_pop941_pop30_gaussian12_out_data_out_1_q <= '0;
        end
        else
        begin
            redist37_i_llvm_fpga_pop_i32_i_017_pop941_pop30_gaussian12_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_i_017_pop941_pop30_gaussian12_out_data_out);
        end
    end

    // i_llvm_fpga_push_i32_i_017_pop941_push30_gaussian13(BLACKBOX,116)@5
    // out out_feedback_out_30@20000000
    // out out_feedback_valid_out_30@20000000
    gaussian_i_llvm_fpga_push_i32_i_017_pop941_push30_0 thei_llvm_fpga_push_i32_i_017_pop941_push30_gaussian13 (
        .in_data_in(redist37_i_llvm_fpga_pop_i32_i_017_pop941_pop30_gaussian12_out_data_out_1_q),
        .in_feedback_stall_in_30(i_llvm_fpga_pop_i32_i_017_pop941_pop30_gaussian12_out_feedback_stall_out_30),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_30(i_llvm_fpga_push_i32_i_017_pop941_push30_gaussian13_out_feedback_out_30),
        .out_feedback_valid_out_30(i_llvm_fpga_push_i32_i_017_pop941_push30_gaussian13_out_feedback_valid_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together147_aunroll_x_in_c0_eni18_2_tpl_3(DELAY,403)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together147_aunroll_x_in_c0_eni18_2_tpl_3_delay_0 <= '0;
            redist3_sync_together147_aunroll_x_in_c0_eni18_2_tpl_3_q <= '0;
        end
        else
        begin
            redist3_sync_together147_aunroll_x_in_c0_eni18_2_tpl_3_delay_0 <= $unsigned(in_c0_eni18_2_tpl);
            redist3_sync_together147_aunroll_x_in_c0_eni18_2_tpl_3_q <= redist3_sync_together147_aunroll_x_in_c0_eni18_2_tpl_3_delay_0;
        end
    end

    // redist3_sync_together147_aunroll_x_in_c0_eni18_2_tpl_3_outputreg0(DELAY,461)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together147_aunroll_x_in_c0_eni18_2_tpl_3_outputreg0_q <= '0;
        end
        else
        begin
            redist3_sync_together147_aunroll_x_in_c0_eni18_2_tpl_3_outputreg0_q <= $unsigned(redist3_sync_together147_aunroll_x_in_c0_eni18_2_tpl_3_q);
        end
    end

    // i_llvm_fpga_pop_i32_i_017_pop941_pop30_gaussian12(BLACKBOX,99)@4
    // out out_feedback_stall_out_30@20000000
    gaussian_i_llvm_fpga_pop_i32_i_017_pop941_pop30_0 thei_llvm_fpga_pop_i32_i_017_pop941_pop30_gaussian12 (
        .in_data_in(redist3_sync_together147_aunroll_x_in_c0_eni18_2_tpl_3_outputreg0_q),
        .in_dir(redist1_sync_together147_aunroll_x_in_c0_eni18_1_tpl_3_q),
        .in_feedback_in_30(i_llvm_fpga_push_i32_i_017_pop941_push30_gaussian13_out_feedback_out_30),
        .in_feedback_valid_in_30(i_llvm_fpga_push_i32_i_017_pop941_push30_gaussian13_out_feedback_valid_out_30),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_017_pop941_pop30_gaussian12_out_data_out),
        .out_feedback_stall_out_30(i_llvm_fpga_pop_i32_i_017_pop941_pop30_gaussian12_out_feedback_stall_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom_gaussian14_sel_x(BITSELECT,217)@4
    assign i_idxprom_gaussian14_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_i_017_pop941_pop30_gaussian12_out_data_out[31:0]};

    // i_idxprom_gaussian14_vt_select_31(BITSELECT,80)@4
    assign i_idxprom_gaussian14_vt_select_31_b = i_idxprom_gaussian14_sel_x_b[31:0];

    // i_idxprom_gaussian14_vt_join(BITJOIN,79)@4
    assign i_idxprom_gaussian14_vt_join_q = {i_idxprom11_gaussian25_vt_const_63_q, i_idxprom_gaussian14_vt_select_31_b};

    // i_arrayidx122_gaussian0_dupName_0_trunc_sel_x(BITSELECT,169)@4
    assign i_arrayidx122_gaussian0_dupName_0_trunc_sel_x_b = i_idxprom_gaussian14_vt_join_q[10:0];

    // addsumAHighB_uid293_i_arrayidx122_gaussian0_mult_x(ADD,292)@4
    assign addsumAHighB_uid293_i_arrayidx122_gaussian0_mult_x_a = {1'b0, i_arrayidx122_gaussian0_dupName_0_trunc_sel_x_b};
    assign addsumAHighB_uid293_i_arrayidx122_gaussian0_mult_x_b = {3'b000, lowRangeB_uid291_i_arrayidx122_gaussian0_mult_x_merged_bit_select_c};
    assign addsumAHighB_uid293_i_arrayidx122_gaussian0_mult_x_o = $unsigned(addsumAHighB_uid293_i_arrayidx122_gaussian0_mult_x_a) + $unsigned(addsumAHighB_uid293_i_arrayidx122_gaussian0_mult_x_b);
    assign addsumAHighB_uid293_i_arrayidx122_gaussian0_mult_x_q = addsumAHighB_uid293_i_arrayidx122_gaussian0_mult_x_o[11:0];

    // lowRangeB_uid291_i_arrayidx122_gaussian0_mult_x_merged_bit_select(BITSELECT,398)@4
    assign lowRangeB_uid291_i_arrayidx122_gaussian0_mult_x_merged_bit_select_b = i_arrayidx122_gaussian0_dupName_0_trunc_sel_x_b[1:0];
    assign lowRangeB_uid291_i_arrayidx122_gaussian0_mult_x_merged_bit_select_c = i_arrayidx122_gaussian0_dupName_0_trunc_sel_x_b[10:2];

    // add_uid294_i_arrayidx122_gaussian0_mult_x(BITJOIN,293)@4
    assign add_uid294_i_arrayidx122_gaussian0_mult_x_q = {addsumAHighB_uid293_i_arrayidx122_gaussian0_mult_x_q, lowRangeB_uid291_i_arrayidx122_gaussian0_mult_x_merged_bit_select_b};

    // sR_mergedSignalTM_uid299_i_arrayidx122_gaussian0_mult_x(BITJOIN,298)@4
    assign sR_mergedSignalTM_uid299_i_arrayidx122_gaussian0_mult_x_q = {add_uid294_i_arrayidx122_gaussian0_mult_x_q, i_arrayidx122_gaussian0_mult_multconst_x_q};

    // i_arrayidx122_gaussian0_mult_extender_x(BITJOIN,166)@4
    assign i_arrayidx122_gaussian0_mult_extender_x_q = {i_arrayidx122_gaussian0_mult_multconst_x_q, sR_mergedSignalTM_uid299_i_arrayidx122_gaussian0_mult_x_q};

    // i_arrayidx122_gaussian0_dupName_1_trunc_sel_x(BITSELECT,170)@4
    assign i_arrayidx122_gaussian0_dupName_1_trunc_sel_x_b = i_arrayidx122_gaussian0_mult_extender_x_q[10:0];

    // redist31_i_arrayidx122_gaussian0_dupName_1_trunc_sel_x_b_1(DELAY,431)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_i_arrayidx122_gaussian0_dupName_1_trunc_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist31_i_arrayidx122_gaussian0_dupName_1_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx122_gaussian0_dupName_1_trunc_sel_x_b);
        end
    end

    // i_arrayidx122_gaussian0_add_x(ADD,150)@5
    assign i_arrayidx122_gaussian0_add_x_a = {1'b0, i_arrayidx122_gaussian0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx122_gaussian0_add_x_b = {1'b0, redist31_i_arrayidx122_gaussian0_dupName_1_trunc_sel_x_b_1_q};
    assign i_arrayidx122_gaussian0_add_x_o = $unsigned(i_arrayidx122_gaussian0_add_x_a) + $unsigned(i_arrayidx122_gaussian0_add_x_b);
    assign i_arrayidx122_gaussian0_add_x_q = i_arrayidx122_gaussian0_add_x_o[11:0];

    // i_arrayidx122_gaussian0_dupName_2_trunc_sel_x(BITSELECT,171)@5
    assign i_arrayidx122_gaussian0_dupName_2_trunc_sel_x_b = i_arrayidx122_gaussian0_add_x_q[10:0];

    // i_arrayidx122_gaussian0_dupName_0_add_x(ADD,160)@5
    assign i_arrayidx122_gaussian0_dupName_0_add_x_a = {1'b0, i_arrayidx122_gaussian0_dupName_2_trunc_sel_x_b};
    assign i_arrayidx122_gaussian0_dupName_0_add_x_b = {1'b0, i_arrayidx122_gaussian0_shift_join_x_q};
    assign i_arrayidx122_gaussian0_dupName_0_add_x_o = $unsigned(i_arrayidx122_gaussian0_dupName_0_add_x_a) + $unsigned(i_arrayidx122_gaussian0_dupName_0_add_x_b);
    assign i_arrayidx122_gaussian0_dupName_0_add_x_q = i_arrayidx122_gaussian0_dupName_0_add_x_o[11:0];

    // i_arrayidx122_gaussian0_dupName_5_trunc_sel_x(BITSELECT,173)@5
    assign i_arrayidx122_gaussian0_dupName_5_trunc_sel_x_b = i_arrayidx122_gaussian0_dupName_0_add_x_q[10:0];

    // i_arrayidx122_gaussian0_append_upper_bits_x(BITJOIN,151)@5
    assign i_arrayidx122_gaussian0_append_upper_bits_x_q = {i_arrayidx122_gaussian0_upper_bits_x_merged_bit_select_b, i_arrayidx122_gaussian0_dupName_5_trunc_sel_x_b};

    // i_arrayidx122_gaussian26_vt_select_63(BITSELECT,54)@5
    assign i_arrayidx122_gaussian26_vt_select_63_b = i_arrayidx122_gaussian0_append_upper_bits_x_q[63:2];

    // redist59_i_arrayidx122_gaussian26_vt_select_63_b_2(DELAY,459)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist59_i_arrayidx122_gaussian26_vt_select_63_b_2_delay_0 <= '0;
            redist59_i_arrayidx122_gaussian26_vt_select_63_b_2_q <= '0;
        end
        else
        begin
            redist59_i_arrayidx122_gaussian26_vt_select_63_b_2_delay_0 <= $unsigned(i_arrayidx122_gaussian26_vt_select_63_b);
            redist59_i_arrayidx122_gaussian26_vt_select_63_b_2_q <= redist59_i_arrayidx122_gaussian26_vt_select_63_b_2_delay_0;
        end
    end

    // i_arrayidx122_gaussian26_vt_join(BITJOIN,53)@7
    assign i_arrayidx122_gaussian26_vt_join_q = {redist59_i_arrayidx122_gaussian26_vt_select_63_b_2_q, i_arrayidx122_gaussian26_vt_const_1_q};

    // i_llvm_fpga_mem_lm62_gaussian32(BLACKBOX,84)@7
    // in in_i_stall@20000000
    // out out_lm62_gaussian_avm_address@20000000
    // out out_lm62_gaussian_avm_burstcount@20000000
    // out out_lm62_gaussian_avm_byteenable@20000000
    // out out_lm62_gaussian_avm_enable@20000000
    // out out_lm62_gaussian_avm_read@20000000
    // out out_lm62_gaussian_avm_write@20000000
    // out out_lm62_gaussian_avm_writedata@20000000
    // out out_o_readdata@9
    // out out_o_stall@8
    // out out_o_valid@9
    gaussian_i_llvm_fpga_mem_lm62_0 thei_llvm_fpga_mem_lm62_gaussian32 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx122_gaussian26_vt_join_q),
        .in_i_dependence(redist32_i_memdep_phi4_or_gaussian31_q_2_q),
        .in_i_predicate(redist56_i_first_cleanup_xor_or_gaussian22_q_5_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg14_q),
        .in_lm62_gaussian_avm_readdata(in_lm62_gaussian_avm_readdata),
        .in_lm62_gaussian_avm_readdatavalid(in_lm62_gaussian_avm_readdatavalid),
        .in_lm62_gaussian_avm_waitrequest(in_lm62_gaussian_avm_waitrequest),
        .in_lm62_gaussian_avm_writeack(in_lm62_gaussian_avm_writeack),
        .out_lm62_gaussian_avm_address(i_llvm_fpga_mem_lm62_gaussian32_out_lm62_gaussian_avm_address),
        .out_lm62_gaussian_avm_burstcount(i_llvm_fpga_mem_lm62_gaussian32_out_lm62_gaussian_avm_burstcount),
        .out_lm62_gaussian_avm_byteenable(i_llvm_fpga_mem_lm62_gaussian32_out_lm62_gaussian_avm_byteenable),
        .out_lm62_gaussian_avm_enable(i_llvm_fpga_mem_lm62_gaussian32_out_lm62_gaussian_avm_enable),
        .out_lm62_gaussian_avm_read(i_llvm_fpga_mem_lm62_gaussian32_out_lm62_gaussian_avm_read),
        .out_lm62_gaussian_avm_write(i_llvm_fpga_mem_lm62_gaussian32_out_lm62_gaussian_avm_write),
        .out_lm62_gaussian_avm_writedata(i_llvm_fpga_mem_lm62_gaussian32_out_lm62_gaussian_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm62_gaussian32_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_ext_sig_sync_out_x(GPOUT,146)
    assign out_lm62_gaussian_avm_address = i_llvm_fpga_mem_lm62_gaussian32_out_lm62_gaussian_avm_address;
    assign out_lm62_gaussian_avm_enable = i_llvm_fpga_mem_lm62_gaussian32_out_lm62_gaussian_avm_enable;
    assign out_lm62_gaussian_avm_read = i_llvm_fpga_mem_lm62_gaussian32_out_lm62_gaussian_avm_read;
    assign out_lm62_gaussian_avm_write = i_llvm_fpga_mem_lm62_gaussian32_out_lm62_gaussian_avm_write;
    assign out_lm62_gaussian_avm_writedata = i_llvm_fpga_mem_lm62_gaussian32_out_lm62_gaussian_avm_writedata;
    assign out_lm62_gaussian_avm_byteenable = i_llvm_fpga_mem_lm62_gaussian32_out_lm62_gaussian_avm_byteenable;
    assign out_lm62_gaussian_avm_burstcount = i_llvm_fpga_mem_lm62_gaussian32_out_lm62_gaussian_avm_burstcount;

    // valid_fanout_reg16(REG,241)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist22_sync_together147_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg15(REG,240)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist22_sync_together147_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist26_sync_together147_aunroll_x_in_i_valid_7(DELAY,426)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_sync_together147_aunroll_x_in_i_valid_7_q <= '0;
        end
        else
        begin
            redist26_sync_together147_aunroll_x_in_i_valid_7_q <= $unsigned(redist25_sync_together147_aunroll_x_in_i_valid_6_q);
        end
    end

    // redist27_sync_together147_aunroll_x_in_i_valid_8(DELAY,427)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_sync_together147_aunroll_x_in_i_valid_8_q <= '0;
        end
        else
        begin
            redist27_sync_together147_aunroll_x_in_i_valid_8_q <= $unsigned(redist26_sync_together147_aunroll_x_in_i_valid_7_q);
        end
    end

    // valid_fanout_reg18(REG,243)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg18_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(redist27_sync_together147_aunroll_x_in_i_valid_8_q);
        end
    end

    // redist54_i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out_5(DELAY,454)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist54_i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out_5_delay_0 <= '0;
            redist54_i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out_5_delay_1 <= '0;
            redist54_i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out_5_q <= '0;
        end
        else
        begin
            redist54_i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out_5_delay_0 <= $unsigned(redist53_i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out_2_q);
            redist54_i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out_5_delay_1 <= redist54_i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out_5_delay_0;
            redist54_i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out_5_q <= redist54_i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out_5_delay_1;
        end
    end

    // i_mul_gaussian37_bs2_merged_bit_select(BITSELECT,396)@6
    assign i_mul_gaussian37_bs2_merged_bit_select_b = i_llvm_fpga_mem_lm1_gaussian23_out_o_readdata[31:18];
    assign i_mul_gaussian37_bs2_merged_bit_select_c = i_llvm_fpga_mem_lm1_gaussian23_out_o_readdata[17:0];

    // i_mul_gaussian37_bs1_merged_bit_select(BITSELECT,397)@6
    assign i_mul_gaussian37_bs1_merged_bit_select_b = i_llvm_fpga_mem_lm83_gaussian36_out_o_readdata[31:18];
    assign i_mul_gaussian37_bs1_merged_bit_select_c = i_llvm_fpga_mem_lm83_gaussian36_out_o_readdata[17:0];

    // i_mul_gaussian37_ma3_cma(CHAINMULTADD,393)@6 + 3
    assign i_mul_gaussian37_ma3_cma_reset = ~ (resetn);
    assign i_mul_gaussian37_ma3_cma_ena0 = 1'b1;
    assign i_mul_gaussian37_ma3_cma_ena1 = i_mul_gaussian37_ma3_cma_ena0;
    assign i_mul_gaussian37_ma3_cma_ena2 = i_mul_gaussian37_ma3_cma_ena0;

    assign i_mul_gaussian37_ma3_cma_a0 = i_mul_gaussian37_bs1_merged_bit_select_b;
    assign i_mul_gaussian37_ma3_cma_c0 = i_mul_gaussian37_bs2_merged_bit_select_c;
    assign i_mul_gaussian37_ma3_cma_a1 = i_mul_gaussian37_bs2_merged_bit_select_b;
    assign i_mul_gaussian37_ma3_cma_c1 = i_mul_gaussian37_bs1_merged_bit_select_c;
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
    ) i_mul_gaussian37_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_gaussian37_ma3_cma_ena2, i_mul_gaussian37_ma3_cma_ena1, i_mul_gaussian37_ma3_cma_ena0 }),
        .aclr({ i_mul_gaussian37_ma3_cma_reset, i_mul_gaussian37_ma3_cma_reset }),
        .ay(i_mul_gaussian37_ma3_cma_a1),
        .by(i_mul_gaussian37_ma3_cma_a0),
        .ax(i_mul_gaussian37_ma3_cma_c1),
        .bx(i_mul_gaussian37_ma3_cma_c0),
        .resulta(i_mul_gaussian37_ma3_cma_s0),
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
    i_mul_gaussian37_ma3_cma_delay ( .xin(i_mul_gaussian37_ma3_cma_s0), .xout(i_mul_gaussian37_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_gaussian37_ma3_cma_q = $unsigned(i_mul_gaussian37_ma3_cma_qq[32:0]);

    // i_mul_gaussian37_sums_align_1(BITSHIFT,280)@9
    assign i_mul_gaussian37_sums_align_1_qint = { i_mul_gaussian37_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul_gaussian37_sums_align_1_q = i_mul_gaussian37_sums_align_1_qint[50:0];

    // i_mul_gaussian37_im0_cma(CHAINMULTADD,391)@6 + 3
    assign i_mul_gaussian37_im0_cma_reset = ~ (resetn);
    assign i_mul_gaussian37_im0_cma_ena0 = 1'b1;
    assign i_mul_gaussian37_im0_cma_ena1 = i_mul_gaussian37_im0_cma_ena0;
    assign i_mul_gaussian37_im0_cma_ena2 = i_mul_gaussian37_im0_cma_ena0;

    assign i_mul_gaussian37_im0_cma_a0 = i_mul_gaussian37_bs1_merged_bit_select_b;
    assign i_mul_gaussian37_im0_cma_c0 = i_mul_gaussian37_bs2_merged_bit_select_b;
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
    ) i_mul_gaussian37_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_gaussian37_im0_cma_ena2, i_mul_gaussian37_im0_cma_ena1, i_mul_gaussian37_im0_cma_ena0 }),
        .aclr({ i_mul_gaussian37_im0_cma_reset, i_mul_gaussian37_im0_cma_reset }),
        .ay(i_mul_gaussian37_im0_cma_a0),
        .ax(i_mul_gaussian37_im0_cma_c0),
        .resulta(i_mul_gaussian37_im0_cma_s0),
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
    i_mul_gaussian37_im0_cma_delay ( .xin(i_mul_gaussian37_im0_cma_s0), .xout(i_mul_gaussian37_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_gaussian37_im0_cma_q = $unsigned(i_mul_gaussian37_im0_cma_qq[27:0]);

    // i_mul_gaussian37_im8_cma(CHAINMULTADD,392)@6 + 3
    assign i_mul_gaussian37_im8_cma_reset = ~ (resetn);
    assign i_mul_gaussian37_im8_cma_ena0 = 1'b1;
    assign i_mul_gaussian37_im8_cma_ena1 = i_mul_gaussian37_im8_cma_ena0;
    assign i_mul_gaussian37_im8_cma_ena2 = i_mul_gaussian37_im8_cma_ena0;

    assign i_mul_gaussian37_im8_cma_a0 = i_mul_gaussian37_bs1_merged_bit_select_c;
    assign i_mul_gaussian37_im8_cma_c0 = i_mul_gaussian37_bs2_merged_bit_select_c;
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
    ) i_mul_gaussian37_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_gaussian37_im8_cma_ena2, i_mul_gaussian37_im8_cma_ena1, i_mul_gaussian37_im8_cma_ena0 }),
        .aclr({ i_mul_gaussian37_im8_cma_reset, i_mul_gaussian37_im8_cma_reset }),
        .ay(i_mul_gaussian37_im8_cma_a0),
        .ax(i_mul_gaussian37_im8_cma_c0),
        .resulta(i_mul_gaussian37_im8_cma_s0),
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
    i_mul_gaussian37_im8_cma_delay ( .xin(i_mul_gaussian37_im8_cma_s0), .xout(i_mul_gaussian37_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_gaussian37_im8_cma_q = $unsigned(i_mul_gaussian37_im8_cma_qq[35:0]);

    // i_mul_gaussian37_sums_join_0(BITJOIN,279)@9
    assign i_mul_gaussian37_sums_join_0_q = {i_mul_gaussian37_im0_cma_q, i_mul_gaussian37_im8_cma_q};

    // i_mul_gaussian37_sums_result_add_0_0(ADD,282)@9
    assign i_mul_gaussian37_sums_result_add_0_0_a = {1'b0, i_mul_gaussian37_sums_join_0_q};
    assign i_mul_gaussian37_sums_result_add_0_0_b = {14'b00000000000000, i_mul_gaussian37_sums_align_1_q};
    assign i_mul_gaussian37_sums_result_add_0_0_o = $unsigned(i_mul_gaussian37_sums_result_add_0_0_a) + $unsigned(i_mul_gaussian37_sums_result_add_0_0_b);
    assign i_mul_gaussian37_sums_result_add_0_0_q = i_mul_gaussian37_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul_gaussian37_sel_x(BITSELECT,140)@9
    assign bgTrunc_i_mul_gaussian37_sel_x_in = i_mul_gaussian37_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul_gaussian37_sel_x_b = bgTrunc_i_mul_gaussian37_sel_x_in[31:0];

    // i_sub_gaussian38(SUB,130)@9
    assign i_sub_gaussian38_a = {1'b0, i_llvm_fpga_mem_lm62_gaussian32_out_o_readdata};
    assign i_sub_gaussian38_b = {1'b0, bgTrunc_i_mul_gaussian37_sel_x_b};
    assign i_sub_gaussian38_o = $unsigned(i_sub_gaussian38_a) - $unsigned(i_sub_gaussian38_b);
    assign i_sub_gaussian38_q = i_sub_gaussian38_o[32:0];

    // bgTrunc_i_sub_gaussian38_sel_x(BITSELECT,141)@9
    assign bgTrunc_i_sub_gaussian38_sel_x_b = $unsigned(i_sub_gaussian38_q[31:0]);

    // valid_fanout_reg17(REG,242)@8 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg17_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(redist26_sync_together147_aunroll_x_in_i_valid_7_q);
        end
    end

    // redist57_i_first_cleanup_xor_or_gaussian22_q_7(DELAY,457)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist57_i_first_cleanup_xor_or_gaussian22_q_7_delay_0 <= '0;
            redist57_i_first_cleanup_xor_or_gaussian22_q_7_q <= '0;
        end
        else
        begin
            redist57_i_first_cleanup_xor_or_gaussian22_q_7_delay_0 <= $unsigned(redist56_i_first_cleanup_xor_or_gaussian22_q_5_q);
            redist57_i_first_cleanup_xor_or_gaussian22_q_7_q <= redist57_i_first_cleanup_xor_or_gaussian22_q_7_delay_0;
        end
    end

    // redist60_i_arrayidx122_gaussian26_vt_join_q_2(DELAY,460)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist60_i_arrayidx122_gaussian26_vt_join_q_2_delay_0 <= '0;
            redist60_i_arrayidx122_gaussian26_vt_join_q_2_q <= '0;
        end
        else
        begin
            redist60_i_arrayidx122_gaussian26_vt_join_q_2_delay_0 <= $unsigned(i_arrayidx122_gaussian26_vt_join_q);
            redist60_i_arrayidx122_gaussian26_vt_join_q_2_q <= redist60_i_arrayidx122_gaussian26_vt_join_q_2_delay_0;
        end
    end

    // i_llvm_fpga_mem_memdep_gaussian39(BLACKBOX,86)@9
    // out out_memdep_gaussian_avm_address@20000000
    // out out_memdep_gaussian_avm_burstcount@20000000
    // out out_memdep_gaussian_avm_byteenable@20000000
    // out out_memdep_gaussian_avm_enable@20000000
    // out out_memdep_gaussian_avm_read@20000000
    // out out_memdep_gaussian_avm_write@20000000
    // out out_memdep_gaussian_avm_writedata@20000000
    // out out_o_stall@10
    // out out_o_valid@10
    // out out_o_writeack@10
    gaussian_i_llvm_fpga_mem_memdep_0 thei_llvm_fpga_mem_memdep_gaussian39 (
        .in_flush(in_flush),
        .in_i_address(redist60_i_arrayidx122_gaussian26_vt_join_q_2_q),
        .in_i_predicate(redist57_i_first_cleanup_xor_or_gaussian22_q_7_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg17_q),
        .in_i_writedata(bgTrunc_i_sub_gaussian38_sel_x_b),
        .in_memdep_gaussian_avm_readdata(in_memdep_gaussian_avm_readdata),
        .in_memdep_gaussian_avm_readdatavalid(in_memdep_gaussian_avm_readdatavalid),
        .in_memdep_gaussian_avm_waitrequest(in_memdep_gaussian_avm_waitrequest),
        .in_memdep_gaussian_avm_writeack(in_memdep_gaussian_avm_writeack),
        .out_memdep_gaussian_avm_address(i_llvm_fpga_mem_memdep_gaussian39_out_memdep_gaussian_avm_address),
        .out_memdep_gaussian_avm_burstcount(i_llvm_fpga_mem_memdep_gaussian39_out_memdep_gaussian_avm_burstcount),
        .out_memdep_gaussian_avm_byteenable(i_llvm_fpga_mem_memdep_gaussian39_out_memdep_gaussian_avm_byteenable),
        .out_memdep_gaussian_avm_enable(i_llvm_fpga_mem_memdep_gaussian39_out_memdep_gaussian_avm_enable),
        .out_memdep_gaussian_avm_read(i_llvm_fpga_mem_memdep_gaussian39_out_memdep_gaussian_avm_read),
        .out_memdep_gaussian_avm_write(i_llvm_fpga_mem_memdep_gaussian39_out_memdep_gaussian_avm_write),
        .out_memdep_gaussian_avm_writedata(i_llvm_fpga_mem_memdep_gaussian39_out_memdep_gaussian_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(i_llvm_fpga_mem_memdep_gaussian39_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_memdep_phi5_push19_gaussian40(BLACKBOX,106)@10
    // out out_feedback_out_19@20000000
    // out out_feedback_valid_out_19@20000000
    gaussian_i_llvm_fpga_push_i1_memdep_phi5_push19_0 thei_llvm_fpga_push_i1_memdep_phi5_push19_gaussian40 (
        .in_data_in(i_llvm_fpga_mem_memdep_gaussian39_out_o_writeack),
        .in_feedback_stall_in_19(i_llvm_fpga_pop_i1_memdep_phi5_pop19_gaussian34_out_feedback_stall_out_19),
        .in_keep_going(redist54_i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out_5_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_data_out(),
        .out_feedback_out_19(i_llvm_fpga_push_i1_memdep_phi5_push19_gaussian40_out_feedback_out_19),
        .out_feedback_valid_out_19(i_llvm_fpga_push_i1_memdep_phi5_push19_gaussian40_out_feedback_valid_out_19),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi5_pop19_gaussian34(BLACKBOX,90)@5
    // out out_feedback_stall_out_19@20000000
    gaussian_i_llvm_fpga_pop_i1_memdep_phi5_pop19_0 thei_llvm_fpga_pop_i1_memdep_phi5_pop19_gaussian34 (
        .in_data_in(GND_q),
        .in_dir(redist2_sync_together147_aunroll_x_in_c0_eni18_1_tpl_4_q),
        .in_feedback_in_19(i_llvm_fpga_push_i1_memdep_phi5_push19_gaussian40_out_feedback_out_19),
        .in_feedback_valid_in_19(i_llvm_fpga_push_i1_memdep_phi5_push19_gaussian40_out_feedback_valid_out_19),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi5_pop19_gaussian34_out_data_out),
        .out_feedback_stall_out_19(i_llvm_fpga_pop_i1_memdep_phi5_pop19_gaussian34_out_feedback_stall_out_19),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_reduction_gaussian_1_gaussian35(LOGICAL,129)@5
    assign i_reduction_gaussian_1_gaussian35_q = i_llvm_fpga_pop_i1_memdep_phi5_pop19_gaussian34_out_data_out | i_memdep_phi4_or_gaussian31_q;

    // i_arrayidx183_gaussian0_dupName_0_trunc_sel_x(BITSELECT,205)@2
    assign i_arrayidx183_gaussian0_dupName_0_trunc_sel_x_b = i_idxprom13_gaussian20_vt_join_q[10:0];

    // redist30_i_arrayidx183_gaussian0_dupName_0_trunc_sel_x_b_2(DELAY,430)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_arrayidx183_gaussian0_dupName_0_trunc_sel_x_b_2_delay_0 <= '0;
            redist30_i_arrayidx183_gaussian0_dupName_0_trunc_sel_x_b_2_q <= '0;
        end
        else
        begin
            redist30_i_arrayidx183_gaussian0_dupName_0_trunc_sel_x_b_2_delay_0 <= $unsigned(i_arrayidx183_gaussian0_dupName_0_trunc_sel_x_b);
            redist30_i_arrayidx183_gaussian0_dupName_0_trunc_sel_x_b_2_q <= redist30_i_arrayidx183_gaussian0_dupName_0_trunc_sel_x_b_2_delay_0;
        end
    end

    // addsumAHighB_uid339_i_arrayidx183_gaussian0_mult_x(ADD,338)@4
    assign addsumAHighB_uid339_i_arrayidx183_gaussian0_mult_x_a = {1'b0, redist30_i_arrayidx183_gaussian0_dupName_0_trunc_sel_x_b_2_q};
    assign addsumAHighB_uid339_i_arrayidx183_gaussian0_mult_x_b = {3'b000, lowRangeB_uid337_i_arrayidx183_gaussian0_mult_x_merged_bit_select_c};
    assign addsumAHighB_uid339_i_arrayidx183_gaussian0_mult_x_o = $unsigned(addsumAHighB_uid339_i_arrayidx183_gaussian0_mult_x_a) + $unsigned(addsumAHighB_uid339_i_arrayidx183_gaussian0_mult_x_b);
    assign addsumAHighB_uid339_i_arrayidx183_gaussian0_mult_x_q = addsumAHighB_uid339_i_arrayidx183_gaussian0_mult_x_o[11:0];

    // lowRangeB_uid337_i_arrayidx183_gaussian0_mult_x_merged_bit_select(BITSELECT,399)@4
    assign lowRangeB_uid337_i_arrayidx183_gaussian0_mult_x_merged_bit_select_b = redist30_i_arrayidx183_gaussian0_dupName_0_trunc_sel_x_b_2_q[1:0];
    assign lowRangeB_uid337_i_arrayidx183_gaussian0_mult_x_merged_bit_select_c = redist30_i_arrayidx183_gaussian0_dupName_0_trunc_sel_x_b_2_q[10:2];

    // add_uid340_i_arrayidx183_gaussian0_mult_x(BITJOIN,339)@4
    assign add_uid340_i_arrayidx183_gaussian0_mult_x_q = {addsumAHighB_uid339_i_arrayidx183_gaussian0_mult_x_q, lowRangeB_uid337_i_arrayidx183_gaussian0_mult_x_merged_bit_select_b};

    // sR_mergedSignalTM_uid345_i_arrayidx183_gaussian0_mult_x(BITJOIN,344)@4
    assign sR_mergedSignalTM_uid345_i_arrayidx183_gaussian0_mult_x_q = {add_uid340_i_arrayidx183_gaussian0_mult_x_q, i_arrayidx122_gaussian0_mult_multconst_x_q};

    // i_arrayidx183_gaussian0_mult_extender_x(BITJOIN,202)@4
    assign i_arrayidx183_gaussian0_mult_extender_x_q = {i_arrayidx122_gaussian0_mult_multconst_x_q, sR_mergedSignalTM_uid345_i_arrayidx183_gaussian0_mult_x_q};

    // i_arrayidx183_gaussian0_dupName_1_trunc_sel_x(BITSELECT,206)@4
    assign i_arrayidx183_gaussian0_dupName_1_trunc_sel_x_b = i_arrayidx183_gaussian0_mult_extender_x_q[10:0];

    // redist29_i_arrayidx183_gaussian0_dupName_1_trunc_sel_x_b_1(DELAY,429)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_i_arrayidx183_gaussian0_dupName_1_trunc_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist29_i_arrayidx183_gaussian0_dupName_1_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx183_gaussian0_dupName_1_trunc_sel_x_b);
        end
    end

    // i_arrayidx183_gaussian0_add_x(ADD,186)@5
    assign i_arrayidx183_gaussian0_add_x_a = {1'b0, i_arrayidx122_gaussian0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx183_gaussian0_add_x_b = {1'b0, redist29_i_arrayidx183_gaussian0_dupName_1_trunc_sel_x_b_1_q};
    assign i_arrayidx183_gaussian0_add_x_o = $unsigned(i_arrayidx183_gaussian0_add_x_a) + $unsigned(i_arrayidx183_gaussian0_add_x_b);
    assign i_arrayidx183_gaussian0_add_x_q = i_arrayidx183_gaussian0_add_x_o[11:0];

    // i_arrayidx183_gaussian0_dupName_2_trunc_sel_x(BITSELECT,207)@5
    assign i_arrayidx183_gaussian0_dupName_2_trunc_sel_x_b = i_arrayidx183_gaussian0_add_x_q[10:0];

    // i_arrayidx183_gaussian0_dupName_0_add_x(ADD,196)@5
    assign i_arrayidx183_gaussian0_dupName_0_add_x_a = {1'b0, i_arrayidx183_gaussian0_dupName_2_trunc_sel_x_b};
    assign i_arrayidx183_gaussian0_dupName_0_add_x_b = {1'b0, i_arrayidx122_gaussian0_shift_join_x_q};
    assign i_arrayidx183_gaussian0_dupName_0_add_x_o = $unsigned(i_arrayidx183_gaussian0_dupName_0_add_x_a) + $unsigned(i_arrayidx183_gaussian0_dupName_0_add_x_b);
    assign i_arrayidx183_gaussian0_dupName_0_add_x_q = i_arrayidx183_gaussian0_dupName_0_add_x_o[11:0];

    // i_arrayidx183_gaussian0_dupName_5_trunc_sel_x(BITSELECT,209)@5
    assign i_arrayidx183_gaussian0_dupName_5_trunc_sel_x_b = i_arrayidx183_gaussian0_dupName_0_add_x_q[10:0];

    // i_arrayidx183_gaussian0_append_upper_bits_x(BITJOIN,187)@5
    assign i_arrayidx183_gaussian0_append_upper_bits_x_q = {i_arrayidx122_gaussian0_upper_bits_x_merged_bit_select_b, i_arrayidx183_gaussian0_dupName_5_trunc_sel_x_b};

    // i_arrayidx183_gaussian33_vt_select_63(BITSELECT,60)@5
    assign i_arrayidx183_gaussian33_vt_select_63_b = i_arrayidx183_gaussian0_append_upper_bits_x_q[63:2];

    // i_arrayidx183_gaussian33_vt_join(BITJOIN,59)@5
    assign i_arrayidx183_gaussian33_vt_join_q = {i_arrayidx183_gaussian33_vt_select_63_b, i_arrayidx122_gaussian26_vt_const_1_q};

    // i_llvm_fpga_mem_lm83_gaussian36(BLACKBOX,85)@5
    // in in_i_stall@20000000
    // out out_lm83_gaussian_avm_address@20000000
    // out out_lm83_gaussian_avm_burstcount@20000000
    // out out_lm83_gaussian_avm_byteenable@20000000
    // out out_lm83_gaussian_avm_enable@20000000
    // out out_lm83_gaussian_avm_read@20000000
    // out out_lm83_gaussian_avm_write@20000000
    // out out_lm83_gaussian_avm_writedata@20000000
    // out out_o_readdata@6
    // out out_o_stall@6
    // out out_o_valid@6
    gaussian_i_llvm_fpga_mem_lm83_0 thei_llvm_fpga_mem_lm83_gaussian36 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx183_gaussian33_vt_join_q),
        .in_i_dependence(i_reduction_gaussian_1_gaussian35_q),
        .in_i_predicate(redist55_i_first_cleanup_xor_or_gaussian22_q_3_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg16_q),
        .in_lm83_gaussian_avm_readdata(in_lm83_gaussian_avm_readdata),
        .in_lm83_gaussian_avm_readdatavalid(in_lm83_gaussian_avm_readdatavalid),
        .in_lm83_gaussian_avm_waitrequest(in_lm83_gaussian_avm_waitrequest),
        .in_lm83_gaussian_avm_writeack(in_lm83_gaussian_avm_writeack),
        .out_lm83_gaussian_avm_address(i_llvm_fpga_mem_lm83_gaussian36_out_lm83_gaussian_avm_address),
        .out_lm83_gaussian_avm_burstcount(i_llvm_fpga_mem_lm83_gaussian36_out_lm83_gaussian_avm_burstcount),
        .out_lm83_gaussian_avm_byteenable(i_llvm_fpga_mem_lm83_gaussian36_out_lm83_gaussian_avm_byteenable),
        .out_lm83_gaussian_avm_enable(i_llvm_fpga_mem_lm83_gaussian36_out_lm83_gaussian_avm_enable),
        .out_lm83_gaussian_avm_read(i_llvm_fpga_mem_lm83_gaussian36_out_lm83_gaussian_avm_read),
        .out_lm83_gaussian_avm_write(i_llvm_fpga_mem_lm83_gaussian36_out_lm83_gaussian_avm_write),
        .out_lm83_gaussian_avm_writedata(i_llvm_fpga_mem_lm83_gaussian36_out_lm83_gaussian_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm83_gaussian36_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_ext_sig_sync_out_x(GPOUT,148)
    assign out_lm83_gaussian_avm_address = i_llvm_fpga_mem_lm83_gaussian36_out_lm83_gaussian_avm_address;
    assign out_lm83_gaussian_avm_enable = i_llvm_fpga_mem_lm83_gaussian36_out_lm83_gaussian_avm_enable;
    assign out_lm83_gaussian_avm_read = i_llvm_fpga_mem_lm83_gaussian36_out_lm83_gaussian_avm_read;
    assign out_lm83_gaussian_avm_write = i_llvm_fpga_mem_lm83_gaussian36_out_lm83_gaussian_avm_write;
    assign out_lm83_gaussian_avm_writedata = i_llvm_fpga_mem_lm83_gaussian36_out_lm83_gaussian_avm_writedata;
    assign out_lm83_gaussian_avm_byteenable = i_llvm_fpga_mem_lm83_gaussian36_out_lm83_gaussian_avm_byteenable;
    assign out_lm83_gaussian_avm_burstcount = i_llvm_fpga_mem_lm83_gaussian36_out_lm83_gaussian_avm_burstcount;

    // dupName_3_ext_sig_sync_out_x(GPOUT,149)
    assign out_memdep_gaussian_avm_address = i_llvm_fpga_mem_memdep_gaussian39_out_memdep_gaussian_avm_address;
    assign out_memdep_gaussian_avm_enable = i_llvm_fpga_mem_memdep_gaussian39_out_memdep_gaussian_avm_enable;
    assign out_memdep_gaussian_avm_read = i_llvm_fpga_mem_memdep_gaussian39_out_memdep_gaussian_avm_read;
    assign out_memdep_gaussian_avm_write = i_llvm_fpga_mem_memdep_gaussian39_out_memdep_gaussian_avm_write;
    assign out_memdep_gaussian_avm_writedata = i_llvm_fpga_mem_memdep_gaussian39_out_memdep_gaussian_avm_writedata;
    assign out_memdep_gaussian_avm_byteenable = i_llvm_fpga_mem_memdep_gaussian39_out_memdep_gaussian_avm_byteenable;
    assign out_memdep_gaussian_avm_burstcount = i_llvm_fpga_mem_memdep_gaussian39_out_memdep_gaussian_avm_burstcount;

    // valid_fanout_reg0(REG,225)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist27_sync_together147_aunroll_x_in_i_valid_8_q);
        end
    end

    // redist19_sync_together147_aunroll_x_in_c0_eni18_18_tpl_9(DELAY,419)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist19_sync_together147_aunroll_x_in_c0_eni18_18_tpl_9 ( .xin(in_c0_eni18_18_tpl), .xout(redist19_sync_together147_aunroll_x_in_c0_eni18_18_tpl_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_notEnable(LOGICAL,508)
    assign redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_notEnable_q = $unsigned(~ (VCC_q));

    // redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_nor(LOGICAL,509)
    assign redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_nor_q = ~ (redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_notEnable_q | redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_sticky_ena_q);

    // redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_mem_last(CONSTANT,505)
    assign redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_mem_last_q = $unsigned(4'b0110);

    // redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_cmp(LOGICAL,506)
    assign redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_cmp_b = {1'b0, redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_rdcnt_q};
    assign redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_cmp_q = $unsigned(redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_mem_last_q == redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_cmp_b ? 1'b1 : 1'b0);

    // redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_cmpReg(REG,507)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_cmpReg_q <= $unsigned(redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_cmp_q);
        end
    end

    // redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_sticky_ena(REG,510)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_nor_q == 1'b1)
        begin
            redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_sticky_ena_q <= $unsigned(redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_cmpReg_q);
        end
    end

    // redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_enaAnd(LOGICAL,511)
    assign redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_enaAnd_q = redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_sticky_ena_q & VCC_q;

    // redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_rdcnt(COUNTER,503)
    // low=0, high=7, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_rdcnt_i <= 3'd0;
        end
        else
        begin
            redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_rdcnt_i <= $unsigned(redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_rdcnt_i) + $unsigned(3'd1);
        end
    end
    assign redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_rdcnt_q = redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_rdcnt_i[2:0];

    // redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_wraddr(REG,504)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_wraddr_q <= $unsigned(3'b111);
        end
        else
        begin
            redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_wraddr_q <= $unsigned(redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_rdcnt_q);
        end
    end

    // redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_mem(DUALMEM,502)
    assign redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_mem_ia = $unsigned(in_c0_eni18_17_tpl);
    assign redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_mem_aa = redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_wraddr_q;
    assign redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_mem_ab = redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_rdcnt_q;
    assign redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_mem_reset0 = ~ (resetn);
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
    ) redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_mem_dmem (
        .clocken1(redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_mem_reset0),
        .clock1(clock),
        .address_a(redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_mem_aa),
        .data_a(redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_mem_ab),
        .q_b(redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_mem_iq),
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
    assign redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_mem_q = redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_mem_iq[31:0];

    // redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_notEnable(LOGICAL,498)
    assign redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_notEnable_q = $unsigned(~ (VCC_q));

    // redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_nor(LOGICAL,499)
    assign redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_nor_q = ~ (redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_notEnable_q | redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_sticky_ena_q);

    // redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_mem_last(CONSTANT,495)
    assign redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_mem_last_q = $unsigned(4'b0110);

    // redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_cmp(LOGICAL,496)
    assign redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_cmp_b = {1'b0, redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_rdcnt_q};
    assign redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_cmp_q = $unsigned(redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_mem_last_q == redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_cmp_b ? 1'b1 : 1'b0);

    // redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_cmpReg(REG,497)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_cmpReg_q <= $unsigned(redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_cmp_q);
        end
    end

    // redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_sticky_ena(REG,500)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_nor_q == 1'b1)
        begin
            redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_sticky_ena_q <= $unsigned(redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_cmpReg_q);
        end
    end

    // redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_enaAnd(LOGICAL,501)
    assign redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_enaAnd_q = redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_sticky_ena_q & VCC_q;

    // redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_rdcnt(COUNTER,493)
    // low=0, high=7, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_rdcnt_i <= 3'd0;
        end
        else
        begin
            redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_rdcnt_i <= $unsigned(redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_rdcnt_i) + $unsigned(3'd1);
        end
    end
    assign redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_rdcnt_q = redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_rdcnt_i[2:0];

    // redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_wraddr(REG,494)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_wraddr_q <= $unsigned(3'b111);
        end
        else
        begin
            redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_wraddr_q <= $unsigned(redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_rdcnt_q);
        end
    end

    // redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_mem(DUALMEM,492)
    assign redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_mem_ia = $unsigned(in_c0_eni18_16_tpl);
    assign redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_mem_aa = redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_wraddr_q;
    assign redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_mem_ab = redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_rdcnt_q;
    assign redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(33),
        .widthad_a(3),
        .numwords_a(8),
        .width_b(33),
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
    ) redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_mem_dmem (
        .clocken1(redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_mem_reset0),
        .clock1(clock),
        .address_a(redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_mem_aa),
        .data_a(redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_mem_ab),
        .q_b(redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_mem_iq),
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
    assign redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_mem_q = redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_mem_iq[32:0];

    // redist16_sync_together147_aunroll_x_in_c0_eni18_15_tpl_9(DELAY,416)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist16_sync_together147_aunroll_x_in_c0_eni18_15_tpl_9 ( .xin(in_c0_eni18_15_tpl), .xout(redist16_sync_together147_aunroll_x_in_c0_eni18_15_tpl_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_notEnable(LOGICAL,488)
    assign redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_notEnable_q = $unsigned(~ (VCC_q));

    // redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_nor(LOGICAL,489)
    assign redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_nor_q = ~ (redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_notEnable_q | redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_sticky_ena_q);

    // redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_mem_last(CONSTANT,485)
    assign redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_mem_last_q = $unsigned(4'b0110);

    // redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_cmp(LOGICAL,486)
    assign redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_cmp_b = {1'b0, redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_rdcnt_q};
    assign redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_cmp_q = $unsigned(redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_mem_last_q == redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_cmp_b ? 1'b1 : 1'b0);

    // redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_cmpReg(REG,487)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_cmpReg_q <= $unsigned(redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_cmp_q);
        end
    end

    // redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_sticky_ena(REG,490)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_nor_q == 1'b1)
        begin
            redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_sticky_ena_q <= $unsigned(redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_cmpReg_q);
        end
    end

    // redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_enaAnd(LOGICAL,491)
    assign redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_enaAnd_q = redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_sticky_ena_q & VCC_q;

    // redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_rdcnt(COUNTER,483)
    // low=0, high=7, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_rdcnt_i <= 3'd0;
        end
        else
        begin
            redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_rdcnt_i <= $unsigned(redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_rdcnt_i) + $unsigned(3'd1);
        end
    end
    assign redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_rdcnt_q = redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_rdcnt_i[2:0];

    // redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_wraddr(REG,484)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_wraddr_q <= $unsigned(3'b111);
        end
        else
        begin
            redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_wraddr_q <= $unsigned(redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_rdcnt_q);
        end
    end

    // redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_mem(DUALMEM,482)
    assign redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_mem_ia = $unsigned(in_c0_eni18_14_tpl);
    assign redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_mem_aa = redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_wraddr_q;
    assign redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_mem_ab = redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_rdcnt_q;
    assign redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_mem_reset0 = ~ (resetn);
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
    ) redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_mem_dmem (
        .clocken1(redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_mem_reset0),
        .clock1(clock),
        .address_a(redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_mem_aa),
        .data_a(redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_mem_ab),
        .q_b(redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_mem_iq),
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
    assign redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_mem_q = redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_mem_iq[31:0];

    // redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_notEnable(LOGICAL,478)
    assign redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_notEnable_q = $unsigned(~ (VCC_q));

    // redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_nor(LOGICAL,479)
    assign redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_nor_q = ~ (redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_notEnable_q | redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_sticky_ena_q);

    // redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_mem_last(CONSTANT,475)
    assign redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_mem_last_q = $unsigned(4'b0110);

    // redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_cmp(LOGICAL,476)
    assign redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_cmp_b = {1'b0, redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_rdcnt_q};
    assign redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_cmp_q = $unsigned(redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_mem_last_q == redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_cmp_b ? 1'b1 : 1'b0);

    // redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_cmpReg(REG,477)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_cmpReg_q <= $unsigned(redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_cmp_q);
        end
    end

    // redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_sticky_ena(REG,480)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_nor_q == 1'b1)
        begin
            redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_sticky_ena_q <= $unsigned(redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_cmpReg_q);
        end
    end

    // redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_enaAnd(LOGICAL,481)
    assign redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_enaAnd_q = redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_sticky_ena_q & VCC_q;

    // redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_rdcnt(COUNTER,473)
    // low=0, high=7, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_rdcnt_i <= 3'd0;
        end
        else
        begin
            redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_rdcnt_i <= $unsigned(redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_rdcnt_i) + $unsigned(3'd1);
        end
    end
    assign redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_rdcnt_q = redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_rdcnt_i[2:0];

    // redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_wraddr(REG,474)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_wraddr_q <= $unsigned(3'b111);
        end
        else
        begin
            redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_wraddr_q <= $unsigned(redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_rdcnt_q);
        end
    end

    // redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_mem(DUALMEM,472)
    assign redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_mem_ia = $unsigned(in_c0_eni18_13_tpl);
    assign redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_mem_aa = redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_wraddr_q;
    assign redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_mem_ab = redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_rdcnt_q;
    assign redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_mem_reset0 = ~ (resetn);
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
    ) redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_mem_dmem (
        .clocken1(redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_mem_reset0),
        .clock1(clock),
        .address_a(redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_mem_aa),
        .data_a(redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_mem_ab),
        .q_b(redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_mem_iq),
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
    assign redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_mem_q = redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_mem_iq[31:0];

    // redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_notEnable(LOGICAL,468)
    assign redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_notEnable_q = $unsigned(~ (VCC_q));

    // redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_nor(LOGICAL,469)
    assign redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_nor_q = ~ (redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_notEnable_q | redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_sticky_ena_q);

    // redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_mem_last(CONSTANT,465)
    assign redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_mem_last_q = $unsigned(4'b0110);

    // redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_cmp(LOGICAL,466)
    assign redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_cmp_b = {1'b0, redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_rdcnt_q};
    assign redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_cmp_q = $unsigned(redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_mem_last_q == redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_cmp_b ? 1'b1 : 1'b0);

    // redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_cmpReg(REG,467)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_cmpReg_q <= $unsigned(redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_cmp_q);
        end
    end

    // redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_sticky_ena(REG,470)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_nor_q == 1'b1)
        begin
            redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_sticky_ena_q <= $unsigned(redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_cmpReg_q);
        end
    end

    // redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_enaAnd(LOGICAL,471)
    assign redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_enaAnd_q = redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_sticky_ena_q & VCC_q;

    // redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_rdcnt(COUNTER,463)
    // low=0, high=7, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_rdcnt_i <= 3'd0;
        end
        else
        begin
            redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_rdcnt_i <= $unsigned(redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_rdcnt_i) + $unsigned(3'd1);
        end
    end
    assign redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_rdcnt_q = redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_rdcnt_i[2:0];

    // redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_wraddr(REG,464)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_wraddr_q <= $unsigned(3'b111);
        end
        else
        begin
            redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_wraddr_q <= $unsigned(redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_rdcnt_q);
        end
    end

    // redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_mem(DUALMEM,462)
    assign redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_mem_ia = $unsigned(in_c0_eni18_12_tpl);
    assign redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_mem_aa = redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_wraddr_q;
    assign redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_mem_ab = redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_rdcnt_q;
    assign redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_mem_reset0 = ~ (resetn);
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
    ) redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_mem_dmem (
        .clocken1(redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_mem_reset0),
        .clock1(clock),
        .address_a(redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_mem_aa),
        .data_a(redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_mem_ab),
        .q_b(redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_mem_iq),
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
    assign redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_mem_q = redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_mem_iq[31:0];

    // valid_fanout_reg28(REG,253)@1 + 1
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

    // valid_fanout_reg29(REG,254)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg29_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg29_q <= $unsigned(redist22_sync_together147_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp1740_push29_gaussian64(BLACKBOX,108)@5
    // out out_feedback_out_29@20000000
    // out out_feedback_valid_out_29@20000000
    gaussian_i_llvm_fpga_push_i1_notcmp1740_push29_0 thei_llvm_fpga_push_i1_notcmp1740_push29_gaussian64 (
        .in_data_in(redist46_i_llvm_fpga_pop_i1_notcmp1740_pop29_gaussian63_out_data_out_3_q),
        .in_feedback_stall_in_29(i_llvm_fpga_pop_i1_notcmp1740_pop29_gaussian63_out_feedback_stall_out_29),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg29_q),
        .out_data_out(),
        .out_feedback_out_29(i_llvm_fpga_push_i1_notcmp1740_push29_gaussian64_out_feedback_out_29),
        .out_feedback_valid_out_29(i_llvm_fpga_push_i1_notcmp1740_push29_gaussian64_out_feedback_valid_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist12_sync_together147_aunroll_x_in_c0_eni18_11_tpl_1(DELAY,412)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together147_aunroll_x_in_c0_eni18_11_tpl_1_q <= '0;
        end
        else
        begin
            redist12_sync_together147_aunroll_x_in_c0_eni18_11_tpl_1_q <= $unsigned(in_c0_eni18_11_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp1740_pop29_gaussian63(BLACKBOX,92)@2
    // out out_feedback_stall_out_29@20000000
    gaussian_i_llvm_fpga_pop_i1_notcmp1740_pop29_0 thei_llvm_fpga_pop_i1_notcmp1740_pop29_gaussian63 (
        .in_data_in(redist12_sync_together147_aunroll_x_in_c0_eni18_11_tpl_1_q),
        .in_dir(redist0_sync_together147_aunroll_x_in_c0_eni18_1_tpl_1_q),
        .in_feedback_in_29(i_llvm_fpga_push_i1_notcmp1740_push29_gaussian64_out_feedback_out_29),
        .in_feedback_valid_in_29(i_llvm_fpga_push_i1_notcmp1740_push29_gaussian64_out_feedback_valid_out_29),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg28_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp1740_pop29_gaussian63_out_data_out),
        .out_feedback_stall_out_29(i_llvm_fpga_pop_i1_notcmp1740_pop29_gaussian63_out_feedback_stall_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist46_i_llvm_fpga_pop_i1_notcmp1740_pop29_gaussian63_out_data_out_3(DELAY,446)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_i_llvm_fpga_pop_i1_notcmp1740_pop29_gaussian63_out_data_out_3_delay_0 <= '0;
            redist46_i_llvm_fpga_pop_i1_notcmp1740_pop29_gaussian63_out_data_out_3_delay_1 <= '0;
            redist46_i_llvm_fpga_pop_i1_notcmp1740_pop29_gaussian63_out_data_out_3_q <= '0;
        end
        else
        begin
            redist46_i_llvm_fpga_pop_i1_notcmp1740_pop29_gaussian63_out_data_out_3_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_notcmp1740_pop29_gaussian63_out_data_out);
            redist46_i_llvm_fpga_pop_i1_notcmp1740_pop29_gaussian63_out_data_out_3_delay_1 <= redist46_i_llvm_fpga_pop_i1_notcmp1740_pop29_gaussian63_out_data_out_3_delay_0;
            redist46_i_llvm_fpga_pop_i1_notcmp1740_pop29_gaussian63_out_data_out_3_q <= redist46_i_llvm_fpga_pop_i1_notcmp1740_pop29_gaussian63_out_data_out_3_delay_1;
        end
    end

    // redist47_i_llvm_fpga_pop_i1_notcmp1740_pop29_gaussian63_out_data_out_8(DELAY,447)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist47_i_llvm_fpga_pop_i1_notcmp1740_pop29_gaussian63_out_data_out_8_delay_0 <= '0;
            redist47_i_llvm_fpga_pop_i1_notcmp1740_pop29_gaussian63_out_data_out_8_delay_1 <= '0;
            redist47_i_llvm_fpga_pop_i1_notcmp1740_pop29_gaussian63_out_data_out_8_delay_2 <= '0;
            redist47_i_llvm_fpga_pop_i1_notcmp1740_pop29_gaussian63_out_data_out_8_delay_3 <= '0;
            redist47_i_llvm_fpga_pop_i1_notcmp1740_pop29_gaussian63_out_data_out_8_q <= '0;
        end
        else
        begin
            redist47_i_llvm_fpga_pop_i1_notcmp1740_pop29_gaussian63_out_data_out_8_delay_0 <= $unsigned(redist46_i_llvm_fpga_pop_i1_notcmp1740_pop29_gaussian63_out_data_out_3_q);
            redist47_i_llvm_fpga_pop_i1_notcmp1740_pop29_gaussian63_out_data_out_8_delay_1 <= redist47_i_llvm_fpga_pop_i1_notcmp1740_pop29_gaussian63_out_data_out_8_delay_0;
            redist47_i_llvm_fpga_pop_i1_notcmp1740_pop29_gaussian63_out_data_out_8_delay_2 <= redist47_i_llvm_fpga_pop_i1_notcmp1740_pop29_gaussian63_out_data_out_8_delay_1;
            redist47_i_llvm_fpga_pop_i1_notcmp1740_pop29_gaussian63_out_data_out_8_delay_3 <= redist47_i_llvm_fpga_pop_i1_notcmp1740_pop29_gaussian63_out_data_out_8_delay_2;
            redist47_i_llvm_fpga_pop_i1_notcmp1740_pop29_gaussian63_out_data_out_8_q <= redist47_i_llvm_fpga_pop_i1_notcmp1740_pop29_gaussian63_out_data_out_8_delay_3;
        end
    end

    // valid_fanout_reg26(REG,251)@1 + 1
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

    // valid_fanout_reg27(REG,252)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg27_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg27_q <= $unsigned(redist22_sync_together147_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_push28_gaussian62(BLACKBOX,110)@5
    // out out_feedback_out_28@20000000
    // out out_feedback_valid_out_28@20000000
    gaussian_i_llvm_fpga_push_i1_push28_0 thei_llvm_fpga_push_i1_push28_gaussian62 (
        .in_data_in(redist44_i_llvm_fpga_pop_i1_pop28_gaussian61_out_data_out_3_q),
        .in_feedback_stall_in_28(i_llvm_fpga_pop_i1_pop28_gaussian61_out_feedback_stall_out_28),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg27_q),
        .out_data_out(),
        .out_feedback_out_28(i_llvm_fpga_push_i1_push28_gaussian62_out_feedback_out_28),
        .out_feedback_valid_out_28(i_llvm_fpga_push_i1_push28_gaussian62_out_feedback_valid_out_28),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist11_sync_together147_aunroll_x_in_c0_eni18_10_tpl_1(DELAY,411)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together147_aunroll_x_in_c0_eni18_10_tpl_1_q <= '0;
        end
        else
        begin
            redist11_sync_together147_aunroll_x_in_c0_eni18_10_tpl_1_q <= $unsigned(in_c0_eni18_10_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_pop28_gaussian61(BLACKBOX,93)@2
    // out out_feedback_stall_out_28@20000000
    gaussian_i_llvm_fpga_pop_i1_pop28_0 thei_llvm_fpga_pop_i1_pop28_gaussian61 (
        .in_data_in(redist11_sync_together147_aunroll_x_in_c0_eni18_10_tpl_1_q),
        .in_dir(redist0_sync_together147_aunroll_x_in_c0_eni18_1_tpl_1_q),
        .in_feedback_in_28(i_llvm_fpga_push_i1_push28_gaussian62_out_feedback_out_28),
        .in_feedback_valid_in_28(i_llvm_fpga_push_i1_push28_gaussian62_out_feedback_valid_out_28),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg26_q),
        .out_data_out(i_llvm_fpga_pop_i1_pop28_gaussian61_out_data_out),
        .out_feedback_stall_out_28(i_llvm_fpga_pop_i1_pop28_gaussian61_out_feedback_stall_out_28),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist44_i_llvm_fpga_pop_i1_pop28_gaussian61_out_data_out_3(DELAY,444)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_i_llvm_fpga_pop_i1_pop28_gaussian61_out_data_out_3_delay_0 <= '0;
            redist44_i_llvm_fpga_pop_i1_pop28_gaussian61_out_data_out_3_delay_1 <= '0;
            redist44_i_llvm_fpga_pop_i1_pop28_gaussian61_out_data_out_3_q <= '0;
        end
        else
        begin
            redist44_i_llvm_fpga_pop_i1_pop28_gaussian61_out_data_out_3_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_pop28_gaussian61_out_data_out);
            redist44_i_llvm_fpga_pop_i1_pop28_gaussian61_out_data_out_3_delay_1 <= redist44_i_llvm_fpga_pop_i1_pop28_gaussian61_out_data_out_3_delay_0;
            redist44_i_llvm_fpga_pop_i1_pop28_gaussian61_out_data_out_3_q <= redist44_i_llvm_fpga_pop_i1_pop28_gaussian61_out_data_out_3_delay_1;
        end
    end

    // redist45_i_llvm_fpga_pop_i1_pop28_gaussian61_out_data_out_8(DELAY,445)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_i_llvm_fpga_pop_i1_pop28_gaussian61_out_data_out_8_delay_0 <= '0;
            redist45_i_llvm_fpga_pop_i1_pop28_gaussian61_out_data_out_8_delay_1 <= '0;
            redist45_i_llvm_fpga_pop_i1_pop28_gaussian61_out_data_out_8_delay_2 <= '0;
            redist45_i_llvm_fpga_pop_i1_pop28_gaussian61_out_data_out_8_delay_3 <= '0;
            redist45_i_llvm_fpga_pop_i1_pop28_gaussian61_out_data_out_8_q <= '0;
        end
        else
        begin
            redist45_i_llvm_fpga_pop_i1_pop28_gaussian61_out_data_out_8_delay_0 <= $unsigned(redist44_i_llvm_fpga_pop_i1_pop28_gaussian61_out_data_out_3_q);
            redist45_i_llvm_fpga_pop_i1_pop28_gaussian61_out_data_out_8_delay_1 <= redist45_i_llvm_fpga_pop_i1_pop28_gaussian61_out_data_out_8_delay_0;
            redist45_i_llvm_fpga_pop_i1_pop28_gaussian61_out_data_out_8_delay_2 <= redist45_i_llvm_fpga_pop_i1_pop28_gaussian61_out_data_out_8_delay_1;
            redist45_i_llvm_fpga_pop_i1_pop28_gaussian61_out_data_out_8_delay_3 <= redist45_i_llvm_fpga_pop_i1_pop28_gaussian61_out_data_out_8_delay_2;
            redist45_i_llvm_fpga_pop_i1_pop28_gaussian61_out_data_out_8_q <= redist45_i_llvm_fpga_pop_i1_pop28_gaussian61_out_data_out_8_delay_3;
        end
    end

    // redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_notEnable(LOGICAL,519)
    assign redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_nor(LOGICAL,520)
    assign redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_nor_q = ~ (redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_notEnable_q | redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_sticky_ena_q);

    // redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_mem_last(CONSTANT,516)
    assign redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_mem_last_q = $unsigned(2'b01);

    // redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_cmp(LOGICAL,517)
    assign redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_cmp_q = $unsigned(redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_mem_last_q == redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_rdcnt_q ? 1'b1 : 1'b0);

    // redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_cmpReg(REG,518)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_cmpReg_q <= $unsigned(redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_cmp_q);
        end
    end

    // redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_sticky_ena(REG,521)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_nor_q == 1'b1)
        begin
            redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_sticky_ena_q <= $unsigned(redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_cmpReg_q);
        end
    end

    // redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_enaAnd(LOGICAL,522)
    assign redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_enaAnd_q = redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_sticky_ena_q & VCC_q;

    // redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_rdcnt(COUNTER,514)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_rdcnt_i <= 2'd0;
            redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_rdcnt_i == 2'd1)
            begin
                redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_rdcnt_eq <= 1'b0;
            end
            if (redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_rdcnt_eq == 1'b1)
            begin
                redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_rdcnt_i <= $unsigned(redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_rdcnt_i <= $unsigned(redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_rdcnt_q = redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_rdcnt_i[1:0];

    // valid_fanout_reg25(REG,250)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg25_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg25_q <= $unsigned(redist22_sync_together147_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg24(REG,249)@1 + 1
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

    // redist10_sync_together147_aunroll_x_in_c0_eni18_9_tpl_1(DELAY,410)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together147_aunroll_x_in_c0_eni18_9_tpl_1_q <= '0;
        end
        else
        begin
            redist10_sync_together147_aunroll_x_in_c0_eni18_9_tpl_1_q <= $unsigned(in_c0_eni18_9_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_add37_pop26_gaussian59(BLACKBOX,96)@2
    // out out_feedback_stall_out_26@20000000
    gaussian_i_llvm_fpga_pop_i32_add37_pop26_0 thei_llvm_fpga_pop_i32_add37_pop26_gaussian59 (
        .in_data_in(redist10_sync_together147_aunroll_x_in_c0_eni18_9_tpl_1_q),
        .in_dir(redist0_sync_together147_aunroll_x_in_c0_eni18_1_tpl_1_q),
        .in_feedback_in_26(i_llvm_fpga_push_i32_add37_push26_gaussian60_out_feedback_out_26),
        .in_feedback_valid_in_26(i_llvm_fpga_push_i32_add37_push26_gaussian60_out_feedback_valid_out_26),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg24_q),
        .out_data_out(i_llvm_fpga_pop_i32_add37_pop26_gaussian59_out_data_out),
        .out_feedback_stall_out_26(i_llvm_fpga_pop_i32_add37_pop26_gaussian59_out_feedback_stall_out_26),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist42_i_llvm_fpga_pop_i32_add37_pop26_gaussian59_out_data_out_3_notEnable(LOGICAL,557)
    assign redist42_i_llvm_fpga_pop_i32_add37_pop26_gaussian59_out_data_out_3_notEnable_q = $unsigned(~ (VCC_q));

    // redist42_i_llvm_fpga_pop_i32_add37_pop26_gaussian59_out_data_out_3_nor(LOGICAL,558)
    assign redist42_i_llvm_fpga_pop_i32_add37_pop26_gaussian59_out_data_out_3_nor_q = ~ (redist42_i_llvm_fpga_pop_i32_add37_pop26_gaussian59_out_data_out_3_notEnable_q | redist42_i_llvm_fpga_pop_i32_add37_pop26_gaussian59_out_data_out_3_sticky_ena_q);

    // redist42_i_llvm_fpga_pop_i32_add37_pop26_gaussian59_out_data_out_3_cmpReg(REG,556)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_i_llvm_fpga_pop_i32_add37_pop26_gaussian59_out_data_out_3_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist42_i_llvm_fpga_pop_i32_add37_pop26_gaussian59_out_data_out_3_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist42_i_llvm_fpga_pop_i32_add37_pop26_gaussian59_out_data_out_3_sticky_ena(REG,559)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_i_llvm_fpga_pop_i32_add37_pop26_gaussian59_out_data_out_3_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist42_i_llvm_fpga_pop_i32_add37_pop26_gaussian59_out_data_out_3_nor_q == 1'b1)
        begin
            redist42_i_llvm_fpga_pop_i32_add37_pop26_gaussian59_out_data_out_3_sticky_ena_q <= $unsigned(redist42_i_llvm_fpga_pop_i32_add37_pop26_gaussian59_out_data_out_3_cmpReg_q);
        end
    end

    // redist42_i_llvm_fpga_pop_i32_add37_pop26_gaussian59_out_data_out_3_enaAnd(LOGICAL,560)
    assign redist42_i_llvm_fpga_pop_i32_add37_pop26_gaussian59_out_data_out_3_enaAnd_q = redist42_i_llvm_fpga_pop_i32_add37_pop26_gaussian59_out_data_out_3_sticky_ena_q & VCC_q;

    // redist42_i_llvm_fpga_pop_i32_add37_pop26_gaussian59_out_data_out_3_rdcnt(COUNTER,554)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_i_llvm_fpga_pop_i32_add37_pop26_gaussian59_out_data_out_3_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist42_i_llvm_fpga_pop_i32_add37_pop26_gaussian59_out_data_out_3_rdcnt_i <= $unsigned(redist42_i_llvm_fpga_pop_i32_add37_pop26_gaussian59_out_data_out_3_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist42_i_llvm_fpga_pop_i32_add37_pop26_gaussian59_out_data_out_3_rdcnt_q = redist42_i_llvm_fpga_pop_i32_add37_pop26_gaussian59_out_data_out_3_rdcnt_i[0:0];

    // redist42_i_llvm_fpga_pop_i32_add37_pop26_gaussian59_out_data_out_3_wraddr(REG,555)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_i_llvm_fpga_pop_i32_add37_pop26_gaussian59_out_data_out_3_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist42_i_llvm_fpga_pop_i32_add37_pop26_gaussian59_out_data_out_3_wraddr_q <= $unsigned(redist42_i_llvm_fpga_pop_i32_add37_pop26_gaussian59_out_data_out_3_rdcnt_q);
        end
    end

    // redist42_i_llvm_fpga_pop_i32_add37_pop26_gaussian59_out_data_out_3_mem(DUALMEM,553)
    assign redist42_i_llvm_fpga_pop_i32_add37_pop26_gaussian59_out_data_out_3_mem_ia = $unsigned(i_llvm_fpga_pop_i32_add37_pop26_gaussian59_out_data_out);
    assign redist42_i_llvm_fpga_pop_i32_add37_pop26_gaussian59_out_data_out_3_mem_aa = redist42_i_llvm_fpga_pop_i32_add37_pop26_gaussian59_out_data_out_3_wraddr_q;
    assign redist42_i_llvm_fpga_pop_i32_add37_pop26_gaussian59_out_data_out_3_mem_ab = redist42_i_llvm_fpga_pop_i32_add37_pop26_gaussian59_out_data_out_3_rdcnt_q;
    assign redist42_i_llvm_fpga_pop_i32_add37_pop26_gaussian59_out_data_out_3_mem_reset0 = ~ (resetn);
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
        .intended_device_family("Arria 10")
    ) redist42_i_llvm_fpga_pop_i32_add37_pop26_gaussian59_out_data_out_3_mem_dmem (
        .clocken1(redist42_i_llvm_fpga_pop_i32_add37_pop26_gaussian59_out_data_out_3_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist42_i_llvm_fpga_pop_i32_add37_pop26_gaussian59_out_data_out_3_mem_reset0),
        .clock1(clock),
        .address_a(redist42_i_llvm_fpga_pop_i32_add37_pop26_gaussian59_out_data_out_3_mem_aa),
        .data_a(redist42_i_llvm_fpga_pop_i32_add37_pop26_gaussian59_out_data_out_3_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist42_i_llvm_fpga_pop_i32_add37_pop26_gaussian59_out_data_out_3_mem_ab),
        .q_b(redist42_i_llvm_fpga_pop_i32_add37_pop26_gaussian59_out_data_out_3_mem_iq),
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
    assign redist42_i_llvm_fpga_pop_i32_add37_pop26_gaussian59_out_data_out_3_mem_q = redist42_i_llvm_fpga_pop_i32_add37_pop26_gaussian59_out_data_out_3_mem_iq[31:0];

    // i_llvm_fpga_push_i32_add37_push26_gaussian60(BLACKBOX,113)@5
    // out out_feedback_out_26@20000000
    // out out_feedback_valid_out_26@20000000
    gaussian_i_llvm_fpga_push_i32_add37_push26_0 thei_llvm_fpga_push_i32_add37_push26_gaussian60 (
        .in_data_in(redist42_i_llvm_fpga_pop_i32_add37_pop26_gaussian59_out_data_out_3_mem_q),
        .in_feedback_stall_in_26(i_llvm_fpga_pop_i32_add37_pop26_gaussian59_out_feedback_stall_out_26),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg25_q),
        .out_data_out(i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out),
        .out_feedback_out_26(i_llvm_fpga_push_i32_add37_push26_gaussian60_out_feedback_out_26),
        .out_feedback_valid_out_26(i_llvm_fpga_push_i32_add37_push26_gaussian60_out_feedback_valid_out_26),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_inputreg0(DELAY,512)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_inputreg0_q <= '0;
        end
        else
        begin
            redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_inputreg0_q <= $unsigned(i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out);
        end
    end

    // redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_wraddr(REG,515)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_wraddr_q <= $unsigned(redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_rdcnt_q);
        end
    end

    // redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_mem(DUALMEM,513)
    assign redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_mem_ia = $unsigned(redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_inputreg0_q);
    assign redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_mem_aa = redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_wraddr_q;
    assign redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_mem_ab = redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_rdcnt_q;
    assign redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_mem_reset0 = ~ (resetn);
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
    ) redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_mem_dmem (
        .clocken1(redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_mem_reset0),
        .clock1(clock),
        .address_a(redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_mem_aa),
        .data_a(redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_mem_ab),
        .q_b(redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_mem_iq),
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
    assign redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_mem_q = redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_mem_iq[31:0];

    // redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_notEnable(LOGICAL,549)
    assign redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_notEnable_q = $unsigned(~ (VCC_q));

    // redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_nor(LOGICAL,550)
    assign redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_nor_q = ~ (redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_notEnable_q | redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_sticky_ena_q);

    // redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_mem_last(CONSTANT,546)
    assign redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_mem_last_q = $unsigned(3'b010);

    // redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_cmp(LOGICAL,547)
    assign redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_cmp_b = {1'b0, redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_rdcnt_q};
    assign redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_cmp_q = $unsigned(redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_mem_last_q == redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_cmp_b ? 1'b1 : 1'b0);

    // redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_cmpReg(REG,548)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_cmpReg_q <= $unsigned(redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_cmp_q);
        end
    end

    // redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_sticky_ena(REG,551)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_nor_q == 1'b1)
        begin
            redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_sticky_ena_q <= $unsigned(redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_cmpReg_q);
        end
    end

    // redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_enaAnd(LOGICAL,552)
    assign redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_enaAnd_q = redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_sticky_ena_q & VCC_q;

    // redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_rdcnt(COUNTER,544)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_rdcnt_i <= $unsigned(redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_rdcnt_q = redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_rdcnt_i[1:0];

    // valid_fanout_reg22(REG,247)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg22_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg22_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg23(REG,248)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg23_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg23_q <= $unsigned(redist22_sync_together147_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i32_fpga_indvars_iv733_push24_gaussian58(BLACKBOX,114)@5
    // out out_feedback_out_24@20000000
    // out out_feedback_valid_out_24@20000000
    gaussian_i_llvm_fpga_push_i32_fpga_indvars_iv733_push24_0 thei_llvm_fpga_push_i32_fpga_indvars_iv733_push24_gaussian58 (
        .in_data_in(redist40_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_3_q),
        .in_feedback_stall_in_24(i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_feedback_stall_out_24),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg23_q),
        .out_data_out(),
        .out_feedback_out_24(i_llvm_fpga_push_i32_fpga_indvars_iv733_push24_gaussian58_out_feedback_out_24),
        .out_feedback_valid_out_24(i_llvm_fpga_push_i32_fpga_indvars_iv733_push24_gaussian58_out_feedback_valid_out_24),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist9_sync_together147_aunroll_x_in_c0_eni18_8_tpl_1(DELAY,409)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together147_aunroll_x_in_c0_eni18_8_tpl_1_q <= '0;
        end
        else
        begin
            redist9_sync_together147_aunroll_x_in_c0_eni18_8_tpl_1_q <= $unsigned(in_c0_eni18_8_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57(BLACKBOX,97)@2
    // out out_feedback_stall_out_24@20000000
    gaussian_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_0 thei_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57 (
        .in_data_in(redist9_sync_together147_aunroll_x_in_c0_eni18_8_tpl_1_q),
        .in_dir(redist0_sync_together147_aunroll_x_in_c0_eni18_1_tpl_1_q),
        .in_feedback_in_24(i_llvm_fpga_push_i32_fpga_indvars_iv733_push24_gaussian58_out_feedback_out_24),
        .in_feedback_valid_in_24(i_llvm_fpga_push_i32_fpga_indvars_iv733_push24_gaussian58_out_feedback_valid_out_24),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg22_q),
        .out_data_out(i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out),
        .out_feedback_stall_out_24(i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_feedback_stall_out_24),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist40_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_3_inputreg0(DELAY,542)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_3_inputreg0_q <= '0;
        end
        else
        begin
            redist40_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_3_inputreg0_q <= $unsigned(i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out);
        end
    end

    // redist40_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_3(DELAY,440)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_3_delay_0 <= '0;
            redist40_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_3_q <= '0;
        end
        else
        begin
            redist40_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_3_delay_0 <= $unsigned(redist40_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_3_inputreg0_q);
            redist40_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_3_q <= redist40_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_3_delay_0;
        end
    end

    // redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_wraddr(REG,545)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_wraddr_q <= $unsigned(redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_rdcnt_q);
        end
    end

    // redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_mem(DUALMEM,543)
    assign redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_mem_ia = $unsigned(redist40_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_3_q);
    assign redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_mem_aa = redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_wraddr_q;
    assign redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_mem_ab = redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_rdcnt_q;
    assign redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_mem_reset0 = ~ (resetn);
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
    ) redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_mem_dmem (
        .clocken1(redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_mem_reset0),
        .clock1(clock),
        .address_a(redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_mem_aa),
        .data_a(redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_mem_ab),
        .q_b(redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_mem_iq),
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
    assign redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_mem_q = redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_mem_iq[31:0];

    // redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_notEnable(LOGICAL,538)
    assign redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_notEnable_q = $unsigned(~ (VCC_q));

    // redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_nor(LOGICAL,539)
    assign redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_nor_q = ~ (redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_notEnable_q | redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_sticky_ena_q);

    // redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_mem_last(CONSTANT,535)
    assign redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_mem_last_q = $unsigned(3'b010);

    // redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_cmp(LOGICAL,536)
    assign redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_cmp_b = {1'b0, redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_rdcnt_q};
    assign redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_cmp_q = $unsigned(redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_mem_last_q == redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_cmp_b ? 1'b1 : 1'b0);

    // redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_cmpReg(REG,537)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_cmpReg_q <= $unsigned(redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_cmp_q);
        end
    end

    // redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_sticky_ena(REG,540)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_nor_q == 1'b1)
        begin
            redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_sticky_ena_q <= $unsigned(redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_cmpReg_q);
        end
    end

    // redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_enaAnd(LOGICAL,541)
    assign redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_enaAnd_q = redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_sticky_ena_q & VCC_q;

    // redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_rdcnt(COUNTER,533)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_rdcnt_i <= $unsigned(redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_rdcnt_q = redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_rdcnt_i[1:0];

    // valid_fanout_reg20(REG,245)@1 + 1
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

    // valid_fanout_reg21(REG,246)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg21_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg21_q <= $unsigned(redist22_sync_together147_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i32_fpga_indvars_iv931_push23_gaussian56(BLACKBOX,115)@5
    // out out_feedback_out_23@20000000
    // out out_feedback_valid_out_23@20000000
    gaussian_i_llvm_fpga_push_i32_fpga_indvars_iv931_push23_0 thei_llvm_fpga_push_i32_fpga_indvars_iv931_push23_gaussian56 (
        .in_data_in(redist38_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_3_q),
        .in_feedback_stall_in_23(i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_feedback_stall_out_23),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_data_out(),
        .out_feedback_out_23(i_llvm_fpga_push_i32_fpga_indvars_iv931_push23_gaussian56_out_feedback_out_23),
        .out_feedback_valid_out_23(i_llvm_fpga_push_i32_fpga_indvars_iv931_push23_gaussian56_out_feedback_valid_out_23),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_sync_together147_aunroll_x_in_c0_eni18_7_tpl_1(DELAY,408)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together147_aunroll_x_in_c0_eni18_7_tpl_1_q <= '0;
        end
        else
        begin
            redist8_sync_together147_aunroll_x_in_c0_eni18_7_tpl_1_q <= $unsigned(in_c0_eni18_7_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55(BLACKBOX,98)@2
    // out out_feedback_stall_out_23@20000000
    gaussian_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_0 thei_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55 (
        .in_data_in(redist8_sync_together147_aunroll_x_in_c0_eni18_7_tpl_1_q),
        .in_dir(redist0_sync_together147_aunroll_x_in_c0_eni18_1_tpl_1_q),
        .in_feedback_in_23(i_llvm_fpga_push_i32_fpga_indvars_iv931_push23_gaussian56_out_feedback_out_23),
        .in_feedback_valid_in_23(i_llvm_fpga_push_i32_fpga_indvars_iv931_push23_gaussian56_out_feedback_valid_out_23),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_data_out(i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out),
        .out_feedback_stall_out_23(i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_feedback_stall_out_23),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist38_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_3_inputreg0(DELAY,531)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_3_inputreg0_q <= '0;
        end
        else
        begin
            redist38_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_3_inputreg0_q <= $unsigned(i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out);
        end
    end

    // redist38_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_3(DELAY,438)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_3_delay_0 <= '0;
            redist38_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_3_q <= '0;
        end
        else
        begin
            redist38_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_3_delay_0 <= $unsigned(redist38_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_3_inputreg0_q);
            redist38_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_3_q <= redist38_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_3_delay_0;
        end
    end

    // redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_wraddr(REG,534)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_wraddr_q <= $unsigned(redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_rdcnt_q);
        end
    end

    // redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_mem(DUALMEM,532)
    assign redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_mem_ia = $unsigned(redist38_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_3_q);
    assign redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_mem_aa = redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_wraddr_q;
    assign redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_mem_ab = redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_rdcnt_q;
    assign redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_mem_reset0 = ~ (resetn);
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
    ) redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_mem_dmem (
        .clocken1(redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_mem_reset0),
        .clock1(clock),
        .address_a(redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_mem_aa),
        .data_a(redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_mem_ab),
        .q_b(redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_mem_iq),
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
    assign redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_mem_q = redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_mem_iq[31:0];

    // i_masked_gaussian54(LOGICAL,120)@5 + 1
    assign i_masked_gaussian54_qi = i_notcmp_gaussian49_q & redist28_i_first_cleanup_gaussian3_sel_x_b_3_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_gaussian54_delay ( .xin(i_masked_gaussian54_qi), .xout(i_masked_gaussian54_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist33_i_masked_gaussian54_q_5(DELAY,433)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_i_masked_gaussian54_q_5_delay_0 <= '0;
            redist33_i_masked_gaussian54_q_5_delay_1 <= '0;
            redist33_i_masked_gaussian54_q_5_delay_2 <= '0;
            redist33_i_masked_gaussian54_q_5_q <= '0;
        end
        else
        begin
            redist33_i_masked_gaussian54_q_5_delay_0 <= $unsigned(i_masked_gaussian54_q);
            redist33_i_masked_gaussian54_q_5_delay_1 <= redist33_i_masked_gaussian54_q_5_delay_0;
            redist33_i_masked_gaussian54_q_5_delay_2 <= redist33_i_masked_gaussian54_q_5_delay_1;
            redist33_i_masked_gaussian54_q_5_q <= redist33_i_masked_gaussian54_q_5_delay_2;
        end
    end

    // redist35_i_llvm_fpga_push_i1_memdep_phi4_pop728_push22_gaussian28_out_data_out_5(DELAY,435)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_i_llvm_fpga_push_i1_memdep_phi4_pop728_push22_gaussian28_out_data_out_5_delay_0 <= '0;
            redist35_i_llvm_fpga_push_i1_memdep_phi4_pop728_push22_gaussian28_out_data_out_5_delay_1 <= '0;
            redist35_i_llvm_fpga_push_i1_memdep_phi4_pop728_push22_gaussian28_out_data_out_5_delay_2 <= '0;
            redist35_i_llvm_fpga_push_i1_memdep_phi4_pop728_push22_gaussian28_out_data_out_5_delay_3 <= '0;
            redist35_i_llvm_fpga_push_i1_memdep_phi4_pop728_push22_gaussian28_out_data_out_5_q <= '0;
        end
        else
        begin
            redist35_i_llvm_fpga_push_i1_memdep_phi4_pop728_push22_gaussian28_out_data_out_5_delay_0 <= $unsigned(i_llvm_fpga_push_i1_memdep_phi4_pop728_push22_gaussian28_out_data_out);
            redist35_i_llvm_fpga_push_i1_memdep_phi4_pop728_push22_gaussian28_out_data_out_5_delay_1 <= redist35_i_llvm_fpga_push_i1_memdep_phi4_pop728_push22_gaussian28_out_data_out_5_delay_0;
            redist35_i_llvm_fpga_push_i1_memdep_phi4_pop728_push22_gaussian28_out_data_out_5_delay_2 <= redist35_i_llvm_fpga_push_i1_memdep_phi4_pop728_push22_gaussian28_out_data_out_5_delay_1;
            redist35_i_llvm_fpga_push_i1_memdep_phi4_pop728_push22_gaussian28_out_data_out_5_delay_3 <= redist35_i_llvm_fpga_push_i1_memdep_phi4_pop728_push22_gaussian28_out_data_out_5_delay_2;
            redist35_i_llvm_fpga_push_i1_memdep_phi4_pop728_push22_gaussian28_out_data_out_5_q <= redist35_i_llvm_fpga_push_i1_memdep_phi4_pop728_push22_gaussian28_out_data_out_5_delay_3;
        end
    end

    // redist52_i_llvm_fpga_pop_i1_cmp41639_pop27_gaussian15_out_data_out_8(DELAY,452)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist52_i_llvm_fpga_pop_i1_cmp41639_pop27_gaussian15_out_data_out_8_delay_0 <= '0;
            redist52_i_llvm_fpga_pop_i1_cmp41639_pop27_gaussian15_out_data_out_8_delay_1 <= '0;
            redist52_i_llvm_fpga_pop_i1_cmp41639_pop27_gaussian15_out_data_out_8_q <= '0;
        end
        else
        begin
            redist52_i_llvm_fpga_pop_i1_cmp41639_pop27_gaussian15_out_data_out_8_delay_0 <= $unsigned(redist51_i_llvm_fpga_pop_i1_cmp41639_pop27_gaussian15_out_data_out_5_q);
            redist52_i_llvm_fpga_pop_i1_cmp41639_pop27_gaussian15_out_data_out_8_delay_1 <= redist52_i_llvm_fpga_pop_i1_cmp41639_pop27_gaussian15_out_data_out_8_delay_0;
            redist52_i_llvm_fpga_pop_i1_cmp41639_pop27_gaussian15_out_data_out_8_q <= redist52_i_llvm_fpga_pop_i1_cmp41639_pop27_gaussian15_out_data_out_8_delay_1;
        end
    end

    // sync_out_aunroll_x(GPOUT,223)@10
    assign out_c0_exi17126_0_tpl = GND_q;
    assign out_c0_exi17126_1_tpl = redist54_i_llvm_fpga_pipeline_keep_going_gaussian6_out_data_out_5_q;
    assign out_c0_exi17126_2_tpl = redist52_i_llvm_fpga_pop_i1_cmp41639_pop27_gaussian15_out_data_out_8_q;
    assign out_c0_exi17126_3_tpl = redist35_i_llvm_fpga_push_i1_memdep_phi4_pop728_push22_gaussian28_out_data_out_5_q;
    assign out_c0_exi17126_4_tpl = i_llvm_fpga_mem_memdep_gaussian39_out_o_writeack;
    assign out_c0_exi17126_5_tpl = redist33_i_masked_gaussian54_q_5_q;
    assign out_c0_exi17126_6_tpl = redist39_i_llvm_fpga_pop_i32_fpga_indvars_iv931_pop23_gaussian55_out_data_out_8_mem_q;
    assign out_c0_exi17126_7_tpl = redist41_i_llvm_fpga_pop_i32_fpga_indvars_iv733_pop24_gaussian57_out_data_out_8_mem_q;
    assign out_c0_exi17126_8_tpl = redist34_i_llvm_fpga_push_i32_add37_push26_gaussian60_out_data_out_5_mem_q;
    assign out_c0_exi17126_9_tpl = redist45_i_llvm_fpga_pop_i1_pop28_gaussian61_out_data_out_8_q;
    assign out_c0_exi17126_10_tpl = redist47_i_llvm_fpga_pop_i1_notcmp1740_pop29_gaussian63_out_data_out_8_q;
    assign out_c0_exi17126_11_tpl = redist13_sync_together147_aunroll_x_in_c0_eni18_12_tpl_9_mem_q;
    assign out_c0_exi17126_12_tpl = redist14_sync_together147_aunroll_x_in_c0_eni18_13_tpl_9_mem_q;
    assign out_c0_exi17126_13_tpl = redist15_sync_together147_aunroll_x_in_c0_eni18_14_tpl_9_mem_q;
    assign out_c0_exi17126_14_tpl = redist16_sync_together147_aunroll_x_in_c0_eni18_15_tpl_9_q;
    assign out_c0_exi17126_15_tpl = redist17_sync_together147_aunroll_x_in_c0_eni18_16_tpl_9_mem_q;
    assign out_c0_exi17126_16_tpl = redist18_sync_together147_aunroll_x_in_c0_eni18_17_tpl_9_mem_q;
    assign out_c0_exi17126_17_tpl = redist19_sync_together147_aunroll_x_in_c0_eni18_18_tpl_9_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_gaussian0 = GND_q;

endmodule
