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

// SystemVerilog created from bb_covariance_B8
// Created for function/kernel covariance
// SystemVerilog created on Wed Apr  5 02:12:06 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_bb_B8 (
    input wire [63:0] in_c0_exe23084_0,
    input wire [31:0] in_c0_exe33095_0,
    input wire [31:0] in_c0_exe53116_0,
    input wire [0:0] in_c0_exe63127_0,
    input wire [0:0] in_c0_exe73138_0,
    input wire [31:0] in_c0_exe83149_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    output wire [63:0] out_c0_exe23084,
    output wire [31:0] out_c0_exe53116,
    output wire [0:0] out_c0_exe63127,
    output wire [0:0] out_c0_exe73138,
    output wire [31:0] out_c0_exe83149,
    output wire [31:0] out_mul,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [63:0] bb_covariance_B8_stall_region_out_c0_exe23084;
    wire [31:0] bb_covariance_B8_stall_region_out_c0_exe53116;
    wire [0:0] bb_covariance_B8_stall_region_out_c0_exe63127;
    wire [0:0] bb_covariance_B8_stall_region_out_c0_exe73138;
    wire [31:0] bb_covariance_B8_stall_region_out_c0_exe83149;
    wire [31:0] bb_covariance_B8_stall_region_out_mul;
    wire [0:0] bb_covariance_B8_stall_region_out_stall_out;
    wire [0:0] bb_covariance_B8_stall_region_out_valid_out;
    wire [63:0] covariance_B8_branch_out_c0_exe23084;
    wire [31:0] covariance_B8_branch_out_c0_exe53116;
    wire [0:0] covariance_B8_branch_out_c0_exe63127;
    wire [0:0] covariance_B8_branch_out_c0_exe73138;
    wire [31:0] covariance_B8_branch_out_c0_exe83149;
    wire [31:0] covariance_B8_branch_out_mul;
    wire [0:0] covariance_B8_branch_out_stall_out;
    wire [0:0] covariance_B8_branch_out_valid_out_0;
    wire [63:0] covariance_B8_merge_out_c0_exe23084;
    wire [31:0] covariance_B8_merge_out_c0_exe33095;
    wire [31:0] covariance_B8_merge_out_c0_exe53116;
    wire [0:0] covariance_B8_merge_out_c0_exe63127;
    wire [0:0] covariance_B8_merge_out_c0_exe73138;
    wire [31:0] covariance_B8_merge_out_c0_exe83149;
    wire [0:0] covariance_B8_merge_out_stall_out_0;
    wire [0:0] covariance_B8_merge_out_valid_out;


    // covariance_B8_merge(BLACKBOX,4)
    covariance_B8_merge thecovariance_B8_merge (
        .in_c0_exe23084_0(in_c0_exe23084_0),
        .in_c0_exe33095_0(in_c0_exe33095_0),
        .in_c0_exe53116_0(in_c0_exe53116_0),
        .in_c0_exe63127_0(in_c0_exe63127_0),
        .in_c0_exe73138_0(in_c0_exe73138_0),
        .in_c0_exe83149_0(in_c0_exe83149_0),
        .in_stall_in(bb_covariance_B8_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe23084(covariance_B8_merge_out_c0_exe23084),
        .out_c0_exe33095(covariance_B8_merge_out_c0_exe33095),
        .out_c0_exe53116(covariance_B8_merge_out_c0_exe53116),
        .out_c0_exe63127(covariance_B8_merge_out_c0_exe63127),
        .out_c0_exe73138(covariance_B8_merge_out_c0_exe73138),
        .out_c0_exe83149(covariance_B8_merge_out_c0_exe83149),
        .out_stall_out_0(covariance_B8_merge_out_stall_out_0),
        .out_valid_out(covariance_B8_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B8_stall_region(BLACKBOX,2)
    covariance_bb_B8_stall_region thebb_covariance_B8_stall_region (
        .in_c0_exe23084(covariance_B8_merge_out_c0_exe23084),
        .in_c0_exe33095(covariance_B8_merge_out_c0_exe33095),
        .in_c0_exe53116(covariance_B8_merge_out_c0_exe53116),
        .in_c0_exe63127(covariance_B8_merge_out_c0_exe63127),
        .in_c0_exe73138(covariance_B8_merge_out_c0_exe73138),
        .in_c0_exe83149(covariance_B8_merge_out_c0_exe83149),
        .in_stall_in(covariance_B8_branch_out_stall_out),
        .in_valid_in(covariance_B8_merge_out_valid_out),
        .out_c0_exe23084(bb_covariance_B8_stall_region_out_c0_exe23084),
        .out_c0_exe53116(bb_covariance_B8_stall_region_out_c0_exe53116),
        .out_c0_exe63127(bb_covariance_B8_stall_region_out_c0_exe63127),
        .out_c0_exe73138(bb_covariance_B8_stall_region_out_c0_exe73138),
        .out_c0_exe83149(bb_covariance_B8_stall_region_out_c0_exe83149),
        .out_mul(bb_covariance_B8_stall_region_out_mul),
        .out_stall_out(bb_covariance_B8_stall_region_out_stall_out),
        .out_valid_out(bb_covariance_B8_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // covariance_B8_branch(BLACKBOX,3)
    covariance_B8_branch thecovariance_B8_branch (
        .in_c0_exe23084(bb_covariance_B8_stall_region_out_c0_exe23084),
        .in_c0_exe53116(bb_covariance_B8_stall_region_out_c0_exe53116),
        .in_c0_exe63127(bb_covariance_B8_stall_region_out_c0_exe63127),
        .in_c0_exe73138(bb_covariance_B8_stall_region_out_c0_exe73138),
        .in_c0_exe83149(bb_covariance_B8_stall_region_out_c0_exe83149),
        .in_mul(bb_covariance_B8_stall_region_out_mul),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_covariance_B8_stall_region_out_valid_out),
        .out_c0_exe23084(covariance_B8_branch_out_c0_exe23084),
        .out_c0_exe53116(covariance_B8_branch_out_c0_exe53116),
        .out_c0_exe63127(covariance_B8_branch_out_c0_exe63127),
        .out_c0_exe73138(covariance_B8_branch_out_c0_exe73138),
        .out_c0_exe83149(covariance_B8_branch_out_c0_exe83149),
        .out_mul(covariance_B8_branch_out_mul),
        .out_stall_out(covariance_B8_branch_out_stall_out),
        .out_valid_out_0(covariance_B8_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe23084(GPOUT,13)
    assign out_c0_exe23084 = covariance_B8_branch_out_c0_exe23084;

    // out_c0_exe53116(GPOUT,14)
    assign out_c0_exe53116 = covariance_B8_branch_out_c0_exe53116;

    // out_c0_exe63127(GPOUT,15)
    assign out_c0_exe63127 = covariance_B8_branch_out_c0_exe63127;

    // out_c0_exe73138(GPOUT,16)
    assign out_c0_exe73138 = covariance_B8_branch_out_c0_exe73138;

    // out_c0_exe83149(GPOUT,17)
    assign out_c0_exe83149 = covariance_B8_branch_out_c0_exe83149;

    // out_mul(GPOUT,18)
    assign out_mul = covariance_B8_branch_out_mul;

    // out_stall_out_0(GPOUT,19)
    assign out_stall_out_0 = covariance_B8_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,20)
    assign out_valid_out_0 = covariance_B8_branch_out_valid_out_0;

endmodule
