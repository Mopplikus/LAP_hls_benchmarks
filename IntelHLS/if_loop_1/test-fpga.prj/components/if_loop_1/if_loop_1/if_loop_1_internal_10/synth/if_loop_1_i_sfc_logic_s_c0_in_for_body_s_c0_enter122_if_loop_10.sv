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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body_if_loop_1s_c0_enter122_if_loop_10
// Created for function/kernel if_loop_1
// SystemVerilog created on Wed Apr 26 23:16:30 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module if_loop_1_i_sfc_logic_s_c0_in_for_body_s_c0_enter122_if_loop_10 (
    input wire [31:0] in_lm1_if_loop_1_avm_readdata,
    input wire [0:0] in_lm1_if_loop_1_avm_writeack,
    input wire [0:0] in_lm1_if_loop_1_avm_waitrequest,
    input wire [0:0] in_lm1_if_loop_1_avm_readdatavalid,
    output wire [31:0] out_lm1_if_loop_1_avm_address,
    output wire [0:0] out_lm1_if_loop_1_avm_enable,
    output wire [0:0] out_lm1_if_loop_1_avm_read,
    output wire [0:0] out_lm1_if_loop_1_avm_write,
    output wire [31:0] out_lm1_if_loop_1_avm_writedata,
    output wire [3:0] out_lm1_if_loop_1_avm_byteenable,
    output wire [0:0] out_lm1_if_loop_1_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [0:0] in_intel_reserved_ffwd_0_0,
    input wire [32:0] in_intel_reserved_ffwd_1_0,
    output wire [0:0] out_exiting_valid_out,
    output wire [31:0] out_intel_reserved_ffwd_2_0,
    output wire [0:0] out_pipeline_dummy_out,
    output wire [0:0] out_pipeline_forked_out,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_c0_exi2_0_tpl,
    output wire [0:0] out_c0_exi2_1_tpl,
    output wire [0:0] out_c0_exi2_2_tpl,
    output wire [0:0] out_if_loop_1_B2_current_iter_isspec,
    output wire [0:0] out_o_valid,
    input wire [0:0] in_buffer_in,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [0:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_dummy_in,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_068_q;
    wire [31:0] c_i32_171_q;
    wire [32:0] c_i33_173_q;
    wire [32:0] c_i33_undef67_q;
    wire [63:0] c_if_loop_1_a_local_pmem_q;
    wire [0:0] i_add_if_loop_123_s;
    reg [31:0] i_add_if_loop_123_q;
    wire [1:0] i_arrayidx1_if_loop_116_vt_const_1_q;
    wire [63:0] i_arrayidx1_if_loop_116_vt_join_q;
    wire [61:0] i_arrayidx1_if_loop_116_vt_select_63_b;
    wire [33:0] i_cmp2_if_loop_121_a;
    wire [33:0] i_cmp2_if_loop_121_b;
    logic [33:0] i_cmp2_if_loop_121_o;
    wire [0:0] i_cmp2_if_loop_121_c;
    wire [33:0] i_fpga_indvars_iv_next_if_loop_129_a;
    wire [33:0] i_fpga_indvars_iv_next_if_loop_129_b;
    logic [33:0] i_fpga_indvars_iv_next_if_loop_129_o;
    wire [33:0] i_fpga_indvars_iv_next_if_loop_129_q;
    wire [0:0] i_fpga_indvars_iv_replace_phi_if_loop_111_s;
    reg [32:0] i_fpga_indvars_iv_replace_phi_if_loop_111_q;
    wire [63:0] i_idxprom_if_loop_115_vt_join_q;
    wire [31:0] i_idxprom_if_loop_115_vt_select_31_b;
    wire [0:0] i_if_loop_1_b2_current_iter_isspec_if_loop_15_q;
    wire [0:0] i_if_loop_1_b2_current_iter_isspec_or_if_loop_117_q;
    wire [0:0] i_if_loop_1_b2_next_iter_isreal_if_loop_17_q;
    wire [32:0] i_inc_if_loop_126_a;
    wire [32:0] i_inc_if_loop_126_b;
    logic [32:0] i_inc_if_loop_126_o;
    wire [32:0] i_inc_if_loop_126_q;
    wire [0:0] i_llvm_fpga_dummy_thread_if_loop_1_b2_dummy_if_loop_12_out_dummy_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp95_if_loop_130_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp96_if_loop_112_out_dest_data_out_0_0;
    wire [32:0] i_llvm_fpga_ffwd_dest_i33_unnamed_if_loop_16_if_loop_19_out_dest_data_out_1_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_if_loop_17_if_loop_137_out_intel_reserved_ffwd_2_0;
    wire [0:0] i_llvm_fpga_forked_if_loop_1_b2_forked_if_loop_13_out_buffer_out;
    wire [31:0] i_llvm_fpga_mem_lm1_if_loop_118_out_lm1_if_loop_1_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm1_if_loop_118_out_lm1_if_loop_1_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_lm1_if_loop_118_out_lm1_if_loop_1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm1_if_loop_118_out_lm1_if_loop_1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm1_if_loop_118_out_lm1_if_loop_1_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm1_if_loop_118_out_lm1_if_loop_1_avm_write;
    wire [31:0] i_llvm_fpga_mem_lm1_if_loop_118_out_lm1_if_loop_1_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm1_if_loop_118_out_o_readdata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_if_loop_16_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_if_loop_16_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_if_loop_16_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_if_loop_16_out_pipeline_dummy_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_if_loop_16_out_pipeline_forked_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_if_loop_16_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_if_loop_136_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_if_loop_136_out_feedback_valid_out_3;
    wire [32:0] i_mul_add3_if_loop_120_a;
    wire [32:0] i_mul_add3_if_loop_120_b;
    logic [32:0] i_mul_add3_if_loop_120_o;
    wire [32:0] i_mul_add3_if_loop_120_q;
    wire [0:0] i_notcmp_if_loop_135_q;
    wire [32:0] i_spec_select_if_loop_125_a;
    wire [32:0] i_spec_select_if_loop_125_b;
    logic [32:0] i_spec_select_if_loop_125_o;
    wire [32:0] i_spec_select_if_loop_125_q;
    wire [0:0] i_unnamed_if_loop_113_q;
    wire [31:0] i_unnamed_if_loop_119_vt_join_q;
    wire [29:0] i_unnamed_if_loop_119_vt_select_31_b;
    wire [0:0] i_unnamed_if_loop_131_q;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next_if_loop_129_sel_x_b;
    wire [31:0] bgTrunc_i_inc_if_loop_126_sel_x_b;
    wire [31:0] bgTrunc_i_mul_add3_if_loop_120_sel_x_b;
    wire [31:0] bgTrunc_i_spec_select_if_loop_125_sel_x_b;
    wire [31:0] c_i32_1070_recast_x_q;
    wire [9:0] i_arrayidx1_if_loop_10_add_x_a;
    wire [9:0] i_arrayidx1_if_loop_10_add_x_b;
    logic [9:0] i_arrayidx1_if_loop_10_add_x_o;
    wire [9:0] i_arrayidx1_if_loop_10_add_x_q;
    wire [63:0] i_arrayidx1_if_loop_10_append_upper_bits_x_q;
    wire [6:0] i_arrayidx1_if_loop_10_narrow_x_b;
    wire [8:0] i_arrayidx1_if_loop_10_shift_join_x_q;
    wire [8:0] i_arrayidx1_if_loop_10_dupName_0_trunc_sel_x_b;
    wire [8:0] i_arrayidx1_if_loop_10_dupName_2_trunc_sel_x_b;
    wire [63:0] i_idxprom_if_loop_115_sel_x_b;
    wire [0:0] i_llvm_fpga_pop_coalesce_i1_if_loop_1_b2_current_iter_isreal_if_loop_10_i_llvm_fpga_pop_coalesce_i1_if_loop_1_b2_current_iter_isreal_if_loop_14_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_coalesce_i1_if_loop_1_b2_current_iter_isreal_if_loop_10_i_llvm_fpga_pop_coalesce_i1_if_loop_1_b2_current_iter_isreal_if_loop_14_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_i_010_pop8_if_loop_10_i_llvm_fpga_pop_i32_i_010_pop8_if_loop_114_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_i_010_pop8_if_loop_10_i_llvm_fpga_pop_i32_i_010_pop8_if_loop_114_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_10_i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_124_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_10_i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_124_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_10_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_110_mux_x_s;
    reg [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_10_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_110_mux_x_q;
    wire [6:0] i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_c_i7_03_x_q;
    wire [7:0] i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_11_x_i_valid;
    wire i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_11_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_11_x_i_stall;
    wire i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_11_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_11_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_11_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_inv_pred_x_q;
    wire [0:0] i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_adapt_scalar_trunc4_sel_x_b;
    wire [0:0] i_llvm_fpga_push_i32_i_010_push8_if_loop_10_i_llvm_fpga_push_i32_i_010_push8_if_loop_11_x_i_valid;
    wire i_llvm_fpga_push_i32_i_010_push8_if_loop_10_i_llvm_fpga_push_i32_i_010_push8_if_loop_11_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_i_010_push8_if_loop_10_i_llvm_fpga_push_i32_i_010_push8_if_loop_11_x_i_stall;
    wire i_llvm_fpga_push_i32_i_010_push8_if_loop_10_i_llvm_fpga_push_i32_i_010_push8_if_loop_11_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_i_010_push8_if_loop_10_i_llvm_fpga_push_i32_i_010_push8_if_loop_11_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_i_010_push8_if_loop_10_i_llvm_fpga_push_i32_i_010_push8_if_loop_11_x_o_data;
    wire [0:0] i_llvm_fpga_push_i32_sum_011_push7_if_loop_10_i_llvm_fpga_push_i32_sum_011_push7_if_loop_11_x_i_valid;
    wire i_llvm_fpga_push_i32_sum_011_push7_if_loop_10_i_llvm_fpga_push_i32_sum_011_push7_if_loop_11_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_sum_011_push7_if_loop_10_i_llvm_fpga_push_i32_sum_011_push7_if_loop_11_x_i_stall;
    wire i_llvm_fpga_push_i32_sum_011_push7_if_loop_10_i_llvm_fpga_push_i32_sum_011_push7_if_loop_11_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_sum_011_push7_if_loop_10_i_llvm_fpga_push_i32_sum_011_push7_if_loop_11_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_sum_011_push7_if_loop_10_i_llvm_fpga_push_i32_sum_011_push7_if_loop_11_x_o_data;
    wire [30:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_10_c_i31_03_x_q;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_10_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_10_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_11_x_i_valid;
    wire i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_10_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_11_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_10_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_11_x_i_stall;
    wire i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_10_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_11_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_10_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_11_x_i_data;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_10_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_11_x_o_data;
    wire [32:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_10_adapt_scalar_trunc4_sel_x_b;
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
    wire [0:0] i_exitcond_if_loop_127_cmp_nsign_q;
    wire [29:0] leftShiftStage0Idx1Rng2_uid168_i_unnamed_if_loop_10_shift_x_in;
    wire [29:0] leftShiftStage0Idx1Rng2_uid168_i_unnamed_if_loop_10_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid169_i_unnamed_if_loop_10_shift_x_q;
    wire [0:0] leftShiftStage0_uid171_i_unnamed_if_loop_10_shift_x_s;
    reg [31:0] leftShiftStage0_uid171_i_unnamed_if_loop_10_shift_x_q;
    wire [54:0] i_arrayidx1_if_loop_10_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx1_if_loop_10_upper_bits_x_merged_bit_select_c;
    reg [0:0] redist0_sync_together81_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist0_sync_together81_aunroll_x_in_i_valid_2_delay_0;
    reg [0:0] redist1_sync_together81_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist2_sync_together81_aunroll_x_in_i_valid_7_q;
    reg [0:0] redist2_sync_together81_aunroll_x_in_i_valid_7_delay_0;
    reg [0:0] redist2_sync_together81_aunroll_x_in_i_valid_7_delay_1;
    reg [0:0] redist2_sync_together81_aunroll_x_in_i_valid_7_delay_2;
    reg [0:0] redist3_sync_together81_aunroll_x_in_i_valid_9_q;
    reg [0:0] redist3_sync_together81_aunroll_x_in_i_valid_9_delay_0;
    reg [0:0] redist4_sync_together81_aunroll_x_in_i_valid_10_q;
    reg [0:0] redist5_i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_inv_pred_x_q_2_q;
    reg [0:0] redist5_i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_inv_pred_x_q_2_delay_0;
    reg [0:0] redist6_i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_inv_pred_x_q_7_q;
    reg [0:0] redist6_i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_inv_pred_x_q_7_delay_0;
    reg [0:0] redist6_i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_inv_pred_x_q_7_delay_1;
    reg [0:0] redist6_i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_inv_pred_x_q_7_delay_2;
    reg [0:0] redist6_i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_inv_pred_x_q_7_delay_3;
    reg [0:0] redist7_i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_inv_pred_x_q_9_q;
    reg [0:0] redist7_i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_inv_pred_x_q_9_delay_0;
    reg [31:0] redist8_bgTrunc_i_mul_add3_if_loop_120_sel_x_b_1_q;
    reg [31:0] redist9_bgTrunc_i_mul_add3_if_loop_120_sel_x_b_2_q;
    reg [0:0] redist10_i_unnamed_if_loop_131_q_7_q;
    reg [0:0] redist11_i_llvm_fpga_forked_if_loop_1_b2_forked_if_loop_13_out_buffer_out_4_q;
    reg [0:0] redist11_i_llvm_fpga_forked_if_loop_1_b2_forked_if_loop_13_out_buffer_out_4_delay_0;
    reg [0:0] redist11_i_llvm_fpga_forked_if_loop_1_b2_forked_if_loop_13_out_buffer_out_4_delay_1;
    reg [0:0] redist11_i_llvm_fpga_forked_if_loop_1_b2_forked_if_loop_13_out_buffer_out_4_delay_2;
    reg [0:0] redist12_i_llvm_fpga_forked_if_loop_1_b2_forked_if_loop_13_out_buffer_out_11_q;
    reg [0:0] redist13_i_llvm_fpga_dummy_thread_if_loop_1_b2_dummy_if_loop_12_out_dummy_out_4_q;
    reg [0:0] redist13_i_llvm_fpga_dummy_thread_if_loop_1_b2_dummy_if_loop_12_out_dummy_out_4_delay_0;
    reg [0:0] redist13_i_llvm_fpga_dummy_thread_if_loop_1_b2_dummy_if_loop_12_out_dummy_out_4_delay_1;
    reg [0:0] redist13_i_llvm_fpga_dummy_thread_if_loop_1_b2_dummy_if_loop_12_out_dummy_out_4_delay_2;
    reg [0:0] redist14_i_if_loop_1_b2_current_iter_isspec_if_loop_15_q_7_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist0_sync_together81_aunroll_x_in_i_valid_2(DELAY,173)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist0_sync_together81_aunroll_x_in_i_valid_2_delay_0 <= '0;
        end
        else
        begin
            redist0_sync_together81_aunroll_x_in_i_valid_2_delay_0 <= $unsigned(in_i_valid);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sync_together81_aunroll_x_in_i_valid_2_q <= redist0_sync_together81_aunroll_x_in_i_valid_2_delay_0;
        end
    end

    // redist1_sync_together81_aunroll_x_in_i_valid_3(DELAY,174)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist1_sync_together81_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist1_sync_together81_aunroll_x_in_i_valid_3_q <= $unsigned(redist0_sync_together81_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg9(REG,143)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist1_sync_together81_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_c_i7_03_x(CONSTANT,111)
    assign i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_c_i7_03_x_q = $unsigned(7'b0000000);

    // valid_fanout_reg2(REG,136)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist1_sync_together81_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg18(REG,152)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(redist1_sync_together81_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg5(REG,139)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist1_sync_together81_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i33_unnamed_if_loop_16_if_loop_19(BLACKBOX,62)@4
    if_loop_1_i_llvm_fpga_ffwd_dest_i33_unnamed_6_if_loop_10 thei_llvm_fpga_ffwd_dest_i33_unnamed_if_loop_16_if_loop_19 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i33_unnamed_if_loop_16_if_loop_19_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef67(CONSTANT,39)
    assign c_i33_undef67_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_10_c_i31_03_x(CONSTANT,123)
    assign i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_10_c_i31_03_x_q = $unsigned(31'b0000000000000000000000000000000);

    // c_i33_173(CONSTANT,38)
    assign c_i33_173_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next_if_loop_129(ADD,49)@4
    assign i_fpga_indvars_iv_next_if_loop_129_a = {1'b0, i_fpga_indvars_iv_replace_phi_if_loop_111_q};
    assign i_fpga_indvars_iv_next_if_loop_129_b = {1'b0, c_i33_173_q};
    assign i_fpga_indvars_iv_next_if_loop_129_o = $unsigned(i_fpga_indvars_iv_next_if_loop_129_a) + $unsigned(i_fpga_indvars_iv_next_if_loop_129_b);
    assign i_fpga_indvars_iv_next_if_loop_129_q = i_fpga_indvars_iv_next_if_loop_129_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next_if_loop_129_sel_x(BITSELECT,83)@4
    assign bgTrunc_i_fpga_indvars_iv_next_if_loop_129_sel_x_b = i_fpga_indvars_iv_next_if_loop_129_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_10_element_extension2_x(BITJOIN,124)@4
    assign i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_10_element_extension2_x_q = {i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_10_c_i31_03_x_q, bgTrunc_i_fpga_indvars_iv_next_if_loop_129_sel_x_b};

    // valid_fanout_reg17(REG,151)@0 + 1
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

    // valid_fanout_reg16(REG,150)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist0_sync_together81_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_10_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_11_x(FIFODELAY,125)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_10_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_11_x_i_stall = ~ (valid_fanout_reg17_q & i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_inv_pred_x_q);
    assign i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_10_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_11_x_i_valid = valid_fanout_reg16_q & redist5_i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_10_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_11_x_i_data = i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_10_element_extension2_x_q;
    assign i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_10_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_11_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_10_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_11_x_i_valid[0];
    assign i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_10_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_11_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_10_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_11_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_10_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_11_x (
        .i_valid(i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_10_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_11_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_10_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_11_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_10_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_10_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_11_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_10_adapt_scalar_trunc4_sel_x(BITSELECT,127)@4
    assign i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_10_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_10_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_11_x_o_data[32:0];

    // i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_10_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_110_mux_x(MUX,109)@4
    assign i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_10_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_110_mux_x_s = redist11_i_llvm_fpga_forked_if_loop_1_b2_forked_if_loop_13_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_10_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_110_mux_x_s or i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_10_adapt_scalar_trunc4_sel_x_b or c_i33_undef67_q)
    begin
        unique case (i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_10_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_110_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_10_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_110_mux_x_q = i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_10_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_10_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_110_mux_x_q = c_i33_undef67_q;
            default : i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_10_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_110_mux_x_q = 33'b0;
        endcase
    end

    // i_fpga_indvars_iv_replace_phi_if_loop_111(MUX,50)@4
    assign i_fpga_indvars_iv_replace_phi_if_loop_111_s = redist11_i_llvm_fpga_forked_if_loop_1_b2_forked_if_loop_13_out_buffer_out_4_q;
    always @(i_fpga_indvars_iv_replace_phi_if_loop_111_s or i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_10_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_110_mux_x_q or i_llvm_fpga_ffwd_dest_i33_unnamed_if_loop_16_if_loop_19_out_dest_data_out_1_0)
    begin
        unique case (i_fpga_indvars_iv_replace_phi_if_loop_111_s)
            1'b0 : i_fpga_indvars_iv_replace_phi_if_loop_111_q = i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_10_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_110_mux_x_q;
            1'b1 : i_fpga_indvars_iv_replace_phi_if_loop_111_q = i_llvm_fpga_ffwd_dest_i33_unnamed_if_loop_16_if_loop_19_out_dest_data_out_1_0;
            default : i_fpga_indvars_iv_replace_phi_if_loop_111_q = 33'b0;
        endcase
    end

    // i_exitcond_if_loop_127_cmp_nsign(LOGICAL,163)@4
    assign i_exitcond_if_loop_127_cmp_nsign_q = $unsigned(~ (i_fpga_indvars_iv_replace_phi_if_loop_111_q[32:32]));

    // valid_fanout_reg11(REG,145)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist1_sync_together81_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp95_if_loop_130(BLACKBOX,60)@4
    if_loop_1_i_llvm_fpga_ffwd_dest_i1_cmp95_0 thei_llvm_fpga_ffwd_dest_i1_cmp95_if_loop_130 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_cmp95_if_loop_130_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_if_loop_131(LOGICAL,75)@4
    assign i_unnamed_if_loop_131_q = i_llvm_fpga_ffwd_dest_i1_cmp95_if_loop_130_out_dest_data_out_0_0 & i_exitcond_if_loop_127_cmp_nsign_q;

    // i_llvm_fpga_push_i1_notexitcond_if_loop_136(BLACKBOX,67)@4
    // in in_empty_in@20000000
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    if_loop_1_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_if_loop_136 (
        .in_almost_empty_in(GND_q),
        .in_data_in(i_unnamed_if_loop_131_q),
        .in_empty_in(GND_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_if_loop_16_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_if_loop_136_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_if_loop_136_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_dummy_thread_if_loop_1_b2_dummy_if_loop_12(BLACKBOX,59)@0
    // in in_stall_in@20000000
    if_loop_1_i_llvm_fpga_dummy_thread_b2_dummy_if_loop_10 thei_llvm_fpga_dummy_thread_if_loop_1_b2_dummy_if_loop_12 (
        .in_dummy_in(in_dummy_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dummy_out(i_llvm_fpga_dummy_thread_if_loop_1_b2_dummy_if_loop_12_out_dummy_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist13_i_llvm_fpga_dummy_thread_if_loop_1_b2_dummy_if_loop_12_out_dummy_out_4(DELAY,186)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist13_i_llvm_fpga_dummy_thread_if_loop_1_b2_dummy_if_loop_12_out_dummy_out_4_delay_0 <= $unsigned(i_llvm_fpga_dummy_thread_if_loop_1_b2_dummy_if_loop_12_out_dummy_out);
            redist13_i_llvm_fpga_dummy_thread_if_loop_1_b2_dummy_if_loop_12_out_dummy_out_4_delay_1 <= redist13_i_llvm_fpga_dummy_thread_if_loop_1_b2_dummy_if_loop_12_out_dummy_out_4_delay_0;
            redist13_i_llvm_fpga_dummy_thread_if_loop_1_b2_dummy_if_loop_12_out_dummy_out_4_delay_2 <= redist13_i_llvm_fpga_dummy_thread_if_loop_1_b2_dummy_if_loop_12_out_dummy_out_4_delay_1;
            redist13_i_llvm_fpga_dummy_thread_if_loop_1_b2_dummy_if_loop_12_out_dummy_out_4_q <= redist13_i_llvm_fpga_dummy_thread_if_loop_1_b2_dummy_if_loop_12_out_dummy_out_4_delay_2;
        end
    end

    // i_llvm_fpga_pipeline_keep_going_if_loop_16(BLACKBOX,66)@4
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_dummy_out@20000000
    // out out_pipeline_forked_out@20000000
    // out out_pipeline_valid_out@20000000
    if_loop_1_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_if_loop_16 (
        .in_data_in(redist11_i_llvm_fpga_forked_if_loop_1_b2_forked_if_loop_13_out_buffer_out_4_q),
        .in_dummy_in(redist13_i_llvm_fpga_dummy_thread_if_loop_1_b2_dummy_if_loop_12_out_dummy_out_4_q),
        .in_forked_in(redist11_i_llvm_fpga_forked_if_loop_1_b2_forked_if_loop_13_out_buffer_out_4_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_if_loop_136_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_if_loop_136_out_feedback_valid_out_3),
        .in_pipeline_stall_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_if_loop_16_out_data_out),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_if_loop_16_out_exiting_valid_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_if_loop_16_out_not_exitcond_stall_out),
        .out_pipeline_dummy_out(i_llvm_fpga_pipeline_keep_going_if_loop_16_out_pipeline_dummy_out),
        .out_pipeline_forked_out(i_llvm_fpga_pipeline_keep_going_if_loop_16_out_pipeline_forked_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_if_loop_16_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_if_loop_1_b2_next_iter_isreal_if_loop_17(LOGICAL,57)@4
    assign i_if_loop_1_b2_next_iter_isreal_if_loop_17_q = i_llvm_fpga_pop_coalesce_i1_if_loop_1_b2_current_iter_isreal_if_loop_10_i_llvm_fpga_pop_coalesce_i1_if_loop_1_b2_current_iter_isreal_if_loop_14_mux_x_q & i_llvm_fpga_pipeline_keep_going_if_loop_16_out_data_out;

    // i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_element_extension2_x(BITJOIN,112)@4
    assign i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_element_extension2_x_q = {i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_c_i7_03_x_q, i_if_loop_1_b2_next_iter_isreal_if_loop_17_q};

    // i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_inv_pred_x(LOGICAL,114)@1
    assign i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_inv_pred_x_q = ~ (GND_q);

    // valid_fanout_reg4(REG,138)@0 + 1
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

    // redist5_i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_inv_pred_x_q_2(DELAY,178)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_inv_pred_x_q_2_delay_0 <= $unsigned(i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_inv_pred_x_q);
            redist5_i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_inv_pred_x_q_2_q <= redist5_i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_inv_pred_x_q_2_delay_0;
        end
    end

    // valid_fanout_reg3(REG,137)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist0_sync_together81_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_11_x(FIFODELAY,113)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_11_x_i_stall = ~ (valid_fanout_reg4_q & i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_11_x_i_valid = valid_fanout_reg3_q & redist5_i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_11_x_i_data = i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_11_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_11_x_i_valid[0];
    assign i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_11_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_11_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_11_x (
        .i_valid(i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_11_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_11_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_11_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_adapt_scalar_trunc4_sel_x(BITSELECT,115)@4
    assign i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_11_x_o_data[0:0];

    // i_llvm_fpga_forked_if_loop_1_b2_forked_if_loop_13(BLACKBOX,64)@0
    // in in_stall_in@20000000
    if_loop_1_i_llvm_fpga_forked_b2_forked_if_loop_10 thei_llvm_fpga_forked_if_loop_1_b2_forked_if_loop_13 (
        .in_buffer_in(in_buffer_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_buffer_out(i_llvm_fpga_forked_if_loop_1_b2_forked_if_loop_13_out_buffer_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist11_i_llvm_fpga_forked_if_loop_1_b2_forked_if_loop_13_out_buffer_out_4(DELAY,184)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist11_i_llvm_fpga_forked_if_loop_1_b2_forked_if_loop_13_out_buffer_out_4_delay_0 <= $unsigned(i_llvm_fpga_forked_if_loop_1_b2_forked_if_loop_13_out_buffer_out);
            redist11_i_llvm_fpga_forked_if_loop_1_b2_forked_if_loop_13_out_buffer_out_4_delay_1 <= redist11_i_llvm_fpga_forked_if_loop_1_b2_forked_if_loop_13_out_buffer_out_4_delay_0;
            redist11_i_llvm_fpga_forked_if_loop_1_b2_forked_if_loop_13_out_buffer_out_4_delay_2 <= redist11_i_llvm_fpga_forked_if_loop_1_b2_forked_if_loop_13_out_buffer_out_4_delay_1;
            redist11_i_llvm_fpga_forked_if_loop_1_b2_forked_if_loop_13_out_buffer_out_4_q <= redist11_i_llvm_fpga_forked_if_loop_1_b2_forked_if_loop_13_out_buffer_out_4_delay_2;
        end
    end

    // i_llvm_fpga_pop_coalesce_i1_if_loop_1_b2_current_iter_isreal_if_loop_10_i_llvm_fpga_pop_coalesce_i1_if_loop_1_b2_current_iter_isreal_if_loop_14_mux_x(MUX,106)@4
    assign i_llvm_fpga_pop_coalesce_i1_if_loop_1_b2_current_iter_isreal_if_loop_10_i_llvm_fpga_pop_coalesce_i1_if_loop_1_b2_current_iter_isreal_if_loop_14_mux_x_s = redist11_i_llvm_fpga_forked_if_loop_1_b2_forked_if_loop_13_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_coalesce_i1_if_loop_1_b2_current_iter_isreal_if_loop_10_i_llvm_fpga_pop_coalesce_i1_if_loop_1_b2_current_iter_isreal_if_loop_14_mux_x_s or i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_adapt_scalar_trunc4_sel_x_b or VCC_q)
    begin
        unique case (i_llvm_fpga_pop_coalesce_i1_if_loop_1_b2_current_iter_isreal_if_loop_10_i_llvm_fpga_pop_coalesce_i1_if_loop_1_b2_current_iter_isreal_if_loop_14_mux_x_s)
            1'b0 : i_llvm_fpga_pop_coalesce_i1_if_loop_1_b2_current_iter_isreal_if_loop_10_i_llvm_fpga_pop_coalesce_i1_if_loop_1_b2_current_iter_isreal_if_loop_14_mux_x_q = i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_coalesce_i1_if_loop_1_b2_current_iter_isreal_if_loop_10_i_llvm_fpga_pop_coalesce_i1_if_loop_1_b2_current_iter_isreal_if_loop_14_mux_x_q = VCC_q;
            default : i_llvm_fpga_pop_coalesce_i1_if_loop_1_b2_current_iter_isreal_if_loop_10_i_llvm_fpga_pop_coalesce_i1_if_loop_1_b2_current_iter_isreal_if_loop_14_mux_x_q = 1'b0;
        endcase
    end

    // i_if_loop_1_b2_current_iter_isspec_if_loop_15(LOGICAL,55)@4
    assign i_if_loop_1_b2_current_iter_isspec_if_loop_15_q = i_llvm_fpga_pop_coalesce_i1_if_loop_1_b2_current_iter_isreal_if_loop_10_i_llvm_fpga_pop_coalesce_i1_if_loop_1_b2_current_iter_isreal_if_loop_14_mux_x_q ^ VCC_q;

    // valid_fanout_reg7(REG,141)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist1_sync_together81_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp96_if_loop_112(BLACKBOX,61)@4
    if_loop_1_i_llvm_fpga_ffwd_dest_i1_cmp96_0 thei_llvm_fpga_ffwd_dest_i1_cmp96_if_loop_112 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_cmp96_if_loop_112_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_if_loop_113(LOGICAL,71)@4
    assign i_unnamed_if_loop_113_q = i_llvm_fpga_ffwd_dest_i1_cmp96_if_loop_112_out_dest_data_out_0_0 ^ VCC_q;

    // i_if_loop_1_b2_current_iter_isspec_or_if_loop_117(LOGICAL,56)@4
    assign i_if_loop_1_b2_current_iter_isspec_or_if_loop_117_q = i_unnamed_if_loop_113_q | i_if_loop_1_b2_current_iter_isspec_if_loop_15_q;

    // c_if_loop_1_a_local_pmem(CONSTANT,40)
    assign c_if_loop_1_a_local_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx1_if_loop_10_upper_bits_x_merged_bit_select(BITSELECT,172)@4
    assign i_arrayidx1_if_loop_10_upper_bits_x_merged_bit_select_b = c_if_loop_1_a_local_pmem_q[63:9];
    assign i_arrayidx1_if_loop_10_upper_bits_x_merged_bit_select_c = c_if_loop_1_a_local_pmem_q[8:0];

    // c_i32_068(CONSTANT,35)
    assign c_i32_068_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i32_171(CONSTANT,36)
    assign c_i32_171_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_if_loop_126(ADD,58)@4
    assign i_inc_if_loop_126_a = {1'b0, i_llvm_fpga_pop_i32_i_010_pop8_if_loop_10_i_llvm_fpga_pop_i32_i_010_pop8_if_loop_114_mux_x_q};
    assign i_inc_if_loop_126_b = {1'b0, c_i32_171_q};
    assign i_inc_if_loop_126_o = $unsigned(i_inc_if_loop_126_a) + $unsigned(i_inc_if_loop_126_b);
    assign i_inc_if_loop_126_q = i_inc_if_loop_126_o[32:0];

    // bgTrunc_i_inc_if_loop_126_sel_x(BITSELECT,84)@4
    assign bgTrunc_i_inc_if_loop_126_sel_x_b = i_inc_if_loop_126_q[31:0];

    // valid_fanout_reg13(REG,147)@0 + 1
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

    // valid_fanout_reg12(REG,146)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist0_sync_together81_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i32_i_010_push8_if_loop_10_i_llvm_fpga_push_i32_i_010_push8_if_loop_11_x(FIFODELAY,116)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i32_i_010_push8_if_loop_10_i_llvm_fpga_push_i32_i_010_push8_if_loop_11_x_i_stall = ~ (valid_fanout_reg13_q & i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_inv_pred_x_q);
    assign i_llvm_fpga_push_i32_i_010_push8_if_loop_10_i_llvm_fpga_push_i32_i_010_push8_if_loop_11_x_i_valid = valid_fanout_reg12_q & redist5_i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i32_i_010_push8_if_loop_10_i_llvm_fpga_push_i32_i_010_push8_if_loop_11_x_i_data = bgTrunc_i_inc_if_loop_126_sel_x_b;
    assign i_llvm_fpga_push_i32_i_010_push8_if_loop_10_i_llvm_fpga_push_i32_i_010_push8_if_loop_11_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_i_010_push8_if_loop_10_i_llvm_fpga_push_i32_i_010_push8_if_loop_11_x_i_valid[0];
    assign i_llvm_fpga_push_i32_i_010_push8_if_loop_10_i_llvm_fpga_push_i32_i_010_push8_if_loop_11_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_i_010_push8_if_loop_10_i_llvm_fpga_push_i32_i_010_push8_if_loop_11_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_i_010_push8_if_loop_10_i_llvm_fpga_push_i32_i_010_push8_if_loop_11_x (
        .i_valid(i_llvm_fpga_push_i32_i_010_push8_if_loop_10_i_llvm_fpga_push_i32_i_010_push8_if_loop_11_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_i_010_push8_if_loop_10_i_llvm_fpga_push_i32_i_010_push8_if_loop_11_x_i_stall_bitsignaltemp),
        .i_data(bgTrunc_i_inc_if_loop_126_sel_x_b),
        .o_data(i_llvm_fpga_push_i32_i_010_push8_if_loop_10_i_llvm_fpga_push_i32_i_010_push8_if_loop_11_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_010_pop8_if_loop_10_i_llvm_fpga_pop_i32_i_010_pop8_if_loop_114_mux_x(MUX,107)@4
    assign i_llvm_fpga_pop_i32_i_010_pop8_if_loop_10_i_llvm_fpga_pop_i32_i_010_pop8_if_loop_114_mux_x_s = redist11_i_llvm_fpga_forked_if_loop_1_b2_forked_if_loop_13_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i32_i_010_pop8_if_loop_10_i_llvm_fpga_pop_i32_i_010_pop8_if_loop_114_mux_x_s or i_llvm_fpga_push_i32_i_010_push8_if_loop_10_i_llvm_fpga_push_i32_i_010_push8_if_loop_11_x_o_data or c_i32_068_q)
    begin
        unique case (i_llvm_fpga_pop_i32_i_010_pop8_if_loop_10_i_llvm_fpga_pop_i32_i_010_pop8_if_loop_114_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_i_010_pop8_if_loop_10_i_llvm_fpga_pop_i32_i_010_pop8_if_loop_114_mux_x_q = i_llvm_fpga_push_i32_i_010_push8_if_loop_10_i_llvm_fpga_push_i32_i_010_push8_if_loop_11_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_i_010_pop8_if_loop_10_i_llvm_fpga_pop_i32_i_010_pop8_if_loop_114_mux_x_q = c_i32_068_q;
            default : i_llvm_fpga_pop_i32_i_010_pop8_if_loop_10_i_llvm_fpga_pop_i32_i_010_pop8_if_loop_114_mux_x_q = 32'b0;
        endcase
    end

    // i_idxprom_if_loop_115_sel_x(BITSELECT,105)@4
    assign i_idxprom_if_loop_115_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_i_010_pop8_if_loop_10_i_llvm_fpga_pop_i32_i_010_pop8_if_loop_114_mux_x_q[31:0]};

    // i_idxprom_if_loop_115_vt_select_31(BITSELECT,54)@4
    assign i_idxprom_if_loop_115_vt_select_31_b = i_idxprom_if_loop_115_sel_x_b[31:0];

    // i_idxprom_if_loop_115_vt_join(BITJOIN,53)@4
    assign i_idxprom_if_loop_115_vt_join_q = {c_i32_068_q, i_idxprom_if_loop_115_vt_select_31_b};

    // i_arrayidx1_if_loop_10_dupName_0_trunc_sel_x(BITSELECT,103)@4
    assign i_arrayidx1_if_loop_10_dupName_0_trunc_sel_x_b = i_idxprom_if_loop_115_vt_join_q[8:0];

    // i_arrayidx1_if_loop_10_narrow_x(BITSELECT,96)@4
    assign i_arrayidx1_if_loop_10_narrow_x_b = i_arrayidx1_if_loop_10_dupName_0_trunc_sel_x_b[6:0];

    // i_arrayidx1_if_loop_10_shift_join_x(BITJOIN,97)@4
    assign i_arrayidx1_if_loop_10_shift_join_x_q = {i_arrayidx1_if_loop_10_narrow_x_b, i_arrayidx1_if_loop_116_vt_const_1_q};

    // i_arrayidx1_if_loop_10_add_x(ADD,93)@4
    assign i_arrayidx1_if_loop_10_add_x_a = {1'b0, i_arrayidx1_if_loop_10_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx1_if_loop_10_add_x_b = {1'b0, i_arrayidx1_if_loop_10_shift_join_x_q};
    assign i_arrayidx1_if_loop_10_add_x_o = $unsigned(i_arrayidx1_if_loop_10_add_x_a) + $unsigned(i_arrayidx1_if_loop_10_add_x_b);
    assign i_arrayidx1_if_loop_10_add_x_q = i_arrayidx1_if_loop_10_add_x_o[9:0];

    // i_arrayidx1_if_loop_10_dupName_2_trunc_sel_x(BITSELECT,104)@4
    assign i_arrayidx1_if_loop_10_dupName_2_trunc_sel_x_b = i_arrayidx1_if_loop_10_add_x_q[8:0];

    // i_arrayidx1_if_loop_10_append_upper_bits_x(BITJOIN,94)@4
    assign i_arrayidx1_if_loop_10_append_upper_bits_x_q = {i_arrayidx1_if_loop_10_upper_bits_x_merged_bit_select_b, i_arrayidx1_if_loop_10_dupName_2_trunc_sel_x_b};

    // i_arrayidx1_if_loop_116_vt_select_63(BITSELECT,46)@4
    assign i_arrayidx1_if_loop_116_vt_select_63_b = i_arrayidx1_if_loop_10_append_upper_bits_x_q[63:2];

    // i_arrayidx1_if_loop_116_vt_const_1(CONSTANT,44)
    assign i_arrayidx1_if_loop_116_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx1_if_loop_116_vt_join(BITJOIN,45)@4
    assign i_arrayidx1_if_loop_116_vt_join_q = {i_arrayidx1_if_loop_116_vt_select_63_b, i_arrayidx1_if_loop_116_vt_const_1_q};

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_mem_lm1_if_loop_118(BLACKBOX,65)@4
    // out out_lm1_if_loop_1_avm_address@20000000
    // out out_lm1_if_loop_1_avm_burstcount@20000000
    // out out_lm1_if_loop_1_avm_byteenable@20000000
    // out out_lm1_if_loop_1_avm_enable@20000000
    // out out_lm1_if_loop_1_avm_read@20000000
    // out out_lm1_if_loop_1_avm_write@20000000
    // out out_lm1_if_loop_1_avm_writedata@20000000
    // out out_o_almost_empty@8
    // out out_o_empty@8
    // out out_o_readdata@8
    // out out_o_stall@8
    // out out_o_valid@8
    if_loop_1_i_llvm_fpga_mem_lm1_0 thei_llvm_fpga_mem_lm1_if_loop_118 (
        .in_almost_empty_in(GND_q),
        .in_empty_in(GND_q),
        .in_flush(in_flush),
        .in_i_address(i_arrayidx1_if_loop_116_vt_join_q),
        .in_i_predicate(i_if_loop_1_b2_current_iter_isspec_or_if_loop_117_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg9_q),
        .in_lm1_if_loop_1_avm_readdata(in_lm1_if_loop_1_avm_readdata),
        .in_lm1_if_loop_1_avm_readdatavalid(in_lm1_if_loop_1_avm_readdatavalid),
        .in_lm1_if_loop_1_avm_waitrequest(in_lm1_if_loop_1_avm_waitrequest),
        .in_lm1_if_loop_1_avm_writeack(in_lm1_if_loop_1_avm_writeack),
        .out_lm1_if_loop_1_avm_address(i_llvm_fpga_mem_lm1_if_loop_118_out_lm1_if_loop_1_avm_address),
        .out_lm1_if_loop_1_avm_burstcount(i_llvm_fpga_mem_lm1_if_loop_118_out_lm1_if_loop_1_avm_burstcount),
        .out_lm1_if_loop_1_avm_byteenable(i_llvm_fpga_mem_lm1_if_loop_118_out_lm1_if_loop_1_avm_byteenable),
        .out_lm1_if_loop_1_avm_enable(i_llvm_fpga_mem_lm1_if_loop_118_out_lm1_if_loop_1_avm_enable),
        .out_lm1_if_loop_1_avm_read(i_llvm_fpga_mem_lm1_if_loop_118_out_lm1_if_loop_1_avm_read),
        .out_lm1_if_loop_1_avm_write(i_llvm_fpga_mem_lm1_if_loop_118_out_lm1_if_loop_1_avm_write),
        .out_lm1_if_loop_1_avm_writedata(i_llvm_fpga_mem_lm1_if_loop_118_out_lm1_if_loop_1_avm_writedata),
        .out_o_almost_empty(),
        .out_o_empty(),
        .out_o_readdata(i_llvm_fpga_mem_lm1_if_loop_118_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,42)
    assign out_lm1_if_loop_1_avm_address = i_llvm_fpga_mem_lm1_if_loop_118_out_lm1_if_loop_1_avm_address;
    assign out_lm1_if_loop_1_avm_enable = i_llvm_fpga_mem_lm1_if_loop_118_out_lm1_if_loop_1_avm_enable;
    assign out_lm1_if_loop_1_avm_read = i_llvm_fpga_mem_lm1_if_loop_118_out_lm1_if_loop_1_avm_read;
    assign out_lm1_if_loop_1_avm_write = i_llvm_fpga_mem_lm1_if_loop_118_out_lm1_if_loop_1_avm_write;
    assign out_lm1_if_loop_1_avm_writedata = i_llvm_fpga_mem_lm1_if_loop_118_out_lm1_if_loop_1_avm_writedata;
    assign out_lm1_if_loop_1_avm_byteenable = i_llvm_fpga_mem_lm1_if_loop_118_out_lm1_if_loop_1_avm_byteenable;
    assign out_lm1_if_loop_1_avm_burstcount = i_llvm_fpga_mem_lm1_if_loop_118_out_lm1_if_loop_1_avm_burstcount;

    // regfree_osync(GPOUT,81)
    assign out_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_if_loop_16_out_exiting_valid_out;

    // redist2_sync_together81_aunroll_x_in_i_valid_7(DELAY,175)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_sync_together81_aunroll_x_in_i_valid_7_delay_0 <= $unsigned(redist1_sync_together81_aunroll_x_in_i_valid_3_q);
        end
    end
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist2_sync_together81_aunroll_x_in_i_valid_7_delay_1 <= '0;
        end
        else
        begin
            redist2_sync_together81_aunroll_x_in_i_valid_7_delay_1 <= redist2_sync_together81_aunroll_x_in_i_valid_7_delay_0;
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_sync_together81_aunroll_x_in_i_valid_7_delay_2 <= redist2_sync_together81_aunroll_x_in_i_valid_7_delay_1;
        end
    end
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist2_sync_together81_aunroll_x_in_i_valid_7_q <= '0;
        end
        else
        begin
            redist2_sync_together81_aunroll_x_in_i_valid_7_q <= redist2_sync_together81_aunroll_x_in_i_valid_7_delay_2;
        end
    end

    // redist3_sync_together81_aunroll_x_in_i_valid_9(DELAY,176)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_sync_together81_aunroll_x_in_i_valid_9_delay_0 <= $unsigned(redist2_sync_together81_aunroll_x_in_i_valid_7_q);
        end
    end
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist3_sync_together81_aunroll_x_in_i_valid_9_q <= '0;
        end
        else
        begin
            redist3_sync_together81_aunroll_x_in_i_valid_9_q <= redist3_sync_together81_aunroll_x_in_i_valid_9_delay_0;
        end
    end

    // redist4_sync_together81_aunroll_x_in_i_valid_10(DELAY,177)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_sync_together81_aunroll_x_in_i_valid_10_q <= $unsigned(redist3_sync_together81_aunroll_x_in_i_valid_9_q);
        end
    end

    // valid_fanout_reg19(REG,153)@10 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(redist4_sync_together81_aunroll_x_in_i_valid_10_q);
        end
    end

    // redist6_i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_inv_pred_x_q_7(DELAY,179)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_inv_pred_x_q_7_delay_0 <= $unsigned(redist5_i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_inv_pred_x_q_2_q);
            redist6_i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_inv_pred_x_q_7_delay_1 <= redist6_i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_inv_pred_x_q_7_delay_0;
            redist6_i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_inv_pred_x_q_7_delay_2 <= redist6_i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_inv_pred_x_q_7_delay_1;
            redist6_i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_inv_pred_x_q_7_delay_3 <= redist6_i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_inv_pred_x_q_7_delay_2;
            redist6_i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_inv_pred_x_q_7_q <= redist6_i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_inv_pred_x_q_7_delay_3;
        end
    end

    // valid_fanout_reg15(REG,149)@7 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist2_sync_together81_aunroll_x_in_i_valid_7_q);
        end
    end

    // redist7_i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_inv_pred_x_q_9(DELAY,180)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_inv_pred_x_q_9_delay_0 <= $unsigned(redist6_i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_inv_pred_x_q_7_q);
            redist7_i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_inv_pred_x_q_9_q <= redist7_i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_inv_pred_x_q_9_delay_0;
        end
    end

    // valid_fanout_reg14(REG,148)@9 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist3_sync_together81_aunroll_x_in_i_valid_9_q);
        end
    end

    // i_llvm_fpga_push_i32_sum_011_push7_if_loop_10_i_llvm_fpga_push_i32_sum_011_push7_if_loop_11_x(FIFODELAY,119)@8 + 1
    // in i_valid@10
    // in i_write_pred@10
    // in i_data@11
    // out o_data@11
    assign i_llvm_fpga_push_i32_sum_011_push7_if_loop_10_i_llvm_fpga_push_i32_sum_011_push7_if_loop_11_x_i_stall = ~ (valid_fanout_reg15_q & redist6_i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_inv_pred_x_q_7_q);
    assign i_llvm_fpga_push_i32_sum_011_push7_if_loop_10_i_llvm_fpga_push_i32_sum_011_push7_if_loop_11_x_i_valid = valid_fanout_reg14_q & redist7_i_llvm_fpga_push_i1_if_loop_1_b2_next_iter_isreal_push_if_loop_10_inv_pred_x_q_9_q;
    assign i_llvm_fpga_push_i32_sum_011_push7_if_loop_10_i_llvm_fpga_push_i32_sum_011_push7_if_loop_11_x_i_data = bgTrunc_i_spec_select_if_loop_125_sel_x_b;
    assign i_llvm_fpga_push_i32_sum_011_push7_if_loop_10_i_llvm_fpga_push_i32_sum_011_push7_if_loop_11_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_sum_011_push7_if_loop_10_i_llvm_fpga_push_i32_sum_011_push7_if_loop_11_x_i_valid[0];
    assign i_llvm_fpga_push_i32_sum_011_push7_if_loop_10_i_llvm_fpga_push_i32_sum_011_push7_if_loop_11_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_sum_011_push7_if_loop_10_i_llvm_fpga_push_i32_sum_011_push7_if_loop_11_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_sum_011_push7_if_loop_10_i_llvm_fpga_push_i32_sum_011_push7_if_loop_11_x (
        .i_valid(i_llvm_fpga_push_i32_sum_011_push7_if_loop_10_i_llvm_fpga_push_i32_sum_011_push7_if_loop_11_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_sum_011_push7_if_loop_10_i_llvm_fpga_push_i32_sum_011_push7_if_loop_11_x_i_stall_bitsignaltemp),
        .i_data(bgTrunc_i_spec_select_if_loop_125_sel_x_b),
        .o_data(i_llvm_fpga_push_i32_sum_011_push7_if_loop_10_i_llvm_fpga_push_i32_sum_011_push7_if_loop_11_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // redist12_i_llvm_fpga_forked_if_loop_1_b2_forked_if_loop_13_out_buffer_out_11(DELAY,185)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist12_i_llvm_fpga_forked_if_loop_1_b2_forked_if_loop_13_out_buffer_out_11 ( .xin(redist11_i_llvm_fpga_forked_if_loop_1_b2_forked_if_loop_13_out_buffer_out_4_q), .xout(redist12_i_llvm_fpga_forked_if_loop_1_b2_forked_if_loop_13_out_buffer_out_11_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_10_i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_124_mux_x(MUX,108)@11
    assign i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_10_i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_124_mux_x_s = redist12_i_llvm_fpga_forked_if_loop_1_b2_forked_if_loop_13_out_buffer_out_11_q;
    always @(i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_10_i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_124_mux_x_s or i_llvm_fpga_push_i32_sum_011_push7_if_loop_10_i_llvm_fpga_push_i32_sum_011_push7_if_loop_11_x_o_data or c_i32_068_q)
    begin
        unique case (i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_10_i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_124_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_10_i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_124_mux_x_q = i_llvm_fpga_push_i32_sum_011_push7_if_loop_10_i_llvm_fpga_push_i32_sum_011_push7_if_loop_11_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_10_i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_124_mux_x_q = c_i32_068_q;
            default : i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_10_i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_124_mux_x_q = 32'b0;
        endcase
    end

    // leftShiftStage0Idx1Rng2_uid168_i_unnamed_if_loop_10_shift_x(BITSELECT,167)@8
    assign leftShiftStage0Idx1Rng2_uid168_i_unnamed_if_loop_10_shift_x_in = i_llvm_fpga_mem_lm1_if_loop_118_out_o_readdata[29:0];
    assign leftShiftStage0Idx1Rng2_uid168_i_unnamed_if_loop_10_shift_x_b = leftShiftStage0Idx1Rng2_uid168_i_unnamed_if_loop_10_shift_x_in[29:0];

    // leftShiftStage0Idx1_uid169_i_unnamed_if_loop_10_shift_x(BITJOIN,168)@8
    assign leftShiftStage0Idx1_uid169_i_unnamed_if_loop_10_shift_x_q = {leftShiftStage0Idx1Rng2_uid168_i_unnamed_if_loop_10_shift_x_b, i_arrayidx1_if_loop_116_vt_const_1_q};

    // leftShiftStage0_uid171_i_unnamed_if_loop_10_shift_x(MUX,170)@8
    assign leftShiftStage0_uid171_i_unnamed_if_loop_10_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid171_i_unnamed_if_loop_10_shift_x_s or i_llvm_fpga_mem_lm1_if_loop_118_out_o_readdata or leftShiftStage0Idx1_uid169_i_unnamed_if_loop_10_shift_x_q)
    begin
        unique case (leftShiftStage0_uid171_i_unnamed_if_loop_10_shift_x_s)
            1'b0 : leftShiftStage0_uid171_i_unnamed_if_loop_10_shift_x_q = i_llvm_fpga_mem_lm1_if_loop_118_out_o_readdata;
            1'b1 : leftShiftStage0_uid171_i_unnamed_if_loop_10_shift_x_q = leftShiftStage0Idx1_uid169_i_unnamed_if_loop_10_shift_x_q;
            default : leftShiftStage0_uid171_i_unnamed_if_loop_10_shift_x_q = 32'b0;
        endcase
    end

    // i_unnamed_if_loop_119_vt_select_31(BITSELECT,74)@8
    assign i_unnamed_if_loop_119_vt_select_31_b = leftShiftStage0_uid171_i_unnamed_if_loop_10_shift_x_q[31:2];

    // i_unnamed_if_loop_119_vt_join(BITJOIN,73)@8
    assign i_unnamed_if_loop_119_vt_join_q = {i_unnamed_if_loop_119_vt_select_31_b, i_arrayidx1_if_loop_116_vt_const_1_q};

    // i_mul_add3_if_loop_120(ADD,68)@8
    assign i_mul_add3_if_loop_120_a = {1'b0, i_llvm_fpga_mem_lm1_if_loop_118_out_o_readdata};
    assign i_mul_add3_if_loop_120_b = {1'b0, i_unnamed_if_loop_119_vt_join_q};
    assign i_mul_add3_if_loop_120_o = $unsigned(i_mul_add3_if_loop_120_a) + $unsigned(i_mul_add3_if_loop_120_b);
    assign i_mul_add3_if_loop_120_q = i_mul_add3_if_loop_120_o[32:0];

    // bgTrunc_i_mul_add3_if_loop_120_sel_x(BITSELECT,85)@8
    assign bgTrunc_i_mul_add3_if_loop_120_sel_x_b = i_mul_add3_if_loop_120_q[31:0];

    // redist8_bgTrunc_i_mul_add3_if_loop_120_sel_x_b_1(DELAY,181)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_bgTrunc_i_mul_add3_if_loop_120_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul_add3_if_loop_120_sel_x_b);
        end
    end

    // redist9_bgTrunc_i_mul_add3_if_loop_120_sel_x_b_2(DELAY,182)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist9_bgTrunc_i_mul_add3_if_loop_120_sel_x_b_2_q <= $unsigned(redist8_bgTrunc_i_mul_add3_if_loop_120_sel_x_b_1_q);
        end
    end

    // c_i32_1070_recast_x(CONSTANT,87)
    assign c_i32_1070_recast_x_q = $unsigned(32'b00000000000000000000000000001010);

    // i_cmp2_if_loop_121(COMPARE,47)@9 + 1
    assign i_cmp2_if_loop_121_a = $unsigned({{2{c_i32_1070_recast_x_q[31]}}, c_i32_1070_recast_x_q});
    assign i_cmp2_if_loop_121_b = $unsigned({{2{redist8_bgTrunc_i_mul_add3_if_loop_120_sel_x_b_1_q[31]}}, redist8_bgTrunc_i_mul_add3_if_loop_120_sel_x_b_1_q});
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_cmp2_if_loop_121_o <= $unsigned($signed(i_cmp2_if_loop_121_a) - $signed(i_cmp2_if_loop_121_b));
        end
    end
    assign i_cmp2_if_loop_121_c[0] = i_cmp2_if_loop_121_o[33];

    // i_add_if_loop_123(MUX,43)@10 + 1
    assign i_add_if_loop_123_s = i_cmp2_if_loop_121_c;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_add_if_loop_123_s)
                1'b0 : i_add_if_loop_123_q <= c_i32_068_q;
                1'b1 : i_add_if_loop_123_q <= redist9_bgTrunc_i_mul_add3_if_loop_120_sel_x_b_2_q;
                default : i_add_if_loop_123_q <= 32'b0;
            endcase
        end
    end

    // i_spec_select_if_loop_125(ADD,70)@11
    assign i_spec_select_if_loop_125_a = {1'b0, i_add_if_loop_123_q};
    assign i_spec_select_if_loop_125_b = {1'b0, i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_10_i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_124_mux_x_q};
    assign i_spec_select_if_loop_125_o = $unsigned(i_spec_select_if_loop_125_a) + $unsigned(i_spec_select_if_loop_125_b);
    assign i_spec_select_if_loop_125_q = i_spec_select_if_loop_125_o[32:0];

    // bgTrunc_i_spec_select_if_loop_125_sel_x(BITSELECT,86)@11
    assign bgTrunc_i_spec_select_if_loop_125_sel_x_b = i_spec_select_if_loop_125_q[31:0];

    // redist14_i_if_loop_1_b2_current_iter_isspec_if_loop_15_q_7(DELAY,187)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist14_i_if_loop_1_b2_current_iter_isspec_if_loop_15_q_7 ( .xin(i_if_loop_1_b2_current_iter_isspec_if_loop_15_q), .xout(redist14_i_if_loop_1_b2_current_iter_isspec_if_loop_15_q_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_ffwd_source_i32_unnamed_if_loop_17_if_loop_137(BLACKBOX,63)@11
    // out out_intel_reserved_ffwd_2_0@20000000
    if_loop_1_i_llvm_fpga_ffwd_source_i32_unnamed_7_if_loop_10 thei_llvm_fpga_ffwd_source_i32_unnamed_if_loop_17_if_loop_137 (
        .in_predicate_in(redist14_i_if_loop_1_b2_current_iter_isspec_if_loop_15_q_7_q),
        .in_src_data_in_2_0(bgTrunc_i_spec_select_if_loop_125_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_intel_reserved_ffwd_2_0(i_llvm_fpga_ffwd_source_i32_unnamed_if_loop_17_if_loop_137_out_intel_reserved_ffwd_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,89)
    assign out_intel_reserved_ffwd_2_0 = i_llvm_fpga_ffwd_source_i32_unnamed_if_loop_17_if_loop_137_out_intel_reserved_ffwd_2_0;

    // dupName_1_regfree_osync_x(GPOUT,90)
    assign out_pipeline_dummy_out = i_llvm_fpga_pipeline_keep_going_if_loop_16_out_pipeline_dummy_out;

    // dupName_2_regfree_osync_x(GPOUT,91)
    assign out_pipeline_forked_out = i_llvm_fpga_pipeline_keep_going_if_loop_16_out_pipeline_forked_out;

    // dupName_3_regfree_osync_x(GPOUT,92)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_if_loop_16_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,134)@10 + 1
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist4_sync_together81_aunroll_x_in_i_valid_10_q);
        end
    end

    // i_notcmp_if_loop_135(LOGICAL,69)@11
    assign i_notcmp_if_loop_135_q = redist10_i_unnamed_if_loop_131_q_7_q ^ VCC_q;

    // redist10_i_unnamed_if_loop_131_q_7(DELAY,183)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist10_i_unnamed_if_loop_131_q_7 ( .xin(i_unnamed_if_loop_131_q), .xout(redist10_i_unnamed_if_loop_131_q_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,132)@11
    assign out_c0_exi2_0_tpl = GND_q;
    assign out_c0_exi2_1_tpl = redist10_i_unnamed_if_loop_131_q_7_q;
    assign out_c0_exi2_2_tpl = i_notcmp_if_loop_135_q;
    assign out_if_loop_1_B2_current_iter_isspec = redist14_i_if_loop_1_b2_current_iter_isspec_if_loop_15_q_7_q;
    assign out_o_valid = valid_fanout_reg0_q;

endmodule
