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

// SystemVerilog created from bb_if_loop_3_B3
// Created for function/kernel if_loop_3
// SystemVerilog created on Tue Jun 13 03:13:46 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module if_loop_3_bb_B3 (
    output wire [0:0] out_feedback_out_1,
    input wire [0:0] in_feedback_stall_in_1,
    output wire [0:0] out_feedback_valid_out_1,
    input wire [0:0] in_intel_reserved_ffwd_0_0,
    input wire [31:0] in_intel_reserved_ffwd_4_0,
    input wire [0:0] in_iowr_bl_return_if_loop_3_i_fifoready,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    output wire [31:0] out_iowr_bl_return_if_loop_3_o_fifodata,
    output wire [0:0] out_iowr_bl_return_if_loop_3_o_fifovalid,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_if_loop_3_B3_stall_region_out_feedback_out_1;
    wire [0:0] bb_if_loop_3_B3_stall_region_out_feedback_valid_out_1;
    wire [31:0] bb_if_loop_3_B3_stall_region_out_iowr_bl_return_if_loop_3_o_fifodata;
    wire [0:0] bb_if_loop_3_B3_stall_region_out_iowr_bl_return_if_loop_3_o_fifovalid;
    wire [0:0] bb_if_loop_3_B3_stall_region_out_stall_out;
    wire [0:0] bb_if_loop_3_B3_stall_region_out_valid_out;
    wire [0:0] if_loop_3_B3_branch_out_stall_out;
    wire [0:0] if_loop_3_B3_branch_out_valid_out_0;
    wire [0:0] if_loop_3_B3_merge_out_stall_out_0;
    wire [0:0] if_loop_3_B3_merge_out_valid_out;


    // if_loop_3_B3_merge(BLACKBOX,7)
    if_loop_3_B3_merge theif_loop_3_B3_merge (
        .in_stall_in(bb_if_loop_3_B3_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_stall_out_0(if_loop_3_B3_merge_out_stall_out_0),
        .out_valid_out(if_loop_3_B3_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // if_loop_3_B3_branch(BLACKBOX,6)
    if_loop_3_B3_branch theif_loop_3_B3_branch (
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_if_loop_3_B3_stall_region_out_valid_out),
        .out_stall_out(if_loop_3_B3_branch_out_stall_out),
        .out_valid_out_0(if_loop_3_B3_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_if_loop_3_B3_stall_region(BLACKBOX,2)
    if_loop_3_bb_B3_stall_region thebb_if_loop_3_B3_stall_region (
        .in_feedback_stall_in_1(in_feedback_stall_in_1),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_iowr_bl_return_if_loop_3_i_fifoready(in_iowr_bl_return_if_loop_3_i_fifoready),
        .in_stall_in(if_loop_3_B3_branch_out_stall_out),
        .in_valid_in(if_loop_3_B3_merge_out_valid_out),
        .out_feedback_out_1(bb_if_loop_3_B3_stall_region_out_feedback_out_1),
        .out_feedback_valid_out_1(bb_if_loop_3_B3_stall_region_out_feedback_valid_out_1),
        .out_iowr_bl_return_if_loop_3_o_fifodata(bb_if_loop_3_B3_stall_region_out_iowr_bl_return_if_loop_3_o_fifodata),
        .out_iowr_bl_return_if_loop_3_o_fifovalid(bb_if_loop_3_B3_stall_region_out_iowr_bl_return_if_loop_3_o_fifovalid),
        .out_stall_out(bb_if_loop_3_B3_stall_region_out_stall_out),
        .out_valid_out(bb_if_loop_3_B3_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_out_1_sync(GPOUT,3)
    assign out_feedback_out_1 = bb_if_loop_3_B3_stall_region_out_feedback_out_1;

    // feedback_valid_out_1_sync(GPOUT,5)
    assign out_feedback_valid_out_1 = bb_if_loop_3_B3_stall_region_out_feedback_valid_out_1;

    // out_iowr_bl_return_if_loop_3_o_fifodata(GPOUT,13)
    assign out_iowr_bl_return_if_loop_3_o_fifodata = bb_if_loop_3_B3_stall_region_out_iowr_bl_return_if_loop_3_o_fifodata;

    // out_iowr_bl_return_if_loop_3_o_fifovalid(GPOUT,14)
    assign out_iowr_bl_return_if_loop_3_o_fifovalid = bb_if_loop_3_B3_stall_region_out_iowr_bl_return_if_loop_3_o_fifovalid;

    // out_stall_in_0(GPOUT,15)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,16)
    assign out_stall_out_0 = if_loop_3_B3_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,17)
    assign out_valid_out_0 = if_loop_3_B3_branch_out_valid_out_0;

endmodule
