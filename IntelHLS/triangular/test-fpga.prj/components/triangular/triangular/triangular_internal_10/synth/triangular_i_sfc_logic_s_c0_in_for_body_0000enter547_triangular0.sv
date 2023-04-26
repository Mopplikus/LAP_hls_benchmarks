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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body_triangulars_c0_enter547_triangular0
// Created for function/kernel triangular
// SystemVerilog created on Tue Apr 25 22:47:04 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module triangular_i_sfc_logic_s_c0_in_for_body_0000enter547_triangular0 (
    input wire [31:0] in_intel_reserved_ffwd_0_0,
    input wire [0:0] in_intel_reserved_ffwd_1_0,
    input wire [31:0] in_intel_reserved_ffwd_2_0,
    input wire [32:0] in_intel_reserved_ffwd_3_0,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_pipeline_dummy_out,
    output wire [0:0] out_pipeline_forked_out,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_c0_exi11_0_tpl,
    output wire [32:0] out_c0_exi11_1_tpl,
    output wire [31:0] out_c0_exi11_2_tpl,
    output wire [31:0] out_c0_exi11_3_tpl,
    output wire [0:0] out_c0_exi11_4_tpl,
    output wire [0:0] out_c0_exi11_5_tpl,
    output wire [0:0] out_c0_exi11_6_tpl,
    output wire [31:0] out_c0_exi11_7_tpl,
    output wire [31:0] out_c0_exi11_8_tpl,
    output wire [0:0] out_c0_exi11_9_tpl,
    output wire [31:0] out_c0_exi11_10_tpl,
    output wire [31:0] out_c0_exi11_11_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_triangular_B4_current_iter_isspec,
    input wire [0:0] in_buffer_in,
    input wire [0:0] in_c0_eni3_0_tpl,
    input wire [0:0] in_c0_eni3_1_tpl,
    input wire [31:0] in_c0_eni3_2_tpl,
    input wire [31:0] in_c0_eni3_3_tpl,
    input wire [0:0] in_dummy_in,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_070_q;
    wire [31:0] c_i32_172_q;
    wire [31:0] c_i32_273_q;
    wire [32:0] c_i33_171_q;
    wire [32:0] c_i33_undef68_q;
    wire [33:0] i_cmp513_triangular26_a;
    wire [33:0] i_cmp513_triangular26_b;
    logic [33:0] i_cmp513_triangular26_o;
    wire [0:0] i_cmp513_triangular26_c;
    wire [0:0] i_fpga_indvars_iv9_replace_phi_triangular11_s;
    reg [32:0] i_fpga_indvars_iv9_replace_phi_triangular11_q;
    wire [33:0] i_fpga_indvars_iv_next10_triangular37_a;
    wire [33:0] i_fpga_indvars_iv_next10_triangular37_b;
    logic [33:0] i_fpga_indvars_iv_next10_triangular37_o;
    wire [33:0] i_fpga_indvars_iv_next10_triangular37_q;
    wire [32:0] i_fpga_indvars_iv_next_triangular39_a;
    wire [32:0] i_fpga_indvars_iv_next_triangular39_b;
    logic [32:0] i_fpga_indvars_iv_next_triangular39_o;
    wire [32:0] i_fpga_indvars_iv_next_triangular39_q;
    wire [0:0] i_fpga_indvars_iv_replace_phi_triangular14_s;
    reg [31:0] i_fpga_indvars_iv_replace_phi_triangular14_q;
    wire [0:0] i_i_018_in_replace_phi_triangular17_s;
    reg [31:0] i_i_018_in_replace_phi_triangular17_q;
    wire [32:0] i_i_018_triangular24_a;
    wire [32:0] i_i_018_triangular24_b;
    logic [32:0] i_i_018_triangular24_o;
    wire [32:0] i_i_018_triangular24_q;
    wire [0:0] i_llvm_fpga_dummy_thread_triangular_b4_dummy_triangular2_out_dummy_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp1614_triangular28_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp1615_triangular32_out_dest_data_out_1_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_n2312_triangular15_out_dest_data_out_0_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_unnamed_triangular11_triangular12_out_dest_data_out_2_0;
    wire [32:0] i_llvm_fpga_ffwd_dest_i33_unnamed_triangular10_triangular9_out_dest_data_out_3_0;
    wire [0:0] i_llvm_fpga_forked_triangular_b4_forked_triangular3_out_buffer_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going18_triangular6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going18_triangular6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going18_triangular6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going18_triangular6_out_pipeline_dummy_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going18_triangular6_out_pipeline_forked_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going18_triangular6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond19_triangular36_out_feedback_out_5;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond19_triangular36_out_feedback_valid_out_5;
    wire [0:0] i_notcmp17_triangular35_q;
    wire [0:0] i_smin_triangular20_s;
    reg [31:0] i_smin_triangular20_q;
    wire [32:0] i_sub3_triangular25_a;
    wire [32:0] i_sub3_triangular25_b;
    logic [32:0] i_sub3_triangular25_o;
    wire [32:0] i_sub3_triangular25_q;
    wire [0:0] i_triangular_b4_current_iter_isspec_triangular5_q;
    wire [0:0] i_triangular_b4_next_iter_isreal_triangular7_q;
    wire [32:0] i_unnamed_triangular21_a;
    wire [32:0] i_unnamed_triangular21_b;
    logic [32:0] i_unnamed_triangular21_o;
    wire [32:0] i_unnamed_triangular21_q;
    wire [32:0] i_unnamed_triangular22_vt_join_q;
    wire [31:0] i_unnamed_triangular22_vt_select_31_b;
    wire [33:0] i_unnamed_triangular23_a;
    wire [33:0] i_unnamed_triangular23_b;
    logic [33:0] i_unnamed_triangular23_o;
    wire [33:0] i_unnamed_triangular23_q;
    wire [0:0] i_unnamed_triangular29_q;
    wire [0:0] i_unnamed_triangular33_q;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next10_triangular37_sel_x_b;
    wire [31:0] bgTrunc_i_fpga_indvars_iv_next_triangular39_sel_x_b;
    wire [31:0] bgTrunc_i_i_018_triangular24_sel_x_b;
    wire [31:0] bgTrunc_i_sub3_triangular25_sel_x_b;
    wire [31:0] bgTrunc_i_unnamed_triangular21_sel_x_b;
    wire [32:0] bgTrunc_i_unnamed_triangular23_sel_x_b;
    wire [31:0] c_i32_172_recast_x_q;
    wire [0:0] i_llvm_fpga_pop_coalesce_i1_triangular_b4_current_iter_isreal_triangular0_i_llvm_fpga_pop_coalesce_i1_triangular_b4_current_iter_isreal_triangular4_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_coalesce_i1_triangular_b4_current_iter_isreal_triangular0_i_llvm_fpga_pop_coalesce_i1_triangular_b4_current_iter_isreal_triangular4_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_fpga_indvars_iv_pop11_triangular0_i_llvm_fpga_pop_i32_fpga_indvars_iv_pop11_triangular13_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_fpga_indvars_iv_pop11_triangular0_i_llvm_fpga_pop_i32_fpga_indvars_iv_pop11_triangular13_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_i_018_in_pop12_triangular0_i_llvm_fpga_pop_i32_i_018_in_pop12_triangular16_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_i_018_in_pop12_triangular0_i_llvm_fpga_pop_i32_i_018_in_pop12_triangular16_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_lim_ext25_pop14_triangular0_i_llvm_fpga_pop_i32_lim_ext25_pop14_triangular41_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_lim_ext25_pop14_triangular0_i_llvm_fpga_pop_i32_lim_ext25_pop14_triangular41_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_reorder_limiter_enter27_pop15_triangular0_i_llvm_fpga_pop_i32_reorder_limiter_enter27_pop15_triangular43_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_reorder_limiter_enter27_pop15_triangular0_i_llvm_fpga_pop_i32_reorder_limiter_enter27_pop15_triangular43_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv9_pop10_triangular0_i_llvm_fpga_pop_i33_fpga_indvars_iv9_pop10_triangular10_mux_x_s;
    reg [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv9_pop10_triangular0_i_llvm_fpga_pop_i33_fpga_indvars_iv9_pop10_triangular10_mux_x_q;
    wire [6:0] i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular0_c_i7_03_x_q;
    wire [7:0] i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular0_i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular1_x_i_valid;
    wire i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular0_i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular0_i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular1_x_i_stall;
    wire i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular0_i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular0_i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular0_i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular0_inv_pred_x_q;
    wire [0:0] i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular0_adapt_scalar_trunc4_sel_x_b;
    wire [0:0] i_llvm_fpga_push_i32_fpga_indvars_iv_push11_triangular0_i_llvm_fpga_push_i32_fpga_indvars_iv_push11_triangular1_x_i_valid;
    wire i_llvm_fpga_push_i32_fpga_indvars_iv_push11_triangular0_i_llvm_fpga_push_i32_fpga_indvars_iv_push11_triangular1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_fpga_indvars_iv_push11_triangular0_i_llvm_fpga_push_i32_fpga_indvars_iv_push11_triangular1_x_i_stall;
    wire i_llvm_fpga_push_i32_fpga_indvars_iv_push11_triangular0_i_llvm_fpga_push_i32_fpga_indvars_iv_push11_triangular1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_fpga_indvars_iv_push11_triangular0_i_llvm_fpga_push_i32_fpga_indvars_iv_push11_triangular1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_fpga_indvars_iv_push11_triangular0_i_llvm_fpga_push_i32_fpga_indvars_iv_push11_triangular1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i32_i_018_in_push12_triangular0_i_llvm_fpga_push_i32_i_018_in_push12_triangular1_x_i_valid;
    wire i_llvm_fpga_push_i32_i_018_in_push12_triangular0_i_llvm_fpga_push_i32_i_018_in_push12_triangular1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_i_018_in_push12_triangular0_i_llvm_fpga_push_i32_i_018_in_push12_triangular1_x_i_stall;
    wire i_llvm_fpga_push_i32_i_018_in_push12_triangular0_i_llvm_fpga_push_i32_i_018_in_push12_triangular1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_i_018_in_push12_triangular0_i_llvm_fpga_push_i32_i_018_in_push12_triangular1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_i_018_in_push12_triangular0_i_llvm_fpga_push_i32_i_018_in_push12_triangular1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i32_lim_ext25_push14_triangular0_i_llvm_fpga_push_i32_lim_ext25_push14_triangular1_x_i_valid;
    wire i_llvm_fpga_push_i32_lim_ext25_push14_triangular0_i_llvm_fpga_push_i32_lim_ext25_push14_triangular1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_lim_ext25_push14_triangular0_i_llvm_fpga_push_i32_lim_ext25_push14_triangular1_x_i_stall;
    wire i_llvm_fpga_push_i32_lim_ext25_push14_triangular0_i_llvm_fpga_push_i32_lim_ext25_push14_triangular1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_lim_ext25_push14_triangular0_i_llvm_fpga_push_i32_lim_ext25_push14_triangular1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_lim_ext25_push14_triangular0_i_llvm_fpga_push_i32_lim_ext25_push14_triangular1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i32_reorder_limiter_enter27_push15_triangular0_i_llvm_fpga_push_i32_reorder_limiter_enter27_push15_triangular1_x_i_valid;
    wire i_llvm_fpga_push_i32_reorder_limiter_enter27_push15_triangular0_i_llvm_fpga_push_i32_reorder_limiter_enter27_push15_triangular1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_reorder_limiter_enter27_push15_triangular0_i_llvm_fpga_push_i32_reorder_limiter_enter27_push15_triangular1_x_i_stall;
    wire i_llvm_fpga_push_i32_reorder_limiter_enter27_push15_triangular0_i_llvm_fpga_push_i32_reorder_limiter_enter27_push15_triangular1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_reorder_limiter_enter27_push15_triangular0_i_llvm_fpga_push_i32_reorder_limiter_enter27_push15_triangular1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_reorder_limiter_enter27_push15_triangular0_i_llvm_fpga_push_i32_reorder_limiter_enter27_push15_triangular1_x_o_data;
    wire [30:0] i_llvm_fpga_push_i33_fpga_indvars_iv9_push10_triangular0_c_i31_03_x_q;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv9_push10_triangular0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv9_push10_triangular0_i_llvm_fpga_push_i33_fpga_indvars_iv9_push10_triangular1_x_i_valid;
    wire i_llvm_fpga_push_i33_fpga_indvars_iv9_push10_triangular0_i_llvm_fpga_push_i33_fpga_indvars_iv9_push10_triangular1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv9_push10_triangular0_i_llvm_fpga_push_i33_fpga_indvars_iv9_push10_triangular1_x_i_stall;
    wire i_llvm_fpga_push_i33_fpga_indvars_iv9_push10_triangular0_i_llvm_fpga_push_i33_fpga_indvars_iv9_push10_triangular1_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv9_push10_triangular0_i_llvm_fpga_push_i33_fpga_indvars_iv9_push10_triangular1_x_i_data;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv9_push10_triangular0_i_llvm_fpga_push_i33_fpga_indvars_iv9_push10_triangular1_x_o_data;
    wire [32:0] i_llvm_fpga_push_i33_fpga_indvars_iv9_push10_triangular0_adapt_scalar_trunc4_sel_x_b;
    wire [32:0] i_unnamed_triangular22_sel_x_b;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg5_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg7_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg9_q;
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
    wire [0:0] i_exitcond11_triangular30_cmp_nsign_q;
    wire [0:0] i_unnamed_triangular18_cmp_sign_q;
    reg [0:0] redist2_sync_together83_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist2_sync_together83_aunroll_x_in_i_valid_2_delay_0;
    reg [0:0] redist3_sync_together83_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist4_sync_together83_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist5_sync_together83_aunroll_x_in_i_valid_5_q;
    reg [0:0] redist6_sync_together83_aunroll_x_in_i_valid_6_q;
    reg [0:0] redist7_i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular0_inv_pred_x_q_2_q;
    reg [0:0] redist7_i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular0_inv_pred_x_q_2_delay_0;
    reg [0:0] redist8_i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular0_inv_pred_x_q_3_q;
    reg [0:0] redist9_i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular0_inv_pred_x_q_4_q;
    reg [31:0] redist10_bgTrunc_i_sub3_triangular25_sel_x_b_1_q;
    reg [31:0] redist11_bgTrunc_i_sub3_triangular25_sel_x_b_2_q;
    reg [31:0] redist12_bgTrunc_i_i_018_triangular24_sel_x_b_1_q;
    reg [31:0] redist13_bgTrunc_i_i_018_triangular24_sel_x_b_2_q;
    reg [0:0] redist14_i_unnamed_triangular33_q_2_q;
    reg [0:0] redist14_i_unnamed_triangular33_q_2_delay_0;
    reg [31:0] redist15_i_unnamed_triangular22_vt_select_31_b_1_q;
    reg [0:0] redist16_i_llvm_fpga_pipeline_keep_going18_triangular6_out_data_out_2_q;
    reg [0:0] redist16_i_llvm_fpga_pipeline_keep_going18_triangular6_out_data_out_2_delay_0;
    reg [0:0] redist17_i_llvm_fpga_forked_triangular_b4_forked_triangular3_out_buffer_out_4_q;
    reg [0:0] redist17_i_llvm_fpga_forked_triangular_b4_forked_triangular3_out_buffer_out_4_delay_0;
    reg [0:0] redist17_i_llvm_fpga_forked_triangular_b4_forked_triangular3_out_buffer_out_4_delay_1;
    reg [0:0] redist17_i_llvm_fpga_forked_triangular_b4_forked_triangular3_out_buffer_out_4_delay_2;
    reg [0:0] redist18_i_llvm_fpga_forked_triangular_b4_forked_triangular3_out_buffer_out_6_q;
    reg [0:0] redist18_i_llvm_fpga_forked_triangular_b4_forked_triangular3_out_buffer_out_6_delay_0;
    reg [0:0] redist19_i_llvm_fpga_dummy_thread_triangular_b4_dummy_triangular2_out_dummy_out_4_q;
    reg [0:0] redist19_i_llvm_fpga_dummy_thread_triangular_b4_dummy_triangular2_out_dummy_out_4_delay_0;
    reg [0:0] redist19_i_llvm_fpga_dummy_thread_triangular_b4_dummy_triangular2_out_dummy_out_4_delay_1;
    reg [0:0] redist19_i_llvm_fpga_dummy_thread_triangular_b4_dummy_triangular2_out_dummy_out_4_delay_2;
    reg [31:0] redist20_i_fpga_indvars_iv_replace_phi_triangular14_q_1_q;
    reg [31:0] redist0_sync_together83_aunroll_x_in_c0_eni3_2_tpl_6_inputreg0_q;
    reg [31:0] redist0_sync_together83_aunroll_x_in_c0_eni3_2_tpl_6_outputreg0_q;
    wire redist0_sync_together83_aunroll_x_in_c0_eni3_2_tpl_6_mem_reset0;
    wire [31:0] redist0_sync_together83_aunroll_x_in_c0_eni3_2_tpl_6_mem_ia;
    wire [1:0] redist0_sync_together83_aunroll_x_in_c0_eni3_2_tpl_6_mem_aa;
    wire [1:0] redist0_sync_together83_aunroll_x_in_c0_eni3_2_tpl_6_mem_ab;
    wire [31:0] redist0_sync_together83_aunroll_x_in_c0_eni3_2_tpl_6_mem_iq;
    wire [31:0] redist0_sync_together83_aunroll_x_in_c0_eni3_2_tpl_6_mem_q;
    wire [1:0] redist0_sync_together83_aunroll_x_in_c0_eni3_2_tpl_6_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [1:0] redist0_sync_together83_aunroll_x_in_c0_eni3_2_tpl_6_wraddr_i = 2'b11;
    wire [1:0] redist0_sync_together83_aunroll_x_in_c0_eni3_2_tpl_6_offset_q;
    wire [2:0] redist0_sync_together83_aunroll_x_in_c0_eni3_2_tpl_6_rdcnt_a;
    wire [2:0] redist0_sync_together83_aunroll_x_in_c0_eni3_2_tpl_6_rdcnt_b;
    logic [2:0] redist0_sync_together83_aunroll_x_in_c0_eni3_2_tpl_6_rdcnt_o;
    wire [2:0] redist0_sync_together83_aunroll_x_in_c0_eni3_2_tpl_6_rdcnt_q;
    reg [31:0] redist1_sync_together83_aunroll_x_in_c0_eni3_3_tpl_6_inputreg0_q;
    reg [31:0] redist1_sync_together83_aunroll_x_in_c0_eni3_3_tpl_6_outputreg0_q;
    wire redist1_sync_together83_aunroll_x_in_c0_eni3_3_tpl_6_mem_reset0;
    wire [31:0] redist1_sync_together83_aunroll_x_in_c0_eni3_3_tpl_6_mem_ia;
    wire [1:0] redist1_sync_together83_aunroll_x_in_c0_eni3_3_tpl_6_mem_aa;
    wire [1:0] redist1_sync_together83_aunroll_x_in_c0_eni3_3_tpl_6_mem_ab;
    wire [31:0] redist1_sync_together83_aunroll_x_in_c0_eni3_3_tpl_6_mem_iq;
    wire [31:0] redist1_sync_together83_aunroll_x_in_c0_eni3_3_tpl_6_mem_q;
    wire [1:0] redist1_sync_together83_aunroll_x_in_c0_eni3_3_tpl_6_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [1:0] redist1_sync_together83_aunroll_x_in_c0_eni3_3_tpl_6_wraddr_i = 2'b11;
    wire [2:0] redist1_sync_together83_aunroll_x_in_c0_eni3_3_tpl_6_rdcnt_a;
    wire [2:0] redist1_sync_together83_aunroll_x_in_c0_eni3_3_tpl_6_rdcnt_b;
    logic [2:0] redist1_sync_together83_aunroll_x_in_c0_eni3_3_tpl_6_rdcnt_o;
    wire [2:0] redist1_sync_together83_aunroll_x_in_c0_eni3_3_tpl_6_rdcnt_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist2_sync_together83_aunroll_x_in_i_valid_2(DELAY,163)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist2_sync_together83_aunroll_x_in_i_valid_2_delay_0 <= '0;
        end
        else
        begin
            redist2_sync_together83_aunroll_x_in_i_valid_2_delay_0 <= $unsigned(in_i_valid);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_sync_together83_aunroll_x_in_i_valid_2_q <= redist2_sync_together83_aunroll_x_in_i_valid_2_delay_0;
        end
    end

    // redist3_sync_together83_aunroll_x_in_i_valid_3(DELAY,164)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist3_sync_together83_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist3_sync_together83_aunroll_x_in_i_valid_3_q <= $unsigned(redist2_sync_together83_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg2(REG,124)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist3_sync_together83_aunroll_x_in_i_valid_3_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // valid_fanout_reg15(REG,137)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist3_sync_together83_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg5(REG,127)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist3_sync_together83_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i33_unnamed_triangular10_triangular9(BLACKBOX,50)@4
    triangular_i_llvm_fpga_ffwd_dest_i33_unnamed_10_triangular0 thei_llvm_fpga_ffwd_dest_i33_unnamed_triangular10_triangular9 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_i33_unnamed_triangular10_triangular9_out_dest_data_out_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef68(CONSTANT,36)
    assign c_i33_undef68_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_push_i33_fpga_indvars_iv9_push10_triangular0_c_i31_03_x(CONSTANT,114)
    assign i_llvm_fpga_push_i33_fpga_indvars_iv9_push10_triangular0_c_i31_03_x_q = $unsigned(31'b0000000000000000000000000000000);

    // c_i33_171(CONSTANT,35)
    assign c_i33_171_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next10_triangular37(ADD,40)@4
    assign i_fpga_indvars_iv_next10_triangular37_a = {1'b0, i_fpga_indvars_iv9_replace_phi_triangular11_q};
    assign i_fpga_indvars_iv_next10_triangular37_b = {1'b0, c_i33_171_q};
    assign i_fpga_indvars_iv_next10_triangular37_o = $unsigned(i_fpga_indvars_iv_next10_triangular37_a) + $unsigned(i_fpga_indvars_iv_next10_triangular37_b);
    assign i_fpga_indvars_iv_next10_triangular37_q = i_fpga_indvars_iv_next10_triangular37_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next10_triangular37_sel_x(BITSELECT,77)@4
    assign bgTrunc_i_fpga_indvars_iv_next10_triangular37_sel_x_b = i_fpga_indvars_iv_next10_triangular37_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv9_push10_triangular0_element_extension2_x(BITJOIN,115)@4
    assign i_llvm_fpga_push_i33_fpga_indvars_iv9_push10_triangular0_element_extension2_x_q = {i_llvm_fpga_push_i33_fpga_indvars_iv9_push10_triangular0_c_i31_03_x_q, bgTrunc_i_fpga_indvars_iv_next10_triangular37_sel_x_b};

    // i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular0_inv_pred_x(LOGICAL,99)@1
    assign i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular0_inv_pred_x_q = ~ (GND_q);

    // valid_fanout_reg17(REG,139)@0 + 1
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

    // redist7_i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular0_inv_pred_x_q_2(DELAY,168)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular0_inv_pred_x_q_2_delay_0 <= $unsigned(i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular0_inv_pred_x_q);
            redist7_i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular0_inv_pred_x_q_2_q <= redist7_i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular0_inv_pred_x_q_2_delay_0;
        end
    end

    // valid_fanout_reg16(REG,138)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist2_sync_together83_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i33_fpga_indvars_iv9_push10_triangular0_i_llvm_fpga_push_i33_fpga_indvars_iv9_push10_triangular1_x(FIFODELAY,116)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i33_fpga_indvars_iv9_push10_triangular0_i_llvm_fpga_push_i33_fpga_indvars_iv9_push10_triangular1_x_i_stall = ~ (valid_fanout_reg17_q & i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular0_inv_pred_x_q);
    assign i_llvm_fpga_push_i33_fpga_indvars_iv9_push10_triangular0_i_llvm_fpga_push_i33_fpga_indvars_iv9_push10_triangular1_x_i_valid = valid_fanout_reg16_q & redist7_i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i33_fpga_indvars_iv9_push10_triangular0_i_llvm_fpga_push_i33_fpga_indvars_iv9_push10_triangular1_x_i_data = i_llvm_fpga_push_i33_fpga_indvars_iv9_push10_triangular0_element_extension2_x_q;
    assign i_llvm_fpga_push_i33_fpga_indvars_iv9_push10_triangular0_i_llvm_fpga_push_i33_fpga_indvars_iv9_push10_triangular1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i33_fpga_indvars_iv9_push10_triangular0_i_llvm_fpga_push_i33_fpga_indvars_iv9_push10_triangular1_x_i_valid[0];
    assign i_llvm_fpga_push_i33_fpga_indvars_iv9_push10_triangular0_i_llvm_fpga_push_i33_fpga_indvars_iv9_push10_triangular1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i33_fpga_indvars_iv9_push10_triangular0_i_llvm_fpga_push_i33_fpga_indvars_iv9_push10_triangular1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i33_fpga_indvars_iv9_push10_triangular0_i_llvm_fpga_push_i33_fpga_indvars_iv9_push10_triangular1_x (
        .i_valid(i_llvm_fpga_push_i33_fpga_indvars_iv9_push10_triangular0_i_llvm_fpga_push_i33_fpga_indvars_iv9_push10_triangular1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i33_fpga_indvars_iv9_push10_triangular0_i_llvm_fpga_push_i33_fpga_indvars_iv9_push10_triangular1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i33_fpga_indvars_iv9_push10_triangular0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i33_fpga_indvars_iv9_push10_triangular0_i_llvm_fpga_push_i33_fpga_indvars_iv9_push10_triangular1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i33_fpga_indvars_iv9_push10_triangular0_adapt_scalar_trunc4_sel_x(BITSELECT,118)@4
    assign i_llvm_fpga_push_i33_fpga_indvars_iv9_push10_triangular0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i33_fpga_indvars_iv9_push10_triangular0_i_llvm_fpga_push_i33_fpga_indvars_iv9_push10_triangular1_x_o_data[32:0];

    // i_llvm_fpga_pop_i33_fpga_indvars_iv9_pop10_triangular0_i_llvm_fpga_pop_i33_fpga_indvars_iv9_pop10_triangular10_mux_x(MUX,94)@4
    assign i_llvm_fpga_pop_i33_fpga_indvars_iv9_pop10_triangular0_i_llvm_fpga_pop_i33_fpga_indvars_iv9_pop10_triangular10_mux_x_s = redist17_i_llvm_fpga_forked_triangular_b4_forked_triangular3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i33_fpga_indvars_iv9_pop10_triangular0_i_llvm_fpga_pop_i33_fpga_indvars_iv9_pop10_triangular10_mux_x_s or i_llvm_fpga_push_i33_fpga_indvars_iv9_push10_triangular0_adapt_scalar_trunc4_sel_x_b or c_i33_undef68_q)
    begin
        unique case (i_llvm_fpga_pop_i33_fpga_indvars_iv9_pop10_triangular0_i_llvm_fpga_pop_i33_fpga_indvars_iv9_pop10_triangular10_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i33_fpga_indvars_iv9_pop10_triangular0_i_llvm_fpga_pop_i33_fpga_indvars_iv9_pop10_triangular10_mux_x_q = i_llvm_fpga_push_i33_fpga_indvars_iv9_push10_triangular0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i33_fpga_indvars_iv9_pop10_triangular0_i_llvm_fpga_pop_i33_fpga_indvars_iv9_pop10_triangular10_mux_x_q = c_i33_undef68_q;
            default : i_llvm_fpga_pop_i33_fpga_indvars_iv9_pop10_triangular0_i_llvm_fpga_pop_i33_fpga_indvars_iv9_pop10_triangular10_mux_x_q = 33'b0;
        endcase
    end

    // i_fpga_indvars_iv9_replace_phi_triangular11(MUX,39)@4
    assign i_fpga_indvars_iv9_replace_phi_triangular11_s = redist17_i_llvm_fpga_forked_triangular_b4_forked_triangular3_out_buffer_out_4_q;
    always @(i_fpga_indvars_iv9_replace_phi_triangular11_s or i_llvm_fpga_pop_i33_fpga_indvars_iv9_pop10_triangular0_i_llvm_fpga_pop_i33_fpga_indvars_iv9_pop10_triangular10_mux_x_q or i_llvm_fpga_ffwd_dest_i33_unnamed_triangular10_triangular9_out_dest_data_out_3_0)
    begin
        unique case (i_fpga_indvars_iv9_replace_phi_triangular11_s)
            1'b0 : i_fpga_indvars_iv9_replace_phi_triangular11_q = i_llvm_fpga_pop_i33_fpga_indvars_iv9_pop10_triangular0_i_llvm_fpga_pop_i33_fpga_indvars_iv9_pop10_triangular10_mux_x_q;
            1'b1 : i_fpga_indvars_iv9_replace_phi_triangular11_q = i_llvm_fpga_ffwd_dest_i33_unnamed_triangular10_triangular9_out_dest_data_out_3_0;
            default : i_fpga_indvars_iv9_replace_phi_triangular11_q = 33'b0;
        endcase
    end

    // i_exitcond11_triangular30_cmp_nsign(LOGICAL,158)@4
    assign i_exitcond11_triangular30_cmp_nsign_q = $unsigned(~ (i_fpga_indvars_iv9_replace_phi_triangular11_q[32:32]));

    // valid_fanout_reg12(REG,134)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist3_sync_together83_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp1615_triangular32(BLACKBOX,47)@4
    triangular_i_llvm_fpga_ffwd_dest_i1_cmp1615_0 thei_llvm_fpga_ffwd_dest_i1_cmp1615_triangular32 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i1_cmp1615_triangular32_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_triangular33(LOGICAL,67)@4
    assign i_unnamed_triangular33_q = i_llvm_fpga_ffwd_dest_i1_cmp1615_triangular32_out_dest_data_out_1_0 & i_exitcond11_triangular30_cmp_nsign_q;

    // i_llvm_fpga_push_i1_notexitcond19_triangular36(BLACKBOX,53)@4
    // out out_feedback_out_5@20000000
    // out out_feedback_valid_out_5@20000000
    triangular_i_llvm_fpga_push_i1_notexitcond19_0 thei_llvm_fpga_push_i1_notexitcond19_triangular36 (
        .in_data_in(i_unnamed_triangular33_q),
        .in_feedback_stall_in_5(i_llvm_fpga_pipeline_keep_going18_triangular6_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(),
        .out_feedback_out_5(i_llvm_fpga_push_i1_notexitcond19_triangular36_out_feedback_out_5),
        .out_feedback_valid_out_5(i_llvm_fpga_push_i1_notexitcond19_triangular36_out_feedback_valid_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_dummy_thread_triangular_b4_dummy_triangular2(BLACKBOX,45)@0
    // in in_stall_in@20000000
    triangular_i_llvm_fpga_dummy_thread_b4_dummy_triangular0 thei_llvm_fpga_dummy_thread_triangular_b4_dummy_triangular2 (
        .in_dummy_in(in_dummy_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dummy_out(i_llvm_fpga_dummy_thread_triangular_b4_dummy_triangular2_out_dummy_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist19_i_llvm_fpga_dummy_thread_triangular_b4_dummy_triangular2_out_dummy_out_4(DELAY,180)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist19_i_llvm_fpga_dummy_thread_triangular_b4_dummy_triangular2_out_dummy_out_4_delay_0 <= $unsigned(i_llvm_fpga_dummy_thread_triangular_b4_dummy_triangular2_out_dummy_out);
            redist19_i_llvm_fpga_dummy_thread_triangular_b4_dummy_triangular2_out_dummy_out_4_delay_1 <= redist19_i_llvm_fpga_dummy_thread_triangular_b4_dummy_triangular2_out_dummy_out_4_delay_0;
            redist19_i_llvm_fpga_dummy_thread_triangular_b4_dummy_triangular2_out_dummy_out_4_delay_2 <= redist19_i_llvm_fpga_dummy_thread_triangular_b4_dummy_triangular2_out_dummy_out_4_delay_1;
            redist19_i_llvm_fpga_dummy_thread_triangular_b4_dummy_triangular2_out_dummy_out_4_q <= redist19_i_llvm_fpga_dummy_thread_triangular_b4_dummy_triangular2_out_dummy_out_4_delay_2;
        end
    end

    // i_llvm_fpga_forked_triangular_b4_forked_triangular3(BLACKBOX,51)@0
    // in in_stall_in@20000000
    triangular_i_llvm_fpga_forked_b4_forked_triangular0 thei_llvm_fpga_forked_triangular_b4_forked_triangular3 (
        .in_buffer_in(in_buffer_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_buffer_out(i_llvm_fpga_forked_triangular_b4_forked_triangular3_out_buffer_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist17_i_llvm_fpga_forked_triangular_b4_forked_triangular3_out_buffer_out_4(DELAY,178)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist17_i_llvm_fpga_forked_triangular_b4_forked_triangular3_out_buffer_out_4_delay_0 <= $unsigned(i_llvm_fpga_forked_triangular_b4_forked_triangular3_out_buffer_out);
            redist17_i_llvm_fpga_forked_triangular_b4_forked_triangular3_out_buffer_out_4_delay_1 <= redist17_i_llvm_fpga_forked_triangular_b4_forked_triangular3_out_buffer_out_4_delay_0;
            redist17_i_llvm_fpga_forked_triangular_b4_forked_triangular3_out_buffer_out_4_delay_2 <= redist17_i_llvm_fpga_forked_triangular_b4_forked_triangular3_out_buffer_out_4_delay_1;
            redist17_i_llvm_fpga_forked_triangular_b4_forked_triangular3_out_buffer_out_4_q <= redist17_i_llvm_fpga_forked_triangular_b4_forked_triangular3_out_buffer_out_4_delay_2;
        end
    end

    // i_llvm_fpga_pipeline_keep_going18_triangular6(BLACKBOX,52)@4
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_dummy_out@20000000
    // out out_pipeline_forked_out@20000000
    // out out_pipeline_valid_out@20000000
    triangular_i_llvm_fpga_pipeline_keep_going18_0 thei_llvm_fpga_pipeline_keep_going18_triangular6 (
        .in_data_in(redist17_i_llvm_fpga_forked_triangular_b4_forked_triangular3_out_buffer_out_4_q),
        .in_dummy_in(redist19_i_llvm_fpga_dummy_thread_triangular_b4_dummy_triangular2_out_dummy_out_4_q),
        .in_forked_in(redist17_i_llvm_fpga_forked_triangular_b4_forked_triangular3_out_buffer_out_4_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond19_triangular36_out_feedback_out_5),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond19_triangular36_out_feedback_valid_out_5),
        .in_pipeline_stall_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going18_triangular6_out_data_out),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going18_triangular6_out_exiting_valid_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going18_triangular6_out_not_exitcond_stall_out),
        .out_pipeline_dummy_out(i_llvm_fpga_pipeline_keep_going18_triangular6_out_pipeline_dummy_out),
        .out_pipeline_forked_out(i_llvm_fpga_pipeline_keep_going18_triangular6_out_pipeline_forked_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going18_triangular6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,75)
    assign out_exiting_valid_out = i_llvm_fpga_pipeline_keep_going18_triangular6_out_exiting_valid_out;

    // dupName_0_regfree_osync_x(GPOUT,86)
    assign out_pipeline_dummy_out = i_llvm_fpga_pipeline_keep_going18_triangular6_out_pipeline_dummy_out;

    // dupName_1_regfree_osync_x(GPOUT,87)
    assign out_pipeline_forked_out = i_llvm_fpga_pipeline_keep_going18_triangular6_out_pipeline_forked_out;

    // dupName_2_regfree_osync_x(GPOUT,88)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going18_triangular6_out_pipeline_valid_out;

    // i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular0_c_i7_03_x(CONSTANT,96)
    assign i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular0_c_i7_03_x_q = $unsigned(7'b0000000);

    // redist16_i_llvm_fpga_pipeline_keep_going18_triangular6_out_data_out_2(DELAY,177)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist16_i_llvm_fpga_pipeline_keep_going18_triangular6_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pipeline_keep_going18_triangular6_out_data_out);
            redist16_i_llvm_fpga_pipeline_keep_going18_triangular6_out_data_out_2_q <= redist16_i_llvm_fpga_pipeline_keep_going18_triangular6_out_data_out_2_delay_0;
        end
    end

    // i_triangular_b4_next_iter_isreal_triangular7(LOGICAL,58)@6
    assign i_triangular_b4_next_iter_isreal_triangular7_q = i_llvm_fpga_pop_coalesce_i1_triangular_b4_current_iter_isreal_triangular0_i_llvm_fpga_pop_coalesce_i1_triangular_b4_current_iter_isreal_triangular4_mux_x_q & redist16_i_llvm_fpga_pipeline_keep_going18_triangular6_out_data_out_2_q;

    // i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular0_element_extension2_x(BITJOIN,97)@6
    assign i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular0_element_extension2_x_q = {i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular0_c_i7_03_x_q, i_triangular_b4_next_iter_isreal_triangular7_q};

    // valid_fanout_reg4(REG,126)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist2_sync_together83_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist8_i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular0_inv_pred_x_q_3(DELAY,169)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular0_inv_pred_x_q_3_q <= $unsigned(redist7_i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular0_inv_pred_x_q_2_q);
        end
    end

    // redist9_i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular0_inv_pred_x_q_4(DELAY,170)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist9_i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular0_inv_pred_x_q_4_q <= $unsigned(redist8_i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular0_inv_pred_x_q_3_q);
        end
    end

    // redist4_sync_together83_aunroll_x_in_i_valid_4(DELAY,165)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_sync_together83_aunroll_x_in_i_valid_4_q <= $unsigned(redist3_sync_together83_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg3(REG,125)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist4_sync_together83_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular0_i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular1_x(FIFODELAY,98)@3 + 1
    // in i_valid@5
    // in i_write_pred@5
    // in i_data@6
    // out o_data@6
    assign i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular0_i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular1_x_i_stall = ~ (valid_fanout_reg4_q & redist7_i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular0_inv_pred_x_q_2_q);
    assign i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular0_i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular1_x_i_valid = valid_fanout_reg3_q & redist9_i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular0_inv_pred_x_q_4_q;
    assign i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular0_i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular1_x_i_data = i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular0_i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular0_i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular0_i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular0_i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular0_i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular1_x (
        .i_valid(i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular0_i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular0_i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular0_i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular0_adapt_scalar_trunc4_sel_x(BITSELECT,100)@6
    assign i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular0_i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular1_x_o_data[0:0];

    // i_llvm_fpga_pop_coalesce_i1_triangular_b4_current_iter_isreal_triangular0_i_llvm_fpga_pop_coalesce_i1_triangular_b4_current_iter_isreal_triangular4_mux_x(MUX,89)@6
    assign i_llvm_fpga_pop_coalesce_i1_triangular_b4_current_iter_isreal_triangular0_i_llvm_fpga_pop_coalesce_i1_triangular_b4_current_iter_isreal_triangular4_mux_x_s = redist18_i_llvm_fpga_forked_triangular_b4_forked_triangular3_out_buffer_out_6_q;
    always @(i_llvm_fpga_pop_coalesce_i1_triangular_b4_current_iter_isreal_triangular0_i_llvm_fpga_pop_coalesce_i1_triangular_b4_current_iter_isreal_triangular4_mux_x_s or i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular0_adapt_scalar_trunc4_sel_x_b or VCC_q)
    begin
        unique case (i_llvm_fpga_pop_coalesce_i1_triangular_b4_current_iter_isreal_triangular0_i_llvm_fpga_pop_coalesce_i1_triangular_b4_current_iter_isreal_triangular4_mux_x_s)
            1'b0 : i_llvm_fpga_pop_coalesce_i1_triangular_b4_current_iter_isreal_triangular0_i_llvm_fpga_pop_coalesce_i1_triangular_b4_current_iter_isreal_triangular4_mux_x_q = i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_coalesce_i1_triangular_b4_current_iter_isreal_triangular0_i_llvm_fpga_pop_coalesce_i1_triangular_b4_current_iter_isreal_triangular4_mux_x_q = VCC_q;
            default : i_llvm_fpga_pop_coalesce_i1_triangular_b4_current_iter_isreal_triangular0_i_llvm_fpga_pop_coalesce_i1_triangular_b4_current_iter_isreal_triangular4_mux_x_q = 1'b0;
        endcase
    end

    // i_triangular_b4_current_iter_isspec_triangular5(LOGICAL,57)@6
    assign i_triangular_b4_current_iter_isspec_triangular5_q = i_llvm_fpga_pop_coalesce_i1_triangular_b4_current_iter_isreal_triangular0_i_llvm_fpga_pop_coalesce_i1_triangular_b4_current_iter_isreal_triangular4_mux_x_q ^ VCC_q;

    // redist5_sync_together83_aunroll_x_in_i_valid_5(DELAY,166)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist5_sync_together83_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist5_sync_together83_aunroll_x_in_i_valid_5_q <= $unsigned(redist4_sync_together83_aunroll_x_in_i_valid_4_q);
        end
    end

    // redist6_sync_together83_aunroll_x_in_i_valid_6(DELAY,167)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_sync_together83_aunroll_x_in_i_valid_6_q <= $unsigned(redist5_sync_together83_aunroll_x_in_i_valid_5_q);
        end
    end

    // valid_fanout_reg0(REG,122)@5 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist5_sync_together83_aunroll_x_in_i_valid_5_q);
        end
    end

    // redist0_sync_together83_aunroll_x_in_c0_eni3_2_tpl_6_offset(CONSTANT,186)
    assign redist0_sync_together83_aunroll_x_in_c0_eni3_2_tpl_6_offset_q = $unsigned(2'b11);

    // redist1_sync_together83_aunroll_x_in_c0_eni3_3_tpl_6_rdcnt(ADD,193)
    assign redist1_sync_together83_aunroll_x_in_c0_eni3_3_tpl_6_rdcnt_a = {1'b0, redist1_sync_together83_aunroll_x_in_c0_eni3_3_tpl_6_wraddr_q};
    assign redist1_sync_together83_aunroll_x_in_c0_eni3_3_tpl_6_rdcnt_b = {1'b0, redist0_sync_together83_aunroll_x_in_c0_eni3_2_tpl_6_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_together83_aunroll_x_in_c0_eni3_3_tpl_6_rdcnt_o <= $unsigned(redist1_sync_together83_aunroll_x_in_c0_eni3_3_tpl_6_rdcnt_a) + $unsigned(redist1_sync_together83_aunroll_x_in_c0_eni3_3_tpl_6_rdcnt_b);
        end
    end
    assign redist1_sync_together83_aunroll_x_in_c0_eni3_3_tpl_6_rdcnt_q = redist1_sync_together83_aunroll_x_in_c0_eni3_3_tpl_6_rdcnt_o[2:0];

    // redist1_sync_together83_aunroll_x_in_c0_eni3_3_tpl_6_inputreg0(DELAY,188)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_together83_aunroll_x_in_c0_eni3_3_tpl_6_inputreg0_q <= $unsigned(in_c0_eni3_3_tpl);
        end
    end

    // redist1_sync_together83_aunroll_x_in_c0_eni3_3_tpl_6_wraddr(COUNTER,191)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_together83_aunroll_x_in_c0_eni3_3_tpl_6_wraddr_i <= $unsigned(redist1_sync_together83_aunroll_x_in_c0_eni3_3_tpl_6_wraddr_i) + $unsigned(2'd1);
        end
    end
    assign redist1_sync_together83_aunroll_x_in_c0_eni3_3_tpl_6_wraddr_q = redist1_sync_together83_aunroll_x_in_c0_eni3_3_tpl_6_wraddr_i[1:0];

    // redist1_sync_together83_aunroll_x_in_c0_eni3_3_tpl_6_mem(DUALMEM,190)
    assign redist1_sync_together83_aunroll_x_in_c0_eni3_3_tpl_6_mem_ia = $unsigned(redist1_sync_together83_aunroll_x_in_c0_eni3_3_tpl_6_inputreg0_q);
    assign redist1_sync_together83_aunroll_x_in_c0_eni3_3_tpl_6_mem_aa = redist1_sync_together83_aunroll_x_in_c0_eni3_3_tpl_6_wraddr_q;
    assign redist1_sync_together83_aunroll_x_in_c0_eni3_3_tpl_6_mem_ab = redist1_sync_together83_aunroll_x_in_c0_eni3_3_tpl_6_rdcnt_q[1:0];
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
    ) redist1_sync_together83_aunroll_x_in_c0_eni3_3_tpl_6_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist1_sync_together83_aunroll_x_in_c0_eni3_3_tpl_6_mem_aa),
        .data_a(redist1_sync_together83_aunroll_x_in_c0_eni3_3_tpl_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist1_sync_together83_aunroll_x_in_c0_eni3_3_tpl_6_mem_ab),
        .q_b(redist1_sync_together83_aunroll_x_in_c0_eni3_3_tpl_6_mem_iq),
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
    assign redist1_sync_together83_aunroll_x_in_c0_eni3_3_tpl_6_mem_q = redist1_sync_together83_aunroll_x_in_c0_eni3_3_tpl_6_mem_iq[31:0];

    // redist1_sync_together83_aunroll_x_in_c0_eni3_3_tpl_6_outputreg0(DELAY,189)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_together83_aunroll_x_in_c0_eni3_3_tpl_6_outputreg0_q <= $unsigned(redist1_sync_together83_aunroll_x_in_c0_eni3_3_tpl_6_mem_q);
        end
    end

    // redist0_sync_together83_aunroll_x_in_c0_eni3_2_tpl_6_rdcnt(ADD,187)
    assign redist0_sync_together83_aunroll_x_in_c0_eni3_2_tpl_6_rdcnt_a = {1'b0, redist0_sync_together83_aunroll_x_in_c0_eni3_2_tpl_6_wraddr_q};
    assign redist0_sync_together83_aunroll_x_in_c0_eni3_2_tpl_6_rdcnt_b = {1'b0, redist0_sync_together83_aunroll_x_in_c0_eni3_2_tpl_6_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sync_together83_aunroll_x_in_c0_eni3_2_tpl_6_rdcnt_o <= $unsigned(redist0_sync_together83_aunroll_x_in_c0_eni3_2_tpl_6_rdcnt_a) + $unsigned(redist0_sync_together83_aunroll_x_in_c0_eni3_2_tpl_6_rdcnt_b);
        end
    end
    assign redist0_sync_together83_aunroll_x_in_c0_eni3_2_tpl_6_rdcnt_q = redist0_sync_together83_aunroll_x_in_c0_eni3_2_tpl_6_rdcnt_o[2:0];

    // redist0_sync_together83_aunroll_x_in_c0_eni3_2_tpl_6_inputreg0(DELAY,182)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sync_together83_aunroll_x_in_c0_eni3_2_tpl_6_inputreg0_q <= $unsigned(in_c0_eni3_2_tpl);
        end
    end

    // redist0_sync_together83_aunroll_x_in_c0_eni3_2_tpl_6_wraddr(COUNTER,185)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sync_together83_aunroll_x_in_c0_eni3_2_tpl_6_wraddr_i <= $unsigned(redist0_sync_together83_aunroll_x_in_c0_eni3_2_tpl_6_wraddr_i) + $unsigned(2'd1);
        end
    end
    assign redist0_sync_together83_aunroll_x_in_c0_eni3_2_tpl_6_wraddr_q = redist0_sync_together83_aunroll_x_in_c0_eni3_2_tpl_6_wraddr_i[1:0];

    // redist0_sync_together83_aunroll_x_in_c0_eni3_2_tpl_6_mem(DUALMEM,184)
    assign redist0_sync_together83_aunroll_x_in_c0_eni3_2_tpl_6_mem_ia = $unsigned(redist0_sync_together83_aunroll_x_in_c0_eni3_2_tpl_6_inputreg0_q);
    assign redist0_sync_together83_aunroll_x_in_c0_eni3_2_tpl_6_mem_aa = redist0_sync_together83_aunroll_x_in_c0_eni3_2_tpl_6_wraddr_q;
    assign redist0_sync_together83_aunroll_x_in_c0_eni3_2_tpl_6_mem_ab = redist0_sync_together83_aunroll_x_in_c0_eni3_2_tpl_6_rdcnt_q[1:0];
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
    ) redist0_sync_together83_aunroll_x_in_c0_eni3_2_tpl_6_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist0_sync_together83_aunroll_x_in_c0_eni3_2_tpl_6_mem_aa),
        .data_a(redist0_sync_together83_aunroll_x_in_c0_eni3_2_tpl_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist0_sync_together83_aunroll_x_in_c0_eni3_2_tpl_6_mem_ab),
        .q_b(redist0_sync_together83_aunroll_x_in_c0_eni3_2_tpl_6_mem_iq),
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
    assign redist0_sync_together83_aunroll_x_in_c0_eni3_2_tpl_6_mem_q = redist0_sync_together83_aunroll_x_in_c0_eni3_2_tpl_6_mem_iq[31:0];

    // redist0_sync_together83_aunroll_x_in_c0_eni3_2_tpl_6_outputreg0(DELAY,183)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sync_together83_aunroll_x_in_c0_eni3_2_tpl_6_outputreg0_q <= $unsigned(redist0_sync_together83_aunroll_x_in_c0_eni3_2_tpl_6_mem_q);
        end
    end

    // redist18_i_llvm_fpga_forked_triangular_b4_forked_triangular3_out_buffer_out_6(DELAY,179)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist18_i_llvm_fpga_forked_triangular_b4_forked_triangular3_out_buffer_out_6_delay_0 <= $unsigned(redist17_i_llvm_fpga_forked_triangular_b4_forked_triangular3_out_buffer_out_4_q);
            redist18_i_llvm_fpga_forked_triangular_b4_forked_triangular3_out_buffer_out_6_q <= redist18_i_llvm_fpga_forked_triangular_b4_forked_triangular3_out_buffer_out_6_delay_0;
        end
    end

    // valid_fanout_reg25(REG,147)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg25_q <= $unsigned(redist2_sync_together83_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg24(REG,146)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg24_q <= $unsigned(redist4_sync_together83_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i32_reorder_limiter_enter27_push15_triangular0_i_llvm_fpga_push_i32_reorder_limiter_enter27_push15_triangular1_x(FIFODELAY,110)@3 + 1
    // in i_valid@5
    // in i_write_pred@5
    // in i_data@6
    // out o_data@6
    assign i_llvm_fpga_push_i32_reorder_limiter_enter27_push15_triangular0_i_llvm_fpga_push_i32_reorder_limiter_enter27_push15_triangular1_x_i_stall = ~ (valid_fanout_reg25_q & redist7_i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular0_inv_pred_x_q_2_q);
    assign i_llvm_fpga_push_i32_reorder_limiter_enter27_push15_triangular0_i_llvm_fpga_push_i32_reorder_limiter_enter27_push15_triangular1_x_i_valid = valid_fanout_reg24_q & redist9_i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular0_inv_pred_x_q_4_q;
    assign i_llvm_fpga_push_i32_reorder_limiter_enter27_push15_triangular0_i_llvm_fpga_push_i32_reorder_limiter_enter27_push15_triangular1_x_i_data = i_llvm_fpga_pop_i32_reorder_limiter_enter27_pop15_triangular0_i_llvm_fpga_pop_i32_reorder_limiter_enter27_pop15_triangular43_mux_x_q;
    assign i_llvm_fpga_push_i32_reorder_limiter_enter27_push15_triangular0_i_llvm_fpga_push_i32_reorder_limiter_enter27_push15_triangular1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_reorder_limiter_enter27_push15_triangular0_i_llvm_fpga_push_i32_reorder_limiter_enter27_push15_triangular1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_reorder_limiter_enter27_push15_triangular0_i_llvm_fpga_push_i32_reorder_limiter_enter27_push15_triangular1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_reorder_limiter_enter27_push15_triangular0_i_llvm_fpga_push_i32_reorder_limiter_enter27_push15_triangular1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_reorder_limiter_enter27_push15_triangular0_i_llvm_fpga_push_i32_reorder_limiter_enter27_push15_triangular1_x (
        .i_valid(i_llvm_fpga_push_i32_reorder_limiter_enter27_push15_triangular0_i_llvm_fpga_push_i32_reorder_limiter_enter27_push15_triangular1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_reorder_limiter_enter27_push15_triangular0_i_llvm_fpga_push_i32_reorder_limiter_enter27_push15_triangular1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i32_reorder_limiter_enter27_pop15_triangular0_i_llvm_fpga_pop_i32_reorder_limiter_enter27_pop15_triangular43_mux_x_q),
        .o_data(i_llvm_fpga_push_i32_reorder_limiter_enter27_push15_triangular0_i_llvm_fpga_push_i32_reorder_limiter_enter27_push15_triangular1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_reorder_limiter_enter27_pop15_triangular0_i_llvm_fpga_pop_i32_reorder_limiter_enter27_pop15_triangular43_mux_x(MUX,93)@6
    assign i_llvm_fpga_pop_i32_reorder_limiter_enter27_pop15_triangular0_i_llvm_fpga_pop_i32_reorder_limiter_enter27_pop15_triangular43_mux_x_s = redist18_i_llvm_fpga_forked_triangular_b4_forked_triangular3_out_buffer_out_6_q;
    always @(i_llvm_fpga_pop_i32_reorder_limiter_enter27_pop15_triangular0_i_llvm_fpga_pop_i32_reorder_limiter_enter27_pop15_triangular43_mux_x_s or i_llvm_fpga_push_i32_reorder_limiter_enter27_push15_triangular0_i_llvm_fpga_push_i32_reorder_limiter_enter27_push15_triangular1_x_o_data or redist1_sync_together83_aunroll_x_in_c0_eni3_3_tpl_6_outputreg0_q)
    begin
        unique case (i_llvm_fpga_pop_i32_reorder_limiter_enter27_pop15_triangular0_i_llvm_fpga_pop_i32_reorder_limiter_enter27_pop15_triangular43_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_reorder_limiter_enter27_pop15_triangular0_i_llvm_fpga_pop_i32_reorder_limiter_enter27_pop15_triangular43_mux_x_q = i_llvm_fpga_push_i32_reorder_limiter_enter27_push15_triangular0_i_llvm_fpga_push_i32_reorder_limiter_enter27_push15_triangular1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_reorder_limiter_enter27_pop15_triangular0_i_llvm_fpga_pop_i32_reorder_limiter_enter27_pop15_triangular43_mux_x_q = redist1_sync_together83_aunroll_x_in_c0_eni3_3_tpl_6_outputreg0_q;
            default : i_llvm_fpga_pop_i32_reorder_limiter_enter27_pop15_triangular0_i_llvm_fpga_pop_i32_reorder_limiter_enter27_pop15_triangular43_mux_x_q = 32'b0;
        endcase
    end

    // valid_fanout_reg22(REG,144)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg22_q <= $unsigned(redist2_sync_together83_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg21(REG,143)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg21_q <= $unsigned(redist4_sync_together83_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i32_lim_ext25_push14_triangular0_i_llvm_fpga_push_i32_lim_ext25_push14_triangular1_x(FIFODELAY,107)@3 + 1
    // in i_valid@5
    // in i_write_pred@5
    // in i_data@6
    // out o_data@6
    assign i_llvm_fpga_push_i32_lim_ext25_push14_triangular0_i_llvm_fpga_push_i32_lim_ext25_push14_triangular1_x_i_stall = ~ (valid_fanout_reg22_q & redist7_i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular0_inv_pred_x_q_2_q);
    assign i_llvm_fpga_push_i32_lim_ext25_push14_triangular0_i_llvm_fpga_push_i32_lim_ext25_push14_triangular1_x_i_valid = valid_fanout_reg21_q & redist9_i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular0_inv_pred_x_q_4_q;
    assign i_llvm_fpga_push_i32_lim_ext25_push14_triangular0_i_llvm_fpga_push_i32_lim_ext25_push14_triangular1_x_i_data = i_llvm_fpga_pop_i32_lim_ext25_pop14_triangular0_i_llvm_fpga_pop_i32_lim_ext25_pop14_triangular41_mux_x_q;
    assign i_llvm_fpga_push_i32_lim_ext25_push14_triangular0_i_llvm_fpga_push_i32_lim_ext25_push14_triangular1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_lim_ext25_push14_triangular0_i_llvm_fpga_push_i32_lim_ext25_push14_triangular1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_lim_ext25_push14_triangular0_i_llvm_fpga_push_i32_lim_ext25_push14_triangular1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_lim_ext25_push14_triangular0_i_llvm_fpga_push_i32_lim_ext25_push14_triangular1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_lim_ext25_push14_triangular0_i_llvm_fpga_push_i32_lim_ext25_push14_triangular1_x (
        .i_valid(i_llvm_fpga_push_i32_lim_ext25_push14_triangular0_i_llvm_fpga_push_i32_lim_ext25_push14_triangular1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_lim_ext25_push14_triangular0_i_llvm_fpga_push_i32_lim_ext25_push14_triangular1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i32_lim_ext25_pop14_triangular0_i_llvm_fpga_pop_i32_lim_ext25_pop14_triangular41_mux_x_q),
        .o_data(i_llvm_fpga_push_i32_lim_ext25_push14_triangular0_i_llvm_fpga_push_i32_lim_ext25_push14_triangular1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_lim_ext25_pop14_triangular0_i_llvm_fpga_pop_i32_lim_ext25_pop14_triangular41_mux_x(MUX,92)@6
    assign i_llvm_fpga_pop_i32_lim_ext25_pop14_triangular0_i_llvm_fpga_pop_i32_lim_ext25_pop14_triangular41_mux_x_s = redist18_i_llvm_fpga_forked_triangular_b4_forked_triangular3_out_buffer_out_6_q;
    always @(i_llvm_fpga_pop_i32_lim_ext25_pop14_triangular0_i_llvm_fpga_pop_i32_lim_ext25_pop14_triangular41_mux_x_s or i_llvm_fpga_push_i32_lim_ext25_push14_triangular0_i_llvm_fpga_push_i32_lim_ext25_push14_triangular1_x_o_data or redist0_sync_together83_aunroll_x_in_c0_eni3_2_tpl_6_outputreg0_q)
    begin
        unique case (i_llvm_fpga_pop_i32_lim_ext25_pop14_triangular0_i_llvm_fpga_pop_i32_lim_ext25_pop14_triangular41_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_lim_ext25_pop14_triangular0_i_llvm_fpga_pop_i32_lim_ext25_pop14_triangular41_mux_x_q = i_llvm_fpga_push_i32_lim_ext25_push14_triangular0_i_llvm_fpga_push_i32_lim_ext25_push14_triangular1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_lim_ext25_pop14_triangular0_i_llvm_fpga_pop_i32_lim_ext25_pop14_triangular41_mux_x_q = redist0_sync_together83_aunroll_x_in_c0_eni3_2_tpl_6_outputreg0_q;
            default : i_llvm_fpga_pop_i32_lim_ext25_pop14_triangular0_i_llvm_fpga_pop_i32_lim_ext25_pop14_triangular41_mux_x_q = 32'b0;
        endcase
    end

    // i_notcmp17_triangular35(LOGICAL,54)@6
    assign i_notcmp17_triangular35_q = redist14_i_unnamed_triangular33_q_2_q ^ VCC_q;

    // redist14_i_unnamed_triangular33_q_2(DELAY,175)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist14_i_unnamed_triangular33_q_2_delay_0 <= $unsigned(i_unnamed_triangular33_q);
            redist14_i_unnamed_triangular33_q_2_q <= redist14_i_unnamed_triangular33_q_2_delay_0;
        end
    end

    // c_i32_273(CONSTANT,33)
    assign c_i32_273_q = $unsigned(32'b11111111111111111111111111111110);

    // valid_fanout_reg9(REG,131)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist3_sync_together83_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_n2312_triangular15(BLACKBOX,48)@4
    triangular_i_llvm_fpga_ffwd_dest_i32_n2312_0 thei_llvm_fpga_ffwd_dest_i32_n2312_triangular15 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i32_n2312_triangular15_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_070(CONSTANT,31)
    assign c_i32_070_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i32_172(CONSTANT,32)
    assign c_i32_172_q = $unsigned(32'b11111111111111111111111111111111);

    // i_i_018_triangular24(ADD,44)@4
    assign i_i_018_triangular24_a = {1'b0, i_i_018_in_replace_phi_triangular17_q};
    assign i_i_018_triangular24_b = {1'b0, c_i32_172_q};
    assign i_i_018_triangular24_o = $unsigned(i_i_018_triangular24_a) + $unsigned(i_i_018_triangular24_b);
    assign i_i_018_triangular24_q = i_i_018_triangular24_o[32:0];

    // bgTrunc_i_i_018_triangular24_sel_x(BITSELECT,79)@4
    assign bgTrunc_i_i_018_triangular24_sel_x_b = i_i_018_triangular24_q[31:0];

    // redist12_bgTrunc_i_i_018_triangular24_sel_x_b_1(DELAY,173)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist12_bgTrunc_i_i_018_triangular24_sel_x_b_1_q <= $unsigned(bgTrunc_i_i_018_triangular24_sel_x_b);
        end
    end

    // valid_fanout_reg14(REG,136)@0 + 1
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

    // valid_fanout_reg13(REG,135)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist3_sync_together83_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i32_i_018_in_push12_triangular0_i_llvm_fpga_push_i32_i_018_in_push12_triangular1_x(FIFODELAY,104)@1
    // in i_valid@4
    // in i_write_pred@4
    // in i_data@5
    // out o_data@4
    assign i_llvm_fpga_push_i32_i_018_in_push12_triangular0_i_llvm_fpga_push_i32_i_018_in_push12_triangular1_x_i_stall = ~ (valid_fanout_reg14_q & i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular0_inv_pred_x_q);
    assign i_llvm_fpga_push_i32_i_018_in_push12_triangular0_i_llvm_fpga_push_i32_i_018_in_push12_triangular1_x_i_valid = valid_fanout_reg13_q & redist8_i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular0_inv_pred_x_q_3_q;
    assign i_llvm_fpga_push_i32_i_018_in_push12_triangular0_i_llvm_fpga_push_i32_i_018_in_push12_triangular1_x_i_data = redist12_bgTrunc_i_i_018_triangular24_sel_x_b_1_q;
    assign i_llvm_fpga_push_i32_i_018_in_push12_triangular0_i_llvm_fpga_push_i32_i_018_in_push12_triangular1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_i_018_in_push12_triangular0_i_llvm_fpga_push_i32_i_018_in_push12_triangular1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_i_018_in_push12_triangular0_i_llvm_fpga_push_i32_i_018_in_push12_triangular1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_i_018_in_push12_triangular0_i_llvm_fpga_push_i32_i_018_in_push12_triangular1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_i_018_in_push12_triangular0_i_llvm_fpga_push_i32_i_018_in_push12_triangular1_x (
        .i_valid(i_llvm_fpga_push_i32_i_018_in_push12_triangular0_i_llvm_fpga_push_i32_i_018_in_push12_triangular1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_i_018_in_push12_triangular0_i_llvm_fpga_push_i32_i_018_in_push12_triangular1_x_i_stall_bitsignaltemp),
        .i_data(redist12_bgTrunc_i_i_018_triangular24_sel_x_b_1_q),
        .o_data(i_llvm_fpga_push_i32_i_018_in_push12_triangular0_i_llvm_fpga_push_i32_i_018_in_push12_triangular1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_018_in_pop12_triangular0_i_llvm_fpga_pop_i32_i_018_in_pop12_triangular16_mux_x(MUX,91)@4
    assign i_llvm_fpga_pop_i32_i_018_in_pop12_triangular0_i_llvm_fpga_pop_i32_i_018_in_pop12_triangular16_mux_x_s = redist17_i_llvm_fpga_forked_triangular_b4_forked_triangular3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i32_i_018_in_pop12_triangular0_i_llvm_fpga_pop_i32_i_018_in_pop12_triangular16_mux_x_s or i_llvm_fpga_push_i32_i_018_in_push12_triangular0_i_llvm_fpga_push_i32_i_018_in_push12_triangular1_x_o_data or c_i32_070_q)
    begin
        unique case (i_llvm_fpga_pop_i32_i_018_in_pop12_triangular0_i_llvm_fpga_pop_i32_i_018_in_pop12_triangular16_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_i_018_in_pop12_triangular0_i_llvm_fpga_pop_i32_i_018_in_pop12_triangular16_mux_x_q = i_llvm_fpga_push_i32_i_018_in_push12_triangular0_i_llvm_fpga_push_i32_i_018_in_push12_triangular1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_i_018_in_pop12_triangular0_i_llvm_fpga_pop_i32_i_018_in_pop12_triangular16_mux_x_q = c_i32_070_q;
            default : i_llvm_fpga_pop_i32_i_018_in_pop12_triangular0_i_llvm_fpga_pop_i32_i_018_in_pop12_triangular16_mux_x_q = 32'b0;
        endcase
    end

    // i_i_018_in_replace_phi_triangular17(MUX,43)@4
    assign i_i_018_in_replace_phi_triangular17_s = redist17_i_llvm_fpga_forked_triangular_b4_forked_triangular3_out_buffer_out_4_q;
    always @(i_i_018_in_replace_phi_triangular17_s or i_llvm_fpga_pop_i32_i_018_in_pop12_triangular0_i_llvm_fpga_pop_i32_i_018_in_pop12_triangular16_mux_x_q or i_llvm_fpga_ffwd_dest_i32_n2312_triangular15_out_dest_data_out_0_0)
    begin
        unique case (i_i_018_in_replace_phi_triangular17_s)
            1'b0 : i_i_018_in_replace_phi_triangular17_q = i_llvm_fpga_pop_i32_i_018_in_pop12_triangular0_i_llvm_fpga_pop_i32_i_018_in_pop12_triangular16_mux_x_q;
            1'b1 : i_i_018_in_replace_phi_triangular17_q = i_llvm_fpga_ffwd_dest_i32_n2312_triangular15_out_dest_data_out_0_0;
            default : i_i_018_in_replace_phi_triangular17_q = 32'b0;
        endcase
    end

    // i_sub3_triangular25(ADD,56)@4
    assign i_sub3_triangular25_a = {1'b0, i_i_018_in_replace_phi_triangular17_q};
    assign i_sub3_triangular25_b = {1'b0, c_i32_273_q};
    assign i_sub3_triangular25_o = $unsigned(i_sub3_triangular25_a) + $unsigned(i_sub3_triangular25_b);
    assign i_sub3_triangular25_q = i_sub3_triangular25_o[32:0];

    // bgTrunc_i_sub3_triangular25_sel_x(BITSELECT,80)@4
    assign bgTrunc_i_sub3_triangular25_sel_x_b = i_sub3_triangular25_q[31:0];

    // redist10_bgTrunc_i_sub3_triangular25_sel_x_b_1(DELAY,171)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_bgTrunc_i_sub3_triangular25_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub3_triangular25_sel_x_b);
        end
    end

    // c_i32_172_recast_x(CONSTANT,84)
    assign c_i32_172_recast_x_q = $unsigned(32'b11111111111111111111111111111111);

    // i_cmp513_triangular26(COMPARE,37)@5 + 1
    assign i_cmp513_triangular26_a = $unsigned({{2{c_i32_172_recast_x_q[31]}}, c_i32_172_recast_x_q});
    assign i_cmp513_triangular26_b = $unsigned({{2{redist10_bgTrunc_i_sub3_triangular25_sel_x_b_1_q[31]}}, redist10_bgTrunc_i_sub3_triangular25_sel_x_b_1_q});
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_cmp513_triangular26_o <= $unsigned($signed(i_cmp513_triangular26_a) - $signed(i_cmp513_triangular26_b));
        end
    end
    assign i_cmp513_triangular26_c[0] = i_cmp513_triangular26_o[33];

    // valid_fanout_reg11(REG,133)@5 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist5_sync_together83_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp1614_triangular28(BLACKBOX,46)@6
    triangular_i_llvm_fpga_ffwd_dest_i1_cmp1614_0 thei_llvm_fpga_ffwd_dest_i1_cmp1614_triangular28 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i1_cmp1614_triangular28_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_triangular29(LOGICAL,66)@6
    assign i_unnamed_triangular29_q = i_llvm_fpga_ffwd_dest_i1_cmp1614_triangular28_out_dest_data_out_1_0 & i_cmp513_triangular26_c;

    // redist11_bgTrunc_i_sub3_triangular25_sel_x_b_2(DELAY,172)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist11_bgTrunc_i_sub3_triangular25_sel_x_b_2_q <= $unsigned(redist10_bgTrunc_i_sub3_triangular25_sel_x_b_1_q);
        end
    end

    // redist13_bgTrunc_i_i_018_triangular24_sel_x_b_2(DELAY,174)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist13_bgTrunc_i_i_018_triangular24_sel_x_b_2_q <= $unsigned(redist12_bgTrunc_i_i_018_triangular24_sel_x_b_1_q);
        end
    end

    // valid_fanout_reg7(REG,129)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist3_sync_together83_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_unnamed_triangular11_triangular12(BLACKBOX,49)@4
    triangular_i_llvm_fpga_ffwd_dest_i32_unnamed_11_triangular0 thei_llvm_fpga_ffwd_dest_i32_unnamed_triangular11_triangular12 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_i32_unnamed_triangular11_triangular12_out_dest_data_out_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpga_indvars_iv_next_triangular39(ADD,41)@4
    assign i_fpga_indvars_iv_next_triangular39_a = {1'b0, i_fpga_indvars_iv_replace_phi_triangular14_q};
    assign i_fpga_indvars_iv_next_triangular39_b = {1'b0, c_i32_172_q};
    assign i_fpga_indvars_iv_next_triangular39_o = $unsigned(i_fpga_indvars_iv_next_triangular39_a) + $unsigned(i_fpga_indvars_iv_next_triangular39_b);
    assign i_fpga_indvars_iv_next_triangular39_q = i_fpga_indvars_iv_next_triangular39_o[32:0];

    // bgTrunc_i_fpga_indvars_iv_next_triangular39_sel_x(BITSELECT,78)@4
    assign bgTrunc_i_fpga_indvars_iv_next_triangular39_sel_x_b = i_fpga_indvars_iv_next_triangular39_q[31:0];

    // valid_fanout_reg19(REG,141)@0 + 1
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

    // valid_fanout_reg18(REG,140)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(redist2_sync_together83_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i32_fpga_indvars_iv_push11_triangular0_i_llvm_fpga_push_i32_fpga_indvars_iv_push11_triangular1_x(FIFODELAY,101)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i32_fpga_indvars_iv_push11_triangular0_i_llvm_fpga_push_i32_fpga_indvars_iv_push11_triangular1_x_i_stall = ~ (valid_fanout_reg19_q & i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular0_inv_pred_x_q);
    assign i_llvm_fpga_push_i32_fpga_indvars_iv_push11_triangular0_i_llvm_fpga_push_i32_fpga_indvars_iv_push11_triangular1_x_i_valid = valid_fanout_reg18_q & redist7_i_llvm_fpga_push_i1_triangular_b4_next_iter_isreal_push_triangular0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i32_fpga_indvars_iv_push11_triangular0_i_llvm_fpga_push_i32_fpga_indvars_iv_push11_triangular1_x_i_data = bgTrunc_i_fpga_indvars_iv_next_triangular39_sel_x_b;
    assign i_llvm_fpga_push_i32_fpga_indvars_iv_push11_triangular0_i_llvm_fpga_push_i32_fpga_indvars_iv_push11_triangular1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_fpga_indvars_iv_push11_triangular0_i_llvm_fpga_push_i32_fpga_indvars_iv_push11_triangular1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_fpga_indvars_iv_push11_triangular0_i_llvm_fpga_push_i32_fpga_indvars_iv_push11_triangular1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_fpga_indvars_iv_push11_triangular0_i_llvm_fpga_push_i32_fpga_indvars_iv_push11_triangular1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_fpga_indvars_iv_push11_triangular0_i_llvm_fpga_push_i32_fpga_indvars_iv_push11_triangular1_x (
        .i_valid(i_llvm_fpga_push_i32_fpga_indvars_iv_push11_triangular0_i_llvm_fpga_push_i32_fpga_indvars_iv_push11_triangular1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_fpga_indvars_iv_push11_triangular0_i_llvm_fpga_push_i32_fpga_indvars_iv_push11_triangular1_x_i_stall_bitsignaltemp),
        .i_data(bgTrunc_i_fpga_indvars_iv_next_triangular39_sel_x_b),
        .o_data(i_llvm_fpga_push_i32_fpga_indvars_iv_push11_triangular0_i_llvm_fpga_push_i32_fpga_indvars_iv_push11_triangular1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_fpga_indvars_iv_pop11_triangular0_i_llvm_fpga_pop_i32_fpga_indvars_iv_pop11_triangular13_mux_x(MUX,90)@4
    assign i_llvm_fpga_pop_i32_fpga_indvars_iv_pop11_triangular0_i_llvm_fpga_pop_i32_fpga_indvars_iv_pop11_triangular13_mux_x_s = redist17_i_llvm_fpga_forked_triangular_b4_forked_triangular3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i32_fpga_indvars_iv_pop11_triangular0_i_llvm_fpga_pop_i32_fpga_indvars_iv_pop11_triangular13_mux_x_s or i_llvm_fpga_push_i32_fpga_indvars_iv_push11_triangular0_i_llvm_fpga_push_i32_fpga_indvars_iv_push11_triangular1_x_o_data or c_i32_070_q)
    begin
        unique case (i_llvm_fpga_pop_i32_fpga_indvars_iv_pop11_triangular0_i_llvm_fpga_pop_i32_fpga_indvars_iv_pop11_triangular13_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_fpga_indvars_iv_pop11_triangular0_i_llvm_fpga_pop_i32_fpga_indvars_iv_pop11_triangular13_mux_x_q = i_llvm_fpga_push_i32_fpga_indvars_iv_push11_triangular0_i_llvm_fpga_push_i32_fpga_indvars_iv_push11_triangular1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_fpga_indvars_iv_pop11_triangular0_i_llvm_fpga_pop_i32_fpga_indvars_iv_pop11_triangular13_mux_x_q = c_i32_070_q;
            default : i_llvm_fpga_pop_i32_fpga_indvars_iv_pop11_triangular0_i_llvm_fpga_pop_i32_fpga_indvars_iv_pop11_triangular13_mux_x_q = 32'b0;
        endcase
    end

    // i_fpga_indvars_iv_replace_phi_triangular14(MUX,42)@4
    assign i_fpga_indvars_iv_replace_phi_triangular14_s = redist17_i_llvm_fpga_forked_triangular_b4_forked_triangular3_out_buffer_out_4_q;
    always @(i_fpga_indvars_iv_replace_phi_triangular14_s or i_llvm_fpga_pop_i32_fpga_indvars_iv_pop11_triangular0_i_llvm_fpga_pop_i32_fpga_indvars_iv_pop11_triangular13_mux_x_q or i_llvm_fpga_ffwd_dest_i32_unnamed_triangular11_triangular12_out_dest_data_out_2_0)
    begin
        unique case (i_fpga_indvars_iv_replace_phi_triangular14_s)
            1'b0 : i_fpga_indvars_iv_replace_phi_triangular14_q = i_llvm_fpga_pop_i32_fpga_indvars_iv_pop11_triangular0_i_llvm_fpga_pop_i32_fpga_indvars_iv_pop11_triangular13_mux_x_q;
            1'b1 : i_fpga_indvars_iv_replace_phi_triangular14_q = i_llvm_fpga_ffwd_dest_i32_unnamed_triangular11_triangular12_out_dest_data_out_2_0;
            default : i_fpga_indvars_iv_replace_phi_triangular14_q = 32'b0;
        endcase
    end

    // i_unnamed_triangular18_cmp_sign(LOGICAL,159)@4
    assign i_unnamed_triangular18_cmp_sign_q = $unsigned(i_fpga_indvars_iv_replace_phi_triangular14_q[31:31]);

    // i_smin_triangular20(MUX,55)@4 + 1
    assign i_smin_triangular20_s = i_unnamed_triangular18_cmp_sign_q;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_smin_triangular20_s)
                1'b0 : i_smin_triangular20_q <= c_i32_070_q;
                1'b1 : i_smin_triangular20_q <= i_fpga_indvars_iv_replace_phi_triangular14_q;
                default : i_smin_triangular20_q <= 32'b0;
            endcase
        end
    end

    // redist20_i_fpga_indvars_iv_replace_phi_triangular14_q_1(DELAY,181)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist20_i_fpga_indvars_iv_replace_phi_triangular14_q_1_q <= $unsigned(i_fpga_indvars_iv_replace_phi_triangular14_q);
        end
    end

    // i_unnamed_triangular21(SUB,60)@5
    assign i_unnamed_triangular21_a = {1'b0, redist20_i_fpga_indvars_iv_replace_phi_triangular14_q_1_q};
    assign i_unnamed_triangular21_b = {1'b0, i_smin_triangular20_q};
    assign i_unnamed_triangular21_o = $unsigned(i_unnamed_triangular21_a) - $unsigned(i_unnamed_triangular21_b);
    assign i_unnamed_triangular21_q = i_unnamed_triangular21_o[32:0];

    // bgTrunc_i_unnamed_triangular21_sel_x(BITSELECT,81)@5
    assign bgTrunc_i_unnamed_triangular21_sel_x_b = $unsigned(i_unnamed_triangular21_q[31:0]);

    // i_unnamed_triangular22_sel_x(BITSELECT,119)@5
    assign i_unnamed_triangular22_sel_x_b = {1'b0, bgTrunc_i_unnamed_triangular21_sel_x_b[31:0]};

    // i_unnamed_triangular22_vt_select_31(BITSELECT,64)@5
    assign i_unnamed_triangular22_vt_select_31_b = i_unnamed_triangular22_sel_x_b[31:0];

    // redist15_i_unnamed_triangular22_vt_select_31_b_1(DELAY,176)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist15_i_unnamed_triangular22_vt_select_31_b_1_q <= $unsigned(i_unnamed_triangular22_vt_select_31_b);
        end
    end

    // i_unnamed_triangular22_vt_join(BITJOIN,63)@6
    assign i_unnamed_triangular22_vt_join_q = {GND_q, redist15_i_unnamed_triangular22_vt_select_31_b_1_q};

    // i_unnamed_triangular23(ADD,65)@6
    assign i_unnamed_triangular23_a = {1'b0, i_unnamed_triangular22_vt_join_q};
    assign i_unnamed_triangular23_b = {1'b0, c_i33_171_q};
    assign i_unnamed_triangular23_o = $unsigned(i_unnamed_triangular23_a) + $unsigned(i_unnamed_triangular23_b);
    assign i_unnamed_triangular23_q = i_unnamed_triangular23_o[33:0];

    // bgTrunc_i_unnamed_triangular23_sel_x(BITSELECT,82)@6
    assign bgTrunc_i_unnamed_triangular23_sel_x_b = i_unnamed_triangular23_q[32:0];

    // sync_out_aunroll_x(GPOUT,120)@6
    assign out_c0_exi11_0_tpl = GND_q;
    assign out_c0_exi11_1_tpl = bgTrunc_i_unnamed_triangular23_sel_x_b;
    assign out_c0_exi11_2_tpl = redist13_bgTrunc_i_i_018_triangular24_sel_x_b_2_q;
    assign out_c0_exi11_3_tpl = redist11_bgTrunc_i_sub3_triangular25_sel_x_b_2_q;
    assign out_c0_exi11_4_tpl = i_unnamed_triangular29_q;
    assign out_c0_exi11_5_tpl = redist14_i_unnamed_triangular33_q_2_q;
    assign out_c0_exi11_6_tpl = i_notcmp17_triangular35_q;
    assign out_c0_exi11_7_tpl = i_llvm_fpga_pop_i32_lim_ext25_pop14_triangular0_i_llvm_fpga_pop_i32_lim_ext25_pop14_triangular41_mux_x_q;
    assign out_c0_exi11_8_tpl = i_llvm_fpga_pop_i32_reorder_limiter_enter27_pop15_triangular0_i_llvm_fpga_pop_i32_reorder_limiter_enter27_pop15_triangular43_mux_x_q;
    assign out_c0_exi11_9_tpl = redist18_i_llvm_fpga_forked_triangular_b4_forked_triangular3_out_buffer_out_6_q;
    assign out_c0_exi11_10_tpl = redist0_sync_together83_aunroll_x_in_c0_eni3_2_tpl_6_outputreg0_q;
    assign out_c0_exi11_11_tpl = redist1_sync_together83_aunroll_x_in_c0_eni3_3_tpl_6_outputreg0_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_profile_loop_o_valid = redist6_sync_together83_aunroll_x_in_i_valid_6_q;
    assign out_triangular_B4_current_iter_isspec = i_triangular_b4_current_iter_isspec_triangular5_q;

endmodule
