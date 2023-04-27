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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body36_covariances_c0_enter38339_covariance0
// Created for function/kernel covariance
// SystemVerilog created on Thu Apr 27 14:28:36 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_i_sfc_logic_s_c0_in_for_body30000ter38339_covariance0 (
    input wire [31:0] in_unnamed_covariance6_covariance_avm_readdata,
    input wire [0:0] in_unnamed_covariance6_covariance_avm_writeack,
    input wire [0:0] in_unnamed_covariance6_covariance_avm_waitrequest,
    input wire [0:0] in_unnamed_covariance6_covariance_avm_readdatavalid,
    output wire [31:0] out_unnamed_covariance6_covariance_avm_address,
    output wire [0:0] out_unnamed_covariance6_covariance_avm_enable,
    output wire [0:0] out_unnamed_covariance6_covariance_avm_read,
    output wire [0:0] out_unnamed_covariance6_covariance_avm_write,
    output wire [31:0] out_unnamed_covariance6_covariance_avm_writedata,
    output wire [3:0] out_unnamed_covariance6_covariance_avm_byteenable,
    output wire [0:0] out_unnamed_covariance6_covariance_avm_burstcount,
    input wire [0:0] in_flush,
    output wire [0:0] out_exiting_valid_out,
    input wire [31:0] in_unnamed_covariance7_covariance_avm_readdata,
    input wire [0:0] in_unnamed_covariance7_covariance_avm_writeack,
    input wire [0:0] in_unnamed_covariance7_covariance_avm_waitrequest,
    input wire [0:0] in_unnamed_covariance7_covariance_avm_readdatavalid,
    output wire [31:0] out_unnamed_covariance7_covariance_avm_address,
    output wire [0:0] out_unnamed_covariance7_covariance_avm_enable,
    output wire [0:0] out_unnamed_covariance7_covariance_avm_read,
    output wire [0:0] out_unnamed_covariance7_covariance_avm_write,
    output wire [31:0] out_unnamed_covariance7_covariance_avm_writedata,
    output wire [3:0] out_unnamed_covariance7_covariance_avm_byteenable,
    output wire [0:0] out_unnamed_covariance7_covariance_avm_burstcount,
    output wire [0:0] out_pipeline_dummy_out,
    output wire [0:0] out_pipeline_forked_out,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_c0_exi19_0_tpl,
    output wire [63:0] out_c0_exi19_1_tpl,
    output wire [63:0] out_c0_exi19_2_tpl,
    output wire [0:0] out_c0_exi19_3_tpl,
    output wire [0:0] out_c0_exi19_4_tpl,
    output wire [31:0] out_c0_exi19_5_tpl,
    output wire [0:0] out_c0_exi19_6_tpl,
    output wire [0:0] out_c0_exi19_7_tpl,
    output wire [31:0] out_c0_exi19_8_tpl,
    output wire [31:0] out_c0_exi19_9_tpl,
    output wire [0:0] out_c0_exi19_10_tpl,
    output wire [0:0] out_c0_exi19_11_tpl,
    output wire [0:0] out_c0_exi19_12_tpl,
    output wire [31:0] out_c0_exi19_13_tpl,
    output wire [31:0] out_c0_exi19_14_tpl,
    output wire [32:0] out_c0_exi19_15_tpl,
    output wire [0:0] out_c0_exi19_16_tpl,
    output wire [31:0] out_c0_exi19_17_tpl,
    output wire [31:0] out_c0_exi19_18_tpl,
    output wire [31:0] out_c0_exi19_19_tpl,
    output wire [0:0] out_covariance_B12_current_iter_isspec,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_profile_loop_o_valid,
    input wire [0:0] in_buffer_in,
    input wire [0:0] in_c0_eni15_0_tpl,
    input wire [31:0] in_c0_eni15_1_tpl,
    input wire [0:0] in_c0_eni15_2_tpl,
    input wire [31:0] in_c0_eni15_3_tpl,
    input wire [31:0] in_c0_eni15_4_tpl,
    input wire [31:0] in_c0_eni15_5_tpl,
    input wire [0:0] in_c0_eni15_6_tpl,
    input wire [0:0] in_c0_eni15_7_tpl,
    input wire [0:0] in_c0_eni15_8_tpl,
    input wire [31:0] in_c0_eni15_9_tpl,
    input wire [31:0] in_c0_eni15_10_tpl,
    input wire [32:0] in_c0_eni15_11_tpl,
    input wire [0:0] in_c0_eni15_12_tpl,
    input wire [31:0] in_c0_eni15_13_tpl,
    input wire [31:0] in_c0_eni15_14_tpl,
    input wire [31:0] in_c0_eni15_15_tpl,
    input wire [0:0] in_dummy_in,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_covariance_data_local_pmem_q;
    wire [31:0] c_i32_076_q;
    wire [31:0] c_i32_177_q;
    wire [5:0] c_i6_180_q;
    wire [5:0] c_i6_3078_q;
    wire [32:0] i_add46_covariance23_a;
    wire [32:0] i_add46_covariance23_b;
    logic [32:0] i_add46_covariance23_o;
    wire [32:0] i_add46_covariance23_q;
    wire [1:0] i_arrayidx403_covariance15_vt_const_1_q;
    wire [63:0] i_arrayidx403_covariance15_vt_join_q;
    wire [61:0] i_arrayidx403_covariance15_vt_select_63_b;
    wire [63:0] i_arrayidx444_covariance18_vt_join_q;
    wire [61:0] i_arrayidx444_covariance18_vt_select_63_b;
    wire [0:0] i_covariance_b12_current_iter_isspec_covariance5_q;
    wire [0:0] i_covariance_b12_next_iter_isreal_covariance7_q;
    wire [6:0] i_fpga_indvars_iv_next12_covariance34_a;
    wire [6:0] i_fpga_indvars_iv_next12_covariance34_b;
    logic [6:0] i_fpga_indvars_iv_next12_covariance34_o;
    wire [6:0] i_fpga_indvars_iv_next12_covariance34_q;
    wire [63:0] i_idxprom37_covariance14_vt_join_q;
    wire [31:0] i_idxprom37_covariance14_vt_select_31_b;
    wire [63:0] i_idxprom39_covariance12_vt_join_q;
    wire [31:0] i_idxprom39_covariance12_vt_select_31_b;
    wire [63:0] i_idxprom43_covariance10_vt_join_q;
    wire [31:0] i_idxprom43_covariance10_vt_select_31_b;
    wire [32:0] i_inc48_covariance24_a;
    wire [32:0] i_inc48_covariance24_b;
    logic [32:0] i_inc48_covariance24_o;
    wire [32:0] i_inc48_covariance24_q;
    wire [0:0] i_llvm_fpga_dummy_thread_covariance_b12_dummy_covariance2_out_dummy_out;
    wire [0:0] i_llvm_fpga_forked_covariance_b12_forked_covariance3_out_buffer_out;
    wire [31:0] i_llvm_fpga_mem_unnamed_covariance6_covariance16_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_covariance6_covariance16_out_unnamed_covariance6_covariance_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance6_covariance16_out_unnamed_covariance6_covariance_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_covariance6_covariance16_out_unnamed_covariance6_covariance_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance6_covariance16_out_unnamed_covariance6_covariance_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance6_covariance16_out_unnamed_covariance6_covariance_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance6_covariance16_out_unnamed_covariance6_covariance_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_covariance6_covariance16_out_unnamed_covariance6_covariance_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_covariance7_covariance19_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_covariance7_covariance19_out_unnamed_covariance7_covariance_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance7_covariance19_out_unnamed_covariance7_covariance_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_covariance7_covariance19_out_unnamed_covariance7_covariance_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance7_covariance19_out_unnamed_covariance7_covariance_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance7_covariance19_out_unnamed_covariance7_covariance_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance7_covariance19_out_unnamed_covariance7_covariance_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_covariance7_covariance19_out_unnamed_covariance7_covariance_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_covariance6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_covariance6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_covariance6_out_pipeline_dummy_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_covariance6_out_pipeline_forked_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_covariance6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_covariance33_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_covariance33_out_feedback_valid_out_2;
    wire [0:0] i_notcmp_covariance32_q;
    wire [31:0] bgTrunc_i_add46_covariance23_sel_x_b;
    wire [5:0] bgTrunc_i_fpga_indvars_iv_next12_covariance34_sel_x_b;
    wire [31:0] bgTrunc_i_inc48_covariance24_sel_x_b;
    wire [63:0] bgTrunc_i_mul45_covariance21_sel_x_in;
    wire [31:0] bgTrunc_i_mul45_covariance21_sel_x_b;
    wire [12:0] i_arrayidx403_covariance0_add_x_a;
    wire [12:0] i_arrayidx403_covariance0_add_x_b;
    logic [12:0] i_arrayidx403_covariance0_add_x_o;
    wire [12:0] i_arrayidx403_covariance0_add_x_q;
    wire [63:0] i_arrayidx403_covariance0_append_upper_bits_x_q;
    wire [6:0] i_arrayidx403_covariance0_c_i7_01_x_q;
    wire [4:0] i_arrayidx403_covariance0_narrow_x_b;
    wire [11:0] i_arrayidx403_covariance0_shift_join_x_q;
    wire [12:0] i_arrayidx403_covariance0_dupName_0_add_x_a;
    wire [12:0] i_arrayidx403_covariance0_dupName_0_add_x_b;
    logic [12:0] i_arrayidx403_covariance0_dupName_0_add_x_o;
    wire [12:0] i_arrayidx403_covariance0_dupName_0_add_x_q;
    wire [9:0] i_arrayidx403_covariance0_dupName_0_narrow_x_b;
    wire [11:0] i_arrayidx403_covariance0_dupName_0_shift_join_x_q;
    wire [11:0] i_arrayidx403_covariance0_dupName_0_trunc_sel_x_b;
    wire [11:0] i_arrayidx403_covariance0_dupName_2_trunc_sel_x_b;
    wire [11:0] i_arrayidx403_covariance0_dupName_3_trunc_sel_x_b;
    wire [11:0] i_arrayidx403_covariance0_dupName_5_trunc_sel_x_b;
    wire [63:0] i_arrayidx444_covariance0_append_upper_bits_x_q;
    wire [12:0] i_arrayidx444_covariance0_dupName_0_add_x_a;
    wire [12:0] i_arrayidx444_covariance0_dupName_0_add_x_b;
    logic [12:0] i_arrayidx444_covariance0_dupName_0_add_x_o;
    wire [12:0] i_arrayidx444_covariance0_dupName_0_add_x_q;
    wire [9:0] i_arrayidx444_covariance0_dupName_0_narrow_x_b;
    wire [11:0] i_arrayidx444_covariance0_dupName_0_shift_join_x_q;
    wire [11:0] i_arrayidx444_covariance0_dupName_3_trunc_sel_x_b;
    wire [11:0] i_arrayidx444_covariance0_dupName_5_trunc_sel_x_b;
    wire [63:0] i_idxprom37_covariance14_sel_x_b;
    wire [63:0] i_idxprom39_covariance12_sel_x_b;
    wire [63:0] i_idxprom43_covariance10_sel_x_b;
    wire [0:0] i_llvm_fpga_pop_coalesce_i1_covariance_b12_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b12_current_iter_isreal_covariance4_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_coalesce_i1_covariance_b12_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b12_current_iter_isreal_covariance4_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_forked2386_pop66_covariance0_i_llvm_fpga_pop_i1_forked2386_pop66_covariance42_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_forked2386_pop66_covariance0_i_llvm_fpga_pop_i1_forked2386_pop66_covariance42_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2287_pop67_covariance0_i_llvm_fpga_pop_i1_notcmp2287_pop67_covariance44_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_notcmp2287_pop67_covariance0_i_llvm_fpga_pop_i1_notcmp2287_pop67_covariance44_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2782_pop64_covariance0_i_llvm_fpga_pop_i1_notcmp2782_pop64_covariance40_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_notcmp2782_pop64_covariance0_i_llvm_fpga_pop_i1_notcmp2782_pop64_covariance40_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_c_030_pop61_covariance0_i_llvm_fpga_pop_i32_c_030_pop61_covariance22_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_c_030_pop61_covariance0_i_llvm_fpga_pop_i32_c_030_pop61_covariance22_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_i24_034_pop2984_pop65_covariance0_i_llvm_fpga_pop_i32_i24_034_pop2984_pop65_covariance11_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_i24_034_pop2984_pop65_covariance0_i_llvm_fpga_pop_i32_i24_034_pop2984_pop65_covariance11_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_j28_033_pop5488_pop68_covariance0_i_llvm_fpga_pop_i32_j28_033_pop5488_pop68_covariance9_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_j28_033_pop5488_pop68_covariance0_i_llvm_fpga_pop_i32_j28_033_pop5488_pop68_covariance9_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_k_031_pop60_covariance0_i_llvm_fpga_pop_i32_k_031_pop60_covariance13_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_k_031_pop60_covariance0_i_llvm_fpga_pop_i32_k_031_pop60_covariance13_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance0_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance36_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance0_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance36_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance38_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance38_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv11_pop59_covariance0_i_llvm_fpga_pop_i6_fpga_indvars_iv11_pop59_covariance25_mux_x_s;
    reg [5:0] i_llvm_fpga_pop_i6_fpga_indvars_iv11_pop59_covariance0_i_llvm_fpga_pop_i6_fpga_indvars_iv11_pop59_covariance25_mux_x_q;
    wire [7:0] i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance1_x_i_valid;
    wire i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance1_x_i_stall;
    wire i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_inv_pred_x_q;
    wire [0:0] i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_forked2386_push66_covariance0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_forked2386_push66_covariance0_i_llvm_fpga_push_i1_forked2386_push66_covariance1_x_i_valid;
    wire i_llvm_fpga_push_i1_forked2386_push66_covariance0_i_llvm_fpga_push_i1_forked2386_push66_covariance1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_forked2386_push66_covariance0_i_llvm_fpga_push_i1_forked2386_push66_covariance1_x_i_stall;
    wire i_llvm_fpga_push_i1_forked2386_push66_covariance0_i_llvm_fpga_push_i1_forked2386_push66_covariance1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_forked2386_push66_covariance0_i_llvm_fpga_push_i1_forked2386_push66_covariance1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_forked2386_push66_covariance0_i_llvm_fpga_push_i1_forked2386_push66_covariance1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_forked2386_push66_covariance0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_notcmp2287_push67_covariance0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2287_push67_covariance0_i_llvm_fpga_push_i1_notcmp2287_push67_covariance1_x_i_valid;
    wire i_llvm_fpga_push_i1_notcmp2287_push67_covariance0_i_llvm_fpga_push_i1_notcmp2287_push67_covariance1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2287_push67_covariance0_i_llvm_fpga_push_i1_notcmp2287_push67_covariance1_x_i_stall;
    wire i_llvm_fpga_push_i1_notcmp2287_push67_covariance0_i_llvm_fpga_push_i1_notcmp2287_push67_covariance1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_notcmp2287_push67_covariance0_i_llvm_fpga_push_i1_notcmp2287_push67_covariance1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_notcmp2287_push67_covariance0_i_llvm_fpga_push_i1_notcmp2287_push67_covariance1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2287_push67_covariance0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_notcmp2782_push64_covariance0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2782_push64_covariance0_i_llvm_fpga_push_i1_notcmp2782_push64_covariance1_x_i_valid;
    wire i_llvm_fpga_push_i1_notcmp2782_push64_covariance0_i_llvm_fpga_push_i1_notcmp2782_push64_covariance1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2782_push64_covariance0_i_llvm_fpga_push_i1_notcmp2782_push64_covariance1_x_i_stall;
    wire i_llvm_fpga_push_i1_notcmp2782_push64_covariance0_i_llvm_fpga_push_i1_notcmp2782_push64_covariance1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_notcmp2782_push64_covariance0_i_llvm_fpga_push_i1_notcmp2782_push64_covariance1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_notcmp2782_push64_covariance0_i_llvm_fpga_push_i1_notcmp2782_push64_covariance1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2782_push64_covariance0_adapt_scalar_trunc4_sel_x_b;
    wire [0:0] i_llvm_fpga_push_i32_c_030_push61_covariance0_i_llvm_fpga_push_i32_c_030_push61_covariance1_x_i_valid;
    wire i_llvm_fpga_push_i32_c_030_push61_covariance0_i_llvm_fpga_push_i32_c_030_push61_covariance1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_c_030_push61_covariance0_i_llvm_fpga_push_i32_c_030_push61_covariance1_x_i_stall;
    wire i_llvm_fpga_push_i32_c_030_push61_covariance0_i_llvm_fpga_push_i32_c_030_push61_covariance1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_c_030_push61_covariance0_i_llvm_fpga_push_i32_c_030_push61_covariance1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_c_030_push61_covariance0_i_llvm_fpga_push_i32_c_030_push61_covariance1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i32_i24_034_pop2984_push65_covariance0_i_llvm_fpga_push_i32_i24_034_pop2984_push65_covariance1_x_i_valid;
    wire i_llvm_fpga_push_i32_i24_034_pop2984_push65_covariance0_i_llvm_fpga_push_i32_i24_034_pop2984_push65_covariance1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_i24_034_pop2984_push65_covariance0_i_llvm_fpga_push_i32_i24_034_pop2984_push65_covariance1_x_i_stall;
    wire i_llvm_fpga_push_i32_i24_034_pop2984_push65_covariance0_i_llvm_fpga_push_i32_i24_034_pop2984_push65_covariance1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_i24_034_pop2984_push65_covariance0_i_llvm_fpga_push_i32_i24_034_pop2984_push65_covariance1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_i24_034_pop2984_push65_covariance0_i_llvm_fpga_push_i32_i24_034_pop2984_push65_covariance1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i32_j28_033_pop5488_push68_covariance0_i_llvm_fpga_push_i32_j28_033_pop5488_push68_covariance1_x_i_valid;
    wire i_llvm_fpga_push_i32_j28_033_pop5488_push68_covariance0_i_llvm_fpga_push_i32_j28_033_pop5488_push68_covariance1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_j28_033_pop5488_push68_covariance0_i_llvm_fpga_push_i32_j28_033_pop5488_push68_covariance1_x_i_stall;
    wire i_llvm_fpga_push_i32_j28_033_pop5488_push68_covariance0_i_llvm_fpga_push_i32_j28_033_pop5488_push68_covariance1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_j28_033_pop5488_push68_covariance0_i_llvm_fpga_push_i32_j28_033_pop5488_push68_covariance1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_j28_033_pop5488_push68_covariance0_i_llvm_fpga_push_i32_j28_033_pop5488_push68_covariance1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i32_k_031_push60_covariance0_i_llvm_fpga_push_i32_k_031_push60_covariance1_x_i_valid;
    wire i_llvm_fpga_push_i32_k_031_push60_covariance0_i_llvm_fpga_push_i32_k_031_push60_covariance1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_k_031_push60_covariance0_i_llvm_fpga_push_i32_k_031_push60_covariance1_x_i_stall;
    wire i_llvm_fpga_push_i32_k_031_push60_covariance0_i_llvm_fpga_push_i32_k_031_push60_covariance1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_k_031_push60_covariance0_i_llvm_fpga_push_i32_k_031_push60_covariance1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_k_031_push60_covariance0_i_llvm_fpga_push_i32_k_031_push60_covariance1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i32_lim_ext57_push62_covariance0_i_llvm_fpga_push_i32_lim_ext57_push62_covariance1_x_i_valid;
    wire i_llvm_fpga_push_i32_lim_ext57_push62_covariance0_i_llvm_fpga_push_i32_lim_ext57_push62_covariance1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_lim_ext57_push62_covariance0_i_llvm_fpga_push_i32_lim_ext57_push62_covariance1_x_i_stall;
    wire i_llvm_fpga_push_i32_lim_ext57_push62_covariance0_i_llvm_fpga_push_i32_lim_ext57_push62_covariance1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_lim_ext57_push62_covariance0_i_llvm_fpga_push_i32_lim_ext57_push62_covariance1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_lim_ext57_push62_covariance0_i_llvm_fpga_push_i32_lim_ext57_push62_covariance1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i32_reorder_limiter_enter70_push63_covariance0_i_llvm_fpga_push_i32_reorder_limiter_enter70_push63_covariance1_x_i_valid;
    wire i_llvm_fpga_push_i32_reorder_limiter_enter70_push63_covariance0_i_llvm_fpga_push_i32_reorder_limiter_enter70_push63_covariance1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_reorder_limiter_enter70_push63_covariance0_i_llvm_fpga_push_i32_reorder_limiter_enter70_push63_covariance1_x_i_stall;
    wire i_llvm_fpga_push_i32_reorder_limiter_enter70_push63_covariance0_i_llvm_fpga_push_i32_reorder_limiter_enter70_push63_covariance1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_reorder_limiter_enter70_push63_covariance0_i_llvm_fpga_push_i32_reorder_limiter_enter70_push63_covariance1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_reorder_limiter_enter70_push63_covariance0_i_llvm_fpga_push_i32_reorder_limiter_enter70_push63_covariance1_x_o_data;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv11_push59_covariance0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv11_push59_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv11_push59_covariance1_x_i_valid;
    wire i_llvm_fpga_push_i6_fpga_indvars_iv11_push59_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv11_push59_covariance1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv11_push59_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv11_push59_covariance1_x_i_stall;
    wire i_llvm_fpga_push_i6_fpga_indvars_iv11_push59_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv11_push59_covariance1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv11_push59_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv11_push59_covariance1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv11_push59_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv11_push59_covariance1_x_o_data;
    wire [5:0] i_llvm_fpga_push_i6_fpga_indvars_iv11_push59_covariance0_adapt_scalar_trunc4_sel_x_b;
    wire [0:0] i_toi1_intcast3_covariance20_sel_x_b;
    wire [0:0] i_toi1_intcast_covariance17_sel_x_b;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg8_q;
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
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg27_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg28_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg30_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg31_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg33_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg34_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg36_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg37_q;
    wire [0:0] i_exitcond13_covariance26_cmp_nsign_q;
    wire [13:0] i_mul45_covariance21_bs1_b;
    wire [14:0] i_mul45_covariance21_bjA2_q;
    wire [13:0] i_mul45_covariance21_bs3_b;
    wire [14:0] i_mul45_covariance21_bjB4_q;
    wire [17:0] i_mul45_covariance21_bs6_in;
    wire [17:0] i_mul45_covariance21_bs6_b;
    wire [17:0] i_mul45_covariance21_bs9_in;
    wire [17:0] i_mul45_covariance21_bs9_b;
    wire [65:0] i_mul45_covariance21_sums_join_0_q;
    wire [50:0] i_mul45_covariance21_sums_align_1_q;
    wire [50:0] i_mul45_covariance21_sums_align_1_qint;
    wire [66:0] i_mul45_covariance21_sums_result_add_0_0_a;
    wire [66:0] i_mul45_covariance21_sums_result_add_0_0_b;
    logic [66:0] i_mul45_covariance21_sums_result_add_0_0_o;
    wire [66:0] i_mul45_covariance21_sums_result_add_0_0_q;
    wire i_mul45_covariance21_im0_cma_reset;
    (* preserve_syn_only *) reg signed [14:0] i_mul45_covariance21_im0_cma_ah [0:0];
    (* preserve_syn_only *) reg signed [14:0] i_mul45_covariance21_im0_cma_ch [0:0];
    wire [14:0] i_mul45_covariance21_im0_cma_a0;
    wire [14:0] i_mul45_covariance21_im0_cma_c0;
    wire [29:0] i_mul45_covariance21_im0_cma_s0;
    wire [29:0] i_mul45_covariance21_im0_cma_qq;
    reg [29:0] i_mul45_covariance21_im0_cma_q;
    wire i_mul45_covariance21_im0_cma_ena0;
    wire i_mul45_covariance21_im0_cma_ena1;
    wire i_mul45_covariance21_im0_cma_ena2;
    wire i_mul45_covariance21_im10_cma_reset;
    (* preserve_syn_only *) reg [17:0] i_mul45_covariance21_im10_cma_ah [0:0];
    (* preserve_syn_only *) reg [17:0] i_mul45_covariance21_im10_cma_ch [0:0];
    wire [17:0] i_mul45_covariance21_im10_cma_a0;
    wire [17:0] i_mul45_covariance21_im10_cma_c0;
    wire [35:0] i_mul45_covariance21_im10_cma_s0;
    wire [35:0] i_mul45_covariance21_im10_cma_qq;
    reg [35:0] i_mul45_covariance21_im10_cma_q;
    wire i_mul45_covariance21_im10_cma_ena0;
    wire i_mul45_covariance21_im10_cma_ena1;
    wire i_mul45_covariance21_im10_cma_ena2;
    wire i_mul45_covariance21_ma5_cma_reset;
    (* preserve_syn_only *) reg [13:0] i_mul45_covariance21_ma5_cma_ah [0:1];
    (* preserve_syn_only *) reg [17:0] i_mul45_covariance21_ma5_cma_ch [0:1];
    wire [13:0] i_mul45_covariance21_ma5_cma_a0;
    wire [17:0] i_mul45_covariance21_ma5_cma_c0;
    wire [13:0] i_mul45_covariance21_ma5_cma_a1;
    wire [17:0] i_mul45_covariance21_ma5_cma_c1;
    wire [32:0] i_mul45_covariance21_ma5_cma_s0;
    wire [32:0] i_mul45_covariance21_ma5_cma_qq;
    reg [32:0] i_mul45_covariance21_ma5_cma_q;
    wire i_mul45_covariance21_ma5_cma_ena0;
    wire i_mul45_covariance21_ma5_cma_ena1;
    wire i_mul45_covariance21_ma5_cma_ena2;
    wire [51:0] i_arrayidx403_covariance0_upper_bits_x_merged_bit_select_b;
    wire [11:0] i_arrayidx403_covariance0_upper_bits_x_merged_bit_select_c;
    reg [51:0] redist0_i_arrayidx403_covariance0_upper_bits_x_merged_bit_select_b_1_q;
    reg [32:0] redist1_i_mul45_covariance21_ma5_cma_q_1_q;
    reg [35:0] redist2_i_mul45_covariance21_im10_cma_q_1_q;
    reg [29:0] redist3_i_mul45_covariance21_im0_cma_q_1_q;
    reg [0:0] redist4_i_exitcond13_covariance26_cmp_nsign_q_14_q;
    reg [31:0] redist5_sync_together88_aunroll_x_in_c0_eni15_1_tpl_4_q;
    reg [31:0] redist5_sync_together88_aunroll_x_in_c0_eni15_1_tpl_4_delay_0;
    reg [31:0] redist5_sync_together88_aunroll_x_in_c0_eni15_1_tpl_4_delay_1;
    reg [31:0] redist6_sync_together88_aunroll_x_in_c0_eni15_3_tpl_5_q;
    reg [31:0] redist6_sync_together88_aunroll_x_in_c0_eni15_3_tpl_5_delay_0;
    reg [31:0] redist6_sync_together88_aunroll_x_in_c0_eni15_3_tpl_5_delay_1;
    reg [31:0] redist7_sync_together88_aunroll_x_in_c0_eni15_4_tpl_4_q;
    reg [31:0] redist7_sync_together88_aunroll_x_in_c0_eni15_4_tpl_4_delay_0;
    reg [31:0] redist7_sync_together88_aunroll_x_in_c0_eni15_4_tpl_4_delay_1;
    reg [31:0] redist8_sync_together88_aunroll_x_in_c0_eni15_5_tpl_4_q;
    reg [31:0] redist8_sync_together88_aunroll_x_in_c0_eni15_5_tpl_4_delay_0;
    reg [31:0] redist8_sync_together88_aunroll_x_in_c0_eni15_5_tpl_4_delay_1;
    reg [0:0] redist9_sync_together88_aunroll_x_in_c0_eni15_6_tpl_4_q;
    reg [0:0] redist9_sync_together88_aunroll_x_in_c0_eni15_6_tpl_4_delay_0;
    reg [0:0] redist9_sync_together88_aunroll_x_in_c0_eni15_6_tpl_4_delay_1;
    reg [0:0] redist9_sync_together88_aunroll_x_in_c0_eni15_6_tpl_4_delay_2;
    reg [0:0] redist10_sync_together88_aunroll_x_in_c0_eni15_7_tpl_4_q;
    reg [0:0] redist10_sync_together88_aunroll_x_in_c0_eni15_7_tpl_4_delay_0;
    reg [0:0] redist10_sync_together88_aunroll_x_in_c0_eni15_7_tpl_4_delay_1;
    reg [0:0] redist10_sync_together88_aunroll_x_in_c0_eni15_7_tpl_4_delay_2;
    reg [0:0] redist11_sync_together88_aunroll_x_in_c0_eni15_8_tpl_4_q;
    reg [0:0] redist11_sync_together88_aunroll_x_in_c0_eni15_8_tpl_4_delay_0;
    reg [0:0] redist11_sync_together88_aunroll_x_in_c0_eni15_8_tpl_4_delay_1;
    reg [0:0] redist11_sync_together88_aunroll_x_in_c0_eni15_8_tpl_4_delay_2;
    reg [0:0] redist15_sync_together88_aunroll_x_in_c0_eni15_12_tpl_18_q;
    reg [0:0] redist19_sync_together88_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist20_sync_together88_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist21_sync_together88_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist22_sync_together88_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist23_sync_together88_aunroll_x_in_i_valid_14_q;
    reg [0:0] redist24_sync_together88_aunroll_x_in_i_valid_16_q;
    reg [0:0] redist24_sync_together88_aunroll_x_in_i_valid_16_delay_0;
    reg [0:0] redist25_sync_together88_aunroll_x_in_i_valid_17_q;
    reg [0:0] redist26_sync_together88_aunroll_x_in_i_valid_18_q;
    reg [0:0] redist27_i_toi1_intcast_covariance17_sel_x_b_8_q;
    reg [0:0] redist28_i_toi1_intcast3_covariance20_sel_x_b_8_q;
    reg [0:0] redist29_i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_inv_pred_x_q_1_q;
    reg [0:0] redist30_i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_inv_pred_x_q_2_q;
    reg [0:0] redist31_i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_inv_pred_x_q_3_q;
    reg [0:0] redist32_i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_inv_pred_x_q_14_q;
    reg [0:0] redist33_i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_inv_pred_x_q_16_q;
    reg [0:0] redist33_i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_inv_pred_x_q_16_delay_0;
    reg [0:0] redist36_i_llvm_fpga_pop_i1_notcmp2782_pop64_covariance0_i_llvm_fpga_pop_i1_notcmp2782_pop64_covariance40_mux_x_q_14_q;
    reg [0:0] redist37_i_llvm_fpga_pop_i1_notcmp2287_pop67_covariance0_i_llvm_fpga_pop_i1_notcmp2287_pop67_covariance44_mux_x_q_14_q;
    reg [0:0] redist38_i_llvm_fpga_pop_i1_forked2386_pop66_covariance0_i_llvm_fpga_pop_i1_forked2386_pop66_covariance42_mux_x_q_14_q;
    reg [0:0] redist39_i_llvm_fpga_pop_coalesce_i1_covariance_b12_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b12_current_iter_isreal_covariance4_mux_x_q_1_q;
    reg [11:0] redist40_i_arrayidx403_covariance0_dupName_2_trunc_sel_x_b_1_q;
    reg [31:0] redist41_bgTrunc_i_mul45_covariance21_sel_x_b_1_q;
    reg [0:0] redist42_i_llvm_fpga_forked_covariance_b12_forked_covariance3_out_buffer_out_4_q;
    reg [0:0] redist42_i_llvm_fpga_forked_covariance_b12_forked_covariance3_out_buffer_out_4_delay_0;
    reg [0:0] redist42_i_llvm_fpga_forked_covariance_b12_forked_covariance3_out_buffer_out_4_delay_1;
    reg [0:0] redist42_i_llvm_fpga_forked_covariance_b12_forked_covariance3_out_buffer_out_4_delay_2;
    reg [0:0] redist43_i_llvm_fpga_forked_covariance_b12_forked_covariance3_out_buffer_out_5_q;
    reg [0:0] redist44_i_llvm_fpga_forked_covariance_b12_forked_covariance3_out_buffer_out_18_q;
    reg [0:0] redist45_i_llvm_fpga_dummy_thread_covariance_b12_dummy_covariance2_out_dummy_out_4_q;
    reg [0:0] redist45_i_llvm_fpga_dummy_thread_covariance_b12_dummy_covariance2_out_dummy_out_4_delay_0;
    reg [0:0] redist45_i_llvm_fpga_dummy_thread_covariance_b12_dummy_covariance2_out_dummy_out_4_delay_1;
    reg [0:0] redist45_i_llvm_fpga_dummy_thread_covariance_b12_dummy_covariance2_out_dummy_out_4_delay_2;
    reg [31:0] redist46_i_idxprom43_covariance10_vt_select_31_b_1_q;
    reg [0:0] redist49_i_covariance_b12_current_iter_isspec_covariance5_q_13_q;
    reg [31:0] redist5_sync_together88_aunroll_x_in_c0_eni15_1_tpl_4_inputreg0_q;
    reg [31:0] redist6_sync_together88_aunroll_x_in_c0_eni15_3_tpl_5_inputreg0_q;
    reg [31:0] redist6_sync_together88_aunroll_x_in_c0_eni15_3_tpl_5_outputreg0_q;
    reg [31:0] redist7_sync_together88_aunroll_x_in_c0_eni15_4_tpl_4_inputreg0_q;
    reg [31:0] redist8_sync_together88_aunroll_x_in_c0_eni15_5_tpl_4_inputreg0_q;
    reg [31:0] redist12_sync_together88_aunroll_x_in_c0_eni15_9_tpl_18_inputreg0_q;
    reg [31:0] redist12_sync_together88_aunroll_x_in_c0_eni15_9_tpl_18_outputreg0_q;
    wire redist12_sync_together88_aunroll_x_in_c0_eni15_9_tpl_18_mem_reset0;
    wire [31:0] redist12_sync_together88_aunroll_x_in_c0_eni15_9_tpl_18_mem_ia;
    wire [3:0] redist12_sync_together88_aunroll_x_in_c0_eni15_9_tpl_18_mem_aa;
    wire [3:0] redist12_sync_together88_aunroll_x_in_c0_eni15_9_tpl_18_mem_ab;
    wire [31:0] redist12_sync_together88_aunroll_x_in_c0_eni15_9_tpl_18_mem_iq;
    wire [31:0] redist12_sync_together88_aunroll_x_in_c0_eni15_9_tpl_18_mem_q;
    wire [3:0] redist12_sync_together88_aunroll_x_in_c0_eni15_9_tpl_18_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist12_sync_together88_aunroll_x_in_c0_eni15_9_tpl_18_wraddr_i = 4'b1111;
    wire [3:0] redist12_sync_together88_aunroll_x_in_c0_eni15_9_tpl_18_offset_q;
    wire [4:0] redist12_sync_together88_aunroll_x_in_c0_eni15_9_tpl_18_rdcnt_a;
    wire [4:0] redist12_sync_together88_aunroll_x_in_c0_eni15_9_tpl_18_rdcnt_b;
    logic [4:0] redist12_sync_together88_aunroll_x_in_c0_eni15_9_tpl_18_rdcnt_o;
    wire [4:0] redist12_sync_together88_aunroll_x_in_c0_eni15_9_tpl_18_rdcnt_q;
    reg [31:0] redist13_sync_together88_aunroll_x_in_c0_eni15_10_tpl_18_inputreg0_q;
    reg [31:0] redist13_sync_together88_aunroll_x_in_c0_eni15_10_tpl_18_outputreg0_q;
    wire redist13_sync_together88_aunroll_x_in_c0_eni15_10_tpl_18_mem_reset0;
    wire [31:0] redist13_sync_together88_aunroll_x_in_c0_eni15_10_tpl_18_mem_ia;
    wire [3:0] redist13_sync_together88_aunroll_x_in_c0_eni15_10_tpl_18_mem_aa;
    wire [3:0] redist13_sync_together88_aunroll_x_in_c0_eni15_10_tpl_18_mem_ab;
    wire [31:0] redist13_sync_together88_aunroll_x_in_c0_eni15_10_tpl_18_mem_iq;
    wire [31:0] redist13_sync_together88_aunroll_x_in_c0_eni15_10_tpl_18_mem_q;
    wire [3:0] redist13_sync_together88_aunroll_x_in_c0_eni15_10_tpl_18_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist13_sync_together88_aunroll_x_in_c0_eni15_10_tpl_18_wraddr_i = 4'b1111;
    wire [4:0] redist13_sync_together88_aunroll_x_in_c0_eni15_10_tpl_18_rdcnt_a;
    wire [4:0] redist13_sync_together88_aunroll_x_in_c0_eni15_10_tpl_18_rdcnt_b;
    logic [4:0] redist13_sync_together88_aunroll_x_in_c0_eni15_10_tpl_18_rdcnt_o;
    wire [4:0] redist13_sync_together88_aunroll_x_in_c0_eni15_10_tpl_18_rdcnt_q;
    reg [32:0] redist14_sync_together88_aunroll_x_in_c0_eni15_11_tpl_18_inputreg0_q;
    reg [32:0] redist14_sync_together88_aunroll_x_in_c0_eni15_11_tpl_18_outputreg0_q;
    wire redist14_sync_together88_aunroll_x_in_c0_eni15_11_tpl_18_mem_reset0;
    wire [32:0] redist14_sync_together88_aunroll_x_in_c0_eni15_11_tpl_18_mem_ia;
    wire [3:0] redist14_sync_together88_aunroll_x_in_c0_eni15_11_tpl_18_mem_aa;
    wire [3:0] redist14_sync_together88_aunroll_x_in_c0_eni15_11_tpl_18_mem_ab;
    wire [32:0] redist14_sync_together88_aunroll_x_in_c0_eni15_11_tpl_18_mem_iq;
    wire [32:0] redist14_sync_together88_aunroll_x_in_c0_eni15_11_tpl_18_mem_q;
    wire [3:0] redist14_sync_together88_aunroll_x_in_c0_eni15_11_tpl_18_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist14_sync_together88_aunroll_x_in_c0_eni15_11_tpl_18_wraddr_i = 4'b1111;
    wire [4:0] redist14_sync_together88_aunroll_x_in_c0_eni15_11_tpl_18_rdcnt_a;
    wire [4:0] redist14_sync_together88_aunroll_x_in_c0_eni15_11_tpl_18_rdcnt_b;
    logic [4:0] redist14_sync_together88_aunroll_x_in_c0_eni15_11_tpl_18_rdcnt_o;
    wire [4:0] redist14_sync_together88_aunroll_x_in_c0_eni15_11_tpl_18_rdcnt_q;
    reg [31:0] redist16_sync_together88_aunroll_x_in_c0_eni15_13_tpl_18_inputreg0_q;
    reg [31:0] redist16_sync_together88_aunroll_x_in_c0_eni15_13_tpl_18_outputreg0_q;
    wire redist16_sync_together88_aunroll_x_in_c0_eni15_13_tpl_18_mem_reset0;
    wire [31:0] redist16_sync_together88_aunroll_x_in_c0_eni15_13_tpl_18_mem_ia;
    wire [3:0] redist16_sync_together88_aunroll_x_in_c0_eni15_13_tpl_18_mem_aa;
    wire [3:0] redist16_sync_together88_aunroll_x_in_c0_eni15_13_tpl_18_mem_ab;
    wire [31:0] redist16_sync_together88_aunroll_x_in_c0_eni15_13_tpl_18_mem_iq;
    wire [31:0] redist16_sync_together88_aunroll_x_in_c0_eni15_13_tpl_18_mem_q;
    wire [3:0] redist16_sync_together88_aunroll_x_in_c0_eni15_13_tpl_18_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist16_sync_together88_aunroll_x_in_c0_eni15_13_tpl_18_wraddr_i = 4'b1111;
    wire [4:0] redist16_sync_together88_aunroll_x_in_c0_eni15_13_tpl_18_rdcnt_a;
    wire [4:0] redist16_sync_together88_aunroll_x_in_c0_eni15_13_tpl_18_rdcnt_b;
    logic [4:0] redist16_sync_together88_aunroll_x_in_c0_eni15_13_tpl_18_rdcnt_o;
    wire [4:0] redist16_sync_together88_aunroll_x_in_c0_eni15_13_tpl_18_rdcnt_q;
    reg [31:0] redist17_sync_together88_aunroll_x_in_c0_eni15_14_tpl_18_inputreg0_q;
    reg [31:0] redist17_sync_together88_aunroll_x_in_c0_eni15_14_tpl_18_outputreg0_q;
    wire redist17_sync_together88_aunroll_x_in_c0_eni15_14_tpl_18_mem_reset0;
    wire [31:0] redist17_sync_together88_aunroll_x_in_c0_eni15_14_tpl_18_mem_ia;
    wire [3:0] redist17_sync_together88_aunroll_x_in_c0_eni15_14_tpl_18_mem_aa;
    wire [3:0] redist17_sync_together88_aunroll_x_in_c0_eni15_14_tpl_18_mem_ab;
    wire [31:0] redist17_sync_together88_aunroll_x_in_c0_eni15_14_tpl_18_mem_iq;
    wire [31:0] redist17_sync_together88_aunroll_x_in_c0_eni15_14_tpl_18_mem_q;
    wire [3:0] redist17_sync_together88_aunroll_x_in_c0_eni15_14_tpl_18_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist17_sync_together88_aunroll_x_in_c0_eni15_14_tpl_18_wraddr_i = 4'b1111;
    wire [4:0] redist17_sync_together88_aunroll_x_in_c0_eni15_14_tpl_18_rdcnt_a;
    wire [4:0] redist17_sync_together88_aunroll_x_in_c0_eni15_14_tpl_18_rdcnt_b;
    logic [4:0] redist17_sync_together88_aunroll_x_in_c0_eni15_14_tpl_18_rdcnt_o;
    wire [4:0] redist17_sync_together88_aunroll_x_in_c0_eni15_14_tpl_18_rdcnt_q;
    reg [31:0] redist18_sync_together88_aunroll_x_in_c0_eni15_15_tpl_18_inputreg0_q;
    reg [31:0] redist18_sync_together88_aunroll_x_in_c0_eni15_15_tpl_18_outputreg0_q;
    wire redist18_sync_together88_aunroll_x_in_c0_eni15_15_tpl_18_mem_reset0;
    wire [31:0] redist18_sync_together88_aunroll_x_in_c0_eni15_15_tpl_18_mem_ia;
    wire [3:0] redist18_sync_together88_aunroll_x_in_c0_eni15_15_tpl_18_mem_aa;
    wire [3:0] redist18_sync_together88_aunroll_x_in_c0_eni15_15_tpl_18_mem_ab;
    wire [31:0] redist18_sync_together88_aunroll_x_in_c0_eni15_15_tpl_18_mem_iq;
    wire [31:0] redist18_sync_together88_aunroll_x_in_c0_eni15_15_tpl_18_mem_q;
    wire [3:0] redist18_sync_together88_aunroll_x_in_c0_eni15_15_tpl_18_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist18_sync_together88_aunroll_x_in_c0_eni15_15_tpl_18_wraddr_i = 4'b1111;
    wire [4:0] redist18_sync_together88_aunroll_x_in_c0_eni15_15_tpl_18_rdcnt_a;
    wire [4:0] redist18_sync_together88_aunroll_x_in_c0_eni15_15_tpl_18_rdcnt_b;
    logic [4:0] redist18_sync_together88_aunroll_x_in_c0_eni15_15_tpl_18_rdcnt_o;
    wire [4:0] redist18_sync_together88_aunroll_x_in_c0_eni15_15_tpl_18_rdcnt_q;
    reg [31:0] redist34_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance38_mux_x_q_14_inputreg0_q;
    reg [31:0] redist34_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance38_mux_x_q_14_outputreg0_q;
    wire redist34_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance38_mux_x_q_14_mem_reset0;
    wire [31:0] redist34_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance38_mux_x_q_14_mem_ia;
    wire [3:0] redist34_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance38_mux_x_q_14_mem_aa;
    wire [3:0] redist34_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance38_mux_x_q_14_mem_ab;
    wire [31:0] redist34_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance38_mux_x_q_14_mem_iq;
    wire [31:0] redist34_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance38_mux_x_q_14_mem_q;
    wire [3:0] redist34_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance38_mux_x_q_14_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist34_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance38_mux_x_q_14_wraddr_i = 4'b1111;
    wire [3:0] redist34_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance38_mux_x_q_14_offset_q;
    wire [4:0] redist34_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance38_mux_x_q_14_rdcnt_a;
    wire [4:0] redist34_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance38_mux_x_q_14_rdcnt_b;
    logic [4:0] redist34_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance38_mux_x_q_14_rdcnt_o;
    wire [4:0] redist34_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance38_mux_x_q_14_rdcnt_q;
    reg [31:0] redist35_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance0_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance36_mux_x_q_14_inputreg0_q;
    reg [31:0] redist35_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance0_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance36_mux_x_q_14_outputreg0_q;
    wire redist35_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance0_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance36_mux_x_q_14_mem_reset0;
    wire [31:0] redist35_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance0_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance36_mux_x_q_14_mem_ia;
    wire [3:0] redist35_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance0_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance36_mux_x_q_14_mem_aa;
    wire [3:0] redist35_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance0_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance36_mux_x_q_14_mem_ab;
    wire [31:0] redist35_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance0_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance36_mux_x_q_14_mem_iq;
    wire [31:0] redist35_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance0_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance36_mux_x_q_14_mem_q;
    wire [3:0] redist35_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance0_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance36_mux_x_q_14_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist35_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance0_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance36_mux_x_q_14_wraddr_i = 4'b1111;
    wire [4:0] redist35_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance0_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance36_mux_x_q_14_rdcnt_a;
    wire [4:0] redist35_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance0_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance36_mux_x_q_14_rdcnt_b;
    logic [4:0] redist35_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance0_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance36_mux_x_q_14_rdcnt_o;
    wire [4:0] redist35_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance0_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance36_mux_x_q_14_rdcnt_q;
    reg [63:0] redist47_i_idxprom43_covariance10_vt_join_q_13_inputreg0_q;
    reg [63:0] redist47_i_idxprom43_covariance10_vt_join_q_13_outputreg0_q;
    wire redist47_i_idxprom43_covariance10_vt_join_q_13_mem_reset0;
    wire [63:0] redist47_i_idxprom43_covariance10_vt_join_q_13_mem_ia;
    wire [3:0] redist47_i_idxprom43_covariance10_vt_join_q_13_mem_aa;
    wire [3:0] redist47_i_idxprom43_covariance10_vt_join_q_13_mem_ab;
    wire [63:0] redist47_i_idxprom43_covariance10_vt_join_q_13_mem_iq;
    wire [63:0] redist47_i_idxprom43_covariance10_vt_join_q_13_mem_q;
    wire [3:0] redist47_i_idxprom43_covariance10_vt_join_q_13_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist47_i_idxprom43_covariance10_vt_join_q_13_wraddr_i = 4'b1111;
    wire [3:0] redist47_i_idxprom43_covariance10_vt_join_q_13_offset_q;
    wire [4:0] redist47_i_idxprom43_covariance10_vt_join_q_13_rdcnt_a;
    wire [4:0] redist47_i_idxprom43_covariance10_vt_join_q_13_rdcnt_b;
    logic [4:0] redist47_i_idxprom43_covariance10_vt_join_q_13_rdcnt_o;
    wire [4:0] redist47_i_idxprom43_covariance10_vt_join_q_13_rdcnt_q;
    reg [63:0] redist48_i_idxprom39_covariance12_vt_join_q_13_inputreg0_q;
    reg [63:0] redist48_i_idxprom39_covariance12_vt_join_q_13_outputreg0_q;
    wire redist48_i_idxprom39_covariance12_vt_join_q_13_mem_reset0;
    wire [63:0] redist48_i_idxprom39_covariance12_vt_join_q_13_mem_ia;
    wire [3:0] redist48_i_idxprom39_covariance12_vt_join_q_13_mem_aa;
    wire [3:0] redist48_i_idxprom39_covariance12_vt_join_q_13_mem_ab;
    wire [63:0] redist48_i_idxprom39_covariance12_vt_join_q_13_mem_iq;
    wire [63:0] redist48_i_idxprom39_covariance12_vt_join_q_13_mem_q;
    wire [3:0] redist48_i_idxprom39_covariance12_vt_join_q_13_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist48_i_idxprom39_covariance12_vt_join_q_13_wraddr_i = 4'b1111;
    wire [4:0] redist48_i_idxprom39_covariance12_vt_join_q_13_rdcnt_a;
    wire [4:0] redist48_i_idxprom39_covariance12_vt_join_q_13_rdcnt_b;
    logic [4:0] redist48_i_idxprom39_covariance12_vt_join_q_13_rdcnt_o;
    wire [4:0] redist48_i_idxprom39_covariance12_vt_join_q_13_rdcnt_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist19_sync_together88_aunroll_x_in_i_valid_1(DELAY,291)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist19_sync_together88_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist19_sync_together88_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist20_sync_together88_aunroll_x_in_i_valid_2(DELAY,292)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist20_sync_together88_aunroll_x_in_i_valid_2_q <= $unsigned(redist19_sync_together88_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist21_sync_together88_aunroll_x_in_i_valid_3(DELAY,293)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist21_sync_together88_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist21_sync_together88_aunroll_x_in_i_valid_3_q <= $unsigned(redist20_sync_together88_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist22_sync_together88_aunroll_x_in_i_valid_4(DELAY,294)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist22_sync_together88_aunroll_x_in_i_valid_4_q <= $unsigned(redist21_sync_together88_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg8(REG,205)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist22_sync_together88_aunroll_x_in_i_valid_4_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_arrayidx403_covariance0_c_i7_01_x(CONSTANT,94)
    assign i_arrayidx403_covariance0_c_i7_01_x_q = $unsigned(7'b0000000);

    // valid_fanout_reg2(REG,199)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist21_sync_together88_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg20(REG,217)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg20_q <= $unsigned(redist21_sync_together88_aunroll_x_in_i_valid_3_q);
        end
    end

    // c_i6_3078(CONSTANT,40)
    assign c_i6_3078_q = $unsigned(6'b011110);

    // i_arrayidx403_covariance15_vt_const_1(CONSTANT,44)
    assign i_arrayidx403_covariance15_vt_const_1_q = $unsigned(2'b00);

    // c_i6_180(CONSTANT,39)
    assign c_i6_180_q = $unsigned(6'b111111);

    // i_fpga_indvars_iv_next12_covariance34(ADD,53)@4
    assign i_fpga_indvars_iv_next12_covariance34_a = {1'b0, i_llvm_fpga_pop_i6_fpga_indvars_iv11_pop59_covariance0_i_llvm_fpga_pop_i6_fpga_indvars_iv11_pop59_covariance25_mux_x_q};
    assign i_fpga_indvars_iv_next12_covariance34_b = {1'b0, c_i6_180_q};
    assign i_fpga_indvars_iv_next12_covariance34_o = $unsigned(i_fpga_indvars_iv_next12_covariance34_a) + $unsigned(i_fpga_indvars_iv_next12_covariance34_b);
    assign i_fpga_indvars_iv_next12_covariance34_q = i_fpga_indvars_iv_next12_covariance34_o[6:0];

    // bgTrunc_i_fpga_indvars_iv_next12_covariance34_sel_x(BITSELECT,82)@4
    assign bgTrunc_i_fpga_indvars_iv_next12_covariance34_sel_x_b = i_fpga_indvars_iv_next12_covariance34_q[5:0];

    // i_llvm_fpga_push_i6_fpga_indvars_iv11_push59_covariance0_element_extension2_x(BITJOIN,189)@4
    assign i_llvm_fpga_push_i6_fpga_indvars_iv11_push59_covariance0_element_extension2_x_q = {i_arrayidx403_covariance15_vt_const_1_q, bgTrunc_i_fpga_indvars_iv_next12_covariance34_sel_x_b};

    // valid_fanout_reg22(REG,219)@0 + 1
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

    // valid_fanout_reg21(REG,218)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg21_q <= $unsigned(redist20_sync_together88_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i6_fpga_indvars_iv11_push59_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv11_push59_covariance1_x(FIFODELAY,190)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i6_fpga_indvars_iv11_push59_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv11_push59_covariance1_x_i_stall = ~ (valid_fanout_reg22_q & i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_inv_pred_x_q);
    assign i_llvm_fpga_push_i6_fpga_indvars_iv11_push59_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv11_push59_covariance1_x_i_valid = valid_fanout_reg21_q & redist30_i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i6_fpga_indvars_iv11_push59_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv11_push59_covariance1_x_i_data = i_llvm_fpga_push_i6_fpga_indvars_iv11_push59_covariance0_element_extension2_x_q;
    assign i_llvm_fpga_push_i6_fpga_indvars_iv11_push59_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv11_push59_covariance1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i6_fpga_indvars_iv11_push59_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv11_push59_covariance1_x_i_valid[0];
    assign i_llvm_fpga_push_i6_fpga_indvars_iv11_push59_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv11_push59_covariance1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i6_fpga_indvars_iv11_push59_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv11_push59_covariance1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i6_fpga_indvars_iv11_push59_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv11_push59_covariance1_x (
        .i_valid(i_llvm_fpga_push_i6_fpga_indvars_iv11_push59_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv11_push59_covariance1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i6_fpga_indvars_iv11_push59_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv11_push59_covariance1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i6_fpga_indvars_iv11_push59_covariance0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i6_fpga_indvars_iv11_push59_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv11_push59_covariance1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i6_fpga_indvars_iv11_push59_covariance0_adapt_scalar_trunc4_sel_x(BITSELECT,192)@4
    assign i_llvm_fpga_push_i6_fpga_indvars_iv11_push59_covariance0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i6_fpga_indvars_iv11_push59_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv11_push59_covariance1_x_o_data[5:0];

    // i_llvm_fpga_pop_i6_fpga_indvars_iv11_pop59_covariance0_i_llvm_fpga_pop_i6_fpga_indvars_iv11_pop59_covariance25_mux_x(MUX,144)@4
    assign i_llvm_fpga_pop_i6_fpga_indvars_iv11_pop59_covariance0_i_llvm_fpga_pop_i6_fpga_indvars_iv11_pop59_covariance25_mux_x_s = redist42_i_llvm_fpga_forked_covariance_b12_forked_covariance3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i6_fpga_indvars_iv11_pop59_covariance0_i_llvm_fpga_pop_i6_fpga_indvars_iv11_pop59_covariance25_mux_x_s or i_llvm_fpga_push_i6_fpga_indvars_iv11_push59_covariance0_adapt_scalar_trunc4_sel_x_b or c_i6_3078_q)
    begin
        unique case (i_llvm_fpga_pop_i6_fpga_indvars_iv11_pop59_covariance0_i_llvm_fpga_pop_i6_fpga_indvars_iv11_pop59_covariance25_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i6_fpga_indvars_iv11_pop59_covariance0_i_llvm_fpga_pop_i6_fpga_indvars_iv11_pop59_covariance25_mux_x_q = i_llvm_fpga_push_i6_fpga_indvars_iv11_push59_covariance0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i6_fpga_indvars_iv11_pop59_covariance0_i_llvm_fpga_pop_i6_fpga_indvars_iv11_pop59_covariance25_mux_x_q = c_i6_3078_q;
            default : i_llvm_fpga_pop_i6_fpga_indvars_iv11_pop59_covariance0_i_llvm_fpga_pop_i6_fpga_indvars_iv11_pop59_covariance25_mux_x_q = 6'b0;
        endcase
    end

    // i_exitcond13_covariance26_cmp_nsign(LOGICAL,250)@4
    assign i_exitcond13_covariance26_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i6_fpga_indvars_iv11_pop59_covariance0_i_llvm_fpga_pop_i6_fpga_indvars_iv11_pop59_covariance25_mux_x_q[5:5]));

    // i_llvm_fpga_push_i1_notexitcond_covariance33(BLACKBOX,72)@4
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    covariance_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_covariance33 (
        .in_data_in(i_exitcond13_covariance26_cmp_nsign_q),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_covariance6_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_notexitcond_covariance33_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_notexitcond_covariance33_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_dummy_thread_covariance_b12_dummy_covariance2(BLACKBOX,67)@0
    // in in_stall_in@20000000
    covariance_i_llvm_fpga_dummy_thread_b12_dummy_covariance0 thei_llvm_fpga_dummy_thread_covariance_b12_dummy_covariance2 (
        .in_dummy_in(in_dummy_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dummy_out(i_llvm_fpga_dummy_thread_covariance_b12_dummy_covariance2_out_dummy_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist45_i_llvm_fpga_dummy_thread_covariance_b12_dummy_covariance2_out_dummy_out_4(DELAY,317)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist45_i_llvm_fpga_dummy_thread_covariance_b12_dummy_covariance2_out_dummy_out_4_delay_0 <= $unsigned(i_llvm_fpga_dummy_thread_covariance_b12_dummy_covariance2_out_dummy_out);
            redist45_i_llvm_fpga_dummy_thread_covariance_b12_dummy_covariance2_out_dummy_out_4_delay_1 <= redist45_i_llvm_fpga_dummy_thread_covariance_b12_dummy_covariance2_out_dummy_out_4_delay_0;
            redist45_i_llvm_fpga_dummy_thread_covariance_b12_dummy_covariance2_out_dummy_out_4_delay_2 <= redist45_i_llvm_fpga_dummy_thread_covariance_b12_dummy_covariance2_out_dummy_out_4_delay_1;
            redist45_i_llvm_fpga_dummy_thread_covariance_b12_dummy_covariance2_out_dummy_out_4_q <= redist45_i_llvm_fpga_dummy_thread_covariance_b12_dummy_covariance2_out_dummy_out_4_delay_2;
        end
    end

    // i_llvm_fpga_pipeline_keep_going_covariance6(BLACKBOX,71)@4
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_dummy_out@20000000
    // out out_pipeline_forked_out@20000000
    // out out_pipeline_valid_out@20000000
    covariance_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_covariance6 (
        .in_data_in(redist42_i_llvm_fpga_forked_covariance_b12_forked_covariance3_out_buffer_out_4_q),
        .in_dummy_in(redist45_i_llvm_fpga_dummy_thread_covariance_b12_dummy_covariance2_out_dummy_out_4_q),
        .in_forked_in(redist42_i_llvm_fpga_forked_covariance_b12_forked_covariance3_out_buffer_out_4_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_covariance33_out_feedback_out_2),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_covariance33_out_feedback_valid_out_2),
        .in_pipeline_stall_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_covariance6_out_exiting_valid_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_covariance6_out_not_exitcond_stall_out),
        .out_pipeline_dummy_out(i_llvm_fpga_pipeline_keep_going_covariance6_out_pipeline_dummy_out),
        .out_pipeline_forked_out(i_llvm_fpga_pipeline_keep_going_covariance6_out_pipeline_forked_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_covariance6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_covariance_b12_next_iter_isreal_covariance7(LOGICAL,51)@4
    assign i_covariance_b12_next_iter_isreal_covariance7_q = i_llvm_fpga_pop_coalesce_i1_covariance_b12_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b12_current_iter_isreal_covariance4_mux_x_q & i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out;

    // i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_element_extension2_x(BITJOIN,147)@4
    assign i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_element_extension2_x_q = {i_arrayidx403_covariance0_c_i7_01_x_q, i_covariance_b12_next_iter_isreal_covariance7_q};

    // i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_inv_pred_x(LOGICAL,149)@1
    assign i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_inv_pred_x_q = ~ (GND_q);

    // valid_fanout_reg4(REG,201)@0 + 1
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

    // redist29_i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_inv_pred_x_q_1(DELAY,301)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist29_i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_inv_pred_x_q_1_q <= $unsigned(i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_inv_pred_x_q);
        end
    end

    // redist30_i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_inv_pred_x_q_2(DELAY,302)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist30_i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_inv_pred_x_q_2_q <= $unsigned(redist29_i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_inv_pred_x_q_1_q);
        end
    end

    // valid_fanout_reg3(REG,200)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist20_sync_together88_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance1_x(FIFODELAY,148)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance1_x_i_stall = ~ (valid_fanout_reg4_q & i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance1_x_i_valid = valid_fanout_reg3_q & redist30_i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance1_x_i_data = i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance1_x (
        .i_valid(i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_adapt_scalar_trunc4_sel_x(BITSELECT,150)@4
    assign i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance1_x_o_data[0:0];

    // i_llvm_fpga_forked_covariance_b12_forked_covariance3(BLACKBOX,68)@0
    // in in_stall_in@20000000
    covariance_i_llvm_fpga_forked_b12_forked_covariance0 thei_llvm_fpga_forked_covariance_b12_forked_covariance3 (
        .in_buffer_in(in_buffer_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_buffer_out(i_llvm_fpga_forked_covariance_b12_forked_covariance3_out_buffer_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist42_i_llvm_fpga_forked_covariance_b12_forked_covariance3_out_buffer_out_4(DELAY,314)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist42_i_llvm_fpga_forked_covariance_b12_forked_covariance3_out_buffer_out_4_delay_0 <= $unsigned(i_llvm_fpga_forked_covariance_b12_forked_covariance3_out_buffer_out);
            redist42_i_llvm_fpga_forked_covariance_b12_forked_covariance3_out_buffer_out_4_delay_1 <= redist42_i_llvm_fpga_forked_covariance_b12_forked_covariance3_out_buffer_out_4_delay_0;
            redist42_i_llvm_fpga_forked_covariance_b12_forked_covariance3_out_buffer_out_4_delay_2 <= redist42_i_llvm_fpga_forked_covariance_b12_forked_covariance3_out_buffer_out_4_delay_1;
            redist42_i_llvm_fpga_forked_covariance_b12_forked_covariance3_out_buffer_out_4_q <= redist42_i_llvm_fpga_forked_covariance_b12_forked_covariance3_out_buffer_out_4_delay_2;
        end
    end

    // i_llvm_fpga_pop_coalesce_i1_covariance_b12_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b12_current_iter_isreal_covariance4_mux_x(MUX,134)@4
    assign i_llvm_fpga_pop_coalesce_i1_covariance_b12_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b12_current_iter_isreal_covariance4_mux_x_s = redist42_i_llvm_fpga_forked_covariance_b12_forked_covariance3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_coalesce_i1_covariance_b12_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b12_current_iter_isreal_covariance4_mux_x_s or i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_adapt_scalar_trunc4_sel_x_b or VCC_q)
    begin
        unique case (i_llvm_fpga_pop_coalesce_i1_covariance_b12_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b12_current_iter_isreal_covariance4_mux_x_s)
            1'b0 : i_llvm_fpga_pop_coalesce_i1_covariance_b12_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b12_current_iter_isreal_covariance4_mux_x_q = i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_coalesce_i1_covariance_b12_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b12_current_iter_isreal_covariance4_mux_x_q = VCC_q;
            default : i_llvm_fpga_pop_coalesce_i1_covariance_b12_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b12_current_iter_isreal_covariance4_mux_x_q = 1'b0;
        endcase
    end

    // redist39_i_llvm_fpga_pop_coalesce_i1_covariance_b12_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b12_current_iter_isreal_covariance4_mux_x_q_1(DELAY,311)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist39_i_llvm_fpga_pop_coalesce_i1_covariance_b12_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b12_current_iter_isreal_covariance4_mux_x_q_1_q <= $unsigned(i_llvm_fpga_pop_coalesce_i1_covariance_b12_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b12_current_iter_isreal_covariance4_mux_x_q);
        end
    end

    // i_covariance_b12_current_iter_isspec_covariance5(LOGICAL,50)@5
    assign i_covariance_b12_current_iter_isspec_covariance5_q = redist39_i_llvm_fpga_pop_coalesce_i1_covariance_b12_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b12_current_iter_isreal_covariance4_mux_x_q_1_q ^ VCC_q;

    // c_covariance_data_local_pmem(CONSTANT,6)
    assign c_covariance_data_local_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx403_covariance0_upper_bits_x_merged_bit_select(BITSELECT,271)@4
    assign i_arrayidx403_covariance0_upper_bits_x_merged_bit_select_b = c_covariance_data_local_pmem_q[63:12];
    assign i_arrayidx403_covariance0_upper_bits_x_merged_bit_select_c = c_covariance_data_local_pmem_q[11:0];

    // redist0_i_arrayidx403_covariance0_upper_bits_x_merged_bit_select_b_1(DELAY,272)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_i_arrayidx403_covariance0_upper_bits_x_merged_bit_select_b_1_q <= $unsigned(i_arrayidx403_covariance0_upper_bits_x_merged_bit_select_b);
        end
    end

    // c_i32_076(CONSTANT,37)
    assign c_i32_076_q = $unsigned(32'b00000000000000000000000000000000);

    // redist6_sync_together88_aunroll_x_in_c0_eni15_3_tpl_5_inputreg0(DELAY,323)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_sync_together88_aunroll_x_in_c0_eni15_3_tpl_5_inputreg0_q <= $unsigned(in_c0_eni15_3_tpl);
        end
    end

    // redist6_sync_together88_aunroll_x_in_c0_eni15_3_tpl_5(DELAY,278)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_sync_together88_aunroll_x_in_c0_eni15_3_tpl_5_delay_0 <= $unsigned(redist6_sync_together88_aunroll_x_in_c0_eni15_3_tpl_5_inputreg0_q);
            redist6_sync_together88_aunroll_x_in_c0_eni15_3_tpl_5_delay_1 <= redist6_sync_together88_aunroll_x_in_c0_eni15_3_tpl_5_delay_0;
            redist6_sync_together88_aunroll_x_in_c0_eni15_3_tpl_5_q <= redist6_sync_together88_aunroll_x_in_c0_eni15_3_tpl_5_delay_1;
        end
    end

    // redist6_sync_together88_aunroll_x_in_c0_eni15_3_tpl_5_outputreg0(DELAY,324)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_sync_together88_aunroll_x_in_c0_eni15_3_tpl_5_outputreg0_q <= $unsigned(redist6_sync_together88_aunroll_x_in_c0_eni15_3_tpl_5_q);
        end
    end

    // valid_fanout_reg15(REG,212)@1 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist19_sync_together88_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist31_i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_inv_pred_x_q_3(DELAY,303)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist31_i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_inv_pred_x_q_3_q <= $unsigned(redist30_i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_inv_pred_x_q_2_q);
        end
    end

    // valid_fanout_reg14(REG,211)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist21_sync_together88_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i32_i24_034_pop2984_push65_covariance0_i_llvm_fpga_push_i32_i24_034_pop2984_push65_covariance1_x(FIFODELAY,172)@2 + 1
    // in i_valid@4
    // in i_write_pred@4
    // in i_data@5
    // out o_data@5
    assign i_llvm_fpga_push_i32_i24_034_pop2984_push65_covariance0_i_llvm_fpga_push_i32_i24_034_pop2984_push65_covariance1_x_i_stall = ~ (valid_fanout_reg15_q & redist29_i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_inv_pred_x_q_1_q);
    assign i_llvm_fpga_push_i32_i24_034_pop2984_push65_covariance0_i_llvm_fpga_push_i32_i24_034_pop2984_push65_covariance1_x_i_valid = valid_fanout_reg14_q & redist31_i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_inv_pred_x_q_3_q;
    assign i_llvm_fpga_push_i32_i24_034_pop2984_push65_covariance0_i_llvm_fpga_push_i32_i24_034_pop2984_push65_covariance1_x_i_data = i_llvm_fpga_pop_i32_i24_034_pop2984_pop65_covariance0_i_llvm_fpga_pop_i32_i24_034_pop2984_pop65_covariance11_mux_x_q;
    assign i_llvm_fpga_push_i32_i24_034_pop2984_push65_covariance0_i_llvm_fpga_push_i32_i24_034_pop2984_push65_covariance1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_i24_034_pop2984_push65_covariance0_i_llvm_fpga_push_i32_i24_034_pop2984_push65_covariance1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_i24_034_pop2984_push65_covariance0_i_llvm_fpga_push_i32_i24_034_pop2984_push65_covariance1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_i24_034_pop2984_push65_covariance0_i_llvm_fpga_push_i32_i24_034_pop2984_push65_covariance1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_i24_034_pop2984_push65_covariance0_i_llvm_fpga_push_i32_i24_034_pop2984_push65_covariance1_x (
        .i_valid(i_llvm_fpga_push_i32_i24_034_pop2984_push65_covariance0_i_llvm_fpga_push_i32_i24_034_pop2984_push65_covariance1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_i24_034_pop2984_push65_covariance0_i_llvm_fpga_push_i32_i24_034_pop2984_push65_covariance1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i32_i24_034_pop2984_pop65_covariance0_i_llvm_fpga_pop_i32_i24_034_pop2984_pop65_covariance11_mux_x_q),
        .o_data(i_llvm_fpga_push_i32_i24_034_pop2984_push65_covariance0_i_llvm_fpga_push_i32_i24_034_pop2984_push65_covariance1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // redist43_i_llvm_fpga_forked_covariance_b12_forked_covariance3_out_buffer_out_5(DELAY,315)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist43_i_llvm_fpga_forked_covariance_b12_forked_covariance3_out_buffer_out_5_q <= $unsigned(redist42_i_llvm_fpga_forked_covariance_b12_forked_covariance3_out_buffer_out_4_q);
        end
    end

    // i_llvm_fpga_pop_i32_i24_034_pop2984_pop65_covariance0_i_llvm_fpga_pop_i32_i24_034_pop2984_pop65_covariance11_mux_x(MUX,139)@5
    assign i_llvm_fpga_pop_i32_i24_034_pop2984_pop65_covariance0_i_llvm_fpga_pop_i32_i24_034_pop2984_pop65_covariance11_mux_x_s = redist43_i_llvm_fpga_forked_covariance_b12_forked_covariance3_out_buffer_out_5_q;
    always @(i_llvm_fpga_pop_i32_i24_034_pop2984_pop65_covariance0_i_llvm_fpga_pop_i32_i24_034_pop2984_pop65_covariance11_mux_x_s or i_llvm_fpga_push_i32_i24_034_pop2984_push65_covariance0_i_llvm_fpga_push_i32_i24_034_pop2984_push65_covariance1_x_o_data or redist6_sync_together88_aunroll_x_in_c0_eni15_3_tpl_5_outputreg0_q)
    begin
        unique case (i_llvm_fpga_pop_i32_i24_034_pop2984_pop65_covariance0_i_llvm_fpga_pop_i32_i24_034_pop2984_pop65_covariance11_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_i24_034_pop2984_pop65_covariance0_i_llvm_fpga_pop_i32_i24_034_pop2984_pop65_covariance11_mux_x_q = i_llvm_fpga_push_i32_i24_034_pop2984_push65_covariance0_i_llvm_fpga_push_i32_i24_034_pop2984_push65_covariance1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_i24_034_pop2984_pop65_covariance0_i_llvm_fpga_pop_i32_i24_034_pop2984_pop65_covariance11_mux_x_q = redist6_sync_together88_aunroll_x_in_c0_eni15_3_tpl_5_outputreg0_q;
            default : i_llvm_fpga_pop_i32_i24_034_pop2984_pop65_covariance0_i_llvm_fpga_pop_i32_i24_034_pop2984_pop65_covariance11_mux_x_q = 32'b0;
        endcase
    end

    // i_idxprom39_covariance12_sel_x(BITSELECT,132)@5
    assign i_idxprom39_covariance12_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_i24_034_pop2984_pop65_covariance0_i_llvm_fpga_pop_i32_i24_034_pop2984_pop65_covariance11_mux_x_q[31:0]};

    // i_idxprom39_covariance12_vt_select_31(BITSELECT,61)@5
    assign i_idxprom39_covariance12_vt_select_31_b = i_idxprom39_covariance12_sel_x_b[31:0];

    // i_idxprom39_covariance12_vt_join(BITJOIN,60)@5
    assign i_idxprom39_covariance12_vt_join_q = {c_i32_076_q, i_idxprom39_covariance12_vt_select_31_b};

    // i_arrayidx403_covariance0_dupName_3_trunc_sel_x(BITSELECT,109)@5
    assign i_arrayidx403_covariance0_dupName_3_trunc_sel_x_b = i_idxprom39_covariance12_vt_join_q[11:0];

    // i_arrayidx403_covariance0_dupName_0_narrow_x(BITSELECT,100)@5
    assign i_arrayidx403_covariance0_dupName_0_narrow_x_b = i_arrayidx403_covariance0_dupName_3_trunc_sel_x_b[9:0];

    // i_arrayidx403_covariance0_dupName_0_shift_join_x(BITJOIN,101)@5
    assign i_arrayidx403_covariance0_dupName_0_shift_join_x_q = {i_arrayidx403_covariance0_dupName_0_narrow_x_b, i_arrayidx403_covariance15_vt_const_1_q};

    // c_i32_177(CONSTANT,38)
    assign c_i32_177_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc48_covariance24(ADD,66)@4
    assign i_inc48_covariance24_a = {1'b0, i_llvm_fpga_pop_i32_k_031_pop60_covariance0_i_llvm_fpga_pop_i32_k_031_pop60_covariance13_mux_x_q};
    assign i_inc48_covariance24_b = {1'b0, c_i32_177_q};
    assign i_inc48_covariance24_o = $unsigned(i_inc48_covariance24_a) + $unsigned(i_inc48_covariance24_b);
    assign i_inc48_covariance24_q = i_inc48_covariance24_o[32:0];

    // bgTrunc_i_inc48_covariance24_sel_x(BITSELECT,83)@4
    assign bgTrunc_i_inc48_covariance24_sel_x_b = i_inc48_covariance24_q[31:0];

    // valid_fanout_reg19(REG,216)@0 + 1
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

    // valid_fanout_reg18(REG,215)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(redist20_sync_together88_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i32_k_031_push60_covariance0_i_llvm_fpga_push_i32_k_031_push60_covariance1_x(FIFODELAY,178)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i32_k_031_push60_covariance0_i_llvm_fpga_push_i32_k_031_push60_covariance1_x_i_stall = ~ (valid_fanout_reg19_q & i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_inv_pred_x_q);
    assign i_llvm_fpga_push_i32_k_031_push60_covariance0_i_llvm_fpga_push_i32_k_031_push60_covariance1_x_i_valid = valid_fanout_reg18_q & redist30_i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i32_k_031_push60_covariance0_i_llvm_fpga_push_i32_k_031_push60_covariance1_x_i_data = bgTrunc_i_inc48_covariance24_sel_x_b;
    assign i_llvm_fpga_push_i32_k_031_push60_covariance0_i_llvm_fpga_push_i32_k_031_push60_covariance1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_k_031_push60_covariance0_i_llvm_fpga_push_i32_k_031_push60_covariance1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_k_031_push60_covariance0_i_llvm_fpga_push_i32_k_031_push60_covariance1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_k_031_push60_covariance0_i_llvm_fpga_push_i32_k_031_push60_covariance1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_k_031_push60_covariance0_i_llvm_fpga_push_i32_k_031_push60_covariance1_x (
        .i_valid(i_llvm_fpga_push_i32_k_031_push60_covariance0_i_llvm_fpga_push_i32_k_031_push60_covariance1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_k_031_push60_covariance0_i_llvm_fpga_push_i32_k_031_push60_covariance1_x_i_stall_bitsignaltemp),
        .i_data(bgTrunc_i_inc48_covariance24_sel_x_b),
        .o_data(i_llvm_fpga_push_i32_k_031_push60_covariance0_i_llvm_fpga_push_i32_k_031_push60_covariance1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_k_031_pop60_covariance0_i_llvm_fpga_pop_i32_k_031_pop60_covariance13_mux_x(MUX,141)@4
    assign i_llvm_fpga_pop_i32_k_031_pop60_covariance0_i_llvm_fpga_pop_i32_k_031_pop60_covariance13_mux_x_s = redist42_i_llvm_fpga_forked_covariance_b12_forked_covariance3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i32_k_031_pop60_covariance0_i_llvm_fpga_pop_i32_k_031_pop60_covariance13_mux_x_s or i_llvm_fpga_push_i32_k_031_push60_covariance0_i_llvm_fpga_push_i32_k_031_push60_covariance1_x_o_data or c_i32_076_q)
    begin
        unique case (i_llvm_fpga_pop_i32_k_031_pop60_covariance0_i_llvm_fpga_pop_i32_k_031_pop60_covariance13_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_k_031_pop60_covariance0_i_llvm_fpga_pop_i32_k_031_pop60_covariance13_mux_x_q = i_llvm_fpga_push_i32_k_031_push60_covariance0_i_llvm_fpga_push_i32_k_031_push60_covariance1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_k_031_pop60_covariance0_i_llvm_fpga_pop_i32_k_031_pop60_covariance13_mux_x_q = c_i32_076_q;
            default : i_llvm_fpga_pop_i32_k_031_pop60_covariance0_i_llvm_fpga_pop_i32_k_031_pop60_covariance13_mux_x_q = 32'b0;
        endcase
    end

    // i_idxprom37_covariance14_sel_x(BITSELECT,131)@4
    assign i_idxprom37_covariance14_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_k_031_pop60_covariance0_i_llvm_fpga_pop_i32_k_031_pop60_covariance13_mux_x_q[31:0]};

    // i_idxprom37_covariance14_vt_select_31(BITSELECT,57)@4
    assign i_idxprom37_covariance14_vt_select_31_b = i_idxprom37_covariance14_sel_x_b[31:0];

    // i_idxprom37_covariance14_vt_join(BITJOIN,56)@4
    assign i_idxprom37_covariance14_vt_join_q = {c_i32_076_q, i_idxprom37_covariance14_vt_select_31_b};

    // i_arrayidx403_covariance0_dupName_0_trunc_sel_x(BITSELECT,107)@4
    assign i_arrayidx403_covariance0_dupName_0_trunc_sel_x_b = i_idxprom37_covariance14_vt_join_q[11:0];

    // i_arrayidx403_covariance0_narrow_x(BITSELECT,95)@4
    assign i_arrayidx403_covariance0_narrow_x_b = i_arrayidx403_covariance0_dupName_0_trunc_sel_x_b[4:0];

    // i_arrayidx403_covariance0_shift_join_x(BITJOIN,96)@4
    assign i_arrayidx403_covariance0_shift_join_x_q = {i_arrayidx403_covariance0_narrow_x_b, i_arrayidx403_covariance0_c_i7_01_x_q};

    // i_arrayidx403_covariance0_add_x(ADD,91)@4
    assign i_arrayidx403_covariance0_add_x_a = {1'b0, i_arrayidx403_covariance0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx403_covariance0_add_x_b = {1'b0, i_arrayidx403_covariance0_shift_join_x_q};
    assign i_arrayidx403_covariance0_add_x_o = $unsigned(i_arrayidx403_covariance0_add_x_a) + $unsigned(i_arrayidx403_covariance0_add_x_b);
    assign i_arrayidx403_covariance0_add_x_q = i_arrayidx403_covariance0_add_x_o[12:0];

    // i_arrayidx403_covariance0_dupName_2_trunc_sel_x(BITSELECT,108)@4
    assign i_arrayidx403_covariance0_dupName_2_trunc_sel_x_b = i_arrayidx403_covariance0_add_x_q[11:0];

    // redist40_i_arrayidx403_covariance0_dupName_2_trunc_sel_x_b_1(DELAY,312)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist40_i_arrayidx403_covariance0_dupName_2_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx403_covariance0_dupName_2_trunc_sel_x_b);
        end
    end

    // i_arrayidx403_covariance0_dupName_0_add_x(ADD,99)@5
    assign i_arrayidx403_covariance0_dupName_0_add_x_a = {1'b0, redist40_i_arrayidx403_covariance0_dupName_2_trunc_sel_x_b_1_q};
    assign i_arrayidx403_covariance0_dupName_0_add_x_b = {1'b0, i_arrayidx403_covariance0_dupName_0_shift_join_x_q};
    assign i_arrayidx403_covariance0_dupName_0_add_x_o = $unsigned(i_arrayidx403_covariance0_dupName_0_add_x_a) + $unsigned(i_arrayidx403_covariance0_dupName_0_add_x_b);
    assign i_arrayidx403_covariance0_dupName_0_add_x_q = i_arrayidx403_covariance0_dupName_0_add_x_o[12:0];

    // i_arrayidx403_covariance0_dupName_5_trunc_sel_x(BITSELECT,110)@5
    assign i_arrayidx403_covariance0_dupName_5_trunc_sel_x_b = i_arrayidx403_covariance0_dupName_0_add_x_q[11:0];

    // i_arrayidx403_covariance0_append_upper_bits_x(BITJOIN,92)@5
    assign i_arrayidx403_covariance0_append_upper_bits_x_q = {redist0_i_arrayidx403_covariance0_upper_bits_x_merged_bit_select_b_1_q, i_arrayidx403_covariance0_dupName_5_trunc_sel_x_b};

    // i_arrayidx403_covariance15_vt_select_63(BITSELECT,46)@5
    assign i_arrayidx403_covariance15_vt_select_63_b = i_arrayidx403_covariance0_append_upper_bits_x_q[63:2];

    // i_arrayidx403_covariance15_vt_join(BITJOIN,45)@5
    assign i_arrayidx403_covariance15_vt_join_q = {i_arrayidx403_covariance15_vt_select_63_b, i_arrayidx403_covariance15_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_covariance6_covariance16(BLACKBOX,69)@5
    // in in_i_stall@20000000
    // out out_o_readdata@10
    // out out_o_stall@9
    // out out_o_valid@10
    // out out_unnamed_covariance6_covariance_avm_address@20000000
    // out out_unnamed_covariance6_covariance_avm_burstcount@20000000
    // out out_unnamed_covariance6_covariance_avm_byteenable@20000000
    // out out_unnamed_covariance6_covariance_avm_enable@20000000
    // out out_unnamed_covariance6_covariance_avm_read@20000000
    // out out_unnamed_covariance6_covariance_avm_write@20000000
    // out out_unnamed_covariance6_covariance_avm_writedata@20000000
    covariance_i_llvm_fpga_mem_unnamed_6_covariance0 thei_llvm_fpga_mem_unnamed_covariance6_covariance16 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx403_covariance15_vt_join_q),
        .in_i_predicate(i_covariance_b12_current_iter_isspec_covariance5_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg8_q),
        .in_unnamed_covariance6_covariance_avm_readdata(in_unnamed_covariance6_covariance_avm_readdata),
        .in_unnamed_covariance6_covariance_avm_readdatavalid(in_unnamed_covariance6_covariance_avm_readdatavalid),
        .in_unnamed_covariance6_covariance_avm_waitrequest(in_unnamed_covariance6_covariance_avm_waitrequest),
        .in_unnamed_covariance6_covariance_avm_writeack(in_unnamed_covariance6_covariance_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_covariance6_covariance16_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_covariance6_covariance_avm_address(i_llvm_fpga_mem_unnamed_covariance6_covariance16_out_unnamed_covariance6_covariance_avm_address),
        .out_unnamed_covariance6_covariance_avm_burstcount(i_llvm_fpga_mem_unnamed_covariance6_covariance16_out_unnamed_covariance6_covariance_avm_burstcount),
        .out_unnamed_covariance6_covariance_avm_byteenable(i_llvm_fpga_mem_unnamed_covariance6_covariance16_out_unnamed_covariance6_covariance_avm_byteenable),
        .out_unnamed_covariance6_covariance_avm_enable(i_llvm_fpga_mem_unnamed_covariance6_covariance16_out_unnamed_covariance6_covariance_avm_enable),
        .out_unnamed_covariance6_covariance_avm_read(i_llvm_fpga_mem_unnamed_covariance6_covariance16_out_unnamed_covariance6_covariance_avm_read),
        .out_unnamed_covariance6_covariance_avm_write(i_llvm_fpga_mem_unnamed_covariance6_covariance16_out_unnamed_covariance6_covariance_avm_write),
        .out_unnamed_covariance6_covariance_avm_writedata(i_llvm_fpga_mem_unnamed_covariance6_covariance16_out_unnamed_covariance6_covariance_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,42)
    assign out_unnamed_covariance6_covariance_avm_address = i_llvm_fpga_mem_unnamed_covariance6_covariance16_out_unnamed_covariance6_covariance_avm_address;
    assign out_unnamed_covariance6_covariance_avm_enable = i_llvm_fpga_mem_unnamed_covariance6_covariance16_out_unnamed_covariance6_covariance_avm_enable;
    assign out_unnamed_covariance6_covariance_avm_read = i_llvm_fpga_mem_unnamed_covariance6_covariance16_out_unnamed_covariance6_covariance_avm_read;
    assign out_unnamed_covariance6_covariance_avm_write = i_llvm_fpga_mem_unnamed_covariance6_covariance16_out_unnamed_covariance6_covariance_avm_write;
    assign out_unnamed_covariance6_covariance_avm_writedata = i_llvm_fpga_mem_unnamed_covariance6_covariance16_out_unnamed_covariance6_covariance_avm_writedata;
    assign out_unnamed_covariance6_covariance_avm_byteenable = i_llvm_fpga_mem_unnamed_covariance6_covariance16_out_unnamed_covariance6_covariance_avm_byteenable;
    assign out_unnamed_covariance6_covariance_avm_burstcount = i_llvm_fpga_mem_unnamed_covariance6_covariance16_out_unnamed_covariance6_covariance_avm_burstcount;

    // regfree_osync(GPOUT,79)
    assign out_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_covariance6_out_exiting_valid_out;

    // valid_fanout_reg9(REG,206)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist22_sync_together88_aunroll_x_in_i_valid_4_q);
        end
    end

    // redist5_sync_together88_aunroll_x_in_c0_eni15_1_tpl_4_inputreg0(DELAY,322)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_sync_together88_aunroll_x_in_c0_eni15_1_tpl_4_inputreg0_q <= $unsigned(in_c0_eni15_1_tpl);
        end
    end

    // redist5_sync_together88_aunroll_x_in_c0_eni15_1_tpl_4(DELAY,277)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_sync_together88_aunroll_x_in_c0_eni15_1_tpl_4_delay_0 <= $unsigned(redist5_sync_together88_aunroll_x_in_c0_eni15_1_tpl_4_inputreg0_q);
            redist5_sync_together88_aunroll_x_in_c0_eni15_1_tpl_4_delay_1 <= redist5_sync_together88_aunroll_x_in_c0_eni15_1_tpl_4_delay_0;
            redist5_sync_together88_aunroll_x_in_c0_eni15_1_tpl_4_q <= redist5_sync_together88_aunroll_x_in_c0_eni15_1_tpl_4_delay_1;
        end
    end

    // valid_fanout_reg13(REG,210)@0 + 1
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

    // valid_fanout_reg12(REG,209)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist20_sync_together88_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i32_j28_033_pop5488_push68_covariance0_i_llvm_fpga_push_i32_j28_033_pop5488_push68_covariance1_x(FIFODELAY,175)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i32_j28_033_pop5488_push68_covariance0_i_llvm_fpga_push_i32_j28_033_pop5488_push68_covariance1_x_i_stall = ~ (valid_fanout_reg13_q & i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_inv_pred_x_q);
    assign i_llvm_fpga_push_i32_j28_033_pop5488_push68_covariance0_i_llvm_fpga_push_i32_j28_033_pop5488_push68_covariance1_x_i_valid = valid_fanout_reg12_q & redist30_i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i32_j28_033_pop5488_push68_covariance0_i_llvm_fpga_push_i32_j28_033_pop5488_push68_covariance1_x_i_data = i_llvm_fpga_pop_i32_j28_033_pop5488_pop68_covariance0_i_llvm_fpga_pop_i32_j28_033_pop5488_pop68_covariance9_mux_x_q;
    assign i_llvm_fpga_push_i32_j28_033_pop5488_push68_covariance0_i_llvm_fpga_push_i32_j28_033_pop5488_push68_covariance1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_j28_033_pop5488_push68_covariance0_i_llvm_fpga_push_i32_j28_033_pop5488_push68_covariance1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_j28_033_pop5488_push68_covariance0_i_llvm_fpga_push_i32_j28_033_pop5488_push68_covariance1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_j28_033_pop5488_push68_covariance0_i_llvm_fpga_push_i32_j28_033_pop5488_push68_covariance1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_j28_033_pop5488_push68_covariance0_i_llvm_fpga_push_i32_j28_033_pop5488_push68_covariance1_x (
        .i_valid(i_llvm_fpga_push_i32_j28_033_pop5488_push68_covariance0_i_llvm_fpga_push_i32_j28_033_pop5488_push68_covariance1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_j28_033_pop5488_push68_covariance0_i_llvm_fpga_push_i32_j28_033_pop5488_push68_covariance1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i32_j28_033_pop5488_pop68_covariance0_i_llvm_fpga_pop_i32_j28_033_pop5488_pop68_covariance9_mux_x_q),
        .o_data(i_llvm_fpga_push_i32_j28_033_pop5488_push68_covariance0_i_llvm_fpga_push_i32_j28_033_pop5488_push68_covariance1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_j28_033_pop5488_pop68_covariance0_i_llvm_fpga_pop_i32_j28_033_pop5488_pop68_covariance9_mux_x(MUX,140)@4
    assign i_llvm_fpga_pop_i32_j28_033_pop5488_pop68_covariance0_i_llvm_fpga_pop_i32_j28_033_pop5488_pop68_covariance9_mux_x_s = redist42_i_llvm_fpga_forked_covariance_b12_forked_covariance3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i32_j28_033_pop5488_pop68_covariance0_i_llvm_fpga_pop_i32_j28_033_pop5488_pop68_covariance9_mux_x_s or i_llvm_fpga_push_i32_j28_033_pop5488_push68_covariance0_i_llvm_fpga_push_i32_j28_033_pop5488_push68_covariance1_x_o_data or redist5_sync_together88_aunroll_x_in_c0_eni15_1_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i32_j28_033_pop5488_pop68_covariance0_i_llvm_fpga_pop_i32_j28_033_pop5488_pop68_covariance9_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_j28_033_pop5488_pop68_covariance0_i_llvm_fpga_pop_i32_j28_033_pop5488_pop68_covariance9_mux_x_q = i_llvm_fpga_push_i32_j28_033_pop5488_push68_covariance0_i_llvm_fpga_push_i32_j28_033_pop5488_push68_covariance1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_j28_033_pop5488_pop68_covariance0_i_llvm_fpga_pop_i32_j28_033_pop5488_pop68_covariance9_mux_x_q = redist5_sync_together88_aunroll_x_in_c0_eni15_1_tpl_4_q;
            default : i_llvm_fpga_pop_i32_j28_033_pop5488_pop68_covariance0_i_llvm_fpga_pop_i32_j28_033_pop5488_pop68_covariance9_mux_x_q = 32'b0;
        endcase
    end

    // i_idxprom43_covariance10_sel_x(BITSELECT,133)@4
    assign i_idxprom43_covariance10_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_j28_033_pop5488_pop68_covariance0_i_llvm_fpga_pop_i32_j28_033_pop5488_pop68_covariance9_mux_x_q[31:0]};

    // i_idxprom43_covariance10_vt_select_31(BITSELECT,65)@4
    assign i_idxprom43_covariance10_vt_select_31_b = i_idxprom43_covariance10_sel_x_b[31:0];

    // redist46_i_idxprom43_covariance10_vt_select_31_b_1(DELAY,318)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist46_i_idxprom43_covariance10_vt_select_31_b_1_q <= $unsigned(i_idxprom43_covariance10_vt_select_31_b);
        end
    end

    // i_idxprom43_covariance10_vt_join(BITJOIN,64)@5
    assign i_idxprom43_covariance10_vt_join_q = {c_i32_076_q, redist46_i_idxprom43_covariance10_vt_select_31_b_1_q};

    // i_arrayidx444_covariance0_dupName_3_trunc_sel_x(BITSELECT,129)@5
    assign i_arrayidx444_covariance0_dupName_3_trunc_sel_x_b = i_idxprom43_covariance10_vt_join_q[11:0];

    // i_arrayidx444_covariance0_dupName_0_narrow_x(BITSELECT,120)@5
    assign i_arrayidx444_covariance0_dupName_0_narrow_x_b = i_arrayidx444_covariance0_dupName_3_trunc_sel_x_b[9:0];

    // i_arrayidx444_covariance0_dupName_0_shift_join_x(BITJOIN,121)@5
    assign i_arrayidx444_covariance0_dupName_0_shift_join_x_q = {i_arrayidx444_covariance0_dupName_0_narrow_x_b, i_arrayidx403_covariance15_vt_const_1_q};

    // i_arrayidx444_covariance0_dupName_0_add_x(ADD,119)@5
    assign i_arrayidx444_covariance0_dupName_0_add_x_a = {1'b0, redist40_i_arrayidx403_covariance0_dupName_2_trunc_sel_x_b_1_q};
    assign i_arrayidx444_covariance0_dupName_0_add_x_b = {1'b0, i_arrayidx444_covariance0_dupName_0_shift_join_x_q};
    assign i_arrayidx444_covariance0_dupName_0_add_x_o = $unsigned(i_arrayidx444_covariance0_dupName_0_add_x_a) + $unsigned(i_arrayidx444_covariance0_dupName_0_add_x_b);
    assign i_arrayidx444_covariance0_dupName_0_add_x_q = i_arrayidx444_covariance0_dupName_0_add_x_o[12:0];

    // i_arrayidx444_covariance0_dupName_5_trunc_sel_x(BITSELECT,130)@5
    assign i_arrayidx444_covariance0_dupName_5_trunc_sel_x_b = i_arrayidx444_covariance0_dupName_0_add_x_q[11:0];

    // i_arrayidx444_covariance0_append_upper_bits_x(BITJOIN,112)@5
    assign i_arrayidx444_covariance0_append_upper_bits_x_q = {redist0_i_arrayidx403_covariance0_upper_bits_x_merged_bit_select_b_1_q, i_arrayidx444_covariance0_dupName_5_trunc_sel_x_b};

    // i_arrayidx444_covariance18_vt_select_63(BITSELECT,49)@5
    assign i_arrayidx444_covariance18_vt_select_63_b = i_arrayidx444_covariance0_append_upper_bits_x_q[63:2];

    // i_arrayidx444_covariance18_vt_join(BITJOIN,48)@5
    assign i_arrayidx444_covariance18_vt_join_q = {i_arrayidx444_covariance18_vt_select_63_b, i_arrayidx403_covariance15_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_covariance7_covariance19(BLACKBOX,70)@5
    // in in_i_stall@20000000
    // out out_o_readdata@10
    // out out_o_stall@9
    // out out_o_valid@10
    // out out_unnamed_covariance7_covariance_avm_address@20000000
    // out out_unnamed_covariance7_covariance_avm_burstcount@20000000
    // out out_unnamed_covariance7_covariance_avm_byteenable@20000000
    // out out_unnamed_covariance7_covariance_avm_enable@20000000
    // out out_unnamed_covariance7_covariance_avm_read@20000000
    // out out_unnamed_covariance7_covariance_avm_write@20000000
    // out out_unnamed_covariance7_covariance_avm_writedata@20000000
    covariance_i_llvm_fpga_mem_unnamed_7_covariance0 thei_llvm_fpga_mem_unnamed_covariance7_covariance19 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx444_covariance18_vt_join_q),
        .in_i_predicate(i_covariance_b12_current_iter_isspec_covariance5_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg9_q),
        .in_unnamed_covariance7_covariance_avm_readdata(in_unnamed_covariance7_covariance_avm_readdata),
        .in_unnamed_covariance7_covariance_avm_readdatavalid(in_unnamed_covariance7_covariance_avm_readdatavalid),
        .in_unnamed_covariance7_covariance_avm_waitrequest(in_unnamed_covariance7_covariance_avm_waitrequest),
        .in_unnamed_covariance7_covariance_avm_writeack(in_unnamed_covariance7_covariance_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_covariance7_covariance19_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_covariance7_covariance_avm_address(i_llvm_fpga_mem_unnamed_covariance7_covariance19_out_unnamed_covariance7_covariance_avm_address),
        .out_unnamed_covariance7_covariance_avm_burstcount(i_llvm_fpga_mem_unnamed_covariance7_covariance19_out_unnamed_covariance7_covariance_avm_burstcount),
        .out_unnamed_covariance7_covariance_avm_byteenable(i_llvm_fpga_mem_unnamed_covariance7_covariance19_out_unnamed_covariance7_covariance_avm_byteenable),
        .out_unnamed_covariance7_covariance_avm_enable(i_llvm_fpga_mem_unnamed_covariance7_covariance19_out_unnamed_covariance7_covariance_avm_enable),
        .out_unnamed_covariance7_covariance_avm_read(i_llvm_fpga_mem_unnamed_covariance7_covariance19_out_unnamed_covariance7_covariance_avm_read),
        .out_unnamed_covariance7_covariance_avm_write(i_llvm_fpga_mem_unnamed_covariance7_covariance19_out_unnamed_covariance7_covariance_avm_write),
        .out_unnamed_covariance7_covariance_avm_writedata(i_llvm_fpga_mem_unnamed_covariance7_covariance19_out_unnamed_covariance7_covariance_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,87)
    assign out_unnamed_covariance7_covariance_avm_address = i_llvm_fpga_mem_unnamed_covariance7_covariance19_out_unnamed_covariance7_covariance_avm_address;
    assign out_unnamed_covariance7_covariance_avm_enable = i_llvm_fpga_mem_unnamed_covariance7_covariance19_out_unnamed_covariance7_covariance_avm_enable;
    assign out_unnamed_covariance7_covariance_avm_read = i_llvm_fpga_mem_unnamed_covariance7_covariance19_out_unnamed_covariance7_covariance_avm_read;
    assign out_unnamed_covariance7_covariance_avm_write = i_llvm_fpga_mem_unnamed_covariance7_covariance19_out_unnamed_covariance7_covariance_avm_write;
    assign out_unnamed_covariance7_covariance_avm_writedata = i_llvm_fpga_mem_unnamed_covariance7_covariance19_out_unnamed_covariance7_covariance_avm_writedata;
    assign out_unnamed_covariance7_covariance_avm_byteenable = i_llvm_fpga_mem_unnamed_covariance7_covariance19_out_unnamed_covariance7_covariance_avm_byteenable;
    assign out_unnamed_covariance7_covariance_avm_burstcount = i_llvm_fpga_mem_unnamed_covariance7_covariance19_out_unnamed_covariance7_covariance_avm_burstcount;

    // dupName_0_regfree_osync_x(GPOUT,88)
    assign out_pipeline_dummy_out = i_llvm_fpga_pipeline_keep_going_covariance6_out_pipeline_dummy_out;

    // dupName_1_regfree_osync_x(GPOUT,89)
    assign out_pipeline_forked_out = i_llvm_fpga_pipeline_keep_going_covariance6_out_pipeline_forked_out;

    // dupName_2_regfree_osync_x(GPOUT,90)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_covariance6_out_pipeline_valid_out;

    // redist23_sync_together88_aunroll_x_in_i_valid_14(DELAY,295)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("SYNC"), .phase(4), .modulus(2), .reset_high(1'b0) )
    redist23_sync_together88_aunroll_x_in_i_valid_14 ( .xin(redist22_sync_together88_aunroll_x_in_i_valid_4_q), .xout(redist23_sync_together88_aunroll_x_in_i_valid_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist24_sync_together88_aunroll_x_in_i_valid_16(DELAY,296)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist24_sync_together88_aunroll_x_in_i_valid_16_delay_0 <= '0;
        end
        else
        begin
            redist24_sync_together88_aunroll_x_in_i_valid_16_delay_0 <= $unsigned(redist23_sync_together88_aunroll_x_in_i_valid_14_q);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist24_sync_together88_aunroll_x_in_i_valid_16_q <= redist24_sync_together88_aunroll_x_in_i_valid_16_delay_0;
        end
    end

    // redist25_sync_together88_aunroll_x_in_i_valid_17(DELAY,297)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist25_sync_together88_aunroll_x_in_i_valid_17_q <= '0;
        end
        else
        begin
            redist25_sync_together88_aunroll_x_in_i_valid_17_q <= $unsigned(redist24_sync_together88_aunroll_x_in_i_valid_16_q);
        end
    end

    // redist26_sync_together88_aunroll_x_in_i_valid_18(DELAY,298)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist26_sync_together88_aunroll_x_in_i_valid_18_q <= $unsigned(redist25_sync_together88_aunroll_x_in_i_valid_17_q);
        end
    end

    // valid_fanout_reg0(REG,197)@17 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist25_sync_together88_aunroll_x_in_i_valid_17_q);
        end
    end

    // redist49_i_covariance_b12_current_iter_isspec_covariance5_q_13(DELAY,321)
    dspba_delay_ver #( .width(1), .depth(13), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist49_i_covariance_b12_current_iter_isspec_covariance5_q_13 ( .xin(i_covariance_b12_current_iter_isspec_covariance5_q), .xout(redist49_i_covariance_b12_current_iter_isspec_covariance5_q_13_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist12_sync_together88_aunroll_x_in_c0_eni15_9_tpl_18_offset(CONSTANT,331)
    assign redist12_sync_together88_aunroll_x_in_c0_eni15_9_tpl_18_offset_q = $unsigned(4'b0011);

    // redist18_sync_together88_aunroll_x_in_c0_eni15_15_tpl_18_rdcnt(ADD,362)
    assign redist18_sync_together88_aunroll_x_in_c0_eni15_15_tpl_18_rdcnt_a = {1'b0, redist18_sync_together88_aunroll_x_in_c0_eni15_15_tpl_18_wraddr_q};
    assign redist18_sync_together88_aunroll_x_in_c0_eni15_15_tpl_18_rdcnt_b = {1'b0, redist12_sync_together88_aunroll_x_in_c0_eni15_9_tpl_18_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist18_sync_together88_aunroll_x_in_c0_eni15_15_tpl_18_rdcnt_o <= $unsigned(redist18_sync_together88_aunroll_x_in_c0_eni15_15_tpl_18_rdcnt_a) + $unsigned(redist18_sync_together88_aunroll_x_in_c0_eni15_15_tpl_18_rdcnt_b);
        end
    end
    assign redist18_sync_together88_aunroll_x_in_c0_eni15_15_tpl_18_rdcnt_q = redist18_sync_together88_aunroll_x_in_c0_eni15_15_tpl_18_rdcnt_o[4:0];

    // redist18_sync_together88_aunroll_x_in_c0_eni15_15_tpl_18_inputreg0(DELAY,357)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist18_sync_together88_aunroll_x_in_c0_eni15_15_tpl_18_inputreg0_q <= $unsigned(in_c0_eni15_15_tpl);
        end
    end

    // redist18_sync_together88_aunroll_x_in_c0_eni15_15_tpl_18_wraddr(COUNTER,360)
    // low=0, high=15, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist18_sync_together88_aunroll_x_in_c0_eni15_15_tpl_18_wraddr_i <= $unsigned(redist18_sync_together88_aunroll_x_in_c0_eni15_15_tpl_18_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist18_sync_together88_aunroll_x_in_c0_eni15_15_tpl_18_wraddr_q = redist18_sync_together88_aunroll_x_in_c0_eni15_15_tpl_18_wraddr_i[3:0];

    // redist18_sync_together88_aunroll_x_in_c0_eni15_15_tpl_18_mem(DUALMEM,359)
    assign redist18_sync_together88_aunroll_x_in_c0_eni15_15_tpl_18_mem_ia = $unsigned(redist18_sync_together88_aunroll_x_in_c0_eni15_15_tpl_18_inputreg0_q);
    assign redist18_sync_together88_aunroll_x_in_c0_eni15_15_tpl_18_mem_aa = redist18_sync_together88_aunroll_x_in_c0_eni15_15_tpl_18_wraddr_q;
    assign redist18_sync_together88_aunroll_x_in_c0_eni15_15_tpl_18_mem_ab = redist18_sync_together88_aunroll_x_in_c0_eni15_15_tpl_18_rdcnt_q[3:0];
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
    ) redist18_sync_together88_aunroll_x_in_c0_eni15_15_tpl_18_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist18_sync_together88_aunroll_x_in_c0_eni15_15_tpl_18_mem_aa),
        .data_a(redist18_sync_together88_aunroll_x_in_c0_eni15_15_tpl_18_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist18_sync_together88_aunroll_x_in_c0_eni15_15_tpl_18_mem_ab),
        .q_b(redist18_sync_together88_aunroll_x_in_c0_eni15_15_tpl_18_mem_iq),
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
    assign redist18_sync_together88_aunroll_x_in_c0_eni15_15_tpl_18_mem_q = redist18_sync_together88_aunroll_x_in_c0_eni15_15_tpl_18_mem_iq[31:0];

    // redist18_sync_together88_aunroll_x_in_c0_eni15_15_tpl_18_outputreg0(DELAY,358)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist18_sync_together88_aunroll_x_in_c0_eni15_15_tpl_18_outputreg0_q <= $unsigned(redist18_sync_together88_aunroll_x_in_c0_eni15_15_tpl_18_mem_q);
        end
    end

    // redist17_sync_together88_aunroll_x_in_c0_eni15_14_tpl_18_rdcnt(ADD,356)
    assign redist17_sync_together88_aunroll_x_in_c0_eni15_14_tpl_18_rdcnt_a = {1'b0, redist17_sync_together88_aunroll_x_in_c0_eni15_14_tpl_18_wraddr_q};
    assign redist17_sync_together88_aunroll_x_in_c0_eni15_14_tpl_18_rdcnt_b = {1'b0, redist12_sync_together88_aunroll_x_in_c0_eni15_9_tpl_18_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist17_sync_together88_aunroll_x_in_c0_eni15_14_tpl_18_rdcnt_o <= $unsigned(redist17_sync_together88_aunroll_x_in_c0_eni15_14_tpl_18_rdcnt_a) + $unsigned(redist17_sync_together88_aunroll_x_in_c0_eni15_14_tpl_18_rdcnt_b);
        end
    end
    assign redist17_sync_together88_aunroll_x_in_c0_eni15_14_tpl_18_rdcnt_q = redist17_sync_together88_aunroll_x_in_c0_eni15_14_tpl_18_rdcnt_o[4:0];

    // redist17_sync_together88_aunroll_x_in_c0_eni15_14_tpl_18_inputreg0(DELAY,351)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist17_sync_together88_aunroll_x_in_c0_eni15_14_tpl_18_inputreg0_q <= $unsigned(in_c0_eni15_14_tpl);
        end
    end

    // redist17_sync_together88_aunroll_x_in_c0_eni15_14_tpl_18_wraddr(COUNTER,354)
    // low=0, high=15, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist17_sync_together88_aunroll_x_in_c0_eni15_14_tpl_18_wraddr_i <= $unsigned(redist17_sync_together88_aunroll_x_in_c0_eni15_14_tpl_18_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist17_sync_together88_aunroll_x_in_c0_eni15_14_tpl_18_wraddr_q = redist17_sync_together88_aunroll_x_in_c0_eni15_14_tpl_18_wraddr_i[3:0];

    // redist17_sync_together88_aunroll_x_in_c0_eni15_14_tpl_18_mem(DUALMEM,353)
    assign redist17_sync_together88_aunroll_x_in_c0_eni15_14_tpl_18_mem_ia = $unsigned(redist17_sync_together88_aunroll_x_in_c0_eni15_14_tpl_18_inputreg0_q);
    assign redist17_sync_together88_aunroll_x_in_c0_eni15_14_tpl_18_mem_aa = redist17_sync_together88_aunroll_x_in_c0_eni15_14_tpl_18_wraddr_q;
    assign redist17_sync_together88_aunroll_x_in_c0_eni15_14_tpl_18_mem_ab = redist17_sync_together88_aunroll_x_in_c0_eni15_14_tpl_18_rdcnt_q[3:0];
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
    ) redist17_sync_together88_aunroll_x_in_c0_eni15_14_tpl_18_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist17_sync_together88_aunroll_x_in_c0_eni15_14_tpl_18_mem_aa),
        .data_a(redist17_sync_together88_aunroll_x_in_c0_eni15_14_tpl_18_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist17_sync_together88_aunroll_x_in_c0_eni15_14_tpl_18_mem_ab),
        .q_b(redist17_sync_together88_aunroll_x_in_c0_eni15_14_tpl_18_mem_iq),
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
    assign redist17_sync_together88_aunroll_x_in_c0_eni15_14_tpl_18_mem_q = redist17_sync_together88_aunroll_x_in_c0_eni15_14_tpl_18_mem_iq[31:0];

    // redist17_sync_together88_aunroll_x_in_c0_eni15_14_tpl_18_outputreg0(DELAY,352)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist17_sync_together88_aunroll_x_in_c0_eni15_14_tpl_18_outputreg0_q <= $unsigned(redist17_sync_together88_aunroll_x_in_c0_eni15_14_tpl_18_mem_q);
        end
    end

    // redist16_sync_together88_aunroll_x_in_c0_eni15_13_tpl_18_rdcnt(ADD,350)
    assign redist16_sync_together88_aunroll_x_in_c0_eni15_13_tpl_18_rdcnt_a = {1'b0, redist16_sync_together88_aunroll_x_in_c0_eni15_13_tpl_18_wraddr_q};
    assign redist16_sync_together88_aunroll_x_in_c0_eni15_13_tpl_18_rdcnt_b = {1'b0, redist12_sync_together88_aunroll_x_in_c0_eni15_9_tpl_18_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist16_sync_together88_aunroll_x_in_c0_eni15_13_tpl_18_rdcnt_o <= $unsigned(redist16_sync_together88_aunroll_x_in_c0_eni15_13_tpl_18_rdcnt_a) + $unsigned(redist16_sync_together88_aunroll_x_in_c0_eni15_13_tpl_18_rdcnt_b);
        end
    end
    assign redist16_sync_together88_aunroll_x_in_c0_eni15_13_tpl_18_rdcnt_q = redist16_sync_together88_aunroll_x_in_c0_eni15_13_tpl_18_rdcnt_o[4:0];

    // redist16_sync_together88_aunroll_x_in_c0_eni15_13_tpl_18_inputreg0(DELAY,345)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist16_sync_together88_aunroll_x_in_c0_eni15_13_tpl_18_inputreg0_q <= $unsigned(in_c0_eni15_13_tpl);
        end
    end

    // redist16_sync_together88_aunroll_x_in_c0_eni15_13_tpl_18_wraddr(COUNTER,348)
    // low=0, high=15, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist16_sync_together88_aunroll_x_in_c0_eni15_13_tpl_18_wraddr_i <= $unsigned(redist16_sync_together88_aunroll_x_in_c0_eni15_13_tpl_18_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist16_sync_together88_aunroll_x_in_c0_eni15_13_tpl_18_wraddr_q = redist16_sync_together88_aunroll_x_in_c0_eni15_13_tpl_18_wraddr_i[3:0];

    // redist16_sync_together88_aunroll_x_in_c0_eni15_13_tpl_18_mem(DUALMEM,347)
    assign redist16_sync_together88_aunroll_x_in_c0_eni15_13_tpl_18_mem_ia = $unsigned(redist16_sync_together88_aunroll_x_in_c0_eni15_13_tpl_18_inputreg0_q);
    assign redist16_sync_together88_aunroll_x_in_c0_eni15_13_tpl_18_mem_aa = redist16_sync_together88_aunroll_x_in_c0_eni15_13_tpl_18_wraddr_q;
    assign redist16_sync_together88_aunroll_x_in_c0_eni15_13_tpl_18_mem_ab = redist16_sync_together88_aunroll_x_in_c0_eni15_13_tpl_18_rdcnt_q[3:0];
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
    ) redist16_sync_together88_aunroll_x_in_c0_eni15_13_tpl_18_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist16_sync_together88_aunroll_x_in_c0_eni15_13_tpl_18_mem_aa),
        .data_a(redist16_sync_together88_aunroll_x_in_c0_eni15_13_tpl_18_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist16_sync_together88_aunroll_x_in_c0_eni15_13_tpl_18_mem_ab),
        .q_b(redist16_sync_together88_aunroll_x_in_c0_eni15_13_tpl_18_mem_iq),
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
    assign redist16_sync_together88_aunroll_x_in_c0_eni15_13_tpl_18_mem_q = redist16_sync_together88_aunroll_x_in_c0_eni15_13_tpl_18_mem_iq[31:0];

    // redist16_sync_together88_aunroll_x_in_c0_eni15_13_tpl_18_outputreg0(DELAY,346)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist16_sync_together88_aunroll_x_in_c0_eni15_13_tpl_18_outputreg0_q <= $unsigned(redist16_sync_together88_aunroll_x_in_c0_eni15_13_tpl_18_mem_q);
        end
    end

    // redist15_sync_together88_aunroll_x_in_c0_eni15_12_tpl_18(DELAY,287)
    dspba_delay_ver #( .width(1), .depth(18), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist15_sync_together88_aunroll_x_in_c0_eni15_12_tpl_18 ( .xin(in_c0_eni15_12_tpl), .xout(redist15_sync_together88_aunroll_x_in_c0_eni15_12_tpl_18_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist14_sync_together88_aunroll_x_in_c0_eni15_11_tpl_18_rdcnt(ADD,344)
    assign redist14_sync_together88_aunroll_x_in_c0_eni15_11_tpl_18_rdcnt_a = {1'b0, redist14_sync_together88_aunroll_x_in_c0_eni15_11_tpl_18_wraddr_q};
    assign redist14_sync_together88_aunroll_x_in_c0_eni15_11_tpl_18_rdcnt_b = {1'b0, redist12_sync_together88_aunroll_x_in_c0_eni15_9_tpl_18_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist14_sync_together88_aunroll_x_in_c0_eni15_11_tpl_18_rdcnt_o <= $unsigned(redist14_sync_together88_aunroll_x_in_c0_eni15_11_tpl_18_rdcnt_a) + $unsigned(redist14_sync_together88_aunroll_x_in_c0_eni15_11_tpl_18_rdcnt_b);
        end
    end
    assign redist14_sync_together88_aunroll_x_in_c0_eni15_11_tpl_18_rdcnt_q = redist14_sync_together88_aunroll_x_in_c0_eni15_11_tpl_18_rdcnt_o[4:0];

    // redist14_sync_together88_aunroll_x_in_c0_eni15_11_tpl_18_inputreg0(DELAY,339)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist14_sync_together88_aunroll_x_in_c0_eni15_11_tpl_18_inputreg0_q <= $unsigned(in_c0_eni15_11_tpl);
        end
    end

    // redist14_sync_together88_aunroll_x_in_c0_eni15_11_tpl_18_wraddr(COUNTER,342)
    // low=0, high=15, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist14_sync_together88_aunroll_x_in_c0_eni15_11_tpl_18_wraddr_i <= $unsigned(redist14_sync_together88_aunroll_x_in_c0_eni15_11_tpl_18_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist14_sync_together88_aunroll_x_in_c0_eni15_11_tpl_18_wraddr_q = redist14_sync_together88_aunroll_x_in_c0_eni15_11_tpl_18_wraddr_i[3:0];

    // redist14_sync_together88_aunroll_x_in_c0_eni15_11_tpl_18_mem(DUALMEM,341)
    assign redist14_sync_together88_aunroll_x_in_c0_eni15_11_tpl_18_mem_ia = $unsigned(redist14_sync_together88_aunroll_x_in_c0_eni15_11_tpl_18_inputreg0_q);
    assign redist14_sync_together88_aunroll_x_in_c0_eni15_11_tpl_18_mem_aa = redist14_sync_together88_aunroll_x_in_c0_eni15_11_tpl_18_wraddr_q;
    assign redist14_sync_together88_aunroll_x_in_c0_eni15_11_tpl_18_mem_ab = redist14_sync_together88_aunroll_x_in_c0_eni15_11_tpl_18_rdcnt_q[3:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(33),
        .widthad_a(4),
        .numwords_a(16),
        .width_b(33),
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
    ) redist14_sync_together88_aunroll_x_in_c0_eni15_11_tpl_18_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist14_sync_together88_aunroll_x_in_c0_eni15_11_tpl_18_mem_aa),
        .data_a(redist14_sync_together88_aunroll_x_in_c0_eni15_11_tpl_18_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist14_sync_together88_aunroll_x_in_c0_eni15_11_tpl_18_mem_ab),
        .q_b(redist14_sync_together88_aunroll_x_in_c0_eni15_11_tpl_18_mem_iq),
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
    assign redist14_sync_together88_aunroll_x_in_c0_eni15_11_tpl_18_mem_q = redist14_sync_together88_aunroll_x_in_c0_eni15_11_tpl_18_mem_iq[32:0];

    // redist14_sync_together88_aunroll_x_in_c0_eni15_11_tpl_18_outputreg0(DELAY,340)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist14_sync_together88_aunroll_x_in_c0_eni15_11_tpl_18_outputreg0_q <= $unsigned(redist14_sync_together88_aunroll_x_in_c0_eni15_11_tpl_18_mem_q);
        end
    end

    // redist13_sync_together88_aunroll_x_in_c0_eni15_10_tpl_18_rdcnt(ADD,338)
    assign redist13_sync_together88_aunroll_x_in_c0_eni15_10_tpl_18_rdcnt_a = {1'b0, redist13_sync_together88_aunroll_x_in_c0_eni15_10_tpl_18_wraddr_q};
    assign redist13_sync_together88_aunroll_x_in_c0_eni15_10_tpl_18_rdcnt_b = {1'b0, redist12_sync_together88_aunroll_x_in_c0_eni15_9_tpl_18_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist13_sync_together88_aunroll_x_in_c0_eni15_10_tpl_18_rdcnt_o <= $unsigned(redist13_sync_together88_aunroll_x_in_c0_eni15_10_tpl_18_rdcnt_a) + $unsigned(redist13_sync_together88_aunroll_x_in_c0_eni15_10_tpl_18_rdcnt_b);
        end
    end
    assign redist13_sync_together88_aunroll_x_in_c0_eni15_10_tpl_18_rdcnt_q = redist13_sync_together88_aunroll_x_in_c0_eni15_10_tpl_18_rdcnt_o[4:0];

    // redist13_sync_together88_aunroll_x_in_c0_eni15_10_tpl_18_inputreg0(DELAY,333)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist13_sync_together88_aunroll_x_in_c0_eni15_10_tpl_18_inputreg0_q <= $unsigned(in_c0_eni15_10_tpl);
        end
    end

    // redist13_sync_together88_aunroll_x_in_c0_eni15_10_tpl_18_wraddr(COUNTER,336)
    // low=0, high=15, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist13_sync_together88_aunroll_x_in_c0_eni15_10_tpl_18_wraddr_i <= $unsigned(redist13_sync_together88_aunroll_x_in_c0_eni15_10_tpl_18_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist13_sync_together88_aunroll_x_in_c0_eni15_10_tpl_18_wraddr_q = redist13_sync_together88_aunroll_x_in_c0_eni15_10_tpl_18_wraddr_i[3:0];

    // redist13_sync_together88_aunroll_x_in_c0_eni15_10_tpl_18_mem(DUALMEM,335)
    assign redist13_sync_together88_aunroll_x_in_c0_eni15_10_tpl_18_mem_ia = $unsigned(redist13_sync_together88_aunroll_x_in_c0_eni15_10_tpl_18_inputreg0_q);
    assign redist13_sync_together88_aunroll_x_in_c0_eni15_10_tpl_18_mem_aa = redist13_sync_together88_aunroll_x_in_c0_eni15_10_tpl_18_wraddr_q;
    assign redist13_sync_together88_aunroll_x_in_c0_eni15_10_tpl_18_mem_ab = redist13_sync_together88_aunroll_x_in_c0_eni15_10_tpl_18_rdcnt_q[3:0];
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
    ) redist13_sync_together88_aunroll_x_in_c0_eni15_10_tpl_18_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist13_sync_together88_aunroll_x_in_c0_eni15_10_tpl_18_mem_aa),
        .data_a(redist13_sync_together88_aunroll_x_in_c0_eni15_10_tpl_18_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist13_sync_together88_aunroll_x_in_c0_eni15_10_tpl_18_mem_ab),
        .q_b(redist13_sync_together88_aunroll_x_in_c0_eni15_10_tpl_18_mem_iq),
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
    assign redist13_sync_together88_aunroll_x_in_c0_eni15_10_tpl_18_mem_q = redist13_sync_together88_aunroll_x_in_c0_eni15_10_tpl_18_mem_iq[31:0];

    // redist13_sync_together88_aunroll_x_in_c0_eni15_10_tpl_18_outputreg0(DELAY,334)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist13_sync_together88_aunroll_x_in_c0_eni15_10_tpl_18_outputreg0_q <= $unsigned(redist13_sync_together88_aunroll_x_in_c0_eni15_10_tpl_18_mem_q);
        end
    end

    // redist12_sync_together88_aunroll_x_in_c0_eni15_9_tpl_18_rdcnt(ADD,332)
    assign redist12_sync_together88_aunroll_x_in_c0_eni15_9_tpl_18_rdcnt_a = {1'b0, redist12_sync_together88_aunroll_x_in_c0_eni15_9_tpl_18_wraddr_q};
    assign redist12_sync_together88_aunroll_x_in_c0_eni15_9_tpl_18_rdcnt_b = {1'b0, redist12_sync_together88_aunroll_x_in_c0_eni15_9_tpl_18_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist12_sync_together88_aunroll_x_in_c0_eni15_9_tpl_18_rdcnt_o <= $unsigned(redist12_sync_together88_aunroll_x_in_c0_eni15_9_tpl_18_rdcnt_a) + $unsigned(redist12_sync_together88_aunroll_x_in_c0_eni15_9_tpl_18_rdcnt_b);
        end
    end
    assign redist12_sync_together88_aunroll_x_in_c0_eni15_9_tpl_18_rdcnt_q = redist12_sync_together88_aunroll_x_in_c0_eni15_9_tpl_18_rdcnt_o[4:0];

    // redist12_sync_together88_aunroll_x_in_c0_eni15_9_tpl_18_inputreg0(DELAY,327)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist12_sync_together88_aunroll_x_in_c0_eni15_9_tpl_18_inputreg0_q <= $unsigned(in_c0_eni15_9_tpl);
        end
    end

    // redist12_sync_together88_aunroll_x_in_c0_eni15_9_tpl_18_wraddr(COUNTER,330)
    // low=0, high=15, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist12_sync_together88_aunroll_x_in_c0_eni15_9_tpl_18_wraddr_i <= $unsigned(redist12_sync_together88_aunroll_x_in_c0_eni15_9_tpl_18_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist12_sync_together88_aunroll_x_in_c0_eni15_9_tpl_18_wraddr_q = redist12_sync_together88_aunroll_x_in_c0_eni15_9_tpl_18_wraddr_i[3:0];

    // redist12_sync_together88_aunroll_x_in_c0_eni15_9_tpl_18_mem(DUALMEM,329)
    assign redist12_sync_together88_aunroll_x_in_c0_eni15_9_tpl_18_mem_ia = $unsigned(redist12_sync_together88_aunroll_x_in_c0_eni15_9_tpl_18_inputreg0_q);
    assign redist12_sync_together88_aunroll_x_in_c0_eni15_9_tpl_18_mem_aa = redist12_sync_together88_aunroll_x_in_c0_eni15_9_tpl_18_wraddr_q;
    assign redist12_sync_together88_aunroll_x_in_c0_eni15_9_tpl_18_mem_ab = redist12_sync_together88_aunroll_x_in_c0_eni15_9_tpl_18_rdcnt_q[3:0];
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
    ) redist12_sync_together88_aunroll_x_in_c0_eni15_9_tpl_18_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist12_sync_together88_aunroll_x_in_c0_eni15_9_tpl_18_mem_aa),
        .data_a(redist12_sync_together88_aunroll_x_in_c0_eni15_9_tpl_18_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist12_sync_together88_aunroll_x_in_c0_eni15_9_tpl_18_mem_ab),
        .q_b(redist12_sync_together88_aunroll_x_in_c0_eni15_9_tpl_18_mem_iq),
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
    assign redist12_sync_together88_aunroll_x_in_c0_eni15_9_tpl_18_mem_q = redist12_sync_together88_aunroll_x_in_c0_eni15_9_tpl_18_mem_iq[31:0];

    // redist12_sync_together88_aunroll_x_in_c0_eni15_9_tpl_18_outputreg0(DELAY,328)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist12_sync_together88_aunroll_x_in_c0_eni15_9_tpl_18_outputreg0_q <= $unsigned(redist12_sync_together88_aunroll_x_in_c0_eni15_9_tpl_18_mem_q);
        end
    end

    // redist11_sync_together88_aunroll_x_in_c0_eni15_8_tpl_4(DELAY,283)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist11_sync_together88_aunroll_x_in_c0_eni15_8_tpl_4_delay_0 <= $unsigned(in_c0_eni15_8_tpl);
            redist11_sync_together88_aunroll_x_in_c0_eni15_8_tpl_4_delay_1 <= redist11_sync_together88_aunroll_x_in_c0_eni15_8_tpl_4_delay_0;
            redist11_sync_together88_aunroll_x_in_c0_eni15_8_tpl_4_delay_2 <= redist11_sync_together88_aunroll_x_in_c0_eni15_8_tpl_4_delay_1;
            redist11_sync_together88_aunroll_x_in_c0_eni15_8_tpl_4_q <= redist11_sync_together88_aunroll_x_in_c0_eni15_8_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_push_i1_notcmp2287_push67_covariance0_element_extension2_x(BITJOIN,159)@4
    assign i_llvm_fpga_push_i1_notcmp2287_push67_covariance0_element_extension2_x_q = {i_arrayidx403_covariance0_c_i7_01_x_q, i_llvm_fpga_pop_i1_notcmp2287_pop67_covariance0_i_llvm_fpga_pop_i1_notcmp2287_pop67_covariance44_mux_x_q};

    // valid_fanout_reg37(REG,234)@0 + 1
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

    // valid_fanout_reg36(REG,233)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg36_q <= $unsigned(redist20_sync_together88_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp2287_push67_covariance0_i_llvm_fpga_push_i1_notcmp2287_push67_covariance1_x(FIFODELAY,160)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i1_notcmp2287_push67_covariance0_i_llvm_fpga_push_i1_notcmp2287_push67_covariance1_x_i_stall = ~ (valid_fanout_reg37_q & i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_notcmp2287_push67_covariance0_i_llvm_fpga_push_i1_notcmp2287_push67_covariance1_x_i_valid = valid_fanout_reg36_q & redist30_i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i1_notcmp2287_push67_covariance0_i_llvm_fpga_push_i1_notcmp2287_push67_covariance1_x_i_data = i_llvm_fpga_push_i1_notcmp2287_push67_covariance0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_notcmp2287_push67_covariance0_i_llvm_fpga_push_i1_notcmp2287_push67_covariance1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_notcmp2287_push67_covariance0_i_llvm_fpga_push_i1_notcmp2287_push67_covariance1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_notcmp2287_push67_covariance0_i_llvm_fpga_push_i1_notcmp2287_push67_covariance1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_notcmp2287_push67_covariance0_i_llvm_fpga_push_i1_notcmp2287_push67_covariance1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_notcmp2287_push67_covariance0_i_llvm_fpga_push_i1_notcmp2287_push67_covariance1_x (
        .i_valid(i_llvm_fpga_push_i1_notcmp2287_push67_covariance0_i_llvm_fpga_push_i1_notcmp2287_push67_covariance1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_notcmp2287_push67_covariance0_i_llvm_fpga_push_i1_notcmp2287_push67_covariance1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_notcmp2287_push67_covariance0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_notcmp2287_push67_covariance0_i_llvm_fpga_push_i1_notcmp2287_push67_covariance1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_notcmp2287_push67_covariance0_adapt_scalar_trunc4_sel_x(BITSELECT,162)@4
    assign i_llvm_fpga_push_i1_notcmp2287_push67_covariance0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_notcmp2287_push67_covariance0_i_llvm_fpga_push_i1_notcmp2287_push67_covariance1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_notcmp2287_pop67_covariance0_i_llvm_fpga_pop_i1_notcmp2287_pop67_covariance44_mux_x(MUX,136)@4
    assign i_llvm_fpga_pop_i1_notcmp2287_pop67_covariance0_i_llvm_fpga_pop_i1_notcmp2287_pop67_covariance44_mux_x_s = redist42_i_llvm_fpga_forked_covariance_b12_forked_covariance3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i1_notcmp2287_pop67_covariance0_i_llvm_fpga_pop_i1_notcmp2287_pop67_covariance44_mux_x_s or i_llvm_fpga_push_i1_notcmp2287_push67_covariance0_adapt_scalar_trunc4_sel_x_b or redist11_sync_together88_aunroll_x_in_c0_eni15_8_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i1_notcmp2287_pop67_covariance0_i_llvm_fpga_pop_i1_notcmp2287_pop67_covariance44_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_notcmp2287_pop67_covariance0_i_llvm_fpga_pop_i1_notcmp2287_pop67_covariance44_mux_x_q = i_llvm_fpga_push_i1_notcmp2287_push67_covariance0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_notcmp2287_pop67_covariance0_i_llvm_fpga_pop_i1_notcmp2287_pop67_covariance44_mux_x_q = redist11_sync_together88_aunroll_x_in_c0_eni15_8_tpl_4_q;
            default : i_llvm_fpga_pop_i1_notcmp2287_pop67_covariance0_i_llvm_fpga_pop_i1_notcmp2287_pop67_covariance44_mux_x_q = 1'b0;
        endcase
    end

    // redist37_i_llvm_fpga_pop_i1_notcmp2287_pop67_covariance0_i_llvm_fpga_pop_i1_notcmp2287_pop67_covariance44_mux_x_q_14(DELAY,309)
    dspba_delay_ver #( .width(1), .depth(14), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist37_i_llvm_fpga_pop_i1_notcmp2287_pop67_covariance0_i_llvm_fpga_pop_i1_notcmp2287_pop67_covariance44_mux_x_q_14 ( .xin(i_llvm_fpga_pop_i1_notcmp2287_pop67_covariance0_i_llvm_fpga_pop_i1_notcmp2287_pop67_covariance44_mux_x_q), .xout(redist37_i_llvm_fpga_pop_i1_notcmp2287_pop67_covariance0_i_llvm_fpga_pop_i1_notcmp2287_pop67_covariance44_mux_x_q_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist10_sync_together88_aunroll_x_in_c0_eni15_7_tpl_4(DELAY,282)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_sync_together88_aunroll_x_in_c0_eni15_7_tpl_4_delay_0 <= $unsigned(in_c0_eni15_7_tpl);
            redist10_sync_together88_aunroll_x_in_c0_eni15_7_tpl_4_delay_1 <= redist10_sync_together88_aunroll_x_in_c0_eni15_7_tpl_4_delay_0;
            redist10_sync_together88_aunroll_x_in_c0_eni15_7_tpl_4_delay_2 <= redist10_sync_together88_aunroll_x_in_c0_eni15_7_tpl_4_delay_1;
            redist10_sync_together88_aunroll_x_in_c0_eni15_7_tpl_4_q <= redist10_sync_together88_aunroll_x_in_c0_eni15_7_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_push_i1_forked2386_push66_covariance0_element_extension2_x(BITJOIN,153)@4
    assign i_llvm_fpga_push_i1_forked2386_push66_covariance0_element_extension2_x_q = {i_arrayidx403_covariance0_c_i7_01_x_q, i_llvm_fpga_pop_i1_forked2386_pop66_covariance0_i_llvm_fpga_pop_i1_forked2386_pop66_covariance42_mux_x_q};

    // valid_fanout_reg34(REG,231)@0 + 1
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

    // valid_fanout_reg33(REG,230)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg33_q <= $unsigned(redist20_sync_together88_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_forked2386_push66_covariance0_i_llvm_fpga_push_i1_forked2386_push66_covariance1_x(FIFODELAY,154)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i1_forked2386_push66_covariance0_i_llvm_fpga_push_i1_forked2386_push66_covariance1_x_i_stall = ~ (valid_fanout_reg34_q & i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_forked2386_push66_covariance0_i_llvm_fpga_push_i1_forked2386_push66_covariance1_x_i_valid = valid_fanout_reg33_q & redist30_i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i1_forked2386_push66_covariance0_i_llvm_fpga_push_i1_forked2386_push66_covariance1_x_i_data = i_llvm_fpga_push_i1_forked2386_push66_covariance0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_forked2386_push66_covariance0_i_llvm_fpga_push_i1_forked2386_push66_covariance1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_forked2386_push66_covariance0_i_llvm_fpga_push_i1_forked2386_push66_covariance1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_forked2386_push66_covariance0_i_llvm_fpga_push_i1_forked2386_push66_covariance1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_forked2386_push66_covariance0_i_llvm_fpga_push_i1_forked2386_push66_covariance1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_forked2386_push66_covariance0_i_llvm_fpga_push_i1_forked2386_push66_covariance1_x (
        .i_valid(i_llvm_fpga_push_i1_forked2386_push66_covariance0_i_llvm_fpga_push_i1_forked2386_push66_covariance1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_forked2386_push66_covariance0_i_llvm_fpga_push_i1_forked2386_push66_covariance1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_forked2386_push66_covariance0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_forked2386_push66_covariance0_i_llvm_fpga_push_i1_forked2386_push66_covariance1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_forked2386_push66_covariance0_adapt_scalar_trunc4_sel_x(BITSELECT,156)@4
    assign i_llvm_fpga_push_i1_forked2386_push66_covariance0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_forked2386_push66_covariance0_i_llvm_fpga_push_i1_forked2386_push66_covariance1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_forked2386_pop66_covariance0_i_llvm_fpga_pop_i1_forked2386_pop66_covariance42_mux_x(MUX,135)@4
    assign i_llvm_fpga_pop_i1_forked2386_pop66_covariance0_i_llvm_fpga_pop_i1_forked2386_pop66_covariance42_mux_x_s = redist42_i_llvm_fpga_forked_covariance_b12_forked_covariance3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i1_forked2386_pop66_covariance0_i_llvm_fpga_pop_i1_forked2386_pop66_covariance42_mux_x_s or i_llvm_fpga_push_i1_forked2386_push66_covariance0_adapt_scalar_trunc4_sel_x_b or redist10_sync_together88_aunroll_x_in_c0_eni15_7_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i1_forked2386_pop66_covariance0_i_llvm_fpga_pop_i1_forked2386_pop66_covariance42_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_forked2386_pop66_covariance0_i_llvm_fpga_pop_i1_forked2386_pop66_covariance42_mux_x_q = i_llvm_fpga_push_i1_forked2386_push66_covariance0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_forked2386_pop66_covariance0_i_llvm_fpga_pop_i1_forked2386_pop66_covariance42_mux_x_q = redist10_sync_together88_aunroll_x_in_c0_eni15_7_tpl_4_q;
            default : i_llvm_fpga_pop_i1_forked2386_pop66_covariance0_i_llvm_fpga_pop_i1_forked2386_pop66_covariance42_mux_x_q = 1'b0;
        endcase
    end

    // redist38_i_llvm_fpga_pop_i1_forked2386_pop66_covariance0_i_llvm_fpga_pop_i1_forked2386_pop66_covariance42_mux_x_q_14(DELAY,310)
    dspba_delay_ver #( .width(1), .depth(14), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist38_i_llvm_fpga_pop_i1_forked2386_pop66_covariance0_i_llvm_fpga_pop_i1_forked2386_pop66_covariance42_mux_x_q_14 ( .xin(i_llvm_fpga_pop_i1_forked2386_pop66_covariance0_i_llvm_fpga_pop_i1_forked2386_pop66_covariance42_mux_x_q), .xout(redist38_i_llvm_fpga_pop_i1_forked2386_pop66_covariance0_i_llvm_fpga_pop_i1_forked2386_pop66_covariance42_mux_x_q_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist9_sync_together88_aunroll_x_in_c0_eni15_6_tpl_4(DELAY,281)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist9_sync_together88_aunroll_x_in_c0_eni15_6_tpl_4_delay_0 <= $unsigned(in_c0_eni15_6_tpl);
            redist9_sync_together88_aunroll_x_in_c0_eni15_6_tpl_4_delay_1 <= redist9_sync_together88_aunroll_x_in_c0_eni15_6_tpl_4_delay_0;
            redist9_sync_together88_aunroll_x_in_c0_eni15_6_tpl_4_delay_2 <= redist9_sync_together88_aunroll_x_in_c0_eni15_6_tpl_4_delay_1;
            redist9_sync_together88_aunroll_x_in_c0_eni15_6_tpl_4_q <= redist9_sync_together88_aunroll_x_in_c0_eni15_6_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_push_i1_notcmp2782_push64_covariance0_element_extension2_x(BITJOIN,165)@4
    assign i_llvm_fpga_push_i1_notcmp2782_push64_covariance0_element_extension2_x_q = {i_arrayidx403_covariance0_c_i7_01_x_q, i_llvm_fpga_pop_i1_notcmp2782_pop64_covariance0_i_llvm_fpga_pop_i1_notcmp2782_pop64_covariance40_mux_x_q};

    // valid_fanout_reg31(REG,228)@0 + 1
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

    // valid_fanout_reg30(REG,227)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg30_q <= $unsigned(redist20_sync_together88_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp2782_push64_covariance0_i_llvm_fpga_push_i1_notcmp2782_push64_covariance1_x(FIFODELAY,166)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i1_notcmp2782_push64_covariance0_i_llvm_fpga_push_i1_notcmp2782_push64_covariance1_x_i_stall = ~ (valid_fanout_reg31_q & i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_notcmp2782_push64_covariance0_i_llvm_fpga_push_i1_notcmp2782_push64_covariance1_x_i_valid = valid_fanout_reg30_q & redist30_i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i1_notcmp2782_push64_covariance0_i_llvm_fpga_push_i1_notcmp2782_push64_covariance1_x_i_data = i_llvm_fpga_push_i1_notcmp2782_push64_covariance0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_notcmp2782_push64_covariance0_i_llvm_fpga_push_i1_notcmp2782_push64_covariance1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_notcmp2782_push64_covariance0_i_llvm_fpga_push_i1_notcmp2782_push64_covariance1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_notcmp2782_push64_covariance0_i_llvm_fpga_push_i1_notcmp2782_push64_covariance1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_notcmp2782_push64_covariance0_i_llvm_fpga_push_i1_notcmp2782_push64_covariance1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_notcmp2782_push64_covariance0_i_llvm_fpga_push_i1_notcmp2782_push64_covariance1_x (
        .i_valid(i_llvm_fpga_push_i1_notcmp2782_push64_covariance0_i_llvm_fpga_push_i1_notcmp2782_push64_covariance1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_notcmp2782_push64_covariance0_i_llvm_fpga_push_i1_notcmp2782_push64_covariance1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_notcmp2782_push64_covariance0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_notcmp2782_push64_covariance0_i_llvm_fpga_push_i1_notcmp2782_push64_covariance1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_notcmp2782_push64_covariance0_adapt_scalar_trunc4_sel_x(BITSELECT,168)@4
    assign i_llvm_fpga_push_i1_notcmp2782_push64_covariance0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_notcmp2782_push64_covariance0_i_llvm_fpga_push_i1_notcmp2782_push64_covariance1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_notcmp2782_pop64_covariance0_i_llvm_fpga_pop_i1_notcmp2782_pop64_covariance40_mux_x(MUX,137)@4
    assign i_llvm_fpga_pop_i1_notcmp2782_pop64_covariance0_i_llvm_fpga_pop_i1_notcmp2782_pop64_covariance40_mux_x_s = redist42_i_llvm_fpga_forked_covariance_b12_forked_covariance3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i1_notcmp2782_pop64_covariance0_i_llvm_fpga_pop_i1_notcmp2782_pop64_covariance40_mux_x_s or i_llvm_fpga_push_i1_notcmp2782_push64_covariance0_adapt_scalar_trunc4_sel_x_b or redist9_sync_together88_aunroll_x_in_c0_eni15_6_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i1_notcmp2782_pop64_covariance0_i_llvm_fpga_pop_i1_notcmp2782_pop64_covariance40_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_notcmp2782_pop64_covariance0_i_llvm_fpga_pop_i1_notcmp2782_pop64_covariance40_mux_x_q = i_llvm_fpga_push_i1_notcmp2782_push64_covariance0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_notcmp2782_pop64_covariance0_i_llvm_fpga_pop_i1_notcmp2782_pop64_covariance40_mux_x_q = redist9_sync_together88_aunroll_x_in_c0_eni15_6_tpl_4_q;
            default : i_llvm_fpga_pop_i1_notcmp2782_pop64_covariance0_i_llvm_fpga_pop_i1_notcmp2782_pop64_covariance40_mux_x_q = 1'b0;
        endcase
    end

    // redist36_i_llvm_fpga_pop_i1_notcmp2782_pop64_covariance0_i_llvm_fpga_pop_i1_notcmp2782_pop64_covariance40_mux_x_q_14(DELAY,308)
    dspba_delay_ver #( .width(1), .depth(14), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist36_i_llvm_fpga_pop_i1_notcmp2782_pop64_covariance0_i_llvm_fpga_pop_i1_notcmp2782_pop64_covariance40_mux_x_q_14 ( .xin(i_llvm_fpga_pop_i1_notcmp2782_pop64_covariance0_i_llvm_fpga_pop_i1_notcmp2782_pop64_covariance40_mux_x_q), .xout(redist36_i_llvm_fpga_pop_i1_notcmp2782_pop64_covariance0_i_llvm_fpga_pop_i1_notcmp2782_pop64_covariance40_mux_x_q_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist34_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance38_mux_x_q_14_offset(CONSTANT,367)
    assign redist34_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance38_mux_x_q_14_offset_q = $unsigned(4'b0111);

    // redist34_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance38_mux_x_q_14_rdcnt(ADD,368)
    assign redist34_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance38_mux_x_q_14_rdcnt_a = {1'b0, redist34_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance38_mux_x_q_14_wraddr_q};
    assign redist34_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance38_mux_x_q_14_rdcnt_b = {1'b0, redist34_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance38_mux_x_q_14_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist34_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance38_mux_x_q_14_rdcnt_o <= $unsigned(redist34_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance38_mux_x_q_14_rdcnt_a) + $unsigned(redist34_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance38_mux_x_q_14_rdcnt_b);
        end
    end
    assign redist34_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance38_mux_x_q_14_rdcnt_q = redist34_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance38_mux_x_q_14_rdcnt_o[4:0];

    // redist8_sync_together88_aunroll_x_in_c0_eni15_5_tpl_4_inputreg0(DELAY,326)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_sync_together88_aunroll_x_in_c0_eni15_5_tpl_4_inputreg0_q <= $unsigned(in_c0_eni15_5_tpl);
        end
    end

    // redist8_sync_together88_aunroll_x_in_c0_eni15_5_tpl_4(DELAY,280)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_sync_together88_aunroll_x_in_c0_eni15_5_tpl_4_delay_0 <= $unsigned(redist8_sync_together88_aunroll_x_in_c0_eni15_5_tpl_4_inputreg0_q);
            redist8_sync_together88_aunroll_x_in_c0_eni15_5_tpl_4_delay_1 <= redist8_sync_together88_aunroll_x_in_c0_eni15_5_tpl_4_delay_0;
            redist8_sync_together88_aunroll_x_in_c0_eni15_5_tpl_4_q <= redist8_sync_together88_aunroll_x_in_c0_eni15_5_tpl_4_delay_1;
        end
    end

    // valid_fanout_reg28(REG,225)@0 + 1
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

    // valid_fanout_reg27(REG,224)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg27_q <= $unsigned(redist20_sync_together88_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i32_reorder_limiter_enter70_push63_covariance0_i_llvm_fpga_push_i32_reorder_limiter_enter70_push63_covariance1_x(FIFODELAY,184)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i32_reorder_limiter_enter70_push63_covariance0_i_llvm_fpga_push_i32_reorder_limiter_enter70_push63_covariance1_x_i_stall = ~ (valid_fanout_reg28_q & i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_inv_pred_x_q);
    assign i_llvm_fpga_push_i32_reorder_limiter_enter70_push63_covariance0_i_llvm_fpga_push_i32_reorder_limiter_enter70_push63_covariance1_x_i_valid = valid_fanout_reg27_q & redist30_i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i32_reorder_limiter_enter70_push63_covariance0_i_llvm_fpga_push_i32_reorder_limiter_enter70_push63_covariance1_x_i_data = i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance38_mux_x_q;
    assign i_llvm_fpga_push_i32_reorder_limiter_enter70_push63_covariance0_i_llvm_fpga_push_i32_reorder_limiter_enter70_push63_covariance1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_reorder_limiter_enter70_push63_covariance0_i_llvm_fpga_push_i32_reorder_limiter_enter70_push63_covariance1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_reorder_limiter_enter70_push63_covariance0_i_llvm_fpga_push_i32_reorder_limiter_enter70_push63_covariance1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_reorder_limiter_enter70_push63_covariance0_i_llvm_fpga_push_i32_reorder_limiter_enter70_push63_covariance1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_reorder_limiter_enter70_push63_covariance0_i_llvm_fpga_push_i32_reorder_limiter_enter70_push63_covariance1_x (
        .i_valid(i_llvm_fpga_push_i32_reorder_limiter_enter70_push63_covariance0_i_llvm_fpga_push_i32_reorder_limiter_enter70_push63_covariance1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_reorder_limiter_enter70_push63_covariance0_i_llvm_fpga_push_i32_reorder_limiter_enter70_push63_covariance1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance38_mux_x_q),
        .o_data(i_llvm_fpga_push_i32_reorder_limiter_enter70_push63_covariance0_i_llvm_fpga_push_i32_reorder_limiter_enter70_push63_covariance1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance38_mux_x(MUX,143)@4
    assign i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance38_mux_x_s = redist42_i_llvm_fpga_forked_covariance_b12_forked_covariance3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance38_mux_x_s or i_llvm_fpga_push_i32_reorder_limiter_enter70_push63_covariance0_i_llvm_fpga_push_i32_reorder_limiter_enter70_push63_covariance1_x_o_data or redist8_sync_together88_aunroll_x_in_c0_eni15_5_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance38_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance38_mux_x_q = i_llvm_fpga_push_i32_reorder_limiter_enter70_push63_covariance0_i_llvm_fpga_push_i32_reorder_limiter_enter70_push63_covariance1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance38_mux_x_q = redist8_sync_together88_aunroll_x_in_c0_eni15_5_tpl_4_q;
            default : i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance38_mux_x_q = 32'b0;
        endcase
    end

    // redist34_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance38_mux_x_q_14_inputreg0(DELAY,363)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist34_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance38_mux_x_q_14_inputreg0_q <= $unsigned(i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance38_mux_x_q);
        end
    end

    // redist34_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance38_mux_x_q_14_wraddr(COUNTER,366)
    // low=0, high=15, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist34_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance38_mux_x_q_14_wraddr_i <= $unsigned(redist34_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance38_mux_x_q_14_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist34_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance38_mux_x_q_14_wraddr_q = redist34_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance38_mux_x_q_14_wraddr_i[3:0];

    // redist34_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance38_mux_x_q_14_mem(DUALMEM,365)
    assign redist34_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance38_mux_x_q_14_mem_ia = $unsigned(redist34_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance38_mux_x_q_14_inputreg0_q);
    assign redist34_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance38_mux_x_q_14_mem_aa = redist34_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance38_mux_x_q_14_wraddr_q;
    assign redist34_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance38_mux_x_q_14_mem_ab = redist34_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance38_mux_x_q_14_rdcnt_q[3:0];
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
    ) redist34_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance38_mux_x_q_14_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist34_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance38_mux_x_q_14_mem_aa),
        .data_a(redist34_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance38_mux_x_q_14_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist34_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance38_mux_x_q_14_mem_ab),
        .q_b(redist34_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance38_mux_x_q_14_mem_iq),
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
    assign redist34_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance38_mux_x_q_14_mem_q = redist34_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance38_mux_x_q_14_mem_iq[31:0];

    // redist34_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance38_mux_x_q_14_outputreg0(DELAY,364)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist34_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance38_mux_x_q_14_outputreg0_q <= $unsigned(redist34_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance38_mux_x_q_14_mem_q);
        end
    end

    // redist35_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance0_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance36_mux_x_q_14_rdcnt(ADD,374)
    assign redist35_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance0_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance36_mux_x_q_14_rdcnt_a = {1'b0, redist35_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance0_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance36_mux_x_q_14_wraddr_q};
    assign redist35_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance0_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance36_mux_x_q_14_rdcnt_b = {1'b0, redist34_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance38_mux_x_q_14_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist35_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance0_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance36_mux_x_q_14_rdcnt_o <= $unsigned(redist35_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance0_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance36_mux_x_q_14_rdcnt_a) + $unsigned(redist35_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance0_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance36_mux_x_q_14_rdcnt_b);
        end
    end
    assign redist35_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance0_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance36_mux_x_q_14_rdcnt_q = redist35_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance0_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance36_mux_x_q_14_rdcnt_o[4:0];

    // redist7_sync_together88_aunroll_x_in_c0_eni15_4_tpl_4_inputreg0(DELAY,325)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_sync_together88_aunroll_x_in_c0_eni15_4_tpl_4_inputreg0_q <= $unsigned(in_c0_eni15_4_tpl);
        end
    end

    // redist7_sync_together88_aunroll_x_in_c0_eni15_4_tpl_4(DELAY,279)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_sync_together88_aunroll_x_in_c0_eni15_4_tpl_4_delay_0 <= $unsigned(redist7_sync_together88_aunroll_x_in_c0_eni15_4_tpl_4_inputreg0_q);
            redist7_sync_together88_aunroll_x_in_c0_eni15_4_tpl_4_delay_1 <= redist7_sync_together88_aunroll_x_in_c0_eni15_4_tpl_4_delay_0;
            redist7_sync_together88_aunroll_x_in_c0_eni15_4_tpl_4_q <= redist7_sync_together88_aunroll_x_in_c0_eni15_4_tpl_4_delay_1;
        end
    end

    // valid_fanout_reg25(REG,222)@0 + 1
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

    // valid_fanout_reg24(REG,221)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg24_q <= $unsigned(redist20_sync_together88_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i32_lim_ext57_push62_covariance0_i_llvm_fpga_push_i32_lim_ext57_push62_covariance1_x(FIFODELAY,181)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i32_lim_ext57_push62_covariance0_i_llvm_fpga_push_i32_lim_ext57_push62_covariance1_x_i_stall = ~ (valid_fanout_reg25_q & i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_inv_pred_x_q);
    assign i_llvm_fpga_push_i32_lim_ext57_push62_covariance0_i_llvm_fpga_push_i32_lim_ext57_push62_covariance1_x_i_valid = valid_fanout_reg24_q & redist30_i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i32_lim_ext57_push62_covariance0_i_llvm_fpga_push_i32_lim_ext57_push62_covariance1_x_i_data = i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance0_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance36_mux_x_q;
    assign i_llvm_fpga_push_i32_lim_ext57_push62_covariance0_i_llvm_fpga_push_i32_lim_ext57_push62_covariance1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_lim_ext57_push62_covariance0_i_llvm_fpga_push_i32_lim_ext57_push62_covariance1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_lim_ext57_push62_covariance0_i_llvm_fpga_push_i32_lim_ext57_push62_covariance1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_lim_ext57_push62_covariance0_i_llvm_fpga_push_i32_lim_ext57_push62_covariance1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_lim_ext57_push62_covariance0_i_llvm_fpga_push_i32_lim_ext57_push62_covariance1_x (
        .i_valid(i_llvm_fpga_push_i32_lim_ext57_push62_covariance0_i_llvm_fpga_push_i32_lim_ext57_push62_covariance1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_lim_ext57_push62_covariance0_i_llvm_fpga_push_i32_lim_ext57_push62_covariance1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance0_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance36_mux_x_q),
        .o_data(i_llvm_fpga_push_i32_lim_ext57_push62_covariance0_i_llvm_fpga_push_i32_lim_ext57_push62_covariance1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance0_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance36_mux_x(MUX,142)@4
    assign i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance0_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance36_mux_x_s = redist42_i_llvm_fpga_forked_covariance_b12_forked_covariance3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance0_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance36_mux_x_s or i_llvm_fpga_push_i32_lim_ext57_push62_covariance0_i_llvm_fpga_push_i32_lim_ext57_push62_covariance1_x_o_data or redist7_sync_together88_aunroll_x_in_c0_eni15_4_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance0_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance36_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance0_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance36_mux_x_q = i_llvm_fpga_push_i32_lim_ext57_push62_covariance0_i_llvm_fpga_push_i32_lim_ext57_push62_covariance1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance0_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance36_mux_x_q = redist7_sync_together88_aunroll_x_in_c0_eni15_4_tpl_4_q;
            default : i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance0_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance36_mux_x_q = 32'b0;
        endcase
    end

    // redist35_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance0_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance36_mux_x_q_14_inputreg0(DELAY,369)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist35_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance0_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance36_mux_x_q_14_inputreg0_q <= $unsigned(i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance0_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance36_mux_x_q);
        end
    end

    // redist35_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance0_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance36_mux_x_q_14_wraddr(COUNTER,372)
    // low=0, high=15, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist35_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance0_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance36_mux_x_q_14_wraddr_i <= $unsigned(redist35_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance0_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance36_mux_x_q_14_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist35_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance0_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance36_mux_x_q_14_wraddr_q = redist35_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance0_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance36_mux_x_q_14_wraddr_i[3:0];

    // redist35_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance0_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance36_mux_x_q_14_mem(DUALMEM,371)
    assign redist35_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance0_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance36_mux_x_q_14_mem_ia = $unsigned(redist35_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance0_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance36_mux_x_q_14_inputreg0_q);
    assign redist35_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance0_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance36_mux_x_q_14_mem_aa = redist35_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance0_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance36_mux_x_q_14_wraddr_q;
    assign redist35_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance0_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance36_mux_x_q_14_mem_ab = redist35_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance0_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance36_mux_x_q_14_rdcnt_q[3:0];
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
    ) redist35_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance0_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance36_mux_x_q_14_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist35_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance0_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance36_mux_x_q_14_mem_aa),
        .data_a(redist35_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance0_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance36_mux_x_q_14_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist35_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance0_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance36_mux_x_q_14_mem_ab),
        .q_b(redist35_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance0_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance36_mux_x_q_14_mem_iq),
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
    assign redist35_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance0_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance36_mux_x_q_14_mem_q = redist35_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance0_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance36_mux_x_q_14_mem_iq[31:0];

    // redist35_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance0_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance36_mux_x_q_14_outputreg0(DELAY,370)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist35_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance0_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance36_mux_x_q_14_outputreg0_q <= $unsigned(redist35_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance0_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance36_mux_x_q_14_mem_q);
        end
    end

    // i_notcmp_covariance32(LOGICAL,74)@18
    assign i_notcmp_covariance32_q = redist4_i_exitcond13_covariance26_cmp_nsign_q_14_q ^ VCC_q;

    // redist4_i_exitcond13_covariance26_cmp_nsign_q_14(DELAY,276)
    dspba_delay_ver #( .width(1), .depth(14), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist4_i_exitcond13_covariance26_cmp_nsign_q_14 ( .xin(i_exitcond13_covariance26_cmp_nsign_q), .xout(redist4_i_exitcond13_covariance26_cmp_nsign_q_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist32_i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_inv_pred_x_q_14(DELAY,304)
    dspba_delay_ver #( .width(1), .depth(11), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist32_i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_inv_pred_x_q_14 ( .xin(redist31_i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_inv_pred_x_q_3_q), .xout(redist32_i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_inv_pred_x_q_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg17(REG,214)@14 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(redist23_sync_together88_aunroll_x_in_i_valid_14_q);
        end
    end

    // redist33_i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_inv_pred_x_q_16(DELAY,305)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist33_i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_inv_pred_x_q_16_delay_0 <= $unsigned(redist32_i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_inv_pred_x_q_14_q);
            redist33_i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_inv_pred_x_q_16_q <= redist33_i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_inv_pred_x_q_16_delay_0;
        end
    end

    // valid_fanout_reg16(REG,213)@16 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist24_sync_together88_aunroll_x_in_i_valid_16_q);
        end
    end

    // i_llvm_fpga_push_i32_c_030_push61_covariance0_i_llvm_fpga_push_i32_c_030_push61_covariance1_x(FIFODELAY,169)@15 + 1
    // in i_valid@17
    // in i_write_pred@17
    // in i_data@18
    // out o_data@18
    assign i_llvm_fpga_push_i32_c_030_push61_covariance0_i_llvm_fpga_push_i32_c_030_push61_covariance1_x_i_stall = ~ (valid_fanout_reg17_q & redist32_i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_inv_pred_x_q_14_q);
    assign i_llvm_fpga_push_i32_c_030_push61_covariance0_i_llvm_fpga_push_i32_c_030_push61_covariance1_x_i_valid = valid_fanout_reg16_q & redist33_i_llvm_fpga_push_i1_covariance_b12_next_iter_isreal_push_covariance0_inv_pred_x_q_16_q;
    assign i_llvm_fpga_push_i32_c_030_push61_covariance0_i_llvm_fpga_push_i32_c_030_push61_covariance1_x_i_data = bgTrunc_i_add46_covariance23_sel_x_b;
    assign i_llvm_fpga_push_i32_c_030_push61_covariance0_i_llvm_fpga_push_i32_c_030_push61_covariance1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_c_030_push61_covariance0_i_llvm_fpga_push_i32_c_030_push61_covariance1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_c_030_push61_covariance0_i_llvm_fpga_push_i32_c_030_push61_covariance1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_c_030_push61_covariance0_i_llvm_fpga_push_i32_c_030_push61_covariance1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_c_030_push61_covariance0_i_llvm_fpga_push_i32_c_030_push61_covariance1_x (
        .i_valid(i_llvm_fpga_push_i32_c_030_push61_covariance0_i_llvm_fpga_push_i32_c_030_push61_covariance1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_c_030_push61_covariance0_i_llvm_fpga_push_i32_c_030_push61_covariance1_x_i_stall_bitsignaltemp),
        .i_data(bgTrunc_i_add46_covariance23_sel_x_b),
        .o_data(i_llvm_fpga_push_i32_c_030_push61_covariance0_i_llvm_fpga_push_i32_c_030_push61_covariance1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // redist44_i_llvm_fpga_forked_covariance_b12_forked_covariance3_out_buffer_out_18(DELAY,316)
    dspba_delay_ver #( .width(1), .depth(13), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist44_i_llvm_fpga_forked_covariance_b12_forked_covariance3_out_buffer_out_18 ( .xin(redist43_i_llvm_fpga_forked_covariance_b12_forked_covariance3_out_buffer_out_5_q), .xout(redist44_i_llvm_fpga_forked_covariance_b12_forked_covariance3_out_buffer_out_18_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_pop_i32_c_030_pop61_covariance0_i_llvm_fpga_pop_i32_c_030_pop61_covariance22_mux_x(MUX,138)@18
    assign i_llvm_fpga_pop_i32_c_030_pop61_covariance0_i_llvm_fpga_pop_i32_c_030_pop61_covariance22_mux_x_s = redist44_i_llvm_fpga_forked_covariance_b12_forked_covariance3_out_buffer_out_18_q;
    always @(i_llvm_fpga_pop_i32_c_030_pop61_covariance0_i_llvm_fpga_pop_i32_c_030_pop61_covariance22_mux_x_s or i_llvm_fpga_push_i32_c_030_push61_covariance0_i_llvm_fpga_push_i32_c_030_push61_covariance1_x_o_data or c_i32_076_q)
    begin
        unique case (i_llvm_fpga_pop_i32_c_030_pop61_covariance0_i_llvm_fpga_pop_i32_c_030_pop61_covariance22_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_c_030_pop61_covariance0_i_llvm_fpga_pop_i32_c_030_pop61_covariance22_mux_x_q = i_llvm_fpga_push_i32_c_030_push61_covariance0_i_llvm_fpga_push_i32_c_030_push61_covariance1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_c_030_pop61_covariance0_i_llvm_fpga_pop_i32_c_030_pop61_covariance22_mux_x_q = c_i32_076_q;
            default : i_llvm_fpga_pop_i32_c_030_pop61_covariance0_i_llvm_fpga_pop_i32_c_030_pop61_covariance22_mux_x_q = 32'b0;
        endcase
    end

    // i_mul45_covariance21_bs6(BITSELECT,257)@10
    assign i_mul45_covariance21_bs6_in = i_llvm_fpga_mem_unnamed_covariance7_covariance19_out_o_readdata[17:0];
    assign i_mul45_covariance21_bs6_b = i_mul45_covariance21_bs6_in[17:0];

    // i_mul45_covariance21_bs3(BITSELECT,254)@10
    assign i_mul45_covariance21_bs3_b = i_llvm_fpga_mem_unnamed_covariance6_covariance16_out_o_readdata[31:18];

    // i_mul45_covariance21_bs9(BITSELECT,260)@10
    assign i_mul45_covariance21_bs9_in = i_llvm_fpga_mem_unnamed_covariance6_covariance16_out_o_readdata[17:0];
    assign i_mul45_covariance21_bs9_b = i_mul45_covariance21_bs9_in[17:0];

    // i_mul45_covariance21_bs1(BITSELECT,252)@10
    assign i_mul45_covariance21_bs1_b = i_llvm_fpga_mem_unnamed_covariance7_covariance19_out_o_readdata[31:18];

    // i_mul45_covariance21_ma5_cma(CHAINMULTADD,270)@10 + 5
    // out q@16
    assign i_mul45_covariance21_ma5_cma_reset = ~ (resetn);
    assign i_mul45_covariance21_ma5_cma_ena0 = 1'b1;
    assign i_mul45_covariance21_ma5_cma_ena1 = i_mul45_covariance21_ma5_cma_ena0;
    assign i_mul45_covariance21_ma5_cma_ena2 = i_mul45_covariance21_ma5_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul45_covariance21_ma5_cma_ah[0] <= i_mul45_covariance21_bs1_b;
            i_mul45_covariance21_ma5_cma_ah[1] <= i_mul45_covariance21_bs3_b;
            i_mul45_covariance21_ma5_cma_ch[0] <= i_mul45_covariance21_bs9_b;
            i_mul45_covariance21_ma5_cma_ch[1] <= i_mul45_covariance21_bs6_b;
        end
    end

    assign i_mul45_covariance21_ma5_cma_a0 = i_mul45_covariance21_ma5_cma_ah[0];
    assign i_mul45_covariance21_ma5_cma_c0 = i_mul45_covariance21_ma5_cma_ch[0];
    assign i_mul45_covariance21_ma5_cma_a1 = i_mul45_covariance21_ma5_cma_ah[1];
    assign i_mul45_covariance21_ma5_cma_c1 = i_mul45_covariance21_ma5_cma_ch[1];
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
    ) i_mul45_covariance21_ma5_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul45_covariance21_ma5_cma_ena2, i_mul45_covariance21_ma5_cma_ena1, i_mul45_covariance21_ma5_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul45_covariance21_ma5_cma_a1),
        .by(i_mul45_covariance21_ma5_cma_a0),
        .ax(i_mul45_covariance21_ma5_cma_c1),
        .bx(i_mul45_covariance21_ma5_cma_c0),
        .resulta(i_mul45_covariance21_ma5_cma_s0),
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
    i_mul45_covariance21_ma5_cma_delay ( .xin(i_mul45_covariance21_ma5_cma_s0), .xout(i_mul45_covariance21_ma5_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul45_covariance21_ma5_cma_q = $unsigned(i_mul45_covariance21_ma5_cma_qq[32:0]);

    // redist1_i_mul45_covariance21_ma5_cma_q_1(DELAY,273)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_i_mul45_covariance21_ma5_cma_q_1_q <= $unsigned(i_mul45_covariance21_ma5_cma_q);
        end
    end

    // i_mul45_covariance21_sums_align_1(BITSHIFT,265)@17
    assign i_mul45_covariance21_sums_align_1_qint = { redist1_i_mul45_covariance21_ma5_cma_q_1_q, 18'b000000000000000000 };
    assign i_mul45_covariance21_sums_align_1_q = i_mul45_covariance21_sums_align_1_qint[50:0];

    // i_mul45_covariance21_bjB4(BITJOIN,255)@10
    assign i_mul45_covariance21_bjB4_q = {GND_q, i_mul45_covariance21_bs3_b};

    // i_mul45_covariance21_bjA2(BITJOIN,253)@10
    assign i_mul45_covariance21_bjA2_q = {GND_q, i_mul45_covariance21_bs1_b};

    // i_mul45_covariance21_im0_cma(CHAINMULTADD,268)@10 + 5
    // out q@16
    assign i_mul45_covariance21_im0_cma_reset = ~ (resetn);
    assign i_mul45_covariance21_im0_cma_ena0 = 1'b1;
    assign i_mul45_covariance21_im0_cma_ena1 = i_mul45_covariance21_im0_cma_ena0;
    assign i_mul45_covariance21_im0_cma_ena2 = i_mul45_covariance21_im0_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul45_covariance21_im0_cma_ah[0] <= i_mul45_covariance21_bjA2_q;
            i_mul45_covariance21_im0_cma_ch[0] <= i_mul45_covariance21_bjB4_q;
        end
    end

    assign i_mul45_covariance21_im0_cma_a0 = $unsigned(i_mul45_covariance21_im0_cma_ah[0]);
    assign i_mul45_covariance21_im0_cma_c0 = $unsigned(i_mul45_covariance21_im0_cma_ch[0]);
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
    ) i_mul45_covariance21_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul45_covariance21_im0_cma_ena2, i_mul45_covariance21_im0_cma_ena1, i_mul45_covariance21_im0_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul45_covariance21_im0_cma_a0),
        .ax(i_mul45_covariance21_im0_cma_c0),
        .resulta(i_mul45_covariance21_im0_cma_s0),
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
    i_mul45_covariance21_im0_cma_delay ( .xin(i_mul45_covariance21_im0_cma_s0), .xout(i_mul45_covariance21_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul45_covariance21_im0_cma_q = $unsigned(i_mul45_covariance21_im0_cma_qq[29:0]);

    // redist3_i_mul45_covariance21_im0_cma_q_1(DELAY,275)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_i_mul45_covariance21_im0_cma_q_1_q <= $unsigned(i_mul45_covariance21_im0_cma_q);
        end
    end

    // i_mul45_covariance21_im10_cma(CHAINMULTADD,269)@10 + 5
    // out q@16
    assign i_mul45_covariance21_im10_cma_reset = ~ (resetn);
    assign i_mul45_covariance21_im10_cma_ena0 = 1'b1;
    assign i_mul45_covariance21_im10_cma_ena1 = i_mul45_covariance21_im10_cma_ena0;
    assign i_mul45_covariance21_im10_cma_ena2 = i_mul45_covariance21_im10_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul45_covariance21_im10_cma_ah[0] <= i_mul45_covariance21_bs6_b;
            i_mul45_covariance21_im10_cma_ch[0] <= i_mul45_covariance21_bs9_b;
        end
    end

    assign i_mul45_covariance21_im10_cma_a0 = i_mul45_covariance21_im10_cma_ah[0];
    assign i_mul45_covariance21_im10_cma_c0 = i_mul45_covariance21_im10_cma_ch[0];
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
    ) i_mul45_covariance21_im10_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul45_covariance21_im10_cma_ena2, i_mul45_covariance21_im10_cma_ena1, i_mul45_covariance21_im10_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul45_covariance21_im10_cma_a0),
        .ax(i_mul45_covariance21_im10_cma_c0),
        .resulta(i_mul45_covariance21_im10_cma_s0),
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
    i_mul45_covariance21_im10_cma_delay ( .xin(i_mul45_covariance21_im10_cma_s0), .xout(i_mul45_covariance21_im10_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul45_covariance21_im10_cma_q = $unsigned(i_mul45_covariance21_im10_cma_qq[35:0]);

    // redist2_i_mul45_covariance21_im10_cma_q_1(DELAY,274)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_i_mul45_covariance21_im10_cma_q_1_q <= $unsigned(i_mul45_covariance21_im10_cma_q);
        end
    end

    // i_mul45_covariance21_sums_join_0(BITJOIN,264)@17
    assign i_mul45_covariance21_sums_join_0_q = {redist3_i_mul45_covariance21_im0_cma_q_1_q, redist2_i_mul45_covariance21_im10_cma_q_1_q};

    // i_mul45_covariance21_sums_result_add_0_0(ADD,267)@17
    assign i_mul45_covariance21_sums_result_add_0_0_a = {1'b0, i_mul45_covariance21_sums_join_0_q};
    assign i_mul45_covariance21_sums_result_add_0_0_b = {16'b0000000000000000, i_mul45_covariance21_sums_align_1_q};
    assign i_mul45_covariance21_sums_result_add_0_0_o = $unsigned(i_mul45_covariance21_sums_result_add_0_0_a) + $unsigned(i_mul45_covariance21_sums_result_add_0_0_b);
    assign i_mul45_covariance21_sums_result_add_0_0_q = i_mul45_covariance21_sums_result_add_0_0_o[66:0];

    // bgTrunc_i_mul45_covariance21_sel_x(BITSELECT,84)@17
    assign bgTrunc_i_mul45_covariance21_sel_x_in = i_mul45_covariance21_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul45_covariance21_sel_x_b = bgTrunc_i_mul45_covariance21_sel_x_in[31:0];

    // redist41_bgTrunc_i_mul45_covariance21_sel_x_b_1(DELAY,313)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist41_bgTrunc_i_mul45_covariance21_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul45_covariance21_sel_x_b);
        end
    end

    // i_add46_covariance23(ADD,43)@18
    assign i_add46_covariance23_a = {1'b0, redist41_bgTrunc_i_mul45_covariance21_sel_x_b_1_q};
    assign i_add46_covariance23_b = {1'b0, i_llvm_fpga_pop_i32_c_030_pop61_covariance0_i_llvm_fpga_pop_i32_c_030_pop61_covariance22_mux_x_q};
    assign i_add46_covariance23_o = $unsigned(i_add46_covariance23_a) + $unsigned(i_add46_covariance23_b);
    assign i_add46_covariance23_q = i_add46_covariance23_o[32:0];

    // bgTrunc_i_add46_covariance23_sel_x(BITSELECT,81)@18
    assign bgTrunc_i_add46_covariance23_sel_x_b = i_add46_covariance23_q[31:0];

    // i_toi1_intcast3_covariance20_sel_x(BITSELECT,193)@10
    assign i_toi1_intcast3_covariance20_sel_x_b = i_llvm_fpga_mem_unnamed_covariance7_covariance19_out_o_readdata[0:0];

    // redist28_i_toi1_intcast3_covariance20_sel_x_b_8(DELAY,300)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist28_i_toi1_intcast3_covariance20_sel_x_b_8 ( .xin(i_toi1_intcast3_covariance20_sel_x_b), .xout(redist28_i_toi1_intcast3_covariance20_sel_x_b_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_toi1_intcast_covariance17_sel_x(BITSELECT,194)@10
    assign i_toi1_intcast_covariance17_sel_x_b = i_llvm_fpga_mem_unnamed_covariance6_covariance16_out_o_readdata[0:0];

    // redist27_i_toi1_intcast_covariance17_sel_x_b_8(DELAY,299)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist27_i_toi1_intcast_covariance17_sel_x_b_8 ( .xin(i_toi1_intcast_covariance17_sel_x_b), .xout(redist27_i_toi1_intcast_covariance17_sel_x_b_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist47_i_idxprom43_covariance10_vt_join_q_13_offset(CONSTANT,379)
    assign redist47_i_idxprom43_covariance10_vt_join_q_13_offset_q = $unsigned(4'b1000);

    // redist48_i_idxprom39_covariance12_vt_join_q_13_rdcnt(ADD,386)
    assign redist48_i_idxprom39_covariance12_vt_join_q_13_rdcnt_a = {1'b0, redist48_i_idxprom39_covariance12_vt_join_q_13_wraddr_q};
    assign redist48_i_idxprom39_covariance12_vt_join_q_13_rdcnt_b = {1'b0, redist47_i_idxprom43_covariance10_vt_join_q_13_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist48_i_idxprom39_covariance12_vt_join_q_13_rdcnt_o <= $unsigned(redist48_i_idxprom39_covariance12_vt_join_q_13_rdcnt_a) + $unsigned(redist48_i_idxprom39_covariance12_vt_join_q_13_rdcnt_b);
        end
    end
    assign redist48_i_idxprom39_covariance12_vt_join_q_13_rdcnt_q = redist48_i_idxprom39_covariance12_vt_join_q_13_rdcnt_o[4:0];

    // redist48_i_idxprom39_covariance12_vt_join_q_13_inputreg0(DELAY,381)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist48_i_idxprom39_covariance12_vt_join_q_13_inputreg0_q <= $unsigned(i_idxprom39_covariance12_vt_join_q);
        end
    end

    // redist48_i_idxprom39_covariance12_vt_join_q_13_wraddr(COUNTER,384)
    // low=0, high=15, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist48_i_idxprom39_covariance12_vt_join_q_13_wraddr_i <= $unsigned(redist48_i_idxprom39_covariance12_vt_join_q_13_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist48_i_idxprom39_covariance12_vt_join_q_13_wraddr_q = redist48_i_idxprom39_covariance12_vt_join_q_13_wraddr_i[3:0];

    // redist48_i_idxprom39_covariance12_vt_join_q_13_mem(DUALMEM,383)
    assign redist48_i_idxprom39_covariance12_vt_join_q_13_mem_ia = $unsigned(redist48_i_idxprom39_covariance12_vt_join_q_13_inputreg0_q);
    assign redist48_i_idxprom39_covariance12_vt_join_q_13_mem_aa = redist48_i_idxprom39_covariance12_vt_join_q_13_wraddr_q;
    assign redist48_i_idxprom39_covariance12_vt_join_q_13_mem_ab = redist48_i_idxprom39_covariance12_vt_join_q_13_rdcnt_q[3:0];
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
    ) redist48_i_idxprom39_covariance12_vt_join_q_13_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist48_i_idxprom39_covariance12_vt_join_q_13_mem_aa),
        .data_a(redist48_i_idxprom39_covariance12_vt_join_q_13_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist48_i_idxprom39_covariance12_vt_join_q_13_mem_ab),
        .q_b(redist48_i_idxprom39_covariance12_vt_join_q_13_mem_iq),
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
    assign redist48_i_idxprom39_covariance12_vt_join_q_13_mem_q = redist48_i_idxprom39_covariance12_vt_join_q_13_mem_iq[63:0];

    // redist48_i_idxprom39_covariance12_vt_join_q_13_outputreg0(DELAY,382)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist48_i_idxprom39_covariance12_vt_join_q_13_outputreg0_q <= $unsigned(redist48_i_idxprom39_covariance12_vt_join_q_13_mem_q);
        end
    end

    // redist47_i_idxprom43_covariance10_vt_join_q_13_rdcnt(ADD,380)
    assign redist47_i_idxprom43_covariance10_vt_join_q_13_rdcnt_a = {1'b0, redist47_i_idxprom43_covariance10_vt_join_q_13_wraddr_q};
    assign redist47_i_idxprom43_covariance10_vt_join_q_13_rdcnt_b = {1'b0, redist47_i_idxprom43_covariance10_vt_join_q_13_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist47_i_idxprom43_covariance10_vt_join_q_13_rdcnt_o <= $unsigned(redist47_i_idxprom43_covariance10_vt_join_q_13_rdcnt_a) + $unsigned(redist47_i_idxprom43_covariance10_vt_join_q_13_rdcnt_b);
        end
    end
    assign redist47_i_idxprom43_covariance10_vt_join_q_13_rdcnt_q = redist47_i_idxprom43_covariance10_vt_join_q_13_rdcnt_o[4:0];

    // redist47_i_idxprom43_covariance10_vt_join_q_13_inputreg0(DELAY,375)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist47_i_idxprom43_covariance10_vt_join_q_13_inputreg0_q <= $unsigned(i_idxprom43_covariance10_vt_join_q);
        end
    end

    // redist47_i_idxprom43_covariance10_vt_join_q_13_wraddr(COUNTER,378)
    // low=0, high=15, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist47_i_idxprom43_covariance10_vt_join_q_13_wraddr_i <= $unsigned(redist47_i_idxprom43_covariance10_vt_join_q_13_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist47_i_idxprom43_covariance10_vt_join_q_13_wraddr_q = redist47_i_idxprom43_covariance10_vt_join_q_13_wraddr_i[3:0];

    // redist47_i_idxprom43_covariance10_vt_join_q_13_mem(DUALMEM,377)
    assign redist47_i_idxprom43_covariance10_vt_join_q_13_mem_ia = $unsigned(redist47_i_idxprom43_covariance10_vt_join_q_13_inputreg0_q);
    assign redist47_i_idxprom43_covariance10_vt_join_q_13_mem_aa = redist47_i_idxprom43_covariance10_vt_join_q_13_wraddr_q;
    assign redist47_i_idxprom43_covariance10_vt_join_q_13_mem_ab = redist47_i_idxprom43_covariance10_vt_join_q_13_rdcnt_q[3:0];
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
    ) redist47_i_idxprom43_covariance10_vt_join_q_13_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist47_i_idxprom43_covariance10_vt_join_q_13_mem_aa),
        .data_a(redist47_i_idxprom43_covariance10_vt_join_q_13_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist47_i_idxprom43_covariance10_vt_join_q_13_mem_ab),
        .q_b(redist47_i_idxprom43_covariance10_vt_join_q_13_mem_iq),
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
    assign redist47_i_idxprom43_covariance10_vt_join_q_13_mem_q = redist47_i_idxprom43_covariance10_vt_join_q_13_mem_iq[63:0];

    // redist47_i_idxprom43_covariance10_vt_join_q_13_outputreg0(DELAY,376)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist47_i_idxprom43_covariance10_vt_join_q_13_outputreg0_q <= $unsigned(redist47_i_idxprom43_covariance10_vt_join_q_13_mem_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,195)@18
    assign out_c0_exi19_0_tpl = GND_q;
    assign out_c0_exi19_1_tpl = redist47_i_idxprom43_covariance10_vt_join_q_13_outputreg0_q;
    assign out_c0_exi19_2_tpl = redist48_i_idxprom39_covariance12_vt_join_q_13_outputreg0_q;
    assign out_c0_exi19_3_tpl = redist27_i_toi1_intcast_covariance17_sel_x_b_8_q;
    assign out_c0_exi19_4_tpl = redist28_i_toi1_intcast3_covariance20_sel_x_b_8_q;
    assign out_c0_exi19_5_tpl = bgTrunc_i_add46_covariance23_sel_x_b;
    assign out_c0_exi19_6_tpl = redist4_i_exitcond13_covariance26_cmp_nsign_q_14_q;
    assign out_c0_exi19_7_tpl = i_notcmp_covariance32_q;
    assign out_c0_exi19_8_tpl = redist35_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance0_i_llvm_fpga_pop_i32_lim_ext57_pop62_covariance36_mux_x_q_14_outputreg0_q;
    assign out_c0_exi19_9_tpl = redist34_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter70_pop63_covariance38_mux_x_q_14_outputreg0_q;
    assign out_c0_exi19_10_tpl = redist36_i_llvm_fpga_pop_i1_notcmp2782_pop64_covariance0_i_llvm_fpga_pop_i1_notcmp2782_pop64_covariance40_mux_x_q_14_q;
    assign out_c0_exi19_11_tpl = redist38_i_llvm_fpga_pop_i1_forked2386_pop66_covariance0_i_llvm_fpga_pop_i1_forked2386_pop66_covariance42_mux_x_q_14_q;
    assign out_c0_exi19_12_tpl = redist37_i_llvm_fpga_pop_i1_notcmp2287_pop67_covariance0_i_llvm_fpga_pop_i1_notcmp2287_pop67_covariance44_mux_x_q_14_q;
    assign out_c0_exi19_13_tpl = redist12_sync_together88_aunroll_x_in_c0_eni15_9_tpl_18_outputreg0_q;
    assign out_c0_exi19_14_tpl = redist13_sync_together88_aunroll_x_in_c0_eni15_10_tpl_18_outputreg0_q;
    assign out_c0_exi19_15_tpl = redist14_sync_together88_aunroll_x_in_c0_eni15_11_tpl_18_outputreg0_q;
    assign out_c0_exi19_16_tpl = redist15_sync_together88_aunroll_x_in_c0_eni15_12_tpl_18_q;
    assign out_c0_exi19_17_tpl = redist16_sync_together88_aunroll_x_in_c0_eni15_13_tpl_18_outputreg0_q;
    assign out_c0_exi19_18_tpl = redist17_sync_together88_aunroll_x_in_c0_eni15_14_tpl_18_outputreg0_q;
    assign out_c0_exi19_19_tpl = redist18_sync_together88_aunroll_x_in_c0_eni15_15_tpl_18_outputreg0_q;
    assign out_covariance_B12_current_iter_isspec = redist49_i_covariance_b12_current_iter_isspec_covariance5_q_13_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_profile_loop_o_valid = redist26_sync_together88_aunroll_x_in_i_valid_18_q;

endmodule
