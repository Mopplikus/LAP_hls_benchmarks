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
// SystemVerilog created on Fri Apr  7 17:25:52 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module gaussian_bb_B6 (
    output wire [0:0] out_feedback_out_10,
    input wire [0:0] in_feedback_stall_in_10,
    output wire [0:0] out_feedback_valid_out_10,
    input wire [0:0] in_c0_exe1013715_0,
    input wire [0:0] in_c0_exe21292_0,
    input wire [0:0] in_c0_exe31304_0,
    input wire [0:0] in_c0_exe41315_0,
    input wire [31:0] in_c0_exe61339_0,
    input wire [31:0] in_c0_exe713411_0,
    input wire [31:0] in_c0_exe813513_0,
    input wire [0:0] in_c0_exe913614_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_c0_exe21292,
    output wire [0:0] out_c0_exe31304,
    output wire [0:0] out_c0_exe41315,
    output wire [31:0] out_c0_exe61339,
    output wire [31:0] out_c0_exe713411,
    output wire [31:0] out_c0_exe813513,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_gaussian_B6_stall_region_out_c0_exe1013715;
    wire [0:0] bb_gaussian_B6_stall_region_out_c0_exe21292;
    wire [0:0] bb_gaussian_B6_stall_region_out_c0_exe31304;
    wire [0:0] bb_gaussian_B6_stall_region_out_c0_exe41315;
    wire [31:0] bb_gaussian_B6_stall_region_out_c0_exe61339;
    wire [31:0] bb_gaussian_B6_stall_region_out_c0_exe713411;
    wire [31:0] bb_gaussian_B6_stall_region_out_c0_exe813513;
    wire [0:0] bb_gaussian_B6_stall_region_out_feedback_out_10;
    wire [0:0] bb_gaussian_B6_stall_region_out_feedback_valid_out_10;
    wire [0:0] bb_gaussian_B6_stall_region_out_stall_out;
    wire [0:0] bb_gaussian_B6_stall_region_out_valid_out;
    wire [0:0] gaussian_B6_branch_out_c0_exe21292;
    wire [0:0] gaussian_B6_branch_out_c0_exe31304;
    wire [0:0] gaussian_B6_branch_out_c0_exe41315;
    wire [31:0] gaussian_B6_branch_out_c0_exe61339;
    wire [31:0] gaussian_B6_branch_out_c0_exe713411;
    wire [31:0] gaussian_B6_branch_out_c0_exe813513;
    wire [0:0] gaussian_B6_branch_out_stall_out;
    wire [0:0] gaussian_B6_branch_out_valid_out_0;
    wire [0:0] gaussian_B6_branch_out_valid_out_1;
    wire [0:0] gaussian_B6_merge_out_c0_exe1013715;
    wire [0:0] gaussian_B6_merge_out_c0_exe21292;
    wire [0:0] gaussian_B6_merge_out_c0_exe31304;
    wire [0:0] gaussian_B6_merge_out_c0_exe41315;
    wire [31:0] gaussian_B6_merge_out_c0_exe61339;
    wire [31:0] gaussian_B6_merge_out_c0_exe713411;
    wire [31:0] gaussian_B6_merge_out_c0_exe813513;
    wire [0:0] gaussian_B6_merge_out_c0_exe913614;
    wire [0:0] gaussian_B6_merge_out_stall_out_0;
    wire [0:0] gaussian_B6_merge_out_valid_out;


    // gaussian_B6_branch(BLACKBOX,6)
    gaussian_B6_branch thegaussian_B6_branch (
        .in_c0_exe1013715(bb_gaussian_B6_stall_region_out_c0_exe1013715),
        .in_c0_exe21292(bb_gaussian_B6_stall_region_out_c0_exe21292),
        .in_c0_exe31304(bb_gaussian_B6_stall_region_out_c0_exe31304),
        .in_c0_exe41315(bb_gaussian_B6_stall_region_out_c0_exe41315),
        .in_c0_exe61339(bb_gaussian_B6_stall_region_out_c0_exe61339),
        .in_c0_exe713411(bb_gaussian_B6_stall_region_out_c0_exe713411),
        .in_c0_exe813513(bb_gaussian_B6_stall_region_out_c0_exe813513),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_gaussian_B6_stall_region_out_valid_out),
        .out_c0_exe21292(gaussian_B6_branch_out_c0_exe21292),
        .out_c0_exe31304(gaussian_B6_branch_out_c0_exe31304),
        .out_c0_exe41315(gaussian_B6_branch_out_c0_exe41315),
        .out_c0_exe61339(gaussian_B6_branch_out_c0_exe61339),
        .out_c0_exe713411(gaussian_B6_branch_out_c0_exe713411),
        .out_c0_exe813513(gaussian_B6_branch_out_c0_exe813513),
        .out_stall_out(gaussian_B6_branch_out_stall_out),
        .out_valid_out_0(gaussian_B6_branch_out_valid_out_0),
        .out_valid_out_1(gaussian_B6_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // gaussian_B6_merge(BLACKBOX,7)
    gaussian_B6_merge thegaussian_B6_merge (
        .in_c0_exe1013715_0(in_c0_exe1013715_0),
        .in_c0_exe21292_0(in_c0_exe21292_0),
        .in_c0_exe31304_0(in_c0_exe31304_0),
        .in_c0_exe41315_0(in_c0_exe41315_0),
        .in_c0_exe61339_0(in_c0_exe61339_0),
        .in_c0_exe713411_0(in_c0_exe713411_0),
        .in_c0_exe813513_0(in_c0_exe813513_0),
        .in_c0_exe913614_0(in_c0_exe913614_0),
        .in_stall_in(bb_gaussian_B6_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe1013715(gaussian_B6_merge_out_c0_exe1013715),
        .out_c0_exe21292(gaussian_B6_merge_out_c0_exe21292),
        .out_c0_exe31304(gaussian_B6_merge_out_c0_exe31304),
        .out_c0_exe41315(gaussian_B6_merge_out_c0_exe41315),
        .out_c0_exe61339(gaussian_B6_merge_out_c0_exe61339),
        .out_c0_exe713411(gaussian_B6_merge_out_c0_exe713411),
        .out_c0_exe813513(gaussian_B6_merge_out_c0_exe813513),
        .out_c0_exe913614(gaussian_B6_merge_out_c0_exe913614),
        .out_stall_out_0(gaussian_B6_merge_out_stall_out_0),
        .out_valid_out(gaussian_B6_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B6_stall_region(BLACKBOX,2)
    gaussian_bb_B6_stall_region thebb_gaussian_B6_stall_region (
        .in_c0_exe1013715(gaussian_B6_merge_out_c0_exe1013715),
        .in_c0_exe21292(gaussian_B6_merge_out_c0_exe21292),
        .in_c0_exe31304(gaussian_B6_merge_out_c0_exe31304),
        .in_c0_exe41315(gaussian_B6_merge_out_c0_exe41315),
        .in_c0_exe61339(gaussian_B6_merge_out_c0_exe61339),
        .in_c0_exe713411(gaussian_B6_merge_out_c0_exe713411),
        .in_c0_exe813513(gaussian_B6_merge_out_c0_exe813513),
        .in_c0_exe913614(gaussian_B6_merge_out_c0_exe913614),
        .in_feedback_stall_in_10(in_feedback_stall_in_10),
        .in_stall_in(gaussian_B6_branch_out_stall_out),
        .in_valid_in(gaussian_B6_merge_out_valid_out),
        .out_c0_exe1013715(bb_gaussian_B6_stall_region_out_c0_exe1013715),
        .out_c0_exe21292(bb_gaussian_B6_stall_region_out_c0_exe21292),
        .out_c0_exe31304(bb_gaussian_B6_stall_region_out_c0_exe31304),
        .out_c0_exe41315(bb_gaussian_B6_stall_region_out_c0_exe41315),
        .out_c0_exe61339(bb_gaussian_B6_stall_region_out_c0_exe61339),
        .out_c0_exe713411(bb_gaussian_B6_stall_region_out_c0_exe713411),
        .out_c0_exe813513(bb_gaussian_B6_stall_region_out_c0_exe813513),
        .out_feedback_out_10(bb_gaussian_B6_stall_region_out_feedback_out_10),
        .out_feedback_valid_out_10(bb_gaussian_B6_stall_region_out_feedback_valid_out_10),
        .out_stall_out(bb_gaussian_B6_stall_region_out_stall_out),
        .out_valid_out(bb_gaussian_B6_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_out_10_sync(GPOUT,3)
    assign out_feedback_out_10 = bb_gaussian_B6_stall_region_out_feedback_out_10;

    // feedback_valid_out_10_sync(GPOUT,5)
    assign out_feedback_valid_out_10 = bb_gaussian_B6_stall_region_out_feedback_valid_out_10;

    // out_c0_exe21292(GPOUT,19)
    assign out_c0_exe21292 = gaussian_B6_branch_out_c0_exe21292;

    // out_c0_exe31304(GPOUT,20)
    assign out_c0_exe31304 = gaussian_B6_branch_out_c0_exe31304;

    // out_c0_exe41315(GPOUT,21)
    assign out_c0_exe41315 = gaussian_B6_branch_out_c0_exe41315;

    // out_c0_exe61339(GPOUT,22)
    assign out_c0_exe61339 = gaussian_B6_branch_out_c0_exe61339;

    // out_c0_exe713411(GPOUT,23)
    assign out_c0_exe713411 = gaussian_B6_branch_out_c0_exe713411;

    // out_c0_exe813513(GPOUT,24)
    assign out_c0_exe813513 = gaussian_B6_branch_out_c0_exe813513;

    // out_stall_in_0(GPOUT,25)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,26)
    assign out_stall_out_0 = gaussian_B6_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,27)
    assign out_valid_out_0 = gaussian_B6_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,28)
    assign out_valid_out_1 = gaussian_B6_branch_out_valid_out_1;

endmodule
