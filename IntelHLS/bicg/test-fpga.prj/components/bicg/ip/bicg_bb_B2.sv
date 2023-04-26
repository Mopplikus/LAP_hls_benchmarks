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

// SystemVerilog created from bb_bicg_B2
// Created for function/kernel bicg
// SystemVerilog created on Wed Apr 26 14:15:48 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module bicg_bb_B2 (
    output wire [0:0] out_feedback_almost_empty_out_8,
    output wire [0:0] out_feedback_data_out_8,
    output wire [0:0] out_feedback_empty_out_8,
    input wire [0:0] in_feedback_stall_in_8,
    input wire [0:0] in_c0_exe1621_0,
    input wire [0:0] in_iowr_bl_return_bicg_i_fifoready,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_iowr_bl_return_bicg_o_fifodata,
    output wire [0:0] out_iowr_bl_return_bicg_o_fifovalid,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_bicg_B2_stall_region_out_almost_empty_out;
    wire [0:0] bb_bicg_B2_stall_region_out_empty_out;
    wire [0:0] bb_bicg_B2_stall_region_out_feedback_almost_empty_out_8;
    wire [0:0] bb_bicg_B2_stall_region_out_feedback_data_out_8;
    wire [0:0] bb_bicg_B2_stall_region_out_feedback_empty_out_8;
    wire [0:0] bb_bicg_B2_stall_region_out_iowr_bl_return_bicg_o_fifodata;
    wire [0:0] bb_bicg_B2_stall_region_out_iowr_bl_return_bicg_o_fifovalid;
    wire [0:0] bb_bicg_B2_stall_region_out_stall_out;
    wire [0:0] bb_bicg_B2_stall_region_out_valid_out;
    wire [0:0] bicg_B2_branch_out_stall_out;
    wire [0:0] bicg_B2_branch_out_valid_out_0;
    wire [0:0] bicg_B2_merge_out_almost_empty_out;
    wire [0:0] bicg_B2_merge_out_c0_exe1621;
    wire [0:0] bicg_B2_merge_out_empty_out;
    wire [0:0] bicg_B2_merge_out_stall_out_0;
    wire [0:0] bicg_B2_merge_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // bicg_B2_branch(BLACKBOX,3)
    bicg_B2_branch thebicg_B2_branch (
        .in_almost_empty_in(bb_bicg_B2_stall_region_out_almost_empty_out),
        .in_empty_in(bb_bicg_B2_stall_region_out_empty_out),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_bicg_B2_stall_region_out_valid_out),
        .out_stall_out(bicg_B2_branch_out_stall_out),
        .out_valid_out_0(bicg_B2_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bicg_B2_merge(BLACKBOX,4)
    bicg_B2_merge thebicg_B2_merge (
        .in_c0_exe1621_0(in_c0_exe1621_0),
        .in_stall_in(bb_bicg_B2_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_almost_empty_out(bicg_B2_merge_out_almost_empty_out),
        .out_c0_exe1621(bicg_B2_merge_out_c0_exe1621),
        .out_empty_out(bicg_B2_merge_out_empty_out),
        .out_stall_out_0(bicg_B2_merge_out_stall_out_0),
        .out_valid_out(bicg_B2_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_bicg_B2_stall_region(BLACKBOX,2)
    bicg_bb_B2_stall_region thebb_bicg_B2_stall_region (
        .in_almost_empty_in(bicg_B2_merge_out_almost_empty_out),
        .in_c0_exe1621(bicg_B2_merge_out_c0_exe1621),
        .in_empty_in(bicg_B2_merge_out_empty_out),
        .in_feedback_stall_in_8(in_feedback_stall_in_8),
        .in_iowr_bl_return_bicg_i_fifoready(in_iowr_bl_return_bicg_i_fifoready),
        .in_stall_in(bicg_B2_branch_out_stall_out),
        .in_valid_in(bicg_B2_merge_out_valid_out),
        .out_almost_empty_out(bb_bicg_B2_stall_region_out_almost_empty_out),
        .out_empty_out(bb_bicg_B2_stall_region_out_empty_out),
        .out_feedback_almost_empty_out_8(bb_bicg_B2_stall_region_out_feedback_almost_empty_out_8),
        .out_feedback_data_out_8(bb_bicg_B2_stall_region_out_feedback_data_out_8),
        .out_feedback_empty_out_8(bb_bicg_B2_stall_region_out_feedback_empty_out_8),
        .out_iowr_bl_return_bicg_o_fifodata(bb_bicg_B2_stall_region_out_iowr_bl_return_bicg_o_fifodata),
        .out_iowr_bl_return_bicg_o_fifovalid(bb_bicg_B2_stall_region_out_iowr_bl_return_bicg_o_fifovalid),
        .out_stall_out(bb_bicg_B2_stall_region_out_stall_out),
        .out_valid_out(bb_bicg_B2_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_almost_empty_out_8_sync(GPOUT,5)
    assign out_feedback_almost_empty_out_8 = bb_bicg_B2_stall_region_out_feedback_almost_empty_out_8;

    // feedback_data_out_8_sync(GPOUT,6)
    assign out_feedback_data_out_8 = bb_bicg_B2_stall_region_out_feedback_data_out_8;

    // feedback_empty_out_8_sync(GPOUT,7)
    assign out_feedback_empty_out_8 = bb_bicg_B2_stall_region_out_feedback_empty_out_8;

    // out_iowr_bl_return_bicg_o_fifodata(GPOUT,13)
    assign out_iowr_bl_return_bicg_o_fifodata = bb_bicg_B2_stall_region_out_iowr_bl_return_bicg_o_fifodata;

    // out_iowr_bl_return_bicg_o_fifovalid(GPOUT,14)
    assign out_iowr_bl_return_bicg_o_fifovalid = bb_bicg_B2_stall_region_out_iowr_bl_return_bicg_o_fifovalid;

    // out_stall_in_0(GPOUT,15)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,16)
    assign out_stall_out_0 = bicg_B2_merge_out_stall_out_0;

    // out_valid_in_0(GPOUT,17)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_out_0(GPOUT,18)
    assign out_valid_out_0 = bicg_B2_branch_out_valid_out_0;

    // rst_sync(RESETSYNC,19)
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
