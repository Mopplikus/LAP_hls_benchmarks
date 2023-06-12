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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body_covariances_c0_enter18934_covariance0
// Created for function/kernel covariance
// SystemVerilog created on Thu Apr 27 14:28:37 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_i_sfc_logic_s_c0_in_for_body_0000ter18934_covariance0 (
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_pipeline_dummy_out,
    output wire [0:0] out_pipeline_forked_out,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_c0_exi12_0_tpl,
    output wire [0:0] out_c0_exi12_1_tpl,
    output wire [0:0] out_c0_exi12_2_tpl,
    output wire [31:0] out_c0_exi12_3_tpl,
    output wire [31:0] out_c0_exi12_4_tpl,
    output wire [0:0] out_c0_exi12_5_tpl,
    output wire [0:0] out_c0_exi12_6_tpl,
    output wire [0:0] out_c0_exi12_7_tpl,
    output wire [0:0] out_c0_exi12_8_tpl,
    output wire [31:0] out_c0_exi12_9_tpl,
    output wire [0:0] out_c0_exi12_10_tpl,
    output wire [0:0] out_c0_exi12_11_tpl,
    output wire [0:0] out_c0_exi12_12_tpl,
    output wire [0:0] out_covariance_B3_current_iter_isspec,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_profile_loop_o_valid,
    input wire [0:0] in_buffer_in,
    input wire [0:0] in_c0_eni5_0_tpl,
    input wire [0:0] in_c0_eni5_1_tpl,
    input wire [31:0] in_c0_eni5_2_tpl,
    input wire [0:0] in_c0_eni5_3_tpl,
    input wire [0:0] in_c0_eni5_4_tpl,
    input wire [0:0] in_c0_eni5_5_tpl,
    input wire [0:0] in_dummy_in,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_050_q;
    wire [31:0] c_i32_151_q;
    wire [5:0] c_i6_149_q;
    wire [5:0] c_i6_3047_q;
    wire [0:0] i_covariance_b3_current_iter_isspec_covariance5_q;
    wire [0:0] i_covariance_b3_next_iter_isreal_covariance7_q;
    wire [6:0] i_fpga_indvars_iv_next9_covariance14_a;
    wire [6:0] i_fpga_indvars_iv_next9_covariance14_b;
    logic [6:0] i_fpga_indvars_iv_next9_covariance14_o;
    wire [6:0] i_fpga_indvars_iv_next9_covariance14_q;
    wire [32:0] i_inc22_covariance17_a;
    wire [32:0] i_inc22_covariance17_b;
    logic [32:0] i_inc22_covariance17_o;
    wire [32:0] i_inc22_covariance17_q;
    wire [0:0] i_llvm_fpga_dummy_thread_covariance_b3_dummy_covariance2_out_dummy_out;
    wire [0:0] i_llvm_fpga_forked_covariance_b3_forked_covariance3_out_buffer_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going45_covariance6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going45_covariance6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going45_covariance6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going45_covariance6_out_pipeline_dummy_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going45_covariance6_out_pipeline_forked_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going45_covariance6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond46_covariance13_out_feedback_out_13;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond46_covariance13_out_feedback_valid_out_13;
    wire [0:0] i_notcmp43_covariance12_q;
    wire [5:0] bgTrunc_i_fpga_indvars_iv_next9_covariance14_sel_x_b;
    wire [31:0] bgTrunc_i_inc22_covariance17_sel_x_b;
    wire [0:0] i_llvm_fpga_pop_coalesce_i1_covariance_b3_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b3_current_iter_isreal_covariance4_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_coalesce_i1_covariance_b3_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b3_current_iter_isreal_covariance4_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi1_pop1658_pop24_covariance0_i_llvm_fpga_pop_i1_memdep_phi1_pop1658_pop24_covariance21_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi1_pop1658_pop24_covariance0_i_llvm_fpga_pop_i1_memdep_phi1_pop1658_pop24_covariance21_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop1761_pop25_covariance0_i_llvm_fpga_pop_i1_memdep_phi2_pop1761_pop25_covariance23_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop1761_pop25_covariance0_i_llvm_fpga_pop_i1_memdep_phi2_pop1761_pop25_covariance23_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi4_pop1864_pop26_covariance0_i_llvm_fpga_pop_i1_memdep_phi4_pop1864_pop26_covariance25_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi4_pop1864_pop26_covariance0_i_llvm_fpga_pop_i1_memdep_phi4_pop1864_pop26_covariance25_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_j_039_pop21_covariance0_i_llvm_fpga_pop_i32_j_039_pop21_covariance16_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_j_039_pop21_covariance0_i_llvm_fpga_pop_i32_j_039_pop21_covariance16_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_lim_ext52_pop23_covariance0_i_llvm_fpga_pop_i32_lim_ext52_pop23_covariance19_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_lim_ext52_pop23_covariance0_i_llvm_fpga_pop_i32_lim_ext52_pop23_covariance19_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv8_pop20_covariance0_i_llvm_fpga_pop_i6_fpga_indvars_iv8_pop20_covariance9_mux_x_s;
    reg [5:0] i_llvm_fpga_pop_i6_fpga_indvars_iv8_pop20_covariance0_i_llvm_fpga_pop_i6_fpga_indvars_iv8_pop20_covariance9_mux_x_q;
    wire [6:0] i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance0_c_i7_03_x_q;
    wire [7:0] i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance1_x_i_valid;
    wire i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance1_x_i_stall;
    wire i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance0_inv_pred_x_q;
    wire [0:0] i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi1_pop1658_push24_covariance0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi1_pop1658_push24_covariance0_i_llvm_fpga_push_i1_memdep_phi1_pop1658_push24_covariance1_x_i_valid;
    wire i_llvm_fpga_push_i1_memdep_phi1_pop1658_push24_covariance0_i_llvm_fpga_push_i1_memdep_phi1_pop1658_push24_covariance1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi1_pop1658_push24_covariance0_i_llvm_fpga_push_i1_memdep_phi1_pop1658_push24_covariance1_x_i_stall;
    wire i_llvm_fpga_push_i1_memdep_phi1_pop1658_push24_covariance0_i_llvm_fpga_push_i1_memdep_phi1_pop1658_push24_covariance1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi1_pop1658_push24_covariance0_i_llvm_fpga_push_i1_memdep_phi1_pop1658_push24_covariance1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi1_pop1658_push24_covariance0_i_llvm_fpga_push_i1_memdep_phi1_pop1658_push24_covariance1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi1_pop1658_push24_covariance0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi2_pop1761_push25_covariance0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1761_push25_covariance0_i_llvm_fpga_push_i1_memdep_phi2_pop1761_push25_covariance1_x_i_valid;
    wire i_llvm_fpga_push_i1_memdep_phi2_pop1761_push25_covariance0_i_llvm_fpga_push_i1_memdep_phi2_pop1761_push25_covariance1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1761_push25_covariance0_i_llvm_fpga_push_i1_memdep_phi2_pop1761_push25_covariance1_x_i_stall;
    wire i_llvm_fpga_push_i1_memdep_phi2_pop1761_push25_covariance0_i_llvm_fpga_push_i1_memdep_phi2_pop1761_push25_covariance1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi2_pop1761_push25_covariance0_i_llvm_fpga_push_i1_memdep_phi2_pop1761_push25_covariance1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi2_pop1761_push25_covariance0_i_llvm_fpga_push_i1_memdep_phi2_pop1761_push25_covariance1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1761_push25_covariance0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi4_pop1864_push26_covariance0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi4_pop1864_push26_covariance0_i_llvm_fpga_push_i1_memdep_phi4_pop1864_push26_covariance1_x_i_valid;
    wire i_llvm_fpga_push_i1_memdep_phi4_pop1864_push26_covariance0_i_llvm_fpga_push_i1_memdep_phi4_pop1864_push26_covariance1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi4_pop1864_push26_covariance0_i_llvm_fpga_push_i1_memdep_phi4_pop1864_push26_covariance1_x_i_stall;
    wire i_llvm_fpga_push_i1_memdep_phi4_pop1864_push26_covariance0_i_llvm_fpga_push_i1_memdep_phi4_pop1864_push26_covariance1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi4_pop1864_push26_covariance0_i_llvm_fpga_push_i1_memdep_phi4_pop1864_push26_covariance1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi4_pop1864_push26_covariance0_i_llvm_fpga_push_i1_memdep_phi4_pop1864_push26_covariance1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi4_pop1864_push26_covariance0_adapt_scalar_trunc4_sel_x_b;
    wire [0:0] i_llvm_fpga_push_i32_j_039_push21_covariance0_i_llvm_fpga_push_i32_j_039_push21_covariance1_x_i_valid;
    wire i_llvm_fpga_push_i32_j_039_push21_covariance0_i_llvm_fpga_push_i32_j_039_push21_covariance1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_j_039_push21_covariance0_i_llvm_fpga_push_i32_j_039_push21_covariance1_x_i_stall;
    wire i_llvm_fpga_push_i32_j_039_push21_covariance0_i_llvm_fpga_push_i32_j_039_push21_covariance1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_j_039_push21_covariance0_i_llvm_fpga_push_i32_j_039_push21_covariance1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_j_039_push21_covariance0_i_llvm_fpga_push_i32_j_039_push21_covariance1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i32_lim_ext52_push23_covariance0_i_llvm_fpga_push_i32_lim_ext52_push23_covariance1_x_i_valid;
    wire i_llvm_fpga_push_i32_lim_ext52_push23_covariance0_i_llvm_fpga_push_i32_lim_ext52_push23_covariance1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_lim_ext52_push23_covariance0_i_llvm_fpga_push_i32_lim_ext52_push23_covariance1_x_i_stall;
    wire i_llvm_fpga_push_i32_lim_ext52_push23_covariance0_i_llvm_fpga_push_i32_lim_ext52_push23_covariance1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_lim_ext52_push23_covariance0_i_llvm_fpga_push_i32_lim_ext52_push23_covariance1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_lim_ext52_push23_covariance0_i_llvm_fpga_push_i32_lim_ext52_push23_covariance1_x_o_data;
    wire [1:0] i_llvm_fpga_push_i6_fpga_indvars_iv8_push20_covariance0_c_i2_03_x_q;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv8_push20_covariance0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv8_push20_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv8_push20_covariance1_x_i_valid;
    wire i_llvm_fpga_push_i6_fpga_indvars_iv8_push20_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv8_push20_covariance1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv8_push20_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv8_push20_covariance1_x_i_stall;
    wire i_llvm_fpga_push_i6_fpga_indvars_iv8_push20_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv8_push20_covariance1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv8_push20_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv8_push20_covariance1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv8_push20_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv8_push20_covariance1_x_o_data;
    wire [5:0] i_llvm_fpga_push_i6_fpga_indvars_iv8_push20_covariance0_adapt_scalar_trunc4_sel_x_b;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg6_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg7_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg8_q;
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
    wire [0:0] i_exitcond10_covariance10_cmp_nsign_q;
    reg [31:0] redist0_sync_together56_aunroll_x_in_c0_eni5_2_tpl_4_q;
    reg [31:0] redist0_sync_together56_aunroll_x_in_c0_eni5_2_tpl_4_delay_0;
    reg [31:0] redist0_sync_together56_aunroll_x_in_c0_eni5_2_tpl_4_delay_1;
    reg [0:0] redist1_sync_together56_aunroll_x_in_c0_eni5_3_tpl_4_q;
    reg [0:0] redist1_sync_together56_aunroll_x_in_c0_eni5_3_tpl_4_delay_0;
    reg [0:0] redist1_sync_together56_aunroll_x_in_c0_eni5_3_tpl_4_delay_1;
    reg [0:0] redist1_sync_together56_aunroll_x_in_c0_eni5_3_tpl_4_delay_2;
    reg [0:0] redist2_sync_together56_aunroll_x_in_c0_eni5_4_tpl_4_q;
    reg [0:0] redist2_sync_together56_aunroll_x_in_c0_eni5_4_tpl_4_delay_0;
    reg [0:0] redist2_sync_together56_aunroll_x_in_c0_eni5_4_tpl_4_delay_1;
    reg [0:0] redist2_sync_together56_aunroll_x_in_c0_eni5_4_tpl_4_delay_2;
    reg [0:0] redist3_sync_together56_aunroll_x_in_c0_eni5_5_tpl_4_q;
    reg [0:0] redist3_sync_together56_aunroll_x_in_c0_eni5_5_tpl_4_delay_0;
    reg [0:0] redist3_sync_together56_aunroll_x_in_c0_eni5_5_tpl_4_delay_1;
    reg [0:0] redist3_sync_together56_aunroll_x_in_c0_eni5_5_tpl_4_delay_2;
    reg [0:0] redist4_sync_together56_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist4_sync_together56_aunroll_x_in_i_valid_2_delay_0;
    reg [0:0] redist5_sync_together56_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist6_sync_together56_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist7_i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance0_inv_pred_x_q_2_q;
    reg [0:0] redist7_i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance0_inv_pred_x_q_2_delay_0;
    reg [0:0] redist8_i_llvm_fpga_forked_covariance_b3_forked_covariance3_out_buffer_out_4_q;
    reg [0:0] redist8_i_llvm_fpga_forked_covariance_b3_forked_covariance3_out_buffer_out_4_delay_0;
    reg [0:0] redist8_i_llvm_fpga_forked_covariance_b3_forked_covariance3_out_buffer_out_4_delay_1;
    reg [0:0] redist8_i_llvm_fpga_forked_covariance_b3_forked_covariance3_out_buffer_out_4_delay_2;
    reg [0:0] redist9_i_llvm_fpga_dummy_thread_covariance_b3_dummy_covariance2_out_dummy_out_4_q;
    reg [0:0] redist9_i_llvm_fpga_dummy_thread_covariance_b3_dummy_covariance2_out_dummy_out_4_delay_0;
    reg [0:0] redist9_i_llvm_fpga_dummy_thread_covariance_b3_dummy_covariance2_out_dummy_out_4_delay_1;
    reg [0:0] redist9_i_llvm_fpga_dummy_thread_covariance_b3_dummy_covariance2_out_dummy_out_4_delay_2;
    reg [31:0] redist0_sync_together56_aunroll_x_in_c0_eni5_2_tpl_4_inputreg0_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist4_sync_together56_aunroll_x_in_i_valid_2(DELAY,129)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist4_sync_together56_aunroll_x_in_i_valid_2_delay_0 <= '0;
        end
        else
        begin
            redist4_sync_together56_aunroll_x_in_i_valid_2_delay_0 <= $unsigned(in_i_valid);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_sync_together56_aunroll_x_in_i_valid_2_q <= redist4_sync_together56_aunroll_x_in_i_valid_2_delay_0;
        end
    end

    // redist5_sync_together56_aunroll_x_in_i_valid_3(DELAY,130)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist5_sync_together56_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist5_sync_together56_aunroll_x_in_i_valid_3_q <= $unsigned(redist4_sync_together56_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg2(REG,94)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist5_sync_together56_aunroll_x_in_i_valid_3_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // valid_fanout_reg6(REG,98)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist5_sync_together56_aunroll_x_in_i_valid_3_q);
        end
    end

    // c_i6_3047(CONSTANT,27)
    assign c_i6_3047_q = $unsigned(6'b011110);

    // i_llvm_fpga_push_i6_fpga_indvars_iv8_push20_covariance0_c_i2_03_x(CONSTANT,85)
    assign i_llvm_fpga_push_i6_fpga_indvars_iv8_push20_covariance0_c_i2_03_x_q = $unsigned(2'b00);

    // c_i6_149(CONSTANT,26)
    assign c_i6_149_q = $unsigned(6'b111111);

    // i_fpga_indvars_iv_next9_covariance14(ADD,31)@4
    assign i_fpga_indvars_iv_next9_covariance14_a = {1'b0, i_llvm_fpga_pop_i6_fpga_indvars_iv8_pop20_covariance0_i_llvm_fpga_pop_i6_fpga_indvars_iv8_pop20_covariance9_mux_x_q};
    assign i_fpga_indvars_iv_next9_covariance14_b = {1'b0, c_i6_149_q};
    assign i_fpga_indvars_iv_next9_covariance14_o = $unsigned(i_fpga_indvars_iv_next9_covariance14_a) + $unsigned(i_fpga_indvars_iv_next9_covariance14_b);
    assign i_fpga_indvars_iv_next9_covariance14_q = i_fpga_indvars_iv_next9_covariance14_o[6:0];

    // bgTrunc_i_fpga_indvars_iv_next9_covariance14_sel_x(BITSELECT,41)@4
    assign bgTrunc_i_fpga_indvars_iv_next9_covariance14_sel_x_b = i_fpga_indvars_iv_next9_covariance14_q[5:0];

    // i_llvm_fpga_push_i6_fpga_indvars_iv8_push20_covariance0_element_extension2_x(BITJOIN,86)@4
    assign i_llvm_fpga_push_i6_fpga_indvars_iv8_push20_covariance0_element_extension2_x_q = {i_llvm_fpga_push_i6_fpga_indvars_iv8_push20_covariance0_c_i2_03_x_q, bgTrunc_i_fpga_indvars_iv_next9_covariance14_sel_x_b};

    // i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance0_inv_pred_x(LOGICAL,58)@1
    assign i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance0_inv_pred_x_q = ~ (GND_q);

    // valid_fanout_reg8(REG,100)@0 + 1
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

    // redist7_i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance0_inv_pred_x_q_2(DELAY,132)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance0_inv_pred_x_q_2_delay_0 <= $unsigned(i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance0_inv_pred_x_q);
            redist7_i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance0_inv_pred_x_q_2_q <= redist7_i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance0_inv_pred_x_q_2_delay_0;
        end
    end

    // valid_fanout_reg7(REG,99)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist4_sync_together56_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i6_fpga_indvars_iv8_push20_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv8_push20_covariance1_x(FIFODELAY,87)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i6_fpga_indvars_iv8_push20_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv8_push20_covariance1_x_i_stall = ~ (valid_fanout_reg8_q & i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance0_inv_pred_x_q);
    assign i_llvm_fpga_push_i6_fpga_indvars_iv8_push20_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv8_push20_covariance1_x_i_valid = valid_fanout_reg7_q & redist7_i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i6_fpga_indvars_iv8_push20_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv8_push20_covariance1_x_i_data = i_llvm_fpga_push_i6_fpga_indvars_iv8_push20_covariance0_element_extension2_x_q;
    assign i_llvm_fpga_push_i6_fpga_indvars_iv8_push20_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv8_push20_covariance1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i6_fpga_indvars_iv8_push20_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv8_push20_covariance1_x_i_valid[0];
    assign i_llvm_fpga_push_i6_fpga_indvars_iv8_push20_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv8_push20_covariance1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i6_fpga_indvars_iv8_push20_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv8_push20_covariance1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i6_fpga_indvars_iv8_push20_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv8_push20_covariance1_x (
        .i_valid(i_llvm_fpga_push_i6_fpga_indvars_iv8_push20_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv8_push20_covariance1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i6_fpga_indvars_iv8_push20_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv8_push20_covariance1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i6_fpga_indvars_iv8_push20_covariance0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i6_fpga_indvars_iv8_push20_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv8_push20_covariance1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i6_fpga_indvars_iv8_push20_covariance0_adapt_scalar_trunc4_sel_x(BITSELECT,89)@4
    assign i_llvm_fpga_push_i6_fpga_indvars_iv8_push20_covariance0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i6_fpga_indvars_iv8_push20_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv8_push20_covariance1_x_o_data[5:0];

    // i_llvm_fpga_pop_i6_fpga_indvars_iv8_pop20_covariance0_i_llvm_fpga_pop_i6_fpga_indvars_iv8_pop20_covariance9_mux_x(MUX,53)@4
    assign i_llvm_fpga_pop_i6_fpga_indvars_iv8_pop20_covariance0_i_llvm_fpga_pop_i6_fpga_indvars_iv8_pop20_covariance9_mux_x_s = redist8_i_llvm_fpga_forked_covariance_b3_forked_covariance3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i6_fpga_indvars_iv8_pop20_covariance0_i_llvm_fpga_pop_i6_fpga_indvars_iv8_pop20_covariance9_mux_x_s or i_llvm_fpga_push_i6_fpga_indvars_iv8_push20_covariance0_adapt_scalar_trunc4_sel_x_b or c_i6_3047_q)
    begin
        unique case (i_llvm_fpga_pop_i6_fpga_indvars_iv8_pop20_covariance0_i_llvm_fpga_pop_i6_fpga_indvars_iv8_pop20_covariance9_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i6_fpga_indvars_iv8_pop20_covariance0_i_llvm_fpga_pop_i6_fpga_indvars_iv8_pop20_covariance9_mux_x_q = i_llvm_fpga_push_i6_fpga_indvars_iv8_push20_covariance0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i6_fpga_indvars_iv8_pop20_covariance0_i_llvm_fpga_pop_i6_fpga_indvars_iv8_pop20_covariance9_mux_x_q = c_i6_3047_q;
            default : i_llvm_fpga_pop_i6_fpga_indvars_iv8_pop20_covariance0_i_llvm_fpga_pop_i6_fpga_indvars_iv8_pop20_covariance9_mux_x_q = 6'b0;
        endcase
    end

    // i_exitcond10_covariance10_cmp_nsign(LOGICAL,124)@4
    assign i_exitcond10_covariance10_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i6_fpga_indvars_iv8_pop20_covariance0_i_llvm_fpga_pop_i6_fpga_indvars_iv8_pop20_covariance9_mux_x_q[5:5]));

    // i_llvm_fpga_push_i1_notexitcond46_covariance13(BLACKBOX,36)@4
    // out out_feedback_out_13@20000000
    // out out_feedback_valid_out_13@20000000
    covariance_i_llvm_fpga_push_i1_notexitcond46_0 thei_llvm_fpga_push_i1_notexitcond46_covariance13 (
        .in_data_in(i_exitcond10_covariance10_cmp_nsign_q),
        .in_feedback_stall_in_13(i_llvm_fpga_pipeline_keep_going45_covariance6_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_13(i_llvm_fpga_push_i1_notexitcond46_covariance13_out_feedback_out_13),
        .out_feedback_valid_out_13(i_llvm_fpga_push_i1_notexitcond46_covariance13_out_feedback_valid_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_dummy_thread_covariance_b3_dummy_covariance2(BLACKBOX,33)@0
    // in in_stall_in@20000000
    covariance_i_llvm_fpga_dummy_thread_b3_dummy_covariance0 thei_llvm_fpga_dummy_thread_covariance_b3_dummy_covariance2 (
        .in_dummy_in(in_dummy_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dummy_out(i_llvm_fpga_dummy_thread_covariance_b3_dummy_covariance2_out_dummy_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist9_i_llvm_fpga_dummy_thread_covariance_b3_dummy_covariance2_out_dummy_out_4(DELAY,134)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist9_i_llvm_fpga_dummy_thread_covariance_b3_dummy_covariance2_out_dummy_out_4_delay_0 <= $unsigned(i_llvm_fpga_dummy_thread_covariance_b3_dummy_covariance2_out_dummy_out);
            redist9_i_llvm_fpga_dummy_thread_covariance_b3_dummy_covariance2_out_dummy_out_4_delay_1 <= redist9_i_llvm_fpga_dummy_thread_covariance_b3_dummy_covariance2_out_dummy_out_4_delay_0;
            redist9_i_llvm_fpga_dummy_thread_covariance_b3_dummy_covariance2_out_dummy_out_4_delay_2 <= redist9_i_llvm_fpga_dummy_thread_covariance_b3_dummy_covariance2_out_dummy_out_4_delay_1;
            redist9_i_llvm_fpga_dummy_thread_covariance_b3_dummy_covariance2_out_dummy_out_4_q <= redist9_i_llvm_fpga_dummy_thread_covariance_b3_dummy_covariance2_out_dummy_out_4_delay_2;
        end
    end

    // i_llvm_fpga_forked_covariance_b3_forked_covariance3(BLACKBOX,34)@0
    // in in_stall_in@20000000
    covariance_i_llvm_fpga_forked_b3_forked_covariance0 thei_llvm_fpga_forked_covariance_b3_forked_covariance3 (
        .in_buffer_in(in_buffer_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_buffer_out(i_llvm_fpga_forked_covariance_b3_forked_covariance3_out_buffer_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_i_llvm_fpga_forked_covariance_b3_forked_covariance3_out_buffer_out_4(DELAY,133)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_i_llvm_fpga_forked_covariance_b3_forked_covariance3_out_buffer_out_4_delay_0 <= $unsigned(i_llvm_fpga_forked_covariance_b3_forked_covariance3_out_buffer_out);
            redist8_i_llvm_fpga_forked_covariance_b3_forked_covariance3_out_buffer_out_4_delay_1 <= redist8_i_llvm_fpga_forked_covariance_b3_forked_covariance3_out_buffer_out_4_delay_0;
            redist8_i_llvm_fpga_forked_covariance_b3_forked_covariance3_out_buffer_out_4_delay_2 <= redist8_i_llvm_fpga_forked_covariance_b3_forked_covariance3_out_buffer_out_4_delay_1;
            redist8_i_llvm_fpga_forked_covariance_b3_forked_covariance3_out_buffer_out_4_q <= redist8_i_llvm_fpga_forked_covariance_b3_forked_covariance3_out_buffer_out_4_delay_2;
        end
    end

    // i_llvm_fpga_pipeline_keep_going45_covariance6(BLACKBOX,35)@4
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_dummy_out@20000000
    // out out_pipeline_forked_out@20000000
    // out out_pipeline_valid_out@20000000
    covariance_i_llvm_fpga_pipeline_keep_going45_0 thei_llvm_fpga_pipeline_keep_going45_covariance6 (
        .in_data_in(redist8_i_llvm_fpga_forked_covariance_b3_forked_covariance3_out_buffer_out_4_q),
        .in_dummy_in(redist9_i_llvm_fpga_dummy_thread_covariance_b3_dummy_covariance2_out_dummy_out_4_q),
        .in_forked_in(redist8_i_llvm_fpga_forked_covariance_b3_forked_covariance3_out_buffer_out_4_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond46_covariance13_out_feedback_out_13),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond46_covariance13_out_feedback_valid_out_13),
        .in_pipeline_stall_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going45_covariance6_out_data_out),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going45_covariance6_out_exiting_valid_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going45_covariance6_out_not_exitcond_stall_out),
        .out_pipeline_dummy_out(i_llvm_fpga_pipeline_keep_going45_covariance6_out_pipeline_dummy_out),
        .out_pipeline_forked_out(i_llvm_fpga_pipeline_keep_going45_covariance6_out_pipeline_forked_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going45_covariance6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,39)
    assign out_exiting_valid_out = i_llvm_fpga_pipeline_keep_going45_covariance6_out_exiting_valid_out;

    // dupName_0_regfree_osync_x(GPOUT,44)
    assign out_pipeline_dummy_out = i_llvm_fpga_pipeline_keep_going45_covariance6_out_pipeline_dummy_out;

    // dupName_1_regfree_osync_x(GPOUT,45)
    assign out_pipeline_forked_out = i_llvm_fpga_pipeline_keep_going45_covariance6_out_pipeline_forked_out;

    // dupName_2_regfree_osync_x(GPOUT,46)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going45_covariance6_out_pipeline_valid_out;

    // redist6_sync_together56_aunroll_x_in_i_valid_4(DELAY,131)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_sync_together56_aunroll_x_in_i_valid_4_q <= $unsigned(redist5_sync_together56_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg0(REG,92)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist5_sync_together56_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance0_c_i7_03_x(CONSTANT,55)
    assign i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance0_c_i7_03_x_q = $unsigned(7'b0000000);

    // i_covariance_b3_next_iter_isreal_covariance7(LOGICAL,29)@4
    assign i_covariance_b3_next_iter_isreal_covariance7_q = i_llvm_fpga_pop_coalesce_i1_covariance_b3_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b3_current_iter_isreal_covariance4_mux_x_q & i_llvm_fpga_pipeline_keep_going45_covariance6_out_data_out;

    // i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance0_element_extension2_x(BITJOIN,56)@4
    assign i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance0_element_extension2_x_q = {i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance0_c_i7_03_x_q, i_covariance_b3_next_iter_isreal_covariance7_q};

    // valid_fanout_reg4(REG,96)@0 + 1
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

    // valid_fanout_reg3(REG,95)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist4_sync_together56_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance1_x(FIFODELAY,57)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance1_x_i_stall = ~ (valid_fanout_reg4_q & i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance1_x_i_valid = valid_fanout_reg3_q & redist7_i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance1_x_i_data = i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance1_x (
        .i_valid(i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance0_adapt_scalar_trunc4_sel_x(BITSELECT,59)@4
    assign i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance1_x_o_data[0:0];

    // i_llvm_fpga_pop_coalesce_i1_covariance_b3_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b3_current_iter_isreal_covariance4_mux_x(MUX,47)@4
    assign i_llvm_fpga_pop_coalesce_i1_covariance_b3_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b3_current_iter_isreal_covariance4_mux_x_s = redist8_i_llvm_fpga_forked_covariance_b3_forked_covariance3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_coalesce_i1_covariance_b3_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b3_current_iter_isreal_covariance4_mux_x_s or i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance0_adapt_scalar_trunc4_sel_x_b or VCC_q)
    begin
        unique case (i_llvm_fpga_pop_coalesce_i1_covariance_b3_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b3_current_iter_isreal_covariance4_mux_x_s)
            1'b0 : i_llvm_fpga_pop_coalesce_i1_covariance_b3_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b3_current_iter_isreal_covariance4_mux_x_q = i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_coalesce_i1_covariance_b3_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b3_current_iter_isreal_covariance4_mux_x_q = VCC_q;
            default : i_llvm_fpga_pop_coalesce_i1_covariance_b3_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b3_current_iter_isreal_covariance4_mux_x_q = 1'b0;
        endcase
    end

    // i_covariance_b3_current_iter_isspec_covariance5(LOGICAL,28)@4
    assign i_covariance_b3_current_iter_isspec_covariance5_q = i_llvm_fpga_pop_coalesce_i1_covariance_b3_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b3_current_iter_isreal_covariance4_mux_x_q ^ VCC_q;

    // redist3_sync_together56_aunroll_x_in_c0_eni5_5_tpl_4(DELAY,128)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_sync_together56_aunroll_x_in_c0_eni5_5_tpl_4_delay_0 <= $unsigned(in_c0_eni5_5_tpl);
            redist3_sync_together56_aunroll_x_in_c0_eni5_5_tpl_4_delay_1 <= redist3_sync_together56_aunroll_x_in_c0_eni5_5_tpl_4_delay_0;
            redist3_sync_together56_aunroll_x_in_c0_eni5_5_tpl_4_delay_2 <= redist3_sync_together56_aunroll_x_in_c0_eni5_5_tpl_4_delay_1;
            redist3_sync_together56_aunroll_x_in_c0_eni5_5_tpl_4_q <= redist3_sync_together56_aunroll_x_in_c0_eni5_5_tpl_4_delay_2;
        end
    end

    // redist2_sync_together56_aunroll_x_in_c0_eni5_4_tpl_4(DELAY,127)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_sync_together56_aunroll_x_in_c0_eni5_4_tpl_4_delay_0 <= $unsigned(in_c0_eni5_4_tpl);
            redist2_sync_together56_aunroll_x_in_c0_eni5_4_tpl_4_delay_1 <= redist2_sync_together56_aunroll_x_in_c0_eni5_4_tpl_4_delay_0;
            redist2_sync_together56_aunroll_x_in_c0_eni5_4_tpl_4_delay_2 <= redist2_sync_together56_aunroll_x_in_c0_eni5_4_tpl_4_delay_1;
            redist2_sync_together56_aunroll_x_in_c0_eni5_4_tpl_4_q <= redist2_sync_together56_aunroll_x_in_c0_eni5_4_tpl_4_delay_2;
        end
    end

    // redist1_sync_together56_aunroll_x_in_c0_eni5_3_tpl_4(DELAY,126)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_together56_aunroll_x_in_c0_eni5_3_tpl_4_delay_0 <= $unsigned(in_c0_eni5_3_tpl);
            redist1_sync_together56_aunroll_x_in_c0_eni5_3_tpl_4_delay_1 <= redist1_sync_together56_aunroll_x_in_c0_eni5_3_tpl_4_delay_0;
            redist1_sync_together56_aunroll_x_in_c0_eni5_3_tpl_4_delay_2 <= redist1_sync_together56_aunroll_x_in_c0_eni5_3_tpl_4_delay_1;
            redist1_sync_together56_aunroll_x_in_c0_eni5_3_tpl_4_q <= redist1_sync_together56_aunroll_x_in_c0_eni5_3_tpl_4_delay_2;
        end
    end

    // redist0_sync_together56_aunroll_x_in_c0_eni5_2_tpl_4_inputreg0(DELAY,135)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sync_together56_aunroll_x_in_c0_eni5_2_tpl_4_inputreg0_q <= $unsigned(in_c0_eni5_2_tpl);
        end
    end

    // redist0_sync_together56_aunroll_x_in_c0_eni5_2_tpl_4(DELAY,125)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sync_together56_aunroll_x_in_c0_eni5_2_tpl_4_delay_0 <= $unsigned(redist0_sync_together56_aunroll_x_in_c0_eni5_2_tpl_4_inputreg0_q);
            redist0_sync_together56_aunroll_x_in_c0_eni5_2_tpl_4_delay_1 <= redist0_sync_together56_aunroll_x_in_c0_eni5_2_tpl_4_delay_0;
            redist0_sync_together56_aunroll_x_in_c0_eni5_2_tpl_4_q <= redist0_sync_together56_aunroll_x_in_c0_eni5_2_tpl_4_delay_1;
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi4_pop1864_push26_covariance0_element_extension2_x(BITJOIN,74)@4
    assign i_llvm_fpga_push_i1_memdep_phi4_pop1864_push26_covariance0_element_extension2_x_q = {i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance0_c_i7_03_x_q, i_llvm_fpga_pop_i1_memdep_phi4_pop1864_pop26_covariance0_i_llvm_fpga_pop_i1_memdep_phi4_pop1864_pop26_covariance25_mux_x_q};

    // valid_fanout_reg23(REG,115)@0 + 1
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

    // valid_fanout_reg22(REG,114)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg22_q <= $unsigned(redist4_sync_together56_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi4_pop1864_push26_covariance0_i_llvm_fpga_push_i1_memdep_phi4_pop1864_push26_covariance1_x(FIFODELAY,75)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i1_memdep_phi4_pop1864_push26_covariance0_i_llvm_fpga_push_i1_memdep_phi4_pop1864_push26_covariance1_x_i_stall = ~ (valid_fanout_reg23_q & i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_memdep_phi4_pop1864_push26_covariance0_i_llvm_fpga_push_i1_memdep_phi4_pop1864_push26_covariance1_x_i_valid = valid_fanout_reg22_q & redist7_i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i1_memdep_phi4_pop1864_push26_covariance0_i_llvm_fpga_push_i1_memdep_phi4_pop1864_push26_covariance1_x_i_data = i_llvm_fpga_push_i1_memdep_phi4_pop1864_push26_covariance0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_memdep_phi4_pop1864_push26_covariance0_i_llvm_fpga_push_i1_memdep_phi4_pop1864_push26_covariance1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi4_pop1864_push26_covariance0_i_llvm_fpga_push_i1_memdep_phi4_pop1864_push26_covariance1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_memdep_phi4_pop1864_push26_covariance0_i_llvm_fpga_push_i1_memdep_phi4_pop1864_push26_covariance1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi4_pop1864_push26_covariance0_i_llvm_fpga_push_i1_memdep_phi4_pop1864_push26_covariance1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_memdep_phi4_pop1864_push26_covariance0_i_llvm_fpga_push_i1_memdep_phi4_pop1864_push26_covariance1_x (
        .i_valid(i_llvm_fpga_push_i1_memdep_phi4_pop1864_push26_covariance0_i_llvm_fpga_push_i1_memdep_phi4_pop1864_push26_covariance1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_memdep_phi4_pop1864_push26_covariance0_i_llvm_fpga_push_i1_memdep_phi4_pop1864_push26_covariance1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_memdep_phi4_pop1864_push26_covariance0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_memdep_phi4_pop1864_push26_covariance0_i_llvm_fpga_push_i1_memdep_phi4_pop1864_push26_covariance1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_memdep_phi4_pop1864_push26_covariance0_adapt_scalar_trunc4_sel_x(BITSELECT,77)@4
    assign i_llvm_fpga_push_i1_memdep_phi4_pop1864_push26_covariance0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_memdep_phi4_pop1864_push26_covariance0_i_llvm_fpga_push_i1_memdep_phi4_pop1864_push26_covariance1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_memdep_phi4_pop1864_pop26_covariance0_i_llvm_fpga_pop_i1_memdep_phi4_pop1864_pop26_covariance25_mux_x(MUX,50)@4
    assign i_llvm_fpga_pop_i1_memdep_phi4_pop1864_pop26_covariance0_i_llvm_fpga_pop_i1_memdep_phi4_pop1864_pop26_covariance25_mux_x_s = redist8_i_llvm_fpga_forked_covariance_b3_forked_covariance3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i1_memdep_phi4_pop1864_pop26_covariance0_i_llvm_fpga_pop_i1_memdep_phi4_pop1864_pop26_covariance25_mux_x_s or i_llvm_fpga_push_i1_memdep_phi4_pop1864_push26_covariance0_adapt_scalar_trunc4_sel_x_b or redist3_sync_together56_aunroll_x_in_c0_eni5_5_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i1_memdep_phi4_pop1864_pop26_covariance0_i_llvm_fpga_pop_i1_memdep_phi4_pop1864_pop26_covariance25_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_memdep_phi4_pop1864_pop26_covariance0_i_llvm_fpga_pop_i1_memdep_phi4_pop1864_pop26_covariance25_mux_x_q = i_llvm_fpga_push_i1_memdep_phi4_pop1864_push26_covariance0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_memdep_phi4_pop1864_pop26_covariance0_i_llvm_fpga_pop_i1_memdep_phi4_pop1864_pop26_covariance25_mux_x_q = redist3_sync_together56_aunroll_x_in_c0_eni5_5_tpl_4_q;
            default : i_llvm_fpga_pop_i1_memdep_phi4_pop1864_pop26_covariance0_i_llvm_fpga_pop_i1_memdep_phi4_pop1864_pop26_covariance25_mux_x_q = 1'b0;
        endcase
    end

    // i_llvm_fpga_push_i1_memdep_phi2_pop1761_push25_covariance0_element_extension2_x(BITJOIN,68)@4
    assign i_llvm_fpga_push_i1_memdep_phi2_pop1761_push25_covariance0_element_extension2_x_q = {i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance0_c_i7_03_x_q, i_llvm_fpga_pop_i1_memdep_phi2_pop1761_pop25_covariance0_i_llvm_fpga_pop_i1_memdep_phi2_pop1761_pop25_covariance23_mux_x_q};

    // valid_fanout_reg20(REG,112)@0 + 1
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

    // valid_fanout_reg19(REG,111)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(redist4_sync_together56_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi2_pop1761_push25_covariance0_i_llvm_fpga_push_i1_memdep_phi2_pop1761_push25_covariance1_x(FIFODELAY,69)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i1_memdep_phi2_pop1761_push25_covariance0_i_llvm_fpga_push_i1_memdep_phi2_pop1761_push25_covariance1_x_i_stall = ~ (valid_fanout_reg20_q & i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_memdep_phi2_pop1761_push25_covariance0_i_llvm_fpga_push_i1_memdep_phi2_pop1761_push25_covariance1_x_i_valid = valid_fanout_reg19_q & redist7_i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i1_memdep_phi2_pop1761_push25_covariance0_i_llvm_fpga_push_i1_memdep_phi2_pop1761_push25_covariance1_x_i_data = i_llvm_fpga_push_i1_memdep_phi2_pop1761_push25_covariance0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_memdep_phi2_pop1761_push25_covariance0_i_llvm_fpga_push_i1_memdep_phi2_pop1761_push25_covariance1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi2_pop1761_push25_covariance0_i_llvm_fpga_push_i1_memdep_phi2_pop1761_push25_covariance1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_memdep_phi2_pop1761_push25_covariance0_i_llvm_fpga_push_i1_memdep_phi2_pop1761_push25_covariance1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi2_pop1761_push25_covariance0_i_llvm_fpga_push_i1_memdep_phi2_pop1761_push25_covariance1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_memdep_phi2_pop1761_push25_covariance0_i_llvm_fpga_push_i1_memdep_phi2_pop1761_push25_covariance1_x (
        .i_valid(i_llvm_fpga_push_i1_memdep_phi2_pop1761_push25_covariance0_i_llvm_fpga_push_i1_memdep_phi2_pop1761_push25_covariance1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_memdep_phi2_pop1761_push25_covariance0_i_llvm_fpga_push_i1_memdep_phi2_pop1761_push25_covariance1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_memdep_phi2_pop1761_push25_covariance0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_memdep_phi2_pop1761_push25_covariance0_i_llvm_fpga_push_i1_memdep_phi2_pop1761_push25_covariance1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_memdep_phi2_pop1761_push25_covariance0_adapt_scalar_trunc4_sel_x(BITSELECT,71)@4
    assign i_llvm_fpga_push_i1_memdep_phi2_pop1761_push25_covariance0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_memdep_phi2_pop1761_push25_covariance0_i_llvm_fpga_push_i1_memdep_phi2_pop1761_push25_covariance1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_memdep_phi2_pop1761_pop25_covariance0_i_llvm_fpga_pop_i1_memdep_phi2_pop1761_pop25_covariance23_mux_x(MUX,49)@4
    assign i_llvm_fpga_pop_i1_memdep_phi2_pop1761_pop25_covariance0_i_llvm_fpga_pop_i1_memdep_phi2_pop1761_pop25_covariance23_mux_x_s = redist8_i_llvm_fpga_forked_covariance_b3_forked_covariance3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i1_memdep_phi2_pop1761_pop25_covariance0_i_llvm_fpga_pop_i1_memdep_phi2_pop1761_pop25_covariance23_mux_x_s or i_llvm_fpga_push_i1_memdep_phi2_pop1761_push25_covariance0_adapt_scalar_trunc4_sel_x_b or redist2_sync_together56_aunroll_x_in_c0_eni5_4_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i1_memdep_phi2_pop1761_pop25_covariance0_i_llvm_fpga_pop_i1_memdep_phi2_pop1761_pop25_covariance23_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_memdep_phi2_pop1761_pop25_covariance0_i_llvm_fpga_pop_i1_memdep_phi2_pop1761_pop25_covariance23_mux_x_q = i_llvm_fpga_push_i1_memdep_phi2_pop1761_push25_covariance0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_memdep_phi2_pop1761_pop25_covariance0_i_llvm_fpga_pop_i1_memdep_phi2_pop1761_pop25_covariance23_mux_x_q = redist2_sync_together56_aunroll_x_in_c0_eni5_4_tpl_4_q;
            default : i_llvm_fpga_pop_i1_memdep_phi2_pop1761_pop25_covariance0_i_llvm_fpga_pop_i1_memdep_phi2_pop1761_pop25_covariance23_mux_x_q = 1'b0;
        endcase
    end

    // i_llvm_fpga_push_i1_memdep_phi1_pop1658_push24_covariance0_element_extension2_x(BITJOIN,62)@4
    assign i_llvm_fpga_push_i1_memdep_phi1_pop1658_push24_covariance0_element_extension2_x_q = {i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance0_c_i7_03_x_q, i_llvm_fpga_pop_i1_memdep_phi1_pop1658_pop24_covariance0_i_llvm_fpga_pop_i1_memdep_phi1_pop1658_pop24_covariance21_mux_x_q};

    // valid_fanout_reg17(REG,109)@0 + 1
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

    // valid_fanout_reg16(REG,108)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist4_sync_together56_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi1_pop1658_push24_covariance0_i_llvm_fpga_push_i1_memdep_phi1_pop1658_push24_covariance1_x(FIFODELAY,63)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i1_memdep_phi1_pop1658_push24_covariance0_i_llvm_fpga_push_i1_memdep_phi1_pop1658_push24_covariance1_x_i_stall = ~ (valid_fanout_reg17_q & i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_memdep_phi1_pop1658_push24_covariance0_i_llvm_fpga_push_i1_memdep_phi1_pop1658_push24_covariance1_x_i_valid = valid_fanout_reg16_q & redist7_i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i1_memdep_phi1_pop1658_push24_covariance0_i_llvm_fpga_push_i1_memdep_phi1_pop1658_push24_covariance1_x_i_data = i_llvm_fpga_push_i1_memdep_phi1_pop1658_push24_covariance0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_memdep_phi1_pop1658_push24_covariance0_i_llvm_fpga_push_i1_memdep_phi1_pop1658_push24_covariance1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi1_pop1658_push24_covariance0_i_llvm_fpga_push_i1_memdep_phi1_pop1658_push24_covariance1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_memdep_phi1_pop1658_push24_covariance0_i_llvm_fpga_push_i1_memdep_phi1_pop1658_push24_covariance1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi1_pop1658_push24_covariance0_i_llvm_fpga_push_i1_memdep_phi1_pop1658_push24_covariance1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_memdep_phi1_pop1658_push24_covariance0_i_llvm_fpga_push_i1_memdep_phi1_pop1658_push24_covariance1_x (
        .i_valid(i_llvm_fpga_push_i1_memdep_phi1_pop1658_push24_covariance0_i_llvm_fpga_push_i1_memdep_phi1_pop1658_push24_covariance1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_memdep_phi1_pop1658_push24_covariance0_i_llvm_fpga_push_i1_memdep_phi1_pop1658_push24_covariance1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_memdep_phi1_pop1658_push24_covariance0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_memdep_phi1_pop1658_push24_covariance0_i_llvm_fpga_push_i1_memdep_phi1_pop1658_push24_covariance1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_memdep_phi1_pop1658_push24_covariance0_adapt_scalar_trunc4_sel_x(BITSELECT,65)@4
    assign i_llvm_fpga_push_i1_memdep_phi1_pop1658_push24_covariance0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_memdep_phi1_pop1658_push24_covariance0_i_llvm_fpga_push_i1_memdep_phi1_pop1658_push24_covariance1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_memdep_phi1_pop1658_pop24_covariance0_i_llvm_fpga_pop_i1_memdep_phi1_pop1658_pop24_covariance21_mux_x(MUX,48)@4
    assign i_llvm_fpga_pop_i1_memdep_phi1_pop1658_pop24_covariance0_i_llvm_fpga_pop_i1_memdep_phi1_pop1658_pop24_covariance21_mux_x_s = redist8_i_llvm_fpga_forked_covariance_b3_forked_covariance3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i1_memdep_phi1_pop1658_pop24_covariance0_i_llvm_fpga_pop_i1_memdep_phi1_pop1658_pop24_covariance21_mux_x_s or i_llvm_fpga_push_i1_memdep_phi1_pop1658_push24_covariance0_adapt_scalar_trunc4_sel_x_b or redist1_sync_together56_aunroll_x_in_c0_eni5_3_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i1_memdep_phi1_pop1658_pop24_covariance0_i_llvm_fpga_pop_i1_memdep_phi1_pop1658_pop24_covariance21_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_memdep_phi1_pop1658_pop24_covariance0_i_llvm_fpga_pop_i1_memdep_phi1_pop1658_pop24_covariance21_mux_x_q = i_llvm_fpga_push_i1_memdep_phi1_pop1658_push24_covariance0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_memdep_phi1_pop1658_pop24_covariance0_i_llvm_fpga_pop_i1_memdep_phi1_pop1658_pop24_covariance21_mux_x_q = redist1_sync_together56_aunroll_x_in_c0_eni5_3_tpl_4_q;
            default : i_llvm_fpga_pop_i1_memdep_phi1_pop1658_pop24_covariance0_i_llvm_fpga_pop_i1_memdep_phi1_pop1658_pop24_covariance21_mux_x_q = 1'b0;
        endcase
    end

    // valid_fanout_reg14(REG,106)@0 + 1
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

    // valid_fanout_reg13(REG,105)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist4_sync_together56_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i32_lim_ext52_push23_covariance0_i_llvm_fpga_push_i32_lim_ext52_push23_covariance1_x(FIFODELAY,81)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i32_lim_ext52_push23_covariance0_i_llvm_fpga_push_i32_lim_ext52_push23_covariance1_x_i_stall = ~ (valid_fanout_reg14_q & i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance0_inv_pred_x_q);
    assign i_llvm_fpga_push_i32_lim_ext52_push23_covariance0_i_llvm_fpga_push_i32_lim_ext52_push23_covariance1_x_i_valid = valid_fanout_reg13_q & redist7_i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i32_lim_ext52_push23_covariance0_i_llvm_fpga_push_i32_lim_ext52_push23_covariance1_x_i_data = i_llvm_fpga_pop_i32_lim_ext52_pop23_covariance0_i_llvm_fpga_pop_i32_lim_ext52_pop23_covariance19_mux_x_q;
    assign i_llvm_fpga_push_i32_lim_ext52_push23_covariance0_i_llvm_fpga_push_i32_lim_ext52_push23_covariance1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_lim_ext52_push23_covariance0_i_llvm_fpga_push_i32_lim_ext52_push23_covariance1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_lim_ext52_push23_covariance0_i_llvm_fpga_push_i32_lim_ext52_push23_covariance1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_lim_ext52_push23_covariance0_i_llvm_fpga_push_i32_lim_ext52_push23_covariance1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_lim_ext52_push23_covariance0_i_llvm_fpga_push_i32_lim_ext52_push23_covariance1_x (
        .i_valid(i_llvm_fpga_push_i32_lim_ext52_push23_covariance0_i_llvm_fpga_push_i32_lim_ext52_push23_covariance1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_lim_ext52_push23_covariance0_i_llvm_fpga_push_i32_lim_ext52_push23_covariance1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i32_lim_ext52_pop23_covariance0_i_llvm_fpga_pop_i32_lim_ext52_pop23_covariance19_mux_x_q),
        .o_data(i_llvm_fpga_push_i32_lim_ext52_push23_covariance0_i_llvm_fpga_push_i32_lim_ext52_push23_covariance1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_lim_ext52_pop23_covariance0_i_llvm_fpga_pop_i32_lim_ext52_pop23_covariance19_mux_x(MUX,52)@4
    assign i_llvm_fpga_pop_i32_lim_ext52_pop23_covariance0_i_llvm_fpga_pop_i32_lim_ext52_pop23_covariance19_mux_x_s = redist8_i_llvm_fpga_forked_covariance_b3_forked_covariance3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i32_lim_ext52_pop23_covariance0_i_llvm_fpga_pop_i32_lim_ext52_pop23_covariance19_mux_x_s or i_llvm_fpga_push_i32_lim_ext52_push23_covariance0_i_llvm_fpga_push_i32_lim_ext52_push23_covariance1_x_o_data or redist0_sync_together56_aunroll_x_in_c0_eni5_2_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i32_lim_ext52_pop23_covariance0_i_llvm_fpga_pop_i32_lim_ext52_pop23_covariance19_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_lim_ext52_pop23_covariance0_i_llvm_fpga_pop_i32_lim_ext52_pop23_covariance19_mux_x_q = i_llvm_fpga_push_i32_lim_ext52_push23_covariance0_i_llvm_fpga_push_i32_lim_ext52_push23_covariance1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_lim_ext52_pop23_covariance0_i_llvm_fpga_pop_i32_lim_ext52_pop23_covariance19_mux_x_q = redist0_sync_together56_aunroll_x_in_c0_eni5_2_tpl_4_q;
            default : i_llvm_fpga_pop_i32_lim_ext52_pop23_covariance0_i_llvm_fpga_pop_i32_lim_ext52_pop23_covariance19_mux_x_q = 32'b0;
        endcase
    end

    // c_i32_050(CONSTANT,24)
    assign c_i32_050_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i32_151(CONSTANT,25)
    assign c_i32_151_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc22_covariance17(ADD,32)@4
    assign i_inc22_covariance17_a = {1'b0, i_llvm_fpga_pop_i32_j_039_pop21_covariance0_i_llvm_fpga_pop_i32_j_039_pop21_covariance16_mux_x_q};
    assign i_inc22_covariance17_b = {1'b0, c_i32_151_q};
    assign i_inc22_covariance17_o = $unsigned(i_inc22_covariance17_a) + $unsigned(i_inc22_covariance17_b);
    assign i_inc22_covariance17_q = i_inc22_covariance17_o[32:0];

    // bgTrunc_i_inc22_covariance17_sel_x(BITSELECT,42)@4
    assign bgTrunc_i_inc22_covariance17_sel_x_b = i_inc22_covariance17_q[31:0];

    // valid_fanout_reg11(REG,103)@0 + 1
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

    // valid_fanout_reg10(REG,102)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist4_sync_together56_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i32_j_039_push21_covariance0_i_llvm_fpga_push_i32_j_039_push21_covariance1_x(FIFODELAY,78)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i32_j_039_push21_covariance0_i_llvm_fpga_push_i32_j_039_push21_covariance1_x_i_stall = ~ (valid_fanout_reg11_q & i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance0_inv_pred_x_q);
    assign i_llvm_fpga_push_i32_j_039_push21_covariance0_i_llvm_fpga_push_i32_j_039_push21_covariance1_x_i_valid = valid_fanout_reg10_q & redist7_i_llvm_fpga_push_i1_covariance_b3_next_iter_isreal_push_covariance0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i32_j_039_push21_covariance0_i_llvm_fpga_push_i32_j_039_push21_covariance1_x_i_data = bgTrunc_i_inc22_covariance17_sel_x_b;
    assign i_llvm_fpga_push_i32_j_039_push21_covariance0_i_llvm_fpga_push_i32_j_039_push21_covariance1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_j_039_push21_covariance0_i_llvm_fpga_push_i32_j_039_push21_covariance1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_j_039_push21_covariance0_i_llvm_fpga_push_i32_j_039_push21_covariance1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_j_039_push21_covariance0_i_llvm_fpga_push_i32_j_039_push21_covariance1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_j_039_push21_covariance0_i_llvm_fpga_push_i32_j_039_push21_covariance1_x (
        .i_valid(i_llvm_fpga_push_i32_j_039_push21_covariance0_i_llvm_fpga_push_i32_j_039_push21_covariance1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_j_039_push21_covariance0_i_llvm_fpga_push_i32_j_039_push21_covariance1_x_i_stall_bitsignaltemp),
        .i_data(bgTrunc_i_inc22_covariance17_sel_x_b),
        .o_data(i_llvm_fpga_push_i32_j_039_push21_covariance0_i_llvm_fpga_push_i32_j_039_push21_covariance1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_j_039_pop21_covariance0_i_llvm_fpga_pop_i32_j_039_pop21_covariance16_mux_x(MUX,51)@4
    assign i_llvm_fpga_pop_i32_j_039_pop21_covariance0_i_llvm_fpga_pop_i32_j_039_pop21_covariance16_mux_x_s = redist8_i_llvm_fpga_forked_covariance_b3_forked_covariance3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i32_j_039_pop21_covariance0_i_llvm_fpga_pop_i32_j_039_pop21_covariance16_mux_x_s or i_llvm_fpga_push_i32_j_039_push21_covariance0_i_llvm_fpga_push_i32_j_039_push21_covariance1_x_o_data or c_i32_050_q)
    begin
        unique case (i_llvm_fpga_pop_i32_j_039_pop21_covariance0_i_llvm_fpga_pop_i32_j_039_pop21_covariance16_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_j_039_pop21_covariance0_i_llvm_fpga_pop_i32_j_039_pop21_covariance16_mux_x_q = i_llvm_fpga_push_i32_j_039_push21_covariance0_i_llvm_fpga_push_i32_j_039_push21_covariance1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_j_039_pop21_covariance0_i_llvm_fpga_pop_i32_j_039_pop21_covariance16_mux_x_q = c_i32_050_q;
            default : i_llvm_fpga_pop_i32_j_039_pop21_covariance0_i_llvm_fpga_pop_i32_j_039_pop21_covariance16_mux_x_q = 32'b0;
        endcase
    end

    // i_notcmp43_covariance12(LOGICAL,37)@4
    assign i_notcmp43_covariance12_q = i_exitcond10_covariance10_cmp_nsign_q ^ VCC_q;

    // sync_out_aunroll_x(GPOUT,90)@4
    assign out_c0_exi12_0_tpl = GND_q;
    assign out_c0_exi12_1_tpl = i_exitcond10_covariance10_cmp_nsign_q;
    assign out_c0_exi12_2_tpl = i_notcmp43_covariance12_q;
    assign out_c0_exi12_3_tpl = i_llvm_fpga_pop_i32_j_039_pop21_covariance0_i_llvm_fpga_pop_i32_j_039_pop21_covariance16_mux_x_q;
    assign out_c0_exi12_4_tpl = i_llvm_fpga_pop_i32_lim_ext52_pop23_covariance0_i_llvm_fpga_pop_i32_lim_ext52_pop23_covariance19_mux_x_q;
    assign out_c0_exi12_5_tpl = i_llvm_fpga_pop_i1_memdep_phi1_pop1658_pop24_covariance0_i_llvm_fpga_pop_i1_memdep_phi1_pop1658_pop24_covariance21_mux_x_q;
    assign out_c0_exi12_6_tpl = i_llvm_fpga_pop_i1_memdep_phi2_pop1761_pop25_covariance0_i_llvm_fpga_pop_i1_memdep_phi2_pop1761_pop25_covariance23_mux_x_q;
    assign out_c0_exi12_7_tpl = i_llvm_fpga_pop_i1_memdep_phi4_pop1864_pop26_covariance0_i_llvm_fpga_pop_i1_memdep_phi4_pop1864_pop26_covariance25_mux_x_q;
    assign out_c0_exi12_8_tpl = redist8_i_llvm_fpga_forked_covariance_b3_forked_covariance3_out_buffer_out_4_q;
    assign out_c0_exi12_9_tpl = redist0_sync_together56_aunroll_x_in_c0_eni5_2_tpl_4_q;
    assign out_c0_exi12_10_tpl = redist1_sync_together56_aunroll_x_in_c0_eni5_3_tpl_4_q;
    assign out_c0_exi12_11_tpl = redist2_sync_together56_aunroll_x_in_c0_eni5_4_tpl_4_q;
    assign out_c0_exi12_12_tpl = redist3_sync_together56_aunroll_x_in_c0_eni5_5_tpl_4_q;
    assign out_covariance_B3_current_iter_isspec = i_covariance_b3_current_iter_isspec_covariance5_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_profile_loop_o_valid = redist6_sync_together56_aunroll_x_in_i_valid_4_q;

endmodule
