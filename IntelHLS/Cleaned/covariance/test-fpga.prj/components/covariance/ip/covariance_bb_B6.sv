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
// SystemVerilog created on Tue Jun 13 02:07:49 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_bb_B6 (
    output wire [0:0] out_feedback_out_20,
    input wire [0:0] in_feedback_stall_in_20,
    output wire [0:0] out_feedback_valid_out_20,
    input wire [31:0] in_c0_exe52639_0,
    input wire [0:0] in_c0_exe626410_0,
    input wire [0:0] in_c0_exe726511_0,
    input wire [0:0] in_memdep_12_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    output wire [31:0] out_c0_exe52639,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [31:0] bb_covariance_B6_stall_region_out_c0_exe52639;
    wire [0:0] bb_covariance_B6_stall_region_out_c0_exe726511;
    wire [0:0] bb_covariance_B6_stall_region_out_feedback_out_20;
    wire [0:0] bb_covariance_B6_stall_region_out_feedback_valid_out_20;
    wire [0:0] bb_covariance_B6_stall_region_out_stall_out;
    wire [0:0] bb_covariance_B6_stall_region_out_valid_out;
    wire [31:0] covariance_B6_branch_out_c0_exe52639;
    wire [0:0] covariance_B6_branch_out_stall_out;
    wire [0:0] covariance_B6_branch_out_valid_out_0;
    wire [0:0] covariance_B6_branch_out_valid_out_1;
    wire [31:0] covariance_B6_merge_out_c0_exe52639;
    wire [0:0] covariance_B6_merge_out_c0_exe626410;
    wire [0:0] covariance_B6_merge_out_c0_exe726511;
    wire [0:0] covariance_B6_merge_out_memdep_12;
    wire [0:0] covariance_B6_merge_out_stall_out_0;
    wire [0:0] covariance_B6_merge_out_valid_out;


    // covariance_B6_branch(BLACKBOX,3)
    covariance_B6_branch thecovariance_B6_branch (
        .in_c0_exe52639(bb_covariance_B6_stall_region_out_c0_exe52639),
        .in_c0_exe726511(bb_covariance_B6_stall_region_out_c0_exe726511),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_covariance_B6_stall_region_out_valid_out),
        .out_c0_exe52639(covariance_B6_branch_out_c0_exe52639),
        .out_stall_out(covariance_B6_branch_out_stall_out),
        .out_valid_out_0(covariance_B6_branch_out_valid_out_0),
        .out_valid_out_1(covariance_B6_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // covariance_B6_merge(BLACKBOX,4)
    covariance_B6_merge thecovariance_B6_merge (
        .in_c0_exe52639_0(in_c0_exe52639_0),
        .in_c0_exe626410_0(in_c0_exe626410_0),
        .in_c0_exe726511_0(in_c0_exe726511_0),
        .in_memdep_12_0(in_memdep_12_0),
        .in_stall_in(bb_covariance_B6_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe52639(covariance_B6_merge_out_c0_exe52639),
        .out_c0_exe626410(covariance_B6_merge_out_c0_exe626410),
        .out_c0_exe726511(covariance_B6_merge_out_c0_exe726511),
        .out_memdep_12(covariance_B6_merge_out_memdep_12),
        .out_stall_out_0(covariance_B6_merge_out_stall_out_0),
        .out_valid_out(covariance_B6_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B6_stall_region(BLACKBOX,2)
    covariance_bb_B6_stall_region thebb_covariance_B6_stall_region (
        .in_c0_exe52639(covariance_B6_merge_out_c0_exe52639),
        .in_c0_exe626410(covariance_B6_merge_out_c0_exe626410),
        .in_c0_exe726511(covariance_B6_merge_out_c0_exe726511),
        .in_feedback_stall_in_20(in_feedback_stall_in_20),
        .in_memdep_12(covariance_B6_merge_out_memdep_12),
        .in_stall_in(covariance_B6_branch_out_stall_out),
        .in_valid_in(covariance_B6_merge_out_valid_out),
        .out_c0_exe52639(bb_covariance_B6_stall_region_out_c0_exe52639),
        .out_c0_exe726511(bb_covariance_B6_stall_region_out_c0_exe726511),
        .out_feedback_out_20(bb_covariance_B6_stall_region_out_feedback_out_20),
        .out_feedback_valid_out_20(bb_covariance_B6_stall_region_out_feedback_valid_out_20),
        .out_stall_out(bb_covariance_B6_stall_region_out_stall_out),
        .out_valid_out(bb_covariance_B6_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_out_20_sync(GPOUT,5)
    assign out_feedback_out_20 = bb_covariance_B6_stall_region_out_feedback_out_20;

    // feedback_valid_out_20_sync(GPOUT,7)
    assign out_feedback_valid_out_20 = bb_covariance_B6_stall_region_out_feedback_valid_out_20;

    // out_c0_exe52639(GPOUT,15)
    assign out_c0_exe52639 = covariance_B6_branch_out_c0_exe52639;

    // out_stall_in_0(GPOUT,16)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,17)
    assign out_stall_out_0 = covariance_B6_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,18)
    assign out_valid_out_0 = covariance_B6_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,19)
    assign out_valid_out_1 = covariance_B6_branch_out_valid_out_1;

endmodule
