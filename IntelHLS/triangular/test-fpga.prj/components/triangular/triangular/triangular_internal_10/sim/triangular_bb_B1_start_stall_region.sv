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
// SystemVerilog created on Fri Apr  7 16:28:14 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module triangular_bb_B1_start_stall_region (
    input wire [191:0] in_iord_bl_call_triangular_i_fifodata,
    input wire [0:0] in_iord_bl_call_triangular_i_fifovalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_triangular2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_triangular2_exiting_stall_out,
    input wire [0:0] in_feedback_in_1,
    output wire [0:0] out_feedback_stall_out_1,
    input wire [0:0] in_feedback_valid_in_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    output wire [31:0] out_intel_reserved_ffwd_0_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked27,
    input wire [0:0] in_valid_in,
    input wire [0:0] in_wgl_6_enter_exit_valid_in,
    input wire [0:0] in_wgl_6_enter_exit_stall_in,
    output wire [0:0] out_iord_bl_call_triangular_o_fifoready,
    output wire [0:0] out_iord_bl_call_triangular_o_fifoalmost_full,
    output wire [0:0] out_intel_reserved_ffwd_1_0,
    output wire [31:0] out_c1_exe1,
    output wire [31:0] out_reorder_limiter_enter,
    output wire [0:0] out_valid_out,
    output wire [0:0] out_wgl_6_enter_exit_valid_out,
    output wire [0:0] out_wgl_6_enter_exit_stall_out,
    output wire [31:0] out_intel_reserved_ffwd_2_0,
    output wire [32:0] out_intel_reserved_ffwd_3_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_028_q;
    wire [31:0] c_i32_130_q;
    wire [31:0] c_i32_229_q;
    wire [32:0] c_i33_131_q;
    wire [33:0] i_cmp16_triangular10_a;
    wire [33:0] i_cmp16_triangular10_b;
    logic [33:0] i_cmp16_triangular10_o;
    wire [0:0] i_cmp16_triangular10_c;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_triangular3_triangular15_out_intel_reserved_ffwd_1_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_triangular3_triangular15_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_triangular3_triangular15_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_triangular2_triangular14_out_intel_reserved_ffwd_0_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_triangular2_triangular14_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_triangular2_triangular14_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_triangular4_triangular16_out_intel_reserved_ffwd_2_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_triangular4_triangular16_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_triangular4_triangular16_out_valid_out;
    wire [32:0] i_llvm_fpga_ffwd_source_i33_unnamed_triangular5_triangular23_out_intel_reserved_ffwd_3_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i33_unnamed_triangular5_triangular23_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i33_unnamed_triangular5_triangular23_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_out_feedback_stall_out_1;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_out_valid_out;
    wire [31:0] i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_out_o_data;
    wire [0:0] i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_out_o_stall;
    wire [0:0] i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_out_o_valid;
    wire [0:0] i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_out_wgl_6_enter_exit_stall_out;
    wire [0:0] i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_out_wgl_6_enter_exit_valid_out;
    wire [0:0] i_smin8_triangular19_s;
    reg [31:0] i_smin8_triangular19_q;
    wire [32:0] i_unnamed_triangular12_a;
    wire [32:0] i_unnamed_triangular12_b;
    logic [32:0] i_unnamed_triangular12_o;
    wire [32:0] i_unnamed_triangular12_q;
    wire [32:0] i_unnamed_triangular13_a;
    wire [32:0] i_unnamed_triangular13_b;
    logic [32:0] i_unnamed_triangular13_o;
    wire [32:0] i_unnamed_triangular13_q;
    wire [32:0] i_unnamed_triangular20_a;
    wire [32:0] i_unnamed_triangular20_b;
    logic [32:0] i_unnamed_triangular20_o;
    wire [32:0] i_unnamed_triangular20_q;
    wire [32:0] i_unnamed_triangular21_vt_join_q;
    wire [31:0] i_unnamed_triangular21_vt_select_31_b;
    wire [33:0] i_unnamed_triangular22_a;
    wire [33:0] i_unnamed_triangular22_b;
    logic [33:0] i_unnamed_triangular22_o;
    wire [33:0] i_unnamed_triangular22_q;
    wire [31:0] bgTrunc_i_unnamed_triangular12_sel_x_b;
    wire [31:0] bgTrunc_i_unnamed_triangular13_sel_x_b;
    wire [31:0] bgTrunc_i_unnamed_triangular20_sel_x_b;
    wire [32:0] bgTrunc_i_unnamed_triangular22_sel_x_b;
    wire [0:0] i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_iord_bl_call_triangular_o_fifoalmost_full;
    wire [0:0] i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_iord_bl_call_triangular_o_fifoready;
    wire [0:0] i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_o_stall;
    wire [0:0] i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_o_valid;
    wire [31:0] i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_o_data_2_tpl;
    wire [0:0] i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_triangular2_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_triangular2_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_c0_exit_1_tpl;
    wire [0:0] i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_c0_exit_2_tpl;
    wire [0:0] i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl;
    wire [32:0] i_unnamed_triangular21_sel_x_b;
    wire [0:0] triangular_B1_start_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] triangular_B1_start_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] triangular_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] i_unnamed_triangular17_cmp_sign_q;
    reg [31:0] redist0_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_q;
    reg [31:0] redist1_bgTrunc_i_unnamed_triangular13_sel_x_b_1_0_q;
    wire [0:0] bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_b;
    wire [31:0] bubble_join_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_q;
    wire [31:0] bubble_select_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_b;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_join_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_q;
    wire [31:0] bubble_select_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_b;
    wire [1:0] bubble_join_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_c;
    wire [31:0] bubble_join_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_b;
    wire [0:0] bubble_join_triangular_B1_start_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_triangular_B1_start_merge_reg_aunroll_x_b;
    reg [0:0] SE_i_cmp16_triangular10_R_v_0;
    reg [0:0] SE_i_cmp16_triangular10_R_v_1;
    wire [0:0] SE_i_cmp16_triangular10_v_s_0;
    wire [0:0] SE_i_cmp16_triangular10_s_tv_0;
    wire [0:0] SE_i_cmp16_triangular10_s_tv_1;
    wire [0:0] SE_i_cmp16_triangular10_backEN;
    wire [0:0] SE_i_cmp16_triangular10_or0;
    wire [0:0] SE_i_cmp16_triangular10_backStall;
    wire [0:0] SE_i_cmp16_triangular10_V0;
    wire [0:0] SE_i_cmp16_triangular10_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular2_triangular14_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular2_triangular14_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular2_triangular14_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular4_triangular16_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular4_triangular16_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular4_triangular16_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_V0;
    wire [0:0] SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_and0;
    wire [0:0] SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_and1;
    wire [0:0] SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_and2;
    wire [0:0] SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_and3;
    wire [0:0] SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_and4;
    wire [0:0] SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_backStall;
    wire [0:0] SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
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
    wire [0:0] SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_or0;
    wire [0:0] SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_or1;
    wire [0:0] SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_backStall;
    wire [0:0] SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_V0;
    wire [0:0] SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_V1;
    wire [0:0] SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_V2;
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
    reg [0:0] SE_redist0_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_R_v_0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_v_s_0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_s_tv_0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_backEN;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_backStall;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_V0;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular2_triangular14_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular2_triangular14_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular2_triangular14_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular2_triangular14_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular2_triangular14_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular2_triangular14_1_reg_V0;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular4_triangular16_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular4_triangular16_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular4_triangular16_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular4_triangular16_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular4_triangular16_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular4_triangular16_1_reg_V0;


    // bubble_join_stall_entry(BITJOIN,107)
    assign bubble_join_stall_entry_q = in_forked27;

    // bubble_select_stall_entry(BITSELECT,108)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // SE_stall_entry(STALLENABLE,144)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = triangular_B1_start_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // triangular_B1_start_merge_reg_aunroll_x(BLACKBOX,83)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    triangular_B1_start_merge_reg thetriangular_B1_start_merge_reg_aunroll_x (
        .in_stall_in(SE_out_triangular_B1_start_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .out_stall_out(triangular_B1_start_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(triangular_B1_start_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(triangular_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_triangular_B1_start_merge_reg_aunroll_x(BITJOIN,121)
    assign bubble_join_triangular_B1_start_merge_reg_aunroll_x_q = triangular_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_triangular_B1_start_merge_reg_aunroll_x(BITSELECT,122)
    assign bubble_select_triangular_B1_start_merge_reg_aunroll_x_b = $unsigned(bubble_join_triangular_B1_start_merge_reg_aunroll_x_q[0:0]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_triangular_B1_start_merge_reg_aunroll_x(STALLENABLE,158)
    // Valid signal propagation
    assign SE_out_triangular_B1_start_merge_reg_aunroll_x_V0 = SE_out_triangular_B1_start_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_triangular_B1_start_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_o_stall | ~ (SE_out_triangular_B1_start_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_triangular_B1_start_merge_reg_aunroll_x_wireValid = triangular_B1_start_merge_reg_aunroll_x_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular2_triangular14(STALLENABLE,128)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular2_triangular14_V0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular2_triangular14_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular2_triangular14_backStall = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular2_triangular14_1_reg_backStall | ~ (SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular2_triangular14_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular2_triangular14_wireValid = i_llvm_fpga_ffwd_source_i32_unnamed_triangular2_triangular14_out_valid_out;

    // bubble_join_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x(BITJOIN,111)
    assign bubble_join_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_q = i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_o_data_2_tpl;

    // bubble_select_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x(BITSELECT,112)
    assign bubble_select_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_b = $unsigned(bubble_join_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_q[31:0]);

    // i_llvm_fpga_ffwd_source_i32_unnamed_triangular2_triangular14(BLACKBOX,21)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_0_0@20000000
    // out out_stall_out@20000000
    triangular_i_llvm_fpga_ffwd_source_i32_unnamed_2_triangular0 thei_llvm_fpga_ffwd_source_i32_unnamed_triangular2_triangular14 (
        .in_predicate_in(GND_q),
        .in_src_data_in_0_0(bubble_select_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular2_triangular14_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_V1),
        .out_intel_reserved_ffwd_0_0(i_llvm_fpga_ffwd_source_i32_unnamed_triangular2_triangular14_out_intel_reserved_ffwd_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_triangular2_triangular14_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_triangular2_triangular14_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_cmp16_triangular10(STALLENABLE,124)
    // Valid signal propagation
    assign SE_i_cmp16_triangular10_V0 = SE_i_cmp16_triangular10_R_v_0;
    assign SE_i_cmp16_triangular10_V1 = SE_i_cmp16_triangular10_R_v_1;
    // Stall signal propagation
    assign SE_i_cmp16_triangular10_s_tv_0 = i_llvm_fpga_ffwd_source_i1_unnamed_triangular3_triangular15_out_stall_out & SE_i_cmp16_triangular10_R_v_0;
    assign SE_i_cmp16_triangular10_s_tv_1 = i_llvm_fpga_ffwd_source_i33_unnamed_triangular5_triangular23_out_stall_out & SE_i_cmp16_triangular10_R_v_1;
    // Backward Enable generation
    assign SE_i_cmp16_triangular10_or0 = SE_i_cmp16_triangular10_s_tv_0;
    assign SE_i_cmp16_triangular10_backEN = ~ (SE_i_cmp16_triangular10_s_tv_1 | SE_i_cmp16_triangular10_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_cmp16_triangular10_v_s_0 = SE_i_cmp16_triangular10_backEN & SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_V0;
    // Backward Stall generation
    assign SE_i_cmp16_triangular10_backStall = ~ (SE_i_cmp16_triangular10_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_cmp16_triangular10_R_v_0 <= 1'b0;
            SE_i_cmp16_triangular10_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_cmp16_triangular10_backEN == 1'b0)
            begin
                SE_i_cmp16_triangular10_R_v_0 <= SE_i_cmp16_triangular10_R_v_0 & SE_i_cmp16_triangular10_s_tv_0;
            end
            else
            begin
                SE_i_cmp16_triangular10_R_v_0 <= SE_i_cmp16_triangular10_v_s_0;
            end

            if (SE_i_cmp16_triangular10_backEN == 1'b0)
            begin
                SE_i_cmp16_triangular10_R_v_1 <= SE_i_cmp16_triangular10_R_v_1 & SE_i_cmp16_triangular10_s_tv_1;
            end
            else
            begin
                SE_i_cmp16_triangular10_R_v_1 <= SE_i_cmp16_triangular10_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3(STALLENABLE,134)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_V0 = SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_backStall = i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_o_stall | ~ (SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_wireValid = i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_out_valid_out;

    // bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3(BITJOIN,100)
    assign bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_q = i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_out_data_out;

    // bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3(BITSELECT,101)
    assign bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_b = $unsigned(bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_q[0:0]);

    // i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x(BLACKBOX,79)@2
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
        .out_iord_bl_call_triangular_o_fifoalmost_full(i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_iord_bl_call_triangular_o_fifoalmost_full),
        .out_iord_bl_call_triangular_o_fifoready(i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_iord_bl_call_triangular_o_fifoready),
        .out_o_stall(i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_o_stall),
        .out_o_valid(i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .out_o_data_1_tpl(),
        .out_o_data_2_tpl(i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_o_data_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x(STALLENABLE,151)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_fromReg0 <= '0;
            SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_fromReg1 <= '0;
            SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_fromReg0 <= SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_fromReg1 <= SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_fromReg2 <= SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_consumed0 = (~ (SE_i_cmp16_triangular10_backStall) & SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_wireValid) | SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_fromReg0;
    assign SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_consumed1 = (~ (i_llvm_fpga_ffwd_source_i32_unnamed_triangular2_triangular14_out_stall_out) & SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_wireValid) | SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_fromReg1;
    assign SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_consumed2 = (~ (i_llvm_fpga_ffwd_source_i32_unnamed_triangular4_triangular16_out_stall_out) & SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_wireValid) | SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_fromReg2;
    // Consuming
    assign SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_StallValid = SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_backStall & SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_wireValid;
    assign SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_toReg0 = SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_StallValid & SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_consumed0;
    assign SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_toReg1 = SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_StallValid & SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_consumed1;
    assign SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_toReg2 = SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_StallValid & SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_consumed2;
    // Backward Stall generation
    assign SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_or0 = SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_consumed0;
    assign SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_or1 = SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_consumed1 & SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_or0;
    assign SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_wireStall = ~ (SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_consumed2 & SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_or1);
    assign SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_backStall = SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_V0 = SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_fromReg0);
    assign SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_V1 = SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_fromReg1);
    assign SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_V2 = SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_wireValid = i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_o_valid;

    // c_i32_229(CONSTANT,10)
    assign c_i32_229_q = $unsigned(32'b11111111111111111111111111111110);

    // i_unnamed_triangular12(ADD,27)@2
    assign i_unnamed_triangular12_a = {1'b0, bubble_select_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_b};
    assign i_unnamed_triangular12_b = {1'b0, c_i32_229_q};
    assign i_unnamed_triangular12_o = $unsigned(i_unnamed_triangular12_a) + $unsigned(i_unnamed_triangular12_b);
    assign i_unnamed_triangular12_q = i_unnamed_triangular12_o[32:0];

    // bgTrunc_i_unnamed_triangular12_sel_x(BITSELECT,66)@2
    assign bgTrunc_i_unnamed_triangular12_sel_x_b = i_unnamed_triangular12_q[31:0];

    // i_llvm_fpga_ffwd_source_i32_unnamed_triangular4_triangular16(BLACKBOX,22)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_2_0@20000000
    // out out_stall_out@20000000
    triangular_i_llvm_fpga_ffwd_source_i32_unnamed_4_triangular0 thei_llvm_fpga_ffwd_source_i32_unnamed_triangular4_triangular16 (
        .in_predicate_in(GND_q),
        .in_src_data_in_2_0(bgTrunc_i_unnamed_triangular12_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular4_triangular16_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_V2),
        .out_intel_reserved_ffwd_2_0(i_llvm_fpga_ffwd_source_i32_unnamed_triangular4_triangular16_out_intel_reserved_ffwd_2_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_triangular4_triangular16_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_triangular4_triangular16_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular4_triangular16(STALLENABLE,130)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular4_triangular16_V0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular4_triangular16_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular4_triangular16_backStall = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular4_triangular16_1_reg_backStall | ~ (SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular4_triangular16_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular4_triangular16_wireValid = i_llvm_fpga_ffwd_source_i32_unnamed_triangular4_triangular16_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular4_triangular16_1_reg(STALLENABLE,207)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular4_triangular16_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular4_triangular16_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular4_triangular16_1_reg_s_tv_0 = SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_backStall & bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular4_triangular16_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular4_triangular16_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular4_triangular16_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular4_triangular16_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular4_triangular16_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular4_triangular16_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular4_triangular16_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular4_triangular16_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular4_triangular16_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular4_triangular16_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular4_triangular16_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular4_triangular16_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular4_triangular16_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular4_triangular16_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular4_triangular16_1_reg_v_s_0;
            end

        end
    end

    // bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular2_triangular14_1_reg(STALLENABLE,206)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular2_triangular14_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular2_triangular14_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular2_triangular14_1_reg_s_tv_0 = SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_backStall & bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular2_triangular14_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular2_triangular14_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular2_triangular14_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular2_triangular14_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular2_triangular14_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular2_triangular14_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular2_triangular14_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular2_triangular14_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular2_triangular14_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular2_triangular14_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular2_triangular14_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular2_triangular14_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular2_triangular14_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular2_triangular14_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular2_triangular14_1_reg_v_s_0;
            end

        end
    end

    // c_i32_028(CONSTANT,8)
    assign c_i32_028_q = $unsigned(32'b00000000000000000000000000000000);

    // i_cmp16_triangular10(COMPARE,19)@2 + 1
    assign i_cmp16_triangular10_a = $unsigned({{2{c_i32_028_q[31]}}, c_i32_028_q});
    assign i_cmp16_triangular10_b = $unsigned({{2{bubble_select_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_b[31]}}, bubble_select_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_b});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp16_triangular10_o <= 34'b0;
        end
        else if (SE_i_cmp16_triangular10_backEN == 1'b1)
        begin
            i_cmp16_triangular10_o <= $unsigned($signed(i_cmp16_triangular10_a) - $signed(i_cmp16_triangular10_b));
        end
    end
    assign i_cmp16_triangular10_c[0] = i_cmp16_triangular10_o[33];

    // i_llvm_fpga_ffwd_source_i1_unnamed_triangular3_triangular15(BLACKBOX,20)@3
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_1_0@20000000
    // out out_stall_out@20000000
    triangular_i_llvm_fpga_ffwd_source_i1_unnamed_3_triangular0 thei_llvm_fpga_ffwd_source_i1_unnamed_triangular3_triangular15 (
        .in_predicate_in(GND_q),
        .in_src_data_in_1_0(i_cmp16_triangular10_c),
        .in_stall_in(SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_backStall),
        .in_valid_in(SE_i_cmp16_triangular10_V0),
        .out_intel_reserved_ffwd_1_0(i_llvm_fpga_ffwd_source_i1_unnamed_triangular3_triangular15_out_intel_reserved_ffwd_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_triangular3_triangular15_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_triangular3_triangular15_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_131(CONSTANT,11)
    assign c_i33_131_q = $unsigned(33'b111111111111111111111111111111111);

    // c_i32_130(CONSTANT,9)
    assign c_i32_130_q = $unsigned(32'b11111111111111111111111111111111);

    // i_unnamed_triangular13(ADD,28)@2
    assign i_unnamed_triangular13_a = {1'b0, bubble_select_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_b};
    assign i_unnamed_triangular13_b = {1'b0, c_i32_130_q};
    assign i_unnamed_triangular13_o = $unsigned(i_unnamed_triangular13_a) + $unsigned(i_unnamed_triangular13_b);
    assign i_unnamed_triangular13_q = i_unnamed_triangular13_o[32:0];

    // bgTrunc_i_unnamed_triangular13_sel_x(BITSELECT,67)@2
    assign bgTrunc_i_unnamed_triangular13_sel_x_b = i_unnamed_triangular13_q[31:0];

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_unnamed_triangular17_cmp_sign(LOGICAL,89)@2
    assign i_unnamed_triangular17_cmp_sign_q = $unsigned(bgTrunc_i_unnamed_triangular13_sel_x_b[31:31]);

    // i_smin8_triangular19(MUX,26)@2 + 1
    assign i_smin8_triangular19_s = i_unnamed_triangular17_cmp_sign_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_smin8_triangular19_q <= 32'b0;
        end
        else if (SE_i_cmp16_triangular10_backEN == 1'b1)
        begin
            unique case (i_smin8_triangular19_s)
                1'b0 : i_smin8_triangular19_q <= c_i32_028_q;
                1'b1 : i_smin8_triangular19_q <= bgTrunc_i_unnamed_triangular13_sel_x_b;
                default : i_smin8_triangular19_q <= 32'b0;
            endcase
        end
    end

    // redist1_bgTrunc_i_unnamed_triangular13_sel_x_b_1_0(REG,94)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_bgTrunc_i_unnamed_triangular13_sel_x_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_i_cmp16_triangular10_backEN == 1'b1)
        begin
            redist1_bgTrunc_i_unnamed_triangular13_sel_x_b_1_0_q <= $unsigned(bgTrunc_i_unnamed_triangular13_sel_x_b);
        end
    end

    // i_unnamed_triangular20(SUB,30)@3
    assign i_unnamed_triangular20_a = {1'b0, redist1_bgTrunc_i_unnamed_triangular13_sel_x_b_1_0_q};
    assign i_unnamed_triangular20_b = {1'b0, i_smin8_triangular19_q};
    assign i_unnamed_triangular20_o = $unsigned(i_unnamed_triangular20_a) - $unsigned(i_unnamed_triangular20_b);
    assign i_unnamed_triangular20_q = i_unnamed_triangular20_o[32:0];

    // bgTrunc_i_unnamed_triangular20_sel_x(BITSELECT,68)@3
    assign bgTrunc_i_unnamed_triangular20_sel_x_b = $unsigned(i_unnamed_triangular20_q[31:0]);

    // i_unnamed_triangular21_sel_x(BITSELECT,82)@3
    assign i_unnamed_triangular21_sel_x_b = {1'b0, bgTrunc_i_unnamed_triangular20_sel_x_b[31:0]};

    // i_unnamed_triangular21_vt_select_31(BITSELECT,34)@3
    assign i_unnamed_triangular21_vt_select_31_b = i_unnamed_triangular21_sel_x_b[31:0];

    // i_unnamed_triangular21_vt_join(BITJOIN,33)@3
    assign i_unnamed_triangular21_vt_join_q = {GND_q, i_unnamed_triangular21_vt_select_31_b};

    // i_unnamed_triangular22(ADD,35)@3
    assign i_unnamed_triangular22_a = {1'b0, i_unnamed_triangular21_vt_join_q};
    assign i_unnamed_triangular22_b = {1'b0, c_i33_131_q};
    assign i_unnamed_triangular22_o = $unsigned(i_unnamed_triangular22_a) + $unsigned(i_unnamed_triangular22_b);
    assign i_unnamed_triangular22_q = i_unnamed_triangular22_o[33:0];

    // bgTrunc_i_unnamed_triangular22_sel_x(BITSELECT,69)@3
    assign bgTrunc_i_unnamed_triangular22_sel_x_b = i_unnamed_triangular22_q[32:0];

    // i_llvm_fpga_ffwd_source_i33_unnamed_triangular5_triangular23(BLACKBOX,23)@3
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_3_0@20000000
    // out out_stall_out@20000000
    triangular_i_llvm_fpga_ffwd_source_i33_unnamed_5_triangular0 thei_llvm_fpga_ffwd_source_i33_unnamed_triangular5_triangular23 (
        .in_predicate_in(GND_q),
        .in_src_data_in_3_0(bgTrunc_i_unnamed_triangular22_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_backStall),
        .in_valid_in(SE_i_cmp16_triangular10_V1),
        .out_intel_reserved_ffwd_3_0(i_llvm_fpga_ffwd_source_i33_unnamed_triangular5_triangular23_out_intel_reserved_ffwd_3_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i33_unnamed_triangular5_triangular23_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i33_unnamed_triangular5_triangular23_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8(STALLENABLE,136)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_V0 = SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_and0 = i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_out_o_valid;
    assign SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_and1 = i_llvm_fpga_ffwd_source_i33_unnamed_triangular5_triangular23_out_valid_out & SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_and0;
    assign SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_and2 = i_llvm_fpga_ffwd_source_i1_unnamed_triangular3_triangular15_out_valid_out & SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_and1;
    assign SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_and3 = SE_redist0_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_V0 & SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_and2;
    assign SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_and4 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular2_triangular14_1_reg_V0 & SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_and3;
    assign SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_wireValid = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular4_triangular16_1_reg_V0 & SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_and4;

    // bubble_join_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x(BITJOIN,118)
    assign bubble_join_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_q = i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl;

    // bubble_select_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x(BITSELECT,119)
    assign bubble_select_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_q[31:0]);

    // i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8(BLACKBOX,25)@2
    // in in_i_stall@20000000
    // out out_o_data@3
    // out out_o_stall@20000000
    // out out_o_valid@3
    // out out_wgl_6_enter_exit_stall_out@20000000
    // out out_wgl_6_enter_exit_valid_out@20000000
    triangular_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_0 thei_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8 (
        .in_i_data(bubble_select_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_b),
        .in_i_stall(SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_backStall),
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

    // SE_redist0_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0(STALLENABLE,160)
    // Valid signal propagation
    assign SE_redist0_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_V0 = SE_redist0_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist0_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_s_tv_0 = SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_backStall & SE_redist0_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist0_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_backEN = ~ (SE_redist0_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_v_s_0 = SE_redist0_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_backEN & SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_V0;
    // Backward Stall generation
    assign SE_redist0_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_backStall = ~ (SE_redist0_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_backEN == 1'b0)
            begin
                SE_redist0_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_R_v_0 <= SE_redist0_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_R_v_0 & SE_redist0_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_s_tv_0;
            end
            else
            begin
                SE_redist0_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_R_v_0 <= SE_redist0_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_v_s_0;
            end

        end
    end

    // SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x(STALLENABLE,155)
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
    assign SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_consumed0 = (~ (SE_redist0_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_backStall) & SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_wireValid) | SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_fromReg0;
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

    // i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x(BLACKBOX,81)@1
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@2
    // out out_c1_exit_0_tpl@2
    // out out_c1_exit_1_tpl@2
    triangular_i_sfc_s_c1_in_wt_entry_s_c1_enter_triangular5 thei_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x (
        .in_c0_exe1(bubble_select_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_b),
        .in_c0_exe2(bubble_select_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_c),
        .in_i_stall(SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_V1),
        .in_c1_eni1_0_tpl(GND_q),
        .in_c1_eni1_1_tpl(bubble_select_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_c),
        .out_o_stall(i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_o_valid),
        .out_c1_exit_0_tpl(),
        .out_c1_exit_1_tpl(i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3(BLACKBOX,24)@1
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

    // SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x(STALLENABLE,153)
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

    // i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x(BLACKBOX,80)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_triangular2_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_triangular2_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_pipeline_valid_out@20000000
    triangular_i_sfc_s_c0_in_wt_entry_s_c0_enter6_triangular1 thei_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_backStall),
        .in_i_valid(SE_out_triangular_B1_start_merge_reg_aunroll_x_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni1_0_tpl(GND_q),
        .in_c0_eni1_1_tpl(bubble_select_triangular_B1_start_merge_reg_aunroll_x_b),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_triangular2_exiting_stall_out(i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_triangular2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_triangular2_exiting_valid_out(i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_triangular2_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_c0_exit_1_tpl),
        .out_c0_exit_2_tpl(i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_c0_exit_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,15)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_triangular2_exiting_valid_out = i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_triangular2_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_triangular2_exiting_stall_out = i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_triangular2_exiting_stall_out;

    // feedback_stall_out_1_sync(GPOUT,17)
    assign out_feedback_stall_out_1 = i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_out_feedback_stall_out_1;

    // pipeline_valid_out_sync(GPOUT,59)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_pipeline_valid_out;

    // regfree_osync(GPOUT,60)
    assign out_intel_reserved_ffwd_0_0 = i_llvm_fpga_ffwd_source_i32_unnamed_triangular2_triangular14_out_intel_reserved_ffwd_0_0;

    // sync_out(GPOUT,64)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,72)
    assign out_iord_bl_call_triangular_o_fifoready = i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_iord_bl_call_triangular_o_fifoready;
    assign out_iord_bl_call_triangular_o_fifoalmost_full = i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_iord_bl_call_triangular_o_fifoalmost_full;

    // dupName_0_regfree_osync_x(GPOUT,73)
    assign out_intel_reserved_ffwd_1_0 = i_llvm_fpga_ffwd_source_i1_unnamed_triangular3_triangular15_out_intel_reserved_ffwd_1_0;

    // bubble_join_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8(BITJOIN,103)
    assign bubble_join_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_q = i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_out_o_data;

    // bubble_select_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8(BITSELECT,104)
    assign bubble_select_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_b = $unsigned(bubble_join_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_q[31:0]);

    // redist0_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0(REG,93)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist0_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_backEN == 1'b1)
        begin
            redist0_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_q <= $unsigned(bubble_select_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_b);
        end
    end

    // dupName_0_sync_out_x(GPOUT,74)@3
    assign out_c1_exe1 = redist0_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_q;
    assign out_reorder_limiter_enter = bubble_select_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_b;
    assign out_valid_out = SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,76)
    assign out_wgl_6_enter_exit_valid_out = i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_out_wgl_6_enter_exit_valid_out;
    assign out_wgl_6_enter_exit_stall_out = i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_out_wgl_6_enter_exit_stall_out;

    // dupName_1_regfree_osync_x(GPOUT,77)
    assign out_intel_reserved_ffwd_2_0 = i_llvm_fpga_ffwd_source_i32_unnamed_triangular4_triangular16_out_intel_reserved_ffwd_2_0;

    // dupName_2_regfree_osync_x(GPOUT,78)
    assign out_intel_reserved_ffwd_3_0 = i_llvm_fpga_ffwd_source_i33_unnamed_triangular5_triangular23_out_intel_reserved_ffwd_3_0;

endmodule
