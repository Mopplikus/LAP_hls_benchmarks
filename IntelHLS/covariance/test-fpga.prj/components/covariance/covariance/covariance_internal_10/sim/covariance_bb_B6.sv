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

// SystemVerilog created from bb_covariance_B6
// Created for function/kernel covariance
// SystemVerilog created on Wed Apr  5 02:12:06 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_bb_B6 (
    input wire [31:0] in_c0_exe434111_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_wgl_12_enter_exit_stall_in,
    input wire [0:0] in_wgl_12_enter_exit_valid_in,
    output wire [31:0] out_c0_exe434111,
    output wire [31:0] out_reorder_limiter_enter,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_wgl_12_enter_exit_stall_out,
    output wire [0:0] out_wgl_12_enter_exit_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [31:0] bb_covariance_B6_stall_region_out_c0_exe434111;
    wire [31:0] bb_covariance_B6_stall_region_out_reorder_limiter_enter;
    wire [0:0] bb_covariance_B6_stall_region_out_stall_out;
    wire [0:0] bb_covariance_B6_stall_region_out_valid_out;
    wire [0:0] bb_covariance_B6_stall_region_out_wgl_12_enter_exit_stall_out;
    wire [0:0] bb_covariance_B6_stall_region_out_wgl_12_enter_exit_valid_out;
    wire [31:0] covariance_B6_branch_out_c0_exe434111;
    wire [31:0] covariance_B6_branch_out_reorder_limiter_enter;
    wire [0:0] covariance_B6_branch_out_stall_out;
    wire [0:0] covariance_B6_branch_out_valid_out_0;
    wire [31:0] covariance_B6_merge_out_c0_exe434111;
    wire [0:0] covariance_B6_merge_out_stall_out_0;
    wire [0:0] covariance_B6_merge_out_valid_out;


    // covariance_B6_merge(BLACKBOX,4)
    covariance_B6_merge thecovariance_B6_merge (
        .in_c0_exe434111_0(in_c0_exe434111_0),
        .in_stall_in(bb_covariance_B6_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe434111(covariance_B6_merge_out_c0_exe434111),
        .out_stall_out_0(covariance_B6_merge_out_stall_out_0),
        .out_valid_out(covariance_B6_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B6_stall_region(BLACKBOX,2)
    covariance_bb_B6_stall_region thebb_covariance_B6_stall_region (
        .in_c0_exe434111(covariance_B6_merge_out_c0_exe434111),
        .in_stall_in(covariance_B6_branch_out_stall_out),
        .in_valid_in(covariance_B6_merge_out_valid_out),
        .in_wgl_12_enter_exit_stall_in(in_wgl_12_enter_exit_stall_in),
        .in_wgl_12_enter_exit_valid_in(in_wgl_12_enter_exit_valid_in),
        .out_c0_exe434111(bb_covariance_B6_stall_region_out_c0_exe434111),
        .out_reorder_limiter_enter(bb_covariance_B6_stall_region_out_reorder_limiter_enter),
        .out_stall_out(bb_covariance_B6_stall_region_out_stall_out),
        .out_valid_out(bb_covariance_B6_stall_region_out_valid_out),
        .out_wgl_12_enter_exit_stall_out(bb_covariance_B6_stall_region_out_wgl_12_enter_exit_stall_out),
        .out_wgl_12_enter_exit_valid_out(bb_covariance_B6_stall_region_out_wgl_12_enter_exit_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // covariance_B6_branch(BLACKBOX,3)
    covariance_B6_branch thecovariance_B6_branch (
        .in_c0_exe434111(bb_covariance_B6_stall_region_out_c0_exe434111),
        .in_reorder_limiter_enter(bb_covariance_B6_stall_region_out_reorder_limiter_enter),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_covariance_B6_stall_region_out_valid_out),
        .out_c0_exe434111(covariance_B6_branch_out_c0_exe434111),
        .out_reorder_limiter_enter(covariance_B6_branch_out_reorder_limiter_enter),
        .out_stall_out(covariance_B6_branch_out_stall_out),
        .out_valid_out_0(covariance_B6_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe434111(GPOUT,10)
    assign out_c0_exe434111 = covariance_B6_branch_out_c0_exe434111;

    // out_reorder_limiter_enter(GPOUT,11)
    assign out_reorder_limiter_enter = covariance_B6_branch_out_reorder_limiter_enter;

    // out_stall_out_0(GPOUT,12)
    assign out_stall_out_0 = covariance_B6_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,13)
    assign out_valid_out_0 = covariance_B6_branch_out_valid_out_0;

    // out_wgl_12_enter_exit_stall_out(GPOUT,14)
    assign out_wgl_12_enter_exit_stall_out = bb_covariance_B6_stall_region_out_wgl_12_enter_exit_stall_out;

    // out_wgl_12_enter_exit_valid_out(GPOUT,15)
    assign out_wgl_12_enter_exit_valid_out = bb_covariance_B6_stall_region_out_wgl_12_enter_exit_valid_out;

endmodule
