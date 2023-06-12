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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body_if_loop_2s_c0_enter102_if_loop_20
// Created for function/kernel if_loop_2
// SystemVerilog created on Thu Apr 27 00:09:17 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module if_loop_2_i_sfc_logic_s_c0_in_for_body_s_c0_enter102_if_loop_20 (
    input wire [31:0] in_lm1_if_loop_2_avm_readdata,
    input wire [0:0] in_lm1_if_loop_2_avm_writeack,
    input wire [0:0] in_lm1_if_loop_2_avm_waitrequest,
    input wire [0:0] in_lm1_if_loop_2_avm_readdatavalid,
    output wire [31:0] out_lm1_if_loop_2_avm_address,
    output wire [0:0] out_lm1_if_loop_2_avm_enable,
    output wire [0:0] out_lm1_if_loop_2_avm_read,
    output wire [0:0] out_lm1_if_loop_2_avm_write,
    output wire [31:0] out_lm1_if_loop_2_avm_writedata,
    output wire [3:0] out_lm1_if_loop_2_avm_byteenable,
    output wire [0:0] out_lm1_if_loop_2_avm_burstcount,
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
    output wire [0:0] out_if_loop_2_B2_current_iter_isspec,
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
    wire [31:0] c_i32_066_q;
    wire [31:0] c_i32_168_q;
    wire [32:0] c_i33_170_q;
    wire [32:0] c_i33_undef65_q;
    wire [63:0] c_if_loop_2_a_local_pmem_q;
    wire [0:0] i_add_if_loop_221_s;
    reg [31:0] i_add_if_loop_221_q;
    wire [1:0] i_arrayidx1_if_loop_216_vt_const_1_q;
    wire [63:0] i_arrayidx1_if_loop_216_vt_join_q;
    wire [61:0] i_arrayidx1_if_loop_216_vt_select_63_b;
    wire [33:0] i_cmp2_if_loop_219_a;
    wire [33:0] i_cmp2_if_loop_219_b;
    logic [33:0] i_cmp2_if_loop_219_o;
    wire [0:0] i_cmp2_if_loop_219_c;
    wire [33:0] i_fpga_indvars_iv_next_if_loop_227_a;
    wire [33:0] i_fpga_indvars_iv_next_if_loop_227_b;
    logic [33:0] i_fpga_indvars_iv_next_if_loop_227_o;
    wire [33:0] i_fpga_indvars_iv_next_if_loop_227_q;
    wire [0:0] i_fpga_indvars_iv_replace_phi_if_loop_211_s;
    reg [32:0] i_fpga_indvars_iv_replace_phi_if_loop_211_q;
    wire [63:0] i_idxprom_if_loop_215_vt_join_q;
    wire [31:0] i_idxprom_if_loop_215_vt_select_31_b;
    wire [0:0] i_if_loop_2_b2_current_iter_isspec_if_loop_25_q;
    wire [0:0] i_if_loop_2_b2_current_iter_isspec_or_if_loop_217_q;
    wire [0:0] i_if_loop_2_b2_next_iter_isreal_if_loop_27_q;
    wire [32:0] i_inc_if_loop_224_a;
    wire [32:0] i_inc_if_loop_224_b;
    logic [32:0] i_inc_if_loop_224_o;
    wire [32:0] i_inc_if_loop_224_q;
    wire [0:0] i_llvm_fpga_dummy_thread_if_loop_2_b2_dummy_if_loop_22_out_dummy_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp83_if_loop_228_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp84_if_loop_212_out_dest_data_out_0_0;
    wire [32:0] i_llvm_fpga_ffwd_dest_i33_unnamed_if_loop_26_if_loop_29_out_dest_data_out_1_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_if_loop_27_if_loop_235_out_intel_reserved_ffwd_2_0;
    wire [0:0] i_llvm_fpga_forked_if_loop_2_b2_forked_if_loop_23_out_buffer_out;
    wire [31:0] i_llvm_fpga_mem_lm1_if_loop_218_out_lm1_if_loop_2_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm1_if_loop_218_out_lm1_if_loop_2_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_lm1_if_loop_218_out_lm1_if_loop_2_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm1_if_loop_218_out_lm1_if_loop_2_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm1_if_loop_218_out_lm1_if_loop_2_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm1_if_loop_218_out_lm1_if_loop_2_avm_write;
    wire [31:0] i_llvm_fpga_mem_lm1_if_loop_218_out_lm1_if_loop_2_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm1_if_loop_218_out_o_readdata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_if_loop_26_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_if_loop_26_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_if_loop_26_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_if_loop_26_out_pipeline_dummy_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_if_loop_26_out_pipeline_forked_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_if_loop_26_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_if_loop_234_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_if_loop_234_out_feedback_valid_out_3;
    wire [0:0] i_notcmp_if_loop_233_q;
    wire [32:0] i_spec_select_if_loop_223_a;
    wire [32:0] i_spec_select_if_loop_223_b;
    logic [32:0] i_spec_select_if_loop_223_o;
    wire [32:0] i_spec_select_if_loop_223_q;
    wire [0:0] i_unnamed_if_loop_213_q;
    wire [0:0] i_unnamed_if_loop_229_q;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next_if_loop_227_sel_x_b;
    wire [31:0] bgTrunc_i_inc_if_loop_224_sel_x_b;
    wire [31:0] bgTrunc_i_spec_select_if_loop_223_sel_x_b;
    wire [31:0] c_i32_1067_recast_x_q;
    wire [9:0] i_arrayidx1_if_loop_20_add_x_a;
    wire [9:0] i_arrayidx1_if_loop_20_add_x_b;
    logic [9:0] i_arrayidx1_if_loop_20_add_x_o;
    wire [9:0] i_arrayidx1_if_loop_20_add_x_q;
    wire [63:0] i_arrayidx1_if_loop_20_append_upper_bits_x_q;
    wire [6:0] i_arrayidx1_if_loop_20_narrow_x_b;
    wire [8:0] i_arrayidx1_if_loop_20_shift_join_x_q;
    wire [8:0] i_arrayidx1_if_loop_20_dupName_0_trunc_sel_x_b;
    wire [8:0] i_arrayidx1_if_loop_20_dupName_2_trunc_sel_x_b;
    wire [63:0] i_idxprom_if_loop_215_sel_x_b;
    wire [0:0] i_llvm_fpga_pop_coalesce_i1_if_loop_2_b2_current_iter_isreal_if_loop_20_i_llvm_fpga_pop_coalesce_i1_if_loop_2_b2_current_iter_isreal_if_loop_24_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_coalesce_i1_if_loop_2_b2_current_iter_isreal_if_loop_20_i_llvm_fpga_pop_coalesce_i1_if_loop_2_b2_current_iter_isreal_if_loop_24_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_i_09_pop8_if_loop_20_i_llvm_fpga_pop_i32_i_09_pop8_if_loop_214_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_i_09_pop8_if_loop_20_i_llvm_fpga_pop_i32_i_09_pop8_if_loop_214_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_sum_010_pop7_if_loop_20_i_llvm_fpga_pop_i32_sum_010_pop7_if_loop_222_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_sum_010_pop7_if_loop_20_i_llvm_fpga_pop_i32_sum_010_pop7_if_loop_222_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_20_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_210_mux_x_s;
    reg [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_20_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_210_mux_x_q;
    wire [6:0] i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_c_i7_03_x_q;
    wire [7:0] i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_21_x_i_valid;
    wire i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_21_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_21_x_i_stall;
    wire i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_21_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_21_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_21_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_inv_pred_x_q;
    wire [0:0] i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_adapt_scalar_trunc4_sel_x_b;
    wire [0:0] i_llvm_fpga_push_i32_i_09_push8_if_loop_20_i_llvm_fpga_push_i32_i_09_push8_if_loop_21_x_i_valid;
    wire i_llvm_fpga_push_i32_i_09_push8_if_loop_20_i_llvm_fpga_push_i32_i_09_push8_if_loop_21_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_i_09_push8_if_loop_20_i_llvm_fpga_push_i32_i_09_push8_if_loop_21_x_i_stall;
    wire i_llvm_fpga_push_i32_i_09_push8_if_loop_20_i_llvm_fpga_push_i32_i_09_push8_if_loop_21_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_i_09_push8_if_loop_20_i_llvm_fpga_push_i32_i_09_push8_if_loop_21_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_i_09_push8_if_loop_20_i_llvm_fpga_push_i32_i_09_push8_if_loop_21_x_o_data;
    wire [0:0] i_llvm_fpga_push_i32_sum_010_push7_if_loop_20_i_llvm_fpga_push_i32_sum_010_push7_if_loop_21_x_i_valid;
    wire i_llvm_fpga_push_i32_sum_010_push7_if_loop_20_i_llvm_fpga_push_i32_sum_010_push7_if_loop_21_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_sum_010_push7_if_loop_20_i_llvm_fpga_push_i32_sum_010_push7_if_loop_21_x_i_stall;
    wire i_llvm_fpga_push_i32_sum_010_push7_if_loop_20_i_llvm_fpga_push_i32_sum_010_push7_if_loop_21_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_sum_010_push7_if_loop_20_i_llvm_fpga_push_i32_sum_010_push7_if_loop_21_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_sum_010_push7_if_loop_20_i_llvm_fpga_push_i32_sum_010_push7_if_loop_21_x_o_data;
    wire [30:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_20_c_i31_03_x_q;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_20_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_20_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_21_x_i_valid;
    wire i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_20_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_21_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_20_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_21_x_i_stall;
    wire i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_20_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_21_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_20_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_21_x_i_data;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_20_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_21_x_o_data;
    wire [32:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_20_adapt_scalar_trunc4_sel_x_b;
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
    wire [0:0] i_exitcond_if_loop_225_cmp_nsign_q;
    wire [54:0] i_arrayidx1_if_loop_20_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx1_if_loop_20_upper_bits_x_merged_bit_select_c;
    reg [0:0] redist0_sync_together78_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist0_sync_together78_aunroll_x_in_i_valid_2_delay_0;
    reg [0:0] redist1_sync_together78_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist2_sync_together78_aunroll_x_in_i_valid_6_q;
    reg [0:0] redist2_sync_together78_aunroll_x_in_i_valid_6_delay_0;
    reg [0:0] redist2_sync_together78_aunroll_x_in_i_valid_6_delay_1;
    reg [0:0] redist3_sync_together78_aunroll_x_in_i_valid_8_q;
    reg [0:0] redist3_sync_together78_aunroll_x_in_i_valid_8_delay_0;
    reg [0:0] redist4_sync_together78_aunroll_x_in_i_valid_9_q;
    reg [0:0] redist5_i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_inv_pred_x_q_2_q;
    reg [0:0] redist5_i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_inv_pred_x_q_2_delay_0;
    reg [0:0] redist6_i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_inv_pred_x_q_6_q;
    reg [0:0] redist6_i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_inv_pred_x_q_6_delay_0;
    reg [0:0] redist6_i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_inv_pred_x_q_6_delay_1;
    reg [0:0] redist6_i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_inv_pred_x_q_6_delay_2;
    reg [0:0] redist7_i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_inv_pred_x_q_8_q;
    reg [0:0] redist7_i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_inv_pred_x_q_8_delay_0;
    reg [0:0] redist8_i_unnamed_if_loop_229_q_6_q;
    reg [31:0] redist9_i_llvm_fpga_mem_lm1_if_loop_218_out_o_readdata_1_q;
    reg [0:0] redist10_i_llvm_fpga_forked_if_loop_2_b2_forked_if_loop_23_out_buffer_out_4_q;
    reg [0:0] redist10_i_llvm_fpga_forked_if_loop_2_b2_forked_if_loop_23_out_buffer_out_4_delay_0;
    reg [0:0] redist10_i_llvm_fpga_forked_if_loop_2_b2_forked_if_loop_23_out_buffer_out_4_delay_1;
    reg [0:0] redist10_i_llvm_fpga_forked_if_loop_2_b2_forked_if_loop_23_out_buffer_out_4_delay_2;
    reg [0:0] redist11_i_llvm_fpga_forked_if_loop_2_b2_forked_if_loop_23_out_buffer_out_10_q;
    reg [0:0] redist12_i_llvm_fpga_dummy_thread_if_loop_2_b2_dummy_if_loop_22_out_dummy_out_4_q;
    reg [0:0] redist12_i_llvm_fpga_dummy_thread_if_loop_2_b2_dummy_if_loop_22_out_dummy_out_4_delay_0;
    reg [0:0] redist12_i_llvm_fpga_dummy_thread_if_loop_2_b2_dummy_if_loop_22_out_dummy_out_4_delay_1;
    reg [0:0] redist12_i_llvm_fpga_dummy_thread_if_loop_2_b2_dummy_if_loop_22_out_dummy_out_4_delay_2;
    reg [0:0] redist13_i_if_loop_2_b2_current_iter_isspec_if_loop_25_q_6_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist0_sync_together78_aunroll_x_in_i_valid_2(DELAY,152)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist0_sync_together78_aunroll_x_in_i_valid_2_delay_0 <= '0;
        end
        else
        begin
            redist0_sync_together78_aunroll_x_in_i_valid_2_delay_0 <= $unsigned(in_i_valid);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sync_together78_aunroll_x_in_i_valid_2_q <= redist0_sync_together78_aunroll_x_in_i_valid_2_delay_0;
        end
    end

    // redist1_sync_together78_aunroll_x_in_i_valid_3(DELAY,153)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist1_sync_together78_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist1_sync_together78_aunroll_x_in_i_valid_3_q <= $unsigned(redist0_sync_together78_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg9(REG,132)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist1_sync_together78_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_c_i7_03_x(CONSTANT,104)
    assign i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_c_i7_03_x_q = $unsigned(7'b0000000);

    // valid_fanout_reg2(REG,125)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist1_sync_together78_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg18(REG,141)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(redist1_sync_together78_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg5(REG,128)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist1_sync_together78_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i33_unnamed_if_loop_26_if_loop_29(BLACKBOX,60)@4
    if_loop_2_i_llvm_fpga_ffwd_dest_i33_unnamed_6_if_loop_20 thei_llvm_fpga_ffwd_dest_i33_unnamed_if_loop_26_if_loop_29 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i33_unnamed_if_loop_26_if_loop_29_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef65(CONSTANT,37)
    assign c_i33_undef65_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_20_c_i31_03_x(CONSTANT,116)
    assign i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_20_c_i31_03_x_q = $unsigned(31'b0000000000000000000000000000000);

    // c_i33_170(CONSTANT,36)
    assign c_i33_170_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next_if_loop_227(ADD,47)@4
    assign i_fpga_indvars_iv_next_if_loop_227_a = {1'b0, i_fpga_indvars_iv_replace_phi_if_loop_211_q};
    assign i_fpga_indvars_iv_next_if_loop_227_b = {1'b0, c_i33_170_q};
    assign i_fpga_indvars_iv_next_if_loop_227_o = $unsigned(i_fpga_indvars_iv_next_if_loop_227_a) + $unsigned(i_fpga_indvars_iv_next_if_loop_227_b);
    assign i_fpga_indvars_iv_next_if_loop_227_q = i_fpga_indvars_iv_next_if_loop_227_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next_if_loop_227_sel_x(BITSELECT,77)@4
    assign bgTrunc_i_fpga_indvars_iv_next_if_loop_227_sel_x_b = i_fpga_indvars_iv_next_if_loop_227_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_20_element_extension2_x(BITJOIN,117)@4
    assign i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_20_element_extension2_x_q = {i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_20_c_i31_03_x_q, bgTrunc_i_fpga_indvars_iv_next_if_loop_227_sel_x_b};

    // valid_fanout_reg17(REG,140)@0 + 1
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

    // valid_fanout_reg16(REG,139)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist0_sync_together78_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_20_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_21_x(FIFODELAY,118)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_20_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_21_x_i_stall = ~ (valid_fanout_reg17_q & i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_inv_pred_x_q);
    assign i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_20_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_21_x_i_valid = valid_fanout_reg16_q & redist5_i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_20_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_21_x_i_data = i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_20_element_extension2_x_q;
    assign i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_20_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_21_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_20_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_21_x_i_valid[0];
    assign i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_20_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_21_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_20_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_21_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_20_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_21_x (
        .i_valid(i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_20_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_21_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_20_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_21_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_20_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_20_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_21_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_20_adapt_scalar_trunc4_sel_x(BITSELECT,120)@4
    assign i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_20_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_20_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_21_x_o_data[32:0];

    // i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_20_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_210_mux_x(MUX,102)@4
    assign i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_20_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_210_mux_x_s = redist10_i_llvm_fpga_forked_if_loop_2_b2_forked_if_loop_23_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_20_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_210_mux_x_s or i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_20_adapt_scalar_trunc4_sel_x_b or c_i33_undef65_q)
    begin
        unique case (i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_20_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_210_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_20_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_210_mux_x_q = i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_20_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_20_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_210_mux_x_q = c_i33_undef65_q;
            default : i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_20_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_210_mux_x_q = 33'b0;
        endcase
    end

    // i_fpga_indvars_iv_replace_phi_if_loop_211(MUX,48)@4
    assign i_fpga_indvars_iv_replace_phi_if_loop_211_s = redist10_i_llvm_fpga_forked_if_loop_2_b2_forked_if_loop_23_out_buffer_out_4_q;
    always @(i_fpga_indvars_iv_replace_phi_if_loop_211_s or i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_20_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_210_mux_x_q or i_llvm_fpga_ffwd_dest_i33_unnamed_if_loop_26_if_loop_29_out_dest_data_out_1_0)
    begin
        unique case (i_fpga_indvars_iv_replace_phi_if_loop_211_s)
            1'b0 : i_fpga_indvars_iv_replace_phi_if_loop_211_q = i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_20_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_210_mux_x_q;
            1'b1 : i_fpga_indvars_iv_replace_phi_if_loop_211_q = i_llvm_fpga_ffwd_dest_i33_unnamed_if_loop_26_if_loop_29_out_dest_data_out_1_0;
            default : i_fpga_indvars_iv_replace_phi_if_loop_211_q = 33'b0;
        endcase
    end

    // i_exitcond_if_loop_225_cmp_nsign(LOGICAL,150)@4
    assign i_exitcond_if_loop_225_cmp_nsign_q = $unsigned(~ (i_fpga_indvars_iv_replace_phi_if_loop_211_q[32:32]));

    // valid_fanout_reg11(REG,134)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist1_sync_together78_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp83_if_loop_228(BLACKBOX,58)@4
    if_loop_2_i_llvm_fpga_ffwd_dest_i1_cmp83_0 thei_llvm_fpga_ffwd_dest_i1_cmp83_if_loop_228 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_cmp83_if_loop_228_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_if_loop_229(LOGICAL,69)@4
    assign i_unnamed_if_loop_229_q = i_llvm_fpga_ffwd_dest_i1_cmp83_if_loop_228_out_dest_data_out_0_0 & i_exitcond_if_loop_225_cmp_nsign_q;

    // i_llvm_fpga_push_i1_notexitcond_if_loop_234(BLACKBOX,65)@4
    // in in_empty_in@20000000
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    if_loop_2_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_if_loop_234 (
        .in_almost_empty_in(GND_q),
        .in_data_in(i_unnamed_if_loop_229_q),
        .in_empty_in(GND_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_if_loop_26_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_if_loop_234_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_if_loop_234_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_dummy_thread_if_loop_2_b2_dummy_if_loop_22(BLACKBOX,57)@0
    // in in_stall_in@20000000
    if_loop_2_i_llvm_fpga_dummy_thread_b2_dummy_if_loop_20 thei_llvm_fpga_dummy_thread_if_loop_2_b2_dummy_if_loop_22 (
        .in_dummy_in(in_dummy_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dummy_out(i_llvm_fpga_dummy_thread_if_loop_2_b2_dummy_if_loop_22_out_dummy_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist12_i_llvm_fpga_dummy_thread_if_loop_2_b2_dummy_if_loop_22_out_dummy_out_4(DELAY,164)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist12_i_llvm_fpga_dummy_thread_if_loop_2_b2_dummy_if_loop_22_out_dummy_out_4_delay_0 <= $unsigned(i_llvm_fpga_dummy_thread_if_loop_2_b2_dummy_if_loop_22_out_dummy_out);
            redist12_i_llvm_fpga_dummy_thread_if_loop_2_b2_dummy_if_loop_22_out_dummy_out_4_delay_1 <= redist12_i_llvm_fpga_dummy_thread_if_loop_2_b2_dummy_if_loop_22_out_dummy_out_4_delay_0;
            redist12_i_llvm_fpga_dummy_thread_if_loop_2_b2_dummy_if_loop_22_out_dummy_out_4_delay_2 <= redist12_i_llvm_fpga_dummy_thread_if_loop_2_b2_dummy_if_loop_22_out_dummy_out_4_delay_1;
            redist12_i_llvm_fpga_dummy_thread_if_loop_2_b2_dummy_if_loop_22_out_dummy_out_4_q <= redist12_i_llvm_fpga_dummy_thread_if_loop_2_b2_dummy_if_loop_22_out_dummy_out_4_delay_2;
        end
    end

    // i_llvm_fpga_pipeline_keep_going_if_loop_26(BLACKBOX,64)@4
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_dummy_out@20000000
    // out out_pipeline_forked_out@20000000
    // out out_pipeline_valid_out@20000000
    if_loop_2_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_if_loop_26 (
        .in_data_in(redist10_i_llvm_fpga_forked_if_loop_2_b2_forked_if_loop_23_out_buffer_out_4_q),
        .in_dummy_in(redist12_i_llvm_fpga_dummy_thread_if_loop_2_b2_dummy_if_loop_22_out_dummy_out_4_q),
        .in_forked_in(redist10_i_llvm_fpga_forked_if_loop_2_b2_forked_if_loop_23_out_buffer_out_4_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_if_loop_234_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_if_loop_234_out_feedback_valid_out_3),
        .in_pipeline_stall_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_if_loop_26_out_data_out),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_if_loop_26_out_exiting_valid_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_if_loop_26_out_not_exitcond_stall_out),
        .out_pipeline_dummy_out(i_llvm_fpga_pipeline_keep_going_if_loop_26_out_pipeline_dummy_out),
        .out_pipeline_forked_out(i_llvm_fpga_pipeline_keep_going_if_loop_26_out_pipeline_forked_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_if_loop_26_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_if_loop_2_b2_next_iter_isreal_if_loop_27(LOGICAL,55)@4
    assign i_if_loop_2_b2_next_iter_isreal_if_loop_27_q = i_llvm_fpga_pop_coalesce_i1_if_loop_2_b2_current_iter_isreal_if_loop_20_i_llvm_fpga_pop_coalesce_i1_if_loop_2_b2_current_iter_isreal_if_loop_24_mux_x_q & i_llvm_fpga_pipeline_keep_going_if_loop_26_out_data_out;

    // i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_element_extension2_x(BITJOIN,105)@4
    assign i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_element_extension2_x_q = {i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_c_i7_03_x_q, i_if_loop_2_b2_next_iter_isreal_if_loop_27_q};

    // i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_inv_pred_x(LOGICAL,107)@1
    assign i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_inv_pred_x_q = ~ (GND_q);

    // valid_fanout_reg4(REG,127)@0 + 1
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

    // redist5_i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_inv_pred_x_q_2(DELAY,157)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_inv_pred_x_q_2_delay_0 <= $unsigned(i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_inv_pred_x_q);
            redist5_i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_inv_pred_x_q_2_q <= redist5_i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_inv_pred_x_q_2_delay_0;
        end
    end

    // valid_fanout_reg3(REG,126)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist0_sync_together78_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_21_x(FIFODELAY,106)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_21_x_i_stall = ~ (valid_fanout_reg4_q & i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_21_x_i_valid = valid_fanout_reg3_q & redist5_i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_21_x_i_data = i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_21_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_21_x_i_valid[0];
    assign i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_21_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_21_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_21_x (
        .i_valid(i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_21_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_21_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_21_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_adapt_scalar_trunc4_sel_x(BITSELECT,108)@4
    assign i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_21_x_o_data[0:0];

    // i_llvm_fpga_forked_if_loop_2_b2_forked_if_loop_23(BLACKBOX,62)@0
    // in in_stall_in@20000000
    if_loop_2_i_llvm_fpga_forked_b2_forked_if_loop_20 thei_llvm_fpga_forked_if_loop_2_b2_forked_if_loop_23 (
        .in_buffer_in(in_buffer_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_buffer_out(i_llvm_fpga_forked_if_loop_2_b2_forked_if_loop_23_out_buffer_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist10_i_llvm_fpga_forked_if_loop_2_b2_forked_if_loop_23_out_buffer_out_4(DELAY,162)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_i_llvm_fpga_forked_if_loop_2_b2_forked_if_loop_23_out_buffer_out_4_delay_0 <= $unsigned(i_llvm_fpga_forked_if_loop_2_b2_forked_if_loop_23_out_buffer_out);
            redist10_i_llvm_fpga_forked_if_loop_2_b2_forked_if_loop_23_out_buffer_out_4_delay_1 <= redist10_i_llvm_fpga_forked_if_loop_2_b2_forked_if_loop_23_out_buffer_out_4_delay_0;
            redist10_i_llvm_fpga_forked_if_loop_2_b2_forked_if_loop_23_out_buffer_out_4_delay_2 <= redist10_i_llvm_fpga_forked_if_loop_2_b2_forked_if_loop_23_out_buffer_out_4_delay_1;
            redist10_i_llvm_fpga_forked_if_loop_2_b2_forked_if_loop_23_out_buffer_out_4_q <= redist10_i_llvm_fpga_forked_if_loop_2_b2_forked_if_loop_23_out_buffer_out_4_delay_2;
        end
    end

    // i_llvm_fpga_pop_coalesce_i1_if_loop_2_b2_current_iter_isreal_if_loop_20_i_llvm_fpga_pop_coalesce_i1_if_loop_2_b2_current_iter_isreal_if_loop_24_mux_x(MUX,99)@4
    assign i_llvm_fpga_pop_coalesce_i1_if_loop_2_b2_current_iter_isreal_if_loop_20_i_llvm_fpga_pop_coalesce_i1_if_loop_2_b2_current_iter_isreal_if_loop_24_mux_x_s = redist10_i_llvm_fpga_forked_if_loop_2_b2_forked_if_loop_23_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_coalesce_i1_if_loop_2_b2_current_iter_isreal_if_loop_20_i_llvm_fpga_pop_coalesce_i1_if_loop_2_b2_current_iter_isreal_if_loop_24_mux_x_s or i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_adapt_scalar_trunc4_sel_x_b or VCC_q)
    begin
        unique case (i_llvm_fpga_pop_coalesce_i1_if_loop_2_b2_current_iter_isreal_if_loop_20_i_llvm_fpga_pop_coalesce_i1_if_loop_2_b2_current_iter_isreal_if_loop_24_mux_x_s)
            1'b0 : i_llvm_fpga_pop_coalesce_i1_if_loop_2_b2_current_iter_isreal_if_loop_20_i_llvm_fpga_pop_coalesce_i1_if_loop_2_b2_current_iter_isreal_if_loop_24_mux_x_q = i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_coalesce_i1_if_loop_2_b2_current_iter_isreal_if_loop_20_i_llvm_fpga_pop_coalesce_i1_if_loop_2_b2_current_iter_isreal_if_loop_24_mux_x_q = VCC_q;
            default : i_llvm_fpga_pop_coalesce_i1_if_loop_2_b2_current_iter_isreal_if_loop_20_i_llvm_fpga_pop_coalesce_i1_if_loop_2_b2_current_iter_isreal_if_loop_24_mux_x_q = 1'b0;
        endcase
    end

    // i_if_loop_2_b2_current_iter_isspec_if_loop_25(LOGICAL,53)@4
    assign i_if_loop_2_b2_current_iter_isspec_if_loop_25_q = i_llvm_fpga_pop_coalesce_i1_if_loop_2_b2_current_iter_isreal_if_loop_20_i_llvm_fpga_pop_coalesce_i1_if_loop_2_b2_current_iter_isreal_if_loop_24_mux_x_q ^ VCC_q;

    // valid_fanout_reg7(REG,130)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist1_sync_together78_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp84_if_loop_212(BLACKBOX,59)@4
    if_loop_2_i_llvm_fpga_ffwd_dest_i1_cmp84_0 thei_llvm_fpga_ffwd_dest_i1_cmp84_if_loop_212 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_cmp84_if_loop_212_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_if_loop_213(LOGICAL,68)@4
    assign i_unnamed_if_loop_213_q = i_llvm_fpga_ffwd_dest_i1_cmp84_if_loop_212_out_dest_data_out_0_0 ^ VCC_q;

    // i_if_loop_2_b2_current_iter_isspec_or_if_loop_217(LOGICAL,54)@4
    assign i_if_loop_2_b2_current_iter_isspec_or_if_loop_217_q = i_unnamed_if_loop_213_q | i_if_loop_2_b2_current_iter_isspec_if_loop_25_q;

    // c_if_loop_2_a_local_pmem(CONSTANT,38)
    assign c_if_loop_2_a_local_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx1_if_loop_20_upper_bits_x_merged_bit_select(BITSELECT,151)@4
    assign i_arrayidx1_if_loop_20_upper_bits_x_merged_bit_select_b = c_if_loop_2_a_local_pmem_q[63:9];
    assign i_arrayidx1_if_loop_20_upper_bits_x_merged_bit_select_c = c_if_loop_2_a_local_pmem_q[8:0];

    // c_i32_066(CONSTANT,34)
    assign c_i32_066_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i32_168(CONSTANT,35)
    assign c_i32_168_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_if_loop_224(ADD,56)@4
    assign i_inc_if_loop_224_a = {1'b0, i_llvm_fpga_pop_i32_i_09_pop8_if_loop_20_i_llvm_fpga_pop_i32_i_09_pop8_if_loop_214_mux_x_q};
    assign i_inc_if_loop_224_b = {1'b0, c_i32_168_q};
    assign i_inc_if_loop_224_o = $unsigned(i_inc_if_loop_224_a) + $unsigned(i_inc_if_loop_224_b);
    assign i_inc_if_loop_224_q = i_inc_if_loop_224_o[32:0];

    // bgTrunc_i_inc_if_loop_224_sel_x(BITSELECT,78)@4
    assign bgTrunc_i_inc_if_loop_224_sel_x_b = i_inc_if_loop_224_q[31:0];

    // valid_fanout_reg13(REG,136)@0 + 1
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

    // valid_fanout_reg12(REG,135)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist0_sync_together78_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i32_i_09_push8_if_loop_20_i_llvm_fpga_push_i32_i_09_push8_if_loop_21_x(FIFODELAY,109)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i32_i_09_push8_if_loop_20_i_llvm_fpga_push_i32_i_09_push8_if_loop_21_x_i_stall = ~ (valid_fanout_reg13_q & i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_inv_pred_x_q);
    assign i_llvm_fpga_push_i32_i_09_push8_if_loop_20_i_llvm_fpga_push_i32_i_09_push8_if_loop_21_x_i_valid = valid_fanout_reg12_q & redist5_i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i32_i_09_push8_if_loop_20_i_llvm_fpga_push_i32_i_09_push8_if_loop_21_x_i_data = bgTrunc_i_inc_if_loop_224_sel_x_b;
    assign i_llvm_fpga_push_i32_i_09_push8_if_loop_20_i_llvm_fpga_push_i32_i_09_push8_if_loop_21_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_i_09_push8_if_loop_20_i_llvm_fpga_push_i32_i_09_push8_if_loop_21_x_i_valid[0];
    assign i_llvm_fpga_push_i32_i_09_push8_if_loop_20_i_llvm_fpga_push_i32_i_09_push8_if_loop_21_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_i_09_push8_if_loop_20_i_llvm_fpga_push_i32_i_09_push8_if_loop_21_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_i_09_push8_if_loop_20_i_llvm_fpga_push_i32_i_09_push8_if_loop_21_x (
        .i_valid(i_llvm_fpga_push_i32_i_09_push8_if_loop_20_i_llvm_fpga_push_i32_i_09_push8_if_loop_21_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_i_09_push8_if_loop_20_i_llvm_fpga_push_i32_i_09_push8_if_loop_21_x_i_stall_bitsignaltemp),
        .i_data(bgTrunc_i_inc_if_loop_224_sel_x_b),
        .o_data(i_llvm_fpga_push_i32_i_09_push8_if_loop_20_i_llvm_fpga_push_i32_i_09_push8_if_loop_21_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_09_pop8_if_loop_20_i_llvm_fpga_pop_i32_i_09_pop8_if_loop_214_mux_x(MUX,100)@4
    assign i_llvm_fpga_pop_i32_i_09_pop8_if_loop_20_i_llvm_fpga_pop_i32_i_09_pop8_if_loop_214_mux_x_s = redist10_i_llvm_fpga_forked_if_loop_2_b2_forked_if_loop_23_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i32_i_09_pop8_if_loop_20_i_llvm_fpga_pop_i32_i_09_pop8_if_loop_214_mux_x_s or i_llvm_fpga_push_i32_i_09_push8_if_loop_20_i_llvm_fpga_push_i32_i_09_push8_if_loop_21_x_o_data or c_i32_066_q)
    begin
        unique case (i_llvm_fpga_pop_i32_i_09_pop8_if_loop_20_i_llvm_fpga_pop_i32_i_09_pop8_if_loop_214_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_i_09_pop8_if_loop_20_i_llvm_fpga_pop_i32_i_09_pop8_if_loop_214_mux_x_q = i_llvm_fpga_push_i32_i_09_push8_if_loop_20_i_llvm_fpga_push_i32_i_09_push8_if_loop_21_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_i_09_pop8_if_loop_20_i_llvm_fpga_pop_i32_i_09_pop8_if_loop_214_mux_x_q = c_i32_066_q;
            default : i_llvm_fpga_pop_i32_i_09_pop8_if_loop_20_i_llvm_fpga_pop_i32_i_09_pop8_if_loop_214_mux_x_q = 32'b0;
        endcase
    end

    // i_idxprom_if_loop_215_sel_x(BITSELECT,98)@4
    assign i_idxprom_if_loop_215_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_i_09_pop8_if_loop_20_i_llvm_fpga_pop_i32_i_09_pop8_if_loop_214_mux_x_q[31:0]};

    // i_idxprom_if_loop_215_vt_select_31(BITSELECT,52)@4
    assign i_idxprom_if_loop_215_vt_select_31_b = i_idxprom_if_loop_215_sel_x_b[31:0];

    // i_idxprom_if_loop_215_vt_join(BITJOIN,51)@4
    assign i_idxprom_if_loop_215_vt_join_q = {c_i32_066_q, i_idxprom_if_loop_215_vt_select_31_b};

    // i_arrayidx1_if_loop_20_dupName_0_trunc_sel_x(BITSELECT,96)@4
    assign i_arrayidx1_if_loop_20_dupName_0_trunc_sel_x_b = i_idxprom_if_loop_215_vt_join_q[8:0];

    // i_arrayidx1_if_loop_20_narrow_x(BITSELECT,89)@4
    assign i_arrayidx1_if_loop_20_narrow_x_b = i_arrayidx1_if_loop_20_dupName_0_trunc_sel_x_b[6:0];

    // i_arrayidx1_if_loop_20_shift_join_x(BITJOIN,90)@4
    assign i_arrayidx1_if_loop_20_shift_join_x_q = {i_arrayidx1_if_loop_20_narrow_x_b, i_arrayidx1_if_loop_216_vt_const_1_q};

    // i_arrayidx1_if_loop_20_add_x(ADD,86)@4
    assign i_arrayidx1_if_loop_20_add_x_a = {1'b0, i_arrayidx1_if_loop_20_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx1_if_loop_20_add_x_b = {1'b0, i_arrayidx1_if_loop_20_shift_join_x_q};
    assign i_arrayidx1_if_loop_20_add_x_o = $unsigned(i_arrayidx1_if_loop_20_add_x_a) + $unsigned(i_arrayidx1_if_loop_20_add_x_b);
    assign i_arrayidx1_if_loop_20_add_x_q = i_arrayidx1_if_loop_20_add_x_o[9:0];

    // i_arrayidx1_if_loop_20_dupName_2_trunc_sel_x(BITSELECT,97)@4
    assign i_arrayidx1_if_loop_20_dupName_2_trunc_sel_x_b = i_arrayidx1_if_loop_20_add_x_q[8:0];

    // i_arrayidx1_if_loop_20_append_upper_bits_x(BITJOIN,87)@4
    assign i_arrayidx1_if_loop_20_append_upper_bits_x_q = {i_arrayidx1_if_loop_20_upper_bits_x_merged_bit_select_b, i_arrayidx1_if_loop_20_dupName_2_trunc_sel_x_b};

    // i_arrayidx1_if_loop_216_vt_select_63(BITSELECT,44)@4
    assign i_arrayidx1_if_loop_216_vt_select_63_b = i_arrayidx1_if_loop_20_append_upper_bits_x_q[63:2];

    // i_arrayidx1_if_loop_216_vt_const_1(CONSTANT,42)
    assign i_arrayidx1_if_loop_216_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx1_if_loop_216_vt_join(BITJOIN,43)@4
    assign i_arrayidx1_if_loop_216_vt_join_q = {i_arrayidx1_if_loop_216_vt_select_63_b, i_arrayidx1_if_loop_216_vt_const_1_q};

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_mem_lm1_if_loop_218(BLACKBOX,63)@4
    // out out_lm1_if_loop_2_avm_address@20000000
    // out out_lm1_if_loop_2_avm_burstcount@20000000
    // out out_lm1_if_loop_2_avm_byteenable@20000000
    // out out_lm1_if_loop_2_avm_enable@20000000
    // out out_lm1_if_loop_2_avm_read@20000000
    // out out_lm1_if_loop_2_avm_write@20000000
    // out out_lm1_if_loop_2_avm_writedata@20000000
    // out out_o_almost_empty@8
    // out out_o_empty@8
    // out out_o_readdata@8
    // out out_o_stall@8
    // out out_o_valid@8
    if_loop_2_i_llvm_fpga_mem_lm1_0 thei_llvm_fpga_mem_lm1_if_loop_218 (
        .in_almost_empty_in(GND_q),
        .in_empty_in(GND_q),
        .in_flush(in_flush),
        .in_i_address(i_arrayidx1_if_loop_216_vt_join_q),
        .in_i_predicate(i_if_loop_2_b2_current_iter_isspec_or_if_loop_217_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg9_q),
        .in_lm1_if_loop_2_avm_readdata(in_lm1_if_loop_2_avm_readdata),
        .in_lm1_if_loop_2_avm_readdatavalid(in_lm1_if_loop_2_avm_readdatavalid),
        .in_lm1_if_loop_2_avm_waitrequest(in_lm1_if_loop_2_avm_waitrequest),
        .in_lm1_if_loop_2_avm_writeack(in_lm1_if_loop_2_avm_writeack),
        .out_lm1_if_loop_2_avm_address(i_llvm_fpga_mem_lm1_if_loop_218_out_lm1_if_loop_2_avm_address),
        .out_lm1_if_loop_2_avm_burstcount(i_llvm_fpga_mem_lm1_if_loop_218_out_lm1_if_loop_2_avm_burstcount),
        .out_lm1_if_loop_2_avm_byteenable(i_llvm_fpga_mem_lm1_if_loop_218_out_lm1_if_loop_2_avm_byteenable),
        .out_lm1_if_loop_2_avm_enable(i_llvm_fpga_mem_lm1_if_loop_218_out_lm1_if_loop_2_avm_enable),
        .out_lm1_if_loop_2_avm_read(i_llvm_fpga_mem_lm1_if_loop_218_out_lm1_if_loop_2_avm_read),
        .out_lm1_if_loop_2_avm_write(i_llvm_fpga_mem_lm1_if_loop_218_out_lm1_if_loop_2_avm_write),
        .out_lm1_if_loop_2_avm_writedata(i_llvm_fpga_mem_lm1_if_loop_218_out_lm1_if_loop_2_avm_writedata),
        .out_o_almost_empty(),
        .out_o_empty(),
        .out_o_readdata(i_llvm_fpga_mem_lm1_if_loop_218_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,40)
    assign out_lm1_if_loop_2_avm_address = i_llvm_fpga_mem_lm1_if_loop_218_out_lm1_if_loop_2_avm_address;
    assign out_lm1_if_loop_2_avm_enable = i_llvm_fpga_mem_lm1_if_loop_218_out_lm1_if_loop_2_avm_enable;
    assign out_lm1_if_loop_2_avm_read = i_llvm_fpga_mem_lm1_if_loop_218_out_lm1_if_loop_2_avm_read;
    assign out_lm1_if_loop_2_avm_write = i_llvm_fpga_mem_lm1_if_loop_218_out_lm1_if_loop_2_avm_write;
    assign out_lm1_if_loop_2_avm_writedata = i_llvm_fpga_mem_lm1_if_loop_218_out_lm1_if_loop_2_avm_writedata;
    assign out_lm1_if_loop_2_avm_byteenable = i_llvm_fpga_mem_lm1_if_loop_218_out_lm1_if_loop_2_avm_byteenable;
    assign out_lm1_if_loop_2_avm_burstcount = i_llvm_fpga_mem_lm1_if_loop_218_out_lm1_if_loop_2_avm_burstcount;

    // regfree_osync(GPOUT,75)
    assign out_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_if_loop_26_out_exiting_valid_out;

    // redist2_sync_together78_aunroll_x_in_i_valid_6(DELAY,154)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_sync_together78_aunroll_x_in_i_valid_6_delay_0 <= $unsigned(redist1_sync_together78_aunroll_x_in_i_valid_3_q);
        end
    end
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist2_sync_together78_aunroll_x_in_i_valid_6_delay_1 <= '0;
        end
        else
        begin
            redist2_sync_together78_aunroll_x_in_i_valid_6_delay_1 <= redist2_sync_together78_aunroll_x_in_i_valid_6_delay_0;
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_sync_together78_aunroll_x_in_i_valid_6_q <= redist2_sync_together78_aunroll_x_in_i_valid_6_delay_1;
        end
    end

    // redist3_sync_together78_aunroll_x_in_i_valid_8(DELAY,155)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist3_sync_together78_aunroll_x_in_i_valid_8_delay_0 <= '0;
        end
        else
        begin
            redist3_sync_together78_aunroll_x_in_i_valid_8_delay_0 <= $unsigned(redist2_sync_together78_aunroll_x_in_i_valid_6_q);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_sync_together78_aunroll_x_in_i_valid_8_q <= redist3_sync_together78_aunroll_x_in_i_valid_8_delay_0;
        end
    end

    // redist4_sync_together78_aunroll_x_in_i_valid_9(DELAY,156)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist4_sync_together78_aunroll_x_in_i_valid_9_q <= '0;
        end
        else
        begin
            redist4_sync_together78_aunroll_x_in_i_valid_9_q <= $unsigned(redist3_sync_together78_aunroll_x_in_i_valid_8_q);
        end
    end

    // valid_fanout_reg19(REG,142)@9 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(redist4_sync_together78_aunroll_x_in_i_valid_9_q);
        end
    end

    // redist6_i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_inv_pred_x_q_6(DELAY,158)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_inv_pred_x_q_6_delay_0 <= $unsigned(redist5_i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_inv_pred_x_q_2_q);
            redist6_i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_inv_pred_x_q_6_delay_1 <= redist6_i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_inv_pred_x_q_6_delay_0;
            redist6_i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_inv_pred_x_q_6_delay_2 <= redist6_i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_inv_pred_x_q_6_delay_1;
            redist6_i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_inv_pred_x_q_6_q <= redist6_i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_inv_pred_x_q_6_delay_2;
        end
    end

    // valid_fanout_reg15(REG,138)@6 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist2_sync_together78_aunroll_x_in_i_valid_6_q);
        end
    end

    // redist7_i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_inv_pred_x_q_8(DELAY,159)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_inv_pred_x_q_8_delay_0 <= $unsigned(redist6_i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_inv_pred_x_q_6_q);
            redist7_i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_inv_pred_x_q_8_q <= redist7_i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_inv_pred_x_q_8_delay_0;
        end
    end

    // valid_fanout_reg14(REG,137)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist3_sync_together78_aunroll_x_in_i_valid_8_q);
        end
    end

    // i_llvm_fpga_push_i32_sum_010_push7_if_loop_20_i_llvm_fpga_push_i32_sum_010_push7_if_loop_21_x(FIFODELAY,112)@7 + 1
    // in i_valid@9
    // in i_write_pred@9
    // in i_data@10
    // out o_data@10
    assign i_llvm_fpga_push_i32_sum_010_push7_if_loop_20_i_llvm_fpga_push_i32_sum_010_push7_if_loop_21_x_i_stall = ~ (valid_fanout_reg15_q & redist6_i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_inv_pred_x_q_6_q);
    assign i_llvm_fpga_push_i32_sum_010_push7_if_loop_20_i_llvm_fpga_push_i32_sum_010_push7_if_loop_21_x_i_valid = valid_fanout_reg14_q & redist7_i_llvm_fpga_push_i1_if_loop_2_b2_next_iter_isreal_push_if_loop_20_inv_pred_x_q_8_q;
    assign i_llvm_fpga_push_i32_sum_010_push7_if_loop_20_i_llvm_fpga_push_i32_sum_010_push7_if_loop_21_x_i_data = bgTrunc_i_spec_select_if_loop_223_sel_x_b;
    assign i_llvm_fpga_push_i32_sum_010_push7_if_loop_20_i_llvm_fpga_push_i32_sum_010_push7_if_loop_21_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_sum_010_push7_if_loop_20_i_llvm_fpga_push_i32_sum_010_push7_if_loop_21_x_i_valid[0];
    assign i_llvm_fpga_push_i32_sum_010_push7_if_loop_20_i_llvm_fpga_push_i32_sum_010_push7_if_loop_21_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_sum_010_push7_if_loop_20_i_llvm_fpga_push_i32_sum_010_push7_if_loop_21_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_sum_010_push7_if_loop_20_i_llvm_fpga_push_i32_sum_010_push7_if_loop_21_x (
        .i_valid(i_llvm_fpga_push_i32_sum_010_push7_if_loop_20_i_llvm_fpga_push_i32_sum_010_push7_if_loop_21_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_sum_010_push7_if_loop_20_i_llvm_fpga_push_i32_sum_010_push7_if_loop_21_x_i_stall_bitsignaltemp),
        .i_data(bgTrunc_i_spec_select_if_loop_223_sel_x_b),
        .o_data(i_llvm_fpga_push_i32_sum_010_push7_if_loop_20_i_llvm_fpga_push_i32_sum_010_push7_if_loop_21_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // redist11_i_llvm_fpga_forked_if_loop_2_b2_forked_if_loop_23_out_buffer_out_10(DELAY,163)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist11_i_llvm_fpga_forked_if_loop_2_b2_forked_if_loop_23_out_buffer_out_10 ( .xin(redist10_i_llvm_fpga_forked_if_loop_2_b2_forked_if_loop_23_out_buffer_out_4_q), .xout(redist11_i_llvm_fpga_forked_if_loop_2_b2_forked_if_loop_23_out_buffer_out_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_pop_i32_sum_010_pop7_if_loop_20_i_llvm_fpga_pop_i32_sum_010_pop7_if_loop_222_mux_x(MUX,101)@10
    assign i_llvm_fpga_pop_i32_sum_010_pop7_if_loop_20_i_llvm_fpga_pop_i32_sum_010_pop7_if_loop_222_mux_x_s = redist11_i_llvm_fpga_forked_if_loop_2_b2_forked_if_loop_23_out_buffer_out_10_q;
    always @(i_llvm_fpga_pop_i32_sum_010_pop7_if_loop_20_i_llvm_fpga_pop_i32_sum_010_pop7_if_loop_222_mux_x_s or i_llvm_fpga_push_i32_sum_010_push7_if_loop_20_i_llvm_fpga_push_i32_sum_010_push7_if_loop_21_x_o_data or c_i32_066_q)
    begin
        unique case (i_llvm_fpga_pop_i32_sum_010_pop7_if_loop_20_i_llvm_fpga_pop_i32_sum_010_pop7_if_loop_222_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_sum_010_pop7_if_loop_20_i_llvm_fpga_pop_i32_sum_010_pop7_if_loop_222_mux_x_q = i_llvm_fpga_push_i32_sum_010_push7_if_loop_20_i_llvm_fpga_push_i32_sum_010_push7_if_loop_21_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_sum_010_pop7_if_loop_20_i_llvm_fpga_pop_i32_sum_010_pop7_if_loop_222_mux_x_q = c_i32_066_q;
            default : i_llvm_fpga_pop_i32_sum_010_pop7_if_loop_20_i_llvm_fpga_pop_i32_sum_010_pop7_if_loop_222_mux_x_q = 32'b0;
        endcase
    end

    // redist9_i_llvm_fpga_mem_lm1_if_loop_218_out_o_readdata_1(DELAY,161)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist9_i_llvm_fpga_mem_lm1_if_loop_218_out_o_readdata_1_q <= $unsigned(i_llvm_fpga_mem_lm1_if_loop_218_out_o_readdata);
        end
    end

    // c_i32_1067_recast_x(CONSTANT,80)
    assign c_i32_1067_recast_x_q = $unsigned(32'b00000000000000000000000000001010);

    // i_cmp2_if_loop_219(COMPARE,45)@8 + 1
    assign i_cmp2_if_loop_219_a = $unsigned({{2{c_i32_1067_recast_x_q[31]}}, c_i32_1067_recast_x_q});
    assign i_cmp2_if_loop_219_b = $unsigned({{2{i_llvm_fpga_mem_lm1_if_loop_218_out_o_readdata[31]}}, i_llvm_fpga_mem_lm1_if_loop_218_out_o_readdata});
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_cmp2_if_loop_219_o <= $unsigned($signed(i_cmp2_if_loop_219_a) - $signed(i_cmp2_if_loop_219_b));
        end
    end
    assign i_cmp2_if_loop_219_c[0] = i_cmp2_if_loop_219_o[33];

    // i_add_if_loop_221(MUX,41)@9 + 1
    assign i_add_if_loop_221_s = i_cmp2_if_loop_219_c;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_add_if_loop_221_s)
                1'b0 : i_add_if_loop_221_q <= c_i32_066_q;
                1'b1 : i_add_if_loop_221_q <= redist9_i_llvm_fpga_mem_lm1_if_loop_218_out_o_readdata_1_q;
                default : i_add_if_loop_221_q <= 32'b0;
            endcase
        end
    end

    // i_spec_select_if_loop_223(ADD,67)@10
    assign i_spec_select_if_loop_223_a = {1'b0, i_add_if_loop_221_q};
    assign i_spec_select_if_loop_223_b = {1'b0, i_llvm_fpga_pop_i32_sum_010_pop7_if_loop_20_i_llvm_fpga_pop_i32_sum_010_pop7_if_loop_222_mux_x_q};
    assign i_spec_select_if_loop_223_o = $unsigned(i_spec_select_if_loop_223_a) + $unsigned(i_spec_select_if_loop_223_b);
    assign i_spec_select_if_loop_223_q = i_spec_select_if_loop_223_o[32:0];

    // bgTrunc_i_spec_select_if_loop_223_sel_x(BITSELECT,79)@10
    assign bgTrunc_i_spec_select_if_loop_223_sel_x_b = i_spec_select_if_loop_223_q[31:0];

    // redist13_i_if_loop_2_b2_current_iter_isspec_if_loop_25_q_6(DELAY,165)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist13_i_if_loop_2_b2_current_iter_isspec_if_loop_25_q_6 ( .xin(i_if_loop_2_b2_current_iter_isspec_if_loop_25_q), .xout(redist13_i_if_loop_2_b2_current_iter_isspec_if_loop_25_q_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_ffwd_source_i32_unnamed_if_loop_27_if_loop_235(BLACKBOX,61)@10
    // out out_intel_reserved_ffwd_2_0@20000000
    if_loop_2_i_llvm_fpga_ffwd_source_i32_unnamed_7_if_loop_20 thei_llvm_fpga_ffwd_source_i32_unnamed_if_loop_27_if_loop_235 (
        .in_predicate_in(redist13_i_if_loop_2_b2_current_iter_isspec_if_loop_25_q_6_q),
        .in_src_data_in_2_0(bgTrunc_i_spec_select_if_loop_223_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_intel_reserved_ffwd_2_0(i_llvm_fpga_ffwd_source_i32_unnamed_if_loop_27_if_loop_235_out_intel_reserved_ffwd_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,82)
    assign out_intel_reserved_ffwd_2_0 = i_llvm_fpga_ffwd_source_i32_unnamed_if_loop_27_if_loop_235_out_intel_reserved_ffwd_2_0;

    // dupName_1_regfree_osync_x(GPOUT,83)
    assign out_pipeline_dummy_out = i_llvm_fpga_pipeline_keep_going_if_loop_26_out_pipeline_dummy_out;

    // dupName_2_regfree_osync_x(GPOUT,84)
    assign out_pipeline_forked_out = i_llvm_fpga_pipeline_keep_going_if_loop_26_out_pipeline_forked_out;

    // dupName_3_regfree_osync_x(GPOUT,85)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_if_loop_26_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,123)@9 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist4_sync_together78_aunroll_x_in_i_valid_9_q);
        end
    end

    // i_notcmp_if_loop_233(LOGICAL,66)@10
    assign i_notcmp_if_loop_233_q = redist8_i_unnamed_if_loop_229_q_6_q ^ VCC_q;

    // redist8_i_unnamed_if_loop_229_q_6(DELAY,160)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist8_i_unnamed_if_loop_229_q_6 ( .xin(i_unnamed_if_loop_229_q), .xout(redist8_i_unnamed_if_loop_229_q_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,121)@10
    assign out_c0_exi2_0_tpl = GND_q;
    assign out_c0_exi2_1_tpl = redist8_i_unnamed_if_loop_229_q_6_q;
    assign out_c0_exi2_2_tpl = i_notcmp_if_loop_233_q;
    assign out_if_loop_2_B2_current_iter_isspec = redist13_i_if_loop_2_b2_current_iter_isspec_if_loop_25_q_6_q;
    assign out_o_valid = valid_fanout_reg0_q;

endmodule
