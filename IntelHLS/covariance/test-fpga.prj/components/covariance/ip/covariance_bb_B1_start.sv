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

// SystemVerilog created from bb_covariance_B1_start
// Created for function/kernel covariance
// SystemVerilog created on Thu Apr 27 14:28:37 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_bb_B1_start (
    input wire [0:0] in_feedback_in_16,
    input wire [0:0] in_feedback_in_17,
    output wire [0:0] out_feedback_stall_out_16,
    output wire [0:0] out_feedback_stall_out_17,
    input wire [0:0] in_feedback_valid_in_16,
    input wire [0:0] in_feedback_valid_in_17,
    input wire [127:0] in_iord_bl_call_covariance_i_fifodata,
    input wire [0:0] in_iord_bl_call_covariance_i_fifovalid,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c1_exe1,
    output wire [0:0] out_iord_bl_call_covariance_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_call_covariance_o_fifoready,
    output wire [0:0] out_memdep_phi1_pop16,
    output wire [0:0] out_memdep_phi2_pop17,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [31:0] bb_covariance_B1_start_stall_region_out_c1_exe1;
    wire [0:0] bb_covariance_B1_start_stall_region_out_feedback_stall_out_16;
    wire [0:0] bb_covariance_B1_start_stall_region_out_feedback_stall_out_17;
    wire [0:0] bb_covariance_B1_start_stall_region_out_iord_bl_call_covariance_o_fifoalmost_full;
    wire [0:0] bb_covariance_B1_start_stall_region_out_iord_bl_call_covariance_o_fifoready;
    wire [0:0] bb_covariance_B1_start_stall_region_out_memdep_phi1_pop16;
    wire [0:0] bb_covariance_B1_start_stall_region_out_memdep_phi2_pop17;
    wire [0:0] bb_covariance_B1_start_stall_region_out_profile_loop_o_valid;
    wire [0:0] bb_covariance_B1_start_stall_region_out_stall_out;
    wire [0:0] bb_covariance_B1_start_stall_region_out_valid_out;
    wire [31:0] covariance_B1_start_branch_out_c1_exe1;
    wire [0:0] covariance_B1_start_branch_out_memdep_phi1_pop16;
    wire [0:0] covariance_B1_start_branch_out_memdep_phi2_pop17;
    wire [0:0] covariance_B1_start_branch_out_stall_out;
    wire [0:0] covariance_B1_start_branch_out_valid_out_0;
    wire [0:0] covariance_B1_start_merge_out_stall_out_0;
    wire [0:0] covariance_B1_start_merge_out_stall_out_1;
    wire [0:0] covariance_B1_start_merge_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // covariance_B1_start_merge(BLACKBOX,4)
    covariance_B1_start_merge thecovariance_B1_start_merge (
        .in_stall_in(bb_covariance_B1_start_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_stall_out_0(covariance_B1_start_merge_out_stall_out_0),
        .out_stall_out_1(covariance_B1_start_merge_out_stall_out_1),
        .out_valid_out(covariance_B1_start_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // covariance_B1_start_branch(BLACKBOX,3)
    covariance_B1_start_branch thecovariance_B1_start_branch (
        .in_c1_exe1(bb_covariance_B1_start_stall_region_out_c1_exe1),
        .in_memdep_phi1_pop16(bb_covariance_B1_start_stall_region_out_memdep_phi1_pop16),
        .in_memdep_phi2_pop17(bb_covariance_B1_start_stall_region_out_memdep_phi2_pop17),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_covariance_B1_start_stall_region_out_valid_out),
        .out_c1_exe1(covariance_B1_start_branch_out_c1_exe1),
        .out_memdep_phi1_pop16(covariance_B1_start_branch_out_memdep_phi1_pop16),
        .out_memdep_phi2_pop17(covariance_B1_start_branch_out_memdep_phi2_pop17),
        .out_stall_out(covariance_B1_start_branch_out_stall_out),
        .out_valid_out_0(covariance_B1_start_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B1_start_stall_region(BLACKBOX,2)
    covariance_bb_B1_start_stall_region thebb_covariance_B1_start_stall_region (
        .in_feedback_in_16(in_feedback_in_16),
        .in_feedback_in_17(in_feedback_in_17),
        .in_feedback_valid_in_16(in_feedback_valid_in_16),
        .in_feedback_valid_in_17(in_feedback_valid_in_17),
        .in_iord_bl_call_covariance_i_fifodata(in_iord_bl_call_covariance_i_fifodata),
        .in_iord_bl_call_covariance_i_fifovalid(in_iord_bl_call_covariance_i_fifovalid),
        .in_stall_in(covariance_B1_start_branch_out_stall_out),
        .in_valid_in(covariance_B1_start_merge_out_valid_out),
        .out_c1_exe1(bb_covariance_B1_start_stall_region_out_c1_exe1),
        .out_feedback_stall_out_16(bb_covariance_B1_start_stall_region_out_feedback_stall_out_16),
        .out_feedback_stall_out_17(bb_covariance_B1_start_stall_region_out_feedback_stall_out_17),
        .out_iord_bl_call_covariance_o_fifoalmost_full(bb_covariance_B1_start_stall_region_out_iord_bl_call_covariance_o_fifoalmost_full),
        .out_iord_bl_call_covariance_o_fifoready(bb_covariance_B1_start_stall_region_out_iord_bl_call_covariance_o_fifoready),
        .out_memdep_phi1_pop16(bb_covariance_B1_start_stall_region_out_memdep_phi1_pop16),
        .out_memdep_phi2_pop17(bb_covariance_B1_start_stall_region_out_memdep_phi2_pop17),
        .out_profile_loop_o_valid(bb_covariance_B1_start_stall_region_out_profile_loop_o_valid),
        .out_stall_out(bb_covariance_B1_start_stall_region_out_stall_out),
        .out_valid_out(bb_covariance_B1_start_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_16_sync(GPOUT,7)
    assign out_feedback_stall_out_16 = bb_covariance_B1_start_stall_region_out_feedback_stall_out_16;

    // feedback_stall_out_17_sync(GPOUT,8)
    assign out_feedback_stall_out_17 = bb_covariance_B1_start_stall_region_out_feedback_stall_out_17;

    // out_c1_exe1(GPOUT,16)
    assign out_c1_exe1 = covariance_B1_start_branch_out_c1_exe1;

    // out_iord_bl_call_covariance_o_fifoalmost_full(GPOUT,17)
    assign out_iord_bl_call_covariance_o_fifoalmost_full = bb_covariance_B1_start_stall_region_out_iord_bl_call_covariance_o_fifoalmost_full;

    // out_iord_bl_call_covariance_o_fifoready(GPOUT,18)
    assign out_iord_bl_call_covariance_o_fifoready = bb_covariance_B1_start_stall_region_out_iord_bl_call_covariance_o_fifoready;

    // out_memdep_phi1_pop16(GPOUT,19)
    assign out_memdep_phi1_pop16 = covariance_B1_start_branch_out_memdep_phi1_pop16;

    // out_memdep_phi2_pop17(GPOUT,20)
    assign out_memdep_phi2_pop17 = covariance_B1_start_branch_out_memdep_phi2_pop17;

    // out_profile_loop_o_valid(GPOUT,21)
    assign out_profile_loop_o_valid = bb_covariance_B1_start_stall_region_out_profile_loop_o_valid;

    // out_stall_out_0(GPOUT,22)
    assign out_stall_out_0 = covariance_B1_start_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,23)
    assign out_stall_out_1 = covariance_B1_start_merge_out_stall_out_1;

    // out_valid_in_1(GPOUT,24)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,25)
    assign out_valid_out_0 = covariance_B1_start_branch_out_valid_out_0;

    // rst_sync(RESETSYNC,26)
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
