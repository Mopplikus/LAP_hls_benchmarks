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

// SystemVerilog created from bb_atax_B4
// Created for function/kernel atax
// SystemVerilog created on Fri Apr  7 18:08:54 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_bb_B4 (
    input wire [0:0] in_feedback_in_13,
    output wire [0:0] out_feedback_stall_out_13,
    input wire [0:0] in_feedback_valid_in_13,
    input wire [0:0] in_c0_exe101288_0,
    input wire [0:0] in_c0_exe119_0,
    input wire [0:0] in_c0_exe1210_0,
    input wire [63:0] in_c0_exe21201_0,
    input wire [31:0] in_c0_exe31212_0,
    input wire [0:0] in_c0_exe51233_0,
    input wire [0:0] in_c0_exe61244_0,
    input wire [0:0] in_c0_exe71255_0,
    input wire [63:0] in_c0_exe81266_0,
    input wire [0:0] in_c0_exe91277_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_c0_exe101288,
    output wire [0:0] out_c0_exe119,
    output wire [0:0] out_c0_exe1210,
    output wire [63:0] out_c0_exe21201,
    output wire [31:0] out_c0_exe31212,
    output wire [0:0] out_c0_exe51233,
    output wire [0:0] out_c0_exe61244,
    output wire [63:0] out_c0_exe81266,
    output wire [0:0] out_c0_exe91277,
    output wire [0:0] out_memdep_phi2_pop13,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] atax_B4_branch_out_c0_exe101288;
    wire [0:0] atax_B4_branch_out_c0_exe119;
    wire [0:0] atax_B4_branch_out_c0_exe1210;
    wire [63:0] atax_B4_branch_out_c0_exe21201;
    wire [31:0] atax_B4_branch_out_c0_exe31212;
    wire [0:0] atax_B4_branch_out_c0_exe51233;
    wire [0:0] atax_B4_branch_out_c0_exe61244;
    wire [63:0] atax_B4_branch_out_c0_exe81266;
    wire [0:0] atax_B4_branch_out_c0_exe91277;
    wire [0:0] atax_B4_branch_out_memdep_phi2_pop13;
    wire [0:0] atax_B4_branch_out_stall_out;
    wire [0:0] atax_B4_branch_out_valid_out_0;
    wire [0:0] atax_B4_merge_out_c0_exe101288;
    wire [0:0] atax_B4_merge_out_c0_exe119;
    wire [0:0] atax_B4_merge_out_c0_exe1210;
    wire [63:0] atax_B4_merge_out_c0_exe21201;
    wire [31:0] atax_B4_merge_out_c0_exe31212;
    wire [0:0] atax_B4_merge_out_c0_exe51233;
    wire [0:0] atax_B4_merge_out_c0_exe61244;
    wire [0:0] atax_B4_merge_out_c0_exe71255;
    wire [63:0] atax_B4_merge_out_c0_exe81266;
    wire [0:0] atax_B4_merge_out_c0_exe91277;
    wire [0:0] atax_B4_merge_out_stall_out_0;
    wire [0:0] atax_B4_merge_out_valid_out;
    wire [0:0] bb_atax_B4_stall_region_out_c0_exe101288;
    wire [0:0] bb_atax_B4_stall_region_out_c0_exe119;
    wire [0:0] bb_atax_B4_stall_region_out_c0_exe1210;
    wire [63:0] bb_atax_B4_stall_region_out_c0_exe21201;
    wire [31:0] bb_atax_B4_stall_region_out_c0_exe31212;
    wire [0:0] bb_atax_B4_stall_region_out_c0_exe51233;
    wire [0:0] bb_atax_B4_stall_region_out_c0_exe61244;
    wire [63:0] bb_atax_B4_stall_region_out_c0_exe81266;
    wire [0:0] bb_atax_B4_stall_region_out_c0_exe91277;
    wire [0:0] bb_atax_B4_stall_region_out_feedback_stall_out_13;
    wire [0:0] bb_atax_B4_stall_region_out_memdep_phi2_pop13;
    wire [0:0] bb_atax_B4_stall_region_out_stall_out;
    wire [0:0] bb_atax_B4_stall_region_out_valid_out;


    // atax_B4_branch(BLACKBOX,2)
    atax_B4_branch theatax_B4_branch (
        .in_c0_exe101288(bb_atax_B4_stall_region_out_c0_exe101288),
        .in_c0_exe119(bb_atax_B4_stall_region_out_c0_exe119),
        .in_c0_exe1210(bb_atax_B4_stall_region_out_c0_exe1210),
        .in_c0_exe21201(bb_atax_B4_stall_region_out_c0_exe21201),
        .in_c0_exe31212(bb_atax_B4_stall_region_out_c0_exe31212),
        .in_c0_exe51233(bb_atax_B4_stall_region_out_c0_exe51233),
        .in_c0_exe61244(bb_atax_B4_stall_region_out_c0_exe61244),
        .in_c0_exe81266(bb_atax_B4_stall_region_out_c0_exe81266),
        .in_c0_exe91277(bb_atax_B4_stall_region_out_c0_exe91277),
        .in_memdep_phi2_pop13(bb_atax_B4_stall_region_out_memdep_phi2_pop13),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_atax_B4_stall_region_out_valid_out),
        .out_c0_exe101288(atax_B4_branch_out_c0_exe101288),
        .out_c0_exe119(atax_B4_branch_out_c0_exe119),
        .out_c0_exe1210(atax_B4_branch_out_c0_exe1210),
        .out_c0_exe21201(atax_B4_branch_out_c0_exe21201),
        .out_c0_exe31212(atax_B4_branch_out_c0_exe31212),
        .out_c0_exe51233(atax_B4_branch_out_c0_exe51233),
        .out_c0_exe61244(atax_B4_branch_out_c0_exe61244),
        .out_c0_exe81266(atax_B4_branch_out_c0_exe81266),
        .out_c0_exe91277(atax_B4_branch_out_c0_exe91277),
        .out_memdep_phi2_pop13(atax_B4_branch_out_memdep_phi2_pop13),
        .out_stall_out(atax_B4_branch_out_stall_out),
        .out_valid_out_0(atax_B4_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // atax_B4_merge(BLACKBOX,3)
    atax_B4_merge theatax_B4_merge (
        .in_c0_exe101288_0(in_c0_exe101288_0),
        .in_c0_exe119_0(in_c0_exe119_0),
        .in_c0_exe1210_0(in_c0_exe1210_0),
        .in_c0_exe21201_0(in_c0_exe21201_0),
        .in_c0_exe31212_0(in_c0_exe31212_0),
        .in_c0_exe51233_0(in_c0_exe51233_0),
        .in_c0_exe61244_0(in_c0_exe61244_0),
        .in_c0_exe71255_0(in_c0_exe71255_0),
        .in_c0_exe81266_0(in_c0_exe81266_0),
        .in_c0_exe91277_0(in_c0_exe91277_0),
        .in_stall_in(bb_atax_B4_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe101288(atax_B4_merge_out_c0_exe101288),
        .out_c0_exe119(atax_B4_merge_out_c0_exe119),
        .out_c0_exe1210(atax_B4_merge_out_c0_exe1210),
        .out_c0_exe21201(atax_B4_merge_out_c0_exe21201),
        .out_c0_exe31212(atax_B4_merge_out_c0_exe31212),
        .out_c0_exe51233(atax_B4_merge_out_c0_exe51233),
        .out_c0_exe61244(atax_B4_merge_out_c0_exe61244),
        .out_c0_exe71255(atax_B4_merge_out_c0_exe71255),
        .out_c0_exe81266(atax_B4_merge_out_c0_exe81266),
        .out_c0_exe91277(atax_B4_merge_out_c0_exe91277),
        .out_stall_out_0(atax_B4_merge_out_stall_out_0),
        .out_valid_out(atax_B4_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B4_stall_region(BLACKBOX,4)
    atax_bb_B4_stall_region thebb_atax_B4_stall_region (
        .in_c0_exe101288(atax_B4_merge_out_c0_exe101288),
        .in_c0_exe119(atax_B4_merge_out_c0_exe119),
        .in_c0_exe1210(atax_B4_merge_out_c0_exe1210),
        .in_c0_exe21201(atax_B4_merge_out_c0_exe21201),
        .in_c0_exe31212(atax_B4_merge_out_c0_exe31212),
        .in_c0_exe51233(atax_B4_merge_out_c0_exe51233),
        .in_c0_exe61244(atax_B4_merge_out_c0_exe61244),
        .in_c0_exe71255(atax_B4_merge_out_c0_exe71255),
        .in_c0_exe81266(atax_B4_merge_out_c0_exe81266),
        .in_c0_exe91277(atax_B4_merge_out_c0_exe91277),
        .in_feedback_in_13(in_feedback_in_13),
        .in_feedback_valid_in_13(in_feedback_valid_in_13),
        .in_stall_in(atax_B4_branch_out_stall_out),
        .in_valid_in(atax_B4_merge_out_valid_out),
        .out_c0_exe101288(bb_atax_B4_stall_region_out_c0_exe101288),
        .out_c0_exe119(bb_atax_B4_stall_region_out_c0_exe119),
        .out_c0_exe1210(bb_atax_B4_stall_region_out_c0_exe1210),
        .out_c0_exe21201(bb_atax_B4_stall_region_out_c0_exe21201),
        .out_c0_exe31212(bb_atax_B4_stall_region_out_c0_exe31212),
        .out_c0_exe51233(bb_atax_B4_stall_region_out_c0_exe51233),
        .out_c0_exe61244(bb_atax_B4_stall_region_out_c0_exe61244),
        .out_c0_exe81266(bb_atax_B4_stall_region_out_c0_exe81266),
        .out_c0_exe91277(bb_atax_B4_stall_region_out_c0_exe91277),
        .out_feedback_stall_out_13(bb_atax_B4_stall_region_out_feedback_stall_out_13),
        .out_memdep_phi2_pop13(bb_atax_B4_stall_region_out_memdep_phi2_pop13),
        .out_stall_out(bb_atax_B4_stall_region_out_stall_out),
        .out_valid_out(bb_atax_B4_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_13_sync(GPOUT,6)
    assign out_feedback_stall_out_13 = bb_atax_B4_stall_region_out_feedback_stall_out_13;

    // out_c0_exe101288(GPOUT,20)
    assign out_c0_exe101288 = atax_B4_branch_out_c0_exe101288;

    // out_c0_exe119(GPOUT,21)
    assign out_c0_exe119 = atax_B4_branch_out_c0_exe119;

    // out_c0_exe1210(GPOUT,22)
    assign out_c0_exe1210 = atax_B4_branch_out_c0_exe1210;

    // out_c0_exe21201(GPOUT,23)
    assign out_c0_exe21201 = atax_B4_branch_out_c0_exe21201;

    // out_c0_exe31212(GPOUT,24)
    assign out_c0_exe31212 = atax_B4_branch_out_c0_exe31212;

    // out_c0_exe51233(GPOUT,25)
    assign out_c0_exe51233 = atax_B4_branch_out_c0_exe51233;

    // out_c0_exe61244(GPOUT,26)
    assign out_c0_exe61244 = atax_B4_branch_out_c0_exe61244;

    // out_c0_exe81266(GPOUT,27)
    assign out_c0_exe81266 = atax_B4_branch_out_c0_exe81266;

    // out_c0_exe91277(GPOUT,28)
    assign out_c0_exe91277 = atax_B4_branch_out_c0_exe91277;

    // out_memdep_phi2_pop13(GPOUT,29)
    assign out_memdep_phi2_pop13 = atax_B4_branch_out_memdep_phi2_pop13;

    // out_stall_out_0(GPOUT,30)
    assign out_stall_out_0 = atax_B4_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,31)
    assign out_valid_out_0 = atax_B4_branch_out_valid_out_0;

endmodule
