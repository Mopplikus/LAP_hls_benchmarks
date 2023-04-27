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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d0
// Created for function/kernel stencil_2d
// SystemVerilog created on Thu Apr 27 14:23:39 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_i_sfc_logic_s_c0_in_for_cond10000ter12916_stencil_2d0 (
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_pipeline_dummy_out,
    output wire [0:0] out_pipeline_forked_out,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_c0_exi18_0_tpl,
    output wire [31:0] out_c0_exi18_1_tpl,
    output wire [31:0] out_c0_exi18_2_tpl,
    output wire [31:0] out_c0_exi18_3_tpl,
    output wire [31:0] out_c0_exi18_4_tpl,
    output wire [0:0] out_c0_exi18_5_tpl,
    output wire [0:0] out_c0_exi18_6_tpl,
    output wire [31:0] out_c0_exi18_7_tpl,
    output wire [0:0] out_c0_exi18_8_tpl,
    output wire [0:0] out_c0_exi18_9_tpl,
    output wire [0:0] out_c0_exi18_10_tpl,
    output wire [31:0] out_c0_exi18_11_tpl,
    output wire [31:0] out_c0_exi18_12_tpl,
    output wire [0:0] out_c0_exi18_13_tpl,
    output wire [0:0] out_c0_exi18_14_tpl,
    output wire [31:0] out_c0_exi18_15_tpl,
    output wire [31:0] out_c0_exi18_16_tpl,
    output wire [31:0] out_c0_exi18_17_tpl,
    output wire [0:0] out_c0_exi18_18_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_stencil_2d_B6_current_iter_isspec,
    input wire [0:0] in_buffer_in,
    input wire [0:0] in_c0_eni9_0_tpl,
    input wire [0:0] in_c0_eni9_1_tpl,
    input wire [31:0] in_c0_eni9_2_tpl,
    input wire [31:0] in_c0_eni9_3_tpl,
    input wire [31:0] in_c0_eni9_4_tpl,
    input wire [0:0] in_c0_eni9_5_tpl,
    input wire [0:0] in_c0_eni9_6_tpl,
    input wire [31:0] in_c0_eni9_7_tpl,
    input wire [31:0] in_c0_eni9_8_tpl,
    input wire [0:0] in_c0_eni9_9_tpl,
    input wire [0:0] in_dummy_in,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_056_q;
    wire [31:0] c_i32_157_q;
    wire [2:0] c_i3_159_q;
    wire [2:0] c_i3_161_q;
    wire [32:0] i_add17_stencil_2d13_a;
    wire [32:0] i_add17_stencil_2d13_b;
    logic [32:0] i_add17_stencil_2d13_o;
    wire [32:0] i_add17_stencil_2d13_q;
    wire [31:0] i_dot1_prod_stencil_2d15_vt_join_q;
    wire [30:0] i_dot1_prod_stencil_2d15_vt_select_31_b;
    wire [32:0] i_dot_prod_add_stencil_2d16_a;
    wire [32:0] i_dot_prod_add_stencil_2d16_b;
    logic [32:0] i_dot_prod_add_stencil_2d16_o;
    wire [32:0] i_dot_prod_add_stencil_2d16_q;
    wire [3:0] i_fpga_indvars_iv_next2_stencil_2d24_a;
    wire [3:0] i_fpga_indvars_iv_next2_stencil_2d24_b;
    logic [3:0] i_fpga_indvars_iv_next2_stencil_2d24_o;
    wire [3:0] i_fpga_indvars_iv_next2_stencil_2d24_q;
    wire [32:0] i_inc26_stencil_2d26_a;
    wire [32:0] i_inc26_stencil_2d26_b;
    logic [32:0] i_inc26_stencil_2d26_o;
    wire [32:0] i_inc26_stencil_2d26_q;
    wire [0:0] i_llvm_fpga_dummy_thread_stencil_2d_b6_dummy_stencil_2d2_out_dummy_out;
    wire [0:0] i_llvm_fpga_forked_stencil_2d_b6_forked_stencil_2d3_out_buffer_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going15_stencil_2d6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going15_stencil_2d6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going15_stencil_2d6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going15_stencil_2d6_out_pipeline_dummy_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going15_stencil_2d6_out_pipeline_forked_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going15_stencil_2d6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond16_stencil_2d23_out_feedback_out_5;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond16_stencil_2d23_out_feedback_valid_out_5;
    wire [32:0] i_mul16_add11_stencil_2d11_a;
    wire [32:0] i_mul16_add11_stencil_2d11_b;
    logic [32:0] i_mul16_add11_stencil_2d11_o;
    wire [32:0] i_mul16_add11_stencil_2d11_q;
    wire [0:0] i_notcmp13_stencil_2d22_q;
    wire [0:0] i_stencil_2d_b6_current_iter_isspec_stencil_2d5_q;
    wire [0:0] i_stencil_2d_b6_next_iter_isreal_stencil_2d7_q;
    wire [31:0] i_unnamed_stencil_2d10_vt_join_q;
    wire [30:0] i_unnamed_stencil_2d10_vt_select_31_b;
    wire [31:0] bgTrunc_i_add17_stencil_2d13_sel_x_b;
    wire [31:0] bgTrunc_i_dot1_prod_stencil_2d15_sel_x_b;
    wire [31:0] bgTrunc_i_dot_prod_add_stencil_2d16_sel_x_b;
    wire [2:0] bgTrunc_i_fpga_indvars_iv_next2_stencil_2d24_sel_x_b;
    wire [31:0] bgTrunc_i_inc26_stencil_2d26_sel_x_b;
    wire [31:0] bgTrunc_i_mul16_add11_stencil_2d11_sel_x_b;
    wire [63:0] i_dot1_prod_stencil_2d15_extender_x_q;
    wire [26:0] i_dot1_prod_stencil_2d15_multconst_x_q;
    wire [0:0] i_llvm_fpga_pop_coalesce_i1_stencil_2d_b6_current_iter_isreal_stencil_2d0_i_llvm_fpga_pop_coalesce_i1_stencil_2d_b6_current_iter_isreal_stencil_2d4_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_coalesce_i1_stencil_2d_b6_current_iter_isreal_stencil_2d0_i_llvm_fpga_pop_coalesce_i1_stencil_2d_b6_current_iter_isreal_stencil_2d4_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1844_pop24_stencil_2d0_i_llvm_fpga_pop_i1_notcmp1844_pop24_stencil_2d32_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_notcmp1844_pop24_stencil_2d0_i_llvm_fpga_pop_i1_notcmp1844_pop24_stencil_2d32_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2342_pop23_stencil_2d0_i_llvm_fpga_pop_i1_notcmp2342_pop23_stencil_2d30_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_notcmp2342_pop23_stencil_2d0_i_llvm_fpga_pop_i1_notcmp2342_pop23_stencil_2d30_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_c_025_pop1546_pop25_stencil_2d0_i_llvm_fpga_pop_i32_c_025_pop1546_pop25_stencil_2d14_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_c_025_pop1546_pop25_stencil_2d0_i_llvm_fpga_pop_i32_c_025_pop1546_pop25_stencil_2d14_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_k1_024_pop20_stencil_2d0_i_llvm_fpga_pop_i32_k1_024_pop20_stencil_2d9_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_k1_024_pop20_stencil_2d0_i_llvm_fpga_pop_i32_k1_024_pop20_stencil_2d9_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_mul2839_pop22_stencil_2d0_i_llvm_fpga_pop_i32_mul2839_pop22_stencil_2d28_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_mul2839_pop22_stencil_2d0_i_llvm_fpga_pop_i32_mul2839_pop22_stencil_2d28_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_r_026_pop1336_pop21_stencil_2d0_i_llvm_fpga_pop_i32_r_026_pop1336_pop21_stencil_2d12_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_r_026_pop1336_pop21_stencil_2d0_i_llvm_fpga_pop_i32_r_026_pop1336_pop21_stencil_2d12_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i3_fpga_indvars_iv1_pop19_stencil_2d0_i_llvm_fpga_pop_i3_fpga_indvars_iv1_pop19_stencil_2d17_mux_x_s;
    reg [2:0] i_llvm_fpga_pop_i3_fpga_indvars_iv1_pop19_stencil_2d0_i_llvm_fpga_pop_i3_fpga_indvars_iv1_pop19_stencil_2d17_mux_x_q;
    wire [6:0] i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_c_i7_03_x_q;
    wire [7:0] i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d1_x_i_valid;
    wire i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d1_x_i_stall;
    wire i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_inv_pred_x_q;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_notcmp2342_push23_stencil_2d0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2342_push23_stencil_2d0_i_llvm_fpga_push_i1_notcmp2342_push23_stencil_2d1_x_i_valid;
    wire i_llvm_fpga_push_i1_notcmp2342_push23_stencil_2d0_i_llvm_fpga_push_i1_notcmp2342_push23_stencil_2d1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2342_push23_stencil_2d0_i_llvm_fpga_push_i1_notcmp2342_push23_stencil_2d1_x_i_stall;
    wire i_llvm_fpga_push_i1_notcmp2342_push23_stencil_2d0_i_llvm_fpga_push_i1_notcmp2342_push23_stencil_2d1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_notcmp2342_push23_stencil_2d0_i_llvm_fpga_push_i1_notcmp2342_push23_stencil_2d1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_notcmp2342_push23_stencil_2d0_i_llvm_fpga_push_i1_notcmp2342_push23_stencil_2d1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2342_push23_stencil_2d0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_stencil_2d_b6_next_iter_isreal_push_stencil_2d0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_stencil_2d_b6_next_iter_isreal_push_stencil_2d0_i_llvm_fpga_push_i1_stencil_2d_b6_next_iter_isreal_push_stencil_2d1_x_i_valid;
    wire i_llvm_fpga_push_i1_stencil_2d_b6_next_iter_isreal_push_stencil_2d0_i_llvm_fpga_push_i1_stencil_2d_b6_next_iter_isreal_push_stencil_2d1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_stencil_2d_b6_next_iter_isreal_push_stencil_2d0_i_llvm_fpga_push_i1_stencil_2d_b6_next_iter_isreal_push_stencil_2d1_x_i_stall;
    wire i_llvm_fpga_push_i1_stencil_2d_b6_next_iter_isreal_push_stencil_2d0_i_llvm_fpga_push_i1_stencil_2d_b6_next_iter_isreal_push_stencil_2d1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_stencil_2d_b6_next_iter_isreal_push_stencil_2d0_i_llvm_fpga_push_i1_stencil_2d_b6_next_iter_isreal_push_stencil_2d1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_stencil_2d_b6_next_iter_isreal_push_stencil_2d0_i_llvm_fpga_push_i1_stencil_2d_b6_next_iter_isreal_push_stencil_2d1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_stencil_2d_b6_next_iter_isreal_push_stencil_2d0_adapt_scalar_trunc4_sel_x_b;
    wire [0:0] i_llvm_fpga_push_i32_c_025_pop1546_push25_stencil_2d0_i_llvm_fpga_push_i32_c_025_pop1546_push25_stencil_2d1_x_i_valid;
    wire i_llvm_fpga_push_i32_c_025_pop1546_push25_stencil_2d0_i_llvm_fpga_push_i32_c_025_pop1546_push25_stencil_2d1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_c_025_pop1546_push25_stencil_2d0_i_llvm_fpga_push_i32_c_025_pop1546_push25_stencil_2d1_x_i_stall;
    wire i_llvm_fpga_push_i32_c_025_pop1546_push25_stencil_2d0_i_llvm_fpga_push_i32_c_025_pop1546_push25_stencil_2d1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_c_025_pop1546_push25_stencil_2d0_i_llvm_fpga_push_i32_c_025_pop1546_push25_stencil_2d1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_c_025_pop1546_push25_stencil_2d0_i_llvm_fpga_push_i32_c_025_pop1546_push25_stencil_2d1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i32_k1_024_push20_stencil_2d0_i_llvm_fpga_push_i32_k1_024_push20_stencil_2d1_x_i_valid;
    wire i_llvm_fpga_push_i32_k1_024_push20_stencil_2d0_i_llvm_fpga_push_i32_k1_024_push20_stencil_2d1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_k1_024_push20_stencil_2d0_i_llvm_fpga_push_i32_k1_024_push20_stencil_2d1_x_i_stall;
    wire i_llvm_fpga_push_i32_k1_024_push20_stencil_2d0_i_llvm_fpga_push_i32_k1_024_push20_stencil_2d1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_k1_024_push20_stencil_2d0_i_llvm_fpga_push_i32_k1_024_push20_stencil_2d1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_k1_024_push20_stencil_2d0_i_llvm_fpga_push_i32_k1_024_push20_stencil_2d1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i32_mul2839_push22_stencil_2d0_i_llvm_fpga_push_i32_mul2839_push22_stencil_2d1_x_i_valid;
    wire i_llvm_fpga_push_i32_mul2839_push22_stencil_2d0_i_llvm_fpga_push_i32_mul2839_push22_stencil_2d1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_mul2839_push22_stencil_2d0_i_llvm_fpga_push_i32_mul2839_push22_stencil_2d1_x_i_stall;
    wire i_llvm_fpga_push_i32_mul2839_push22_stencil_2d0_i_llvm_fpga_push_i32_mul2839_push22_stencil_2d1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_mul2839_push22_stencil_2d0_i_llvm_fpga_push_i32_mul2839_push22_stencil_2d1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_mul2839_push22_stencil_2d0_i_llvm_fpga_push_i32_mul2839_push22_stencil_2d1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i32_r_026_pop1336_push21_stencil_2d0_i_llvm_fpga_push_i32_r_026_pop1336_push21_stencil_2d1_x_i_valid;
    wire i_llvm_fpga_push_i32_r_026_pop1336_push21_stencil_2d0_i_llvm_fpga_push_i32_r_026_pop1336_push21_stencil_2d1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_r_026_pop1336_push21_stencil_2d0_i_llvm_fpga_push_i32_r_026_pop1336_push21_stencil_2d1_x_i_stall;
    wire i_llvm_fpga_push_i32_r_026_pop1336_push21_stencil_2d0_i_llvm_fpga_push_i32_r_026_pop1336_push21_stencil_2d1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_r_026_pop1336_push21_stencil_2d0_i_llvm_fpga_push_i32_r_026_pop1336_push21_stencil_2d1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_r_026_pop1336_push21_stencil_2d0_i_llvm_fpga_push_i32_r_026_pop1336_push21_stencil_2d1_x_o_data;
    wire [4:0] i_llvm_fpga_push_i3_fpga_indvars_iv1_push19_stencil_2d0_c_i5_03_x_q;
    wire [7:0] i_llvm_fpga_push_i3_fpga_indvars_iv1_push19_stencil_2d0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i3_fpga_indvars_iv1_push19_stencil_2d0_i_llvm_fpga_push_i3_fpga_indvars_iv1_push19_stencil_2d1_x_i_valid;
    wire i_llvm_fpga_push_i3_fpga_indvars_iv1_push19_stencil_2d0_i_llvm_fpga_push_i3_fpga_indvars_iv1_push19_stencil_2d1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i3_fpga_indvars_iv1_push19_stencil_2d0_i_llvm_fpga_push_i3_fpga_indvars_iv1_push19_stencil_2d1_x_i_stall;
    wire i_llvm_fpga_push_i3_fpga_indvars_iv1_push19_stencil_2d0_i_llvm_fpga_push_i3_fpga_indvars_iv1_push19_stencil_2d1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i3_fpga_indvars_iv1_push19_stencil_2d0_i_llvm_fpga_push_i3_fpga_indvars_iv1_push19_stencil_2d1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i3_fpga_indvars_iv1_push19_stencil_2d0_i_llvm_fpga_push_i3_fpga_indvars_iv1_push19_stencil_2d1_x_o_data;
    wire [2:0] i_llvm_fpga_push_i3_fpga_indvars_iv1_push19_stencil_2d0_adapt_scalar_trunc4_sel_x_b;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg9_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg10_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg11_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg12_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg13_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg14_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg15_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg16_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg17_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg19_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg20_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg22_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg23_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg25_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg26_q;
    wire [14:0] i_dot1_prod_stencil_2d15_bjA2_q;
    wire [18:0] i_dot1_prod_stencil_2d15_bjA7_q;
    wire [38:0] i_dot1_prod_stencil_2d15_sums_align_1_q;
    wire [38:0] i_dot1_prod_stencil_2d15_sums_align_1_qint;
    wire [39:0] i_dot1_prod_stencil_2d15_sums_result_add_0_0_a;
    wire [39:0] i_dot1_prod_stencil_2d15_sums_result_add_0_0_b;
    logic [39:0] i_dot1_prod_stencil_2d15_sums_result_add_0_0_o;
    wire [39:0] i_dot1_prod_stencil_2d15_sums_result_add_0_0_q;
    wire [0:0] i_exitcond3_stencil_2d18_cmp_nsign_q;
    wire [30:0] leftShiftStage0Idx1Rng1_uid179_i_unnamed_stencil_2d0_shift_x_in;
    wire [30:0] leftShiftStage0Idx1Rng1_uid179_i_unnamed_stencil_2d0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid180_i_unnamed_stencil_2d0_shift_x_q;
    wire [0:0] leftShiftStage0_uid182_i_unnamed_stencil_2d0_shift_x_s;
    reg [31:0] leftShiftStage0_uid182_i_unnamed_stencil_2d0_shift_x_q;
    wire [3:0] padACst_uid204_i_dot1_prod_stencil_2d15_im0_q;
    wire [18:0] aPostPad_uid205_i_dot1_prod_stencil_2d15_im0_q;
    wire [19:0] sub_uid206_i_dot1_prod_stencil_2d15_im0_a;
    wire [19:0] sub_uid206_i_dot1_prod_stencil_2d15_im0_b;
    logic [19:0] sub_uid206_i_dot1_prod_stencil_2d15_im0_o;
    wire [19:0] sub_uid206_i_dot1_prod_stencil_2d15_im0_q;
    wire [18:0] sR_bottomRange_uid210_i_dot1_prod_stencil_2d15_im0_in;
    wire [18:0] sR_bottomRange_uid210_i_dot1_prod_stencil_2d15_im0_b;
    wire [19:0] sR_mergedSignalTM_uid211_i_dot1_prod_stencil_2d15_im0_q;
    wire [0:0] xMSB_uid231_i_dot1_prod_stencil_2d15_im0_b;
    wire [20:0] sOuputFormat_mergedSignalTM_uid235_i_dot1_prod_stencil_2d15_im0_q;
    wire [22:0] aPostPad_uid258_i_dot1_prod_stencil_2d15_im5_q;
    wire [23:0] sub_uid259_i_dot1_prod_stencil_2d15_im5_a;
    wire [23:0] sub_uid259_i_dot1_prod_stencil_2d15_im5_b;
    logic [23:0] sub_uid259_i_dot1_prod_stencil_2d15_im5_o;
    wire [23:0] sub_uid259_i_dot1_prod_stencil_2d15_im5_q;
    wire [22:0] sR_bottomRange_uid263_i_dot1_prod_stencil_2d15_im5_in;
    wire [22:0] sR_bottomRange_uid263_i_dot1_prod_stencil_2d15_im5_b;
    wire [23:0] sR_mergedSignalTM_uid264_i_dot1_prod_stencil_2d15_im5_q;
    wire [0:0] xMSB_uid290_i_dot1_prod_stencil_2d15_im5_b;
    wire [24:0] sOuputFormat_mergedSignalTM_uid294_i_dot1_prod_stencil_2d15_im5_q;
    wire [13:0] i_dot1_prod_stencil_2d15_bs1_merged_bit_select_b;
    wire [17:0] i_dot1_prod_stencil_2d15_bs1_merged_bit_select_c;
    reg [22:0] redist0_sR_bottomRange_uid263_i_dot1_prod_stencil_2d15_im5_b_1_q;
    reg [18:0] redist1_sR_bottomRange_uid210_i_dot1_prod_stencil_2d15_im0_b_1_q;
    reg [0:0] redist2_i_exitcond3_stencil_2d18_cmp_nsign_q_4_q;
    reg [0:0] redist2_i_exitcond3_stencil_2d18_cmp_nsign_q_4_delay_0;
    reg [0:0] redist2_i_exitcond3_stencil_2d18_cmp_nsign_q_4_delay_1;
    reg [0:0] redist2_i_exitcond3_stencil_2d18_cmp_nsign_q_4_delay_2;
    reg [31:0] redist3_sync_together66_aunroll_x_in_c0_eni9_2_tpl_4_q;
    reg [31:0] redist3_sync_together66_aunroll_x_in_c0_eni9_2_tpl_4_delay_0;
    reg [31:0] redist3_sync_together66_aunroll_x_in_c0_eni9_2_tpl_4_delay_1;
    reg [31:0] redist4_sync_together66_aunroll_x_in_c0_eni9_2_tpl_8_q;
    reg [31:0] redist4_sync_together66_aunroll_x_in_c0_eni9_2_tpl_8_delay_0;
    reg [31:0] redist4_sync_together66_aunroll_x_in_c0_eni9_2_tpl_8_delay_1;
    reg [31:0] redist6_sync_together66_aunroll_x_in_c0_eni9_3_tpl_8_q;
    reg [0:0] redist8_sync_together66_aunroll_x_in_c0_eni9_5_tpl_8_q;
    reg [0:0] redist9_sync_together66_aunroll_x_in_c0_eni9_6_tpl_8_q;
    reg [0:0] redist12_sync_together66_aunroll_x_in_c0_eni9_9_tpl_8_q;
    reg [0:0] redist13_sync_together66_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist14_sync_together66_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist15_sync_together66_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist16_sync_together66_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist17_sync_together66_aunroll_x_in_i_valid_6_q;
    reg [0:0] redist17_sync_together66_aunroll_x_in_i_valid_6_delay_0;
    reg [0:0] redist18_sync_together66_aunroll_x_in_i_valid_7_q;
    reg [0:0] redist19_sync_together66_aunroll_x_in_i_valid_8_q;
    reg [0:0] redist20_i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_inv_pred_x_q_1_q;
    reg [0:0] redist21_i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_inv_pred_x_q_2_q;
    reg [0:0] redist22_i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_inv_pred_x_q_3_q;
    reg [0:0] redist23_i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_inv_pred_x_q_4_q;
    reg [0:0] redist24_i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_inv_pred_x_q_6_q;
    reg [0:0] redist24_i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_inv_pred_x_q_6_delay_0;
    reg [31:0] redist25_i_llvm_fpga_pop_i32_r_026_pop1336_pop21_stencil_2d0_i_llvm_fpga_pop_i32_r_026_pop1336_pop21_stencil_2d12_mux_x_q_1_q;
    reg [31:0] redist26_i_llvm_fpga_pop_i32_r_026_pop1336_pop21_stencil_2d0_i_llvm_fpga_pop_i32_r_026_pop1336_pop21_stencil_2d12_mux_x_q_4_q;
    reg [31:0] redist26_i_llvm_fpga_pop_i32_r_026_pop1336_pop21_stencil_2d0_i_llvm_fpga_pop_i32_r_026_pop1336_pop21_stencil_2d12_mux_x_q_4_delay_0;
    reg [31:0] redist26_i_llvm_fpga_pop_i32_r_026_pop1336_pop21_stencil_2d0_i_llvm_fpga_pop_i32_r_026_pop1336_pop21_stencil_2d12_mux_x_q_4_delay_1;
    reg [31:0] redist27_bgTrunc_i_mul16_add11_stencil_2d11_sel_x_b_3_q;
    reg [31:0] redist27_bgTrunc_i_mul16_add11_stencil_2d11_sel_x_b_3_delay_0;
    reg [31:0] redist27_bgTrunc_i_mul16_add11_stencil_2d11_sel_x_b_3_delay_1;
    reg [31:0] redist28_bgTrunc_i_add17_stencil_2d13_sel_x_b_1_q;
    reg [0:0] redist29_i_llvm_fpga_pipeline_keep_going15_stencil_2d6_out_data_out_4_q;
    reg [0:0] redist29_i_llvm_fpga_pipeline_keep_going15_stencil_2d6_out_data_out_4_delay_0;
    reg [0:0] redist29_i_llvm_fpga_pipeline_keep_going15_stencil_2d6_out_data_out_4_delay_1;
    reg [0:0] redist29_i_llvm_fpga_pipeline_keep_going15_stencil_2d6_out_data_out_4_delay_2;
    reg [0:0] redist30_i_llvm_fpga_forked_stencil_2d_b6_forked_stencil_2d3_out_buffer_out_4_q;
    reg [0:0] redist30_i_llvm_fpga_forked_stencil_2d_b6_forked_stencil_2d3_out_buffer_out_4_delay_0;
    reg [0:0] redist30_i_llvm_fpga_forked_stencil_2d_b6_forked_stencil_2d3_out_buffer_out_4_delay_1;
    reg [0:0] redist30_i_llvm_fpga_forked_stencil_2d_b6_forked_stencil_2d3_out_buffer_out_4_delay_2;
    reg [0:0] redist31_i_llvm_fpga_forked_stencil_2d_b6_forked_stencil_2d3_out_buffer_out_5_q;
    reg [0:0] redist32_i_llvm_fpga_forked_stencil_2d_b6_forked_stencil_2d3_out_buffer_out_7_q;
    reg [0:0] redist32_i_llvm_fpga_forked_stencil_2d_b6_forked_stencil_2d3_out_buffer_out_7_delay_0;
    reg [0:0] redist33_i_llvm_fpga_forked_stencil_2d_b6_forked_stencil_2d3_out_buffer_out_8_q;
    reg [0:0] redist34_i_llvm_fpga_dummy_thread_stencil_2d_b6_dummy_stencil_2d2_out_dummy_out_4_q;
    reg [0:0] redist34_i_llvm_fpga_dummy_thread_stencil_2d_b6_dummy_stencil_2d2_out_dummy_out_4_delay_0;
    reg [0:0] redist34_i_llvm_fpga_dummy_thread_stencil_2d_b6_dummy_stencil_2d2_out_dummy_out_4_delay_1;
    reg [0:0] redist34_i_llvm_fpga_dummy_thread_stencil_2d_b6_dummy_stencil_2d2_out_dummy_out_4_delay_2;
    reg [30:0] redist35_i_dot1_prod_stencil_2d15_vt_select_31_b_1_q;
    reg [31:0] redist3_sync_together66_aunroll_x_in_c0_eni9_2_tpl_4_inputreg0_q;
    reg [31:0] redist4_sync_together66_aunroll_x_in_c0_eni9_2_tpl_8_inputreg0_q;
    reg [31:0] redist5_sync_together66_aunroll_x_in_c0_eni9_3_tpl_7_inputreg0_q;
    reg [31:0] redist5_sync_together66_aunroll_x_in_c0_eni9_3_tpl_7_outputreg0_q;
    wire redist5_sync_together66_aunroll_x_in_c0_eni9_3_tpl_7_mem_reset0;
    wire [31:0] redist5_sync_together66_aunroll_x_in_c0_eni9_3_tpl_7_mem_ia;
    wire [1:0] redist5_sync_together66_aunroll_x_in_c0_eni9_3_tpl_7_mem_aa;
    wire [1:0] redist5_sync_together66_aunroll_x_in_c0_eni9_3_tpl_7_mem_ab;
    wire [31:0] redist5_sync_together66_aunroll_x_in_c0_eni9_3_tpl_7_mem_iq;
    wire [31:0] redist5_sync_together66_aunroll_x_in_c0_eni9_3_tpl_7_mem_q;
    wire [1:0] redist5_sync_together66_aunroll_x_in_c0_eni9_3_tpl_7_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [1:0] redist5_sync_together66_aunroll_x_in_c0_eni9_3_tpl_7_wraddr_i = 2'b11;
    wire [1:0] redist5_sync_together66_aunroll_x_in_c0_eni9_3_tpl_7_offset_q;
    wire [2:0] redist5_sync_together66_aunroll_x_in_c0_eni9_3_tpl_7_rdcnt_a;
    wire [2:0] redist5_sync_together66_aunroll_x_in_c0_eni9_3_tpl_7_rdcnt_b;
    logic [2:0] redist5_sync_together66_aunroll_x_in_c0_eni9_3_tpl_7_rdcnt_o;
    wire [2:0] redist5_sync_together66_aunroll_x_in_c0_eni9_3_tpl_7_rdcnt_q;
    reg [31:0] redist7_sync_together66_aunroll_x_in_c0_eni9_4_tpl_8_inputreg0_q;
    reg [31:0] redist7_sync_together66_aunroll_x_in_c0_eni9_4_tpl_8_outputreg0_q;
    wire redist7_sync_together66_aunroll_x_in_c0_eni9_4_tpl_8_mem_reset0;
    wire [31:0] redist7_sync_together66_aunroll_x_in_c0_eni9_4_tpl_8_mem_ia;
    wire [2:0] redist7_sync_together66_aunroll_x_in_c0_eni9_4_tpl_8_mem_aa;
    wire [2:0] redist7_sync_together66_aunroll_x_in_c0_eni9_4_tpl_8_mem_ab;
    wire [31:0] redist7_sync_together66_aunroll_x_in_c0_eni9_4_tpl_8_mem_iq;
    wire [31:0] redist7_sync_together66_aunroll_x_in_c0_eni9_4_tpl_8_mem_q;
    wire [2:0] redist7_sync_together66_aunroll_x_in_c0_eni9_4_tpl_8_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [2:0] redist7_sync_together66_aunroll_x_in_c0_eni9_4_tpl_8_wraddr_i = 3'b111;
    wire [2:0] redist7_sync_together66_aunroll_x_in_c0_eni9_4_tpl_8_offset_q;
    wire [3:0] redist7_sync_together66_aunroll_x_in_c0_eni9_4_tpl_8_rdcnt_a;
    wire [3:0] redist7_sync_together66_aunroll_x_in_c0_eni9_4_tpl_8_rdcnt_b;
    logic [3:0] redist7_sync_together66_aunroll_x_in_c0_eni9_4_tpl_8_rdcnt_o;
    wire [3:0] redist7_sync_together66_aunroll_x_in_c0_eni9_4_tpl_8_rdcnt_q;
    reg [31:0] redist10_sync_together66_aunroll_x_in_c0_eni9_7_tpl_8_inputreg0_q;
    reg [31:0] redist10_sync_together66_aunroll_x_in_c0_eni9_7_tpl_8_outputreg0_q;
    wire redist10_sync_together66_aunroll_x_in_c0_eni9_7_tpl_8_mem_reset0;
    wire [31:0] redist10_sync_together66_aunroll_x_in_c0_eni9_7_tpl_8_mem_ia;
    wire [2:0] redist10_sync_together66_aunroll_x_in_c0_eni9_7_tpl_8_mem_aa;
    wire [2:0] redist10_sync_together66_aunroll_x_in_c0_eni9_7_tpl_8_mem_ab;
    wire [31:0] redist10_sync_together66_aunroll_x_in_c0_eni9_7_tpl_8_mem_iq;
    wire [31:0] redist10_sync_together66_aunroll_x_in_c0_eni9_7_tpl_8_mem_q;
    wire [2:0] redist10_sync_together66_aunroll_x_in_c0_eni9_7_tpl_8_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [2:0] redist10_sync_together66_aunroll_x_in_c0_eni9_7_tpl_8_wraddr_i = 3'b111;
    wire [3:0] redist10_sync_together66_aunroll_x_in_c0_eni9_7_tpl_8_rdcnt_a;
    wire [3:0] redist10_sync_together66_aunroll_x_in_c0_eni9_7_tpl_8_rdcnt_b;
    logic [3:0] redist10_sync_together66_aunroll_x_in_c0_eni9_7_tpl_8_rdcnt_o;
    wire [3:0] redist10_sync_together66_aunroll_x_in_c0_eni9_7_tpl_8_rdcnt_q;
    reg [31:0] redist11_sync_together66_aunroll_x_in_c0_eni9_8_tpl_8_inputreg0_q;
    reg [31:0] redist11_sync_together66_aunroll_x_in_c0_eni9_8_tpl_8_outputreg0_q;
    wire redist11_sync_together66_aunroll_x_in_c0_eni9_8_tpl_8_mem_reset0;
    wire [31:0] redist11_sync_together66_aunroll_x_in_c0_eni9_8_tpl_8_mem_ia;
    wire [2:0] redist11_sync_together66_aunroll_x_in_c0_eni9_8_tpl_8_mem_aa;
    wire [2:0] redist11_sync_together66_aunroll_x_in_c0_eni9_8_tpl_8_mem_ab;
    wire [31:0] redist11_sync_together66_aunroll_x_in_c0_eni9_8_tpl_8_mem_iq;
    wire [31:0] redist11_sync_together66_aunroll_x_in_c0_eni9_8_tpl_8_mem_q;
    wire [2:0] redist11_sync_together66_aunroll_x_in_c0_eni9_8_tpl_8_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [2:0] redist11_sync_together66_aunroll_x_in_c0_eni9_8_tpl_8_wraddr_i = 3'b111;
    wire [3:0] redist11_sync_together66_aunroll_x_in_c0_eni9_8_tpl_8_rdcnt_a;
    wire [3:0] redist11_sync_together66_aunroll_x_in_c0_eni9_8_tpl_8_rdcnt_b;
    logic [3:0] redist11_sync_together66_aunroll_x_in_c0_eni9_8_tpl_8_rdcnt_o;
    wire [3:0] redist11_sync_together66_aunroll_x_in_c0_eni9_8_tpl_8_rdcnt_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist13_sync_together66_aunroll_x_in_i_valid_1(DELAY,309)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist13_sync_together66_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist13_sync_together66_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist14_sync_together66_aunroll_x_in_i_valid_2(DELAY,310)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist14_sync_together66_aunroll_x_in_i_valid_2_q <= $unsigned(redist13_sync_together66_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist15_sync_together66_aunroll_x_in_i_valid_3(DELAY,311)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist15_sync_together66_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist15_sync_together66_aunroll_x_in_i_valid_3_q <= $unsigned(redist14_sync_together66_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg2(REG,123)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist15_sync_together66_aunroll_x_in_i_valid_3_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // valid_fanout_reg13(REG,134)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist15_sync_together66_aunroll_x_in_i_valid_3_q);
        end
    end

    // c_i3_159(CONSTANT,33)
    assign c_i3_159_q = $unsigned(3'b001);

    // i_llvm_fpga_push_i3_fpga_indvars_iv1_push19_stencil_2d0_c_i5_03_x(CONSTANT,110)
    assign i_llvm_fpga_push_i3_fpga_indvars_iv1_push19_stencil_2d0_c_i5_03_x_q = $unsigned(5'b00000);

    // c_i3_161(CONSTANT,34)
    assign c_i3_161_q = $unsigned(3'b111);

    // i_fpga_indvars_iv_next2_stencil_2d24(ADD,42)@4
    assign i_fpga_indvars_iv_next2_stencil_2d24_a = {1'b0, i_llvm_fpga_pop_i3_fpga_indvars_iv1_pop19_stencil_2d0_i_llvm_fpga_pop_i3_fpga_indvars_iv1_pop19_stencil_2d17_mux_x_q};
    assign i_fpga_indvars_iv_next2_stencil_2d24_b = {1'b0, c_i3_161_q};
    assign i_fpga_indvars_iv_next2_stencil_2d24_o = $unsigned(i_fpga_indvars_iv_next2_stencil_2d24_a) + $unsigned(i_fpga_indvars_iv_next2_stencil_2d24_b);
    assign i_fpga_indvars_iv_next2_stencil_2d24_q = i_fpga_indvars_iv_next2_stencil_2d24_o[3:0];

    // bgTrunc_i_fpga_indvars_iv_next2_stencil_2d24_sel_x(BITSELECT,61)@4
    assign bgTrunc_i_fpga_indvars_iv_next2_stencil_2d24_sel_x_b = i_fpga_indvars_iv_next2_stencil_2d24_q[2:0];

    // i_llvm_fpga_push_i3_fpga_indvars_iv1_push19_stencil_2d0_element_extension2_x(BITJOIN,111)@4
    assign i_llvm_fpga_push_i3_fpga_indvars_iv1_push19_stencil_2d0_element_extension2_x_q = {i_llvm_fpga_push_i3_fpga_indvars_iv1_push19_stencil_2d0_c_i5_03_x_q, bgTrunc_i_fpga_indvars_iv_next2_stencil_2d24_sel_x_b};

    // i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_inv_pred_x(LOGICAL,83)@1
    assign i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_inv_pred_x_q = ~ (GND_q);

    // valid_fanout_reg15(REG,136)@0 + 1
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

    // redist20_i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_inv_pred_x_q_1(DELAY,316)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist20_i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_inv_pred_x_q_1_q <= $unsigned(i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_inv_pred_x_q);
        end
    end

    // redist21_i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_inv_pred_x_q_2(DELAY,317)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist21_i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_inv_pred_x_q_2_q <= $unsigned(redist20_i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_inv_pred_x_q_1_q);
        end
    end

    // valid_fanout_reg14(REG,135)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist14_sync_together66_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i3_fpga_indvars_iv1_push19_stencil_2d0_i_llvm_fpga_push_i3_fpga_indvars_iv1_push19_stencil_2d1_x(FIFODELAY,112)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i3_fpga_indvars_iv1_push19_stencil_2d0_i_llvm_fpga_push_i3_fpga_indvars_iv1_push19_stencil_2d1_x_i_stall = ~ (valid_fanout_reg15_q & i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_inv_pred_x_q);
    assign i_llvm_fpga_push_i3_fpga_indvars_iv1_push19_stencil_2d0_i_llvm_fpga_push_i3_fpga_indvars_iv1_push19_stencil_2d1_x_i_valid = valid_fanout_reg14_q & redist21_i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i3_fpga_indvars_iv1_push19_stencil_2d0_i_llvm_fpga_push_i3_fpga_indvars_iv1_push19_stencil_2d1_x_i_data = i_llvm_fpga_push_i3_fpga_indvars_iv1_push19_stencil_2d0_element_extension2_x_q;
    assign i_llvm_fpga_push_i3_fpga_indvars_iv1_push19_stencil_2d0_i_llvm_fpga_push_i3_fpga_indvars_iv1_push19_stencil_2d1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i3_fpga_indvars_iv1_push19_stencil_2d0_i_llvm_fpga_push_i3_fpga_indvars_iv1_push19_stencil_2d1_x_i_valid[0];
    assign i_llvm_fpga_push_i3_fpga_indvars_iv1_push19_stencil_2d0_i_llvm_fpga_push_i3_fpga_indvars_iv1_push19_stencil_2d1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i3_fpga_indvars_iv1_push19_stencil_2d0_i_llvm_fpga_push_i3_fpga_indvars_iv1_push19_stencil_2d1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i3_fpga_indvars_iv1_push19_stencil_2d0_i_llvm_fpga_push_i3_fpga_indvars_iv1_push19_stencil_2d1_x (
        .i_valid(i_llvm_fpga_push_i3_fpga_indvars_iv1_push19_stencil_2d0_i_llvm_fpga_push_i3_fpga_indvars_iv1_push19_stencil_2d1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i3_fpga_indvars_iv1_push19_stencil_2d0_i_llvm_fpga_push_i3_fpga_indvars_iv1_push19_stencil_2d1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i3_fpga_indvars_iv1_push19_stencil_2d0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i3_fpga_indvars_iv1_push19_stencil_2d0_i_llvm_fpga_push_i3_fpga_indvars_iv1_push19_stencil_2d1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i3_fpga_indvars_iv1_push19_stencil_2d0_adapt_scalar_trunc4_sel_x(BITSELECT,114)@4
    assign i_llvm_fpga_push_i3_fpga_indvars_iv1_push19_stencil_2d0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i3_fpga_indvars_iv1_push19_stencil_2d0_i_llvm_fpga_push_i3_fpga_indvars_iv1_push19_stencil_2d1_x_o_data[2:0];

    // i_llvm_fpga_pop_i3_fpga_indvars_iv1_pop19_stencil_2d0_i_llvm_fpga_pop_i3_fpga_indvars_iv1_pop19_stencil_2d17_mux_x(MUX,78)@4
    assign i_llvm_fpga_pop_i3_fpga_indvars_iv1_pop19_stencil_2d0_i_llvm_fpga_pop_i3_fpga_indvars_iv1_pop19_stencil_2d17_mux_x_s = redist30_i_llvm_fpga_forked_stencil_2d_b6_forked_stencil_2d3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i3_fpga_indvars_iv1_pop19_stencil_2d0_i_llvm_fpga_pop_i3_fpga_indvars_iv1_pop19_stencil_2d17_mux_x_s or i_llvm_fpga_push_i3_fpga_indvars_iv1_push19_stencil_2d0_adapt_scalar_trunc4_sel_x_b or c_i3_159_q)
    begin
        unique case (i_llvm_fpga_pop_i3_fpga_indvars_iv1_pop19_stencil_2d0_i_llvm_fpga_pop_i3_fpga_indvars_iv1_pop19_stencil_2d17_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i3_fpga_indvars_iv1_pop19_stencil_2d0_i_llvm_fpga_pop_i3_fpga_indvars_iv1_pop19_stencil_2d17_mux_x_q = i_llvm_fpga_push_i3_fpga_indvars_iv1_push19_stencil_2d0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i3_fpga_indvars_iv1_pop19_stencil_2d0_i_llvm_fpga_pop_i3_fpga_indvars_iv1_pop19_stencil_2d17_mux_x_q = c_i3_159_q;
            default : i_llvm_fpga_pop_i3_fpga_indvars_iv1_pop19_stencil_2d0_i_llvm_fpga_pop_i3_fpga_indvars_iv1_pop19_stencil_2d17_mux_x_q = 3'b0;
        endcase
    end

    // i_exitcond3_stencil_2d18_cmp_nsign(LOGICAL,174)@4
    assign i_exitcond3_stencil_2d18_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i3_fpga_indvars_iv1_pop19_stencil_2d0_i_llvm_fpga_pop_i3_fpga_indvars_iv1_pop19_stencil_2d17_mux_x_q[2:2]));

    // i_llvm_fpga_push_i1_notexitcond16_stencil_2d23(BLACKBOX,47)@4
    // out out_feedback_out_5@20000000
    // out out_feedback_valid_out_5@20000000
    stencil_2d_i_llvm_fpga_push_i1_notexitcond16_0 thei_llvm_fpga_push_i1_notexitcond16_stencil_2d23 (
        .in_data_in(i_exitcond3_stencil_2d18_cmp_nsign_q),
        .in_feedback_stall_in_5(i_llvm_fpga_pipeline_keep_going15_stencil_2d6_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(),
        .out_feedback_out_5(i_llvm_fpga_push_i1_notexitcond16_stencil_2d23_out_feedback_out_5),
        .out_feedback_valid_out_5(i_llvm_fpga_push_i1_notexitcond16_stencil_2d23_out_feedback_valid_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_dummy_thread_stencil_2d_b6_dummy_stencil_2d2(BLACKBOX,44)@0
    // in in_stall_in@20000000
    stencil_2d_i_llvm_fpga_dummy_thread_b6_dummy_stencil_2d0 thei_llvm_fpga_dummy_thread_stencil_2d_b6_dummy_stencil_2d2 (
        .in_dummy_in(in_dummy_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dummy_out(i_llvm_fpga_dummy_thread_stencil_2d_b6_dummy_stencil_2d2_out_dummy_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist34_i_llvm_fpga_dummy_thread_stencil_2d_b6_dummy_stencil_2d2_out_dummy_out_4(DELAY,330)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist34_i_llvm_fpga_dummy_thread_stencil_2d_b6_dummy_stencil_2d2_out_dummy_out_4_delay_0 <= $unsigned(i_llvm_fpga_dummy_thread_stencil_2d_b6_dummy_stencil_2d2_out_dummy_out);
            redist34_i_llvm_fpga_dummy_thread_stencil_2d_b6_dummy_stencil_2d2_out_dummy_out_4_delay_1 <= redist34_i_llvm_fpga_dummy_thread_stencil_2d_b6_dummy_stencil_2d2_out_dummy_out_4_delay_0;
            redist34_i_llvm_fpga_dummy_thread_stencil_2d_b6_dummy_stencil_2d2_out_dummy_out_4_delay_2 <= redist34_i_llvm_fpga_dummy_thread_stencil_2d_b6_dummy_stencil_2d2_out_dummy_out_4_delay_1;
            redist34_i_llvm_fpga_dummy_thread_stencil_2d_b6_dummy_stencil_2d2_out_dummy_out_4_q <= redist34_i_llvm_fpga_dummy_thread_stencil_2d_b6_dummy_stencil_2d2_out_dummy_out_4_delay_2;
        end
    end

    // i_llvm_fpga_forked_stencil_2d_b6_forked_stencil_2d3(BLACKBOX,45)@0
    // in in_stall_in@20000000
    stencil_2d_i_llvm_fpga_forked_b6_forked_stencil_2d0 thei_llvm_fpga_forked_stencil_2d_b6_forked_stencil_2d3 (
        .in_buffer_in(in_buffer_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_buffer_out(i_llvm_fpga_forked_stencil_2d_b6_forked_stencil_2d3_out_buffer_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist30_i_llvm_fpga_forked_stencil_2d_b6_forked_stencil_2d3_out_buffer_out_4(DELAY,326)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist30_i_llvm_fpga_forked_stencil_2d_b6_forked_stencil_2d3_out_buffer_out_4_delay_0 <= $unsigned(i_llvm_fpga_forked_stencil_2d_b6_forked_stencil_2d3_out_buffer_out);
            redist30_i_llvm_fpga_forked_stencil_2d_b6_forked_stencil_2d3_out_buffer_out_4_delay_1 <= redist30_i_llvm_fpga_forked_stencil_2d_b6_forked_stencil_2d3_out_buffer_out_4_delay_0;
            redist30_i_llvm_fpga_forked_stencil_2d_b6_forked_stencil_2d3_out_buffer_out_4_delay_2 <= redist30_i_llvm_fpga_forked_stencil_2d_b6_forked_stencil_2d3_out_buffer_out_4_delay_1;
            redist30_i_llvm_fpga_forked_stencil_2d_b6_forked_stencil_2d3_out_buffer_out_4_q <= redist30_i_llvm_fpga_forked_stencil_2d_b6_forked_stencil_2d3_out_buffer_out_4_delay_2;
        end
    end

    // i_llvm_fpga_pipeline_keep_going15_stencil_2d6(BLACKBOX,46)@4
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_dummy_out@20000000
    // out out_pipeline_forked_out@20000000
    // out out_pipeline_valid_out@20000000
    stencil_2d_i_llvm_fpga_pipeline_keep_going15_0 thei_llvm_fpga_pipeline_keep_going15_stencil_2d6 (
        .in_data_in(redist30_i_llvm_fpga_forked_stencil_2d_b6_forked_stencil_2d3_out_buffer_out_4_q),
        .in_dummy_in(redist34_i_llvm_fpga_dummy_thread_stencil_2d_b6_dummy_stencil_2d2_out_dummy_out_4_q),
        .in_forked_in(redist30_i_llvm_fpga_forked_stencil_2d_b6_forked_stencil_2d3_out_buffer_out_4_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond16_stencil_2d23_out_feedback_out_5),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond16_stencil_2d23_out_feedback_valid_out_5),
        .in_pipeline_stall_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going15_stencil_2d6_out_data_out),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going15_stencil_2d6_out_exiting_valid_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going15_stencil_2d6_out_not_exitcond_stall_out),
        .out_pipeline_dummy_out(i_llvm_fpga_pipeline_keep_going15_stencil_2d6_out_pipeline_dummy_out),
        .out_pipeline_forked_out(i_llvm_fpga_pipeline_keep_going15_stencil_2d6_out_pipeline_forked_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going15_stencil_2d6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,56)
    assign out_exiting_valid_out = i_llvm_fpga_pipeline_keep_going15_stencil_2d6_out_exiting_valid_out;

    // dupName_0_regfree_osync_x(GPOUT,66)
    assign out_pipeline_dummy_out = i_llvm_fpga_pipeline_keep_going15_stencil_2d6_out_pipeline_dummy_out;

    // dupName_1_regfree_osync_x(GPOUT,67)
    assign out_pipeline_forked_out = i_llvm_fpga_pipeline_keep_going15_stencil_2d6_out_pipeline_forked_out;

    // dupName_2_regfree_osync_x(GPOUT,68)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going15_stencil_2d6_out_pipeline_valid_out;

    // i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_c_i7_03_x(CONSTANT,80)
    assign i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_c_i7_03_x_q = $unsigned(7'b0000000);

    // redist29_i_llvm_fpga_pipeline_keep_going15_stencil_2d6_out_data_out_4(DELAY,325)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist29_i_llvm_fpga_pipeline_keep_going15_stencil_2d6_out_data_out_4_delay_0 <= $unsigned(i_llvm_fpga_pipeline_keep_going15_stencil_2d6_out_data_out);
            redist29_i_llvm_fpga_pipeline_keep_going15_stencil_2d6_out_data_out_4_delay_1 <= redist29_i_llvm_fpga_pipeline_keep_going15_stencil_2d6_out_data_out_4_delay_0;
            redist29_i_llvm_fpga_pipeline_keep_going15_stencil_2d6_out_data_out_4_delay_2 <= redist29_i_llvm_fpga_pipeline_keep_going15_stencil_2d6_out_data_out_4_delay_1;
            redist29_i_llvm_fpga_pipeline_keep_going15_stencil_2d6_out_data_out_4_q <= redist29_i_llvm_fpga_pipeline_keep_going15_stencil_2d6_out_data_out_4_delay_2;
        end
    end

    // i_stencil_2d_b6_next_iter_isreal_stencil_2d7(LOGICAL,51)@8
    assign i_stencil_2d_b6_next_iter_isreal_stencil_2d7_q = i_llvm_fpga_pop_coalesce_i1_stencil_2d_b6_current_iter_isreal_stencil_2d0_i_llvm_fpga_pop_coalesce_i1_stencil_2d_b6_current_iter_isreal_stencil_2d4_mux_x_q & redist29_i_llvm_fpga_pipeline_keep_going15_stencil_2d6_out_data_out_4_q;

    // i_llvm_fpga_push_i1_stencil_2d_b6_next_iter_isreal_push_stencil_2d0_element_extension2_x(BITJOIN,93)@8
    assign i_llvm_fpga_push_i1_stencil_2d_b6_next_iter_isreal_push_stencil_2d0_element_extension2_x_q = {i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_c_i7_03_x_q, i_stencil_2d_b6_next_iter_isreal_stencil_2d7_q};

    // redist22_i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_inv_pred_x_q_3(DELAY,318)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist22_i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_inv_pred_x_q_3_q <= $unsigned(redist21_i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_inv_pred_x_q_2_q);
        end
    end

    // redist23_i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_inv_pred_x_q_4(DELAY,319)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist23_i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_inv_pred_x_q_4_q <= $unsigned(redist22_i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_inv_pred_x_q_3_q);
        end
    end

    // redist16_sync_together66_aunroll_x_in_i_valid_4(DELAY,312)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist16_sync_together66_aunroll_x_in_i_valid_4_q <= $unsigned(redist15_sync_together66_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg4(REG,125)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist16_sync_together66_aunroll_x_in_i_valid_4_q);
        end
    end

    // redist24_i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_inv_pred_x_q_6(DELAY,320)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist24_i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_inv_pred_x_q_6_delay_0 <= $unsigned(redist23_i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_inv_pred_x_q_4_q);
            redist24_i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_inv_pred_x_q_6_q <= redist24_i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_inv_pred_x_q_6_delay_0;
        end
    end

    // redist17_sync_together66_aunroll_x_in_i_valid_6(DELAY,313)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist17_sync_together66_aunroll_x_in_i_valid_6_delay_0 <= '0;
        end
        else
        begin
            redist17_sync_together66_aunroll_x_in_i_valid_6_delay_0 <= $unsigned(redist16_sync_together66_aunroll_x_in_i_valid_4_q);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist17_sync_together66_aunroll_x_in_i_valid_6_q <= redist17_sync_together66_aunroll_x_in_i_valid_6_delay_0;
        end
    end

    // valid_fanout_reg3(REG,124)@6 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist17_sync_together66_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_push_i1_stencil_2d_b6_next_iter_isreal_push_stencil_2d0_i_llvm_fpga_push_i1_stencil_2d_b6_next_iter_isreal_push_stencil_2d1_x(FIFODELAY,94)@5 + 1
    // in i_valid@7
    // in i_write_pred@7
    // in i_data@8
    // out o_data@8
    assign i_llvm_fpga_push_i1_stencil_2d_b6_next_iter_isreal_push_stencil_2d0_i_llvm_fpga_push_i1_stencil_2d_b6_next_iter_isreal_push_stencil_2d1_x_i_stall = ~ (valid_fanout_reg4_q & redist23_i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_inv_pred_x_q_4_q);
    assign i_llvm_fpga_push_i1_stencil_2d_b6_next_iter_isreal_push_stencil_2d0_i_llvm_fpga_push_i1_stencil_2d_b6_next_iter_isreal_push_stencil_2d1_x_i_valid = valid_fanout_reg3_q & redist24_i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_inv_pred_x_q_6_q;
    assign i_llvm_fpga_push_i1_stencil_2d_b6_next_iter_isreal_push_stencil_2d0_i_llvm_fpga_push_i1_stencil_2d_b6_next_iter_isreal_push_stencil_2d1_x_i_data = i_llvm_fpga_push_i1_stencil_2d_b6_next_iter_isreal_push_stencil_2d0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_stencil_2d_b6_next_iter_isreal_push_stencil_2d0_i_llvm_fpga_push_i1_stencil_2d_b6_next_iter_isreal_push_stencil_2d1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_stencil_2d_b6_next_iter_isreal_push_stencil_2d0_i_llvm_fpga_push_i1_stencil_2d_b6_next_iter_isreal_push_stencil_2d1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_stencil_2d_b6_next_iter_isreal_push_stencil_2d0_i_llvm_fpga_push_i1_stencil_2d_b6_next_iter_isreal_push_stencil_2d1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_stencil_2d_b6_next_iter_isreal_push_stencil_2d0_i_llvm_fpga_push_i1_stencil_2d_b6_next_iter_isreal_push_stencil_2d1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_stencil_2d_b6_next_iter_isreal_push_stencil_2d0_i_llvm_fpga_push_i1_stencil_2d_b6_next_iter_isreal_push_stencil_2d1_x (
        .i_valid(i_llvm_fpga_push_i1_stencil_2d_b6_next_iter_isreal_push_stencil_2d0_i_llvm_fpga_push_i1_stencil_2d_b6_next_iter_isreal_push_stencil_2d1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_stencil_2d_b6_next_iter_isreal_push_stencil_2d0_i_llvm_fpga_push_i1_stencil_2d_b6_next_iter_isreal_push_stencil_2d1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_stencil_2d_b6_next_iter_isreal_push_stencil_2d0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_stencil_2d_b6_next_iter_isreal_push_stencil_2d0_i_llvm_fpga_push_i1_stencil_2d_b6_next_iter_isreal_push_stencil_2d1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_stencil_2d_b6_next_iter_isreal_push_stencil_2d0_adapt_scalar_trunc4_sel_x(BITSELECT,96)@8
    assign i_llvm_fpga_push_i1_stencil_2d_b6_next_iter_isreal_push_stencil_2d0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_stencil_2d_b6_next_iter_isreal_push_stencil_2d0_i_llvm_fpga_push_i1_stencil_2d_b6_next_iter_isreal_push_stencil_2d1_x_o_data[0:0];

    // i_llvm_fpga_pop_coalesce_i1_stencil_2d_b6_current_iter_isreal_stencil_2d0_i_llvm_fpga_pop_coalesce_i1_stencil_2d_b6_current_iter_isreal_stencil_2d4_mux_x(MUX,71)@8
    assign i_llvm_fpga_pop_coalesce_i1_stencil_2d_b6_current_iter_isreal_stencil_2d0_i_llvm_fpga_pop_coalesce_i1_stencil_2d_b6_current_iter_isreal_stencil_2d4_mux_x_s = redist33_i_llvm_fpga_forked_stencil_2d_b6_forked_stencil_2d3_out_buffer_out_8_q;
    always @(i_llvm_fpga_pop_coalesce_i1_stencil_2d_b6_current_iter_isreal_stencil_2d0_i_llvm_fpga_pop_coalesce_i1_stencil_2d_b6_current_iter_isreal_stencil_2d4_mux_x_s or i_llvm_fpga_push_i1_stencil_2d_b6_next_iter_isreal_push_stencil_2d0_adapt_scalar_trunc4_sel_x_b or VCC_q)
    begin
        unique case (i_llvm_fpga_pop_coalesce_i1_stencil_2d_b6_current_iter_isreal_stencil_2d0_i_llvm_fpga_pop_coalesce_i1_stencil_2d_b6_current_iter_isreal_stencil_2d4_mux_x_s)
            1'b0 : i_llvm_fpga_pop_coalesce_i1_stencil_2d_b6_current_iter_isreal_stencil_2d0_i_llvm_fpga_pop_coalesce_i1_stencil_2d_b6_current_iter_isreal_stencil_2d4_mux_x_q = i_llvm_fpga_push_i1_stencil_2d_b6_next_iter_isreal_push_stencil_2d0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_coalesce_i1_stencil_2d_b6_current_iter_isreal_stencil_2d0_i_llvm_fpga_pop_coalesce_i1_stencil_2d_b6_current_iter_isreal_stencil_2d4_mux_x_q = VCC_q;
            default : i_llvm_fpga_pop_coalesce_i1_stencil_2d_b6_current_iter_isreal_stencil_2d0_i_llvm_fpga_pop_coalesce_i1_stencil_2d_b6_current_iter_isreal_stencil_2d4_mux_x_q = 1'b0;
        endcase
    end

    // i_stencil_2d_b6_current_iter_isspec_stencil_2d5(LOGICAL,50)@8
    assign i_stencil_2d_b6_current_iter_isspec_stencil_2d5_q = i_llvm_fpga_pop_coalesce_i1_stencil_2d_b6_current_iter_isreal_stencil_2d0_i_llvm_fpga_pop_coalesce_i1_stencil_2d_b6_current_iter_isreal_stencil_2d4_mux_x_q ^ VCC_q;

    // redist18_sync_together66_aunroll_x_in_i_valid_7(DELAY,314)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist18_sync_together66_aunroll_x_in_i_valid_7_q <= '0;
        end
        else
        begin
            redist18_sync_together66_aunroll_x_in_i_valid_7_q <= $unsigned(redist17_sync_together66_aunroll_x_in_i_valid_6_q);
        end
    end

    // redist19_sync_together66_aunroll_x_in_i_valid_8(DELAY,315)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist19_sync_together66_aunroll_x_in_i_valid_8_q <= $unsigned(redist18_sync_together66_aunroll_x_in_i_valid_7_q);
        end
    end

    // valid_fanout_reg0(REG,121)@7 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist18_sync_together66_aunroll_x_in_i_valid_7_q);
        end
    end

    // redist8_sync_together66_aunroll_x_in_c0_eni9_5_tpl_8(DELAY,304)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist8_sync_together66_aunroll_x_in_c0_eni9_5_tpl_8 ( .xin(in_c0_eni9_5_tpl), .xout(redist8_sync_together66_aunroll_x_in_c0_eni9_5_tpl_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist7_sync_together66_aunroll_x_in_c0_eni9_4_tpl_8_offset(CONSTANT,344)
    assign redist7_sync_together66_aunroll_x_in_c0_eni9_4_tpl_8_offset_q = $unsigned(3'b101);

    // redist7_sync_together66_aunroll_x_in_c0_eni9_4_tpl_8_rdcnt(ADD,345)
    assign redist7_sync_together66_aunroll_x_in_c0_eni9_4_tpl_8_rdcnt_a = {1'b0, redist7_sync_together66_aunroll_x_in_c0_eni9_4_tpl_8_wraddr_q};
    assign redist7_sync_together66_aunroll_x_in_c0_eni9_4_tpl_8_rdcnt_b = {1'b0, redist7_sync_together66_aunroll_x_in_c0_eni9_4_tpl_8_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_sync_together66_aunroll_x_in_c0_eni9_4_tpl_8_rdcnt_o <= $unsigned(redist7_sync_together66_aunroll_x_in_c0_eni9_4_tpl_8_rdcnt_a) + $unsigned(redist7_sync_together66_aunroll_x_in_c0_eni9_4_tpl_8_rdcnt_b);
        end
    end
    assign redist7_sync_together66_aunroll_x_in_c0_eni9_4_tpl_8_rdcnt_q = redist7_sync_together66_aunroll_x_in_c0_eni9_4_tpl_8_rdcnt_o[3:0];

    // redist7_sync_together66_aunroll_x_in_c0_eni9_4_tpl_8_inputreg0(DELAY,340)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_sync_together66_aunroll_x_in_c0_eni9_4_tpl_8_inputreg0_q <= $unsigned(in_c0_eni9_4_tpl);
        end
    end

    // redist7_sync_together66_aunroll_x_in_c0_eni9_4_tpl_8_wraddr(COUNTER,343)
    // low=0, high=7, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_sync_together66_aunroll_x_in_c0_eni9_4_tpl_8_wraddr_i <= $unsigned(redist7_sync_together66_aunroll_x_in_c0_eni9_4_tpl_8_wraddr_i) + $unsigned(3'd1);
        end
    end
    assign redist7_sync_together66_aunroll_x_in_c0_eni9_4_tpl_8_wraddr_q = redist7_sync_together66_aunroll_x_in_c0_eni9_4_tpl_8_wraddr_i[2:0];

    // redist7_sync_together66_aunroll_x_in_c0_eni9_4_tpl_8_mem(DUALMEM,342)
    assign redist7_sync_together66_aunroll_x_in_c0_eni9_4_tpl_8_mem_ia = $unsigned(redist7_sync_together66_aunroll_x_in_c0_eni9_4_tpl_8_inputreg0_q);
    assign redist7_sync_together66_aunroll_x_in_c0_eni9_4_tpl_8_mem_aa = redist7_sync_together66_aunroll_x_in_c0_eni9_4_tpl_8_wraddr_q;
    assign redist7_sync_together66_aunroll_x_in_c0_eni9_4_tpl_8_mem_ab = redist7_sync_together66_aunroll_x_in_c0_eni9_4_tpl_8_rdcnt_q[2:0];
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
    ) redist7_sync_together66_aunroll_x_in_c0_eni9_4_tpl_8_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist7_sync_together66_aunroll_x_in_c0_eni9_4_tpl_8_mem_aa),
        .data_a(redist7_sync_together66_aunroll_x_in_c0_eni9_4_tpl_8_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist7_sync_together66_aunroll_x_in_c0_eni9_4_tpl_8_mem_ab),
        .q_b(redist7_sync_together66_aunroll_x_in_c0_eni9_4_tpl_8_mem_iq),
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
    assign redist7_sync_together66_aunroll_x_in_c0_eni9_4_tpl_8_mem_q = redist7_sync_together66_aunroll_x_in_c0_eni9_4_tpl_8_mem_iq[31:0];

    // redist7_sync_together66_aunroll_x_in_c0_eni9_4_tpl_8_outputreg0(DELAY,341)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_sync_together66_aunroll_x_in_c0_eni9_4_tpl_8_outputreg0_q <= $unsigned(redist7_sync_together66_aunroll_x_in_c0_eni9_4_tpl_8_mem_q);
        end
    end

    // redist3_sync_together66_aunroll_x_in_c0_eni9_2_tpl_4_inputreg0(DELAY,332)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_sync_together66_aunroll_x_in_c0_eni9_2_tpl_4_inputreg0_q <= $unsigned(in_c0_eni9_2_tpl);
        end
    end

    // redist3_sync_together66_aunroll_x_in_c0_eni9_2_tpl_4(DELAY,299)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_sync_together66_aunroll_x_in_c0_eni9_2_tpl_4_delay_0 <= $unsigned(redist3_sync_together66_aunroll_x_in_c0_eni9_2_tpl_4_inputreg0_q);
            redist3_sync_together66_aunroll_x_in_c0_eni9_2_tpl_4_delay_1 <= redist3_sync_together66_aunroll_x_in_c0_eni9_2_tpl_4_delay_0;
            redist3_sync_together66_aunroll_x_in_c0_eni9_2_tpl_4_q <= redist3_sync_together66_aunroll_x_in_c0_eni9_2_tpl_4_delay_1;
        end
    end

    // redist4_sync_together66_aunroll_x_in_c0_eni9_2_tpl_8_inputreg0(DELAY,333)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_sync_together66_aunroll_x_in_c0_eni9_2_tpl_8_inputreg0_q <= $unsigned(redist3_sync_together66_aunroll_x_in_c0_eni9_2_tpl_4_q);
        end
    end

    // redist4_sync_together66_aunroll_x_in_c0_eni9_2_tpl_8(DELAY,300)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_sync_together66_aunroll_x_in_c0_eni9_2_tpl_8_delay_0 <= $unsigned(redist4_sync_together66_aunroll_x_in_c0_eni9_2_tpl_8_inputreg0_q);
            redist4_sync_together66_aunroll_x_in_c0_eni9_2_tpl_8_delay_1 <= redist4_sync_together66_aunroll_x_in_c0_eni9_2_tpl_8_delay_0;
            redist4_sync_together66_aunroll_x_in_c0_eni9_2_tpl_8_q <= redist4_sync_together66_aunroll_x_in_c0_eni9_2_tpl_8_delay_1;
        end
    end

    // redist5_sync_together66_aunroll_x_in_c0_eni9_3_tpl_7_offset(CONSTANT,338)
    assign redist5_sync_together66_aunroll_x_in_c0_eni9_3_tpl_7_offset_q = $unsigned(2'b10);

    // redist5_sync_together66_aunroll_x_in_c0_eni9_3_tpl_7_rdcnt(ADD,339)
    assign redist5_sync_together66_aunroll_x_in_c0_eni9_3_tpl_7_rdcnt_a = {1'b0, redist5_sync_together66_aunroll_x_in_c0_eni9_3_tpl_7_wraddr_q};
    assign redist5_sync_together66_aunroll_x_in_c0_eni9_3_tpl_7_rdcnt_b = {1'b0, redist5_sync_together66_aunroll_x_in_c0_eni9_3_tpl_7_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_sync_together66_aunroll_x_in_c0_eni9_3_tpl_7_rdcnt_o <= $unsigned(redist5_sync_together66_aunroll_x_in_c0_eni9_3_tpl_7_rdcnt_a) + $unsigned(redist5_sync_together66_aunroll_x_in_c0_eni9_3_tpl_7_rdcnt_b);
        end
    end
    assign redist5_sync_together66_aunroll_x_in_c0_eni9_3_tpl_7_rdcnt_q = redist5_sync_together66_aunroll_x_in_c0_eni9_3_tpl_7_rdcnt_o[2:0];

    // redist5_sync_together66_aunroll_x_in_c0_eni9_3_tpl_7_inputreg0(DELAY,334)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_sync_together66_aunroll_x_in_c0_eni9_3_tpl_7_inputreg0_q <= $unsigned(in_c0_eni9_3_tpl);
        end
    end

    // redist5_sync_together66_aunroll_x_in_c0_eni9_3_tpl_7_wraddr(COUNTER,337)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_sync_together66_aunroll_x_in_c0_eni9_3_tpl_7_wraddr_i <= $unsigned(redist5_sync_together66_aunroll_x_in_c0_eni9_3_tpl_7_wraddr_i) + $unsigned(2'd1);
        end
    end
    assign redist5_sync_together66_aunroll_x_in_c0_eni9_3_tpl_7_wraddr_q = redist5_sync_together66_aunroll_x_in_c0_eni9_3_tpl_7_wraddr_i[1:0];

    // redist5_sync_together66_aunroll_x_in_c0_eni9_3_tpl_7_mem(DUALMEM,336)
    assign redist5_sync_together66_aunroll_x_in_c0_eni9_3_tpl_7_mem_ia = $unsigned(redist5_sync_together66_aunroll_x_in_c0_eni9_3_tpl_7_inputreg0_q);
    assign redist5_sync_together66_aunroll_x_in_c0_eni9_3_tpl_7_mem_aa = redist5_sync_together66_aunroll_x_in_c0_eni9_3_tpl_7_wraddr_q;
    assign redist5_sync_together66_aunroll_x_in_c0_eni9_3_tpl_7_mem_ab = redist5_sync_together66_aunroll_x_in_c0_eni9_3_tpl_7_rdcnt_q[1:0];
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
    ) redist5_sync_together66_aunroll_x_in_c0_eni9_3_tpl_7_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist5_sync_together66_aunroll_x_in_c0_eni9_3_tpl_7_mem_aa),
        .data_a(redist5_sync_together66_aunroll_x_in_c0_eni9_3_tpl_7_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist5_sync_together66_aunroll_x_in_c0_eni9_3_tpl_7_mem_ab),
        .q_b(redist5_sync_together66_aunroll_x_in_c0_eni9_3_tpl_7_mem_iq),
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
    assign redist5_sync_together66_aunroll_x_in_c0_eni9_3_tpl_7_mem_q = redist5_sync_together66_aunroll_x_in_c0_eni9_3_tpl_7_mem_iq[31:0];

    // redist5_sync_together66_aunroll_x_in_c0_eni9_3_tpl_7_outputreg0(DELAY,335)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_sync_together66_aunroll_x_in_c0_eni9_3_tpl_7_outputreg0_q <= $unsigned(redist5_sync_together66_aunroll_x_in_c0_eni9_3_tpl_7_mem_q);
        end
    end

    // redist6_sync_together66_aunroll_x_in_c0_eni9_3_tpl_8(DELAY,302)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_sync_together66_aunroll_x_in_c0_eni9_3_tpl_8_q <= $unsigned(redist5_sync_together66_aunroll_x_in_c0_eni9_3_tpl_7_outputreg0_q);
        end
    end

    // redist9_sync_together66_aunroll_x_in_c0_eni9_6_tpl_8(DELAY,305)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist9_sync_together66_aunroll_x_in_c0_eni9_6_tpl_8 ( .xin(in_c0_eni9_6_tpl), .xout(redist9_sync_together66_aunroll_x_in_c0_eni9_6_tpl_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist12_sync_together66_aunroll_x_in_c0_eni9_9_tpl_8(DELAY,308)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist12_sync_together66_aunroll_x_in_c0_eni9_9_tpl_8 ( .xin(in_c0_eni9_9_tpl), .xout(redist12_sync_together66_aunroll_x_in_c0_eni9_9_tpl_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist11_sync_together66_aunroll_x_in_c0_eni9_8_tpl_8_rdcnt(ADD,357)
    assign redist11_sync_together66_aunroll_x_in_c0_eni9_8_tpl_8_rdcnt_a = {1'b0, redist11_sync_together66_aunroll_x_in_c0_eni9_8_tpl_8_wraddr_q};
    assign redist11_sync_together66_aunroll_x_in_c0_eni9_8_tpl_8_rdcnt_b = {1'b0, redist7_sync_together66_aunroll_x_in_c0_eni9_4_tpl_8_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist11_sync_together66_aunroll_x_in_c0_eni9_8_tpl_8_rdcnt_o <= $unsigned(redist11_sync_together66_aunroll_x_in_c0_eni9_8_tpl_8_rdcnt_a) + $unsigned(redist11_sync_together66_aunroll_x_in_c0_eni9_8_tpl_8_rdcnt_b);
        end
    end
    assign redist11_sync_together66_aunroll_x_in_c0_eni9_8_tpl_8_rdcnt_q = redist11_sync_together66_aunroll_x_in_c0_eni9_8_tpl_8_rdcnt_o[3:0];

    // redist11_sync_together66_aunroll_x_in_c0_eni9_8_tpl_8_inputreg0(DELAY,352)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist11_sync_together66_aunroll_x_in_c0_eni9_8_tpl_8_inputreg0_q <= $unsigned(in_c0_eni9_8_tpl);
        end
    end

    // redist11_sync_together66_aunroll_x_in_c0_eni9_8_tpl_8_wraddr(COUNTER,355)
    // low=0, high=7, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist11_sync_together66_aunroll_x_in_c0_eni9_8_tpl_8_wraddr_i <= $unsigned(redist11_sync_together66_aunroll_x_in_c0_eni9_8_tpl_8_wraddr_i) + $unsigned(3'd1);
        end
    end
    assign redist11_sync_together66_aunroll_x_in_c0_eni9_8_tpl_8_wraddr_q = redist11_sync_together66_aunroll_x_in_c0_eni9_8_tpl_8_wraddr_i[2:0];

    // redist11_sync_together66_aunroll_x_in_c0_eni9_8_tpl_8_mem(DUALMEM,354)
    assign redist11_sync_together66_aunroll_x_in_c0_eni9_8_tpl_8_mem_ia = $unsigned(redist11_sync_together66_aunroll_x_in_c0_eni9_8_tpl_8_inputreg0_q);
    assign redist11_sync_together66_aunroll_x_in_c0_eni9_8_tpl_8_mem_aa = redist11_sync_together66_aunroll_x_in_c0_eni9_8_tpl_8_wraddr_q;
    assign redist11_sync_together66_aunroll_x_in_c0_eni9_8_tpl_8_mem_ab = redist11_sync_together66_aunroll_x_in_c0_eni9_8_tpl_8_rdcnt_q[2:0];
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
    ) redist11_sync_together66_aunroll_x_in_c0_eni9_8_tpl_8_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist11_sync_together66_aunroll_x_in_c0_eni9_8_tpl_8_mem_aa),
        .data_a(redist11_sync_together66_aunroll_x_in_c0_eni9_8_tpl_8_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist11_sync_together66_aunroll_x_in_c0_eni9_8_tpl_8_mem_ab),
        .q_b(redist11_sync_together66_aunroll_x_in_c0_eni9_8_tpl_8_mem_iq),
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
    assign redist11_sync_together66_aunroll_x_in_c0_eni9_8_tpl_8_mem_q = redist11_sync_together66_aunroll_x_in_c0_eni9_8_tpl_8_mem_iq[31:0];

    // redist11_sync_together66_aunroll_x_in_c0_eni9_8_tpl_8_outputreg0(DELAY,353)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist11_sync_together66_aunroll_x_in_c0_eni9_8_tpl_8_outputreg0_q <= $unsigned(redist11_sync_together66_aunroll_x_in_c0_eni9_8_tpl_8_mem_q);
        end
    end

    // redist10_sync_together66_aunroll_x_in_c0_eni9_7_tpl_8_rdcnt(ADD,351)
    assign redist10_sync_together66_aunroll_x_in_c0_eni9_7_tpl_8_rdcnt_a = {1'b0, redist10_sync_together66_aunroll_x_in_c0_eni9_7_tpl_8_wraddr_q};
    assign redist10_sync_together66_aunroll_x_in_c0_eni9_7_tpl_8_rdcnt_b = {1'b0, redist7_sync_together66_aunroll_x_in_c0_eni9_4_tpl_8_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_sync_together66_aunroll_x_in_c0_eni9_7_tpl_8_rdcnt_o <= $unsigned(redist10_sync_together66_aunroll_x_in_c0_eni9_7_tpl_8_rdcnt_a) + $unsigned(redist10_sync_together66_aunroll_x_in_c0_eni9_7_tpl_8_rdcnt_b);
        end
    end
    assign redist10_sync_together66_aunroll_x_in_c0_eni9_7_tpl_8_rdcnt_q = redist10_sync_together66_aunroll_x_in_c0_eni9_7_tpl_8_rdcnt_o[3:0];

    // redist10_sync_together66_aunroll_x_in_c0_eni9_7_tpl_8_inputreg0(DELAY,346)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_sync_together66_aunroll_x_in_c0_eni9_7_tpl_8_inputreg0_q <= $unsigned(in_c0_eni9_7_tpl);
        end
    end

    // redist10_sync_together66_aunroll_x_in_c0_eni9_7_tpl_8_wraddr(COUNTER,349)
    // low=0, high=7, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_sync_together66_aunroll_x_in_c0_eni9_7_tpl_8_wraddr_i <= $unsigned(redist10_sync_together66_aunroll_x_in_c0_eni9_7_tpl_8_wraddr_i) + $unsigned(3'd1);
        end
    end
    assign redist10_sync_together66_aunroll_x_in_c0_eni9_7_tpl_8_wraddr_q = redist10_sync_together66_aunroll_x_in_c0_eni9_7_tpl_8_wraddr_i[2:0];

    // redist10_sync_together66_aunroll_x_in_c0_eni9_7_tpl_8_mem(DUALMEM,348)
    assign redist10_sync_together66_aunroll_x_in_c0_eni9_7_tpl_8_mem_ia = $unsigned(redist10_sync_together66_aunroll_x_in_c0_eni9_7_tpl_8_inputreg0_q);
    assign redist10_sync_together66_aunroll_x_in_c0_eni9_7_tpl_8_mem_aa = redist10_sync_together66_aunroll_x_in_c0_eni9_7_tpl_8_wraddr_q;
    assign redist10_sync_together66_aunroll_x_in_c0_eni9_7_tpl_8_mem_ab = redist10_sync_together66_aunroll_x_in_c0_eni9_7_tpl_8_rdcnt_q[2:0];
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
    ) redist10_sync_together66_aunroll_x_in_c0_eni9_7_tpl_8_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist10_sync_together66_aunroll_x_in_c0_eni9_7_tpl_8_mem_aa),
        .data_a(redist10_sync_together66_aunroll_x_in_c0_eni9_7_tpl_8_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist10_sync_together66_aunroll_x_in_c0_eni9_7_tpl_8_mem_ab),
        .q_b(redist10_sync_together66_aunroll_x_in_c0_eni9_7_tpl_8_mem_iq),
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
    assign redist10_sync_together66_aunroll_x_in_c0_eni9_7_tpl_8_mem_q = redist10_sync_together66_aunroll_x_in_c0_eni9_7_tpl_8_mem_iq[31:0];

    // redist10_sync_together66_aunroll_x_in_c0_eni9_7_tpl_8_outputreg0(DELAY,347)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_sync_together66_aunroll_x_in_c0_eni9_7_tpl_8_outputreg0_q <= $unsigned(redist10_sync_together66_aunroll_x_in_c0_eni9_7_tpl_8_mem_q);
        end
    end

    // redist31_i_llvm_fpga_forked_stencil_2d_b6_forked_stencil_2d3_out_buffer_out_5(DELAY,327)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist31_i_llvm_fpga_forked_stencil_2d_b6_forked_stencil_2d3_out_buffer_out_5_q <= $unsigned(redist30_i_llvm_fpga_forked_stencil_2d_b6_forked_stencil_2d3_out_buffer_out_4_q);
        end
    end

    // redist32_i_llvm_fpga_forked_stencil_2d_b6_forked_stencil_2d3_out_buffer_out_7(DELAY,328)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist32_i_llvm_fpga_forked_stencil_2d_b6_forked_stencil_2d3_out_buffer_out_7_delay_0 <= $unsigned(redist31_i_llvm_fpga_forked_stencil_2d_b6_forked_stencil_2d3_out_buffer_out_5_q);
            redist32_i_llvm_fpga_forked_stencil_2d_b6_forked_stencil_2d3_out_buffer_out_7_q <= redist32_i_llvm_fpga_forked_stencil_2d_b6_forked_stencil_2d3_out_buffer_out_7_delay_0;
        end
    end

    // redist33_i_llvm_fpga_forked_stencil_2d_b6_forked_stencil_2d3_out_buffer_out_8(DELAY,329)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist33_i_llvm_fpga_forked_stencil_2d_b6_forked_stencil_2d3_out_buffer_out_8_q <= $unsigned(redist32_i_llvm_fpga_forked_stencil_2d_b6_forked_stencil_2d3_out_buffer_out_7_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_element_extension2_x(BITJOIN,81)@8
    assign i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_element_extension2_x_q = {i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_c_i7_03_x_q, i_llvm_fpga_pop_i1_notcmp1844_pop24_stencil_2d0_i_llvm_fpga_pop_i1_notcmp1844_pop24_stencil_2d32_mux_x_q};

    // valid_fanout_reg26(REG,147)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg26_q <= $unsigned(redist16_sync_together66_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg25(REG,146)@6 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg25_q <= $unsigned(redist17_sync_together66_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d1_x(FIFODELAY,82)@5 + 1
    // in i_valid@7
    // in i_write_pred@7
    // in i_data@8
    // out o_data@8
    assign i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d1_x_i_stall = ~ (valid_fanout_reg26_q & redist23_i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_inv_pred_x_q_4_q);
    assign i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d1_x_i_valid = valid_fanout_reg25_q & redist24_i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_inv_pred_x_q_6_q;
    assign i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d1_x_i_data = i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d1_x (
        .i_valid(i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_adapt_scalar_trunc4_sel_x(BITSELECT,84)@8
    assign i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_notcmp1844_pop24_stencil_2d0_i_llvm_fpga_pop_i1_notcmp1844_pop24_stencil_2d32_mux_x(MUX,72)@8
    assign i_llvm_fpga_pop_i1_notcmp1844_pop24_stencil_2d0_i_llvm_fpga_pop_i1_notcmp1844_pop24_stencil_2d32_mux_x_s = redist33_i_llvm_fpga_forked_stencil_2d_b6_forked_stencil_2d3_out_buffer_out_8_q;
    always @(i_llvm_fpga_pop_i1_notcmp1844_pop24_stencil_2d0_i_llvm_fpga_pop_i1_notcmp1844_pop24_stencil_2d32_mux_x_s or i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_adapt_scalar_trunc4_sel_x_b or redist9_sync_together66_aunroll_x_in_c0_eni9_6_tpl_8_q)
    begin
        unique case (i_llvm_fpga_pop_i1_notcmp1844_pop24_stencil_2d0_i_llvm_fpga_pop_i1_notcmp1844_pop24_stencil_2d32_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_notcmp1844_pop24_stencil_2d0_i_llvm_fpga_pop_i1_notcmp1844_pop24_stencil_2d32_mux_x_q = i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_notcmp1844_pop24_stencil_2d0_i_llvm_fpga_pop_i1_notcmp1844_pop24_stencil_2d32_mux_x_q = redist9_sync_together66_aunroll_x_in_c0_eni9_6_tpl_8_q;
            default : i_llvm_fpga_pop_i1_notcmp1844_pop24_stencil_2d0_i_llvm_fpga_pop_i1_notcmp1844_pop24_stencil_2d32_mux_x_q = 1'b0;
        endcase
    end

    // i_llvm_fpga_push_i1_notcmp2342_push23_stencil_2d0_element_extension2_x(BITJOIN,87)@8
    assign i_llvm_fpga_push_i1_notcmp2342_push23_stencil_2d0_element_extension2_x_q = {i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_c_i7_03_x_q, i_llvm_fpga_pop_i1_notcmp2342_pop23_stencil_2d0_i_llvm_fpga_pop_i1_notcmp2342_pop23_stencil_2d30_mux_x_q};

    // valid_fanout_reg23(REG,144)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg23_q <= $unsigned(redist16_sync_together66_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg22(REG,143)@6 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg22_q <= $unsigned(redist17_sync_together66_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp2342_push23_stencil_2d0_i_llvm_fpga_push_i1_notcmp2342_push23_stencil_2d1_x(FIFODELAY,88)@5 + 1
    // in i_valid@7
    // in i_write_pred@7
    // in i_data@8
    // out o_data@8
    assign i_llvm_fpga_push_i1_notcmp2342_push23_stencil_2d0_i_llvm_fpga_push_i1_notcmp2342_push23_stencil_2d1_x_i_stall = ~ (valid_fanout_reg23_q & redist23_i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_inv_pred_x_q_4_q);
    assign i_llvm_fpga_push_i1_notcmp2342_push23_stencil_2d0_i_llvm_fpga_push_i1_notcmp2342_push23_stencil_2d1_x_i_valid = valid_fanout_reg22_q & redist24_i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_inv_pred_x_q_6_q;
    assign i_llvm_fpga_push_i1_notcmp2342_push23_stencil_2d0_i_llvm_fpga_push_i1_notcmp2342_push23_stencil_2d1_x_i_data = i_llvm_fpga_push_i1_notcmp2342_push23_stencil_2d0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_notcmp2342_push23_stencil_2d0_i_llvm_fpga_push_i1_notcmp2342_push23_stencil_2d1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_notcmp2342_push23_stencil_2d0_i_llvm_fpga_push_i1_notcmp2342_push23_stencil_2d1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_notcmp2342_push23_stencil_2d0_i_llvm_fpga_push_i1_notcmp2342_push23_stencil_2d1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_notcmp2342_push23_stencil_2d0_i_llvm_fpga_push_i1_notcmp2342_push23_stencil_2d1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_notcmp2342_push23_stencil_2d0_i_llvm_fpga_push_i1_notcmp2342_push23_stencil_2d1_x (
        .i_valid(i_llvm_fpga_push_i1_notcmp2342_push23_stencil_2d0_i_llvm_fpga_push_i1_notcmp2342_push23_stencil_2d1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_notcmp2342_push23_stencil_2d0_i_llvm_fpga_push_i1_notcmp2342_push23_stencil_2d1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_notcmp2342_push23_stencil_2d0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_notcmp2342_push23_stencil_2d0_i_llvm_fpga_push_i1_notcmp2342_push23_stencil_2d1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_notcmp2342_push23_stencil_2d0_adapt_scalar_trunc4_sel_x(BITSELECT,90)@8
    assign i_llvm_fpga_push_i1_notcmp2342_push23_stencil_2d0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_notcmp2342_push23_stencil_2d0_i_llvm_fpga_push_i1_notcmp2342_push23_stencil_2d1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_notcmp2342_pop23_stencil_2d0_i_llvm_fpga_pop_i1_notcmp2342_pop23_stencil_2d30_mux_x(MUX,73)@8
    assign i_llvm_fpga_pop_i1_notcmp2342_pop23_stencil_2d0_i_llvm_fpga_pop_i1_notcmp2342_pop23_stencil_2d30_mux_x_s = redist33_i_llvm_fpga_forked_stencil_2d_b6_forked_stencil_2d3_out_buffer_out_8_q;
    always @(i_llvm_fpga_pop_i1_notcmp2342_pop23_stencil_2d0_i_llvm_fpga_pop_i1_notcmp2342_pop23_stencil_2d30_mux_x_s or i_llvm_fpga_push_i1_notcmp2342_push23_stencil_2d0_adapt_scalar_trunc4_sel_x_b or redist8_sync_together66_aunroll_x_in_c0_eni9_5_tpl_8_q)
    begin
        unique case (i_llvm_fpga_pop_i1_notcmp2342_pop23_stencil_2d0_i_llvm_fpga_pop_i1_notcmp2342_pop23_stencil_2d30_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_notcmp2342_pop23_stencil_2d0_i_llvm_fpga_pop_i1_notcmp2342_pop23_stencil_2d30_mux_x_q = i_llvm_fpga_push_i1_notcmp2342_push23_stencil_2d0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_notcmp2342_pop23_stencil_2d0_i_llvm_fpga_pop_i1_notcmp2342_pop23_stencil_2d30_mux_x_q = redist8_sync_together66_aunroll_x_in_c0_eni9_5_tpl_8_q;
            default : i_llvm_fpga_pop_i1_notcmp2342_pop23_stencil_2d0_i_llvm_fpga_pop_i1_notcmp2342_pop23_stencil_2d30_mux_x_q = 1'b0;
        endcase
    end

    // valid_fanout_reg20(REG,141)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg20_q <= $unsigned(redist16_sync_together66_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg19(REG,140)@6 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(redist17_sync_together66_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_push_i32_mul2839_push22_stencil_2d0_i_llvm_fpga_push_i32_mul2839_push22_stencil_2d1_x(FIFODELAY,103)@5 + 1
    // in i_valid@7
    // in i_write_pred@7
    // in i_data@8
    // out o_data@8
    assign i_llvm_fpga_push_i32_mul2839_push22_stencil_2d0_i_llvm_fpga_push_i32_mul2839_push22_stencil_2d1_x_i_stall = ~ (valid_fanout_reg20_q & redist23_i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_inv_pred_x_q_4_q);
    assign i_llvm_fpga_push_i32_mul2839_push22_stencil_2d0_i_llvm_fpga_push_i32_mul2839_push22_stencil_2d1_x_i_valid = valid_fanout_reg19_q & redist24_i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_inv_pred_x_q_6_q;
    assign i_llvm_fpga_push_i32_mul2839_push22_stencil_2d0_i_llvm_fpga_push_i32_mul2839_push22_stencil_2d1_x_i_data = i_llvm_fpga_pop_i32_mul2839_pop22_stencil_2d0_i_llvm_fpga_pop_i32_mul2839_pop22_stencil_2d28_mux_x_q;
    assign i_llvm_fpga_push_i32_mul2839_push22_stencil_2d0_i_llvm_fpga_push_i32_mul2839_push22_stencil_2d1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_mul2839_push22_stencil_2d0_i_llvm_fpga_push_i32_mul2839_push22_stencil_2d1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_mul2839_push22_stencil_2d0_i_llvm_fpga_push_i32_mul2839_push22_stencil_2d1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_mul2839_push22_stencil_2d0_i_llvm_fpga_push_i32_mul2839_push22_stencil_2d1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_mul2839_push22_stencil_2d0_i_llvm_fpga_push_i32_mul2839_push22_stencil_2d1_x (
        .i_valid(i_llvm_fpga_push_i32_mul2839_push22_stencil_2d0_i_llvm_fpga_push_i32_mul2839_push22_stencil_2d1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_mul2839_push22_stencil_2d0_i_llvm_fpga_push_i32_mul2839_push22_stencil_2d1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i32_mul2839_pop22_stencil_2d0_i_llvm_fpga_pop_i32_mul2839_pop22_stencil_2d28_mux_x_q),
        .o_data(i_llvm_fpga_push_i32_mul2839_push22_stencil_2d0_i_llvm_fpga_push_i32_mul2839_push22_stencil_2d1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_mul2839_pop22_stencil_2d0_i_llvm_fpga_pop_i32_mul2839_pop22_stencil_2d28_mux_x(MUX,76)@8
    assign i_llvm_fpga_pop_i32_mul2839_pop22_stencil_2d0_i_llvm_fpga_pop_i32_mul2839_pop22_stencil_2d28_mux_x_s = redist33_i_llvm_fpga_forked_stencil_2d_b6_forked_stencil_2d3_out_buffer_out_8_q;
    always @(i_llvm_fpga_pop_i32_mul2839_pop22_stencil_2d0_i_llvm_fpga_pop_i32_mul2839_pop22_stencil_2d28_mux_x_s or i_llvm_fpga_push_i32_mul2839_push22_stencil_2d0_i_llvm_fpga_push_i32_mul2839_push22_stencil_2d1_x_o_data or redist7_sync_together66_aunroll_x_in_c0_eni9_4_tpl_8_outputreg0_q)
    begin
        unique case (i_llvm_fpga_pop_i32_mul2839_pop22_stencil_2d0_i_llvm_fpga_pop_i32_mul2839_pop22_stencil_2d28_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_mul2839_pop22_stencil_2d0_i_llvm_fpga_pop_i32_mul2839_pop22_stencil_2d28_mux_x_q = i_llvm_fpga_push_i32_mul2839_push22_stencil_2d0_i_llvm_fpga_push_i32_mul2839_push22_stencil_2d1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_mul2839_pop22_stencil_2d0_i_llvm_fpga_pop_i32_mul2839_pop22_stencil_2d28_mux_x_q = redist7_sync_together66_aunroll_x_in_c0_eni9_4_tpl_8_outputreg0_q;
            default : i_llvm_fpga_pop_i32_mul2839_pop22_stencil_2d0_i_llvm_fpga_pop_i32_mul2839_pop22_stencil_2d28_mux_x_q = 32'b0;
        endcase
    end

    // i_notcmp13_stencil_2d22(LOGICAL,49)@8
    assign i_notcmp13_stencil_2d22_q = redist2_i_exitcond3_stencil_2d18_cmp_nsign_q_4_q ^ VCC_q;

    // redist2_i_exitcond3_stencil_2d18_cmp_nsign_q_4(DELAY,298)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_i_exitcond3_stencil_2d18_cmp_nsign_q_4_delay_0 <= $unsigned(i_exitcond3_stencil_2d18_cmp_nsign_q);
            redist2_i_exitcond3_stencil_2d18_cmp_nsign_q_4_delay_1 <= redist2_i_exitcond3_stencil_2d18_cmp_nsign_q_4_delay_0;
            redist2_i_exitcond3_stencil_2d18_cmp_nsign_q_4_delay_2 <= redist2_i_exitcond3_stencil_2d18_cmp_nsign_q_4_delay_1;
            redist2_i_exitcond3_stencil_2d18_cmp_nsign_q_4_q <= redist2_i_exitcond3_stencil_2d18_cmp_nsign_q_4_delay_2;
        end
    end

    // i_dot1_prod_stencil_2d15_multconst_x(CONSTANT,70)
    assign i_dot1_prod_stencil_2d15_multconst_x_q = $unsigned(27'b000000000000000000000000000);

    // xMSB_uid231_i_dot1_prod_stencil_2d15_im0(BITSELECT,230)@7
    assign xMSB_uid231_i_dot1_prod_stencil_2d15_im0_b = $unsigned(sR_mergedSignalTM_uid211_i_dot1_prod_stencil_2d15_im0_q[19:19]);

    // valid_fanout_reg12(REG,133)@0 + 1
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

    // valid_fanout_reg11(REG,132)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist14_sync_together66_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i32_r_026_pop1336_push21_stencil_2d0_i_llvm_fpga_push_i32_r_026_pop1336_push21_stencil_2d1_x(FIFODELAY,106)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i32_r_026_pop1336_push21_stencil_2d0_i_llvm_fpga_push_i32_r_026_pop1336_push21_stencil_2d1_x_i_stall = ~ (valid_fanout_reg12_q & i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_inv_pred_x_q);
    assign i_llvm_fpga_push_i32_r_026_pop1336_push21_stencil_2d0_i_llvm_fpga_push_i32_r_026_pop1336_push21_stencil_2d1_x_i_valid = valid_fanout_reg11_q & redist21_i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i32_r_026_pop1336_push21_stencil_2d0_i_llvm_fpga_push_i32_r_026_pop1336_push21_stencil_2d1_x_i_data = i_llvm_fpga_pop_i32_r_026_pop1336_pop21_stencil_2d0_i_llvm_fpga_pop_i32_r_026_pop1336_pop21_stencil_2d12_mux_x_q;
    assign i_llvm_fpga_push_i32_r_026_pop1336_push21_stencil_2d0_i_llvm_fpga_push_i32_r_026_pop1336_push21_stencil_2d1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_r_026_pop1336_push21_stencil_2d0_i_llvm_fpga_push_i32_r_026_pop1336_push21_stencil_2d1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_r_026_pop1336_push21_stencil_2d0_i_llvm_fpga_push_i32_r_026_pop1336_push21_stencil_2d1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_r_026_pop1336_push21_stencil_2d0_i_llvm_fpga_push_i32_r_026_pop1336_push21_stencil_2d1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_r_026_pop1336_push21_stencil_2d0_i_llvm_fpga_push_i32_r_026_pop1336_push21_stencil_2d1_x (
        .i_valid(i_llvm_fpga_push_i32_r_026_pop1336_push21_stencil_2d0_i_llvm_fpga_push_i32_r_026_pop1336_push21_stencil_2d1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_r_026_pop1336_push21_stencil_2d0_i_llvm_fpga_push_i32_r_026_pop1336_push21_stencil_2d1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i32_r_026_pop1336_pop21_stencil_2d0_i_llvm_fpga_pop_i32_r_026_pop1336_pop21_stencil_2d12_mux_x_q),
        .o_data(i_llvm_fpga_push_i32_r_026_pop1336_push21_stencil_2d0_i_llvm_fpga_push_i32_r_026_pop1336_push21_stencil_2d1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_r_026_pop1336_pop21_stencil_2d0_i_llvm_fpga_pop_i32_r_026_pop1336_pop21_stencil_2d12_mux_x(MUX,77)@4
    assign i_llvm_fpga_pop_i32_r_026_pop1336_pop21_stencil_2d0_i_llvm_fpga_pop_i32_r_026_pop1336_pop21_stencil_2d12_mux_x_s = redist30_i_llvm_fpga_forked_stencil_2d_b6_forked_stencil_2d3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i32_r_026_pop1336_pop21_stencil_2d0_i_llvm_fpga_pop_i32_r_026_pop1336_pop21_stencil_2d12_mux_x_s or i_llvm_fpga_push_i32_r_026_pop1336_push21_stencil_2d0_i_llvm_fpga_push_i32_r_026_pop1336_push21_stencil_2d1_x_o_data or redist3_sync_together66_aunroll_x_in_c0_eni9_2_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i32_r_026_pop1336_pop21_stencil_2d0_i_llvm_fpga_pop_i32_r_026_pop1336_pop21_stencil_2d12_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_r_026_pop1336_pop21_stencil_2d0_i_llvm_fpga_pop_i32_r_026_pop1336_pop21_stencil_2d12_mux_x_q = i_llvm_fpga_push_i32_r_026_pop1336_push21_stencil_2d0_i_llvm_fpga_push_i32_r_026_pop1336_push21_stencil_2d1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_r_026_pop1336_pop21_stencil_2d0_i_llvm_fpga_pop_i32_r_026_pop1336_pop21_stencil_2d12_mux_x_q = redist3_sync_together66_aunroll_x_in_c0_eni9_2_tpl_4_q;
            default : i_llvm_fpga_pop_i32_r_026_pop1336_pop21_stencil_2d0_i_llvm_fpga_pop_i32_r_026_pop1336_pop21_stencil_2d12_mux_x_q = 32'b0;
        endcase
    end

    // redist25_i_llvm_fpga_pop_i32_r_026_pop1336_pop21_stencil_2d0_i_llvm_fpga_pop_i32_r_026_pop1336_pop21_stencil_2d12_mux_x_q_1(DELAY,321)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist25_i_llvm_fpga_pop_i32_r_026_pop1336_pop21_stencil_2d0_i_llvm_fpga_pop_i32_r_026_pop1336_pop21_stencil_2d12_mux_x_q_1_q <= $unsigned(i_llvm_fpga_pop_i32_r_026_pop1336_pop21_stencil_2d0_i_llvm_fpga_pop_i32_r_026_pop1336_pop21_stencil_2d12_mux_x_q);
        end
    end

    // c_i32_056(CONSTANT,30)
    assign c_i32_056_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i32_157(CONSTANT,31)
    assign c_i32_157_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc26_stencil_2d26(ADD,43)@5
    assign i_inc26_stencil_2d26_a = {1'b0, i_llvm_fpga_pop_i32_k1_024_pop20_stencil_2d0_i_llvm_fpga_pop_i32_k1_024_pop20_stencil_2d9_mux_x_q};
    assign i_inc26_stencil_2d26_b = {1'b0, c_i32_157_q};
    assign i_inc26_stencil_2d26_o = $unsigned(i_inc26_stencil_2d26_a) + $unsigned(i_inc26_stencil_2d26_b);
    assign i_inc26_stencil_2d26_q = i_inc26_stencil_2d26_o[32:0];

    // bgTrunc_i_inc26_stencil_2d26_sel_x(BITSELECT,62)@5
    assign bgTrunc_i_inc26_stencil_2d26_sel_x_b = i_inc26_stencil_2d26_q[31:0];

    // valid_fanout_reg17(REG,138)@1 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(redist13_sync_together66_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg16(REG,137)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist15_sync_together66_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i32_k1_024_push20_stencil_2d0_i_llvm_fpga_push_i32_k1_024_push20_stencil_2d1_x(FIFODELAY,100)@2 + 1
    // in i_valid@4
    // in i_write_pred@4
    // in i_data@5
    // out o_data@5
    assign i_llvm_fpga_push_i32_k1_024_push20_stencil_2d0_i_llvm_fpga_push_i32_k1_024_push20_stencil_2d1_x_i_stall = ~ (valid_fanout_reg17_q & redist20_i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_inv_pred_x_q_1_q);
    assign i_llvm_fpga_push_i32_k1_024_push20_stencil_2d0_i_llvm_fpga_push_i32_k1_024_push20_stencil_2d1_x_i_valid = valid_fanout_reg16_q & redist22_i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_inv_pred_x_q_3_q;
    assign i_llvm_fpga_push_i32_k1_024_push20_stencil_2d0_i_llvm_fpga_push_i32_k1_024_push20_stencil_2d1_x_i_data = bgTrunc_i_inc26_stencil_2d26_sel_x_b;
    assign i_llvm_fpga_push_i32_k1_024_push20_stencil_2d0_i_llvm_fpga_push_i32_k1_024_push20_stencil_2d1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_k1_024_push20_stencil_2d0_i_llvm_fpga_push_i32_k1_024_push20_stencil_2d1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_k1_024_push20_stencil_2d0_i_llvm_fpga_push_i32_k1_024_push20_stencil_2d1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_k1_024_push20_stencil_2d0_i_llvm_fpga_push_i32_k1_024_push20_stencil_2d1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_k1_024_push20_stencil_2d0_i_llvm_fpga_push_i32_k1_024_push20_stencil_2d1_x (
        .i_valid(i_llvm_fpga_push_i32_k1_024_push20_stencil_2d0_i_llvm_fpga_push_i32_k1_024_push20_stencil_2d1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_k1_024_push20_stencil_2d0_i_llvm_fpga_push_i32_k1_024_push20_stencil_2d1_x_i_stall_bitsignaltemp),
        .i_data(bgTrunc_i_inc26_stencil_2d26_sel_x_b),
        .o_data(i_llvm_fpga_push_i32_k1_024_push20_stencil_2d0_i_llvm_fpga_push_i32_k1_024_push20_stencil_2d1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_k1_024_pop20_stencil_2d0_i_llvm_fpga_pop_i32_k1_024_pop20_stencil_2d9_mux_x(MUX,75)@5
    assign i_llvm_fpga_pop_i32_k1_024_pop20_stencil_2d0_i_llvm_fpga_pop_i32_k1_024_pop20_stencil_2d9_mux_x_s = redist31_i_llvm_fpga_forked_stencil_2d_b6_forked_stencil_2d3_out_buffer_out_5_q;
    always @(i_llvm_fpga_pop_i32_k1_024_pop20_stencil_2d0_i_llvm_fpga_pop_i32_k1_024_pop20_stencil_2d9_mux_x_s or i_llvm_fpga_push_i32_k1_024_push20_stencil_2d0_i_llvm_fpga_push_i32_k1_024_push20_stencil_2d1_x_o_data or c_i32_056_q)
    begin
        unique case (i_llvm_fpga_pop_i32_k1_024_pop20_stencil_2d0_i_llvm_fpga_pop_i32_k1_024_pop20_stencil_2d9_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_k1_024_pop20_stencil_2d0_i_llvm_fpga_pop_i32_k1_024_pop20_stencil_2d9_mux_x_q = i_llvm_fpga_push_i32_k1_024_push20_stencil_2d0_i_llvm_fpga_push_i32_k1_024_push20_stencil_2d1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_k1_024_pop20_stencil_2d0_i_llvm_fpga_pop_i32_k1_024_pop20_stencil_2d9_mux_x_q = c_i32_056_q;
            default : i_llvm_fpga_pop_i32_k1_024_pop20_stencil_2d0_i_llvm_fpga_pop_i32_k1_024_pop20_stencil_2d9_mux_x_q = 32'b0;
        endcase
    end

    // i_add17_stencil_2d13(ADD,35)@5
    assign i_add17_stencil_2d13_a = {1'b0, i_llvm_fpga_pop_i32_k1_024_pop20_stencil_2d0_i_llvm_fpga_pop_i32_k1_024_pop20_stencil_2d9_mux_x_q};
    assign i_add17_stencil_2d13_b = {1'b0, redist25_i_llvm_fpga_pop_i32_r_026_pop1336_pop21_stencil_2d0_i_llvm_fpga_pop_i32_r_026_pop1336_pop21_stencil_2d12_mux_x_q_1_q};
    assign i_add17_stencil_2d13_o = $unsigned(i_add17_stencil_2d13_a) + $unsigned(i_add17_stencil_2d13_b);
    assign i_add17_stencil_2d13_q = i_add17_stencil_2d13_o[32:0];

    // bgTrunc_i_add17_stencil_2d13_sel_x(BITSELECT,58)@5
    assign bgTrunc_i_add17_stencil_2d13_sel_x_b = i_add17_stencil_2d13_q[31:0];

    // redist28_bgTrunc_i_add17_stencil_2d13_sel_x_b_1(DELAY,324)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist28_bgTrunc_i_add17_stencil_2d13_sel_x_b_1_q <= $unsigned(bgTrunc_i_add17_stencil_2d13_sel_x_b);
        end
    end

    // i_dot1_prod_stencil_2d15_bs1_merged_bit_select(BITSELECT,295)@6
    assign i_dot1_prod_stencil_2d15_bs1_merged_bit_select_b = redist28_bgTrunc_i_add17_stencil_2d13_sel_x_b_1_q[31:18];
    assign i_dot1_prod_stencil_2d15_bs1_merged_bit_select_c = redist28_bgTrunc_i_add17_stencil_2d13_sel_x_b_1_q[17:0];

    // i_dot1_prod_stencil_2d15_bjA2(BITJOIN,161)@6
    assign i_dot1_prod_stencil_2d15_bjA2_q = {GND_q, i_dot1_prod_stencil_2d15_bs1_merged_bit_select_b};

    // padACst_uid204_i_dot1_prod_stencil_2d15_im0(CONSTANT,203)
    assign padACst_uid204_i_dot1_prod_stencil_2d15_im0_q = $unsigned(4'b0000);

    // aPostPad_uid205_i_dot1_prod_stencil_2d15_im0(BITJOIN,204)@6
    assign aPostPad_uid205_i_dot1_prod_stencil_2d15_im0_q = {i_dot1_prod_stencil_2d15_bjA2_q, padACst_uid204_i_dot1_prod_stencil_2d15_im0_q};

    // sub_uid206_i_dot1_prod_stencil_2d15_im0(SUB,205)@6
    assign sub_uid206_i_dot1_prod_stencil_2d15_im0_a = $unsigned({{1{aPostPad_uid205_i_dot1_prod_stencil_2d15_im0_q[18]}}, aPostPad_uid205_i_dot1_prod_stencil_2d15_im0_q});
    assign sub_uid206_i_dot1_prod_stencil_2d15_im0_b = $unsigned({{5{i_dot1_prod_stencil_2d15_bjA2_q[14]}}, i_dot1_prod_stencil_2d15_bjA2_q});
    assign sub_uid206_i_dot1_prod_stencil_2d15_im0_o = $unsigned($signed(sub_uid206_i_dot1_prod_stencil_2d15_im0_a) - $signed(sub_uid206_i_dot1_prod_stencil_2d15_im0_b));
    assign sub_uid206_i_dot1_prod_stencil_2d15_im0_q = sub_uid206_i_dot1_prod_stencil_2d15_im0_o[19:0];

    // sR_bottomRange_uid210_i_dot1_prod_stencil_2d15_im0(BITSELECT,209)@6
    assign sR_bottomRange_uid210_i_dot1_prod_stencil_2d15_im0_in = $unsigned(sub_uid206_i_dot1_prod_stencil_2d15_im0_q[18:0]);
    assign sR_bottomRange_uid210_i_dot1_prod_stencil_2d15_im0_b = $unsigned(sR_bottomRange_uid210_i_dot1_prod_stencil_2d15_im0_in[18:0]);

    // redist1_sR_bottomRange_uid210_i_dot1_prod_stencil_2d15_im0_b_1(DELAY,297)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sR_bottomRange_uid210_i_dot1_prod_stencil_2d15_im0_b_1_q <= $unsigned(sR_bottomRange_uid210_i_dot1_prod_stencil_2d15_im0_b);
        end
    end

    // sR_mergedSignalTM_uid211_i_dot1_prod_stencil_2d15_im0(BITJOIN,210)@7
    assign sR_mergedSignalTM_uid211_i_dot1_prod_stencil_2d15_im0_q = {redist1_sR_bottomRange_uid210_i_dot1_prod_stencil_2d15_im0_b_1_q, GND_q};

    // sOuputFormat_mergedSignalTM_uid235_i_dot1_prod_stencil_2d15_im0(BITJOIN,234)@7
    assign sOuputFormat_mergedSignalTM_uid235_i_dot1_prod_stencil_2d15_im0_q = {xMSB_uid231_i_dot1_prod_stencil_2d15_im0_b, sR_mergedSignalTM_uid211_i_dot1_prod_stencil_2d15_im0_q};

    // i_dot1_prod_stencil_2d15_sums_align_1(BITSHIFT,170)@7
    assign i_dot1_prod_stencil_2d15_sums_align_1_qint = { sOuputFormat_mergedSignalTM_uid235_i_dot1_prod_stencil_2d15_im0_q, 18'b000000000000000000 };
    assign i_dot1_prod_stencil_2d15_sums_align_1_q = i_dot1_prod_stencil_2d15_sums_align_1_qint[38:0];

    // xMSB_uid290_i_dot1_prod_stencil_2d15_im5(BITSELECT,289)@7
    assign xMSB_uid290_i_dot1_prod_stencil_2d15_im5_b = $unsigned(sR_mergedSignalTM_uid264_i_dot1_prod_stencil_2d15_im5_q[23:23]);

    // i_dot1_prod_stencil_2d15_bjA7(BITJOIN,166)@6
    assign i_dot1_prod_stencil_2d15_bjA7_q = {GND_q, i_dot1_prod_stencil_2d15_bs1_merged_bit_select_c};

    // aPostPad_uid258_i_dot1_prod_stencil_2d15_im5(BITJOIN,257)@6
    assign aPostPad_uid258_i_dot1_prod_stencil_2d15_im5_q = {i_dot1_prod_stencil_2d15_bjA7_q, padACst_uid204_i_dot1_prod_stencil_2d15_im0_q};

    // sub_uid259_i_dot1_prod_stencil_2d15_im5(SUB,258)@6
    assign sub_uid259_i_dot1_prod_stencil_2d15_im5_a = $unsigned({{1{aPostPad_uid258_i_dot1_prod_stencil_2d15_im5_q[22]}}, aPostPad_uid258_i_dot1_prod_stencil_2d15_im5_q});
    assign sub_uid259_i_dot1_prod_stencil_2d15_im5_b = $unsigned({{5{i_dot1_prod_stencil_2d15_bjA7_q[18]}}, i_dot1_prod_stencil_2d15_bjA7_q});
    assign sub_uid259_i_dot1_prod_stencil_2d15_im5_o = $unsigned($signed(sub_uid259_i_dot1_prod_stencil_2d15_im5_a) - $signed(sub_uid259_i_dot1_prod_stencil_2d15_im5_b));
    assign sub_uid259_i_dot1_prod_stencil_2d15_im5_q = sub_uid259_i_dot1_prod_stencil_2d15_im5_o[23:0];

    // sR_bottomRange_uid263_i_dot1_prod_stencil_2d15_im5(BITSELECT,262)@6
    assign sR_bottomRange_uid263_i_dot1_prod_stencil_2d15_im5_in = $unsigned(sub_uid259_i_dot1_prod_stencil_2d15_im5_q[22:0]);
    assign sR_bottomRange_uid263_i_dot1_prod_stencil_2d15_im5_b = $unsigned(sR_bottomRange_uid263_i_dot1_prod_stencil_2d15_im5_in[22:0]);

    // redist0_sR_bottomRange_uid263_i_dot1_prod_stencil_2d15_im5_b_1(DELAY,296)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sR_bottomRange_uid263_i_dot1_prod_stencil_2d15_im5_b_1_q <= $unsigned(sR_bottomRange_uid263_i_dot1_prod_stencil_2d15_im5_b);
        end
    end

    // sR_mergedSignalTM_uid264_i_dot1_prod_stencil_2d15_im5(BITJOIN,263)@7
    assign sR_mergedSignalTM_uid264_i_dot1_prod_stencil_2d15_im5_q = {redist0_sR_bottomRange_uid263_i_dot1_prod_stencil_2d15_im5_b_1_q, GND_q};

    // sOuputFormat_mergedSignalTM_uid294_i_dot1_prod_stencil_2d15_im5(BITJOIN,293)@7
    assign sOuputFormat_mergedSignalTM_uid294_i_dot1_prod_stencil_2d15_im5_q = {xMSB_uid290_i_dot1_prod_stencil_2d15_im5_b, sR_mergedSignalTM_uid264_i_dot1_prod_stencil_2d15_im5_q};

    // i_dot1_prod_stencil_2d15_sums_result_add_0_0(ADD,172)@7
    assign i_dot1_prod_stencil_2d15_sums_result_add_0_0_a = {15'b000000000000000, sOuputFormat_mergedSignalTM_uid294_i_dot1_prod_stencil_2d15_im5_q};
    assign i_dot1_prod_stencil_2d15_sums_result_add_0_0_b = {1'b0, i_dot1_prod_stencil_2d15_sums_align_1_q};
    assign i_dot1_prod_stencil_2d15_sums_result_add_0_0_o = $unsigned(i_dot1_prod_stencil_2d15_sums_result_add_0_0_a) + $unsigned(i_dot1_prod_stencil_2d15_sums_result_add_0_0_b);
    assign i_dot1_prod_stencil_2d15_sums_result_add_0_0_q = i_dot1_prod_stencil_2d15_sums_result_add_0_0_o[39:0];

    // i_dot1_prod_stencil_2d15_extender_x(BITJOIN,69)@7
    assign i_dot1_prod_stencil_2d15_extender_x_q = {i_dot1_prod_stencil_2d15_multconst_x_q, i_dot1_prod_stencil_2d15_sums_result_add_0_0_q[36:0]};

    // bgTrunc_i_dot1_prod_stencil_2d15_sel_x(BITSELECT,59)@7
    assign bgTrunc_i_dot1_prod_stencil_2d15_sel_x_b = i_dot1_prod_stencil_2d15_extender_x_q[31:0];

    // i_dot1_prod_stencil_2d15_vt_select_31(BITSELECT,39)@7
    assign i_dot1_prod_stencil_2d15_vt_select_31_b = bgTrunc_i_dot1_prod_stencil_2d15_sel_x_b[31:1];

    // redist35_i_dot1_prod_stencil_2d15_vt_select_31_b_1(DELAY,331)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist35_i_dot1_prod_stencil_2d15_vt_select_31_b_1_q <= $unsigned(i_dot1_prod_stencil_2d15_vt_select_31_b);
        end
    end

    // i_dot1_prod_stencil_2d15_vt_join(BITJOIN,38)@8
    assign i_dot1_prod_stencil_2d15_vt_join_q = {redist35_i_dot1_prod_stencil_2d15_vt_select_31_b_1_q, GND_q};

    // i_dot_prod_add_stencil_2d16(ADD,40)@8
    assign i_dot_prod_add_stencil_2d16_a = {1'b0, i_dot1_prod_stencil_2d15_vt_join_q};
    assign i_dot_prod_add_stencil_2d16_b = {1'b0, i_llvm_fpga_pop_i32_c_025_pop1546_pop25_stencil_2d0_i_llvm_fpga_pop_i32_c_025_pop1546_pop25_stencil_2d14_mux_x_q};
    assign i_dot_prod_add_stencil_2d16_o = $unsigned(i_dot_prod_add_stencil_2d16_a) + $unsigned(i_dot_prod_add_stencil_2d16_b);
    assign i_dot_prod_add_stencil_2d16_q = i_dot_prod_add_stencil_2d16_o[32:0];

    // bgTrunc_i_dot_prod_add_stencil_2d16_sel_x(BITSELECT,60)@8
    assign bgTrunc_i_dot_prod_add_stencil_2d16_sel_x_b = i_dot_prod_add_stencil_2d16_q[31:0];

    // valid_fanout_reg10(REG,131)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist15_sync_together66_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg9(REG,130)@6 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist17_sync_together66_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_push_i32_c_025_pop1546_push25_stencil_2d0_i_llvm_fpga_push_i32_c_025_pop1546_push25_stencil_2d1_x(FIFODELAY,97)@4
    // in i_valid@7
    // in i_write_pred@7
    // in i_data@8
    // out o_data@7
    assign i_llvm_fpga_push_i32_c_025_pop1546_push25_stencil_2d0_i_llvm_fpga_push_i32_c_025_pop1546_push25_stencil_2d1_x_i_stall = ~ (valid_fanout_reg10_q & redist22_i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_inv_pred_x_q_3_q);
    assign i_llvm_fpga_push_i32_c_025_pop1546_push25_stencil_2d0_i_llvm_fpga_push_i32_c_025_pop1546_push25_stencil_2d1_x_i_valid = valid_fanout_reg9_q & redist24_i_llvm_fpga_push_i1_notcmp1844_push24_stencil_2d0_inv_pred_x_q_6_q;
    assign i_llvm_fpga_push_i32_c_025_pop1546_push25_stencil_2d0_i_llvm_fpga_push_i32_c_025_pop1546_push25_stencil_2d1_x_i_data = i_llvm_fpga_pop_i32_c_025_pop1546_pop25_stencil_2d0_i_llvm_fpga_pop_i32_c_025_pop1546_pop25_stencil_2d14_mux_x_q;
    assign i_llvm_fpga_push_i32_c_025_pop1546_push25_stencil_2d0_i_llvm_fpga_push_i32_c_025_pop1546_push25_stencil_2d1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_c_025_pop1546_push25_stencil_2d0_i_llvm_fpga_push_i32_c_025_pop1546_push25_stencil_2d1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_c_025_pop1546_push25_stencil_2d0_i_llvm_fpga_push_i32_c_025_pop1546_push25_stencil_2d1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_c_025_pop1546_push25_stencil_2d0_i_llvm_fpga_push_i32_c_025_pop1546_push25_stencil_2d1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_c_025_pop1546_push25_stencil_2d0_i_llvm_fpga_push_i32_c_025_pop1546_push25_stencil_2d1_x (
        .i_valid(i_llvm_fpga_push_i32_c_025_pop1546_push25_stencil_2d0_i_llvm_fpga_push_i32_c_025_pop1546_push25_stencil_2d1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_c_025_pop1546_push25_stencil_2d0_i_llvm_fpga_push_i32_c_025_pop1546_push25_stencil_2d1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i32_c_025_pop1546_pop25_stencil_2d0_i_llvm_fpga_pop_i32_c_025_pop1546_pop25_stencil_2d14_mux_x_q),
        .o_data(i_llvm_fpga_push_i32_c_025_pop1546_push25_stencil_2d0_i_llvm_fpga_push_i32_c_025_pop1546_push25_stencil_2d1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_c_025_pop1546_pop25_stencil_2d0_i_llvm_fpga_pop_i32_c_025_pop1546_pop25_stencil_2d14_mux_x(MUX,74)@7 + 1
    assign i_llvm_fpga_pop_i32_c_025_pop1546_pop25_stencil_2d0_i_llvm_fpga_pop_i32_c_025_pop1546_pop25_stencil_2d14_mux_x_s = redist32_i_llvm_fpga_forked_stencil_2d_b6_forked_stencil_2d3_out_buffer_out_7_q;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_llvm_fpga_pop_i32_c_025_pop1546_pop25_stencil_2d0_i_llvm_fpga_pop_i32_c_025_pop1546_pop25_stencil_2d14_mux_x_s)
                1'b0 : i_llvm_fpga_pop_i32_c_025_pop1546_pop25_stencil_2d0_i_llvm_fpga_pop_i32_c_025_pop1546_pop25_stencil_2d14_mux_x_q <= i_llvm_fpga_push_i32_c_025_pop1546_push25_stencil_2d0_i_llvm_fpga_push_i32_c_025_pop1546_push25_stencil_2d1_x_o_data;
                1'b1 : i_llvm_fpga_pop_i32_c_025_pop1546_pop25_stencil_2d0_i_llvm_fpga_pop_i32_c_025_pop1546_pop25_stencil_2d14_mux_x_q <= redist5_sync_together66_aunroll_x_in_c0_eni9_3_tpl_7_outputreg0_q;
                default : i_llvm_fpga_pop_i32_c_025_pop1546_pop25_stencil_2d0_i_llvm_fpga_pop_i32_c_025_pop1546_pop25_stencil_2d14_mux_x_q <= 32'b0;
            endcase
        end
    end

    // redist26_i_llvm_fpga_pop_i32_r_026_pop1336_pop21_stencil_2d0_i_llvm_fpga_pop_i32_r_026_pop1336_pop21_stencil_2d12_mux_x_q_4(DELAY,322)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist26_i_llvm_fpga_pop_i32_r_026_pop1336_pop21_stencil_2d0_i_llvm_fpga_pop_i32_r_026_pop1336_pop21_stencil_2d12_mux_x_q_4_delay_0 <= $unsigned(redist25_i_llvm_fpga_pop_i32_r_026_pop1336_pop21_stencil_2d0_i_llvm_fpga_pop_i32_r_026_pop1336_pop21_stencil_2d12_mux_x_q_1_q);
            redist26_i_llvm_fpga_pop_i32_r_026_pop1336_pop21_stencil_2d0_i_llvm_fpga_pop_i32_r_026_pop1336_pop21_stencil_2d12_mux_x_q_4_delay_1 <= redist26_i_llvm_fpga_pop_i32_r_026_pop1336_pop21_stencil_2d0_i_llvm_fpga_pop_i32_r_026_pop1336_pop21_stencil_2d12_mux_x_q_4_delay_0;
            redist26_i_llvm_fpga_pop_i32_r_026_pop1336_pop21_stencil_2d0_i_llvm_fpga_pop_i32_r_026_pop1336_pop21_stencil_2d12_mux_x_q_4_q <= redist26_i_llvm_fpga_pop_i32_r_026_pop1336_pop21_stencil_2d0_i_llvm_fpga_pop_i32_r_026_pop1336_pop21_stencil_2d12_mux_x_q_4_delay_1;
        end
    end

    // leftShiftStage0Idx1Rng1_uid179_i_unnamed_stencil_2d0_shift_x(BITSELECT,178)@5
    assign leftShiftStage0Idx1Rng1_uid179_i_unnamed_stencil_2d0_shift_x_in = i_llvm_fpga_pop_i32_k1_024_pop20_stencil_2d0_i_llvm_fpga_pop_i32_k1_024_pop20_stencil_2d9_mux_x_q[30:0];
    assign leftShiftStage0Idx1Rng1_uid179_i_unnamed_stencil_2d0_shift_x_b = leftShiftStage0Idx1Rng1_uid179_i_unnamed_stencil_2d0_shift_x_in[30:0];

    // leftShiftStage0Idx1_uid180_i_unnamed_stencil_2d0_shift_x(BITJOIN,179)@5
    assign leftShiftStage0Idx1_uid180_i_unnamed_stencil_2d0_shift_x_q = {leftShiftStage0Idx1Rng1_uid179_i_unnamed_stencil_2d0_shift_x_b, GND_q};

    // leftShiftStage0_uid182_i_unnamed_stencil_2d0_shift_x(MUX,181)@5
    assign leftShiftStage0_uid182_i_unnamed_stencil_2d0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid182_i_unnamed_stencil_2d0_shift_x_s or i_llvm_fpga_pop_i32_k1_024_pop20_stencil_2d0_i_llvm_fpga_pop_i32_k1_024_pop20_stencil_2d9_mux_x_q or leftShiftStage0Idx1_uid180_i_unnamed_stencil_2d0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid182_i_unnamed_stencil_2d0_shift_x_s)
            1'b0 : leftShiftStage0_uid182_i_unnamed_stencil_2d0_shift_x_q = i_llvm_fpga_pop_i32_k1_024_pop20_stencil_2d0_i_llvm_fpga_pop_i32_k1_024_pop20_stencil_2d9_mux_x_q;
            1'b1 : leftShiftStage0_uid182_i_unnamed_stencil_2d0_shift_x_q = leftShiftStage0Idx1_uid180_i_unnamed_stencil_2d0_shift_x_q;
            default : leftShiftStage0_uid182_i_unnamed_stencil_2d0_shift_x_q = 32'b0;
        endcase
    end

    // i_unnamed_stencil_2d10_vt_select_31(BITSELECT,54)@5
    assign i_unnamed_stencil_2d10_vt_select_31_b = leftShiftStage0_uid182_i_unnamed_stencil_2d0_shift_x_q[31:1];

    // i_unnamed_stencil_2d10_vt_join(BITJOIN,53)@5
    assign i_unnamed_stencil_2d10_vt_join_q = {i_unnamed_stencil_2d10_vt_select_31_b, GND_q};

    // i_mul16_add11_stencil_2d11(ADD,48)@5
    assign i_mul16_add11_stencil_2d11_a = {1'b0, i_llvm_fpga_pop_i32_k1_024_pop20_stencil_2d0_i_llvm_fpga_pop_i32_k1_024_pop20_stencil_2d9_mux_x_q};
    assign i_mul16_add11_stencil_2d11_b = {1'b0, i_unnamed_stencil_2d10_vt_join_q};
    assign i_mul16_add11_stencil_2d11_o = $unsigned(i_mul16_add11_stencil_2d11_a) + $unsigned(i_mul16_add11_stencil_2d11_b);
    assign i_mul16_add11_stencil_2d11_q = i_mul16_add11_stencil_2d11_o[32:0];

    // bgTrunc_i_mul16_add11_stencil_2d11_sel_x(BITSELECT,63)@5
    assign bgTrunc_i_mul16_add11_stencil_2d11_sel_x_b = i_mul16_add11_stencil_2d11_q[31:0];

    // redist27_bgTrunc_i_mul16_add11_stencil_2d11_sel_x_b_3(DELAY,323)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist27_bgTrunc_i_mul16_add11_stencil_2d11_sel_x_b_3_delay_0 <= $unsigned(bgTrunc_i_mul16_add11_stencil_2d11_sel_x_b);
            redist27_bgTrunc_i_mul16_add11_stencil_2d11_sel_x_b_3_delay_1 <= redist27_bgTrunc_i_mul16_add11_stencil_2d11_sel_x_b_3_delay_0;
            redist27_bgTrunc_i_mul16_add11_stencil_2d11_sel_x_b_3_q <= redist27_bgTrunc_i_mul16_add11_stencil_2d11_sel_x_b_3_delay_1;
        end
    end

    // sync_out_aunroll_x(GPOUT,119)@8
    assign out_c0_exi18_0_tpl = GND_q;
    assign out_c0_exi18_1_tpl = redist27_bgTrunc_i_mul16_add11_stencil_2d11_sel_x_b_3_q;
    assign out_c0_exi18_2_tpl = redist26_i_llvm_fpga_pop_i32_r_026_pop1336_pop21_stencil_2d0_i_llvm_fpga_pop_i32_r_026_pop1336_pop21_stencil_2d12_mux_x_q_4_q;
    assign out_c0_exi18_3_tpl = i_llvm_fpga_pop_i32_c_025_pop1546_pop25_stencil_2d0_i_llvm_fpga_pop_i32_c_025_pop1546_pop25_stencil_2d14_mux_x_q;
    assign out_c0_exi18_4_tpl = bgTrunc_i_dot_prod_add_stencil_2d16_sel_x_b;
    assign out_c0_exi18_5_tpl = redist2_i_exitcond3_stencil_2d18_cmp_nsign_q_4_q;
    assign out_c0_exi18_6_tpl = i_notcmp13_stencil_2d22_q;
    assign out_c0_exi18_7_tpl = i_llvm_fpga_pop_i32_mul2839_pop22_stencil_2d0_i_llvm_fpga_pop_i32_mul2839_pop22_stencil_2d28_mux_x_q;
    assign out_c0_exi18_8_tpl = i_llvm_fpga_pop_i1_notcmp2342_pop23_stencil_2d0_i_llvm_fpga_pop_i1_notcmp2342_pop23_stencil_2d30_mux_x_q;
    assign out_c0_exi18_9_tpl = i_llvm_fpga_pop_i1_notcmp1844_pop24_stencil_2d0_i_llvm_fpga_pop_i1_notcmp1844_pop24_stencil_2d32_mux_x_q;
    assign out_c0_exi18_10_tpl = redist33_i_llvm_fpga_forked_stencil_2d_b6_forked_stencil_2d3_out_buffer_out_8_q;
    assign out_c0_exi18_11_tpl = redist10_sync_together66_aunroll_x_in_c0_eni9_7_tpl_8_outputreg0_q;
    assign out_c0_exi18_12_tpl = redist11_sync_together66_aunroll_x_in_c0_eni9_8_tpl_8_outputreg0_q;
    assign out_c0_exi18_13_tpl = redist12_sync_together66_aunroll_x_in_c0_eni9_9_tpl_8_q;
    assign out_c0_exi18_14_tpl = redist9_sync_together66_aunroll_x_in_c0_eni9_6_tpl_8_q;
    assign out_c0_exi18_15_tpl = redist6_sync_together66_aunroll_x_in_c0_eni9_3_tpl_8_q;
    assign out_c0_exi18_16_tpl = redist4_sync_together66_aunroll_x_in_c0_eni9_2_tpl_8_q;
    assign out_c0_exi18_17_tpl = redist7_sync_together66_aunroll_x_in_c0_eni9_4_tpl_8_outputreg0_q;
    assign out_c0_exi18_18_tpl = redist8_sync_together66_aunroll_x_in_c0_eni9_5_tpl_8_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_profile_loop_o_valid = redist19_sync_together66_aunroll_x_in_i_valid_8_q;
    assign out_stencil_2d_B6_current_iter_isspec = i_stencil_2d_b6_current_iter_isspec_stencil_2d5_q;

endmodule
