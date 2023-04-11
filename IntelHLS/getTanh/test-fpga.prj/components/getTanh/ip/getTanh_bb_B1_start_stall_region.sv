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

// SystemVerilog created from bb_getTanh_B1_start_stall_region
// Created for function/kernel getTanh
// SystemVerilog created on Fri Apr  7 17:19:40 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module getTanh_bb_B1_start_stall_region (
    input wire [0:0] in_iord_bl_call_getTanh_i_fifodata,
    input wire [0:0] in_iord_bl_call_getTanh_i_fifovalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going4_gettanh1_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going4_gettanh1_exiting_stall_out,
    input wire [0:0] in_feedback_in_1,
    output wire [0:0] out_feedback_stall_out_1,
    input wire [0:0] in_feedback_valid_in_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_getTanh_o_fifoready,
    output wire [0:0] out_iord_bl_call_getTanh_o_fifoalmost_full,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] getTanh_B1_start_merge_reg_out_stall_out;
    wire [0:0] getTanh_B1_start_merge_reg_out_valid_out;
    wire [0:0] i_iord_bl_call_gettanh_unnamed_gettanh2_gettanh2_out_iord_bl_call_getTanh_o_fifoalmost_full;
    wire [0:0] i_iord_bl_call_gettanh_unnamed_gettanh2_gettanh2_out_iord_bl_call_getTanh_o_fifoready;
    wire [0:0] i_iord_bl_call_gettanh_unnamed_gettanh2_gettanh2_out_o_stall;
    wire [0:0] i_iord_bl_call_gettanh_unnamed_gettanh2_gettanh2_out_o_valid;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_gettanh1_out_data_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_gettanh1_out_feedback_stall_out_1;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_gettanh1_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_gettanh1_out_valid_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_gettanhs_c0_enter1_gettanh0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going4_gettanh1_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_gettanhs_c0_enter1_gettanh0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going4_gettanh1_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_gettanhs_c0_enter1_gettanh0_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_wt_entry_gettanhs_c0_enter1_gettanh0_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_wt_entry_gettanhs_c0_enter1_gettanh0_aunroll_x_out_pipeline_valid_out;
    wire [0:0] bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_gettanh1_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_gettanh1_b;
    wire [0:0] SE_out_getTanh_B1_start_merge_reg_wireValid;
    wire [0:0] SE_out_getTanh_B1_start_merge_reg_backStall;
    wire [0:0] SE_out_getTanh_B1_start_merge_reg_V0;
    wire [0:0] SE_out_i_iord_bl_call_gettanh_unnamed_gettanh2_gettanh2_wireValid;
    wire [0:0] SE_out_i_iord_bl_call_gettanh_unnamed_gettanh2_gettanh2_backStall;
    wire [0:0] SE_out_i_iord_bl_call_gettanh_unnamed_gettanh2_gettanh2_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_gettanh1_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_gettanh1_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_gettanh1_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_gettanhs_c0_enter1_gettanh0_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_gettanhs_c0_enter1_gettanh0_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_gettanhs_c0_enter1_gettanh0_aunroll_x_V0;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_stall_entry(STALLENABLE,46)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = getTanh_B1_start_merge_reg_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // getTanh_B1_start_merge_reg(BLACKBOX,12)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    getTanh_B1_start_merge_reg thegetTanh_B1_start_merge_reg (
        .in_data_in(GND_q),
        .in_stall_in(SE_out_getTanh_B1_start_merge_reg_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out(),
        .out_stall_out(getTanh_B1_start_merge_reg_out_stall_out),
        .out_valid_out(getTanh_B1_start_merge_reg_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_getTanh_B1_start_merge_reg(STALLENABLE,41)
    // Valid signal propagation
    assign SE_out_getTanh_B1_start_merge_reg_V0 = SE_out_getTanh_B1_start_merge_reg_wireValid;
    // Backward Stall generation
    assign SE_out_getTanh_B1_start_merge_reg_backStall = i_sfc_s_c0_in_wt_entry_gettanhs_c0_enter1_gettanh0_aunroll_x_out_o_stall | ~ (SE_out_getTanh_B1_start_merge_reg_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_getTanh_B1_start_merge_reg_wireValid = getTanh_B1_start_merge_reg_out_valid_out;

    // SE_out_i_iord_bl_call_gettanh_unnamed_gettanh2_gettanh2(STALLENABLE,43)
    // Valid signal propagation
    assign SE_out_i_iord_bl_call_gettanh_unnamed_gettanh2_gettanh2_V0 = SE_out_i_iord_bl_call_gettanh_unnamed_gettanh2_gettanh2_wireValid;
    // Backward Stall generation
    assign SE_out_i_iord_bl_call_gettanh_unnamed_gettanh2_gettanh2_backStall = in_stall_in | ~ (SE_out_i_iord_bl_call_gettanh_unnamed_gettanh2_gettanh2_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_call_gettanh_unnamed_gettanh2_gettanh2_wireValid = i_iord_bl_call_gettanh_unnamed_gettanh2_gettanh2_out_o_valid;

    // bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_gettanh1(BITJOIN,36)
    assign bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_gettanh1_q = i_llvm_fpga_pop_throttle_i1_throttle_pop_gettanh1_out_data_out;

    // bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_gettanh1(BITSELECT,37)
    assign bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_gettanh1_b = $unsigned(bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_gettanh1_q[0:0]);

    // i_iord_bl_call_gettanh_unnamed_gettanh2_gettanh2(BLACKBOX,13)@2
    // in in_i_stall@20000000
    // out out_iord_bl_call_getTanh_o_fifoalmost_full@20000000
    // out out_iord_bl_call_getTanh_o_fifoready@20000000
    // out out_o_stall@20000000
    getTanh_i_iord_bl_call_gettanh_unnamed_gettanh2_gettanh0 thei_iord_bl_call_gettanh_unnamed_gettanh2_gettanh2 (
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_gettanh1_b),
        .in_i_stall(SE_out_i_iord_bl_call_gettanh_unnamed_gettanh2_gettanh2_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_gettanh1_V0),
        .in_iord_bl_call_getTanh_i_fifodata(in_iord_bl_call_getTanh_i_fifodata),
        .in_iord_bl_call_getTanh_i_fifovalid(in_iord_bl_call_getTanh_i_fifovalid),
        .out_iord_bl_call_getTanh_o_fifoalmost_full(i_iord_bl_call_gettanh_unnamed_gettanh2_gettanh2_out_iord_bl_call_getTanh_o_fifoalmost_full),
        .out_iord_bl_call_getTanh_o_fifoready(i_iord_bl_call_gettanh_unnamed_gettanh2_gettanh2_out_iord_bl_call_getTanh_o_fifoready),
        .out_o_data(),
        .out_o_stall(i_iord_bl_call_gettanh_unnamed_gettanh2_gettanh2_out_o_stall),
        .out_o_valid(i_iord_bl_call_gettanh_unnamed_gettanh2_gettanh2_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_gettanh1(STALLENABLE,45)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_gettanh1_V0 = SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_gettanh1_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_gettanh1_backStall = i_iord_bl_call_gettanh_unnamed_gettanh2_gettanh2_out_o_stall | ~ (SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_gettanh1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_gettanh1_wireValid = i_llvm_fpga_pop_throttle_i1_throttle_pop_gettanh1_out_valid_out;

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_gettanh1(BLACKBOX,14)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_1@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    getTanh_i_llvm_fpga_pop_throttle_i1_throttle_pop_gettanh0 thei_llvm_fpga_pop_throttle_i1_throttle_pop_gettanh1 (
        .in_data_in(GND_q),
        .in_dir(GND_q),
        .in_feedback_in_1(in_feedback_in_1),
        .in_feedback_valid_in_1(in_feedback_valid_in_1),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_gettanh1_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_wt_entry_gettanhs_c0_enter1_gettanh0_aunroll_x_V0),
        .out_data_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_gettanh1_out_data_out),
        .out_feedback_stall_out_1(i_llvm_fpga_pop_throttle_i1_throttle_pop_gettanh1_out_feedback_stall_out_1),
        .out_stall_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_gettanh1_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_gettanh1_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_wt_entry_gettanhs_c0_enter1_gettanh0_aunroll_x(STALLENABLE,49)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_wt_entry_gettanhs_c0_enter1_gettanh0_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_wt_entry_gettanhs_c0_enter1_gettanh0_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_wt_entry_gettanhs_c0_enter1_gettanh0_aunroll_x_backStall = i_llvm_fpga_pop_throttle_i1_throttle_pop_gettanh1_out_stall_out | ~ (SE_out_i_sfc_s_c0_in_wt_entry_gettanhs_c0_enter1_gettanh0_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_wt_entry_gettanhs_c0_enter1_gettanh0_aunroll_x_wireValid = i_sfc_s_c0_in_wt_entry_gettanhs_c0_enter1_gettanh0_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_wt_entry_gettanhs_c0_enter1_gettanh0_aunroll_x(BLACKBOX,32)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going4_gettanh1_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going4_gettanh1_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_pipeline_valid_out@20000000
    getTanh_i_sfc_s_c0_in_wt_entry_gettanhs_c0_enter1_gettanh0 thei_sfc_s_c0_in_wt_entry_gettanhs_c0_enter1_gettanh0_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_wt_entry_gettanhs_c0_enter1_gettanh0_aunroll_x_backStall),
        .in_i_valid(SE_out_getTanh_B1_start_merge_reg_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_unnamed_getTanh0_0_tpl(GND_q),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going4_gettanh1_exiting_stall_out(i_sfc_s_c0_in_wt_entry_gettanhs_c0_enter1_gettanh0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going4_gettanh1_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going4_gettanh1_exiting_valid_out(i_sfc_s_c0_in_wt_entry_gettanhs_c0_enter1_gettanh0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going4_gettanh1_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_wt_entry_gettanhs_c0_enter1_gettanh0_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_wt_entry_gettanhs_c0_enter1_gettanh0_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_wt_entry_gettanhs_c0_enter1_gettanh0_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,8)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going4_gettanh1_exiting_valid_out = i_sfc_s_c0_in_wt_entry_gettanhs_c0_enter1_gettanh0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going4_gettanh1_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going4_gettanh1_exiting_stall_out = i_sfc_s_c0_in_wt_entry_gettanhs_c0_enter1_gettanh0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going4_gettanh1_exiting_stall_out;

    // feedback_stall_out_1_sync(GPOUT,10)
    assign out_feedback_stall_out_1 = i_llvm_fpga_pop_throttle_i1_throttle_pop_gettanh1_out_feedback_stall_out_1;

    // pipeline_valid_out_sync(GPOUT,24)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_wt_entry_gettanhs_c0_enter1_gettanh0_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,28)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,30)
    assign out_iord_bl_call_getTanh_o_fifoready = i_iord_bl_call_gettanh_unnamed_gettanh2_gettanh2_out_iord_bl_call_getTanh_o_fifoready;
    assign out_iord_bl_call_getTanh_o_fifoalmost_full = i_iord_bl_call_gettanh_unnamed_gettanh2_gettanh2_out_iord_bl_call_getTanh_o_fifoalmost_full;

    // dupName_0_sync_out_x(GPOUT,31)@2
    assign out_valid_out = SE_out_i_iord_bl_call_gettanh_unnamed_gettanh2_gettanh2_V0;

endmodule
