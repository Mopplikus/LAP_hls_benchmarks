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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body8_ataxs_c0_enter9419_atax0
// Created for function/kernel atax
// SystemVerilog created on Wed Apr 26 13:39:40 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_i_sfc_logic_s_c0_in_for_body8_s_c0_enter9419_atax0 (
    input wire [31:0] in_unnamed_atax4_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax4_atax_avm_writeack,
    input wire [0:0] in_unnamed_atax4_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax4_atax_avm_readdatavalid,
    output wire [31:0] out_unnamed_atax4_atax_avm_address,
    output wire [0:0] out_unnamed_atax4_atax_avm_enable,
    output wire [0:0] out_unnamed_atax4_atax_avm_read,
    output wire [0:0] out_unnamed_atax4_atax_avm_write,
    output wire [31:0] out_unnamed_atax4_atax_avm_writedata,
    output wire [3:0] out_unnamed_atax4_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax4_atax_avm_burstcount,
    input wire [0:0] in_flush,
    output wire [0:0] out_exiting_valid_out,
    input wire [31:0] in_unnamed_atax5_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax5_atax_avm_writeack,
    input wire [0:0] in_unnamed_atax5_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax5_atax_avm_readdatavalid,
    output wire [31:0] out_unnamed_atax5_atax_avm_address,
    output wire [0:0] out_unnamed_atax5_atax_avm_enable,
    output wire [0:0] out_unnamed_atax5_atax_avm_read,
    output wire [0:0] out_unnamed_atax5_atax_avm_write,
    output wire [31:0] out_unnamed_atax5_atax_avm_writedata,
    output wire [3:0] out_unnamed_atax5_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax5_atax_avm_burstcount,
    output wire [0:0] out_pipeline_dummy_out,
    output wire [0:0] out_pipeline_forked_out,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_atax_B5_current_iter_isspec,
    output wire [0:0] out_c0_exi12_0_tpl,
    output wire [63:0] out_c0_exi12_1_tpl,
    output wire [31:0] out_c0_exi12_2_tpl,
    output wire [0:0] out_c0_exi12_3_tpl,
    output wire [0:0] out_c0_exi12_4_tpl,
    output wire [0:0] out_c0_exi12_5_tpl,
    output wire [0:0] out_c0_exi12_6_tpl,
    output wire [0:0] out_c0_exi12_7_tpl,
    output wire [63:0] out_c0_exi12_8_tpl,
    output wire [0:0] out_c0_exi12_9_tpl,
    output wire [0:0] out_c0_exi12_10_tpl,
    output wire [0:0] out_c0_exi12_11_tpl,
    output wire [0:0] out_c0_exi12_12_tpl,
    output wire [0:0] out_o_valid,
    input wire [0:0] in_buffer_in,
    input wire [0:0] in_c0_eni11_0_tpl,
    input wire [0:0] in_c0_eni11_1_tpl,
    input wire [63:0] in_c0_eni11_2_tpl,
    input wire [31:0] in_c0_eni11_3_tpl,
    input wire [0:0] in_c0_eni11_4_tpl,
    input wire [0:0] in_c0_eni11_5_tpl,
    input wire [0:0] in_c0_eni11_6_tpl,
    input wire [63:0] in_c0_eni11_7_tpl,
    input wire [0:0] in_c0_eni11_8_tpl,
    input wire [0:0] in_c0_eni11_9_tpl,
    input wire [0:0] in_c0_eni11_10_tpl,
    input wire [0:0] in_c0_eni11_11_tpl,
    input wire [0:0] in_dummy_in,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_atax_A_local_pmem_q;
    wire [63:0] c_atax_x_local_pmem_q;
    wire [31:0] c_i32_097_q;
    wire [31:0] c_i32_198_q;
    wire [5:0] c_i6_1101_q;
    wire [5:0] c_i6_1899_q;
    wire [32:0] i_add_atax18_a;
    wire [32:0] i_add_atax18_b;
    logic [32:0] i_add_atax18_o;
    wire [32:0] i_add_atax18_q;
    wire [1:0] i_arrayidx122_atax12_vt_const_1_q;
    wire [63:0] i_arrayidx122_atax12_vt_join_q;
    wire [61:0] i_arrayidx122_atax12_vt_select_63_b;
    wire [63:0] i_arrayidx143_atax14_vt_join_q;
    wire [61:0] i_arrayidx143_atax14_vt_select_63_b;
    wire [0:0] i_atax_b5_current_iter_isspec_atax5_q;
    wire [0:0] i_atax_b5_next_iter_isreal_atax7_q;
    wire [6:0] i_fpga_indvars_iv_next_atax28_a;
    wire [6:0] i_fpga_indvars_iv_next_atax28_b;
    logic [6:0] i_fpga_indvars_iv_next_atax28_o;
    wire [6:0] i_fpga_indvars_iv_next_atax28_q;
    wire [63:0] i_idxprom11_atax10_vt_join_q;
    wire [31:0] i_idxprom11_atax10_vt_select_31_b;
    wire [32:0] i_inc_atax19_a;
    wire [32:0] i_inc_atax19_b;
    logic [32:0] i_inc_atax19_o;
    wire [32:0] i_inc_atax19_q;
    wire [0:0] i_llvm_fpga_dummy_thread_atax_b5_dummy_atax2_out_dummy_out;
    wire [0:0] i_llvm_fpga_forked_atax_b5_forked_atax3_out_buffer_out;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax4_atax13_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax4_atax13_out_unnamed_atax4_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax4_atax13_out_unnamed_atax4_atax_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_atax4_atax13_out_unnamed_atax4_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax4_atax13_out_unnamed_atax4_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax4_atax13_out_unnamed_atax4_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax4_atax13_out_unnamed_atax4_atax_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax4_atax13_out_unnamed_atax4_atax_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax5_atax15_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax5_atax15_out_unnamed_atax5_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax5_atax15_out_unnamed_atax5_atax_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_atax5_atax15_out_unnamed_atax5_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax5_atax15_out_unnamed_atax5_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax5_atax15_out_unnamed_atax5_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax5_atax15_out_unnamed_atax5_atax_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax5_atax15_out_unnamed_atax5_atax_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going12_atax6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going12_atax6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going12_atax6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going12_atax6_out_pipeline_dummy_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going12_atax6_out_pipeline_forked_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going12_atax6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond13_atax27_out_feedback_out_4;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond13_atax27_out_feedback_valid_out_4;
    wire [0:0] i_notcmp10_atax26_q;
    wire [31:0] bgTrunc_i_add_atax18_sel_x_b;
    wire [5:0] bgTrunc_i_fpga_indvars_iv_next_atax28_sel_x_b;
    wire [31:0] bgTrunc_i_inc_atax19_sel_x_b;
    wire [63:0] bgTrunc_i_mul_atax16_sel_x_in;
    wire [31:0] bgTrunc_i_mul_atax16_sel_x_b;
    wire [11:0] i_arrayidx122_atax0_add_x_a;
    wire [11:0] i_arrayidx122_atax0_add_x_b;
    logic [11:0] i_arrayidx122_atax0_add_x_o;
    wire [11:0] i_arrayidx122_atax0_add_x_q;
    wire [63:0] i_arrayidx122_atax0_append_upper_bits_x_q;
    wire [8:0] i_arrayidx122_atax0_narrow_x_b;
    wire [10:0] i_arrayidx122_atax0_shift_join_x_q;
    wire [11:0] i_arrayidx122_atax0_dupName_0_add_x_a;
    wire [11:0] i_arrayidx122_atax0_dupName_0_add_x_b;
    logic [11:0] i_arrayidx122_atax0_dupName_0_add_x_o;
    wire [11:0] i_arrayidx122_atax0_dupName_0_add_x_q;
    wire [21:0] i_arrayidx122_atax0_mult_extender_x_q;
    wire [3:0] i_arrayidx122_atax0_mult_multconst_x_q;
    wire [10:0] i_arrayidx122_atax0_dupName_0_trunc_sel_x_b;
    wire [10:0] i_arrayidx122_atax0_dupName_1_trunc_sel_x_b;
    wire [10:0] i_arrayidx122_atax0_dupName_2_trunc_sel_x_b;
    wire [10:0] i_arrayidx122_atax0_dupName_3_trunc_sel_x_b;
    wire [10:0] i_arrayidx122_atax0_dupName_5_trunc_sel_x_b;
    wire [7:0] i_arrayidx143_atax0_add_x_a;
    wire [7:0] i_arrayidx143_atax0_add_x_b;
    logic [7:0] i_arrayidx143_atax0_add_x_o;
    wire [7:0] i_arrayidx143_atax0_add_x_q;
    wire [63:0] i_arrayidx143_atax0_append_upper_bits_x_q;
    wire [4:0] i_arrayidx143_atax0_narrow_x_b;
    wire [6:0] i_arrayidx143_atax0_shift_join_x_q;
    wire [6:0] i_arrayidx143_atax0_dupName_0_trunc_sel_x_b;
    wire [6:0] i_arrayidx143_atax0_dupName_2_trunc_sel_x_b;
    wire [63:0] i_idxprom11_atax10_sel_x_b;
    wire [0:0] i_llvm_fpga_pop_coalesce_i1_atax_b5_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b5_current_iter_isreal_atax4_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_coalesce_i1_atax_b5_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b5_current_iter_isreal_atax4_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond936_pop24_atax0_i_llvm_fpga_pop_i1_exitcond936_pop24_atax38_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_exitcond936_pop24_atax0_i_llvm_fpga_pop_i1_exitcond936_pop24_atax38_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_forked2331_pop21_atax0_i_llvm_fpga_pop_i1_forked2331_pop21_atax34_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_forked2331_pop21_atax0_i_llvm_fpga_pop_i1_forked2331_pop21_atax34_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop1028_pop20_atax0_i_llvm_fpga_pop_i1_memdep_phi3_pop1028_pop20_atax32_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop1028_pop20_atax0_i_llvm_fpga_pop_i1_memdep_phi3_pop1028_pop20_atax32_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop925_pop19_atax0_i_llvm_fpga_pop_i1_memdep_phi_pop925_pop19_atax30_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop925_pop19_atax0_i_llvm_fpga_pop_i1_memdep_phi_pop925_pop19_atax30_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1538_pop25_atax0_i_llvm_fpga_pop_i1_notcmp1538_pop25_atax40_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_notcmp1538_pop25_atax0_i_llvm_fpga_pop_i1_notcmp1538_pop25_atax40_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_j_020_pop17_atax0_i_llvm_fpga_pop_i32_j_020_pop17_atax9_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_j_020_pop17_atax0_i_llvm_fpga_pop_i32_j_020_pop17_atax9_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_t_019_pop18_atax0_i_llvm_fpga_pop_i32_t_019_pop18_atax17_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_t_019_pop18_atax0_i_llvm_fpga_pop_i32_t_019_pop18_atax17_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i64_idxprom32_pop22_atax0_i_llvm_fpga_pop_i64_idxprom32_pop22_atax11_mux_x_s;
    reg [63:0] i_llvm_fpga_pop_i64_idxprom32_pop22_atax0_i_llvm_fpga_pop_i64_idxprom32_pop22_atax11_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv_pop16_atax0_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop16_atax20_mux_x_s;
    reg [5:0] i_llvm_fpga_pop_i6_fpga_indvars_iv_pop16_atax0_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop16_atax20_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax0_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax36_mux_x_s;
    reg [63:0] i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax0_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax36_mux_x_q;
    wire [6:0] i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_c_i7_03_x_q;
    wire [7:0] i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax1_x_i_valid;
    wire i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax1_x_i_stall;
    wire i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_inv_pred_x_q;
    wire [0:0] i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_exitcond936_push24_atax0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_exitcond936_push24_atax0_i_llvm_fpga_push_i1_exitcond936_push24_atax1_x_i_valid;
    wire i_llvm_fpga_push_i1_exitcond936_push24_atax0_i_llvm_fpga_push_i1_exitcond936_push24_atax1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_exitcond936_push24_atax0_i_llvm_fpga_push_i1_exitcond936_push24_atax1_x_i_stall;
    wire i_llvm_fpga_push_i1_exitcond936_push24_atax0_i_llvm_fpga_push_i1_exitcond936_push24_atax1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_exitcond936_push24_atax0_i_llvm_fpga_push_i1_exitcond936_push24_atax1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_exitcond936_push24_atax0_i_llvm_fpga_push_i1_exitcond936_push24_atax1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_exitcond936_push24_atax0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_forked2331_push21_atax0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_forked2331_push21_atax0_i_llvm_fpga_push_i1_forked2331_push21_atax1_x_i_valid;
    wire i_llvm_fpga_push_i1_forked2331_push21_atax0_i_llvm_fpga_push_i1_forked2331_push21_atax1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_forked2331_push21_atax0_i_llvm_fpga_push_i1_forked2331_push21_atax1_x_i_stall;
    wire i_llvm_fpga_push_i1_forked2331_push21_atax0_i_llvm_fpga_push_i1_forked2331_push21_atax1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_forked2331_push21_atax0_i_llvm_fpga_push_i1_forked2331_push21_atax1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_forked2331_push21_atax0_i_llvm_fpga_push_i1_forked2331_push21_atax1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_forked2331_push21_atax0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi3_pop1028_push20_atax0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_pop1028_push20_atax0_i_llvm_fpga_push_i1_memdep_phi3_pop1028_push20_atax1_x_i_valid;
    wire i_llvm_fpga_push_i1_memdep_phi3_pop1028_push20_atax0_i_llvm_fpga_push_i1_memdep_phi3_pop1028_push20_atax1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_pop1028_push20_atax0_i_llvm_fpga_push_i1_memdep_phi3_pop1028_push20_atax1_x_i_stall;
    wire i_llvm_fpga_push_i1_memdep_phi3_pop1028_push20_atax0_i_llvm_fpga_push_i1_memdep_phi3_pop1028_push20_atax1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi3_pop1028_push20_atax0_i_llvm_fpga_push_i1_memdep_phi3_pop1028_push20_atax1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi3_pop1028_push20_atax0_i_llvm_fpga_push_i1_memdep_phi3_pop1028_push20_atax1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_pop1028_push20_atax0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi_pop925_push19_atax0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop925_push19_atax0_i_llvm_fpga_push_i1_memdep_phi_pop925_push19_atax1_x_i_valid;
    wire i_llvm_fpga_push_i1_memdep_phi_pop925_push19_atax0_i_llvm_fpga_push_i1_memdep_phi_pop925_push19_atax1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop925_push19_atax0_i_llvm_fpga_push_i1_memdep_phi_pop925_push19_atax1_x_i_stall;
    wire i_llvm_fpga_push_i1_memdep_phi_pop925_push19_atax0_i_llvm_fpga_push_i1_memdep_phi_pop925_push19_atax1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi_pop925_push19_atax0_i_llvm_fpga_push_i1_memdep_phi_pop925_push19_atax1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi_pop925_push19_atax0_i_llvm_fpga_push_i1_memdep_phi_pop925_push19_atax1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop925_push19_atax0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_notcmp1538_push25_atax0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1538_push25_atax0_i_llvm_fpga_push_i1_notcmp1538_push25_atax1_x_i_valid;
    wire i_llvm_fpga_push_i1_notcmp1538_push25_atax0_i_llvm_fpga_push_i1_notcmp1538_push25_atax1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1538_push25_atax0_i_llvm_fpga_push_i1_notcmp1538_push25_atax1_x_i_stall;
    wire i_llvm_fpga_push_i1_notcmp1538_push25_atax0_i_llvm_fpga_push_i1_notcmp1538_push25_atax1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_notcmp1538_push25_atax0_i_llvm_fpga_push_i1_notcmp1538_push25_atax1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_notcmp1538_push25_atax0_i_llvm_fpga_push_i1_notcmp1538_push25_atax1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1538_push25_atax0_adapt_scalar_trunc4_sel_x_b;
    wire [0:0] i_llvm_fpga_push_i32_j_020_push17_atax0_i_llvm_fpga_push_i32_j_020_push17_atax1_x_i_valid;
    wire i_llvm_fpga_push_i32_j_020_push17_atax0_i_llvm_fpga_push_i32_j_020_push17_atax1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_j_020_push17_atax0_i_llvm_fpga_push_i32_j_020_push17_atax1_x_i_stall;
    wire i_llvm_fpga_push_i32_j_020_push17_atax0_i_llvm_fpga_push_i32_j_020_push17_atax1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_j_020_push17_atax0_i_llvm_fpga_push_i32_j_020_push17_atax1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_j_020_push17_atax0_i_llvm_fpga_push_i32_j_020_push17_atax1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i32_t_019_push18_atax0_i_llvm_fpga_push_i32_t_019_push18_atax1_x_i_valid;
    wire i_llvm_fpga_push_i32_t_019_push18_atax0_i_llvm_fpga_push_i32_t_019_push18_atax1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_t_019_push18_atax0_i_llvm_fpga_push_i32_t_019_push18_atax1_x_i_stall;
    wire i_llvm_fpga_push_i32_t_019_push18_atax0_i_llvm_fpga_push_i32_t_019_push18_atax1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_t_019_push18_atax0_i_llvm_fpga_push_i32_t_019_push18_atax1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_t_019_push18_atax0_i_llvm_fpga_push_i32_t_019_push18_atax1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i64_idxprom32_push22_atax0_i_llvm_fpga_push_i64_idxprom32_push22_atax1_x_i_valid;
    wire i_llvm_fpga_push_i64_idxprom32_push22_atax0_i_llvm_fpga_push_i64_idxprom32_push22_atax1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i64_idxprom32_push22_atax0_i_llvm_fpga_push_i64_idxprom32_push22_atax1_x_i_stall;
    wire i_llvm_fpga_push_i64_idxprom32_push22_atax0_i_llvm_fpga_push_i64_idxprom32_push22_atax1_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_i64_idxprom32_push22_atax0_i_llvm_fpga_push_i64_idxprom32_push22_atax1_x_i_data;
    wire [63:0] i_llvm_fpga_push_i64_idxprom32_push22_atax0_i_llvm_fpga_push_i64_idxprom32_push22_atax1_x_o_data;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push16_atax0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push16_atax0_i_llvm_fpga_push_i6_fpga_indvars_iv_push16_atax1_x_i_valid;
    wire i_llvm_fpga_push_i6_fpga_indvars_iv_push16_atax0_i_llvm_fpga_push_i6_fpga_indvars_iv_push16_atax1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push16_atax0_i_llvm_fpga_push_i6_fpga_indvars_iv_push16_atax1_x_i_stall;
    wire i_llvm_fpga_push_i6_fpga_indvars_iv_push16_atax0_i_llvm_fpga_push_i6_fpga_indvars_iv_push16_atax1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push16_atax0_i_llvm_fpga_push_i6_fpga_indvars_iv_push16_atax1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push16_atax0_i_llvm_fpga_push_i6_fpga_indvars_iv_push16_atax1_x_o_data;
    wire [5:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push16_atax0_adapt_scalar_trunc4_sel_x_b;
    wire [0:0] i_llvm_fpga_push_p67i32_arrayidx134_push23_atax0_i_llvm_fpga_push_p67i32_arrayidx134_push23_atax1_x_i_valid;
    wire i_llvm_fpga_push_p67i32_arrayidx134_push23_atax0_i_llvm_fpga_push_p67i32_arrayidx134_push23_atax1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_p67i32_arrayidx134_push23_atax0_i_llvm_fpga_push_p67i32_arrayidx134_push23_atax1_x_i_stall;
    wire i_llvm_fpga_push_p67i32_arrayidx134_push23_atax0_i_llvm_fpga_push_p67i32_arrayidx134_push23_atax1_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_p67i32_arrayidx134_push23_atax0_i_llvm_fpga_push_p67i32_arrayidx134_push23_atax1_x_i_data;
    wire [63:0] i_llvm_fpga_push_p67i32_arrayidx134_push23_atax0_i_llvm_fpga_push_p67i32_arrayidx134_push23_atax1_x_o_data;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg7_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg8_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg11_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg12_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg13_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg14_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg15_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg16_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg17_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg18_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg19_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg21_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg22_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg24_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg25_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg27_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg28_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg30_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg31_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg33_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg34_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg36_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg37_q;
    wire [0:0] i_exitcond_atax21_cmp_nsign_q;
    wire [14:0] i_mul_atax16_bjA2_q;
    wire [14:0] i_mul_atax16_bjB4_q;
    wire [65:0] i_mul_atax16_sums_join_0_q;
    wire [50:0] i_mul_atax16_sums_align_1_q;
    wire [50:0] i_mul_atax16_sums_align_1_qint;
    wire [66:0] i_mul_atax16_sums_result_add_0_0_a;
    wire [66:0] i_mul_atax16_sums_result_add_0_0_b;
    logic [66:0] i_mul_atax16_sums_result_add_0_0_o;
    wire [66:0] i_mul_atax16_sums_result_add_0_0_q;
    wire [11:0] addsumAHighB_uid290_i_arrayidx122_atax0_mult_x_a;
    wire [11:0] addsumAHighB_uid290_i_arrayidx122_atax0_mult_x_b;
    logic [11:0] addsumAHighB_uid290_i_arrayidx122_atax0_mult_x_o;
    wire [11:0] addsumAHighB_uid290_i_arrayidx122_atax0_mult_x_q;
    wire [13:0] add_uid291_i_arrayidx122_atax0_mult_x_q;
    wire [17:0] sR_mergedSignalTM_uid296_i_arrayidx122_atax0_mult_x_q;
    wire i_mul_atax16_im0_cma_reset;
    (* preserve_syn_only *) reg signed [14:0] i_mul_atax16_im0_cma_ah [0:0];
    (* preserve_syn_only *) reg signed [14:0] i_mul_atax16_im0_cma_ch [0:0];
    wire [14:0] i_mul_atax16_im0_cma_a0;
    wire [14:0] i_mul_atax16_im0_cma_c0;
    wire [29:0] i_mul_atax16_im0_cma_s0;
    wire [29:0] i_mul_atax16_im0_cma_qq;
    reg [29:0] i_mul_atax16_im0_cma_q;
    wire i_mul_atax16_im0_cma_ena0;
    wire i_mul_atax16_im0_cma_ena1;
    wire i_mul_atax16_im0_cma_ena2;
    wire i_mul_atax16_im10_cma_reset;
    (* preserve_syn_only *) reg [17:0] i_mul_atax16_im10_cma_ah [0:0];
    (* preserve_syn_only *) reg [17:0] i_mul_atax16_im10_cma_ch [0:0];
    wire [17:0] i_mul_atax16_im10_cma_a0;
    wire [17:0] i_mul_atax16_im10_cma_c0;
    wire [35:0] i_mul_atax16_im10_cma_s0;
    wire [35:0] i_mul_atax16_im10_cma_qq;
    reg [35:0] i_mul_atax16_im10_cma_q;
    wire i_mul_atax16_im10_cma_ena0;
    wire i_mul_atax16_im10_cma_ena1;
    wire i_mul_atax16_im10_cma_ena2;
    wire i_mul_atax16_ma5_cma_reset;
    (* preserve_syn_only *) reg [13:0] i_mul_atax16_ma5_cma_ah [0:1];
    (* preserve_syn_only *) reg [17:0] i_mul_atax16_ma5_cma_ch [0:1];
    wire [13:0] i_mul_atax16_ma5_cma_a0;
    wire [17:0] i_mul_atax16_ma5_cma_c0;
    wire [13:0] i_mul_atax16_ma5_cma_a1;
    wire [17:0] i_mul_atax16_ma5_cma_c1;
    wire [32:0] i_mul_atax16_ma5_cma_s0;
    wire [32:0] i_mul_atax16_ma5_cma_qq;
    reg [32:0] i_mul_atax16_ma5_cma_q;
    wire i_mul_atax16_ma5_cma_ena0;
    wire i_mul_atax16_ma5_cma_ena1;
    wire i_mul_atax16_ma5_cma_ena2;
    wire [52:0] i_arrayidx122_atax0_upper_bits_x_merged_bit_select_b;
    wire [10:0] i_arrayidx122_atax0_upper_bits_x_merged_bit_select_c;
    wire [56:0] i_arrayidx143_atax0_upper_bits_x_merged_bit_select_b;
    wire [6:0] i_arrayidx143_atax0_upper_bits_x_merged_bit_select_c;
    wire [13:0] i_mul_atax16_bs3_merged_bit_select_b;
    wire [17:0] i_mul_atax16_bs3_merged_bit_select_c;
    wire [13:0] i_mul_atax16_bs1_merged_bit_select_b;
    wire [17:0] i_mul_atax16_bs1_merged_bit_select_c;
    wire [1:0] lowRangeB_uid288_i_arrayidx122_atax0_mult_x_merged_bit_select_b;
    wire [8:0] lowRangeB_uid288_i_arrayidx122_atax0_mult_x_merged_bit_select_c;
    reg [52:0] redist0_i_arrayidx122_atax0_upper_bits_x_merged_bit_select_b_1_q;
    reg [32:0] redist1_i_mul_atax16_ma5_cma_q_1_q;
    reg [35:0] redist2_i_mul_atax16_im10_cma_q_1_q;
    reg [29:0] redist3_i_mul_atax16_im0_cma_q_1_q;
    reg [0:0] redist4_i_exitcond_atax21_cmp_nsign_q_14_q;
    reg [0:0] redist5_valid_fanout_reg0_q_1_q;
    reg [63:0] redist6_sync_together108_aunroll_x_in_c0_eni11_2_tpl_4_q;
    reg [63:0] redist6_sync_together108_aunroll_x_in_c0_eni11_2_tpl_4_delay_0;
    reg [63:0] redist6_sync_together108_aunroll_x_in_c0_eni11_2_tpl_4_delay_1;
    reg [0:0] redist8_sync_together108_aunroll_x_in_c0_eni11_4_tpl_4_q;
    reg [0:0] redist8_sync_together108_aunroll_x_in_c0_eni11_4_tpl_4_delay_0;
    reg [0:0] redist8_sync_together108_aunroll_x_in_c0_eni11_4_tpl_4_delay_1;
    reg [0:0] redist8_sync_together108_aunroll_x_in_c0_eni11_4_tpl_4_delay_2;
    reg [0:0] redist9_sync_together108_aunroll_x_in_c0_eni11_5_tpl_4_q;
    reg [0:0] redist9_sync_together108_aunroll_x_in_c0_eni11_5_tpl_4_delay_0;
    reg [0:0] redist9_sync_together108_aunroll_x_in_c0_eni11_5_tpl_4_delay_1;
    reg [0:0] redist9_sync_together108_aunroll_x_in_c0_eni11_5_tpl_4_delay_2;
    reg [0:0] redist10_sync_together108_aunroll_x_in_c0_eni11_6_tpl_17_q;
    reg [63:0] redist11_sync_together108_aunroll_x_in_c0_eni11_7_tpl_4_q;
    reg [63:0] redist11_sync_together108_aunroll_x_in_c0_eni11_7_tpl_4_delay_0;
    reg [63:0] redist11_sync_together108_aunroll_x_in_c0_eni11_7_tpl_4_delay_1;
    reg [0:0] redist12_sync_together108_aunroll_x_in_c0_eni11_8_tpl_4_q;
    reg [0:0] redist12_sync_together108_aunroll_x_in_c0_eni11_8_tpl_4_delay_0;
    reg [0:0] redist12_sync_together108_aunroll_x_in_c0_eni11_8_tpl_4_delay_1;
    reg [0:0] redist12_sync_together108_aunroll_x_in_c0_eni11_8_tpl_4_delay_2;
    reg [0:0] redist13_sync_together108_aunroll_x_in_c0_eni11_9_tpl_4_q;
    reg [0:0] redist13_sync_together108_aunroll_x_in_c0_eni11_9_tpl_4_delay_0;
    reg [0:0] redist13_sync_together108_aunroll_x_in_c0_eni11_9_tpl_4_delay_1;
    reg [0:0] redist13_sync_together108_aunroll_x_in_c0_eni11_9_tpl_4_delay_2;
    reg [0:0] redist14_sync_together108_aunroll_x_in_c0_eni11_10_tpl_18_q;
    reg [0:0] redist15_sync_together108_aunroll_x_in_c0_eni11_11_tpl_18_q;
    reg [0:0] redist16_sync_together108_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist16_sync_together108_aunroll_x_in_i_valid_2_delay_0;
    reg [0:0] redist17_sync_together108_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist18_sync_together108_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist19_sync_together108_aunroll_x_in_i_valid_5_q;
    reg [0:0] redist20_sync_together108_aunroll_x_in_i_valid_13_q;
    reg [0:0] redist21_sync_together108_aunroll_x_in_i_valid_16_q;
    reg [0:0] redist21_sync_together108_aunroll_x_in_i_valid_16_delay_0;
    reg [0:0] redist21_sync_together108_aunroll_x_in_i_valid_16_delay_1;
    reg [0:0] redist22_i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_inv_pred_x_q_2_q;
    reg [0:0] redist22_i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_inv_pred_x_q_2_delay_0;
    reg [0:0] redist23_i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_inv_pred_x_q_3_q;
    reg [0:0] redist24_i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_inv_pred_x_q_4_q;
    reg [0:0] redist25_i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_inv_pred_x_q_13_q;
    reg [0:0] redist26_i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_inv_pred_x_q_16_q;
    reg [0:0] redist26_i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_inv_pred_x_q_16_delay_0;
    reg [0:0] redist26_i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_inv_pred_x_q_16_delay_1;
    reg [0:0] redist29_i_llvm_fpga_pop_i1_notcmp1538_pop25_atax0_i_llvm_fpga_pop_i1_notcmp1538_pop25_atax40_mux_x_q_14_q;
    reg [0:0] redist30_i_llvm_fpga_pop_i1_memdep_phi_pop925_pop19_atax0_i_llvm_fpga_pop_i1_memdep_phi_pop925_pop19_atax30_mux_x_q_14_q;
    reg [0:0] redist31_i_llvm_fpga_pop_i1_memdep_phi3_pop1028_pop20_atax0_i_llvm_fpga_pop_i1_memdep_phi3_pop1028_pop20_atax32_mux_x_q_14_q;
    reg [0:0] redist32_i_llvm_fpga_pop_i1_exitcond936_pop24_atax0_i_llvm_fpga_pop_i1_exitcond936_pop24_atax38_mux_x_q_14_q;
    reg [10:0] redist33_i_arrayidx122_atax0_dupName_2_trunc_sel_x_b_1_q;
    reg [10:0] redist34_i_arrayidx122_atax0_dupName_1_trunc_sel_x_b_1_q;
    reg [31:0] redist35_bgTrunc_i_mul_atax16_sel_x_b_1_q;
    reg [0:0] redist36_i_llvm_fpga_pipeline_keep_going12_atax6_out_data_out_2_q;
    reg [0:0] redist36_i_llvm_fpga_pipeline_keep_going12_atax6_out_data_out_2_delay_0;
    reg [0:0] redist37_i_llvm_fpga_forked_atax_b5_forked_atax3_out_buffer_out_4_q;
    reg [0:0] redist37_i_llvm_fpga_forked_atax_b5_forked_atax3_out_buffer_out_4_delay_0;
    reg [0:0] redist37_i_llvm_fpga_forked_atax_b5_forked_atax3_out_buffer_out_4_delay_1;
    reg [0:0] redist37_i_llvm_fpga_forked_atax_b5_forked_atax3_out_buffer_out_4_delay_2;
    reg [0:0] redist38_i_llvm_fpga_forked_atax_b5_forked_atax3_out_buffer_out_6_q;
    reg [0:0] redist38_i_llvm_fpga_forked_atax_b5_forked_atax3_out_buffer_out_6_delay_0;
    reg [0:0] redist39_i_llvm_fpga_forked_atax_b5_forked_atax3_out_buffer_out_17_q;
    reg [0:0] redist40_i_llvm_fpga_dummy_thread_atax_b5_dummy_atax2_out_dummy_out_4_q;
    reg [0:0] redist40_i_llvm_fpga_dummy_thread_atax_b5_dummy_atax2_out_dummy_out_4_delay_0;
    reg [0:0] redist40_i_llvm_fpga_dummy_thread_atax_b5_dummy_atax2_out_dummy_out_4_delay_1;
    reg [0:0] redist40_i_llvm_fpga_dummy_thread_atax_b5_dummy_atax2_out_dummy_out_4_delay_2;
    reg [0:0] redist41_i_atax_b5_current_iter_isspec_atax5_q_12_q;
    reg [63:0] redist6_sync_together108_aunroll_x_in_c0_eni11_2_tpl_4_inputreg0_q;
    reg [31:0] redist7_sync_together108_aunroll_x_in_c0_eni11_3_tpl_17_inputreg0_q;
    reg [31:0] redist7_sync_together108_aunroll_x_in_c0_eni11_3_tpl_17_outputreg0_q;
    wire redist7_sync_together108_aunroll_x_in_c0_eni11_3_tpl_17_mem_reset0;
    wire [31:0] redist7_sync_together108_aunroll_x_in_c0_eni11_3_tpl_17_mem_ia;
    wire [3:0] redist7_sync_together108_aunroll_x_in_c0_eni11_3_tpl_17_mem_aa;
    wire [3:0] redist7_sync_together108_aunroll_x_in_c0_eni11_3_tpl_17_mem_ab;
    wire [31:0] redist7_sync_together108_aunroll_x_in_c0_eni11_3_tpl_17_mem_iq;
    wire [31:0] redist7_sync_together108_aunroll_x_in_c0_eni11_3_tpl_17_mem_q;
    wire [3:0] redist7_sync_together108_aunroll_x_in_c0_eni11_3_tpl_17_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist7_sync_together108_aunroll_x_in_c0_eni11_3_tpl_17_wraddr_i = 4'b1111;
    wire [3:0] redist7_sync_together108_aunroll_x_in_c0_eni11_3_tpl_17_offset_q;
    wire [4:0] redist7_sync_together108_aunroll_x_in_c0_eni11_3_tpl_17_rdcnt_a;
    wire [4:0] redist7_sync_together108_aunroll_x_in_c0_eni11_3_tpl_17_rdcnt_b;
    logic [4:0] redist7_sync_together108_aunroll_x_in_c0_eni11_3_tpl_17_rdcnt_o;
    wire [4:0] redist7_sync_together108_aunroll_x_in_c0_eni11_3_tpl_17_rdcnt_q;
    reg [63:0] redist11_sync_together108_aunroll_x_in_c0_eni11_7_tpl_4_inputreg0_q;
    reg [63:0] redist27_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax0_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax36_mux_x_q_14_inputreg0_q;
    reg [63:0] redist27_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax0_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax36_mux_x_q_14_outputreg0_q;
    wire redist27_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax0_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax36_mux_x_q_14_mem_reset0;
    wire [63:0] redist27_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax0_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax36_mux_x_q_14_mem_ia;
    wire [3:0] redist27_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax0_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax36_mux_x_q_14_mem_aa;
    wire [3:0] redist27_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax0_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax36_mux_x_q_14_mem_ab;
    wire [63:0] redist27_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax0_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax36_mux_x_q_14_mem_iq;
    wire [63:0] redist27_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax0_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax36_mux_x_q_14_mem_q;
    wire [3:0] redist27_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax0_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax36_mux_x_q_14_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist27_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax0_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax36_mux_x_q_14_wraddr_i = 4'b1111;
    wire [3:0] redist27_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax0_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax36_mux_x_q_14_offset_q;
    wire [4:0] redist27_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax0_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax36_mux_x_q_14_rdcnt_a;
    wire [4:0] redist27_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax0_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax36_mux_x_q_14_rdcnt_b;
    logic [4:0] redist27_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax0_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax36_mux_x_q_14_rdcnt_o;
    wire [4:0] redist27_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax0_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax36_mux_x_q_14_rdcnt_q;
    reg [63:0] redist28_i_llvm_fpga_pop_i64_idxprom32_pop22_atax0_i_llvm_fpga_pop_i64_idxprom32_pop22_atax11_mux_x_q_14_inputreg0_q;
    reg [63:0] redist28_i_llvm_fpga_pop_i64_idxprom32_pop22_atax0_i_llvm_fpga_pop_i64_idxprom32_pop22_atax11_mux_x_q_14_outputreg0_q;
    wire redist28_i_llvm_fpga_pop_i64_idxprom32_pop22_atax0_i_llvm_fpga_pop_i64_idxprom32_pop22_atax11_mux_x_q_14_mem_reset0;
    wire [63:0] redist28_i_llvm_fpga_pop_i64_idxprom32_pop22_atax0_i_llvm_fpga_pop_i64_idxprom32_pop22_atax11_mux_x_q_14_mem_ia;
    wire [3:0] redist28_i_llvm_fpga_pop_i64_idxprom32_pop22_atax0_i_llvm_fpga_pop_i64_idxprom32_pop22_atax11_mux_x_q_14_mem_aa;
    wire [3:0] redist28_i_llvm_fpga_pop_i64_idxprom32_pop22_atax0_i_llvm_fpga_pop_i64_idxprom32_pop22_atax11_mux_x_q_14_mem_ab;
    wire [63:0] redist28_i_llvm_fpga_pop_i64_idxprom32_pop22_atax0_i_llvm_fpga_pop_i64_idxprom32_pop22_atax11_mux_x_q_14_mem_iq;
    wire [63:0] redist28_i_llvm_fpga_pop_i64_idxprom32_pop22_atax0_i_llvm_fpga_pop_i64_idxprom32_pop22_atax11_mux_x_q_14_mem_q;
    wire [3:0] redist28_i_llvm_fpga_pop_i64_idxprom32_pop22_atax0_i_llvm_fpga_pop_i64_idxprom32_pop22_atax11_mux_x_q_14_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist28_i_llvm_fpga_pop_i64_idxprom32_pop22_atax0_i_llvm_fpga_pop_i64_idxprom32_pop22_atax11_mux_x_q_14_wraddr_i = 4'b1111;
    wire [4:0] redist28_i_llvm_fpga_pop_i64_idxprom32_pop22_atax0_i_llvm_fpga_pop_i64_idxprom32_pop22_atax11_mux_x_q_14_rdcnt_a;
    wire [4:0] redist28_i_llvm_fpga_pop_i64_idxprom32_pop22_atax0_i_llvm_fpga_pop_i64_idxprom32_pop22_atax11_mux_x_q_14_rdcnt_b;
    logic [4:0] redist28_i_llvm_fpga_pop_i64_idxprom32_pop22_atax0_i_llvm_fpga_pop_i64_idxprom32_pop22_atax11_mux_x_q_14_rdcnt_o;
    wire [4:0] redist28_i_llvm_fpga_pop_i64_idxprom32_pop22_atax0_i_llvm_fpga_pop_i64_idxprom32_pop22_atax11_mux_x_q_14_rdcnt_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist16_sync_together108_aunroll_x_in_i_valid_2(DELAY,350)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist16_sync_together108_aunroll_x_in_i_valid_2_delay_0 <= '0;
        end
        else
        begin
            redist16_sync_together108_aunroll_x_in_i_valid_2_delay_0 <= $unsigned(in_i_valid);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist16_sync_together108_aunroll_x_in_i_valid_2_q <= redist16_sync_together108_aunroll_x_in_i_valid_2_delay_0;
        end
    end

    // redist17_sync_together108_aunroll_x_in_i_valid_3(DELAY,351)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist17_sync_together108_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist17_sync_together108_aunroll_x_in_i_valid_3_q <= $unsigned(redist16_sync_together108_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist18_sync_together108_aunroll_x_in_i_valid_4(DELAY,352)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist18_sync_together108_aunroll_x_in_i_valid_4_q <= $unsigned(redist17_sync_together108_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist19_sync_together108_aunroll_x_in_i_valid_5(DELAY,353)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist19_sync_together108_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist19_sync_together108_aunroll_x_in_i_valid_5_q <= $unsigned(redist18_sync_together108_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg7(REG,218)@5 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist19_sync_together108_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_c_i7_03_x(CONSTANT,156)
    assign i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_c_i7_03_x_q = $unsigned(7'b0000000);

    // valid_fanout_reg2(REG,213)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist17_sync_together108_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg17(REG,228)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(redist17_sync_together108_aunroll_x_in_i_valid_3_q);
        end
    end

    // c_i6_1899(CONSTANT,66)
    assign c_i6_1899_q = $unsigned(6'b010010);

    // i_arrayidx122_atax12_vt_const_1(CONSTANT,70)
    assign i_arrayidx122_atax12_vt_const_1_q = $unsigned(2'b00);

    // c_i6_1101(CONSTANT,65)
    assign c_i6_1101_q = $unsigned(6'b111111);

    // i_fpga_indvars_iv_next_atax28(ADD,79)@4
    assign i_fpga_indvars_iv_next_atax28_a = {1'b0, i_llvm_fpga_pop_i6_fpga_indvars_iv_pop16_atax0_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop16_atax20_mux_x_q};
    assign i_fpga_indvars_iv_next_atax28_b = {1'b0, c_i6_1101_q};
    assign i_fpga_indvars_iv_next_atax28_o = $unsigned(i_fpga_indvars_iv_next_atax28_a) + $unsigned(i_fpga_indvars_iv_next_atax28_b);
    assign i_fpga_indvars_iv_next_atax28_q = i_fpga_indvars_iv_next_atax28_o[6:0];

    // bgTrunc_i_fpga_indvars_iv_next_atax28_sel_x(BITSELECT,98)@4
    assign bgTrunc_i_fpga_indvars_iv_next_atax28_sel_x_b = i_fpga_indvars_iv_next_atax28_q[5:0];

    // i_llvm_fpga_push_i6_fpga_indvars_iv_push16_atax0_element_extension2_x(BITJOIN,202)@4
    assign i_llvm_fpga_push_i6_fpga_indvars_iv_push16_atax0_element_extension2_x_q = {i_arrayidx122_atax12_vt_const_1_q, bgTrunc_i_fpga_indvars_iv_next_atax28_sel_x_b};

    // i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_inv_pred_x(LOGICAL,159)@1
    assign i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_inv_pred_x_q = ~ (GND_q);

    // valid_fanout_reg19(REG,230)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg18(REG,229)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(redist16_sync_together108_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i6_fpga_indvars_iv_push16_atax0_i_llvm_fpga_push_i6_fpga_indvars_iv_push16_atax1_x(FIFODELAY,203)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i6_fpga_indvars_iv_push16_atax0_i_llvm_fpga_push_i6_fpga_indvars_iv_push16_atax1_x_i_stall = ~ (valid_fanout_reg19_q & i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_inv_pred_x_q);
    assign i_llvm_fpga_push_i6_fpga_indvars_iv_push16_atax0_i_llvm_fpga_push_i6_fpga_indvars_iv_push16_atax1_x_i_valid = valid_fanout_reg18_q & redist22_i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i6_fpga_indvars_iv_push16_atax0_i_llvm_fpga_push_i6_fpga_indvars_iv_push16_atax1_x_i_data = i_llvm_fpga_push_i6_fpga_indvars_iv_push16_atax0_element_extension2_x_q;
    assign i_llvm_fpga_push_i6_fpga_indvars_iv_push16_atax0_i_llvm_fpga_push_i6_fpga_indvars_iv_push16_atax1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i6_fpga_indvars_iv_push16_atax0_i_llvm_fpga_push_i6_fpga_indvars_iv_push16_atax1_x_i_valid[0];
    assign i_llvm_fpga_push_i6_fpga_indvars_iv_push16_atax0_i_llvm_fpga_push_i6_fpga_indvars_iv_push16_atax1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i6_fpga_indvars_iv_push16_atax0_i_llvm_fpga_push_i6_fpga_indvars_iv_push16_atax1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(8),
        .STYLE("ll"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i6_fpga_indvars_iv_push16_atax0_i_llvm_fpga_push_i6_fpga_indvars_iv_push16_atax1_x (
        .i_valid(i_llvm_fpga_push_i6_fpga_indvars_iv_push16_atax0_i_llvm_fpga_push_i6_fpga_indvars_iv_push16_atax1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i6_fpga_indvars_iv_push16_atax0_i_llvm_fpga_push_i6_fpga_indvars_iv_push16_atax1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i6_fpga_indvars_iv_push16_atax0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i6_fpga_indvars_iv_push16_atax0_i_llvm_fpga_push_i6_fpga_indvars_iv_push16_atax1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i6_fpga_indvars_iv_push16_atax0_adapt_scalar_trunc4_sel_x(BITSELECT,205)@4
    assign i_llvm_fpga_push_i6_fpga_indvars_iv_push16_atax0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i6_fpga_indvars_iv_push16_atax0_i_llvm_fpga_push_i6_fpga_indvars_iv_push16_atax1_x_o_data[5:0];

    // i_llvm_fpga_pop_i6_fpga_indvars_iv_pop16_atax0_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop16_atax20_mux_x(MUX,153)@4
    assign i_llvm_fpga_pop_i6_fpga_indvars_iv_pop16_atax0_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop16_atax20_mux_x_s = redist37_i_llvm_fpga_forked_atax_b5_forked_atax3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop16_atax0_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop16_atax20_mux_x_s or i_llvm_fpga_push_i6_fpga_indvars_iv_push16_atax0_adapt_scalar_trunc4_sel_x_b or c_i6_1899_q)
    begin
        unique case (i_llvm_fpga_pop_i6_fpga_indvars_iv_pop16_atax0_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop16_atax20_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i6_fpga_indvars_iv_pop16_atax0_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop16_atax20_mux_x_q = i_llvm_fpga_push_i6_fpga_indvars_iv_push16_atax0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i6_fpga_indvars_iv_pop16_atax0_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop16_atax20_mux_x_q = c_i6_1899_q;
            default : i_llvm_fpga_pop_i6_fpga_indvars_iv_pop16_atax0_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop16_atax20_mux_x_q = 6'b0;
        endcase
    end

    // i_exitcond_atax21_cmp_nsign(LOGICAL,262)@4
    assign i_exitcond_atax21_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i6_fpga_indvars_iv_pop16_atax0_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop16_atax20_mux_x_q[5:5]));

    // i_llvm_fpga_push_i1_notexitcond13_atax27(BLACKBOX,90)@4
    // in in_empty_in@20000000
    // out out_feedback_out_4@20000000
    // out out_feedback_valid_out_4@20000000
    atax_i_llvm_fpga_push_i1_notexitcond13_0 thei_llvm_fpga_push_i1_notexitcond13_atax27 (
        .in_almost_empty_in(GND_q),
        .in_data_in(i_exitcond_atax21_cmp_nsign_q),
        .in_empty_in(GND_q),
        .in_feedback_stall_in_4(i_llvm_fpga_pipeline_keep_going12_atax6_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(),
        .out_feedback_out_4(i_llvm_fpga_push_i1_notexitcond13_atax27_out_feedback_out_4),
        .out_feedback_valid_out_4(i_llvm_fpga_push_i1_notexitcond13_atax27_out_feedback_valid_out_4),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_dummy_thread_atax_b5_dummy_atax2(BLACKBOX,85)@0
    // in in_stall_in@20000000
    atax_i_llvm_fpga_dummy_thread_b5_dummy_atax0 thei_llvm_fpga_dummy_thread_atax_b5_dummy_atax2 (
        .in_dummy_in(in_dummy_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dummy_out(i_llvm_fpga_dummy_thread_atax_b5_dummy_atax2_out_dummy_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist40_i_llvm_fpga_dummy_thread_atax_b5_dummy_atax2_out_dummy_out_4(DELAY,374)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist40_i_llvm_fpga_dummy_thread_atax_b5_dummy_atax2_out_dummy_out_4_delay_0 <= $unsigned(i_llvm_fpga_dummy_thread_atax_b5_dummy_atax2_out_dummy_out);
            redist40_i_llvm_fpga_dummy_thread_atax_b5_dummy_atax2_out_dummy_out_4_delay_1 <= redist40_i_llvm_fpga_dummy_thread_atax_b5_dummy_atax2_out_dummy_out_4_delay_0;
            redist40_i_llvm_fpga_dummy_thread_atax_b5_dummy_atax2_out_dummy_out_4_delay_2 <= redist40_i_llvm_fpga_dummy_thread_atax_b5_dummy_atax2_out_dummy_out_4_delay_1;
            redist40_i_llvm_fpga_dummy_thread_atax_b5_dummy_atax2_out_dummy_out_4_q <= redist40_i_llvm_fpga_dummy_thread_atax_b5_dummy_atax2_out_dummy_out_4_delay_2;
        end
    end

    // i_llvm_fpga_forked_atax_b5_forked_atax3(BLACKBOX,86)@0
    // in in_stall_in@20000000
    atax_i_llvm_fpga_forked_b5_forked_atax0 thei_llvm_fpga_forked_atax_b5_forked_atax3 (
        .in_buffer_in(in_buffer_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_buffer_out(i_llvm_fpga_forked_atax_b5_forked_atax3_out_buffer_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist37_i_llvm_fpga_forked_atax_b5_forked_atax3_out_buffer_out_4(DELAY,371)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist37_i_llvm_fpga_forked_atax_b5_forked_atax3_out_buffer_out_4_delay_0 <= $unsigned(i_llvm_fpga_forked_atax_b5_forked_atax3_out_buffer_out);
            redist37_i_llvm_fpga_forked_atax_b5_forked_atax3_out_buffer_out_4_delay_1 <= redist37_i_llvm_fpga_forked_atax_b5_forked_atax3_out_buffer_out_4_delay_0;
            redist37_i_llvm_fpga_forked_atax_b5_forked_atax3_out_buffer_out_4_delay_2 <= redist37_i_llvm_fpga_forked_atax_b5_forked_atax3_out_buffer_out_4_delay_1;
            redist37_i_llvm_fpga_forked_atax_b5_forked_atax3_out_buffer_out_4_q <= redist37_i_llvm_fpga_forked_atax_b5_forked_atax3_out_buffer_out_4_delay_2;
        end
    end

    // i_llvm_fpga_pipeline_keep_going12_atax6(BLACKBOX,89)@4
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_dummy_out@20000000
    // out out_pipeline_forked_out@20000000
    // out out_pipeline_valid_out@20000000
    atax_i_llvm_fpga_pipeline_keep_going12_0 thei_llvm_fpga_pipeline_keep_going12_atax6 (
        .in_data_in(redist37_i_llvm_fpga_forked_atax_b5_forked_atax3_out_buffer_out_4_q),
        .in_dummy_in(redist40_i_llvm_fpga_dummy_thread_atax_b5_dummy_atax2_out_dummy_out_4_q),
        .in_forked_in(redist37_i_llvm_fpga_forked_atax_b5_forked_atax3_out_buffer_out_4_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond13_atax27_out_feedback_out_4),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond13_atax27_out_feedback_valid_out_4),
        .in_pipeline_stall_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going12_atax6_out_data_out),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going12_atax6_out_exiting_valid_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going12_atax6_out_not_exitcond_stall_out),
        .out_pipeline_dummy_out(i_llvm_fpga_pipeline_keep_going12_atax6_out_pipeline_dummy_out),
        .out_pipeline_forked_out(i_llvm_fpga_pipeline_keep_going12_atax6_out_pipeline_forked_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going12_atax6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist36_i_llvm_fpga_pipeline_keep_going12_atax6_out_data_out_2(DELAY,370)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist36_i_llvm_fpga_pipeline_keep_going12_atax6_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pipeline_keep_going12_atax6_out_data_out);
            redist36_i_llvm_fpga_pipeline_keep_going12_atax6_out_data_out_2_q <= redist36_i_llvm_fpga_pipeline_keep_going12_atax6_out_data_out_2_delay_0;
        end
    end

    // i_atax_b5_next_iter_isreal_atax7(LOGICAL,77)@6
    assign i_atax_b5_next_iter_isreal_atax7_q = i_llvm_fpga_pop_coalesce_i1_atax_b5_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b5_current_iter_isreal_atax4_mux_x_q & redist36_i_llvm_fpga_pipeline_keep_going12_atax6_out_data_out_2_q;

    // i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_element_extension2_x(BITJOIN,157)@6
    assign i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_element_extension2_x_q = {i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_c_i7_03_x_q, i_atax_b5_next_iter_isreal_atax7_q};

    // redist22_i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_inv_pred_x_q_2(DELAY,356)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist22_i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_inv_pred_x_q_2_delay_0 <= $unsigned(i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_inv_pred_x_q);
            redist22_i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_inv_pred_x_q_2_q <= redist22_i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_inv_pred_x_q_2_delay_0;
        end
    end

    // valid_fanout_reg4(REG,215)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist16_sync_together108_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist23_i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_inv_pred_x_q_3(DELAY,357)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist23_i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_inv_pred_x_q_3_q <= $unsigned(redist22_i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_inv_pred_x_q_2_q);
        end
    end

    // redist24_i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_inv_pred_x_q_4(DELAY,358)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist24_i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_inv_pred_x_q_4_q <= $unsigned(redist23_i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_inv_pred_x_q_3_q);
        end
    end

    // valid_fanout_reg3(REG,214)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist18_sync_together108_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax1_x(FIFODELAY,158)@3 + 1
    // in i_valid@5
    // in i_write_pred@5
    // in i_data@6
    // out o_data@6
    assign i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax1_x_i_stall = ~ (valid_fanout_reg4_q & redist22_i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_inv_pred_x_q_2_q);
    assign i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax1_x_i_valid = valid_fanout_reg3_q & redist24_i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_inv_pred_x_q_4_q;
    assign i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax1_x_i_data = i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(8),
        .STYLE("ll"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax1_x (
        .i_valid(i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_adapt_scalar_trunc4_sel_x(BITSELECT,160)@6
    assign i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax1_x_o_data[0:0];

    // redist38_i_llvm_fpga_forked_atax_b5_forked_atax3_out_buffer_out_6(DELAY,372)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist38_i_llvm_fpga_forked_atax_b5_forked_atax3_out_buffer_out_6_delay_0 <= $unsigned(redist37_i_llvm_fpga_forked_atax_b5_forked_atax3_out_buffer_out_4_q);
            redist38_i_llvm_fpga_forked_atax_b5_forked_atax3_out_buffer_out_6_q <= redist38_i_llvm_fpga_forked_atax_b5_forked_atax3_out_buffer_out_6_delay_0;
        end
    end

    // i_llvm_fpga_pop_coalesce_i1_atax_b5_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b5_current_iter_isreal_atax4_mux_x(MUX,144)@6
    assign i_llvm_fpga_pop_coalesce_i1_atax_b5_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b5_current_iter_isreal_atax4_mux_x_s = redist38_i_llvm_fpga_forked_atax_b5_forked_atax3_out_buffer_out_6_q;
    always @(i_llvm_fpga_pop_coalesce_i1_atax_b5_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b5_current_iter_isreal_atax4_mux_x_s or i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_adapt_scalar_trunc4_sel_x_b or VCC_q)
    begin
        unique case (i_llvm_fpga_pop_coalesce_i1_atax_b5_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b5_current_iter_isreal_atax4_mux_x_s)
            1'b0 : i_llvm_fpga_pop_coalesce_i1_atax_b5_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b5_current_iter_isreal_atax4_mux_x_q = i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_coalesce_i1_atax_b5_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b5_current_iter_isreal_atax4_mux_x_q = VCC_q;
            default : i_llvm_fpga_pop_coalesce_i1_atax_b5_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b5_current_iter_isreal_atax4_mux_x_q = 1'b0;
        endcase
    end

    // i_atax_b5_current_iter_isspec_atax5(LOGICAL,76)@6
    assign i_atax_b5_current_iter_isspec_atax5_q = i_llvm_fpga_pop_coalesce_i1_atax_b5_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b5_current_iter_isreal_atax4_mux_x_q ^ VCC_q;

    // c_atax_A_local_pmem(CONSTANT,6)
    assign c_atax_A_local_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx122_atax0_upper_bits_x_merged_bit_select(BITSELECT,329)@5
    assign i_arrayidx122_atax0_upper_bits_x_merged_bit_select_b = c_atax_A_local_pmem_q[63:11];
    assign i_arrayidx122_atax0_upper_bits_x_merged_bit_select_c = c_atax_A_local_pmem_q[10:0];

    // redist0_i_arrayidx122_atax0_upper_bits_x_merged_bit_select_b_1(DELAY,334)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_i_arrayidx122_atax0_upper_bits_x_merged_bit_select_b_1_q <= $unsigned(i_arrayidx122_atax0_upper_bits_x_merged_bit_select_b);
        end
    end

    // c_i32_097(CONSTANT,63)
    assign c_i32_097_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i32_198(CONSTANT,64)
    assign c_i32_198_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_atax19(ADD,84)@6
    assign i_inc_atax19_a = {1'b0, i_llvm_fpga_pop_i32_j_020_pop17_atax0_i_llvm_fpga_pop_i32_j_020_pop17_atax9_mux_x_q};
    assign i_inc_atax19_b = {1'b0, c_i32_198_q};
    assign i_inc_atax19_o = $unsigned(i_inc_atax19_a) + $unsigned(i_inc_atax19_b);
    assign i_inc_atax19_q = i_inc_atax19_o[32:0];

    // bgTrunc_i_inc_atax19_sel_x(BITSELECT,99)@6
    assign bgTrunc_i_inc_atax19_sel_x_b = i_inc_atax19_q[31:0];

    // valid_fanout_reg16(REG,227)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist16_sync_together108_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg15(REG,226)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist18_sync_together108_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i32_j_020_push17_atax0_i_llvm_fpga_push_i32_j_020_push17_atax1_x(FIFODELAY,191)@3 + 1
    // in i_valid@5
    // in i_write_pred@5
    // in i_data@6
    // out o_data@6
    assign i_llvm_fpga_push_i32_j_020_push17_atax0_i_llvm_fpga_push_i32_j_020_push17_atax1_x_i_stall = ~ (valid_fanout_reg16_q & redist22_i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_inv_pred_x_q_2_q);
    assign i_llvm_fpga_push_i32_j_020_push17_atax0_i_llvm_fpga_push_i32_j_020_push17_atax1_x_i_valid = valid_fanout_reg15_q & redist24_i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_inv_pred_x_q_4_q;
    assign i_llvm_fpga_push_i32_j_020_push17_atax0_i_llvm_fpga_push_i32_j_020_push17_atax1_x_i_data = bgTrunc_i_inc_atax19_sel_x_b;
    assign i_llvm_fpga_push_i32_j_020_push17_atax0_i_llvm_fpga_push_i32_j_020_push17_atax1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_j_020_push17_atax0_i_llvm_fpga_push_i32_j_020_push17_atax1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_j_020_push17_atax0_i_llvm_fpga_push_i32_j_020_push17_atax1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_j_020_push17_atax0_i_llvm_fpga_push_i32_j_020_push17_atax1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(32),
        .STYLE("ll"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i32_j_020_push17_atax0_i_llvm_fpga_push_i32_j_020_push17_atax1_x (
        .i_valid(i_llvm_fpga_push_i32_j_020_push17_atax0_i_llvm_fpga_push_i32_j_020_push17_atax1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_j_020_push17_atax0_i_llvm_fpga_push_i32_j_020_push17_atax1_x_i_stall_bitsignaltemp),
        .i_data(bgTrunc_i_inc_atax19_sel_x_b),
        .o_data(i_llvm_fpga_push_i32_j_020_push17_atax0_i_llvm_fpga_push_i32_j_020_push17_atax1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_j_020_pop17_atax0_i_llvm_fpga_pop_i32_j_020_pop17_atax9_mux_x(MUX,150)@6
    assign i_llvm_fpga_pop_i32_j_020_pop17_atax0_i_llvm_fpga_pop_i32_j_020_pop17_atax9_mux_x_s = redist38_i_llvm_fpga_forked_atax_b5_forked_atax3_out_buffer_out_6_q;
    always @(i_llvm_fpga_pop_i32_j_020_pop17_atax0_i_llvm_fpga_pop_i32_j_020_pop17_atax9_mux_x_s or i_llvm_fpga_push_i32_j_020_push17_atax0_i_llvm_fpga_push_i32_j_020_push17_atax1_x_o_data or c_i32_097_q)
    begin
        unique case (i_llvm_fpga_pop_i32_j_020_pop17_atax0_i_llvm_fpga_pop_i32_j_020_pop17_atax9_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_j_020_pop17_atax0_i_llvm_fpga_pop_i32_j_020_pop17_atax9_mux_x_q = i_llvm_fpga_push_i32_j_020_push17_atax0_i_llvm_fpga_push_i32_j_020_push17_atax1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_j_020_pop17_atax0_i_llvm_fpga_pop_i32_j_020_pop17_atax9_mux_x_q = c_i32_097_q;
            default : i_llvm_fpga_pop_i32_j_020_pop17_atax0_i_llvm_fpga_pop_i32_j_020_pop17_atax9_mux_x_q = 32'b0;
        endcase
    end

    // i_idxprom11_atax10_sel_x(BITSELECT,143)@6
    assign i_idxprom11_atax10_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_j_020_pop17_atax0_i_llvm_fpga_pop_i32_j_020_pop17_atax9_mux_x_q[31:0]};

    // i_idxprom11_atax10_vt_select_31(BITSELECT,83)@6
    assign i_idxprom11_atax10_vt_select_31_b = i_idxprom11_atax10_sel_x_b[31:0];

    // i_idxprom11_atax10_vt_join(BITJOIN,82)@6
    assign i_idxprom11_atax10_vt_join_q = {c_i32_097_q, i_idxprom11_atax10_vt_select_31_b};

    // i_arrayidx122_atax0_dupName_3_trunc_sel_x(BITSELECT,129)@6
    assign i_arrayidx122_atax0_dupName_3_trunc_sel_x_b = i_idxprom11_atax10_vt_join_q[10:0];

    // i_arrayidx122_atax0_narrow_x(BITSELECT,112)@6
    assign i_arrayidx122_atax0_narrow_x_b = i_arrayidx122_atax0_dupName_3_trunc_sel_x_b[8:0];

    // i_arrayidx122_atax0_shift_join_x(BITJOIN,113)@6
    assign i_arrayidx122_atax0_shift_join_x_q = {i_arrayidx122_atax0_narrow_x_b, i_arrayidx122_atax12_vt_const_1_q};

    // i_arrayidx122_atax0_mult_multconst_x(CONSTANT,124)
    assign i_arrayidx122_atax0_mult_multconst_x_q = $unsigned(4'b0000);

    // redist6_sync_together108_aunroll_x_in_c0_eni11_2_tpl_4_inputreg0(DELAY,376)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_sync_together108_aunroll_x_in_c0_eni11_2_tpl_4_inputreg0_q <= $unsigned(in_c0_eni11_2_tpl);
        end
    end

    // redist6_sync_together108_aunroll_x_in_c0_eni11_2_tpl_4(DELAY,340)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_sync_together108_aunroll_x_in_c0_eni11_2_tpl_4_delay_0 <= $unsigned(redist6_sync_together108_aunroll_x_in_c0_eni11_2_tpl_4_inputreg0_q);
            redist6_sync_together108_aunroll_x_in_c0_eni11_2_tpl_4_delay_1 <= redist6_sync_together108_aunroll_x_in_c0_eni11_2_tpl_4_delay_0;
            redist6_sync_together108_aunroll_x_in_c0_eni11_2_tpl_4_q <= redist6_sync_together108_aunroll_x_in_c0_eni11_2_tpl_4_delay_1;
        end
    end

    // valid_fanout_reg12(REG,223)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg11(REG,222)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist16_sync_together108_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i64_idxprom32_push22_atax0_i_llvm_fpga_push_i64_idxprom32_push22_atax1_x(FIFODELAY,197)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i64_idxprom32_push22_atax0_i_llvm_fpga_push_i64_idxprom32_push22_atax1_x_i_stall = ~ (valid_fanout_reg12_q & i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_inv_pred_x_q);
    assign i_llvm_fpga_push_i64_idxprom32_push22_atax0_i_llvm_fpga_push_i64_idxprom32_push22_atax1_x_i_valid = valid_fanout_reg11_q & redist22_i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i64_idxprom32_push22_atax0_i_llvm_fpga_push_i64_idxprom32_push22_atax1_x_i_data = i_llvm_fpga_pop_i64_idxprom32_pop22_atax0_i_llvm_fpga_pop_i64_idxprom32_pop22_atax11_mux_x_q;
    assign i_llvm_fpga_push_i64_idxprom32_push22_atax0_i_llvm_fpga_push_i64_idxprom32_push22_atax1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i64_idxprom32_push22_atax0_i_llvm_fpga_push_i64_idxprom32_push22_atax1_x_i_valid[0];
    assign i_llvm_fpga_push_i64_idxprom32_push22_atax0_i_llvm_fpga_push_i64_idxprom32_push22_atax1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i64_idxprom32_push22_atax0_i_llvm_fpga_push_i64_idxprom32_push22_atax1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(64),
        .STYLE("ll"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i64_idxprom32_push22_atax0_i_llvm_fpga_push_i64_idxprom32_push22_atax1_x (
        .i_valid(i_llvm_fpga_push_i64_idxprom32_push22_atax0_i_llvm_fpga_push_i64_idxprom32_push22_atax1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i64_idxprom32_push22_atax0_i_llvm_fpga_push_i64_idxprom32_push22_atax1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i64_idxprom32_pop22_atax0_i_llvm_fpga_pop_i64_idxprom32_pop22_atax11_mux_x_q),
        .o_data(i_llvm_fpga_push_i64_idxprom32_push22_atax0_i_llvm_fpga_push_i64_idxprom32_push22_atax1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i64_idxprom32_pop22_atax0_i_llvm_fpga_pop_i64_idxprom32_pop22_atax11_mux_x(MUX,152)@4
    assign i_llvm_fpga_pop_i64_idxprom32_pop22_atax0_i_llvm_fpga_pop_i64_idxprom32_pop22_atax11_mux_x_s = redist37_i_llvm_fpga_forked_atax_b5_forked_atax3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i64_idxprom32_pop22_atax0_i_llvm_fpga_pop_i64_idxprom32_pop22_atax11_mux_x_s or i_llvm_fpga_push_i64_idxprom32_push22_atax0_i_llvm_fpga_push_i64_idxprom32_push22_atax1_x_o_data or redist6_sync_together108_aunroll_x_in_c0_eni11_2_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i64_idxprom32_pop22_atax0_i_llvm_fpga_pop_i64_idxprom32_pop22_atax11_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i64_idxprom32_pop22_atax0_i_llvm_fpga_pop_i64_idxprom32_pop22_atax11_mux_x_q = i_llvm_fpga_push_i64_idxprom32_push22_atax0_i_llvm_fpga_push_i64_idxprom32_push22_atax1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i64_idxprom32_pop22_atax0_i_llvm_fpga_pop_i64_idxprom32_pop22_atax11_mux_x_q = redist6_sync_together108_aunroll_x_in_c0_eni11_2_tpl_4_q;
            default : i_llvm_fpga_pop_i64_idxprom32_pop22_atax0_i_llvm_fpga_pop_i64_idxprom32_pop22_atax11_mux_x_q = 64'b0;
        endcase
    end

    // i_arrayidx122_atax0_dupName_0_trunc_sel_x(BITSELECT,126)@4
    assign i_arrayidx122_atax0_dupName_0_trunc_sel_x_b = i_llvm_fpga_pop_i64_idxprom32_pop22_atax0_i_llvm_fpga_pop_i64_idxprom32_pop22_atax11_mux_x_q[10:0];

    // addsumAHighB_uid290_i_arrayidx122_atax0_mult_x(ADD,289)@4
    assign addsumAHighB_uid290_i_arrayidx122_atax0_mult_x_a = {1'b0, i_arrayidx122_atax0_dupName_0_trunc_sel_x_b};
    assign addsumAHighB_uid290_i_arrayidx122_atax0_mult_x_b = {3'b000, lowRangeB_uid288_i_arrayidx122_atax0_mult_x_merged_bit_select_c};
    assign addsumAHighB_uid290_i_arrayidx122_atax0_mult_x_o = $unsigned(addsumAHighB_uid290_i_arrayidx122_atax0_mult_x_a) + $unsigned(addsumAHighB_uid290_i_arrayidx122_atax0_mult_x_b);
    assign addsumAHighB_uid290_i_arrayidx122_atax0_mult_x_q = addsumAHighB_uid290_i_arrayidx122_atax0_mult_x_o[11:0];

    // lowRangeB_uid288_i_arrayidx122_atax0_mult_x_merged_bit_select(BITSELECT,333)@4
    assign lowRangeB_uid288_i_arrayidx122_atax0_mult_x_merged_bit_select_b = i_arrayidx122_atax0_dupName_0_trunc_sel_x_b[1:0];
    assign lowRangeB_uid288_i_arrayidx122_atax0_mult_x_merged_bit_select_c = i_arrayidx122_atax0_dupName_0_trunc_sel_x_b[10:2];

    // add_uid291_i_arrayidx122_atax0_mult_x(BITJOIN,290)@4
    assign add_uid291_i_arrayidx122_atax0_mult_x_q = {addsumAHighB_uid290_i_arrayidx122_atax0_mult_x_q, lowRangeB_uid288_i_arrayidx122_atax0_mult_x_merged_bit_select_b};

    // sR_mergedSignalTM_uid296_i_arrayidx122_atax0_mult_x(BITJOIN,295)@4
    assign sR_mergedSignalTM_uid296_i_arrayidx122_atax0_mult_x_q = {add_uid291_i_arrayidx122_atax0_mult_x_q, i_arrayidx122_atax0_mult_multconst_x_q};

    // i_arrayidx122_atax0_mult_extender_x(BITJOIN,123)@4
    assign i_arrayidx122_atax0_mult_extender_x_q = {i_arrayidx122_atax0_mult_multconst_x_q, sR_mergedSignalTM_uid296_i_arrayidx122_atax0_mult_x_q};

    // i_arrayidx122_atax0_dupName_1_trunc_sel_x(BITSELECT,127)@4
    assign i_arrayidx122_atax0_dupName_1_trunc_sel_x_b = i_arrayidx122_atax0_mult_extender_x_q[10:0];

    // redist34_i_arrayidx122_atax0_dupName_1_trunc_sel_x_b_1(DELAY,368)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist34_i_arrayidx122_atax0_dupName_1_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx122_atax0_dupName_1_trunc_sel_x_b);
        end
    end

    // i_arrayidx122_atax0_add_x(ADD,107)@5
    assign i_arrayidx122_atax0_add_x_a = {1'b0, i_arrayidx122_atax0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx122_atax0_add_x_b = {1'b0, redist34_i_arrayidx122_atax0_dupName_1_trunc_sel_x_b_1_q};
    assign i_arrayidx122_atax0_add_x_o = $unsigned(i_arrayidx122_atax0_add_x_a) + $unsigned(i_arrayidx122_atax0_add_x_b);
    assign i_arrayidx122_atax0_add_x_q = i_arrayidx122_atax0_add_x_o[11:0];

    // i_arrayidx122_atax0_dupName_2_trunc_sel_x(BITSELECT,128)@5
    assign i_arrayidx122_atax0_dupName_2_trunc_sel_x_b = i_arrayidx122_atax0_add_x_q[10:0];

    // redist33_i_arrayidx122_atax0_dupName_2_trunc_sel_x_b_1(DELAY,367)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist33_i_arrayidx122_atax0_dupName_2_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx122_atax0_dupName_2_trunc_sel_x_b);
        end
    end

    // i_arrayidx122_atax0_dupName_0_add_x(ADD,117)@6
    assign i_arrayidx122_atax0_dupName_0_add_x_a = {1'b0, redist33_i_arrayidx122_atax0_dupName_2_trunc_sel_x_b_1_q};
    assign i_arrayidx122_atax0_dupName_0_add_x_b = {1'b0, i_arrayidx122_atax0_shift_join_x_q};
    assign i_arrayidx122_atax0_dupName_0_add_x_o = $unsigned(i_arrayidx122_atax0_dupName_0_add_x_a) + $unsigned(i_arrayidx122_atax0_dupName_0_add_x_b);
    assign i_arrayidx122_atax0_dupName_0_add_x_q = i_arrayidx122_atax0_dupName_0_add_x_o[11:0];

    // i_arrayidx122_atax0_dupName_5_trunc_sel_x(BITSELECT,130)@6
    assign i_arrayidx122_atax0_dupName_5_trunc_sel_x_b = i_arrayidx122_atax0_dupName_0_add_x_q[10:0];

    // i_arrayidx122_atax0_append_upper_bits_x(BITJOIN,108)@6
    assign i_arrayidx122_atax0_append_upper_bits_x_q = {redist0_i_arrayidx122_atax0_upper_bits_x_merged_bit_select_b_1_q, i_arrayidx122_atax0_dupName_5_trunc_sel_x_b};

    // i_arrayidx122_atax12_vt_select_63(BITSELECT,72)@6
    assign i_arrayidx122_atax12_vt_select_63_b = i_arrayidx122_atax0_append_upper_bits_x_q[63:2];

    // i_arrayidx122_atax12_vt_join(BITJOIN,71)@6
    assign i_arrayidx122_atax12_vt_join_q = {i_arrayidx122_atax12_vt_select_63_b, i_arrayidx122_atax12_vt_const_1_q};

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_mem_unnamed_atax4_atax13(BLACKBOX,87)@6
    // out out_o_almost_empty@10
    // out out_o_empty@10
    // out out_o_readdata@10
    // out out_o_stall@10
    // out out_o_valid@10
    // out out_unnamed_atax4_atax_avm_address@20000000
    // out out_unnamed_atax4_atax_avm_burstcount@20000000
    // out out_unnamed_atax4_atax_avm_byteenable@20000000
    // out out_unnamed_atax4_atax_avm_enable@20000000
    // out out_unnamed_atax4_atax_avm_read@20000000
    // out out_unnamed_atax4_atax_avm_write@20000000
    // out out_unnamed_atax4_atax_avm_writedata@20000000
    atax_i_llvm_fpga_mem_unnamed_4_atax0 thei_llvm_fpga_mem_unnamed_atax4_atax13 (
        .in_almost_empty_in(GND_q),
        .in_empty_in(GND_q),
        .in_flush(in_flush),
        .in_i_address(i_arrayidx122_atax12_vt_join_q),
        .in_i_predicate(i_atax_b5_current_iter_isspec_atax5_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg7_q),
        .in_unnamed_atax4_atax_avm_readdata(in_unnamed_atax4_atax_avm_readdata),
        .in_unnamed_atax4_atax_avm_readdatavalid(in_unnamed_atax4_atax_avm_readdatavalid),
        .in_unnamed_atax4_atax_avm_waitrequest(in_unnamed_atax4_atax_avm_waitrequest),
        .in_unnamed_atax4_atax_avm_writeack(in_unnamed_atax4_atax_avm_writeack),
        .out_o_almost_empty(),
        .out_o_empty(),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_atax4_atax13_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_atax4_atax_avm_address(i_llvm_fpga_mem_unnamed_atax4_atax13_out_unnamed_atax4_atax_avm_address),
        .out_unnamed_atax4_atax_avm_burstcount(i_llvm_fpga_mem_unnamed_atax4_atax13_out_unnamed_atax4_atax_avm_burstcount),
        .out_unnamed_atax4_atax_avm_byteenable(i_llvm_fpga_mem_unnamed_atax4_atax13_out_unnamed_atax4_atax_avm_byteenable),
        .out_unnamed_atax4_atax_avm_enable(i_llvm_fpga_mem_unnamed_atax4_atax13_out_unnamed_atax4_atax_avm_enable),
        .out_unnamed_atax4_atax_avm_read(i_llvm_fpga_mem_unnamed_atax4_atax13_out_unnamed_atax4_atax_avm_read),
        .out_unnamed_atax4_atax_avm_write(i_llvm_fpga_mem_unnamed_atax4_atax13_out_unnamed_atax4_atax_avm_write),
        .out_unnamed_atax4_atax_avm_writedata(i_llvm_fpga_mem_unnamed_atax4_atax13_out_unnamed_atax4_atax_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,68)
    assign out_unnamed_atax4_atax_avm_address = i_llvm_fpga_mem_unnamed_atax4_atax13_out_unnamed_atax4_atax_avm_address;
    assign out_unnamed_atax4_atax_avm_enable = i_llvm_fpga_mem_unnamed_atax4_atax13_out_unnamed_atax4_atax_avm_enable;
    assign out_unnamed_atax4_atax_avm_read = i_llvm_fpga_mem_unnamed_atax4_atax13_out_unnamed_atax4_atax_avm_read;
    assign out_unnamed_atax4_atax_avm_write = i_llvm_fpga_mem_unnamed_atax4_atax13_out_unnamed_atax4_atax_avm_write;
    assign out_unnamed_atax4_atax_avm_writedata = i_llvm_fpga_mem_unnamed_atax4_atax13_out_unnamed_atax4_atax_avm_writedata;
    assign out_unnamed_atax4_atax_avm_byteenable = i_llvm_fpga_mem_unnamed_atax4_atax13_out_unnamed_atax4_atax_avm_byteenable;
    assign out_unnamed_atax4_atax_avm_burstcount = i_llvm_fpga_mem_unnamed_atax4_atax13_out_unnamed_atax4_atax_avm_burstcount;

    // regfree_osync(GPOUT,95)
    assign out_exiting_valid_out = i_llvm_fpga_pipeline_keep_going12_atax6_out_exiting_valid_out;

    // valid_fanout_reg8(REG,219)@5 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist19_sync_together108_aunroll_x_in_i_valid_5_q);
        end
    end

    // c_atax_x_local_pmem(CONSTANT,7)
    assign c_atax_x_local_pmem_q = $unsigned(64'b0100000001000001000000000000000000000000000000000000000000000000);

    // i_arrayidx143_atax0_upper_bits_x_merged_bit_select(BITSELECT,330)@6
    assign i_arrayidx143_atax0_upper_bits_x_merged_bit_select_b = c_atax_x_local_pmem_q[63:7];
    assign i_arrayidx143_atax0_upper_bits_x_merged_bit_select_c = c_atax_x_local_pmem_q[6:0];

    // i_arrayidx143_atax0_dupName_0_trunc_sel_x(BITSELECT,141)@6
    assign i_arrayidx143_atax0_dupName_0_trunc_sel_x_b = i_idxprom11_atax10_vt_join_q[6:0];

    // i_arrayidx143_atax0_narrow_x(BITSELECT,134)@6
    assign i_arrayidx143_atax0_narrow_x_b = i_arrayidx143_atax0_dupName_0_trunc_sel_x_b[4:0];

    // i_arrayidx143_atax0_shift_join_x(BITJOIN,135)@6
    assign i_arrayidx143_atax0_shift_join_x_q = {i_arrayidx143_atax0_narrow_x_b, i_arrayidx122_atax12_vt_const_1_q};

    // i_arrayidx143_atax0_add_x(ADD,131)@6
    assign i_arrayidx143_atax0_add_x_a = {1'b0, i_arrayidx143_atax0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx143_atax0_add_x_b = {1'b0, i_arrayidx143_atax0_shift_join_x_q};
    assign i_arrayidx143_atax0_add_x_o = $unsigned(i_arrayidx143_atax0_add_x_a) + $unsigned(i_arrayidx143_atax0_add_x_b);
    assign i_arrayidx143_atax0_add_x_q = i_arrayidx143_atax0_add_x_o[7:0];

    // i_arrayidx143_atax0_dupName_2_trunc_sel_x(BITSELECT,142)@6
    assign i_arrayidx143_atax0_dupName_2_trunc_sel_x_b = i_arrayidx143_atax0_add_x_q[6:0];

    // i_arrayidx143_atax0_append_upper_bits_x(BITJOIN,132)@6
    assign i_arrayidx143_atax0_append_upper_bits_x_q = {i_arrayidx143_atax0_upper_bits_x_merged_bit_select_b, i_arrayidx143_atax0_dupName_2_trunc_sel_x_b};

    // i_arrayidx143_atax14_vt_select_63(BITSELECT,75)@6
    assign i_arrayidx143_atax14_vt_select_63_b = i_arrayidx143_atax0_append_upper_bits_x_q[63:2];

    // i_arrayidx143_atax14_vt_join(BITJOIN,74)@6
    assign i_arrayidx143_atax14_vt_join_q = {i_arrayidx143_atax14_vt_select_63_b, i_arrayidx122_atax12_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_atax5_atax15(BLACKBOX,88)@6
    // out out_o_almost_empty@10
    // out out_o_empty@10
    // out out_o_readdata@10
    // out out_o_stall@10
    // out out_o_valid@10
    // out out_unnamed_atax5_atax_avm_address@20000000
    // out out_unnamed_atax5_atax_avm_burstcount@20000000
    // out out_unnamed_atax5_atax_avm_byteenable@20000000
    // out out_unnamed_atax5_atax_avm_enable@20000000
    // out out_unnamed_atax5_atax_avm_read@20000000
    // out out_unnamed_atax5_atax_avm_write@20000000
    // out out_unnamed_atax5_atax_avm_writedata@20000000
    atax_i_llvm_fpga_mem_unnamed_5_atax0 thei_llvm_fpga_mem_unnamed_atax5_atax15 (
        .in_almost_empty_in(GND_q),
        .in_empty_in(GND_q),
        .in_flush(in_flush),
        .in_i_address(i_arrayidx143_atax14_vt_join_q),
        .in_i_predicate(i_atax_b5_current_iter_isspec_atax5_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg8_q),
        .in_unnamed_atax5_atax_avm_readdata(in_unnamed_atax5_atax_avm_readdata),
        .in_unnamed_atax5_atax_avm_readdatavalid(in_unnamed_atax5_atax_avm_readdatavalid),
        .in_unnamed_atax5_atax_avm_waitrequest(in_unnamed_atax5_atax_avm_waitrequest),
        .in_unnamed_atax5_atax_avm_writeack(in_unnamed_atax5_atax_avm_writeack),
        .out_o_almost_empty(),
        .out_o_empty(),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_atax5_atax15_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_atax5_atax_avm_address(i_llvm_fpga_mem_unnamed_atax5_atax15_out_unnamed_atax5_atax_avm_address),
        .out_unnamed_atax5_atax_avm_burstcount(i_llvm_fpga_mem_unnamed_atax5_atax15_out_unnamed_atax5_atax_avm_burstcount),
        .out_unnamed_atax5_atax_avm_byteenable(i_llvm_fpga_mem_unnamed_atax5_atax15_out_unnamed_atax5_atax_avm_byteenable),
        .out_unnamed_atax5_atax_avm_enable(i_llvm_fpga_mem_unnamed_atax5_atax15_out_unnamed_atax5_atax_avm_enable),
        .out_unnamed_atax5_atax_avm_read(i_llvm_fpga_mem_unnamed_atax5_atax15_out_unnamed_atax5_atax_avm_read),
        .out_unnamed_atax5_atax_avm_write(i_llvm_fpga_mem_unnamed_atax5_atax15_out_unnamed_atax5_atax_avm_write),
        .out_unnamed_atax5_atax_avm_writedata(i_llvm_fpga_mem_unnamed_atax5_atax15_out_unnamed_atax5_atax_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,103)
    assign out_unnamed_atax5_atax_avm_address = i_llvm_fpga_mem_unnamed_atax5_atax15_out_unnamed_atax5_atax_avm_address;
    assign out_unnamed_atax5_atax_avm_enable = i_llvm_fpga_mem_unnamed_atax5_atax15_out_unnamed_atax5_atax_avm_enable;
    assign out_unnamed_atax5_atax_avm_read = i_llvm_fpga_mem_unnamed_atax5_atax15_out_unnamed_atax5_atax_avm_read;
    assign out_unnamed_atax5_atax_avm_write = i_llvm_fpga_mem_unnamed_atax5_atax15_out_unnamed_atax5_atax_avm_write;
    assign out_unnamed_atax5_atax_avm_writedata = i_llvm_fpga_mem_unnamed_atax5_atax15_out_unnamed_atax5_atax_avm_writedata;
    assign out_unnamed_atax5_atax_avm_byteenable = i_llvm_fpga_mem_unnamed_atax5_atax15_out_unnamed_atax5_atax_avm_byteenable;
    assign out_unnamed_atax5_atax_avm_burstcount = i_llvm_fpga_mem_unnamed_atax5_atax15_out_unnamed_atax5_atax_avm_burstcount;

    // dupName_0_regfree_osync_x(GPOUT,104)
    assign out_pipeline_dummy_out = i_llvm_fpga_pipeline_keep_going12_atax6_out_pipeline_dummy_out;

    // dupName_1_regfree_osync_x(GPOUT,105)
    assign out_pipeline_forked_out = i_llvm_fpga_pipeline_keep_going12_atax6_out_pipeline_forked_out;

    // dupName_2_regfree_osync_x(GPOUT,106)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going12_atax6_out_pipeline_valid_out;

    // redist20_sync_together108_aunroll_x_in_i_valid_13(DELAY,354)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("SYNC"), .phase(5), .modulus(2), .reset_high(1'b0) )
    redist20_sync_together108_aunroll_x_in_i_valid_13 ( .xin(redist19_sync_together108_aunroll_x_in_i_valid_5_q), .xout(redist20_sync_together108_aunroll_x_in_i_valid_13_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist21_sync_together108_aunroll_x_in_i_valid_16(DELAY,355)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist21_sync_together108_aunroll_x_in_i_valid_16_delay_0 <= $unsigned(redist20_sync_together108_aunroll_x_in_i_valid_13_q);
        end
    end
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist21_sync_together108_aunroll_x_in_i_valid_16_delay_1 <= '0;
        end
        else
        begin
            redist21_sync_together108_aunroll_x_in_i_valid_16_delay_1 <= redist21_sync_together108_aunroll_x_in_i_valid_16_delay_0;
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist21_sync_together108_aunroll_x_in_i_valid_16_q <= redist21_sync_together108_aunroll_x_in_i_valid_16_delay_1;
        end
    end

    // valid_fanout_reg0(REG,211)@16 + 1
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist21_sync_together108_aunroll_x_in_i_valid_16_q);
        end
    end

    // redist5_valid_fanout_reg0_q_1(DELAY,339)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_valid_fanout_reg0_q_1_q <= $unsigned(valid_fanout_reg0_q);
        end
    end

    // redist15_sync_together108_aunroll_x_in_c0_eni11_11_tpl_18(DELAY,349)
    dspba_delay_ver #( .width(1), .depth(18), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist15_sync_together108_aunroll_x_in_c0_eni11_11_tpl_18 ( .xin(in_c0_eni11_11_tpl), .xout(redist15_sync_together108_aunroll_x_in_c0_eni11_11_tpl_18_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist14_sync_together108_aunroll_x_in_c0_eni11_10_tpl_18(DELAY,348)
    dspba_delay_ver #( .width(1), .depth(18), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist14_sync_together108_aunroll_x_in_c0_eni11_10_tpl_18 ( .xin(in_c0_eni11_10_tpl), .xout(redist14_sync_together108_aunroll_x_in_c0_eni11_10_tpl_18_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist13_sync_together108_aunroll_x_in_c0_eni11_9_tpl_4(DELAY,347)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist13_sync_together108_aunroll_x_in_c0_eni11_9_tpl_4_delay_0 <= $unsigned(in_c0_eni11_9_tpl);
            redist13_sync_together108_aunroll_x_in_c0_eni11_9_tpl_4_delay_1 <= redist13_sync_together108_aunroll_x_in_c0_eni11_9_tpl_4_delay_0;
            redist13_sync_together108_aunroll_x_in_c0_eni11_9_tpl_4_delay_2 <= redist13_sync_together108_aunroll_x_in_c0_eni11_9_tpl_4_delay_1;
            redist13_sync_together108_aunroll_x_in_c0_eni11_9_tpl_4_q <= redist13_sync_together108_aunroll_x_in_c0_eni11_9_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_push_i1_notcmp1538_push25_atax0_element_extension2_x(BITJOIN,187)@5
    assign i_llvm_fpga_push_i1_notcmp1538_push25_atax0_element_extension2_x_q = {i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_c_i7_03_x_q, i_llvm_fpga_pop_i1_notcmp1538_pop25_atax0_i_llvm_fpga_pop_i1_notcmp1538_pop25_atax40_mux_x_q};

    // valid_fanout_reg37(REG,248)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg37_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg36(REG,247)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg36_q <= $unsigned(redist17_sync_together108_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp1538_push25_atax0_i_llvm_fpga_push_i1_notcmp1538_push25_atax1_x(FIFODELAY,188)@1
    // in i_valid@4
    // in i_write_pred@4
    // in i_data@5
    // out o_data@4
    assign i_llvm_fpga_push_i1_notcmp1538_push25_atax0_i_llvm_fpga_push_i1_notcmp1538_push25_atax1_x_i_stall = ~ (valid_fanout_reg37_q & i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_notcmp1538_push25_atax0_i_llvm_fpga_push_i1_notcmp1538_push25_atax1_x_i_valid = valid_fanout_reg36_q & redist23_i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_inv_pred_x_q_3_q;
    assign i_llvm_fpga_push_i1_notcmp1538_push25_atax0_i_llvm_fpga_push_i1_notcmp1538_push25_atax1_x_i_data = i_llvm_fpga_push_i1_notcmp1538_push25_atax0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_notcmp1538_push25_atax0_i_llvm_fpga_push_i1_notcmp1538_push25_atax1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_notcmp1538_push25_atax0_i_llvm_fpga_push_i1_notcmp1538_push25_atax1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_notcmp1538_push25_atax0_i_llvm_fpga_push_i1_notcmp1538_push25_atax1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_notcmp1538_push25_atax0_i_llvm_fpga_push_i1_notcmp1538_push25_atax1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(8),
        .STYLE("zl"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i1_notcmp1538_push25_atax0_i_llvm_fpga_push_i1_notcmp1538_push25_atax1_x (
        .i_valid(i_llvm_fpga_push_i1_notcmp1538_push25_atax0_i_llvm_fpga_push_i1_notcmp1538_push25_atax1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_notcmp1538_push25_atax0_i_llvm_fpga_push_i1_notcmp1538_push25_atax1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_notcmp1538_push25_atax0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_notcmp1538_push25_atax0_i_llvm_fpga_push_i1_notcmp1538_push25_atax1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_notcmp1538_push25_atax0_adapt_scalar_trunc4_sel_x(BITSELECT,190)@4
    assign i_llvm_fpga_push_i1_notcmp1538_push25_atax0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_notcmp1538_push25_atax0_i_llvm_fpga_push_i1_notcmp1538_push25_atax1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_notcmp1538_pop25_atax0_i_llvm_fpga_pop_i1_notcmp1538_pop25_atax40_mux_x(MUX,149)@4 + 1
    assign i_llvm_fpga_pop_i1_notcmp1538_pop25_atax0_i_llvm_fpga_pop_i1_notcmp1538_pop25_atax40_mux_x_s = redist37_i_llvm_fpga_forked_atax_b5_forked_atax3_out_buffer_out_4_q;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_llvm_fpga_pop_i1_notcmp1538_pop25_atax0_i_llvm_fpga_pop_i1_notcmp1538_pop25_atax40_mux_x_s)
                1'b0 : i_llvm_fpga_pop_i1_notcmp1538_pop25_atax0_i_llvm_fpga_pop_i1_notcmp1538_pop25_atax40_mux_x_q <= i_llvm_fpga_push_i1_notcmp1538_push25_atax0_adapt_scalar_trunc4_sel_x_b;
                1'b1 : i_llvm_fpga_pop_i1_notcmp1538_pop25_atax0_i_llvm_fpga_pop_i1_notcmp1538_pop25_atax40_mux_x_q <= redist13_sync_together108_aunroll_x_in_c0_eni11_9_tpl_4_q;
                default : i_llvm_fpga_pop_i1_notcmp1538_pop25_atax0_i_llvm_fpga_pop_i1_notcmp1538_pop25_atax40_mux_x_q <= 1'b0;
            endcase
        end
    end

    // redist29_i_llvm_fpga_pop_i1_notcmp1538_pop25_atax0_i_llvm_fpga_pop_i1_notcmp1538_pop25_atax40_mux_x_q_14(DELAY,363)
    dspba_delay_ver #( .width(1), .depth(13), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist29_i_llvm_fpga_pop_i1_notcmp1538_pop25_atax0_i_llvm_fpga_pop_i1_notcmp1538_pop25_atax40_mux_x_q_14 ( .xin(i_llvm_fpga_pop_i1_notcmp1538_pop25_atax0_i_llvm_fpga_pop_i1_notcmp1538_pop25_atax40_mux_x_q), .xout(redist29_i_llvm_fpga_pop_i1_notcmp1538_pop25_atax0_i_llvm_fpga_pop_i1_notcmp1538_pop25_atax40_mux_x_q_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist12_sync_together108_aunroll_x_in_c0_eni11_8_tpl_4(DELAY,346)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist12_sync_together108_aunroll_x_in_c0_eni11_8_tpl_4_delay_0 <= $unsigned(in_c0_eni11_8_tpl);
            redist12_sync_together108_aunroll_x_in_c0_eni11_8_tpl_4_delay_1 <= redist12_sync_together108_aunroll_x_in_c0_eni11_8_tpl_4_delay_0;
            redist12_sync_together108_aunroll_x_in_c0_eni11_8_tpl_4_delay_2 <= redist12_sync_together108_aunroll_x_in_c0_eni11_8_tpl_4_delay_1;
            redist12_sync_together108_aunroll_x_in_c0_eni11_8_tpl_4_q <= redist12_sync_together108_aunroll_x_in_c0_eni11_8_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_push_i1_exitcond936_push24_atax0_element_extension2_x(BITJOIN,163)@5
    assign i_llvm_fpga_push_i1_exitcond936_push24_atax0_element_extension2_x_q = {i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_c_i7_03_x_q, i_llvm_fpga_pop_i1_exitcond936_pop24_atax0_i_llvm_fpga_pop_i1_exitcond936_pop24_atax38_mux_x_q};

    // valid_fanout_reg34(REG,245)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg34_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg33(REG,244)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg33_q <= $unsigned(redist17_sync_together108_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_exitcond936_push24_atax0_i_llvm_fpga_push_i1_exitcond936_push24_atax1_x(FIFODELAY,164)@1
    // in i_valid@4
    // in i_write_pred@4
    // in i_data@5
    // out o_data@4
    assign i_llvm_fpga_push_i1_exitcond936_push24_atax0_i_llvm_fpga_push_i1_exitcond936_push24_atax1_x_i_stall = ~ (valid_fanout_reg34_q & i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_exitcond936_push24_atax0_i_llvm_fpga_push_i1_exitcond936_push24_atax1_x_i_valid = valid_fanout_reg33_q & redist23_i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_inv_pred_x_q_3_q;
    assign i_llvm_fpga_push_i1_exitcond936_push24_atax0_i_llvm_fpga_push_i1_exitcond936_push24_atax1_x_i_data = i_llvm_fpga_push_i1_exitcond936_push24_atax0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_exitcond936_push24_atax0_i_llvm_fpga_push_i1_exitcond936_push24_atax1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_exitcond936_push24_atax0_i_llvm_fpga_push_i1_exitcond936_push24_atax1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_exitcond936_push24_atax0_i_llvm_fpga_push_i1_exitcond936_push24_atax1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_exitcond936_push24_atax0_i_llvm_fpga_push_i1_exitcond936_push24_atax1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(8),
        .STYLE("zl"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i1_exitcond936_push24_atax0_i_llvm_fpga_push_i1_exitcond936_push24_atax1_x (
        .i_valid(i_llvm_fpga_push_i1_exitcond936_push24_atax0_i_llvm_fpga_push_i1_exitcond936_push24_atax1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_exitcond936_push24_atax0_i_llvm_fpga_push_i1_exitcond936_push24_atax1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_exitcond936_push24_atax0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_exitcond936_push24_atax0_i_llvm_fpga_push_i1_exitcond936_push24_atax1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_exitcond936_push24_atax0_adapt_scalar_trunc4_sel_x(BITSELECT,166)@4
    assign i_llvm_fpga_push_i1_exitcond936_push24_atax0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_exitcond936_push24_atax0_i_llvm_fpga_push_i1_exitcond936_push24_atax1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_exitcond936_pop24_atax0_i_llvm_fpga_pop_i1_exitcond936_pop24_atax38_mux_x(MUX,145)@4 + 1
    assign i_llvm_fpga_pop_i1_exitcond936_pop24_atax0_i_llvm_fpga_pop_i1_exitcond936_pop24_atax38_mux_x_s = redist37_i_llvm_fpga_forked_atax_b5_forked_atax3_out_buffer_out_4_q;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_llvm_fpga_pop_i1_exitcond936_pop24_atax0_i_llvm_fpga_pop_i1_exitcond936_pop24_atax38_mux_x_s)
                1'b0 : i_llvm_fpga_pop_i1_exitcond936_pop24_atax0_i_llvm_fpga_pop_i1_exitcond936_pop24_atax38_mux_x_q <= i_llvm_fpga_push_i1_exitcond936_push24_atax0_adapt_scalar_trunc4_sel_x_b;
                1'b1 : i_llvm_fpga_pop_i1_exitcond936_pop24_atax0_i_llvm_fpga_pop_i1_exitcond936_pop24_atax38_mux_x_q <= redist12_sync_together108_aunroll_x_in_c0_eni11_8_tpl_4_q;
                default : i_llvm_fpga_pop_i1_exitcond936_pop24_atax0_i_llvm_fpga_pop_i1_exitcond936_pop24_atax38_mux_x_q <= 1'b0;
            endcase
        end
    end

    // redist32_i_llvm_fpga_pop_i1_exitcond936_pop24_atax0_i_llvm_fpga_pop_i1_exitcond936_pop24_atax38_mux_x_q_14(DELAY,366)
    dspba_delay_ver #( .width(1), .depth(13), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist32_i_llvm_fpga_pop_i1_exitcond936_pop24_atax0_i_llvm_fpga_pop_i1_exitcond936_pop24_atax38_mux_x_q_14 ( .xin(i_llvm_fpga_pop_i1_exitcond936_pop24_atax0_i_llvm_fpga_pop_i1_exitcond936_pop24_atax38_mux_x_q), .xout(redist32_i_llvm_fpga_pop_i1_exitcond936_pop24_atax0_i_llvm_fpga_pop_i1_exitcond936_pop24_atax38_mux_x_q_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist27_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax0_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax36_mux_x_q_14_offset(CONSTANT,388)
    assign redist27_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax0_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax36_mux_x_q_14_offset_q = $unsigned(4'b0111);

    // redist27_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax0_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax36_mux_x_q_14_rdcnt(ADD,389)
    assign redist27_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax0_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax36_mux_x_q_14_rdcnt_a = {1'b0, redist27_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax0_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax36_mux_x_q_14_wraddr_q};
    assign redist27_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax0_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax36_mux_x_q_14_rdcnt_b = {1'b0, redist27_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax0_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax36_mux_x_q_14_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist27_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax0_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax36_mux_x_q_14_rdcnt_o <= $unsigned(redist27_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax0_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax36_mux_x_q_14_rdcnt_a) + $unsigned(redist27_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax0_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax36_mux_x_q_14_rdcnt_b);
        end
    end
    assign redist27_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax0_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax36_mux_x_q_14_rdcnt_q = redist27_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax0_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax36_mux_x_q_14_rdcnt_o[4:0];

    // redist11_sync_together108_aunroll_x_in_c0_eni11_7_tpl_4_inputreg0(DELAY,383)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist11_sync_together108_aunroll_x_in_c0_eni11_7_tpl_4_inputreg0_q <= $unsigned(in_c0_eni11_7_tpl);
        end
    end

    // redist11_sync_together108_aunroll_x_in_c0_eni11_7_tpl_4(DELAY,345)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist11_sync_together108_aunroll_x_in_c0_eni11_7_tpl_4_delay_0 <= $unsigned(redist11_sync_together108_aunroll_x_in_c0_eni11_7_tpl_4_inputreg0_q);
            redist11_sync_together108_aunroll_x_in_c0_eni11_7_tpl_4_delay_1 <= redist11_sync_together108_aunroll_x_in_c0_eni11_7_tpl_4_delay_0;
            redist11_sync_together108_aunroll_x_in_c0_eni11_7_tpl_4_q <= redist11_sync_together108_aunroll_x_in_c0_eni11_7_tpl_4_delay_1;
        end
    end

    // valid_fanout_reg31(REG,242)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg31_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg30(REG,241)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg30_q <= $unsigned(redist16_sync_together108_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_p67i32_arrayidx134_push23_atax0_i_llvm_fpga_push_p67i32_arrayidx134_push23_atax1_x(FIFODELAY,206)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_p67i32_arrayidx134_push23_atax0_i_llvm_fpga_push_p67i32_arrayidx134_push23_atax1_x_i_stall = ~ (valid_fanout_reg31_q & i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_inv_pred_x_q);
    assign i_llvm_fpga_push_p67i32_arrayidx134_push23_atax0_i_llvm_fpga_push_p67i32_arrayidx134_push23_atax1_x_i_valid = valid_fanout_reg30_q & redist22_i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_p67i32_arrayidx134_push23_atax0_i_llvm_fpga_push_p67i32_arrayidx134_push23_atax1_x_i_data = i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax0_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax36_mux_x_q;
    assign i_llvm_fpga_push_p67i32_arrayidx134_push23_atax0_i_llvm_fpga_push_p67i32_arrayidx134_push23_atax1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_p67i32_arrayidx134_push23_atax0_i_llvm_fpga_push_p67i32_arrayidx134_push23_atax1_x_i_valid[0];
    assign i_llvm_fpga_push_p67i32_arrayidx134_push23_atax0_i_llvm_fpga_push_p67i32_arrayidx134_push23_atax1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_p67i32_arrayidx134_push23_atax0_i_llvm_fpga_push_p67i32_arrayidx134_push23_atax1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(64),
        .STYLE("ll"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_p67i32_arrayidx134_push23_atax0_i_llvm_fpga_push_p67i32_arrayidx134_push23_atax1_x (
        .i_valid(i_llvm_fpga_push_p67i32_arrayidx134_push23_atax0_i_llvm_fpga_push_p67i32_arrayidx134_push23_atax1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_p67i32_arrayidx134_push23_atax0_i_llvm_fpga_push_p67i32_arrayidx134_push23_atax1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax0_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax36_mux_x_q),
        .o_data(i_llvm_fpga_push_p67i32_arrayidx134_push23_atax0_i_llvm_fpga_push_p67i32_arrayidx134_push23_atax1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax0_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax36_mux_x(MUX,154)@4
    assign i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax0_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax36_mux_x_s = redist37_i_llvm_fpga_forked_atax_b5_forked_atax3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax0_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax36_mux_x_s or i_llvm_fpga_push_p67i32_arrayidx134_push23_atax0_i_llvm_fpga_push_p67i32_arrayidx134_push23_atax1_x_o_data or redist11_sync_together108_aunroll_x_in_c0_eni11_7_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax0_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax36_mux_x_s)
            1'b0 : i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax0_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax36_mux_x_q = i_llvm_fpga_push_p67i32_arrayidx134_push23_atax0_i_llvm_fpga_push_p67i32_arrayidx134_push23_atax1_x_o_data;
            1'b1 : i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax0_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax36_mux_x_q = redist11_sync_together108_aunroll_x_in_c0_eni11_7_tpl_4_q;
            default : i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax0_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax36_mux_x_q = 64'b0;
        endcase
    end

    // redist27_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax0_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax36_mux_x_q_14_inputreg0(DELAY,384)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist27_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax0_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax36_mux_x_q_14_inputreg0_q <= $unsigned(i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax0_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax36_mux_x_q);
        end
    end

    // redist27_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax0_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax36_mux_x_q_14_wraddr(COUNTER,387)
    // low=0, high=15, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist27_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax0_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax36_mux_x_q_14_wraddr_i <= $unsigned(redist27_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax0_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax36_mux_x_q_14_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist27_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax0_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax36_mux_x_q_14_wraddr_q = redist27_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax0_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax36_mux_x_q_14_wraddr_i[3:0];

    // redist27_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax0_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax36_mux_x_q_14_mem(DUALMEM,386)
    assign redist27_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax0_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax36_mux_x_q_14_mem_ia = $unsigned(redist27_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax0_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax36_mux_x_q_14_inputreg0_q);
    assign redist27_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax0_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax36_mux_x_q_14_mem_aa = redist27_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax0_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax36_mux_x_q_14_wraddr_q;
    assign redist27_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax0_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax36_mux_x_q_14_mem_ab = redist27_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax0_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax36_mux_x_q_14_rdcnt_q[3:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(4),
        .numwords_a(16),
        .width_b(64),
        .widthad_b(4),
        .numwords_b(16),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK0"),
        .outdata_sclr_b("NONE"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Stratix 10")
    ) redist27_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax0_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax36_mux_x_q_14_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist27_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax0_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax36_mux_x_q_14_mem_aa),
        .data_a(redist27_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax0_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax36_mux_x_q_14_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist27_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax0_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax36_mux_x_q_14_mem_ab),
        .q_b(redist27_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax0_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax36_mux_x_q_14_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .aclr1(),
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
    assign redist27_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax0_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax36_mux_x_q_14_mem_q = redist27_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax0_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax36_mux_x_q_14_mem_iq[63:0];

    // redist27_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax0_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax36_mux_x_q_14_outputreg0(DELAY,385)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist27_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax0_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax36_mux_x_q_14_outputreg0_q <= $unsigned(redist27_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax0_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax36_mux_x_q_14_mem_q);
        end
    end

    // redist10_sync_together108_aunroll_x_in_c0_eni11_6_tpl_17(DELAY,344)
    dspba_delay_ver #( .width(1), .depth(17), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist10_sync_together108_aunroll_x_in_c0_eni11_6_tpl_17 ( .xin(in_c0_eni11_6_tpl), .xout(redist10_sync_together108_aunroll_x_in_c0_eni11_6_tpl_17_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_push_i1_forked2331_push21_atax0_element_extension2_x(BITJOIN,169)@18
    assign i_llvm_fpga_push_i1_forked2331_push21_atax0_element_extension2_x_q = {i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_c_i7_03_x_q, i_llvm_fpga_pop_i1_forked2331_pop21_atax0_i_llvm_fpga_pop_i1_forked2331_pop21_atax34_mux_x_q};

    // redist25_i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_inv_pred_x_q_13(DELAY,359)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist25_i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_inv_pred_x_q_13 ( .xin(redist24_i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_inv_pred_x_q_4_q), .xout(redist25_i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_inv_pred_x_q_13_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg28(REG,239)@13 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg28_q <= $unsigned(redist20_sync_together108_aunroll_x_in_i_valid_13_q);
        end
    end

    // redist26_i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_inv_pred_x_q_16(DELAY,360)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist26_i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_inv_pred_x_q_16_delay_0 <= $unsigned(redist25_i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_inv_pred_x_q_13_q);
            redist26_i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_inv_pred_x_q_16_delay_1 <= redist26_i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_inv_pred_x_q_16_delay_0;
            redist26_i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_inv_pred_x_q_16_q <= redist26_i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_inv_pred_x_q_16_delay_1;
        end
    end

    // valid_fanout_reg27(REG,238)@16 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg27_q <= $unsigned(redist21_sync_together108_aunroll_x_in_i_valid_16_q);
        end
    end

    // i_llvm_fpga_push_i1_forked2331_push21_atax0_i_llvm_fpga_push_i1_forked2331_push21_atax1_x(FIFODELAY,170)@14
    // in i_valid@17
    // in i_write_pred@17
    // in i_data@18
    // out o_data@17
    assign i_llvm_fpga_push_i1_forked2331_push21_atax0_i_llvm_fpga_push_i1_forked2331_push21_atax1_x_i_stall = ~ (valid_fanout_reg28_q & redist25_i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_inv_pred_x_q_13_q);
    assign i_llvm_fpga_push_i1_forked2331_push21_atax0_i_llvm_fpga_push_i1_forked2331_push21_atax1_x_i_valid = valid_fanout_reg27_q & redist26_i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_inv_pred_x_q_16_q;
    assign i_llvm_fpga_push_i1_forked2331_push21_atax0_i_llvm_fpga_push_i1_forked2331_push21_atax1_x_i_data = i_llvm_fpga_push_i1_forked2331_push21_atax0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_forked2331_push21_atax0_i_llvm_fpga_push_i1_forked2331_push21_atax1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_forked2331_push21_atax0_i_llvm_fpga_push_i1_forked2331_push21_atax1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_forked2331_push21_atax0_i_llvm_fpga_push_i1_forked2331_push21_atax1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_forked2331_push21_atax0_i_llvm_fpga_push_i1_forked2331_push21_atax1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(8),
        .STYLE("zl"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i1_forked2331_push21_atax0_i_llvm_fpga_push_i1_forked2331_push21_atax1_x (
        .i_valid(i_llvm_fpga_push_i1_forked2331_push21_atax0_i_llvm_fpga_push_i1_forked2331_push21_atax1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_forked2331_push21_atax0_i_llvm_fpga_push_i1_forked2331_push21_atax1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_forked2331_push21_atax0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_forked2331_push21_atax0_i_llvm_fpga_push_i1_forked2331_push21_atax1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_forked2331_push21_atax0_adapt_scalar_trunc4_sel_x(BITSELECT,172)@17
    assign i_llvm_fpga_push_i1_forked2331_push21_atax0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_forked2331_push21_atax0_i_llvm_fpga_push_i1_forked2331_push21_atax1_x_o_data[0:0];

    // redist39_i_llvm_fpga_forked_atax_b5_forked_atax3_out_buffer_out_17(DELAY,373)
    dspba_delay_ver #( .width(1), .depth(11), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist39_i_llvm_fpga_forked_atax_b5_forked_atax3_out_buffer_out_17 ( .xin(redist38_i_llvm_fpga_forked_atax_b5_forked_atax3_out_buffer_out_6_q), .xout(redist39_i_llvm_fpga_forked_atax_b5_forked_atax3_out_buffer_out_17_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_pop_i1_forked2331_pop21_atax0_i_llvm_fpga_pop_i1_forked2331_pop21_atax34_mux_x(MUX,146)@17 + 1
    assign i_llvm_fpga_pop_i1_forked2331_pop21_atax0_i_llvm_fpga_pop_i1_forked2331_pop21_atax34_mux_x_s = redist39_i_llvm_fpga_forked_atax_b5_forked_atax3_out_buffer_out_17_q;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_llvm_fpga_pop_i1_forked2331_pop21_atax0_i_llvm_fpga_pop_i1_forked2331_pop21_atax34_mux_x_s)
                1'b0 : i_llvm_fpga_pop_i1_forked2331_pop21_atax0_i_llvm_fpga_pop_i1_forked2331_pop21_atax34_mux_x_q <= i_llvm_fpga_push_i1_forked2331_push21_atax0_adapt_scalar_trunc4_sel_x_b;
                1'b1 : i_llvm_fpga_pop_i1_forked2331_pop21_atax0_i_llvm_fpga_pop_i1_forked2331_pop21_atax34_mux_x_q <= redist10_sync_together108_aunroll_x_in_c0_eni11_6_tpl_17_q;
                default : i_llvm_fpga_pop_i1_forked2331_pop21_atax0_i_llvm_fpga_pop_i1_forked2331_pop21_atax34_mux_x_q <= 1'b0;
            endcase
        end
    end

    // redist9_sync_together108_aunroll_x_in_c0_eni11_5_tpl_4(DELAY,343)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist9_sync_together108_aunroll_x_in_c0_eni11_5_tpl_4_delay_0 <= $unsigned(in_c0_eni11_5_tpl);
            redist9_sync_together108_aunroll_x_in_c0_eni11_5_tpl_4_delay_1 <= redist9_sync_together108_aunroll_x_in_c0_eni11_5_tpl_4_delay_0;
            redist9_sync_together108_aunroll_x_in_c0_eni11_5_tpl_4_delay_2 <= redist9_sync_together108_aunroll_x_in_c0_eni11_5_tpl_4_delay_1;
            redist9_sync_together108_aunroll_x_in_c0_eni11_5_tpl_4_q <= redist9_sync_together108_aunroll_x_in_c0_eni11_5_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi3_pop1028_push20_atax0_element_extension2_x(BITJOIN,175)@5
    assign i_llvm_fpga_push_i1_memdep_phi3_pop1028_push20_atax0_element_extension2_x_q = {i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_c_i7_03_x_q, i_llvm_fpga_pop_i1_memdep_phi3_pop1028_pop20_atax0_i_llvm_fpga_pop_i1_memdep_phi3_pop1028_pop20_atax32_mux_x_q};

    // valid_fanout_reg25(REG,236)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg25_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg24(REG,235)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg24_q <= $unsigned(redist17_sync_together108_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi3_pop1028_push20_atax0_i_llvm_fpga_push_i1_memdep_phi3_pop1028_push20_atax1_x(FIFODELAY,176)@1
    // in i_valid@4
    // in i_write_pred@4
    // in i_data@5
    // out o_data@4
    assign i_llvm_fpga_push_i1_memdep_phi3_pop1028_push20_atax0_i_llvm_fpga_push_i1_memdep_phi3_pop1028_push20_atax1_x_i_stall = ~ (valid_fanout_reg25_q & i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_memdep_phi3_pop1028_push20_atax0_i_llvm_fpga_push_i1_memdep_phi3_pop1028_push20_atax1_x_i_valid = valid_fanout_reg24_q & redist23_i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_inv_pred_x_q_3_q;
    assign i_llvm_fpga_push_i1_memdep_phi3_pop1028_push20_atax0_i_llvm_fpga_push_i1_memdep_phi3_pop1028_push20_atax1_x_i_data = i_llvm_fpga_push_i1_memdep_phi3_pop1028_push20_atax0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_memdep_phi3_pop1028_push20_atax0_i_llvm_fpga_push_i1_memdep_phi3_pop1028_push20_atax1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi3_pop1028_push20_atax0_i_llvm_fpga_push_i1_memdep_phi3_pop1028_push20_atax1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_memdep_phi3_pop1028_push20_atax0_i_llvm_fpga_push_i1_memdep_phi3_pop1028_push20_atax1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi3_pop1028_push20_atax0_i_llvm_fpga_push_i1_memdep_phi3_pop1028_push20_atax1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(8),
        .STYLE("zl"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i1_memdep_phi3_pop1028_push20_atax0_i_llvm_fpga_push_i1_memdep_phi3_pop1028_push20_atax1_x (
        .i_valid(i_llvm_fpga_push_i1_memdep_phi3_pop1028_push20_atax0_i_llvm_fpga_push_i1_memdep_phi3_pop1028_push20_atax1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_memdep_phi3_pop1028_push20_atax0_i_llvm_fpga_push_i1_memdep_phi3_pop1028_push20_atax1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_memdep_phi3_pop1028_push20_atax0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_memdep_phi3_pop1028_push20_atax0_i_llvm_fpga_push_i1_memdep_phi3_pop1028_push20_atax1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_memdep_phi3_pop1028_push20_atax0_adapt_scalar_trunc4_sel_x(BITSELECT,178)@4
    assign i_llvm_fpga_push_i1_memdep_phi3_pop1028_push20_atax0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_memdep_phi3_pop1028_push20_atax0_i_llvm_fpga_push_i1_memdep_phi3_pop1028_push20_atax1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_memdep_phi3_pop1028_pop20_atax0_i_llvm_fpga_pop_i1_memdep_phi3_pop1028_pop20_atax32_mux_x(MUX,147)@4 + 1
    assign i_llvm_fpga_pop_i1_memdep_phi3_pop1028_pop20_atax0_i_llvm_fpga_pop_i1_memdep_phi3_pop1028_pop20_atax32_mux_x_s = redist37_i_llvm_fpga_forked_atax_b5_forked_atax3_out_buffer_out_4_q;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_llvm_fpga_pop_i1_memdep_phi3_pop1028_pop20_atax0_i_llvm_fpga_pop_i1_memdep_phi3_pop1028_pop20_atax32_mux_x_s)
                1'b0 : i_llvm_fpga_pop_i1_memdep_phi3_pop1028_pop20_atax0_i_llvm_fpga_pop_i1_memdep_phi3_pop1028_pop20_atax32_mux_x_q <= i_llvm_fpga_push_i1_memdep_phi3_pop1028_push20_atax0_adapt_scalar_trunc4_sel_x_b;
                1'b1 : i_llvm_fpga_pop_i1_memdep_phi3_pop1028_pop20_atax0_i_llvm_fpga_pop_i1_memdep_phi3_pop1028_pop20_atax32_mux_x_q <= redist9_sync_together108_aunroll_x_in_c0_eni11_5_tpl_4_q;
                default : i_llvm_fpga_pop_i1_memdep_phi3_pop1028_pop20_atax0_i_llvm_fpga_pop_i1_memdep_phi3_pop1028_pop20_atax32_mux_x_q <= 1'b0;
            endcase
        end
    end

    // redist31_i_llvm_fpga_pop_i1_memdep_phi3_pop1028_pop20_atax0_i_llvm_fpga_pop_i1_memdep_phi3_pop1028_pop20_atax32_mux_x_q_14(DELAY,365)
    dspba_delay_ver #( .width(1), .depth(13), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist31_i_llvm_fpga_pop_i1_memdep_phi3_pop1028_pop20_atax0_i_llvm_fpga_pop_i1_memdep_phi3_pop1028_pop20_atax32_mux_x_q_14 ( .xin(i_llvm_fpga_pop_i1_memdep_phi3_pop1028_pop20_atax0_i_llvm_fpga_pop_i1_memdep_phi3_pop1028_pop20_atax32_mux_x_q), .xout(redist31_i_llvm_fpga_pop_i1_memdep_phi3_pop1028_pop20_atax0_i_llvm_fpga_pop_i1_memdep_phi3_pop1028_pop20_atax32_mux_x_q_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist8_sync_together108_aunroll_x_in_c0_eni11_4_tpl_4(DELAY,342)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_sync_together108_aunroll_x_in_c0_eni11_4_tpl_4_delay_0 <= $unsigned(in_c0_eni11_4_tpl);
            redist8_sync_together108_aunroll_x_in_c0_eni11_4_tpl_4_delay_1 <= redist8_sync_together108_aunroll_x_in_c0_eni11_4_tpl_4_delay_0;
            redist8_sync_together108_aunroll_x_in_c0_eni11_4_tpl_4_delay_2 <= redist8_sync_together108_aunroll_x_in_c0_eni11_4_tpl_4_delay_1;
            redist8_sync_together108_aunroll_x_in_c0_eni11_4_tpl_4_q <= redist8_sync_together108_aunroll_x_in_c0_eni11_4_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi_pop925_push19_atax0_element_extension2_x(BITJOIN,181)@5
    assign i_llvm_fpga_push_i1_memdep_phi_pop925_push19_atax0_element_extension2_x_q = {i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_c_i7_03_x_q, i_llvm_fpga_pop_i1_memdep_phi_pop925_pop19_atax0_i_llvm_fpga_pop_i1_memdep_phi_pop925_pop19_atax30_mux_x_q};

    // valid_fanout_reg22(REG,233)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg22_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg21(REG,232)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg21_q <= $unsigned(redist17_sync_together108_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi_pop925_push19_atax0_i_llvm_fpga_push_i1_memdep_phi_pop925_push19_atax1_x(FIFODELAY,182)@1
    // in i_valid@4
    // in i_write_pred@4
    // in i_data@5
    // out o_data@4
    assign i_llvm_fpga_push_i1_memdep_phi_pop925_push19_atax0_i_llvm_fpga_push_i1_memdep_phi_pop925_push19_atax1_x_i_stall = ~ (valid_fanout_reg22_q & i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_memdep_phi_pop925_push19_atax0_i_llvm_fpga_push_i1_memdep_phi_pop925_push19_atax1_x_i_valid = valid_fanout_reg21_q & redist23_i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_inv_pred_x_q_3_q;
    assign i_llvm_fpga_push_i1_memdep_phi_pop925_push19_atax0_i_llvm_fpga_push_i1_memdep_phi_pop925_push19_atax1_x_i_data = i_llvm_fpga_push_i1_memdep_phi_pop925_push19_atax0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_memdep_phi_pop925_push19_atax0_i_llvm_fpga_push_i1_memdep_phi_pop925_push19_atax1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi_pop925_push19_atax0_i_llvm_fpga_push_i1_memdep_phi_pop925_push19_atax1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_memdep_phi_pop925_push19_atax0_i_llvm_fpga_push_i1_memdep_phi_pop925_push19_atax1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi_pop925_push19_atax0_i_llvm_fpga_push_i1_memdep_phi_pop925_push19_atax1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(8),
        .STYLE("zl"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i1_memdep_phi_pop925_push19_atax0_i_llvm_fpga_push_i1_memdep_phi_pop925_push19_atax1_x (
        .i_valid(i_llvm_fpga_push_i1_memdep_phi_pop925_push19_atax0_i_llvm_fpga_push_i1_memdep_phi_pop925_push19_atax1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_memdep_phi_pop925_push19_atax0_i_llvm_fpga_push_i1_memdep_phi_pop925_push19_atax1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_memdep_phi_pop925_push19_atax0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_memdep_phi_pop925_push19_atax0_i_llvm_fpga_push_i1_memdep_phi_pop925_push19_atax1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_memdep_phi_pop925_push19_atax0_adapt_scalar_trunc4_sel_x(BITSELECT,184)@4
    assign i_llvm_fpga_push_i1_memdep_phi_pop925_push19_atax0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_memdep_phi_pop925_push19_atax0_i_llvm_fpga_push_i1_memdep_phi_pop925_push19_atax1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_memdep_phi_pop925_pop19_atax0_i_llvm_fpga_pop_i1_memdep_phi_pop925_pop19_atax30_mux_x(MUX,148)@4 + 1
    assign i_llvm_fpga_pop_i1_memdep_phi_pop925_pop19_atax0_i_llvm_fpga_pop_i1_memdep_phi_pop925_pop19_atax30_mux_x_s = redist37_i_llvm_fpga_forked_atax_b5_forked_atax3_out_buffer_out_4_q;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_llvm_fpga_pop_i1_memdep_phi_pop925_pop19_atax0_i_llvm_fpga_pop_i1_memdep_phi_pop925_pop19_atax30_mux_x_s)
                1'b0 : i_llvm_fpga_pop_i1_memdep_phi_pop925_pop19_atax0_i_llvm_fpga_pop_i1_memdep_phi_pop925_pop19_atax30_mux_x_q <= i_llvm_fpga_push_i1_memdep_phi_pop925_push19_atax0_adapt_scalar_trunc4_sel_x_b;
                1'b1 : i_llvm_fpga_pop_i1_memdep_phi_pop925_pop19_atax0_i_llvm_fpga_pop_i1_memdep_phi_pop925_pop19_atax30_mux_x_q <= redist8_sync_together108_aunroll_x_in_c0_eni11_4_tpl_4_q;
                default : i_llvm_fpga_pop_i1_memdep_phi_pop925_pop19_atax0_i_llvm_fpga_pop_i1_memdep_phi_pop925_pop19_atax30_mux_x_q <= 1'b0;
            endcase
        end
    end

    // redist30_i_llvm_fpga_pop_i1_memdep_phi_pop925_pop19_atax0_i_llvm_fpga_pop_i1_memdep_phi_pop925_pop19_atax30_mux_x_q_14(DELAY,364)
    dspba_delay_ver #( .width(1), .depth(13), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist30_i_llvm_fpga_pop_i1_memdep_phi_pop925_pop19_atax0_i_llvm_fpga_pop_i1_memdep_phi_pop925_pop19_atax30_mux_x_q_14 ( .xin(i_llvm_fpga_pop_i1_memdep_phi_pop925_pop19_atax0_i_llvm_fpga_pop_i1_memdep_phi_pop925_pop19_atax30_mux_x_q), .xout(redist30_i_llvm_fpga_pop_i1_memdep_phi_pop925_pop19_atax0_i_llvm_fpga_pop_i1_memdep_phi_pop925_pop19_atax30_mux_x_q_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_notcmp10_atax26(LOGICAL,92)@18
    assign i_notcmp10_atax26_q = redist4_i_exitcond_atax21_cmp_nsign_q_14_q ^ VCC_q;

    // redist4_i_exitcond_atax21_cmp_nsign_q_14(DELAY,338)
    dspba_delay_ver #( .width(1), .depth(14), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist4_i_exitcond_atax21_cmp_nsign_q_14 ( .xin(i_exitcond_atax21_cmp_nsign_q), .xout(redist4_i_exitcond_atax21_cmp_nsign_q_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist7_sync_together108_aunroll_x_in_c0_eni11_3_tpl_17_offset(CONSTANT,381)
    assign redist7_sync_together108_aunroll_x_in_c0_eni11_3_tpl_17_offset_q = $unsigned(4'b0100);

    // redist7_sync_together108_aunroll_x_in_c0_eni11_3_tpl_17_rdcnt(ADD,382)
    assign redist7_sync_together108_aunroll_x_in_c0_eni11_3_tpl_17_rdcnt_a = {1'b0, redist7_sync_together108_aunroll_x_in_c0_eni11_3_tpl_17_wraddr_q};
    assign redist7_sync_together108_aunroll_x_in_c0_eni11_3_tpl_17_rdcnt_b = {1'b0, redist7_sync_together108_aunroll_x_in_c0_eni11_3_tpl_17_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_sync_together108_aunroll_x_in_c0_eni11_3_tpl_17_rdcnt_o <= $unsigned(redist7_sync_together108_aunroll_x_in_c0_eni11_3_tpl_17_rdcnt_a) + $unsigned(redist7_sync_together108_aunroll_x_in_c0_eni11_3_tpl_17_rdcnt_b);
        end
    end
    assign redist7_sync_together108_aunroll_x_in_c0_eni11_3_tpl_17_rdcnt_q = redist7_sync_together108_aunroll_x_in_c0_eni11_3_tpl_17_rdcnt_o[4:0];

    // redist7_sync_together108_aunroll_x_in_c0_eni11_3_tpl_17_inputreg0(DELAY,377)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_sync_together108_aunroll_x_in_c0_eni11_3_tpl_17_inputreg0_q <= $unsigned(in_c0_eni11_3_tpl);
        end
    end

    // redist7_sync_together108_aunroll_x_in_c0_eni11_3_tpl_17_wraddr(COUNTER,380)
    // low=0, high=15, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_sync_together108_aunroll_x_in_c0_eni11_3_tpl_17_wraddr_i <= $unsigned(redist7_sync_together108_aunroll_x_in_c0_eni11_3_tpl_17_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist7_sync_together108_aunroll_x_in_c0_eni11_3_tpl_17_wraddr_q = redist7_sync_together108_aunroll_x_in_c0_eni11_3_tpl_17_wraddr_i[3:0];

    // redist7_sync_together108_aunroll_x_in_c0_eni11_3_tpl_17_mem(DUALMEM,379)
    assign redist7_sync_together108_aunroll_x_in_c0_eni11_3_tpl_17_mem_ia = $unsigned(redist7_sync_together108_aunroll_x_in_c0_eni11_3_tpl_17_inputreg0_q);
    assign redist7_sync_together108_aunroll_x_in_c0_eni11_3_tpl_17_mem_aa = redist7_sync_together108_aunroll_x_in_c0_eni11_3_tpl_17_wraddr_q;
    assign redist7_sync_together108_aunroll_x_in_c0_eni11_3_tpl_17_mem_ab = redist7_sync_together108_aunroll_x_in_c0_eni11_3_tpl_17_rdcnt_q[3:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(4),
        .numwords_a(16),
        .width_b(32),
        .widthad_b(4),
        .numwords_b(16),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK0"),
        .outdata_sclr_b("NONE"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Stratix 10")
    ) redist7_sync_together108_aunroll_x_in_c0_eni11_3_tpl_17_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist7_sync_together108_aunroll_x_in_c0_eni11_3_tpl_17_mem_aa),
        .data_a(redist7_sync_together108_aunroll_x_in_c0_eni11_3_tpl_17_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist7_sync_together108_aunroll_x_in_c0_eni11_3_tpl_17_mem_ab),
        .q_b(redist7_sync_together108_aunroll_x_in_c0_eni11_3_tpl_17_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .aclr1(),
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
    assign redist7_sync_together108_aunroll_x_in_c0_eni11_3_tpl_17_mem_q = redist7_sync_together108_aunroll_x_in_c0_eni11_3_tpl_17_mem_iq[31:0];

    // redist7_sync_together108_aunroll_x_in_c0_eni11_3_tpl_17_outputreg0(DELAY,378)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_sync_together108_aunroll_x_in_c0_eni11_3_tpl_17_outputreg0_q <= $unsigned(redist7_sync_together108_aunroll_x_in_c0_eni11_3_tpl_17_mem_q);
        end
    end

    // valid_fanout_reg14(REG,225)@13 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist20_sync_together108_aunroll_x_in_i_valid_13_q);
        end
    end

    // valid_fanout_reg13(REG,224)@16 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist21_sync_together108_aunroll_x_in_i_valid_16_q);
        end
    end

    // i_llvm_fpga_push_i32_t_019_push18_atax0_i_llvm_fpga_push_i32_t_019_push18_atax1_x(FIFODELAY,194)@14
    // in i_valid@17
    // in i_write_pred@17
    // in i_data@18
    // out o_data@17
    assign i_llvm_fpga_push_i32_t_019_push18_atax0_i_llvm_fpga_push_i32_t_019_push18_atax1_x_i_stall = ~ (valid_fanout_reg14_q & redist25_i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_inv_pred_x_q_13_q);
    assign i_llvm_fpga_push_i32_t_019_push18_atax0_i_llvm_fpga_push_i32_t_019_push18_atax1_x_i_valid = valid_fanout_reg13_q & redist26_i_llvm_fpga_push_i1_atax_b5_next_iter_isreal_push_atax0_inv_pred_x_q_16_q;
    assign i_llvm_fpga_push_i32_t_019_push18_atax0_i_llvm_fpga_push_i32_t_019_push18_atax1_x_i_data = bgTrunc_i_add_atax18_sel_x_b;
    assign i_llvm_fpga_push_i32_t_019_push18_atax0_i_llvm_fpga_push_i32_t_019_push18_atax1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_t_019_push18_atax0_i_llvm_fpga_push_i32_t_019_push18_atax1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_t_019_push18_atax0_i_llvm_fpga_push_i32_t_019_push18_atax1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_t_019_push18_atax0_i_llvm_fpga_push_i32_t_019_push18_atax1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(32),
        .STYLE("zl"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i32_t_019_push18_atax0_i_llvm_fpga_push_i32_t_019_push18_atax1_x (
        .i_valid(i_llvm_fpga_push_i32_t_019_push18_atax0_i_llvm_fpga_push_i32_t_019_push18_atax1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_t_019_push18_atax0_i_llvm_fpga_push_i32_t_019_push18_atax1_x_i_stall_bitsignaltemp),
        .i_data(bgTrunc_i_add_atax18_sel_x_b),
        .o_data(i_llvm_fpga_push_i32_t_019_push18_atax0_i_llvm_fpga_push_i32_t_019_push18_atax1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_t_019_pop18_atax0_i_llvm_fpga_pop_i32_t_019_pop18_atax17_mux_x(MUX,151)@17 + 1
    assign i_llvm_fpga_pop_i32_t_019_pop18_atax0_i_llvm_fpga_pop_i32_t_019_pop18_atax17_mux_x_s = redist39_i_llvm_fpga_forked_atax_b5_forked_atax3_out_buffer_out_17_q;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_llvm_fpga_pop_i32_t_019_pop18_atax0_i_llvm_fpga_pop_i32_t_019_pop18_atax17_mux_x_s)
                1'b0 : i_llvm_fpga_pop_i32_t_019_pop18_atax0_i_llvm_fpga_pop_i32_t_019_pop18_atax17_mux_x_q <= i_llvm_fpga_push_i32_t_019_push18_atax0_i_llvm_fpga_push_i32_t_019_push18_atax1_x_o_data;
                1'b1 : i_llvm_fpga_pop_i32_t_019_pop18_atax0_i_llvm_fpga_pop_i32_t_019_pop18_atax17_mux_x_q <= redist7_sync_together108_aunroll_x_in_c0_eni11_3_tpl_17_outputreg0_q;
                default : i_llvm_fpga_pop_i32_t_019_pop18_atax0_i_llvm_fpga_pop_i32_t_019_pop18_atax17_mux_x_q <= 32'b0;
            endcase
        end
    end

    // i_mul_atax16_bs3_merged_bit_select(BITSELECT,331)@10
    assign i_mul_atax16_bs3_merged_bit_select_b = i_llvm_fpga_mem_unnamed_atax4_atax13_out_o_readdata[31:18];
    assign i_mul_atax16_bs3_merged_bit_select_c = i_llvm_fpga_mem_unnamed_atax4_atax13_out_o_readdata[17:0];

    // i_mul_atax16_bs1_merged_bit_select(BITSELECT,332)@10
    assign i_mul_atax16_bs1_merged_bit_select_b = i_llvm_fpga_mem_unnamed_atax5_atax15_out_o_readdata[31:18];
    assign i_mul_atax16_bs1_merged_bit_select_c = i_llvm_fpga_mem_unnamed_atax5_atax15_out_o_readdata[17:0];

    // i_mul_atax16_ma5_cma(CHAINMULTADD,328)@10 + 5
    // out q@16
    assign i_mul_atax16_ma5_cma_reset = ~ (resetn);
    assign i_mul_atax16_ma5_cma_ena0 = 1'b1;
    assign i_mul_atax16_ma5_cma_ena1 = i_mul_atax16_ma5_cma_ena0;
    assign i_mul_atax16_ma5_cma_ena2 = i_mul_atax16_ma5_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul_atax16_ma5_cma_ah[0] <= i_mul_atax16_bs1_merged_bit_select_b;
            i_mul_atax16_ma5_cma_ah[1] <= i_mul_atax16_bs3_merged_bit_select_b;
            i_mul_atax16_ma5_cma_ch[0] <= i_mul_atax16_bs3_merged_bit_select_c;
            i_mul_atax16_ma5_cma_ch[1] <= i_mul_atax16_bs1_merged_bit_select_c;
        end
    end

    assign i_mul_atax16_ma5_cma_a0 = i_mul_atax16_ma5_cma_ah[0];
    assign i_mul_atax16_ma5_cma_c0 = i_mul_atax16_ma5_cma_ch[0];
    assign i_mul_atax16_ma5_cma_a1 = i_mul_atax16_ma5_cma_ah[1];
    assign i_mul_atax16_ma5_cma_c1 = i_mul_atax16_ma5_cma_ch[1];
    fourteennm_mac #(
        .operation_mode("m18x18_sumof2"),
        .clear_type("none"),
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
        .second_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(33)
    ) i_mul_atax16_ma5_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_atax16_ma5_cma_ena2, i_mul_atax16_ma5_cma_ena1, i_mul_atax16_ma5_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul_atax16_ma5_cma_a1),
        .by(i_mul_atax16_ma5_cma_a0),
        .ax(i_mul_atax16_ma5_cma_c1),
        .bx(i_mul_atax16_ma5_cma_c0),
        .resulta(i_mul_atax16_ma5_cma_s0),
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
        .dfxlfsrena(),
        .dfxmisrena(),
        .dftout()
    );
    dspba_delay_ver #( .width(33), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul_atax16_ma5_cma_delay ( .xin(i_mul_atax16_ma5_cma_s0), .xout(i_mul_atax16_ma5_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_atax16_ma5_cma_q = $unsigned(i_mul_atax16_ma5_cma_qq[32:0]);

    // redist1_i_mul_atax16_ma5_cma_q_1(DELAY,335)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_i_mul_atax16_ma5_cma_q_1_q <= $unsigned(i_mul_atax16_ma5_cma_q);
        end
    end

    // i_mul_atax16_sums_align_1(BITSHIFT,277)@17
    assign i_mul_atax16_sums_align_1_qint = { redist1_i_mul_atax16_ma5_cma_q_1_q, 18'b000000000000000000 };
    assign i_mul_atax16_sums_align_1_q = i_mul_atax16_sums_align_1_qint[50:0];

    // i_mul_atax16_bjB4(BITJOIN,267)@10
    assign i_mul_atax16_bjB4_q = {GND_q, i_mul_atax16_bs3_merged_bit_select_b};

    // i_mul_atax16_bjA2(BITJOIN,265)@10
    assign i_mul_atax16_bjA2_q = {GND_q, i_mul_atax16_bs1_merged_bit_select_b};

    // i_mul_atax16_im0_cma(CHAINMULTADD,326)@10 + 5
    // out q@16
    assign i_mul_atax16_im0_cma_reset = ~ (resetn);
    assign i_mul_atax16_im0_cma_ena0 = 1'b1;
    assign i_mul_atax16_im0_cma_ena1 = i_mul_atax16_im0_cma_ena0;
    assign i_mul_atax16_im0_cma_ena2 = i_mul_atax16_im0_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul_atax16_im0_cma_ah[0] <= i_mul_atax16_bjA2_q;
            i_mul_atax16_im0_cma_ch[0] <= i_mul_atax16_bjB4_q;
        end
    end

    assign i_mul_atax16_im0_cma_a0 = $unsigned(i_mul_atax16_im0_cma_ah[0]);
    assign i_mul_atax16_im0_cma_c0 = $unsigned(i_mul_atax16_im0_cma_ch[0]);
    fourteennm_mac #(
        .operation_mode("m18x18_full"),
        .clear_type("none"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(15),
        .ax_clock("0"),
        .ax_width(15),
        .signed_may("true"),
        .signed_max("true"),
        .input_pipeline_clock("2"),
        .second_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(30)
    ) i_mul_atax16_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_atax16_im0_cma_ena2, i_mul_atax16_im0_cma_ena1, i_mul_atax16_im0_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul_atax16_im0_cma_a0),
        .ax(i_mul_atax16_im0_cma_c0),
        .resulta(i_mul_atax16_im0_cma_s0),
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
        .dfxlfsrena(),
        .dfxmisrena(),
        .dftout()
    );
    dspba_delay_ver #( .width(30), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul_atax16_im0_cma_delay ( .xin(i_mul_atax16_im0_cma_s0), .xout(i_mul_atax16_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_atax16_im0_cma_q = $unsigned(i_mul_atax16_im0_cma_qq[29:0]);

    // redist3_i_mul_atax16_im0_cma_q_1(DELAY,337)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_i_mul_atax16_im0_cma_q_1_q <= $unsigned(i_mul_atax16_im0_cma_q);
        end
    end

    // i_mul_atax16_im10_cma(CHAINMULTADD,327)@10 + 5
    // out q@16
    assign i_mul_atax16_im10_cma_reset = ~ (resetn);
    assign i_mul_atax16_im10_cma_ena0 = 1'b1;
    assign i_mul_atax16_im10_cma_ena1 = i_mul_atax16_im10_cma_ena0;
    assign i_mul_atax16_im10_cma_ena2 = i_mul_atax16_im10_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul_atax16_im10_cma_ah[0] <= i_mul_atax16_bs1_merged_bit_select_c;
            i_mul_atax16_im10_cma_ch[0] <= i_mul_atax16_bs3_merged_bit_select_c;
        end
    end

    assign i_mul_atax16_im10_cma_a0 = i_mul_atax16_im10_cma_ah[0];
    assign i_mul_atax16_im10_cma_c0 = i_mul_atax16_im10_cma_ch[0];
    fourteennm_mac #(
        .operation_mode("m18x18_full"),
        .clear_type("none"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(18),
        .ax_clock("0"),
        .ax_width(18),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .second_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(36)
    ) i_mul_atax16_im10_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_atax16_im10_cma_ena2, i_mul_atax16_im10_cma_ena1, i_mul_atax16_im10_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul_atax16_im10_cma_a0),
        .ax(i_mul_atax16_im10_cma_c0),
        .resulta(i_mul_atax16_im10_cma_s0),
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
        .dfxlfsrena(),
        .dfxmisrena(),
        .dftout()
    );
    dspba_delay_ver #( .width(36), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul_atax16_im10_cma_delay ( .xin(i_mul_atax16_im10_cma_s0), .xout(i_mul_atax16_im10_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_atax16_im10_cma_q = $unsigned(i_mul_atax16_im10_cma_qq[35:0]);

    // redist2_i_mul_atax16_im10_cma_q_1(DELAY,336)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_i_mul_atax16_im10_cma_q_1_q <= $unsigned(i_mul_atax16_im10_cma_q);
        end
    end

    // i_mul_atax16_sums_join_0(BITJOIN,276)@17
    assign i_mul_atax16_sums_join_0_q = {redist3_i_mul_atax16_im0_cma_q_1_q, redist2_i_mul_atax16_im10_cma_q_1_q};

    // i_mul_atax16_sums_result_add_0_0(ADD,279)@17
    assign i_mul_atax16_sums_result_add_0_0_a = {1'b0, i_mul_atax16_sums_join_0_q};
    assign i_mul_atax16_sums_result_add_0_0_b = {16'b0000000000000000, i_mul_atax16_sums_align_1_q};
    assign i_mul_atax16_sums_result_add_0_0_o = $unsigned(i_mul_atax16_sums_result_add_0_0_a) + $unsigned(i_mul_atax16_sums_result_add_0_0_b);
    assign i_mul_atax16_sums_result_add_0_0_q = i_mul_atax16_sums_result_add_0_0_o[66:0];

    // bgTrunc_i_mul_atax16_sel_x(BITSELECT,100)@17
    assign bgTrunc_i_mul_atax16_sel_x_in = i_mul_atax16_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul_atax16_sel_x_b = bgTrunc_i_mul_atax16_sel_x_in[31:0];

    // redist35_bgTrunc_i_mul_atax16_sel_x_b_1(DELAY,369)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist35_bgTrunc_i_mul_atax16_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul_atax16_sel_x_b);
        end
    end

    // i_add_atax18(ADD,69)@18
    assign i_add_atax18_a = {1'b0, redist35_bgTrunc_i_mul_atax16_sel_x_b_1_q};
    assign i_add_atax18_b = {1'b0, i_llvm_fpga_pop_i32_t_019_pop18_atax0_i_llvm_fpga_pop_i32_t_019_pop18_atax17_mux_x_q};
    assign i_add_atax18_o = $unsigned(i_add_atax18_a) + $unsigned(i_add_atax18_b);
    assign i_add_atax18_q = i_add_atax18_o[32:0];

    // bgTrunc_i_add_atax18_sel_x(BITSELECT,97)@18
    assign bgTrunc_i_add_atax18_sel_x_b = i_add_atax18_q[31:0];

    // redist28_i_llvm_fpga_pop_i64_idxprom32_pop22_atax0_i_llvm_fpga_pop_i64_idxprom32_pop22_atax11_mux_x_q_14_rdcnt(ADD,395)
    assign redist28_i_llvm_fpga_pop_i64_idxprom32_pop22_atax0_i_llvm_fpga_pop_i64_idxprom32_pop22_atax11_mux_x_q_14_rdcnt_a = {1'b0, redist28_i_llvm_fpga_pop_i64_idxprom32_pop22_atax0_i_llvm_fpga_pop_i64_idxprom32_pop22_atax11_mux_x_q_14_wraddr_q};
    assign redist28_i_llvm_fpga_pop_i64_idxprom32_pop22_atax0_i_llvm_fpga_pop_i64_idxprom32_pop22_atax11_mux_x_q_14_rdcnt_b = {1'b0, redist27_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax0_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax36_mux_x_q_14_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist28_i_llvm_fpga_pop_i64_idxprom32_pop22_atax0_i_llvm_fpga_pop_i64_idxprom32_pop22_atax11_mux_x_q_14_rdcnt_o <= $unsigned(redist28_i_llvm_fpga_pop_i64_idxprom32_pop22_atax0_i_llvm_fpga_pop_i64_idxprom32_pop22_atax11_mux_x_q_14_rdcnt_a) + $unsigned(redist28_i_llvm_fpga_pop_i64_idxprom32_pop22_atax0_i_llvm_fpga_pop_i64_idxprom32_pop22_atax11_mux_x_q_14_rdcnt_b);
        end
    end
    assign redist28_i_llvm_fpga_pop_i64_idxprom32_pop22_atax0_i_llvm_fpga_pop_i64_idxprom32_pop22_atax11_mux_x_q_14_rdcnt_q = redist28_i_llvm_fpga_pop_i64_idxprom32_pop22_atax0_i_llvm_fpga_pop_i64_idxprom32_pop22_atax11_mux_x_q_14_rdcnt_o[4:0];

    // redist28_i_llvm_fpga_pop_i64_idxprom32_pop22_atax0_i_llvm_fpga_pop_i64_idxprom32_pop22_atax11_mux_x_q_14_inputreg0(DELAY,390)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist28_i_llvm_fpga_pop_i64_idxprom32_pop22_atax0_i_llvm_fpga_pop_i64_idxprom32_pop22_atax11_mux_x_q_14_inputreg0_q <= $unsigned(i_llvm_fpga_pop_i64_idxprom32_pop22_atax0_i_llvm_fpga_pop_i64_idxprom32_pop22_atax11_mux_x_q);
        end
    end

    // redist28_i_llvm_fpga_pop_i64_idxprom32_pop22_atax0_i_llvm_fpga_pop_i64_idxprom32_pop22_atax11_mux_x_q_14_wraddr(COUNTER,393)
    // low=0, high=15, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist28_i_llvm_fpga_pop_i64_idxprom32_pop22_atax0_i_llvm_fpga_pop_i64_idxprom32_pop22_atax11_mux_x_q_14_wraddr_i <= $unsigned(redist28_i_llvm_fpga_pop_i64_idxprom32_pop22_atax0_i_llvm_fpga_pop_i64_idxprom32_pop22_atax11_mux_x_q_14_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist28_i_llvm_fpga_pop_i64_idxprom32_pop22_atax0_i_llvm_fpga_pop_i64_idxprom32_pop22_atax11_mux_x_q_14_wraddr_q = redist28_i_llvm_fpga_pop_i64_idxprom32_pop22_atax0_i_llvm_fpga_pop_i64_idxprom32_pop22_atax11_mux_x_q_14_wraddr_i[3:0];

    // redist28_i_llvm_fpga_pop_i64_idxprom32_pop22_atax0_i_llvm_fpga_pop_i64_idxprom32_pop22_atax11_mux_x_q_14_mem(DUALMEM,392)
    assign redist28_i_llvm_fpga_pop_i64_idxprom32_pop22_atax0_i_llvm_fpga_pop_i64_idxprom32_pop22_atax11_mux_x_q_14_mem_ia = $unsigned(redist28_i_llvm_fpga_pop_i64_idxprom32_pop22_atax0_i_llvm_fpga_pop_i64_idxprom32_pop22_atax11_mux_x_q_14_inputreg0_q);
    assign redist28_i_llvm_fpga_pop_i64_idxprom32_pop22_atax0_i_llvm_fpga_pop_i64_idxprom32_pop22_atax11_mux_x_q_14_mem_aa = redist28_i_llvm_fpga_pop_i64_idxprom32_pop22_atax0_i_llvm_fpga_pop_i64_idxprom32_pop22_atax11_mux_x_q_14_wraddr_q;
    assign redist28_i_llvm_fpga_pop_i64_idxprom32_pop22_atax0_i_llvm_fpga_pop_i64_idxprom32_pop22_atax11_mux_x_q_14_mem_ab = redist28_i_llvm_fpga_pop_i64_idxprom32_pop22_atax0_i_llvm_fpga_pop_i64_idxprom32_pop22_atax11_mux_x_q_14_rdcnt_q[3:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(4),
        .numwords_a(16),
        .width_b(64),
        .widthad_b(4),
        .numwords_b(16),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK0"),
        .outdata_sclr_b("NONE"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Stratix 10")
    ) redist28_i_llvm_fpga_pop_i64_idxprom32_pop22_atax0_i_llvm_fpga_pop_i64_idxprom32_pop22_atax11_mux_x_q_14_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist28_i_llvm_fpga_pop_i64_idxprom32_pop22_atax0_i_llvm_fpga_pop_i64_idxprom32_pop22_atax11_mux_x_q_14_mem_aa),
        .data_a(redist28_i_llvm_fpga_pop_i64_idxprom32_pop22_atax0_i_llvm_fpga_pop_i64_idxprom32_pop22_atax11_mux_x_q_14_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist28_i_llvm_fpga_pop_i64_idxprom32_pop22_atax0_i_llvm_fpga_pop_i64_idxprom32_pop22_atax11_mux_x_q_14_mem_ab),
        .q_b(redist28_i_llvm_fpga_pop_i64_idxprom32_pop22_atax0_i_llvm_fpga_pop_i64_idxprom32_pop22_atax11_mux_x_q_14_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .aclr1(),
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
    assign redist28_i_llvm_fpga_pop_i64_idxprom32_pop22_atax0_i_llvm_fpga_pop_i64_idxprom32_pop22_atax11_mux_x_q_14_mem_q = redist28_i_llvm_fpga_pop_i64_idxprom32_pop22_atax0_i_llvm_fpga_pop_i64_idxprom32_pop22_atax11_mux_x_q_14_mem_iq[63:0];

    // redist28_i_llvm_fpga_pop_i64_idxprom32_pop22_atax0_i_llvm_fpga_pop_i64_idxprom32_pop22_atax11_mux_x_q_14_outputreg0(DELAY,391)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist28_i_llvm_fpga_pop_i64_idxprom32_pop22_atax0_i_llvm_fpga_pop_i64_idxprom32_pop22_atax11_mux_x_q_14_outputreg0_q <= $unsigned(redist28_i_llvm_fpga_pop_i64_idxprom32_pop22_atax0_i_llvm_fpga_pop_i64_idxprom32_pop22_atax11_mux_x_q_14_mem_q);
        end
    end

    // redist41_i_atax_b5_current_iter_isspec_atax5_q_12(DELAY,375)
    dspba_delay_ver #( .width(1), .depth(12), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist41_i_atax_b5_current_iter_isspec_atax5_q_12 ( .xin(i_atax_b5_current_iter_isspec_atax5_q), .xout(redist41_i_atax_b5_current_iter_isspec_atax5_q_12_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,209)@18
    assign out_atax_B5_current_iter_isspec = redist41_i_atax_b5_current_iter_isspec_atax5_q_12_q;
    assign out_c0_exi12_0_tpl = GND_q;
    assign out_c0_exi12_1_tpl = redist28_i_llvm_fpga_pop_i64_idxprom32_pop22_atax0_i_llvm_fpga_pop_i64_idxprom32_pop22_atax11_mux_x_q_14_outputreg0_q;
    assign out_c0_exi12_2_tpl = bgTrunc_i_add_atax18_sel_x_b;
    assign out_c0_exi12_3_tpl = redist4_i_exitcond_atax21_cmp_nsign_q_14_q;
    assign out_c0_exi12_4_tpl = i_notcmp10_atax26_q;
    assign out_c0_exi12_5_tpl = redist30_i_llvm_fpga_pop_i1_memdep_phi_pop925_pop19_atax0_i_llvm_fpga_pop_i1_memdep_phi_pop925_pop19_atax30_mux_x_q_14_q;
    assign out_c0_exi12_6_tpl = redist31_i_llvm_fpga_pop_i1_memdep_phi3_pop1028_pop20_atax0_i_llvm_fpga_pop_i1_memdep_phi3_pop1028_pop20_atax32_mux_x_q_14_q;
    assign out_c0_exi12_7_tpl = i_llvm_fpga_pop_i1_forked2331_pop21_atax0_i_llvm_fpga_pop_i1_forked2331_pop21_atax34_mux_x_q;
    assign out_c0_exi12_8_tpl = redist27_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax0_i_llvm_fpga_pop_p67i32_arrayidx134_pop23_atax36_mux_x_q_14_outputreg0_q;
    assign out_c0_exi12_9_tpl = redist32_i_llvm_fpga_pop_i1_exitcond936_pop24_atax0_i_llvm_fpga_pop_i1_exitcond936_pop24_atax38_mux_x_q_14_q;
    assign out_c0_exi12_10_tpl = redist29_i_llvm_fpga_pop_i1_notcmp1538_pop25_atax0_i_llvm_fpga_pop_i1_notcmp1538_pop25_atax40_mux_x_q_14_q;
    assign out_c0_exi12_11_tpl = redist14_sync_together108_aunroll_x_in_c0_eni11_10_tpl_18_q;
    assign out_c0_exi12_12_tpl = redist15_sync_together108_aunroll_x_in_c0_eni11_11_tpl_18_q;
    assign out_o_valid = redist5_valid_fanout_reg0_q_1_q;

endmodule
