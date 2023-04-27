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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm0
// Created for function/kernel kernel_3mm
// SystemVerilog created on Thu Apr 27 14:26:49 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_i_sfc_logic_s_c0_in_for_body80000ter57453_kernel_3mm0 (
    input wire [31:0] in_unnamed_kernel_3mm12_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm12_kernel_3mm_avm_writeack,
    input wire [0:0] in_unnamed_kernel_3mm12_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm12_kernel_3mm_avm_readdatavalid,
    output wire [31:0] out_unnamed_kernel_3mm12_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm12_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm12_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm12_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata,
    output wire [3:0] out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount,
    input wire [0:0] in_flush,
    output wire [0:0] out_exiting_valid_out,
    input wire [31:0] in_unnamed_kernel_3mm13_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm13_kernel_3mm_avm_writeack,
    input wire [0:0] in_unnamed_kernel_3mm13_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm13_kernel_3mm_avm_readdatavalid,
    output wire [31:0] out_unnamed_kernel_3mm13_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm13_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm13_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm13_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata,
    output wire [3:0] out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount,
    output wire [0:0] out_pipeline_dummy_out,
    output wire [0:0] out_pipeline_forked_out,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_c0_exi12599_0_tpl,
    output wire [0:0] out_c0_exi12599_1_tpl,
    output wire [0:0] out_c0_exi12599_2_tpl,
    output wire [31:0] out_c0_exi12599_3_tpl,
    output wire [0:0] out_c0_exi12599_4_tpl,
    output wire [0:0] out_c0_exi12599_5_tpl,
    output wire [0:0] out_c0_exi12599_6_tpl,
    output wire [63:0] out_c0_exi12599_7_tpl,
    output wire [0:0] out_c0_exi12599_8_tpl,
    output wire [0:0] out_c0_exi12599_9_tpl,
    output wire [0:0] out_c0_exi12599_10_tpl,
    output wire [31:0] out_c0_exi12599_11_tpl,
    output wire [0:0] out_c0_exi12599_12_tpl,
    output wire [0:0] out_kernel_3mm_B12_current_iter_isspec,
    output wire [0:0] out_o_valid,
    input wire [0:0] in_buffer_in,
    input wire [0:0] in_c0_eni13573_0_tpl,
    input wire [0:0] in_c0_eni13573_1_tpl,
    input wire [63:0] in_c0_eni13573_2_tpl,
    input wire [63:0] in_c0_eni13573_3_tpl,
    input wire [31:0] in_c0_eni13573_4_tpl,
    input wire [0:0] in_c0_eni13573_5_tpl,
    input wire [0:0] in_c0_eni13573_6_tpl,
    input wire [31:0] in_c0_eni13573_7_tpl,
    input wire [63:0] in_c0_eni13573_8_tpl,
    input wire [0:0] in_c0_eni13573_9_tpl,
    input wire [0:0] in_c0_eni13573_10_tpl,
    input wire [0:0] in_c0_eni13573_11_tpl,
    input wire [31:0] in_c0_eni13573_12_tpl,
    input wire [0:0] in_c0_eni13573_13_tpl,
    input wire [0:0] in_dummy_in,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_099_q;
    wire [31:0] c_i32_1100_q;
    wire [4:0] c_i5_1103_q;
    wire [4:0] c_i5_8101_q;
    wire [63:0] c_kernel_3mm_E_local_pmem_q;
    wire [63:0] c_kernel_3mm_F_local_pmem_q;
    wire [32:0] i_add94_kernel_3mm21_a;
    wire [32:0] i_add94_kernel_3mm21_b;
    logic [32:0] i_add94_kernel_3mm21_o;
    wire [32:0] i_add94_kernel_3mm21_q;
    wire [1:0] i_arrayidx888_kernel_3mm12_vt_const_1_q;
    wire [63:0] i_arrayidx888_kernel_3mm12_vt_join_q;
    wire [61:0] i_arrayidx888_kernel_3mm12_vt_select_63_b;
    wire [63:0] i_arrayidx929_kernel_3mm16_vt_join_q;
    wire [61:0] i_arrayidx929_kernel_3mm16_vt_select_63_b;
    wire [5:0] i_fpga_indvars_iv_next18_kernel_3mm32_a;
    wire [5:0] i_fpga_indvars_iv_next18_kernel_3mm32_b;
    logic [5:0] i_fpga_indvars_iv_next18_kernel_3mm32_o;
    wire [5:0] i_fpga_indvars_iv_next18_kernel_3mm32_q;
    wire [63:0] i_idxprom87_kernel_3mm10_vt_join_q;
    wire [31:0] i_idxprom87_kernel_3mm10_vt_select_31_b;
    wire [32:0] i_inc96_kernel_3mm22_a;
    wire [32:0] i_inc96_kernel_3mm22_b;
    logic [32:0] i_inc96_kernel_3mm22_o;
    wire [32:0] i_inc96_kernel_3mm22_q;
    wire [0:0] i_kernel_3mm_b12_current_iter_isspec_kernel_3mm5_q;
    wire [0:0] i_kernel_3mm_b12_next_iter_isreal_kernel_3mm7_q;
    wire [0:0] i_llvm_fpga_dummy_thread_kernel_3mm_b12_dummy_kernel_3mm2_out_dummy_out;
    wire [0:0] i_llvm_fpga_forked_kernel_3mm_b12_forked_kernel_3mm3_out_buffer_out;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm13_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm13_out_unnamed_kernel_3mm12_kernel_3mm_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm13_out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm13_out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm13_out_unnamed_kernel_3mm12_kernel_3mm_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm13_out_unnamed_kernel_3mm12_kernel_3mm_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm13_out_unnamed_kernel_3mm12_kernel_3mm_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm13_out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm17_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm17_out_unnamed_kernel_3mm13_kernel_3mm_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm17_out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm17_out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm17_out_unnamed_kernel_3mm13_kernel_3mm_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm17_out_unnamed_kernel_3mm13_kernel_3mm_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm17_out_unnamed_kernel_3mm13_kernel_3mm_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm17_out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_kernel_3mm6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_kernel_3mm6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_kernel_3mm6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_kernel_3mm6_out_pipeline_dummy_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_kernel_3mm6_out_pipeline_forked_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_kernel_3mm6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_kernel_3mm31_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_kernel_3mm31_out_feedback_valid_out_2;
    wire [0:0] i_notcmp_kernel_3mm30_q;
    wire [31:0] bgTrunc_i_add94_kernel_3mm21_sel_x_b;
    wire [4:0] bgTrunc_i_fpga_indvars_iv_next18_kernel_3mm32_sel_x_b;
    wire [31:0] bgTrunc_i_inc96_kernel_3mm22_sel_x_b;
    wire [63:0] bgTrunc_i_mul93_kernel_3mm19_sel_x_in;
    wire [31:0] bgTrunc_i_mul93_kernel_3mm19_sel_x_b;
    wire [9:0] i_arrayidx888_kernel_3mm0_add_x_a;
    wire [9:0] i_arrayidx888_kernel_3mm0_add_x_b;
    logic [9:0] i_arrayidx888_kernel_3mm0_add_x_o;
    wire [9:0] i_arrayidx888_kernel_3mm0_add_x_q;
    wire [63:0] i_arrayidx888_kernel_3mm0_append_upper_bits_x_q;
    wire [6:0] i_arrayidx888_kernel_3mm0_narrow_x_b;
    wire [8:0] i_arrayidx888_kernel_3mm0_shift_join_x_q;
    wire [9:0] i_arrayidx888_kernel_3mm0_dupName_0_add_x_a;
    wire [9:0] i_arrayidx888_kernel_3mm0_dupName_0_add_x_b;
    logic [9:0] i_arrayidx888_kernel_3mm0_dupName_0_add_x_o;
    wire [9:0] i_arrayidx888_kernel_3mm0_dupName_0_add_x_q;
    wire [17:0] i_arrayidx888_kernel_3mm0_mult_extender_x_q;
    wire [2:0] i_arrayidx888_kernel_3mm0_mult_multconst_x_q;
    wire [8:0] i_arrayidx888_kernel_3mm0_dupName_0_trunc_sel_x_b;
    wire [8:0] i_arrayidx888_kernel_3mm0_dupName_1_trunc_sel_x_b;
    wire [8:0] i_arrayidx888_kernel_3mm0_dupName_2_trunc_sel_x_b;
    wire [8:0] i_arrayidx888_kernel_3mm0_dupName_3_trunc_sel_x_b;
    wire [8:0] i_arrayidx888_kernel_3mm0_dupName_5_trunc_sel_x_b;
    wire [9:0] i_arrayidx929_kernel_3mm0_add_x_a;
    wire [9:0] i_arrayidx929_kernel_3mm0_add_x_b;
    logic [9:0] i_arrayidx929_kernel_3mm0_add_x_o;
    wire [9:0] i_arrayidx929_kernel_3mm0_add_x_q;
    wire [63:0] i_arrayidx929_kernel_3mm0_append_upper_bits_x_q;
    wire [6:0] i_arrayidx929_kernel_3mm0_narrow_x_b;
    wire [8:0] i_arrayidx929_kernel_3mm0_shift_join_x_q;
    wire [9:0] i_arrayidx929_kernel_3mm0_dupName_0_add_x_a;
    wire [9:0] i_arrayidx929_kernel_3mm0_dupName_0_add_x_b;
    logic [9:0] i_arrayidx929_kernel_3mm0_dupName_0_add_x_o;
    wire [9:0] i_arrayidx929_kernel_3mm0_dupName_0_add_x_q;
    wire [17:0] i_arrayidx929_kernel_3mm0_mult_extender_x_q;
    wire [8:0] i_arrayidx929_kernel_3mm0_dupName_1_trunc_sel_x_b;
    wire [8:0] i_arrayidx929_kernel_3mm0_dupName_2_trunc_sel_x_b;
    wire [8:0] i_arrayidx929_kernel_3mm0_dupName_3_trunc_sel_x_b;
    wire [8:0] i_arrayidx929_kernel_3mm0_dupName_5_trunc_sel_x_b;
    wire [63:0] i_idxprom87_kernel_3mm10_sel_x_b;
    wire [0:0] i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b12_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b12_current_iter_isreal_kernel_3mm4_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b12_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b12_current_iter_isreal_kernel_3mm4_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp26111_pop84_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp26111_pop84_kernel_3mm42_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_notcmp26111_pop84_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp26111_pop84_kernel_3mm42_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp3193_pop79_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp3193_pop79_kernel_3mm36_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_notcmp3193_pop79_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp3193_pop79_kernel_3mm36_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_k_249_pop77_kernel_3mm0_i_llvm_fpga_pop_i32_k_249_pop77_kernel_3mm9_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_k_249_pop77_kernel_3mm0_i_llvm_fpga_pop_i32_k_249_pop77_kernel_3mm9_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_tmp77_050_pop76_kernel_3mm0_i_llvm_fpga_pop_i32_tmp77_050_pop76_kernel_3mm20_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_tmp77_050_pop76_kernel_3mm0_i_llvm_fpga_pop_i32_tmp77_050_pop76_kernel_3mm20_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i5_fpga_indvars_iv17_pop75_kernel_3mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv17_pop75_kernel_3mm23_mux_x_s;
    reg [4:0] i_llvm_fpga_pop_i5_fpga_indvars_iv17_pop75_kernel_3mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv17_pop75_kernel_3mm23_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i64_idxprom78108_pop81_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom78108_pop81_kernel_3mm11_mux_x_s;
    reg [63:0] i_llvm_fpga_pop_i64_idxprom78108_pop81_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom78108_pop81_kernel_3mm11_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i64_idxprom80109_pop82_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom80109_pop82_kernel_3mm15_mux_x_s;
    reg [63:0] i_llvm_fpga_pop_i64_idxprom80109_pop82_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom80109_pop82_kernel_3mm15_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm0_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm40_mux_x_s;
    reg [63:0] i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm0_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm40_mux_x_q;
    wire [6:0] i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_c_i7_03_x_q;
    wire [7:0] i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm1_x_i_valid;
    wire i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm1_x_i_stall;
    wire i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q;
    wire [0:0] i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_notcmp26111_push84_kernel_3mm0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_notcmp26111_push84_kernel_3mm0_i_llvm_fpga_push_i1_notcmp26111_push84_kernel_3mm1_x_i_valid;
    wire i_llvm_fpga_push_i1_notcmp26111_push84_kernel_3mm0_i_llvm_fpga_push_i1_notcmp26111_push84_kernel_3mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_notcmp26111_push84_kernel_3mm0_i_llvm_fpga_push_i1_notcmp26111_push84_kernel_3mm1_x_i_stall;
    wire i_llvm_fpga_push_i1_notcmp26111_push84_kernel_3mm0_i_llvm_fpga_push_i1_notcmp26111_push84_kernel_3mm1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_notcmp26111_push84_kernel_3mm0_i_llvm_fpga_push_i1_notcmp26111_push84_kernel_3mm1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_notcmp26111_push84_kernel_3mm0_i_llvm_fpga_push_i1_notcmp26111_push84_kernel_3mm1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_notcmp26111_push84_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_notcmp3193_push79_kernel_3mm0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_notcmp3193_push79_kernel_3mm0_i_llvm_fpga_push_i1_notcmp3193_push79_kernel_3mm1_x_i_valid;
    wire i_llvm_fpga_push_i1_notcmp3193_push79_kernel_3mm0_i_llvm_fpga_push_i1_notcmp3193_push79_kernel_3mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_notcmp3193_push79_kernel_3mm0_i_llvm_fpga_push_i1_notcmp3193_push79_kernel_3mm1_x_i_stall;
    wire i_llvm_fpga_push_i1_notcmp3193_push79_kernel_3mm0_i_llvm_fpga_push_i1_notcmp3193_push79_kernel_3mm1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_notcmp3193_push79_kernel_3mm0_i_llvm_fpga_push_i1_notcmp3193_push79_kernel_3mm1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_notcmp3193_push79_kernel_3mm0_i_llvm_fpga_push_i1_notcmp3193_push79_kernel_3mm1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_notcmp3193_push79_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
    wire [0:0] i_llvm_fpga_push_i32_k_249_push77_kernel_3mm0_i_llvm_fpga_push_i32_k_249_push77_kernel_3mm1_x_i_valid;
    wire i_llvm_fpga_push_i32_k_249_push77_kernel_3mm0_i_llvm_fpga_push_i32_k_249_push77_kernel_3mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_k_249_push77_kernel_3mm0_i_llvm_fpga_push_i32_k_249_push77_kernel_3mm1_x_i_stall;
    wire i_llvm_fpga_push_i32_k_249_push77_kernel_3mm0_i_llvm_fpga_push_i32_k_249_push77_kernel_3mm1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_k_249_push77_kernel_3mm0_i_llvm_fpga_push_i32_k_249_push77_kernel_3mm1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_k_249_push77_kernel_3mm0_i_llvm_fpga_push_i32_k_249_push77_kernel_3mm1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i32_tmp77_050_push76_kernel_3mm0_i_llvm_fpga_push_i32_tmp77_050_push76_kernel_3mm1_x_i_valid;
    wire i_llvm_fpga_push_i32_tmp77_050_push76_kernel_3mm0_i_llvm_fpga_push_i32_tmp77_050_push76_kernel_3mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_tmp77_050_push76_kernel_3mm0_i_llvm_fpga_push_i32_tmp77_050_push76_kernel_3mm1_x_i_stall;
    wire i_llvm_fpga_push_i32_tmp77_050_push76_kernel_3mm0_i_llvm_fpga_push_i32_tmp77_050_push76_kernel_3mm1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_tmp77_050_push76_kernel_3mm0_i_llvm_fpga_push_i32_tmp77_050_push76_kernel_3mm1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_tmp77_050_push76_kernel_3mm0_i_llvm_fpga_push_i32_tmp77_050_push76_kernel_3mm1_x_o_data;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv17_push75_kernel_3mm0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv17_push75_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv17_push75_kernel_3mm1_x_i_valid;
    wire i_llvm_fpga_push_i5_fpga_indvars_iv17_push75_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv17_push75_kernel_3mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv17_push75_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv17_push75_kernel_3mm1_x_i_stall;
    wire i_llvm_fpga_push_i5_fpga_indvars_iv17_push75_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv17_push75_kernel_3mm1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv17_push75_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv17_push75_kernel_3mm1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv17_push75_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv17_push75_kernel_3mm1_x_o_data;
    wire [4:0] i_llvm_fpga_push_i5_fpga_indvars_iv17_push75_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
    wire [0:0] i_llvm_fpga_push_i64_idxprom78108_push81_kernel_3mm0_i_llvm_fpga_push_i64_idxprom78108_push81_kernel_3mm1_x_i_valid;
    wire i_llvm_fpga_push_i64_idxprom78108_push81_kernel_3mm0_i_llvm_fpga_push_i64_idxprom78108_push81_kernel_3mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i64_idxprom78108_push81_kernel_3mm0_i_llvm_fpga_push_i64_idxprom78108_push81_kernel_3mm1_x_i_stall;
    wire i_llvm_fpga_push_i64_idxprom78108_push81_kernel_3mm0_i_llvm_fpga_push_i64_idxprom78108_push81_kernel_3mm1_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_i64_idxprom78108_push81_kernel_3mm0_i_llvm_fpga_push_i64_idxprom78108_push81_kernel_3mm1_x_i_data;
    wire [63:0] i_llvm_fpga_push_i64_idxprom78108_push81_kernel_3mm0_i_llvm_fpga_push_i64_idxprom78108_push81_kernel_3mm1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i64_idxprom80109_push82_kernel_3mm0_i_llvm_fpga_push_i64_idxprom80109_push82_kernel_3mm1_x_i_valid;
    wire i_llvm_fpga_push_i64_idxprom80109_push82_kernel_3mm0_i_llvm_fpga_push_i64_idxprom80109_push82_kernel_3mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i64_idxprom80109_push82_kernel_3mm0_i_llvm_fpga_push_i64_idxprom80109_push82_kernel_3mm1_x_i_stall;
    wire i_llvm_fpga_push_i64_idxprom80109_push82_kernel_3mm0_i_llvm_fpga_push_i64_idxprom80109_push82_kernel_3mm1_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_i64_idxprom80109_push82_kernel_3mm0_i_llvm_fpga_push_i64_idxprom80109_push82_kernel_3mm1_x_i_data;
    wire [63:0] i_llvm_fpga_push_i64_idxprom80109_push82_kernel_3mm0_i_llvm_fpga_push_i64_idxprom80109_push82_kernel_3mm1_x_o_data;
    wire [0:0] i_llvm_fpga_push_p70i32_arrayidx817110_push83_kernel_3mm0_i_llvm_fpga_push_p70i32_arrayidx817110_push83_kernel_3mm1_x_i_valid;
    wire i_llvm_fpga_push_p70i32_arrayidx817110_push83_kernel_3mm0_i_llvm_fpga_push_p70i32_arrayidx817110_push83_kernel_3mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_p70i32_arrayidx817110_push83_kernel_3mm0_i_llvm_fpga_push_p70i32_arrayidx817110_push83_kernel_3mm1_x_i_stall;
    wire i_llvm_fpga_push_p70i32_arrayidx817110_push83_kernel_3mm0_i_llvm_fpga_push_p70i32_arrayidx817110_push83_kernel_3mm1_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_p70i32_arrayidx817110_push83_kernel_3mm0_i_llvm_fpga_push_p70i32_arrayidx817110_push83_kernel_3mm1_x_i_data;
    wire [63:0] i_llvm_fpga_push_p70i32_arrayidx817110_push83_kernel_3mm0_i_llvm_fpga_push_p70i32_arrayidx817110_push83_kernel_3mm1_x_o_data;
    wire [0:0] i_toi1_intcast4_kernel_3mm18_sel_x_b;
    wire [0:0] i_toi1_intcast_kernel_3mm14_sel_x_b;
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
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg27_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg28_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg33_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg34_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg36_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg37_q;
    wire [0:0] i_exitcond19_kernel_3mm24_cmp_nsign_q;
    wire [13:0] i_mul93_kernel_3mm19_bs1_b;
    wire [14:0] i_mul93_kernel_3mm19_bjA2_q;
    wire [13:0] i_mul93_kernel_3mm19_bs3_b;
    wire [14:0] i_mul93_kernel_3mm19_bjB4_q;
    wire [17:0] i_mul93_kernel_3mm19_bs6_in;
    wire [17:0] i_mul93_kernel_3mm19_bs6_b;
    wire [17:0] i_mul93_kernel_3mm19_bs9_in;
    wire [17:0] i_mul93_kernel_3mm19_bs9_b;
    wire [65:0] i_mul93_kernel_3mm19_sums_join_0_q;
    wire [50:0] i_mul93_kernel_3mm19_sums_align_1_q;
    wire [50:0] i_mul93_kernel_3mm19_sums_align_1_qint;
    wire [66:0] i_mul93_kernel_3mm19_sums_result_add_0_0_a;
    wire [66:0] i_mul93_kernel_3mm19_sums_result_add_0_0_b;
    logic [66:0] i_mul93_kernel_3mm19_sums_result_add_0_0_o;
    wire [66:0] i_mul93_kernel_3mm19_sums_result_add_0_0_q;
    wire [9:0] addsumAHighB_uid280_i_arrayidx888_kernel_3mm0_mult_x_a;
    wire [9:0] addsumAHighB_uid280_i_arrayidx888_kernel_3mm0_mult_x_b;
    logic [9:0] addsumAHighB_uid280_i_arrayidx888_kernel_3mm0_mult_x_o;
    wire [9:0] addsumAHighB_uid280_i_arrayidx888_kernel_3mm0_mult_x_q;
    wire [11:0] add_uid281_i_arrayidx888_kernel_3mm0_mult_x_q;
    wire [14:0] sR_mergedSignalTM_uid286_i_arrayidx888_kernel_3mm0_mult_x_q;
    wire [1:0] lowRangeB_uid324_i_arrayidx929_kernel_3mm0_mult_x_in;
    wire [1:0] lowRangeB_uid324_i_arrayidx929_kernel_3mm0_mult_x_b;
    wire [6:0] highBBits_uid325_i_arrayidx929_kernel_3mm0_mult_x_b;
    wire [9:0] addsumAHighB_uid326_i_arrayidx929_kernel_3mm0_mult_x_a;
    wire [9:0] addsumAHighB_uid326_i_arrayidx929_kernel_3mm0_mult_x_b;
    logic [9:0] addsumAHighB_uid326_i_arrayidx929_kernel_3mm0_mult_x_o;
    wire [9:0] addsumAHighB_uid326_i_arrayidx929_kernel_3mm0_mult_x_q;
    wire [11:0] add_uid327_i_arrayidx929_kernel_3mm0_mult_x_q;
    wire [14:0] sR_mergedSignalTM_uid332_i_arrayidx929_kernel_3mm0_mult_x_q;
    wire i_mul93_kernel_3mm19_im0_cma_reset;
    (* preserve_syn_only *) reg signed [14:0] i_mul93_kernel_3mm19_im0_cma_ah [0:0];
    (* preserve_syn_only *) reg signed [14:0] i_mul93_kernel_3mm19_im0_cma_ch [0:0];
    wire [14:0] i_mul93_kernel_3mm19_im0_cma_a0;
    wire [14:0] i_mul93_kernel_3mm19_im0_cma_c0;
    wire [29:0] i_mul93_kernel_3mm19_im0_cma_s0;
    wire [29:0] i_mul93_kernel_3mm19_im0_cma_qq;
    reg [29:0] i_mul93_kernel_3mm19_im0_cma_q;
    wire i_mul93_kernel_3mm19_im0_cma_ena0;
    wire i_mul93_kernel_3mm19_im0_cma_ena1;
    wire i_mul93_kernel_3mm19_im0_cma_ena2;
    wire i_mul93_kernel_3mm19_im10_cma_reset;
    (* preserve_syn_only *) reg [17:0] i_mul93_kernel_3mm19_im10_cma_ah [0:0];
    (* preserve_syn_only *) reg [17:0] i_mul93_kernel_3mm19_im10_cma_ch [0:0];
    wire [17:0] i_mul93_kernel_3mm19_im10_cma_a0;
    wire [17:0] i_mul93_kernel_3mm19_im10_cma_c0;
    wire [35:0] i_mul93_kernel_3mm19_im10_cma_s0;
    wire [35:0] i_mul93_kernel_3mm19_im10_cma_qq;
    reg [35:0] i_mul93_kernel_3mm19_im10_cma_q;
    wire i_mul93_kernel_3mm19_im10_cma_ena0;
    wire i_mul93_kernel_3mm19_im10_cma_ena1;
    wire i_mul93_kernel_3mm19_im10_cma_ena2;
    wire i_mul93_kernel_3mm19_ma5_cma_reset;
    (* preserve_syn_only *) reg [13:0] i_mul93_kernel_3mm19_ma5_cma_ah [0:1];
    (* preserve_syn_only *) reg [17:0] i_mul93_kernel_3mm19_ma5_cma_ch [0:1];
    wire [13:0] i_mul93_kernel_3mm19_ma5_cma_a0;
    wire [17:0] i_mul93_kernel_3mm19_ma5_cma_c0;
    wire [13:0] i_mul93_kernel_3mm19_ma5_cma_a1;
    wire [17:0] i_mul93_kernel_3mm19_ma5_cma_c1;
    wire [32:0] i_mul93_kernel_3mm19_ma5_cma_s0;
    wire [32:0] i_mul93_kernel_3mm19_ma5_cma_qq;
    reg [32:0] i_mul93_kernel_3mm19_ma5_cma_q;
    wire i_mul93_kernel_3mm19_ma5_cma_ena0;
    wire i_mul93_kernel_3mm19_ma5_cma_ena1;
    wire i_mul93_kernel_3mm19_ma5_cma_ena2;
    wire [54:0] i_arrayidx888_kernel_3mm0_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx888_kernel_3mm0_upper_bits_x_merged_bit_select_c;
    wire [54:0] i_arrayidx929_kernel_3mm0_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx929_kernel_3mm0_upper_bits_x_merged_bit_select_c;
    wire [1:0] lowRangeB_uid278_i_arrayidx888_kernel_3mm0_mult_x_merged_bit_select_b;
    wire [6:0] lowRangeB_uid278_i_arrayidx888_kernel_3mm0_mult_x_merged_bit_select_c;
    reg [54:0] redist0_i_arrayidx929_kernel_3mm0_upper_bits_x_merged_bit_select_b_1_q;
    reg [54:0] redist1_i_arrayidx888_kernel_3mm0_upper_bits_x_merged_bit_select_b_1_q;
    reg [32:0] redist2_i_mul93_kernel_3mm19_ma5_cma_q_1_q;
    reg [35:0] redist3_i_mul93_kernel_3mm19_im10_cma_q_1_q;
    reg [29:0] redist4_i_mul93_kernel_3mm19_im0_cma_q_1_q;
    reg [0:0] redist5_i_exitcond19_kernel_3mm24_cmp_nsign_q_14_q;
    reg [63:0] redist6_sync_together109_aunroll_x_in_c0_eni13573_2_tpl_4_q;
    reg [63:0] redist6_sync_together109_aunroll_x_in_c0_eni13573_2_tpl_4_delay_0;
    reg [63:0] redist6_sync_together109_aunroll_x_in_c0_eni13573_2_tpl_4_delay_1;
    reg [63:0] redist7_sync_together109_aunroll_x_in_c0_eni13573_3_tpl_4_q;
    reg [63:0] redist7_sync_together109_aunroll_x_in_c0_eni13573_3_tpl_4_delay_0;
    reg [63:0] redist7_sync_together109_aunroll_x_in_c0_eni13573_3_tpl_4_delay_1;
    reg [0:0] redist9_sync_together109_aunroll_x_in_c0_eni13573_6_tpl_17_q;
    reg [63:0] redist10_sync_together109_aunroll_x_in_c0_eni13573_8_tpl_4_q;
    reg [63:0] redist10_sync_together109_aunroll_x_in_c0_eni13573_8_tpl_4_delay_0;
    reg [63:0] redist10_sync_together109_aunroll_x_in_c0_eni13573_8_tpl_4_delay_1;
    reg [0:0] redist11_sync_together109_aunroll_x_in_c0_eni13573_9_tpl_17_q;
    reg [0:0] redist12_sync_together109_aunroll_x_in_c0_eni13573_10_tpl_18_q;
    reg [0:0] redist13_sync_together109_aunroll_x_in_c0_eni13573_11_tpl_18_q;
    reg [0:0] redist15_sync_together109_aunroll_x_in_c0_eni13573_13_tpl_18_q;
    reg [0:0] redist16_sync_together109_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist16_sync_together109_aunroll_x_in_i_valid_2_delay_0;
    reg [0:0] redist17_sync_together109_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist18_sync_together109_aunroll_x_in_i_valid_5_q;
    reg [0:0] redist18_sync_together109_aunroll_x_in_i_valid_5_delay_0;
    reg [0:0] redist19_sync_together109_aunroll_x_in_i_valid_13_q;
    reg [0:0] redist20_sync_together109_aunroll_x_in_i_valid_16_q;
    reg [0:0] redist20_sync_together109_aunroll_x_in_i_valid_16_delay_0;
    reg [0:0] redist20_sync_together109_aunroll_x_in_i_valid_16_delay_1;
    reg [0:0] redist21_sync_together109_aunroll_x_in_i_valid_17_q;
    reg [0:0] redist22_i_toi1_intcast_kernel_3mm14_sel_x_b_8_q;
    reg [0:0] redist23_i_toi1_intcast4_kernel_3mm18_sel_x_b_8_q;
    reg [0:0] redist24_i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q_2_q;
    reg [0:0] redist24_i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q_2_delay_0;
    reg [0:0] redist25_i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q_13_q;
    reg [0:0] redist26_i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q_16_q;
    reg [0:0] redist26_i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q_16_delay_0;
    reg [0:0] redist26_i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q_16_delay_1;
    reg [0:0] redist28_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b12_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b12_current_iter_isreal_kernel_3mm4_mux_x_q_2_q;
    reg [0:0] redist28_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b12_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b12_current_iter_isreal_kernel_3mm4_mux_x_q_2_delay_0;
    reg [8:0] redist29_i_arrayidx929_kernel_3mm0_dupName_2_trunc_sel_x_b_1_q;
    reg [8:0] redist30_i_arrayidx929_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q;
    reg [6:0] redist31_i_arrayidx929_kernel_3mm0_narrow_x_b_2_q;
    reg [6:0] redist31_i_arrayidx929_kernel_3mm0_narrow_x_b_2_delay_0;
    reg [8:0] redist32_i_arrayidx888_kernel_3mm0_dupName_2_trunc_sel_x_b_1_q;
    reg [8:0] redist33_i_arrayidx888_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q;
    reg [6:0] redist34_i_arrayidx888_kernel_3mm0_narrow_x_b_2_q;
    reg [6:0] redist34_i_arrayidx888_kernel_3mm0_narrow_x_b_2_delay_0;
    reg [31:0] redist35_bgTrunc_i_mul93_kernel_3mm19_sel_x_b_1_q;
    reg [0:0] redist36_i_llvm_fpga_forked_kernel_3mm_b12_forked_kernel_3mm3_out_buffer_out_4_q;
    reg [0:0] redist36_i_llvm_fpga_forked_kernel_3mm_b12_forked_kernel_3mm3_out_buffer_out_4_delay_0;
    reg [0:0] redist36_i_llvm_fpga_forked_kernel_3mm_b12_forked_kernel_3mm3_out_buffer_out_4_delay_1;
    reg [0:0] redist36_i_llvm_fpga_forked_kernel_3mm_b12_forked_kernel_3mm3_out_buffer_out_4_delay_2;
    reg [0:0] redist37_i_llvm_fpga_forked_kernel_3mm_b12_forked_kernel_3mm3_out_buffer_out_17_q;
    reg [0:0] redist38_i_llvm_fpga_dummy_thread_kernel_3mm_b12_dummy_kernel_3mm2_out_dummy_out_4_q;
    reg [0:0] redist38_i_llvm_fpga_dummy_thread_kernel_3mm_b12_dummy_kernel_3mm2_out_dummy_out_4_delay_0;
    reg [0:0] redist38_i_llvm_fpga_dummy_thread_kernel_3mm_b12_dummy_kernel_3mm2_out_dummy_out_4_delay_1;
    reg [0:0] redist38_i_llvm_fpga_dummy_thread_kernel_3mm_b12_dummy_kernel_3mm2_out_dummy_out_4_delay_2;
    reg [0:0] redist39_i_kernel_3mm_b12_current_iter_isspec_kernel_3mm5_q_12_q;
    reg [63:0] redist6_sync_together109_aunroll_x_in_c0_eni13573_2_tpl_4_inputreg0_q;
    reg [63:0] redist7_sync_together109_aunroll_x_in_c0_eni13573_3_tpl_4_inputreg0_q;
    reg [31:0] redist8_sync_together109_aunroll_x_in_c0_eni13573_4_tpl_17_inputreg0_q;
    reg [31:0] redist8_sync_together109_aunroll_x_in_c0_eni13573_4_tpl_17_outputreg0_q;
    wire redist8_sync_together109_aunroll_x_in_c0_eni13573_4_tpl_17_mem_reset0;
    wire [31:0] redist8_sync_together109_aunroll_x_in_c0_eni13573_4_tpl_17_mem_ia;
    wire [3:0] redist8_sync_together109_aunroll_x_in_c0_eni13573_4_tpl_17_mem_aa;
    wire [3:0] redist8_sync_together109_aunroll_x_in_c0_eni13573_4_tpl_17_mem_ab;
    wire [31:0] redist8_sync_together109_aunroll_x_in_c0_eni13573_4_tpl_17_mem_iq;
    wire [31:0] redist8_sync_together109_aunroll_x_in_c0_eni13573_4_tpl_17_mem_q;
    wire [3:0] redist8_sync_together109_aunroll_x_in_c0_eni13573_4_tpl_17_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist8_sync_together109_aunroll_x_in_c0_eni13573_4_tpl_17_wraddr_i = 4'b1111;
    wire [3:0] redist8_sync_together109_aunroll_x_in_c0_eni13573_4_tpl_17_offset_q;
    wire [4:0] redist8_sync_together109_aunroll_x_in_c0_eni13573_4_tpl_17_rdcnt_a;
    wire [4:0] redist8_sync_together109_aunroll_x_in_c0_eni13573_4_tpl_17_rdcnt_b;
    logic [4:0] redist8_sync_together109_aunroll_x_in_c0_eni13573_4_tpl_17_rdcnt_o;
    wire [4:0] redist8_sync_together109_aunroll_x_in_c0_eni13573_4_tpl_17_rdcnt_q;
    reg [63:0] redist10_sync_together109_aunroll_x_in_c0_eni13573_8_tpl_4_inputreg0_q;
    reg [31:0] redist14_sync_together109_aunroll_x_in_c0_eni13573_12_tpl_18_inputreg0_q;
    reg [31:0] redist14_sync_together109_aunroll_x_in_c0_eni13573_12_tpl_18_outputreg0_q;
    wire redist14_sync_together109_aunroll_x_in_c0_eni13573_12_tpl_18_mem_reset0;
    wire [31:0] redist14_sync_together109_aunroll_x_in_c0_eni13573_12_tpl_18_mem_ia;
    wire [3:0] redist14_sync_together109_aunroll_x_in_c0_eni13573_12_tpl_18_mem_aa;
    wire [3:0] redist14_sync_together109_aunroll_x_in_c0_eni13573_12_tpl_18_mem_ab;
    wire [31:0] redist14_sync_together109_aunroll_x_in_c0_eni13573_12_tpl_18_mem_iq;
    wire [31:0] redist14_sync_together109_aunroll_x_in_c0_eni13573_12_tpl_18_mem_q;
    wire [3:0] redist14_sync_together109_aunroll_x_in_c0_eni13573_12_tpl_18_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist14_sync_together109_aunroll_x_in_c0_eni13573_12_tpl_18_wraddr_i = 4'b1111;
    wire [3:0] redist14_sync_together109_aunroll_x_in_c0_eni13573_12_tpl_18_offset_q;
    wire [4:0] redist14_sync_together109_aunroll_x_in_c0_eni13573_12_tpl_18_rdcnt_a;
    wire [4:0] redist14_sync_together109_aunroll_x_in_c0_eni13573_12_tpl_18_rdcnt_b;
    logic [4:0] redist14_sync_together109_aunroll_x_in_c0_eni13573_12_tpl_18_rdcnt_o;
    wire [4:0] redist14_sync_together109_aunroll_x_in_c0_eni13573_12_tpl_18_rdcnt_q;
    reg [63:0] redist27_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm0_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm40_mux_x_q_14_inputreg0_q;
    reg [63:0] redist27_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm0_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm40_mux_x_q_14_outputreg0_q;
    wire redist27_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm0_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm40_mux_x_q_14_mem_reset0;
    wire [63:0] redist27_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm0_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm40_mux_x_q_14_mem_ia;
    wire [3:0] redist27_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm0_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm40_mux_x_q_14_mem_aa;
    wire [3:0] redist27_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm0_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm40_mux_x_q_14_mem_ab;
    wire [63:0] redist27_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm0_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm40_mux_x_q_14_mem_iq;
    wire [63:0] redist27_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm0_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm40_mux_x_q_14_mem_q;
    wire [3:0] redist27_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm0_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm40_mux_x_q_14_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist27_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm0_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm40_mux_x_q_14_wraddr_i = 4'b1111;
    wire [3:0] redist27_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm0_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm40_mux_x_q_14_offset_q;
    wire [4:0] redist27_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm0_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm40_mux_x_q_14_rdcnt_a;
    wire [4:0] redist27_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm0_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm40_mux_x_q_14_rdcnt_b;
    logic [4:0] redist27_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm0_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm40_mux_x_q_14_rdcnt_o;
    wire [4:0] redist27_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm0_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm40_mux_x_q_14_rdcnt_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist16_sync_together109_aunroll_x_in_i_valid_2(DELAY,384)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist16_sync_together109_aunroll_x_in_i_valid_2_delay_0 <= '0;
        end
        else
        begin
            redist16_sync_together109_aunroll_x_in_i_valid_2_delay_0 <= $unsigned(in_i_valid);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist16_sync_together109_aunroll_x_in_i_valid_2_q <= redist16_sync_together109_aunroll_x_in_i_valid_2_delay_0;
        end
    end

    // redist17_sync_together109_aunroll_x_in_i_valid_3(DELAY,385)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist17_sync_together109_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist17_sync_together109_aunroll_x_in_i_valid_3_q <= $unsigned(redist16_sync_together109_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist18_sync_together109_aunroll_x_in_i_valid_5(DELAY,386)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist18_sync_together109_aunroll_x_in_i_valid_5_delay_0 <= $unsigned(redist17_sync_together109_aunroll_x_in_i_valid_3_q);
        end
    end
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist18_sync_together109_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist18_sync_together109_aunroll_x_in_i_valid_5_q <= redist18_sync_together109_aunroll_x_in_i_valid_5_delay_0;
        end
    end

    // valid_fanout_reg7(REG,209)@5 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist18_sync_together109_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_c_i7_03_x(CONSTANT,160)
    assign i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_c_i7_03_x_q = $unsigned(7'b0000000);

    // valid_fanout_reg2(REG,204)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist17_sync_together109_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg20(REG,222)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg20_q <= $unsigned(redist17_sync_together109_aunroll_x_in_i_valid_3_q);
        end
    end

    // c_i5_8101(CONSTANT,56)
    assign c_i5_8101_q = $unsigned(5'b01000);

    // i_arrayidx888_kernel_3mm0_mult_multconst_x(CONSTANT,118)
    assign i_arrayidx888_kernel_3mm0_mult_multconst_x_q = $unsigned(3'b000);

    // c_i5_1103(CONSTANT,55)
    assign c_i5_1103_q = $unsigned(5'b11111);

    // i_fpga_indvars_iv_next18_kernel_3mm32(ADD,69)@4
    assign i_fpga_indvars_iv_next18_kernel_3mm32_a = {1'b0, i_llvm_fpga_pop_i5_fpga_indvars_iv17_pop75_kernel_3mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv17_pop75_kernel_3mm23_mux_x_q};
    assign i_fpga_indvars_iv_next18_kernel_3mm32_b = {1'b0, c_i5_1103_q};
    assign i_fpga_indvars_iv_next18_kernel_3mm32_o = $unsigned(i_fpga_indvars_iv_next18_kernel_3mm32_a) + $unsigned(i_fpga_indvars_iv_next18_kernel_3mm32_b);
    assign i_fpga_indvars_iv_next18_kernel_3mm32_q = i_fpga_indvars_iv_next18_kernel_3mm32_o[5:0];

    // bgTrunc_i_fpga_indvars_iv_next18_kernel_3mm32_sel_x(BITSELECT,92)@4
    assign bgTrunc_i_fpga_indvars_iv_next18_kernel_3mm32_sel_x_b = i_fpga_indvars_iv_next18_kernel_3mm32_q[4:0];

    // i_llvm_fpga_push_i5_fpga_indvars_iv17_push75_kernel_3mm0_element_extension2_x(BITJOIN,185)@4
    assign i_llvm_fpga_push_i5_fpga_indvars_iv17_push75_kernel_3mm0_element_extension2_x_q = {i_arrayidx888_kernel_3mm0_mult_multconst_x_q, bgTrunc_i_fpga_indvars_iv_next18_kernel_3mm32_sel_x_b};

    // valid_fanout_reg22(REG,224)@0 + 1
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

    // valid_fanout_reg21(REG,223)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg21_q <= $unsigned(redist16_sync_together109_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i5_fpga_indvars_iv17_push75_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv17_push75_kernel_3mm1_x(FIFODELAY,186)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i5_fpga_indvars_iv17_push75_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv17_push75_kernel_3mm1_x_i_stall = ~ (valid_fanout_reg22_q & i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q);
    assign i_llvm_fpga_push_i5_fpga_indvars_iv17_push75_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv17_push75_kernel_3mm1_x_i_valid = valid_fanout_reg21_q & redist24_i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i5_fpga_indvars_iv17_push75_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv17_push75_kernel_3mm1_x_i_data = i_llvm_fpga_push_i5_fpga_indvars_iv17_push75_kernel_3mm0_element_extension2_x_q;
    assign i_llvm_fpga_push_i5_fpga_indvars_iv17_push75_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv17_push75_kernel_3mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i5_fpga_indvars_iv17_push75_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv17_push75_kernel_3mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i5_fpga_indvars_iv17_push75_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv17_push75_kernel_3mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i5_fpga_indvars_iv17_push75_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv17_push75_kernel_3mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i5_fpga_indvars_iv17_push75_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv17_push75_kernel_3mm1_x (
        .i_valid(i_llvm_fpga_push_i5_fpga_indvars_iv17_push75_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv17_push75_kernel_3mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i5_fpga_indvars_iv17_push75_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv17_push75_kernel_3mm1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i5_fpga_indvars_iv17_push75_kernel_3mm0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i5_fpga_indvars_iv17_push75_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv17_push75_kernel_3mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i5_fpga_indvars_iv17_push75_kernel_3mm0_adapt_scalar_trunc4_sel_x(BITSELECT,188)@4
    assign i_llvm_fpga_push_i5_fpga_indvars_iv17_push75_kernel_3mm0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i5_fpga_indvars_iv17_push75_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv17_push75_kernel_3mm1_x_o_data[4:0];

    // i_llvm_fpga_pop_i5_fpga_indvars_iv17_pop75_kernel_3mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv17_pop75_kernel_3mm23_mux_x(MUX,155)@4
    assign i_llvm_fpga_pop_i5_fpga_indvars_iv17_pop75_kernel_3mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv17_pop75_kernel_3mm23_mux_x_s = redist36_i_llvm_fpga_forked_kernel_3mm_b12_forked_kernel_3mm3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i5_fpga_indvars_iv17_pop75_kernel_3mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv17_pop75_kernel_3mm23_mux_x_s or i_llvm_fpga_push_i5_fpga_indvars_iv17_push75_kernel_3mm0_adapt_scalar_trunc4_sel_x_b or c_i5_8101_q)
    begin
        unique case (i_llvm_fpga_pop_i5_fpga_indvars_iv17_pop75_kernel_3mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv17_pop75_kernel_3mm23_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i5_fpga_indvars_iv17_pop75_kernel_3mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv17_pop75_kernel_3mm23_mux_x_q = i_llvm_fpga_push_i5_fpga_indvars_iv17_push75_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i5_fpga_indvars_iv17_pop75_kernel_3mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv17_pop75_kernel_3mm23_mux_x_q = c_i5_8101_q;
            default : i_llvm_fpga_pop_i5_fpga_indvars_iv17_pop75_kernel_3mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv17_pop75_kernel_3mm23_mux_x_q = 5'b0;
        endcase
    end

    // i_exitcond19_kernel_3mm24_cmp_nsign(LOGICAL,252)@4
    assign i_exitcond19_kernel_3mm24_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i5_fpga_indvars_iv17_pop75_kernel_3mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv17_pop75_kernel_3mm23_mux_x_q[4:4]));

    // i_llvm_fpga_push_i1_notexitcond_kernel_3mm31(BLACKBOX,82)@4
    // in in_empty_in@20000000
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    kernel_3mm_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_kernel_3mm31 (
        .in_almost_empty_in(GND_q),
        .in_data_in(i_exitcond19_kernel_3mm24_cmp_nsign_q),
        .in_empty_in(GND_q),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_kernel_3mm6_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_notexitcond_kernel_3mm31_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_notexitcond_kernel_3mm31_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_dummy_thread_kernel_3mm_b12_dummy_kernel_3mm2(BLACKBOX,77)@0
    // in in_stall_in@20000000
    kernel_3mm_i_llvm_fpga_dummy_thread_b12_dummy_kernel_3mm0 thei_llvm_fpga_dummy_thread_kernel_3mm_b12_dummy_kernel_3mm2 (
        .in_dummy_in(in_dummy_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dummy_out(i_llvm_fpga_dummy_thread_kernel_3mm_b12_dummy_kernel_3mm2_out_dummy_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist38_i_llvm_fpga_dummy_thread_kernel_3mm_b12_dummy_kernel_3mm2_out_dummy_out_4(DELAY,406)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist38_i_llvm_fpga_dummy_thread_kernel_3mm_b12_dummy_kernel_3mm2_out_dummy_out_4_delay_0 <= $unsigned(i_llvm_fpga_dummy_thread_kernel_3mm_b12_dummy_kernel_3mm2_out_dummy_out);
            redist38_i_llvm_fpga_dummy_thread_kernel_3mm_b12_dummy_kernel_3mm2_out_dummy_out_4_delay_1 <= redist38_i_llvm_fpga_dummy_thread_kernel_3mm_b12_dummy_kernel_3mm2_out_dummy_out_4_delay_0;
            redist38_i_llvm_fpga_dummy_thread_kernel_3mm_b12_dummy_kernel_3mm2_out_dummy_out_4_delay_2 <= redist38_i_llvm_fpga_dummy_thread_kernel_3mm_b12_dummy_kernel_3mm2_out_dummy_out_4_delay_1;
            redist38_i_llvm_fpga_dummy_thread_kernel_3mm_b12_dummy_kernel_3mm2_out_dummy_out_4_q <= redist38_i_llvm_fpga_dummy_thread_kernel_3mm_b12_dummy_kernel_3mm2_out_dummy_out_4_delay_2;
        end
    end

    // i_llvm_fpga_pipeline_keep_going_kernel_3mm6(BLACKBOX,81)@4
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_dummy_out@20000000
    // out out_pipeline_forked_out@20000000
    // out out_pipeline_valid_out@20000000
    kernel_3mm_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_kernel_3mm6 (
        .in_data_in(redist36_i_llvm_fpga_forked_kernel_3mm_b12_forked_kernel_3mm3_out_buffer_out_4_q),
        .in_dummy_in(redist38_i_llvm_fpga_dummy_thread_kernel_3mm_b12_dummy_kernel_3mm2_out_dummy_out_4_q),
        .in_forked_in(redist36_i_llvm_fpga_forked_kernel_3mm_b12_forked_kernel_3mm3_out_buffer_out_4_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_kernel_3mm31_out_feedback_out_2),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_kernel_3mm31_out_feedback_valid_out_2),
        .in_pipeline_stall_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_kernel_3mm6_out_data_out),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_kernel_3mm6_out_exiting_valid_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_kernel_3mm6_out_not_exitcond_stall_out),
        .out_pipeline_dummy_out(i_llvm_fpga_pipeline_keep_going_kernel_3mm6_out_pipeline_dummy_out),
        .out_pipeline_forked_out(i_llvm_fpga_pipeline_keep_going_kernel_3mm6_out_pipeline_forked_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_kernel_3mm6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_kernel_3mm_b12_next_iter_isreal_kernel_3mm7(LOGICAL,76)@4
    assign i_kernel_3mm_b12_next_iter_isreal_kernel_3mm7_q = i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b12_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b12_current_iter_isreal_kernel_3mm4_mux_x_q & i_llvm_fpga_pipeline_keep_going_kernel_3mm6_out_data_out;

    // i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_element_extension2_x(BITJOIN,161)@4
    assign i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_element_extension2_x_q = {i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_c_i7_03_x_q, i_kernel_3mm_b12_next_iter_isreal_kernel_3mm7_q};

    // i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_inv_pred_x(LOGICAL,163)@1
    assign i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q = ~ (GND_q);

    // valid_fanout_reg4(REG,206)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(in_i_valid);
        end
    end

    // redist24_i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q_2(DELAY,392)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist24_i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q_2_delay_0 <= $unsigned(i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q);
            redist24_i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q_2_q <= redist24_i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q_2_delay_0;
        end
    end

    // valid_fanout_reg3(REG,205)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist16_sync_together109_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm1_x(FIFODELAY,162)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm1_x_i_stall = ~ (valid_fanout_reg4_q & i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm1_x_i_valid = valid_fanout_reg3_q & redist24_i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm1_x_i_data = i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm1_x (
        .i_valid(i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_adapt_scalar_trunc4_sel_x(BITSELECT,164)@4
    assign i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm1_x_o_data[0:0];

    // i_llvm_fpga_forked_kernel_3mm_b12_forked_kernel_3mm3(BLACKBOX,78)@0
    // in in_stall_in@20000000
    kernel_3mm_i_llvm_fpga_forked_b12_forked_kernel_3mm0 thei_llvm_fpga_forked_kernel_3mm_b12_forked_kernel_3mm3 (
        .in_buffer_in(in_buffer_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_buffer_out(i_llvm_fpga_forked_kernel_3mm_b12_forked_kernel_3mm3_out_buffer_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist36_i_llvm_fpga_forked_kernel_3mm_b12_forked_kernel_3mm3_out_buffer_out_4(DELAY,404)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist36_i_llvm_fpga_forked_kernel_3mm_b12_forked_kernel_3mm3_out_buffer_out_4_delay_0 <= $unsigned(i_llvm_fpga_forked_kernel_3mm_b12_forked_kernel_3mm3_out_buffer_out);
            redist36_i_llvm_fpga_forked_kernel_3mm_b12_forked_kernel_3mm3_out_buffer_out_4_delay_1 <= redist36_i_llvm_fpga_forked_kernel_3mm_b12_forked_kernel_3mm3_out_buffer_out_4_delay_0;
            redist36_i_llvm_fpga_forked_kernel_3mm_b12_forked_kernel_3mm3_out_buffer_out_4_delay_2 <= redist36_i_llvm_fpga_forked_kernel_3mm_b12_forked_kernel_3mm3_out_buffer_out_4_delay_1;
            redist36_i_llvm_fpga_forked_kernel_3mm_b12_forked_kernel_3mm3_out_buffer_out_4_q <= redist36_i_llvm_fpga_forked_kernel_3mm_b12_forked_kernel_3mm3_out_buffer_out_4_delay_2;
        end
    end

    // i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b12_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b12_current_iter_isreal_kernel_3mm4_mux_x(MUX,150)@4
    assign i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b12_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b12_current_iter_isreal_kernel_3mm4_mux_x_s = redist36_i_llvm_fpga_forked_kernel_3mm_b12_forked_kernel_3mm3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b12_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b12_current_iter_isreal_kernel_3mm4_mux_x_s or i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_adapt_scalar_trunc4_sel_x_b or VCC_q)
    begin
        unique case (i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b12_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b12_current_iter_isreal_kernel_3mm4_mux_x_s)
            1'b0 : i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b12_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b12_current_iter_isreal_kernel_3mm4_mux_x_q = i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b12_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b12_current_iter_isreal_kernel_3mm4_mux_x_q = VCC_q;
            default : i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b12_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b12_current_iter_isreal_kernel_3mm4_mux_x_q = 1'b0;
        endcase
    end

    // redist28_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b12_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b12_current_iter_isreal_kernel_3mm4_mux_x_q_2(DELAY,396)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist28_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b12_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b12_current_iter_isreal_kernel_3mm4_mux_x_q_2_delay_0 <= $unsigned(i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b12_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b12_current_iter_isreal_kernel_3mm4_mux_x_q);
            redist28_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b12_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b12_current_iter_isreal_kernel_3mm4_mux_x_q_2_q <= redist28_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b12_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b12_current_iter_isreal_kernel_3mm4_mux_x_q_2_delay_0;
        end
    end

    // i_kernel_3mm_b12_current_iter_isspec_kernel_3mm5(LOGICAL,75)@6
    assign i_kernel_3mm_b12_current_iter_isspec_kernel_3mm5_q = redist28_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b12_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b12_current_iter_isreal_kernel_3mm4_mux_x_q_2_q ^ VCC_q;

    // c_kernel_3mm_E_local_pmem(CONSTANT,57)
    assign c_kernel_3mm_E_local_pmem_q = $unsigned(64'b0100000001000100000000000000000000000000000000000000000000000000);

    // i_arrayidx888_kernel_3mm0_upper_bits_x_merged_bit_select(BITSELECT,365)@5
    assign i_arrayidx888_kernel_3mm0_upper_bits_x_merged_bit_select_b = c_kernel_3mm_E_local_pmem_q[63:9];
    assign i_arrayidx888_kernel_3mm0_upper_bits_x_merged_bit_select_c = c_kernel_3mm_E_local_pmem_q[8:0];

    // redist1_i_arrayidx888_kernel_3mm0_upper_bits_x_merged_bit_select_b_1(DELAY,369)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_i_arrayidx888_kernel_3mm0_upper_bits_x_merged_bit_select_b_1_q <= $unsigned(i_arrayidx888_kernel_3mm0_upper_bits_x_merged_bit_select_b);
        end
    end

    // c_i32_099(CONSTANT,53)
    assign c_i32_099_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i32_1100(CONSTANT,54)
    assign c_i32_1100_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc96_kernel_3mm22(ADD,74)@4
    assign i_inc96_kernel_3mm22_a = {1'b0, i_llvm_fpga_pop_i32_k_249_pop77_kernel_3mm0_i_llvm_fpga_pop_i32_k_249_pop77_kernel_3mm9_mux_x_q};
    assign i_inc96_kernel_3mm22_b = {1'b0, c_i32_1100_q};
    assign i_inc96_kernel_3mm22_o = $unsigned(i_inc96_kernel_3mm22_a) + $unsigned(i_inc96_kernel_3mm22_b);
    assign i_inc96_kernel_3mm22_q = i_inc96_kernel_3mm22_o[32:0];

    // bgTrunc_i_inc96_kernel_3mm22_sel_x(BITSELECT,93)@4
    assign bgTrunc_i_inc96_kernel_3mm22_sel_x_b = i_inc96_kernel_3mm22_q[31:0];

    // valid_fanout_reg17(REG,219)@0 + 1
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

    // valid_fanout_reg16(REG,218)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist16_sync_together109_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i32_k_249_push77_kernel_3mm0_i_llvm_fpga_push_i32_k_249_push77_kernel_3mm1_x(FIFODELAY,177)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i32_k_249_push77_kernel_3mm0_i_llvm_fpga_push_i32_k_249_push77_kernel_3mm1_x_i_stall = ~ (valid_fanout_reg17_q & i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q);
    assign i_llvm_fpga_push_i32_k_249_push77_kernel_3mm0_i_llvm_fpga_push_i32_k_249_push77_kernel_3mm1_x_i_valid = valid_fanout_reg16_q & redist24_i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i32_k_249_push77_kernel_3mm0_i_llvm_fpga_push_i32_k_249_push77_kernel_3mm1_x_i_data = bgTrunc_i_inc96_kernel_3mm22_sel_x_b;
    assign i_llvm_fpga_push_i32_k_249_push77_kernel_3mm0_i_llvm_fpga_push_i32_k_249_push77_kernel_3mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_k_249_push77_kernel_3mm0_i_llvm_fpga_push_i32_k_249_push77_kernel_3mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_k_249_push77_kernel_3mm0_i_llvm_fpga_push_i32_k_249_push77_kernel_3mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_k_249_push77_kernel_3mm0_i_llvm_fpga_push_i32_k_249_push77_kernel_3mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_k_249_push77_kernel_3mm0_i_llvm_fpga_push_i32_k_249_push77_kernel_3mm1_x (
        .i_valid(i_llvm_fpga_push_i32_k_249_push77_kernel_3mm0_i_llvm_fpga_push_i32_k_249_push77_kernel_3mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_k_249_push77_kernel_3mm0_i_llvm_fpga_push_i32_k_249_push77_kernel_3mm1_x_i_stall_bitsignaltemp),
        .i_data(bgTrunc_i_inc96_kernel_3mm22_sel_x_b),
        .o_data(i_llvm_fpga_push_i32_k_249_push77_kernel_3mm0_i_llvm_fpga_push_i32_k_249_push77_kernel_3mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_k_249_pop77_kernel_3mm0_i_llvm_fpga_pop_i32_k_249_pop77_kernel_3mm9_mux_x(MUX,153)@4
    assign i_llvm_fpga_pop_i32_k_249_pop77_kernel_3mm0_i_llvm_fpga_pop_i32_k_249_pop77_kernel_3mm9_mux_x_s = redist36_i_llvm_fpga_forked_kernel_3mm_b12_forked_kernel_3mm3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i32_k_249_pop77_kernel_3mm0_i_llvm_fpga_pop_i32_k_249_pop77_kernel_3mm9_mux_x_s or i_llvm_fpga_push_i32_k_249_push77_kernel_3mm0_i_llvm_fpga_push_i32_k_249_push77_kernel_3mm1_x_o_data or c_i32_099_q)
    begin
        unique case (i_llvm_fpga_pop_i32_k_249_pop77_kernel_3mm0_i_llvm_fpga_pop_i32_k_249_pop77_kernel_3mm9_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_k_249_pop77_kernel_3mm0_i_llvm_fpga_pop_i32_k_249_pop77_kernel_3mm9_mux_x_q = i_llvm_fpga_push_i32_k_249_push77_kernel_3mm0_i_llvm_fpga_push_i32_k_249_push77_kernel_3mm1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_k_249_pop77_kernel_3mm0_i_llvm_fpga_pop_i32_k_249_pop77_kernel_3mm9_mux_x_q = c_i32_099_q;
            default : i_llvm_fpga_pop_i32_k_249_pop77_kernel_3mm0_i_llvm_fpga_pop_i32_k_249_pop77_kernel_3mm9_mux_x_q = 32'b0;
        endcase
    end

    // i_idxprom87_kernel_3mm10_sel_x(BITSELECT,149)@4
    assign i_idxprom87_kernel_3mm10_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_k_249_pop77_kernel_3mm0_i_llvm_fpga_pop_i32_k_249_pop77_kernel_3mm9_mux_x_q[31:0]};

    // i_idxprom87_kernel_3mm10_vt_select_31(BITSELECT,73)@4
    assign i_idxprom87_kernel_3mm10_vt_select_31_b = i_idxprom87_kernel_3mm10_sel_x_b[31:0];

    // i_idxprom87_kernel_3mm10_vt_join(BITJOIN,72)@4
    assign i_idxprom87_kernel_3mm10_vt_join_q = {c_i32_099_q, i_idxprom87_kernel_3mm10_vt_select_31_b};

    // i_arrayidx888_kernel_3mm0_dupName_3_trunc_sel_x(BITSELECT,123)@4
    assign i_arrayidx888_kernel_3mm0_dupName_3_trunc_sel_x_b = i_idxprom87_kernel_3mm10_vt_join_q[8:0];

    // i_arrayidx888_kernel_3mm0_narrow_x(BITSELECT,106)@4
    assign i_arrayidx888_kernel_3mm0_narrow_x_b = i_arrayidx888_kernel_3mm0_dupName_3_trunc_sel_x_b[6:0];

    // redist34_i_arrayidx888_kernel_3mm0_narrow_x_b_2(DELAY,402)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist34_i_arrayidx888_kernel_3mm0_narrow_x_b_2_delay_0 <= $unsigned(i_arrayidx888_kernel_3mm0_narrow_x_b);
            redist34_i_arrayidx888_kernel_3mm0_narrow_x_b_2_q <= redist34_i_arrayidx888_kernel_3mm0_narrow_x_b_2_delay_0;
        end
    end

    // i_arrayidx888_kernel_3mm0_shift_join_x(BITJOIN,107)@6
    assign i_arrayidx888_kernel_3mm0_shift_join_x_q = {redist34_i_arrayidx888_kernel_3mm0_narrow_x_b_2_q, i_arrayidx888_kernel_3mm12_vt_const_1_q};

    // redist6_sync_together109_aunroll_x_in_c0_eni13573_2_tpl_4_inputreg0(DELAY,408)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_sync_together109_aunroll_x_in_c0_eni13573_2_tpl_4_inputreg0_q <= $unsigned(in_c0_eni13573_2_tpl);
        end
    end

    // redist6_sync_together109_aunroll_x_in_c0_eni13573_2_tpl_4(DELAY,374)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_sync_together109_aunroll_x_in_c0_eni13573_2_tpl_4_delay_0 <= $unsigned(redist6_sync_together109_aunroll_x_in_c0_eni13573_2_tpl_4_inputreg0_q);
            redist6_sync_together109_aunroll_x_in_c0_eni13573_2_tpl_4_delay_1 <= redist6_sync_together109_aunroll_x_in_c0_eni13573_2_tpl_4_delay_0;
            redist6_sync_together109_aunroll_x_in_c0_eni13573_2_tpl_4_q <= redist6_sync_together109_aunroll_x_in_c0_eni13573_2_tpl_4_delay_1;
        end
    end

    // valid_fanout_reg15(REG,217)@0 + 1
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

    // valid_fanout_reg14(REG,216)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist16_sync_together109_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i64_idxprom78108_push81_kernel_3mm0_i_llvm_fpga_push_i64_idxprom78108_push81_kernel_3mm1_x(FIFODELAY,189)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i64_idxprom78108_push81_kernel_3mm0_i_llvm_fpga_push_i64_idxprom78108_push81_kernel_3mm1_x_i_stall = ~ (valid_fanout_reg15_q & i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q);
    assign i_llvm_fpga_push_i64_idxprom78108_push81_kernel_3mm0_i_llvm_fpga_push_i64_idxprom78108_push81_kernel_3mm1_x_i_valid = valid_fanout_reg14_q & redist24_i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i64_idxprom78108_push81_kernel_3mm0_i_llvm_fpga_push_i64_idxprom78108_push81_kernel_3mm1_x_i_data = i_llvm_fpga_pop_i64_idxprom78108_pop81_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom78108_pop81_kernel_3mm11_mux_x_q;
    assign i_llvm_fpga_push_i64_idxprom78108_push81_kernel_3mm0_i_llvm_fpga_push_i64_idxprom78108_push81_kernel_3mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i64_idxprom78108_push81_kernel_3mm0_i_llvm_fpga_push_i64_idxprom78108_push81_kernel_3mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i64_idxprom78108_push81_kernel_3mm0_i_llvm_fpga_push_i64_idxprom78108_push81_kernel_3mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i64_idxprom78108_push81_kernel_3mm0_i_llvm_fpga_push_i64_idxprom78108_push81_kernel_3mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i64_idxprom78108_push81_kernel_3mm0_i_llvm_fpga_push_i64_idxprom78108_push81_kernel_3mm1_x (
        .i_valid(i_llvm_fpga_push_i64_idxprom78108_push81_kernel_3mm0_i_llvm_fpga_push_i64_idxprom78108_push81_kernel_3mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i64_idxprom78108_push81_kernel_3mm0_i_llvm_fpga_push_i64_idxprom78108_push81_kernel_3mm1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i64_idxprom78108_pop81_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom78108_pop81_kernel_3mm11_mux_x_q),
        .o_data(i_llvm_fpga_push_i64_idxprom78108_push81_kernel_3mm0_i_llvm_fpga_push_i64_idxprom78108_push81_kernel_3mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i64_idxprom78108_pop81_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom78108_pop81_kernel_3mm11_mux_x(MUX,156)@4
    assign i_llvm_fpga_pop_i64_idxprom78108_pop81_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom78108_pop81_kernel_3mm11_mux_x_s = redist36_i_llvm_fpga_forked_kernel_3mm_b12_forked_kernel_3mm3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i64_idxprom78108_pop81_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom78108_pop81_kernel_3mm11_mux_x_s or i_llvm_fpga_push_i64_idxprom78108_push81_kernel_3mm0_i_llvm_fpga_push_i64_idxprom78108_push81_kernel_3mm1_x_o_data or redist6_sync_together109_aunroll_x_in_c0_eni13573_2_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i64_idxprom78108_pop81_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom78108_pop81_kernel_3mm11_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i64_idxprom78108_pop81_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom78108_pop81_kernel_3mm11_mux_x_q = i_llvm_fpga_push_i64_idxprom78108_push81_kernel_3mm0_i_llvm_fpga_push_i64_idxprom78108_push81_kernel_3mm1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i64_idxprom78108_pop81_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom78108_pop81_kernel_3mm11_mux_x_q = redist6_sync_together109_aunroll_x_in_c0_eni13573_2_tpl_4_q;
            default : i_llvm_fpga_pop_i64_idxprom78108_pop81_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom78108_pop81_kernel_3mm11_mux_x_q = 64'b0;
        endcase
    end

    // i_arrayidx888_kernel_3mm0_dupName_0_trunc_sel_x(BITSELECT,120)@4
    assign i_arrayidx888_kernel_3mm0_dupName_0_trunc_sel_x_b = i_llvm_fpga_pop_i64_idxprom78108_pop81_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom78108_pop81_kernel_3mm11_mux_x_q[8:0];

    // addsumAHighB_uid280_i_arrayidx888_kernel_3mm0_mult_x(ADD,279)@4
    assign addsumAHighB_uid280_i_arrayidx888_kernel_3mm0_mult_x_a = {1'b0, i_arrayidx888_kernel_3mm0_dupName_0_trunc_sel_x_b};
    assign addsumAHighB_uid280_i_arrayidx888_kernel_3mm0_mult_x_b = {3'b000, lowRangeB_uid278_i_arrayidx888_kernel_3mm0_mult_x_merged_bit_select_c};
    assign addsumAHighB_uid280_i_arrayidx888_kernel_3mm0_mult_x_o = $unsigned(addsumAHighB_uid280_i_arrayidx888_kernel_3mm0_mult_x_a) + $unsigned(addsumAHighB_uid280_i_arrayidx888_kernel_3mm0_mult_x_b);
    assign addsumAHighB_uid280_i_arrayidx888_kernel_3mm0_mult_x_q = addsumAHighB_uid280_i_arrayidx888_kernel_3mm0_mult_x_o[9:0];

    // lowRangeB_uid278_i_arrayidx888_kernel_3mm0_mult_x_merged_bit_select(BITSELECT,367)@4
    assign lowRangeB_uid278_i_arrayidx888_kernel_3mm0_mult_x_merged_bit_select_b = i_arrayidx888_kernel_3mm0_dupName_0_trunc_sel_x_b[1:0];
    assign lowRangeB_uid278_i_arrayidx888_kernel_3mm0_mult_x_merged_bit_select_c = i_arrayidx888_kernel_3mm0_dupName_0_trunc_sel_x_b[8:2];

    // add_uid281_i_arrayidx888_kernel_3mm0_mult_x(BITJOIN,280)@4
    assign add_uid281_i_arrayidx888_kernel_3mm0_mult_x_q = {addsumAHighB_uid280_i_arrayidx888_kernel_3mm0_mult_x_q, lowRangeB_uid278_i_arrayidx888_kernel_3mm0_mult_x_merged_bit_select_b};

    // sR_mergedSignalTM_uid286_i_arrayidx888_kernel_3mm0_mult_x(BITJOIN,285)@4
    assign sR_mergedSignalTM_uid286_i_arrayidx888_kernel_3mm0_mult_x_q = {add_uid281_i_arrayidx888_kernel_3mm0_mult_x_q, i_arrayidx888_kernel_3mm0_mult_multconst_x_q};

    // i_arrayidx888_kernel_3mm0_mult_extender_x(BITJOIN,117)@4
    assign i_arrayidx888_kernel_3mm0_mult_extender_x_q = {i_arrayidx888_kernel_3mm0_mult_multconst_x_q, sR_mergedSignalTM_uid286_i_arrayidx888_kernel_3mm0_mult_x_q};

    // i_arrayidx888_kernel_3mm0_dupName_1_trunc_sel_x(BITSELECT,121)@4
    assign i_arrayidx888_kernel_3mm0_dupName_1_trunc_sel_x_b = i_arrayidx888_kernel_3mm0_mult_extender_x_q[8:0];

    // redist33_i_arrayidx888_kernel_3mm0_dupName_1_trunc_sel_x_b_1(DELAY,401)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist33_i_arrayidx888_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx888_kernel_3mm0_dupName_1_trunc_sel_x_b);
        end
    end

    // i_arrayidx888_kernel_3mm0_add_x(ADD,101)@5
    assign i_arrayidx888_kernel_3mm0_add_x_a = {1'b0, i_arrayidx888_kernel_3mm0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx888_kernel_3mm0_add_x_b = {1'b0, redist33_i_arrayidx888_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q};
    assign i_arrayidx888_kernel_3mm0_add_x_o = $unsigned(i_arrayidx888_kernel_3mm0_add_x_a) + $unsigned(i_arrayidx888_kernel_3mm0_add_x_b);
    assign i_arrayidx888_kernel_3mm0_add_x_q = i_arrayidx888_kernel_3mm0_add_x_o[9:0];

    // i_arrayidx888_kernel_3mm0_dupName_2_trunc_sel_x(BITSELECT,122)@5
    assign i_arrayidx888_kernel_3mm0_dupName_2_trunc_sel_x_b = i_arrayidx888_kernel_3mm0_add_x_q[8:0];

    // redist32_i_arrayidx888_kernel_3mm0_dupName_2_trunc_sel_x_b_1(DELAY,400)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist32_i_arrayidx888_kernel_3mm0_dupName_2_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx888_kernel_3mm0_dupName_2_trunc_sel_x_b);
        end
    end

    // i_arrayidx888_kernel_3mm0_dupName_0_add_x(ADD,111)@6
    assign i_arrayidx888_kernel_3mm0_dupName_0_add_x_a = {1'b0, redist32_i_arrayidx888_kernel_3mm0_dupName_2_trunc_sel_x_b_1_q};
    assign i_arrayidx888_kernel_3mm0_dupName_0_add_x_b = {1'b0, i_arrayidx888_kernel_3mm0_shift_join_x_q};
    assign i_arrayidx888_kernel_3mm0_dupName_0_add_x_o = $unsigned(i_arrayidx888_kernel_3mm0_dupName_0_add_x_a) + $unsigned(i_arrayidx888_kernel_3mm0_dupName_0_add_x_b);
    assign i_arrayidx888_kernel_3mm0_dupName_0_add_x_q = i_arrayidx888_kernel_3mm0_dupName_0_add_x_o[9:0];

    // i_arrayidx888_kernel_3mm0_dupName_5_trunc_sel_x(BITSELECT,124)@6
    assign i_arrayidx888_kernel_3mm0_dupName_5_trunc_sel_x_b = i_arrayidx888_kernel_3mm0_dupName_0_add_x_q[8:0];

    // i_arrayidx888_kernel_3mm0_append_upper_bits_x(BITJOIN,102)@6
    assign i_arrayidx888_kernel_3mm0_append_upper_bits_x_q = {redist1_i_arrayidx888_kernel_3mm0_upper_bits_x_merged_bit_select_b_1_q, i_arrayidx888_kernel_3mm0_dupName_5_trunc_sel_x_b};

    // i_arrayidx888_kernel_3mm12_vt_select_63(BITSELECT,64)@6
    assign i_arrayidx888_kernel_3mm12_vt_select_63_b = i_arrayidx888_kernel_3mm0_append_upper_bits_x_q[63:2];

    // i_arrayidx888_kernel_3mm12_vt_const_1(CONSTANT,62)
    assign i_arrayidx888_kernel_3mm12_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx888_kernel_3mm12_vt_join(BITJOIN,63)@6
    assign i_arrayidx888_kernel_3mm12_vt_join_q = {i_arrayidx888_kernel_3mm12_vt_select_63_b, i_arrayidx888_kernel_3mm12_vt_const_1_q};

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm13(BLACKBOX,79)@6
    // out out_o_almost_empty@10
    // out out_o_empty@10
    // out out_o_readdata@10
    // out out_o_stall@10
    // out out_o_valid@10
    // out out_unnamed_kernel_3mm12_kernel_3mm_avm_address@20000000
    // out out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount@20000000
    // out out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable@20000000
    // out out_unnamed_kernel_3mm12_kernel_3mm_avm_enable@20000000
    // out out_unnamed_kernel_3mm12_kernel_3mm_avm_read@20000000
    // out out_unnamed_kernel_3mm12_kernel_3mm_avm_write@20000000
    // out out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata@20000000
    kernel_3mm_i_llvm_fpga_mem_unnamed_12_kernel_3mm0 thei_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm13 (
        .in_almost_empty_in(GND_q),
        .in_empty_in(GND_q),
        .in_flush(in_flush),
        .in_i_address(i_arrayidx888_kernel_3mm12_vt_join_q),
        .in_i_predicate(i_kernel_3mm_b12_current_iter_isspec_kernel_3mm5_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg7_q),
        .in_unnamed_kernel_3mm12_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm12_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm12_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm12_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm12_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm12_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm12_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm12_kernel_3mm_avm_writeack),
        .out_o_almost_empty(),
        .out_o_empty(),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm13_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_address(i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm13_out_unnamed_kernel_3mm12_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount(i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm13_out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable(i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm13_out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_enable(i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm13_out_unnamed_kernel_3mm12_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_read(i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm13_out_unnamed_kernel_3mm12_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_write(i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm13_out_unnamed_kernel_3mm12_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata(i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm13_out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,60)
    assign out_unnamed_kernel_3mm12_kernel_3mm_avm_address = i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm13_out_unnamed_kernel_3mm12_kernel_3mm_avm_address;
    assign out_unnamed_kernel_3mm12_kernel_3mm_avm_enable = i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm13_out_unnamed_kernel_3mm12_kernel_3mm_avm_enable;
    assign out_unnamed_kernel_3mm12_kernel_3mm_avm_read = i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm13_out_unnamed_kernel_3mm12_kernel_3mm_avm_read;
    assign out_unnamed_kernel_3mm12_kernel_3mm_avm_write = i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm13_out_unnamed_kernel_3mm12_kernel_3mm_avm_write;
    assign out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata = i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm13_out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata;
    assign out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable = i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm13_out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable;
    assign out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount = i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm13_out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount;

    // regfree_osync(GPOUT,89)
    assign out_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_kernel_3mm6_out_exiting_valid_out;

    // valid_fanout_reg9(REG,211)@5 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist18_sync_together109_aunroll_x_in_i_valid_5_q);
        end
    end

    // c_kernel_3mm_F_local_pmem(CONSTANT,58)
    assign c_kernel_3mm_F_local_pmem_q = $unsigned(64'b0100000001000101000000000000000000000000000000000000000000000000);

    // i_arrayidx929_kernel_3mm0_upper_bits_x_merged_bit_select(BITSELECT,366)@5
    assign i_arrayidx929_kernel_3mm0_upper_bits_x_merged_bit_select_b = c_kernel_3mm_F_local_pmem_q[63:9];
    assign i_arrayidx929_kernel_3mm0_upper_bits_x_merged_bit_select_c = c_kernel_3mm_F_local_pmem_q[8:0];

    // redist0_i_arrayidx929_kernel_3mm0_upper_bits_x_merged_bit_select_b_1(DELAY,368)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_i_arrayidx929_kernel_3mm0_upper_bits_x_merged_bit_select_b_1_q <= $unsigned(i_arrayidx929_kernel_3mm0_upper_bits_x_merged_bit_select_b);
        end
    end

    // redist7_sync_together109_aunroll_x_in_c0_eni13573_3_tpl_4_inputreg0(DELAY,409)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_sync_together109_aunroll_x_in_c0_eni13573_3_tpl_4_inputreg0_q <= $unsigned(in_c0_eni13573_3_tpl);
        end
    end

    // redist7_sync_together109_aunroll_x_in_c0_eni13573_3_tpl_4(DELAY,375)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_sync_together109_aunroll_x_in_c0_eni13573_3_tpl_4_delay_0 <= $unsigned(redist7_sync_together109_aunroll_x_in_c0_eni13573_3_tpl_4_inputreg0_q);
            redist7_sync_together109_aunroll_x_in_c0_eni13573_3_tpl_4_delay_1 <= redist7_sync_together109_aunroll_x_in_c0_eni13573_3_tpl_4_delay_0;
            redist7_sync_together109_aunroll_x_in_c0_eni13573_3_tpl_4_q <= redist7_sync_together109_aunroll_x_in_c0_eni13573_3_tpl_4_delay_1;
        end
    end

    // valid_fanout_reg13(REG,215)@0 + 1
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

    // valid_fanout_reg12(REG,214)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist16_sync_together109_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i64_idxprom80109_push82_kernel_3mm0_i_llvm_fpga_push_i64_idxprom80109_push82_kernel_3mm1_x(FIFODELAY,192)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i64_idxprom80109_push82_kernel_3mm0_i_llvm_fpga_push_i64_idxprom80109_push82_kernel_3mm1_x_i_stall = ~ (valid_fanout_reg13_q & i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q);
    assign i_llvm_fpga_push_i64_idxprom80109_push82_kernel_3mm0_i_llvm_fpga_push_i64_idxprom80109_push82_kernel_3mm1_x_i_valid = valid_fanout_reg12_q & redist24_i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i64_idxprom80109_push82_kernel_3mm0_i_llvm_fpga_push_i64_idxprom80109_push82_kernel_3mm1_x_i_data = i_llvm_fpga_pop_i64_idxprom80109_pop82_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom80109_pop82_kernel_3mm15_mux_x_q;
    assign i_llvm_fpga_push_i64_idxprom80109_push82_kernel_3mm0_i_llvm_fpga_push_i64_idxprom80109_push82_kernel_3mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i64_idxprom80109_push82_kernel_3mm0_i_llvm_fpga_push_i64_idxprom80109_push82_kernel_3mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i64_idxprom80109_push82_kernel_3mm0_i_llvm_fpga_push_i64_idxprom80109_push82_kernel_3mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i64_idxprom80109_push82_kernel_3mm0_i_llvm_fpga_push_i64_idxprom80109_push82_kernel_3mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i64_idxprom80109_push82_kernel_3mm0_i_llvm_fpga_push_i64_idxprom80109_push82_kernel_3mm1_x (
        .i_valid(i_llvm_fpga_push_i64_idxprom80109_push82_kernel_3mm0_i_llvm_fpga_push_i64_idxprom80109_push82_kernel_3mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i64_idxprom80109_push82_kernel_3mm0_i_llvm_fpga_push_i64_idxprom80109_push82_kernel_3mm1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i64_idxprom80109_pop82_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom80109_pop82_kernel_3mm15_mux_x_q),
        .o_data(i_llvm_fpga_push_i64_idxprom80109_push82_kernel_3mm0_i_llvm_fpga_push_i64_idxprom80109_push82_kernel_3mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i64_idxprom80109_pop82_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom80109_pop82_kernel_3mm15_mux_x(MUX,157)@4
    assign i_llvm_fpga_pop_i64_idxprom80109_pop82_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom80109_pop82_kernel_3mm15_mux_x_s = redist36_i_llvm_fpga_forked_kernel_3mm_b12_forked_kernel_3mm3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i64_idxprom80109_pop82_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom80109_pop82_kernel_3mm15_mux_x_s or i_llvm_fpga_push_i64_idxprom80109_push82_kernel_3mm0_i_llvm_fpga_push_i64_idxprom80109_push82_kernel_3mm1_x_o_data or redist7_sync_together109_aunroll_x_in_c0_eni13573_3_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i64_idxprom80109_pop82_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom80109_pop82_kernel_3mm15_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i64_idxprom80109_pop82_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom80109_pop82_kernel_3mm15_mux_x_q = i_llvm_fpga_push_i64_idxprom80109_push82_kernel_3mm0_i_llvm_fpga_push_i64_idxprom80109_push82_kernel_3mm1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i64_idxprom80109_pop82_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom80109_pop82_kernel_3mm15_mux_x_q = redist7_sync_together109_aunroll_x_in_c0_eni13573_3_tpl_4_q;
            default : i_llvm_fpga_pop_i64_idxprom80109_pop82_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom80109_pop82_kernel_3mm15_mux_x_q = 64'b0;
        endcase
    end

    // i_arrayidx929_kernel_3mm0_dupName_3_trunc_sel_x(BITSELECT,147)@4
    assign i_arrayidx929_kernel_3mm0_dupName_3_trunc_sel_x_b = i_llvm_fpga_pop_i64_idxprom80109_pop82_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom80109_pop82_kernel_3mm15_mux_x_q[8:0];

    // i_arrayidx929_kernel_3mm0_narrow_x(BITSELECT,130)@4
    assign i_arrayidx929_kernel_3mm0_narrow_x_b = i_arrayidx929_kernel_3mm0_dupName_3_trunc_sel_x_b[6:0];

    // redist31_i_arrayidx929_kernel_3mm0_narrow_x_b_2(DELAY,399)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist31_i_arrayidx929_kernel_3mm0_narrow_x_b_2_delay_0 <= $unsigned(i_arrayidx929_kernel_3mm0_narrow_x_b);
            redist31_i_arrayidx929_kernel_3mm0_narrow_x_b_2_q <= redist31_i_arrayidx929_kernel_3mm0_narrow_x_b_2_delay_0;
        end
    end

    // i_arrayidx929_kernel_3mm0_shift_join_x(BITJOIN,131)@6
    assign i_arrayidx929_kernel_3mm0_shift_join_x_q = {redist31_i_arrayidx929_kernel_3mm0_narrow_x_b_2_q, i_arrayidx888_kernel_3mm12_vt_const_1_q};

    // highBBits_uid325_i_arrayidx929_kernel_3mm0_mult_x(BITSELECT,324)@4
    assign highBBits_uid325_i_arrayidx929_kernel_3mm0_mult_x_b = i_arrayidx888_kernel_3mm0_dupName_3_trunc_sel_x_b[8:2];

    // addsumAHighB_uid326_i_arrayidx929_kernel_3mm0_mult_x(ADD,325)@4
    assign addsumAHighB_uid326_i_arrayidx929_kernel_3mm0_mult_x_a = {1'b0, i_arrayidx888_kernel_3mm0_dupName_3_trunc_sel_x_b};
    assign addsumAHighB_uid326_i_arrayidx929_kernel_3mm0_mult_x_b = {3'b000, highBBits_uid325_i_arrayidx929_kernel_3mm0_mult_x_b};
    assign addsumAHighB_uid326_i_arrayidx929_kernel_3mm0_mult_x_o = $unsigned(addsumAHighB_uid326_i_arrayidx929_kernel_3mm0_mult_x_a) + $unsigned(addsumAHighB_uid326_i_arrayidx929_kernel_3mm0_mult_x_b);
    assign addsumAHighB_uid326_i_arrayidx929_kernel_3mm0_mult_x_q = addsumAHighB_uid326_i_arrayidx929_kernel_3mm0_mult_x_o[9:0];

    // lowRangeB_uid324_i_arrayidx929_kernel_3mm0_mult_x(BITSELECT,323)@4
    assign lowRangeB_uid324_i_arrayidx929_kernel_3mm0_mult_x_in = i_arrayidx888_kernel_3mm0_dupName_3_trunc_sel_x_b[1:0];
    assign lowRangeB_uid324_i_arrayidx929_kernel_3mm0_mult_x_b = lowRangeB_uid324_i_arrayidx929_kernel_3mm0_mult_x_in[1:0];

    // add_uid327_i_arrayidx929_kernel_3mm0_mult_x(BITJOIN,326)@4
    assign add_uid327_i_arrayidx929_kernel_3mm0_mult_x_q = {addsumAHighB_uid326_i_arrayidx929_kernel_3mm0_mult_x_q, lowRangeB_uid324_i_arrayidx929_kernel_3mm0_mult_x_b};

    // sR_mergedSignalTM_uid332_i_arrayidx929_kernel_3mm0_mult_x(BITJOIN,331)@4
    assign sR_mergedSignalTM_uid332_i_arrayidx929_kernel_3mm0_mult_x_q = {add_uid327_i_arrayidx929_kernel_3mm0_mult_x_q, i_arrayidx888_kernel_3mm0_mult_multconst_x_q};

    // i_arrayidx929_kernel_3mm0_mult_extender_x(BITJOIN,141)@4
    assign i_arrayidx929_kernel_3mm0_mult_extender_x_q = {i_arrayidx888_kernel_3mm0_mult_multconst_x_q, sR_mergedSignalTM_uid332_i_arrayidx929_kernel_3mm0_mult_x_q};

    // i_arrayidx929_kernel_3mm0_dupName_1_trunc_sel_x(BITSELECT,145)@4
    assign i_arrayidx929_kernel_3mm0_dupName_1_trunc_sel_x_b = i_arrayidx929_kernel_3mm0_mult_extender_x_q[8:0];

    // redist30_i_arrayidx929_kernel_3mm0_dupName_1_trunc_sel_x_b_1(DELAY,398)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist30_i_arrayidx929_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx929_kernel_3mm0_dupName_1_trunc_sel_x_b);
        end
    end

    // i_arrayidx929_kernel_3mm0_add_x(ADD,125)@5
    assign i_arrayidx929_kernel_3mm0_add_x_a = {1'b0, i_arrayidx929_kernel_3mm0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx929_kernel_3mm0_add_x_b = {1'b0, redist30_i_arrayidx929_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q};
    assign i_arrayidx929_kernel_3mm0_add_x_o = $unsigned(i_arrayidx929_kernel_3mm0_add_x_a) + $unsigned(i_arrayidx929_kernel_3mm0_add_x_b);
    assign i_arrayidx929_kernel_3mm0_add_x_q = i_arrayidx929_kernel_3mm0_add_x_o[9:0];

    // i_arrayidx929_kernel_3mm0_dupName_2_trunc_sel_x(BITSELECT,146)@5
    assign i_arrayidx929_kernel_3mm0_dupName_2_trunc_sel_x_b = i_arrayidx929_kernel_3mm0_add_x_q[8:0];

    // redist29_i_arrayidx929_kernel_3mm0_dupName_2_trunc_sel_x_b_1(DELAY,397)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist29_i_arrayidx929_kernel_3mm0_dupName_2_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx929_kernel_3mm0_dupName_2_trunc_sel_x_b);
        end
    end

    // i_arrayidx929_kernel_3mm0_dupName_0_add_x(ADD,135)@6
    assign i_arrayidx929_kernel_3mm0_dupName_0_add_x_a = {1'b0, redist29_i_arrayidx929_kernel_3mm0_dupName_2_trunc_sel_x_b_1_q};
    assign i_arrayidx929_kernel_3mm0_dupName_0_add_x_b = {1'b0, i_arrayidx929_kernel_3mm0_shift_join_x_q};
    assign i_arrayidx929_kernel_3mm0_dupName_0_add_x_o = $unsigned(i_arrayidx929_kernel_3mm0_dupName_0_add_x_a) + $unsigned(i_arrayidx929_kernel_3mm0_dupName_0_add_x_b);
    assign i_arrayidx929_kernel_3mm0_dupName_0_add_x_q = i_arrayidx929_kernel_3mm0_dupName_0_add_x_o[9:0];

    // i_arrayidx929_kernel_3mm0_dupName_5_trunc_sel_x(BITSELECT,148)@6
    assign i_arrayidx929_kernel_3mm0_dupName_5_trunc_sel_x_b = i_arrayidx929_kernel_3mm0_dupName_0_add_x_q[8:0];

    // i_arrayidx929_kernel_3mm0_append_upper_bits_x(BITJOIN,126)@6
    assign i_arrayidx929_kernel_3mm0_append_upper_bits_x_q = {redist0_i_arrayidx929_kernel_3mm0_upper_bits_x_merged_bit_select_b_1_q, i_arrayidx929_kernel_3mm0_dupName_5_trunc_sel_x_b};

    // i_arrayidx929_kernel_3mm16_vt_select_63(BITSELECT,67)@6
    assign i_arrayidx929_kernel_3mm16_vt_select_63_b = i_arrayidx929_kernel_3mm0_append_upper_bits_x_q[63:2];

    // i_arrayidx929_kernel_3mm16_vt_join(BITJOIN,66)@6
    assign i_arrayidx929_kernel_3mm16_vt_join_q = {i_arrayidx929_kernel_3mm16_vt_select_63_b, i_arrayidx888_kernel_3mm12_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm17(BLACKBOX,80)@6
    // out out_o_almost_empty@10
    // out out_o_empty@10
    // out out_o_readdata@10
    // out out_o_stall@10
    // out out_o_valid@10
    // out out_unnamed_kernel_3mm13_kernel_3mm_avm_address@20000000
    // out out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount@20000000
    // out out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable@20000000
    // out out_unnamed_kernel_3mm13_kernel_3mm_avm_enable@20000000
    // out out_unnamed_kernel_3mm13_kernel_3mm_avm_read@20000000
    // out out_unnamed_kernel_3mm13_kernel_3mm_avm_write@20000000
    // out out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata@20000000
    kernel_3mm_i_llvm_fpga_mem_unnamed_13_kernel_3mm0 thei_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm17 (
        .in_almost_empty_in(GND_q),
        .in_empty_in(GND_q),
        .in_flush(in_flush),
        .in_i_address(i_arrayidx929_kernel_3mm16_vt_join_q),
        .in_i_predicate(i_kernel_3mm_b12_current_iter_isspec_kernel_3mm5_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg9_q),
        .in_unnamed_kernel_3mm13_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm13_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm13_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm13_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm13_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm13_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm13_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm13_kernel_3mm_avm_writeack),
        .out_o_almost_empty(),
        .out_o_empty(),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm17_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_address(i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm17_out_unnamed_kernel_3mm13_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount(i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm17_out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable(i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm17_out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_enable(i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm17_out_unnamed_kernel_3mm13_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_read(i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm17_out_unnamed_kernel_3mm13_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_write(i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm17_out_unnamed_kernel_3mm13_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata(i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm17_out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,97)
    assign out_unnamed_kernel_3mm13_kernel_3mm_avm_address = i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm17_out_unnamed_kernel_3mm13_kernel_3mm_avm_address;
    assign out_unnamed_kernel_3mm13_kernel_3mm_avm_enable = i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm17_out_unnamed_kernel_3mm13_kernel_3mm_avm_enable;
    assign out_unnamed_kernel_3mm13_kernel_3mm_avm_read = i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm17_out_unnamed_kernel_3mm13_kernel_3mm_avm_read;
    assign out_unnamed_kernel_3mm13_kernel_3mm_avm_write = i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm17_out_unnamed_kernel_3mm13_kernel_3mm_avm_write;
    assign out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata = i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm17_out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata;
    assign out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable = i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm17_out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable;
    assign out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount = i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm17_out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount;

    // dupName_0_regfree_osync_x(GPOUT,98)
    assign out_pipeline_dummy_out = i_llvm_fpga_pipeline_keep_going_kernel_3mm6_out_pipeline_dummy_out;

    // dupName_1_regfree_osync_x(GPOUT,99)
    assign out_pipeline_forked_out = i_llvm_fpga_pipeline_keep_going_kernel_3mm6_out_pipeline_forked_out;

    // dupName_2_regfree_osync_x(GPOUT,100)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_kernel_3mm6_out_pipeline_valid_out;

    // redist19_sync_together109_aunroll_x_in_i_valid_13(DELAY,387)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("SYNC"), .phase(5), .modulus(2), .reset_high(1'b0) )
    redist19_sync_together109_aunroll_x_in_i_valid_13 ( .xin(redist18_sync_together109_aunroll_x_in_i_valid_5_q), .xout(redist19_sync_together109_aunroll_x_in_i_valid_13_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist20_sync_together109_aunroll_x_in_i_valid_16(DELAY,388)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist20_sync_together109_aunroll_x_in_i_valid_16_delay_0 <= $unsigned(redist19_sync_together109_aunroll_x_in_i_valid_13_q);
        end
    end
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist20_sync_together109_aunroll_x_in_i_valid_16_delay_1 <= '0;
        end
        else
        begin
            redist20_sync_together109_aunroll_x_in_i_valid_16_delay_1 <= redist20_sync_together109_aunroll_x_in_i_valid_16_delay_0;
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist20_sync_together109_aunroll_x_in_i_valid_16_q <= redist20_sync_together109_aunroll_x_in_i_valid_16_delay_1;
        end
    end

    // redist21_sync_together109_aunroll_x_in_i_valid_17(DELAY,389)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist21_sync_together109_aunroll_x_in_i_valid_17_q <= '0;
        end
        else
        begin
            redist21_sync_together109_aunroll_x_in_i_valid_17_q <= $unsigned(redist20_sync_together109_aunroll_x_in_i_valid_16_q);
        end
    end

    // valid_fanout_reg0(REG,202)@17 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist21_sync_together109_aunroll_x_in_i_valid_17_q);
        end
    end

    // redist39_i_kernel_3mm_b12_current_iter_isspec_kernel_3mm5_q_12(DELAY,407)
    dspba_delay_ver #( .width(1), .depth(12), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist39_i_kernel_3mm_b12_current_iter_isspec_kernel_3mm5_q_12 ( .xin(i_kernel_3mm_b12_current_iter_isspec_kernel_3mm5_q), .xout(redist39_i_kernel_3mm_b12_current_iter_isspec_kernel_3mm5_q_12_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist15_sync_together109_aunroll_x_in_c0_eni13573_13_tpl_18(DELAY,383)
    dspba_delay_ver #( .width(1), .depth(18), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist15_sync_together109_aunroll_x_in_c0_eni13573_13_tpl_18 ( .xin(in_c0_eni13573_13_tpl), .xout(redist15_sync_together109_aunroll_x_in_c0_eni13573_13_tpl_18_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist14_sync_together109_aunroll_x_in_c0_eni13573_12_tpl_18_offset(CONSTANT,421)
    assign redist14_sync_together109_aunroll_x_in_c0_eni13573_12_tpl_18_offset_q = $unsigned(4'b0011);

    // redist14_sync_together109_aunroll_x_in_c0_eni13573_12_tpl_18_rdcnt(ADD,422)
    assign redist14_sync_together109_aunroll_x_in_c0_eni13573_12_tpl_18_rdcnt_a = {1'b0, redist14_sync_together109_aunroll_x_in_c0_eni13573_12_tpl_18_wraddr_q};
    assign redist14_sync_together109_aunroll_x_in_c0_eni13573_12_tpl_18_rdcnt_b = {1'b0, redist14_sync_together109_aunroll_x_in_c0_eni13573_12_tpl_18_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist14_sync_together109_aunroll_x_in_c0_eni13573_12_tpl_18_rdcnt_o <= $unsigned(redist14_sync_together109_aunroll_x_in_c0_eni13573_12_tpl_18_rdcnt_a) + $unsigned(redist14_sync_together109_aunroll_x_in_c0_eni13573_12_tpl_18_rdcnt_b);
        end
    end
    assign redist14_sync_together109_aunroll_x_in_c0_eni13573_12_tpl_18_rdcnt_q = redist14_sync_together109_aunroll_x_in_c0_eni13573_12_tpl_18_rdcnt_o[4:0];

    // redist14_sync_together109_aunroll_x_in_c0_eni13573_12_tpl_18_inputreg0(DELAY,417)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist14_sync_together109_aunroll_x_in_c0_eni13573_12_tpl_18_inputreg0_q <= $unsigned(in_c0_eni13573_12_tpl);
        end
    end

    // redist14_sync_together109_aunroll_x_in_c0_eni13573_12_tpl_18_wraddr(COUNTER,420)
    // low=0, high=15, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist14_sync_together109_aunroll_x_in_c0_eni13573_12_tpl_18_wraddr_i <= $unsigned(redist14_sync_together109_aunroll_x_in_c0_eni13573_12_tpl_18_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist14_sync_together109_aunroll_x_in_c0_eni13573_12_tpl_18_wraddr_q = redist14_sync_together109_aunroll_x_in_c0_eni13573_12_tpl_18_wraddr_i[3:0];

    // redist14_sync_together109_aunroll_x_in_c0_eni13573_12_tpl_18_mem(DUALMEM,419)
    assign redist14_sync_together109_aunroll_x_in_c0_eni13573_12_tpl_18_mem_ia = $unsigned(redist14_sync_together109_aunroll_x_in_c0_eni13573_12_tpl_18_inputreg0_q);
    assign redist14_sync_together109_aunroll_x_in_c0_eni13573_12_tpl_18_mem_aa = redist14_sync_together109_aunroll_x_in_c0_eni13573_12_tpl_18_wraddr_q;
    assign redist14_sync_together109_aunroll_x_in_c0_eni13573_12_tpl_18_mem_ab = redist14_sync_together109_aunroll_x_in_c0_eni13573_12_tpl_18_rdcnt_q[3:0];
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
    ) redist14_sync_together109_aunroll_x_in_c0_eni13573_12_tpl_18_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist14_sync_together109_aunroll_x_in_c0_eni13573_12_tpl_18_mem_aa),
        .data_a(redist14_sync_together109_aunroll_x_in_c0_eni13573_12_tpl_18_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist14_sync_together109_aunroll_x_in_c0_eni13573_12_tpl_18_mem_ab),
        .q_b(redist14_sync_together109_aunroll_x_in_c0_eni13573_12_tpl_18_mem_iq),
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
    assign redist14_sync_together109_aunroll_x_in_c0_eni13573_12_tpl_18_mem_q = redist14_sync_together109_aunroll_x_in_c0_eni13573_12_tpl_18_mem_iq[31:0];

    // redist14_sync_together109_aunroll_x_in_c0_eni13573_12_tpl_18_outputreg0(DELAY,418)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist14_sync_together109_aunroll_x_in_c0_eni13573_12_tpl_18_outputreg0_q <= $unsigned(redist14_sync_together109_aunroll_x_in_c0_eni13573_12_tpl_18_mem_q);
        end
    end

    // redist13_sync_together109_aunroll_x_in_c0_eni13573_11_tpl_18(DELAY,381)
    dspba_delay_ver #( .width(1), .depth(18), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist13_sync_together109_aunroll_x_in_c0_eni13573_11_tpl_18 ( .xin(in_c0_eni13573_11_tpl), .xout(redist13_sync_together109_aunroll_x_in_c0_eni13573_11_tpl_18_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist12_sync_together109_aunroll_x_in_c0_eni13573_10_tpl_18(DELAY,380)
    dspba_delay_ver #( .width(1), .depth(18), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist12_sync_together109_aunroll_x_in_c0_eni13573_10_tpl_18 ( .xin(in_c0_eni13573_10_tpl), .xout(redist12_sync_together109_aunroll_x_in_c0_eni13573_10_tpl_18_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist11_sync_together109_aunroll_x_in_c0_eni13573_9_tpl_17(DELAY,379)
    dspba_delay_ver #( .width(1), .depth(17), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist11_sync_together109_aunroll_x_in_c0_eni13573_9_tpl_17 ( .xin(in_c0_eni13573_9_tpl), .xout(redist11_sync_together109_aunroll_x_in_c0_eni13573_9_tpl_17_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_push_i1_notcmp26111_push84_kernel_3mm0_element_extension2_x(BITJOIN,167)@18
    assign i_llvm_fpga_push_i1_notcmp26111_push84_kernel_3mm0_element_extension2_x_q = {i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_c_i7_03_x_q, i_llvm_fpga_pop_i1_notcmp26111_pop84_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp26111_pop84_kernel_3mm42_mux_x_q};

    // redist25_i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q_13(DELAY,393)
    dspba_delay_ver #( .width(1), .depth(11), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist25_i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q_13 ( .xin(redist24_i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q_2_q), .xout(redist25_i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q_13_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg37(REG,239)@13 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg37_q <= $unsigned(redist19_sync_together109_aunroll_x_in_i_valid_13_q);
        end
    end

    // redist26_i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q_16(DELAY,394)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist26_i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q_16_delay_0 <= $unsigned(redist25_i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q_13_q);
            redist26_i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q_16_delay_1 <= redist26_i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q_16_delay_0;
            redist26_i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q_16_q <= redist26_i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q_16_delay_1;
        end
    end

    // valid_fanout_reg36(REG,238)@16 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg36_q <= $unsigned(redist20_sync_together109_aunroll_x_in_i_valid_16_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp26111_push84_kernel_3mm0_i_llvm_fpga_push_i1_notcmp26111_push84_kernel_3mm1_x(FIFODELAY,168)@14
    // in i_valid@17
    // in i_write_pred@17
    // in i_data@18
    // out o_data@17
    assign i_llvm_fpga_push_i1_notcmp26111_push84_kernel_3mm0_i_llvm_fpga_push_i1_notcmp26111_push84_kernel_3mm1_x_i_stall = ~ (valid_fanout_reg37_q & redist25_i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q_13_q);
    assign i_llvm_fpga_push_i1_notcmp26111_push84_kernel_3mm0_i_llvm_fpga_push_i1_notcmp26111_push84_kernel_3mm1_x_i_valid = valid_fanout_reg36_q & redist26_i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q_16_q;
    assign i_llvm_fpga_push_i1_notcmp26111_push84_kernel_3mm0_i_llvm_fpga_push_i1_notcmp26111_push84_kernel_3mm1_x_i_data = i_llvm_fpga_push_i1_notcmp26111_push84_kernel_3mm0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_notcmp26111_push84_kernel_3mm0_i_llvm_fpga_push_i1_notcmp26111_push84_kernel_3mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_notcmp26111_push84_kernel_3mm0_i_llvm_fpga_push_i1_notcmp26111_push84_kernel_3mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_notcmp26111_push84_kernel_3mm0_i_llvm_fpga_push_i1_notcmp26111_push84_kernel_3mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_notcmp26111_push84_kernel_3mm0_i_llvm_fpga_push_i1_notcmp26111_push84_kernel_3mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_notcmp26111_push84_kernel_3mm0_i_llvm_fpga_push_i1_notcmp26111_push84_kernel_3mm1_x (
        .i_valid(i_llvm_fpga_push_i1_notcmp26111_push84_kernel_3mm0_i_llvm_fpga_push_i1_notcmp26111_push84_kernel_3mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_notcmp26111_push84_kernel_3mm0_i_llvm_fpga_push_i1_notcmp26111_push84_kernel_3mm1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_notcmp26111_push84_kernel_3mm0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_notcmp26111_push84_kernel_3mm0_i_llvm_fpga_push_i1_notcmp26111_push84_kernel_3mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_notcmp26111_push84_kernel_3mm0_adapt_scalar_trunc4_sel_x(BITSELECT,170)@17
    assign i_llvm_fpga_push_i1_notcmp26111_push84_kernel_3mm0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_notcmp26111_push84_kernel_3mm0_i_llvm_fpga_push_i1_notcmp26111_push84_kernel_3mm1_x_o_data[0:0];

    // redist37_i_llvm_fpga_forked_kernel_3mm_b12_forked_kernel_3mm3_out_buffer_out_17(DELAY,405)
    dspba_delay_ver #( .width(1), .depth(13), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist37_i_llvm_fpga_forked_kernel_3mm_b12_forked_kernel_3mm3_out_buffer_out_17 ( .xin(redist36_i_llvm_fpga_forked_kernel_3mm_b12_forked_kernel_3mm3_out_buffer_out_4_q), .xout(redist37_i_llvm_fpga_forked_kernel_3mm_b12_forked_kernel_3mm3_out_buffer_out_17_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_pop_i1_notcmp26111_pop84_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp26111_pop84_kernel_3mm42_mux_x(MUX,151)@17 + 1
    assign i_llvm_fpga_pop_i1_notcmp26111_pop84_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp26111_pop84_kernel_3mm42_mux_x_s = redist37_i_llvm_fpga_forked_kernel_3mm_b12_forked_kernel_3mm3_out_buffer_out_17_q;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_llvm_fpga_pop_i1_notcmp26111_pop84_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp26111_pop84_kernel_3mm42_mux_x_s)
                1'b0 : i_llvm_fpga_pop_i1_notcmp26111_pop84_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp26111_pop84_kernel_3mm42_mux_x_q <= i_llvm_fpga_push_i1_notcmp26111_push84_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
                1'b1 : i_llvm_fpga_pop_i1_notcmp26111_pop84_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp26111_pop84_kernel_3mm42_mux_x_q <= redist11_sync_together109_aunroll_x_in_c0_eni13573_9_tpl_17_q;
                default : i_llvm_fpga_pop_i1_notcmp26111_pop84_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp26111_pop84_kernel_3mm42_mux_x_q <= 1'b0;
            endcase
        end
    end

    // redist27_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm0_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm40_mux_x_q_14_offset(CONSTANT,427)
    assign redist27_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm0_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm40_mux_x_q_14_offset_q = $unsigned(4'b0111);

    // redist27_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm0_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm40_mux_x_q_14_rdcnt(ADD,428)
    assign redist27_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm0_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm40_mux_x_q_14_rdcnt_a = {1'b0, redist27_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm0_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm40_mux_x_q_14_wraddr_q};
    assign redist27_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm0_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm40_mux_x_q_14_rdcnt_b = {1'b0, redist27_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm0_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm40_mux_x_q_14_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist27_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm0_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm40_mux_x_q_14_rdcnt_o <= $unsigned(redist27_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm0_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm40_mux_x_q_14_rdcnt_a) + $unsigned(redist27_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm0_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm40_mux_x_q_14_rdcnt_b);
        end
    end
    assign redist27_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm0_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm40_mux_x_q_14_rdcnt_q = redist27_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm0_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm40_mux_x_q_14_rdcnt_o[4:0];

    // redist10_sync_together109_aunroll_x_in_c0_eni13573_8_tpl_4_inputreg0(DELAY,416)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_sync_together109_aunroll_x_in_c0_eni13573_8_tpl_4_inputreg0_q <= $unsigned(in_c0_eni13573_8_tpl);
        end
    end

    // redist10_sync_together109_aunroll_x_in_c0_eni13573_8_tpl_4(DELAY,378)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_sync_together109_aunroll_x_in_c0_eni13573_8_tpl_4_delay_0 <= $unsigned(redist10_sync_together109_aunroll_x_in_c0_eni13573_8_tpl_4_inputreg0_q);
            redist10_sync_together109_aunroll_x_in_c0_eni13573_8_tpl_4_delay_1 <= redist10_sync_together109_aunroll_x_in_c0_eni13573_8_tpl_4_delay_0;
            redist10_sync_together109_aunroll_x_in_c0_eni13573_8_tpl_4_q <= redist10_sync_together109_aunroll_x_in_c0_eni13573_8_tpl_4_delay_1;
        end
    end

    // valid_fanout_reg34(REG,236)@0 + 1
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

    // valid_fanout_reg33(REG,235)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg33_q <= $unsigned(redist16_sync_together109_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_p70i32_arrayidx817110_push83_kernel_3mm0_i_llvm_fpga_push_p70i32_arrayidx817110_push83_kernel_3mm1_x(FIFODELAY,195)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_p70i32_arrayidx817110_push83_kernel_3mm0_i_llvm_fpga_push_p70i32_arrayidx817110_push83_kernel_3mm1_x_i_stall = ~ (valid_fanout_reg34_q & i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q);
    assign i_llvm_fpga_push_p70i32_arrayidx817110_push83_kernel_3mm0_i_llvm_fpga_push_p70i32_arrayidx817110_push83_kernel_3mm1_x_i_valid = valid_fanout_reg33_q & redist24_i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_p70i32_arrayidx817110_push83_kernel_3mm0_i_llvm_fpga_push_p70i32_arrayidx817110_push83_kernel_3mm1_x_i_data = i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm0_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm40_mux_x_q;
    assign i_llvm_fpga_push_p70i32_arrayidx817110_push83_kernel_3mm0_i_llvm_fpga_push_p70i32_arrayidx817110_push83_kernel_3mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_p70i32_arrayidx817110_push83_kernel_3mm0_i_llvm_fpga_push_p70i32_arrayidx817110_push83_kernel_3mm1_x_i_valid[0];
    assign i_llvm_fpga_push_p70i32_arrayidx817110_push83_kernel_3mm0_i_llvm_fpga_push_p70i32_arrayidx817110_push83_kernel_3mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_p70i32_arrayidx817110_push83_kernel_3mm0_i_llvm_fpga_push_p70i32_arrayidx817110_push83_kernel_3mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_p70i32_arrayidx817110_push83_kernel_3mm0_i_llvm_fpga_push_p70i32_arrayidx817110_push83_kernel_3mm1_x (
        .i_valid(i_llvm_fpga_push_p70i32_arrayidx817110_push83_kernel_3mm0_i_llvm_fpga_push_p70i32_arrayidx817110_push83_kernel_3mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_p70i32_arrayidx817110_push83_kernel_3mm0_i_llvm_fpga_push_p70i32_arrayidx817110_push83_kernel_3mm1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm0_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm40_mux_x_q),
        .o_data(i_llvm_fpga_push_p70i32_arrayidx817110_push83_kernel_3mm0_i_llvm_fpga_push_p70i32_arrayidx817110_push83_kernel_3mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm0_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm40_mux_x(MUX,158)@4
    assign i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm0_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm40_mux_x_s = redist36_i_llvm_fpga_forked_kernel_3mm_b12_forked_kernel_3mm3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm0_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm40_mux_x_s or i_llvm_fpga_push_p70i32_arrayidx817110_push83_kernel_3mm0_i_llvm_fpga_push_p70i32_arrayidx817110_push83_kernel_3mm1_x_o_data or redist10_sync_together109_aunroll_x_in_c0_eni13573_8_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm0_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm40_mux_x_s)
            1'b0 : i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm0_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm40_mux_x_q = i_llvm_fpga_push_p70i32_arrayidx817110_push83_kernel_3mm0_i_llvm_fpga_push_p70i32_arrayidx817110_push83_kernel_3mm1_x_o_data;
            1'b1 : i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm0_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm40_mux_x_q = redist10_sync_together109_aunroll_x_in_c0_eni13573_8_tpl_4_q;
            default : i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm0_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm40_mux_x_q = 64'b0;
        endcase
    end

    // redist27_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm0_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm40_mux_x_q_14_inputreg0(DELAY,423)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist27_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm0_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm40_mux_x_q_14_inputreg0_q <= $unsigned(i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm0_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm40_mux_x_q);
        end
    end

    // redist27_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm0_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm40_mux_x_q_14_wraddr(COUNTER,426)
    // low=0, high=15, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist27_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm0_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm40_mux_x_q_14_wraddr_i <= $unsigned(redist27_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm0_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm40_mux_x_q_14_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist27_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm0_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm40_mux_x_q_14_wraddr_q = redist27_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm0_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm40_mux_x_q_14_wraddr_i[3:0];

    // redist27_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm0_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm40_mux_x_q_14_mem(DUALMEM,425)
    assign redist27_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm0_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm40_mux_x_q_14_mem_ia = $unsigned(redist27_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm0_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm40_mux_x_q_14_inputreg0_q);
    assign redist27_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm0_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm40_mux_x_q_14_mem_aa = redist27_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm0_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm40_mux_x_q_14_wraddr_q;
    assign redist27_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm0_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm40_mux_x_q_14_mem_ab = redist27_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm0_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm40_mux_x_q_14_rdcnt_q[3:0];
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
    ) redist27_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm0_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm40_mux_x_q_14_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist27_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm0_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm40_mux_x_q_14_mem_aa),
        .data_a(redist27_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm0_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm40_mux_x_q_14_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist27_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm0_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm40_mux_x_q_14_mem_ab),
        .q_b(redist27_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm0_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm40_mux_x_q_14_mem_iq),
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
    assign redist27_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm0_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm40_mux_x_q_14_mem_q = redist27_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm0_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm40_mux_x_q_14_mem_iq[63:0];

    // redist27_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm0_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm40_mux_x_q_14_outputreg0(DELAY,424)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist27_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm0_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm40_mux_x_q_14_outputreg0_q <= $unsigned(redist27_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm0_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm40_mux_x_q_14_mem_q);
        end
    end

    // redist9_sync_together109_aunroll_x_in_c0_eni13573_6_tpl_17(DELAY,377)
    dspba_delay_ver #( .width(1), .depth(17), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist9_sync_together109_aunroll_x_in_c0_eni13573_6_tpl_17 ( .xin(in_c0_eni13573_6_tpl), .xout(redist9_sync_together109_aunroll_x_in_c0_eni13573_6_tpl_17_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_push_i1_notcmp3193_push79_kernel_3mm0_element_extension2_x(BITJOIN,173)@18
    assign i_llvm_fpga_push_i1_notcmp3193_push79_kernel_3mm0_element_extension2_x_q = {i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_c_i7_03_x_q, i_llvm_fpga_pop_i1_notcmp3193_pop79_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp3193_pop79_kernel_3mm36_mux_x_q};

    // valid_fanout_reg28(REG,230)@13 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg28_q <= $unsigned(redist19_sync_together109_aunroll_x_in_i_valid_13_q);
        end
    end

    // valid_fanout_reg27(REG,229)@16 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg27_q <= $unsigned(redist20_sync_together109_aunroll_x_in_i_valid_16_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp3193_push79_kernel_3mm0_i_llvm_fpga_push_i1_notcmp3193_push79_kernel_3mm1_x(FIFODELAY,174)@14
    // in i_valid@17
    // in i_write_pred@17
    // in i_data@18
    // out o_data@17
    assign i_llvm_fpga_push_i1_notcmp3193_push79_kernel_3mm0_i_llvm_fpga_push_i1_notcmp3193_push79_kernel_3mm1_x_i_stall = ~ (valid_fanout_reg28_q & redist25_i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q_13_q);
    assign i_llvm_fpga_push_i1_notcmp3193_push79_kernel_3mm0_i_llvm_fpga_push_i1_notcmp3193_push79_kernel_3mm1_x_i_valid = valid_fanout_reg27_q & redist26_i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q_16_q;
    assign i_llvm_fpga_push_i1_notcmp3193_push79_kernel_3mm0_i_llvm_fpga_push_i1_notcmp3193_push79_kernel_3mm1_x_i_data = i_llvm_fpga_push_i1_notcmp3193_push79_kernel_3mm0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_notcmp3193_push79_kernel_3mm0_i_llvm_fpga_push_i1_notcmp3193_push79_kernel_3mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_notcmp3193_push79_kernel_3mm0_i_llvm_fpga_push_i1_notcmp3193_push79_kernel_3mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_notcmp3193_push79_kernel_3mm0_i_llvm_fpga_push_i1_notcmp3193_push79_kernel_3mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_notcmp3193_push79_kernel_3mm0_i_llvm_fpga_push_i1_notcmp3193_push79_kernel_3mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_notcmp3193_push79_kernel_3mm0_i_llvm_fpga_push_i1_notcmp3193_push79_kernel_3mm1_x (
        .i_valid(i_llvm_fpga_push_i1_notcmp3193_push79_kernel_3mm0_i_llvm_fpga_push_i1_notcmp3193_push79_kernel_3mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_notcmp3193_push79_kernel_3mm0_i_llvm_fpga_push_i1_notcmp3193_push79_kernel_3mm1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_notcmp3193_push79_kernel_3mm0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_notcmp3193_push79_kernel_3mm0_i_llvm_fpga_push_i1_notcmp3193_push79_kernel_3mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_notcmp3193_push79_kernel_3mm0_adapt_scalar_trunc4_sel_x(BITSELECT,176)@17
    assign i_llvm_fpga_push_i1_notcmp3193_push79_kernel_3mm0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_notcmp3193_push79_kernel_3mm0_i_llvm_fpga_push_i1_notcmp3193_push79_kernel_3mm1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_notcmp3193_pop79_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp3193_pop79_kernel_3mm36_mux_x(MUX,152)@17 + 1
    assign i_llvm_fpga_pop_i1_notcmp3193_pop79_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp3193_pop79_kernel_3mm36_mux_x_s = redist37_i_llvm_fpga_forked_kernel_3mm_b12_forked_kernel_3mm3_out_buffer_out_17_q;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_llvm_fpga_pop_i1_notcmp3193_pop79_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp3193_pop79_kernel_3mm36_mux_x_s)
                1'b0 : i_llvm_fpga_pop_i1_notcmp3193_pop79_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp3193_pop79_kernel_3mm36_mux_x_q <= i_llvm_fpga_push_i1_notcmp3193_push79_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
                1'b1 : i_llvm_fpga_pop_i1_notcmp3193_pop79_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp3193_pop79_kernel_3mm36_mux_x_q <= redist9_sync_together109_aunroll_x_in_c0_eni13573_6_tpl_17_q;
                default : i_llvm_fpga_pop_i1_notcmp3193_pop79_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp3193_pop79_kernel_3mm36_mux_x_q <= 1'b0;
            endcase
        end
    end

    // i_notcmp_kernel_3mm30(LOGICAL,84)@18
    assign i_notcmp_kernel_3mm30_q = redist5_i_exitcond19_kernel_3mm24_cmp_nsign_q_14_q ^ VCC_q;

    // redist5_i_exitcond19_kernel_3mm24_cmp_nsign_q_14(DELAY,373)
    dspba_delay_ver #( .width(1), .depth(14), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist5_i_exitcond19_kernel_3mm24_cmp_nsign_q_14 ( .xin(i_exitcond19_kernel_3mm24_cmp_nsign_q), .xout(redist5_i_exitcond19_kernel_3mm24_cmp_nsign_q_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist8_sync_together109_aunroll_x_in_c0_eni13573_4_tpl_17_offset(CONSTANT,414)
    assign redist8_sync_together109_aunroll_x_in_c0_eni13573_4_tpl_17_offset_q = $unsigned(4'b0100);

    // redist8_sync_together109_aunroll_x_in_c0_eni13573_4_tpl_17_rdcnt(ADD,415)
    assign redist8_sync_together109_aunroll_x_in_c0_eni13573_4_tpl_17_rdcnt_a = {1'b0, redist8_sync_together109_aunroll_x_in_c0_eni13573_4_tpl_17_wraddr_q};
    assign redist8_sync_together109_aunroll_x_in_c0_eni13573_4_tpl_17_rdcnt_b = {1'b0, redist8_sync_together109_aunroll_x_in_c0_eni13573_4_tpl_17_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_sync_together109_aunroll_x_in_c0_eni13573_4_tpl_17_rdcnt_o <= $unsigned(redist8_sync_together109_aunroll_x_in_c0_eni13573_4_tpl_17_rdcnt_a) + $unsigned(redist8_sync_together109_aunroll_x_in_c0_eni13573_4_tpl_17_rdcnt_b);
        end
    end
    assign redist8_sync_together109_aunroll_x_in_c0_eni13573_4_tpl_17_rdcnt_q = redist8_sync_together109_aunroll_x_in_c0_eni13573_4_tpl_17_rdcnt_o[4:0];

    // redist8_sync_together109_aunroll_x_in_c0_eni13573_4_tpl_17_inputreg0(DELAY,410)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_sync_together109_aunroll_x_in_c0_eni13573_4_tpl_17_inputreg0_q <= $unsigned(in_c0_eni13573_4_tpl);
        end
    end

    // redist8_sync_together109_aunroll_x_in_c0_eni13573_4_tpl_17_wraddr(COUNTER,413)
    // low=0, high=15, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_sync_together109_aunroll_x_in_c0_eni13573_4_tpl_17_wraddr_i <= $unsigned(redist8_sync_together109_aunroll_x_in_c0_eni13573_4_tpl_17_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist8_sync_together109_aunroll_x_in_c0_eni13573_4_tpl_17_wraddr_q = redist8_sync_together109_aunroll_x_in_c0_eni13573_4_tpl_17_wraddr_i[3:0];

    // redist8_sync_together109_aunroll_x_in_c0_eni13573_4_tpl_17_mem(DUALMEM,412)
    assign redist8_sync_together109_aunroll_x_in_c0_eni13573_4_tpl_17_mem_ia = $unsigned(redist8_sync_together109_aunroll_x_in_c0_eni13573_4_tpl_17_inputreg0_q);
    assign redist8_sync_together109_aunroll_x_in_c0_eni13573_4_tpl_17_mem_aa = redist8_sync_together109_aunroll_x_in_c0_eni13573_4_tpl_17_wraddr_q;
    assign redist8_sync_together109_aunroll_x_in_c0_eni13573_4_tpl_17_mem_ab = redist8_sync_together109_aunroll_x_in_c0_eni13573_4_tpl_17_rdcnt_q[3:0];
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
    ) redist8_sync_together109_aunroll_x_in_c0_eni13573_4_tpl_17_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist8_sync_together109_aunroll_x_in_c0_eni13573_4_tpl_17_mem_aa),
        .data_a(redist8_sync_together109_aunroll_x_in_c0_eni13573_4_tpl_17_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist8_sync_together109_aunroll_x_in_c0_eni13573_4_tpl_17_mem_ab),
        .q_b(redist8_sync_together109_aunroll_x_in_c0_eni13573_4_tpl_17_mem_iq),
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
    assign redist8_sync_together109_aunroll_x_in_c0_eni13573_4_tpl_17_mem_q = redist8_sync_together109_aunroll_x_in_c0_eni13573_4_tpl_17_mem_iq[31:0];

    // redist8_sync_together109_aunroll_x_in_c0_eni13573_4_tpl_17_outputreg0(DELAY,411)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_sync_together109_aunroll_x_in_c0_eni13573_4_tpl_17_outputreg0_q <= $unsigned(redist8_sync_together109_aunroll_x_in_c0_eni13573_4_tpl_17_mem_q);
        end
    end

    // valid_fanout_reg19(REG,221)@13 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(redist19_sync_together109_aunroll_x_in_i_valid_13_q);
        end
    end

    // valid_fanout_reg18(REG,220)@16 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(redist20_sync_together109_aunroll_x_in_i_valid_16_q);
        end
    end

    // i_llvm_fpga_push_i32_tmp77_050_push76_kernel_3mm0_i_llvm_fpga_push_i32_tmp77_050_push76_kernel_3mm1_x(FIFODELAY,180)@14
    // in i_valid@17
    // in i_write_pred@17
    // in i_data@18
    // out o_data@17
    assign i_llvm_fpga_push_i32_tmp77_050_push76_kernel_3mm0_i_llvm_fpga_push_i32_tmp77_050_push76_kernel_3mm1_x_i_stall = ~ (valid_fanout_reg19_q & redist25_i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q_13_q);
    assign i_llvm_fpga_push_i32_tmp77_050_push76_kernel_3mm0_i_llvm_fpga_push_i32_tmp77_050_push76_kernel_3mm1_x_i_valid = valid_fanout_reg18_q & redist26_i_llvm_fpga_push_i1_kernel_3mm_b12_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q_16_q;
    assign i_llvm_fpga_push_i32_tmp77_050_push76_kernel_3mm0_i_llvm_fpga_push_i32_tmp77_050_push76_kernel_3mm1_x_i_data = bgTrunc_i_add94_kernel_3mm21_sel_x_b;
    assign i_llvm_fpga_push_i32_tmp77_050_push76_kernel_3mm0_i_llvm_fpga_push_i32_tmp77_050_push76_kernel_3mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_tmp77_050_push76_kernel_3mm0_i_llvm_fpga_push_i32_tmp77_050_push76_kernel_3mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_tmp77_050_push76_kernel_3mm0_i_llvm_fpga_push_i32_tmp77_050_push76_kernel_3mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_tmp77_050_push76_kernel_3mm0_i_llvm_fpga_push_i32_tmp77_050_push76_kernel_3mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_tmp77_050_push76_kernel_3mm0_i_llvm_fpga_push_i32_tmp77_050_push76_kernel_3mm1_x (
        .i_valid(i_llvm_fpga_push_i32_tmp77_050_push76_kernel_3mm0_i_llvm_fpga_push_i32_tmp77_050_push76_kernel_3mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_tmp77_050_push76_kernel_3mm0_i_llvm_fpga_push_i32_tmp77_050_push76_kernel_3mm1_x_i_stall_bitsignaltemp),
        .i_data(bgTrunc_i_add94_kernel_3mm21_sel_x_b),
        .o_data(i_llvm_fpga_push_i32_tmp77_050_push76_kernel_3mm0_i_llvm_fpga_push_i32_tmp77_050_push76_kernel_3mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_tmp77_050_pop76_kernel_3mm0_i_llvm_fpga_pop_i32_tmp77_050_pop76_kernel_3mm20_mux_x(MUX,154)@17 + 1
    assign i_llvm_fpga_pop_i32_tmp77_050_pop76_kernel_3mm0_i_llvm_fpga_pop_i32_tmp77_050_pop76_kernel_3mm20_mux_x_s = redist37_i_llvm_fpga_forked_kernel_3mm_b12_forked_kernel_3mm3_out_buffer_out_17_q;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_llvm_fpga_pop_i32_tmp77_050_pop76_kernel_3mm0_i_llvm_fpga_pop_i32_tmp77_050_pop76_kernel_3mm20_mux_x_s)
                1'b0 : i_llvm_fpga_pop_i32_tmp77_050_pop76_kernel_3mm0_i_llvm_fpga_pop_i32_tmp77_050_pop76_kernel_3mm20_mux_x_q <= i_llvm_fpga_push_i32_tmp77_050_push76_kernel_3mm0_i_llvm_fpga_push_i32_tmp77_050_push76_kernel_3mm1_x_o_data;
                1'b1 : i_llvm_fpga_pop_i32_tmp77_050_pop76_kernel_3mm0_i_llvm_fpga_pop_i32_tmp77_050_pop76_kernel_3mm20_mux_x_q <= redist8_sync_together109_aunroll_x_in_c0_eni13573_4_tpl_17_outputreg0_q;
                default : i_llvm_fpga_pop_i32_tmp77_050_pop76_kernel_3mm0_i_llvm_fpga_pop_i32_tmp77_050_pop76_kernel_3mm20_mux_x_q <= 32'b0;
            endcase
        end
    end

    // i_mul93_kernel_3mm19_bs6(BITSELECT,259)@10
    assign i_mul93_kernel_3mm19_bs6_in = i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm17_out_o_readdata[17:0];
    assign i_mul93_kernel_3mm19_bs6_b = i_mul93_kernel_3mm19_bs6_in[17:0];

    // i_mul93_kernel_3mm19_bs3(BITSELECT,256)@10
    assign i_mul93_kernel_3mm19_bs3_b = i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm13_out_o_readdata[31:18];

    // i_mul93_kernel_3mm19_bs9(BITSELECT,262)@10
    assign i_mul93_kernel_3mm19_bs9_in = i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm13_out_o_readdata[17:0];
    assign i_mul93_kernel_3mm19_bs9_b = i_mul93_kernel_3mm19_bs9_in[17:0];

    // i_mul93_kernel_3mm19_bs1(BITSELECT,254)@10
    assign i_mul93_kernel_3mm19_bs1_b = i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm17_out_o_readdata[31:18];

    // i_mul93_kernel_3mm19_ma5_cma(CHAINMULTADD,364)@10 + 5
    // out q@16
    assign i_mul93_kernel_3mm19_ma5_cma_reset = ~ (resetn);
    assign i_mul93_kernel_3mm19_ma5_cma_ena0 = 1'b1;
    assign i_mul93_kernel_3mm19_ma5_cma_ena1 = i_mul93_kernel_3mm19_ma5_cma_ena0;
    assign i_mul93_kernel_3mm19_ma5_cma_ena2 = i_mul93_kernel_3mm19_ma5_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul93_kernel_3mm19_ma5_cma_ah[0] <= i_mul93_kernel_3mm19_bs1_b;
            i_mul93_kernel_3mm19_ma5_cma_ah[1] <= i_mul93_kernel_3mm19_bs3_b;
            i_mul93_kernel_3mm19_ma5_cma_ch[0] <= i_mul93_kernel_3mm19_bs9_b;
            i_mul93_kernel_3mm19_ma5_cma_ch[1] <= i_mul93_kernel_3mm19_bs6_b;
        end
    end

    assign i_mul93_kernel_3mm19_ma5_cma_a0 = i_mul93_kernel_3mm19_ma5_cma_ah[0];
    assign i_mul93_kernel_3mm19_ma5_cma_c0 = i_mul93_kernel_3mm19_ma5_cma_ch[0];
    assign i_mul93_kernel_3mm19_ma5_cma_a1 = i_mul93_kernel_3mm19_ma5_cma_ah[1];
    assign i_mul93_kernel_3mm19_ma5_cma_c1 = i_mul93_kernel_3mm19_ma5_cma_ch[1];
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
    ) i_mul93_kernel_3mm19_ma5_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul93_kernel_3mm19_ma5_cma_ena2, i_mul93_kernel_3mm19_ma5_cma_ena1, i_mul93_kernel_3mm19_ma5_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul93_kernel_3mm19_ma5_cma_a1),
        .by(i_mul93_kernel_3mm19_ma5_cma_a0),
        .ax(i_mul93_kernel_3mm19_ma5_cma_c1),
        .bx(i_mul93_kernel_3mm19_ma5_cma_c0),
        .resulta(i_mul93_kernel_3mm19_ma5_cma_s0),
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
    i_mul93_kernel_3mm19_ma5_cma_delay ( .xin(i_mul93_kernel_3mm19_ma5_cma_s0), .xout(i_mul93_kernel_3mm19_ma5_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul93_kernel_3mm19_ma5_cma_q = $unsigned(i_mul93_kernel_3mm19_ma5_cma_qq[32:0]);

    // redist2_i_mul93_kernel_3mm19_ma5_cma_q_1(DELAY,370)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_i_mul93_kernel_3mm19_ma5_cma_q_1_q <= $unsigned(i_mul93_kernel_3mm19_ma5_cma_q);
        end
    end

    // i_mul93_kernel_3mm19_sums_align_1(BITSHIFT,267)@17
    assign i_mul93_kernel_3mm19_sums_align_1_qint = { redist2_i_mul93_kernel_3mm19_ma5_cma_q_1_q, 18'b000000000000000000 };
    assign i_mul93_kernel_3mm19_sums_align_1_q = i_mul93_kernel_3mm19_sums_align_1_qint[50:0];

    // i_mul93_kernel_3mm19_bjB4(BITJOIN,257)@10
    assign i_mul93_kernel_3mm19_bjB4_q = {GND_q, i_mul93_kernel_3mm19_bs3_b};

    // i_mul93_kernel_3mm19_bjA2(BITJOIN,255)@10
    assign i_mul93_kernel_3mm19_bjA2_q = {GND_q, i_mul93_kernel_3mm19_bs1_b};

    // i_mul93_kernel_3mm19_im0_cma(CHAINMULTADD,362)@10 + 5
    // out q@16
    assign i_mul93_kernel_3mm19_im0_cma_reset = ~ (resetn);
    assign i_mul93_kernel_3mm19_im0_cma_ena0 = 1'b1;
    assign i_mul93_kernel_3mm19_im0_cma_ena1 = i_mul93_kernel_3mm19_im0_cma_ena0;
    assign i_mul93_kernel_3mm19_im0_cma_ena2 = i_mul93_kernel_3mm19_im0_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul93_kernel_3mm19_im0_cma_ah[0] <= i_mul93_kernel_3mm19_bjA2_q;
            i_mul93_kernel_3mm19_im0_cma_ch[0] <= i_mul93_kernel_3mm19_bjB4_q;
        end
    end

    assign i_mul93_kernel_3mm19_im0_cma_a0 = $unsigned(i_mul93_kernel_3mm19_im0_cma_ah[0]);
    assign i_mul93_kernel_3mm19_im0_cma_c0 = $unsigned(i_mul93_kernel_3mm19_im0_cma_ch[0]);
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
    ) i_mul93_kernel_3mm19_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul93_kernel_3mm19_im0_cma_ena2, i_mul93_kernel_3mm19_im0_cma_ena1, i_mul93_kernel_3mm19_im0_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul93_kernel_3mm19_im0_cma_a0),
        .ax(i_mul93_kernel_3mm19_im0_cma_c0),
        .resulta(i_mul93_kernel_3mm19_im0_cma_s0),
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
    i_mul93_kernel_3mm19_im0_cma_delay ( .xin(i_mul93_kernel_3mm19_im0_cma_s0), .xout(i_mul93_kernel_3mm19_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul93_kernel_3mm19_im0_cma_q = $unsigned(i_mul93_kernel_3mm19_im0_cma_qq[29:0]);

    // redist4_i_mul93_kernel_3mm19_im0_cma_q_1(DELAY,372)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_i_mul93_kernel_3mm19_im0_cma_q_1_q <= $unsigned(i_mul93_kernel_3mm19_im0_cma_q);
        end
    end

    // i_mul93_kernel_3mm19_im10_cma(CHAINMULTADD,363)@10 + 5
    // out q@16
    assign i_mul93_kernel_3mm19_im10_cma_reset = ~ (resetn);
    assign i_mul93_kernel_3mm19_im10_cma_ena0 = 1'b1;
    assign i_mul93_kernel_3mm19_im10_cma_ena1 = i_mul93_kernel_3mm19_im10_cma_ena0;
    assign i_mul93_kernel_3mm19_im10_cma_ena2 = i_mul93_kernel_3mm19_im10_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul93_kernel_3mm19_im10_cma_ah[0] <= i_mul93_kernel_3mm19_bs6_b;
            i_mul93_kernel_3mm19_im10_cma_ch[0] <= i_mul93_kernel_3mm19_bs9_b;
        end
    end

    assign i_mul93_kernel_3mm19_im10_cma_a0 = i_mul93_kernel_3mm19_im10_cma_ah[0];
    assign i_mul93_kernel_3mm19_im10_cma_c0 = i_mul93_kernel_3mm19_im10_cma_ch[0];
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
    ) i_mul93_kernel_3mm19_im10_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul93_kernel_3mm19_im10_cma_ena2, i_mul93_kernel_3mm19_im10_cma_ena1, i_mul93_kernel_3mm19_im10_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul93_kernel_3mm19_im10_cma_a0),
        .ax(i_mul93_kernel_3mm19_im10_cma_c0),
        .resulta(i_mul93_kernel_3mm19_im10_cma_s0),
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
    i_mul93_kernel_3mm19_im10_cma_delay ( .xin(i_mul93_kernel_3mm19_im10_cma_s0), .xout(i_mul93_kernel_3mm19_im10_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul93_kernel_3mm19_im10_cma_q = $unsigned(i_mul93_kernel_3mm19_im10_cma_qq[35:0]);

    // redist3_i_mul93_kernel_3mm19_im10_cma_q_1(DELAY,371)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_i_mul93_kernel_3mm19_im10_cma_q_1_q <= $unsigned(i_mul93_kernel_3mm19_im10_cma_q);
        end
    end

    // i_mul93_kernel_3mm19_sums_join_0(BITJOIN,266)@17
    assign i_mul93_kernel_3mm19_sums_join_0_q = {redist4_i_mul93_kernel_3mm19_im0_cma_q_1_q, redist3_i_mul93_kernel_3mm19_im10_cma_q_1_q};

    // i_mul93_kernel_3mm19_sums_result_add_0_0(ADD,269)@17
    assign i_mul93_kernel_3mm19_sums_result_add_0_0_a = {1'b0, i_mul93_kernel_3mm19_sums_join_0_q};
    assign i_mul93_kernel_3mm19_sums_result_add_0_0_b = {16'b0000000000000000, i_mul93_kernel_3mm19_sums_align_1_q};
    assign i_mul93_kernel_3mm19_sums_result_add_0_0_o = $unsigned(i_mul93_kernel_3mm19_sums_result_add_0_0_a) + $unsigned(i_mul93_kernel_3mm19_sums_result_add_0_0_b);
    assign i_mul93_kernel_3mm19_sums_result_add_0_0_q = i_mul93_kernel_3mm19_sums_result_add_0_0_o[66:0];

    // bgTrunc_i_mul93_kernel_3mm19_sel_x(BITSELECT,94)@17
    assign bgTrunc_i_mul93_kernel_3mm19_sel_x_in = i_mul93_kernel_3mm19_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul93_kernel_3mm19_sel_x_b = bgTrunc_i_mul93_kernel_3mm19_sel_x_in[31:0];

    // redist35_bgTrunc_i_mul93_kernel_3mm19_sel_x_b_1(DELAY,403)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist35_bgTrunc_i_mul93_kernel_3mm19_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul93_kernel_3mm19_sel_x_b);
        end
    end

    // i_add94_kernel_3mm21(ADD,61)@18
    assign i_add94_kernel_3mm21_a = {1'b0, redist35_bgTrunc_i_mul93_kernel_3mm19_sel_x_b_1_q};
    assign i_add94_kernel_3mm21_b = {1'b0, i_llvm_fpga_pop_i32_tmp77_050_pop76_kernel_3mm0_i_llvm_fpga_pop_i32_tmp77_050_pop76_kernel_3mm20_mux_x_q};
    assign i_add94_kernel_3mm21_o = $unsigned(i_add94_kernel_3mm21_a) + $unsigned(i_add94_kernel_3mm21_b);
    assign i_add94_kernel_3mm21_q = i_add94_kernel_3mm21_o[32:0];

    // bgTrunc_i_add94_kernel_3mm21_sel_x(BITSELECT,91)@18
    assign bgTrunc_i_add94_kernel_3mm21_sel_x_b = i_add94_kernel_3mm21_q[31:0];

    // i_toi1_intcast4_kernel_3mm18_sel_x(BITSELECT,198)@10
    assign i_toi1_intcast4_kernel_3mm18_sel_x_b = i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm17_out_o_readdata[0:0];

    // redist23_i_toi1_intcast4_kernel_3mm18_sel_x_b_8(DELAY,391)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist23_i_toi1_intcast4_kernel_3mm18_sel_x_b_8 ( .xin(i_toi1_intcast4_kernel_3mm18_sel_x_b), .xout(redist23_i_toi1_intcast4_kernel_3mm18_sel_x_b_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_toi1_intcast_kernel_3mm14_sel_x(BITSELECT,199)@10
    assign i_toi1_intcast_kernel_3mm14_sel_x_b = i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm13_out_o_readdata[0:0];

    // redist22_i_toi1_intcast_kernel_3mm14_sel_x_b_8(DELAY,390)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist22_i_toi1_intcast_kernel_3mm14_sel_x_b_8 ( .xin(i_toi1_intcast_kernel_3mm14_sel_x_b), .xout(redist22_i_toi1_intcast_kernel_3mm14_sel_x_b_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,200)@18
    assign out_c0_exi12599_0_tpl = GND_q;
    assign out_c0_exi12599_1_tpl = redist22_i_toi1_intcast_kernel_3mm14_sel_x_b_8_q;
    assign out_c0_exi12599_2_tpl = redist23_i_toi1_intcast4_kernel_3mm18_sel_x_b_8_q;
    assign out_c0_exi12599_3_tpl = bgTrunc_i_add94_kernel_3mm21_sel_x_b;
    assign out_c0_exi12599_4_tpl = redist5_i_exitcond19_kernel_3mm24_cmp_nsign_q_14_q;
    assign out_c0_exi12599_5_tpl = i_notcmp_kernel_3mm30_q;
    assign out_c0_exi12599_6_tpl = i_llvm_fpga_pop_i1_notcmp3193_pop79_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp3193_pop79_kernel_3mm36_mux_x_q;
    assign out_c0_exi12599_7_tpl = redist27_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm0_i_llvm_fpga_pop_p70i32_arrayidx817110_pop83_kernel_3mm40_mux_x_q_14_outputreg0_q;
    assign out_c0_exi12599_8_tpl = i_llvm_fpga_pop_i1_notcmp26111_pop84_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp26111_pop84_kernel_3mm42_mux_x_q;
    assign out_c0_exi12599_9_tpl = redist12_sync_together109_aunroll_x_in_c0_eni13573_10_tpl_18_q;
    assign out_c0_exi12599_10_tpl = redist13_sync_together109_aunroll_x_in_c0_eni13573_11_tpl_18_q;
    assign out_c0_exi12599_11_tpl = redist14_sync_together109_aunroll_x_in_c0_eni13573_12_tpl_18_outputreg0_q;
    assign out_c0_exi12599_12_tpl = redist15_sync_together109_aunroll_x_in_c0_eni13573_13_tpl_18_q;
    assign out_kernel_3mm_B12_current_iter_isspec = redist39_i_kernel_3mm_b12_current_iter_isspec_kernel_3mm5_q_12_q;
    assign out_o_valid = valid_fanout_reg0_q;

endmodule
