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

// SystemVerilog created from bb_kernel_3mm_B18
// Created for function/kernel kernel_3mm
// SystemVerilog created on Wed Apr  5 01:38:03 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_bb_B18 (
    input wire [0:0] in_c0_exe443717_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_kernel_3mm_B18_stall_region_out_c0_exe443717;
    wire [0:0] bb_kernel_3mm_B18_stall_region_out_stall_out;
    wire [0:0] bb_kernel_3mm_B18_stall_region_out_valid_out;
    wire [0:0] kernel_3mm_B18_branch_out_stall_out;
    wire [0:0] kernel_3mm_B18_branch_out_valid_out_0;
    wire [0:0] kernel_3mm_B18_branch_out_valid_out_1;
    wire [0:0] kernel_3mm_B18_merge_out_c0_exe443717;
    wire [0:0] kernel_3mm_B18_merge_out_stall_out_0;
    wire [0:0] kernel_3mm_B18_merge_out_valid_out;


    // out_stall_in_0(GPOUT,9)
    assign out_stall_in_0 = in_stall_in_0;

    // kernel_3mm_B18_branch(BLACKBOX,7)
    kernel_3mm_B18_branch thekernel_3mm_B18_branch (
        .in_c0_exe443717(bb_kernel_3mm_B18_stall_region_out_c0_exe443717),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_kernel_3mm_B18_stall_region_out_valid_out),
        .out_stall_out(kernel_3mm_B18_branch_out_stall_out),
        .out_valid_out_0(kernel_3mm_B18_branch_out_valid_out_0),
        .out_valid_out_1(kernel_3mm_B18_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B18_stall_region(BLACKBOX,2)
    kernel_3mm_bb_B18_stall_region thebb_kernel_3mm_B18_stall_region (
        .in_c0_exe443717(kernel_3mm_B18_merge_out_c0_exe443717),
        .in_stall_in(kernel_3mm_B18_branch_out_stall_out),
        .in_valid_in(kernel_3mm_B18_merge_out_valid_out),
        .out_c0_exe443717(bb_kernel_3mm_B18_stall_region_out_c0_exe443717),
        .out_stall_out(bb_kernel_3mm_B18_stall_region_out_stall_out),
        .out_valid_out(bb_kernel_3mm_B18_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_3mm_B18_merge(BLACKBOX,8)
    kernel_3mm_B18_merge thekernel_3mm_B18_merge (
        .in_c0_exe443717_0(in_c0_exe443717_0),
        .in_stall_in(bb_kernel_3mm_B18_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe443717(kernel_3mm_B18_merge_out_c0_exe443717),
        .out_stall_out_0(kernel_3mm_B18_merge_out_stall_out_0),
        .out_valid_out(kernel_3mm_B18_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out_0(GPOUT,10)
    assign out_stall_out_0 = kernel_3mm_B18_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,11)
    assign out_valid_out_0 = kernel_3mm_B18_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,12)
    assign out_valid_out_1 = kernel_3mm_B18_branch_out_valid_out_1;

endmodule
