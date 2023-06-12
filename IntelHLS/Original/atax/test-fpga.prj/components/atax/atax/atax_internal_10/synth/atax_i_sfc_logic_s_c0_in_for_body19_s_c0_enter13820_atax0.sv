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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body19_ataxs_c0_enter13820_atax0
// Created for function/kernel atax
// SystemVerilog created on Wed Apr 26 13:39:41 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_i_sfc_logic_s_c0_in_for_body19_s_c0_enter13820_atax0 (
    input wire [31:0] in_unnamed_atax7_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax7_atax_avm_writeack,
    input wire [0:0] in_unnamed_atax7_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax7_atax_avm_readdatavalid,
    output wire [31:0] out_unnamed_atax7_atax_avm_address,
    output wire [0:0] out_unnamed_atax7_atax_avm_enable,
    output wire [0:0] out_unnamed_atax7_atax_avm_read,
    output wire [0:0] out_unnamed_atax7_atax_avm_write,
    output wire [31:0] out_unnamed_atax7_atax_avm_writedata,
    output wire [3:0] out_unnamed_atax7_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax7_atax_avm_burstcount,
    input wire [0:0] in_flush,
    output wire [0:0] out_exiting_valid_out,
    input wire [31:0] in_unnamed_atax8_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax8_atax_avm_writeack,
    input wire [0:0] in_unnamed_atax8_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax8_atax_avm_readdatavalid,
    output wire [31:0] out_unnamed_atax8_atax_avm_address,
    output wire [0:0] out_unnamed_atax8_atax_avm_enable,
    output wire [0:0] out_unnamed_atax8_atax_avm_read,
    output wire [0:0] out_unnamed_atax8_atax_avm_write,
    output wire [31:0] out_unnamed_atax8_atax_avm_writedata,
    output wire [3:0] out_unnamed_atax8_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax8_atax_avm_burstcount,
    output wire [0:0] out_pipeline_dummy_out,
    input wire [31:0] in_memdep_1_atax_avm_readdata,
    input wire [0:0] in_memdep_1_atax_avm_writeack,
    input wire [0:0] in_memdep_1_atax_avm_waitrequest,
    input wire [0:0] in_memdep_1_atax_avm_readdatavalid,
    output wire [31:0] out_memdep_1_atax_avm_address,
    output wire [0:0] out_memdep_1_atax_avm_enable,
    output wire [0:0] out_memdep_1_atax_avm_read,
    output wire [0:0] out_memdep_1_atax_avm_write,
    output wire [31:0] out_memdep_1_atax_avm_writedata,
    output wire [3:0] out_memdep_1_atax_avm_byteenable,
    output wire [0:0] out_memdep_1_atax_avm_burstcount,
    output wire [0:0] out_pipeline_forked_out,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_atax_B7_current_iter_isspec,
    output wire [0:0] out_c0_exi9158_0_tpl,
    output wire [31:0] out_c0_exi9158_1_tpl,
    output wire [0:0] out_c0_exi9158_2_tpl,
    output wire [0:0] out_c0_exi9158_3_tpl,
    output wire [0:0] out_c0_exi9158_4_tpl,
    output wire [63:0] out_c0_exi9158_5_tpl,
    output wire [0:0] out_c0_exi9158_6_tpl,
    output wire [0:0] out_c0_exi9158_7_tpl,
    output wire [0:0] out_c0_exi9158_8_tpl,
    output wire [0:0] out_c0_exi9158_9_tpl,
    output wire [0:0] out_o_valid,
    input wire [0:0] in_buffer_in,
    input wire [0:0] in_c0_eni11137_0_tpl,
    input wire [0:0] in_c0_eni11137_1_tpl,
    input wire [0:0] in_c0_eni11137_2_tpl,
    input wire [0:0] in_c0_eni11137_3_tpl,
    input wire [63:0] in_c0_eni11137_4_tpl,
    input wire [31:0] in_c0_eni11137_5_tpl,
    input wire [0:0] in_c0_eni11137_6_tpl,
    input wire [63:0] in_c0_eni11137_7_tpl,
    input wire [0:0] in_c0_eni11137_8_tpl,
    input wire [0:0] in_c0_eni11137_9_tpl,
    input wire [0:0] in_c0_eni11137_10_tpl,
    input wire [0:0] in_c0_eni11137_11_tpl,
    input wire [0:0] in_dummy_in,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_atax_A_local_pmem_q;
    wire [63:0] c_atax_y_local_pmem_q;
    wire [31:0] c_i32_0101_q;
    wire [31:0] c_i32_1102_q;
    wire [5:0] c_i6_1105_q;
    wire [5:0] c_i6_18103_q;
    wire [32:0] i_add27_atax21_a;
    wire [32:0] i_add27_atax21_b;
    logic [32:0] i_add27_atax21_o;
    wire [32:0] i_add27_atax21_q;
    wire [1:0] i_arrayidx214_atax11_vt_const_1_q;
    wire [63:0] i_arrayidx214_atax11_vt_join_q;
    wire [61:0] i_arrayidx214_atax11_vt_select_63_b;
    wire [63:0] i_arrayidx255_atax17_vt_join_q;
    wire [61:0] i_arrayidx255_atax17_vt_select_63_b;
    wire [0:0] i_atax_b7_current_iter_isspec_atax5_q;
    wire [0:0] i_atax_b7_next_iter_isreal_atax7_q;
    wire [6:0] i_fpga_indvars_iv_next5_atax34_a;
    wire [6:0] i_fpga_indvars_iv_next5_atax34_b;
    logic [6:0] i_fpga_indvars_iv_next5_atax34_o;
    wire [6:0] i_fpga_indvars_iv_next5_atax34_q;
    wire [63:0] i_idxprom20_atax10_vt_join_q;
    wire [31:0] i_idxprom20_atax10_vt_select_31_b;
    wire [32:0] i_inc31_atax23_a;
    wire [32:0] i_inc31_atax23_b;
    logic [32:0] i_inc31_atax23_o;
    wire [32:0] i_inc31_atax23_q;
    wire [0:0] i_llvm_fpga_dummy_thread_atax_b7_dummy_atax2_out_dummy_out;
    wire [0:0] i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out;
    wire [31:0] i_llvm_fpga_mem_memdep_1_atax22_out_memdep_1_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_1_atax22_out_memdep_1_atax_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_1_atax22_out_memdep_1_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_1_atax22_out_memdep_1_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_1_atax22_out_memdep_1_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_1_atax22_out_memdep_1_atax_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_1_atax22_out_memdep_1_atax_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_1_atax22_out_o_writeack;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax7_atax15_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax7_atax15_out_unnamed_atax7_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax7_atax15_out_unnamed_atax7_atax_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_atax7_atax15_out_unnamed_atax7_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax7_atax15_out_unnamed_atax7_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax7_atax15_out_unnamed_atax7_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax7_atax15_out_unnamed_atax7_atax_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax7_atax15_out_unnamed_atax7_atax_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax8_atax18_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax8_atax18_out_unnamed_atax8_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax8_atax18_out_unnamed_atax8_atax_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_atax8_atax18_out_unnamed_atax8_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax8_atax18_out_unnamed_atax8_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax8_atax18_out_unnamed_atax8_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax8_atax18_out_unnamed_atax8_atax_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax8_atax18_out_unnamed_atax8_atax_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_atax6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_atax6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_atax6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_atax6_out_pipeline_dummy_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_atax6_out_pipeline_forked_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_atax6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_atax33_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_atax33_out_feedback_valid_out_2;
    wire [0:0] i_memdep_phi3_or_atax14_qi;
    reg [0:0] i_memdep_phi3_or_atax14_q;
    wire [0:0] i_notcmp_atax32_q;
    wire [31:0] bgTrunc_i_add27_atax21_sel_x_b;
    wire [5:0] bgTrunc_i_fpga_indvars_iv_next5_atax34_sel_x_b;
    wire [31:0] bgTrunc_i_inc31_atax23_sel_x_b;
    wire [63:0] bgTrunc_i_mul26_atax20_sel_x_in;
    wire [31:0] bgTrunc_i_mul26_atax20_sel_x_b;
    wire [7:0] i_arrayidx214_atax0_add_x_a;
    wire [7:0] i_arrayidx214_atax0_add_x_b;
    logic [7:0] i_arrayidx214_atax0_add_x_o;
    wire [7:0] i_arrayidx214_atax0_add_x_q;
    wire [63:0] i_arrayidx214_atax0_append_upper_bits_x_q;
    wire [4:0] i_arrayidx214_atax0_narrow_x_b;
    wire [6:0] i_arrayidx214_atax0_shift_join_x_q;
    wire [6:0] i_arrayidx214_atax0_dupName_0_trunc_sel_x_b;
    wire [6:0] i_arrayidx214_atax0_dupName_2_trunc_sel_x_b;
    wire [11:0] i_arrayidx255_atax0_add_x_a;
    wire [11:0] i_arrayidx255_atax0_add_x_b;
    logic [11:0] i_arrayidx255_atax0_add_x_o;
    wire [11:0] i_arrayidx255_atax0_add_x_q;
    wire [63:0] i_arrayidx255_atax0_append_upper_bits_x_q;
    wire [8:0] i_arrayidx255_atax0_narrow_x_b;
    wire [10:0] i_arrayidx255_atax0_shift_join_x_q;
    wire [11:0] i_arrayidx255_atax0_dupName_0_add_x_a;
    wire [11:0] i_arrayidx255_atax0_dupName_0_add_x_b;
    logic [11:0] i_arrayidx255_atax0_dupName_0_add_x_o;
    wire [11:0] i_arrayidx255_atax0_dupName_0_add_x_q;
    wire [21:0] i_arrayidx255_atax0_mult_extender_x_q;
    wire [3:0] i_arrayidx255_atax0_mult_multconst_x_q;
    wire [10:0] i_arrayidx255_atax0_dupName_0_trunc_sel_x_b;
    wire [10:0] i_arrayidx255_atax0_dupName_1_trunc_sel_x_b;
    wire [10:0] i_arrayidx255_atax0_dupName_2_trunc_sel_x_b;
    wire [10:0] i_arrayidx255_atax0_dupName_3_trunc_sel_x_b;
    wire [10:0] i_arrayidx255_atax0_dupName_5_trunc_sel_x_b;
    wire [63:0] i_idxprom20_atax10_sel_x_b;
    wire [0:0] i_llvm_fpga_pop_coalesce_i1_atax_b7_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b7_current_iter_isreal_atax4_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_coalesce_i1_atax_b7_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b7_current_iter_isreal_atax4_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond937_pop32_atax0_i_llvm_fpga_pop_i1_exitcond937_pop32_atax40_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_exitcond937_pop32_atax0_i_llvm_fpga_pop_i1_exitcond937_pop32_atax40_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop1341_pop34_atax0_i_llvm_fpga_pop_i1_memdep_phi2_pop1341_pop34_atax13_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop1341_pop34_atax0_i_llvm_fpga_pop_i1_memdep_phi2_pop1341_pop34_atax13_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop1029_pop29_atax0_i_llvm_fpga_pop_i1_memdep_phi3_pop1029_pop29_atax12_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop1029_pop29_atax0_i_llvm_fpga_pop_i1_memdep_phi3_pop1029_pop29_atax12_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1539_pop33_atax0_i_llvm_fpga_pop_i1_notcmp1539_pop33_atax42_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_notcmp1539_pop33_atax0_i_llvm_fpga_pop_i1_notcmp1539_pop33_atax42_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_j15_021_pop27_atax0_i_llvm_fpga_pop_i32_j15_021_pop27_atax9_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_j15_021_pop27_atax0_i_llvm_fpga_pop_i32_j15_021_pop27_atax9_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i64_idxprom33_pop30_atax0_i_llvm_fpga_pop_i64_idxprom33_pop30_atax16_mux_x_s;
    reg [63:0] i_llvm_fpga_pop_i64_idxprom33_pop30_atax0_i_llvm_fpga_pop_i64_idxprom33_pop30_atax16_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv4_pop26_atax0_i_llvm_fpga_pop_i6_fpga_indvars_iv4_pop26_atax24_mux_x_s;
    reg [5:0] i_llvm_fpga_pop_i6_fpga_indvars_iv4_pop26_atax0_i_llvm_fpga_pop_i6_fpga_indvars_iv4_pop26_atax24_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax0_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax38_mux_x_s;
    reg [63:0] i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax0_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax38_mux_x_q;
    wire [6:0] i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_c_i7_03_x_q;
    wire [7:0] i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax1_x_i_valid;
    wire i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax1_x_i_stall;
    wire i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_inv_pred_x_q;
    wire [0:0] i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_exitcond937_push32_atax0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_exitcond937_push32_atax0_i_llvm_fpga_push_i1_exitcond937_push32_atax1_x_i_valid;
    wire i_llvm_fpga_push_i1_exitcond937_push32_atax0_i_llvm_fpga_push_i1_exitcond937_push32_atax1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_exitcond937_push32_atax0_i_llvm_fpga_push_i1_exitcond937_push32_atax1_x_i_stall;
    wire i_llvm_fpga_push_i1_exitcond937_push32_atax0_i_llvm_fpga_push_i1_exitcond937_push32_atax1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_exitcond937_push32_atax0_i_llvm_fpga_push_i1_exitcond937_push32_atax1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_exitcond937_push32_atax0_i_llvm_fpga_push_i1_exitcond937_push32_atax1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_exitcond937_push32_atax0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi2_pop1341_push34_atax0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1341_push34_atax0_i_llvm_fpga_push_i1_memdep_phi2_pop1341_push34_atax1_x_i_valid;
    wire i_llvm_fpga_push_i1_memdep_phi2_pop1341_push34_atax0_i_llvm_fpga_push_i1_memdep_phi2_pop1341_push34_atax1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1341_push34_atax0_i_llvm_fpga_push_i1_memdep_phi2_pop1341_push34_atax1_x_i_stall;
    wire i_llvm_fpga_push_i1_memdep_phi2_pop1341_push34_atax0_i_llvm_fpga_push_i1_memdep_phi2_pop1341_push34_atax1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi2_pop1341_push34_atax0_i_llvm_fpga_push_i1_memdep_phi2_pop1341_push34_atax1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi2_pop1341_push34_atax0_i_llvm_fpga_push_i1_memdep_phi2_pop1341_push34_atax1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1341_push34_atax0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi3_pop1029_push29_atax0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_pop1029_push29_atax0_i_llvm_fpga_push_i1_memdep_phi3_pop1029_push29_atax1_x_i_valid;
    wire i_llvm_fpga_push_i1_memdep_phi3_pop1029_push29_atax0_i_llvm_fpga_push_i1_memdep_phi3_pop1029_push29_atax1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_pop1029_push29_atax0_i_llvm_fpga_push_i1_memdep_phi3_pop1029_push29_atax1_x_i_stall;
    wire i_llvm_fpga_push_i1_memdep_phi3_pop1029_push29_atax0_i_llvm_fpga_push_i1_memdep_phi3_pop1029_push29_atax1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi3_pop1029_push29_atax0_i_llvm_fpga_push_i1_memdep_phi3_pop1029_push29_atax1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi3_pop1029_push29_atax0_i_llvm_fpga_push_i1_memdep_phi3_pop1029_push29_atax1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_pop1029_push29_atax0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_notcmp1539_push33_atax0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1539_push33_atax0_i_llvm_fpga_push_i1_notcmp1539_push33_atax1_x_i_valid;
    wire i_llvm_fpga_push_i1_notcmp1539_push33_atax0_i_llvm_fpga_push_i1_notcmp1539_push33_atax1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1539_push33_atax0_i_llvm_fpga_push_i1_notcmp1539_push33_atax1_x_i_stall;
    wire i_llvm_fpga_push_i1_notcmp1539_push33_atax0_i_llvm_fpga_push_i1_notcmp1539_push33_atax1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_notcmp1539_push33_atax0_i_llvm_fpga_push_i1_notcmp1539_push33_atax1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_notcmp1539_push33_atax0_i_llvm_fpga_push_i1_notcmp1539_push33_atax1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1539_push33_atax0_adapt_scalar_trunc4_sel_x_b;
    wire [0:0] i_llvm_fpga_push_i32_add42_push35_atax0_i_llvm_fpga_push_i32_add42_push35_atax1_x_i_valid;
    wire i_llvm_fpga_push_i32_add42_push35_atax0_i_llvm_fpga_push_i32_add42_push35_atax1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_add42_push35_atax0_i_llvm_fpga_push_i32_add42_push35_atax1_x_i_stall;
    wire i_llvm_fpga_push_i32_add42_push35_atax0_i_llvm_fpga_push_i32_add42_push35_atax1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_add42_push35_atax0_i_llvm_fpga_push_i32_add42_push35_atax1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_add42_push35_atax0_i_llvm_fpga_push_i32_add42_push35_atax1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i32_j15_021_push27_atax0_i_llvm_fpga_push_i32_j15_021_push27_atax1_x_i_valid;
    wire i_llvm_fpga_push_i32_j15_021_push27_atax0_i_llvm_fpga_push_i32_j15_021_push27_atax1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_j15_021_push27_atax0_i_llvm_fpga_push_i32_j15_021_push27_atax1_x_i_stall;
    wire i_llvm_fpga_push_i32_j15_021_push27_atax0_i_llvm_fpga_push_i32_j15_021_push27_atax1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_j15_021_push27_atax0_i_llvm_fpga_push_i32_j15_021_push27_atax1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_j15_021_push27_atax0_i_llvm_fpga_push_i32_j15_021_push27_atax1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i64_idxprom33_push30_atax0_i_llvm_fpga_push_i64_idxprom33_push30_atax1_x_i_valid;
    wire i_llvm_fpga_push_i64_idxprom33_push30_atax0_i_llvm_fpga_push_i64_idxprom33_push30_atax1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i64_idxprom33_push30_atax0_i_llvm_fpga_push_i64_idxprom33_push30_atax1_x_i_stall;
    wire i_llvm_fpga_push_i64_idxprom33_push30_atax0_i_llvm_fpga_push_i64_idxprom33_push30_atax1_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_i64_idxprom33_push30_atax0_i_llvm_fpga_push_i64_idxprom33_push30_atax1_x_i_data;
    wire [63:0] i_llvm_fpga_push_i64_idxprom33_push30_atax0_i_llvm_fpga_push_i64_idxprom33_push30_atax1_x_o_data;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv4_push26_atax0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv4_push26_atax0_i_llvm_fpga_push_i6_fpga_indvars_iv4_push26_atax1_x_i_valid;
    wire i_llvm_fpga_push_i6_fpga_indvars_iv4_push26_atax0_i_llvm_fpga_push_i6_fpga_indvars_iv4_push26_atax1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv4_push26_atax0_i_llvm_fpga_push_i6_fpga_indvars_iv4_push26_atax1_x_i_stall;
    wire i_llvm_fpga_push_i6_fpga_indvars_iv4_push26_atax0_i_llvm_fpga_push_i6_fpga_indvars_iv4_push26_atax1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv4_push26_atax0_i_llvm_fpga_push_i6_fpga_indvars_iv4_push26_atax1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv4_push26_atax0_i_llvm_fpga_push_i6_fpga_indvars_iv4_push26_atax1_x_o_data;
    wire [5:0] i_llvm_fpga_push_i6_fpga_indvars_iv4_push26_atax0_adapt_scalar_trunc4_sel_x_b;
    wire [0:0] i_llvm_fpga_push_p67i32_arrayidx135_push31_atax0_i_llvm_fpga_push_p67i32_arrayidx135_push31_atax1_x_i_valid;
    wire i_llvm_fpga_push_p67i32_arrayidx135_push31_atax0_i_llvm_fpga_push_p67i32_arrayidx135_push31_atax1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_p67i32_arrayidx135_push31_atax0_i_llvm_fpga_push_p67i32_arrayidx135_push31_atax1_x_i_stall;
    wire i_llvm_fpga_push_p67i32_arrayidx135_push31_atax0_i_llvm_fpga_push_p67i32_arrayidx135_push31_atax1_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_p67i32_arrayidx135_push31_atax0_i_llvm_fpga_push_p67i32_arrayidx135_push31_atax1_x_i_data;
    wire [63:0] i_llvm_fpga_push_p67i32_arrayidx135_push31_atax0_i_llvm_fpga_push_p67i32_arrayidx135_push31_atax1_x_o_data;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg8_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg10_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg12_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg14_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg15_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg16_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg17_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg18_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg19_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg20_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg21_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg22_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg23_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg24_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg25_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg26_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg31_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg32_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg34_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg35_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg37_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg38_q;
    wire [0:0] i_exitcond6_atax25_cmp_nsign_q;
    wire [14:0] i_mul26_atax20_bjA2_q;
    wire [14:0] i_mul26_atax20_bjB4_q;
    wire [65:0] i_mul26_atax20_sums_join_0_q;
    wire [50:0] i_mul26_atax20_sums_align_1_q;
    wire [50:0] i_mul26_atax20_sums_align_1_qint;
    wire [66:0] i_mul26_atax20_sums_result_add_0_0_a;
    wire [66:0] i_mul26_atax20_sums_result_add_0_0_b;
    logic [66:0] i_mul26_atax20_sums_result_add_0_0_o;
    wire [66:0] i_mul26_atax20_sums_result_add_0_0_q;
    wire [11:0] addsumAHighB_uid285_i_arrayidx255_atax0_mult_x_a;
    wire [11:0] addsumAHighB_uid285_i_arrayidx255_atax0_mult_x_b;
    logic [11:0] addsumAHighB_uid285_i_arrayidx255_atax0_mult_x_o;
    wire [11:0] addsumAHighB_uid285_i_arrayidx255_atax0_mult_x_q;
    wire [13:0] add_uid286_i_arrayidx255_atax0_mult_x_q;
    wire [17:0] sR_mergedSignalTM_uid291_i_arrayidx255_atax0_mult_x_q;
    wire i_mul26_atax20_im0_cma_reset;
    (* preserve_syn_only *) reg signed [14:0] i_mul26_atax20_im0_cma_ah [0:0];
    (* preserve_syn_only *) reg signed [14:0] i_mul26_atax20_im0_cma_ch [0:0];
    wire [14:0] i_mul26_atax20_im0_cma_a0;
    wire [14:0] i_mul26_atax20_im0_cma_c0;
    wire [29:0] i_mul26_atax20_im0_cma_s0;
    wire [29:0] i_mul26_atax20_im0_cma_qq;
    reg [29:0] i_mul26_atax20_im0_cma_q;
    wire i_mul26_atax20_im0_cma_ena0;
    wire i_mul26_atax20_im0_cma_ena1;
    wire i_mul26_atax20_im0_cma_ena2;
    wire i_mul26_atax20_im10_cma_reset;
    (* preserve_syn_only *) reg [17:0] i_mul26_atax20_im10_cma_ah [0:0];
    (* preserve_syn_only *) reg [17:0] i_mul26_atax20_im10_cma_ch [0:0];
    wire [17:0] i_mul26_atax20_im10_cma_a0;
    wire [17:0] i_mul26_atax20_im10_cma_c0;
    wire [35:0] i_mul26_atax20_im10_cma_s0;
    wire [35:0] i_mul26_atax20_im10_cma_qq;
    reg [35:0] i_mul26_atax20_im10_cma_q;
    wire i_mul26_atax20_im10_cma_ena0;
    wire i_mul26_atax20_im10_cma_ena1;
    wire i_mul26_atax20_im10_cma_ena2;
    wire i_mul26_atax20_ma5_cma_reset;
    (* preserve_syn_only *) reg [13:0] i_mul26_atax20_ma5_cma_ah [0:1];
    (* preserve_syn_only *) reg [17:0] i_mul26_atax20_ma5_cma_ch [0:1];
    wire [13:0] i_mul26_atax20_ma5_cma_a0;
    wire [17:0] i_mul26_atax20_ma5_cma_c0;
    wire [13:0] i_mul26_atax20_ma5_cma_a1;
    wire [17:0] i_mul26_atax20_ma5_cma_c1;
    wire [32:0] i_mul26_atax20_ma5_cma_s0;
    wire [32:0] i_mul26_atax20_ma5_cma_qq;
    reg [32:0] i_mul26_atax20_ma5_cma_q;
    wire i_mul26_atax20_ma5_cma_ena0;
    wire i_mul26_atax20_ma5_cma_ena1;
    wire i_mul26_atax20_ma5_cma_ena2;
    wire [52:0] i_arrayidx255_atax0_upper_bits_x_merged_bit_select_b;
    wire [10:0] i_arrayidx255_atax0_upper_bits_x_merged_bit_select_c;
    wire [56:0] i_arrayidx214_atax0_upper_bits_x_merged_bit_select_b;
    wire [6:0] i_arrayidx214_atax0_upper_bits_x_merged_bit_select_c;
    wire [13:0] i_mul26_atax20_bs1_merged_bit_select_b;
    wire [17:0] i_mul26_atax20_bs1_merged_bit_select_c;
    wire [1:0] lowRangeB_uid283_i_arrayidx255_atax0_mult_x_merged_bit_select_b;
    wire [8:0] lowRangeB_uid283_i_arrayidx255_atax0_mult_x_merged_bit_select_c;
    wire [13:0] i_mul26_atax20_bs3_merged_bit_select_b;
    wire [17:0] i_mul26_atax20_bs3_merged_bit_select_c;
    reg [52:0] redist0_i_arrayidx255_atax0_upper_bits_x_merged_bit_select_b_1_q;
    reg [32:0] redist1_i_mul26_atax20_ma5_cma_q_1_q;
    reg [35:0] redist2_i_mul26_atax20_im10_cma_q_1_q;
    reg [29:0] redist3_i_mul26_atax20_im0_cma_q_1_q;
    reg [0:0] redist4_i_exitcond6_atax25_cmp_nsign_q_15_q;
    reg [0:0] redist5_valid_fanout_reg0_q_1_q;
    reg [0:0] redist6_sync_together111_aunroll_x_in_c0_eni11137_2_tpl_4_q;
    reg [0:0] redist6_sync_together111_aunroll_x_in_c0_eni11137_2_tpl_4_delay_0;
    reg [0:0] redist6_sync_together111_aunroll_x_in_c0_eni11137_2_tpl_4_delay_1;
    reg [0:0] redist6_sync_together111_aunroll_x_in_c0_eni11137_2_tpl_4_delay_2;
    reg [0:0] redist7_sync_together111_aunroll_x_in_c0_eni11137_3_tpl_4_q;
    reg [0:0] redist7_sync_together111_aunroll_x_in_c0_eni11137_3_tpl_4_delay_0;
    reg [0:0] redist7_sync_together111_aunroll_x_in_c0_eni11137_3_tpl_4_delay_1;
    reg [0:0] redist7_sync_together111_aunroll_x_in_c0_eni11137_3_tpl_4_delay_2;
    reg [63:0] redist8_sync_together111_aunroll_x_in_c0_eni11137_4_tpl_4_q;
    reg [63:0] redist8_sync_together111_aunroll_x_in_c0_eni11137_4_tpl_4_delay_0;
    reg [63:0] redist8_sync_together111_aunroll_x_in_c0_eni11137_4_tpl_4_delay_1;
    reg [31:0] redist9_sync_together111_aunroll_x_in_c0_eni11137_5_tpl_4_q;
    reg [31:0] redist9_sync_together111_aunroll_x_in_c0_eni11137_5_tpl_4_delay_0;
    reg [31:0] redist9_sync_together111_aunroll_x_in_c0_eni11137_5_tpl_4_delay_1;
    reg [63:0] redist10_sync_together111_aunroll_x_in_c0_eni11137_7_tpl_4_q;
    reg [63:0] redist10_sync_together111_aunroll_x_in_c0_eni11137_7_tpl_4_delay_0;
    reg [63:0] redist10_sync_together111_aunroll_x_in_c0_eni11137_7_tpl_4_delay_1;
    reg [0:0] redist11_sync_together111_aunroll_x_in_c0_eni11137_8_tpl_4_q;
    reg [0:0] redist11_sync_together111_aunroll_x_in_c0_eni11137_8_tpl_4_delay_0;
    reg [0:0] redist11_sync_together111_aunroll_x_in_c0_eni11137_8_tpl_4_delay_1;
    reg [0:0] redist11_sync_together111_aunroll_x_in_c0_eni11137_8_tpl_4_delay_2;
    reg [0:0] redist12_sync_together111_aunroll_x_in_c0_eni11137_9_tpl_4_q;
    reg [0:0] redist12_sync_together111_aunroll_x_in_c0_eni11137_9_tpl_4_delay_0;
    reg [0:0] redist12_sync_together111_aunroll_x_in_c0_eni11137_9_tpl_4_delay_1;
    reg [0:0] redist12_sync_together111_aunroll_x_in_c0_eni11137_9_tpl_4_delay_2;
    reg [0:0] redist13_sync_together111_aunroll_x_in_c0_eni11137_10_tpl_19_q;
    reg [0:0] redist14_sync_together111_aunroll_x_in_c0_eni11137_11_tpl_19_q;
    reg [0:0] redist15_sync_together111_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist15_sync_together111_aunroll_x_in_i_valid_2_delay_0;
    reg [0:0] redist16_sync_together111_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist17_sync_together111_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist18_sync_together111_aunroll_x_in_i_valid_5_q;
    reg [0:0] redist19_sync_together111_aunroll_x_in_i_valid_13_q;
    reg [0:0] redist20_sync_together111_aunroll_x_in_i_valid_17_q;
    reg [0:0] redist20_sync_together111_aunroll_x_in_i_valid_17_delay_0;
    reg [0:0] redist20_sync_together111_aunroll_x_in_i_valid_17_delay_1;
    reg [0:0] redist20_sync_together111_aunroll_x_in_i_valid_17_delay_2;
    reg [0:0] redist21_i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_inv_pred_x_q_2_q;
    reg [0:0] redist21_i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_inv_pred_x_q_2_delay_0;
    reg [0:0] redist22_i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_inv_pred_x_q_3_q;
    reg [0:0] redist23_i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_inv_pred_x_q_4_q;
    reg [0:0] redist27_i_llvm_fpga_pop_i1_notcmp1539_pop33_atax0_i_llvm_fpga_pop_i1_notcmp1539_pop33_atax42_mux_x_q_15_q;
    reg [0:0] redist28_i_llvm_fpga_pop_i1_exitcond937_pop32_atax0_i_llvm_fpga_pop_i1_exitcond937_pop32_atax40_mux_x_q_15_q;
    reg [10:0] redist29_i_arrayidx255_atax0_dupName_2_trunc_sel_x_b_1_q;
    reg [10:0] redist30_i_arrayidx255_atax0_dupName_1_trunc_sel_x_b_1_q;
    reg [4:0] redist31_i_arrayidx214_atax0_narrow_x_b_8_q;
    reg [31:0] redist32_bgTrunc_i_mul26_atax20_sel_x_b_1_q;
    reg [0:0] redist33_i_memdep_phi3_or_atax14_q_10_q;
    reg [0:0] redist34_i_llvm_fpga_pipeline_keep_going_atax6_out_data_out_2_q;
    reg [0:0] redist34_i_llvm_fpga_pipeline_keep_going_atax6_out_data_out_2_delay_0;
    reg [0:0] redist35_i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out_4_q;
    reg [0:0] redist35_i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out_4_delay_0;
    reg [0:0] redist35_i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out_4_delay_1;
    reg [0:0] redist35_i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out_4_delay_2;
    reg [0:0] redist36_i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out_6_q;
    reg [0:0] redist36_i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out_6_delay_0;
    reg [0:0] redist37_i_llvm_fpga_dummy_thread_atax_b7_dummy_atax2_out_dummy_out_4_q;
    reg [0:0] redist37_i_llvm_fpga_dummy_thread_atax_b7_dummy_atax2_out_dummy_out_4_delay_0;
    reg [0:0] redist37_i_llvm_fpga_dummy_thread_atax_b7_dummy_atax2_out_dummy_out_4_delay_1;
    reg [0:0] redist37_i_llvm_fpga_dummy_thread_atax_b7_dummy_atax2_out_dummy_out_4_delay_2;
    reg [0:0] redist38_i_atax_b7_current_iter_isspec_atax5_q_8_q;
    reg [0:0] redist39_i_atax_b7_current_iter_isspec_atax5_q_12_q;
    reg [0:0] redist39_i_atax_b7_current_iter_isspec_atax5_q_12_delay_0;
    reg [0:0] redist39_i_atax_b7_current_iter_isspec_atax5_q_12_delay_1;
    reg [0:0] redist39_i_atax_b7_current_iter_isspec_atax5_q_12_delay_2;
    reg [0:0] redist40_i_atax_b7_current_iter_isspec_atax5_q_13_q;
    reg [63:0] redist41_i_arrayidx214_atax11_vt_join_q_4_q;
    reg [63:0] redist41_i_arrayidx214_atax11_vt_join_q_4_delay_0;
    reg [63:0] redist41_i_arrayidx214_atax11_vt_join_q_4_delay_1;
    reg [63:0] redist8_sync_together111_aunroll_x_in_c0_eni11137_4_tpl_4_inputreg0_q;
    reg [31:0] redist9_sync_together111_aunroll_x_in_c0_eni11137_5_tpl_4_inputreg0_q;
    reg [63:0] redist10_sync_together111_aunroll_x_in_c0_eni11137_7_tpl_4_inputreg0_q;
    reg [63:0] redist24_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax0_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax38_mux_x_q_15_inputreg0_q;
    reg [63:0] redist24_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax0_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax38_mux_x_q_15_outputreg0_q;
    wire redist24_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax0_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax38_mux_x_q_15_mem_reset0;
    wire [63:0] redist24_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax0_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax38_mux_x_q_15_mem_ia;
    wire [3:0] redist24_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax0_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax38_mux_x_q_15_mem_aa;
    wire [3:0] redist24_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax0_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax38_mux_x_q_15_mem_ab;
    wire [63:0] redist24_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax0_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax38_mux_x_q_15_mem_iq;
    wire [63:0] redist24_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax0_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax38_mux_x_q_15_mem_q;
    wire [3:0] redist24_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax0_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax38_mux_x_q_15_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist24_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax0_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax38_mux_x_q_15_wraddr_i = 4'b1111;
    wire [3:0] redist24_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax0_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax38_mux_x_q_15_offset_q;
    wire [4:0] redist24_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax0_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax38_mux_x_q_15_rdcnt_a;
    wire [4:0] redist24_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax0_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax38_mux_x_q_15_rdcnt_b;
    logic [4:0] redist24_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax0_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax38_mux_x_q_15_rdcnt_o;
    wire [4:0] redist24_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax0_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax38_mux_x_q_15_rdcnt_q;
    reg [31:0] redist25_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_6_inputreg0_q;
    reg [31:0] redist25_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_6_outputreg0_q;
    wire redist25_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_6_mem_reset0;
    wire [31:0] redist25_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_6_mem_ia;
    wire [1:0] redist25_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_6_mem_aa;
    wire [1:0] redist25_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_6_mem_ab;
    wire [31:0] redist25_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_6_mem_iq;
    wire [31:0] redist25_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_6_mem_q;
    wire [1:0] redist25_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_6_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [1:0] redist25_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_6_wraddr_i = 2'b11;
    wire [1:0] redist25_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_6_offset_q;
    wire [2:0] redist25_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_6_rdcnt_a;
    wire [2:0] redist25_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_6_rdcnt_b;
    logic [2:0] redist25_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_6_rdcnt_o;
    wire [2:0] redist25_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_6_rdcnt_q;
    reg [31:0] redist26_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_15_inputreg0_q;
    reg [31:0] redist26_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_15_outputreg0_q;
    wire redist26_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_15_mem_reset0;
    wire [31:0] redist26_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_15_mem_ia;
    wire [2:0] redist26_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_15_mem_aa;
    wire [2:0] redist26_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_15_mem_ab;
    wire [31:0] redist26_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_15_mem_iq;
    wire [31:0] redist26_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_15_mem_q;
    wire [2:0] redist26_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_15_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [2:0] redist26_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_15_wraddr_i = 3'b111;
    wire [2:0] redist26_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_15_offset_q;
    wire [3:0] redist26_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_15_rdcnt_a;
    wire [3:0] redist26_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_15_rdcnt_b;
    logic [3:0] redist26_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_15_rdcnt_o;
    wire [3:0] redist26_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_15_rdcnt_q;
    reg [63:0] redist41_i_arrayidx214_atax11_vt_join_q_4_outputreg0_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist15_sync_together111_aunroll_x_in_i_valid_2(DELAY,344)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist15_sync_together111_aunroll_x_in_i_valid_2_delay_0 <= '0;
        end
        else
        begin
            redist15_sync_together111_aunroll_x_in_i_valid_2_delay_0 <= $unsigned(in_i_valid);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist15_sync_together111_aunroll_x_in_i_valid_2_q <= redist15_sync_together111_aunroll_x_in_i_valid_2_delay_0;
        end
    end

    // redist16_sync_together111_aunroll_x_in_i_valid_3(DELAY,345)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist16_sync_together111_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist16_sync_together111_aunroll_x_in_i_valid_3_q <= $unsigned(redist15_sync_together111_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist17_sync_together111_aunroll_x_in_i_valid_4(DELAY,346)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist17_sync_together111_aunroll_x_in_i_valid_4_q <= $unsigned(redist16_sync_together111_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist18_sync_together111_aunroll_x_in_i_valid_5(DELAY,347)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist18_sync_together111_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist18_sync_together111_aunroll_x_in_i_valid_5_q <= $unsigned(redist17_sync_together111_aunroll_x_in_i_valid_4_q);
        end
    end

    // redist19_sync_together111_aunroll_x_in_i_valid_13(DELAY,348)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("SYNC"), .phase(5), .modulus(2), .reset_high(1'b0) )
    redist19_sync_together111_aunroll_x_in_i_valid_13 ( .xin(redist18_sync_together111_aunroll_x_in_i_valid_5_q), .xout(redist19_sync_together111_aunroll_x_in_i_valid_13_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg8(REG,214)@13 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist19_sync_together111_aunroll_x_in_i_valid_13_q);
        end
    end

    // i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_c_i7_03_x(CONSTANT,157)
    assign i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_c_i7_03_x_q = $unsigned(7'b0000000);

    // valid_fanout_reg2(REG,208)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist16_sync_together111_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg24(REG,230)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg24_q <= $unsigned(redist16_sync_together111_aunroll_x_in_i_valid_3_q);
        end
    end

    // c_i6_18103(CONSTANT,64)
    assign c_i6_18103_q = $unsigned(6'b010010);

    // i_arrayidx214_atax11_vt_const_1(CONSTANT,68)
    assign i_arrayidx214_atax11_vt_const_1_q = $unsigned(2'b00);

    // c_i6_1105(CONSTANT,63)
    assign c_i6_1105_q = $unsigned(6'b111111);

    // i_fpga_indvars_iv_next5_atax34(ADD,77)@4
    assign i_fpga_indvars_iv_next5_atax34_a = {1'b0, i_llvm_fpga_pop_i6_fpga_indvars_iv4_pop26_atax0_i_llvm_fpga_pop_i6_fpga_indvars_iv4_pop26_atax24_mux_x_q};
    assign i_fpga_indvars_iv_next5_atax34_b = {1'b0, c_i6_1105_q};
    assign i_fpga_indvars_iv_next5_atax34_o = $unsigned(i_fpga_indvars_iv_next5_atax34_a) + $unsigned(i_fpga_indvars_iv_next5_atax34_b);
    assign i_fpga_indvars_iv_next5_atax34_q = i_fpga_indvars_iv_next5_atax34_o[6:0];

    // bgTrunc_i_fpga_indvars_iv_next5_atax34_sel_x(BITSELECT,98)@4
    assign bgTrunc_i_fpga_indvars_iv_next5_atax34_sel_x_b = i_fpga_indvars_iv_next5_atax34_q[5:0];

    // i_llvm_fpga_push_i6_fpga_indvars_iv4_push26_atax0_element_extension2_x(BITJOIN,197)@4
    assign i_llvm_fpga_push_i6_fpga_indvars_iv4_push26_atax0_element_extension2_x_q = {i_arrayidx214_atax11_vt_const_1_q, bgTrunc_i_fpga_indvars_iv_next5_atax34_sel_x_b};

    // i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_inv_pred_x(LOGICAL,160)@1
    assign i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_inv_pred_x_q = ~ (GND_q);

    // valid_fanout_reg26(REG,232)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg26_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg25(REG,231)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg25_q <= $unsigned(redist15_sync_together111_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i6_fpga_indvars_iv4_push26_atax0_i_llvm_fpga_push_i6_fpga_indvars_iv4_push26_atax1_x(FIFODELAY,198)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i6_fpga_indvars_iv4_push26_atax0_i_llvm_fpga_push_i6_fpga_indvars_iv4_push26_atax1_x_i_stall = ~ (valid_fanout_reg26_q & i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_inv_pred_x_q);
    assign i_llvm_fpga_push_i6_fpga_indvars_iv4_push26_atax0_i_llvm_fpga_push_i6_fpga_indvars_iv4_push26_atax1_x_i_valid = valid_fanout_reg25_q & redist21_i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i6_fpga_indvars_iv4_push26_atax0_i_llvm_fpga_push_i6_fpga_indvars_iv4_push26_atax1_x_i_data = i_llvm_fpga_push_i6_fpga_indvars_iv4_push26_atax0_element_extension2_x_q;
    assign i_llvm_fpga_push_i6_fpga_indvars_iv4_push26_atax0_i_llvm_fpga_push_i6_fpga_indvars_iv4_push26_atax1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i6_fpga_indvars_iv4_push26_atax0_i_llvm_fpga_push_i6_fpga_indvars_iv4_push26_atax1_x_i_valid[0];
    assign i_llvm_fpga_push_i6_fpga_indvars_iv4_push26_atax0_i_llvm_fpga_push_i6_fpga_indvars_iv4_push26_atax1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i6_fpga_indvars_iv4_push26_atax0_i_llvm_fpga_push_i6_fpga_indvars_iv4_push26_atax1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i6_fpga_indvars_iv4_push26_atax0_i_llvm_fpga_push_i6_fpga_indvars_iv4_push26_atax1_x (
        .i_valid(i_llvm_fpga_push_i6_fpga_indvars_iv4_push26_atax0_i_llvm_fpga_push_i6_fpga_indvars_iv4_push26_atax1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i6_fpga_indvars_iv4_push26_atax0_i_llvm_fpga_push_i6_fpga_indvars_iv4_push26_atax1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i6_fpga_indvars_iv4_push26_atax0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i6_fpga_indvars_iv4_push26_atax0_i_llvm_fpga_push_i6_fpga_indvars_iv4_push26_atax1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i6_fpga_indvars_iv4_push26_atax0_adapt_scalar_trunc4_sel_x(BITSELECT,200)@4
    assign i_llvm_fpga_push_i6_fpga_indvars_iv4_push26_atax0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i6_fpga_indvars_iv4_push26_atax0_i_llvm_fpga_push_i6_fpga_indvars_iv4_push26_atax1_x_o_data[5:0];

    // i_llvm_fpga_pop_i6_fpga_indvars_iv4_pop26_atax0_i_llvm_fpga_pop_i6_fpga_indvars_iv4_pop26_atax24_mux_x(MUX,154)@4
    assign i_llvm_fpga_pop_i6_fpga_indvars_iv4_pop26_atax0_i_llvm_fpga_pop_i6_fpga_indvars_iv4_pop26_atax24_mux_x_s = redist35_i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i6_fpga_indvars_iv4_pop26_atax0_i_llvm_fpga_pop_i6_fpga_indvars_iv4_pop26_atax24_mux_x_s or i_llvm_fpga_push_i6_fpga_indvars_iv4_push26_atax0_adapt_scalar_trunc4_sel_x_b or c_i6_18103_q)
    begin
        unique case (i_llvm_fpga_pop_i6_fpga_indvars_iv4_pop26_atax0_i_llvm_fpga_pop_i6_fpga_indvars_iv4_pop26_atax24_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i6_fpga_indvars_iv4_pop26_atax0_i_llvm_fpga_pop_i6_fpga_indvars_iv4_pop26_atax24_mux_x_q = i_llvm_fpga_push_i6_fpga_indvars_iv4_push26_atax0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i6_fpga_indvars_iv4_pop26_atax0_i_llvm_fpga_pop_i6_fpga_indvars_iv4_pop26_atax24_mux_x_q = c_i6_18103_q;
            default : i_llvm_fpga_pop_i6_fpga_indvars_iv4_pop26_atax0_i_llvm_fpga_pop_i6_fpga_indvars_iv4_pop26_atax24_mux_x_q = 6'b0;
        endcase
    end

    // i_exitcond6_atax25_cmp_nsign(LOGICAL,257)@4
    assign i_exitcond6_atax25_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i6_fpga_indvars_iv4_pop26_atax0_i_llvm_fpga_pop_i6_fpga_indvars_iv4_pop26_atax24_mux_x_q[5:5]));

    // i_llvm_fpga_push_i1_notexitcond_atax33(BLACKBOX,89)@4
    // in in_empty_in@20000000
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    atax_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_atax33 (
        .in_almost_empty_in(GND_q),
        .in_data_in(i_exitcond6_atax25_cmp_nsign_q),
        .in_empty_in(GND_q),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_atax6_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg24_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_notexitcond_atax33_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_notexitcond_atax33_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_dummy_thread_atax_b7_dummy_atax2(BLACKBOX,83)@0
    // in in_stall_in@20000000
    atax_i_llvm_fpga_dummy_thread_b7_dummy_atax0 thei_llvm_fpga_dummy_thread_atax_b7_dummy_atax2 (
        .in_dummy_in(in_dummy_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dummy_out(i_llvm_fpga_dummy_thread_atax_b7_dummy_atax2_out_dummy_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist37_i_llvm_fpga_dummy_thread_atax_b7_dummy_atax2_out_dummy_out_4(DELAY,366)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist37_i_llvm_fpga_dummy_thread_atax_b7_dummy_atax2_out_dummy_out_4_delay_0 <= $unsigned(i_llvm_fpga_dummy_thread_atax_b7_dummy_atax2_out_dummy_out);
            redist37_i_llvm_fpga_dummy_thread_atax_b7_dummy_atax2_out_dummy_out_4_delay_1 <= redist37_i_llvm_fpga_dummy_thread_atax_b7_dummy_atax2_out_dummy_out_4_delay_0;
            redist37_i_llvm_fpga_dummy_thread_atax_b7_dummy_atax2_out_dummy_out_4_delay_2 <= redist37_i_llvm_fpga_dummy_thread_atax_b7_dummy_atax2_out_dummy_out_4_delay_1;
            redist37_i_llvm_fpga_dummy_thread_atax_b7_dummy_atax2_out_dummy_out_4_q <= redist37_i_llvm_fpga_dummy_thread_atax_b7_dummy_atax2_out_dummy_out_4_delay_2;
        end
    end

    // i_llvm_fpga_forked_atax_b7_forked_atax3(BLACKBOX,84)@0
    // in in_stall_in@20000000
    atax_i_llvm_fpga_forked_b7_forked_atax0 thei_llvm_fpga_forked_atax_b7_forked_atax3 (
        .in_buffer_in(in_buffer_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_buffer_out(i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist35_i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out_4(DELAY,364)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist35_i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out_4_delay_0 <= $unsigned(i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out);
            redist35_i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out_4_delay_1 <= redist35_i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out_4_delay_0;
            redist35_i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out_4_delay_2 <= redist35_i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out_4_delay_1;
            redist35_i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out_4_q <= redist35_i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out_4_delay_2;
        end
    end

    // i_llvm_fpga_pipeline_keep_going_atax6(BLACKBOX,88)@4
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_dummy_out@20000000
    // out out_pipeline_forked_out@20000000
    // out out_pipeline_valid_out@20000000
    atax_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_atax6 (
        .in_data_in(redist35_i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out_4_q),
        .in_dummy_in(redist37_i_llvm_fpga_dummy_thread_atax_b7_dummy_atax2_out_dummy_out_4_q),
        .in_forked_in(redist35_i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out_4_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_atax33_out_feedback_out_2),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_atax33_out_feedback_valid_out_2),
        .in_pipeline_stall_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_atax6_out_data_out),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_atax6_out_exiting_valid_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_atax6_out_not_exitcond_stall_out),
        .out_pipeline_dummy_out(i_llvm_fpga_pipeline_keep_going_atax6_out_pipeline_dummy_out),
        .out_pipeline_forked_out(i_llvm_fpga_pipeline_keep_going_atax6_out_pipeline_forked_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_atax6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist34_i_llvm_fpga_pipeline_keep_going_atax6_out_data_out_2(DELAY,363)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist34_i_llvm_fpga_pipeline_keep_going_atax6_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pipeline_keep_going_atax6_out_data_out);
            redist34_i_llvm_fpga_pipeline_keep_going_atax6_out_data_out_2_q <= redist34_i_llvm_fpga_pipeline_keep_going_atax6_out_data_out_2_delay_0;
        end
    end

    // i_atax_b7_next_iter_isreal_atax7(LOGICAL,75)@6
    assign i_atax_b7_next_iter_isreal_atax7_q = i_llvm_fpga_pop_coalesce_i1_atax_b7_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b7_current_iter_isreal_atax4_mux_x_q & redist34_i_llvm_fpga_pipeline_keep_going_atax6_out_data_out_2_q;

    // i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_element_extension2_x(BITJOIN,158)@6
    assign i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_element_extension2_x_q = {i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_c_i7_03_x_q, i_atax_b7_next_iter_isreal_atax7_q};

    // redist21_i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_inv_pred_x_q_2(DELAY,350)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist21_i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_inv_pred_x_q_2_delay_0 <= $unsigned(i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_inv_pred_x_q);
            redist21_i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_inv_pred_x_q_2_q <= redist21_i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_inv_pred_x_q_2_delay_0;
        end
    end

    // valid_fanout_reg4(REG,210)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist15_sync_together111_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist22_i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_inv_pred_x_q_3(DELAY,351)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist22_i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_inv_pred_x_q_3_q <= $unsigned(redist21_i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_inv_pred_x_q_2_q);
        end
    end

    // redist23_i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_inv_pred_x_q_4(DELAY,352)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist23_i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_inv_pred_x_q_4_q <= $unsigned(redist22_i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_inv_pred_x_q_3_q);
        end
    end

    // valid_fanout_reg3(REG,209)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist17_sync_together111_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax1_x(FIFODELAY,159)@3 + 1
    // in i_valid@5
    // in i_write_pred@5
    // in i_data@6
    // out o_data@6
    assign i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax1_x_i_stall = ~ (valid_fanout_reg4_q & redist21_i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_inv_pred_x_q_2_q);
    assign i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax1_x_i_valid = valid_fanout_reg3_q & redist23_i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_inv_pred_x_q_4_q;
    assign i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax1_x_i_data = i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax1_x (
        .i_valid(i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_adapt_scalar_trunc4_sel_x(BITSELECT,161)@6
    assign i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax1_x_o_data[0:0];

    // redist36_i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out_6(DELAY,365)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist36_i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out_6_delay_0 <= $unsigned(redist35_i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out_4_q);
            redist36_i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out_6_q <= redist36_i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out_6_delay_0;
        end
    end

    // i_llvm_fpga_pop_coalesce_i1_atax_b7_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b7_current_iter_isreal_atax4_mux_x(MUX,146)@6
    assign i_llvm_fpga_pop_coalesce_i1_atax_b7_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b7_current_iter_isreal_atax4_mux_x_s = redist36_i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out_6_q;
    always @(i_llvm_fpga_pop_coalesce_i1_atax_b7_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b7_current_iter_isreal_atax4_mux_x_s or i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_adapt_scalar_trunc4_sel_x_b or VCC_q)
    begin
        unique case (i_llvm_fpga_pop_coalesce_i1_atax_b7_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b7_current_iter_isreal_atax4_mux_x_s)
            1'b0 : i_llvm_fpga_pop_coalesce_i1_atax_b7_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b7_current_iter_isreal_atax4_mux_x_q = i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_coalesce_i1_atax_b7_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b7_current_iter_isreal_atax4_mux_x_q = VCC_q;
            default : i_llvm_fpga_pop_coalesce_i1_atax_b7_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b7_current_iter_isreal_atax4_mux_x_q = 1'b0;
        endcase
    end

    // i_atax_b7_current_iter_isspec_atax5(LOGICAL,74)@6
    assign i_atax_b7_current_iter_isspec_atax5_q = i_llvm_fpga_pop_coalesce_i1_atax_b7_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b7_current_iter_isreal_atax4_mux_x_q ^ VCC_q;

    // redist38_i_atax_b7_current_iter_isspec_atax5_q_8(DELAY,367)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist38_i_atax_b7_current_iter_isspec_atax5_q_8 ( .xin(i_atax_b7_current_iter_isspec_atax5_q), .xout(redist38_i_atax_b7_current_iter_isspec_atax5_q_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist6_sync_together111_aunroll_x_in_c0_eni11137_2_tpl_4(DELAY,335)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_sync_together111_aunroll_x_in_c0_eni11137_2_tpl_4_delay_0 <= $unsigned(in_c0_eni11137_2_tpl);
            redist6_sync_together111_aunroll_x_in_c0_eni11137_2_tpl_4_delay_1 <= redist6_sync_together111_aunroll_x_in_c0_eni11137_2_tpl_4_delay_0;
            redist6_sync_together111_aunroll_x_in_c0_eni11137_2_tpl_4_delay_2 <= redist6_sync_together111_aunroll_x_in_c0_eni11137_2_tpl_4_delay_1;
            redist6_sync_together111_aunroll_x_in_c0_eni11137_2_tpl_4_q <= redist6_sync_together111_aunroll_x_in_c0_eni11137_2_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi3_pop1029_push29_atax0_element_extension2_x(BITJOIN,176)@4
    assign i_llvm_fpga_push_i1_memdep_phi3_pop1029_push29_atax0_element_extension2_x_q = {i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_c_i7_03_x_q, i_llvm_fpga_pop_i1_memdep_phi3_pop1029_pop29_atax0_i_llvm_fpga_pop_i1_memdep_phi3_pop1029_pop29_atax12_mux_x_q};

    // valid_fanout_reg21(REG,227)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg21_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg20(REG,226)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg20_q <= $unsigned(redist15_sync_together111_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi3_pop1029_push29_atax0_i_llvm_fpga_push_i1_memdep_phi3_pop1029_push29_atax1_x(FIFODELAY,177)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i1_memdep_phi3_pop1029_push29_atax0_i_llvm_fpga_push_i1_memdep_phi3_pop1029_push29_atax1_x_i_stall = ~ (valid_fanout_reg21_q & i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_memdep_phi3_pop1029_push29_atax0_i_llvm_fpga_push_i1_memdep_phi3_pop1029_push29_atax1_x_i_valid = valid_fanout_reg20_q & redist21_i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i1_memdep_phi3_pop1029_push29_atax0_i_llvm_fpga_push_i1_memdep_phi3_pop1029_push29_atax1_x_i_data = i_llvm_fpga_push_i1_memdep_phi3_pop1029_push29_atax0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_memdep_phi3_pop1029_push29_atax0_i_llvm_fpga_push_i1_memdep_phi3_pop1029_push29_atax1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi3_pop1029_push29_atax0_i_llvm_fpga_push_i1_memdep_phi3_pop1029_push29_atax1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_memdep_phi3_pop1029_push29_atax0_i_llvm_fpga_push_i1_memdep_phi3_pop1029_push29_atax1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi3_pop1029_push29_atax0_i_llvm_fpga_push_i1_memdep_phi3_pop1029_push29_atax1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_memdep_phi3_pop1029_push29_atax0_i_llvm_fpga_push_i1_memdep_phi3_pop1029_push29_atax1_x (
        .i_valid(i_llvm_fpga_push_i1_memdep_phi3_pop1029_push29_atax0_i_llvm_fpga_push_i1_memdep_phi3_pop1029_push29_atax1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_memdep_phi3_pop1029_push29_atax0_i_llvm_fpga_push_i1_memdep_phi3_pop1029_push29_atax1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_memdep_phi3_pop1029_push29_atax0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_memdep_phi3_pop1029_push29_atax0_i_llvm_fpga_push_i1_memdep_phi3_pop1029_push29_atax1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_memdep_phi3_pop1029_push29_atax0_adapt_scalar_trunc4_sel_x(BITSELECT,179)@4
    assign i_llvm_fpga_push_i1_memdep_phi3_pop1029_push29_atax0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_memdep_phi3_pop1029_push29_atax0_i_llvm_fpga_push_i1_memdep_phi3_pop1029_push29_atax1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_memdep_phi3_pop1029_pop29_atax0_i_llvm_fpga_pop_i1_memdep_phi3_pop1029_pop29_atax12_mux_x(MUX,149)@4
    assign i_llvm_fpga_pop_i1_memdep_phi3_pop1029_pop29_atax0_i_llvm_fpga_pop_i1_memdep_phi3_pop1029_pop29_atax12_mux_x_s = redist35_i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i1_memdep_phi3_pop1029_pop29_atax0_i_llvm_fpga_pop_i1_memdep_phi3_pop1029_pop29_atax12_mux_x_s or i_llvm_fpga_push_i1_memdep_phi3_pop1029_push29_atax0_adapt_scalar_trunc4_sel_x_b or redist6_sync_together111_aunroll_x_in_c0_eni11137_2_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i1_memdep_phi3_pop1029_pop29_atax0_i_llvm_fpga_pop_i1_memdep_phi3_pop1029_pop29_atax12_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_memdep_phi3_pop1029_pop29_atax0_i_llvm_fpga_pop_i1_memdep_phi3_pop1029_pop29_atax12_mux_x_q = i_llvm_fpga_push_i1_memdep_phi3_pop1029_push29_atax0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_memdep_phi3_pop1029_pop29_atax0_i_llvm_fpga_pop_i1_memdep_phi3_pop1029_pop29_atax12_mux_x_q = redist6_sync_together111_aunroll_x_in_c0_eni11137_2_tpl_4_q;
            default : i_llvm_fpga_pop_i1_memdep_phi3_pop1029_pop29_atax0_i_llvm_fpga_pop_i1_memdep_phi3_pop1029_pop29_atax12_mux_x_q = 1'b0;
        endcase
    end

    // redist7_sync_together111_aunroll_x_in_c0_eni11137_3_tpl_4(DELAY,336)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_sync_together111_aunroll_x_in_c0_eni11137_3_tpl_4_delay_0 <= $unsigned(in_c0_eni11137_3_tpl);
            redist7_sync_together111_aunroll_x_in_c0_eni11137_3_tpl_4_delay_1 <= redist7_sync_together111_aunroll_x_in_c0_eni11137_3_tpl_4_delay_0;
            redist7_sync_together111_aunroll_x_in_c0_eni11137_3_tpl_4_delay_2 <= redist7_sync_together111_aunroll_x_in_c0_eni11137_3_tpl_4_delay_1;
            redist7_sync_together111_aunroll_x_in_c0_eni11137_3_tpl_4_q <= redist7_sync_together111_aunroll_x_in_c0_eni11137_3_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi2_pop1341_push34_atax0_element_extension2_x(BITJOIN,170)@4
    assign i_llvm_fpga_push_i1_memdep_phi2_pop1341_push34_atax0_element_extension2_x_q = {i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_c_i7_03_x_q, i_llvm_fpga_pop_i1_memdep_phi2_pop1341_pop34_atax0_i_llvm_fpga_pop_i1_memdep_phi2_pop1341_pop34_atax13_mux_x_q};

    // valid_fanout_reg17(REG,223)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg16(REG,222)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist15_sync_together111_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi2_pop1341_push34_atax0_i_llvm_fpga_push_i1_memdep_phi2_pop1341_push34_atax1_x(FIFODELAY,171)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i1_memdep_phi2_pop1341_push34_atax0_i_llvm_fpga_push_i1_memdep_phi2_pop1341_push34_atax1_x_i_stall = ~ (valid_fanout_reg17_q & i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_memdep_phi2_pop1341_push34_atax0_i_llvm_fpga_push_i1_memdep_phi2_pop1341_push34_atax1_x_i_valid = valid_fanout_reg16_q & redist21_i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i1_memdep_phi2_pop1341_push34_atax0_i_llvm_fpga_push_i1_memdep_phi2_pop1341_push34_atax1_x_i_data = i_llvm_fpga_push_i1_memdep_phi2_pop1341_push34_atax0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_memdep_phi2_pop1341_push34_atax0_i_llvm_fpga_push_i1_memdep_phi2_pop1341_push34_atax1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi2_pop1341_push34_atax0_i_llvm_fpga_push_i1_memdep_phi2_pop1341_push34_atax1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_memdep_phi2_pop1341_push34_atax0_i_llvm_fpga_push_i1_memdep_phi2_pop1341_push34_atax1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi2_pop1341_push34_atax0_i_llvm_fpga_push_i1_memdep_phi2_pop1341_push34_atax1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_memdep_phi2_pop1341_push34_atax0_i_llvm_fpga_push_i1_memdep_phi2_pop1341_push34_atax1_x (
        .i_valid(i_llvm_fpga_push_i1_memdep_phi2_pop1341_push34_atax0_i_llvm_fpga_push_i1_memdep_phi2_pop1341_push34_atax1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_memdep_phi2_pop1341_push34_atax0_i_llvm_fpga_push_i1_memdep_phi2_pop1341_push34_atax1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_memdep_phi2_pop1341_push34_atax0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_memdep_phi2_pop1341_push34_atax0_i_llvm_fpga_push_i1_memdep_phi2_pop1341_push34_atax1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_memdep_phi2_pop1341_push34_atax0_adapt_scalar_trunc4_sel_x(BITSELECT,173)@4
    assign i_llvm_fpga_push_i1_memdep_phi2_pop1341_push34_atax0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_memdep_phi2_pop1341_push34_atax0_i_llvm_fpga_push_i1_memdep_phi2_pop1341_push34_atax1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_memdep_phi2_pop1341_pop34_atax0_i_llvm_fpga_pop_i1_memdep_phi2_pop1341_pop34_atax13_mux_x(MUX,148)@4
    assign i_llvm_fpga_pop_i1_memdep_phi2_pop1341_pop34_atax0_i_llvm_fpga_pop_i1_memdep_phi2_pop1341_pop34_atax13_mux_x_s = redist35_i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i1_memdep_phi2_pop1341_pop34_atax0_i_llvm_fpga_pop_i1_memdep_phi2_pop1341_pop34_atax13_mux_x_s or i_llvm_fpga_push_i1_memdep_phi2_pop1341_push34_atax0_adapt_scalar_trunc4_sel_x_b or redist7_sync_together111_aunroll_x_in_c0_eni11137_3_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i1_memdep_phi2_pop1341_pop34_atax0_i_llvm_fpga_pop_i1_memdep_phi2_pop1341_pop34_atax13_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_memdep_phi2_pop1341_pop34_atax0_i_llvm_fpga_pop_i1_memdep_phi2_pop1341_pop34_atax13_mux_x_q = i_llvm_fpga_push_i1_memdep_phi2_pop1341_push34_atax0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_memdep_phi2_pop1341_pop34_atax0_i_llvm_fpga_pop_i1_memdep_phi2_pop1341_pop34_atax13_mux_x_q = redist7_sync_together111_aunroll_x_in_c0_eni11137_3_tpl_4_q;
            default : i_llvm_fpga_pop_i1_memdep_phi2_pop1341_pop34_atax0_i_llvm_fpga_pop_i1_memdep_phi2_pop1341_pop34_atax13_mux_x_q = 1'b0;
        endcase
    end

    // i_memdep_phi3_or_atax14(LOGICAL,90)@4 + 1
    assign i_memdep_phi3_or_atax14_qi = i_llvm_fpga_pop_i1_memdep_phi2_pop1341_pop34_atax0_i_llvm_fpga_pop_i1_memdep_phi2_pop1341_pop34_atax13_mux_x_q | i_llvm_fpga_pop_i1_memdep_phi3_pop1029_pop29_atax0_i_llvm_fpga_pop_i1_memdep_phi3_pop1029_pop29_atax12_mux_x_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_memdep_phi3_or_atax14_delay ( .xin(i_memdep_phi3_or_atax14_qi), .xout(i_memdep_phi3_or_atax14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist33_i_memdep_phi3_or_atax14_q_10(DELAY,362)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist33_i_memdep_phi3_or_atax14_q_10 ( .xin(i_memdep_phi3_or_atax14_q), .xout(redist33_i_memdep_phi3_or_atax14_q_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_atax_y_local_pmem(CONSTANT,7)
    assign c_atax_y_local_pmem_q = $unsigned(64'b0100000001000010000000000000000000000000000000000000000000000000);

    // i_arrayidx214_atax0_upper_bits_x_merged_bit_select(BITSELECT,325)@14
    assign i_arrayidx214_atax0_upper_bits_x_merged_bit_select_b = c_atax_y_local_pmem_q[63:7];
    assign i_arrayidx214_atax0_upper_bits_x_merged_bit_select_c = c_atax_y_local_pmem_q[6:0];

    // c_i32_0101(CONSTANT,61)
    assign c_i32_0101_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i32_1102(CONSTANT,62)
    assign c_i32_1102_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc31_atax23(ADD,82)@6
    assign i_inc31_atax23_a = {1'b0, i_llvm_fpga_pop_i32_j15_021_pop27_atax0_i_llvm_fpga_pop_i32_j15_021_pop27_atax9_mux_x_q};
    assign i_inc31_atax23_b = {1'b0, c_i32_1102_q};
    assign i_inc31_atax23_o = $unsigned(i_inc31_atax23_a) + $unsigned(i_inc31_atax23_b);
    assign i_inc31_atax23_q = i_inc31_atax23_o[32:0];

    // bgTrunc_i_inc31_atax23_sel_x(BITSELECT,99)@6
    assign bgTrunc_i_inc31_atax23_sel_x_b = i_inc31_atax23_q[31:0];

    // valid_fanout_reg23(REG,229)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg23_q <= $unsigned(redist15_sync_together111_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg22(REG,228)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg22_q <= $unsigned(redist17_sync_together111_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i32_j15_021_push27_atax0_i_llvm_fpga_push_i32_j15_021_push27_atax1_x(FIFODELAY,189)@3 + 1
    // in i_valid@5
    // in i_write_pred@5
    // in i_data@6
    // out o_data@6
    assign i_llvm_fpga_push_i32_j15_021_push27_atax0_i_llvm_fpga_push_i32_j15_021_push27_atax1_x_i_stall = ~ (valid_fanout_reg23_q & redist21_i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_inv_pred_x_q_2_q);
    assign i_llvm_fpga_push_i32_j15_021_push27_atax0_i_llvm_fpga_push_i32_j15_021_push27_atax1_x_i_valid = valid_fanout_reg22_q & redist23_i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_inv_pred_x_q_4_q;
    assign i_llvm_fpga_push_i32_j15_021_push27_atax0_i_llvm_fpga_push_i32_j15_021_push27_atax1_x_i_data = bgTrunc_i_inc31_atax23_sel_x_b;
    assign i_llvm_fpga_push_i32_j15_021_push27_atax0_i_llvm_fpga_push_i32_j15_021_push27_atax1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_j15_021_push27_atax0_i_llvm_fpga_push_i32_j15_021_push27_atax1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_j15_021_push27_atax0_i_llvm_fpga_push_i32_j15_021_push27_atax1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_j15_021_push27_atax0_i_llvm_fpga_push_i32_j15_021_push27_atax1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_j15_021_push27_atax0_i_llvm_fpga_push_i32_j15_021_push27_atax1_x (
        .i_valid(i_llvm_fpga_push_i32_j15_021_push27_atax0_i_llvm_fpga_push_i32_j15_021_push27_atax1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_j15_021_push27_atax0_i_llvm_fpga_push_i32_j15_021_push27_atax1_x_i_stall_bitsignaltemp),
        .i_data(bgTrunc_i_inc31_atax23_sel_x_b),
        .o_data(i_llvm_fpga_push_i32_j15_021_push27_atax0_i_llvm_fpga_push_i32_j15_021_push27_atax1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_j15_021_pop27_atax0_i_llvm_fpga_pop_i32_j15_021_pop27_atax9_mux_x(MUX,152)@6
    assign i_llvm_fpga_pop_i32_j15_021_pop27_atax0_i_llvm_fpga_pop_i32_j15_021_pop27_atax9_mux_x_s = redist36_i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out_6_q;
    always @(i_llvm_fpga_pop_i32_j15_021_pop27_atax0_i_llvm_fpga_pop_i32_j15_021_pop27_atax9_mux_x_s or i_llvm_fpga_push_i32_j15_021_push27_atax0_i_llvm_fpga_push_i32_j15_021_push27_atax1_x_o_data or c_i32_0101_q)
    begin
        unique case (i_llvm_fpga_pop_i32_j15_021_pop27_atax0_i_llvm_fpga_pop_i32_j15_021_pop27_atax9_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_j15_021_pop27_atax0_i_llvm_fpga_pop_i32_j15_021_pop27_atax9_mux_x_q = i_llvm_fpga_push_i32_j15_021_push27_atax0_i_llvm_fpga_push_i32_j15_021_push27_atax1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_j15_021_pop27_atax0_i_llvm_fpga_pop_i32_j15_021_pop27_atax9_mux_x_q = c_i32_0101_q;
            default : i_llvm_fpga_pop_i32_j15_021_pop27_atax0_i_llvm_fpga_pop_i32_j15_021_pop27_atax9_mux_x_q = 32'b0;
        endcase
    end

    // i_idxprom20_atax10_sel_x(BITSELECT,145)@6
    assign i_idxprom20_atax10_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_j15_021_pop27_atax0_i_llvm_fpga_pop_i32_j15_021_pop27_atax9_mux_x_q[31:0]};

    // i_idxprom20_atax10_vt_select_31(BITSELECT,81)@6
    assign i_idxprom20_atax10_vt_select_31_b = i_idxprom20_atax10_sel_x_b[31:0];

    // i_idxprom20_atax10_vt_join(BITJOIN,80)@6
    assign i_idxprom20_atax10_vt_join_q = {c_i32_0101_q, i_idxprom20_atax10_vt_select_31_b};

    // i_arrayidx214_atax0_dupName_0_trunc_sel_x(BITSELECT,119)@6
    assign i_arrayidx214_atax0_dupName_0_trunc_sel_x_b = i_idxprom20_atax10_vt_join_q[6:0];

    // i_arrayidx214_atax0_narrow_x(BITSELECT,112)@6
    assign i_arrayidx214_atax0_narrow_x_b = i_arrayidx214_atax0_dupName_0_trunc_sel_x_b[4:0];

    // redist31_i_arrayidx214_atax0_narrow_x_b_8(DELAY,360)
    dspba_delay_ver #( .width(5), .depth(8), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist31_i_arrayidx214_atax0_narrow_x_b_8 ( .xin(i_arrayidx214_atax0_narrow_x_b), .xout(redist31_i_arrayidx214_atax0_narrow_x_b_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_arrayidx214_atax0_shift_join_x(BITJOIN,113)@14
    assign i_arrayidx214_atax0_shift_join_x_q = {redist31_i_arrayidx214_atax0_narrow_x_b_8_q, i_arrayidx214_atax11_vt_const_1_q};

    // i_arrayidx214_atax0_add_x(ADD,109)@14
    assign i_arrayidx214_atax0_add_x_a = {1'b0, i_arrayidx214_atax0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx214_atax0_add_x_b = {1'b0, i_arrayidx214_atax0_shift_join_x_q};
    assign i_arrayidx214_atax0_add_x_o = $unsigned(i_arrayidx214_atax0_add_x_a) + $unsigned(i_arrayidx214_atax0_add_x_b);
    assign i_arrayidx214_atax0_add_x_q = i_arrayidx214_atax0_add_x_o[7:0];

    // i_arrayidx214_atax0_dupName_2_trunc_sel_x(BITSELECT,120)@14
    assign i_arrayidx214_atax0_dupName_2_trunc_sel_x_b = i_arrayidx214_atax0_add_x_q[6:0];

    // i_arrayidx214_atax0_append_upper_bits_x(BITJOIN,110)@14
    assign i_arrayidx214_atax0_append_upper_bits_x_q = {i_arrayidx214_atax0_upper_bits_x_merged_bit_select_b, i_arrayidx214_atax0_dupName_2_trunc_sel_x_b};

    // i_arrayidx214_atax11_vt_select_63(BITSELECT,70)@14
    assign i_arrayidx214_atax11_vt_select_63_b = i_arrayidx214_atax0_append_upper_bits_x_q[63:2];

    // i_arrayidx214_atax11_vt_join(BITJOIN,69)@14
    assign i_arrayidx214_atax11_vt_join_q = {i_arrayidx214_atax11_vt_select_63_b, i_arrayidx214_atax11_vt_const_1_q};

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_mem_unnamed_atax7_atax15(BLACKBOX,86)@14
    // out out_o_almost_empty@18
    // out out_o_empty@18
    // out out_o_readdata@18
    // out out_o_stall@18
    // out out_o_valid@18
    // out out_unnamed_atax7_atax_avm_address@20000000
    // out out_unnamed_atax7_atax_avm_burstcount@20000000
    // out out_unnamed_atax7_atax_avm_byteenable@20000000
    // out out_unnamed_atax7_atax_avm_enable@20000000
    // out out_unnamed_atax7_atax_avm_read@20000000
    // out out_unnamed_atax7_atax_avm_write@20000000
    // out out_unnamed_atax7_atax_avm_writedata@20000000
    atax_i_llvm_fpga_mem_unnamed_7_atax0 thei_llvm_fpga_mem_unnamed_atax7_atax15 (
        .in_almost_empty_in(GND_q),
        .in_empty_in(GND_q),
        .in_flush(in_flush),
        .in_i_address(i_arrayidx214_atax11_vt_join_q),
        .in_i_dependence(redist33_i_memdep_phi3_or_atax14_q_10_q),
        .in_i_predicate(redist38_i_atax_b7_current_iter_isspec_atax5_q_8_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg8_q),
        .in_unnamed_atax7_atax_avm_readdata(in_unnamed_atax7_atax_avm_readdata),
        .in_unnamed_atax7_atax_avm_readdatavalid(in_unnamed_atax7_atax_avm_readdatavalid),
        .in_unnamed_atax7_atax_avm_waitrequest(in_unnamed_atax7_atax_avm_waitrequest),
        .in_unnamed_atax7_atax_avm_writeack(in_unnamed_atax7_atax_avm_writeack),
        .out_o_almost_empty(),
        .out_o_empty(),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_atax7_atax15_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_atax7_atax_avm_address(i_llvm_fpga_mem_unnamed_atax7_atax15_out_unnamed_atax7_atax_avm_address),
        .out_unnamed_atax7_atax_avm_burstcount(i_llvm_fpga_mem_unnamed_atax7_atax15_out_unnamed_atax7_atax_avm_burstcount),
        .out_unnamed_atax7_atax_avm_byteenable(i_llvm_fpga_mem_unnamed_atax7_atax15_out_unnamed_atax7_atax_avm_byteenable),
        .out_unnamed_atax7_atax_avm_enable(i_llvm_fpga_mem_unnamed_atax7_atax15_out_unnamed_atax7_atax_avm_enable),
        .out_unnamed_atax7_atax_avm_read(i_llvm_fpga_mem_unnamed_atax7_atax15_out_unnamed_atax7_atax_avm_read),
        .out_unnamed_atax7_atax_avm_write(i_llvm_fpga_mem_unnamed_atax7_atax15_out_unnamed_atax7_atax_avm_write),
        .out_unnamed_atax7_atax_avm_writedata(i_llvm_fpga_mem_unnamed_atax7_atax15_out_unnamed_atax7_atax_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,66)
    assign out_unnamed_atax7_atax_avm_address = i_llvm_fpga_mem_unnamed_atax7_atax15_out_unnamed_atax7_atax_avm_address;
    assign out_unnamed_atax7_atax_avm_enable = i_llvm_fpga_mem_unnamed_atax7_atax15_out_unnamed_atax7_atax_avm_enable;
    assign out_unnamed_atax7_atax_avm_read = i_llvm_fpga_mem_unnamed_atax7_atax15_out_unnamed_atax7_atax_avm_read;
    assign out_unnamed_atax7_atax_avm_write = i_llvm_fpga_mem_unnamed_atax7_atax15_out_unnamed_atax7_atax_avm_write;
    assign out_unnamed_atax7_atax_avm_writedata = i_llvm_fpga_mem_unnamed_atax7_atax15_out_unnamed_atax7_atax_avm_writedata;
    assign out_unnamed_atax7_atax_avm_byteenable = i_llvm_fpga_mem_unnamed_atax7_atax15_out_unnamed_atax7_atax_avm_byteenable;
    assign out_unnamed_atax7_atax_avm_burstcount = i_llvm_fpga_mem_unnamed_atax7_atax15_out_unnamed_atax7_atax_avm_burstcount;

    // regfree_osync(GPOUT,95)
    assign out_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_atax6_out_exiting_valid_out;

    // valid_fanout_reg10(REG,216)@5 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist18_sync_together111_aunroll_x_in_i_valid_5_q);
        end
    end

    // c_atax_A_local_pmem(CONSTANT,6)
    assign c_atax_A_local_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx255_atax0_upper_bits_x_merged_bit_select(BITSELECT,324)@5
    assign i_arrayidx255_atax0_upper_bits_x_merged_bit_select_b = c_atax_A_local_pmem_q[63:11];
    assign i_arrayidx255_atax0_upper_bits_x_merged_bit_select_c = c_atax_A_local_pmem_q[10:0];

    // redist0_i_arrayidx255_atax0_upper_bits_x_merged_bit_select_b_1(DELAY,329)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_i_arrayidx255_atax0_upper_bits_x_merged_bit_select_b_1_q <= $unsigned(i_arrayidx255_atax0_upper_bits_x_merged_bit_select_b);
        end
    end

    // i_arrayidx255_atax0_dupName_3_trunc_sel_x(BITSELECT,143)@6
    assign i_arrayidx255_atax0_dupName_3_trunc_sel_x_b = i_idxprom20_atax10_vt_join_q[10:0];

    // i_arrayidx255_atax0_narrow_x(BITSELECT,126)@6
    assign i_arrayidx255_atax0_narrow_x_b = i_arrayidx255_atax0_dupName_3_trunc_sel_x_b[8:0];

    // i_arrayidx255_atax0_shift_join_x(BITJOIN,127)@6
    assign i_arrayidx255_atax0_shift_join_x_q = {i_arrayidx255_atax0_narrow_x_b, i_arrayidx214_atax11_vt_const_1_q};

    // i_arrayidx255_atax0_mult_multconst_x(CONSTANT,138)
    assign i_arrayidx255_atax0_mult_multconst_x_q = $unsigned(4'b0000);

    // redist8_sync_together111_aunroll_x_in_c0_eni11137_4_tpl_4_inputreg0(DELAY,371)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_sync_together111_aunroll_x_in_c0_eni11137_4_tpl_4_inputreg0_q <= $unsigned(in_c0_eni11137_4_tpl);
        end
    end

    // redist8_sync_together111_aunroll_x_in_c0_eni11137_4_tpl_4(DELAY,337)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_sync_together111_aunroll_x_in_c0_eni11137_4_tpl_4_delay_0 <= $unsigned(redist8_sync_together111_aunroll_x_in_c0_eni11137_4_tpl_4_inputreg0_q);
            redist8_sync_together111_aunroll_x_in_c0_eni11137_4_tpl_4_delay_1 <= redist8_sync_together111_aunroll_x_in_c0_eni11137_4_tpl_4_delay_0;
            redist8_sync_together111_aunroll_x_in_c0_eni11137_4_tpl_4_q <= redist8_sync_together111_aunroll_x_in_c0_eni11137_4_tpl_4_delay_1;
        end
    end

    // valid_fanout_reg19(REG,225)@0 + 1
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

    // valid_fanout_reg18(REG,224)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(redist15_sync_together111_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i64_idxprom33_push30_atax0_i_llvm_fpga_push_i64_idxprom33_push30_atax1_x(FIFODELAY,192)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i64_idxprom33_push30_atax0_i_llvm_fpga_push_i64_idxprom33_push30_atax1_x_i_stall = ~ (valid_fanout_reg19_q & i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_inv_pred_x_q);
    assign i_llvm_fpga_push_i64_idxprom33_push30_atax0_i_llvm_fpga_push_i64_idxprom33_push30_atax1_x_i_valid = valid_fanout_reg18_q & redist21_i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i64_idxprom33_push30_atax0_i_llvm_fpga_push_i64_idxprom33_push30_atax1_x_i_data = i_llvm_fpga_pop_i64_idxprom33_pop30_atax0_i_llvm_fpga_pop_i64_idxprom33_pop30_atax16_mux_x_q;
    assign i_llvm_fpga_push_i64_idxprom33_push30_atax0_i_llvm_fpga_push_i64_idxprom33_push30_atax1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i64_idxprom33_push30_atax0_i_llvm_fpga_push_i64_idxprom33_push30_atax1_x_i_valid[0];
    assign i_llvm_fpga_push_i64_idxprom33_push30_atax0_i_llvm_fpga_push_i64_idxprom33_push30_atax1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i64_idxprom33_push30_atax0_i_llvm_fpga_push_i64_idxprom33_push30_atax1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i64_idxprom33_push30_atax0_i_llvm_fpga_push_i64_idxprom33_push30_atax1_x (
        .i_valid(i_llvm_fpga_push_i64_idxprom33_push30_atax0_i_llvm_fpga_push_i64_idxprom33_push30_atax1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i64_idxprom33_push30_atax0_i_llvm_fpga_push_i64_idxprom33_push30_atax1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i64_idxprom33_pop30_atax0_i_llvm_fpga_pop_i64_idxprom33_pop30_atax16_mux_x_q),
        .o_data(i_llvm_fpga_push_i64_idxprom33_push30_atax0_i_llvm_fpga_push_i64_idxprom33_push30_atax1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i64_idxprom33_pop30_atax0_i_llvm_fpga_pop_i64_idxprom33_pop30_atax16_mux_x(MUX,153)@4
    assign i_llvm_fpga_pop_i64_idxprom33_pop30_atax0_i_llvm_fpga_pop_i64_idxprom33_pop30_atax16_mux_x_s = redist35_i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i64_idxprom33_pop30_atax0_i_llvm_fpga_pop_i64_idxprom33_pop30_atax16_mux_x_s or i_llvm_fpga_push_i64_idxprom33_push30_atax0_i_llvm_fpga_push_i64_idxprom33_push30_atax1_x_o_data or redist8_sync_together111_aunroll_x_in_c0_eni11137_4_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i64_idxprom33_pop30_atax0_i_llvm_fpga_pop_i64_idxprom33_pop30_atax16_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i64_idxprom33_pop30_atax0_i_llvm_fpga_pop_i64_idxprom33_pop30_atax16_mux_x_q = i_llvm_fpga_push_i64_idxprom33_push30_atax0_i_llvm_fpga_push_i64_idxprom33_push30_atax1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i64_idxprom33_pop30_atax0_i_llvm_fpga_pop_i64_idxprom33_pop30_atax16_mux_x_q = redist8_sync_together111_aunroll_x_in_c0_eni11137_4_tpl_4_q;
            default : i_llvm_fpga_pop_i64_idxprom33_pop30_atax0_i_llvm_fpga_pop_i64_idxprom33_pop30_atax16_mux_x_q = 64'b0;
        endcase
    end

    // i_arrayidx255_atax0_dupName_0_trunc_sel_x(BITSELECT,140)@4
    assign i_arrayidx255_atax0_dupName_0_trunc_sel_x_b = i_llvm_fpga_pop_i64_idxprom33_pop30_atax0_i_llvm_fpga_pop_i64_idxprom33_pop30_atax16_mux_x_q[10:0];

    // addsumAHighB_uid285_i_arrayidx255_atax0_mult_x(ADD,284)@4
    assign addsumAHighB_uid285_i_arrayidx255_atax0_mult_x_a = {1'b0, i_arrayidx255_atax0_dupName_0_trunc_sel_x_b};
    assign addsumAHighB_uid285_i_arrayidx255_atax0_mult_x_b = {3'b000, lowRangeB_uid283_i_arrayidx255_atax0_mult_x_merged_bit_select_c};
    assign addsumAHighB_uid285_i_arrayidx255_atax0_mult_x_o = $unsigned(addsumAHighB_uid285_i_arrayidx255_atax0_mult_x_a) + $unsigned(addsumAHighB_uid285_i_arrayidx255_atax0_mult_x_b);
    assign addsumAHighB_uid285_i_arrayidx255_atax0_mult_x_q = addsumAHighB_uid285_i_arrayidx255_atax0_mult_x_o[11:0];

    // lowRangeB_uid283_i_arrayidx255_atax0_mult_x_merged_bit_select(BITSELECT,327)@4
    assign lowRangeB_uid283_i_arrayidx255_atax0_mult_x_merged_bit_select_b = i_arrayidx255_atax0_dupName_0_trunc_sel_x_b[1:0];
    assign lowRangeB_uid283_i_arrayidx255_atax0_mult_x_merged_bit_select_c = i_arrayidx255_atax0_dupName_0_trunc_sel_x_b[10:2];

    // add_uid286_i_arrayidx255_atax0_mult_x(BITJOIN,285)@4
    assign add_uid286_i_arrayidx255_atax0_mult_x_q = {addsumAHighB_uid285_i_arrayidx255_atax0_mult_x_q, lowRangeB_uid283_i_arrayidx255_atax0_mult_x_merged_bit_select_b};

    // sR_mergedSignalTM_uid291_i_arrayidx255_atax0_mult_x(BITJOIN,290)@4
    assign sR_mergedSignalTM_uid291_i_arrayidx255_atax0_mult_x_q = {add_uid286_i_arrayidx255_atax0_mult_x_q, i_arrayidx255_atax0_mult_multconst_x_q};

    // i_arrayidx255_atax0_mult_extender_x(BITJOIN,137)@4
    assign i_arrayidx255_atax0_mult_extender_x_q = {i_arrayidx255_atax0_mult_multconst_x_q, sR_mergedSignalTM_uid291_i_arrayidx255_atax0_mult_x_q};

    // i_arrayidx255_atax0_dupName_1_trunc_sel_x(BITSELECT,141)@4
    assign i_arrayidx255_atax0_dupName_1_trunc_sel_x_b = i_arrayidx255_atax0_mult_extender_x_q[10:0];

    // redist30_i_arrayidx255_atax0_dupName_1_trunc_sel_x_b_1(DELAY,359)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist30_i_arrayidx255_atax0_dupName_1_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx255_atax0_dupName_1_trunc_sel_x_b);
        end
    end

    // i_arrayidx255_atax0_add_x(ADD,121)@5
    assign i_arrayidx255_atax0_add_x_a = {1'b0, i_arrayidx255_atax0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx255_atax0_add_x_b = {1'b0, redist30_i_arrayidx255_atax0_dupName_1_trunc_sel_x_b_1_q};
    assign i_arrayidx255_atax0_add_x_o = $unsigned(i_arrayidx255_atax0_add_x_a) + $unsigned(i_arrayidx255_atax0_add_x_b);
    assign i_arrayidx255_atax0_add_x_q = i_arrayidx255_atax0_add_x_o[11:0];

    // i_arrayidx255_atax0_dupName_2_trunc_sel_x(BITSELECT,142)@5
    assign i_arrayidx255_atax0_dupName_2_trunc_sel_x_b = i_arrayidx255_atax0_add_x_q[10:0];

    // redist29_i_arrayidx255_atax0_dupName_2_trunc_sel_x_b_1(DELAY,358)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist29_i_arrayidx255_atax0_dupName_2_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx255_atax0_dupName_2_trunc_sel_x_b);
        end
    end

    // i_arrayidx255_atax0_dupName_0_add_x(ADD,131)@6
    assign i_arrayidx255_atax0_dupName_0_add_x_a = {1'b0, redist29_i_arrayidx255_atax0_dupName_2_trunc_sel_x_b_1_q};
    assign i_arrayidx255_atax0_dupName_0_add_x_b = {1'b0, i_arrayidx255_atax0_shift_join_x_q};
    assign i_arrayidx255_atax0_dupName_0_add_x_o = $unsigned(i_arrayidx255_atax0_dupName_0_add_x_a) + $unsigned(i_arrayidx255_atax0_dupName_0_add_x_b);
    assign i_arrayidx255_atax0_dupName_0_add_x_q = i_arrayidx255_atax0_dupName_0_add_x_o[11:0];

    // i_arrayidx255_atax0_dupName_5_trunc_sel_x(BITSELECT,144)@6
    assign i_arrayidx255_atax0_dupName_5_trunc_sel_x_b = i_arrayidx255_atax0_dupName_0_add_x_q[10:0];

    // i_arrayidx255_atax0_append_upper_bits_x(BITJOIN,122)@6
    assign i_arrayidx255_atax0_append_upper_bits_x_q = {redist0_i_arrayidx255_atax0_upper_bits_x_merged_bit_select_b_1_q, i_arrayidx255_atax0_dupName_5_trunc_sel_x_b};

    // i_arrayidx255_atax17_vt_select_63(BITSELECT,73)@6
    assign i_arrayidx255_atax17_vt_select_63_b = i_arrayidx255_atax0_append_upper_bits_x_q[63:2];

    // i_arrayidx255_atax17_vt_join(BITJOIN,72)@6
    assign i_arrayidx255_atax17_vt_join_q = {i_arrayidx255_atax17_vt_select_63_b, i_arrayidx214_atax11_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_atax8_atax18(BLACKBOX,87)@6
    // out out_o_almost_empty@10
    // out out_o_empty@10
    // out out_o_readdata@10
    // out out_o_stall@10
    // out out_o_valid@10
    // out out_unnamed_atax8_atax_avm_address@20000000
    // out out_unnamed_atax8_atax_avm_burstcount@20000000
    // out out_unnamed_atax8_atax_avm_byteenable@20000000
    // out out_unnamed_atax8_atax_avm_enable@20000000
    // out out_unnamed_atax8_atax_avm_read@20000000
    // out out_unnamed_atax8_atax_avm_write@20000000
    // out out_unnamed_atax8_atax_avm_writedata@20000000
    atax_i_llvm_fpga_mem_unnamed_8_atax0 thei_llvm_fpga_mem_unnamed_atax8_atax18 (
        .in_almost_empty_in(GND_q),
        .in_empty_in(GND_q),
        .in_flush(in_flush),
        .in_i_address(i_arrayidx255_atax17_vt_join_q),
        .in_i_predicate(i_atax_b7_current_iter_isspec_atax5_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg10_q),
        .in_unnamed_atax8_atax_avm_readdata(in_unnamed_atax8_atax_avm_readdata),
        .in_unnamed_atax8_atax_avm_readdatavalid(in_unnamed_atax8_atax_avm_readdatavalid),
        .in_unnamed_atax8_atax_avm_waitrequest(in_unnamed_atax8_atax_avm_waitrequest),
        .in_unnamed_atax8_atax_avm_writeack(in_unnamed_atax8_atax_avm_writeack),
        .out_o_almost_empty(),
        .out_o_empty(),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_atax8_atax18_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_atax8_atax_avm_address(i_llvm_fpga_mem_unnamed_atax8_atax18_out_unnamed_atax8_atax_avm_address),
        .out_unnamed_atax8_atax_avm_burstcount(i_llvm_fpga_mem_unnamed_atax8_atax18_out_unnamed_atax8_atax_avm_burstcount),
        .out_unnamed_atax8_atax_avm_byteenable(i_llvm_fpga_mem_unnamed_atax8_atax18_out_unnamed_atax8_atax_avm_byteenable),
        .out_unnamed_atax8_atax_avm_enable(i_llvm_fpga_mem_unnamed_atax8_atax18_out_unnamed_atax8_atax_avm_enable),
        .out_unnamed_atax8_atax_avm_read(i_llvm_fpga_mem_unnamed_atax8_atax18_out_unnamed_atax8_atax_avm_read),
        .out_unnamed_atax8_atax_avm_write(i_llvm_fpga_mem_unnamed_atax8_atax18_out_unnamed_atax8_atax_avm_write),
        .out_unnamed_atax8_atax_avm_writedata(i_llvm_fpga_mem_unnamed_atax8_atax18_out_unnamed_atax8_atax_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,103)
    assign out_unnamed_atax8_atax_avm_address = i_llvm_fpga_mem_unnamed_atax8_atax18_out_unnamed_atax8_atax_avm_address;
    assign out_unnamed_atax8_atax_avm_enable = i_llvm_fpga_mem_unnamed_atax8_atax18_out_unnamed_atax8_atax_avm_enable;
    assign out_unnamed_atax8_atax_avm_read = i_llvm_fpga_mem_unnamed_atax8_atax18_out_unnamed_atax8_atax_avm_read;
    assign out_unnamed_atax8_atax_avm_write = i_llvm_fpga_mem_unnamed_atax8_atax18_out_unnamed_atax8_atax_avm_write;
    assign out_unnamed_atax8_atax_avm_writedata = i_llvm_fpga_mem_unnamed_atax8_atax18_out_unnamed_atax8_atax_avm_writedata;
    assign out_unnamed_atax8_atax_avm_byteenable = i_llvm_fpga_mem_unnamed_atax8_atax18_out_unnamed_atax8_atax_avm_byteenable;
    assign out_unnamed_atax8_atax_avm_burstcount = i_llvm_fpga_mem_unnamed_atax8_atax18_out_unnamed_atax8_atax_avm_burstcount;

    // dupName_0_regfree_osync_x(GPOUT,104)
    assign out_pipeline_dummy_out = i_llvm_fpga_pipeline_keep_going_atax6_out_pipeline_dummy_out;

    // redist25_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_6_offset(CONSTANT,384)
    assign redist25_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_6_offset_q = $unsigned(2'b11);

    // redist25_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_6_rdcnt(ADD,385)
    assign redist25_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_6_rdcnt_a = {1'b0, redist25_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_6_wraddr_q};
    assign redist25_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_6_rdcnt_b = {1'b0, redist25_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_6_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist25_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_6_rdcnt_o <= $unsigned(redist25_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_6_rdcnt_a) + $unsigned(redist25_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_6_rdcnt_b);
        end
    end
    assign redist25_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_6_rdcnt_q = redist25_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_6_rdcnt_o[2:0];

    // redist9_sync_together111_aunroll_x_in_c0_eni11137_5_tpl_4_inputreg0(DELAY,372)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist9_sync_together111_aunroll_x_in_c0_eni11137_5_tpl_4_inputreg0_q <= $unsigned(in_c0_eni11137_5_tpl);
        end
    end

    // redist9_sync_together111_aunroll_x_in_c0_eni11137_5_tpl_4(DELAY,338)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist9_sync_together111_aunroll_x_in_c0_eni11137_5_tpl_4_delay_0 <= $unsigned(redist9_sync_together111_aunroll_x_in_c0_eni11137_5_tpl_4_inputreg0_q);
            redist9_sync_together111_aunroll_x_in_c0_eni11137_5_tpl_4_delay_1 <= redist9_sync_together111_aunroll_x_in_c0_eni11137_5_tpl_4_delay_0;
            redist9_sync_together111_aunroll_x_in_c0_eni11137_5_tpl_4_q <= redist9_sync_together111_aunroll_x_in_c0_eni11137_5_tpl_4_delay_1;
        end
    end

    // valid_fanout_reg15(REG,221)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg14(REG,220)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist15_sync_together111_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i32_add42_push35_atax0_i_llvm_fpga_push_i32_add42_push35_atax1_x(FIFODELAY,186)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i32_add42_push35_atax0_i_llvm_fpga_push_i32_add42_push35_atax1_x_i_stall = ~ (valid_fanout_reg15_q & i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_inv_pred_x_q);
    assign i_llvm_fpga_push_i32_add42_push35_atax0_i_llvm_fpga_push_i32_add42_push35_atax1_x_i_valid = valid_fanout_reg14_q & redist21_i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i32_add42_push35_atax0_i_llvm_fpga_push_i32_add42_push35_atax1_x_i_data = i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q;
    assign i_llvm_fpga_push_i32_add42_push35_atax0_i_llvm_fpga_push_i32_add42_push35_atax1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_add42_push35_atax0_i_llvm_fpga_push_i32_add42_push35_atax1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_add42_push35_atax0_i_llvm_fpga_push_i32_add42_push35_atax1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_add42_push35_atax0_i_llvm_fpga_push_i32_add42_push35_atax1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_add42_push35_atax0_i_llvm_fpga_push_i32_add42_push35_atax1_x (
        .i_valid(i_llvm_fpga_push_i32_add42_push35_atax0_i_llvm_fpga_push_i32_add42_push35_atax1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_add42_push35_atax0_i_llvm_fpga_push_i32_add42_push35_atax1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q),
        .o_data(i_llvm_fpga_push_i32_add42_push35_atax0_i_llvm_fpga_push_i32_add42_push35_atax1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x(MUX,151)@4
    assign i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_s = redist35_i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_s or i_llvm_fpga_push_i32_add42_push35_atax0_i_llvm_fpga_push_i32_add42_push35_atax1_x_o_data or redist9_sync_together111_aunroll_x_in_c0_eni11137_5_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q = i_llvm_fpga_push_i32_add42_push35_atax0_i_llvm_fpga_push_i32_add42_push35_atax1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q = redist9_sync_together111_aunroll_x_in_c0_eni11137_5_tpl_4_q;
            default : i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q = 32'b0;
        endcase
    end

    // redist25_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_6_inputreg0(DELAY,380)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist25_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_6_inputreg0_q <= $unsigned(i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q);
        end
    end

    // redist25_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_6_wraddr(COUNTER,383)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist25_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_6_wraddr_i <= $unsigned(redist25_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_6_wraddr_i) + $unsigned(2'd1);
        end
    end
    assign redist25_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_6_wraddr_q = redist25_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_6_wraddr_i[1:0];

    // redist25_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_6_mem(DUALMEM,382)
    assign redist25_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_6_mem_ia = $unsigned(redist25_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_6_inputreg0_q);
    assign redist25_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_6_mem_aa = redist25_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_6_wraddr_q;
    assign redist25_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_6_mem_ab = redist25_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_6_rdcnt_q[1:0];
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
        .outdata_reg_b("CLOCK0"),
        .outdata_sclr_b("NONE"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Stratix 10")
    ) redist25_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_6_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist25_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_6_mem_aa),
        .data_a(redist25_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist25_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_6_mem_ab),
        .q_b(redist25_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_6_mem_iq),
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
    assign redist25_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_6_mem_q = redist25_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_6_mem_iq[31:0];

    // redist25_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_6_outputreg0(DELAY,381)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist25_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_6_outputreg0_q <= $unsigned(redist25_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_6_mem_q);
        end
    end

    // i_mul26_atax20_bs3_merged_bit_select(BITSELECT,328)@10
    assign i_mul26_atax20_bs3_merged_bit_select_b = redist25_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_6_outputreg0_q[31:18];
    assign i_mul26_atax20_bs3_merged_bit_select_c = redist25_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_6_outputreg0_q[17:0];

    // i_mul26_atax20_bs1_merged_bit_select(BITSELECT,326)@10
    assign i_mul26_atax20_bs1_merged_bit_select_b = i_llvm_fpga_mem_unnamed_atax8_atax18_out_o_readdata[31:18];
    assign i_mul26_atax20_bs1_merged_bit_select_c = i_llvm_fpga_mem_unnamed_atax8_atax18_out_o_readdata[17:0];

    // i_mul26_atax20_ma5_cma(CHAINMULTADD,323)@10 + 5
    // out q@16
    assign i_mul26_atax20_ma5_cma_reset = ~ (resetn);
    assign i_mul26_atax20_ma5_cma_ena0 = 1'b1;
    assign i_mul26_atax20_ma5_cma_ena1 = i_mul26_atax20_ma5_cma_ena0;
    assign i_mul26_atax20_ma5_cma_ena2 = i_mul26_atax20_ma5_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul26_atax20_ma5_cma_ah[0] <= i_mul26_atax20_bs1_merged_bit_select_b;
            i_mul26_atax20_ma5_cma_ah[1] <= i_mul26_atax20_bs3_merged_bit_select_b;
            i_mul26_atax20_ma5_cma_ch[0] <= i_mul26_atax20_bs3_merged_bit_select_c;
            i_mul26_atax20_ma5_cma_ch[1] <= i_mul26_atax20_bs1_merged_bit_select_c;
        end
    end

    assign i_mul26_atax20_ma5_cma_a0 = i_mul26_atax20_ma5_cma_ah[0];
    assign i_mul26_atax20_ma5_cma_c0 = i_mul26_atax20_ma5_cma_ch[0];
    assign i_mul26_atax20_ma5_cma_a1 = i_mul26_atax20_ma5_cma_ah[1];
    assign i_mul26_atax20_ma5_cma_c1 = i_mul26_atax20_ma5_cma_ch[1];
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
    ) i_mul26_atax20_ma5_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul26_atax20_ma5_cma_ena2, i_mul26_atax20_ma5_cma_ena1, i_mul26_atax20_ma5_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul26_atax20_ma5_cma_a1),
        .by(i_mul26_atax20_ma5_cma_a0),
        .ax(i_mul26_atax20_ma5_cma_c1),
        .bx(i_mul26_atax20_ma5_cma_c0),
        .resulta(i_mul26_atax20_ma5_cma_s0),
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
    i_mul26_atax20_ma5_cma_delay ( .xin(i_mul26_atax20_ma5_cma_s0), .xout(i_mul26_atax20_ma5_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul26_atax20_ma5_cma_q = $unsigned(i_mul26_atax20_ma5_cma_qq[32:0]);

    // redist1_i_mul26_atax20_ma5_cma_q_1(DELAY,330)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_i_mul26_atax20_ma5_cma_q_1_q <= $unsigned(i_mul26_atax20_ma5_cma_q);
        end
    end

    // i_mul26_atax20_sums_align_1(BITSHIFT,272)@17
    assign i_mul26_atax20_sums_align_1_qint = { redist1_i_mul26_atax20_ma5_cma_q_1_q, 18'b000000000000000000 };
    assign i_mul26_atax20_sums_align_1_q = i_mul26_atax20_sums_align_1_qint[50:0];

    // i_mul26_atax20_bjB4(BITJOIN,262)@10
    assign i_mul26_atax20_bjB4_q = {GND_q, i_mul26_atax20_bs3_merged_bit_select_b};

    // i_mul26_atax20_bjA2(BITJOIN,260)@10
    assign i_mul26_atax20_bjA2_q = {GND_q, i_mul26_atax20_bs1_merged_bit_select_b};

    // i_mul26_atax20_im0_cma(CHAINMULTADD,321)@10 + 5
    // out q@16
    assign i_mul26_atax20_im0_cma_reset = ~ (resetn);
    assign i_mul26_atax20_im0_cma_ena0 = 1'b1;
    assign i_mul26_atax20_im0_cma_ena1 = i_mul26_atax20_im0_cma_ena0;
    assign i_mul26_atax20_im0_cma_ena2 = i_mul26_atax20_im0_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul26_atax20_im0_cma_ah[0] <= i_mul26_atax20_bjA2_q;
            i_mul26_atax20_im0_cma_ch[0] <= i_mul26_atax20_bjB4_q;
        end
    end

    assign i_mul26_atax20_im0_cma_a0 = $unsigned(i_mul26_atax20_im0_cma_ah[0]);
    assign i_mul26_atax20_im0_cma_c0 = $unsigned(i_mul26_atax20_im0_cma_ch[0]);
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
    ) i_mul26_atax20_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul26_atax20_im0_cma_ena2, i_mul26_atax20_im0_cma_ena1, i_mul26_atax20_im0_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul26_atax20_im0_cma_a0),
        .ax(i_mul26_atax20_im0_cma_c0),
        .resulta(i_mul26_atax20_im0_cma_s0),
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
    i_mul26_atax20_im0_cma_delay ( .xin(i_mul26_atax20_im0_cma_s0), .xout(i_mul26_atax20_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul26_atax20_im0_cma_q = $unsigned(i_mul26_atax20_im0_cma_qq[29:0]);

    // redist3_i_mul26_atax20_im0_cma_q_1(DELAY,332)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_i_mul26_atax20_im0_cma_q_1_q <= $unsigned(i_mul26_atax20_im0_cma_q);
        end
    end

    // i_mul26_atax20_im10_cma(CHAINMULTADD,322)@10 + 5
    // out q@16
    assign i_mul26_atax20_im10_cma_reset = ~ (resetn);
    assign i_mul26_atax20_im10_cma_ena0 = 1'b1;
    assign i_mul26_atax20_im10_cma_ena1 = i_mul26_atax20_im10_cma_ena0;
    assign i_mul26_atax20_im10_cma_ena2 = i_mul26_atax20_im10_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul26_atax20_im10_cma_ah[0] <= i_mul26_atax20_bs1_merged_bit_select_c;
            i_mul26_atax20_im10_cma_ch[0] <= i_mul26_atax20_bs3_merged_bit_select_c;
        end
    end

    assign i_mul26_atax20_im10_cma_a0 = i_mul26_atax20_im10_cma_ah[0];
    assign i_mul26_atax20_im10_cma_c0 = i_mul26_atax20_im10_cma_ch[0];
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
    ) i_mul26_atax20_im10_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul26_atax20_im10_cma_ena2, i_mul26_atax20_im10_cma_ena1, i_mul26_atax20_im10_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul26_atax20_im10_cma_a0),
        .ax(i_mul26_atax20_im10_cma_c0),
        .resulta(i_mul26_atax20_im10_cma_s0),
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
    i_mul26_atax20_im10_cma_delay ( .xin(i_mul26_atax20_im10_cma_s0), .xout(i_mul26_atax20_im10_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul26_atax20_im10_cma_q = $unsigned(i_mul26_atax20_im10_cma_qq[35:0]);

    // redist2_i_mul26_atax20_im10_cma_q_1(DELAY,331)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_i_mul26_atax20_im10_cma_q_1_q <= $unsigned(i_mul26_atax20_im10_cma_q);
        end
    end

    // i_mul26_atax20_sums_join_0(BITJOIN,271)@17
    assign i_mul26_atax20_sums_join_0_q = {redist3_i_mul26_atax20_im0_cma_q_1_q, redist2_i_mul26_atax20_im10_cma_q_1_q};

    // i_mul26_atax20_sums_result_add_0_0(ADD,274)@17
    assign i_mul26_atax20_sums_result_add_0_0_a = {1'b0, i_mul26_atax20_sums_join_0_q};
    assign i_mul26_atax20_sums_result_add_0_0_b = {16'b0000000000000000, i_mul26_atax20_sums_align_1_q};
    assign i_mul26_atax20_sums_result_add_0_0_o = $unsigned(i_mul26_atax20_sums_result_add_0_0_a) + $unsigned(i_mul26_atax20_sums_result_add_0_0_b);
    assign i_mul26_atax20_sums_result_add_0_0_q = i_mul26_atax20_sums_result_add_0_0_o[66:0];

    // bgTrunc_i_mul26_atax20_sel_x(BITSELECT,100)@17
    assign bgTrunc_i_mul26_atax20_sel_x_in = i_mul26_atax20_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul26_atax20_sel_x_b = bgTrunc_i_mul26_atax20_sel_x_in[31:0];

    // redist32_bgTrunc_i_mul26_atax20_sel_x_b_1(DELAY,361)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist32_bgTrunc_i_mul26_atax20_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul26_atax20_sel_x_b);
        end
    end

    // i_add27_atax21(ADD,67)@18
    assign i_add27_atax21_a = {1'b0, redist32_bgTrunc_i_mul26_atax20_sel_x_b_1_q};
    assign i_add27_atax21_b = {1'b0, i_llvm_fpga_mem_unnamed_atax7_atax15_out_o_readdata};
    assign i_add27_atax21_o = $unsigned(i_add27_atax21_a) + $unsigned(i_add27_atax21_b);
    assign i_add27_atax21_q = i_add27_atax21_o[32:0];

    // bgTrunc_i_add27_atax21_sel_x(BITSELECT,97)@18
    assign bgTrunc_i_add27_atax21_sel_x_b = i_add27_atax21_q[31:0];

    // redist20_sync_together111_aunroll_x_in_i_valid_17(DELAY,349)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist20_sync_together111_aunroll_x_in_i_valid_17_delay_0 <= $unsigned(redist19_sync_together111_aunroll_x_in_i_valid_13_q);
        end
    end
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist20_sync_together111_aunroll_x_in_i_valid_17_delay_1 <= '0;
        end
        else
        begin
            redist20_sync_together111_aunroll_x_in_i_valid_17_delay_1 <= redist20_sync_together111_aunroll_x_in_i_valid_17_delay_0;
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist20_sync_together111_aunroll_x_in_i_valid_17_delay_2 <= redist20_sync_together111_aunroll_x_in_i_valid_17_delay_1;
        end
    end
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist20_sync_together111_aunroll_x_in_i_valid_17_q <= '0;
        end
        else
        begin
            redist20_sync_together111_aunroll_x_in_i_valid_17_q <= redist20_sync_together111_aunroll_x_in_i_valid_17_delay_2;
        end
    end

    // valid_fanout_reg12(REG,218)@17 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist20_sync_together111_aunroll_x_in_i_valid_17_q);
        end
    end

    // redist39_i_atax_b7_current_iter_isspec_atax5_q_12(DELAY,368)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist39_i_atax_b7_current_iter_isspec_atax5_q_12_delay_0 <= $unsigned(redist38_i_atax_b7_current_iter_isspec_atax5_q_8_q);
            redist39_i_atax_b7_current_iter_isspec_atax5_q_12_delay_1 <= redist39_i_atax_b7_current_iter_isspec_atax5_q_12_delay_0;
            redist39_i_atax_b7_current_iter_isspec_atax5_q_12_delay_2 <= redist39_i_atax_b7_current_iter_isspec_atax5_q_12_delay_1;
            redist39_i_atax_b7_current_iter_isspec_atax5_q_12_q <= redist39_i_atax_b7_current_iter_isspec_atax5_q_12_delay_2;
        end
    end

    // redist41_i_arrayidx214_atax11_vt_join_q_4(DELAY,370)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist41_i_arrayidx214_atax11_vt_join_q_4_delay_0 <= $unsigned(i_arrayidx214_atax11_vt_join_q);
            redist41_i_arrayidx214_atax11_vt_join_q_4_delay_1 <= redist41_i_arrayidx214_atax11_vt_join_q_4_delay_0;
            redist41_i_arrayidx214_atax11_vt_join_q_4_q <= redist41_i_arrayidx214_atax11_vt_join_q_4_delay_1;
        end
    end

    // redist41_i_arrayidx214_atax11_vt_join_q_4_outputreg0(DELAY,392)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist41_i_arrayidx214_atax11_vt_join_q_4_outputreg0_q <= $unsigned(redist41_i_arrayidx214_atax11_vt_join_q_4_q);
        end
    end

    // i_llvm_fpga_mem_memdep_1_atax22(BLACKBOX,85)@18
    // out out_memdep_1_atax_avm_address@20000000
    // out out_memdep_1_atax_avm_burstcount@20000000
    // out out_memdep_1_atax_avm_byteenable@20000000
    // out out_memdep_1_atax_avm_enable@20000000
    // out out_memdep_1_atax_avm_read@20000000
    // out out_memdep_1_atax_avm_write@20000000
    // out out_memdep_1_atax_avm_writedata@20000000
    // out out_o_almost_empty@19
    // out out_o_empty@19
    // out out_o_stall@19
    // out out_o_valid@19
    // out out_o_writeack@19
    atax_i_llvm_fpga_mem_memdep_1_0 thei_llvm_fpga_mem_memdep_1_atax22 (
        .in_almost_empty_in(GND_q),
        .in_empty_in(GND_q),
        .in_flush(in_flush),
        .in_i_address(redist41_i_arrayidx214_atax11_vt_join_q_4_outputreg0_q),
        .in_i_predicate(redist39_i_atax_b7_current_iter_isspec_atax5_q_12_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg12_q),
        .in_i_writedata(bgTrunc_i_add27_atax21_sel_x_b),
        .in_memdep_1_atax_avm_readdata(in_memdep_1_atax_avm_readdata),
        .in_memdep_1_atax_avm_readdatavalid(in_memdep_1_atax_avm_readdatavalid),
        .in_memdep_1_atax_avm_waitrequest(in_memdep_1_atax_avm_waitrequest),
        .in_memdep_1_atax_avm_writeack(in_memdep_1_atax_avm_writeack),
        .out_memdep_1_atax_avm_address(i_llvm_fpga_mem_memdep_1_atax22_out_memdep_1_atax_avm_address),
        .out_memdep_1_atax_avm_burstcount(i_llvm_fpga_mem_memdep_1_atax22_out_memdep_1_atax_avm_burstcount),
        .out_memdep_1_atax_avm_byteenable(i_llvm_fpga_mem_memdep_1_atax22_out_memdep_1_atax_avm_byteenable),
        .out_memdep_1_atax_avm_enable(i_llvm_fpga_mem_memdep_1_atax22_out_memdep_1_atax_avm_enable),
        .out_memdep_1_atax_avm_read(i_llvm_fpga_mem_memdep_1_atax22_out_memdep_1_atax_avm_read),
        .out_memdep_1_atax_avm_write(i_llvm_fpga_mem_memdep_1_atax22_out_memdep_1_atax_avm_write),
        .out_memdep_1_atax_avm_writedata(i_llvm_fpga_mem_memdep_1_atax22_out_memdep_1_atax_avm_writedata),
        .out_o_almost_empty(),
        .out_o_empty(),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(i_llvm_fpga_mem_memdep_1_atax22_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_ext_sig_sync_out_x(GPOUT,106)
    assign out_memdep_1_atax_avm_address = i_llvm_fpga_mem_memdep_1_atax22_out_memdep_1_atax_avm_address;
    assign out_memdep_1_atax_avm_enable = i_llvm_fpga_mem_memdep_1_atax22_out_memdep_1_atax_avm_enable;
    assign out_memdep_1_atax_avm_read = i_llvm_fpga_mem_memdep_1_atax22_out_memdep_1_atax_avm_read;
    assign out_memdep_1_atax_avm_write = i_llvm_fpga_mem_memdep_1_atax22_out_memdep_1_atax_avm_write;
    assign out_memdep_1_atax_avm_writedata = i_llvm_fpga_mem_memdep_1_atax22_out_memdep_1_atax_avm_writedata;
    assign out_memdep_1_atax_avm_byteenable = i_llvm_fpga_mem_memdep_1_atax22_out_memdep_1_atax_avm_byteenable;
    assign out_memdep_1_atax_avm_burstcount = i_llvm_fpga_mem_memdep_1_atax22_out_memdep_1_atax_avm_burstcount;

    // dupName_1_regfree_osync_x(GPOUT,107)
    assign out_pipeline_forked_out = i_llvm_fpga_pipeline_keep_going_atax6_out_pipeline_forked_out;

    // dupName_2_regfree_osync_x(GPOUT,108)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_atax6_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,206)@17 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist20_sync_together111_aunroll_x_in_i_valid_17_q);
        end
    end

    // redist5_valid_fanout_reg0_q_1(DELAY,334)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist5_valid_fanout_reg0_q_1_q <= '0;
        end
        else
        begin
            redist5_valid_fanout_reg0_q_1_q <= $unsigned(valid_fanout_reg0_q);
        end
    end

    // redist14_sync_together111_aunroll_x_in_c0_eni11137_11_tpl_19(DELAY,343)
    dspba_delay_ver #( .width(1), .depth(19), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist14_sync_together111_aunroll_x_in_c0_eni11137_11_tpl_19 ( .xin(in_c0_eni11137_11_tpl), .xout(redist14_sync_together111_aunroll_x_in_c0_eni11137_11_tpl_19_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist13_sync_together111_aunroll_x_in_c0_eni11137_10_tpl_19(DELAY,342)
    dspba_delay_ver #( .width(1), .depth(19), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist13_sync_together111_aunroll_x_in_c0_eni11137_10_tpl_19 ( .xin(in_c0_eni11137_10_tpl), .xout(redist13_sync_together111_aunroll_x_in_c0_eni11137_10_tpl_19_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist12_sync_together111_aunroll_x_in_c0_eni11137_9_tpl_4(DELAY,341)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist12_sync_together111_aunroll_x_in_c0_eni11137_9_tpl_4_delay_0 <= $unsigned(in_c0_eni11137_9_tpl);
            redist12_sync_together111_aunroll_x_in_c0_eni11137_9_tpl_4_delay_1 <= redist12_sync_together111_aunroll_x_in_c0_eni11137_9_tpl_4_delay_0;
            redist12_sync_together111_aunroll_x_in_c0_eni11137_9_tpl_4_delay_2 <= redist12_sync_together111_aunroll_x_in_c0_eni11137_9_tpl_4_delay_1;
            redist12_sync_together111_aunroll_x_in_c0_eni11137_9_tpl_4_q <= redist12_sync_together111_aunroll_x_in_c0_eni11137_9_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_push_i1_notcmp1539_push33_atax0_element_extension2_x(BITJOIN,182)@5
    assign i_llvm_fpga_push_i1_notcmp1539_push33_atax0_element_extension2_x_q = {i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_c_i7_03_x_q, i_llvm_fpga_pop_i1_notcmp1539_pop33_atax0_i_llvm_fpga_pop_i1_notcmp1539_pop33_atax42_mux_x_q};

    // valid_fanout_reg38(REG,244)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg38_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg37(REG,243)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg37_q <= $unsigned(redist16_sync_together111_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp1539_push33_atax0_i_llvm_fpga_push_i1_notcmp1539_push33_atax1_x(FIFODELAY,183)@1
    // in i_valid@4
    // in i_write_pred@4
    // in i_data@5
    // out o_data@4
    assign i_llvm_fpga_push_i1_notcmp1539_push33_atax0_i_llvm_fpga_push_i1_notcmp1539_push33_atax1_x_i_stall = ~ (valid_fanout_reg38_q & i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_notcmp1539_push33_atax0_i_llvm_fpga_push_i1_notcmp1539_push33_atax1_x_i_valid = valid_fanout_reg37_q & redist22_i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_inv_pred_x_q_3_q;
    assign i_llvm_fpga_push_i1_notcmp1539_push33_atax0_i_llvm_fpga_push_i1_notcmp1539_push33_atax1_x_i_data = i_llvm_fpga_push_i1_notcmp1539_push33_atax0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_notcmp1539_push33_atax0_i_llvm_fpga_push_i1_notcmp1539_push33_atax1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_notcmp1539_push33_atax0_i_llvm_fpga_push_i1_notcmp1539_push33_atax1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_notcmp1539_push33_atax0_i_llvm_fpga_push_i1_notcmp1539_push33_atax1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_notcmp1539_push33_atax0_i_llvm_fpga_push_i1_notcmp1539_push33_atax1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_notcmp1539_push33_atax0_i_llvm_fpga_push_i1_notcmp1539_push33_atax1_x (
        .i_valid(i_llvm_fpga_push_i1_notcmp1539_push33_atax0_i_llvm_fpga_push_i1_notcmp1539_push33_atax1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_notcmp1539_push33_atax0_i_llvm_fpga_push_i1_notcmp1539_push33_atax1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_notcmp1539_push33_atax0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_notcmp1539_push33_atax0_i_llvm_fpga_push_i1_notcmp1539_push33_atax1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_notcmp1539_push33_atax0_adapt_scalar_trunc4_sel_x(BITSELECT,185)@4
    assign i_llvm_fpga_push_i1_notcmp1539_push33_atax0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_notcmp1539_push33_atax0_i_llvm_fpga_push_i1_notcmp1539_push33_atax1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_notcmp1539_pop33_atax0_i_llvm_fpga_pop_i1_notcmp1539_pop33_atax42_mux_x(MUX,150)@4 + 1
    assign i_llvm_fpga_pop_i1_notcmp1539_pop33_atax0_i_llvm_fpga_pop_i1_notcmp1539_pop33_atax42_mux_x_s = redist35_i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out_4_q;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_llvm_fpga_pop_i1_notcmp1539_pop33_atax0_i_llvm_fpga_pop_i1_notcmp1539_pop33_atax42_mux_x_s)
                1'b0 : i_llvm_fpga_pop_i1_notcmp1539_pop33_atax0_i_llvm_fpga_pop_i1_notcmp1539_pop33_atax42_mux_x_q <= i_llvm_fpga_push_i1_notcmp1539_push33_atax0_adapt_scalar_trunc4_sel_x_b;
                1'b1 : i_llvm_fpga_pop_i1_notcmp1539_pop33_atax0_i_llvm_fpga_pop_i1_notcmp1539_pop33_atax42_mux_x_q <= redist12_sync_together111_aunroll_x_in_c0_eni11137_9_tpl_4_q;
                default : i_llvm_fpga_pop_i1_notcmp1539_pop33_atax0_i_llvm_fpga_pop_i1_notcmp1539_pop33_atax42_mux_x_q <= 1'b0;
            endcase
        end
    end

    // redist27_i_llvm_fpga_pop_i1_notcmp1539_pop33_atax0_i_llvm_fpga_pop_i1_notcmp1539_pop33_atax42_mux_x_q_15(DELAY,356)
    dspba_delay_ver #( .width(1), .depth(14), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist27_i_llvm_fpga_pop_i1_notcmp1539_pop33_atax0_i_llvm_fpga_pop_i1_notcmp1539_pop33_atax42_mux_x_q_15 ( .xin(i_llvm_fpga_pop_i1_notcmp1539_pop33_atax0_i_llvm_fpga_pop_i1_notcmp1539_pop33_atax42_mux_x_q), .xout(redist27_i_llvm_fpga_pop_i1_notcmp1539_pop33_atax0_i_llvm_fpga_pop_i1_notcmp1539_pop33_atax42_mux_x_q_15_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist11_sync_together111_aunroll_x_in_c0_eni11137_8_tpl_4(DELAY,340)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist11_sync_together111_aunroll_x_in_c0_eni11137_8_tpl_4_delay_0 <= $unsigned(in_c0_eni11137_8_tpl);
            redist11_sync_together111_aunroll_x_in_c0_eni11137_8_tpl_4_delay_1 <= redist11_sync_together111_aunroll_x_in_c0_eni11137_8_tpl_4_delay_0;
            redist11_sync_together111_aunroll_x_in_c0_eni11137_8_tpl_4_delay_2 <= redist11_sync_together111_aunroll_x_in_c0_eni11137_8_tpl_4_delay_1;
            redist11_sync_together111_aunroll_x_in_c0_eni11137_8_tpl_4_q <= redist11_sync_together111_aunroll_x_in_c0_eni11137_8_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_push_i1_exitcond937_push32_atax0_element_extension2_x(BITJOIN,164)@5
    assign i_llvm_fpga_push_i1_exitcond937_push32_atax0_element_extension2_x_q = {i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_c_i7_03_x_q, i_llvm_fpga_pop_i1_exitcond937_pop32_atax0_i_llvm_fpga_pop_i1_exitcond937_pop32_atax40_mux_x_q};

    // valid_fanout_reg35(REG,241)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg35_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg34(REG,240)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg34_q <= $unsigned(redist16_sync_together111_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_exitcond937_push32_atax0_i_llvm_fpga_push_i1_exitcond937_push32_atax1_x(FIFODELAY,165)@1
    // in i_valid@4
    // in i_write_pred@4
    // in i_data@5
    // out o_data@4
    assign i_llvm_fpga_push_i1_exitcond937_push32_atax0_i_llvm_fpga_push_i1_exitcond937_push32_atax1_x_i_stall = ~ (valid_fanout_reg35_q & i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_exitcond937_push32_atax0_i_llvm_fpga_push_i1_exitcond937_push32_atax1_x_i_valid = valid_fanout_reg34_q & redist22_i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_inv_pred_x_q_3_q;
    assign i_llvm_fpga_push_i1_exitcond937_push32_atax0_i_llvm_fpga_push_i1_exitcond937_push32_atax1_x_i_data = i_llvm_fpga_push_i1_exitcond937_push32_atax0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_exitcond937_push32_atax0_i_llvm_fpga_push_i1_exitcond937_push32_atax1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_exitcond937_push32_atax0_i_llvm_fpga_push_i1_exitcond937_push32_atax1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_exitcond937_push32_atax0_i_llvm_fpga_push_i1_exitcond937_push32_atax1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_exitcond937_push32_atax0_i_llvm_fpga_push_i1_exitcond937_push32_atax1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_exitcond937_push32_atax0_i_llvm_fpga_push_i1_exitcond937_push32_atax1_x (
        .i_valid(i_llvm_fpga_push_i1_exitcond937_push32_atax0_i_llvm_fpga_push_i1_exitcond937_push32_atax1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_exitcond937_push32_atax0_i_llvm_fpga_push_i1_exitcond937_push32_atax1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_exitcond937_push32_atax0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_exitcond937_push32_atax0_i_llvm_fpga_push_i1_exitcond937_push32_atax1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_exitcond937_push32_atax0_adapt_scalar_trunc4_sel_x(BITSELECT,167)@4
    assign i_llvm_fpga_push_i1_exitcond937_push32_atax0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_exitcond937_push32_atax0_i_llvm_fpga_push_i1_exitcond937_push32_atax1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_exitcond937_pop32_atax0_i_llvm_fpga_pop_i1_exitcond937_pop32_atax40_mux_x(MUX,147)@4 + 1
    assign i_llvm_fpga_pop_i1_exitcond937_pop32_atax0_i_llvm_fpga_pop_i1_exitcond937_pop32_atax40_mux_x_s = redist35_i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out_4_q;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_llvm_fpga_pop_i1_exitcond937_pop32_atax0_i_llvm_fpga_pop_i1_exitcond937_pop32_atax40_mux_x_s)
                1'b0 : i_llvm_fpga_pop_i1_exitcond937_pop32_atax0_i_llvm_fpga_pop_i1_exitcond937_pop32_atax40_mux_x_q <= i_llvm_fpga_push_i1_exitcond937_push32_atax0_adapt_scalar_trunc4_sel_x_b;
                1'b1 : i_llvm_fpga_pop_i1_exitcond937_pop32_atax0_i_llvm_fpga_pop_i1_exitcond937_pop32_atax40_mux_x_q <= redist11_sync_together111_aunroll_x_in_c0_eni11137_8_tpl_4_q;
                default : i_llvm_fpga_pop_i1_exitcond937_pop32_atax0_i_llvm_fpga_pop_i1_exitcond937_pop32_atax40_mux_x_q <= 1'b0;
            endcase
        end
    end

    // redist28_i_llvm_fpga_pop_i1_exitcond937_pop32_atax0_i_llvm_fpga_pop_i1_exitcond937_pop32_atax40_mux_x_q_15(DELAY,357)
    dspba_delay_ver #( .width(1), .depth(14), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist28_i_llvm_fpga_pop_i1_exitcond937_pop32_atax0_i_llvm_fpga_pop_i1_exitcond937_pop32_atax40_mux_x_q_15 ( .xin(i_llvm_fpga_pop_i1_exitcond937_pop32_atax0_i_llvm_fpga_pop_i1_exitcond937_pop32_atax40_mux_x_q), .xout(redist28_i_llvm_fpga_pop_i1_exitcond937_pop32_atax0_i_llvm_fpga_pop_i1_exitcond937_pop32_atax40_mux_x_q_15_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist24_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax0_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax38_mux_x_q_15_offset(CONSTANT,378)
    assign redist24_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax0_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax38_mux_x_q_15_offset_q = $unsigned(4'b0110);

    // redist24_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax0_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax38_mux_x_q_15_rdcnt(ADD,379)
    assign redist24_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax0_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax38_mux_x_q_15_rdcnt_a = {1'b0, redist24_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax0_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax38_mux_x_q_15_wraddr_q};
    assign redist24_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax0_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax38_mux_x_q_15_rdcnt_b = {1'b0, redist24_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax0_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax38_mux_x_q_15_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist24_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax0_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax38_mux_x_q_15_rdcnt_o <= $unsigned(redist24_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax0_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax38_mux_x_q_15_rdcnt_a) + $unsigned(redist24_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax0_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax38_mux_x_q_15_rdcnt_b);
        end
    end
    assign redist24_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax0_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax38_mux_x_q_15_rdcnt_q = redist24_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax0_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax38_mux_x_q_15_rdcnt_o[4:0];

    // redist10_sync_together111_aunroll_x_in_c0_eni11137_7_tpl_4_inputreg0(DELAY,373)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_sync_together111_aunroll_x_in_c0_eni11137_7_tpl_4_inputreg0_q <= $unsigned(in_c0_eni11137_7_tpl);
        end
    end

    // redist10_sync_together111_aunroll_x_in_c0_eni11137_7_tpl_4(DELAY,339)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_sync_together111_aunroll_x_in_c0_eni11137_7_tpl_4_delay_0 <= $unsigned(redist10_sync_together111_aunroll_x_in_c0_eni11137_7_tpl_4_inputreg0_q);
            redist10_sync_together111_aunroll_x_in_c0_eni11137_7_tpl_4_delay_1 <= redist10_sync_together111_aunroll_x_in_c0_eni11137_7_tpl_4_delay_0;
            redist10_sync_together111_aunroll_x_in_c0_eni11137_7_tpl_4_q <= redist10_sync_together111_aunroll_x_in_c0_eni11137_7_tpl_4_delay_1;
        end
    end

    // valid_fanout_reg32(REG,238)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg32_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg31(REG,237)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg31_q <= $unsigned(redist15_sync_together111_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_p67i32_arrayidx135_push31_atax0_i_llvm_fpga_push_p67i32_arrayidx135_push31_atax1_x(FIFODELAY,201)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_p67i32_arrayidx135_push31_atax0_i_llvm_fpga_push_p67i32_arrayidx135_push31_atax1_x_i_stall = ~ (valid_fanout_reg32_q & i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_inv_pred_x_q);
    assign i_llvm_fpga_push_p67i32_arrayidx135_push31_atax0_i_llvm_fpga_push_p67i32_arrayidx135_push31_atax1_x_i_valid = valid_fanout_reg31_q & redist21_i_llvm_fpga_push_i1_atax_b7_next_iter_isreal_push_atax0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_p67i32_arrayidx135_push31_atax0_i_llvm_fpga_push_p67i32_arrayidx135_push31_atax1_x_i_data = i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax0_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax38_mux_x_q;
    assign i_llvm_fpga_push_p67i32_arrayidx135_push31_atax0_i_llvm_fpga_push_p67i32_arrayidx135_push31_atax1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_p67i32_arrayidx135_push31_atax0_i_llvm_fpga_push_p67i32_arrayidx135_push31_atax1_x_i_valid[0];
    assign i_llvm_fpga_push_p67i32_arrayidx135_push31_atax0_i_llvm_fpga_push_p67i32_arrayidx135_push31_atax1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_p67i32_arrayidx135_push31_atax0_i_llvm_fpga_push_p67i32_arrayidx135_push31_atax1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_p67i32_arrayidx135_push31_atax0_i_llvm_fpga_push_p67i32_arrayidx135_push31_atax1_x (
        .i_valid(i_llvm_fpga_push_p67i32_arrayidx135_push31_atax0_i_llvm_fpga_push_p67i32_arrayidx135_push31_atax1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_p67i32_arrayidx135_push31_atax0_i_llvm_fpga_push_p67i32_arrayidx135_push31_atax1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax0_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax38_mux_x_q),
        .o_data(i_llvm_fpga_push_p67i32_arrayidx135_push31_atax0_i_llvm_fpga_push_p67i32_arrayidx135_push31_atax1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax0_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax38_mux_x(MUX,155)@4
    assign i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax0_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax38_mux_x_s = redist35_i_llvm_fpga_forked_atax_b7_forked_atax3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax0_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax38_mux_x_s or i_llvm_fpga_push_p67i32_arrayidx135_push31_atax0_i_llvm_fpga_push_p67i32_arrayidx135_push31_atax1_x_o_data or redist10_sync_together111_aunroll_x_in_c0_eni11137_7_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax0_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax38_mux_x_s)
            1'b0 : i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax0_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax38_mux_x_q = i_llvm_fpga_push_p67i32_arrayidx135_push31_atax0_i_llvm_fpga_push_p67i32_arrayidx135_push31_atax1_x_o_data;
            1'b1 : i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax0_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax38_mux_x_q = redist10_sync_together111_aunroll_x_in_c0_eni11137_7_tpl_4_q;
            default : i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax0_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax38_mux_x_q = 64'b0;
        endcase
    end

    // redist24_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax0_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax38_mux_x_q_15_inputreg0(DELAY,374)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist24_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax0_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax38_mux_x_q_15_inputreg0_q <= $unsigned(i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax0_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax38_mux_x_q);
        end
    end

    // redist24_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax0_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax38_mux_x_q_15_wraddr(COUNTER,377)
    // low=0, high=15, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist24_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax0_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax38_mux_x_q_15_wraddr_i <= $unsigned(redist24_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax0_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax38_mux_x_q_15_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist24_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax0_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax38_mux_x_q_15_wraddr_q = redist24_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax0_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax38_mux_x_q_15_wraddr_i[3:0];

    // redist24_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax0_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax38_mux_x_q_15_mem(DUALMEM,376)
    assign redist24_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax0_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax38_mux_x_q_15_mem_ia = $unsigned(redist24_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax0_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax38_mux_x_q_15_inputreg0_q);
    assign redist24_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax0_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax38_mux_x_q_15_mem_aa = redist24_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax0_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax38_mux_x_q_15_wraddr_q;
    assign redist24_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax0_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax38_mux_x_q_15_mem_ab = redist24_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax0_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax38_mux_x_q_15_rdcnt_q[3:0];
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
    ) redist24_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax0_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax38_mux_x_q_15_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist24_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax0_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax38_mux_x_q_15_mem_aa),
        .data_a(redist24_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax0_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax38_mux_x_q_15_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist24_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax0_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax38_mux_x_q_15_mem_ab),
        .q_b(redist24_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax0_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax38_mux_x_q_15_mem_iq),
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
    assign redist24_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax0_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax38_mux_x_q_15_mem_q = redist24_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax0_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax38_mux_x_q_15_mem_iq[63:0];

    // redist24_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax0_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax38_mux_x_q_15_outputreg0(DELAY,375)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist24_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax0_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax38_mux_x_q_15_outputreg0_q <= $unsigned(redist24_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax0_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax38_mux_x_q_15_mem_q);
        end
    end

    // i_notcmp_atax32(LOGICAL,92)@19
    assign i_notcmp_atax32_q = redist4_i_exitcond6_atax25_cmp_nsign_q_15_q ^ VCC_q;

    // redist4_i_exitcond6_atax25_cmp_nsign_q_15(DELAY,333)
    dspba_delay_ver #( .width(1), .depth(15), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist4_i_exitcond6_atax25_cmp_nsign_q_15 ( .xin(i_exitcond6_atax25_cmp_nsign_q), .xout(redist4_i_exitcond6_atax25_cmp_nsign_q_15_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist26_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_15_offset(CONSTANT,390)
    assign redist26_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_15_offset_q = $unsigned(3'b100);

    // redist26_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_15_rdcnt(ADD,391)
    assign redist26_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_15_rdcnt_a = {1'b0, redist26_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_15_wraddr_q};
    assign redist26_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_15_rdcnt_b = {1'b0, redist26_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_15_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist26_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_15_rdcnt_o <= $unsigned(redist26_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_15_rdcnt_a) + $unsigned(redist26_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_15_rdcnt_b);
        end
    end
    assign redist26_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_15_rdcnt_q = redist26_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_15_rdcnt_o[3:0];

    // redist26_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_15_inputreg0(DELAY,386)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist26_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_15_inputreg0_q <= $unsigned(redist25_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_6_outputreg0_q);
        end
    end

    // redist26_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_15_wraddr(COUNTER,389)
    // low=0, high=7, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist26_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_15_wraddr_i <= $unsigned(redist26_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_15_wraddr_i) + $unsigned(3'd1);
        end
    end
    assign redist26_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_15_wraddr_q = redist26_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_15_wraddr_i[2:0];

    // redist26_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_15_mem(DUALMEM,388)
    assign redist26_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_15_mem_ia = $unsigned(redist26_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_15_inputreg0_q);
    assign redist26_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_15_mem_aa = redist26_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_15_wraddr_q;
    assign redist26_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_15_mem_ab = redist26_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_15_rdcnt_q[2:0];
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
        .outdata_reg_b("CLOCK0"),
        .outdata_sclr_b("NONE"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Stratix 10")
    ) redist26_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_15_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist26_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_15_mem_aa),
        .data_a(redist26_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_15_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist26_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_15_mem_ab),
        .q_b(redist26_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_15_mem_iq),
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
    assign redist26_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_15_mem_q = redist26_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_15_mem_iq[31:0];

    // redist26_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_15_outputreg0(DELAY,387)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist26_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_15_outputreg0_q <= $unsigned(redist26_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_15_mem_q);
        end
    end

    // redist40_i_atax_b7_current_iter_isspec_atax5_q_13(DELAY,369)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist40_i_atax_b7_current_iter_isspec_atax5_q_13_q <= $unsigned(redist39_i_atax_b7_current_iter_isspec_atax5_q_12_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,204)@19
    assign out_atax_B7_current_iter_isspec = redist40_i_atax_b7_current_iter_isspec_atax5_q_13_q;
    assign out_c0_exi9158_0_tpl = GND_q;
    assign out_c0_exi9158_1_tpl = redist26_i_llvm_fpga_pop_i32_add42_pop35_atax0_i_llvm_fpga_pop_i32_add42_pop35_atax19_mux_x_q_15_outputreg0_q;
    assign out_c0_exi9158_2_tpl = i_llvm_fpga_mem_memdep_1_atax22_out_o_writeack;
    assign out_c0_exi9158_3_tpl = redist4_i_exitcond6_atax25_cmp_nsign_q_15_q;
    assign out_c0_exi9158_4_tpl = i_notcmp_atax32_q;
    assign out_c0_exi9158_5_tpl = redist24_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax0_i_llvm_fpga_pop_p67i32_arrayidx135_pop31_atax38_mux_x_q_15_outputreg0_q;
    assign out_c0_exi9158_6_tpl = redist28_i_llvm_fpga_pop_i1_exitcond937_pop32_atax0_i_llvm_fpga_pop_i1_exitcond937_pop32_atax40_mux_x_q_15_q;
    assign out_c0_exi9158_7_tpl = redist27_i_llvm_fpga_pop_i1_notcmp1539_pop33_atax0_i_llvm_fpga_pop_i1_notcmp1539_pop33_atax42_mux_x_q_15_q;
    assign out_c0_exi9158_8_tpl = redist13_sync_together111_aunroll_x_in_c0_eni11137_10_tpl_19_q;
    assign out_c0_exi9158_9_tpl = redist14_sync_together111_aunroll_x_in_c0_eni11137_11_tpl_19_q;
    assign out_o_valid = redist5_valid_fanout_reg0_q_1_q;

endmodule
