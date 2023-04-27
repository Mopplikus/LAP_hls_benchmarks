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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance0
// Created for function/kernel covariance
// SystemVerilog created on Thu Apr 27 14:28:38 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_i_sfc_logic_s_c0_in_for_cond30000ter31838_covariance0 (
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_pipeline_dummy_out,
    output wire [0:0] out_pipeline_forked_out,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_c0_exi15_0_tpl,
    output wire [0:0] out_c0_exi15_1_tpl,
    output wire [0:0] out_c0_exi15_2_tpl,
    output wire [31:0] out_c0_exi15_3_tpl,
    output wire [31:0] out_c0_exi15_4_tpl,
    output wire [31:0] out_c0_exi15_5_tpl,
    output wire [0:0] out_c0_exi15_6_tpl,
    output wire [31:0] out_c0_exi15_7_tpl,
    output wire [0:0] out_c0_exi15_8_tpl,
    output wire [31:0] out_c0_exi15_9_tpl,
    output wire [31:0] out_c0_exi15_10_tpl,
    output wire [32:0] out_c0_exi15_11_tpl,
    output wire [0:0] out_c0_exi15_12_tpl,
    output wire [31:0] out_c0_exi15_13_tpl,
    output wire [31:0] out_c0_exi15_14_tpl,
    output wire [31:0] out_c0_exi15_15_tpl,
    output wire [0:0] out_covariance_B9_current_iter_isspec,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_profile_loop_o_valid,
    input wire [0:0] in_buffer_in,
    input wire [0:0] in_c0_eni8317_0_tpl,
    input wire [32:0] in_c0_eni8317_1_tpl,
    input wire [0:0] in_c0_eni8317_2_tpl,
    input wire [31:0] in_c0_eni8317_3_tpl,
    input wire [31:0] in_c0_eni8317_4_tpl,
    input wire [31:0] in_c0_eni8317_5_tpl,
    input wire [0:0] in_c0_eni8317_6_tpl,
    input wire [31:0] in_c0_eni8317_7_tpl,
    input wire [31:0] in_c0_eni8317_8_tpl,
    input wire [0:0] in_dummy_in,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_149_q;
    wire [32:0] c_i33_148_q;
    wire [0:0] i_covariance_b9_current_iter_isspec_covariance5_q;
    wire [0:0] i_covariance_b9_next_iter_isreal_covariance7_q;
    wire [33:0] i_fpga_indvars_iv_next17_covariance14_a;
    wire [33:0] i_fpga_indvars_iv_next17_covariance14_b;
    logic [33:0] i_fpga_indvars_iv_next17_covariance14_o;
    wire [33:0] i_fpga_indvars_iv_next17_covariance14_q;
    wire [32:0] i_inc56_covariance17_a;
    wire [32:0] i_inc56_covariance17_b;
    logic [32:0] i_inc56_covariance17_o;
    wire [32:0] i_inc56_covariance17_q;
    wire [0:0] i_llvm_fpga_dummy_thread_for_cond33_preheader_dummy_covariance2_out_dummy_out;
    wire [0:0] i_llvm_fpga_forked_covariance_b9_forked_covariance3_out_buffer_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going24_covariance6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going24_covariance6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going24_covariance6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going24_covariance6_out_pipeline_dummy_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going24_covariance6_out_pipeline_forked_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going24_covariance6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond25_covariance13_out_feedback_out_4;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond25_covariance13_out_feedback_valid_out_4;
    wire [0:0] i_notcmp22_covariance12_q;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next17_covariance14_sel_x_b;
    wire [31:0] bgTrunc_i_inc56_covariance17_sel_x_b;
    wire [0:0] i_llvm_fpga_pop_coalesce_i1_covariance_b9_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b9_current_iter_isreal_covariance4_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_coalesce_i1_covariance_b9_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b9_current_iter_isreal_covariance4_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2781_pop57_covariance0_i_llvm_fpga_pop_i1_notcmp2781_pop57_covariance23_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_notcmp2781_pop57_covariance0_i_llvm_fpga_pop_i1_notcmp2781_pop57_covariance23_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_i24_034_pop2983_pop58_covariance0_i_llvm_fpga_pop_i32_i24_034_pop2983_pop58_covariance25_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_i24_034_pop2983_pop58_covariance0_i_llvm_fpga_pop_i32_i24_034_pop2983_pop58_covariance25_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_j28_033_pop54_covariance0_i_llvm_fpga_pop_i32_j28_033_pop54_covariance16_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_j28_033_pop54_covariance0_i_llvm_fpga_pop_i32_j28_033_pop54_covariance16_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_lim_ext56_pop55_covariance0_i_llvm_fpga_pop_i32_lim_ext56_pop55_covariance19_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_lim_ext56_pop55_covariance0_i_llvm_fpga_pop_i32_lim_ext56_pop55_covariance19_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_reorder_limiter_enter69_pop56_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter69_pop56_covariance21_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_reorder_limiter_enter69_pop56_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter69_pop56_covariance21_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv16_pop53_covariance0_i_llvm_fpga_pop_i33_fpga_indvars_iv16_pop53_covariance9_mux_x_s;
    reg [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv16_pop53_covariance0_i_llvm_fpga_pop_i33_fpga_indvars_iv16_pop53_covariance9_mux_x_q;
    wire [6:0] i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance0_c_i7_03_x_q;
    wire [7:0] i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance1_x_i_valid;
    wire i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance1_x_i_stall;
    wire i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance0_inv_pred_x_q;
    wire [0:0] i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_notcmp2781_push57_covariance0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2781_push57_covariance0_i_llvm_fpga_push_i1_notcmp2781_push57_covariance1_x_i_valid;
    wire i_llvm_fpga_push_i1_notcmp2781_push57_covariance0_i_llvm_fpga_push_i1_notcmp2781_push57_covariance1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2781_push57_covariance0_i_llvm_fpga_push_i1_notcmp2781_push57_covariance1_x_i_stall;
    wire i_llvm_fpga_push_i1_notcmp2781_push57_covariance0_i_llvm_fpga_push_i1_notcmp2781_push57_covariance1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_notcmp2781_push57_covariance0_i_llvm_fpga_push_i1_notcmp2781_push57_covariance1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_notcmp2781_push57_covariance0_i_llvm_fpga_push_i1_notcmp2781_push57_covariance1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2781_push57_covariance0_adapt_scalar_trunc4_sel_x_b;
    wire [0:0] i_llvm_fpga_push_i32_i24_034_pop2983_push58_covariance0_i_llvm_fpga_push_i32_i24_034_pop2983_push58_covariance1_x_i_valid;
    wire i_llvm_fpga_push_i32_i24_034_pop2983_push58_covariance0_i_llvm_fpga_push_i32_i24_034_pop2983_push58_covariance1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_i24_034_pop2983_push58_covariance0_i_llvm_fpga_push_i32_i24_034_pop2983_push58_covariance1_x_i_stall;
    wire i_llvm_fpga_push_i32_i24_034_pop2983_push58_covariance0_i_llvm_fpga_push_i32_i24_034_pop2983_push58_covariance1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_i24_034_pop2983_push58_covariance0_i_llvm_fpga_push_i32_i24_034_pop2983_push58_covariance1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_i24_034_pop2983_push58_covariance0_i_llvm_fpga_push_i32_i24_034_pop2983_push58_covariance1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i32_j28_033_push54_covariance0_i_llvm_fpga_push_i32_j28_033_push54_covariance1_x_i_valid;
    wire i_llvm_fpga_push_i32_j28_033_push54_covariance0_i_llvm_fpga_push_i32_j28_033_push54_covariance1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_j28_033_push54_covariance0_i_llvm_fpga_push_i32_j28_033_push54_covariance1_x_i_stall;
    wire i_llvm_fpga_push_i32_j28_033_push54_covariance0_i_llvm_fpga_push_i32_j28_033_push54_covariance1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_j28_033_push54_covariance0_i_llvm_fpga_push_i32_j28_033_push54_covariance1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_j28_033_push54_covariance0_i_llvm_fpga_push_i32_j28_033_push54_covariance1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i32_lim_ext56_push55_covariance0_i_llvm_fpga_push_i32_lim_ext56_push55_covariance1_x_i_valid;
    wire i_llvm_fpga_push_i32_lim_ext56_push55_covariance0_i_llvm_fpga_push_i32_lim_ext56_push55_covariance1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_lim_ext56_push55_covariance0_i_llvm_fpga_push_i32_lim_ext56_push55_covariance1_x_i_stall;
    wire i_llvm_fpga_push_i32_lim_ext56_push55_covariance0_i_llvm_fpga_push_i32_lim_ext56_push55_covariance1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_lim_ext56_push55_covariance0_i_llvm_fpga_push_i32_lim_ext56_push55_covariance1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_lim_ext56_push55_covariance0_i_llvm_fpga_push_i32_lim_ext56_push55_covariance1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i32_reorder_limiter_enter69_push56_covariance0_i_llvm_fpga_push_i32_reorder_limiter_enter69_push56_covariance1_x_i_valid;
    wire i_llvm_fpga_push_i32_reorder_limiter_enter69_push56_covariance0_i_llvm_fpga_push_i32_reorder_limiter_enter69_push56_covariance1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_reorder_limiter_enter69_push56_covariance0_i_llvm_fpga_push_i32_reorder_limiter_enter69_push56_covariance1_x_i_stall;
    wire i_llvm_fpga_push_i32_reorder_limiter_enter69_push56_covariance0_i_llvm_fpga_push_i32_reorder_limiter_enter69_push56_covariance1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_reorder_limiter_enter69_push56_covariance0_i_llvm_fpga_push_i32_reorder_limiter_enter69_push56_covariance1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_reorder_limiter_enter69_push56_covariance0_i_llvm_fpga_push_i32_reorder_limiter_enter69_push56_covariance1_x_o_data;
    wire [30:0] i_llvm_fpga_push_i33_fpga_indvars_iv16_push53_covariance0_c_i31_03_x_q;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv16_push53_covariance0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv16_push53_covariance0_i_llvm_fpga_push_i33_fpga_indvars_iv16_push53_covariance1_x_i_valid;
    wire i_llvm_fpga_push_i33_fpga_indvars_iv16_push53_covariance0_i_llvm_fpga_push_i33_fpga_indvars_iv16_push53_covariance1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv16_push53_covariance0_i_llvm_fpga_push_i33_fpga_indvars_iv16_push53_covariance1_x_i_stall;
    wire i_llvm_fpga_push_i33_fpga_indvars_iv16_push53_covariance0_i_llvm_fpga_push_i33_fpga_indvars_iv16_push53_covariance1_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv16_push53_covariance0_i_llvm_fpga_push_i33_fpga_indvars_iv16_push53_covariance1_x_i_data;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv16_push53_covariance0_i_llvm_fpga_push_i33_fpga_indvars_iv16_push53_covariance1_x_o_data;
    wire [32:0] i_llvm_fpga_push_i33_fpga_indvars_iv16_push53_covariance0_adapt_scalar_trunc4_sel_x_b;
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
    wire [0:0] i_exitcond18_covariance10_cmp_nsign_q;
    reg [32:0] redist0_sync_together55_aunroll_x_in_c0_eni8317_1_tpl_4_q;
    reg [32:0] redist0_sync_together55_aunroll_x_in_c0_eni8317_1_tpl_4_delay_0;
    reg [32:0] redist0_sync_together55_aunroll_x_in_c0_eni8317_1_tpl_4_delay_1;
    reg [31:0] redist1_sync_together55_aunroll_x_in_c0_eni8317_3_tpl_4_q;
    reg [31:0] redist1_sync_together55_aunroll_x_in_c0_eni8317_3_tpl_4_delay_0;
    reg [31:0] redist1_sync_together55_aunroll_x_in_c0_eni8317_3_tpl_4_delay_1;
    reg [31:0] redist2_sync_together55_aunroll_x_in_c0_eni8317_4_tpl_4_q;
    reg [31:0] redist2_sync_together55_aunroll_x_in_c0_eni8317_4_tpl_4_delay_0;
    reg [31:0] redist2_sync_together55_aunroll_x_in_c0_eni8317_4_tpl_4_delay_1;
    reg [31:0] redist3_sync_together55_aunroll_x_in_c0_eni8317_5_tpl_4_q;
    reg [31:0] redist3_sync_together55_aunroll_x_in_c0_eni8317_5_tpl_4_delay_0;
    reg [31:0] redist3_sync_together55_aunroll_x_in_c0_eni8317_5_tpl_4_delay_1;
    reg [0:0] redist4_sync_together55_aunroll_x_in_c0_eni8317_6_tpl_4_q;
    reg [0:0] redist4_sync_together55_aunroll_x_in_c0_eni8317_6_tpl_4_delay_0;
    reg [0:0] redist4_sync_together55_aunroll_x_in_c0_eni8317_6_tpl_4_delay_1;
    reg [0:0] redist4_sync_together55_aunroll_x_in_c0_eni8317_6_tpl_4_delay_2;
    reg [31:0] redist5_sync_together55_aunroll_x_in_c0_eni8317_7_tpl_4_q;
    reg [31:0] redist5_sync_together55_aunroll_x_in_c0_eni8317_7_tpl_4_delay_0;
    reg [31:0] redist5_sync_together55_aunroll_x_in_c0_eni8317_7_tpl_4_delay_1;
    reg [31:0] redist6_sync_together55_aunroll_x_in_c0_eni8317_8_tpl_4_q;
    reg [31:0] redist6_sync_together55_aunroll_x_in_c0_eni8317_8_tpl_4_delay_0;
    reg [31:0] redist6_sync_together55_aunroll_x_in_c0_eni8317_8_tpl_4_delay_1;
    reg [0:0] redist7_sync_together55_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist7_sync_together55_aunroll_x_in_i_valid_2_delay_0;
    reg [0:0] redist8_sync_together55_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist9_sync_together55_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist10_i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance0_inv_pred_x_q_2_q;
    reg [0:0] redist10_i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance0_inv_pred_x_q_2_delay_0;
    reg [0:0] redist11_i_llvm_fpga_forked_covariance_b9_forked_covariance3_out_buffer_out_4_q;
    reg [0:0] redist11_i_llvm_fpga_forked_covariance_b9_forked_covariance3_out_buffer_out_4_delay_0;
    reg [0:0] redist11_i_llvm_fpga_forked_covariance_b9_forked_covariance3_out_buffer_out_4_delay_1;
    reg [0:0] redist11_i_llvm_fpga_forked_covariance_b9_forked_covariance3_out_buffer_out_4_delay_2;
    reg [0:0] redist12_i_llvm_fpga_dummy_thread_for_cond33_preheader_dummy_covariance2_out_dummy_out_4_q;
    reg [0:0] redist12_i_llvm_fpga_dummy_thread_for_cond33_preheader_dummy_covariance2_out_dummy_out_4_delay_0;
    reg [0:0] redist12_i_llvm_fpga_dummy_thread_for_cond33_preheader_dummy_covariance2_out_dummy_out_4_delay_1;
    reg [0:0] redist12_i_llvm_fpga_dummy_thread_for_cond33_preheader_dummy_covariance2_out_dummy_out_4_delay_2;
    reg [32:0] redist0_sync_together55_aunroll_x_in_c0_eni8317_1_tpl_4_inputreg0_q;
    reg [31:0] redist1_sync_together55_aunroll_x_in_c0_eni8317_3_tpl_4_inputreg0_q;
    reg [31:0] redist2_sync_together55_aunroll_x_in_c0_eni8317_4_tpl_4_inputreg0_q;
    reg [31:0] redist3_sync_together55_aunroll_x_in_c0_eni8317_5_tpl_4_inputreg0_q;
    reg [31:0] redist5_sync_together55_aunroll_x_in_c0_eni8317_7_tpl_4_inputreg0_q;
    reg [31:0] redist6_sync_together55_aunroll_x_in_c0_eni8317_8_tpl_4_inputreg0_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist7_sync_together55_aunroll_x_in_i_valid_2(DELAY,122)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist7_sync_together55_aunroll_x_in_i_valid_2_delay_0 <= '0;
        end
        else
        begin
            redist7_sync_together55_aunroll_x_in_i_valid_2_delay_0 <= $unsigned(in_i_valid);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_sync_together55_aunroll_x_in_i_valid_2_q <= redist7_sync_together55_aunroll_x_in_i_valid_2_delay_0;
        end
    end

    // redist8_sync_together55_aunroll_x_in_i_valid_3(DELAY,123)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist8_sync_together55_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist8_sync_together55_aunroll_x_in_i_valid_3_q <= $unsigned(redist7_sync_together55_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg2(REG,86)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist8_sync_together55_aunroll_x_in_i_valid_3_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // valid_fanout_reg6(REG,90)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist8_sync_together55_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist0_sync_together55_aunroll_x_in_c0_eni8317_1_tpl_4_inputreg0(DELAY,128)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sync_together55_aunroll_x_in_c0_eni8317_1_tpl_4_inputreg0_q <= $unsigned(in_c0_eni8317_1_tpl);
        end
    end

    // redist0_sync_together55_aunroll_x_in_c0_eni8317_1_tpl_4(DELAY,115)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sync_together55_aunroll_x_in_c0_eni8317_1_tpl_4_delay_0 <= $unsigned(redist0_sync_together55_aunroll_x_in_c0_eni8317_1_tpl_4_inputreg0_q);
            redist0_sync_together55_aunroll_x_in_c0_eni8317_1_tpl_4_delay_1 <= redist0_sync_together55_aunroll_x_in_c0_eni8317_1_tpl_4_delay_0;
            redist0_sync_together55_aunroll_x_in_c0_eni8317_1_tpl_4_q <= redist0_sync_together55_aunroll_x_in_c0_eni8317_1_tpl_4_delay_1;
        end
    end

    // i_llvm_fpga_push_i33_fpga_indvars_iv16_push53_covariance0_c_i31_03_x(CONSTANT,77)
    assign i_llvm_fpga_push_i33_fpga_indvars_iv16_push53_covariance0_c_i31_03_x_q = $unsigned(31'b0000000000000000000000000000000);

    // c_i33_148(CONSTANT,25)
    assign c_i33_148_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next17_covariance14(ADD,29)@4
    assign i_fpga_indvars_iv_next17_covariance14_a = {1'b0, i_llvm_fpga_pop_i33_fpga_indvars_iv16_pop53_covariance0_i_llvm_fpga_pop_i33_fpga_indvars_iv16_pop53_covariance9_mux_x_q};
    assign i_fpga_indvars_iv_next17_covariance14_b = {1'b0, c_i33_148_q};
    assign i_fpga_indvars_iv_next17_covariance14_o = $unsigned(i_fpga_indvars_iv_next17_covariance14_a) + $unsigned(i_fpga_indvars_iv_next17_covariance14_b);
    assign i_fpga_indvars_iv_next17_covariance14_q = i_fpga_indvars_iv_next17_covariance14_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next17_covariance14_sel_x(BITSELECT,39)@4
    assign bgTrunc_i_fpga_indvars_iv_next17_covariance14_sel_x_b = i_fpga_indvars_iv_next17_covariance14_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv16_push53_covariance0_element_extension2_x(BITJOIN,78)@4
    assign i_llvm_fpga_push_i33_fpga_indvars_iv16_push53_covariance0_element_extension2_x_q = {i_llvm_fpga_push_i33_fpga_indvars_iv16_push53_covariance0_c_i31_03_x_q, bgTrunc_i_fpga_indvars_iv_next17_covariance14_sel_x_b};

    // i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance0_inv_pred_x(LOGICAL,56)@1
    assign i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance0_inv_pred_x_q = ~ (GND_q);

    // valid_fanout_reg8(REG,92)@0 + 1
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

    // redist10_i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance0_inv_pred_x_q_2(DELAY,125)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance0_inv_pred_x_q_2_delay_0 <= $unsigned(i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance0_inv_pred_x_q);
            redist10_i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance0_inv_pred_x_q_2_q <= redist10_i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance0_inv_pred_x_q_2_delay_0;
        end
    end

    // valid_fanout_reg7(REG,91)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist7_sync_together55_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i33_fpga_indvars_iv16_push53_covariance0_i_llvm_fpga_push_i33_fpga_indvars_iv16_push53_covariance1_x(FIFODELAY,79)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i33_fpga_indvars_iv16_push53_covariance0_i_llvm_fpga_push_i33_fpga_indvars_iv16_push53_covariance1_x_i_stall = ~ (valid_fanout_reg8_q & i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance0_inv_pred_x_q);
    assign i_llvm_fpga_push_i33_fpga_indvars_iv16_push53_covariance0_i_llvm_fpga_push_i33_fpga_indvars_iv16_push53_covariance1_x_i_valid = valid_fanout_reg7_q & redist10_i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i33_fpga_indvars_iv16_push53_covariance0_i_llvm_fpga_push_i33_fpga_indvars_iv16_push53_covariance1_x_i_data = i_llvm_fpga_push_i33_fpga_indvars_iv16_push53_covariance0_element_extension2_x_q;
    assign i_llvm_fpga_push_i33_fpga_indvars_iv16_push53_covariance0_i_llvm_fpga_push_i33_fpga_indvars_iv16_push53_covariance1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i33_fpga_indvars_iv16_push53_covariance0_i_llvm_fpga_push_i33_fpga_indvars_iv16_push53_covariance1_x_i_valid[0];
    assign i_llvm_fpga_push_i33_fpga_indvars_iv16_push53_covariance0_i_llvm_fpga_push_i33_fpga_indvars_iv16_push53_covariance1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i33_fpga_indvars_iv16_push53_covariance0_i_llvm_fpga_push_i33_fpga_indvars_iv16_push53_covariance1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i33_fpga_indvars_iv16_push53_covariance0_i_llvm_fpga_push_i33_fpga_indvars_iv16_push53_covariance1_x (
        .i_valid(i_llvm_fpga_push_i33_fpga_indvars_iv16_push53_covariance0_i_llvm_fpga_push_i33_fpga_indvars_iv16_push53_covariance1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i33_fpga_indvars_iv16_push53_covariance0_i_llvm_fpga_push_i33_fpga_indvars_iv16_push53_covariance1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i33_fpga_indvars_iv16_push53_covariance0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i33_fpga_indvars_iv16_push53_covariance0_i_llvm_fpga_push_i33_fpga_indvars_iv16_push53_covariance1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i33_fpga_indvars_iv16_push53_covariance0_adapt_scalar_trunc4_sel_x(BITSELECT,81)@4
    assign i_llvm_fpga_push_i33_fpga_indvars_iv16_push53_covariance0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i33_fpga_indvars_iv16_push53_covariance0_i_llvm_fpga_push_i33_fpga_indvars_iv16_push53_covariance1_x_o_data[32:0];

    // i_llvm_fpga_pop_i33_fpga_indvars_iv16_pop53_covariance0_i_llvm_fpga_pop_i33_fpga_indvars_iv16_pop53_covariance9_mux_x(MUX,51)@4
    assign i_llvm_fpga_pop_i33_fpga_indvars_iv16_pop53_covariance0_i_llvm_fpga_pop_i33_fpga_indvars_iv16_pop53_covariance9_mux_x_s = redist11_i_llvm_fpga_forked_covariance_b9_forked_covariance3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i33_fpga_indvars_iv16_pop53_covariance0_i_llvm_fpga_pop_i33_fpga_indvars_iv16_pop53_covariance9_mux_x_s or i_llvm_fpga_push_i33_fpga_indvars_iv16_push53_covariance0_adapt_scalar_trunc4_sel_x_b or redist0_sync_together55_aunroll_x_in_c0_eni8317_1_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i33_fpga_indvars_iv16_pop53_covariance0_i_llvm_fpga_pop_i33_fpga_indvars_iv16_pop53_covariance9_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i33_fpga_indvars_iv16_pop53_covariance0_i_llvm_fpga_pop_i33_fpga_indvars_iv16_pop53_covariance9_mux_x_q = i_llvm_fpga_push_i33_fpga_indvars_iv16_push53_covariance0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i33_fpga_indvars_iv16_pop53_covariance0_i_llvm_fpga_pop_i33_fpga_indvars_iv16_pop53_covariance9_mux_x_q = redist0_sync_together55_aunroll_x_in_c0_eni8317_1_tpl_4_q;
            default : i_llvm_fpga_pop_i33_fpga_indvars_iv16_pop53_covariance0_i_llvm_fpga_pop_i33_fpga_indvars_iv16_pop53_covariance9_mux_x_q = 33'b0;
        endcase
    end

    // i_exitcond18_covariance10_cmp_nsign(LOGICAL,114)@4
    assign i_exitcond18_covariance10_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i33_fpga_indvars_iv16_pop53_covariance0_i_llvm_fpga_pop_i33_fpga_indvars_iv16_pop53_covariance9_mux_x_q[32:32]));

    // i_llvm_fpga_push_i1_notexitcond25_covariance13(BLACKBOX,34)@4
    // out out_feedback_out_4@20000000
    // out out_feedback_valid_out_4@20000000
    covariance_i_llvm_fpga_push_i1_notexitcond25_0 thei_llvm_fpga_push_i1_notexitcond25_covariance13 (
        .in_data_in(i_exitcond18_covariance10_cmp_nsign_q),
        .in_feedback_stall_in_4(i_llvm_fpga_pipeline_keep_going24_covariance6_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_4(i_llvm_fpga_push_i1_notexitcond25_covariance13_out_feedback_out_4),
        .out_feedback_valid_out_4(i_llvm_fpga_push_i1_notexitcond25_covariance13_out_feedback_valid_out_4),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_dummy_thread_for_cond33_preheader_dummy_covariance2(BLACKBOX,31)@0
    // in in_stall_in@20000000
    covariance_i_llvm_fpga_dummy_thread_for_cond33_preheader_dummy_0 thei_llvm_fpga_dummy_thread_for_cond33_preheader_dummy_covariance2 (
        .in_dummy_in(in_dummy_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dummy_out(i_llvm_fpga_dummy_thread_for_cond33_preheader_dummy_covariance2_out_dummy_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist12_i_llvm_fpga_dummy_thread_for_cond33_preheader_dummy_covariance2_out_dummy_out_4(DELAY,127)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist12_i_llvm_fpga_dummy_thread_for_cond33_preheader_dummy_covariance2_out_dummy_out_4_delay_0 <= $unsigned(i_llvm_fpga_dummy_thread_for_cond33_preheader_dummy_covariance2_out_dummy_out);
            redist12_i_llvm_fpga_dummy_thread_for_cond33_preheader_dummy_covariance2_out_dummy_out_4_delay_1 <= redist12_i_llvm_fpga_dummy_thread_for_cond33_preheader_dummy_covariance2_out_dummy_out_4_delay_0;
            redist12_i_llvm_fpga_dummy_thread_for_cond33_preheader_dummy_covariance2_out_dummy_out_4_delay_2 <= redist12_i_llvm_fpga_dummy_thread_for_cond33_preheader_dummy_covariance2_out_dummy_out_4_delay_1;
            redist12_i_llvm_fpga_dummy_thread_for_cond33_preheader_dummy_covariance2_out_dummy_out_4_q <= redist12_i_llvm_fpga_dummy_thread_for_cond33_preheader_dummy_covariance2_out_dummy_out_4_delay_2;
        end
    end

    // i_llvm_fpga_forked_covariance_b9_forked_covariance3(BLACKBOX,32)@0
    // in in_stall_in@20000000
    covariance_i_llvm_fpga_forked_b9_forked_covariance0 thei_llvm_fpga_forked_covariance_b9_forked_covariance3 (
        .in_buffer_in(in_buffer_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_buffer_out(i_llvm_fpga_forked_covariance_b9_forked_covariance3_out_buffer_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist11_i_llvm_fpga_forked_covariance_b9_forked_covariance3_out_buffer_out_4(DELAY,126)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist11_i_llvm_fpga_forked_covariance_b9_forked_covariance3_out_buffer_out_4_delay_0 <= $unsigned(i_llvm_fpga_forked_covariance_b9_forked_covariance3_out_buffer_out);
            redist11_i_llvm_fpga_forked_covariance_b9_forked_covariance3_out_buffer_out_4_delay_1 <= redist11_i_llvm_fpga_forked_covariance_b9_forked_covariance3_out_buffer_out_4_delay_0;
            redist11_i_llvm_fpga_forked_covariance_b9_forked_covariance3_out_buffer_out_4_delay_2 <= redist11_i_llvm_fpga_forked_covariance_b9_forked_covariance3_out_buffer_out_4_delay_1;
            redist11_i_llvm_fpga_forked_covariance_b9_forked_covariance3_out_buffer_out_4_q <= redist11_i_llvm_fpga_forked_covariance_b9_forked_covariance3_out_buffer_out_4_delay_2;
        end
    end

    // i_llvm_fpga_pipeline_keep_going24_covariance6(BLACKBOX,33)@4
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_dummy_out@20000000
    // out out_pipeline_forked_out@20000000
    // out out_pipeline_valid_out@20000000
    covariance_i_llvm_fpga_pipeline_keep_going24_0 thei_llvm_fpga_pipeline_keep_going24_covariance6 (
        .in_data_in(redist11_i_llvm_fpga_forked_covariance_b9_forked_covariance3_out_buffer_out_4_q),
        .in_dummy_in(redist12_i_llvm_fpga_dummy_thread_for_cond33_preheader_dummy_covariance2_out_dummy_out_4_q),
        .in_forked_in(redist11_i_llvm_fpga_forked_covariance_b9_forked_covariance3_out_buffer_out_4_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond25_covariance13_out_feedback_out_4),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond25_covariance13_out_feedback_valid_out_4),
        .in_pipeline_stall_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going24_covariance6_out_data_out),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going24_covariance6_out_exiting_valid_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going24_covariance6_out_not_exitcond_stall_out),
        .out_pipeline_dummy_out(i_llvm_fpga_pipeline_keep_going24_covariance6_out_pipeline_dummy_out),
        .out_pipeline_forked_out(i_llvm_fpga_pipeline_keep_going24_covariance6_out_pipeline_forked_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going24_covariance6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,37)
    assign out_exiting_valid_out = i_llvm_fpga_pipeline_keep_going24_covariance6_out_exiting_valid_out;

    // dupName_0_regfree_osync_x(GPOUT,42)
    assign out_pipeline_dummy_out = i_llvm_fpga_pipeline_keep_going24_covariance6_out_pipeline_dummy_out;

    // dupName_1_regfree_osync_x(GPOUT,43)
    assign out_pipeline_forked_out = i_llvm_fpga_pipeline_keep_going24_covariance6_out_pipeline_forked_out;

    // dupName_2_regfree_osync_x(GPOUT,44)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going24_covariance6_out_pipeline_valid_out;

    // redist9_sync_together55_aunroll_x_in_i_valid_4(DELAY,124)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist9_sync_together55_aunroll_x_in_i_valid_4_q <= $unsigned(redist8_sync_together55_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg0(REG,84)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist8_sync_together55_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance0_c_i7_03_x(CONSTANT,53)
    assign i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance0_c_i7_03_x_q = $unsigned(7'b0000000);

    // i_covariance_b9_next_iter_isreal_covariance7(LOGICAL,27)@4
    assign i_covariance_b9_next_iter_isreal_covariance7_q = i_llvm_fpga_pop_coalesce_i1_covariance_b9_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b9_current_iter_isreal_covariance4_mux_x_q & i_llvm_fpga_pipeline_keep_going24_covariance6_out_data_out;

    // i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance0_element_extension2_x(BITJOIN,54)@4
    assign i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance0_element_extension2_x_q = {i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance0_c_i7_03_x_q, i_covariance_b9_next_iter_isreal_covariance7_q};

    // valid_fanout_reg4(REG,88)@0 + 1
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

    // valid_fanout_reg3(REG,87)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist7_sync_together55_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance1_x(FIFODELAY,55)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance1_x_i_stall = ~ (valid_fanout_reg4_q & i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance1_x_i_valid = valid_fanout_reg3_q & redist10_i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance1_x_i_data = i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance1_x (
        .i_valid(i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance0_adapt_scalar_trunc4_sel_x(BITSELECT,57)@4
    assign i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance1_x_o_data[0:0];

    // i_llvm_fpga_pop_coalesce_i1_covariance_b9_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b9_current_iter_isreal_covariance4_mux_x(MUX,45)@4
    assign i_llvm_fpga_pop_coalesce_i1_covariance_b9_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b9_current_iter_isreal_covariance4_mux_x_s = redist11_i_llvm_fpga_forked_covariance_b9_forked_covariance3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_coalesce_i1_covariance_b9_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b9_current_iter_isreal_covariance4_mux_x_s or i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance0_adapt_scalar_trunc4_sel_x_b or VCC_q)
    begin
        unique case (i_llvm_fpga_pop_coalesce_i1_covariance_b9_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b9_current_iter_isreal_covariance4_mux_x_s)
            1'b0 : i_llvm_fpga_pop_coalesce_i1_covariance_b9_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b9_current_iter_isreal_covariance4_mux_x_q = i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_coalesce_i1_covariance_b9_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b9_current_iter_isreal_covariance4_mux_x_q = VCC_q;
            default : i_llvm_fpga_pop_coalesce_i1_covariance_b9_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b9_current_iter_isreal_covariance4_mux_x_q = 1'b0;
        endcase
    end

    // i_covariance_b9_current_iter_isspec_covariance5(LOGICAL,26)@4
    assign i_covariance_b9_current_iter_isspec_covariance5_q = i_llvm_fpga_pop_coalesce_i1_covariance_b9_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b9_current_iter_isreal_covariance4_mux_x_q ^ VCC_q;

    // redist3_sync_together55_aunroll_x_in_c0_eni8317_5_tpl_4_inputreg0(DELAY,131)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_sync_together55_aunroll_x_in_c0_eni8317_5_tpl_4_inputreg0_q <= $unsigned(in_c0_eni8317_5_tpl);
        end
    end

    // redist3_sync_together55_aunroll_x_in_c0_eni8317_5_tpl_4(DELAY,118)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_sync_together55_aunroll_x_in_c0_eni8317_5_tpl_4_delay_0 <= $unsigned(redist3_sync_together55_aunroll_x_in_c0_eni8317_5_tpl_4_inputreg0_q);
            redist3_sync_together55_aunroll_x_in_c0_eni8317_5_tpl_4_delay_1 <= redist3_sync_together55_aunroll_x_in_c0_eni8317_5_tpl_4_delay_0;
            redist3_sync_together55_aunroll_x_in_c0_eni8317_5_tpl_4_q <= redist3_sync_together55_aunroll_x_in_c0_eni8317_5_tpl_4_delay_1;
        end
    end

    // redist2_sync_together55_aunroll_x_in_c0_eni8317_4_tpl_4_inputreg0(DELAY,130)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_sync_together55_aunroll_x_in_c0_eni8317_4_tpl_4_inputreg0_q <= $unsigned(in_c0_eni8317_4_tpl);
        end
    end

    // redist2_sync_together55_aunroll_x_in_c0_eni8317_4_tpl_4(DELAY,117)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_sync_together55_aunroll_x_in_c0_eni8317_4_tpl_4_delay_0 <= $unsigned(redist2_sync_together55_aunroll_x_in_c0_eni8317_4_tpl_4_inputreg0_q);
            redist2_sync_together55_aunroll_x_in_c0_eni8317_4_tpl_4_delay_1 <= redist2_sync_together55_aunroll_x_in_c0_eni8317_4_tpl_4_delay_0;
            redist2_sync_together55_aunroll_x_in_c0_eni8317_4_tpl_4_q <= redist2_sync_together55_aunroll_x_in_c0_eni8317_4_tpl_4_delay_1;
        end
    end

    // redist1_sync_together55_aunroll_x_in_c0_eni8317_3_tpl_4_inputreg0(DELAY,129)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_together55_aunroll_x_in_c0_eni8317_3_tpl_4_inputreg0_q <= $unsigned(in_c0_eni8317_3_tpl);
        end
    end

    // redist1_sync_together55_aunroll_x_in_c0_eni8317_3_tpl_4(DELAY,116)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_together55_aunroll_x_in_c0_eni8317_3_tpl_4_delay_0 <= $unsigned(redist1_sync_together55_aunroll_x_in_c0_eni8317_3_tpl_4_inputreg0_q);
            redist1_sync_together55_aunroll_x_in_c0_eni8317_3_tpl_4_delay_1 <= redist1_sync_together55_aunroll_x_in_c0_eni8317_3_tpl_4_delay_0;
            redist1_sync_together55_aunroll_x_in_c0_eni8317_3_tpl_4_q <= redist1_sync_together55_aunroll_x_in_c0_eni8317_3_tpl_4_delay_1;
        end
    end

    // redist4_sync_together55_aunroll_x_in_c0_eni8317_6_tpl_4(DELAY,119)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_sync_together55_aunroll_x_in_c0_eni8317_6_tpl_4_delay_0 <= $unsigned(in_c0_eni8317_6_tpl);
            redist4_sync_together55_aunroll_x_in_c0_eni8317_6_tpl_4_delay_1 <= redist4_sync_together55_aunroll_x_in_c0_eni8317_6_tpl_4_delay_0;
            redist4_sync_together55_aunroll_x_in_c0_eni8317_6_tpl_4_delay_2 <= redist4_sync_together55_aunroll_x_in_c0_eni8317_6_tpl_4_delay_1;
            redist4_sync_together55_aunroll_x_in_c0_eni8317_6_tpl_4_q <= redist4_sync_together55_aunroll_x_in_c0_eni8317_6_tpl_4_delay_2;
        end
    end

    // redist6_sync_together55_aunroll_x_in_c0_eni8317_8_tpl_4_inputreg0(DELAY,133)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_sync_together55_aunroll_x_in_c0_eni8317_8_tpl_4_inputreg0_q <= $unsigned(in_c0_eni8317_8_tpl);
        end
    end

    // redist6_sync_together55_aunroll_x_in_c0_eni8317_8_tpl_4(DELAY,121)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_sync_together55_aunroll_x_in_c0_eni8317_8_tpl_4_delay_0 <= $unsigned(redist6_sync_together55_aunroll_x_in_c0_eni8317_8_tpl_4_inputreg0_q);
            redist6_sync_together55_aunroll_x_in_c0_eni8317_8_tpl_4_delay_1 <= redist6_sync_together55_aunroll_x_in_c0_eni8317_8_tpl_4_delay_0;
            redist6_sync_together55_aunroll_x_in_c0_eni8317_8_tpl_4_q <= redist6_sync_together55_aunroll_x_in_c0_eni8317_8_tpl_4_delay_1;
        end
    end

    // redist5_sync_together55_aunroll_x_in_c0_eni8317_7_tpl_4_inputreg0(DELAY,132)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_sync_together55_aunroll_x_in_c0_eni8317_7_tpl_4_inputreg0_q <= $unsigned(in_c0_eni8317_7_tpl);
        end
    end

    // redist5_sync_together55_aunroll_x_in_c0_eni8317_7_tpl_4(DELAY,120)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_sync_together55_aunroll_x_in_c0_eni8317_7_tpl_4_delay_0 <= $unsigned(redist5_sync_together55_aunroll_x_in_c0_eni8317_7_tpl_4_inputreg0_q);
            redist5_sync_together55_aunroll_x_in_c0_eni8317_7_tpl_4_delay_1 <= redist5_sync_together55_aunroll_x_in_c0_eni8317_7_tpl_4_delay_0;
            redist5_sync_together55_aunroll_x_in_c0_eni8317_7_tpl_4_q <= redist5_sync_together55_aunroll_x_in_c0_eni8317_7_tpl_4_delay_1;
        end
    end

    // valid_fanout_reg23(REG,107)@0 + 1
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

    // valid_fanout_reg22(REG,106)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg22_q <= $unsigned(redist7_sync_together55_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i32_i24_034_pop2983_push58_covariance0_i_llvm_fpga_push_i32_i24_034_pop2983_push58_covariance1_x(FIFODELAY,64)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i32_i24_034_pop2983_push58_covariance0_i_llvm_fpga_push_i32_i24_034_pop2983_push58_covariance1_x_i_stall = ~ (valid_fanout_reg23_q & i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance0_inv_pred_x_q);
    assign i_llvm_fpga_push_i32_i24_034_pop2983_push58_covariance0_i_llvm_fpga_push_i32_i24_034_pop2983_push58_covariance1_x_i_valid = valid_fanout_reg22_q & redist10_i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i32_i24_034_pop2983_push58_covariance0_i_llvm_fpga_push_i32_i24_034_pop2983_push58_covariance1_x_i_data = i_llvm_fpga_pop_i32_i24_034_pop2983_pop58_covariance0_i_llvm_fpga_pop_i32_i24_034_pop2983_pop58_covariance25_mux_x_q;
    assign i_llvm_fpga_push_i32_i24_034_pop2983_push58_covariance0_i_llvm_fpga_push_i32_i24_034_pop2983_push58_covariance1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_i24_034_pop2983_push58_covariance0_i_llvm_fpga_push_i32_i24_034_pop2983_push58_covariance1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_i24_034_pop2983_push58_covariance0_i_llvm_fpga_push_i32_i24_034_pop2983_push58_covariance1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_i24_034_pop2983_push58_covariance0_i_llvm_fpga_push_i32_i24_034_pop2983_push58_covariance1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_i24_034_pop2983_push58_covariance0_i_llvm_fpga_push_i32_i24_034_pop2983_push58_covariance1_x (
        .i_valid(i_llvm_fpga_push_i32_i24_034_pop2983_push58_covariance0_i_llvm_fpga_push_i32_i24_034_pop2983_push58_covariance1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_i24_034_pop2983_push58_covariance0_i_llvm_fpga_push_i32_i24_034_pop2983_push58_covariance1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i32_i24_034_pop2983_pop58_covariance0_i_llvm_fpga_pop_i32_i24_034_pop2983_pop58_covariance25_mux_x_q),
        .o_data(i_llvm_fpga_push_i32_i24_034_pop2983_push58_covariance0_i_llvm_fpga_push_i32_i24_034_pop2983_push58_covariance1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i24_034_pop2983_pop58_covariance0_i_llvm_fpga_pop_i32_i24_034_pop2983_pop58_covariance25_mux_x(MUX,47)@4
    assign i_llvm_fpga_pop_i32_i24_034_pop2983_pop58_covariance0_i_llvm_fpga_pop_i32_i24_034_pop2983_pop58_covariance25_mux_x_s = redist11_i_llvm_fpga_forked_covariance_b9_forked_covariance3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i32_i24_034_pop2983_pop58_covariance0_i_llvm_fpga_pop_i32_i24_034_pop2983_pop58_covariance25_mux_x_s or i_llvm_fpga_push_i32_i24_034_pop2983_push58_covariance0_i_llvm_fpga_push_i32_i24_034_pop2983_push58_covariance1_x_o_data or redist1_sync_together55_aunroll_x_in_c0_eni8317_3_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i32_i24_034_pop2983_pop58_covariance0_i_llvm_fpga_pop_i32_i24_034_pop2983_pop58_covariance25_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_i24_034_pop2983_pop58_covariance0_i_llvm_fpga_pop_i32_i24_034_pop2983_pop58_covariance25_mux_x_q = i_llvm_fpga_push_i32_i24_034_pop2983_push58_covariance0_i_llvm_fpga_push_i32_i24_034_pop2983_push58_covariance1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_i24_034_pop2983_pop58_covariance0_i_llvm_fpga_pop_i32_i24_034_pop2983_pop58_covariance25_mux_x_q = redist1_sync_together55_aunroll_x_in_c0_eni8317_3_tpl_4_q;
            default : i_llvm_fpga_pop_i32_i24_034_pop2983_pop58_covariance0_i_llvm_fpga_pop_i32_i24_034_pop2983_pop58_covariance25_mux_x_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_push_i1_notcmp2781_push57_covariance0_element_extension2_x(BITJOIN,60)@4
    assign i_llvm_fpga_push_i1_notcmp2781_push57_covariance0_element_extension2_x_q = {i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance0_c_i7_03_x_q, i_llvm_fpga_pop_i1_notcmp2781_pop57_covariance0_i_llvm_fpga_pop_i1_notcmp2781_pop57_covariance23_mux_x_q};

    // valid_fanout_reg20(REG,104)@0 + 1
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

    // valid_fanout_reg19(REG,103)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(redist7_sync_together55_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp2781_push57_covariance0_i_llvm_fpga_push_i1_notcmp2781_push57_covariance1_x(FIFODELAY,61)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i1_notcmp2781_push57_covariance0_i_llvm_fpga_push_i1_notcmp2781_push57_covariance1_x_i_stall = ~ (valid_fanout_reg20_q & i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_notcmp2781_push57_covariance0_i_llvm_fpga_push_i1_notcmp2781_push57_covariance1_x_i_valid = valid_fanout_reg19_q & redist10_i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i1_notcmp2781_push57_covariance0_i_llvm_fpga_push_i1_notcmp2781_push57_covariance1_x_i_data = i_llvm_fpga_push_i1_notcmp2781_push57_covariance0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_notcmp2781_push57_covariance0_i_llvm_fpga_push_i1_notcmp2781_push57_covariance1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_notcmp2781_push57_covariance0_i_llvm_fpga_push_i1_notcmp2781_push57_covariance1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_notcmp2781_push57_covariance0_i_llvm_fpga_push_i1_notcmp2781_push57_covariance1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_notcmp2781_push57_covariance0_i_llvm_fpga_push_i1_notcmp2781_push57_covariance1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_notcmp2781_push57_covariance0_i_llvm_fpga_push_i1_notcmp2781_push57_covariance1_x (
        .i_valid(i_llvm_fpga_push_i1_notcmp2781_push57_covariance0_i_llvm_fpga_push_i1_notcmp2781_push57_covariance1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_notcmp2781_push57_covariance0_i_llvm_fpga_push_i1_notcmp2781_push57_covariance1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_notcmp2781_push57_covariance0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_notcmp2781_push57_covariance0_i_llvm_fpga_push_i1_notcmp2781_push57_covariance1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_notcmp2781_push57_covariance0_adapt_scalar_trunc4_sel_x(BITSELECT,63)@4
    assign i_llvm_fpga_push_i1_notcmp2781_push57_covariance0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_notcmp2781_push57_covariance0_i_llvm_fpga_push_i1_notcmp2781_push57_covariance1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_notcmp2781_pop57_covariance0_i_llvm_fpga_pop_i1_notcmp2781_pop57_covariance23_mux_x(MUX,46)@4
    assign i_llvm_fpga_pop_i1_notcmp2781_pop57_covariance0_i_llvm_fpga_pop_i1_notcmp2781_pop57_covariance23_mux_x_s = redist11_i_llvm_fpga_forked_covariance_b9_forked_covariance3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i1_notcmp2781_pop57_covariance0_i_llvm_fpga_pop_i1_notcmp2781_pop57_covariance23_mux_x_s or i_llvm_fpga_push_i1_notcmp2781_push57_covariance0_adapt_scalar_trunc4_sel_x_b or redist4_sync_together55_aunroll_x_in_c0_eni8317_6_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i1_notcmp2781_pop57_covariance0_i_llvm_fpga_pop_i1_notcmp2781_pop57_covariance23_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_notcmp2781_pop57_covariance0_i_llvm_fpga_pop_i1_notcmp2781_pop57_covariance23_mux_x_q = i_llvm_fpga_push_i1_notcmp2781_push57_covariance0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_notcmp2781_pop57_covariance0_i_llvm_fpga_pop_i1_notcmp2781_pop57_covariance23_mux_x_q = redist4_sync_together55_aunroll_x_in_c0_eni8317_6_tpl_4_q;
            default : i_llvm_fpga_pop_i1_notcmp2781_pop57_covariance0_i_llvm_fpga_pop_i1_notcmp2781_pop57_covariance23_mux_x_q = 1'b0;
        endcase
    end

    // valid_fanout_reg17(REG,101)@0 + 1
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

    // valid_fanout_reg16(REG,100)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist7_sync_together55_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i32_reorder_limiter_enter69_push56_covariance0_i_llvm_fpga_push_i32_reorder_limiter_enter69_push56_covariance1_x(FIFODELAY,73)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i32_reorder_limiter_enter69_push56_covariance0_i_llvm_fpga_push_i32_reorder_limiter_enter69_push56_covariance1_x_i_stall = ~ (valid_fanout_reg17_q & i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance0_inv_pred_x_q);
    assign i_llvm_fpga_push_i32_reorder_limiter_enter69_push56_covariance0_i_llvm_fpga_push_i32_reorder_limiter_enter69_push56_covariance1_x_i_valid = valid_fanout_reg16_q & redist10_i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i32_reorder_limiter_enter69_push56_covariance0_i_llvm_fpga_push_i32_reorder_limiter_enter69_push56_covariance1_x_i_data = i_llvm_fpga_pop_i32_reorder_limiter_enter69_pop56_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter69_pop56_covariance21_mux_x_q;
    assign i_llvm_fpga_push_i32_reorder_limiter_enter69_push56_covariance0_i_llvm_fpga_push_i32_reorder_limiter_enter69_push56_covariance1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_reorder_limiter_enter69_push56_covariance0_i_llvm_fpga_push_i32_reorder_limiter_enter69_push56_covariance1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_reorder_limiter_enter69_push56_covariance0_i_llvm_fpga_push_i32_reorder_limiter_enter69_push56_covariance1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_reorder_limiter_enter69_push56_covariance0_i_llvm_fpga_push_i32_reorder_limiter_enter69_push56_covariance1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_reorder_limiter_enter69_push56_covariance0_i_llvm_fpga_push_i32_reorder_limiter_enter69_push56_covariance1_x (
        .i_valid(i_llvm_fpga_push_i32_reorder_limiter_enter69_push56_covariance0_i_llvm_fpga_push_i32_reorder_limiter_enter69_push56_covariance1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_reorder_limiter_enter69_push56_covariance0_i_llvm_fpga_push_i32_reorder_limiter_enter69_push56_covariance1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i32_reorder_limiter_enter69_pop56_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter69_pop56_covariance21_mux_x_q),
        .o_data(i_llvm_fpga_push_i32_reorder_limiter_enter69_push56_covariance0_i_llvm_fpga_push_i32_reorder_limiter_enter69_push56_covariance1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_reorder_limiter_enter69_pop56_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter69_pop56_covariance21_mux_x(MUX,50)@4
    assign i_llvm_fpga_pop_i32_reorder_limiter_enter69_pop56_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter69_pop56_covariance21_mux_x_s = redist11_i_llvm_fpga_forked_covariance_b9_forked_covariance3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i32_reorder_limiter_enter69_pop56_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter69_pop56_covariance21_mux_x_s or i_llvm_fpga_push_i32_reorder_limiter_enter69_push56_covariance0_i_llvm_fpga_push_i32_reorder_limiter_enter69_push56_covariance1_x_o_data or redist3_sync_together55_aunroll_x_in_c0_eni8317_5_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i32_reorder_limiter_enter69_pop56_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter69_pop56_covariance21_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_reorder_limiter_enter69_pop56_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter69_pop56_covariance21_mux_x_q = i_llvm_fpga_push_i32_reorder_limiter_enter69_push56_covariance0_i_llvm_fpga_push_i32_reorder_limiter_enter69_push56_covariance1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_reorder_limiter_enter69_pop56_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter69_pop56_covariance21_mux_x_q = redist3_sync_together55_aunroll_x_in_c0_eni8317_5_tpl_4_q;
            default : i_llvm_fpga_pop_i32_reorder_limiter_enter69_pop56_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter69_pop56_covariance21_mux_x_q = 32'b0;
        endcase
    end

    // valid_fanout_reg14(REG,98)@0 + 1
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

    // valid_fanout_reg13(REG,97)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist7_sync_together55_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i32_lim_ext56_push55_covariance0_i_llvm_fpga_push_i32_lim_ext56_push55_covariance1_x(FIFODELAY,70)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i32_lim_ext56_push55_covariance0_i_llvm_fpga_push_i32_lim_ext56_push55_covariance1_x_i_stall = ~ (valid_fanout_reg14_q & i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance0_inv_pred_x_q);
    assign i_llvm_fpga_push_i32_lim_ext56_push55_covariance0_i_llvm_fpga_push_i32_lim_ext56_push55_covariance1_x_i_valid = valid_fanout_reg13_q & redist10_i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i32_lim_ext56_push55_covariance0_i_llvm_fpga_push_i32_lim_ext56_push55_covariance1_x_i_data = i_llvm_fpga_pop_i32_lim_ext56_pop55_covariance0_i_llvm_fpga_pop_i32_lim_ext56_pop55_covariance19_mux_x_q;
    assign i_llvm_fpga_push_i32_lim_ext56_push55_covariance0_i_llvm_fpga_push_i32_lim_ext56_push55_covariance1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_lim_ext56_push55_covariance0_i_llvm_fpga_push_i32_lim_ext56_push55_covariance1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_lim_ext56_push55_covariance0_i_llvm_fpga_push_i32_lim_ext56_push55_covariance1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_lim_ext56_push55_covariance0_i_llvm_fpga_push_i32_lim_ext56_push55_covariance1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_lim_ext56_push55_covariance0_i_llvm_fpga_push_i32_lim_ext56_push55_covariance1_x (
        .i_valid(i_llvm_fpga_push_i32_lim_ext56_push55_covariance0_i_llvm_fpga_push_i32_lim_ext56_push55_covariance1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_lim_ext56_push55_covariance0_i_llvm_fpga_push_i32_lim_ext56_push55_covariance1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i32_lim_ext56_pop55_covariance0_i_llvm_fpga_pop_i32_lim_ext56_pop55_covariance19_mux_x_q),
        .o_data(i_llvm_fpga_push_i32_lim_ext56_push55_covariance0_i_llvm_fpga_push_i32_lim_ext56_push55_covariance1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_lim_ext56_pop55_covariance0_i_llvm_fpga_pop_i32_lim_ext56_pop55_covariance19_mux_x(MUX,49)@4
    assign i_llvm_fpga_pop_i32_lim_ext56_pop55_covariance0_i_llvm_fpga_pop_i32_lim_ext56_pop55_covariance19_mux_x_s = redist11_i_llvm_fpga_forked_covariance_b9_forked_covariance3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i32_lim_ext56_pop55_covariance0_i_llvm_fpga_pop_i32_lim_ext56_pop55_covariance19_mux_x_s or i_llvm_fpga_push_i32_lim_ext56_push55_covariance0_i_llvm_fpga_push_i32_lim_ext56_push55_covariance1_x_o_data or redist2_sync_together55_aunroll_x_in_c0_eni8317_4_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i32_lim_ext56_pop55_covariance0_i_llvm_fpga_pop_i32_lim_ext56_pop55_covariance19_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_lim_ext56_pop55_covariance0_i_llvm_fpga_pop_i32_lim_ext56_pop55_covariance19_mux_x_q = i_llvm_fpga_push_i32_lim_ext56_push55_covariance0_i_llvm_fpga_push_i32_lim_ext56_push55_covariance1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_lim_ext56_pop55_covariance0_i_llvm_fpga_pop_i32_lim_ext56_pop55_covariance19_mux_x_q = redist2_sync_together55_aunroll_x_in_c0_eni8317_4_tpl_4_q;
            default : i_llvm_fpga_pop_i32_lim_ext56_pop55_covariance0_i_llvm_fpga_pop_i32_lim_ext56_pop55_covariance19_mux_x_q = 32'b0;
        endcase
    end

    // c_i32_149(CONSTANT,24)
    assign c_i32_149_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc56_covariance17(ADD,30)@4
    assign i_inc56_covariance17_a = {1'b0, i_llvm_fpga_pop_i32_j28_033_pop54_covariance0_i_llvm_fpga_pop_i32_j28_033_pop54_covariance16_mux_x_q};
    assign i_inc56_covariance17_b = {1'b0, c_i32_149_q};
    assign i_inc56_covariance17_o = $unsigned(i_inc56_covariance17_a) + $unsigned(i_inc56_covariance17_b);
    assign i_inc56_covariance17_q = i_inc56_covariance17_o[32:0];

    // bgTrunc_i_inc56_covariance17_sel_x(BITSELECT,40)@4
    assign bgTrunc_i_inc56_covariance17_sel_x_b = i_inc56_covariance17_q[31:0];

    // valid_fanout_reg11(REG,95)@0 + 1
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

    // valid_fanout_reg10(REG,94)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist7_sync_together55_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i32_j28_033_push54_covariance0_i_llvm_fpga_push_i32_j28_033_push54_covariance1_x(FIFODELAY,67)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i32_j28_033_push54_covariance0_i_llvm_fpga_push_i32_j28_033_push54_covariance1_x_i_stall = ~ (valid_fanout_reg11_q & i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance0_inv_pred_x_q);
    assign i_llvm_fpga_push_i32_j28_033_push54_covariance0_i_llvm_fpga_push_i32_j28_033_push54_covariance1_x_i_valid = valid_fanout_reg10_q & redist10_i_llvm_fpga_push_i1_covariance_b9_next_iter_isreal_push_covariance0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i32_j28_033_push54_covariance0_i_llvm_fpga_push_i32_j28_033_push54_covariance1_x_i_data = bgTrunc_i_inc56_covariance17_sel_x_b;
    assign i_llvm_fpga_push_i32_j28_033_push54_covariance0_i_llvm_fpga_push_i32_j28_033_push54_covariance1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_j28_033_push54_covariance0_i_llvm_fpga_push_i32_j28_033_push54_covariance1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_j28_033_push54_covariance0_i_llvm_fpga_push_i32_j28_033_push54_covariance1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_j28_033_push54_covariance0_i_llvm_fpga_push_i32_j28_033_push54_covariance1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_j28_033_push54_covariance0_i_llvm_fpga_push_i32_j28_033_push54_covariance1_x (
        .i_valid(i_llvm_fpga_push_i32_j28_033_push54_covariance0_i_llvm_fpga_push_i32_j28_033_push54_covariance1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_j28_033_push54_covariance0_i_llvm_fpga_push_i32_j28_033_push54_covariance1_x_i_stall_bitsignaltemp),
        .i_data(bgTrunc_i_inc56_covariance17_sel_x_b),
        .o_data(i_llvm_fpga_push_i32_j28_033_push54_covariance0_i_llvm_fpga_push_i32_j28_033_push54_covariance1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_j28_033_pop54_covariance0_i_llvm_fpga_pop_i32_j28_033_pop54_covariance16_mux_x(MUX,48)@4
    assign i_llvm_fpga_pop_i32_j28_033_pop54_covariance0_i_llvm_fpga_pop_i32_j28_033_pop54_covariance16_mux_x_s = redist11_i_llvm_fpga_forked_covariance_b9_forked_covariance3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i32_j28_033_pop54_covariance0_i_llvm_fpga_pop_i32_j28_033_pop54_covariance16_mux_x_s or i_llvm_fpga_push_i32_j28_033_push54_covariance0_i_llvm_fpga_push_i32_j28_033_push54_covariance1_x_o_data or redist1_sync_together55_aunroll_x_in_c0_eni8317_3_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i32_j28_033_pop54_covariance0_i_llvm_fpga_pop_i32_j28_033_pop54_covariance16_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_j28_033_pop54_covariance0_i_llvm_fpga_pop_i32_j28_033_pop54_covariance16_mux_x_q = i_llvm_fpga_push_i32_j28_033_push54_covariance0_i_llvm_fpga_push_i32_j28_033_push54_covariance1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_j28_033_pop54_covariance0_i_llvm_fpga_pop_i32_j28_033_pop54_covariance16_mux_x_q = redist1_sync_together55_aunroll_x_in_c0_eni8317_3_tpl_4_q;
            default : i_llvm_fpga_pop_i32_j28_033_pop54_covariance0_i_llvm_fpga_pop_i32_j28_033_pop54_covariance16_mux_x_q = 32'b0;
        endcase
    end

    // i_notcmp22_covariance12(LOGICAL,35)@4
    assign i_notcmp22_covariance12_q = i_exitcond18_covariance10_cmp_nsign_q ^ VCC_q;

    // sync_out_aunroll_x(GPOUT,82)@4
    assign out_c0_exi15_0_tpl = GND_q;
    assign out_c0_exi15_1_tpl = i_exitcond18_covariance10_cmp_nsign_q;
    assign out_c0_exi15_2_tpl = i_notcmp22_covariance12_q;
    assign out_c0_exi15_3_tpl = i_llvm_fpga_pop_i32_j28_033_pop54_covariance0_i_llvm_fpga_pop_i32_j28_033_pop54_covariance16_mux_x_q;
    assign out_c0_exi15_4_tpl = i_llvm_fpga_pop_i32_lim_ext56_pop55_covariance0_i_llvm_fpga_pop_i32_lim_ext56_pop55_covariance19_mux_x_q;
    assign out_c0_exi15_5_tpl = i_llvm_fpga_pop_i32_reorder_limiter_enter69_pop56_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter69_pop56_covariance21_mux_x_q;
    assign out_c0_exi15_6_tpl = i_llvm_fpga_pop_i1_notcmp2781_pop57_covariance0_i_llvm_fpga_pop_i1_notcmp2781_pop57_covariance23_mux_x_q;
    assign out_c0_exi15_7_tpl = i_llvm_fpga_pop_i32_i24_034_pop2983_pop58_covariance0_i_llvm_fpga_pop_i32_i24_034_pop2983_pop58_covariance25_mux_x_q;
    assign out_c0_exi15_8_tpl = redist11_i_llvm_fpga_forked_covariance_b9_forked_covariance3_out_buffer_out_4_q;
    assign out_c0_exi15_9_tpl = redist5_sync_together55_aunroll_x_in_c0_eni8317_7_tpl_4_q;
    assign out_c0_exi15_10_tpl = redist6_sync_together55_aunroll_x_in_c0_eni8317_8_tpl_4_q;
    assign out_c0_exi15_11_tpl = redist0_sync_together55_aunroll_x_in_c0_eni8317_1_tpl_4_q;
    assign out_c0_exi15_12_tpl = redist4_sync_together55_aunroll_x_in_c0_eni8317_6_tpl_4_q;
    assign out_c0_exi15_13_tpl = redist1_sync_together55_aunroll_x_in_c0_eni8317_3_tpl_4_q;
    assign out_c0_exi15_14_tpl = redist2_sync_together55_aunroll_x_in_c0_eni8317_4_tpl_4_q;
    assign out_c0_exi15_15_tpl = redist3_sync_together55_aunroll_x_in_c0_eni8317_5_tpl_4_q;
    assign out_covariance_B9_current_iter_isspec = i_covariance_b9_current_iter_isspec_covariance5_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_profile_loop_o_valid = redist9_sync_together55_aunroll_x_in_i_valid_4_q;

endmodule
