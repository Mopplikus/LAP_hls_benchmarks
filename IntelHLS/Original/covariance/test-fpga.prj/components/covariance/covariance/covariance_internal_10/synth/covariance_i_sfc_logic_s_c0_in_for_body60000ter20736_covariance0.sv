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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body6_covariances_c0_enter20736_covariance0
// Created for function/kernel covariance
// SystemVerilog created on Thu Apr 27 14:28:37 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_i_sfc_logic_s_c0_in_for_body60000ter20736_covariance0 (
    input wire [31:0] in_unnamed_covariance2_covariance_avm_readdata,
    input wire [0:0] in_unnamed_covariance2_covariance_avm_writeack,
    input wire [0:0] in_unnamed_covariance2_covariance_avm_waitrequest,
    input wire [0:0] in_unnamed_covariance2_covariance_avm_readdatavalid,
    output wire [31:0] out_unnamed_covariance2_covariance_avm_address,
    output wire [0:0] out_unnamed_covariance2_covariance_avm_enable,
    output wire [0:0] out_unnamed_covariance2_covariance_avm_read,
    output wire [0:0] out_unnamed_covariance2_covariance_avm_write,
    output wire [31:0] out_unnamed_covariance2_covariance_avm_writedata,
    output wire [3:0] out_unnamed_covariance2_covariance_avm_byteenable,
    output wire [0:0] out_unnamed_covariance2_covariance_avm_burstcount,
    input wire [0:0] in_flush,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_pipeline_dummy_out,
    output wire [0:0] out_pipeline_forked_out,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_c0_exi14_0_tpl,
    output wire [63:0] out_c0_exi14_1_tpl,
    output wire [0:0] out_c0_exi14_2_tpl,
    output wire [31:0] out_c0_exi14_3_tpl,
    output wire [0:0] out_c0_exi14_4_tpl,
    output wire [0:0] out_c0_exi14_5_tpl,
    output wire [31:0] out_c0_exi14_6_tpl,
    output wire [0:0] out_c0_exi14_7_tpl,
    output wire [0:0] out_c0_exi14_8_tpl,
    output wire [0:0] out_c0_exi14_9_tpl,
    output wire [0:0] out_c0_exi14_10_tpl,
    output wire [31:0] out_c0_exi14_11_tpl,
    output wire [0:0] out_c0_exi14_12_tpl,
    output wire [0:0] out_c0_exi14_13_tpl,
    output wire [0:0] out_c0_exi14_14_tpl,
    output wire [0:0] out_covariance_B5_current_iter_isspec,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_profile_loop_o_valid,
    input wire [0:0] in_buffer_in,
    input wire [0:0] in_c0_eni13_0_tpl,
    input wire [31:0] in_c0_eni13_1_tpl,
    input wire [0:0] in_c0_eni13_2_tpl,
    input wire [0:0] in_c0_eni13_3_tpl,
    input wire [0:0] in_c0_eni13_4_tpl,
    input wire [31:0] in_c0_eni13_5_tpl,
    input wire [0:0] in_c0_eni13_6_tpl,
    input wire [0:0] in_c0_eni13_7_tpl,
    input wire [0:0] in_c0_eni13_8_tpl,
    input wire [0:0] in_c0_eni13_9_tpl,
    input wire [31:0] in_c0_eni13_10_tpl,
    input wire [0:0] in_c0_eni13_11_tpl,
    input wire [0:0] in_c0_eni13_12_tpl,
    input wire [0:0] in_c0_eni13_13_tpl,
    input wire [0:0] in_dummy_in,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_covariance_data_local_pmem_q;
    wire [31:0] c_i32_074_q;
    wire [31:0] c_i32_175_q;
    wire [5:0] c_i6_178_q;
    wire [5:0] c_i6_3076_q;
    wire [32:0] i_add_covariance19_a;
    wire [32:0] i_add_covariance19_b;
    logic [32:0] i_add_covariance19_o;
    wire [32:0] i_add_covariance19_q;
    wire [1:0] i_arrayidx81_covariance13_vt_const_1_q;
    wire [63:0] i_arrayidx81_covariance13_vt_join_q;
    wire [61:0] i_arrayidx81_covariance13_vt_select_63_b;
    wire [0:0] i_covariance_b5_current_iter_isspec_covariance5_q;
    wire [0:0] i_covariance_b5_next_iter_isreal_covariance7_q;
    wire [6:0] i_fpga_indvars_iv_next_covariance31_a;
    wire [6:0] i_fpga_indvars_iv_next_covariance31_b;
    logic [6:0] i_fpga_indvars_iv_next_covariance31_o;
    wire [6:0] i_fpga_indvars_iv_next_covariance31_q;
    wire [63:0] i_idxprom7_covariance10_vt_join_q;
    wire [31:0] i_idxprom7_covariance10_vt_select_31_b;
    wire [63:0] i_idxprom_covariance12_vt_join_q;
    wire [31:0] i_idxprom_covariance12_vt_select_31_b;
    wire [32:0] i_inc_covariance20_a;
    wire [32:0] i_inc_covariance20_b;
    logic [32:0] i_inc_covariance20_o;
    wire [32:0] i_inc_covariance20_q;
    wire [0:0] i_llvm_fpga_dummy_thread_covariance_b5_dummy_covariance2_out_dummy_out;
    wire [0:0] i_llvm_fpga_forked_covariance_b5_forked_covariance3_out_buffer_out;
    wire [31:0] i_llvm_fpga_mem_unnamed_covariance2_covariance17_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_covariance2_covariance17_out_unnamed_covariance2_covariance_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance2_covariance17_out_unnamed_covariance2_covariance_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_covariance2_covariance17_out_unnamed_covariance2_covariance_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance2_covariance17_out_unnamed_covariance2_covariance_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance2_covariance17_out_unnamed_covariance2_covariance_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance2_covariance17_out_unnamed_covariance2_covariance_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_covariance2_covariance17_out_unnamed_covariance2_covariance_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going40_covariance6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going40_covariance6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going40_covariance6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going40_covariance6_out_pipeline_dummy_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going40_covariance6_out_pipeline_forked_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going40_covariance6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond41_covariance30_out_feedback_out_11;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond41_covariance30_out_feedback_valid_out_11;
    wire [0:0] i_memdep_phi1_or_covariance16_qi;
    reg [0:0] i_memdep_phi1_or_covariance16_q;
    wire [0:0] i_notcmp38_covariance29_q;
    wire [31:0] bgTrunc_i_add_covariance19_sel_x_b;
    wire [5:0] bgTrunc_i_fpga_indvars_iv_next_covariance31_sel_x_b;
    wire [31:0] bgTrunc_i_inc_covariance20_sel_x_b;
    wire [12:0] i_arrayidx81_covariance0_add_x_a;
    wire [12:0] i_arrayidx81_covariance0_add_x_b;
    logic [12:0] i_arrayidx81_covariance0_add_x_o;
    wire [12:0] i_arrayidx81_covariance0_add_x_q;
    wire [63:0] i_arrayidx81_covariance0_append_upper_bits_x_q;
    wire [6:0] i_arrayidx81_covariance0_c_i7_01_x_q;
    wire [4:0] i_arrayidx81_covariance0_narrow_x_b;
    wire [11:0] i_arrayidx81_covariance0_shift_join_x_q;
    wire [12:0] i_arrayidx81_covariance0_dupName_0_add_x_a;
    wire [12:0] i_arrayidx81_covariance0_dupName_0_add_x_b;
    logic [12:0] i_arrayidx81_covariance0_dupName_0_add_x_o;
    wire [12:0] i_arrayidx81_covariance0_dupName_0_add_x_q;
    wire [9:0] i_arrayidx81_covariance0_dupName_0_narrow_x_b;
    wire [11:0] i_arrayidx81_covariance0_dupName_0_shift_join_x_q;
    wire [11:0] i_arrayidx81_covariance0_dupName_0_trunc_sel_x_b;
    wire [11:0] i_arrayidx81_covariance0_dupName_2_trunc_sel_x_b;
    wire [11:0] i_arrayidx81_covariance0_dupName_3_trunc_sel_x_b;
    wire [11:0] i_arrayidx81_covariance0_dupName_5_trunc_sel_x_b;
    wire [63:0] i_idxprom7_covariance10_sel_x_b;
    wire [63:0] i_idxprom_covariance12_sel_x_b;
    wire [0:0] i_llvm_fpga_pop_coalesce_i1_covariance_b5_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b5_current_iter_isreal_covariance4_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_coalesce_i1_covariance_b5_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b5_current_iter_isreal_covariance4_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1072_pop39_covariance0_i_llvm_fpga_pop_i1_exitcond1072_pop39_covariance39_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_exitcond1072_pop39_covariance0_i_llvm_fpga_pop_i1_exitcond1072_pop39_covariance39_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi1_pop1659_pop36_covariance0_i_llvm_fpga_pop_i1_memdep_phi1_pop1659_pop36_covariance14_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi1_pop1659_pop36_covariance0_i_llvm_fpga_pop_i1_memdep_phi1_pop1659_pop36_covariance14_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop1762_pop37_covariance0_i_llvm_fpga_pop_i1_memdep_phi2_pop1762_pop37_covariance35_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop1762_pop37_covariance0_i_llvm_fpga_pop_i1_memdep_phi2_pop1762_pop37_covariance35_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi4_pop1865_pop38_covariance0_i_llvm_fpga_pop_i1_memdep_phi4_pop1865_pop38_covariance37_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi4_pop1865_pop38_covariance0_i_llvm_fpga_pop_i1_memdep_phi4_pop1865_pop38_covariance37_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop2277_pop42_covariance0_i_llvm_fpga_pop_i1_memdep_phi_pop2277_pop42_covariance15_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop2277_pop42_covariance0_i_llvm_fpga_pop_i1_memdep_phi_pop2277_pop42_covariance15_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp4374_pop40_covariance0_i_llvm_fpga_pop_i1_notcmp4374_pop40_covariance41_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_notcmp4374_pop40_covariance0_i_llvm_fpga_pop_i1_notcmp4374_pop40_covariance41_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_i_037_pop33_covariance0_i_llvm_fpga_pop_i32_i_037_pop33_covariance11_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_i_037_pop33_covariance0_i_llvm_fpga_pop_i32_i_037_pop33_covariance11_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_j_039_pop2176_pop41_covariance0_i_llvm_fpga_pop_i32_j_039_pop2176_pop41_covariance9_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_j_039_pop2176_pop41_covariance0_i_llvm_fpga_pop_i32_j_039_pop2176_pop41_covariance9_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance0_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance33_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance0_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance33_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_m_036_pop34_covariance0_i_llvm_fpga_pop_i32_m_036_pop34_covariance18_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_m_036_pop34_covariance0_i_llvm_fpga_pop_i32_m_036_pop34_covariance18_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv_pop32_covariance0_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop32_covariance21_mux_x_s;
    reg [5:0] i_llvm_fpga_pop_i6_fpga_indvars_iv_pop32_covariance0_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop32_covariance21_mux_x_q;
    wire [7:0] i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance1_x_i_valid;
    wire i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance1_x_i_stall;
    wire i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_inv_pred_x_q;
    wire [0:0] i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_exitcond1072_push39_covariance0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1072_push39_covariance0_i_llvm_fpga_push_i1_exitcond1072_push39_covariance1_x_i_valid;
    wire i_llvm_fpga_push_i1_exitcond1072_push39_covariance0_i_llvm_fpga_push_i1_exitcond1072_push39_covariance1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1072_push39_covariance0_i_llvm_fpga_push_i1_exitcond1072_push39_covariance1_x_i_stall;
    wire i_llvm_fpga_push_i1_exitcond1072_push39_covariance0_i_llvm_fpga_push_i1_exitcond1072_push39_covariance1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_exitcond1072_push39_covariance0_i_llvm_fpga_push_i1_exitcond1072_push39_covariance1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_exitcond1072_push39_covariance0_i_llvm_fpga_push_i1_exitcond1072_push39_covariance1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1072_push39_covariance0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi1_pop1659_push36_covariance0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi1_pop1659_push36_covariance0_i_llvm_fpga_push_i1_memdep_phi1_pop1659_push36_covariance1_x_i_valid;
    wire i_llvm_fpga_push_i1_memdep_phi1_pop1659_push36_covariance0_i_llvm_fpga_push_i1_memdep_phi1_pop1659_push36_covariance1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi1_pop1659_push36_covariance0_i_llvm_fpga_push_i1_memdep_phi1_pop1659_push36_covariance1_x_i_stall;
    wire i_llvm_fpga_push_i1_memdep_phi1_pop1659_push36_covariance0_i_llvm_fpga_push_i1_memdep_phi1_pop1659_push36_covariance1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi1_pop1659_push36_covariance0_i_llvm_fpga_push_i1_memdep_phi1_pop1659_push36_covariance1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi1_pop1659_push36_covariance0_i_llvm_fpga_push_i1_memdep_phi1_pop1659_push36_covariance1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi1_pop1659_push36_covariance0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi2_pop1762_push37_covariance0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1762_push37_covariance0_i_llvm_fpga_push_i1_memdep_phi2_pop1762_push37_covariance1_x_i_valid;
    wire i_llvm_fpga_push_i1_memdep_phi2_pop1762_push37_covariance0_i_llvm_fpga_push_i1_memdep_phi2_pop1762_push37_covariance1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1762_push37_covariance0_i_llvm_fpga_push_i1_memdep_phi2_pop1762_push37_covariance1_x_i_stall;
    wire i_llvm_fpga_push_i1_memdep_phi2_pop1762_push37_covariance0_i_llvm_fpga_push_i1_memdep_phi2_pop1762_push37_covariance1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi2_pop1762_push37_covariance0_i_llvm_fpga_push_i1_memdep_phi2_pop1762_push37_covariance1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi2_pop1762_push37_covariance0_i_llvm_fpga_push_i1_memdep_phi2_pop1762_push37_covariance1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1762_push37_covariance0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi4_pop1865_push38_covariance0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi4_pop1865_push38_covariance0_i_llvm_fpga_push_i1_memdep_phi4_pop1865_push38_covariance1_x_i_valid;
    wire i_llvm_fpga_push_i1_memdep_phi4_pop1865_push38_covariance0_i_llvm_fpga_push_i1_memdep_phi4_pop1865_push38_covariance1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi4_pop1865_push38_covariance0_i_llvm_fpga_push_i1_memdep_phi4_pop1865_push38_covariance1_x_i_stall;
    wire i_llvm_fpga_push_i1_memdep_phi4_pop1865_push38_covariance0_i_llvm_fpga_push_i1_memdep_phi4_pop1865_push38_covariance1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi4_pop1865_push38_covariance0_i_llvm_fpga_push_i1_memdep_phi4_pop1865_push38_covariance1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi4_pop1865_push38_covariance0_i_llvm_fpga_push_i1_memdep_phi4_pop1865_push38_covariance1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi4_pop1865_push38_covariance0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi_pop2277_push42_covariance0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop2277_push42_covariance0_i_llvm_fpga_push_i1_memdep_phi_pop2277_push42_covariance1_x_i_valid;
    wire i_llvm_fpga_push_i1_memdep_phi_pop2277_push42_covariance0_i_llvm_fpga_push_i1_memdep_phi_pop2277_push42_covariance1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop2277_push42_covariance0_i_llvm_fpga_push_i1_memdep_phi_pop2277_push42_covariance1_x_i_stall;
    wire i_llvm_fpga_push_i1_memdep_phi_pop2277_push42_covariance0_i_llvm_fpga_push_i1_memdep_phi_pop2277_push42_covariance1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi_pop2277_push42_covariance0_i_llvm_fpga_push_i1_memdep_phi_pop2277_push42_covariance1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi_pop2277_push42_covariance0_i_llvm_fpga_push_i1_memdep_phi_pop2277_push42_covariance1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop2277_push42_covariance0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_notcmp4374_push40_covariance0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_notcmp4374_push40_covariance0_i_llvm_fpga_push_i1_notcmp4374_push40_covariance1_x_i_valid;
    wire i_llvm_fpga_push_i1_notcmp4374_push40_covariance0_i_llvm_fpga_push_i1_notcmp4374_push40_covariance1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_notcmp4374_push40_covariance0_i_llvm_fpga_push_i1_notcmp4374_push40_covariance1_x_i_stall;
    wire i_llvm_fpga_push_i1_notcmp4374_push40_covariance0_i_llvm_fpga_push_i1_notcmp4374_push40_covariance1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_notcmp4374_push40_covariance0_i_llvm_fpga_push_i1_notcmp4374_push40_covariance1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_notcmp4374_push40_covariance0_i_llvm_fpga_push_i1_notcmp4374_push40_covariance1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_notcmp4374_push40_covariance0_adapt_scalar_trunc4_sel_x_b;
    wire [0:0] i_llvm_fpga_push_i32_i_037_push33_covariance0_i_llvm_fpga_push_i32_i_037_push33_covariance1_x_i_valid;
    wire i_llvm_fpga_push_i32_i_037_push33_covariance0_i_llvm_fpga_push_i32_i_037_push33_covariance1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_i_037_push33_covariance0_i_llvm_fpga_push_i32_i_037_push33_covariance1_x_i_stall;
    wire i_llvm_fpga_push_i32_i_037_push33_covariance0_i_llvm_fpga_push_i32_i_037_push33_covariance1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_i_037_push33_covariance0_i_llvm_fpga_push_i32_i_037_push33_covariance1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_i_037_push33_covariance0_i_llvm_fpga_push_i32_i_037_push33_covariance1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i32_j_039_pop2176_push41_covariance0_i_llvm_fpga_push_i32_j_039_pop2176_push41_covariance1_x_i_valid;
    wire i_llvm_fpga_push_i32_j_039_pop2176_push41_covariance0_i_llvm_fpga_push_i32_j_039_pop2176_push41_covariance1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_j_039_pop2176_push41_covariance0_i_llvm_fpga_push_i32_j_039_pop2176_push41_covariance1_x_i_stall;
    wire i_llvm_fpga_push_i32_j_039_pop2176_push41_covariance0_i_llvm_fpga_push_i32_j_039_pop2176_push41_covariance1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_j_039_pop2176_push41_covariance0_i_llvm_fpga_push_i32_j_039_pop2176_push41_covariance1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_j_039_pop2176_push41_covariance0_i_llvm_fpga_push_i32_j_039_pop2176_push41_covariance1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i32_lim_ext53_push35_covariance0_i_llvm_fpga_push_i32_lim_ext53_push35_covariance1_x_i_valid;
    wire i_llvm_fpga_push_i32_lim_ext53_push35_covariance0_i_llvm_fpga_push_i32_lim_ext53_push35_covariance1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_lim_ext53_push35_covariance0_i_llvm_fpga_push_i32_lim_ext53_push35_covariance1_x_i_stall;
    wire i_llvm_fpga_push_i32_lim_ext53_push35_covariance0_i_llvm_fpga_push_i32_lim_ext53_push35_covariance1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_lim_ext53_push35_covariance0_i_llvm_fpga_push_i32_lim_ext53_push35_covariance1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_lim_ext53_push35_covariance0_i_llvm_fpga_push_i32_lim_ext53_push35_covariance1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i32_m_036_push34_covariance0_i_llvm_fpga_push_i32_m_036_push34_covariance1_x_i_valid;
    wire i_llvm_fpga_push_i32_m_036_push34_covariance0_i_llvm_fpga_push_i32_m_036_push34_covariance1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_m_036_push34_covariance0_i_llvm_fpga_push_i32_m_036_push34_covariance1_x_i_stall;
    wire i_llvm_fpga_push_i32_m_036_push34_covariance0_i_llvm_fpga_push_i32_m_036_push34_covariance1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_m_036_push34_covariance0_i_llvm_fpga_push_i32_m_036_push34_covariance1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_m_036_push34_covariance0_i_llvm_fpga_push_i32_m_036_push34_covariance1_x_o_data;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push32_covariance0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push32_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv_push32_covariance1_x_i_valid;
    wire i_llvm_fpga_push_i6_fpga_indvars_iv_push32_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv_push32_covariance1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push32_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv_push32_covariance1_x_i_stall;
    wire i_llvm_fpga_push_i6_fpga_indvars_iv_push32_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv_push32_covariance1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push32_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv_push32_covariance1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push32_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv_push32_covariance1_x_o_data;
    wire [5:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push32_covariance0_adapt_scalar_trunc4_sel_x_b;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg9_q;
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
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg22_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg23_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg24_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg26_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg27_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg29_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg30_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg32_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg33_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg35_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg36_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg38_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg39_q;
    wire [0:0] i_exitcond_covariance22_cmp_nsign_q;
    wire [51:0] i_arrayidx81_covariance0_upper_bits_x_merged_bit_select_b;
    wire [11:0] i_arrayidx81_covariance0_upper_bits_x_merged_bit_select_c;
    reg [51:0] redist0_i_arrayidx81_covariance0_upper_bits_x_merged_bit_select_b_1_q;
    reg [0:0] redist1_i_exitcond_covariance22_cmp_nsign_q_6_q;
    reg [31:0] redist2_sync_together85_aunroll_x_in_c0_eni13_1_tpl_4_q;
    reg [31:0] redist2_sync_together85_aunroll_x_in_c0_eni13_1_tpl_4_delay_0;
    reg [31:0] redist2_sync_together85_aunroll_x_in_c0_eni13_1_tpl_4_delay_1;
    reg [0:0] redist3_sync_together85_aunroll_x_in_c0_eni13_3_tpl_4_q;
    reg [0:0] redist3_sync_together85_aunroll_x_in_c0_eni13_3_tpl_4_delay_0;
    reg [0:0] redist3_sync_together85_aunroll_x_in_c0_eni13_3_tpl_4_delay_1;
    reg [0:0] redist3_sync_together85_aunroll_x_in_c0_eni13_3_tpl_4_delay_2;
    reg [0:0] redist4_sync_together85_aunroll_x_in_c0_eni13_4_tpl_4_q;
    reg [0:0] redist4_sync_together85_aunroll_x_in_c0_eni13_4_tpl_4_delay_0;
    reg [0:0] redist4_sync_together85_aunroll_x_in_c0_eni13_4_tpl_4_delay_1;
    reg [0:0] redist4_sync_together85_aunroll_x_in_c0_eni13_4_tpl_4_delay_2;
    reg [31:0] redist5_sync_together85_aunroll_x_in_c0_eni13_5_tpl_4_q;
    reg [31:0] redist5_sync_together85_aunroll_x_in_c0_eni13_5_tpl_4_delay_0;
    reg [31:0] redist5_sync_together85_aunroll_x_in_c0_eni13_5_tpl_4_delay_1;
    reg [0:0] redist6_sync_together85_aunroll_x_in_c0_eni13_6_tpl_4_q;
    reg [0:0] redist6_sync_together85_aunroll_x_in_c0_eni13_6_tpl_4_delay_0;
    reg [0:0] redist6_sync_together85_aunroll_x_in_c0_eni13_6_tpl_4_delay_1;
    reg [0:0] redist6_sync_together85_aunroll_x_in_c0_eni13_6_tpl_4_delay_2;
    reg [0:0] redist7_sync_together85_aunroll_x_in_c0_eni13_7_tpl_4_q;
    reg [0:0] redist7_sync_together85_aunroll_x_in_c0_eni13_7_tpl_4_delay_0;
    reg [0:0] redist7_sync_together85_aunroll_x_in_c0_eni13_7_tpl_4_delay_1;
    reg [0:0] redist7_sync_together85_aunroll_x_in_c0_eni13_7_tpl_4_delay_2;
    reg [0:0] redist8_sync_together85_aunroll_x_in_c0_eni13_8_tpl_4_q;
    reg [0:0] redist8_sync_together85_aunroll_x_in_c0_eni13_8_tpl_4_delay_0;
    reg [0:0] redist8_sync_together85_aunroll_x_in_c0_eni13_8_tpl_4_delay_1;
    reg [0:0] redist8_sync_together85_aunroll_x_in_c0_eni13_8_tpl_4_delay_2;
    reg [0:0] redist9_sync_together85_aunroll_x_in_c0_eni13_9_tpl_4_q;
    reg [0:0] redist9_sync_together85_aunroll_x_in_c0_eni13_9_tpl_4_delay_0;
    reg [0:0] redist9_sync_together85_aunroll_x_in_c0_eni13_9_tpl_4_delay_1;
    reg [0:0] redist9_sync_together85_aunroll_x_in_c0_eni13_9_tpl_4_delay_2;
    reg [0:0] redist11_sync_together85_aunroll_x_in_c0_eni13_11_tpl_10_q;
    reg [0:0] redist12_sync_together85_aunroll_x_in_c0_eni13_12_tpl_10_q;
    reg [0:0] redist13_sync_together85_aunroll_x_in_c0_eni13_13_tpl_10_q;
    reg [0:0] redist14_sync_together85_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist14_sync_together85_aunroll_x_in_i_valid_2_delay_0;
    reg [0:0] redist15_sync_together85_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist16_sync_together85_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist17_sync_together85_aunroll_x_in_i_valid_6_q;
    reg [0:0] redist17_sync_together85_aunroll_x_in_i_valid_6_delay_0;
    reg [0:0] redist18_sync_together85_aunroll_x_in_i_valid_8_q;
    reg [0:0] redist18_sync_together85_aunroll_x_in_i_valid_8_delay_0;
    reg [0:0] redist19_sync_together85_aunroll_x_in_i_valid_9_q;
    reg [0:0] redist20_sync_together85_aunroll_x_in_i_valid_10_q;
    reg [0:0] redist21_i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_inv_pred_x_q_2_q;
    reg [0:0] redist21_i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_inv_pred_x_q_2_delay_0;
    reg [0:0] redist22_i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_inv_pred_x_q_6_q;
    reg [0:0] redist22_i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_inv_pred_x_q_6_delay_0;
    reg [0:0] redist22_i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_inv_pred_x_q_6_delay_1;
    reg [0:0] redist22_i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_inv_pred_x_q_6_delay_2;
    reg [0:0] redist23_i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_inv_pred_x_q_8_q;
    reg [0:0] redist23_i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_inv_pred_x_q_8_delay_0;
    reg [0:0] redist25_i_llvm_fpga_pop_i1_notcmp4374_pop40_covariance0_i_llvm_fpga_pop_i1_notcmp4374_pop40_covariance41_mux_x_q_6_q;
    reg [0:0] redist26_i_llvm_fpga_pop_i1_memdep_phi4_pop1865_pop38_covariance0_i_llvm_fpga_pop_i1_memdep_phi4_pop1865_pop38_covariance37_mux_x_q_6_q;
    reg [0:0] redist27_i_llvm_fpga_pop_i1_memdep_phi2_pop1762_pop37_covariance0_i_llvm_fpga_pop_i1_memdep_phi2_pop1762_pop37_covariance35_mux_x_q_6_q;
    reg [0:0] redist28_i_llvm_fpga_pop_i1_memdep_phi1_pop1659_pop36_covariance0_i_llvm_fpga_pop_i1_memdep_phi1_pop1659_pop36_covariance14_mux_x_q_6_q;
    reg [0:0] redist29_i_llvm_fpga_pop_i1_exitcond1072_pop39_covariance0_i_llvm_fpga_pop_i1_exitcond1072_pop39_covariance39_mux_x_q_6_q;
    reg [0:0] redist30_i_llvm_fpga_pop_coalesce_i1_covariance_b5_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b5_current_iter_isreal_covariance4_mux_x_q_1_q;
    reg [11:0] redist31_i_arrayidx81_covariance0_dupName_2_trunc_sel_x_b_1_q;
    reg [0:0] redist32_i_llvm_fpga_forked_covariance_b5_forked_covariance3_out_buffer_out_4_q;
    reg [0:0] redist32_i_llvm_fpga_forked_covariance_b5_forked_covariance3_out_buffer_out_4_delay_0;
    reg [0:0] redist32_i_llvm_fpga_forked_covariance_b5_forked_covariance3_out_buffer_out_4_delay_1;
    reg [0:0] redist32_i_llvm_fpga_forked_covariance_b5_forked_covariance3_out_buffer_out_4_delay_2;
    reg [0:0] redist33_i_llvm_fpga_forked_covariance_b5_forked_covariance3_out_buffer_out_10_q;
    reg [0:0] redist34_i_llvm_fpga_dummy_thread_covariance_b5_dummy_covariance2_out_dummy_out_4_q;
    reg [0:0] redist34_i_llvm_fpga_dummy_thread_covariance_b5_dummy_covariance2_out_dummy_out_4_delay_0;
    reg [0:0] redist34_i_llvm_fpga_dummy_thread_covariance_b5_dummy_covariance2_out_dummy_out_4_delay_1;
    reg [0:0] redist34_i_llvm_fpga_dummy_thread_covariance_b5_dummy_covariance2_out_dummy_out_4_delay_2;
    reg [31:0] redist35_i_idxprom7_covariance10_vt_select_31_b_1_q;
    reg [63:0] redist36_i_idxprom7_covariance10_vt_join_q_5_q;
    reg [63:0] redist36_i_idxprom7_covariance10_vt_join_q_5_delay_0;
    reg [63:0] redist36_i_idxprom7_covariance10_vt_join_q_5_delay_1;
    reg [0:0] redist37_i_covariance_b5_current_iter_isspec_covariance5_q_5_q;
    reg [0:0] redist37_i_covariance_b5_current_iter_isspec_covariance5_q_5_delay_0;
    reg [0:0] redist37_i_covariance_b5_current_iter_isspec_covariance5_q_5_delay_1;
    reg [0:0] redist37_i_covariance_b5_current_iter_isspec_covariance5_q_5_delay_2;
    reg [0:0] redist37_i_covariance_b5_current_iter_isspec_covariance5_q_5_delay_3;
    reg [31:0] redist2_sync_together85_aunroll_x_in_c0_eni13_1_tpl_4_inputreg0_q;
    reg [31:0] redist5_sync_together85_aunroll_x_in_c0_eni13_5_tpl_4_inputreg0_q;
    reg [31:0] redist10_sync_together85_aunroll_x_in_c0_eni13_10_tpl_10_inputreg0_q;
    reg [31:0] redist10_sync_together85_aunroll_x_in_c0_eni13_10_tpl_10_outputreg0_q;
    wire redist10_sync_together85_aunroll_x_in_c0_eni13_10_tpl_10_mem_reset0;
    wire [31:0] redist10_sync_together85_aunroll_x_in_c0_eni13_10_tpl_10_mem_ia;
    wire [2:0] redist10_sync_together85_aunroll_x_in_c0_eni13_10_tpl_10_mem_aa;
    wire [2:0] redist10_sync_together85_aunroll_x_in_c0_eni13_10_tpl_10_mem_ab;
    wire [31:0] redist10_sync_together85_aunroll_x_in_c0_eni13_10_tpl_10_mem_iq;
    wire [31:0] redist10_sync_together85_aunroll_x_in_c0_eni13_10_tpl_10_mem_q;
    wire [2:0] redist10_sync_together85_aunroll_x_in_c0_eni13_10_tpl_10_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [2:0] redist10_sync_together85_aunroll_x_in_c0_eni13_10_tpl_10_wraddr_i = 3'b111;
    wire [2:0] redist10_sync_together85_aunroll_x_in_c0_eni13_10_tpl_10_offset_q;
    wire [3:0] redist10_sync_together85_aunroll_x_in_c0_eni13_10_tpl_10_rdcnt_a;
    wire [3:0] redist10_sync_together85_aunroll_x_in_c0_eni13_10_tpl_10_rdcnt_b;
    logic [3:0] redist10_sync_together85_aunroll_x_in_c0_eni13_10_tpl_10_rdcnt_o;
    wire [3:0] redist10_sync_together85_aunroll_x_in_c0_eni13_10_tpl_10_rdcnt_q;
    reg [31:0] redist24_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance0_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance33_mux_x_q_6_inputreg0_q;
    reg [31:0] redist24_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance0_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance33_mux_x_q_6_outputreg0_q;
    wire redist24_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance0_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance33_mux_x_q_6_mem_reset0;
    wire [31:0] redist24_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance0_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance33_mux_x_q_6_mem_ia;
    wire [1:0] redist24_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance0_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance33_mux_x_q_6_mem_aa;
    wire [1:0] redist24_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance0_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance33_mux_x_q_6_mem_ab;
    wire [31:0] redist24_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance0_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance33_mux_x_q_6_mem_iq;
    wire [31:0] redist24_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance0_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance33_mux_x_q_6_mem_q;
    wire [1:0] redist24_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance0_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance33_mux_x_q_6_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [1:0] redist24_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance0_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance33_mux_x_q_6_wraddr_i = 2'b11;
    wire [1:0] redist24_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance0_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance33_mux_x_q_6_offset_q;
    wire [2:0] redist24_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance0_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance33_mux_x_q_6_rdcnt_a;
    wire [2:0] redist24_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance0_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance33_mux_x_q_6_rdcnt_b;
    logic [2:0] redist24_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance0_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance33_mux_x_q_6_rdcnt_o;
    wire [2:0] redist24_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance0_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance33_mux_x_q_6_rdcnt_q;
    reg [63:0] redist36_i_idxprom7_covariance10_vt_join_q_5_inputreg0_q;
    reg [63:0] redist36_i_idxprom7_covariance10_vt_join_q_5_outputreg0_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist14_sync_together85_aunroll_x_in_i_valid_2(DELAY,244)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist14_sync_together85_aunroll_x_in_i_valid_2_delay_0 <= '0;
        end
        else
        begin
            redist14_sync_together85_aunroll_x_in_i_valid_2_delay_0 <= $unsigned(in_i_valid);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist14_sync_together85_aunroll_x_in_i_valid_2_q <= redist14_sync_together85_aunroll_x_in_i_valid_2_delay_0;
        end
    end

    // redist15_sync_together85_aunroll_x_in_i_valid_3(DELAY,245)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist15_sync_together85_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist15_sync_together85_aunroll_x_in_i_valid_3_q <= $unsigned(redist14_sync_together85_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist16_sync_together85_aunroll_x_in_i_valid_4(DELAY,246)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist16_sync_together85_aunroll_x_in_i_valid_4_q <= $unsigned(redist15_sync_together85_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg9(REG,183)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist16_sync_together85_aunroll_x_in_i_valid_4_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_arrayidx81_covariance0_c_i7_01_x(CONSTANT,81)
    assign i_arrayidx81_covariance0_c_i7_01_x_q = $unsigned(7'b0000000);

    // valid_fanout_reg2(REG,176)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist15_sync_together85_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg22(REG,196)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg22_q <= $unsigned(redist15_sync_together85_aunroll_x_in_i_valid_3_q);
        end
    end

    // c_i6_3076(CONSTANT,40)
    assign c_i6_3076_q = $unsigned(6'b011110);

    // i_arrayidx81_covariance13_vt_const_1(CONSTANT,44)
    assign i_arrayidx81_covariance13_vt_const_1_q = $unsigned(2'b00);

    // c_i6_178(CONSTANT,39)
    assign c_i6_178_q = $unsigned(6'b111111);

    // i_fpga_indvars_iv_next_covariance31(ADD,50)@4
    assign i_fpga_indvars_iv_next_covariance31_a = {1'b0, i_llvm_fpga_pop_i6_fpga_indvars_iv_pop32_covariance0_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop32_covariance21_mux_x_q};
    assign i_fpga_indvars_iv_next_covariance31_b = {1'b0, c_i6_178_q};
    assign i_fpga_indvars_iv_next_covariance31_o = $unsigned(i_fpga_indvars_iv_next_covariance31_a) + $unsigned(i_fpga_indvars_iv_next_covariance31_b);
    assign i_fpga_indvars_iv_next_covariance31_q = i_fpga_indvars_iv_next_covariance31_o[6:0];

    // bgTrunc_i_fpga_indvars_iv_next_covariance31_sel_x(BITSELECT,72)@4
    assign bgTrunc_i_fpga_indvars_iv_next_covariance31_sel_x_b = i_fpga_indvars_iv_next_covariance31_q[5:0];

    // i_llvm_fpga_push_i6_fpga_indvars_iv_push32_covariance0_element_extension2_x(BITJOIN,168)@4
    assign i_llvm_fpga_push_i6_fpga_indvars_iv_push32_covariance0_element_extension2_x_q = {i_arrayidx81_covariance13_vt_const_1_q, bgTrunc_i_fpga_indvars_iv_next_covariance31_sel_x_b};

    // valid_fanout_reg24(REG,198)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg24_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg23(REG,197)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg23_q <= $unsigned(redist14_sync_together85_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i6_fpga_indvars_iv_push32_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv_push32_covariance1_x(FIFODELAY,169)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i6_fpga_indvars_iv_push32_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv_push32_covariance1_x_i_stall = ~ (valid_fanout_reg24_q & i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_inv_pred_x_q);
    assign i_llvm_fpga_push_i6_fpga_indvars_iv_push32_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv_push32_covariance1_x_i_valid = valid_fanout_reg23_q & redist21_i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i6_fpga_indvars_iv_push32_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv_push32_covariance1_x_i_data = i_llvm_fpga_push_i6_fpga_indvars_iv_push32_covariance0_element_extension2_x_q;
    assign i_llvm_fpga_push_i6_fpga_indvars_iv_push32_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv_push32_covariance1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i6_fpga_indvars_iv_push32_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv_push32_covariance1_x_i_valid[0];
    assign i_llvm_fpga_push_i6_fpga_indvars_iv_push32_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv_push32_covariance1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i6_fpga_indvars_iv_push32_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv_push32_covariance1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i6_fpga_indvars_iv_push32_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv_push32_covariance1_x (
        .i_valid(i_llvm_fpga_push_i6_fpga_indvars_iv_push32_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv_push32_covariance1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i6_fpga_indvars_iv_push32_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv_push32_covariance1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i6_fpga_indvars_iv_push32_covariance0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i6_fpga_indvars_iv_push32_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv_push32_covariance1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i6_fpga_indvars_iv_push32_covariance0_adapt_scalar_trunc4_sel_x(BITSELECT,171)@4
    assign i_llvm_fpga_push_i6_fpga_indvars_iv_push32_covariance0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i6_fpga_indvars_iv_push32_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv_push32_covariance1_x_o_data[5:0];

    // i_llvm_fpga_pop_i6_fpga_indvars_iv_pop32_covariance0_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop32_covariance21_mux_x(MUX,111)@4
    assign i_llvm_fpga_pop_i6_fpga_indvars_iv_pop32_covariance0_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop32_covariance21_mux_x_s = redist32_i_llvm_fpga_forked_covariance_b5_forked_covariance3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop32_covariance0_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop32_covariance21_mux_x_s or i_llvm_fpga_push_i6_fpga_indvars_iv_push32_covariance0_adapt_scalar_trunc4_sel_x_b or c_i6_3076_q)
    begin
        unique case (i_llvm_fpga_pop_i6_fpga_indvars_iv_pop32_covariance0_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop32_covariance21_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i6_fpga_indvars_iv_pop32_covariance0_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop32_covariance21_mux_x_q = i_llvm_fpga_push_i6_fpga_indvars_iv_push32_covariance0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i6_fpga_indvars_iv_pop32_covariance0_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop32_covariance21_mux_x_q = c_i6_3076_q;
            default : i_llvm_fpga_pop_i6_fpga_indvars_iv_pop32_covariance0_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop32_covariance21_mux_x_q = 6'b0;
        endcase
    end

    // i_exitcond_covariance22_cmp_nsign(LOGICAL,228)@4
    assign i_exitcond_covariance22_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i6_fpga_indvars_iv_pop32_covariance0_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop32_covariance21_mux_x_q[5:5]));

    // i_llvm_fpga_push_i1_notexitcond41_covariance30(BLACKBOX,64)@4
    // out out_feedback_out_11@20000000
    // out out_feedback_valid_out_11@20000000
    covariance_i_llvm_fpga_push_i1_notexitcond41_0 thei_llvm_fpga_push_i1_notexitcond41_covariance30 (
        .in_data_in(i_exitcond_covariance22_cmp_nsign_q),
        .in_feedback_stall_in_11(i_llvm_fpga_pipeline_keep_going40_covariance6_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg22_q),
        .out_data_out(),
        .out_feedback_out_11(i_llvm_fpga_push_i1_notexitcond41_covariance30_out_feedback_out_11),
        .out_feedback_valid_out_11(i_llvm_fpga_push_i1_notexitcond41_covariance30_out_feedback_valid_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_dummy_thread_covariance_b5_dummy_covariance2(BLACKBOX,60)@0
    // in in_stall_in@20000000
    covariance_i_llvm_fpga_dummy_thread_b5_dummy_covariance0 thei_llvm_fpga_dummy_thread_covariance_b5_dummy_covariance2 (
        .in_dummy_in(in_dummy_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dummy_out(i_llvm_fpga_dummy_thread_covariance_b5_dummy_covariance2_out_dummy_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist34_i_llvm_fpga_dummy_thread_covariance_b5_dummy_covariance2_out_dummy_out_4(DELAY,264)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist34_i_llvm_fpga_dummy_thread_covariance_b5_dummy_covariance2_out_dummy_out_4_delay_0 <= $unsigned(i_llvm_fpga_dummy_thread_covariance_b5_dummy_covariance2_out_dummy_out);
            redist34_i_llvm_fpga_dummy_thread_covariance_b5_dummy_covariance2_out_dummy_out_4_delay_1 <= redist34_i_llvm_fpga_dummy_thread_covariance_b5_dummy_covariance2_out_dummy_out_4_delay_0;
            redist34_i_llvm_fpga_dummy_thread_covariance_b5_dummy_covariance2_out_dummy_out_4_delay_2 <= redist34_i_llvm_fpga_dummy_thread_covariance_b5_dummy_covariance2_out_dummy_out_4_delay_1;
            redist34_i_llvm_fpga_dummy_thread_covariance_b5_dummy_covariance2_out_dummy_out_4_q <= redist34_i_llvm_fpga_dummy_thread_covariance_b5_dummy_covariance2_out_dummy_out_4_delay_2;
        end
    end

    // i_llvm_fpga_pipeline_keep_going40_covariance6(BLACKBOX,63)@4
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_dummy_out@20000000
    // out out_pipeline_forked_out@20000000
    // out out_pipeline_valid_out@20000000
    covariance_i_llvm_fpga_pipeline_keep_going40_0 thei_llvm_fpga_pipeline_keep_going40_covariance6 (
        .in_data_in(redist32_i_llvm_fpga_forked_covariance_b5_forked_covariance3_out_buffer_out_4_q),
        .in_dummy_in(redist34_i_llvm_fpga_dummy_thread_covariance_b5_dummy_covariance2_out_dummy_out_4_q),
        .in_forked_in(redist32_i_llvm_fpga_forked_covariance_b5_forked_covariance3_out_buffer_out_4_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond41_covariance30_out_feedback_out_11),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond41_covariance30_out_feedback_valid_out_11),
        .in_pipeline_stall_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going40_covariance6_out_data_out),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going40_covariance6_out_exiting_valid_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going40_covariance6_out_not_exitcond_stall_out),
        .out_pipeline_dummy_out(i_llvm_fpga_pipeline_keep_going40_covariance6_out_pipeline_dummy_out),
        .out_pipeline_forked_out(i_llvm_fpga_pipeline_keep_going40_covariance6_out_pipeline_forked_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going40_covariance6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_covariance_b5_next_iter_isreal_covariance7(LOGICAL,48)@4
    assign i_covariance_b5_next_iter_isreal_covariance7_q = i_llvm_fpga_pop_coalesce_i1_covariance_b5_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b5_current_iter_isreal_covariance4_mux_x_q & i_llvm_fpga_pipeline_keep_going40_covariance6_out_data_out;

    // i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_element_extension2_x(BITJOIN,114)@4
    assign i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_element_extension2_x_q = {i_arrayidx81_covariance0_c_i7_01_x_q, i_covariance_b5_next_iter_isreal_covariance7_q};

    // i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_inv_pred_x(LOGICAL,116)@1
    assign i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_inv_pred_x_q = ~ (GND_q);

    // valid_fanout_reg4(REG,178)@0 + 1
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

    // redist21_i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_inv_pred_x_q_2(DELAY,251)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist21_i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_inv_pred_x_q_2_delay_0 <= $unsigned(i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_inv_pred_x_q);
            redist21_i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_inv_pred_x_q_2_q <= redist21_i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_inv_pred_x_q_2_delay_0;
        end
    end

    // valid_fanout_reg3(REG,177)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist14_sync_together85_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance1_x(FIFODELAY,115)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance1_x_i_stall = ~ (valid_fanout_reg4_q & i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance1_x_i_valid = valid_fanout_reg3_q & redist21_i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance1_x_i_data = i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance1_x (
        .i_valid(i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_adapt_scalar_trunc4_sel_x(BITSELECT,117)@4
    assign i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance1_x_o_data[0:0];

    // i_llvm_fpga_forked_covariance_b5_forked_covariance3(BLACKBOX,61)@0
    // in in_stall_in@20000000
    covariance_i_llvm_fpga_forked_b5_forked_covariance0 thei_llvm_fpga_forked_covariance_b5_forked_covariance3 (
        .in_buffer_in(in_buffer_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_buffer_out(i_llvm_fpga_forked_covariance_b5_forked_covariance3_out_buffer_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist32_i_llvm_fpga_forked_covariance_b5_forked_covariance3_out_buffer_out_4(DELAY,262)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist32_i_llvm_fpga_forked_covariance_b5_forked_covariance3_out_buffer_out_4_delay_0 <= $unsigned(i_llvm_fpga_forked_covariance_b5_forked_covariance3_out_buffer_out);
            redist32_i_llvm_fpga_forked_covariance_b5_forked_covariance3_out_buffer_out_4_delay_1 <= redist32_i_llvm_fpga_forked_covariance_b5_forked_covariance3_out_buffer_out_4_delay_0;
            redist32_i_llvm_fpga_forked_covariance_b5_forked_covariance3_out_buffer_out_4_delay_2 <= redist32_i_llvm_fpga_forked_covariance_b5_forked_covariance3_out_buffer_out_4_delay_1;
            redist32_i_llvm_fpga_forked_covariance_b5_forked_covariance3_out_buffer_out_4_q <= redist32_i_llvm_fpga_forked_covariance_b5_forked_covariance3_out_buffer_out_4_delay_2;
        end
    end

    // i_llvm_fpga_pop_coalesce_i1_covariance_b5_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b5_current_iter_isreal_covariance4_mux_x(MUX,100)@4
    assign i_llvm_fpga_pop_coalesce_i1_covariance_b5_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b5_current_iter_isreal_covariance4_mux_x_s = redist32_i_llvm_fpga_forked_covariance_b5_forked_covariance3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_coalesce_i1_covariance_b5_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b5_current_iter_isreal_covariance4_mux_x_s or i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_adapt_scalar_trunc4_sel_x_b or VCC_q)
    begin
        unique case (i_llvm_fpga_pop_coalesce_i1_covariance_b5_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b5_current_iter_isreal_covariance4_mux_x_s)
            1'b0 : i_llvm_fpga_pop_coalesce_i1_covariance_b5_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b5_current_iter_isreal_covariance4_mux_x_q = i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_coalesce_i1_covariance_b5_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b5_current_iter_isreal_covariance4_mux_x_q = VCC_q;
            default : i_llvm_fpga_pop_coalesce_i1_covariance_b5_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b5_current_iter_isreal_covariance4_mux_x_q = 1'b0;
        endcase
    end

    // redist30_i_llvm_fpga_pop_coalesce_i1_covariance_b5_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b5_current_iter_isreal_covariance4_mux_x_q_1(DELAY,260)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist30_i_llvm_fpga_pop_coalesce_i1_covariance_b5_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b5_current_iter_isreal_covariance4_mux_x_q_1_q <= $unsigned(i_llvm_fpga_pop_coalesce_i1_covariance_b5_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b5_current_iter_isreal_covariance4_mux_x_q);
        end
    end

    // i_covariance_b5_current_iter_isspec_covariance5(LOGICAL,47)@5
    assign i_covariance_b5_current_iter_isspec_covariance5_q = redist30_i_llvm_fpga_pop_coalesce_i1_covariance_b5_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b5_current_iter_isreal_covariance4_mux_x_q_1_q ^ VCC_q;

    // redist3_sync_together85_aunroll_x_in_c0_eni13_3_tpl_4(DELAY,233)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_sync_together85_aunroll_x_in_c0_eni13_3_tpl_4_delay_0 <= $unsigned(in_c0_eni13_3_tpl);
            redist3_sync_together85_aunroll_x_in_c0_eni13_3_tpl_4_delay_1 <= redist3_sync_together85_aunroll_x_in_c0_eni13_3_tpl_4_delay_0;
            redist3_sync_together85_aunroll_x_in_c0_eni13_3_tpl_4_delay_2 <= redist3_sync_together85_aunroll_x_in_c0_eni13_3_tpl_4_delay_1;
            redist3_sync_together85_aunroll_x_in_c0_eni13_3_tpl_4_q <= redist3_sync_together85_aunroll_x_in_c0_eni13_3_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi1_pop1659_push36_covariance0_element_extension2_x(BITJOIN,126)@4
    assign i_llvm_fpga_push_i1_memdep_phi1_pop1659_push36_covariance0_element_extension2_x_q = {i_arrayidx81_covariance0_c_i7_01_x_q, i_llvm_fpga_pop_i1_memdep_phi1_pop1659_pop36_covariance0_i_llvm_fpga_pop_i1_memdep_phi1_pop1659_pop36_covariance14_mux_x_q};

    // valid_fanout_reg17(REG,191)@0 + 1
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

    // valid_fanout_reg16(REG,190)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist14_sync_together85_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi1_pop1659_push36_covariance0_i_llvm_fpga_push_i1_memdep_phi1_pop1659_push36_covariance1_x(FIFODELAY,127)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i1_memdep_phi1_pop1659_push36_covariance0_i_llvm_fpga_push_i1_memdep_phi1_pop1659_push36_covariance1_x_i_stall = ~ (valid_fanout_reg17_q & i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_memdep_phi1_pop1659_push36_covariance0_i_llvm_fpga_push_i1_memdep_phi1_pop1659_push36_covariance1_x_i_valid = valid_fanout_reg16_q & redist21_i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i1_memdep_phi1_pop1659_push36_covariance0_i_llvm_fpga_push_i1_memdep_phi1_pop1659_push36_covariance1_x_i_data = i_llvm_fpga_push_i1_memdep_phi1_pop1659_push36_covariance0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_memdep_phi1_pop1659_push36_covariance0_i_llvm_fpga_push_i1_memdep_phi1_pop1659_push36_covariance1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi1_pop1659_push36_covariance0_i_llvm_fpga_push_i1_memdep_phi1_pop1659_push36_covariance1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_memdep_phi1_pop1659_push36_covariance0_i_llvm_fpga_push_i1_memdep_phi1_pop1659_push36_covariance1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi1_pop1659_push36_covariance0_i_llvm_fpga_push_i1_memdep_phi1_pop1659_push36_covariance1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_memdep_phi1_pop1659_push36_covariance0_i_llvm_fpga_push_i1_memdep_phi1_pop1659_push36_covariance1_x (
        .i_valid(i_llvm_fpga_push_i1_memdep_phi1_pop1659_push36_covariance0_i_llvm_fpga_push_i1_memdep_phi1_pop1659_push36_covariance1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_memdep_phi1_pop1659_push36_covariance0_i_llvm_fpga_push_i1_memdep_phi1_pop1659_push36_covariance1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_memdep_phi1_pop1659_push36_covariance0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_memdep_phi1_pop1659_push36_covariance0_i_llvm_fpga_push_i1_memdep_phi1_pop1659_push36_covariance1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_memdep_phi1_pop1659_push36_covariance0_adapt_scalar_trunc4_sel_x(BITSELECT,129)@4
    assign i_llvm_fpga_push_i1_memdep_phi1_pop1659_push36_covariance0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_memdep_phi1_pop1659_push36_covariance0_i_llvm_fpga_push_i1_memdep_phi1_pop1659_push36_covariance1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_memdep_phi1_pop1659_pop36_covariance0_i_llvm_fpga_pop_i1_memdep_phi1_pop1659_pop36_covariance14_mux_x(MUX,102)@4
    assign i_llvm_fpga_pop_i1_memdep_phi1_pop1659_pop36_covariance0_i_llvm_fpga_pop_i1_memdep_phi1_pop1659_pop36_covariance14_mux_x_s = redist32_i_llvm_fpga_forked_covariance_b5_forked_covariance3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i1_memdep_phi1_pop1659_pop36_covariance0_i_llvm_fpga_pop_i1_memdep_phi1_pop1659_pop36_covariance14_mux_x_s or i_llvm_fpga_push_i1_memdep_phi1_pop1659_push36_covariance0_adapt_scalar_trunc4_sel_x_b or redist3_sync_together85_aunroll_x_in_c0_eni13_3_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i1_memdep_phi1_pop1659_pop36_covariance0_i_llvm_fpga_pop_i1_memdep_phi1_pop1659_pop36_covariance14_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_memdep_phi1_pop1659_pop36_covariance0_i_llvm_fpga_pop_i1_memdep_phi1_pop1659_pop36_covariance14_mux_x_q = i_llvm_fpga_push_i1_memdep_phi1_pop1659_push36_covariance0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_memdep_phi1_pop1659_pop36_covariance0_i_llvm_fpga_pop_i1_memdep_phi1_pop1659_pop36_covariance14_mux_x_q = redist3_sync_together85_aunroll_x_in_c0_eni13_3_tpl_4_q;
            default : i_llvm_fpga_pop_i1_memdep_phi1_pop1659_pop36_covariance0_i_llvm_fpga_pop_i1_memdep_phi1_pop1659_pop36_covariance14_mux_x_q = 1'b0;
        endcase
    end

    // redist4_sync_together85_aunroll_x_in_c0_eni13_4_tpl_4(DELAY,234)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_sync_together85_aunroll_x_in_c0_eni13_4_tpl_4_delay_0 <= $unsigned(in_c0_eni13_4_tpl);
            redist4_sync_together85_aunroll_x_in_c0_eni13_4_tpl_4_delay_1 <= redist4_sync_together85_aunroll_x_in_c0_eni13_4_tpl_4_delay_0;
            redist4_sync_together85_aunroll_x_in_c0_eni13_4_tpl_4_delay_2 <= redist4_sync_together85_aunroll_x_in_c0_eni13_4_tpl_4_delay_1;
            redist4_sync_together85_aunroll_x_in_c0_eni13_4_tpl_4_q <= redist4_sync_together85_aunroll_x_in_c0_eni13_4_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi_pop2277_push42_covariance0_element_extension2_x(BITJOIN,144)@4
    assign i_llvm_fpga_push_i1_memdep_phi_pop2277_push42_covariance0_element_extension2_x_q = {i_arrayidx81_covariance0_c_i7_01_x_q, i_llvm_fpga_pop_i1_memdep_phi_pop2277_pop42_covariance0_i_llvm_fpga_pop_i1_memdep_phi_pop2277_pop42_covariance15_mux_x_q};

    // valid_fanout_reg13(REG,187)@0 + 1
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

    // valid_fanout_reg12(REG,186)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist14_sync_together85_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi_pop2277_push42_covariance0_i_llvm_fpga_push_i1_memdep_phi_pop2277_push42_covariance1_x(FIFODELAY,145)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i1_memdep_phi_pop2277_push42_covariance0_i_llvm_fpga_push_i1_memdep_phi_pop2277_push42_covariance1_x_i_stall = ~ (valid_fanout_reg13_q & i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_memdep_phi_pop2277_push42_covariance0_i_llvm_fpga_push_i1_memdep_phi_pop2277_push42_covariance1_x_i_valid = valid_fanout_reg12_q & redist21_i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i1_memdep_phi_pop2277_push42_covariance0_i_llvm_fpga_push_i1_memdep_phi_pop2277_push42_covariance1_x_i_data = i_llvm_fpga_push_i1_memdep_phi_pop2277_push42_covariance0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_memdep_phi_pop2277_push42_covariance0_i_llvm_fpga_push_i1_memdep_phi_pop2277_push42_covariance1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi_pop2277_push42_covariance0_i_llvm_fpga_push_i1_memdep_phi_pop2277_push42_covariance1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_memdep_phi_pop2277_push42_covariance0_i_llvm_fpga_push_i1_memdep_phi_pop2277_push42_covariance1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi_pop2277_push42_covariance0_i_llvm_fpga_push_i1_memdep_phi_pop2277_push42_covariance1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_memdep_phi_pop2277_push42_covariance0_i_llvm_fpga_push_i1_memdep_phi_pop2277_push42_covariance1_x (
        .i_valid(i_llvm_fpga_push_i1_memdep_phi_pop2277_push42_covariance0_i_llvm_fpga_push_i1_memdep_phi_pop2277_push42_covariance1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_memdep_phi_pop2277_push42_covariance0_i_llvm_fpga_push_i1_memdep_phi_pop2277_push42_covariance1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_memdep_phi_pop2277_push42_covariance0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_memdep_phi_pop2277_push42_covariance0_i_llvm_fpga_push_i1_memdep_phi_pop2277_push42_covariance1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_memdep_phi_pop2277_push42_covariance0_adapt_scalar_trunc4_sel_x(BITSELECT,147)@4
    assign i_llvm_fpga_push_i1_memdep_phi_pop2277_push42_covariance0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_memdep_phi_pop2277_push42_covariance0_i_llvm_fpga_push_i1_memdep_phi_pop2277_push42_covariance1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_memdep_phi_pop2277_pop42_covariance0_i_llvm_fpga_pop_i1_memdep_phi_pop2277_pop42_covariance15_mux_x(MUX,105)@4
    assign i_llvm_fpga_pop_i1_memdep_phi_pop2277_pop42_covariance0_i_llvm_fpga_pop_i1_memdep_phi_pop2277_pop42_covariance15_mux_x_s = redist32_i_llvm_fpga_forked_covariance_b5_forked_covariance3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i1_memdep_phi_pop2277_pop42_covariance0_i_llvm_fpga_pop_i1_memdep_phi_pop2277_pop42_covariance15_mux_x_s or i_llvm_fpga_push_i1_memdep_phi_pop2277_push42_covariance0_adapt_scalar_trunc4_sel_x_b or redist4_sync_together85_aunroll_x_in_c0_eni13_4_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i1_memdep_phi_pop2277_pop42_covariance0_i_llvm_fpga_pop_i1_memdep_phi_pop2277_pop42_covariance15_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_memdep_phi_pop2277_pop42_covariance0_i_llvm_fpga_pop_i1_memdep_phi_pop2277_pop42_covariance15_mux_x_q = i_llvm_fpga_push_i1_memdep_phi_pop2277_push42_covariance0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_memdep_phi_pop2277_pop42_covariance0_i_llvm_fpga_pop_i1_memdep_phi_pop2277_pop42_covariance15_mux_x_q = redist4_sync_together85_aunroll_x_in_c0_eni13_4_tpl_4_q;
            default : i_llvm_fpga_pop_i1_memdep_phi_pop2277_pop42_covariance0_i_llvm_fpga_pop_i1_memdep_phi_pop2277_pop42_covariance15_mux_x_q = 1'b0;
        endcase
    end

    // i_memdep_phi1_or_covariance16(LOGICAL,65)@4 + 1
    assign i_memdep_phi1_or_covariance16_qi = i_llvm_fpga_pop_i1_memdep_phi_pop2277_pop42_covariance0_i_llvm_fpga_pop_i1_memdep_phi_pop2277_pop42_covariance15_mux_x_q | i_llvm_fpga_pop_i1_memdep_phi1_pop1659_pop36_covariance0_i_llvm_fpga_pop_i1_memdep_phi1_pop1659_pop36_covariance14_mux_x_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_memdep_phi1_or_covariance16_delay ( .xin(i_memdep_phi1_or_covariance16_qi), .xout(i_memdep_phi1_or_covariance16_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_covariance_data_local_pmem(CONSTANT,5)
    assign c_covariance_data_local_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx81_covariance0_upper_bits_x_merged_bit_select(BITSELECT,229)@4
    assign i_arrayidx81_covariance0_upper_bits_x_merged_bit_select_b = c_covariance_data_local_pmem_q[63:12];
    assign i_arrayidx81_covariance0_upper_bits_x_merged_bit_select_c = c_covariance_data_local_pmem_q[11:0];

    // redist0_i_arrayidx81_covariance0_upper_bits_x_merged_bit_select_b_1(DELAY,230)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_i_arrayidx81_covariance0_upper_bits_x_merged_bit_select_b_1_q <= $unsigned(i_arrayidx81_covariance0_upper_bits_x_merged_bit_select_b);
        end
    end

    // c_i32_074(CONSTANT,37)
    assign c_i32_074_q = $unsigned(32'b00000000000000000000000000000000);

    // redist2_sync_together85_aunroll_x_in_c0_eni13_1_tpl_4_inputreg0(DELAY,268)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_sync_together85_aunroll_x_in_c0_eni13_1_tpl_4_inputreg0_q <= $unsigned(in_c0_eni13_1_tpl);
        end
    end

    // redist2_sync_together85_aunroll_x_in_c0_eni13_1_tpl_4(DELAY,232)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_sync_together85_aunroll_x_in_c0_eni13_1_tpl_4_delay_0 <= $unsigned(redist2_sync_together85_aunroll_x_in_c0_eni13_1_tpl_4_inputreg0_q);
            redist2_sync_together85_aunroll_x_in_c0_eni13_1_tpl_4_delay_1 <= redist2_sync_together85_aunroll_x_in_c0_eni13_1_tpl_4_delay_0;
            redist2_sync_together85_aunroll_x_in_c0_eni13_1_tpl_4_q <= redist2_sync_together85_aunroll_x_in_c0_eni13_1_tpl_4_delay_1;
        end
    end

    // valid_fanout_reg15(REG,189)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg14(REG,188)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist14_sync_together85_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i32_j_039_pop2176_push41_covariance0_i_llvm_fpga_push_i32_j_039_pop2176_push41_covariance1_x(FIFODELAY,157)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i32_j_039_pop2176_push41_covariance0_i_llvm_fpga_push_i32_j_039_pop2176_push41_covariance1_x_i_stall = ~ (valid_fanout_reg15_q & i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_inv_pred_x_q);
    assign i_llvm_fpga_push_i32_j_039_pop2176_push41_covariance0_i_llvm_fpga_push_i32_j_039_pop2176_push41_covariance1_x_i_valid = valid_fanout_reg14_q & redist21_i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i32_j_039_pop2176_push41_covariance0_i_llvm_fpga_push_i32_j_039_pop2176_push41_covariance1_x_i_data = i_llvm_fpga_pop_i32_j_039_pop2176_pop41_covariance0_i_llvm_fpga_pop_i32_j_039_pop2176_pop41_covariance9_mux_x_q;
    assign i_llvm_fpga_push_i32_j_039_pop2176_push41_covariance0_i_llvm_fpga_push_i32_j_039_pop2176_push41_covariance1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_j_039_pop2176_push41_covariance0_i_llvm_fpga_push_i32_j_039_pop2176_push41_covariance1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_j_039_pop2176_push41_covariance0_i_llvm_fpga_push_i32_j_039_pop2176_push41_covariance1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_j_039_pop2176_push41_covariance0_i_llvm_fpga_push_i32_j_039_pop2176_push41_covariance1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_j_039_pop2176_push41_covariance0_i_llvm_fpga_push_i32_j_039_pop2176_push41_covariance1_x (
        .i_valid(i_llvm_fpga_push_i32_j_039_pop2176_push41_covariance0_i_llvm_fpga_push_i32_j_039_pop2176_push41_covariance1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_j_039_pop2176_push41_covariance0_i_llvm_fpga_push_i32_j_039_pop2176_push41_covariance1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i32_j_039_pop2176_pop41_covariance0_i_llvm_fpga_pop_i32_j_039_pop2176_pop41_covariance9_mux_x_q),
        .o_data(i_llvm_fpga_push_i32_j_039_pop2176_push41_covariance0_i_llvm_fpga_push_i32_j_039_pop2176_push41_covariance1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_j_039_pop2176_pop41_covariance0_i_llvm_fpga_pop_i32_j_039_pop2176_pop41_covariance9_mux_x(MUX,108)@4
    assign i_llvm_fpga_pop_i32_j_039_pop2176_pop41_covariance0_i_llvm_fpga_pop_i32_j_039_pop2176_pop41_covariance9_mux_x_s = redist32_i_llvm_fpga_forked_covariance_b5_forked_covariance3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i32_j_039_pop2176_pop41_covariance0_i_llvm_fpga_pop_i32_j_039_pop2176_pop41_covariance9_mux_x_s or i_llvm_fpga_push_i32_j_039_pop2176_push41_covariance0_i_llvm_fpga_push_i32_j_039_pop2176_push41_covariance1_x_o_data or redist2_sync_together85_aunroll_x_in_c0_eni13_1_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i32_j_039_pop2176_pop41_covariance0_i_llvm_fpga_pop_i32_j_039_pop2176_pop41_covariance9_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_j_039_pop2176_pop41_covariance0_i_llvm_fpga_pop_i32_j_039_pop2176_pop41_covariance9_mux_x_q = i_llvm_fpga_push_i32_j_039_pop2176_push41_covariance0_i_llvm_fpga_push_i32_j_039_pop2176_push41_covariance1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_j_039_pop2176_pop41_covariance0_i_llvm_fpga_pop_i32_j_039_pop2176_pop41_covariance9_mux_x_q = redist2_sync_together85_aunroll_x_in_c0_eni13_1_tpl_4_q;
            default : i_llvm_fpga_pop_i32_j_039_pop2176_pop41_covariance0_i_llvm_fpga_pop_i32_j_039_pop2176_pop41_covariance9_mux_x_q = 32'b0;
        endcase
    end

    // i_idxprom7_covariance10_sel_x(BITSELECT,98)@4
    assign i_idxprom7_covariance10_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_j_039_pop2176_pop41_covariance0_i_llvm_fpga_pop_i32_j_039_pop2176_pop41_covariance9_mux_x_q[31:0]};

    // i_idxprom7_covariance10_vt_select_31(BITSELECT,54)@4
    assign i_idxprom7_covariance10_vt_select_31_b = i_idxprom7_covariance10_sel_x_b[31:0];

    // redist35_i_idxprom7_covariance10_vt_select_31_b_1(DELAY,265)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist35_i_idxprom7_covariance10_vt_select_31_b_1_q <= $unsigned(i_idxprom7_covariance10_vt_select_31_b);
        end
    end

    // i_idxprom7_covariance10_vt_join(BITJOIN,53)@5
    assign i_idxprom7_covariance10_vt_join_q = {c_i32_074_q, redist35_i_idxprom7_covariance10_vt_select_31_b_1_q};

    // i_arrayidx81_covariance0_dupName_3_trunc_sel_x(BITSELECT,96)@5
    assign i_arrayidx81_covariance0_dupName_3_trunc_sel_x_b = i_idxprom7_covariance10_vt_join_q[11:0];

    // i_arrayidx81_covariance0_dupName_0_narrow_x(BITSELECT,87)@5
    assign i_arrayidx81_covariance0_dupName_0_narrow_x_b = i_arrayidx81_covariance0_dupName_3_trunc_sel_x_b[9:0];

    // i_arrayidx81_covariance0_dupName_0_shift_join_x(BITJOIN,88)@5
    assign i_arrayidx81_covariance0_dupName_0_shift_join_x_q = {i_arrayidx81_covariance0_dupName_0_narrow_x_b, i_arrayidx81_covariance13_vt_const_1_q};

    // c_i32_175(CONSTANT,38)
    assign c_i32_175_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_covariance20(ADD,59)@4
    assign i_inc_covariance20_a = {1'b0, i_llvm_fpga_pop_i32_i_037_pop33_covariance0_i_llvm_fpga_pop_i32_i_037_pop33_covariance11_mux_x_q};
    assign i_inc_covariance20_b = {1'b0, c_i32_175_q};
    assign i_inc_covariance20_o = $unsigned(i_inc_covariance20_a) + $unsigned(i_inc_covariance20_b);
    assign i_inc_covariance20_q = i_inc_covariance20_o[32:0];

    // bgTrunc_i_inc_covariance20_sel_x(BITSELECT,73)@4
    assign bgTrunc_i_inc_covariance20_sel_x_b = i_inc_covariance20_q[31:0];

    // valid_fanout_reg21(REG,195)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg21_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg20(REG,194)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg20_q <= $unsigned(redist14_sync_together85_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i32_i_037_push33_covariance0_i_llvm_fpga_push_i32_i_037_push33_covariance1_x(FIFODELAY,154)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i32_i_037_push33_covariance0_i_llvm_fpga_push_i32_i_037_push33_covariance1_x_i_stall = ~ (valid_fanout_reg21_q & i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_inv_pred_x_q);
    assign i_llvm_fpga_push_i32_i_037_push33_covariance0_i_llvm_fpga_push_i32_i_037_push33_covariance1_x_i_valid = valid_fanout_reg20_q & redist21_i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i32_i_037_push33_covariance0_i_llvm_fpga_push_i32_i_037_push33_covariance1_x_i_data = bgTrunc_i_inc_covariance20_sel_x_b;
    assign i_llvm_fpga_push_i32_i_037_push33_covariance0_i_llvm_fpga_push_i32_i_037_push33_covariance1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_i_037_push33_covariance0_i_llvm_fpga_push_i32_i_037_push33_covariance1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_i_037_push33_covariance0_i_llvm_fpga_push_i32_i_037_push33_covariance1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_i_037_push33_covariance0_i_llvm_fpga_push_i32_i_037_push33_covariance1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_i_037_push33_covariance0_i_llvm_fpga_push_i32_i_037_push33_covariance1_x (
        .i_valid(i_llvm_fpga_push_i32_i_037_push33_covariance0_i_llvm_fpga_push_i32_i_037_push33_covariance1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_i_037_push33_covariance0_i_llvm_fpga_push_i32_i_037_push33_covariance1_x_i_stall_bitsignaltemp),
        .i_data(bgTrunc_i_inc_covariance20_sel_x_b),
        .o_data(i_llvm_fpga_push_i32_i_037_push33_covariance0_i_llvm_fpga_push_i32_i_037_push33_covariance1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_037_pop33_covariance0_i_llvm_fpga_pop_i32_i_037_pop33_covariance11_mux_x(MUX,107)@4
    assign i_llvm_fpga_pop_i32_i_037_pop33_covariance0_i_llvm_fpga_pop_i32_i_037_pop33_covariance11_mux_x_s = redist32_i_llvm_fpga_forked_covariance_b5_forked_covariance3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i32_i_037_pop33_covariance0_i_llvm_fpga_pop_i32_i_037_pop33_covariance11_mux_x_s or i_llvm_fpga_push_i32_i_037_push33_covariance0_i_llvm_fpga_push_i32_i_037_push33_covariance1_x_o_data or c_i32_074_q)
    begin
        unique case (i_llvm_fpga_pop_i32_i_037_pop33_covariance0_i_llvm_fpga_pop_i32_i_037_pop33_covariance11_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_i_037_pop33_covariance0_i_llvm_fpga_pop_i32_i_037_pop33_covariance11_mux_x_q = i_llvm_fpga_push_i32_i_037_push33_covariance0_i_llvm_fpga_push_i32_i_037_push33_covariance1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_i_037_pop33_covariance0_i_llvm_fpga_pop_i32_i_037_pop33_covariance11_mux_x_q = c_i32_074_q;
            default : i_llvm_fpga_pop_i32_i_037_pop33_covariance0_i_llvm_fpga_pop_i32_i_037_pop33_covariance11_mux_x_q = 32'b0;
        endcase
    end

    // i_idxprom_covariance12_sel_x(BITSELECT,99)@4
    assign i_idxprom_covariance12_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_i_037_pop33_covariance0_i_llvm_fpga_pop_i32_i_037_pop33_covariance11_mux_x_q[31:0]};

    // i_idxprom_covariance12_vt_select_31(BITSELECT,58)@4
    assign i_idxprom_covariance12_vt_select_31_b = i_idxprom_covariance12_sel_x_b[31:0];

    // i_idxprom_covariance12_vt_join(BITJOIN,57)@4
    assign i_idxprom_covariance12_vt_join_q = {c_i32_074_q, i_idxprom_covariance12_vt_select_31_b};

    // i_arrayidx81_covariance0_dupName_0_trunc_sel_x(BITSELECT,94)@4
    assign i_arrayidx81_covariance0_dupName_0_trunc_sel_x_b = i_idxprom_covariance12_vt_join_q[11:0];

    // i_arrayidx81_covariance0_narrow_x(BITSELECT,82)@4
    assign i_arrayidx81_covariance0_narrow_x_b = i_arrayidx81_covariance0_dupName_0_trunc_sel_x_b[4:0];

    // i_arrayidx81_covariance0_shift_join_x(BITJOIN,83)@4
    assign i_arrayidx81_covariance0_shift_join_x_q = {i_arrayidx81_covariance0_narrow_x_b, i_arrayidx81_covariance0_c_i7_01_x_q};

    // i_arrayidx81_covariance0_add_x(ADD,78)@4
    assign i_arrayidx81_covariance0_add_x_a = {1'b0, i_arrayidx81_covariance0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx81_covariance0_add_x_b = {1'b0, i_arrayidx81_covariance0_shift_join_x_q};
    assign i_arrayidx81_covariance0_add_x_o = $unsigned(i_arrayidx81_covariance0_add_x_a) + $unsigned(i_arrayidx81_covariance0_add_x_b);
    assign i_arrayidx81_covariance0_add_x_q = i_arrayidx81_covariance0_add_x_o[12:0];

    // i_arrayidx81_covariance0_dupName_2_trunc_sel_x(BITSELECT,95)@4
    assign i_arrayidx81_covariance0_dupName_2_trunc_sel_x_b = i_arrayidx81_covariance0_add_x_q[11:0];

    // redist31_i_arrayidx81_covariance0_dupName_2_trunc_sel_x_b_1(DELAY,261)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist31_i_arrayidx81_covariance0_dupName_2_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx81_covariance0_dupName_2_trunc_sel_x_b);
        end
    end

    // i_arrayidx81_covariance0_dupName_0_add_x(ADD,86)@5
    assign i_arrayidx81_covariance0_dupName_0_add_x_a = {1'b0, redist31_i_arrayidx81_covariance0_dupName_2_trunc_sel_x_b_1_q};
    assign i_arrayidx81_covariance0_dupName_0_add_x_b = {1'b0, i_arrayidx81_covariance0_dupName_0_shift_join_x_q};
    assign i_arrayidx81_covariance0_dupName_0_add_x_o = $unsigned(i_arrayidx81_covariance0_dupName_0_add_x_a) + $unsigned(i_arrayidx81_covariance0_dupName_0_add_x_b);
    assign i_arrayidx81_covariance0_dupName_0_add_x_q = i_arrayidx81_covariance0_dupName_0_add_x_o[12:0];

    // i_arrayidx81_covariance0_dupName_5_trunc_sel_x(BITSELECT,97)@5
    assign i_arrayidx81_covariance0_dupName_5_trunc_sel_x_b = i_arrayidx81_covariance0_dupName_0_add_x_q[11:0];

    // i_arrayidx81_covariance0_append_upper_bits_x(BITJOIN,79)@5
    assign i_arrayidx81_covariance0_append_upper_bits_x_q = {redist0_i_arrayidx81_covariance0_upper_bits_x_merged_bit_select_b_1_q, i_arrayidx81_covariance0_dupName_5_trunc_sel_x_b};

    // i_arrayidx81_covariance13_vt_select_63(BITSELECT,46)@5
    assign i_arrayidx81_covariance13_vt_select_63_b = i_arrayidx81_covariance0_append_upper_bits_x_q[63:2];

    // i_arrayidx81_covariance13_vt_join(BITJOIN,45)@5
    assign i_arrayidx81_covariance13_vt_join_q = {i_arrayidx81_covariance13_vt_select_63_b, i_arrayidx81_covariance13_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_covariance2_covariance17(BLACKBOX,62)@5
    // in in_i_stall@20000000
    // out out_o_readdata@10
    // out out_o_stall@9
    // out out_o_valid@10
    // out out_unnamed_covariance2_covariance_avm_address@20000000
    // out out_unnamed_covariance2_covariance_avm_burstcount@20000000
    // out out_unnamed_covariance2_covariance_avm_byteenable@20000000
    // out out_unnamed_covariance2_covariance_avm_enable@20000000
    // out out_unnamed_covariance2_covariance_avm_read@20000000
    // out out_unnamed_covariance2_covariance_avm_write@20000000
    // out out_unnamed_covariance2_covariance_avm_writedata@20000000
    covariance_i_llvm_fpga_mem_unnamed_2_covariance0 thei_llvm_fpga_mem_unnamed_covariance2_covariance17 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx81_covariance13_vt_join_q),
        .in_i_dependence(i_memdep_phi1_or_covariance16_q),
        .in_i_predicate(i_covariance_b5_current_iter_isspec_covariance5_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg9_q),
        .in_unnamed_covariance2_covariance_avm_readdata(in_unnamed_covariance2_covariance_avm_readdata),
        .in_unnamed_covariance2_covariance_avm_readdatavalid(in_unnamed_covariance2_covariance_avm_readdatavalid),
        .in_unnamed_covariance2_covariance_avm_waitrequest(in_unnamed_covariance2_covariance_avm_waitrequest),
        .in_unnamed_covariance2_covariance_avm_writeack(in_unnamed_covariance2_covariance_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_covariance2_covariance17_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_covariance2_covariance_avm_address(i_llvm_fpga_mem_unnamed_covariance2_covariance17_out_unnamed_covariance2_covariance_avm_address),
        .out_unnamed_covariance2_covariance_avm_burstcount(i_llvm_fpga_mem_unnamed_covariance2_covariance17_out_unnamed_covariance2_covariance_avm_burstcount),
        .out_unnamed_covariance2_covariance_avm_byteenable(i_llvm_fpga_mem_unnamed_covariance2_covariance17_out_unnamed_covariance2_covariance_avm_byteenable),
        .out_unnamed_covariance2_covariance_avm_enable(i_llvm_fpga_mem_unnamed_covariance2_covariance17_out_unnamed_covariance2_covariance_avm_enable),
        .out_unnamed_covariance2_covariance_avm_read(i_llvm_fpga_mem_unnamed_covariance2_covariance17_out_unnamed_covariance2_covariance_avm_read),
        .out_unnamed_covariance2_covariance_avm_write(i_llvm_fpga_mem_unnamed_covariance2_covariance17_out_unnamed_covariance2_covariance_avm_write),
        .out_unnamed_covariance2_covariance_avm_writedata(i_llvm_fpga_mem_unnamed_covariance2_covariance17_out_unnamed_covariance2_covariance_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,42)
    assign out_unnamed_covariance2_covariance_avm_address = i_llvm_fpga_mem_unnamed_covariance2_covariance17_out_unnamed_covariance2_covariance_avm_address;
    assign out_unnamed_covariance2_covariance_avm_enable = i_llvm_fpga_mem_unnamed_covariance2_covariance17_out_unnamed_covariance2_covariance_avm_enable;
    assign out_unnamed_covariance2_covariance_avm_read = i_llvm_fpga_mem_unnamed_covariance2_covariance17_out_unnamed_covariance2_covariance_avm_read;
    assign out_unnamed_covariance2_covariance_avm_write = i_llvm_fpga_mem_unnamed_covariance2_covariance17_out_unnamed_covariance2_covariance_avm_write;
    assign out_unnamed_covariance2_covariance_avm_writedata = i_llvm_fpga_mem_unnamed_covariance2_covariance17_out_unnamed_covariance2_covariance_avm_writedata;
    assign out_unnamed_covariance2_covariance_avm_byteenable = i_llvm_fpga_mem_unnamed_covariance2_covariance17_out_unnamed_covariance2_covariance_avm_byteenable;
    assign out_unnamed_covariance2_covariance_avm_burstcount = i_llvm_fpga_mem_unnamed_covariance2_covariance17_out_unnamed_covariance2_covariance_avm_burstcount;

    // regfree_osync(GPOUT,69)
    assign out_exiting_valid_out = i_llvm_fpga_pipeline_keep_going40_covariance6_out_exiting_valid_out;

    // dupName_0_regfree_osync_x(GPOUT,75)
    assign out_pipeline_dummy_out = i_llvm_fpga_pipeline_keep_going40_covariance6_out_pipeline_dummy_out;

    // dupName_1_regfree_osync_x(GPOUT,76)
    assign out_pipeline_forked_out = i_llvm_fpga_pipeline_keep_going40_covariance6_out_pipeline_forked_out;

    // dupName_2_regfree_osync_x(GPOUT,77)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going40_covariance6_out_pipeline_valid_out;

    // redist17_sync_together85_aunroll_x_in_i_valid_6(DELAY,247)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist17_sync_together85_aunroll_x_in_i_valid_6_delay_0 <= '0;
        end
        else
        begin
            redist17_sync_together85_aunroll_x_in_i_valid_6_delay_0 <= $unsigned(redist16_sync_together85_aunroll_x_in_i_valid_4_q);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist17_sync_together85_aunroll_x_in_i_valid_6_q <= redist17_sync_together85_aunroll_x_in_i_valid_6_delay_0;
        end
    end

    // redist18_sync_together85_aunroll_x_in_i_valid_8(DELAY,248)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist18_sync_together85_aunroll_x_in_i_valid_8_delay_0 <= '0;
        end
        else
        begin
            redist18_sync_together85_aunroll_x_in_i_valid_8_delay_0 <= $unsigned(redist17_sync_together85_aunroll_x_in_i_valid_6_q);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist18_sync_together85_aunroll_x_in_i_valid_8_q <= redist18_sync_together85_aunroll_x_in_i_valid_8_delay_0;
        end
    end

    // redist19_sync_together85_aunroll_x_in_i_valid_9(DELAY,249)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist19_sync_together85_aunroll_x_in_i_valid_9_q <= '0;
        end
        else
        begin
            redist19_sync_together85_aunroll_x_in_i_valid_9_q <= $unsigned(redist18_sync_together85_aunroll_x_in_i_valid_8_q);
        end
    end

    // redist20_sync_together85_aunroll_x_in_i_valid_10(DELAY,250)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist20_sync_together85_aunroll_x_in_i_valid_10_q <= $unsigned(redist19_sync_together85_aunroll_x_in_i_valid_9_q);
        end
    end

    // valid_fanout_reg0(REG,174)@9 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist19_sync_together85_aunroll_x_in_i_valid_9_q);
        end
    end

    // redist37_i_covariance_b5_current_iter_isspec_covariance5_q_5(DELAY,267)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist37_i_covariance_b5_current_iter_isspec_covariance5_q_5_delay_0 <= $unsigned(i_covariance_b5_current_iter_isspec_covariance5_q);
            redist37_i_covariance_b5_current_iter_isspec_covariance5_q_5_delay_1 <= redist37_i_covariance_b5_current_iter_isspec_covariance5_q_5_delay_0;
            redist37_i_covariance_b5_current_iter_isspec_covariance5_q_5_delay_2 <= redist37_i_covariance_b5_current_iter_isspec_covariance5_q_5_delay_1;
            redist37_i_covariance_b5_current_iter_isspec_covariance5_q_5_delay_3 <= redist37_i_covariance_b5_current_iter_isspec_covariance5_q_5_delay_2;
            redist37_i_covariance_b5_current_iter_isspec_covariance5_q_5_q <= redist37_i_covariance_b5_current_iter_isspec_covariance5_q_5_delay_3;
        end
    end

    // redist13_sync_together85_aunroll_x_in_c0_eni13_13_tpl_10(DELAY,243)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist13_sync_together85_aunroll_x_in_c0_eni13_13_tpl_10 ( .xin(in_c0_eni13_13_tpl), .xout(redist13_sync_together85_aunroll_x_in_c0_eni13_13_tpl_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist12_sync_together85_aunroll_x_in_c0_eni13_12_tpl_10(DELAY,242)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist12_sync_together85_aunroll_x_in_c0_eni13_12_tpl_10 ( .xin(in_c0_eni13_12_tpl), .xout(redist12_sync_together85_aunroll_x_in_c0_eni13_12_tpl_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist11_sync_together85_aunroll_x_in_c0_eni13_11_tpl_10(DELAY,241)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist11_sync_together85_aunroll_x_in_c0_eni13_11_tpl_10 ( .xin(in_c0_eni13_11_tpl), .xout(redist11_sync_together85_aunroll_x_in_c0_eni13_11_tpl_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist10_sync_together85_aunroll_x_in_c0_eni13_10_tpl_10_offset(CONSTANT,274)
    assign redist10_sync_together85_aunroll_x_in_c0_eni13_10_tpl_10_offset_q = $unsigned(3'b011);

    // redist10_sync_together85_aunroll_x_in_c0_eni13_10_tpl_10_rdcnt(ADD,275)
    assign redist10_sync_together85_aunroll_x_in_c0_eni13_10_tpl_10_rdcnt_a = {1'b0, redist10_sync_together85_aunroll_x_in_c0_eni13_10_tpl_10_wraddr_q};
    assign redist10_sync_together85_aunroll_x_in_c0_eni13_10_tpl_10_rdcnt_b = {1'b0, redist10_sync_together85_aunroll_x_in_c0_eni13_10_tpl_10_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_sync_together85_aunroll_x_in_c0_eni13_10_tpl_10_rdcnt_o <= $unsigned(redist10_sync_together85_aunroll_x_in_c0_eni13_10_tpl_10_rdcnt_a) + $unsigned(redist10_sync_together85_aunroll_x_in_c0_eni13_10_tpl_10_rdcnt_b);
        end
    end
    assign redist10_sync_together85_aunroll_x_in_c0_eni13_10_tpl_10_rdcnt_q = redist10_sync_together85_aunroll_x_in_c0_eni13_10_tpl_10_rdcnt_o[3:0];

    // redist10_sync_together85_aunroll_x_in_c0_eni13_10_tpl_10_inputreg0(DELAY,270)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_sync_together85_aunroll_x_in_c0_eni13_10_tpl_10_inputreg0_q <= $unsigned(in_c0_eni13_10_tpl);
        end
    end

    // redist10_sync_together85_aunroll_x_in_c0_eni13_10_tpl_10_wraddr(COUNTER,273)
    // low=0, high=7, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_sync_together85_aunroll_x_in_c0_eni13_10_tpl_10_wraddr_i <= $unsigned(redist10_sync_together85_aunroll_x_in_c0_eni13_10_tpl_10_wraddr_i) + $unsigned(3'd1);
        end
    end
    assign redist10_sync_together85_aunroll_x_in_c0_eni13_10_tpl_10_wraddr_q = redist10_sync_together85_aunroll_x_in_c0_eni13_10_tpl_10_wraddr_i[2:0];

    // redist10_sync_together85_aunroll_x_in_c0_eni13_10_tpl_10_mem(DUALMEM,272)
    assign redist10_sync_together85_aunroll_x_in_c0_eni13_10_tpl_10_mem_ia = $unsigned(redist10_sync_together85_aunroll_x_in_c0_eni13_10_tpl_10_inputreg0_q);
    assign redist10_sync_together85_aunroll_x_in_c0_eni13_10_tpl_10_mem_aa = redist10_sync_together85_aunroll_x_in_c0_eni13_10_tpl_10_wraddr_q;
    assign redist10_sync_together85_aunroll_x_in_c0_eni13_10_tpl_10_mem_ab = redist10_sync_together85_aunroll_x_in_c0_eni13_10_tpl_10_rdcnt_q[2:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(8),
        .width_b(32),
        .widthad_b(3),
        .numwords_b(8),
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
    ) redist10_sync_together85_aunroll_x_in_c0_eni13_10_tpl_10_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist10_sync_together85_aunroll_x_in_c0_eni13_10_tpl_10_mem_aa),
        .data_a(redist10_sync_together85_aunroll_x_in_c0_eni13_10_tpl_10_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist10_sync_together85_aunroll_x_in_c0_eni13_10_tpl_10_mem_ab),
        .q_b(redist10_sync_together85_aunroll_x_in_c0_eni13_10_tpl_10_mem_iq),
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
    assign redist10_sync_together85_aunroll_x_in_c0_eni13_10_tpl_10_mem_q = redist10_sync_together85_aunroll_x_in_c0_eni13_10_tpl_10_mem_iq[31:0];

    // redist10_sync_together85_aunroll_x_in_c0_eni13_10_tpl_10_outputreg0(DELAY,271)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_sync_together85_aunroll_x_in_c0_eni13_10_tpl_10_outputreg0_q <= $unsigned(redist10_sync_together85_aunroll_x_in_c0_eni13_10_tpl_10_mem_q);
        end
    end

    // redist9_sync_together85_aunroll_x_in_c0_eni13_9_tpl_4(DELAY,239)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist9_sync_together85_aunroll_x_in_c0_eni13_9_tpl_4_delay_0 <= $unsigned(in_c0_eni13_9_tpl);
            redist9_sync_together85_aunroll_x_in_c0_eni13_9_tpl_4_delay_1 <= redist9_sync_together85_aunroll_x_in_c0_eni13_9_tpl_4_delay_0;
            redist9_sync_together85_aunroll_x_in_c0_eni13_9_tpl_4_delay_2 <= redist9_sync_together85_aunroll_x_in_c0_eni13_9_tpl_4_delay_1;
            redist9_sync_together85_aunroll_x_in_c0_eni13_9_tpl_4_q <= redist9_sync_together85_aunroll_x_in_c0_eni13_9_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_push_i1_notcmp4374_push40_covariance0_element_extension2_x(BITJOIN,150)@4
    assign i_llvm_fpga_push_i1_notcmp4374_push40_covariance0_element_extension2_x_q = {i_arrayidx81_covariance0_c_i7_01_x_q, i_llvm_fpga_pop_i1_notcmp4374_pop40_covariance0_i_llvm_fpga_pop_i1_notcmp4374_pop40_covariance41_mux_x_q};

    // valid_fanout_reg39(REG,213)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg39_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg38(REG,212)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg38_q <= $unsigned(redist14_sync_together85_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp4374_push40_covariance0_i_llvm_fpga_push_i1_notcmp4374_push40_covariance1_x(FIFODELAY,151)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i1_notcmp4374_push40_covariance0_i_llvm_fpga_push_i1_notcmp4374_push40_covariance1_x_i_stall = ~ (valid_fanout_reg39_q & i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_notcmp4374_push40_covariance0_i_llvm_fpga_push_i1_notcmp4374_push40_covariance1_x_i_valid = valid_fanout_reg38_q & redist21_i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i1_notcmp4374_push40_covariance0_i_llvm_fpga_push_i1_notcmp4374_push40_covariance1_x_i_data = i_llvm_fpga_push_i1_notcmp4374_push40_covariance0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_notcmp4374_push40_covariance0_i_llvm_fpga_push_i1_notcmp4374_push40_covariance1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_notcmp4374_push40_covariance0_i_llvm_fpga_push_i1_notcmp4374_push40_covariance1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_notcmp4374_push40_covariance0_i_llvm_fpga_push_i1_notcmp4374_push40_covariance1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_notcmp4374_push40_covariance0_i_llvm_fpga_push_i1_notcmp4374_push40_covariance1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_notcmp4374_push40_covariance0_i_llvm_fpga_push_i1_notcmp4374_push40_covariance1_x (
        .i_valid(i_llvm_fpga_push_i1_notcmp4374_push40_covariance0_i_llvm_fpga_push_i1_notcmp4374_push40_covariance1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_notcmp4374_push40_covariance0_i_llvm_fpga_push_i1_notcmp4374_push40_covariance1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_notcmp4374_push40_covariance0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_notcmp4374_push40_covariance0_i_llvm_fpga_push_i1_notcmp4374_push40_covariance1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_notcmp4374_push40_covariance0_adapt_scalar_trunc4_sel_x(BITSELECT,153)@4
    assign i_llvm_fpga_push_i1_notcmp4374_push40_covariance0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_notcmp4374_push40_covariance0_i_llvm_fpga_push_i1_notcmp4374_push40_covariance1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_notcmp4374_pop40_covariance0_i_llvm_fpga_pop_i1_notcmp4374_pop40_covariance41_mux_x(MUX,106)@4
    assign i_llvm_fpga_pop_i1_notcmp4374_pop40_covariance0_i_llvm_fpga_pop_i1_notcmp4374_pop40_covariance41_mux_x_s = redist32_i_llvm_fpga_forked_covariance_b5_forked_covariance3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i1_notcmp4374_pop40_covariance0_i_llvm_fpga_pop_i1_notcmp4374_pop40_covariance41_mux_x_s or i_llvm_fpga_push_i1_notcmp4374_push40_covariance0_adapt_scalar_trunc4_sel_x_b or redist9_sync_together85_aunroll_x_in_c0_eni13_9_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i1_notcmp4374_pop40_covariance0_i_llvm_fpga_pop_i1_notcmp4374_pop40_covariance41_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_notcmp4374_pop40_covariance0_i_llvm_fpga_pop_i1_notcmp4374_pop40_covariance41_mux_x_q = i_llvm_fpga_push_i1_notcmp4374_push40_covariance0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_notcmp4374_pop40_covariance0_i_llvm_fpga_pop_i1_notcmp4374_pop40_covariance41_mux_x_q = redist9_sync_together85_aunroll_x_in_c0_eni13_9_tpl_4_q;
            default : i_llvm_fpga_pop_i1_notcmp4374_pop40_covariance0_i_llvm_fpga_pop_i1_notcmp4374_pop40_covariance41_mux_x_q = 1'b0;
        endcase
    end

    // redist25_i_llvm_fpga_pop_i1_notcmp4374_pop40_covariance0_i_llvm_fpga_pop_i1_notcmp4374_pop40_covariance41_mux_x_q_6(DELAY,255)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist25_i_llvm_fpga_pop_i1_notcmp4374_pop40_covariance0_i_llvm_fpga_pop_i1_notcmp4374_pop40_covariance41_mux_x_q_6 ( .xin(i_llvm_fpga_pop_i1_notcmp4374_pop40_covariance0_i_llvm_fpga_pop_i1_notcmp4374_pop40_covariance41_mux_x_q), .xout(redist25_i_llvm_fpga_pop_i1_notcmp4374_pop40_covariance0_i_llvm_fpga_pop_i1_notcmp4374_pop40_covariance41_mux_x_q_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist8_sync_together85_aunroll_x_in_c0_eni13_8_tpl_4(DELAY,238)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_sync_together85_aunroll_x_in_c0_eni13_8_tpl_4_delay_0 <= $unsigned(in_c0_eni13_8_tpl);
            redist8_sync_together85_aunroll_x_in_c0_eni13_8_tpl_4_delay_1 <= redist8_sync_together85_aunroll_x_in_c0_eni13_8_tpl_4_delay_0;
            redist8_sync_together85_aunroll_x_in_c0_eni13_8_tpl_4_delay_2 <= redist8_sync_together85_aunroll_x_in_c0_eni13_8_tpl_4_delay_1;
            redist8_sync_together85_aunroll_x_in_c0_eni13_8_tpl_4_q <= redist8_sync_together85_aunroll_x_in_c0_eni13_8_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_push_i1_exitcond1072_push39_covariance0_element_extension2_x(BITJOIN,120)@4
    assign i_llvm_fpga_push_i1_exitcond1072_push39_covariance0_element_extension2_x_q = {i_arrayidx81_covariance0_c_i7_01_x_q, i_llvm_fpga_pop_i1_exitcond1072_pop39_covariance0_i_llvm_fpga_pop_i1_exitcond1072_pop39_covariance39_mux_x_q};

    // valid_fanout_reg36(REG,210)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg36_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg35(REG,209)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg35_q <= $unsigned(redist14_sync_together85_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_exitcond1072_push39_covariance0_i_llvm_fpga_push_i1_exitcond1072_push39_covariance1_x(FIFODELAY,121)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i1_exitcond1072_push39_covariance0_i_llvm_fpga_push_i1_exitcond1072_push39_covariance1_x_i_stall = ~ (valid_fanout_reg36_q & i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_exitcond1072_push39_covariance0_i_llvm_fpga_push_i1_exitcond1072_push39_covariance1_x_i_valid = valid_fanout_reg35_q & redist21_i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i1_exitcond1072_push39_covariance0_i_llvm_fpga_push_i1_exitcond1072_push39_covariance1_x_i_data = i_llvm_fpga_push_i1_exitcond1072_push39_covariance0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_exitcond1072_push39_covariance0_i_llvm_fpga_push_i1_exitcond1072_push39_covariance1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_exitcond1072_push39_covariance0_i_llvm_fpga_push_i1_exitcond1072_push39_covariance1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_exitcond1072_push39_covariance0_i_llvm_fpga_push_i1_exitcond1072_push39_covariance1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_exitcond1072_push39_covariance0_i_llvm_fpga_push_i1_exitcond1072_push39_covariance1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_exitcond1072_push39_covariance0_i_llvm_fpga_push_i1_exitcond1072_push39_covariance1_x (
        .i_valid(i_llvm_fpga_push_i1_exitcond1072_push39_covariance0_i_llvm_fpga_push_i1_exitcond1072_push39_covariance1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_exitcond1072_push39_covariance0_i_llvm_fpga_push_i1_exitcond1072_push39_covariance1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_exitcond1072_push39_covariance0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_exitcond1072_push39_covariance0_i_llvm_fpga_push_i1_exitcond1072_push39_covariance1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_exitcond1072_push39_covariance0_adapt_scalar_trunc4_sel_x(BITSELECT,123)@4
    assign i_llvm_fpga_push_i1_exitcond1072_push39_covariance0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_exitcond1072_push39_covariance0_i_llvm_fpga_push_i1_exitcond1072_push39_covariance1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_exitcond1072_pop39_covariance0_i_llvm_fpga_pop_i1_exitcond1072_pop39_covariance39_mux_x(MUX,101)@4
    assign i_llvm_fpga_pop_i1_exitcond1072_pop39_covariance0_i_llvm_fpga_pop_i1_exitcond1072_pop39_covariance39_mux_x_s = redist32_i_llvm_fpga_forked_covariance_b5_forked_covariance3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i1_exitcond1072_pop39_covariance0_i_llvm_fpga_pop_i1_exitcond1072_pop39_covariance39_mux_x_s or i_llvm_fpga_push_i1_exitcond1072_push39_covariance0_adapt_scalar_trunc4_sel_x_b or redist8_sync_together85_aunroll_x_in_c0_eni13_8_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i1_exitcond1072_pop39_covariance0_i_llvm_fpga_pop_i1_exitcond1072_pop39_covariance39_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_exitcond1072_pop39_covariance0_i_llvm_fpga_pop_i1_exitcond1072_pop39_covariance39_mux_x_q = i_llvm_fpga_push_i1_exitcond1072_push39_covariance0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_exitcond1072_pop39_covariance0_i_llvm_fpga_pop_i1_exitcond1072_pop39_covariance39_mux_x_q = redist8_sync_together85_aunroll_x_in_c0_eni13_8_tpl_4_q;
            default : i_llvm_fpga_pop_i1_exitcond1072_pop39_covariance0_i_llvm_fpga_pop_i1_exitcond1072_pop39_covariance39_mux_x_q = 1'b0;
        endcase
    end

    // redist29_i_llvm_fpga_pop_i1_exitcond1072_pop39_covariance0_i_llvm_fpga_pop_i1_exitcond1072_pop39_covariance39_mux_x_q_6(DELAY,259)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist29_i_llvm_fpga_pop_i1_exitcond1072_pop39_covariance0_i_llvm_fpga_pop_i1_exitcond1072_pop39_covariance39_mux_x_q_6 ( .xin(i_llvm_fpga_pop_i1_exitcond1072_pop39_covariance0_i_llvm_fpga_pop_i1_exitcond1072_pop39_covariance39_mux_x_q), .xout(redist29_i_llvm_fpga_pop_i1_exitcond1072_pop39_covariance0_i_llvm_fpga_pop_i1_exitcond1072_pop39_covariance39_mux_x_q_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist7_sync_together85_aunroll_x_in_c0_eni13_7_tpl_4(DELAY,237)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_sync_together85_aunroll_x_in_c0_eni13_7_tpl_4_delay_0 <= $unsigned(in_c0_eni13_7_tpl);
            redist7_sync_together85_aunroll_x_in_c0_eni13_7_tpl_4_delay_1 <= redist7_sync_together85_aunroll_x_in_c0_eni13_7_tpl_4_delay_0;
            redist7_sync_together85_aunroll_x_in_c0_eni13_7_tpl_4_delay_2 <= redist7_sync_together85_aunroll_x_in_c0_eni13_7_tpl_4_delay_1;
            redist7_sync_together85_aunroll_x_in_c0_eni13_7_tpl_4_q <= redist7_sync_together85_aunroll_x_in_c0_eni13_7_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi4_pop1865_push38_covariance0_element_extension2_x(BITJOIN,138)@4
    assign i_llvm_fpga_push_i1_memdep_phi4_pop1865_push38_covariance0_element_extension2_x_q = {i_arrayidx81_covariance0_c_i7_01_x_q, i_llvm_fpga_pop_i1_memdep_phi4_pop1865_pop38_covariance0_i_llvm_fpga_pop_i1_memdep_phi4_pop1865_pop38_covariance37_mux_x_q};

    // valid_fanout_reg33(REG,207)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg33_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg32(REG,206)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg32_q <= $unsigned(redist14_sync_together85_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi4_pop1865_push38_covariance0_i_llvm_fpga_push_i1_memdep_phi4_pop1865_push38_covariance1_x(FIFODELAY,139)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i1_memdep_phi4_pop1865_push38_covariance0_i_llvm_fpga_push_i1_memdep_phi4_pop1865_push38_covariance1_x_i_stall = ~ (valid_fanout_reg33_q & i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_memdep_phi4_pop1865_push38_covariance0_i_llvm_fpga_push_i1_memdep_phi4_pop1865_push38_covariance1_x_i_valid = valid_fanout_reg32_q & redist21_i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i1_memdep_phi4_pop1865_push38_covariance0_i_llvm_fpga_push_i1_memdep_phi4_pop1865_push38_covariance1_x_i_data = i_llvm_fpga_push_i1_memdep_phi4_pop1865_push38_covariance0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_memdep_phi4_pop1865_push38_covariance0_i_llvm_fpga_push_i1_memdep_phi4_pop1865_push38_covariance1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi4_pop1865_push38_covariance0_i_llvm_fpga_push_i1_memdep_phi4_pop1865_push38_covariance1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_memdep_phi4_pop1865_push38_covariance0_i_llvm_fpga_push_i1_memdep_phi4_pop1865_push38_covariance1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi4_pop1865_push38_covariance0_i_llvm_fpga_push_i1_memdep_phi4_pop1865_push38_covariance1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_memdep_phi4_pop1865_push38_covariance0_i_llvm_fpga_push_i1_memdep_phi4_pop1865_push38_covariance1_x (
        .i_valid(i_llvm_fpga_push_i1_memdep_phi4_pop1865_push38_covariance0_i_llvm_fpga_push_i1_memdep_phi4_pop1865_push38_covariance1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_memdep_phi4_pop1865_push38_covariance0_i_llvm_fpga_push_i1_memdep_phi4_pop1865_push38_covariance1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_memdep_phi4_pop1865_push38_covariance0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_memdep_phi4_pop1865_push38_covariance0_i_llvm_fpga_push_i1_memdep_phi4_pop1865_push38_covariance1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_memdep_phi4_pop1865_push38_covariance0_adapt_scalar_trunc4_sel_x(BITSELECT,141)@4
    assign i_llvm_fpga_push_i1_memdep_phi4_pop1865_push38_covariance0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_memdep_phi4_pop1865_push38_covariance0_i_llvm_fpga_push_i1_memdep_phi4_pop1865_push38_covariance1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_memdep_phi4_pop1865_pop38_covariance0_i_llvm_fpga_pop_i1_memdep_phi4_pop1865_pop38_covariance37_mux_x(MUX,104)@4
    assign i_llvm_fpga_pop_i1_memdep_phi4_pop1865_pop38_covariance0_i_llvm_fpga_pop_i1_memdep_phi4_pop1865_pop38_covariance37_mux_x_s = redist32_i_llvm_fpga_forked_covariance_b5_forked_covariance3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i1_memdep_phi4_pop1865_pop38_covariance0_i_llvm_fpga_pop_i1_memdep_phi4_pop1865_pop38_covariance37_mux_x_s or i_llvm_fpga_push_i1_memdep_phi4_pop1865_push38_covariance0_adapt_scalar_trunc4_sel_x_b or redist7_sync_together85_aunroll_x_in_c0_eni13_7_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i1_memdep_phi4_pop1865_pop38_covariance0_i_llvm_fpga_pop_i1_memdep_phi4_pop1865_pop38_covariance37_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_memdep_phi4_pop1865_pop38_covariance0_i_llvm_fpga_pop_i1_memdep_phi4_pop1865_pop38_covariance37_mux_x_q = i_llvm_fpga_push_i1_memdep_phi4_pop1865_push38_covariance0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_memdep_phi4_pop1865_pop38_covariance0_i_llvm_fpga_pop_i1_memdep_phi4_pop1865_pop38_covariance37_mux_x_q = redist7_sync_together85_aunroll_x_in_c0_eni13_7_tpl_4_q;
            default : i_llvm_fpga_pop_i1_memdep_phi4_pop1865_pop38_covariance0_i_llvm_fpga_pop_i1_memdep_phi4_pop1865_pop38_covariance37_mux_x_q = 1'b0;
        endcase
    end

    // redist26_i_llvm_fpga_pop_i1_memdep_phi4_pop1865_pop38_covariance0_i_llvm_fpga_pop_i1_memdep_phi4_pop1865_pop38_covariance37_mux_x_q_6(DELAY,256)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist26_i_llvm_fpga_pop_i1_memdep_phi4_pop1865_pop38_covariance0_i_llvm_fpga_pop_i1_memdep_phi4_pop1865_pop38_covariance37_mux_x_q_6 ( .xin(i_llvm_fpga_pop_i1_memdep_phi4_pop1865_pop38_covariance0_i_llvm_fpga_pop_i1_memdep_phi4_pop1865_pop38_covariance37_mux_x_q), .xout(redist26_i_llvm_fpga_pop_i1_memdep_phi4_pop1865_pop38_covariance0_i_llvm_fpga_pop_i1_memdep_phi4_pop1865_pop38_covariance37_mux_x_q_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist6_sync_together85_aunroll_x_in_c0_eni13_6_tpl_4(DELAY,236)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_sync_together85_aunroll_x_in_c0_eni13_6_tpl_4_delay_0 <= $unsigned(in_c0_eni13_6_tpl);
            redist6_sync_together85_aunroll_x_in_c0_eni13_6_tpl_4_delay_1 <= redist6_sync_together85_aunroll_x_in_c0_eni13_6_tpl_4_delay_0;
            redist6_sync_together85_aunroll_x_in_c0_eni13_6_tpl_4_delay_2 <= redist6_sync_together85_aunroll_x_in_c0_eni13_6_tpl_4_delay_1;
            redist6_sync_together85_aunroll_x_in_c0_eni13_6_tpl_4_q <= redist6_sync_together85_aunroll_x_in_c0_eni13_6_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi2_pop1762_push37_covariance0_element_extension2_x(BITJOIN,132)@4
    assign i_llvm_fpga_push_i1_memdep_phi2_pop1762_push37_covariance0_element_extension2_x_q = {i_arrayidx81_covariance0_c_i7_01_x_q, i_llvm_fpga_pop_i1_memdep_phi2_pop1762_pop37_covariance0_i_llvm_fpga_pop_i1_memdep_phi2_pop1762_pop37_covariance35_mux_x_q};

    // valid_fanout_reg30(REG,204)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg30_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg29(REG,203)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg29_q <= $unsigned(redist14_sync_together85_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi2_pop1762_push37_covariance0_i_llvm_fpga_push_i1_memdep_phi2_pop1762_push37_covariance1_x(FIFODELAY,133)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i1_memdep_phi2_pop1762_push37_covariance0_i_llvm_fpga_push_i1_memdep_phi2_pop1762_push37_covariance1_x_i_stall = ~ (valid_fanout_reg30_q & i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_memdep_phi2_pop1762_push37_covariance0_i_llvm_fpga_push_i1_memdep_phi2_pop1762_push37_covariance1_x_i_valid = valid_fanout_reg29_q & redist21_i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i1_memdep_phi2_pop1762_push37_covariance0_i_llvm_fpga_push_i1_memdep_phi2_pop1762_push37_covariance1_x_i_data = i_llvm_fpga_push_i1_memdep_phi2_pop1762_push37_covariance0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_memdep_phi2_pop1762_push37_covariance0_i_llvm_fpga_push_i1_memdep_phi2_pop1762_push37_covariance1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi2_pop1762_push37_covariance0_i_llvm_fpga_push_i1_memdep_phi2_pop1762_push37_covariance1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_memdep_phi2_pop1762_push37_covariance0_i_llvm_fpga_push_i1_memdep_phi2_pop1762_push37_covariance1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi2_pop1762_push37_covariance0_i_llvm_fpga_push_i1_memdep_phi2_pop1762_push37_covariance1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_memdep_phi2_pop1762_push37_covariance0_i_llvm_fpga_push_i1_memdep_phi2_pop1762_push37_covariance1_x (
        .i_valid(i_llvm_fpga_push_i1_memdep_phi2_pop1762_push37_covariance0_i_llvm_fpga_push_i1_memdep_phi2_pop1762_push37_covariance1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_memdep_phi2_pop1762_push37_covariance0_i_llvm_fpga_push_i1_memdep_phi2_pop1762_push37_covariance1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_memdep_phi2_pop1762_push37_covariance0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_memdep_phi2_pop1762_push37_covariance0_i_llvm_fpga_push_i1_memdep_phi2_pop1762_push37_covariance1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_memdep_phi2_pop1762_push37_covariance0_adapt_scalar_trunc4_sel_x(BITSELECT,135)@4
    assign i_llvm_fpga_push_i1_memdep_phi2_pop1762_push37_covariance0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_memdep_phi2_pop1762_push37_covariance0_i_llvm_fpga_push_i1_memdep_phi2_pop1762_push37_covariance1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_memdep_phi2_pop1762_pop37_covariance0_i_llvm_fpga_pop_i1_memdep_phi2_pop1762_pop37_covariance35_mux_x(MUX,103)@4
    assign i_llvm_fpga_pop_i1_memdep_phi2_pop1762_pop37_covariance0_i_llvm_fpga_pop_i1_memdep_phi2_pop1762_pop37_covariance35_mux_x_s = redist32_i_llvm_fpga_forked_covariance_b5_forked_covariance3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i1_memdep_phi2_pop1762_pop37_covariance0_i_llvm_fpga_pop_i1_memdep_phi2_pop1762_pop37_covariance35_mux_x_s or i_llvm_fpga_push_i1_memdep_phi2_pop1762_push37_covariance0_adapt_scalar_trunc4_sel_x_b or redist6_sync_together85_aunroll_x_in_c0_eni13_6_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i1_memdep_phi2_pop1762_pop37_covariance0_i_llvm_fpga_pop_i1_memdep_phi2_pop1762_pop37_covariance35_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_memdep_phi2_pop1762_pop37_covariance0_i_llvm_fpga_pop_i1_memdep_phi2_pop1762_pop37_covariance35_mux_x_q = i_llvm_fpga_push_i1_memdep_phi2_pop1762_push37_covariance0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_memdep_phi2_pop1762_pop37_covariance0_i_llvm_fpga_pop_i1_memdep_phi2_pop1762_pop37_covariance35_mux_x_q = redist6_sync_together85_aunroll_x_in_c0_eni13_6_tpl_4_q;
            default : i_llvm_fpga_pop_i1_memdep_phi2_pop1762_pop37_covariance0_i_llvm_fpga_pop_i1_memdep_phi2_pop1762_pop37_covariance35_mux_x_q = 1'b0;
        endcase
    end

    // redist27_i_llvm_fpga_pop_i1_memdep_phi2_pop1762_pop37_covariance0_i_llvm_fpga_pop_i1_memdep_phi2_pop1762_pop37_covariance35_mux_x_q_6(DELAY,257)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist27_i_llvm_fpga_pop_i1_memdep_phi2_pop1762_pop37_covariance0_i_llvm_fpga_pop_i1_memdep_phi2_pop1762_pop37_covariance35_mux_x_q_6 ( .xin(i_llvm_fpga_pop_i1_memdep_phi2_pop1762_pop37_covariance0_i_llvm_fpga_pop_i1_memdep_phi2_pop1762_pop37_covariance35_mux_x_q), .xout(redist27_i_llvm_fpga_pop_i1_memdep_phi2_pop1762_pop37_covariance0_i_llvm_fpga_pop_i1_memdep_phi2_pop1762_pop37_covariance35_mux_x_q_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist24_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance0_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance33_mux_x_q_6_offset(CONSTANT,280)
    assign redist24_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance0_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance33_mux_x_q_6_offset_q = $unsigned(2'b11);

    // redist24_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance0_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance33_mux_x_q_6_rdcnt(ADD,281)
    assign redist24_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance0_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance33_mux_x_q_6_rdcnt_a = {1'b0, redist24_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance0_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance33_mux_x_q_6_wraddr_q};
    assign redist24_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance0_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance33_mux_x_q_6_rdcnt_b = {1'b0, redist24_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance0_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance33_mux_x_q_6_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist24_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance0_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance33_mux_x_q_6_rdcnt_o <= $unsigned(redist24_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance0_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance33_mux_x_q_6_rdcnt_a) + $unsigned(redist24_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance0_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance33_mux_x_q_6_rdcnt_b);
        end
    end
    assign redist24_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance0_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance33_mux_x_q_6_rdcnt_q = redist24_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance0_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance33_mux_x_q_6_rdcnt_o[2:0];

    // redist5_sync_together85_aunroll_x_in_c0_eni13_5_tpl_4_inputreg0(DELAY,269)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_sync_together85_aunroll_x_in_c0_eni13_5_tpl_4_inputreg0_q <= $unsigned(in_c0_eni13_5_tpl);
        end
    end

    // redist5_sync_together85_aunroll_x_in_c0_eni13_5_tpl_4(DELAY,235)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_sync_together85_aunroll_x_in_c0_eni13_5_tpl_4_delay_0 <= $unsigned(redist5_sync_together85_aunroll_x_in_c0_eni13_5_tpl_4_inputreg0_q);
            redist5_sync_together85_aunroll_x_in_c0_eni13_5_tpl_4_delay_1 <= redist5_sync_together85_aunroll_x_in_c0_eni13_5_tpl_4_delay_0;
            redist5_sync_together85_aunroll_x_in_c0_eni13_5_tpl_4_q <= redist5_sync_together85_aunroll_x_in_c0_eni13_5_tpl_4_delay_1;
        end
    end

    // valid_fanout_reg27(REG,201)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg27_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg26(REG,200)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg26_q <= $unsigned(redist14_sync_together85_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i32_lim_ext53_push35_covariance0_i_llvm_fpga_push_i32_lim_ext53_push35_covariance1_x(FIFODELAY,160)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i32_lim_ext53_push35_covariance0_i_llvm_fpga_push_i32_lim_ext53_push35_covariance1_x_i_stall = ~ (valid_fanout_reg27_q & i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_inv_pred_x_q);
    assign i_llvm_fpga_push_i32_lim_ext53_push35_covariance0_i_llvm_fpga_push_i32_lim_ext53_push35_covariance1_x_i_valid = valid_fanout_reg26_q & redist21_i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i32_lim_ext53_push35_covariance0_i_llvm_fpga_push_i32_lim_ext53_push35_covariance1_x_i_data = i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance0_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance33_mux_x_q;
    assign i_llvm_fpga_push_i32_lim_ext53_push35_covariance0_i_llvm_fpga_push_i32_lim_ext53_push35_covariance1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_lim_ext53_push35_covariance0_i_llvm_fpga_push_i32_lim_ext53_push35_covariance1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_lim_ext53_push35_covariance0_i_llvm_fpga_push_i32_lim_ext53_push35_covariance1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_lim_ext53_push35_covariance0_i_llvm_fpga_push_i32_lim_ext53_push35_covariance1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_lim_ext53_push35_covariance0_i_llvm_fpga_push_i32_lim_ext53_push35_covariance1_x (
        .i_valid(i_llvm_fpga_push_i32_lim_ext53_push35_covariance0_i_llvm_fpga_push_i32_lim_ext53_push35_covariance1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_lim_ext53_push35_covariance0_i_llvm_fpga_push_i32_lim_ext53_push35_covariance1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance0_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance33_mux_x_q),
        .o_data(i_llvm_fpga_push_i32_lim_ext53_push35_covariance0_i_llvm_fpga_push_i32_lim_ext53_push35_covariance1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance0_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance33_mux_x(MUX,109)@4
    assign i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance0_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance33_mux_x_s = redist32_i_llvm_fpga_forked_covariance_b5_forked_covariance3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance0_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance33_mux_x_s or i_llvm_fpga_push_i32_lim_ext53_push35_covariance0_i_llvm_fpga_push_i32_lim_ext53_push35_covariance1_x_o_data or redist5_sync_together85_aunroll_x_in_c0_eni13_5_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance0_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance33_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance0_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance33_mux_x_q = i_llvm_fpga_push_i32_lim_ext53_push35_covariance0_i_llvm_fpga_push_i32_lim_ext53_push35_covariance1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance0_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance33_mux_x_q = redist5_sync_together85_aunroll_x_in_c0_eni13_5_tpl_4_q;
            default : i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance0_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance33_mux_x_q = 32'b0;
        endcase
    end

    // redist24_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance0_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance33_mux_x_q_6_inputreg0(DELAY,276)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist24_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance0_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance33_mux_x_q_6_inputreg0_q <= $unsigned(i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance0_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance33_mux_x_q);
        end
    end

    // redist24_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance0_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance33_mux_x_q_6_wraddr(COUNTER,279)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist24_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance0_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance33_mux_x_q_6_wraddr_i <= $unsigned(redist24_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance0_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance33_mux_x_q_6_wraddr_i) + $unsigned(2'd1);
        end
    end
    assign redist24_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance0_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance33_mux_x_q_6_wraddr_q = redist24_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance0_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance33_mux_x_q_6_wraddr_i[1:0];

    // redist24_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance0_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance33_mux_x_q_6_mem(DUALMEM,278)
    assign redist24_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance0_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance33_mux_x_q_6_mem_ia = $unsigned(redist24_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance0_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance33_mux_x_q_6_inputreg0_q);
    assign redist24_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance0_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance33_mux_x_q_6_mem_aa = redist24_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance0_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance33_mux_x_q_6_wraddr_q;
    assign redist24_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance0_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance33_mux_x_q_6_mem_ab = redist24_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance0_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance33_mux_x_q_6_rdcnt_q[1:0];
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
    ) redist24_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance0_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance33_mux_x_q_6_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist24_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance0_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance33_mux_x_q_6_mem_aa),
        .data_a(redist24_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance0_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance33_mux_x_q_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist24_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance0_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance33_mux_x_q_6_mem_ab),
        .q_b(redist24_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance0_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance33_mux_x_q_6_mem_iq),
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
    assign redist24_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance0_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance33_mux_x_q_6_mem_q = redist24_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance0_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance33_mux_x_q_6_mem_iq[31:0];

    // redist24_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance0_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance33_mux_x_q_6_outputreg0(DELAY,277)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist24_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance0_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance33_mux_x_q_6_outputreg0_q <= $unsigned(redist24_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance0_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance33_mux_x_q_6_mem_q);
        end
    end

    // i_notcmp38_covariance29(LOGICAL,66)@10
    assign i_notcmp38_covariance29_q = redist1_i_exitcond_covariance22_cmp_nsign_q_6_q ^ VCC_q;

    // redist1_i_exitcond_covariance22_cmp_nsign_q_6(DELAY,231)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist1_i_exitcond_covariance22_cmp_nsign_q_6 ( .xin(i_exitcond_covariance22_cmp_nsign_q), .xout(redist1_i_exitcond_covariance22_cmp_nsign_q_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist22_i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_inv_pred_x_q_6(DELAY,252)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist22_i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_inv_pred_x_q_6_delay_0 <= $unsigned(redist21_i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_inv_pred_x_q_2_q);
            redist22_i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_inv_pred_x_q_6_delay_1 <= redist22_i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_inv_pred_x_q_6_delay_0;
            redist22_i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_inv_pred_x_q_6_delay_2 <= redist22_i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_inv_pred_x_q_6_delay_1;
            redist22_i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_inv_pred_x_q_6_q <= redist22_i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_inv_pred_x_q_6_delay_2;
        end
    end

    // valid_fanout_reg19(REG,193)@6 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(redist17_sync_together85_aunroll_x_in_i_valid_6_q);
        end
    end

    // redist23_i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_inv_pred_x_q_8(DELAY,253)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist23_i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_inv_pred_x_q_8_delay_0 <= $unsigned(redist22_i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_inv_pred_x_q_6_q);
            redist23_i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_inv_pred_x_q_8_q <= redist23_i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_inv_pred_x_q_8_delay_0;
        end
    end

    // valid_fanout_reg18(REG,192)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(redist18_sync_together85_aunroll_x_in_i_valid_8_q);
        end
    end

    // i_llvm_fpga_push_i32_m_036_push34_covariance0_i_llvm_fpga_push_i32_m_036_push34_covariance1_x(FIFODELAY,163)@7 + 1
    // in i_valid@9
    // in i_write_pred@9
    // in i_data@10
    // out o_data@10
    assign i_llvm_fpga_push_i32_m_036_push34_covariance0_i_llvm_fpga_push_i32_m_036_push34_covariance1_x_i_stall = ~ (valid_fanout_reg19_q & redist22_i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_inv_pred_x_q_6_q);
    assign i_llvm_fpga_push_i32_m_036_push34_covariance0_i_llvm_fpga_push_i32_m_036_push34_covariance1_x_i_valid = valid_fanout_reg18_q & redist23_i_llvm_fpga_push_i1_covariance_b5_next_iter_isreal_push_covariance0_inv_pred_x_q_8_q;
    assign i_llvm_fpga_push_i32_m_036_push34_covariance0_i_llvm_fpga_push_i32_m_036_push34_covariance1_x_i_data = bgTrunc_i_add_covariance19_sel_x_b;
    assign i_llvm_fpga_push_i32_m_036_push34_covariance0_i_llvm_fpga_push_i32_m_036_push34_covariance1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_m_036_push34_covariance0_i_llvm_fpga_push_i32_m_036_push34_covariance1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_m_036_push34_covariance0_i_llvm_fpga_push_i32_m_036_push34_covariance1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_m_036_push34_covariance0_i_llvm_fpga_push_i32_m_036_push34_covariance1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_m_036_push34_covariance0_i_llvm_fpga_push_i32_m_036_push34_covariance1_x (
        .i_valid(i_llvm_fpga_push_i32_m_036_push34_covariance0_i_llvm_fpga_push_i32_m_036_push34_covariance1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_m_036_push34_covariance0_i_llvm_fpga_push_i32_m_036_push34_covariance1_x_i_stall_bitsignaltemp),
        .i_data(bgTrunc_i_add_covariance19_sel_x_b),
        .o_data(i_llvm_fpga_push_i32_m_036_push34_covariance0_i_llvm_fpga_push_i32_m_036_push34_covariance1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // redist33_i_llvm_fpga_forked_covariance_b5_forked_covariance3_out_buffer_out_10(DELAY,263)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist33_i_llvm_fpga_forked_covariance_b5_forked_covariance3_out_buffer_out_10 ( .xin(redist32_i_llvm_fpga_forked_covariance_b5_forked_covariance3_out_buffer_out_4_q), .xout(redist33_i_llvm_fpga_forked_covariance_b5_forked_covariance3_out_buffer_out_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_pop_i32_m_036_pop34_covariance0_i_llvm_fpga_pop_i32_m_036_pop34_covariance18_mux_x(MUX,110)@10
    assign i_llvm_fpga_pop_i32_m_036_pop34_covariance0_i_llvm_fpga_pop_i32_m_036_pop34_covariance18_mux_x_s = redist33_i_llvm_fpga_forked_covariance_b5_forked_covariance3_out_buffer_out_10_q;
    always @(i_llvm_fpga_pop_i32_m_036_pop34_covariance0_i_llvm_fpga_pop_i32_m_036_pop34_covariance18_mux_x_s or i_llvm_fpga_push_i32_m_036_push34_covariance0_i_llvm_fpga_push_i32_m_036_push34_covariance1_x_o_data or c_i32_074_q)
    begin
        unique case (i_llvm_fpga_pop_i32_m_036_pop34_covariance0_i_llvm_fpga_pop_i32_m_036_pop34_covariance18_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_m_036_pop34_covariance0_i_llvm_fpga_pop_i32_m_036_pop34_covariance18_mux_x_q = i_llvm_fpga_push_i32_m_036_push34_covariance0_i_llvm_fpga_push_i32_m_036_push34_covariance1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_m_036_pop34_covariance0_i_llvm_fpga_pop_i32_m_036_pop34_covariance18_mux_x_q = c_i32_074_q;
            default : i_llvm_fpga_pop_i32_m_036_pop34_covariance0_i_llvm_fpga_pop_i32_m_036_pop34_covariance18_mux_x_q = 32'b0;
        endcase
    end

    // i_add_covariance19(ADD,43)@10
    assign i_add_covariance19_a = {1'b0, i_llvm_fpga_mem_unnamed_covariance2_covariance17_out_o_readdata};
    assign i_add_covariance19_b = {1'b0, i_llvm_fpga_pop_i32_m_036_pop34_covariance0_i_llvm_fpga_pop_i32_m_036_pop34_covariance18_mux_x_q};
    assign i_add_covariance19_o = $unsigned(i_add_covariance19_a) + $unsigned(i_add_covariance19_b);
    assign i_add_covariance19_q = i_add_covariance19_o[32:0];

    // bgTrunc_i_add_covariance19_sel_x(BITSELECT,71)@10
    assign bgTrunc_i_add_covariance19_sel_x_b = i_add_covariance19_q[31:0];

    // redist28_i_llvm_fpga_pop_i1_memdep_phi1_pop1659_pop36_covariance0_i_llvm_fpga_pop_i1_memdep_phi1_pop1659_pop36_covariance14_mux_x_q_6(DELAY,258)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist28_i_llvm_fpga_pop_i1_memdep_phi1_pop1659_pop36_covariance0_i_llvm_fpga_pop_i1_memdep_phi1_pop1659_pop36_covariance14_mux_x_q_6 ( .xin(i_llvm_fpga_pop_i1_memdep_phi1_pop1659_pop36_covariance0_i_llvm_fpga_pop_i1_memdep_phi1_pop1659_pop36_covariance14_mux_x_q), .xout(redist28_i_llvm_fpga_pop_i1_memdep_phi1_pop1659_pop36_covariance0_i_llvm_fpga_pop_i1_memdep_phi1_pop1659_pop36_covariance14_mux_x_q_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist36_i_idxprom7_covariance10_vt_join_q_5_inputreg0(DELAY,282)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist36_i_idxprom7_covariance10_vt_join_q_5_inputreg0_q <= $unsigned(i_idxprom7_covariance10_vt_join_q);
        end
    end

    // redist36_i_idxprom7_covariance10_vt_join_q_5(DELAY,266)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist36_i_idxprom7_covariance10_vt_join_q_5_delay_0 <= $unsigned(redist36_i_idxprom7_covariance10_vt_join_q_5_inputreg0_q);
            redist36_i_idxprom7_covariance10_vt_join_q_5_delay_1 <= redist36_i_idxprom7_covariance10_vt_join_q_5_delay_0;
            redist36_i_idxprom7_covariance10_vt_join_q_5_q <= redist36_i_idxprom7_covariance10_vt_join_q_5_delay_1;
        end
    end

    // redist36_i_idxprom7_covariance10_vt_join_q_5_outputreg0(DELAY,283)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist36_i_idxprom7_covariance10_vt_join_q_5_outputreg0_q <= $unsigned(redist36_i_idxprom7_covariance10_vt_join_q_5_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,172)@10
    assign out_c0_exi14_0_tpl = GND_q;
    assign out_c0_exi14_1_tpl = redist36_i_idxprom7_covariance10_vt_join_q_5_outputreg0_q;
    assign out_c0_exi14_2_tpl = redist28_i_llvm_fpga_pop_i1_memdep_phi1_pop1659_pop36_covariance0_i_llvm_fpga_pop_i1_memdep_phi1_pop1659_pop36_covariance14_mux_x_q_6_q;
    assign out_c0_exi14_3_tpl = bgTrunc_i_add_covariance19_sel_x_b;
    assign out_c0_exi14_4_tpl = redist1_i_exitcond_covariance22_cmp_nsign_q_6_q;
    assign out_c0_exi14_5_tpl = i_notcmp38_covariance29_q;
    assign out_c0_exi14_6_tpl = redist24_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance0_i_llvm_fpga_pop_i32_lim_ext53_pop35_covariance33_mux_x_q_6_outputreg0_q;
    assign out_c0_exi14_7_tpl = redist27_i_llvm_fpga_pop_i1_memdep_phi2_pop1762_pop37_covariance0_i_llvm_fpga_pop_i1_memdep_phi2_pop1762_pop37_covariance35_mux_x_q_6_q;
    assign out_c0_exi14_8_tpl = redist26_i_llvm_fpga_pop_i1_memdep_phi4_pop1865_pop38_covariance0_i_llvm_fpga_pop_i1_memdep_phi4_pop1865_pop38_covariance37_mux_x_q_6_q;
    assign out_c0_exi14_9_tpl = redist29_i_llvm_fpga_pop_i1_exitcond1072_pop39_covariance0_i_llvm_fpga_pop_i1_exitcond1072_pop39_covariance39_mux_x_q_6_q;
    assign out_c0_exi14_10_tpl = redist25_i_llvm_fpga_pop_i1_notcmp4374_pop40_covariance0_i_llvm_fpga_pop_i1_notcmp4374_pop40_covariance41_mux_x_q_6_q;
    assign out_c0_exi14_11_tpl = redist10_sync_together85_aunroll_x_in_c0_eni13_10_tpl_10_outputreg0_q;
    assign out_c0_exi14_12_tpl = redist11_sync_together85_aunroll_x_in_c0_eni13_11_tpl_10_q;
    assign out_c0_exi14_13_tpl = redist12_sync_together85_aunroll_x_in_c0_eni13_12_tpl_10_q;
    assign out_c0_exi14_14_tpl = redist13_sync_together85_aunroll_x_in_c0_eni13_13_tpl_10_q;
    assign out_covariance_B5_current_iter_isspec = redist37_i_covariance_b5_current_iter_isspec_covariance5_q_5_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_profile_loop_o_valid = redist20_sync_together85_aunroll_x_in_i_valid_10_q;

endmodule
