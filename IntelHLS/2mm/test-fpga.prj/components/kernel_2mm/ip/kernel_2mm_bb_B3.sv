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

// SystemVerilog created from bb_kernel_2mm_B3
// Created for function/kernel kernel_2mm
// SystemVerilog created on Fri Apr  7 18:35:51 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_2mm_bb_B3 (
    input wire [63:0] in_c0_exe21371_0,
    input wire [0:0] in_c0_exe51404_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    output wire [63:0] out_c0_exe21371,
    output wire [0:0] out_c0_exe51404,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [63:0] bb_kernel_2mm_B3_stall_region_out_c0_exe21371;
    wire [0:0] bb_kernel_2mm_B3_stall_region_out_c0_exe51404;
    wire [0:0] bb_kernel_2mm_B3_stall_region_out_stall_out;
    wire [0:0] bb_kernel_2mm_B3_stall_region_out_valid_out;
    wire [63:0] kernel_2mm_B3_branch_out_c0_exe21371;
    wire [0:0] kernel_2mm_B3_branch_out_c0_exe51404;
    wire [0:0] kernel_2mm_B3_branch_out_stall_out;
    wire [0:0] kernel_2mm_B3_branch_out_valid_out_0;
    wire [63:0] kernel_2mm_B3_merge_out_c0_exe21371;
    wire [0:0] kernel_2mm_B3_merge_out_c0_exe51404;
    wire [0:0] kernel_2mm_B3_merge_out_stall_out_0;
    wire [0:0] kernel_2mm_B3_merge_out_valid_out;


    // kernel_2mm_B3_merge(BLACKBOX,8)
    kernel_2mm_B3_merge thekernel_2mm_B3_merge (
        .in_c0_exe21371_0(in_c0_exe21371_0),
        .in_c0_exe51404_0(in_c0_exe51404_0),
        .in_stall_in(bb_kernel_2mm_B3_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe21371(kernel_2mm_B3_merge_out_c0_exe21371),
        .out_c0_exe51404(kernel_2mm_B3_merge_out_c0_exe51404),
        .out_stall_out_0(kernel_2mm_B3_merge_out_stall_out_0),
        .out_valid_out(kernel_2mm_B3_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B3_stall_region(BLACKBOX,2)
    kernel_2mm_bb_B3_stall_region thebb_kernel_2mm_B3_stall_region (
        .in_c0_exe21371(kernel_2mm_B3_merge_out_c0_exe21371),
        .in_c0_exe51404(kernel_2mm_B3_merge_out_c0_exe51404),
        .in_stall_in(kernel_2mm_B3_branch_out_stall_out),
        .in_valid_in(kernel_2mm_B3_merge_out_valid_out),
        .out_c0_exe21371(bb_kernel_2mm_B3_stall_region_out_c0_exe21371),
        .out_c0_exe51404(bb_kernel_2mm_B3_stall_region_out_c0_exe51404),
        .out_stall_out(bb_kernel_2mm_B3_stall_region_out_stall_out),
        .out_valid_out(bb_kernel_2mm_B3_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_2mm_B3_branch(BLACKBOX,7)
    kernel_2mm_B3_branch thekernel_2mm_B3_branch (
        .in_c0_exe21371(bb_kernel_2mm_B3_stall_region_out_c0_exe21371),
        .in_c0_exe51404(bb_kernel_2mm_B3_stall_region_out_c0_exe51404),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_kernel_2mm_B3_stall_region_out_valid_out),
        .out_c0_exe21371(kernel_2mm_B3_branch_out_c0_exe21371),
        .out_c0_exe51404(kernel_2mm_B3_branch_out_c0_exe51404),
        .out_stall_out(kernel_2mm_B3_branch_out_stall_out),
        .out_valid_out_0(kernel_2mm_B3_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe21371(GPOUT,9)
    assign out_c0_exe21371 = kernel_2mm_B3_branch_out_c0_exe21371;

    // out_c0_exe51404(GPOUT,10)
    assign out_c0_exe51404 = kernel_2mm_B3_branch_out_c0_exe51404;

    // out_stall_out_0(GPOUT,11)
    assign out_stall_out_0 = kernel_2mm_B3_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,12)
    assign out_valid_out_0 = kernel_2mm_B3_branch_out_valid_out_0;

endmodule
