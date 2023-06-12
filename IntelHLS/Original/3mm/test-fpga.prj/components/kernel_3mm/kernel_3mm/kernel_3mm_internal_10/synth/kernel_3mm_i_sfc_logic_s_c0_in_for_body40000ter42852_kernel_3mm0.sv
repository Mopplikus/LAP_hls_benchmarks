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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body47_kernel_3mms_c0_enter42852_kernel_3mm0
// Created for function/kernel kernel_3mm
// SystemVerilog created on Thu Apr 27 14:26:51 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_i_sfc_logic_s_c0_in_for_body40000ter42852_kernel_3mm0 (
    input wire [31:0] in_unnamed_kernel_3mm8_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm8_kernel_3mm_avm_writeack,
    input wire [0:0] in_unnamed_kernel_3mm8_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm8_kernel_3mm_avm_readdatavalid,
    output wire [31:0] out_unnamed_kernel_3mm8_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm8_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm8_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm8_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm8_kernel_3mm_avm_writedata,
    output wire [3:0] out_unnamed_kernel_3mm8_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm8_kernel_3mm_avm_burstcount,
    input wire [0:0] in_flush,
    output wire [0:0] out_exiting_valid_out,
    input wire [31:0] in_unnamed_kernel_3mm9_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm9_kernel_3mm_avm_writeack,
    input wire [0:0] in_unnamed_kernel_3mm9_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm9_kernel_3mm_avm_readdatavalid,
    output wire [31:0] out_unnamed_kernel_3mm9_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm9_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm9_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm9_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm9_kernel_3mm_avm_writedata,
    output wire [3:0] out_unnamed_kernel_3mm9_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm9_kernel_3mm_avm_burstcount,
    output wire [0:0] out_pipeline_dummy_out,
    output wire [0:0] out_pipeline_forked_out,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_c0_exi21474_0_tpl,
    output wire [31:0] out_c0_exi21474_1_tpl,
    output wire [0:0] out_c0_exi21474_2_tpl,
    output wire [0:0] out_c0_exi21474_3_tpl,
    output wire [0:0] out_c0_exi21474_4_tpl,
    output wire [0:0] out_c0_exi21474_5_tpl,
    output wire [0:0] out_c0_exi21474_6_tpl,
    output wire [0:0] out_c0_exi21474_7_tpl,
    output wire [0:0] out_c0_exi21474_8_tpl,
    output wire [63:0] out_c0_exi21474_9_tpl,
    output wire [0:0] out_c0_exi21474_10_tpl,
    output wire [0:0] out_c0_exi21474_11_tpl,
    output wire [0:0] out_c0_exi21474_12_tpl,
    output wire [0:0] out_c0_exi21474_13_tpl,
    output wire [0:0] out_c0_exi21474_14_tpl,
    output wire [31:0] out_c0_exi21474_15_tpl,
    output wire [0:0] out_c0_exi21474_16_tpl,
    output wire [0:0] out_c0_exi21474_17_tpl,
    output wire [0:0] out_c0_exi21474_18_tpl,
    output wire [0:0] out_c0_exi21474_19_tpl,
    output wire [0:0] out_c0_exi21474_20_tpl,
    output wire [0:0] out_c0_exi21474_21_tpl,
    output wire [0:0] out_kernel_3mm_B6_current_iter_isspec,
    output wire [0:0] out_o_valid,
    input wire [0:0] in_buffer_in,
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
    input wire [0:0] in_dummy_in,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_0127_q;
    wire [31:0] c_i32_1128_q;
    wire [4:0] c_i5_1131_q;
    wire [4:0] c_i5_8129_q;
    wire [63:0] c_kernel_3mm_C_local_pmem_q;
    wire [63:0] c_kernel_3mm_D_local_pmem_q;
    wire [32:0] i_add57_kernel_3mm19_a;
    wire [32:0] i_add57_kernel_3mm19_b;
    logic [32:0] i_add57_kernel_3mm19_o;
    wire [32:0] i_add57_kernel_3mm19_q;
    wire [1:0] i_arrayidx515_kernel_3mm12_vt_const_1_q;
    wire [63:0] i_arrayidx515_kernel_3mm12_vt_join_q;
    wire [61:0] i_arrayidx515_kernel_3mm12_vt_select_63_b;
    wire [63:0] i_arrayidx556_kernel_3mm15_vt_join_q;
    wire [61:0] i_arrayidx556_kernel_3mm15_vt_select_63_b;
    wire [5:0] i_fpga_indvars_iv_next9_kernel_3mm30_a;
    wire [5:0] i_fpga_indvars_iv_next9_kernel_3mm30_b;
    logic [5:0] i_fpga_indvars_iv_next9_kernel_3mm30_o;
    wire [5:0] i_fpga_indvars_iv_next9_kernel_3mm30_q;
    wire [63:0] i_idxprom50_kernel_3mm10_vt_join_q;
    wire [31:0] i_idxprom50_kernel_3mm10_vt_select_31_b;
    wire [32:0] i_inc59_kernel_3mm20_a;
    wire [32:0] i_inc59_kernel_3mm20_b;
    logic [32:0] i_inc59_kernel_3mm20_o;
    wire [32:0] i_inc59_kernel_3mm20_q;
    wire [0:0] i_kernel_3mm_b6_current_iter_isspec_kernel_3mm5_q;
    wire [0:0] i_kernel_3mm_b6_next_iter_isreal_kernel_3mm7_q;
    wire [0:0] i_llvm_fpga_dummy_thread_kernel_3mm_b6_dummy_kernel_3mm2_out_dummy_out;
    wire [0:0] i_llvm_fpga_forked_kernel_3mm_b6_forked_kernel_3mm3_out_buffer_out;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_3mm8_kernel_3mm13_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_3mm8_kernel_3mm13_out_unnamed_kernel_3mm8_kernel_3mm_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm8_kernel_3mm13_out_unnamed_kernel_3mm8_kernel_3mm_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_kernel_3mm8_kernel_3mm13_out_unnamed_kernel_3mm8_kernel_3mm_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm8_kernel_3mm13_out_unnamed_kernel_3mm8_kernel_3mm_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm8_kernel_3mm13_out_unnamed_kernel_3mm8_kernel_3mm_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm8_kernel_3mm13_out_unnamed_kernel_3mm8_kernel_3mm_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_3mm8_kernel_3mm13_out_unnamed_kernel_3mm8_kernel_3mm_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_3mm9_kernel_3mm16_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_3mm9_kernel_3mm16_out_unnamed_kernel_3mm9_kernel_3mm_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm9_kernel_3mm16_out_unnamed_kernel_3mm9_kernel_3mm_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_kernel_3mm9_kernel_3mm16_out_unnamed_kernel_3mm9_kernel_3mm_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm9_kernel_3mm16_out_unnamed_kernel_3mm9_kernel_3mm_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm9_kernel_3mm16_out_unnamed_kernel_3mm9_kernel_3mm_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm9_kernel_3mm16_out_unnamed_kernel_3mm9_kernel_3mm_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_3mm9_kernel_3mm16_out_unnamed_kernel_3mm9_kernel_3mm_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going38_kernel_3mm6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going38_kernel_3mm6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going38_kernel_3mm6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going38_kernel_3mm6_out_pipeline_dummy_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going38_kernel_3mm6_out_pipeline_forked_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going38_kernel_3mm6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond39_kernel_3mm29_out_feedback_out_8;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond39_kernel_3mm29_out_feedback_valid_out_8;
    wire [0:0] i_notcmp36_kernel_3mm28_q;
    wire [31:0] bgTrunc_i_add57_kernel_3mm19_sel_x_b;
    wire [4:0] bgTrunc_i_fpga_indvars_iv_next9_kernel_3mm30_sel_x_b;
    wire [31:0] bgTrunc_i_inc59_kernel_3mm20_sel_x_b;
    wire [63:0] bgTrunc_i_mul56_kernel_3mm17_sel_x_in;
    wire [31:0] bgTrunc_i_mul56_kernel_3mm17_sel_x_b;
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
    wire [63:0] i_idxprom50_kernel_3mm10_sel_x_b;
    wire [0:0] i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b6_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b6_current_iter_isreal_kernel_3mm4_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b6_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b6_current_iter_isreal_kernel_3mm4_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_forked63_pop63_kernel_3mm0_i_llvm_fpga_pop_i1_forked63_pop63_kernel_3mm32_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_forked63_pop63_kernel_3mm0_i_llvm_fpga_pop_i1_forked63_pop63_kernel_3mm32_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_105_pop73_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_105_pop73_kernel_3mm48_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_105_pop73_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_105_pop73_kernel_3mm48_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi5_pop2079_pop67_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi5_pop2079_pop67_kernel_3mm40_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi5_pop2079_pop67_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi5_pop2079_pop67_kernel_3mm40_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp46103_pop72_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp46103_pop72_kernel_3mm46_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_notcmp46103_pop72_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp46103_pop72_kernel_3mm46_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp5190_pop69_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp5190_pop69_kernel_3mm44_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_notcmp5190_pop69_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp5190_pop69_kernel_3mm44_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_k_153_pop62_kernel_3mm0_i_llvm_fpga_pop_i32_k_153_pop62_kernel_3mm9_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_k_153_pop62_kernel_3mm0_i_llvm_fpga_pop_i32_k_153_pop62_kernel_3mm9_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_tmp40_054_pop61_kernel_3mm0_i_llvm_fpga_pop_i32_tmp40_054_pop61_kernel_3mm18_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_tmp40_054_pop61_kernel_3mm0_i_llvm_fpga_pop_i32_tmp40_054_pop61_kernel_3mm18_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i5_fpga_indvars_iv8_pop60_kernel_3mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv8_pop60_kernel_3mm21_mux_x_s;
    reg [4:0] i_llvm_fpga_pop_i5_fpga_indvars_iv8_pop60_kernel_3mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv8_pop60_kernel_3mm21_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i64_idxprom11100_pop71_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom11100_pop71_kernel_3mm14_mux_x_s;
    reg [63:0] i_llvm_fpga_pop_i64_idxprom11100_pop71_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom11100_pop71_kernel_3mm14_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i64_idxprom98_pop70_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom98_pop70_kernel_3mm11_mux_x_s;
    reg [63:0] i_llvm_fpga_pop_i64_idxprom98_pop70_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom98_pop70_kernel_3mm11_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm0_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm50_mux_x_s;
    reg [63:0] i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm0_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm50_mux_x_q;
    wire [6:0] i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_c_i7_03_x_q;
    wire [7:0] i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_i_llvm_fpga_push_i1_forked63_push63_kernel_3mm1_x_i_valid;
    wire i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_i_llvm_fpga_push_i1_forked63_push63_kernel_3mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_i_llvm_fpga_push_i1_forked63_push63_kernel_3mm1_x_i_stall;
    wire i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_i_llvm_fpga_push_i1_forked63_push63_kernel_3mm1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_i_llvm_fpga_push_i1_forked63_push63_kernel_3mm1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_i_llvm_fpga_push_i1_forked63_push63_kernel_3mm1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_inv_pred_x_q;
    wire [0:0] i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_kernel_3mm_b6_next_iter_isreal_push_kernel_3mm0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_kernel_3mm_b6_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b6_next_iter_isreal_push_kernel_3mm1_x_i_valid;
    wire i_llvm_fpga_push_i1_kernel_3mm_b6_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b6_next_iter_isreal_push_kernel_3mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_kernel_3mm_b6_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b6_next_iter_isreal_push_kernel_3mm1_x_i_stall;
    wire i_llvm_fpga_push_i1_kernel_3mm_b6_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b6_next_iter_isreal_push_kernel_3mm1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_kernel_3mm_b6_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b6_next_iter_isreal_push_kernel_3mm1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_kernel_3mm_b6_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b6_next_iter_isreal_push_kernel_3mm1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_kernel_3mm_b6_next_iter_isreal_push_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_memdep_105_push73_kernel_3mm0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_memdep_105_push73_kernel_3mm0_i_llvm_fpga_push_i1_memdep_105_push73_kernel_3mm1_x_i_valid;
    wire i_llvm_fpga_push_i1_memdep_105_push73_kernel_3mm0_i_llvm_fpga_push_i1_memdep_105_push73_kernel_3mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_memdep_105_push73_kernel_3mm0_i_llvm_fpga_push_i1_memdep_105_push73_kernel_3mm1_x_i_stall;
    wire i_llvm_fpga_push_i1_memdep_105_push73_kernel_3mm0_i_llvm_fpga_push_i1_memdep_105_push73_kernel_3mm1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_memdep_105_push73_kernel_3mm0_i_llvm_fpga_push_i1_memdep_105_push73_kernel_3mm1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_memdep_105_push73_kernel_3mm0_i_llvm_fpga_push_i1_memdep_105_push73_kernel_3mm1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_memdep_105_push73_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi5_pop2079_push67_kernel_3mm0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi5_pop2079_push67_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2079_push67_kernel_3mm1_x_i_valid;
    wire i_llvm_fpga_push_i1_memdep_phi5_pop2079_push67_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2079_push67_kernel_3mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi5_pop2079_push67_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2079_push67_kernel_3mm1_x_i_stall;
    wire i_llvm_fpga_push_i1_memdep_phi5_pop2079_push67_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2079_push67_kernel_3mm1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi5_pop2079_push67_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2079_push67_kernel_3mm1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi5_pop2079_push67_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2079_push67_kernel_3mm1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi5_pop2079_push67_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_notcmp46103_push72_kernel_3mm0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_notcmp46103_push72_kernel_3mm0_i_llvm_fpga_push_i1_notcmp46103_push72_kernel_3mm1_x_i_valid;
    wire i_llvm_fpga_push_i1_notcmp46103_push72_kernel_3mm0_i_llvm_fpga_push_i1_notcmp46103_push72_kernel_3mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_notcmp46103_push72_kernel_3mm0_i_llvm_fpga_push_i1_notcmp46103_push72_kernel_3mm1_x_i_stall;
    wire i_llvm_fpga_push_i1_notcmp46103_push72_kernel_3mm0_i_llvm_fpga_push_i1_notcmp46103_push72_kernel_3mm1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_notcmp46103_push72_kernel_3mm0_i_llvm_fpga_push_i1_notcmp46103_push72_kernel_3mm1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_notcmp46103_push72_kernel_3mm0_i_llvm_fpga_push_i1_notcmp46103_push72_kernel_3mm1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_notcmp46103_push72_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_notcmp5190_push69_kernel_3mm0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_notcmp5190_push69_kernel_3mm0_i_llvm_fpga_push_i1_notcmp5190_push69_kernel_3mm1_x_i_valid;
    wire i_llvm_fpga_push_i1_notcmp5190_push69_kernel_3mm0_i_llvm_fpga_push_i1_notcmp5190_push69_kernel_3mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_notcmp5190_push69_kernel_3mm0_i_llvm_fpga_push_i1_notcmp5190_push69_kernel_3mm1_x_i_stall;
    wire i_llvm_fpga_push_i1_notcmp5190_push69_kernel_3mm0_i_llvm_fpga_push_i1_notcmp5190_push69_kernel_3mm1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_notcmp5190_push69_kernel_3mm0_i_llvm_fpga_push_i1_notcmp5190_push69_kernel_3mm1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_notcmp5190_push69_kernel_3mm0_i_llvm_fpga_push_i1_notcmp5190_push69_kernel_3mm1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_notcmp5190_push69_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
    wire [0:0] i_llvm_fpga_push_i32_k_153_push62_kernel_3mm0_i_llvm_fpga_push_i32_k_153_push62_kernel_3mm1_x_i_valid;
    wire i_llvm_fpga_push_i32_k_153_push62_kernel_3mm0_i_llvm_fpga_push_i32_k_153_push62_kernel_3mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_k_153_push62_kernel_3mm0_i_llvm_fpga_push_i32_k_153_push62_kernel_3mm1_x_i_stall;
    wire i_llvm_fpga_push_i32_k_153_push62_kernel_3mm0_i_llvm_fpga_push_i32_k_153_push62_kernel_3mm1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_k_153_push62_kernel_3mm0_i_llvm_fpga_push_i32_k_153_push62_kernel_3mm1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_k_153_push62_kernel_3mm0_i_llvm_fpga_push_i32_k_153_push62_kernel_3mm1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i32_tmp40_054_push61_kernel_3mm0_i_llvm_fpga_push_i32_tmp40_054_push61_kernel_3mm1_x_i_valid;
    wire i_llvm_fpga_push_i32_tmp40_054_push61_kernel_3mm0_i_llvm_fpga_push_i32_tmp40_054_push61_kernel_3mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_tmp40_054_push61_kernel_3mm0_i_llvm_fpga_push_i32_tmp40_054_push61_kernel_3mm1_x_i_stall;
    wire i_llvm_fpga_push_i32_tmp40_054_push61_kernel_3mm0_i_llvm_fpga_push_i32_tmp40_054_push61_kernel_3mm1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_tmp40_054_push61_kernel_3mm0_i_llvm_fpga_push_i32_tmp40_054_push61_kernel_3mm1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_tmp40_054_push61_kernel_3mm0_i_llvm_fpga_push_i32_tmp40_054_push61_kernel_3mm1_x_o_data;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv8_push60_kernel_3mm0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv8_push60_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv8_push60_kernel_3mm1_x_i_valid;
    wire i_llvm_fpga_push_i5_fpga_indvars_iv8_push60_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv8_push60_kernel_3mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv8_push60_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv8_push60_kernel_3mm1_x_i_stall;
    wire i_llvm_fpga_push_i5_fpga_indvars_iv8_push60_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv8_push60_kernel_3mm1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv8_push60_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv8_push60_kernel_3mm1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv8_push60_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv8_push60_kernel_3mm1_x_o_data;
    wire [4:0] i_llvm_fpga_push_i5_fpga_indvars_iv8_push60_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
    wire [0:0] i_llvm_fpga_push_i64_idxprom11100_push71_kernel_3mm0_i_llvm_fpga_push_i64_idxprom11100_push71_kernel_3mm1_x_i_valid;
    wire i_llvm_fpga_push_i64_idxprom11100_push71_kernel_3mm0_i_llvm_fpga_push_i64_idxprom11100_push71_kernel_3mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i64_idxprom11100_push71_kernel_3mm0_i_llvm_fpga_push_i64_idxprom11100_push71_kernel_3mm1_x_i_stall;
    wire i_llvm_fpga_push_i64_idxprom11100_push71_kernel_3mm0_i_llvm_fpga_push_i64_idxprom11100_push71_kernel_3mm1_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_i64_idxprom11100_push71_kernel_3mm0_i_llvm_fpga_push_i64_idxprom11100_push71_kernel_3mm1_x_i_data;
    wire [63:0] i_llvm_fpga_push_i64_idxprom11100_push71_kernel_3mm0_i_llvm_fpga_push_i64_idxprom11100_push71_kernel_3mm1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i64_idxprom98_push70_kernel_3mm0_i_llvm_fpga_push_i64_idxprom98_push70_kernel_3mm1_x_i_valid;
    wire i_llvm_fpga_push_i64_idxprom98_push70_kernel_3mm0_i_llvm_fpga_push_i64_idxprom98_push70_kernel_3mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i64_idxprom98_push70_kernel_3mm0_i_llvm_fpga_push_i64_idxprom98_push70_kernel_3mm1_x_i_stall;
    wire i_llvm_fpga_push_i64_idxprom98_push70_kernel_3mm0_i_llvm_fpga_push_i64_idxprom98_push70_kernel_3mm1_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_i64_idxprom98_push70_kernel_3mm0_i_llvm_fpga_push_i64_idxprom98_push70_kernel_3mm1_x_i_data;
    wire [63:0] i_llvm_fpga_push_i64_idxprom98_push70_kernel_3mm0_i_llvm_fpga_push_i64_idxprom98_push70_kernel_3mm1_x_o_data;
    wire [0:0] i_llvm_fpga_push_p69i32_arrayidx444106_push74_kernel_3mm0_i_llvm_fpga_push_p69i32_arrayidx444106_push74_kernel_3mm1_x_i_valid;
    wire i_llvm_fpga_push_p69i32_arrayidx444106_push74_kernel_3mm0_i_llvm_fpga_push_p69i32_arrayidx444106_push74_kernel_3mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_p69i32_arrayidx444106_push74_kernel_3mm0_i_llvm_fpga_push_p69i32_arrayidx444106_push74_kernel_3mm1_x_i_stall;
    wire i_llvm_fpga_push_p69i32_arrayidx444106_push74_kernel_3mm0_i_llvm_fpga_push_p69i32_arrayidx444106_push74_kernel_3mm1_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_p69i32_arrayidx444106_push74_kernel_3mm0_i_llvm_fpga_push_p69i32_arrayidx444106_push74_kernel_3mm1_x_i_data;
    wire [63:0] i_llvm_fpga_push_p69i32_arrayidx444106_push74_kernel_3mm0_i_llvm_fpga_push_p69i32_arrayidx444106_push74_kernel_3mm1_x_o_data;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg7_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg9_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg12_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg13_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg14_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg15_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg16_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg17_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg18_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg19_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg20_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg21_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg22_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg24_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg25_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg36_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg37_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg42_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg43_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg45_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg46_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg48_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg49_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg51_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg52_q;
    wire [0:0] i_exitcond10_kernel_3mm22_cmp_nsign_q;
    wire [14:0] i_mul56_kernel_3mm17_bjA2_q;
    wire [14:0] i_mul56_kernel_3mm17_bjB4_q;
    wire [65:0] i_mul56_kernel_3mm17_sums_join_0_q;
    wire [50:0] i_mul56_kernel_3mm17_sums_align_1_q;
    wire [50:0] i_mul56_kernel_3mm17_sums_align_1_qint;
    wire [66:0] i_mul56_kernel_3mm17_sums_result_add_0_0_a;
    wire [66:0] i_mul56_kernel_3mm17_sums_result_add_0_0_b;
    logic [66:0] i_mul56_kernel_3mm17_sums_result_add_0_0_o;
    wire [66:0] i_mul56_kernel_3mm17_sums_result_add_0_0_q;
    wire [9:0] addsumAHighB_uid325_i_arrayidx515_kernel_3mm0_mult_x_a;
    wire [9:0] addsumAHighB_uid325_i_arrayidx515_kernel_3mm0_mult_x_b;
    logic [9:0] addsumAHighB_uid325_i_arrayidx515_kernel_3mm0_mult_x_o;
    wire [9:0] addsumAHighB_uid325_i_arrayidx515_kernel_3mm0_mult_x_q;
    wire [11:0] add_uid326_i_arrayidx515_kernel_3mm0_mult_x_q;
    wire [14:0] sR_mergedSignalTM_uid331_i_arrayidx515_kernel_3mm0_mult_x_q;
    wire [1:0] lowRangeB_uid369_i_arrayidx556_kernel_3mm0_mult_x_in;
    wire [1:0] lowRangeB_uid369_i_arrayidx556_kernel_3mm0_mult_x_b;
    wire [6:0] highBBits_uid370_i_arrayidx556_kernel_3mm0_mult_x_b;
    wire [9:0] addsumAHighB_uid371_i_arrayidx556_kernel_3mm0_mult_x_a;
    wire [9:0] addsumAHighB_uid371_i_arrayidx556_kernel_3mm0_mult_x_b;
    logic [9:0] addsumAHighB_uid371_i_arrayidx556_kernel_3mm0_mult_x_o;
    wire [9:0] addsumAHighB_uid371_i_arrayidx556_kernel_3mm0_mult_x_q;
    wire [11:0] add_uid372_i_arrayidx556_kernel_3mm0_mult_x_q;
    wire [14:0] sR_mergedSignalTM_uid377_i_arrayidx556_kernel_3mm0_mult_x_q;
    wire i_mul56_kernel_3mm17_im0_cma_reset;
    (* preserve_syn_only *) reg signed [14:0] i_mul56_kernel_3mm17_im0_cma_ah [0:0];
    (* preserve_syn_only *) reg signed [14:0] i_mul56_kernel_3mm17_im0_cma_ch [0:0];
    wire [14:0] i_mul56_kernel_3mm17_im0_cma_a0;
    wire [14:0] i_mul56_kernel_3mm17_im0_cma_c0;
    wire [29:0] i_mul56_kernel_3mm17_im0_cma_s0;
    wire [29:0] i_mul56_kernel_3mm17_im0_cma_qq;
    reg [29:0] i_mul56_kernel_3mm17_im0_cma_q;
    wire i_mul56_kernel_3mm17_im0_cma_ena0;
    wire i_mul56_kernel_3mm17_im0_cma_ena1;
    wire i_mul56_kernel_3mm17_im0_cma_ena2;
    wire i_mul56_kernel_3mm17_im10_cma_reset;
    (* preserve_syn_only *) reg [17:0] i_mul56_kernel_3mm17_im10_cma_ah [0:0];
    (* preserve_syn_only *) reg [17:0] i_mul56_kernel_3mm17_im10_cma_ch [0:0];
    wire [17:0] i_mul56_kernel_3mm17_im10_cma_a0;
    wire [17:0] i_mul56_kernel_3mm17_im10_cma_c0;
    wire [35:0] i_mul56_kernel_3mm17_im10_cma_s0;
    wire [35:0] i_mul56_kernel_3mm17_im10_cma_qq;
    reg [35:0] i_mul56_kernel_3mm17_im10_cma_q;
    wire i_mul56_kernel_3mm17_im10_cma_ena0;
    wire i_mul56_kernel_3mm17_im10_cma_ena1;
    wire i_mul56_kernel_3mm17_im10_cma_ena2;
    wire i_mul56_kernel_3mm17_ma5_cma_reset;
    (* preserve_syn_only *) reg [13:0] i_mul56_kernel_3mm17_ma5_cma_ah [0:1];
    (* preserve_syn_only *) reg [17:0] i_mul56_kernel_3mm17_ma5_cma_ch [0:1];
    wire [13:0] i_mul56_kernel_3mm17_ma5_cma_a0;
    wire [17:0] i_mul56_kernel_3mm17_ma5_cma_c0;
    wire [13:0] i_mul56_kernel_3mm17_ma5_cma_a1;
    wire [17:0] i_mul56_kernel_3mm17_ma5_cma_c1;
    wire [32:0] i_mul56_kernel_3mm17_ma5_cma_s0;
    wire [32:0] i_mul56_kernel_3mm17_ma5_cma_qq;
    reg [32:0] i_mul56_kernel_3mm17_ma5_cma_q;
    wire i_mul56_kernel_3mm17_ma5_cma_ena0;
    wire i_mul56_kernel_3mm17_ma5_cma_ena1;
    wire i_mul56_kernel_3mm17_ma5_cma_ena2;
    wire [54:0] i_arrayidx515_kernel_3mm0_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx515_kernel_3mm0_upper_bits_x_merged_bit_select_c;
    wire [54:0] i_arrayidx556_kernel_3mm0_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx556_kernel_3mm0_upper_bits_x_merged_bit_select_c;
    wire [13:0] i_mul56_kernel_3mm17_bs3_merged_bit_select_b;
    wire [17:0] i_mul56_kernel_3mm17_bs3_merged_bit_select_c;
    wire [13:0] i_mul56_kernel_3mm17_bs1_merged_bit_select_b;
    wire [17:0] i_mul56_kernel_3mm17_bs1_merged_bit_select_c;
    wire [1:0] lowRangeB_uid323_i_arrayidx515_kernel_3mm0_mult_x_merged_bit_select_b;
    wire [6:0] lowRangeB_uid323_i_arrayidx515_kernel_3mm0_mult_x_merged_bit_select_c;
    reg [54:0] redist0_i_arrayidx556_kernel_3mm0_upper_bits_x_merged_bit_select_b_1_q;
    reg [54:0] redist1_i_arrayidx515_kernel_3mm0_upper_bits_x_merged_bit_select_b_1_q;
    reg [32:0] redist2_i_mul56_kernel_3mm17_ma5_cma_q_1_q;
    reg [35:0] redist3_i_mul56_kernel_3mm17_im10_cma_q_1_q;
    reg [29:0] redist4_i_mul56_kernel_3mm17_im0_cma_q_1_q;
    reg [0:0] redist5_i_exitcond10_kernel_3mm22_cmp_nsign_q_14_q;
    reg [63:0] redist6_sync_together137_aunroll_x_in_c0_eni26_2_tpl_4_q;
    reg [63:0] redist6_sync_together137_aunroll_x_in_c0_eni26_2_tpl_4_delay_0;
    reg [63:0] redist6_sync_together137_aunroll_x_in_c0_eni26_2_tpl_4_delay_1;
    reg [63:0] redist7_sync_together137_aunroll_x_in_c0_eni26_3_tpl_4_q;
    reg [63:0] redist7_sync_together137_aunroll_x_in_c0_eni26_3_tpl_4_delay_0;
    reg [63:0] redist7_sync_together137_aunroll_x_in_c0_eni26_3_tpl_4_delay_1;
    reg [0:0] redist9_sync_together137_aunroll_x_in_c0_eni26_5_tpl_17_q;
    reg [0:0] redist10_sync_together137_aunroll_x_in_c0_eni26_9_tpl_4_q;
    reg [0:0] redist10_sync_together137_aunroll_x_in_c0_eni26_9_tpl_4_delay_0;
    reg [0:0] redist10_sync_together137_aunroll_x_in_c0_eni26_9_tpl_4_delay_1;
    reg [0:0] redist10_sync_together137_aunroll_x_in_c0_eni26_9_tpl_4_delay_2;
    reg [0:0] redist11_sync_together137_aunroll_x_in_c0_eni26_11_tpl_4_q;
    reg [0:0] redist11_sync_together137_aunroll_x_in_c0_eni26_11_tpl_4_delay_0;
    reg [0:0] redist11_sync_together137_aunroll_x_in_c0_eni26_11_tpl_4_delay_1;
    reg [0:0] redist11_sync_together137_aunroll_x_in_c0_eni26_11_tpl_4_delay_2;
    reg [0:0] redist12_sync_together137_aunroll_x_in_c0_eni26_12_tpl_4_q;
    reg [0:0] redist12_sync_together137_aunroll_x_in_c0_eni26_12_tpl_4_delay_0;
    reg [0:0] redist12_sync_together137_aunroll_x_in_c0_eni26_12_tpl_4_delay_1;
    reg [0:0] redist12_sync_together137_aunroll_x_in_c0_eni26_12_tpl_4_delay_2;
    reg [0:0] redist13_sync_together137_aunroll_x_in_c0_eni26_13_tpl_17_q;
    reg [63:0] redist14_sync_together137_aunroll_x_in_c0_eni26_14_tpl_4_q;
    reg [63:0] redist14_sync_together137_aunroll_x_in_c0_eni26_14_tpl_4_delay_0;
    reg [63:0] redist14_sync_together137_aunroll_x_in_c0_eni26_14_tpl_4_delay_1;
    reg [0:0] redist15_sync_together137_aunroll_x_in_c0_eni26_15_tpl_18_q;
    reg [0:0] redist16_sync_together137_aunroll_x_in_c0_eni26_16_tpl_18_q;
    reg [0:0] redist17_sync_together137_aunroll_x_in_c0_eni26_17_tpl_18_q;
    reg [0:0] redist18_sync_together137_aunroll_x_in_c0_eni26_18_tpl_18_q;
    reg [0:0] redist19_sync_together137_aunroll_x_in_c0_eni26_19_tpl_18_q;
    reg [0:0] redist21_sync_together137_aunroll_x_in_c0_eni26_21_tpl_18_q;
    reg [0:0] redist22_sync_together137_aunroll_x_in_c0_eni26_22_tpl_18_q;
    reg [0:0] redist23_sync_together137_aunroll_x_in_c0_eni26_23_tpl_18_q;
    reg [0:0] redist24_sync_together137_aunroll_x_in_c0_eni26_24_tpl_18_q;
    reg [0:0] redist25_sync_together137_aunroll_x_in_c0_eni26_25_tpl_18_q;
    reg [0:0] redist26_sync_together137_aunroll_x_in_c0_eni26_26_tpl_18_q;
    reg [0:0] redist27_sync_together137_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist27_sync_together137_aunroll_x_in_i_valid_2_delay_0;
    reg [0:0] redist28_sync_together137_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist29_sync_together137_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist30_sync_together137_aunroll_x_in_i_valid_5_q;
    reg [0:0] redist31_sync_together137_aunroll_x_in_i_valid_13_q;
    reg [0:0] redist32_sync_together137_aunroll_x_in_i_valid_16_q;
    reg [0:0] redist32_sync_together137_aunroll_x_in_i_valid_16_delay_0;
    reg [0:0] redist32_sync_together137_aunroll_x_in_i_valid_16_delay_1;
    reg [0:0] redist33_sync_together137_aunroll_x_in_i_valid_17_q;
    reg [0:0] redist34_i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_inv_pred_x_q_2_q;
    reg [0:0] redist34_i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_inv_pred_x_q_2_delay_0;
    reg [0:0] redist35_i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_inv_pred_x_q_3_q;
    reg [0:0] redist36_i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_inv_pred_x_q_4_q;
    reg [0:0] redist37_i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_inv_pred_x_q_13_q;
    reg [0:0] redist38_i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_inv_pred_x_q_16_q;
    reg [0:0] redist38_i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_inv_pred_x_q_16_delay_0;
    reg [0:0] redist38_i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_inv_pred_x_q_16_delay_1;
    reg [0:0] redist40_i_llvm_fpga_pop_i1_notcmp5190_pop69_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp5190_pop69_kernel_3mm44_mux_x_q_14_q;
    reg [0:0] redist41_i_llvm_fpga_pop_i1_notcmp46103_pop72_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp46103_pop72_kernel_3mm46_mux_x_q_14_q;
    reg [0:0] redist42_i_llvm_fpga_pop_i1_memdep_phi5_pop2079_pop67_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi5_pop2079_pop67_kernel_3mm40_mux_x_q_14_q;
    reg [8:0] redist43_i_arrayidx556_kernel_3mm0_dupName_2_trunc_sel_x_b_1_q;
    reg [8:0] redist44_i_arrayidx556_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q;
    reg [6:0] redist45_i_arrayidx556_kernel_3mm0_narrow_x_b_2_q;
    reg [6:0] redist45_i_arrayidx556_kernel_3mm0_narrow_x_b_2_delay_0;
    reg [8:0] redist46_i_arrayidx515_kernel_3mm0_dupName_2_trunc_sel_x_b_1_q;
    reg [8:0] redist47_i_arrayidx515_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q;
    reg [6:0] redist48_i_arrayidx515_kernel_3mm0_narrow_x_b_2_q;
    reg [6:0] redist48_i_arrayidx515_kernel_3mm0_narrow_x_b_2_delay_0;
    reg [31:0] redist49_bgTrunc_i_mul56_kernel_3mm17_sel_x_b_1_q;
    reg [0:0] redist50_i_llvm_fpga_pipeline_keep_going38_kernel_3mm6_out_data_out_2_q;
    reg [0:0] redist50_i_llvm_fpga_pipeline_keep_going38_kernel_3mm6_out_data_out_2_delay_0;
    reg [0:0] redist51_i_llvm_fpga_forked_kernel_3mm_b6_forked_kernel_3mm3_out_buffer_out_4_q;
    reg [0:0] redist51_i_llvm_fpga_forked_kernel_3mm_b6_forked_kernel_3mm3_out_buffer_out_4_delay_0;
    reg [0:0] redist51_i_llvm_fpga_forked_kernel_3mm_b6_forked_kernel_3mm3_out_buffer_out_4_delay_1;
    reg [0:0] redist51_i_llvm_fpga_forked_kernel_3mm_b6_forked_kernel_3mm3_out_buffer_out_4_delay_2;
    reg [0:0] redist52_i_llvm_fpga_forked_kernel_3mm_b6_forked_kernel_3mm3_out_buffer_out_6_q;
    reg [0:0] redist52_i_llvm_fpga_forked_kernel_3mm_b6_forked_kernel_3mm3_out_buffer_out_6_delay_0;
    reg [0:0] redist53_i_llvm_fpga_forked_kernel_3mm_b6_forked_kernel_3mm3_out_buffer_out_17_q;
    reg [0:0] redist54_i_llvm_fpga_dummy_thread_kernel_3mm_b6_dummy_kernel_3mm2_out_dummy_out_4_q;
    reg [0:0] redist54_i_llvm_fpga_dummy_thread_kernel_3mm_b6_dummy_kernel_3mm2_out_dummy_out_4_delay_0;
    reg [0:0] redist54_i_llvm_fpga_dummy_thread_kernel_3mm_b6_dummy_kernel_3mm2_out_dummy_out_4_delay_1;
    reg [0:0] redist54_i_llvm_fpga_dummy_thread_kernel_3mm_b6_dummy_kernel_3mm2_out_dummy_out_4_delay_2;
    reg [0:0] redist55_i_kernel_3mm_b6_current_iter_isspec_kernel_3mm5_q_12_q;
    reg [63:0] redist6_sync_together137_aunroll_x_in_c0_eni26_2_tpl_4_inputreg0_q;
    reg [63:0] redist7_sync_together137_aunroll_x_in_c0_eni26_3_tpl_4_inputreg0_q;
    reg [31:0] redist8_sync_together137_aunroll_x_in_c0_eni26_4_tpl_17_inputreg0_q;
    reg [31:0] redist8_sync_together137_aunroll_x_in_c0_eni26_4_tpl_17_outputreg0_q;
    wire redist8_sync_together137_aunroll_x_in_c0_eni26_4_tpl_17_mem_reset0;
    wire [31:0] redist8_sync_together137_aunroll_x_in_c0_eni26_4_tpl_17_mem_ia;
    wire [3:0] redist8_sync_together137_aunroll_x_in_c0_eni26_4_tpl_17_mem_aa;
    wire [3:0] redist8_sync_together137_aunroll_x_in_c0_eni26_4_tpl_17_mem_ab;
    wire [31:0] redist8_sync_together137_aunroll_x_in_c0_eni26_4_tpl_17_mem_iq;
    wire [31:0] redist8_sync_together137_aunroll_x_in_c0_eni26_4_tpl_17_mem_q;
    wire [3:0] redist8_sync_together137_aunroll_x_in_c0_eni26_4_tpl_17_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist8_sync_together137_aunroll_x_in_c0_eni26_4_tpl_17_wraddr_i = 4'b1111;
    wire [3:0] redist8_sync_together137_aunroll_x_in_c0_eni26_4_tpl_17_offset_q;
    wire [4:0] redist8_sync_together137_aunroll_x_in_c0_eni26_4_tpl_17_rdcnt_a;
    wire [4:0] redist8_sync_together137_aunroll_x_in_c0_eni26_4_tpl_17_rdcnt_b;
    logic [4:0] redist8_sync_together137_aunroll_x_in_c0_eni26_4_tpl_17_rdcnt_o;
    wire [4:0] redist8_sync_together137_aunroll_x_in_c0_eni26_4_tpl_17_rdcnt_q;
    reg [63:0] redist14_sync_together137_aunroll_x_in_c0_eni26_14_tpl_4_inputreg0_q;
    reg [31:0] redist20_sync_together137_aunroll_x_in_c0_eni26_20_tpl_18_inputreg0_q;
    reg [31:0] redist20_sync_together137_aunroll_x_in_c0_eni26_20_tpl_18_outputreg0_q;
    wire redist20_sync_together137_aunroll_x_in_c0_eni26_20_tpl_18_mem_reset0;
    wire [31:0] redist20_sync_together137_aunroll_x_in_c0_eni26_20_tpl_18_mem_ia;
    wire [3:0] redist20_sync_together137_aunroll_x_in_c0_eni26_20_tpl_18_mem_aa;
    wire [3:0] redist20_sync_together137_aunroll_x_in_c0_eni26_20_tpl_18_mem_ab;
    wire [31:0] redist20_sync_together137_aunroll_x_in_c0_eni26_20_tpl_18_mem_iq;
    wire [31:0] redist20_sync_together137_aunroll_x_in_c0_eni26_20_tpl_18_mem_q;
    wire [3:0] redist20_sync_together137_aunroll_x_in_c0_eni26_20_tpl_18_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist20_sync_together137_aunroll_x_in_c0_eni26_20_tpl_18_wraddr_i = 4'b1111;
    wire [3:0] redist20_sync_together137_aunroll_x_in_c0_eni26_20_tpl_18_offset_q;
    wire [4:0] redist20_sync_together137_aunroll_x_in_c0_eni26_20_tpl_18_rdcnt_a;
    wire [4:0] redist20_sync_together137_aunroll_x_in_c0_eni26_20_tpl_18_rdcnt_b;
    logic [4:0] redist20_sync_together137_aunroll_x_in_c0_eni26_20_tpl_18_rdcnt_o;
    wire [4:0] redist20_sync_together137_aunroll_x_in_c0_eni26_20_tpl_18_rdcnt_q;
    reg [63:0] redist39_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm0_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm50_mux_x_q_14_inputreg0_q;
    reg [63:0] redist39_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm0_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm50_mux_x_q_14_outputreg0_q;
    wire redist39_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm0_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm50_mux_x_q_14_mem_reset0;
    wire [63:0] redist39_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm0_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm50_mux_x_q_14_mem_ia;
    wire [3:0] redist39_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm0_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm50_mux_x_q_14_mem_aa;
    wire [3:0] redist39_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm0_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm50_mux_x_q_14_mem_ab;
    wire [63:0] redist39_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm0_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm50_mux_x_q_14_mem_iq;
    wire [63:0] redist39_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm0_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm50_mux_x_q_14_mem_q;
    wire [3:0] redist39_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm0_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm50_mux_x_q_14_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist39_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm0_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm50_mux_x_q_14_wraddr_i = 4'b1111;
    wire [3:0] redist39_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm0_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm50_mux_x_q_14_offset_q;
    wire [4:0] redist39_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm0_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm50_mux_x_q_14_rdcnt_a;
    wire [4:0] redist39_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm0_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm50_mux_x_q_14_rdcnt_b;
    logic [4:0] redist39_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm0_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm50_mux_x_q_14_rdcnt_o;
    wire [4:0] redist39_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm0_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm50_mux_x_q_14_rdcnt_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist27_sync_together137_aunroll_x_in_i_valid_2(DELAY,442)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist27_sync_together137_aunroll_x_in_i_valid_2_delay_0 <= '0;
        end
        else
        begin
            redist27_sync_together137_aunroll_x_in_i_valid_2_delay_0 <= $unsigned(in_i_valid);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist27_sync_together137_aunroll_x_in_i_valid_2_q <= redist27_sync_together137_aunroll_x_in_i_valid_2_delay_0;
        end
    end

    // redist28_sync_together137_aunroll_x_in_i_valid_3(DELAY,443)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist28_sync_together137_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist28_sync_together137_aunroll_x_in_i_valid_3_q <= $unsigned(redist27_sync_together137_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist29_sync_together137_aunroll_x_in_i_valid_4(DELAY,444)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist29_sync_together137_aunroll_x_in_i_valid_4_q <= $unsigned(redist28_sync_together137_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist30_sync_together137_aunroll_x_in_i_valid_5(DELAY,445)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist30_sync_together137_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist30_sync_together137_aunroll_x_in_i_valid_5_q <= $unsigned(redist29_sync_together137_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg7(REG,238)@5 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist30_sync_together137_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_c_i7_03_x(CONSTANT,173)
    assign i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_c_i7_03_x_q = $unsigned(7'b0000000);

    // valid_fanout_reg2(REG,233)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist28_sync_together137_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg20(REG,251)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg20_q <= $unsigned(redist28_sync_together137_aunroll_x_in_i_valid_3_q);
        end
    end

    // c_i5_8129(CONSTANT,68)
    assign c_i5_8129_q = $unsigned(5'b01000);

    // i_arrayidx515_kernel_3mm0_mult_multconst_x(CONSTANT,128)
    assign i_arrayidx515_kernel_3mm0_mult_multconst_x_q = $unsigned(3'b000);

    // c_i5_1131(CONSTANT,67)
    assign c_i5_1131_q = $unsigned(5'b11111);

    // i_fpga_indvars_iv_next9_kernel_3mm30(ADD,81)@4
    assign i_fpga_indvars_iv_next9_kernel_3mm30_a = {1'b0, i_llvm_fpga_pop_i5_fpga_indvars_iv8_pop60_kernel_3mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv8_pop60_kernel_3mm21_mux_x_q};
    assign i_fpga_indvars_iv_next9_kernel_3mm30_b = {1'b0, c_i5_1131_q};
    assign i_fpga_indvars_iv_next9_kernel_3mm30_o = $unsigned(i_fpga_indvars_iv_next9_kernel_3mm30_a) + $unsigned(i_fpga_indvars_iv_next9_kernel_3mm30_b);
    assign i_fpga_indvars_iv_next9_kernel_3mm30_q = i_fpga_indvars_iv_next9_kernel_3mm30_o[5:0];

    // bgTrunc_i_fpga_indvars_iv_next9_kernel_3mm30_sel_x(BITSELECT,102)@4
    assign bgTrunc_i_fpga_indvars_iv_next9_kernel_3mm30_sel_x_b = i_fpga_indvars_iv_next9_kernel_3mm30_q[4:0];

    // i_llvm_fpga_push_i5_fpga_indvars_iv8_push60_kernel_3mm0_element_extension2_x(BITJOIN,216)@4
    assign i_llvm_fpga_push_i5_fpga_indvars_iv8_push60_kernel_3mm0_element_extension2_x_q = {i_arrayidx515_kernel_3mm0_mult_multconst_x_q, bgTrunc_i_fpga_indvars_iv_next9_kernel_3mm30_sel_x_b};

    // i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_inv_pred_x(LOGICAL,176)@1
    assign i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_inv_pred_x_q = ~ (GND_q);

    // valid_fanout_reg22(REG,253)@0 + 1
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

    // valid_fanout_reg21(REG,252)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg21_q <= $unsigned(redist27_sync_together137_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i5_fpga_indvars_iv8_push60_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv8_push60_kernel_3mm1_x(FIFODELAY,217)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i5_fpga_indvars_iv8_push60_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv8_push60_kernel_3mm1_x_i_stall = ~ (valid_fanout_reg22_q & i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_inv_pred_x_q);
    assign i_llvm_fpga_push_i5_fpga_indvars_iv8_push60_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv8_push60_kernel_3mm1_x_i_valid = valid_fanout_reg21_q & redist34_i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i5_fpga_indvars_iv8_push60_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv8_push60_kernel_3mm1_x_i_data = i_llvm_fpga_push_i5_fpga_indvars_iv8_push60_kernel_3mm0_element_extension2_x_q;
    assign i_llvm_fpga_push_i5_fpga_indvars_iv8_push60_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv8_push60_kernel_3mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i5_fpga_indvars_iv8_push60_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv8_push60_kernel_3mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i5_fpga_indvars_iv8_push60_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv8_push60_kernel_3mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i5_fpga_indvars_iv8_push60_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv8_push60_kernel_3mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i5_fpga_indvars_iv8_push60_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv8_push60_kernel_3mm1_x (
        .i_valid(i_llvm_fpga_push_i5_fpga_indvars_iv8_push60_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv8_push60_kernel_3mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i5_fpga_indvars_iv8_push60_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv8_push60_kernel_3mm1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i5_fpga_indvars_iv8_push60_kernel_3mm0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i5_fpga_indvars_iv8_push60_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv8_push60_kernel_3mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i5_fpga_indvars_iv8_push60_kernel_3mm0_adapt_scalar_trunc4_sel_x(BITSELECT,219)@4
    assign i_llvm_fpga_push_i5_fpga_indvars_iv8_push60_kernel_3mm0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i5_fpga_indvars_iv8_push60_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv8_push60_kernel_3mm1_x_o_data[4:0];

    // i_llvm_fpga_pop_i5_fpga_indvars_iv8_pop60_kernel_3mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv8_pop60_kernel_3mm21_mux_x(MUX,168)@4
    assign i_llvm_fpga_pop_i5_fpga_indvars_iv8_pop60_kernel_3mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv8_pop60_kernel_3mm21_mux_x_s = redist51_i_llvm_fpga_forked_kernel_3mm_b6_forked_kernel_3mm3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i5_fpga_indvars_iv8_pop60_kernel_3mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv8_pop60_kernel_3mm21_mux_x_s or i_llvm_fpga_push_i5_fpga_indvars_iv8_push60_kernel_3mm0_adapt_scalar_trunc4_sel_x_b or c_i5_8129_q)
    begin
        unique case (i_llvm_fpga_pop_i5_fpga_indvars_iv8_pop60_kernel_3mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv8_pop60_kernel_3mm21_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i5_fpga_indvars_iv8_pop60_kernel_3mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv8_pop60_kernel_3mm21_mux_x_q = i_llvm_fpga_push_i5_fpga_indvars_iv8_push60_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i5_fpga_indvars_iv8_pop60_kernel_3mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv8_pop60_kernel_3mm21_mux_x_q = c_i5_8129_q;
            default : i_llvm_fpga_pop_i5_fpga_indvars_iv8_pop60_kernel_3mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv8_pop60_kernel_3mm21_mux_x_q = 5'b0;
        endcase
    end

    // i_exitcond10_kernel_3mm22_cmp_nsign(LOGICAL,297)@4
    assign i_exitcond10_kernel_3mm22_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i5_fpga_indvars_iv8_pop60_kernel_3mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv8_pop60_kernel_3mm21_mux_x_q[4:4]));

    // i_llvm_fpga_push_i1_notexitcond39_kernel_3mm29(BLACKBOX,94)@4
    // in in_empty_in@20000000
    // out out_feedback_out_8@20000000
    // out out_feedback_valid_out_8@20000000
    kernel_3mm_i_llvm_fpga_push_i1_notexitcond39_0 thei_llvm_fpga_push_i1_notexitcond39_kernel_3mm29 (
        .in_almost_empty_in(GND_q),
        .in_data_in(i_exitcond10_kernel_3mm22_cmp_nsign_q),
        .in_empty_in(GND_q),
        .in_feedback_stall_in_8(i_llvm_fpga_pipeline_keep_going38_kernel_3mm6_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_data_out(),
        .out_feedback_out_8(i_llvm_fpga_push_i1_notexitcond39_kernel_3mm29_out_feedback_out_8),
        .out_feedback_valid_out_8(i_llvm_fpga_push_i1_notexitcond39_kernel_3mm29_out_feedback_valid_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_dummy_thread_kernel_3mm_b6_dummy_kernel_3mm2(BLACKBOX,89)@0
    // in in_stall_in@20000000
    kernel_3mm_i_llvm_fpga_dummy_thread_b6_dummy_kernel_3mm0 thei_llvm_fpga_dummy_thread_kernel_3mm_b6_dummy_kernel_3mm2 (
        .in_dummy_in(in_dummy_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dummy_out(i_llvm_fpga_dummy_thread_kernel_3mm_b6_dummy_kernel_3mm2_out_dummy_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist54_i_llvm_fpga_dummy_thread_kernel_3mm_b6_dummy_kernel_3mm2_out_dummy_out_4(DELAY,469)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist54_i_llvm_fpga_dummy_thread_kernel_3mm_b6_dummy_kernel_3mm2_out_dummy_out_4_delay_0 <= $unsigned(i_llvm_fpga_dummy_thread_kernel_3mm_b6_dummy_kernel_3mm2_out_dummy_out);
            redist54_i_llvm_fpga_dummy_thread_kernel_3mm_b6_dummy_kernel_3mm2_out_dummy_out_4_delay_1 <= redist54_i_llvm_fpga_dummy_thread_kernel_3mm_b6_dummy_kernel_3mm2_out_dummy_out_4_delay_0;
            redist54_i_llvm_fpga_dummy_thread_kernel_3mm_b6_dummy_kernel_3mm2_out_dummy_out_4_delay_2 <= redist54_i_llvm_fpga_dummy_thread_kernel_3mm_b6_dummy_kernel_3mm2_out_dummy_out_4_delay_1;
            redist54_i_llvm_fpga_dummy_thread_kernel_3mm_b6_dummy_kernel_3mm2_out_dummy_out_4_q <= redist54_i_llvm_fpga_dummy_thread_kernel_3mm_b6_dummy_kernel_3mm2_out_dummy_out_4_delay_2;
        end
    end

    // i_llvm_fpga_forked_kernel_3mm_b6_forked_kernel_3mm3(BLACKBOX,90)@0
    // in in_stall_in@20000000
    kernel_3mm_i_llvm_fpga_forked_b6_forked_kernel_3mm0 thei_llvm_fpga_forked_kernel_3mm_b6_forked_kernel_3mm3 (
        .in_buffer_in(in_buffer_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_buffer_out(i_llvm_fpga_forked_kernel_3mm_b6_forked_kernel_3mm3_out_buffer_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist51_i_llvm_fpga_forked_kernel_3mm_b6_forked_kernel_3mm3_out_buffer_out_4(DELAY,466)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist51_i_llvm_fpga_forked_kernel_3mm_b6_forked_kernel_3mm3_out_buffer_out_4_delay_0 <= $unsigned(i_llvm_fpga_forked_kernel_3mm_b6_forked_kernel_3mm3_out_buffer_out);
            redist51_i_llvm_fpga_forked_kernel_3mm_b6_forked_kernel_3mm3_out_buffer_out_4_delay_1 <= redist51_i_llvm_fpga_forked_kernel_3mm_b6_forked_kernel_3mm3_out_buffer_out_4_delay_0;
            redist51_i_llvm_fpga_forked_kernel_3mm_b6_forked_kernel_3mm3_out_buffer_out_4_delay_2 <= redist51_i_llvm_fpga_forked_kernel_3mm_b6_forked_kernel_3mm3_out_buffer_out_4_delay_1;
            redist51_i_llvm_fpga_forked_kernel_3mm_b6_forked_kernel_3mm3_out_buffer_out_4_q <= redist51_i_llvm_fpga_forked_kernel_3mm_b6_forked_kernel_3mm3_out_buffer_out_4_delay_2;
        end
    end

    // i_llvm_fpga_pipeline_keep_going38_kernel_3mm6(BLACKBOX,93)@4
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_dummy_out@20000000
    // out out_pipeline_forked_out@20000000
    // out out_pipeline_valid_out@20000000
    kernel_3mm_i_llvm_fpga_pipeline_keep_going38_0 thei_llvm_fpga_pipeline_keep_going38_kernel_3mm6 (
        .in_data_in(redist51_i_llvm_fpga_forked_kernel_3mm_b6_forked_kernel_3mm3_out_buffer_out_4_q),
        .in_dummy_in(redist54_i_llvm_fpga_dummy_thread_kernel_3mm_b6_dummy_kernel_3mm2_out_dummy_out_4_q),
        .in_forked_in(redist51_i_llvm_fpga_forked_kernel_3mm_b6_forked_kernel_3mm3_out_buffer_out_4_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond39_kernel_3mm29_out_feedback_out_8),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond39_kernel_3mm29_out_feedback_valid_out_8),
        .in_pipeline_stall_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going38_kernel_3mm6_out_data_out),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going38_kernel_3mm6_out_exiting_valid_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going38_kernel_3mm6_out_not_exitcond_stall_out),
        .out_pipeline_dummy_out(i_llvm_fpga_pipeline_keep_going38_kernel_3mm6_out_pipeline_dummy_out),
        .out_pipeline_forked_out(i_llvm_fpga_pipeline_keep_going38_kernel_3mm6_out_pipeline_forked_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going38_kernel_3mm6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist50_i_llvm_fpga_pipeline_keep_going38_kernel_3mm6_out_data_out_2(DELAY,465)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist50_i_llvm_fpga_pipeline_keep_going38_kernel_3mm6_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pipeline_keep_going38_kernel_3mm6_out_data_out);
            redist50_i_llvm_fpga_pipeline_keep_going38_kernel_3mm6_out_data_out_2_q <= redist50_i_llvm_fpga_pipeline_keep_going38_kernel_3mm6_out_data_out_2_delay_0;
        end
    end

    // i_kernel_3mm_b6_next_iter_isreal_kernel_3mm7(LOGICAL,88)@6
    assign i_kernel_3mm_b6_next_iter_isreal_kernel_3mm7_q = i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b6_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b6_current_iter_isreal_kernel_3mm4_mux_x_q & redist50_i_llvm_fpga_pipeline_keep_going38_kernel_3mm6_out_data_out_2_q;

    // i_llvm_fpga_push_i1_kernel_3mm_b6_next_iter_isreal_push_kernel_3mm0_element_extension2_x(BITJOIN,180)@6
    assign i_llvm_fpga_push_i1_kernel_3mm_b6_next_iter_isreal_push_kernel_3mm0_element_extension2_x_q = {i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_c_i7_03_x_q, i_kernel_3mm_b6_next_iter_isreal_kernel_3mm7_q};

    // redist34_i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_inv_pred_x_q_2(DELAY,449)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist34_i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_inv_pred_x_q_2_delay_0 <= $unsigned(i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_inv_pred_x_q);
            redist34_i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_inv_pred_x_q_2_q <= redist34_i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_inv_pred_x_q_2_delay_0;
        end
    end

    // valid_fanout_reg4(REG,235)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist27_sync_together137_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist35_i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_inv_pred_x_q_3(DELAY,450)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist35_i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_inv_pred_x_q_3_q <= $unsigned(redist34_i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_inv_pred_x_q_2_q);
        end
    end

    // redist36_i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_inv_pred_x_q_4(DELAY,451)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist36_i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_inv_pred_x_q_4_q <= $unsigned(redist35_i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_inv_pred_x_q_3_q);
        end
    end

    // valid_fanout_reg3(REG,234)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist29_sync_together137_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i1_kernel_3mm_b6_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b6_next_iter_isreal_push_kernel_3mm1_x(FIFODELAY,181)@3 + 1
    // in i_valid@5
    // in i_write_pred@5
    // in i_data@6
    // out o_data@6
    assign i_llvm_fpga_push_i1_kernel_3mm_b6_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b6_next_iter_isreal_push_kernel_3mm1_x_i_stall = ~ (valid_fanout_reg4_q & redist34_i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_inv_pred_x_q_2_q);
    assign i_llvm_fpga_push_i1_kernel_3mm_b6_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b6_next_iter_isreal_push_kernel_3mm1_x_i_valid = valid_fanout_reg3_q & redist36_i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_inv_pred_x_q_4_q;
    assign i_llvm_fpga_push_i1_kernel_3mm_b6_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b6_next_iter_isreal_push_kernel_3mm1_x_i_data = i_llvm_fpga_push_i1_kernel_3mm_b6_next_iter_isreal_push_kernel_3mm0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_kernel_3mm_b6_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b6_next_iter_isreal_push_kernel_3mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_kernel_3mm_b6_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b6_next_iter_isreal_push_kernel_3mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_kernel_3mm_b6_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b6_next_iter_isreal_push_kernel_3mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_kernel_3mm_b6_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b6_next_iter_isreal_push_kernel_3mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_kernel_3mm_b6_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b6_next_iter_isreal_push_kernel_3mm1_x (
        .i_valid(i_llvm_fpga_push_i1_kernel_3mm_b6_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b6_next_iter_isreal_push_kernel_3mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_kernel_3mm_b6_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b6_next_iter_isreal_push_kernel_3mm1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_kernel_3mm_b6_next_iter_isreal_push_kernel_3mm0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_kernel_3mm_b6_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b6_next_iter_isreal_push_kernel_3mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_kernel_3mm_b6_next_iter_isreal_push_kernel_3mm0_adapt_scalar_trunc4_sel_x(BITSELECT,183)@6
    assign i_llvm_fpga_push_i1_kernel_3mm_b6_next_iter_isreal_push_kernel_3mm0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_kernel_3mm_b6_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b6_next_iter_isreal_push_kernel_3mm1_x_o_data[0:0];

    // redist52_i_llvm_fpga_forked_kernel_3mm_b6_forked_kernel_3mm3_out_buffer_out_6(DELAY,467)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist52_i_llvm_fpga_forked_kernel_3mm_b6_forked_kernel_3mm3_out_buffer_out_6_delay_0 <= $unsigned(redist51_i_llvm_fpga_forked_kernel_3mm_b6_forked_kernel_3mm3_out_buffer_out_4_q);
            redist52_i_llvm_fpga_forked_kernel_3mm_b6_forked_kernel_3mm3_out_buffer_out_6_q <= redist52_i_llvm_fpga_forked_kernel_3mm_b6_forked_kernel_3mm3_out_buffer_out_6_delay_0;
        end
    end

    // i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b6_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b6_current_iter_isreal_kernel_3mm4_mux_x(MUX,160)@6
    assign i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b6_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b6_current_iter_isreal_kernel_3mm4_mux_x_s = redist52_i_llvm_fpga_forked_kernel_3mm_b6_forked_kernel_3mm3_out_buffer_out_6_q;
    always @(i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b6_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b6_current_iter_isreal_kernel_3mm4_mux_x_s or i_llvm_fpga_push_i1_kernel_3mm_b6_next_iter_isreal_push_kernel_3mm0_adapt_scalar_trunc4_sel_x_b or VCC_q)
    begin
        unique case (i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b6_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b6_current_iter_isreal_kernel_3mm4_mux_x_s)
            1'b0 : i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b6_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b6_current_iter_isreal_kernel_3mm4_mux_x_q = i_llvm_fpga_push_i1_kernel_3mm_b6_next_iter_isreal_push_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b6_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b6_current_iter_isreal_kernel_3mm4_mux_x_q = VCC_q;
            default : i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b6_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b6_current_iter_isreal_kernel_3mm4_mux_x_q = 1'b0;
        endcase
    end

    // i_kernel_3mm_b6_current_iter_isspec_kernel_3mm5(LOGICAL,87)@6
    assign i_kernel_3mm_b6_current_iter_isspec_kernel_3mm5_q = i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b6_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b6_current_iter_isreal_kernel_3mm4_mux_x_q ^ VCC_q;

    // c_kernel_3mm_C_local_pmem(CONSTANT,69)
    assign c_kernel_3mm_C_local_pmem_q = $unsigned(64'b0100000001000010000000000000000000000000000000000000000000000000);

    // i_arrayidx515_kernel_3mm0_upper_bits_x_merged_bit_select(BITSELECT,410)@5
    assign i_arrayidx515_kernel_3mm0_upper_bits_x_merged_bit_select_b = c_kernel_3mm_C_local_pmem_q[63:9];
    assign i_arrayidx515_kernel_3mm0_upper_bits_x_merged_bit_select_c = c_kernel_3mm_C_local_pmem_q[8:0];

    // redist1_i_arrayidx515_kernel_3mm0_upper_bits_x_merged_bit_select_b_1(DELAY,416)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_i_arrayidx515_kernel_3mm0_upper_bits_x_merged_bit_select_b_1_q <= $unsigned(i_arrayidx515_kernel_3mm0_upper_bits_x_merged_bit_select_b);
        end
    end

    // c_i32_0127(CONSTANT,65)
    assign c_i32_0127_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i32_1128(CONSTANT,66)
    assign c_i32_1128_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc59_kernel_3mm20(ADD,86)@4
    assign i_inc59_kernel_3mm20_a = {1'b0, i_llvm_fpga_pop_i32_k_153_pop62_kernel_3mm0_i_llvm_fpga_pop_i32_k_153_pop62_kernel_3mm9_mux_x_q};
    assign i_inc59_kernel_3mm20_b = {1'b0, c_i32_1128_q};
    assign i_inc59_kernel_3mm20_o = $unsigned(i_inc59_kernel_3mm20_a) + $unsigned(i_inc59_kernel_3mm20_b);
    assign i_inc59_kernel_3mm20_q = i_inc59_kernel_3mm20_o[32:0];

    // bgTrunc_i_inc59_kernel_3mm20_sel_x(BITSELECT,103)@4
    assign bgTrunc_i_inc59_kernel_3mm20_sel_x_b = i_inc59_kernel_3mm20_q[31:0];

    // valid_fanout_reg17(REG,248)@0 + 1
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

    // valid_fanout_reg16(REG,247)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist27_sync_together137_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i32_k_153_push62_kernel_3mm0_i_llvm_fpga_push_i32_k_153_push62_kernel_3mm1_x(FIFODELAY,208)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i32_k_153_push62_kernel_3mm0_i_llvm_fpga_push_i32_k_153_push62_kernel_3mm1_x_i_stall = ~ (valid_fanout_reg17_q & i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_inv_pred_x_q);
    assign i_llvm_fpga_push_i32_k_153_push62_kernel_3mm0_i_llvm_fpga_push_i32_k_153_push62_kernel_3mm1_x_i_valid = valid_fanout_reg16_q & redist34_i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i32_k_153_push62_kernel_3mm0_i_llvm_fpga_push_i32_k_153_push62_kernel_3mm1_x_i_data = bgTrunc_i_inc59_kernel_3mm20_sel_x_b;
    assign i_llvm_fpga_push_i32_k_153_push62_kernel_3mm0_i_llvm_fpga_push_i32_k_153_push62_kernel_3mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_k_153_push62_kernel_3mm0_i_llvm_fpga_push_i32_k_153_push62_kernel_3mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_k_153_push62_kernel_3mm0_i_llvm_fpga_push_i32_k_153_push62_kernel_3mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_k_153_push62_kernel_3mm0_i_llvm_fpga_push_i32_k_153_push62_kernel_3mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_k_153_push62_kernel_3mm0_i_llvm_fpga_push_i32_k_153_push62_kernel_3mm1_x (
        .i_valid(i_llvm_fpga_push_i32_k_153_push62_kernel_3mm0_i_llvm_fpga_push_i32_k_153_push62_kernel_3mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_k_153_push62_kernel_3mm0_i_llvm_fpga_push_i32_k_153_push62_kernel_3mm1_x_i_stall_bitsignaltemp),
        .i_data(bgTrunc_i_inc59_kernel_3mm20_sel_x_b),
        .o_data(i_llvm_fpga_push_i32_k_153_push62_kernel_3mm0_i_llvm_fpga_push_i32_k_153_push62_kernel_3mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_k_153_pop62_kernel_3mm0_i_llvm_fpga_pop_i32_k_153_pop62_kernel_3mm9_mux_x(MUX,166)@4
    assign i_llvm_fpga_pop_i32_k_153_pop62_kernel_3mm0_i_llvm_fpga_pop_i32_k_153_pop62_kernel_3mm9_mux_x_s = redist51_i_llvm_fpga_forked_kernel_3mm_b6_forked_kernel_3mm3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i32_k_153_pop62_kernel_3mm0_i_llvm_fpga_pop_i32_k_153_pop62_kernel_3mm9_mux_x_s or i_llvm_fpga_push_i32_k_153_push62_kernel_3mm0_i_llvm_fpga_push_i32_k_153_push62_kernel_3mm1_x_o_data or c_i32_0127_q)
    begin
        unique case (i_llvm_fpga_pop_i32_k_153_pop62_kernel_3mm0_i_llvm_fpga_pop_i32_k_153_pop62_kernel_3mm9_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_k_153_pop62_kernel_3mm0_i_llvm_fpga_pop_i32_k_153_pop62_kernel_3mm9_mux_x_q = i_llvm_fpga_push_i32_k_153_push62_kernel_3mm0_i_llvm_fpga_push_i32_k_153_push62_kernel_3mm1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_k_153_pop62_kernel_3mm0_i_llvm_fpga_pop_i32_k_153_pop62_kernel_3mm9_mux_x_q = c_i32_0127_q;
            default : i_llvm_fpga_pop_i32_k_153_pop62_kernel_3mm0_i_llvm_fpga_pop_i32_k_153_pop62_kernel_3mm9_mux_x_q = 32'b0;
        endcase
    end

    // i_idxprom50_kernel_3mm10_sel_x(BITSELECT,159)@4
    assign i_idxprom50_kernel_3mm10_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_k_153_pop62_kernel_3mm0_i_llvm_fpga_pop_i32_k_153_pop62_kernel_3mm9_mux_x_q[31:0]};

    // i_idxprom50_kernel_3mm10_vt_select_31(BITSELECT,85)@4
    assign i_idxprom50_kernel_3mm10_vt_select_31_b = i_idxprom50_kernel_3mm10_sel_x_b[31:0];

    // i_idxprom50_kernel_3mm10_vt_join(BITJOIN,84)@4
    assign i_idxprom50_kernel_3mm10_vt_join_q = {c_i32_0127_q, i_idxprom50_kernel_3mm10_vt_select_31_b};

    // i_arrayidx515_kernel_3mm0_dupName_3_trunc_sel_x(BITSELECT,133)@4
    assign i_arrayidx515_kernel_3mm0_dupName_3_trunc_sel_x_b = i_idxprom50_kernel_3mm10_vt_join_q[8:0];

    // i_arrayidx515_kernel_3mm0_narrow_x(BITSELECT,116)@4
    assign i_arrayidx515_kernel_3mm0_narrow_x_b = i_arrayidx515_kernel_3mm0_dupName_3_trunc_sel_x_b[6:0];

    // redist48_i_arrayidx515_kernel_3mm0_narrow_x_b_2(DELAY,463)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist48_i_arrayidx515_kernel_3mm0_narrow_x_b_2_delay_0 <= $unsigned(i_arrayidx515_kernel_3mm0_narrow_x_b);
            redist48_i_arrayidx515_kernel_3mm0_narrow_x_b_2_q <= redist48_i_arrayidx515_kernel_3mm0_narrow_x_b_2_delay_0;
        end
    end

    // i_arrayidx515_kernel_3mm0_shift_join_x(BITJOIN,117)@6
    assign i_arrayidx515_kernel_3mm0_shift_join_x_q = {redist48_i_arrayidx515_kernel_3mm0_narrow_x_b_2_q, i_arrayidx515_kernel_3mm12_vt_const_1_q};

    // redist6_sync_together137_aunroll_x_in_c0_eni26_2_tpl_4_inputreg0(DELAY,471)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_sync_together137_aunroll_x_in_c0_eni26_2_tpl_4_inputreg0_q <= $unsigned(in_c0_eni26_2_tpl);
        end
    end

    // redist6_sync_together137_aunroll_x_in_c0_eni26_2_tpl_4(DELAY,421)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_sync_together137_aunroll_x_in_c0_eni26_2_tpl_4_delay_0 <= $unsigned(redist6_sync_together137_aunroll_x_in_c0_eni26_2_tpl_4_inputreg0_q);
            redist6_sync_together137_aunroll_x_in_c0_eni26_2_tpl_4_delay_1 <= redist6_sync_together137_aunroll_x_in_c0_eni26_2_tpl_4_delay_0;
            redist6_sync_together137_aunroll_x_in_c0_eni26_2_tpl_4_q <= redist6_sync_together137_aunroll_x_in_c0_eni26_2_tpl_4_delay_1;
        end
    end

    // valid_fanout_reg15(REG,246)@0 + 1
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

    // valid_fanout_reg14(REG,245)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist27_sync_together137_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i64_idxprom98_push70_kernel_3mm0_i_llvm_fpga_push_i64_idxprom98_push70_kernel_3mm1_x(FIFODELAY,223)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i64_idxprom98_push70_kernel_3mm0_i_llvm_fpga_push_i64_idxprom98_push70_kernel_3mm1_x_i_stall = ~ (valid_fanout_reg15_q & i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_inv_pred_x_q);
    assign i_llvm_fpga_push_i64_idxprom98_push70_kernel_3mm0_i_llvm_fpga_push_i64_idxprom98_push70_kernel_3mm1_x_i_valid = valid_fanout_reg14_q & redist34_i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i64_idxprom98_push70_kernel_3mm0_i_llvm_fpga_push_i64_idxprom98_push70_kernel_3mm1_x_i_data = i_llvm_fpga_pop_i64_idxprom98_pop70_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom98_pop70_kernel_3mm11_mux_x_q;
    assign i_llvm_fpga_push_i64_idxprom98_push70_kernel_3mm0_i_llvm_fpga_push_i64_idxprom98_push70_kernel_3mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i64_idxprom98_push70_kernel_3mm0_i_llvm_fpga_push_i64_idxprom98_push70_kernel_3mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i64_idxprom98_push70_kernel_3mm0_i_llvm_fpga_push_i64_idxprom98_push70_kernel_3mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i64_idxprom98_push70_kernel_3mm0_i_llvm_fpga_push_i64_idxprom98_push70_kernel_3mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i64_idxprom98_push70_kernel_3mm0_i_llvm_fpga_push_i64_idxprom98_push70_kernel_3mm1_x (
        .i_valid(i_llvm_fpga_push_i64_idxprom98_push70_kernel_3mm0_i_llvm_fpga_push_i64_idxprom98_push70_kernel_3mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i64_idxprom98_push70_kernel_3mm0_i_llvm_fpga_push_i64_idxprom98_push70_kernel_3mm1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i64_idxprom98_pop70_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom98_pop70_kernel_3mm11_mux_x_q),
        .o_data(i_llvm_fpga_push_i64_idxprom98_push70_kernel_3mm0_i_llvm_fpga_push_i64_idxprom98_push70_kernel_3mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i64_idxprom98_pop70_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom98_pop70_kernel_3mm11_mux_x(MUX,170)@4
    assign i_llvm_fpga_pop_i64_idxprom98_pop70_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom98_pop70_kernel_3mm11_mux_x_s = redist51_i_llvm_fpga_forked_kernel_3mm_b6_forked_kernel_3mm3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i64_idxprom98_pop70_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom98_pop70_kernel_3mm11_mux_x_s or i_llvm_fpga_push_i64_idxprom98_push70_kernel_3mm0_i_llvm_fpga_push_i64_idxprom98_push70_kernel_3mm1_x_o_data or redist6_sync_together137_aunroll_x_in_c0_eni26_2_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i64_idxprom98_pop70_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom98_pop70_kernel_3mm11_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i64_idxprom98_pop70_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom98_pop70_kernel_3mm11_mux_x_q = i_llvm_fpga_push_i64_idxprom98_push70_kernel_3mm0_i_llvm_fpga_push_i64_idxprom98_push70_kernel_3mm1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i64_idxprom98_pop70_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom98_pop70_kernel_3mm11_mux_x_q = redist6_sync_together137_aunroll_x_in_c0_eni26_2_tpl_4_q;
            default : i_llvm_fpga_pop_i64_idxprom98_pop70_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom98_pop70_kernel_3mm11_mux_x_q = 64'b0;
        endcase
    end

    // i_arrayidx515_kernel_3mm0_dupName_0_trunc_sel_x(BITSELECT,130)@4
    assign i_arrayidx515_kernel_3mm0_dupName_0_trunc_sel_x_b = i_llvm_fpga_pop_i64_idxprom98_pop70_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom98_pop70_kernel_3mm11_mux_x_q[8:0];

    // addsumAHighB_uid325_i_arrayidx515_kernel_3mm0_mult_x(ADD,324)@4
    assign addsumAHighB_uid325_i_arrayidx515_kernel_3mm0_mult_x_a = {1'b0, i_arrayidx515_kernel_3mm0_dupName_0_trunc_sel_x_b};
    assign addsumAHighB_uid325_i_arrayidx515_kernel_3mm0_mult_x_b = {3'b000, lowRangeB_uid323_i_arrayidx515_kernel_3mm0_mult_x_merged_bit_select_c};
    assign addsumAHighB_uid325_i_arrayidx515_kernel_3mm0_mult_x_o = $unsigned(addsumAHighB_uid325_i_arrayidx515_kernel_3mm0_mult_x_a) + $unsigned(addsumAHighB_uid325_i_arrayidx515_kernel_3mm0_mult_x_b);
    assign addsumAHighB_uid325_i_arrayidx515_kernel_3mm0_mult_x_q = addsumAHighB_uid325_i_arrayidx515_kernel_3mm0_mult_x_o[9:0];

    // lowRangeB_uid323_i_arrayidx515_kernel_3mm0_mult_x_merged_bit_select(BITSELECT,414)@4
    assign lowRangeB_uid323_i_arrayidx515_kernel_3mm0_mult_x_merged_bit_select_b = i_arrayidx515_kernel_3mm0_dupName_0_trunc_sel_x_b[1:0];
    assign lowRangeB_uid323_i_arrayidx515_kernel_3mm0_mult_x_merged_bit_select_c = i_arrayidx515_kernel_3mm0_dupName_0_trunc_sel_x_b[8:2];

    // add_uid326_i_arrayidx515_kernel_3mm0_mult_x(BITJOIN,325)@4
    assign add_uid326_i_arrayidx515_kernel_3mm0_mult_x_q = {addsumAHighB_uid325_i_arrayidx515_kernel_3mm0_mult_x_q, lowRangeB_uid323_i_arrayidx515_kernel_3mm0_mult_x_merged_bit_select_b};

    // sR_mergedSignalTM_uid331_i_arrayidx515_kernel_3mm0_mult_x(BITJOIN,330)@4
    assign sR_mergedSignalTM_uid331_i_arrayidx515_kernel_3mm0_mult_x_q = {add_uid326_i_arrayidx515_kernel_3mm0_mult_x_q, i_arrayidx515_kernel_3mm0_mult_multconst_x_q};

    // i_arrayidx515_kernel_3mm0_mult_extender_x(BITJOIN,127)@4
    assign i_arrayidx515_kernel_3mm0_mult_extender_x_q = {i_arrayidx515_kernel_3mm0_mult_multconst_x_q, sR_mergedSignalTM_uid331_i_arrayidx515_kernel_3mm0_mult_x_q};

    // i_arrayidx515_kernel_3mm0_dupName_1_trunc_sel_x(BITSELECT,131)@4
    assign i_arrayidx515_kernel_3mm0_dupName_1_trunc_sel_x_b = i_arrayidx515_kernel_3mm0_mult_extender_x_q[8:0];

    // redist47_i_arrayidx515_kernel_3mm0_dupName_1_trunc_sel_x_b_1(DELAY,462)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist47_i_arrayidx515_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx515_kernel_3mm0_dupName_1_trunc_sel_x_b);
        end
    end

    // i_arrayidx515_kernel_3mm0_add_x(ADD,111)@5
    assign i_arrayidx515_kernel_3mm0_add_x_a = {1'b0, i_arrayidx515_kernel_3mm0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx515_kernel_3mm0_add_x_b = {1'b0, redist47_i_arrayidx515_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q};
    assign i_arrayidx515_kernel_3mm0_add_x_o = $unsigned(i_arrayidx515_kernel_3mm0_add_x_a) + $unsigned(i_arrayidx515_kernel_3mm0_add_x_b);
    assign i_arrayidx515_kernel_3mm0_add_x_q = i_arrayidx515_kernel_3mm0_add_x_o[9:0];

    // i_arrayidx515_kernel_3mm0_dupName_2_trunc_sel_x(BITSELECT,132)@5
    assign i_arrayidx515_kernel_3mm0_dupName_2_trunc_sel_x_b = i_arrayidx515_kernel_3mm0_add_x_q[8:0];

    // redist46_i_arrayidx515_kernel_3mm0_dupName_2_trunc_sel_x_b_1(DELAY,461)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist46_i_arrayidx515_kernel_3mm0_dupName_2_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx515_kernel_3mm0_dupName_2_trunc_sel_x_b);
        end
    end

    // i_arrayidx515_kernel_3mm0_dupName_0_add_x(ADD,121)@6
    assign i_arrayidx515_kernel_3mm0_dupName_0_add_x_a = {1'b0, redist46_i_arrayidx515_kernel_3mm0_dupName_2_trunc_sel_x_b_1_q};
    assign i_arrayidx515_kernel_3mm0_dupName_0_add_x_b = {1'b0, i_arrayidx515_kernel_3mm0_shift_join_x_q};
    assign i_arrayidx515_kernel_3mm0_dupName_0_add_x_o = $unsigned(i_arrayidx515_kernel_3mm0_dupName_0_add_x_a) + $unsigned(i_arrayidx515_kernel_3mm0_dupName_0_add_x_b);
    assign i_arrayidx515_kernel_3mm0_dupName_0_add_x_q = i_arrayidx515_kernel_3mm0_dupName_0_add_x_o[9:0];

    // i_arrayidx515_kernel_3mm0_dupName_5_trunc_sel_x(BITSELECT,134)@6
    assign i_arrayidx515_kernel_3mm0_dupName_5_trunc_sel_x_b = i_arrayidx515_kernel_3mm0_dupName_0_add_x_q[8:0];

    // i_arrayidx515_kernel_3mm0_append_upper_bits_x(BITJOIN,112)@6
    assign i_arrayidx515_kernel_3mm0_append_upper_bits_x_q = {redist1_i_arrayidx515_kernel_3mm0_upper_bits_x_merged_bit_select_b_1_q, i_arrayidx515_kernel_3mm0_dupName_5_trunc_sel_x_b};

    // i_arrayidx515_kernel_3mm12_vt_select_63(BITSELECT,76)@6
    assign i_arrayidx515_kernel_3mm12_vt_select_63_b = i_arrayidx515_kernel_3mm0_append_upper_bits_x_q[63:2];

    // i_arrayidx515_kernel_3mm12_vt_const_1(CONSTANT,74)
    assign i_arrayidx515_kernel_3mm12_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx515_kernel_3mm12_vt_join(BITJOIN,75)@6
    assign i_arrayidx515_kernel_3mm12_vt_join_q = {i_arrayidx515_kernel_3mm12_vt_select_63_b, i_arrayidx515_kernel_3mm12_vt_const_1_q};

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_mem_unnamed_kernel_3mm8_kernel_3mm13(BLACKBOX,91)@6
    // out out_o_almost_empty@10
    // out out_o_empty@10
    // out out_o_readdata@10
    // out out_o_stall@10
    // out out_o_valid@10
    // out out_unnamed_kernel_3mm8_kernel_3mm_avm_address@20000000
    // out out_unnamed_kernel_3mm8_kernel_3mm_avm_burstcount@20000000
    // out out_unnamed_kernel_3mm8_kernel_3mm_avm_byteenable@20000000
    // out out_unnamed_kernel_3mm8_kernel_3mm_avm_enable@20000000
    // out out_unnamed_kernel_3mm8_kernel_3mm_avm_read@20000000
    // out out_unnamed_kernel_3mm8_kernel_3mm_avm_write@20000000
    // out out_unnamed_kernel_3mm8_kernel_3mm_avm_writedata@20000000
    kernel_3mm_i_llvm_fpga_mem_unnamed_8_kernel_3mm0 thei_llvm_fpga_mem_unnamed_kernel_3mm8_kernel_3mm13 (
        .in_almost_empty_in(GND_q),
        .in_empty_in(GND_q),
        .in_flush(in_flush),
        .in_i_address(i_arrayidx515_kernel_3mm12_vt_join_q),
        .in_i_predicate(i_kernel_3mm_b6_current_iter_isspec_kernel_3mm5_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg7_q),
        .in_unnamed_kernel_3mm8_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm8_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm8_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm8_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm8_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm8_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm8_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm8_kernel_3mm_avm_writeack),
        .out_o_almost_empty(),
        .out_o_empty(),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_kernel_3mm8_kernel_3mm13_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_kernel_3mm8_kernel_3mm_avm_address(i_llvm_fpga_mem_unnamed_kernel_3mm8_kernel_3mm13_out_unnamed_kernel_3mm8_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm8_kernel_3mm_avm_burstcount(i_llvm_fpga_mem_unnamed_kernel_3mm8_kernel_3mm13_out_unnamed_kernel_3mm8_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm8_kernel_3mm_avm_byteenable(i_llvm_fpga_mem_unnamed_kernel_3mm8_kernel_3mm13_out_unnamed_kernel_3mm8_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm8_kernel_3mm_avm_enable(i_llvm_fpga_mem_unnamed_kernel_3mm8_kernel_3mm13_out_unnamed_kernel_3mm8_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm8_kernel_3mm_avm_read(i_llvm_fpga_mem_unnamed_kernel_3mm8_kernel_3mm13_out_unnamed_kernel_3mm8_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm8_kernel_3mm_avm_write(i_llvm_fpga_mem_unnamed_kernel_3mm8_kernel_3mm13_out_unnamed_kernel_3mm8_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm8_kernel_3mm_avm_writedata(i_llvm_fpga_mem_unnamed_kernel_3mm8_kernel_3mm13_out_unnamed_kernel_3mm8_kernel_3mm_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,72)
    assign out_unnamed_kernel_3mm8_kernel_3mm_avm_address = i_llvm_fpga_mem_unnamed_kernel_3mm8_kernel_3mm13_out_unnamed_kernel_3mm8_kernel_3mm_avm_address;
    assign out_unnamed_kernel_3mm8_kernel_3mm_avm_enable = i_llvm_fpga_mem_unnamed_kernel_3mm8_kernel_3mm13_out_unnamed_kernel_3mm8_kernel_3mm_avm_enable;
    assign out_unnamed_kernel_3mm8_kernel_3mm_avm_read = i_llvm_fpga_mem_unnamed_kernel_3mm8_kernel_3mm13_out_unnamed_kernel_3mm8_kernel_3mm_avm_read;
    assign out_unnamed_kernel_3mm8_kernel_3mm_avm_write = i_llvm_fpga_mem_unnamed_kernel_3mm8_kernel_3mm13_out_unnamed_kernel_3mm8_kernel_3mm_avm_write;
    assign out_unnamed_kernel_3mm8_kernel_3mm_avm_writedata = i_llvm_fpga_mem_unnamed_kernel_3mm8_kernel_3mm13_out_unnamed_kernel_3mm8_kernel_3mm_avm_writedata;
    assign out_unnamed_kernel_3mm8_kernel_3mm_avm_byteenable = i_llvm_fpga_mem_unnamed_kernel_3mm8_kernel_3mm13_out_unnamed_kernel_3mm8_kernel_3mm_avm_byteenable;
    assign out_unnamed_kernel_3mm8_kernel_3mm_avm_burstcount = i_llvm_fpga_mem_unnamed_kernel_3mm8_kernel_3mm13_out_unnamed_kernel_3mm8_kernel_3mm_avm_burstcount;

    // regfree_osync(GPOUT,99)
    assign out_exiting_valid_out = i_llvm_fpga_pipeline_keep_going38_kernel_3mm6_out_exiting_valid_out;

    // valid_fanout_reg9(REG,240)@5 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist30_sync_together137_aunroll_x_in_i_valid_5_q);
        end
    end

    // c_kernel_3mm_D_local_pmem(CONSTANT,70)
    assign c_kernel_3mm_D_local_pmem_q = $unsigned(64'b0100000001000011000000000000000000000000000000000000000000000000);

    // i_arrayidx556_kernel_3mm0_upper_bits_x_merged_bit_select(BITSELECT,411)@5
    assign i_arrayidx556_kernel_3mm0_upper_bits_x_merged_bit_select_b = c_kernel_3mm_D_local_pmem_q[63:9];
    assign i_arrayidx556_kernel_3mm0_upper_bits_x_merged_bit_select_c = c_kernel_3mm_D_local_pmem_q[8:0];

    // redist0_i_arrayidx556_kernel_3mm0_upper_bits_x_merged_bit_select_b_1(DELAY,415)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_i_arrayidx556_kernel_3mm0_upper_bits_x_merged_bit_select_b_1_q <= $unsigned(i_arrayidx556_kernel_3mm0_upper_bits_x_merged_bit_select_b);
        end
    end

    // redist7_sync_together137_aunroll_x_in_c0_eni26_3_tpl_4_inputreg0(DELAY,472)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_sync_together137_aunroll_x_in_c0_eni26_3_tpl_4_inputreg0_q <= $unsigned(in_c0_eni26_3_tpl);
        end
    end

    // redist7_sync_together137_aunroll_x_in_c0_eni26_3_tpl_4(DELAY,422)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_sync_together137_aunroll_x_in_c0_eni26_3_tpl_4_delay_0 <= $unsigned(redist7_sync_together137_aunroll_x_in_c0_eni26_3_tpl_4_inputreg0_q);
            redist7_sync_together137_aunroll_x_in_c0_eni26_3_tpl_4_delay_1 <= redist7_sync_together137_aunroll_x_in_c0_eni26_3_tpl_4_delay_0;
            redist7_sync_together137_aunroll_x_in_c0_eni26_3_tpl_4_q <= redist7_sync_together137_aunroll_x_in_c0_eni26_3_tpl_4_delay_1;
        end
    end

    // valid_fanout_reg13(REG,244)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg12(REG,243)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist27_sync_together137_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i64_idxprom11100_push71_kernel_3mm0_i_llvm_fpga_push_i64_idxprom11100_push71_kernel_3mm1_x(FIFODELAY,220)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i64_idxprom11100_push71_kernel_3mm0_i_llvm_fpga_push_i64_idxprom11100_push71_kernel_3mm1_x_i_stall = ~ (valid_fanout_reg13_q & i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_inv_pred_x_q);
    assign i_llvm_fpga_push_i64_idxprom11100_push71_kernel_3mm0_i_llvm_fpga_push_i64_idxprom11100_push71_kernel_3mm1_x_i_valid = valid_fanout_reg12_q & redist34_i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i64_idxprom11100_push71_kernel_3mm0_i_llvm_fpga_push_i64_idxprom11100_push71_kernel_3mm1_x_i_data = i_llvm_fpga_pop_i64_idxprom11100_pop71_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom11100_pop71_kernel_3mm14_mux_x_q;
    assign i_llvm_fpga_push_i64_idxprom11100_push71_kernel_3mm0_i_llvm_fpga_push_i64_idxprom11100_push71_kernel_3mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i64_idxprom11100_push71_kernel_3mm0_i_llvm_fpga_push_i64_idxprom11100_push71_kernel_3mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i64_idxprom11100_push71_kernel_3mm0_i_llvm_fpga_push_i64_idxprom11100_push71_kernel_3mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i64_idxprom11100_push71_kernel_3mm0_i_llvm_fpga_push_i64_idxprom11100_push71_kernel_3mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i64_idxprom11100_push71_kernel_3mm0_i_llvm_fpga_push_i64_idxprom11100_push71_kernel_3mm1_x (
        .i_valid(i_llvm_fpga_push_i64_idxprom11100_push71_kernel_3mm0_i_llvm_fpga_push_i64_idxprom11100_push71_kernel_3mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i64_idxprom11100_push71_kernel_3mm0_i_llvm_fpga_push_i64_idxprom11100_push71_kernel_3mm1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i64_idxprom11100_pop71_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom11100_pop71_kernel_3mm14_mux_x_q),
        .o_data(i_llvm_fpga_push_i64_idxprom11100_push71_kernel_3mm0_i_llvm_fpga_push_i64_idxprom11100_push71_kernel_3mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i64_idxprom11100_pop71_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom11100_pop71_kernel_3mm14_mux_x(MUX,169)@4
    assign i_llvm_fpga_pop_i64_idxprom11100_pop71_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom11100_pop71_kernel_3mm14_mux_x_s = redist51_i_llvm_fpga_forked_kernel_3mm_b6_forked_kernel_3mm3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i64_idxprom11100_pop71_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom11100_pop71_kernel_3mm14_mux_x_s or i_llvm_fpga_push_i64_idxprom11100_push71_kernel_3mm0_i_llvm_fpga_push_i64_idxprom11100_push71_kernel_3mm1_x_o_data or redist7_sync_together137_aunroll_x_in_c0_eni26_3_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i64_idxprom11100_pop71_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom11100_pop71_kernel_3mm14_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i64_idxprom11100_pop71_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom11100_pop71_kernel_3mm14_mux_x_q = i_llvm_fpga_push_i64_idxprom11100_push71_kernel_3mm0_i_llvm_fpga_push_i64_idxprom11100_push71_kernel_3mm1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i64_idxprom11100_pop71_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom11100_pop71_kernel_3mm14_mux_x_q = redist7_sync_together137_aunroll_x_in_c0_eni26_3_tpl_4_q;
            default : i_llvm_fpga_pop_i64_idxprom11100_pop71_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom11100_pop71_kernel_3mm14_mux_x_q = 64'b0;
        endcase
    end

    // i_arrayidx556_kernel_3mm0_dupName_3_trunc_sel_x(BITSELECT,157)@4
    assign i_arrayidx556_kernel_3mm0_dupName_3_trunc_sel_x_b = i_llvm_fpga_pop_i64_idxprom11100_pop71_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom11100_pop71_kernel_3mm14_mux_x_q[8:0];

    // i_arrayidx556_kernel_3mm0_narrow_x(BITSELECT,140)@4
    assign i_arrayidx556_kernel_3mm0_narrow_x_b = i_arrayidx556_kernel_3mm0_dupName_3_trunc_sel_x_b[6:0];

    // redist45_i_arrayidx556_kernel_3mm0_narrow_x_b_2(DELAY,460)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist45_i_arrayidx556_kernel_3mm0_narrow_x_b_2_delay_0 <= $unsigned(i_arrayidx556_kernel_3mm0_narrow_x_b);
            redist45_i_arrayidx556_kernel_3mm0_narrow_x_b_2_q <= redist45_i_arrayidx556_kernel_3mm0_narrow_x_b_2_delay_0;
        end
    end

    // i_arrayidx556_kernel_3mm0_shift_join_x(BITJOIN,141)@6
    assign i_arrayidx556_kernel_3mm0_shift_join_x_q = {redist45_i_arrayidx556_kernel_3mm0_narrow_x_b_2_q, i_arrayidx515_kernel_3mm12_vt_const_1_q};

    // highBBits_uid370_i_arrayidx556_kernel_3mm0_mult_x(BITSELECT,369)@4
    assign highBBits_uid370_i_arrayidx556_kernel_3mm0_mult_x_b = i_arrayidx515_kernel_3mm0_dupName_3_trunc_sel_x_b[8:2];

    // addsumAHighB_uid371_i_arrayidx556_kernel_3mm0_mult_x(ADD,370)@4
    assign addsumAHighB_uid371_i_arrayidx556_kernel_3mm0_mult_x_a = {1'b0, i_arrayidx515_kernel_3mm0_dupName_3_trunc_sel_x_b};
    assign addsumAHighB_uid371_i_arrayidx556_kernel_3mm0_mult_x_b = {3'b000, highBBits_uid370_i_arrayidx556_kernel_3mm0_mult_x_b};
    assign addsumAHighB_uid371_i_arrayidx556_kernel_3mm0_mult_x_o = $unsigned(addsumAHighB_uid371_i_arrayidx556_kernel_3mm0_mult_x_a) + $unsigned(addsumAHighB_uid371_i_arrayidx556_kernel_3mm0_mult_x_b);
    assign addsumAHighB_uid371_i_arrayidx556_kernel_3mm0_mult_x_q = addsumAHighB_uid371_i_arrayidx556_kernel_3mm0_mult_x_o[9:0];

    // lowRangeB_uid369_i_arrayidx556_kernel_3mm0_mult_x(BITSELECT,368)@4
    assign lowRangeB_uid369_i_arrayidx556_kernel_3mm0_mult_x_in = i_arrayidx515_kernel_3mm0_dupName_3_trunc_sel_x_b[1:0];
    assign lowRangeB_uid369_i_arrayidx556_kernel_3mm0_mult_x_b = lowRangeB_uid369_i_arrayidx556_kernel_3mm0_mult_x_in[1:0];

    // add_uid372_i_arrayidx556_kernel_3mm0_mult_x(BITJOIN,371)@4
    assign add_uid372_i_arrayidx556_kernel_3mm0_mult_x_q = {addsumAHighB_uid371_i_arrayidx556_kernel_3mm0_mult_x_q, lowRangeB_uid369_i_arrayidx556_kernel_3mm0_mult_x_b};

    // sR_mergedSignalTM_uid377_i_arrayidx556_kernel_3mm0_mult_x(BITJOIN,376)@4
    assign sR_mergedSignalTM_uid377_i_arrayidx556_kernel_3mm0_mult_x_q = {add_uid372_i_arrayidx556_kernel_3mm0_mult_x_q, i_arrayidx515_kernel_3mm0_mult_multconst_x_q};

    // i_arrayidx556_kernel_3mm0_mult_extender_x(BITJOIN,151)@4
    assign i_arrayidx556_kernel_3mm0_mult_extender_x_q = {i_arrayidx515_kernel_3mm0_mult_multconst_x_q, sR_mergedSignalTM_uid377_i_arrayidx556_kernel_3mm0_mult_x_q};

    // i_arrayidx556_kernel_3mm0_dupName_1_trunc_sel_x(BITSELECT,155)@4
    assign i_arrayidx556_kernel_3mm0_dupName_1_trunc_sel_x_b = i_arrayidx556_kernel_3mm0_mult_extender_x_q[8:0];

    // redist44_i_arrayidx556_kernel_3mm0_dupName_1_trunc_sel_x_b_1(DELAY,459)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist44_i_arrayidx556_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx556_kernel_3mm0_dupName_1_trunc_sel_x_b);
        end
    end

    // i_arrayidx556_kernel_3mm0_add_x(ADD,135)@5
    assign i_arrayidx556_kernel_3mm0_add_x_a = {1'b0, i_arrayidx556_kernel_3mm0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx556_kernel_3mm0_add_x_b = {1'b0, redist44_i_arrayidx556_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q};
    assign i_arrayidx556_kernel_3mm0_add_x_o = $unsigned(i_arrayidx556_kernel_3mm0_add_x_a) + $unsigned(i_arrayidx556_kernel_3mm0_add_x_b);
    assign i_arrayidx556_kernel_3mm0_add_x_q = i_arrayidx556_kernel_3mm0_add_x_o[9:0];

    // i_arrayidx556_kernel_3mm0_dupName_2_trunc_sel_x(BITSELECT,156)@5
    assign i_arrayidx556_kernel_3mm0_dupName_2_trunc_sel_x_b = i_arrayidx556_kernel_3mm0_add_x_q[8:0];

    // redist43_i_arrayidx556_kernel_3mm0_dupName_2_trunc_sel_x_b_1(DELAY,458)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist43_i_arrayidx556_kernel_3mm0_dupName_2_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx556_kernel_3mm0_dupName_2_trunc_sel_x_b);
        end
    end

    // i_arrayidx556_kernel_3mm0_dupName_0_add_x(ADD,145)@6
    assign i_arrayidx556_kernel_3mm0_dupName_0_add_x_a = {1'b0, redist43_i_arrayidx556_kernel_3mm0_dupName_2_trunc_sel_x_b_1_q};
    assign i_arrayidx556_kernel_3mm0_dupName_0_add_x_b = {1'b0, i_arrayidx556_kernel_3mm0_shift_join_x_q};
    assign i_arrayidx556_kernel_3mm0_dupName_0_add_x_o = $unsigned(i_arrayidx556_kernel_3mm0_dupName_0_add_x_a) + $unsigned(i_arrayidx556_kernel_3mm0_dupName_0_add_x_b);
    assign i_arrayidx556_kernel_3mm0_dupName_0_add_x_q = i_arrayidx556_kernel_3mm0_dupName_0_add_x_o[9:0];

    // i_arrayidx556_kernel_3mm0_dupName_5_trunc_sel_x(BITSELECT,158)@6
    assign i_arrayidx556_kernel_3mm0_dupName_5_trunc_sel_x_b = i_arrayidx556_kernel_3mm0_dupName_0_add_x_q[8:0];

    // i_arrayidx556_kernel_3mm0_append_upper_bits_x(BITJOIN,136)@6
    assign i_arrayidx556_kernel_3mm0_append_upper_bits_x_q = {redist0_i_arrayidx556_kernel_3mm0_upper_bits_x_merged_bit_select_b_1_q, i_arrayidx556_kernel_3mm0_dupName_5_trunc_sel_x_b};

    // i_arrayidx556_kernel_3mm15_vt_select_63(BITSELECT,79)@6
    assign i_arrayidx556_kernel_3mm15_vt_select_63_b = i_arrayidx556_kernel_3mm0_append_upper_bits_x_q[63:2];

    // i_arrayidx556_kernel_3mm15_vt_join(BITJOIN,78)@6
    assign i_arrayidx556_kernel_3mm15_vt_join_q = {i_arrayidx556_kernel_3mm15_vt_select_63_b, i_arrayidx515_kernel_3mm12_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_kernel_3mm9_kernel_3mm16(BLACKBOX,92)@6
    // out out_o_almost_empty@10
    // out out_o_empty@10
    // out out_o_readdata@10
    // out out_o_stall@10
    // out out_o_valid@10
    // out out_unnamed_kernel_3mm9_kernel_3mm_avm_address@20000000
    // out out_unnamed_kernel_3mm9_kernel_3mm_avm_burstcount@20000000
    // out out_unnamed_kernel_3mm9_kernel_3mm_avm_byteenable@20000000
    // out out_unnamed_kernel_3mm9_kernel_3mm_avm_enable@20000000
    // out out_unnamed_kernel_3mm9_kernel_3mm_avm_read@20000000
    // out out_unnamed_kernel_3mm9_kernel_3mm_avm_write@20000000
    // out out_unnamed_kernel_3mm9_kernel_3mm_avm_writedata@20000000
    kernel_3mm_i_llvm_fpga_mem_unnamed_9_kernel_3mm0 thei_llvm_fpga_mem_unnamed_kernel_3mm9_kernel_3mm16 (
        .in_almost_empty_in(GND_q),
        .in_empty_in(GND_q),
        .in_flush(in_flush),
        .in_i_address(i_arrayidx556_kernel_3mm15_vt_join_q),
        .in_i_predicate(i_kernel_3mm_b6_current_iter_isspec_kernel_3mm5_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg9_q),
        .in_unnamed_kernel_3mm9_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm9_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm9_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm9_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm9_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm9_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm9_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm9_kernel_3mm_avm_writeack),
        .out_o_almost_empty(),
        .out_o_empty(),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_kernel_3mm9_kernel_3mm16_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_kernel_3mm9_kernel_3mm_avm_address(i_llvm_fpga_mem_unnamed_kernel_3mm9_kernel_3mm16_out_unnamed_kernel_3mm9_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm9_kernel_3mm_avm_burstcount(i_llvm_fpga_mem_unnamed_kernel_3mm9_kernel_3mm16_out_unnamed_kernel_3mm9_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm9_kernel_3mm_avm_byteenable(i_llvm_fpga_mem_unnamed_kernel_3mm9_kernel_3mm16_out_unnamed_kernel_3mm9_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm9_kernel_3mm_avm_enable(i_llvm_fpga_mem_unnamed_kernel_3mm9_kernel_3mm16_out_unnamed_kernel_3mm9_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm9_kernel_3mm_avm_read(i_llvm_fpga_mem_unnamed_kernel_3mm9_kernel_3mm16_out_unnamed_kernel_3mm9_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm9_kernel_3mm_avm_write(i_llvm_fpga_mem_unnamed_kernel_3mm9_kernel_3mm16_out_unnamed_kernel_3mm9_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm9_kernel_3mm_avm_writedata(i_llvm_fpga_mem_unnamed_kernel_3mm9_kernel_3mm16_out_unnamed_kernel_3mm9_kernel_3mm_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,107)
    assign out_unnamed_kernel_3mm9_kernel_3mm_avm_address = i_llvm_fpga_mem_unnamed_kernel_3mm9_kernel_3mm16_out_unnamed_kernel_3mm9_kernel_3mm_avm_address;
    assign out_unnamed_kernel_3mm9_kernel_3mm_avm_enable = i_llvm_fpga_mem_unnamed_kernel_3mm9_kernel_3mm16_out_unnamed_kernel_3mm9_kernel_3mm_avm_enable;
    assign out_unnamed_kernel_3mm9_kernel_3mm_avm_read = i_llvm_fpga_mem_unnamed_kernel_3mm9_kernel_3mm16_out_unnamed_kernel_3mm9_kernel_3mm_avm_read;
    assign out_unnamed_kernel_3mm9_kernel_3mm_avm_write = i_llvm_fpga_mem_unnamed_kernel_3mm9_kernel_3mm16_out_unnamed_kernel_3mm9_kernel_3mm_avm_write;
    assign out_unnamed_kernel_3mm9_kernel_3mm_avm_writedata = i_llvm_fpga_mem_unnamed_kernel_3mm9_kernel_3mm16_out_unnamed_kernel_3mm9_kernel_3mm_avm_writedata;
    assign out_unnamed_kernel_3mm9_kernel_3mm_avm_byteenable = i_llvm_fpga_mem_unnamed_kernel_3mm9_kernel_3mm16_out_unnamed_kernel_3mm9_kernel_3mm_avm_byteenable;
    assign out_unnamed_kernel_3mm9_kernel_3mm_avm_burstcount = i_llvm_fpga_mem_unnamed_kernel_3mm9_kernel_3mm16_out_unnamed_kernel_3mm9_kernel_3mm_avm_burstcount;

    // dupName_0_regfree_osync_x(GPOUT,108)
    assign out_pipeline_dummy_out = i_llvm_fpga_pipeline_keep_going38_kernel_3mm6_out_pipeline_dummy_out;

    // dupName_1_regfree_osync_x(GPOUT,109)
    assign out_pipeline_forked_out = i_llvm_fpga_pipeline_keep_going38_kernel_3mm6_out_pipeline_forked_out;

    // dupName_2_regfree_osync_x(GPOUT,110)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going38_kernel_3mm6_out_pipeline_valid_out;

    // redist31_sync_together137_aunroll_x_in_i_valid_13(DELAY,446)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("SYNC"), .phase(5), .modulus(2), .reset_high(1'b0) )
    redist31_sync_together137_aunroll_x_in_i_valid_13 ( .xin(redist30_sync_together137_aunroll_x_in_i_valid_5_q), .xout(redist31_sync_together137_aunroll_x_in_i_valid_13_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist32_sync_together137_aunroll_x_in_i_valid_16(DELAY,447)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist32_sync_together137_aunroll_x_in_i_valid_16_delay_0 <= $unsigned(redist31_sync_together137_aunroll_x_in_i_valid_13_q);
        end
    end
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist32_sync_together137_aunroll_x_in_i_valid_16_delay_1 <= '0;
        end
        else
        begin
            redist32_sync_together137_aunroll_x_in_i_valid_16_delay_1 <= redist32_sync_together137_aunroll_x_in_i_valid_16_delay_0;
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist32_sync_together137_aunroll_x_in_i_valid_16_q <= redist32_sync_together137_aunroll_x_in_i_valid_16_delay_1;
        end
    end

    // redist33_sync_together137_aunroll_x_in_i_valid_17(DELAY,448)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist33_sync_together137_aunroll_x_in_i_valid_17_q <= '0;
        end
        else
        begin
            redist33_sync_together137_aunroll_x_in_i_valid_17_q <= $unsigned(redist32_sync_together137_aunroll_x_in_i_valid_16_q);
        end
    end

    // valid_fanout_reg0(REG,231)@17 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist33_sync_together137_aunroll_x_in_i_valid_17_q);
        end
    end

    // redist55_i_kernel_3mm_b6_current_iter_isspec_kernel_3mm5_q_12(DELAY,470)
    dspba_delay_ver #( .width(1), .depth(12), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist55_i_kernel_3mm_b6_current_iter_isspec_kernel_3mm5_q_12 ( .xin(i_kernel_3mm_b6_current_iter_isspec_kernel_3mm5_q), .xout(redist55_i_kernel_3mm_b6_current_iter_isspec_kernel_3mm5_q_12_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist26_sync_together137_aunroll_x_in_c0_eni26_26_tpl_18(DELAY,441)
    dspba_delay_ver #( .width(1), .depth(18), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist26_sync_together137_aunroll_x_in_c0_eni26_26_tpl_18 ( .xin(in_c0_eni26_26_tpl), .xout(redist26_sync_together137_aunroll_x_in_c0_eni26_26_tpl_18_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist25_sync_together137_aunroll_x_in_c0_eni26_25_tpl_18(DELAY,440)
    dspba_delay_ver #( .width(1), .depth(18), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist25_sync_together137_aunroll_x_in_c0_eni26_25_tpl_18 ( .xin(in_c0_eni26_25_tpl), .xout(redist25_sync_together137_aunroll_x_in_c0_eni26_25_tpl_18_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist24_sync_together137_aunroll_x_in_c0_eni26_24_tpl_18(DELAY,439)
    dspba_delay_ver #( .width(1), .depth(18), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist24_sync_together137_aunroll_x_in_c0_eni26_24_tpl_18 ( .xin(in_c0_eni26_24_tpl), .xout(redist24_sync_together137_aunroll_x_in_c0_eni26_24_tpl_18_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist23_sync_together137_aunroll_x_in_c0_eni26_23_tpl_18(DELAY,438)
    dspba_delay_ver #( .width(1), .depth(18), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist23_sync_together137_aunroll_x_in_c0_eni26_23_tpl_18 ( .xin(in_c0_eni26_23_tpl), .xout(redist23_sync_together137_aunroll_x_in_c0_eni26_23_tpl_18_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist22_sync_together137_aunroll_x_in_c0_eni26_22_tpl_18(DELAY,437)
    dspba_delay_ver #( .width(1), .depth(18), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist22_sync_together137_aunroll_x_in_c0_eni26_22_tpl_18 ( .xin(in_c0_eni26_22_tpl), .xout(redist22_sync_together137_aunroll_x_in_c0_eni26_22_tpl_18_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist21_sync_together137_aunroll_x_in_c0_eni26_21_tpl_18(DELAY,436)
    dspba_delay_ver #( .width(1), .depth(18), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist21_sync_together137_aunroll_x_in_c0_eni26_21_tpl_18 ( .xin(in_c0_eni26_21_tpl), .xout(redist21_sync_together137_aunroll_x_in_c0_eni26_21_tpl_18_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist20_sync_together137_aunroll_x_in_c0_eni26_20_tpl_18_offset(CONSTANT,484)
    assign redist20_sync_together137_aunroll_x_in_c0_eni26_20_tpl_18_offset_q = $unsigned(4'b0011);

    // redist20_sync_together137_aunroll_x_in_c0_eni26_20_tpl_18_rdcnt(ADD,485)
    assign redist20_sync_together137_aunroll_x_in_c0_eni26_20_tpl_18_rdcnt_a = {1'b0, redist20_sync_together137_aunroll_x_in_c0_eni26_20_tpl_18_wraddr_q};
    assign redist20_sync_together137_aunroll_x_in_c0_eni26_20_tpl_18_rdcnt_b = {1'b0, redist20_sync_together137_aunroll_x_in_c0_eni26_20_tpl_18_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist20_sync_together137_aunroll_x_in_c0_eni26_20_tpl_18_rdcnt_o <= $unsigned(redist20_sync_together137_aunroll_x_in_c0_eni26_20_tpl_18_rdcnt_a) + $unsigned(redist20_sync_together137_aunroll_x_in_c0_eni26_20_tpl_18_rdcnt_b);
        end
    end
    assign redist20_sync_together137_aunroll_x_in_c0_eni26_20_tpl_18_rdcnt_q = redist20_sync_together137_aunroll_x_in_c0_eni26_20_tpl_18_rdcnt_o[4:0];

    // redist20_sync_together137_aunroll_x_in_c0_eni26_20_tpl_18_inputreg0(DELAY,480)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist20_sync_together137_aunroll_x_in_c0_eni26_20_tpl_18_inputreg0_q <= $unsigned(in_c0_eni26_20_tpl);
        end
    end

    // redist20_sync_together137_aunroll_x_in_c0_eni26_20_tpl_18_wraddr(COUNTER,483)
    // low=0, high=15, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist20_sync_together137_aunroll_x_in_c0_eni26_20_tpl_18_wraddr_i <= $unsigned(redist20_sync_together137_aunroll_x_in_c0_eni26_20_tpl_18_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist20_sync_together137_aunroll_x_in_c0_eni26_20_tpl_18_wraddr_q = redist20_sync_together137_aunroll_x_in_c0_eni26_20_tpl_18_wraddr_i[3:0];

    // redist20_sync_together137_aunroll_x_in_c0_eni26_20_tpl_18_mem(DUALMEM,482)
    assign redist20_sync_together137_aunroll_x_in_c0_eni26_20_tpl_18_mem_ia = $unsigned(redist20_sync_together137_aunroll_x_in_c0_eni26_20_tpl_18_inputreg0_q);
    assign redist20_sync_together137_aunroll_x_in_c0_eni26_20_tpl_18_mem_aa = redist20_sync_together137_aunroll_x_in_c0_eni26_20_tpl_18_wraddr_q;
    assign redist20_sync_together137_aunroll_x_in_c0_eni26_20_tpl_18_mem_ab = redist20_sync_together137_aunroll_x_in_c0_eni26_20_tpl_18_rdcnt_q[3:0];
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
    ) redist20_sync_together137_aunroll_x_in_c0_eni26_20_tpl_18_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist20_sync_together137_aunroll_x_in_c0_eni26_20_tpl_18_mem_aa),
        .data_a(redist20_sync_together137_aunroll_x_in_c0_eni26_20_tpl_18_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist20_sync_together137_aunroll_x_in_c0_eni26_20_tpl_18_mem_ab),
        .q_b(redist20_sync_together137_aunroll_x_in_c0_eni26_20_tpl_18_mem_iq),
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
    assign redist20_sync_together137_aunroll_x_in_c0_eni26_20_tpl_18_mem_q = redist20_sync_together137_aunroll_x_in_c0_eni26_20_tpl_18_mem_iq[31:0];

    // redist20_sync_together137_aunroll_x_in_c0_eni26_20_tpl_18_outputreg0(DELAY,481)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist20_sync_together137_aunroll_x_in_c0_eni26_20_tpl_18_outputreg0_q <= $unsigned(redist20_sync_together137_aunroll_x_in_c0_eni26_20_tpl_18_mem_q);
        end
    end

    // redist19_sync_together137_aunroll_x_in_c0_eni26_19_tpl_18(DELAY,434)
    dspba_delay_ver #( .width(1), .depth(18), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist19_sync_together137_aunroll_x_in_c0_eni26_19_tpl_18 ( .xin(in_c0_eni26_19_tpl), .xout(redist19_sync_together137_aunroll_x_in_c0_eni26_19_tpl_18_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist18_sync_together137_aunroll_x_in_c0_eni26_18_tpl_18(DELAY,433)
    dspba_delay_ver #( .width(1), .depth(18), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist18_sync_together137_aunroll_x_in_c0_eni26_18_tpl_18 ( .xin(in_c0_eni26_18_tpl), .xout(redist18_sync_together137_aunroll_x_in_c0_eni26_18_tpl_18_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist17_sync_together137_aunroll_x_in_c0_eni26_17_tpl_18(DELAY,432)
    dspba_delay_ver #( .width(1), .depth(18), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist17_sync_together137_aunroll_x_in_c0_eni26_17_tpl_18 ( .xin(in_c0_eni26_17_tpl), .xout(redist17_sync_together137_aunroll_x_in_c0_eni26_17_tpl_18_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist16_sync_together137_aunroll_x_in_c0_eni26_16_tpl_18(DELAY,431)
    dspba_delay_ver #( .width(1), .depth(18), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist16_sync_together137_aunroll_x_in_c0_eni26_16_tpl_18 ( .xin(in_c0_eni26_16_tpl), .xout(redist16_sync_together137_aunroll_x_in_c0_eni26_16_tpl_18_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist15_sync_together137_aunroll_x_in_c0_eni26_15_tpl_18(DELAY,430)
    dspba_delay_ver #( .width(1), .depth(18), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist15_sync_together137_aunroll_x_in_c0_eni26_15_tpl_18 ( .xin(in_c0_eni26_15_tpl), .xout(redist15_sync_together137_aunroll_x_in_c0_eni26_15_tpl_18_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist39_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm0_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm50_mux_x_q_14_offset(CONSTANT,490)
    assign redist39_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm0_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm50_mux_x_q_14_offset_q = $unsigned(4'b0111);

    // redist39_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm0_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm50_mux_x_q_14_rdcnt(ADD,491)
    assign redist39_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm0_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm50_mux_x_q_14_rdcnt_a = {1'b0, redist39_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm0_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm50_mux_x_q_14_wraddr_q};
    assign redist39_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm0_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm50_mux_x_q_14_rdcnt_b = {1'b0, redist39_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm0_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm50_mux_x_q_14_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist39_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm0_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm50_mux_x_q_14_rdcnt_o <= $unsigned(redist39_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm0_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm50_mux_x_q_14_rdcnt_a) + $unsigned(redist39_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm0_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm50_mux_x_q_14_rdcnt_b);
        end
    end
    assign redist39_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm0_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm50_mux_x_q_14_rdcnt_q = redist39_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm0_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm50_mux_x_q_14_rdcnt_o[4:0];

    // redist14_sync_together137_aunroll_x_in_c0_eni26_14_tpl_4_inputreg0(DELAY,479)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist14_sync_together137_aunroll_x_in_c0_eni26_14_tpl_4_inputreg0_q <= $unsigned(in_c0_eni26_14_tpl);
        end
    end

    // redist14_sync_together137_aunroll_x_in_c0_eni26_14_tpl_4(DELAY,429)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist14_sync_together137_aunroll_x_in_c0_eni26_14_tpl_4_delay_0 <= $unsigned(redist14_sync_together137_aunroll_x_in_c0_eni26_14_tpl_4_inputreg0_q);
            redist14_sync_together137_aunroll_x_in_c0_eni26_14_tpl_4_delay_1 <= redist14_sync_together137_aunroll_x_in_c0_eni26_14_tpl_4_delay_0;
            redist14_sync_together137_aunroll_x_in_c0_eni26_14_tpl_4_q <= redist14_sync_together137_aunroll_x_in_c0_eni26_14_tpl_4_delay_1;
        end
    end

    // valid_fanout_reg52(REG,283)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg52_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg51(REG,282)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg51_q <= $unsigned(redist27_sync_together137_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_p69i32_arrayidx444106_push74_kernel_3mm0_i_llvm_fpga_push_p69i32_arrayidx444106_push74_kernel_3mm1_x(FIFODELAY,226)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_p69i32_arrayidx444106_push74_kernel_3mm0_i_llvm_fpga_push_p69i32_arrayidx444106_push74_kernel_3mm1_x_i_stall = ~ (valid_fanout_reg52_q & i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_inv_pred_x_q);
    assign i_llvm_fpga_push_p69i32_arrayidx444106_push74_kernel_3mm0_i_llvm_fpga_push_p69i32_arrayidx444106_push74_kernel_3mm1_x_i_valid = valid_fanout_reg51_q & redist34_i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_p69i32_arrayidx444106_push74_kernel_3mm0_i_llvm_fpga_push_p69i32_arrayidx444106_push74_kernel_3mm1_x_i_data = i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm0_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm50_mux_x_q;
    assign i_llvm_fpga_push_p69i32_arrayidx444106_push74_kernel_3mm0_i_llvm_fpga_push_p69i32_arrayidx444106_push74_kernel_3mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_p69i32_arrayidx444106_push74_kernel_3mm0_i_llvm_fpga_push_p69i32_arrayidx444106_push74_kernel_3mm1_x_i_valid[0];
    assign i_llvm_fpga_push_p69i32_arrayidx444106_push74_kernel_3mm0_i_llvm_fpga_push_p69i32_arrayidx444106_push74_kernel_3mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_p69i32_arrayidx444106_push74_kernel_3mm0_i_llvm_fpga_push_p69i32_arrayidx444106_push74_kernel_3mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_p69i32_arrayidx444106_push74_kernel_3mm0_i_llvm_fpga_push_p69i32_arrayidx444106_push74_kernel_3mm1_x (
        .i_valid(i_llvm_fpga_push_p69i32_arrayidx444106_push74_kernel_3mm0_i_llvm_fpga_push_p69i32_arrayidx444106_push74_kernel_3mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_p69i32_arrayidx444106_push74_kernel_3mm0_i_llvm_fpga_push_p69i32_arrayidx444106_push74_kernel_3mm1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm0_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm50_mux_x_q),
        .o_data(i_llvm_fpga_push_p69i32_arrayidx444106_push74_kernel_3mm0_i_llvm_fpga_push_p69i32_arrayidx444106_push74_kernel_3mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm0_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm50_mux_x(MUX,171)@4
    assign i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm0_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm50_mux_x_s = redist51_i_llvm_fpga_forked_kernel_3mm_b6_forked_kernel_3mm3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm0_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm50_mux_x_s or i_llvm_fpga_push_p69i32_arrayidx444106_push74_kernel_3mm0_i_llvm_fpga_push_p69i32_arrayidx444106_push74_kernel_3mm1_x_o_data or redist14_sync_together137_aunroll_x_in_c0_eni26_14_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm0_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm50_mux_x_s)
            1'b0 : i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm0_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm50_mux_x_q = i_llvm_fpga_push_p69i32_arrayidx444106_push74_kernel_3mm0_i_llvm_fpga_push_p69i32_arrayidx444106_push74_kernel_3mm1_x_o_data;
            1'b1 : i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm0_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm50_mux_x_q = redist14_sync_together137_aunroll_x_in_c0_eni26_14_tpl_4_q;
            default : i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm0_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm50_mux_x_q = 64'b0;
        endcase
    end

    // redist39_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm0_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm50_mux_x_q_14_inputreg0(DELAY,486)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist39_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm0_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm50_mux_x_q_14_inputreg0_q <= $unsigned(i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm0_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm50_mux_x_q);
        end
    end

    // redist39_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm0_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm50_mux_x_q_14_wraddr(COUNTER,489)
    // low=0, high=15, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist39_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm0_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm50_mux_x_q_14_wraddr_i <= $unsigned(redist39_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm0_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm50_mux_x_q_14_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist39_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm0_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm50_mux_x_q_14_wraddr_q = redist39_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm0_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm50_mux_x_q_14_wraddr_i[3:0];

    // redist39_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm0_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm50_mux_x_q_14_mem(DUALMEM,488)
    assign redist39_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm0_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm50_mux_x_q_14_mem_ia = $unsigned(redist39_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm0_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm50_mux_x_q_14_inputreg0_q);
    assign redist39_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm0_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm50_mux_x_q_14_mem_aa = redist39_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm0_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm50_mux_x_q_14_wraddr_q;
    assign redist39_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm0_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm50_mux_x_q_14_mem_ab = redist39_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm0_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm50_mux_x_q_14_rdcnt_q[3:0];
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
    ) redist39_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm0_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm50_mux_x_q_14_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist39_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm0_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm50_mux_x_q_14_mem_aa),
        .data_a(redist39_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm0_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm50_mux_x_q_14_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist39_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm0_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm50_mux_x_q_14_mem_ab),
        .q_b(redist39_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm0_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm50_mux_x_q_14_mem_iq),
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
    assign redist39_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm0_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm50_mux_x_q_14_mem_q = redist39_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm0_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm50_mux_x_q_14_mem_iq[63:0];

    // redist39_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm0_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm50_mux_x_q_14_outputreg0(DELAY,487)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist39_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm0_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm50_mux_x_q_14_outputreg0_q <= $unsigned(redist39_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm0_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm50_mux_x_q_14_mem_q);
        end
    end

    // redist13_sync_together137_aunroll_x_in_c0_eni26_13_tpl_17(DELAY,428)
    dspba_delay_ver #( .width(1), .depth(17), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist13_sync_together137_aunroll_x_in_c0_eni26_13_tpl_17 ( .xin(in_c0_eni26_13_tpl), .xout(redist13_sync_together137_aunroll_x_in_c0_eni26_13_tpl_17_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_push_i1_memdep_105_push73_kernel_3mm0_element_extension2_x(BITJOIN,186)@18
    assign i_llvm_fpga_push_i1_memdep_105_push73_kernel_3mm0_element_extension2_x_q = {i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_c_i7_03_x_q, i_llvm_fpga_pop_i1_memdep_105_pop73_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_105_pop73_kernel_3mm48_mux_x_q};

    // redist37_i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_inv_pred_x_q_13(DELAY,452)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist37_i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_inv_pred_x_q_13 ( .xin(redist36_i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_inv_pred_x_q_4_q), .xout(redist37_i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_inv_pred_x_q_13_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg49(REG,280)@13 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg49_q <= $unsigned(redist31_sync_together137_aunroll_x_in_i_valid_13_q);
        end
    end

    // redist38_i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_inv_pred_x_q_16(DELAY,453)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist38_i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_inv_pred_x_q_16_delay_0 <= $unsigned(redist37_i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_inv_pred_x_q_13_q);
            redist38_i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_inv_pred_x_q_16_delay_1 <= redist38_i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_inv_pred_x_q_16_delay_0;
            redist38_i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_inv_pred_x_q_16_q <= redist38_i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_inv_pred_x_q_16_delay_1;
        end
    end

    // valid_fanout_reg48(REG,279)@16 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg48_q <= $unsigned(redist32_sync_together137_aunroll_x_in_i_valid_16_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_105_push73_kernel_3mm0_i_llvm_fpga_push_i1_memdep_105_push73_kernel_3mm1_x(FIFODELAY,187)@14
    // in i_valid@17
    // in i_write_pred@17
    // in i_data@18
    // out o_data@17
    assign i_llvm_fpga_push_i1_memdep_105_push73_kernel_3mm0_i_llvm_fpga_push_i1_memdep_105_push73_kernel_3mm1_x_i_stall = ~ (valid_fanout_reg49_q & redist37_i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_inv_pred_x_q_13_q);
    assign i_llvm_fpga_push_i1_memdep_105_push73_kernel_3mm0_i_llvm_fpga_push_i1_memdep_105_push73_kernel_3mm1_x_i_valid = valid_fanout_reg48_q & redist38_i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_inv_pred_x_q_16_q;
    assign i_llvm_fpga_push_i1_memdep_105_push73_kernel_3mm0_i_llvm_fpga_push_i1_memdep_105_push73_kernel_3mm1_x_i_data = i_llvm_fpga_push_i1_memdep_105_push73_kernel_3mm0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_memdep_105_push73_kernel_3mm0_i_llvm_fpga_push_i1_memdep_105_push73_kernel_3mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_memdep_105_push73_kernel_3mm0_i_llvm_fpga_push_i1_memdep_105_push73_kernel_3mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_memdep_105_push73_kernel_3mm0_i_llvm_fpga_push_i1_memdep_105_push73_kernel_3mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_memdep_105_push73_kernel_3mm0_i_llvm_fpga_push_i1_memdep_105_push73_kernel_3mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_memdep_105_push73_kernel_3mm0_i_llvm_fpga_push_i1_memdep_105_push73_kernel_3mm1_x (
        .i_valid(i_llvm_fpga_push_i1_memdep_105_push73_kernel_3mm0_i_llvm_fpga_push_i1_memdep_105_push73_kernel_3mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_memdep_105_push73_kernel_3mm0_i_llvm_fpga_push_i1_memdep_105_push73_kernel_3mm1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_memdep_105_push73_kernel_3mm0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_memdep_105_push73_kernel_3mm0_i_llvm_fpga_push_i1_memdep_105_push73_kernel_3mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_memdep_105_push73_kernel_3mm0_adapt_scalar_trunc4_sel_x(BITSELECT,189)@17
    assign i_llvm_fpga_push_i1_memdep_105_push73_kernel_3mm0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_memdep_105_push73_kernel_3mm0_i_llvm_fpga_push_i1_memdep_105_push73_kernel_3mm1_x_o_data[0:0];

    // redist53_i_llvm_fpga_forked_kernel_3mm_b6_forked_kernel_3mm3_out_buffer_out_17(DELAY,468)
    dspba_delay_ver #( .width(1), .depth(11), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist53_i_llvm_fpga_forked_kernel_3mm_b6_forked_kernel_3mm3_out_buffer_out_17 ( .xin(redist52_i_llvm_fpga_forked_kernel_3mm_b6_forked_kernel_3mm3_out_buffer_out_6_q), .xout(redist53_i_llvm_fpga_forked_kernel_3mm_b6_forked_kernel_3mm3_out_buffer_out_17_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_pop_i1_memdep_105_pop73_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_105_pop73_kernel_3mm48_mux_x(MUX,162)@17 + 1
    assign i_llvm_fpga_pop_i1_memdep_105_pop73_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_105_pop73_kernel_3mm48_mux_x_s = redist53_i_llvm_fpga_forked_kernel_3mm_b6_forked_kernel_3mm3_out_buffer_out_17_q;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_llvm_fpga_pop_i1_memdep_105_pop73_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_105_pop73_kernel_3mm48_mux_x_s)
                1'b0 : i_llvm_fpga_pop_i1_memdep_105_pop73_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_105_pop73_kernel_3mm48_mux_x_q <= i_llvm_fpga_push_i1_memdep_105_push73_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
                1'b1 : i_llvm_fpga_pop_i1_memdep_105_pop73_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_105_pop73_kernel_3mm48_mux_x_q <= redist13_sync_together137_aunroll_x_in_c0_eni26_13_tpl_17_q;
                default : i_llvm_fpga_pop_i1_memdep_105_pop73_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_105_pop73_kernel_3mm48_mux_x_q <= 1'b0;
            endcase
        end
    end

    // redist12_sync_together137_aunroll_x_in_c0_eni26_12_tpl_4(DELAY,427)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist12_sync_together137_aunroll_x_in_c0_eni26_12_tpl_4_delay_0 <= $unsigned(in_c0_eni26_12_tpl);
            redist12_sync_together137_aunroll_x_in_c0_eni26_12_tpl_4_delay_1 <= redist12_sync_together137_aunroll_x_in_c0_eni26_12_tpl_4_delay_0;
            redist12_sync_together137_aunroll_x_in_c0_eni26_12_tpl_4_delay_2 <= redist12_sync_together137_aunroll_x_in_c0_eni26_12_tpl_4_delay_1;
            redist12_sync_together137_aunroll_x_in_c0_eni26_12_tpl_4_q <= redist12_sync_together137_aunroll_x_in_c0_eni26_12_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_push_i1_notcmp46103_push72_kernel_3mm0_element_extension2_x(BITJOIN,198)@5
    assign i_llvm_fpga_push_i1_notcmp46103_push72_kernel_3mm0_element_extension2_x_q = {i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_c_i7_03_x_q, i_llvm_fpga_pop_i1_notcmp46103_pop72_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp46103_pop72_kernel_3mm46_mux_x_q};

    // valid_fanout_reg46(REG,277)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg46_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg45(REG,276)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg45_q <= $unsigned(redist28_sync_together137_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp46103_push72_kernel_3mm0_i_llvm_fpga_push_i1_notcmp46103_push72_kernel_3mm1_x(FIFODELAY,199)@1
    // in i_valid@4
    // in i_write_pred@4
    // in i_data@5
    // out o_data@4
    assign i_llvm_fpga_push_i1_notcmp46103_push72_kernel_3mm0_i_llvm_fpga_push_i1_notcmp46103_push72_kernel_3mm1_x_i_stall = ~ (valid_fanout_reg46_q & i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_notcmp46103_push72_kernel_3mm0_i_llvm_fpga_push_i1_notcmp46103_push72_kernel_3mm1_x_i_valid = valid_fanout_reg45_q & redist35_i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_inv_pred_x_q_3_q;
    assign i_llvm_fpga_push_i1_notcmp46103_push72_kernel_3mm0_i_llvm_fpga_push_i1_notcmp46103_push72_kernel_3mm1_x_i_data = i_llvm_fpga_push_i1_notcmp46103_push72_kernel_3mm0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_notcmp46103_push72_kernel_3mm0_i_llvm_fpga_push_i1_notcmp46103_push72_kernel_3mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_notcmp46103_push72_kernel_3mm0_i_llvm_fpga_push_i1_notcmp46103_push72_kernel_3mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_notcmp46103_push72_kernel_3mm0_i_llvm_fpga_push_i1_notcmp46103_push72_kernel_3mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_notcmp46103_push72_kernel_3mm0_i_llvm_fpga_push_i1_notcmp46103_push72_kernel_3mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_notcmp46103_push72_kernel_3mm0_i_llvm_fpga_push_i1_notcmp46103_push72_kernel_3mm1_x (
        .i_valid(i_llvm_fpga_push_i1_notcmp46103_push72_kernel_3mm0_i_llvm_fpga_push_i1_notcmp46103_push72_kernel_3mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_notcmp46103_push72_kernel_3mm0_i_llvm_fpga_push_i1_notcmp46103_push72_kernel_3mm1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_notcmp46103_push72_kernel_3mm0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_notcmp46103_push72_kernel_3mm0_i_llvm_fpga_push_i1_notcmp46103_push72_kernel_3mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_notcmp46103_push72_kernel_3mm0_adapt_scalar_trunc4_sel_x(BITSELECT,201)@4
    assign i_llvm_fpga_push_i1_notcmp46103_push72_kernel_3mm0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_notcmp46103_push72_kernel_3mm0_i_llvm_fpga_push_i1_notcmp46103_push72_kernel_3mm1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_notcmp46103_pop72_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp46103_pop72_kernel_3mm46_mux_x(MUX,164)@4 + 1
    assign i_llvm_fpga_pop_i1_notcmp46103_pop72_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp46103_pop72_kernel_3mm46_mux_x_s = redist51_i_llvm_fpga_forked_kernel_3mm_b6_forked_kernel_3mm3_out_buffer_out_4_q;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_llvm_fpga_pop_i1_notcmp46103_pop72_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp46103_pop72_kernel_3mm46_mux_x_s)
                1'b0 : i_llvm_fpga_pop_i1_notcmp46103_pop72_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp46103_pop72_kernel_3mm46_mux_x_q <= i_llvm_fpga_push_i1_notcmp46103_push72_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
                1'b1 : i_llvm_fpga_pop_i1_notcmp46103_pop72_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp46103_pop72_kernel_3mm46_mux_x_q <= redist12_sync_together137_aunroll_x_in_c0_eni26_12_tpl_4_q;
                default : i_llvm_fpga_pop_i1_notcmp46103_pop72_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp46103_pop72_kernel_3mm46_mux_x_q <= 1'b0;
            endcase
        end
    end

    // redist41_i_llvm_fpga_pop_i1_notcmp46103_pop72_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp46103_pop72_kernel_3mm46_mux_x_q_14(DELAY,456)
    dspba_delay_ver #( .width(1), .depth(13), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist41_i_llvm_fpga_pop_i1_notcmp46103_pop72_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp46103_pop72_kernel_3mm46_mux_x_q_14 ( .xin(i_llvm_fpga_pop_i1_notcmp46103_pop72_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp46103_pop72_kernel_3mm46_mux_x_q), .xout(redist41_i_llvm_fpga_pop_i1_notcmp46103_pop72_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp46103_pop72_kernel_3mm46_mux_x_q_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist11_sync_together137_aunroll_x_in_c0_eni26_11_tpl_4(DELAY,426)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist11_sync_together137_aunroll_x_in_c0_eni26_11_tpl_4_delay_0 <= $unsigned(in_c0_eni26_11_tpl);
            redist11_sync_together137_aunroll_x_in_c0_eni26_11_tpl_4_delay_1 <= redist11_sync_together137_aunroll_x_in_c0_eni26_11_tpl_4_delay_0;
            redist11_sync_together137_aunroll_x_in_c0_eni26_11_tpl_4_delay_2 <= redist11_sync_together137_aunroll_x_in_c0_eni26_11_tpl_4_delay_1;
            redist11_sync_together137_aunroll_x_in_c0_eni26_11_tpl_4_q <= redist11_sync_together137_aunroll_x_in_c0_eni26_11_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_push_i1_notcmp5190_push69_kernel_3mm0_element_extension2_x(BITJOIN,204)@5
    assign i_llvm_fpga_push_i1_notcmp5190_push69_kernel_3mm0_element_extension2_x_q = {i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_c_i7_03_x_q, i_llvm_fpga_pop_i1_notcmp5190_pop69_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp5190_pop69_kernel_3mm44_mux_x_q};

    // valid_fanout_reg43(REG,274)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg43_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg42(REG,273)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg42_q <= $unsigned(redist28_sync_together137_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp5190_push69_kernel_3mm0_i_llvm_fpga_push_i1_notcmp5190_push69_kernel_3mm1_x(FIFODELAY,205)@1
    // in i_valid@4
    // in i_write_pred@4
    // in i_data@5
    // out o_data@4
    assign i_llvm_fpga_push_i1_notcmp5190_push69_kernel_3mm0_i_llvm_fpga_push_i1_notcmp5190_push69_kernel_3mm1_x_i_stall = ~ (valid_fanout_reg43_q & i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_notcmp5190_push69_kernel_3mm0_i_llvm_fpga_push_i1_notcmp5190_push69_kernel_3mm1_x_i_valid = valid_fanout_reg42_q & redist35_i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_inv_pred_x_q_3_q;
    assign i_llvm_fpga_push_i1_notcmp5190_push69_kernel_3mm0_i_llvm_fpga_push_i1_notcmp5190_push69_kernel_3mm1_x_i_data = i_llvm_fpga_push_i1_notcmp5190_push69_kernel_3mm0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_notcmp5190_push69_kernel_3mm0_i_llvm_fpga_push_i1_notcmp5190_push69_kernel_3mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_notcmp5190_push69_kernel_3mm0_i_llvm_fpga_push_i1_notcmp5190_push69_kernel_3mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_notcmp5190_push69_kernel_3mm0_i_llvm_fpga_push_i1_notcmp5190_push69_kernel_3mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_notcmp5190_push69_kernel_3mm0_i_llvm_fpga_push_i1_notcmp5190_push69_kernel_3mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_notcmp5190_push69_kernel_3mm0_i_llvm_fpga_push_i1_notcmp5190_push69_kernel_3mm1_x (
        .i_valid(i_llvm_fpga_push_i1_notcmp5190_push69_kernel_3mm0_i_llvm_fpga_push_i1_notcmp5190_push69_kernel_3mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_notcmp5190_push69_kernel_3mm0_i_llvm_fpga_push_i1_notcmp5190_push69_kernel_3mm1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_notcmp5190_push69_kernel_3mm0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_notcmp5190_push69_kernel_3mm0_i_llvm_fpga_push_i1_notcmp5190_push69_kernel_3mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_notcmp5190_push69_kernel_3mm0_adapt_scalar_trunc4_sel_x(BITSELECT,207)@4
    assign i_llvm_fpga_push_i1_notcmp5190_push69_kernel_3mm0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_notcmp5190_push69_kernel_3mm0_i_llvm_fpga_push_i1_notcmp5190_push69_kernel_3mm1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_notcmp5190_pop69_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp5190_pop69_kernel_3mm44_mux_x(MUX,165)@4 + 1
    assign i_llvm_fpga_pop_i1_notcmp5190_pop69_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp5190_pop69_kernel_3mm44_mux_x_s = redist51_i_llvm_fpga_forked_kernel_3mm_b6_forked_kernel_3mm3_out_buffer_out_4_q;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_llvm_fpga_pop_i1_notcmp5190_pop69_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp5190_pop69_kernel_3mm44_mux_x_s)
                1'b0 : i_llvm_fpga_pop_i1_notcmp5190_pop69_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp5190_pop69_kernel_3mm44_mux_x_q <= i_llvm_fpga_push_i1_notcmp5190_push69_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
                1'b1 : i_llvm_fpga_pop_i1_notcmp5190_pop69_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp5190_pop69_kernel_3mm44_mux_x_q <= redist11_sync_together137_aunroll_x_in_c0_eni26_11_tpl_4_q;
                default : i_llvm_fpga_pop_i1_notcmp5190_pop69_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp5190_pop69_kernel_3mm44_mux_x_q <= 1'b0;
            endcase
        end
    end

    // redist40_i_llvm_fpga_pop_i1_notcmp5190_pop69_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp5190_pop69_kernel_3mm44_mux_x_q_14(DELAY,455)
    dspba_delay_ver #( .width(1), .depth(13), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist40_i_llvm_fpga_pop_i1_notcmp5190_pop69_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp5190_pop69_kernel_3mm44_mux_x_q_14 ( .xin(i_llvm_fpga_pop_i1_notcmp5190_pop69_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp5190_pop69_kernel_3mm44_mux_x_q), .xout(redist40_i_llvm_fpga_pop_i1_notcmp5190_pop69_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp5190_pop69_kernel_3mm44_mux_x_q_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist10_sync_together137_aunroll_x_in_c0_eni26_9_tpl_4(DELAY,425)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_sync_together137_aunroll_x_in_c0_eni26_9_tpl_4_delay_0 <= $unsigned(in_c0_eni26_9_tpl);
            redist10_sync_together137_aunroll_x_in_c0_eni26_9_tpl_4_delay_1 <= redist10_sync_together137_aunroll_x_in_c0_eni26_9_tpl_4_delay_0;
            redist10_sync_together137_aunroll_x_in_c0_eni26_9_tpl_4_delay_2 <= redist10_sync_together137_aunroll_x_in_c0_eni26_9_tpl_4_delay_1;
            redist10_sync_together137_aunroll_x_in_c0_eni26_9_tpl_4_q <= redist10_sync_together137_aunroll_x_in_c0_eni26_9_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi5_pop2079_push67_kernel_3mm0_element_extension2_x(BITJOIN,192)@5
    assign i_llvm_fpga_push_i1_memdep_phi5_pop2079_push67_kernel_3mm0_element_extension2_x_q = {i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_c_i7_03_x_q, i_llvm_fpga_pop_i1_memdep_phi5_pop2079_pop67_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi5_pop2079_pop67_kernel_3mm40_mux_x_q};

    // valid_fanout_reg37(REG,268)@0 + 1
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

    // valid_fanout_reg36(REG,267)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg36_q <= $unsigned(redist28_sync_together137_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi5_pop2079_push67_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2079_push67_kernel_3mm1_x(FIFODELAY,193)@1
    // in i_valid@4
    // in i_write_pred@4
    // in i_data@5
    // out o_data@4
    assign i_llvm_fpga_push_i1_memdep_phi5_pop2079_push67_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2079_push67_kernel_3mm1_x_i_stall = ~ (valid_fanout_reg37_q & i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_memdep_phi5_pop2079_push67_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2079_push67_kernel_3mm1_x_i_valid = valid_fanout_reg36_q & redist35_i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_inv_pred_x_q_3_q;
    assign i_llvm_fpga_push_i1_memdep_phi5_pop2079_push67_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2079_push67_kernel_3mm1_x_i_data = i_llvm_fpga_push_i1_memdep_phi5_pop2079_push67_kernel_3mm0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_memdep_phi5_pop2079_push67_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2079_push67_kernel_3mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi5_pop2079_push67_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2079_push67_kernel_3mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_memdep_phi5_pop2079_push67_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2079_push67_kernel_3mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi5_pop2079_push67_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2079_push67_kernel_3mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_memdep_phi5_pop2079_push67_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2079_push67_kernel_3mm1_x (
        .i_valid(i_llvm_fpga_push_i1_memdep_phi5_pop2079_push67_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2079_push67_kernel_3mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_memdep_phi5_pop2079_push67_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2079_push67_kernel_3mm1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_memdep_phi5_pop2079_push67_kernel_3mm0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_memdep_phi5_pop2079_push67_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2079_push67_kernel_3mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_memdep_phi5_pop2079_push67_kernel_3mm0_adapt_scalar_trunc4_sel_x(BITSELECT,195)@4
    assign i_llvm_fpga_push_i1_memdep_phi5_pop2079_push67_kernel_3mm0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_memdep_phi5_pop2079_push67_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2079_push67_kernel_3mm1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_memdep_phi5_pop2079_pop67_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi5_pop2079_pop67_kernel_3mm40_mux_x(MUX,163)@4 + 1
    assign i_llvm_fpga_pop_i1_memdep_phi5_pop2079_pop67_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi5_pop2079_pop67_kernel_3mm40_mux_x_s = redist51_i_llvm_fpga_forked_kernel_3mm_b6_forked_kernel_3mm3_out_buffer_out_4_q;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_llvm_fpga_pop_i1_memdep_phi5_pop2079_pop67_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi5_pop2079_pop67_kernel_3mm40_mux_x_s)
                1'b0 : i_llvm_fpga_pop_i1_memdep_phi5_pop2079_pop67_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi5_pop2079_pop67_kernel_3mm40_mux_x_q <= i_llvm_fpga_push_i1_memdep_phi5_pop2079_push67_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
                1'b1 : i_llvm_fpga_pop_i1_memdep_phi5_pop2079_pop67_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi5_pop2079_pop67_kernel_3mm40_mux_x_q <= redist10_sync_together137_aunroll_x_in_c0_eni26_9_tpl_4_q;
                default : i_llvm_fpga_pop_i1_memdep_phi5_pop2079_pop67_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi5_pop2079_pop67_kernel_3mm40_mux_x_q <= 1'b0;
            endcase
        end
    end

    // redist42_i_llvm_fpga_pop_i1_memdep_phi5_pop2079_pop67_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi5_pop2079_pop67_kernel_3mm40_mux_x_q_14(DELAY,457)
    dspba_delay_ver #( .width(1), .depth(13), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist42_i_llvm_fpga_pop_i1_memdep_phi5_pop2079_pop67_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi5_pop2079_pop67_kernel_3mm40_mux_x_q_14 ( .xin(i_llvm_fpga_pop_i1_memdep_phi5_pop2079_pop67_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi5_pop2079_pop67_kernel_3mm40_mux_x_q), .xout(redist42_i_llvm_fpga_pop_i1_memdep_phi5_pop2079_pop67_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi5_pop2079_pop67_kernel_3mm40_mux_x_q_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist9_sync_together137_aunroll_x_in_c0_eni26_5_tpl_17(DELAY,424)
    dspba_delay_ver #( .width(1), .depth(17), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist9_sync_together137_aunroll_x_in_c0_eni26_5_tpl_17 ( .xin(in_c0_eni26_5_tpl), .xout(redist9_sync_together137_aunroll_x_in_c0_eni26_5_tpl_17_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_element_extension2_x(BITJOIN,174)@18
    assign i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_element_extension2_x_q = {i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_c_i7_03_x_q, i_llvm_fpga_pop_i1_forked63_pop63_kernel_3mm0_i_llvm_fpga_pop_i1_forked63_pop63_kernel_3mm32_mux_x_q};

    // valid_fanout_reg25(REG,256)@13 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg25_q <= $unsigned(redist31_sync_together137_aunroll_x_in_i_valid_13_q);
        end
    end

    // valid_fanout_reg24(REG,255)@16 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg24_q <= $unsigned(redist32_sync_together137_aunroll_x_in_i_valid_16_q);
        end
    end

    // i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_i_llvm_fpga_push_i1_forked63_push63_kernel_3mm1_x(FIFODELAY,175)@14
    // in i_valid@17
    // in i_write_pred@17
    // in i_data@18
    // out o_data@17
    assign i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_i_llvm_fpga_push_i1_forked63_push63_kernel_3mm1_x_i_stall = ~ (valid_fanout_reg25_q & redist37_i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_inv_pred_x_q_13_q);
    assign i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_i_llvm_fpga_push_i1_forked63_push63_kernel_3mm1_x_i_valid = valid_fanout_reg24_q & redist38_i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_inv_pred_x_q_16_q;
    assign i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_i_llvm_fpga_push_i1_forked63_push63_kernel_3mm1_x_i_data = i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_i_llvm_fpga_push_i1_forked63_push63_kernel_3mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_i_llvm_fpga_push_i1_forked63_push63_kernel_3mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_i_llvm_fpga_push_i1_forked63_push63_kernel_3mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_i_llvm_fpga_push_i1_forked63_push63_kernel_3mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_i_llvm_fpga_push_i1_forked63_push63_kernel_3mm1_x (
        .i_valid(i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_i_llvm_fpga_push_i1_forked63_push63_kernel_3mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_i_llvm_fpga_push_i1_forked63_push63_kernel_3mm1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_i_llvm_fpga_push_i1_forked63_push63_kernel_3mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_adapt_scalar_trunc4_sel_x(BITSELECT,177)@17
    assign i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_i_llvm_fpga_push_i1_forked63_push63_kernel_3mm1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_forked63_pop63_kernel_3mm0_i_llvm_fpga_pop_i1_forked63_pop63_kernel_3mm32_mux_x(MUX,161)@17 + 1
    assign i_llvm_fpga_pop_i1_forked63_pop63_kernel_3mm0_i_llvm_fpga_pop_i1_forked63_pop63_kernel_3mm32_mux_x_s = redist53_i_llvm_fpga_forked_kernel_3mm_b6_forked_kernel_3mm3_out_buffer_out_17_q;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_llvm_fpga_pop_i1_forked63_pop63_kernel_3mm0_i_llvm_fpga_pop_i1_forked63_pop63_kernel_3mm32_mux_x_s)
                1'b0 : i_llvm_fpga_pop_i1_forked63_pop63_kernel_3mm0_i_llvm_fpga_pop_i1_forked63_pop63_kernel_3mm32_mux_x_q <= i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
                1'b1 : i_llvm_fpga_pop_i1_forked63_pop63_kernel_3mm0_i_llvm_fpga_pop_i1_forked63_pop63_kernel_3mm32_mux_x_q <= redist9_sync_together137_aunroll_x_in_c0_eni26_5_tpl_17_q;
                default : i_llvm_fpga_pop_i1_forked63_pop63_kernel_3mm0_i_llvm_fpga_pop_i1_forked63_pop63_kernel_3mm32_mux_x_q <= 1'b0;
            endcase
        end
    end

    // i_notcmp36_kernel_3mm28(LOGICAL,96)@18
    assign i_notcmp36_kernel_3mm28_q = redist5_i_exitcond10_kernel_3mm22_cmp_nsign_q_14_q ^ VCC_q;

    // redist5_i_exitcond10_kernel_3mm22_cmp_nsign_q_14(DELAY,420)
    dspba_delay_ver #( .width(1), .depth(14), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist5_i_exitcond10_kernel_3mm22_cmp_nsign_q_14 ( .xin(i_exitcond10_kernel_3mm22_cmp_nsign_q), .xout(redist5_i_exitcond10_kernel_3mm22_cmp_nsign_q_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist8_sync_together137_aunroll_x_in_c0_eni26_4_tpl_17_offset(CONSTANT,477)
    assign redist8_sync_together137_aunroll_x_in_c0_eni26_4_tpl_17_offset_q = $unsigned(4'b0100);

    // redist8_sync_together137_aunroll_x_in_c0_eni26_4_tpl_17_rdcnt(ADD,478)
    assign redist8_sync_together137_aunroll_x_in_c0_eni26_4_tpl_17_rdcnt_a = {1'b0, redist8_sync_together137_aunroll_x_in_c0_eni26_4_tpl_17_wraddr_q};
    assign redist8_sync_together137_aunroll_x_in_c0_eni26_4_tpl_17_rdcnt_b = {1'b0, redist8_sync_together137_aunroll_x_in_c0_eni26_4_tpl_17_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_sync_together137_aunroll_x_in_c0_eni26_4_tpl_17_rdcnt_o <= $unsigned(redist8_sync_together137_aunroll_x_in_c0_eni26_4_tpl_17_rdcnt_a) + $unsigned(redist8_sync_together137_aunroll_x_in_c0_eni26_4_tpl_17_rdcnt_b);
        end
    end
    assign redist8_sync_together137_aunroll_x_in_c0_eni26_4_tpl_17_rdcnt_q = redist8_sync_together137_aunroll_x_in_c0_eni26_4_tpl_17_rdcnt_o[4:0];

    // redist8_sync_together137_aunroll_x_in_c0_eni26_4_tpl_17_inputreg0(DELAY,473)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_sync_together137_aunroll_x_in_c0_eni26_4_tpl_17_inputreg0_q <= $unsigned(in_c0_eni26_4_tpl);
        end
    end

    // redist8_sync_together137_aunroll_x_in_c0_eni26_4_tpl_17_wraddr(COUNTER,476)
    // low=0, high=15, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_sync_together137_aunroll_x_in_c0_eni26_4_tpl_17_wraddr_i <= $unsigned(redist8_sync_together137_aunroll_x_in_c0_eni26_4_tpl_17_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist8_sync_together137_aunroll_x_in_c0_eni26_4_tpl_17_wraddr_q = redist8_sync_together137_aunroll_x_in_c0_eni26_4_tpl_17_wraddr_i[3:0];

    // redist8_sync_together137_aunroll_x_in_c0_eni26_4_tpl_17_mem(DUALMEM,475)
    assign redist8_sync_together137_aunroll_x_in_c0_eni26_4_tpl_17_mem_ia = $unsigned(redist8_sync_together137_aunroll_x_in_c0_eni26_4_tpl_17_inputreg0_q);
    assign redist8_sync_together137_aunroll_x_in_c0_eni26_4_tpl_17_mem_aa = redist8_sync_together137_aunroll_x_in_c0_eni26_4_tpl_17_wraddr_q;
    assign redist8_sync_together137_aunroll_x_in_c0_eni26_4_tpl_17_mem_ab = redist8_sync_together137_aunroll_x_in_c0_eni26_4_tpl_17_rdcnt_q[3:0];
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
    ) redist8_sync_together137_aunroll_x_in_c0_eni26_4_tpl_17_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist8_sync_together137_aunroll_x_in_c0_eni26_4_tpl_17_mem_aa),
        .data_a(redist8_sync_together137_aunroll_x_in_c0_eni26_4_tpl_17_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist8_sync_together137_aunroll_x_in_c0_eni26_4_tpl_17_mem_ab),
        .q_b(redist8_sync_together137_aunroll_x_in_c0_eni26_4_tpl_17_mem_iq),
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
    assign redist8_sync_together137_aunroll_x_in_c0_eni26_4_tpl_17_mem_q = redist8_sync_together137_aunroll_x_in_c0_eni26_4_tpl_17_mem_iq[31:0];

    // redist8_sync_together137_aunroll_x_in_c0_eni26_4_tpl_17_outputreg0(DELAY,474)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_sync_together137_aunroll_x_in_c0_eni26_4_tpl_17_outputreg0_q <= $unsigned(redist8_sync_together137_aunroll_x_in_c0_eni26_4_tpl_17_mem_q);
        end
    end

    // valid_fanout_reg19(REG,250)@13 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(redist31_sync_together137_aunroll_x_in_i_valid_13_q);
        end
    end

    // valid_fanout_reg18(REG,249)@16 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(redist32_sync_together137_aunroll_x_in_i_valid_16_q);
        end
    end

    // i_llvm_fpga_push_i32_tmp40_054_push61_kernel_3mm0_i_llvm_fpga_push_i32_tmp40_054_push61_kernel_3mm1_x(FIFODELAY,211)@14
    // in i_valid@17
    // in i_write_pred@17
    // in i_data@18
    // out o_data@17
    assign i_llvm_fpga_push_i32_tmp40_054_push61_kernel_3mm0_i_llvm_fpga_push_i32_tmp40_054_push61_kernel_3mm1_x_i_stall = ~ (valid_fanout_reg19_q & redist37_i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_inv_pred_x_q_13_q);
    assign i_llvm_fpga_push_i32_tmp40_054_push61_kernel_3mm0_i_llvm_fpga_push_i32_tmp40_054_push61_kernel_3mm1_x_i_valid = valid_fanout_reg18_q & redist38_i_llvm_fpga_push_i1_forked63_push63_kernel_3mm0_inv_pred_x_q_16_q;
    assign i_llvm_fpga_push_i32_tmp40_054_push61_kernel_3mm0_i_llvm_fpga_push_i32_tmp40_054_push61_kernel_3mm1_x_i_data = bgTrunc_i_add57_kernel_3mm19_sel_x_b;
    assign i_llvm_fpga_push_i32_tmp40_054_push61_kernel_3mm0_i_llvm_fpga_push_i32_tmp40_054_push61_kernel_3mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_tmp40_054_push61_kernel_3mm0_i_llvm_fpga_push_i32_tmp40_054_push61_kernel_3mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_tmp40_054_push61_kernel_3mm0_i_llvm_fpga_push_i32_tmp40_054_push61_kernel_3mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_tmp40_054_push61_kernel_3mm0_i_llvm_fpga_push_i32_tmp40_054_push61_kernel_3mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_tmp40_054_push61_kernel_3mm0_i_llvm_fpga_push_i32_tmp40_054_push61_kernel_3mm1_x (
        .i_valid(i_llvm_fpga_push_i32_tmp40_054_push61_kernel_3mm0_i_llvm_fpga_push_i32_tmp40_054_push61_kernel_3mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_tmp40_054_push61_kernel_3mm0_i_llvm_fpga_push_i32_tmp40_054_push61_kernel_3mm1_x_i_stall_bitsignaltemp),
        .i_data(bgTrunc_i_add57_kernel_3mm19_sel_x_b),
        .o_data(i_llvm_fpga_push_i32_tmp40_054_push61_kernel_3mm0_i_llvm_fpga_push_i32_tmp40_054_push61_kernel_3mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_tmp40_054_pop61_kernel_3mm0_i_llvm_fpga_pop_i32_tmp40_054_pop61_kernel_3mm18_mux_x(MUX,167)@17 + 1
    assign i_llvm_fpga_pop_i32_tmp40_054_pop61_kernel_3mm0_i_llvm_fpga_pop_i32_tmp40_054_pop61_kernel_3mm18_mux_x_s = redist53_i_llvm_fpga_forked_kernel_3mm_b6_forked_kernel_3mm3_out_buffer_out_17_q;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_llvm_fpga_pop_i32_tmp40_054_pop61_kernel_3mm0_i_llvm_fpga_pop_i32_tmp40_054_pop61_kernel_3mm18_mux_x_s)
                1'b0 : i_llvm_fpga_pop_i32_tmp40_054_pop61_kernel_3mm0_i_llvm_fpga_pop_i32_tmp40_054_pop61_kernel_3mm18_mux_x_q <= i_llvm_fpga_push_i32_tmp40_054_push61_kernel_3mm0_i_llvm_fpga_push_i32_tmp40_054_push61_kernel_3mm1_x_o_data;
                1'b1 : i_llvm_fpga_pop_i32_tmp40_054_pop61_kernel_3mm0_i_llvm_fpga_pop_i32_tmp40_054_pop61_kernel_3mm18_mux_x_q <= redist8_sync_together137_aunroll_x_in_c0_eni26_4_tpl_17_outputreg0_q;
                default : i_llvm_fpga_pop_i32_tmp40_054_pop61_kernel_3mm0_i_llvm_fpga_pop_i32_tmp40_054_pop61_kernel_3mm18_mux_x_q <= 32'b0;
            endcase
        end
    end

    // i_mul56_kernel_3mm17_bs3_merged_bit_select(BITSELECT,412)@10
    assign i_mul56_kernel_3mm17_bs3_merged_bit_select_b = i_llvm_fpga_mem_unnamed_kernel_3mm8_kernel_3mm13_out_o_readdata[31:18];
    assign i_mul56_kernel_3mm17_bs3_merged_bit_select_c = i_llvm_fpga_mem_unnamed_kernel_3mm8_kernel_3mm13_out_o_readdata[17:0];

    // i_mul56_kernel_3mm17_bs1_merged_bit_select(BITSELECT,413)@10
    assign i_mul56_kernel_3mm17_bs1_merged_bit_select_b = i_llvm_fpga_mem_unnamed_kernel_3mm9_kernel_3mm16_out_o_readdata[31:18];
    assign i_mul56_kernel_3mm17_bs1_merged_bit_select_c = i_llvm_fpga_mem_unnamed_kernel_3mm9_kernel_3mm16_out_o_readdata[17:0];

    // i_mul56_kernel_3mm17_ma5_cma(CHAINMULTADD,409)@10 + 5
    // out q@16
    assign i_mul56_kernel_3mm17_ma5_cma_reset = ~ (resetn);
    assign i_mul56_kernel_3mm17_ma5_cma_ena0 = 1'b1;
    assign i_mul56_kernel_3mm17_ma5_cma_ena1 = i_mul56_kernel_3mm17_ma5_cma_ena0;
    assign i_mul56_kernel_3mm17_ma5_cma_ena2 = i_mul56_kernel_3mm17_ma5_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul56_kernel_3mm17_ma5_cma_ah[0] <= i_mul56_kernel_3mm17_bs1_merged_bit_select_b;
            i_mul56_kernel_3mm17_ma5_cma_ah[1] <= i_mul56_kernel_3mm17_bs3_merged_bit_select_b;
            i_mul56_kernel_3mm17_ma5_cma_ch[0] <= i_mul56_kernel_3mm17_bs3_merged_bit_select_c;
            i_mul56_kernel_3mm17_ma5_cma_ch[1] <= i_mul56_kernel_3mm17_bs1_merged_bit_select_c;
        end
    end

    assign i_mul56_kernel_3mm17_ma5_cma_a0 = i_mul56_kernel_3mm17_ma5_cma_ah[0];
    assign i_mul56_kernel_3mm17_ma5_cma_c0 = i_mul56_kernel_3mm17_ma5_cma_ch[0];
    assign i_mul56_kernel_3mm17_ma5_cma_a1 = i_mul56_kernel_3mm17_ma5_cma_ah[1];
    assign i_mul56_kernel_3mm17_ma5_cma_c1 = i_mul56_kernel_3mm17_ma5_cma_ch[1];
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
    ) i_mul56_kernel_3mm17_ma5_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul56_kernel_3mm17_ma5_cma_ena2, i_mul56_kernel_3mm17_ma5_cma_ena1, i_mul56_kernel_3mm17_ma5_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul56_kernel_3mm17_ma5_cma_a1),
        .by(i_mul56_kernel_3mm17_ma5_cma_a0),
        .ax(i_mul56_kernel_3mm17_ma5_cma_c1),
        .bx(i_mul56_kernel_3mm17_ma5_cma_c0),
        .resulta(i_mul56_kernel_3mm17_ma5_cma_s0),
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
    i_mul56_kernel_3mm17_ma5_cma_delay ( .xin(i_mul56_kernel_3mm17_ma5_cma_s0), .xout(i_mul56_kernel_3mm17_ma5_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul56_kernel_3mm17_ma5_cma_q = $unsigned(i_mul56_kernel_3mm17_ma5_cma_qq[32:0]);

    // redist2_i_mul56_kernel_3mm17_ma5_cma_q_1(DELAY,417)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_i_mul56_kernel_3mm17_ma5_cma_q_1_q <= $unsigned(i_mul56_kernel_3mm17_ma5_cma_q);
        end
    end

    // i_mul56_kernel_3mm17_sums_align_1(BITSHIFT,312)@17
    assign i_mul56_kernel_3mm17_sums_align_1_qint = { redist2_i_mul56_kernel_3mm17_ma5_cma_q_1_q, 18'b000000000000000000 };
    assign i_mul56_kernel_3mm17_sums_align_1_q = i_mul56_kernel_3mm17_sums_align_1_qint[50:0];

    // i_mul56_kernel_3mm17_bjB4(BITJOIN,302)@10
    assign i_mul56_kernel_3mm17_bjB4_q = {GND_q, i_mul56_kernel_3mm17_bs3_merged_bit_select_b};

    // i_mul56_kernel_3mm17_bjA2(BITJOIN,300)@10
    assign i_mul56_kernel_3mm17_bjA2_q = {GND_q, i_mul56_kernel_3mm17_bs1_merged_bit_select_b};

    // i_mul56_kernel_3mm17_im0_cma(CHAINMULTADD,407)@10 + 5
    // out q@16
    assign i_mul56_kernel_3mm17_im0_cma_reset = ~ (resetn);
    assign i_mul56_kernel_3mm17_im0_cma_ena0 = 1'b1;
    assign i_mul56_kernel_3mm17_im0_cma_ena1 = i_mul56_kernel_3mm17_im0_cma_ena0;
    assign i_mul56_kernel_3mm17_im0_cma_ena2 = i_mul56_kernel_3mm17_im0_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul56_kernel_3mm17_im0_cma_ah[0] <= i_mul56_kernel_3mm17_bjA2_q;
            i_mul56_kernel_3mm17_im0_cma_ch[0] <= i_mul56_kernel_3mm17_bjB4_q;
        end
    end

    assign i_mul56_kernel_3mm17_im0_cma_a0 = $unsigned(i_mul56_kernel_3mm17_im0_cma_ah[0]);
    assign i_mul56_kernel_3mm17_im0_cma_c0 = $unsigned(i_mul56_kernel_3mm17_im0_cma_ch[0]);
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
    ) i_mul56_kernel_3mm17_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul56_kernel_3mm17_im0_cma_ena2, i_mul56_kernel_3mm17_im0_cma_ena1, i_mul56_kernel_3mm17_im0_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul56_kernel_3mm17_im0_cma_a0),
        .ax(i_mul56_kernel_3mm17_im0_cma_c0),
        .resulta(i_mul56_kernel_3mm17_im0_cma_s0),
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
    i_mul56_kernel_3mm17_im0_cma_delay ( .xin(i_mul56_kernel_3mm17_im0_cma_s0), .xout(i_mul56_kernel_3mm17_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul56_kernel_3mm17_im0_cma_q = $unsigned(i_mul56_kernel_3mm17_im0_cma_qq[29:0]);

    // redist4_i_mul56_kernel_3mm17_im0_cma_q_1(DELAY,419)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_i_mul56_kernel_3mm17_im0_cma_q_1_q <= $unsigned(i_mul56_kernel_3mm17_im0_cma_q);
        end
    end

    // i_mul56_kernel_3mm17_im10_cma(CHAINMULTADD,408)@10 + 5
    // out q@16
    assign i_mul56_kernel_3mm17_im10_cma_reset = ~ (resetn);
    assign i_mul56_kernel_3mm17_im10_cma_ena0 = 1'b1;
    assign i_mul56_kernel_3mm17_im10_cma_ena1 = i_mul56_kernel_3mm17_im10_cma_ena0;
    assign i_mul56_kernel_3mm17_im10_cma_ena2 = i_mul56_kernel_3mm17_im10_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul56_kernel_3mm17_im10_cma_ah[0] <= i_mul56_kernel_3mm17_bs1_merged_bit_select_c;
            i_mul56_kernel_3mm17_im10_cma_ch[0] <= i_mul56_kernel_3mm17_bs3_merged_bit_select_c;
        end
    end

    assign i_mul56_kernel_3mm17_im10_cma_a0 = i_mul56_kernel_3mm17_im10_cma_ah[0];
    assign i_mul56_kernel_3mm17_im10_cma_c0 = i_mul56_kernel_3mm17_im10_cma_ch[0];
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
    ) i_mul56_kernel_3mm17_im10_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul56_kernel_3mm17_im10_cma_ena2, i_mul56_kernel_3mm17_im10_cma_ena1, i_mul56_kernel_3mm17_im10_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul56_kernel_3mm17_im10_cma_a0),
        .ax(i_mul56_kernel_3mm17_im10_cma_c0),
        .resulta(i_mul56_kernel_3mm17_im10_cma_s0),
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
    i_mul56_kernel_3mm17_im10_cma_delay ( .xin(i_mul56_kernel_3mm17_im10_cma_s0), .xout(i_mul56_kernel_3mm17_im10_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul56_kernel_3mm17_im10_cma_q = $unsigned(i_mul56_kernel_3mm17_im10_cma_qq[35:0]);

    // redist3_i_mul56_kernel_3mm17_im10_cma_q_1(DELAY,418)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_i_mul56_kernel_3mm17_im10_cma_q_1_q <= $unsigned(i_mul56_kernel_3mm17_im10_cma_q);
        end
    end

    // i_mul56_kernel_3mm17_sums_join_0(BITJOIN,311)@17
    assign i_mul56_kernel_3mm17_sums_join_0_q = {redist4_i_mul56_kernel_3mm17_im0_cma_q_1_q, redist3_i_mul56_kernel_3mm17_im10_cma_q_1_q};

    // i_mul56_kernel_3mm17_sums_result_add_0_0(ADD,314)@17
    assign i_mul56_kernel_3mm17_sums_result_add_0_0_a = {1'b0, i_mul56_kernel_3mm17_sums_join_0_q};
    assign i_mul56_kernel_3mm17_sums_result_add_0_0_b = {16'b0000000000000000, i_mul56_kernel_3mm17_sums_align_1_q};
    assign i_mul56_kernel_3mm17_sums_result_add_0_0_o = $unsigned(i_mul56_kernel_3mm17_sums_result_add_0_0_a) + $unsigned(i_mul56_kernel_3mm17_sums_result_add_0_0_b);
    assign i_mul56_kernel_3mm17_sums_result_add_0_0_q = i_mul56_kernel_3mm17_sums_result_add_0_0_o[66:0];

    // bgTrunc_i_mul56_kernel_3mm17_sel_x(BITSELECT,104)@17
    assign bgTrunc_i_mul56_kernel_3mm17_sel_x_in = i_mul56_kernel_3mm17_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul56_kernel_3mm17_sel_x_b = bgTrunc_i_mul56_kernel_3mm17_sel_x_in[31:0];

    // redist49_bgTrunc_i_mul56_kernel_3mm17_sel_x_b_1(DELAY,464)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist49_bgTrunc_i_mul56_kernel_3mm17_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul56_kernel_3mm17_sel_x_b);
        end
    end

    // i_add57_kernel_3mm19(ADD,73)@18
    assign i_add57_kernel_3mm19_a = {1'b0, redist49_bgTrunc_i_mul56_kernel_3mm17_sel_x_b_1_q};
    assign i_add57_kernel_3mm19_b = {1'b0, i_llvm_fpga_pop_i32_tmp40_054_pop61_kernel_3mm0_i_llvm_fpga_pop_i32_tmp40_054_pop61_kernel_3mm18_mux_x_q};
    assign i_add57_kernel_3mm19_o = $unsigned(i_add57_kernel_3mm19_a) + $unsigned(i_add57_kernel_3mm19_b);
    assign i_add57_kernel_3mm19_q = i_add57_kernel_3mm19_o[32:0];

    // bgTrunc_i_add57_kernel_3mm19_sel_x(BITSELECT,101)@18
    assign bgTrunc_i_add57_kernel_3mm19_sel_x_b = i_add57_kernel_3mm19_q[31:0];

    // sync_out_aunroll_x(GPOUT,229)@18
    assign out_c0_exi21474_0_tpl = GND_q;
    assign out_c0_exi21474_1_tpl = bgTrunc_i_add57_kernel_3mm19_sel_x_b;
    assign out_c0_exi21474_2_tpl = redist5_i_exitcond10_kernel_3mm22_cmp_nsign_q_14_q;
    assign out_c0_exi21474_3_tpl = i_notcmp36_kernel_3mm28_q;
    assign out_c0_exi21474_4_tpl = i_llvm_fpga_pop_i1_forked63_pop63_kernel_3mm0_i_llvm_fpga_pop_i1_forked63_pop63_kernel_3mm32_mux_x_q;
    assign out_c0_exi21474_5_tpl = redist42_i_llvm_fpga_pop_i1_memdep_phi5_pop2079_pop67_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi5_pop2079_pop67_kernel_3mm40_mux_x_q_14_q;
    assign out_c0_exi21474_6_tpl = redist40_i_llvm_fpga_pop_i1_notcmp5190_pop69_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp5190_pop69_kernel_3mm44_mux_x_q_14_q;
    assign out_c0_exi21474_7_tpl = redist41_i_llvm_fpga_pop_i1_notcmp46103_pop72_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp46103_pop72_kernel_3mm46_mux_x_q_14_q;
    assign out_c0_exi21474_8_tpl = i_llvm_fpga_pop_i1_memdep_105_pop73_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_105_pop73_kernel_3mm48_mux_x_q;
    assign out_c0_exi21474_9_tpl = redist39_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm0_i_llvm_fpga_pop_p69i32_arrayidx444106_pop74_kernel_3mm50_mux_x_q_14_outputreg0_q;
    assign out_c0_exi21474_10_tpl = redist15_sync_together137_aunroll_x_in_c0_eni26_15_tpl_18_q;
    assign out_c0_exi21474_11_tpl = redist16_sync_together137_aunroll_x_in_c0_eni26_16_tpl_18_q;
    assign out_c0_exi21474_12_tpl = redist17_sync_together137_aunroll_x_in_c0_eni26_17_tpl_18_q;
    assign out_c0_exi21474_13_tpl = redist18_sync_together137_aunroll_x_in_c0_eni26_18_tpl_18_q;
    assign out_c0_exi21474_14_tpl = redist19_sync_together137_aunroll_x_in_c0_eni26_19_tpl_18_q;
    assign out_c0_exi21474_15_tpl = redist20_sync_together137_aunroll_x_in_c0_eni26_20_tpl_18_outputreg0_q;
    assign out_c0_exi21474_16_tpl = redist21_sync_together137_aunroll_x_in_c0_eni26_21_tpl_18_q;
    assign out_c0_exi21474_17_tpl = redist22_sync_together137_aunroll_x_in_c0_eni26_22_tpl_18_q;
    assign out_c0_exi21474_18_tpl = redist23_sync_together137_aunroll_x_in_c0_eni26_23_tpl_18_q;
    assign out_c0_exi21474_19_tpl = redist24_sync_together137_aunroll_x_in_c0_eni26_24_tpl_18_q;
    assign out_c0_exi21474_20_tpl = redist25_sync_together137_aunroll_x_in_c0_eni26_25_tpl_18_q;
    assign out_c0_exi21474_21_tpl = redist26_sync_together137_aunroll_x_in_c0_eni26_26_tpl_18_q;
    assign out_kernel_3mm_B6_current_iter_isspec = redist55_i_kernel_3mm_b6_current_iter_isspec_kernel_3mm5_q_12_q;
    assign out_o_valid = valid_fanout_reg0_q;

endmodule
