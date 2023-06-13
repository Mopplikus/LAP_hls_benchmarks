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

// SystemVerilog created from bb_triangular_B1_start_stall_region
// Created for function/kernel triangular
// SystemVerilog created on Tue Jun 13 03:05:47 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module triangular_bb_B1_start_stall_region (
    input wire [0:0] in_wgl_6_enter_exit_valid_in,
    input wire [0:0] in_wgl_6_enter_exit_stall_in,
    output wire [0:0] out_iord_bl_call_triangular_o_fifoready,
    output wire [0:0] out_iord_bl_call_triangular_o_fifoalmost_full,
    output wire [31:0] out_intel_reserved_ffwd_1_0,
    output wire [31:0] out_c1_exe1,
    output wire [31:0] out_reorder_limiter_enter,
    output wire [0:0] out_valid_out,
    output wire [0:0] out_wgl_6_enter_exit_valid_out,
    output wire [0:0] out_wgl_6_enter_exit_stall_out,
    output wire [0:0] out_intel_reserved_ffwd_2_0,
    output wire [63:0] out_intel_reserved_ffwd_3_0,
    output wire [31:0] out_intel_reserved_ffwd_4_0,
    output wire [32:0] out_intel_reserved_ffwd_5_0,
    input wire [191:0] in_iord_bl_call_triangular_i_fifodata,
    input wire [0:0] in_iord_bl_call_triangular_i_fifovalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going32_triangular2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going32_triangular2_exiting_stall_out,
    input wire [0:0] in_feedback_in_1,
    output wire [0:0] out_feedback_stall_out_1,
    input wire [0:0] in_feedback_valid_in_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    output wire [63:0] out_intel_reserved_ffwd_0_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked34,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] bgTrunc_i_unnamed_triangular14_sel_x_b;
    wire [31:0] bgTrunc_i_unnamed_triangular15_sel_x_b;
    wire [31:0] bgTrunc_i_unnamed_triangular23_sel_x_b;
    wire [32:0] bgTrunc_i_unnamed_triangular25_sel_x_b;
    wire [31:0] dupName_0_c_i32_031_recast_x_q;
    wire [63:0] i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_o_data_0_tpl;
    wire [63:0] i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_o_data_1_tpl;
    wire [31:0] i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_o_data_2_tpl;
    wire [0:0] i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_iord_bl_call_triangular_o_fifoalmost_full;
    wire [0:0] i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_iord_bl_call_triangular_o_fifoready;
    wire [0:0] i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_o_stall;
    wire [0:0] i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_c0_exit_1_tpl;
    wire [0:0] i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_c0_exit_2_tpl;
    wire [0:0] i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going32_triangular2_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going32_triangular2_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_pipeline_valid_out;
    wire [31:0] i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl;
    wire [0:0] i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_o_valid;
    wire [32:0] i_unnamed_triangular24_sel_x_b;
    wire [0:0] triangular_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] triangular_B1_start_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] triangular_B1_start_merge_reg_aunroll_x_out_valid_out;
    wire [31:0] c_i32_133_q;
    wire [31:0] c_i32_232_q;
    wire [32:0] c_i33_134_q;
    wire [33:0] i_cmp34_triangular12_a;
    wire [33:0] i_cmp34_triangular12_b;
    logic [33:0] i_cmp34_triangular12_o;
    wire [0:0] i_cmp34_triangular12_c;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_triangular5_triangular18_out_intel_reserved_ffwd_2_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_triangular5_triangular18_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_triangular5_triangular18_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_triangular3_triangular16_out_intel_reserved_ffwd_1_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_triangular3_triangular16_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_triangular3_triangular16_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular19_out_intel_reserved_ffwd_4_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular19_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular19_out_valid_out;
    wire [32:0] i_llvm_fpga_ffwd_source_i33_unnamed_triangular7_triangular26_out_intel_reserved_ffwd_5_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i33_unnamed_triangular7_triangular26_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i33_unnamed_triangular7_triangular26_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_p1025i32_unnamed_triangular4_triangular17_out_intel_reserved_ffwd_3_0;
    wire [0:0] i_llvm_fpga_ffwd_source_p1025i32_unnamed_triangular4_triangular17_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_p1025i32_unnamed_triangular4_triangular17_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_out_intel_reserved_ffwd_0_0;
    wire [0:0] i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_out_feedback_stall_out_1;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_out_valid_out;
    wire [31:0] i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_out_o_data;
    wire [0:0] i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_out_o_stall;
    wire [0:0] i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_out_o_valid;
    wire [0:0] i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_out_wgl_6_enter_exit_stall_out;
    wire [0:0] i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_out_wgl_6_enter_exit_valid_out;
    wire [0:0] i_smin9_triangular22_s;
    reg [31:0] i_smin9_triangular22_q;
    wire [32:0] i_unnamed_triangular14_a;
    wire [32:0] i_unnamed_triangular14_b;
    logic [32:0] i_unnamed_triangular14_o;
    wire [32:0] i_unnamed_triangular14_q;
    wire [32:0] i_unnamed_triangular15_a;
    wire [32:0] i_unnamed_triangular15_b;
    logic [32:0] i_unnamed_triangular15_o;
    wire [32:0] i_unnamed_triangular15_q;
    wire [32:0] i_unnamed_triangular23_a;
    wire [32:0] i_unnamed_triangular23_b;
    logic [32:0] i_unnamed_triangular23_o;
    wire [32:0] i_unnamed_triangular23_q;
    wire [32:0] i_unnamed_triangular24_vt_join_q;
    wire [31:0] i_unnamed_triangular24_vt_select_31_b;
    wire [33:0] i_unnamed_triangular25_a;
    wire [33:0] i_unnamed_triangular25_b;
    logic [33:0] i_unnamed_triangular25_o;
    wire [33:0] i_unnamed_triangular25_q;
    wire [0:0] i_unnamed_triangular20_cmp_sign_q;
    reg [31:0] redist0_i_unnamed_triangular24_vt_select_31_b_1_0_q;
    reg [0:0] redist1_i_cmp34_triangular12_c_3_0_q;
    reg [0:0] redist1_i_cmp34_triangular12_c_3_1_q;
    reg [31:0] redist2_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_q;
    reg [31:0] redist3_bgTrunc_i_unnamed_triangular15_sel_x_b_1_0_q;
    reg [31:0] redist4_bgTrunc_i_unnamed_triangular15_sel_x_b_2_0_q;
    wire [159:0] bubble_join_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_q;
    wire [63:0] bubble_select_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_b;
    wire [63:0] bubble_select_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_c;
    wire [31:0] bubble_select_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_d;
    wire [1:0] bubble_join_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_c;
    wire [31:0] bubble_join_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_b;
    wire [0:0] bubble_join_triangular_B1_start_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_triangular_B1_start_merge_reg_aunroll_x_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_b;
    wire [31:0] bubble_join_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_q;
    wire [31:0] bubble_select_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_b;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_wireValid;
    wire [0:0] SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_wireStall;
    wire [0:0] SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_StallValid;
    wire [0:0] SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_toReg0;
    reg [0:0] SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_consumed0;
    wire [0:0] SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_toReg1;
    reg [0:0] SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_consumed1;
    wire [0:0] SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_toReg2;
    reg [0:0] SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_consumed2;
    wire [0:0] SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_toReg3;
    reg [0:0] SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_fromReg3;
    wire [0:0] SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_consumed3;
    wire [0:0] SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_toReg4;
    reg [0:0] SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_fromReg4;
    wire [0:0] SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_consumed4;
    wire [0:0] SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_or0;
    wire [0:0] SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_or1;
    wire [0:0] SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_or2;
    wire [0:0] SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_or3;
    wire [0:0] SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_backStall;
    wire [0:0] SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_V0;
    wire [0:0] SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_V1;
    wire [0:0] SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_V2;
    wire [0:0] SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_V3;
    wire [0:0] SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_V4;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_V1;
    wire [0:0] SE_out_triangular_B1_start_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_triangular_B1_start_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_triangular_B1_start_merge_reg_aunroll_x_V0;
    reg [0:0] SE_i_cmp34_triangular12_R_v_0;
    wire [0:0] SE_i_cmp34_triangular12_v_s_0;
    wire [0:0] SE_i_cmp34_triangular12_s_tv_0;
    wire [0:0] SE_i_cmp34_triangular12_backEN;
    wire [0:0] SE_i_cmp34_triangular12_backStall;
    wire [0:0] SE_i_cmp34_triangular12_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular3_triangular16_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular3_triangular16_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular3_triangular16_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular19_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular19_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular19_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_triangular4_triangular17_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_triangular4_triangular17_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_triangular4_triangular17_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_V0;
    reg [0:0] SE_i_smin9_triangular22_R_v_0;
    wire [0:0] SE_i_smin9_triangular22_v_s_0;
    wire [0:0] SE_i_smin9_triangular22_s_tv_0;
    wire [0:0] SE_i_smin9_triangular22_backEN;
    wire [0:0] SE_i_smin9_triangular22_backStall;
    wire [0:0] SE_i_smin9_triangular22_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    reg [0:0] SE_redist0_i_unnamed_triangular24_vt_select_31_b_1_0_R_v_0;
    reg [0:0] SE_redist0_i_unnamed_triangular24_vt_select_31_b_1_0_R_v_1;
    wire [0:0] SE_redist0_i_unnamed_triangular24_vt_select_31_b_1_0_v_s_0;
    wire [0:0] SE_redist0_i_unnamed_triangular24_vt_select_31_b_1_0_s_tv_0;
    wire [0:0] SE_redist0_i_unnamed_triangular24_vt_select_31_b_1_0_s_tv_1;
    wire [0:0] SE_redist0_i_unnamed_triangular24_vt_select_31_b_1_0_backEN;
    wire [0:0] SE_redist0_i_unnamed_triangular24_vt_select_31_b_1_0_or0;
    wire [0:0] SE_redist0_i_unnamed_triangular24_vt_select_31_b_1_0_backStall;
    wire [0:0] SE_redist0_i_unnamed_triangular24_vt_select_31_b_1_0_V0;
    wire [0:0] SE_redist0_i_unnamed_triangular24_vt_select_31_b_1_0_V1;
    reg [0:0] SE_redist2_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_R_v_0;
    wire [0:0] SE_redist2_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_v_s_0;
    wire [0:0] SE_redist2_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_s_tv_0;
    wire [0:0] SE_redist2_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_backEN;
    wire [0:0] SE_redist2_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_backStall;
    wire [0:0] SE_redist2_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_V0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_1_and0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_1_and1;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_1_and2;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_1_and3;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_1_and4;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_1_and5;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_1_and6;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_1_backStall;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_1_V0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular3_triangular16_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular3_triangular16_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular3_triangular16_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular3_triangular16_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular3_triangular16_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular3_triangular16_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular3_triangular16_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular3_triangular16_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular19_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular19_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular19_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular19_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular19_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular19_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular19_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular19_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_triangular4_triangular17_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_triangular4_triangular17_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_triangular4_triangular17_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_triangular4_triangular17_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_triangular4_triangular17_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_triangular4_triangular17_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_triangular4_triangular17_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_triangular4_triangular17_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_1_reg_stall_out_bitsignaltemp;
    wire [0:0] SR_SE_i_smin9_triangular22_i_valid;
    reg [0:0] SR_SE_i_smin9_triangular22_r_valid;
    reg [0:0] SR_SE_i_smin9_triangular22_r_data0;
    reg [31:0] SR_SE_i_smin9_triangular22_r_data1;
    reg [31:0] SR_SE_i_smin9_triangular22_r_data2;
    reg [0:0] SR_SE_i_smin9_triangular22_r_data3;
    wire [0:0] SR_SE_i_smin9_triangular22_backStall;
    wire [0:0] SR_SE_i_smin9_triangular22_V;
    wire [0:0] SR_SE_i_smin9_triangular22_D0;
    wire [31:0] SR_SE_i_smin9_triangular22_D1;
    wire [31:0] SR_SE_i_smin9_triangular22_D2;
    wire [0:0] SR_SE_i_smin9_triangular22_D3;


    // bubble_join_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x(BITJOIN,111)
    assign bubble_join_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_q = {i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_o_data_2_tpl, i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_o_data_1_tpl, i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_o_data_0_tpl};

    // bubble_select_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x(BITSELECT,112)
    assign bubble_select_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_b = $unsigned(bubble_join_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_q[63:0]);
    assign bubble_select_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_c = $unsigned(bubble_join_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_q[127:64]);
    assign bubble_select_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_d = $unsigned(bubble_join_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_q[159:128]);

    // dupName_0_c_i32_031_recast_x(CONSTANT,7)
    assign dupName_0_c_i32_031_recast_x_q = $unsigned(32'b00000000000000000000000000000000);

    // i_cmp34_triangular12(COMPARE,39)@2 + 1
    assign i_cmp34_triangular12_a = $unsigned({{2{dupName_0_c_i32_031_recast_x_q[31]}}, dupName_0_c_i32_031_recast_x_q});
    assign i_cmp34_triangular12_b = $unsigned({{2{bubble_select_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_d[31]}}, bubble_select_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_d});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp34_triangular12_o <= 34'b0;
        end
        else if (SE_i_cmp34_triangular12_backEN == 1'b1)
        begin
            i_cmp34_triangular12_o <= $unsigned($signed(i_cmp34_triangular12_a) - $signed(i_cmp34_triangular12_b));
        end
    end
    assign i_cmp34_triangular12_c[0] = i_cmp34_triangular12_o[33];

    // c_i32_133(CONSTANT,29)
    assign c_i32_133_q = $unsigned(32'b11111111111111111111111111111111);

    // i_unnamed_triangular15(ADD,50)@2
    assign i_unnamed_triangular15_a = {1'b0, bubble_select_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_d};
    assign i_unnamed_triangular15_b = {1'b0, c_i32_133_q};
    assign i_unnamed_triangular15_o = $unsigned(i_unnamed_triangular15_a) + $unsigned(i_unnamed_triangular15_b);
    assign i_unnamed_triangular15_q = i_unnamed_triangular15_o[32:0];

    // bgTrunc_i_unnamed_triangular15_sel_x(BITSELECT,3)@2
    assign bgTrunc_i_unnamed_triangular15_sel_x_b = i_unnamed_triangular15_q[31:0];

    // redist3_bgTrunc_i_unnamed_triangular15_sel_x_b_1_0(REG,108)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_bgTrunc_i_unnamed_triangular15_sel_x_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_i_cmp34_triangular12_backEN == 1'b1)
        begin
            redist3_bgTrunc_i_unnamed_triangular15_sel_x_b_1_0_q <= $unsigned(bgTrunc_i_unnamed_triangular15_sel_x_b);
        end
    end

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_unnamed_triangular20_cmp_sign(LOGICAL,97)@3
    assign i_unnamed_triangular20_cmp_sign_q = $unsigned(redist3_bgTrunc_i_unnamed_triangular15_sel_x_b_1_0_q[31:31]);

    // SE_i_cmp34_triangular12(STALLENABLE,154)
    // Valid signal propagation
    assign SE_i_cmp34_triangular12_V0 = SE_i_cmp34_triangular12_R_v_0;
    // Stall signal propagation
    assign SE_i_cmp34_triangular12_s_tv_0 = SR_SE_i_smin9_triangular22_backStall & SE_i_cmp34_triangular12_R_v_0;
    // Backward Enable generation
    assign SE_i_cmp34_triangular12_backEN = ~ (SE_i_cmp34_triangular12_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_cmp34_triangular12_v_s_0 = SE_i_cmp34_triangular12_backEN & SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_V0;
    // Backward Stall generation
    assign SE_i_cmp34_triangular12_backStall = ~ (SE_i_cmp34_triangular12_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_cmp34_triangular12_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_cmp34_triangular12_backEN == 1'b0)
            begin
                SE_i_cmp34_triangular12_R_v_0 <= SE_i_cmp34_triangular12_R_v_0 & SE_i_cmp34_triangular12_s_tv_0;
            end
            else
            begin
                SE_i_cmp34_triangular12_R_v_0 <= SE_i_cmp34_triangular12_v_s_0;
            end

        end
    end

    // SR_SE_i_smin9_triangular22(STALLREG,239)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_smin9_triangular22_r_valid <= 1'b0;
            SR_SE_i_smin9_triangular22_r_data0 <= 1'bx;
            SR_SE_i_smin9_triangular22_r_data1 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_smin9_triangular22_r_data2 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_smin9_triangular22_r_data3 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_smin9_triangular22_r_valid <= SE_i_smin9_triangular22_backStall & (SR_SE_i_smin9_triangular22_r_valid | SR_SE_i_smin9_triangular22_i_valid);

            if (SR_SE_i_smin9_triangular22_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_smin9_triangular22_r_data0 <= $unsigned(i_unnamed_triangular20_cmp_sign_q);
                SR_SE_i_smin9_triangular22_r_data1 <= $unsigned(redist3_bgTrunc_i_unnamed_triangular15_sel_x_b_1_0_q);
                SR_SE_i_smin9_triangular22_r_data2 <= $unsigned(redist3_bgTrunc_i_unnamed_triangular15_sel_x_b_1_0_q);
                SR_SE_i_smin9_triangular22_r_data3 <= i_cmp34_triangular12_c;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_smin9_triangular22_i_valid = SE_i_cmp34_triangular12_V0;
    // Stall signal propagation
    assign SR_SE_i_smin9_triangular22_backStall = SR_SE_i_smin9_triangular22_r_valid | ~ (SR_SE_i_smin9_triangular22_i_valid);

    // Valid
    assign SR_SE_i_smin9_triangular22_V = SR_SE_i_smin9_triangular22_r_valid == 1'b1 ? SR_SE_i_smin9_triangular22_r_valid : SR_SE_i_smin9_triangular22_i_valid;

    // Data0
    assign SR_SE_i_smin9_triangular22_D0 = SR_SE_i_smin9_triangular22_r_valid == 1'b1 ? SR_SE_i_smin9_triangular22_r_data0 : i_unnamed_triangular20_cmp_sign_q;
    // Data1
    assign SR_SE_i_smin9_triangular22_D1 = SR_SE_i_smin9_triangular22_r_valid == 1'b1 ? SR_SE_i_smin9_triangular22_r_data1 : redist3_bgTrunc_i_unnamed_triangular15_sel_x_b_1_0_q;
    // Data2
    assign SR_SE_i_smin9_triangular22_D2 = SR_SE_i_smin9_triangular22_r_valid == 1'b1 ? SR_SE_i_smin9_triangular22_r_data2 : redist3_bgTrunc_i_unnamed_triangular15_sel_x_b_1_0_q;
    // Data3
    assign SR_SE_i_smin9_triangular22_D3 = SR_SE_i_smin9_triangular22_r_valid == 1'b1 ? SR_SE_i_smin9_triangular22_r_data3 : i_cmp34_triangular12_c;

    // SE_i_smin9_triangular22(STALLENABLE,171)
    // Valid signal propagation
    assign SE_i_smin9_triangular22_V0 = SE_i_smin9_triangular22_R_v_0;
    // Stall signal propagation
    assign SE_i_smin9_triangular22_s_tv_0 = SE_redist0_i_unnamed_triangular24_vt_select_31_b_1_0_backStall & SE_i_smin9_triangular22_R_v_0;
    // Backward Enable generation
    assign SE_i_smin9_triangular22_backEN = ~ (SE_i_smin9_triangular22_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_smin9_triangular22_v_s_0 = SE_i_smin9_triangular22_backEN & SR_SE_i_smin9_triangular22_V;
    // Backward Stall generation
    assign SE_i_smin9_triangular22_backStall = ~ (SE_i_smin9_triangular22_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_smin9_triangular22_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_smin9_triangular22_backEN == 1'b0)
            begin
                SE_i_smin9_triangular22_R_v_0 <= SE_i_smin9_triangular22_R_v_0 & SE_i_smin9_triangular22_s_tv_0;
            end
            else
            begin
                SE_i_smin9_triangular22_R_v_0 <= SE_i_smin9_triangular22_v_s_0;
            end

        end
    end

    // SE_redist0_i_unnamed_triangular24_vt_select_31_b_1_0(STALLENABLE,181)
    // Valid signal propagation
    assign SE_redist0_i_unnamed_triangular24_vt_select_31_b_1_0_V0 = SE_redist0_i_unnamed_triangular24_vt_select_31_b_1_0_R_v_0;
    assign SE_redist0_i_unnamed_triangular24_vt_select_31_b_1_0_V1 = SE_redist0_i_unnamed_triangular24_vt_select_31_b_1_0_R_v_1;
    // Stall signal propagation
    assign SE_redist0_i_unnamed_triangular24_vt_select_31_b_1_0_s_tv_0 = i_llvm_fpga_ffwd_source_i33_unnamed_triangular7_triangular26_out_stall_out & SE_redist0_i_unnamed_triangular24_vt_select_31_b_1_0_R_v_0;
    assign SE_redist0_i_unnamed_triangular24_vt_select_31_b_1_0_s_tv_1 = i_llvm_fpga_ffwd_source_i1_unnamed_triangular5_triangular18_out_stall_out & SE_redist0_i_unnamed_triangular24_vt_select_31_b_1_0_R_v_1;
    // Backward Enable generation
    assign SE_redist0_i_unnamed_triangular24_vt_select_31_b_1_0_or0 = SE_redist0_i_unnamed_triangular24_vt_select_31_b_1_0_s_tv_0;
    assign SE_redist0_i_unnamed_triangular24_vt_select_31_b_1_0_backEN = ~ (SE_redist0_i_unnamed_triangular24_vt_select_31_b_1_0_s_tv_1 | SE_redist0_i_unnamed_triangular24_vt_select_31_b_1_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_i_unnamed_triangular24_vt_select_31_b_1_0_v_s_0 = SE_redist0_i_unnamed_triangular24_vt_select_31_b_1_0_backEN & SE_i_smin9_triangular22_V0;
    // Backward Stall generation
    assign SE_redist0_i_unnamed_triangular24_vt_select_31_b_1_0_backStall = ~ (SE_redist0_i_unnamed_triangular24_vt_select_31_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_i_unnamed_triangular24_vt_select_31_b_1_0_R_v_0 <= 1'b0;
            SE_redist0_i_unnamed_triangular24_vt_select_31_b_1_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_i_unnamed_triangular24_vt_select_31_b_1_0_backEN == 1'b0)
            begin
                SE_redist0_i_unnamed_triangular24_vt_select_31_b_1_0_R_v_0 <= SE_redist0_i_unnamed_triangular24_vt_select_31_b_1_0_R_v_0 & SE_redist0_i_unnamed_triangular24_vt_select_31_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist0_i_unnamed_triangular24_vt_select_31_b_1_0_R_v_0 <= SE_redist0_i_unnamed_triangular24_vt_select_31_b_1_0_v_s_0;
            end

            if (SE_redist0_i_unnamed_triangular24_vt_select_31_b_1_0_backEN == 1'b0)
            begin
                SE_redist0_i_unnamed_triangular24_vt_select_31_b_1_0_R_v_1 <= SE_redist0_i_unnamed_triangular24_vt_select_31_b_1_0_R_v_1 & SE_redist0_i_unnamed_triangular24_vt_select_31_b_1_0_s_tv_1;
            end
            else
            begin
                SE_redist0_i_unnamed_triangular24_vt_select_31_b_1_0_R_v_1 <= SE_redist0_i_unnamed_triangular24_vt_select_31_b_1_0_v_s_0;
            end

        end
    end

    // redist1_i_cmp34_triangular12_c_3_0(REG,105)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_cmp34_triangular12_c_3_0_q <= $unsigned(1'b0);
        end
        else if (SE_i_smin9_triangular22_backEN == 1'b1)
        begin
            redist1_i_cmp34_triangular12_c_3_0_q <= $unsigned(SR_SE_i_smin9_triangular22_D3);
        end
    end

    // redist1_i_cmp34_triangular12_c_3_1(REG,106)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_cmp34_triangular12_c_3_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist0_i_unnamed_triangular24_vt_select_31_b_1_0_backEN == 1'b1)
        begin
            redist1_i_cmp34_triangular12_c_3_1_q <= $unsigned(redist1_i_cmp34_triangular12_c_3_0_q);
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_triangular5_triangular18(BLACKBOX,40)@5
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_2_0@20000000
    // out out_stall_out@20000000
    triangular_i_llvm_fpga_ffwd_source_i1_unnamed_5_triangular0 thei_llvm_fpga_ffwd_source_i1_unnamed_triangular5_triangular18 (
        .in_predicate_in(GND_q),
        .in_src_data_in_2_0(redist1_i_cmp34_triangular12_c_3_1_q),
        .in_stall_in(SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_1_backStall),
        .in_valid_in(SE_redist0_i_unnamed_triangular24_vt_select_31_b_1_0_V1),
        .out_intel_reserved_ffwd_2_0(i_llvm_fpga_ffwd_source_i1_unnamed_triangular5_triangular18_out_intel_reserved_ffwd_2_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_triangular5_triangular18_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_triangular5_triangular18_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_134(CONSTANT,31)
    assign c_i33_134_q = $unsigned(33'b111111111111111111111111111111111);

    // i_smin9_triangular22(MUX,48)@3 + 1
    assign i_smin9_triangular22_s = SR_SE_i_smin9_triangular22_D0;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_smin9_triangular22_q <= 32'b0;
        end
        else if (SE_i_smin9_triangular22_backEN == 1'b1)
        begin
            unique case (i_smin9_triangular22_s)
                1'b0 : i_smin9_triangular22_q <= dupName_0_c_i32_031_recast_x_q;
                1'b1 : i_smin9_triangular22_q <= SR_SE_i_smin9_triangular22_D1;
                default : i_smin9_triangular22_q <= 32'b0;
            endcase
        end
    end

    // redist4_bgTrunc_i_unnamed_triangular15_sel_x_b_2_0(REG,109)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_bgTrunc_i_unnamed_triangular15_sel_x_b_2_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_i_smin9_triangular22_backEN == 1'b1)
        begin
            redist4_bgTrunc_i_unnamed_triangular15_sel_x_b_2_0_q <= $unsigned(SR_SE_i_smin9_triangular22_D2);
        end
    end

    // i_unnamed_triangular23(SUB,52)@4
    assign i_unnamed_triangular23_a = {1'b0, redist4_bgTrunc_i_unnamed_triangular15_sel_x_b_2_0_q};
    assign i_unnamed_triangular23_b = {1'b0, i_smin9_triangular22_q};
    assign i_unnamed_triangular23_o = $unsigned(i_unnamed_triangular23_a) - $unsigned(i_unnamed_triangular23_b);
    assign i_unnamed_triangular23_q = i_unnamed_triangular23_o[32:0];

    // bgTrunc_i_unnamed_triangular23_sel_x(BITSELECT,4)@4
    assign bgTrunc_i_unnamed_triangular23_sel_x_b = $unsigned(i_unnamed_triangular23_q[31:0]);

    // i_unnamed_triangular24_sel_x(BITSELECT,20)@4
    assign i_unnamed_triangular24_sel_x_b = {1'b0, bgTrunc_i_unnamed_triangular23_sel_x_b[31:0]};

    // i_unnamed_triangular24_vt_select_31(BITSELECT,56)@4
    assign i_unnamed_triangular24_vt_select_31_b = i_unnamed_triangular24_sel_x_b[31:0];

    // redist0_i_unnamed_triangular24_vt_select_31_b_1_0(REG,104)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_unnamed_triangular24_vt_select_31_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist0_i_unnamed_triangular24_vt_select_31_b_1_0_backEN == 1'b1)
        begin
            redist0_i_unnamed_triangular24_vt_select_31_b_1_0_q <= $unsigned(i_unnamed_triangular24_vt_select_31_b);
        end
    end

    // i_unnamed_triangular24_vt_join(BITJOIN,55)@5
    assign i_unnamed_triangular24_vt_join_q = {GND_q, redist0_i_unnamed_triangular24_vt_select_31_b_1_0_q};

    // i_unnamed_triangular25(ADD,57)@5
    assign i_unnamed_triangular25_a = {1'b0, i_unnamed_triangular24_vt_join_q};
    assign i_unnamed_triangular25_b = {1'b0, c_i33_134_q};
    assign i_unnamed_triangular25_o = $unsigned(i_unnamed_triangular25_a) + $unsigned(i_unnamed_triangular25_b);
    assign i_unnamed_triangular25_q = i_unnamed_triangular25_o[33:0];

    // bgTrunc_i_unnamed_triangular25_sel_x(BITSELECT,5)@5
    assign bgTrunc_i_unnamed_triangular25_sel_x_b = i_unnamed_triangular25_q[32:0];

    // i_llvm_fpga_ffwd_source_i33_unnamed_triangular7_triangular26(BLACKBOX,43)@5
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_5_0@20000000
    // out out_stall_out@20000000
    triangular_i_llvm_fpga_ffwd_source_i33_unnamed_7_triangular0 thei_llvm_fpga_ffwd_source_i33_unnamed_triangular7_triangular26 (
        .in_predicate_in(GND_q),
        .in_src_data_in_5_0(bgTrunc_i_unnamed_triangular25_sel_x_b),
        .in_stall_in(SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_1_backStall),
        .in_valid_in(SE_redist0_i_unnamed_triangular24_vt_select_31_b_1_0_V0),
        .out_intel_reserved_ffwd_5_0(i_llvm_fpga_ffwd_source_i33_unnamed_triangular7_triangular26_out_intel_reserved_ffwd_5_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i33_unnamed_triangular7_triangular26_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i33_unnamed_triangular7_triangular26_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_i32_unnamed_triangular3_triangular16(BLACKBOX,41)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_1_0@20000000
    // out out_stall_out@20000000
    triangular_i_llvm_fpga_ffwd_source_i32_unnamed_3_triangular0 thei_llvm_fpga_ffwd_source_i32_unnamed_triangular3_triangular16 (
        .in_predicate_in(GND_q),
        .in_src_data_in_1_0(bubble_select_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_d),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular3_triangular16_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_V1),
        .out_intel_reserved_ffwd_1_0(i_llvm_fpga_ffwd_source_i32_unnamed_triangular3_triangular16_out_intel_reserved_ffwd_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_triangular3_triangular16_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_triangular3_triangular16_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular3_triangular16(STALLENABLE,158)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular3_triangular16_V0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular3_triangular16_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular3_triangular16_backStall = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular3_triangular16_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular3_triangular16_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular3_triangular16_wireValid = i_llvm_fpga_ffwd_source_i32_unnamed_triangular3_triangular16_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular3_triangular16_1_reg(STALLFIFO,235)
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular3_triangular16_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular3_triangular16_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular3_triangular16_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular3_triangular16_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular3_triangular16_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular3_triangular16_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular3_triangular16_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular3_triangular16_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular3_triangular16_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular3_triangular16_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular3_triangular16_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(4),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular3_triangular16_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular3_triangular16_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular3_triangular16_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular3_triangular16_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular3_triangular16_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_232(CONSTANT,30)
    assign c_i32_232_q = $unsigned(32'b11111111111111111111111111111110);

    // i_unnamed_triangular14(ADD,49)@2
    assign i_unnamed_triangular14_a = {1'b0, bubble_select_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_d};
    assign i_unnamed_triangular14_b = {1'b0, c_i32_232_q};
    assign i_unnamed_triangular14_o = $unsigned(i_unnamed_triangular14_a) + $unsigned(i_unnamed_triangular14_b);
    assign i_unnamed_triangular14_q = i_unnamed_triangular14_o[32:0];

    // bgTrunc_i_unnamed_triangular14_sel_x(BITSELECT,2)@2
    assign bgTrunc_i_unnamed_triangular14_sel_x_b = i_unnamed_triangular14_q[31:0];

    // i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular19(BLACKBOX,42)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_4_0@20000000
    // out out_stall_out@20000000
    triangular_i_llvm_fpga_ffwd_source_i32_unnamed_6_triangular0 thei_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular19 (
        .in_predicate_in(GND_q),
        .in_src_data_in_4_0(bgTrunc_i_unnamed_triangular14_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular19_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_V4),
        .out_intel_reserved_ffwd_4_0(i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular19_out_intel_reserved_ffwd_4_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular19_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular19_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular19(STALLENABLE,160)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular19_V0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular19_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular19_backStall = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular19_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular19_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular19_wireValid = i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular19_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular19_1_reg(STALLFIFO,236)
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular19_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular19_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular19_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular19_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular19_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular19_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular19_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular19_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular19_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular19_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular19_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(4),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular19_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular19_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular19_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular19_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular19_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_p1025i32_unnamed_triangular4_triangular17(BLACKBOX,44)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_3_0@20000000
    // out out_stall_out@20000000
    triangular_i_llvm_fpga_ffwd_source_p10250000nnamed_4_triangular0 thei_llvm_fpga_ffwd_source_p1025i32_unnamed_triangular4_triangular17 (
        .in_predicate_in(GND_q),
        .in_src_data_in_3_0(bubble_select_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_triangular4_triangular17_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_V2),
        .out_intel_reserved_ffwd_3_0(i_llvm_fpga_ffwd_source_p1025i32_unnamed_triangular4_triangular17_out_intel_reserved_ffwd_3_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_p1025i32_unnamed_triangular4_triangular17_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_p1025i32_unnamed_triangular4_triangular17_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_triangular4_triangular17(STALLENABLE,164)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_triangular4_triangular17_V0 = SE_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_triangular4_triangular17_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_triangular4_triangular17_backStall = bubble_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_triangular4_triangular17_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_triangular4_triangular17_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_triangular4_triangular17_wireValid = i_llvm_fpga_ffwd_source_p1025i32_unnamed_triangular4_triangular17_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_triangular4_triangular17_1_reg(STALLFIFO,237)
    assign bubble_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_triangular4_triangular17_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_triangular4_triangular17_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_triangular4_triangular17_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_triangular4_triangular17_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_triangular4_triangular17_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_triangular4_triangular17_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_triangular4_triangular17_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_triangular4_triangular17_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_triangular4_triangular17_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_triangular4_triangular17_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_triangular4_triangular17_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(4),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_triangular4_triangular17_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_triangular4_triangular17_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_triangular4_triangular17_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_triangular4_triangular17_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_triangular4_triangular17_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11(BLACKBOX,45)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_0_0@20000000
    // out out_stall_out@20000000
    triangular_i_llvm_fpga_ffwd_source_p10250000nnamed_2_triangular0 thei_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11 (
        .in_predicate_in(GND_q),
        .in_src_data_in_0_0(bubble_select_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_c),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_V3),
        .out_intel_reserved_ffwd_0_0(i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_out_intel_reserved_ffwd_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11(STALLENABLE,166)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_V0 = SE_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_backStall = bubble_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_wireValid = i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_1_reg(STALLFIFO,238)
    assign bubble_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(4),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_1(STALLENABLE,218)
    // Valid signal propagation
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_1_V0 = SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_1_backStall = in_stall_in | ~ (SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_1_and0 = bubble_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_1_reg_valid_out;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_1_and1 = bubble_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_triangular4_triangular17_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_1_and0;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_1_and2 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular19_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_1_and1;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_1_and3 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular3_triangular16_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_1_and2;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_1_and4 = i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_out_o_valid & SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_1_and3;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_1_and5 = i_llvm_fpga_ffwd_source_i33_unnamed_triangular7_triangular26_out_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_1_and4;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_1_and6 = i_llvm_fpga_ffwd_source_i1_unnamed_triangular5_triangular18_out_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_1_and5;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_1_wireValid = SE_redist2_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_V0 & SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_1_and6;

    // bubble_join_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x(BITJOIN,118)
    assign bubble_join_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_q = i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl;

    // bubble_select_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x(BITSELECT,119)
    assign bubble_select_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_q[31:0]);

    // i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8(BLACKBOX,47)@4
    // in in_i_stall@20000000
    // out out_o_data@5
    // out out_o_stall@20000000
    // out out_o_valid@5
    // out out_wgl_6_enter_exit_stall_out@20000000
    // out out_wgl_6_enter_exit_valid_out@20000000
    triangular_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_0 thei_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8 (
        .in_i_data(bubble_select_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_b),
        .in_i_stall(SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_1_backStall),
        .in_i_valid(SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_V1),
        .in_wgl_6_enter_exit_stall_in(in_wgl_6_enter_exit_stall_in),
        .in_wgl_6_enter_exit_valid_in(in_wgl_6_enter_exit_valid_in),
        .out_o_data(i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_out_o_data),
        .out_o_stall(i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_out_o_stall),
        .out_o_valid(i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_out_o_valid),
        .out_wgl_6_enter_exit_stall_out(i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_out_wgl_6_enter_exit_stall_out),
        .out_wgl_6_enter_exit_valid_out(i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_out_wgl_6_enter_exit_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist2_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0(STALLENABLE,184)
    // Valid signal propagation
    assign SE_redist2_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_V0 = SE_redist2_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist2_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_s_tv_0 = SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_1_backStall & SE_redist2_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist2_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_backEN = ~ (SE_redist2_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist2_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_v_s_0 = SE_redist2_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_backEN & SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_V0;
    // Backward Stall generation
    assign SE_redist2_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_backStall = ~ (SE_redist2_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist2_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist2_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_backEN == 1'b0)
            begin
                SE_redist2_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_R_v_0 <= SE_redist2_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_R_v_0 & SE_redist2_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_s_tv_0;
            end
            else
            begin
                SE_redist2_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_R_v_0 <= SE_redist2_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_v_s_0;
            end

        end
    end

    // SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x(STALLENABLE,150)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_consumed0 = (~ (SE_redist2_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_backStall) & SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_wireValid) | SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_consumed1 = (~ (i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_out_o_stall) & SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_wireValid) | SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_StallValid = SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_backStall & SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_toReg0 = SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_StallValid & SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_toReg1 = SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_StallValid & SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_or0 = SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_consumed1 & SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_or0);
    assign SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_backStall = SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_V0 = SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_V1 = SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_wireValid = i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_o_valid;

    // bubble_join_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x(BITJOIN,114)
    assign bubble_join_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_q = {i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_c0_exit_2_tpl, i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_c0_exit_1_tpl};

    // bubble_select_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x(BITSELECT,115)
    assign bubble_select_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_q[1:1]);

    // i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x(BLACKBOX,19)@1
    // in in_i_stall@20000000
    // out out_c1_exit_0_tpl@4
    // out out_c1_exit_1_tpl@4
    // out out_o_stall@20000000
    // out out_o_valid@4
    triangular_i_sfc_s_c1_in_wt_entry_s_c1_enter_triangular5 thei_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x (
        .in_c1_eni1_0_tpl(GND_q),
        .in_c1_eni1_1_tpl(bubble_select_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_c),
        .in_c0_exe1(bubble_select_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_b),
        .in_c0_exe2(bubble_select_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_c),
        .in_i_stall(SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_V1),
        .out_c1_exit_0_tpl(),
        .out_c1_exit_1_tpl(i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl),
        .out_o_stall(i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,178)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = triangular_B1_start_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bubble_join_stall_entry(BITJOIN,138)
    assign bubble_join_stall_entry_q = in_forked34;

    // bubble_select_stall_entry(BITSELECT,139)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // triangular_B1_start_merge_reg_aunroll_x(BLACKBOX,21)@0
    // in in_stall_in@20000000
    // out out_data_out_0_tpl@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    triangular_B1_start_merge_reg thetriangular_B1_start_merge_reg_aunroll_x (
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .in_stall_in(SE_out_triangular_B1_start_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out_0_tpl(triangular_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_stall_out(triangular_B1_start_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(triangular_B1_start_merge_reg_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_triangular_B1_start_merge_reg_aunroll_x(STALLENABLE,153)
    // Valid signal propagation
    assign SE_out_triangular_B1_start_merge_reg_aunroll_x_V0 = SE_out_triangular_B1_start_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_triangular_B1_start_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_o_stall | ~ (SE_out_triangular_B1_start_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_triangular_B1_start_merge_reg_aunroll_x_wireValid = triangular_B1_start_merge_reg_aunroll_x_out_valid_out;

    // bubble_join_triangular_B1_start_merge_reg_aunroll_x(BITJOIN,121)
    assign bubble_join_triangular_B1_start_merge_reg_aunroll_x_q = triangular_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_triangular_B1_start_merge_reg_aunroll_x(BITSELECT,122)
    assign bubble_select_triangular_B1_start_merge_reg_aunroll_x_b = $unsigned(bubble_join_triangular_B1_start_merge_reg_aunroll_x_q[0:0]);

    // i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x(BLACKBOX,18)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going32_triangular2_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going32_triangular2_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_pipeline_valid_out@20000000
    triangular_i_sfc_s_c0_in_wt_entry_s_c0_enter6_triangular1 thei_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x (
        .in_c0_eni1_0_tpl(GND_q),
        .in_c0_eni1_1_tpl(bubble_select_triangular_B1_start_merge_reg_aunroll_x_b),
        .in_i_stall(SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_backStall),
        .in_i_valid(SE_out_triangular_B1_start_merge_reg_aunroll_x_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_c0_exit_1_tpl),
        .out_c0_exit_2_tpl(i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_c0_exit_2_tpl),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going32_triangular2_exiting_stall_out(i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going32_triangular2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going32_triangular2_exiting_valid_out(i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going32_triangular2_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_pipeline_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x(STALLENABLE,148)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_consumed0 = (~ (i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_out_stall_out) & SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_consumed1 = (~ (i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_o_stall) & SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_or0);
    assign SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_wireValid = i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_o_valid;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3(BLACKBOX,46)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_1@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    triangular_i_llvm_fpga_pop_throttle_i1_throttle_pop_0 thei_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3 (
        .in_data_in(GND_q),
        .in_dir(GND_q),
        .in_feedback_in_1(in_feedback_in_1),
        .in_feedback_valid_in_1(in_feedback_valid_in_1),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_V0),
        .out_data_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_out_data_out),
        .out_feedback_stall_out_1(i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_out_feedback_stall_out_1),
        .out_stall_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3(STALLENABLE,168)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_V0 = SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_backStall = i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_o_stall | ~ (SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_wireValid = i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_out_valid_out;

    // SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x(STALLENABLE,146)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_fromReg0 <= '0;
            SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_fromReg1 <= '0;
            SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_fromReg2 <= '0;
            SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_fromReg3 <= '0;
            SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_fromReg4 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_fromReg0 <= SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_fromReg1 <= SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_fromReg2 <= SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_toReg2;
            // Successor 3
            SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_fromReg3 <= SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_toReg3;
            // Successor 4
            SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_fromReg4 <= SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_toReg4;
        end
    end
    // Input Stall processing
    assign SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_consumed0 = (~ (SE_i_cmp34_triangular12_backStall) & SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_wireValid) | SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_fromReg0;
    assign SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_consumed1 = (~ (i_llvm_fpga_ffwd_source_i32_unnamed_triangular3_triangular16_out_stall_out) & SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_wireValid) | SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_fromReg1;
    assign SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_consumed2 = (~ (i_llvm_fpga_ffwd_source_p1025i32_unnamed_triangular4_triangular17_out_stall_out) & SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_wireValid) | SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_fromReg2;
    assign SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_consumed3 = (~ (i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_out_stall_out) & SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_wireValid) | SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_fromReg3;
    assign SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_consumed4 = (~ (i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular19_out_stall_out) & SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_wireValid) | SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_fromReg4;
    // Consuming
    assign SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_StallValid = SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_backStall & SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_wireValid;
    assign SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_toReg0 = SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_StallValid & SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_consumed0;
    assign SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_toReg1 = SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_StallValid & SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_consumed1;
    assign SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_toReg2 = SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_StallValid & SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_consumed2;
    assign SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_toReg3 = SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_StallValid & SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_consumed3;
    assign SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_toReg4 = SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_StallValid & SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_consumed4;
    // Backward Stall generation
    assign SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_or0 = SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_consumed0;
    assign SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_or1 = SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_consumed1 & SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_or0;
    assign SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_or2 = SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_consumed2 & SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_or1;
    assign SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_or3 = SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_consumed3 & SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_or2;
    assign SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_wireStall = ~ (SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_consumed4 & SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_or3);
    assign SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_backStall = SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_V0 = SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_fromReg0);
    assign SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_V1 = SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_fromReg1);
    assign SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_V2 = SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_fromReg2);
    assign SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_V3 = SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_fromReg3);
    assign SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_V4 = SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_fromReg4);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_wireValid = i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_o_valid;

    // bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3(BITJOIN,131)
    assign bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_q = i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_out_data_out;

    // bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3(BITSELECT,132)
    assign bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_b = $unsigned(bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_q[0:0]);

    // i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x(BLACKBOX,17)@2
    // in in_i_stall@20000000
    // out out_iord_bl_call_triangular_o_fifoalmost_full@20000000
    // out out_iord_bl_call_triangular_o_fifoready@20000000
    // out out_o_stall@20000000
    triangular_i_iord_bl_call_unnamed_triangular1_triangular0 thei_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x (
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_b),
        .in_i_stall(SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_V0),
        .in_iord_bl_call_triangular_i_fifodata(in_iord_bl_call_triangular_i_fifodata),
        .in_iord_bl_call_triangular_i_fifovalid(in_iord_bl_call_triangular_i_fifovalid),
        .out_o_data_0_tpl(i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_o_data_2_tpl),
        .out_iord_bl_call_triangular_o_fifoalmost_full(i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_iord_bl_call_triangular_o_fifoalmost_full),
        .out_iord_bl_call_triangular_o_fifoready(i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_iord_bl_call_triangular_o_fifoready),
        .out_o_stall(i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_o_stall),
        .out_o_valid(i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,9)
    assign out_iord_bl_call_triangular_o_fifoready = i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_iord_bl_call_triangular_o_fifoready;
    assign out_iord_bl_call_triangular_o_fifoalmost_full = i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_iord_bl_call_triangular_o_fifoalmost_full;

    // dupName_0_regfree_osync_x(GPOUT,10)
    assign out_intel_reserved_ffwd_1_0 = i_llvm_fpga_ffwd_source_i32_unnamed_triangular3_triangular16_out_intel_reserved_ffwd_1_0;

    // bubble_join_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8(BITJOIN,134)
    assign bubble_join_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_q = i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_out_o_data;

    // bubble_select_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8(BITSELECT,135)
    assign bubble_select_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_b = $unsigned(bubble_join_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_q[31:0]);

    // redist2_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0(REG,107)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist2_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_backEN == 1'b1)
        begin
            redist2_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_q <= $unsigned(bubble_select_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_b);
        end
    end

    // dupName_0_sync_out_x(GPOUT,11)@5
    assign out_c1_exe1 = redist2_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_q;
    assign out_reorder_limiter_enter = bubble_select_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_b;
    assign out_valid_out = SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_1_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,12)
    assign out_wgl_6_enter_exit_valid_out = i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_out_wgl_6_enter_exit_valid_out;
    assign out_wgl_6_enter_exit_stall_out = i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_out_wgl_6_enter_exit_stall_out;

    // dupName_1_regfree_osync_x(GPOUT,13)
    assign out_intel_reserved_ffwd_2_0 = i_llvm_fpga_ffwd_source_i1_unnamed_triangular5_triangular18_out_intel_reserved_ffwd_2_0;

    // dupName_2_regfree_osync_x(GPOUT,14)
    assign out_intel_reserved_ffwd_3_0 = i_llvm_fpga_ffwd_source_p1025i32_unnamed_triangular4_triangular17_out_intel_reserved_ffwd_3_0;

    // dupName_3_regfree_osync_x(GPOUT,15)
    assign out_intel_reserved_ffwd_4_0 = i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular19_out_intel_reserved_ffwd_4_0;

    // dupName_4_regfree_osync_x(GPOUT,16)
    assign out_intel_reserved_ffwd_5_0 = i_llvm_fpga_ffwd_source_i33_unnamed_triangular7_triangular26_out_intel_reserved_ffwd_5_0;

    // ext_sig_sync_out(GPOUT,35)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going32_triangular2_exiting_valid_out = i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going32_triangular2_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going32_triangular2_exiting_stall_out = i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going32_triangular2_exiting_stall_out;

    // feedback_stall_out_1_sync(GPOUT,37)
    assign out_feedback_stall_out_1 = i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_out_feedback_stall_out_1;

    // pipeline_valid_out_sync(GPOUT,85)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_pipeline_valid_out;

    // regfree_osync(GPOUT,86)
    assign out_intel_reserved_ffwd_0_0 = i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_hosts_unnamed_triangular2_triangular11_out_intel_reserved_ffwd_0_0;

    // sync_out(GPOUT,90)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
