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

// SystemVerilog created from bb_covariance_B14
// Created for function/kernel covariance
// SystemVerilog created on Wed Apr  5 02:12:05 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_bb_B14 (
    input wire [0:0] in_c0_exe141615_0,
    input wire [31:0] in_c0_exe645520_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    output wire [31:0] out_c0_exe645520,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_covariance_B14_stall_region_out_c0_exe141615;
    wire [31:0] bb_covariance_B14_stall_region_out_c0_exe645520;
    wire [0:0] bb_covariance_B14_stall_region_out_stall_out;
    wire [0:0] bb_covariance_B14_stall_region_out_valid_out;
    wire [31:0] covariance_B14_branch_out_c0_exe645520;
    wire [0:0] covariance_B14_branch_out_stall_out;
    wire [0:0] covariance_B14_branch_out_valid_out_0;
    wire [0:0] covariance_B14_branch_out_valid_out_1;
    wire [0:0] covariance_B14_merge_out_c0_exe141615;
    wire [31:0] covariance_B14_merge_out_c0_exe645520;
    wire [0:0] covariance_B14_merge_out_stall_out_0;
    wire [0:0] covariance_B14_merge_out_valid_out;


    // covariance_B14_merge(BLACKBOX,4)
    covariance_B14_merge thecovariance_B14_merge (
        .in_c0_exe141615_0(in_c0_exe141615_0),
        .in_c0_exe645520_0(in_c0_exe645520_0),
        .in_stall_in(bb_covariance_B14_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe141615(covariance_B14_merge_out_c0_exe141615),
        .out_c0_exe645520(covariance_B14_merge_out_c0_exe645520),
        .out_stall_out_0(covariance_B14_merge_out_stall_out_0),
        .out_valid_out(covariance_B14_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B14_stall_region(BLACKBOX,2)
    covariance_bb_B14_stall_region thebb_covariance_B14_stall_region (
        .in_c0_exe141615(covariance_B14_merge_out_c0_exe141615),
        .in_c0_exe645520(covariance_B14_merge_out_c0_exe645520),
        .in_stall_in(covariance_B14_branch_out_stall_out),
        .in_valid_in(covariance_B14_merge_out_valid_out),
        .out_c0_exe141615(bb_covariance_B14_stall_region_out_c0_exe141615),
        .out_c0_exe645520(bb_covariance_B14_stall_region_out_c0_exe645520),
        .out_stall_out(bb_covariance_B14_stall_region_out_stall_out),
        .out_valid_out(bb_covariance_B14_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // covariance_B14_branch(BLACKBOX,3)
    covariance_B14_branch thecovariance_B14_branch (
        .in_c0_exe141615(bb_covariance_B14_stall_region_out_c0_exe141615),
        .in_c0_exe645520(bb_covariance_B14_stall_region_out_c0_exe645520),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_covariance_B14_stall_region_out_valid_out),
        .out_c0_exe645520(covariance_B14_branch_out_c0_exe645520),
        .out_stall_out(covariance_B14_branch_out_stall_out),
        .out_valid_out_0(covariance_B14_branch_out_valid_out_0),
        .out_valid_out_1(covariance_B14_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe645520(GPOUT,10)
    assign out_c0_exe645520 = covariance_B14_branch_out_c0_exe645520;

    // out_stall_in_0(GPOUT,11)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,12)
    assign out_stall_out_0 = covariance_B14_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,13)
    assign out_valid_out_0 = covariance_B14_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,14)
    assign out_valid_out_1 = covariance_B14_branch_out_valid_out_1;

endmodule
