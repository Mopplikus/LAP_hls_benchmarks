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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body9_bicgs_c0_enter669_bicg0
// Created for function/kernel bicg
// SystemVerilog created on Wed Apr 26 14:15:49 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module bicg_i_sfc_logic_s_c0_in_for_body9_s_c0_enter669_bicg0 (
    input wire [31:0] in_unnamed_bicg5_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg5_bicg_avm_writeack,
    input wire [0:0] in_unnamed_bicg5_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg5_bicg_avm_readdatavalid,
    output wire [31:0] out_unnamed_bicg5_bicg_avm_address,
    output wire [0:0] out_unnamed_bicg5_bicg_avm_enable,
    output wire [0:0] out_unnamed_bicg5_bicg_avm_read,
    output wire [0:0] out_unnamed_bicg5_bicg_avm_write,
    output wire [31:0] out_unnamed_bicg5_bicg_avm_writedata,
    output wire [3:0] out_unnamed_bicg5_bicg_avm_byteenable,
    output wire [0:0] out_unnamed_bicg5_bicg_avm_burstcount,
    input wire [0:0] in_flush,
    output wire [0:0] out_exiting_valid_out,
    input wire [31:0] in_unnamed_bicg6_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg6_bicg_avm_writeack,
    input wire [0:0] in_unnamed_bicg6_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg6_bicg_avm_readdatavalid,
    output wire [31:0] out_unnamed_bicg6_bicg_avm_address,
    output wire [0:0] out_unnamed_bicg6_bicg_avm_enable,
    output wire [0:0] out_unnamed_bicg6_bicg_avm_read,
    output wire [0:0] out_unnamed_bicg6_bicg_avm_write,
    output wire [31:0] out_unnamed_bicg6_bicg_avm_writedata,
    output wire [3:0] out_unnamed_bicg6_bicg_avm_byteenable,
    output wire [0:0] out_unnamed_bicg6_bicg_avm_burstcount,
    output wire [0:0] out_pipeline_dummy_out,
    input wire [31:0] in_unnamed_bicg7_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg7_bicg_avm_writeack,
    input wire [0:0] in_unnamed_bicg7_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg7_bicg_avm_readdatavalid,
    output wire [31:0] out_unnamed_bicg7_bicg_avm_address,
    output wire [0:0] out_unnamed_bicg7_bicg_avm_enable,
    output wire [0:0] out_unnamed_bicg7_bicg_avm_read,
    output wire [0:0] out_unnamed_bicg7_bicg_avm_write,
    output wire [31:0] out_unnamed_bicg7_bicg_avm_writedata,
    output wire [3:0] out_unnamed_bicg7_bicg_avm_byteenable,
    output wire [0:0] out_unnamed_bicg7_bicg_avm_burstcount,
    output wire [0:0] out_pipeline_forked_out,
    input wire [31:0] in_memdep_1_bicg_avm_readdata,
    input wire [0:0] in_memdep_1_bicg_avm_writeack,
    input wire [0:0] in_memdep_1_bicg_avm_waitrequest,
    input wire [0:0] in_memdep_1_bicg_avm_readdatavalid,
    output wire [31:0] out_memdep_1_bicg_avm_address,
    output wire [0:0] out_memdep_1_bicg_avm_enable,
    output wire [0:0] out_memdep_1_bicg_avm_read,
    output wire [0:0] out_memdep_1_bicg_avm_write,
    output wire [31:0] out_memdep_1_bicg_avm_writedata,
    output wire [3:0] out_memdep_1_bicg_avm_byteenable,
    output wire [0:0] out_memdep_1_bicg_avm_burstcount,
    output wire [0:0] out_pipeline_valid_out,
    input wire [31:0] in_unnamed_bicg8_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg8_bicg_avm_writeack,
    input wire [0:0] in_unnamed_bicg8_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg8_bicg_avm_readdatavalid,
    output wire [31:0] out_unnamed_bicg8_bicg_avm_address,
    output wire [0:0] out_unnamed_bicg8_bicg_avm_enable,
    output wire [0:0] out_unnamed_bicg8_bicg_avm_read,
    output wire [0:0] out_unnamed_bicg8_bicg_avm_write,
    output wire [31:0] out_unnamed_bicg8_bicg_avm_writedata,
    output wire [3:0] out_unnamed_bicg8_bicg_avm_byteenable,
    output wire [0:0] out_unnamed_bicg8_bicg_avm_burstcount,
    output wire [0:0] out_bicg_B5_current_iter_isspec,
    output wire [0:0] out_c0_exi978_0_tpl,
    output wire [0:0] out_c0_exi978_1_tpl,
    output wire [31:0] out_c0_exi978_2_tpl,
    output wire [0:0] out_c0_exi978_3_tpl,
    output wire [0:0] out_c0_exi978_4_tpl,
    output wire [63:0] out_c0_exi978_5_tpl,
    output wire [0:0] out_c0_exi978_6_tpl,
    output wire [0:0] out_c0_exi978_7_tpl,
    output wire [0:0] out_c0_exi978_8_tpl,
    output wire [0:0] out_c0_exi978_9_tpl,
    output wire [0:0] out_o_valid,
    input wire [0:0] in_buffer_in,
    input wire [0:0] in_c0_eni11_0_tpl,
    input wire [63:0] in_c0_eni11_1_tpl,
    input wire [0:0] in_c0_eni11_2_tpl,
    input wire [0:0] in_c0_eni11_3_tpl,
    input wire [0:0] in_c0_eni11_4_tpl,
    input wire [31:0] in_c0_eni11_5_tpl,
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
    wire [63:0] c_bicg_A_local_pmem_q;
    wire [63:0] c_bicg_p_local_pmem_q;
    wire [63:0] c_bicg_r_local_pmem_q;
    wire [63:0] c_bicg_s_local_pmem_q;
    wire [31:0] c_i32_0111_q;
    wire [31:0] c_i32_1112_q;
    wire [5:0] c_i6_1115_q;
    wire [5:0] c_i6_28113_q;
    wire [32:0] i_add23_bicg28_a;
    wire [32:0] i_add23_bicg28_b;
    logic [32:0] i_add23_bicg28_o;
    wire [32:0] i_add23_bicg28_q;
    wire [32:0] i_add_bicg22_a;
    wire [32:0] i_add_bicg22_b;
    logic [32:0] i_add_bicg22_o;
    wire [32:0] i_add_bicg22_q;
    wire [1:0] i_arrayidx133_bicg14_vt_const_1_q;
    wire [63:0] i_arrayidx133_bicg14_vt_join_q;
    wire [61:0] i_arrayidx133_bicg14_vt_select_63_b;
    wire [63:0] i_arrayidx154_bicg16_vt_join_q;
    wire [61:0] i_arrayidx154_bicg16_vt_select_63_b;
    wire [63:0] i_arrayidx172_bicg10_vt_join_q;
    wire [61:0] i_arrayidx172_bicg10_vt_select_63_b;
    wire [63:0] i_arrayidx215_bicg24_vt_join_q;
    wire [61:0] i_arrayidx215_bicg24_vt_select_63_b;
    wire [0:0] i_bicg_b5_current_iter_isspec_bicg5_q;
    wire [0:0] i_bicg_b5_next_iter_isreal_bicg7_q;
    wire [6:0] i_fpga_indvars_iv_next_bicg40_a;
    wire [6:0] i_fpga_indvars_iv_next_bicg40_b;
    logic [6:0] i_fpga_indvars_iv_next_bicg40_o;
    wire [6:0] i_fpga_indvars_iv_next_bicg40_q;
    wire [63:0] i_idxprom12_bicg13_vt_join_q;
    wire [31:0] i_idxprom12_bicg13_vt_select_31_b;
    wire [32:0] i_inc_bicg29_a;
    wire [32:0] i_inc_bicg29_b;
    logic [32:0] i_inc_bicg29_o;
    wire [32:0] i_inc_bicg29_q;
    wire [0:0] i_llvm_fpga_dummy_thread_bicg_b5_dummy_bicg2_out_dummy_out;
    wire [0:0] i_llvm_fpga_forked_bicg_b5_forked_bicg3_out_buffer_out;
    wire [31:0] i_llvm_fpga_mem_memdep_1_bicg23_out_memdep_1_bicg_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_1_bicg23_out_memdep_1_bicg_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_1_bicg23_out_memdep_1_bicg_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_1_bicg23_out_memdep_1_bicg_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_1_bicg23_out_memdep_1_bicg_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_1_bicg23_out_memdep_1_bicg_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_1_bicg23_out_memdep_1_bicg_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_1_bicg23_out_o_writeack;
    wire [31:0] i_llvm_fpga_mem_unnamed_bicg5_bicg11_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_bicg5_bicg11_out_unnamed_bicg5_bicg_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg5_bicg11_out_unnamed_bicg5_bicg_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_bicg5_bicg11_out_unnamed_bicg5_bicg_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg5_bicg11_out_unnamed_bicg5_bicg_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg5_bicg11_out_unnamed_bicg5_bicg_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg5_bicg11_out_unnamed_bicg5_bicg_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_bicg5_bicg11_out_unnamed_bicg5_bicg_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_bicg6_bicg15_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_bicg6_bicg15_out_unnamed_bicg6_bicg_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg6_bicg15_out_unnamed_bicg6_bicg_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_bicg6_bicg15_out_unnamed_bicg6_bicg_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg6_bicg15_out_unnamed_bicg6_bicg_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg6_bicg15_out_unnamed_bicg6_bicg_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg6_bicg15_out_unnamed_bicg6_bicg_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_bicg6_bicg15_out_unnamed_bicg6_bicg_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_bicg7_bicg20_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_bicg7_bicg20_out_unnamed_bicg7_bicg_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg7_bicg20_out_unnamed_bicg7_bicg_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_bicg7_bicg20_out_unnamed_bicg7_bicg_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg7_bicg20_out_unnamed_bicg7_bicg_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg7_bicg20_out_unnamed_bicg7_bicg_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg7_bicg20_out_unnamed_bicg7_bicg_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_bicg7_bicg20_out_unnamed_bicg7_bicg_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_bicg8_bicg25_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_bicg8_bicg25_out_unnamed_bicg8_bicg_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg8_bicg25_out_unnamed_bicg8_bicg_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_bicg8_bicg25_out_unnamed_bicg8_bicg_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg8_bicg25_out_unnamed_bicg8_bicg_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg8_bicg25_out_unnamed_bicg8_bicg_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg8_bicg25_out_unnamed_bicg8_bicg_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_bicg8_bicg25_out_unnamed_bicg8_bicg_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_bicg6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_bicg6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_bicg6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_bicg6_out_pipeline_dummy_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_bicg6_out_pipeline_forked_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_bicg6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_bicg39_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_bicg39_out_feedback_valid_out_2;
    wire [0:0] i_memdep_phi3_or_bicg19_qi;
    reg [0:0] i_memdep_phi3_or_bicg19_q;
    wire [0:0] i_notcmp_bicg38_q;
    wire [31:0] bgTrunc_i_add23_bicg28_sel_x_b;
    wire [31:0] bgTrunc_i_add_bicg22_sel_x_b;
    wire [5:0] bgTrunc_i_fpga_indvars_iv_next_bicg40_sel_x_b;
    wire [31:0] bgTrunc_i_inc_bicg29_sel_x_b;
    wire [63:0] bgTrunc_i_mul22_bicg26_sel_x_in;
    wire [31:0] bgTrunc_i_mul22_bicg26_sel_x_b;
    wire [63:0] bgTrunc_i_mul_bicg21_sel_x_in;
    wire [31:0] bgTrunc_i_mul_bicg21_sel_x_b;
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
    wire [63:0] i_idxprom12_bicg13_sel_x_b;
    wire [0:0] i_llvm_fpga_pop_coalesce_i1_bicg_b5_current_iter_isreal_bicg0_i_llvm_fpga_pop_coalesce_i1_bicg_b5_current_iter_isreal_bicg4_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_coalesce_i1_bicg_b5_current_iter_isreal_bicg0_i_llvm_fpga_pop_coalesce_i1_bicg_b5_current_iter_isreal_bicg4_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond623_pop21_bicg0_i_llvm_fpga_pop_i1_exitcond623_pop21_bicg46_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_exitcond623_pop21_bicg0_i_llvm_fpga_pop_i1_exitcond623_pop21_bicg46_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop1125_pop23_bicg0_i_llvm_fpga_pop_i1_memdep_phi2_pop1125_pop23_bicg18_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop1125_pop23_bicg0_i_llvm_fpga_pop_i1_memdep_phi2_pop1125_pop23_bicg18_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop819_pop18_bicg0_i_llvm_fpga_pop_i1_memdep_phi3_pop819_pop18_bicg17_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop819_pop18_bicg0_i_llvm_fpga_pop_i1_memdep_phi3_pop819_pop18_bicg17_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp724_pop22_bicg0_i_llvm_fpga_pop_i1_notcmp724_pop22_bicg48_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_notcmp724_pop22_bicg0_i_llvm_fpga_pop_i1_notcmp724_pop22_bicg48_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_j_017_pop16_bicg0_i_llvm_fpga_pop_i32_j_017_pop16_bicg12_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_j_017_pop16_bicg0_i_llvm_fpga_pop_i32_j_017_pop16_bicg12_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_tmp_q_018_pop15_bicg0_i_llvm_fpga_pop_i32_tmp_q_018_pop15_bicg27_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_tmp_q_018_pop15_bicg0_i_llvm_fpga_pop_i32_tmp_q_018_pop15_bicg27_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i64_idxprom21_pop19_bicg0_i_llvm_fpga_pop_i64_idxprom21_pop19_bicg9_mux_x_s;
    reg [63:0] i_llvm_fpga_pop_i64_idxprom21_pop19_bicg0_i_llvm_fpga_pop_i64_idxprom21_pop19_bicg9_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv_pop14_bicg0_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop14_bicg30_mux_x_s;
    reg [5:0] i_llvm_fpga_pop_i6_fpga_indvars_iv_pop14_bicg0_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop14_bicg30_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg0_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg44_mux_x_s;
    reg [63:0] i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg0_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg44_mux_x_q;
    wire [6:0] i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_c_i7_03_x_q;
    wire [7:0] i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg1_x_i_valid;
    wire i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg1_x_i_stall;
    wire i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_inv_pred_x_q;
    wire [0:0] i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_exitcond623_push21_bicg0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_exitcond623_push21_bicg0_i_llvm_fpga_push_i1_exitcond623_push21_bicg1_x_i_valid;
    wire i_llvm_fpga_push_i1_exitcond623_push21_bicg0_i_llvm_fpga_push_i1_exitcond623_push21_bicg1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_exitcond623_push21_bicg0_i_llvm_fpga_push_i1_exitcond623_push21_bicg1_x_i_stall;
    wire i_llvm_fpga_push_i1_exitcond623_push21_bicg0_i_llvm_fpga_push_i1_exitcond623_push21_bicg1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_exitcond623_push21_bicg0_i_llvm_fpga_push_i1_exitcond623_push21_bicg1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_exitcond623_push21_bicg0_i_llvm_fpga_push_i1_exitcond623_push21_bicg1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_exitcond623_push21_bicg0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi2_pop1125_push23_bicg0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1125_push23_bicg0_i_llvm_fpga_push_i1_memdep_phi2_pop1125_push23_bicg1_x_i_valid;
    wire i_llvm_fpga_push_i1_memdep_phi2_pop1125_push23_bicg0_i_llvm_fpga_push_i1_memdep_phi2_pop1125_push23_bicg1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1125_push23_bicg0_i_llvm_fpga_push_i1_memdep_phi2_pop1125_push23_bicg1_x_i_stall;
    wire i_llvm_fpga_push_i1_memdep_phi2_pop1125_push23_bicg0_i_llvm_fpga_push_i1_memdep_phi2_pop1125_push23_bicg1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi2_pop1125_push23_bicg0_i_llvm_fpga_push_i1_memdep_phi2_pop1125_push23_bicg1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi2_pop1125_push23_bicg0_i_llvm_fpga_push_i1_memdep_phi2_pop1125_push23_bicg1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1125_push23_bicg0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi3_pop819_push18_bicg0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_pop819_push18_bicg0_i_llvm_fpga_push_i1_memdep_phi3_pop819_push18_bicg1_x_i_valid;
    wire i_llvm_fpga_push_i1_memdep_phi3_pop819_push18_bicg0_i_llvm_fpga_push_i1_memdep_phi3_pop819_push18_bicg1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_pop819_push18_bicg0_i_llvm_fpga_push_i1_memdep_phi3_pop819_push18_bicg1_x_i_stall;
    wire i_llvm_fpga_push_i1_memdep_phi3_pop819_push18_bicg0_i_llvm_fpga_push_i1_memdep_phi3_pop819_push18_bicg1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi3_pop819_push18_bicg0_i_llvm_fpga_push_i1_memdep_phi3_pop819_push18_bicg1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi3_pop819_push18_bicg0_i_llvm_fpga_push_i1_memdep_phi3_pop819_push18_bicg1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_pop819_push18_bicg0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_notcmp724_push22_bicg0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_notcmp724_push22_bicg0_i_llvm_fpga_push_i1_notcmp724_push22_bicg1_x_i_valid;
    wire i_llvm_fpga_push_i1_notcmp724_push22_bicg0_i_llvm_fpga_push_i1_notcmp724_push22_bicg1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_notcmp724_push22_bicg0_i_llvm_fpga_push_i1_notcmp724_push22_bicg1_x_i_stall;
    wire i_llvm_fpga_push_i1_notcmp724_push22_bicg0_i_llvm_fpga_push_i1_notcmp724_push22_bicg1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_notcmp724_push22_bicg0_i_llvm_fpga_push_i1_notcmp724_push22_bicg1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_notcmp724_push22_bicg0_i_llvm_fpga_push_i1_notcmp724_push22_bicg1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_notcmp724_push22_bicg0_adapt_scalar_trunc4_sel_x_b;
    wire [0:0] i_llvm_fpga_push_i32_j_017_push16_bicg0_i_llvm_fpga_push_i32_j_017_push16_bicg1_x_i_valid;
    wire i_llvm_fpga_push_i32_j_017_push16_bicg0_i_llvm_fpga_push_i32_j_017_push16_bicg1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_j_017_push16_bicg0_i_llvm_fpga_push_i32_j_017_push16_bicg1_x_i_stall;
    wire i_llvm_fpga_push_i32_j_017_push16_bicg0_i_llvm_fpga_push_i32_j_017_push16_bicg1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_j_017_push16_bicg0_i_llvm_fpga_push_i32_j_017_push16_bicg1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_j_017_push16_bicg0_i_llvm_fpga_push_i32_j_017_push16_bicg1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i32_tmp_q_018_push15_bicg0_i_llvm_fpga_push_i32_tmp_q_018_push15_bicg1_x_i_valid;
    wire i_llvm_fpga_push_i32_tmp_q_018_push15_bicg0_i_llvm_fpga_push_i32_tmp_q_018_push15_bicg1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_tmp_q_018_push15_bicg0_i_llvm_fpga_push_i32_tmp_q_018_push15_bicg1_x_i_stall;
    wire i_llvm_fpga_push_i32_tmp_q_018_push15_bicg0_i_llvm_fpga_push_i32_tmp_q_018_push15_bicg1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_tmp_q_018_push15_bicg0_i_llvm_fpga_push_i32_tmp_q_018_push15_bicg1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_tmp_q_018_push15_bicg0_i_llvm_fpga_push_i32_tmp_q_018_push15_bicg1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i64_idxprom21_push19_bicg0_i_llvm_fpga_push_i64_idxprom21_push19_bicg1_x_i_valid;
    wire i_llvm_fpga_push_i64_idxprom21_push19_bicg0_i_llvm_fpga_push_i64_idxprom21_push19_bicg1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i64_idxprom21_push19_bicg0_i_llvm_fpga_push_i64_idxprom21_push19_bicg1_x_i_stall;
    wire i_llvm_fpga_push_i64_idxprom21_push19_bicg0_i_llvm_fpga_push_i64_idxprom21_push19_bicg1_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_i64_idxprom21_push19_bicg0_i_llvm_fpga_push_i64_idxprom21_push19_bicg1_x_i_data;
    wire [63:0] i_llvm_fpga_push_i64_idxprom21_push19_bicg0_i_llvm_fpga_push_i64_idxprom21_push19_bicg1_x_o_data;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push14_bicg0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push14_bicg0_i_llvm_fpga_push_i6_fpga_indvars_iv_push14_bicg1_x_i_valid;
    wire i_llvm_fpga_push_i6_fpga_indvars_iv_push14_bicg0_i_llvm_fpga_push_i6_fpga_indvars_iv_push14_bicg1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push14_bicg0_i_llvm_fpga_push_i6_fpga_indvars_iv_push14_bicg1_x_i_stall;
    wire i_llvm_fpga_push_i6_fpga_indvars_iv_push14_bicg0_i_llvm_fpga_push_i6_fpga_indvars_iv_push14_bicg1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push14_bicg0_i_llvm_fpga_push_i6_fpga_indvars_iv_push14_bicg1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push14_bicg0_i_llvm_fpga_push_i6_fpga_indvars_iv_push14_bicg1_x_o_data;
    wire [5:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push14_bicg0_adapt_scalar_trunc4_sel_x_b;
    wire [0:0] i_llvm_fpga_push_p66i32_arrayidx122_push20_bicg0_i_llvm_fpga_push_p66i32_arrayidx122_push20_bicg1_x_i_valid;
    wire i_llvm_fpga_push_p66i32_arrayidx122_push20_bicg0_i_llvm_fpga_push_p66i32_arrayidx122_push20_bicg1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_p66i32_arrayidx122_push20_bicg0_i_llvm_fpga_push_p66i32_arrayidx122_push20_bicg1_x_i_stall;
    wire i_llvm_fpga_push_p66i32_arrayidx122_push20_bicg0_i_llvm_fpga_push_p66i32_arrayidx122_push20_bicg1_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_p66i32_arrayidx122_push20_bicg0_i_llvm_fpga_push_p66i32_arrayidx122_push20_bicg1_x_i_data;
    wire [63:0] i_llvm_fpga_push_p66i32_arrayidx122_push20_bicg0_i_llvm_fpga_push_p66i32_arrayidx122_push20_bicg1_x_o_data;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg6_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg8_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg11_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg12_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg13_q;
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
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg27_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg28_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg33_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg34_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg36_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg37_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg39_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg40_q;
    wire [0:0] i_exitcond_bicg31_cmp_nsign_q;
    wire [14:0] i_mul22_bicg26_bjA2_q;
    wire [14:0] i_mul22_bicg26_bjB4_q;
    wire [65:0] i_mul22_bicg26_sums_join_0_q;
    wire [50:0] i_mul22_bicg26_sums_align_1_q;
    wire [50:0] i_mul22_bicg26_sums_align_1_qint;
    wire [66:0] i_mul22_bicg26_sums_result_add_0_0_a;
    wire [66:0] i_mul22_bicg26_sums_result_add_0_0_b;
    logic [66:0] i_mul22_bicg26_sums_result_add_0_0_o;
    wire [66:0] i_mul22_bicg26_sums_result_add_0_0_q;
    wire [14:0] i_mul_bicg21_bjA2_q;
    wire [65:0] i_mul_bicg21_sums_join_0_q;
    wire [50:0] i_mul_bicg21_sums_align_1_q;
    wire [50:0] i_mul_bicg21_sums_align_1_qint;
    wire [66:0] i_mul_bicg21_sums_result_add_0_0_a;
    wire [66:0] i_mul_bicg21_sums_result_add_0_0_b;
    logic [66:0] i_mul_bicg21_sums_result_add_0_0_o;
    wire [66:0] i_mul_bicg21_sums_result_add_0_0_q;
    wire [12:0] xIfSign_mergedSignalTM_uid369_i_arrayidx133_bicg0_mult_x_q;
    wire [3:0] padACst_uid373_i_arrayidx133_bicg0_mult_x_q;
    wire [16:0] aPostPad_uid374_i_arrayidx133_bicg0_mult_x_q;
    wire [17:0] sub_uid375_i_arrayidx133_bicg0_mult_x_a;
    wire [17:0] sub_uid375_i_arrayidx133_bicg0_mult_x_b;
    logic [17:0] sub_uid375_i_arrayidx133_bicg0_mult_x_o;
    wire [17:0] sub_uid375_i_arrayidx133_bicg0_mult_x_q;
    wire [2:0] sR_bottomExtension_uid378_i_arrayidx133_bicg0_mult_x_q;
    wire [15:0] sR_bottomRange_uid379_i_arrayidx133_bicg0_mult_x_in;
    wire [15:0] sR_bottomRange_uid379_i_arrayidx133_bicg0_mult_x_b;
    wire [18:0] sR_mergedSignalTM_uid380_i_arrayidx133_bicg0_mult_x_q;
    wire i_mul22_bicg26_im0_cma_reset;
    (* preserve_syn_only *) reg signed [14:0] i_mul22_bicg26_im0_cma_ah [0:0];
    (* preserve_syn_only *) reg signed [14:0] i_mul22_bicg26_im0_cma_ch [0:0];
    wire [14:0] i_mul22_bicg26_im0_cma_a0;
    wire [14:0] i_mul22_bicg26_im0_cma_c0;
    wire [29:0] i_mul22_bicg26_im0_cma_s0;
    wire [29:0] i_mul22_bicg26_im0_cma_qq;
    reg [29:0] i_mul22_bicg26_im0_cma_q;
    wire i_mul22_bicg26_im0_cma_ena0;
    wire i_mul22_bicg26_im0_cma_ena1;
    wire i_mul22_bicg26_im0_cma_ena2;
    wire i_mul22_bicg26_im10_cma_reset;
    (* preserve_syn_only *) reg [17:0] i_mul22_bicg26_im10_cma_ah [0:0];
    (* preserve_syn_only *) reg [17:0] i_mul22_bicg26_im10_cma_ch [0:0];
    wire [17:0] i_mul22_bicg26_im10_cma_a0;
    wire [17:0] i_mul22_bicg26_im10_cma_c0;
    wire [35:0] i_mul22_bicg26_im10_cma_s0;
    wire [35:0] i_mul22_bicg26_im10_cma_qq;
    reg [35:0] i_mul22_bicg26_im10_cma_q;
    wire i_mul22_bicg26_im10_cma_ena0;
    wire i_mul22_bicg26_im10_cma_ena1;
    wire i_mul22_bicg26_im10_cma_ena2;
    wire i_mul_bicg21_im0_cma_reset;
    (* preserve_syn_only *) reg signed [14:0] i_mul_bicg21_im0_cma_ah [0:0];
    (* preserve_syn_only *) reg signed [14:0] i_mul_bicg21_im0_cma_ch [0:0];
    wire [14:0] i_mul_bicg21_im0_cma_a0;
    wire [14:0] i_mul_bicg21_im0_cma_c0;
    wire [29:0] i_mul_bicg21_im0_cma_s0;
    wire [29:0] i_mul_bicg21_im0_cma_qq;
    reg [29:0] i_mul_bicg21_im0_cma_q;
    wire i_mul_bicg21_im0_cma_ena0;
    wire i_mul_bicg21_im0_cma_ena1;
    wire i_mul_bicg21_im0_cma_ena2;
    wire i_mul_bicg21_im10_cma_reset;
    (* preserve_syn_only *) reg [17:0] i_mul_bicg21_im10_cma_ah [0:0];
    (* preserve_syn_only *) reg [17:0] i_mul_bicg21_im10_cma_ch [0:0];
    wire [17:0] i_mul_bicg21_im10_cma_a0;
    wire [17:0] i_mul_bicg21_im10_cma_c0;
    wire [35:0] i_mul_bicg21_im10_cma_s0;
    wire [35:0] i_mul_bicg21_im10_cma_qq;
    reg [35:0] i_mul_bicg21_im10_cma_q;
    wire i_mul_bicg21_im10_cma_ena0;
    wire i_mul_bicg21_im10_cma_ena1;
    wire i_mul_bicg21_im10_cma_ena2;
    wire i_mul22_bicg26_ma5_cma_reset;
    (* preserve_syn_only *) reg [13:0] i_mul22_bicg26_ma5_cma_ah [0:1];
    (* preserve_syn_only *) reg [17:0] i_mul22_bicg26_ma5_cma_ch [0:1];
    wire [13:0] i_mul22_bicg26_ma5_cma_a0;
    wire [17:0] i_mul22_bicg26_ma5_cma_c0;
    wire [13:0] i_mul22_bicg26_ma5_cma_a1;
    wire [17:0] i_mul22_bicg26_ma5_cma_c1;
    wire [32:0] i_mul22_bicg26_ma5_cma_s0;
    wire [32:0] i_mul22_bicg26_ma5_cma_qq;
    reg [32:0] i_mul22_bicg26_ma5_cma_q;
    wire i_mul22_bicg26_ma5_cma_ena0;
    wire i_mul22_bicg26_ma5_cma_ena1;
    wire i_mul22_bicg26_ma5_cma_ena2;
    wire i_mul_bicg21_ma5_cma_reset;
    (* preserve_syn_only *) reg [13:0] i_mul_bicg21_ma5_cma_ah [0:1];
    (* preserve_syn_only *) reg [17:0] i_mul_bicg21_ma5_cma_ch [0:1];
    wire [13:0] i_mul_bicg21_ma5_cma_a0;
    wire [17:0] i_mul_bicg21_ma5_cma_c0;
    wire [13:0] i_mul_bicg21_ma5_cma_a1;
    wire [17:0] i_mul_bicg21_ma5_cma_c1;
    wire [32:0] i_mul_bicg21_ma5_cma_s0;
    wire [32:0] i_mul_bicg21_ma5_cma_qq;
    reg [32:0] i_mul_bicg21_ma5_cma_q;
    wire i_mul_bicg21_ma5_cma_ena0;
    wire i_mul_bicg21_ma5_cma_ena1;
    wire i_mul_bicg21_ma5_cma_ena2;
    wire [51:0] i_arrayidx133_bicg0_upper_bits_x_merged_bit_select_b;
    wire [11:0] i_arrayidx133_bicg0_upper_bits_x_merged_bit_select_c;
    wire [56:0] i_arrayidx215_bicg0_upper_bits_x_merged_bit_select_b;
    wire [6:0] i_arrayidx215_bicg0_upper_bits_x_merged_bit_select_c;
    wire [56:0] i_arrayidx172_bicg0_upper_bits_x_merged_bit_select_b;
    wire [6:0] i_arrayidx172_bicg0_upper_bits_x_merged_bit_select_c;
    wire [56:0] i_arrayidx154_bicg0_upper_bits_x_merged_bit_select_b;
    wire [6:0] i_arrayidx154_bicg0_upper_bits_x_merged_bit_select_c;
    wire [13:0] i_mul_bicg21_bs1_merged_bit_select_b;
    wire [17:0] i_mul_bicg21_bs1_merged_bit_select_c;
    wire [13:0] i_mul22_bicg26_bs3_merged_bit_select_b;
    wire [17:0] i_mul22_bicg26_bs3_merged_bit_select_c;
    wire [13:0] i_mul22_bicg26_bs1_merged_bit_select_b;
    wire [17:0] i_mul22_bicg26_bs1_merged_bit_select_c;
    reg [51:0] redist0_i_arrayidx133_bicg0_upper_bits_x_merged_bit_select_b_1_q;
    reg [32:0] redist1_i_mul_bicg21_ma5_cma_q_1_q;
    reg [32:0] redist2_i_mul22_bicg26_ma5_cma_q_1_q;
    reg [35:0] redist3_i_mul_bicg21_im10_cma_q_1_q;
    reg [29:0] redist4_i_mul_bicg21_im0_cma_q_1_q;
    reg [35:0] redist5_i_mul22_bicg26_im10_cma_q_1_q;
    reg [29:0] redist6_i_mul22_bicg26_im0_cma_q_1_q;
    reg [0:0] redist7_i_exitcond_bicg31_cmp_nsign_q_15_q;
    reg [0:0] redist8_valid_fanout_reg0_q_1_q;
    reg [63:0] redist9_sync_together121_aunroll_x_in_c0_eni11_1_tpl_4_q;
    reg [63:0] redist9_sync_together121_aunroll_x_in_c0_eni11_1_tpl_4_delay_0;
    reg [63:0] redist9_sync_together121_aunroll_x_in_c0_eni11_1_tpl_4_delay_1;
    reg [0:0] redist10_sync_together121_aunroll_x_in_c0_eni11_3_tpl_4_q;
    reg [0:0] redist10_sync_together121_aunroll_x_in_c0_eni11_3_tpl_4_delay_0;
    reg [0:0] redist10_sync_together121_aunroll_x_in_c0_eni11_3_tpl_4_delay_1;
    reg [0:0] redist10_sync_together121_aunroll_x_in_c0_eni11_3_tpl_4_delay_2;
    reg [0:0] redist11_sync_together121_aunroll_x_in_c0_eni11_4_tpl_4_q;
    reg [0:0] redist11_sync_together121_aunroll_x_in_c0_eni11_4_tpl_4_delay_0;
    reg [0:0] redist11_sync_together121_aunroll_x_in_c0_eni11_4_tpl_4_delay_1;
    reg [0:0] redist11_sync_together121_aunroll_x_in_c0_eni11_4_tpl_4_delay_2;
    reg [63:0] redist13_sync_together121_aunroll_x_in_c0_eni11_7_tpl_4_q;
    reg [63:0] redist13_sync_together121_aunroll_x_in_c0_eni11_7_tpl_4_delay_0;
    reg [63:0] redist13_sync_together121_aunroll_x_in_c0_eni11_7_tpl_4_delay_1;
    reg [0:0] redist14_sync_together121_aunroll_x_in_c0_eni11_8_tpl_17_q;
    reg [0:0] redist15_sync_together121_aunroll_x_in_c0_eni11_9_tpl_4_q;
    reg [0:0] redist15_sync_together121_aunroll_x_in_c0_eni11_9_tpl_4_delay_0;
    reg [0:0] redist15_sync_together121_aunroll_x_in_c0_eni11_9_tpl_4_delay_1;
    reg [0:0] redist15_sync_together121_aunroll_x_in_c0_eni11_9_tpl_4_delay_2;
    reg [0:0] redist16_sync_together121_aunroll_x_in_c0_eni11_10_tpl_19_q;
    reg [0:0] redist17_sync_together121_aunroll_x_in_c0_eni11_11_tpl_19_q;
    reg [0:0] redist18_sync_together121_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist18_sync_together121_aunroll_x_in_i_valid_2_delay_0;
    reg [0:0] redist19_sync_together121_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist20_sync_together121_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist21_sync_together121_aunroll_x_in_i_valid_5_q;
    reg [0:0] redist22_sync_together121_aunroll_x_in_i_valid_13_q;
    reg [0:0] redist23_sync_together121_aunroll_x_in_i_valid_16_q;
    reg [0:0] redist23_sync_together121_aunroll_x_in_i_valid_16_delay_0;
    reg [0:0] redist23_sync_together121_aunroll_x_in_i_valid_16_delay_1;
    reg [0:0] redist24_sync_together121_aunroll_x_in_i_valid_17_q;
    reg [0:0] redist25_i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_inv_pred_x_q_2_q;
    reg [0:0] redist25_i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_inv_pred_x_q_2_delay_0;
    reg [0:0] redist26_i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_inv_pred_x_q_3_q;
    reg [0:0] redist27_i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_inv_pred_x_q_4_q;
    reg [0:0] redist28_i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_inv_pred_x_q_13_q;
    reg [0:0] redist29_i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_inv_pred_x_q_16_q;
    reg [0:0] redist29_i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_inv_pred_x_q_16_delay_0;
    reg [0:0] redist29_i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_inv_pred_x_q_16_delay_1;
    reg [0:0] redist31_i_llvm_fpga_pop_i1_notcmp724_pop22_bicg0_i_llvm_fpga_pop_i1_notcmp724_pop22_bicg48_mux_x_q_15_q;
    reg [0:0] redist32_i_llvm_fpga_pop_i1_exitcond623_pop21_bicg0_i_llvm_fpga_pop_i1_exitcond623_pop21_bicg46_mux_x_q_2_q;
    reg [4:0] redist33_i_arrayidx172_bicg0_narrow_x_b_2_q;
    reg [4:0] redist33_i_arrayidx172_bicg0_narrow_x_b_2_delay_0;
    reg [6:0] redist34_i_arrayidx154_bicg0_shift_join_x_q_8_q;
    reg [11:0] redist35_i_arrayidx133_bicg0_dupName_2_trunc_sel_x_b_1_q;
    reg [11:0] redist36_i_arrayidx133_bicg0_dupName_1_trunc_sel_x_b_1_q;
    reg [31:0] redist37_bgTrunc_i_mul_bicg21_sel_x_b_1_q;
    reg [31:0] redist38_bgTrunc_i_mul22_bicg26_sel_x_b_1_q;
    reg [31:0] redist39_bgTrunc_i_add23_bicg28_sel_x_b_1_q;
    reg [0:0] redist40_i_memdep_phi3_or_bicg19_q_10_q;
    reg [0:0] redist41_i_llvm_fpga_pipeline_keep_going_bicg6_out_data_out_2_q;
    reg [0:0] redist41_i_llvm_fpga_pipeline_keep_going_bicg6_out_data_out_2_delay_0;
    reg [0:0] redist42_i_llvm_fpga_forked_bicg_b5_forked_bicg3_out_buffer_out_4_q;
    reg [0:0] redist42_i_llvm_fpga_forked_bicg_b5_forked_bicg3_out_buffer_out_4_delay_0;
    reg [0:0] redist42_i_llvm_fpga_forked_bicg_b5_forked_bicg3_out_buffer_out_4_delay_1;
    reg [0:0] redist42_i_llvm_fpga_forked_bicg_b5_forked_bicg3_out_buffer_out_4_delay_2;
    reg [0:0] redist43_i_llvm_fpga_forked_bicg_b5_forked_bicg3_out_buffer_out_6_q;
    reg [0:0] redist43_i_llvm_fpga_forked_bicg_b5_forked_bicg3_out_buffer_out_6_delay_0;
    reg [0:0] redist44_i_llvm_fpga_forked_bicg_b5_forked_bicg3_out_buffer_out_17_q;
    reg [0:0] redist45_i_llvm_fpga_dummy_thread_bicg_b5_dummy_bicg2_out_dummy_out_4_q;
    reg [0:0] redist45_i_llvm_fpga_dummy_thread_bicg_b5_dummy_bicg2_out_dummy_out_4_delay_0;
    reg [0:0] redist45_i_llvm_fpga_dummy_thread_bicg_b5_dummy_bicg2_out_dummy_out_4_delay_1;
    reg [0:0] redist45_i_llvm_fpga_dummy_thread_bicg_b5_dummy_bicg2_out_dummy_out_4_delay_2;
    reg [0:0] redist46_i_bicg_b5_current_iter_isspec_bicg5_q_8_q;
    reg [0:0] redist47_i_bicg_b5_current_iter_isspec_bicg5_q_12_q;
    reg [0:0] redist47_i_bicg_b5_current_iter_isspec_bicg5_q_12_delay_0;
    reg [0:0] redist47_i_bicg_b5_current_iter_isspec_bicg5_q_12_delay_1;
    reg [0:0] redist47_i_bicg_b5_current_iter_isspec_bicg5_q_12_delay_2;
    reg [0:0] redist48_i_bicg_b5_current_iter_isspec_bicg5_q_13_q;
    reg [63:0] redist49_i_arrayidx154_bicg16_vt_join_q_4_q;
    reg [63:0] redist49_i_arrayidx154_bicg16_vt_join_q_4_delay_0;
    reg [63:0] redist49_i_arrayidx154_bicg16_vt_join_q_4_delay_1;
    reg [63:0] redist9_sync_together121_aunroll_x_in_c0_eni11_1_tpl_4_inputreg0_q;
    reg [31:0] redist12_sync_together121_aunroll_x_in_c0_eni11_5_tpl_17_inputreg0_q;
    reg [31:0] redist12_sync_together121_aunroll_x_in_c0_eni11_5_tpl_17_outputreg0_q;
    wire redist12_sync_together121_aunroll_x_in_c0_eni11_5_tpl_17_mem_reset0;
    wire [31:0] redist12_sync_together121_aunroll_x_in_c0_eni11_5_tpl_17_mem_ia;
    wire [3:0] redist12_sync_together121_aunroll_x_in_c0_eni11_5_tpl_17_mem_aa;
    wire [3:0] redist12_sync_together121_aunroll_x_in_c0_eni11_5_tpl_17_mem_ab;
    wire [31:0] redist12_sync_together121_aunroll_x_in_c0_eni11_5_tpl_17_mem_iq;
    wire [31:0] redist12_sync_together121_aunroll_x_in_c0_eni11_5_tpl_17_mem_q;
    wire [3:0] redist12_sync_together121_aunroll_x_in_c0_eni11_5_tpl_17_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist12_sync_together121_aunroll_x_in_c0_eni11_5_tpl_17_wraddr_i = 4'b1111;
    wire [3:0] redist12_sync_together121_aunroll_x_in_c0_eni11_5_tpl_17_offset_q;
    wire [4:0] redist12_sync_together121_aunroll_x_in_c0_eni11_5_tpl_17_rdcnt_a;
    wire [4:0] redist12_sync_together121_aunroll_x_in_c0_eni11_5_tpl_17_rdcnt_b;
    logic [4:0] redist12_sync_together121_aunroll_x_in_c0_eni11_5_tpl_17_rdcnt_o;
    wire [4:0] redist12_sync_together121_aunroll_x_in_c0_eni11_5_tpl_17_rdcnt_q;
    reg [63:0] redist13_sync_together121_aunroll_x_in_c0_eni11_7_tpl_4_inputreg0_q;
    reg [63:0] redist30_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg0_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg44_mux_x_q_15_inputreg0_q;
    reg [63:0] redist30_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg0_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg44_mux_x_q_15_outputreg0_q;
    wire redist30_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg0_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg44_mux_x_q_15_mem_reset0;
    wire [63:0] redist30_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg0_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg44_mux_x_q_15_mem_ia;
    wire [3:0] redist30_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg0_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg44_mux_x_q_15_mem_aa;
    wire [3:0] redist30_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg0_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg44_mux_x_q_15_mem_ab;
    wire [63:0] redist30_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg0_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg44_mux_x_q_15_mem_iq;
    wire [63:0] redist30_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg0_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg44_mux_x_q_15_mem_q;
    wire [3:0] redist30_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg0_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg44_mux_x_q_15_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist30_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg0_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg44_mux_x_q_15_wraddr_i = 4'b1111;
    wire [3:0] redist30_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg0_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg44_mux_x_q_15_offset_q;
    wire [4:0] redist30_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg0_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg44_mux_x_q_15_rdcnt_a;
    wire [4:0] redist30_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg0_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg44_mux_x_q_15_rdcnt_b;
    logic [4:0] redist30_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg0_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg44_mux_x_q_15_rdcnt_o;
    wire [4:0] redist30_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg0_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg44_mux_x_q_15_rdcnt_q;
    reg [6:0] redist34_i_arrayidx154_bicg0_shift_join_x_q_8_inputreg0_q;
    reg [6:0] redist34_i_arrayidx154_bicg0_shift_join_x_q_8_outputreg0_q;
    reg [63:0] redist49_i_arrayidx154_bicg16_vt_join_q_4_inputreg0_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist18_sync_together121_aunroll_x_in_i_valid_2(DELAY,431)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist18_sync_together121_aunroll_x_in_i_valid_2_delay_0 <= '0;
        end
        else
        begin
            redist18_sync_together121_aunroll_x_in_i_valid_2_delay_0 <= $unsigned(in_i_valid);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist18_sync_together121_aunroll_x_in_i_valid_2_q <= redist18_sync_together121_aunroll_x_in_i_valid_2_delay_0;
        end
    end

    // redist19_sync_together121_aunroll_x_in_i_valid_3(DELAY,432)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist19_sync_together121_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist19_sync_together121_aunroll_x_in_i_valid_3_q <= $unsigned(redist18_sync_together121_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist20_sync_together121_aunroll_x_in_i_valid_4(DELAY,433)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist20_sync_together121_aunroll_x_in_i_valid_4_q <= $unsigned(redist19_sync_together121_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist21_sync_together121_aunroll_x_in_i_valid_5(DELAY,434)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist21_sync_together121_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist21_sync_together121_aunroll_x_in_i_valid_5_q <= $unsigned(redist20_sync_together121_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg6(REG,260)@5 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist21_sync_together121_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_c_i7_03_x(CONSTANT,205)
    assign i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_c_i7_03_x_q = $unsigned(7'b0000000);

    // valid_fanout_reg2(REG,256)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist19_sync_together121_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg26(REG,280)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg26_q <= $unsigned(redist19_sync_together121_aunroll_x_in_i_valid_3_q);
        end
    end

    // c_i6_28113(CONSTANT,72)
    assign c_i6_28113_q = $unsigned(6'b011100);

    // i_arrayidx133_bicg14_vt_const_1(CONSTANT,77)
    assign i_arrayidx133_bicg14_vt_const_1_q = $unsigned(2'b00);

    // c_i6_1115(CONSTANT,71)
    assign c_i6_1115_q = $unsigned(6'b111111);

    // i_fpga_indvars_iv_next_bicg40(ADD,92)@4
    assign i_fpga_indvars_iv_next_bicg40_a = {1'b0, i_llvm_fpga_pop_i6_fpga_indvars_iv_pop14_bicg0_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop14_bicg30_mux_x_q};
    assign i_fpga_indvars_iv_next_bicg40_b = {1'b0, c_i6_1115_q};
    assign i_fpga_indvars_iv_next_bicg40_o = $unsigned(i_fpga_indvars_iv_next_bicg40_a) + $unsigned(i_fpga_indvars_iv_next_bicg40_b);
    assign i_fpga_indvars_iv_next_bicg40_q = i_fpga_indvars_iv_next_bicg40_o[6:0];

    // bgTrunc_i_fpga_indvars_iv_next_bicg40_sel_x(BITSELECT,117)@4
    assign bgTrunc_i_fpga_indvars_iv_next_bicg40_sel_x_b = i_fpga_indvars_iv_next_bicg40_q[5:0];

    // i_llvm_fpga_push_i6_fpga_indvars_iv_push14_bicg0_element_extension2_x(BITJOIN,245)@4
    assign i_llvm_fpga_push_i6_fpga_indvars_iv_push14_bicg0_element_extension2_x_q = {i_arrayidx133_bicg14_vt_const_1_q, bgTrunc_i_fpga_indvars_iv_next_bicg40_sel_x_b};

    // i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_inv_pred_x(LOGICAL,208)@1
    assign i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_inv_pred_x_q = ~ (GND_q);

    // valid_fanout_reg28(REG,282)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg28_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg27(REG,281)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg27_q <= $unsigned(redist18_sync_together121_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i6_fpga_indvars_iv_push14_bicg0_i_llvm_fpga_push_i6_fpga_indvars_iv_push14_bicg1_x(FIFODELAY,246)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i6_fpga_indvars_iv_push14_bicg0_i_llvm_fpga_push_i6_fpga_indvars_iv_push14_bicg1_x_i_stall = ~ (valid_fanout_reg28_q & i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_inv_pred_x_q);
    assign i_llvm_fpga_push_i6_fpga_indvars_iv_push14_bicg0_i_llvm_fpga_push_i6_fpga_indvars_iv_push14_bicg1_x_i_valid = valid_fanout_reg27_q & redist25_i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i6_fpga_indvars_iv_push14_bicg0_i_llvm_fpga_push_i6_fpga_indvars_iv_push14_bicg1_x_i_data = i_llvm_fpga_push_i6_fpga_indvars_iv_push14_bicg0_element_extension2_x_q;
    assign i_llvm_fpga_push_i6_fpga_indvars_iv_push14_bicg0_i_llvm_fpga_push_i6_fpga_indvars_iv_push14_bicg1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i6_fpga_indvars_iv_push14_bicg0_i_llvm_fpga_push_i6_fpga_indvars_iv_push14_bicg1_x_i_valid[0];
    assign i_llvm_fpga_push_i6_fpga_indvars_iv_push14_bicg0_i_llvm_fpga_push_i6_fpga_indvars_iv_push14_bicg1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i6_fpga_indvars_iv_push14_bicg0_i_llvm_fpga_push_i6_fpga_indvars_iv_push14_bicg1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i6_fpga_indvars_iv_push14_bicg0_i_llvm_fpga_push_i6_fpga_indvars_iv_push14_bicg1_x (
        .i_valid(i_llvm_fpga_push_i6_fpga_indvars_iv_push14_bicg0_i_llvm_fpga_push_i6_fpga_indvars_iv_push14_bicg1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i6_fpga_indvars_iv_push14_bicg0_i_llvm_fpga_push_i6_fpga_indvars_iv_push14_bicg1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i6_fpga_indvars_iv_push14_bicg0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i6_fpga_indvars_iv_push14_bicg0_i_llvm_fpga_push_i6_fpga_indvars_iv_push14_bicg1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i6_fpga_indvars_iv_push14_bicg0_adapt_scalar_trunc4_sel_x(BITSELECT,248)@4
    assign i_llvm_fpga_push_i6_fpga_indvars_iv_push14_bicg0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i6_fpga_indvars_iv_push14_bicg0_i_llvm_fpga_push_i6_fpga_indvars_iv_push14_bicg1_x_o_data[5:0];

    // i_llvm_fpga_pop_i6_fpga_indvars_iv_pop14_bicg0_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop14_bicg30_mux_x(MUX,202)@4
    assign i_llvm_fpga_pop_i6_fpga_indvars_iv_pop14_bicg0_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop14_bicg30_mux_x_s = redist42_i_llvm_fpga_forked_bicg_b5_forked_bicg3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop14_bicg0_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop14_bicg30_mux_x_s or i_llvm_fpga_push_i6_fpga_indvars_iv_push14_bicg0_adapt_scalar_trunc4_sel_x_b or c_i6_28113_q)
    begin
        unique case (i_llvm_fpga_pop_i6_fpga_indvars_iv_pop14_bicg0_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop14_bicg30_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i6_fpga_indvars_iv_pop14_bicg0_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop14_bicg30_mux_x_q = i_llvm_fpga_push_i6_fpga_indvars_iv_push14_bicg0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i6_fpga_indvars_iv_pop14_bicg0_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop14_bicg30_mux_x_q = c_i6_28113_q;
            default : i_llvm_fpga_pop_i6_fpga_indvars_iv_pop14_bicg0_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop14_bicg30_mux_x_q = 6'b0;
        endcase
    end

    // i_exitcond_bicg31_cmp_nsign(LOGICAL,309)@4
    assign i_exitcond_bicg31_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i6_fpga_indvars_iv_pop14_bicg0_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop14_bicg30_mux_x_q[5:5]));

    // i_llvm_fpga_push_i1_notexitcond_bicg39(BLACKBOX,106)@4
    // in in_empty_in@20000000
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    bicg_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_bicg39 (
        .in_almost_empty_in(GND_q),
        .in_data_in(i_exitcond_bicg31_cmp_nsign_q),
        .in_empty_in(GND_q),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_bicg6_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg26_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_notexitcond_bicg39_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_notexitcond_bicg39_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_dummy_thread_bicg_b5_dummy_bicg2(BLACKBOX,98)@0
    // in in_stall_in@20000000
    bicg_i_llvm_fpga_dummy_thread_b5_dummy_bicg0 thei_llvm_fpga_dummy_thread_bicg_b5_dummy_bicg2 (
        .in_dummy_in(in_dummy_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dummy_out(i_llvm_fpga_dummy_thread_bicg_b5_dummy_bicg2_out_dummy_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist45_i_llvm_fpga_dummy_thread_bicg_b5_dummy_bicg2_out_dummy_out_4(DELAY,458)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist45_i_llvm_fpga_dummy_thread_bicg_b5_dummy_bicg2_out_dummy_out_4_delay_0 <= $unsigned(i_llvm_fpga_dummy_thread_bicg_b5_dummy_bicg2_out_dummy_out);
            redist45_i_llvm_fpga_dummy_thread_bicg_b5_dummy_bicg2_out_dummy_out_4_delay_1 <= redist45_i_llvm_fpga_dummy_thread_bicg_b5_dummy_bicg2_out_dummy_out_4_delay_0;
            redist45_i_llvm_fpga_dummy_thread_bicg_b5_dummy_bicg2_out_dummy_out_4_delay_2 <= redist45_i_llvm_fpga_dummy_thread_bicg_b5_dummy_bicg2_out_dummy_out_4_delay_1;
            redist45_i_llvm_fpga_dummy_thread_bicg_b5_dummy_bicg2_out_dummy_out_4_q <= redist45_i_llvm_fpga_dummy_thread_bicg_b5_dummy_bicg2_out_dummy_out_4_delay_2;
        end
    end

    // i_llvm_fpga_forked_bicg_b5_forked_bicg3(BLACKBOX,99)@0
    // in in_stall_in@20000000
    bicg_i_llvm_fpga_forked_b5_forked_bicg0 thei_llvm_fpga_forked_bicg_b5_forked_bicg3 (
        .in_buffer_in(in_buffer_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_buffer_out(i_llvm_fpga_forked_bicg_b5_forked_bicg3_out_buffer_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist42_i_llvm_fpga_forked_bicg_b5_forked_bicg3_out_buffer_out_4(DELAY,455)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist42_i_llvm_fpga_forked_bicg_b5_forked_bicg3_out_buffer_out_4_delay_0 <= $unsigned(i_llvm_fpga_forked_bicg_b5_forked_bicg3_out_buffer_out);
            redist42_i_llvm_fpga_forked_bicg_b5_forked_bicg3_out_buffer_out_4_delay_1 <= redist42_i_llvm_fpga_forked_bicg_b5_forked_bicg3_out_buffer_out_4_delay_0;
            redist42_i_llvm_fpga_forked_bicg_b5_forked_bicg3_out_buffer_out_4_delay_2 <= redist42_i_llvm_fpga_forked_bicg_b5_forked_bicg3_out_buffer_out_4_delay_1;
            redist42_i_llvm_fpga_forked_bicg_b5_forked_bicg3_out_buffer_out_4_q <= redist42_i_llvm_fpga_forked_bicg_b5_forked_bicg3_out_buffer_out_4_delay_2;
        end
    end

    // i_llvm_fpga_pipeline_keep_going_bicg6(BLACKBOX,105)@4
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_dummy_out@20000000
    // out out_pipeline_forked_out@20000000
    // out out_pipeline_valid_out@20000000
    bicg_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_bicg6 (
        .in_data_in(redist42_i_llvm_fpga_forked_bicg_b5_forked_bicg3_out_buffer_out_4_q),
        .in_dummy_in(redist45_i_llvm_fpga_dummy_thread_bicg_b5_dummy_bicg2_out_dummy_out_4_q),
        .in_forked_in(redist42_i_llvm_fpga_forked_bicg_b5_forked_bicg3_out_buffer_out_4_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_bicg39_out_feedback_out_2),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_bicg39_out_feedback_valid_out_2),
        .in_pipeline_stall_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_bicg6_out_data_out),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_bicg6_out_exiting_valid_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_bicg6_out_not_exitcond_stall_out),
        .out_pipeline_dummy_out(i_llvm_fpga_pipeline_keep_going_bicg6_out_pipeline_dummy_out),
        .out_pipeline_forked_out(i_llvm_fpga_pipeline_keep_going_bicg6_out_pipeline_forked_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_bicg6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist41_i_llvm_fpga_pipeline_keep_going_bicg6_out_data_out_2(DELAY,454)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist41_i_llvm_fpga_pipeline_keep_going_bicg6_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pipeline_keep_going_bicg6_out_data_out);
            redist41_i_llvm_fpga_pipeline_keep_going_bicg6_out_data_out_2_q <= redist41_i_llvm_fpga_pipeline_keep_going_bicg6_out_data_out_2_delay_0;
        end
    end

    // i_bicg_b5_next_iter_isreal_bicg7(LOGICAL,90)@6
    assign i_bicg_b5_next_iter_isreal_bicg7_q = i_llvm_fpga_pop_coalesce_i1_bicg_b5_current_iter_isreal_bicg0_i_llvm_fpga_pop_coalesce_i1_bicg_b5_current_iter_isreal_bicg4_mux_x_q & redist41_i_llvm_fpga_pipeline_keep_going_bicg6_out_data_out_2_q;

    // i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_element_extension2_x(BITJOIN,206)@6
    assign i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_element_extension2_x_q = {i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_c_i7_03_x_q, i_bicg_b5_next_iter_isreal_bicg7_q};

    // redist25_i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_inv_pred_x_q_2(DELAY,438)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist25_i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_inv_pred_x_q_2_delay_0 <= $unsigned(i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_inv_pred_x_q);
            redist25_i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_inv_pred_x_q_2_q <= redist25_i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_inv_pred_x_q_2_delay_0;
        end
    end

    // valid_fanout_reg4(REG,258)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist18_sync_together121_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist26_i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_inv_pred_x_q_3(DELAY,439)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist26_i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_inv_pred_x_q_3_q <= $unsigned(redist25_i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_inv_pred_x_q_2_q);
        end
    end

    // redist27_i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_inv_pred_x_q_4(DELAY,440)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist27_i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_inv_pred_x_q_4_q <= $unsigned(redist26_i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_inv_pred_x_q_3_q);
        end
    end

    // valid_fanout_reg3(REG,257)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist20_sync_together121_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg1_x(FIFODELAY,207)@3 + 1
    // in i_valid@5
    // in i_write_pred@5
    // in i_data@6
    // out o_data@6
    assign i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg1_x_i_stall = ~ (valid_fanout_reg4_q & redist25_i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_inv_pred_x_q_2_q);
    assign i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg1_x_i_valid = valid_fanout_reg3_q & redist27_i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_inv_pred_x_q_4_q;
    assign i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg1_x_i_data = i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg1_x (
        .i_valid(i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_adapt_scalar_trunc4_sel_x(BITSELECT,209)@6
    assign i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg1_x_o_data[0:0];

    // redist43_i_llvm_fpga_forked_bicg_b5_forked_bicg3_out_buffer_out_6(DELAY,456)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist43_i_llvm_fpga_forked_bicg_b5_forked_bicg3_out_buffer_out_6_delay_0 <= $unsigned(redist42_i_llvm_fpga_forked_bicg_b5_forked_bicg3_out_buffer_out_4_q);
            redist43_i_llvm_fpga_forked_bicg_b5_forked_bicg3_out_buffer_out_6_q <= redist43_i_llvm_fpga_forked_bicg_b5_forked_bicg3_out_buffer_out_6_delay_0;
        end
    end

    // i_llvm_fpga_pop_coalesce_i1_bicg_b5_current_iter_isreal_bicg0_i_llvm_fpga_pop_coalesce_i1_bicg_b5_current_iter_isreal_bicg4_mux_x(MUX,194)@6
    assign i_llvm_fpga_pop_coalesce_i1_bicg_b5_current_iter_isreal_bicg0_i_llvm_fpga_pop_coalesce_i1_bicg_b5_current_iter_isreal_bicg4_mux_x_s = redist43_i_llvm_fpga_forked_bicg_b5_forked_bicg3_out_buffer_out_6_q;
    always @(i_llvm_fpga_pop_coalesce_i1_bicg_b5_current_iter_isreal_bicg0_i_llvm_fpga_pop_coalesce_i1_bicg_b5_current_iter_isreal_bicg4_mux_x_s or i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_adapt_scalar_trunc4_sel_x_b or VCC_q)
    begin
        unique case (i_llvm_fpga_pop_coalesce_i1_bicg_b5_current_iter_isreal_bicg0_i_llvm_fpga_pop_coalesce_i1_bicg_b5_current_iter_isreal_bicg4_mux_x_s)
            1'b0 : i_llvm_fpga_pop_coalesce_i1_bicg_b5_current_iter_isreal_bicg0_i_llvm_fpga_pop_coalesce_i1_bicg_b5_current_iter_isreal_bicg4_mux_x_q = i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_coalesce_i1_bicg_b5_current_iter_isreal_bicg0_i_llvm_fpga_pop_coalesce_i1_bicg_b5_current_iter_isreal_bicg4_mux_x_q = VCC_q;
            default : i_llvm_fpga_pop_coalesce_i1_bicg_b5_current_iter_isreal_bicg0_i_llvm_fpga_pop_coalesce_i1_bicg_b5_current_iter_isreal_bicg4_mux_x_q = 1'b0;
        endcase
    end

    // i_bicg_b5_current_iter_isspec_bicg5(LOGICAL,89)@6
    assign i_bicg_b5_current_iter_isspec_bicg5_q = i_llvm_fpga_pop_coalesce_i1_bicg_b5_current_iter_isreal_bicg0_i_llvm_fpga_pop_coalesce_i1_bicg_b5_current_iter_isreal_bicg4_mux_x_q ^ VCC_q;

    // c_bicg_r_local_pmem(CONSTANT,10)
    assign c_bicg_r_local_pmem_q = $unsigned(64'b0100000001000100000000000000000000000000000000000000000000000000);

    // i_arrayidx172_bicg0_upper_bits_x_merged_bit_select(BITSELECT,408)@6
    assign i_arrayidx172_bicg0_upper_bits_x_merged_bit_select_b = c_bicg_r_local_pmem_q[63:7];
    assign i_arrayidx172_bicg0_upper_bits_x_merged_bit_select_c = c_bicg_r_local_pmem_q[6:0];

    // redist9_sync_together121_aunroll_x_in_c0_eni11_1_tpl_4_inputreg0(DELAY,463)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist9_sync_together121_aunroll_x_in_c0_eni11_1_tpl_4_inputreg0_q <= $unsigned(in_c0_eni11_1_tpl);
        end
    end

    // redist9_sync_together121_aunroll_x_in_c0_eni11_1_tpl_4(DELAY,422)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist9_sync_together121_aunroll_x_in_c0_eni11_1_tpl_4_delay_0 <= $unsigned(redist9_sync_together121_aunroll_x_in_c0_eni11_1_tpl_4_inputreg0_q);
            redist9_sync_together121_aunroll_x_in_c0_eni11_1_tpl_4_delay_1 <= redist9_sync_together121_aunroll_x_in_c0_eni11_1_tpl_4_delay_0;
            redist9_sync_together121_aunroll_x_in_c0_eni11_1_tpl_4_q <= redist9_sync_together121_aunroll_x_in_c0_eni11_1_tpl_4_delay_1;
        end
    end

    // valid_fanout_reg19(REG,273)@0 + 1
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

    // valid_fanout_reg18(REG,272)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(redist18_sync_together121_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i64_idxprom21_push19_bicg0_i_llvm_fpga_push_i64_idxprom21_push19_bicg1_x(FIFODELAY,240)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i64_idxprom21_push19_bicg0_i_llvm_fpga_push_i64_idxprom21_push19_bicg1_x_i_stall = ~ (valid_fanout_reg19_q & i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_inv_pred_x_q);
    assign i_llvm_fpga_push_i64_idxprom21_push19_bicg0_i_llvm_fpga_push_i64_idxprom21_push19_bicg1_x_i_valid = valid_fanout_reg18_q & redist25_i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i64_idxprom21_push19_bicg0_i_llvm_fpga_push_i64_idxprom21_push19_bicg1_x_i_data = i_llvm_fpga_pop_i64_idxprom21_pop19_bicg0_i_llvm_fpga_pop_i64_idxprom21_pop19_bicg9_mux_x_q;
    assign i_llvm_fpga_push_i64_idxprom21_push19_bicg0_i_llvm_fpga_push_i64_idxprom21_push19_bicg1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i64_idxprom21_push19_bicg0_i_llvm_fpga_push_i64_idxprom21_push19_bicg1_x_i_valid[0];
    assign i_llvm_fpga_push_i64_idxprom21_push19_bicg0_i_llvm_fpga_push_i64_idxprom21_push19_bicg1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i64_idxprom21_push19_bicg0_i_llvm_fpga_push_i64_idxprom21_push19_bicg1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i64_idxprom21_push19_bicg0_i_llvm_fpga_push_i64_idxprom21_push19_bicg1_x (
        .i_valid(i_llvm_fpga_push_i64_idxprom21_push19_bicg0_i_llvm_fpga_push_i64_idxprom21_push19_bicg1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i64_idxprom21_push19_bicg0_i_llvm_fpga_push_i64_idxprom21_push19_bicg1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i64_idxprom21_pop19_bicg0_i_llvm_fpga_pop_i64_idxprom21_pop19_bicg9_mux_x_q),
        .o_data(i_llvm_fpga_push_i64_idxprom21_push19_bicg0_i_llvm_fpga_push_i64_idxprom21_push19_bicg1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i64_idxprom21_pop19_bicg0_i_llvm_fpga_pop_i64_idxprom21_pop19_bicg9_mux_x(MUX,201)@4
    assign i_llvm_fpga_pop_i64_idxprom21_pop19_bicg0_i_llvm_fpga_pop_i64_idxprom21_pop19_bicg9_mux_x_s = redist42_i_llvm_fpga_forked_bicg_b5_forked_bicg3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i64_idxprom21_pop19_bicg0_i_llvm_fpga_pop_i64_idxprom21_pop19_bicg9_mux_x_s or i_llvm_fpga_push_i64_idxprom21_push19_bicg0_i_llvm_fpga_push_i64_idxprom21_push19_bicg1_x_o_data or redist9_sync_together121_aunroll_x_in_c0_eni11_1_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i64_idxprom21_pop19_bicg0_i_llvm_fpga_pop_i64_idxprom21_pop19_bicg9_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i64_idxprom21_pop19_bicg0_i_llvm_fpga_pop_i64_idxprom21_pop19_bicg9_mux_x_q = i_llvm_fpga_push_i64_idxprom21_push19_bicg0_i_llvm_fpga_push_i64_idxprom21_push19_bicg1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i64_idxprom21_pop19_bicg0_i_llvm_fpga_pop_i64_idxprom21_pop19_bicg9_mux_x_q = redist9_sync_together121_aunroll_x_in_c0_eni11_1_tpl_4_q;
            default : i_llvm_fpga_pop_i64_idxprom21_pop19_bicg0_i_llvm_fpga_pop_i64_idxprom21_pop19_bicg9_mux_x_q = 64'b0;
        endcase
    end

    // i_arrayidx172_bicg0_dupName_0_trunc_sel_x(BITSELECT,179)@4
    assign i_arrayidx172_bicg0_dupName_0_trunc_sel_x_b = i_llvm_fpga_pop_i64_idxprom21_pop19_bicg0_i_llvm_fpga_pop_i64_idxprom21_pop19_bicg9_mux_x_q[6:0];

    // i_arrayidx172_bicg0_narrow_x(BITSELECT,172)@4
    assign i_arrayidx172_bicg0_narrow_x_b = i_arrayidx172_bicg0_dupName_0_trunc_sel_x_b[4:0];

    // redist33_i_arrayidx172_bicg0_narrow_x_b_2(DELAY,446)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist33_i_arrayidx172_bicg0_narrow_x_b_2_delay_0 <= $unsigned(i_arrayidx172_bicg0_narrow_x_b);
            redist33_i_arrayidx172_bicg0_narrow_x_b_2_q <= redist33_i_arrayidx172_bicg0_narrow_x_b_2_delay_0;
        end
    end

    // i_arrayidx172_bicg0_shift_join_x(BITJOIN,173)@6
    assign i_arrayidx172_bicg0_shift_join_x_q = {redist33_i_arrayidx172_bicg0_narrow_x_b_2_q, i_arrayidx133_bicg14_vt_const_1_q};

    // i_arrayidx172_bicg0_add_x(ADD,169)@6
    assign i_arrayidx172_bicg0_add_x_a = {1'b0, i_arrayidx172_bicg0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx172_bicg0_add_x_b = {1'b0, i_arrayidx172_bicg0_shift_join_x_q};
    assign i_arrayidx172_bicg0_add_x_o = $unsigned(i_arrayidx172_bicg0_add_x_a) + $unsigned(i_arrayidx172_bicg0_add_x_b);
    assign i_arrayidx172_bicg0_add_x_q = i_arrayidx172_bicg0_add_x_o[7:0];

    // i_arrayidx172_bicg0_dupName_2_trunc_sel_x(BITSELECT,180)@6
    assign i_arrayidx172_bicg0_dupName_2_trunc_sel_x_b = i_arrayidx172_bicg0_add_x_q[6:0];

    // i_arrayidx172_bicg0_append_upper_bits_x(BITJOIN,170)@6
    assign i_arrayidx172_bicg0_append_upper_bits_x_q = {i_arrayidx172_bicg0_upper_bits_x_merged_bit_select_b, i_arrayidx172_bicg0_dupName_2_trunc_sel_x_b};

    // i_arrayidx172_bicg10_vt_select_63(BITSELECT,85)@6
    assign i_arrayidx172_bicg10_vt_select_63_b = i_arrayidx172_bicg0_append_upper_bits_x_q[63:2];

    // i_arrayidx172_bicg10_vt_join(BITJOIN,84)@6
    assign i_arrayidx172_bicg10_vt_join_q = {i_arrayidx172_bicg10_vt_select_63_b, i_arrayidx133_bicg14_vt_const_1_q};

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_mem_unnamed_bicg5_bicg11(BLACKBOX,101)@6
    // out out_o_almost_empty@10
    // out out_o_empty@10
    // out out_o_readdata@10
    // out out_o_stall@10
    // out out_o_valid@10
    // out out_unnamed_bicg5_bicg_avm_address@20000000
    // out out_unnamed_bicg5_bicg_avm_burstcount@20000000
    // out out_unnamed_bicg5_bicg_avm_byteenable@20000000
    // out out_unnamed_bicg5_bicg_avm_enable@20000000
    // out out_unnamed_bicg5_bicg_avm_read@20000000
    // out out_unnamed_bicg5_bicg_avm_write@20000000
    // out out_unnamed_bicg5_bicg_avm_writedata@20000000
    bicg_i_llvm_fpga_mem_unnamed_5_bicg0 thei_llvm_fpga_mem_unnamed_bicg5_bicg11 (
        .in_almost_empty_in(GND_q),
        .in_empty_in(GND_q),
        .in_flush(in_flush),
        .in_i_address(i_arrayidx172_bicg10_vt_join_q),
        .in_i_predicate(i_bicg_b5_current_iter_isspec_bicg5_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg6_q),
        .in_unnamed_bicg5_bicg_avm_readdata(in_unnamed_bicg5_bicg_avm_readdata),
        .in_unnamed_bicg5_bicg_avm_readdatavalid(in_unnamed_bicg5_bicg_avm_readdatavalid),
        .in_unnamed_bicg5_bicg_avm_waitrequest(in_unnamed_bicg5_bicg_avm_waitrequest),
        .in_unnamed_bicg5_bicg_avm_writeack(in_unnamed_bicg5_bicg_avm_writeack),
        .out_o_almost_empty(),
        .out_o_empty(),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_bicg5_bicg11_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_bicg5_bicg_avm_address(i_llvm_fpga_mem_unnamed_bicg5_bicg11_out_unnamed_bicg5_bicg_avm_address),
        .out_unnamed_bicg5_bicg_avm_burstcount(i_llvm_fpga_mem_unnamed_bicg5_bicg11_out_unnamed_bicg5_bicg_avm_burstcount),
        .out_unnamed_bicg5_bicg_avm_byteenable(i_llvm_fpga_mem_unnamed_bicg5_bicg11_out_unnamed_bicg5_bicg_avm_byteenable),
        .out_unnamed_bicg5_bicg_avm_enable(i_llvm_fpga_mem_unnamed_bicg5_bicg11_out_unnamed_bicg5_bicg_avm_enable),
        .out_unnamed_bicg5_bicg_avm_read(i_llvm_fpga_mem_unnamed_bicg5_bicg11_out_unnamed_bicg5_bicg_avm_read),
        .out_unnamed_bicg5_bicg_avm_write(i_llvm_fpga_mem_unnamed_bicg5_bicg11_out_unnamed_bicg5_bicg_avm_write),
        .out_unnamed_bicg5_bicg_avm_writedata(i_llvm_fpga_mem_unnamed_bicg5_bicg11_out_unnamed_bicg5_bicg_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,74)
    assign out_unnamed_bicg5_bicg_avm_address = i_llvm_fpga_mem_unnamed_bicg5_bicg11_out_unnamed_bicg5_bicg_avm_address;
    assign out_unnamed_bicg5_bicg_avm_enable = i_llvm_fpga_mem_unnamed_bicg5_bicg11_out_unnamed_bicg5_bicg_avm_enable;
    assign out_unnamed_bicg5_bicg_avm_read = i_llvm_fpga_mem_unnamed_bicg5_bicg11_out_unnamed_bicg5_bicg_avm_read;
    assign out_unnamed_bicg5_bicg_avm_write = i_llvm_fpga_mem_unnamed_bicg5_bicg11_out_unnamed_bicg5_bicg_avm_write;
    assign out_unnamed_bicg5_bicg_avm_writedata = i_llvm_fpga_mem_unnamed_bicg5_bicg11_out_unnamed_bicg5_bicg_avm_writedata;
    assign out_unnamed_bicg5_bicg_avm_byteenable = i_llvm_fpga_mem_unnamed_bicg5_bicg11_out_unnamed_bicg5_bicg_avm_byteenable;
    assign out_unnamed_bicg5_bicg_avm_burstcount = i_llvm_fpga_mem_unnamed_bicg5_bicg11_out_unnamed_bicg5_bicg_avm_burstcount;

    // regfree_osync(GPOUT,113)
    assign out_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_bicg6_out_exiting_valid_out;

    // valid_fanout_reg8(REG,262)@5 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist21_sync_together121_aunroll_x_in_i_valid_5_q);
        end
    end

    // c_bicg_A_local_pmem(CONSTANT,8)
    assign c_bicg_A_local_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx133_bicg0_upper_bits_x_merged_bit_select(BITSELECT,406)@5
    assign i_arrayidx133_bicg0_upper_bits_x_merged_bit_select_b = c_bicg_A_local_pmem_q[63:12];
    assign i_arrayidx133_bicg0_upper_bits_x_merged_bit_select_c = c_bicg_A_local_pmem_q[11:0];

    // redist0_i_arrayidx133_bicg0_upper_bits_x_merged_bit_select_b_1(DELAY,413)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_i_arrayidx133_bicg0_upper_bits_x_merged_bit_select_b_1_q <= $unsigned(i_arrayidx133_bicg0_upper_bits_x_merged_bit_select_b);
        end
    end

    // c_i32_0111(CONSTANT,69)
    assign c_i32_0111_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i32_1112(CONSTANT,70)
    assign c_i32_1112_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_bicg29(ADD,97)@6
    assign i_inc_bicg29_a = {1'b0, i_llvm_fpga_pop_i32_j_017_pop16_bicg0_i_llvm_fpga_pop_i32_j_017_pop16_bicg12_mux_x_q};
    assign i_inc_bicg29_b = {1'b0, c_i32_1112_q};
    assign i_inc_bicg29_o = $unsigned(i_inc_bicg29_a) + $unsigned(i_inc_bicg29_b);
    assign i_inc_bicg29_q = i_inc_bicg29_o[32:0];

    // bgTrunc_i_inc_bicg29_sel_x(BITSELECT,118)@6
    assign bgTrunc_i_inc_bicg29_sel_x_b = i_inc_bicg29_q[31:0];

    // valid_fanout_reg23(REG,277)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg23_q <= $unsigned(redist18_sync_together121_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg22(REG,276)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg22_q <= $unsigned(redist20_sync_together121_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i32_j_017_push16_bicg0_i_llvm_fpga_push_i32_j_017_push16_bicg1_x(FIFODELAY,234)@3 + 1
    // in i_valid@5
    // in i_write_pred@5
    // in i_data@6
    // out o_data@6
    assign i_llvm_fpga_push_i32_j_017_push16_bicg0_i_llvm_fpga_push_i32_j_017_push16_bicg1_x_i_stall = ~ (valid_fanout_reg23_q & redist25_i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_inv_pred_x_q_2_q);
    assign i_llvm_fpga_push_i32_j_017_push16_bicg0_i_llvm_fpga_push_i32_j_017_push16_bicg1_x_i_valid = valid_fanout_reg22_q & redist27_i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_inv_pred_x_q_4_q;
    assign i_llvm_fpga_push_i32_j_017_push16_bicg0_i_llvm_fpga_push_i32_j_017_push16_bicg1_x_i_data = bgTrunc_i_inc_bicg29_sel_x_b;
    assign i_llvm_fpga_push_i32_j_017_push16_bicg0_i_llvm_fpga_push_i32_j_017_push16_bicg1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_j_017_push16_bicg0_i_llvm_fpga_push_i32_j_017_push16_bicg1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_j_017_push16_bicg0_i_llvm_fpga_push_i32_j_017_push16_bicg1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_j_017_push16_bicg0_i_llvm_fpga_push_i32_j_017_push16_bicg1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_j_017_push16_bicg0_i_llvm_fpga_push_i32_j_017_push16_bicg1_x (
        .i_valid(i_llvm_fpga_push_i32_j_017_push16_bicg0_i_llvm_fpga_push_i32_j_017_push16_bicg1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_j_017_push16_bicg0_i_llvm_fpga_push_i32_j_017_push16_bicg1_x_i_stall_bitsignaltemp),
        .i_data(bgTrunc_i_inc_bicg29_sel_x_b),
        .o_data(i_llvm_fpga_push_i32_j_017_push16_bicg0_i_llvm_fpga_push_i32_j_017_push16_bicg1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_j_017_pop16_bicg0_i_llvm_fpga_pop_i32_j_017_pop16_bicg12_mux_x(MUX,199)@6
    assign i_llvm_fpga_pop_i32_j_017_pop16_bicg0_i_llvm_fpga_pop_i32_j_017_pop16_bicg12_mux_x_s = redist43_i_llvm_fpga_forked_bicg_b5_forked_bicg3_out_buffer_out_6_q;
    always @(i_llvm_fpga_pop_i32_j_017_pop16_bicg0_i_llvm_fpga_pop_i32_j_017_pop16_bicg12_mux_x_s or i_llvm_fpga_push_i32_j_017_push16_bicg0_i_llvm_fpga_push_i32_j_017_push16_bicg1_x_o_data or c_i32_0111_q)
    begin
        unique case (i_llvm_fpga_pop_i32_j_017_pop16_bicg0_i_llvm_fpga_pop_i32_j_017_pop16_bicg12_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_j_017_pop16_bicg0_i_llvm_fpga_pop_i32_j_017_pop16_bicg12_mux_x_q = i_llvm_fpga_push_i32_j_017_push16_bicg0_i_llvm_fpga_push_i32_j_017_push16_bicg1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_j_017_pop16_bicg0_i_llvm_fpga_pop_i32_j_017_pop16_bicg12_mux_x_q = c_i32_0111_q;
            default : i_llvm_fpga_pop_i32_j_017_pop16_bicg0_i_llvm_fpga_pop_i32_j_017_pop16_bicg12_mux_x_q = 32'b0;
        endcase
    end

    // i_idxprom12_bicg13_sel_x(BITSELECT,193)@6
    assign i_idxprom12_bicg13_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_j_017_pop16_bicg0_i_llvm_fpga_pop_i32_j_017_pop16_bicg12_mux_x_q[31:0]};

    // i_idxprom12_bicg13_vt_select_31(BITSELECT,96)@6
    assign i_idxprom12_bicg13_vt_select_31_b = i_idxprom12_bicg13_sel_x_b[31:0];

    // i_idxprom12_bicg13_vt_join(BITJOIN,95)@6
    assign i_idxprom12_bicg13_vt_join_q = {c_i32_0111_q, i_idxprom12_bicg13_vt_select_31_b};

    // i_arrayidx133_bicg0_dupName_3_trunc_sel_x(BITSELECT,155)@6
    assign i_arrayidx133_bicg0_dupName_3_trunc_sel_x_b = i_idxprom12_bicg13_vt_join_q[11:0];

    // i_arrayidx133_bicg0_narrow_x(BITSELECT,138)@6
    assign i_arrayidx133_bicg0_narrow_x_b = i_arrayidx133_bicg0_dupName_3_trunc_sel_x_b[9:0];

    // i_arrayidx133_bicg0_shift_join_x(BITJOIN,139)@6
    assign i_arrayidx133_bicg0_shift_join_x_q = {i_arrayidx133_bicg0_narrow_x_b, i_arrayidx133_bicg14_vt_const_1_q};

    // i_arrayidx133_bicg0_mult_multconst_x(CONSTANT,150)
    assign i_arrayidx133_bicg0_mult_multconst_x_q = $unsigned(5'b00000);

    // i_arrayidx133_bicg0_dupName_0_trunc_sel_x(BITSELECT,152)@4
    assign i_arrayidx133_bicg0_dupName_0_trunc_sel_x_b = i_llvm_fpga_pop_i64_idxprom21_pop19_bicg0_i_llvm_fpga_pop_i64_idxprom21_pop19_bicg9_mux_x_q[11:0];

    // xIfSign_mergedSignalTM_uid369_i_arrayidx133_bicg0_mult_x(BITJOIN,368)@4
    assign xIfSign_mergedSignalTM_uid369_i_arrayidx133_bicg0_mult_x_q = {GND_q, i_arrayidx133_bicg0_dupName_0_trunc_sel_x_b};

    // padACst_uid373_i_arrayidx133_bicg0_mult_x(CONSTANT,372)
    assign padACst_uid373_i_arrayidx133_bicg0_mult_x_q = $unsigned(4'b0000);

    // aPostPad_uid374_i_arrayidx133_bicg0_mult_x(BITJOIN,373)@4
    assign aPostPad_uid374_i_arrayidx133_bicg0_mult_x_q = {xIfSign_mergedSignalTM_uid369_i_arrayidx133_bicg0_mult_x_q, padACst_uid373_i_arrayidx133_bicg0_mult_x_q};

    // sub_uid375_i_arrayidx133_bicg0_mult_x(SUB,374)@4
    assign sub_uid375_i_arrayidx133_bicg0_mult_x_a = $unsigned({{1{aPostPad_uid374_i_arrayidx133_bicg0_mult_x_q[16]}}, aPostPad_uid374_i_arrayidx133_bicg0_mult_x_q});
    assign sub_uid375_i_arrayidx133_bicg0_mult_x_b = $unsigned({{5{xIfSign_mergedSignalTM_uid369_i_arrayidx133_bicg0_mult_x_q[12]}}, xIfSign_mergedSignalTM_uid369_i_arrayidx133_bicg0_mult_x_q});
    assign sub_uid375_i_arrayidx133_bicg0_mult_x_o = $unsigned($signed(sub_uid375_i_arrayidx133_bicg0_mult_x_a) - $signed(sub_uid375_i_arrayidx133_bicg0_mult_x_b));
    assign sub_uid375_i_arrayidx133_bicg0_mult_x_q = sub_uid375_i_arrayidx133_bicg0_mult_x_o[17:0];

    // sR_bottomRange_uid379_i_arrayidx133_bicg0_mult_x(BITSELECT,378)@4
    assign sR_bottomRange_uid379_i_arrayidx133_bicg0_mult_x_in = $unsigned(sub_uid375_i_arrayidx133_bicg0_mult_x_q[15:0]);
    assign sR_bottomRange_uid379_i_arrayidx133_bicg0_mult_x_b = $unsigned(sR_bottomRange_uid379_i_arrayidx133_bicg0_mult_x_in[15:0]);

    // sR_bottomExtension_uid378_i_arrayidx133_bicg0_mult_x(CONSTANT,377)
    assign sR_bottomExtension_uid378_i_arrayidx133_bicg0_mult_x_q = $unsigned(3'b000);

    // sR_mergedSignalTM_uid380_i_arrayidx133_bicg0_mult_x(BITJOIN,379)@4
    assign sR_mergedSignalTM_uid380_i_arrayidx133_bicg0_mult_x_q = {sR_bottomRange_uid379_i_arrayidx133_bicg0_mult_x_b, sR_bottomExtension_uid378_i_arrayidx133_bicg0_mult_x_q};

    // i_arrayidx133_bicg0_mult_extender_x(BITJOIN,149)@4
    assign i_arrayidx133_bicg0_mult_extender_x_q = {i_arrayidx133_bicg0_mult_multconst_x_q, sR_mergedSignalTM_uid380_i_arrayidx133_bicg0_mult_x_q};

    // i_arrayidx133_bicg0_dupName_1_trunc_sel_x(BITSELECT,153)@4
    assign i_arrayidx133_bicg0_dupName_1_trunc_sel_x_b = i_arrayidx133_bicg0_mult_extender_x_q[11:0];

    // redist36_i_arrayidx133_bicg0_dupName_1_trunc_sel_x_b_1(DELAY,449)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist36_i_arrayidx133_bicg0_dupName_1_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx133_bicg0_dupName_1_trunc_sel_x_b);
        end
    end

    // i_arrayidx133_bicg0_add_x(ADD,133)@5
    assign i_arrayidx133_bicg0_add_x_a = {1'b0, i_arrayidx133_bicg0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx133_bicg0_add_x_b = {1'b0, redist36_i_arrayidx133_bicg0_dupName_1_trunc_sel_x_b_1_q};
    assign i_arrayidx133_bicg0_add_x_o = $unsigned(i_arrayidx133_bicg0_add_x_a) + $unsigned(i_arrayidx133_bicg0_add_x_b);
    assign i_arrayidx133_bicg0_add_x_q = i_arrayidx133_bicg0_add_x_o[12:0];

    // i_arrayidx133_bicg0_dupName_2_trunc_sel_x(BITSELECT,154)@5
    assign i_arrayidx133_bicg0_dupName_2_trunc_sel_x_b = i_arrayidx133_bicg0_add_x_q[11:0];

    // redist35_i_arrayidx133_bicg0_dupName_2_trunc_sel_x_b_1(DELAY,448)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist35_i_arrayidx133_bicg0_dupName_2_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx133_bicg0_dupName_2_trunc_sel_x_b);
        end
    end

    // i_arrayidx133_bicg0_dupName_0_add_x(ADD,143)@6
    assign i_arrayidx133_bicg0_dupName_0_add_x_a = {1'b0, redist35_i_arrayidx133_bicg0_dupName_2_trunc_sel_x_b_1_q};
    assign i_arrayidx133_bicg0_dupName_0_add_x_b = {1'b0, i_arrayidx133_bicg0_shift_join_x_q};
    assign i_arrayidx133_bicg0_dupName_0_add_x_o = $unsigned(i_arrayidx133_bicg0_dupName_0_add_x_a) + $unsigned(i_arrayidx133_bicg0_dupName_0_add_x_b);
    assign i_arrayidx133_bicg0_dupName_0_add_x_q = i_arrayidx133_bicg0_dupName_0_add_x_o[12:0];

    // i_arrayidx133_bicg0_dupName_5_trunc_sel_x(BITSELECT,156)@6
    assign i_arrayidx133_bicg0_dupName_5_trunc_sel_x_b = i_arrayidx133_bicg0_dupName_0_add_x_q[11:0];

    // i_arrayidx133_bicg0_append_upper_bits_x(BITJOIN,134)@6
    assign i_arrayidx133_bicg0_append_upper_bits_x_q = {redist0_i_arrayidx133_bicg0_upper_bits_x_merged_bit_select_b_1_q, i_arrayidx133_bicg0_dupName_5_trunc_sel_x_b};

    // i_arrayidx133_bicg14_vt_select_63(BITSELECT,79)@6
    assign i_arrayidx133_bicg14_vt_select_63_b = i_arrayidx133_bicg0_append_upper_bits_x_q[63:2];

    // i_arrayidx133_bicg14_vt_join(BITJOIN,78)@6
    assign i_arrayidx133_bicg14_vt_join_q = {i_arrayidx133_bicg14_vt_select_63_b, i_arrayidx133_bicg14_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_bicg6_bicg15(BLACKBOX,102)@6
    // out out_o_almost_empty@10
    // out out_o_empty@10
    // out out_o_readdata@10
    // out out_o_stall@10
    // out out_o_valid@10
    // out out_unnamed_bicg6_bicg_avm_address@20000000
    // out out_unnamed_bicg6_bicg_avm_burstcount@20000000
    // out out_unnamed_bicg6_bicg_avm_byteenable@20000000
    // out out_unnamed_bicg6_bicg_avm_enable@20000000
    // out out_unnamed_bicg6_bicg_avm_read@20000000
    // out out_unnamed_bicg6_bicg_avm_write@20000000
    // out out_unnamed_bicg6_bicg_avm_writedata@20000000
    bicg_i_llvm_fpga_mem_unnamed_6_bicg0 thei_llvm_fpga_mem_unnamed_bicg6_bicg15 (
        .in_almost_empty_in(GND_q),
        .in_empty_in(GND_q),
        .in_flush(in_flush),
        .in_i_address(i_arrayidx133_bicg14_vt_join_q),
        .in_i_predicate(i_bicg_b5_current_iter_isspec_bicg5_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg8_q),
        .in_unnamed_bicg6_bicg_avm_readdata(in_unnamed_bicg6_bicg_avm_readdata),
        .in_unnamed_bicg6_bicg_avm_readdatavalid(in_unnamed_bicg6_bicg_avm_readdatavalid),
        .in_unnamed_bicg6_bicg_avm_waitrequest(in_unnamed_bicg6_bicg_avm_waitrequest),
        .in_unnamed_bicg6_bicg_avm_writeack(in_unnamed_bicg6_bicg_avm_writeack),
        .out_o_almost_empty(),
        .out_o_empty(),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_bicg6_bicg15_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_bicg6_bicg_avm_address(i_llvm_fpga_mem_unnamed_bicg6_bicg15_out_unnamed_bicg6_bicg_avm_address),
        .out_unnamed_bicg6_bicg_avm_burstcount(i_llvm_fpga_mem_unnamed_bicg6_bicg15_out_unnamed_bicg6_bicg_avm_burstcount),
        .out_unnamed_bicg6_bicg_avm_byteenable(i_llvm_fpga_mem_unnamed_bicg6_bicg15_out_unnamed_bicg6_bicg_avm_byteenable),
        .out_unnamed_bicg6_bicg_avm_enable(i_llvm_fpga_mem_unnamed_bicg6_bicg15_out_unnamed_bicg6_bicg_avm_enable),
        .out_unnamed_bicg6_bicg_avm_read(i_llvm_fpga_mem_unnamed_bicg6_bicg15_out_unnamed_bicg6_bicg_avm_read),
        .out_unnamed_bicg6_bicg_avm_write(i_llvm_fpga_mem_unnamed_bicg6_bicg15_out_unnamed_bicg6_bicg_avm_write),
        .out_unnamed_bicg6_bicg_avm_writedata(i_llvm_fpga_mem_unnamed_bicg6_bicg15_out_unnamed_bicg6_bicg_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,123)
    assign out_unnamed_bicg6_bicg_avm_address = i_llvm_fpga_mem_unnamed_bicg6_bicg15_out_unnamed_bicg6_bicg_avm_address;
    assign out_unnamed_bicg6_bicg_avm_enable = i_llvm_fpga_mem_unnamed_bicg6_bicg15_out_unnamed_bicg6_bicg_avm_enable;
    assign out_unnamed_bicg6_bicg_avm_read = i_llvm_fpga_mem_unnamed_bicg6_bicg15_out_unnamed_bicg6_bicg_avm_read;
    assign out_unnamed_bicg6_bicg_avm_write = i_llvm_fpga_mem_unnamed_bicg6_bicg15_out_unnamed_bicg6_bicg_avm_write;
    assign out_unnamed_bicg6_bicg_avm_writedata = i_llvm_fpga_mem_unnamed_bicg6_bicg15_out_unnamed_bicg6_bicg_avm_writedata;
    assign out_unnamed_bicg6_bicg_avm_byteenable = i_llvm_fpga_mem_unnamed_bicg6_bicg15_out_unnamed_bicg6_bicg_avm_byteenable;
    assign out_unnamed_bicg6_bicg_avm_burstcount = i_llvm_fpga_mem_unnamed_bicg6_bicg15_out_unnamed_bicg6_bicg_avm_burstcount;

    // dupName_0_regfree_osync_x(GPOUT,124)
    assign out_pipeline_dummy_out = i_llvm_fpga_pipeline_keep_going_bicg6_out_pipeline_dummy_out;

    // redist22_sync_together121_aunroll_x_in_i_valid_13(DELAY,435)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("SYNC"), .phase(5), .modulus(2), .reset_high(1'b0) )
    redist22_sync_together121_aunroll_x_in_i_valid_13 ( .xin(redist21_sync_together121_aunroll_x_in_i_valid_5_q), .xout(redist22_sync_together121_aunroll_x_in_i_valid_13_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg11(REG,265)@13 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist22_sync_together121_aunroll_x_in_i_valid_13_q);
        end
    end

    // redist46_i_bicg_b5_current_iter_isspec_bicg5_q_8(DELAY,459)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist46_i_bicg_b5_current_iter_isspec_bicg5_q_8 ( .xin(i_bicg_b5_current_iter_isspec_bicg5_q), .xout(redist46_i_bicg_b5_current_iter_isspec_bicg5_q_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist10_sync_together121_aunroll_x_in_c0_eni11_3_tpl_4(DELAY,423)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_sync_together121_aunroll_x_in_c0_eni11_3_tpl_4_delay_0 <= $unsigned(in_c0_eni11_3_tpl);
            redist10_sync_together121_aunroll_x_in_c0_eni11_3_tpl_4_delay_1 <= redist10_sync_together121_aunroll_x_in_c0_eni11_3_tpl_4_delay_0;
            redist10_sync_together121_aunroll_x_in_c0_eni11_3_tpl_4_delay_2 <= redist10_sync_together121_aunroll_x_in_c0_eni11_3_tpl_4_delay_1;
            redist10_sync_together121_aunroll_x_in_c0_eni11_3_tpl_4_q <= redist10_sync_together121_aunroll_x_in_c0_eni11_3_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi3_pop819_push18_bicg0_element_extension2_x(BITJOIN,224)@4
    assign i_llvm_fpga_push_i1_memdep_phi3_pop819_push18_bicg0_element_extension2_x_q = {i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_c_i7_03_x_q, i_llvm_fpga_pop_i1_memdep_phi3_pop819_pop18_bicg0_i_llvm_fpga_pop_i1_memdep_phi3_pop819_pop18_bicg17_mux_x_q};

    // valid_fanout_reg21(REG,275)@0 + 1
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

    // valid_fanout_reg20(REG,274)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg20_q <= $unsigned(redist18_sync_together121_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi3_pop819_push18_bicg0_i_llvm_fpga_push_i1_memdep_phi3_pop819_push18_bicg1_x(FIFODELAY,225)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i1_memdep_phi3_pop819_push18_bicg0_i_llvm_fpga_push_i1_memdep_phi3_pop819_push18_bicg1_x_i_stall = ~ (valid_fanout_reg21_q & i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_memdep_phi3_pop819_push18_bicg0_i_llvm_fpga_push_i1_memdep_phi3_pop819_push18_bicg1_x_i_valid = valid_fanout_reg20_q & redist25_i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i1_memdep_phi3_pop819_push18_bicg0_i_llvm_fpga_push_i1_memdep_phi3_pop819_push18_bicg1_x_i_data = i_llvm_fpga_push_i1_memdep_phi3_pop819_push18_bicg0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_memdep_phi3_pop819_push18_bicg0_i_llvm_fpga_push_i1_memdep_phi3_pop819_push18_bicg1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi3_pop819_push18_bicg0_i_llvm_fpga_push_i1_memdep_phi3_pop819_push18_bicg1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_memdep_phi3_pop819_push18_bicg0_i_llvm_fpga_push_i1_memdep_phi3_pop819_push18_bicg1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi3_pop819_push18_bicg0_i_llvm_fpga_push_i1_memdep_phi3_pop819_push18_bicg1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_memdep_phi3_pop819_push18_bicg0_i_llvm_fpga_push_i1_memdep_phi3_pop819_push18_bicg1_x (
        .i_valid(i_llvm_fpga_push_i1_memdep_phi3_pop819_push18_bicg0_i_llvm_fpga_push_i1_memdep_phi3_pop819_push18_bicg1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_memdep_phi3_pop819_push18_bicg0_i_llvm_fpga_push_i1_memdep_phi3_pop819_push18_bicg1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_memdep_phi3_pop819_push18_bicg0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_memdep_phi3_pop819_push18_bicg0_i_llvm_fpga_push_i1_memdep_phi3_pop819_push18_bicg1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_memdep_phi3_pop819_push18_bicg0_adapt_scalar_trunc4_sel_x(BITSELECT,227)@4
    assign i_llvm_fpga_push_i1_memdep_phi3_pop819_push18_bicg0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_memdep_phi3_pop819_push18_bicg0_i_llvm_fpga_push_i1_memdep_phi3_pop819_push18_bicg1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_memdep_phi3_pop819_pop18_bicg0_i_llvm_fpga_pop_i1_memdep_phi3_pop819_pop18_bicg17_mux_x(MUX,197)@4
    assign i_llvm_fpga_pop_i1_memdep_phi3_pop819_pop18_bicg0_i_llvm_fpga_pop_i1_memdep_phi3_pop819_pop18_bicg17_mux_x_s = redist42_i_llvm_fpga_forked_bicg_b5_forked_bicg3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i1_memdep_phi3_pop819_pop18_bicg0_i_llvm_fpga_pop_i1_memdep_phi3_pop819_pop18_bicg17_mux_x_s or i_llvm_fpga_push_i1_memdep_phi3_pop819_push18_bicg0_adapt_scalar_trunc4_sel_x_b or redist10_sync_together121_aunroll_x_in_c0_eni11_3_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i1_memdep_phi3_pop819_pop18_bicg0_i_llvm_fpga_pop_i1_memdep_phi3_pop819_pop18_bicg17_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_memdep_phi3_pop819_pop18_bicg0_i_llvm_fpga_pop_i1_memdep_phi3_pop819_pop18_bicg17_mux_x_q = i_llvm_fpga_push_i1_memdep_phi3_pop819_push18_bicg0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_memdep_phi3_pop819_pop18_bicg0_i_llvm_fpga_pop_i1_memdep_phi3_pop819_pop18_bicg17_mux_x_q = redist10_sync_together121_aunroll_x_in_c0_eni11_3_tpl_4_q;
            default : i_llvm_fpga_pop_i1_memdep_phi3_pop819_pop18_bicg0_i_llvm_fpga_pop_i1_memdep_phi3_pop819_pop18_bicg17_mux_x_q = 1'b0;
        endcase
    end

    // redist11_sync_together121_aunroll_x_in_c0_eni11_4_tpl_4(DELAY,424)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist11_sync_together121_aunroll_x_in_c0_eni11_4_tpl_4_delay_0 <= $unsigned(in_c0_eni11_4_tpl);
            redist11_sync_together121_aunroll_x_in_c0_eni11_4_tpl_4_delay_1 <= redist11_sync_together121_aunroll_x_in_c0_eni11_4_tpl_4_delay_0;
            redist11_sync_together121_aunroll_x_in_c0_eni11_4_tpl_4_delay_2 <= redist11_sync_together121_aunroll_x_in_c0_eni11_4_tpl_4_delay_1;
            redist11_sync_together121_aunroll_x_in_c0_eni11_4_tpl_4_q <= redist11_sync_together121_aunroll_x_in_c0_eni11_4_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi2_pop1125_push23_bicg0_element_extension2_x(BITJOIN,218)@4
    assign i_llvm_fpga_push_i1_memdep_phi2_pop1125_push23_bicg0_element_extension2_x_q = {i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_c_i7_03_x_q, i_llvm_fpga_pop_i1_memdep_phi2_pop1125_pop23_bicg0_i_llvm_fpga_pop_i1_memdep_phi2_pop1125_pop23_bicg18_mux_x_q};

    // valid_fanout_reg17(REG,271)@0 + 1
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

    // valid_fanout_reg16(REG,270)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist18_sync_together121_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi2_pop1125_push23_bicg0_i_llvm_fpga_push_i1_memdep_phi2_pop1125_push23_bicg1_x(FIFODELAY,219)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i1_memdep_phi2_pop1125_push23_bicg0_i_llvm_fpga_push_i1_memdep_phi2_pop1125_push23_bicg1_x_i_stall = ~ (valid_fanout_reg17_q & i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_memdep_phi2_pop1125_push23_bicg0_i_llvm_fpga_push_i1_memdep_phi2_pop1125_push23_bicg1_x_i_valid = valid_fanout_reg16_q & redist25_i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i1_memdep_phi2_pop1125_push23_bicg0_i_llvm_fpga_push_i1_memdep_phi2_pop1125_push23_bicg1_x_i_data = i_llvm_fpga_push_i1_memdep_phi2_pop1125_push23_bicg0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_memdep_phi2_pop1125_push23_bicg0_i_llvm_fpga_push_i1_memdep_phi2_pop1125_push23_bicg1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi2_pop1125_push23_bicg0_i_llvm_fpga_push_i1_memdep_phi2_pop1125_push23_bicg1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_memdep_phi2_pop1125_push23_bicg0_i_llvm_fpga_push_i1_memdep_phi2_pop1125_push23_bicg1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi2_pop1125_push23_bicg0_i_llvm_fpga_push_i1_memdep_phi2_pop1125_push23_bicg1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_memdep_phi2_pop1125_push23_bicg0_i_llvm_fpga_push_i1_memdep_phi2_pop1125_push23_bicg1_x (
        .i_valid(i_llvm_fpga_push_i1_memdep_phi2_pop1125_push23_bicg0_i_llvm_fpga_push_i1_memdep_phi2_pop1125_push23_bicg1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_memdep_phi2_pop1125_push23_bicg0_i_llvm_fpga_push_i1_memdep_phi2_pop1125_push23_bicg1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_memdep_phi2_pop1125_push23_bicg0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_memdep_phi2_pop1125_push23_bicg0_i_llvm_fpga_push_i1_memdep_phi2_pop1125_push23_bicg1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_memdep_phi2_pop1125_push23_bicg0_adapt_scalar_trunc4_sel_x(BITSELECT,221)@4
    assign i_llvm_fpga_push_i1_memdep_phi2_pop1125_push23_bicg0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_memdep_phi2_pop1125_push23_bicg0_i_llvm_fpga_push_i1_memdep_phi2_pop1125_push23_bicg1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_memdep_phi2_pop1125_pop23_bicg0_i_llvm_fpga_pop_i1_memdep_phi2_pop1125_pop23_bicg18_mux_x(MUX,196)@4
    assign i_llvm_fpga_pop_i1_memdep_phi2_pop1125_pop23_bicg0_i_llvm_fpga_pop_i1_memdep_phi2_pop1125_pop23_bicg18_mux_x_s = redist42_i_llvm_fpga_forked_bicg_b5_forked_bicg3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i1_memdep_phi2_pop1125_pop23_bicg0_i_llvm_fpga_pop_i1_memdep_phi2_pop1125_pop23_bicg18_mux_x_s or i_llvm_fpga_push_i1_memdep_phi2_pop1125_push23_bicg0_adapt_scalar_trunc4_sel_x_b or redist11_sync_together121_aunroll_x_in_c0_eni11_4_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i1_memdep_phi2_pop1125_pop23_bicg0_i_llvm_fpga_pop_i1_memdep_phi2_pop1125_pop23_bicg18_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_memdep_phi2_pop1125_pop23_bicg0_i_llvm_fpga_pop_i1_memdep_phi2_pop1125_pop23_bicg18_mux_x_q = i_llvm_fpga_push_i1_memdep_phi2_pop1125_push23_bicg0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_memdep_phi2_pop1125_pop23_bicg0_i_llvm_fpga_pop_i1_memdep_phi2_pop1125_pop23_bicg18_mux_x_q = redist11_sync_together121_aunroll_x_in_c0_eni11_4_tpl_4_q;
            default : i_llvm_fpga_pop_i1_memdep_phi2_pop1125_pop23_bicg0_i_llvm_fpga_pop_i1_memdep_phi2_pop1125_pop23_bicg18_mux_x_q = 1'b0;
        endcase
    end

    // i_memdep_phi3_or_bicg19(LOGICAL,107)@4 + 1
    assign i_memdep_phi3_or_bicg19_qi = i_llvm_fpga_pop_i1_memdep_phi2_pop1125_pop23_bicg0_i_llvm_fpga_pop_i1_memdep_phi2_pop1125_pop23_bicg18_mux_x_q | i_llvm_fpga_pop_i1_memdep_phi3_pop819_pop18_bicg0_i_llvm_fpga_pop_i1_memdep_phi3_pop819_pop18_bicg17_mux_x_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_memdep_phi3_or_bicg19_delay ( .xin(i_memdep_phi3_or_bicg19_qi), .xout(i_memdep_phi3_or_bicg19_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist40_i_memdep_phi3_or_bicg19_q_10(DELAY,453)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist40_i_memdep_phi3_or_bicg19_q_10 ( .xin(i_memdep_phi3_or_bicg19_q), .xout(redist40_i_memdep_phi3_or_bicg19_q_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_bicg_s_local_pmem(CONSTANT,11)
    assign c_bicg_s_local_pmem_q = $unsigned(64'b0100000001000001000000000000000000000000000000000000000000000000);

    // i_arrayidx154_bicg0_upper_bits_x_merged_bit_select(BITSELECT,409)@14
    assign i_arrayidx154_bicg0_upper_bits_x_merged_bit_select_b = c_bicg_s_local_pmem_q[63:7];
    assign i_arrayidx154_bicg0_upper_bits_x_merged_bit_select_c = c_bicg_s_local_pmem_q[6:0];

    // i_arrayidx154_bicg0_dupName_0_trunc_sel_x(BITSELECT,167)@6
    assign i_arrayidx154_bicg0_dupName_0_trunc_sel_x_b = i_idxprom12_bicg13_vt_join_q[6:0];

    // i_arrayidx154_bicg0_narrow_x(BITSELECT,160)@6
    assign i_arrayidx154_bicg0_narrow_x_b = i_arrayidx154_bicg0_dupName_0_trunc_sel_x_b[4:0];

    // i_arrayidx154_bicg0_shift_join_x(BITJOIN,161)@6
    assign i_arrayidx154_bicg0_shift_join_x_q = {i_arrayidx154_bicg0_narrow_x_b, i_arrayidx133_bicg14_vt_const_1_q};

    // redist34_i_arrayidx154_bicg0_shift_join_x_q_8_inputreg0(DELAY,477)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist34_i_arrayidx154_bicg0_shift_join_x_q_8_inputreg0_q <= $unsigned(i_arrayidx154_bicg0_shift_join_x_q);
        end
    end

    // redist34_i_arrayidx154_bicg0_shift_join_x_q_8(DELAY,447)
    dspba_delay_ver #( .width(7), .depth(6), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist34_i_arrayidx154_bicg0_shift_join_x_q_8 ( .xin(redist34_i_arrayidx154_bicg0_shift_join_x_q_8_inputreg0_q), .xout(redist34_i_arrayidx154_bicg0_shift_join_x_q_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist34_i_arrayidx154_bicg0_shift_join_x_q_8_outputreg0(DELAY,478)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist34_i_arrayidx154_bicg0_shift_join_x_q_8_outputreg0_q <= $unsigned(redist34_i_arrayidx154_bicg0_shift_join_x_q_8_q);
        end
    end

    // i_arrayidx154_bicg0_add_x(ADD,157)@14
    assign i_arrayidx154_bicg0_add_x_a = {1'b0, i_arrayidx154_bicg0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx154_bicg0_add_x_b = {1'b0, redist34_i_arrayidx154_bicg0_shift_join_x_q_8_outputreg0_q};
    assign i_arrayidx154_bicg0_add_x_o = $unsigned(i_arrayidx154_bicg0_add_x_a) + $unsigned(i_arrayidx154_bicg0_add_x_b);
    assign i_arrayidx154_bicg0_add_x_q = i_arrayidx154_bicg0_add_x_o[7:0];

    // i_arrayidx154_bicg0_dupName_2_trunc_sel_x(BITSELECT,168)@14
    assign i_arrayidx154_bicg0_dupName_2_trunc_sel_x_b = i_arrayidx154_bicg0_add_x_q[6:0];

    // i_arrayidx154_bicg0_append_upper_bits_x(BITJOIN,158)@14
    assign i_arrayidx154_bicg0_append_upper_bits_x_q = {i_arrayidx154_bicg0_upper_bits_x_merged_bit_select_b, i_arrayidx154_bicg0_dupName_2_trunc_sel_x_b};

    // i_arrayidx154_bicg16_vt_select_63(BITSELECT,82)@14
    assign i_arrayidx154_bicg16_vt_select_63_b = i_arrayidx154_bicg0_append_upper_bits_x_q[63:2];

    // i_arrayidx154_bicg16_vt_join(BITJOIN,81)@14
    assign i_arrayidx154_bicg16_vt_join_q = {i_arrayidx154_bicg16_vt_select_63_b, i_arrayidx133_bicg14_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_bicg7_bicg20(BLACKBOX,103)@14
    // out out_o_almost_empty@18
    // out out_o_empty@18
    // out out_o_readdata@18
    // out out_o_stall@18
    // out out_o_valid@18
    // out out_unnamed_bicg7_bicg_avm_address@20000000
    // out out_unnamed_bicg7_bicg_avm_burstcount@20000000
    // out out_unnamed_bicg7_bicg_avm_byteenable@20000000
    // out out_unnamed_bicg7_bicg_avm_enable@20000000
    // out out_unnamed_bicg7_bicg_avm_read@20000000
    // out out_unnamed_bicg7_bicg_avm_write@20000000
    // out out_unnamed_bicg7_bicg_avm_writedata@20000000
    bicg_i_llvm_fpga_mem_unnamed_7_bicg0 thei_llvm_fpga_mem_unnamed_bicg7_bicg20 (
        .in_almost_empty_in(GND_q),
        .in_empty_in(GND_q),
        .in_flush(in_flush),
        .in_i_address(i_arrayidx154_bicg16_vt_join_q),
        .in_i_dependence(redist40_i_memdep_phi3_or_bicg19_q_10_q),
        .in_i_predicate(redist46_i_bicg_b5_current_iter_isspec_bicg5_q_8_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg11_q),
        .in_unnamed_bicg7_bicg_avm_readdata(in_unnamed_bicg7_bicg_avm_readdata),
        .in_unnamed_bicg7_bicg_avm_readdatavalid(in_unnamed_bicg7_bicg_avm_readdatavalid),
        .in_unnamed_bicg7_bicg_avm_waitrequest(in_unnamed_bicg7_bicg_avm_waitrequest),
        .in_unnamed_bicg7_bicg_avm_writeack(in_unnamed_bicg7_bicg_avm_writeack),
        .out_o_almost_empty(),
        .out_o_empty(),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_bicg7_bicg20_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_bicg7_bicg_avm_address(i_llvm_fpga_mem_unnamed_bicg7_bicg20_out_unnamed_bicg7_bicg_avm_address),
        .out_unnamed_bicg7_bicg_avm_burstcount(i_llvm_fpga_mem_unnamed_bicg7_bicg20_out_unnamed_bicg7_bicg_avm_burstcount),
        .out_unnamed_bicg7_bicg_avm_byteenable(i_llvm_fpga_mem_unnamed_bicg7_bicg20_out_unnamed_bicg7_bicg_avm_byteenable),
        .out_unnamed_bicg7_bicg_avm_enable(i_llvm_fpga_mem_unnamed_bicg7_bicg20_out_unnamed_bicg7_bicg_avm_enable),
        .out_unnamed_bicg7_bicg_avm_read(i_llvm_fpga_mem_unnamed_bicg7_bicg20_out_unnamed_bicg7_bicg_avm_read),
        .out_unnamed_bicg7_bicg_avm_write(i_llvm_fpga_mem_unnamed_bicg7_bicg20_out_unnamed_bicg7_bicg_avm_write),
        .out_unnamed_bicg7_bicg_avm_writedata(i_llvm_fpga_mem_unnamed_bicg7_bicg20_out_unnamed_bicg7_bicg_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_ext_sig_sync_out_x(GPOUT,126)
    assign out_unnamed_bicg7_bicg_avm_address = i_llvm_fpga_mem_unnamed_bicg7_bicg20_out_unnamed_bicg7_bicg_avm_address;
    assign out_unnamed_bicg7_bicg_avm_enable = i_llvm_fpga_mem_unnamed_bicg7_bicg20_out_unnamed_bicg7_bicg_avm_enable;
    assign out_unnamed_bicg7_bicg_avm_read = i_llvm_fpga_mem_unnamed_bicg7_bicg20_out_unnamed_bicg7_bicg_avm_read;
    assign out_unnamed_bicg7_bicg_avm_write = i_llvm_fpga_mem_unnamed_bicg7_bicg20_out_unnamed_bicg7_bicg_avm_write;
    assign out_unnamed_bicg7_bicg_avm_writedata = i_llvm_fpga_mem_unnamed_bicg7_bicg20_out_unnamed_bicg7_bicg_avm_writedata;
    assign out_unnamed_bicg7_bicg_avm_byteenable = i_llvm_fpga_mem_unnamed_bicg7_bicg20_out_unnamed_bicg7_bicg_avm_byteenable;
    assign out_unnamed_bicg7_bicg_avm_burstcount = i_llvm_fpga_mem_unnamed_bicg7_bicg20_out_unnamed_bicg7_bicg_avm_burstcount;

    // dupName_1_regfree_osync_x(GPOUT,127)
    assign out_pipeline_forked_out = i_llvm_fpga_pipeline_keep_going_bicg6_out_pipeline_forked_out;

    // i_mul22_bicg26_bs3_merged_bit_select(BITSELECT,411)@10
    assign i_mul22_bicg26_bs3_merged_bit_select_b = i_llvm_fpga_mem_unnamed_bicg6_bicg15_out_o_readdata[31:18];
    assign i_mul22_bicg26_bs3_merged_bit_select_c = i_llvm_fpga_mem_unnamed_bicg6_bicg15_out_o_readdata[17:0];

    // i_mul_bicg21_bs1_merged_bit_select(BITSELECT,410)@10
    assign i_mul_bicg21_bs1_merged_bit_select_b = i_llvm_fpga_mem_unnamed_bicg5_bicg11_out_o_readdata[31:18];
    assign i_mul_bicg21_bs1_merged_bit_select_c = i_llvm_fpga_mem_unnamed_bicg5_bicg11_out_o_readdata[17:0];

    // i_mul_bicg21_ma5_cma(CHAINMULTADD,405)@10 + 5
    // out q@16
    assign i_mul_bicg21_ma5_cma_reset = ~ (resetn);
    assign i_mul_bicg21_ma5_cma_ena0 = 1'b1;
    assign i_mul_bicg21_ma5_cma_ena1 = i_mul_bicg21_ma5_cma_ena0;
    assign i_mul_bicg21_ma5_cma_ena2 = i_mul_bicg21_ma5_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul_bicg21_ma5_cma_ah[0] <= i_mul_bicg21_bs1_merged_bit_select_b;
            i_mul_bicg21_ma5_cma_ah[1] <= i_mul22_bicg26_bs3_merged_bit_select_b;
            i_mul_bicg21_ma5_cma_ch[0] <= i_mul22_bicg26_bs3_merged_bit_select_c;
            i_mul_bicg21_ma5_cma_ch[1] <= i_mul_bicg21_bs1_merged_bit_select_c;
        end
    end

    assign i_mul_bicg21_ma5_cma_a0 = i_mul_bicg21_ma5_cma_ah[0];
    assign i_mul_bicg21_ma5_cma_c0 = i_mul_bicg21_ma5_cma_ch[0];
    assign i_mul_bicg21_ma5_cma_a1 = i_mul_bicg21_ma5_cma_ah[1];
    assign i_mul_bicg21_ma5_cma_c1 = i_mul_bicg21_ma5_cma_ch[1];
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
    ) i_mul_bicg21_ma5_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_bicg21_ma5_cma_ena2, i_mul_bicg21_ma5_cma_ena1, i_mul_bicg21_ma5_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul_bicg21_ma5_cma_a1),
        .by(i_mul_bicg21_ma5_cma_a0),
        .ax(i_mul_bicg21_ma5_cma_c1),
        .bx(i_mul_bicg21_ma5_cma_c0),
        .resulta(i_mul_bicg21_ma5_cma_s0),
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
    i_mul_bicg21_ma5_cma_delay ( .xin(i_mul_bicg21_ma5_cma_s0), .xout(i_mul_bicg21_ma5_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_bicg21_ma5_cma_q = $unsigned(i_mul_bicg21_ma5_cma_qq[32:0]);

    // redist1_i_mul_bicg21_ma5_cma_q_1(DELAY,414)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_i_mul_bicg21_ma5_cma_q_1_q <= $unsigned(i_mul_bicg21_ma5_cma_q);
        end
    end

    // i_mul_bicg21_sums_align_1(BITSHIFT,341)@17
    assign i_mul_bicg21_sums_align_1_qint = { redist1_i_mul_bicg21_ma5_cma_q_1_q, 18'b000000000000000000 };
    assign i_mul_bicg21_sums_align_1_q = i_mul_bicg21_sums_align_1_qint[50:0];

    // i_mul22_bicg26_bjB4(BITJOIN,314)@10
    assign i_mul22_bicg26_bjB4_q = {GND_q, i_mul22_bicg26_bs3_merged_bit_select_b};

    // i_mul_bicg21_bjA2(BITJOIN,329)@10
    assign i_mul_bicg21_bjA2_q = {GND_q, i_mul_bicg21_bs1_merged_bit_select_b};

    // i_mul_bicg21_im0_cma(CHAINMULTADD,402)@10 + 5
    // out q@16
    assign i_mul_bicg21_im0_cma_reset = ~ (resetn);
    assign i_mul_bicg21_im0_cma_ena0 = 1'b1;
    assign i_mul_bicg21_im0_cma_ena1 = i_mul_bicg21_im0_cma_ena0;
    assign i_mul_bicg21_im0_cma_ena2 = i_mul_bicg21_im0_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul_bicg21_im0_cma_ah[0] <= i_mul_bicg21_bjA2_q;
            i_mul_bicg21_im0_cma_ch[0] <= i_mul22_bicg26_bjB4_q;
        end
    end

    assign i_mul_bicg21_im0_cma_a0 = $unsigned(i_mul_bicg21_im0_cma_ah[0]);
    assign i_mul_bicg21_im0_cma_c0 = $unsigned(i_mul_bicg21_im0_cma_ch[0]);
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
    ) i_mul_bicg21_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_bicg21_im0_cma_ena2, i_mul_bicg21_im0_cma_ena1, i_mul_bicg21_im0_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul_bicg21_im0_cma_a0),
        .ax(i_mul_bicg21_im0_cma_c0),
        .resulta(i_mul_bicg21_im0_cma_s0),
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
    i_mul_bicg21_im0_cma_delay ( .xin(i_mul_bicg21_im0_cma_s0), .xout(i_mul_bicg21_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_bicg21_im0_cma_q = $unsigned(i_mul_bicg21_im0_cma_qq[29:0]);

    // redist4_i_mul_bicg21_im0_cma_q_1(DELAY,417)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_i_mul_bicg21_im0_cma_q_1_q <= $unsigned(i_mul_bicg21_im0_cma_q);
        end
    end

    // i_mul_bicg21_im10_cma(CHAINMULTADD,403)@10 + 5
    // out q@16
    assign i_mul_bicg21_im10_cma_reset = ~ (resetn);
    assign i_mul_bicg21_im10_cma_ena0 = 1'b1;
    assign i_mul_bicg21_im10_cma_ena1 = i_mul_bicg21_im10_cma_ena0;
    assign i_mul_bicg21_im10_cma_ena2 = i_mul_bicg21_im10_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul_bicg21_im10_cma_ah[0] <= i_mul_bicg21_bs1_merged_bit_select_c;
            i_mul_bicg21_im10_cma_ch[0] <= i_mul22_bicg26_bs3_merged_bit_select_c;
        end
    end

    assign i_mul_bicg21_im10_cma_a0 = i_mul_bicg21_im10_cma_ah[0];
    assign i_mul_bicg21_im10_cma_c0 = i_mul_bicg21_im10_cma_ch[0];
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
    ) i_mul_bicg21_im10_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_bicg21_im10_cma_ena2, i_mul_bicg21_im10_cma_ena1, i_mul_bicg21_im10_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul_bicg21_im10_cma_a0),
        .ax(i_mul_bicg21_im10_cma_c0),
        .resulta(i_mul_bicg21_im10_cma_s0),
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
    i_mul_bicg21_im10_cma_delay ( .xin(i_mul_bicg21_im10_cma_s0), .xout(i_mul_bicg21_im10_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_bicg21_im10_cma_q = $unsigned(i_mul_bicg21_im10_cma_qq[35:0]);

    // redist3_i_mul_bicg21_im10_cma_q_1(DELAY,416)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_i_mul_bicg21_im10_cma_q_1_q <= $unsigned(i_mul_bicg21_im10_cma_q);
        end
    end

    // i_mul_bicg21_sums_join_0(BITJOIN,340)@17
    assign i_mul_bicg21_sums_join_0_q = {redist4_i_mul_bicg21_im0_cma_q_1_q, redist3_i_mul_bicg21_im10_cma_q_1_q};

    // i_mul_bicg21_sums_result_add_0_0(ADD,343)@17
    assign i_mul_bicg21_sums_result_add_0_0_a = {1'b0, i_mul_bicg21_sums_join_0_q};
    assign i_mul_bicg21_sums_result_add_0_0_b = {16'b0000000000000000, i_mul_bicg21_sums_align_1_q};
    assign i_mul_bicg21_sums_result_add_0_0_o = $unsigned(i_mul_bicg21_sums_result_add_0_0_a) + $unsigned(i_mul_bicg21_sums_result_add_0_0_b);
    assign i_mul_bicg21_sums_result_add_0_0_q = i_mul_bicg21_sums_result_add_0_0_o[66:0];

    // bgTrunc_i_mul_bicg21_sel_x(BITSELECT,120)@17
    assign bgTrunc_i_mul_bicg21_sel_x_in = i_mul_bicg21_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul_bicg21_sel_x_b = bgTrunc_i_mul_bicg21_sel_x_in[31:0];

    // redist37_bgTrunc_i_mul_bicg21_sel_x_b_1(DELAY,450)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist37_bgTrunc_i_mul_bicg21_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul_bicg21_sel_x_b);
        end
    end

    // i_add_bicg22(ADD,76)@18
    assign i_add_bicg22_a = {1'b0, redist37_bgTrunc_i_mul_bicg21_sel_x_b_1_q};
    assign i_add_bicg22_b = {1'b0, i_llvm_fpga_mem_unnamed_bicg7_bicg20_out_o_readdata};
    assign i_add_bicg22_o = $unsigned(i_add_bicg22_a) + $unsigned(i_add_bicg22_b);
    assign i_add_bicg22_q = i_add_bicg22_o[32:0];

    // bgTrunc_i_add_bicg22_sel_x(BITSELECT,116)@18
    assign bgTrunc_i_add_bicg22_sel_x_b = i_add_bicg22_q[31:0];

    // redist23_sync_together121_aunroll_x_in_i_valid_16(DELAY,436)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist23_sync_together121_aunroll_x_in_i_valid_16_delay_0 <= $unsigned(redist22_sync_together121_aunroll_x_in_i_valid_13_q);
        end
    end
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist23_sync_together121_aunroll_x_in_i_valid_16_delay_1 <= '0;
        end
        else
        begin
            redist23_sync_together121_aunroll_x_in_i_valid_16_delay_1 <= redist23_sync_together121_aunroll_x_in_i_valid_16_delay_0;
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist23_sync_together121_aunroll_x_in_i_valid_16_q <= redist23_sync_together121_aunroll_x_in_i_valid_16_delay_1;
        end
    end

    // redist24_sync_together121_aunroll_x_in_i_valid_17(DELAY,437)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist24_sync_together121_aunroll_x_in_i_valid_17_q <= '0;
        end
        else
        begin
            redist24_sync_together121_aunroll_x_in_i_valid_17_q <= $unsigned(redist23_sync_together121_aunroll_x_in_i_valid_16_q);
        end
    end

    // valid_fanout_reg12(REG,266)@17 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist24_sync_together121_aunroll_x_in_i_valid_17_q);
        end
    end

    // redist47_i_bicg_b5_current_iter_isspec_bicg5_q_12(DELAY,460)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist47_i_bicg_b5_current_iter_isspec_bicg5_q_12_delay_0 <= $unsigned(redist46_i_bicg_b5_current_iter_isspec_bicg5_q_8_q);
            redist47_i_bicg_b5_current_iter_isspec_bicg5_q_12_delay_1 <= redist47_i_bicg_b5_current_iter_isspec_bicg5_q_12_delay_0;
            redist47_i_bicg_b5_current_iter_isspec_bicg5_q_12_delay_2 <= redist47_i_bicg_b5_current_iter_isspec_bicg5_q_12_delay_1;
            redist47_i_bicg_b5_current_iter_isspec_bicg5_q_12_q <= redist47_i_bicg_b5_current_iter_isspec_bicg5_q_12_delay_2;
        end
    end

    // redist49_i_arrayidx154_bicg16_vt_join_q_4_inputreg0(DELAY,479)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist49_i_arrayidx154_bicg16_vt_join_q_4_inputreg0_q <= $unsigned(i_arrayidx154_bicg16_vt_join_q);
        end
    end

    // redist49_i_arrayidx154_bicg16_vt_join_q_4(DELAY,462)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist49_i_arrayidx154_bicg16_vt_join_q_4_delay_0 <= $unsigned(redist49_i_arrayidx154_bicg16_vt_join_q_4_inputreg0_q);
            redist49_i_arrayidx154_bicg16_vt_join_q_4_delay_1 <= redist49_i_arrayidx154_bicg16_vt_join_q_4_delay_0;
            redist49_i_arrayidx154_bicg16_vt_join_q_4_q <= redist49_i_arrayidx154_bicg16_vt_join_q_4_delay_1;
        end
    end

    // i_llvm_fpga_mem_memdep_1_bicg23(BLACKBOX,100)@18
    // out out_memdep_1_bicg_avm_address@20000000
    // out out_memdep_1_bicg_avm_burstcount@20000000
    // out out_memdep_1_bicg_avm_byteenable@20000000
    // out out_memdep_1_bicg_avm_enable@20000000
    // out out_memdep_1_bicg_avm_read@20000000
    // out out_memdep_1_bicg_avm_write@20000000
    // out out_memdep_1_bicg_avm_writedata@20000000
    // out out_o_almost_empty@19
    // out out_o_empty@19
    // out out_o_stall@19
    // out out_o_valid@19
    // out out_o_writeack@19
    bicg_i_llvm_fpga_mem_memdep_1_0 thei_llvm_fpga_mem_memdep_1_bicg23 (
        .in_almost_empty_in(GND_q),
        .in_empty_in(GND_q),
        .in_flush(in_flush),
        .in_i_address(redist49_i_arrayidx154_bicg16_vt_join_q_4_q),
        .in_i_predicate(redist47_i_bicg_b5_current_iter_isspec_bicg5_q_12_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg12_q),
        .in_i_writedata(bgTrunc_i_add_bicg22_sel_x_b),
        .in_memdep_1_bicg_avm_readdata(in_memdep_1_bicg_avm_readdata),
        .in_memdep_1_bicg_avm_readdatavalid(in_memdep_1_bicg_avm_readdatavalid),
        .in_memdep_1_bicg_avm_waitrequest(in_memdep_1_bicg_avm_waitrequest),
        .in_memdep_1_bicg_avm_writeack(in_memdep_1_bicg_avm_writeack),
        .out_memdep_1_bicg_avm_address(i_llvm_fpga_mem_memdep_1_bicg23_out_memdep_1_bicg_avm_address),
        .out_memdep_1_bicg_avm_burstcount(i_llvm_fpga_mem_memdep_1_bicg23_out_memdep_1_bicg_avm_burstcount),
        .out_memdep_1_bicg_avm_byteenable(i_llvm_fpga_mem_memdep_1_bicg23_out_memdep_1_bicg_avm_byteenable),
        .out_memdep_1_bicg_avm_enable(i_llvm_fpga_mem_memdep_1_bicg23_out_memdep_1_bicg_avm_enable),
        .out_memdep_1_bicg_avm_read(i_llvm_fpga_mem_memdep_1_bicg23_out_memdep_1_bicg_avm_read),
        .out_memdep_1_bicg_avm_write(i_llvm_fpga_mem_memdep_1_bicg23_out_memdep_1_bicg_avm_write),
        .out_memdep_1_bicg_avm_writedata(i_llvm_fpga_mem_memdep_1_bicg23_out_memdep_1_bicg_avm_writedata),
        .out_o_almost_empty(),
        .out_o_empty(),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(i_llvm_fpga_mem_memdep_1_bicg23_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_ext_sig_sync_out_x(GPOUT,129)
    assign out_memdep_1_bicg_avm_address = i_llvm_fpga_mem_memdep_1_bicg23_out_memdep_1_bicg_avm_address;
    assign out_memdep_1_bicg_avm_enable = i_llvm_fpga_mem_memdep_1_bicg23_out_memdep_1_bicg_avm_enable;
    assign out_memdep_1_bicg_avm_read = i_llvm_fpga_mem_memdep_1_bicg23_out_memdep_1_bicg_avm_read;
    assign out_memdep_1_bicg_avm_write = i_llvm_fpga_mem_memdep_1_bicg23_out_memdep_1_bicg_avm_write;
    assign out_memdep_1_bicg_avm_writedata = i_llvm_fpga_mem_memdep_1_bicg23_out_memdep_1_bicg_avm_writedata;
    assign out_memdep_1_bicg_avm_byteenable = i_llvm_fpga_mem_memdep_1_bicg23_out_memdep_1_bicg_avm_byteenable;
    assign out_memdep_1_bicg_avm_burstcount = i_llvm_fpga_mem_memdep_1_bicg23_out_memdep_1_bicg_avm_burstcount;

    // dupName_2_regfree_osync_x(GPOUT,130)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_bicg6_out_pipeline_valid_out;

    // valid_fanout_reg13(REG,267)@5 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist21_sync_together121_aunroll_x_in_i_valid_5_q);
        end
    end

    // c_bicg_p_local_pmem(CONSTANT,9)
    assign c_bicg_p_local_pmem_q = $unsigned(64'b0100000001000011000000000000000000000000000000000000000000000000);

    // i_arrayidx215_bicg0_upper_bits_x_merged_bit_select(BITSELECT,407)@6
    assign i_arrayidx215_bicg0_upper_bits_x_merged_bit_select_b = c_bicg_p_local_pmem_q[63:7];
    assign i_arrayidx215_bicg0_upper_bits_x_merged_bit_select_c = c_bicg_p_local_pmem_q[6:0];

    // i_arrayidx215_bicg0_add_x(ADD,181)@6
    assign i_arrayidx215_bicg0_add_x_a = {1'b0, i_arrayidx215_bicg0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx215_bicg0_add_x_b = {1'b0, i_arrayidx154_bicg0_shift_join_x_q};
    assign i_arrayidx215_bicg0_add_x_o = $unsigned(i_arrayidx215_bicg0_add_x_a) + $unsigned(i_arrayidx215_bicg0_add_x_b);
    assign i_arrayidx215_bicg0_add_x_q = i_arrayidx215_bicg0_add_x_o[7:0];

    // i_arrayidx215_bicg0_dupName_2_trunc_sel_x(BITSELECT,192)@6
    assign i_arrayidx215_bicg0_dupName_2_trunc_sel_x_b = i_arrayidx215_bicg0_add_x_q[6:0];

    // i_arrayidx215_bicg0_append_upper_bits_x(BITJOIN,182)@6
    assign i_arrayidx215_bicg0_append_upper_bits_x_q = {i_arrayidx215_bicg0_upper_bits_x_merged_bit_select_b, i_arrayidx215_bicg0_dupName_2_trunc_sel_x_b};

    // i_arrayidx215_bicg24_vt_select_63(BITSELECT,88)@6
    assign i_arrayidx215_bicg24_vt_select_63_b = i_arrayidx215_bicg0_append_upper_bits_x_q[63:2];

    // i_arrayidx215_bicg24_vt_join(BITJOIN,87)@6
    assign i_arrayidx215_bicg24_vt_join_q = {i_arrayidx215_bicg24_vt_select_63_b, i_arrayidx133_bicg14_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_bicg8_bicg25(BLACKBOX,104)@6
    // out out_o_almost_empty@10
    // out out_o_empty@10
    // out out_o_readdata@10
    // out out_o_stall@10
    // out out_o_valid@10
    // out out_unnamed_bicg8_bicg_avm_address@20000000
    // out out_unnamed_bicg8_bicg_avm_burstcount@20000000
    // out out_unnamed_bicg8_bicg_avm_byteenable@20000000
    // out out_unnamed_bicg8_bicg_avm_enable@20000000
    // out out_unnamed_bicg8_bicg_avm_read@20000000
    // out out_unnamed_bicg8_bicg_avm_write@20000000
    // out out_unnamed_bicg8_bicg_avm_writedata@20000000
    bicg_i_llvm_fpga_mem_unnamed_8_bicg0 thei_llvm_fpga_mem_unnamed_bicg8_bicg25 (
        .in_almost_empty_in(GND_q),
        .in_empty_in(GND_q),
        .in_flush(in_flush),
        .in_i_address(i_arrayidx215_bicg24_vt_join_q),
        .in_i_predicate(i_bicg_b5_current_iter_isspec_bicg5_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg13_q),
        .in_unnamed_bicg8_bicg_avm_readdata(in_unnamed_bicg8_bicg_avm_readdata),
        .in_unnamed_bicg8_bicg_avm_readdatavalid(in_unnamed_bicg8_bicg_avm_readdatavalid),
        .in_unnamed_bicg8_bicg_avm_waitrequest(in_unnamed_bicg8_bicg_avm_waitrequest),
        .in_unnamed_bicg8_bicg_avm_writeack(in_unnamed_bicg8_bicg_avm_writeack),
        .out_o_almost_empty(),
        .out_o_empty(),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_bicg8_bicg25_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_bicg8_bicg_avm_address(i_llvm_fpga_mem_unnamed_bicg8_bicg25_out_unnamed_bicg8_bicg_avm_address),
        .out_unnamed_bicg8_bicg_avm_burstcount(i_llvm_fpga_mem_unnamed_bicg8_bicg25_out_unnamed_bicg8_bicg_avm_burstcount),
        .out_unnamed_bicg8_bicg_avm_byteenable(i_llvm_fpga_mem_unnamed_bicg8_bicg25_out_unnamed_bicg8_bicg_avm_byteenable),
        .out_unnamed_bicg8_bicg_avm_enable(i_llvm_fpga_mem_unnamed_bicg8_bicg25_out_unnamed_bicg8_bicg_avm_enable),
        .out_unnamed_bicg8_bicg_avm_read(i_llvm_fpga_mem_unnamed_bicg8_bicg25_out_unnamed_bicg8_bicg_avm_read),
        .out_unnamed_bicg8_bicg_avm_write(i_llvm_fpga_mem_unnamed_bicg8_bicg25_out_unnamed_bicg8_bicg_avm_write),
        .out_unnamed_bicg8_bicg_avm_writedata(i_llvm_fpga_mem_unnamed_bicg8_bicg25_out_unnamed_bicg8_bicg_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_3_ext_sig_sync_out_x(GPOUT,132)
    assign out_unnamed_bicg8_bicg_avm_address = i_llvm_fpga_mem_unnamed_bicg8_bicg25_out_unnamed_bicg8_bicg_avm_address;
    assign out_unnamed_bicg8_bicg_avm_enable = i_llvm_fpga_mem_unnamed_bicg8_bicg25_out_unnamed_bicg8_bicg_avm_enable;
    assign out_unnamed_bicg8_bicg_avm_read = i_llvm_fpga_mem_unnamed_bicg8_bicg25_out_unnamed_bicg8_bicg_avm_read;
    assign out_unnamed_bicg8_bicg_avm_write = i_llvm_fpga_mem_unnamed_bicg8_bicg25_out_unnamed_bicg8_bicg_avm_write;
    assign out_unnamed_bicg8_bicg_avm_writedata = i_llvm_fpga_mem_unnamed_bicg8_bicg25_out_unnamed_bicg8_bicg_avm_writedata;
    assign out_unnamed_bicg8_bicg_avm_byteenable = i_llvm_fpga_mem_unnamed_bicg8_bicg25_out_unnamed_bicg8_bicg_avm_byteenable;
    assign out_unnamed_bicg8_bicg_avm_burstcount = i_llvm_fpga_mem_unnamed_bicg8_bicg25_out_unnamed_bicg8_bicg_avm_burstcount;

    // valid_fanout_reg0(REG,254)@17 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist24_sync_together121_aunroll_x_in_i_valid_17_q);
        end
    end

    // redist8_valid_fanout_reg0_q_1(DELAY,421)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist8_valid_fanout_reg0_q_1_q <= '0;
        end
        else
        begin
            redist8_valid_fanout_reg0_q_1_q <= $unsigned(valid_fanout_reg0_q);
        end
    end

    // redist17_sync_together121_aunroll_x_in_c0_eni11_11_tpl_19(DELAY,430)
    dspba_delay_ver #( .width(1), .depth(19), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist17_sync_together121_aunroll_x_in_c0_eni11_11_tpl_19 ( .xin(in_c0_eni11_11_tpl), .xout(redist17_sync_together121_aunroll_x_in_c0_eni11_11_tpl_19_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist16_sync_together121_aunroll_x_in_c0_eni11_10_tpl_19(DELAY,429)
    dspba_delay_ver #( .width(1), .depth(19), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist16_sync_together121_aunroll_x_in_c0_eni11_10_tpl_19 ( .xin(in_c0_eni11_10_tpl), .xout(redist16_sync_together121_aunroll_x_in_c0_eni11_10_tpl_19_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist15_sync_together121_aunroll_x_in_c0_eni11_9_tpl_4(DELAY,428)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist15_sync_together121_aunroll_x_in_c0_eni11_9_tpl_4_delay_0 <= $unsigned(in_c0_eni11_9_tpl);
            redist15_sync_together121_aunroll_x_in_c0_eni11_9_tpl_4_delay_1 <= redist15_sync_together121_aunroll_x_in_c0_eni11_9_tpl_4_delay_0;
            redist15_sync_together121_aunroll_x_in_c0_eni11_9_tpl_4_delay_2 <= redist15_sync_together121_aunroll_x_in_c0_eni11_9_tpl_4_delay_1;
            redist15_sync_together121_aunroll_x_in_c0_eni11_9_tpl_4_q <= redist15_sync_together121_aunroll_x_in_c0_eni11_9_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_push_i1_notcmp724_push22_bicg0_element_extension2_x(BITJOIN,230)@5
    assign i_llvm_fpga_push_i1_notcmp724_push22_bicg0_element_extension2_x_q = {i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_c_i7_03_x_q, i_llvm_fpga_pop_i1_notcmp724_pop22_bicg0_i_llvm_fpga_pop_i1_notcmp724_pop22_bicg48_mux_x_q};

    // valid_fanout_reg40(REG,294)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg40_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg39(REG,293)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg39_q <= $unsigned(redist19_sync_together121_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp724_push22_bicg0_i_llvm_fpga_push_i1_notcmp724_push22_bicg1_x(FIFODELAY,231)@1
    // in i_valid@4
    // in i_write_pred@4
    // in i_data@5
    // out o_data@4
    assign i_llvm_fpga_push_i1_notcmp724_push22_bicg0_i_llvm_fpga_push_i1_notcmp724_push22_bicg1_x_i_stall = ~ (valid_fanout_reg40_q & i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_notcmp724_push22_bicg0_i_llvm_fpga_push_i1_notcmp724_push22_bicg1_x_i_valid = valid_fanout_reg39_q & redist26_i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_inv_pred_x_q_3_q;
    assign i_llvm_fpga_push_i1_notcmp724_push22_bicg0_i_llvm_fpga_push_i1_notcmp724_push22_bicg1_x_i_data = i_llvm_fpga_push_i1_notcmp724_push22_bicg0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_notcmp724_push22_bicg0_i_llvm_fpga_push_i1_notcmp724_push22_bicg1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_notcmp724_push22_bicg0_i_llvm_fpga_push_i1_notcmp724_push22_bicg1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_notcmp724_push22_bicg0_i_llvm_fpga_push_i1_notcmp724_push22_bicg1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_notcmp724_push22_bicg0_i_llvm_fpga_push_i1_notcmp724_push22_bicg1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_notcmp724_push22_bicg0_i_llvm_fpga_push_i1_notcmp724_push22_bicg1_x (
        .i_valid(i_llvm_fpga_push_i1_notcmp724_push22_bicg0_i_llvm_fpga_push_i1_notcmp724_push22_bicg1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_notcmp724_push22_bicg0_i_llvm_fpga_push_i1_notcmp724_push22_bicg1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_notcmp724_push22_bicg0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_notcmp724_push22_bicg0_i_llvm_fpga_push_i1_notcmp724_push22_bicg1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_notcmp724_push22_bicg0_adapt_scalar_trunc4_sel_x(BITSELECT,233)@4
    assign i_llvm_fpga_push_i1_notcmp724_push22_bicg0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_notcmp724_push22_bicg0_i_llvm_fpga_push_i1_notcmp724_push22_bicg1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_notcmp724_pop22_bicg0_i_llvm_fpga_pop_i1_notcmp724_pop22_bicg48_mux_x(MUX,198)@4 + 1
    assign i_llvm_fpga_pop_i1_notcmp724_pop22_bicg0_i_llvm_fpga_pop_i1_notcmp724_pop22_bicg48_mux_x_s = redist42_i_llvm_fpga_forked_bicg_b5_forked_bicg3_out_buffer_out_4_q;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_llvm_fpga_pop_i1_notcmp724_pop22_bicg0_i_llvm_fpga_pop_i1_notcmp724_pop22_bicg48_mux_x_s)
                1'b0 : i_llvm_fpga_pop_i1_notcmp724_pop22_bicg0_i_llvm_fpga_pop_i1_notcmp724_pop22_bicg48_mux_x_q <= i_llvm_fpga_push_i1_notcmp724_push22_bicg0_adapt_scalar_trunc4_sel_x_b;
                1'b1 : i_llvm_fpga_pop_i1_notcmp724_pop22_bicg0_i_llvm_fpga_pop_i1_notcmp724_pop22_bicg48_mux_x_q <= redist15_sync_together121_aunroll_x_in_c0_eni11_9_tpl_4_q;
                default : i_llvm_fpga_pop_i1_notcmp724_pop22_bicg0_i_llvm_fpga_pop_i1_notcmp724_pop22_bicg48_mux_x_q <= 1'b0;
            endcase
        end
    end

    // redist31_i_llvm_fpga_pop_i1_notcmp724_pop22_bicg0_i_llvm_fpga_pop_i1_notcmp724_pop22_bicg48_mux_x_q_15(DELAY,444)
    dspba_delay_ver #( .width(1), .depth(14), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist31_i_llvm_fpga_pop_i1_notcmp724_pop22_bicg0_i_llvm_fpga_pop_i1_notcmp724_pop22_bicg48_mux_x_q_15 ( .xin(i_llvm_fpga_pop_i1_notcmp724_pop22_bicg0_i_llvm_fpga_pop_i1_notcmp724_pop22_bicg48_mux_x_q), .xout(redist31_i_llvm_fpga_pop_i1_notcmp724_pop22_bicg0_i_llvm_fpga_pop_i1_notcmp724_pop22_bicg48_mux_x_q_15_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist14_sync_together121_aunroll_x_in_c0_eni11_8_tpl_17(DELAY,427)
    dspba_delay_ver #( .width(1), .depth(17), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist14_sync_together121_aunroll_x_in_c0_eni11_8_tpl_17 ( .xin(in_c0_eni11_8_tpl), .xout(redist14_sync_together121_aunroll_x_in_c0_eni11_8_tpl_17_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_push_i1_exitcond623_push21_bicg0_element_extension2_x(BITJOIN,212)@18
    assign i_llvm_fpga_push_i1_exitcond623_push21_bicg0_element_extension2_x_q = {i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_c_i7_03_x_q, i_llvm_fpga_pop_i1_exitcond623_pop21_bicg0_i_llvm_fpga_pop_i1_exitcond623_pop21_bicg46_mux_x_q};

    // redist28_i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_inv_pred_x_q_13(DELAY,441)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist28_i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_inv_pred_x_q_13 ( .xin(redist27_i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_inv_pred_x_q_4_q), .xout(redist28_i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_inv_pred_x_q_13_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg37(REG,291)@13 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg37_q <= $unsigned(redist22_sync_together121_aunroll_x_in_i_valid_13_q);
        end
    end

    // redist29_i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_inv_pred_x_q_16(DELAY,442)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist29_i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_inv_pred_x_q_16_delay_0 <= $unsigned(redist28_i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_inv_pred_x_q_13_q);
            redist29_i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_inv_pred_x_q_16_delay_1 <= redist29_i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_inv_pred_x_q_16_delay_0;
            redist29_i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_inv_pred_x_q_16_q <= redist29_i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_inv_pred_x_q_16_delay_1;
        end
    end

    // valid_fanout_reg36(REG,290)@16 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg36_q <= $unsigned(redist23_sync_together121_aunroll_x_in_i_valid_16_q);
        end
    end

    // i_llvm_fpga_push_i1_exitcond623_push21_bicg0_i_llvm_fpga_push_i1_exitcond623_push21_bicg1_x(FIFODELAY,213)@14
    // in i_valid@17
    // in i_write_pred@17
    // in i_data@18
    // out o_data@17
    assign i_llvm_fpga_push_i1_exitcond623_push21_bicg0_i_llvm_fpga_push_i1_exitcond623_push21_bicg1_x_i_stall = ~ (valid_fanout_reg37_q & redist28_i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_inv_pred_x_q_13_q);
    assign i_llvm_fpga_push_i1_exitcond623_push21_bicg0_i_llvm_fpga_push_i1_exitcond623_push21_bicg1_x_i_valid = valid_fanout_reg36_q & redist29_i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_inv_pred_x_q_16_q;
    assign i_llvm_fpga_push_i1_exitcond623_push21_bicg0_i_llvm_fpga_push_i1_exitcond623_push21_bicg1_x_i_data = i_llvm_fpga_push_i1_exitcond623_push21_bicg0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_exitcond623_push21_bicg0_i_llvm_fpga_push_i1_exitcond623_push21_bicg1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_exitcond623_push21_bicg0_i_llvm_fpga_push_i1_exitcond623_push21_bicg1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_exitcond623_push21_bicg0_i_llvm_fpga_push_i1_exitcond623_push21_bicg1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_exitcond623_push21_bicg0_i_llvm_fpga_push_i1_exitcond623_push21_bicg1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_exitcond623_push21_bicg0_i_llvm_fpga_push_i1_exitcond623_push21_bicg1_x (
        .i_valid(i_llvm_fpga_push_i1_exitcond623_push21_bicg0_i_llvm_fpga_push_i1_exitcond623_push21_bicg1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_exitcond623_push21_bicg0_i_llvm_fpga_push_i1_exitcond623_push21_bicg1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_exitcond623_push21_bicg0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_exitcond623_push21_bicg0_i_llvm_fpga_push_i1_exitcond623_push21_bicg1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_exitcond623_push21_bicg0_adapt_scalar_trunc4_sel_x(BITSELECT,215)@17
    assign i_llvm_fpga_push_i1_exitcond623_push21_bicg0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_exitcond623_push21_bicg0_i_llvm_fpga_push_i1_exitcond623_push21_bicg1_x_o_data[0:0];

    // redist44_i_llvm_fpga_forked_bicg_b5_forked_bicg3_out_buffer_out_17(DELAY,457)
    dspba_delay_ver #( .width(1), .depth(11), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist44_i_llvm_fpga_forked_bicg_b5_forked_bicg3_out_buffer_out_17 ( .xin(redist43_i_llvm_fpga_forked_bicg_b5_forked_bicg3_out_buffer_out_6_q), .xout(redist44_i_llvm_fpga_forked_bicg_b5_forked_bicg3_out_buffer_out_17_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_pop_i1_exitcond623_pop21_bicg0_i_llvm_fpga_pop_i1_exitcond623_pop21_bicg46_mux_x(MUX,195)@17 + 1
    assign i_llvm_fpga_pop_i1_exitcond623_pop21_bicg0_i_llvm_fpga_pop_i1_exitcond623_pop21_bicg46_mux_x_s = redist44_i_llvm_fpga_forked_bicg_b5_forked_bicg3_out_buffer_out_17_q;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_llvm_fpga_pop_i1_exitcond623_pop21_bicg0_i_llvm_fpga_pop_i1_exitcond623_pop21_bicg46_mux_x_s)
                1'b0 : i_llvm_fpga_pop_i1_exitcond623_pop21_bicg0_i_llvm_fpga_pop_i1_exitcond623_pop21_bicg46_mux_x_q <= i_llvm_fpga_push_i1_exitcond623_push21_bicg0_adapt_scalar_trunc4_sel_x_b;
                1'b1 : i_llvm_fpga_pop_i1_exitcond623_pop21_bicg0_i_llvm_fpga_pop_i1_exitcond623_pop21_bicg46_mux_x_q <= redist14_sync_together121_aunroll_x_in_c0_eni11_8_tpl_17_q;
                default : i_llvm_fpga_pop_i1_exitcond623_pop21_bicg0_i_llvm_fpga_pop_i1_exitcond623_pop21_bicg46_mux_x_q <= 1'b0;
            endcase
        end
    end

    // redist32_i_llvm_fpga_pop_i1_exitcond623_pop21_bicg0_i_llvm_fpga_pop_i1_exitcond623_pop21_bicg46_mux_x_q_2(DELAY,445)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist32_i_llvm_fpga_pop_i1_exitcond623_pop21_bicg0_i_llvm_fpga_pop_i1_exitcond623_pop21_bicg46_mux_x_q_2_q <= $unsigned(i_llvm_fpga_pop_i1_exitcond623_pop21_bicg0_i_llvm_fpga_pop_i1_exitcond623_pop21_bicg46_mux_x_q);
        end
    end

    // redist30_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg0_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg44_mux_x_q_15_offset(CONSTANT,475)
    assign redist30_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg0_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg44_mux_x_q_15_offset_q = $unsigned(4'b0110);

    // redist30_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg0_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg44_mux_x_q_15_rdcnt(ADD,476)
    assign redist30_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg0_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg44_mux_x_q_15_rdcnt_a = {1'b0, redist30_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg0_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg44_mux_x_q_15_wraddr_q};
    assign redist30_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg0_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg44_mux_x_q_15_rdcnt_b = {1'b0, redist30_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg0_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg44_mux_x_q_15_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist30_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg0_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg44_mux_x_q_15_rdcnt_o <= $unsigned(redist30_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg0_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg44_mux_x_q_15_rdcnt_a) + $unsigned(redist30_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg0_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg44_mux_x_q_15_rdcnt_b);
        end
    end
    assign redist30_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg0_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg44_mux_x_q_15_rdcnt_q = redist30_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg0_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg44_mux_x_q_15_rdcnt_o[4:0];

    // redist13_sync_together121_aunroll_x_in_c0_eni11_7_tpl_4_inputreg0(DELAY,470)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist13_sync_together121_aunroll_x_in_c0_eni11_7_tpl_4_inputreg0_q <= $unsigned(in_c0_eni11_7_tpl);
        end
    end

    // redist13_sync_together121_aunroll_x_in_c0_eni11_7_tpl_4(DELAY,426)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist13_sync_together121_aunroll_x_in_c0_eni11_7_tpl_4_delay_0 <= $unsigned(redist13_sync_together121_aunroll_x_in_c0_eni11_7_tpl_4_inputreg0_q);
            redist13_sync_together121_aunroll_x_in_c0_eni11_7_tpl_4_delay_1 <= redist13_sync_together121_aunroll_x_in_c0_eni11_7_tpl_4_delay_0;
            redist13_sync_together121_aunroll_x_in_c0_eni11_7_tpl_4_q <= redist13_sync_together121_aunroll_x_in_c0_eni11_7_tpl_4_delay_1;
        end
    end

    // valid_fanout_reg34(REG,288)@0 + 1
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

    // valid_fanout_reg33(REG,287)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg33_q <= $unsigned(redist18_sync_together121_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_p66i32_arrayidx122_push20_bicg0_i_llvm_fpga_push_p66i32_arrayidx122_push20_bicg1_x(FIFODELAY,249)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_p66i32_arrayidx122_push20_bicg0_i_llvm_fpga_push_p66i32_arrayidx122_push20_bicg1_x_i_stall = ~ (valid_fanout_reg34_q & i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_inv_pred_x_q);
    assign i_llvm_fpga_push_p66i32_arrayidx122_push20_bicg0_i_llvm_fpga_push_p66i32_arrayidx122_push20_bicg1_x_i_valid = valid_fanout_reg33_q & redist25_i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_p66i32_arrayidx122_push20_bicg0_i_llvm_fpga_push_p66i32_arrayidx122_push20_bicg1_x_i_data = i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg0_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg44_mux_x_q;
    assign i_llvm_fpga_push_p66i32_arrayidx122_push20_bicg0_i_llvm_fpga_push_p66i32_arrayidx122_push20_bicg1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_p66i32_arrayidx122_push20_bicg0_i_llvm_fpga_push_p66i32_arrayidx122_push20_bicg1_x_i_valid[0];
    assign i_llvm_fpga_push_p66i32_arrayidx122_push20_bicg0_i_llvm_fpga_push_p66i32_arrayidx122_push20_bicg1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_p66i32_arrayidx122_push20_bicg0_i_llvm_fpga_push_p66i32_arrayidx122_push20_bicg1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_p66i32_arrayidx122_push20_bicg0_i_llvm_fpga_push_p66i32_arrayidx122_push20_bicg1_x (
        .i_valid(i_llvm_fpga_push_p66i32_arrayidx122_push20_bicg0_i_llvm_fpga_push_p66i32_arrayidx122_push20_bicg1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_p66i32_arrayidx122_push20_bicg0_i_llvm_fpga_push_p66i32_arrayidx122_push20_bicg1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg0_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg44_mux_x_q),
        .o_data(i_llvm_fpga_push_p66i32_arrayidx122_push20_bicg0_i_llvm_fpga_push_p66i32_arrayidx122_push20_bicg1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg0_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg44_mux_x(MUX,203)@4
    assign i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg0_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg44_mux_x_s = redist42_i_llvm_fpga_forked_bicg_b5_forked_bicg3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg0_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg44_mux_x_s or i_llvm_fpga_push_p66i32_arrayidx122_push20_bicg0_i_llvm_fpga_push_p66i32_arrayidx122_push20_bicg1_x_o_data or redist13_sync_together121_aunroll_x_in_c0_eni11_7_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg0_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg44_mux_x_s)
            1'b0 : i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg0_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg44_mux_x_q = i_llvm_fpga_push_p66i32_arrayidx122_push20_bicg0_i_llvm_fpga_push_p66i32_arrayidx122_push20_bicg1_x_o_data;
            1'b1 : i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg0_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg44_mux_x_q = redist13_sync_together121_aunroll_x_in_c0_eni11_7_tpl_4_q;
            default : i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg0_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg44_mux_x_q = 64'b0;
        endcase
    end

    // redist30_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg0_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg44_mux_x_q_15_inputreg0(DELAY,471)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist30_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg0_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg44_mux_x_q_15_inputreg0_q <= $unsigned(i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg0_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg44_mux_x_q);
        end
    end

    // redist30_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg0_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg44_mux_x_q_15_wraddr(COUNTER,474)
    // low=0, high=15, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist30_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg0_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg44_mux_x_q_15_wraddr_i <= $unsigned(redist30_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg0_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg44_mux_x_q_15_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist30_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg0_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg44_mux_x_q_15_wraddr_q = redist30_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg0_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg44_mux_x_q_15_wraddr_i[3:0];

    // redist30_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg0_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg44_mux_x_q_15_mem(DUALMEM,473)
    assign redist30_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg0_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg44_mux_x_q_15_mem_ia = $unsigned(redist30_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg0_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg44_mux_x_q_15_inputreg0_q);
    assign redist30_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg0_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg44_mux_x_q_15_mem_aa = redist30_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg0_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg44_mux_x_q_15_wraddr_q;
    assign redist30_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg0_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg44_mux_x_q_15_mem_ab = redist30_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg0_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg44_mux_x_q_15_rdcnt_q[3:0];
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
    ) redist30_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg0_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg44_mux_x_q_15_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist30_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg0_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg44_mux_x_q_15_mem_aa),
        .data_a(redist30_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg0_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg44_mux_x_q_15_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist30_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg0_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg44_mux_x_q_15_mem_ab),
        .q_b(redist30_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg0_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg44_mux_x_q_15_mem_iq),
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
    assign redist30_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg0_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg44_mux_x_q_15_mem_q = redist30_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg0_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg44_mux_x_q_15_mem_iq[63:0];

    // redist30_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg0_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg44_mux_x_q_15_outputreg0(DELAY,472)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist30_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg0_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg44_mux_x_q_15_outputreg0_q <= $unsigned(redist30_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg0_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg44_mux_x_q_15_mem_q);
        end
    end

    // i_notcmp_bicg38(LOGICAL,110)@19
    assign i_notcmp_bicg38_q = redist7_i_exitcond_bicg31_cmp_nsign_q_15_q ^ VCC_q;

    // redist7_i_exitcond_bicg31_cmp_nsign_q_15(DELAY,420)
    dspba_delay_ver #( .width(1), .depth(15), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist7_i_exitcond_bicg31_cmp_nsign_q_15 ( .xin(i_exitcond_bicg31_cmp_nsign_q), .xout(redist7_i_exitcond_bicg31_cmp_nsign_q_15_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist12_sync_together121_aunroll_x_in_c0_eni11_5_tpl_17_offset(CONSTANT,468)
    assign redist12_sync_together121_aunroll_x_in_c0_eni11_5_tpl_17_offset_q = $unsigned(4'b0100);

    // redist12_sync_together121_aunroll_x_in_c0_eni11_5_tpl_17_rdcnt(ADD,469)
    assign redist12_sync_together121_aunroll_x_in_c0_eni11_5_tpl_17_rdcnt_a = {1'b0, redist12_sync_together121_aunroll_x_in_c0_eni11_5_tpl_17_wraddr_q};
    assign redist12_sync_together121_aunroll_x_in_c0_eni11_5_tpl_17_rdcnt_b = {1'b0, redist12_sync_together121_aunroll_x_in_c0_eni11_5_tpl_17_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist12_sync_together121_aunroll_x_in_c0_eni11_5_tpl_17_rdcnt_o <= $unsigned(redist12_sync_together121_aunroll_x_in_c0_eni11_5_tpl_17_rdcnt_a) + $unsigned(redist12_sync_together121_aunroll_x_in_c0_eni11_5_tpl_17_rdcnt_b);
        end
    end
    assign redist12_sync_together121_aunroll_x_in_c0_eni11_5_tpl_17_rdcnt_q = redist12_sync_together121_aunroll_x_in_c0_eni11_5_tpl_17_rdcnt_o[4:0];

    // redist12_sync_together121_aunroll_x_in_c0_eni11_5_tpl_17_inputreg0(DELAY,464)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist12_sync_together121_aunroll_x_in_c0_eni11_5_tpl_17_inputreg0_q <= $unsigned(in_c0_eni11_5_tpl);
        end
    end

    // redist12_sync_together121_aunroll_x_in_c0_eni11_5_tpl_17_wraddr(COUNTER,467)
    // low=0, high=15, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist12_sync_together121_aunroll_x_in_c0_eni11_5_tpl_17_wraddr_i <= $unsigned(redist12_sync_together121_aunroll_x_in_c0_eni11_5_tpl_17_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist12_sync_together121_aunroll_x_in_c0_eni11_5_tpl_17_wraddr_q = redist12_sync_together121_aunroll_x_in_c0_eni11_5_tpl_17_wraddr_i[3:0];

    // redist12_sync_together121_aunroll_x_in_c0_eni11_5_tpl_17_mem(DUALMEM,466)
    assign redist12_sync_together121_aunroll_x_in_c0_eni11_5_tpl_17_mem_ia = $unsigned(redist12_sync_together121_aunroll_x_in_c0_eni11_5_tpl_17_inputreg0_q);
    assign redist12_sync_together121_aunroll_x_in_c0_eni11_5_tpl_17_mem_aa = redist12_sync_together121_aunroll_x_in_c0_eni11_5_tpl_17_wraddr_q;
    assign redist12_sync_together121_aunroll_x_in_c0_eni11_5_tpl_17_mem_ab = redist12_sync_together121_aunroll_x_in_c0_eni11_5_tpl_17_rdcnt_q[3:0];
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
    ) redist12_sync_together121_aunroll_x_in_c0_eni11_5_tpl_17_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist12_sync_together121_aunroll_x_in_c0_eni11_5_tpl_17_mem_aa),
        .data_a(redist12_sync_together121_aunroll_x_in_c0_eni11_5_tpl_17_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist12_sync_together121_aunroll_x_in_c0_eni11_5_tpl_17_mem_ab),
        .q_b(redist12_sync_together121_aunroll_x_in_c0_eni11_5_tpl_17_mem_iq),
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
    assign redist12_sync_together121_aunroll_x_in_c0_eni11_5_tpl_17_mem_q = redist12_sync_together121_aunroll_x_in_c0_eni11_5_tpl_17_mem_iq[31:0];

    // redist12_sync_together121_aunroll_x_in_c0_eni11_5_tpl_17_outputreg0(DELAY,465)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist12_sync_together121_aunroll_x_in_c0_eni11_5_tpl_17_outputreg0_q <= $unsigned(redist12_sync_together121_aunroll_x_in_c0_eni11_5_tpl_17_mem_q);
        end
    end

    // valid_fanout_reg25(REG,279)@13 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg25_q <= $unsigned(redist22_sync_together121_aunroll_x_in_i_valid_13_q);
        end
    end

    // valid_fanout_reg24(REG,278)@16 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg24_q <= $unsigned(redist23_sync_together121_aunroll_x_in_i_valid_16_q);
        end
    end

    // i_llvm_fpga_push_i32_tmp_q_018_push15_bicg0_i_llvm_fpga_push_i32_tmp_q_018_push15_bicg1_x(FIFODELAY,237)@14
    // in i_valid@17
    // in i_write_pred@17
    // in i_data@18
    // out o_data@17
    assign i_llvm_fpga_push_i32_tmp_q_018_push15_bicg0_i_llvm_fpga_push_i32_tmp_q_018_push15_bicg1_x_i_stall = ~ (valid_fanout_reg25_q & redist28_i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_inv_pred_x_q_13_q);
    assign i_llvm_fpga_push_i32_tmp_q_018_push15_bicg0_i_llvm_fpga_push_i32_tmp_q_018_push15_bicg1_x_i_valid = valid_fanout_reg24_q & redist29_i_llvm_fpga_push_i1_bicg_b5_next_iter_isreal_push_bicg0_inv_pred_x_q_16_q;
    assign i_llvm_fpga_push_i32_tmp_q_018_push15_bicg0_i_llvm_fpga_push_i32_tmp_q_018_push15_bicg1_x_i_data = bgTrunc_i_add23_bicg28_sel_x_b;
    assign i_llvm_fpga_push_i32_tmp_q_018_push15_bicg0_i_llvm_fpga_push_i32_tmp_q_018_push15_bicg1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_tmp_q_018_push15_bicg0_i_llvm_fpga_push_i32_tmp_q_018_push15_bicg1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_tmp_q_018_push15_bicg0_i_llvm_fpga_push_i32_tmp_q_018_push15_bicg1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_tmp_q_018_push15_bicg0_i_llvm_fpga_push_i32_tmp_q_018_push15_bicg1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_tmp_q_018_push15_bicg0_i_llvm_fpga_push_i32_tmp_q_018_push15_bicg1_x (
        .i_valid(i_llvm_fpga_push_i32_tmp_q_018_push15_bicg0_i_llvm_fpga_push_i32_tmp_q_018_push15_bicg1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_tmp_q_018_push15_bicg0_i_llvm_fpga_push_i32_tmp_q_018_push15_bicg1_x_i_stall_bitsignaltemp),
        .i_data(bgTrunc_i_add23_bicg28_sel_x_b),
        .o_data(i_llvm_fpga_push_i32_tmp_q_018_push15_bicg0_i_llvm_fpga_push_i32_tmp_q_018_push15_bicg1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_tmp_q_018_pop15_bicg0_i_llvm_fpga_pop_i32_tmp_q_018_pop15_bicg27_mux_x(MUX,200)@17 + 1
    assign i_llvm_fpga_pop_i32_tmp_q_018_pop15_bicg0_i_llvm_fpga_pop_i32_tmp_q_018_pop15_bicg27_mux_x_s = redist44_i_llvm_fpga_forked_bicg_b5_forked_bicg3_out_buffer_out_17_q;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_llvm_fpga_pop_i32_tmp_q_018_pop15_bicg0_i_llvm_fpga_pop_i32_tmp_q_018_pop15_bicg27_mux_x_s)
                1'b0 : i_llvm_fpga_pop_i32_tmp_q_018_pop15_bicg0_i_llvm_fpga_pop_i32_tmp_q_018_pop15_bicg27_mux_x_q <= i_llvm_fpga_push_i32_tmp_q_018_push15_bicg0_i_llvm_fpga_push_i32_tmp_q_018_push15_bicg1_x_o_data;
                1'b1 : i_llvm_fpga_pop_i32_tmp_q_018_pop15_bicg0_i_llvm_fpga_pop_i32_tmp_q_018_pop15_bicg27_mux_x_q <= redist12_sync_together121_aunroll_x_in_c0_eni11_5_tpl_17_outputreg0_q;
                default : i_llvm_fpga_pop_i32_tmp_q_018_pop15_bicg0_i_llvm_fpga_pop_i32_tmp_q_018_pop15_bicg27_mux_x_q <= 32'b0;
            endcase
        end
    end

    // i_mul22_bicg26_bs1_merged_bit_select(BITSELECT,412)@10
    assign i_mul22_bicg26_bs1_merged_bit_select_b = i_llvm_fpga_mem_unnamed_bicg8_bicg25_out_o_readdata[31:18];
    assign i_mul22_bicg26_bs1_merged_bit_select_c = i_llvm_fpga_mem_unnamed_bicg8_bicg25_out_o_readdata[17:0];

    // i_mul22_bicg26_ma5_cma(CHAINMULTADD,404)@10 + 5
    // out q@16
    assign i_mul22_bicg26_ma5_cma_reset = ~ (resetn);
    assign i_mul22_bicg26_ma5_cma_ena0 = 1'b1;
    assign i_mul22_bicg26_ma5_cma_ena1 = i_mul22_bicg26_ma5_cma_ena0;
    assign i_mul22_bicg26_ma5_cma_ena2 = i_mul22_bicg26_ma5_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul22_bicg26_ma5_cma_ah[0] <= i_mul22_bicg26_bs1_merged_bit_select_b;
            i_mul22_bicg26_ma5_cma_ah[1] <= i_mul22_bicg26_bs3_merged_bit_select_b;
            i_mul22_bicg26_ma5_cma_ch[0] <= i_mul22_bicg26_bs3_merged_bit_select_c;
            i_mul22_bicg26_ma5_cma_ch[1] <= i_mul22_bicg26_bs1_merged_bit_select_c;
        end
    end

    assign i_mul22_bicg26_ma5_cma_a0 = i_mul22_bicg26_ma5_cma_ah[0];
    assign i_mul22_bicg26_ma5_cma_c0 = i_mul22_bicg26_ma5_cma_ch[0];
    assign i_mul22_bicg26_ma5_cma_a1 = i_mul22_bicg26_ma5_cma_ah[1];
    assign i_mul22_bicg26_ma5_cma_c1 = i_mul22_bicg26_ma5_cma_ch[1];
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
    ) i_mul22_bicg26_ma5_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul22_bicg26_ma5_cma_ena2, i_mul22_bicg26_ma5_cma_ena1, i_mul22_bicg26_ma5_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul22_bicg26_ma5_cma_a1),
        .by(i_mul22_bicg26_ma5_cma_a0),
        .ax(i_mul22_bicg26_ma5_cma_c1),
        .bx(i_mul22_bicg26_ma5_cma_c0),
        .resulta(i_mul22_bicg26_ma5_cma_s0),
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
    i_mul22_bicg26_ma5_cma_delay ( .xin(i_mul22_bicg26_ma5_cma_s0), .xout(i_mul22_bicg26_ma5_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul22_bicg26_ma5_cma_q = $unsigned(i_mul22_bicg26_ma5_cma_qq[32:0]);

    // redist2_i_mul22_bicg26_ma5_cma_q_1(DELAY,415)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_i_mul22_bicg26_ma5_cma_q_1_q <= $unsigned(i_mul22_bicg26_ma5_cma_q);
        end
    end

    // i_mul22_bicg26_sums_align_1(BITSHIFT,324)@17
    assign i_mul22_bicg26_sums_align_1_qint = { redist2_i_mul22_bicg26_ma5_cma_q_1_q, 18'b000000000000000000 };
    assign i_mul22_bicg26_sums_align_1_q = i_mul22_bicg26_sums_align_1_qint[50:0];

    // i_mul22_bicg26_bjA2(BITJOIN,312)@10
    assign i_mul22_bicg26_bjA2_q = {GND_q, i_mul22_bicg26_bs1_merged_bit_select_b};

    // i_mul22_bicg26_im0_cma(CHAINMULTADD,400)@10 + 5
    // out q@16
    assign i_mul22_bicg26_im0_cma_reset = ~ (resetn);
    assign i_mul22_bicg26_im0_cma_ena0 = 1'b1;
    assign i_mul22_bicg26_im0_cma_ena1 = i_mul22_bicg26_im0_cma_ena0;
    assign i_mul22_bicg26_im0_cma_ena2 = i_mul22_bicg26_im0_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul22_bicg26_im0_cma_ah[0] <= i_mul22_bicg26_bjA2_q;
            i_mul22_bicg26_im0_cma_ch[0] <= i_mul22_bicg26_bjB4_q;
        end
    end

    assign i_mul22_bicg26_im0_cma_a0 = $unsigned(i_mul22_bicg26_im0_cma_ah[0]);
    assign i_mul22_bicg26_im0_cma_c0 = $unsigned(i_mul22_bicg26_im0_cma_ch[0]);
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
    ) i_mul22_bicg26_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul22_bicg26_im0_cma_ena2, i_mul22_bicg26_im0_cma_ena1, i_mul22_bicg26_im0_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul22_bicg26_im0_cma_a0),
        .ax(i_mul22_bicg26_im0_cma_c0),
        .resulta(i_mul22_bicg26_im0_cma_s0),
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
    i_mul22_bicg26_im0_cma_delay ( .xin(i_mul22_bicg26_im0_cma_s0), .xout(i_mul22_bicg26_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul22_bicg26_im0_cma_q = $unsigned(i_mul22_bicg26_im0_cma_qq[29:0]);

    // redist6_i_mul22_bicg26_im0_cma_q_1(DELAY,419)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_i_mul22_bicg26_im0_cma_q_1_q <= $unsigned(i_mul22_bicg26_im0_cma_q);
        end
    end

    // i_mul22_bicg26_im10_cma(CHAINMULTADD,401)@10 + 5
    // out q@16
    assign i_mul22_bicg26_im10_cma_reset = ~ (resetn);
    assign i_mul22_bicg26_im10_cma_ena0 = 1'b1;
    assign i_mul22_bicg26_im10_cma_ena1 = i_mul22_bicg26_im10_cma_ena0;
    assign i_mul22_bicg26_im10_cma_ena2 = i_mul22_bicg26_im10_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul22_bicg26_im10_cma_ah[0] <= i_mul22_bicg26_bs1_merged_bit_select_c;
            i_mul22_bicg26_im10_cma_ch[0] <= i_mul22_bicg26_bs3_merged_bit_select_c;
        end
    end

    assign i_mul22_bicg26_im10_cma_a0 = i_mul22_bicg26_im10_cma_ah[0];
    assign i_mul22_bicg26_im10_cma_c0 = i_mul22_bicg26_im10_cma_ch[0];
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
    ) i_mul22_bicg26_im10_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul22_bicg26_im10_cma_ena2, i_mul22_bicg26_im10_cma_ena1, i_mul22_bicg26_im10_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul22_bicg26_im10_cma_a0),
        .ax(i_mul22_bicg26_im10_cma_c0),
        .resulta(i_mul22_bicg26_im10_cma_s0),
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
    i_mul22_bicg26_im10_cma_delay ( .xin(i_mul22_bicg26_im10_cma_s0), .xout(i_mul22_bicg26_im10_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul22_bicg26_im10_cma_q = $unsigned(i_mul22_bicg26_im10_cma_qq[35:0]);

    // redist5_i_mul22_bicg26_im10_cma_q_1(DELAY,418)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_i_mul22_bicg26_im10_cma_q_1_q <= $unsigned(i_mul22_bicg26_im10_cma_q);
        end
    end

    // i_mul22_bicg26_sums_join_0(BITJOIN,323)@17
    assign i_mul22_bicg26_sums_join_0_q = {redist6_i_mul22_bicg26_im0_cma_q_1_q, redist5_i_mul22_bicg26_im10_cma_q_1_q};

    // i_mul22_bicg26_sums_result_add_0_0(ADD,326)@17
    assign i_mul22_bicg26_sums_result_add_0_0_a = {1'b0, i_mul22_bicg26_sums_join_0_q};
    assign i_mul22_bicg26_sums_result_add_0_0_b = {16'b0000000000000000, i_mul22_bicg26_sums_align_1_q};
    assign i_mul22_bicg26_sums_result_add_0_0_o = $unsigned(i_mul22_bicg26_sums_result_add_0_0_a) + $unsigned(i_mul22_bicg26_sums_result_add_0_0_b);
    assign i_mul22_bicg26_sums_result_add_0_0_q = i_mul22_bicg26_sums_result_add_0_0_o[66:0];

    // bgTrunc_i_mul22_bicg26_sel_x(BITSELECT,119)@17
    assign bgTrunc_i_mul22_bicg26_sel_x_in = i_mul22_bicg26_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul22_bicg26_sel_x_b = bgTrunc_i_mul22_bicg26_sel_x_in[31:0];

    // redist38_bgTrunc_i_mul22_bicg26_sel_x_b_1(DELAY,451)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist38_bgTrunc_i_mul22_bicg26_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul22_bicg26_sel_x_b);
        end
    end

    // i_add23_bicg28(ADD,75)@18
    assign i_add23_bicg28_a = {1'b0, redist38_bgTrunc_i_mul22_bicg26_sel_x_b_1_q};
    assign i_add23_bicg28_b = {1'b0, i_llvm_fpga_pop_i32_tmp_q_018_pop15_bicg0_i_llvm_fpga_pop_i32_tmp_q_018_pop15_bicg27_mux_x_q};
    assign i_add23_bicg28_o = $unsigned(i_add23_bicg28_a) + $unsigned(i_add23_bicg28_b);
    assign i_add23_bicg28_q = i_add23_bicg28_o[32:0];

    // bgTrunc_i_add23_bicg28_sel_x(BITSELECT,115)@18
    assign bgTrunc_i_add23_bicg28_sel_x_b = i_add23_bicg28_q[31:0];

    // redist39_bgTrunc_i_add23_bicg28_sel_x_b_1(DELAY,452)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist39_bgTrunc_i_add23_bicg28_sel_x_b_1_q <= $unsigned(bgTrunc_i_add23_bicg28_sel_x_b);
        end
    end

    // redist48_i_bicg_b5_current_iter_isspec_bicg5_q_13(DELAY,461)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist48_i_bicg_b5_current_iter_isspec_bicg5_q_13_q <= $unsigned(redist47_i_bicg_b5_current_iter_isspec_bicg5_q_12_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,252)@19
    assign out_bicg_B5_current_iter_isspec = redist48_i_bicg_b5_current_iter_isspec_bicg5_q_13_q;
    assign out_c0_exi978_0_tpl = GND_q;
    assign out_c0_exi978_1_tpl = i_llvm_fpga_mem_memdep_1_bicg23_out_o_writeack;
    assign out_c0_exi978_2_tpl = redist39_bgTrunc_i_add23_bicg28_sel_x_b_1_q;
    assign out_c0_exi978_3_tpl = redist7_i_exitcond_bicg31_cmp_nsign_q_15_q;
    assign out_c0_exi978_4_tpl = i_notcmp_bicg38_q;
    assign out_c0_exi978_5_tpl = redist30_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg0_i_llvm_fpga_pop_p66i32_arrayidx122_pop20_bicg44_mux_x_q_15_outputreg0_q;
    assign out_c0_exi978_6_tpl = redist32_i_llvm_fpga_pop_i1_exitcond623_pop21_bicg0_i_llvm_fpga_pop_i1_exitcond623_pop21_bicg46_mux_x_q_2_q;
    assign out_c0_exi978_7_tpl = redist31_i_llvm_fpga_pop_i1_notcmp724_pop22_bicg0_i_llvm_fpga_pop_i1_notcmp724_pop22_bicg48_mux_x_q_15_q;
    assign out_c0_exi978_8_tpl = redist16_sync_together121_aunroll_x_in_c0_eni11_10_tpl_19_q;
    assign out_c0_exi978_9_tpl = redist17_sync_together121_aunroll_x_in_c0_eni11_11_tpl_19_q;
    assign out_o_valid = redist8_valid_fanout_reg0_q_1_q;

endmodule
