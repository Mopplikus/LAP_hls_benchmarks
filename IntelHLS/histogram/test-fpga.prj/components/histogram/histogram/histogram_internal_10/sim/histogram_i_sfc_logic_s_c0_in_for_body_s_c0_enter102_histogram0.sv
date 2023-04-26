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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body_histograms_c0_enter102_histogram0
// Created for function/kernel histogram
// SystemVerilog created on Wed Apr 26 12:05:11 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module histogram_i_sfc_logic_s_c0_in_for_body_s_c0_enter102_histogram0 (
    input wire [31:0] in_lm1_histogram_avm_readdata,
    input wire [0:0] in_lm1_histogram_avm_writeack,
    input wire [0:0] in_lm1_histogram_avm_waitrequest,
    input wire [0:0] in_lm1_histogram_avm_readdatavalid,
    output wire [31:0] out_lm1_histogram_avm_address,
    output wire [0:0] out_lm1_histogram_avm_enable,
    output wire [0:0] out_lm1_histogram_avm_read,
    output wire [0:0] out_lm1_histogram_avm_write,
    output wire [31:0] out_lm1_histogram_avm_writedata,
    output wire [3:0] out_lm1_histogram_avm_byteenable,
    output wire [0:0] out_lm1_histogram_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [0:0] in_intel_reserved_ffwd_0_0,
    input wire [32:0] in_intel_reserved_ffwd_1_0,
    output wire [0:0] out_exiting_valid_out,
    input wire [31:0] in_lm52_histogram_avm_readdata,
    input wire [0:0] in_lm52_histogram_avm_writeack,
    input wire [0:0] in_lm52_histogram_avm_waitrequest,
    input wire [0:0] in_lm52_histogram_avm_readdatavalid,
    output wire [31:0] out_lm52_histogram_avm_address,
    output wire [0:0] out_lm52_histogram_avm_enable,
    output wire [0:0] out_lm52_histogram_avm_read,
    output wire [0:0] out_lm52_histogram_avm_write,
    output wire [31:0] out_lm52_histogram_avm_writedata,
    output wire [3:0] out_lm52_histogram_avm_byteenable,
    output wire [0:0] out_lm52_histogram_avm_burstcount,
    output wire [0:0] out_pipeline_dummy_out,
    input wire [31:0] in_lm73_histogram_avm_readdata,
    input wire [0:0] in_lm73_histogram_avm_writeack,
    input wire [0:0] in_lm73_histogram_avm_waitrequest,
    input wire [0:0] in_lm73_histogram_avm_readdatavalid,
    output wire [31:0] out_lm73_histogram_avm_address,
    output wire [0:0] out_lm73_histogram_avm_enable,
    output wire [0:0] out_lm73_histogram_avm_read,
    output wire [0:0] out_lm73_histogram_avm_write,
    output wire [31:0] out_lm73_histogram_avm_writedata,
    output wire [3:0] out_lm73_histogram_avm_byteenable,
    output wire [0:0] out_lm73_histogram_avm_burstcount,
    output wire [0:0] out_pipeline_forked_out,
    input wire [31:0] in_memdep_histogram_avm_readdata,
    input wire [0:0] in_memdep_histogram_avm_writeack,
    input wire [0:0] in_memdep_histogram_avm_waitrequest,
    input wire [0:0] in_memdep_histogram_avm_readdatavalid,
    output wire [31:0] out_memdep_histogram_avm_address,
    output wire [0:0] out_memdep_histogram_avm_enable,
    output wire [0:0] out_memdep_histogram_avm_read,
    output wire [0:0] out_memdep_histogram_avm_write,
    output wire [31:0] out_memdep_histogram_avm_writedata,
    output wire [3:0] out_memdep_histogram_avm_byteenable,
    output wire [0:0] out_memdep_histogram_avm_burstcount,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_c0_exi2_0_tpl,
    output wire [0:0] out_c0_exi2_1_tpl,
    output wire [0:0] out_c0_exi2_2_tpl,
    output wire [0:0] out_histogram_B2_current_iter_isspec,
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
    wire [63:0] c_histogram_feature_pmem_q;
    wire [63:0] c_histogram_hist_pmem_q;
    wire [63:0] c_histogram_weight_pmem_q;
    wire [31:0] c_i32_076_q;
    wire [31:0] c_i32_177_q;
    wire [32:0] c_i33_179_q;
    wire [32:0] c_i33_undef75_q;
    wire [31:0] i_add_histogram27_out_primWireOut;
    wire [1:0] i_arrayidx1_histogram16_vt_const_1_q;
    wire [63:0] i_arrayidx1_histogram16_vt_join_q;
    wire [61:0] i_arrayidx1_histogram16_vt_select_63_b;
    wire [63:0] i_arrayidx52_histogram19_vt_join_q;
    wire [61:0] i_arrayidx52_histogram19_vt_select_63_b;
    wire [63:0] i_arrayidx73_histogram23_vt_join_q;
    wire [61:0] i_arrayidx73_histogram23_vt_select_63_b;
    wire [33:0] i_fpga_indvars_iv_next_histogram33_a;
    wire [33:0] i_fpga_indvars_iv_next_histogram33_b;
    logic [33:0] i_fpga_indvars_iv_next_histogram33_o;
    wire [33:0] i_fpga_indvars_iv_next_histogram33_q;
    wire [0:0] i_fpga_indvars_iv_replace_phi_histogram11_s;
    reg [32:0] i_fpga_indvars_iv_replace_phi_histogram11_q;
    wire [0:0] i_histogram_b2_current_iter_isspec_histogram5_q;
    wire [0:0] i_histogram_b2_current_iter_isspec_or3_histogram20_q;
    wire [0:0] i_histogram_b2_next_iter_isreal_histogram7_q;
    wire [63:0] i_idxprom_histogram15_vt_join_q;
    wire [31:0] i_idxprom_histogram15_vt_select_31_b;
    wire [32:0] i_inc_histogram30_a;
    wire [32:0] i_inc_histogram30_b;
    logic [32:0] i_inc_histogram30_o;
    wire [32:0] i_inc_histogram30_q;
    wire [0:0] i_llvm_fpga_dummy_thread_histogram_b2_dummy_histogram2_out_dummy_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp94_histogram34_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp95_histogram12_out_dest_data_out_0_0;
    wire [32:0] i_llvm_fpga_ffwd_dest_i33_unnamed_histogram6_histogram9_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_forked_histogram_b2_forked_histogram3_out_buffer_out;
    wire [31:0] i_llvm_fpga_mem_lm1_histogram18_out_lm1_histogram_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm1_histogram18_out_lm1_histogram_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_lm1_histogram18_out_lm1_histogram_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm1_histogram18_out_lm1_histogram_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm1_histogram18_out_lm1_histogram_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm1_histogram18_out_lm1_histogram_avm_write;
    wire [31:0] i_llvm_fpga_mem_lm1_histogram18_out_lm1_histogram_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm1_histogram18_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_lm52_histogram21_out_lm52_histogram_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm52_histogram21_out_lm52_histogram_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_lm52_histogram21_out_lm52_histogram_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm52_histogram21_out_lm52_histogram_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm52_histogram21_out_lm52_histogram_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm52_histogram21_out_lm52_histogram_avm_write;
    wire [31:0] i_llvm_fpga_mem_lm52_histogram21_out_lm52_histogram_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm52_histogram21_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_lm73_histogram26_out_lm73_histogram_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm73_histogram26_out_lm73_histogram_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_lm73_histogram26_out_lm73_histogram_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm73_histogram26_out_lm73_histogram_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm73_histogram26_out_lm73_histogram_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm73_histogram26_out_lm73_histogram_avm_write;
    wire [31:0] i_llvm_fpga_mem_lm73_histogram26_out_lm73_histogram_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm73_histogram26_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_memdep_histogram29_out_memdep_histogram_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_histogram29_out_memdep_histogram_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_histogram29_out_memdep_histogram_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_histogram29_out_memdep_histogram_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_histogram29_out_memdep_histogram_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_histogram29_out_memdep_histogram_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_histogram29_out_memdep_histogram_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_histogram29_out_o_writeack;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_histogram6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_histogram6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_histogram6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_histogram6_out_pipeline_dummy_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_histogram6_out_pipeline_forked_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_histogram6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_histogram40_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_histogram40_out_feedback_valid_out_3;
    wire [0:0] i_notcmp_histogram39_q;
    wire [0:0] i_unnamed_histogram13_q;
    wire [0:0] i_unnamed_histogram35_q;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next_histogram33_sel_x_b;
    wire [31:0] bgTrunc_i_inc_histogram30_sel_x_b;
    wire [12:0] i_arrayidx1_histogram0_add_x_a;
    wire [12:0] i_arrayidx1_histogram0_add_x_b;
    logic [12:0] i_arrayidx1_histogram0_add_x_o;
    wire [12:0] i_arrayidx1_histogram0_add_x_q;
    wire [63:0] i_arrayidx1_histogram0_append_upper_bits_x_q;
    wire [9:0] i_arrayidx1_histogram0_narrow_x_b;
    wire [11:0] i_arrayidx1_histogram0_shift_join_x_q;
    wire [11:0] i_arrayidx1_histogram0_dupName_0_trunc_sel_x_b;
    wire [11:0] i_arrayidx1_histogram0_dupName_2_trunc_sel_x_b;
    wire [12:0] i_arrayidx52_histogram0_add_x_a;
    wire [12:0] i_arrayidx52_histogram0_add_x_b;
    logic [12:0] i_arrayidx52_histogram0_add_x_o;
    wire [12:0] i_arrayidx52_histogram0_add_x_q;
    wire [63:0] i_arrayidx52_histogram0_append_upper_bits_x_q;
    wire [11:0] i_arrayidx52_histogram0_dupName_2_trunc_sel_x_b;
    wire [12:0] i_arrayidx73_histogram0_add_x_a;
    wire [12:0] i_arrayidx73_histogram0_add_x_b;
    logic [12:0] i_arrayidx73_histogram0_add_x_o;
    wire [12:0] i_arrayidx73_histogram0_add_x_q;
    wire [63:0] i_arrayidx73_histogram0_append_upper_bits_x_q;
    wire [9:0] i_arrayidx73_histogram0_narrow_x_b;
    wire [11:0] i_arrayidx73_histogram0_shift_join_x_q;
    wire [11:0] i_arrayidx73_histogram0_dupName_0_trunc_sel_x_b;
    wire [11:0] i_arrayidx73_histogram0_dupName_2_trunc_sel_x_b;
    wire [63:0] i_idxprom6_histogram22_sel_x_b;
    wire [63:0] i_idxprom_histogram15_sel_x_b;
    wire [0:0] i_llvm_fpga_pop_coalesce_i1_histogram_b2_current_iter_isreal_histogram0_i_llvm_fpga_pop_coalesce_i1_histogram_b2_current_iter_isreal_histogram4_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_coalesce_i1_histogram_b2_current_iter_isreal_histogram0_i_llvm_fpga_pop_coalesce_i1_histogram_b2_current_iter_isreal_histogram4_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram0_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram24_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram0_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram24_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_i_010_pop7_histogram0_i_llvm_fpga_pop_i32_i_010_pop7_histogram14_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_i_010_pop7_histogram0_i_llvm_fpga_pop_i32_i_010_pop7_histogram14_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram0_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram10_mux_x_s;
    reg [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram0_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram10_mux_x_q;
    wire [6:0] i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram0_c_i7_03_x_q;
    wire [7:0] i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram0_i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram1_x_i_valid;
    wire i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram0_i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram0_i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram1_x_i_stall;
    wire i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram0_i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram0_i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram0_i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram0_inv_pred_x_q;
    wire [0:0] i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi_push8_histogram0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push8_histogram0_i_llvm_fpga_push_i1_memdep_phi_push8_histogram1_x_i_valid;
    wire i_llvm_fpga_push_i1_memdep_phi_push8_histogram0_i_llvm_fpga_push_i1_memdep_phi_push8_histogram1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push8_histogram0_i_llvm_fpga_push_i1_memdep_phi_push8_histogram1_x_i_stall;
    wire i_llvm_fpga_push_i1_memdep_phi_push8_histogram0_i_llvm_fpga_push_i1_memdep_phi_push8_histogram1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi_push8_histogram0_i_llvm_fpga_push_i1_memdep_phi_push8_histogram1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi_push8_histogram0_i_llvm_fpga_push_i1_memdep_phi_push8_histogram1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push8_histogram0_adapt_scalar_trunc4_sel_x_b;
    wire [0:0] i_llvm_fpga_push_i32_i_010_push7_histogram0_i_llvm_fpga_push_i32_i_010_push7_histogram1_x_i_valid;
    wire i_llvm_fpga_push_i32_i_010_push7_histogram0_i_llvm_fpga_push_i32_i_010_push7_histogram1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_i_010_push7_histogram0_i_llvm_fpga_push_i32_i_010_push7_histogram1_x_i_stall;
    wire i_llvm_fpga_push_i32_i_010_push7_histogram0_i_llvm_fpga_push_i32_i_010_push7_histogram1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_i_010_push7_histogram0_i_llvm_fpga_push_i32_i_010_push7_histogram1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_i_010_push7_histogram0_i_llvm_fpga_push_i32_i_010_push7_histogram1_x_o_data;
    wire [30:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram0_c_i31_03_x_q;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram0_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram1_x_i_valid;
    wire i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram0_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram0_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram1_x_i_stall;
    wire i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram0_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram1_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram0_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram1_x_i_data;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram0_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram1_x_o_data;
    wire [32:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram0_adapt_scalar_trunc4_sel_x_b;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg5_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg7_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg9_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg10_q;
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
    wire [0:0] i_exitcond_histogram31_cmp_nsign_q;
    wire [51:0] i_arrayidx1_histogram0_upper_bits_x_merged_bit_select_b;
    wire [11:0] i_arrayidx1_histogram0_upper_bits_x_merged_bit_select_c;
    wire [51:0] i_arrayidx73_histogram0_upper_bits_x_merged_bit_select_b;
    wire [11:0] i_arrayidx73_histogram0_upper_bits_x_merged_bit_select_c;
    wire [51:0] i_arrayidx52_histogram0_upper_bits_x_merged_bit_select_b;
    wire [11:0] i_arrayidx52_histogram0_upper_bits_x_merged_bit_select_c;
    reg [0:0] redist0_valid_fanout_reg0_q_1_q;
    reg [0:0] redist1_sync_together87_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist1_sync_together87_aunroll_x_in_i_valid_3_delay_0;
    reg [0:0] redist1_sync_together87_aunroll_x_in_i_valid_3_delay_1;
    reg [0:0] redist2_sync_together87_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist3_sync_together87_aunroll_x_in_i_valid_7_q;
    reg [0:0] redist3_sync_together87_aunroll_x_in_i_valid_7_delay_0;
    reg [0:0] redist3_sync_together87_aunroll_x_in_i_valid_7_delay_1;
    reg [0:0] redist4_sync_together87_aunroll_x_in_i_valid_13_q;
    reg [0:0] redist5_i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram0_inv_pred_x_q_3_q;
    reg [0:0] redist5_i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram0_inv_pred_x_q_3_delay_0;
    reg [0:0] redist5_i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram0_inv_pred_x_q_3_delay_1;
    reg [0:0] redist6_i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram0_inv_pred_x_q_4_q;
    reg [0:0] redist7_i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram0_inv_pred_x_q_13_q;
    reg [31:0] redist8_i_llvm_fpga_pop_i32_i_010_pop7_histogram0_i_llvm_fpga_pop_i32_i_010_pop7_histogram14_mux_x_q_1_q;
    reg [0:0] redist9_i_llvm_fpga_pop_coalesce_i1_histogram_b2_current_iter_isreal_histogram0_i_llvm_fpga_pop_coalesce_i1_histogram_b2_current_iter_isreal_histogram4_mux_x_q_1_q;
    reg [11:0] redist10_i_arrayidx1_histogram0_shift_join_x_q_1_q;
    reg [31:0] redist11_bgTrunc_i_inc_histogram30_sel_x_b_1_q;
    reg [32:0] redist12_bgTrunc_i_fpga_indvars_iv_next_histogram33_sel_x_b_1_q;
    reg [0:0] redist13_i_unnamed_histogram35_q_10_q;
    reg [0:0] redist14_i_llvm_fpga_forked_histogram_b2_forked_histogram3_out_buffer_out_4_q;
    reg [0:0] redist14_i_llvm_fpga_forked_histogram_b2_forked_histogram3_out_buffer_out_4_delay_0;
    reg [0:0] redist14_i_llvm_fpga_forked_histogram_b2_forked_histogram3_out_buffer_out_4_delay_1;
    reg [0:0] redist14_i_llvm_fpga_forked_histogram_b2_forked_histogram3_out_buffer_out_4_delay_2;
    reg [0:0] redist15_i_llvm_fpga_forked_histogram_b2_forked_histogram3_out_buffer_out_5_q;
    reg [0:0] redist16_i_llvm_fpga_forked_histogram_b2_forked_histogram3_out_buffer_out_8_q;
    reg [0:0] redist16_i_llvm_fpga_forked_histogram_b2_forked_histogram3_out_buffer_out_8_delay_0;
    reg [0:0] redist16_i_llvm_fpga_forked_histogram_b2_forked_histogram3_out_buffer_out_8_delay_1;
    reg [0:0] redist17_i_llvm_fpga_dummy_thread_histogram_b2_dummy_histogram2_out_dummy_out_5_q;
    reg [0:0] redist17_i_llvm_fpga_dummy_thread_histogram_b2_dummy_histogram2_out_dummy_out_5_delay_0;
    reg [0:0] redist17_i_llvm_fpga_dummy_thread_histogram_b2_dummy_histogram2_out_dummy_out_5_delay_1;
    reg [0:0] redist17_i_llvm_fpga_dummy_thread_histogram_b2_dummy_histogram2_out_dummy_out_5_delay_2;
    reg [0:0] redist17_i_llvm_fpga_dummy_thread_histogram_b2_dummy_histogram2_out_dummy_out_5_delay_3;
    reg [0:0] redist18_i_histogram_b2_current_iter_isspec_or3_histogram20_q_1_q;
    reg [0:0] redist19_i_histogram_b2_current_iter_isspec_or3_histogram20_q_4_q;
    reg [0:0] redist19_i_histogram_b2_current_iter_isspec_or3_histogram20_q_4_delay_0;
    reg [0:0] redist19_i_histogram_b2_current_iter_isspec_or3_histogram20_q_4_delay_1;
    reg [0:0] redist20_i_histogram_b2_current_iter_isspec_or3_histogram20_q_10_q;
    reg [0:0] redist21_i_histogram_b2_current_iter_isspec_histogram5_q_11_q;
    reg [63:0] redist22_i_arrayidx73_histogram23_vt_join_q_6_inputreg0_q;
    reg [63:0] redist22_i_arrayidx73_histogram23_vt_join_q_6_outputreg0_q;
    wire redist22_i_arrayidx73_histogram23_vt_join_q_6_mem_reset0;
    wire [63:0] redist22_i_arrayidx73_histogram23_vt_join_q_6_mem_ia;
    wire [1:0] redist22_i_arrayidx73_histogram23_vt_join_q_6_mem_aa;
    wire [1:0] redist22_i_arrayidx73_histogram23_vt_join_q_6_mem_ab;
    wire [63:0] redist22_i_arrayidx73_histogram23_vt_join_q_6_mem_iq;
    wire [63:0] redist22_i_arrayidx73_histogram23_vt_join_q_6_mem_q;
    wire [1:0] redist22_i_arrayidx73_histogram23_vt_join_q_6_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [1:0] redist22_i_arrayidx73_histogram23_vt_join_q_6_wraddr_i = 2'b11;
    wire [1:0] redist22_i_arrayidx73_histogram23_vt_join_q_6_offset_q;
    wire [2:0] redist22_i_arrayidx73_histogram23_vt_join_q_6_rdcnt_a;
    wire [2:0] redist22_i_arrayidx73_histogram23_vt_join_q_6_rdcnt_b;
    logic [2:0] redist22_i_arrayidx73_histogram23_vt_join_q_6_rdcnt_o;
    wire [2:0] redist22_i_arrayidx73_histogram23_vt_join_q_6_rdcnt_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist1_sync_together87_aunroll_x_in_i_valid_3(DELAY,206)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist1_sync_together87_aunroll_x_in_i_valid_3_delay_0 <= '0;
        end
        else
        begin
            redist1_sync_together87_aunroll_x_in_i_valid_3_delay_0 <= $unsigned(in_i_valid);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_together87_aunroll_x_in_i_valid_3_delay_1 <= redist1_sync_together87_aunroll_x_in_i_valid_3_delay_0;
        end
    end
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist1_sync_together87_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist1_sync_together87_aunroll_x_in_i_valid_3_q <= redist1_sync_together87_aunroll_x_in_i_valid_3_delay_1;
        end
    end

    // valid_fanout_reg9(REG,180)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist1_sync_together87_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram0_c_i7_03_x(CONSTANT,149)
    assign i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram0_c_i7_03_x_q = $unsigned(7'b0000000);

    // redist2_sync_together87_aunroll_x_in_i_valid_4(DELAY,207)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_sync_together87_aunroll_x_in_i_valid_4_q <= $unsigned(redist1_sync_together87_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg2(REG,173)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist2_sync_together87_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg21(REG,192)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg21_q <= $unsigned(redist2_sync_together87_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg5(REG,176)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist1_sync_together87_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i33_unnamed_histogram6_histogram9(BLACKBOX,76)@4
    histogram_i_llvm_fpga_ffwd_dest_i33_unnamed_6_histogram0 thei_llvm_fpga_ffwd_dest_i33_unnamed_histogram6_histogram9 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i33_unnamed_histogram6_histogram9_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef75(CONSTANT,44)
    assign c_i33_undef75_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram0_c_i31_03_x(CONSTANT,164)
    assign i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram0_c_i31_03_x_q = $unsigned(31'b0000000000000000000000000000000);

    // c_i33_179(CONSTANT,43)
    assign c_i33_179_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next_histogram33(ADD,58)@5
    assign i_fpga_indvars_iv_next_histogram33_a = {1'b0, i_fpga_indvars_iv_replace_phi_histogram11_q};
    assign i_fpga_indvars_iv_next_histogram33_b = {1'b0, c_i33_179_q};
    assign i_fpga_indvars_iv_next_histogram33_o = $unsigned(i_fpga_indvars_iv_next_histogram33_a) + $unsigned(i_fpga_indvars_iv_next_histogram33_b);
    assign i_fpga_indvars_iv_next_histogram33_q = i_fpga_indvars_iv_next_histogram33_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next_histogram33_sel_x(BITSELECT,94)@5
    assign bgTrunc_i_fpga_indvars_iv_next_histogram33_sel_x_b = i_fpga_indvars_iv_next_histogram33_q[32:0];

    // redist12_bgTrunc_i_fpga_indvars_iv_next_histogram33_sel_x_b_1(DELAY,217)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist12_bgTrunc_i_fpga_indvars_iv_next_histogram33_sel_x_b_1_q <= $unsigned(bgTrunc_i_fpga_indvars_iv_next_histogram33_sel_x_b);
        end
    end

    // i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram0_element_extension2_x(BITJOIN,165)@6
    assign i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram0_element_extension2_x_q = {i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram0_c_i31_03_x_q, redist12_bgTrunc_i_fpga_indvars_iv_next_histogram33_sel_x_b_1_q};

    // valid_fanout_reg20(REG,191)@0 + 1
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

    // redist6_i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram0_inv_pred_x_q_4(DELAY,211)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram0_inv_pred_x_q_4_q <= $unsigned(redist5_i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram0_inv_pred_x_q_3_q);
        end
    end

    // valid_fanout_reg19(REG,190)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(redist2_sync_together87_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram0_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram1_x(FIFODELAY,166)@1 + 5
    // in i_valid@5
    // in i_write_pred@5
    // in i_data@6
    // out o_data@4
    assign i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram0_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram1_x_i_stall = ~ (valid_fanout_reg20_q & i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram0_inv_pred_x_q);
    assign i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram0_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram1_x_i_valid = valid_fanout_reg19_q & redist6_i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram0_inv_pred_x_q_4_q;
    assign i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram0_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram1_x_i_data = i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram0_element_extension2_x_q;
    assign i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram0_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram0_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram1_x_i_valid[0];
    assign i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram0_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram0_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(5),
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
    ) thei_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram0_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram1_x (
        .i_valid(i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram0_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram0_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram0_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram0_adapt_scalar_trunc4_sel_x(BITSELECT,168)@4
    assign i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram0_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram1_x_o_data[32:0];

    // i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram0_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram10_mux_x(MUX,147)@4
    assign i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram0_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram10_mux_x_s = redist14_i_llvm_fpga_forked_histogram_b2_forked_histogram3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram0_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram10_mux_x_s or i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram0_adapt_scalar_trunc4_sel_x_b or c_i33_undef75_q)
    begin
        unique case (i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram0_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram10_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram0_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram10_mux_x_q = i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram0_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram10_mux_x_q = c_i33_undef75_q;
            default : i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram0_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram10_mux_x_q = 33'b0;
        endcase
    end

    // i_fpga_indvars_iv_replace_phi_histogram11(MUX,59)@4 + 1
    assign i_fpga_indvars_iv_replace_phi_histogram11_s = redist14_i_llvm_fpga_forked_histogram_b2_forked_histogram3_out_buffer_out_4_q;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_fpga_indvars_iv_replace_phi_histogram11_s)
                1'b0 : i_fpga_indvars_iv_replace_phi_histogram11_q <= i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram0_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram10_mux_x_q;
                1'b1 : i_fpga_indvars_iv_replace_phi_histogram11_q <= i_llvm_fpga_ffwd_dest_i33_unnamed_histogram6_histogram9_out_dest_data_out_1_0;
                default : i_fpga_indvars_iv_replace_phi_histogram11_q <= 33'b0;
            endcase
        end
    end

    // i_exitcond_histogram31_cmp_nsign(LOGICAL,201)@5
    assign i_exitcond_histogram31_cmp_nsign_q = $unsigned(~ (i_fpga_indvars_iv_replace_phi_histogram11_q[32:32]));

    // valid_fanout_reg14(REG,185)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist2_sync_together87_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp94_histogram34(BLACKBOX,74)@5
    histogram_i_llvm_fpga_ffwd_dest_i1_cmp94_0 thei_llvm_fpga_ffwd_dest_i1_cmp94_histogram34 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_cmp94_histogram34_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_histogram35(LOGICAL,86)@5
    assign i_unnamed_histogram35_q = i_llvm_fpga_ffwd_dest_i1_cmp94_histogram34_out_dest_data_out_0_0 & i_exitcond_histogram31_cmp_nsign_q;

    // i_llvm_fpga_push_i1_notexitcond_histogram40(BLACKBOX,83)@5
    // in in_empty_in@20000000
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    histogram_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_histogram40 (
        .in_almost_empty_in(GND_q),
        .in_data_in(i_unnamed_histogram35_q),
        .in_empty_in(GND_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_histogram6_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_histogram40_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_histogram40_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_dummy_thread_histogram_b2_dummy_histogram2(BLACKBOX,73)@0
    // in in_stall_in@20000000
    histogram_i_llvm_fpga_dummy_thread_b2_dummy_histogram0 thei_llvm_fpga_dummy_thread_histogram_b2_dummy_histogram2 (
        .in_dummy_in(in_dummy_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dummy_out(i_llvm_fpga_dummy_thread_histogram_b2_dummy_histogram2_out_dummy_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist17_i_llvm_fpga_dummy_thread_histogram_b2_dummy_histogram2_out_dummy_out_5(DELAY,222)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist17_i_llvm_fpga_dummy_thread_histogram_b2_dummy_histogram2_out_dummy_out_5_delay_0 <= $unsigned(i_llvm_fpga_dummy_thread_histogram_b2_dummy_histogram2_out_dummy_out);
            redist17_i_llvm_fpga_dummy_thread_histogram_b2_dummy_histogram2_out_dummy_out_5_delay_1 <= redist17_i_llvm_fpga_dummy_thread_histogram_b2_dummy_histogram2_out_dummy_out_5_delay_0;
            redist17_i_llvm_fpga_dummy_thread_histogram_b2_dummy_histogram2_out_dummy_out_5_delay_2 <= redist17_i_llvm_fpga_dummy_thread_histogram_b2_dummy_histogram2_out_dummy_out_5_delay_1;
            redist17_i_llvm_fpga_dummy_thread_histogram_b2_dummy_histogram2_out_dummy_out_5_delay_3 <= redist17_i_llvm_fpga_dummy_thread_histogram_b2_dummy_histogram2_out_dummy_out_5_delay_2;
            redist17_i_llvm_fpga_dummy_thread_histogram_b2_dummy_histogram2_out_dummy_out_5_q <= redist17_i_llvm_fpga_dummy_thread_histogram_b2_dummy_histogram2_out_dummy_out_5_delay_3;
        end
    end

    // redist15_i_llvm_fpga_forked_histogram_b2_forked_histogram3_out_buffer_out_5(DELAY,220)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist15_i_llvm_fpga_forked_histogram_b2_forked_histogram3_out_buffer_out_5_q <= $unsigned(redist14_i_llvm_fpga_forked_histogram_b2_forked_histogram3_out_buffer_out_4_q);
        end
    end

    // i_llvm_fpga_pipeline_keep_going_histogram6(BLACKBOX,82)@5
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_dummy_out@20000000
    // out out_pipeline_forked_out@20000000
    // out out_pipeline_valid_out@20000000
    histogram_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_histogram6 (
        .in_data_in(redist15_i_llvm_fpga_forked_histogram_b2_forked_histogram3_out_buffer_out_5_q),
        .in_dummy_in(redist17_i_llvm_fpga_dummy_thread_histogram_b2_dummy_histogram2_out_dummy_out_5_q),
        .in_forked_in(redist15_i_llvm_fpga_forked_histogram_b2_forked_histogram3_out_buffer_out_5_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_histogram40_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_histogram40_out_feedback_valid_out_3),
        .in_pipeline_stall_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_histogram6_out_data_out),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_histogram6_out_exiting_valid_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_histogram6_out_not_exitcond_stall_out),
        .out_pipeline_dummy_out(i_llvm_fpga_pipeline_keep_going_histogram6_out_pipeline_dummy_out),
        .out_pipeline_forked_out(i_llvm_fpga_pipeline_keep_going_histogram6_out_pipeline_forked_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_histogram6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist9_i_llvm_fpga_pop_coalesce_i1_histogram_b2_current_iter_isreal_histogram0_i_llvm_fpga_pop_coalesce_i1_histogram_b2_current_iter_isreal_histogram4_mux_x_q_1(DELAY,214)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist9_i_llvm_fpga_pop_coalesce_i1_histogram_b2_current_iter_isreal_histogram0_i_llvm_fpga_pop_coalesce_i1_histogram_b2_current_iter_isreal_histogram4_mux_x_q_1_q <= $unsigned(i_llvm_fpga_pop_coalesce_i1_histogram_b2_current_iter_isreal_histogram0_i_llvm_fpga_pop_coalesce_i1_histogram_b2_current_iter_isreal_histogram4_mux_x_q);
        end
    end

    // i_histogram_b2_next_iter_isreal_histogram7(LOGICAL,65)@5
    assign i_histogram_b2_next_iter_isreal_histogram7_q = redist9_i_llvm_fpga_pop_coalesce_i1_histogram_b2_current_iter_isreal_histogram0_i_llvm_fpga_pop_coalesce_i1_histogram_b2_current_iter_isreal_histogram4_mux_x_q_1_q & i_llvm_fpga_pipeline_keep_going_histogram6_out_data_out;

    // i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram0_element_extension2_x(BITJOIN,150)@5
    assign i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram0_element_extension2_x_q = {i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram0_c_i7_03_x_q, i_histogram_b2_next_iter_isreal_histogram7_q};

    // i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram0_inv_pred_x(LOGICAL,152)@1
    assign i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram0_inv_pred_x_q = ~ (GND_q);

    // valid_fanout_reg4(REG,175)@0 + 1
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

    // redist5_i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram0_inv_pred_x_q_3(DELAY,210)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram0_inv_pred_x_q_3_delay_0 <= $unsigned(i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram0_inv_pred_x_q);
            redist5_i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram0_inv_pred_x_q_3_delay_1 <= redist5_i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram0_inv_pred_x_q_3_delay_0;
            redist5_i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram0_inv_pred_x_q_3_q <= redist5_i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram0_inv_pred_x_q_3_delay_1;
        end
    end

    // valid_fanout_reg3(REG,174)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist1_sync_together87_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram0_i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram1_x(FIFODELAY,151)@1 + 6
    // in i_valid@4
    // in i_write_pred@4
    // in i_data@5
    // out o_data@4
    assign i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram0_i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram1_x_i_stall = ~ (valid_fanout_reg4_q & i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram0_i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram1_x_i_valid = valid_fanout_reg3_q & redist5_i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram0_inv_pred_x_q_3_q;
    assign i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram0_i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram1_x_i_data = i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram0_i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram0_i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram0_i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram0_i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(6),
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
    ) thei_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram0_i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram1_x (
        .i_valid(i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram0_i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram0_i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram0_i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram0_adapt_scalar_trunc4_sel_x(BITSELECT,153)@4
    assign i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram0_i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram1_x_o_data[0:0];

    // i_llvm_fpga_forked_histogram_b2_forked_histogram3(BLACKBOX,77)@0
    // in in_stall_in@20000000
    histogram_i_llvm_fpga_forked_b2_forked_histogram0 thei_llvm_fpga_forked_histogram_b2_forked_histogram3 (
        .in_buffer_in(in_buffer_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_buffer_out(i_llvm_fpga_forked_histogram_b2_forked_histogram3_out_buffer_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist14_i_llvm_fpga_forked_histogram_b2_forked_histogram3_out_buffer_out_4(DELAY,219)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist14_i_llvm_fpga_forked_histogram_b2_forked_histogram3_out_buffer_out_4_delay_0 <= $unsigned(i_llvm_fpga_forked_histogram_b2_forked_histogram3_out_buffer_out);
            redist14_i_llvm_fpga_forked_histogram_b2_forked_histogram3_out_buffer_out_4_delay_1 <= redist14_i_llvm_fpga_forked_histogram_b2_forked_histogram3_out_buffer_out_4_delay_0;
            redist14_i_llvm_fpga_forked_histogram_b2_forked_histogram3_out_buffer_out_4_delay_2 <= redist14_i_llvm_fpga_forked_histogram_b2_forked_histogram3_out_buffer_out_4_delay_1;
            redist14_i_llvm_fpga_forked_histogram_b2_forked_histogram3_out_buffer_out_4_q <= redist14_i_llvm_fpga_forked_histogram_b2_forked_histogram3_out_buffer_out_4_delay_2;
        end
    end

    // i_llvm_fpga_pop_coalesce_i1_histogram_b2_current_iter_isreal_histogram0_i_llvm_fpga_pop_coalesce_i1_histogram_b2_current_iter_isreal_histogram4_mux_x(MUX,144)@4
    assign i_llvm_fpga_pop_coalesce_i1_histogram_b2_current_iter_isreal_histogram0_i_llvm_fpga_pop_coalesce_i1_histogram_b2_current_iter_isreal_histogram4_mux_x_s = redist14_i_llvm_fpga_forked_histogram_b2_forked_histogram3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_coalesce_i1_histogram_b2_current_iter_isreal_histogram0_i_llvm_fpga_pop_coalesce_i1_histogram_b2_current_iter_isreal_histogram4_mux_x_s or i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram0_adapt_scalar_trunc4_sel_x_b or VCC_q)
    begin
        unique case (i_llvm_fpga_pop_coalesce_i1_histogram_b2_current_iter_isreal_histogram0_i_llvm_fpga_pop_coalesce_i1_histogram_b2_current_iter_isreal_histogram4_mux_x_s)
            1'b0 : i_llvm_fpga_pop_coalesce_i1_histogram_b2_current_iter_isreal_histogram0_i_llvm_fpga_pop_coalesce_i1_histogram_b2_current_iter_isreal_histogram4_mux_x_q = i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_coalesce_i1_histogram_b2_current_iter_isreal_histogram0_i_llvm_fpga_pop_coalesce_i1_histogram_b2_current_iter_isreal_histogram4_mux_x_q = VCC_q;
            default : i_llvm_fpga_pop_coalesce_i1_histogram_b2_current_iter_isreal_histogram0_i_llvm_fpga_pop_coalesce_i1_histogram_b2_current_iter_isreal_histogram4_mux_x_q = 1'b0;
        endcase
    end

    // i_histogram_b2_current_iter_isspec_histogram5(LOGICAL,60)@4
    assign i_histogram_b2_current_iter_isspec_histogram5_q = i_llvm_fpga_pop_coalesce_i1_histogram_b2_current_iter_isreal_histogram0_i_llvm_fpga_pop_coalesce_i1_histogram_b2_current_iter_isreal_histogram4_mux_x_q ^ VCC_q;

    // valid_fanout_reg7(REG,178)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist1_sync_together87_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp95_histogram12(BLACKBOX,75)@4
    histogram_i_llvm_fpga_ffwd_dest_i1_cmp95_0 thei_llvm_fpga_ffwd_dest_i1_cmp95_histogram12 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_cmp95_histogram12_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_histogram13(LOGICAL,85)@4
    assign i_unnamed_histogram13_q = i_llvm_fpga_ffwd_dest_i1_cmp95_histogram12_out_dest_data_out_0_0 ^ VCC_q;

    // i_histogram_b2_current_iter_isspec_or3_histogram20(LOGICAL,61)@4
    assign i_histogram_b2_current_iter_isspec_or3_histogram20_q = i_unnamed_histogram13_q | i_histogram_b2_current_iter_isspec_histogram5_q;

    // c_histogram_feature_pmem(CONSTANT,4)
    assign c_histogram_feature_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx1_histogram0_upper_bits_x_merged_bit_select(BITSELECT,202)@4
    assign i_arrayidx1_histogram0_upper_bits_x_merged_bit_select_b = c_histogram_feature_pmem_q[63:12];
    assign i_arrayidx1_histogram0_upper_bits_x_merged_bit_select_c = c_histogram_feature_pmem_q[11:0];

    // c_i32_076(CONSTANT,41)
    assign c_i32_076_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i32_177(CONSTANT,42)
    assign c_i32_177_q = $unsigned(32'b00000000000000000000000000000001);

    // redist8_i_llvm_fpga_pop_i32_i_010_pop7_histogram0_i_llvm_fpga_pop_i32_i_010_pop7_histogram14_mux_x_q_1(DELAY,213)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_i_llvm_fpga_pop_i32_i_010_pop7_histogram0_i_llvm_fpga_pop_i32_i_010_pop7_histogram14_mux_x_q_1_q <= $unsigned(i_llvm_fpga_pop_i32_i_010_pop7_histogram0_i_llvm_fpga_pop_i32_i_010_pop7_histogram14_mux_x_q);
        end
    end

    // i_inc_histogram30(ADD,72)@5
    assign i_inc_histogram30_a = {1'b0, redist8_i_llvm_fpga_pop_i32_i_010_pop7_histogram0_i_llvm_fpga_pop_i32_i_010_pop7_histogram14_mux_x_q_1_q};
    assign i_inc_histogram30_b = {1'b0, c_i32_177_q};
    assign i_inc_histogram30_o = $unsigned(i_inc_histogram30_a) + $unsigned(i_inc_histogram30_b);
    assign i_inc_histogram30_q = i_inc_histogram30_o[32:0];

    // bgTrunc_i_inc_histogram30_sel_x(BITSELECT,95)@5
    assign bgTrunc_i_inc_histogram30_sel_x_b = i_inc_histogram30_q[31:0];

    // redist11_bgTrunc_i_inc_histogram30_sel_x_b_1(DELAY,216)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist11_bgTrunc_i_inc_histogram30_sel_x_b_1_q <= $unsigned(bgTrunc_i_inc_histogram30_sel_x_b);
        end
    end

    // valid_fanout_reg18(REG,189)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg17(REG,188)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(redist2_sync_together87_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i32_i_010_push7_histogram0_i_llvm_fpga_push_i32_i_010_push7_histogram1_x(FIFODELAY,160)@1 + 5
    // in i_valid@5
    // in i_write_pred@5
    // in i_data@6
    // out o_data@4
    assign i_llvm_fpga_push_i32_i_010_push7_histogram0_i_llvm_fpga_push_i32_i_010_push7_histogram1_x_i_stall = ~ (valid_fanout_reg18_q & i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram0_inv_pred_x_q);
    assign i_llvm_fpga_push_i32_i_010_push7_histogram0_i_llvm_fpga_push_i32_i_010_push7_histogram1_x_i_valid = valid_fanout_reg17_q & redist6_i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram0_inv_pred_x_q_4_q;
    assign i_llvm_fpga_push_i32_i_010_push7_histogram0_i_llvm_fpga_push_i32_i_010_push7_histogram1_x_i_data = redist11_bgTrunc_i_inc_histogram30_sel_x_b_1_q;
    assign i_llvm_fpga_push_i32_i_010_push7_histogram0_i_llvm_fpga_push_i32_i_010_push7_histogram1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_i_010_push7_histogram0_i_llvm_fpga_push_i32_i_010_push7_histogram1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_i_010_push7_histogram0_i_llvm_fpga_push_i32_i_010_push7_histogram1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_i_010_push7_histogram0_i_llvm_fpga_push_i32_i_010_push7_histogram1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(5),
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
    ) thei_llvm_fpga_push_i32_i_010_push7_histogram0_i_llvm_fpga_push_i32_i_010_push7_histogram1_x (
        .i_valid(i_llvm_fpga_push_i32_i_010_push7_histogram0_i_llvm_fpga_push_i32_i_010_push7_histogram1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_i_010_push7_histogram0_i_llvm_fpga_push_i32_i_010_push7_histogram1_x_i_stall_bitsignaltemp),
        .i_data(redist11_bgTrunc_i_inc_histogram30_sel_x_b_1_q),
        .o_data(i_llvm_fpga_push_i32_i_010_push7_histogram0_i_llvm_fpga_push_i32_i_010_push7_histogram1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_010_pop7_histogram0_i_llvm_fpga_pop_i32_i_010_pop7_histogram14_mux_x(MUX,146)@4
    assign i_llvm_fpga_pop_i32_i_010_pop7_histogram0_i_llvm_fpga_pop_i32_i_010_pop7_histogram14_mux_x_s = redist14_i_llvm_fpga_forked_histogram_b2_forked_histogram3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i32_i_010_pop7_histogram0_i_llvm_fpga_pop_i32_i_010_pop7_histogram14_mux_x_s or i_llvm_fpga_push_i32_i_010_push7_histogram0_i_llvm_fpga_push_i32_i_010_push7_histogram1_x_o_data or c_i32_076_q)
    begin
        unique case (i_llvm_fpga_pop_i32_i_010_pop7_histogram0_i_llvm_fpga_pop_i32_i_010_pop7_histogram14_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_i_010_pop7_histogram0_i_llvm_fpga_pop_i32_i_010_pop7_histogram14_mux_x_q = i_llvm_fpga_push_i32_i_010_push7_histogram0_i_llvm_fpga_push_i32_i_010_push7_histogram1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_i_010_pop7_histogram0_i_llvm_fpga_pop_i32_i_010_pop7_histogram14_mux_x_q = c_i32_076_q;
            default : i_llvm_fpga_pop_i32_i_010_pop7_histogram0_i_llvm_fpga_pop_i32_i_010_pop7_histogram14_mux_x_q = 32'b0;
        endcase
    end

    // i_idxprom_histogram15_sel_x(BITSELECT,143)@4
    assign i_idxprom_histogram15_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_i_010_pop7_histogram0_i_llvm_fpga_pop_i32_i_010_pop7_histogram14_mux_x_q[31:0]};

    // i_idxprom_histogram15_vt_select_31(BITSELECT,71)@4
    assign i_idxprom_histogram15_vt_select_31_b = i_idxprom_histogram15_sel_x_b[31:0];

    // i_idxprom_histogram15_vt_join(BITJOIN,70)@4
    assign i_idxprom_histogram15_vt_join_q = {c_i32_076_q, i_idxprom_histogram15_vt_select_31_b};

    // i_arrayidx1_histogram0_dupName_0_trunc_sel_x(BITSELECT,116)@4
    assign i_arrayidx1_histogram0_dupName_0_trunc_sel_x_b = i_idxprom_histogram15_vt_join_q[11:0];

    // i_arrayidx1_histogram0_narrow_x(BITSELECT,109)@4
    assign i_arrayidx1_histogram0_narrow_x_b = i_arrayidx1_histogram0_dupName_0_trunc_sel_x_b[9:0];

    // i_arrayidx1_histogram0_shift_join_x(BITJOIN,110)@4
    assign i_arrayidx1_histogram0_shift_join_x_q = {i_arrayidx1_histogram0_narrow_x_b, i_arrayidx1_histogram16_vt_const_1_q};

    // i_arrayidx1_histogram0_add_x(ADD,106)@4
    assign i_arrayidx1_histogram0_add_x_a = {1'b0, i_arrayidx1_histogram0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx1_histogram0_add_x_b = {1'b0, i_arrayidx1_histogram0_shift_join_x_q};
    assign i_arrayidx1_histogram0_add_x_o = $unsigned(i_arrayidx1_histogram0_add_x_a) + $unsigned(i_arrayidx1_histogram0_add_x_b);
    assign i_arrayidx1_histogram0_add_x_q = i_arrayidx1_histogram0_add_x_o[12:0];

    // i_arrayidx1_histogram0_dupName_2_trunc_sel_x(BITSELECT,117)@4
    assign i_arrayidx1_histogram0_dupName_2_trunc_sel_x_b = i_arrayidx1_histogram0_add_x_q[11:0];

    // i_arrayidx1_histogram0_append_upper_bits_x(BITJOIN,107)@4
    assign i_arrayidx1_histogram0_append_upper_bits_x_q = {i_arrayidx1_histogram0_upper_bits_x_merged_bit_select_b, i_arrayidx1_histogram0_dupName_2_trunc_sel_x_b};

    // i_arrayidx1_histogram16_vt_select_63(BITSELECT,50)@4
    assign i_arrayidx1_histogram16_vt_select_63_b = i_arrayidx1_histogram0_append_upper_bits_x_q[63:2];

    // i_arrayidx1_histogram16_vt_const_1(CONSTANT,48)
    assign i_arrayidx1_histogram16_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx1_histogram16_vt_join(BITJOIN,49)@4
    assign i_arrayidx1_histogram16_vt_join_q = {i_arrayidx1_histogram16_vt_select_63_b, i_arrayidx1_histogram16_vt_const_1_q};

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_mem_lm1_histogram18(BLACKBOX,78)@4
    // out out_lm1_histogram_avm_address@20000000
    // out out_lm1_histogram_avm_burstcount@20000000
    // out out_lm1_histogram_avm_byteenable@20000000
    // out out_lm1_histogram_avm_enable@20000000
    // out out_lm1_histogram_avm_read@20000000
    // out out_lm1_histogram_avm_write@20000000
    // out out_lm1_histogram_avm_writedata@20000000
    // out out_o_almost_empty@8
    // out out_o_empty@8
    // out out_o_readdata@8
    // out out_o_stall@8
    // out out_o_valid@8
    histogram_i_llvm_fpga_mem_lm1_0 thei_llvm_fpga_mem_lm1_histogram18 (
        .in_almost_empty_in(GND_q),
        .in_empty_in(GND_q),
        .in_flush(in_flush),
        .in_i_address(i_arrayidx1_histogram16_vt_join_q),
        .in_i_predicate(i_histogram_b2_current_iter_isspec_or3_histogram20_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg9_q),
        .in_lm1_histogram_avm_readdata(in_lm1_histogram_avm_readdata),
        .in_lm1_histogram_avm_readdatavalid(in_lm1_histogram_avm_readdatavalid),
        .in_lm1_histogram_avm_waitrequest(in_lm1_histogram_avm_waitrequest),
        .in_lm1_histogram_avm_writeack(in_lm1_histogram_avm_writeack),
        .out_lm1_histogram_avm_address(i_llvm_fpga_mem_lm1_histogram18_out_lm1_histogram_avm_address),
        .out_lm1_histogram_avm_burstcount(i_llvm_fpga_mem_lm1_histogram18_out_lm1_histogram_avm_burstcount),
        .out_lm1_histogram_avm_byteenable(i_llvm_fpga_mem_lm1_histogram18_out_lm1_histogram_avm_byteenable),
        .out_lm1_histogram_avm_enable(i_llvm_fpga_mem_lm1_histogram18_out_lm1_histogram_avm_enable),
        .out_lm1_histogram_avm_read(i_llvm_fpga_mem_lm1_histogram18_out_lm1_histogram_avm_read),
        .out_lm1_histogram_avm_write(i_llvm_fpga_mem_lm1_histogram18_out_lm1_histogram_avm_write),
        .out_lm1_histogram_avm_writedata(i_llvm_fpga_mem_lm1_histogram18_out_lm1_histogram_avm_writedata),
        .out_o_almost_empty(),
        .out_o_empty(),
        .out_o_readdata(i_llvm_fpga_mem_lm1_histogram18_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,46)
    assign out_lm1_histogram_avm_address = i_llvm_fpga_mem_lm1_histogram18_out_lm1_histogram_avm_address;
    assign out_lm1_histogram_avm_enable = i_llvm_fpga_mem_lm1_histogram18_out_lm1_histogram_avm_enable;
    assign out_lm1_histogram_avm_read = i_llvm_fpga_mem_lm1_histogram18_out_lm1_histogram_avm_read;
    assign out_lm1_histogram_avm_write = i_llvm_fpga_mem_lm1_histogram18_out_lm1_histogram_avm_write;
    assign out_lm1_histogram_avm_writedata = i_llvm_fpga_mem_lm1_histogram18_out_lm1_histogram_avm_writedata;
    assign out_lm1_histogram_avm_byteenable = i_llvm_fpga_mem_lm1_histogram18_out_lm1_histogram_avm_byteenable;
    assign out_lm1_histogram_avm_burstcount = i_llvm_fpga_mem_lm1_histogram18_out_lm1_histogram_avm_burstcount;

    // regfree_osync(GPOUT,92)
    assign out_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_histogram6_out_exiting_valid_out;

    // valid_fanout_reg10(REG,181)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist2_sync_together87_aunroll_x_in_i_valid_4_q);
        end
    end

    // redist18_i_histogram_b2_current_iter_isspec_or3_histogram20_q_1(DELAY,223)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist18_i_histogram_b2_current_iter_isspec_or3_histogram20_q_1_q <= $unsigned(i_histogram_b2_current_iter_isspec_or3_histogram20_q);
        end
    end

    // c_histogram_weight_pmem(CONSTANT,6)
    assign c_histogram_weight_pmem_q = $unsigned(64'b0100000001000001000000000000000000000000000000000000000000000000);

    // i_arrayidx52_histogram0_upper_bits_x_merged_bit_select(BITSELECT,204)@5
    assign i_arrayidx52_histogram0_upper_bits_x_merged_bit_select_b = c_histogram_weight_pmem_q[63:12];
    assign i_arrayidx52_histogram0_upper_bits_x_merged_bit_select_c = c_histogram_weight_pmem_q[11:0];

    // redist10_i_arrayidx1_histogram0_shift_join_x_q_1(DELAY,215)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_i_arrayidx1_histogram0_shift_join_x_q_1_q <= $unsigned(i_arrayidx1_histogram0_shift_join_x_q);
        end
    end

    // i_arrayidx52_histogram0_add_x(ADD,118)@5
    assign i_arrayidx52_histogram0_add_x_a = {1'b0, i_arrayidx52_histogram0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx52_histogram0_add_x_b = {1'b0, redist10_i_arrayidx1_histogram0_shift_join_x_q_1_q};
    assign i_arrayidx52_histogram0_add_x_o = $unsigned(i_arrayidx52_histogram0_add_x_a) + $unsigned(i_arrayidx52_histogram0_add_x_b);
    assign i_arrayidx52_histogram0_add_x_q = i_arrayidx52_histogram0_add_x_o[12:0];

    // i_arrayidx52_histogram0_dupName_2_trunc_sel_x(BITSELECT,129)@5
    assign i_arrayidx52_histogram0_dupName_2_trunc_sel_x_b = i_arrayidx52_histogram0_add_x_q[11:0];

    // i_arrayidx52_histogram0_append_upper_bits_x(BITJOIN,119)@5
    assign i_arrayidx52_histogram0_append_upper_bits_x_q = {i_arrayidx52_histogram0_upper_bits_x_merged_bit_select_b, i_arrayidx52_histogram0_dupName_2_trunc_sel_x_b};

    // i_arrayidx52_histogram19_vt_select_63(BITSELECT,53)@5
    assign i_arrayidx52_histogram19_vt_select_63_b = i_arrayidx52_histogram0_append_upper_bits_x_q[63:2];

    // i_arrayidx52_histogram19_vt_join(BITJOIN,52)@5
    assign i_arrayidx52_histogram19_vt_join_q = {i_arrayidx52_histogram19_vt_select_63_b, i_arrayidx1_histogram16_vt_const_1_q};

    // i_llvm_fpga_mem_lm52_histogram21(BLACKBOX,79)@5
    // out out_lm52_histogram_avm_address@20000000
    // out out_lm52_histogram_avm_burstcount@20000000
    // out out_lm52_histogram_avm_byteenable@20000000
    // out out_lm52_histogram_avm_enable@20000000
    // out out_lm52_histogram_avm_read@20000000
    // out out_lm52_histogram_avm_write@20000000
    // out out_lm52_histogram_avm_writedata@20000000
    // out out_o_almost_empty@9
    // out out_o_empty@9
    // out out_o_readdata@9
    // out out_o_stall@9
    // out out_o_valid@9
    histogram_i_llvm_fpga_mem_lm52_0 thei_llvm_fpga_mem_lm52_histogram21 (
        .in_almost_empty_in(GND_q),
        .in_empty_in(GND_q),
        .in_flush(in_flush),
        .in_i_address(i_arrayidx52_histogram19_vt_join_q),
        .in_i_predicate(redist18_i_histogram_b2_current_iter_isspec_or3_histogram20_q_1_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg10_q),
        .in_lm52_histogram_avm_readdata(in_lm52_histogram_avm_readdata),
        .in_lm52_histogram_avm_readdatavalid(in_lm52_histogram_avm_readdatavalid),
        .in_lm52_histogram_avm_waitrequest(in_lm52_histogram_avm_waitrequest),
        .in_lm52_histogram_avm_writeack(in_lm52_histogram_avm_writeack),
        .out_lm52_histogram_avm_address(i_llvm_fpga_mem_lm52_histogram21_out_lm52_histogram_avm_address),
        .out_lm52_histogram_avm_burstcount(i_llvm_fpga_mem_lm52_histogram21_out_lm52_histogram_avm_burstcount),
        .out_lm52_histogram_avm_byteenable(i_llvm_fpga_mem_lm52_histogram21_out_lm52_histogram_avm_byteenable),
        .out_lm52_histogram_avm_enable(i_llvm_fpga_mem_lm52_histogram21_out_lm52_histogram_avm_enable),
        .out_lm52_histogram_avm_read(i_llvm_fpga_mem_lm52_histogram21_out_lm52_histogram_avm_read),
        .out_lm52_histogram_avm_write(i_llvm_fpga_mem_lm52_histogram21_out_lm52_histogram_avm_write),
        .out_lm52_histogram_avm_writedata(i_llvm_fpga_mem_lm52_histogram21_out_lm52_histogram_avm_writedata),
        .out_o_almost_empty(),
        .out_o_empty(),
        .out_o_readdata(i_llvm_fpga_mem_lm52_histogram21_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,98)
    assign out_lm52_histogram_avm_address = i_llvm_fpga_mem_lm52_histogram21_out_lm52_histogram_avm_address;
    assign out_lm52_histogram_avm_enable = i_llvm_fpga_mem_lm52_histogram21_out_lm52_histogram_avm_enable;
    assign out_lm52_histogram_avm_read = i_llvm_fpga_mem_lm52_histogram21_out_lm52_histogram_avm_read;
    assign out_lm52_histogram_avm_write = i_llvm_fpga_mem_lm52_histogram21_out_lm52_histogram_avm_write;
    assign out_lm52_histogram_avm_writedata = i_llvm_fpga_mem_lm52_histogram21_out_lm52_histogram_avm_writedata;
    assign out_lm52_histogram_avm_byteenable = i_llvm_fpga_mem_lm52_histogram21_out_lm52_histogram_avm_byteenable;
    assign out_lm52_histogram_avm_burstcount = i_llvm_fpga_mem_lm52_histogram21_out_lm52_histogram_avm_burstcount;

    // dupName_0_regfree_osync_x(GPOUT,99)
    assign out_pipeline_dummy_out = i_llvm_fpga_pipeline_keep_going_histogram6_out_pipeline_dummy_out;

    // redist3_sync_together87_aunroll_x_in_i_valid_7(DELAY,208)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist3_sync_together87_aunroll_x_in_i_valid_7_delay_0 <= '0;
        end
        else
        begin
            redist3_sync_together87_aunroll_x_in_i_valid_7_delay_0 <= $unsigned(redist2_sync_together87_aunroll_x_in_i_valid_4_q);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_sync_together87_aunroll_x_in_i_valid_7_delay_1 <= redist3_sync_together87_aunroll_x_in_i_valid_7_delay_0;
        end
    end
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist3_sync_together87_aunroll_x_in_i_valid_7_q <= '0;
        end
        else
        begin
            redist3_sync_together87_aunroll_x_in_i_valid_7_q <= redist3_sync_together87_aunroll_x_in_i_valid_7_delay_1;
        end
    end

    // valid_fanout_reg12(REG,183)@7 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist3_sync_together87_aunroll_x_in_i_valid_7_q);
        end
    end

    // redist19_i_histogram_b2_current_iter_isspec_or3_histogram20_q_4(DELAY,224)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist19_i_histogram_b2_current_iter_isspec_or3_histogram20_q_4_delay_0 <= $unsigned(redist18_i_histogram_b2_current_iter_isspec_or3_histogram20_q_1_q);
            redist19_i_histogram_b2_current_iter_isspec_or3_histogram20_q_4_delay_1 <= redist19_i_histogram_b2_current_iter_isspec_or3_histogram20_q_4_delay_0;
            redist19_i_histogram_b2_current_iter_isspec_or3_histogram20_q_4_q <= redist19_i_histogram_b2_current_iter_isspec_or3_histogram20_q_4_delay_1;
        end
    end

    // i_add_histogram27(BLACKBOX,47)@9
    // out out_primWireOut@14
    histogram_flt_i_sfc_logic_s_c0_in_for_bo00003a0054c2a6344c246w65 thei_add_histogram27 (
        .in_0(i_llvm_fpga_mem_lm52_histogram21_out_o_readdata),
        .in_1(i_llvm_fpga_mem_lm73_histogram26_out_o_readdata),
        .out_primWireOut(i_add_histogram27_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_sync_together87_aunroll_x_in_i_valid_13(DELAY,209)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("SYNC"), .phase(7), .modulus(2), .reset_high(1'b0) )
    redist4_sync_together87_aunroll_x_in_i_valid_13 ( .xin(redist3_sync_together87_aunroll_x_in_i_valid_7_q), .xout(redist4_sync_together87_aunroll_x_in_i_valid_13_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg13(REG,184)@13 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist4_sync_together87_aunroll_x_in_i_valid_13_q);
        end
    end

    // redist20_i_histogram_b2_current_iter_isspec_or3_histogram20_q_10(DELAY,225)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist20_i_histogram_b2_current_iter_isspec_or3_histogram20_q_10 ( .xin(redist19_i_histogram_b2_current_iter_isspec_or3_histogram20_q_4_q), .xout(redist20_i_histogram_b2_current_iter_isspec_or3_histogram20_q_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist22_i_arrayidx73_histogram23_vt_join_q_6_offset(CONSTANT,232)
    assign redist22_i_arrayidx73_histogram23_vt_join_q_6_offset_q = $unsigned(2'b11);

    // redist22_i_arrayidx73_histogram23_vt_join_q_6_rdcnt(ADD,233)
    assign redist22_i_arrayidx73_histogram23_vt_join_q_6_rdcnt_a = {1'b0, redist22_i_arrayidx73_histogram23_vt_join_q_6_wraddr_q};
    assign redist22_i_arrayidx73_histogram23_vt_join_q_6_rdcnt_b = {1'b0, redist22_i_arrayidx73_histogram23_vt_join_q_6_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist22_i_arrayidx73_histogram23_vt_join_q_6_rdcnt_o <= $unsigned(redist22_i_arrayidx73_histogram23_vt_join_q_6_rdcnt_a) + $unsigned(redist22_i_arrayidx73_histogram23_vt_join_q_6_rdcnt_b);
        end
    end
    assign redist22_i_arrayidx73_histogram23_vt_join_q_6_rdcnt_q = redist22_i_arrayidx73_histogram23_vt_join_q_6_rdcnt_o[2:0];

    // redist22_i_arrayidx73_histogram23_vt_join_q_6_inputreg0(DELAY,228)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist22_i_arrayidx73_histogram23_vt_join_q_6_inputreg0_q <= $unsigned(i_arrayidx73_histogram23_vt_join_q);
        end
    end

    // redist22_i_arrayidx73_histogram23_vt_join_q_6_wraddr(COUNTER,231)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist22_i_arrayidx73_histogram23_vt_join_q_6_wraddr_i <= $unsigned(redist22_i_arrayidx73_histogram23_vt_join_q_6_wraddr_i) + $unsigned(2'd1);
        end
    end
    assign redist22_i_arrayidx73_histogram23_vt_join_q_6_wraddr_q = redist22_i_arrayidx73_histogram23_vt_join_q_6_wraddr_i[1:0];

    // redist22_i_arrayidx73_histogram23_vt_join_q_6_mem(DUALMEM,230)
    assign redist22_i_arrayidx73_histogram23_vt_join_q_6_mem_ia = $unsigned(redist22_i_arrayidx73_histogram23_vt_join_q_6_inputreg0_q);
    assign redist22_i_arrayidx73_histogram23_vt_join_q_6_mem_aa = redist22_i_arrayidx73_histogram23_vt_join_q_6_wraddr_q;
    assign redist22_i_arrayidx73_histogram23_vt_join_q_6_mem_ab = redist22_i_arrayidx73_histogram23_vt_join_q_6_rdcnt_q[1:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(64),
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
    ) redist22_i_arrayidx73_histogram23_vt_join_q_6_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist22_i_arrayidx73_histogram23_vt_join_q_6_mem_aa),
        .data_a(redist22_i_arrayidx73_histogram23_vt_join_q_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist22_i_arrayidx73_histogram23_vt_join_q_6_mem_ab),
        .q_b(redist22_i_arrayidx73_histogram23_vt_join_q_6_mem_iq),
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
    assign redist22_i_arrayidx73_histogram23_vt_join_q_6_mem_q = redist22_i_arrayidx73_histogram23_vt_join_q_6_mem_iq[63:0];

    // redist22_i_arrayidx73_histogram23_vt_join_q_6_outputreg0(DELAY,229)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist22_i_arrayidx73_histogram23_vt_join_q_6_outputreg0_q <= $unsigned(redist22_i_arrayidx73_histogram23_vt_join_q_6_mem_q);
        end
    end

    // i_llvm_fpga_mem_memdep_histogram29(BLACKBOX,81)@14
    // out out_memdep_histogram_avm_address@20000000
    // out out_memdep_histogram_avm_burstcount@20000000
    // out out_memdep_histogram_avm_byteenable@20000000
    // out out_memdep_histogram_avm_enable@20000000
    // out out_memdep_histogram_avm_read@20000000
    // out out_memdep_histogram_avm_write@20000000
    // out out_memdep_histogram_avm_writedata@20000000
    // out out_o_almost_empty@15
    // out out_o_empty@15
    // out out_o_stall@15
    // out out_o_valid@15
    // out out_o_writeack@15
    histogram_i_llvm_fpga_mem_memdep_0 thei_llvm_fpga_mem_memdep_histogram29 (
        .in_almost_empty_in(GND_q),
        .in_empty_in(GND_q),
        .in_flush(in_flush),
        .in_i_address(redist22_i_arrayidx73_histogram23_vt_join_q_6_outputreg0_q),
        .in_i_predicate(redist20_i_histogram_b2_current_iter_isspec_or3_histogram20_q_10_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg13_q),
        .in_i_writedata(i_add_histogram27_out_primWireOut),
        .in_memdep_histogram_avm_readdata(in_memdep_histogram_avm_readdata),
        .in_memdep_histogram_avm_readdatavalid(in_memdep_histogram_avm_readdatavalid),
        .in_memdep_histogram_avm_waitrequest(in_memdep_histogram_avm_waitrequest),
        .in_memdep_histogram_avm_writeack(in_memdep_histogram_avm_writeack),
        .out_memdep_histogram_avm_address(i_llvm_fpga_mem_memdep_histogram29_out_memdep_histogram_avm_address),
        .out_memdep_histogram_avm_burstcount(i_llvm_fpga_mem_memdep_histogram29_out_memdep_histogram_avm_burstcount),
        .out_memdep_histogram_avm_byteenable(i_llvm_fpga_mem_memdep_histogram29_out_memdep_histogram_avm_byteenable),
        .out_memdep_histogram_avm_enable(i_llvm_fpga_mem_memdep_histogram29_out_memdep_histogram_avm_enable),
        .out_memdep_histogram_avm_read(i_llvm_fpga_mem_memdep_histogram29_out_memdep_histogram_avm_read),
        .out_memdep_histogram_avm_write(i_llvm_fpga_mem_memdep_histogram29_out_memdep_histogram_avm_write),
        .out_memdep_histogram_avm_writedata(i_llvm_fpga_mem_memdep_histogram29_out_memdep_histogram_avm_writedata),
        .out_o_almost_empty(),
        .out_o_empty(),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(i_llvm_fpga_mem_memdep_histogram29_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_memdep_phi_push8_histogram0_element_extension2_x(BITJOIN,156)@15
    assign i_llvm_fpga_push_i1_memdep_phi_push8_histogram0_element_extension2_x_q = {i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram0_c_i7_03_x_q, i_llvm_fpga_mem_memdep_histogram29_out_o_writeack};

    // valid_fanout_reg16(REG,187)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist2_sync_together87_aunroll_x_in_i_valid_4_q);
        end
    end

    // redist7_i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram0_inv_pred_x_q_13(DELAY,212)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist7_i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram0_inv_pred_x_q_13 ( .xin(redist6_i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram0_inv_pred_x_q_4_q), .xout(redist7_i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram0_inv_pred_x_q_13_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg15(REG,186)@13 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist4_sync_together87_aunroll_x_in_i_valid_13_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi_push8_histogram0_i_llvm_fpga_push_i1_memdep_phi_push8_histogram1_x(FIFODELAY,157)@5
    // in i_valid@14
    // in i_write_pred@14
    // in i_data@15
    // out o_data@8
    assign i_llvm_fpga_push_i1_memdep_phi_push8_histogram0_i_llvm_fpga_push_i1_memdep_phi_push8_histogram1_x_i_stall = ~ (valid_fanout_reg16_q & redist6_i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram0_inv_pred_x_q_4_q);
    assign i_llvm_fpga_push_i1_memdep_phi_push8_histogram0_i_llvm_fpga_push_i1_memdep_phi_push8_histogram1_x_i_valid = valid_fanout_reg15_q & redist7_i_llvm_fpga_push_i1_histogram_b2_next_iter_isreal_push_histogram0_inv_pred_x_q_13_q;
    assign i_llvm_fpga_push_i1_memdep_phi_push8_histogram0_i_llvm_fpga_push_i1_memdep_phi_push8_histogram1_x_i_data = i_llvm_fpga_push_i1_memdep_phi_push8_histogram0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_memdep_phi_push8_histogram0_i_llvm_fpga_push_i1_memdep_phi_push8_histogram1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi_push8_histogram0_i_llvm_fpga_push_i1_memdep_phi_push8_histogram1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_memdep_phi_push8_histogram0_i_llvm_fpga_push_i1_memdep_phi_push8_histogram1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi_push8_histogram0_i_llvm_fpga_push_i1_memdep_phi_push8_histogram1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_memdep_phi_push8_histogram0_i_llvm_fpga_push_i1_memdep_phi_push8_histogram1_x (
        .i_valid(i_llvm_fpga_push_i1_memdep_phi_push8_histogram0_i_llvm_fpga_push_i1_memdep_phi_push8_histogram1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_memdep_phi_push8_histogram0_i_llvm_fpga_push_i1_memdep_phi_push8_histogram1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_memdep_phi_push8_histogram0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_memdep_phi_push8_histogram0_i_llvm_fpga_push_i1_memdep_phi_push8_histogram1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_memdep_phi_push8_histogram0_adapt_scalar_trunc4_sel_x(BITSELECT,159)@8
    assign i_llvm_fpga_push_i1_memdep_phi_push8_histogram0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_memdep_phi_push8_histogram0_i_llvm_fpga_push_i1_memdep_phi_push8_histogram1_x_o_data[0:0];

    // redist16_i_llvm_fpga_forked_histogram_b2_forked_histogram3_out_buffer_out_8(DELAY,221)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist16_i_llvm_fpga_forked_histogram_b2_forked_histogram3_out_buffer_out_8_delay_0 <= $unsigned(redist15_i_llvm_fpga_forked_histogram_b2_forked_histogram3_out_buffer_out_5_q);
            redist16_i_llvm_fpga_forked_histogram_b2_forked_histogram3_out_buffer_out_8_delay_1 <= redist16_i_llvm_fpga_forked_histogram_b2_forked_histogram3_out_buffer_out_8_delay_0;
            redist16_i_llvm_fpga_forked_histogram_b2_forked_histogram3_out_buffer_out_8_q <= redist16_i_llvm_fpga_forked_histogram_b2_forked_histogram3_out_buffer_out_8_delay_1;
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram0_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram24_mux_x(MUX,145)@8
    assign i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram0_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram24_mux_x_s = redist16_i_llvm_fpga_forked_histogram_b2_forked_histogram3_out_buffer_out_8_q;
    always @(i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram0_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram24_mux_x_s or i_llvm_fpga_push_i1_memdep_phi_push8_histogram0_adapt_scalar_trunc4_sel_x_b or GND_q)
    begin
        unique case (i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram0_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram24_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram0_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram24_mux_x_q = i_llvm_fpga_push_i1_memdep_phi_push8_histogram0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram0_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram24_mux_x_q = GND_q;
            default : i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram0_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram24_mux_x_q = 1'b0;
        endcase
    end

    // c_histogram_hist_pmem(CONSTANT,5)
    assign c_histogram_hist_pmem_q = $unsigned(64'b0100000001000010000000000000000000000000000000000000000000000000);

    // i_arrayidx73_histogram0_upper_bits_x_merged_bit_select(BITSELECT,203)@8
    assign i_arrayidx73_histogram0_upper_bits_x_merged_bit_select_b = c_histogram_hist_pmem_q[63:12];
    assign i_arrayidx73_histogram0_upper_bits_x_merged_bit_select_c = c_histogram_hist_pmem_q[11:0];

    // i_idxprom6_histogram22_sel_x(BITSELECT,142)@8
    assign i_idxprom6_histogram22_sel_x_b = $unsigned({{32{i_llvm_fpga_mem_lm1_histogram18_out_o_readdata[31]}}, i_llvm_fpga_mem_lm1_histogram18_out_o_readdata[31:0]});

    // i_arrayidx73_histogram0_dupName_0_trunc_sel_x(BITSELECT,140)@8
    assign i_arrayidx73_histogram0_dupName_0_trunc_sel_x_b = i_idxprom6_histogram22_sel_x_b[11:0];

    // i_arrayidx73_histogram0_narrow_x(BITSELECT,133)@8
    assign i_arrayidx73_histogram0_narrow_x_b = i_arrayidx73_histogram0_dupName_0_trunc_sel_x_b[9:0];

    // i_arrayidx73_histogram0_shift_join_x(BITJOIN,134)@8
    assign i_arrayidx73_histogram0_shift_join_x_q = {i_arrayidx73_histogram0_narrow_x_b, i_arrayidx1_histogram16_vt_const_1_q};

    // i_arrayidx73_histogram0_add_x(ADD,130)@8
    assign i_arrayidx73_histogram0_add_x_a = {1'b0, i_arrayidx73_histogram0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx73_histogram0_add_x_b = {1'b0, i_arrayidx73_histogram0_shift_join_x_q};
    assign i_arrayidx73_histogram0_add_x_o = $unsigned(i_arrayidx73_histogram0_add_x_a) + $unsigned(i_arrayidx73_histogram0_add_x_b);
    assign i_arrayidx73_histogram0_add_x_q = i_arrayidx73_histogram0_add_x_o[12:0];

    // i_arrayidx73_histogram0_dupName_2_trunc_sel_x(BITSELECT,141)@8
    assign i_arrayidx73_histogram0_dupName_2_trunc_sel_x_b = i_arrayidx73_histogram0_add_x_q[11:0];

    // i_arrayidx73_histogram0_append_upper_bits_x(BITJOIN,131)@8
    assign i_arrayidx73_histogram0_append_upper_bits_x_q = {i_arrayidx73_histogram0_upper_bits_x_merged_bit_select_b, i_arrayidx73_histogram0_dupName_2_trunc_sel_x_b};

    // i_arrayidx73_histogram23_vt_select_63(BITSELECT,56)@8
    assign i_arrayidx73_histogram23_vt_select_63_b = i_arrayidx73_histogram0_append_upper_bits_x_q[63:2];

    // i_arrayidx73_histogram23_vt_join(BITJOIN,55)@8
    assign i_arrayidx73_histogram23_vt_join_q = {i_arrayidx73_histogram23_vt_select_63_b, i_arrayidx1_histogram16_vt_const_1_q};

    // i_llvm_fpga_mem_lm73_histogram26(BLACKBOX,80)@8
    // out out_lm73_histogram_avm_address@20000000
    // out out_lm73_histogram_avm_burstcount@20000000
    // out out_lm73_histogram_avm_byteenable@20000000
    // out out_lm73_histogram_avm_enable@20000000
    // out out_lm73_histogram_avm_read@20000000
    // out out_lm73_histogram_avm_write@20000000
    // out out_lm73_histogram_avm_writedata@20000000
    // out out_o_almost_empty@9
    // out out_o_empty@9
    // out out_o_readdata@9
    // out out_o_stall@9
    // out out_o_valid@9
    histogram_i_llvm_fpga_mem_lm73_0 thei_llvm_fpga_mem_lm73_histogram26 (
        .in_almost_empty_in(GND_q),
        .in_empty_in(GND_q),
        .in_flush(in_flush),
        .in_i_address(i_arrayidx73_histogram23_vt_join_q),
        .in_i_dependence(i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram0_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram24_mux_x_q),
        .in_i_predicate(redist19_i_histogram_b2_current_iter_isspec_or3_histogram20_q_4_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg12_q),
        .in_lm73_histogram_avm_readdata(in_lm73_histogram_avm_readdata),
        .in_lm73_histogram_avm_readdatavalid(in_lm73_histogram_avm_readdatavalid),
        .in_lm73_histogram_avm_waitrequest(in_lm73_histogram_avm_waitrequest),
        .in_lm73_histogram_avm_writeack(in_lm73_histogram_avm_writeack),
        .out_lm73_histogram_avm_address(i_llvm_fpga_mem_lm73_histogram26_out_lm73_histogram_avm_address),
        .out_lm73_histogram_avm_burstcount(i_llvm_fpga_mem_lm73_histogram26_out_lm73_histogram_avm_burstcount),
        .out_lm73_histogram_avm_byteenable(i_llvm_fpga_mem_lm73_histogram26_out_lm73_histogram_avm_byteenable),
        .out_lm73_histogram_avm_enable(i_llvm_fpga_mem_lm73_histogram26_out_lm73_histogram_avm_enable),
        .out_lm73_histogram_avm_read(i_llvm_fpga_mem_lm73_histogram26_out_lm73_histogram_avm_read),
        .out_lm73_histogram_avm_write(i_llvm_fpga_mem_lm73_histogram26_out_lm73_histogram_avm_write),
        .out_lm73_histogram_avm_writedata(i_llvm_fpga_mem_lm73_histogram26_out_lm73_histogram_avm_writedata),
        .out_o_almost_empty(),
        .out_o_empty(),
        .out_o_readdata(i_llvm_fpga_mem_lm73_histogram26_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_ext_sig_sync_out_x(GPOUT,101)
    assign out_lm73_histogram_avm_address = i_llvm_fpga_mem_lm73_histogram26_out_lm73_histogram_avm_address;
    assign out_lm73_histogram_avm_enable = i_llvm_fpga_mem_lm73_histogram26_out_lm73_histogram_avm_enable;
    assign out_lm73_histogram_avm_read = i_llvm_fpga_mem_lm73_histogram26_out_lm73_histogram_avm_read;
    assign out_lm73_histogram_avm_write = i_llvm_fpga_mem_lm73_histogram26_out_lm73_histogram_avm_write;
    assign out_lm73_histogram_avm_writedata = i_llvm_fpga_mem_lm73_histogram26_out_lm73_histogram_avm_writedata;
    assign out_lm73_histogram_avm_byteenable = i_llvm_fpga_mem_lm73_histogram26_out_lm73_histogram_avm_byteenable;
    assign out_lm73_histogram_avm_burstcount = i_llvm_fpga_mem_lm73_histogram26_out_lm73_histogram_avm_burstcount;

    // dupName_1_regfree_osync_x(GPOUT,102)
    assign out_pipeline_forked_out = i_llvm_fpga_pipeline_keep_going_histogram6_out_pipeline_forked_out;

    // dupName_2_ext_sig_sync_out_x(GPOUT,104)
    assign out_memdep_histogram_avm_address = i_llvm_fpga_mem_memdep_histogram29_out_memdep_histogram_avm_address;
    assign out_memdep_histogram_avm_enable = i_llvm_fpga_mem_memdep_histogram29_out_memdep_histogram_avm_enable;
    assign out_memdep_histogram_avm_read = i_llvm_fpga_mem_memdep_histogram29_out_memdep_histogram_avm_read;
    assign out_memdep_histogram_avm_write = i_llvm_fpga_mem_memdep_histogram29_out_memdep_histogram_avm_write;
    assign out_memdep_histogram_avm_writedata = i_llvm_fpga_mem_memdep_histogram29_out_memdep_histogram_avm_writedata;
    assign out_memdep_histogram_avm_byteenable = i_llvm_fpga_mem_memdep_histogram29_out_memdep_histogram_avm_byteenable;
    assign out_memdep_histogram_avm_burstcount = i_llvm_fpga_mem_memdep_histogram29_out_memdep_histogram_avm_burstcount;

    // dupName_2_regfree_osync_x(GPOUT,105)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_histogram6_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,171)@13 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist4_sync_together87_aunroll_x_in_i_valid_13_q);
        end
    end

    // redist0_valid_fanout_reg0_q_1(DELAY,205)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist0_valid_fanout_reg0_q_1_q <= '0;
        end
        else
        begin
            redist0_valid_fanout_reg0_q_1_q <= $unsigned(valid_fanout_reg0_q);
        end
    end

    // redist21_i_histogram_b2_current_iter_isspec_histogram5_q_11(DELAY,226)
    dspba_delay_ver #( .width(1), .depth(11), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist21_i_histogram_b2_current_iter_isspec_histogram5_q_11 ( .xin(i_histogram_b2_current_iter_isspec_histogram5_q), .xout(redist21_i_histogram_b2_current_iter_isspec_histogram5_q_11_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_notcmp_histogram39(LOGICAL,84)@15
    assign i_notcmp_histogram39_q = redist13_i_unnamed_histogram35_q_10_q ^ VCC_q;

    // redist13_i_unnamed_histogram35_q_10(DELAY,218)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist13_i_unnamed_histogram35_q_10 ( .xin(i_unnamed_histogram35_q), .xout(redist13_i_unnamed_histogram35_q_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,169)@15
    assign out_c0_exi2_0_tpl = GND_q;
    assign out_c0_exi2_1_tpl = redist13_i_unnamed_histogram35_q_10_q;
    assign out_c0_exi2_2_tpl = i_notcmp_histogram39_q;
    assign out_histogram_B2_current_iter_isspec = redist21_i_histogram_b2_current_iter_isspec_histogram5_q_11_q;
    assign out_o_valid = redist0_valid_fanout_reg0_q_1_q;

endmodule
