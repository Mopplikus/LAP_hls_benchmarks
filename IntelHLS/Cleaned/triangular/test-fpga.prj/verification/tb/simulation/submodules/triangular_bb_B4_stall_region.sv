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

// SystemVerilog created from bb_triangular_B4_stall_region
// Created for function/kernel triangular
// SystemVerilog created on Tue Jun 13 03:05:47 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module triangular_bb_B4_stall_region (
    input wire [31:0] in_lm1_triangular_avm_readdata,
    input wire [0:0] in_lm1_triangular_avm_writeack,
    input wire [0:0] in_lm1_triangular_avm_waitrequest,
    input wire [0:0] in_lm1_triangular_avm_readdatavalid,
    output wire [31:0] out_lm62_triangular_avm_address,
    output wire [0:0] out_lm62_triangular_avm_enable,
    output wire [0:0] out_lm62_triangular_avm_read,
    output wire [0:0] out_lm62_triangular_avm_write,
    output wire [31:0] out_lm62_triangular_avm_writedata,
    output wire [3:0] out_lm62_triangular_avm_byteenable,
    output wire [0:0] out_lm62_triangular_avm_burstcount,
    output wire [0:0] out_c0_exe594,
    output wire [0:0] out_c0_exe695,
    output wire [31:0] out_c0_exe796,
    output wire [0:0] out_c0_exe897,
    output wire [0:0] out_memdep,
    output wire [0:0] out_valid_out,
    input wire [31:0] in_lm83_triangular_avm_readdata,
    input wire [0:0] in_lm83_triangular_avm_writeack,
    input wire [0:0] in_lm83_triangular_avm_waitrequest,
    input wire [0:0] in_lm83_triangular_avm_readdatavalid,
    output wire [31:0] out_lm1_triangular_avm_address,
    output wire [0:0] out_lm1_triangular_avm_enable,
    output wire [0:0] out_lm1_triangular_avm_read,
    output wire [0:0] out_lm1_triangular_avm_write,
    output wire [31:0] out_lm1_triangular_avm_writedata,
    output wire [3:0] out_lm1_triangular_avm_byteenable,
    output wire [0:0] out_lm1_triangular_avm_burstcount,
    input wire [31:0] in_memdep_triangular_avm_readdata,
    input wire [0:0] in_memdep_triangular_avm_writeack,
    input wire [0:0] in_memdep_triangular_avm_waitrequest,
    input wire [0:0] in_memdep_triangular_avm_readdatavalid,
    output wire [31:0] out_lm83_triangular_avm_address,
    output wire [0:0] out_lm83_triangular_avm_enable,
    output wire [0:0] out_lm83_triangular_avm_read,
    output wire [0:0] out_lm83_triangular_avm_write,
    output wire [31:0] out_lm83_triangular_avm_writedata,
    output wire [3:0] out_lm83_triangular_avm_byteenable,
    output wire [0:0] out_lm83_triangular_avm_burstcount,
    output wire [31:0] out_memdep_triangular_avm_address,
    output wire [0:0] out_memdep_triangular_avm_enable,
    output wire [0:0] out_memdep_triangular_avm_read,
    output wire [0:0] out_memdep_triangular_avm_write,
    output wire [31:0] out_memdep_triangular_avm_writedata,
    output wire [3:0] out_memdep_triangular_avm_byteenable,
    output wire [0:0] out_memdep_triangular_avm_burstcount,
    output wire [0:0] out_lsu_memdep_o_active,
    input wire [31:0] in_lm62_triangular_avm_readdata,
    input wire [0:0] in_lm62_triangular_avm_writeack,
    input wire [0:0] in_lm62_triangular_avm_waitrequest,
    input wire [0:0] in_lm62_triangular_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_triangular6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_triangular6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [31:0] in_intel_reserved_ffwd_1_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked23,
    input wire [31:0] in_i_03650,
    input wire [31:0] in_lim_ext35_pop1455,
    input wire [31:0] in_lim_ext46,
    input wire [63:0] in_mPtr_bitcast_index52,
    input wire [0:0] in_memdep_phi4_pop1354,
    input wire [0:0] in_notcmp2753,
    input wire [31:0] in_reorder_limiter_enter37_pop1556,
    input wire [31:0] in_reorder_limiter_enter49,
    input wire [31:0] in_sub151,
    input wire [32:0] in_unnamed_triangular11,
    input wire [0:0] in_unnamed_triangular12,
    input wire [0:0] in_unnamed_triangular13,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] bgTrunc_i_dec_triangular13_sel_x_b;
    wire [63:0] bgTrunc_i_mul6_triangular31_sel_x_in;
    wire [31:0] bgTrunc_i_mul6_triangular31_sel_x_b;
    wire [31:0] bgTrunc_i_mul_add14_triangular18_sel_x_b;
    wire [31:0] bgTrunc_i_mul_add16_triangular21_sel_x_b;
    wire [31:0] bgTrunc_i_sub10_triangular32_sel_x_b;
    wire [63:0] i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b;
    wire [1:0] i_mptr_bitcast_index38_triangular0_c_i2_01_x_q;
    wire [63:0] i_mptr_bitcast_index40_triangular0_dupName_0_trunc_sel_x_b;
    wire [0:0] i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_1_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_3_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_5_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_6_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_7_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_8_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_9_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_12_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_13_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_14_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_triangular6_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_triangular6_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_pipeline_valid_out;
    wire [0:0] triangular_B4_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [31:0] triangular_B4_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [31:0] triangular_B4_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [32:0] triangular_B4_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [31:0] triangular_B4_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [31:0] triangular_B4_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [0:0] triangular_B4_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [63:0] triangular_B4_merge_reg_aunroll_x_out_data_out_7_tpl;
    wire [0:0] triangular_B4_merge_reg_aunroll_x_out_data_out_8_tpl;
    wire [0:0] triangular_B4_merge_reg_aunroll_x_out_data_out_9_tpl;
    wire [0:0] triangular_B4_merge_reg_aunroll_x_out_data_out_10_tpl;
    wire [31:0] triangular_B4_merge_reg_aunroll_x_out_data_out_11_tpl;
    wire [31:0] triangular_B4_merge_reg_aunroll_x_out_data_out_12_tpl;
    wire [0:0] triangular_B4_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] triangular_B4_merge_reg_aunroll_x_out_valid_out;
    wire [31:0] c_i32_142_q;
    wire [32:0] i_add8_triangular24_a;
    wire [32:0] i_add8_triangular24_b;
    logic [32:0] i_add8_triangular24_o;
    wire [32:0] i_add8_triangular24_q;
    wire [32:0] i_add_triangular23_a;
    wire [32:0] i_add_triangular23_b;
    logic [32:0] i_add_triangular23_o;
    wire [32:0] i_add_triangular23_q;
    wire [32:0] i_dec_triangular13_a;
    wire [32:0] i_dec_triangular13_b;
    logic [32:0] i_dec_triangular13_o;
    wire [32:0] i_dec_triangular13_q;
    wire [0:0] i_first_cleanup_xor_or_triangular20_qi;
    reg [0:0] i_first_cleanup_xor_or_triangular20_q;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_n4618_triangular4_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_n4618_triangular4_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_n4618_triangular4_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_out_valid_out;
    wire [31:0] i_llvm_fpga_mem_lm1_triangular29_out_lm1_triangular_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm1_triangular29_out_lm1_triangular_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_lm1_triangular29_out_lm1_triangular_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm1_triangular29_out_lm1_triangular_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm1_triangular29_out_lm1_triangular_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm1_triangular29_out_lm1_triangular_avm_write;
    wire [31:0] i_llvm_fpga_mem_lm1_triangular29_out_lm1_triangular_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm1_triangular29_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm1_triangular29_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm1_triangular29_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_lm62_triangular22_out_lm62_triangular_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm62_triangular22_out_lm62_triangular_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_lm62_triangular22_out_lm62_triangular_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm62_triangular22_out_lm62_triangular_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm62_triangular22_out_lm62_triangular_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm62_triangular22_out_lm62_triangular_avm_write;
    wire [31:0] i_llvm_fpga_mem_lm62_triangular22_out_lm62_triangular_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm62_triangular22_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm62_triangular22_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm62_triangular22_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_lm83_triangular30_out_lm83_triangular_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm83_triangular30_out_lm83_triangular_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_lm83_triangular30_out_lm83_triangular_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm83_triangular30_out_lm83_triangular_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm83_triangular30_out_lm83_triangular_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm83_triangular30_out_lm83_triangular_avm_write;
    wire [31:0] i_llvm_fpga_mem_lm83_triangular30_out_lm83_triangular_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm83_triangular30_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm83_triangular30_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm83_triangular30_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_triangular33_out_lsu_memdep_o_active;
    wire [31:0] i_llvm_fpga_mem_memdep_triangular33_out_memdep_triangular_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_triangular33_out_memdep_triangular_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_triangular33_out_memdep_triangular_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_triangular33_out_memdep_triangular_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_triangular33_out_memdep_triangular_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_triangular33_out_memdep_triangular_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_triangular33_out_memdep_triangular_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_triangular33_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_triangular33_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_triangular33_out_o_writeack;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_out_feedback_stall_out_18;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_out_feedback_stall_out_23;
    wire [0:0] i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_k_032_pop17_triangular7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_k_032_pop17_triangular7_out_feedback_stall_out_17;
    wire [0:0] i_llvm_fpga_pop_i32_k_032_pop17_triangular7_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_k_032_pop17_triangular7_out_valid_out;
    wire [63:0] i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_out_data_out;
    wire [0:0] i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_out_feedback_stall_out_25;
    wire [0:0] i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push18_triangular34_out_feedback_out_18;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push18_triangular34_out_feedback_valid_out_18;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push18_triangular34_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push18_triangular34_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i32_i_03639_push23_triangular14_out_feedback_out_23;
    wire [0:0] i_llvm_fpga_push_i32_i_03639_push23_triangular14_out_feedback_valid_out_23;
    wire [0:0] i_llvm_fpga_push_i32_i_03639_push23_triangular14_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_i_03639_push23_triangular14_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i32_k_032_push17_triangular19_out_feedback_out_17;
    wire [0:0] i_llvm_fpga_push_i32_k_032_push17_triangular19_out_feedback_valid_out_17;
    wire [0:0] i_llvm_fpga_push_i32_k_032_push17_triangular19_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_k_032_push17_triangular19_out_valid_out;
    wire [63:0] i_llvm_fpga_push_p1025i32_mptr_bitcast_index41_push25_triangular15_out_feedback_out_25;
    wire [0:0] i_llvm_fpga_push_p1025i32_mptr_bitcast_index41_push25_triangular15_out_feedback_valid_out_25;
    wire [0:0] i_llvm_fpga_push_p1025i32_mptr_bitcast_index41_push25_triangular15_out_stall_out;
    wire [0:0] i_llvm_fpga_push_p1025i32_mptr_bitcast_index41_push25_triangular15_out_valid_out;
    wire [0:0] i_memdep_phi4_or_triangular17_q;
    wire [32:0] i_mul_add14_triangular18_a;
    wire [32:0] i_mul_add14_triangular18_b;
    logic [32:0] i_mul_add14_triangular18_o;
    wire [32:0] i_mul_add14_triangular18_q;
    wire [31:0] i_mul_add14_triangular18_vt_join_q;
    wire [29:0] i_mul_add14_triangular18_vt_select_31_b;
    wire [32:0] i_mul_add16_triangular21_a;
    wire [32:0] i_mul_add16_triangular21_b;
    logic [32:0] i_mul_add16_triangular21_o;
    wire [32:0] i_mul_add16_triangular21_q;
    wire [31:0] i_mul_add16_triangular21_vt_join_q;
    wire [29:0] i_mul_add16_triangular21_vt_select_31_b;
    wire [32:0] i_sub10_triangular32_a;
    wire [32:0] i_sub10_triangular32_b;
    logic [32:0] i_sub10_triangular32_o;
    wire [32:0] i_sub10_triangular32_q;
    wire [31:0] i_unnamed_triangular10_vt_join_q;
    wire [29:0] i_unnamed_triangular10_vt_select_31_b;
    wire [4:0] i_unnamed_triangular11_vt_const_4_q;
    wire [31:0] i_unnamed_triangular11_vt_join_q;
    wire [26:0] i_unnamed_triangular11_vt_select_31_b;
    wire [5:0] i_unnamed_triangular12_vt_const_5_q;
    wire [31:0] i_unnamed_triangular12_vt_join_q;
    wire [25:0] i_unnamed_triangular12_vt_select_31_b;
    wire [0:0] i_unnamed_triangular16_q;
    wire [30:0] leftShiftStage0Idx1Rng1_uid166_dupName_0_i_unnamed_triangular0_shift_x_in;
    wire [30:0] leftShiftStage0Idx1Rng1_uid166_dupName_0_i_unnamed_triangular0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid167_dupName_0_i_unnamed_triangular0_shift_x_q;
    wire [0:0] leftShiftStage0_uid169_dupName_0_i_unnamed_triangular0_shift_x_s;
    reg [31:0] leftShiftStage0_uid169_dupName_0_i_unnamed_triangular0_shift_x_q;
    wire [3:0] leftShiftStage1Idx1Pad4_uid170_dupName_0_i_unnamed_triangular0_shift_x_q;
    wire [27:0] leftShiftStage1Idx1Rng4_uid171_dupName_0_i_unnamed_triangular0_shift_x_in;
    wire [27:0] leftShiftStage1Idx1Rng4_uid171_dupName_0_i_unnamed_triangular0_shift_x_b;
    wire [31:0] leftShiftStage1Idx1_uid172_dupName_0_i_unnamed_triangular0_shift_x_q;
    wire [0:0] leftShiftStage1_uid174_dupName_0_i_unnamed_triangular0_shift_x_s;
    reg [31:0] leftShiftStage1_uid174_dupName_0_i_unnamed_triangular0_shift_x_q;
    wire [29:0] leftShiftStage0Idx1Rng2_uid179_dupName_1_i_unnamed_triangular0_shift_x_in;
    wire [29:0] leftShiftStage0Idx1Rng2_uid179_dupName_1_i_unnamed_triangular0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid180_dupName_1_i_unnamed_triangular0_shift_x_q;
    wire [0:0] leftShiftStage0_uid182_dupName_1_i_unnamed_triangular0_shift_x_s;
    reg [31:0] leftShiftStage0_uid182_dupName_1_i_unnamed_triangular0_shift_x_q;
    wire [27:0] leftShiftStage1Idx1Rng4_uid184_dupName_1_i_unnamed_triangular0_shift_x_in;
    wire [27:0] leftShiftStage1Idx1Rng4_uid184_dupName_1_i_unnamed_triangular0_shift_x_b;
    wire [31:0] leftShiftStage1Idx1_uid185_dupName_1_i_unnamed_triangular0_shift_x_q;
    wire [0:0] leftShiftStage1_uid187_dupName_1_i_unnamed_triangular0_shift_x_s;
    reg [31:0] leftShiftStage1_uid187_dupName_1_i_unnamed_triangular0_shift_x_q;
    wire [50:0] i_mul6_triangular31_sums_align_1_q;
    wire [50:0] i_mul6_triangular31_sums_align_1_qint;
    wire i_mul6_triangular31_im0_cma_reset;
    (* preserve *) reg [17:0] i_mul6_triangular31_im0_cma_a0 [0:0];
    (* preserve *) reg [17:0] i_mul6_triangular31_im0_cma_c0 [0:0];
    wire [35:0] i_mul6_triangular31_im0_cma_p [0:0];
    wire [35:0] i_mul6_triangular31_im0_cma_u [0:0];
    wire [35:0] i_mul6_triangular31_im0_cma_w [0:0];
    wire [35:0] i_mul6_triangular31_im0_cma_x [0:0];
    wire [35:0] i_mul6_triangular31_im0_cma_y [0:0];
    reg [35:0] i_mul6_triangular31_im0_cma_s [0:0];
    wire [35:0] i_mul6_triangular31_im0_cma_qq;
    wire [35:0] i_mul6_triangular31_im0_cma_q;
    wire i_mul6_triangular31_im0_cma_ena0;
    wire i_mul6_triangular31_im0_cma_ena1;
    wire i_mul6_triangular31_im8_cma_reset;
    (* preserve *) reg [13:0] i_mul6_triangular31_im8_cma_a0 [0:0];
    (* preserve *) reg [13:0] i_mul6_triangular31_im8_cma_c0 [0:0];
    wire [27:0] i_mul6_triangular31_im8_cma_p [0:0];
    wire [27:0] i_mul6_triangular31_im8_cma_u [0:0];
    wire [27:0] i_mul6_triangular31_im8_cma_w [0:0];
    wire [27:0] i_mul6_triangular31_im8_cma_x [0:0];
    wire [27:0] i_mul6_triangular31_im8_cma_y [0:0];
    reg [27:0] i_mul6_triangular31_im8_cma_s [0:0];
    wire [27:0] i_mul6_triangular31_im8_cma_qq;
    wire [27:0] i_mul6_triangular31_im8_cma_q;
    wire i_mul6_triangular31_im8_cma_ena0;
    wire i_mul6_triangular31_im8_cma_ena1;
    wire i_mul6_triangular31_ma3_cma_reset;
    (* preserve *) reg [13:0] i_mul6_triangular31_ma3_cma_a0 [0:1];
    (* preserve *) reg [17:0] i_mul6_triangular31_ma3_cma_c0 [0:1];
    wire [31:0] i_mul6_triangular31_ma3_cma_p [0:1];
    wire [32:0] i_mul6_triangular31_ma3_cma_u [0:1];
    wire [32:0] i_mul6_triangular31_ma3_cma_w [0:0];
    wire [32:0] i_mul6_triangular31_ma3_cma_x [0:0];
    wire [32:0] i_mul6_triangular31_ma3_cma_y [0:0];
    reg [32:0] i_mul6_triangular31_ma3_cma_s [0:0];
    wire [32:0] i_mul6_triangular31_ma3_cma_qq;
    wire [32:0] i_mul6_triangular31_ma3_cma_q;
    wire i_mul6_triangular31_ma3_cma_ena0;
    wire i_mul6_triangular31_ma3_cma_ena1;
    wire [60:0] i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_a;
    wire [60:0] i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_b;
    logic [60:0] i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_o;
    wire [0:0] i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_c;
    wire [59:0] i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_q;
    wire [6:0] i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_a;
    wire [6:0] i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_b;
    logic [6:0] i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_o;
    wire [0:0] i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_cin;
    wire [4:0] i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_q;
    wire [64:0] i_mptr_bitcast_index38_triangular0_add_x_BitJoin_for_q_q;
    wire [60:0] i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_a;
    wire [60:0] i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_b;
    logic [60:0] i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_o;
    wire [0:0] i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_c;
    wire [59:0] i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_q;
    wire [6:0] i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_a;
    wire [6:0] i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_b;
    logic [6:0] i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_o;
    wire [0:0] i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_cin;
    wire [4:0] i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_q;
    wire [64:0] i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q_q;
    wire [13:0] i_mul6_triangular31_sums_result_add_0_0_UpperBits_for_b_q;
    wire [60:0] i_mul6_triangular31_sums_result_add_0_0_p1_of_2_a;
    wire [60:0] i_mul6_triangular31_sums_result_add_0_0_p1_of_2_b;
    logic [60:0] i_mul6_triangular31_sums_result_add_0_0_p1_of_2_o;
    wire [0:0] i_mul6_triangular31_sums_result_add_0_0_p1_of_2_c;
    wire [59:0] i_mul6_triangular31_sums_result_add_0_0_p1_of_2_q;
    wire [6:0] i_mul6_triangular31_sums_result_add_0_0_p2_of_2_a;
    wire [6:0] i_mul6_triangular31_sums_result_add_0_0_p2_of_2_b;
    logic [6:0] i_mul6_triangular31_sums_result_add_0_0_p2_of_2_o;
    wire [0:0] i_mul6_triangular31_sums_result_add_0_0_p2_of_2_cin;
    wire [4:0] i_mul6_triangular31_sums_result_add_0_0_p2_of_2_q;
    wire [64:0] i_mul6_triangular31_sums_result_add_0_0_BitJoin_for_q_q;
    wire [59:0] i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_a_tessel0_0_b;
    wire [3:0] i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_a_tessel1_0_b;
    wire [4:0] i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [31:0] i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel0_1_b;
    wire [0:0] i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel0_2_b;
    wire [59:0] i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_BitJoin_for_b_q;
    wire [4:0] i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [31:0] i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel0_1_b;
    wire [0:0] i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel0_2_b;
    wire [59:0] i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_BitJoin_for_b_q;
    wire [4:0] i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [59:0] i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q;
    wire [4:0] i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q;
    wire [59:0] i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q;
    wire [17:0] i_mul6_triangular31_bs2_merged_bit_select_b;
    wire [13:0] i_mul6_triangular31_bs2_merged_bit_select_c;
    wire [17:0] i_mul6_triangular31_bs1_merged_bit_select_b;
    wire [13:0] i_mul6_triangular31_bs1_merged_bit_select_c;
    wire [23:0] i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b;
    wire [3:0] i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c;
    wire [8:0] i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b;
    wire [4:0] i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c;
    wire [32:0] join_for_coalesced_delay_0_q;
    wire [31:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [34:0] join_for_coalesced_delay_1_q;
    wire [31:0] sel_for_coalesced_delay_1_b;
    wire [0:0] sel_for_coalesced_delay_1_c;
    wire [0:0] sel_for_coalesced_delay_1_d;
    wire [0:0] sel_for_coalesced_delay_1_e;
    wire [64:0] join_for_coalesced_delay_2_q;
    wire [63:0] sel_for_coalesced_delay_2_b;
    wire [0:0] sel_for_coalesced_delay_2_c;
    reg [3:0] redist0_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_q;
    reg [0:0] redist1_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0_q;
    reg [3:0] redist5_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_a_tessel1_0_b_1_0_q;
    reg [0:0] redist6_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0_q;
    reg [59:0] redist11_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_q_1_0_q;
    reg [59:0] redist12_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_q_1_0_q;
    reg [59:0] redist13_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_q_1_0_q;
    reg [32:0] redist14_i_mul6_triangular31_ma3_cma_q_1_0_q;
    reg [27:0] redist15_i_mul6_triangular31_im8_cma_q_1_0_q;
    reg [35:0] redist16_i_mul6_triangular31_im0_cma_q_1_0_q;
    reg [25:0] redist17_i_unnamed_triangular12_vt_select_31_b_1_0_q;
    reg [29:0] redist18_i_mul_add16_triangular21_vt_select_31_b_1_0_q;
    reg [29:0] redist19_i_mul_add14_triangular18_vt_select_31_b_1_0_q;
    reg [0:0] redist20_i_memdep_phi4_or_triangular17_q_5_0_q;
    reg [0:0] redist20_i_memdep_phi4_or_triangular17_q_5_1_q;
    reg [0:0] redist20_i_memdep_phi4_or_triangular17_q_5_2_q;
    reg [0:0] redist20_i_memdep_phi4_or_triangular17_q_5_3_q;
    reg [0:0] redist20_i_memdep_phi4_or_triangular17_q_5_4_q;
    reg [0:0] redist21_i_first_cleanup_xor_or_triangular20_q_6_0_q;
    reg [0:0] redist21_i_first_cleanup_xor_or_triangular20_q_6_1_q;
    reg [0:0] redist21_i_first_cleanup_xor_or_triangular20_q_6_2_q;
    reg [0:0] redist21_i_first_cleanup_xor_or_triangular20_q_6_3_q;
    reg [0:0] redist21_i_first_cleanup_xor_or_triangular20_q_6_4_q;
    reg [0:0] redist22_i_first_cleanup_xor_or_triangular20_q_11_0_q;
    reg [0:0] redist22_i_first_cleanup_xor_or_triangular20_q_11_1_q;
    reg [0:0] redist22_i_first_cleanup_xor_or_triangular20_q_11_2_q;
    reg [0:0] redist22_i_first_cleanup_xor_or_triangular20_q_11_3_q;
    reg [0:0] redist22_i_first_cleanup_xor_or_triangular20_q_11_4_q;
    reg [0:0] redist24_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_1_0_q;
    reg [0:0] redist25_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_3_0_q;
    reg [0:0] redist25_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_3_1_q;
    reg [0:0] redist26_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_6_0_q;
    reg [0:0] redist26_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_6_1_q;
    reg [0:0] redist26_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_6_2_q;
    wire [0:0] redist27_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_74_fifo_valid_in;
    wire redist27_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_74_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist27_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_74_fifo_stall_in;
    wire redist27_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_74_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist27_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_74_fifo_data_in;
    wire [0:0] redist27_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_74_fifo_valid_out;
    wire redist27_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_74_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist27_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_74_fifo_stall_out;
    wire redist27_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_74_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist27_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_74_fifo_data_out;
    reg [0:0] redist28_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_4_tpl_6_0_q;
    reg [0:0] redist28_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_4_tpl_6_1_q;
    reg [0:0] redist28_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_4_tpl_6_2_q;
    reg [0:0] redist28_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_4_tpl_6_3_q;
    reg [0:0] redist28_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_4_tpl_6_4_q;
    reg [0:0] redist28_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_4_tpl_6_5_q;
    reg [0:0] redist34_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_9_tpl_5_0_q;
    reg [0:0] redist34_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_9_tpl_5_1_q;
    reg [0:0] redist34_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_9_tpl_5_2_q;
    reg [63:0] redist36_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_14_tpl_5_0_q;
    reg [63:0] redist36_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_14_tpl_5_1_q;
    reg [63:0] redist36_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_14_tpl_5_2_q;
    reg [63:0] redist36_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_14_tpl_5_3_q;
    reg [63:0] redist36_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_14_tpl_5_4_q;
    reg [63:0] redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_0_q;
    reg [63:0] redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_1_q;
    reg [63:0] redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_2_q;
    reg [63:0] redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_3_q;
    reg [63:0] redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_4_q;
    reg [32:0] coalesced_delay_0_0_q;
    reg [32:0] coalesced_delay_0_1_q;
    wire [0:0] coalesced_delay_1_fifo_valid_in;
    wire coalesced_delay_1_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_in;
    wire coalesced_delay_1_fifo_stall_in_bitsignaltemp;
    wire [34:0] coalesced_delay_1_fifo_data_in;
    wire [0:0] coalesced_delay_1_fifo_valid_out;
    wire coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_out;
    wire coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    wire [34:0] coalesced_delay_1_fifo_data_out;
    wire [0:0] coalesced_delay_2_fifo_valid_in;
    wire coalesced_delay_2_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_2_fifo_stall_in;
    wire coalesced_delay_2_fifo_stall_in_bitsignaltemp;
    wire [64:0] coalesced_delay_2_fifo_data_in;
    wire [0:0] coalesced_delay_2_fifo_valid_out;
    wire coalesced_delay_2_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_2_fifo_stall_out;
    wire coalesced_delay_2_fifo_stall_out_bitsignaltemp;
    wire [64:0] coalesced_delay_2_fifo_data_out;
    wire [167:0] bubble_join_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_d;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_f;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_g;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_h;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_i;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_j;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_k;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_l;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_m;
    wire [293:0] bubble_join_triangular_B4_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_triangular_B4_merge_reg_aunroll_x_b;
    wire [31:0] bubble_select_triangular_B4_merge_reg_aunroll_x_c;
    wire [31:0] bubble_select_triangular_B4_merge_reg_aunroll_x_d;
    wire [32:0] bubble_select_triangular_B4_merge_reg_aunroll_x_e;
    wire [31:0] bubble_select_triangular_B4_merge_reg_aunroll_x_f;
    wire [31:0] bubble_select_triangular_B4_merge_reg_aunroll_x_g;
    wire [0:0] bubble_select_triangular_B4_merge_reg_aunroll_x_h;
    wire [63:0] bubble_select_triangular_B4_merge_reg_aunroll_x_i;
    wire [0:0] bubble_select_triangular_B4_merge_reg_aunroll_x_j;
    wire [0:0] bubble_select_triangular_B4_merge_reg_aunroll_x_k;
    wire [0:0] bubble_select_triangular_B4_merge_reg_aunroll_x_l;
    wire [31:0] bubble_select_triangular_B4_merge_reg_aunroll_x_m;
    wire [31:0] bubble_select_triangular_B4_merge_reg_aunroll_x_n;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_n4618_triangular4_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_n4618_triangular4_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm1_triangular29_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm1_triangular29_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm62_triangular22_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm62_triangular22_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm83_triangular30_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm83_triangular30_b;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_triangular33_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_triangular33_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_k_032_pop17_triangular7_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_k_032_pop17_triangular7_b;
    wire [63:0] bubble_join_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_q;
    wire [63:0] bubble_select_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_b;
    wire [293:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [31:0] bubble_select_stall_entry_e;
    wire [63:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [0:0] bubble_select_stall_entry_h;
    wire [31:0] bubble_select_stall_entry_i;
    wire [31:0] bubble_select_stall_entry_j;
    wire [31:0] bubble_select_stall_entry_k;
    wire [32:0] bubble_select_stall_entry_l;
    wire [0:0] bubble_select_stall_entry_m;
    wire [0:0] bubble_select_stall_entry_n;
    wire [35:0] bubble_join_i_mul6_triangular31_im0_cma_q;
    wire [35:0] bubble_select_i_mul6_triangular31_im0_cma_b;
    wire [27:0] bubble_join_i_mul6_triangular31_im8_cma_q;
    wire [27:0] bubble_select_i_mul6_triangular31_im8_cma_b;
    wire [32:0] bubble_join_i_mul6_triangular31_ma3_cma_q;
    wire [32:0] bubble_select_i_mul6_triangular31_ma3_cma_b;
    wire [0:0] bubble_join_redist27_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_74_fifo_q;
    wire [0:0] bubble_select_redist27_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_74_fifo_b;
    wire [34:0] bubble_join_coalesced_delay_1_fifo_q;
    wire [34:0] bubble_select_coalesced_delay_1_fifo_b;
    wire [64:0] bubble_join_coalesced_delay_2_fifo_q;
    wire [64:0] bubble_select_coalesced_delay_2_fifo_b;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_toReg3;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_fromReg3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_consumed3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_toReg4;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_fromReg4;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_consumed4;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_or2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_or3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_V2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_V3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_V4;
    wire [0:0] SE_out_triangular_B4_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_triangular_B4_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_triangular_B4_merge_reg_aunroll_x_V0;
    reg [0:0] SE_i_add8_triangular24_R_v_0;
    reg [0:0] SE_i_add8_triangular24_R_v_1;
    wire [0:0] SE_i_add8_triangular24_v_s_0;
    wire [0:0] SE_i_add8_triangular24_s_tv_0;
    wire [0:0] SE_i_add8_triangular24_s_tv_1;
    wire [0:0] SE_i_add8_triangular24_backEN;
    wire [0:0] SE_i_add8_triangular24_or0;
    wire [0:0] SE_i_add8_triangular24_backStall;
    wire [0:0] SE_i_add8_triangular24_V0;
    wire [0:0] SE_i_add8_triangular24_V1;
    reg [0:0] SE_i_add_triangular23_R_v_0;
    reg [0:0] SE_i_add_triangular23_R_v_1;
    wire [0:0] SE_i_add_triangular23_v_s_0;
    wire [0:0] SE_i_add_triangular23_s_tv_0;
    wire [0:0] SE_i_add_triangular23_s_tv_1;
    wire [0:0] SE_i_add_triangular23_backEN;
    wire [0:0] SE_i_add_triangular23_or0;
    wire [0:0] SE_i_add_triangular23_backStall;
    wire [0:0] SE_i_add_triangular23_V0;
    wire [0:0] SE_i_add_triangular23_V1;
    reg [0:0] SE_i_first_cleanup_xor_or_triangular20_R_v_0;
    reg [0:0] SE_i_first_cleanup_xor_or_triangular20_R_v_1;
    wire [0:0] SE_i_first_cleanup_xor_or_triangular20_v_s_0;
    wire [0:0] SE_i_first_cleanup_xor_or_triangular20_s_tv_0;
    wire [0:0] SE_i_first_cleanup_xor_or_triangular20_s_tv_1;
    wire [0:0] SE_i_first_cleanup_xor_or_triangular20_backEN;
    wire [0:0] SE_i_first_cleanup_xor_or_triangular20_or0;
    wire [0:0] SE_i_first_cleanup_xor_or_triangular20_backStall;
    wire [0:0] SE_i_first_cleanup_xor_or_triangular20_V0;
    wire [0:0] SE_i_first_cleanup_xor_or_triangular20_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_n4618_triangular4_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_n4618_triangular4_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_n4618_triangular4_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_or1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_V2;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1_triangular29_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1_triangular29_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1_triangular29_V0;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm62_triangular22_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm62_triangular22_backStall;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm62_triangular22_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm62_triangular22_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm62_triangular22_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm62_triangular22_V0;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm83_triangular30_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm83_triangular30_and0;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm83_triangular30_and1;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm83_triangular30_backStall;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm83_triangular30_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_triangular33_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_triangular33_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_triangular33_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_triangular33_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_triangular33_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_triangular33_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_triangular33_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_triangular33_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_triangular33_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_triangular33_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_triangular33_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_triangular33_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_triangular33_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_and0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_k_032_pop17_triangular7_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_k_032_pop17_triangular7_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_k_032_pop17_triangular7_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_k_032_pop17_triangular7_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_k_032_pop17_triangular7_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_k_032_pop17_triangular7_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_k_032_pop17_triangular7_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_k_032_pop17_triangular7_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_k_032_pop17_triangular7_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_k_032_pop17_triangular7_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_k_032_pop17_triangular7_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_k_032_pop17_triangular7_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_k_032_pop17_triangular7_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_V1;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push18_triangular34_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push18_triangular34_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_i_03639_push23_triangular14_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_i_03639_push23_triangular14_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_i_03639_push23_triangular14_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_i_03639_push23_triangular14_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_i_03639_push23_triangular14_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_i_03639_push23_triangular14_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_k_032_push17_triangular19_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_k_032_push17_triangular19_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_k_032_push17_triangular19_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_k_032_push17_triangular19_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_k_032_push17_triangular19_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_k_032_push17_triangular19_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_p1025i32_mptr_bitcast_index41_push25_triangular15_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_p1025i32_mptr_bitcast_index41_push25_triangular15_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_p1025i32_mptr_bitcast_index41_push25_triangular15_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_p1025i32_mptr_bitcast_index41_push25_triangular15_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_p1025i32_mptr_bitcast_index41_push25_triangular15_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_p1025i32_mptr_bitcast_index41_push25_triangular15_backStall;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_i_mul6_triangular31_sums_align_1_wireValid;
    wire [0:0] SE_i_mul6_triangular31_sums_align_1_and0;
    wire [0:0] SE_i_mul6_triangular31_sums_align_1_backStall;
    wire [0:0] SE_i_mul6_triangular31_sums_align_1_V0;
    reg [0:0] SE_i_mul6_triangular31_im0_cma_R_s_0;
    reg [0:0] SE_i_mul6_triangular31_im0_cma_R_v_0;
    reg [0:0] SE_i_mul6_triangular31_im0_cma_R_v_1;
    reg [0:0] SE_i_mul6_triangular31_im0_cma_R_v_2;
    wire [0:0] SE_i_mul6_triangular31_im0_cma_v_s_0;
    wire [0:0] SE_i_mul6_triangular31_im0_cma_s_tv_0;
    wire [0:0] SE_i_mul6_triangular31_im0_cma_s_tv_1;
    wire [0:0] SE_i_mul6_triangular31_im0_cma_s_tv_2;
    wire [0:0] SE_i_mul6_triangular31_im0_cma_backEN;
    wire [0:0] SE_i_mul6_triangular31_im0_cma_and0;
    wire [0:0] SE_i_mul6_triangular31_im0_cma_or0;
    wire [0:0] SE_i_mul6_triangular31_im0_cma_or1;
    wire [0:0] SE_i_mul6_triangular31_im0_cma_backStall;
    wire [0:0] SE_i_mul6_triangular31_im0_cma_V0;
    wire [0:0] SE_i_mul6_triangular31_im0_cma_V1;
    wire [0:0] SE_i_mul6_triangular31_im0_cma_V2;
    reg [0:0] SE_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_R_v_0;
    reg [0:0] SE_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_R_v_1;
    wire [0:0] SE_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_v_s_0;
    wire [0:0] SE_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_s_tv_0;
    wire [0:0] SE_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_s_tv_1;
    wire [0:0] SE_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_backEN;
    wire [0:0] SE_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_and0;
    wire [0:0] SE_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_or0;
    wire [0:0] SE_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_backStall;
    wire [0:0] SE_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_V0;
    wire [0:0] SE_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_V1;
    reg [0:0] SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_R_v_0;
    wire [0:0] SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_v_s_0;
    wire [0:0] SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_s_tv_0;
    wire [0:0] SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_backEN;
    wire [0:0] SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_backStall;
    wire [0:0] SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_V0;
    wire [0:0] SE_i_mptr_bitcast_index38_triangular0_add_x_BitJoin_for_q_wireValid;
    wire [0:0] SE_i_mptr_bitcast_index38_triangular0_add_x_BitJoin_for_q_and0;
    wire [0:0] SE_i_mptr_bitcast_index38_triangular0_add_x_BitJoin_for_q_backStall;
    wire [0:0] SE_i_mptr_bitcast_index38_triangular0_add_x_BitJoin_for_q_V0;
    reg [0:0] SE_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_R_v_0;
    reg [0:0] SE_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_R_v_1;
    wire [0:0] SE_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_v_s_0;
    wire [0:0] SE_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_s_tv_0;
    wire [0:0] SE_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_s_tv_1;
    wire [0:0] SE_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_backEN;
    wire [0:0] SE_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_and0;
    wire [0:0] SE_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_or0;
    wire [0:0] SE_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_backStall;
    wire [0:0] SE_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_V0;
    wire [0:0] SE_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_V1;
    reg [0:0] SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_R_v_0;
    wire [0:0] SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_v_s_0;
    wire [0:0] SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_s_tv_0;
    wire [0:0] SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_backEN;
    wire [0:0] SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_backStall;
    wire [0:0] SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_V0;
    wire [0:0] SE_i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q_wireValid;
    wire [0:0] SE_i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q_backStall;
    wire [0:0] SE_i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q_V0;
    reg [0:0] SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_R_v_0;
    reg [0:0] SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_R_v_1;
    wire [0:0] SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_v_s_0;
    wire [0:0] SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_s_tv_0;
    wire [0:0] SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_s_tv_1;
    wire [0:0] SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_backEN;
    wire [0:0] SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_or0;
    wire [0:0] SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_backStall;
    wire [0:0] SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_V0;
    wire [0:0] SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_V1;
    reg [0:0] SE_i_mul6_triangular31_sums_result_add_0_0_p2_of_2_R_v_0;
    wire [0:0] SE_i_mul6_triangular31_sums_result_add_0_0_p2_of_2_v_s_0;
    wire [0:0] SE_i_mul6_triangular31_sums_result_add_0_0_p2_of_2_s_tv_0;
    wire [0:0] SE_i_mul6_triangular31_sums_result_add_0_0_p2_of_2_backEN;
    wire [0:0] SE_i_mul6_triangular31_sums_result_add_0_0_p2_of_2_and0;
    wire [0:0] SE_i_mul6_triangular31_sums_result_add_0_0_p2_of_2_and1;
    wire [0:0] SE_i_mul6_triangular31_sums_result_add_0_0_p2_of_2_backStall;
    wire [0:0] SE_i_mul6_triangular31_sums_result_add_0_0_p2_of_2_V0;
    wire [0:0] SE_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_a_BitJoin_for_c_wireValid;
    wire [0:0] SE_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_a_BitJoin_for_c_wireStall;
    wire [0:0] SE_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_a_BitJoin_for_c_StallValid;
    wire [0:0] SE_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_a_BitJoin_for_c_toReg0;
    reg [0:0] SE_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_a_BitJoin_for_c_fromReg0;
    wire [0:0] SE_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_a_BitJoin_for_c_consumed0;
    wire [0:0] SE_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_a_BitJoin_for_c_toReg1;
    reg [0:0] SE_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_a_BitJoin_for_c_fromReg1;
    wire [0:0] SE_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_a_BitJoin_for_c_consumed1;
    wire [0:0] SE_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_a_BitJoin_for_c_or0;
    wire [0:0] SE_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_a_BitJoin_for_c_backStall;
    wire [0:0] SE_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_a_BitJoin_for_c_V0;
    wire [0:0] SE_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_a_BitJoin_for_c_V1;
    wire [0:0] SE_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_BitJoin_for_c_wireValid;
    wire [0:0] SE_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_BitJoin_for_c_backStall;
    wire [0:0] SE_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_BitJoin_for_c_V0;
    wire [0:0] SE_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_BitJoin_for_c_wireValid;
    wire [0:0] SE_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_BitJoin_for_c_backStall;
    wire [0:0] SE_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_BitJoin_for_c_V0;
    wire [0:0] SE_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_wireValid;
    wire [0:0] SE_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_and0;
    wire [0:0] SE_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_backStall;
    wire [0:0] SE_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_V0;
    wire [0:0] SE_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_V0;
    wire [0:0] SE_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_V1;
    wire [0:0] SE_join_for_coalesced_delay_2_wireValid;
    wire [0:0] SE_join_for_coalesced_delay_2_and0;
    wire [0:0] SE_join_for_coalesced_delay_2_backStall;
    wire [0:0] SE_join_for_coalesced_delay_2_V0;
    reg [0:0] SE_redist0_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_R_v_0;
    wire [0:0] SE_redist0_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_v_s_0;
    wire [0:0] SE_redist0_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_s_tv_0;
    wire [0:0] SE_redist0_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backEN;
    wire [0:0] SE_redist0_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backStall;
    wire [0:0] SE_redist0_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_V0;
    reg [0:0] SE_redist1_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0_R_v_0;
    wire [0:0] SE_redist1_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0_v_s_0;
    wire [0:0] SE_redist1_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0_s_tv_0;
    wire [0:0] SE_redist1_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0_backEN;
    wire [0:0] SE_redist1_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0_backStall;
    wire [0:0] SE_redist1_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0_V0;
    reg [0:0] SE_redist5_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_a_tessel1_0_b_1_0_R_v_0;
    wire [0:0] SE_redist5_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_a_tessel1_0_b_1_0_v_s_0;
    wire [0:0] SE_redist5_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_a_tessel1_0_b_1_0_s_tv_0;
    wire [0:0] SE_redist5_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_a_tessel1_0_b_1_0_backEN;
    wire [0:0] SE_redist5_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_a_tessel1_0_b_1_0_backStall;
    wire [0:0] SE_redist5_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_a_tessel1_0_b_1_0_V0;
    reg [0:0] SE_redist6_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0_R_v_0;
    wire [0:0] SE_redist6_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0_v_s_0;
    wire [0:0] SE_redist6_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0_s_tv_0;
    wire [0:0] SE_redist6_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0_backEN;
    wire [0:0] SE_redist6_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0_backStall;
    wire [0:0] SE_redist6_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0_V0;
    reg [0:0] SE_redist11_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_q_1_0_R_v_0;
    wire [0:0] SE_redist11_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_q_1_0_v_s_0;
    wire [0:0] SE_redist11_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_q_1_0_s_tv_0;
    wire [0:0] SE_redist11_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_q_1_0_backEN;
    wire [0:0] SE_redist11_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_q_1_0_backStall;
    wire [0:0] SE_redist11_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_q_1_0_V0;
    reg [0:0] SE_redist12_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_q_1_0_R_v_0;
    wire [0:0] SE_redist12_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_q_1_0_v_s_0;
    wire [0:0] SE_redist12_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_q_1_0_s_tv_0;
    wire [0:0] SE_redist12_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_q_1_0_backEN;
    wire [0:0] SE_redist12_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SE_redist12_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_q_1_0_V0;
    reg [0:0] SE_redist13_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_q_1_0_R_v_0;
    wire [0:0] SE_redist13_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_q_1_0_v_s_0;
    wire [0:0] SE_redist13_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_q_1_0_s_tv_0;
    wire [0:0] SE_redist13_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_q_1_0_backEN;
    wire [0:0] SE_redist13_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SE_redist13_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_q_1_0_V0;
    reg [0:0] SE_redist14_i_mul6_triangular31_ma3_cma_q_1_0_R_v_0;
    wire [0:0] SE_redist14_i_mul6_triangular31_ma3_cma_q_1_0_v_s_0;
    wire [0:0] SE_redist14_i_mul6_triangular31_ma3_cma_q_1_0_s_tv_0;
    wire [0:0] SE_redist14_i_mul6_triangular31_ma3_cma_q_1_0_backEN;
    wire [0:0] SE_redist14_i_mul6_triangular31_ma3_cma_q_1_0_backStall;
    wire [0:0] SE_redist14_i_mul6_triangular31_ma3_cma_q_1_0_V0;
    reg [0:0] SE_redist15_i_mul6_triangular31_im8_cma_q_1_0_R_v_0;
    reg [0:0] SE_redist15_i_mul6_triangular31_im8_cma_q_1_0_R_v_1;
    wire [0:0] SE_redist15_i_mul6_triangular31_im8_cma_q_1_0_v_s_0;
    wire [0:0] SE_redist15_i_mul6_triangular31_im8_cma_q_1_0_s_tv_0;
    wire [0:0] SE_redist15_i_mul6_triangular31_im8_cma_q_1_0_s_tv_1;
    wire [0:0] SE_redist15_i_mul6_triangular31_im8_cma_q_1_0_backEN;
    wire [0:0] SE_redist15_i_mul6_triangular31_im8_cma_q_1_0_or0;
    wire [0:0] SE_redist15_i_mul6_triangular31_im8_cma_q_1_0_backStall;
    wire [0:0] SE_redist15_i_mul6_triangular31_im8_cma_q_1_0_V0;
    wire [0:0] SE_redist15_i_mul6_triangular31_im8_cma_q_1_0_V1;
    reg [0:0] SE_redist16_i_mul6_triangular31_im0_cma_q_1_0_R_v_0;
    wire [0:0] SE_redist16_i_mul6_triangular31_im0_cma_q_1_0_v_s_0;
    wire [0:0] SE_redist16_i_mul6_triangular31_im0_cma_q_1_0_s_tv_0;
    wire [0:0] SE_redist16_i_mul6_triangular31_im0_cma_q_1_0_backEN;
    wire [0:0] SE_redist16_i_mul6_triangular31_im0_cma_q_1_0_backStall;
    wire [0:0] SE_redist16_i_mul6_triangular31_im0_cma_q_1_0_V0;
    reg [0:0] SE_redist17_i_unnamed_triangular12_vt_select_31_b_1_0_R_v_0;
    wire [0:0] SE_redist17_i_unnamed_triangular12_vt_select_31_b_1_0_v_s_0;
    wire [0:0] SE_redist17_i_unnamed_triangular12_vt_select_31_b_1_0_s_tv_0;
    wire [0:0] SE_redist17_i_unnamed_triangular12_vt_select_31_b_1_0_backEN;
    wire [0:0] SE_redist17_i_unnamed_triangular12_vt_select_31_b_1_0_backStall;
    wire [0:0] SE_redist17_i_unnamed_triangular12_vt_select_31_b_1_0_V0;
    reg [0:0] SE_redist18_i_mul_add16_triangular21_vt_select_31_b_1_0_R_v_0;
    reg [0:0] SE_redist18_i_mul_add16_triangular21_vt_select_31_b_1_0_R_v_1;
    wire [0:0] SE_redist18_i_mul_add16_triangular21_vt_select_31_b_1_0_v_s_0;
    wire [0:0] SE_redist18_i_mul_add16_triangular21_vt_select_31_b_1_0_s_tv_0;
    wire [0:0] SE_redist18_i_mul_add16_triangular21_vt_select_31_b_1_0_s_tv_1;
    wire [0:0] SE_redist18_i_mul_add16_triangular21_vt_select_31_b_1_0_backEN;
    wire [0:0] SE_redist18_i_mul_add16_triangular21_vt_select_31_b_1_0_or0;
    wire [0:0] SE_redist18_i_mul_add16_triangular21_vt_select_31_b_1_0_backStall;
    wire [0:0] SE_redist18_i_mul_add16_triangular21_vt_select_31_b_1_0_V0;
    wire [0:0] SE_redist18_i_mul_add16_triangular21_vt_select_31_b_1_0_V1;
    reg [0:0] SE_redist20_i_memdep_phi4_or_triangular17_q_5_0_R_v_0;
    wire [0:0] SE_redist20_i_memdep_phi4_or_triangular17_q_5_0_v_s_0;
    wire [0:0] SE_redist20_i_memdep_phi4_or_triangular17_q_5_0_s_tv_0;
    wire [0:0] SE_redist20_i_memdep_phi4_or_triangular17_q_5_0_backEN;
    wire [0:0] SE_redist20_i_memdep_phi4_or_triangular17_q_5_0_backStall;
    wire [0:0] SE_redist20_i_memdep_phi4_or_triangular17_q_5_0_V0;
    reg [0:0] SE_redist20_i_memdep_phi4_or_triangular17_q_5_1_R_v_0;
    wire [0:0] SE_redist20_i_memdep_phi4_or_triangular17_q_5_1_v_s_0;
    wire [0:0] SE_redist20_i_memdep_phi4_or_triangular17_q_5_1_s_tv_0;
    wire [0:0] SE_redist20_i_memdep_phi4_or_triangular17_q_5_1_backEN;
    wire [0:0] SE_redist20_i_memdep_phi4_or_triangular17_q_5_1_backStall;
    wire [0:0] SE_redist20_i_memdep_phi4_or_triangular17_q_5_1_V0;
    reg [0:0] SE_redist20_i_memdep_phi4_or_triangular17_q_5_2_R_v_0;
    wire [0:0] SE_redist20_i_memdep_phi4_or_triangular17_q_5_2_v_s_0;
    wire [0:0] SE_redist20_i_memdep_phi4_or_triangular17_q_5_2_s_tv_0;
    wire [0:0] SE_redist20_i_memdep_phi4_or_triangular17_q_5_2_backEN;
    wire [0:0] SE_redist20_i_memdep_phi4_or_triangular17_q_5_2_backStall;
    wire [0:0] SE_redist20_i_memdep_phi4_or_triangular17_q_5_2_V0;
    reg [0:0] SE_redist20_i_memdep_phi4_or_triangular17_q_5_3_R_v_0;
    wire [0:0] SE_redist20_i_memdep_phi4_or_triangular17_q_5_3_v_s_0;
    wire [0:0] SE_redist20_i_memdep_phi4_or_triangular17_q_5_3_s_tv_0;
    wire [0:0] SE_redist20_i_memdep_phi4_or_triangular17_q_5_3_backEN;
    wire [0:0] SE_redist20_i_memdep_phi4_or_triangular17_q_5_3_backStall;
    wire [0:0] SE_redist20_i_memdep_phi4_or_triangular17_q_5_3_V0;
    reg [0:0] SE_redist20_i_memdep_phi4_or_triangular17_q_5_4_R_v_0;
    wire [0:0] SE_redist20_i_memdep_phi4_or_triangular17_q_5_4_v_s_0;
    wire [0:0] SE_redist20_i_memdep_phi4_or_triangular17_q_5_4_s_tv_0;
    wire [0:0] SE_redist20_i_memdep_phi4_or_triangular17_q_5_4_backEN;
    wire [0:0] SE_redist20_i_memdep_phi4_or_triangular17_q_5_4_backStall;
    wire [0:0] SE_redist20_i_memdep_phi4_or_triangular17_q_5_4_V0;
    reg [0:0] SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_R_v_0;
    reg [0:0] SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_R_v_1;
    wire [0:0] SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_v_s_0;
    wire [0:0] SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_s_tv_0;
    wire [0:0] SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_s_tv_1;
    wire [0:0] SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_backEN;
    wire [0:0] SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_or0;
    wire [0:0] SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_backStall;
    wire [0:0] SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_V0;
    wire [0:0] SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_V1;
    reg [0:0] SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_1_R_v_0;
    reg [0:0] SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_1_R_v_1;
    wire [0:0] SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_1_v_s_0;
    wire [0:0] SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_1_s_tv_0;
    wire [0:0] SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_1_s_tv_1;
    wire [0:0] SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_1_backEN;
    wire [0:0] SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_1_or0;
    wire [0:0] SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_1_backStall;
    wire [0:0] SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_1_V0;
    wire [0:0] SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_1_V1;
    reg [0:0] SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_R_v_0;
    wire [0:0] SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_v_s_0;
    wire [0:0] SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_s_tv_0;
    wire [0:0] SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_backEN;
    wire [0:0] SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_backStall;
    wire [0:0] SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_V0;
    reg [0:0] SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_R_v_0;
    reg [0:0] SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_R_v_1;
    reg [0:0] SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_R_v_2;
    wire [0:0] SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_v_s_0;
    wire [0:0] SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_s_tv_0;
    wire [0:0] SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_s_tv_1;
    wire [0:0] SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_s_tv_2;
    wire [0:0] SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_backEN;
    wire [0:0] SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_or0;
    wire [0:0] SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_or1;
    wire [0:0] SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_backStall;
    wire [0:0] SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_V0;
    wire [0:0] SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_V1;
    wire [0:0] SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_V2;
    reg [0:0] SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_R_v_0;
    reg [0:0] SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_R_v_1;
    reg [0:0] SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_R_v_2;
    reg [0:0] SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_R_v_3;
    reg [0:0] SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_R_v_4;
    reg [0:0] SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_R_v_5;
    wire [0:0] SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_v_s_0;
    wire [0:0] SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_s_tv_0;
    wire [0:0] SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_s_tv_1;
    wire [0:0] SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_s_tv_2;
    wire [0:0] SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_s_tv_3;
    wire [0:0] SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_s_tv_4;
    wire [0:0] SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_s_tv_5;
    wire [0:0] SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_backEN;
    wire [0:0] SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_or0;
    wire [0:0] SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_or1;
    wire [0:0] SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_or2;
    wire [0:0] SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_or3;
    wire [0:0] SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_or4;
    wire [0:0] SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_backStall;
    wire [0:0] SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_V0;
    wire [0:0] SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_V1;
    wire [0:0] SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_V2;
    wire [0:0] SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_V3;
    wire [0:0] SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_V4;
    wire [0:0] SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_V5;
    reg [0:0] SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_0_R_v_0;
    wire [0:0] SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_0_v_s_0;
    wire [0:0] SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_0_s_tv_0;
    wire [0:0] SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_0_backEN;
    wire [0:0] SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_0_backStall;
    wire [0:0] SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_0_V0;
    reg [0:0] SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_1_R_v_0;
    wire [0:0] SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_1_v_s_0;
    wire [0:0] SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_1_s_tv_0;
    wire [0:0] SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_1_backEN;
    wire [0:0] SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_1_backStall;
    wire [0:0] SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_1_V0;
    reg [0:0] SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_2_R_v_0;
    wire [0:0] SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_2_v_s_0;
    wire [0:0] SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_2_s_tv_0;
    wire [0:0] SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_2_backEN;
    wire [0:0] SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_2_backStall;
    wire [0:0] SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_2_V0;
    reg [0:0] SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_3_R_v_0;
    wire [0:0] SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_3_v_s_0;
    wire [0:0] SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_3_s_tv_0;
    wire [0:0] SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_3_backEN;
    wire [0:0] SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_3_backStall;
    wire [0:0] SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_3_V0;
    reg [0:0] SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_R_v_0;
    reg [0:0] SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_R_v_1;
    wire [0:0] SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_v_s_0;
    wire [0:0] SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_s_tv_0;
    wire [0:0] SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_s_tv_1;
    wire [0:0] SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_backEN;
    wire [0:0] SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_or0;
    wire [0:0] SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_backStall;
    wire [0:0] SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_V0;
    wire [0:0] SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_V1;
    wire [0:0] SE_out_redist27_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_74_fifo_wireValid;
    wire [0:0] SE_out_redist27_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_74_fifo_and0;
    wire [0:0] SE_out_redist27_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_74_fifo_backStall;
    wire [0:0] SE_out_redist27_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_74_fifo_V0;
    reg [0:0] SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_0_R_v_0;
    wire [0:0] SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_0_v_s_0;
    wire [0:0] SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_0_s_tv_0;
    wire [0:0] SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_0_backEN;
    wire [0:0] SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_0_backStall;
    wire [0:0] SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_0_V0;
    reg [0:0] SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_1_R_v_0;
    wire [0:0] SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_1_v_s_0;
    wire [0:0] SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_1_s_tv_0;
    wire [0:0] SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_1_backEN;
    wire [0:0] SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_1_backStall;
    wire [0:0] SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_1_V0;
    reg [0:0] SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_2_R_v_0;
    wire [0:0] SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_2_v_s_0;
    wire [0:0] SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_2_s_tv_0;
    wire [0:0] SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_2_backEN;
    wire [0:0] SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_2_backStall;
    wire [0:0] SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_2_V0;
    reg [0:0] SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_3_R_v_0;
    wire [0:0] SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_3_v_s_0;
    wire [0:0] SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_3_s_tv_0;
    wire [0:0] SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_3_backEN;
    wire [0:0] SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_3_backStall;
    wire [0:0] SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_3_V0;
    reg [0:0] SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_4_R_v_0;
    reg [0:0] SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_4_R_v_1;
    wire [0:0] SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_4_v_s_0;
    wire [0:0] SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_4_s_tv_0;
    wire [0:0] SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_4_s_tv_1;
    wire [0:0] SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_4_backEN;
    wire [0:0] SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_4_or0;
    wire [0:0] SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_4_backStall;
    wire [0:0] SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_4_V0;
    wire [0:0] SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_4_V1;
    wire [0:0] SE_out_coalesced_delay_1_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_1_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_1_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_2_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_2_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_2_fifo_and1;
    wire [0:0] SE_out_coalesced_delay_2_fifo_and2;
    wire [0:0] SE_out_coalesced_delay_2_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_2_fifo_V0;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_1_backStall;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_1_V0;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_2_wireValid;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_2_backStall;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_2_V0;
    wire [0:0] SE_out_bubble_out_i_mul6_triangular31_im0_cma_data_wireValid;
    wire [0:0] SE_out_bubble_out_i_mul6_triangular31_im0_cma_data_backStall;
    wire [0:0] SE_out_bubble_out_i_mul6_triangular31_im0_cma_data_V0;
    wire [0:0] SE_out_bubble_out_i_mul6_triangular31_im8_cma_data_wireValid;
    wire [0:0] SE_out_bubble_out_i_mul6_triangular31_im8_cma_data_backStall;
    wire [0:0] SE_out_bubble_out_i_mul6_triangular31_im8_cma_data_V0;
    wire [0:0] SE_out_bubble_out_i_mul6_triangular31_ma3_cma_data_wireValid;
    wire [0:0] SE_out_bubble_out_i_mul6_triangular31_ma3_cma_data_backStall;
    wire [0:0] SE_out_bubble_out_i_mul6_triangular31_ma3_cma_data_V0;
    wire [0:0] bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_1_reg_valid_in;
    wire bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_1_reg_stall_in;
    wire bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_1_reg_valid_out;
    wire bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_1_reg_stall_out;
    wire bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_2_reg_valid_in;
    wire bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_2_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_2_reg_stall_in;
    wire bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_2_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_2_reg_valid_out;
    wire bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_2_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_2_reg_stall_out;
    wire bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_2_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_mul6_triangular31_im0_cma_data_reg_valid_in;
    wire bubble_out_i_mul6_triangular31_im0_cma_data_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_mul6_triangular31_im0_cma_data_reg_stall_in;
    wire bubble_out_i_mul6_triangular31_im0_cma_data_reg_stall_in_bitsignaltemp;
    wire [35:0] bubble_out_i_mul6_triangular31_im0_cma_data_reg_data_in;
    wire [0:0] bubble_out_i_mul6_triangular31_im0_cma_data_reg_valid_out;
    wire bubble_out_i_mul6_triangular31_im0_cma_data_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_mul6_triangular31_im0_cma_data_reg_stall_out;
    wire bubble_out_i_mul6_triangular31_im0_cma_data_reg_stall_out_bitsignaltemp;
    wire [35:0] bubble_out_i_mul6_triangular31_im0_cma_data_reg_data_out;
    wire [0:0] bubble_out_i_mul6_triangular31_im8_cma_data_reg_valid_in;
    wire bubble_out_i_mul6_triangular31_im8_cma_data_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_mul6_triangular31_im8_cma_data_reg_stall_in;
    wire bubble_out_i_mul6_triangular31_im8_cma_data_reg_stall_in_bitsignaltemp;
    wire [27:0] bubble_out_i_mul6_triangular31_im8_cma_data_reg_data_in;
    wire [0:0] bubble_out_i_mul6_triangular31_im8_cma_data_reg_valid_out;
    wire bubble_out_i_mul6_triangular31_im8_cma_data_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_mul6_triangular31_im8_cma_data_reg_stall_out;
    wire bubble_out_i_mul6_triangular31_im8_cma_data_reg_stall_out_bitsignaltemp;
    wire [27:0] bubble_out_i_mul6_triangular31_im8_cma_data_reg_data_out;
    wire [0:0] bubble_out_i_mul6_triangular31_ma3_cma_data_reg_valid_in;
    wire bubble_out_i_mul6_triangular31_ma3_cma_data_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_mul6_triangular31_ma3_cma_data_reg_stall_in;
    wire bubble_out_i_mul6_triangular31_ma3_cma_data_reg_stall_in_bitsignaltemp;
    wire [32:0] bubble_out_i_mul6_triangular31_ma3_cma_data_reg_data_in;
    wire [0:0] bubble_out_i_mul6_triangular31_ma3_cma_data_reg_valid_out;
    wire bubble_out_i_mul6_triangular31_ma3_cma_data_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_mul6_triangular31_ma3_cma_data_reg_stall_out;
    wire bubble_out_i_mul6_triangular31_ma3_cma_data_reg_stall_out_bitsignaltemp;
    wire [32:0] bubble_out_i_mul6_triangular31_ma3_cma_data_reg_data_out;
    wire [0:0] SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_i_valid;
    reg [0:0] SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_r_valid;
    reg [0:0] SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_r_data0;
    reg [0:0] SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_r_data1;
    reg [0:0] SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_r_data2;
    reg [63:0] SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_r_data3;
    reg [32:0] SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_r_data4;
    wire [0:0] SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_backStall;
    wire [0:0] SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_V;
    wire [0:0] SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_D0;
    wire [0:0] SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_D1;
    wire [0:0] SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_D2;
    wire [63:0] SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_D3;
    wire [32:0] SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_D4;
    wire [0:0] SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_i_valid;
    reg [0:0] SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_r_valid;
    reg [0:0] SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_r_data0;
    reg [0:0] SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_r_data1;
    reg [0:0] SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_r_data2;
    reg [63:0] SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_r_data3;
    reg [0:0] SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_r_data4;
    wire [0:0] SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_backStall;
    wire [0:0] SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_V;
    wire [0:0] SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_D0;
    wire [0:0] SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_D1;
    wire [0:0] SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_D2;
    wire [63:0] SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_D3;
    wire [0:0] SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_D4;
    wire [0:0] SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_i_valid;
    reg [0:0] SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_r_valid;
    reg [0:0] SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_r_data0;
    reg [0:0] SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_r_data1;
    reg [0:0] SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_r_data2;
    reg [63:0] SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_r_data3;
    reg [0:0] SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_r_data4;
    wire [0:0] SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_backStall;
    wire [0:0] SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_V;
    wire [0:0] SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_D0;
    wire [0:0] SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_D1;
    wire [0:0] SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_D2;
    wire [63:0] SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_D3;
    wire [0:0] SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_D4;
    wire [0:0] SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_i_valid;
    reg [0:0] SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_r_valid;
    reg [0:0] SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_r_data0;
    reg [0:0] SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_r_data1;
    reg [0:0] SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_r_data2;
    wire [0:0] SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_backStall;
    wire [0:0] SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_V;
    wire [0:0] SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_D0;
    wire [0:0] SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_D1;
    wire [0:0] SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_D2;
    wire [0:0] SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_0_i_valid;
    reg [0:0] SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_0_r_valid;
    reg [0:0] SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_0_r_data0;
    wire [0:0] SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_0_backStall;
    wire [0:0] SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_0_V;
    wire [0:0] SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_0_D0;
    wire [0:0] SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_2_i_valid;
    reg [0:0] SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_2_r_valid;
    reg [0:0] SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_2_r_data0;
    wire [0:0] SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_2_backStall;
    wire [0:0] SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_2_V;
    wire [0:0] SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_2_D0;
    wire [0:0] SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_i_valid;
    reg [0:0] SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_r_valid;
    reg [0:0] SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_r_data0;
    wire [0:0] SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_backStall;
    wire [0:0] SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_V;
    wire [0:0] SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_D0;
    wire [0:0] SR_SE_i_add8_triangular24_i_valid;
    reg [0:0] SR_SE_i_add8_triangular24_r_valid;
    wire [0:0] SR_SE_i_add8_triangular24_and0;
    reg [31:0] SR_SE_i_add8_triangular24_r_data0;
    reg [31:0] SR_SE_i_add8_triangular24_r_data1;
    wire [0:0] SR_SE_i_add8_triangular24_backStall;
    wire [0:0] SR_SE_i_add8_triangular24_V;
    wire [31:0] SR_SE_i_add8_triangular24_D0;
    wire [31:0] SR_SE_i_add8_triangular24_D1;
    wire [0:0] SR_SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_r_valid;
    wire [0:0] SR_SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_and0;
    wire [0:0] SR_SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_and1;
    reg [4:0] SR_SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_r_data0;
    reg [4:0] SR_SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_r_data2;
    wire [0:0] SR_SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_backStall;
    wire [0:0] SR_SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_V;
    wire [4:0] SR_SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_D0;
    wire [4:0] SR_SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_D1;
    wire [0:0] SR_SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_D2;
    wire [0:0] SR_SE_redist13_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_q_1_0_i_valid;
    reg [0:0] SR_SE_redist13_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_q_1_0_r_valid;
    reg [59:0] SR_SE_redist13_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_q_1_0_r_data0;
    wire [0:0] SR_SE_redist13_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SR_SE_redist13_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_q_1_0_V;
    wire [59:0] SR_SE_redist13_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_q_1_0_D0;
    wire [0:0] SR_SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_1_i_valid;
    reg [0:0] SR_SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_1_r_valid;
    reg [63:0] SR_SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_1_r_data0;
    wire [0:0] SR_SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_1_backStall;
    wire [0:0] SR_SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_1_V;
    wire [63:0] SR_SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_1_D0;
    wire [0:0] SR_SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_3_i_valid;
    reg [0:0] SR_SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_3_r_valid;
    reg [63:0] SR_SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_3_r_data0;
    wire [0:0] SR_SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_3_backStall;
    wire [0:0] SR_SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_3_V;
    wire [63:0] SR_SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_3_D0;
    wire [0:0] SR_SE_i_add_triangular23_i_valid;
    reg [0:0] SR_SE_i_add_triangular23_r_valid;
    wire [0:0] SR_SE_i_add_triangular23_and0;
    reg [31:0] SR_SE_i_add_triangular23_r_data0;
    reg [31:0] SR_SE_i_add_triangular23_r_data1;
    wire [0:0] SR_SE_i_add_triangular23_backStall;
    wire [0:0] SR_SE_i_add_triangular23_V;
    wire [31:0] SR_SE_i_add_triangular23_D0;
    wire [31:0] SR_SE_i_add_triangular23_D1;
    wire [0:0] SR_SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_r_valid;
    wire [0:0] SR_SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_and0;
    wire [0:0] SR_SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_and1;
    reg [4:0] SR_SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_r_data0;
    reg [4:0] SR_SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_r_data2;
    wire [0:0] SR_SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_backStall;
    wire [0:0] SR_SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_V;
    wire [4:0] SR_SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_D0;
    wire [4:0] SR_SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_D1;
    wire [0:0] SR_SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_D2;
    wire [0:0] SR_SE_redist12_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_q_1_0_i_valid;
    reg [0:0] SR_SE_redist12_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_q_1_0_r_valid;
    reg [59:0] SR_SE_redist12_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_q_1_0_r_data0;
    wire [0:0] SR_SE_redist12_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SR_SE_redist12_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_q_1_0_V;
    wire [59:0] SR_SE_redist12_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_q_1_0_D0;
    wire [0:0] SR_SE_i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q_i_valid;
    reg [0:0] SR_SE_i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q_r_valid;
    wire [0:0] SR_SE_i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q_and0;
    wire [0:0] SR_SE_i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q_and1;
    wire [0:0] SR_SE_i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q_and2;
    reg [63:0] SR_SE_i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q_r_data0;
    reg [0:0] SR_SE_i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q_r_data1;
    reg [0:0] SR_SE_i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q_r_data2;
    wire [0:0] SR_SE_i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q_backStall;
    wire [0:0] SR_SE_i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q_V;
    wire [63:0] SR_SE_i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q_D0;
    wire [0:0] SR_SE_i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q_D1;
    wire [0:0] SR_SE_i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q_D2;
    wire [0:0] SR_SE_in_i_llvm_fpga_mem_lm62_triangular22_i_valid;
    reg [0:0] SR_SE_in_i_llvm_fpga_mem_lm62_triangular22_r_valid;
    wire [0:0] SR_SE_in_i_llvm_fpga_mem_lm62_triangular22_and0;
    wire [0:0] SR_SE_in_i_llvm_fpga_mem_lm62_triangular22_and1;
    reg [63:0] SR_SE_in_i_llvm_fpga_mem_lm62_triangular22_r_data0;
    reg [0:0] SR_SE_in_i_llvm_fpga_mem_lm62_triangular22_r_data1;
    reg [0:0] SR_SE_in_i_llvm_fpga_mem_lm62_triangular22_r_data2;
    wire [0:0] SR_SE_in_i_llvm_fpga_mem_lm62_triangular22_backStall;
    wire [0:0] SR_SE_in_i_llvm_fpga_mem_lm62_triangular22_V;
    wire [63:0] SR_SE_in_i_llvm_fpga_mem_lm62_triangular22_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_mem_lm62_triangular22_D1;
    wire [0:0] SR_SE_in_i_llvm_fpga_mem_lm62_triangular22_D2;
    wire [0:0] SR_SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_i_valid;
    reg [0:0] SR_SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_r_valid;
    wire [0:0] SR_SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_and0;
    reg [59:0] SR_SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_r_data0;
    reg [59:0] SR_SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_r_data1;
    wire [0:0] SR_SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_backStall;
    wire [0:0] SR_SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_V;
    wire [59:0] SR_SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_D0;
    wire [59:0] SR_SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_D1;
    wire [0:0] SR_SE_redist0_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_i_valid;
    reg [0:0] SR_SE_redist0_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_r_valid;
    reg [3:0] SR_SE_redist0_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_r_data0;
    wire [0:0] SR_SE_redist0_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backStall;
    wire [0:0] SR_SE_redist0_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_V;
    wire [3:0] SR_SE_redist0_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_D0;
    wire [0:0] SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_0_i_valid;
    reg [0:0] SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_0_r_valid;
    reg [0:0] SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_0_r_data0;
    wire [0:0] SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_0_backStall;
    wire [0:0] SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_0_V;
    wire [0:0] SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_0_D0;
    wire [0:0] SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_2_i_valid;
    reg [0:0] SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_2_r_valid;
    reg [0:0] SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_2_r_data0;
    wire [0:0] SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_2_backStall;
    wire [0:0] SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_2_V;
    wire [0:0] SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_2_D0;
    wire [0:0] SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_4_i_valid;
    reg [0:0] SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_4_r_valid;
    reg [0:0] SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_4_r_data0;
    wire [0:0] SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_4_backStall;
    wire [0:0] SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_4_V;
    wire [0:0] SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_4_D0;


    // SE_in_i_llvm_fpga_mem_lm62_triangular22(STALLENABLE,525)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_mem_lm62_triangular22_V0 = SE_in_i_llvm_fpga_mem_lm62_triangular22_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_mem_lm62_triangular22_backStall = i_llvm_fpga_mem_lm62_triangular22_out_o_stall | ~ (SE_in_i_llvm_fpga_mem_lm62_triangular22_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_mem_lm62_triangular22_wireValid = SR_SE_in_i_llvm_fpga_mem_lm62_triangular22_V;

    // SE_i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q(STALLENABLE,585)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q_V0 = SE_i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q_wireValid;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q_backStall = i_llvm_fpga_mem_lm1_triangular29_out_o_stall | ~ (SE_i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q_wireValid = SR_SE_i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q_V;

    // SE_in_i_llvm_fpga_push_i32_i_03639_push23_triangular14(STALLENABLE,541)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i32_i_03639_push23_triangular14_V0 = SE_in_i_llvm_fpga_push_i32_i_03639_push23_triangular14_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i32_i_03639_push23_triangular14_backStall = i_llvm_fpga_push_i32_i_03639_push23_triangular14_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i32_i_03639_push23_triangular14_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i32_i_03639_push23_triangular14_and0 = SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_1_V1;
    assign SE_in_i_llvm_fpga_push_i32_i_03639_push23_triangular14_wireValid = SE_out_i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_V1 & SE_in_i_llvm_fpga_push_i32_i_03639_push23_triangular14_and0;

    // bubble_join_i_llvm_fpga_pop_i32_i_03639_pop23_triangular6(BITJOIN,474)
    assign bubble_join_i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_q = i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_i_03639_pop23_triangular6(BITSELECT,475)
    assign bubble_select_i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_q[31:0]);

    // SE_out_i_llvm_fpga_push_i32_k_032_push17_triangular19(STALLENABLE,544)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i32_k_032_push17_triangular19_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i32_k_032_push17_triangular19_wireValid = i_llvm_fpga_push_i32_k_032_push17_triangular19_out_valid_out;

    // c_i32_142(CONSTANT,56)
    assign c_i32_142_q = $unsigned(32'b11111111111111111111111111111111);

    // bubble_join_i_llvm_fpga_pop_i32_k_032_pop17_triangular7(BITJOIN,477)
    assign bubble_join_i_llvm_fpga_pop_i32_k_032_pop17_triangular7_q = i_llvm_fpga_pop_i32_k_032_pop17_triangular7_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_k_032_pop17_triangular7(BITSELECT,478)
    assign bubble_select_i_llvm_fpga_pop_i32_k_032_pop17_triangular7_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_k_032_pop17_triangular7_q[31:0]);

    // i_dec_triangular13(ADD,66)@73
    assign i_dec_triangular13_a = {1'b0, bubble_select_i_llvm_fpga_pop_i32_k_032_pop17_triangular7_b};
    assign i_dec_triangular13_b = {1'b0, c_i32_142_q};
    assign i_dec_triangular13_o = $unsigned(i_dec_triangular13_a) + $unsigned(i_dec_triangular13_b);
    assign i_dec_triangular13_q = i_dec_triangular13_o[32:0];

    // bgTrunc_i_dec_triangular13_sel_x(BITSELECT,12)@73
    assign bgTrunc_i_dec_triangular13_sel_x_b = i_dec_triangular13_q[31:0];

    // SE_stall_entry(STALLENABLE,562)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = triangular_B4_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bubble_join_stall_entry(BITJOIN,483)
    assign bubble_join_stall_entry_q = {in_unnamed_triangular13, in_unnamed_triangular12, in_unnamed_triangular11, in_sub151, in_reorder_limiter_enter49, in_reorder_limiter_enter37_pop1556, in_notcmp2753, in_memdep_phi4_pop1354, in_mPtr_bitcast_index52, in_lim_ext46, in_lim_ext35_pop1455, in_i_03650, in_forked23};

    // bubble_select_stall_entry(BITSELECT,484)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[64:33]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[96:65]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[160:97]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[161:161]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[162:162]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[194:163]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[226:195]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[258:227]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[291:259]);
    assign bubble_select_stall_entry_m = $unsigned(bubble_join_stall_entry_q[292:292]);
    assign bubble_select_stall_entry_n = $unsigned(bubble_join_stall_entry_q[293:293]);

    // triangular_B4_merge_reg_aunroll_x(BLACKBOX,46)@0
    // in in_stall_in@20000000
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    // out out_data_out_3_tpl@1
    // out out_data_out_4_tpl@1
    // out out_data_out_5_tpl@1
    // out out_data_out_6_tpl@1
    // out out_data_out_7_tpl@1
    // out out_data_out_8_tpl@1
    // out out_data_out_9_tpl@1
    // out out_data_out_10_tpl@1
    // out out_data_out_11_tpl@1
    // out out_data_out_12_tpl@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    triangular_B4_merge_reg thetriangular_B4_merge_reg_aunroll_x (
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .in_data_in_1_tpl(bubble_select_stall_entry_e),
        .in_data_in_2_tpl(bubble_select_stall_entry_j),
        .in_data_in_3_tpl(bubble_select_stall_entry_l),
        .in_data_in_4_tpl(bubble_select_stall_entry_c),
        .in_data_in_5_tpl(bubble_select_stall_entry_k),
        .in_data_in_6_tpl(bubble_select_stall_entry_m),
        .in_data_in_7_tpl(bubble_select_stall_entry_f),
        .in_data_in_8_tpl(bubble_select_stall_entry_n),
        .in_data_in_9_tpl(bubble_select_stall_entry_h),
        .in_data_in_10_tpl(bubble_select_stall_entry_g),
        .in_data_in_11_tpl(bubble_select_stall_entry_d),
        .in_data_in_12_tpl(bubble_select_stall_entry_i),
        .in_stall_in(SE_out_triangular_B4_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out_0_tpl(triangular_B4_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(triangular_B4_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(triangular_B4_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(triangular_B4_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(triangular_B4_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(triangular_B4_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(triangular_B4_merge_reg_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(triangular_B4_merge_reg_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(triangular_B4_merge_reg_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(triangular_B4_merge_reg_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(triangular_B4_merge_reg_aunroll_x_out_data_out_10_tpl),
        .out_data_out_11_tpl(triangular_B4_merge_reg_aunroll_x_out_data_out_11_tpl),
        .out_data_out_12_tpl(triangular_B4_merge_reg_aunroll_x_out_data_out_12_tpl),
        .out_stall_out(triangular_B4_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(triangular_B4_merge_reg_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_triangular_B4_merge_reg_aunroll_x(STALLENABLE,514)
    // Valid signal propagation
    assign SE_out_triangular_B4_merge_reg_aunroll_x_V0 = SE_out_triangular_B4_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_triangular_B4_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_o_stall | ~ (SE_out_triangular_B4_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_triangular_B4_merge_reg_aunroll_x_wireValid = triangular_B4_merge_reg_aunroll_x_out_valid_out;

    // join_for_coalesced_delay_1(BITJOIN,379)
    assign join_for_coalesced_delay_1_q = {bubble_select_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_i, bubble_select_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_g, bubble_select_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_f, bubble_select_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_h};

    // SE_out_i_llvm_fpga_push_i1_memdep_phi_push18_triangular34(STALLENABLE,540)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push18_triangular34_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push18_triangular34_wireValid = i_llvm_fpga_push_i1_memdep_phi_push18_triangular34_out_valid_out;

    // redist34_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_9_tpl_5_2(REG,427)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_9_tpl_5_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_backEN == 1'b1)
        begin
            redist34_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_9_tpl_5_2_q <= $unsigned(SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_D4);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5(BLACKBOX,74)@77
    // in in_stall_in@20000000
    // out out_data_out@78
    // out out_feedback_stall_out_18@20000000
    // out out_stall_out@20000000
    // out out_valid_out@78
    triangular_i_llvm_fpga_pop_i1_memdep_phi_pop18_0 thei_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5 (
        .in_data_in(GND_q),
        .in_dir(redist34_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_9_tpl_5_2_q),
        .in_feedback_in_18(i_llvm_fpga_push_i1_memdep_phi_push18_triangular34_out_feedback_out_18),
        .in_feedback_valid_in_18(i_llvm_fpga_push_i1_memdep_phi_push18_triangular34_out_feedback_valid_out_18),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_backStall),
        .in_valid_in(SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_V1),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_out_data_out),
        .out_feedback_stall_out_18(i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_out_feedback_stall_out_18),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_memdep_triangular33(BITJOIN,467)
    assign bubble_join_i_llvm_fpga_mem_memdep_triangular33_q = i_llvm_fpga_mem_memdep_triangular33_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_triangular33(BITSELECT,468)
    assign bubble_select_i_llvm_fpga_mem_memdep_triangular33_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_triangular33_q[0:0]);

    // bubble_join_redist27_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_74_fifo(BITJOIN,496)
    assign bubble_join_redist27_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_74_fifo_q = redist27_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_74_fifo_data_out;

    // bubble_select_redist27_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_74_fifo(BITSELECT,497)
    assign bubble_select_redist27_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_74_fifo_b = $unsigned(bubble_join_redist27_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_74_fifo_q[0:0]);

    // i_llvm_fpga_push_i1_memdep_phi_push18_triangular34(BLACKBOX,78)@146
    // in in_stall_in@20000000
    // out out_data_out@147
    // out out_feedback_out_18@20000000
    // out out_feedback_valid_out_18@20000000
    // out out_stall_out@20000000
    // out out_valid_out@147
    triangular_i_llvm_fpga_push_i1_memdep_phi_push18_0 thei_llvm_fpga_push_i1_memdep_phi_push18_triangular34 (
        .in_c0_exe291(bubble_select_redist27_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_74_fifo_b),
        .in_data_in(bubble_select_i_llvm_fpga_mem_memdep_triangular33_b),
        .in_feedback_stall_in_18(i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_out_feedback_stall_out_18),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi_push18_triangular34_backStall),
        .in_valid_in(SE_out_redist27_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_74_fifo_V0),
        .out_data_out(),
        .out_feedback_out_18(i_llvm_fpga_push_i1_memdep_phi_push18_triangular34_out_feedback_out_18),
        .out_feedback_valid_out_18(i_llvm_fpga_push_i1_memdep_phi_push18_triangular34_out_feedback_valid_out_18),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi_push18_triangular34_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi_push18_triangular34_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist26_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_6_2(REG,417)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_6_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_backEN == 1'b1)
        begin
            redist26_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_6_2_q <= $unsigned(SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_D1);
        end
    end

    // redist27_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_74_fifo(STALLFIFO,418)
    assign redist27_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_74_fifo_valid_in = SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_V4;
    assign redist27_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_74_fifo_stall_in = SE_out_redist27_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_74_fifo_backStall;
    assign redist27_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_74_fifo_data_in = redist26_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_6_2_q;
    assign redist27_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_74_fifo_valid_in_bitsignaltemp = redist27_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_74_fifo_valid_in[0];
    assign redist27_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_74_fifo_stall_in_bitsignaltemp = redist27_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_74_fifo_stall_in[0];
    assign redist27_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_74_fifo_valid_out[0] = redist27_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_74_fifo_valid_out_bitsignaltemp;
    assign redist27_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_74_fifo_stall_out[0] = redist27_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_74_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(69),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist27_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_74_fifo (
        .valid_in(redist27_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_74_fifo_valid_in_bitsignaltemp),
        .stall_in(redist27_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_74_fifo_stall_in_bitsignaltemp),
        .data_in(redist26_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_6_2_q),
        .valid_out(redist27_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_74_fifo_valid_out_bitsignaltemp),
        .stall_out(redist27_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_74_fifo_stall_out_bitsignaltemp),
        .data_out(redist27_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_74_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist27_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_74_fifo(STALLENABLE,648)
    // Valid signal propagation
    assign SE_out_redist27_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_74_fifo_V0 = SE_out_redist27_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_74_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist27_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_74_fifo_backStall = i_llvm_fpga_push_i1_memdep_phi_push18_triangular34_out_stall_out | ~ (SE_out_redist27_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_74_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist27_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_74_fifo_and0 = redist27_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_74_fifo_valid_out;
    assign SE_out_redist27_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_74_fifo_wireValid = SE_out_i_llvm_fpga_mem_memdep_triangular33_V1 & SE_out_redist27_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_74_fifo_and0;

    // SE_redist11_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_q_1_0(STALLENABLE,617)
    // Valid signal propagation
    assign SE_redist11_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_q_1_0_V0 = SE_redist11_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist11_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_q_1_0_s_tv_0 = SE_out_coalesced_delay_2_fifo_backStall & SE_redist11_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist11_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_q_1_0_backEN = ~ (SE_redist11_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist11_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_q_1_0_v_s_0 = SE_redist11_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_q_1_0_backEN & SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_V1;
    // Backward Stall generation
    assign SE_redist11_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_q_1_0_backStall = ~ (SE_redist11_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_q_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist11_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist11_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_q_1_0_backEN == 1'b0)
            begin
                SE_redist11_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_q_1_0_R_v_0 <= SE_redist11_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_q_1_0_R_v_0 & SE_redist11_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist11_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_q_1_0_R_v_0 <= SE_redist11_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_q_1_0_v_s_0;
            end

        end
    end

    // SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2(STALLENABLE,586)
    // Valid signal propagation
    assign SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_V0 = SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_R_v_0;
    assign SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_V1 = SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_s_tv_0 = SE_i_mul6_triangular31_sums_result_add_0_0_p2_of_2_backStall & SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_R_v_0;
    assign SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_s_tv_1 = SE_redist11_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_q_1_0_backStall & SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_or0 = SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_s_tv_0;
    assign SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_backEN = ~ (SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_s_tv_1 | SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_v_s_0 = SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_backEN & SR_SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_V;
    // Backward Stall generation
    assign SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_backStall = ~ (SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_R_v_0 <= 1'b0;
            SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_backEN == 1'b0)
            begin
                SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_R_v_0 <= SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_R_v_0 & SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_R_v_0 <= SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_v_s_0;
            end

            if (SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_backEN == 1'b0)
            begin
                SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_R_v_1 <= SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_R_v_1 & SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_R_v_1 <= SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_v_s_0;
            end

        end
    end

    // SE_redist14_i_mul6_triangular31_ma3_cma_q_1_0(STALLENABLE,620)
    // Valid signal propagation
    assign SE_redist14_i_mul6_triangular31_ma3_cma_q_1_0_V0 = SE_redist14_i_mul6_triangular31_ma3_cma_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist14_i_mul6_triangular31_ma3_cma_q_1_0_s_tv_0 = SE_i_mul6_triangular31_sums_align_1_backStall & SE_redist14_i_mul6_triangular31_ma3_cma_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist14_i_mul6_triangular31_ma3_cma_q_1_0_backEN = ~ (SE_redist14_i_mul6_triangular31_ma3_cma_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist14_i_mul6_triangular31_ma3_cma_q_1_0_v_s_0 = SE_redist14_i_mul6_triangular31_ma3_cma_q_1_0_backEN & SE_out_bubble_out_i_mul6_triangular31_ma3_cma_data_V0;
    // Backward Stall generation
    assign SE_redist14_i_mul6_triangular31_ma3_cma_q_1_0_backStall = ~ (SE_redist14_i_mul6_triangular31_ma3_cma_q_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist14_i_mul6_triangular31_ma3_cma_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist14_i_mul6_triangular31_ma3_cma_q_1_0_backEN == 1'b0)
            begin
                SE_redist14_i_mul6_triangular31_ma3_cma_q_1_0_R_v_0 <= SE_redist14_i_mul6_triangular31_ma3_cma_q_1_0_R_v_0 & SE_redist14_i_mul6_triangular31_ma3_cma_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist14_i_mul6_triangular31_ma3_cma_q_1_0_R_v_0 <= SE_redist14_i_mul6_triangular31_ma3_cma_q_1_0_v_s_0;
            end

        end
    end

    // bubble_select_i_mul6_triangular31_ma3_cma(BITSELECT,494)
    assign bubble_select_i_mul6_triangular31_ma3_cma_b = $unsigned(bubble_out_i_mul6_triangular31_ma3_cma_data_reg_data_out[32:0]);

    // redist14_i_mul6_triangular31_ma3_cma_q_1_0(REG,391)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_mul6_triangular31_ma3_cma_q_1_0_q <= $unsigned(33'b000000000000000000000000000000000);
        end
        else if (SE_redist14_i_mul6_triangular31_ma3_cma_q_1_0_backEN == 1'b1)
        begin
            redist14_i_mul6_triangular31_ma3_cma_q_1_0_q <= $unsigned(bubble_select_i_mul6_triangular31_ma3_cma_b);
        end
    end

    // i_mul6_triangular31_sums_align_1(BITSHIFT,208)@113
    assign i_mul6_triangular31_sums_align_1_qint = { redist14_i_mul6_triangular31_ma3_cma_q_1_0_q, 18'b000000000000000000 };
    assign i_mul6_triangular31_sums_align_1_q = i_mul6_triangular31_sums_align_1_qint[50:0];

    // i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b(BITJOIN,329)@113
    assign i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q = {i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b, i_mul6_triangular31_sums_align_1_q};

    // SE_redist0_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0(STALLENABLE,613)
    // Valid signal propagation
    assign SE_redist0_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_V0 = SE_redist0_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist0_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_s_tv_0 = SE_i_mul6_triangular31_sums_result_add_0_0_p2_of_2_backStall & SE_redist0_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist0_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backEN = ~ (SE_redist0_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_v_s_0 = SE_redist0_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backEN & SR_SE_redist0_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_V;
    // Backward Stall generation
    assign SE_redist0_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backStall = ~ (SE_redist0_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backEN == 1'b0)
            begin
                SE_redist0_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_R_v_0 <= SE_redist0_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_R_v_0 & SE_redist0_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_s_tv_0;
            end
            else
            begin
                SE_redist0_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_R_v_0 <= SE_redist0_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_v_s_0;
            end

        end
    end

    // SR_SE_redist0_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0(STALLREG,783)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist0_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_r_valid <= 1'b0;
            SR_SE_redist0_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_r_data0 <= 4'bxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist0_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_r_valid <= SE_redist0_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backStall & (SR_SE_redist0_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_r_valid | SR_SE_redist0_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_i_valid);

            if (SR_SE_redist0_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist0_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_r_data0 <= $unsigned(i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist0_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_i_valid = SE_redist15_i_mul6_triangular31_im8_cma_q_1_0_V1;
    // Stall signal propagation
    assign SR_SE_redist0_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backStall = SR_SE_redist0_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_r_valid | ~ (SR_SE_redist0_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_i_valid);

    // Valid
    assign SR_SE_redist0_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_V = SR_SE_redist0_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_r_valid == 1'b1 ? SR_SE_redist0_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_r_valid : SR_SE_redist0_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_i_valid;

    assign SR_SE_redist0_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_D0 = SR_SE_redist0_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_r_valid == 1'b1 ? SR_SE_redist0_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_r_data0 : i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c;

    // SE_out_bubble_out_i_mul6_triangular31_im8_cma_data(STALLENABLE,741)
    // Valid signal propagation
    assign SE_out_bubble_out_i_mul6_triangular31_im8_cma_data_V0 = SE_out_bubble_out_i_mul6_triangular31_im8_cma_data_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_mul6_triangular31_im8_cma_data_backStall = SE_redist15_i_mul6_triangular31_im8_cma_q_1_0_backStall | ~ (SE_out_bubble_out_i_mul6_triangular31_im8_cma_data_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_mul6_triangular31_im8_cma_data_wireValid = bubble_out_i_mul6_triangular31_im8_cma_data_reg_valid_out;

    // SE_redist15_i_mul6_triangular31_im8_cma_q_1_0(STALLENABLE,621)
    // Valid signal propagation
    assign SE_redist15_i_mul6_triangular31_im8_cma_q_1_0_V0 = SE_redist15_i_mul6_triangular31_im8_cma_q_1_0_R_v_0;
    assign SE_redist15_i_mul6_triangular31_im8_cma_q_1_0_V1 = SE_redist15_i_mul6_triangular31_im8_cma_q_1_0_R_v_1;
    // Stall signal propagation
    assign SE_redist15_i_mul6_triangular31_im8_cma_q_1_0_s_tv_0 = SE_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_backStall & SE_redist15_i_mul6_triangular31_im8_cma_q_1_0_R_v_0;
    assign SE_redist15_i_mul6_triangular31_im8_cma_q_1_0_s_tv_1 = SR_SE_redist0_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backStall & SE_redist15_i_mul6_triangular31_im8_cma_q_1_0_R_v_1;
    // Backward Enable generation
    assign SE_redist15_i_mul6_triangular31_im8_cma_q_1_0_or0 = SE_redist15_i_mul6_triangular31_im8_cma_q_1_0_s_tv_0;
    assign SE_redist15_i_mul6_triangular31_im8_cma_q_1_0_backEN = ~ (SE_redist15_i_mul6_triangular31_im8_cma_q_1_0_s_tv_1 | SE_redist15_i_mul6_triangular31_im8_cma_q_1_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist15_i_mul6_triangular31_im8_cma_q_1_0_v_s_0 = SE_redist15_i_mul6_triangular31_im8_cma_q_1_0_backEN & SE_out_bubble_out_i_mul6_triangular31_im8_cma_data_V0;
    // Backward Stall generation
    assign SE_redist15_i_mul6_triangular31_im8_cma_q_1_0_backStall = ~ (SE_redist15_i_mul6_triangular31_im8_cma_q_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist15_i_mul6_triangular31_im8_cma_q_1_0_R_v_0 <= 1'b0;
            SE_redist15_i_mul6_triangular31_im8_cma_q_1_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist15_i_mul6_triangular31_im8_cma_q_1_0_backEN == 1'b0)
            begin
                SE_redist15_i_mul6_triangular31_im8_cma_q_1_0_R_v_0 <= SE_redist15_i_mul6_triangular31_im8_cma_q_1_0_R_v_0 & SE_redist15_i_mul6_triangular31_im8_cma_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist15_i_mul6_triangular31_im8_cma_q_1_0_R_v_0 <= SE_redist15_i_mul6_triangular31_im8_cma_q_1_0_v_s_0;
            end

            if (SE_redist15_i_mul6_triangular31_im8_cma_q_1_0_backEN == 1'b0)
            begin
                SE_redist15_i_mul6_triangular31_im8_cma_q_1_0_R_v_1 <= SE_redist15_i_mul6_triangular31_im8_cma_q_1_0_R_v_1 & SE_redist15_i_mul6_triangular31_im8_cma_q_1_0_s_tv_1;
            end
            else
            begin
                SE_redist15_i_mul6_triangular31_im8_cma_q_1_0_R_v_1 <= SE_redist15_i_mul6_triangular31_im8_cma_q_1_0_v_s_0;
            end

        end
    end

    // bubble_select_i_mul6_triangular31_im8_cma(BITSELECT,491)
    assign bubble_select_i_mul6_triangular31_im8_cma_b = $unsigned(bubble_out_i_mul6_triangular31_im8_cma_data_reg_data_out[27:0]);

    // redist15_i_mul6_triangular31_im8_cma_q_1_0(REG,392)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_mul6_triangular31_im8_cma_q_1_0_q <= $unsigned(28'b0000000000000000000000000000);
        end
        else if (SE_redist15_i_mul6_triangular31_im8_cma_q_1_0_backEN == 1'b1)
        begin
            redist15_i_mul6_triangular31_im8_cma_q_1_0_q <= $unsigned(bubble_select_i_mul6_triangular31_im8_cma_b);
        end
    end

    // i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select(BITSELECT,334)@113
    assign i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b = $unsigned(redist15_i_mul6_triangular31_im8_cma_q_1_0_q[23:0]);
    assign i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c = $unsigned(redist15_i_mul6_triangular31_im8_cma_q_1_0_q[27:24]);

    // SE_out_bubble_out_i_mul6_triangular31_im0_cma_data(STALLENABLE,737)
    // Valid signal propagation
    assign SE_out_bubble_out_i_mul6_triangular31_im0_cma_data_V0 = SE_out_bubble_out_i_mul6_triangular31_im0_cma_data_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_mul6_triangular31_im0_cma_data_backStall = SE_redist16_i_mul6_triangular31_im0_cma_q_1_0_backStall | ~ (SE_out_bubble_out_i_mul6_triangular31_im0_cma_data_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_mul6_triangular31_im0_cma_data_wireValid = bubble_out_i_mul6_triangular31_im0_cma_data_reg_valid_out;

    // SE_redist16_i_mul6_triangular31_im0_cma_q_1_0(STALLENABLE,622)
    // Valid signal propagation
    assign SE_redist16_i_mul6_triangular31_im0_cma_q_1_0_V0 = SE_redist16_i_mul6_triangular31_im0_cma_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist16_i_mul6_triangular31_im0_cma_q_1_0_s_tv_0 = SE_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_backStall & SE_redist16_i_mul6_triangular31_im0_cma_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist16_i_mul6_triangular31_im0_cma_q_1_0_backEN = ~ (SE_redist16_i_mul6_triangular31_im0_cma_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist16_i_mul6_triangular31_im0_cma_q_1_0_v_s_0 = SE_redist16_i_mul6_triangular31_im0_cma_q_1_0_backEN & SE_out_bubble_out_i_mul6_triangular31_im0_cma_data_V0;
    // Backward Stall generation
    assign SE_redist16_i_mul6_triangular31_im0_cma_q_1_0_backStall = ~ (SE_redist16_i_mul6_triangular31_im0_cma_q_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist16_i_mul6_triangular31_im0_cma_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist16_i_mul6_triangular31_im0_cma_q_1_0_backEN == 1'b0)
            begin
                SE_redist16_i_mul6_triangular31_im0_cma_q_1_0_R_v_0 <= SE_redist16_i_mul6_triangular31_im0_cma_q_1_0_R_v_0 & SE_redist16_i_mul6_triangular31_im0_cma_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist16_i_mul6_triangular31_im0_cma_q_1_0_R_v_0 <= SE_redist16_i_mul6_triangular31_im0_cma_q_1_0_v_s_0;
            end

        end
    end

    // bubble_select_i_mul6_triangular31_im0_cma(BITSELECT,488)
    assign bubble_select_i_mul6_triangular31_im0_cma_b = $unsigned(bubble_out_i_mul6_triangular31_im0_cma_data_reg_data_out[35:0]);

    // redist16_i_mul6_triangular31_im0_cma_q_1_0(REG,393)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_mul6_triangular31_im0_cma_q_1_0_q <= $unsigned(36'b000000000000000000000000000000000000);
        end
        else if (SE_redist16_i_mul6_triangular31_im0_cma_q_1_0_backEN == 1'b1)
        begin
            redist16_i_mul6_triangular31_im0_cma_q_1_0_q <= $unsigned(bubble_select_i_mul6_triangular31_im0_cma_b);
        end
    end

    // i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b(BITJOIN,323)@113
    assign i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q = {i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b, redist16_i_mul6_triangular31_im0_cma_q_1_0_q};

    // SE_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select(STALLENABLE,606)
    // Valid signal propagation
    assign SE_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_V0 = 1'b1;
    assign SE_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_V1 = 1'b1;

    // SE_i_mul6_triangular31_sums_align_1(STALLENABLE,576)
    // Valid signal propagation
    assign SE_i_mul6_triangular31_sums_align_1_V0 = SE_i_mul6_triangular31_sums_align_1_wireValid;
    // Backward Stall generation
    assign SE_i_mul6_triangular31_sums_align_1_backStall = SR_SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_backStall | ~ (SE_i_mul6_triangular31_sums_align_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_mul6_triangular31_sums_align_1_and0 = SE_redist14_i_mul6_triangular31_ma3_cma_q_1_0_V0;
    assign SE_i_mul6_triangular31_sums_align_1_wireValid = SE_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_V1 & SE_i_mul6_triangular31_sums_align_1_and0;

    // SE_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b(STALLENABLE,600)
    // Valid signal propagation
    assign SE_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_V0 = SE_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_wireValid;
    // Backward Stall generation
    assign SE_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_backStall = SR_SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_backStall | ~ (SE_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_and0 = SE_redist15_i_mul6_triangular31_im8_cma_q_1_0_V0;
    assign SE_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_wireValid = SE_redist16_i_mul6_triangular31_im0_cma_q_1_0_V0 & SE_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_and0;

    // SR_SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2(STALLREG,782)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_r_valid <= 1'b0;
            SR_SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_r_data0 <= 60'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_r_data1 <= 60'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_r_valid <= SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_backStall & (SR_SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_r_valid | SR_SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_i_valid);

            if (SR_SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_r_data0 <= $unsigned(i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q);
                SR_SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_r_data1 <= $unsigned(i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_and0 = SE_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_V0;
    assign SR_SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_i_valid = SE_i_mul6_triangular31_sums_align_1_V0 & SR_SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_and0;
    // Stall signal propagation
    assign SR_SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_backStall = SR_SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_r_valid | ~ (SR_SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_i_valid);

    // Valid
    assign SR_SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_V = SR_SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_r_valid : SR_SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_i_valid;

    // Data0
    assign SR_SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_D0 = SR_SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_r_data0 : i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q;
    // Data1
    assign SR_SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_D1 = SR_SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_r_data1 : i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q;

    // i_mul6_triangular31_sums_result_add_0_0_p1_of_2(ADD,238)@113 + 1
    assign i_mul6_triangular31_sums_result_add_0_0_p1_of_2_a = {1'b0, SR_SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_D0};
    assign i_mul6_triangular31_sums_result_add_0_0_p1_of_2_b = {1'b0, SR_SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_D1};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul6_triangular31_sums_result_add_0_0_p1_of_2_o <= 61'b0;
        end
        else if (SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            i_mul6_triangular31_sums_result_add_0_0_p1_of_2_o <= $unsigned(i_mul6_triangular31_sums_result_add_0_0_p1_of_2_a) + $unsigned(i_mul6_triangular31_sums_result_add_0_0_p1_of_2_b);
        end
    end
    assign i_mul6_triangular31_sums_result_add_0_0_p1_of_2_c[0] = i_mul6_triangular31_sums_result_add_0_0_p1_of_2_o[60];
    assign i_mul6_triangular31_sums_result_add_0_0_p1_of_2_q = i_mul6_triangular31_sums_result_add_0_0_p1_of_2_o[59:0];

    // SE_i_mul6_triangular31_sums_result_add_0_0_p2_of_2(STALLENABLE,587)
    // Valid signal propagation
    assign SE_i_mul6_triangular31_sums_result_add_0_0_p2_of_2_V0 = SE_i_mul6_triangular31_sums_result_add_0_0_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_mul6_triangular31_sums_result_add_0_0_p2_of_2_s_tv_0 = SE_out_coalesced_delay_2_fifo_backStall & SE_i_mul6_triangular31_sums_result_add_0_0_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_mul6_triangular31_sums_result_add_0_0_p2_of_2_backEN = ~ (SE_i_mul6_triangular31_sums_result_add_0_0_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mul6_triangular31_sums_result_add_0_0_p2_of_2_and0 = SE_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_V0 & SE_i_mul6_triangular31_sums_result_add_0_0_p2_of_2_backEN;
    assign SE_i_mul6_triangular31_sums_result_add_0_0_p2_of_2_and1 = SE_redist0_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_V0 & SE_i_mul6_triangular31_sums_result_add_0_0_p2_of_2_and0;
    assign SE_i_mul6_triangular31_sums_result_add_0_0_p2_of_2_v_s_0 = SE_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_V0 & SE_i_mul6_triangular31_sums_result_add_0_0_p2_of_2_and1;
    // Backward Stall generation
    assign SE_i_mul6_triangular31_sums_result_add_0_0_p2_of_2_backStall = ~ (SE_i_mul6_triangular31_sums_result_add_0_0_p2_of_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mul6_triangular31_sums_result_add_0_0_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_mul6_triangular31_sums_result_add_0_0_p2_of_2_backEN == 1'b0)
            begin
                SE_i_mul6_triangular31_sums_result_add_0_0_p2_of_2_R_v_0 <= SE_i_mul6_triangular31_sums_result_add_0_0_p2_of_2_R_v_0 & SE_i_mul6_triangular31_sums_result_add_0_0_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_mul6_triangular31_sums_result_add_0_0_p2_of_2_R_v_0 <= SE_i_mul6_triangular31_sums_result_add_0_0_p2_of_2_v_s_0;
            end

        end
    end

    // i_mul6_triangular31_sums_result_add_0_0_UpperBits_for_b(CONSTANT,235)
    assign i_mul6_triangular31_sums_result_add_0_0_UpperBits_for_b_q = $unsigned(14'b00000000000000);

    // i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select(BITSELECT,335)
    assign i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b = $unsigned(i_mul6_triangular31_sums_result_add_0_0_UpperBits_for_b_q[8:0]);
    assign i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c = $unsigned(i_mul6_triangular31_sums_result_add_0_0_UpperBits_for_b_q[13:9]);

    // redist0_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0(REG,384)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_q <= $unsigned(4'b0000);
        end
        else if (SE_redist0_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backEN == 1'b1)
        begin
            redist0_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_q <= $unsigned(SR_SE_redist0_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_D0);
        end
    end

    // i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c(BITJOIN,326)@114
    assign i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist0_i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_q};

    // i_mul6_triangular31_sums_result_add_0_0_p2_of_2(ADD,239)@114 + 1
    assign i_mul6_triangular31_sums_result_add_0_0_p2_of_2_cin = i_mul6_triangular31_sums_result_add_0_0_p1_of_2_c;
    assign i_mul6_triangular31_sums_result_add_0_0_p2_of_2_a = { {1'b0, i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q}, 1'b1 };
    assign i_mul6_triangular31_sums_result_add_0_0_p2_of_2_b = { {1'b0, i_mul6_triangular31_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c}, i_mul6_triangular31_sums_result_add_0_0_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul6_triangular31_sums_result_add_0_0_p2_of_2_o <= 7'b0;
        end
        else if (SE_i_mul6_triangular31_sums_result_add_0_0_p2_of_2_backEN == 1'b1)
        begin
            i_mul6_triangular31_sums_result_add_0_0_p2_of_2_o <= $unsigned(i_mul6_triangular31_sums_result_add_0_0_p2_of_2_a) + $unsigned(i_mul6_triangular31_sums_result_add_0_0_p2_of_2_b);
        end
    end
    assign i_mul6_triangular31_sums_result_add_0_0_p2_of_2_q = i_mul6_triangular31_sums_result_add_0_0_p2_of_2_o[5:1];

    // redist11_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_q_1_0(REG,388)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_q_1_0_q <= $unsigned(60'b000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist11_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_q_1_0_backEN == 1'b1)
        begin
            redist11_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_q_1_0_q <= $unsigned(i_mul6_triangular31_sums_result_add_0_0_p1_of_2_q);
        end
    end

    // i_mul6_triangular31_sums_result_add_0_0_BitJoin_for_q(BITJOIN,240)@115
    assign i_mul6_triangular31_sums_result_add_0_0_BitJoin_for_q_q = {i_mul6_triangular31_sums_result_add_0_0_p2_of_2_q, redist11_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_q_1_0_q};

    // bgTrunc_i_mul6_triangular31_sel_x(BITSELECT,13)@115
    assign bgTrunc_i_mul6_triangular31_sel_x_in = i_mul6_triangular31_sums_result_add_0_0_BitJoin_for_q_q[63:0];
    assign bgTrunc_i_mul6_triangular31_sel_x_b = bgTrunc_i_mul6_triangular31_sel_x_in[31:0];

    // join_for_coalesced_delay_2(BITJOIN,382)
    assign join_for_coalesced_delay_2_q = {redist22_i_first_cleanup_xor_or_triangular20_q_11_4_q, redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_4_q};

    // coalesced_delay_2_fifo(STALLFIFO,441)
    assign coalesced_delay_2_fifo_valid_in = SE_join_for_coalesced_delay_2_V0;
    assign coalesced_delay_2_fifo_stall_in = SE_out_coalesced_delay_2_fifo_backStall;
    assign coalesced_delay_2_fifo_data_in = join_for_coalesced_delay_2_q;
    assign coalesced_delay_2_fifo_valid_in_bitsignaltemp = coalesced_delay_2_fifo_valid_in[0];
    assign coalesced_delay_2_fifo_stall_in_bitsignaltemp = coalesced_delay_2_fifo_stall_in[0];
    assign coalesced_delay_2_fifo_valid_out[0] = coalesced_delay_2_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_2_fifo_stall_out[0] = coalesced_delay_2_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(65),
        .IMPL("ram")
    ) thecoalesced_delay_2_fifo (
        .valid_in(coalesced_delay_2_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_2_fifo_stall_in_bitsignaltemp),
        .data_in(join_for_coalesced_delay_2_q),
        .valid_out(coalesced_delay_2_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_2_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_2_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_join_for_coalesced_delay_2(STALLENABLE,611)
    // Valid signal propagation
    assign SE_join_for_coalesced_delay_2_V0 = SE_join_for_coalesced_delay_2_wireValid;
    // Backward Stall generation
    assign SE_join_for_coalesced_delay_2_backStall = coalesced_delay_2_fifo_stall_out | ~ (SE_join_for_coalesced_delay_2_wireValid);
    // Computing multiple Valid(s)
    assign SE_join_for_coalesced_delay_2_and0 = SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_V1;
    assign SE_join_for_coalesced_delay_2_wireValid = SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_4_V1 & SE_join_for_coalesced_delay_2_and0;

    // SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_1(STALLENABLE,664)
    // Valid signal propagation
    assign SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_1_V0 = SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_1_R_v_0;
    // Stall signal propagation
    assign SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_1_s_tv_0 = SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_2_backStall & SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_1_R_v_0;
    // Backward Enable generation
    assign SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_1_backEN = ~ (SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_1_v_s_0 = SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_1_backEN & SR_SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_1_V;
    // Backward Stall generation
    assign SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_1_backStall = ~ (SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_1_backEN == 1'b0)
            begin
                SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_1_R_v_0 <= SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_1_R_v_0 & SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_1_s_tv_0;
            end
            else
            begin
                SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_1_R_v_0 <= SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_1_v_s_0;
            end

        end
    end

    // SE_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_BitJoin_for_c(STALLENABLE,595)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_BitJoin_for_c_V0 = SE_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_BitJoin_for_c_wireValid;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_BitJoin_for_c_backStall = SR_SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_backStall | ~ (SE_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_BitJoin_for_c_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_BitJoin_for_c_wireValid = SE_redist6_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0_V0;

    // SE_redist6_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0(STALLENABLE,616)
    // Valid signal propagation
    assign SE_redist6_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0_V0 = SE_redist6_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist6_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0_s_tv_0 = SE_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_BitJoin_for_c_backStall & SE_redist6_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist6_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0_backEN = ~ (SE_redist6_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist6_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0_v_s_0 = SE_redist6_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0_backEN & SE_i_add8_triangular24_V0;
    // Backward Stall generation
    assign SE_redist6_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0_backStall = ~ (SE_redist6_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist6_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist6_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0_backEN == 1'b0)
            begin
                SE_redist6_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0_R_v_0 <= SE_redist6_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0_R_v_0 & SE_redist6_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist6_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0_R_v_0 <= SE_redist6_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0_v_s_0;
            end

        end
    end

    // SE_i_add8_triangular24(STALLENABLE,515)
    // Valid signal propagation
    assign SE_i_add8_triangular24_V0 = SE_i_add8_triangular24_R_v_0;
    assign SE_i_add8_triangular24_V1 = SE_i_add8_triangular24_R_v_1;
    // Stall signal propagation
    assign SE_i_add8_triangular24_s_tv_0 = SE_redist6_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0_backStall & SE_i_add8_triangular24_R_v_0;
    assign SE_i_add8_triangular24_s_tv_1 = SE_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_backStall & SE_i_add8_triangular24_R_v_1;
    // Backward Enable generation
    assign SE_i_add8_triangular24_or0 = SE_i_add8_triangular24_s_tv_0;
    assign SE_i_add8_triangular24_backEN = ~ (SE_i_add8_triangular24_s_tv_1 | SE_i_add8_triangular24_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_add8_triangular24_v_s_0 = SE_i_add8_triangular24_backEN & SR_SE_i_add8_triangular24_V;
    // Backward Stall generation
    assign SE_i_add8_triangular24_backStall = ~ (SE_i_add8_triangular24_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_add8_triangular24_R_v_0 <= 1'b0;
            SE_i_add8_triangular24_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_add8_triangular24_backEN == 1'b0)
            begin
                SE_i_add8_triangular24_R_v_0 <= SE_i_add8_triangular24_R_v_0 & SE_i_add8_triangular24_s_tv_0;
            end
            else
            begin
                SE_i_add8_triangular24_R_v_0 <= SE_i_add8_triangular24_v_s_0;
            end

            if (SE_i_add8_triangular24_backEN == 1'b0)
            begin
                SE_i_add8_triangular24_R_v_1 <= SE_i_add8_triangular24_R_v_1 & SE_i_add8_triangular24_s_tv_1;
            end
            else
            begin
                SE_i_add8_triangular24_R_v_1 <= SE_i_add8_triangular24_v_s_0;
            end

        end
    end

    // SE_out_bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_2(STALLENABLE,681)
    // Valid signal propagation
    assign SE_out_bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_2_V0 = SE_out_bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_2_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_2_backStall = i_llvm_fpga_ffwd_dest_i32_n4618_triangular4_out_stall_out | ~ (SE_out_bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_2_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_2_wireValid = bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_2_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_i32_n4618_triangular4(BLACKBOX,68)@74
    // in in_stall_in@20000000
    // out out_dest_data_out_1_0@75
    // out out_stall_out@20000000
    // out out_valid_out@75
    triangular_i_llvm_fpga_ffwd_dest_i32_n4618_0 thei_llvm_fpga_ffwd_dest_i32_n4618_triangular4 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_n4618_triangular4_backStall),
        .in_valid_in(SE_out_bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_2_V0),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i32_n4618_triangular4_out_dest_data_out_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_n4618_triangular4_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_n4618_triangular4_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_n4618_triangular4(BITJOIN,452)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_n4618_triangular4_q = i_llvm_fpga_ffwd_dest_i32_n4618_triangular4_out_dest_data_out_1_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_n4618_triangular4(BITSELECT,453)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_n4618_triangular4_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_n4618_triangular4_q[31:0]);

    // SE_out_i_llvm_fpga_ffwd_dest_i32_n4618_triangular4(STALLENABLE,520)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_n4618_triangular4_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_n4618_triangular4_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_n4618_triangular4_backStall = SR_SE_i_add8_triangular24_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_n4618_triangular4_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_n4618_triangular4_wireValid = i_llvm_fpga_ffwd_dest_i32_n4618_triangular4_out_valid_out;

    // SR_SE_i_add8_triangular24(STALLREG,772)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_add8_triangular24_r_valid <= 1'b0;
            SR_SE_i_add8_triangular24_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_add8_triangular24_r_data1 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_add8_triangular24_r_valid <= SE_i_add8_triangular24_backStall & (SR_SE_i_add8_triangular24_r_valid | SR_SE_i_add8_triangular24_i_valid);

            if (SR_SE_i_add8_triangular24_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_add8_triangular24_r_data0 <= i_mul_add16_triangular21_vt_join_q;
                SR_SE_i_add8_triangular24_r_data1 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_i32_n4618_triangular4_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_add8_triangular24_and0 = SE_redist18_i_mul_add16_triangular21_vt_select_31_b_1_0_V0;
    assign SR_SE_i_add8_triangular24_i_valid = SE_out_i_llvm_fpga_ffwd_dest_i32_n4618_triangular4_V0 & SR_SE_i_add8_triangular24_and0;
    // Stall signal propagation
    assign SR_SE_i_add8_triangular24_backStall = SR_SE_i_add8_triangular24_r_valid | ~ (SR_SE_i_add8_triangular24_i_valid);

    // Valid
    assign SR_SE_i_add8_triangular24_V = SR_SE_i_add8_triangular24_r_valid == 1'b1 ? SR_SE_i_add8_triangular24_r_valid : SR_SE_i_add8_triangular24_i_valid;

    // Data0
    assign SR_SE_i_add8_triangular24_D0 = SR_SE_i_add8_triangular24_r_valid == 1'b1 ? SR_SE_i_add8_triangular24_r_data0 : i_mul_add16_triangular21_vt_join_q;
    // Data1
    assign SR_SE_i_add8_triangular24_D1 = SR_SE_i_add8_triangular24_r_valid == 1'b1 ? SR_SE_i_add8_triangular24_r_data1 : bubble_select_i_llvm_fpga_ffwd_dest_i32_n4618_triangular4_b;

    // i_add8_triangular24(ADD,64)@75 + 1
    assign i_add8_triangular24_a = {1'b0, SR_SE_i_add8_triangular24_D0};
    assign i_add8_triangular24_b = {1'b0, SR_SE_i_add8_triangular24_D1};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_add8_triangular24_o <= 33'b0;
        end
        else if (SE_i_add8_triangular24_backEN == 1'b1)
        begin
            i_add8_triangular24_o <= $unsigned(i_add8_triangular24_a) + $unsigned(i_add8_triangular24_b);
        end
    end
    assign i_add8_triangular24_q = i_add8_triangular24_o[32:0];

    // i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel0_2(BITSELECT,248)@76
    assign i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel0_2_b = $unsigned(i_add8_triangular24_q[31:31]);

    // i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel0_1(BITSELECT,247)@76
    assign i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel0_1_b = $unsigned(i_add8_triangular24_q[31:0]);

    // i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_BitJoin_for_b(BITJOIN,274)@76
    assign i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_BitJoin_for_b_q = {i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel0_1_b, i_mptr_bitcast_index38_triangular0_c_i2_01_x_q};

    // SE_out_bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_1(STALLENABLE,679)
    // Valid signal propagation
    assign SE_out_bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_1_V0 = SE_out_bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_1_backStall = i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_out_stall_out | ~ (SE_out_bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_1_wireValid = bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_1_reg_valid_out;

    // i_add_triangular23(ADD,65)@75 + 1
    assign i_add_triangular23_a = {1'b0, SR_SE_i_add_triangular23_D0};
    assign i_add_triangular23_b = {1'b0, SR_SE_i_add_triangular23_D1};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_add_triangular23_o <= 33'b0;
        end
        else if (SE_i_add_triangular23_backEN == 1'b1)
        begin
            i_add_triangular23_o <= $unsigned(i_add_triangular23_a) + $unsigned(i_add_triangular23_b);
        end
    end
    assign i_add_triangular23_q = i_add_triangular23_o[32:0];

    // i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel0_2(BITSELECT,288)@76
    assign i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel0_2_b = $unsigned(i_add_triangular23_q[31:31]);

    // i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel0_1(BITSELECT,287)@76
    assign i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel0_1_b = $unsigned(i_add_triangular23_q[31:0]);

    // i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_BitJoin_for_b(BITJOIN,314)@76
    assign i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_BitJoin_for_b_q = {i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel0_1_b, i_mptr_bitcast_index38_triangular0_c_i2_01_x_q};

    // i_mptr_bitcast_index40_triangular0_add_x_p1_of_2(ADD,229)@76 + 1
    assign i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_a = {1'b0, i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_a_tessel0_0_b};
    assign i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_b = {1'b0, i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_o <= 61'b0;
        end
        else if (SE_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_o <= $unsigned(i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_a) + $unsigned(i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_b);
        end
    end
    assign i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_c[0] = i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_o[60];
    assign i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_q = i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_o[59:0];

    // SE_redist1_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0(STALLENABLE,614)
    // Valid signal propagation
    assign SE_redist1_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0_V0 = SE_redist1_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist1_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0_s_tv_0 = SE_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_BitJoin_for_c_backStall & SE_redist1_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist1_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0_backEN = ~ (SE_redist1_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist1_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0_v_s_0 = SE_redist1_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0_backEN & SE_i_add_triangular23_V0;
    // Backward Stall generation
    assign SE_redist1_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0_backStall = ~ (SE_redist1_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist1_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist1_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0_backEN == 1'b0)
            begin
                SE_redist1_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0_R_v_0 <= SE_redist1_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0_R_v_0 & SE_redist1_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist1_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0_R_v_0 <= SE_redist1_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0_v_s_0;
            end

        end
    end

    // redist1_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0(REG,385)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist1_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0_backEN == 1'b1)
        begin
            redist1_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0_q <= $unsigned(i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel0_2_b);
        end
    end

    // i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,320)@77
    assign i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, redist1_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0_q, redist1_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0_q, redist1_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0_q, redist1_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0_q};

    // i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_a_tessel1_0(BITSELECT,243)@76
    assign i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_a_tessel1_0_b = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_b[63:60]);

    // redist5_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_a_tessel1_0_b_1_0(REG,386)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_a_tessel1_0_b_1_0_q <= $unsigned(4'b0000);
        end
        else if (SE_redist5_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_a_tessel1_0_b_1_0_backEN == 1'b1)
        begin
            redist5_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_a_tessel1_0_b_1_0_q <= $unsigned(i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_a_tessel1_0_b);
        end
    end

    // i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,245)@77
    assign i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist5_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_a_tessel1_0_b_1_0_q};

    // SE_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_BitJoin_for_c(STALLENABLE,599)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_BitJoin_for_c_V0 = SE_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_BitJoin_for_c_wireValid;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_BitJoin_for_c_backStall = SR_SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_backStall | ~ (SE_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_BitJoin_for_c_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_BitJoin_for_c_wireValid = SE_redist1_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0_V0;

    // SR_SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2(STALLREG,778)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_r_data0 <= 5'bxxxxx;
            SR_SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_r_data1 <= 5'bxxxxx;
            SR_SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_r_valid <= SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_backStall & (SR_SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_r_valid | SR_SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_i_valid);

            if (SR_SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_r_data0 <= $unsigned(i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_r_data1 <= $unsigned(i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_r_data2 <= $unsigned(i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_and0 = SE_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_V0;
    assign SR_SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_and1 = SE_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_a_BitJoin_for_c_V1 & SR_SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_and0;
    assign SR_SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_i_valid = SE_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_BitJoin_for_c_V0 & SR_SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_and1;
    // Stall signal propagation
    assign SR_SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_backStall = SR_SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_r_valid | ~ (SR_SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_V = SR_SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_r_valid : SR_SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_D0 = SR_SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_r_data0 : i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    // Data1
    assign SR_SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_D1 = SR_SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_r_data1 : i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data2
    assign SR_SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_D2 = SR_SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_r_data2 : i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_c;

    // SE_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_a_BitJoin_for_c(STALLENABLE,591)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_a_BitJoin_for_c_fromReg0 <= '0;
            SE_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_a_BitJoin_for_c_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_a_BitJoin_for_c_fromReg0 <= SE_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_a_BitJoin_for_c_toReg0;
            // Successor 1
            SE_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_a_BitJoin_for_c_fromReg1 <= SE_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_a_BitJoin_for_c_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_a_BitJoin_for_c_consumed0 = (~ (SR_SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_backStall) & SE_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_a_BitJoin_for_c_wireValid) | SE_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_a_BitJoin_for_c_fromReg0;
    assign SE_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_a_BitJoin_for_c_consumed1 = (~ (SR_SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_backStall) & SE_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_a_BitJoin_for_c_wireValid) | SE_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_a_BitJoin_for_c_fromReg1;
    // Consuming
    assign SE_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_a_BitJoin_for_c_StallValid = SE_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_a_BitJoin_for_c_backStall & SE_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_a_BitJoin_for_c_wireValid;
    assign SE_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_a_BitJoin_for_c_toReg0 = SE_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_a_BitJoin_for_c_StallValid & SE_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_a_BitJoin_for_c_consumed0;
    assign SE_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_a_BitJoin_for_c_toReg1 = SE_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_a_BitJoin_for_c_StallValid & SE_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_a_BitJoin_for_c_consumed1;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_a_BitJoin_for_c_or0 = SE_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_a_BitJoin_for_c_consumed0;
    assign SE_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_a_BitJoin_for_c_wireStall = ~ (SE_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_a_BitJoin_for_c_consumed1 & SE_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_a_BitJoin_for_c_or0);
    assign SE_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_a_BitJoin_for_c_backStall = SE_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_a_BitJoin_for_c_wireStall;
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_a_BitJoin_for_c_V0 = SE_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_a_BitJoin_for_c_wireValid & ~ (SE_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_a_BitJoin_for_c_fromReg0);
    assign SE_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_a_BitJoin_for_c_V1 = SE_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_a_BitJoin_for_c_wireValid & ~ (SE_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_a_BitJoin_for_c_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_a_BitJoin_for_c_wireValid = SE_redist5_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_a_tessel1_0_b_1_0_V0;

    // SE_redist5_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_a_tessel1_0_b_1_0(STALLENABLE,615)
    // Valid signal propagation
    assign SE_redist5_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_a_tessel1_0_b_1_0_V0 = SE_redist5_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_a_tessel1_0_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist5_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_a_tessel1_0_b_1_0_s_tv_0 = SE_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_a_BitJoin_for_c_backStall & SE_redist5_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_a_tessel1_0_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist5_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_a_tessel1_0_b_1_0_backEN = ~ (SE_redist5_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_a_tessel1_0_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist5_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_a_tessel1_0_b_1_0_v_s_0 = SE_redist5_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_a_tessel1_0_b_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_V2;
    // Backward Stall generation
    assign SE_redist5_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_a_tessel1_0_b_1_0_backStall = ~ (SE_redist5_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_a_tessel1_0_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist5_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_a_tessel1_0_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist5_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_a_tessel1_0_b_1_0_backEN == 1'b0)
            begin
                SE_redist5_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_a_tessel1_0_b_1_0_R_v_0 <= SE_redist5_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_a_tessel1_0_b_1_0_R_v_0 & SE_redist5_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_a_tessel1_0_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist5_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_a_tessel1_0_b_1_0_R_v_0 <= SE_redist5_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_a_tessel1_0_b_1_0_v_s_0;
            end

        end
    end

    // SR_SE_redist12_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_q_1_0(STALLREG,779)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist12_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_q_1_0_r_valid <= 1'b0;
            SR_SE_redist12_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_q_1_0_r_data0 <= 60'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist12_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_q_1_0_r_valid <= SE_redist12_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_q_1_0_backStall & (SR_SE_redist12_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_q_1_0_r_valid | SR_SE_redist12_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_q_1_0_i_valid);

            if (SR_SE_redist12_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_q_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist12_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_q_1_0_r_data0 <= $unsigned(i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist12_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_q_1_0_i_valid = SE_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_V1;
    // Stall signal propagation
    assign SR_SE_redist12_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_q_1_0_backStall = SR_SE_redist12_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_q_1_0_r_valid | ~ (SR_SE_redist12_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_q_1_0_i_valid);

    // Valid
    assign SR_SE_redist12_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_q_1_0_V = SR_SE_redist12_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist12_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_q_1_0_r_valid : SR_SE_redist12_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_q_1_0_i_valid;

    assign SR_SE_redist12_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_q_1_0_D0 = SR_SE_redist12_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist12_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_q_1_0_r_data0 : i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_q;

    // SE_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2(STALLENABLE,583)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_V0 = SE_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_R_v_0;
    assign SE_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_V1 = SE_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_s_tv_0 = SR_SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_backStall & SE_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_R_v_0;
    assign SE_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_s_tv_1 = SR_SE_redist12_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_q_1_0_backStall & SE_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_or0 = SE_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_s_tv_0;
    assign SE_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_backEN = ~ (SE_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_s_tv_1 | SE_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_and0 = SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_V1 & SE_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_backEN;
    assign SE_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_v_s_0 = SE_i_add_triangular23_V1 & SE_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_and0;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_backStall = ~ (SE_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_R_v_0 <= 1'b0;
            SE_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_R_v_0 <= SE_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_R_v_0 & SE_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_R_v_0 <= SE_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_v_s_0;
            end

            if (SE_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_R_v_1 <= SE_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_R_v_1 & SE_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_R_v_1 <= SE_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3(STALLENABLE,522)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_fromReg1 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_fromReg2 <= SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_consumed0 = (~ (SE_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_consumed1 = (~ (SE_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_fromReg1;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_consumed2 = (~ (SE_redist5_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_a_tessel1_0_b_1_0_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_fromReg2;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_StallValid = SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_backStall & SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_consumed1;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_toReg2 = SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_consumed2;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_or0 = SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_or1 = SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_or0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_consumed2 & SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_or1);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_backStall = SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_V1 = SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_fromReg1);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_V2 = SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_wireValid = i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_out_valid_out;

    // i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3(BLACKBOX,69)@75
    // in in_stall_in@20000000
    // out out_dest_data_out_0_0@76
    // out out_stall_out@20000000
    // out out_valid_out@76
    triangular_i_llvm_fpga_ffwd_dest_p1025s_0000ihc_mm_hosts_a4517_0 thei_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_backStall),
        .in_valid_in(SE_out_bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_1_V0),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_out_dest_data_out_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3(BITJOIN,455)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_q = i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_out_dest_data_out_0_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3(BITSELECT,456)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_q[63:0]);

    // i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_a_tessel0_0(BITSELECT,241)@76
    assign i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_a_tessel0_0_b = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_b[59:0]);

    // i_mptr_bitcast_index38_triangular0_add_x_p1_of_2(ADD,220)@76 + 1
    assign i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_a = {1'b0, i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_a_tessel0_0_b};
    assign i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_b = {1'b0, i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_o <= 61'b0;
        end
        else if (SE_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_o <= $unsigned(i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_a) + $unsigned(i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_b);
        end
    end
    assign i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_c[0] = i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_o[60];
    assign i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_q = i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_o[59:0];

    // SE_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2(STALLENABLE,580)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_V0 = SE_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_R_v_0;
    assign SE_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_V1 = SE_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_s_tv_0 = SR_SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_backStall & SE_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_R_v_0;
    assign SE_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_s_tv_1 = SR_SE_redist13_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_q_1_0_backStall & SE_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_or0 = SE_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_s_tv_0;
    assign SE_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_backEN = ~ (SE_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_s_tv_1 | SE_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_and0 = SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a4517_triangular3_V0 & SE_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_backEN;
    assign SE_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_v_s_0 = SE_i_add8_triangular24_V1 & SE_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_and0;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_backStall = ~ (SE_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_R_v_0 <= 1'b0;
            SE_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_R_v_0 <= SE_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_R_v_0 & SE_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_R_v_0 <= SE_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_v_s_0;
            end

            if (SE_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_R_v_1 <= SE_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_R_v_1 & SE_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_R_v_1 <= SE_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_v_s_0;
            end

        end
    end

    // SR_SE_redist13_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_q_1_0(STALLREG,774)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist13_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_q_1_0_r_valid <= 1'b0;
            SR_SE_redist13_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_q_1_0_r_data0 <= 60'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist13_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_q_1_0_r_valid <= SE_redist13_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_q_1_0_backStall & (SR_SE_redist13_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_q_1_0_r_valid | SR_SE_redist13_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_q_1_0_i_valid);

            if (SR_SE_redist13_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_q_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist13_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_q_1_0_r_data0 <= $unsigned(i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist13_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_q_1_0_i_valid = SE_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_V1;
    // Stall signal propagation
    assign SR_SE_redist13_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_q_1_0_backStall = SR_SE_redist13_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_q_1_0_r_valid | ~ (SR_SE_redist13_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_q_1_0_i_valid);

    // Valid
    assign SR_SE_redist13_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_q_1_0_V = SR_SE_redist13_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist13_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_q_1_0_r_valid : SR_SE_redist13_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_q_1_0_i_valid;

    assign SR_SE_redist13_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_q_1_0_D0 = SR_SE_redist13_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist13_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_q_1_0_r_data0 : i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_q;

    // SE_redist13_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_q_1_0(STALLENABLE,619)
    // Valid signal propagation
    assign SE_redist13_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_q_1_0_V0 = SE_redist13_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist13_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_q_1_0_s_tv_0 = SE_i_mptr_bitcast_index38_triangular0_add_x_BitJoin_for_q_backStall & SE_redist13_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist13_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_q_1_0_backEN = ~ (SE_redist13_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist13_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_q_1_0_v_s_0 = SE_redist13_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_q_1_0_backEN & SR_SE_redist13_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_q_1_0_V;
    // Backward Stall generation
    assign SE_redist13_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_q_1_0_backStall = ~ (SE_redist13_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_q_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist13_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist13_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_q_1_0_backEN == 1'b0)
            begin
                SE_redist13_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist13_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_q_1_0_R_v_0 & SE_redist13_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist13_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist13_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_q_1_0_v_s_0;
            end

        end
    end

    // SE_i_mptr_bitcast_index38_triangular0_add_x_BitJoin_for_q(STALLENABLE,582)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index38_triangular0_add_x_BitJoin_for_q_V0 = SE_i_mptr_bitcast_index38_triangular0_add_x_BitJoin_for_q_wireValid;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index38_triangular0_add_x_BitJoin_for_q_backStall = SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_0_backStall | ~ (SE_i_mptr_bitcast_index38_triangular0_add_x_BitJoin_for_q_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_mptr_bitcast_index38_triangular0_add_x_BitJoin_for_q_and0 = SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_V0;
    assign SE_i_mptr_bitcast_index38_triangular0_add_x_BitJoin_for_q_wireValid = SE_redist13_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_q_1_0_V0 & SE_i_mptr_bitcast_index38_triangular0_add_x_BitJoin_for_q_and0;

    // SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2(STALLENABLE,581)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_V0 = SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_s_tv_0 = SE_i_mptr_bitcast_index38_triangular0_add_x_BitJoin_for_q_backStall & SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_backEN = ~ (SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_v_s_0 = SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_backEN & SR_SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_backStall = ~ (SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_backEN == 1'b0)
            begin
                SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_R_v_0 <= SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_R_v_0 & SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_R_v_0 <= SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_v_s_0;
            end

        end
    end

    // redist6_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0(REG,387)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist6_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0_backEN == 1'b1)
        begin
            redist6_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0_q <= $unsigned(i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel0_2_b);
        end
    end

    // i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,280)@77
    assign i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, redist6_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0_q, redist6_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0_q, redist6_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0_q, redist6_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0_q};

    // SR_SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2(STALLREG,773)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_r_data0 <= 5'bxxxxx;
            SR_SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_r_data1 <= 5'bxxxxx;
            SR_SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_r_valid <= SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_backStall & (SR_SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_r_valid | SR_SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_i_valid);

            if (SR_SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_r_data0 <= $unsigned(i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_r_data1 <= $unsigned(i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_r_data2 <= $unsigned(i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_and0 = SE_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_V0;
    assign SR_SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_and1 = SE_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_a_BitJoin_for_c_V0 & SR_SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_and0;
    assign SR_SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_i_valid = SE_i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_BitJoin_for_c_V0 & SR_SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_and1;
    // Stall signal propagation
    assign SR_SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_backStall = SR_SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_r_valid | ~ (SR_SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_V = SR_SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_r_valid : SR_SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_D0 = SR_SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_r_data0 : i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    // Data1
    assign SR_SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_D1 = SR_SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_r_data1 : i_mptr_bitcast_index38_triangular0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data2
    assign SR_SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_D2 = SR_SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_r_data2 : i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_c;

    // i_mptr_bitcast_index38_triangular0_add_x_p2_of_2(ADD,221)@77 + 1
    assign i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_cin = SR_SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_D2;
    assign i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_a = { {1'b0, SR_SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_D0}, 1'b1 };
    assign i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_b = { {1'b0, SR_SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_D1}, i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_o <= 7'b0;
        end
        else if (SE_i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_o <= $unsigned(i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_a) + $unsigned(i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_b);
        end
    end
    assign i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_q = i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_o[5:1];

    // redist13_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_q_1_0(REG,390)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_q_1_0_q <= $unsigned(60'b000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist13_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_q_1_0_backEN == 1'b1)
        begin
            redist13_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_q_1_0_q <= $unsigned(SR_SE_redist13_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_q_1_0_D0);
        end
    end

    // i_mptr_bitcast_index38_triangular0_add_x_BitJoin_for_q(BITJOIN,222)@78
    assign i_mptr_bitcast_index38_triangular0_add_x_BitJoin_for_q_q = {i_mptr_bitcast_index38_triangular0_add_x_p2_of_2_q, redist13_i_mptr_bitcast_index38_triangular0_add_x_p1_of_2_q_1_0_q};

    // i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x(BITSELECT,27)@78
    assign i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b = i_mptr_bitcast_index38_triangular0_add_x_BitJoin_for_q_q[63:0];

    // redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_0(REG,433)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_0_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_0_backEN == 1'b1)
        begin
            redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_0_q <= $unsigned(i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b);
        end
    end

    // SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_0(STALLENABLE,663)
    // Valid signal propagation
    assign SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_0_V0 = SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_0_R_v_0;
    // Stall signal propagation
    assign SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_0_s_tv_0 = SR_SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_1_backStall & SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_0_R_v_0;
    // Backward Enable generation
    assign SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_0_backEN = ~ (SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_0_v_s_0 = SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_0_backEN & SE_i_mptr_bitcast_index38_triangular0_add_x_BitJoin_for_q_V0;
    // Backward Stall generation
    assign SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_0_backStall = ~ (SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_0_backEN == 1'b0)
            begin
                SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_0_R_v_0 <= SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_0_R_v_0 & SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_0_s_tv_0;
            end
            else
            begin
                SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_0_R_v_0 <= SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_0_v_s_0;
            end

        end
    end

    // SR_SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_1(STALLREG,775)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_1_r_valid <= 1'b0;
            SR_SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_1_r_data0 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_1_r_valid <= SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_1_backStall & (SR_SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_1_r_valid | SR_SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_1_i_valid);

            if (SR_SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_1_r_data0 <= $unsigned(redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_1_i_valid = SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_0_V0;
    // Stall signal propagation
    assign SR_SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_1_backStall = SR_SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_1_r_valid | ~ (SR_SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_1_i_valid);

    // Valid
    assign SR_SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_1_V = SR_SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_1_r_valid == 1'b1 ? SR_SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_1_r_valid : SR_SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_1_i_valid;

    assign SR_SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_1_D0 = SR_SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_1_r_valid == 1'b1 ? SR_SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_1_r_data0 : redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_0_q;

    // redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_1(REG,434)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_1_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_1_backEN == 1'b1)
        begin
            redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_1_q <= $unsigned(SR_SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_1_D0);
        end
    end

    // redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_2(REG,435)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_2_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_2_backEN == 1'b1)
        begin
            redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_2_q <= $unsigned(redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_1_q);
        end
    end

    // SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_2(STALLENABLE,665)
    // Valid signal propagation
    assign SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_2_V0 = SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_2_R_v_0;
    // Stall signal propagation
    assign SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_2_s_tv_0 = SR_SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_3_backStall & SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_2_R_v_0;
    // Backward Enable generation
    assign SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_2_backEN = ~ (SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_2_v_s_0 = SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_2_backEN & SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_1_V0;
    // Backward Stall generation
    assign SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_2_backStall = ~ (SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_2_backEN == 1'b0)
            begin
                SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_2_R_v_0 <= SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_2_R_v_0 & SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_2_s_tv_0;
            end
            else
            begin
                SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_2_R_v_0 <= SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_2_v_s_0;
            end

        end
    end

    // SR_SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_3(STALLREG,776)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_3_r_valid <= 1'b0;
            SR_SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_3_r_data0 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_3_r_valid <= SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_3_backStall & (SR_SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_3_r_valid | SR_SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_3_i_valid);

            if (SR_SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_3_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_3_r_data0 <= $unsigned(redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_3_i_valid = SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_2_V0;
    // Stall signal propagation
    assign SR_SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_3_backStall = SR_SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_3_r_valid | ~ (SR_SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_3_i_valid);

    // Valid
    assign SR_SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_3_V = SR_SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_3_r_valid == 1'b1 ? SR_SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_3_r_valid : SR_SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_3_i_valid;

    assign SR_SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_3_D0 = SR_SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_3_r_valid == 1'b1 ? SR_SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_3_r_data0 : redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_2_q;

    // SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_3(STALLENABLE,666)
    // Valid signal propagation
    assign SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_3_V0 = SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_3_R_v_0;
    // Stall signal propagation
    assign SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_3_s_tv_0 = SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_4_backStall & SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_3_R_v_0;
    // Backward Enable generation
    assign SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_3_backEN = ~ (SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_3_v_s_0 = SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_3_backEN & SR_SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_3_V;
    // Backward Stall generation
    assign SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_3_backStall = ~ (SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_3_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_3_backEN == 1'b0)
            begin
                SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_3_R_v_0 <= SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_3_R_v_0 & SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_3_s_tv_0;
            end
            else
            begin
                SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_3_R_v_0 <= SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_3_v_s_0;
            end

        end
    end

    // SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_4(STALLENABLE,667)
    // Valid signal propagation
    assign SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_4_V0 = SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_4_R_v_0;
    assign SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_4_V1 = SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_4_R_v_1;
    // Stall signal propagation
    assign SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_4_s_tv_0 = SE_in_i_llvm_fpga_mem_lm83_triangular30_backStall & SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_4_R_v_0;
    assign SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_4_s_tv_1 = SE_join_for_coalesced_delay_2_backStall & SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_4_R_v_1;
    // Backward Enable generation
    assign SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_4_or0 = SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_4_s_tv_0;
    assign SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_4_backEN = ~ (SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_4_s_tv_1 | SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_4_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_4_v_s_0 = SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_4_backEN & SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_3_V0;
    // Backward Stall generation
    assign SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_4_backStall = ~ (SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_4_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_4_R_v_0 <= 1'b0;
            SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_4_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_4_backEN == 1'b0)
            begin
                SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_4_R_v_0 <= SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_4_R_v_0 & SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_4_s_tv_0;
            end
            else
            begin
                SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_4_R_v_0 <= SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_4_v_s_0;
            end

            if (SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_4_backEN == 1'b0)
            begin
                SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_4_R_v_1 <= SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_4_R_v_1 & SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_4_s_tv_1;
            end
            else
            begin
                SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_4_R_v_1 <= SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_4_v_s_0;
            end

        end
    end

    // SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_2(STALLENABLE,638)
    // Valid signal propagation
    assign SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_2_V0 = SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_2_R_v_0;
    // Stall signal propagation
    assign SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_2_s_tv_0 = SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_3_backStall & SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_2_R_v_0;
    // Backward Enable generation
    assign SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_2_backEN = ~ (SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_2_v_s_0 = SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_2_backEN & SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_2_V;
    // Backward Stall generation
    assign SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_2_backStall = ~ (SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_2_backEN == 1'b0)
            begin
                SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_2_R_v_0 <= SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_2_R_v_0 & SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_2_s_tv_0;
            end
            else
            begin
                SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_2_R_v_0 <= SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_2_v_s_0;
            end

        end
    end

    // SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_0(STALLENABLE,636)
    // Valid signal propagation
    assign SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_0_V0 = SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_0_R_v_0;
    // Stall signal propagation
    assign SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_0_s_tv_0 = SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_1_backStall & SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_0_R_v_0;
    // Backward Enable generation
    assign SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_0_backEN = ~ (SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_0_v_s_0 = SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_0_backEN & SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_0_V;
    // Backward Stall generation
    assign SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_0_backStall = ~ (SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_0_backEN == 1'b0)
            begin
                SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_0_R_v_0 <= SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_0_R_v_0 & SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_0_s_tv_0;
            end
            else
            begin
                SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_0_R_v_0 <= SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_0_v_s_0;
            end

        end
    end

    // SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_0(STALLREG,769)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_0_r_valid <= 1'b0;
            SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_0_r_valid <= SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_0_backStall & (SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_0_r_valid | SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_0_i_valid);

            if (SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_0_r_data0 <= $unsigned(redist21_i_first_cleanup_xor_or_triangular20_q_6_4_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_0_i_valid = SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_V2;
    // Stall signal propagation
    assign SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_0_backStall = SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_0_r_valid | ~ (SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_0_i_valid);

    // Valid
    assign SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_0_V = SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_0_r_valid == 1'b1 ? SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_0_r_valid : SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_0_i_valid;

    assign SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_0_D0 = SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_0_r_valid == 1'b1 ? SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_0_r_data0 : redist21_i_first_cleanup_xor_or_triangular20_q_6_4_q;

    // redist22_i_first_cleanup_xor_or_triangular20_q_11_0(REG,407)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_first_cleanup_xor_or_triangular20_q_11_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_0_backEN == 1'b1)
        begin
            redist22_i_first_cleanup_xor_or_triangular20_q_11_0_q <= $unsigned(SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_0_D0);
        end
    end

    // redist22_i_first_cleanup_xor_or_triangular20_q_11_1(REG,408)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_first_cleanup_xor_or_triangular20_q_11_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_1_backEN == 1'b1)
        begin
            redist22_i_first_cleanup_xor_or_triangular20_q_11_1_q <= $unsigned(redist22_i_first_cleanup_xor_or_triangular20_q_11_0_q);
        end
    end

    // SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_1(STALLENABLE,637)
    // Valid signal propagation
    assign SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_1_V0 = SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_1_R_v_0;
    // Stall signal propagation
    assign SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_1_s_tv_0 = SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_2_backStall & SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_1_R_v_0;
    // Backward Enable generation
    assign SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_1_backEN = ~ (SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_1_v_s_0 = SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_1_backEN & SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_0_V0;
    // Backward Stall generation
    assign SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_1_backStall = ~ (SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_1_backEN == 1'b0)
            begin
                SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_1_R_v_0 <= SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_1_R_v_0 & SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_1_s_tv_0;
            end
            else
            begin
                SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_1_R_v_0 <= SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_1_v_s_0;
            end

        end
    end

    // SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_2(STALLREG,770)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_2_r_valid <= 1'b0;
            SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_2_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_2_r_valid <= SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_2_backStall & (SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_2_r_valid | SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_2_i_valid);

            if (SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_2_r_data0 <= $unsigned(redist22_i_first_cleanup_xor_or_triangular20_q_11_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_2_i_valid = SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_1_V0;
    // Stall signal propagation
    assign SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_2_backStall = SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_2_r_valid | ~ (SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_2_i_valid);

    // Valid
    assign SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_2_V = SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_2_r_valid == 1'b1 ? SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_2_r_valid : SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_2_i_valid;

    assign SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_2_D0 = SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_2_r_valid == 1'b1 ? SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_2_r_data0 : redist22_i_first_cleanup_xor_or_triangular20_q_11_1_q;

    // redist22_i_first_cleanup_xor_or_triangular20_q_11_2(REG,409)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_first_cleanup_xor_or_triangular20_q_11_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_2_backEN == 1'b1)
        begin
            redist22_i_first_cleanup_xor_or_triangular20_q_11_2_q <= $unsigned(SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_2_D0);
        end
    end

    // redist22_i_first_cleanup_xor_or_triangular20_q_11_3(REG,410)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_first_cleanup_xor_or_triangular20_q_11_3_q <= $unsigned(1'b0);
        end
        else if (SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_3_backEN == 1'b1)
        begin
            redist22_i_first_cleanup_xor_or_triangular20_q_11_3_q <= $unsigned(redist22_i_first_cleanup_xor_or_triangular20_q_11_2_q);
        end
    end

    // SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_3(STALLENABLE,639)
    // Valid signal propagation
    assign SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_3_V0 = SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_3_R_v_0;
    // Stall signal propagation
    assign SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_3_s_tv_0 = SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_backStall & SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_3_R_v_0;
    // Backward Enable generation
    assign SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_3_backEN = ~ (SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_3_v_s_0 = SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_3_backEN & SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_2_V0;
    // Backward Stall generation
    assign SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_3_backStall = ~ (SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_3_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_3_backEN == 1'b0)
            begin
                SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_3_R_v_0 <= SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_3_R_v_0 & SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_3_s_tv_0;
            end
            else
            begin
                SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_3_R_v_0 <= SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_3_v_s_0;
            end

        end
    end

    // SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4(STALLREG,771)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_r_valid <= 1'b0;
            SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_r_valid <= SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_backStall & (SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_r_valid | SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_i_valid);

            if (SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_r_data0 <= $unsigned(redist22_i_first_cleanup_xor_or_triangular20_q_11_3_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_i_valid = SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_3_V0;
    // Stall signal propagation
    assign SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_backStall = SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_r_valid | ~ (SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_i_valid);

    // Valid
    assign SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_V = SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_r_valid == 1'b1 ? SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_r_valid : SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_i_valid;

    assign SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_D0 = SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_r_valid == 1'b1 ? SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_r_data0 : redist22_i_first_cleanup_xor_or_triangular20_q_11_3_q;

    // SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4(STALLENABLE,640)
    // Valid signal propagation
    assign SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_V0 = SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_R_v_0;
    assign SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_V1 = SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_R_v_1;
    // Stall signal propagation
    assign SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_s_tv_0 = SE_in_i_llvm_fpga_mem_lm83_triangular30_backStall & SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_R_v_0;
    assign SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_s_tv_1 = SE_join_for_coalesced_delay_2_backStall & SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_R_v_1;
    // Backward Enable generation
    assign SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_or0 = SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_s_tv_0;
    assign SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_backEN = ~ (SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_s_tv_1 | SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_v_s_0 = SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_backEN & SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_V;
    // Backward Stall generation
    assign SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_backStall = ~ (SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_R_v_0 <= 1'b0;
            SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_backEN == 1'b0)
            begin
                SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_R_v_0 <= SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_R_v_0 & SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_s_tv_0;
            end
            else
            begin
                SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_R_v_0 <= SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_v_s_0;
            end

            if (SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_backEN == 1'b0)
            begin
                SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_R_v_1 <= SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_R_v_1 & SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_s_tv_1;
            end
            else
            begin
                SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_R_v_1 <= SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_v_s_0;
            end

        end
    end

    // SE_redist20_i_memdep_phi4_or_triangular17_q_5_2(STALLENABLE,628)
    // Valid signal propagation
    assign SE_redist20_i_memdep_phi4_or_triangular17_q_5_2_V0 = SE_redist20_i_memdep_phi4_or_triangular17_q_5_2_R_v_0;
    // Stall signal propagation
    assign SE_redist20_i_memdep_phi4_or_triangular17_q_5_2_s_tv_0 = SE_redist20_i_memdep_phi4_or_triangular17_q_5_3_backStall & SE_redist20_i_memdep_phi4_or_triangular17_q_5_2_R_v_0;
    // Backward Enable generation
    assign SE_redist20_i_memdep_phi4_or_triangular17_q_5_2_backEN = ~ (SE_redist20_i_memdep_phi4_or_triangular17_q_5_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist20_i_memdep_phi4_or_triangular17_q_5_2_v_s_0 = SE_redist20_i_memdep_phi4_or_triangular17_q_5_2_backEN & SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_2_V;
    // Backward Stall generation
    assign SE_redist20_i_memdep_phi4_or_triangular17_q_5_2_backStall = ~ (SE_redist20_i_memdep_phi4_or_triangular17_q_5_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist20_i_memdep_phi4_or_triangular17_q_5_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist20_i_memdep_phi4_or_triangular17_q_5_2_backEN == 1'b0)
            begin
                SE_redist20_i_memdep_phi4_or_triangular17_q_5_2_R_v_0 <= SE_redist20_i_memdep_phi4_or_triangular17_q_5_2_R_v_0 & SE_redist20_i_memdep_phi4_or_triangular17_q_5_2_s_tv_0;
            end
            else
            begin
                SE_redist20_i_memdep_phi4_or_triangular17_q_5_2_R_v_0 <= SE_redist20_i_memdep_phi4_or_triangular17_q_5_2_v_s_0;
            end

        end
    end

    // SE_redist20_i_memdep_phi4_or_triangular17_q_5_0(STALLENABLE,626)
    // Valid signal propagation
    assign SE_redist20_i_memdep_phi4_or_triangular17_q_5_0_V0 = SE_redist20_i_memdep_phi4_or_triangular17_q_5_0_R_v_0;
    // Stall signal propagation
    assign SE_redist20_i_memdep_phi4_or_triangular17_q_5_0_s_tv_0 = SE_redist20_i_memdep_phi4_or_triangular17_q_5_1_backStall & SE_redist20_i_memdep_phi4_or_triangular17_q_5_0_R_v_0;
    // Backward Enable generation
    assign SE_redist20_i_memdep_phi4_or_triangular17_q_5_0_backEN = ~ (SE_redist20_i_memdep_phi4_or_triangular17_q_5_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist20_i_memdep_phi4_or_triangular17_q_5_0_v_s_0 = SE_redist20_i_memdep_phi4_or_triangular17_q_5_0_backEN & SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_0_V;
    // Backward Stall generation
    assign SE_redist20_i_memdep_phi4_or_triangular17_q_5_0_backStall = ~ (SE_redist20_i_memdep_phi4_or_triangular17_q_5_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist20_i_memdep_phi4_or_triangular17_q_5_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist20_i_memdep_phi4_or_triangular17_q_5_0_backEN == 1'b0)
            begin
                SE_redist20_i_memdep_phi4_or_triangular17_q_5_0_R_v_0 <= SE_redist20_i_memdep_phi4_or_triangular17_q_5_0_R_v_0 & SE_redist20_i_memdep_phi4_or_triangular17_q_5_0_s_tv_0;
            end
            else
            begin
                SE_redist20_i_memdep_phi4_or_triangular17_q_5_0_R_v_0 <= SE_redist20_i_memdep_phi4_or_triangular17_q_5_0_v_s_0;
            end

        end
    end

    // SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_0(STALLREG,784)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_0_r_valid <= 1'b0;
            SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_0_r_valid <= SE_redist20_i_memdep_phi4_or_triangular17_q_5_0_backStall & (SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_0_r_valid | SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_0_i_valid);

            if (SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_0_r_data0 <= i_memdep_phi4_or_triangular17_q;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_0_i_valid = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_V2;
    // Stall signal propagation
    assign SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_0_backStall = SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_0_r_valid | ~ (SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_0_i_valid);

    // Valid
    assign SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_0_V = SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_0_r_valid == 1'b1 ? SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_0_r_valid : SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_0_i_valid;

    assign SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_0_D0 = SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_0_r_valid == 1'b1 ? SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_0_r_data0 : i_memdep_phi4_or_triangular17_q;

    // redist20_i_memdep_phi4_or_triangular17_q_5_0(REG,397)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_memdep_phi4_or_triangular17_q_5_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist20_i_memdep_phi4_or_triangular17_q_5_0_backEN == 1'b1)
        begin
            redist20_i_memdep_phi4_or_triangular17_q_5_0_q <= $unsigned(SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_0_D0);
        end
    end

    // redist20_i_memdep_phi4_or_triangular17_q_5_1(REG,398)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_memdep_phi4_or_triangular17_q_5_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist20_i_memdep_phi4_or_triangular17_q_5_1_backEN == 1'b1)
        begin
            redist20_i_memdep_phi4_or_triangular17_q_5_1_q <= $unsigned(redist20_i_memdep_phi4_or_triangular17_q_5_0_q);
        end
    end

    // SE_redist20_i_memdep_phi4_or_triangular17_q_5_1(STALLENABLE,627)
    // Valid signal propagation
    assign SE_redist20_i_memdep_phi4_or_triangular17_q_5_1_V0 = SE_redist20_i_memdep_phi4_or_triangular17_q_5_1_R_v_0;
    // Stall signal propagation
    assign SE_redist20_i_memdep_phi4_or_triangular17_q_5_1_s_tv_0 = SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_2_backStall & SE_redist20_i_memdep_phi4_or_triangular17_q_5_1_R_v_0;
    // Backward Enable generation
    assign SE_redist20_i_memdep_phi4_or_triangular17_q_5_1_backEN = ~ (SE_redist20_i_memdep_phi4_or_triangular17_q_5_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist20_i_memdep_phi4_or_triangular17_q_5_1_v_s_0 = SE_redist20_i_memdep_phi4_or_triangular17_q_5_1_backEN & SE_redist20_i_memdep_phi4_or_triangular17_q_5_0_V0;
    // Backward Stall generation
    assign SE_redist20_i_memdep_phi4_or_triangular17_q_5_1_backStall = ~ (SE_redist20_i_memdep_phi4_or_triangular17_q_5_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist20_i_memdep_phi4_or_triangular17_q_5_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist20_i_memdep_phi4_or_triangular17_q_5_1_backEN == 1'b0)
            begin
                SE_redist20_i_memdep_phi4_or_triangular17_q_5_1_R_v_0 <= SE_redist20_i_memdep_phi4_or_triangular17_q_5_1_R_v_0 & SE_redist20_i_memdep_phi4_or_triangular17_q_5_1_s_tv_0;
            end
            else
            begin
                SE_redist20_i_memdep_phi4_or_triangular17_q_5_1_R_v_0 <= SE_redist20_i_memdep_phi4_or_triangular17_q_5_1_v_s_0;
            end

        end
    end

    // SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_2(STALLREG,785)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_2_r_valid <= 1'b0;
            SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_2_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_2_r_valid <= SE_redist20_i_memdep_phi4_or_triangular17_q_5_2_backStall & (SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_2_r_valid | SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_2_i_valid);

            if (SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_2_r_data0 <= $unsigned(redist20_i_memdep_phi4_or_triangular17_q_5_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_2_i_valid = SE_redist20_i_memdep_phi4_or_triangular17_q_5_1_V0;
    // Stall signal propagation
    assign SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_2_backStall = SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_2_r_valid | ~ (SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_2_i_valid);

    // Valid
    assign SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_2_V = SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_2_r_valid == 1'b1 ? SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_2_r_valid : SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_2_i_valid;

    assign SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_2_D0 = SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_2_r_valid == 1'b1 ? SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_2_r_data0 : redist20_i_memdep_phi4_or_triangular17_q_5_1_q;

    // redist20_i_memdep_phi4_or_triangular17_q_5_2(REG,399)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_memdep_phi4_or_triangular17_q_5_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist20_i_memdep_phi4_or_triangular17_q_5_2_backEN == 1'b1)
        begin
            redist20_i_memdep_phi4_or_triangular17_q_5_2_q <= $unsigned(SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_2_D0);
        end
    end

    // redist20_i_memdep_phi4_or_triangular17_q_5_3(REG,400)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_memdep_phi4_or_triangular17_q_5_3_q <= $unsigned(1'b0);
        end
        else if (SE_redist20_i_memdep_phi4_or_triangular17_q_5_3_backEN == 1'b1)
        begin
            redist20_i_memdep_phi4_or_triangular17_q_5_3_q <= $unsigned(redist20_i_memdep_phi4_or_triangular17_q_5_2_q);
        end
    end

    // SE_redist20_i_memdep_phi4_or_triangular17_q_5_3(STALLENABLE,629)
    // Valid signal propagation
    assign SE_redist20_i_memdep_phi4_or_triangular17_q_5_3_V0 = SE_redist20_i_memdep_phi4_or_triangular17_q_5_3_R_v_0;
    // Stall signal propagation
    assign SE_redist20_i_memdep_phi4_or_triangular17_q_5_3_s_tv_0 = SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_4_backStall & SE_redist20_i_memdep_phi4_or_triangular17_q_5_3_R_v_0;
    // Backward Enable generation
    assign SE_redist20_i_memdep_phi4_or_triangular17_q_5_3_backEN = ~ (SE_redist20_i_memdep_phi4_or_triangular17_q_5_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist20_i_memdep_phi4_or_triangular17_q_5_3_v_s_0 = SE_redist20_i_memdep_phi4_or_triangular17_q_5_3_backEN & SE_redist20_i_memdep_phi4_or_triangular17_q_5_2_V0;
    // Backward Stall generation
    assign SE_redist20_i_memdep_phi4_or_triangular17_q_5_3_backStall = ~ (SE_redist20_i_memdep_phi4_or_triangular17_q_5_3_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist20_i_memdep_phi4_or_triangular17_q_5_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist20_i_memdep_phi4_or_triangular17_q_5_3_backEN == 1'b0)
            begin
                SE_redist20_i_memdep_phi4_or_triangular17_q_5_3_R_v_0 <= SE_redist20_i_memdep_phi4_or_triangular17_q_5_3_R_v_0 & SE_redist20_i_memdep_phi4_or_triangular17_q_5_3_s_tv_0;
            end
            else
            begin
                SE_redist20_i_memdep_phi4_or_triangular17_q_5_3_R_v_0 <= SE_redist20_i_memdep_phi4_or_triangular17_q_5_3_v_s_0;
            end

        end
    end

    // SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_4(STALLREG,786)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_4_r_valid <= 1'b0;
            SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_4_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_4_r_valid <= SE_redist20_i_memdep_phi4_or_triangular17_q_5_4_backStall & (SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_4_r_valid | SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_4_i_valid);

            if (SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_4_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_4_r_data0 <= $unsigned(redist20_i_memdep_phi4_or_triangular17_q_5_3_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_4_i_valid = SE_redist20_i_memdep_phi4_or_triangular17_q_5_3_V0;
    // Stall signal propagation
    assign SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_4_backStall = SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_4_r_valid | ~ (SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_4_i_valid);

    // Valid
    assign SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_4_V = SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_4_r_valid == 1'b1 ? SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_4_r_valid : SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_4_i_valid;

    assign SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_4_D0 = SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_4_r_valid == 1'b1 ? SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_4_r_data0 : redist20_i_memdep_phi4_or_triangular17_q_5_3_q;

    // SE_redist20_i_memdep_phi4_or_triangular17_q_5_4(STALLENABLE,630)
    // Valid signal propagation
    assign SE_redist20_i_memdep_phi4_or_triangular17_q_5_4_V0 = SE_redist20_i_memdep_phi4_or_triangular17_q_5_4_R_v_0;
    // Stall signal propagation
    assign SE_redist20_i_memdep_phi4_or_triangular17_q_5_4_s_tv_0 = SE_in_i_llvm_fpga_mem_lm83_triangular30_backStall & SE_redist20_i_memdep_phi4_or_triangular17_q_5_4_R_v_0;
    // Backward Enable generation
    assign SE_redist20_i_memdep_phi4_or_triangular17_q_5_4_backEN = ~ (SE_redist20_i_memdep_phi4_or_triangular17_q_5_4_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist20_i_memdep_phi4_or_triangular17_q_5_4_v_s_0 = SE_redist20_i_memdep_phi4_or_triangular17_q_5_4_backEN & SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_4_V;
    // Backward Stall generation
    assign SE_redist20_i_memdep_phi4_or_triangular17_q_5_4_backStall = ~ (SE_redist20_i_memdep_phi4_or_triangular17_q_5_4_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist20_i_memdep_phi4_or_triangular17_q_5_4_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist20_i_memdep_phi4_or_triangular17_q_5_4_backEN == 1'b0)
            begin
                SE_redist20_i_memdep_phi4_or_triangular17_q_5_4_R_v_0 <= SE_redist20_i_memdep_phi4_or_triangular17_q_5_4_R_v_0 & SE_redist20_i_memdep_phi4_or_triangular17_q_5_4_s_tv_0;
            end
            else
            begin
                SE_redist20_i_memdep_phi4_or_triangular17_q_5_4_R_v_0 <= SE_redist20_i_memdep_phi4_or_triangular17_q_5_4_v_s_0;
            end

        end
    end

    // SE_in_i_llvm_fpga_mem_lm83_triangular30(STALLENABLE,527)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_mem_lm83_triangular30_V0 = SE_in_i_llvm_fpga_mem_lm83_triangular30_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_mem_lm83_triangular30_backStall = i_llvm_fpga_mem_lm83_triangular30_out_o_stall | ~ (SE_in_i_llvm_fpga_mem_lm83_triangular30_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_mem_lm83_triangular30_and0 = SE_redist20_i_memdep_phi4_or_triangular17_q_5_4_V0;
    assign SE_in_i_llvm_fpga_mem_lm83_triangular30_and1 = SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_V0 & SE_in_i_llvm_fpga_mem_lm83_triangular30_and0;
    assign SE_in_i_llvm_fpga_mem_lm83_triangular30_wireValid = SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_4_V0 & SE_in_i_llvm_fpga_mem_lm83_triangular30_and1;

    // redist22_i_first_cleanup_xor_or_triangular20_q_11_4(REG,411)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_first_cleanup_xor_or_triangular20_q_11_4_q <= $unsigned(1'b0);
        end
        else if (SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_backEN == 1'b1)
        begin
            redist22_i_first_cleanup_xor_or_triangular20_q_11_4_q <= $unsigned(SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_4_D0);
        end
    end

    // redist20_i_memdep_phi4_or_triangular17_q_5_4(REG,401)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_memdep_phi4_or_triangular17_q_5_4_q <= $unsigned(1'b0);
        end
        else if (SE_redist20_i_memdep_phi4_or_triangular17_q_5_4_backEN == 1'b1)
        begin
            redist20_i_memdep_phi4_or_triangular17_q_5_4_q <= $unsigned(SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_4_D0);
        end
    end

    // redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_3(REG,436)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_3_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_3_backEN == 1'b1)
        begin
            redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_3_q <= $unsigned(SR_SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_3_D0);
        end
    end

    // redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_4(REG,437)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_4_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_4_backEN == 1'b1)
        begin
            redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_4_q <= $unsigned(redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_3_q);
        end
    end

    // i_llvm_fpga_mem_lm83_triangular30(BLACKBOX,72)@83
    // in in_i_stall@20000000
    // out out_lm83_triangular_avm_address@20000000
    // out out_lm83_triangular_avm_burstcount@20000000
    // out out_lm83_triangular_avm_byteenable@20000000
    // out out_lm83_triangular_avm_enable@20000000
    // out out_lm83_triangular_avm_read@20000000
    // out out_lm83_triangular_avm_write@20000000
    // out out_lm83_triangular_avm_writedata@20000000
    // out out_o_readdata@115
    // out out_o_stall@20000000
    // out out_o_valid@115
    triangular_i_llvm_fpga_mem_lm83_0 thei_llvm_fpga_mem_lm83_triangular30 (
        .in_flush(in_flush),
        .in_i_address(redist37_i_mptr_bitcast_index38_triangular0_dupName_0_trunc_sel_x_b_5_4_q),
        .in_i_dependence(redist20_i_memdep_phi4_or_triangular17_q_5_4_q),
        .in_i_predicate(redist22_i_first_cleanup_xor_or_triangular20_q_11_4_q),
        .in_i_stall(SE_out_coalesced_delay_2_fifo_backStall),
        .in_i_valid(SE_in_i_llvm_fpga_mem_lm83_triangular30_V0),
        .in_lm83_triangular_avm_readdata(in_lm83_triangular_avm_readdata),
        .in_lm83_triangular_avm_readdatavalid(in_lm83_triangular_avm_readdatavalid),
        .in_lm83_triangular_avm_waitrequest(in_lm83_triangular_avm_waitrequest),
        .in_lm83_triangular_avm_writeack(in_lm83_triangular_avm_writeack),
        .out_lm83_triangular_avm_address(i_llvm_fpga_mem_lm83_triangular30_out_lm83_triangular_avm_address),
        .out_lm83_triangular_avm_burstcount(i_llvm_fpga_mem_lm83_triangular30_out_lm83_triangular_avm_burstcount),
        .out_lm83_triangular_avm_byteenable(i_llvm_fpga_mem_lm83_triangular30_out_lm83_triangular_avm_byteenable),
        .out_lm83_triangular_avm_enable(i_llvm_fpga_mem_lm83_triangular30_out_lm83_triangular_avm_enable),
        .out_lm83_triangular_avm_read(i_llvm_fpga_mem_lm83_triangular30_out_lm83_triangular_avm_read),
        .out_lm83_triangular_avm_write(i_llvm_fpga_mem_lm83_triangular30_out_lm83_triangular_avm_write),
        .out_lm83_triangular_avm_writedata(i_llvm_fpga_mem_lm83_triangular30_out_lm83_triangular_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm83_triangular30_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm83_triangular30_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm83_triangular30_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_lm83_triangular30(BITJOIN,464)
    assign bubble_join_i_llvm_fpga_mem_lm83_triangular30_q = i_llvm_fpga_mem_lm83_triangular30_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm83_triangular30(BITSELECT,465)
    assign bubble_select_i_llvm_fpga_mem_lm83_triangular30_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm83_triangular30_q[31:0]);

    // i_sub10_triangular32(SUB,92)@115
    assign i_sub10_triangular32_a = {1'b0, bubble_select_i_llvm_fpga_mem_lm83_triangular30_b};
    assign i_sub10_triangular32_b = {1'b0, bgTrunc_i_mul6_triangular31_sel_x_b};
    assign i_sub10_triangular32_o = $unsigned(i_sub10_triangular32_a) - $unsigned(i_sub10_triangular32_b);
    assign i_sub10_triangular32_q = i_sub10_triangular32_o[32:0];

    // bgTrunc_i_sub10_triangular32_sel_x(BITSELECT,16)@115
    assign bgTrunc_i_sub10_triangular32_sel_x_b = $unsigned(i_sub10_triangular32_q[31:0]);

    // SE_out_coalesced_delay_2_fifo(STALLENABLE,673)
    // Valid signal propagation
    assign SE_out_coalesced_delay_2_fifo_V0 = SE_out_coalesced_delay_2_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_2_fifo_backStall = i_llvm_fpga_mem_memdep_triangular33_out_o_stall | ~ (SE_out_coalesced_delay_2_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_2_fifo_and0 = coalesced_delay_2_fifo_valid_out;
    assign SE_out_coalesced_delay_2_fifo_and1 = SE_i_mul6_triangular31_sums_result_add_0_0_p2_of_2_V0 & SE_out_coalesced_delay_2_fifo_and0;
    assign SE_out_coalesced_delay_2_fifo_and2 = SE_redist11_i_mul6_triangular31_sums_result_add_0_0_p1_of_2_q_1_0_V0 & SE_out_coalesced_delay_2_fifo_and1;
    assign SE_out_coalesced_delay_2_fifo_wireValid = i_llvm_fpga_mem_lm83_triangular30_out_o_valid & SE_out_coalesced_delay_2_fifo_and2;

    // bubble_join_coalesced_delay_2_fifo(BITJOIN,502)
    assign bubble_join_coalesced_delay_2_fifo_q = coalesced_delay_2_fifo_data_out;

    // bubble_select_coalesced_delay_2_fifo(BITSELECT,503)
    assign bubble_select_coalesced_delay_2_fifo_b = $unsigned(bubble_join_coalesced_delay_2_fifo_q[64:0]);

    // sel_for_coalesced_delay_2(BITSELECT,383)
    assign sel_for_coalesced_delay_2_b = $unsigned(bubble_select_coalesced_delay_2_fifo_b[63:0]);
    assign sel_for_coalesced_delay_2_c = $unsigned(bubble_select_coalesced_delay_2_fifo_b[64:64]);

    // i_llvm_fpga_mem_memdep_triangular33(BLACKBOX,73)@115
    // in in_i_stall@20000000
    // out out_lsu_memdep_o_active@20000000
    // out out_memdep_triangular_avm_address@20000000
    // out out_memdep_triangular_avm_burstcount@20000000
    // out out_memdep_triangular_avm_byteenable@20000000
    // out out_memdep_triangular_avm_enable@20000000
    // out out_memdep_triangular_avm_read@20000000
    // out out_memdep_triangular_avm_write@20000000
    // out out_memdep_triangular_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@146
    // out out_o_writeack@146
    triangular_i_llvm_fpga_mem_memdep_0 thei_llvm_fpga_mem_memdep_triangular33 (
        .in_flush(in_flush),
        .in_i_address(sel_for_coalesced_delay_2_b),
        .in_i_predicate(sel_for_coalesced_delay_2_c),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_triangular33_backStall),
        .in_i_valid(SE_out_coalesced_delay_2_fifo_V0),
        .in_i_writedata(bgTrunc_i_sub10_triangular32_sel_x_b),
        .in_memdep_triangular_avm_readdata(in_memdep_triangular_avm_readdata),
        .in_memdep_triangular_avm_readdatavalid(in_memdep_triangular_avm_readdatavalid),
        .in_memdep_triangular_avm_waitrequest(in_memdep_triangular_avm_waitrequest),
        .in_memdep_triangular_avm_writeack(in_memdep_triangular_avm_writeack),
        .out_lsu_memdep_o_active(i_llvm_fpga_mem_memdep_triangular33_out_lsu_memdep_o_active),
        .out_memdep_triangular_avm_address(i_llvm_fpga_mem_memdep_triangular33_out_memdep_triangular_avm_address),
        .out_memdep_triangular_avm_burstcount(i_llvm_fpga_mem_memdep_triangular33_out_memdep_triangular_avm_burstcount),
        .out_memdep_triangular_avm_byteenable(i_llvm_fpga_mem_memdep_triangular33_out_memdep_triangular_avm_byteenable),
        .out_memdep_triangular_avm_enable(i_llvm_fpga_mem_memdep_triangular33_out_memdep_triangular_avm_enable),
        .out_memdep_triangular_avm_read(i_llvm_fpga_mem_memdep_triangular33_out_memdep_triangular_avm_read),
        .out_memdep_triangular_avm_write(i_llvm_fpga_mem_memdep_triangular33_out_memdep_triangular_avm_write),
        .out_memdep_triangular_avm_writedata(i_llvm_fpga_mem_memdep_triangular33_out_memdep_triangular_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_triangular33_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_triangular33_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_triangular33_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_memdep_triangular33(STALLENABLE,530)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_memdep_triangular33_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_triangular33_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memdep_triangular33_fromReg0 <= SE_out_i_llvm_fpga_mem_memdep_triangular33_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memdep_triangular33_fromReg1 <= SE_out_i_llvm_fpga_mem_memdep_triangular33_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memdep_triangular33_consumed0 = (~ (SE_out_coalesced_delay_1_fifo_backStall) & SE_out_i_llvm_fpga_mem_memdep_triangular33_wireValid) | SE_out_i_llvm_fpga_mem_memdep_triangular33_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memdep_triangular33_consumed1 = (~ (SE_out_redist27_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_74_fifo_backStall) & SE_out_i_llvm_fpga_mem_memdep_triangular33_wireValid) | SE_out_i_llvm_fpga_mem_memdep_triangular33_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memdep_triangular33_StallValid = SE_out_i_llvm_fpga_mem_memdep_triangular33_backStall & SE_out_i_llvm_fpga_mem_memdep_triangular33_wireValid;
    assign SE_out_i_llvm_fpga_mem_memdep_triangular33_toReg0 = SE_out_i_llvm_fpga_mem_memdep_triangular33_StallValid & SE_out_i_llvm_fpga_mem_memdep_triangular33_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_triangular33_toReg1 = SE_out_i_llvm_fpga_mem_memdep_triangular33_StallValid & SE_out_i_llvm_fpga_mem_memdep_triangular33_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_triangular33_or0 = SE_out_i_llvm_fpga_mem_memdep_triangular33_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_triangular33_wireStall = ~ (SE_out_i_llvm_fpga_mem_memdep_triangular33_consumed1 & SE_out_i_llvm_fpga_mem_memdep_triangular33_or0);
    assign SE_out_i_llvm_fpga_mem_memdep_triangular33_backStall = SE_out_i_llvm_fpga_mem_memdep_triangular33_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_triangular33_V0 = SE_out_i_llvm_fpga_mem_memdep_triangular33_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_triangular33_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memdep_triangular33_V1 = SE_out_i_llvm_fpga_mem_memdep_triangular33_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_triangular33_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_triangular33_wireValid = i_llvm_fpga_mem_memdep_triangular33_out_o_valid;

    // SE_out_coalesced_delay_1_fifo(STALLENABLE,671)
    // Valid signal propagation
    assign SE_out_coalesced_delay_1_fifo_V0 = SE_out_coalesced_delay_1_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_1_fifo_backStall = in_stall_in | ~ (SE_out_coalesced_delay_1_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_1_fifo_and0 = coalesced_delay_1_fifo_valid_out;
    assign SE_out_coalesced_delay_1_fifo_wireValid = SE_out_i_llvm_fpga_mem_memdep_triangular33_V0 & SE_out_coalesced_delay_1_fifo_and0;

    // coalesced_delay_1_fifo(STALLFIFO,440)
    assign coalesced_delay_1_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_V4;
    assign coalesced_delay_1_fifo_stall_in = SE_out_coalesced_delay_1_fifo_backStall;
    assign coalesced_delay_1_fifo_data_in = join_for_coalesced_delay_1_q;
    assign coalesced_delay_1_fifo_valid_in_bitsignaltemp = coalesced_delay_1_fifo_valid_in[0];
    assign coalesced_delay_1_fifo_stall_in_bitsignaltemp = coalesced_delay_1_fifo_stall_in[0];
    assign coalesced_delay_1_fifo_valid_out[0] = coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_1_fifo_stall_out[0] = coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(75),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(35),
        .IMPL("ram")
    ) thecoalesced_delay_1_fifo (
        .valid_in(coalesced_delay_1_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_1_fifo_stall_in_bitsignaltemp),
        .data_in(join_for_coalesced_delay_1_q),
        .valid_out(coalesced_delay_1_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_1_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_1_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_2_reg(STALLFIFO,761)
    assign bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_2_reg_valid_in = SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_V1;
    assign bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_2_reg_stall_in = SE_out_bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_2_backStall;
    assign bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_2_reg_valid_in_bitsignaltemp = bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_2_reg_valid_in[0];
    assign bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_2_reg_stall_in_bitsignaltemp = bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_2_reg_stall_in[0];
    assign bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_2_reg_valid_out[0] = bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_2_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_2_reg_stall_out[0] = bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_2_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(3),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_2_reg (
        .valid_in(bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_2_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_2_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_2_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_2_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_1_reg(STALLFIFO,760)
    assign bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_1_reg_valid_in = SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_V0;
    assign bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_1_reg_stall_in = SE_out_bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_1_backStall;
    assign bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_1_reg_valid_in_bitsignaltemp = bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_1_reg_valid_in[0];
    assign bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_1_reg_stall_in_bitsignaltemp = bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_1_reg_stall_in[0];
    assign bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_1_reg_valid_out[0] = bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_1_reg_stall_out[0] = bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(4),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_1_reg (
        .valid_in(bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x(STALLENABLE,512)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_fromReg2 <= '0;
            SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_fromReg3 <= '0;
            SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_fromReg4 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_toReg2;
            // Successor 3
            SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_fromReg3 <= SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_toReg3;
            // Successor 4
            SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_fromReg4 <= SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_toReg4;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_consumed0 = (~ (bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_1_reg_stall_out) & SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_consumed1 = (~ (bubble_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_2_reg_stall_out) & SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_consumed2 = (~ (SE_i_first_cleanup_xor_or_triangular20_backStall) & SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_fromReg2;
    assign SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_consumed3 = (~ (i_llvm_fpga_pop_i32_k_032_pop17_triangular7_out_stall_out) & SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_fromReg3;
    assign SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_consumed4 = (~ (coalesced_delay_1_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_fromReg4;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_toReg2 = SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_consumed2;
    assign SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_toReg3 = SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_consumed3;
    assign SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_toReg4 = SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_consumed4;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_or1 = SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_or0;
    assign SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_or2 = SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_consumed2 & SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_or1;
    assign SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_or3 = SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_consumed3 & SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_or2;
    assign SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_consumed4 & SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_or3);
    assign SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_V2 = SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_fromReg2);
    assign SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_V3 = SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_fromReg3);
    assign SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_V4 = SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_fromReg4);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_wireValid = i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_o_valid;

    // bubble_join_triangular_B4_merge_reg_aunroll_x(BITJOIN,448)
    assign bubble_join_triangular_B4_merge_reg_aunroll_x_q = {triangular_B4_merge_reg_aunroll_x_out_data_out_12_tpl, triangular_B4_merge_reg_aunroll_x_out_data_out_11_tpl, triangular_B4_merge_reg_aunroll_x_out_data_out_10_tpl, triangular_B4_merge_reg_aunroll_x_out_data_out_9_tpl, triangular_B4_merge_reg_aunroll_x_out_data_out_8_tpl, triangular_B4_merge_reg_aunroll_x_out_data_out_7_tpl, triangular_B4_merge_reg_aunroll_x_out_data_out_6_tpl, triangular_B4_merge_reg_aunroll_x_out_data_out_5_tpl, triangular_B4_merge_reg_aunroll_x_out_data_out_4_tpl, triangular_B4_merge_reg_aunroll_x_out_data_out_3_tpl, triangular_B4_merge_reg_aunroll_x_out_data_out_2_tpl, triangular_B4_merge_reg_aunroll_x_out_data_out_1_tpl, triangular_B4_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_triangular_B4_merge_reg_aunroll_x(BITSELECT,449)
    assign bubble_select_triangular_B4_merge_reg_aunroll_x_b = $unsigned(bubble_join_triangular_B4_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_triangular_B4_merge_reg_aunroll_x_c = $unsigned(bubble_join_triangular_B4_merge_reg_aunroll_x_q[32:1]);
    assign bubble_select_triangular_B4_merge_reg_aunroll_x_d = $unsigned(bubble_join_triangular_B4_merge_reg_aunroll_x_q[64:33]);
    assign bubble_select_triangular_B4_merge_reg_aunroll_x_e = $unsigned(bubble_join_triangular_B4_merge_reg_aunroll_x_q[97:65]);
    assign bubble_select_triangular_B4_merge_reg_aunroll_x_f = $unsigned(bubble_join_triangular_B4_merge_reg_aunroll_x_q[129:98]);
    assign bubble_select_triangular_B4_merge_reg_aunroll_x_g = $unsigned(bubble_join_triangular_B4_merge_reg_aunroll_x_q[161:130]);
    assign bubble_select_triangular_B4_merge_reg_aunroll_x_h = $unsigned(bubble_join_triangular_B4_merge_reg_aunroll_x_q[162:162]);
    assign bubble_select_triangular_B4_merge_reg_aunroll_x_i = $unsigned(bubble_join_triangular_B4_merge_reg_aunroll_x_q[226:163]);
    assign bubble_select_triangular_B4_merge_reg_aunroll_x_j = $unsigned(bubble_join_triangular_B4_merge_reg_aunroll_x_q[227:227]);
    assign bubble_select_triangular_B4_merge_reg_aunroll_x_k = $unsigned(bubble_join_triangular_B4_merge_reg_aunroll_x_q[228:228]);
    assign bubble_select_triangular_B4_merge_reg_aunroll_x_l = $unsigned(bubble_join_triangular_B4_merge_reg_aunroll_x_q[229:229]);
    assign bubble_select_triangular_B4_merge_reg_aunroll_x_m = $unsigned(bubble_join_triangular_B4_merge_reg_aunroll_x_q[261:230]);
    assign bubble_select_triangular_B4_merge_reg_aunroll_x_n = $unsigned(bubble_join_triangular_B4_merge_reg_aunroll_x_q[293:262]);

    // i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x(BLACKBOX,39)@1
    // in in_i_stall@20000000
    // out out_c0_exit89_0_tpl@72
    // out out_c0_exit89_1_tpl@72
    // out out_c0_exit89_2_tpl@72
    // out out_c0_exit89_3_tpl@72
    // out out_c0_exit89_4_tpl@72
    // out out_c0_exit89_5_tpl@72
    // out out_c0_exit89_6_tpl@72
    // out out_c0_exit89_7_tpl@72
    // out out_c0_exit89_8_tpl@72
    // out out_c0_exit89_9_tpl@72
    // out out_c0_exit89_10_tpl@72
    // out out_c0_exit89_11_tpl@72
    // out out_c0_exit89_12_tpl@72
    // out out_c0_exit89_13_tpl@72
    // out out_c0_exit89_14_tpl@72
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_triangular6_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_triangular6_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@72
    // out out_pipeline_valid_out@20000000
    triangular_i_sfc_s_c0_in_for_body4_s_c0_enter738_triangular1 thei_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x (
        .in_c0_eni13_0_tpl(GND_q),
        .in_c0_eni13_1_tpl(bubble_select_triangular_B4_merge_reg_aunroll_x_b),
        .in_c0_eni13_2_tpl(bubble_select_triangular_B4_merge_reg_aunroll_x_h),
        .in_c0_eni13_3_tpl(bubble_select_triangular_B4_merge_reg_aunroll_x_l),
        .in_c0_eni13_4_tpl(bubble_select_triangular_B4_merge_reg_aunroll_x_e),
        .in_c0_eni13_5_tpl(bubble_select_triangular_B4_merge_reg_aunroll_x_n),
        .in_c0_eni13_6_tpl(bubble_select_triangular_B4_merge_reg_aunroll_x_k),
        .in_c0_eni13_7_tpl(bubble_select_triangular_B4_merge_reg_aunroll_x_m),
        .in_c0_eni13_8_tpl(bubble_select_triangular_B4_merge_reg_aunroll_x_j),
        .in_c0_eni13_9_tpl(bubble_select_triangular_B4_merge_reg_aunroll_x_c),
        .in_c0_eni13_10_tpl(bubble_select_triangular_B4_merge_reg_aunroll_x_d),
        .in_c0_eni13_11_tpl(bubble_select_triangular_B4_merge_reg_aunroll_x_f),
        .in_c0_eni13_12_tpl(bubble_select_triangular_B4_merge_reg_aunroll_x_g),
        .in_c0_eni13_13_tpl(bubble_select_triangular_B4_merge_reg_aunroll_x_i),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_backStall),
        .in_i_valid(SE_out_triangular_B4_merge_reg_aunroll_x_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .out_c0_exit89_0_tpl(),
        .out_c0_exit89_1_tpl(i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_1_tpl),
        .out_c0_exit89_2_tpl(i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl),
        .out_c0_exit89_3_tpl(i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_3_tpl),
        .out_c0_exit89_4_tpl(i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_4_tpl),
        .out_c0_exit89_5_tpl(i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_5_tpl),
        .out_c0_exit89_6_tpl(i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_6_tpl),
        .out_c0_exit89_7_tpl(i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_7_tpl),
        .out_c0_exit89_8_tpl(i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_8_tpl),
        .out_c0_exit89_9_tpl(i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_9_tpl),
        .out_c0_exit89_10_tpl(),
        .out_c0_exit89_11_tpl(),
        .out_c0_exit89_12_tpl(i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_12_tpl),
        .out_c0_exit89_13_tpl(i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_13_tpl),
        .out_c0_exit89_14_tpl(i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_14_tpl),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_triangular6_exiting_stall_out(i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_triangular6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_triangular6_exiting_valid_out(i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_triangular6_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_pipeline_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x(BITJOIN,443)
    assign bubble_join_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_q = {i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_14_tpl, i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_13_tpl, i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_12_tpl, i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_9_tpl, i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_8_tpl, i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_7_tpl, i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_6_tpl, i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_5_tpl, i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_4_tpl, i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_3_tpl, i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl, i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x(BITSELECT,444)
    assign bubble_select_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_q[1:1]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_q[2:2]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_q[3:3]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_q[4:4]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_q[5:5]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_q[37:6]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_q[38:38]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_q[39:39]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_q[71:40]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_l = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_q[103:72]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_m = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_q[167:104]);

    // redist24_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_1_0(REG,412)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_i_first_cleanup_xor_or_triangular20_backEN == 1'b1)
        begin
            redist24_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_1_0_q <= $unsigned(bubble_select_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_c);
        end
    end

    // i_llvm_fpga_push_i32_k_032_push17_triangular19(BLACKBOX,80)@73
    // in in_stall_in@20000000
    // out out_data_out@74
    // out out_feedback_out_17@20000000
    // out out_feedback_valid_out_17@20000000
    // out out_stall_out@20000000
    // out out_valid_out@74
    triangular_i_llvm_fpga_push_i32_k_032_push17_0 thei_llvm_fpga_push_i32_k_032_push17_triangular19 (
        .in_c0_exe291(redist24_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_1_0_q),
        .in_data_in(bgTrunc_i_dec_triangular13_sel_x_b),
        .in_feedback_stall_in_17(i_llvm_fpga_pop_i32_k_032_pop17_triangular7_out_feedback_stall_out_17),
        .in_stall_in(SE_out_i_llvm_fpga_push_i32_k_032_push17_triangular19_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i32_k_032_push17_triangular19_V0),
        .out_data_out(),
        .out_feedback_out_17(i_llvm_fpga_push_i32_k_032_push17_triangular19_out_feedback_out_17),
        .out_feedback_valid_out_17(i_llvm_fpga_push_i32_k_032_push17_triangular19_out_feedback_valid_out_17),
        .out_stall_out(i_llvm_fpga_push_i32_k_032_push17_triangular19_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_k_032_push17_triangular19_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_first_cleanup_xor_or_triangular20(STALLENABLE,518)
    // Valid signal propagation
    assign SE_i_first_cleanup_xor_or_triangular20_V0 = SE_i_first_cleanup_xor_or_triangular20_R_v_0;
    assign SE_i_first_cleanup_xor_or_triangular20_V1 = SE_i_first_cleanup_xor_or_triangular20_R_v_1;
    // Stall signal propagation
    assign SE_i_first_cleanup_xor_or_triangular20_s_tv_0 = SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_backStall & SE_i_first_cleanup_xor_or_triangular20_R_v_0;
    assign SE_i_first_cleanup_xor_or_triangular20_s_tv_1 = SE_in_i_llvm_fpga_push_i32_k_032_push17_triangular19_backStall & SE_i_first_cleanup_xor_or_triangular20_R_v_1;
    // Backward Enable generation
    assign SE_i_first_cleanup_xor_or_triangular20_or0 = SE_i_first_cleanup_xor_or_triangular20_s_tv_0;
    assign SE_i_first_cleanup_xor_or_triangular20_backEN = ~ (SE_i_first_cleanup_xor_or_triangular20_s_tv_1 | SE_i_first_cleanup_xor_or_triangular20_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_first_cleanup_xor_or_triangular20_v_s_0 = SE_i_first_cleanup_xor_or_triangular20_backEN & SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_V2;
    // Backward Stall generation
    assign SE_i_first_cleanup_xor_or_triangular20_backStall = ~ (SE_i_first_cleanup_xor_or_triangular20_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_first_cleanup_xor_or_triangular20_R_v_0 <= 1'b0;
            SE_i_first_cleanup_xor_or_triangular20_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_first_cleanup_xor_or_triangular20_backEN == 1'b0)
            begin
                SE_i_first_cleanup_xor_or_triangular20_R_v_0 <= SE_i_first_cleanup_xor_or_triangular20_R_v_0 & SE_i_first_cleanup_xor_or_triangular20_s_tv_0;
            end
            else
            begin
                SE_i_first_cleanup_xor_or_triangular20_R_v_0 <= SE_i_first_cleanup_xor_or_triangular20_v_s_0;
            end

            if (SE_i_first_cleanup_xor_or_triangular20_backEN == 1'b0)
            begin
                SE_i_first_cleanup_xor_or_triangular20_R_v_1 <= SE_i_first_cleanup_xor_or_triangular20_R_v_1 & SE_i_first_cleanup_xor_or_triangular20_s_tv_1;
            end
            else
            begin
                SE_i_first_cleanup_xor_or_triangular20_R_v_1 <= SE_i_first_cleanup_xor_or_triangular20_v_s_0;
            end

        end
    end

    // SE_in_i_llvm_fpga_push_i32_k_032_push17_triangular19(STALLENABLE,543)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i32_k_032_push17_triangular19_V0 = SE_in_i_llvm_fpga_push_i32_k_032_push17_triangular19_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i32_k_032_push17_triangular19_backStall = i_llvm_fpga_push_i32_k_032_push17_triangular19_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i32_k_032_push17_triangular19_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i32_k_032_push17_triangular19_and0 = SE_out_i_llvm_fpga_pop_i32_k_032_pop17_triangular7_V0;
    assign SE_in_i_llvm_fpga_push_i32_k_032_push17_triangular19_wireValid = SE_i_first_cleanup_xor_or_triangular20_V1 & SE_in_i_llvm_fpga_push_i32_k_032_push17_triangular19_and0;

    // i_llvm_fpga_pop_i32_k_032_pop17_triangular7(BLACKBOX,76)@72
    // in in_stall_in@20000000
    // out out_data_out@73
    // out out_feedback_stall_out_17@20000000
    // out out_stall_out@20000000
    // out out_valid_out@73
    triangular_i_llvm_fpga_pop_i32_k_032_pop17_0 thei_llvm_fpga_pop_i32_k_032_pop17_triangular7 (
        .in_data_in(bubble_select_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_l),
        .in_dir(bubble_select_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_j),
        .in_feedback_in_17(i_llvm_fpga_push_i32_k_032_push17_triangular19_out_feedback_out_17),
        .in_feedback_valid_in_17(i_llvm_fpga_push_i32_k_032_push17_triangular19_out_feedback_valid_out_17),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_k_032_pop17_triangular7_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_V3),
        .out_data_out(i_llvm_fpga_pop_i32_k_032_pop17_triangular7_out_data_out),
        .out_feedback_stall_out_17(i_llvm_fpga_pop_i32_k_032_pop17_triangular7_out_feedback_stall_out_17),
        .out_stall_out(i_llvm_fpga_pop_i32_k_032_pop17_triangular7_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_k_032_pop17_triangular7_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i32_k_032_pop17_triangular7(STALLENABLE,536)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i32_k_032_pop17_triangular7_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i32_k_032_pop17_triangular7_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i32_k_032_pop17_triangular7_fromReg0 <= SE_out_i_llvm_fpga_pop_i32_k_032_pop17_triangular7_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i32_k_032_pop17_triangular7_fromReg1 <= SE_out_i_llvm_fpga_pop_i32_k_032_pop17_triangular7_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i32_k_032_pop17_triangular7_consumed0 = (~ (SE_in_i_llvm_fpga_push_i32_k_032_push17_triangular19_backStall) & SE_out_i_llvm_fpga_pop_i32_k_032_pop17_triangular7_wireValid) | SE_out_i_llvm_fpga_pop_i32_k_032_pop17_triangular7_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i32_k_032_pop17_triangular7_consumed1 = (~ (SE_redist17_i_unnamed_triangular12_vt_select_31_b_1_0_backStall) & SE_out_i_llvm_fpga_pop_i32_k_032_pop17_triangular7_wireValid) | SE_out_i_llvm_fpga_pop_i32_k_032_pop17_triangular7_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i32_k_032_pop17_triangular7_StallValid = SE_out_i_llvm_fpga_pop_i32_k_032_pop17_triangular7_backStall & SE_out_i_llvm_fpga_pop_i32_k_032_pop17_triangular7_wireValid;
    assign SE_out_i_llvm_fpga_pop_i32_k_032_pop17_triangular7_toReg0 = SE_out_i_llvm_fpga_pop_i32_k_032_pop17_triangular7_StallValid & SE_out_i_llvm_fpga_pop_i32_k_032_pop17_triangular7_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_k_032_pop17_triangular7_toReg1 = SE_out_i_llvm_fpga_pop_i32_k_032_pop17_triangular7_StallValid & SE_out_i_llvm_fpga_pop_i32_k_032_pop17_triangular7_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i32_k_032_pop17_triangular7_or0 = SE_out_i_llvm_fpga_pop_i32_k_032_pop17_triangular7_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_k_032_pop17_triangular7_wireStall = ~ (SE_out_i_llvm_fpga_pop_i32_k_032_pop17_triangular7_consumed1 & SE_out_i_llvm_fpga_pop_i32_k_032_pop17_triangular7_or0);
    assign SE_out_i_llvm_fpga_pop_i32_k_032_pop17_triangular7_backStall = SE_out_i_llvm_fpga_pop_i32_k_032_pop17_triangular7_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i32_k_032_pop17_triangular7_V0 = SE_out_i_llvm_fpga_pop_i32_k_032_pop17_triangular7_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_k_032_pop17_triangular7_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i32_k_032_pop17_triangular7_V1 = SE_out_i_llvm_fpga_pop_i32_k_032_pop17_triangular7_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_k_032_pop17_triangular7_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i32_k_032_pop17_triangular7_wireValid = i_llvm_fpga_pop_i32_k_032_pop17_triangular7_out_valid_out;

    // SE_redist17_i_unnamed_triangular12_vt_select_31_b_1_0(STALLENABLE,623)
    // Valid signal propagation
    assign SE_redist17_i_unnamed_triangular12_vt_select_31_b_1_0_V0 = SE_redist17_i_unnamed_triangular12_vt_select_31_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist17_i_unnamed_triangular12_vt_select_31_b_1_0_s_tv_0 = SE_redist18_i_mul_add16_triangular21_vt_select_31_b_1_0_backStall & SE_redist17_i_unnamed_triangular12_vt_select_31_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist17_i_unnamed_triangular12_vt_select_31_b_1_0_backEN = ~ (SE_redist17_i_unnamed_triangular12_vt_select_31_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist17_i_unnamed_triangular12_vt_select_31_b_1_0_v_s_0 = SE_redist17_i_unnamed_triangular12_vt_select_31_b_1_0_backEN & SE_out_i_llvm_fpga_pop_i32_k_032_pop17_triangular7_V1;
    // Backward Stall generation
    assign SE_redist17_i_unnamed_triangular12_vt_select_31_b_1_0_backStall = ~ (SE_redist17_i_unnamed_triangular12_vt_select_31_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist17_i_unnamed_triangular12_vt_select_31_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist17_i_unnamed_triangular12_vt_select_31_b_1_0_backEN == 1'b0)
            begin
                SE_redist17_i_unnamed_triangular12_vt_select_31_b_1_0_R_v_0 <= SE_redist17_i_unnamed_triangular12_vt_select_31_b_1_0_R_v_0 & SE_redist17_i_unnamed_triangular12_vt_select_31_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist17_i_unnamed_triangular12_vt_select_31_b_1_0_R_v_0 <= SE_redist17_i_unnamed_triangular12_vt_select_31_b_1_0_v_s_0;
            end

        end
    end

    // leftShiftStage1Idx1Rng4_uid184_dupName_1_i_unnamed_triangular0_shift_x(BITSELECT,183)@73
    assign leftShiftStage1Idx1Rng4_uid184_dupName_1_i_unnamed_triangular0_shift_x_in = leftShiftStage0_uid182_dupName_1_i_unnamed_triangular0_shift_x_q[27:0];
    assign leftShiftStage1Idx1Rng4_uid184_dupName_1_i_unnamed_triangular0_shift_x_b = leftShiftStage1Idx1Rng4_uid184_dupName_1_i_unnamed_triangular0_shift_x_in[27:0];

    // leftShiftStage1Idx1Pad4_uid170_dupName_0_i_unnamed_triangular0_shift_x(CONSTANT,169)
    assign leftShiftStage1Idx1Pad4_uid170_dupName_0_i_unnamed_triangular0_shift_x_q = $unsigned(4'b0000);

    // leftShiftStage1Idx1_uid185_dupName_1_i_unnamed_triangular0_shift_x(BITJOIN,184)@73
    assign leftShiftStage1Idx1_uid185_dupName_1_i_unnamed_triangular0_shift_x_q = {leftShiftStage1Idx1Rng4_uid184_dupName_1_i_unnamed_triangular0_shift_x_b, leftShiftStage1Idx1Pad4_uid170_dupName_0_i_unnamed_triangular0_shift_x_q};

    // leftShiftStage0Idx1Rng2_uid179_dupName_1_i_unnamed_triangular0_shift_x(BITSELECT,178)@73
    assign leftShiftStage0Idx1Rng2_uid179_dupName_1_i_unnamed_triangular0_shift_x_in = bubble_select_i_llvm_fpga_pop_i32_k_032_pop17_triangular7_b[29:0];
    assign leftShiftStage0Idx1Rng2_uid179_dupName_1_i_unnamed_triangular0_shift_x_b = leftShiftStage0Idx1Rng2_uid179_dupName_1_i_unnamed_triangular0_shift_x_in[29:0];

    // leftShiftStage0Idx1_uid180_dupName_1_i_unnamed_triangular0_shift_x(BITJOIN,179)@73
    assign leftShiftStage0Idx1_uid180_dupName_1_i_unnamed_triangular0_shift_x_q = {leftShiftStage0Idx1Rng2_uid179_dupName_1_i_unnamed_triangular0_shift_x_b, i_mptr_bitcast_index38_triangular0_c_i2_01_x_q};

    // leftShiftStage0_uid182_dupName_1_i_unnamed_triangular0_shift_x(MUX,181)@73
    assign leftShiftStage0_uid182_dupName_1_i_unnamed_triangular0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid182_dupName_1_i_unnamed_triangular0_shift_x_s or bubble_select_i_llvm_fpga_pop_i32_k_032_pop17_triangular7_b or leftShiftStage0Idx1_uid180_dupName_1_i_unnamed_triangular0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid182_dupName_1_i_unnamed_triangular0_shift_x_s)
            1'b0 : leftShiftStage0_uid182_dupName_1_i_unnamed_triangular0_shift_x_q = bubble_select_i_llvm_fpga_pop_i32_k_032_pop17_triangular7_b;
            1'b1 : leftShiftStage0_uid182_dupName_1_i_unnamed_triangular0_shift_x_q = leftShiftStage0Idx1_uid180_dupName_1_i_unnamed_triangular0_shift_x_q;
            default : leftShiftStage0_uid182_dupName_1_i_unnamed_triangular0_shift_x_q = 32'b0;
        endcase
    end

    // leftShiftStage1_uid187_dupName_1_i_unnamed_triangular0_shift_x(MUX,186)@73
    assign leftShiftStage1_uid187_dupName_1_i_unnamed_triangular0_shift_x_s = VCC_q;
    always @(leftShiftStage1_uid187_dupName_1_i_unnamed_triangular0_shift_x_s or leftShiftStage0_uid182_dupName_1_i_unnamed_triangular0_shift_x_q or leftShiftStage1Idx1_uid185_dupName_1_i_unnamed_triangular0_shift_x_q)
    begin
        unique case (leftShiftStage1_uid187_dupName_1_i_unnamed_triangular0_shift_x_s)
            1'b0 : leftShiftStage1_uid187_dupName_1_i_unnamed_triangular0_shift_x_q = leftShiftStage0_uid182_dupName_1_i_unnamed_triangular0_shift_x_q;
            1'b1 : leftShiftStage1_uid187_dupName_1_i_unnamed_triangular0_shift_x_q = leftShiftStage1Idx1_uid185_dupName_1_i_unnamed_triangular0_shift_x_q;
            default : leftShiftStage1_uid187_dupName_1_i_unnamed_triangular0_shift_x_q = 32'b0;
        endcase
    end

    // i_unnamed_triangular12_vt_select_31(BITSELECT,101)@73
    assign i_unnamed_triangular12_vt_select_31_b = leftShiftStage1_uid187_dupName_1_i_unnamed_triangular0_shift_x_q[31:6];

    // redist17_i_unnamed_triangular12_vt_select_31_b_1_0(REG,394)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_unnamed_triangular12_vt_select_31_b_1_0_q <= $unsigned(26'b00000000000000000000000000);
        end
        else if (SE_redist17_i_unnamed_triangular12_vt_select_31_b_1_0_backEN == 1'b1)
        begin
            redist17_i_unnamed_triangular12_vt_select_31_b_1_0_q <= $unsigned(i_unnamed_triangular12_vt_select_31_b);
        end
    end

    // i_unnamed_triangular12_vt_const_5(CONSTANT,99)
    assign i_unnamed_triangular12_vt_const_5_q = $unsigned(6'b000000);

    // i_unnamed_triangular12_vt_join(BITJOIN,100)@74
    assign i_unnamed_triangular12_vt_join_q = {redist17_i_unnamed_triangular12_vt_select_31_b_1_0_q, i_unnamed_triangular12_vt_const_5_q};

    // leftShiftStage1Idx1Rng4_uid171_dupName_0_i_unnamed_triangular0_shift_x(BITSELECT,170)@73
    assign leftShiftStage1Idx1Rng4_uid171_dupName_0_i_unnamed_triangular0_shift_x_in = leftShiftStage0_uid169_dupName_0_i_unnamed_triangular0_shift_x_q[27:0];
    assign leftShiftStage1Idx1Rng4_uid171_dupName_0_i_unnamed_triangular0_shift_x_b = leftShiftStage1Idx1Rng4_uid171_dupName_0_i_unnamed_triangular0_shift_x_in[27:0];

    // leftShiftStage1Idx1_uid172_dupName_0_i_unnamed_triangular0_shift_x(BITJOIN,171)@73
    assign leftShiftStage1Idx1_uid172_dupName_0_i_unnamed_triangular0_shift_x_q = {leftShiftStage1Idx1Rng4_uid171_dupName_0_i_unnamed_triangular0_shift_x_b, leftShiftStage1Idx1Pad4_uid170_dupName_0_i_unnamed_triangular0_shift_x_q};

    // leftShiftStage0Idx1Rng1_uid166_dupName_0_i_unnamed_triangular0_shift_x(BITSELECT,165)@73
    assign leftShiftStage0Idx1Rng1_uid166_dupName_0_i_unnamed_triangular0_shift_x_in = bubble_select_i_llvm_fpga_pop_i32_k_032_pop17_triangular7_b[30:0];
    assign leftShiftStage0Idx1Rng1_uid166_dupName_0_i_unnamed_triangular0_shift_x_b = leftShiftStage0Idx1Rng1_uid166_dupName_0_i_unnamed_triangular0_shift_x_in[30:0];

    // leftShiftStage0Idx1_uid167_dupName_0_i_unnamed_triangular0_shift_x(BITJOIN,166)@73
    assign leftShiftStage0Idx1_uid167_dupName_0_i_unnamed_triangular0_shift_x_q = {leftShiftStage0Idx1Rng1_uid166_dupName_0_i_unnamed_triangular0_shift_x_b, GND_q};

    // leftShiftStage0_uid169_dupName_0_i_unnamed_triangular0_shift_x(MUX,168)@73
    assign leftShiftStage0_uid169_dupName_0_i_unnamed_triangular0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid169_dupName_0_i_unnamed_triangular0_shift_x_s or bubble_select_i_llvm_fpga_pop_i32_k_032_pop17_triangular7_b or leftShiftStage0Idx1_uid167_dupName_0_i_unnamed_triangular0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid169_dupName_0_i_unnamed_triangular0_shift_x_s)
            1'b0 : leftShiftStage0_uid169_dupName_0_i_unnamed_triangular0_shift_x_q = bubble_select_i_llvm_fpga_pop_i32_k_032_pop17_triangular7_b;
            1'b1 : leftShiftStage0_uid169_dupName_0_i_unnamed_triangular0_shift_x_q = leftShiftStage0Idx1_uid167_dupName_0_i_unnamed_triangular0_shift_x_q;
            default : leftShiftStage0_uid169_dupName_0_i_unnamed_triangular0_shift_x_q = 32'b0;
        endcase
    end

    // leftShiftStage1_uid174_dupName_0_i_unnamed_triangular0_shift_x(MUX,173)@73
    assign leftShiftStage1_uid174_dupName_0_i_unnamed_triangular0_shift_x_s = VCC_q;
    always @(leftShiftStage1_uid174_dupName_0_i_unnamed_triangular0_shift_x_s or leftShiftStage0_uid169_dupName_0_i_unnamed_triangular0_shift_x_q or leftShiftStage1Idx1_uid172_dupName_0_i_unnamed_triangular0_shift_x_q)
    begin
        unique case (leftShiftStage1_uid174_dupName_0_i_unnamed_triangular0_shift_x_s)
            1'b0 : leftShiftStage1_uid174_dupName_0_i_unnamed_triangular0_shift_x_q = leftShiftStage0_uid169_dupName_0_i_unnamed_triangular0_shift_x_q;
            1'b1 : leftShiftStage1_uid174_dupName_0_i_unnamed_triangular0_shift_x_q = leftShiftStage1Idx1_uid172_dupName_0_i_unnamed_triangular0_shift_x_q;
            default : leftShiftStage1_uid174_dupName_0_i_unnamed_triangular0_shift_x_q = 32'b0;
        endcase
    end

    // i_unnamed_triangular11_vt_select_31(BITSELECT,98)@73
    assign i_unnamed_triangular11_vt_select_31_b = leftShiftStage1_uid174_dupName_0_i_unnamed_triangular0_shift_x_q[31:5];

    // i_unnamed_triangular11_vt_const_4(CONSTANT,96)
    assign i_unnamed_triangular11_vt_const_4_q = $unsigned(5'b00000);

    // i_unnamed_triangular11_vt_join(BITJOIN,97)@73
    assign i_unnamed_triangular11_vt_join_q = {i_unnamed_triangular11_vt_select_31_b, i_unnamed_triangular11_vt_const_4_q};

    // i_unnamed_triangular10_vt_select_31(BITSELECT,95)@73
    assign i_unnamed_triangular10_vt_select_31_b = leftShiftStage0_uid182_dupName_1_i_unnamed_triangular0_shift_x_q[31:2];

    // i_unnamed_triangular10_vt_join(BITJOIN,94)@73
    assign i_unnamed_triangular10_vt_join_q = {i_unnamed_triangular10_vt_select_31_b, i_mptr_bitcast_index38_triangular0_c_i2_01_x_q};

    // i_mul_add14_triangular18(ADD,84)@73
    assign i_mul_add14_triangular18_a = {1'b0, i_unnamed_triangular10_vt_join_q};
    assign i_mul_add14_triangular18_b = {1'b0, i_unnamed_triangular11_vt_join_q};
    assign i_mul_add14_triangular18_o = $unsigned(i_mul_add14_triangular18_a) + $unsigned(i_mul_add14_triangular18_b);
    assign i_mul_add14_triangular18_q = i_mul_add14_triangular18_o[32:0];

    // bgTrunc_i_mul_add14_triangular18_sel_x(BITSELECT,14)@73
    assign bgTrunc_i_mul_add14_triangular18_sel_x_b = i_mul_add14_triangular18_q[31:0];

    // i_mul_add14_triangular18_vt_select_31(BITSELECT,87)@73
    assign i_mul_add14_triangular18_vt_select_31_b = bgTrunc_i_mul_add14_triangular18_sel_x_b[31:2];

    // redist19_i_mul_add14_triangular18_vt_select_31_b_1_0(REG,396)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_mul_add14_triangular18_vt_select_31_b_1_0_q <= $unsigned(30'b000000000000000000000000000000);
        end
        else if (SE_redist17_i_unnamed_triangular12_vt_select_31_b_1_0_backEN == 1'b1)
        begin
            redist19_i_mul_add14_triangular18_vt_select_31_b_1_0_q <= $unsigned(i_mul_add14_triangular18_vt_select_31_b);
        end
    end

    // i_mul_add14_triangular18_vt_join(BITJOIN,86)@74
    assign i_mul_add14_triangular18_vt_join_q = {redist19_i_mul_add14_triangular18_vt_select_31_b_1_0_q, i_mptr_bitcast_index38_triangular0_c_i2_01_x_q};

    // i_mul_add16_triangular21(ADD,88)@74
    assign i_mul_add16_triangular21_a = {1'b0, i_mul_add14_triangular18_vt_join_q};
    assign i_mul_add16_triangular21_b = {1'b0, i_unnamed_triangular12_vt_join_q};
    assign i_mul_add16_triangular21_o = $unsigned(i_mul_add16_triangular21_a) + $unsigned(i_mul_add16_triangular21_b);
    assign i_mul_add16_triangular21_q = i_mul_add16_triangular21_o[32:0];

    // bgTrunc_i_mul_add16_triangular21_sel_x(BITSELECT,15)@74
    assign bgTrunc_i_mul_add16_triangular21_sel_x_b = i_mul_add16_triangular21_q[31:0];

    // i_mul_add16_triangular21_vt_select_31(BITSELECT,91)@74
    assign i_mul_add16_triangular21_vt_select_31_b = bgTrunc_i_mul_add16_triangular21_sel_x_b[31:2];

    // redist18_i_mul_add16_triangular21_vt_select_31_b_1_0(REG,395)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_mul_add16_triangular21_vt_select_31_b_1_0_q <= $unsigned(30'b000000000000000000000000000000);
        end
        else if (SE_redist18_i_mul_add16_triangular21_vt_select_31_b_1_0_backEN == 1'b1)
        begin
            redist18_i_mul_add16_triangular21_vt_select_31_b_1_0_q <= $unsigned(i_mul_add16_triangular21_vt_select_31_b);
        end
    end

    // i_mptr_bitcast_index38_triangular0_c_i2_01_x(CONSTANT,30)
    assign i_mptr_bitcast_index38_triangular0_c_i2_01_x_q = $unsigned(2'b00);

    // i_mul_add16_triangular21_vt_join(BITJOIN,90)@75
    assign i_mul_add16_triangular21_vt_join_q = {redist18_i_mul_add16_triangular21_vt_select_31_b_1_0_q, i_mptr_bitcast_index38_triangular0_c_i2_01_x_q};

    // SE_redist18_i_mul_add16_triangular21_vt_select_31_b_1_0(STALLENABLE,624)
    // Valid signal propagation
    assign SE_redist18_i_mul_add16_triangular21_vt_select_31_b_1_0_V0 = SE_redist18_i_mul_add16_triangular21_vt_select_31_b_1_0_R_v_0;
    assign SE_redist18_i_mul_add16_triangular21_vt_select_31_b_1_0_V1 = SE_redist18_i_mul_add16_triangular21_vt_select_31_b_1_0_R_v_1;
    // Stall signal propagation
    assign SE_redist18_i_mul_add16_triangular21_vt_select_31_b_1_0_s_tv_0 = SR_SE_i_add8_triangular24_backStall & SE_redist18_i_mul_add16_triangular21_vt_select_31_b_1_0_R_v_0;
    assign SE_redist18_i_mul_add16_triangular21_vt_select_31_b_1_0_s_tv_1 = SR_SE_i_add_triangular23_backStall & SE_redist18_i_mul_add16_triangular21_vt_select_31_b_1_0_R_v_1;
    // Backward Enable generation
    assign SE_redist18_i_mul_add16_triangular21_vt_select_31_b_1_0_or0 = SE_redist18_i_mul_add16_triangular21_vt_select_31_b_1_0_s_tv_0;
    assign SE_redist18_i_mul_add16_triangular21_vt_select_31_b_1_0_backEN = ~ (SE_redist18_i_mul_add16_triangular21_vt_select_31_b_1_0_s_tv_1 | SE_redist18_i_mul_add16_triangular21_vt_select_31_b_1_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist18_i_mul_add16_triangular21_vt_select_31_b_1_0_v_s_0 = SE_redist18_i_mul_add16_triangular21_vt_select_31_b_1_0_backEN & SE_redist17_i_unnamed_triangular12_vt_select_31_b_1_0_V0;
    // Backward Stall generation
    assign SE_redist18_i_mul_add16_triangular21_vt_select_31_b_1_0_backStall = ~ (SE_redist18_i_mul_add16_triangular21_vt_select_31_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist18_i_mul_add16_triangular21_vt_select_31_b_1_0_R_v_0 <= 1'b0;
            SE_redist18_i_mul_add16_triangular21_vt_select_31_b_1_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist18_i_mul_add16_triangular21_vt_select_31_b_1_0_backEN == 1'b0)
            begin
                SE_redist18_i_mul_add16_triangular21_vt_select_31_b_1_0_R_v_0 <= SE_redist18_i_mul_add16_triangular21_vt_select_31_b_1_0_R_v_0 & SE_redist18_i_mul_add16_triangular21_vt_select_31_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist18_i_mul_add16_triangular21_vt_select_31_b_1_0_R_v_0 <= SE_redist18_i_mul_add16_triangular21_vt_select_31_b_1_0_v_s_0;
            end

            if (SE_redist18_i_mul_add16_triangular21_vt_select_31_b_1_0_backEN == 1'b0)
            begin
                SE_redist18_i_mul_add16_triangular21_vt_select_31_b_1_0_R_v_1 <= SE_redist18_i_mul_add16_triangular21_vt_select_31_b_1_0_R_v_1 & SE_redist18_i_mul_add16_triangular21_vt_select_31_b_1_0_s_tv_1;
            end
            else
            begin
                SE_redist18_i_mul_add16_triangular21_vt_select_31_b_1_0_R_v_1 <= SE_redist18_i_mul_add16_triangular21_vt_select_31_b_1_0_v_s_0;
            end

        end
    end

    // SE_i_add_triangular23(STALLENABLE,516)
    // Valid signal propagation
    assign SE_i_add_triangular23_V0 = SE_i_add_triangular23_R_v_0;
    assign SE_i_add_triangular23_V1 = SE_i_add_triangular23_R_v_1;
    // Stall signal propagation
    assign SE_i_add_triangular23_s_tv_0 = SE_redist1_i_mptr_bitcast_index40_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_0_backStall & SE_i_add_triangular23_R_v_0;
    assign SE_i_add_triangular23_s_tv_1 = SE_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_backStall & SE_i_add_triangular23_R_v_1;
    // Backward Enable generation
    assign SE_i_add_triangular23_or0 = SE_i_add_triangular23_s_tv_0;
    assign SE_i_add_triangular23_backEN = ~ (SE_i_add_triangular23_s_tv_1 | SE_i_add_triangular23_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_add_triangular23_v_s_0 = SE_i_add_triangular23_backEN & SR_SE_i_add_triangular23_V;
    // Backward Stall generation
    assign SE_i_add_triangular23_backStall = ~ (SE_i_add_triangular23_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_add_triangular23_R_v_0 <= 1'b0;
            SE_i_add_triangular23_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_add_triangular23_backEN == 1'b0)
            begin
                SE_i_add_triangular23_R_v_0 <= SE_i_add_triangular23_R_v_0 & SE_i_add_triangular23_s_tv_0;
            end
            else
            begin
                SE_i_add_triangular23_R_v_0 <= SE_i_add_triangular23_v_s_0;
            end

            if (SE_i_add_triangular23_backEN == 1'b0)
            begin
                SE_i_add_triangular23_R_v_1 <= SE_i_add_triangular23_R_v_1 & SE_i_add_triangular23_s_tv_1;
            end
            else
            begin
                SE_i_add_triangular23_R_v_1 <= SE_i_add_triangular23_v_s_0;
            end

        end
    end

    // SR_SE_i_add_triangular23(STALLREG,777)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_add_triangular23_r_valid <= 1'b0;
            SR_SE_i_add_triangular23_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_add_triangular23_r_data1 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_add_triangular23_r_valid <= SE_i_add_triangular23_backStall & (SR_SE_i_add_triangular23_r_valid | SR_SE_i_add_triangular23_i_valid);

            if (SR_SE_i_add_triangular23_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_add_triangular23_r_data0 <= i_mul_add16_triangular21_vt_join_q;
                SR_SE_i_add_triangular23_r_data1 <= $unsigned(bubble_select_i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_add_triangular23_and0 = SE_redist18_i_mul_add16_triangular21_vt_select_31_b_1_0_V1;
    assign SR_SE_i_add_triangular23_i_valid = SE_out_i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_V0 & SR_SE_i_add_triangular23_and0;
    // Stall signal propagation
    assign SR_SE_i_add_triangular23_backStall = SR_SE_i_add_triangular23_r_valid | ~ (SR_SE_i_add_triangular23_i_valid);

    // Valid
    assign SR_SE_i_add_triangular23_V = SR_SE_i_add_triangular23_r_valid == 1'b1 ? SR_SE_i_add_triangular23_r_valid : SR_SE_i_add_triangular23_i_valid;

    // Data0
    assign SR_SE_i_add_triangular23_D0 = SR_SE_i_add_triangular23_r_valid == 1'b1 ? SR_SE_i_add_triangular23_r_data0 : i_mul_add16_triangular21_vt_join_q;
    // Data1
    assign SR_SE_i_add_triangular23_D1 = SR_SE_i_add_triangular23_r_valid == 1'b1 ? SR_SE_i_add_triangular23_r_data1 : bubble_select_i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_b;

    // SE_out_i_llvm_fpga_pop_i32_i_03639_pop23_triangular6(STALLENABLE,534)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_fromReg0 <= SE_out_i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_fromReg1 <= SE_out_i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_consumed0 = (~ (SR_SE_i_add_triangular23_backStall) & SE_out_i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_wireValid) | SE_out_i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_consumed1 = (~ (SE_in_i_llvm_fpga_push_i32_i_03639_push23_triangular14_backStall) & SE_out_i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_wireValid) | SE_out_i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_StallValid = SE_out_i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_backStall & SE_out_i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_wireValid;
    assign SE_out_i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_toReg0 = SE_out_i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_StallValid & SE_out_i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_toReg1 = SE_out_i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_StallValid & SE_out_i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_or0 = SE_out_i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_wireStall = ~ (SE_out_i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_consumed1 & SE_out_i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_or0);
    assign SE_out_i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_backStall = SE_out_i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_V0 = SE_out_i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_V1 = SE_out_i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_wireValid = i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_out_valid_out;

    // SE_out_i_llvm_fpga_push_i32_i_03639_push23_triangular14(STALLENABLE,542)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i32_i_03639_push23_triangular14_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i32_i_03639_push23_triangular14_wireValid = i_llvm_fpga_push_i32_i_03639_push23_triangular14_out_valid_out;

    // i_llvm_fpga_push_i32_i_03639_push23_triangular14(BLACKBOX,79)@75
    // in in_stall_in@20000000
    // out out_data_out@76
    // out out_feedback_out_23@20000000
    // out out_feedback_valid_out_23@20000000
    // out out_stall_out@20000000
    // out out_valid_out@76
    triangular_i_llvm_fpga_push_i32_i_03639_push23_0 thei_llvm_fpga_push_i32_i_03639_push23_triangular14 (
        .in_c0_exe291(redist25_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_3_1_q),
        .in_data_in(bubble_select_i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_b),
        .in_feedback_stall_in_23(i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_out_feedback_stall_out_23),
        .in_stall_in(SE_out_i_llvm_fpga_push_i32_i_03639_push23_triangular14_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i32_i_03639_push23_triangular14_V0),
        .out_data_out(),
        .out_feedback_out_23(i_llvm_fpga_push_i32_i_03639_push23_triangular14_out_feedback_out_23),
        .out_feedback_valid_out_23(i_llvm_fpga_push_i32_i_03639_push23_triangular14_out_feedback_valid_out_23),
        .out_stall_out(i_llvm_fpga_push_i32_i_03639_push23_triangular14_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_i_03639_push23_triangular14_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_03639_pop23_triangular6(BLACKBOX,75)@74
    // in in_stall_in@20000000
    // out out_data_out@75
    // out out_feedback_stall_out_23@20000000
    // out out_stall_out@20000000
    // out out_valid_out@75
    triangular_i_llvm_fpga_pop_i32_i_03639_pop23_0 thei_llvm_fpga_pop_i32_i_03639_pop23_triangular6 (
        .in_data_in(sel_for_coalesced_delay_0_b),
        .in_dir(sel_for_coalesced_delay_0_c),
        .in_feedback_in_23(i_llvm_fpga_push_i32_i_03639_push23_triangular14_out_feedback_out_23),
        .in_feedback_valid_in_23(i_llvm_fpga_push_i32_i_03639_push23_triangular14_out_feedback_valid_out_23),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_backStall),
        .in_valid_in(SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_V1),
        .out_data_out(i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_out_data_out),
        .out_feedback_stall_out_23(i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_out_feedback_stall_out_23),
        .out_stall_out(i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0(STALLENABLE,631)
    // Valid signal propagation
    assign SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_V0 = SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_R_v_0;
    assign SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_V1 = SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_R_v_1;
    // Stall signal propagation
    assign SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_s_tv_0 = SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_1_backStall & SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_R_v_0;
    assign SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_s_tv_1 = i_llvm_fpga_pop_i32_i_03639_pop23_triangular6_out_stall_out & SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_R_v_1;
    // Backward Enable generation
    assign SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_or0 = SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_s_tv_0;
    assign SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_backEN = ~ (SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_s_tv_1 | SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_v_s_0 = SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_backEN & SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_V;
    // Backward Stall generation
    assign SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_backStall = ~ (SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_R_v_0 <= 1'b0;
            SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_backEN == 1'b0)
            begin
                SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_R_v_0 <= SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_R_v_0 & SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_s_tv_0;
            end
            else
            begin
                SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_R_v_0 <= SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_v_s_0;
            end

            if (SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_backEN == 1'b0)
            begin
                SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_R_v_1 <= SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_R_v_1 & SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_s_tv_1;
            end
            else
            begin
                SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_R_v_1 <= SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_v_s_0;
            end

        end
    end

    // join_for_coalesced_delay_0(BITJOIN,376)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_j, bubble_select_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_k};

    // coalesced_delay_0_0(REG,438)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(33'b000000000000000000000000000000000);
        end
        else if (SE_i_first_cleanup_xor_or_triangular20_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // redist36_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_14_tpl_5_0(REG,428)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_14_tpl_5_0_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_i_first_cleanup_xor_or_triangular20_backEN == 1'b1)
        begin
            redist36_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_14_tpl_5_0_q <= $unsigned(bubble_select_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_m);
        end
    end

    // redist28_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_4_tpl_6_0(REG,419)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_4_tpl_6_0_q <= $unsigned(1'b0);
        end
        else if (SE_i_first_cleanup_xor_or_triangular20_backEN == 1'b1)
        begin
            redist28_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_4_tpl_6_0_q <= $unsigned(bubble_select_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_e);
        end
    end

    // i_unnamed_triangular16(LOGICAL,102)@72
    assign i_unnamed_triangular16_q = bubble_select_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_d ^ VCC_q;

    // i_first_cleanup_xor_or_triangular20(LOGICAL,67)@72 + 1
    assign i_first_cleanup_xor_or_triangular20_qi = i_unnamed_triangular16_q | bubble_select_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_first_cleanup_xor_or_triangular20_delay ( .xin(i_first_cleanup_xor_or_triangular20_qi), .xout(i_first_cleanup_xor_or_triangular20_q), .ena(SE_i_first_cleanup_xor_or_triangular20_backEN[0]), .clk(clock), .aclr(resetn) );

    // SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0(STALLREG,765)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_r_valid <= 1'b0;
            SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_r_data0 <= 1'bx;
            SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_r_data1 <= 1'bx;
            SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_r_data2 <= 1'bx;
            SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_r_data3 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_r_data4 <= 33'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_r_valid <= SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_backStall & (SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_r_valid | SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_i_valid);

            if (SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_r_data0 <= i_first_cleanup_xor_or_triangular20_q;
                SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_r_data1 <= $unsigned(redist24_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_1_0_q);
                SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_r_data2 <= $unsigned(redist28_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_4_tpl_6_0_q);
                SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_r_data3 <= $unsigned(redist36_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_14_tpl_5_0_q);
                SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_r_data4 <= $unsigned(coalesced_delay_0_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_i_valid = SE_i_first_cleanup_xor_or_triangular20_V0;
    // Stall signal propagation
    assign SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_backStall = SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_r_valid | ~ (SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_i_valid);

    // Valid
    assign SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_V = SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_r_valid == 1'b1 ? SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_r_valid : SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_i_valid;

    // Data0
    assign SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_D0 = SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_r_valid == 1'b1 ? SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_r_data0 : i_first_cleanup_xor_or_triangular20_q;
    // Data1
    assign SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_D1 = SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_r_valid == 1'b1 ? SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_r_data1 : redist24_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_1_0_q;
    // Data2
    assign SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_D2 = SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_r_valid == 1'b1 ? SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_r_data2 : redist28_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_4_tpl_6_0_q;
    // Data3
    assign SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_D3 = SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_r_valid == 1'b1 ? SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_r_data3 : redist36_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_14_tpl_5_0_q;
    // Data4
    assign SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_D4 = SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_r_valid == 1'b1 ? SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_r_data4 : coalesced_delay_0_0_q;

    // coalesced_delay_0_1(REG,439)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_1_q <= $unsigned(33'b000000000000000000000000000000000);
        end
        else if (SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_backEN == 1'b1)
        begin
            coalesced_delay_0_1_q <= $unsigned(SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_D4);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,377)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_1_q[31:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_1_q[32:32]);

    // redist34_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_9_tpl_5_0(REG,425)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_9_tpl_5_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_1_backEN == 1'b1)
        begin
            redist34_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_9_tpl_5_0_q <= $unsigned(sel_for_coalesced_delay_0_c);
        end
    end

    // redist36_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_14_tpl_5_1(REG,429)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_14_tpl_5_1_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_backEN == 1'b1)
        begin
            redist36_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_14_tpl_5_1_q <= $unsigned(SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_D3);
        end
    end

    // redist36_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_14_tpl_5_2(REG,430)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_14_tpl_5_2_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_1_backEN == 1'b1)
        begin
            redist36_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_14_tpl_5_2_q <= $unsigned(redist36_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_14_tpl_5_1_q);
        end
    end

    // redist28_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_4_tpl_6_1(REG,420)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_4_tpl_6_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_backEN == 1'b1)
        begin
            redist28_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_4_tpl_6_1_q <= $unsigned(SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_D2);
        end
    end

    // redist28_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_4_tpl_6_2(REG,421)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_4_tpl_6_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_1_backEN == 1'b1)
        begin
            redist28_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_4_tpl_6_2_q <= $unsigned(redist28_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_4_tpl_6_1_q);
        end
    end

    // redist25_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_3_0(REG,413)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_3_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_backEN == 1'b1)
        begin
            redist25_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_3_0_q <= $unsigned(SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_D1);
        end
    end

    // redist25_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_3_1(REG,414)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_3_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_1_backEN == 1'b1)
        begin
            redist25_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_3_1_q <= $unsigned(redist25_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_3_0_q);
        end
    end

    // redist21_i_first_cleanup_xor_or_triangular20_q_6_0(REG,402)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_first_cleanup_xor_or_triangular20_q_6_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_backEN == 1'b1)
        begin
            redist21_i_first_cleanup_xor_or_triangular20_q_6_0_q <= $unsigned(SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_D0);
        end
    end

    // redist21_i_first_cleanup_xor_or_triangular20_q_6_1(REG,403)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_first_cleanup_xor_or_triangular20_q_6_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_1_backEN == 1'b1)
        begin
            redist21_i_first_cleanup_xor_or_triangular20_q_6_1_q <= $unsigned(redist21_i_first_cleanup_xor_or_triangular20_q_6_0_q);
        end
    end

    // SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_1(STALLENABLE,632)
    // Valid signal propagation
    assign SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_1_V0 = SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_1_R_v_0;
    assign SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_1_V1 = SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_1_R_v_1;
    // Stall signal propagation
    assign SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_1_s_tv_0 = SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_backStall & SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_1_R_v_0;
    assign SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_1_s_tv_1 = SE_in_i_llvm_fpga_push_i32_i_03639_push23_triangular14_backStall & SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_1_R_v_1;
    // Backward Enable generation
    assign SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_1_or0 = SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_1_s_tv_0;
    assign SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_1_backEN = ~ (SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_1_s_tv_1 | SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_1_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_1_v_s_0 = SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_1_backEN & SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_0_V0;
    // Backward Stall generation
    assign SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_1_backStall = ~ (SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_1_R_v_0 <= 1'b0;
            SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_1_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_1_backEN == 1'b0)
            begin
                SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_1_R_v_0 <= SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_1_R_v_0 & SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_1_s_tv_0;
            end
            else
            begin
                SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_1_R_v_0 <= SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_1_v_s_0;
            end

            if (SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_1_backEN == 1'b0)
            begin
                SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_1_R_v_1 <= SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_1_R_v_1 & SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_1_s_tv_1;
            end
            else
            begin
                SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_1_R_v_1 <= SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_1_v_s_0;
            end

        end
    end

    // SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2(STALLREG,766)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_r_valid <= 1'b0;
            SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_r_data0 <= 1'bx;
            SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_r_data1 <= 1'bx;
            SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_r_data2 <= 1'bx;
            SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_r_data3 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_r_data4 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_r_valid <= SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_backStall & (SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_r_valid | SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_i_valid);

            if (SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_r_data0 <= $unsigned(redist21_i_first_cleanup_xor_or_triangular20_q_6_1_q);
                SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_r_data1 <= $unsigned(redist25_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_3_1_q);
                SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_r_data2 <= $unsigned(redist28_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_4_tpl_6_2_q);
                SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_r_data3 <= $unsigned(redist36_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_14_tpl_5_2_q);
                SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_r_data4 <= $unsigned(redist34_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_9_tpl_5_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_i_valid = SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_1_V0;
    // Stall signal propagation
    assign SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_backStall = SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_r_valid | ~ (SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_i_valid);

    // Valid
    assign SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_V = SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_r_valid == 1'b1 ? SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_r_valid : SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_i_valid;

    // Data0
    assign SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_D0 = SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_r_valid == 1'b1 ? SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_r_data0 : redist21_i_first_cleanup_xor_or_triangular20_q_6_1_q;
    // Data1
    assign SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_D1 = SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_r_valid == 1'b1 ? SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_r_data1 : redist25_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_3_1_q;
    // Data2
    assign SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_D2 = SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_r_valid == 1'b1 ? SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_r_data2 : redist28_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_4_tpl_6_2_q;
    // Data3
    assign SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_D3 = SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_r_valid == 1'b1 ? SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_r_data3 : redist36_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_14_tpl_5_2_q;
    // Data4
    assign SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_D4 = SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_r_valid == 1'b1 ? SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_r_data4 : redist34_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_9_tpl_5_0_q;

    // redist34_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_9_tpl_5_1(REG,426)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_9_tpl_5_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_backEN == 1'b1)
        begin
            redist34_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_9_tpl_5_1_q <= $unsigned(SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_D4);
        end
    end

    // redist36_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_14_tpl_5_3(REG,431)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_14_tpl_5_3_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_backEN == 1'b1)
        begin
            redist36_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_14_tpl_5_3_q <= $unsigned(SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_D3);
        end
    end

    // redist28_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_4_tpl_6_3(REG,422)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_4_tpl_6_3_q <= $unsigned(1'b0);
        end
        else if (SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_backEN == 1'b1)
        begin
            redist28_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_4_tpl_6_3_q <= $unsigned(SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_D2);
        end
    end

    // redist26_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_6_0(REG,415)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_6_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_backEN == 1'b1)
        begin
            redist26_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_6_0_q <= $unsigned(SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_D1);
        end
    end

    // redist21_i_first_cleanup_xor_or_triangular20_q_6_2(REG,404)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_first_cleanup_xor_or_triangular20_q_6_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_backEN == 1'b1)
        begin
            redist21_i_first_cleanup_xor_or_triangular20_q_6_2_q <= $unsigned(SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_D0);
        end
    end

    // SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2(STALLENABLE,633)
    // Valid signal propagation
    assign SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_V0 = SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_R_v_0;
    // Stall signal propagation
    assign SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_s_tv_0 = SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_backStall & SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_R_v_0;
    // Backward Enable generation
    assign SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_backEN = ~ (SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_v_s_0 = SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_backEN & SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_V;
    // Backward Stall generation
    assign SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_backStall = ~ (SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_backEN == 1'b0)
            begin
                SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_R_v_0 <= SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_R_v_0 & SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_s_tv_0;
            end
            else
            begin
                SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_R_v_0 <= SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_v_s_0;
            end

        end
    end

    // SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3(STALLREG,767)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_r_valid <= 1'b0;
            SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_r_data0 <= 1'bx;
            SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_r_data1 <= 1'bx;
            SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_r_data2 <= 1'bx;
            SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_r_data3 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_r_data4 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_r_valid <= SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_backStall & (SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_r_valid | SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_i_valid);

            if (SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_r_data0 <= $unsigned(redist21_i_first_cleanup_xor_or_triangular20_q_6_2_q);
                SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_r_data1 <= $unsigned(redist26_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_6_0_q);
                SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_r_data2 <= $unsigned(redist28_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_4_tpl_6_3_q);
                SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_r_data3 <= $unsigned(redist36_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_14_tpl_5_3_q);
                SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_r_data4 <= $unsigned(redist34_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_9_tpl_5_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_i_valid = SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_2_V0;
    // Stall signal propagation
    assign SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_backStall = SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_r_valid | ~ (SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_i_valid);

    // Valid
    assign SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_V = SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_r_valid == 1'b1 ? SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_r_valid : SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_i_valid;

    // Data0
    assign SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_D0 = SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_r_valid == 1'b1 ? SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_r_data0 : redist21_i_first_cleanup_xor_or_triangular20_q_6_2_q;
    // Data1
    assign SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_D1 = SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_r_valid == 1'b1 ? SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_r_data1 : redist26_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_6_0_q;
    // Data2
    assign SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_D2 = SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_r_valid == 1'b1 ? SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_r_data2 : redist28_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_4_tpl_6_3_q;
    // Data3
    assign SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_D3 = SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_r_valid == 1'b1 ? SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_r_data3 : redist36_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_14_tpl_5_3_q;
    // Data4
    assign SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_D4 = SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_r_valid == 1'b1 ? SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_r_data4 : redist34_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_9_tpl_5_1_q;

    // redist28_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_4_tpl_6_4(REG,423)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_4_tpl_6_4_q <= $unsigned(1'b0);
        end
        else if (SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_backEN == 1'b1)
        begin
            redist28_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_4_tpl_6_4_q <= $unsigned(SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_D2);
        end
    end

    // redist26_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_6_1(REG,416)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_6_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_backEN == 1'b1)
        begin
            redist26_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_6_1_q <= $unsigned(SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_D1);
        end
    end

    // redist21_i_first_cleanup_xor_or_triangular20_q_6_3(REG,405)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_first_cleanup_xor_or_triangular20_q_6_3_q <= $unsigned(1'b0);
        end
        else if (SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_backEN == 1'b1)
        begin
            redist21_i_first_cleanup_xor_or_triangular20_q_6_3_q <= $unsigned(SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_D0);
        end
    end

    // SE_in_i_llvm_fpga_push_p1025i32_mptr_bitcast_index41_push25_triangular15(STALLENABLE,545)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_p1025i32_mptr_bitcast_index41_push25_triangular15_V0 = SE_in_i_llvm_fpga_push_p1025i32_mptr_bitcast_index41_push25_triangular15_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_p1025i32_mptr_bitcast_index41_push25_triangular15_backStall = i_llvm_fpga_push_p1025i32_mptr_bitcast_index41_push25_triangular15_out_stall_out | ~ (SE_in_i_llvm_fpga_push_p1025i32_mptr_bitcast_index41_push25_triangular15_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_p1025i32_mptr_bitcast_index41_push25_triangular15_and0 = SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_V3;
    assign SE_in_i_llvm_fpga_push_p1025i32_mptr_bitcast_index41_push25_triangular15_wireValid = SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_V1 & SE_in_i_llvm_fpga_push_p1025i32_mptr_bitcast_index41_push25_triangular15_and0;

    // SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8(STALLENABLE,538)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_fromReg0 <= SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_fromReg1 <= SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_consumed0 = (~ (SR_SE_in_i_llvm_fpga_mem_lm62_triangular22_backStall) & SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_wireValid) | SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_fromReg0;
    assign SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_consumed1 = (~ (SE_in_i_llvm_fpga_push_p1025i32_mptr_bitcast_index41_push25_triangular15_backStall) & SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_wireValid) | SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_StallValid = SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_backStall & SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_wireValid;
    assign SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_toReg0 = SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_StallValid & SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_consumed0;
    assign SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_toReg1 = SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_StallValid & SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_or0 = SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_consumed0;
    assign SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_wireStall = ~ (SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_consumed1 & SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_or0);
    assign SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_backStall = SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_V0 = SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_wireValid & ~ (SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_fromReg0);
    assign SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_V1 = SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_wireValid & ~ (SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_wireValid = i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_out_valid_out;

    // SE_out_i_llvm_fpga_push_p1025i32_mptr_bitcast_index41_push25_triangular15(STALLENABLE,546)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_p1025i32_mptr_bitcast_index41_push25_triangular15_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_p1025i32_mptr_bitcast_index41_push25_triangular15_wireValid = i_llvm_fpga_push_p1025i32_mptr_bitcast_index41_push25_triangular15_out_valid_out;

    // bubble_join_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8(BITJOIN,480)
    assign bubble_join_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_q = i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_out_data_out;

    // bubble_select_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8(BITSELECT,481)
    assign bubble_select_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_b = $unsigned(bubble_join_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_q[63:0]);

    // i_llvm_fpga_push_p1025i32_mptr_bitcast_index41_push25_triangular15(BLACKBOX,81)@78
    // in in_stall_in@20000000
    // out out_data_out@79
    // out out_feedback_out_25@20000000
    // out out_feedback_valid_out_25@20000000
    // out out_stall_out@20000000
    // out out_valid_out@79
    triangular_i_llvm_fpga_push_p1025i32_mpt0000ast_index41_push25_0 thei_llvm_fpga_push_p1025i32_mptr_bitcast_index41_push25_triangular15 (
        .in_c0_exe291(redist26_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_6_2_q),
        .in_data_in(bubble_select_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_b),
        .in_feedback_stall_in_25(i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_out_feedback_stall_out_25),
        .in_stall_in(SE_out_i_llvm_fpga_push_p1025i32_mptr_bitcast_index41_push25_triangular15_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_p1025i32_mptr_bitcast_index41_push25_triangular15_V0),
        .out_data_out(),
        .out_feedback_out_25(i_llvm_fpga_push_p1025i32_mptr_bitcast_index41_push25_triangular15_out_feedback_out_25),
        .out_feedback_valid_out_25(i_llvm_fpga_push_p1025i32_mptr_bitcast_index41_push25_triangular15_out_feedback_valid_out_25),
        .out_stall_out(i_llvm_fpga_push_p1025i32_mptr_bitcast_index41_push25_triangular15_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_p1025i32_mptr_bitcast_index41_push25_triangular15_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist36_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_14_tpl_5_4(REG,432)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_14_tpl_5_4_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_backEN == 1'b1)
        begin
            redist36_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_14_tpl_5_4_q <= $unsigned(SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_D3);
        end
    end

    // i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8(BLACKBOX,77)@77
    // in in_stall_in@20000000
    // out out_data_out@78
    // out out_feedback_stall_out_25@20000000
    // out out_stall_out@20000000
    // out out_valid_out@78
    triangular_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_0 thei_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8 (
        .in_data_in(redist36_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_14_tpl_5_4_q),
        .in_dir(redist34_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_9_tpl_5_2_q),
        .in_feedback_in_25(i_llvm_fpga_push_p1025i32_mptr_bitcast_index41_push25_triangular15_out_feedback_out_25),
        .in_feedback_valid_in_25(i_llvm_fpga_push_p1025i32_mptr_bitcast_index41_push25_triangular15_out_feedback_valid_out_25),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_backStall),
        .in_valid_in(SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_V2),
        .out_data_out(i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_out_data_out),
        .out_feedback_stall_out_25(i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_out_feedback_stall_out_25),
        .out_stall_out(i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3(STALLENABLE,634)
    // Valid signal propagation
    assign SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_V0 = SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_R_v_0;
    assign SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_V1 = SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_R_v_1;
    assign SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_V2 = SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_R_v_2;
    // Stall signal propagation
    assign SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_s_tv_0 = SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_backStall & SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_R_v_0;
    assign SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_s_tv_1 = i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_out_stall_out & SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_R_v_1;
    assign SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_s_tv_2 = i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_out_stall_out & SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_R_v_2;
    // Backward Enable generation
    assign SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_or0 = SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_s_tv_0;
    assign SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_or1 = SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_s_tv_1 | SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_or0;
    assign SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_backEN = ~ (SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_s_tv_2 | SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_v_s_0 = SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_backEN & SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_V;
    // Backward Stall generation
    assign SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_backStall = ~ (SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_R_v_0 <= 1'b0;
            SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_R_v_1 <= 1'b0;
            SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_backEN == 1'b0)
            begin
                SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_R_v_0 <= SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_R_v_0 & SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_s_tv_0;
            end
            else
            begin
                SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_R_v_0 <= SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_v_s_0;
            end

            if (SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_backEN == 1'b0)
            begin
                SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_R_v_1 <= SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_R_v_1 & SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_s_tv_1;
            end
            else
            begin
                SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_R_v_1 <= SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_v_s_0;
            end

            if (SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_backEN == 1'b0)
            begin
                SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_R_v_2 <= SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_R_v_2 & SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_s_tv_2;
            end
            else
            begin
                SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_R_v_2 <= SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_v_s_0;
            end

        end
    end

    // SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4(STALLREG,768)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_r_valid <= 1'b0;
            SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_r_data0 <= 1'bx;
            SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_r_data1 <= 1'bx;
            SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_r_valid <= SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_backStall & (SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_r_valid | SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_i_valid);

            if (SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_r_data0 <= $unsigned(redist21_i_first_cleanup_xor_or_triangular20_q_6_3_q);
                SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_r_data1 <= $unsigned(redist26_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_6_1_q);
                SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_r_data2 <= $unsigned(redist28_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_4_tpl_6_4_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_i_valid = SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_3_V0;
    // Stall signal propagation
    assign SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_backStall = SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_r_valid | ~ (SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_i_valid);

    // Valid
    assign SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_V = SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_r_valid == 1'b1 ? SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_r_valid : SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_i_valid;

    // Data0
    assign SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_D0 = SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_r_valid == 1'b1 ? SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_r_data0 : redist21_i_first_cleanup_xor_or_triangular20_q_6_3_q;
    // Data1
    assign SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_D1 = SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_r_valid == 1'b1 ? SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_r_data1 : redist26_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_6_1_q;
    // Data2
    assign SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_D2 = SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_r_valid == 1'b1 ? SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_r_data2 : redist28_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_4_tpl_6_4_q;

    // redist21_i_first_cleanup_xor_or_triangular20_q_6_4(REG,406)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_first_cleanup_xor_or_triangular20_q_6_4_q <= $unsigned(1'b0);
        end
        else if (SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_backEN == 1'b1)
        begin
            redist21_i_first_cleanup_xor_or_triangular20_q_6_4_q <= $unsigned(SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_D0);
        end
    end

    // redist28_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_4_tpl_6_5(REG,424)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_4_tpl_6_5_q <= $unsigned(1'b0);
        end
        else if (SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_backEN == 1'b1)
        begin
            redist28_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_4_tpl_6_5_q <= $unsigned(SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_D2);
        end
    end

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5(BITJOIN,471)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_q = i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5(BITSELECT,472)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_q[0:0]);

    // i_memdep_phi4_or_triangular17(LOGICAL,82)@78
    assign i_memdep_phi4_or_triangular17_q = bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_b | redist28_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_4_tpl_6_5_q;

    // i_mptr_bitcast_index40_triangular0_add_x_p2_of_2(ADD,230)@77 + 1
    assign i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_cin = SR_SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_D2;
    assign i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_a = { {1'b0, SR_SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_D0}, 1'b1 };
    assign i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_b = { {1'b0, SR_SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_D1}, i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_o <= 7'b0;
        end
        else if (SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_o <= $unsigned(i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_a) + $unsigned(i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_b);
        end
    end
    assign i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_q = i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_o[5:1];

    // redist12_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_q_1_0(REG,389)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_q_1_0_q <= $unsigned(60'b000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist12_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_q_1_0_backEN == 1'b1)
        begin
            redist12_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_q_1_0_q <= $unsigned(SR_SE_redist12_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_q_1_0_D0);
        end
    end

    // i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q(BITJOIN,231)@78
    assign i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q_q = {i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_q, redist12_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_q_1_0_q};

    // i_mptr_bitcast_index40_triangular0_dupName_0_trunc_sel_x(BITSELECT,33)@78
    assign i_mptr_bitcast_index40_triangular0_dupName_0_trunc_sel_x_b = i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q_q[63:0];

    // SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4(STALLENABLE,635)
    // Valid signal propagation
    assign SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_V0 = SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_R_v_0;
    assign SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_V1 = SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_R_v_1;
    assign SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_V2 = SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_R_v_2;
    assign SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_V3 = SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_R_v_3;
    assign SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_V4 = SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_R_v_4;
    assign SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_V5 = SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_R_v_5;
    // Stall signal propagation
    assign SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_s_tv_0 = SR_SE_i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q_backStall & SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_R_v_0;
    assign SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_s_tv_1 = SR_SE_in_i_llvm_fpga_mem_lm62_triangular22_backStall & SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_R_v_1;
    assign SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_s_tv_2 = SR_SE_redist22_i_first_cleanup_xor_or_triangular20_q_11_0_backStall & SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_R_v_2;
    assign SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_s_tv_3 = SE_in_i_llvm_fpga_push_p1025i32_mptr_bitcast_index41_push25_triangular15_backStall & SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_R_v_3;
    assign SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_s_tv_4 = redist27_i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_c0_exit89_2_tpl_74_fifo_stall_out & SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_R_v_4;
    assign SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_s_tv_5 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_backStall & SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_R_v_5;
    // Backward Enable generation
    assign SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_or0 = SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_s_tv_0;
    assign SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_or1 = SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_s_tv_1 | SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_or0;
    assign SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_or2 = SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_s_tv_2 | SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_or1;
    assign SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_or3 = SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_s_tv_3 | SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_or2;
    assign SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_or4 = SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_s_tv_4 | SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_or3;
    assign SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_backEN = ~ (SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_s_tv_5 | SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_or4);
    // Determine whether to write valid data into the first register stage
    assign SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_v_s_0 = SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_backEN & SR_SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_V;
    // Backward Stall generation
    assign SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_backStall = ~ (SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_R_v_0 <= 1'b0;
            SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_R_v_1 <= 1'b0;
            SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_R_v_2 <= 1'b0;
            SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_R_v_3 <= 1'b0;
            SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_R_v_4 <= 1'b0;
            SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_R_v_5 <= 1'b0;
        end
        else
        begin
            if (SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_backEN == 1'b0)
            begin
                SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_R_v_0 <= SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_R_v_0 & SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_s_tv_0;
            end
            else
            begin
                SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_R_v_0 <= SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_v_s_0;
            end

            if (SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_backEN == 1'b0)
            begin
                SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_R_v_1 <= SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_R_v_1 & SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_s_tv_1;
            end
            else
            begin
                SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_R_v_1 <= SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_v_s_0;
            end

            if (SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_backEN == 1'b0)
            begin
                SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_R_v_2 <= SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_R_v_2 & SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_s_tv_2;
            end
            else
            begin
                SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_R_v_2 <= SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_v_s_0;
            end

            if (SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_backEN == 1'b0)
            begin
                SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_R_v_3 <= SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_R_v_3 & SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_s_tv_3;
            end
            else
            begin
                SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_R_v_3 <= SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_v_s_0;
            end

            if (SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_backEN == 1'b0)
            begin
                SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_R_v_4 <= SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_R_v_4 & SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_s_tv_4;
            end
            else
            begin
                SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_R_v_4 <= SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_v_s_0;
            end

            if (SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_backEN == 1'b0)
            begin
                SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_R_v_5 <= SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_R_v_5 & SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_s_tv_5;
            end
            else
            begin
                SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_R_v_5 <= SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5(STALLENABLE,532)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_fromReg2 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_consumed0 = (~ (SR_SE_i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_consumed1 = (~ (SR_SE_in_i_llvm_fpga_mem_lm62_triangular22_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_consumed2 = (~ (SR_SE_redist20_i_memdep_phi4_or_triangular17_q_5_0_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_fromReg2;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_consumed1;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_toReg2 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_consumed2;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_or1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_or0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_consumed2 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_or1);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_V2 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_and0 = i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_out_valid_out;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_wireValid = SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_V5 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_and0;

    // SE_redist12_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_q_1_0(STALLENABLE,618)
    // Valid signal propagation
    assign SE_redist12_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_q_1_0_V0 = SE_redist12_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist12_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_q_1_0_s_tv_0 = SR_SE_i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q_backStall & SE_redist12_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist12_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_q_1_0_backEN = ~ (SE_redist12_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist12_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_q_1_0_v_s_0 = SE_redist12_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_q_1_0_backEN & SR_SE_redist12_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_q_1_0_V;
    // Backward Stall generation
    assign SE_redist12_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_q_1_0_backStall = ~ (SE_redist12_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_q_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist12_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist12_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_q_1_0_backEN == 1'b0)
            begin
                SE_redist12_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist12_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_q_1_0_R_v_0 & SE_redist12_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist12_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist12_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_q_1_0_v_s_0;
            end

        end
    end

    // SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2(STALLENABLE,584)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_V0 = SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_s_tv_0 = SR_SE_i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q_backStall & SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_backEN = ~ (SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_v_s_0 = SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_backEN & SR_SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_backStall = ~ (SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_backEN == 1'b0)
            begin
                SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_R_v_0 <= SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_R_v_0 & SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_R_v_0 <= SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q(STALLREG,780)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q_r_valid <= 1'b0;
            SR_SE_i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q_r_data0 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q_r_data1 <= 1'bx;
            SR_SE_i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q_r_valid <= SE_i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q_backStall & (SR_SE_i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q_r_valid | SR_SE_i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q_i_valid);

            if (SR_SE_i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q_r_data0 <= i_mptr_bitcast_index40_triangular0_dupName_0_trunc_sel_x_b;
                SR_SE_i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q_r_data1 <= i_memdep_phi4_or_triangular17_q;
                SR_SE_i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q_r_data2 <= $unsigned(redist21_i_first_cleanup_xor_or_triangular20_q_6_4_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q_and0 = SE_i_mptr_bitcast_index40_triangular0_add_x_p2_of_2_V0;
    assign SR_SE_i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q_and1 = SE_redist12_i_mptr_bitcast_index40_triangular0_add_x_p1_of_2_q_1_0_V0 & SR_SE_i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q_and0;
    assign SR_SE_i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q_and2 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_V0 & SR_SE_i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q_and1;
    assign SR_SE_i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q_i_valid = SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_V0 & SR_SE_i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q_and2;
    // Stall signal propagation
    assign SR_SE_i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q_backStall = SR_SE_i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q_r_valid | ~ (SR_SE_i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q_i_valid);

    // Valid
    assign SR_SE_i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q_V = SR_SE_i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q_r_valid : SR_SE_i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q_i_valid;

    // Data0
    assign SR_SE_i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q_D0 = SR_SE_i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q_r_data0 : i_mptr_bitcast_index40_triangular0_dupName_0_trunc_sel_x_b;
    // Data1
    assign SR_SE_i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q_D1 = SR_SE_i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q_r_data1 : i_memdep_phi4_or_triangular17_q;
    // Data2
    assign SR_SE_i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q_D2 = SR_SE_i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q_r_data2 : redist21_i_first_cleanup_xor_or_triangular20_q_6_4_q;

    // i_llvm_fpga_mem_lm1_triangular29(BLACKBOX,70)@78
    // in in_i_stall@20000000
    // out out_lm1_triangular_avm_address@20000000
    // out out_lm1_triangular_avm_burstcount@20000000
    // out out_lm1_triangular_avm_byteenable@20000000
    // out out_lm1_triangular_avm_enable@20000000
    // out out_lm1_triangular_avm_read@20000000
    // out out_lm1_triangular_avm_write@20000000
    // out out_lm1_triangular_avm_writedata@20000000
    // out out_o_readdata@110
    // out out_o_stall@20000000
    // out out_o_valid@110
    triangular_i_llvm_fpga_mem_lm1_0 thei_llvm_fpga_mem_lm1_triangular29 (
        .in_flush(in_flush),
        .in_i_address(SR_SE_i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q_D0),
        .in_i_dependence(SR_SE_i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q_D1),
        .in_i_predicate(SR_SE_i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q_D2),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm1_triangular29_backStall),
        .in_i_valid(SE_i_mptr_bitcast_index40_triangular0_add_x_BitJoin_for_q_V0),
        .in_lm1_triangular_avm_readdata(in_lm1_triangular_avm_readdata),
        .in_lm1_triangular_avm_readdatavalid(in_lm1_triangular_avm_readdatavalid),
        .in_lm1_triangular_avm_waitrequest(in_lm1_triangular_avm_waitrequest),
        .in_lm1_triangular_avm_writeack(in_lm1_triangular_avm_writeack),
        .out_lm1_triangular_avm_address(i_llvm_fpga_mem_lm1_triangular29_out_lm1_triangular_avm_address),
        .out_lm1_triangular_avm_burstcount(i_llvm_fpga_mem_lm1_triangular29_out_lm1_triangular_avm_burstcount),
        .out_lm1_triangular_avm_byteenable(i_llvm_fpga_mem_lm1_triangular29_out_lm1_triangular_avm_byteenable),
        .out_lm1_triangular_avm_enable(i_llvm_fpga_mem_lm1_triangular29_out_lm1_triangular_avm_enable),
        .out_lm1_triangular_avm_read(i_llvm_fpga_mem_lm1_triangular29_out_lm1_triangular_avm_read),
        .out_lm1_triangular_avm_write(i_llvm_fpga_mem_lm1_triangular29_out_lm1_triangular_avm_write),
        .out_lm1_triangular_avm_writedata(i_llvm_fpga_mem_lm1_triangular29_out_lm1_triangular_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm1_triangular29_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm1_triangular29_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm1_triangular29_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_lm1_triangular29(BITJOIN,458)
    assign bubble_join_i_llvm_fpga_mem_lm1_triangular29_q = i_llvm_fpga_mem_lm1_triangular29_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm1_triangular29(BITSELECT,459)
    assign bubble_select_i_llvm_fpga_mem_lm1_triangular29_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm1_triangular29_q[31:0]);

    // i_mul6_triangular31_bs2_merged_bit_select(BITSELECT,332)@110
    assign i_mul6_triangular31_bs2_merged_bit_select_b = bubble_select_i_llvm_fpga_mem_lm1_triangular29_b[17:0];
    assign i_mul6_triangular31_bs2_merged_bit_select_c = bubble_select_i_llvm_fpga_mem_lm1_triangular29_b[31:18];

    // bubble_join_i_llvm_fpga_mem_lm62_triangular22(BITJOIN,461)
    assign bubble_join_i_llvm_fpga_mem_lm62_triangular22_q = i_llvm_fpga_mem_lm62_triangular22_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm62_triangular22(BITSELECT,462)
    assign bubble_select_i_llvm_fpga_mem_lm62_triangular22_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm62_triangular22_q[31:0]);

    // i_mul6_triangular31_bs1_merged_bit_select(BITSELECT,333)@110
    assign i_mul6_triangular31_bs1_merged_bit_select_b = bubble_select_i_llvm_fpga_mem_lm62_triangular22_b[17:0];
    assign i_mul6_triangular31_bs1_merged_bit_select_c = bubble_select_i_llvm_fpga_mem_lm62_triangular22_b[31:18];

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_mul6_triangular31_ma3_cma(CHAINMULTADD,213)@110 + 2
    assign i_mul6_triangular31_ma3_cma_reset = ~ (resetn);
    assign i_mul6_triangular31_ma3_cma_ena0 = SE_i_mul6_triangular31_im0_cma_backEN[0];
    assign i_mul6_triangular31_ma3_cma_ena1 = i_mul6_triangular31_ma3_cma_ena0;
    assign i_mul6_triangular31_ma3_cma_p[0] = i_mul6_triangular31_ma3_cma_a0[0] * i_mul6_triangular31_ma3_cma_c0[0];
    assign i_mul6_triangular31_ma3_cma_p[1] = i_mul6_triangular31_ma3_cma_a0[1] * i_mul6_triangular31_ma3_cma_c0[1];
    assign i_mul6_triangular31_ma3_cma_u[0] = {1'b0, i_mul6_triangular31_ma3_cma_p[0][31:0]};
    assign i_mul6_triangular31_ma3_cma_u[1] = {1'b0, i_mul6_triangular31_ma3_cma_p[1][31:0]};
    assign i_mul6_triangular31_ma3_cma_w[0] = i_mul6_triangular31_ma3_cma_u[0] + i_mul6_triangular31_ma3_cma_u[1];
    assign i_mul6_triangular31_ma3_cma_x[0] = i_mul6_triangular31_ma3_cma_w[0];
    assign i_mul6_triangular31_ma3_cma_y[0] = i_mul6_triangular31_ma3_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul6_triangular31_ma3_cma_a0 <= '{default: '0};
            i_mul6_triangular31_ma3_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul6_triangular31_ma3_cma_ena0 == 1'b1)
            begin
                i_mul6_triangular31_ma3_cma_a0[0] <= i_mul6_triangular31_bs1_merged_bit_select_c;
                i_mul6_triangular31_ma3_cma_a0[1] <= i_mul6_triangular31_bs2_merged_bit_select_c;
                i_mul6_triangular31_ma3_cma_c0[0] <= i_mul6_triangular31_bs2_merged_bit_select_b;
                i_mul6_triangular31_ma3_cma_c0[1] <= i_mul6_triangular31_bs1_merged_bit_select_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul6_triangular31_ma3_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul6_triangular31_ma3_cma_ena1 == 1'b1)
            begin
                i_mul6_triangular31_ma3_cma_s[0] <= i_mul6_triangular31_ma3_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(33), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul6_triangular31_ma3_cma_delay ( .xin(i_mul6_triangular31_ma3_cma_s[0]), .xout(i_mul6_triangular31_ma3_cma_qq), .ena(SE_i_mul6_triangular31_im0_cma_backEN[0]), .clk(clock), .aclr(resetn) );
    assign i_mul6_triangular31_ma3_cma_q = $unsigned(i_mul6_triangular31_ma3_cma_qq[32:0]);

    // bubble_join_i_mul6_triangular31_ma3_cma(BITJOIN,493)
    assign bubble_join_i_mul6_triangular31_ma3_cma_q = i_mul6_triangular31_ma3_cma_q;

    // SE_out_bubble_out_i_mul6_triangular31_ma3_cma_data(STALLENABLE,745)
    // Valid signal propagation
    assign SE_out_bubble_out_i_mul6_triangular31_ma3_cma_data_V0 = SE_out_bubble_out_i_mul6_triangular31_ma3_cma_data_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_mul6_triangular31_ma3_cma_data_backStall = SE_redist14_i_mul6_triangular31_ma3_cma_q_1_0_backStall | ~ (SE_out_bubble_out_i_mul6_triangular31_ma3_cma_data_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_mul6_triangular31_ma3_cma_data_wireValid = bubble_out_i_mul6_triangular31_ma3_cma_data_reg_valid_out;

    // bubble_out_i_mul6_triangular31_ma3_cma_data_reg(STALLFIFO,764)
    assign bubble_out_i_mul6_triangular31_ma3_cma_data_reg_valid_in = SE_i_mul6_triangular31_im0_cma_V2;
    assign bubble_out_i_mul6_triangular31_ma3_cma_data_reg_stall_in = SE_out_bubble_out_i_mul6_triangular31_ma3_cma_data_backStall;
    assign bubble_out_i_mul6_triangular31_ma3_cma_data_reg_data_in = bubble_join_i_mul6_triangular31_ma3_cma_q;
    assign bubble_out_i_mul6_triangular31_ma3_cma_data_reg_valid_in_bitsignaltemp = bubble_out_i_mul6_triangular31_ma3_cma_data_reg_valid_in[0];
    assign bubble_out_i_mul6_triangular31_ma3_cma_data_reg_stall_in_bitsignaltemp = bubble_out_i_mul6_triangular31_ma3_cma_data_reg_stall_in[0];
    assign bubble_out_i_mul6_triangular31_ma3_cma_data_reg_valid_out[0] = bubble_out_i_mul6_triangular31_ma3_cma_data_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_mul6_triangular31_ma3_cma_data_reg_stall_out[0] = bubble_out_i_mul6_triangular31_ma3_cma_data_reg_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(1),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(1),
        .DATA_WIDTH(33),
        .IMPL("zl_reg")
    ) thebubble_out_i_mul6_triangular31_ma3_cma_data_reg (
        .valid_in(bubble_out_i_mul6_triangular31_ma3_cma_data_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_mul6_triangular31_ma3_cma_data_reg_stall_in_bitsignaltemp),
        .data_in(bubble_join_i_mul6_triangular31_ma3_cma_q),
        .valid_out(bubble_out_i_mul6_triangular31_ma3_cma_data_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_mul6_triangular31_ma3_cma_data_reg_stall_out_bitsignaltemp),
        .data_out(bubble_out_i_mul6_triangular31_ma3_cma_data_reg_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul6_triangular31_im8_cma(CHAINMULTADD,212)@110 + 2
    assign i_mul6_triangular31_im8_cma_reset = ~ (resetn);
    assign i_mul6_triangular31_im8_cma_ena0 = SE_i_mul6_triangular31_im0_cma_backEN[0];
    assign i_mul6_triangular31_im8_cma_ena1 = i_mul6_triangular31_im8_cma_ena0;
    assign i_mul6_triangular31_im8_cma_p[0] = i_mul6_triangular31_im8_cma_a0[0] * i_mul6_triangular31_im8_cma_c0[0];
    assign i_mul6_triangular31_im8_cma_u[0] = i_mul6_triangular31_im8_cma_p[0][27:0];
    assign i_mul6_triangular31_im8_cma_w[0] = i_mul6_triangular31_im8_cma_u[0];
    assign i_mul6_triangular31_im8_cma_x[0] = i_mul6_triangular31_im8_cma_w[0];
    assign i_mul6_triangular31_im8_cma_y[0] = i_mul6_triangular31_im8_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul6_triangular31_im8_cma_a0 <= '{default: '0};
            i_mul6_triangular31_im8_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul6_triangular31_im8_cma_ena0 == 1'b1)
            begin
                i_mul6_triangular31_im8_cma_a0[0] <= i_mul6_triangular31_bs1_merged_bit_select_c;
                i_mul6_triangular31_im8_cma_c0[0] <= i_mul6_triangular31_bs2_merged_bit_select_c;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul6_triangular31_im8_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul6_triangular31_im8_cma_ena1 == 1'b1)
            begin
                i_mul6_triangular31_im8_cma_s[0] <= i_mul6_triangular31_im8_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(28), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul6_triangular31_im8_cma_delay ( .xin(i_mul6_triangular31_im8_cma_s[0]), .xout(i_mul6_triangular31_im8_cma_qq), .ena(SE_i_mul6_triangular31_im0_cma_backEN[0]), .clk(clock), .aclr(resetn) );
    assign i_mul6_triangular31_im8_cma_q = $unsigned(i_mul6_triangular31_im8_cma_qq[27:0]);

    // bubble_join_i_mul6_triangular31_im8_cma(BITJOIN,490)
    assign bubble_join_i_mul6_triangular31_im8_cma_q = i_mul6_triangular31_im8_cma_q;

    // bubble_out_i_mul6_triangular31_im8_cma_data_reg(STALLFIFO,763)
    assign bubble_out_i_mul6_triangular31_im8_cma_data_reg_valid_in = SE_i_mul6_triangular31_im0_cma_V1;
    assign bubble_out_i_mul6_triangular31_im8_cma_data_reg_stall_in = SE_out_bubble_out_i_mul6_triangular31_im8_cma_data_backStall;
    assign bubble_out_i_mul6_triangular31_im8_cma_data_reg_data_in = bubble_join_i_mul6_triangular31_im8_cma_q;
    assign bubble_out_i_mul6_triangular31_im8_cma_data_reg_valid_in_bitsignaltemp = bubble_out_i_mul6_triangular31_im8_cma_data_reg_valid_in[0];
    assign bubble_out_i_mul6_triangular31_im8_cma_data_reg_stall_in_bitsignaltemp = bubble_out_i_mul6_triangular31_im8_cma_data_reg_stall_in[0];
    assign bubble_out_i_mul6_triangular31_im8_cma_data_reg_valid_out[0] = bubble_out_i_mul6_triangular31_im8_cma_data_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_mul6_triangular31_im8_cma_data_reg_stall_out[0] = bubble_out_i_mul6_triangular31_im8_cma_data_reg_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(1),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(1),
        .DATA_WIDTH(28),
        .IMPL("zl_reg")
    ) thebubble_out_i_mul6_triangular31_im8_cma_data_reg (
        .valid_in(bubble_out_i_mul6_triangular31_im8_cma_data_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_mul6_triangular31_im8_cma_data_reg_stall_in_bitsignaltemp),
        .data_in(bubble_join_i_mul6_triangular31_im8_cma_q),
        .valid_out(bubble_out_i_mul6_triangular31_im8_cma_data_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_mul6_triangular31_im8_cma_data_reg_stall_out_bitsignaltemp),
        .data_out(bubble_out_i_mul6_triangular31_im8_cma_data_reg_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul6_triangular31_im0_cma(CHAINMULTADD,211)@110 + 2
    assign i_mul6_triangular31_im0_cma_reset = ~ (resetn);
    assign i_mul6_triangular31_im0_cma_ena0 = SE_i_mul6_triangular31_im0_cma_backEN[0];
    assign i_mul6_triangular31_im0_cma_ena1 = i_mul6_triangular31_im0_cma_ena0;
    assign i_mul6_triangular31_im0_cma_p[0] = i_mul6_triangular31_im0_cma_a0[0] * i_mul6_triangular31_im0_cma_c0[0];
    assign i_mul6_triangular31_im0_cma_u[0] = i_mul6_triangular31_im0_cma_p[0][35:0];
    assign i_mul6_triangular31_im0_cma_w[0] = i_mul6_triangular31_im0_cma_u[0];
    assign i_mul6_triangular31_im0_cma_x[0] = i_mul6_triangular31_im0_cma_w[0];
    assign i_mul6_triangular31_im0_cma_y[0] = i_mul6_triangular31_im0_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul6_triangular31_im0_cma_a0 <= '{default: '0};
            i_mul6_triangular31_im0_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul6_triangular31_im0_cma_ena0 == 1'b1)
            begin
                i_mul6_triangular31_im0_cma_a0[0] <= i_mul6_triangular31_bs1_merged_bit_select_b;
                i_mul6_triangular31_im0_cma_c0[0] <= i_mul6_triangular31_bs2_merged_bit_select_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul6_triangular31_im0_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul6_triangular31_im0_cma_ena1 == 1'b1)
            begin
                i_mul6_triangular31_im0_cma_s[0] <= i_mul6_triangular31_im0_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul6_triangular31_im0_cma_delay ( .xin(i_mul6_triangular31_im0_cma_s[0]), .xout(i_mul6_triangular31_im0_cma_qq), .ena(SE_i_mul6_triangular31_im0_cma_backEN[0]), .clk(clock), .aclr(resetn) );
    assign i_mul6_triangular31_im0_cma_q = $unsigned(i_mul6_triangular31_im0_cma_qq[35:0]);

    // bubble_join_i_mul6_triangular31_im0_cma(BITJOIN,487)
    assign bubble_join_i_mul6_triangular31_im0_cma_q = i_mul6_triangular31_im0_cma_q;

    // bubble_out_i_mul6_triangular31_im0_cma_data_reg(STALLFIFO,762)
    assign bubble_out_i_mul6_triangular31_im0_cma_data_reg_valid_in = SE_i_mul6_triangular31_im0_cma_V0;
    assign bubble_out_i_mul6_triangular31_im0_cma_data_reg_stall_in = SE_out_bubble_out_i_mul6_triangular31_im0_cma_data_backStall;
    assign bubble_out_i_mul6_triangular31_im0_cma_data_reg_data_in = bubble_join_i_mul6_triangular31_im0_cma_q;
    assign bubble_out_i_mul6_triangular31_im0_cma_data_reg_valid_in_bitsignaltemp = bubble_out_i_mul6_triangular31_im0_cma_data_reg_valid_in[0];
    assign bubble_out_i_mul6_triangular31_im0_cma_data_reg_stall_in_bitsignaltemp = bubble_out_i_mul6_triangular31_im0_cma_data_reg_stall_in[0];
    assign bubble_out_i_mul6_triangular31_im0_cma_data_reg_valid_out[0] = bubble_out_i_mul6_triangular31_im0_cma_data_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_mul6_triangular31_im0_cma_data_reg_stall_out[0] = bubble_out_i_mul6_triangular31_im0_cma_data_reg_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(1),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(1),
        .DATA_WIDTH(36),
        .IMPL("zl_reg")
    ) thebubble_out_i_mul6_triangular31_im0_cma_data_reg (
        .valid_in(bubble_out_i_mul6_triangular31_im0_cma_data_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_mul6_triangular31_im0_cma_data_reg_stall_in_bitsignaltemp),
        .data_in(bubble_join_i_mul6_triangular31_im0_cma_q),
        .valid_out(bubble_out_i_mul6_triangular31_im0_cma_data_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_mul6_triangular31_im0_cma_data_reg_stall_out_bitsignaltemp),
        .data_out(bubble_out_i_mul6_triangular31_im0_cma_data_reg_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_lm1_triangular29(STALLENABLE,524)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_lm1_triangular29_V0 = SE_out_i_llvm_fpga_mem_lm1_triangular29_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_lm1_triangular29_backStall = SE_i_mul6_triangular31_im0_cma_backStall | ~ (SE_out_i_llvm_fpga_mem_lm1_triangular29_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_lm1_triangular29_wireValid = i_llvm_fpga_mem_lm1_triangular29_out_o_valid;

    // SE_i_mul6_triangular31_im0_cma(STALLENABLE,577)
    // Valid signal propagation
    assign SE_i_mul6_triangular31_im0_cma_V0 = SE_i_mul6_triangular31_im0_cma_R_v_0;
    assign SE_i_mul6_triangular31_im0_cma_V1 = SE_i_mul6_triangular31_im0_cma_R_v_1;
    assign SE_i_mul6_triangular31_im0_cma_V2 = SE_i_mul6_triangular31_im0_cma_R_v_2;
    // Stall signal propagation
    assign SE_i_mul6_triangular31_im0_cma_s_tv_0 = bubble_out_i_mul6_triangular31_im0_cma_data_reg_stall_out & SE_i_mul6_triangular31_im0_cma_R_v_0;
    assign SE_i_mul6_triangular31_im0_cma_s_tv_1 = bubble_out_i_mul6_triangular31_im8_cma_data_reg_stall_out & SE_i_mul6_triangular31_im0_cma_R_v_1;
    assign SE_i_mul6_triangular31_im0_cma_s_tv_2 = bubble_out_i_mul6_triangular31_ma3_cma_data_reg_stall_out & SE_i_mul6_triangular31_im0_cma_R_v_2;
    // Backward Enable generation
    assign SE_i_mul6_triangular31_im0_cma_or0 = SE_i_mul6_triangular31_im0_cma_s_tv_0;
    assign SE_i_mul6_triangular31_im0_cma_or1 = SE_i_mul6_triangular31_im0_cma_s_tv_1 | SE_i_mul6_triangular31_im0_cma_or0;
    assign SE_i_mul6_triangular31_im0_cma_backEN = ~ (SE_i_mul6_triangular31_im0_cma_s_tv_2 | SE_i_mul6_triangular31_im0_cma_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mul6_triangular31_im0_cma_and0 = SE_out_i_llvm_fpga_mem_lm1_triangular29_V0 & SE_i_mul6_triangular31_im0_cma_backEN;
    assign SE_i_mul6_triangular31_im0_cma_v_s_0 = SE_out_i_llvm_fpga_mem_lm62_triangular22_V0 & SE_i_mul6_triangular31_im0_cma_and0;
    // Backward Stall generation
    assign SE_i_mul6_triangular31_im0_cma_backStall = ~ (SE_i_mul6_triangular31_im0_cma_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mul6_triangular31_im0_cma_R_s_0 <= 1'b0;
            SE_i_mul6_triangular31_im0_cma_R_v_0 <= 1'b0;
            SE_i_mul6_triangular31_im0_cma_R_v_1 <= 1'b0;
            SE_i_mul6_triangular31_im0_cma_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_i_mul6_triangular31_im0_cma_backEN == 1'b1)
            begin
                SE_i_mul6_triangular31_im0_cma_R_s_0 <= SE_i_mul6_triangular31_im0_cma_v_s_0;
            end

            if (SE_i_mul6_triangular31_im0_cma_backEN == 1'b0)
            begin
                SE_i_mul6_triangular31_im0_cma_R_v_0 <= SE_i_mul6_triangular31_im0_cma_R_v_0 & SE_i_mul6_triangular31_im0_cma_s_tv_0;
            end
            else
            begin
                SE_i_mul6_triangular31_im0_cma_R_v_0 <= SE_i_mul6_triangular31_im0_cma_R_s_0;
            end

            if (SE_i_mul6_triangular31_im0_cma_backEN == 1'b0)
            begin
                SE_i_mul6_triangular31_im0_cma_R_v_1 <= SE_i_mul6_triangular31_im0_cma_R_v_1 & SE_i_mul6_triangular31_im0_cma_s_tv_1;
            end
            else
            begin
                SE_i_mul6_triangular31_im0_cma_R_v_1 <= SE_i_mul6_triangular31_im0_cma_R_s_0;
            end

            if (SE_i_mul6_triangular31_im0_cma_backEN == 1'b0)
            begin
                SE_i_mul6_triangular31_im0_cma_R_v_2 <= SE_i_mul6_triangular31_im0_cma_R_v_2 & SE_i_mul6_triangular31_im0_cma_s_tv_2;
            end
            else
            begin
                SE_i_mul6_triangular31_im0_cma_R_v_2 <= SE_i_mul6_triangular31_im0_cma_R_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_mem_lm62_triangular22(STALLENABLE,526)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_lm62_triangular22_V0 = SE_out_i_llvm_fpga_mem_lm62_triangular22_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_lm62_triangular22_backStall = SE_i_mul6_triangular31_im0_cma_backStall | ~ (SE_out_i_llvm_fpga_mem_lm62_triangular22_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_lm62_triangular22_wireValid = i_llvm_fpga_mem_lm62_triangular22_out_o_valid;

    // SR_SE_in_i_llvm_fpga_mem_lm62_triangular22(STALLREG,781)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_in_i_llvm_fpga_mem_lm62_triangular22_r_valid <= 1'b0;
            SR_SE_in_i_llvm_fpga_mem_lm62_triangular22_r_data0 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_in_i_llvm_fpga_mem_lm62_triangular22_r_data1 <= 1'bx;
            SR_SE_in_i_llvm_fpga_mem_lm62_triangular22_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_in_i_llvm_fpga_mem_lm62_triangular22_r_valid <= SE_in_i_llvm_fpga_mem_lm62_triangular22_backStall & (SR_SE_in_i_llvm_fpga_mem_lm62_triangular22_r_valid | SR_SE_in_i_llvm_fpga_mem_lm62_triangular22_i_valid);

            if (SR_SE_in_i_llvm_fpga_mem_lm62_triangular22_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_in_i_llvm_fpga_mem_lm62_triangular22_r_data0 <= $unsigned(bubble_select_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_b);
                SR_SE_in_i_llvm_fpga_mem_lm62_triangular22_r_data1 <= i_memdep_phi4_or_triangular17_q;
                SR_SE_in_i_llvm_fpga_mem_lm62_triangular22_r_data2 <= $unsigned(redist21_i_first_cleanup_xor_or_triangular20_q_6_4_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_in_i_llvm_fpga_mem_lm62_triangular22_and0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular5_V1;
    assign SR_SE_in_i_llvm_fpga_mem_lm62_triangular22_and1 = SE_redist21_i_first_cleanup_xor_or_triangular20_q_6_4_V1 & SR_SE_in_i_llvm_fpga_mem_lm62_triangular22_and0;
    assign SR_SE_in_i_llvm_fpga_mem_lm62_triangular22_i_valid = SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_V0 & SR_SE_in_i_llvm_fpga_mem_lm62_triangular22_and1;
    // Stall signal propagation
    assign SR_SE_in_i_llvm_fpga_mem_lm62_triangular22_backStall = SR_SE_in_i_llvm_fpga_mem_lm62_triangular22_r_valid | ~ (SR_SE_in_i_llvm_fpga_mem_lm62_triangular22_i_valid);

    // Valid
    assign SR_SE_in_i_llvm_fpga_mem_lm62_triangular22_V = SR_SE_in_i_llvm_fpga_mem_lm62_triangular22_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_mem_lm62_triangular22_r_valid : SR_SE_in_i_llvm_fpga_mem_lm62_triangular22_i_valid;

    // Data0
    assign SR_SE_in_i_llvm_fpga_mem_lm62_triangular22_D0 = SR_SE_in_i_llvm_fpga_mem_lm62_triangular22_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_mem_lm62_triangular22_r_data0 : bubble_select_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index41_pop25_triangular8_b;
    // Data1
    assign SR_SE_in_i_llvm_fpga_mem_lm62_triangular22_D1 = SR_SE_in_i_llvm_fpga_mem_lm62_triangular22_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_mem_lm62_triangular22_r_data1 : i_memdep_phi4_or_triangular17_q;
    // Data2
    assign SR_SE_in_i_llvm_fpga_mem_lm62_triangular22_D2 = SR_SE_in_i_llvm_fpga_mem_lm62_triangular22_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_mem_lm62_triangular22_r_data2 : redist21_i_first_cleanup_xor_or_triangular20_q_6_4_q;

    // i_llvm_fpga_mem_lm62_triangular22(BLACKBOX,71)@78
    // in in_i_stall@20000000
    // out out_lm62_triangular_avm_address@20000000
    // out out_lm62_triangular_avm_burstcount@20000000
    // out out_lm62_triangular_avm_byteenable@20000000
    // out out_lm62_triangular_avm_enable@20000000
    // out out_lm62_triangular_avm_read@20000000
    // out out_lm62_triangular_avm_write@20000000
    // out out_lm62_triangular_avm_writedata@20000000
    // out out_o_readdata@110
    // out out_o_stall@20000000
    // out out_o_valid@110
    triangular_i_llvm_fpga_mem_lm62_0 thei_llvm_fpga_mem_lm62_triangular22 (
        .in_flush(in_flush),
        .in_i_address(SR_SE_in_i_llvm_fpga_mem_lm62_triangular22_D0),
        .in_i_dependence(SR_SE_in_i_llvm_fpga_mem_lm62_triangular22_D1),
        .in_i_predicate(SR_SE_in_i_llvm_fpga_mem_lm62_triangular22_D2),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm62_triangular22_backStall),
        .in_i_valid(SE_in_i_llvm_fpga_mem_lm62_triangular22_V0),
        .in_lm62_triangular_avm_readdata(in_lm62_triangular_avm_readdata),
        .in_lm62_triangular_avm_readdatavalid(in_lm62_triangular_avm_readdatavalid),
        .in_lm62_triangular_avm_waitrequest(in_lm62_triangular_avm_waitrequest),
        .in_lm62_triangular_avm_writeack(in_lm62_triangular_avm_writeack),
        .out_lm62_triangular_avm_address(i_llvm_fpga_mem_lm62_triangular22_out_lm62_triangular_avm_address),
        .out_lm62_triangular_avm_burstcount(i_llvm_fpga_mem_lm62_triangular22_out_lm62_triangular_avm_burstcount),
        .out_lm62_triangular_avm_byteenable(i_llvm_fpga_mem_lm62_triangular22_out_lm62_triangular_avm_byteenable),
        .out_lm62_triangular_avm_enable(i_llvm_fpga_mem_lm62_triangular22_out_lm62_triangular_avm_enable),
        .out_lm62_triangular_avm_read(i_llvm_fpga_mem_lm62_triangular22_out_lm62_triangular_avm_read),
        .out_lm62_triangular_avm_write(i_llvm_fpga_mem_lm62_triangular22_out_lm62_triangular_avm_write),
        .out_lm62_triangular_avm_writedata(i_llvm_fpga_mem_lm62_triangular22_out_lm62_triangular_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm62_triangular22_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm62_triangular22_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm62_triangular22_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,18)
    assign out_lm62_triangular_avm_address = i_llvm_fpga_mem_lm62_triangular22_out_lm62_triangular_avm_address;
    assign out_lm62_triangular_avm_enable = i_llvm_fpga_mem_lm62_triangular22_out_lm62_triangular_avm_enable;
    assign out_lm62_triangular_avm_read = i_llvm_fpga_mem_lm62_triangular22_out_lm62_triangular_avm_read;
    assign out_lm62_triangular_avm_write = i_llvm_fpga_mem_lm62_triangular22_out_lm62_triangular_avm_write;
    assign out_lm62_triangular_avm_writedata = i_llvm_fpga_mem_lm62_triangular22_out_lm62_triangular_avm_writedata;
    assign out_lm62_triangular_avm_byteenable = i_llvm_fpga_mem_lm62_triangular22_out_lm62_triangular_avm_byteenable;
    assign out_lm62_triangular_avm_burstcount = i_llvm_fpga_mem_lm62_triangular22_out_lm62_triangular_avm_burstcount;

    // bubble_join_coalesced_delay_1_fifo(BITJOIN,499)
    assign bubble_join_coalesced_delay_1_fifo_q = coalesced_delay_1_fifo_data_out;

    // bubble_select_coalesced_delay_1_fifo(BITSELECT,500)
    assign bubble_select_coalesced_delay_1_fifo_b = $unsigned(bubble_join_coalesced_delay_1_fifo_q[34:0]);

    // sel_for_coalesced_delay_1(BITSELECT,380)
    assign sel_for_coalesced_delay_1_b = $unsigned(bubble_select_coalesced_delay_1_fifo_b[31:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(bubble_select_coalesced_delay_1_fifo_b[32:32]);
    assign sel_for_coalesced_delay_1_d = $unsigned(bubble_select_coalesced_delay_1_fifo_b[33:33]);
    assign sel_for_coalesced_delay_1_e = $unsigned(bubble_select_coalesced_delay_1_fifo_b[34:34]);

    // dupName_0_sync_out_x(GPOUT,20)@146
    assign out_c0_exe594 = sel_for_coalesced_delay_1_c;
    assign out_c0_exe695 = sel_for_coalesced_delay_1_d;
    assign out_c0_exe796 = sel_for_coalesced_delay_1_b;
    assign out_c0_exe897 = sel_for_coalesced_delay_1_e;
    assign out_memdep = bubble_select_i_llvm_fpga_mem_memdep_triangular33_b;
    assign out_valid_out = SE_out_coalesced_delay_1_fifo_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,22)
    assign out_lm1_triangular_avm_address = i_llvm_fpga_mem_lm1_triangular29_out_lm1_triangular_avm_address;
    assign out_lm1_triangular_avm_enable = i_llvm_fpga_mem_lm1_triangular29_out_lm1_triangular_avm_enable;
    assign out_lm1_triangular_avm_read = i_llvm_fpga_mem_lm1_triangular29_out_lm1_triangular_avm_read;
    assign out_lm1_triangular_avm_write = i_llvm_fpga_mem_lm1_triangular29_out_lm1_triangular_avm_write;
    assign out_lm1_triangular_avm_writedata = i_llvm_fpga_mem_lm1_triangular29_out_lm1_triangular_avm_writedata;
    assign out_lm1_triangular_avm_byteenable = i_llvm_fpga_mem_lm1_triangular29_out_lm1_triangular_avm_byteenable;
    assign out_lm1_triangular_avm_burstcount = i_llvm_fpga_mem_lm1_triangular29_out_lm1_triangular_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,24)
    assign out_lm83_triangular_avm_address = i_llvm_fpga_mem_lm83_triangular30_out_lm83_triangular_avm_address;
    assign out_lm83_triangular_avm_enable = i_llvm_fpga_mem_lm83_triangular30_out_lm83_triangular_avm_enable;
    assign out_lm83_triangular_avm_read = i_llvm_fpga_mem_lm83_triangular30_out_lm83_triangular_avm_read;
    assign out_lm83_triangular_avm_write = i_llvm_fpga_mem_lm83_triangular30_out_lm83_triangular_avm_write;
    assign out_lm83_triangular_avm_writedata = i_llvm_fpga_mem_lm83_triangular30_out_lm83_triangular_avm_writedata;
    assign out_lm83_triangular_avm_byteenable = i_llvm_fpga_mem_lm83_triangular30_out_lm83_triangular_avm_byteenable;
    assign out_lm83_triangular_avm_burstcount = i_llvm_fpga_mem_lm83_triangular30_out_lm83_triangular_avm_burstcount;

    // dupName_3_ext_sig_sync_out_x(GPOUT,25)
    assign out_memdep_triangular_avm_address = i_llvm_fpga_mem_memdep_triangular33_out_memdep_triangular_avm_address;
    assign out_memdep_triangular_avm_enable = i_llvm_fpga_mem_memdep_triangular33_out_memdep_triangular_avm_enable;
    assign out_memdep_triangular_avm_read = i_llvm_fpga_mem_memdep_triangular33_out_memdep_triangular_avm_read;
    assign out_memdep_triangular_avm_write = i_llvm_fpga_mem_memdep_triangular33_out_memdep_triangular_avm_write;
    assign out_memdep_triangular_avm_writedata = i_llvm_fpga_mem_memdep_triangular33_out_memdep_triangular_avm_writedata;
    assign out_memdep_triangular_avm_byteenable = i_llvm_fpga_mem_memdep_triangular33_out_memdep_triangular_avm_byteenable;
    assign out_memdep_triangular_avm_burstcount = i_llvm_fpga_mem_memdep_triangular33_out_memdep_triangular_avm_burstcount;

    // dupName_4_ext_sig_sync_out_x(GPOUT,26)
    assign out_lsu_memdep_o_active = i_llvm_fpga_mem_memdep_triangular33_out_lsu_memdep_o_active;

    // ext_sig_sync_out(GPOUT,63)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_triangular6_exiting_valid_out = i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_triangular6_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_triangular6_exiting_stall_out = i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_triangular6_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,141)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body4_triangulars_c0_enter738_triangular1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,148)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
