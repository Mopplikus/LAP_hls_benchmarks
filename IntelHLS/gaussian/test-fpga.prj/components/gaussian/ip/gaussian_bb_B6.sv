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

// SystemVerilog created from bb_gaussian_B6
// Created for function/kernel gaussian
// SystemVerilog created on Tue Apr  4 21:38:49 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module gaussian_bb_B6 (
    input wire [31:0] in_c0_exe41643_0,
    input wire [31:0] in_intel_reserved_ffwd_4_0,
    input wire [31:0] in_intel_reserved_ffwd_5_0,
    input wire [0:0] in_intel_reserved_ffwd_8_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    output wire [31:0] out_c0_exe41643,
    output wire [31:0] out_intel_reserved_ffwd_1_0,
    output wire [31:0] out_intel_reserved_ffwd_2_0,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [31:0] bb_gaussian_B6_stall_region_out_c0_exe41643;
    wire [0:0] bb_gaussian_B6_stall_region_out_cmp193337;
    wire [31:0] bb_gaussian_B6_stall_region_out_intel_reserved_ffwd_1_0;
    wire [31:0] bb_gaussian_B6_stall_region_out_intel_reserved_ffwd_2_0;
    wire [0:0] bb_gaussian_B6_stall_region_out_stall_out;
    wire [0:0] bb_gaussian_B6_stall_region_out_valid_out;
    wire [31:0] gaussian_B6_branch_out_c0_exe41643;
    wire [0:0] gaussian_B6_branch_out_stall_out;
    wire [0:0] gaussian_B6_branch_out_valid_out_0;
    wire [0:0] gaussian_B6_branch_out_valid_out_1;
    wire [31:0] gaussian_B6_merge_out_c0_exe41643;
    wire [0:0] gaussian_B6_merge_out_stall_out_0;
    wire [0:0] gaussian_B6_merge_out_valid_out;


    // gaussian_B6_merge(BLACKBOX,4)
    gaussian_B6_merge thegaussian_B6_merge (
        .in_c0_exe41643_0(in_c0_exe41643_0),
        .in_stall_in(bb_gaussian_B6_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe41643(gaussian_B6_merge_out_c0_exe41643),
        .out_stall_out_0(gaussian_B6_merge_out_stall_out_0),
        .out_valid_out(gaussian_B6_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B6_stall_region(BLACKBOX,2)
    gaussian_bb_B6_stall_region thebb_gaussian_B6_stall_region (
        .in_c0_exe41643(gaussian_B6_merge_out_c0_exe41643),
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_stall_in(gaussian_B6_branch_out_stall_out),
        .in_valid_in(gaussian_B6_merge_out_valid_out),
        .out_c0_exe41643(bb_gaussian_B6_stall_region_out_c0_exe41643),
        .out_cmp193337(bb_gaussian_B6_stall_region_out_cmp193337),
        .out_intel_reserved_ffwd_1_0(bb_gaussian_B6_stall_region_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_2_0(bb_gaussian_B6_stall_region_out_intel_reserved_ffwd_2_0),
        .out_stall_out(bb_gaussian_B6_stall_region_out_stall_out),
        .out_valid_out(bb_gaussian_B6_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // gaussian_B6_branch(BLACKBOX,3)
    gaussian_B6_branch thegaussian_B6_branch (
        .in_c0_exe41643(bb_gaussian_B6_stall_region_out_c0_exe41643),
        .in_cmp193337(bb_gaussian_B6_stall_region_out_cmp193337),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_gaussian_B6_stall_region_out_valid_out),
        .out_c0_exe41643(gaussian_B6_branch_out_c0_exe41643),
        .out_stall_out(gaussian_B6_branch_out_stall_out),
        .out_valid_out_0(gaussian_B6_branch_out_valid_out_0),
        .out_valid_out_1(gaussian_B6_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe41643(GPOUT,12)
    assign out_c0_exe41643 = gaussian_B6_branch_out_c0_exe41643;

    // out_intel_reserved_ffwd_1_0(GPOUT,13)
    assign out_intel_reserved_ffwd_1_0 = bb_gaussian_B6_stall_region_out_intel_reserved_ffwd_1_0;

    // out_intel_reserved_ffwd_2_0(GPOUT,14)
    assign out_intel_reserved_ffwd_2_0 = bb_gaussian_B6_stall_region_out_intel_reserved_ffwd_2_0;

    // out_stall_in_0(GPOUT,15)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,16)
    assign out_stall_out_0 = gaussian_B6_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,17)
    assign out_valid_out_0 = gaussian_B6_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,18)
    assign out_valid_out_1 = gaussian_B6_branch_out_valid_out_1;

endmodule
