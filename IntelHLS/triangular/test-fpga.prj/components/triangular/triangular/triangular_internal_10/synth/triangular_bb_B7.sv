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

// SystemVerilog created from bb_triangular_B7
// Created for function/kernel triangular
// SystemVerilog created on Wed Apr  5 14:46:58 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module triangular_bb_B7 (
    input wire [31:0] in_c0_exe52117_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_wgl_10_exit_exit_stall_out,
    input wire [0:0] in_wgl_10_exit_exit_valid_out,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_wgl_10_exit_exit_stall_in,
    output wire [0:0] out_wgl_10_exit_exit_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_triangular_B7_stall_region_out_stall_out;
    wire [0:0] bb_triangular_B7_stall_region_out_valid_out;
    wire [0:0] bb_triangular_B7_stall_region_out_wgl_10_exit_exit_stall_in;
    wire [0:0] bb_triangular_B7_stall_region_out_wgl_10_exit_exit_valid_in;
    wire [0:0] triangular_B7_branch_out_stall_out;
    wire [0:0] triangular_B7_branch_out_valid_out_0;
    wire [31:0] triangular_B7_merge_out_c0_exe52117;
    wire [0:0] triangular_B7_merge_out_stall_out_0;
    wire [0:0] triangular_B7_merge_out_valid_out;


    // triangular_B7_branch(BLACKBOX,12)
    triangular_B7_branch thetriangular_B7_branch (
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_triangular_B7_stall_region_out_valid_out),
        .out_stall_out(triangular_B7_branch_out_stall_out),
        .out_valid_out_0(triangular_B7_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_triangular_B7_stall_region(BLACKBOX,2)
    triangular_bb_B7_stall_region thebb_triangular_B7_stall_region (
        .in_c0_exe52117(triangular_B7_merge_out_c0_exe52117),
        .in_stall_in(triangular_B7_branch_out_stall_out),
        .in_valid_in(triangular_B7_merge_out_valid_out),
        .in_wgl_10_exit_exit_stall_out(in_wgl_10_exit_exit_stall_out),
        .in_wgl_10_exit_exit_valid_out(in_wgl_10_exit_exit_valid_out),
        .out_stall_out(bb_triangular_B7_stall_region_out_stall_out),
        .out_valid_out(bb_triangular_B7_stall_region_out_valid_out),
        .out_wgl_10_exit_exit_stall_in(bb_triangular_B7_stall_region_out_wgl_10_exit_exit_stall_in),
        .out_wgl_10_exit_exit_valid_in(bb_triangular_B7_stall_region_out_wgl_10_exit_exit_valid_in),
        .clock(clock),
        .resetn(resetn)
    );

    // triangular_B7_merge(BLACKBOX,13)
    triangular_B7_merge thetriangular_B7_merge (
        .in_c0_exe52117_0(in_c0_exe52117_0),
        .in_stall_in(bb_triangular_B7_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe52117(triangular_B7_merge_out_c0_exe52117),
        .out_stall_out_0(triangular_B7_merge_out_stall_out_0),
        .out_valid_out(triangular_B7_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out_0(GPOUT,8)
    assign out_stall_out_0 = triangular_B7_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,9)
    assign out_valid_out_0 = triangular_B7_branch_out_valid_out_0;

    // out_wgl_10_exit_exit_stall_in(GPOUT,10)
    assign out_wgl_10_exit_exit_stall_in = bb_triangular_B7_stall_region_out_wgl_10_exit_exit_stall_in;

    // out_wgl_10_exit_exit_valid_in(GPOUT,11)
    assign out_wgl_10_exit_exit_valid_in = bb_triangular_B7_stall_region_out_wgl_10_exit_exit_valid_in;

endmodule
