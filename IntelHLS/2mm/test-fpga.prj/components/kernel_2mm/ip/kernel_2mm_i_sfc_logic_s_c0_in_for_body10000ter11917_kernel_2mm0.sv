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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body15_kernel_2mms_c0_enter11917_kernel_2mm0
// Created for function/kernel kernel_2mm
// SystemVerilog created on Thu Apr 27 14:25:48 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_2mm_i_sfc_logic_s_c0_in_for_body10000ter11917_kernel_2mm0 (
    input wire [31:0] in_unnamed_kernel_2mm9_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm9_kernel_2mm_avm_writeack,
    input wire [0:0] in_unnamed_kernel_2mm9_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm9_kernel_2mm_avm_readdatavalid,
    output wire [31:0] out_unnamed_kernel_2mm9_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm9_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm9_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm9_kernel_2mm_avm_write,
    output wire [31:0] out_unnamed_kernel_2mm9_kernel_2mm_avm_writedata,
    output wire [3:0] out_unnamed_kernel_2mm9_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm9_kernel_2mm_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [31:0] in_intel_reserved_ffwd_0_0,
    output wire [0:0] out_exiting_valid_out,
    input wire [31:0] in_unnamed_kernel_2mm10_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm10_kernel_2mm_avm_writeack,
    input wire [0:0] in_unnamed_kernel_2mm10_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm10_kernel_2mm_avm_readdatavalid,
    output wire [31:0] out_unnamed_kernel_2mm10_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm10_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm10_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm10_kernel_2mm_avm_write,
    output wire [31:0] out_unnamed_kernel_2mm10_kernel_2mm_avm_writedata,
    output wire [3:0] out_unnamed_kernel_2mm10_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm10_kernel_2mm_avm_burstcount,
    output wire [0:0] out_pipeline_dummy_out,
    output wire [0:0] out_pipeline_forked_out,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_c0_exi9131_0_tpl,
    output wire [63:0] out_c0_exi9131_1_tpl,
    output wire [31:0] out_c0_exi9131_2_tpl,
    output wire [0:0] out_c0_exi9131_3_tpl,
    output wire [0:0] out_c0_exi9131_4_tpl,
    output wire [0:0] out_c0_exi9131_5_tpl,
    output wire [63:0] out_c0_exi9131_6_tpl,
    output wire [0:0] out_c0_exi9131_7_tpl,
    output wire [0:0] out_c0_exi9131_8_tpl,
    output wire [31:0] out_c0_exi9131_9_tpl,
    output wire [0:0] out_kernel_2mm_B6_current_iter_isspec,
    output wire [0:0] out_o_valid,
    input wire [0:0] in_buffer_in,
    input wire [0:0] in_c0_eni10_0_tpl,
    input wire [0:0] in_c0_eni10_1_tpl,
    input wire [63:0] in_c0_eni10_2_tpl,
    input wire [63:0] in_c0_eni10_3_tpl,
    input wire [31:0] in_c0_eni10_4_tpl,
    input wire [0:0] in_c0_eni10_5_tpl,
    input wire [31:0] in_c0_eni10_6_tpl,
    input wire [63:0] in_c0_eni10_7_tpl,
    input wire [0:0] in_c0_eni10_8_tpl,
    input wire [0:0] in_c0_eni10_9_tpl,
    input wire [31:0] in_c0_eni10_10_tpl,
    input wire [0:0] in_dummy_in,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_094_q;
    wire [31:0] c_i32_195_q;
    wire [4:0] c_i5_198_q;
    wire [4:0] c_i5_896_q;
    wire [63:0] c_kernel_2mm_A_local_pmem_q;
    wire [63:0] c_kernel_2mm_B_local_pmem_q;
    wire [32:0] i_add_kernel_2mm21_a;
    wire [32:0] i_add_kernel_2mm21_b;
    logic [32:0] i_add_kernel_2mm21_o;
    wire [32:0] i_add_kernel_2mm21_q;
    wire [1:0] i_arrayidx192_kernel_2mm12_vt_const_1_q;
    wire [63:0] i_arrayidx192_kernel_2mm12_vt_join_q;
    wire [61:0] i_arrayidx192_kernel_2mm12_vt_select_63_b;
    wire [63:0] i_arrayidx233_kernel_2mm17_vt_join_q;
    wire [61:0] i_arrayidx233_kernel_2mm17_vt_select_63_b;
    wire [5:0] i_fpga_indvars_iv_next_kernel_2mm32_a;
    wire [5:0] i_fpga_indvars_iv_next_kernel_2mm32_b;
    logic [5:0] i_fpga_indvars_iv_next_kernel_2mm32_o;
    wire [5:0] i_fpga_indvars_iv_next_kernel_2mm32_q;
    wire [63:0] i_idxprom18_kernel_2mm10_vt_join_q;
    wire [31:0] i_idxprom18_kernel_2mm10_vt_select_31_b;
    wire [32:0] i_inc_kernel_2mm22_a;
    wire [32:0] i_inc_kernel_2mm22_b;
    logic [32:0] i_inc_kernel_2mm22_o;
    wire [32:0] i_inc_kernel_2mm22_q;
    wire [0:0] i_kernel_2mm_b6_current_iter_isspec_kernel_2mm5_q;
    wire [0:0] i_kernel_2mm_b6_next_iter_isreal_kernel_2mm7_q;
    wire [0:0] i_llvm_fpga_dummy_thread_kernel_2mm_b6_dummy_kernel_2mm2_out_dummy_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_alpha4114_kernel_2mm14_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_forked_kernel_2mm_b6_forked_kernel_2mm3_out_buffer_out;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_2mm10_kernel_2mm18_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_2mm10_kernel_2mm18_out_unnamed_kernel_2mm10_kernel_2mm_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_2mm10_kernel_2mm18_out_unnamed_kernel_2mm10_kernel_2mm_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_kernel_2mm10_kernel_2mm18_out_unnamed_kernel_2mm10_kernel_2mm_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_2mm10_kernel_2mm18_out_unnamed_kernel_2mm10_kernel_2mm_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_2mm10_kernel_2mm18_out_unnamed_kernel_2mm10_kernel_2mm_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_2mm10_kernel_2mm18_out_unnamed_kernel_2mm10_kernel_2mm_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_2mm10_kernel_2mm18_out_unnamed_kernel_2mm10_kernel_2mm_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_2mm9_kernel_2mm13_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_2mm9_kernel_2mm13_out_unnamed_kernel_2mm9_kernel_2mm_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_2mm9_kernel_2mm13_out_unnamed_kernel_2mm9_kernel_2mm_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_kernel_2mm9_kernel_2mm13_out_unnamed_kernel_2mm9_kernel_2mm_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_2mm9_kernel_2mm13_out_unnamed_kernel_2mm9_kernel_2mm_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_2mm9_kernel_2mm13_out_unnamed_kernel_2mm9_kernel_2mm_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_2mm9_kernel_2mm13_out_unnamed_kernel_2mm9_kernel_2mm_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_2mm9_kernel_2mm13_out_unnamed_kernel_2mm9_kernel_2mm_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going23_kernel_2mm6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going23_kernel_2mm6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going23_kernel_2mm6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going23_kernel_2mm6_out_pipeline_dummy_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going23_kernel_2mm6_out_pipeline_forked_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going23_kernel_2mm6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond24_kernel_2mm31_out_feedback_out_7;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond24_kernel_2mm31_out_feedback_valid_out_7;
    wire [0:0] i_notcmp21_kernel_2mm30_q;
    wire [31:0] bgTrunc_i_add_kernel_2mm21_sel_x_b;
    wire [4:0] bgTrunc_i_fpga_indvars_iv_next_kernel_2mm32_sel_x_b;
    wire [31:0] bgTrunc_i_inc_kernel_2mm22_sel_x_b;
    wire [63:0] bgTrunc_i_mul24_kernel_2mm19_sel_x_in;
    wire [31:0] bgTrunc_i_mul24_kernel_2mm19_sel_x_b;
    wire [63:0] bgTrunc_i_mul_kernel_2mm15_sel_x_in;
    wire [31:0] bgTrunc_i_mul_kernel_2mm15_sel_x_b;
    wire [9:0] i_arrayidx192_kernel_2mm0_add_x_a;
    wire [9:0] i_arrayidx192_kernel_2mm0_add_x_b;
    logic [9:0] i_arrayidx192_kernel_2mm0_add_x_o;
    wire [9:0] i_arrayidx192_kernel_2mm0_add_x_q;
    wire [63:0] i_arrayidx192_kernel_2mm0_append_upper_bits_x_q;
    wire [6:0] i_arrayidx192_kernel_2mm0_narrow_x_b;
    wire [8:0] i_arrayidx192_kernel_2mm0_shift_join_x_q;
    wire [9:0] i_arrayidx192_kernel_2mm0_dupName_0_add_x_a;
    wire [9:0] i_arrayidx192_kernel_2mm0_dupName_0_add_x_b;
    logic [9:0] i_arrayidx192_kernel_2mm0_dupName_0_add_x_o;
    wire [9:0] i_arrayidx192_kernel_2mm0_dupName_0_add_x_q;
    wire [17:0] i_arrayidx192_kernel_2mm0_mult_extender_x_q;
    wire [2:0] i_arrayidx192_kernel_2mm0_mult_multconst_x_q;
    wire [8:0] i_arrayidx192_kernel_2mm0_dupName_0_trunc_sel_x_b;
    wire [8:0] i_arrayidx192_kernel_2mm0_dupName_1_trunc_sel_x_b;
    wire [8:0] i_arrayidx192_kernel_2mm0_dupName_2_trunc_sel_x_b;
    wire [8:0] i_arrayidx192_kernel_2mm0_dupName_3_trunc_sel_x_b;
    wire [8:0] i_arrayidx192_kernel_2mm0_dupName_5_trunc_sel_x_b;
    wire [9:0] i_arrayidx233_kernel_2mm0_add_x_a;
    wire [9:0] i_arrayidx233_kernel_2mm0_add_x_b;
    logic [9:0] i_arrayidx233_kernel_2mm0_add_x_o;
    wire [9:0] i_arrayidx233_kernel_2mm0_add_x_q;
    wire [63:0] i_arrayidx233_kernel_2mm0_append_upper_bits_x_q;
    wire [6:0] i_arrayidx233_kernel_2mm0_narrow_x_b;
    wire [8:0] i_arrayidx233_kernel_2mm0_shift_join_x_q;
    wire [9:0] i_arrayidx233_kernel_2mm0_dupName_0_add_x_a;
    wire [9:0] i_arrayidx233_kernel_2mm0_dupName_0_add_x_b;
    logic [9:0] i_arrayidx233_kernel_2mm0_dupName_0_add_x_o;
    wire [9:0] i_arrayidx233_kernel_2mm0_dupName_0_add_x_q;
    wire [17:0] i_arrayidx233_kernel_2mm0_mult_extender_x_q;
    wire [8:0] i_arrayidx233_kernel_2mm0_dupName_1_trunc_sel_x_b;
    wire [8:0] i_arrayidx233_kernel_2mm0_dupName_2_trunc_sel_x_b;
    wire [8:0] i_arrayidx233_kernel_2mm0_dupName_3_trunc_sel_x_b;
    wire [8:0] i_arrayidx233_kernel_2mm0_dupName_5_trunc_sel_x_b;
    wire [63:0] i_idxprom18_kernel_2mm10_sel_x_b;
    wire [0:0] i_llvm_fpga_pop_coalesce_i1_kernel_2mm_b6_current_iter_isreal_kernel_2mm0_i_llvm_fpga_pop_coalesce_i1_kernel_2mm_b6_current_iter_isreal_kernel_2mm4_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_coalesce_i1_kernel_2mm_b6_current_iter_isreal_kernel_2mm0_i_llvm_fpga_pop_coalesce_i1_kernel_2mm_b6_current_iter_isreal_kernel_2mm4_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2655_pop32_kernel_2mm0_i_llvm_fpga_pop_i1_notcmp2655_pop32_kernel_2mm40_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_notcmp2655_pop32_kernel_2mm0_i_llvm_fpga_pop_i1_notcmp2655_pop32_kernel_2mm40_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp3142_pop27_kernel_2mm0_i_llvm_fpga_pop_i1_notcmp3142_pop27_kernel_2mm34_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_notcmp3142_pop27_kernel_2mm0_i_llvm_fpga_pop_i1_notcmp3142_pop27_kernel_2mm34_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_k_038_pop25_kernel_2mm0_i_llvm_fpga_pop_i32_k_038_pop25_kernel_2mm9_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_k_038_pop25_kernel_2mm0_i_llvm_fpga_pop_i32_k_038_pop25_kernel_2mm9_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_x_037_pop26_kernel_2mm0_i_llvm_fpga_pop_i32_x_037_pop26_kernel_2mm20_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_x_037_pop26_kernel_2mm0_i_llvm_fpga_pop_i32_x_037_pop26_kernel_2mm20_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i5_fpga_indvars_iv_pop24_kernel_2mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop24_kernel_2mm23_mux_x_s;
    reg [4:0] i_llvm_fpga_pop_i5_fpga_indvars_iv_pop24_kernel_2mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop24_kernel_2mm23_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i64_idxprom1053_pop30_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom1053_pop30_kernel_2mm16_mux_x_s;
    reg [63:0] i_llvm_fpga_pop_i64_idxprom1053_pop30_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom1053_pop30_kernel_2mm16_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm11_mux_x_s;
    reg [63:0] i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm11_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm0_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm38_mux_x_s;
    reg [63:0] i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm0_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm38_mux_x_q;
    wire [6:0] i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_c_i7_03_x_q;
    wire [7:0] i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm1_x_i_valid;
    wire i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm1_x_i_stall;
    wire i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q;
    wire [0:0] i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_notcmp2655_push32_kernel_2mm0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2655_push32_kernel_2mm0_i_llvm_fpga_push_i1_notcmp2655_push32_kernel_2mm1_x_i_valid;
    wire i_llvm_fpga_push_i1_notcmp2655_push32_kernel_2mm0_i_llvm_fpga_push_i1_notcmp2655_push32_kernel_2mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2655_push32_kernel_2mm0_i_llvm_fpga_push_i1_notcmp2655_push32_kernel_2mm1_x_i_stall;
    wire i_llvm_fpga_push_i1_notcmp2655_push32_kernel_2mm0_i_llvm_fpga_push_i1_notcmp2655_push32_kernel_2mm1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_notcmp2655_push32_kernel_2mm0_i_llvm_fpga_push_i1_notcmp2655_push32_kernel_2mm1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_notcmp2655_push32_kernel_2mm0_i_llvm_fpga_push_i1_notcmp2655_push32_kernel_2mm1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2655_push32_kernel_2mm0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_notcmp3142_push27_kernel_2mm0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_notcmp3142_push27_kernel_2mm0_i_llvm_fpga_push_i1_notcmp3142_push27_kernel_2mm1_x_i_valid;
    wire i_llvm_fpga_push_i1_notcmp3142_push27_kernel_2mm0_i_llvm_fpga_push_i1_notcmp3142_push27_kernel_2mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_notcmp3142_push27_kernel_2mm0_i_llvm_fpga_push_i1_notcmp3142_push27_kernel_2mm1_x_i_stall;
    wire i_llvm_fpga_push_i1_notcmp3142_push27_kernel_2mm0_i_llvm_fpga_push_i1_notcmp3142_push27_kernel_2mm1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_notcmp3142_push27_kernel_2mm0_i_llvm_fpga_push_i1_notcmp3142_push27_kernel_2mm1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_notcmp3142_push27_kernel_2mm0_i_llvm_fpga_push_i1_notcmp3142_push27_kernel_2mm1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_notcmp3142_push27_kernel_2mm0_adapt_scalar_trunc4_sel_x_b;
    wire [0:0] i_llvm_fpga_push_i32_k_038_push25_kernel_2mm0_i_llvm_fpga_push_i32_k_038_push25_kernel_2mm1_x_i_valid;
    wire i_llvm_fpga_push_i32_k_038_push25_kernel_2mm0_i_llvm_fpga_push_i32_k_038_push25_kernel_2mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_k_038_push25_kernel_2mm0_i_llvm_fpga_push_i32_k_038_push25_kernel_2mm1_x_i_stall;
    wire i_llvm_fpga_push_i32_k_038_push25_kernel_2mm0_i_llvm_fpga_push_i32_k_038_push25_kernel_2mm1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_k_038_push25_kernel_2mm0_i_llvm_fpga_push_i32_k_038_push25_kernel_2mm1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_k_038_push25_kernel_2mm0_i_llvm_fpga_push_i32_k_038_push25_kernel_2mm1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i32_x_037_push26_kernel_2mm0_i_llvm_fpga_push_i32_x_037_push26_kernel_2mm1_x_i_valid;
    wire i_llvm_fpga_push_i32_x_037_push26_kernel_2mm0_i_llvm_fpga_push_i32_x_037_push26_kernel_2mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_x_037_push26_kernel_2mm0_i_llvm_fpga_push_i32_x_037_push26_kernel_2mm1_x_i_stall;
    wire i_llvm_fpga_push_i32_x_037_push26_kernel_2mm0_i_llvm_fpga_push_i32_x_037_push26_kernel_2mm1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_x_037_push26_kernel_2mm0_i_llvm_fpga_push_i32_x_037_push26_kernel_2mm1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_x_037_push26_kernel_2mm0_i_llvm_fpga_push_i32_x_037_push26_kernel_2mm1_x_o_data;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv_push24_kernel_2mm0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv_push24_kernel_2mm0_i_llvm_fpga_push_i5_fpga_indvars_iv_push24_kernel_2mm1_x_i_valid;
    wire i_llvm_fpga_push_i5_fpga_indvars_iv_push24_kernel_2mm0_i_llvm_fpga_push_i5_fpga_indvars_iv_push24_kernel_2mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv_push24_kernel_2mm0_i_llvm_fpga_push_i5_fpga_indvars_iv_push24_kernel_2mm1_x_i_stall;
    wire i_llvm_fpga_push_i5_fpga_indvars_iv_push24_kernel_2mm0_i_llvm_fpga_push_i5_fpga_indvars_iv_push24_kernel_2mm1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv_push24_kernel_2mm0_i_llvm_fpga_push_i5_fpga_indvars_iv_push24_kernel_2mm1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv_push24_kernel_2mm0_i_llvm_fpga_push_i5_fpga_indvars_iv_push24_kernel_2mm1_x_o_data;
    wire [4:0] i_llvm_fpga_push_i5_fpga_indvars_iv_push24_kernel_2mm0_adapt_scalar_trunc4_sel_x_b;
    wire [0:0] i_llvm_fpga_push_i64_idxprom1053_push30_kernel_2mm0_i_llvm_fpga_push_i64_idxprom1053_push30_kernel_2mm1_x_i_valid;
    wire i_llvm_fpga_push_i64_idxprom1053_push30_kernel_2mm0_i_llvm_fpga_push_i64_idxprom1053_push30_kernel_2mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i64_idxprom1053_push30_kernel_2mm0_i_llvm_fpga_push_i64_idxprom1053_push30_kernel_2mm1_x_i_stall;
    wire i_llvm_fpga_push_i64_idxprom1053_push30_kernel_2mm0_i_llvm_fpga_push_i64_idxprom1053_push30_kernel_2mm1_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_i64_idxprom1053_push30_kernel_2mm0_i_llvm_fpga_push_i64_idxprom1053_push30_kernel_2mm1_x_i_data;
    wire [63:0] i_llvm_fpga_push_i64_idxprom1053_push30_kernel_2mm0_i_llvm_fpga_push_i64_idxprom1053_push30_kernel_2mm1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i64_idxprom52_push29_kernel_2mm0_i_llvm_fpga_push_i64_idxprom52_push29_kernel_2mm1_x_i_valid;
    wire i_llvm_fpga_push_i64_idxprom52_push29_kernel_2mm0_i_llvm_fpga_push_i64_idxprom52_push29_kernel_2mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i64_idxprom52_push29_kernel_2mm0_i_llvm_fpga_push_i64_idxprom52_push29_kernel_2mm1_x_i_stall;
    wire i_llvm_fpga_push_i64_idxprom52_push29_kernel_2mm0_i_llvm_fpga_push_i64_idxprom52_push29_kernel_2mm1_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_i64_idxprom52_push29_kernel_2mm0_i_llvm_fpga_push_i64_idxprom52_push29_kernel_2mm1_x_i_data;
    wire [63:0] i_llvm_fpga_push_i64_idxprom52_push29_kernel_2mm0_i_llvm_fpga_push_i64_idxprom52_push29_kernel_2mm1_x_o_data;
    wire [0:0] i_llvm_fpga_push_p64i32_arrayidx11154_push31_kernel_2mm0_i_llvm_fpga_push_p64i32_arrayidx11154_push31_kernel_2mm1_x_i_valid;
    wire i_llvm_fpga_push_p64i32_arrayidx11154_push31_kernel_2mm0_i_llvm_fpga_push_p64i32_arrayidx11154_push31_kernel_2mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_p64i32_arrayidx11154_push31_kernel_2mm0_i_llvm_fpga_push_p64i32_arrayidx11154_push31_kernel_2mm1_x_i_stall;
    wire i_llvm_fpga_push_p64i32_arrayidx11154_push31_kernel_2mm0_i_llvm_fpga_push_p64i32_arrayidx11154_push31_kernel_2mm1_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_p64i32_arrayidx11154_push31_kernel_2mm0_i_llvm_fpga_push_p64i32_arrayidx11154_push31_kernel_2mm1_x_i_data;
    wire [63:0] i_llvm_fpga_push_p64i32_arrayidx11154_push31_kernel_2mm0_i_llvm_fpga_push_p64i32_arrayidx11154_push31_kernel_2mm1_x_o_data;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg7_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg8_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg10_q;
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
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg23_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg25_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg26_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg31_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg32_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg34_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg35_q;
    wire [0:0] i_exitcond_kernel_2mm24_cmp_nsign_q;
    wire [14:0] i_mul24_kernel_2mm19_bjA2_q;
    wire [14:0] i_mul24_kernel_2mm19_bjB4_q;
    wire [65:0] i_mul24_kernel_2mm19_sums_join_0_q;
    wire [50:0] i_mul24_kernel_2mm19_sums_align_1_q;
    wire [50:0] i_mul24_kernel_2mm19_sums_align_1_qint;
    wire [66:0] i_mul24_kernel_2mm19_sums_result_add_0_0_a;
    wire [66:0] i_mul24_kernel_2mm19_sums_result_add_0_0_b;
    logic [66:0] i_mul24_kernel_2mm19_sums_result_add_0_0_o;
    wire [66:0] i_mul24_kernel_2mm19_sums_result_add_0_0_q;
    wire [14:0] i_mul_kernel_2mm15_bjA2_q;
    wire [14:0] i_mul_kernel_2mm15_bjB4_q;
    wire [65:0] i_mul_kernel_2mm15_sums_join_0_q;
    wire [50:0] i_mul_kernel_2mm15_sums_align_1_q;
    wire [50:0] i_mul_kernel_2mm15_sums_align_1_qint;
    wire [66:0] i_mul_kernel_2mm15_sums_result_add_0_0_a;
    wire [66:0] i_mul_kernel_2mm15_sums_result_add_0_0_b;
    logic [66:0] i_mul_kernel_2mm15_sums_result_add_0_0_o;
    wire [66:0] i_mul_kernel_2mm15_sums_result_add_0_0_q;
    wire [9:0] addsumAHighB_uid296_i_arrayidx192_kernel_2mm0_mult_x_a;
    wire [9:0] addsumAHighB_uid296_i_arrayidx192_kernel_2mm0_mult_x_b;
    logic [9:0] addsumAHighB_uid296_i_arrayidx192_kernel_2mm0_mult_x_o;
    wire [9:0] addsumAHighB_uid296_i_arrayidx192_kernel_2mm0_mult_x_q;
    wire [11:0] add_uid297_i_arrayidx192_kernel_2mm0_mult_x_q;
    wire [14:0] sR_mergedSignalTM_uid302_i_arrayidx192_kernel_2mm0_mult_x_q;
    wire [1:0] lowRangeB_uid340_i_arrayidx233_kernel_2mm0_mult_x_in;
    wire [1:0] lowRangeB_uid340_i_arrayidx233_kernel_2mm0_mult_x_b;
    wire [6:0] highBBits_uid341_i_arrayidx233_kernel_2mm0_mult_x_b;
    wire [9:0] addsumAHighB_uid342_i_arrayidx233_kernel_2mm0_mult_x_a;
    wire [9:0] addsumAHighB_uid342_i_arrayidx233_kernel_2mm0_mult_x_b;
    logic [9:0] addsumAHighB_uid342_i_arrayidx233_kernel_2mm0_mult_x_o;
    wire [9:0] addsumAHighB_uid342_i_arrayidx233_kernel_2mm0_mult_x_q;
    wire [11:0] add_uid343_i_arrayidx233_kernel_2mm0_mult_x_q;
    wire [14:0] sR_mergedSignalTM_uid348_i_arrayidx233_kernel_2mm0_mult_x_q;
    wire i_mul24_kernel_2mm19_im0_cma_reset;
    (* preserve_syn_only *) reg signed [14:0] i_mul24_kernel_2mm19_im0_cma_ah [0:0];
    (* preserve_syn_only *) reg signed [14:0] i_mul24_kernel_2mm19_im0_cma_ch [0:0];
    wire [14:0] i_mul24_kernel_2mm19_im0_cma_a0;
    wire [14:0] i_mul24_kernel_2mm19_im0_cma_c0;
    wire [29:0] i_mul24_kernel_2mm19_im0_cma_s0;
    wire [29:0] i_mul24_kernel_2mm19_im0_cma_qq;
    reg [29:0] i_mul24_kernel_2mm19_im0_cma_q;
    wire i_mul24_kernel_2mm19_im0_cma_ena0;
    wire i_mul24_kernel_2mm19_im0_cma_ena1;
    wire i_mul24_kernel_2mm19_im0_cma_ena2;
    wire i_mul24_kernel_2mm19_im10_cma_reset;
    (* preserve_syn_only *) reg [17:0] i_mul24_kernel_2mm19_im10_cma_ah [0:0];
    (* preserve_syn_only *) reg [17:0] i_mul24_kernel_2mm19_im10_cma_ch [0:0];
    wire [17:0] i_mul24_kernel_2mm19_im10_cma_a0;
    wire [17:0] i_mul24_kernel_2mm19_im10_cma_c0;
    wire [35:0] i_mul24_kernel_2mm19_im10_cma_s0;
    wire [35:0] i_mul24_kernel_2mm19_im10_cma_qq;
    reg [35:0] i_mul24_kernel_2mm19_im10_cma_q;
    wire i_mul24_kernel_2mm19_im10_cma_ena0;
    wire i_mul24_kernel_2mm19_im10_cma_ena1;
    wire i_mul24_kernel_2mm19_im10_cma_ena2;
    wire i_mul_kernel_2mm15_im0_cma_reset;
    (* preserve_syn_only *) reg signed [14:0] i_mul_kernel_2mm15_im0_cma_ah [0:0];
    (* preserve_syn_only *) reg signed [14:0] i_mul_kernel_2mm15_im0_cma_ch [0:0];
    wire [14:0] i_mul_kernel_2mm15_im0_cma_a0;
    wire [14:0] i_mul_kernel_2mm15_im0_cma_c0;
    wire [29:0] i_mul_kernel_2mm15_im0_cma_s0;
    wire [29:0] i_mul_kernel_2mm15_im0_cma_qq;
    reg [29:0] i_mul_kernel_2mm15_im0_cma_q;
    wire i_mul_kernel_2mm15_im0_cma_ena0;
    wire i_mul_kernel_2mm15_im0_cma_ena1;
    wire i_mul_kernel_2mm15_im0_cma_ena2;
    wire i_mul_kernel_2mm15_im10_cma_reset;
    (* preserve_syn_only *) reg [17:0] i_mul_kernel_2mm15_im10_cma_ah [0:0];
    (* preserve_syn_only *) reg [17:0] i_mul_kernel_2mm15_im10_cma_ch [0:0];
    wire [17:0] i_mul_kernel_2mm15_im10_cma_a0;
    wire [17:0] i_mul_kernel_2mm15_im10_cma_c0;
    wire [35:0] i_mul_kernel_2mm15_im10_cma_s0;
    wire [35:0] i_mul_kernel_2mm15_im10_cma_qq;
    reg [35:0] i_mul_kernel_2mm15_im10_cma_q;
    wire i_mul_kernel_2mm15_im10_cma_ena0;
    wire i_mul_kernel_2mm15_im10_cma_ena1;
    wire i_mul_kernel_2mm15_im10_cma_ena2;
    wire i_mul24_kernel_2mm19_ma5_cma_reset;
    (* preserve_syn_only *) reg [13:0] i_mul24_kernel_2mm19_ma5_cma_ah [0:1];
    (* preserve_syn_only *) reg [17:0] i_mul24_kernel_2mm19_ma5_cma_ch [0:1];
    wire [13:0] i_mul24_kernel_2mm19_ma5_cma_a0;
    wire [17:0] i_mul24_kernel_2mm19_ma5_cma_c0;
    wire [13:0] i_mul24_kernel_2mm19_ma5_cma_a1;
    wire [17:0] i_mul24_kernel_2mm19_ma5_cma_c1;
    wire [32:0] i_mul24_kernel_2mm19_ma5_cma_s0;
    wire [32:0] i_mul24_kernel_2mm19_ma5_cma_qq;
    reg [32:0] i_mul24_kernel_2mm19_ma5_cma_q;
    wire i_mul24_kernel_2mm19_ma5_cma_ena0;
    wire i_mul24_kernel_2mm19_ma5_cma_ena1;
    wire i_mul24_kernel_2mm19_ma5_cma_ena2;
    wire i_mul_kernel_2mm15_ma5_cma_reset;
    (* preserve_syn_only *) reg [13:0] i_mul_kernel_2mm15_ma5_cma_ah [0:1];
    (* preserve_syn_only *) reg [17:0] i_mul_kernel_2mm15_ma5_cma_ch [0:1];
    wire [13:0] i_mul_kernel_2mm15_ma5_cma_a0;
    wire [17:0] i_mul_kernel_2mm15_ma5_cma_c0;
    wire [13:0] i_mul_kernel_2mm15_ma5_cma_a1;
    wire [17:0] i_mul_kernel_2mm15_ma5_cma_c1;
    wire [32:0] i_mul_kernel_2mm15_ma5_cma_s0;
    wire [32:0] i_mul_kernel_2mm15_ma5_cma_qq;
    reg [32:0] i_mul_kernel_2mm15_ma5_cma_q;
    wire i_mul_kernel_2mm15_ma5_cma_ena0;
    wire i_mul_kernel_2mm15_ma5_cma_ena1;
    wire i_mul_kernel_2mm15_ma5_cma_ena2;
    wire [54:0] i_arrayidx192_kernel_2mm0_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx192_kernel_2mm0_upper_bits_x_merged_bit_select_c;
    wire [54:0] i_arrayidx233_kernel_2mm0_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx233_kernel_2mm0_upper_bits_x_merged_bit_select_c;
    wire [13:0] i_mul_kernel_2mm15_bs3_merged_bit_select_b;
    wire [17:0] i_mul_kernel_2mm15_bs3_merged_bit_select_c;
    wire [13:0] i_mul24_kernel_2mm19_bs3_merged_bit_select_b;
    wire [17:0] i_mul24_kernel_2mm19_bs3_merged_bit_select_c;
    wire [13:0] i_mul_kernel_2mm15_bs1_merged_bit_select_b;
    wire [17:0] i_mul_kernel_2mm15_bs1_merged_bit_select_c;
    wire [13:0] i_mul24_kernel_2mm19_bs1_merged_bit_select_b;
    wire [17:0] i_mul24_kernel_2mm19_bs1_merged_bit_select_c;
    wire [1:0] lowRangeB_uid294_i_arrayidx192_kernel_2mm0_mult_x_merged_bit_select_b;
    wire [6:0] lowRangeB_uid294_i_arrayidx192_kernel_2mm0_mult_x_merged_bit_select_c;
    reg [54:0] redist0_i_arrayidx233_kernel_2mm0_upper_bits_x_merged_bit_select_b_1_q;
    reg [54:0] redist1_i_arrayidx192_kernel_2mm0_upper_bits_x_merged_bit_select_b_1_q;
    reg [32:0] redist2_i_mul_kernel_2mm15_ma5_cma_q_1_q;
    reg [32:0] redist3_i_mul24_kernel_2mm19_ma5_cma_q_1_q;
    reg [35:0] redist4_i_mul_kernel_2mm15_im10_cma_q_1_q;
    reg [29:0] redist5_i_mul_kernel_2mm15_im0_cma_q_1_q;
    reg [35:0] redist6_i_mul24_kernel_2mm19_im10_cma_q_1_q;
    reg [29:0] redist7_i_mul24_kernel_2mm19_im0_cma_q_1_q;
    reg [0:0] redist8_i_exitcond_kernel_2mm24_cmp_nsign_q_22_q;
    reg [0:0] redist9_valid_fanout_reg0_q_1_q;
    reg [63:0] redist10_sync_together106_aunroll_x_in_c0_eni10_2_tpl_4_q;
    reg [63:0] redist10_sync_together106_aunroll_x_in_c0_eni10_2_tpl_4_delay_0;
    reg [63:0] redist10_sync_together106_aunroll_x_in_c0_eni10_2_tpl_4_delay_1;
    reg [63:0] redist11_sync_together106_aunroll_x_in_c0_eni10_3_tpl_4_q;
    reg [63:0] redist11_sync_together106_aunroll_x_in_c0_eni10_3_tpl_4_delay_0;
    reg [63:0] redist11_sync_together106_aunroll_x_in_c0_eni10_3_tpl_4_delay_1;
    reg [0:0] redist13_sync_together106_aunroll_x_in_c0_eni10_5_tpl_25_q;
    reg [63:0] redist14_sync_together106_aunroll_x_in_c0_eni10_7_tpl_4_q;
    reg [63:0] redist14_sync_together106_aunroll_x_in_c0_eni10_7_tpl_4_delay_0;
    reg [63:0] redist14_sync_together106_aunroll_x_in_c0_eni10_7_tpl_4_delay_1;
    reg [0:0] redist15_sync_together106_aunroll_x_in_c0_eni10_8_tpl_25_q;
    reg [0:0] redist16_sync_together106_aunroll_x_in_c0_eni10_9_tpl_26_q;
    reg [0:0] redist18_sync_together106_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist18_sync_together106_aunroll_x_in_i_valid_2_delay_0;
    reg [0:0] redist19_sync_together106_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist20_sync_together106_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist21_sync_together106_aunroll_x_in_i_valid_5_q;
    reg [0:0] redist22_sync_together106_aunroll_x_in_i_valid_9_q;
    reg [0:0] redist22_sync_together106_aunroll_x_in_i_valid_9_delay_0;
    reg [0:0] redist22_sync_together106_aunroll_x_in_i_valid_9_delay_1;
    reg [0:0] redist22_sync_together106_aunroll_x_in_i_valid_9_delay_2;
    reg [0:0] redist23_sync_together106_aunroll_x_in_i_valid_13_q;
    reg [0:0] redist23_sync_together106_aunroll_x_in_i_valid_13_delay_0;
    reg [0:0] redist23_sync_together106_aunroll_x_in_i_valid_13_delay_1;
    reg [0:0] redist23_sync_together106_aunroll_x_in_i_valid_13_delay_2;
    reg [0:0] redist24_sync_together106_aunroll_x_in_i_valid_21_q;
    reg [0:0] redist25_sync_together106_aunroll_x_in_i_valid_24_q;
    reg [0:0] redist25_sync_together106_aunroll_x_in_i_valid_24_delay_0;
    reg [0:0] redist25_sync_together106_aunroll_x_in_i_valid_24_delay_1;
    reg [0:0] redist26_i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q_2_q;
    reg [0:0] redist26_i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q_2_delay_0;
    reg [0:0] redist27_i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q_4_q;
    reg [0:0] redist27_i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q_4_delay_0;
    reg [0:0] redist28_i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q_21_q;
    reg [0:0] redist29_i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q_24_q;
    reg [0:0] redist29_i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q_24_delay_0;
    reg [0:0] redist29_i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q_24_delay_1;
    reg [0:0] redist32_i_llvm_fpga_pop_coalesce_i1_kernel_2mm_b6_current_iter_isreal_kernel_2mm0_i_llvm_fpga_pop_coalesce_i1_kernel_2mm_b6_current_iter_isreal_kernel_2mm4_mux_x_q_2_q;
    reg [0:0] redist32_i_llvm_fpga_pop_coalesce_i1_kernel_2mm_b6_current_iter_isreal_kernel_2mm0_i_llvm_fpga_pop_coalesce_i1_kernel_2mm_b6_current_iter_isreal_kernel_2mm4_mux_x_q_2_delay_0;
    reg [8:0] redist33_i_arrayidx233_kernel_2mm0_dupName_2_trunc_sel_x_b_1_q;
    reg [8:0] redist34_i_arrayidx233_kernel_2mm0_dupName_1_trunc_sel_x_b_7_q;
    reg [8:0] redist34_i_arrayidx233_kernel_2mm0_dupName_1_trunc_sel_x_b_7_delay_0;
    reg [8:0] redist34_i_arrayidx233_kernel_2mm0_dupName_1_trunc_sel_x_b_7_delay_1;
    reg [8:0] redist34_i_arrayidx233_kernel_2mm0_dupName_1_trunc_sel_x_b_7_delay_2;
    reg [8:0] redist34_i_arrayidx233_kernel_2mm0_dupName_1_trunc_sel_x_b_7_delay_3;
    reg [8:0] redist36_i_arrayidx192_kernel_2mm0_dupName_2_trunc_sel_x_b_1_q;
    reg [8:0] redist37_i_arrayidx192_kernel_2mm0_dupName_1_trunc_sel_x_b_1_q;
    reg [31:0] redist38_bgTrunc_i_mul_kernel_2mm15_sel_x_b_1_q;
    reg [31:0] redist39_bgTrunc_i_mul24_kernel_2mm19_sel_x_b_1_q;
    reg [0:0] redist40_i_llvm_fpga_forked_kernel_2mm_b6_forked_kernel_2mm3_out_buffer_out_4_q;
    reg [0:0] redist40_i_llvm_fpga_forked_kernel_2mm_b6_forked_kernel_2mm3_out_buffer_out_4_delay_0;
    reg [0:0] redist40_i_llvm_fpga_forked_kernel_2mm_b6_forked_kernel_2mm3_out_buffer_out_4_delay_1;
    reg [0:0] redist40_i_llvm_fpga_forked_kernel_2mm_b6_forked_kernel_2mm3_out_buffer_out_4_delay_2;
    reg [0:0] redist41_i_llvm_fpga_forked_kernel_2mm_b6_forked_kernel_2mm3_out_buffer_out_6_q;
    reg [0:0] redist41_i_llvm_fpga_forked_kernel_2mm_b6_forked_kernel_2mm3_out_buffer_out_6_delay_0;
    reg [0:0] redist42_i_llvm_fpga_forked_kernel_2mm_b6_forked_kernel_2mm3_out_buffer_out_25_q;
    reg [0:0] redist43_i_llvm_fpga_dummy_thread_kernel_2mm_b6_dummy_kernel_2mm2_out_dummy_out_4_q;
    reg [0:0] redist43_i_llvm_fpga_dummy_thread_kernel_2mm_b6_dummy_kernel_2mm2_out_dummy_out_4_delay_0;
    reg [0:0] redist43_i_llvm_fpga_dummy_thread_kernel_2mm_b6_dummy_kernel_2mm2_out_dummy_out_4_delay_1;
    reg [0:0] redist43_i_llvm_fpga_dummy_thread_kernel_2mm_b6_dummy_kernel_2mm2_out_dummy_out_4_delay_2;
    reg [0:0] redist44_i_kernel_2mm_b6_current_iter_isspec_kernel_2mm5_q_8_q;
    reg [0:0] redist45_i_kernel_2mm_b6_current_iter_isspec_kernel_2mm5_q_20_q;
    reg [63:0] redist10_sync_together106_aunroll_x_in_c0_eni10_2_tpl_4_inputreg0_q;
    reg [63:0] redist11_sync_together106_aunroll_x_in_c0_eni10_3_tpl_4_inputreg0_q;
    reg [31:0] redist12_sync_together106_aunroll_x_in_c0_eni10_4_tpl_25_inputreg0_q;
    reg [31:0] redist12_sync_together106_aunroll_x_in_c0_eni10_4_tpl_25_outputreg0_q;
    wire redist12_sync_together106_aunroll_x_in_c0_eni10_4_tpl_25_mem_reset0;
    wire [31:0] redist12_sync_together106_aunroll_x_in_c0_eni10_4_tpl_25_mem_ia;
    wire [4:0] redist12_sync_together106_aunroll_x_in_c0_eni10_4_tpl_25_mem_aa;
    wire [4:0] redist12_sync_together106_aunroll_x_in_c0_eni10_4_tpl_25_mem_ab;
    wire [31:0] redist12_sync_together106_aunroll_x_in_c0_eni10_4_tpl_25_mem_iq;
    wire [31:0] redist12_sync_together106_aunroll_x_in_c0_eni10_4_tpl_25_mem_q;
    wire [4:0] redist12_sync_together106_aunroll_x_in_c0_eni10_4_tpl_25_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [4:0] redist12_sync_together106_aunroll_x_in_c0_eni10_4_tpl_25_wraddr_i = 5'b11111;
    wire [4:0] redist12_sync_together106_aunroll_x_in_c0_eni10_4_tpl_25_offset_q;
    wire [5:0] redist12_sync_together106_aunroll_x_in_c0_eni10_4_tpl_25_rdcnt_a;
    wire [5:0] redist12_sync_together106_aunroll_x_in_c0_eni10_4_tpl_25_rdcnt_b;
    logic [5:0] redist12_sync_together106_aunroll_x_in_c0_eni10_4_tpl_25_rdcnt_o;
    wire [5:0] redist12_sync_together106_aunroll_x_in_c0_eni10_4_tpl_25_rdcnt_q;
    reg [63:0] redist14_sync_together106_aunroll_x_in_c0_eni10_7_tpl_4_inputreg0_q;
    reg [31:0] redist17_sync_together106_aunroll_x_in_c0_eni10_10_tpl_26_inputreg0_q;
    reg [31:0] redist17_sync_together106_aunroll_x_in_c0_eni10_10_tpl_26_outputreg0_q;
    wire redist17_sync_together106_aunroll_x_in_c0_eni10_10_tpl_26_mem_reset0;
    wire [31:0] redist17_sync_together106_aunroll_x_in_c0_eni10_10_tpl_26_mem_ia;
    wire [4:0] redist17_sync_together106_aunroll_x_in_c0_eni10_10_tpl_26_mem_aa;
    wire [4:0] redist17_sync_together106_aunroll_x_in_c0_eni10_10_tpl_26_mem_ab;
    wire [31:0] redist17_sync_together106_aunroll_x_in_c0_eni10_10_tpl_26_mem_iq;
    wire [31:0] redist17_sync_together106_aunroll_x_in_c0_eni10_10_tpl_26_mem_q;
    wire [4:0] redist17_sync_together106_aunroll_x_in_c0_eni10_10_tpl_26_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [4:0] redist17_sync_together106_aunroll_x_in_c0_eni10_10_tpl_26_wraddr_i = 5'b11111;
    wire [4:0] redist17_sync_together106_aunroll_x_in_c0_eni10_10_tpl_26_offset_q;
    wire [5:0] redist17_sync_together106_aunroll_x_in_c0_eni10_10_tpl_26_rdcnt_a;
    wire [5:0] redist17_sync_together106_aunroll_x_in_c0_eni10_10_tpl_26_rdcnt_b;
    logic [5:0] redist17_sync_together106_aunroll_x_in_c0_eni10_10_tpl_26_rdcnt_o;
    wire [5:0] redist17_sync_together106_aunroll_x_in_c0_eni10_10_tpl_26_rdcnt_q;
    reg [63:0] redist30_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm0_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm38_mux_x_q_22_inputreg0_q;
    reg [63:0] redist30_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm0_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm38_mux_x_q_22_outputreg0_q;
    wire redist30_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm0_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm38_mux_x_q_22_mem_reset0;
    wire [63:0] redist30_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm0_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm38_mux_x_q_22_mem_ia;
    wire [4:0] redist30_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm0_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm38_mux_x_q_22_mem_aa;
    wire [4:0] redist30_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm0_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm38_mux_x_q_22_mem_ab;
    wire [63:0] redist30_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm0_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm38_mux_x_q_22_mem_iq;
    wire [63:0] redist30_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm0_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm38_mux_x_q_22_mem_q;
    wire [4:0] redist30_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm0_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm38_mux_x_q_22_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [4:0] redist30_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm0_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm38_mux_x_q_22_wraddr_i = 5'b11111;
    wire [4:0] redist30_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm0_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm38_mux_x_q_22_offset_q;
    wire [5:0] redist30_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm0_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm38_mux_x_q_22_rdcnt_a;
    wire [5:0] redist30_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm0_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm38_mux_x_q_22_rdcnt_b;
    logic [5:0] redist30_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm0_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm38_mux_x_q_22_rdcnt_o;
    wire [5:0] redist30_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm0_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm38_mux_x_q_22_rdcnt_q;
    reg [63:0] redist31_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm11_mux_x_q_22_inputreg0_q;
    reg [63:0] redist31_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm11_mux_x_q_22_outputreg0_q;
    wire redist31_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm11_mux_x_q_22_mem_reset0;
    wire [63:0] redist31_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm11_mux_x_q_22_mem_ia;
    wire [4:0] redist31_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm11_mux_x_q_22_mem_aa;
    wire [4:0] redist31_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm11_mux_x_q_22_mem_ab;
    wire [63:0] redist31_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm11_mux_x_q_22_mem_iq;
    wire [63:0] redist31_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm11_mux_x_q_22_mem_q;
    wire [4:0] redist31_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm11_mux_x_q_22_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [4:0] redist31_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm11_mux_x_q_22_wraddr_i = 5'b11111;
    wire [5:0] redist31_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm11_mux_x_q_22_rdcnt_a;
    wire [5:0] redist31_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm11_mux_x_q_22_rdcnt_b;
    logic [5:0] redist31_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm11_mux_x_q_22_rdcnt_o;
    wire [5:0] redist31_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm11_mux_x_q_22_rdcnt_q;
    reg [8:0] redist34_i_arrayidx233_kernel_2mm0_dupName_1_trunc_sel_x_b_7_inputreg0_q;
    reg [8:0] redist34_i_arrayidx233_kernel_2mm0_dupName_1_trunc_sel_x_b_7_outputreg0_q;
    reg [6:0] redist35_i_arrayidx233_kernel_2mm0_narrow_x_b_10_inputreg0_q;
    reg [6:0] redist35_i_arrayidx233_kernel_2mm0_narrow_x_b_10_outputreg0_q;
    wire redist35_i_arrayidx233_kernel_2mm0_narrow_x_b_10_mem_reset0;
    wire [6:0] redist35_i_arrayidx233_kernel_2mm0_narrow_x_b_10_mem_ia;
    wire [2:0] redist35_i_arrayidx233_kernel_2mm0_narrow_x_b_10_mem_aa;
    wire [2:0] redist35_i_arrayidx233_kernel_2mm0_narrow_x_b_10_mem_ab;
    wire [6:0] redist35_i_arrayidx233_kernel_2mm0_narrow_x_b_10_mem_iq;
    wire [6:0] redist35_i_arrayidx233_kernel_2mm0_narrow_x_b_10_mem_q;
    wire [2:0] redist35_i_arrayidx233_kernel_2mm0_narrow_x_b_10_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [2:0] redist35_i_arrayidx233_kernel_2mm0_narrow_x_b_10_wraddr_i = 3'b111;
    wire [2:0] redist35_i_arrayidx233_kernel_2mm0_narrow_x_b_10_offset_q;
    wire [3:0] redist35_i_arrayidx233_kernel_2mm0_narrow_x_b_10_rdcnt_a;
    wire [3:0] redist35_i_arrayidx233_kernel_2mm0_narrow_x_b_10_rdcnt_b;
    logic [3:0] redist35_i_arrayidx233_kernel_2mm0_narrow_x_b_10_rdcnt_o;
    wire [3:0] redist35_i_arrayidx233_kernel_2mm0_narrow_x_b_10_rdcnt_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist18_sync_together106_aunroll_x_in_i_valid_2(DELAY,409)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist18_sync_together106_aunroll_x_in_i_valid_2_delay_0 <= '0;
        end
        else
        begin
            redist18_sync_together106_aunroll_x_in_i_valid_2_delay_0 <= $unsigned(in_i_valid);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist18_sync_together106_aunroll_x_in_i_valid_2_q <= redist18_sync_together106_aunroll_x_in_i_valid_2_delay_0;
        end
    end

    // redist19_sync_together106_aunroll_x_in_i_valid_3(DELAY,410)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist19_sync_together106_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist19_sync_together106_aunroll_x_in_i_valid_3_q <= $unsigned(redist18_sync_together106_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist20_sync_together106_aunroll_x_in_i_valid_4(DELAY,411)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist20_sync_together106_aunroll_x_in_i_valid_4_q <= $unsigned(redist19_sync_together106_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist21_sync_together106_aunroll_x_in_i_valid_5(DELAY,412)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist21_sync_together106_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist21_sync_together106_aunroll_x_in_i_valid_5_q <= $unsigned(redist20_sync_together106_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg7(REG,211)@5 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist21_sync_together106_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_c_i7_03_x(CONSTANT,164)
    assign i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_c_i7_03_x_q = $unsigned(7'b0000000);

    // valid_fanout_reg2(REG,206)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist19_sync_together106_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg21(REG,225)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg21_q <= $unsigned(redist19_sync_together106_aunroll_x_in_i_valid_3_q);
        end
    end

    // c_i5_896(CONSTANT,58)
    assign c_i5_896_q = $unsigned(5'b01000);

    // i_arrayidx192_kernel_2mm0_mult_multconst_x(CONSTANT,122)
    assign i_arrayidx192_kernel_2mm0_mult_multconst_x_q = $unsigned(3'b000);

    // c_i5_198(CONSTANT,57)
    assign c_i5_198_q = $unsigned(5'b11111);

    // i_fpga_indvars_iv_next_kernel_2mm32(ADD,71)@4
    assign i_fpga_indvars_iv_next_kernel_2mm32_a = {1'b0, i_llvm_fpga_pop_i5_fpga_indvars_iv_pop24_kernel_2mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop24_kernel_2mm23_mux_x_q};
    assign i_fpga_indvars_iv_next_kernel_2mm32_b = {1'b0, c_i5_198_q};
    assign i_fpga_indvars_iv_next_kernel_2mm32_o = $unsigned(i_fpga_indvars_iv_next_kernel_2mm32_a) + $unsigned(i_fpga_indvars_iv_next_kernel_2mm32_b);
    assign i_fpga_indvars_iv_next_kernel_2mm32_q = i_fpga_indvars_iv_next_kernel_2mm32_o[5:0];

    // bgTrunc_i_fpga_indvars_iv_next_kernel_2mm32_sel_x(BITSELECT,95)@4
    assign bgTrunc_i_fpga_indvars_iv_next_kernel_2mm32_sel_x_b = i_fpga_indvars_iv_next_kernel_2mm32_q[4:0];

    // i_llvm_fpga_push_i5_fpga_indvars_iv_push24_kernel_2mm0_element_extension2_x(BITJOIN,189)@4
    assign i_llvm_fpga_push_i5_fpga_indvars_iv_push24_kernel_2mm0_element_extension2_x_q = {i_arrayidx192_kernel_2mm0_mult_multconst_x_q, bgTrunc_i_fpga_indvars_iv_next_kernel_2mm32_sel_x_b};

    // valid_fanout_reg23(REG,227)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg23_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg22(REG,226)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg22_q <= $unsigned(redist18_sync_together106_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i5_fpga_indvars_iv_push24_kernel_2mm0_i_llvm_fpga_push_i5_fpga_indvars_iv_push24_kernel_2mm1_x(FIFODELAY,190)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i5_fpga_indvars_iv_push24_kernel_2mm0_i_llvm_fpga_push_i5_fpga_indvars_iv_push24_kernel_2mm1_x_i_stall = ~ (valid_fanout_reg23_q & i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q);
    assign i_llvm_fpga_push_i5_fpga_indvars_iv_push24_kernel_2mm0_i_llvm_fpga_push_i5_fpga_indvars_iv_push24_kernel_2mm1_x_i_valid = valid_fanout_reg22_q & redist26_i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i5_fpga_indvars_iv_push24_kernel_2mm0_i_llvm_fpga_push_i5_fpga_indvars_iv_push24_kernel_2mm1_x_i_data = i_llvm_fpga_push_i5_fpga_indvars_iv_push24_kernel_2mm0_element_extension2_x_q;
    assign i_llvm_fpga_push_i5_fpga_indvars_iv_push24_kernel_2mm0_i_llvm_fpga_push_i5_fpga_indvars_iv_push24_kernel_2mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i5_fpga_indvars_iv_push24_kernel_2mm0_i_llvm_fpga_push_i5_fpga_indvars_iv_push24_kernel_2mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i5_fpga_indvars_iv_push24_kernel_2mm0_i_llvm_fpga_push_i5_fpga_indvars_iv_push24_kernel_2mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i5_fpga_indvars_iv_push24_kernel_2mm0_i_llvm_fpga_push_i5_fpga_indvars_iv_push24_kernel_2mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i5_fpga_indvars_iv_push24_kernel_2mm0_i_llvm_fpga_push_i5_fpga_indvars_iv_push24_kernel_2mm1_x (
        .i_valid(i_llvm_fpga_push_i5_fpga_indvars_iv_push24_kernel_2mm0_i_llvm_fpga_push_i5_fpga_indvars_iv_push24_kernel_2mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i5_fpga_indvars_iv_push24_kernel_2mm0_i_llvm_fpga_push_i5_fpga_indvars_iv_push24_kernel_2mm1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i5_fpga_indvars_iv_push24_kernel_2mm0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i5_fpga_indvars_iv_push24_kernel_2mm0_i_llvm_fpga_push_i5_fpga_indvars_iv_push24_kernel_2mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i5_fpga_indvars_iv_push24_kernel_2mm0_adapt_scalar_trunc4_sel_x(BITSELECT,192)@4
    assign i_llvm_fpga_push_i5_fpga_indvars_iv_push24_kernel_2mm0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i5_fpga_indvars_iv_push24_kernel_2mm0_i_llvm_fpga_push_i5_fpga_indvars_iv_push24_kernel_2mm1_x_o_data[4:0];

    // i_llvm_fpga_pop_i5_fpga_indvars_iv_pop24_kernel_2mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop24_kernel_2mm23_mux_x(MUX,159)@4
    assign i_llvm_fpga_pop_i5_fpga_indvars_iv_pop24_kernel_2mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop24_kernel_2mm23_mux_x_s = redist40_i_llvm_fpga_forked_kernel_2mm_b6_forked_kernel_2mm3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i5_fpga_indvars_iv_pop24_kernel_2mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop24_kernel_2mm23_mux_x_s or i_llvm_fpga_push_i5_fpga_indvars_iv_push24_kernel_2mm0_adapt_scalar_trunc4_sel_x_b or c_i5_896_q)
    begin
        unique case (i_llvm_fpga_pop_i5_fpga_indvars_iv_pop24_kernel_2mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop24_kernel_2mm23_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i5_fpga_indvars_iv_pop24_kernel_2mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop24_kernel_2mm23_mux_x_q = i_llvm_fpga_push_i5_fpga_indvars_iv_push24_kernel_2mm0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i5_fpga_indvars_iv_pop24_kernel_2mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop24_kernel_2mm23_mux_x_q = c_i5_896_q;
            default : i_llvm_fpga_pop_i5_fpga_indvars_iv_pop24_kernel_2mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop24_kernel_2mm23_mux_x_q = 5'b0;
        endcase
    end

    // i_exitcond_kernel_2mm24_cmp_nsign(LOGICAL,251)@4
    assign i_exitcond_kernel_2mm24_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i5_fpga_indvars_iv_pop24_kernel_2mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop24_kernel_2mm23_mux_x_q[4:4]));

    // i_llvm_fpga_push_i1_notexitcond24_kernel_2mm31(BLACKBOX,85)@4
    // in in_empty_in@20000000
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    kernel_2mm_i_llvm_fpga_push_i1_notexitcond24_0 thei_llvm_fpga_push_i1_notexitcond24_kernel_2mm31 (
        .in_almost_empty_in(GND_q),
        .in_data_in(i_exitcond_kernel_2mm24_cmp_nsign_q),
        .in_empty_in(GND_q),
        .in_feedback_stall_in_7(i_llvm_fpga_pipeline_keep_going23_kernel_2mm6_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_data_out(),
        .out_feedback_out_7(i_llvm_fpga_push_i1_notexitcond24_kernel_2mm31_out_feedback_out_7),
        .out_feedback_valid_out_7(i_llvm_fpga_push_i1_notexitcond24_kernel_2mm31_out_feedback_valid_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_dummy_thread_kernel_2mm_b6_dummy_kernel_2mm2(BLACKBOX,79)@0
    // in in_stall_in@20000000
    kernel_2mm_i_llvm_fpga_dummy_thread_b6_dummy_kernel_2mm0 thei_llvm_fpga_dummy_thread_kernel_2mm_b6_dummy_kernel_2mm2 (
        .in_dummy_in(in_dummy_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dummy_out(i_llvm_fpga_dummy_thread_kernel_2mm_b6_dummy_kernel_2mm2_out_dummy_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist43_i_llvm_fpga_dummy_thread_kernel_2mm_b6_dummy_kernel_2mm2_out_dummy_out_4(DELAY,434)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist43_i_llvm_fpga_dummy_thread_kernel_2mm_b6_dummy_kernel_2mm2_out_dummy_out_4_delay_0 <= $unsigned(i_llvm_fpga_dummy_thread_kernel_2mm_b6_dummy_kernel_2mm2_out_dummy_out);
            redist43_i_llvm_fpga_dummy_thread_kernel_2mm_b6_dummy_kernel_2mm2_out_dummy_out_4_delay_1 <= redist43_i_llvm_fpga_dummy_thread_kernel_2mm_b6_dummy_kernel_2mm2_out_dummy_out_4_delay_0;
            redist43_i_llvm_fpga_dummy_thread_kernel_2mm_b6_dummy_kernel_2mm2_out_dummy_out_4_delay_2 <= redist43_i_llvm_fpga_dummy_thread_kernel_2mm_b6_dummy_kernel_2mm2_out_dummy_out_4_delay_1;
            redist43_i_llvm_fpga_dummy_thread_kernel_2mm_b6_dummy_kernel_2mm2_out_dummy_out_4_q <= redist43_i_llvm_fpga_dummy_thread_kernel_2mm_b6_dummy_kernel_2mm2_out_dummy_out_4_delay_2;
        end
    end

    // i_llvm_fpga_pipeline_keep_going23_kernel_2mm6(BLACKBOX,84)@4
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_dummy_out@20000000
    // out out_pipeline_forked_out@20000000
    // out out_pipeline_valid_out@20000000
    kernel_2mm_i_llvm_fpga_pipeline_keep_going23_0 thei_llvm_fpga_pipeline_keep_going23_kernel_2mm6 (
        .in_data_in(redist40_i_llvm_fpga_forked_kernel_2mm_b6_forked_kernel_2mm3_out_buffer_out_4_q),
        .in_dummy_in(redist43_i_llvm_fpga_dummy_thread_kernel_2mm_b6_dummy_kernel_2mm2_out_dummy_out_4_q),
        .in_forked_in(redist40_i_llvm_fpga_forked_kernel_2mm_b6_forked_kernel_2mm3_out_buffer_out_4_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond24_kernel_2mm31_out_feedback_out_7),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond24_kernel_2mm31_out_feedback_valid_out_7),
        .in_pipeline_stall_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going23_kernel_2mm6_out_data_out),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going23_kernel_2mm6_out_exiting_valid_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going23_kernel_2mm6_out_not_exitcond_stall_out),
        .out_pipeline_dummy_out(i_llvm_fpga_pipeline_keep_going23_kernel_2mm6_out_pipeline_dummy_out),
        .out_pipeline_forked_out(i_llvm_fpga_pipeline_keep_going23_kernel_2mm6_out_pipeline_forked_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going23_kernel_2mm6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_kernel_2mm_b6_next_iter_isreal_kernel_2mm7(LOGICAL,78)@4
    assign i_kernel_2mm_b6_next_iter_isreal_kernel_2mm7_q = i_llvm_fpga_pop_coalesce_i1_kernel_2mm_b6_current_iter_isreal_kernel_2mm0_i_llvm_fpga_pop_coalesce_i1_kernel_2mm_b6_current_iter_isreal_kernel_2mm4_mux_x_q & i_llvm_fpga_pipeline_keep_going23_kernel_2mm6_out_data_out;

    // i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_element_extension2_x(BITJOIN,165)@4
    assign i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_element_extension2_x_q = {i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_c_i7_03_x_q, i_kernel_2mm_b6_next_iter_isreal_kernel_2mm7_q};

    // i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_inv_pred_x(LOGICAL,167)@1
    assign i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q = ~ (GND_q);

    // valid_fanout_reg4(REG,208)@0 + 1
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

    // redist26_i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q_2(DELAY,417)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist26_i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q_2_delay_0 <= $unsigned(i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q);
            redist26_i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q_2_q <= redist26_i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q_2_delay_0;
        end
    end

    // valid_fanout_reg3(REG,207)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist18_sync_together106_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm1_x(FIFODELAY,166)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm1_x_i_stall = ~ (valid_fanout_reg4_q & i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm1_x_i_valid = valid_fanout_reg3_q & redist26_i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm1_x_i_data = i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm1_x (
        .i_valid(i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_adapt_scalar_trunc4_sel_x(BITSELECT,168)@4
    assign i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm1_x_o_data[0:0];

    // i_llvm_fpga_forked_kernel_2mm_b6_forked_kernel_2mm3(BLACKBOX,81)@0
    // in in_stall_in@20000000
    kernel_2mm_i_llvm_fpga_forked_b6_forked_kernel_2mm0 thei_llvm_fpga_forked_kernel_2mm_b6_forked_kernel_2mm3 (
        .in_buffer_in(in_buffer_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_buffer_out(i_llvm_fpga_forked_kernel_2mm_b6_forked_kernel_2mm3_out_buffer_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist40_i_llvm_fpga_forked_kernel_2mm_b6_forked_kernel_2mm3_out_buffer_out_4(DELAY,431)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist40_i_llvm_fpga_forked_kernel_2mm_b6_forked_kernel_2mm3_out_buffer_out_4_delay_0 <= $unsigned(i_llvm_fpga_forked_kernel_2mm_b6_forked_kernel_2mm3_out_buffer_out);
            redist40_i_llvm_fpga_forked_kernel_2mm_b6_forked_kernel_2mm3_out_buffer_out_4_delay_1 <= redist40_i_llvm_fpga_forked_kernel_2mm_b6_forked_kernel_2mm3_out_buffer_out_4_delay_0;
            redist40_i_llvm_fpga_forked_kernel_2mm_b6_forked_kernel_2mm3_out_buffer_out_4_delay_2 <= redist40_i_llvm_fpga_forked_kernel_2mm_b6_forked_kernel_2mm3_out_buffer_out_4_delay_1;
            redist40_i_llvm_fpga_forked_kernel_2mm_b6_forked_kernel_2mm3_out_buffer_out_4_q <= redist40_i_llvm_fpga_forked_kernel_2mm_b6_forked_kernel_2mm3_out_buffer_out_4_delay_2;
        end
    end

    // i_llvm_fpga_pop_coalesce_i1_kernel_2mm_b6_current_iter_isreal_kernel_2mm0_i_llvm_fpga_pop_coalesce_i1_kernel_2mm_b6_current_iter_isreal_kernel_2mm4_mux_x(MUX,154)@4
    assign i_llvm_fpga_pop_coalesce_i1_kernel_2mm_b6_current_iter_isreal_kernel_2mm0_i_llvm_fpga_pop_coalesce_i1_kernel_2mm_b6_current_iter_isreal_kernel_2mm4_mux_x_s = redist40_i_llvm_fpga_forked_kernel_2mm_b6_forked_kernel_2mm3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_coalesce_i1_kernel_2mm_b6_current_iter_isreal_kernel_2mm0_i_llvm_fpga_pop_coalesce_i1_kernel_2mm_b6_current_iter_isreal_kernel_2mm4_mux_x_s or i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_adapt_scalar_trunc4_sel_x_b or VCC_q)
    begin
        unique case (i_llvm_fpga_pop_coalesce_i1_kernel_2mm_b6_current_iter_isreal_kernel_2mm0_i_llvm_fpga_pop_coalesce_i1_kernel_2mm_b6_current_iter_isreal_kernel_2mm4_mux_x_s)
            1'b0 : i_llvm_fpga_pop_coalesce_i1_kernel_2mm_b6_current_iter_isreal_kernel_2mm0_i_llvm_fpga_pop_coalesce_i1_kernel_2mm_b6_current_iter_isreal_kernel_2mm4_mux_x_q = i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_coalesce_i1_kernel_2mm_b6_current_iter_isreal_kernel_2mm0_i_llvm_fpga_pop_coalesce_i1_kernel_2mm_b6_current_iter_isreal_kernel_2mm4_mux_x_q = VCC_q;
            default : i_llvm_fpga_pop_coalesce_i1_kernel_2mm_b6_current_iter_isreal_kernel_2mm0_i_llvm_fpga_pop_coalesce_i1_kernel_2mm_b6_current_iter_isreal_kernel_2mm4_mux_x_q = 1'b0;
        endcase
    end

    // redist32_i_llvm_fpga_pop_coalesce_i1_kernel_2mm_b6_current_iter_isreal_kernel_2mm0_i_llvm_fpga_pop_coalesce_i1_kernel_2mm_b6_current_iter_isreal_kernel_2mm4_mux_x_q_2(DELAY,423)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist32_i_llvm_fpga_pop_coalesce_i1_kernel_2mm_b6_current_iter_isreal_kernel_2mm0_i_llvm_fpga_pop_coalesce_i1_kernel_2mm_b6_current_iter_isreal_kernel_2mm4_mux_x_q_2_delay_0 <= $unsigned(i_llvm_fpga_pop_coalesce_i1_kernel_2mm_b6_current_iter_isreal_kernel_2mm0_i_llvm_fpga_pop_coalesce_i1_kernel_2mm_b6_current_iter_isreal_kernel_2mm4_mux_x_q);
            redist32_i_llvm_fpga_pop_coalesce_i1_kernel_2mm_b6_current_iter_isreal_kernel_2mm0_i_llvm_fpga_pop_coalesce_i1_kernel_2mm_b6_current_iter_isreal_kernel_2mm4_mux_x_q_2_q <= redist32_i_llvm_fpga_pop_coalesce_i1_kernel_2mm_b6_current_iter_isreal_kernel_2mm0_i_llvm_fpga_pop_coalesce_i1_kernel_2mm_b6_current_iter_isreal_kernel_2mm4_mux_x_q_2_delay_0;
        end
    end

    // i_kernel_2mm_b6_current_iter_isspec_kernel_2mm5(LOGICAL,77)@6
    assign i_kernel_2mm_b6_current_iter_isspec_kernel_2mm5_q = redist32_i_llvm_fpga_pop_coalesce_i1_kernel_2mm_b6_current_iter_isreal_kernel_2mm0_i_llvm_fpga_pop_coalesce_i1_kernel_2mm_b6_current_iter_isreal_kernel_2mm4_mux_x_q_2_q ^ VCC_q;

    // c_kernel_2mm_A_local_pmem(CONSTANT,59)
    assign c_kernel_2mm_A_local_pmem_q = $unsigned(64'b0100000001000001000000000000000000000000000000000000000000000000);

    // i_arrayidx192_kernel_2mm0_upper_bits_x_merged_bit_select(BITSELECT,384)@5
    assign i_arrayidx192_kernel_2mm0_upper_bits_x_merged_bit_select_b = c_kernel_2mm_A_local_pmem_q[63:9];
    assign i_arrayidx192_kernel_2mm0_upper_bits_x_merged_bit_select_c = c_kernel_2mm_A_local_pmem_q[8:0];

    // redist1_i_arrayidx192_kernel_2mm0_upper_bits_x_merged_bit_select_b_1(DELAY,392)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_i_arrayidx192_kernel_2mm0_upper_bits_x_merged_bit_select_b_1_q <= $unsigned(i_arrayidx192_kernel_2mm0_upper_bits_x_merged_bit_select_b);
        end
    end

    // c_i32_094(CONSTANT,55)
    assign c_i32_094_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i32_195(CONSTANT,56)
    assign c_i32_195_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_kernel_2mm22(ADD,76)@6
    assign i_inc_kernel_2mm22_a = {1'b0, i_llvm_fpga_pop_i32_k_038_pop25_kernel_2mm0_i_llvm_fpga_pop_i32_k_038_pop25_kernel_2mm9_mux_x_q};
    assign i_inc_kernel_2mm22_b = {1'b0, c_i32_195_q};
    assign i_inc_kernel_2mm22_o = $unsigned(i_inc_kernel_2mm22_a) + $unsigned(i_inc_kernel_2mm22_b);
    assign i_inc_kernel_2mm22_q = i_inc_kernel_2mm22_o[32:0];

    // bgTrunc_i_inc_kernel_2mm22_sel_x(BITSELECT,96)@6
    assign bgTrunc_i_inc_kernel_2mm22_sel_x_b = i_inc_kernel_2mm22_q[31:0];

    // valid_fanout_reg20(REG,224)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg20_q <= $unsigned(redist18_sync_together106_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist27_i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q_4(DELAY,418)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist27_i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q_4_delay_0 <= $unsigned(redist26_i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q_2_q);
            redist27_i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q_4_q <= redist27_i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q_4_delay_0;
        end
    end

    // valid_fanout_reg19(REG,223)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(redist20_sync_together106_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i32_k_038_push25_kernel_2mm0_i_llvm_fpga_push_i32_k_038_push25_kernel_2mm1_x(FIFODELAY,181)@3 + 1
    // in i_valid@5
    // in i_write_pred@5
    // in i_data@6
    // out o_data@6
    assign i_llvm_fpga_push_i32_k_038_push25_kernel_2mm0_i_llvm_fpga_push_i32_k_038_push25_kernel_2mm1_x_i_stall = ~ (valid_fanout_reg20_q & redist26_i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q_2_q);
    assign i_llvm_fpga_push_i32_k_038_push25_kernel_2mm0_i_llvm_fpga_push_i32_k_038_push25_kernel_2mm1_x_i_valid = valid_fanout_reg19_q & redist27_i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q_4_q;
    assign i_llvm_fpga_push_i32_k_038_push25_kernel_2mm0_i_llvm_fpga_push_i32_k_038_push25_kernel_2mm1_x_i_data = bgTrunc_i_inc_kernel_2mm22_sel_x_b;
    assign i_llvm_fpga_push_i32_k_038_push25_kernel_2mm0_i_llvm_fpga_push_i32_k_038_push25_kernel_2mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_k_038_push25_kernel_2mm0_i_llvm_fpga_push_i32_k_038_push25_kernel_2mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_k_038_push25_kernel_2mm0_i_llvm_fpga_push_i32_k_038_push25_kernel_2mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_k_038_push25_kernel_2mm0_i_llvm_fpga_push_i32_k_038_push25_kernel_2mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_k_038_push25_kernel_2mm0_i_llvm_fpga_push_i32_k_038_push25_kernel_2mm1_x (
        .i_valid(i_llvm_fpga_push_i32_k_038_push25_kernel_2mm0_i_llvm_fpga_push_i32_k_038_push25_kernel_2mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_k_038_push25_kernel_2mm0_i_llvm_fpga_push_i32_k_038_push25_kernel_2mm1_x_i_stall_bitsignaltemp),
        .i_data(bgTrunc_i_inc_kernel_2mm22_sel_x_b),
        .o_data(i_llvm_fpga_push_i32_k_038_push25_kernel_2mm0_i_llvm_fpga_push_i32_k_038_push25_kernel_2mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // redist41_i_llvm_fpga_forked_kernel_2mm_b6_forked_kernel_2mm3_out_buffer_out_6(DELAY,432)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist41_i_llvm_fpga_forked_kernel_2mm_b6_forked_kernel_2mm3_out_buffer_out_6_delay_0 <= $unsigned(redist40_i_llvm_fpga_forked_kernel_2mm_b6_forked_kernel_2mm3_out_buffer_out_4_q);
            redist41_i_llvm_fpga_forked_kernel_2mm_b6_forked_kernel_2mm3_out_buffer_out_6_q <= redist41_i_llvm_fpga_forked_kernel_2mm_b6_forked_kernel_2mm3_out_buffer_out_6_delay_0;
        end
    end

    // i_llvm_fpga_pop_i32_k_038_pop25_kernel_2mm0_i_llvm_fpga_pop_i32_k_038_pop25_kernel_2mm9_mux_x(MUX,157)@6
    assign i_llvm_fpga_pop_i32_k_038_pop25_kernel_2mm0_i_llvm_fpga_pop_i32_k_038_pop25_kernel_2mm9_mux_x_s = redist41_i_llvm_fpga_forked_kernel_2mm_b6_forked_kernel_2mm3_out_buffer_out_6_q;
    always @(i_llvm_fpga_pop_i32_k_038_pop25_kernel_2mm0_i_llvm_fpga_pop_i32_k_038_pop25_kernel_2mm9_mux_x_s or i_llvm_fpga_push_i32_k_038_push25_kernel_2mm0_i_llvm_fpga_push_i32_k_038_push25_kernel_2mm1_x_o_data or c_i32_094_q)
    begin
        unique case (i_llvm_fpga_pop_i32_k_038_pop25_kernel_2mm0_i_llvm_fpga_pop_i32_k_038_pop25_kernel_2mm9_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_k_038_pop25_kernel_2mm0_i_llvm_fpga_pop_i32_k_038_pop25_kernel_2mm9_mux_x_q = i_llvm_fpga_push_i32_k_038_push25_kernel_2mm0_i_llvm_fpga_push_i32_k_038_push25_kernel_2mm1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_k_038_pop25_kernel_2mm0_i_llvm_fpga_pop_i32_k_038_pop25_kernel_2mm9_mux_x_q = c_i32_094_q;
            default : i_llvm_fpga_pop_i32_k_038_pop25_kernel_2mm0_i_llvm_fpga_pop_i32_k_038_pop25_kernel_2mm9_mux_x_q = 32'b0;
        endcase
    end

    // i_idxprom18_kernel_2mm10_sel_x(BITSELECT,153)@6
    assign i_idxprom18_kernel_2mm10_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_k_038_pop25_kernel_2mm0_i_llvm_fpga_pop_i32_k_038_pop25_kernel_2mm9_mux_x_q[31:0]};

    // i_idxprom18_kernel_2mm10_vt_select_31(BITSELECT,75)@6
    assign i_idxprom18_kernel_2mm10_vt_select_31_b = i_idxprom18_kernel_2mm10_sel_x_b[31:0];

    // i_idxprom18_kernel_2mm10_vt_join(BITJOIN,74)@6
    assign i_idxprom18_kernel_2mm10_vt_join_q = {c_i32_094_q, i_idxprom18_kernel_2mm10_vt_select_31_b};

    // i_arrayidx192_kernel_2mm0_dupName_3_trunc_sel_x(BITSELECT,127)@6
    assign i_arrayidx192_kernel_2mm0_dupName_3_trunc_sel_x_b = i_idxprom18_kernel_2mm10_vt_join_q[8:0];

    // i_arrayidx192_kernel_2mm0_narrow_x(BITSELECT,110)@6
    assign i_arrayidx192_kernel_2mm0_narrow_x_b = i_arrayidx192_kernel_2mm0_dupName_3_trunc_sel_x_b[6:0];

    // i_arrayidx192_kernel_2mm0_shift_join_x(BITJOIN,111)@6
    assign i_arrayidx192_kernel_2mm0_shift_join_x_q = {i_arrayidx192_kernel_2mm0_narrow_x_b, i_arrayidx192_kernel_2mm12_vt_const_1_q};

    // redist10_sync_together106_aunroll_x_in_c0_eni10_2_tpl_4_inputreg0(DELAY,437)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_sync_together106_aunroll_x_in_c0_eni10_2_tpl_4_inputreg0_q <= $unsigned(in_c0_eni10_2_tpl);
        end
    end

    // redist10_sync_together106_aunroll_x_in_c0_eni10_2_tpl_4(DELAY,401)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_sync_together106_aunroll_x_in_c0_eni10_2_tpl_4_delay_0 <= $unsigned(redist10_sync_together106_aunroll_x_in_c0_eni10_2_tpl_4_inputreg0_q);
            redist10_sync_together106_aunroll_x_in_c0_eni10_2_tpl_4_delay_1 <= redist10_sync_together106_aunroll_x_in_c0_eni10_2_tpl_4_delay_0;
            redist10_sync_together106_aunroll_x_in_c0_eni10_2_tpl_4_q <= redist10_sync_together106_aunroll_x_in_c0_eni10_2_tpl_4_delay_1;
        end
    end

    // valid_fanout_reg16(REG,220)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg15(REG,219)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist18_sync_together106_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i64_idxprom52_push29_kernel_2mm0_i_llvm_fpga_push_i64_idxprom52_push29_kernel_2mm1_x(FIFODELAY,196)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i64_idxprom52_push29_kernel_2mm0_i_llvm_fpga_push_i64_idxprom52_push29_kernel_2mm1_x_i_stall = ~ (valid_fanout_reg16_q & i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q);
    assign i_llvm_fpga_push_i64_idxprom52_push29_kernel_2mm0_i_llvm_fpga_push_i64_idxprom52_push29_kernel_2mm1_x_i_valid = valid_fanout_reg15_q & redist26_i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i64_idxprom52_push29_kernel_2mm0_i_llvm_fpga_push_i64_idxprom52_push29_kernel_2mm1_x_i_data = i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm11_mux_x_q;
    assign i_llvm_fpga_push_i64_idxprom52_push29_kernel_2mm0_i_llvm_fpga_push_i64_idxprom52_push29_kernel_2mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i64_idxprom52_push29_kernel_2mm0_i_llvm_fpga_push_i64_idxprom52_push29_kernel_2mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i64_idxprom52_push29_kernel_2mm0_i_llvm_fpga_push_i64_idxprom52_push29_kernel_2mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i64_idxprom52_push29_kernel_2mm0_i_llvm_fpga_push_i64_idxprom52_push29_kernel_2mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i64_idxprom52_push29_kernel_2mm0_i_llvm_fpga_push_i64_idxprom52_push29_kernel_2mm1_x (
        .i_valid(i_llvm_fpga_push_i64_idxprom52_push29_kernel_2mm0_i_llvm_fpga_push_i64_idxprom52_push29_kernel_2mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i64_idxprom52_push29_kernel_2mm0_i_llvm_fpga_push_i64_idxprom52_push29_kernel_2mm1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm11_mux_x_q),
        .o_data(i_llvm_fpga_push_i64_idxprom52_push29_kernel_2mm0_i_llvm_fpga_push_i64_idxprom52_push29_kernel_2mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm11_mux_x(MUX,161)@4
    assign i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm11_mux_x_s = redist40_i_llvm_fpga_forked_kernel_2mm_b6_forked_kernel_2mm3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm11_mux_x_s or i_llvm_fpga_push_i64_idxprom52_push29_kernel_2mm0_i_llvm_fpga_push_i64_idxprom52_push29_kernel_2mm1_x_o_data or redist10_sync_together106_aunroll_x_in_c0_eni10_2_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm11_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm11_mux_x_q = i_llvm_fpga_push_i64_idxprom52_push29_kernel_2mm0_i_llvm_fpga_push_i64_idxprom52_push29_kernel_2mm1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm11_mux_x_q = redist10_sync_together106_aunroll_x_in_c0_eni10_2_tpl_4_q;
            default : i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm11_mux_x_q = 64'b0;
        endcase
    end

    // i_arrayidx192_kernel_2mm0_dupName_0_trunc_sel_x(BITSELECT,124)@4
    assign i_arrayidx192_kernel_2mm0_dupName_0_trunc_sel_x_b = i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm11_mux_x_q[8:0];

    // addsumAHighB_uid296_i_arrayidx192_kernel_2mm0_mult_x(ADD,295)@4
    assign addsumAHighB_uid296_i_arrayidx192_kernel_2mm0_mult_x_a = {1'b0, i_arrayidx192_kernel_2mm0_dupName_0_trunc_sel_x_b};
    assign addsumAHighB_uid296_i_arrayidx192_kernel_2mm0_mult_x_b = {3'b000, lowRangeB_uid294_i_arrayidx192_kernel_2mm0_mult_x_merged_bit_select_c};
    assign addsumAHighB_uid296_i_arrayidx192_kernel_2mm0_mult_x_o = $unsigned(addsumAHighB_uid296_i_arrayidx192_kernel_2mm0_mult_x_a) + $unsigned(addsumAHighB_uid296_i_arrayidx192_kernel_2mm0_mult_x_b);
    assign addsumAHighB_uid296_i_arrayidx192_kernel_2mm0_mult_x_q = addsumAHighB_uid296_i_arrayidx192_kernel_2mm0_mult_x_o[9:0];

    // lowRangeB_uid294_i_arrayidx192_kernel_2mm0_mult_x_merged_bit_select(BITSELECT,390)@4
    assign lowRangeB_uid294_i_arrayidx192_kernel_2mm0_mult_x_merged_bit_select_b = i_arrayidx192_kernel_2mm0_dupName_0_trunc_sel_x_b[1:0];
    assign lowRangeB_uid294_i_arrayidx192_kernel_2mm0_mult_x_merged_bit_select_c = i_arrayidx192_kernel_2mm0_dupName_0_trunc_sel_x_b[8:2];

    // add_uid297_i_arrayidx192_kernel_2mm0_mult_x(BITJOIN,296)@4
    assign add_uid297_i_arrayidx192_kernel_2mm0_mult_x_q = {addsumAHighB_uid296_i_arrayidx192_kernel_2mm0_mult_x_q, lowRangeB_uid294_i_arrayidx192_kernel_2mm0_mult_x_merged_bit_select_b};

    // sR_mergedSignalTM_uid302_i_arrayidx192_kernel_2mm0_mult_x(BITJOIN,301)@4
    assign sR_mergedSignalTM_uid302_i_arrayidx192_kernel_2mm0_mult_x_q = {add_uid297_i_arrayidx192_kernel_2mm0_mult_x_q, i_arrayidx192_kernel_2mm0_mult_multconst_x_q};

    // i_arrayidx192_kernel_2mm0_mult_extender_x(BITJOIN,121)@4
    assign i_arrayidx192_kernel_2mm0_mult_extender_x_q = {i_arrayidx192_kernel_2mm0_mult_multconst_x_q, sR_mergedSignalTM_uid302_i_arrayidx192_kernel_2mm0_mult_x_q};

    // i_arrayidx192_kernel_2mm0_dupName_1_trunc_sel_x(BITSELECT,125)@4
    assign i_arrayidx192_kernel_2mm0_dupName_1_trunc_sel_x_b = i_arrayidx192_kernel_2mm0_mult_extender_x_q[8:0];

    // redist37_i_arrayidx192_kernel_2mm0_dupName_1_trunc_sel_x_b_1(DELAY,428)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist37_i_arrayidx192_kernel_2mm0_dupName_1_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx192_kernel_2mm0_dupName_1_trunc_sel_x_b);
        end
    end

    // i_arrayidx192_kernel_2mm0_add_x(ADD,105)@5
    assign i_arrayidx192_kernel_2mm0_add_x_a = {1'b0, i_arrayidx192_kernel_2mm0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx192_kernel_2mm0_add_x_b = {1'b0, redist37_i_arrayidx192_kernel_2mm0_dupName_1_trunc_sel_x_b_1_q};
    assign i_arrayidx192_kernel_2mm0_add_x_o = $unsigned(i_arrayidx192_kernel_2mm0_add_x_a) + $unsigned(i_arrayidx192_kernel_2mm0_add_x_b);
    assign i_arrayidx192_kernel_2mm0_add_x_q = i_arrayidx192_kernel_2mm0_add_x_o[9:0];

    // i_arrayidx192_kernel_2mm0_dupName_2_trunc_sel_x(BITSELECT,126)@5
    assign i_arrayidx192_kernel_2mm0_dupName_2_trunc_sel_x_b = i_arrayidx192_kernel_2mm0_add_x_q[8:0];

    // redist36_i_arrayidx192_kernel_2mm0_dupName_2_trunc_sel_x_b_1(DELAY,427)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist36_i_arrayidx192_kernel_2mm0_dupName_2_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx192_kernel_2mm0_dupName_2_trunc_sel_x_b);
        end
    end

    // i_arrayidx192_kernel_2mm0_dupName_0_add_x(ADD,115)@6
    assign i_arrayidx192_kernel_2mm0_dupName_0_add_x_a = {1'b0, redist36_i_arrayidx192_kernel_2mm0_dupName_2_trunc_sel_x_b_1_q};
    assign i_arrayidx192_kernel_2mm0_dupName_0_add_x_b = {1'b0, i_arrayidx192_kernel_2mm0_shift_join_x_q};
    assign i_arrayidx192_kernel_2mm0_dupName_0_add_x_o = $unsigned(i_arrayidx192_kernel_2mm0_dupName_0_add_x_a) + $unsigned(i_arrayidx192_kernel_2mm0_dupName_0_add_x_b);
    assign i_arrayidx192_kernel_2mm0_dupName_0_add_x_q = i_arrayidx192_kernel_2mm0_dupName_0_add_x_o[9:0];

    // i_arrayidx192_kernel_2mm0_dupName_5_trunc_sel_x(BITSELECT,128)@6
    assign i_arrayidx192_kernel_2mm0_dupName_5_trunc_sel_x_b = i_arrayidx192_kernel_2mm0_dupName_0_add_x_q[8:0];

    // i_arrayidx192_kernel_2mm0_append_upper_bits_x(BITJOIN,106)@6
    assign i_arrayidx192_kernel_2mm0_append_upper_bits_x_q = {redist1_i_arrayidx192_kernel_2mm0_upper_bits_x_merged_bit_select_b_1_q, i_arrayidx192_kernel_2mm0_dupName_5_trunc_sel_x_b};

    // i_arrayidx192_kernel_2mm12_vt_select_63(BITSELECT,66)@6
    assign i_arrayidx192_kernel_2mm12_vt_select_63_b = i_arrayidx192_kernel_2mm0_append_upper_bits_x_q[63:2];

    // i_arrayidx192_kernel_2mm12_vt_const_1(CONSTANT,64)
    assign i_arrayidx192_kernel_2mm12_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx192_kernel_2mm12_vt_join(BITJOIN,65)@6
    assign i_arrayidx192_kernel_2mm12_vt_join_q = {i_arrayidx192_kernel_2mm12_vt_select_63_b, i_arrayidx192_kernel_2mm12_vt_const_1_q};

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_mem_unnamed_kernel_2mm9_kernel_2mm13(BLACKBOX,83)@6
    // out out_o_almost_empty@10
    // out out_o_empty@10
    // out out_o_readdata@10
    // out out_o_stall@10
    // out out_o_valid@10
    // out out_unnamed_kernel_2mm9_kernel_2mm_avm_address@20000000
    // out out_unnamed_kernel_2mm9_kernel_2mm_avm_burstcount@20000000
    // out out_unnamed_kernel_2mm9_kernel_2mm_avm_byteenable@20000000
    // out out_unnamed_kernel_2mm9_kernel_2mm_avm_enable@20000000
    // out out_unnamed_kernel_2mm9_kernel_2mm_avm_read@20000000
    // out out_unnamed_kernel_2mm9_kernel_2mm_avm_write@20000000
    // out out_unnamed_kernel_2mm9_kernel_2mm_avm_writedata@20000000
    kernel_2mm_i_llvm_fpga_mem_unnamed_9_kernel_2mm0 thei_llvm_fpga_mem_unnamed_kernel_2mm9_kernel_2mm13 (
        .in_almost_empty_in(GND_q),
        .in_empty_in(GND_q),
        .in_flush(in_flush),
        .in_i_address(i_arrayidx192_kernel_2mm12_vt_join_q),
        .in_i_predicate(i_kernel_2mm_b6_current_iter_isspec_kernel_2mm5_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg7_q),
        .in_unnamed_kernel_2mm9_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm9_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm9_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm9_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm9_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm9_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm9_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm9_kernel_2mm_avm_writeack),
        .out_o_almost_empty(),
        .out_o_empty(),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_kernel_2mm9_kernel_2mm13_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_kernel_2mm9_kernel_2mm_avm_address(i_llvm_fpga_mem_unnamed_kernel_2mm9_kernel_2mm13_out_unnamed_kernel_2mm9_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm9_kernel_2mm_avm_burstcount(i_llvm_fpga_mem_unnamed_kernel_2mm9_kernel_2mm13_out_unnamed_kernel_2mm9_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm9_kernel_2mm_avm_byteenable(i_llvm_fpga_mem_unnamed_kernel_2mm9_kernel_2mm13_out_unnamed_kernel_2mm9_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm9_kernel_2mm_avm_enable(i_llvm_fpga_mem_unnamed_kernel_2mm9_kernel_2mm13_out_unnamed_kernel_2mm9_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm9_kernel_2mm_avm_read(i_llvm_fpga_mem_unnamed_kernel_2mm9_kernel_2mm13_out_unnamed_kernel_2mm9_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm9_kernel_2mm_avm_write(i_llvm_fpga_mem_unnamed_kernel_2mm9_kernel_2mm13_out_unnamed_kernel_2mm9_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm9_kernel_2mm_avm_writedata(i_llvm_fpga_mem_unnamed_kernel_2mm9_kernel_2mm13_out_unnamed_kernel_2mm9_kernel_2mm_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,62)
    assign out_unnamed_kernel_2mm9_kernel_2mm_avm_address = i_llvm_fpga_mem_unnamed_kernel_2mm9_kernel_2mm13_out_unnamed_kernel_2mm9_kernel_2mm_avm_address;
    assign out_unnamed_kernel_2mm9_kernel_2mm_avm_enable = i_llvm_fpga_mem_unnamed_kernel_2mm9_kernel_2mm13_out_unnamed_kernel_2mm9_kernel_2mm_avm_enable;
    assign out_unnamed_kernel_2mm9_kernel_2mm_avm_read = i_llvm_fpga_mem_unnamed_kernel_2mm9_kernel_2mm13_out_unnamed_kernel_2mm9_kernel_2mm_avm_read;
    assign out_unnamed_kernel_2mm9_kernel_2mm_avm_write = i_llvm_fpga_mem_unnamed_kernel_2mm9_kernel_2mm13_out_unnamed_kernel_2mm9_kernel_2mm_avm_write;
    assign out_unnamed_kernel_2mm9_kernel_2mm_avm_writedata = i_llvm_fpga_mem_unnamed_kernel_2mm9_kernel_2mm13_out_unnamed_kernel_2mm9_kernel_2mm_avm_writedata;
    assign out_unnamed_kernel_2mm9_kernel_2mm_avm_byteenable = i_llvm_fpga_mem_unnamed_kernel_2mm9_kernel_2mm13_out_unnamed_kernel_2mm9_kernel_2mm_avm_byteenable;
    assign out_unnamed_kernel_2mm9_kernel_2mm_avm_burstcount = i_llvm_fpga_mem_unnamed_kernel_2mm9_kernel_2mm13_out_unnamed_kernel_2mm9_kernel_2mm_avm_burstcount;

    // regfree_osync(GPOUT,92)
    assign out_exiting_valid_out = i_llvm_fpga_pipeline_keep_going23_kernel_2mm6_out_exiting_valid_out;

    // redist22_sync_together106_aunroll_x_in_i_valid_9(DELAY,413)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist22_sync_together106_aunroll_x_in_i_valid_9_delay_0 <= $unsigned(redist21_sync_together106_aunroll_x_in_i_valid_5_q);
        end
    end
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist22_sync_together106_aunroll_x_in_i_valid_9_delay_1 <= '0;
        end
        else
        begin
            redist22_sync_together106_aunroll_x_in_i_valid_9_delay_1 <= redist22_sync_together106_aunroll_x_in_i_valid_9_delay_0;
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist22_sync_together106_aunroll_x_in_i_valid_9_delay_2 <= redist22_sync_together106_aunroll_x_in_i_valid_9_delay_1;
        end
    end
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist22_sync_together106_aunroll_x_in_i_valid_9_q <= '0;
        end
        else
        begin
            redist22_sync_together106_aunroll_x_in_i_valid_9_q <= redist22_sync_together106_aunroll_x_in_i_valid_9_delay_2;
        end
    end

    // redist23_sync_together106_aunroll_x_in_i_valid_13(DELAY,414)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist23_sync_together106_aunroll_x_in_i_valid_13_delay_0 <= $unsigned(redist22_sync_together106_aunroll_x_in_i_valid_9_q);
        end
    end
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist23_sync_together106_aunroll_x_in_i_valid_13_delay_1 <= '0;
        end
        else
        begin
            redist23_sync_together106_aunroll_x_in_i_valid_13_delay_1 <= redist23_sync_together106_aunroll_x_in_i_valid_13_delay_0;
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist23_sync_together106_aunroll_x_in_i_valid_13_delay_2 <= redist23_sync_together106_aunroll_x_in_i_valid_13_delay_1;
        end
    end
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist23_sync_together106_aunroll_x_in_i_valid_13_q <= '0;
        end
        else
        begin
            redist23_sync_together106_aunroll_x_in_i_valid_13_q <= redist23_sync_together106_aunroll_x_in_i_valid_13_delay_2;
        end
    end

    // valid_fanout_reg10(REG,214)@13 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist23_sync_together106_aunroll_x_in_i_valid_13_q);
        end
    end

    // redist44_i_kernel_2mm_b6_current_iter_isspec_kernel_2mm5_q_8(DELAY,435)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist44_i_kernel_2mm_b6_current_iter_isspec_kernel_2mm5_q_8 ( .xin(i_kernel_2mm_b6_current_iter_isspec_kernel_2mm5_q), .xout(redist44_i_kernel_2mm_b6_current_iter_isspec_kernel_2mm5_q_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_kernel_2mm_B_local_pmem(CONSTANT,60)
    assign c_kernel_2mm_B_local_pmem_q = $unsigned(64'b0100000001000010000000000000000000000000000000000000000000000000);

    // i_arrayidx233_kernel_2mm0_upper_bits_x_merged_bit_select(BITSELECT,385)@13
    assign i_arrayidx233_kernel_2mm0_upper_bits_x_merged_bit_select_b = c_kernel_2mm_B_local_pmem_q[63:9];
    assign i_arrayidx233_kernel_2mm0_upper_bits_x_merged_bit_select_c = c_kernel_2mm_B_local_pmem_q[8:0];

    // redist0_i_arrayidx233_kernel_2mm0_upper_bits_x_merged_bit_select_b_1(DELAY,391)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_i_arrayidx233_kernel_2mm0_upper_bits_x_merged_bit_select_b_1_q <= $unsigned(i_arrayidx233_kernel_2mm0_upper_bits_x_merged_bit_select_b);
        end
    end

    // redist35_i_arrayidx233_kernel_2mm0_narrow_x_b_10_offset(CONSTANT,470)
    assign redist35_i_arrayidx233_kernel_2mm0_narrow_x_b_10_offset_q = $unsigned(3'b011);

    // redist35_i_arrayidx233_kernel_2mm0_narrow_x_b_10_rdcnt(ADD,471)
    assign redist35_i_arrayidx233_kernel_2mm0_narrow_x_b_10_rdcnt_a = {1'b0, redist35_i_arrayidx233_kernel_2mm0_narrow_x_b_10_wraddr_q};
    assign redist35_i_arrayidx233_kernel_2mm0_narrow_x_b_10_rdcnt_b = {1'b0, redist35_i_arrayidx233_kernel_2mm0_narrow_x_b_10_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist35_i_arrayidx233_kernel_2mm0_narrow_x_b_10_rdcnt_o <= $unsigned(redist35_i_arrayidx233_kernel_2mm0_narrow_x_b_10_rdcnt_a) + $unsigned(redist35_i_arrayidx233_kernel_2mm0_narrow_x_b_10_rdcnt_b);
        end
    end
    assign redist35_i_arrayidx233_kernel_2mm0_narrow_x_b_10_rdcnt_q = redist35_i_arrayidx233_kernel_2mm0_narrow_x_b_10_rdcnt_o[3:0];

    // redist11_sync_together106_aunroll_x_in_c0_eni10_3_tpl_4_inputreg0(DELAY,438)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist11_sync_together106_aunroll_x_in_c0_eni10_3_tpl_4_inputreg0_q <= $unsigned(in_c0_eni10_3_tpl);
        end
    end

    // redist11_sync_together106_aunroll_x_in_c0_eni10_3_tpl_4(DELAY,402)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist11_sync_together106_aunroll_x_in_c0_eni10_3_tpl_4_delay_0 <= $unsigned(redist11_sync_together106_aunroll_x_in_c0_eni10_3_tpl_4_inputreg0_q);
            redist11_sync_together106_aunroll_x_in_c0_eni10_3_tpl_4_delay_1 <= redist11_sync_together106_aunroll_x_in_c0_eni10_3_tpl_4_delay_0;
            redist11_sync_together106_aunroll_x_in_c0_eni10_3_tpl_4_q <= redist11_sync_together106_aunroll_x_in_c0_eni10_3_tpl_4_delay_1;
        end
    end

    // valid_fanout_reg14(REG,218)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg13(REG,217)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist18_sync_together106_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i64_idxprom1053_push30_kernel_2mm0_i_llvm_fpga_push_i64_idxprom1053_push30_kernel_2mm1_x(FIFODELAY,193)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i64_idxprom1053_push30_kernel_2mm0_i_llvm_fpga_push_i64_idxprom1053_push30_kernel_2mm1_x_i_stall = ~ (valid_fanout_reg14_q & i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q);
    assign i_llvm_fpga_push_i64_idxprom1053_push30_kernel_2mm0_i_llvm_fpga_push_i64_idxprom1053_push30_kernel_2mm1_x_i_valid = valid_fanout_reg13_q & redist26_i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i64_idxprom1053_push30_kernel_2mm0_i_llvm_fpga_push_i64_idxprom1053_push30_kernel_2mm1_x_i_data = i_llvm_fpga_pop_i64_idxprom1053_pop30_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom1053_pop30_kernel_2mm16_mux_x_q;
    assign i_llvm_fpga_push_i64_idxprom1053_push30_kernel_2mm0_i_llvm_fpga_push_i64_idxprom1053_push30_kernel_2mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i64_idxprom1053_push30_kernel_2mm0_i_llvm_fpga_push_i64_idxprom1053_push30_kernel_2mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i64_idxprom1053_push30_kernel_2mm0_i_llvm_fpga_push_i64_idxprom1053_push30_kernel_2mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i64_idxprom1053_push30_kernel_2mm0_i_llvm_fpga_push_i64_idxprom1053_push30_kernel_2mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i64_idxprom1053_push30_kernel_2mm0_i_llvm_fpga_push_i64_idxprom1053_push30_kernel_2mm1_x (
        .i_valid(i_llvm_fpga_push_i64_idxprom1053_push30_kernel_2mm0_i_llvm_fpga_push_i64_idxprom1053_push30_kernel_2mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i64_idxprom1053_push30_kernel_2mm0_i_llvm_fpga_push_i64_idxprom1053_push30_kernel_2mm1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i64_idxprom1053_pop30_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom1053_pop30_kernel_2mm16_mux_x_q),
        .o_data(i_llvm_fpga_push_i64_idxprom1053_push30_kernel_2mm0_i_llvm_fpga_push_i64_idxprom1053_push30_kernel_2mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i64_idxprom1053_pop30_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom1053_pop30_kernel_2mm16_mux_x(MUX,160)@4
    assign i_llvm_fpga_pop_i64_idxprom1053_pop30_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom1053_pop30_kernel_2mm16_mux_x_s = redist40_i_llvm_fpga_forked_kernel_2mm_b6_forked_kernel_2mm3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i64_idxprom1053_pop30_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom1053_pop30_kernel_2mm16_mux_x_s or i_llvm_fpga_push_i64_idxprom1053_push30_kernel_2mm0_i_llvm_fpga_push_i64_idxprom1053_push30_kernel_2mm1_x_o_data or redist11_sync_together106_aunroll_x_in_c0_eni10_3_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i64_idxprom1053_pop30_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom1053_pop30_kernel_2mm16_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i64_idxprom1053_pop30_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom1053_pop30_kernel_2mm16_mux_x_q = i_llvm_fpga_push_i64_idxprom1053_push30_kernel_2mm0_i_llvm_fpga_push_i64_idxprom1053_push30_kernel_2mm1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i64_idxprom1053_pop30_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom1053_pop30_kernel_2mm16_mux_x_q = redist11_sync_together106_aunroll_x_in_c0_eni10_3_tpl_4_q;
            default : i_llvm_fpga_pop_i64_idxprom1053_pop30_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom1053_pop30_kernel_2mm16_mux_x_q = 64'b0;
        endcase
    end

    // i_arrayidx233_kernel_2mm0_dupName_3_trunc_sel_x(BITSELECT,151)@4
    assign i_arrayidx233_kernel_2mm0_dupName_3_trunc_sel_x_b = i_llvm_fpga_pop_i64_idxprom1053_pop30_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom1053_pop30_kernel_2mm16_mux_x_q[8:0];

    // i_arrayidx233_kernel_2mm0_narrow_x(BITSELECT,134)@4
    assign i_arrayidx233_kernel_2mm0_narrow_x_b = i_arrayidx233_kernel_2mm0_dupName_3_trunc_sel_x_b[6:0];

    // redist35_i_arrayidx233_kernel_2mm0_narrow_x_b_10_inputreg0(DELAY,466)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist35_i_arrayidx233_kernel_2mm0_narrow_x_b_10_inputreg0_q <= $unsigned(i_arrayidx233_kernel_2mm0_narrow_x_b);
        end
    end

    // redist35_i_arrayidx233_kernel_2mm0_narrow_x_b_10_wraddr(COUNTER,469)
    // low=0, high=7, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist35_i_arrayidx233_kernel_2mm0_narrow_x_b_10_wraddr_i <= $unsigned(redist35_i_arrayidx233_kernel_2mm0_narrow_x_b_10_wraddr_i) + $unsigned(3'd1);
        end
    end
    assign redist35_i_arrayidx233_kernel_2mm0_narrow_x_b_10_wraddr_q = redist35_i_arrayidx233_kernel_2mm0_narrow_x_b_10_wraddr_i[2:0];

    // redist35_i_arrayidx233_kernel_2mm0_narrow_x_b_10_mem(DUALMEM,468)
    assign redist35_i_arrayidx233_kernel_2mm0_narrow_x_b_10_mem_ia = $unsigned(redist35_i_arrayidx233_kernel_2mm0_narrow_x_b_10_inputreg0_q);
    assign redist35_i_arrayidx233_kernel_2mm0_narrow_x_b_10_mem_aa = redist35_i_arrayidx233_kernel_2mm0_narrow_x_b_10_wraddr_q;
    assign redist35_i_arrayidx233_kernel_2mm0_narrow_x_b_10_mem_ab = redist35_i_arrayidx233_kernel_2mm0_narrow_x_b_10_rdcnt_q[2:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(7),
        .widthad_a(3),
        .numwords_a(8),
        .width_b(7),
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
    ) redist35_i_arrayidx233_kernel_2mm0_narrow_x_b_10_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist35_i_arrayidx233_kernel_2mm0_narrow_x_b_10_mem_aa),
        .data_a(redist35_i_arrayidx233_kernel_2mm0_narrow_x_b_10_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist35_i_arrayidx233_kernel_2mm0_narrow_x_b_10_mem_ab),
        .q_b(redist35_i_arrayidx233_kernel_2mm0_narrow_x_b_10_mem_iq),
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
    assign redist35_i_arrayidx233_kernel_2mm0_narrow_x_b_10_mem_q = redist35_i_arrayidx233_kernel_2mm0_narrow_x_b_10_mem_iq[6:0];

    // redist35_i_arrayidx233_kernel_2mm0_narrow_x_b_10_outputreg0(DELAY,467)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist35_i_arrayidx233_kernel_2mm0_narrow_x_b_10_outputreg0_q <= $unsigned(redist35_i_arrayidx233_kernel_2mm0_narrow_x_b_10_mem_q);
        end
    end

    // i_arrayidx233_kernel_2mm0_shift_join_x(BITJOIN,135)@14
    assign i_arrayidx233_kernel_2mm0_shift_join_x_q = {redist35_i_arrayidx233_kernel_2mm0_narrow_x_b_10_outputreg0_q, i_arrayidx192_kernel_2mm12_vt_const_1_q};

    // highBBits_uid341_i_arrayidx233_kernel_2mm0_mult_x(BITSELECT,340)@6
    assign highBBits_uid341_i_arrayidx233_kernel_2mm0_mult_x_b = i_arrayidx192_kernel_2mm0_dupName_3_trunc_sel_x_b[8:2];

    // addsumAHighB_uid342_i_arrayidx233_kernel_2mm0_mult_x(ADD,341)@6
    assign addsumAHighB_uid342_i_arrayidx233_kernel_2mm0_mult_x_a = {1'b0, i_arrayidx192_kernel_2mm0_dupName_3_trunc_sel_x_b};
    assign addsumAHighB_uid342_i_arrayidx233_kernel_2mm0_mult_x_b = {3'b000, highBBits_uid341_i_arrayidx233_kernel_2mm0_mult_x_b};
    assign addsumAHighB_uid342_i_arrayidx233_kernel_2mm0_mult_x_o = $unsigned(addsumAHighB_uid342_i_arrayidx233_kernel_2mm0_mult_x_a) + $unsigned(addsumAHighB_uid342_i_arrayidx233_kernel_2mm0_mult_x_b);
    assign addsumAHighB_uid342_i_arrayidx233_kernel_2mm0_mult_x_q = addsumAHighB_uid342_i_arrayidx233_kernel_2mm0_mult_x_o[9:0];

    // lowRangeB_uid340_i_arrayidx233_kernel_2mm0_mult_x(BITSELECT,339)@6
    assign lowRangeB_uid340_i_arrayidx233_kernel_2mm0_mult_x_in = i_arrayidx192_kernel_2mm0_dupName_3_trunc_sel_x_b[1:0];
    assign lowRangeB_uid340_i_arrayidx233_kernel_2mm0_mult_x_b = lowRangeB_uid340_i_arrayidx233_kernel_2mm0_mult_x_in[1:0];

    // add_uid343_i_arrayidx233_kernel_2mm0_mult_x(BITJOIN,342)@6
    assign add_uid343_i_arrayidx233_kernel_2mm0_mult_x_q = {addsumAHighB_uid342_i_arrayidx233_kernel_2mm0_mult_x_q, lowRangeB_uid340_i_arrayidx233_kernel_2mm0_mult_x_b};

    // sR_mergedSignalTM_uid348_i_arrayidx233_kernel_2mm0_mult_x(BITJOIN,347)@6
    assign sR_mergedSignalTM_uid348_i_arrayidx233_kernel_2mm0_mult_x_q = {add_uid343_i_arrayidx233_kernel_2mm0_mult_x_q, i_arrayidx192_kernel_2mm0_mult_multconst_x_q};

    // i_arrayidx233_kernel_2mm0_mult_extender_x(BITJOIN,145)@6
    assign i_arrayidx233_kernel_2mm0_mult_extender_x_q = {i_arrayidx192_kernel_2mm0_mult_multconst_x_q, sR_mergedSignalTM_uid348_i_arrayidx233_kernel_2mm0_mult_x_q};

    // i_arrayidx233_kernel_2mm0_dupName_1_trunc_sel_x(BITSELECT,149)@6
    assign i_arrayidx233_kernel_2mm0_dupName_1_trunc_sel_x_b = i_arrayidx233_kernel_2mm0_mult_extender_x_q[8:0];

    // redist34_i_arrayidx233_kernel_2mm0_dupName_1_trunc_sel_x_b_7_inputreg0(DELAY,464)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist34_i_arrayidx233_kernel_2mm0_dupName_1_trunc_sel_x_b_7_inputreg0_q <= $unsigned(i_arrayidx233_kernel_2mm0_dupName_1_trunc_sel_x_b);
        end
    end

    // redist34_i_arrayidx233_kernel_2mm0_dupName_1_trunc_sel_x_b_7(DELAY,425)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist34_i_arrayidx233_kernel_2mm0_dupName_1_trunc_sel_x_b_7_delay_0 <= $unsigned(redist34_i_arrayidx233_kernel_2mm0_dupName_1_trunc_sel_x_b_7_inputreg0_q);
            redist34_i_arrayidx233_kernel_2mm0_dupName_1_trunc_sel_x_b_7_delay_1 <= redist34_i_arrayidx233_kernel_2mm0_dupName_1_trunc_sel_x_b_7_delay_0;
            redist34_i_arrayidx233_kernel_2mm0_dupName_1_trunc_sel_x_b_7_delay_2 <= redist34_i_arrayidx233_kernel_2mm0_dupName_1_trunc_sel_x_b_7_delay_1;
            redist34_i_arrayidx233_kernel_2mm0_dupName_1_trunc_sel_x_b_7_delay_3 <= redist34_i_arrayidx233_kernel_2mm0_dupName_1_trunc_sel_x_b_7_delay_2;
            redist34_i_arrayidx233_kernel_2mm0_dupName_1_trunc_sel_x_b_7_q <= redist34_i_arrayidx233_kernel_2mm0_dupName_1_trunc_sel_x_b_7_delay_3;
        end
    end

    // redist34_i_arrayidx233_kernel_2mm0_dupName_1_trunc_sel_x_b_7_outputreg0(DELAY,465)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist34_i_arrayidx233_kernel_2mm0_dupName_1_trunc_sel_x_b_7_outputreg0_q <= $unsigned(redist34_i_arrayidx233_kernel_2mm0_dupName_1_trunc_sel_x_b_7_q);
        end
    end

    // i_arrayidx233_kernel_2mm0_add_x(ADD,129)@13
    assign i_arrayidx233_kernel_2mm0_add_x_a = {1'b0, i_arrayidx233_kernel_2mm0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx233_kernel_2mm0_add_x_b = {1'b0, redist34_i_arrayidx233_kernel_2mm0_dupName_1_trunc_sel_x_b_7_outputreg0_q};
    assign i_arrayidx233_kernel_2mm0_add_x_o = $unsigned(i_arrayidx233_kernel_2mm0_add_x_a) + $unsigned(i_arrayidx233_kernel_2mm0_add_x_b);
    assign i_arrayidx233_kernel_2mm0_add_x_q = i_arrayidx233_kernel_2mm0_add_x_o[9:0];

    // i_arrayidx233_kernel_2mm0_dupName_2_trunc_sel_x(BITSELECT,150)@13
    assign i_arrayidx233_kernel_2mm0_dupName_2_trunc_sel_x_b = i_arrayidx233_kernel_2mm0_add_x_q[8:0];

    // redist33_i_arrayidx233_kernel_2mm0_dupName_2_trunc_sel_x_b_1(DELAY,424)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist33_i_arrayidx233_kernel_2mm0_dupName_2_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx233_kernel_2mm0_dupName_2_trunc_sel_x_b);
        end
    end

    // i_arrayidx233_kernel_2mm0_dupName_0_add_x(ADD,139)@14
    assign i_arrayidx233_kernel_2mm0_dupName_0_add_x_a = {1'b0, redist33_i_arrayidx233_kernel_2mm0_dupName_2_trunc_sel_x_b_1_q};
    assign i_arrayidx233_kernel_2mm0_dupName_0_add_x_b = {1'b0, i_arrayidx233_kernel_2mm0_shift_join_x_q};
    assign i_arrayidx233_kernel_2mm0_dupName_0_add_x_o = $unsigned(i_arrayidx233_kernel_2mm0_dupName_0_add_x_a) + $unsigned(i_arrayidx233_kernel_2mm0_dupName_0_add_x_b);
    assign i_arrayidx233_kernel_2mm0_dupName_0_add_x_q = i_arrayidx233_kernel_2mm0_dupName_0_add_x_o[9:0];

    // i_arrayidx233_kernel_2mm0_dupName_5_trunc_sel_x(BITSELECT,152)@14
    assign i_arrayidx233_kernel_2mm0_dupName_5_trunc_sel_x_b = i_arrayidx233_kernel_2mm0_dupName_0_add_x_q[8:0];

    // i_arrayidx233_kernel_2mm0_append_upper_bits_x(BITJOIN,130)@14
    assign i_arrayidx233_kernel_2mm0_append_upper_bits_x_q = {redist0_i_arrayidx233_kernel_2mm0_upper_bits_x_merged_bit_select_b_1_q, i_arrayidx233_kernel_2mm0_dupName_5_trunc_sel_x_b};

    // i_arrayidx233_kernel_2mm17_vt_select_63(BITSELECT,69)@14
    assign i_arrayidx233_kernel_2mm17_vt_select_63_b = i_arrayidx233_kernel_2mm0_append_upper_bits_x_q[63:2];

    // i_arrayidx233_kernel_2mm17_vt_join(BITJOIN,68)@14
    assign i_arrayidx233_kernel_2mm17_vt_join_q = {i_arrayidx233_kernel_2mm17_vt_select_63_b, i_arrayidx192_kernel_2mm12_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_kernel_2mm10_kernel_2mm18(BLACKBOX,82)@14
    // out out_o_almost_empty@18
    // out out_o_empty@18
    // out out_o_readdata@18
    // out out_o_stall@18
    // out out_o_valid@18
    // out out_unnamed_kernel_2mm10_kernel_2mm_avm_address@20000000
    // out out_unnamed_kernel_2mm10_kernel_2mm_avm_burstcount@20000000
    // out out_unnamed_kernel_2mm10_kernel_2mm_avm_byteenable@20000000
    // out out_unnamed_kernel_2mm10_kernel_2mm_avm_enable@20000000
    // out out_unnamed_kernel_2mm10_kernel_2mm_avm_read@20000000
    // out out_unnamed_kernel_2mm10_kernel_2mm_avm_write@20000000
    // out out_unnamed_kernel_2mm10_kernel_2mm_avm_writedata@20000000
    kernel_2mm_i_llvm_fpga_mem_unnamed_10_kernel_2mm0 thei_llvm_fpga_mem_unnamed_kernel_2mm10_kernel_2mm18 (
        .in_almost_empty_in(GND_q),
        .in_empty_in(GND_q),
        .in_flush(in_flush),
        .in_i_address(i_arrayidx233_kernel_2mm17_vt_join_q),
        .in_i_predicate(redist44_i_kernel_2mm_b6_current_iter_isspec_kernel_2mm5_q_8_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg10_q),
        .in_unnamed_kernel_2mm10_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm10_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm10_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm10_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm10_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm10_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm10_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm10_kernel_2mm_avm_writeack),
        .out_o_almost_empty(),
        .out_o_empty(),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_kernel_2mm10_kernel_2mm18_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_address(i_llvm_fpga_mem_unnamed_kernel_2mm10_kernel_2mm18_out_unnamed_kernel_2mm10_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_burstcount(i_llvm_fpga_mem_unnamed_kernel_2mm10_kernel_2mm18_out_unnamed_kernel_2mm10_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_byteenable(i_llvm_fpga_mem_unnamed_kernel_2mm10_kernel_2mm18_out_unnamed_kernel_2mm10_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_enable(i_llvm_fpga_mem_unnamed_kernel_2mm10_kernel_2mm18_out_unnamed_kernel_2mm10_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_read(i_llvm_fpga_mem_unnamed_kernel_2mm10_kernel_2mm18_out_unnamed_kernel_2mm10_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_write(i_llvm_fpga_mem_unnamed_kernel_2mm10_kernel_2mm18_out_unnamed_kernel_2mm10_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_writedata(i_llvm_fpga_mem_unnamed_kernel_2mm10_kernel_2mm18_out_unnamed_kernel_2mm10_kernel_2mm_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,101)
    assign out_unnamed_kernel_2mm10_kernel_2mm_avm_address = i_llvm_fpga_mem_unnamed_kernel_2mm10_kernel_2mm18_out_unnamed_kernel_2mm10_kernel_2mm_avm_address;
    assign out_unnamed_kernel_2mm10_kernel_2mm_avm_enable = i_llvm_fpga_mem_unnamed_kernel_2mm10_kernel_2mm18_out_unnamed_kernel_2mm10_kernel_2mm_avm_enable;
    assign out_unnamed_kernel_2mm10_kernel_2mm_avm_read = i_llvm_fpga_mem_unnamed_kernel_2mm10_kernel_2mm18_out_unnamed_kernel_2mm10_kernel_2mm_avm_read;
    assign out_unnamed_kernel_2mm10_kernel_2mm_avm_write = i_llvm_fpga_mem_unnamed_kernel_2mm10_kernel_2mm18_out_unnamed_kernel_2mm10_kernel_2mm_avm_write;
    assign out_unnamed_kernel_2mm10_kernel_2mm_avm_writedata = i_llvm_fpga_mem_unnamed_kernel_2mm10_kernel_2mm18_out_unnamed_kernel_2mm10_kernel_2mm_avm_writedata;
    assign out_unnamed_kernel_2mm10_kernel_2mm_avm_byteenable = i_llvm_fpga_mem_unnamed_kernel_2mm10_kernel_2mm18_out_unnamed_kernel_2mm10_kernel_2mm_avm_byteenable;
    assign out_unnamed_kernel_2mm10_kernel_2mm_avm_burstcount = i_llvm_fpga_mem_unnamed_kernel_2mm10_kernel_2mm18_out_unnamed_kernel_2mm10_kernel_2mm_avm_burstcount;

    // dupName_0_regfree_osync_x(GPOUT,102)
    assign out_pipeline_dummy_out = i_llvm_fpga_pipeline_keep_going23_kernel_2mm6_out_pipeline_dummy_out;

    // dupName_1_regfree_osync_x(GPOUT,103)
    assign out_pipeline_forked_out = i_llvm_fpga_pipeline_keep_going23_kernel_2mm6_out_pipeline_forked_out;

    // dupName_2_regfree_osync_x(GPOUT,104)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going23_kernel_2mm6_out_pipeline_valid_out;

    // redist24_sync_together106_aunroll_x_in_i_valid_21(DELAY,415)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("SYNC"), .phase(13), .modulus(2), .reset_high(1'b0) )
    redist24_sync_together106_aunroll_x_in_i_valid_21 ( .xin(redist23_sync_together106_aunroll_x_in_i_valid_13_q), .xout(redist24_sync_together106_aunroll_x_in_i_valid_21_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist25_sync_together106_aunroll_x_in_i_valid_24(DELAY,416)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist25_sync_together106_aunroll_x_in_i_valid_24_delay_0 <= $unsigned(redist24_sync_together106_aunroll_x_in_i_valid_21_q);
        end
    end
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist25_sync_together106_aunroll_x_in_i_valid_24_delay_1 <= '0;
        end
        else
        begin
            redist25_sync_together106_aunroll_x_in_i_valid_24_delay_1 <= redist25_sync_together106_aunroll_x_in_i_valid_24_delay_0;
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist25_sync_together106_aunroll_x_in_i_valid_24_q <= redist25_sync_together106_aunroll_x_in_i_valid_24_delay_1;
        end
    end

    // valid_fanout_reg0(REG,204)@24 + 1
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist25_sync_together106_aunroll_x_in_i_valid_24_q);
        end
    end

    // redist9_valid_fanout_reg0_q_1(DELAY,400)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist9_valid_fanout_reg0_q_1_q <= $unsigned(valid_fanout_reg0_q);
        end
    end

    // redist45_i_kernel_2mm_b6_current_iter_isspec_kernel_2mm5_q_20(DELAY,436)
    dspba_delay_ver #( .width(1), .depth(12), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist45_i_kernel_2mm_b6_current_iter_isspec_kernel_2mm5_q_20 ( .xin(redist44_i_kernel_2mm_b6_current_iter_isspec_kernel_2mm5_q_8_q), .xout(redist45_i_kernel_2mm_b6_current_iter_isspec_kernel_2mm5_q_20_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist17_sync_together106_aunroll_x_in_c0_eni10_10_tpl_26_offset(CONSTANT,450)
    assign redist17_sync_together106_aunroll_x_in_c0_eni10_10_tpl_26_offset_q = $unsigned(5'b01011);

    // redist17_sync_together106_aunroll_x_in_c0_eni10_10_tpl_26_rdcnt(ADD,451)
    assign redist17_sync_together106_aunroll_x_in_c0_eni10_10_tpl_26_rdcnt_a = {1'b0, redist17_sync_together106_aunroll_x_in_c0_eni10_10_tpl_26_wraddr_q};
    assign redist17_sync_together106_aunroll_x_in_c0_eni10_10_tpl_26_rdcnt_b = {1'b0, redist17_sync_together106_aunroll_x_in_c0_eni10_10_tpl_26_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist17_sync_together106_aunroll_x_in_c0_eni10_10_tpl_26_rdcnt_o <= $unsigned(redist17_sync_together106_aunroll_x_in_c0_eni10_10_tpl_26_rdcnt_a) + $unsigned(redist17_sync_together106_aunroll_x_in_c0_eni10_10_tpl_26_rdcnt_b);
        end
    end
    assign redist17_sync_together106_aunroll_x_in_c0_eni10_10_tpl_26_rdcnt_q = redist17_sync_together106_aunroll_x_in_c0_eni10_10_tpl_26_rdcnt_o[5:0];

    // redist17_sync_together106_aunroll_x_in_c0_eni10_10_tpl_26_inputreg0(DELAY,446)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist17_sync_together106_aunroll_x_in_c0_eni10_10_tpl_26_inputreg0_q <= $unsigned(in_c0_eni10_10_tpl);
        end
    end

    // redist17_sync_together106_aunroll_x_in_c0_eni10_10_tpl_26_wraddr(COUNTER,449)
    // low=0, high=31, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist17_sync_together106_aunroll_x_in_c0_eni10_10_tpl_26_wraddr_i <= $unsigned(redist17_sync_together106_aunroll_x_in_c0_eni10_10_tpl_26_wraddr_i) + $unsigned(5'd1);
        end
    end
    assign redist17_sync_together106_aunroll_x_in_c0_eni10_10_tpl_26_wraddr_q = redist17_sync_together106_aunroll_x_in_c0_eni10_10_tpl_26_wraddr_i[4:0];

    // redist17_sync_together106_aunroll_x_in_c0_eni10_10_tpl_26_mem(DUALMEM,448)
    assign redist17_sync_together106_aunroll_x_in_c0_eni10_10_tpl_26_mem_ia = $unsigned(redist17_sync_together106_aunroll_x_in_c0_eni10_10_tpl_26_inputreg0_q);
    assign redist17_sync_together106_aunroll_x_in_c0_eni10_10_tpl_26_mem_aa = redist17_sync_together106_aunroll_x_in_c0_eni10_10_tpl_26_wraddr_q;
    assign redist17_sync_together106_aunroll_x_in_c0_eni10_10_tpl_26_mem_ab = redist17_sync_together106_aunroll_x_in_c0_eni10_10_tpl_26_rdcnt_q[4:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(5),
        .numwords_a(32),
        .width_b(32),
        .widthad_b(5),
        .numwords_b(32),
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
    ) redist17_sync_together106_aunroll_x_in_c0_eni10_10_tpl_26_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist17_sync_together106_aunroll_x_in_c0_eni10_10_tpl_26_mem_aa),
        .data_a(redist17_sync_together106_aunroll_x_in_c0_eni10_10_tpl_26_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist17_sync_together106_aunroll_x_in_c0_eni10_10_tpl_26_mem_ab),
        .q_b(redist17_sync_together106_aunroll_x_in_c0_eni10_10_tpl_26_mem_iq),
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
    assign redist17_sync_together106_aunroll_x_in_c0_eni10_10_tpl_26_mem_q = redist17_sync_together106_aunroll_x_in_c0_eni10_10_tpl_26_mem_iq[31:0];

    // redist17_sync_together106_aunroll_x_in_c0_eni10_10_tpl_26_outputreg0(DELAY,447)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist17_sync_together106_aunroll_x_in_c0_eni10_10_tpl_26_outputreg0_q <= $unsigned(redist17_sync_together106_aunroll_x_in_c0_eni10_10_tpl_26_mem_q);
        end
    end

    // redist16_sync_together106_aunroll_x_in_c0_eni10_9_tpl_26(DELAY,407)
    dspba_delay_ver #( .width(1), .depth(26), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist16_sync_together106_aunroll_x_in_c0_eni10_9_tpl_26 ( .xin(in_c0_eni10_9_tpl), .xout(redist16_sync_together106_aunroll_x_in_c0_eni10_9_tpl_26_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist15_sync_together106_aunroll_x_in_c0_eni10_8_tpl_25(DELAY,406)
    dspba_delay_ver #( .width(1), .depth(25), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist15_sync_together106_aunroll_x_in_c0_eni10_8_tpl_25 ( .xin(in_c0_eni10_8_tpl), .xout(redist15_sync_together106_aunroll_x_in_c0_eni10_8_tpl_25_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_push_i1_notcmp2655_push32_kernel_2mm0_element_extension2_x(BITJOIN,171)@26
    assign i_llvm_fpga_push_i1_notcmp2655_push32_kernel_2mm0_element_extension2_x_q = {i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_c_i7_03_x_q, i_llvm_fpga_pop_i1_notcmp2655_pop32_kernel_2mm0_i_llvm_fpga_pop_i1_notcmp2655_pop32_kernel_2mm40_mux_x_q};

    // redist28_i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q_21(DELAY,419)
    dspba_delay_ver #( .width(1), .depth(17), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist28_i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q_21 ( .xin(redist27_i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q_4_q), .xout(redist28_i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q_21_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg35(REG,239)@21 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg35_q <= $unsigned(redist24_sync_together106_aunroll_x_in_i_valid_21_q);
        end
    end

    // redist29_i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q_24(DELAY,420)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist29_i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q_24_delay_0 <= $unsigned(redist28_i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q_21_q);
            redist29_i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q_24_delay_1 <= redist29_i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q_24_delay_0;
            redist29_i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q_24_q <= redist29_i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q_24_delay_1;
        end
    end

    // valid_fanout_reg34(REG,238)@24 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg34_q <= $unsigned(redist25_sync_together106_aunroll_x_in_i_valid_24_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp2655_push32_kernel_2mm0_i_llvm_fpga_push_i1_notcmp2655_push32_kernel_2mm1_x(FIFODELAY,172)@22
    // in i_valid@25
    // in i_write_pred@25
    // in i_data@26
    // out o_data@25
    assign i_llvm_fpga_push_i1_notcmp2655_push32_kernel_2mm0_i_llvm_fpga_push_i1_notcmp2655_push32_kernel_2mm1_x_i_stall = ~ (valid_fanout_reg35_q & redist28_i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q_21_q);
    assign i_llvm_fpga_push_i1_notcmp2655_push32_kernel_2mm0_i_llvm_fpga_push_i1_notcmp2655_push32_kernel_2mm1_x_i_valid = valid_fanout_reg34_q & redist29_i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q_24_q;
    assign i_llvm_fpga_push_i1_notcmp2655_push32_kernel_2mm0_i_llvm_fpga_push_i1_notcmp2655_push32_kernel_2mm1_x_i_data = i_llvm_fpga_push_i1_notcmp2655_push32_kernel_2mm0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_notcmp2655_push32_kernel_2mm0_i_llvm_fpga_push_i1_notcmp2655_push32_kernel_2mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_notcmp2655_push32_kernel_2mm0_i_llvm_fpga_push_i1_notcmp2655_push32_kernel_2mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_notcmp2655_push32_kernel_2mm0_i_llvm_fpga_push_i1_notcmp2655_push32_kernel_2mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_notcmp2655_push32_kernel_2mm0_i_llvm_fpga_push_i1_notcmp2655_push32_kernel_2mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_notcmp2655_push32_kernel_2mm0_i_llvm_fpga_push_i1_notcmp2655_push32_kernel_2mm1_x (
        .i_valid(i_llvm_fpga_push_i1_notcmp2655_push32_kernel_2mm0_i_llvm_fpga_push_i1_notcmp2655_push32_kernel_2mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_notcmp2655_push32_kernel_2mm0_i_llvm_fpga_push_i1_notcmp2655_push32_kernel_2mm1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_notcmp2655_push32_kernel_2mm0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_notcmp2655_push32_kernel_2mm0_i_llvm_fpga_push_i1_notcmp2655_push32_kernel_2mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_notcmp2655_push32_kernel_2mm0_adapt_scalar_trunc4_sel_x(BITSELECT,174)@25
    assign i_llvm_fpga_push_i1_notcmp2655_push32_kernel_2mm0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_notcmp2655_push32_kernel_2mm0_i_llvm_fpga_push_i1_notcmp2655_push32_kernel_2mm1_x_o_data[0:0];

    // redist42_i_llvm_fpga_forked_kernel_2mm_b6_forked_kernel_2mm3_out_buffer_out_25(DELAY,433)
    dspba_delay_ver #( .width(1), .depth(19), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist42_i_llvm_fpga_forked_kernel_2mm_b6_forked_kernel_2mm3_out_buffer_out_25 ( .xin(redist41_i_llvm_fpga_forked_kernel_2mm_b6_forked_kernel_2mm3_out_buffer_out_6_q), .xout(redist42_i_llvm_fpga_forked_kernel_2mm_b6_forked_kernel_2mm3_out_buffer_out_25_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_pop_i1_notcmp2655_pop32_kernel_2mm0_i_llvm_fpga_pop_i1_notcmp2655_pop32_kernel_2mm40_mux_x(MUX,155)@25 + 1
    assign i_llvm_fpga_pop_i1_notcmp2655_pop32_kernel_2mm0_i_llvm_fpga_pop_i1_notcmp2655_pop32_kernel_2mm40_mux_x_s = redist42_i_llvm_fpga_forked_kernel_2mm_b6_forked_kernel_2mm3_out_buffer_out_25_q;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_llvm_fpga_pop_i1_notcmp2655_pop32_kernel_2mm0_i_llvm_fpga_pop_i1_notcmp2655_pop32_kernel_2mm40_mux_x_s)
                1'b0 : i_llvm_fpga_pop_i1_notcmp2655_pop32_kernel_2mm0_i_llvm_fpga_pop_i1_notcmp2655_pop32_kernel_2mm40_mux_x_q <= i_llvm_fpga_push_i1_notcmp2655_push32_kernel_2mm0_adapt_scalar_trunc4_sel_x_b;
                1'b1 : i_llvm_fpga_pop_i1_notcmp2655_pop32_kernel_2mm0_i_llvm_fpga_pop_i1_notcmp2655_pop32_kernel_2mm40_mux_x_q <= redist15_sync_together106_aunroll_x_in_c0_eni10_8_tpl_25_q;
                default : i_llvm_fpga_pop_i1_notcmp2655_pop32_kernel_2mm0_i_llvm_fpga_pop_i1_notcmp2655_pop32_kernel_2mm40_mux_x_q <= 1'b0;
            endcase
        end
    end

    // redist30_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm0_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm38_mux_x_q_22_offset(CONSTANT,456)
    assign redist30_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm0_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm38_mux_x_q_22_offset_q = $unsigned(5'b01111);

    // redist30_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm0_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm38_mux_x_q_22_rdcnt(ADD,457)
    assign redist30_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm0_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm38_mux_x_q_22_rdcnt_a = {1'b0, redist30_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm0_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm38_mux_x_q_22_wraddr_q};
    assign redist30_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm0_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm38_mux_x_q_22_rdcnt_b = {1'b0, redist30_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm0_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm38_mux_x_q_22_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist30_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm0_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm38_mux_x_q_22_rdcnt_o <= $unsigned(redist30_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm0_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm38_mux_x_q_22_rdcnt_a) + $unsigned(redist30_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm0_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm38_mux_x_q_22_rdcnt_b);
        end
    end
    assign redist30_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm0_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm38_mux_x_q_22_rdcnt_q = redist30_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm0_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm38_mux_x_q_22_rdcnt_o[5:0];

    // redist14_sync_together106_aunroll_x_in_c0_eni10_7_tpl_4_inputreg0(DELAY,445)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist14_sync_together106_aunroll_x_in_c0_eni10_7_tpl_4_inputreg0_q <= $unsigned(in_c0_eni10_7_tpl);
        end
    end

    // redist14_sync_together106_aunroll_x_in_c0_eni10_7_tpl_4(DELAY,405)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist14_sync_together106_aunroll_x_in_c0_eni10_7_tpl_4_delay_0 <= $unsigned(redist14_sync_together106_aunroll_x_in_c0_eni10_7_tpl_4_inputreg0_q);
            redist14_sync_together106_aunroll_x_in_c0_eni10_7_tpl_4_delay_1 <= redist14_sync_together106_aunroll_x_in_c0_eni10_7_tpl_4_delay_0;
            redist14_sync_together106_aunroll_x_in_c0_eni10_7_tpl_4_q <= redist14_sync_together106_aunroll_x_in_c0_eni10_7_tpl_4_delay_1;
        end
    end

    // valid_fanout_reg32(REG,236)@0 + 1
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

    // valid_fanout_reg31(REG,235)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg31_q <= $unsigned(redist18_sync_together106_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_p64i32_arrayidx11154_push31_kernel_2mm0_i_llvm_fpga_push_p64i32_arrayidx11154_push31_kernel_2mm1_x(FIFODELAY,199)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_p64i32_arrayidx11154_push31_kernel_2mm0_i_llvm_fpga_push_p64i32_arrayidx11154_push31_kernel_2mm1_x_i_stall = ~ (valid_fanout_reg32_q & i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q);
    assign i_llvm_fpga_push_p64i32_arrayidx11154_push31_kernel_2mm0_i_llvm_fpga_push_p64i32_arrayidx11154_push31_kernel_2mm1_x_i_valid = valid_fanout_reg31_q & redist26_i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_p64i32_arrayidx11154_push31_kernel_2mm0_i_llvm_fpga_push_p64i32_arrayidx11154_push31_kernel_2mm1_x_i_data = i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm0_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm38_mux_x_q;
    assign i_llvm_fpga_push_p64i32_arrayidx11154_push31_kernel_2mm0_i_llvm_fpga_push_p64i32_arrayidx11154_push31_kernel_2mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_p64i32_arrayidx11154_push31_kernel_2mm0_i_llvm_fpga_push_p64i32_arrayidx11154_push31_kernel_2mm1_x_i_valid[0];
    assign i_llvm_fpga_push_p64i32_arrayidx11154_push31_kernel_2mm0_i_llvm_fpga_push_p64i32_arrayidx11154_push31_kernel_2mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_p64i32_arrayidx11154_push31_kernel_2mm0_i_llvm_fpga_push_p64i32_arrayidx11154_push31_kernel_2mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_p64i32_arrayidx11154_push31_kernel_2mm0_i_llvm_fpga_push_p64i32_arrayidx11154_push31_kernel_2mm1_x (
        .i_valid(i_llvm_fpga_push_p64i32_arrayidx11154_push31_kernel_2mm0_i_llvm_fpga_push_p64i32_arrayidx11154_push31_kernel_2mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_p64i32_arrayidx11154_push31_kernel_2mm0_i_llvm_fpga_push_p64i32_arrayidx11154_push31_kernel_2mm1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm0_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm38_mux_x_q),
        .o_data(i_llvm_fpga_push_p64i32_arrayidx11154_push31_kernel_2mm0_i_llvm_fpga_push_p64i32_arrayidx11154_push31_kernel_2mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm0_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm38_mux_x(MUX,162)@4
    assign i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm0_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm38_mux_x_s = redist40_i_llvm_fpga_forked_kernel_2mm_b6_forked_kernel_2mm3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm0_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm38_mux_x_s or i_llvm_fpga_push_p64i32_arrayidx11154_push31_kernel_2mm0_i_llvm_fpga_push_p64i32_arrayidx11154_push31_kernel_2mm1_x_o_data or redist14_sync_together106_aunroll_x_in_c0_eni10_7_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm0_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm38_mux_x_s)
            1'b0 : i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm0_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm38_mux_x_q = i_llvm_fpga_push_p64i32_arrayidx11154_push31_kernel_2mm0_i_llvm_fpga_push_p64i32_arrayidx11154_push31_kernel_2mm1_x_o_data;
            1'b1 : i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm0_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm38_mux_x_q = redist14_sync_together106_aunroll_x_in_c0_eni10_7_tpl_4_q;
            default : i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm0_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm38_mux_x_q = 64'b0;
        endcase
    end

    // redist30_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm0_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm38_mux_x_q_22_inputreg0(DELAY,452)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist30_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm0_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm38_mux_x_q_22_inputreg0_q <= $unsigned(i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm0_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm38_mux_x_q);
        end
    end

    // redist30_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm0_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm38_mux_x_q_22_wraddr(COUNTER,455)
    // low=0, high=31, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist30_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm0_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm38_mux_x_q_22_wraddr_i <= $unsigned(redist30_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm0_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm38_mux_x_q_22_wraddr_i) + $unsigned(5'd1);
        end
    end
    assign redist30_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm0_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm38_mux_x_q_22_wraddr_q = redist30_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm0_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm38_mux_x_q_22_wraddr_i[4:0];

    // redist30_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm0_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm38_mux_x_q_22_mem(DUALMEM,454)
    assign redist30_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm0_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm38_mux_x_q_22_mem_ia = $unsigned(redist30_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm0_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm38_mux_x_q_22_inputreg0_q);
    assign redist30_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm0_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm38_mux_x_q_22_mem_aa = redist30_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm0_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm38_mux_x_q_22_wraddr_q;
    assign redist30_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm0_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm38_mux_x_q_22_mem_ab = redist30_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm0_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm38_mux_x_q_22_rdcnt_q[4:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(5),
        .numwords_a(32),
        .width_b(64),
        .widthad_b(5),
        .numwords_b(32),
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
    ) redist30_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm0_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm38_mux_x_q_22_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist30_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm0_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm38_mux_x_q_22_mem_aa),
        .data_a(redist30_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm0_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm38_mux_x_q_22_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist30_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm0_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm38_mux_x_q_22_mem_ab),
        .q_b(redist30_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm0_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm38_mux_x_q_22_mem_iq),
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
    assign redist30_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm0_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm38_mux_x_q_22_mem_q = redist30_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm0_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm38_mux_x_q_22_mem_iq[63:0];

    // redist30_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm0_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm38_mux_x_q_22_outputreg0(DELAY,453)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist30_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm0_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm38_mux_x_q_22_outputreg0_q <= $unsigned(redist30_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm0_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm38_mux_x_q_22_mem_q);
        end
    end

    // redist13_sync_together106_aunroll_x_in_c0_eni10_5_tpl_25(DELAY,404)
    dspba_delay_ver #( .width(1), .depth(25), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist13_sync_together106_aunroll_x_in_c0_eni10_5_tpl_25 ( .xin(in_c0_eni10_5_tpl), .xout(redist13_sync_together106_aunroll_x_in_c0_eni10_5_tpl_25_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_push_i1_notcmp3142_push27_kernel_2mm0_element_extension2_x(BITJOIN,177)@26
    assign i_llvm_fpga_push_i1_notcmp3142_push27_kernel_2mm0_element_extension2_x_q = {i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_c_i7_03_x_q, i_llvm_fpga_pop_i1_notcmp3142_pop27_kernel_2mm0_i_llvm_fpga_pop_i1_notcmp3142_pop27_kernel_2mm34_mux_x_q};

    // valid_fanout_reg26(REG,230)@21 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg26_q <= $unsigned(redist24_sync_together106_aunroll_x_in_i_valid_21_q);
        end
    end

    // valid_fanout_reg25(REG,229)@24 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg25_q <= $unsigned(redist25_sync_together106_aunroll_x_in_i_valid_24_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp3142_push27_kernel_2mm0_i_llvm_fpga_push_i1_notcmp3142_push27_kernel_2mm1_x(FIFODELAY,178)@22
    // in i_valid@25
    // in i_write_pred@25
    // in i_data@26
    // out o_data@25
    assign i_llvm_fpga_push_i1_notcmp3142_push27_kernel_2mm0_i_llvm_fpga_push_i1_notcmp3142_push27_kernel_2mm1_x_i_stall = ~ (valid_fanout_reg26_q & redist28_i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q_21_q);
    assign i_llvm_fpga_push_i1_notcmp3142_push27_kernel_2mm0_i_llvm_fpga_push_i1_notcmp3142_push27_kernel_2mm1_x_i_valid = valid_fanout_reg25_q & redist29_i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q_24_q;
    assign i_llvm_fpga_push_i1_notcmp3142_push27_kernel_2mm0_i_llvm_fpga_push_i1_notcmp3142_push27_kernel_2mm1_x_i_data = i_llvm_fpga_push_i1_notcmp3142_push27_kernel_2mm0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_notcmp3142_push27_kernel_2mm0_i_llvm_fpga_push_i1_notcmp3142_push27_kernel_2mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_notcmp3142_push27_kernel_2mm0_i_llvm_fpga_push_i1_notcmp3142_push27_kernel_2mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_notcmp3142_push27_kernel_2mm0_i_llvm_fpga_push_i1_notcmp3142_push27_kernel_2mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_notcmp3142_push27_kernel_2mm0_i_llvm_fpga_push_i1_notcmp3142_push27_kernel_2mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_notcmp3142_push27_kernel_2mm0_i_llvm_fpga_push_i1_notcmp3142_push27_kernel_2mm1_x (
        .i_valid(i_llvm_fpga_push_i1_notcmp3142_push27_kernel_2mm0_i_llvm_fpga_push_i1_notcmp3142_push27_kernel_2mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_notcmp3142_push27_kernel_2mm0_i_llvm_fpga_push_i1_notcmp3142_push27_kernel_2mm1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_notcmp3142_push27_kernel_2mm0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_notcmp3142_push27_kernel_2mm0_i_llvm_fpga_push_i1_notcmp3142_push27_kernel_2mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_notcmp3142_push27_kernel_2mm0_adapt_scalar_trunc4_sel_x(BITSELECT,180)@25
    assign i_llvm_fpga_push_i1_notcmp3142_push27_kernel_2mm0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_notcmp3142_push27_kernel_2mm0_i_llvm_fpga_push_i1_notcmp3142_push27_kernel_2mm1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_notcmp3142_pop27_kernel_2mm0_i_llvm_fpga_pop_i1_notcmp3142_pop27_kernel_2mm34_mux_x(MUX,156)@25 + 1
    assign i_llvm_fpga_pop_i1_notcmp3142_pop27_kernel_2mm0_i_llvm_fpga_pop_i1_notcmp3142_pop27_kernel_2mm34_mux_x_s = redist42_i_llvm_fpga_forked_kernel_2mm_b6_forked_kernel_2mm3_out_buffer_out_25_q;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_llvm_fpga_pop_i1_notcmp3142_pop27_kernel_2mm0_i_llvm_fpga_pop_i1_notcmp3142_pop27_kernel_2mm34_mux_x_s)
                1'b0 : i_llvm_fpga_pop_i1_notcmp3142_pop27_kernel_2mm0_i_llvm_fpga_pop_i1_notcmp3142_pop27_kernel_2mm34_mux_x_q <= i_llvm_fpga_push_i1_notcmp3142_push27_kernel_2mm0_adapt_scalar_trunc4_sel_x_b;
                1'b1 : i_llvm_fpga_pop_i1_notcmp3142_pop27_kernel_2mm0_i_llvm_fpga_pop_i1_notcmp3142_pop27_kernel_2mm34_mux_x_q <= redist13_sync_together106_aunroll_x_in_c0_eni10_5_tpl_25_q;
                default : i_llvm_fpga_pop_i1_notcmp3142_pop27_kernel_2mm0_i_llvm_fpga_pop_i1_notcmp3142_pop27_kernel_2mm34_mux_x_q <= 1'b0;
            endcase
        end
    end

    // i_notcmp21_kernel_2mm30(LOGICAL,88)@26
    assign i_notcmp21_kernel_2mm30_q = redist8_i_exitcond_kernel_2mm24_cmp_nsign_q_22_q ^ VCC_q;

    // redist8_i_exitcond_kernel_2mm24_cmp_nsign_q_22(DELAY,399)
    dspba_delay_ver #( .width(1), .depth(22), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist8_i_exitcond_kernel_2mm24_cmp_nsign_q_22 ( .xin(i_exitcond_kernel_2mm24_cmp_nsign_q), .xout(redist8_i_exitcond_kernel_2mm24_cmp_nsign_q_22_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist12_sync_together106_aunroll_x_in_c0_eni10_4_tpl_25_offset(CONSTANT,443)
    assign redist12_sync_together106_aunroll_x_in_c0_eni10_4_tpl_25_offset_q = $unsigned(5'b01100);

    // redist12_sync_together106_aunroll_x_in_c0_eni10_4_tpl_25_rdcnt(ADD,444)
    assign redist12_sync_together106_aunroll_x_in_c0_eni10_4_tpl_25_rdcnt_a = {1'b0, redist12_sync_together106_aunroll_x_in_c0_eni10_4_tpl_25_wraddr_q};
    assign redist12_sync_together106_aunroll_x_in_c0_eni10_4_tpl_25_rdcnt_b = {1'b0, redist12_sync_together106_aunroll_x_in_c0_eni10_4_tpl_25_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist12_sync_together106_aunroll_x_in_c0_eni10_4_tpl_25_rdcnt_o <= $unsigned(redist12_sync_together106_aunroll_x_in_c0_eni10_4_tpl_25_rdcnt_a) + $unsigned(redist12_sync_together106_aunroll_x_in_c0_eni10_4_tpl_25_rdcnt_b);
        end
    end
    assign redist12_sync_together106_aunroll_x_in_c0_eni10_4_tpl_25_rdcnt_q = redist12_sync_together106_aunroll_x_in_c0_eni10_4_tpl_25_rdcnt_o[5:0];

    // redist12_sync_together106_aunroll_x_in_c0_eni10_4_tpl_25_inputreg0(DELAY,439)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist12_sync_together106_aunroll_x_in_c0_eni10_4_tpl_25_inputreg0_q <= $unsigned(in_c0_eni10_4_tpl);
        end
    end

    // redist12_sync_together106_aunroll_x_in_c0_eni10_4_tpl_25_wraddr(COUNTER,442)
    // low=0, high=31, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist12_sync_together106_aunroll_x_in_c0_eni10_4_tpl_25_wraddr_i <= $unsigned(redist12_sync_together106_aunroll_x_in_c0_eni10_4_tpl_25_wraddr_i) + $unsigned(5'd1);
        end
    end
    assign redist12_sync_together106_aunroll_x_in_c0_eni10_4_tpl_25_wraddr_q = redist12_sync_together106_aunroll_x_in_c0_eni10_4_tpl_25_wraddr_i[4:0];

    // redist12_sync_together106_aunroll_x_in_c0_eni10_4_tpl_25_mem(DUALMEM,441)
    assign redist12_sync_together106_aunroll_x_in_c0_eni10_4_tpl_25_mem_ia = $unsigned(redist12_sync_together106_aunroll_x_in_c0_eni10_4_tpl_25_inputreg0_q);
    assign redist12_sync_together106_aunroll_x_in_c0_eni10_4_tpl_25_mem_aa = redist12_sync_together106_aunroll_x_in_c0_eni10_4_tpl_25_wraddr_q;
    assign redist12_sync_together106_aunroll_x_in_c0_eni10_4_tpl_25_mem_ab = redist12_sync_together106_aunroll_x_in_c0_eni10_4_tpl_25_rdcnt_q[4:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(5),
        .numwords_a(32),
        .width_b(32),
        .widthad_b(5),
        .numwords_b(32),
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
    ) redist12_sync_together106_aunroll_x_in_c0_eni10_4_tpl_25_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist12_sync_together106_aunroll_x_in_c0_eni10_4_tpl_25_mem_aa),
        .data_a(redist12_sync_together106_aunroll_x_in_c0_eni10_4_tpl_25_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist12_sync_together106_aunroll_x_in_c0_eni10_4_tpl_25_mem_ab),
        .q_b(redist12_sync_together106_aunroll_x_in_c0_eni10_4_tpl_25_mem_iq),
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
    assign redist12_sync_together106_aunroll_x_in_c0_eni10_4_tpl_25_mem_q = redist12_sync_together106_aunroll_x_in_c0_eni10_4_tpl_25_mem_iq[31:0];

    // redist12_sync_together106_aunroll_x_in_c0_eni10_4_tpl_25_outputreg0(DELAY,440)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist12_sync_together106_aunroll_x_in_c0_eni10_4_tpl_25_outputreg0_q <= $unsigned(redist12_sync_together106_aunroll_x_in_c0_eni10_4_tpl_25_mem_q);
        end
    end

    // valid_fanout_reg18(REG,222)@21 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(redist24_sync_together106_aunroll_x_in_i_valid_21_q);
        end
    end

    // valid_fanout_reg17(REG,221)@24 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(redist25_sync_together106_aunroll_x_in_i_valid_24_q);
        end
    end

    // i_llvm_fpga_push_i32_x_037_push26_kernel_2mm0_i_llvm_fpga_push_i32_x_037_push26_kernel_2mm1_x(FIFODELAY,184)@22
    // in i_valid@25
    // in i_write_pred@25
    // in i_data@26
    // out o_data@25
    assign i_llvm_fpga_push_i32_x_037_push26_kernel_2mm0_i_llvm_fpga_push_i32_x_037_push26_kernel_2mm1_x_i_stall = ~ (valid_fanout_reg18_q & redist28_i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q_21_q);
    assign i_llvm_fpga_push_i32_x_037_push26_kernel_2mm0_i_llvm_fpga_push_i32_x_037_push26_kernel_2mm1_x_i_valid = valid_fanout_reg17_q & redist29_i_llvm_fpga_push_i1_kernel_2mm_b6_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q_24_q;
    assign i_llvm_fpga_push_i32_x_037_push26_kernel_2mm0_i_llvm_fpga_push_i32_x_037_push26_kernel_2mm1_x_i_data = bgTrunc_i_add_kernel_2mm21_sel_x_b;
    assign i_llvm_fpga_push_i32_x_037_push26_kernel_2mm0_i_llvm_fpga_push_i32_x_037_push26_kernel_2mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_x_037_push26_kernel_2mm0_i_llvm_fpga_push_i32_x_037_push26_kernel_2mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_x_037_push26_kernel_2mm0_i_llvm_fpga_push_i32_x_037_push26_kernel_2mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_x_037_push26_kernel_2mm0_i_llvm_fpga_push_i32_x_037_push26_kernel_2mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_x_037_push26_kernel_2mm0_i_llvm_fpga_push_i32_x_037_push26_kernel_2mm1_x (
        .i_valid(i_llvm_fpga_push_i32_x_037_push26_kernel_2mm0_i_llvm_fpga_push_i32_x_037_push26_kernel_2mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_x_037_push26_kernel_2mm0_i_llvm_fpga_push_i32_x_037_push26_kernel_2mm1_x_i_stall_bitsignaltemp),
        .i_data(bgTrunc_i_add_kernel_2mm21_sel_x_b),
        .o_data(i_llvm_fpga_push_i32_x_037_push26_kernel_2mm0_i_llvm_fpga_push_i32_x_037_push26_kernel_2mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_x_037_pop26_kernel_2mm0_i_llvm_fpga_pop_i32_x_037_pop26_kernel_2mm20_mux_x(MUX,158)@25 + 1
    assign i_llvm_fpga_pop_i32_x_037_pop26_kernel_2mm0_i_llvm_fpga_pop_i32_x_037_pop26_kernel_2mm20_mux_x_s = redist42_i_llvm_fpga_forked_kernel_2mm_b6_forked_kernel_2mm3_out_buffer_out_25_q;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_llvm_fpga_pop_i32_x_037_pop26_kernel_2mm0_i_llvm_fpga_pop_i32_x_037_pop26_kernel_2mm20_mux_x_s)
                1'b0 : i_llvm_fpga_pop_i32_x_037_pop26_kernel_2mm0_i_llvm_fpga_pop_i32_x_037_pop26_kernel_2mm20_mux_x_q <= i_llvm_fpga_push_i32_x_037_push26_kernel_2mm0_i_llvm_fpga_push_i32_x_037_push26_kernel_2mm1_x_o_data;
                1'b1 : i_llvm_fpga_pop_i32_x_037_pop26_kernel_2mm0_i_llvm_fpga_pop_i32_x_037_pop26_kernel_2mm20_mux_x_q <= redist12_sync_together106_aunroll_x_in_c0_eni10_4_tpl_25_outputreg0_q;
                default : i_llvm_fpga_pop_i32_x_037_pop26_kernel_2mm0_i_llvm_fpga_pop_i32_x_037_pop26_kernel_2mm20_mux_x_q <= 32'b0;
            endcase
        end
    end

    // i_mul24_kernel_2mm19_bs3_merged_bit_select(BITSELECT,387)@18
    assign i_mul24_kernel_2mm19_bs3_merged_bit_select_b = i_llvm_fpga_mem_unnamed_kernel_2mm10_kernel_2mm18_out_o_readdata[31:18];
    assign i_mul24_kernel_2mm19_bs3_merged_bit_select_c = i_llvm_fpga_mem_unnamed_kernel_2mm10_kernel_2mm18_out_o_readdata[17:0];

    // valid_fanout_reg8(REG,212)@9 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist22_sync_together106_aunroll_x_in_i_valid_9_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_alpha4114_kernel_2mm14(BLACKBOX,80)@10
    kernel_2mm_i_llvm_fpga_ffwd_dest_i32_alpha4114_0 thei_llvm_fpga_ffwd_dest_i32_alpha4114_kernel_2mm14 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i32_alpha4114_kernel_2mm14_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul_kernel_2mm15_bs3_merged_bit_select(BITSELECT,386)@10
    assign i_mul_kernel_2mm15_bs3_merged_bit_select_b = i_llvm_fpga_ffwd_dest_i32_alpha4114_kernel_2mm14_out_dest_data_out_0_0[31:18];
    assign i_mul_kernel_2mm15_bs3_merged_bit_select_c = i_llvm_fpga_ffwd_dest_i32_alpha4114_kernel_2mm14_out_dest_data_out_0_0[17:0];

    // i_mul_kernel_2mm15_bs1_merged_bit_select(BITSELECT,388)@10
    assign i_mul_kernel_2mm15_bs1_merged_bit_select_b = i_llvm_fpga_mem_unnamed_kernel_2mm9_kernel_2mm13_out_o_readdata[31:18];
    assign i_mul_kernel_2mm15_bs1_merged_bit_select_c = i_llvm_fpga_mem_unnamed_kernel_2mm9_kernel_2mm13_out_o_readdata[17:0];

    // i_mul_kernel_2mm15_ma5_cma(CHAINMULTADD,383)@10 + 5
    // out q@16
    assign i_mul_kernel_2mm15_ma5_cma_reset = ~ (resetn);
    assign i_mul_kernel_2mm15_ma5_cma_ena0 = 1'b1;
    assign i_mul_kernel_2mm15_ma5_cma_ena1 = i_mul_kernel_2mm15_ma5_cma_ena0;
    assign i_mul_kernel_2mm15_ma5_cma_ena2 = i_mul_kernel_2mm15_ma5_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul_kernel_2mm15_ma5_cma_ah[0] <= i_mul_kernel_2mm15_bs1_merged_bit_select_b;
            i_mul_kernel_2mm15_ma5_cma_ah[1] <= i_mul_kernel_2mm15_bs3_merged_bit_select_b;
            i_mul_kernel_2mm15_ma5_cma_ch[0] <= i_mul_kernel_2mm15_bs3_merged_bit_select_c;
            i_mul_kernel_2mm15_ma5_cma_ch[1] <= i_mul_kernel_2mm15_bs1_merged_bit_select_c;
        end
    end

    assign i_mul_kernel_2mm15_ma5_cma_a0 = i_mul_kernel_2mm15_ma5_cma_ah[0];
    assign i_mul_kernel_2mm15_ma5_cma_c0 = i_mul_kernel_2mm15_ma5_cma_ch[0];
    assign i_mul_kernel_2mm15_ma5_cma_a1 = i_mul_kernel_2mm15_ma5_cma_ah[1];
    assign i_mul_kernel_2mm15_ma5_cma_c1 = i_mul_kernel_2mm15_ma5_cma_ch[1];
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
    ) i_mul_kernel_2mm15_ma5_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_kernel_2mm15_ma5_cma_ena2, i_mul_kernel_2mm15_ma5_cma_ena1, i_mul_kernel_2mm15_ma5_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul_kernel_2mm15_ma5_cma_a1),
        .by(i_mul_kernel_2mm15_ma5_cma_a0),
        .ax(i_mul_kernel_2mm15_ma5_cma_c1),
        .bx(i_mul_kernel_2mm15_ma5_cma_c0),
        .resulta(i_mul_kernel_2mm15_ma5_cma_s0),
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
    i_mul_kernel_2mm15_ma5_cma_delay ( .xin(i_mul_kernel_2mm15_ma5_cma_s0), .xout(i_mul_kernel_2mm15_ma5_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_kernel_2mm15_ma5_cma_q = $unsigned(i_mul_kernel_2mm15_ma5_cma_qq[32:0]);

    // redist2_i_mul_kernel_2mm15_ma5_cma_q_1(DELAY,393)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_i_mul_kernel_2mm15_ma5_cma_q_1_q <= $unsigned(i_mul_kernel_2mm15_ma5_cma_q);
        end
    end

    // i_mul_kernel_2mm15_sums_align_1(BITSHIFT,283)@17
    assign i_mul_kernel_2mm15_sums_align_1_qint = { redist2_i_mul_kernel_2mm15_ma5_cma_q_1_q, 18'b000000000000000000 };
    assign i_mul_kernel_2mm15_sums_align_1_q = i_mul_kernel_2mm15_sums_align_1_qint[50:0];

    // i_mul_kernel_2mm15_bjB4(BITJOIN,273)@10
    assign i_mul_kernel_2mm15_bjB4_q = {GND_q, i_mul_kernel_2mm15_bs3_merged_bit_select_b};

    // i_mul_kernel_2mm15_bjA2(BITJOIN,271)@10
    assign i_mul_kernel_2mm15_bjA2_q = {GND_q, i_mul_kernel_2mm15_bs1_merged_bit_select_b};

    // i_mul_kernel_2mm15_im0_cma(CHAINMULTADD,380)@10 + 5
    // out q@16
    assign i_mul_kernel_2mm15_im0_cma_reset = ~ (resetn);
    assign i_mul_kernel_2mm15_im0_cma_ena0 = 1'b1;
    assign i_mul_kernel_2mm15_im0_cma_ena1 = i_mul_kernel_2mm15_im0_cma_ena0;
    assign i_mul_kernel_2mm15_im0_cma_ena2 = i_mul_kernel_2mm15_im0_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul_kernel_2mm15_im0_cma_ah[0] <= i_mul_kernel_2mm15_bjA2_q;
            i_mul_kernel_2mm15_im0_cma_ch[0] <= i_mul_kernel_2mm15_bjB4_q;
        end
    end

    assign i_mul_kernel_2mm15_im0_cma_a0 = $unsigned(i_mul_kernel_2mm15_im0_cma_ah[0]);
    assign i_mul_kernel_2mm15_im0_cma_c0 = $unsigned(i_mul_kernel_2mm15_im0_cma_ch[0]);
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
    ) i_mul_kernel_2mm15_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_kernel_2mm15_im0_cma_ena2, i_mul_kernel_2mm15_im0_cma_ena1, i_mul_kernel_2mm15_im0_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul_kernel_2mm15_im0_cma_a0),
        .ax(i_mul_kernel_2mm15_im0_cma_c0),
        .resulta(i_mul_kernel_2mm15_im0_cma_s0),
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
    i_mul_kernel_2mm15_im0_cma_delay ( .xin(i_mul_kernel_2mm15_im0_cma_s0), .xout(i_mul_kernel_2mm15_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_kernel_2mm15_im0_cma_q = $unsigned(i_mul_kernel_2mm15_im0_cma_qq[29:0]);

    // redist5_i_mul_kernel_2mm15_im0_cma_q_1(DELAY,396)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_i_mul_kernel_2mm15_im0_cma_q_1_q <= $unsigned(i_mul_kernel_2mm15_im0_cma_q);
        end
    end

    // i_mul_kernel_2mm15_im10_cma(CHAINMULTADD,381)@10 + 5
    // out q@16
    assign i_mul_kernel_2mm15_im10_cma_reset = ~ (resetn);
    assign i_mul_kernel_2mm15_im10_cma_ena0 = 1'b1;
    assign i_mul_kernel_2mm15_im10_cma_ena1 = i_mul_kernel_2mm15_im10_cma_ena0;
    assign i_mul_kernel_2mm15_im10_cma_ena2 = i_mul_kernel_2mm15_im10_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul_kernel_2mm15_im10_cma_ah[0] <= i_mul_kernel_2mm15_bs1_merged_bit_select_c;
            i_mul_kernel_2mm15_im10_cma_ch[0] <= i_mul_kernel_2mm15_bs3_merged_bit_select_c;
        end
    end

    assign i_mul_kernel_2mm15_im10_cma_a0 = i_mul_kernel_2mm15_im10_cma_ah[0];
    assign i_mul_kernel_2mm15_im10_cma_c0 = i_mul_kernel_2mm15_im10_cma_ch[0];
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
    ) i_mul_kernel_2mm15_im10_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_kernel_2mm15_im10_cma_ena2, i_mul_kernel_2mm15_im10_cma_ena1, i_mul_kernel_2mm15_im10_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul_kernel_2mm15_im10_cma_a0),
        .ax(i_mul_kernel_2mm15_im10_cma_c0),
        .resulta(i_mul_kernel_2mm15_im10_cma_s0),
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
    i_mul_kernel_2mm15_im10_cma_delay ( .xin(i_mul_kernel_2mm15_im10_cma_s0), .xout(i_mul_kernel_2mm15_im10_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_kernel_2mm15_im10_cma_q = $unsigned(i_mul_kernel_2mm15_im10_cma_qq[35:0]);

    // redist4_i_mul_kernel_2mm15_im10_cma_q_1(DELAY,395)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_i_mul_kernel_2mm15_im10_cma_q_1_q <= $unsigned(i_mul_kernel_2mm15_im10_cma_q);
        end
    end

    // i_mul_kernel_2mm15_sums_join_0(BITJOIN,282)@17
    assign i_mul_kernel_2mm15_sums_join_0_q = {redist5_i_mul_kernel_2mm15_im0_cma_q_1_q, redist4_i_mul_kernel_2mm15_im10_cma_q_1_q};

    // i_mul_kernel_2mm15_sums_result_add_0_0(ADD,285)@17
    assign i_mul_kernel_2mm15_sums_result_add_0_0_a = {1'b0, i_mul_kernel_2mm15_sums_join_0_q};
    assign i_mul_kernel_2mm15_sums_result_add_0_0_b = {16'b0000000000000000, i_mul_kernel_2mm15_sums_align_1_q};
    assign i_mul_kernel_2mm15_sums_result_add_0_0_o = $unsigned(i_mul_kernel_2mm15_sums_result_add_0_0_a) + $unsigned(i_mul_kernel_2mm15_sums_result_add_0_0_b);
    assign i_mul_kernel_2mm15_sums_result_add_0_0_q = i_mul_kernel_2mm15_sums_result_add_0_0_o[66:0];

    // bgTrunc_i_mul_kernel_2mm15_sel_x(BITSELECT,98)@17
    assign bgTrunc_i_mul_kernel_2mm15_sel_x_in = i_mul_kernel_2mm15_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul_kernel_2mm15_sel_x_b = bgTrunc_i_mul_kernel_2mm15_sel_x_in[31:0];

    // redist38_bgTrunc_i_mul_kernel_2mm15_sel_x_b_1(DELAY,429)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist38_bgTrunc_i_mul_kernel_2mm15_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul_kernel_2mm15_sel_x_b);
        end
    end

    // i_mul24_kernel_2mm19_bs1_merged_bit_select(BITSELECT,389)@18
    assign i_mul24_kernel_2mm19_bs1_merged_bit_select_b = redist38_bgTrunc_i_mul_kernel_2mm15_sel_x_b_1_q[31:18];
    assign i_mul24_kernel_2mm19_bs1_merged_bit_select_c = redist38_bgTrunc_i_mul_kernel_2mm15_sel_x_b_1_q[17:0];

    // i_mul24_kernel_2mm19_ma5_cma(CHAINMULTADD,382)@18 + 5
    // out q@24
    assign i_mul24_kernel_2mm19_ma5_cma_reset = ~ (resetn);
    assign i_mul24_kernel_2mm19_ma5_cma_ena0 = 1'b1;
    assign i_mul24_kernel_2mm19_ma5_cma_ena1 = i_mul24_kernel_2mm19_ma5_cma_ena0;
    assign i_mul24_kernel_2mm19_ma5_cma_ena2 = i_mul24_kernel_2mm19_ma5_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul24_kernel_2mm19_ma5_cma_ah[0] <= i_mul24_kernel_2mm19_bs1_merged_bit_select_b;
            i_mul24_kernel_2mm19_ma5_cma_ah[1] <= i_mul24_kernel_2mm19_bs3_merged_bit_select_b;
            i_mul24_kernel_2mm19_ma5_cma_ch[0] <= i_mul24_kernel_2mm19_bs3_merged_bit_select_c;
            i_mul24_kernel_2mm19_ma5_cma_ch[1] <= i_mul24_kernel_2mm19_bs1_merged_bit_select_c;
        end
    end

    assign i_mul24_kernel_2mm19_ma5_cma_a0 = i_mul24_kernel_2mm19_ma5_cma_ah[0];
    assign i_mul24_kernel_2mm19_ma5_cma_c0 = i_mul24_kernel_2mm19_ma5_cma_ch[0];
    assign i_mul24_kernel_2mm19_ma5_cma_a1 = i_mul24_kernel_2mm19_ma5_cma_ah[1];
    assign i_mul24_kernel_2mm19_ma5_cma_c1 = i_mul24_kernel_2mm19_ma5_cma_ch[1];
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
    ) i_mul24_kernel_2mm19_ma5_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul24_kernel_2mm19_ma5_cma_ena2, i_mul24_kernel_2mm19_ma5_cma_ena1, i_mul24_kernel_2mm19_ma5_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul24_kernel_2mm19_ma5_cma_a1),
        .by(i_mul24_kernel_2mm19_ma5_cma_a0),
        .ax(i_mul24_kernel_2mm19_ma5_cma_c1),
        .bx(i_mul24_kernel_2mm19_ma5_cma_c0),
        .resulta(i_mul24_kernel_2mm19_ma5_cma_s0),
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
    i_mul24_kernel_2mm19_ma5_cma_delay ( .xin(i_mul24_kernel_2mm19_ma5_cma_s0), .xout(i_mul24_kernel_2mm19_ma5_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul24_kernel_2mm19_ma5_cma_q = $unsigned(i_mul24_kernel_2mm19_ma5_cma_qq[32:0]);

    // redist3_i_mul24_kernel_2mm19_ma5_cma_q_1(DELAY,394)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_i_mul24_kernel_2mm19_ma5_cma_q_1_q <= $unsigned(i_mul24_kernel_2mm19_ma5_cma_q);
        end
    end

    // i_mul24_kernel_2mm19_sums_align_1(BITSHIFT,266)@25
    assign i_mul24_kernel_2mm19_sums_align_1_qint = { redist3_i_mul24_kernel_2mm19_ma5_cma_q_1_q, 18'b000000000000000000 };
    assign i_mul24_kernel_2mm19_sums_align_1_q = i_mul24_kernel_2mm19_sums_align_1_qint[50:0];

    // i_mul24_kernel_2mm19_bjB4(BITJOIN,256)@18
    assign i_mul24_kernel_2mm19_bjB4_q = {GND_q, i_mul24_kernel_2mm19_bs3_merged_bit_select_b};

    // i_mul24_kernel_2mm19_bjA2(BITJOIN,254)@18
    assign i_mul24_kernel_2mm19_bjA2_q = {GND_q, i_mul24_kernel_2mm19_bs1_merged_bit_select_b};

    // i_mul24_kernel_2mm19_im0_cma(CHAINMULTADD,378)@18 + 5
    // out q@24
    assign i_mul24_kernel_2mm19_im0_cma_reset = ~ (resetn);
    assign i_mul24_kernel_2mm19_im0_cma_ena0 = 1'b1;
    assign i_mul24_kernel_2mm19_im0_cma_ena1 = i_mul24_kernel_2mm19_im0_cma_ena0;
    assign i_mul24_kernel_2mm19_im0_cma_ena2 = i_mul24_kernel_2mm19_im0_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul24_kernel_2mm19_im0_cma_ah[0] <= i_mul24_kernel_2mm19_bjA2_q;
            i_mul24_kernel_2mm19_im0_cma_ch[0] <= i_mul24_kernel_2mm19_bjB4_q;
        end
    end

    assign i_mul24_kernel_2mm19_im0_cma_a0 = $unsigned(i_mul24_kernel_2mm19_im0_cma_ah[0]);
    assign i_mul24_kernel_2mm19_im0_cma_c0 = $unsigned(i_mul24_kernel_2mm19_im0_cma_ch[0]);
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
    ) i_mul24_kernel_2mm19_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul24_kernel_2mm19_im0_cma_ena2, i_mul24_kernel_2mm19_im0_cma_ena1, i_mul24_kernel_2mm19_im0_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul24_kernel_2mm19_im0_cma_a0),
        .ax(i_mul24_kernel_2mm19_im0_cma_c0),
        .resulta(i_mul24_kernel_2mm19_im0_cma_s0),
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
    i_mul24_kernel_2mm19_im0_cma_delay ( .xin(i_mul24_kernel_2mm19_im0_cma_s0), .xout(i_mul24_kernel_2mm19_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul24_kernel_2mm19_im0_cma_q = $unsigned(i_mul24_kernel_2mm19_im0_cma_qq[29:0]);

    // redist7_i_mul24_kernel_2mm19_im0_cma_q_1(DELAY,398)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_i_mul24_kernel_2mm19_im0_cma_q_1_q <= $unsigned(i_mul24_kernel_2mm19_im0_cma_q);
        end
    end

    // i_mul24_kernel_2mm19_im10_cma(CHAINMULTADD,379)@18 + 5
    // out q@24
    assign i_mul24_kernel_2mm19_im10_cma_reset = ~ (resetn);
    assign i_mul24_kernel_2mm19_im10_cma_ena0 = 1'b1;
    assign i_mul24_kernel_2mm19_im10_cma_ena1 = i_mul24_kernel_2mm19_im10_cma_ena0;
    assign i_mul24_kernel_2mm19_im10_cma_ena2 = i_mul24_kernel_2mm19_im10_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul24_kernel_2mm19_im10_cma_ah[0] <= i_mul24_kernel_2mm19_bs1_merged_bit_select_c;
            i_mul24_kernel_2mm19_im10_cma_ch[0] <= i_mul24_kernel_2mm19_bs3_merged_bit_select_c;
        end
    end

    assign i_mul24_kernel_2mm19_im10_cma_a0 = i_mul24_kernel_2mm19_im10_cma_ah[0];
    assign i_mul24_kernel_2mm19_im10_cma_c0 = i_mul24_kernel_2mm19_im10_cma_ch[0];
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
    ) i_mul24_kernel_2mm19_im10_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul24_kernel_2mm19_im10_cma_ena2, i_mul24_kernel_2mm19_im10_cma_ena1, i_mul24_kernel_2mm19_im10_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul24_kernel_2mm19_im10_cma_a0),
        .ax(i_mul24_kernel_2mm19_im10_cma_c0),
        .resulta(i_mul24_kernel_2mm19_im10_cma_s0),
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
    i_mul24_kernel_2mm19_im10_cma_delay ( .xin(i_mul24_kernel_2mm19_im10_cma_s0), .xout(i_mul24_kernel_2mm19_im10_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul24_kernel_2mm19_im10_cma_q = $unsigned(i_mul24_kernel_2mm19_im10_cma_qq[35:0]);

    // redist6_i_mul24_kernel_2mm19_im10_cma_q_1(DELAY,397)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_i_mul24_kernel_2mm19_im10_cma_q_1_q <= $unsigned(i_mul24_kernel_2mm19_im10_cma_q);
        end
    end

    // i_mul24_kernel_2mm19_sums_join_0(BITJOIN,265)@25
    assign i_mul24_kernel_2mm19_sums_join_0_q = {redist7_i_mul24_kernel_2mm19_im0_cma_q_1_q, redist6_i_mul24_kernel_2mm19_im10_cma_q_1_q};

    // i_mul24_kernel_2mm19_sums_result_add_0_0(ADD,268)@25
    assign i_mul24_kernel_2mm19_sums_result_add_0_0_a = {1'b0, i_mul24_kernel_2mm19_sums_join_0_q};
    assign i_mul24_kernel_2mm19_sums_result_add_0_0_b = {16'b0000000000000000, i_mul24_kernel_2mm19_sums_align_1_q};
    assign i_mul24_kernel_2mm19_sums_result_add_0_0_o = $unsigned(i_mul24_kernel_2mm19_sums_result_add_0_0_a) + $unsigned(i_mul24_kernel_2mm19_sums_result_add_0_0_b);
    assign i_mul24_kernel_2mm19_sums_result_add_0_0_q = i_mul24_kernel_2mm19_sums_result_add_0_0_o[66:0];

    // bgTrunc_i_mul24_kernel_2mm19_sel_x(BITSELECT,97)@25
    assign bgTrunc_i_mul24_kernel_2mm19_sel_x_in = i_mul24_kernel_2mm19_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul24_kernel_2mm19_sel_x_b = bgTrunc_i_mul24_kernel_2mm19_sel_x_in[31:0];

    // redist39_bgTrunc_i_mul24_kernel_2mm19_sel_x_b_1(DELAY,430)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist39_bgTrunc_i_mul24_kernel_2mm19_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul24_kernel_2mm19_sel_x_b);
        end
    end

    // i_add_kernel_2mm21(ADD,63)@26
    assign i_add_kernel_2mm21_a = {1'b0, redist39_bgTrunc_i_mul24_kernel_2mm19_sel_x_b_1_q};
    assign i_add_kernel_2mm21_b = {1'b0, i_llvm_fpga_pop_i32_x_037_pop26_kernel_2mm0_i_llvm_fpga_pop_i32_x_037_pop26_kernel_2mm20_mux_x_q};
    assign i_add_kernel_2mm21_o = $unsigned(i_add_kernel_2mm21_a) + $unsigned(i_add_kernel_2mm21_b);
    assign i_add_kernel_2mm21_q = i_add_kernel_2mm21_o[32:0];

    // bgTrunc_i_add_kernel_2mm21_sel_x(BITSELECT,94)@26
    assign bgTrunc_i_add_kernel_2mm21_sel_x_b = i_add_kernel_2mm21_q[31:0];

    // redist31_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm11_mux_x_q_22_rdcnt(ADD,463)
    assign redist31_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm11_mux_x_q_22_rdcnt_a = {1'b0, redist31_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm11_mux_x_q_22_wraddr_q};
    assign redist31_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm11_mux_x_q_22_rdcnt_b = {1'b0, redist30_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm0_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm38_mux_x_q_22_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist31_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm11_mux_x_q_22_rdcnt_o <= $unsigned(redist31_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm11_mux_x_q_22_rdcnt_a) + $unsigned(redist31_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm11_mux_x_q_22_rdcnt_b);
        end
    end
    assign redist31_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm11_mux_x_q_22_rdcnt_q = redist31_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm11_mux_x_q_22_rdcnt_o[5:0];

    // redist31_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm11_mux_x_q_22_inputreg0(DELAY,458)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist31_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm11_mux_x_q_22_inputreg0_q <= $unsigned(i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm11_mux_x_q);
        end
    end

    // redist31_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm11_mux_x_q_22_wraddr(COUNTER,461)
    // low=0, high=31, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist31_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm11_mux_x_q_22_wraddr_i <= $unsigned(redist31_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm11_mux_x_q_22_wraddr_i) + $unsigned(5'd1);
        end
    end
    assign redist31_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm11_mux_x_q_22_wraddr_q = redist31_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm11_mux_x_q_22_wraddr_i[4:0];

    // redist31_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm11_mux_x_q_22_mem(DUALMEM,460)
    assign redist31_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm11_mux_x_q_22_mem_ia = $unsigned(redist31_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm11_mux_x_q_22_inputreg0_q);
    assign redist31_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm11_mux_x_q_22_mem_aa = redist31_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm11_mux_x_q_22_wraddr_q;
    assign redist31_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm11_mux_x_q_22_mem_ab = redist31_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm11_mux_x_q_22_rdcnt_q[4:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(5),
        .numwords_a(32),
        .width_b(64),
        .widthad_b(5),
        .numwords_b(32),
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
    ) redist31_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm11_mux_x_q_22_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist31_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm11_mux_x_q_22_mem_aa),
        .data_a(redist31_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm11_mux_x_q_22_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist31_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm11_mux_x_q_22_mem_ab),
        .q_b(redist31_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm11_mux_x_q_22_mem_iq),
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
    assign redist31_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm11_mux_x_q_22_mem_q = redist31_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm11_mux_x_q_22_mem_iq[63:0];

    // redist31_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm11_mux_x_q_22_outputreg0(DELAY,459)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist31_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm11_mux_x_q_22_outputreg0_q <= $unsigned(redist31_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm11_mux_x_q_22_mem_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,202)@26
    assign out_c0_exi9131_0_tpl = GND_q;
    assign out_c0_exi9131_1_tpl = redist31_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom52_pop29_kernel_2mm11_mux_x_q_22_outputreg0_q;
    assign out_c0_exi9131_2_tpl = bgTrunc_i_add_kernel_2mm21_sel_x_b;
    assign out_c0_exi9131_3_tpl = redist8_i_exitcond_kernel_2mm24_cmp_nsign_q_22_q;
    assign out_c0_exi9131_4_tpl = i_notcmp21_kernel_2mm30_q;
    assign out_c0_exi9131_5_tpl = i_llvm_fpga_pop_i1_notcmp3142_pop27_kernel_2mm0_i_llvm_fpga_pop_i1_notcmp3142_pop27_kernel_2mm34_mux_x_q;
    assign out_c0_exi9131_6_tpl = redist30_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm0_i_llvm_fpga_pop_p64i32_arrayidx11154_pop31_kernel_2mm38_mux_x_q_22_outputreg0_q;
    assign out_c0_exi9131_7_tpl = i_llvm_fpga_pop_i1_notcmp2655_pop32_kernel_2mm0_i_llvm_fpga_pop_i1_notcmp2655_pop32_kernel_2mm40_mux_x_q;
    assign out_c0_exi9131_8_tpl = redist16_sync_together106_aunroll_x_in_c0_eni10_9_tpl_26_q;
    assign out_c0_exi9131_9_tpl = redist17_sync_together106_aunroll_x_in_c0_eni10_10_tpl_26_outputreg0_q;
    assign out_kernel_2mm_B6_current_iter_isspec = redist45_i_kernel_2mm_b6_current_iter_isspec_kernel_2mm5_q_20_q;
    assign out_o_valid = redist9_valid_fanout_reg0_q_1_q;

endmodule
