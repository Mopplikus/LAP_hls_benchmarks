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
// SystemVerilog created on Fri Apr  7 17:50:02 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_bb_B1_start_stall_region (
    input wire [127:0] in_iord_bl_call_covariance_i_fifodata,
    input wire [0:0] in_iord_bl_call_covariance_i_fifovalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_covariance2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_covariance2_exiting_stall_out,
    input wire [0:0] in_feedback_in_16,
    input wire [0:0] in_feedback_in_18,
    output wire [0:0] out_feedback_stall_out_16,
    output wire [0:0] out_feedback_stall_out_18,
    input wire [0:0] in_feedback_valid_in_16,
    input wire [0:0] in_feedback_valid_in_18,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked73,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_covariance_o_fifoready,
    output wire [0:0] out_iord_bl_call_covariance_o_fifoalmost_full,
    output wire [31:0] out_c1_exe1,
    output wire [0:0] out_memdep_phi1_pop16,
    output wire [0:0] out_memdep_phi2_pop17,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi1_pop16_covariance4_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi1_pop16_covariance4_out_feedback_stall_out_16;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi1_pop16_covariance4_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi1_pop16_covariance4_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop17_covariance5_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop17_covariance5_out_feedback_stall_out_18;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop17_covariance5_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop17_covariance5_out_valid_out;
    wire [0:0] covariance_B1_start_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] covariance_B1_start_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] covariance_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] i_iord_bl_call_covariance_unnamed_covariance1_covariance3_aunroll_x_out_iord_bl_call_covariance_o_fifoalmost_full;
    wire [0:0] i_iord_bl_call_covariance_unnamed_covariance1_covariance3_aunroll_x_out_iord_bl_call_covariance_o_fifoready;
    wire [0:0] i_iord_bl_call_covariance_unnamed_covariance1_covariance3_aunroll_x_out_o_stall;
    wire [0:0] i_iord_bl_call_covariance_unnamed_covariance1_covariance3_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_covariance2_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_covariance2_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_1_tpl;
    wire [0:0] i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl;
    wire [0:0] i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance7_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance7_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance7_aunroll_x_out_c1_exit_1_tpl;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi1_pop16_covariance4_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi1_pop16_covariance4_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop17_covariance5_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi2_pop17_covariance5_b;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_join_covariance_B1_start_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_covariance_B1_start_merge_reg_aunroll_x_b;
    wire [1:0] bubble_join_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_c;
    wire [31:0] bubble_join_i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance7_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance7_aunroll_x_b;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_covariance_B1_start_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_covariance_B1_start_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_covariance_B1_start_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_toReg3;
    reg [0:0] SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_fromReg3;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_consumed3;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_or2;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_V2;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_V3;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance7_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance7_aunroll_x_and0;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance7_aunroll_x_and1;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance7_aunroll_x_and2;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance7_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance7_aunroll_x_V0;
    reg [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_1_reg_R_v_0;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_1_reg_v_s_0;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_1_reg_backEN;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_1_reg_backStall;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_1_reg_V0;


    // bubble_join_stall_entry(BITJOIN,49)
    assign bubble_join_stall_entry_q = in_forked73;

    // bubble_select_stall_entry(BITSELECT,50)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // SE_stall_entry(STALLENABLE,69)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = covariance_B1_start_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // covariance_B1_start_merge_reg_aunroll_x(BLACKBOX,34)@0
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

    // SE_out_covariance_B1_start_merge_reg_aunroll_x(STALLENABLE,72)
    // Valid signal propagation
    assign SE_out_covariance_B1_start_merge_reg_aunroll_x_V0 = SE_out_covariance_B1_start_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_covariance_B1_start_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_o_stall | ~ (SE_out_covariance_B1_start_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_covariance_B1_start_merge_reg_aunroll_x_wireValid = covariance_B1_start_merge_reg_aunroll_x_out_valid_out;

    // i_iord_bl_call_covariance_unnamed_covariance1_covariance3_aunroll_x(BLACKBOX,37)@2
    // in in_i_stall@20000000
    // out out_iord_bl_call_covariance_o_fifoalmost_full@20000000
    // out out_iord_bl_call_covariance_o_fifoready@20000000
    // out out_o_stall@20000000
    covariance_i_iord_bl_call_unnamed_covariance1_covariance0 thei_iord_bl_call_covariance_unnamed_covariance1_covariance3_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance7_aunroll_x_backStall),
        .in_i_valid(bubble_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_1_reg_V0),
        .in_iord_bl_call_covariance_i_fifodata(in_iord_bl_call_covariance_i_fifodata),
        .in_iord_bl_call_covariance_i_fifovalid(in_iord_bl_call_covariance_i_fifovalid),
        .out_iord_bl_call_covariance_o_fifoalmost_full(i_iord_bl_call_covariance_unnamed_covariance1_covariance3_aunroll_x_out_iord_bl_call_covariance_o_fifoalmost_full),
        .out_iord_bl_call_covariance_o_fifoready(i_iord_bl_call_covariance_unnamed_covariance1_covariance3_aunroll_x_out_iord_bl_call_covariance_o_fifoready),
        .out_o_stall(i_iord_bl_call_covariance_unnamed_covariance1_covariance3_aunroll_x_out_o_stall),
        .out_o_valid(i_iord_bl_call_covariance_unnamed_covariance1_covariance3_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .out_o_data_1_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance7_aunroll_x(STALLENABLE,78)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance7_aunroll_x_V0 = SE_out_i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance7_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance7_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance7_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance7_aunroll_x_and0 = i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance7_aunroll_x_out_o_valid;
    assign SE_out_i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance7_aunroll_x_and1 = i_llvm_fpga_pop_i1_memdep_phi2_pop17_covariance5_out_valid_out & SE_out_i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance7_aunroll_x_and0;
    assign SE_out_i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance7_aunroll_x_and2 = i_llvm_fpga_pop_i1_memdep_phi1_pop16_covariance4_out_valid_out & SE_out_i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance7_aunroll_x_and1;
    assign SE_out_i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance7_aunroll_x_wireValid = i_iord_bl_call_covariance_unnamed_covariance1_covariance3_aunroll_x_out_o_valid & SE_out_i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance7_aunroll_x_and2;

    // bubble_join_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x(BITJOIN,58)
    assign bubble_join_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_q = {i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl, i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_1_tpl};

    // bubble_select_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x(BITSELECT,59)
    assign bubble_select_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_q[1:1]);

    // i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance7_aunroll_x(BLACKBOX,39)@1
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@2
    // out out_c1_exit_0_tpl@2
    // out out_c1_exit_1_tpl@2
    covariance_i_sfc_s_c1_in_wt_entry_s_c1_enter_covariance7 thei_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance7_aunroll_x (
        .in_c0_exe1(bubble_select_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_b),
        .in_c0_exe2(bubble_select_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_c),
        .in_i_stall(SE_out_i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance7_aunroll_x_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_V3),
        .in_c1_eni1_0_tpl(GND_q),
        .in_c1_eni1_1_tpl(bubble_select_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_c),
        .out_o_stall(i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance7_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance7_aunroll_x_out_o_valid),
        .out_c1_exit_0_tpl(),
        .out_c1_exit_1_tpl(i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance7_aunroll_x_out_c1_exit_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi2_pop17_covariance5(BLACKBOX,14)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_18@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    covariance_i_llvm_fpga_pop_i1_memdep_phi2_pop17_0 thei_llvm_fpga_pop_i1_memdep_phi2_pop17_covariance5 (
        .in_data_in(GND_q),
        .in_dir(bubble_select_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_c),
        .in_feedback_in_18(in_feedback_in_18),
        .in_feedback_valid_in_18(in_feedback_valid_in_18),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance7_aunroll_x_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_V2),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi2_pop17_covariance5_out_data_out),
        .out_feedback_stall_out_18(i_llvm_fpga_pop_i1_memdep_phi2_pop17_covariance5_out_feedback_stall_out_18),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi2_pop17_covariance5_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi2_pop17_covariance5_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi1_pop16_covariance4(BLACKBOX,13)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_16@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    covariance_i_llvm_fpga_pop_i1_memdep_phi1_pop16_0 thei_llvm_fpga_pop_i1_memdep_phi1_pop16_covariance4 (
        .in_data_in(GND_q),
        .in_dir(bubble_select_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_c),
        .in_feedback_in_16(in_feedback_in_16),
        .in_feedback_valid_in_16(in_feedback_valid_in_16),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance7_aunroll_x_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_V1),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi1_pop16_covariance4_out_data_out),
        .out_feedback_stall_out_16(i_llvm_fpga_pop_i1_memdep_phi1_pop16_covariance4_out_feedback_stall_out_16),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi1_pop16_covariance4_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi1_pop16_covariance4_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_1_reg(STALLENABLE,117)
    // Valid signal propagation
    assign bubble_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_1_reg_V0 = bubble_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_1_reg_s_tv_0 = i_iord_bl_call_covariance_unnamed_covariance1_covariance3_aunroll_x_out_o_stall & bubble_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_1_reg_backEN = ~ (bubble_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_1_reg_v_s_0 = bubble_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_1_reg_backEN & SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_V0;
    // Backward Stall generation
    assign bubble_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_1_reg_backStall = ~ (bubble_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_1_reg_R_v_0 <= bubble_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_1_reg_R_v_0 & bubble_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_1_reg_R_v_0 <= bubble_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_1_reg_v_s_0;
            end

        end
    end

    // SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x(STALLENABLE,76)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_fromReg2 <= '0;
            SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_toReg2;
            // Successor 3
            SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_fromReg3 <= SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_consumed0 = (~ (bubble_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_1_reg_backStall) & SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_consumed1 = (~ (i_llvm_fpga_pop_i1_memdep_phi1_pop16_covariance4_out_stall_out) & SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_consumed2 = (~ (i_llvm_fpga_pop_i1_memdep_phi2_pop17_covariance5_out_stall_out) & SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_fromReg2;
    assign SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_consumed3 = (~ (i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance7_aunroll_x_out_o_stall) & SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_fromReg3;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_toReg2 = SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_consumed2;
    assign SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_toReg3 = SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_consumed3;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_or1 = SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_or0;
    assign SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_or2 = SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_consumed2 & SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_or1;
    assign SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_consumed3 & SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_or2);
    assign SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_V2 = SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_fromReg2);
    assign SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_V3 = SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_wireValid = i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x(BLACKBOX,38)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_covariance2_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_covariance2_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_pipeline_valid_out@20000000
    covariance_i_sfc_s_c0_in_wt_entry_s_c0_enter33_covariance1 thei_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_backStall),
        .in_i_valid(SE_out_covariance_B1_start_merge_reg_aunroll_x_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni1_0_tpl(GND_q),
        .in_c0_eni1_1_tpl(bubble_select_covariance_B1_start_merge_reg_aunroll_x_b),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_covariance2_exiting_stall_out(i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_covariance2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_covariance2_exiting_valid_out(i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_covariance2_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_1_tpl),
        .out_c0_exit_2_tpl(i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_covariance2_exiting_valid_out = i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_covariance2_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_covariance2_exiting_stall_out = i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_covariance2_exiting_stall_out;

    // feedback_stall_out_16_sync(GPOUT,9)
    assign out_feedback_stall_out_16 = i_llvm_fpga_pop_i1_memdep_phi1_pop16_covariance4_out_feedback_stall_out_16;

    // feedback_stall_out_18_sync(GPOUT,10)
    assign out_feedback_stall_out_18 = i_llvm_fpga_pop_i1_memdep_phi2_pop17_covariance5_out_feedback_stall_out_18;

    // pipeline_valid_out_sync(GPOUT,28)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,32)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,35)
    assign out_iord_bl_call_covariance_o_fifoready = i_iord_bl_call_covariance_unnamed_covariance1_covariance3_aunroll_x_out_iord_bl_call_covariance_o_fifoready;
    assign out_iord_bl_call_covariance_o_fifoalmost_full = i_iord_bl_call_covariance_unnamed_covariance1_covariance3_aunroll_x_out_iord_bl_call_covariance_o_fifoalmost_full;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop17_covariance5(BITJOIN,45)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop17_covariance5_q = i_llvm_fpga_pop_i1_memdep_phi2_pop17_covariance5_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi2_pop17_covariance5(BITSELECT,46)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi2_pop17_covariance5_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop17_covariance5_q[0:0]);

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi1_pop16_covariance4(BITJOIN,41)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi1_pop16_covariance4_q = i_llvm_fpga_pop_i1_memdep_phi1_pop16_covariance4_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi1_pop16_covariance4(BITSELECT,42)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi1_pop16_covariance4_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi1_pop16_covariance4_q[0:0]);

    // bubble_join_i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance7_aunroll_x(BITJOIN,62)
    assign bubble_join_i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance7_aunroll_x_q = i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance7_aunroll_x_out_c1_exit_1_tpl;

    // bubble_select_i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance7_aunroll_x(BITSELECT,63)
    assign bubble_select_i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance7_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance7_aunroll_x_q[31:0]);

    // dupName_0_sync_out_x(GPOUT,36)@2
    assign out_c1_exe1 = bubble_select_i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance7_aunroll_x_b;
    assign out_memdep_phi1_pop16 = bubble_select_i_llvm_fpga_pop_i1_memdep_phi1_pop16_covariance4_b;
    assign out_memdep_phi2_pop17 = bubble_select_i_llvm_fpga_pop_i1_memdep_phi2_pop17_covariance5_b;
    assign out_valid_out = SE_out_i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance7_aunroll_x_V0;

endmodule
