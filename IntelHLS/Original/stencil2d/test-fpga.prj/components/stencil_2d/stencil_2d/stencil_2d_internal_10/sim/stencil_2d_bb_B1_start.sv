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

// SystemVerilog created from bb_stencil_2d_B1_start
// Created for function/kernel stencil_2d
// SystemVerilog created on Thu Apr 27 14:23:39 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_bb_B1_start (
    input wire [0:0] in_feedback_in_1,
    output wire [0:0] out_feedback_stall_out_1,
    input wire [0:0] in_feedback_valid_in_1,
    input wire [0:0] in_iord_bl_call_stencil_2d_i_fifodata,
    input wire [0:0] in_iord_bl_call_stencil_2d_i_fifovalid,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_iord_bl_call_stencil_2d_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_call_stencil_2d_o_fifoready,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_stencil_2d_B1_start_stall_region_out_feedback_stall_out_1;
    wire [0:0] bb_stencil_2d_B1_start_stall_region_out_iord_bl_call_stencil_2d_o_fifoalmost_full;
    wire [0:0] bb_stencil_2d_B1_start_stall_region_out_iord_bl_call_stencil_2d_o_fifoready;
    wire [0:0] bb_stencil_2d_B1_start_stall_region_out_profile_loop_o_valid;
    wire [0:0] bb_stencil_2d_B1_start_stall_region_out_stall_out;
    wire [0:0] bb_stencil_2d_B1_start_stall_region_out_valid_out;
    wire [0:0] stencil_2d_B1_start_branch_out_stall_out;
    wire [0:0] stencil_2d_B1_start_branch_out_valid_out_0;
    wire [0:0] stencil_2d_B1_start_merge_out_stall_out_0;
    wire [0:0] stencil_2d_B1_start_merge_out_stall_out_1;
    wire [0:0] stencil_2d_B1_start_merge_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // stencil_2d_B1_start_merge(BLACKBOX,19)
    stencil_2d_B1_start_merge thestencil_2d_B1_start_merge (
        .in_stall_in(bb_stencil_2d_B1_start_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_stall_out_0(stencil_2d_B1_start_merge_out_stall_out_0),
        .out_stall_out_1(stencil_2d_B1_start_merge_out_stall_out_1),
        .out_valid_out(stencil_2d_B1_start_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // stencil_2d_B1_start_branch(BLACKBOX,18)
    stencil_2d_B1_start_branch thestencil_2d_B1_start_branch (
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_stencil_2d_B1_start_stall_region_out_valid_out),
        .out_stall_out(stencil_2d_B1_start_branch_out_stall_out),
        .out_valid_out_0(stencil_2d_B1_start_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B1_start_stall_region(BLACKBOX,2)
    stencil_2d_bb_B1_start_stall_region thebb_stencil_2d_B1_start_stall_region (
        .in_feedback_in_1(in_feedback_in_1),
        .in_feedback_valid_in_1(in_feedback_valid_in_1),
        .in_iord_bl_call_stencil_2d_i_fifodata(in_iord_bl_call_stencil_2d_i_fifodata),
        .in_iord_bl_call_stencil_2d_i_fifovalid(in_iord_bl_call_stencil_2d_i_fifovalid),
        .in_stall_in(stencil_2d_B1_start_branch_out_stall_out),
        .in_valid_in(stencil_2d_B1_start_merge_out_valid_out),
        .out_feedback_stall_out_1(bb_stencil_2d_B1_start_stall_region_out_feedback_stall_out_1),
        .out_iord_bl_call_stencil_2d_o_fifoalmost_full(bb_stencil_2d_B1_start_stall_region_out_iord_bl_call_stencil_2d_o_fifoalmost_full),
        .out_iord_bl_call_stencil_2d_o_fifoready(bb_stencil_2d_B1_start_stall_region_out_iord_bl_call_stencil_2d_o_fifoready),
        .out_profile_loop_o_valid(bb_stencil_2d_B1_start_stall_region_out_profile_loop_o_valid),
        .out_stall_out(bb_stencil_2d_B1_start_stall_region_out_stall_out),
        .out_valid_out(bb_stencil_2d_B1_start_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_1_sync(GPOUT,4)
    assign out_feedback_stall_out_1 = bb_stencil_2d_B1_start_stall_region_out_feedback_stall_out_1;

    // out_iord_bl_call_stencil_2d_o_fifoalmost_full(GPOUT,11)
    assign out_iord_bl_call_stencil_2d_o_fifoalmost_full = bb_stencil_2d_B1_start_stall_region_out_iord_bl_call_stencil_2d_o_fifoalmost_full;

    // out_iord_bl_call_stencil_2d_o_fifoready(GPOUT,12)
    assign out_iord_bl_call_stencil_2d_o_fifoready = bb_stencil_2d_B1_start_stall_region_out_iord_bl_call_stencil_2d_o_fifoready;

    // out_profile_loop_o_valid(GPOUT,13)
    assign out_profile_loop_o_valid = bb_stencil_2d_B1_start_stall_region_out_profile_loop_o_valid;

    // out_stall_out_0(GPOUT,14)
    assign out_stall_out_0 = stencil_2d_B1_start_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,15)
    assign out_stall_out_1 = stencil_2d_B1_start_merge_out_stall_out_1;

    // out_valid_in_1(GPOUT,16)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,17)
    assign out_valid_out_0 = stencil_2d_B1_start_branch_out_valid_out_0;

    // rst_sync(RESETSYNC,20)
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
