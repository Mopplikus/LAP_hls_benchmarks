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

// SystemVerilog created from bb_triangular_B6
// Created for function/kernel triangular
// SystemVerilog created on Wed Apr  5 14:46:58 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module triangular_bb_B6 (
    output wire [0:0] out_feedback_out_24,
    input wire [0:0] in_feedback_stall_in_24,
    output wire [0:0] out_feedback_valid_out_24,
    input wire [0:0] in_c0_exe22085_0,
    input wire [0:0] in_c0_exe42106_0,
    input wire [31:0] in_c0_exe52118_0,
    input wire [0:0] in_c0_exe62129_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    output wire [31:0] out_c0_exe52118,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_triangular_B6_stall_region_out_c0_exe42106;
    wire [31:0] bb_triangular_B6_stall_region_out_c0_exe52118;
    wire [0:0] bb_triangular_B6_stall_region_out_feedback_out_24;
    wire [0:0] bb_triangular_B6_stall_region_out_feedback_valid_out_24;
    wire [0:0] bb_triangular_B6_stall_region_out_stall_out;
    wire [0:0] bb_triangular_B6_stall_region_out_valid_out;
    wire [31:0] triangular_B6_branch_out_c0_exe52118;
    wire [0:0] triangular_B6_branch_out_stall_out;
    wire [0:0] triangular_B6_branch_out_valid_out_0;
    wire [0:0] triangular_B6_branch_out_valid_out_1;
    wire [0:0] triangular_B6_merge_out_c0_exe22085;
    wire [0:0] triangular_B6_merge_out_c0_exe42106;
    wire [31:0] triangular_B6_merge_out_c0_exe52118;
    wire [0:0] triangular_B6_merge_out_c0_exe62129;
    wire [0:0] triangular_B6_merge_out_stall_out_0;
    wire [0:0] triangular_B6_merge_out_valid_out;


    // triangular_B6_branch(BLACKBOX,18)
    triangular_B6_branch thetriangular_B6_branch (
        .in_c0_exe42106(bb_triangular_B6_stall_region_out_c0_exe42106),
        .in_c0_exe52118(bb_triangular_B6_stall_region_out_c0_exe52118),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_triangular_B6_stall_region_out_valid_out),
        .out_c0_exe52118(triangular_B6_branch_out_c0_exe52118),
        .out_stall_out(triangular_B6_branch_out_stall_out),
        .out_valid_out_0(triangular_B6_branch_out_valid_out_0),
        .out_valid_out_1(triangular_B6_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // triangular_B6_merge(BLACKBOX,19)
    triangular_B6_merge thetriangular_B6_merge (
        .in_c0_exe22085_0(in_c0_exe22085_0),
        .in_c0_exe42106_0(in_c0_exe42106_0),
        .in_c0_exe52118_0(in_c0_exe52118_0),
        .in_c0_exe62129_0(in_c0_exe62129_0),
        .in_stall_in(bb_triangular_B6_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe22085(triangular_B6_merge_out_c0_exe22085),
        .out_c0_exe42106(triangular_B6_merge_out_c0_exe42106),
        .out_c0_exe52118(triangular_B6_merge_out_c0_exe52118),
        .out_c0_exe62129(triangular_B6_merge_out_c0_exe62129),
        .out_stall_out_0(triangular_B6_merge_out_stall_out_0),
        .out_valid_out(triangular_B6_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_triangular_B6_stall_region(BLACKBOX,2)
    triangular_bb_B6_stall_region thebb_triangular_B6_stall_region (
        .in_c0_exe22085(triangular_B6_merge_out_c0_exe22085),
        .in_c0_exe42106(triangular_B6_merge_out_c0_exe42106),
        .in_c0_exe52118(triangular_B6_merge_out_c0_exe52118),
        .in_c0_exe62129(triangular_B6_merge_out_c0_exe62129),
        .in_feedback_stall_in_24(in_feedback_stall_in_24),
        .in_stall_in(triangular_B6_branch_out_stall_out),
        .in_valid_in(triangular_B6_merge_out_valid_out),
        .out_c0_exe42106(bb_triangular_B6_stall_region_out_c0_exe42106),
        .out_c0_exe52118(bb_triangular_B6_stall_region_out_c0_exe52118),
        .out_feedback_out_24(bb_triangular_B6_stall_region_out_feedback_out_24),
        .out_feedback_valid_out_24(bb_triangular_B6_stall_region_out_feedback_valid_out_24),
        .out_stall_out(bb_triangular_B6_stall_region_out_stall_out),
        .out_valid_out(bb_triangular_B6_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_out_24_sync(GPOUT,3)
    assign out_feedback_out_24 = bb_triangular_B6_stall_region_out_feedback_out_24;

    // feedback_valid_out_24_sync(GPOUT,5)
    assign out_feedback_valid_out_24 = bb_triangular_B6_stall_region_out_feedback_valid_out_24;

    // out_c0_exe52118(GPOUT,13)
    assign out_c0_exe52118 = triangular_B6_branch_out_c0_exe52118;

    // out_stall_in_0(GPOUT,14)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,15)
    assign out_stall_out_0 = triangular_B6_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,16)
    assign out_valid_out_0 = triangular_B6_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,17)
    assign out_valid_out_1 = triangular_B6_branch_out_valid_out_1;

endmodule
