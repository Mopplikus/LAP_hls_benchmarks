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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body_firs_c0_enter102_fir0
// Created for function/kernel fir
// SystemVerilog created on Tue Apr 25 23:40:01 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module fir_i_sfc_logic_s_c0_in_for_body_s_c0_enter102_fir0 (
    input wire [31:0] in_unnamed_fir5_fir_avm_readdata,
    input wire [0:0] in_unnamed_fir5_fir_avm_writeack,
    input wire [0:0] in_unnamed_fir5_fir_avm_waitrequest,
    input wire [0:0] in_unnamed_fir5_fir_avm_readdatavalid,
    output wire [31:0] out_unnamed_fir5_fir_avm_address,
    output wire [0:0] out_unnamed_fir5_fir_avm_enable,
    output wire [0:0] out_unnamed_fir5_fir_avm_read,
    output wire [0:0] out_unnamed_fir5_fir_avm_write,
    output wire [31:0] out_unnamed_fir5_fir_avm_writedata,
    output wire [3:0] out_unnamed_fir5_fir_avm_byteenable,
    output wire [0:0] out_unnamed_fir5_fir_avm_burstcount,
    input wire [0:0] in_flush,
    output wire [0:0] out_exiting_valid_out,
    input wire [31:0] in_unnamed_fir6_fir_avm_readdata,
    input wire [0:0] in_unnamed_fir6_fir_avm_writeack,
    input wire [0:0] in_unnamed_fir6_fir_avm_waitrequest,
    input wire [0:0] in_unnamed_fir6_fir_avm_readdatavalid,
    output wire [31:0] out_unnamed_fir6_fir_avm_address,
    output wire [0:0] out_unnamed_fir6_fir_avm_enable,
    output wire [0:0] out_unnamed_fir6_fir_avm_read,
    output wire [0:0] out_unnamed_fir6_fir_avm_write,
    output wire [31:0] out_unnamed_fir6_fir_avm_writedata,
    output wire [3:0] out_unnamed_fir6_fir_avm_byteenable,
    output wire [0:0] out_unnamed_fir6_fir_avm_burstcount,
    output wire [31:0] out_intel_reserved_ffwd_0_0,
    output wire [0:0] out_pipeline_dummy_out,
    output wire [0:0] out_pipeline_forked_out,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_c0_exi2_0_tpl,
    output wire [0:0] out_c0_exi2_1_tpl,
    output wire [0:0] out_c0_exi2_2_tpl,
    output wire [0:0] out_fir_B3_current_iter_isspec,
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
    wire [63:0] c_fir_d_i_local_pmem_q;
    wire [63:0] c_fir_idx_local_pmem_q;
    wire [10:0] c_i11_164_q;
    wire [10:0] c_i11_99862_q;
    wire [31:0] c_i32_059_q;
    wire [31:0] c_i32_161_q;
    wire [31:0] c_i32_99960_q;
    wire [32:0] i_add_fir19_a;
    wire [32:0] i_add_fir19_b;
    logic [32:0] i_add_fir19_o;
    wire [32:0] i_add_fir19_q;
    wire [1:0] i_arrayidx1_fir11_vt_const_1_q;
    wire [63:0] i_arrayidx1_fir11_vt_join_q;
    wire [61:0] i_arrayidx1_fir11_vt_select_63_b;
    wire [63:0] i_arrayidx42_fir15_vt_join_q;
    wire [61:0] i_arrayidx42_fir15_vt_select_63_b;
    wire [0:0] i_fir_b3_current_iter_isspec_fir5_q;
    wire [0:0] i_fir_b3_next_iter_isreal_fir7_q;
    wire [11:0] i_fpga_indvars_iv_next_fir28_a;
    wire [11:0] i_fpga_indvars_iv_next_fir28_b;
    logic [11:0] i_fpga_indvars_iv_next_fir28_o;
    wire [11:0] i_fpga_indvars_iv_next_fir28_q;
    wire [63:0] i_idxprom_fir10_vt_join_q;
    wire [31:0] i_idxprom_fir10_vt_select_31_b;
    wire [32:0] i_inc_fir20_a;
    wire [32:0] i_inc_fir20_b;
    logic [32:0] i_inc_fir20_o;
    wire [32:0] i_inc_fir20_q;
    wire [0:0] i_llvm_fpga_dummy_thread_fir_b3_dummy_fir2_out_dummy_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_fir7_fir30_out_intel_reserved_ffwd_0_0;
    wire [0:0] i_llvm_fpga_forked_fir_b3_forked_fir3_out_buffer_out;
    wire [31:0] i_llvm_fpga_mem_unnamed_fir5_fir12_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_fir5_fir12_out_unnamed_fir5_fir_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_fir5_fir12_out_unnamed_fir5_fir_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_fir5_fir12_out_unnamed_fir5_fir_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_fir5_fir12_out_unnamed_fir5_fir_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_fir5_fir12_out_unnamed_fir5_fir_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_fir5_fir12_out_unnamed_fir5_fir_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_fir5_fir12_out_unnamed_fir5_fir_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_fir6_fir16_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_fir6_fir16_out_unnamed_fir6_fir_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_fir6_fir16_out_unnamed_fir6_fir_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_fir6_fir16_out_unnamed_fir6_fir_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_fir6_fir16_out_unnamed_fir6_fir_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_fir6_fir16_out_unnamed_fir6_fir_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_fir6_fir16_out_unnamed_fir6_fir_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_fir6_fir16_out_unnamed_fir6_fir_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_fir6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_fir6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_fir6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_fir6_out_pipeline_dummy_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_fir6_out_pipeline_forked_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_fir6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_fir27_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_fir27_out_feedback_valid_out_3;
    wire [0:0] i_notcmp_fir26_q;
    wire [32:0] i_sub_fir13_a;
    wire [32:0] i_sub_fir13_b;
    logic [32:0] i_sub_fir13_o;
    wire [32:0] i_sub_fir13_q;
    wire [31:0] bgTrunc_i_add_fir19_sel_x_b;
    wire [10:0] bgTrunc_i_fpga_indvars_iv_next_fir28_sel_x_b;
    wire [31:0] bgTrunc_i_inc_fir20_sel_x_b;
    wire [63:0] bgTrunc_i_mul_fir17_sel_x_in;
    wire [31:0] bgTrunc_i_mul_fir17_sel_x_b;
    wire [31:0] bgTrunc_i_sub_fir13_sel_x_b;
    wire [12:0] i_arrayidx1_fir0_add_x_a;
    wire [12:0] i_arrayidx1_fir0_add_x_b;
    logic [12:0] i_arrayidx1_fir0_add_x_o;
    wire [12:0] i_arrayidx1_fir0_add_x_q;
    wire [63:0] i_arrayidx1_fir0_append_upper_bits_x_q;
    wire [9:0] i_arrayidx1_fir0_narrow_x_b;
    wire [11:0] i_arrayidx1_fir0_shift_join_x_q;
    wire [11:0] i_arrayidx1_fir0_dupName_0_trunc_sel_x_b;
    wire [11:0] i_arrayidx1_fir0_dupName_2_trunc_sel_x_b;
    wire [12:0] i_arrayidx42_fir0_add_x_a;
    wire [12:0] i_arrayidx42_fir0_add_x_b;
    logic [12:0] i_arrayidx42_fir0_add_x_o;
    wire [12:0] i_arrayidx42_fir0_add_x_q;
    wire [63:0] i_arrayidx42_fir0_append_upper_bits_x_q;
    wire [9:0] i_arrayidx42_fir0_narrow_x_b;
    wire [11:0] i_arrayidx42_fir0_shift_join_x_q;
    wire [11:0] i_arrayidx42_fir0_dupName_0_trunc_sel_x_b;
    wire [11:0] i_arrayidx42_fir0_dupName_2_trunc_sel_x_b;
    wire [63:0] i_idxprom3_fir14_sel_x_b;
    wire [63:0] i_idxprom_fir10_sel_x_b;
    wire [0:0] i_llvm_fpga_pop_coalesce_i1_fir_b3_current_iter_isreal_fir0_i_llvm_fpga_pop_coalesce_i1_fir_b3_current_iter_isreal_fir4_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_coalesce_i1_fir_b3_current_iter_isreal_fir0_i_llvm_fpga_pop_coalesce_i1_fir_b3_current_iter_isreal_fir4_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_fir0_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_fir21_mux_x_s;
    reg [10:0] i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_fir0_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_fir21_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_i_08_pop7_fir0_i_llvm_fpga_pop_i32_i_08_pop7_fir9_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_i_08_pop7_fir0_i_llvm_fpga_pop_i32_i_08_pop7_fir9_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_tmp_07_pop8_fir0_i_llvm_fpga_pop_i32_tmp_07_pop8_fir18_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_tmp_07_pop8_fir0_i_llvm_fpga_pop_i32_tmp_07_pop8_fir18_mux_x_q;
    wire [4:0] i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir0_c_i5_03_x_q;
    wire [15:0] i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir0_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir1_x_i_valid;
    wire i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir0_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir0_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir1_x_i_stall;
    wire i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir0_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir1_x_i_stall_bitsignaltemp;
    wire [15:0] i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir0_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir1_x_i_data;
    wire [15:0] i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir0_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir0_inv_pred_x_q;
    wire [10:0] i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir0_adapt_scalar_trunc4_sel_x_b;
    wire [6:0] i_llvm_fpga_push_i1_fir_b3_next_iter_isreal_push_fir0_c_i7_03_x_q;
    wire [7:0] i_llvm_fpga_push_i1_fir_b3_next_iter_isreal_push_fir0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_fir_b3_next_iter_isreal_push_fir0_i_llvm_fpga_push_i1_fir_b3_next_iter_isreal_push_fir1_x_i_valid;
    wire i_llvm_fpga_push_i1_fir_b3_next_iter_isreal_push_fir0_i_llvm_fpga_push_i1_fir_b3_next_iter_isreal_push_fir1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_fir_b3_next_iter_isreal_push_fir0_i_llvm_fpga_push_i1_fir_b3_next_iter_isreal_push_fir1_x_i_stall;
    wire i_llvm_fpga_push_i1_fir_b3_next_iter_isreal_push_fir0_i_llvm_fpga_push_i1_fir_b3_next_iter_isreal_push_fir1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_fir_b3_next_iter_isreal_push_fir0_i_llvm_fpga_push_i1_fir_b3_next_iter_isreal_push_fir1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_fir_b3_next_iter_isreal_push_fir0_i_llvm_fpga_push_i1_fir_b3_next_iter_isreal_push_fir1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_fir_b3_next_iter_isreal_push_fir0_adapt_scalar_trunc4_sel_x_b;
    wire [0:0] i_llvm_fpga_push_i32_i_08_push7_fir0_i_llvm_fpga_push_i32_i_08_push7_fir1_x_i_valid;
    wire i_llvm_fpga_push_i32_i_08_push7_fir0_i_llvm_fpga_push_i32_i_08_push7_fir1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_i_08_push7_fir0_i_llvm_fpga_push_i32_i_08_push7_fir1_x_i_stall;
    wire i_llvm_fpga_push_i32_i_08_push7_fir0_i_llvm_fpga_push_i32_i_08_push7_fir1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_i_08_push7_fir0_i_llvm_fpga_push_i32_i_08_push7_fir1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_i_08_push7_fir0_i_llvm_fpga_push_i32_i_08_push7_fir1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i32_tmp_07_push8_fir0_i_llvm_fpga_push_i32_tmp_07_push8_fir1_x_i_valid;
    wire i_llvm_fpga_push_i32_tmp_07_push8_fir0_i_llvm_fpga_push_i32_tmp_07_push8_fir1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_tmp_07_push8_fir0_i_llvm_fpga_push_i32_tmp_07_push8_fir1_x_i_stall;
    wire i_llvm_fpga_push_i32_tmp_07_push8_fir0_i_llvm_fpga_push_i32_tmp_07_push8_fir1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_tmp_07_push8_fir0_i_llvm_fpga_push_i32_tmp_07_push8_fir1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_tmp_07_push8_fir0_i_llvm_fpga_push_i32_tmp_07_push8_fir1_x_o_data;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg6_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg7_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg10_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg11_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg12_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg13_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg14_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg15_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg16_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg17_q;
    wire [0:0] i_exitcond_fir22_cmp_nsign_q;
    wire [14:0] i_mul_fir17_bjA2_q;
    wire [14:0] i_mul_fir17_bjB4_q;
    wire [65:0] i_mul_fir17_sums_join_0_q;
    wire [50:0] i_mul_fir17_sums_align_1_q;
    wire [50:0] i_mul_fir17_sums_align_1_qint;
    wire [66:0] i_mul_fir17_sums_result_add_0_0_a;
    wire [66:0] i_mul_fir17_sums_result_add_0_0_b;
    logic [66:0] i_mul_fir17_sums_result_add_0_0_o;
    wire [66:0] i_mul_fir17_sums_result_add_0_0_q;
    wire i_mul_fir17_im0_cma_reset;
    (* preserve_syn_only *) reg signed [14:0] i_mul_fir17_im0_cma_ah [0:0];
    (* preserve_syn_only *) reg signed [14:0] i_mul_fir17_im0_cma_ch [0:0];
    wire [14:0] i_mul_fir17_im0_cma_a0;
    wire [14:0] i_mul_fir17_im0_cma_c0;
    wire [29:0] i_mul_fir17_im0_cma_s0;
    wire [29:0] i_mul_fir17_im0_cma_qq;
    reg [29:0] i_mul_fir17_im0_cma_q;
    wire i_mul_fir17_im0_cma_ena0;
    wire i_mul_fir17_im0_cma_ena1;
    wire i_mul_fir17_im0_cma_ena2;
    wire i_mul_fir17_im10_cma_reset;
    (* preserve_syn_only *) reg [17:0] i_mul_fir17_im10_cma_ah [0:0];
    (* preserve_syn_only *) reg [17:0] i_mul_fir17_im10_cma_ch [0:0];
    wire [17:0] i_mul_fir17_im10_cma_a0;
    wire [17:0] i_mul_fir17_im10_cma_c0;
    wire [35:0] i_mul_fir17_im10_cma_s0;
    wire [35:0] i_mul_fir17_im10_cma_qq;
    reg [35:0] i_mul_fir17_im10_cma_q;
    wire i_mul_fir17_im10_cma_ena0;
    wire i_mul_fir17_im10_cma_ena1;
    wire i_mul_fir17_im10_cma_ena2;
    wire i_mul_fir17_ma5_cma_reset;
    (* preserve_syn_only *) reg [13:0] i_mul_fir17_ma5_cma_ah [0:1];
    (* preserve_syn_only *) reg [17:0] i_mul_fir17_ma5_cma_ch [0:1];
    wire [13:0] i_mul_fir17_ma5_cma_a0;
    wire [17:0] i_mul_fir17_ma5_cma_c0;
    wire [13:0] i_mul_fir17_ma5_cma_a1;
    wire [17:0] i_mul_fir17_ma5_cma_c1;
    wire [32:0] i_mul_fir17_ma5_cma_s0;
    wire [32:0] i_mul_fir17_ma5_cma_qq;
    reg [32:0] i_mul_fir17_ma5_cma_q;
    wire i_mul_fir17_ma5_cma_ena0;
    wire i_mul_fir17_ma5_cma_ena1;
    wire i_mul_fir17_ma5_cma_ena2;
    wire [51:0] i_arrayidx42_fir0_upper_bits_x_merged_bit_select_b;
    wire [11:0] i_arrayidx42_fir0_upper_bits_x_merged_bit_select_c;
    wire [51:0] i_arrayidx1_fir0_upper_bits_x_merged_bit_select_b;
    wire [11:0] i_arrayidx1_fir0_upper_bits_x_merged_bit_select_c;
    wire [13:0] i_mul_fir17_bs3_merged_bit_select_b;
    wire [17:0] i_mul_fir17_bs3_merged_bit_select_c;
    wire [13:0] i_mul_fir17_bs1_merged_bit_select_b;
    wire [17:0] i_mul_fir17_bs1_merged_bit_select_c;
    reg [32:0] redist0_i_mul_fir17_ma5_cma_q_1_q;
    reg [35:0] redist1_i_mul_fir17_im10_cma_q_1_q;
    reg [29:0] redist2_i_mul_fir17_im0_cma_q_1_q;
    reg [0:0] redist3_i_exitcond_fir22_cmp_nsign_q_13_q;
    reg [0:0] redist4_sync_together70_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist4_sync_together70_aunroll_x_in_i_valid_2_delay_0;
    reg [0:0] redist5_sync_together70_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist6_sync_together70_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist7_sync_together70_aunroll_x_in_i_valid_13_q;
    reg [0:0] redist8_sync_together70_aunroll_x_in_i_valid_15_q;
    reg [0:0] redist8_sync_together70_aunroll_x_in_i_valid_15_delay_0;
    reg [0:0] redist9_sync_together70_aunroll_x_in_i_valid_16_q;
    reg [0:0] redist10_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir0_inv_pred_x_q_2_q;
    reg [0:0] redist10_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir0_inv_pred_x_q_2_delay_0;
    reg [0:0] redist11_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir0_inv_pred_x_q_13_q;
    reg [0:0] redist12_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir0_inv_pred_x_q_15_q;
    reg [0:0] redist12_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir0_inv_pred_x_q_15_delay_0;
    reg [0:0] redist13_i_llvm_fpga_pop_coalesce_i1_fir_b3_current_iter_isreal_fir0_i_llvm_fpga_pop_coalesce_i1_fir_b3_current_iter_isreal_fir4_mux_x_q_1_q;
    reg [9:0] redist14_i_arrayidx42_fir0_narrow_x_b_1_q;
    reg [9:0] redist15_i_arrayidx1_fir0_narrow_x_b_1_q;
    reg [31:0] redist16_bgTrunc_i_mul_fir17_sel_x_b_1_q;
    reg [0:0] redist17_i_llvm_fpga_forked_fir_b3_forked_fir3_out_buffer_out_4_q;
    reg [0:0] redist17_i_llvm_fpga_forked_fir_b3_forked_fir3_out_buffer_out_4_delay_0;
    reg [0:0] redist17_i_llvm_fpga_forked_fir_b3_forked_fir3_out_buffer_out_4_delay_1;
    reg [0:0] redist17_i_llvm_fpga_forked_fir_b3_forked_fir3_out_buffer_out_4_delay_2;
    reg [0:0] redist18_i_llvm_fpga_forked_fir_b3_forked_fir3_out_buffer_out_17_q;
    reg [0:0] redist19_i_llvm_fpga_dummy_thread_fir_b3_dummy_fir2_out_dummy_out_4_q;
    reg [0:0] redist19_i_llvm_fpga_dummy_thread_fir_b3_dummy_fir2_out_dummy_out_4_delay_0;
    reg [0:0] redist19_i_llvm_fpga_dummy_thread_fir_b3_dummy_fir2_out_dummy_out_4_delay_1;
    reg [0:0] redist19_i_llvm_fpga_dummy_thread_fir_b3_dummy_fir2_out_dummy_out_4_delay_2;
    reg [0:0] redist20_i_fir_b3_current_iter_isspec_fir5_q_12_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist4_sync_together70_aunroll_x_in_i_valid_2(DELAY,196)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist4_sync_together70_aunroll_x_in_i_valid_2_delay_0 <= '0;
        end
        else
        begin
            redist4_sync_together70_aunroll_x_in_i_valid_2_delay_0 <= $unsigned(in_i_valid);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_sync_together70_aunroll_x_in_i_valid_2_q <= redist4_sync_together70_aunroll_x_in_i_valid_2_delay_0;
        end
    end

    // redist5_sync_together70_aunroll_x_in_i_valid_3(DELAY,197)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist5_sync_together70_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist5_sync_together70_aunroll_x_in_i_valid_3_q <= $unsigned(redist4_sync_together70_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist6_sync_together70_aunroll_x_in_i_valid_4(DELAY,198)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_sync_together70_aunroll_x_in_i_valid_4_q <= $unsigned(redist5_sync_together70_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg6(REG,145)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist6_sync_together70_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i1_fir_b3_next_iter_isreal_push_fir0_c_i7_03_x(CONSTANT,126)
    assign i_llvm_fpga_push_i1_fir_b3_next_iter_isreal_push_fir0_c_i7_03_x_q = $unsigned(7'b0000000);

    // valid_fanout_reg2(REG,141)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist5_sync_together70_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg14(REG,153)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist5_sync_together70_aunroll_x_in_i_valid_3_q);
        end
    end

    // c_i11_99862(CONSTANT,10)
    assign c_i11_99862_q = $unsigned(11'b01111100110);

    // i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir0_c_i5_03_x(CONSTANT,120)
    assign i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir0_c_i5_03_x_q = $unsigned(5'b00000);

    // c_i11_164(CONSTANT,9)
    assign c_i11_164_q = $unsigned(11'b11111111111);

    // i_fpga_indvars_iv_next_fir28(ADD,54)@4
    assign i_fpga_indvars_iv_next_fir28_a = {1'b0, i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_fir0_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_fir21_mux_x_q};
    assign i_fpga_indvars_iv_next_fir28_b = {1'b0, c_i11_164_q};
    assign i_fpga_indvars_iv_next_fir28_o = $unsigned(i_fpga_indvars_iv_next_fir28_a) + $unsigned(i_fpga_indvars_iv_next_fir28_b);
    assign i_fpga_indvars_iv_next_fir28_q = i_fpga_indvars_iv_next_fir28_o[11:0];

    // bgTrunc_i_fpga_indvars_iv_next_fir28_sel_x(BITSELECT,78)@4
    assign bgTrunc_i_fpga_indvars_iv_next_fir28_sel_x_b = i_fpga_indvars_iv_next_fir28_q[10:0];

    // i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir0_element_extension2_x(BITJOIN,121)@4
    assign i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir0_element_extension2_x_q = {i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir0_c_i5_03_x_q, bgTrunc_i_fpga_indvars_iv_next_fir28_sel_x_b};

    // valid_fanout_reg16(REG,155)@0 + 1
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

    // valid_fanout_reg15(REG,154)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist4_sync_together70_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir0_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir1_x(FIFODELAY,122)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir0_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir1_x_i_stall = ~ (valid_fanout_reg16_q & i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir0_inv_pred_x_q);
    assign i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir0_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir1_x_i_valid = valid_fanout_reg15_q & redist10_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir0_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir1_x_i_data = i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir0_element_extension2_x_q;
    assign i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir0_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir0_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir1_x_i_valid[0];
    assign i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir0_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir0_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(16),
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
    ) thei_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir0_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir1_x (
        .i_valid(i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir0_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir0_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir0_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir0_adapt_scalar_trunc4_sel_x(BITSELECT,124)@4
    assign i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir0_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir1_x_o_data[10:0];

    // i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_fir0_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_fir21_mux_x(MUX,116)@4
    assign i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_fir0_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_fir21_mux_x_s = redist17_i_llvm_fpga_forked_fir_b3_forked_fir3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_fir0_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_fir21_mux_x_s or i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir0_adapt_scalar_trunc4_sel_x_b or c_i11_99862_q)
    begin
        unique case (i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_fir0_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_fir21_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_fir0_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_fir21_mux_x_q = i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_fir0_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_fir21_mux_x_q = c_i11_99862_q;
            default : i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_fir0_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_fir21_mux_x_q = 11'b0;
        endcase
    end

    // i_exitcond_fir22_cmp_nsign(LOGICAL,167)@4
    assign i_exitcond_fir22_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_fir0_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_fir21_mux_x_q[10:10]));

    // i_llvm_fpga_push_i1_notexitcond_fir27(BLACKBOX,68)@4
    // in in_empty_in@20000000
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    fir_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_fir27 (
        .in_almost_empty_in(GND_q),
        .in_data_in(i_exitcond_fir22_cmp_nsign_q),
        .in_empty_in(GND_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_fir6_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_fir27_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_fir27_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_dummy_thread_fir_b3_dummy_fir2(BLACKBOX,62)@0
    // in in_stall_in@20000000
    fir_i_llvm_fpga_dummy_thread_b3_dummy_fir0 thei_llvm_fpga_dummy_thread_fir_b3_dummy_fir2 (
        .in_dummy_in(in_dummy_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dummy_out(i_llvm_fpga_dummy_thread_fir_b3_dummy_fir2_out_dummy_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist19_i_llvm_fpga_dummy_thread_fir_b3_dummy_fir2_out_dummy_out_4(DELAY,211)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist19_i_llvm_fpga_dummy_thread_fir_b3_dummy_fir2_out_dummy_out_4_delay_0 <= $unsigned(i_llvm_fpga_dummy_thread_fir_b3_dummy_fir2_out_dummy_out);
            redist19_i_llvm_fpga_dummy_thread_fir_b3_dummy_fir2_out_dummy_out_4_delay_1 <= redist19_i_llvm_fpga_dummy_thread_fir_b3_dummy_fir2_out_dummy_out_4_delay_0;
            redist19_i_llvm_fpga_dummy_thread_fir_b3_dummy_fir2_out_dummy_out_4_delay_2 <= redist19_i_llvm_fpga_dummy_thread_fir_b3_dummy_fir2_out_dummy_out_4_delay_1;
            redist19_i_llvm_fpga_dummy_thread_fir_b3_dummy_fir2_out_dummy_out_4_q <= redist19_i_llvm_fpga_dummy_thread_fir_b3_dummy_fir2_out_dummy_out_4_delay_2;
        end
    end

    // i_llvm_fpga_pipeline_keep_going_fir6(BLACKBOX,67)@4
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_dummy_out@20000000
    // out out_pipeline_forked_out@20000000
    // out out_pipeline_valid_out@20000000
    fir_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_fir6 (
        .in_data_in(redist17_i_llvm_fpga_forked_fir_b3_forked_fir3_out_buffer_out_4_q),
        .in_dummy_in(redist19_i_llvm_fpga_dummy_thread_fir_b3_dummy_fir2_out_dummy_out_4_q),
        .in_forked_in(redist17_i_llvm_fpga_forked_fir_b3_forked_fir3_out_buffer_out_4_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_fir27_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_fir27_out_feedback_valid_out_3),
        .in_pipeline_stall_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_fir6_out_data_out),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_fir6_out_exiting_valid_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_fir6_out_not_exitcond_stall_out),
        .out_pipeline_dummy_out(i_llvm_fpga_pipeline_keep_going_fir6_out_pipeline_dummy_out),
        .out_pipeline_forked_out(i_llvm_fpga_pipeline_keep_going_fir6_out_pipeline_forked_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_fir6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fir_b3_next_iter_isreal_fir7(LOGICAL,53)@4
    assign i_fir_b3_next_iter_isreal_fir7_q = i_llvm_fpga_pop_coalesce_i1_fir_b3_current_iter_isreal_fir0_i_llvm_fpga_pop_coalesce_i1_fir_b3_current_iter_isreal_fir4_mux_x_q & i_llvm_fpga_pipeline_keep_going_fir6_out_data_out;

    // i_llvm_fpga_push_i1_fir_b3_next_iter_isreal_push_fir0_element_extension2_x(BITJOIN,127)@4
    assign i_llvm_fpga_push_i1_fir_b3_next_iter_isreal_push_fir0_element_extension2_x_q = {i_llvm_fpga_push_i1_fir_b3_next_iter_isreal_push_fir0_c_i7_03_x_q, i_fir_b3_next_iter_isreal_fir7_q};

    // i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir0_inv_pred_x(LOGICAL,123)@1
    assign i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir0_inv_pred_x_q = ~ (GND_q);

    // valid_fanout_reg4(REG,143)@0 + 1
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

    // redist10_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir0_inv_pred_x_q_2(DELAY,202)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir0_inv_pred_x_q_2_delay_0 <= $unsigned(i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir0_inv_pred_x_q);
            redist10_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir0_inv_pred_x_q_2_q <= redist10_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir0_inv_pred_x_q_2_delay_0;
        end
    end

    // valid_fanout_reg3(REG,142)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist4_sync_together70_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_fir_b3_next_iter_isreal_push_fir0_i_llvm_fpga_push_i1_fir_b3_next_iter_isreal_push_fir1_x(FIFODELAY,128)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i1_fir_b3_next_iter_isreal_push_fir0_i_llvm_fpga_push_i1_fir_b3_next_iter_isreal_push_fir1_x_i_stall = ~ (valid_fanout_reg4_q & i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_fir_b3_next_iter_isreal_push_fir0_i_llvm_fpga_push_i1_fir_b3_next_iter_isreal_push_fir1_x_i_valid = valid_fanout_reg3_q & redist10_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i1_fir_b3_next_iter_isreal_push_fir0_i_llvm_fpga_push_i1_fir_b3_next_iter_isreal_push_fir1_x_i_data = i_llvm_fpga_push_i1_fir_b3_next_iter_isreal_push_fir0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_fir_b3_next_iter_isreal_push_fir0_i_llvm_fpga_push_i1_fir_b3_next_iter_isreal_push_fir1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_fir_b3_next_iter_isreal_push_fir0_i_llvm_fpga_push_i1_fir_b3_next_iter_isreal_push_fir1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_fir_b3_next_iter_isreal_push_fir0_i_llvm_fpga_push_i1_fir_b3_next_iter_isreal_push_fir1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_fir_b3_next_iter_isreal_push_fir0_i_llvm_fpga_push_i1_fir_b3_next_iter_isreal_push_fir1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_fir_b3_next_iter_isreal_push_fir0_i_llvm_fpga_push_i1_fir_b3_next_iter_isreal_push_fir1_x (
        .i_valid(i_llvm_fpga_push_i1_fir_b3_next_iter_isreal_push_fir0_i_llvm_fpga_push_i1_fir_b3_next_iter_isreal_push_fir1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_fir_b3_next_iter_isreal_push_fir0_i_llvm_fpga_push_i1_fir_b3_next_iter_isreal_push_fir1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_fir_b3_next_iter_isreal_push_fir0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_fir_b3_next_iter_isreal_push_fir0_i_llvm_fpga_push_i1_fir_b3_next_iter_isreal_push_fir1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_fir_b3_next_iter_isreal_push_fir0_adapt_scalar_trunc4_sel_x(BITSELECT,130)@4
    assign i_llvm_fpga_push_i1_fir_b3_next_iter_isreal_push_fir0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_fir_b3_next_iter_isreal_push_fir0_i_llvm_fpga_push_i1_fir_b3_next_iter_isreal_push_fir1_x_o_data[0:0];

    // i_llvm_fpga_forked_fir_b3_forked_fir3(BLACKBOX,64)@0
    // in in_stall_in@20000000
    fir_i_llvm_fpga_forked_b3_forked_fir0 thei_llvm_fpga_forked_fir_b3_forked_fir3 (
        .in_buffer_in(in_buffer_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_buffer_out(i_llvm_fpga_forked_fir_b3_forked_fir3_out_buffer_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist17_i_llvm_fpga_forked_fir_b3_forked_fir3_out_buffer_out_4(DELAY,209)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist17_i_llvm_fpga_forked_fir_b3_forked_fir3_out_buffer_out_4_delay_0 <= $unsigned(i_llvm_fpga_forked_fir_b3_forked_fir3_out_buffer_out);
            redist17_i_llvm_fpga_forked_fir_b3_forked_fir3_out_buffer_out_4_delay_1 <= redist17_i_llvm_fpga_forked_fir_b3_forked_fir3_out_buffer_out_4_delay_0;
            redist17_i_llvm_fpga_forked_fir_b3_forked_fir3_out_buffer_out_4_delay_2 <= redist17_i_llvm_fpga_forked_fir_b3_forked_fir3_out_buffer_out_4_delay_1;
            redist17_i_llvm_fpga_forked_fir_b3_forked_fir3_out_buffer_out_4_q <= redist17_i_llvm_fpga_forked_fir_b3_forked_fir3_out_buffer_out_4_delay_2;
        end
    end

    // i_llvm_fpga_pop_coalesce_i1_fir_b3_current_iter_isreal_fir0_i_llvm_fpga_pop_coalesce_i1_fir_b3_current_iter_isreal_fir4_mux_x(MUX,115)@4
    assign i_llvm_fpga_pop_coalesce_i1_fir_b3_current_iter_isreal_fir0_i_llvm_fpga_pop_coalesce_i1_fir_b3_current_iter_isreal_fir4_mux_x_s = redist17_i_llvm_fpga_forked_fir_b3_forked_fir3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_coalesce_i1_fir_b3_current_iter_isreal_fir0_i_llvm_fpga_pop_coalesce_i1_fir_b3_current_iter_isreal_fir4_mux_x_s or i_llvm_fpga_push_i1_fir_b3_next_iter_isreal_push_fir0_adapt_scalar_trunc4_sel_x_b or VCC_q)
    begin
        unique case (i_llvm_fpga_pop_coalesce_i1_fir_b3_current_iter_isreal_fir0_i_llvm_fpga_pop_coalesce_i1_fir_b3_current_iter_isreal_fir4_mux_x_s)
            1'b0 : i_llvm_fpga_pop_coalesce_i1_fir_b3_current_iter_isreal_fir0_i_llvm_fpga_pop_coalesce_i1_fir_b3_current_iter_isreal_fir4_mux_x_q = i_llvm_fpga_push_i1_fir_b3_next_iter_isreal_push_fir0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_coalesce_i1_fir_b3_current_iter_isreal_fir0_i_llvm_fpga_pop_coalesce_i1_fir_b3_current_iter_isreal_fir4_mux_x_q = VCC_q;
            default : i_llvm_fpga_pop_coalesce_i1_fir_b3_current_iter_isreal_fir0_i_llvm_fpga_pop_coalesce_i1_fir_b3_current_iter_isreal_fir4_mux_x_q = 1'b0;
        endcase
    end

    // redist13_i_llvm_fpga_pop_coalesce_i1_fir_b3_current_iter_isreal_fir0_i_llvm_fpga_pop_coalesce_i1_fir_b3_current_iter_isreal_fir4_mux_x_q_1(DELAY,205)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist13_i_llvm_fpga_pop_coalesce_i1_fir_b3_current_iter_isreal_fir0_i_llvm_fpga_pop_coalesce_i1_fir_b3_current_iter_isreal_fir4_mux_x_q_1_q <= $unsigned(i_llvm_fpga_pop_coalesce_i1_fir_b3_current_iter_isreal_fir0_i_llvm_fpga_pop_coalesce_i1_fir_b3_current_iter_isreal_fir4_mux_x_q);
        end
    end

    // i_fir_b3_current_iter_isspec_fir5(LOGICAL,52)@5
    assign i_fir_b3_current_iter_isspec_fir5_q = redist13_i_llvm_fpga_pop_coalesce_i1_fir_b3_current_iter_isreal_fir0_i_llvm_fpga_pop_coalesce_i1_fir_b3_current_iter_isreal_fir4_mux_x_q_1_q ^ VCC_q;

    // c_fir_idx_local_pmem(CONSTANT,8)
    assign c_fir_idx_local_pmem_q = $unsigned(64'b0100000001000001000000000000000000000000000000000000000000000000);

    // i_arrayidx1_fir0_upper_bits_x_merged_bit_select(BITSELECT,189)@5
    assign i_arrayidx1_fir0_upper_bits_x_merged_bit_select_b = c_fir_idx_local_pmem_q[63:12];
    assign i_arrayidx1_fir0_upper_bits_x_merged_bit_select_c = c_fir_idx_local_pmem_q[11:0];

    // c_i32_059(CONSTANT,39)
    assign c_i32_059_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i32_161(CONSTANT,40)
    assign c_i32_161_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_fir20(ADD,61)@4
    assign i_inc_fir20_a = {1'b0, i_llvm_fpga_pop_i32_i_08_pop7_fir0_i_llvm_fpga_pop_i32_i_08_pop7_fir9_mux_x_q};
    assign i_inc_fir20_b = {1'b0, c_i32_161_q};
    assign i_inc_fir20_o = $unsigned(i_inc_fir20_a) + $unsigned(i_inc_fir20_b);
    assign i_inc_fir20_q = i_inc_fir20_o[32:0];

    // bgTrunc_i_inc_fir20_sel_x(BITSELECT,79)@4
    assign bgTrunc_i_inc_fir20_sel_x_b = i_inc_fir20_q[31:0];

    // valid_fanout_reg13(REG,152)@0 + 1
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

    // valid_fanout_reg12(REG,151)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist4_sync_together70_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i32_i_08_push7_fir0_i_llvm_fpga_push_i32_i_08_push7_fir1_x(FIFODELAY,131)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i32_i_08_push7_fir0_i_llvm_fpga_push_i32_i_08_push7_fir1_x_i_stall = ~ (valid_fanout_reg13_q & i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir0_inv_pred_x_q);
    assign i_llvm_fpga_push_i32_i_08_push7_fir0_i_llvm_fpga_push_i32_i_08_push7_fir1_x_i_valid = valid_fanout_reg12_q & redist10_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i32_i_08_push7_fir0_i_llvm_fpga_push_i32_i_08_push7_fir1_x_i_data = bgTrunc_i_inc_fir20_sel_x_b;
    assign i_llvm_fpga_push_i32_i_08_push7_fir0_i_llvm_fpga_push_i32_i_08_push7_fir1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_i_08_push7_fir0_i_llvm_fpga_push_i32_i_08_push7_fir1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_i_08_push7_fir0_i_llvm_fpga_push_i32_i_08_push7_fir1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_i_08_push7_fir0_i_llvm_fpga_push_i32_i_08_push7_fir1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_i_08_push7_fir0_i_llvm_fpga_push_i32_i_08_push7_fir1_x (
        .i_valid(i_llvm_fpga_push_i32_i_08_push7_fir0_i_llvm_fpga_push_i32_i_08_push7_fir1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_i_08_push7_fir0_i_llvm_fpga_push_i32_i_08_push7_fir1_x_i_stall_bitsignaltemp),
        .i_data(bgTrunc_i_inc_fir20_sel_x_b),
        .o_data(i_llvm_fpga_push_i32_i_08_push7_fir0_i_llvm_fpga_push_i32_i_08_push7_fir1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_08_pop7_fir0_i_llvm_fpga_pop_i32_i_08_pop7_fir9_mux_x(MUX,117)@4
    assign i_llvm_fpga_pop_i32_i_08_pop7_fir0_i_llvm_fpga_pop_i32_i_08_pop7_fir9_mux_x_s = redist17_i_llvm_fpga_forked_fir_b3_forked_fir3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i32_i_08_pop7_fir0_i_llvm_fpga_pop_i32_i_08_pop7_fir9_mux_x_s or i_llvm_fpga_push_i32_i_08_push7_fir0_i_llvm_fpga_push_i32_i_08_push7_fir1_x_o_data or c_i32_059_q)
    begin
        unique case (i_llvm_fpga_pop_i32_i_08_pop7_fir0_i_llvm_fpga_pop_i32_i_08_pop7_fir9_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_i_08_pop7_fir0_i_llvm_fpga_pop_i32_i_08_pop7_fir9_mux_x_q = i_llvm_fpga_push_i32_i_08_push7_fir0_i_llvm_fpga_push_i32_i_08_push7_fir1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_i_08_pop7_fir0_i_llvm_fpga_pop_i32_i_08_pop7_fir9_mux_x_q = c_i32_059_q;
            default : i_llvm_fpga_pop_i32_i_08_pop7_fir0_i_llvm_fpga_pop_i32_i_08_pop7_fir9_mux_x_q = 32'b0;
        endcase
    end

    // i_idxprom_fir10_sel_x(BITSELECT,114)@4
    assign i_idxprom_fir10_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_i_08_pop7_fir0_i_llvm_fpga_pop_i32_i_08_pop7_fir9_mux_x_q[31:0]};

    // i_idxprom_fir10_vt_select_31(BITSELECT,60)@4
    assign i_idxprom_fir10_vt_select_31_b = i_idxprom_fir10_sel_x_b[31:0];

    // i_idxprom_fir10_vt_join(BITJOIN,59)@4
    assign i_idxprom_fir10_vt_join_q = {c_i32_059_q, i_idxprom_fir10_vt_select_31_b};

    // i_arrayidx1_fir0_dupName_0_trunc_sel_x(BITSELECT,99)@4
    assign i_arrayidx1_fir0_dupName_0_trunc_sel_x_b = i_idxprom_fir10_vt_join_q[11:0];

    // i_arrayidx1_fir0_narrow_x(BITSELECT,92)@4
    assign i_arrayidx1_fir0_narrow_x_b = i_arrayidx1_fir0_dupName_0_trunc_sel_x_b[9:0];

    // redist15_i_arrayidx1_fir0_narrow_x_b_1(DELAY,207)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist15_i_arrayidx1_fir0_narrow_x_b_1_q <= $unsigned(i_arrayidx1_fir0_narrow_x_b);
        end
    end

    // i_arrayidx1_fir0_shift_join_x(BITJOIN,93)@5
    assign i_arrayidx1_fir0_shift_join_x_q = {redist15_i_arrayidx1_fir0_narrow_x_b_1_q, i_arrayidx1_fir11_vt_const_1_q};

    // i_arrayidx1_fir0_add_x(ADD,89)@5
    assign i_arrayidx1_fir0_add_x_a = {1'b0, i_arrayidx1_fir0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx1_fir0_add_x_b = {1'b0, i_arrayidx1_fir0_shift_join_x_q};
    assign i_arrayidx1_fir0_add_x_o = $unsigned(i_arrayidx1_fir0_add_x_a) + $unsigned(i_arrayidx1_fir0_add_x_b);
    assign i_arrayidx1_fir0_add_x_q = i_arrayidx1_fir0_add_x_o[12:0];

    // i_arrayidx1_fir0_dupName_2_trunc_sel_x(BITSELECT,100)@5
    assign i_arrayidx1_fir0_dupName_2_trunc_sel_x_b = i_arrayidx1_fir0_add_x_q[11:0];

    // i_arrayidx1_fir0_append_upper_bits_x(BITJOIN,90)@5
    assign i_arrayidx1_fir0_append_upper_bits_x_q = {i_arrayidx1_fir0_upper_bits_x_merged_bit_select_b, i_arrayidx1_fir0_dupName_2_trunc_sel_x_b};

    // i_arrayidx1_fir11_vt_select_63(BITSELECT,47)@5
    assign i_arrayidx1_fir11_vt_select_63_b = i_arrayidx1_fir0_append_upper_bits_x_q[63:2];

    // i_arrayidx1_fir11_vt_const_1(CONSTANT,45)
    assign i_arrayidx1_fir11_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx1_fir11_vt_join(BITJOIN,46)@5
    assign i_arrayidx1_fir11_vt_join_q = {i_arrayidx1_fir11_vt_select_63_b, i_arrayidx1_fir11_vt_const_1_q};

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_mem_unnamed_fir5_fir12(BLACKBOX,65)@5
    // out out_o_almost_empty@9
    // out out_o_empty@9
    // out out_o_readdata@9
    // out out_o_stall@9
    // out out_o_valid@9
    // out out_unnamed_fir5_fir_avm_address@20000000
    // out out_unnamed_fir5_fir_avm_burstcount@20000000
    // out out_unnamed_fir5_fir_avm_byteenable@20000000
    // out out_unnamed_fir5_fir_avm_enable@20000000
    // out out_unnamed_fir5_fir_avm_read@20000000
    // out out_unnamed_fir5_fir_avm_write@20000000
    // out out_unnamed_fir5_fir_avm_writedata@20000000
    fir_i_llvm_fpga_mem_unnamed_5_fir0 thei_llvm_fpga_mem_unnamed_fir5_fir12 (
        .in_almost_empty_in(GND_q),
        .in_empty_in(GND_q),
        .in_flush(in_flush),
        .in_i_address(i_arrayidx1_fir11_vt_join_q),
        .in_i_predicate(i_fir_b3_current_iter_isspec_fir5_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg6_q),
        .in_unnamed_fir5_fir_avm_readdata(in_unnamed_fir5_fir_avm_readdata),
        .in_unnamed_fir5_fir_avm_readdatavalid(in_unnamed_fir5_fir_avm_readdatavalid),
        .in_unnamed_fir5_fir_avm_waitrequest(in_unnamed_fir5_fir_avm_waitrequest),
        .in_unnamed_fir5_fir_avm_writeack(in_unnamed_fir5_fir_avm_writeack),
        .out_o_almost_empty(),
        .out_o_empty(),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_fir5_fir12_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_fir5_fir_avm_address(i_llvm_fpga_mem_unnamed_fir5_fir12_out_unnamed_fir5_fir_avm_address),
        .out_unnamed_fir5_fir_avm_burstcount(i_llvm_fpga_mem_unnamed_fir5_fir12_out_unnamed_fir5_fir_avm_burstcount),
        .out_unnamed_fir5_fir_avm_byteenable(i_llvm_fpga_mem_unnamed_fir5_fir12_out_unnamed_fir5_fir_avm_byteenable),
        .out_unnamed_fir5_fir_avm_enable(i_llvm_fpga_mem_unnamed_fir5_fir12_out_unnamed_fir5_fir_avm_enable),
        .out_unnamed_fir5_fir_avm_read(i_llvm_fpga_mem_unnamed_fir5_fir12_out_unnamed_fir5_fir_avm_read),
        .out_unnamed_fir5_fir_avm_write(i_llvm_fpga_mem_unnamed_fir5_fir12_out_unnamed_fir5_fir_avm_write),
        .out_unnamed_fir5_fir_avm_writedata(i_llvm_fpga_mem_unnamed_fir5_fir12_out_unnamed_fir5_fir_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,43)
    assign out_unnamed_fir5_fir_avm_address = i_llvm_fpga_mem_unnamed_fir5_fir12_out_unnamed_fir5_fir_avm_address;
    assign out_unnamed_fir5_fir_avm_enable = i_llvm_fpga_mem_unnamed_fir5_fir12_out_unnamed_fir5_fir_avm_enable;
    assign out_unnamed_fir5_fir_avm_read = i_llvm_fpga_mem_unnamed_fir5_fir12_out_unnamed_fir5_fir_avm_read;
    assign out_unnamed_fir5_fir_avm_write = i_llvm_fpga_mem_unnamed_fir5_fir12_out_unnamed_fir5_fir_avm_write;
    assign out_unnamed_fir5_fir_avm_writedata = i_llvm_fpga_mem_unnamed_fir5_fir12_out_unnamed_fir5_fir_avm_writedata;
    assign out_unnamed_fir5_fir_avm_byteenable = i_llvm_fpga_mem_unnamed_fir5_fir12_out_unnamed_fir5_fir_avm_byteenable;
    assign out_unnamed_fir5_fir_avm_burstcount = i_llvm_fpga_mem_unnamed_fir5_fir12_out_unnamed_fir5_fir_avm_burstcount;

    // regfree_osync(GPOUT,75)
    assign out_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_fir6_out_exiting_valid_out;

    // valid_fanout_reg7(REG,146)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist6_sync_together70_aunroll_x_in_i_valid_4_q);
        end
    end

    // c_fir_d_i_local_pmem(CONSTANT,7)
    assign c_fir_d_i_local_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx42_fir0_upper_bits_x_merged_bit_select(BITSELECT,188)@5
    assign i_arrayidx42_fir0_upper_bits_x_merged_bit_select_b = c_fir_d_i_local_pmem_q[63:12];
    assign i_arrayidx42_fir0_upper_bits_x_merged_bit_select_c = c_fir_d_i_local_pmem_q[11:0];

    // c_i32_99960(CONSTANT,41)
    assign c_i32_99960_q = $unsigned(32'b00000000000000000000001111100111);

    // i_sub_fir13(SUB,71)@4
    assign i_sub_fir13_a = {1'b0, c_i32_99960_q};
    assign i_sub_fir13_b = {1'b0, i_llvm_fpga_pop_i32_i_08_pop7_fir0_i_llvm_fpga_pop_i32_i_08_pop7_fir9_mux_x_q};
    assign i_sub_fir13_o = $unsigned(i_sub_fir13_a) - $unsigned(i_sub_fir13_b);
    assign i_sub_fir13_q = i_sub_fir13_o[32:0];

    // bgTrunc_i_sub_fir13_sel_x(BITSELECT,81)@4
    assign bgTrunc_i_sub_fir13_sel_x_b = $unsigned(i_sub_fir13_q[31:0]);

    // i_idxprom3_fir14_sel_x(BITSELECT,113)@4
    assign i_idxprom3_fir14_sel_x_b = $unsigned({{32{bgTrunc_i_sub_fir13_sel_x_b[31]}}, bgTrunc_i_sub_fir13_sel_x_b[31:0]});

    // i_arrayidx42_fir0_dupName_0_trunc_sel_x(BITSELECT,111)@4
    assign i_arrayidx42_fir0_dupName_0_trunc_sel_x_b = i_idxprom3_fir14_sel_x_b[11:0];

    // i_arrayidx42_fir0_narrow_x(BITSELECT,104)@4
    assign i_arrayidx42_fir0_narrow_x_b = i_arrayidx42_fir0_dupName_0_trunc_sel_x_b[9:0];

    // redist14_i_arrayidx42_fir0_narrow_x_b_1(DELAY,206)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist14_i_arrayidx42_fir0_narrow_x_b_1_q <= $unsigned(i_arrayidx42_fir0_narrow_x_b);
        end
    end

    // i_arrayidx42_fir0_shift_join_x(BITJOIN,105)@5
    assign i_arrayidx42_fir0_shift_join_x_q = {redist14_i_arrayidx42_fir0_narrow_x_b_1_q, i_arrayidx1_fir11_vt_const_1_q};

    // i_arrayidx42_fir0_add_x(ADD,101)@5
    assign i_arrayidx42_fir0_add_x_a = {1'b0, i_arrayidx42_fir0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx42_fir0_add_x_b = {1'b0, i_arrayidx42_fir0_shift_join_x_q};
    assign i_arrayidx42_fir0_add_x_o = $unsigned(i_arrayidx42_fir0_add_x_a) + $unsigned(i_arrayidx42_fir0_add_x_b);
    assign i_arrayidx42_fir0_add_x_q = i_arrayidx42_fir0_add_x_o[12:0];

    // i_arrayidx42_fir0_dupName_2_trunc_sel_x(BITSELECT,112)@5
    assign i_arrayidx42_fir0_dupName_2_trunc_sel_x_b = i_arrayidx42_fir0_add_x_q[11:0];

    // i_arrayidx42_fir0_append_upper_bits_x(BITJOIN,102)@5
    assign i_arrayidx42_fir0_append_upper_bits_x_q = {i_arrayidx42_fir0_upper_bits_x_merged_bit_select_b, i_arrayidx42_fir0_dupName_2_trunc_sel_x_b};

    // i_arrayidx42_fir15_vt_select_63(BITSELECT,50)@5
    assign i_arrayidx42_fir15_vt_select_63_b = i_arrayidx42_fir0_append_upper_bits_x_q[63:2];

    // i_arrayidx42_fir15_vt_join(BITJOIN,49)@5
    assign i_arrayidx42_fir15_vt_join_q = {i_arrayidx42_fir15_vt_select_63_b, i_arrayidx1_fir11_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_fir6_fir16(BLACKBOX,66)@5
    // out out_o_almost_empty@9
    // out out_o_empty@9
    // out out_o_readdata@9
    // out out_o_stall@9
    // out out_o_valid@9
    // out out_unnamed_fir6_fir_avm_address@20000000
    // out out_unnamed_fir6_fir_avm_burstcount@20000000
    // out out_unnamed_fir6_fir_avm_byteenable@20000000
    // out out_unnamed_fir6_fir_avm_enable@20000000
    // out out_unnamed_fir6_fir_avm_read@20000000
    // out out_unnamed_fir6_fir_avm_write@20000000
    // out out_unnamed_fir6_fir_avm_writedata@20000000
    fir_i_llvm_fpga_mem_unnamed_6_fir0 thei_llvm_fpga_mem_unnamed_fir6_fir16 (
        .in_almost_empty_in(GND_q),
        .in_empty_in(GND_q),
        .in_flush(in_flush),
        .in_i_address(i_arrayidx42_fir15_vt_join_q),
        .in_i_predicate(i_fir_b3_current_iter_isspec_fir5_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg7_q),
        .in_unnamed_fir6_fir_avm_readdata(in_unnamed_fir6_fir_avm_readdata),
        .in_unnamed_fir6_fir_avm_readdatavalid(in_unnamed_fir6_fir_avm_readdatavalid),
        .in_unnamed_fir6_fir_avm_waitrequest(in_unnamed_fir6_fir_avm_waitrequest),
        .in_unnamed_fir6_fir_avm_writeack(in_unnamed_fir6_fir_avm_writeack),
        .out_o_almost_empty(),
        .out_o_empty(),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_fir6_fir16_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_fir6_fir_avm_address(i_llvm_fpga_mem_unnamed_fir6_fir16_out_unnamed_fir6_fir_avm_address),
        .out_unnamed_fir6_fir_avm_burstcount(i_llvm_fpga_mem_unnamed_fir6_fir16_out_unnamed_fir6_fir_avm_burstcount),
        .out_unnamed_fir6_fir_avm_byteenable(i_llvm_fpga_mem_unnamed_fir6_fir16_out_unnamed_fir6_fir_avm_byteenable),
        .out_unnamed_fir6_fir_avm_enable(i_llvm_fpga_mem_unnamed_fir6_fir16_out_unnamed_fir6_fir_avm_enable),
        .out_unnamed_fir6_fir_avm_read(i_llvm_fpga_mem_unnamed_fir6_fir16_out_unnamed_fir6_fir_avm_read),
        .out_unnamed_fir6_fir_avm_write(i_llvm_fpga_mem_unnamed_fir6_fir16_out_unnamed_fir6_fir_avm_write),
        .out_unnamed_fir6_fir_avm_writedata(i_llvm_fpga_mem_unnamed_fir6_fir16_out_unnamed_fir6_fir_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,84)
    assign out_unnamed_fir6_fir_avm_address = i_llvm_fpga_mem_unnamed_fir6_fir16_out_unnamed_fir6_fir_avm_address;
    assign out_unnamed_fir6_fir_avm_enable = i_llvm_fpga_mem_unnamed_fir6_fir16_out_unnamed_fir6_fir_avm_enable;
    assign out_unnamed_fir6_fir_avm_read = i_llvm_fpga_mem_unnamed_fir6_fir16_out_unnamed_fir6_fir_avm_read;
    assign out_unnamed_fir6_fir_avm_write = i_llvm_fpga_mem_unnamed_fir6_fir16_out_unnamed_fir6_fir_avm_write;
    assign out_unnamed_fir6_fir_avm_writedata = i_llvm_fpga_mem_unnamed_fir6_fir16_out_unnamed_fir6_fir_avm_writedata;
    assign out_unnamed_fir6_fir_avm_byteenable = i_llvm_fpga_mem_unnamed_fir6_fir16_out_unnamed_fir6_fir_avm_byteenable;
    assign out_unnamed_fir6_fir_avm_burstcount = i_llvm_fpga_mem_unnamed_fir6_fir16_out_unnamed_fir6_fir_avm_burstcount;

    // redist7_sync_together70_aunroll_x_in_i_valid_13(DELAY,199)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("SYNC"), .phase(4), .modulus(2), .reset_high(1'b0) )
    redist7_sync_together70_aunroll_x_in_i_valid_13 ( .xin(redist6_sync_together70_aunroll_x_in_i_valid_4_q), .xout(redist7_sync_together70_aunroll_x_in_i_valid_13_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist8_sync_together70_aunroll_x_in_i_valid_15(DELAY,200)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_sync_together70_aunroll_x_in_i_valid_15_delay_0 <= $unsigned(redist7_sync_together70_aunroll_x_in_i_valid_13_q);
        end
    end
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist8_sync_together70_aunroll_x_in_i_valid_15_q <= '0;
        end
        else
        begin
            redist8_sync_together70_aunroll_x_in_i_valid_15_q <= redist8_sync_together70_aunroll_x_in_i_valid_15_delay_0;
        end
    end

    // redist9_sync_together70_aunroll_x_in_i_valid_16(DELAY,201)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist9_sync_together70_aunroll_x_in_i_valid_16_q <= $unsigned(redist8_sync_together70_aunroll_x_in_i_valid_15_q);
        end
    end

    // valid_fanout_reg17(REG,156)@16 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(redist9_sync_together70_aunroll_x_in_i_valid_16_q);
        end
    end

    // redist11_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir0_inv_pred_x_q_13(DELAY,203)
    dspba_delay_ver #( .width(1), .depth(11), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist11_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir0_inv_pred_x_q_13 ( .xin(redist10_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir0_inv_pred_x_q_2_q), .xout(redist11_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir0_inv_pred_x_q_13_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg11(REG,150)@13 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist7_sync_together70_aunroll_x_in_i_valid_13_q);
        end
    end

    // redist12_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir0_inv_pred_x_q_15(DELAY,204)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist12_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir0_inv_pred_x_q_15_delay_0 <= $unsigned(redist11_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir0_inv_pred_x_q_13_q);
            redist12_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir0_inv_pred_x_q_15_q <= redist12_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir0_inv_pred_x_q_15_delay_0;
        end
    end

    // valid_fanout_reg10(REG,149)@15 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist8_sync_together70_aunroll_x_in_i_valid_15_q);
        end
    end

    // i_llvm_fpga_push_i32_tmp_07_push8_fir0_i_llvm_fpga_push_i32_tmp_07_push8_fir1_x(FIFODELAY,134)@14 + 1
    // in i_valid@16
    // in i_write_pred@16
    // in i_data@17
    // out o_data@17
    assign i_llvm_fpga_push_i32_tmp_07_push8_fir0_i_llvm_fpga_push_i32_tmp_07_push8_fir1_x_i_stall = ~ (valid_fanout_reg11_q & redist11_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir0_inv_pred_x_q_13_q);
    assign i_llvm_fpga_push_i32_tmp_07_push8_fir0_i_llvm_fpga_push_i32_tmp_07_push8_fir1_x_i_valid = valid_fanout_reg10_q & redist12_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir0_inv_pred_x_q_15_q;
    assign i_llvm_fpga_push_i32_tmp_07_push8_fir0_i_llvm_fpga_push_i32_tmp_07_push8_fir1_x_i_data = bgTrunc_i_add_fir19_sel_x_b;
    assign i_llvm_fpga_push_i32_tmp_07_push8_fir0_i_llvm_fpga_push_i32_tmp_07_push8_fir1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_tmp_07_push8_fir0_i_llvm_fpga_push_i32_tmp_07_push8_fir1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_tmp_07_push8_fir0_i_llvm_fpga_push_i32_tmp_07_push8_fir1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_tmp_07_push8_fir0_i_llvm_fpga_push_i32_tmp_07_push8_fir1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_tmp_07_push8_fir0_i_llvm_fpga_push_i32_tmp_07_push8_fir1_x (
        .i_valid(i_llvm_fpga_push_i32_tmp_07_push8_fir0_i_llvm_fpga_push_i32_tmp_07_push8_fir1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_tmp_07_push8_fir0_i_llvm_fpga_push_i32_tmp_07_push8_fir1_x_i_stall_bitsignaltemp),
        .i_data(bgTrunc_i_add_fir19_sel_x_b),
        .o_data(i_llvm_fpga_push_i32_tmp_07_push8_fir0_i_llvm_fpga_push_i32_tmp_07_push8_fir1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // redist18_i_llvm_fpga_forked_fir_b3_forked_fir3_out_buffer_out_17(DELAY,210)
    dspba_delay_ver #( .width(1), .depth(13), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist18_i_llvm_fpga_forked_fir_b3_forked_fir3_out_buffer_out_17 ( .xin(redist17_i_llvm_fpga_forked_fir_b3_forked_fir3_out_buffer_out_4_q), .xout(redist18_i_llvm_fpga_forked_fir_b3_forked_fir3_out_buffer_out_17_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_pop_i32_tmp_07_pop8_fir0_i_llvm_fpga_pop_i32_tmp_07_pop8_fir18_mux_x(MUX,118)@17
    assign i_llvm_fpga_pop_i32_tmp_07_pop8_fir0_i_llvm_fpga_pop_i32_tmp_07_pop8_fir18_mux_x_s = redist18_i_llvm_fpga_forked_fir_b3_forked_fir3_out_buffer_out_17_q;
    always @(i_llvm_fpga_pop_i32_tmp_07_pop8_fir0_i_llvm_fpga_pop_i32_tmp_07_pop8_fir18_mux_x_s or i_llvm_fpga_push_i32_tmp_07_push8_fir0_i_llvm_fpga_push_i32_tmp_07_push8_fir1_x_o_data or c_i32_059_q)
    begin
        unique case (i_llvm_fpga_pop_i32_tmp_07_pop8_fir0_i_llvm_fpga_pop_i32_tmp_07_pop8_fir18_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_tmp_07_pop8_fir0_i_llvm_fpga_pop_i32_tmp_07_pop8_fir18_mux_x_q = i_llvm_fpga_push_i32_tmp_07_push8_fir0_i_llvm_fpga_push_i32_tmp_07_push8_fir1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_tmp_07_pop8_fir0_i_llvm_fpga_pop_i32_tmp_07_pop8_fir18_mux_x_q = c_i32_059_q;
            default : i_llvm_fpga_pop_i32_tmp_07_pop8_fir0_i_llvm_fpga_pop_i32_tmp_07_pop8_fir18_mux_x_q = 32'b0;
        endcase
    end

    // i_mul_fir17_bs3_merged_bit_select(BITSELECT,190)@9
    assign i_mul_fir17_bs3_merged_bit_select_b = i_llvm_fpga_mem_unnamed_fir5_fir12_out_o_readdata[31:18];
    assign i_mul_fir17_bs3_merged_bit_select_c = i_llvm_fpga_mem_unnamed_fir5_fir12_out_o_readdata[17:0];

    // i_mul_fir17_bs1_merged_bit_select(BITSELECT,191)@9
    assign i_mul_fir17_bs1_merged_bit_select_b = i_llvm_fpga_mem_unnamed_fir6_fir16_out_o_readdata[31:18];
    assign i_mul_fir17_bs1_merged_bit_select_c = i_llvm_fpga_mem_unnamed_fir6_fir16_out_o_readdata[17:0];

    // i_mul_fir17_ma5_cma(CHAINMULTADD,187)@9 + 5
    // out q@15
    assign i_mul_fir17_ma5_cma_reset = ~ (resetn);
    assign i_mul_fir17_ma5_cma_ena0 = 1'b1;
    assign i_mul_fir17_ma5_cma_ena1 = i_mul_fir17_ma5_cma_ena0;
    assign i_mul_fir17_ma5_cma_ena2 = i_mul_fir17_ma5_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul_fir17_ma5_cma_ah[0] <= i_mul_fir17_bs1_merged_bit_select_b;
            i_mul_fir17_ma5_cma_ah[1] <= i_mul_fir17_bs3_merged_bit_select_b;
            i_mul_fir17_ma5_cma_ch[0] <= i_mul_fir17_bs3_merged_bit_select_c;
            i_mul_fir17_ma5_cma_ch[1] <= i_mul_fir17_bs1_merged_bit_select_c;
        end
    end

    assign i_mul_fir17_ma5_cma_a0 = i_mul_fir17_ma5_cma_ah[0];
    assign i_mul_fir17_ma5_cma_c0 = i_mul_fir17_ma5_cma_ch[0];
    assign i_mul_fir17_ma5_cma_a1 = i_mul_fir17_ma5_cma_ah[1];
    assign i_mul_fir17_ma5_cma_c1 = i_mul_fir17_ma5_cma_ch[1];
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
    ) i_mul_fir17_ma5_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_fir17_ma5_cma_ena2, i_mul_fir17_ma5_cma_ena1, i_mul_fir17_ma5_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul_fir17_ma5_cma_a1),
        .by(i_mul_fir17_ma5_cma_a0),
        .ax(i_mul_fir17_ma5_cma_c1),
        .bx(i_mul_fir17_ma5_cma_c0),
        .resulta(i_mul_fir17_ma5_cma_s0),
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
    i_mul_fir17_ma5_cma_delay ( .xin(i_mul_fir17_ma5_cma_s0), .xout(i_mul_fir17_ma5_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_fir17_ma5_cma_q = $unsigned(i_mul_fir17_ma5_cma_qq[32:0]);

    // redist0_i_mul_fir17_ma5_cma_q_1(DELAY,192)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_i_mul_fir17_ma5_cma_q_1_q <= $unsigned(i_mul_fir17_ma5_cma_q);
        end
    end

    // i_mul_fir17_sums_align_1(BITSHIFT,182)@16
    assign i_mul_fir17_sums_align_1_qint = { redist0_i_mul_fir17_ma5_cma_q_1_q, 18'b000000000000000000 };
    assign i_mul_fir17_sums_align_1_q = i_mul_fir17_sums_align_1_qint[50:0];

    // i_mul_fir17_bjB4(BITJOIN,172)@9
    assign i_mul_fir17_bjB4_q = {GND_q, i_mul_fir17_bs3_merged_bit_select_b};

    // i_mul_fir17_bjA2(BITJOIN,170)@9
    assign i_mul_fir17_bjA2_q = {GND_q, i_mul_fir17_bs1_merged_bit_select_b};

    // i_mul_fir17_im0_cma(CHAINMULTADD,185)@9 + 5
    // out q@15
    assign i_mul_fir17_im0_cma_reset = ~ (resetn);
    assign i_mul_fir17_im0_cma_ena0 = 1'b1;
    assign i_mul_fir17_im0_cma_ena1 = i_mul_fir17_im0_cma_ena0;
    assign i_mul_fir17_im0_cma_ena2 = i_mul_fir17_im0_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul_fir17_im0_cma_ah[0] <= i_mul_fir17_bjA2_q;
            i_mul_fir17_im0_cma_ch[0] <= i_mul_fir17_bjB4_q;
        end
    end

    assign i_mul_fir17_im0_cma_a0 = $unsigned(i_mul_fir17_im0_cma_ah[0]);
    assign i_mul_fir17_im0_cma_c0 = $unsigned(i_mul_fir17_im0_cma_ch[0]);
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
    ) i_mul_fir17_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_fir17_im0_cma_ena2, i_mul_fir17_im0_cma_ena1, i_mul_fir17_im0_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul_fir17_im0_cma_a0),
        .ax(i_mul_fir17_im0_cma_c0),
        .resulta(i_mul_fir17_im0_cma_s0),
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
    i_mul_fir17_im0_cma_delay ( .xin(i_mul_fir17_im0_cma_s0), .xout(i_mul_fir17_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_fir17_im0_cma_q = $unsigned(i_mul_fir17_im0_cma_qq[29:0]);

    // redist2_i_mul_fir17_im0_cma_q_1(DELAY,194)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_i_mul_fir17_im0_cma_q_1_q <= $unsigned(i_mul_fir17_im0_cma_q);
        end
    end

    // i_mul_fir17_im10_cma(CHAINMULTADD,186)@9 + 5
    // out q@15
    assign i_mul_fir17_im10_cma_reset = ~ (resetn);
    assign i_mul_fir17_im10_cma_ena0 = 1'b1;
    assign i_mul_fir17_im10_cma_ena1 = i_mul_fir17_im10_cma_ena0;
    assign i_mul_fir17_im10_cma_ena2 = i_mul_fir17_im10_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul_fir17_im10_cma_ah[0] <= i_mul_fir17_bs1_merged_bit_select_c;
            i_mul_fir17_im10_cma_ch[0] <= i_mul_fir17_bs3_merged_bit_select_c;
        end
    end

    assign i_mul_fir17_im10_cma_a0 = i_mul_fir17_im10_cma_ah[0];
    assign i_mul_fir17_im10_cma_c0 = i_mul_fir17_im10_cma_ch[0];
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
    ) i_mul_fir17_im10_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_fir17_im10_cma_ena2, i_mul_fir17_im10_cma_ena1, i_mul_fir17_im10_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul_fir17_im10_cma_a0),
        .ax(i_mul_fir17_im10_cma_c0),
        .resulta(i_mul_fir17_im10_cma_s0),
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
    i_mul_fir17_im10_cma_delay ( .xin(i_mul_fir17_im10_cma_s0), .xout(i_mul_fir17_im10_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_fir17_im10_cma_q = $unsigned(i_mul_fir17_im10_cma_qq[35:0]);

    // redist1_i_mul_fir17_im10_cma_q_1(DELAY,193)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_i_mul_fir17_im10_cma_q_1_q <= $unsigned(i_mul_fir17_im10_cma_q);
        end
    end

    // i_mul_fir17_sums_join_0(BITJOIN,181)@16
    assign i_mul_fir17_sums_join_0_q = {redist2_i_mul_fir17_im0_cma_q_1_q, redist1_i_mul_fir17_im10_cma_q_1_q};

    // i_mul_fir17_sums_result_add_0_0(ADD,184)@16
    assign i_mul_fir17_sums_result_add_0_0_a = {1'b0, i_mul_fir17_sums_join_0_q};
    assign i_mul_fir17_sums_result_add_0_0_b = {16'b0000000000000000, i_mul_fir17_sums_align_1_q};
    assign i_mul_fir17_sums_result_add_0_0_o = $unsigned(i_mul_fir17_sums_result_add_0_0_a) + $unsigned(i_mul_fir17_sums_result_add_0_0_b);
    assign i_mul_fir17_sums_result_add_0_0_q = i_mul_fir17_sums_result_add_0_0_o[66:0];

    // bgTrunc_i_mul_fir17_sel_x(BITSELECT,80)@16
    assign bgTrunc_i_mul_fir17_sel_x_in = i_mul_fir17_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul_fir17_sel_x_b = bgTrunc_i_mul_fir17_sel_x_in[31:0];

    // redist16_bgTrunc_i_mul_fir17_sel_x_b_1(DELAY,208)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist16_bgTrunc_i_mul_fir17_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul_fir17_sel_x_b);
        end
    end

    // i_add_fir19(ADD,44)@17
    assign i_add_fir19_a = {1'b0, redist16_bgTrunc_i_mul_fir17_sel_x_b_1_q};
    assign i_add_fir19_b = {1'b0, i_llvm_fpga_pop_i32_tmp_07_pop8_fir0_i_llvm_fpga_pop_i32_tmp_07_pop8_fir18_mux_x_q};
    assign i_add_fir19_o = $unsigned(i_add_fir19_a) + $unsigned(i_add_fir19_b);
    assign i_add_fir19_q = i_add_fir19_o[32:0];

    // bgTrunc_i_add_fir19_sel_x(BITSELECT,77)@17
    assign bgTrunc_i_add_fir19_sel_x_b = i_add_fir19_q[31:0];

    // redist20_i_fir_b3_current_iter_isspec_fir5_q_12(DELAY,212)
    dspba_delay_ver #( .width(1), .depth(12), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist20_i_fir_b3_current_iter_isspec_fir5_q_12 ( .xin(i_fir_b3_current_iter_isspec_fir5_q), .xout(redist20_i_fir_b3_current_iter_isspec_fir5_q_12_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_ffwd_source_i32_unnamed_fir7_fir30(BLACKBOX,63)@17
    // out out_intel_reserved_ffwd_0_0@20000000
    fir_i_llvm_fpga_ffwd_source_i32_unnamed_7_fir0 thei_llvm_fpga_ffwd_source_i32_unnamed_fir7_fir30 (
        .in_predicate_in(redist20_i_fir_b3_current_iter_isspec_fir5_q_12_q),
        .in_src_data_in_0_0(bgTrunc_i_add_fir19_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_intel_reserved_ffwd_0_0(i_llvm_fpga_ffwd_source_i32_unnamed_fir7_fir30_out_intel_reserved_ffwd_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,85)
    assign out_intel_reserved_ffwd_0_0 = i_llvm_fpga_ffwd_source_i32_unnamed_fir7_fir30_out_intel_reserved_ffwd_0_0;

    // dupName_1_regfree_osync_x(GPOUT,86)
    assign out_pipeline_dummy_out = i_llvm_fpga_pipeline_keep_going_fir6_out_pipeline_dummy_out;

    // dupName_2_regfree_osync_x(GPOUT,87)
    assign out_pipeline_forked_out = i_llvm_fpga_pipeline_keep_going_fir6_out_pipeline_forked_out;

    // dupName_3_regfree_osync_x(GPOUT,88)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_fir6_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,139)@16 + 1
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist9_sync_together70_aunroll_x_in_i_valid_16_q);
        end
    end

    // i_notcmp_fir26(LOGICAL,70)@17
    assign i_notcmp_fir26_q = redist3_i_exitcond_fir22_cmp_nsign_q_13_q ^ VCC_q;

    // redist3_i_exitcond_fir22_cmp_nsign_q_13(DELAY,195)
    dspba_delay_ver #( .width(1), .depth(13), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist3_i_exitcond_fir22_cmp_nsign_q_13 ( .xin(i_exitcond_fir22_cmp_nsign_q), .xout(redist3_i_exitcond_fir22_cmp_nsign_q_13_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,137)@17
    assign out_c0_exi2_0_tpl = GND_q;
    assign out_c0_exi2_1_tpl = redist3_i_exitcond_fir22_cmp_nsign_q_13_q;
    assign out_c0_exi2_2_tpl = i_notcmp_fir26_q;
    assign out_fir_B3_current_iter_isspec = redist20_i_fir_b3_current_iter_isspec_fir5_q_12_q;
    assign out_o_valid = valid_fanout_reg0_q;

endmodule
