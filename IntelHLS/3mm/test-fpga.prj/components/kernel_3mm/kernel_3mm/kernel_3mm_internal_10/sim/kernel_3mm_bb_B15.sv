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

// SystemVerilog created from bb_kernel_3mm_B15
// Created for function/kernel kernel_3mm
// SystemVerilog created on Fri Apr  7 18:25:07 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_bb_B15 (
    output wire [0:0] out_feedback_out_20,
    output wire [0:0] out_feedback_out_21,
    input wire [0:0] in_feedback_stall_in_20,
    input wire [0:0] in_feedback_stall_in_21,
    output wire [0:0] out_feedback_valid_out_20,
    output wire [0:0] out_feedback_valid_out_21,
    input wire [0:0] in_c0_exe261236_0,
    input wire [0:0] in_iowr_bl_return_kernel_3mm_i_fifoready,
    input wire [0:0] in_memdep_644_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_iowr_bl_return_kernel_3mm_o_fifodata,
    output wire [0:0] out_iowr_bl_return_kernel_3mm_o_fifovalid,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_kernel_3mm_B15_stall_region_out_feedback_out_20;
    wire [0:0] bb_kernel_3mm_B15_stall_region_out_feedback_out_21;
    wire [0:0] bb_kernel_3mm_B15_stall_region_out_feedback_valid_out_20;
    wire [0:0] bb_kernel_3mm_B15_stall_region_out_feedback_valid_out_21;
    wire [0:0] bb_kernel_3mm_B15_stall_region_out_iowr_bl_return_kernel_3mm_o_fifodata;
    wire [0:0] bb_kernel_3mm_B15_stall_region_out_iowr_bl_return_kernel_3mm_o_fifovalid;
    wire [0:0] bb_kernel_3mm_B15_stall_region_out_stall_out;
    wire [0:0] bb_kernel_3mm_B15_stall_region_out_valid_out;
    wire [0:0] kernel_3mm_B15_branch_out_stall_out;
    wire [0:0] kernel_3mm_B15_branch_out_valid_out_0;
    wire [0:0] kernel_3mm_B15_merge_out_c0_exe261236;
    wire [0:0] kernel_3mm_B15_merge_out_memdep_644;
    wire [0:0] kernel_3mm_B15_merge_out_stall_out_0;
    wire [0:0] kernel_3mm_B15_merge_out_valid_out;


    // kernel_3mm_B15_branch(BLACKBOX,14)
    kernel_3mm_B15_branch thekernel_3mm_B15_branch (
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_kernel_3mm_B15_stall_region_out_valid_out),
        .out_stall_out(kernel_3mm_B15_branch_out_stall_out),
        .out_valid_out_0(kernel_3mm_B15_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_3mm_B15_merge(BLACKBOX,15)
    kernel_3mm_B15_merge thekernel_3mm_B15_merge (
        .in_c0_exe261236_0(in_c0_exe261236_0),
        .in_memdep_644_0(in_memdep_644_0),
        .in_stall_in(bb_kernel_3mm_B15_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe261236(kernel_3mm_B15_merge_out_c0_exe261236),
        .out_memdep_644(kernel_3mm_B15_merge_out_memdep_644),
        .out_stall_out_0(kernel_3mm_B15_merge_out_stall_out_0),
        .out_valid_out(kernel_3mm_B15_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B15_stall_region(BLACKBOX,2)
    kernel_3mm_bb_B15_stall_region thebb_kernel_3mm_B15_stall_region (
        .in_c0_exe261236(kernel_3mm_B15_merge_out_c0_exe261236),
        .in_feedback_stall_in_20(in_feedback_stall_in_20),
        .in_feedback_stall_in_21(in_feedback_stall_in_21),
        .in_iowr_bl_return_kernel_3mm_i_fifoready(in_iowr_bl_return_kernel_3mm_i_fifoready),
        .in_memdep_644(kernel_3mm_B15_merge_out_memdep_644),
        .in_stall_in(kernel_3mm_B15_branch_out_stall_out),
        .in_valid_in(kernel_3mm_B15_merge_out_valid_out),
        .out_feedback_out_20(bb_kernel_3mm_B15_stall_region_out_feedback_out_20),
        .out_feedback_out_21(bb_kernel_3mm_B15_stall_region_out_feedback_out_21),
        .out_feedback_valid_out_20(bb_kernel_3mm_B15_stall_region_out_feedback_valid_out_20),
        .out_feedback_valid_out_21(bb_kernel_3mm_B15_stall_region_out_feedback_valid_out_21),
        .out_iowr_bl_return_kernel_3mm_o_fifodata(bb_kernel_3mm_B15_stall_region_out_iowr_bl_return_kernel_3mm_o_fifodata),
        .out_iowr_bl_return_kernel_3mm_o_fifovalid(bb_kernel_3mm_B15_stall_region_out_iowr_bl_return_kernel_3mm_o_fifovalid),
        .out_stall_out(bb_kernel_3mm_B15_stall_region_out_stall_out),
        .out_valid_out(bb_kernel_3mm_B15_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_out_20_sync(GPOUT,3)
    assign out_feedback_out_20 = bb_kernel_3mm_B15_stall_region_out_feedback_out_20;

    // feedback_out_21_sync(GPOUT,4)
    assign out_feedback_out_21 = bb_kernel_3mm_B15_stall_region_out_feedback_out_21;

    // feedback_valid_out_20_sync(GPOUT,7)
    assign out_feedback_valid_out_20 = bb_kernel_3mm_B15_stall_region_out_feedback_valid_out_20;

    // feedback_valid_out_21_sync(GPOUT,8)
    assign out_feedback_valid_out_21 = bb_kernel_3mm_B15_stall_region_out_feedback_valid_out_21;

    // out_iowr_bl_return_kernel_3mm_o_fifodata(GPOUT,16)
    assign out_iowr_bl_return_kernel_3mm_o_fifodata = bb_kernel_3mm_B15_stall_region_out_iowr_bl_return_kernel_3mm_o_fifodata;

    // out_iowr_bl_return_kernel_3mm_o_fifovalid(GPOUT,17)
    assign out_iowr_bl_return_kernel_3mm_o_fifovalid = bb_kernel_3mm_B15_stall_region_out_iowr_bl_return_kernel_3mm_o_fifovalid;

    // out_stall_in_0(GPOUT,18)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,19)
    assign out_stall_out_0 = kernel_3mm_B15_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,20)
    assign out_valid_out_0 = kernel_3mm_B15_branch_out_valid_out_0;

endmodule
