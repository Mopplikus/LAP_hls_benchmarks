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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body6_matvecs_c0_enter266_matvec0
// Created for function/kernel matvec
// SystemVerilog created on Thu Apr 27 14:29:50 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module matvec_i_sfc_logic_s_c0_in_for_body6_s_c0_enter266_matvec0 (
    input wire [31:0] in_unnamed_matvec2_matvec_avm_readdata,
    input wire [0:0] in_unnamed_matvec2_matvec_avm_writeack,
    input wire [0:0] in_unnamed_matvec2_matvec_avm_waitrequest,
    input wire [0:0] in_unnamed_matvec2_matvec_avm_readdatavalid,
    output wire [31:0] out_unnamed_matvec2_matvec_avm_address,
    output wire [0:0] out_unnamed_matvec2_matvec_avm_enable,
    output wire [0:0] out_unnamed_matvec2_matvec_avm_read,
    output wire [0:0] out_unnamed_matvec2_matvec_avm_write,
    output wire [31:0] out_unnamed_matvec2_matvec_avm_writedata,
    output wire [3:0] out_unnamed_matvec2_matvec_avm_byteenable,
    output wire [0:0] out_unnamed_matvec2_matvec_avm_burstcount,
    input wire [0:0] in_flush,
    output wire [0:0] out_exiting_valid_out,
    input wire [31:0] in_unnamed_matvec3_matvec_avm_readdata,
    input wire [0:0] in_unnamed_matvec3_matvec_avm_writeack,
    input wire [0:0] in_unnamed_matvec3_matvec_avm_waitrequest,
    input wire [0:0] in_unnamed_matvec3_matvec_avm_readdatavalid,
    output wire [31:0] out_unnamed_matvec3_matvec_avm_address,
    output wire [0:0] out_unnamed_matvec3_matvec_avm_enable,
    output wire [0:0] out_unnamed_matvec3_matvec_avm_read,
    output wire [0:0] out_unnamed_matvec3_matvec_avm_write,
    output wire [31:0] out_unnamed_matvec3_matvec_avm_writedata,
    output wire [3:0] out_unnamed_matvec3_matvec_avm_byteenable,
    output wire [0:0] out_unnamed_matvec3_matvec_avm_burstcount,
    output wire [0:0] out_pipeline_dummy_out,
    output wire [0:0] out_pipeline_forked_out,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_c0_exi5_0_tpl,
    output wire [63:0] out_c0_exi5_1_tpl,
    output wire [31:0] out_c0_exi5_2_tpl,
    output wire [0:0] out_c0_exi5_3_tpl,
    output wire [0:0] out_c0_exi5_4_tpl,
    output wire [0:0] out_c0_exi5_5_tpl,
    output wire [0:0] out_matvec_B3_current_iter_isspec,
    output wire [0:0] out_o_valid,
    input wire [0:0] in_buffer_in,
    input wire [0:0] in_c0_eni3_0_tpl,
    input wire [31:0] in_c0_eni3_1_tpl,
    input wire [0:0] in_c0_eni3_2_tpl,
    input wire [0:0] in_c0_eni3_3_tpl,
    input wire [0:0] in_dummy_in,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_068_q;
    wire [31:0] c_i32_169_q;
    wire [5:0] c_i6_172_q;
    wire [5:0] c_i6_2870_q;
    wire [63:0] c_matvec_M_local_pmem_q;
    wire [63:0] c_matvec_V_local_pmem_q;
    wire [32:0] i_add_matvec19_a;
    wire [32:0] i_add_matvec19_b;
    logic [32:0] i_add_matvec19_o;
    wire [32:0] i_add_matvec19_q;
    wire [1:0] i_arrayidx102_matvec15_vt_const_1_q;
    wire [63:0] i_arrayidx102_matvec15_vt_join_q;
    wire [61:0] i_arrayidx102_matvec15_vt_select_63_b;
    wire [63:0] i_arrayidx1_matvec13_vt_join_q;
    wire [61:0] i_arrayidx1_matvec13_vt_select_63_b;
    wire [6:0] i_fpga_indvars_iv_next_matvec29_a;
    wire [6:0] i_fpga_indvars_iv_next_matvec29_b;
    logic [6:0] i_fpga_indvars_iv_next_matvec29_o;
    wire [6:0] i_fpga_indvars_iv_next_matvec29_q;
    wire [63:0] i_idxprom7_matvec10_vt_join_q;
    wire [31:0] i_idxprom7_matvec10_vt_select_31_b;
    wire [63:0] i_idxprom_matvec12_vt_join_q;
    wire [31:0] i_idxprom_matvec12_vt_select_31_b;
    wire [32:0] i_inc_matvec20_a;
    wire [32:0] i_inc_matvec20_b;
    logic [32:0] i_inc_matvec20_o;
    wire [32:0] i_inc_matvec20_q;
    wire [0:0] i_llvm_fpga_dummy_thread_matvec_b3_dummy_matvec2_out_dummy_out;
    wire [0:0] i_llvm_fpga_forked_matvec_b3_forked_matvec3_out_buffer_out;
    wire [31:0] i_llvm_fpga_mem_unnamed_matvec2_matvec14_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_matvec2_matvec14_out_unnamed_matvec2_matvec_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_matvec2_matvec14_out_unnamed_matvec2_matvec_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_matvec2_matvec14_out_unnamed_matvec2_matvec_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_matvec2_matvec14_out_unnamed_matvec2_matvec_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_matvec2_matvec14_out_unnamed_matvec2_matvec_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_matvec2_matvec14_out_unnamed_matvec2_matvec_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_matvec2_matvec14_out_unnamed_matvec2_matvec_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_matvec3_matvec16_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_matvec3_matvec16_out_unnamed_matvec3_matvec_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_matvec3_matvec16_out_unnamed_matvec3_matvec_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_matvec3_matvec16_out_unnamed_matvec3_matvec_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_matvec3_matvec16_out_unnamed_matvec3_matvec_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_matvec3_matvec16_out_unnamed_matvec3_matvec_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_matvec3_matvec16_out_unnamed_matvec3_matvec_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_matvec3_matvec16_out_unnamed_matvec3_matvec_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_matvec6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_matvec6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_matvec6_out_pipeline_dummy_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_matvec6_out_pipeline_forked_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_matvec6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_matvec28_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_matvec28_out_feedback_valid_out_2;
    wire [0:0] i_matvec_b3_current_iter_isspec_matvec5_q;
    wire [0:0] i_matvec_b3_next_iter_isreal_matvec7_q;
    wire [0:0] i_notcmp_matvec27_q;
    wire [31:0] bgTrunc_i_add_matvec19_sel_x_b;
    wire [5:0] bgTrunc_i_fpga_indvars_iv_next_matvec29_sel_x_b;
    wire [31:0] bgTrunc_i_inc_matvec20_sel_x_b;
    wire [63:0] bgTrunc_i_mul_matvec17_sel_x_in;
    wire [31:0] bgTrunc_i_mul_matvec17_sel_x_b;
    wire [12:0] i_arrayidx102_matvec0_add_x_a;
    wire [12:0] i_arrayidx102_matvec0_add_x_b;
    logic [12:0] i_arrayidx102_matvec0_add_x_o;
    wire [12:0] i_arrayidx102_matvec0_add_x_q;
    wire [63:0] i_arrayidx102_matvec0_append_upper_bits_x_q;
    wire [9:0] i_arrayidx102_matvec0_narrow_x_b;
    wire [11:0] i_arrayidx102_matvec0_shift_join_x_q;
    wire [12:0] i_arrayidx102_matvec0_dupName_0_add_x_a;
    wire [12:0] i_arrayidx102_matvec0_dupName_0_add_x_b;
    logic [12:0] i_arrayidx102_matvec0_dupName_0_add_x_o;
    wire [12:0] i_arrayidx102_matvec0_dupName_0_add_x_q;
    wire [23:0] i_arrayidx102_matvec0_mult_extender_x_q;
    wire [4:0] i_arrayidx102_matvec0_mult_multconst_x_q;
    wire [11:0] i_arrayidx102_matvec0_dupName_0_trunc_sel_x_b;
    wire [11:0] i_arrayidx102_matvec0_dupName_1_trunc_sel_x_b;
    wire [11:0] i_arrayidx102_matvec0_dupName_2_trunc_sel_x_b;
    wire [11:0] i_arrayidx102_matvec0_dupName_3_trunc_sel_x_b;
    wire [11:0] i_arrayidx102_matvec0_dupName_5_trunc_sel_x_b;
    wire [7:0] i_arrayidx1_matvec0_add_x_a;
    wire [7:0] i_arrayidx1_matvec0_add_x_b;
    logic [7:0] i_arrayidx1_matvec0_add_x_o;
    wire [7:0] i_arrayidx1_matvec0_add_x_q;
    wire [63:0] i_arrayidx1_matvec0_append_upper_bits_x_q;
    wire [4:0] i_arrayidx1_matvec0_narrow_x_b;
    wire [6:0] i_arrayidx1_matvec0_shift_join_x_q;
    wire [6:0] i_arrayidx1_matvec0_dupName_0_trunc_sel_x_b;
    wire [6:0] i_arrayidx1_matvec0_dupName_2_trunc_sel_x_b;
    wire [63:0] i_idxprom7_matvec10_sel_x_b;
    wire [63:0] i_idxprom_matvec12_sel_x_b;
    wire [0:0] i_llvm_fpga_pop_coalesce_i1_matvec_b3_current_iter_isreal_matvec0_i_llvm_fpga_pop_coalesce_i1_matvec_b3_current_iter_isreal_matvec4_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_coalesce_i1_matvec_b3_current_iter_isreal_matvec0_i_llvm_fpga_pop_coalesce_i1_matvec_b3_current_iter_isreal_matvec4_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp414_pop12_matvec0_i_llvm_fpga_pop_i1_notcmp414_pop12_matvec31_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_notcmp414_pop12_matvec0_i_llvm_fpga_pop_i1_notcmp414_pop12_matvec31_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_i_013_pop815_pop13_matvec0_i_llvm_fpga_pop_i32_i_013_pop815_pop13_matvec9_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_i_013_pop815_pop13_matvec0_i_llvm_fpga_pop_i32_i_013_pop815_pop13_matvec9_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_j_011_pop11_matvec0_i_llvm_fpga_pop_i32_j_011_pop11_matvec11_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_j_011_pop11_matvec0_i_llvm_fpga_pop_i32_j_011_pop11_matvec11_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_tmp_012_pop10_matvec0_i_llvm_fpga_pop_i32_tmp_012_pop10_matvec18_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_tmp_012_pop10_matvec0_i_llvm_fpga_pop_i32_tmp_012_pop10_matvec18_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv_pop9_matvec0_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop9_matvec21_mux_x_s;
    reg [5:0] i_llvm_fpga_pop_i6_fpga_indvars_iv_pop9_matvec0_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop9_matvec21_mux_x_q;
    wire [6:0] i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_c_i7_03_x_q;
    wire [7:0] i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec1_x_i_valid;
    wire i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec1_x_i_stall;
    wire i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_inv_pred_x_q;
    wire [0:0] i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_notcmp414_push12_matvec0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_notcmp414_push12_matvec0_i_llvm_fpga_push_i1_notcmp414_push12_matvec1_x_i_valid;
    wire i_llvm_fpga_push_i1_notcmp414_push12_matvec0_i_llvm_fpga_push_i1_notcmp414_push12_matvec1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_notcmp414_push12_matvec0_i_llvm_fpga_push_i1_notcmp414_push12_matvec1_x_i_stall;
    wire i_llvm_fpga_push_i1_notcmp414_push12_matvec0_i_llvm_fpga_push_i1_notcmp414_push12_matvec1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_notcmp414_push12_matvec0_i_llvm_fpga_push_i1_notcmp414_push12_matvec1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_notcmp414_push12_matvec0_i_llvm_fpga_push_i1_notcmp414_push12_matvec1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_notcmp414_push12_matvec0_adapt_scalar_trunc4_sel_x_b;
    wire [0:0] i_llvm_fpga_push_i32_i_013_pop815_push13_matvec0_i_llvm_fpga_push_i32_i_013_pop815_push13_matvec1_x_i_valid;
    wire i_llvm_fpga_push_i32_i_013_pop815_push13_matvec0_i_llvm_fpga_push_i32_i_013_pop815_push13_matvec1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_i_013_pop815_push13_matvec0_i_llvm_fpga_push_i32_i_013_pop815_push13_matvec1_x_i_stall;
    wire i_llvm_fpga_push_i32_i_013_pop815_push13_matvec0_i_llvm_fpga_push_i32_i_013_pop815_push13_matvec1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_i_013_pop815_push13_matvec0_i_llvm_fpga_push_i32_i_013_pop815_push13_matvec1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_i_013_pop815_push13_matvec0_i_llvm_fpga_push_i32_i_013_pop815_push13_matvec1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i32_j_011_push11_matvec0_i_llvm_fpga_push_i32_j_011_push11_matvec1_x_i_valid;
    wire i_llvm_fpga_push_i32_j_011_push11_matvec0_i_llvm_fpga_push_i32_j_011_push11_matvec1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_j_011_push11_matvec0_i_llvm_fpga_push_i32_j_011_push11_matvec1_x_i_stall;
    wire i_llvm_fpga_push_i32_j_011_push11_matvec0_i_llvm_fpga_push_i32_j_011_push11_matvec1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_j_011_push11_matvec0_i_llvm_fpga_push_i32_j_011_push11_matvec1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_j_011_push11_matvec0_i_llvm_fpga_push_i32_j_011_push11_matvec1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i32_tmp_012_push10_matvec0_i_llvm_fpga_push_i32_tmp_012_push10_matvec1_x_i_valid;
    wire i_llvm_fpga_push_i32_tmp_012_push10_matvec0_i_llvm_fpga_push_i32_tmp_012_push10_matvec1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_tmp_012_push10_matvec0_i_llvm_fpga_push_i32_tmp_012_push10_matvec1_x_i_stall;
    wire i_llvm_fpga_push_i32_tmp_012_push10_matvec0_i_llvm_fpga_push_i32_tmp_012_push10_matvec1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_tmp_012_push10_matvec0_i_llvm_fpga_push_i32_tmp_012_push10_matvec1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_tmp_012_push10_matvec0_i_llvm_fpga_push_i32_tmp_012_push10_matvec1_x_o_data;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push9_matvec0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push9_matvec0_i_llvm_fpga_push_i6_fpga_indvars_iv_push9_matvec1_x_i_valid;
    wire i_llvm_fpga_push_i6_fpga_indvars_iv_push9_matvec0_i_llvm_fpga_push_i6_fpga_indvars_iv_push9_matvec1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push9_matvec0_i_llvm_fpga_push_i6_fpga_indvars_iv_push9_matvec1_x_i_stall;
    wire i_llvm_fpga_push_i6_fpga_indvars_iv_push9_matvec0_i_llvm_fpga_push_i6_fpga_indvars_iv_push9_matvec1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push9_matvec0_i_llvm_fpga_push_i6_fpga_indvars_iv_push9_matvec1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push9_matvec0_i_llvm_fpga_push_i6_fpga_indvars_iv_push9_matvec1_x_o_data;
    wire [5:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push9_matvec0_adapt_scalar_trunc4_sel_x_b;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg7_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg8_q;
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
    wire [0:0] i_exitcond_matvec22_cmp_nsign_q;
    wire [14:0] i_mul_matvec17_bjA2_q;
    wire [14:0] i_mul_matvec17_bjB4_q;
    wire [65:0] i_mul_matvec17_sums_join_0_q;
    wire [50:0] i_mul_matvec17_sums_align_1_q;
    wire [50:0] i_mul_matvec17_sums_align_1_qint;
    wire [66:0] i_mul_matvec17_sums_result_add_0_0_a;
    wire [66:0] i_mul_matvec17_sums_result_add_0_0_b;
    logic [66:0] i_mul_matvec17_sums_result_add_0_0_o;
    wire [66:0] i_mul_matvec17_sums_result_add_0_0_q;
    wire [12:0] xIfSign_mergedSignalTM_uid240_i_arrayidx102_matvec0_mult_x_q;
    wire [3:0] padACst_uid244_i_arrayidx102_matvec0_mult_x_q;
    wire [16:0] aPostPad_uid245_i_arrayidx102_matvec0_mult_x_q;
    wire [17:0] sub_uid246_i_arrayidx102_matvec0_mult_x_a;
    wire [17:0] sub_uid246_i_arrayidx102_matvec0_mult_x_b;
    logic [17:0] sub_uid246_i_arrayidx102_matvec0_mult_x_o;
    wire [17:0] sub_uid246_i_arrayidx102_matvec0_mult_x_q;
    wire [2:0] sR_bottomExtension_uid249_i_arrayidx102_matvec0_mult_x_q;
    wire [15:0] sR_bottomRange_uid250_i_arrayidx102_matvec0_mult_x_in;
    wire [15:0] sR_bottomRange_uid250_i_arrayidx102_matvec0_mult_x_b;
    wire [18:0] sR_mergedSignalTM_uid251_i_arrayidx102_matvec0_mult_x_q;
    wire i_mul_matvec17_im0_cma_reset;
    (* preserve_syn_only *) reg signed [14:0] i_mul_matvec17_im0_cma_ah [0:0];
    (* preserve_syn_only *) reg signed [14:0] i_mul_matvec17_im0_cma_ch [0:0];
    wire [14:0] i_mul_matvec17_im0_cma_a0;
    wire [14:0] i_mul_matvec17_im0_cma_c0;
    wire [29:0] i_mul_matvec17_im0_cma_s0;
    wire [29:0] i_mul_matvec17_im0_cma_qq;
    reg [29:0] i_mul_matvec17_im0_cma_q;
    wire i_mul_matvec17_im0_cma_ena0;
    wire i_mul_matvec17_im0_cma_ena1;
    wire i_mul_matvec17_im0_cma_ena2;
    wire i_mul_matvec17_im10_cma_reset;
    (* preserve_syn_only *) reg [17:0] i_mul_matvec17_im10_cma_ah [0:0];
    (* preserve_syn_only *) reg [17:0] i_mul_matvec17_im10_cma_ch [0:0];
    wire [17:0] i_mul_matvec17_im10_cma_a0;
    wire [17:0] i_mul_matvec17_im10_cma_c0;
    wire [35:0] i_mul_matvec17_im10_cma_s0;
    wire [35:0] i_mul_matvec17_im10_cma_qq;
    reg [35:0] i_mul_matvec17_im10_cma_q;
    wire i_mul_matvec17_im10_cma_ena0;
    wire i_mul_matvec17_im10_cma_ena1;
    wire i_mul_matvec17_im10_cma_ena2;
    wire i_mul_matvec17_ma5_cma_reset;
    (* preserve_syn_only *) reg [13:0] i_mul_matvec17_ma5_cma_ah [0:1];
    (* preserve_syn_only *) reg [17:0] i_mul_matvec17_ma5_cma_ch [0:1];
    wire [13:0] i_mul_matvec17_ma5_cma_a0;
    wire [17:0] i_mul_matvec17_ma5_cma_c0;
    wire [13:0] i_mul_matvec17_ma5_cma_a1;
    wire [17:0] i_mul_matvec17_ma5_cma_c1;
    wire [32:0] i_mul_matvec17_ma5_cma_s0;
    wire [32:0] i_mul_matvec17_ma5_cma_qq;
    reg [32:0] i_mul_matvec17_ma5_cma_q;
    wire i_mul_matvec17_ma5_cma_ena0;
    wire i_mul_matvec17_ma5_cma_ena1;
    wire i_mul_matvec17_ma5_cma_ena2;
    wire [51:0] i_arrayidx102_matvec0_upper_bits_x_merged_bit_select_b;
    wire [11:0] i_arrayidx102_matvec0_upper_bits_x_merged_bit_select_c;
    wire [56:0] i_arrayidx1_matvec0_upper_bits_x_merged_bit_select_b;
    wire [6:0] i_arrayidx1_matvec0_upper_bits_x_merged_bit_select_c;
    wire [13:0] i_mul_matvec17_bs3_merged_bit_select_b;
    wire [17:0] i_mul_matvec17_bs3_merged_bit_select_c;
    wire [13:0] i_mul_matvec17_bs1_merged_bit_select_b;
    wire [17:0] i_mul_matvec17_bs1_merged_bit_select_c;
    reg [51:0] redist0_i_arrayidx102_matvec0_upper_bits_x_merged_bit_select_b_1_q;
    reg [32:0] redist1_i_mul_matvec17_ma5_cma_q_1_q;
    reg [35:0] redist2_i_mul_matvec17_im10_cma_q_1_q;
    reg [29:0] redist3_i_mul_matvec17_im0_cma_q_1_q;
    reg [0:0] redist4_i_exitcond_matvec22_cmp_nsign_q_14_q;
    reg [0:0] redist5_valid_fanout_reg0_q_1_q;
    reg [31:0] redist6_sync_together79_aunroll_x_in_c0_eni3_1_tpl_4_q;
    reg [31:0] redist6_sync_together79_aunroll_x_in_c0_eni3_1_tpl_4_delay_0;
    reg [31:0] redist6_sync_together79_aunroll_x_in_c0_eni3_1_tpl_4_delay_1;
    reg [0:0] redist7_sync_together79_aunroll_x_in_c0_eni3_3_tpl_4_q;
    reg [0:0] redist7_sync_together79_aunroll_x_in_c0_eni3_3_tpl_4_delay_0;
    reg [0:0] redist7_sync_together79_aunroll_x_in_c0_eni3_3_tpl_4_delay_1;
    reg [0:0] redist7_sync_together79_aunroll_x_in_c0_eni3_3_tpl_4_delay_2;
    reg [0:0] redist8_sync_together79_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist8_sync_together79_aunroll_x_in_i_valid_2_delay_0;
    reg [0:0] redist9_sync_together79_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist10_sync_together79_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist11_sync_together79_aunroll_x_in_i_valid_5_q;
    reg [0:0] redist12_sync_together79_aunroll_x_in_i_valid_14_q;
    reg [0:0] redist13_sync_together79_aunroll_x_in_i_valid_16_q;
    reg [0:0] redist13_sync_together79_aunroll_x_in_i_valid_16_delay_0;
    reg [0:0] redist14_i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_inv_pred_x_q_2_q;
    reg [0:0] redist14_i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_inv_pred_x_q_2_delay_0;
    reg [0:0] redist15_i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_inv_pred_x_q_3_q;
    reg [0:0] redist16_i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_inv_pred_x_q_4_q;
    reg [0:0] redist17_i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_inv_pred_x_q_14_q;
    reg [0:0] redist18_i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_inv_pred_x_q_16_q;
    reg [0:0] redist18_i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_inv_pred_x_q_16_delay_0;
    reg [0:0] redist19_i_llvm_fpga_pop_i1_notcmp414_pop12_matvec0_i_llvm_fpga_pop_i1_notcmp414_pop12_matvec31_mux_x_q_14_q;
    reg [11:0] redist20_i_arrayidx102_matvec0_dupName_2_trunc_sel_x_b_1_q;
    reg [11:0] redist21_i_arrayidx102_matvec0_dupName_1_trunc_sel_x_b_1_q;
    reg [31:0] redist22_bgTrunc_i_mul_matvec17_sel_x_b_1_q;
    reg [0:0] redist23_i_matvec_b3_current_iter_isspec_matvec5_q_12_q;
    reg [0:0] redist24_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_2_q;
    reg [0:0] redist24_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_2_delay_0;
    reg [0:0] redist25_i_llvm_fpga_forked_matvec_b3_forked_matvec3_out_buffer_out_4_q;
    reg [0:0] redist25_i_llvm_fpga_forked_matvec_b3_forked_matvec3_out_buffer_out_4_delay_0;
    reg [0:0] redist25_i_llvm_fpga_forked_matvec_b3_forked_matvec3_out_buffer_out_4_delay_1;
    reg [0:0] redist25_i_llvm_fpga_forked_matvec_b3_forked_matvec3_out_buffer_out_4_delay_2;
    reg [0:0] redist26_i_llvm_fpga_forked_matvec_b3_forked_matvec3_out_buffer_out_6_q;
    reg [0:0] redist26_i_llvm_fpga_forked_matvec_b3_forked_matvec3_out_buffer_out_6_delay_0;
    reg [0:0] redist27_i_llvm_fpga_forked_matvec_b3_forked_matvec3_out_buffer_out_18_q;
    reg [0:0] redist28_i_llvm_fpga_dummy_thread_matvec_b3_dummy_matvec2_out_dummy_out_4_q;
    reg [0:0] redist28_i_llvm_fpga_dummy_thread_matvec_b3_dummy_matvec2_out_dummy_out_4_delay_0;
    reg [0:0] redist28_i_llvm_fpga_dummy_thread_matvec_b3_dummy_matvec2_out_dummy_out_4_delay_1;
    reg [0:0] redist28_i_llvm_fpga_dummy_thread_matvec_b3_dummy_matvec2_out_dummy_out_4_delay_2;
    reg [31:0] redist6_sync_together79_aunroll_x_in_c0_eni3_1_tpl_4_inputreg0_q;
    reg [63:0] redist29_i_idxprom7_matvec10_vt_join_q_14_inputreg0_q;
    reg [63:0] redist29_i_idxprom7_matvec10_vt_join_q_14_outputreg0_q;
    wire redist29_i_idxprom7_matvec10_vt_join_q_14_mem_reset0;
    wire [63:0] redist29_i_idxprom7_matvec10_vt_join_q_14_mem_ia;
    wire [3:0] redist29_i_idxprom7_matvec10_vt_join_q_14_mem_aa;
    wire [3:0] redist29_i_idxprom7_matvec10_vt_join_q_14_mem_ab;
    wire [63:0] redist29_i_idxprom7_matvec10_vt_join_q_14_mem_iq;
    wire [63:0] redist29_i_idxprom7_matvec10_vt_join_q_14_mem_q;
    wire [3:0] redist29_i_idxprom7_matvec10_vt_join_q_14_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist29_i_idxprom7_matvec10_vt_join_q_14_wraddr_i = 4'b1111;
    wire [3:0] redist29_i_idxprom7_matvec10_vt_join_q_14_offset_q;
    wire [4:0] redist29_i_idxprom7_matvec10_vt_join_q_14_rdcnt_a;
    wire [4:0] redist29_i_idxprom7_matvec10_vt_join_q_14_rdcnt_b;
    logic [4:0] redist29_i_idxprom7_matvec10_vt_join_q_14_rdcnt_o;
    wire [4:0] redist29_i_idxprom7_matvec10_vt_join_q_14_rdcnt_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist8_sync_together79_aunroll_x_in_i_valid_2(DELAY,286)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist8_sync_together79_aunroll_x_in_i_valid_2_delay_0 <= '0;
        end
        else
        begin
            redist8_sync_together79_aunroll_x_in_i_valid_2_delay_0 <= $unsigned(in_i_valid);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_sync_together79_aunroll_x_in_i_valid_2_q <= redist8_sync_together79_aunroll_x_in_i_valid_2_delay_0;
        end
    end

    // redist9_sync_together79_aunroll_x_in_i_valid_3(DELAY,287)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist9_sync_together79_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist9_sync_together79_aunroll_x_in_i_valid_3_q <= $unsigned(redist8_sync_together79_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist10_sync_together79_aunroll_x_in_i_valid_4(DELAY,288)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_sync_together79_aunroll_x_in_i_valid_4_q <= $unsigned(redist9_sync_together79_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist11_sync_together79_aunroll_x_in_i_valid_5(DELAY,289)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist11_sync_together79_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist11_sync_together79_aunroll_x_in_i_valid_5_q <= $unsigned(redist10_sync_together79_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg7(REG,171)@5 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist11_sync_together79_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_c_i7_03_x(CONSTANT,136)
    assign i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_c_i7_03_x_q = $unsigned(7'b0000000);

    // valid_fanout_reg2(REG,166)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist9_sync_together79_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg17(REG,181)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(redist9_sync_together79_aunroll_x_in_i_valid_3_q);
        end
    end

    // c_i6_2870(CONSTANT,44)
    assign c_i6_2870_q = $unsigned(6'b011100);

    // i_arrayidx102_matvec15_vt_const_1(CONSTANT,50)
    assign i_arrayidx102_matvec15_vt_const_1_q = $unsigned(2'b00);

    // c_i6_172(CONSTANT,43)
    assign c_i6_172_q = $unsigned(6'b111111);

    // i_fpga_indvars_iv_next_matvec29(ADD,57)@4
    assign i_fpga_indvars_iv_next_matvec29_a = {1'b0, i_llvm_fpga_pop_i6_fpga_indvars_iv_pop9_matvec0_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop9_matvec21_mux_x_q};
    assign i_fpga_indvars_iv_next_matvec29_b = {1'b0, c_i6_172_q};
    assign i_fpga_indvars_iv_next_matvec29_o = $unsigned(i_fpga_indvars_iv_next_matvec29_a) + $unsigned(i_fpga_indvars_iv_next_matvec29_b);
    assign i_fpga_indvars_iv_next_matvec29_q = i_fpga_indvars_iv_next_matvec29_o[6:0];

    // bgTrunc_i_fpga_indvars_iv_next_matvec29_sel_x(BITSELECT,82)@4
    assign bgTrunc_i_fpga_indvars_iv_next_matvec29_sel_x_b = i_fpga_indvars_iv_next_matvec29_q[5:0];

    // i_llvm_fpga_push_i6_fpga_indvars_iv_push9_matvec0_element_extension2_x(BITJOIN,158)@4
    assign i_llvm_fpga_push_i6_fpga_indvars_iv_push9_matvec0_element_extension2_x_q = {i_arrayidx102_matvec15_vt_const_1_q, bgTrunc_i_fpga_indvars_iv_next_matvec29_sel_x_b};

    // i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_inv_pred_x(LOGICAL,139)@1
    assign i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_inv_pred_x_q = ~ (GND_q);

    // valid_fanout_reg19(REG,183)@0 + 1
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

    // valid_fanout_reg18(REG,182)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(redist8_sync_together79_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i6_fpga_indvars_iv_push9_matvec0_i_llvm_fpga_push_i6_fpga_indvars_iv_push9_matvec1_x(FIFODELAY,159)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i6_fpga_indvars_iv_push9_matvec0_i_llvm_fpga_push_i6_fpga_indvars_iv_push9_matvec1_x_i_stall = ~ (valid_fanout_reg19_q & i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_inv_pred_x_q);
    assign i_llvm_fpga_push_i6_fpga_indvars_iv_push9_matvec0_i_llvm_fpga_push_i6_fpga_indvars_iv_push9_matvec1_x_i_valid = valid_fanout_reg18_q & redist14_i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i6_fpga_indvars_iv_push9_matvec0_i_llvm_fpga_push_i6_fpga_indvars_iv_push9_matvec1_x_i_data = i_llvm_fpga_push_i6_fpga_indvars_iv_push9_matvec0_element_extension2_x_q;
    assign i_llvm_fpga_push_i6_fpga_indvars_iv_push9_matvec0_i_llvm_fpga_push_i6_fpga_indvars_iv_push9_matvec1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i6_fpga_indvars_iv_push9_matvec0_i_llvm_fpga_push_i6_fpga_indvars_iv_push9_matvec1_x_i_valid[0];
    assign i_llvm_fpga_push_i6_fpga_indvars_iv_push9_matvec0_i_llvm_fpga_push_i6_fpga_indvars_iv_push9_matvec1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i6_fpga_indvars_iv_push9_matvec0_i_llvm_fpga_push_i6_fpga_indvars_iv_push9_matvec1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i6_fpga_indvars_iv_push9_matvec0_i_llvm_fpga_push_i6_fpga_indvars_iv_push9_matvec1_x (
        .i_valid(i_llvm_fpga_push_i6_fpga_indvars_iv_push9_matvec0_i_llvm_fpga_push_i6_fpga_indvars_iv_push9_matvec1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i6_fpga_indvars_iv_push9_matvec0_i_llvm_fpga_push_i6_fpga_indvars_iv_push9_matvec1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i6_fpga_indvars_iv_push9_matvec0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i6_fpga_indvars_iv_push9_matvec0_i_llvm_fpga_push_i6_fpga_indvars_iv_push9_matvec1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i6_fpga_indvars_iv_push9_matvec0_adapt_scalar_trunc4_sel_x(BITSELECT,161)@4
    assign i_llvm_fpga_push_i6_fpga_indvars_iv_push9_matvec0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i6_fpga_indvars_iv_push9_matvec0_i_llvm_fpga_push_i6_fpga_indvars_iv_push9_matvec1_x_o_data[5:0];

    // i_llvm_fpga_pop_i6_fpga_indvars_iv_pop9_matvec0_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop9_matvec21_mux_x(MUX,134)@4
    assign i_llvm_fpga_pop_i6_fpga_indvars_iv_pop9_matvec0_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop9_matvec21_mux_x_s = redist25_i_llvm_fpga_forked_matvec_b3_forked_matvec3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop9_matvec0_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop9_matvec21_mux_x_s or i_llvm_fpga_push_i6_fpga_indvars_iv_push9_matvec0_adapt_scalar_trunc4_sel_x_b or c_i6_2870_q)
    begin
        unique case (i_llvm_fpga_pop_i6_fpga_indvars_iv_pop9_matvec0_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop9_matvec21_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i6_fpga_indvars_iv_pop9_matvec0_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop9_matvec21_mux_x_q = i_llvm_fpga_push_i6_fpga_indvars_iv_push9_matvec0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i6_fpga_indvars_iv_pop9_matvec0_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop9_matvec21_mux_x_q = c_i6_2870_q;
            default : i_llvm_fpga_pop_i6_fpga_indvars_iv_pop9_matvec0_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop9_matvec21_mux_x_q = 6'b0;
        endcase
    end

    // i_exitcond_matvec22_cmp_nsign(LOGICAL,197)@4
    assign i_exitcond_matvec22_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i6_fpga_indvars_iv_pop9_matvec0_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop9_matvec21_mux_x_q[5:5]));

    // i_llvm_fpga_push_i1_notexitcond_matvec28(BLACKBOX,72)@4
    // in in_empty_in@20000000
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    matvec_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_matvec28 (
        .in_almost_empty_in(GND_q),
        .in_data_in(i_exitcond_matvec22_cmp_nsign_q),
        .in_empty_in(GND_q),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_matvec6_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_notexitcond_matvec28_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_notexitcond_matvec28_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_dummy_thread_matvec_b3_dummy_matvec2(BLACKBOX,67)@0
    // in in_stall_in@20000000
    matvec_i_llvm_fpga_dummy_thread_b3_dummy_matvec0 thei_llvm_fpga_dummy_thread_matvec_b3_dummy_matvec2 (
        .in_dummy_in(in_dummy_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dummy_out(i_llvm_fpga_dummy_thread_matvec_b3_dummy_matvec2_out_dummy_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist28_i_llvm_fpga_dummy_thread_matvec_b3_dummy_matvec2_out_dummy_out_4(DELAY,306)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist28_i_llvm_fpga_dummy_thread_matvec_b3_dummy_matvec2_out_dummy_out_4_delay_0 <= $unsigned(i_llvm_fpga_dummy_thread_matvec_b3_dummy_matvec2_out_dummy_out);
            redist28_i_llvm_fpga_dummy_thread_matvec_b3_dummy_matvec2_out_dummy_out_4_delay_1 <= redist28_i_llvm_fpga_dummy_thread_matvec_b3_dummy_matvec2_out_dummy_out_4_delay_0;
            redist28_i_llvm_fpga_dummy_thread_matvec_b3_dummy_matvec2_out_dummy_out_4_delay_2 <= redist28_i_llvm_fpga_dummy_thread_matvec_b3_dummy_matvec2_out_dummy_out_4_delay_1;
            redist28_i_llvm_fpga_dummy_thread_matvec_b3_dummy_matvec2_out_dummy_out_4_q <= redist28_i_llvm_fpga_dummy_thread_matvec_b3_dummy_matvec2_out_dummy_out_4_delay_2;
        end
    end

    // i_llvm_fpga_forked_matvec_b3_forked_matvec3(BLACKBOX,68)@0
    // in in_stall_in@20000000
    matvec_i_llvm_fpga_forked_b3_forked_matvec0 thei_llvm_fpga_forked_matvec_b3_forked_matvec3 (
        .in_buffer_in(in_buffer_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_buffer_out(i_llvm_fpga_forked_matvec_b3_forked_matvec3_out_buffer_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist25_i_llvm_fpga_forked_matvec_b3_forked_matvec3_out_buffer_out_4(DELAY,303)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist25_i_llvm_fpga_forked_matvec_b3_forked_matvec3_out_buffer_out_4_delay_0 <= $unsigned(i_llvm_fpga_forked_matvec_b3_forked_matvec3_out_buffer_out);
            redist25_i_llvm_fpga_forked_matvec_b3_forked_matvec3_out_buffer_out_4_delay_1 <= redist25_i_llvm_fpga_forked_matvec_b3_forked_matvec3_out_buffer_out_4_delay_0;
            redist25_i_llvm_fpga_forked_matvec_b3_forked_matvec3_out_buffer_out_4_delay_2 <= redist25_i_llvm_fpga_forked_matvec_b3_forked_matvec3_out_buffer_out_4_delay_1;
            redist25_i_llvm_fpga_forked_matvec_b3_forked_matvec3_out_buffer_out_4_q <= redist25_i_llvm_fpga_forked_matvec_b3_forked_matvec3_out_buffer_out_4_delay_2;
        end
    end

    // i_llvm_fpga_pipeline_keep_going_matvec6(BLACKBOX,71)@4
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_dummy_out@20000000
    // out out_pipeline_forked_out@20000000
    // out out_pipeline_valid_out@20000000
    matvec_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_matvec6 (
        .in_data_in(redist25_i_llvm_fpga_forked_matvec_b3_forked_matvec3_out_buffer_out_4_q),
        .in_dummy_in(redist28_i_llvm_fpga_dummy_thread_matvec_b3_dummy_matvec2_out_dummy_out_4_q),
        .in_forked_in(redist25_i_llvm_fpga_forked_matvec_b3_forked_matvec3_out_buffer_out_4_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_matvec28_out_feedback_out_2),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_matvec28_out_feedback_valid_out_2),
        .in_pipeline_stall_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_matvec6_out_exiting_valid_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_matvec6_out_not_exitcond_stall_out),
        .out_pipeline_dummy_out(i_llvm_fpga_pipeline_keep_going_matvec6_out_pipeline_dummy_out),
        .out_pipeline_forked_out(i_llvm_fpga_pipeline_keep_going_matvec6_out_pipeline_forked_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_matvec6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist24_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_2(DELAY,302)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist24_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out);
            redist24_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_2_q <= redist24_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_2_delay_0;
        end
    end

    // i_matvec_b3_next_iter_isreal_matvec7(LOGICAL,74)@6
    assign i_matvec_b3_next_iter_isreal_matvec7_q = i_llvm_fpga_pop_coalesce_i1_matvec_b3_current_iter_isreal_matvec0_i_llvm_fpga_pop_coalesce_i1_matvec_b3_current_iter_isreal_matvec4_mux_x_q & redist24_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_2_q;

    // i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_element_extension2_x(BITJOIN,137)@6
    assign i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_element_extension2_x_q = {i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_c_i7_03_x_q, i_matvec_b3_next_iter_isreal_matvec7_q};

    // redist14_i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_inv_pred_x_q_2(DELAY,292)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist14_i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_inv_pred_x_q_2_delay_0 <= $unsigned(i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_inv_pred_x_q);
            redist14_i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_inv_pred_x_q_2_q <= redist14_i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_inv_pred_x_q_2_delay_0;
        end
    end

    // valid_fanout_reg4(REG,168)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist8_sync_together79_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist15_i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_inv_pred_x_q_3(DELAY,293)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist15_i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_inv_pred_x_q_3_q <= $unsigned(redist14_i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_inv_pred_x_q_2_q);
        end
    end

    // redist16_i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_inv_pred_x_q_4(DELAY,294)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist16_i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_inv_pred_x_q_4_q <= $unsigned(redist15_i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_inv_pred_x_q_3_q);
        end
    end

    // valid_fanout_reg3(REG,167)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist10_sync_together79_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec1_x(FIFODELAY,138)@3 + 1
    // in i_valid@5
    // in i_write_pred@5
    // in i_data@6
    // out o_data@6
    assign i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec1_x_i_stall = ~ (valid_fanout_reg4_q & redist14_i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_inv_pred_x_q_2_q);
    assign i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec1_x_i_valid = valid_fanout_reg3_q & redist16_i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_inv_pred_x_q_4_q;
    assign i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec1_x_i_data = i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec1_x (
        .i_valid(i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_adapt_scalar_trunc4_sel_x(BITSELECT,140)@6
    assign i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec1_x_o_data[0:0];

    // redist26_i_llvm_fpga_forked_matvec_b3_forked_matvec3_out_buffer_out_6(DELAY,304)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist26_i_llvm_fpga_forked_matvec_b3_forked_matvec3_out_buffer_out_6_delay_0 <= $unsigned(redist25_i_llvm_fpga_forked_matvec_b3_forked_matvec3_out_buffer_out_4_q);
            redist26_i_llvm_fpga_forked_matvec_b3_forked_matvec3_out_buffer_out_6_q <= redist26_i_llvm_fpga_forked_matvec_b3_forked_matvec3_out_buffer_out_6_delay_0;
        end
    end

    // i_llvm_fpga_pop_coalesce_i1_matvec_b3_current_iter_isreal_matvec0_i_llvm_fpga_pop_coalesce_i1_matvec_b3_current_iter_isreal_matvec4_mux_x(MUX,129)@6
    assign i_llvm_fpga_pop_coalesce_i1_matvec_b3_current_iter_isreal_matvec0_i_llvm_fpga_pop_coalesce_i1_matvec_b3_current_iter_isreal_matvec4_mux_x_s = redist26_i_llvm_fpga_forked_matvec_b3_forked_matvec3_out_buffer_out_6_q;
    always @(i_llvm_fpga_pop_coalesce_i1_matvec_b3_current_iter_isreal_matvec0_i_llvm_fpga_pop_coalesce_i1_matvec_b3_current_iter_isreal_matvec4_mux_x_s or i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_adapt_scalar_trunc4_sel_x_b or VCC_q)
    begin
        unique case (i_llvm_fpga_pop_coalesce_i1_matvec_b3_current_iter_isreal_matvec0_i_llvm_fpga_pop_coalesce_i1_matvec_b3_current_iter_isreal_matvec4_mux_x_s)
            1'b0 : i_llvm_fpga_pop_coalesce_i1_matvec_b3_current_iter_isreal_matvec0_i_llvm_fpga_pop_coalesce_i1_matvec_b3_current_iter_isreal_matvec4_mux_x_q = i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_coalesce_i1_matvec_b3_current_iter_isreal_matvec0_i_llvm_fpga_pop_coalesce_i1_matvec_b3_current_iter_isreal_matvec4_mux_x_q = VCC_q;
            default : i_llvm_fpga_pop_coalesce_i1_matvec_b3_current_iter_isreal_matvec0_i_llvm_fpga_pop_coalesce_i1_matvec_b3_current_iter_isreal_matvec4_mux_x_q = 1'b0;
        endcase
    end

    // i_matvec_b3_current_iter_isspec_matvec5(LOGICAL,73)@6
    assign i_matvec_b3_current_iter_isspec_matvec5_q = i_llvm_fpga_pop_coalesce_i1_matvec_b3_current_iter_isreal_matvec0_i_llvm_fpga_pop_coalesce_i1_matvec_b3_current_iter_isreal_matvec4_mux_x_q ^ VCC_q;

    // c_matvec_V_local_pmem(CONSTANT,46)
    assign c_matvec_V_local_pmem_q = $unsigned(64'b0100000001000001000000000000000000000000000000000000000000000000);

    // i_arrayidx1_matvec0_upper_bits_x_merged_bit_select(BITSELECT,275)@6
    assign i_arrayidx1_matvec0_upper_bits_x_merged_bit_select_b = c_matvec_V_local_pmem_q[63:7];
    assign i_arrayidx1_matvec0_upper_bits_x_merged_bit_select_c = c_matvec_V_local_pmem_q[6:0];

    // c_i32_068(CONSTANT,41)
    assign c_i32_068_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i32_169(CONSTANT,42)
    assign c_i32_169_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_matvec20(ADD,66)@6
    assign i_inc_matvec20_a = {1'b0, i_llvm_fpga_pop_i32_j_011_pop11_matvec0_i_llvm_fpga_pop_i32_j_011_pop11_matvec11_mux_x_q};
    assign i_inc_matvec20_b = {1'b0, c_i32_169_q};
    assign i_inc_matvec20_o = $unsigned(i_inc_matvec20_a) + $unsigned(i_inc_matvec20_b);
    assign i_inc_matvec20_q = i_inc_matvec20_o[32:0];

    // bgTrunc_i_inc_matvec20_sel_x(BITSELECT,83)@6
    assign bgTrunc_i_inc_matvec20_sel_x_b = i_inc_matvec20_q[31:0];

    // valid_fanout_reg14(REG,178)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist8_sync_together79_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg13(REG,177)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist10_sync_together79_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i32_j_011_push11_matvec0_i_llvm_fpga_push_i32_j_011_push11_matvec1_x(FIFODELAY,150)@3 + 1
    // in i_valid@5
    // in i_write_pred@5
    // in i_data@6
    // out o_data@6
    assign i_llvm_fpga_push_i32_j_011_push11_matvec0_i_llvm_fpga_push_i32_j_011_push11_matvec1_x_i_stall = ~ (valid_fanout_reg14_q & redist14_i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_inv_pred_x_q_2_q);
    assign i_llvm_fpga_push_i32_j_011_push11_matvec0_i_llvm_fpga_push_i32_j_011_push11_matvec1_x_i_valid = valid_fanout_reg13_q & redist16_i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_inv_pred_x_q_4_q;
    assign i_llvm_fpga_push_i32_j_011_push11_matvec0_i_llvm_fpga_push_i32_j_011_push11_matvec1_x_i_data = bgTrunc_i_inc_matvec20_sel_x_b;
    assign i_llvm_fpga_push_i32_j_011_push11_matvec0_i_llvm_fpga_push_i32_j_011_push11_matvec1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_j_011_push11_matvec0_i_llvm_fpga_push_i32_j_011_push11_matvec1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_j_011_push11_matvec0_i_llvm_fpga_push_i32_j_011_push11_matvec1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_j_011_push11_matvec0_i_llvm_fpga_push_i32_j_011_push11_matvec1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_j_011_push11_matvec0_i_llvm_fpga_push_i32_j_011_push11_matvec1_x (
        .i_valid(i_llvm_fpga_push_i32_j_011_push11_matvec0_i_llvm_fpga_push_i32_j_011_push11_matvec1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_j_011_push11_matvec0_i_llvm_fpga_push_i32_j_011_push11_matvec1_x_i_stall_bitsignaltemp),
        .i_data(bgTrunc_i_inc_matvec20_sel_x_b),
        .o_data(i_llvm_fpga_push_i32_j_011_push11_matvec0_i_llvm_fpga_push_i32_j_011_push11_matvec1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_j_011_pop11_matvec0_i_llvm_fpga_pop_i32_j_011_pop11_matvec11_mux_x(MUX,132)@6
    assign i_llvm_fpga_pop_i32_j_011_pop11_matvec0_i_llvm_fpga_pop_i32_j_011_pop11_matvec11_mux_x_s = redist26_i_llvm_fpga_forked_matvec_b3_forked_matvec3_out_buffer_out_6_q;
    always @(i_llvm_fpga_pop_i32_j_011_pop11_matvec0_i_llvm_fpga_pop_i32_j_011_pop11_matvec11_mux_x_s or i_llvm_fpga_push_i32_j_011_push11_matvec0_i_llvm_fpga_push_i32_j_011_push11_matvec1_x_o_data or c_i32_068_q)
    begin
        unique case (i_llvm_fpga_pop_i32_j_011_pop11_matvec0_i_llvm_fpga_pop_i32_j_011_pop11_matvec11_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_j_011_pop11_matvec0_i_llvm_fpga_pop_i32_j_011_pop11_matvec11_mux_x_q = i_llvm_fpga_push_i32_j_011_push11_matvec0_i_llvm_fpga_push_i32_j_011_push11_matvec1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_j_011_pop11_matvec0_i_llvm_fpga_pop_i32_j_011_pop11_matvec11_mux_x_q = c_i32_068_q;
            default : i_llvm_fpga_pop_i32_j_011_pop11_matvec0_i_llvm_fpga_pop_i32_j_011_pop11_matvec11_mux_x_q = 32'b0;
        endcase
    end

    // i_idxprom_matvec12_sel_x(BITSELECT,128)@6
    assign i_idxprom_matvec12_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_j_011_pop11_matvec0_i_llvm_fpga_pop_i32_j_011_pop11_matvec11_mux_x_q[31:0]};

    // i_idxprom_matvec12_vt_select_31(BITSELECT,65)@6
    assign i_idxprom_matvec12_vt_select_31_b = i_idxprom_matvec12_sel_x_b[31:0];

    // i_idxprom_matvec12_vt_join(BITJOIN,64)@6
    assign i_idxprom_matvec12_vt_join_q = {c_i32_068_q, i_idxprom_matvec12_vt_select_31_b};

    // i_arrayidx1_matvec0_dupName_0_trunc_sel_x(BITSELECT,125)@6
    assign i_arrayidx1_matvec0_dupName_0_trunc_sel_x_b = i_idxprom_matvec12_vt_join_q[6:0];

    // i_arrayidx1_matvec0_narrow_x(BITSELECT,118)@6
    assign i_arrayidx1_matvec0_narrow_x_b = i_arrayidx1_matvec0_dupName_0_trunc_sel_x_b[4:0];

    // i_arrayidx1_matvec0_shift_join_x(BITJOIN,119)@6
    assign i_arrayidx1_matvec0_shift_join_x_q = {i_arrayidx1_matvec0_narrow_x_b, i_arrayidx102_matvec15_vt_const_1_q};

    // i_arrayidx1_matvec0_add_x(ADD,115)@6
    assign i_arrayidx1_matvec0_add_x_a = {1'b0, i_arrayidx1_matvec0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx1_matvec0_add_x_b = {1'b0, i_arrayidx1_matvec0_shift_join_x_q};
    assign i_arrayidx1_matvec0_add_x_o = $unsigned(i_arrayidx1_matvec0_add_x_a) + $unsigned(i_arrayidx1_matvec0_add_x_b);
    assign i_arrayidx1_matvec0_add_x_q = i_arrayidx1_matvec0_add_x_o[7:0];

    // i_arrayidx1_matvec0_dupName_2_trunc_sel_x(BITSELECT,126)@6
    assign i_arrayidx1_matvec0_dupName_2_trunc_sel_x_b = i_arrayidx1_matvec0_add_x_q[6:0];

    // i_arrayidx1_matvec0_append_upper_bits_x(BITJOIN,116)@6
    assign i_arrayidx1_matvec0_append_upper_bits_x_q = {i_arrayidx1_matvec0_upper_bits_x_merged_bit_select_b, i_arrayidx1_matvec0_dupName_2_trunc_sel_x_b};

    // i_arrayidx1_matvec13_vt_select_63(BITSELECT,55)@6
    assign i_arrayidx1_matvec13_vt_select_63_b = i_arrayidx1_matvec0_append_upper_bits_x_q[63:2];

    // i_arrayidx1_matvec13_vt_join(BITJOIN,54)@6
    assign i_arrayidx1_matvec13_vt_join_q = {i_arrayidx1_matvec13_vt_select_63_b, i_arrayidx102_matvec15_vt_const_1_q};

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_mem_unnamed_matvec2_matvec14(BLACKBOX,69)@6
    // out out_o_almost_empty@10
    // out out_o_empty@10
    // out out_o_readdata@10
    // out out_o_stall@10
    // out out_o_valid@10
    // out out_unnamed_matvec2_matvec_avm_address@20000000
    // out out_unnamed_matvec2_matvec_avm_burstcount@20000000
    // out out_unnamed_matvec2_matvec_avm_byteenable@20000000
    // out out_unnamed_matvec2_matvec_avm_enable@20000000
    // out out_unnamed_matvec2_matvec_avm_read@20000000
    // out out_unnamed_matvec2_matvec_avm_write@20000000
    // out out_unnamed_matvec2_matvec_avm_writedata@20000000
    matvec_i_llvm_fpga_mem_unnamed_2_matvec0 thei_llvm_fpga_mem_unnamed_matvec2_matvec14 (
        .in_almost_empty_in(GND_q),
        .in_empty_in(GND_q),
        .in_flush(in_flush),
        .in_i_address(i_arrayidx1_matvec13_vt_join_q),
        .in_i_predicate(i_matvec_b3_current_iter_isspec_matvec5_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg7_q),
        .in_unnamed_matvec2_matvec_avm_readdata(in_unnamed_matvec2_matvec_avm_readdata),
        .in_unnamed_matvec2_matvec_avm_readdatavalid(in_unnamed_matvec2_matvec_avm_readdatavalid),
        .in_unnamed_matvec2_matvec_avm_waitrequest(in_unnamed_matvec2_matvec_avm_waitrequest),
        .in_unnamed_matvec2_matvec_avm_writeack(in_unnamed_matvec2_matvec_avm_writeack),
        .out_o_almost_empty(),
        .out_o_empty(),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_matvec2_matvec14_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_matvec2_matvec_avm_address(i_llvm_fpga_mem_unnamed_matvec2_matvec14_out_unnamed_matvec2_matvec_avm_address),
        .out_unnamed_matvec2_matvec_avm_burstcount(i_llvm_fpga_mem_unnamed_matvec2_matvec14_out_unnamed_matvec2_matvec_avm_burstcount),
        .out_unnamed_matvec2_matvec_avm_byteenable(i_llvm_fpga_mem_unnamed_matvec2_matvec14_out_unnamed_matvec2_matvec_avm_byteenable),
        .out_unnamed_matvec2_matvec_avm_enable(i_llvm_fpga_mem_unnamed_matvec2_matvec14_out_unnamed_matvec2_matvec_avm_enable),
        .out_unnamed_matvec2_matvec_avm_read(i_llvm_fpga_mem_unnamed_matvec2_matvec14_out_unnamed_matvec2_matvec_avm_read),
        .out_unnamed_matvec2_matvec_avm_write(i_llvm_fpga_mem_unnamed_matvec2_matvec14_out_unnamed_matvec2_matvec_avm_write),
        .out_unnamed_matvec2_matvec_avm_writedata(i_llvm_fpga_mem_unnamed_matvec2_matvec14_out_unnamed_matvec2_matvec_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,48)
    assign out_unnamed_matvec2_matvec_avm_address = i_llvm_fpga_mem_unnamed_matvec2_matvec14_out_unnamed_matvec2_matvec_avm_address;
    assign out_unnamed_matvec2_matvec_avm_enable = i_llvm_fpga_mem_unnamed_matvec2_matvec14_out_unnamed_matvec2_matvec_avm_enable;
    assign out_unnamed_matvec2_matvec_avm_read = i_llvm_fpga_mem_unnamed_matvec2_matvec14_out_unnamed_matvec2_matvec_avm_read;
    assign out_unnamed_matvec2_matvec_avm_write = i_llvm_fpga_mem_unnamed_matvec2_matvec14_out_unnamed_matvec2_matvec_avm_write;
    assign out_unnamed_matvec2_matvec_avm_writedata = i_llvm_fpga_mem_unnamed_matvec2_matvec14_out_unnamed_matvec2_matvec_avm_writedata;
    assign out_unnamed_matvec2_matvec_avm_byteenable = i_llvm_fpga_mem_unnamed_matvec2_matvec14_out_unnamed_matvec2_matvec_avm_byteenable;
    assign out_unnamed_matvec2_matvec_avm_burstcount = i_llvm_fpga_mem_unnamed_matvec2_matvec14_out_unnamed_matvec2_matvec_avm_burstcount;

    // regfree_osync(GPOUT,79)
    assign out_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_matvec6_out_exiting_valid_out;

    // valid_fanout_reg8(REG,172)@5 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist11_sync_together79_aunroll_x_in_i_valid_5_q);
        end
    end

    // c_matvec_M_local_pmem(CONSTANT,45)
    assign c_matvec_M_local_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx102_matvec0_upper_bits_x_merged_bit_select(BITSELECT,274)@5
    assign i_arrayidx102_matvec0_upper_bits_x_merged_bit_select_b = c_matvec_M_local_pmem_q[63:12];
    assign i_arrayidx102_matvec0_upper_bits_x_merged_bit_select_c = c_matvec_M_local_pmem_q[11:0];

    // redist0_i_arrayidx102_matvec0_upper_bits_x_merged_bit_select_b_1(DELAY,278)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_i_arrayidx102_matvec0_upper_bits_x_merged_bit_select_b_1_q <= $unsigned(i_arrayidx102_matvec0_upper_bits_x_merged_bit_select_b);
        end
    end

    // i_arrayidx102_matvec0_dupName_3_trunc_sel_x(BITSELECT,113)@6
    assign i_arrayidx102_matvec0_dupName_3_trunc_sel_x_b = i_idxprom_matvec12_vt_join_q[11:0];

    // i_arrayidx102_matvec0_narrow_x(BITSELECT,96)@6
    assign i_arrayidx102_matvec0_narrow_x_b = i_arrayidx102_matvec0_dupName_3_trunc_sel_x_b[9:0];

    // i_arrayidx102_matvec0_shift_join_x(BITJOIN,97)@6
    assign i_arrayidx102_matvec0_shift_join_x_q = {i_arrayidx102_matvec0_narrow_x_b, i_arrayidx102_matvec15_vt_const_1_q};

    // i_arrayidx102_matvec0_mult_multconst_x(CONSTANT,108)
    assign i_arrayidx102_matvec0_mult_multconst_x_q = $unsigned(5'b00000);

    // redist6_sync_together79_aunroll_x_in_c0_eni3_1_tpl_4_inputreg0(DELAY,308)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_sync_together79_aunroll_x_in_c0_eni3_1_tpl_4_inputreg0_q <= $unsigned(in_c0_eni3_1_tpl);
        end
    end

    // redist6_sync_together79_aunroll_x_in_c0_eni3_1_tpl_4(DELAY,284)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_sync_together79_aunroll_x_in_c0_eni3_1_tpl_4_delay_0 <= $unsigned(redist6_sync_together79_aunroll_x_in_c0_eni3_1_tpl_4_inputreg0_q);
            redist6_sync_together79_aunroll_x_in_c0_eni3_1_tpl_4_delay_1 <= redist6_sync_together79_aunroll_x_in_c0_eni3_1_tpl_4_delay_0;
            redist6_sync_together79_aunroll_x_in_c0_eni3_1_tpl_4_q <= redist6_sync_together79_aunroll_x_in_c0_eni3_1_tpl_4_delay_1;
        end
    end

    // valid_fanout_reg12(REG,176)@0 + 1
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

    // valid_fanout_reg11(REG,175)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist8_sync_together79_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i32_i_013_pop815_push13_matvec0_i_llvm_fpga_push_i32_i_013_pop815_push13_matvec1_x(FIFODELAY,147)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i32_i_013_pop815_push13_matvec0_i_llvm_fpga_push_i32_i_013_pop815_push13_matvec1_x_i_stall = ~ (valid_fanout_reg12_q & i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_inv_pred_x_q);
    assign i_llvm_fpga_push_i32_i_013_pop815_push13_matvec0_i_llvm_fpga_push_i32_i_013_pop815_push13_matvec1_x_i_valid = valid_fanout_reg11_q & redist14_i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i32_i_013_pop815_push13_matvec0_i_llvm_fpga_push_i32_i_013_pop815_push13_matvec1_x_i_data = i_llvm_fpga_pop_i32_i_013_pop815_pop13_matvec0_i_llvm_fpga_pop_i32_i_013_pop815_pop13_matvec9_mux_x_q;
    assign i_llvm_fpga_push_i32_i_013_pop815_push13_matvec0_i_llvm_fpga_push_i32_i_013_pop815_push13_matvec1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_i_013_pop815_push13_matvec0_i_llvm_fpga_push_i32_i_013_pop815_push13_matvec1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_i_013_pop815_push13_matvec0_i_llvm_fpga_push_i32_i_013_pop815_push13_matvec1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_i_013_pop815_push13_matvec0_i_llvm_fpga_push_i32_i_013_pop815_push13_matvec1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_i_013_pop815_push13_matvec0_i_llvm_fpga_push_i32_i_013_pop815_push13_matvec1_x (
        .i_valid(i_llvm_fpga_push_i32_i_013_pop815_push13_matvec0_i_llvm_fpga_push_i32_i_013_pop815_push13_matvec1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_i_013_pop815_push13_matvec0_i_llvm_fpga_push_i32_i_013_pop815_push13_matvec1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i32_i_013_pop815_pop13_matvec0_i_llvm_fpga_pop_i32_i_013_pop815_pop13_matvec9_mux_x_q),
        .o_data(i_llvm_fpga_push_i32_i_013_pop815_push13_matvec0_i_llvm_fpga_push_i32_i_013_pop815_push13_matvec1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_013_pop815_pop13_matvec0_i_llvm_fpga_pop_i32_i_013_pop815_pop13_matvec9_mux_x(MUX,131)@4
    assign i_llvm_fpga_pop_i32_i_013_pop815_pop13_matvec0_i_llvm_fpga_pop_i32_i_013_pop815_pop13_matvec9_mux_x_s = redist25_i_llvm_fpga_forked_matvec_b3_forked_matvec3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i32_i_013_pop815_pop13_matvec0_i_llvm_fpga_pop_i32_i_013_pop815_pop13_matvec9_mux_x_s or i_llvm_fpga_push_i32_i_013_pop815_push13_matvec0_i_llvm_fpga_push_i32_i_013_pop815_push13_matvec1_x_o_data or redist6_sync_together79_aunroll_x_in_c0_eni3_1_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i32_i_013_pop815_pop13_matvec0_i_llvm_fpga_pop_i32_i_013_pop815_pop13_matvec9_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_i_013_pop815_pop13_matvec0_i_llvm_fpga_pop_i32_i_013_pop815_pop13_matvec9_mux_x_q = i_llvm_fpga_push_i32_i_013_pop815_push13_matvec0_i_llvm_fpga_push_i32_i_013_pop815_push13_matvec1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_i_013_pop815_pop13_matvec0_i_llvm_fpga_pop_i32_i_013_pop815_pop13_matvec9_mux_x_q = redist6_sync_together79_aunroll_x_in_c0_eni3_1_tpl_4_q;
            default : i_llvm_fpga_pop_i32_i_013_pop815_pop13_matvec0_i_llvm_fpga_pop_i32_i_013_pop815_pop13_matvec9_mux_x_q = 32'b0;
        endcase
    end

    // i_idxprom7_matvec10_sel_x(BITSELECT,127)@4
    assign i_idxprom7_matvec10_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_i_013_pop815_pop13_matvec0_i_llvm_fpga_pop_i32_i_013_pop815_pop13_matvec9_mux_x_q[31:0]};

    // i_idxprom7_matvec10_vt_select_31(BITSELECT,61)@4
    assign i_idxprom7_matvec10_vt_select_31_b = i_idxprom7_matvec10_sel_x_b[31:0];

    // i_idxprom7_matvec10_vt_join(BITJOIN,60)@4
    assign i_idxprom7_matvec10_vt_join_q = {c_i32_068_q, i_idxprom7_matvec10_vt_select_31_b};

    // i_arrayidx102_matvec0_dupName_0_trunc_sel_x(BITSELECT,110)@4
    assign i_arrayidx102_matvec0_dupName_0_trunc_sel_x_b = i_idxprom7_matvec10_vt_join_q[11:0];

    // xIfSign_mergedSignalTM_uid240_i_arrayidx102_matvec0_mult_x(BITJOIN,239)@4
    assign xIfSign_mergedSignalTM_uid240_i_arrayidx102_matvec0_mult_x_q = {GND_q, i_arrayidx102_matvec0_dupName_0_trunc_sel_x_b};

    // padACst_uid244_i_arrayidx102_matvec0_mult_x(CONSTANT,243)
    assign padACst_uid244_i_arrayidx102_matvec0_mult_x_q = $unsigned(4'b0000);

    // aPostPad_uid245_i_arrayidx102_matvec0_mult_x(BITJOIN,244)@4
    assign aPostPad_uid245_i_arrayidx102_matvec0_mult_x_q = {xIfSign_mergedSignalTM_uid240_i_arrayidx102_matvec0_mult_x_q, padACst_uid244_i_arrayidx102_matvec0_mult_x_q};

    // sub_uid246_i_arrayidx102_matvec0_mult_x(SUB,245)@4
    assign sub_uid246_i_arrayidx102_matvec0_mult_x_a = $unsigned({{1{aPostPad_uid245_i_arrayidx102_matvec0_mult_x_q[16]}}, aPostPad_uid245_i_arrayidx102_matvec0_mult_x_q});
    assign sub_uid246_i_arrayidx102_matvec0_mult_x_b = $unsigned({{5{xIfSign_mergedSignalTM_uid240_i_arrayidx102_matvec0_mult_x_q[12]}}, xIfSign_mergedSignalTM_uid240_i_arrayidx102_matvec0_mult_x_q});
    assign sub_uid246_i_arrayidx102_matvec0_mult_x_o = $unsigned($signed(sub_uid246_i_arrayidx102_matvec0_mult_x_a) - $signed(sub_uid246_i_arrayidx102_matvec0_mult_x_b));
    assign sub_uid246_i_arrayidx102_matvec0_mult_x_q = sub_uid246_i_arrayidx102_matvec0_mult_x_o[17:0];

    // sR_bottomRange_uid250_i_arrayidx102_matvec0_mult_x(BITSELECT,249)@4
    assign sR_bottomRange_uid250_i_arrayidx102_matvec0_mult_x_in = $unsigned(sub_uid246_i_arrayidx102_matvec0_mult_x_q[15:0]);
    assign sR_bottomRange_uid250_i_arrayidx102_matvec0_mult_x_b = $unsigned(sR_bottomRange_uid250_i_arrayidx102_matvec0_mult_x_in[15:0]);

    // sR_bottomExtension_uid249_i_arrayidx102_matvec0_mult_x(CONSTANT,248)
    assign sR_bottomExtension_uid249_i_arrayidx102_matvec0_mult_x_q = $unsigned(3'b000);

    // sR_mergedSignalTM_uid251_i_arrayidx102_matvec0_mult_x(BITJOIN,250)@4
    assign sR_mergedSignalTM_uid251_i_arrayidx102_matvec0_mult_x_q = {sR_bottomRange_uid250_i_arrayidx102_matvec0_mult_x_b, sR_bottomExtension_uid249_i_arrayidx102_matvec0_mult_x_q};

    // i_arrayidx102_matvec0_mult_extender_x(BITJOIN,107)@4
    assign i_arrayidx102_matvec0_mult_extender_x_q = {i_arrayidx102_matvec0_mult_multconst_x_q, sR_mergedSignalTM_uid251_i_arrayidx102_matvec0_mult_x_q};

    // i_arrayidx102_matvec0_dupName_1_trunc_sel_x(BITSELECT,111)@4
    assign i_arrayidx102_matvec0_dupName_1_trunc_sel_x_b = i_arrayidx102_matvec0_mult_extender_x_q[11:0];

    // redist21_i_arrayidx102_matvec0_dupName_1_trunc_sel_x_b_1(DELAY,299)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist21_i_arrayidx102_matvec0_dupName_1_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx102_matvec0_dupName_1_trunc_sel_x_b);
        end
    end

    // i_arrayidx102_matvec0_add_x(ADD,91)@5
    assign i_arrayidx102_matvec0_add_x_a = {1'b0, i_arrayidx102_matvec0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx102_matvec0_add_x_b = {1'b0, redist21_i_arrayidx102_matvec0_dupName_1_trunc_sel_x_b_1_q};
    assign i_arrayidx102_matvec0_add_x_o = $unsigned(i_arrayidx102_matvec0_add_x_a) + $unsigned(i_arrayidx102_matvec0_add_x_b);
    assign i_arrayidx102_matvec0_add_x_q = i_arrayidx102_matvec0_add_x_o[12:0];

    // i_arrayidx102_matvec0_dupName_2_trunc_sel_x(BITSELECT,112)@5
    assign i_arrayidx102_matvec0_dupName_2_trunc_sel_x_b = i_arrayidx102_matvec0_add_x_q[11:0];

    // redist20_i_arrayidx102_matvec0_dupName_2_trunc_sel_x_b_1(DELAY,298)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist20_i_arrayidx102_matvec0_dupName_2_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx102_matvec0_dupName_2_trunc_sel_x_b);
        end
    end

    // i_arrayidx102_matvec0_dupName_0_add_x(ADD,101)@6
    assign i_arrayidx102_matvec0_dupName_0_add_x_a = {1'b0, redist20_i_arrayidx102_matvec0_dupName_2_trunc_sel_x_b_1_q};
    assign i_arrayidx102_matvec0_dupName_0_add_x_b = {1'b0, i_arrayidx102_matvec0_shift_join_x_q};
    assign i_arrayidx102_matvec0_dupName_0_add_x_o = $unsigned(i_arrayidx102_matvec0_dupName_0_add_x_a) + $unsigned(i_arrayidx102_matvec0_dupName_0_add_x_b);
    assign i_arrayidx102_matvec0_dupName_0_add_x_q = i_arrayidx102_matvec0_dupName_0_add_x_o[12:0];

    // i_arrayidx102_matvec0_dupName_5_trunc_sel_x(BITSELECT,114)@6
    assign i_arrayidx102_matvec0_dupName_5_trunc_sel_x_b = i_arrayidx102_matvec0_dupName_0_add_x_q[11:0];

    // i_arrayidx102_matvec0_append_upper_bits_x(BITJOIN,92)@6
    assign i_arrayidx102_matvec0_append_upper_bits_x_q = {redist0_i_arrayidx102_matvec0_upper_bits_x_merged_bit_select_b_1_q, i_arrayidx102_matvec0_dupName_5_trunc_sel_x_b};

    // i_arrayidx102_matvec15_vt_select_63(BITSELECT,52)@6
    assign i_arrayidx102_matvec15_vt_select_63_b = i_arrayidx102_matvec0_append_upper_bits_x_q[63:2];

    // i_arrayidx102_matvec15_vt_join(BITJOIN,51)@6
    assign i_arrayidx102_matvec15_vt_join_q = {i_arrayidx102_matvec15_vt_select_63_b, i_arrayidx102_matvec15_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_matvec3_matvec16(BLACKBOX,70)@6
    // out out_o_almost_empty@10
    // out out_o_empty@10
    // out out_o_readdata@10
    // out out_o_stall@10
    // out out_o_valid@10
    // out out_unnamed_matvec3_matvec_avm_address@20000000
    // out out_unnamed_matvec3_matvec_avm_burstcount@20000000
    // out out_unnamed_matvec3_matvec_avm_byteenable@20000000
    // out out_unnamed_matvec3_matvec_avm_enable@20000000
    // out out_unnamed_matvec3_matvec_avm_read@20000000
    // out out_unnamed_matvec3_matvec_avm_write@20000000
    // out out_unnamed_matvec3_matvec_avm_writedata@20000000
    matvec_i_llvm_fpga_mem_unnamed_3_matvec0 thei_llvm_fpga_mem_unnamed_matvec3_matvec16 (
        .in_almost_empty_in(GND_q),
        .in_empty_in(GND_q),
        .in_flush(in_flush),
        .in_i_address(i_arrayidx102_matvec15_vt_join_q),
        .in_i_predicate(i_matvec_b3_current_iter_isspec_matvec5_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg8_q),
        .in_unnamed_matvec3_matvec_avm_readdata(in_unnamed_matvec3_matvec_avm_readdata),
        .in_unnamed_matvec3_matvec_avm_readdatavalid(in_unnamed_matvec3_matvec_avm_readdatavalid),
        .in_unnamed_matvec3_matvec_avm_waitrequest(in_unnamed_matvec3_matvec_avm_waitrequest),
        .in_unnamed_matvec3_matvec_avm_writeack(in_unnamed_matvec3_matvec_avm_writeack),
        .out_o_almost_empty(),
        .out_o_empty(),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_matvec3_matvec16_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_matvec3_matvec_avm_address(i_llvm_fpga_mem_unnamed_matvec3_matvec16_out_unnamed_matvec3_matvec_avm_address),
        .out_unnamed_matvec3_matvec_avm_burstcount(i_llvm_fpga_mem_unnamed_matvec3_matvec16_out_unnamed_matvec3_matvec_avm_burstcount),
        .out_unnamed_matvec3_matvec_avm_byteenable(i_llvm_fpga_mem_unnamed_matvec3_matvec16_out_unnamed_matvec3_matvec_avm_byteenable),
        .out_unnamed_matvec3_matvec_avm_enable(i_llvm_fpga_mem_unnamed_matvec3_matvec16_out_unnamed_matvec3_matvec_avm_enable),
        .out_unnamed_matvec3_matvec_avm_read(i_llvm_fpga_mem_unnamed_matvec3_matvec16_out_unnamed_matvec3_matvec_avm_read),
        .out_unnamed_matvec3_matvec_avm_write(i_llvm_fpga_mem_unnamed_matvec3_matvec16_out_unnamed_matvec3_matvec_avm_write),
        .out_unnamed_matvec3_matvec_avm_writedata(i_llvm_fpga_mem_unnamed_matvec3_matvec16_out_unnamed_matvec3_matvec_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,87)
    assign out_unnamed_matvec3_matvec_avm_address = i_llvm_fpga_mem_unnamed_matvec3_matvec16_out_unnamed_matvec3_matvec_avm_address;
    assign out_unnamed_matvec3_matvec_avm_enable = i_llvm_fpga_mem_unnamed_matvec3_matvec16_out_unnamed_matvec3_matvec_avm_enable;
    assign out_unnamed_matvec3_matvec_avm_read = i_llvm_fpga_mem_unnamed_matvec3_matvec16_out_unnamed_matvec3_matvec_avm_read;
    assign out_unnamed_matvec3_matvec_avm_write = i_llvm_fpga_mem_unnamed_matvec3_matvec16_out_unnamed_matvec3_matvec_avm_write;
    assign out_unnamed_matvec3_matvec_avm_writedata = i_llvm_fpga_mem_unnamed_matvec3_matvec16_out_unnamed_matvec3_matvec_avm_writedata;
    assign out_unnamed_matvec3_matvec_avm_byteenable = i_llvm_fpga_mem_unnamed_matvec3_matvec16_out_unnamed_matvec3_matvec_avm_byteenable;
    assign out_unnamed_matvec3_matvec_avm_burstcount = i_llvm_fpga_mem_unnamed_matvec3_matvec16_out_unnamed_matvec3_matvec_avm_burstcount;

    // dupName_0_regfree_osync_x(GPOUT,88)
    assign out_pipeline_dummy_out = i_llvm_fpga_pipeline_keep_going_matvec6_out_pipeline_dummy_out;

    // dupName_1_regfree_osync_x(GPOUT,89)
    assign out_pipeline_forked_out = i_llvm_fpga_pipeline_keep_going_matvec6_out_pipeline_forked_out;

    // dupName_2_regfree_osync_x(GPOUT,90)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_matvec6_out_pipeline_valid_out;

    // redist12_sync_together79_aunroll_x_in_i_valid_14(DELAY,290)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("SYNC"), .phase(5), .modulus(2), .reset_high(1'b0) )
    redist12_sync_together79_aunroll_x_in_i_valid_14 ( .xin(redist11_sync_together79_aunroll_x_in_i_valid_5_q), .xout(redist12_sync_together79_aunroll_x_in_i_valid_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist13_sync_together79_aunroll_x_in_i_valid_16(DELAY,291)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist13_sync_together79_aunroll_x_in_i_valid_16_delay_0 <= '0;
        end
        else
        begin
            redist13_sync_together79_aunroll_x_in_i_valid_16_delay_0 <= $unsigned(redist12_sync_together79_aunroll_x_in_i_valid_14_q);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist13_sync_together79_aunroll_x_in_i_valid_16_q <= redist13_sync_together79_aunroll_x_in_i_valid_16_delay_0;
        end
    end

    // valid_fanout_reg0(REG,164)@16 + 1
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist13_sync_together79_aunroll_x_in_i_valid_16_q);
        end
    end

    // redist5_valid_fanout_reg0_q_1(DELAY,283)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_valid_fanout_reg0_q_1_q <= $unsigned(valid_fanout_reg0_q);
        end
    end

    // redist23_i_matvec_b3_current_iter_isspec_matvec5_q_12(DELAY,301)
    dspba_delay_ver #( .width(1), .depth(12), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist23_i_matvec_b3_current_iter_isspec_matvec5_q_12 ( .xin(i_matvec_b3_current_iter_isspec_matvec5_q), .xout(redist23_i_matvec_b3_current_iter_isspec_matvec5_q_12_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist7_sync_together79_aunroll_x_in_c0_eni3_3_tpl_4(DELAY,285)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_sync_together79_aunroll_x_in_c0_eni3_3_tpl_4_delay_0 <= $unsigned(in_c0_eni3_3_tpl);
            redist7_sync_together79_aunroll_x_in_c0_eni3_3_tpl_4_delay_1 <= redist7_sync_together79_aunroll_x_in_c0_eni3_3_tpl_4_delay_0;
            redist7_sync_together79_aunroll_x_in_c0_eni3_3_tpl_4_delay_2 <= redist7_sync_together79_aunroll_x_in_c0_eni3_3_tpl_4_delay_1;
            redist7_sync_together79_aunroll_x_in_c0_eni3_3_tpl_4_q <= redist7_sync_together79_aunroll_x_in_c0_eni3_3_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_push_i1_notcmp414_push12_matvec0_element_extension2_x(BITJOIN,143)@5
    assign i_llvm_fpga_push_i1_notcmp414_push12_matvec0_element_extension2_x_q = {i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_c_i7_03_x_q, i_llvm_fpga_pop_i1_notcmp414_pop12_matvec0_i_llvm_fpga_pop_i1_notcmp414_pop12_matvec31_mux_x_q};

    // valid_fanout_reg22(REG,186)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg22_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg21(REG,185)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg21_q <= $unsigned(redist9_sync_together79_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp414_push12_matvec0_i_llvm_fpga_push_i1_notcmp414_push12_matvec1_x(FIFODELAY,144)@1
    // in i_valid@4
    // in i_write_pred@4
    // in i_data@5
    // out o_data@4
    assign i_llvm_fpga_push_i1_notcmp414_push12_matvec0_i_llvm_fpga_push_i1_notcmp414_push12_matvec1_x_i_stall = ~ (valid_fanout_reg22_q & i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_notcmp414_push12_matvec0_i_llvm_fpga_push_i1_notcmp414_push12_matvec1_x_i_valid = valid_fanout_reg21_q & redist15_i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_inv_pred_x_q_3_q;
    assign i_llvm_fpga_push_i1_notcmp414_push12_matvec0_i_llvm_fpga_push_i1_notcmp414_push12_matvec1_x_i_data = i_llvm_fpga_push_i1_notcmp414_push12_matvec0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_notcmp414_push12_matvec0_i_llvm_fpga_push_i1_notcmp414_push12_matvec1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_notcmp414_push12_matvec0_i_llvm_fpga_push_i1_notcmp414_push12_matvec1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_notcmp414_push12_matvec0_i_llvm_fpga_push_i1_notcmp414_push12_matvec1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_notcmp414_push12_matvec0_i_llvm_fpga_push_i1_notcmp414_push12_matvec1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_notcmp414_push12_matvec0_i_llvm_fpga_push_i1_notcmp414_push12_matvec1_x (
        .i_valid(i_llvm_fpga_push_i1_notcmp414_push12_matvec0_i_llvm_fpga_push_i1_notcmp414_push12_matvec1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_notcmp414_push12_matvec0_i_llvm_fpga_push_i1_notcmp414_push12_matvec1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_notcmp414_push12_matvec0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_notcmp414_push12_matvec0_i_llvm_fpga_push_i1_notcmp414_push12_matvec1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_notcmp414_push12_matvec0_adapt_scalar_trunc4_sel_x(BITSELECT,146)@4
    assign i_llvm_fpga_push_i1_notcmp414_push12_matvec0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_notcmp414_push12_matvec0_i_llvm_fpga_push_i1_notcmp414_push12_matvec1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_notcmp414_pop12_matvec0_i_llvm_fpga_pop_i1_notcmp414_pop12_matvec31_mux_x(MUX,130)@4 + 1
    assign i_llvm_fpga_pop_i1_notcmp414_pop12_matvec0_i_llvm_fpga_pop_i1_notcmp414_pop12_matvec31_mux_x_s = redist25_i_llvm_fpga_forked_matvec_b3_forked_matvec3_out_buffer_out_4_q;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_llvm_fpga_pop_i1_notcmp414_pop12_matvec0_i_llvm_fpga_pop_i1_notcmp414_pop12_matvec31_mux_x_s)
                1'b0 : i_llvm_fpga_pop_i1_notcmp414_pop12_matvec0_i_llvm_fpga_pop_i1_notcmp414_pop12_matvec31_mux_x_q <= i_llvm_fpga_push_i1_notcmp414_push12_matvec0_adapt_scalar_trunc4_sel_x_b;
                1'b1 : i_llvm_fpga_pop_i1_notcmp414_pop12_matvec0_i_llvm_fpga_pop_i1_notcmp414_pop12_matvec31_mux_x_q <= redist7_sync_together79_aunroll_x_in_c0_eni3_3_tpl_4_q;
                default : i_llvm_fpga_pop_i1_notcmp414_pop12_matvec0_i_llvm_fpga_pop_i1_notcmp414_pop12_matvec31_mux_x_q <= 1'b0;
            endcase
        end
    end

    // redist19_i_llvm_fpga_pop_i1_notcmp414_pop12_matvec0_i_llvm_fpga_pop_i1_notcmp414_pop12_matvec31_mux_x_q_14(DELAY,297)
    dspba_delay_ver #( .width(1), .depth(13), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist19_i_llvm_fpga_pop_i1_notcmp414_pop12_matvec0_i_llvm_fpga_pop_i1_notcmp414_pop12_matvec31_mux_x_q_14 ( .xin(i_llvm_fpga_pop_i1_notcmp414_pop12_matvec0_i_llvm_fpga_pop_i1_notcmp414_pop12_matvec31_mux_x_q), .xout(redist19_i_llvm_fpga_pop_i1_notcmp414_pop12_matvec0_i_llvm_fpga_pop_i1_notcmp414_pop12_matvec31_mux_x_q_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_notcmp_matvec27(LOGICAL,76)@18
    assign i_notcmp_matvec27_q = redist4_i_exitcond_matvec22_cmp_nsign_q_14_q ^ VCC_q;

    // redist4_i_exitcond_matvec22_cmp_nsign_q_14(DELAY,282)
    dspba_delay_ver #( .width(1), .depth(14), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist4_i_exitcond_matvec22_cmp_nsign_q_14 ( .xin(i_exitcond_matvec22_cmp_nsign_q), .xout(redist4_i_exitcond_matvec22_cmp_nsign_q_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist17_i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_inv_pred_x_q_14(DELAY,295)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist17_i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_inv_pred_x_q_14 ( .xin(redist16_i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_inv_pred_x_q_4_q), .xout(redist17_i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_inv_pred_x_q_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg16(REG,180)@14 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist12_sync_together79_aunroll_x_in_i_valid_14_q);
        end
    end

    // redist18_i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_inv_pred_x_q_16(DELAY,296)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist18_i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_inv_pred_x_q_16_delay_0 <= $unsigned(redist17_i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_inv_pred_x_q_14_q);
            redist18_i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_inv_pred_x_q_16_q <= redist18_i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_inv_pred_x_q_16_delay_0;
        end
    end

    // valid_fanout_reg15(REG,179)@16 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist13_sync_together79_aunroll_x_in_i_valid_16_q);
        end
    end

    // i_llvm_fpga_push_i32_tmp_012_push10_matvec0_i_llvm_fpga_push_i32_tmp_012_push10_matvec1_x(FIFODELAY,153)@15 + 1
    // in i_valid@17
    // in i_write_pred@17
    // in i_data@18
    // out o_data@18
    assign i_llvm_fpga_push_i32_tmp_012_push10_matvec0_i_llvm_fpga_push_i32_tmp_012_push10_matvec1_x_i_stall = ~ (valid_fanout_reg16_q & redist17_i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_inv_pred_x_q_14_q);
    assign i_llvm_fpga_push_i32_tmp_012_push10_matvec0_i_llvm_fpga_push_i32_tmp_012_push10_matvec1_x_i_valid = valid_fanout_reg15_q & redist18_i_llvm_fpga_push_i1_matvec_b3_next_iter_isreal_push_matvec0_inv_pred_x_q_16_q;
    assign i_llvm_fpga_push_i32_tmp_012_push10_matvec0_i_llvm_fpga_push_i32_tmp_012_push10_matvec1_x_i_data = bgTrunc_i_add_matvec19_sel_x_b;
    assign i_llvm_fpga_push_i32_tmp_012_push10_matvec0_i_llvm_fpga_push_i32_tmp_012_push10_matvec1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_tmp_012_push10_matvec0_i_llvm_fpga_push_i32_tmp_012_push10_matvec1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_tmp_012_push10_matvec0_i_llvm_fpga_push_i32_tmp_012_push10_matvec1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_tmp_012_push10_matvec0_i_llvm_fpga_push_i32_tmp_012_push10_matvec1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_tmp_012_push10_matvec0_i_llvm_fpga_push_i32_tmp_012_push10_matvec1_x (
        .i_valid(i_llvm_fpga_push_i32_tmp_012_push10_matvec0_i_llvm_fpga_push_i32_tmp_012_push10_matvec1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_tmp_012_push10_matvec0_i_llvm_fpga_push_i32_tmp_012_push10_matvec1_x_i_stall_bitsignaltemp),
        .i_data(bgTrunc_i_add_matvec19_sel_x_b),
        .o_data(i_llvm_fpga_push_i32_tmp_012_push10_matvec0_i_llvm_fpga_push_i32_tmp_012_push10_matvec1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // redist27_i_llvm_fpga_forked_matvec_b3_forked_matvec3_out_buffer_out_18(DELAY,305)
    dspba_delay_ver #( .width(1), .depth(12), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist27_i_llvm_fpga_forked_matvec_b3_forked_matvec3_out_buffer_out_18 ( .xin(redist26_i_llvm_fpga_forked_matvec_b3_forked_matvec3_out_buffer_out_6_q), .xout(redist27_i_llvm_fpga_forked_matvec_b3_forked_matvec3_out_buffer_out_18_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_pop_i32_tmp_012_pop10_matvec0_i_llvm_fpga_pop_i32_tmp_012_pop10_matvec18_mux_x(MUX,133)@18
    assign i_llvm_fpga_pop_i32_tmp_012_pop10_matvec0_i_llvm_fpga_pop_i32_tmp_012_pop10_matvec18_mux_x_s = redist27_i_llvm_fpga_forked_matvec_b3_forked_matvec3_out_buffer_out_18_q;
    always @(i_llvm_fpga_pop_i32_tmp_012_pop10_matvec0_i_llvm_fpga_pop_i32_tmp_012_pop10_matvec18_mux_x_s or i_llvm_fpga_push_i32_tmp_012_push10_matvec0_i_llvm_fpga_push_i32_tmp_012_push10_matvec1_x_o_data or c_i32_068_q)
    begin
        unique case (i_llvm_fpga_pop_i32_tmp_012_pop10_matvec0_i_llvm_fpga_pop_i32_tmp_012_pop10_matvec18_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_tmp_012_pop10_matvec0_i_llvm_fpga_pop_i32_tmp_012_pop10_matvec18_mux_x_q = i_llvm_fpga_push_i32_tmp_012_push10_matvec0_i_llvm_fpga_push_i32_tmp_012_push10_matvec1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_tmp_012_pop10_matvec0_i_llvm_fpga_pop_i32_tmp_012_pop10_matvec18_mux_x_q = c_i32_068_q;
            default : i_llvm_fpga_pop_i32_tmp_012_pop10_matvec0_i_llvm_fpga_pop_i32_tmp_012_pop10_matvec18_mux_x_q = 32'b0;
        endcase
    end

    // i_mul_matvec17_bs3_merged_bit_select(BITSELECT,276)@10
    assign i_mul_matvec17_bs3_merged_bit_select_b = i_llvm_fpga_mem_unnamed_matvec2_matvec14_out_o_readdata[31:18];
    assign i_mul_matvec17_bs3_merged_bit_select_c = i_llvm_fpga_mem_unnamed_matvec2_matvec14_out_o_readdata[17:0];

    // i_mul_matvec17_bs1_merged_bit_select(BITSELECT,277)@10
    assign i_mul_matvec17_bs1_merged_bit_select_b = i_llvm_fpga_mem_unnamed_matvec3_matvec16_out_o_readdata[31:18];
    assign i_mul_matvec17_bs1_merged_bit_select_c = i_llvm_fpga_mem_unnamed_matvec3_matvec16_out_o_readdata[17:0];

    // i_mul_matvec17_ma5_cma(CHAINMULTADD,273)@10 + 5
    // out q@16
    assign i_mul_matvec17_ma5_cma_reset = ~ (resetn);
    assign i_mul_matvec17_ma5_cma_ena0 = 1'b1;
    assign i_mul_matvec17_ma5_cma_ena1 = i_mul_matvec17_ma5_cma_ena0;
    assign i_mul_matvec17_ma5_cma_ena2 = i_mul_matvec17_ma5_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul_matvec17_ma5_cma_ah[0] <= i_mul_matvec17_bs1_merged_bit_select_b;
            i_mul_matvec17_ma5_cma_ah[1] <= i_mul_matvec17_bs3_merged_bit_select_b;
            i_mul_matvec17_ma5_cma_ch[0] <= i_mul_matvec17_bs3_merged_bit_select_c;
            i_mul_matvec17_ma5_cma_ch[1] <= i_mul_matvec17_bs1_merged_bit_select_c;
        end
    end

    assign i_mul_matvec17_ma5_cma_a0 = i_mul_matvec17_ma5_cma_ah[0];
    assign i_mul_matvec17_ma5_cma_c0 = i_mul_matvec17_ma5_cma_ch[0];
    assign i_mul_matvec17_ma5_cma_a1 = i_mul_matvec17_ma5_cma_ah[1];
    assign i_mul_matvec17_ma5_cma_c1 = i_mul_matvec17_ma5_cma_ch[1];
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
    ) i_mul_matvec17_ma5_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_matvec17_ma5_cma_ena2, i_mul_matvec17_ma5_cma_ena1, i_mul_matvec17_ma5_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul_matvec17_ma5_cma_a1),
        .by(i_mul_matvec17_ma5_cma_a0),
        .ax(i_mul_matvec17_ma5_cma_c1),
        .bx(i_mul_matvec17_ma5_cma_c0),
        .resulta(i_mul_matvec17_ma5_cma_s0),
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
    i_mul_matvec17_ma5_cma_delay ( .xin(i_mul_matvec17_ma5_cma_s0), .xout(i_mul_matvec17_ma5_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_matvec17_ma5_cma_q = $unsigned(i_mul_matvec17_ma5_cma_qq[32:0]);

    // redist1_i_mul_matvec17_ma5_cma_q_1(DELAY,279)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_i_mul_matvec17_ma5_cma_q_1_q <= $unsigned(i_mul_matvec17_ma5_cma_q);
        end
    end

    // i_mul_matvec17_sums_align_1(BITSHIFT,212)@17
    assign i_mul_matvec17_sums_align_1_qint = { redist1_i_mul_matvec17_ma5_cma_q_1_q, 18'b000000000000000000 };
    assign i_mul_matvec17_sums_align_1_q = i_mul_matvec17_sums_align_1_qint[50:0];

    // i_mul_matvec17_bjB4(BITJOIN,202)@10
    assign i_mul_matvec17_bjB4_q = {GND_q, i_mul_matvec17_bs3_merged_bit_select_b};

    // i_mul_matvec17_bjA2(BITJOIN,200)@10
    assign i_mul_matvec17_bjA2_q = {GND_q, i_mul_matvec17_bs1_merged_bit_select_b};

    // i_mul_matvec17_im0_cma(CHAINMULTADD,271)@10 + 5
    // out q@16
    assign i_mul_matvec17_im0_cma_reset = ~ (resetn);
    assign i_mul_matvec17_im0_cma_ena0 = 1'b1;
    assign i_mul_matvec17_im0_cma_ena1 = i_mul_matvec17_im0_cma_ena0;
    assign i_mul_matvec17_im0_cma_ena2 = i_mul_matvec17_im0_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul_matvec17_im0_cma_ah[0] <= i_mul_matvec17_bjA2_q;
            i_mul_matvec17_im0_cma_ch[0] <= i_mul_matvec17_bjB4_q;
        end
    end

    assign i_mul_matvec17_im0_cma_a0 = $unsigned(i_mul_matvec17_im0_cma_ah[0]);
    assign i_mul_matvec17_im0_cma_c0 = $unsigned(i_mul_matvec17_im0_cma_ch[0]);
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
    ) i_mul_matvec17_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_matvec17_im0_cma_ena2, i_mul_matvec17_im0_cma_ena1, i_mul_matvec17_im0_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul_matvec17_im0_cma_a0),
        .ax(i_mul_matvec17_im0_cma_c0),
        .resulta(i_mul_matvec17_im0_cma_s0),
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
    i_mul_matvec17_im0_cma_delay ( .xin(i_mul_matvec17_im0_cma_s0), .xout(i_mul_matvec17_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_matvec17_im0_cma_q = $unsigned(i_mul_matvec17_im0_cma_qq[29:0]);

    // redist3_i_mul_matvec17_im0_cma_q_1(DELAY,281)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_i_mul_matvec17_im0_cma_q_1_q <= $unsigned(i_mul_matvec17_im0_cma_q);
        end
    end

    // i_mul_matvec17_im10_cma(CHAINMULTADD,272)@10 + 5
    // out q@16
    assign i_mul_matvec17_im10_cma_reset = ~ (resetn);
    assign i_mul_matvec17_im10_cma_ena0 = 1'b1;
    assign i_mul_matvec17_im10_cma_ena1 = i_mul_matvec17_im10_cma_ena0;
    assign i_mul_matvec17_im10_cma_ena2 = i_mul_matvec17_im10_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul_matvec17_im10_cma_ah[0] <= i_mul_matvec17_bs1_merged_bit_select_c;
            i_mul_matvec17_im10_cma_ch[0] <= i_mul_matvec17_bs3_merged_bit_select_c;
        end
    end

    assign i_mul_matvec17_im10_cma_a0 = i_mul_matvec17_im10_cma_ah[0];
    assign i_mul_matvec17_im10_cma_c0 = i_mul_matvec17_im10_cma_ch[0];
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
    ) i_mul_matvec17_im10_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_matvec17_im10_cma_ena2, i_mul_matvec17_im10_cma_ena1, i_mul_matvec17_im10_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul_matvec17_im10_cma_a0),
        .ax(i_mul_matvec17_im10_cma_c0),
        .resulta(i_mul_matvec17_im10_cma_s0),
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
    i_mul_matvec17_im10_cma_delay ( .xin(i_mul_matvec17_im10_cma_s0), .xout(i_mul_matvec17_im10_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_matvec17_im10_cma_q = $unsigned(i_mul_matvec17_im10_cma_qq[35:0]);

    // redist2_i_mul_matvec17_im10_cma_q_1(DELAY,280)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_i_mul_matvec17_im10_cma_q_1_q <= $unsigned(i_mul_matvec17_im10_cma_q);
        end
    end

    // i_mul_matvec17_sums_join_0(BITJOIN,211)@17
    assign i_mul_matvec17_sums_join_0_q = {redist3_i_mul_matvec17_im0_cma_q_1_q, redist2_i_mul_matvec17_im10_cma_q_1_q};

    // i_mul_matvec17_sums_result_add_0_0(ADD,214)@17
    assign i_mul_matvec17_sums_result_add_0_0_a = {1'b0, i_mul_matvec17_sums_join_0_q};
    assign i_mul_matvec17_sums_result_add_0_0_b = {16'b0000000000000000, i_mul_matvec17_sums_align_1_q};
    assign i_mul_matvec17_sums_result_add_0_0_o = $unsigned(i_mul_matvec17_sums_result_add_0_0_a) + $unsigned(i_mul_matvec17_sums_result_add_0_0_b);
    assign i_mul_matvec17_sums_result_add_0_0_q = i_mul_matvec17_sums_result_add_0_0_o[66:0];

    // bgTrunc_i_mul_matvec17_sel_x(BITSELECT,84)@17
    assign bgTrunc_i_mul_matvec17_sel_x_in = i_mul_matvec17_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul_matvec17_sel_x_b = bgTrunc_i_mul_matvec17_sel_x_in[31:0];

    // redist22_bgTrunc_i_mul_matvec17_sel_x_b_1(DELAY,300)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist22_bgTrunc_i_mul_matvec17_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul_matvec17_sel_x_b);
        end
    end

    // i_add_matvec19(ADD,49)@18
    assign i_add_matvec19_a = {1'b0, redist22_bgTrunc_i_mul_matvec17_sel_x_b_1_q};
    assign i_add_matvec19_b = {1'b0, i_llvm_fpga_pop_i32_tmp_012_pop10_matvec0_i_llvm_fpga_pop_i32_tmp_012_pop10_matvec18_mux_x_q};
    assign i_add_matvec19_o = $unsigned(i_add_matvec19_a) + $unsigned(i_add_matvec19_b);
    assign i_add_matvec19_q = i_add_matvec19_o[32:0];

    // bgTrunc_i_add_matvec19_sel_x(BITSELECT,81)@18
    assign bgTrunc_i_add_matvec19_sel_x_b = i_add_matvec19_q[31:0];

    // redist29_i_idxprom7_matvec10_vt_join_q_14_offset(CONSTANT,313)
    assign redist29_i_idxprom7_matvec10_vt_join_q_14_offset_q = $unsigned(4'b0111);

    // redist29_i_idxprom7_matvec10_vt_join_q_14_rdcnt(ADD,314)
    assign redist29_i_idxprom7_matvec10_vt_join_q_14_rdcnt_a = {1'b0, redist29_i_idxprom7_matvec10_vt_join_q_14_wraddr_q};
    assign redist29_i_idxprom7_matvec10_vt_join_q_14_rdcnt_b = {1'b0, redist29_i_idxprom7_matvec10_vt_join_q_14_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist29_i_idxprom7_matvec10_vt_join_q_14_rdcnt_o <= $unsigned(redist29_i_idxprom7_matvec10_vt_join_q_14_rdcnt_a) + $unsigned(redist29_i_idxprom7_matvec10_vt_join_q_14_rdcnt_b);
        end
    end
    assign redist29_i_idxprom7_matvec10_vt_join_q_14_rdcnt_q = redist29_i_idxprom7_matvec10_vt_join_q_14_rdcnt_o[4:0];

    // redist29_i_idxprom7_matvec10_vt_join_q_14_inputreg0(DELAY,309)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist29_i_idxprom7_matvec10_vt_join_q_14_inputreg0_q <= $unsigned(i_idxprom7_matvec10_vt_join_q);
        end
    end

    // redist29_i_idxprom7_matvec10_vt_join_q_14_wraddr(COUNTER,312)
    // low=0, high=15, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist29_i_idxprom7_matvec10_vt_join_q_14_wraddr_i <= $unsigned(redist29_i_idxprom7_matvec10_vt_join_q_14_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist29_i_idxprom7_matvec10_vt_join_q_14_wraddr_q = redist29_i_idxprom7_matvec10_vt_join_q_14_wraddr_i[3:0];

    // redist29_i_idxprom7_matvec10_vt_join_q_14_mem(DUALMEM,311)
    assign redist29_i_idxprom7_matvec10_vt_join_q_14_mem_ia = $unsigned(redist29_i_idxprom7_matvec10_vt_join_q_14_inputreg0_q);
    assign redist29_i_idxprom7_matvec10_vt_join_q_14_mem_aa = redist29_i_idxprom7_matvec10_vt_join_q_14_wraddr_q;
    assign redist29_i_idxprom7_matvec10_vt_join_q_14_mem_ab = redist29_i_idxprom7_matvec10_vt_join_q_14_rdcnt_q[3:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(4),
        .numwords_a(16),
        .width_b(64),
        .widthad_b(4),
        .numwords_b(16),
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
    ) redist29_i_idxprom7_matvec10_vt_join_q_14_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist29_i_idxprom7_matvec10_vt_join_q_14_mem_aa),
        .data_a(redist29_i_idxprom7_matvec10_vt_join_q_14_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist29_i_idxprom7_matvec10_vt_join_q_14_mem_ab),
        .q_b(redist29_i_idxprom7_matvec10_vt_join_q_14_mem_iq),
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
    assign redist29_i_idxprom7_matvec10_vt_join_q_14_mem_q = redist29_i_idxprom7_matvec10_vt_join_q_14_mem_iq[63:0];

    // redist29_i_idxprom7_matvec10_vt_join_q_14_outputreg0(DELAY,310)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist29_i_idxprom7_matvec10_vt_join_q_14_outputreg0_q <= $unsigned(redist29_i_idxprom7_matvec10_vt_join_q_14_mem_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,162)@18
    assign out_c0_exi5_0_tpl = GND_q;
    assign out_c0_exi5_1_tpl = redist29_i_idxprom7_matvec10_vt_join_q_14_outputreg0_q;
    assign out_c0_exi5_2_tpl = bgTrunc_i_add_matvec19_sel_x_b;
    assign out_c0_exi5_3_tpl = redist4_i_exitcond_matvec22_cmp_nsign_q_14_q;
    assign out_c0_exi5_4_tpl = i_notcmp_matvec27_q;
    assign out_c0_exi5_5_tpl = redist19_i_llvm_fpga_pop_i1_notcmp414_pop12_matvec0_i_llvm_fpga_pop_i1_notcmp414_pop12_matvec31_mux_x_q_14_q;
    assign out_matvec_B3_current_iter_isspec = redist23_i_matvec_b3_current_iter_isspec_matvec5_q_12_q;
    assign out_o_valid = redist5_valid_fanout_reg0_q_1_q;

endmodule
