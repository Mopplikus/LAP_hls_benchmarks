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

// SystemVerilog created from bb_covariance_B1_start_stall_region
// Created for function/kernel covariance
// SystemVerilog created on Wed Apr  5 02:12:06 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_bb_B1_start_stall_region (
    input wire [127:0] in_iord_bl_call_covariance_i_fifodata,
    input wire [0:0] in_iord_bl_call_covariance_i_fifovalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going128_covariance2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going128_covariance2_exiting_stall_out,
    input wire [0:0] in_feedback_in_1,
    output wire [0:0] out_feedback_stall_out_1,
    input wire [0:0] in_feedback_valid_in_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    output wire [63:0] out_intel_reserved_ffwd_0_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked130,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_covariance_o_fifoready,
    output wire [0:0] out_iord_bl_call_covariance_o_fifoalmost_full,
    output wire [63:0] out_intel_reserved_ffwd_1_0,
    output wire [31:0] out_c1_exe1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024a32i32_unnamed_covariance2_covariance9_out_intel_reserved_ffwd_0_0;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024a32i32_unnamed_covariance2_covariance9_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024a32i32_unnamed_covariance2_covariance9_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024a32i32_unnamed_covariance3_covariance10_out_intel_reserved_ffwd_1_0;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024a32i32_unnamed_covariance3_covariance10_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024a32i32_unnamed_covariance3_covariance10_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_covariance3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_covariance3_out_feedback_stall_out_1;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_covariance3_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_covariance3_out_valid_out;
    wire [0:0] covariance_B1_start_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] covariance_B1_start_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] covariance_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_out_iord_bl_call_covariance_o_fifoalmost_full;
    wire [0:0] i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_out_iord_bl_call_covariance_o_fifoready;
    wire [0:0] i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_out_o_stall;
    wire [0:0] i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_out_o_valid;
    wire [63:0] i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_out_o_data_0_tpl;
    wire [63:0] i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_out_o_data_1_tpl;
    wire [0:0] i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going128_covariance2_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going128_covariance2_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_out_c0_exit_1_tpl;
    wire [0:0] i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_out_c0_exit_2_tpl;
    wire [0:0] i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance5_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance5_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance5_aunroll_x_out_c1_exit_1_tpl;
    wire [0:0] bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_covariance3_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_covariance3_b;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_join_covariance_B1_start_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_covariance_B1_start_merge_reg_aunroll_x_b;
    wire [127:0] bubble_join_i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_q;
    wire [63:0] bubble_select_i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_b;
    wire [63:0] bubble_select_i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_c;
    wire [1:0] bubble_join_i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_c;
    wire [31:0] bubble_join_i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance5_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance5_aunroll_x_b;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_covariance3_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_covariance3_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_covariance3_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_covariance_B1_start_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_covariance_B1_start_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_covariance_B1_start_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_wireValid;
    wire [0:0] SE_out_i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_wireStall;
    wire [0:0] SE_out_i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_StallValid;
    wire [0:0] SE_out_i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_toReg0;
    reg [0:0] SE_out_i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_consumed0;
    wire [0:0] SE_out_i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_toReg1;
    reg [0:0] SE_out_i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_consumed1;
    wire [0:0] SE_out_i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_or0;
    wire [0:0] SE_out_i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_backStall;
    wire [0:0] SE_out_i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_V0;
    wire [0:0] SE_out_i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance5_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance5_aunroll_x_and0;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance5_aunroll_x_and1;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance5_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance5_aunroll_x_V0;


    // bubble_join_stall_entry(BITJOIN,49)
    assign bubble_join_stall_entry_q = in_forked130;

    // bubble_select_stall_entry(BITSELECT,50)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // SE_stall_entry(STALLENABLE,73)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = covariance_B1_start_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // covariance_B1_start_merge_reg_aunroll_x(BLACKBOX,36)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    covariance_B1_start_merge_reg thecovariance_B1_start_merge_reg_aunroll_x (
        .in_stall_in(SE_out_covariance_B1_start_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .out_stall_out(covariance_B1_start_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(covariance_B1_start_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(covariance_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_covariance_B1_start_merge_reg_aunroll_x(BITJOIN,53)
    assign bubble_join_covariance_B1_start_merge_reg_aunroll_x_q = covariance_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_covariance_B1_start_merge_reg_aunroll_x(BITSELECT,54)
    assign bubble_select_covariance_B1_start_merge_reg_aunroll_x_b = $unsigned(bubble_join_covariance_B1_start_merge_reg_aunroll_x_q[0:0]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_covariance_B1_start_merge_reg_aunroll_x(STALLENABLE,76)
    // Valid signal propagation
    assign SE_out_covariance_B1_start_merge_reg_aunroll_x_V0 = SE_out_covariance_B1_start_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_covariance_B1_start_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_out_o_stall | ~ (SE_out_covariance_B1_start_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_covariance_B1_start_merge_reg_aunroll_x_wireValid = covariance_B1_start_merge_reg_aunroll_x_out_valid_out;

    // SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_covariance3(STALLENABLE,72)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_covariance3_V0 = SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_covariance3_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_covariance3_backStall = i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_out_o_stall | ~ (SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_covariance3_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_covariance3_wireValid = i_llvm_fpga_pop_throttle_i1_throttle_pop_covariance3_out_valid_out;

    // bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_covariance3(BITJOIN,46)
    assign bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_covariance3_q = i_llvm_fpga_pop_throttle_i1_throttle_pop_covariance3_out_data_out;

    // bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_covariance3(BITSELECT,47)
    assign bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_covariance3_b = $unsigned(bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_covariance3_q[0:0]);

    // i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x(BLACKBOX,40)@2
    // in in_i_stall@20000000
    // out out_iord_bl_call_covariance_o_fifoalmost_full@20000000
    // out out_iord_bl_call_covariance_o_fifoready@20000000
    // out out_o_stall@20000000
    covariance_i_iord_bl_call_unnamed_covariance1_covariance0 thei_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x (
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_covariance3_b),
        .in_i_stall(SE_out_i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_covariance3_V0),
        .in_iord_bl_call_covariance_i_fifodata(in_iord_bl_call_covariance_i_fifodata),
        .in_iord_bl_call_covariance_i_fifovalid(in_iord_bl_call_covariance_i_fifovalid),
        .out_iord_bl_call_covariance_o_fifoalmost_full(i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_out_iord_bl_call_covariance_o_fifoalmost_full),
        .out_iord_bl_call_covariance_o_fifoready(i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_out_iord_bl_call_covariance_o_fifoready),
        .out_o_stall(i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_out_o_stall),
        .out_o_valid(i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_out_o_data_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x(STALLENABLE,78)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_fromReg0 <= '0;
            SE_out_i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_fromReg0 <= SE_out_i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_fromReg1 <= SE_out_i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_consumed0 = (~ (i_llvm_fpga_ffwd_source_p1024a32i32_unnamed_covariance2_covariance9_out_stall_out) & SE_out_i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_wireValid) | SE_out_i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_fromReg0;
    assign SE_out_i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_consumed1 = (~ (i_llvm_fpga_ffwd_source_p1024a32i32_unnamed_covariance3_covariance10_out_stall_out) & SE_out_i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_wireValid) | SE_out_i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_StallValid = SE_out_i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_backStall & SE_out_i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_wireValid;
    assign SE_out_i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_toReg0 = SE_out_i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_StallValid & SE_out_i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_consumed0;
    assign SE_out_i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_toReg1 = SE_out_i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_StallValid & SE_out_i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_or0 = SE_out_i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_consumed0;
    assign SE_out_i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_wireStall = ~ (SE_out_i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_consumed1 & SE_out_i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_or0);
    assign SE_out_i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_backStall = SE_out_i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_V0 = SE_out_i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_fromReg0);
    assign SE_out_i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_V1 = SE_out_i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_wireValid = i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_out_o_valid;

    // bubble_join_i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x(BITJOIN,57)
    assign bubble_join_i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_q = {i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_out_o_data_1_tpl, i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_out_o_data_0_tpl};

    // bubble_select_i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x(BITSELECT,58)
    assign bubble_select_i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_b = $unsigned(bubble_join_i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_q[63:0]);
    assign bubble_select_i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_c = $unsigned(bubble_join_i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_q[127:64]);

    // i_llvm_fpga_ffwd_source_p1024a32i32_unnamed_covariance2_covariance9(BLACKBOX,11)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_0_0@20000000
    // out out_stall_out@20000000
    covariance_i_llvm_fpga_ffwd_source_p10240000nnamed_2_covariance0 thei_llvm_fpga_ffwd_source_p1024a32i32_unnamed_covariance2_covariance9 (
        .in_predicate_in(GND_q),
        .in_src_data_in_0_0(bubble_select_i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_b),
        .in_stall_in(SE_out_i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance5_aunroll_x_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_V0),
        .out_intel_reserved_ffwd_0_0(i_llvm_fpga_ffwd_source_p1024a32i32_unnamed_covariance2_covariance9_out_intel_reserved_ffwd_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_p1024a32i32_unnamed_covariance2_covariance9_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_p1024a32i32_unnamed_covariance2_covariance9_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_p1024a32i32_unnamed_covariance3_covariance10(BLACKBOX,12)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_1_0@20000000
    // out out_stall_out@20000000
    covariance_i_llvm_fpga_ffwd_source_p10240000nnamed_3_covariance0 thei_llvm_fpga_ffwd_source_p1024a32i32_unnamed_covariance3_covariance10 (
        .in_predicate_in(GND_q),
        .in_src_data_in_1_0(bubble_select_i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_c),
        .in_stall_in(SE_out_i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance5_aunroll_x_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_V1),
        .out_intel_reserved_ffwd_1_0(i_llvm_fpga_ffwd_source_p1024a32i32_unnamed_covariance3_covariance10_out_intel_reserved_ffwd_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_p1024a32i32_unnamed_covariance3_covariance10_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_p1024a32i32_unnamed_covariance3_covariance10_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance5_aunroll_x(STALLENABLE,82)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance5_aunroll_x_V0 = SE_out_i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance5_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance5_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance5_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance5_aunroll_x_and0 = i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance5_aunroll_x_out_o_valid;
    assign SE_out_i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance5_aunroll_x_and1 = i_llvm_fpga_ffwd_source_p1024a32i32_unnamed_covariance3_covariance10_out_valid_out & SE_out_i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance5_aunroll_x_and0;
    assign SE_out_i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance5_aunroll_x_wireValid = i_llvm_fpga_ffwd_source_p1024a32i32_unnamed_covariance2_covariance9_out_valid_out & SE_out_i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance5_aunroll_x_and1;

    // bubble_join_i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x(BITJOIN,60)
    assign bubble_join_i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_q = {i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_out_c0_exit_2_tpl, i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_out_c0_exit_1_tpl};

    // bubble_select_i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x(BITSELECT,61)
    assign bubble_select_i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_q[1:1]);

    // i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance5_aunroll_x(BLACKBOX,42)@1
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@2
    // out out_c1_exit_0_tpl@2
    // out out_c1_exit_1_tpl@2
    covariance_i_sfc_s_c1_in_wt_entry_s_c1_enter_covariance5 thei_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance5_aunroll_x (
        .in_c0_exe1(bubble_select_i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_b),
        .in_c0_exe2(bubble_select_i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_c),
        .in_i_stall(SE_out_i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance5_aunroll_x_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_V1),
        .in_c1_eni1_0_tpl(GND_q),
        .in_c1_eni1_1_tpl(bubble_select_i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_c),
        .out_o_stall(i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance5_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance5_aunroll_x_out_o_valid),
        .out_c1_exit_0_tpl(),
        .out_c1_exit_1_tpl(i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance5_aunroll_x_out_c1_exit_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_covariance3(BLACKBOX,13)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_1@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    covariance_i_llvm_fpga_pop_throttle_i1_throttle_pop_0 thei_llvm_fpga_pop_throttle_i1_throttle_pop_covariance3 (
        .in_data_in(GND_q),
        .in_dir(GND_q),
        .in_feedback_in_1(in_feedback_in_1),
        .in_feedback_valid_in_1(in_feedback_valid_in_1),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_covariance3_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_V0),
        .out_data_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_covariance3_out_data_out),
        .out_feedback_stall_out_1(i_llvm_fpga_pop_throttle_i1_throttle_pop_covariance3_out_feedback_stall_out_1),
        .out_stall_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_covariance3_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_covariance3_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x(STALLENABLE,80)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_consumed0 = (~ (i_llvm_fpga_pop_throttle_i1_throttle_pop_covariance3_out_stall_out) & SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_consumed1 = (~ (i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance5_aunroll_x_out_o_stall) & SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_or0);
    assign SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_wireValid = i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x(BLACKBOX,41)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going128_covariance2_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going128_covariance2_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_pipeline_valid_out@20000000
    covariance_i_sfc_s_c0_in_wt_entry_s_c0_enter27_covariance1 thei_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_backStall),
        .in_i_valid(SE_out_covariance_B1_start_merge_reg_aunroll_x_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni1_0_tpl(GND_q),
        .in_c0_eni1_1_tpl(bubble_select_covariance_B1_start_merge_reg_aunroll_x_b),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going128_covariance2_exiting_stall_out(i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going128_covariance2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going128_covariance2_exiting_valid_out(i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going128_covariance2_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_out_c0_exit_1_tpl),
        .out_c0_exit_2_tpl(i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_out_c0_exit_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,7)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going128_covariance2_exiting_valid_out = i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going128_covariance2_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going128_covariance2_exiting_stall_out = i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going128_covariance2_exiting_stall_out;

    // feedback_stall_out_1_sync(GPOUT,9)
    assign out_feedback_stall_out_1 = i_llvm_fpga_pop_throttle_i1_throttle_pop_covariance3_out_feedback_stall_out_1;

    // pipeline_valid_out_sync(GPOUT,29)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_wt_entry_covariances_c0_enter27_covariance1_aunroll_x_out_pipeline_valid_out;

    // regfree_osync(GPOUT,30)
    assign out_intel_reserved_ffwd_0_0 = i_llvm_fpga_ffwd_source_p1024a32i32_unnamed_covariance2_covariance9_out_intel_reserved_ffwd_0_0;

    // sync_out(GPOUT,34)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,37)
    assign out_iord_bl_call_covariance_o_fifoready = i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_out_iord_bl_call_covariance_o_fifoready;
    assign out_iord_bl_call_covariance_o_fifoalmost_full = i_iord_bl_call_covariance_unnamed_covariance1_covariance7_aunroll_x_out_iord_bl_call_covariance_o_fifoalmost_full;

    // dupName_0_regfree_osync_x(GPOUT,38)
    assign out_intel_reserved_ffwd_1_0 = i_llvm_fpga_ffwd_source_p1024a32i32_unnamed_covariance3_covariance10_out_intel_reserved_ffwd_1_0;

    // bubble_join_i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance5_aunroll_x(BITJOIN,64)
    assign bubble_join_i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance5_aunroll_x_q = i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance5_aunroll_x_out_c1_exit_1_tpl;

    // bubble_select_i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance5_aunroll_x(BITSELECT,65)
    assign bubble_select_i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance5_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance5_aunroll_x_q[31:0]);

    // dupName_0_sync_out_x(GPOUT,39)@2
    assign out_c1_exe1 = bubble_select_i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance5_aunroll_x_b;
    assign out_valid_out = SE_out_i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance5_aunroll_x_V0;

endmodule
