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

// SystemVerilog created from bb_triangular_B1_start
// Created for function/kernel triangular
// SystemVerilog created on Tue Apr 25 22:47:04 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module triangular_bb_B1_start (
    input wire [0:0] in_feedback_in_1,
    output wire [0:0] out_feedback_stall_out_1,
    input wire [0:0] in_feedback_valid_in_1,
    input wire [191:0] in_iord_bl_call_triangular_i_fifodata,
    input wire [0:0] in_iord_bl_call_triangular_i_fifovalid,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    input wire [0:0] in_wgl_6_enter_exit_stall_in,
    input wire [0:0] in_wgl_6_enter_exit_valid_in,
    output wire [31:0] out_c1_exe1,
    output wire [31:0] out_intel_reserved_ffwd_0_0,
    output wire [0:0] out_intel_reserved_ffwd_1_0,
    output wire [31:0] out_intel_reserved_ffwd_2_0,
    output wire [32:0] out_intel_reserved_ffwd_3_0,
    output wire [0:0] out_iord_bl_call_triangular_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_call_triangular_o_fifoready,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [31:0] out_reorder_limiter_enter,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_wgl_6_enter_exit_stall_out,
    output wire [0:0] out_wgl_6_enter_exit_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [31:0] bb_triangular_B1_start_stall_region_out_c1_exe1;
    wire [0:0] bb_triangular_B1_start_stall_region_out_feedback_stall_out_1;
    wire [31:0] bb_triangular_B1_start_stall_region_out_intel_reserved_ffwd_0_0;
    wire [0:0] bb_triangular_B1_start_stall_region_out_intel_reserved_ffwd_1_0;
    wire [31:0] bb_triangular_B1_start_stall_region_out_intel_reserved_ffwd_2_0;
    wire [32:0] bb_triangular_B1_start_stall_region_out_intel_reserved_ffwd_3_0;
    wire [0:0] bb_triangular_B1_start_stall_region_out_iord_bl_call_triangular_o_fifoalmost_full;
    wire [0:0] bb_triangular_B1_start_stall_region_out_iord_bl_call_triangular_o_fifoready;
    wire [0:0] bb_triangular_B1_start_stall_region_out_profile_loop_o_valid;
    wire [31:0] bb_triangular_B1_start_stall_region_out_reorder_limiter_enter;
    wire [0:0] bb_triangular_B1_start_stall_region_out_stall_out;
    wire [0:0] bb_triangular_B1_start_stall_region_out_valid_out;
    wire [0:0] bb_triangular_B1_start_stall_region_out_wgl_6_enter_exit_stall_out;
    wire [0:0] bb_triangular_B1_start_stall_region_out_wgl_6_enter_exit_valid_out;
    wire [31:0] triangular_B1_start_branch_out_c1_exe1;
    wire [31:0] triangular_B1_start_branch_out_reorder_limiter_enter;
    wire [0:0] triangular_B1_start_branch_out_stall_out;
    wire [0:0] triangular_B1_start_branch_out_valid_out_0;
    wire [0:0] triangular_B1_start_merge_out_stall_out_0;
    wire [0:0] triangular_B1_start_merge_out_stall_out_1;
    wire [0:0] triangular_B1_start_merge_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // triangular_B1_start_merge(BLACKBOX,29)
    triangular_B1_start_merge thetriangular_B1_start_merge (
        .in_stall_in(bb_triangular_B1_start_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_stall_out_0(triangular_B1_start_merge_out_stall_out_0),
        .out_stall_out_1(triangular_B1_start_merge_out_stall_out_1),
        .out_valid_out(triangular_B1_start_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // triangular_B1_start_branch(BLACKBOX,28)
    triangular_B1_start_branch thetriangular_B1_start_branch (
        .in_c1_exe1(bb_triangular_B1_start_stall_region_out_c1_exe1),
        .in_reorder_limiter_enter(bb_triangular_B1_start_stall_region_out_reorder_limiter_enter),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_triangular_B1_start_stall_region_out_valid_out),
        .out_c1_exe1(triangular_B1_start_branch_out_c1_exe1),
        .out_reorder_limiter_enter(triangular_B1_start_branch_out_reorder_limiter_enter),
        .out_stall_out(triangular_B1_start_branch_out_stall_out),
        .out_valid_out_0(triangular_B1_start_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_triangular_B1_start_stall_region(BLACKBOX,2)
    triangular_bb_B1_start_stall_region thebb_triangular_B1_start_stall_region (
        .in_feedback_in_1(in_feedback_in_1),
        .in_feedback_valid_in_1(in_feedback_valid_in_1),
        .in_iord_bl_call_triangular_i_fifodata(in_iord_bl_call_triangular_i_fifodata),
        .in_iord_bl_call_triangular_i_fifovalid(in_iord_bl_call_triangular_i_fifovalid),
        .in_stall_in(triangular_B1_start_branch_out_stall_out),
        .in_valid_in(triangular_B1_start_merge_out_valid_out),
        .in_wgl_6_enter_exit_stall_in(in_wgl_6_enter_exit_stall_in),
        .in_wgl_6_enter_exit_valid_in(in_wgl_6_enter_exit_valid_in),
        .out_c1_exe1(bb_triangular_B1_start_stall_region_out_c1_exe1),
        .out_feedback_stall_out_1(bb_triangular_B1_start_stall_region_out_feedback_stall_out_1),
        .out_intel_reserved_ffwd_0_0(bb_triangular_B1_start_stall_region_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_1_0(bb_triangular_B1_start_stall_region_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_2_0(bb_triangular_B1_start_stall_region_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_3_0(bb_triangular_B1_start_stall_region_out_intel_reserved_ffwd_3_0),
        .out_iord_bl_call_triangular_o_fifoalmost_full(bb_triangular_B1_start_stall_region_out_iord_bl_call_triangular_o_fifoalmost_full),
        .out_iord_bl_call_triangular_o_fifoready(bb_triangular_B1_start_stall_region_out_iord_bl_call_triangular_o_fifoready),
        .out_profile_loop_o_valid(bb_triangular_B1_start_stall_region_out_profile_loop_o_valid),
        .out_reorder_limiter_enter(bb_triangular_B1_start_stall_region_out_reorder_limiter_enter),
        .out_stall_out(bb_triangular_B1_start_stall_region_out_stall_out),
        .out_valid_out(bb_triangular_B1_start_stall_region_out_valid_out),
        .out_wgl_6_enter_exit_stall_out(bb_triangular_B1_start_stall_region_out_wgl_6_enter_exit_stall_out),
        .out_wgl_6_enter_exit_valid_out(bb_triangular_B1_start_stall_region_out_wgl_6_enter_exit_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_1_sync(GPOUT,4)
    assign out_feedback_stall_out_1 = bb_triangular_B1_start_stall_region_out_feedback_stall_out_1;

    // out_c1_exe1(GPOUT,13)
    assign out_c1_exe1 = triangular_B1_start_branch_out_c1_exe1;

    // out_intel_reserved_ffwd_0_0(GPOUT,14)
    assign out_intel_reserved_ffwd_0_0 = bb_triangular_B1_start_stall_region_out_intel_reserved_ffwd_0_0;

    // out_intel_reserved_ffwd_1_0(GPOUT,15)
    assign out_intel_reserved_ffwd_1_0 = bb_triangular_B1_start_stall_region_out_intel_reserved_ffwd_1_0;

    // out_intel_reserved_ffwd_2_0(GPOUT,16)
    assign out_intel_reserved_ffwd_2_0 = bb_triangular_B1_start_stall_region_out_intel_reserved_ffwd_2_0;

    // out_intel_reserved_ffwd_3_0(GPOUT,17)
    assign out_intel_reserved_ffwd_3_0 = bb_triangular_B1_start_stall_region_out_intel_reserved_ffwd_3_0;

    // out_iord_bl_call_triangular_o_fifoalmost_full(GPOUT,18)
    assign out_iord_bl_call_triangular_o_fifoalmost_full = bb_triangular_B1_start_stall_region_out_iord_bl_call_triangular_o_fifoalmost_full;

    // out_iord_bl_call_triangular_o_fifoready(GPOUT,19)
    assign out_iord_bl_call_triangular_o_fifoready = bb_triangular_B1_start_stall_region_out_iord_bl_call_triangular_o_fifoready;

    // out_profile_loop_o_valid(GPOUT,20)
    assign out_profile_loop_o_valid = bb_triangular_B1_start_stall_region_out_profile_loop_o_valid;

    // out_reorder_limiter_enter(GPOUT,21)
    assign out_reorder_limiter_enter = triangular_B1_start_branch_out_reorder_limiter_enter;

    // out_stall_out_0(GPOUT,22)
    assign out_stall_out_0 = triangular_B1_start_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,23)
    assign out_stall_out_1 = triangular_B1_start_merge_out_stall_out_1;

    // out_valid_in_1(GPOUT,24)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,25)
    assign out_valid_out_0 = triangular_B1_start_branch_out_valid_out_0;

    // out_wgl_6_enter_exit_stall_out(GPOUT,26)
    assign out_wgl_6_enter_exit_stall_out = bb_triangular_B1_start_stall_region_out_wgl_6_enter_exit_stall_out;

    // out_wgl_6_enter_exit_valid_out(GPOUT,27)
    assign out_wgl_6_enter_exit_valid_out = bb_triangular_B1_start_stall_region_out_wgl_6_enter_exit_valid_out;

    // rst_sync(RESETSYNC,30)
    acl_reset_handler #(
        .ASYNC_RESET(0),
        .USE_SYNCHRONIZER(1),
        .PULSE_EXTENSION(0),
        .PIPE_DEPTH(3),
        .DUPLICATE(1)
    ) therst_sync (
        .clk(clock),
        .i_resetn(resetn),
        .o_sclrn(rst_sync_rst_sclrn)
    );

endmodule
