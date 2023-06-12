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

// SystemVerilog created from bb_if_loop_3_B1_start_stall_region
// Created for function/kernel if_loop_3
// SystemVerilog created on Mon Jun 12 16:25:26 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module if_loop_3_bb_B1_start_stall_region (
    output wire [0:0] out_iord_bl_call_if_loop_3_o_fifoready,
    output wire [0:0] out_iord_bl_call_if_loop_3_o_fifoalmost_full,
    output wire [63:0] out_intel_reserved_ffwd_1_0,
    output wire [0:0] out_valid_out,
    output wire [63:0] out_intel_reserved_ffwd_2_0,
    output wire [32:0] out_intel_reserved_ffwd_3_0,
    input wire [191:0] in_iord_bl_call_if_loop_3_i_fifodata,
    input wire [0:0] in_iord_bl_call_if_loop_3_i_fifovalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going12_if_loop_31_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going12_if_loop_31_exiting_stall_out,
    input wire [0:0] in_feedback_in_1,
    output wire [0:0] out_feedback_stall_out_1,
    input wire [0:0] in_feedback_valid_in_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_intel_reserved_ffwd_0_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] bgTrunc_i_unnamed_if_loop_314_sel_x_b;
    wire [32:0] bgTrunc_i_unnamed_if_loop_316_sel_x_b;
    wire [31:0] c_i32_021_recast_x_q;
    wire [31:0] c_i32_122_recast_x_q;
    wire [63:0] i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_out_o_data_0_tpl;
    wire [63:0] i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_out_o_data_1_tpl;
    wire [31:0] i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_out_o_data_2_tpl;
    wire [0:0] i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_out_iord_bl_call_if_loop_3_o_fifoalmost_full;
    wire [0:0] i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_out_iord_bl_call_if_loop_3_o_fifoready;
    wire [0:0] i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_out_o_stall;
    wire [0:0] i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_wt_entry_if_loop_3s_c0_enter1_if_loop_30_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going12_if_loop_31_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_if_loop_3s_c0_enter1_if_loop_30_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going12_if_loop_31_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_if_loop_3s_c0_enter1_if_loop_30_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_wt_entry_if_loop_3s_c0_enter1_if_loop_30_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_wt_entry_if_loop_3s_c0_enter1_if_loop_30_aunroll_x_out_pipeline_valid_out;
    wire [32:0] i_unnamed_if_loop_315_sel_x_b;
    wire [31:0] c_i32_123_q;
    wire [32:0] c_i33_124_q;
    wire [33:0] i_cmp21_if_loop_36_a;
    wire [33:0] i_cmp21_if_loop_36_b;
    logic [33:0] i_cmp21_if_loop_36_o;
    wire [0:0] i_cmp21_if_loop_36_c;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_if_loop_35_if_loop_312_out_intel_reserved_ffwd_0_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_if_loop_35_if_loop_312_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_if_loop_35_if_loop_312_out_valid_out;
    wire [32:0] i_llvm_fpga_ffwd_source_i33_unnamed_if_loop_36_if_loop_317_out_intel_reserved_ffwd_3_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i33_unnamed_if_loop_36_if_loop_317_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i33_unnamed_if_loop_36_if_loop_317_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_p1025i32_unnamed_if_loop_33_if_loop_310_out_intel_reserved_ffwd_1_0;
    wire [0:0] i_llvm_fpga_ffwd_source_p1025i32_unnamed_if_loop_33_if_loop_310_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_p1025i32_unnamed_if_loop_33_if_loop_310_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311_out_intel_reserved_ffwd_2_0;
    wire [0:0] i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_31_out_data_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_31_out_feedback_stall_out_1;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_31_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_31_out_valid_out;
    wire [0:0] i_smax_if_loop_313_s;
    reg [31:0] i_smax_if_loop_313_q;
    wire [31:0] i_smax_if_loop_313_vt_join_q;
    wire [30:0] i_smax_if_loop_313_vt_select_30_b;
    wire [32:0] i_unnamed_if_loop_314_a;
    wire [32:0] i_unnamed_if_loop_314_b;
    logic [32:0] i_unnamed_if_loop_314_o;
    wire [32:0] i_unnamed_if_loop_314_q;
    wire [32:0] i_unnamed_if_loop_315_vt_join_q;
    wire [31:0] i_unnamed_if_loop_315_vt_select_31_b;
    wire [33:0] i_unnamed_if_loop_316_a;
    wire [33:0] i_unnamed_if_loop_316_b;
    logic [33:0] i_unnamed_if_loop_316_o;
    wire [33:0] i_unnamed_if_loop_316_q;
    wire [33:0] i_unnamed_if_loop_38_a;
    wire [33:0] i_unnamed_if_loop_38_b;
    logic [33:0] i_unnamed_if_loop_38_o;
    wire [0:0] i_unnamed_if_loop_38_c;
    wire [0:0] if_loop_3_B1_start_merge_reg_out_stall_out;
    wire [0:0] if_loop_3_B1_start_merge_reg_out_valid_out;
    reg [31:0] redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_q;
    reg [30:0] redist1_i_smax_if_loop_313_vt_select_30_b_1_0_q;
    reg [0:0] redist2_i_cmp21_if_loop_36_c_2_0_q;
    reg [31:0] redist3_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_out_o_data_2_tpl_1_0_q;
    wire [159:0] bubble_join_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_q;
    wire [63:0] bubble_select_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_b;
    wire [63:0] bubble_select_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_c;
    wire [31:0] bubble_select_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_d;
    wire [0:0] bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_31_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_31_b;
    wire [0:0] SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_wireValid;
    wire [0:0] SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_wireStall;
    wire [0:0] SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_StallValid;
    wire [0:0] SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_toReg0;
    reg [0:0] SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_consumed0;
    wire [0:0] SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_toReg1;
    reg [0:0] SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_consumed1;
    wire [0:0] SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_toReg2;
    reg [0:0] SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_consumed2;
    wire [0:0] SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_or0;
    wire [0:0] SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_or1;
    wire [0:0] SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_backStall;
    wire [0:0] SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_V0;
    wire [0:0] SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_V1;
    wire [0:0] SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_V2;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_if_loop_3s_c0_enter1_if_loop_30_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_if_loop_3s_c0_enter1_if_loop_30_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_if_loop_3s_c0_enter1_if_loop_30_aunroll_x_V0;
    reg [0:0] SE_i_cmp21_if_loop_36_R_v_0;
    wire [0:0] SE_i_cmp21_if_loop_36_v_s_0;
    wire [0:0] SE_i_cmp21_if_loop_36_s_tv_0;
    wire [0:0] SE_i_cmp21_if_loop_36_backEN;
    wire [0:0] SE_i_cmp21_if_loop_36_backStall;
    wire [0:0] SE_i_cmp21_if_loop_36_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_if_loop_33_if_loop_310_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_if_loop_33_if_loop_310_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_if_loop_33_if_loop_310_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_31_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_31_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_31_V0;
    reg [0:0] SE_i_unnamed_if_loop_38_R_v_0;
    wire [0:0] SE_i_unnamed_if_loop_38_v_s_0;
    wire [0:0] SE_i_unnamed_if_loop_38_s_tv_0;
    wire [0:0] SE_i_unnamed_if_loop_38_backEN;
    wire [0:0] SE_i_unnamed_if_loop_38_backStall;
    wire [0:0] SE_i_unnamed_if_loop_38_V0;
    wire [0:0] SE_out_if_loop_3_B1_start_merge_reg_wireValid;
    wire [0:0] SE_out_if_loop_3_B1_start_merge_reg_backStall;
    wire [0:0] SE_out_if_loop_3_B1_start_merge_reg_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    reg [0:0] SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_R_v_0;
    reg [0:0] SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_R_v_1;
    wire [0:0] SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_v_s_0;
    wire [0:0] SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_s_tv_0;
    wire [0:0] SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_s_tv_1;
    wire [0:0] SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_backEN;
    wire [0:0] SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_or0;
    wire [0:0] SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_backStall;
    wire [0:0] SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_V0;
    wire [0:0] SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_V1;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311_1_and0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311_1_and1;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311_1_and2;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311_1_backStall;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311_1_V0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_if_loop_33_if_loop_310_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_if_loop_33_if_loop_310_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_if_loop_33_if_loop_310_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_if_loop_33_if_loop_310_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_if_loop_33_if_loop_310_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_if_loop_33_if_loop_310_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_if_loop_33_if_loop_310_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_if_loop_33_if_loop_310_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311_1_reg_stall_out_bitsignaltemp;
    wire [0:0] SR_SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_i_valid;
    reg [0:0] SR_SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_r_valid;
    reg [31:0] SR_SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_r_data0;
    reg [0:0] SR_SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_r_data1;
    wire [0:0] SR_SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_backStall;
    wire [0:0] SR_SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_V;
    wire [31:0] SR_SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_D0;
    wire [0:0] SR_SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_D1;


    // SE_stall_entry(STALLENABLE,125)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = if_loop_3_B1_start_merge_reg_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // if_loop_3_B1_start_merge_reg(BLACKBOX,46)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    if_loop_3_B1_start_merge_reg theif_loop_3_B1_start_merge_reg (
        .in_data_in(GND_q),
        .in_stall_in(SE_out_if_loop_3_B1_start_merge_reg_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out(),
        .out_stall_out(if_loop_3_B1_start_merge_reg_out_stall_out),
        .out_valid_out(if_loop_3_B1_start_merge_reg_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_if_loop_3_B1_start_merge_reg(STALLENABLE,124)
    // Valid signal propagation
    assign SE_out_if_loop_3_B1_start_merge_reg_V0 = SE_out_if_loop_3_B1_start_merge_reg_wireValid;
    // Backward Stall generation
    assign SE_out_if_loop_3_B1_start_merge_reg_backStall = i_sfc_s_c0_in_wt_entry_if_loop_3s_c0_enter1_if_loop_30_aunroll_x_out_o_stall | ~ (SE_out_if_loop_3_B1_start_merge_reg_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_if_loop_3_B1_start_merge_reg_wireValid = if_loop_3_B1_start_merge_reg_out_valid_out;

    // i_sfc_s_c0_in_wt_entry_if_loop_3s_c0_enter1_if_loop_30_aunroll_x(BLACKBOX,12)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going12_if_loop_31_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going12_if_loop_31_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_pipeline_valid_out@20000000
    if_loop_3_i_sfc_s_c0_in_wt_entry_s_c0_enter1_if_loop_30 thei_sfc_s_c0_in_wt_entry_if_loop_3s_c0_enter1_if_loop_30_aunroll_x (
        .in_unnamed_if_loop_30_0_tpl(GND_q),
        .in_i_stall(SE_out_i_sfc_s_c0_in_wt_entry_if_loop_3s_c0_enter1_if_loop_30_aunroll_x_backStall),
        .in_i_valid(SE_out_if_loop_3_B1_start_merge_reg_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going12_if_loop_31_exiting_stall_out(i_sfc_s_c0_in_wt_entry_if_loop_3s_c0_enter1_if_loop_30_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going12_if_loop_31_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going12_if_loop_31_exiting_valid_out(i_sfc_s_c0_in_wt_entry_if_loop_3s_c0_enter1_if_loop_30_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going12_if_loop_31_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_wt_entry_if_loop_3s_c0_enter1_if_loop_30_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_wt_entry_if_loop_3s_c0_enter1_if_loop_30_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_wt_entry_if_loop_3s_c0_enter1_if_loop_30_aunroll_x_out_pipeline_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_wt_entry_if_loop_3s_c0_enter1_if_loop_30_aunroll_x(STALLENABLE,102)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_wt_entry_if_loop_3s_c0_enter1_if_loop_30_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_wt_entry_if_loop_3s_c0_enter1_if_loop_30_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_wt_entry_if_loop_3s_c0_enter1_if_loop_30_aunroll_x_backStall = i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_31_out_stall_out | ~ (SE_out_i_sfc_s_c0_in_wt_entry_if_loop_3s_c0_enter1_if_loop_30_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_wt_entry_if_loop_3s_c0_enter1_if_loop_30_aunroll_x_wireValid = i_sfc_s_c0_in_wt_entry_if_loop_3s_c0_enter1_if_loop_30_aunroll_x_out_o_valid;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_31(BLACKBOX,34)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_1@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    if_loop_3_i_llvm_fpga_pop_throttle_i1_throttle_pop_0 thei_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_31 (
        .in_data_in(GND_q),
        .in_dir(GND_q),
        .in_feedback_in_1(in_feedback_in_1),
        .in_feedback_valid_in_1(in_feedback_valid_in_1),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_31_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_wt_entry_if_loop_3s_c0_enter1_if_loop_30_aunroll_x_V0),
        .out_data_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_31_out_data_out),
        .out_feedback_stall_out_1(i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_31_out_feedback_stall_out_1),
        .out_stall_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_31_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_31_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_31(STALLENABLE,114)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_31_V0 = SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_31_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_31_backStall = i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_out_o_stall | ~ (SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_31_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_31_wireValid = i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_31_out_valid_out;

    // redist3_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_out_o_data_2_tpl_1_0(REG,83)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_out_o_data_2_tpl_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_i_unnamed_if_loop_38_backEN == 1'b1)
        begin
            redist3_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_out_o_data_2_tpl_1_0_q <= $unsigned(bubble_select_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_d);
        end
    end

    // c_i32_021_recast_x(CONSTANT,4)
    assign c_i32_021_recast_x_q = $unsigned(32'b00000000000000000000000000000000);

    // i_cmp21_if_loop_36(COMPARE,29)@3 + 1
    assign i_cmp21_if_loop_36_a = $unsigned({{2{c_i32_021_recast_x_q[31]}}, c_i32_021_recast_x_q});
    assign i_cmp21_if_loop_36_b = $unsigned({{2{redist3_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_out_o_data_2_tpl_1_0_q[31]}}, redist3_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_out_o_data_2_tpl_1_0_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp21_if_loop_36_o <= 34'b0;
        end
        else if (SE_i_cmp21_if_loop_36_backEN == 1'b1)
        begin
            i_cmp21_if_loop_36_o <= $unsigned($signed(i_cmp21_if_loop_36_a) - $signed(i_cmp21_if_loop_36_b));
        end
    end
    assign i_cmp21_if_loop_36_c[0] = i_cmp21_if_loop_36_o[33];

    // c_i32_123(CONSTANT,19)
    assign c_i32_123_q = $unsigned(32'b11111111111111111111111111111111);

    // c_i32_122_recast_x(CONSTANT,5)
    assign c_i32_122_recast_x_q = $unsigned(32'b00000000000000000000000000000001);

    // i_unnamed_if_loop_38(COMPARE,45)@2 + 1
    assign i_unnamed_if_loop_38_a = $unsigned({{2{c_i32_122_recast_x_q[31]}}, c_i32_122_recast_x_q});
    assign i_unnamed_if_loop_38_b = $unsigned({{2{bubble_select_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_d[31]}}, bubble_select_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_d});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_if_loop_38_o <= 34'b0;
        end
        else if (SE_i_unnamed_if_loop_38_backEN == 1'b1)
        begin
            i_unnamed_if_loop_38_o <= $unsigned($signed(i_unnamed_if_loop_38_a) - $signed(i_unnamed_if_loop_38_b));
        end
    end
    assign i_unnamed_if_loop_38_c[0] = i_unnamed_if_loop_38_o[33];

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_smax_if_loop_313(MUX,35)@3
    assign i_smax_if_loop_313_s = i_unnamed_if_loop_38_c;
    always @(i_smax_if_loop_313_s or c_i32_122_recast_x_q or redist3_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_out_o_data_2_tpl_1_0_q)
    begin
        unique case (i_smax_if_loop_313_s)
            1'b0 : i_smax_if_loop_313_q = c_i32_122_recast_x_q;
            1'b1 : i_smax_if_loop_313_q = redist3_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_out_o_data_2_tpl_1_0_q;
            default : i_smax_if_loop_313_q = 32'b0;
        endcase
    end

    // i_smax_if_loop_313_vt_select_30(BITSELECT,38)@3
    assign i_smax_if_loop_313_vt_select_30_b = i_smax_if_loop_313_q[30:0];

    // redist1_i_smax_if_loop_313_vt_select_30_b_1_0(REG,81)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_smax_if_loop_313_vt_select_30_b_1_0_q <= $unsigned(31'b0000000000000000000000000000000);
        end
        else if (SE_i_cmp21_if_loop_36_backEN == 1'b1)
        begin
            redist1_i_smax_if_loop_313_vt_select_30_b_1_0_q <= $unsigned(i_smax_if_loop_313_vt_select_30_b);
        end
    end

    // i_smax_if_loop_313_vt_join(BITJOIN,37)@4
    assign i_smax_if_loop_313_vt_join_q = {GND_q, redist1_i_smax_if_loop_313_vt_select_30_b_1_0_q};

    // i_unnamed_if_loop_314(ADD,39)@4
    assign i_unnamed_if_loop_314_a = {1'b0, i_smax_if_loop_313_vt_join_q};
    assign i_unnamed_if_loop_314_b = {1'b0, c_i32_123_q};
    assign i_unnamed_if_loop_314_o = $unsigned(i_unnamed_if_loop_314_a) + $unsigned(i_unnamed_if_loop_314_b);
    assign i_unnamed_if_loop_314_q = i_unnamed_if_loop_314_o[32:0];

    // bgTrunc_i_unnamed_if_loop_314_sel_x(BITSELECT,2)@4
    assign bgTrunc_i_unnamed_if_loop_314_sel_x_b = i_unnamed_if_loop_314_q[31:0];

    // i_unnamed_if_loop_315_sel_x(BITSELECT,13)@4
    assign i_unnamed_if_loop_315_sel_x_b = {1'b0, bgTrunc_i_unnamed_if_loop_314_sel_x_b[31:0]};

    // i_unnamed_if_loop_315_vt_select_31(BITSELECT,43)@4
    assign i_unnamed_if_loop_315_vt_select_31_b = i_unnamed_if_loop_315_sel_x_b[31:0];

    // SE_i_cmp21_if_loop_36(STALLENABLE,104)
    // Valid signal propagation
    assign SE_i_cmp21_if_loop_36_V0 = SE_i_cmp21_if_loop_36_R_v_0;
    // Stall signal propagation
    assign SE_i_cmp21_if_loop_36_s_tv_0 = SR_SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_backStall & SE_i_cmp21_if_loop_36_R_v_0;
    // Backward Enable generation
    assign SE_i_cmp21_if_loop_36_backEN = ~ (SE_i_cmp21_if_loop_36_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_cmp21_if_loop_36_v_s_0 = SE_i_cmp21_if_loop_36_backEN & SE_i_unnamed_if_loop_38_V0;
    // Backward Stall generation
    assign SE_i_cmp21_if_loop_36_backStall = ~ (SE_i_cmp21_if_loop_36_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_cmp21_if_loop_36_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_cmp21_if_loop_36_backEN == 1'b0)
            begin
                SE_i_cmp21_if_loop_36_R_v_0 <= SE_i_cmp21_if_loop_36_R_v_0 & SE_i_cmp21_if_loop_36_s_tv_0;
            end
            else
            begin
                SE_i_cmp21_if_loop_36_R_v_0 <= SE_i_cmp21_if_loop_36_v_s_0;
            end

        end
    end

    // SR_SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0(STALLREG,155)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_r_valid <= 1'b0;
            SR_SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_r_valid <= SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_backStall & (SR_SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_r_valid | SR_SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_i_valid);

            if (SR_SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_r_data0 <= i_unnamed_if_loop_315_vt_select_31_b;
                SR_SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_r_data1 <= i_cmp21_if_loop_36_c;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_i_valid = SE_i_cmp21_if_loop_36_V0;
    // Stall signal propagation
    assign SR_SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_backStall = SR_SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_r_valid | ~ (SR_SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_i_valid);

    // Valid
    assign SR_SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_V = SR_SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_r_valid == 1'b1 ? SR_SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_r_valid : SR_SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_i_valid;

    // Data0
    assign SR_SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_D0 = SR_SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_r_valid == 1'b1 ? SR_SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_r_data0 : i_unnamed_if_loop_315_vt_select_31_b;
    // Data1
    assign SR_SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_D1 = SR_SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_r_valid == 1'b1 ? SR_SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_r_data1 : i_cmp21_if_loop_36_c;

    // SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0(STALLENABLE,127)
    // Valid signal propagation
    assign SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_V0 = SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_R_v_0;
    assign SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_V1 = SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_R_v_1;
    // Stall signal propagation
    assign SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_s_tv_0 = i_llvm_fpga_ffwd_source_i33_unnamed_if_loop_36_if_loop_317_out_stall_out & SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_R_v_0;
    assign SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_s_tv_1 = i_llvm_fpga_ffwd_source_i1_unnamed_if_loop_35_if_loop_312_out_stall_out & SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_R_v_1;
    // Backward Enable generation
    assign SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_or0 = SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_s_tv_0;
    assign SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_backEN = ~ (SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_s_tv_1 | SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_v_s_0 = SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_backEN & SR_SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_V;
    // Backward Stall generation
    assign SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_backStall = ~ (SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_R_v_0 <= 1'b0;
            SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_backEN == 1'b0)
            begin
                SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_R_v_0 <= SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_R_v_0 & SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_R_v_0 <= SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_v_s_0;
            end

            if (SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_backEN == 1'b0)
            begin
                SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_R_v_1 <= SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_R_v_1 & SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_s_tv_1;
            end
            else
            begin
                SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_R_v_1 <= SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_v_s_0;
            end

        end
    end

    // redist2_i_cmp21_if_loop_36_c_2_0(REG,82)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_cmp21_if_loop_36_c_2_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_backEN == 1'b1)
        begin
            redist2_i_cmp21_if_loop_36_c_2_0_q <= $unsigned(SR_SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_D1);
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_if_loop_35_if_loop_312(BLACKBOX,30)@5
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_0_0@20000000
    // out out_stall_out@20000000
    if_loop_3_i_llvm_fpga_ffwd_source_i1_unnamed_5_if_loop_30 thei_llvm_fpga_ffwd_source_i1_unnamed_if_loop_35_if_loop_312 (
        .in_predicate_in(GND_q),
        .in_src_data_in_0_0(redist2_i_cmp21_if_loop_36_c_2_0_q),
        .in_stall_in(SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311_1_backStall),
        .in_valid_in(SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_V1),
        .out_intel_reserved_ffwd_0_0(i_llvm_fpga_ffwd_source_i1_unnamed_if_loop_35_if_loop_312_out_intel_reserved_ffwd_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_if_loop_35_if_loop_312_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_if_loop_35_if_loop_312_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_124(CONSTANT,20)
    assign c_i33_124_q = $unsigned(33'b111111111111111111111111111111111);

    // redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0(REG,80)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_backEN == 1'b1)
        begin
            redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_q <= $unsigned(SR_SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_D0);
        end
    end

    // i_unnamed_if_loop_315_vt_join(BITJOIN,42)@5
    assign i_unnamed_if_loop_315_vt_join_q = {GND_q, redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_q};

    // i_unnamed_if_loop_316(ADD,44)@5
    assign i_unnamed_if_loop_316_a = {1'b0, i_unnamed_if_loop_315_vt_join_q};
    assign i_unnamed_if_loop_316_b = {1'b0, c_i33_124_q};
    assign i_unnamed_if_loop_316_o = $unsigned(i_unnamed_if_loop_316_a) + $unsigned(i_unnamed_if_loop_316_b);
    assign i_unnamed_if_loop_316_q = i_unnamed_if_loop_316_o[33:0];

    // bgTrunc_i_unnamed_if_loop_316_sel_x(BITSELECT,3)@5
    assign bgTrunc_i_unnamed_if_loop_316_sel_x_b = i_unnamed_if_loop_316_q[32:0];

    // i_llvm_fpga_ffwd_source_i33_unnamed_if_loop_36_if_loop_317(BLACKBOX,31)@5
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_3_0@20000000
    // out out_stall_out@20000000
    if_loop_3_i_llvm_fpga_ffwd_source_i33_unnamed_6_if_loop_30 thei_llvm_fpga_ffwd_source_i33_unnamed_if_loop_36_if_loop_317 (
        .in_predicate_in(GND_q),
        .in_src_data_in_3_0(bgTrunc_i_unnamed_if_loop_316_sel_x_b),
        .in_stall_in(SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311_1_backStall),
        .in_valid_in(SE_redist0_i_unnamed_if_loop_315_vt_select_31_b_1_0_V0),
        .out_intel_reserved_ffwd_3_0(i_llvm_fpga_ffwd_source_i33_unnamed_if_loop_36_if_loop_317_out_intel_reserved_ffwd_3_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i33_unnamed_if_loop_36_if_loop_317_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i33_unnamed_if_loop_36_if_loop_317_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_if_loop_33_if_loop_310(STALLENABLE,110)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_if_loop_33_if_loop_310_V0 = SE_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_if_loop_33_if_loop_310_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_if_loop_33_if_loop_310_backStall = bubble_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_if_loop_33_if_loop_310_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_if_loop_33_if_loop_310_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_if_loop_33_if_loop_310_wireValid = i_llvm_fpga_ffwd_source_p1025i32_unnamed_if_loop_33_if_loop_310_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_if_loop_33_if_loop_310_1_reg(STALLFIFO,153)
    assign bubble_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_if_loop_33_if_loop_310_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_if_loop_33_if_loop_310_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_if_loop_33_if_loop_310_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_if_loop_33_if_loop_310_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_if_loop_33_if_loop_310_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_if_loop_33_if_loop_310_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_if_loop_33_if_loop_310_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_if_loop_33_if_loop_310_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_if_loop_33_if_loop_310_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_if_loop_33_if_loop_310_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_if_loop_33_if_loop_310_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(4),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_if_loop_33_if_loop_310_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_if_loop_33_if_loop_310_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_if_loop_33_if_loop_310_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_if_loop_33_if_loop_310_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_if_loop_33_if_loop_310_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311_1(STALLENABLE,144)
    // Valid signal propagation
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311_1_V0 = SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311_1_backStall = in_stall_in | ~ (SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311_1_and0 = bubble_out_i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311_1_reg_valid_out;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311_1_and1 = bubble_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_if_loop_33_if_loop_310_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311_1_and0;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311_1_and2 = i_llvm_fpga_ffwd_source_i33_unnamed_if_loop_36_if_loop_317_out_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311_1_and1;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311_1_wireValid = i_llvm_fpga_ffwd_source_i1_unnamed_if_loop_35_if_loop_312_out_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311_1_and2;

    // bubble_out_i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311_1_reg(STALLFIFO,154)
    assign bubble_out_i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(4),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311(STALLENABLE,112)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311_V0 = SE_out_i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311_backStall = bubble_out_i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311_wireValid = i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311_out_valid_out;

    // bubble_join_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x(BITJOIN,85)
    assign bubble_join_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_q = {i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_out_o_data_2_tpl, i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_out_o_data_1_tpl, i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_out_o_data_0_tpl};

    // bubble_select_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x(BITSELECT,86)
    assign bubble_select_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_b = $unsigned(bubble_join_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_q[63:0]);
    assign bubble_select_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_c = $unsigned(bubble_join_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_q[127:64]);
    assign bubble_select_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_d = $unsigned(bubble_join_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_q[159:128]);

    // i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311(BLACKBOX,33)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_2_0@20000000
    // out out_stall_out@20000000
    if_loop_3_i_llvm_fpga_ffwd_source_p1028i32_unnamed_4_if_loop_30 thei_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311 (
        .in_predicate_in(GND_q),
        .in_src_data_in_2_0(bubble_select_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_c),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_V2),
        .out_intel_reserved_ffwd_2_0(i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311_out_intel_reserved_ffwd_2_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_p1025i32_unnamed_if_loop_33_if_loop_310(BLACKBOX,32)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_1_0@20000000
    // out out_stall_out@20000000
    if_loop_3_i_llvm_fpga_ffwd_source_p1025i32_unnamed_3_if_loop_30 thei_llvm_fpga_ffwd_source_p1025i32_unnamed_if_loop_33_if_loop_310 (
        .in_predicate_in(GND_q),
        .in_src_data_in_1_0(bubble_select_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_if_loop_33_if_loop_310_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_V1),
        .out_intel_reserved_ffwd_1_0(i_llvm_fpga_ffwd_source_p1025i32_unnamed_if_loop_33_if_loop_310_out_intel_reserved_ffwd_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_p1025i32_unnamed_if_loop_33_if_loop_310_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_p1025i32_unnamed_if_loop_33_if_loop_310_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_unnamed_if_loop_38(STALLENABLE,122)
    // Valid signal propagation
    assign SE_i_unnamed_if_loop_38_V0 = SE_i_unnamed_if_loop_38_R_v_0;
    // Stall signal propagation
    assign SE_i_unnamed_if_loop_38_s_tv_0 = SE_i_cmp21_if_loop_36_backStall & SE_i_unnamed_if_loop_38_R_v_0;
    // Backward Enable generation
    assign SE_i_unnamed_if_loop_38_backEN = ~ (SE_i_unnamed_if_loop_38_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_unnamed_if_loop_38_v_s_0 = SE_i_unnamed_if_loop_38_backEN & SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_V0;
    // Backward Stall generation
    assign SE_i_unnamed_if_loop_38_backStall = ~ (SE_i_unnamed_if_loop_38_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_unnamed_if_loop_38_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_unnamed_if_loop_38_backEN == 1'b0)
            begin
                SE_i_unnamed_if_loop_38_R_v_0 <= SE_i_unnamed_if_loop_38_R_v_0 & SE_i_unnamed_if_loop_38_s_tv_0;
            end
            else
            begin
                SE_i_unnamed_if_loop_38_R_v_0 <= SE_i_unnamed_if_loop_38_v_s_0;
            end

        end
    end

    // SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x(STALLENABLE,100)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_fromReg0 <= '0;
            SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_fromReg1 <= '0;
            SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_fromReg0 <= SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_fromReg1 <= SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_fromReg2 <= SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_consumed0 = (~ (SE_i_unnamed_if_loop_38_backStall) & SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_wireValid) | SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_fromReg0;
    assign SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_consumed1 = (~ (i_llvm_fpga_ffwd_source_p1025i32_unnamed_if_loop_33_if_loop_310_out_stall_out) & SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_wireValid) | SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_fromReg1;
    assign SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_consumed2 = (~ (i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311_out_stall_out) & SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_wireValid) | SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_fromReg2;
    // Consuming
    assign SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_StallValid = SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_backStall & SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_wireValid;
    assign SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_toReg0 = SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_StallValid & SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_consumed0;
    assign SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_toReg1 = SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_StallValid & SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_consumed1;
    assign SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_toReg2 = SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_StallValid & SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_consumed2;
    // Backward Stall generation
    assign SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_or0 = SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_consumed0;
    assign SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_or1 = SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_consumed1 & SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_or0;
    assign SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_wireStall = ~ (SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_consumed2 & SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_or1);
    assign SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_backStall = SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_V0 = SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_fromReg0);
    assign SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_V1 = SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_fromReg1);
    assign SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_V2 = SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_wireValid = i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_out_o_valid;

    // bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_31(BITJOIN,93)
    assign bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_31_q = i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_31_out_data_out;

    // bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_31(BITSELECT,94)
    assign bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_31_b = $unsigned(bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_31_q[0:0]);

    // i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x(BLACKBOX,11)@2
    // in in_i_stall@20000000
    // out out_iord_bl_call_if_loop_3_o_fifoalmost_full@20000000
    // out out_iord_bl_call_if_loop_3_o_fifoready@20000000
    // out out_o_stall@20000000
    if_loop_3_i_iord_bl_call_unnamed_if_loop_32_if_loop_30 thei_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x (
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_31_b),
        .in_i_stall(SE_out_i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_31_V0),
        .in_iord_bl_call_if_loop_3_i_fifodata(in_iord_bl_call_if_loop_3_i_fifodata),
        .in_iord_bl_call_if_loop_3_i_fifovalid(in_iord_bl_call_if_loop_3_i_fifovalid),
        .out_o_data_0_tpl(i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_out_o_data_2_tpl),
        .out_iord_bl_call_if_loop_3_o_fifoalmost_full(i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_out_iord_bl_call_if_loop_3_o_fifoalmost_full),
        .out_iord_bl_call_if_loop_3_o_fifoready(i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_out_iord_bl_call_if_loop_3_o_fifoready),
        .out_o_stall(i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_out_o_stall),
        .out_o_valid(i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,6)
    assign out_iord_bl_call_if_loop_3_o_fifoready = i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_out_iord_bl_call_if_loop_3_o_fifoready;
    assign out_iord_bl_call_if_loop_3_o_fifoalmost_full = i_iord_bl_call_if_loop_3_unnamed_if_loop_32_if_loop_32_aunroll_x_out_iord_bl_call_if_loop_3_o_fifoalmost_full;

    // dupName_0_regfree_osync_x(GPOUT,7)
    assign out_intel_reserved_ffwd_1_0 = i_llvm_fpga_ffwd_source_p1025i32_unnamed_if_loop_33_if_loop_310_out_intel_reserved_ffwd_1_0;

    // dupName_0_sync_out_x(GPOUT,8)@5
    assign out_valid_out = SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311_1_V0;

    // dupName_1_regfree_osync_x(GPOUT,9)
    assign out_intel_reserved_ffwd_2_0 = i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_311_out_intel_reserved_ffwd_2_0;

    // dupName_2_regfree_osync_x(GPOUT,10)
    assign out_intel_reserved_ffwd_3_0 = i_llvm_fpga_ffwd_source_i33_unnamed_if_loop_36_if_loop_317_out_intel_reserved_ffwd_3_0;

    // ext_sig_sync_out(GPOUT,25)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going12_if_loop_31_exiting_valid_out = i_sfc_s_c0_in_wt_entry_if_loop_3s_c0_enter1_if_loop_30_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going12_if_loop_31_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going12_if_loop_31_exiting_stall_out = i_sfc_s_c0_in_wt_entry_if_loop_3s_c0_enter1_if_loop_30_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going12_if_loop_31_exiting_stall_out;

    // feedback_stall_out_1_sync(GPOUT,27)
    assign out_feedback_stall_out_1 = i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_31_out_feedback_stall_out_1;

    // pipeline_valid_out_sync(GPOUT,66)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_wt_entry_if_loop_3s_c0_enter1_if_loop_30_aunroll_x_out_pipeline_valid_out;

    // regfree_osync(GPOUT,67)
    assign out_intel_reserved_ffwd_0_0 = i_llvm_fpga_ffwd_source_i1_unnamed_if_loop_35_if_loop_312_out_intel_reserved_ffwd_0_0;

    // sync_out(GPOUT,71)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
