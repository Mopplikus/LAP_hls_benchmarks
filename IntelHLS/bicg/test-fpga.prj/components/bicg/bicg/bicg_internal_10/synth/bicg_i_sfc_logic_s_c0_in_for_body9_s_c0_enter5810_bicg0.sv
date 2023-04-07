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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body9_bicgs_c0_enter5810_bicg0
// Created for function/kernel bicg
// SystemVerilog created on Fri Apr  7 18:01:04 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module bicg_i_sfc_logic_s_c0_in_for_body9_s_c0_enter5810_bicg0 (
    input wire [31:0] in_unnamed_bicg5_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg5_bicg_avm_writeack,
    input wire [0:0] in_unnamed_bicg5_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg5_bicg_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_bicg6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_bicg6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [31:0] in_unnamed_bicg6_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg6_bicg_avm_writeack,
    input wire [0:0] in_unnamed_bicg6_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg6_bicg_avm_readdatavalid,
    output wire [31:0] out_unnamed_bicg5_bicg_avm_address,
    output wire [0:0] out_unnamed_bicg5_bicg_avm_enable,
    output wire [0:0] out_unnamed_bicg5_bicg_avm_read,
    output wire [0:0] out_unnamed_bicg5_bicg_avm_write,
    output wire [31:0] out_unnamed_bicg5_bicg_avm_writedata,
    output wire [3:0] out_unnamed_bicg5_bicg_avm_byteenable,
    output wire [0:0] out_unnamed_bicg5_bicg_avm_burstcount,
    input wire [31:0] in_unnamed_bicg7_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg7_bicg_avm_writeack,
    input wire [0:0] in_unnamed_bicg7_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg7_bicg_avm_readdatavalid,
    output wire [31:0] out_unnamed_bicg6_bicg_avm_address,
    output wire [0:0] out_unnamed_bicg6_bicg_avm_enable,
    output wire [0:0] out_unnamed_bicg6_bicg_avm_read,
    output wire [0:0] out_unnamed_bicg6_bicg_avm_write,
    output wire [31:0] out_unnamed_bicg6_bicg_avm_writedata,
    output wire [3:0] out_unnamed_bicg6_bicg_avm_byteenable,
    output wire [0:0] out_unnamed_bicg6_bicg_avm_burstcount,
    input wire [31:0] in_memdep_1_bicg_avm_readdata,
    input wire [0:0] in_memdep_1_bicg_avm_writeack,
    input wire [0:0] in_memdep_1_bicg_avm_waitrequest,
    input wire [0:0] in_memdep_1_bicg_avm_readdatavalid,
    output wire [31:0] out_unnamed_bicg7_bicg_avm_address,
    output wire [0:0] out_unnamed_bicg7_bicg_avm_enable,
    output wire [0:0] out_unnamed_bicg7_bicg_avm_read,
    output wire [0:0] out_unnamed_bicg7_bicg_avm_write,
    output wire [31:0] out_unnamed_bicg7_bicg_avm_writedata,
    output wire [3:0] out_unnamed_bicg7_bicg_avm_byteenable,
    output wire [0:0] out_unnamed_bicg7_bicg_avm_burstcount,
    input wire [31:0] in_unnamed_bicg8_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg8_bicg_avm_writeack,
    input wire [0:0] in_unnamed_bicg8_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg8_bicg_avm_readdatavalid,
    output wire [31:0] out_memdep_1_bicg_avm_address,
    output wire [0:0] out_memdep_1_bicg_avm_enable,
    output wire [0:0] out_memdep_1_bicg_avm_read,
    output wire [0:0] out_memdep_1_bicg_avm_write,
    output wire [31:0] out_memdep_1_bicg_avm_writedata,
    output wire [3:0] out_memdep_1_bicg_avm_byteenable,
    output wire [0:0] out_memdep_1_bicg_avm_burstcount,
    output wire [31:0] out_unnamed_bicg8_bicg_avm_address,
    output wire [0:0] out_unnamed_bicg8_bicg_avm_enable,
    output wire [0:0] out_unnamed_bicg8_bicg_avm_read,
    output wire [0:0] out_unnamed_bicg8_bicg_avm_write,
    output wire [31:0] out_unnamed_bicg8_bicg_avm_writedata,
    output wire [3:0] out_unnamed_bicg8_bicg_avm_byteenable,
    output wire [0:0] out_unnamed_bicg8_bicg_avm_burstcount,
    output wire [0:0] out_c0_exi970_0_tpl,
    output wire [0:0] out_c0_exi970_1_tpl,
    output wire [0:0] out_c0_exi970_2_tpl,
    output wire [31:0] out_c0_exi970_3_tpl,
    output wire [0:0] out_c0_exi970_4_tpl,
    output wire [63:0] out_c0_exi970_5_tpl,
    output wire [0:0] out_c0_exi970_6_tpl,
    output wire [0:0] out_c0_exi970_7_tpl,
    output wire [0:0] out_c0_exi970_8_tpl,
    output wire [0:0] out_c0_exi970_9_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_bicg0,
    input wire [0:0] in_c0_eni11_0_tpl,
    input wire [0:0] in_c0_eni11_1_tpl,
    input wire [63:0] in_c0_eni11_2_tpl,
    input wire [0:0] in_c0_eni11_3_tpl,
    input wire [0:0] in_c0_eni11_4_tpl,
    input wire [31:0] in_c0_eni11_5_tpl,
    input wire [0:0] in_c0_eni11_6_tpl,
    input wire [63:0] in_c0_eni11_7_tpl,
    input wire [0:0] in_c0_eni11_8_tpl,
    input wire [0:0] in_c0_eni11_9_tpl,
    input wire [0:0] in_c0_eni11_10_tpl,
    input wire [0:0] in_c0_eni11_11_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_bicg_A_local_pmem_q;
    wire [63:0] c_bicg_p_local_pmem_q;
    wire [63:0] c_bicg_r_local_pmem_q;
    wire [63:0] c_bicg_s_local_pmem_q;
    wire [1:0] c_i2_190_q;
    wire [31:0] c_i32_092_q;
    wire [31:0] c_i32_193_q;
    wire [5:0] c_i6_196_q;
    wire [5:0] c_i6_2894_q;
    wire [32:0] i_add23_bicg34_a;
    wire [32:0] i_add23_bicg34_b;
    logic [32:0] i_add23_bicg34_o;
    wire [32:0] i_add23_bicg34_q;
    wire [32:0] i_add_bicg28_a;
    wire [32:0] i_add_bicg28_b;
    logic [32:0] i_add_bicg28_o;
    wire [32:0] i_add_bicg28_q;
    wire [1:0] i_arrayidx133_bicg18_vt_const_1_q;
    wire [63:0] i_arrayidx133_bicg18_vt_join_q;
    wire [61:0] i_arrayidx133_bicg18_vt_select_63_b;
    wire [63:0] i_arrayidx154_bicg20_vt_join_q;
    wire [61:0] i_arrayidx154_bicg20_vt_select_63_b;
    wire [63:0] i_arrayidx172_bicg14_vt_join_q;
    wire [61:0] i_arrayidx172_bicg14_vt_select_63_b;
    wire [63:0] i_arrayidx215_bicg30_vt_join_q;
    wire [61:0] i_arrayidx215_bicg30_vt_select_63_b;
    wire [1:0] i_cleanups_shl_bicg5_vt_join_q;
    wire [0:0] i_cleanups_shl_bicg5_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor_bicg4_q;
    wire [6:0] i_fpga_indvars_iv_next_bicg46_a;
    wire [6:0] i_fpga_indvars_iv_next_bicg46_b;
    logic [6:0] i_fpga_indvars_iv_next_bicg46_o;
    wire [6:0] i_fpga_indvars_iv_next_bicg46_q;
    wire [63:0] i_idxprom12_bicg17_vt_join_q;
    wire [31:0] i_idxprom12_bicg17_vt_select_31_b;
    wire [32:0] i_inc_bicg36_a;
    wire [32:0] i_inc_bicg36_b;
    logic [32:0] i_inc_bicg36_o;
    wire [32:0] i_inc_bicg36_q;
    wire [31:0] i_llvm_fpga_mem_memdep_1_bicg29_out_memdep_1_bicg_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_1_bicg29_out_memdep_1_bicg_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_1_bicg29_out_memdep_1_bicg_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_1_bicg29_out_memdep_1_bicg_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_1_bicg29_out_memdep_1_bicg_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_1_bicg29_out_memdep_1_bicg_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_1_bicg29_out_memdep_1_bicg_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_1_bicg29_out_o_writeack;
    wire [31:0] i_llvm_fpga_mem_unnamed_bicg5_bicg15_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_bicg5_bicg15_out_unnamed_bicg5_bicg_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg5_bicg15_out_unnamed_bicg5_bicg_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_bicg5_bicg15_out_unnamed_bicg5_bicg_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg5_bicg15_out_unnamed_bicg5_bicg_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg5_bicg15_out_unnamed_bicg5_bicg_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg5_bicg15_out_unnamed_bicg5_bicg_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_bicg5_bicg15_out_unnamed_bicg5_bicg_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_bicg6_bicg19_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_bicg6_bicg19_out_unnamed_bicg6_bicg_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg6_bicg19_out_unnamed_bicg6_bicg_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_bicg6_bicg19_out_unnamed_bicg6_bicg_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg6_bicg19_out_unnamed_bicg6_bicg_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg6_bicg19_out_unnamed_bicg6_bicg_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg6_bicg19_out_unnamed_bicg6_bicg_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_bicg6_bicg19_out_unnamed_bicg6_bicg_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_bicg7_bicg26_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_bicg7_bicg26_out_unnamed_bicg7_bicg_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg7_bicg26_out_unnamed_bicg7_bicg_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_bicg7_bicg26_out_unnamed_bicg7_bicg_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg7_bicg26_out_unnamed_bicg7_bicg_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg7_bicg26_out_unnamed_bicg7_bicg_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg7_bicg26_out_unnamed_bicg7_bicg_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_bicg7_bicg26_out_unnamed_bicg7_bicg_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_bicg8_bicg31_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_bicg8_bicg31_out_unnamed_bicg8_bicg_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg8_bicg31_out_unnamed_bicg8_bicg_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_bicg8_bicg31_out_unnamed_bicg8_bicg_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg8_bicg31_out_unnamed_bicg8_bicg_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg8_bicg31_out_unnamed_bicg8_bicg_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg8_bicg31_out_unnamed_bicg8_bicg_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_bicg8_bicg31_out_unnamed_bicg8_bicg_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_bicg6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_bicg6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_bicg6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_bicg6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_bicg6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_bicg6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond623_pop23_bicg53_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond623_pop23_bicg53_out_feedback_stall_out_23;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop1125_pop25_bicg23_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop1125_pop25_bicg23_out_feedback_stall_out_25;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop820_pop20_bicg21_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop820_pop20_bicg21_out_feedback_stall_out_20;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop718_pop19_bicg49_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop718_pop19_bicg49_out_feedback_stall_out_19;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp724_pop24_bicg55_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp724_pop24_bicg55_out_feedback_stall_out_24;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups_pop18_bicg2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop18_bicg2_out_feedback_stall_out_18;
    wire [1:0] i_llvm_fpga_pop_i2_initerations_pop17_bicg7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations_pop17_bicg7_out_feedback_stall_out_17;
    wire [31:0] i_llvm_fpga_pop_i32_j_017_pop16_bicg16_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_017_pop16_bicg16_out_feedback_stall_out_16;
    wire [31:0] i_llvm_fpga_pop_i32_tmp_q_018_pop15_bicg33_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_tmp_q_018_pop15_bicg33_out_feedback_stall_out_15;
    wire [63:0] i_llvm_fpga_pop_i64_idxprom21_pop21_bicg12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i64_idxprom21_pop21_bicg12_out_feedback_stall_out_21;
    wire [5:0] i_llvm_fpga_pop_i6_fpga_indvars_iv_pop14_bicg38_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv_pop14_bicg38_out_feedback_stall_out_14;
    wire [63:0] i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out;
    wire [0:0] i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_feedback_stall_out_22;
    wire [0:0] i_llvm_fpga_push_i1_exitcond623_push23_bicg54_out_feedback_out_23;
    wire [0:0] i_llvm_fpga_push_i1_exitcond623_push23_bicg54_out_feedback_valid_out_23;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_bicg11_out_feedback_out_1;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_bicg11_out_feedback_valid_out_1;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1125_push25_bicg24_out_feedback_out_25;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1125_push25_bicg24_out_feedback_valid_out_25;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_pop820_push20_bicg22_out_feedback_out_20;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_pop820_push20_bicg22_out_feedback_valid_out_20;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop718_push19_bicg50_out_feedback_out_19;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop718_push19_bicg50_out_feedback_valid_out_19;
    wire [0:0] i_llvm_fpga_push_i1_notcmp724_push24_bicg56_out_feedback_out_24;
    wire [0:0] i_llvm_fpga_push_i1_notcmp724_push24_bicg56_out_feedback_valid_out_24;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_bicg42_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_bicg42_out_feedback_valid_out_2;
    wire [7:0] i_llvm_fpga_push_i2_cleanups_push18_bicg45_out_feedback_out_18;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push18_bicg45_out_feedback_valid_out_18;
    wire [7:0] i_llvm_fpga_push_i2_initerations_push17_bicg9_out_feedback_out_17;
    wire [0:0] i_llvm_fpga_push_i2_initerations_push17_bicg9_out_feedback_valid_out_17;
    wire [31:0] i_llvm_fpga_push_i32_j_017_push16_bicg37_out_feedback_out_16;
    wire [0:0] i_llvm_fpga_push_i32_j_017_push16_bicg37_out_feedback_valid_out_16;
    wire [31:0] i_llvm_fpga_push_i32_tmp_q_018_push15_bicg35_out_feedback_out_15;
    wire [0:0] i_llvm_fpga_push_i32_tmp_q_018_push15_bicg35_out_feedback_valid_out_15;
    wire [63:0] i_llvm_fpga_push_i64_idxprom21_push21_bicg13_out_feedback_out_21;
    wire [0:0] i_llvm_fpga_push_i64_idxprom21_push21_bicg13_out_feedback_valid_out_21;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push14_bicg47_out_feedback_out_14;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push14_bicg47_out_feedback_valid_out_14;
    wire [63:0] i_llvm_fpga_push_p66i32_arrayidx122_push22_bicg52_out_feedback_out_22;
    wire [0:0] i_llvm_fpga_push_p66i32_arrayidx122_push22_bicg52_out_feedback_valid_out_22;
    wire [0:0] i_masked_bicg48_qi;
    reg [0:0] i_masked_bicg48_q;
    wire [0:0] i_memdep_phi3_or_bicg25_qi;
    reg [0:0] i_memdep_phi3_or_bicg25_q;
    wire [0:0] i_next_cleanups_bicg44_s;
    reg [1:0] i_next_cleanups_bicg44_q;
    wire [1:0] i_next_initerations_bicg8_vt_join_q;
    wire [0:0] i_next_initerations_bicg8_vt_select_0_b;
    wire [0:0] i_notcmp_bicg41_q;
    wire [0:0] i_or_bicg43_q;
    wire [31:0] bgTrunc_i_add23_bicg34_sel_x_b;
    wire [31:0] bgTrunc_i_add_bicg28_sel_x_b;
    wire [5:0] bgTrunc_i_fpga_indvars_iv_next_bicg46_sel_x_b;
    wire [31:0] bgTrunc_i_inc_bicg36_sel_x_b;
    wire [63:0] bgTrunc_i_mul22_bicg32_sel_x_in;
    wire [31:0] bgTrunc_i_mul22_bicg32_sel_x_b;
    wire [63:0] bgTrunc_i_mul_bicg27_sel_x_in;
    wire [31:0] bgTrunc_i_mul_bicg27_sel_x_b;
    wire [12:0] i_arrayidx133_bicg0_add_x_a;
    wire [12:0] i_arrayidx133_bicg0_add_x_b;
    logic [12:0] i_arrayidx133_bicg0_add_x_o;
    wire [12:0] i_arrayidx133_bicg0_add_x_q;
    wire [63:0] i_arrayidx133_bicg0_append_upper_bits_x_q;
    wire [9:0] i_arrayidx133_bicg0_narrow_x_b;
    wire [11:0] i_arrayidx133_bicg0_shift_join_x_q;
    wire [12:0] i_arrayidx133_bicg0_dupName_0_add_x_a;
    wire [12:0] i_arrayidx133_bicg0_dupName_0_add_x_b;
    logic [12:0] i_arrayidx133_bicg0_dupName_0_add_x_o;
    wire [12:0] i_arrayidx133_bicg0_dupName_0_add_x_q;
    wire [23:0] i_arrayidx133_bicg0_mult_extender_x_q;
    wire [4:0] i_arrayidx133_bicg0_mult_multconst_x_q;
    wire [11:0] i_arrayidx133_bicg0_dupName_0_trunc_sel_x_b;
    wire [11:0] i_arrayidx133_bicg0_dupName_1_trunc_sel_x_b;
    wire [11:0] i_arrayidx133_bicg0_dupName_2_trunc_sel_x_b;
    wire [11:0] i_arrayidx133_bicg0_dupName_3_trunc_sel_x_b;
    wire [11:0] i_arrayidx133_bicg0_dupName_5_trunc_sel_x_b;
    wire [7:0] i_arrayidx154_bicg0_add_x_a;
    wire [7:0] i_arrayidx154_bicg0_add_x_b;
    logic [7:0] i_arrayidx154_bicg0_add_x_o;
    wire [7:0] i_arrayidx154_bicg0_add_x_q;
    wire [63:0] i_arrayidx154_bicg0_append_upper_bits_x_q;
    wire [4:0] i_arrayidx154_bicg0_narrow_x_b;
    wire [6:0] i_arrayidx154_bicg0_shift_join_x_q;
    wire [6:0] i_arrayidx154_bicg0_dupName_0_trunc_sel_x_b;
    wire [6:0] i_arrayidx154_bicg0_dupName_2_trunc_sel_x_b;
    wire [7:0] i_arrayidx172_bicg0_add_x_a;
    wire [7:0] i_arrayidx172_bicg0_add_x_b;
    logic [7:0] i_arrayidx172_bicg0_add_x_o;
    wire [7:0] i_arrayidx172_bicg0_add_x_q;
    wire [63:0] i_arrayidx172_bicg0_append_upper_bits_x_q;
    wire [4:0] i_arrayidx172_bicg0_narrow_x_b;
    wire [6:0] i_arrayidx172_bicg0_shift_join_x_q;
    wire [6:0] i_arrayidx172_bicg0_dupName_0_trunc_sel_x_b;
    wire [6:0] i_arrayidx172_bicg0_dupName_2_trunc_sel_x_b;
    wire [7:0] i_arrayidx215_bicg0_add_x_a;
    wire [7:0] i_arrayidx215_bicg0_add_x_b;
    logic [7:0] i_arrayidx215_bicg0_add_x_o;
    wire [7:0] i_arrayidx215_bicg0_add_x_q;
    wire [63:0] i_arrayidx215_bicg0_append_upper_bits_x_q;
    wire [6:0] i_arrayidx215_bicg0_dupName_2_trunc_sel_x_b;
    wire [0:0] i_first_cleanup_bicg3_sel_x_b;
    wire [63:0] i_idxprom12_bicg17_sel_x_b;
    wire [0:0] i_last_initeration_bicg10_sel_x_b;
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
    wire [0:0] i_exitcond_bicg39_cmp_nsign_q;
    wire [63:0] i_mul22_bicg32_sums_join_0_q;
    wire [50:0] i_mul22_bicg32_sums_align_1_q;
    wire [50:0] i_mul22_bicg32_sums_align_1_qint;
    wire [64:0] i_mul22_bicg32_sums_result_add_0_0_a;
    wire [64:0] i_mul22_bicg32_sums_result_add_0_0_b;
    logic [64:0] i_mul22_bicg32_sums_result_add_0_0_o;
    wire [64:0] i_mul22_bicg32_sums_result_add_0_0_q;
    wire [63:0] i_mul_bicg27_sums_join_0_q;
    wire [50:0] i_mul_bicg27_sums_align_1_q;
    wire [50:0] i_mul_bicg27_sums_align_1_qint;
    wire [64:0] i_mul_bicg27_sums_result_add_0_0_a;
    wire [64:0] i_mul_bicg27_sums_result_add_0_0_b;
    logic [64:0] i_mul_bicg27_sums_result_add_0_0_o;
    wire [64:0] i_mul_bicg27_sums_result_add_0_0_q;
    wire [12:0] xIfSign_mergedSignalTM_uid310_i_arrayidx133_bicg0_mult_x_q;
    wire [3:0] padACst_uid314_i_arrayidx133_bicg0_mult_x_q;
    wire [16:0] aPostPad_uid315_i_arrayidx133_bicg0_mult_x_q;
    wire [17:0] sub_uid316_i_arrayidx133_bicg0_mult_x_a;
    wire [17:0] sub_uid316_i_arrayidx133_bicg0_mult_x_b;
    logic [17:0] sub_uid316_i_arrayidx133_bicg0_mult_x_o;
    wire [17:0] sub_uid316_i_arrayidx133_bicg0_mult_x_q;
    wire [2:0] sR_bottomExtension_uid319_i_arrayidx133_bicg0_mult_x_q;
    wire [15:0] sR_bottomRange_uid320_i_arrayidx133_bicg0_mult_x_in;
    wire [15:0] sR_bottomRange_uid320_i_arrayidx133_bicg0_mult_x_b;
    wire [18:0] sR_mergedSignalTM_uid321_i_arrayidx133_bicg0_mult_x_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid345_i_cleanups_shl_bicg0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid345_i_cleanups_shl_bicg0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid346_i_cleanups_shl_bicg0_shift_x_q;
    wire [0:0] leftShiftStage0_uid348_i_cleanups_shl_bicg0_shift_x_s;
    reg [1:0] leftShiftStage0_uid348_i_cleanups_shl_bicg0_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid352_i_next_initerations_bicg0_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid354_i_next_initerations_bicg0_shift_x_q;
    wire [0:0] rightShiftStage0_uid356_i_next_initerations_bicg0_shift_x_s;
    reg [1:0] rightShiftStage0_uid356_i_next_initerations_bicg0_shift_x_q;
    wire i_mul22_bicg32_im0_cma_reset;
    wire [13:0] i_mul22_bicg32_im0_cma_a0;
    wire [13:0] i_mul22_bicg32_im0_cma_c0;
    wire [27:0] i_mul22_bicg32_im0_cma_s0;
    wire [27:0] i_mul22_bicg32_im0_cma_qq;
    wire [27:0] i_mul22_bicg32_im0_cma_q;
    wire i_mul22_bicg32_im0_cma_ena0;
    wire i_mul22_bicg32_im0_cma_ena1;
    wire i_mul22_bicg32_im0_cma_ena2;
    wire i_mul22_bicg32_im8_cma_reset;
    wire [17:0] i_mul22_bicg32_im8_cma_a0;
    wire [17:0] i_mul22_bicg32_im8_cma_c0;
    wire [35:0] i_mul22_bicg32_im8_cma_s0;
    wire [35:0] i_mul22_bicg32_im8_cma_qq;
    wire [35:0] i_mul22_bicg32_im8_cma_q;
    wire i_mul22_bicg32_im8_cma_ena0;
    wire i_mul22_bicg32_im8_cma_ena1;
    wire i_mul22_bicg32_im8_cma_ena2;
    wire i_mul_bicg27_im0_cma_reset;
    wire [13:0] i_mul_bicg27_im0_cma_a0;
    wire [13:0] i_mul_bicg27_im0_cma_c0;
    wire [27:0] i_mul_bicg27_im0_cma_s0;
    wire [27:0] i_mul_bicg27_im0_cma_qq;
    wire [27:0] i_mul_bicg27_im0_cma_q;
    wire i_mul_bicg27_im0_cma_ena0;
    wire i_mul_bicg27_im0_cma_ena1;
    wire i_mul_bicg27_im0_cma_ena2;
    wire i_mul_bicg27_im8_cma_reset;
    wire [17:0] i_mul_bicg27_im8_cma_a0;
    wire [17:0] i_mul_bicg27_im8_cma_c0;
    wire [35:0] i_mul_bicg27_im8_cma_s0;
    wire [35:0] i_mul_bicg27_im8_cma_qq;
    wire [35:0] i_mul_bicg27_im8_cma_q;
    wire i_mul_bicg27_im8_cma_ena0;
    wire i_mul_bicg27_im8_cma_ena1;
    wire i_mul_bicg27_im8_cma_ena2;
    wire i_mul22_bicg32_ma3_cma_reset;
    wire [13:0] i_mul22_bicg32_ma3_cma_a0;
    wire [17:0] i_mul22_bicg32_ma3_cma_c0;
    wire [13:0] i_mul22_bicg32_ma3_cma_a1;
    wire [17:0] i_mul22_bicg32_ma3_cma_c1;
    wire [32:0] i_mul22_bicg32_ma3_cma_s0;
    wire [32:0] i_mul22_bicg32_ma3_cma_qq;
    wire [32:0] i_mul22_bicg32_ma3_cma_q;
    wire i_mul22_bicg32_ma3_cma_ena0;
    wire i_mul22_bicg32_ma3_cma_ena1;
    wire i_mul22_bicg32_ma3_cma_ena2;
    wire i_mul_bicg27_ma3_cma_reset;
    wire [13:0] i_mul_bicg27_ma3_cma_a0;
    wire [17:0] i_mul_bicg27_ma3_cma_c0;
    wire [13:0] i_mul_bicg27_ma3_cma_a1;
    wire [17:0] i_mul_bicg27_ma3_cma_c1;
    wire [32:0] i_mul_bicg27_ma3_cma_s0;
    wire [32:0] i_mul_bicg27_ma3_cma_qq;
    wire [32:0] i_mul_bicg27_ma3_cma_q;
    wire i_mul_bicg27_ma3_cma_ena0;
    wire i_mul_bicg27_ma3_cma_ena1;
    wire i_mul_bicg27_ma3_cma_ena2;
    wire [51:0] i_arrayidx133_bicg0_upper_bits_x_merged_bit_select_b;
    wire [11:0] i_arrayidx133_bicg0_upper_bits_x_merged_bit_select_c;
    wire [56:0] i_arrayidx215_bicg0_upper_bits_x_merged_bit_select_b;
    wire [6:0] i_arrayidx215_bicg0_upper_bits_x_merged_bit_select_c;
    wire [56:0] i_arrayidx172_bicg0_upper_bits_x_merged_bit_select_b;
    wire [6:0] i_arrayidx172_bicg0_upper_bits_x_merged_bit_select_c;
    wire [56:0] i_arrayidx154_bicg0_upper_bits_x_merged_bit_select_b;
    wire [6:0] i_arrayidx154_bicg0_upper_bits_x_merged_bit_select_c;
    wire [13:0] i_mul_bicg27_bs1_merged_bit_select_b;
    wire [17:0] i_mul_bicg27_bs1_merged_bit_select_c;
    wire [13:0] i_mul22_bicg32_bs2_merged_bit_select_b;
    wire [17:0] i_mul22_bicg32_bs2_merged_bit_select_c;
    wire [13:0] i_mul22_bicg32_bs1_merged_bit_select_b;
    wire [17:0] i_mul22_bicg32_bs1_merged_bit_select_c;
    reg [0:0] redist0_valid_fanout_reg0_q_1_q;
    reg [0:0] redist1_sync_together127_aunroll_x_in_c0_eni11_1_tpl_1_q;
    reg [0:0] redist2_sync_together127_aunroll_x_in_c0_eni11_1_tpl_2_q;
    reg [0:0] redist3_sync_together127_aunroll_x_in_c0_eni11_1_tpl_9_q;
    reg [63:0] redist4_sync_together127_aunroll_x_in_c0_eni11_2_tpl_1_q;
    reg [0:0] redist5_sync_together127_aunroll_x_in_c0_eni11_3_tpl_1_q;
    reg [0:0] redist6_sync_together127_aunroll_x_in_c0_eni11_4_tpl_1_q;
    reg [0:0] redist8_sync_together127_aunroll_x_in_c0_eni11_6_tpl_1_q;
    reg [63:0] redist9_sync_together127_aunroll_x_in_c0_eni11_7_tpl_1_q;
    reg [0:0] redist10_sync_together127_aunroll_x_in_c0_eni11_8_tpl_9_q;
    reg [0:0] redist11_sync_together127_aunroll_x_in_c0_eni11_9_tpl_1_q;
    reg [0:0] redist12_sync_together127_aunroll_x_in_c0_eni11_10_tpl_11_q;
    reg [0:0] redist13_sync_together127_aunroll_x_in_c0_eni11_11_tpl_11_q;
    reg [0:0] redist14_sync_together127_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist15_sync_together127_aunroll_x_in_i_valid_5_q;
    reg [0:0] redist15_sync_together127_aunroll_x_in_i_valid_5_delay_0;
    reg [0:0] redist15_sync_together127_aunroll_x_in_i_valid_5_delay_1;
    reg [0:0] redist15_sync_together127_aunroll_x_in_i_valid_5_delay_2;
    reg [0:0] redist16_sync_together127_aunroll_x_in_i_valid_8_q;
    reg [0:0] redist16_sync_together127_aunroll_x_in_i_valid_8_delay_0;
    reg [0:0] redist16_sync_together127_aunroll_x_in_i_valid_8_delay_1;
    reg [0:0] redist17_sync_together127_aunroll_x_in_i_valid_9_q;
    reg [4:0] redist18_i_arrayidx172_bicg0_narrow_x_b_1_q;
    reg [6:0] redist19_i_arrayidx154_bicg0_shift_join_x_q_4_q;
    reg [6:0] redist19_i_arrayidx154_bicg0_shift_join_x_q_4_delay_0;
    reg [6:0] redist19_i_arrayidx154_bicg0_shift_join_x_q_4_delay_1;
    reg [6:0] redist19_i_arrayidx154_bicg0_shift_join_x_q_4_delay_2;
    reg [11:0] redist20_i_arrayidx133_bicg0_dupName_1_trunc_sel_x_b_1_q;
    reg [31:0] redist21_bgTrunc_i_mul_bicg27_sel_x_b_1_q;
    reg [31:0] redist22_bgTrunc_i_mul22_bicg32_sel_x_b_1_q;
    reg [31:0] redist23_bgTrunc_i_add23_bicg34_sel_x_b_1_q;
    reg [0:0] redist24_i_memdep_phi3_or_bicg25_q_5_q;
    reg [0:0] redist24_i_memdep_phi3_or_bicg25_q_5_delay_0;
    reg [0:0] redist24_i_memdep_phi3_or_bicg25_q_5_delay_1;
    reg [0:0] redist24_i_memdep_phi3_or_bicg25_q_5_delay_2;
    reg [0:0] redist25_i_masked_bicg48_q_10_q;
    reg [63:0] redist26_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_1_q;
    reg [31:0] redist28_i_llvm_fpga_pop_i32_tmp_q_018_pop15_bicg33_out_data_out_1_q;
    reg [0:0] redist29_i_llvm_fpga_pop_i1_notcmp724_pop24_bicg55_out_data_out_10_q;
    reg [0:0] redist30_i_llvm_fpga_pop_i1_exitcond623_pop23_bicg53_out_data_out_1_q;
    reg [0:0] redist31_i_llvm_fpga_pop_i1_exitcond623_pop23_bicg53_out_data_out_2_q;
    reg [0:0] redist32_i_llvm_fpga_pipeline_keep_going_bicg6_out_data_out_1_q;
    reg [0:0] redist33_i_llvm_fpga_pipeline_keep_going_bicg6_out_data_out_2_q;
    reg [0:0] redist34_i_llvm_fpga_pipeline_keep_going_bicg6_out_data_out_10_q;
    reg [0:0] redist35_i_llvm_fpga_pipeline_keep_going_bicg6_out_data_out_11_q;
    reg [0:0] redist36_i_first_cleanup_xor_bicg4_q_1_q;
    reg [0:0] redist37_i_first_cleanup_xor_bicg4_q_5_q;
    reg [0:0] redist37_i_first_cleanup_xor_bicg4_q_5_delay_0;
    reg [0:0] redist37_i_first_cleanup_xor_bicg4_q_5_delay_1;
    reg [0:0] redist37_i_first_cleanup_xor_bicg4_q_5_delay_2;
    reg [0:0] redist38_i_first_cleanup_xor_bicg4_q_9_q;
    reg [0:0] redist38_i_first_cleanup_xor_bicg4_q_9_delay_0;
    reg [0:0] redist38_i_first_cleanup_xor_bicg4_q_9_delay_1;
    reg [0:0] redist38_i_first_cleanup_xor_bicg4_q_9_delay_2;
    wire redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_mem_reset0;
    wire [31:0] redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_mem_ia;
    wire [2:0] redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_mem_aa;
    wire [2:0] redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_mem_ab;
    wire [31:0] redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_mem_iq;
    wire [31:0] redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_mem_q;
    wire [2:0] redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_rdcnt_q;
    (* preserve *) reg [2:0] redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_rdcnt_i;
    reg [2:0] redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_wraddr_q;
    wire [3:0] redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_mem_last_q;
    wire [3:0] redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_cmp_b;
    wire [0:0] redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_cmp_q;
    (* dont_merge *) reg [0:0] redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_cmpReg_q;
    wire [0:0] redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_notEnable_q;
    wire [0:0] redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_nor_q;
    (* dont_merge *) reg [0:0] redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_sticky_ena_q;
    wire [0:0] redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_enaAnd_q;
    wire redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_mem_reset0;
    wire [63:0] redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_mem_ia;
    wire [2:0] redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_mem_aa;
    wire [2:0] redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_mem_ab;
    wire [63:0] redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_mem_iq;
    wire [63:0] redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_mem_q;
    wire [2:0] redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_rdcnt_q;
    (* preserve *) reg [2:0] redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_rdcnt_i;
    reg [2:0] redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_wraddr_q;
    wire [3:0] redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_mem_last_q;
    wire [3:0] redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_cmp_b;
    wire [0:0] redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_cmp_q;
    (* dont_merge *) reg [0:0] redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_cmpReg_q;
    wire [0:0] redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_notEnable_q;
    wire [0:0] redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_nor_q;
    (* dont_merge *) reg [0:0] redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_sticky_ena_q;
    wire [0:0] redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_enaAnd_q;
    wire redist39_i_arrayidx154_bicg20_vt_join_q_4_mem_reset0;
    wire [63:0] redist39_i_arrayidx154_bicg20_vt_join_q_4_mem_ia;
    wire [1:0] redist39_i_arrayidx154_bicg20_vt_join_q_4_mem_aa;
    wire [1:0] redist39_i_arrayidx154_bicg20_vt_join_q_4_mem_ab;
    wire [63:0] redist39_i_arrayidx154_bicg20_vt_join_q_4_mem_iq;
    wire [63:0] redist39_i_arrayidx154_bicg20_vt_join_q_4_mem_q;
    wire [1:0] redist39_i_arrayidx154_bicg20_vt_join_q_4_rdcnt_q;
    (* preserve *) reg [1:0] redist39_i_arrayidx154_bicg20_vt_join_q_4_rdcnt_i;
    (* preserve *) reg redist39_i_arrayidx154_bicg20_vt_join_q_4_rdcnt_eq;
    reg [1:0] redist39_i_arrayidx154_bicg20_vt_join_q_4_wraddr_q;
    wire [1:0] redist39_i_arrayidx154_bicg20_vt_join_q_4_mem_last_q;
    wire [0:0] redist39_i_arrayidx154_bicg20_vt_join_q_4_cmp_q;
    (* dont_merge *) reg [0:0] redist39_i_arrayidx154_bicg20_vt_join_q_4_cmpReg_q;
    wire [0:0] redist39_i_arrayidx154_bicg20_vt_join_q_4_notEnable_q;
    wire [0:0] redist39_i_arrayidx154_bicg20_vt_join_q_4_nor_q;
    (* dont_merge *) reg [0:0] redist39_i_arrayidx154_bicg20_vt_join_q_4_sticky_ena_q;
    wire [0:0] redist39_i_arrayidx154_bicg20_vt_join_q_4_enaAnd_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist14_sync_together127_aunroll_x_in_i_valid_1(DELAY,384)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together127_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist14_sync_together127_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist32_i_llvm_fpga_pipeline_keep_going_bicg6_out_data_out_1(DELAY,402)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_i_llvm_fpga_pipeline_keep_going_bicg6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist32_i_llvm_fpga_pipeline_keep_going_bicg6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going_bicg6_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid345_i_cleanups_shl_bicg0_shift_x(BITSELECT,344)@2
    assign leftShiftStage0Idx1Rng1_uid345_i_cleanups_shl_bicg0_shift_x_in = i_llvm_fpga_pop_i2_cleanups_pop18_bicg2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid345_i_cleanups_shl_bicg0_shift_x_b = leftShiftStage0Idx1Rng1_uid345_i_cleanups_shl_bicg0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid346_i_cleanups_shl_bicg0_shift_x(BITJOIN,345)@2
    assign leftShiftStage0Idx1_uid346_i_cleanups_shl_bicg0_shift_x_q = {leftShiftStage0Idx1Rng1_uid345_i_cleanups_shl_bicg0_shift_x_b, GND_q};

    // leftShiftStage0_uid348_i_cleanups_shl_bicg0_shift_x(MUX,347)@2
    assign leftShiftStage0_uid348_i_cleanups_shl_bicg0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid348_i_cleanups_shl_bicg0_shift_x_s or i_llvm_fpga_pop_i2_cleanups_pop18_bicg2_out_data_out or leftShiftStage0Idx1_uid346_i_cleanups_shl_bicg0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid348_i_cleanups_shl_bicg0_shift_x_s)
            1'b0 : leftShiftStage0_uid348_i_cleanups_shl_bicg0_shift_x_q = i_llvm_fpga_pop_i2_cleanups_pop18_bicg2_out_data_out;
            1'b1 : leftShiftStage0_uid348_i_cleanups_shl_bicg0_shift_x_q = leftShiftStage0Idx1_uid346_i_cleanups_shl_bicg0_shift_x_q;
            default : leftShiftStage0_uid348_i_cleanups_shl_bicg0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl_bicg5_vt_select_1(BITSELECT,68)@2
    assign i_cleanups_shl_bicg5_vt_select_1_b = leftShiftStage0_uid348_i_cleanups_shl_bicg0_shift_x_q[1:1];

    // i_cleanups_shl_bicg5_vt_join(BITJOIN,67)@2
    assign i_cleanups_shl_bicg5_vt_join_q = {i_cleanups_shl_bicg5_vt_select_1_b, GND_q};

    // i_first_cleanup_xor_bicg4(LOGICAL,71)@2
    assign i_first_cleanup_xor_bicg4_q = i_first_cleanup_bicg3_sel_x_b ^ VCC_q;

    // i_notcmp_bicg41(LOGICAL,119)@2
    assign i_notcmp_bicg41_q = i_exitcond_bicg39_cmp_nsign_q ^ VCC_q;

    // i_or_bicg43(LOGICAL,120)@2
    assign i_or_bicg43_q = i_notcmp_bicg41_q | i_first_cleanup_xor_bicg4_q;

    // i_next_cleanups_bicg44(MUX,115)@2
    assign i_next_cleanups_bicg44_s = i_or_bicg43_q;
    always @(i_next_cleanups_bicg44_s or i_llvm_fpga_pop_i2_cleanups_pop18_bicg2_out_data_out or i_cleanups_shl_bicg5_vt_join_q)
    begin
        unique case (i_next_cleanups_bicg44_s)
            1'b0 : i_next_cleanups_bicg44_q = i_llvm_fpga_pop_i2_cleanups_pop18_bicg2_out_data_out;
            1'b1 : i_next_cleanups_bicg44_q = i_cleanups_shl_bicg5_vt_join_q;
            default : i_next_cleanups_bicg44_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups_push18_bicg45(BLACKBOX,104)@2
    // out out_feedback_out_18@20000000
    // out out_feedback_valid_out_18@20000000
    bicg_i_llvm_fpga_push_i2_cleanups_push18_0 thei_llvm_fpga_push_i2_cleanups_push18_bicg45 (
        .in_data_in(i_next_cleanups_bicg44_q),
        .in_feedback_stall_in_18(i_llvm_fpga_pop_i2_cleanups_pop18_bicg2_out_feedback_stall_out_18),
        .in_keep_going(redist32_i_llvm_fpga_pipeline_keep_going_bicg6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist14_sync_together127_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_18(i_llvm_fpga_push_i2_cleanups_push18_bicg45_out_feedback_out_18),
        .out_feedback_valid_out_18(i_llvm_fpga_push_i2_cleanups_push18_bicg45_out_feedback_valid_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together127_aunroll_x_in_c0_eni11_1_tpl_1(DELAY,371)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together127_aunroll_x_in_c0_eni11_1_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together127_aunroll_x_in_c0_eni11_1_tpl_1_q <= $unsigned(in_c0_eni11_1_tpl);
        end
    end

    // c_i2_190(CONSTANT,45)
    assign c_i2_190_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups_pop18_bicg2(BLACKBOX,90)@2
    // out out_feedback_stall_out_18@20000000
    bicg_i_llvm_fpga_pop_i2_cleanups_pop18_0 thei_llvm_fpga_pop_i2_cleanups_pop18_bicg2 (
        .in_data_in(c_i2_190_q),
        .in_dir(redist1_sync_together127_aunroll_x_in_c0_eni11_1_tpl_1_q),
        .in_feedback_in_18(i_llvm_fpga_push_i2_cleanups_push18_bicg45_out_feedback_out_18),
        .in_feedback_valid_in_18(i_llvm_fpga_push_i2_cleanups_push18_bicg45_out_feedback_valid_out_18),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist14_sync_together127_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups_pop18_bicg2_out_data_out),
        .out_feedback_stall_out_18(i_llvm_fpga_pop_i2_cleanups_pop18_bicg2_out_feedback_stall_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_bicg3_sel_x(BITSELECT,206)@2
    assign i_first_cleanup_bicg3_sel_x_b = i_llvm_fpga_pop_i2_cleanups_pop18_bicg2_out_data_out[0:0];

    // c_i6_196(CONSTANT,48)
    assign c_i6_196_q = $unsigned(6'b111111);

    // i_fpga_indvars_iv_next_bicg46(ADD,72)@2
    assign i_fpga_indvars_iv_next_bicg46_a = {1'b0, i_llvm_fpga_pop_i6_fpga_indvars_iv_pop14_bicg38_out_data_out};
    assign i_fpga_indvars_iv_next_bicg46_b = {1'b0, c_i6_196_q};
    assign i_fpga_indvars_iv_next_bicg46_o = $unsigned(i_fpga_indvars_iv_next_bicg46_a) + $unsigned(i_fpga_indvars_iv_next_bicg46_b);
    assign i_fpga_indvars_iv_next_bicg46_q = i_fpga_indvars_iv_next_bicg46_o[6:0];

    // bgTrunc_i_fpga_indvars_iv_next_bicg46_sel_x(BITSELECT,128)@2
    assign bgTrunc_i_fpga_indvars_iv_next_bicg46_sel_x_b = i_fpga_indvars_iv_next_bicg46_q[5:0];

    // i_llvm_fpga_push_i6_fpga_indvars_iv_push14_bicg47(BLACKBOX,109)@2
    // out out_feedback_out_14@20000000
    // out out_feedback_valid_out_14@20000000
    bicg_i_llvm_fpga_push_i6_fpga_indvars_iv_push14_0 thei_llvm_fpga_push_i6_fpga_indvars_iv_push14_bicg47 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_bicg46_sel_x_b),
        .in_feedback_stall_in_14(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop14_bicg38_out_feedback_stall_out_14),
        .in_keep_going(redist32_i_llvm_fpga_pipeline_keep_going_bicg6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist14_sync_together127_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_14(i_llvm_fpga_push_i6_fpga_indvars_iv_push14_bicg47_out_feedback_out_14),
        .out_feedback_valid_out_14(i_llvm_fpga_push_i6_fpga_indvars_iv_push14_bicg47_out_feedback_valid_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i6_2894(CONSTANT,49)
    assign c_i6_2894_q = $unsigned(6'b011100);

    // i_llvm_fpga_pop_i6_fpga_indvars_iv_pop14_bicg38(BLACKBOX,95)@2
    // out out_feedback_stall_out_14@20000000
    bicg_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop14_0 thei_llvm_fpga_pop_i6_fpga_indvars_iv_pop14_bicg38 (
        .in_data_in(c_i6_2894_q),
        .in_dir(redist1_sync_together127_aunroll_x_in_c0_eni11_1_tpl_1_q),
        .in_feedback_in_14(i_llvm_fpga_push_i6_fpga_indvars_iv_push14_bicg47_out_feedback_out_14),
        .in_feedback_valid_in_14(i_llvm_fpga_push_i6_fpga_indvars_iv_push14_bicg47_out_feedback_valid_out_14),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist14_sync_together127_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop14_bicg38_out_data_out),
        .out_feedback_stall_out_14(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop14_bicg38_out_feedback_stall_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond_bicg39_cmp_nsign(LOGICAL,254)@2
    assign i_exitcond_bicg39_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i6_fpga_indvars_iv_pop14_bicg38_out_data_out[5:5]));

    // i_llvm_fpga_push_i1_notexitcond_bicg42(BLACKBOX,103)@2
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    bicg_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_bicg42 (
        .in_data_in(i_exitcond_bicg39_cmp_nsign_q),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_bicg6_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_bicg3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist14_sync_together127_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_notexitcond_bicg42_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_notexitcond_bicg42_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,218)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid352_i_next_initerations_bicg0_shift_x(BITSELECT,351)@2
    assign rightShiftStage0Idx1Rng1_uid352_i_next_initerations_bicg0_shift_x_b = i_llvm_fpga_pop_i2_initerations_pop17_bicg7_out_data_out[1:1];

    // rightShiftStage0Idx1_uid354_i_next_initerations_bicg0_shift_x(BITJOIN,353)@2
    assign rightShiftStage0Idx1_uid354_i_next_initerations_bicg0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid352_i_next_initerations_bicg0_shift_x_b};

    // valid_fanout_reg1(REG,216)@1 + 1
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

    // valid_fanout_reg2(REG,217)@1 + 1
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

    // i_llvm_fpga_push_i2_initerations_push17_bicg9(BLACKBOX,105)@2
    // out out_feedback_out_17@20000000
    // out out_feedback_valid_out_17@20000000
    bicg_i_llvm_fpga_push_i2_initerations_push17_0 thei_llvm_fpga_push_i2_initerations_push17_bicg9 (
        .in_data_in(i_next_initerations_bicg8_vt_join_q),
        .in_feedback_stall_in_17(i_llvm_fpga_pop_i2_initerations_pop17_bicg7_out_feedback_stall_out_17),
        .in_keep_going(redist32_i_llvm_fpga_pipeline_keep_going_bicg6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_17(i_llvm_fpga_push_i2_initerations_push17_bicg9_out_feedback_out_17),
        .out_feedback_valid_out_17(i_llvm_fpga_push_i2_initerations_push17_bicg9_out_feedback_valid_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations_pop17_bicg7(BLACKBOX,91)@2
    // out out_feedback_stall_out_17@20000000
    bicg_i_llvm_fpga_pop_i2_initerations_pop17_0 thei_llvm_fpga_pop_i2_initerations_pop17_bicg7 (
        .in_data_in(c_i2_190_q),
        .in_dir(redist1_sync_together127_aunroll_x_in_c0_eni11_1_tpl_1_q),
        .in_feedback_in_17(i_llvm_fpga_push_i2_initerations_push17_bicg9_out_feedback_out_17),
        .in_feedback_valid_in_17(i_llvm_fpga_push_i2_initerations_push17_bicg9_out_feedback_valid_out_17),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations_pop17_bicg7_out_data_out),
        .out_feedback_stall_out_17(i_llvm_fpga_pop_i2_initerations_pop17_bicg7_out_feedback_stall_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid356_i_next_initerations_bicg0_shift_x(MUX,355)@2
    assign rightShiftStage0_uid356_i_next_initerations_bicg0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid356_i_next_initerations_bicg0_shift_x_s or i_llvm_fpga_pop_i2_initerations_pop17_bicg7_out_data_out or rightShiftStage0Idx1_uid354_i_next_initerations_bicg0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid356_i_next_initerations_bicg0_shift_x_s)
            1'b0 : rightShiftStage0_uid356_i_next_initerations_bicg0_shift_x_q = i_llvm_fpga_pop_i2_initerations_pop17_bicg7_out_data_out;
            1'b1 : rightShiftStage0_uid356_i_next_initerations_bicg0_shift_x_q = rightShiftStage0Idx1_uid354_i_next_initerations_bicg0_shift_x_q;
            default : rightShiftStage0_uid356_i_next_initerations_bicg0_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations_bicg8_vt_select_0(BITSELECT,118)@2
    assign i_next_initerations_bicg8_vt_select_0_b = rightShiftStage0_uid356_i_next_initerations_bicg0_shift_x_q[0:0];

    // i_next_initerations_bicg8_vt_join(BITJOIN,117)@2
    assign i_next_initerations_bicg8_vt_join_q = {GND_q, i_next_initerations_bicg8_vt_select_0_b};

    // i_last_initeration_bicg10_sel_x(BITSELECT,208)@2
    assign i_last_initeration_bicg10_sel_x_b = i_next_initerations_bicg8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_bicg11(BLACKBOX,98)@2
    // out out_feedback_out_1@20000000
    // out out_feedback_valid_out_1@20000000
    bicg_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_bicg11 (
        .in_data_in(i_last_initeration_bicg10_sel_x_b),
        .in_feedback_stall_in_1(i_llvm_fpga_pipeline_keep_going_bicg6_out_initeration_stall_out),
        .in_keep_going(redist32_i_llvm_fpga_pipeline_keep_going_bicg6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_1(i_llvm_fpga_push_i1_lastiniteration_bicg11_out_feedback_out_1),
        .out_feedback_valid_out_1(i_llvm_fpga_push_i1_lastiniteration_bicg11_out_feedback_valid_out_1),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_bicg6(BLACKBOX,84)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    bicg_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_bicg6 (
        .in_data_in(in_c0_eni11_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_bicg11_out_feedback_out_1),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_bicg11_out_feedback_valid_out_1),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_bicg42_out_feedback_out_2),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_bicg42_out_feedback_valid_out_2),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_bicg6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_bicg6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_bicg6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_bicg6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_bicg6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_bicg6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,51)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_bicg6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_bicg6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_bicg6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_bicg6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,123)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_bicg6_out_pipeline_valid_out;

    // valid_fanout_reg6(REG,221)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist14_sync_together127_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist36_i_first_cleanup_xor_bicg4_q_1(DELAY,406)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_i_first_cleanup_xor_bicg4_q_1_q <= '0;
        end
        else
        begin
            redist36_i_first_cleanup_xor_bicg4_q_1_q <= $unsigned(i_first_cleanup_xor_bicg4_q);
        end
    end

    // c_bicg_r_local_pmem(CONSTANT,10)
    assign c_bicg_r_local_pmem_q = $unsigned(64'b0100000001000100000000000000000000000000000000000000000000000000);

    // i_arrayidx172_bicg0_upper_bits_x_merged_bit_select(BITSELECT,365)@3
    assign i_arrayidx172_bicg0_upper_bits_x_merged_bit_select_b = c_bicg_r_local_pmem_q[63:7];
    assign i_arrayidx172_bicg0_upper_bits_x_merged_bit_select_c = c_bicg_r_local_pmem_q[6:0];

    // valid_fanout_reg4(REG,219)@1 + 1
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

    // valid_fanout_reg5(REG,220)@1 + 1
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

    // i_llvm_fpga_push_i64_idxprom21_push21_bicg13(BLACKBOX,108)@2
    // out out_feedback_out_21@20000000
    // out out_feedback_valid_out_21@20000000
    bicg_i_llvm_fpga_push_i64_idxprom21_push21_0 thei_llvm_fpga_push_i64_idxprom21_push21_bicg13 (
        .in_data_in(i_llvm_fpga_pop_i64_idxprom21_pop21_bicg12_out_data_out),
        .in_feedback_stall_in_21(i_llvm_fpga_pop_i64_idxprom21_pop21_bicg12_out_feedback_stall_out_21),
        .in_keep_going(redist32_i_llvm_fpga_pipeline_keep_going_bicg6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_21(i_llvm_fpga_push_i64_idxprom21_push21_bicg13_out_feedback_out_21),
        .out_feedback_valid_out_21(i_llvm_fpga_push_i64_idxprom21_push21_bicg13_out_feedback_valid_out_21),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_sync_together127_aunroll_x_in_c0_eni11_2_tpl_1(DELAY,374)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together127_aunroll_x_in_c0_eni11_2_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together127_aunroll_x_in_c0_eni11_2_tpl_1_q <= $unsigned(in_c0_eni11_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i64_idxprom21_pop21_bicg12(BLACKBOX,94)@2
    // out out_feedback_stall_out_21@20000000
    bicg_i_llvm_fpga_pop_i64_idxprom21_pop21_0 thei_llvm_fpga_pop_i64_idxprom21_pop21_bicg12 (
        .in_data_in(redist4_sync_together127_aunroll_x_in_c0_eni11_2_tpl_1_q),
        .in_dir(redist1_sync_together127_aunroll_x_in_c0_eni11_1_tpl_1_q),
        .in_feedback_in_21(i_llvm_fpga_push_i64_idxprom21_push21_bicg13_out_feedback_out_21),
        .in_feedback_valid_in_21(i_llvm_fpga_push_i64_idxprom21_push21_bicg13_out_feedback_valid_out_21),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i64_idxprom21_pop21_bicg12_out_data_out),
        .out_feedback_stall_out_21(i_llvm_fpga_pop_i64_idxprom21_pop21_bicg12_out_feedback_stall_out_21),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx172_bicg0_dupName_0_trunc_sel_x(BITSELECT,188)@2
    assign i_arrayidx172_bicg0_dupName_0_trunc_sel_x_b = i_llvm_fpga_pop_i64_idxprom21_pop21_bicg12_out_data_out[6:0];

    // i_arrayidx172_bicg0_narrow_x(BITSELECT,181)@2
    assign i_arrayidx172_bicg0_narrow_x_b = i_arrayidx172_bicg0_dupName_0_trunc_sel_x_b[4:0];

    // redist18_i_arrayidx172_bicg0_narrow_x_b_1(DELAY,388)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_arrayidx172_bicg0_narrow_x_b_1_q <= '0;
        end
        else
        begin
            redist18_i_arrayidx172_bicg0_narrow_x_b_1_q <= $unsigned(i_arrayidx172_bicg0_narrow_x_b);
        end
    end

    // i_arrayidx172_bicg0_shift_join_x(BITJOIN,182)@3
    assign i_arrayidx172_bicg0_shift_join_x_q = {redist18_i_arrayidx172_bicg0_narrow_x_b_1_q, i_arrayidx133_bicg18_vt_const_1_q};

    // i_arrayidx172_bicg0_add_x(ADD,178)@3
    assign i_arrayidx172_bicg0_add_x_a = {1'b0, i_arrayidx172_bicg0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx172_bicg0_add_x_b = {1'b0, i_arrayidx172_bicg0_shift_join_x_q};
    assign i_arrayidx172_bicg0_add_x_o = $unsigned(i_arrayidx172_bicg0_add_x_a) + $unsigned(i_arrayidx172_bicg0_add_x_b);
    assign i_arrayidx172_bicg0_add_x_q = i_arrayidx172_bicg0_add_x_o[7:0];

    // i_arrayidx172_bicg0_dupName_2_trunc_sel_x(BITSELECT,189)@3
    assign i_arrayidx172_bicg0_dupName_2_trunc_sel_x_b = i_arrayidx172_bicg0_add_x_q[6:0];

    // i_arrayidx172_bicg0_append_upper_bits_x(BITJOIN,179)@3
    assign i_arrayidx172_bicg0_append_upper_bits_x_q = {i_arrayidx172_bicg0_upper_bits_x_merged_bit_select_b, i_arrayidx172_bicg0_dupName_2_trunc_sel_x_b};

    // i_arrayidx172_bicg14_vt_select_63(BITSELECT,62)@3
    assign i_arrayidx172_bicg14_vt_select_63_b = i_arrayidx172_bicg0_append_upper_bits_x_q[63:2];

    // i_arrayidx133_bicg18_vt_const_1(CONSTANT,54)
    assign i_arrayidx133_bicg18_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx172_bicg14_vt_join(BITJOIN,61)@3
    assign i_arrayidx172_bicg14_vt_join_q = {i_arrayidx172_bicg14_vt_select_63_b, i_arrayidx133_bicg18_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_bicg5_bicg15(BLACKBOX,80)@3
    // in in_i_stall@20000000
    // out out_o_readdata@7
    // out out_o_stall@6
    // out out_o_valid@7
    // out out_unnamed_bicg5_bicg_avm_address@20000000
    // out out_unnamed_bicg5_bicg_avm_burstcount@20000000
    // out out_unnamed_bicg5_bicg_avm_byteenable@20000000
    // out out_unnamed_bicg5_bicg_avm_enable@20000000
    // out out_unnamed_bicg5_bicg_avm_read@20000000
    // out out_unnamed_bicg5_bicg_avm_write@20000000
    // out out_unnamed_bicg5_bicg_avm_writedata@20000000
    bicg_i_llvm_fpga_mem_unnamed_5_bicg0 thei_llvm_fpga_mem_unnamed_bicg5_bicg15 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx172_bicg14_vt_join_q),
        .in_i_predicate(redist36_i_first_cleanup_xor_bicg4_q_1_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg6_q),
        .in_unnamed_bicg5_bicg_avm_readdata(in_unnamed_bicg5_bicg_avm_readdata),
        .in_unnamed_bicg5_bicg_avm_readdatavalid(in_unnamed_bicg5_bicg_avm_readdatavalid),
        .in_unnamed_bicg5_bicg_avm_waitrequest(in_unnamed_bicg5_bicg_avm_waitrequest),
        .in_unnamed_bicg5_bicg_avm_writeack(in_unnamed_bicg5_bicg_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_bicg5_bicg15_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_bicg5_bicg_avm_address(i_llvm_fpga_mem_unnamed_bicg5_bicg15_out_unnamed_bicg5_bicg_avm_address),
        .out_unnamed_bicg5_bicg_avm_burstcount(i_llvm_fpga_mem_unnamed_bicg5_bicg15_out_unnamed_bicg5_bicg_avm_burstcount),
        .out_unnamed_bicg5_bicg_avm_byteenable(i_llvm_fpga_mem_unnamed_bicg5_bicg15_out_unnamed_bicg5_bicg_avm_byteenable),
        .out_unnamed_bicg5_bicg_avm_enable(i_llvm_fpga_mem_unnamed_bicg5_bicg15_out_unnamed_bicg5_bicg_avm_enable),
        .out_unnamed_bicg5_bicg_avm_read(i_llvm_fpga_mem_unnamed_bicg5_bicg15_out_unnamed_bicg5_bicg_avm_read),
        .out_unnamed_bicg5_bicg_avm_write(i_llvm_fpga_mem_unnamed_bicg5_bicg15_out_unnamed_bicg5_bicg_avm_write),
        .out_unnamed_bicg5_bicg_avm_writedata(i_llvm_fpga_mem_unnamed_bicg5_bicg15_out_unnamed_bicg5_bicg_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,134)
    assign out_unnamed_bicg5_bicg_avm_address = i_llvm_fpga_mem_unnamed_bicg5_bicg15_out_unnamed_bicg5_bicg_avm_address;
    assign out_unnamed_bicg5_bicg_avm_enable = i_llvm_fpga_mem_unnamed_bicg5_bicg15_out_unnamed_bicg5_bicg_avm_enable;
    assign out_unnamed_bicg5_bicg_avm_read = i_llvm_fpga_mem_unnamed_bicg5_bicg15_out_unnamed_bicg5_bicg_avm_read;
    assign out_unnamed_bicg5_bicg_avm_write = i_llvm_fpga_mem_unnamed_bicg5_bicg15_out_unnamed_bicg5_bicg_avm_write;
    assign out_unnamed_bicg5_bicg_avm_writedata = i_llvm_fpga_mem_unnamed_bicg5_bicg15_out_unnamed_bicg5_bicg_avm_writedata;
    assign out_unnamed_bicg5_bicg_avm_byteenable = i_llvm_fpga_mem_unnamed_bicg5_bicg15_out_unnamed_bicg5_bicg_avm_byteenable;
    assign out_unnamed_bicg5_bicg_avm_burstcount = i_llvm_fpga_mem_unnamed_bicg5_bicg15_out_unnamed_bicg5_bicg_avm_burstcount;

    // valid_fanout_reg8(REG,223)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist14_sync_together127_aunroll_x_in_i_valid_1_q);
        end
    end

    // c_bicg_A_local_pmem(CONSTANT,8)
    assign c_bicg_A_local_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx133_bicg0_upper_bits_x_merged_bit_select(BITSELECT,363)@3
    assign i_arrayidx133_bicg0_upper_bits_x_merged_bit_select_b = c_bicg_A_local_pmem_q[63:12];
    assign i_arrayidx133_bicg0_upper_bits_x_merged_bit_select_c = c_bicg_A_local_pmem_q[11:0];

    // c_i32_092(CONSTANT,46)
    assign c_i32_092_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg7(REG,222)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist14_sync_together127_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg18(REG,233)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg18_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(redist14_sync_together127_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist33_i_llvm_fpga_pipeline_keep_going_bicg6_out_data_out_2(DELAY,403)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_i_llvm_fpga_pipeline_keep_going_bicg6_out_data_out_2_q <= '0;
        end
        else
        begin
            redist33_i_llvm_fpga_pipeline_keep_going_bicg6_out_data_out_2_q <= $unsigned(redist32_i_llvm_fpga_pipeline_keep_going_bicg6_out_data_out_1_q);
        end
    end

    // c_i32_193(CONSTANT,47)
    assign c_i32_193_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_bicg36(ADD,77)@3
    assign i_inc_bicg36_a = {1'b0, i_llvm_fpga_pop_i32_j_017_pop16_bicg16_out_data_out};
    assign i_inc_bicg36_b = {1'b0, c_i32_193_q};
    assign i_inc_bicg36_o = $unsigned(i_inc_bicg36_a) + $unsigned(i_inc_bicg36_b);
    assign i_inc_bicg36_q = i_inc_bicg36_o[32:0];

    // bgTrunc_i_inc_bicg36_sel_x(BITSELECT,129)@3
    assign bgTrunc_i_inc_bicg36_sel_x_b = i_inc_bicg36_q[31:0];

    // i_llvm_fpga_push_i32_j_017_push16_bicg37(BLACKBOX,106)@3
    // out out_feedback_out_16@20000000
    // out out_feedback_valid_out_16@20000000
    bicg_i_llvm_fpga_push_i32_j_017_push16_0 thei_llvm_fpga_push_i32_j_017_push16_bicg37 (
        .in_data_in(bgTrunc_i_inc_bicg36_sel_x_b),
        .in_feedback_stall_in_16(i_llvm_fpga_pop_i32_j_017_pop16_bicg16_out_feedback_stall_out_16),
        .in_keep_going(redist33_i_llvm_fpga_pipeline_keep_going_bicg6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_data_out(),
        .out_feedback_out_16(i_llvm_fpga_push_i32_j_017_push16_bicg37_out_feedback_out_16),
        .out_feedback_valid_out_16(i_llvm_fpga_push_i32_j_017_push16_bicg37_out_feedback_valid_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together127_aunroll_x_in_c0_eni11_1_tpl_2(DELAY,372)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together127_aunroll_x_in_c0_eni11_1_tpl_2_q <= '0;
        end
        else
        begin
            redist2_sync_together127_aunroll_x_in_c0_eni11_1_tpl_2_q <= $unsigned(redist1_sync_together127_aunroll_x_in_c0_eni11_1_tpl_1_q);
        end
    end

    // i_llvm_fpga_pop_i32_j_017_pop16_bicg16(BLACKBOX,92)@3
    // out out_feedback_stall_out_16@20000000
    bicg_i_llvm_fpga_pop_i32_j_017_pop16_0 thei_llvm_fpga_pop_i32_j_017_pop16_bicg16 (
        .in_data_in(c_i32_092_q),
        .in_dir(redist2_sync_together127_aunroll_x_in_c0_eni11_1_tpl_2_q),
        .in_feedback_in_16(i_llvm_fpga_push_i32_j_017_push16_bicg37_out_feedback_out_16),
        .in_feedback_valid_in_16(i_llvm_fpga_push_i32_j_017_push16_bicg37_out_feedback_valid_out_16),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_i32_j_017_pop16_bicg16_out_data_out),
        .out_feedback_stall_out_16(i_llvm_fpga_pop_i32_j_017_pop16_bicg16_out_feedback_stall_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom12_bicg17_sel_x(BITSELECT,207)@3
    assign i_idxprom12_bicg17_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_j_017_pop16_bicg16_out_data_out[31:0]};

    // i_idxprom12_bicg17_vt_select_31(BITSELECT,76)@3
    assign i_idxprom12_bicg17_vt_select_31_b = i_idxprom12_bicg17_sel_x_b[31:0];

    // i_idxprom12_bicg17_vt_join(BITJOIN,75)@3
    assign i_idxprom12_bicg17_vt_join_q = {c_i32_092_q, i_idxprom12_bicg17_vt_select_31_b};

    // i_arrayidx133_bicg0_dupName_3_trunc_sel_x(BITSELECT,164)@3
    assign i_arrayidx133_bicg0_dupName_3_trunc_sel_x_b = i_idxprom12_bicg17_vt_join_q[11:0];

    // i_arrayidx133_bicg0_narrow_x(BITSELECT,147)@3
    assign i_arrayidx133_bicg0_narrow_x_b = i_arrayidx133_bicg0_dupName_3_trunc_sel_x_b[9:0];

    // i_arrayidx133_bicg0_shift_join_x(BITJOIN,148)@3
    assign i_arrayidx133_bicg0_shift_join_x_q = {i_arrayidx133_bicg0_narrow_x_b, i_arrayidx133_bicg18_vt_const_1_q};

    // i_arrayidx133_bicg0_mult_multconst_x(CONSTANT,159)
    assign i_arrayidx133_bicg0_mult_multconst_x_q = $unsigned(5'b00000);

    // i_arrayidx133_bicg0_dupName_0_trunc_sel_x(BITSELECT,161)@2
    assign i_arrayidx133_bicg0_dupName_0_trunc_sel_x_b = i_llvm_fpga_pop_i64_idxprom21_pop21_bicg12_out_data_out[11:0];

    // xIfSign_mergedSignalTM_uid310_i_arrayidx133_bicg0_mult_x(BITJOIN,309)@2
    assign xIfSign_mergedSignalTM_uid310_i_arrayidx133_bicg0_mult_x_q = {GND_q, i_arrayidx133_bicg0_dupName_0_trunc_sel_x_b};

    // padACst_uid314_i_arrayidx133_bicg0_mult_x(CONSTANT,313)
    assign padACst_uid314_i_arrayidx133_bicg0_mult_x_q = $unsigned(4'b0000);

    // aPostPad_uid315_i_arrayidx133_bicg0_mult_x(BITJOIN,314)@2
    assign aPostPad_uid315_i_arrayidx133_bicg0_mult_x_q = {xIfSign_mergedSignalTM_uid310_i_arrayidx133_bicg0_mult_x_q, padACst_uid314_i_arrayidx133_bicg0_mult_x_q};

    // sub_uid316_i_arrayidx133_bicg0_mult_x(SUB,315)@2
    assign sub_uid316_i_arrayidx133_bicg0_mult_x_a = $unsigned({{1{aPostPad_uid315_i_arrayidx133_bicg0_mult_x_q[16]}}, aPostPad_uid315_i_arrayidx133_bicg0_mult_x_q});
    assign sub_uid316_i_arrayidx133_bicg0_mult_x_b = $unsigned({{5{xIfSign_mergedSignalTM_uid310_i_arrayidx133_bicg0_mult_x_q[12]}}, xIfSign_mergedSignalTM_uid310_i_arrayidx133_bicg0_mult_x_q});
    assign sub_uid316_i_arrayidx133_bicg0_mult_x_o = $unsigned($signed(sub_uid316_i_arrayidx133_bicg0_mult_x_a) - $signed(sub_uid316_i_arrayidx133_bicg0_mult_x_b));
    assign sub_uid316_i_arrayidx133_bicg0_mult_x_q = sub_uid316_i_arrayidx133_bicg0_mult_x_o[17:0];

    // sR_bottomRange_uid320_i_arrayidx133_bicg0_mult_x(BITSELECT,319)@2
    assign sR_bottomRange_uid320_i_arrayidx133_bicg0_mult_x_in = $unsigned(sub_uid316_i_arrayidx133_bicg0_mult_x_q[15:0]);
    assign sR_bottomRange_uid320_i_arrayidx133_bicg0_mult_x_b = $unsigned(sR_bottomRange_uid320_i_arrayidx133_bicg0_mult_x_in[15:0]);

    // sR_bottomExtension_uid319_i_arrayidx133_bicg0_mult_x(CONSTANT,318)
    assign sR_bottomExtension_uid319_i_arrayidx133_bicg0_mult_x_q = $unsigned(3'b000);

    // sR_mergedSignalTM_uid321_i_arrayidx133_bicg0_mult_x(BITJOIN,320)@2
    assign sR_mergedSignalTM_uid321_i_arrayidx133_bicg0_mult_x_q = {sR_bottomRange_uid320_i_arrayidx133_bicg0_mult_x_b, sR_bottomExtension_uid319_i_arrayidx133_bicg0_mult_x_q};

    // i_arrayidx133_bicg0_mult_extender_x(BITJOIN,158)@2
    assign i_arrayidx133_bicg0_mult_extender_x_q = {i_arrayidx133_bicg0_mult_multconst_x_q, sR_mergedSignalTM_uid321_i_arrayidx133_bicg0_mult_x_q};

    // i_arrayidx133_bicg0_dupName_1_trunc_sel_x(BITSELECT,162)@2
    assign i_arrayidx133_bicg0_dupName_1_trunc_sel_x_b = i_arrayidx133_bicg0_mult_extender_x_q[11:0];

    // redist20_i_arrayidx133_bicg0_dupName_1_trunc_sel_x_b_1(DELAY,390)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_arrayidx133_bicg0_dupName_1_trunc_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist20_i_arrayidx133_bicg0_dupName_1_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx133_bicg0_dupName_1_trunc_sel_x_b);
        end
    end

    // i_arrayidx133_bicg0_add_x(ADD,142)@3
    assign i_arrayidx133_bicg0_add_x_a = {1'b0, i_arrayidx133_bicg0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx133_bicg0_add_x_b = {1'b0, redist20_i_arrayidx133_bicg0_dupName_1_trunc_sel_x_b_1_q};
    assign i_arrayidx133_bicg0_add_x_o = $unsigned(i_arrayidx133_bicg0_add_x_a) + $unsigned(i_arrayidx133_bicg0_add_x_b);
    assign i_arrayidx133_bicg0_add_x_q = i_arrayidx133_bicg0_add_x_o[12:0];

    // i_arrayidx133_bicg0_dupName_2_trunc_sel_x(BITSELECT,163)@3
    assign i_arrayidx133_bicg0_dupName_2_trunc_sel_x_b = i_arrayidx133_bicg0_add_x_q[11:0];

    // i_arrayidx133_bicg0_dupName_0_add_x(ADD,152)@3
    assign i_arrayidx133_bicg0_dupName_0_add_x_a = {1'b0, i_arrayidx133_bicg0_dupName_2_trunc_sel_x_b};
    assign i_arrayidx133_bicg0_dupName_0_add_x_b = {1'b0, i_arrayidx133_bicg0_shift_join_x_q};
    assign i_arrayidx133_bicg0_dupName_0_add_x_o = $unsigned(i_arrayidx133_bicg0_dupName_0_add_x_a) + $unsigned(i_arrayidx133_bicg0_dupName_0_add_x_b);
    assign i_arrayidx133_bicg0_dupName_0_add_x_q = i_arrayidx133_bicg0_dupName_0_add_x_o[12:0];

    // i_arrayidx133_bicg0_dupName_5_trunc_sel_x(BITSELECT,165)@3
    assign i_arrayidx133_bicg0_dupName_5_trunc_sel_x_b = i_arrayidx133_bicg0_dupName_0_add_x_q[11:0];

    // i_arrayidx133_bicg0_append_upper_bits_x(BITJOIN,143)@3
    assign i_arrayidx133_bicg0_append_upper_bits_x_q = {i_arrayidx133_bicg0_upper_bits_x_merged_bit_select_b, i_arrayidx133_bicg0_dupName_5_trunc_sel_x_b};

    // i_arrayidx133_bicg18_vt_select_63(BITSELECT,56)@3
    assign i_arrayidx133_bicg18_vt_select_63_b = i_arrayidx133_bicg0_append_upper_bits_x_q[63:2];

    // i_arrayidx133_bicg18_vt_join(BITJOIN,55)@3
    assign i_arrayidx133_bicg18_vt_join_q = {i_arrayidx133_bicg18_vt_select_63_b, i_arrayidx133_bicg18_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_bicg6_bicg19(BLACKBOX,81)@3
    // in in_i_stall@20000000
    // out out_o_readdata@7
    // out out_o_stall@6
    // out out_o_valid@7
    // out out_unnamed_bicg6_bicg_avm_address@20000000
    // out out_unnamed_bicg6_bicg_avm_burstcount@20000000
    // out out_unnamed_bicg6_bicg_avm_byteenable@20000000
    // out out_unnamed_bicg6_bicg_avm_enable@20000000
    // out out_unnamed_bicg6_bicg_avm_read@20000000
    // out out_unnamed_bicg6_bicg_avm_write@20000000
    // out out_unnamed_bicg6_bicg_avm_writedata@20000000
    bicg_i_llvm_fpga_mem_unnamed_6_bicg0 thei_llvm_fpga_mem_unnamed_bicg6_bicg19 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx133_bicg18_vt_join_q),
        .in_i_predicate(redist36_i_first_cleanup_xor_bicg4_q_1_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg8_q),
        .in_unnamed_bicg6_bicg_avm_readdata(in_unnamed_bicg6_bicg_avm_readdata),
        .in_unnamed_bicg6_bicg_avm_readdatavalid(in_unnamed_bicg6_bicg_avm_readdatavalid),
        .in_unnamed_bicg6_bicg_avm_waitrequest(in_unnamed_bicg6_bicg_avm_waitrequest),
        .in_unnamed_bicg6_bicg_avm_writeack(in_unnamed_bicg6_bicg_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_bicg6_bicg19_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_bicg6_bicg_avm_address(i_llvm_fpga_mem_unnamed_bicg6_bicg19_out_unnamed_bicg6_bicg_avm_address),
        .out_unnamed_bicg6_bicg_avm_burstcount(i_llvm_fpga_mem_unnamed_bicg6_bicg19_out_unnamed_bicg6_bicg_avm_burstcount),
        .out_unnamed_bicg6_bicg_avm_byteenable(i_llvm_fpga_mem_unnamed_bicg6_bicg19_out_unnamed_bicg6_bicg_avm_byteenable),
        .out_unnamed_bicg6_bicg_avm_enable(i_llvm_fpga_mem_unnamed_bicg6_bicg19_out_unnamed_bicg6_bicg_avm_enable),
        .out_unnamed_bicg6_bicg_avm_read(i_llvm_fpga_mem_unnamed_bicg6_bicg19_out_unnamed_bicg6_bicg_avm_read),
        .out_unnamed_bicg6_bicg_avm_write(i_llvm_fpga_mem_unnamed_bicg6_bicg19_out_unnamed_bicg6_bicg_avm_write),
        .out_unnamed_bicg6_bicg_avm_writedata(i_llvm_fpga_mem_unnamed_bicg6_bicg19_out_unnamed_bicg6_bicg_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_ext_sig_sync_out_x(GPOUT,136)
    assign out_unnamed_bicg6_bicg_avm_address = i_llvm_fpga_mem_unnamed_bicg6_bicg19_out_unnamed_bicg6_bicg_avm_address;
    assign out_unnamed_bicg6_bicg_avm_enable = i_llvm_fpga_mem_unnamed_bicg6_bicg19_out_unnamed_bicg6_bicg_avm_enable;
    assign out_unnamed_bicg6_bicg_avm_read = i_llvm_fpga_mem_unnamed_bicg6_bicg19_out_unnamed_bicg6_bicg_avm_read;
    assign out_unnamed_bicg6_bicg_avm_write = i_llvm_fpga_mem_unnamed_bicg6_bicg19_out_unnamed_bicg6_bicg_avm_write;
    assign out_unnamed_bicg6_bicg_avm_writedata = i_llvm_fpga_mem_unnamed_bicg6_bicg19_out_unnamed_bicg6_bicg_avm_writedata;
    assign out_unnamed_bicg6_bicg_avm_byteenable = i_llvm_fpga_mem_unnamed_bicg6_bicg19_out_unnamed_bicg6_bicg_avm_byteenable;
    assign out_unnamed_bicg6_bicg_avm_burstcount = i_llvm_fpga_mem_unnamed_bicg6_bicg19_out_unnamed_bicg6_bicg_avm_burstcount;

    // redist15_sync_together127_aunroll_x_in_i_valid_5(DELAY,385)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together127_aunroll_x_in_i_valid_5_delay_0 <= '0;
            redist15_sync_together127_aunroll_x_in_i_valid_5_delay_1 <= '0;
            redist15_sync_together127_aunroll_x_in_i_valid_5_delay_2 <= '0;
            redist15_sync_together127_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist15_sync_together127_aunroll_x_in_i_valid_5_delay_0 <= $unsigned(redist14_sync_together127_aunroll_x_in_i_valid_1_q);
            redist15_sync_together127_aunroll_x_in_i_valid_5_delay_1 <= redist15_sync_together127_aunroll_x_in_i_valid_5_delay_0;
            redist15_sync_together127_aunroll_x_in_i_valid_5_delay_2 <= redist15_sync_together127_aunroll_x_in_i_valid_5_delay_1;
            redist15_sync_together127_aunroll_x_in_i_valid_5_q <= redist15_sync_together127_aunroll_x_in_i_valid_5_delay_2;
        end
    end

    // valid_fanout_reg13(REG,228)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist15_sync_together127_aunroll_x_in_i_valid_5_q);
        end
    end

    // redist37_i_first_cleanup_xor_bicg4_q_5(DELAY,407)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_i_first_cleanup_xor_bicg4_q_5_delay_0 <= '0;
            redist37_i_first_cleanup_xor_bicg4_q_5_delay_1 <= '0;
            redist37_i_first_cleanup_xor_bicg4_q_5_delay_2 <= '0;
            redist37_i_first_cleanup_xor_bicg4_q_5_q <= '0;
        end
        else
        begin
            redist37_i_first_cleanup_xor_bicg4_q_5_delay_0 <= $unsigned(redist36_i_first_cleanup_xor_bicg4_q_1_q);
            redist37_i_first_cleanup_xor_bicg4_q_5_delay_1 <= redist37_i_first_cleanup_xor_bicg4_q_5_delay_0;
            redist37_i_first_cleanup_xor_bicg4_q_5_delay_2 <= redist37_i_first_cleanup_xor_bicg4_q_5_delay_1;
            redist37_i_first_cleanup_xor_bicg4_q_5_q <= redist37_i_first_cleanup_xor_bicg4_q_5_delay_2;
        end
    end

    // valid_fanout_reg9(REG,224)@1 + 1
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

    // valid_fanout_reg10(REG,225)@1 + 1
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

    // i_llvm_fpga_push_i1_memdep_phi3_pop820_push20_bicg22(BLACKBOX,100)@2
    // out out_feedback_out_20@20000000
    // out out_feedback_valid_out_20@20000000
    bicg_i_llvm_fpga_push_i1_memdep_phi3_pop820_push20_0 thei_llvm_fpga_push_i1_memdep_phi3_pop820_push20_bicg22 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi3_pop820_pop20_bicg21_out_data_out),
        .in_feedback_stall_in_20(i_llvm_fpga_pop_i1_memdep_phi3_pop820_pop20_bicg21_out_feedback_stall_out_20),
        .in_keep_going(redist32_i_llvm_fpga_pipeline_keep_going_bicg6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_20(i_llvm_fpga_push_i1_memdep_phi3_pop820_push20_bicg22_out_feedback_out_20),
        .out_feedback_valid_out_20(i_llvm_fpga_push_i1_memdep_phi3_pop820_push20_bicg22_out_feedback_valid_out_20),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_sync_together127_aunroll_x_in_c0_eni11_3_tpl_1(DELAY,375)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together127_aunroll_x_in_c0_eni11_3_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together127_aunroll_x_in_c0_eni11_3_tpl_1_q <= $unsigned(in_c0_eni11_3_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi3_pop820_pop20_bicg21(BLACKBOX,87)@2
    // out out_feedback_stall_out_20@20000000
    bicg_i_llvm_fpga_pop_i1_memdep_phi3_pop820_pop20_0 thei_llvm_fpga_pop_i1_memdep_phi3_pop820_pop20_bicg21 (
        .in_data_in(redist5_sync_together127_aunroll_x_in_c0_eni11_3_tpl_1_q),
        .in_dir(redist1_sync_together127_aunroll_x_in_c0_eni11_1_tpl_1_q),
        .in_feedback_in_20(i_llvm_fpga_push_i1_memdep_phi3_pop820_push20_bicg22_out_feedback_out_20),
        .in_feedback_valid_in_20(i_llvm_fpga_push_i1_memdep_phi3_pop820_push20_bicg22_out_feedback_valid_out_20),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi3_pop820_pop20_bicg21_out_data_out),
        .out_feedback_stall_out_20(i_llvm_fpga_pop_i1_memdep_phi3_pop820_pop20_bicg21_out_feedback_stall_out_20),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg11(REG,226)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg12(REG,227)@1 + 1
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

    // i_llvm_fpga_push_i1_memdep_phi2_pop1125_push25_bicg24(BLACKBOX,99)@2
    // out out_feedback_out_25@20000000
    // out out_feedback_valid_out_25@20000000
    bicg_i_llvm_fpga_push_i1_memdep_phi2_pop1125_push25_0 thei_llvm_fpga_push_i1_memdep_phi2_pop1125_push25_bicg24 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi2_pop1125_pop25_bicg23_out_data_out),
        .in_feedback_stall_in_25(i_llvm_fpga_pop_i1_memdep_phi2_pop1125_pop25_bicg23_out_feedback_stall_out_25),
        .in_keep_going(redist32_i_llvm_fpga_pipeline_keep_going_bicg6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(),
        .out_feedback_out_25(i_llvm_fpga_push_i1_memdep_phi2_pop1125_push25_bicg24_out_feedback_out_25),
        .out_feedback_valid_out_25(i_llvm_fpga_push_i1_memdep_phi2_pop1125_push25_bicg24_out_feedback_valid_out_25),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_sync_together127_aunroll_x_in_c0_eni11_4_tpl_1(DELAY,376)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together127_aunroll_x_in_c0_eni11_4_tpl_1_q <= '0;
        end
        else
        begin
            redist6_sync_together127_aunroll_x_in_c0_eni11_4_tpl_1_q <= $unsigned(in_c0_eni11_4_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi2_pop1125_pop25_bicg23(BLACKBOX,86)@2
    // out out_feedback_stall_out_25@20000000
    bicg_i_llvm_fpga_pop_i1_memdep_phi2_pop1125_pop25_0 thei_llvm_fpga_pop_i1_memdep_phi2_pop1125_pop25_bicg23 (
        .in_data_in(redist6_sync_together127_aunroll_x_in_c0_eni11_4_tpl_1_q),
        .in_dir(redist1_sync_together127_aunroll_x_in_c0_eni11_1_tpl_1_q),
        .in_feedback_in_25(i_llvm_fpga_push_i1_memdep_phi2_pop1125_push25_bicg24_out_feedback_out_25),
        .in_feedback_valid_in_25(i_llvm_fpga_push_i1_memdep_phi2_pop1125_push25_bicg24_out_feedback_valid_out_25),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi2_pop1125_pop25_bicg23_out_data_out),
        .out_feedback_stall_out_25(i_llvm_fpga_pop_i1_memdep_phi2_pop1125_pop25_bicg23_out_feedback_stall_out_25),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_memdep_phi3_or_bicg25(LOGICAL,112)@2 + 1
    assign i_memdep_phi3_or_bicg25_qi = i_llvm_fpga_pop_i1_memdep_phi2_pop1125_pop25_bicg23_out_data_out | i_llvm_fpga_pop_i1_memdep_phi3_pop820_pop20_bicg21_out_data_out;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_memdep_phi3_or_bicg25_delay ( .xin(i_memdep_phi3_or_bicg25_qi), .xout(i_memdep_phi3_or_bicg25_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist24_i_memdep_phi3_or_bicg25_q_5(DELAY,394)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_memdep_phi3_or_bicg25_q_5_delay_0 <= '0;
            redist24_i_memdep_phi3_or_bicg25_q_5_delay_1 <= '0;
            redist24_i_memdep_phi3_or_bicg25_q_5_delay_2 <= '0;
            redist24_i_memdep_phi3_or_bicg25_q_5_q <= '0;
        end
        else
        begin
            redist24_i_memdep_phi3_or_bicg25_q_5_delay_0 <= $unsigned(i_memdep_phi3_or_bicg25_q);
            redist24_i_memdep_phi3_or_bicg25_q_5_delay_1 <= redist24_i_memdep_phi3_or_bicg25_q_5_delay_0;
            redist24_i_memdep_phi3_or_bicg25_q_5_delay_2 <= redist24_i_memdep_phi3_or_bicg25_q_5_delay_1;
            redist24_i_memdep_phi3_or_bicg25_q_5_q <= redist24_i_memdep_phi3_or_bicg25_q_5_delay_2;
        end
    end

    // c_bicg_s_local_pmem(CONSTANT,11)
    assign c_bicg_s_local_pmem_q = $unsigned(64'b0100000001000001000000000000000000000000000000000000000000000000);

    // i_arrayidx154_bicg0_upper_bits_x_merged_bit_select(BITSELECT,366)@7
    assign i_arrayidx154_bicg0_upper_bits_x_merged_bit_select_b = c_bicg_s_local_pmem_q[63:7];
    assign i_arrayidx154_bicg0_upper_bits_x_merged_bit_select_c = c_bicg_s_local_pmem_q[6:0];

    // i_arrayidx154_bicg0_dupName_0_trunc_sel_x(BITSELECT,176)@3
    assign i_arrayidx154_bicg0_dupName_0_trunc_sel_x_b = i_idxprom12_bicg17_vt_join_q[6:0];

    // i_arrayidx154_bicg0_narrow_x(BITSELECT,169)@3
    assign i_arrayidx154_bicg0_narrow_x_b = i_arrayidx154_bicg0_dupName_0_trunc_sel_x_b[4:0];

    // i_arrayidx154_bicg0_shift_join_x(BITJOIN,170)@3
    assign i_arrayidx154_bicg0_shift_join_x_q = {i_arrayidx154_bicg0_narrow_x_b, i_arrayidx133_bicg18_vt_const_1_q};

    // redist19_i_arrayidx154_bicg0_shift_join_x_q_4(DELAY,389)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_arrayidx154_bicg0_shift_join_x_q_4_delay_0 <= '0;
            redist19_i_arrayidx154_bicg0_shift_join_x_q_4_delay_1 <= '0;
            redist19_i_arrayidx154_bicg0_shift_join_x_q_4_delay_2 <= '0;
            redist19_i_arrayidx154_bicg0_shift_join_x_q_4_q <= '0;
        end
        else
        begin
            redist19_i_arrayidx154_bicg0_shift_join_x_q_4_delay_0 <= $unsigned(i_arrayidx154_bicg0_shift_join_x_q);
            redist19_i_arrayidx154_bicg0_shift_join_x_q_4_delay_1 <= redist19_i_arrayidx154_bicg0_shift_join_x_q_4_delay_0;
            redist19_i_arrayidx154_bicg0_shift_join_x_q_4_delay_2 <= redist19_i_arrayidx154_bicg0_shift_join_x_q_4_delay_1;
            redist19_i_arrayidx154_bicg0_shift_join_x_q_4_q <= redist19_i_arrayidx154_bicg0_shift_join_x_q_4_delay_2;
        end
    end

    // i_arrayidx154_bicg0_add_x(ADD,166)@7
    assign i_arrayidx154_bicg0_add_x_a = {1'b0, i_arrayidx154_bicg0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx154_bicg0_add_x_b = {1'b0, redist19_i_arrayidx154_bicg0_shift_join_x_q_4_q};
    assign i_arrayidx154_bicg0_add_x_o = $unsigned(i_arrayidx154_bicg0_add_x_a) + $unsigned(i_arrayidx154_bicg0_add_x_b);
    assign i_arrayidx154_bicg0_add_x_q = i_arrayidx154_bicg0_add_x_o[7:0];

    // i_arrayidx154_bicg0_dupName_2_trunc_sel_x(BITSELECT,177)@7
    assign i_arrayidx154_bicg0_dupName_2_trunc_sel_x_b = i_arrayidx154_bicg0_add_x_q[6:0];

    // i_arrayidx154_bicg0_append_upper_bits_x(BITJOIN,167)@7
    assign i_arrayidx154_bicg0_append_upper_bits_x_q = {i_arrayidx154_bicg0_upper_bits_x_merged_bit_select_b, i_arrayidx154_bicg0_dupName_2_trunc_sel_x_b};

    // i_arrayidx154_bicg20_vt_select_63(BITSELECT,59)@7
    assign i_arrayidx154_bicg20_vt_select_63_b = i_arrayidx154_bicg0_append_upper_bits_x_q[63:2];

    // i_arrayidx154_bicg20_vt_join(BITJOIN,58)@7
    assign i_arrayidx154_bicg20_vt_join_q = {i_arrayidx154_bicg20_vt_select_63_b, i_arrayidx133_bicg18_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_bicg7_bicg26(BLACKBOX,82)@7
    // in in_i_stall@20000000
    // out out_o_readdata@11
    // out out_o_stall@10
    // out out_o_valid@11
    // out out_unnamed_bicg7_bicg_avm_address@20000000
    // out out_unnamed_bicg7_bicg_avm_burstcount@20000000
    // out out_unnamed_bicg7_bicg_avm_byteenable@20000000
    // out out_unnamed_bicg7_bicg_avm_enable@20000000
    // out out_unnamed_bicg7_bicg_avm_read@20000000
    // out out_unnamed_bicg7_bicg_avm_write@20000000
    // out out_unnamed_bicg7_bicg_avm_writedata@20000000
    bicg_i_llvm_fpga_mem_unnamed_7_bicg0 thei_llvm_fpga_mem_unnamed_bicg7_bicg26 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx154_bicg20_vt_join_q),
        .in_i_dependence(redist24_i_memdep_phi3_or_bicg25_q_5_q),
        .in_i_predicate(redist37_i_first_cleanup_xor_bicg4_q_5_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg13_q),
        .in_unnamed_bicg7_bicg_avm_readdata(in_unnamed_bicg7_bicg_avm_readdata),
        .in_unnamed_bicg7_bicg_avm_readdatavalid(in_unnamed_bicg7_bicg_avm_readdatavalid),
        .in_unnamed_bicg7_bicg_avm_waitrequest(in_unnamed_bicg7_bicg_avm_waitrequest),
        .in_unnamed_bicg7_bicg_avm_writeack(in_unnamed_bicg7_bicg_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_bicg7_bicg26_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_bicg7_bicg_avm_address(i_llvm_fpga_mem_unnamed_bicg7_bicg26_out_unnamed_bicg7_bicg_avm_address),
        .out_unnamed_bicg7_bicg_avm_burstcount(i_llvm_fpga_mem_unnamed_bicg7_bicg26_out_unnamed_bicg7_bicg_avm_burstcount),
        .out_unnamed_bicg7_bicg_avm_byteenable(i_llvm_fpga_mem_unnamed_bicg7_bicg26_out_unnamed_bicg7_bicg_avm_byteenable),
        .out_unnamed_bicg7_bicg_avm_enable(i_llvm_fpga_mem_unnamed_bicg7_bicg26_out_unnamed_bicg7_bicg_avm_enable),
        .out_unnamed_bicg7_bicg_avm_read(i_llvm_fpga_mem_unnamed_bicg7_bicg26_out_unnamed_bicg7_bicg_avm_read),
        .out_unnamed_bicg7_bicg_avm_write(i_llvm_fpga_mem_unnamed_bicg7_bicg26_out_unnamed_bicg7_bicg_avm_write),
        .out_unnamed_bicg7_bicg_avm_writedata(i_llvm_fpga_mem_unnamed_bicg7_bicg26_out_unnamed_bicg7_bicg_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_ext_sig_sync_out_x(GPOUT,138)
    assign out_unnamed_bicg7_bicg_avm_address = i_llvm_fpga_mem_unnamed_bicg7_bicg26_out_unnamed_bicg7_bicg_avm_address;
    assign out_unnamed_bicg7_bicg_avm_enable = i_llvm_fpga_mem_unnamed_bicg7_bicg26_out_unnamed_bicg7_bicg_avm_enable;
    assign out_unnamed_bicg7_bicg_avm_read = i_llvm_fpga_mem_unnamed_bicg7_bicg26_out_unnamed_bicg7_bicg_avm_read;
    assign out_unnamed_bicg7_bicg_avm_write = i_llvm_fpga_mem_unnamed_bicg7_bicg26_out_unnamed_bicg7_bicg_avm_write;
    assign out_unnamed_bicg7_bicg_avm_writedata = i_llvm_fpga_mem_unnamed_bicg7_bicg26_out_unnamed_bicg7_bicg_avm_writedata;
    assign out_unnamed_bicg7_bicg_avm_byteenable = i_llvm_fpga_mem_unnamed_bicg7_bicg26_out_unnamed_bicg7_bicg_avm_byteenable;
    assign out_unnamed_bicg7_bicg_avm_burstcount = i_llvm_fpga_mem_unnamed_bicg7_bicg26_out_unnamed_bicg7_bicg_avm_burstcount;

    // i_mul22_bicg32_bs2_merged_bit_select(BITSELECT,368)@7
    assign i_mul22_bicg32_bs2_merged_bit_select_b = i_llvm_fpga_mem_unnamed_bicg6_bicg19_out_o_readdata[31:18];
    assign i_mul22_bicg32_bs2_merged_bit_select_c = i_llvm_fpga_mem_unnamed_bicg6_bicg19_out_o_readdata[17:0];

    // i_mul_bicg27_bs1_merged_bit_select(BITSELECT,367)@7
    assign i_mul_bicg27_bs1_merged_bit_select_b = i_llvm_fpga_mem_unnamed_bicg5_bicg15_out_o_readdata[31:18];
    assign i_mul_bicg27_bs1_merged_bit_select_c = i_llvm_fpga_mem_unnamed_bicg5_bicg15_out_o_readdata[17:0];

    // i_mul_bicg27_ma3_cma(CHAINMULTADD,362)@7 + 3
    assign i_mul_bicg27_ma3_cma_reset = ~ (resetn);
    assign i_mul_bicg27_ma3_cma_ena0 = 1'b1;
    assign i_mul_bicg27_ma3_cma_ena1 = i_mul_bicg27_ma3_cma_ena0;
    assign i_mul_bicg27_ma3_cma_ena2 = i_mul_bicg27_ma3_cma_ena0;

    assign i_mul_bicg27_ma3_cma_a0 = i_mul_bicg27_bs1_merged_bit_select_b;
    assign i_mul_bicg27_ma3_cma_c0 = i_mul22_bicg32_bs2_merged_bit_select_c;
    assign i_mul_bicg27_ma3_cma_a1 = i_mul22_bicg32_bs2_merged_bit_select_b;
    assign i_mul_bicg27_ma3_cma_c1 = i_mul_bicg27_bs1_merged_bit_select_c;
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
    ) i_mul_bicg27_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_bicg27_ma3_cma_ena2, i_mul_bicg27_ma3_cma_ena1, i_mul_bicg27_ma3_cma_ena0 }),
        .aclr({ i_mul_bicg27_ma3_cma_reset, i_mul_bicg27_ma3_cma_reset }),
        .ay(i_mul_bicg27_ma3_cma_a1),
        .by(i_mul_bicg27_ma3_cma_a0),
        .ax(i_mul_bicg27_ma3_cma_c1),
        .bx(i_mul_bicg27_ma3_cma_c0),
        .resulta(i_mul_bicg27_ma3_cma_s0),
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
    i_mul_bicg27_ma3_cma_delay ( .xin(i_mul_bicg27_ma3_cma_s0), .xout(i_mul_bicg27_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_bicg27_ma3_cma_q = $unsigned(i_mul_bicg27_ma3_cma_qq[32:0]);

    // i_mul_bicg27_sums_align_1(BITSHIFT,282)@10
    assign i_mul_bicg27_sums_align_1_qint = { i_mul_bicg27_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul_bicg27_sums_align_1_q = i_mul_bicg27_sums_align_1_qint[50:0];

    // i_mul_bicg27_im0_cma(CHAINMULTADD,359)@7 + 3
    assign i_mul_bicg27_im0_cma_reset = ~ (resetn);
    assign i_mul_bicg27_im0_cma_ena0 = 1'b1;
    assign i_mul_bicg27_im0_cma_ena1 = i_mul_bicg27_im0_cma_ena0;
    assign i_mul_bicg27_im0_cma_ena2 = i_mul_bicg27_im0_cma_ena0;

    assign i_mul_bicg27_im0_cma_a0 = i_mul_bicg27_bs1_merged_bit_select_b;
    assign i_mul_bicg27_im0_cma_c0 = i_mul22_bicg32_bs2_merged_bit_select_b;
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
    ) i_mul_bicg27_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_bicg27_im0_cma_ena2, i_mul_bicg27_im0_cma_ena1, i_mul_bicg27_im0_cma_ena0 }),
        .aclr({ i_mul_bicg27_im0_cma_reset, i_mul_bicg27_im0_cma_reset }),
        .ay(i_mul_bicg27_im0_cma_a0),
        .ax(i_mul_bicg27_im0_cma_c0),
        .resulta(i_mul_bicg27_im0_cma_s0),
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
    i_mul_bicg27_im0_cma_delay ( .xin(i_mul_bicg27_im0_cma_s0), .xout(i_mul_bicg27_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_bicg27_im0_cma_q = $unsigned(i_mul_bicg27_im0_cma_qq[27:0]);

    // i_mul_bicg27_im8_cma(CHAINMULTADD,360)@7 + 3
    assign i_mul_bicg27_im8_cma_reset = ~ (resetn);
    assign i_mul_bicg27_im8_cma_ena0 = 1'b1;
    assign i_mul_bicg27_im8_cma_ena1 = i_mul_bicg27_im8_cma_ena0;
    assign i_mul_bicg27_im8_cma_ena2 = i_mul_bicg27_im8_cma_ena0;

    assign i_mul_bicg27_im8_cma_a0 = i_mul_bicg27_bs1_merged_bit_select_c;
    assign i_mul_bicg27_im8_cma_c0 = i_mul22_bicg32_bs2_merged_bit_select_c;
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
    ) i_mul_bicg27_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_bicg27_im8_cma_ena2, i_mul_bicg27_im8_cma_ena1, i_mul_bicg27_im8_cma_ena0 }),
        .aclr({ i_mul_bicg27_im8_cma_reset, i_mul_bicg27_im8_cma_reset }),
        .ay(i_mul_bicg27_im8_cma_a0),
        .ax(i_mul_bicg27_im8_cma_c0),
        .resulta(i_mul_bicg27_im8_cma_s0),
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
    i_mul_bicg27_im8_cma_delay ( .xin(i_mul_bicg27_im8_cma_s0), .xout(i_mul_bicg27_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_bicg27_im8_cma_q = $unsigned(i_mul_bicg27_im8_cma_qq[35:0]);

    // i_mul_bicg27_sums_join_0(BITJOIN,281)@10
    assign i_mul_bicg27_sums_join_0_q = {i_mul_bicg27_im0_cma_q, i_mul_bicg27_im8_cma_q};

    // i_mul_bicg27_sums_result_add_0_0(ADD,284)@10
    assign i_mul_bicg27_sums_result_add_0_0_a = {1'b0, i_mul_bicg27_sums_join_0_q};
    assign i_mul_bicg27_sums_result_add_0_0_b = {14'b00000000000000, i_mul_bicg27_sums_align_1_q};
    assign i_mul_bicg27_sums_result_add_0_0_o = $unsigned(i_mul_bicg27_sums_result_add_0_0_a) + $unsigned(i_mul_bicg27_sums_result_add_0_0_b);
    assign i_mul_bicg27_sums_result_add_0_0_q = i_mul_bicg27_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul_bicg27_sel_x(BITSELECT,131)@10
    assign bgTrunc_i_mul_bicg27_sel_x_in = i_mul_bicg27_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul_bicg27_sel_x_b = bgTrunc_i_mul_bicg27_sel_x_in[31:0];

    // redist21_bgTrunc_i_mul_bicg27_sel_x_b_1(DELAY,391)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_bgTrunc_i_mul_bicg27_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist21_bgTrunc_i_mul_bicg27_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul_bicg27_sel_x_b);
        end
    end

    // i_add_bicg28(ADD,53)@11
    assign i_add_bicg28_a = {1'b0, redist21_bgTrunc_i_mul_bicg27_sel_x_b_1_q};
    assign i_add_bicg28_b = {1'b0, i_llvm_fpga_mem_unnamed_bicg7_bicg26_out_o_readdata};
    assign i_add_bicg28_o = $unsigned(i_add_bicg28_a) + $unsigned(i_add_bicg28_b);
    assign i_add_bicg28_q = i_add_bicg28_o[32:0];

    // bgTrunc_i_add_bicg28_sel_x(BITSELECT,127)@11
    assign bgTrunc_i_add_bicg28_sel_x_b = i_add_bicg28_q[31:0];

    // redist16_sync_together127_aunroll_x_in_i_valid_8(DELAY,386)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together127_aunroll_x_in_i_valid_8_delay_0 <= '0;
            redist16_sync_together127_aunroll_x_in_i_valid_8_delay_1 <= '0;
            redist16_sync_together127_aunroll_x_in_i_valid_8_q <= '0;
        end
        else
        begin
            redist16_sync_together127_aunroll_x_in_i_valid_8_delay_0 <= $unsigned(redist15_sync_together127_aunroll_x_in_i_valid_5_q);
            redist16_sync_together127_aunroll_x_in_i_valid_8_delay_1 <= redist16_sync_together127_aunroll_x_in_i_valid_8_delay_0;
            redist16_sync_together127_aunroll_x_in_i_valid_8_q <= redist16_sync_together127_aunroll_x_in_i_valid_8_delay_1;
        end
    end

    // redist17_sync_together127_aunroll_x_in_i_valid_9(DELAY,387)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together127_aunroll_x_in_i_valid_9_q <= '0;
        end
        else
        begin
            redist17_sync_together127_aunroll_x_in_i_valid_9_q <= $unsigned(redist16_sync_together127_aunroll_x_in_i_valid_8_q);
        end
    end

    // valid_fanout_reg14(REG,229)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist17_sync_together127_aunroll_x_in_i_valid_9_q);
        end
    end

    // redist38_i_first_cleanup_xor_bicg4_q_9(DELAY,408)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_i_first_cleanup_xor_bicg4_q_9_delay_0 <= '0;
            redist38_i_first_cleanup_xor_bicg4_q_9_delay_1 <= '0;
            redist38_i_first_cleanup_xor_bicg4_q_9_delay_2 <= '0;
            redist38_i_first_cleanup_xor_bicg4_q_9_q <= '0;
        end
        else
        begin
            redist38_i_first_cleanup_xor_bicg4_q_9_delay_0 <= $unsigned(redist37_i_first_cleanup_xor_bicg4_q_5_q);
            redist38_i_first_cleanup_xor_bicg4_q_9_delay_1 <= redist38_i_first_cleanup_xor_bicg4_q_9_delay_0;
            redist38_i_first_cleanup_xor_bicg4_q_9_delay_2 <= redist38_i_first_cleanup_xor_bicg4_q_9_delay_1;
            redist38_i_first_cleanup_xor_bicg4_q_9_q <= redist38_i_first_cleanup_xor_bicg4_q_9_delay_2;
        end
    end

    // redist39_i_arrayidx154_bicg20_vt_join_q_4_notEnable(LOGICAL,436)
    assign redist39_i_arrayidx154_bicg20_vt_join_q_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist39_i_arrayidx154_bicg20_vt_join_q_4_nor(LOGICAL,437)
    assign redist39_i_arrayidx154_bicg20_vt_join_q_4_nor_q = ~ (redist39_i_arrayidx154_bicg20_vt_join_q_4_notEnable_q | redist39_i_arrayidx154_bicg20_vt_join_q_4_sticky_ena_q);

    // redist39_i_arrayidx154_bicg20_vt_join_q_4_mem_last(CONSTANT,433)
    assign redist39_i_arrayidx154_bicg20_vt_join_q_4_mem_last_q = $unsigned(2'b01);

    // redist39_i_arrayidx154_bicg20_vt_join_q_4_cmp(LOGICAL,434)
    assign redist39_i_arrayidx154_bicg20_vt_join_q_4_cmp_q = $unsigned(redist39_i_arrayidx154_bicg20_vt_join_q_4_mem_last_q == redist39_i_arrayidx154_bicg20_vt_join_q_4_rdcnt_q ? 1'b1 : 1'b0);

    // redist39_i_arrayidx154_bicg20_vt_join_q_4_cmpReg(REG,435)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_i_arrayidx154_bicg20_vt_join_q_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist39_i_arrayidx154_bicg20_vt_join_q_4_cmpReg_q <= $unsigned(redist39_i_arrayidx154_bicg20_vt_join_q_4_cmp_q);
        end
    end

    // redist39_i_arrayidx154_bicg20_vt_join_q_4_sticky_ena(REG,438)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_i_arrayidx154_bicg20_vt_join_q_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist39_i_arrayidx154_bicg20_vt_join_q_4_nor_q == 1'b1)
        begin
            redist39_i_arrayidx154_bicg20_vt_join_q_4_sticky_ena_q <= $unsigned(redist39_i_arrayidx154_bicg20_vt_join_q_4_cmpReg_q);
        end
    end

    // redist39_i_arrayidx154_bicg20_vt_join_q_4_enaAnd(LOGICAL,439)
    assign redist39_i_arrayidx154_bicg20_vt_join_q_4_enaAnd_q = redist39_i_arrayidx154_bicg20_vt_join_q_4_sticky_ena_q & VCC_q;

    // redist39_i_arrayidx154_bicg20_vt_join_q_4_rdcnt(COUNTER,431)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_i_arrayidx154_bicg20_vt_join_q_4_rdcnt_i <= 2'd0;
            redist39_i_arrayidx154_bicg20_vt_join_q_4_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist39_i_arrayidx154_bicg20_vt_join_q_4_rdcnt_i == 2'd1)
            begin
                redist39_i_arrayidx154_bicg20_vt_join_q_4_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist39_i_arrayidx154_bicg20_vt_join_q_4_rdcnt_eq <= 1'b0;
            end
            if (redist39_i_arrayidx154_bicg20_vt_join_q_4_rdcnt_eq == 1'b1)
            begin
                redist39_i_arrayidx154_bicg20_vt_join_q_4_rdcnt_i <= $unsigned(redist39_i_arrayidx154_bicg20_vt_join_q_4_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist39_i_arrayidx154_bicg20_vt_join_q_4_rdcnt_i <= $unsigned(redist39_i_arrayidx154_bicg20_vt_join_q_4_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist39_i_arrayidx154_bicg20_vt_join_q_4_rdcnt_q = redist39_i_arrayidx154_bicg20_vt_join_q_4_rdcnt_i[1:0];

    // redist39_i_arrayidx154_bicg20_vt_join_q_4_wraddr(REG,432)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_i_arrayidx154_bicg20_vt_join_q_4_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist39_i_arrayidx154_bicg20_vt_join_q_4_wraddr_q <= $unsigned(redist39_i_arrayidx154_bicg20_vt_join_q_4_rdcnt_q);
        end
    end

    // redist39_i_arrayidx154_bicg20_vt_join_q_4_mem(DUALMEM,430)
    assign redist39_i_arrayidx154_bicg20_vt_join_q_4_mem_ia = $unsigned(i_arrayidx154_bicg20_vt_join_q);
    assign redist39_i_arrayidx154_bicg20_vt_join_q_4_mem_aa = redist39_i_arrayidx154_bicg20_vt_join_q_4_wraddr_q;
    assign redist39_i_arrayidx154_bicg20_vt_join_q_4_mem_ab = redist39_i_arrayidx154_bicg20_vt_join_q_4_rdcnt_q;
    assign redist39_i_arrayidx154_bicg20_vt_join_q_4_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(2),
        .numwords_a(3),
        .width_b(64),
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
    ) redist39_i_arrayidx154_bicg20_vt_join_q_4_mem_dmem (
        .clocken1(redist39_i_arrayidx154_bicg20_vt_join_q_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist39_i_arrayidx154_bicg20_vt_join_q_4_mem_reset0),
        .clock1(clock),
        .address_a(redist39_i_arrayidx154_bicg20_vt_join_q_4_mem_aa),
        .data_a(redist39_i_arrayidx154_bicg20_vt_join_q_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist39_i_arrayidx154_bicg20_vt_join_q_4_mem_ab),
        .q_b(redist39_i_arrayidx154_bicg20_vt_join_q_4_mem_iq),
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
    assign redist39_i_arrayidx154_bicg20_vt_join_q_4_mem_q = redist39_i_arrayidx154_bicg20_vt_join_q_4_mem_iq[63:0];

    // i_llvm_fpga_mem_memdep_1_bicg29(BLACKBOX,79)@11
    // out out_memdep_1_bicg_avm_address@20000000
    // out out_memdep_1_bicg_avm_burstcount@20000000
    // out out_memdep_1_bicg_avm_byteenable@20000000
    // out out_memdep_1_bicg_avm_enable@20000000
    // out out_memdep_1_bicg_avm_read@20000000
    // out out_memdep_1_bicg_avm_write@20000000
    // out out_memdep_1_bicg_avm_writedata@20000000
    // out out_o_stall@12
    // out out_o_valid@12
    // out out_o_writeack@12
    bicg_i_llvm_fpga_mem_memdep_1_0 thei_llvm_fpga_mem_memdep_1_bicg29 (
        .in_flush(in_flush),
        .in_i_address(redist39_i_arrayidx154_bicg20_vt_join_q_4_mem_q),
        .in_i_predicate(redist38_i_first_cleanup_xor_bicg4_q_9_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg14_q),
        .in_i_writedata(bgTrunc_i_add_bicg28_sel_x_b),
        .in_memdep_1_bicg_avm_readdata(in_memdep_1_bicg_avm_readdata),
        .in_memdep_1_bicg_avm_readdatavalid(in_memdep_1_bicg_avm_readdatavalid),
        .in_memdep_1_bicg_avm_waitrequest(in_memdep_1_bicg_avm_waitrequest),
        .in_memdep_1_bicg_avm_writeack(in_memdep_1_bicg_avm_writeack),
        .out_memdep_1_bicg_avm_address(i_llvm_fpga_mem_memdep_1_bicg29_out_memdep_1_bicg_avm_address),
        .out_memdep_1_bicg_avm_burstcount(i_llvm_fpga_mem_memdep_1_bicg29_out_memdep_1_bicg_avm_burstcount),
        .out_memdep_1_bicg_avm_byteenable(i_llvm_fpga_mem_memdep_1_bicg29_out_memdep_1_bicg_avm_byteenable),
        .out_memdep_1_bicg_avm_enable(i_llvm_fpga_mem_memdep_1_bicg29_out_memdep_1_bicg_avm_enable),
        .out_memdep_1_bicg_avm_read(i_llvm_fpga_mem_memdep_1_bicg29_out_memdep_1_bicg_avm_read),
        .out_memdep_1_bicg_avm_write(i_llvm_fpga_mem_memdep_1_bicg29_out_memdep_1_bicg_avm_write),
        .out_memdep_1_bicg_avm_writedata(i_llvm_fpga_mem_memdep_1_bicg29_out_memdep_1_bicg_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(i_llvm_fpga_mem_memdep_1_bicg29_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_3_ext_sig_sync_out_x(GPOUT,140)
    assign out_memdep_1_bicg_avm_address = i_llvm_fpga_mem_memdep_1_bicg29_out_memdep_1_bicg_avm_address;
    assign out_memdep_1_bicg_avm_enable = i_llvm_fpga_mem_memdep_1_bicg29_out_memdep_1_bicg_avm_enable;
    assign out_memdep_1_bicg_avm_read = i_llvm_fpga_mem_memdep_1_bicg29_out_memdep_1_bicg_avm_read;
    assign out_memdep_1_bicg_avm_write = i_llvm_fpga_mem_memdep_1_bicg29_out_memdep_1_bicg_avm_write;
    assign out_memdep_1_bicg_avm_writedata = i_llvm_fpga_mem_memdep_1_bicg29_out_memdep_1_bicg_avm_writedata;
    assign out_memdep_1_bicg_avm_byteenable = i_llvm_fpga_mem_memdep_1_bicg29_out_memdep_1_bicg_avm_byteenable;
    assign out_memdep_1_bicg_avm_burstcount = i_llvm_fpga_mem_memdep_1_bicg29_out_memdep_1_bicg_avm_burstcount;

    // valid_fanout_reg15(REG,230)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist14_sync_together127_aunroll_x_in_i_valid_1_q);
        end
    end

    // c_bicg_p_local_pmem(CONSTANT,9)
    assign c_bicg_p_local_pmem_q = $unsigned(64'b0100000001000011000000000000000000000000000000000000000000000000);

    // i_arrayidx215_bicg0_upper_bits_x_merged_bit_select(BITSELECT,364)@3
    assign i_arrayidx215_bicg0_upper_bits_x_merged_bit_select_b = c_bicg_p_local_pmem_q[63:7];
    assign i_arrayidx215_bicg0_upper_bits_x_merged_bit_select_c = c_bicg_p_local_pmem_q[6:0];

    // i_arrayidx215_bicg0_add_x(ADD,190)@3
    assign i_arrayidx215_bicg0_add_x_a = {1'b0, i_arrayidx215_bicg0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx215_bicg0_add_x_b = {1'b0, i_arrayidx154_bicg0_shift_join_x_q};
    assign i_arrayidx215_bicg0_add_x_o = $unsigned(i_arrayidx215_bicg0_add_x_a) + $unsigned(i_arrayidx215_bicg0_add_x_b);
    assign i_arrayidx215_bicg0_add_x_q = i_arrayidx215_bicg0_add_x_o[7:0];

    // i_arrayidx215_bicg0_dupName_2_trunc_sel_x(BITSELECT,201)@3
    assign i_arrayidx215_bicg0_dupName_2_trunc_sel_x_b = i_arrayidx215_bicg0_add_x_q[6:0];

    // i_arrayidx215_bicg0_append_upper_bits_x(BITJOIN,191)@3
    assign i_arrayidx215_bicg0_append_upper_bits_x_q = {i_arrayidx215_bicg0_upper_bits_x_merged_bit_select_b, i_arrayidx215_bicg0_dupName_2_trunc_sel_x_b};

    // i_arrayidx215_bicg30_vt_select_63(BITSELECT,65)@3
    assign i_arrayidx215_bicg30_vt_select_63_b = i_arrayidx215_bicg0_append_upper_bits_x_q[63:2];

    // i_arrayidx215_bicg30_vt_join(BITJOIN,64)@3
    assign i_arrayidx215_bicg30_vt_join_q = {i_arrayidx215_bicg30_vt_select_63_b, i_arrayidx133_bicg18_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_bicg8_bicg31(BLACKBOX,83)@3
    // in in_i_stall@20000000
    // out out_o_readdata@7
    // out out_o_stall@6
    // out out_o_valid@7
    // out out_unnamed_bicg8_bicg_avm_address@20000000
    // out out_unnamed_bicg8_bicg_avm_burstcount@20000000
    // out out_unnamed_bicg8_bicg_avm_byteenable@20000000
    // out out_unnamed_bicg8_bicg_avm_enable@20000000
    // out out_unnamed_bicg8_bicg_avm_read@20000000
    // out out_unnamed_bicg8_bicg_avm_write@20000000
    // out out_unnamed_bicg8_bicg_avm_writedata@20000000
    bicg_i_llvm_fpga_mem_unnamed_8_bicg0 thei_llvm_fpga_mem_unnamed_bicg8_bicg31 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx215_bicg30_vt_join_q),
        .in_i_predicate(redist36_i_first_cleanup_xor_bicg4_q_1_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg15_q),
        .in_unnamed_bicg8_bicg_avm_readdata(in_unnamed_bicg8_bicg_avm_readdata),
        .in_unnamed_bicg8_bicg_avm_readdatavalid(in_unnamed_bicg8_bicg_avm_readdatavalid),
        .in_unnamed_bicg8_bicg_avm_waitrequest(in_unnamed_bicg8_bicg_avm_waitrequest),
        .in_unnamed_bicg8_bicg_avm_writeack(in_unnamed_bicg8_bicg_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_bicg8_bicg31_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_bicg8_bicg_avm_address(i_llvm_fpga_mem_unnamed_bicg8_bicg31_out_unnamed_bicg8_bicg_avm_address),
        .out_unnamed_bicg8_bicg_avm_burstcount(i_llvm_fpga_mem_unnamed_bicg8_bicg31_out_unnamed_bicg8_bicg_avm_burstcount),
        .out_unnamed_bicg8_bicg_avm_byteenable(i_llvm_fpga_mem_unnamed_bicg8_bicg31_out_unnamed_bicg8_bicg_avm_byteenable),
        .out_unnamed_bicg8_bicg_avm_enable(i_llvm_fpga_mem_unnamed_bicg8_bicg31_out_unnamed_bicg8_bicg_avm_enable),
        .out_unnamed_bicg8_bicg_avm_read(i_llvm_fpga_mem_unnamed_bicg8_bicg31_out_unnamed_bicg8_bicg_avm_read),
        .out_unnamed_bicg8_bicg_avm_write(i_llvm_fpga_mem_unnamed_bicg8_bicg31_out_unnamed_bicg8_bicg_avm_write),
        .out_unnamed_bicg8_bicg_avm_writedata(i_llvm_fpga_mem_unnamed_bicg8_bicg31_out_unnamed_bicg8_bicg_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_4_ext_sig_sync_out_x(GPOUT,141)
    assign out_unnamed_bicg8_bicg_avm_address = i_llvm_fpga_mem_unnamed_bicg8_bicg31_out_unnamed_bicg8_bicg_avm_address;
    assign out_unnamed_bicg8_bicg_avm_enable = i_llvm_fpga_mem_unnamed_bicg8_bicg31_out_unnamed_bicg8_bicg_avm_enable;
    assign out_unnamed_bicg8_bicg_avm_read = i_llvm_fpga_mem_unnamed_bicg8_bicg31_out_unnamed_bicg8_bicg_avm_read;
    assign out_unnamed_bicg8_bicg_avm_write = i_llvm_fpga_mem_unnamed_bicg8_bicg31_out_unnamed_bicg8_bicg_avm_write;
    assign out_unnamed_bicg8_bicg_avm_writedata = i_llvm_fpga_mem_unnamed_bicg8_bicg31_out_unnamed_bicg8_bicg_avm_writedata;
    assign out_unnamed_bicg8_bicg_avm_byteenable = i_llvm_fpga_mem_unnamed_bicg8_bicg31_out_unnamed_bicg8_bicg_avm_byteenable;
    assign out_unnamed_bicg8_bicg_avm_burstcount = i_llvm_fpga_mem_unnamed_bicg8_bicg31_out_unnamed_bicg8_bicg_avm_burstcount;

    // valid_fanout_reg0(REG,215)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist17_sync_together127_aunroll_x_in_i_valid_9_q);
        end
    end

    // redist0_valid_fanout_reg0_q_1(DELAY,370)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_valid_fanout_reg0_q_1_q <= '0;
        end
        else
        begin
            redist0_valid_fanout_reg0_q_1_q <= $unsigned(valid_fanout_reg0_q);
        end
    end

    // redist13_sync_together127_aunroll_x_in_c0_eni11_11_tpl_11(DELAY,383)
    dspba_delay_ver #( .width(1), .depth(11), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist13_sync_together127_aunroll_x_in_c0_eni11_11_tpl_11 ( .xin(in_c0_eni11_11_tpl), .xout(redist13_sync_together127_aunroll_x_in_c0_eni11_11_tpl_11_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist12_sync_together127_aunroll_x_in_c0_eni11_10_tpl_11(DELAY,382)
    dspba_delay_ver #( .width(1), .depth(11), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist12_sync_together127_aunroll_x_in_c0_eni11_10_tpl_11 ( .xin(in_c0_eni11_10_tpl), .xout(redist12_sync_together127_aunroll_x_in_c0_eni11_10_tpl_11_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg25(REG,240)@1 + 1
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

    // valid_fanout_reg26(REG,241)@1 + 1
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

    // i_llvm_fpga_push_i1_notcmp724_push24_bicg56(BLACKBOX,102)@2
    // out out_feedback_out_24@20000000
    // out out_feedback_valid_out_24@20000000
    bicg_i_llvm_fpga_push_i1_notcmp724_push24_0 thei_llvm_fpga_push_i1_notcmp724_push24_bicg56 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp724_pop24_bicg55_out_data_out),
        .in_feedback_stall_in_24(i_llvm_fpga_pop_i1_notcmp724_pop24_bicg55_out_feedback_stall_out_24),
        .in_keep_going(redist32_i_llvm_fpga_pipeline_keep_going_bicg6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg26_q),
        .out_data_out(),
        .out_feedback_out_24(i_llvm_fpga_push_i1_notcmp724_push24_bicg56_out_feedback_out_24),
        .out_feedback_valid_out_24(i_llvm_fpga_push_i1_notcmp724_push24_bicg56_out_feedback_valid_out_24),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist11_sync_together127_aunroll_x_in_c0_eni11_9_tpl_1(DELAY,381)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together127_aunroll_x_in_c0_eni11_9_tpl_1_q <= '0;
        end
        else
        begin
            redist11_sync_together127_aunroll_x_in_c0_eni11_9_tpl_1_q <= $unsigned(in_c0_eni11_9_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp724_pop24_bicg55(BLACKBOX,89)@2
    // out out_feedback_stall_out_24@20000000
    bicg_i_llvm_fpga_pop_i1_notcmp724_pop24_0 thei_llvm_fpga_pop_i1_notcmp724_pop24_bicg55 (
        .in_data_in(redist11_sync_together127_aunroll_x_in_c0_eni11_9_tpl_1_q),
        .in_dir(redist1_sync_together127_aunroll_x_in_c0_eni11_1_tpl_1_q),
        .in_feedback_in_24(i_llvm_fpga_push_i1_notcmp724_push24_bicg56_out_feedback_out_24),
        .in_feedback_valid_in_24(i_llvm_fpga_push_i1_notcmp724_push24_bicg56_out_feedback_valid_out_24),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg25_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp724_pop24_bicg55_out_data_out),
        .out_feedback_stall_out_24(i_llvm_fpga_pop_i1_notcmp724_pop24_bicg55_out_feedback_stall_out_24),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist29_i_llvm_fpga_pop_i1_notcmp724_pop24_bicg55_out_data_out_10(DELAY,399)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist29_i_llvm_fpga_pop_i1_notcmp724_pop24_bicg55_out_data_out_10 ( .xin(i_llvm_fpga_pop_i1_notcmp724_pop24_bicg55_out_data_out), .xout(redist29_i_llvm_fpga_pop_i1_notcmp724_pop24_bicg55_out_data_out_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg23(REG,238)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg23_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg23_q <= $unsigned(redist16_sync_together127_aunroll_x_in_i_valid_8_q);
        end
    end

    // valid_fanout_reg24(REG,239)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg24_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg24_q <= $unsigned(redist17_sync_together127_aunroll_x_in_i_valid_9_q);
        end
    end

    // redist34_i_llvm_fpga_pipeline_keep_going_bicg6_out_data_out_10(DELAY,404)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist34_i_llvm_fpga_pipeline_keep_going_bicg6_out_data_out_10 ( .xin(redist33_i_llvm_fpga_pipeline_keep_going_bicg6_out_data_out_2_q), .xout(redist34_i_llvm_fpga_pipeline_keep_going_bicg6_out_data_out_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_push_i1_exitcond623_push23_bicg54(BLACKBOX,97)@11
    // out out_feedback_out_23@20000000
    // out out_feedback_valid_out_23@20000000
    bicg_i_llvm_fpga_push_i1_exitcond623_push23_0 thei_llvm_fpga_push_i1_exitcond623_push23_bicg54 (
        .in_data_in(redist30_i_llvm_fpga_pop_i1_exitcond623_pop23_bicg53_out_data_out_1_q),
        .in_feedback_stall_in_23(i_llvm_fpga_pop_i1_exitcond623_pop23_bicg53_out_feedback_stall_out_23),
        .in_keep_going(redist34_i_llvm_fpga_pipeline_keep_going_bicg6_out_data_out_10_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg24_q),
        .out_data_out(),
        .out_feedback_out_23(i_llvm_fpga_push_i1_exitcond623_push23_bicg54_out_feedback_out_23),
        .out_feedback_valid_out_23(i_llvm_fpga_push_i1_exitcond623_push23_bicg54_out_feedback_valid_out_23),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together127_aunroll_x_in_c0_eni11_1_tpl_9(DELAY,373)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist3_sync_together127_aunroll_x_in_c0_eni11_1_tpl_9 ( .xin(redist2_sync_together127_aunroll_x_in_c0_eni11_1_tpl_2_q), .xout(redist3_sync_together127_aunroll_x_in_c0_eni11_1_tpl_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist10_sync_together127_aunroll_x_in_c0_eni11_8_tpl_9(DELAY,380)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist10_sync_together127_aunroll_x_in_c0_eni11_8_tpl_9 ( .xin(in_c0_eni11_8_tpl), .xout(redist10_sync_together127_aunroll_x_in_c0_eni11_8_tpl_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_pop_i1_exitcond623_pop23_bicg53(BLACKBOX,85)@10
    // out out_feedback_stall_out_23@20000000
    bicg_i_llvm_fpga_pop_i1_exitcond623_pop23_0 thei_llvm_fpga_pop_i1_exitcond623_pop23_bicg53 (
        .in_data_in(redist10_sync_together127_aunroll_x_in_c0_eni11_8_tpl_9_q),
        .in_dir(redist3_sync_together127_aunroll_x_in_c0_eni11_1_tpl_9_q),
        .in_feedback_in_23(i_llvm_fpga_push_i1_exitcond623_push23_bicg54_out_feedback_out_23),
        .in_feedback_valid_in_23(i_llvm_fpga_push_i1_exitcond623_push23_bicg54_out_feedback_valid_out_23),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg23_q),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond623_pop23_bicg53_out_data_out),
        .out_feedback_stall_out_23(i_llvm_fpga_pop_i1_exitcond623_pop23_bicg53_out_feedback_stall_out_23),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist30_i_llvm_fpga_pop_i1_exitcond623_pop23_bicg53_out_data_out_1(DELAY,400)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_llvm_fpga_pop_i1_exitcond623_pop23_bicg53_out_data_out_1_q <= '0;
        end
        else
        begin
            redist30_i_llvm_fpga_pop_i1_exitcond623_pop23_bicg53_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_exitcond623_pop23_bicg53_out_data_out);
        end
    end

    // redist31_i_llvm_fpga_pop_i1_exitcond623_pop23_bicg53_out_data_out_2(DELAY,401)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_i_llvm_fpga_pop_i1_exitcond623_pop23_bicg53_out_data_out_2_q <= '0;
        end
        else
        begin
            redist31_i_llvm_fpga_pop_i1_exitcond623_pop23_bicg53_out_data_out_2_q <= $unsigned(redist30_i_llvm_fpga_pop_i1_exitcond623_pop23_bicg53_out_data_out_1_q);
        end
    end

    // redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_notEnable(LOGICAL,426)
    assign redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_notEnable_q = $unsigned(~ (VCC_q));

    // redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_nor(LOGICAL,427)
    assign redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_nor_q = ~ (redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_notEnable_q | redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_sticky_ena_q);

    // redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_mem_last(CONSTANT,423)
    assign redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_mem_last_q = $unsigned(4'b0110);

    // redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_cmp(LOGICAL,424)
    assign redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_cmp_b = {1'b0, redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_rdcnt_q};
    assign redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_cmp_q = $unsigned(redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_mem_last_q == redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_cmp_b ? 1'b1 : 1'b0);

    // redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_cmpReg(REG,425)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_cmpReg_q <= $unsigned(redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_cmp_q);
        end
    end

    // redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_sticky_ena(REG,428)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_nor_q == 1'b1)
        begin
            redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_sticky_ena_q <= $unsigned(redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_cmpReg_q);
        end
    end

    // redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_enaAnd(LOGICAL,429)
    assign redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_enaAnd_q = redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_sticky_ena_q & VCC_q;

    // redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_rdcnt(COUNTER,421)
    // low=0, high=7, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_rdcnt_i <= 3'd0;
        end
        else
        begin
            redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_rdcnt_i <= $unsigned(redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_rdcnt_i) + $unsigned(3'd1);
        end
    end
    assign redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_rdcnt_q = redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_rdcnt_i[2:0];

    // valid_fanout_reg21(REG,236)@1 + 1
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

    // valid_fanout_reg22(REG,237)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg22_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg22_q <= $unsigned(redist14_sync_together127_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_p66i32_arrayidx122_push22_bicg52(BLACKBOX,110)@3
    // out out_feedback_out_22@20000000
    // out out_feedback_valid_out_22@20000000
    bicg_i_llvm_fpga_push_p66i32_arrayidx122_push22_0 thei_llvm_fpga_push_p66i32_arrayidx122_push22_bicg52 (
        .in_data_in(redist26_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_1_q),
        .in_feedback_stall_in_22(i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_feedback_stall_out_22),
        .in_keep_going(redist33_i_llvm_fpga_pipeline_keep_going_bicg6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg22_q),
        .out_data_out(),
        .out_feedback_out_22(i_llvm_fpga_push_p66i32_arrayidx122_push22_bicg52_out_feedback_out_22),
        .out_feedback_valid_out_22(i_llvm_fpga_push_p66i32_arrayidx122_push22_bicg52_out_feedback_valid_out_22),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist9_sync_together127_aunroll_x_in_c0_eni11_7_tpl_1(DELAY,379)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together127_aunroll_x_in_c0_eni11_7_tpl_1_q <= '0;
        end
        else
        begin
            redist9_sync_together127_aunroll_x_in_c0_eni11_7_tpl_1_q <= $unsigned(in_c0_eni11_7_tpl);
        end
    end

    // i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51(BLACKBOX,96)@2
    // out out_feedback_stall_out_22@20000000
    bicg_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_0 thei_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51 (
        .in_data_in(redist9_sync_together127_aunroll_x_in_c0_eni11_7_tpl_1_q),
        .in_dir(redist1_sync_together127_aunroll_x_in_c0_eni11_1_tpl_1_q),
        .in_feedback_in_22(i_llvm_fpga_push_p66i32_arrayidx122_push22_bicg52_out_feedback_out_22),
        .in_feedback_valid_in_22(i_llvm_fpga_push_p66i32_arrayidx122_push22_bicg52_out_feedback_valid_out_22),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_data_out(i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out),
        .out_feedback_stall_out_22(i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_feedback_stall_out_22),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist26_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_1(DELAY,396)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_1_q <= '0;
        end
        else
        begin
            redist26_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out);
        end
    end

    // redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_wraddr(REG,422)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_wraddr_q <= $unsigned(3'b111);
        end
        else
        begin
            redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_wraddr_q <= $unsigned(redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_rdcnt_q);
        end
    end

    // redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_mem(DUALMEM,420)
    assign redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_mem_ia = $unsigned(redist26_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_1_q);
    assign redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_mem_aa = redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_wraddr_q;
    assign redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_mem_ab = redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_rdcnt_q;
    assign redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_mem_reset0 = ~ (resetn);
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
    ) redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_mem_dmem (
        .clocken1(redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_mem_reset0),
        .clock1(clock),
        .address_a(redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_mem_aa),
        .data_a(redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_mem_ab),
        .q_b(redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_mem_iq),
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
    assign redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_mem_q = redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_mem_iq[63:0];

    // i_masked_bicg48(LOGICAL,111)@2 + 1
    assign i_masked_bicg48_qi = i_notcmp_bicg41_q & i_first_cleanup_bicg3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_bicg48_delay ( .xin(i_masked_bicg48_qi), .xout(i_masked_bicg48_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist25_i_masked_bicg48_q_10(DELAY,395)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist25_i_masked_bicg48_q_10 ( .xin(i_masked_bicg48_q), .xout(redist25_i_masked_bicg48_q_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg16(REG,231)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist16_sync_together127_aunroll_x_in_i_valid_8_q);
        end
    end

    // valid_fanout_reg17(REG,232)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg17_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(redist17_sync_together127_aunroll_x_in_i_valid_9_q);
        end
    end

    // i_llvm_fpga_push_i32_tmp_q_018_push15_bicg35(BLACKBOX,107)@11
    // out out_feedback_out_15@20000000
    // out out_feedback_valid_out_15@20000000
    bicg_i_llvm_fpga_push_i32_tmp_q_018_push15_0 thei_llvm_fpga_push_i32_tmp_q_018_push15_bicg35 (
        .in_data_in(bgTrunc_i_add23_bicg34_sel_x_b),
        .in_feedback_stall_in_15(i_llvm_fpga_pop_i32_tmp_q_018_pop15_bicg33_out_feedback_stall_out_15),
        .in_keep_going(redist34_i_llvm_fpga_pipeline_keep_going_bicg6_out_data_out_10_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(),
        .out_feedback_out_15(i_llvm_fpga_push_i32_tmp_q_018_push15_bicg35_out_feedback_out_15),
        .out_feedback_valid_out_15(i_llvm_fpga_push_i32_tmp_q_018_push15_bicg35_out_feedback_valid_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_notEnable(LOGICAL,416)
    assign redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_notEnable_q = $unsigned(~ (VCC_q));

    // redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_nor(LOGICAL,417)
    assign redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_nor_q = ~ (redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_notEnable_q | redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_sticky_ena_q);

    // redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_mem_last(CONSTANT,413)
    assign redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_mem_last_q = $unsigned(4'b0110);

    // redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_cmp(LOGICAL,414)
    assign redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_cmp_b = {1'b0, redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_rdcnt_q};
    assign redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_cmp_q = $unsigned(redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_mem_last_q == redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_cmp_b ? 1'b1 : 1'b0);

    // redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_cmpReg(REG,415)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_cmpReg_q <= $unsigned(redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_cmp_q);
        end
    end

    // redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_sticky_ena(REG,418)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_nor_q == 1'b1)
        begin
            redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_sticky_ena_q <= $unsigned(redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_cmpReg_q);
        end
    end

    // redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_enaAnd(LOGICAL,419)
    assign redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_enaAnd_q = redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_sticky_ena_q & VCC_q;

    // redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_rdcnt(COUNTER,411)
    // low=0, high=7, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_rdcnt_i <= 3'd0;
        end
        else
        begin
            redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_rdcnt_i <= $unsigned(redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_rdcnt_i) + $unsigned(3'd1);
        end
    end
    assign redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_rdcnt_q = redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_rdcnt_i[2:0];

    // redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_wraddr(REG,412)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_wraddr_q <= $unsigned(3'b111);
        end
        else
        begin
            redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_wraddr_q <= $unsigned(redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_rdcnt_q);
        end
    end

    // redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_mem(DUALMEM,410)
    assign redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_mem_ia = $unsigned(in_c0_eni11_5_tpl);
    assign redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_mem_aa = redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_wraddr_q;
    assign redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_mem_ab = redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_rdcnt_q;
    assign redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_mem_reset0 = ~ (resetn);
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
    ) redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_mem_dmem (
        .clocken1(redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_mem_reset0),
        .clock1(clock),
        .address_a(redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_mem_aa),
        .data_a(redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_mem_ab),
        .q_b(redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_mem_iq),
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
    assign redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_mem_q = redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_mem_iq[31:0];

    // i_llvm_fpga_pop_i32_tmp_q_018_pop15_bicg33(BLACKBOX,93)@10
    // out out_feedback_stall_out_15@20000000
    bicg_i_llvm_fpga_pop_i32_tmp_q_018_pop15_0 thei_llvm_fpga_pop_i32_tmp_q_018_pop15_bicg33 (
        .in_data_in(redist7_sync_together127_aunroll_x_in_c0_eni11_5_tpl_9_mem_q),
        .in_dir(redist3_sync_together127_aunroll_x_in_c0_eni11_1_tpl_9_q),
        .in_feedback_in_15(i_llvm_fpga_push_i32_tmp_q_018_push15_bicg35_out_feedback_out_15),
        .in_feedback_valid_in_15(i_llvm_fpga_push_i32_tmp_q_018_push15_bicg35_out_feedback_valid_out_15),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(i_llvm_fpga_pop_i32_tmp_q_018_pop15_bicg33_out_data_out),
        .out_feedback_stall_out_15(i_llvm_fpga_pop_i32_tmp_q_018_pop15_bicg33_out_feedback_stall_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist28_i_llvm_fpga_pop_i32_tmp_q_018_pop15_bicg33_out_data_out_1(DELAY,398)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_i_llvm_fpga_pop_i32_tmp_q_018_pop15_bicg33_out_data_out_1_q <= '0;
        end
        else
        begin
            redist28_i_llvm_fpga_pop_i32_tmp_q_018_pop15_bicg33_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_tmp_q_018_pop15_bicg33_out_data_out);
        end
    end

    // i_mul22_bicg32_bs1_merged_bit_select(BITSELECT,369)@7
    assign i_mul22_bicg32_bs1_merged_bit_select_b = i_llvm_fpga_mem_unnamed_bicg8_bicg31_out_o_readdata[31:18];
    assign i_mul22_bicg32_bs1_merged_bit_select_c = i_llvm_fpga_mem_unnamed_bicg8_bicg31_out_o_readdata[17:0];

    // i_mul22_bicg32_ma3_cma(CHAINMULTADD,361)@7 + 3
    assign i_mul22_bicg32_ma3_cma_reset = ~ (resetn);
    assign i_mul22_bicg32_ma3_cma_ena0 = 1'b1;
    assign i_mul22_bicg32_ma3_cma_ena1 = i_mul22_bicg32_ma3_cma_ena0;
    assign i_mul22_bicg32_ma3_cma_ena2 = i_mul22_bicg32_ma3_cma_ena0;

    assign i_mul22_bicg32_ma3_cma_a0 = i_mul22_bicg32_bs1_merged_bit_select_b;
    assign i_mul22_bicg32_ma3_cma_c0 = i_mul22_bicg32_bs2_merged_bit_select_c;
    assign i_mul22_bicg32_ma3_cma_a1 = i_mul22_bicg32_bs2_merged_bit_select_b;
    assign i_mul22_bicg32_ma3_cma_c1 = i_mul22_bicg32_bs1_merged_bit_select_c;
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
    ) i_mul22_bicg32_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul22_bicg32_ma3_cma_ena2, i_mul22_bicg32_ma3_cma_ena1, i_mul22_bicg32_ma3_cma_ena0 }),
        .aclr({ i_mul22_bicg32_ma3_cma_reset, i_mul22_bicg32_ma3_cma_reset }),
        .ay(i_mul22_bicg32_ma3_cma_a1),
        .by(i_mul22_bicg32_ma3_cma_a0),
        .ax(i_mul22_bicg32_ma3_cma_c1),
        .bx(i_mul22_bicg32_ma3_cma_c0),
        .resulta(i_mul22_bicg32_ma3_cma_s0),
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
    i_mul22_bicg32_ma3_cma_delay ( .xin(i_mul22_bicg32_ma3_cma_s0), .xout(i_mul22_bicg32_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul22_bicg32_ma3_cma_q = $unsigned(i_mul22_bicg32_ma3_cma_qq[32:0]);

    // i_mul22_bicg32_sums_align_1(BITSHIFT,267)@10
    assign i_mul22_bicg32_sums_align_1_qint = { i_mul22_bicg32_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul22_bicg32_sums_align_1_q = i_mul22_bicg32_sums_align_1_qint[50:0];

    // i_mul22_bicg32_im0_cma(CHAINMULTADD,357)@7 + 3
    assign i_mul22_bicg32_im0_cma_reset = ~ (resetn);
    assign i_mul22_bicg32_im0_cma_ena0 = 1'b1;
    assign i_mul22_bicg32_im0_cma_ena1 = i_mul22_bicg32_im0_cma_ena0;
    assign i_mul22_bicg32_im0_cma_ena2 = i_mul22_bicg32_im0_cma_ena0;

    assign i_mul22_bicg32_im0_cma_a0 = i_mul22_bicg32_bs1_merged_bit_select_b;
    assign i_mul22_bicg32_im0_cma_c0 = i_mul22_bicg32_bs2_merged_bit_select_b;
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
    ) i_mul22_bicg32_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul22_bicg32_im0_cma_ena2, i_mul22_bicg32_im0_cma_ena1, i_mul22_bicg32_im0_cma_ena0 }),
        .aclr({ i_mul22_bicg32_im0_cma_reset, i_mul22_bicg32_im0_cma_reset }),
        .ay(i_mul22_bicg32_im0_cma_a0),
        .ax(i_mul22_bicg32_im0_cma_c0),
        .resulta(i_mul22_bicg32_im0_cma_s0),
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
    i_mul22_bicg32_im0_cma_delay ( .xin(i_mul22_bicg32_im0_cma_s0), .xout(i_mul22_bicg32_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul22_bicg32_im0_cma_q = $unsigned(i_mul22_bicg32_im0_cma_qq[27:0]);

    // i_mul22_bicg32_im8_cma(CHAINMULTADD,358)@7 + 3
    assign i_mul22_bicg32_im8_cma_reset = ~ (resetn);
    assign i_mul22_bicg32_im8_cma_ena0 = 1'b1;
    assign i_mul22_bicg32_im8_cma_ena1 = i_mul22_bicg32_im8_cma_ena0;
    assign i_mul22_bicg32_im8_cma_ena2 = i_mul22_bicg32_im8_cma_ena0;

    assign i_mul22_bicg32_im8_cma_a0 = i_mul22_bicg32_bs1_merged_bit_select_c;
    assign i_mul22_bicg32_im8_cma_c0 = i_mul22_bicg32_bs2_merged_bit_select_c;
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
    ) i_mul22_bicg32_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul22_bicg32_im8_cma_ena2, i_mul22_bicg32_im8_cma_ena1, i_mul22_bicg32_im8_cma_ena0 }),
        .aclr({ i_mul22_bicg32_im8_cma_reset, i_mul22_bicg32_im8_cma_reset }),
        .ay(i_mul22_bicg32_im8_cma_a0),
        .ax(i_mul22_bicg32_im8_cma_c0),
        .resulta(i_mul22_bicg32_im8_cma_s0),
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
    i_mul22_bicg32_im8_cma_delay ( .xin(i_mul22_bicg32_im8_cma_s0), .xout(i_mul22_bicg32_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul22_bicg32_im8_cma_q = $unsigned(i_mul22_bicg32_im8_cma_qq[35:0]);

    // i_mul22_bicg32_sums_join_0(BITJOIN,266)@10
    assign i_mul22_bicg32_sums_join_0_q = {i_mul22_bicg32_im0_cma_q, i_mul22_bicg32_im8_cma_q};

    // i_mul22_bicg32_sums_result_add_0_0(ADD,269)@10
    assign i_mul22_bicg32_sums_result_add_0_0_a = {1'b0, i_mul22_bicg32_sums_join_0_q};
    assign i_mul22_bicg32_sums_result_add_0_0_b = {14'b00000000000000, i_mul22_bicg32_sums_align_1_q};
    assign i_mul22_bicg32_sums_result_add_0_0_o = $unsigned(i_mul22_bicg32_sums_result_add_0_0_a) + $unsigned(i_mul22_bicg32_sums_result_add_0_0_b);
    assign i_mul22_bicg32_sums_result_add_0_0_q = i_mul22_bicg32_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul22_bicg32_sel_x(BITSELECT,130)@10
    assign bgTrunc_i_mul22_bicg32_sel_x_in = i_mul22_bicg32_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul22_bicg32_sel_x_b = bgTrunc_i_mul22_bicg32_sel_x_in[31:0];

    // redist22_bgTrunc_i_mul22_bicg32_sel_x_b_1(DELAY,392)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_bgTrunc_i_mul22_bicg32_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist22_bgTrunc_i_mul22_bicg32_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul22_bicg32_sel_x_b);
        end
    end

    // i_add23_bicg34(ADD,52)@11
    assign i_add23_bicg34_a = {1'b0, redist22_bgTrunc_i_mul22_bicg32_sel_x_b_1_q};
    assign i_add23_bicg34_b = {1'b0, redist28_i_llvm_fpga_pop_i32_tmp_q_018_pop15_bicg33_out_data_out_1_q};
    assign i_add23_bicg34_o = $unsigned(i_add23_bicg34_a) + $unsigned(i_add23_bicg34_b);
    assign i_add23_bicg34_q = i_add23_bicg34_o[32:0];

    // bgTrunc_i_add23_bicg34_sel_x(BITSELECT,126)@11
    assign bgTrunc_i_add23_bicg34_sel_x_b = i_add23_bicg34_q[31:0];

    // redist23_bgTrunc_i_add23_bicg34_sel_x_b_1(DELAY,393)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_bgTrunc_i_add23_bicg34_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist23_bgTrunc_i_add23_bicg34_sel_x_b_1_q <= $unsigned(bgTrunc_i_add23_bicg34_sel_x_b);
        end
    end

    // redist35_i_llvm_fpga_pipeline_keep_going_bicg6_out_data_out_11(DELAY,405)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_i_llvm_fpga_pipeline_keep_going_bicg6_out_data_out_11_q <= '0;
        end
        else
        begin
            redist35_i_llvm_fpga_pipeline_keep_going_bicg6_out_data_out_11_q <= $unsigned(redist34_i_llvm_fpga_pipeline_keep_going_bicg6_out_data_out_10_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,213)@12
    assign out_c0_exi970_0_tpl = GND_q;
    assign out_c0_exi970_1_tpl = redist35_i_llvm_fpga_pipeline_keep_going_bicg6_out_data_out_11_q;
    assign out_c0_exi970_2_tpl = i_llvm_fpga_mem_memdep_1_bicg29_out_o_writeack;
    assign out_c0_exi970_3_tpl = redist23_bgTrunc_i_add23_bicg34_sel_x_b_1_q;
    assign out_c0_exi970_4_tpl = redist25_i_masked_bicg48_q_10_q;
    assign out_c0_exi970_5_tpl = redist27_i_llvm_fpga_pop_p66i32_arrayidx122_pop22_bicg51_out_data_out_10_mem_q;
    assign out_c0_exi970_6_tpl = redist31_i_llvm_fpga_pop_i1_exitcond623_pop23_bicg53_out_data_out_2_q;
    assign out_c0_exi970_7_tpl = redist29_i_llvm_fpga_pop_i1_notcmp724_pop24_bicg55_out_data_out_10_q;
    assign out_c0_exi970_8_tpl = redist12_sync_together127_aunroll_x_in_c0_eni11_10_tpl_11_q;
    assign out_c0_exi970_9_tpl = redist13_sync_together127_aunroll_x_in_c0_eni11_11_tpl_11_q;
    assign out_o_valid = redist0_valid_fanout_reg0_q_1_q;
    assign out_unnamed_bicg0 = GND_q;

    // i_llvm_fpga_pop_i1_memdep_phi_pop718_pop19_bicg49(BLACKBOX,88)@2
    // out out_feedback_stall_out_19@20000000
    bicg_i_llvm_fpga_pop_i1_memdep_phi_pop718_pop19_0 thei_llvm_fpga_pop_i1_memdep_phi_pop718_pop19_bicg49 (
        .in_data_in(redist8_sync_together127_aunroll_x_in_c0_eni11_6_tpl_1_q),
        .in_dir(redist1_sync_together127_aunroll_x_in_c0_eni11_1_tpl_1_q),
        .in_feedback_in_19(i_llvm_fpga_push_i1_memdep_phi_pop718_push19_bicg50_out_feedback_out_19),
        .in_feedback_valid_in_19(i_llvm_fpga_push_i1_memdep_phi_pop718_push19_bicg50_out_feedback_valid_out_19),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop718_pop19_bicg49_out_data_out),
        .out_feedback_stall_out_19(i_llvm_fpga_pop_i1_memdep_phi_pop718_pop19_bicg49_out_feedback_stall_out_19),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_memdep_phi_pop718_push19_bicg50(BLACKBOX,101)@2
    // out out_feedback_out_19@20000000
    // out out_feedback_valid_out_19@20000000
    bicg_i_llvm_fpga_push_i1_memdep_phi_pop718_push19_0 thei_llvm_fpga_push_i1_memdep_phi_pop718_push19_bicg50 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi_pop718_pop19_bicg49_out_data_out),
        .in_feedback_stall_in_19(i_llvm_fpga_pop_i1_memdep_phi_pop718_pop19_bicg49_out_feedback_stall_out_19),
        .in_keep_going(redist32_i_llvm_fpga_pipeline_keep_going_bicg6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_data_out(),
        .out_feedback_out_19(i_llvm_fpga_push_i1_memdep_phi_pop718_push19_bicg50_out_feedback_out_19),
        .out_feedback_valid_out_19(i_llvm_fpga_push_i1_memdep_phi_pop718_push19_bicg50_out_feedback_valid_out_19),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg19(REG,234)@1 + 1
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

    // valid_fanout_reg20(REG,235)@1 + 1
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

    // redist8_sync_together127_aunroll_x_in_c0_eni11_6_tpl_1(DELAY,378)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together127_aunroll_x_in_c0_eni11_6_tpl_1_q <= '0;
        end
        else
        begin
            redist8_sync_together127_aunroll_x_in_c0_eni11_6_tpl_1_q <= $unsigned(in_c0_eni11_6_tpl);
        end
    end

endmodule
