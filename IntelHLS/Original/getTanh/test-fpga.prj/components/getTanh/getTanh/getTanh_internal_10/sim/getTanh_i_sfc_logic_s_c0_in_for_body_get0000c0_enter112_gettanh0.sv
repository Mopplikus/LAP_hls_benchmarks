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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body_gettanhs_c0_enter112_gettanh0
// Created for function/kernel getTanh
// SystemVerilog created on Tue Apr 25 16:39:38 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module getTanh_i_sfc_logic_s_c0_in_for_body_get0000c0_enter112_gettanh0 (
    input wire [31:0] in_unnamed_getTanh5_getTanh_avm_readdata,
    input wire [0:0] in_unnamed_getTanh5_getTanh_avm_writeack,
    input wire [0:0] in_unnamed_getTanh5_getTanh_avm_waitrequest,
    input wire [0:0] in_unnamed_getTanh5_getTanh_avm_readdatavalid,
    output wire [31:0] out_unnamed_getTanh5_getTanh_avm_address,
    output wire [0:0] out_unnamed_getTanh5_getTanh_avm_enable,
    output wire [0:0] out_unnamed_getTanh5_getTanh_avm_read,
    output wire [0:0] out_unnamed_getTanh5_getTanh_avm_write,
    output wire [31:0] out_unnamed_getTanh5_getTanh_avm_writedata,
    output wire [3:0] out_unnamed_getTanh5_getTanh_avm_byteenable,
    output wire [0:0] out_unnamed_getTanh5_getTanh_avm_burstcount,
    input wire [0:0] in_flush,
    output wire [0:0] out_exiting_valid_out,
    input wire [31:0] in_unnamed_getTanh6_getTanh_avm_readdata,
    input wire [0:0] in_unnamed_getTanh6_getTanh_avm_writeack,
    input wire [0:0] in_unnamed_getTanh6_getTanh_avm_waitrequest,
    input wire [0:0] in_unnamed_getTanh6_getTanh_avm_readdatavalid,
    output wire [31:0] out_unnamed_getTanh6_getTanh_avm_address,
    output wire [0:0] out_unnamed_getTanh6_getTanh_avm_enable,
    output wire [0:0] out_unnamed_getTanh6_getTanh_avm_read,
    output wire [0:0] out_unnamed_getTanh6_getTanh_avm_write,
    output wire [31:0] out_unnamed_getTanh6_getTanh_avm_writedata,
    output wire [3:0] out_unnamed_getTanh6_getTanh_avm_byteenable,
    output wire [0:0] out_unnamed_getTanh6_getTanh_avm_burstcount,
    output wire [31:0] out_intel_reserved_ffwd_0_0,
    input wire [31:0] in_memdep_getTanh_avm_readdata,
    input wire [0:0] in_memdep_getTanh_avm_writeack,
    input wire [0:0] in_memdep_getTanh_avm_waitrequest,
    input wire [0:0] in_memdep_getTanh_avm_readdatavalid,
    output wire [31:0] out_memdep_getTanh_avm_address,
    output wire [0:0] out_memdep_getTanh_avm_enable,
    output wire [0:0] out_memdep_getTanh_avm_read,
    output wire [0:0] out_memdep_getTanh_avm_write,
    output wire [31:0] out_memdep_getTanh_avm_writedata,
    output wire [3:0] out_memdep_getTanh_avm_byteenable,
    output wire [0:0] out_memdep_getTanh_avm_burstcount,
    output wire [0:0] out_pipeline_dummy_out,
    output wire [0:0] out_pipeline_forked_out,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_c0_exi2_0_tpl,
    output wire [0:0] out_c0_exi2_1_tpl,
    output wire [0:0] out_c0_exi2_2_tpl,
    output wire [0:0] out_getTanh_B3_current_iter_isspec,
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
    wire [31:0] c_float_0x400DA35A4000000068_q;
    wire [31:0] c_float_0x403386186000000067_q;
    wire [31:0] c_float_1_000000e_0066_q;
    wire [63:0] c_getTanh_A_pmem_q;
    wire [63:0] c_getTanh_addr_pmem_q;
    wire [10:0] c_i11_172_q;
    wire [10:0] c_i11_99870_q;
    wire [31:0] c_i32_065_q;
    wire [31:0] c_i32_169_q;
    wire [0:0] i_acl_gettanh22_s;
    reg [31:0] i_acl_gettanh22_q;
    wire [1:0] i_arrayidx1_gettanh11_vt_const_1_q;
    wire [63:0] i_arrayidx1_gettanh11_vt_join_q;
    wire [61:0] i_arrayidx1_gettanh11_vt_select_63_b;
    wire [63:0] i_arrayidx42_gettanh14_vt_join_q;
    wire [61:0] i_arrayidx42_gettanh14_vt_select_63_b;
    wire [11:0] i_fpga_indvars_iv_next_gettanh32_a;
    wire [11:0] i_fpga_indvars_iv_next_gettanh32_b;
    logic [11:0] i_fpga_indvars_iv_next_gettanh32_o;
    wire [11:0] i_fpga_indvars_iv_next_gettanh32_q;
    wire [0:0] i_gettanh_b3_current_iter_isspec_gettanh5_q;
    wire [0:0] i_gettanh_b3_next_iter_isreal_gettanh7_q;
    wire [63:0] i_idxprom_gettanh10_vt_join_q;
    wire [31:0] i_idxprom_gettanh10_vt_select_31_b;
    wire [32:0] i_inc_gettanh24_a;
    wire [32:0] i_inc_gettanh24_b;
    logic [32:0] i_inc_gettanh24_o;
    wire [32:0] i_inc_gettanh24_q;
    wire [0:0] i_llvm_fpga_dummy_thread_gettanh_b3_dummy_gettanh2_out_dummy_out;
    wire [31:0] i_llvm_fpga_ffwd_source_f32_unnamed_gettanh7_gettanh34_out_intel_reserved_ffwd_0_0;
    wire [0:0] i_llvm_fpga_forked_gettanh_b3_forked_gettanh3_out_buffer_out;
    wire [31:0] i_llvm_fpga_fp_multadd_mult_add6_gettanh20_out_primWireOut;
    wire [31:0] i_llvm_fpga_fp_multadd_mult_add_gettanh18_out_primWireOut;
    wire [31:0] i_llvm_fpga_mem_memdep_gettanh23_out_memdep_getTanh_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_gettanh23_out_memdep_getTanh_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_gettanh23_out_memdep_getTanh_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_gettanh23_out_memdep_getTanh_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_gettanh23_out_memdep_getTanh_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_gettanh23_out_memdep_getTanh_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_gettanh23_out_memdep_getTanh_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_gettanh23_out_o_writeack;
    wire [31:0] i_llvm_fpga_mem_unnamed_gettanh5_gettanh12_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_gettanh5_gettanh12_out_unnamed_getTanh5_getTanh_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_gettanh5_gettanh12_out_unnamed_getTanh5_getTanh_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_gettanh5_gettanh12_out_unnamed_getTanh5_getTanh_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_gettanh5_gettanh12_out_unnamed_getTanh5_getTanh_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_gettanh5_gettanh12_out_unnamed_getTanh5_getTanh_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_gettanh5_gettanh12_out_unnamed_getTanh5_getTanh_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_gettanh5_gettanh12_out_unnamed_getTanh5_getTanh_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_unnamed_getTanh6_getTanh_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_unnamed_getTanh6_getTanh_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_unnamed_getTanh6_getTanh_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_unnamed_getTanh6_getTanh_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_unnamed_getTanh6_getTanh_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_unnamed_getTanh6_getTanh_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_unnamed_getTanh6_getTanh_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_gettanh6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_gettanh6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_gettanh6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_gettanh6_out_pipeline_dummy_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_gettanh6_out_pipeline_forked_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_gettanh6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_gettanh31_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_gettanh31_out_feedback_valid_out_3;
    wire [31:0] i_mul6_gettanh19_out_primWireOut;
    wire [31:0] i_mul9_gettanh21_out_primWireOut;
    wire [0:0] i_notcmp_gettanh30_q;
    wire [10:0] bgTrunc_i_fpga_indvars_iv_next_gettanh32_sel_x_b;
    wire [31:0] bgTrunc_i_inc_gettanh24_sel_x_b;
    wire [12:0] i_arrayidx1_gettanh0_add_x_a;
    wire [12:0] i_arrayidx1_gettanh0_add_x_b;
    logic [12:0] i_arrayidx1_gettanh0_add_x_o;
    wire [12:0] i_arrayidx1_gettanh0_add_x_q;
    wire [63:0] i_arrayidx1_gettanh0_append_upper_bits_x_q;
    wire [9:0] i_arrayidx1_gettanh0_narrow_x_b;
    wire [11:0] i_arrayidx1_gettanh0_shift_join_x_q;
    wire [11:0] i_arrayidx1_gettanh0_dupName_0_trunc_sel_x_b;
    wire [11:0] i_arrayidx1_gettanh0_dupName_2_trunc_sel_x_b;
    wire [12:0] i_arrayidx42_gettanh0_add_x_a;
    wire [12:0] i_arrayidx42_gettanh0_add_x_b;
    logic [12:0] i_arrayidx42_gettanh0_add_x_o;
    wire [12:0] i_arrayidx42_gettanh0_add_x_q;
    wire [63:0] i_arrayidx42_gettanh0_append_upper_bits_x_q;
    wire [9:0] i_arrayidx42_gettanh0_narrow_x_b;
    wire [11:0] i_arrayidx42_gettanh0_shift_join_x_q;
    wire [11:0] i_arrayidx42_gettanh0_dupName_0_trunc_sel_x_b;
    wire [11:0] i_arrayidx42_gettanh0_dupName_2_trunc_sel_x_b;
    wire [63:0] i_idxprom3_gettanh13_sel_x_b;
    wire [63:0] i_idxprom_gettanh10_sel_x_b;
    wire [0:0] i_llvm_fpga_pop_coalesce_i1_gettanh_b3_current_iter_isreal_gettanh0_i_llvm_fpga_pop_coalesce_i1_gettanh_b3_current_iter_isreal_gettanh4_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_coalesce_i1_gettanh_b3_current_iter_isreal_gettanh0_i_llvm_fpga_pop_coalesce_i1_gettanh_b3_current_iter_isreal_gettanh4_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh0_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh25_mux_x_s;
    reg [10:0] i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh0_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh25_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh0_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh15_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh0_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh15_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_i_014_pop7_gettanh0_i_llvm_fpga_pop_i32_i_014_pop7_gettanh9_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_i_014_pop7_gettanh0_i_llvm_fpga_pop_i32_i_014_pop7_gettanh9_mux_x_q;
    wire [4:0] i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0_c_i5_03_x_q;
    wire [15:0] i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh1_x_i_valid;
    wire i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh1_x_i_stall;
    wire i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh1_x_i_stall_bitsignaltemp;
    wire [15:0] i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh1_x_i_data;
    wire [15:0] i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0_inv_pred_x_q;
    wire [10:0] i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0_adapt_scalar_trunc4_sel_x_b;
    wire [6:0] i_llvm_fpga_push_i1_gettanh_b3_next_iter_isreal_push_gettanh0_c_i7_03_x_q;
    wire [7:0] i_llvm_fpga_push_i1_gettanh_b3_next_iter_isreal_push_gettanh0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_gettanh_b3_next_iter_isreal_push_gettanh0_i_llvm_fpga_push_i1_gettanh_b3_next_iter_isreal_push_gettanh1_x_i_valid;
    wire i_llvm_fpga_push_i1_gettanh_b3_next_iter_isreal_push_gettanh0_i_llvm_fpga_push_i1_gettanh_b3_next_iter_isreal_push_gettanh1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_gettanh_b3_next_iter_isreal_push_gettanh0_i_llvm_fpga_push_i1_gettanh_b3_next_iter_isreal_push_gettanh1_x_i_stall;
    wire i_llvm_fpga_push_i1_gettanh_b3_next_iter_isreal_push_gettanh0_i_llvm_fpga_push_i1_gettanh_b3_next_iter_isreal_push_gettanh1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_gettanh_b3_next_iter_isreal_push_gettanh0_i_llvm_fpga_push_i1_gettanh_b3_next_iter_isreal_push_gettanh1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_gettanh_b3_next_iter_isreal_push_gettanh0_i_llvm_fpga_push_i1_gettanh_b3_next_iter_isreal_push_gettanh1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_gettanh_b3_next_iter_isreal_push_gettanh0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi_push8_gettanh0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push8_gettanh0_i_llvm_fpga_push_i1_memdep_phi_push8_gettanh1_x_i_valid;
    wire i_llvm_fpga_push_i1_memdep_phi_push8_gettanh0_i_llvm_fpga_push_i1_memdep_phi_push8_gettanh1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push8_gettanh0_i_llvm_fpga_push_i1_memdep_phi_push8_gettanh1_x_i_stall;
    wire i_llvm_fpga_push_i1_memdep_phi_push8_gettanh0_i_llvm_fpga_push_i1_memdep_phi_push8_gettanh1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi_push8_gettanh0_i_llvm_fpga_push_i1_memdep_phi_push8_gettanh1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi_push8_gettanh0_i_llvm_fpga_push_i1_memdep_phi_push8_gettanh1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push8_gettanh0_adapt_scalar_trunc4_sel_x_b;
    wire [0:0] i_llvm_fpga_push_i32_i_014_push7_gettanh0_i_llvm_fpga_push_i32_i_014_push7_gettanh1_x_i_valid;
    wire i_llvm_fpga_push_i32_i_014_push7_gettanh0_i_llvm_fpga_push_i32_i_014_push7_gettanh1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_i_014_push7_gettanh0_i_llvm_fpga_push_i32_i_014_push7_gettanh1_x_i_stall;
    wire i_llvm_fpga_push_i32_i_014_push7_gettanh0_i_llvm_fpga_push_i32_i_014_push7_gettanh1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_i_014_push7_gettanh0_i_llvm_fpga_push_i32_i_014_push7_gettanh1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_i_014_push7_gettanh0_i_llvm_fpga_push_i32_i_014_push7_gettanh1_x_o_data;
    wire [7:0] cstAllOWE_uid147_i_cmp5_gettanh17_q;
    wire [22:0] cstZeroWF_uid148_i_cmp5_gettanh17_q;
    wire [7:0] cstAllZWE_uid149_i_cmp5_gettanh17_q;
    wire [7:0] exp_x_uid150_i_cmp5_gettanh17_b;
    wire [22:0] frac_x_uid151_i_cmp5_gettanh17_b;
    wire [0:0] expXIsZero_uid152_i_cmp5_gettanh17_q;
    wire [0:0] expXIsMax_uid153_i_cmp5_gettanh17_q;
    wire [0:0] fracXIsZero_uid154_i_cmp5_gettanh17_q;
    wire [0:0] fracXIsNotZero_uid155_i_cmp5_gettanh17_q;
    wire [0:0] excZ_x_uid156_i_cmp5_gettanh17_qi;
    reg [0:0] excZ_x_uid156_i_cmp5_gettanh17_q;
    wire [0:0] excN_x_uid158_i_cmp5_gettanh17_qi;
    reg [0:0] excN_x_uid158_i_cmp5_gettanh17_q;
    wire [7:0] exp_y_uid167_i_cmp5_gettanh17_b;
    wire [22:0] frac_y_uid168_i_cmp5_gettanh17_b;
    wire [0:0] expXIsZero_uid169_i_cmp5_gettanh17_q;
    wire [0:0] expXIsMax_uid170_i_cmp5_gettanh17_q;
    wire [0:0] fracXIsZero_uid171_i_cmp5_gettanh17_q;
    wire [0:0] fracXIsNotZero_uid172_i_cmp5_gettanh17_q;
    wire [0:0] excZ_y_uid173_i_cmp5_gettanh17_qi;
    reg [0:0] excZ_y_uid173_i_cmp5_gettanh17_q;
    wire [0:0] excN_y_uid175_i_cmp5_gettanh17_qi;
    reg [0:0] excN_y_uid175_i_cmp5_gettanh17_q;
    wire [0:0] oneIsNaN_uid181_i_cmp5_gettanh17_qi;
    reg [0:0] oneIsNaN_uid181_i_cmp5_gettanh17_q;
    wire [30:0] expFracX_uid186_i_cmp5_gettanh17_q;
    wire [30:0] expFracY_uid188_i_cmp5_gettanh17_q;
    wire [32:0] efxGTefy_uid190_i_cmp5_gettanh17_a;
    wire [32:0] efxGTefy_uid190_i_cmp5_gettanh17_b;
    logic [32:0] efxGTefy_uid190_i_cmp5_gettanh17_o;
    wire [0:0] efxGTefy_uid190_i_cmp5_gettanh17_c;
    wire [32:0] efxLTefy_uid191_i_cmp5_gettanh17_a;
    wire [32:0] efxLTefy_uid191_i_cmp5_gettanh17_b;
    logic [32:0] efxLTefy_uid191_i_cmp5_gettanh17_o;
    wire [0:0] efxLTefy_uid191_i_cmp5_gettanh17_c;
    wire [0:0] signX_uid195_i_cmp5_gettanh17_b;
    wire [0:0] signY_uid196_i_cmp5_gettanh17_b;
    wire [1:0] two_uid197_i_cmp5_gettanh17_q;
    wire [1:0] concSXSY_uid198_i_cmp5_gettanh17_q;
    wire [0:0] sxLTsy_uid199_i_cmp5_gettanh17_q;
    wire [0:0] xorSigns_uid200_i_cmp5_gettanh17_q;
    wire [0:0] sxEQsy_uid201_i_cmp5_gettanh17_q;
    wire [0:0] expFracCompMux_uid202_i_cmp5_gettanh17_s;
    reg [0:0] expFracCompMux_uid202_i_cmp5_gettanh17_q;
    wire [0:0] invExcYZ_uid203_i_cmp5_gettanh17_q;
    wire [0:0] invExcXZ_uid204_i_cmp5_gettanh17_q;
    wire [0:0] oneNonZero_uid205_i_cmp5_gettanh17_q;
    wire [0:0] rc2_uid206_i_cmp5_gettanh17_q;
    wire [0:0] sxEQsyExpFracCompMux_uid207_i_cmp5_gettanh17_q;
    wire [0:0] r_uid208_i_cmp5_gettanh17_qi;
    reg [0:0] r_uid208_i_cmp5_gettanh17_q;
    wire [0:0] rPostExc_uid209_i_cmp5_gettanh17_qi;
    reg [0:0] rPostExc_uid209_i_cmp5_gettanh17_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg6_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg8_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg9_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg11_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg12_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg13_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg14_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg15_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg16_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg17_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg18_q;
    wire [0:0] i_exitcond_gettanh26_cmp_nsign_q;
    wire [51:0] i_arrayidx42_gettanh0_upper_bits_x_merged_bit_select_b;
    wire [11:0] i_arrayidx42_gettanh0_upper_bits_x_merged_bit_select_c;
    wire [51:0] i_arrayidx1_gettanh0_upper_bits_x_merged_bit_select_b;
    wire [11:0] i_arrayidx1_gettanh0_upper_bits_x_merged_bit_select_c;
    reg [0:0] redist0_i_exitcond_gettanh26_cmp_nsign_q_31_q;
    reg [0:0] redist1_valid_fanout_reg0_q_1_q;
    reg [0:0] redist2_rPostExc_uid209_i_cmp5_gettanh17_q_4_q;
    reg [0:0] redist2_rPostExc_uid209_i_cmp5_gettanh17_q_4_delay_0;
    reg [0:0] redist2_rPostExc_uid209_i_cmp5_gettanh17_q_4_delay_1;
    reg [0:0] redist3_sync_together78_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist3_sync_together78_aunroll_x_in_i_valid_2_delay_0;
    reg [0:0] redist4_sync_together78_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist5_sync_together78_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist6_sync_together78_aunroll_x_in_i_valid_7_q;
    reg [0:0] redist6_sync_together78_aunroll_x_in_i_valid_7_delay_0;
    reg [0:0] redist6_sync_together78_aunroll_x_in_i_valid_7_delay_1;
    reg [0:0] redist7_sync_together78_aunroll_x_in_i_valid_33_q;
    reg [0:0] redist8_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0_inv_pred_x_q_2_q;
    reg [0:0] redist8_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0_inv_pred_x_q_2_delay_0;
    reg [0:0] redist9_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0_inv_pred_x_q_3_q;
    reg [0:0] redist10_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0_inv_pred_x_q_4_q;
    reg [0:0] redist11_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0_inv_pred_x_q_33_q;
    reg [31:0] redist12_i_llvm_fpga_pop_i32_i_014_pop7_gettanh0_i_llvm_fpga_pop_i32_i_014_pop7_gettanh9_mux_x_q_1_q;
    reg [10:0] redist13_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh0_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh25_mux_x_q_1_q;
    reg [31:0] redist14_bgTrunc_i_inc_gettanh24_sel_x_b_1_q;
    reg [31:0] redist15_i_mul6_gettanh19_out_primWireOut_1_q;
    reg [31:0] redist19_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_20_q;
    reg [31:0] redist20_i_llvm_fpga_fp_multadd_mult_add_gettanh18_out_primWireOut_1_q;
    reg [31:0] redist21_i_llvm_fpga_fp_multadd_mult_add6_gettanh20_out_primWireOut_1_q;
    reg [0:0] redist22_i_llvm_fpga_forked_gettanh_b3_forked_gettanh3_out_buffer_out_4_q;
    reg [0:0] redist22_i_llvm_fpga_forked_gettanh_b3_forked_gettanh3_out_buffer_out_4_delay_0;
    reg [0:0] redist22_i_llvm_fpga_forked_gettanh_b3_forked_gettanh3_out_buffer_out_4_delay_1;
    reg [0:0] redist22_i_llvm_fpga_forked_gettanh_b3_forked_gettanh3_out_buffer_out_4_delay_2;
    reg [0:0] redist23_i_llvm_fpga_forked_gettanh_b3_forked_gettanh3_out_buffer_out_8_q;
    reg [0:0] redist23_i_llvm_fpga_forked_gettanh_b3_forked_gettanh3_out_buffer_out_8_delay_0;
    reg [0:0] redist23_i_llvm_fpga_forked_gettanh_b3_forked_gettanh3_out_buffer_out_8_delay_1;
    reg [0:0] redist23_i_llvm_fpga_forked_gettanh_b3_forked_gettanh3_out_buffer_out_8_delay_2;
    reg [0:0] redist24_i_llvm_fpga_dummy_thread_gettanh_b3_dummy_gettanh2_out_dummy_out_4_q;
    reg [0:0] redist24_i_llvm_fpga_dummy_thread_gettanh_b3_dummy_gettanh2_out_dummy_out_4_delay_0;
    reg [0:0] redist24_i_llvm_fpga_dummy_thread_gettanh_b3_dummy_gettanh2_out_dummy_out_4_delay_1;
    reg [0:0] redist24_i_llvm_fpga_dummy_thread_gettanh_b3_dummy_gettanh2_out_dummy_out_4_delay_2;
    reg [0:0] redist25_i_gettanh_b3_current_iter_isspec_gettanh5_q_4_q;
    reg [0:0] redist25_i_gettanh_b3_current_iter_isspec_gettanh5_q_4_delay_0;
    reg [0:0] redist25_i_gettanh_b3_current_iter_isspec_gettanh5_q_4_delay_1;
    reg [0:0] redist25_i_gettanh_b3_current_iter_isspec_gettanh5_q_4_delay_2;
    reg [0:0] redist26_i_gettanh_b3_current_iter_isspec_gettanh5_q_30_q;
    reg [0:0] redist27_i_gettanh_b3_current_iter_isspec_gettanh5_q_31_q;
    reg [31:0] redist16_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_7_inputreg0_q;
    reg [31:0] redist16_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_7_outputreg0_q;
    wire redist16_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_7_mem_reset0;
    wire [31:0] redist16_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_7_mem_ia;
    wire [1:0] redist16_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_7_mem_aa;
    wire [1:0] redist16_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_7_mem_ab;
    wire [31:0] redist16_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_7_mem_iq;
    wire [31:0] redist16_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_7_mem_q;
    wire [1:0] redist16_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_7_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [1:0] redist16_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_7_wraddr_i = 2'b11;
    wire [2:0] redist16_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_7_rdcnt_a;
    wire [2:0] redist16_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_7_rdcnt_b;
    logic [2:0] redist16_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_7_rdcnt_o;
    wire [2:0] redist16_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_7_rdcnt_q;
    reg [31:0] redist17_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_13_inputreg0_q;
    reg [31:0] redist17_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_13_outputreg0_q;
    wire redist17_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_13_mem_reset0;
    wire [31:0] redist17_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_13_mem_ia;
    wire [1:0] redist17_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_13_mem_aa;
    wire [1:0] redist17_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_13_mem_ab;
    wire [31:0] redist17_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_13_mem_iq;
    wire [31:0] redist17_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_13_mem_q;
    wire [1:0] redist17_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_13_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [1:0] redist17_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_13_wraddr_i = 2'b11;
    wire [1:0] redist17_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_13_offset_q;
    wire [2:0] redist17_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_13_rdcnt_a;
    wire [2:0] redist17_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_13_rdcnt_b;
    logic [2:0] redist17_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_13_rdcnt_o;
    wire [2:0] redist17_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_13_rdcnt_q;
    reg [31:0] redist18_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_19_inputreg0_q;
    wire redist18_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_19_mem_reset0;
    wire [31:0] redist18_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_19_mem_ia;
    wire [1:0] redist18_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_19_mem_aa;
    wire [1:0] redist18_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_19_mem_ab;
    wire [31:0] redist18_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_19_mem_iq;
    wire [31:0] redist18_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_19_mem_q;
    wire [1:0] redist18_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_19_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [1:0] redist18_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_19_wraddr_i = 2'b11;
    wire [2:0] redist18_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_19_rdcnt_a;
    wire [2:0] redist18_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_19_rdcnt_b;
    logic [2:0] redist18_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_19_rdcnt_o;
    wire [2:0] redist18_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_19_rdcnt_q;
    reg [63:0] redist28_i_arrayidx42_gettanh14_vt_join_q_26_inputreg0_q;
    reg [63:0] redist28_i_arrayidx42_gettanh14_vt_join_q_26_outputreg0_q;
    wire redist28_i_arrayidx42_gettanh14_vt_join_q_26_mem_reset0;
    wire [63:0] redist28_i_arrayidx42_gettanh14_vt_join_q_26_mem_ia;
    wire [4:0] redist28_i_arrayidx42_gettanh14_vt_join_q_26_mem_aa;
    wire [4:0] redist28_i_arrayidx42_gettanh14_vt_join_q_26_mem_ab;
    wire [63:0] redist28_i_arrayidx42_gettanh14_vt_join_q_26_mem_iq;
    wire [63:0] redist28_i_arrayidx42_gettanh14_vt_join_q_26_mem_q;
    wire [4:0] redist28_i_arrayidx42_gettanh14_vt_join_q_26_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [4:0] redist28_i_arrayidx42_gettanh14_vt_join_q_26_wraddr_i = 5'b11111;
    wire [4:0] redist28_i_arrayidx42_gettanh14_vt_join_q_26_offset_q;
    wire [5:0] redist28_i_arrayidx42_gettanh14_vt_join_q_26_rdcnt_a;
    wire [5:0] redist28_i_arrayidx42_gettanh14_vt_join_q_26_rdcnt_b;
    logic [5:0] redist28_i_arrayidx42_gettanh14_vt_join_q_26_rdcnt_o;
    wire [5:0] redist28_i_arrayidx42_gettanh14_vt_join_q_26_rdcnt_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist3_sync_together78_aunroll_x_in_i_valid_2(DELAY,243)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist3_sync_together78_aunroll_x_in_i_valid_2_delay_0 <= '0;
        end
        else
        begin
            redist3_sync_together78_aunroll_x_in_i_valid_2_delay_0 <= $unsigned(in_i_valid);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_sync_together78_aunroll_x_in_i_valid_2_q <= redist3_sync_together78_aunroll_x_in_i_valid_2_delay_0;
        end
    end

    // redist4_sync_together78_aunroll_x_in_i_valid_3(DELAY,244)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist4_sync_together78_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist4_sync_together78_aunroll_x_in_i_valid_3_q <= $unsigned(redist3_sync_together78_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg6(REG,216)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist4_sync_together78_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_gettanh_b3_next_iter_isreal_push_gettanh0_c_i7_03_x(CONSTANT,130)
    assign i_llvm_fpga_push_i1_gettanh_b3_next_iter_isreal_push_gettanh0_c_i7_03_x_q = $unsigned(7'b0000000);

    // valid_fanout_reg2(REG,212)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist4_sync_together78_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg15(REG,225)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist4_sync_together78_aunroll_x_in_i_valid_3_q);
        end
    end

    // c_i11_99870(CONSTANT,10)
    assign c_i11_99870_q = $unsigned(11'b01111100110);

    // i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0_c_i5_03_x(CONSTANT,124)
    assign i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0_c_i5_03_x_q = $unsigned(5'b00000);

    // c_i11_172(CONSTANT,9)
    assign c_i11_172_q = $unsigned(11'b11111111111);

    // redist13_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh0_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh25_mux_x_q_1(DELAY,253)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist13_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh0_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh25_mux_x_q_1_q <= $unsigned(i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh0_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh25_mux_x_q);
        end
    end

    // i_fpga_indvars_iv_next_gettanh32(ADD,54)@5
    assign i_fpga_indvars_iv_next_gettanh32_a = {1'b0, redist13_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh0_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh25_mux_x_q_1_q};
    assign i_fpga_indvars_iv_next_gettanh32_b = {1'b0, c_i11_172_q};
    assign i_fpga_indvars_iv_next_gettanh32_o = $unsigned(i_fpga_indvars_iv_next_gettanh32_a) + $unsigned(i_fpga_indvars_iv_next_gettanh32_b);
    assign i_fpga_indvars_iv_next_gettanh32_q = i_fpga_indvars_iv_next_gettanh32_o[11:0];

    // bgTrunc_i_fpga_indvars_iv_next_gettanh32_sel_x(BITSELECT,82)@5
    assign bgTrunc_i_fpga_indvars_iv_next_gettanh32_sel_x_b = i_fpga_indvars_iv_next_gettanh32_q[10:0];

    // i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0_element_extension2_x(BITJOIN,125)@5
    assign i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0_element_extension2_x_q = {i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0_c_i5_03_x_q, bgTrunc_i_fpga_indvars_iv_next_gettanh32_sel_x_b};

    // valid_fanout_reg17(REG,227)@0 + 1
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

    // redist9_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0_inv_pred_x_q_3(DELAY,249)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist9_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0_inv_pred_x_q_3_q <= $unsigned(redist8_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0_inv_pred_x_q_2_q);
        end
    end

    // valid_fanout_reg16(REG,226)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist4_sync_together78_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh1_x(FIFODELAY,126)@1 + 26
    // in i_valid@4
    // in i_write_pred@4
    // in i_data@5
    // out o_data@4
    assign i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh1_x_i_stall = ~ (valid_fanout_reg17_q & i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0_inv_pred_x_q);
    assign i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh1_x_i_valid = valid_fanout_reg16_q & redist9_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0_inv_pred_x_q_3_q;
    assign i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh1_x_i_data = i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0_element_extension2_x_q;
    assign i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh1_x_i_valid[0];
    assign i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(26),
        .WIDTH(16),
        .STYLE("ms"),
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
    ) thei_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh1_x (
        .i_valid(i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0_adapt_scalar_trunc4_sel_x(BITSELECT,128)@4
    assign i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh1_x_o_data[10:0];

    // i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh0_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh25_mux_x(MUX,120)@4
    assign i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh0_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh25_mux_x_s = redist22_i_llvm_fpga_forked_gettanh_b3_forked_gettanh3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh0_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh25_mux_x_s or i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0_adapt_scalar_trunc4_sel_x_b or c_i11_99870_q)
    begin
        unique case (i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh0_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh25_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh0_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh25_mux_x_q = i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh0_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh25_mux_x_q = c_i11_99870_q;
            default : i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh0_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh25_mux_x_q = 11'b0;
        endcase
    end

    // i_exitcond_gettanh26_cmp_nsign(LOGICAL,237)@4
    assign i_exitcond_gettanh26_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh0_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh25_mux_x_q[10:10]));

    // i_llvm_fpga_push_i1_notexitcond_gettanh31(BLACKBOX,73)@4
    // in in_empty_in@20000000
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    getTanh_i_llvm_fpga_push_i1_notexitcond_gettanh0 thei_llvm_fpga_push_i1_notexitcond_gettanh31 (
        .in_almost_empty_in(GND_q),
        .in_data_in(i_exitcond_gettanh26_cmp_nsign_q),
        .in_empty_in(GND_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_gettanh6_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_gettanh31_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_gettanh31_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_dummy_thread_gettanh_b3_dummy_gettanh2(BLACKBOX,64)@0
    // in in_stall_in@20000000
    getTanh_i_llvm_fpga_dummy_thread_gettanh_b3_dummy_gettanh0 thei_llvm_fpga_dummy_thread_gettanh_b3_dummy_gettanh2 (
        .in_dummy_in(in_dummy_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dummy_out(i_llvm_fpga_dummy_thread_gettanh_b3_dummy_gettanh2_out_dummy_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist24_i_llvm_fpga_dummy_thread_gettanh_b3_dummy_gettanh2_out_dummy_out_4(DELAY,264)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist24_i_llvm_fpga_dummy_thread_gettanh_b3_dummy_gettanh2_out_dummy_out_4_delay_0 <= $unsigned(i_llvm_fpga_dummy_thread_gettanh_b3_dummy_gettanh2_out_dummy_out);
            redist24_i_llvm_fpga_dummy_thread_gettanh_b3_dummy_gettanh2_out_dummy_out_4_delay_1 <= redist24_i_llvm_fpga_dummy_thread_gettanh_b3_dummy_gettanh2_out_dummy_out_4_delay_0;
            redist24_i_llvm_fpga_dummy_thread_gettanh_b3_dummy_gettanh2_out_dummy_out_4_delay_2 <= redist24_i_llvm_fpga_dummy_thread_gettanh_b3_dummy_gettanh2_out_dummy_out_4_delay_1;
            redist24_i_llvm_fpga_dummy_thread_gettanh_b3_dummy_gettanh2_out_dummy_out_4_q <= redist24_i_llvm_fpga_dummy_thread_gettanh_b3_dummy_gettanh2_out_dummy_out_4_delay_2;
        end
    end

    // i_llvm_fpga_pipeline_keep_going_gettanh6(BLACKBOX,72)@4
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_dummy_out@20000000
    // out out_pipeline_forked_out@20000000
    // out out_pipeline_valid_out@20000000
    getTanh_i_llvm_fpga_pipeline_keep_going_gettanh0 thei_llvm_fpga_pipeline_keep_going_gettanh6 (
        .in_data_in(redist22_i_llvm_fpga_forked_gettanh_b3_forked_gettanh3_out_buffer_out_4_q),
        .in_dummy_in(redist24_i_llvm_fpga_dummy_thread_gettanh_b3_dummy_gettanh2_out_dummy_out_4_q),
        .in_forked_in(redist22_i_llvm_fpga_forked_gettanh_b3_forked_gettanh3_out_buffer_out_4_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_gettanh31_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_gettanh31_out_feedback_valid_out_3),
        .in_pipeline_stall_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_gettanh6_out_data_out),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_gettanh6_out_exiting_valid_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_gettanh6_out_not_exitcond_stall_out),
        .out_pipeline_dummy_out(i_llvm_fpga_pipeline_keep_going_gettanh6_out_pipeline_dummy_out),
        .out_pipeline_forked_out(i_llvm_fpga_pipeline_keep_going_gettanh6_out_pipeline_forked_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_gettanh6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_gettanh_b3_next_iter_isreal_gettanh7(LOGICAL,56)@4
    assign i_gettanh_b3_next_iter_isreal_gettanh7_q = i_llvm_fpga_pop_coalesce_i1_gettanh_b3_current_iter_isreal_gettanh0_i_llvm_fpga_pop_coalesce_i1_gettanh_b3_current_iter_isreal_gettanh4_mux_x_q & i_llvm_fpga_pipeline_keep_going_gettanh6_out_data_out;

    // i_llvm_fpga_push_i1_gettanh_b3_next_iter_isreal_push_gettanh0_element_extension2_x(BITJOIN,131)@4
    assign i_llvm_fpga_push_i1_gettanh_b3_next_iter_isreal_push_gettanh0_element_extension2_x_q = {i_llvm_fpga_push_i1_gettanh_b3_next_iter_isreal_push_gettanh0_c_i7_03_x_q, i_gettanh_b3_next_iter_isreal_gettanh7_q};

    // i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0_inv_pred_x(LOGICAL,127)@1
    assign i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0_inv_pred_x_q = ~ (GND_q);

    // valid_fanout_reg4(REG,214)@0 + 1
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

    // redist8_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0_inv_pred_x_q_2(DELAY,248)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0_inv_pred_x_q_2_delay_0 <= $unsigned(i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0_inv_pred_x_q);
            redist8_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0_inv_pred_x_q_2_q <= redist8_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0_inv_pred_x_q_2_delay_0;
        end
    end

    // valid_fanout_reg3(REG,213)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist3_sync_together78_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_gettanh_b3_next_iter_isreal_push_gettanh0_i_llvm_fpga_push_i1_gettanh_b3_next_iter_isreal_push_gettanh1_x(FIFODELAY,132)@1 + 27
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i1_gettanh_b3_next_iter_isreal_push_gettanh0_i_llvm_fpga_push_i1_gettanh_b3_next_iter_isreal_push_gettanh1_x_i_stall = ~ (valid_fanout_reg4_q & i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_gettanh_b3_next_iter_isreal_push_gettanh0_i_llvm_fpga_push_i1_gettanh_b3_next_iter_isreal_push_gettanh1_x_i_valid = valid_fanout_reg3_q & redist8_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i1_gettanh_b3_next_iter_isreal_push_gettanh0_i_llvm_fpga_push_i1_gettanh_b3_next_iter_isreal_push_gettanh1_x_i_data = i_llvm_fpga_push_i1_gettanh_b3_next_iter_isreal_push_gettanh0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_gettanh_b3_next_iter_isreal_push_gettanh0_i_llvm_fpga_push_i1_gettanh_b3_next_iter_isreal_push_gettanh1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_gettanh_b3_next_iter_isreal_push_gettanh0_i_llvm_fpga_push_i1_gettanh_b3_next_iter_isreal_push_gettanh1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_gettanh_b3_next_iter_isreal_push_gettanh0_i_llvm_fpga_push_i1_gettanh_b3_next_iter_isreal_push_gettanh1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_gettanh_b3_next_iter_isreal_push_gettanh0_i_llvm_fpga_push_i1_gettanh_b3_next_iter_isreal_push_gettanh1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(27),
        .WIDTH(8),
        .STYLE("ms"),
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
    ) thei_llvm_fpga_push_i1_gettanh_b3_next_iter_isreal_push_gettanh0_i_llvm_fpga_push_i1_gettanh_b3_next_iter_isreal_push_gettanh1_x (
        .i_valid(i_llvm_fpga_push_i1_gettanh_b3_next_iter_isreal_push_gettanh0_i_llvm_fpga_push_i1_gettanh_b3_next_iter_isreal_push_gettanh1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_gettanh_b3_next_iter_isreal_push_gettanh0_i_llvm_fpga_push_i1_gettanh_b3_next_iter_isreal_push_gettanh1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_gettanh_b3_next_iter_isreal_push_gettanh0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_gettanh_b3_next_iter_isreal_push_gettanh0_i_llvm_fpga_push_i1_gettanh_b3_next_iter_isreal_push_gettanh1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_gettanh_b3_next_iter_isreal_push_gettanh0_adapt_scalar_trunc4_sel_x(BITSELECT,134)@4
    assign i_llvm_fpga_push_i1_gettanh_b3_next_iter_isreal_push_gettanh0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_gettanh_b3_next_iter_isreal_push_gettanh0_i_llvm_fpga_push_i1_gettanh_b3_next_iter_isreal_push_gettanh1_x_o_data[0:0];

    // i_llvm_fpga_forked_gettanh_b3_forked_gettanh3(BLACKBOX,66)@0
    // in in_stall_in@20000000
    getTanh_i_llvm_fpga_forked_gettanh_b3_forked_gettanh0 thei_llvm_fpga_forked_gettanh_b3_forked_gettanh3 (
        .in_buffer_in(in_buffer_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_buffer_out(i_llvm_fpga_forked_gettanh_b3_forked_gettanh3_out_buffer_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist22_i_llvm_fpga_forked_gettanh_b3_forked_gettanh3_out_buffer_out_4(DELAY,262)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist22_i_llvm_fpga_forked_gettanh_b3_forked_gettanh3_out_buffer_out_4_delay_0 <= $unsigned(i_llvm_fpga_forked_gettanh_b3_forked_gettanh3_out_buffer_out);
            redist22_i_llvm_fpga_forked_gettanh_b3_forked_gettanh3_out_buffer_out_4_delay_1 <= redist22_i_llvm_fpga_forked_gettanh_b3_forked_gettanh3_out_buffer_out_4_delay_0;
            redist22_i_llvm_fpga_forked_gettanh_b3_forked_gettanh3_out_buffer_out_4_delay_2 <= redist22_i_llvm_fpga_forked_gettanh_b3_forked_gettanh3_out_buffer_out_4_delay_1;
            redist22_i_llvm_fpga_forked_gettanh_b3_forked_gettanh3_out_buffer_out_4_q <= redist22_i_llvm_fpga_forked_gettanh_b3_forked_gettanh3_out_buffer_out_4_delay_2;
        end
    end

    // i_llvm_fpga_pop_coalesce_i1_gettanh_b3_current_iter_isreal_gettanh0_i_llvm_fpga_pop_coalesce_i1_gettanh_b3_current_iter_isreal_gettanh4_mux_x(MUX,119)@4
    assign i_llvm_fpga_pop_coalesce_i1_gettanh_b3_current_iter_isreal_gettanh0_i_llvm_fpga_pop_coalesce_i1_gettanh_b3_current_iter_isreal_gettanh4_mux_x_s = redist22_i_llvm_fpga_forked_gettanh_b3_forked_gettanh3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_coalesce_i1_gettanh_b3_current_iter_isreal_gettanh0_i_llvm_fpga_pop_coalesce_i1_gettanh_b3_current_iter_isreal_gettanh4_mux_x_s or i_llvm_fpga_push_i1_gettanh_b3_next_iter_isreal_push_gettanh0_adapt_scalar_trunc4_sel_x_b or VCC_q)
    begin
        unique case (i_llvm_fpga_pop_coalesce_i1_gettanh_b3_current_iter_isreal_gettanh0_i_llvm_fpga_pop_coalesce_i1_gettanh_b3_current_iter_isreal_gettanh4_mux_x_s)
            1'b0 : i_llvm_fpga_pop_coalesce_i1_gettanh_b3_current_iter_isreal_gettanh0_i_llvm_fpga_pop_coalesce_i1_gettanh_b3_current_iter_isreal_gettanh4_mux_x_q = i_llvm_fpga_push_i1_gettanh_b3_next_iter_isreal_push_gettanh0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_coalesce_i1_gettanh_b3_current_iter_isreal_gettanh0_i_llvm_fpga_pop_coalesce_i1_gettanh_b3_current_iter_isreal_gettanh4_mux_x_q = VCC_q;
            default : i_llvm_fpga_pop_coalesce_i1_gettanh_b3_current_iter_isreal_gettanh0_i_llvm_fpga_pop_coalesce_i1_gettanh_b3_current_iter_isreal_gettanh4_mux_x_q = 1'b0;
        endcase
    end

    // i_gettanh_b3_current_iter_isspec_gettanh5(LOGICAL,55)@4
    assign i_gettanh_b3_current_iter_isspec_gettanh5_q = i_llvm_fpga_pop_coalesce_i1_gettanh_b3_current_iter_isreal_gettanh0_i_llvm_fpga_pop_coalesce_i1_gettanh_b3_current_iter_isreal_gettanh4_mux_x_q ^ VCC_q;

    // c_getTanh_addr_pmem(CONSTANT,8)
    assign c_getTanh_addr_pmem_q = $unsigned(64'b0100000001000001000000000000000000000000000000000000000000000000);

    // i_arrayidx1_gettanh0_upper_bits_x_merged_bit_select(BITSELECT,239)@4
    assign i_arrayidx1_gettanh0_upper_bits_x_merged_bit_select_b = c_getTanh_addr_pmem_q[63:12];
    assign i_arrayidx1_gettanh0_upper_bits_x_merged_bit_select_c = c_getTanh_addr_pmem_q[11:0];

    // c_i32_065(CONSTANT,41)
    assign c_i32_065_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i32_169(CONSTANT,42)
    assign c_i32_169_q = $unsigned(32'b00000000000000000000000000000001);

    // redist12_i_llvm_fpga_pop_i32_i_014_pop7_gettanh0_i_llvm_fpga_pop_i32_i_014_pop7_gettanh9_mux_x_q_1(DELAY,252)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist12_i_llvm_fpga_pop_i32_i_014_pop7_gettanh0_i_llvm_fpga_pop_i32_i_014_pop7_gettanh9_mux_x_q_1_q <= $unsigned(i_llvm_fpga_pop_i32_i_014_pop7_gettanh0_i_llvm_fpga_pop_i32_i_014_pop7_gettanh9_mux_x_q);
        end
    end

    // i_inc_gettanh24(ADD,63)@5
    assign i_inc_gettanh24_a = {1'b0, redist12_i_llvm_fpga_pop_i32_i_014_pop7_gettanh0_i_llvm_fpga_pop_i32_i_014_pop7_gettanh9_mux_x_q_1_q};
    assign i_inc_gettanh24_b = {1'b0, c_i32_169_q};
    assign i_inc_gettanh24_o = $unsigned(i_inc_gettanh24_a) + $unsigned(i_inc_gettanh24_b);
    assign i_inc_gettanh24_q = i_inc_gettanh24_o[32:0];

    // bgTrunc_i_inc_gettanh24_sel_x(BITSELECT,83)@5
    assign bgTrunc_i_inc_gettanh24_sel_x_b = i_inc_gettanh24_q[31:0];

    // redist14_bgTrunc_i_inc_gettanh24_sel_x_b_1(DELAY,254)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist14_bgTrunc_i_inc_gettanh24_sel_x_b_1_q <= $unsigned(bgTrunc_i_inc_gettanh24_sel_x_b);
        end
    end

    // valid_fanout_reg14(REG,224)@0 + 1
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

    // redist10_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0_inv_pred_x_q_4(DELAY,250)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0_inv_pred_x_q_4_q <= $unsigned(redist9_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0_inv_pred_x_q_3_q);
        end
    end

    // redist5_sync_together78_aunroll_x_in_i_valid_4(DELAY,245)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_sync_together78_aunroll_x_in_i_valid_4_q <= $unsigned(redist4_sync_together78_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg13(REG,223)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist5_sync_together78_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i32_i_014_push7_gettanh0_i_llvm_fpga_push_i32_i_014_push7_gettanh1_x(FIFODELAY,141)@1 + 25
    // in i_valid@5
    // in i_write_pred@5
    // in i_data@6
    // out o_data@4
    assign i_llvm_fpga_push_i32_i_014_push7_gettanh0_i_llvm_fpga_push_i32_i_014_push7_gettanh1_x_i_stall = ~ (valid_fanout_reg14_q & i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0_inv_pred_x_q);
    assign i_llvm_fpga_push_i32_i_014_push7_gettanh0_i_llvm_fpga_push_i32_i_014_push7_gettanh1_x_i_valid = valid_fanout_reg13_q & redist10_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0_inv_pred_x_q_4_q;
    assign i_llvm_fpga_push_i32_i_014_push7_gettanh0_i_llvm_fpga_push_i32_i_014_push7_gettanh1_x_i_data = redist14_bgTrunc_i_inc_gettanh24_sel_x_b_1_q;
    assign i_llvm_fpga_push_i32_i_014_push7_gettanh0_i_llvm_fpga_push_i32_i_014_push7_gettanh1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_i_014_push7_gettanh0_i_llvm_fpga_push_i32_i_014_push7_gettanh1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_i_014_push7_gettanh0_i_llvm_fpga_push_i32_i_014_push7_gettanh1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_i_014_push7_gettanh0_i_llvm_fpga_push_i32_i_014_push7_gettanh1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(25),
        .WIDTH(32),
        .STYLE("ms"),
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
    ) thei_llvm_fpga_push_i32_i_014_push7_gettanh0_i_llvm_fpga_push_i32_i_014_push7_gettanh1_x (
        .i_valid(i_llvm_fpga_push_i32_i_014_push7_gettanh0_i_llvm_fpga_push_i32_i_014_push7_gettanh1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_i_014_push7_gettanh0_i_llvm_fpga_push_i32_i_014_push7_gettanh1_x_i_stall_bitsignaltemp),
        .i_data(redist14_bgTrunc_i_inc_gettanh24_sel_x_b_1_q),
        .o_data(i_llvm_fpga_push_i32_i_014_push7_gettanh0_i_llvm_fpga_push_i32_i_014_push7_gettanh1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_014_pop7_gettanh0_i_llvm_fpga_pop_i32_i_014_pop7_gettanh9_mux_x(MUX,122)@4
    assign i_llvm_fpga_pop_i32_i_014_pop7_gettanh0_i_llvm_fpga_pop_i32_i_014_pop7_gettanh9_mux_x_s = redist22_i_llvm_fpga_forked_gettanh_b3_forked_gettanh3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i32_i_014_pop7_gettanh0_i_llvm_fpga_pop_i32_i_014_pop7_gettanh9_mux_x_s or i_llvm_fpga_push_i32_i_014_push7_gettanh0_i_llvm_fpga_push_i32_i_014_push7_gettanh1_x_o_data or c_i32_065_q)
    begin
        unique case (i_llvm_fpga_pop_i32_i_014_pop7_gettanh0_i_llvm_fpga_pop_i32_i_014_pop7_gettanh9_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_i_014_pop7_gettanh0_i_llvm_fpga_pop_i32_i_014_pop7_gettanh9_mux_x_q = i_llvm_fpga_push_i32_i_014_push7_gettanh0_i_llvm_fpga_push_i32_i_014_push7_gettanh1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_i_014_pop7_gettanh0_i_llvm_fpga_pop_i32_i_014_pop7_gettanh9_mux_x_q = c_i32_065_q;
            default : i_llvm_fpga_pop_i32_i_014_pop7_gettanh0_i_llvm_fpga_pop_i32_i_014_pop7_gettanh9_mux_x_q = 32'b0;
        endcase
    end

    // i_idxprom_gettanh10_sel_x(BITSELECT,118)@4
    assign i_idxprom_gettanh10_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_i_014_pop7_gettanh0_i_llvm_fpga_pop_i32_i_014_pop7_gettanh9_mux_x_q[31:0]};

    // i_idxprom_gettanh10_vt_select_31(BITSELECT,62)@4
    assign i_idxprom_gettanh10_vt_select_31_b = i_idxprom_gettanh10_sel_x_b[31:0];

    // i_idxprom_gettanh10_vt_join(BITJOIN,61)@4
    assign i_idxprom_gettanh10_vt_join_q = {c_i32_065_q, i_idxprom_gettanh10_vt_select_31_b};

    // i_arrayidx1_gettanh0_dupName_0_trunc_sel_x(BITSELECT,103)@4
    assign i_arrayidx1_gettanh0_dupName_0_trunc_sel_x_b = i_idxprom_gettanh10_vt_join_q[11:0];

    // i_arrayidx1_gettanh0_narrow_x(BITSELECT,96)@4
    assign i_arrayidx1_gettanh0_narrow_x_b = i_arrayidx1_gettanh0_dupName_0_trunc_sel_x_b[9:0];

    // i_arrayidx1_gettanh0_shift_join_x(BITJOIN,97)@4
    assign i_arrayidx1_gettanh0_shift_join_x_q = {i_arrayidx1_gettanh0_narrow_x_b, i_arrayidx1_gettanh11_vt_const_1_q};

    // i_arrayidx1_gettanh0_add_x(ADD,93)@4
    assign i_arrayidx1_gettanh0_add_x_a = {1'b0, i_arrayidx1_gettanh0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx1_gettanh0_add_x_b = {1'b0, i_arrayidx1_gettanh0_shift_join_x_q};
    assign i_arrayidx1_gettanh0_add_x_o = $unsigned(i_arrayidx1_gettanh0_add_x_a) + $unsigned(i_arrayidx1_gettanh0_add_x_b);
    assign i_arrayidx1_gettanh0_add_x_q = i_arrayidx1_gettanh0_add_x_o[12:0];

    // i_arrayidx1_gettanh0_dupName_2_trunc_sel_x(BITSELECT,104)@4
    assign i_arrayidx1_gettanh0_dupName_2_trunc_sel_x_b = i_arrayidx1_gettanh0_add_x_q[11:0];

    // i_arrayidx1_gettanh0_append_upper_bits_x(BITJOIN,94)@4
    assign i_arrayidx1_gettanh0_append_upper_bits_x_q = {i_arrayidx1_gettanh0_upper_bits_x_merged_bit_select_b, i_arrayidx1_gettanh0_dupName_2_trunc_sel_x_b};

    // i_arrayidx1_gettanh11_vt_select_63(BITSELECT,48)@4
    assign i_arrayidx1_gettanh11_vt_select_63_b = i_arrayidx1_gettanh0_append_upper_bits_x_q[63:2];

    // i_arrayidx1_gettanh11_vt_const_1(CONSTANT,46)
    assign i_arrayidx1_gettanh11_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx1_gettanh11_vt_join(BITJOIN,47)@4
    assign i_arrayidx1_gettanh11_vt_join_q = {i_arrayidx1_gettanh11_vt_select_63_b, i_arrayidx1_gettanh11_vt_const_1_q};

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_mem_unnamed_gettanh5_gettanh12(BLACKBOX,70)@4
    // out out_o_almost_empty@8
    // out out_o_empty@8
    // out out_o_readdata@8
    // out out_o_stall@8
    // out out_o_valid@8
    // out out_unnamed_getTanh5_getTanh_avm_address@20000000
    // out out_unnamed_getTanh5_getTanh_avm_burstcount@20000000
    // out out_unnamed_getTanh5_getTanh_avm_byteenable@20000000
    // out out_unnamed_getTanh5_getTanh_avm_enable@20000000
    // out out_unnamed_getTanh5_getTanh_avm_read@20000000
    // out out_unnamed_getTanh5_getTanh_avm_write@20000000
    // out out_unnamed_getTanh5_getTanh_avm_writedata@20000000
    getTanh_i_llvm_fpga_mem_unnamed_gettanh5_gettanh0 thei_llvm_fpga_mem_unnamed_gettanh5_gettanh12 (
        .in_almost_empty_in(GND_q),
        .in_empty_in(GND_q),
        .in_flush(in_flush),
        .in_i_address(i_arrayidx1_gettanh11_vt_join_q),
        .in_i_predicate(i_gettanh_b3_current_iter_isspec_gettanh5_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg6_q),
        .in_unnamed_getTanh5_getTanh_avm_readdata(in_unnamed_getTanh5_getTanh_avm_readdata),
        .in_unnamed_getTanh5_getTanh_avm_readdatavalid(in_unnamed_getTanh5_getTanh_avm_readdatavalid),
        .in_unnamed_getTanh5_getTanh_avm_waitrequest(in_unnamed_getTanh5_getTanh_avm_waitrequest),
        .in_unnamed_getTanh5_getTanh_avm_writeack(in_unnamed_getTanh5_getTanh_avm_writeack),
        .out_o_almost_empty(),
        .out_o_empty(),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_gettanh5_gettanh12_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_getTanh5_getTanh_avm_address(i_llvm_fpga_mem_unnamed_gettanh5_gettanh12_out_unnamed_getTanh5_getTanh_avm_address),
        .out_unnamed_getTanh5_getTanh_avm_burstcount(i_llvm_fpga_mem_unnamed_gettanh5_gettanh12_out_unnamed_getTanh5_getTanh_avm_burstcount),
        .out_unnamed_getTanh5_getTanh_avm_byteenable(i_llvm_fpga_mem_unnamed_gettanh5_gettanh12_out_unnamed_getTanh5_getTanh_avm_byteenable),
        .out_unnamed_getTanh5_getTanh_avm_enable(i_llvm_fpga_mem_unnamed_gettanh5_gettanh12_out_unnamed_getTanh5_getTanh_avm_enable),
        .out_unnamed_getTanh5_getTanh_avm_read(i_llvm_fpga_mem_unnamed_gettanh5_gettanh12_out_unnamed_getTanh5_getTanh_avm_read),
        .out_unnamed_getTanh5_getTanh_avm_write(i_llvm_fpga_mem_unnamed_gettanh5_gettanh12_out_unnamed_getTanh5_getTanh_avm_write),
        .out_unnamed_getTanh5_getTanh_avm_writedata(i_llvm_fpga_mem_unnamed_gettanh5_gettanh12_out_unnamed_getTanh5_getTanh_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,44)
    assign out_unnamed_getTanh5_getTanh_avm_address = i_llvm_fpga_mem_unnamed_gettanh5_gettanh12_out_unnamed_getTanh5_getTanh_avm_address;
    assign out_unnamed_getTanh5_getTanh_avm_enable = i_llvm_fpga_mem_unnamed_gettanh5_gettanh12_out_unnamed_getTanh5_getTanh_avm_enable;
    assign out_unnamed_getTanh5_getTanh_avm_read = i_llvm_fpga_mem_unnamed_gettanh5_gettanh12_out_unnamed_getTanh5_getTanh_avm_read;
    assign out_unnamed_getTanh5_getTanh_avm_write = i_llvm_fpga_mem_unnamed_gettanh5_gettanh12_out_unnamed_getTanh5_getTanh_avm_write;
    assign out_unnamed_getTanh5_getTanh_avm_writedata = i_llvm_fpga_mem_unnamed_gettanh5_gettanh12_out_unnamed_getTanh5_getTanh_avm_writedata;
    assign out_unnamed_getTanh5_getTanh_avm_byteenable = i_llvm_fpga_mem_unnamed_gettanh5_gettanh12_out_unnamed_getTanh5_getTanh_avm_byteenable;
    assign out_unnamed_getTanh5_getTanh_avm_burstcount = i_llvm_fpga_mem_unnamed_gettanh5_gettanh12_out_unnamed_getTanh5_getTanh_avm_burstcount;

    // regfree_osync(GPOUT,80)
    assign out_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_gettanh6_out_exiting_valid_out;

    // redist6_sync_together78_aunroll_x_in_i_valid_7(DELAY,246)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist6_sync_together78_aunroll_x_in_i_valid_7_delay_0 <= '0;
        end
        else
        begin
            redist6_sync_together78_aunroll_x_in_i_valid_7_delay_0 <= $unsigned(redist5_sync_together78_aunroll_x_in_i_valid_4_q);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_sync_together78_aunroll_x_in_i_valid_7_delay_1 <= redist6_sync_together78_aunroll_x_in_i_valid_7_delay_0;
        end
    end
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist6_sync_together78_aunroll_x_in_i_valid_7_q <= '0;
        end
        else
        begin
            redist6_sync_together78_aunroll_x_in_i_valid_7_q <= redist6_sync_together78_aunroll_x_in_i_valid_7_delay_1;
        end
    end

    // valid_fanout_reg8(REG,218)@7 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist6_sync_together78_aunroll_x_in_i_valid_7_q);
        end
    end

    // redist25_i_gettanh_b3_current_iter_isspec_gettanh5_q_4(DELAY,265)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist25_i_gettanh_b3_current_iter_isspec_gettanh5_q_4_delay_0 <= $unsigned(i_gettanh_b3_current_iter_isspec_gettanh5_q);
            redist25_i_gettanh_b3_current_iter_isspec_gettanh5_q_4_delay_1 <= redist25_i_gettanh_b3_current_iter_isspec_gettanh5_q_4_delay_0;
            redist25_i_gettanh_b3_current_iter_isspec_gettanh5_q_4_delay_2 <= redist25_i_gettanh_b3_current_iter_isspec_gettanh5_q_4_delay_1;
            redist25_i_gettanh_b3_current_iter_isspec_gettanh5_q_4_q <= redist25_i_gettanh_b3_current_iter_isspec_gettanh5_q_4_delay_2;
        end
    end

    // c_float_0x400DA35A4000000068(FLOATCONSTANT,4)
    assign c_float_0x400DA35A4000000068_q = $unsigned(32'b01000000011011010001101011010010);

    // c_float_0x403386186000000067(FLOATCONSTANT,5)
    assign c_float_0x403386186000000067_q = $unsigned(32'b01000001100111000011000011000011);

    // i_llvm_fpga_fp_multadd_mult_add_gettanh18(BLACKBOX,68)@9
    // out out_primWireOut@15
    getTanh_flt_i_sfc_logic_s_c0_in_for_body0000xk5id06uq0cp0jv34qcz thei_llvm_fpga_fp_multadd_mult_add_gettanh18 (
        .in_0(i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata),
        .in_1(i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata),
        .in_2(c_float_0x403386186000000067_q),
        .out_primWireOut(i_llvm_fpga_fp_multadd_mult_add_gettanh18_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist20_i_llvm_fpga_fp_multadd_mult_add_gettanh18_out_primWireOut_1(DELAY,260)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist20_i_llvm_fpga_fp_multadd_mult_add_gettanh18_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_fp_multadd_mult_add_gettanh18_out_primWireOut);
        end
    end

    // two_uid197_i_cmp5_gettanh17(CONSTANT,196)
    assign two_uid197_i_cmp5_gettanh17_q = $unsigned(2'b10);

    // redist16_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_7_rdcnt(ADD,274)
    assign redist16_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_7_rdcnt_a = {1'b0, redist16_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_7_wraddr_q};
    assign redist16_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_7_rdcnt_b = {1'b0, two_uid197_i_cmp5_gettanh17_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist16_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_7_rdcnt_o <= $unsigned(redist16_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_7_rdcnt_a) + $unsigned(redist16_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_7_rdcnt_b);
        end
    end
    assign redist16_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_7_rdcnt_q = redist16_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_7_rdcnt_o[2:0];

    // redist16_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_7_inputreg0(DELAY,269)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist16_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_7_inputreg0_q <= $unsigned(i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata);
        end
    end

    // redist16_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_7_wraddr(COUNTER,272)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist16_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_7_wraddr_i <= $unsigned(redist16_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_7_wraddr_i) + $unsigned(2'd1);
        end
    end
    assign redist16_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_7_wraddr_q = redist16_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_7_wraddr_i[1:0];

    // redist16_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_7_mem(DUALMEM,271)
    assign redist16_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_7_mem_ia = $unsigned(redist16_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_7_inputreg0_q);
    assign redist16_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_7_mem_aa = redist16_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_7_wraddr_q;
    assign redist16_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_7_mem_ab = redist16_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_7_rdcnt_q[1:0];
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
    ) redist16_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_7_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist16_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_7_mem_aa),
        .data_a(redist16_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_7_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist16_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_7_mem_ab),
        .q_b(redist16_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_7_mem_iq),
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
    assign redist16_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_7_mem_q = redist16_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_7_mem_iq[31:0];

    // redist16_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_7_outputreg0(DELAY,270)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist16_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_7_outputreg0_q <= $unsigned(redist16_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_7_mem_q);
        end
    end

    // i_mul6_gettanh19(BLACKBOX,74)@16
    // out out_primWireOut@21
    getTanh_flt_i_sfc_logic_s_c0_in_for_body0000b0c2463a0054c2a6355y thei_mul6_gettanh19 (
        .in_0(redist16_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_7_outputreg0_q),
        .in_1(redist20_i_llvm_fpga_fp_multadd_mult_add_gettanh18_out_primWireOut_1_q),
        .out_primWireOut(i_mul6_gettanh19_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist15_i_mul6_gettanh19_out_primWireOut_1(DELAY,255)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist15_i_mul6_gettanh19_out_primWireOut_1_q <= $unsigned(i_mul6_gettanh19_out_primWireOut);
        end
    end

    // redist17_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_13_offset(CONSTANT,279)
    assign redist17_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_13_offset_q = $unsigned(2'b11);

    // redist17_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_13_rdcnt(ADD,280)
    assign redist17_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_13_rdcnt_a = {1'b0, redist17_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_13_wraddr_q};
    assign redist17_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_13_rdcnt_b = {1'b0, redist17_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_13_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist17_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_13_rdcnt_o <= $unsigned(redist17_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_13_rdcnt_a) + $unsigned(redist17_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_13_rdcnt_b);
        end
    end
    assign redist17_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_13_rdcnt_q = redist17_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_13_rdcnt_o[2:0];

    // redist17_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_13_inputreg0(DELAY,275)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist17_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_13_inputreg0_q <= $unsigned(redist16_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_7_outputreg0_q);
        end
    end

    // redist17_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_13_wraddr(COUNTER,278)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist17_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_13_wraddr_i <= $unsigned(redist17_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_13_wraddr_i) + $unsigned(2'd1);
        end
    end
    assign redist17_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_13_wraddr_q = redist17_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_13_wraddr_i[1:0];

    // redist17_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_13_mem(DUALMEM,277)
    assign redist17_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_13_mem_ia = $unsigned(redist17_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_13_inputreg0_q);
    assign redist17_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_13_mem_aa = redist17_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_13_wraddr_q;
    assign redist17_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_13_mem_ab = redist17_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_13_rdcnt_q[1:0];
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
    ) redist17_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_13_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist17_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_13_mem_aa),
        .data_a(redist17_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_13_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist17_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_13_mem_ab),
        .q_b(redist17_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_13_mem_iq),
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
    assign redist17_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_13_mem_q = redist17_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_13_mem_iq[31:0];

    // redist17_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_13_outputreg0(DELAY,276)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist17_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_13_outputreg0_q <= $unsigned(redist17_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_13_mem_q);
        end
    end

    // i_llvm_fpga_fp_multadd_mult_add6_gettanh20(BLACKBOX,67)@22
    // out out_primWireOut@28
    getTanh_flt_i_sfc_logic_s_c0_in_for_body0000xk5id06uq0cp0jv34qcz thei_llvm_fpga_fp_multadd_mult_add6_gettanh20 (
        .in_0(redist17_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_13_outputreg0_q),
        .in_1(redist15_i_mul6_gettanh19_out_primWireOut_1_q),
        .in_2(c_float_0x400DA35A4000000068_q),
        .out_primWireOut(i_llvm_fpga_fp_multadd_mult_add6_gettanh20_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist21_i_llvm_fpga_fp_multadd_mult_add6_gettanh20_out_primWireOut_1(DELAY,261)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist21_i_llvm_fpga_fp_multadd_mult_add6_gettanh20_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_fp_multadd_mult_add6_gettanh20_out_primWireOut);
        end
    end

    // redist18_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_19_rdcnt(ADD,285)
    assign redist18_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_19_rdcnt_a = {1'b0, redist18_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_19_wraddr_q};
    assign redist18_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_19_rdcnt_b = {1'b0, two_uid197_i_cmp5_gettanh17_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist18_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_19_rdcnt_o <= $unsigned(redist18_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_19_rdcnt_a) + $unsigned(redist18_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_19_rdcnt_b);
        end
    end
    assign redist18_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_19_rdcnt_q = redist18_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_19_rdcnt_o[2:0];

    // redist18_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_19_inputreg0(DELAY,281)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist18_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_19_inputreg0_q <= $unsigned(redist17_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_13_outputreg0_q);
        end
    end

    // redist18_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_19_wraddr(COUNTER,283)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist18_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_19_wraddr_i <= $unsigned(redist18_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_19_wraddr_i) + $unsigned(2'd1);
        end
    end
    assign redist18_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_19_wraddr_q = redist18_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_19_wraddr_i[1:0];

    // redist18_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_19_mem(DUALMEM,282)
    assign redist18_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_19_mem_ia = $unsigned(redist18_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_19_inputreg0_q);
    assign redist18_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_19_mem_aa = redist18_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_19_wraddr_q;
    assign redist18_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_19_mem_ab = redist18_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_19_rdcnt_q[1:0];
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
    ) redist18_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_19_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist18_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_19_mem_aa),
        .data_a(redist18_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_19_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist18_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_19_mem_ab),
        .q_b(redist18_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_19_mem_iq),
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
    assign redist18_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_19_mem_q = redist18_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_19_mem_iq[31:0];

    // redist19_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_20(DELAY,259)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist19_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_20_q <= $unsigned(redist18_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_19_mem_q);
        end
    end

    // i_mul9_gettanh21(BLACKBOX,75)@29
    // out out_primWireOut@34
    getTanh_flt_i_sfc_logic_s_c0_in_for_body0000b0c2463a0054c2a6355y thei_mul9_gettanh21 (
        .in_0(redist19_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_20_q),
        .in_1(redist21_i_llvm_fpga_fp_multadd_mult_add6_gettanh20_out_primWireOut_1_q),
        .out_primWireOut(i_mul9_gettanh21_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // c_float_1_000000e_0066(FLOATCONSTANT,6)
    assign c_float_1_000000e_0066_q = $unsigned(32'b00111111100000000000000000000000);

    // frac_y_uid168_i_cmp5_gettanh17(BITSELECT,167)@28
    assign frac_y_uid168_i_cmp5_gettanh17_b = c_float_1_000000e_0066_q[22:0];

    // cstZeroWF_uid148_i_cmp5_gettanh17(CONSTANT,147)
    assign cstZeroWF_uid148_i_cmp5_gettanh17_q = $unsigned(23'b00000000000000000000000);

    // fracXIsZero_uid171_i_cmp5_gettanh17(LOGICAL,170)@28
    assign fracXIsZero_uid171_i_cmp5_gettanh17_q = $unsigned(cstZeroWF_uid148_i_cmp5_gettanh17_q == frac_y_uid168_i_cmp5_gettanh17_b ? 1'b1 : 1'b0);

    // fracXIsNotZero_uid172_i_cmp5_gettanh17(LOGICAL,171)@28
    assign fracXIsNotZero_uid172_i_cmp5_gettanh17_q = ~ (fracXIsZero_uid171_i_cmp5_gettanh17_q);

    // cstAllOWE_uid147_i_cmp5_gettanh17(CONSTANT,146)
    assign cstAllOWE_uid147_i_cmp5_gettanh17_q = $unsigned(8'b11111111);

    // exp_y_uid167_i_cmp5_gettanh17(BITSELECT,166)@28
    assign exp_y_uid167_i_cmp5_gettanh17_b = c_float_1_000000e_0066_q[30:23];

    // expXIsMax_uid170_i_cmp5_gettanh17(LOGICAL,169)@28
    assign expXIsMax_uid170_i_cmp5_gettanh17_q = $unsigned(exp_y_uid167_i_cmp5_gettanh17_b == cstAllOWE_uid147_i_cmp5_gettanh17_q ? 1'b1 : 1'b0);

    // excN_y_uid175_i_cmp5_gettanh17(LOGICAL,174)@28 + 1
    assign excN_y_uid175_i_cmp5_gettanh17_qi = expXIsMax_uid170_i_cmp5_gettanh17_q & fracXIsNotZero_uid172_i_cmp5_gettanh17_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excN_y_uid175_i_cmp5_gettanh17_delay ( .xin(excN_y_uid175_i_cmp5_gettanh17_qi), .xout(excN_y_uid175_i_cmp5_gettanh17_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // frac_x_uid151_i_cmp5_gettanh17(BITSELECT,150)@28
    assign frac_x_uid151_i_cmp5_gettanh17_b = redist18_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_19_mem_q[22:0];

    // fracXIsZero_uid154_i_cmp5_gettanh17(LOGICAL,153)@28
    assign fracXIsZero_uid154_i_cmp5_gettanh17_q = $unsigned(cstZeroWF_uid148_i_cmp5_gettanh17_q == frac_x_uid151_i_cmp5_gettanh17_b ? 1'b1 : 1'b0);

    // fracXIsNotZero_uid155_i_cmp5_gettanh17(LOGICAL,154)@28
    assign fracXIsNotZero_uid155_i_cmp5_gettanh17_q = ~ (fracXIsZero_uid154_i_cmp5_gettanh17_q);

    // exp_x_uid150_i_cmp5_gettanh17(BITSELECT,149)@28
    assign exp_x_uid150_i_cmp5_gettanh17_b = redist18_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_19_mem_q[30:23];

    // expXIsMax_uid153_i_cmp5_gettanh17(LOGICAL,152)@28
    assign expXIsMax_uid153_i_cmp5_gettanh17_q = $unsigned(exp_x_uid150_i_cmp5_gettanh17_b == cstAllOWE_uid147_i_cmp5_gettanh17_q ? 1'b1 : 1'b0);

    // excN_x_uid158_i_cmp5_gettanh17(LOGICAL,157)@28 + 1
    assign excN_x_uid158_i_cmp5_gettanh17_qi = expXIsMax_uid153_i_cmp5_gettanh17_q & fracXIsNotZero_uid155_i_cmp5_gettanh17_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excN_x_uid158_i_cmp5_gettanh17_delay ( .xin(excN_x_uid158_i_cmp5_gettanh17_qi), .xout(excN_x_uid158_i_cmp5_gettanh17_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // oneIsNaN_uid181_i_cmp5_gettanh17(LOGICAL,180)@29 + 1
    assign oneIsNaN_uid181_i_cmp5_gettanh17_qi = excN_x_uid158_i_cmp5_gettanh17_q | excN_y_uid175_i_cmp5_gettanh17_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    oneIsNaN_uid181_i_cmp5_gettanh17_delay ( .xin(oneIsNaN_uid181_i_cmp5_gettanh17_qi), .xout(oneIsNaN_uid181_i_cmp5_gettanh17_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // cstAllZWE_uid149_i_cmp5_gettanh17(CONSTANT,148)
    assign cstAllZWE_uid149_i_cmp5_gettanh17_q = $unsigned(8'b00000000);

    // expXIsZero_uid169_i_cmp5_gettanh17(LOGICAL,168)@28
    assign expXIsZero_uid169_i_cmp5_gettanh17_q = $unsigned(exp_y_uid167_i_cmp5_gettanh17_b == cstAllZWE_uid149_i_cmp5_gettanh17_q ? 1'b1 : 1'b0);

    // excZ_y_uid173_i_cmp5_gettanh17(LOGICAL,172)@28 + 1
    assign excZ_y_uid173_i_cmp5_gettanh17_qi = expXIsZero_uid169_i_cmp5_gettanh17_q & fracXIsZero_uid171_i_cmp5_gettanh17_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excZ_y_uid173_i_cmp5_gettanh17_delay ( .xin(excZ_y_uid173_i_cmp5_gettanh17_qi), .xout(excZ_y_uid173_i_cmp5_gettanh17_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // invExcYZ_uid203_i_cmp5_gettanh17(LOGICAL,202)@29
    assign invExcYZ_uid203_i_cmp5_gettanh17_q = ~ (excZ_y_uid173_i_cmp5_gettanh17_q);

    // expXIsZero_uid152_i_cmp5_gettanh17(LOGICAL,151)@28
    assign expXIsZero_uid152_i_cmp5_gettanh17_q = $unsigned(exp_x_uid150_i_cmp5_gettanh17_b == cstAllZWE_uid149_i_cmp5_gettanh17_q ? 1'b1 : 1'b0);

    // excZ_x_uid156_i_cmp5_gettanh17(LOGICAL,155)@28 + 1
    assign excZ_x_uid156_i_cmp5_gettanh17_qi = expXIsZero_uid152_i_cmp5_gettanh17_q & fracXIsZero_uid154_i_cmp5_gettanh17_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excZ_x_uid156_i_cmp5_gettanh17_delay ( .xin(excZ_x_uid156_i_cmp5_gettanh17_qi), .xout(excZ_x_uid156_i_cmp5_gettanh17_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // invExcXZ_uid204_i_cmp5_gettanh17(LOGICAL,203)@29
    assign invExcXZ_uid204_i_cmp5_gettanh17_q = ~ (excZ_x_uid156_i_cmp5_gettanh17_q);

    // oneNonZero_uid205_i_cmp5_gettanh17(LOGICAL,204)@29
    assign oneNonZero_uid205_i_cmp5_gettanh17_q = invExcXZ_uid204_i_cmp5_gettanh17_q | invExcYZ_uid203_i_cmp5_gettanh17_q;

    // signX_uid195_i_cmp5_gettanh17(BITSELECT,194)@29
    assign signX_uid195_i_cmp5_gettanh17_b = $unsigned(redist19_i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata_20_q[31:31]);

    // signY_uid196_i_cmp5_gettanh17(BITSELECT,195)@29
    assign signY_uid196_i_cmp5_gettanh17_b = $unsigned(c_float_1_000000e_0066_q[31:31]);

    // concSXSY_uid198_i_cmp5_gettanh17(BITJOIN,197)@29
    assign concSXSY_uid198_i_cmp5_gettanh17_q = {signX_uid195_i_cmp5_gettanh17_b, signY_uid196_i_cmp5_gettanh17_b};

    // sxLTsy_uid199_i_cmp5_gettanh17(LOGICAL,198)@29
    assign sxLTsy_uid199_i_cmp5_gettanh17_q = $unsigned(concSXSY_uid198_i_cmp5_gettanh17_q == two_uid197_i_cmp5_gettanh17_q ? 1'b1 : 1'b0);

    // rc2_uid206_i_cmp5_gettanh17(LOGICAL,205)@29
    assign rc2_uid206_i_cmp5_gettanh17_q = sxLTsy_uid199_i_cmp5_gettanh17_q & oneNonZero_uid205_i_cmp5_gettanh17_q;

    // expFracX_uid186_i_cmp5_gettanh17(BITJOIN,185)@28
    assign expFracX_uid186_i_cmp5_gettanh17_q = {exp_x_uid150_i_cmp5_gettanh17_b, frac_x_uid151_i_cmp5_gettanh17_b};

    // expFracY_uid188_i_cmp5_gettanh17(BITJOIN,187)@28
    assign expFracY_uid188_i_cmp5_gettanh17_q = {exp_y_uid167_i_cmp5_gettanh17_b, frac_y_uid168_i_cmp5_gettanh17_b};

    // efxGTefy_uid190_i_cmp5_gettanh17(COMPARE,189)@28 + 1
    assign efxGTefy_uid190_i_cmp5_gettanh17_a = {2'b00, expFracY_uid188_i_cmp5_gettanh17_q};
    assign efxGTefy_uid190_i_cmp5_gettanh17_b = {2'b00, expFracX_uid186_i_cmp5_gettanh17_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            efxGTefy_uid190_i_cmp5_gettanh17_o <= $unsigned(efxGTefy_uid190_i_cmp5_gettanh17_a) - $unsigned(efxGTefy_uid190_i_cmp5_gettanh17_b);
        end
    end
    assign efxGTefy_uid190_i_cmp5_gettanh17_c[0] = efxGTefy_uid190_i_cmp5_gettanh17_o[32];

    // efxLTefy_uid191_i_cmp5_gettanh17(COMPARE,190)@28 + 1
    assign efxLTefy_uid191_i_cmp5_gettanh17_a = {2'b00, expFracX_uid186_i_cmp5_gettanh17_q};
    assign efxLTefy_uid191_i_cmp5_gettanh17_b = {2'b00, expFracY_uid188_i_cmp5_gettanh17_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            efxLTefy_uid191_i_cmp5_gettanh17_o <= $unsigned(efxLTefy_uid191_i_cmp5_gettanh17_a) - $unsigned(efxLTefy_uid191_i_cmp5_gettanh17_b);
        end
    end
    assign efxLTefy_uid191_i_cmp5_gettanh17_c[0] = efxLTefy_uid191_i_cmp5_gettanh17_o[32];

    // expFracCompMux_uid202_i_cmp5_gettanh17(MUX,201)@29
    assign expFracCompMux_uid202_i_cmp5_gettanh17_s = signX_uid195_i_cmp5_gettanh17_b;
    always @(expFracCompMux_uid202_i_cmp5_gettanh17_s or efxLTefy_uid191_i_cmp5_gettanh17_c or efxGTefy_uid190_i_cmp5_gettanh17_c)
    begin
        unique case (expFracCompMux_uid202_i_cmp5_gettanh17_s)
            1'b0 : expFracCompMux_uid202_i_cmp5_gettanh17_q = efxLTefy_uid191_i_cmp5_gettanh17_c;
            1'b1 : expFracCompMux_uid202_i_cmp5_gettanh17_q = efxGTefy_uid190_i_cmp5_gettanh17_c;
            default : expFracCompMux_uid202_i_cmp5_gettanh17_q = 1'b0;
        endcase
    end

    // xorSigns_uid200_i_cmp5_gettanh17(LOGICAL,199)@29
    assign xorSigns_uid200_i_cmp5_gettanh17_q = signX_uid195_i_cmp5_gettanh17_b ^ signY_uid196_i_cmp5_gettanh17_b;

    // sxEQsy_uid201_i_cmp5_gettanh17(LOGICAL,200)@29
    assign sxEQsy_uid201_i_cmp5_gettanh17_q = ~ (xorSigns_uid200_i_cmp5_gettanh17_q);

    // sxEQsyExpFracCompMux_uid207_i_cmp5_gettanh17(LOGICAL,206)@29
    assign sxEQsyExpFracCompMux_uid207_i_cmp5_gettanh17_q = sxEQsy_uid201_i_cmp5_gettanh17_q & expFracCompMux_uid202_i_cmp5_gettanh17_q;

    // r_uid208_i_cmp5_gettanh17(LOGICAL,207)@29 + 1
    assign r_uid208_i_cmp5_gettanh17_qi = sxEQsyExpFracCompMux_uid207_i_cmp5_gettanh17_q | rc2_uid206_i_cmp5_gettanh17_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    r_uid208_i_cmp5_gettanh17_delay ( .xin(r_uid208_i_cmp5_gettanh17_qi), .xout(r_uid208_i_cmp5_gettanh17_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // rPostExc_uid209_i_cmp5_gettanh17(LOGICAL,208)@30 + 1
    assign rPostExc_uid209_i_cmp5_gettanh17_qi = r_uid208_i_cmp5_gettanh17_q | oneIsNaN_uid181_i_cmp5_gettanh17_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    rPostExc_uid209_i_cmp5_gettanh17_delay ( .xin(rPostExc_uid209_i_cmp5_gettanh17_qi), .xout(rPostExc_uid209_i_cmp5_gettanh17_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist2_rPostExc_uid209_i_cmp5_gettanh17_q_4(DELAY,242)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_rPostExc_uid209_i_cmp5_gettanh17_q_4_delay_0 <= $unsigned(rPostExc_uid209_i_cmp5_gettanh17_q);
            redist2_rPostExc_uid209_i_cmp5_gettanh17_q_4_delay_1 <= redist2_rPostExc_uid209_i_cmp5_gettanh17_q_4_delay_0;
            redist2_rPostExc_uid209_i_cmp5_gettanh17_q_4_q <= redist2_rPostExc_uid209_i_cmp5_gettanh17_q_4_delay_1;
        end
    end

    // i_acl_gettanh22(MUX,45)@34
    assign i_acl_gettanh22_s = redist2_rPostExc_uid209_i_cmp5_gettanh17_q_4_q;
    always @(i_acl_gettanh22_s or c_float_1_000000e_0066_q or i_mul9_gettanh21_out_primWireOut)
    begin
        unique case (i_acl_gettanh22_s)
            1'b0 : i_acl_gettanh22_q = c_float_1_000000e_0066_q;
            1'b1 : i_acl_gettanh22_q = i_mul9_gettanh21_out_primWireOut;
            default : i_acl_gettanh22_q = 32'b0;
        endcase
    end

    // redist7_sync_together78_aunroll_x_in_i_valid_33(DELAY,247)
    dspba_delay_ver #( .width(1), .depth(26), .reset_kind("SYNC"), .phase(7), .modulus(2), .reset_high(1'b0) )
    redist7_sync_together78_aunroll_x_in_i_valid_33 ( .xin(redist6_sync_together78_aunroll_x_in_i_valid_7_q), .xout(redist7_sync_together78_aunroll_x_in_i_valid_33_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg9(REG,219)@33 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist7_sync_together78_aunroll_x_in_i_valid_33_q);
        end
    end

    // redist26_i_gettanh_b3_current_iter_isspec_gettanh5_q_30(DELAY,266)
    dspba_delay_ver #( .width(1), .depth(26), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist26_i_gettanh_b3_current_iter_isspec_gettanh5_q_30 ( .xin(redist25_i_gettanh_b3_current_iter_isspec_gettanh5_q_4_q), .xout(redist26_i_gettanh_b3_current_iter_isspec_gettanh5_q_30_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist28_i_arrayidx42_gettanh14_vt_join_q_26_offset(CONSTANT,290)
    assign redist28_i_arrayidx42_gettanh14_vt_join_q_26_offset_q = $unsigned(5'b01011);

    // redist28_i_arrayidx42_gettanh14_vt_join_q_26_rdcnt(ADD,291)
    assign redist28_i_arrayidx42_gettanh14_vt_join_q_26_rdcnt_a = {1'b0, redist28_i_arrayidx42_gettanh14_vt_join_q_26_wraddr_q};
    assign redist28_i_arrayidx42_gettanh14_vt_join_q_26_rdcnt_b = {1'b0, redist28_i_arrayidx42_gettanh14_vt_join_q_26_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist28_i_arrayidx42_gettanh14_vt_join_q_26_rdcnt_o <= $unsigned(redist28_i_arrayidx42_gettanh14_vt_join_q_26_rdcnt_a) + $unsigned(redist28_i_arrayidx42_gettanh14_vt_join_q_26_rdcnt_b);
        end
    end
    assign redist28_i_arrayidx42_gettanh14_vt_join_q_26_rdcnt_q = redist28_i_arrayidx42_gettanh14_vt_join_q_26_rdcnt_o[5:0];

    // redist28_i_arrayidx42_gettanh14_vt_join_q_26_inputreg0(DELAY,286)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist28_i_arrayidx42_gettanh14_vt_join_q_26_inputreg0_q <= $unsigned(i_arrayidx42_gettanh14_vt_join_q);
        end
    end

    // redist28_i_arrayidx42_gettanh14_vt_join_q_26_wraddr(COUNTER,289)
    // low=0, high=31, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist28_i_arrayidx42_gettanh14_vt_join_q_26_wraddr_i <= $unsigned(redist28_i_arrayidx42_gettanh14_vt_join_q_26_wraddr_i) + $unsigned(5'd1);
        end
    end
    assign redist28_i_arrayidx42_gettanh14_vt_join_q_26_wraddr_q = redist28_i_arrayidx42_gettanh14_vt_join_q_26_wraddr_i[4:0];

    // redist28_i_arrayidx42_gettanh14_vt_join_q_26_mem(DUALMEM,288)
    assign redist28_i_arrayidx42_gettanh14_vt_join_q_26_mem_ia = $unsigned(redist28_i_arrayidx42_gettanh14_vt_join_q_26_inputreg0_q);
    assign redist28_i_arrayidx42_gettanh14_vt_join_q_26_mem_aa = redist28_i_arrayidx42_gettanh14_vt_join_q_26_wraddr_q;
    assign redist28_i_arrayidx42_gettanh14_vt_join_q_26_mem_ab = redist28_i_arrayidx42_gettanh14_vt_join_q_26_rdcnt_q[4:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(5),
        .numwords_a(32),
        .width_b(64),
        .widthad_b(5),
        .numwords_b(32),
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
    ) redist28_i_arrayidx42_gettanh14_vt_join_q_26_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist28_i_arrayidx42_gettanh14_vt_join_q_26_mem_aa),
        .data_a(redist28_i_arrayidx42_gettanh14_vt_join_q_26_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist28_i_arrayidx42_gettanh14_vt_join_q_26_mem_ab),
        .q_b(redist28_i_arrayidx42_gettanh14_vt_join_q_26_mem_iq),
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
    assign redist28_i_arrayidx42_gettanh14_vt_join_q_26_mem_q = redist28_i_arrayidx42_gettanh14_vt_join_q_26_mem_iq[63:0];

    // redist28_i_arrayidx42_gettanh14_vt_join_q_26_outputreg0(DELAY,287)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist28_i_arrayidx42_gettanh14_vt_join_q_26_outputreg0_q <= $unsigned(redist28_i_arrayidx42_gettanh14_vt_join_q_26_mem_q);
        end
    end

    // i_llvm_fpga_mem_memdep_gettanh23(BLACKBOX,69)@34
    // out out_memdep_getTanh_avm_address@20000000
    // out out_memdep_getTanh_avm_burstcount@20000000
    // out out_memdep_getTanh_avm_byteenable@20000000
    // out out_memdep_getTanh_avm_enable@20000000
    // out out_memdep_getTanh_avm_read@20000000
    // out out_memdep_getTanh_avm_write@20000000
    // out out_memdep_getTanh_avm_writedata@20000000
    // out out_o_almost_empty@35
    // out out_o_empty@35
    // out out_o_stall@35
    // out out_o_valid@35
    // out out_o_writeack@35
    getTanh_i_llvm_fpga_mem_memdep_gettanh0 thei_llvm_fpga_mem_memdep_gettanh23 (
        .in_almost_empty_in(GND_q),
        .in_empty_in(GND_q),
        .in_flush(in_flush),
        .in_i_address(redist28_i_arrayidx42_gettanh14_vt_join_q_26_outputreg0_q),
        .in_i_predicate(redist26_i_gettanh_b3_current_iter_isspec_gettanh5_q_30_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg9_q),
        .in_i_writedata(i_acl_gettanh22_q),
        .in_memdep_getTanh_avm_readdata(in_memdep_getTanh_avm_readdata),
        .in_memdep_getTanh_avm_readdatavalid(in_memdep_getTanh_avm_readdatavalid),
        .in_memdep_getTanh_avm_waitrequest(in_memdep_getTanh_avm_waitrequest),
        .in_memdep_getTanh_avm_writeack(in_memdep_getTanh_avm_writeack),
        .out_memdep_getTanh_avm_address(i_llvm_fpga_mem_memdep_gettanh23_out_memdep_getTanh_avm_address),
        .out_memdep_getTanh_avm_burstcount(i_llvm_fpga_mem_memdep_gettanh23_out_memdep_getTanh_avm_burstcount),
        .out_memdep_getTanh_avm_byteenable(i_llvm_fpga_mem_memdep_gettanh23_out_memdep_getTanh_avm_byteenable),
        .out_memdep_getTanh_avm_enable(i_llvm_fpga_mem_memdep_gettanh23_out_memdep_getTanh_avm_enable),
        .out_memdep_getTanh_avm_read(i_llvm_fpga_mem_memdep_gettanh23_out_memdep_getTanh_avm_read),
        .out_memdep_getTanh_avm_write(i_llvm_fpga_mem_memdep_gettanh23_out_memdep_getTanh_avm_write),
        .out_memdep_getTanh_avm_writedata(i_llvm_fpga_mem_memdep_gettanh23_out_memdep_getTanh_avm_writedata),
        .out_o_almost_empty(),
        .out_o_empty(),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(i_llvm_fpga_mem_memdep_gettanh23_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_memdep_phi_push8_gettanh0_element_extension2_x(BITJOIN,137)@35
    assign i_llvm_fpga_push_i1_memdep_phi_push8_gettanh0_element_extension2_x_q = {i_llvm_fpga_push_i1_gettanh_b3_next_iter_isreal_push_gettanh0_c_i7_03_x_q, i_llvm_fpga_mem_memdep_gettanh23_out_o_writeack};

    // valid_fanout_reg12(REG,222)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist5_sync_together78_aunroll_x_in_i_valid_4_q);
        end
    end

    // redist11_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0_inv_pred_x_q_33(DELAY,251)
    dspba_delay_ver #( .width(1), .depth(29), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist11_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0_inv_pred_x_q_33 ( .xin(redist10_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0_inv_pred_x_q_4_q), .xout(redist11_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0_inv_pred_x_q_33_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg11(REG,221)@33 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist7_sync_together78_aunroll_x_in_i_valid_33_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi_push8_gettanh0_i_llvm_fpga_push_i1_memdep_phi_push8_gettanh1_x(FIFODELAY,138)@5
    // in i_valid@34
    // in i_write_pred@34
    // in i_data@35
    // out o_data@8
    assign i_llvm_fpga_push_i1_memdep_phi_push8_gettanh0_i_llvm_fpga_push_i1_memdep_phi_push8_gettanh1_x_i_stall = ~ (valid_fanout_reg12_q & redist10_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0_inv_pred_x_q_4_q);
    assign i_llvm_fpga_push_i1_memdep_phi_push8_gettanh0_i_llvm_fpga_push_i1_memdep_phi_push8_gettanh1_x_i_valid = valid_fanout_reg11_q & redist11_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0_inv_pred_x_q_33_q;
    assign i_llvm_fpga_push_i1_memdep_phi_push8_gettanh0_i_llvm_fpga_push_i1_memdep_phi_push8_gettanh1_x_i_data = i_llvm_fpga_push_i1_memdep_phi_push8_gettanh0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_memdep_phi_push8_gettanh0_i_llvm_fpga_push_i1_memdep_phi_push8_gettanh1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi_push8_gettanh0_i_llvm_fpga_push_i1_memdep_phi_push8_gettanh1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_memdep_phi_push8_gettanh0_i_llvm_fpga_push_i1_memdep_phi_push8_gettanh1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi_push8_gettanh0_i_llvm_fpga_push_i1_memdep_phi_push8_gettanh1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_memdep_phi_push8_gettanh0_i_llvm_fpga_push_i1_memdep_phi_push8_gettanh1_x (
        .i_valid(i_llvm_fpga_push_i1_memdep_phi_push8_gettanh0_i_llvm_fpga_push_i1_memdep_phi_push8_gettanh1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_memdep_phi_push8_gettanh0_i_llvm_fpga_push_i1_memdep_phi_push8_gettanh1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_memdep_phi_push8_gettanh0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_memdep_phi_push8_gettanh0_i_llvm_fpga_push_i1_memdep_phi_push8_gettanh1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_memdep_phi_push8_gettanh0_adapt_scalar_trunc4_sel_x(BITSELECT,140)@8
    assign i_llvm_fpga_push_i1_memdep_phi_push8_gettanh0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_memdep_phi_push8_gettanh0_i_llvm_fpga_push_i1_memdep_phi_push8_gettanh1_x_o_data[0:0];

    // redist23_i_llvm_fpga_forked_gettanh_b3_forked_gettanh3_out_buffer_out_8(DELAY,263)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist23_i_llvm_fpga_forked_gettanh_b3_forked_gettanh3_out_buffer_out_8_delay_0 <= $unsigned(redist22_i_llvm_fpga_forked_gettanh_b3_forked_gettanh3_out_buffer_out_4_q);
            redist23_i_llvm_fpga_forked_gettanh_b3_forked_gettanh3_out_buffer_out_8_delay_1 <= redist23_i_llvm_fpga_forked_gettanh_b3_forked_gettanh3_out_buffer_out_8_delay_0;
            redist23_i_llvm_fpga_forked_gettanh_b3_forked_gettanh3_out_buffer_out_8_delay_2 <= redist23_i_llvm_fpga_forked_gettanh_b3_forked_gettanh3_out_buffer_out_8_delay_1;
            redist23_i_llvm_fpga_forked_gettanh_b3_forked_gettanh3_out_buffer_out_8_q <= redist23_i_llvm_fpga_forked_gettanh_b3_forked_gettanh3_out_buffer_out_8_delay_2;
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh0_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh15_mux_x(MUX,121)@8
    assign i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh0_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh15_mux_x_s = redist23_i_llvm_fpga_forked_gettanh_b3_forked_gettanh3_out_buffer_out_8_q;
    always @(i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh0_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh15_mux_x_s or i_llvm_fpga_push_i1_memdep_phi_push8_gettanh0_adapt_scalar_trunc4_sel_x_b or GND_q)
    begin
        unique case (i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh0_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh15_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh0_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh15_mux_x_q = i_llvm_fpga_push_i1_memdep_phi_push8_gettanh0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh0_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh15_mux_x_q = GND_q;
            default : i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh0_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh15_mux_x_q = 1'b0;
        endcase
    end

    // c_getTanh_A_pmem(CONSTANT,7)
    assign c_getTanh_A_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx42_gettanh0_upper_bits_x_merged_bit_select(BITSELECT,238)@8
    assign i_arrayidx42_gettanh0_upper_bits_x_merged_bit_select_b = c_getTanh_A_pmem_q[63:12];
    assign i_arrayidx42_gettanh0_upper_bits_x_merged_bit_select_c = c_getTanh_A_pmem_q[11:0];

    // i_idxprom3_gettanh13_sel_x(BITSELECT,117)@8
    assign i_idxprom3_gettanh13_sel_x_b = $unsigned({{32{i_llvm_fpga_mem_unnamed_gettanh5_gettanh12_out_o_readdata[31]}}, i_llvm_fpga_mem_unnamed_gettanh5_gettanh12_out_o_readdata[31:0]});

    // i_arrayidx42_gettanh0_dupName_0_trunc_sel_x(BITSELECT,115)@8
    assign i_arrayidx42_gettanh0_dupName_0_trunc_sel_x_b = i_idxprom3_gettanh13_sel_x_b[11:0];

    // i_arrayidx42_gettanh0_narrow_x(BITSELECT,108)@8
    assign i_arrayidx42_gettanh0_narrow_x_b = i_arrayidx42_gettanh0_dupName_0_trunc_sel_x_b[9:0];

    // i_arrayidx42_gettanh0_shift_join_x(BITJOIN,109)@8
    assign i_arrayidx42_gettanh0_shift_join_x_q = {i_arrayidx42_gettanh0_narrow_x_b, i_arrayidx1_gettanh11_vt_const_1_q};

    // i_arrayidx42_gettanh0_add_x(ADD,105)@8
    assign i_arrayidx42_gettanh0_add_x_a = {1'b0, i_arrayidx42_gettanh0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx42_gettanh0_add_x_b = {1'b0, i_arrayidx42_gettanh0_shift_join_x_q};
    assign i_arrayidx42_gettanh0_add_x_o = $unsigned(i_arrayidx42_gettanh0_add_x_a) + $unsigned(i_arrayidx42_gettanh0_add_x_b);
    assign i_arrayidx42_gettanh0_add_x_q = i_arrayidx42_gettanh0_add_x_o[12:0];

    // i_arrayidx42_gettanh0_dupName_2_trunc_sel_x(BITSELECT,116)@8
    assign i_arrayidx42_gettanh0_dupName_2_trunc_sel_x_b = i_arrayidx42_gettanh0_add_x_q[11:0];

    // i_arrayidx42_gettanh0_append_upper_bits_x(BITJOIN,106)@8
    assign i_arrayidx42_gettanh0_append_upper_bits_x_q = {i_arrayidx42_gettanh0_upper_bits_x_merged_bit_select_b, i_arrayidx42_gettanh0_dupName_2_trunc_sel_x_b};

    // i_arrayidx42_gettanh14_vt_select_63(BITSELECT,51)@8
    assign i_arrayidx42_gettanh14_vt_select_63_b = i_arrayidx42_gettanh0_append_upper_bits_x_q[63:2];

    // i_arrayidx42_gettanh14_vt_join(BITJOIN,50)@8
    assign i_arrayidx42_gettanh14_vt_join_q = {i_arrayidx42_gettanh14_vt_select_63_b, i_arrayidx1_gettanh11_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_gettanh6_gettanh16(BLACKBOX,71)@8
    // out out_o_almost_empty@9
    // out out_o_empty@9
    // out out_o_readdata@9
    // out out_o_stall@9
    // out out_o_valid@9
    // out out_unnamed_getTanh6_getTanh_avm_address@20000000
    // out out_unnamed_getTanh6_getTanh_avm_burstcount@20000000
    // out out_unnamed_getTanh6_getTanh_avm_byteenable@20000000
    // out out_unnamed_getTanh6_getTanh_avm_enable@20000000
    // out out_unnamed_getTanh6_getTanh_avm_read@20000000
    // out out_unnamed_getTanh6_getTanh_avm_write@20000000
    // out out_unnamed_getTanh6_getTanh_avm_writedata@20000000
    getTanh_i_llvm_fpga_mem_unnamed_gettanh6_gettanh0 thei_llvm_fpga_mem_unnamed_gettanh6_gettanh16 (
        .in_almost_empty_in(GND_q),
        .in_empty_in(GND_q),
        .in_flush(in_flush),
        .in_i_address(i_arrayidx42_gettanh14_vt_join_q),
        .in_i_dependence(i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh0_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh15_mux_x_q),
        .in_i_predicate(redist25_i_gettanh_b3_current_iter_isspec_gettanh5_q_4_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg8_q),
        .in_unnamed_getTanh6_getTanh_avm_readdata(in_unnamed_getTanh6_getTanh_avm_readdata),
        .in_unnamed_getTanh6_getTanh_avm_readdatavalid(in_unnamed_getTanh6_getTanh_avm_readdatavalid),
        .in_unnamed_getTanh6_getTanh_avm_waitrequest(in_unnamed_getTanh6_getTanh_avm_waitrequest),
        .in_unnamed_getTanh6_getTanh_avm_writeack(in_unnamed_getTanh6_getTanh_avm_writeack),
        .out_o_almost_empty(),
        .out_o_empty(),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_getTanh6_getTanh_avm_address(i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_unnamed_getTanh6_getTanh_avm_address),
        .out_unnamed_getTanh6_getTanh_avm_burstcount(i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_unnamed_getTanh6_getTanh_avm_burstcount),
        .out_unnamed_getTanh6_getTanh_avm_byteenable(i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_unnamed_getTanh6_getTanh_avm_byteenable),
        .out_unnamed_getTanh6_getTanh_avm_enable(i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_unnamed_getTanh6_getTanh_avm_enable),
        .out_unnamed_getTanh6_getTanh_avm_read(i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_unnamed_getTanh6_getTanh_avm_read),
        .out_unnamed_getTanh6_getTanh_avm_write(i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_unnamed_getTanh6_getTanh_avm_write),
        .out_unnamed_getTanh6_getTanh_avm_writedata(i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_unnamed_getTanh6_getTanh_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,86)
    assign out_unnamed_getTanh6_getTanh_avm_address = i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_unnamed_getTanh6_getTanh_avm_address;
    assign out_unnamed_getTanh6_getTanh_avm_enable = i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_unnamed_getTanh6_getTanh_avm_enable;
    assign out_unnamed_getTanh6_getTanh_avm_read = i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_unnamed_getTanh6_getTanh_avm_read;
    assign out_unnamed_getTanh6_getTanh_avm_write = i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_unnamed_getTanh6_getTanh_avm_write;
    assign out_unnamed_getTanh6_getTanh_avm_writedata = i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_unnamed_getTanh6_getTanh_avm_writedata;
    assign out_unnamed_getTanh6_getTanh_avm_byteenable = i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_unnamed_getTanh6_getTanh_avm_byteenable;
    assign out_unnamed_getTanh6_getTanh_avm_burstcount = i_llvm_fpga_mem_unnamed_gettanh6_gettanh16_out_unnamed_getTanh6_getTanh_avm_burstcount;

    // valid_fanout_reg18(REG,228)@33 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(redist7_sync_together78_aunroll_x_in_i_valid_33_q);
        end
    end

    // i_llvm_fpga_ffwd_source_f32_unnamed_gettanh7_gettanh34(BLACKBOX,65)@34
    // out out_intel_reserved_ffwd_0_0@20000000
    getTanh_i_llvm_fpga_ffwd_source_f32_unnamed_gettanh7_gettanh0 thei_llvm_fpga_ffwd_source_f32_unnamed_gettanh7_gettanh34 (
        .in_predicate_in(redist26_i_gettanh_b3_current_iter_isspec_gettanh5_q_30_q),
        .in_src_data_in_0_0(i_acl_gettanh22_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_intel_reserved_ffwd_0_0(i_llvm_fpga_ffwd_source_f32_unnamed_gettanh7_gettanh34_out_intel_reserved_ffwd_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,87)
    assign out_intel_reserved_ffwd_0_0 = i_llvm_fpga_ffwd_source_f32_unnamed_gettanh7_gettanh34_out_intel_reserved_ffwd_0_0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,89)
    assign out_memdep_getTanh_avm_address = i_llvm_fpga_mem_memdep_gettanh23_out_memdep_getTanh_avm_address;
    assign out_memdep_getTanh_avm_enable = i_llvm_fpga_mem_memdep_gettanh23_out_memdep_getTanh_avm_enable;
    assign out_memdep_getTanh_avm_read = i_llvm_fpga_mem_memdep_gettanh23_out_memdep_getTanh_avm_read;
    assign out_memdep_getTanh_avm_write = i_llvm_fpga_mem_memdep_gettanh23_out_memdep_getTanh_avm_write;
    assign out_memdep_getTanh_avm_writedata = i_llvm_fpga_mem_memdep_gettanh23_out_memdep_getTanh_avm_writedata;
    assign out_memdep_getTanh_avm_byteenable = i_llvm_fpga_mem_memdep_gettanh23_out_memdep_getTanh_avm_byteenable;
    assign out_memdep_getTanh_avm_burstcount = i_llvm_fpga_mem_memdep_gettanh23_out_memdep_getTanh_avm_burstcount;

    // dupName_1_regfree_osync_x(GPOUT,90)
    assign out_pipeline_dummy_out = i_llvm_fpga_pipeline_keep_going_gettanh6_out_pipeline_dummy_out;

    // dupName_2_regfree_osync_x(GPOUT,91)
    assign out_pipeline_forked_out = i_llvm_fpga_pipeline_keep_going_gettanh6_out_pipeline_forked_out;

    // dupName_3_regfree_osync_x(GPOUT,92)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_gettanh6_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,210)@33 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist7_sync_together78_aunroll_x_in_i_valid_33_q);
        end
    end

    // redist1_valid_fanout_reg0_q_1(DELAY,241)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist1_valid_fanout_reg0_q_1_q <= '0;
        end
        else
        begin
            redist1_valid_fanout_reg0_q_1_q <= $unsigned(valid_fanout_reg0_q);
        end
    end

    // redist27_i_gettanh_b3_current_iter_isspec_gettanh5_q_31(DELAY,267)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist27_i_gettanh_b3_current_iter_isspec_gettanh5_q_31_q <= $unsigned(redist26_i_gettanh_b3_current_iter_isspec_gettanh5_q_30_q);
        end
    end

    // i_notcmp_gettanh30(LOGICAL,76)@35
    assign i_notcmp_gettanh30_q = redist0_i_exitcond_gettanh26_cmp_nsign_q_31_q ^ VCC_q;

    // redist0_i_exitcond_gettanh26_cmp_nsign_q_31(DELAY,240)
    dspba_delay_ver #( .width(1), .depth(31), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist0_i_exitcond_gettanh26_cmp_nsign_q_31 ( .xin(i_exitcond_gettanh26_cmp_nsign_q), .xout(redist0_i_exitcond_gettanh26_cmp_nsign_q_31_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,144)@35
    assign out_c0_exi2_0_tpl = GND_q;
    assign out_c0_exi2_1_tpl = redist0_i_exitcond_gettanh26_cmp_nsign_q_31_q;
    assign out_c0_exi2_2_tpl = i_notcmp_gettanh30_q;
    assign out_getTanh_B3_current_iter_isspec = redist27_i_gettanh_b3_current_iter_isspec_gettanh5_q_31_q;
    assign out_o_valid = redist1_valid_fanout_reg0_q_1_q;

endmodule
