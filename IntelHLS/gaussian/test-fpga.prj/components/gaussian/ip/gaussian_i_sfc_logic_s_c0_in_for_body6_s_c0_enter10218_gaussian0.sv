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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian0
// Created for function/kernel gaussian
// SystemVerilog created on Thu Apr 27 14:24:40 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module gaussian_i_sfc_logic_s_c0_in_for_body6_s_c0_enter10218_gaussian0 (
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_pipeline_dummy_out,
    output wire [0:0] out_pipeline_forked_out,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_c0_exi17_0_tpl,
    output wire [0:0] out_c0_exi17_1_tpl,
    output wire [0:0] out_c0_exi17_2_tpl,
    output wire [0:0] out_c0_exi17_3_tpl,
    output wire [31:0] out_c0_exi17_4_tpl,
    output wire [0:0] out_c0_exi17_5_tpl,
    output wire [31:0] out_c0_exi17_6_tpl,
    output wire [31:0] out_c0_exi17_7_tpl,
    output wire [31:0] out_c0_exi17_8_tpl,
    output wire [31:0] out_c0_exi17_9_tpl,
    output wire [0:0] out_c0_exi17_10_tpl,
    output wire [31:0] out_c0_exi17_11_tpl,
    output wire [31:0] out_c0_exi17_12_tpl,
    output wire [31:0] out_c0_exi17_13_tpl,
    output wire [0:0] out_c0_exi17_14_tpl,
    output wire [32:0] out_c0_exi17_15_tpl,
    output wire [31:0] out_c0_exi17_16_tpl,
    output wire [0:0] out_c0_exi17_17_tpl,
    output wire [0:0] out_gaussian_B5_current_iter_isspec,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_profile_loop_o_valid,
    input wire [0:0] in_buffer_in,
    input wire [0:0] in_c0_eni8_0_tpl,
    input wire [32:0] in_c0_eni8_1_tpl,
    input wire [0:0] in_c0_eni8_2_tpl,
    input wire [0:0] in_c0_eni8_3_tpl,
    input wire [31:0] in_c0_eni8_4_tpl,
    input wire [0:0] in_c0_eni8_5_tpl,
    input wire [31:0] in_c0_eni8_6_tpl,
    input wire [31:0] in_c0_eni8_7_tpl,
    input wire [31:0] in_c0_eni8_8_tpl,
    input wire [0:0] in_dummy_in,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_158_q;
    wire [32:0] c_i33_157_q;
    wire [33:0] i_fpga_indvars_iv_next12_gaussian17_a;
    wire [33:0] i_fpga_indvars_iv_next12_gaussian17_b;
    logic [33:0] i_fpga_indvars_iv_next12_gaussian17_o;
    wire [33:0] i_fpga_indvars_iv_next12_gaussian17_q;
    wire [0:0] i_gaussian_b5_current_iter_isspec_gaussian5_q;
    wire [0:0] i_gaussian_b5_next_iter_isreal_gaussian7_qi;
    reg [0:0] i_gaussian_b5_next_iter_isreal_gaussian7_q;
    wire [32:0] i_inc24_gaussian20_a;
    wire [32:0] i_inc24_gaussian20_b;
    logic [32:0] i_inc24_gaussian20_o;
    wire [32:0] i_inc24_gaussian20_q;
    wire [0:0] i_llvm_fpga_dummy_thread_gaussian_b5_dummy_gaussian2_out_dummy_out;
    wire [0:0] i_llvm_fpga_forked_gaussian_b5_forked_gaussian3_out_buffer_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going16_gaussian6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going16_gaussian6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going16_gaussian6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going16_gaussian6_out_pipeline_dummy_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going16_gaussian6_out_pipeline_forked_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going16_gaussian6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond17_gaussian16_out_feedback_out_4;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond17_gaussian16_out_feedback_valid_out_4;
    wire [0:0] i_notcmp14_gaussian15_q;
    wire [0:0] i_unnamed_gaussian13_q;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next12_gaussian17_sel_x_b;
    wire [31:0] bgTrunc_i_inc24_gaussian20_sel_x_b;
    wire [0:0] i_llvm_fpga_pop_coalesce_i1_gaussian_b5_current_iter_isreal_gaussian0_i_llvm_fpga_pop_coalesce_i1_gaussian_b5_current_iter_isreal_gaussian4_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_coalesce_i1_gaussian_b5_current_iter_isreal_gaussian0_i_llvm_fpga_pop_coalesce_i1_gaussian_b5_current_iter_isreal_gaussian4_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_cmp41634_pop16_gaussian0_i_llvm_fpga_pop_i1_cmp41634_pop16_gaussian12_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_cmp41634_pop16_gaussian0_i_llvm_fpga_pop_i1_cmp41634_pop16_gaussian12_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi4_pop723_pop11_gaussian0_i_llvm_fpga_pop_i1_memdep_phi4_pop723_pop11_gaussian22_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi4_pop723_pop11_gaussian0_i_llvm_fpga_pop_i1_memdep_phi4_pop723_pop11_gaussian22_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_add32_pop15_gaussian0_i_llvm_fpga_pop_i32_add32_pop15_gaussian30_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_add32_pop15_gaussian0_i_llvm_fpga_pop_i32_add32_pop15_gaussian30_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_fpga_indvars_iv728_pop13_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv728_pop13_gaussian26_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_fpga_indvars_iv728_pop13_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv728_pop13_gaussian26_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_fpga_indvars_iv926_pop12_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv926_pop12_gaussian24_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_fpga_indvars_iv926_pop12_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv926_pop12_gaussian24_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_i_017_pop9_gaussian0_i_llvm_fpga_pop_i32_i_017_pop9_gaussian19_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_i_017_pop9_gaussian0_i_llvm_fpga_pop_i32_i_017_pop9_gaussian19_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_j_01830_pop14_gaussian0_i_llvm_fpga_pop_i32_j_01830_pop14_gaussian28_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_j_01830_pop14_gaussian0_i_llvm_fpga_pop_i32_j_01830_pop14_gaussian28_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv11_pop8_gaussian0_i_llvm_fpga_pop_i33_fpga_indvars_iv11_pop8_gaussian9_mux_x_s;
    reg [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv11_pop8_gaussian0_i_llvm_fpga_pop_i33_fpga_indvars_iv11_pop8_gaussian9_mux_x_q;
    wire [6:0] i_llvm_fpga_push_i1_cmp41634_push16_gaussian0_c_i7_03_x_q;
    wire [7:0] i_llvm_fpga_push_i1_cmp41634_push16_gaussian0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_cmp41634_push16_gaussian0_i_llvm_fpga_push_i1_cmp41634_push16_gaussian1_x_i_valid;
    wire i_llvm_fpga_push_i1_cmp41634_push16_gaussian0_i_llvm_fpga_push_i1_cmp41634_push16_gaussian1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_cmp41634_push16_gaussian0_i_llvm_fpga_push_i1_cmp41634_push16_gaussian1_x_i_stall;
    wire i_llvm_fpga_push_i1_cmp41634_push16_gaussian0_i_llvm_fpga_push_i1_cmp41634_push16_gaussian1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_cmp41634_push16_gaussian0_i_llvm_fpga_push_i1_cmp41634_push16_gaussian1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_cmp41634_push16_gaussian0_i_llvm_fpga_push_i1_cmp41634_push16_gaussian1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_cmp41634_push16_gaussian0_inv_pred_x_q;
    wire [0:0] i_llvm_fpga_push_i1_cmp41634_push16_gaussian0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_gaussian_b5_next_iter_isreal_push_gaussian0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_gaussian_b5_next_iter_isreal_push_gaussian0_i_llvm_fpga_push_i1_gaussian_b5_next_iter_isreal_push_gaussian1_x_i_valid;
    wire i_llvm_fpga_push_i1_gaussian_b5_next_iter_isreal_push_gaussian0_i_llvm_fpga_push_i1_gaussian_b5_next_iter_isreal_push_gaussian1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_gaussian_b5_next_iter_isreal_push_gaussian0_i_llvm_fpga_push_i1_gaussian_b5_next_iter_isreal_push_gaussian1_x_i_stall;
    wire i_llvm_fpga_push_i1_gaussian_b5_next_iter_isreal_push_gaussian0_i_llvm_fpga_push_i1_gaussian_b5_next_iter_isreal_push_gaussian1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_gaussian_b5_next_iter_isreal_push_gaussian0_i_llvm_fpga_push_i1_gaussian_b5_next_iter_isreal_push_gaussian1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_gaussian_b5_next_iter_isreal_push_gaussian0_i_llvm_fpga_push_i1_gaussian_b5_next_iter_isreal_push_gaussian1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_gaussian_b5_next_iter_isreal_push_gaussian0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi4_pop723_push11_gaussian0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi4_pop723_push11_gaussian0_i_llvm_fpga_push_i1_memdep_phi4_pop723_push11_gaussian1_x_i_valid;
    wire i_llvm_fpga_push_i1_memdep_phi4_pop723_push11_gaussian0_i_llvm_fpga_push_i1_memdep_phi4_pop723_push11_gaussian1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi4_pop723_push11_gaussian0_i_llvm_fpga_push_i1_memdep_phi4_pop723_push11_gaussian1_x_i_stall;
    wire i_llvm_fpga_push_i1_memdep_phi4_pop723_push11_gaussian0_i_llvm_fpga_push_i1_memdep_phi4_pop723_push11_gaussian1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi4_pop723_push11_gaussian0_i_llvm_fpga_push_i1_memdep_phi4_pop723_push11_gaussian1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi4_pop723_push11_gaussian0_i_llvm_fpga_push_i1_memdep_phi4_pop723_push11_gaussian1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi4_pop723_push11_gaussian0_adapt_scalar_trunc4_sel_x_b;
    wire [0:0] i_llvm_fpga_push_i32_add32_push15_gaussian0_i_llvm_fpga_push_i32_add32_push15_gaussian1_x_i_valid;
    wire i_llvm_fpga_push_i32_add32_push15_gaussian0_i_llvm_fpga_push_i32_add32_push15_gaussian1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_add32_push15_gaussian0_i_llvm_fpga_push_i32_add32_push15_gaussian1_x_i_stall;
    wire i_llvm_fpga_push_i32_add32_push15_gaussian0_i_llvm_fpga_push_i32_add32_push15_gaussian1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_add32_push15_gaussian0_i_llvm_fpga_push_i32_add32_push15_gaussian1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_add32_push15_gaussian0_i_llvm_fpga_push_i32_add32_push15_gaussian1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i32_fpga_indvars_iv728_push13_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv728_push13_gaussian1_x_i_valid;
    wire i_llvm_fpga_push_i32_fpga_indvars_iv728_push13_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv728_push13_gaussian1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_fpga_indvars_iv728_push13_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv728_push13_gaussian1_x_i_stall;
    wire i_llvm_fpga_push_i32_fpga_indvars_iv728_push13_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv728_push13_gaussian1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_fpga_indvars_iv728_push13_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv728_push13_gaussian1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_fpga_indvars_iv728_push13_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv728_push13_gaussian1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i32_fpga_indvars_iv926_push12_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv926_push12_gaussian1_x_i_valid;
    wire i_llvm_fpga_push_i32_fpga_indvars_iv926_push12_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv926_push12_gaussian1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_fpga_indvars_iv926_push12_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv926_push12_gaussian1_x_i_stall;
    wire i_llvm_fpga_push_i32_fpga_indvars_iv926_push12_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv926_push12_gaussian1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_fpga_indvars_iv926_push12_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv926_push12_gaussian1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_fpga_indvars_iv926_push12_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv926_push12_gaussian1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i32_i_017_push9_gaussian0_i_llvm_fpga_push_i32_i_017_push9_gaussian1_x_i_valid;
    wire i_llvm_fpga_push_i32_i_017_push9_gaussian0_i_llvm_fpga_push_i32_i_017_push9_gaussian1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_i_017_push9_gaussian0_i_llvm_fpga_push_i32_i_017_push9_gaussian1_x_i_stall;
    wire i_llvm_fpga_push_i32_i_017_push9_gaussian0_i_llvm_fpga_push_i32_i_017_push9_gaussian1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_i_017_push9_gaussian0_i_llvm_fpga_push_i32_i_017_push9_gaussian1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_i_017_push9_gaussian0_i_llvm_fpga_push_i32_i_017_push9_gaussian1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i32_j_01830_push14_gaussian0_i_llvm_fpga_push_i32_j_01830_push14_gaussian1_x_i_valid;
    wire i_llvm_fpga_push_i32_j_01830_push14_gaussian0_i_llvm_fpga_push_i32_j_01830_push14_gaussian1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_j_01830_push14_gaussian0_i_llvm_fpga_push_i32_j_01830_push14_gaussian1_x_i_stall;
    wire i_llvm_fpga_push_i32_j_01830_push14_gaussian0_i_llvm_fpga_push_i32_j_01830_push14_gaussian1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_j_01830_push14_gaussian0_i_llvm_fpga_push_i32_j_01830_push14_gaussian1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_j_01830_push14_gaussian0_i_llvm_fpga_push_i32_j_01830_push14_gaussian1_x_o_data;
    wire [30:0] i_llvm_fpga_push_i33_fpga_indvars_iv11_push8_gaussian0_c_i31_03_x_q;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv11_push8_gaussian0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv11_push8_gaussian0_i_llvm_fpga_push_i33_fpga_indvars_iv11_push8_gaussian1_x_i_valid;
    wire i_llvm_fpga_push_i33_fpga_indvars_iv11_push8_gaussian0_i_llvm_fpga_push_i33_fpga_indvars_iv11_push8_gaussian1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv11_push8_gaussian0_i_llvm_fpga_push_i33_fpga_indvars_iv11_push8_gaussian1_x_i_stall;
    wire i_llvm_fpga_push_i33_fpga_indvars_iv11_push8_gaussian0_i_llvm_fpga_push_i33_fpga_indvars_iv11_push8_gaussian1_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv11_push8_gaussian0_i_llvm_fpga_push_i33_fpga_indvars_iv11_push8_gaussian1_x_i_data;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv11_push8_gaussian0_i_llvm_fpga_push_i33_fpga_indvars_iv11_push8_gaussian1_x_o_data;
    wire [32:0] i_llvm_fpga_push_i33_fpga_indvars_iv11_push8_gaussian0_adapt_scalar_trunc4_sel_x_b;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg7_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg8_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg9_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg10_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg11_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg13_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg14_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg16_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg17_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg19_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg20_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg22_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg23_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg25_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg26_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg28_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg29_q;
    wire [0:0] i_exitcond13_gaussian10_cmp_nsign_q;
    reg [32:0] redist0_sync_together64_aunroll_x_in_c0_eni8_1_tpl_4_q;
    reg [32:0] redist0_sync_together64_aunroll_x_in_c0_eni8_1_tpl_4_delay_0;
    reg [32:0] redist0_sync_together64_aunroll_x_in_c0_eni8_1_tpl_4_delay_1;
    reg [0:0] redist1_sync_together64_aunroll_x_in_c0_eni8_3_tpl_4_q;
    reg [0:0] redist1_sync_together64_aunroll_x_in_c0_eni8_3_tpl_4_delay_0;
    reg [0:0] redist1_sync_together64_aunroll_x_in_c0_eni8_3_tpl_4_delay_1;
    reg [0:0] redist1_sync_together64_aunroll_x_in_c0_eni8_3_tpl_4_delay_2;
    reg [31:0] redist2_sync_together64_aunroll_x_in_c0_eni8_4_tpl_4_q;
    reg [31:0] redist2_sync_together64_aunroll_x_in_c0_eni8_4_tpl_4_delay_0;
    reg [31:0] redist2_sync_together64_aunroll_x_in_c0_eni8_4_tpl_4_delay_1;
    reg [0:0] redist3_sync_together64_aunroll_x_in_c0_eni8_5_tpl_4_q;
    reg [0:0] redist3_sync_together64_aunroll_x_in_c0_eni8_5_tpl_4_delay_0;
    reg [0:0] redist3_sync_together64_aunroll_x_in_c0_eni8_5_tpl_4_delay_1;
    reg [0:0] redist3_sync_together64_aunroll_x_in_c0_eni8_5_tpl_4_delay_2;
    reg [31:0] redist4_sync_together64_aunroll_x_in_c0_eni8_6_tpl_4_q;
    reg [31:0] redist4_sync_together64_aunroll_x_in_c0_eni8_6_tpl_4_delay_0;
    reg [31:0] redist4_sync_together64_aunroll_x_in_c0_eni8_6_tpl_4_delay_1;
    reg [31:0] redist5_sync_together64_aunroll_x_in_c0_eni8_7_tpl_4_q;
    reg [31:0] redist5_sync_together64_aunroll_x_in_c0_eni8_7_tpl_4_delay_0;
    reg [31:0] redist5_sync_together64_aunroll_x_in_c0_eni8_7_tpl_4_delay_1;
    reg [31:0] redist6_sync_together64_aunroll_x_in_c0_eni8_8_tpl_4_q;
    reg [31:0] redist6_sync_together64_aunroll_x_in_c0_eni8_8_tpl_4_delay_0;
    reg [31:0] redist6_sync_together64_aunroll_x_in_c0_eni8_8_tpl_4_delay_1;
    reg [0:0] redist7_sync_together64_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist7_sync_together64_aunroll_x_in_i_valid_2_delay_0;
    reg [0:0] redist8_sync_together64_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist9_sync_together64_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist10_i_llvm_fpga_push_i1_cmp41634_push16_gaussian0_inv_pred_x_q_2_q;
    reg [0:0] redist10_i_llvm_fpga_push_i1_cmp41634_push16_gaussian0_inv_pred_x_q_2_delay_0;
    reg [0:0] redist11_i_llvm_fpga_push_i1_cmp41634_push16_gaussian0_inv_pred_x_q_3_q;
    reg [0:0] redist12_i_llvm_fpga_forked_gaussian_b5_forked_gaussian3_out_buffer_out_4_q;
    reg [0:0] redist12_i_llvm_fpga_forked_gaussian_b5_forked_gaussian3_out_buffer_out_4_delay_0;
    reg [0:0] redist12_i_llvm_fpga_forked_gaussian_b5_forked_gaussian3_out_buffer_out_4_delay_1;
    reg [0:0] redist12_i_llvm_fpga_forked_gaussian_b5_forked_gaussian3_out_buffer_out_4_delay_2;
    reg [0:0] redist13_i_llvm_fpga_dummy_thread_gaussian_b5_dummy_gaussian2_out_dummy_out_4_q;
    reg [0:0] redist13_i_llvm_fpga_dummy_thread_gaussian_b5_dummy_gaussian2_out_dummy_out_4_delay_0;
    reg [0:0] redist13_i_llvm_fpga_dummy_thread_gaussian_b5_dummy_gaussian2_out_dummy_out_4_delay_1;
    reg [0:0] redist13_i_llvm_fpga_dummy_thread_gaussian_b5_dummy_gaussian2_out_dummy_out_4_delay_2;
    reg [32:0] redist0_sync_together64_aunroll_x_in_c0_eni8_1_tpl_4_inputreg0_q;
    reg [31:0] redist2_sync_together64_aunroll_x_in_c0_eni8_4_tpl_4_inputreg0_q;
    reg [31:0] redist4_sync_together64_aunroll_x_in_c0_eni8_6_tpl_4_inputreg0_q;
    reg [31:0] redist5_sync_together64_aunroll_x_in_c0_eni8_7_tpl_4_inputreg0_q;
    reg [31:0] redist6_sync_together64_aunroll_x_in_c0_eni8_8_tpl_4_inputreg0_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist7_sync_together64_aunroll_x_in_i_valid_2(DELAY,145)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist7_sync_together64_aunroll_x_in_i_valid_2_delay_0 <= '0;
        end
        else
        begin
            redist7_sync_together64_aunroll_x_in_i_valid_2_delay_0 <= $unsigned(in_i_valid);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_sync_together64_aunroll_x_in_i_valid_2_q <= redist7_sync_together64_aunroll_x_in_i_valid_2_delay_0;
        end
    end

    // redist8_sync_together64_aunroll_x_in_i_valid_3(DELAY,146)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist8_sync_together64_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist8_sync_together64_aunroll_x_in_i_valid_3_q <= $unsigned(redist7_sync_together64_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg2(REG,102)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist8_sync_together64_aunroll_x_in_i_valid_3_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // valid_fanout_reg9(REG,109)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist8_sync_together64_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist0_sync_together64_aunroll_x_in_c0_eni8_1_tpl_4_inputreg0(DELAY,152)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sync_together64_aunroll_x_in_c0_eni8_1_tpl_4_inputreg0_q <= $unsigned(in_c0_eni8_1_tpl);
        end
    end

    // redist0_sync_together64_aunroll_x_in_c0_eni8_1_tpl_4(DELAY,138)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sync_together64_aunroll_x_in_c0_eni8_1_tpl_4_delay_0 <= $unsigned(redist0_sync_together64_aunroll_x_in_c0_eni8_1_tpl_4_inputreg0_q);
            redist0_sync_together64_aunroll_x_in_c0_eni8_1_tpl_4_delay_1 <= redist0_sync_together64_aunroll_x_in_c0_eni8_1_tpl_4_delay_0;
            redist0_sync_together64_aunroll_x_in_c0_eni8_1_tpl_4_q <= redist0_sync_together64_aunroll_x_in_c0_eni8_1_tpl_4_delay_1;
        end
    end

    // i_llvm_fpga_push_i33_fpga_indvars_iv11_push8_gaussian0_c_i31_03_x(CONSTANT,93)
    assign i_llvm_fpga_push_i33_fpga_indvars_iv11_push8_gaussian0_c_i31_03_x_q = $unsigned(31'b0000000000000000000000000000000);

    // c_i33_157(CONSTANT,29)
    assign c_i33_157_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next12_gaussian17(ADD,31)@4
    assign i_fpga_indvars_iv_next12_gaussian17_a = {1'b0, i_llvm_fpga_pop_i33_fpga_indvars_iv11_pop8_gaussian0_i_llvm_fpga_pop_i33_fpga_indvars_iv11_pop8_gaussian9_mux_x_q};
    assign i_fpga_indvars_iv_next12_gaussian17_b = {1'b0, c_i33_157_q};
    assign i_fpga_indvars_iv_next12_gaussian17_o = $unsigned(i_fpga_indvars_iv_next12_gaussian17_a) + $unsigned(i_fpga_indvars_iv_next12_gaussian17_b);
    assign i_fpga_indvars_iv_next12_gaussian17_q = i_fpga_indvars_iv_next12_gaussian17_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next12_gaussian17_sel_x(BITSELECT,44)@4
    assign bgTrunc_i_fpga_indvars_iv_next12_gaussian17_sel_x_b = i_fpga_indvars_iv_next12_gaussian17_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv11_push8_gaussian0_element_extension2_x(BITJOIN,94)@4
    assign i_llvm_fpga_push_i33_fpga_indvars_iv11_push8_gaussian0_element_extension2_x_q = {i_llvm_fpga_push_i33_fpga_indvars_iv11_push8_gaussian0_c_i31_03_x_q, bgTrunc_i_fpga_indvars_iv_next12_gaussian17_sel_x_b};

    // i_llvm_fpga_push_i1_cmp41634_push16_gaussian0_inv_pred_x(LOGICAL,63)@1
    assign i_llvm_fpga_push_i1_cmp41634_push16_gaussian0_inv_pred_x_q = ~ (GND_q);

    // valid_fanout_reg11(REG,111)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(in_i_valid);
        end
    end

    // redist10_i_llvm_fpga_push_i1_cmp41634_push16_gaussian0_inv_pred_x_q_2(DELAY,148)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_i_llvm_fpga_push_i1_cmp41634_push16_gaussian0_inv_pred_x_q_2_delay_0 <= $unsigned(i_llvm_fpga_push_i1_cmp41634_push16_gaussian0_inv_pred_x_q);
            redist10_i_llvm_fpga_push_i1_cmp41634_push16_gaussian0_inv_pred_x_q_2_q <= redist10_i_llvm_fpga_push_i1_cmp41634_push16_gaussian0_inv_pred_x_q_2_delay_0;
        end
    end

    // valid_fanout_reg10(REG,110)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist7_sync_together64_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i33_fpga_indvars_iv11_push8_gaussian0_i_llvm_fpga_push_i33_fpga_indvars_iv11_push8_gaussian1_x(FIFODELAY,95)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i33_fpga_indvars_iv11_push8_gaussian0_i_llvm_fpga_push_i33_fpga_indvars_iv11_push8_gaussian1_x_i_stall = ~ (valid_fanout_reg11_q & i_llvm_fpga_push_i1_cmp41634_push16_gaussian0_inv_pred_x_q);
    assign i_llvm_fpga_push_i33_fpga_indvars_iv11_push8_gaussian0_i_llvm_fpga_push_i33_fpga_indvars_iv11_push8_gaussian1_x_i_valid = valid_fanout_reg10_q & redist10_i_llvm_fpga_push_i1_cmp41634_push16_gaussian0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i33_fpga_indvars_iv11_push8_gaussian0_i_llvm_fpga_push_i33_fpga_indvars_iv11_push8_gaussian1_x_i_data = i_llvm_fpga_push_i33_fpga_indvars_iv11_push8_gaussian0_element_extension2_x_q;
    assign i_llvm_fpga_push_i33_fpga_indvars_iv11_push8_gaussian0_i_llvm_fpga_push_i33_fpga_indvars_iv11_push8_gaussian1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i33_fpga_indvars_iv11_push8_gaussian0_i_llvm_fpga_push_i33_fpga_indvars_iv11_push8_gaussian1_x_i_valid[0];
    assign i_llvm_fpga_push_i33_fpga_indvars_iv11_push8_gaussian0_i_llvm_fpga_push_i33_fpga_indvars_iv11_push8_gaussian1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i33_fpga_indvars_iv11_push8_gaussian0_i_llvm_fpga_push_i33_fpga_indvars_iv11_push8_gaussian1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i33_fpga_indvars_iv11_push8_gaussian0_i_llvm_fpga_push_i33_fpga_indvars_iv11_push8_gaussian1_x (
        .i_valid(i_llvm_fpga_push_i33_fpga_indvars_iv11_push8_gaussian0_i_llvm_fpga_push_i33_fpga_indvars_iv11_push8_gaussian1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i33_fpga_indvars_iv11_push8_gaussian0_i_llvm_fpga_push_i33_fpga_indvars_iv11_push8_gaussian1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i33_fpga_indvars_iv11_push8_gaussian0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i33_fpga_indvars_iv11_push8_gaussian0_i_llvm_fpga_push_i33_fpga_indvars_iv11_push8_gaussian1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i33_fpga_indvars_iv11_push8_gaussian0_adapt_scalar_trunc4_sel_x(BITSELECT,97)@4
    assign i_llvm_fpga_push_i33_fpga_indvars_iv11_push8_gaussian0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i33_fpga_indvars_iv11_push8_gaussian0_i_llvm_fpga_push_i33_fpga_indvars_iv11_push8_gaussian1_x_o_data[32:0];

    // i_llvm_fpga_pop_i33_fpga_indvars_iv11_pop8_gaussian0_i_llvm_fpga_pop_i33_fpga_indvars_iv11_pop8_gaussian9_mux_x(MUX,58)@4
    assign i_llvm_fpga_pop_i33_fpga_indvars_iv11_pop8_gaussian0_i_llvm_fpga_pop_i33_fpga_indvars_iv11_pop8_gaussian9_mux_x_s = redist12_i_llvm_fpga_forked_gaussian_b5_forked_gaussian3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i33_fpga_indvars_iv11_pop8_gaussian0_i_llvm_fpga_pop_i33_fpga_indvars_iv11_pop8_gaussian9_mux_x_s or i_llvm_fpga_push_i33_fpga_indvars_iv11_push8_gaussian0_adapt_scalar_trunc4_sel_x_b or redist0_sync_together64_aunroll_x_in_c0_eni8_1_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i33_fpga_indvars_iv11_pop8_gaussian0_i_llvm_fpga_pop_i33_fpga_indvars_iv11_pop8_gaussian9_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i33_fpga_indvars_iv11_pop8_gaussian0_i_llvm_fpga_pop_i33_fpga_indvars_iv11_pop8_gaussian9_mux_x_q = i_llvm_fpga_push_i33_fpga_indvars_iv11_push8_gaussian0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i33_fpga_indvars_iv11_pop8_gaussian0_i_llvm_fpga_pop_i33_fpga_indvars_iv11_pop8_gaussian9_mux_x_q = redist0_sync_together64_aunroll_x_in_c0_eni8_1_tpl_4_q;
            default : i_llvm_fpga_pop_i33_fpga_indvars_iv11_pop8_gaussian0_i_llvm_fpga_pop_i33_fpga_indvars_iv11_pop8_gaussian9_mux_x_q = 33'b0;
        endcase
    end

    // i_exitcond13_gaussian10_cmp_nsign(LOGICAL,137)@4
    assign i_exitcond13_gaussian10_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i33_fpga_indvars_iv11_pop8_gaussian0_i_llvm_fpga_pop_i33_fpga_indvars_iv11_pop8_gaussian9_mux_x_q[32:32]));

    // redist1_sync_together64_aunroll_x_in_c0_eni8_3_tpl_4(DELAY,139)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_together64_aunroll_x_in_c0_eni8_3_tpl_4_delay_0 <= $unsigned(in_c0_eni8_3_tpl);
            redist1_sync_together64_aunroll_x_in_c0_eni8_3_tpl_4_delay_1 <= redist1_sync_together64_aunroll_x_in_c0_eni8_3_tpl_4_delay_0;
            redist1_sync_together64_aunroll_x_in_c0_eni8_3_tpl_4_delay_2 <= redist1_sync_together64_aunroll_x_in_c0_eni8_3_tpl_4_delay_1;
            redist1_sync_together64_aunroll_x_in_c0_eni8_3_tpl_4_q <= redist1_sync_together64_aunroll_x_in_c0_eni8_3_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_push_i1_cmp41634_push16_gaussian0_c_i7_03_x(CONSTANT,60)
    assign i_llvm_fpga_push_i1_cmp41634_push16_gaussian0_c_i7_03_x_q = $unsigned(7'b0000000);

    // i_llvm_fpga_push_i1_cmp41634_push16_gaussian0_element_extension2_x(BITJOIN,61)@4
    assign i_llvm_fpga_push_i1_cmp41634_push16_gaussian0_element_extension2_x_q = {i_llvm_fpga_push_i1_cmp41634_push16_gaussian0_c_i7_03_x_q, i_llvm_fpga_pop_i1_cmp41634_pop16_gaussian0_i_llvm_fpga_pop_i1_cmp41634_pop16_gaussian12_mux_x_q};

    // valid_fanout_reg8(REG,108)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg7(REG,107)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist7_sync_together64_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_cmp41634_push16_gaussian0_i_llvm_fpga_push_i1_cmp41634_push16_gaussian1_x(FIFODELAY,62)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i1_cmp41634_push16_gaussian0_i_llvm_fpga_push_i1_cmp41634_push16_gaussian1_x_i_stall = ~ (valid_fanout_reg8_q & i_llvm_fpga_push_i1_cmp41634_push16_gaussian0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_cmp41634_push16_gaussian0_i_llvm_fpga_push_i1_cmp41634_push16_gaussian1_x_i_valid = valid_fanout_reg7_q & redist10_i_llvm_fpga_push_i1_cmp41634_push16_gaussian0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i1_cmp41634_push16_gaussian0_i_llvm_fpga_push_i1_cmp41634_push16_gaussian1_x_i_data = i_llvm_fpga_push_i1_cmp41634_push16_gaussian0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_cmp41634_push16_gaussian0_i_llvm_fpga_push_i1_cmp41634_push16_gaussian1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_cmp41634_push16_gaussian0_i_llvm_fpga_push_i1_cmp41634_push16_gaussian1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_cmp41634_push16_gaussian0_i_llvm_fpga_push_i1_cmp41634_push16_gaussian1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_cmp41634_push16_gaussian0_i_llvm_fpga_push_i1_cmp41634_push16_gaussian1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_cmp41634_push16_gaussian0_i_llvm_fpga_push_i1_cmp41634_push16_gaussian1_x (
        .i_valid(i_llvm_fpga_push_i1_cmp41634_push16_gaussian0_i_llvm_fpga_push_i1_cmp41634_push16_gaussian1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_cmp41634_push16_gaussian0_i_llvm_fpga_push_i1_cmp41634_push16_gaussian1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_cmp41634_push16_gaussian0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_cmp41634_push16_gaussian0_i_llvm_fpga_push_i1_cmp41634_push16_gaussian1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_cmp41634_push16_gaussian0_adapt_scalar_trunc4_sel_x(BITSELECT,64)@4
    assign i_llvm_fpga_push_i1_cmp41634_push16_gaussian0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_cmp41634_push16_gaussian0_i_llvm_fpga_push_i1_cmp41634_push16_gaussian1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_cmp41634_pop16_gaussian0_i_llvm_fpga_pop_i1_cmp41634_pop16_gaussian12_mux_x(MUX,51)@4
    assign i_llvm_fpga_pop_i1_cmp41634_pop16_gaussian0_i_llvm_fpga_pop_i1_cmp41634_pop16_gaussian12_mux_x_s = redist12_i_llvm_fpga_forked_gaussian_b5_forked_gaussian3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i1_cmp41634_pop16_gaussian0_i_llvm_fpga_pop_i1_cmp41634_pop16_gaussian12_mux_x_s or i_llvm_fpga_push_i1_cmp41634_push16_gaussian0_adapt_scalar_trunc4_sel_x_b or redist1_sync_together64_aunroll_x_in_c0_eni8_3_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i1_cmp41634_pop16_gaussian0_i_llvm_fpga_pop_i1_cmp41634_pop16_gaussian12_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_cmp41634_pop16_gaussian0_i_llvm_fpga_pop_i1_cmp41634_pop16_gaussian12_mux_x_q = i_llvm_fpga_push_i1_cmp41634_push16_gaussian0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_cmp41634_pop16_gaussian0_i_llvm_fpga_pop_i1_cmp41634_pop16_gaussian12_mux_x_q = redist1_sync_together64_aunroll_x_in_c0_eni8_3_tpl_4_q;
            default : i_llvm_fpga_pop_i1_cmp41634_pop16_gaussian0_i_llvm_fpga_pop_i1_cmp41634_pop16_gaussian12_mux_x_q = 1'b0;
        endcase
    end

    // i_unnamed_gaussian13(LOGICAL,40)@4
    assign i_unnamed_gaussian13_q = i_llvm_fpga_pop_i1_cmp41634_pop16_gaussian0_i_llvm_fpga_pop_i1_cmp41634_pop16_gaussian12_mux_x_q & i_exitcond13_gaussian10_cmp_nsign_q;

    // i_llvm_fpga_push_i1_notexitcond17_gaussian16(BLACKBOX,38)@4
    // out out_feedback_out_4@20000000
    // out out_feedback_valid_out_4@20000000
    gaussian_i_llvm_fpga_push_i1_notexitcond17_0 thei_llvm_fpga_push_i1_notexitcond17_gaussian16 (
        .in_data_in(i_unnamed_gaussian13_q),
        .in_feedback_stall_in_4(i_llvm_fpga_pipeline_keep_going16_gaussian6_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(),
        .out_feedback_out_4(i_llvm_fpga_push_i1_notexitcond17_gaussian16_out_feedback_out_4),
        .out_feedback_valid_out_4(i_llvm_fpga_push_i1_notexitcond17_gaussian16_out_feedback_valid_out_4),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_dummy_thread_gaussian_b5_dummy_gaussian2(BLACKBOX,35)@0
    // in in_stall_in@20000000
    gaussian_i_llvm_fpga_dummy_thread_b5_dummy_gaussian0 thei_llvm_fpga_dummy_thread_gaussian_b5_dummy_gaussian2 (
        .in_dummy_in(in_dummy_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dummy_out(i_llvm_fpga_dummy_thread_gaussian_b5_dummy_gaussian2_out_dummy_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist13_i_llvm_fpga_dummy_thread_gaussian_b5_dummy_gaussian2_out_dummy_out_4(DELAY,151)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist13_i_llvm_fpga_dummy_thread_gaussian_b5_dummy_gaussian2_out_dummy_out_4_delay_0 <= $unsigned(i_llvm_fpga_dummy_thread_gaussian_b5_dummy_gaussian2_out_dummy_out);
            redist13_i_llvm_fpga_dummy_thread_gaussian_b5_dummy_gaussian2_out_dummy_out_4_delay_1 <= redist13_i_llvm_fpga_dummy_thread_gaussian_b5_dummy_gaussian2_out_dummy_out_4_delay_0;
            redist13_i_llvm_fpga_dummy_thread_gaussian_b5_dummy_gaussian2_out_dummy_out_4_delay_2 <= redist13_i_llvm_fpga_dummy_thread_gaussian_b5_dummy_gaussian2_out_dummy_out_4_delay_1;
            redist13_i_llvm_fpga_dummy_thread_gaussian_b5_dummy_gaussian2_out_dummy_out_4_q <= redist13_i_llvm_fpga_dummy_thread_gaussian_b5_dummy_gaussian2_out_dummy_out_4_delay_2;
        end
    end

    // i_llvm_fpga_forked_gaussian_b5_forked_gaussian3(BLACKBOX,36)@0
    // in in_stall_in@20000000
    gaussian_i_llvm_fpga_forked_b5_forked_gaussian0 thei_llvm_fpga_forked_gaussian_b5_forked_gaussian3 (
        .in_buffer_in(in_buffer_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_buffer_out(i_llvm_fpga_forked_gaussian_b5_forked_gaussian3_out_buffer_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist12_i_llvm_fpga_forked_gaussian_b5_forked_gaussian3_out_buffer_out_4(DELAY,150)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist12_i_llvm_fpga_forked_gaussian_b5_forked_gaussian3_out_buffer_out_4_delay_0 <= $unsigned(i_llvm_fpga_forked_gaussian_b5_forked_gaussian3_out_buffer_out);
            redist12_i_llvm_fpga_forked_gaussian_b5_forked_gaussian3_out_buffer_out_4_delay_1 <= redist12_i_llvm_fpga_forked_gaussian_b5_forked_gaussian3_out_buffer_out_4_delay_0;
            redist12_i_llvm_fpga_forked_gaussian_b5_forked_gaussian3_out_buffer_out_4_delay_2 <= redist12_i_llvm_fpga_forked_gaussian_b5_forked_gaussian3_out_buffer_out_4_delay_1;
            redist12_i_llvm_fpga_forked_gaussian_b5_forked_gaussian3_out_buffer_out_4_q <= redist12_i_llvm_fpga_forked_gaussian_b5_forked_gaussian3_out_buffer_out_4_delay_2;
        end
    end

    // i_llvm_fpga_pipeline_keep_going16_gaussian6(BLACKBOX,37)@4
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_dummy_out@20000000
    // out out_pipeline_forked_out@20000000
    // out out_pipeline_valid_out@20000000
    gaussian_i_llvm_fpga_pipeline_keep_going16_0 thei_llvm_fpga_pipeline_keep_going16_gaussian6 (
        .in_data_in(redist12_i_llvm_fpga_forked_gaussian_b5_forked_gaussian3_out_buffer_out_4_q),
        .in_dummy_in(redist13_i_llvm_fpga_dummy_thread_gaussian_b5_dummy_gaussian2_out_dummy_out_4_q),
        .in_forked_in(redist12_i_llvm_fpga_forked_gaussian_b5_forked_gaussian3_out_buffer_out_4_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond17_gaussian16_out_feedback_out_4),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond17_gaussian16_out_feedback_valid_out_4),
        .in_pipeline_stall_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going16_gaussian6_out_data_out),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going16_gaussian6_out_exiting_valid_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going16_gaussian6_out_not_exitcond_stall_out),
        .out_pipeline_dummy_out(i_llvm_fpga_pipeline_keep_going16_gaussian6_out_pipeline_dummy_out),
        .out_pipeline_forked_out(i_llvm_fpga_pipeline_keep_going16_gaussian6_out_pipeline_forked_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going16_gaussian6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,42)
    assign out_exiting_valid_out = i_llvm_fpga_pipeline_keep_going16_gaussian6_out_exiting_valid_out;

    // dupName_0_regfree_osync_x(GPOUT,47)
    assign out_pipeline_dummy_out = i_llvm_fpga_pipeline_keep_going16_gaussian6_out_pipeline_dummy_out;

    // dupName_1_regfree_osync_x(GPOUT,48)
    assign out_pipeline_forked_out = i_llvm_fpga_pipeline_keep_going16_gaussian6_out_pipeline_forked_out;

    // dupName_2_regfree_osync_x(GPOUT,49)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going16_gaussian6_out_pipeline_valid_out;

    // redist9_sync_together64_aunroll_x_in_i_valid_4(DELAY,147)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist9_sync_together64_aunroll_x_in_i_valid_4_q <= $unsigned(redist8_sync_together64_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg0(REG,100)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist8_sync_together64_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_gaussian_b5_next_iter_isreal_gaussian7(LOGICAL,33)@4 + 1
    assign i_gaussian_b5_next_iter_isreal_gaussian7_qi = i_llvm_fpga_pop_coalesce_i1_gaussian_b5_current_iter_isreal_gaussian0_i_llvm_fpga_pop_coalesce_i1_gaussian_b5_current_iter_isreal_gaussian4_mux_x_q & i_llvm_fpga_pipeline_keep_going16_gaussian6_out_data_out;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_gaussian_b5_next_iter_isreal_gaussian7_delay ( .xin(i_gaussian_b5_next_iter_isreal_gaussian7_qi), .xout(i_gaussian_b5_next_iter_isreal_gaussian7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_push_i1_gaussian_b5_next_iter_isreal_push_gaussian0_element_extension2_x(BITJOIN,67)@5
    assign i_llvm_fpga_push_i1_gaussian_b5_next_iter_isreal_push_gaussian0_element_extension2_x_q = {i_llvm_fpga_push_i1_cmp41634_push16_gaussian0_c_i7_03_x_q, i_gaussian_b5_next_iter_isreal_gaussian7_q};

    // valid_fanout_reg4(REG,104)@0 + 1
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

    // redist11_i_llvm_fpga_push_i1_cmp41634_push16_gaussian0_inv_pred_x_q_3(DELAY,149)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist11_i_llvm_fpga_push_i1_cmp41634_push16_gaussian0_inv_pred_x_q_3_q <= $unsigned(redist10_i_llvm_fpga_push_i1_cmp41634_push16_gaussian0_inv_pred_x_q_2_q);
        end
    end

    // valid_fanout_reg3(REG,103)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist8_sync_together64_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_gaussian_b5_next_iter_isreal_push_gaussian0_i_llvm_fpga_push_i1_gaussian_b5_next_iter_isreal_push_gaussian1_x(FIFODELAY,68)@1
    // in i_valid@4
    // in i_write_pred@4
    // in i_data@5
    // out o_data@4
    assign i_llvm_fpga_push_i1_gaussian_b5_next_iter_isreal_push_gaussian0_i_llvm_fpga_push_i1_gaussian_b5_next_iter_isreal_push_gaussian1_x_i_stall = ~ (valid_fanout_reg4_q & i_llvm_fpga_push_i1_cmp41634_push16_gaussian0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_gaussian_b5_next_iter_isreal_push_gaussian0_i_llvm_fpga_push_i1_gaussian_b5_next_iter_isreal_push_gaussian1_x_i_valid = valid_fanout_reg3_q & redist11_i_llvm_fpga_push_i1_cmp41634_push16_gaussian0_inv_pred_x_q_3_q;
    assign i_llvm_fpga_push_i1_gaussian_b5_next_iter_isreal_push_gaussian0_i_llvm_fpga_push_i1_gaussian_b5_next_iter_isreal_push_gaussian1_x_i_data = i_llvm_fpga_push_i1_gaussian_b5_next_iter_isreal_push_gaussian0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_gaussian_b5_next_iter_isreal_push_gaussian0_i_llvm_fpga_push_i1_gaussian_b5_next_iter_isreal_push_gaussian1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_gaussian_b5_next_iter_isreal_push_gaussian0_i_llvm_fpga_push_i1_gaussian_b5_next_iter_isreal_push_gaussian1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_gaussian_b5_next_iter_isreal_push_gaussian0_i_llvm_fpga_push_i1_gaussian_b5_next_iter_isreal_push_gaussian1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_gaussian_b5_next_iter_isreal_push_gaussian0_i_llvm_fpga_push_i1_gaussian_b5_next_iter_isreal_push_gaussian1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_gaussian_b5_next_iter_isreal_push_gaussian0_i_llvm_fpga_push_i1_gaussian_b5_next_iter_isreal_push_gaussian1_x (
        .i_valid(i_llvm_fpga_push_i1_gaussian_b5_next_iter_isreal_push_gaussian0_i_llvm_fpga_push_i1_gaussian_b5_next_iter_isreal_push_gaussian1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_gaussian_b5_next_iter_isreal_push_gaussian0_i_llvm_fpga_push_i1_gaussian_b5_next_iter_isreal_push_gaussian1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_gaussian_b5_next_iter_isreal_push_gaussian0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_gaussian_b5_next_iter_isreal_push_gaussian0_i_llvm_fpga_push_i1_gaussian_b5_next_iter_isreal_push_gaussian1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_gaussian_b5_next_iter_isreal_push_gaussian0_adapt_scalar_trunc4_sel_x(BITSELECT,70)@4
    assign i_llvm_fpga_push_i1_gaussian_b5_next_iter_isreal_push_gaussian0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_gaussian_b5_next_iter_isreal_push_gaussian0_i_llvm_fpga_push_i1_gaussian_b5_next_iter_isreal_push_gaussian1_x_o_data[0:0];

    // i_llvm_fpga_pop_coalesce_i1_gaussian_b5_current_iter_isreal_gaussian0_i_llvm_fpga_pop_coalesce_i1_gaussian_b5_current_iter_isreal_gaussian4_mux_x(MUX,50)@4
    assign i_llvm_fpga_pop_coalesce_i1_gaussian_b5_current_iter_isreal_gaussian0_i_llvm_fpga_pop_coalesce_i1_gaussian_b5_current_iter_isreal_gaussian4_mux_x_s = redist12_i_llvm_fpga_forked_gaussian_b5_forked_gaussian3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_coalesce_i1_gaussian_b5_current_iter_isreal_gaussian0_i_llvm_fpga_pop_coalesce_i1_gaussian_b5_current_iter_isreal_gaussian4_mux_x_s or i_llvm_fpga_push_i1_gaussian_b5_next_iter_isreal_push_gaussian0_adapt_scalar_trunc4_sel_x_b or VCC_q)
    begin
        unique case (i_llvm_fpga_pop_coalesce_i1_gaussian_b5_current_iter_isreal_gaussian0_i_llvm_fpga_pop_coalesce_i1_gaussian_b5_current_iter_isreal_gaussian4_mux_x_s)
            1'b0 : i_llvm_fpga_pop_coalesce_i1_gaussian_b5_current_iter_isreal_gaussian0_i_llvm_fpga_pop_coalesce_i1_gaussian_b5_current_iter_isreal_gaussian4_mux_x_q = i_llvm_fpga_push_i1_gaussian_b5_next_iter_isreal_push_gaussian0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_coalesce_i1_gaussian_b5_current_iter_isreal_gaussian0_i_llvm_fpga_pop_coalesce_i1_gaussian_b5_current_iter_isreal_gaussian4_mux_x_q = VCC_q;
            default : i_llvm_fpga_pop_coalesce_i1_gaussian_b5_current_iter_isreal_gaussian0_i_llvm_fpga_pop_coalesce_i1_gaussian_b5_current_iter_isreal_gaussian4_mux_x_q = 1'b0;
        endcase
    end

    // i_gaussian_b5_current_iter_isspec_gaussian5(LOGICAL,32)@4
    assign i_gaussian_b5_current_iter_isspec_gaussian5_q = i_llvm_fpga_pop_coalesce_i1_gaussian_b5_current_iter_isreal_gaussian0_i_llvm_fpga_pop_coalesce_i1_gaussian_b5_current_iter_isreal_gaussian4_mux_x_q ^ VCC_q;

    // redist2_sync_together64_aunroll_x_in_c0_eni8_4_tpl_4_inputreg0(DELAY,153)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_sync_together64_aunroll_x_in_c0_eni8_4_tpl_4_inputreg0_q <= $unsigned(in_c0_eni8_4_tpl);
        end
    end

    // redist2_sync_together64_aunroll_x_in_c0_eni8_4_tpl_4(DELAY,140)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_sync_together64_aunroll_x_in_c0_eni8_4_tpl_4_delay_0 <= $unsigned(redist2_sync_together64_aunroll_x_in_c0_eni8_4_tpl_4_inputreg0_q);
            redist2_sync_together64_aunroll_x_in_c0_eni8_4_tpl_4_delay_1 <= redist2_sync_together64_aunroll_x_in_c0_eni8_4_tpl_4_delay_0;
            redist2_sync_together64_aunroll_x_in_c0_eni8_4_tpl_4_q <= redist2_sync_together64_aunroll_x_in_c0_eni8_4_tpl_4_delay_1;
        end
    end

    // redist3_sync_together64_aunroll_x_in_c0_eni8_5_tpl_4(DELAY,141)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_sync_together64_aunroll_x_in_c0_eni8_5_tpl_4_delay_0 <= $unsigned(in_c0_eni8_5_tpl);
            redist3_sync_together64_aunroll_x_in_c0_eni8_5_tpl_4_delay_1 <= redist3_sync_together64_aunroll_x_in_c0_eni8_5_tpl_4_delay_0;
            redist3_sync_together64_aunroll_x_in_c0_eni8_5_tpl_4_delay_2 <= redist3_sync_together64_aunroll_x_in_c0_eni8_5_tpl_4_delay_1;
            redist3_sync_together64_aunroll_x_in_c0_eni8_5_tpl_4_q <= redist3_sync_together64_aunroll_x_in_c0_eni8_5_tpl_4_delay_2;
        end
    end

    // redist6_sync_together64_aunroll_x_in_c0_eni8_8_tpl_4_inputreg0(DELAY,156)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_sync_together64_aunroll_x_in_c0_eni8_8_tpl_4_inputreg0_q <= $unsigned(in_c0_eni8_8_tpl);
        end
    end

    // redist6_sync_together64_aunroll_x_in_c0_eni8_8_tpl_4(DELAY,144)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_sync_together64_aunroll_x_in_c0_eni8_8_tpl_4_delay_0 <= $unsigned(redist6_sync_together64_aunroll_x_in_c0_eni8_8_tpl_4_inputreg0_q);
            redist6_sync_together64_aunroll_x_in_c0_eni8_8_tpl_4_delay_1 <= redist6_sync_together64_aunroll_x_in_c0_eni8_8_tpl_4_delay_0;
            redist6_sync_together64_aunroll_x_in_c0_eni8_8_tpl_4_q <= redist6_sync_together64_aunroll_x_in_c0_eni8_8_tpl_4_delay_1;
        end
    end

    // redist5_sync_together64_aunroll_x_in_c0_eni8_7_tpl_4_inputreg0(DELAY,155)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_sync_together64_aunroll_x_in_c0_eni8_7_tpl_4_inputreg0_q <= $unsigned(in_c0_eni8_7_tpl);
        end
    end

    // redist5_sync_together64_aunroll_x_in_c0_eni8_7_tpl_4(DELAY,143)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_sync_together64_aunroll_x_in_c0_eni8_7_tpl_4_delay_0 <= $unsigned(redist5_sync_together64_aunroll_x_in_c0_eni8_7_tpl_4_inputreg0_q);
            redist5_sync_together64_aunroll_x_in_c0_eni8_7_tpl_4_delay_1 <= redist5_sync_together64_aunroll_x_in_c0_eni8_7_tpl_4_delay_0;
            redist5_sync_together64_aunroll_x_in_c0_eni8_7_tpl_4_q <= redist5_sync_together64_aunroll_x_in_c0_eni8_7_tpl_4_delay_1;
        end
    end

    // redist4_sync_together64_aunroll_x_in_c0_eni8_6_tpl_4_inputreg0(DELAY,154)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_sync_together64_aunroll_x_in_c0_eni8_6_tpl_4_inputreg0_q <= $unsigned(in_c0_eni8_6_tpl);
        end
    end

    // redist4_sync_together64_aunroll_x_in_c0_eni8_6_tpl_4(DELAY,142)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_sync_together64_aunroll_x_in_c0_eni8_6_tpl_4_delay_0 <= $unsigned(redist4_sync_together64_aunroll_x_in_c0_eni8_6_tpl_4_inputreg0_q);
            redist4_sync_together64_aunroll_x_in_c0_eni8_6_tpl_4_delay_1 <= redist4_sync_together64_aunroll_x_in_c0_eni8_6_tpl_4_delay_0;
            redist4_sync_together64_aunroll_x_in_c0_eni8_6_tpl_4_q <= redist4_sync_together64_aunroll_x_in_c0_eni8_6_tpl_4_delay_1;
        end
    end

    // valid_fanout_reg29(REG,129)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg29_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg28(REG,128)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg28_q <= $unsigned(redist7_sync_together64_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i32_add32_push15_gaussian0_i_llvm_fpga_push_i32_add32_push15_gaussian1_x(FIFODELAY,77)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i32_add32_push15_gaussian0_i_llvm_fpga_push_i32_add32_push15_gaussian1_x_i_stall = ~ (valid_fanout_reg29_q & i_llvm_fpga_push_i1_cmp41634_push16_gaussian0_inv_pred_x_q);
    assign i_llvm_fpga_push_i32_add32_push15_gaussian0_i_llvm_fpga_push_i32_add32_push15_gaussian1_x_i_valid = valid_fanout_reg28_q & redist10_i_llvm_fpga_push_i1_cmp41634_push16_gaussian0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i32_add32_push15_gaussian0_i_llvm_fpga_push_i32_add32_push15_gaussian1_x_i_data = i_llvm_fpga_pop_i32_add32_pop15_gaussian0_i_llvm_fpga_pop_i32_add32_pop15_gaussian30_mux_x_q;
    assign i_llvm_fpga_push_i32_add32_push15_gaussian0_i_llvm_fpga_push_i32_add32_push15_gaussian1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_add32_push15_gaussian0_i_llvm_fpga_push_i32_add32_push15_gaussian1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_add32_push15_gaussian0_i_llvm_fpga_push_i32_add32_push15_gaussian1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_add32_push15_gaussian0_i_llvm_fpga_push_i32_add32_push15_gaussian1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_add32_push15_gaussian0_i_llvm_fpga_push_i32_add32_push15_gaussian1_x (
        .i_valid(i_llvm_fpga_push_i32_add32_push15_gaussian0_i_llvm_fpga_push_i32_add32_push15_gaussian1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_add32_push15_gaussian0_i_llvm_fpga_push_i32_add32_push15_gaussian1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i32_add32_pop15_gaussian0_i_llvm_fpga_pop_i32_add32_pop15_gaussian30_mux_x_q),
        .o_data(i_llvm_fpga_push_i32_add32_push15_gaussian0_i_llvm_fpga_push_i32_add32_push15_gaussian1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_add32_pop15_gaussian0_i_llvm_fpga_pop_i32_add32_pop15_gaussian30_mux_x(MUX,53)@4
    assign i_llvm_fpga_pop_i32_add32_pop15_gaussian0_i_llvm_fpga_pop_i32_add32_pop15_gaussian30_mux_x_s = redist12_i_llvm_fpga_forked_gaussian_b5_forked_gaussian3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i32_add32_pop15_gaussian0_i_llvm_fpga_pop_i32_add32_pop15_gaussian30_mux_x_s or i_llvm_fpga_push_i32_add32_push15_gaussian0_i_llvm_fpga_push_i32_add32_push15_gaussian1_x_o_data or redist2_sync_together64_aunroll_x_in_c0_eni8_4_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i32_add32_pop15_gaussian0_i_llvm_fpga_pop_i32_add32_pop15_gaussian30_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_add32_pop15_gaussian0_i_llvm_fpga_pop_i32_add32_pop15_gaussian30_mux_x_q = i_llvm_fpga_push_i32_add32_push15_gaussian0_i_llvm_fpga_push_i32_add32_push15_gaussian1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_add32_pop15_gaussian0_i_llvm_fpga_pop_i32_add32_pop15_gaussian30_mux_x_q = redist2_sync_together64_aunroll_x_in_c0_eni8_4_tpl_4_q;
            default : i_llvm_fpga_pop_i32_add32_pop15_gaussian0_i_llvm_fpga_pop_i32_add32_pop15_gaussian30_mux_x_q = 32'b0;
        endcase
    end

    // valid_fanout_reg26(REG,126)@0 + 1
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

    // valid_fanout_reg25(REG,125)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg25_q <= $unsigned(redist7_sync_together64_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i32_j_01830_push14_gaussian0_i_llvm_fpga_push_i32_j_01830_push14_gaussian1_x(FIFODELAY,89)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i32_j_01830_push14_gaussian0_i_llvm_fpga_push_i32_j_01830_push14_gaussian1_x_i_stall = ~ (valid_fanout_reg26_q & i_llvm_fpga_push_i1_cmp41634_push16_gaussian0_inv_pred_x_q);
    assign i_llvm_fpga_push_i32_j_01830_push14_gaussian0_i_llvm_fpga_push_i32_j_01830_push14_gaussian1_x_i_valid = valid_fanout_reg25_q & redist10_i_llvm_fpga_push_i1_cmp41634_push16_gaussian0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i32_j_01830_push14_gaussian0_i_llvm_fpga_push_i32_j_01830_push14_gaussian1_x_i_data = i_llvm_fpga_pop_i32_j_01830_pop14_gaussian0_i_llvm_fpga_pop_i32_j_01830_pop14_gaussian28_mux_x_q;
    assign i_llvm_fpga_push_i32_j_01830_push14_gaussian0_i_llvm_fpga_push_i32_j_01830_push14_gaussian1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_j_01830_push14_gaussian0_i_llvm_fpga_push_i32_j_01830_push14_gaussian1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_j_01830_push14_gaussian0_i_llvm_fpga_push_i32_j_01830_push14_gaussian1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_j_01830_push14_gaussian0_i_llvm_fpga_push_i32_j_01830_push14_gaussian1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_j_01830_push14_gaussian0_i_llvm_fpga_push_i32_j_01830_push14_gaussian1_x (
        .i_valid(i_llvm_fpga_push_i32_j_01830_push14_gaussian0_i_llvm_fpga_push_i32_j_01830_push14_gaussian1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_j_01830_push14_gaussian0_i_llvm_fpga_push_i32_j_01830_push14_gaussian1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i32_j_01830_pop14_gaussian0_i_llvm_fpga_pop_i32_j_01830_pop14_gaussian28_mux_x_q),
        .o_data(i_llvm_fpga_push_i32_j_01830_push14_gaussian0_i_llvm_fpga_push_i32_j_01830_push14_gaussian1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_j_01830_pop14_gaussian0_i_llvm_fpga_pop_i32_j_01830_pop14_gaussian28_mux_x(MUX,57)@4
    assign i_llvm_fpga_pop_i32_j_01830_pop14_gaussian0_i_llvm_fpga_pop_i32_j_01830_pop14_gaussian28_mux_x_s = redist12_i_llvm_fpga_forked_gaussian_b5_forked_gaussian3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i32_j_01830_pop14_gaussian0_i_llvm_fpga_pop_i32_j_01830_pop14_gaussian28_mux_x_s or i_llvm_fpga_push_i32_j_01830_push14_gaussian0_i_llvm_fpga_push_i32_j_01830_push14_gaussian1_x_o_data or redist6_sync_together64_aunroll_x_in_c0_eni8_8_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i32_j_01830_pop14_gaussian0_i_llvm_fpga_pop_i32_j_01830_pop14_gaussian28_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_j_01830_pop14_gaussian0_i_llvm_fpga_pop_i32_j_01830_pop14_gaussian28_mux_x_q = i_llvm_fpga_push_i32_j_01830_push14_gaussian0_i_llvm_fpga_push_i32_j_01830_push14_gaussian1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_j_01830_pop14_gaussian0_i_llvm_fpga_pop_i32_j_01830_pop14_gaussian28_mux_x_q = redist6_sync_together64_aunroll_x_in_c0_eni8_8_tpl_4_q;
            default : i_llvm_fpga_pop_i32_j_01830_pop14_gaussian0_i_llvm_fpga_pop_i32_j_01830_pop14_gaussian28_mux_x_q = 32'b0;
        endcase
    end

    // valid_fanout_reg23(REG,123)@0 + 1
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

    // valid_fanout_reg22(REG,122)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg22_q <= $unsigned(redist7_sync_together64_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i32_fpga_indvars_iv728_push13_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv728_push13_gaussian1_x(FIFODELAY,80)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i32_fpga_indvars_iv728_push13_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv728_push13_gaussian1_x_i_stall = ~ (valid_fanout_reg23_q & i_llvm_fpga_push_i1_cmp41634_push16_gaussian0_inv_pred_x_q);
    assign i_llvm_fpga_push_i32_fpga_indvars_iv728_push13_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv728_push13_gaussian1_x_i_valid = valid_fanout_reg22_q & redist10_i_llvm_fpga_push_i1_cmp41634_push16_gaussian0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i32_fpga_indvars_iv728_push13_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv728_push13_gaussian1_x_i_data = i_llvm_fpga_pop_i32_fpga_indvars_iv728_pop13_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv728_pop13_gaussian26_mux_x_q;
    assign i_llvm_fpga_push_i32_fpga_indvars_iv728_push13_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv728_push13_gaussian1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_fpga_indvars_iv728_push13_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv728_push13_gaussian1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_fpga_indvars_iv728_push13_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv728_push13_gaussian1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_fpga_indvars_iv728_push13_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv728_push13_gaussian1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_fpga_indvars_iv728_push13_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv728_push13_gaussian1_x (
        .i_valid(i_llvm_fpga_push_i32_fpga_indvars_iv728_push13_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv728_push13_gaussian1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_fpga_indvars_iv728_push13_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv728_push13_gaussian1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i32_fpga_indvars_iv728_pop13_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv728_pop13_gaussian26_mux_x_q),
        .o_data(i_llvm_fpga_push_i32_fpga_indvars_iv728_push13_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv728_push13_gaussian1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_fpga_indvars_iv728_pop13_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv728_pop13_gaussian26_mux_x(MUX,54)@4
    assign i_llvm_fpga_pop_i32_fpga_indvars_iv728_pop13_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv728_pop13_gaussian26_mux_x_s = redist12_i_llvm_fpga_forked_gaussian_b5_forked_gaussian3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i32_fpga_indvars_iv728_pop13_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv728_pop13_gaussian26_mux_x_s or i_llvm_fpga_push_i32_fpga_indvars_iv728_push13_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv728_push13_gaussian1_x_o_data or redist5_sync_together64_aunroll_x_in_c0_eni8_7_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i32_fpga_indvars_iv728_pop13_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv728_pop13_gaussian26_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_fpga_indvars_iv728_pop13_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv728_pop13_gaussian26_mux_x_q = i_llvm_fpga_push_i32_fpga_indvars_iv728_push13_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv728_push13_gaussian1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_fpga_indvars_iv728_pop13_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv728_pop13_gaussian26_mux_x_q = redist5_sync_together64_aunroll_x_in_c0_eni8_7_tpl_4_q;
            default : i_llvm_fpga_pop_i32_fpga_indvars_iv728_pop13_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv728_pop13_gaussian26_mux_x_q = 32'b0;
        endcase
    end

    // valid_fanout_reg20(REG,120)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg20_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg19(REG,119)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(redist7_sync_together64_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i32_fpga_indvars_iv926_push12_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv926_push12_gaussian1_x(FIFODELAY,83)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i32_fpga_indvars_iv926_push12_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv926_push12_gaussian1_x_i_stall = ~ (valid_fanout_reg20_q & i_llvm_fpga_push_i1_cmp41634_push16_gaussian0_inv_pred_x_q);
    assign i_llvm_fpga_push_i32_fpga_indvars_iv926_push12_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv926_push12_gaussian1_x_i_valid = valid_fanout_reg19_q & redist10_i_llvm_fpga_push_i1_cmp41634_push16_gaussian0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i32_fpga_indvars_iv926_push12_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv926_push12_gaussian1_x_i_data = i_llvm_fpga_pop_i32_fpga_indvars_iv926_pop12_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv926_pop12_gaussian24_mux_x_q;
    assign i_llvm_fpga_push_i32_fpga_indvars_iv926_push12_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv926_push12_gaussian1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_fpga_indvars_iv926_push12_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv926_push12_gaussian1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_fpga_indvars_iv926_push12_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv926_push12_gaussian1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_fpga_indvars_iv926_push12_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv926_push12_gaussian1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_fpga_indvars_iv926_push12_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv926_push12_gaussian1_x (
        .i_valid(i_llvm_fpga_push_i32_fpga_indvars_iv926_push12_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv926_push12_gaussian1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_fpga_indvars_iv926_push12_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv926_push12_gaussian1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i32_fpga_indvars_iv926_pop12_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv926_pop12_gaussian24_mux_x_q),
        .o_data(i_llvm_fpga_push_i32_fpga_indvars_iv926_push12_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv926_push12_gaussian1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_fpga_indvars_iv926_pop12_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv926_pop12_gaussian24_mux_x(MUX,55)@4
    assign i_llvm_fpga_pop_i32_fpga_indvars_iv926_pop12_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv926_pop12_gaussian24_mux_x_s = redist12_i_llvm_fpga_forked_gaussian_b5_forked_gaussian3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i32_fpga_indvars_iv926_pop12_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv926_pop12_gaussian24_mux_x_s or i_llvm_fpga_push_i32_fpga_indvars_iv926_push12_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv926_push12_gaussian1_x_o_data or redist4_sync_together64_aunroll_x_in_c0_eni8_6_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i32_fpga_indvars_iv926_pop12_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv926_pop12_gaussian24_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_fpga_indvars_iv926_pop12_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv926_pop12_gaussian24_mux_x_q = i_llvm_fpga_push_i32_fpga_indvars_iv926_push12_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv926_push12_gaussian1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_fpga_indvars_iv926_pop12_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv926_pop12_gaussian24_mux_x_q = redist4_sync_together64_aunroll_x_in_c0_eni8_6_tpl_4_q;
            default : i_llvm_fpga_pop_i32_fpga_indvars_iv926_pop12_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv926_pop12_gaussian24_mux_x_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_push_i1_memdep_phi4_pop723_push11_gaussian0_element_extension2_x(BITJOIN,73)@4
    assign i_llvm_fpga_push_i1_memdep_phi4_pop723_push11_gaussian0_element_extension2_x_q = {i_llvm_fpga_push_i1_cmp41634_push16_gaussian0_c_i7_03_x_q, i_llvm_fpga_pop_i1_memdep_phi4_pop723_pop11_gaussian0_i_llvm_fpga_pop_i1_memdep_phi4_pop723_pop11_gaussian22_mux_x_q};

    // valid_fanout_reg17(REG,117)@0 + 1
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

    // valid_fanout_reg16(REG,116)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist7_sync_together64_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi4_pop723_push11_gaussian0_i_llvm_fpga_push_i1_memdep_phi4_pop723_push11_gaussian1_x(FIFODELAY,74)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i1_memdep_phi4_pop723_push11_gaussian0_i_llvm_fpga_push_i1_memdep_phi4_pop723_push11_gaussian1_x_i_stall = ~ (valid_fanout_reg17_q & i_llvm_fpga_push_i1_cmp41634_push16_gaussian0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_memdep_phi4_pop723_push11_gaussian0_i_llvm_fpga_push_i1_memdep_phi4_pop723_push11_gaussian1_x_i_valid = valid_fanout_reg16_q & redist10_i_llvm_fpga_push_i1_cmp41634_push16_gaussian0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i1_memdep_phi4_pop723_push11_gaussian0_i_llvm_fpga_push_i1_memdep_phi4_pop723_push11_gaussian1_x_i_data = i_llvm_fpga_push_i1_memdep_phi4_pop723_push11_gaussian0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_memdep_phi4_pop723_push11_gaussian0_i_llvm_fpga_push_i1_memdep_phi4_pop723_push11_gaussian1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi4_pop723_push11_gaussian0_i_llvm_fpga_push_i1_memdep_phi4_pop723_push11_gaussian1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_memdep_phi4_pop723_push11_gaussian0_i_llvm_fpga_push_i1_memdep_phi4_pop723_push11_gaussian1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi4_pop723_push11_gaussian0_i_llvm_fpga_push_i1_memdep_phi4_pop723_push11_gaussian1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_memdep_phi4_pop723_push11_gaussian0_i_llvm_fpga_push_i1_memdep_phi4_pop723_push11_gaussian1_x (
        .i_valid(i_llvm_fpga_push_i1_memdep_phi4_pop723_push11_gaussian0_i_llvm_fpga_push_i1_memdep_phi4_pop723_push11_gaussian1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_memdep_phi4_pop723_push11_gaussian0_i_llvm_fpga_push_i1_memdep_phi4_pop723_push11_gaussian1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_memdep_phi4_pop723_push11_gaussian0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_memdep_phi4_pop723_push11_gaussian0_i_llvm_fpga_push_i1_memdep_phi4_pop723_push11_gaussian1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_memdep_phi4_pop723_push11_gaussian0_adapt_scalar_trunc4_sel_x(BITSELECT,76)@4
    assign i_llvm_fpga_push_i1_memdep_phi4_pop723_push11_gaussian0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_memdep_phi4_pop723_push11_gaussian0_i_llvm_fpga_push_i1_memdep_phi4_pop723_push11_gaussian1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_memdep_phi4_pop723_pop11_gaussian0_i_llvm_fpga_pop_i1_memdep_phi4_pop723_pop11_gaussian22_mux_x(MUX,52)@4
    assign i_llvm_fpga_pop_i1_memdep_phi4_pop723_pop11_gaussian0_i_llvm_fpga_pop_i1_memdep_phi4_pop723_pop11_gaussian22_mux_x_s = redist12_i_llvm_fpga_forked_gaussian_b5_forked_gaussian3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i1_memdep_phi4_pop723_pop11_gaussian0_i_llvm_fpga_pop_i1_memdep_phi4_pop723_pop11_gaussian22_mux_x_s or i_llvm_fpga_push_i1_memdep_phi4_pop723_push11_gaussian0_adapt_scalar_trunc4_sel_x_b or redist3_sync_together64_aunroll_x_in_c0_eni8_5_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i1_memdep_phi4_pop723_pop11_gaussian0_i_llvm_fpga_pop_i1_memdep_phi4_pop723_pop11_gaussian22_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_memdep_phi4_pop723_pop11_gaussian0_i_llvm_fpga_pop_i1_memdep_phi4_pop723_pop11_gaussian22_mux_x_q = i_llvm_fpga_push_i1_memdep_phi4_pop723_push11_gaussian0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_memdep_phi4_pop723_pop11_gaussian0_i_llvm_fpga_pop_i1_memdep_phi4_pop723_pop11_gaussian22_mux_x_q = redist3_sync_together64_aunroll_x_in_c0_eni8_5_tpl_4_q;
            default : i_llvm_fpga_pop_i1_memdep_phi4_pop723_pop11_gaussian0_i_llvm_fpga_pop_i1_memdep_phi4_pop723_pop11_gaussian22_mux_x_q = 1'b0;
        endcase
    end

    // c_i32_158(CONSTANT,28)
    assign c_i32_158_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc24_gaussian20(ADD,34)@4
    assign i_inc24_gaussian20_a = {1'b0, i_llvm_fpga_pop_i32_i_017_pop9_gaussian0_i_llvm_fpga_pop_i32_i_017_pop9_gaussian19_mux_x_q};
    assign i_inc24_gaussian20_b = {1'b0, c_i32_158_q};
    assign i_inc24_gaussian20_o = $unsigned(i_inc24_gaussian20_a) + $unsigned(i_inc24_gaussian20_b);
    assign i_inc24_gaussian20_q = i_inc24_gaussian20_o[32:0];

    // bgTrunc_i_inc24_gaussian20_sel_x(BITSELECT,45)@4
    assign bgTrunc_i_inc24_gaussian20_sel_x_b = i_inc24_gaussian20_q[31:0];

    // valid_fanout_reg14(REG,114)@0 + 1
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

    // valid_fanout_reg13(REG,113)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist7_sync_together64_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i32_i_017_push9_gaussian0_i_llvm_fpga_push_i32_i_017_push9_gaussian1_x(FIFODELAY,86)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i32_i_017_push9_gaussian0_i_llvm_fpga_push_i32_i_017_push9_gaussian1_x_i_stall = ~ (valid_fanout_reg14_q & i_llvm_fpga_push_i1_cmp41634_push16_gaussian0_inv_pred_x_q);
    assign i_llvm_fpga_push_i32_i_017_push9_gaussian0_i_llvm_fpga_push_i32_i_017_push9_gaussian1_x_i_valid = valid_fanout_reg13_q & redist10_i_llvm_fpga_push_i1_cmp41634_push16_gaussian0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i32_i_017_push9_gaussian0_i_llvm_fpga_push_i32_i_017_push9_gaussian1_x_i_data = bgTrunc_i_inc24_gaussian20_sel_x_b;
    assign i_llvm_fpga_push_i32_i_017_push9_gaussian0_i_llvm_fpga_push_i32_i_017_push9_gaussian1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_i_017_push9_gaussian0_i_llvm_fpga_push_i32_i_017_push9_gaussian1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_i_017_push9_gaussian0_i_llvm_fpga_push_i32_i_017_push9_gaussian1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_i_017_push9_gaussian0_i_llvm_fpga_push_i32_i_017_push9_gaussian1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_i_017_push9_gaussian0_i_llvm_fpga_push_i32_i_017_push9_gaussian1_x (
        .i_valid(i_llvm_fpga_push_i32_i_017_push9_gaussian0_i_llvm_fpga_push_i32_i_017_push9_gaussian1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_i_017_push9_gaussian0_i_llvm_fpga_push_i32_i_017_push9_gaussian1_x_i_stall_bitsignaltemp),
        .i_data(bgTrunc_i_inc24_gaussian20_sel_x_b),
        .o_data(i_llvm_fpga_push_i32_i_017_push9_gaussian0_i_llvm_fpga_push_i32_i_017_push9_gaussian1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_017_pop9_gaussian0_i_llvm_fpga_pop_i32_i_017_pop9_gaussian19_mux_x(MUX,56)@4
    assign i_llvm_fpga_pop_i32_i_017_pop9_gaussian0_i_llvm_fpga_pop_i32_i_017_pop9_gaussian19_mux_x_s = redist12_i_llvm_fpga_forked_gaussian_b5_forked_gaussian3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i32_i_017_pop9_gaussian0_i_llvm_fpga_pop_i32_i_017_pop9_gaussian19_mux_x_s or i_llvm_fpga_push_i32_i_017_push9_gaussian0_i_llvm_fpga_push_i32_i_017_push9_gaussian1_x_o_data or redist2_sync_together64_aunroll_x_in_c0_eni8_4_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i32_i_017_pop9_gaussian0_i_llvm_fpga_pop_i32_i_017_pop9_gaussian19_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_i_017_pop9_gaussian0_i_llvm_fpga_pop_i32_i_017_pop9_gaussian19_mux_x_q = i_llvm_fpga_push_i32_i_017_push9_gaussian0_i_llvm_fpga_push_i32_i_017_push9_gaussian1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_i_017_pop9_gaussian0_i_llvm_fpga_pop_i32_i_017_pop9_gaussian19_mux_x_q = redist2_sync_together64_aunroll_x_in_c0_eni8_4_tpl_4_q;
            default : i_llvm_fpga_pop_i32_i_017_pop9_gaussian0_i_llvm_fpga_pop_i32_i_017_pop9_gaussian19_mux_x_q = 32'b0;
        endcase
    end

    // i_notcmp14_gaussian15(LOGICAL,39)@4
    assign i_notcmp14_gaussian15_q = i_unnamed_gaussian13_q ^ VCC_q;

    // sync_out_aunroll_x(GPOUT,98)@4
    assign out_c0_exi17_0_tpl = GND_q;
    assign out_c0_exi17_1_tpl = i_llvm_fpga_pop_i1_cmp41634_pop16_gaussian0_i_llvm_fpga_pop_i1_cmp41634_pop16_gaussian12_mux_x_q;
    assign out_c0_exi17_2_tpl = i_unnamed_gaussian13_q;
    assign out_c0_exi17_3_tpl = i_notcmp14_gaussian15_q;
    assign out_c0_exi17_4_tpl = i_llvm_fpga_pop_i32_i_017_pop9_gaussian0_i_llvm_fpga_pop_i32_i_017_pop9_gaussian19_mux_x_q;
    assign out_c0_exi17_5_tpl = i_llvm_fpga_pop_i1_memdep_phi4_pop723_pop11_gaussian0_i_llvm_fpga_pop_i1_memdep_phi4_pop723_pop11_gaussian22_mux_x_q;
    assign out_c0_exi17_6_tpl = i_llvm_fpga_pop_i32_fpga_indvars_iv926_pop12_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv926_pop12_gaussian24_mux_x_q;
    assign out_c0_exi17_7_tpl = i_llvm_fpga_pop_i32_fpga_indvars_iv728_pop13_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv728_pop13_gaussian26_mux_x_q;
    assign out_c0_exi17_8_tpl = i_llvm_fpga_pop_i32_j_01830_pop14_gaussian0_i_llvm_fpga_pop_i32_j_01830_pop14_gaussian28_mux_x_q;
    assign out_c0_exi17_9_tpl = i_llvm_fpga_pop_i32_add32_pop15_gaussian0_i_llvm_fpga_pop_i32_add32_pop15_gaussian30_mux_x_q;
    assign out_c0_exi17_10_tpl = redist12_i_llvm_fpga_forked_gaussian_b5_forked_gaussian3_out_buffer_out_4_q;
    assign out_c0_exi17_11_tpl = redist4_sync_together64_aunroll_x_in_c0_eni8_6_tpl_4_q;
    assign out_c0_exi17_12_tpl = redist5_sync_together64_aunroll_x_in_c0_eni8_7_tpl_4_q;
    assign out_c0_exi17_13_tpl = redist6_sync_together64_aunroll_x_in_c0_eni8_8_tpl_4_q;
    assign out_c0_exi17_14_tpl = redist3_sync_together64_aunroll_x_in_c0_eni8_5_tpl_4_q;
    assign out_c0_exi17_15_tpl = redist0_sync_together64_aunroll_x_in_c0_eni8_1_tpl_4_q;
    assign out_c0_exi17_16_tpl = redist2_sync_together64_aunroll_x_in_c0_eni8_4_tpl_4_q;
    assign out_c0_exi17_17_tpl = redist1_sync_together64_aunroll_x_in_c0_eni8_3_tpl_4_q;
    assign out_gaussian_B5_current_iter_isspec = i_gaussian_b5_current_iter_isspec_gaussian5_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_profile_loop_o_valid = redist9_sync_together64_aunroll_x_in_i_valid_4_q;

endmodule
