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

// SystemVerilog created from bb_gaussian_B1_start
// Created for function/kernel gaussian
// SystemVerilog created on Thu Apr 27 14:24:39 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module gaussian_bb_B1_start (
    input wire [0:0] in_feedback_in_7,
    output wire [0:0] out_feedback_stall_out_7,
    input wire [0:0] in_feedback_valid_in_7,
    input wire [63:0] in_iord_bl_call_gaussian_i_fifodata,
    input wire [0:0] in_iord_bl_call_gaussian_i_fifovalid,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_iord_bl_call_gaussian_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_call_gaussian_o_fifoready,
    output wire [0:0] out_memdep_phi4_pop7,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_gaussian_B1_start_stall_region_out_feedback_stall_out_7;
    wire [0:0] bb_gaussian_B1_start_stall_region_out_iord_bl_call_gaussian_o_fifoalmost_full;
    wire [0:0] bb_gaussian_B1_start_stall_region_out_iord_bl_call_gaussian_o_fifoready;
    wire [0:0] bb_gaussian_B1_start_stall_region_out_memdep_phi4_pop7;
    wire [0:0] bb_gaussian_B1_start_stall_region_out_profile_loop_o_valid;
    wire [0:0] bb_gaussian_B1_start_stall_region_out_stall_out;
    wire [0:0] bb_gaussian_B1_start_stall_region_out_valid_out;
    wire [0:0] gaussian_B1_start_branch_out_memdep_phi4_pop7;
    wire [0:0] gaussian_B1_start_branch_out_stall_out;
    wire [0:0] gaussian_B1_start_branch_out_valid_out_0;
    wire [0:0] gaussian_B1_start_merge_out_stall_out_0;
    wire [0:0] gaussian_B1_start_merge_out_stall_out_1;
    wire [0:0] gaussian_B1_start_merge_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // gaussian_B1_start_merge(BLACKBOX,7)
    gaussian_B1_start_merge thegaussian_B1_start_merge (
        .in_stall_in(bb_gaussian_B1_start_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_stall_out_0(gaussian_B1_start_merge_out_stall_out_0),
        .out_stall_out_1(gaussian_B1_start_merge_out_stall_out_1),
        .out_valid_out(gaussian_B1_start_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // gaussian_B1_start_branch(BLACKBOX,6)
    gaussian_B1_start_branch thegaussian_B1_start_branch (
        .in_memdep_phi4_pop7(bb_gaussian_B1_start_stall_region_out_memdep_phi4_pop7),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_gaussian_B1_start_stall_region_out_valid_out),
        .out_memdep_phi4_pop7(gaussian_B1_start_branch_out_memdep_phi4_pop7),
        .out_stall_out(gaussian_B1_start_branch_out_stall_out),
        .out_valid_out_0(gaussian_B1_start_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B1_start_stall_region(BLACKBOX,2)
    gaussian_bb_B1_start_stall_region thebb_gaussian_B1_start_stall_region (
        .in_feedback_in_7(in_feedback_in_7),
        .in_feedback_valid_in_7(in_feedback_valid_in_7),
        .in_iord_bl_call_gaussian_i_fifodata(in_iord_bl_call_gaussian_i_fifodata),
        .in_iord_bl_call_gaussian_i_fifovalid(in_iord_bl_call_gaussian_i_fifovalid),
        .in_stall_in(gaussian_B1_start_branch_out_stall_out),
        .in_valid_in(gaussian_B1_start_merge_out_valid_out),
        .out_feedback_stall_out_7(bb_gaussian_B1_start_stall_region_out_feedback_stall_out_7),
        .out_iord_bl_call_gaussian_o_fifoalmost_full(bb_gaussian_B1_start_stall_region_out_iord_bl_call_gaussian_o_fifoalmost_full),
        .out_iord_bl_call_gaussian_o_fifoready(bb_gaussian_B1_start_stall_region_out_iord_bl_call_gaussian_o_fifoready),
        .out_memdep_phi4_pop7(bb_gaussian_B1_start_stall_region_out_memdep_phi4_pop7),
        .out_profile_loop_o_valid(bb_gaussian_B1_start_stall_region_out_profile_loop_o_valid),
        .out_stall_out(bb_gaussian_B1_start_stall_region_out_stall_out),
        .out_valid_out(bb_gaussian_B1_start_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_7_sync(GPOUT,4)
    assign out_feedback_stall_out_7 = bb_gaussian_B1_start_stall_region_out_feedback_stall_out_7;

    // out_iord_bl_call_gaussian_o_fifoalmost_full(GPOUT,13)
    assign out_iord_bl_call_gaussian_o_fifoalmost_full = bb_gaussian_B1_start_stall_region_out_iord_bl_call_gaussian_o_fifoalmost_full;

    // out_iord_bl_call_gaussian_o_fifoready(GPOUT,14)
    assign out_iord_bl_call_gaussian_o_fifoready = bb_gaussian_B1_start_stall_region_out_iord_bl_call_gaussian_o_fifoready;

    // out_memdep_phi4_pop7(GPOUT,15)
    assign out_memdep_phi4_pop7 = gaussian_B1_start_branch_out_memdep_phi4_pop7;

    // out_profile_loop_o_valid(GPOUT,16)
    assign out_profile_loop_o_valid = bb_gaussian_B1_start_stall_region_out_profile_loop_o_valid;

    // out_stall_out_0(GPOUT,17)
    assign out_stall_out_0 = gaussian_B1_start_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,18)
    assign out_stall_out_1 = gaussian_B1_start_merge_out_stall_out_1;

    // out_valid_in_1(GPOUT,19)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,20)
    assign out_valid_out_0 = gaussian_B1_start_branch_out_valid_out_0;

    // rst_sync(RESETSYNC,21)
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
