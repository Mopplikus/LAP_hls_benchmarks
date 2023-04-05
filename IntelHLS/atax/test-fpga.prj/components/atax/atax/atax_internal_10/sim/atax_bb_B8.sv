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

// SystemVerilog created from bb_atax_B8
// Created for function/kernel atax
// SystemVerilog created on Wed Apr  5 13:56:00 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_bb_B8 (
    input wire [0:0] in_feedback_in_20,
    output wire [0:0] out_feedback_stall_out_20,
    input wire [0:0] in_feedback_valid_in_20,
    input wire [63:0] in_c0_exe21793_0,
    input wire [31:0] in_c0_exe31804_0,
    input wire [0:0] in_c0_exe51825_0,
    input wire [63:0] in_c0_exe61836_0,
    input wire [0:0] in_c0_exe71847_0,
    input wire [0:0] in_c0_exe88_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    output wire [63:0] out_c0_exe21793,
    output wire [31:0] out_c0_exe31804,
    output wire [63:0] out_c0_exe61836,
    output wire [0:0] out_c0_exe71847,
    output wire [0:0] out_c0_exe88,
    output wire [0:0] out_memdep_phi_pop20,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [63:0] atax_B8_branch_out_c0_exe21793;
    wire [31:0] atax_B8_branch_out_c0_exe31804;
    wire [63:0] atax_B8_branch_out_c0_exe61836;
    wire [0:0] atax_B8_branch_out_c0_exe71847;
    wire [0:0] atax_B8_branch_out_c0_exe88;
    wire [0:0] atax_B8_branch_out_memdep_phi_pop20;
    wire [0:0] atax_B8_branch_out_stall_out;
    wire [0:0] atax_B8_branch_out_valid_out_0;
    wire [63:0] atax_B8_merge_out_c0_exe21793;
    wire [31:0] atax_B8_merge_out_c0_exe31804;
    wire [0:0] atax_B8_merge_out_c0_exe51825;
    wire [63:0] atax_B8_merge_out_c0_exe61836;
    wire [0:0] atax_B8_merge_out_c0_exe71847;
    wire [0:0] atax_B8_merge_out_c0_exe88;
    wire [0:0] atax_B8_merge_out_stall_out_0;
    wire [0:0] atax_B8_merge_out_valid_out;
    wire [63:0] bb_atax_B8_stall_region_out_c0_exe21793;
    wire [31:0] bb_atax_B8_stall_region_out_c0_exe31804;
    wire [63:0] bb_atax_B8_stall_region_out_c0_exe61836;
    wire [0:0] bb_atax_B8_stall_region_out_c0_exe71847;
    wire [0:0] bb_atax_B8_stall_region_out_c0_exe88;
    wire [0:0] bb_atax_B8_stall_region_out_feedback_stall_out_20;
    wire [0:0] bb_atax_B8_stall_region_out_memdep_phi_pop20;
    wire [0:0] bb_atax_B8_stall_region_out_stall_out;
    wire [0:0] bb_atax_B8_stall_region_out_valid_out;


    // atax_B8_branch(BLACKBOX,2)
    atax_B8_branch theatax_B8_branch (
        .in_c0_exe21793(bb_atax_B8_stall_region_out_c0_exe21793),
        .in_c0_exe31804(bb_atax_B8_stall_region_out_c0_exe31804),
        .in_c0_exe61836(bb_atax_B8_stall_region_out_c0_exe61836),
        .in_c0_exe71847(bb_atax_B8_stall_region_out_c0_exe71847),
        .in_c0_exe88(bb_atax_B8_stall_region_out_c0_exe88),
        .in_memdep_phi_pop20(bb_atax_B8_stall_region_out_memdep_phi_pop20),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_atax_B8_stall_region_out_valid_out),
        .out_c0_exe21793(atax_B8_branch_out_c0_exe21793),
        .out_c0_exe31804(atax_B8_branch_out_c0_exe31804),
        .out_c0_exe61836(atax_B8_branch_out_c0_exe61836),
        .out_c0_exe71847(atax_B8_branch_out_c0_exe71847),
        .out_c0_exe88(atax_B8_branch_out_c0_exe88),
        .out_memdep_phi_pop20(atax_B8_branch_out_memdep_phi_pop20),
        .out_stall_out(atax_B8_branch_out_stall_out),
        .out_valid_out_0(atax_B8_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // atax_B8_merge(BLACKBOX,3)
    atax_B8_merge theatax_B8_merge (
        .in_c0_exe21793_0(in_c0_exe21793_0),
        .in_c0_exe31804_0(in_c0_exe31804_0),
        .in_c0_exe51825_0(in_c0_exe51825_0),
        .in_c0_exe61836_0(in_c0_exe61836_0),
        .in_c0_exe71847_0(in_c0_exe71847_0),
        .in_c0_exe88_0(in_c0_exe88_0),
        .in_stall_in(bb_atax_B8_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe21793(atax_B8_merge_out_c0_exe21793),
        .out_c0_exe31804(atax_B8_merge_out_c0_exe31804),
        .out_c0_exe51825(atax_B8_merge_out_c0_exe51825),
        .out_c0_exe61836(atax_B8_merge_out_c0_exe61836),
        .out_c0_exe71847(atax_B8_merge_out_c0_exe71847),
        .out_c0_exe88(atax_B8_merge_out_c0_exe88),
        .out_stall_out_0(atax_B8_merge_out_stall_out_0),
        .out_valid_out(atax_B8_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B8_stall_region(BLACKBOX,4)
    atax_bb_B8_stall_region thebb_atax_B8_stall_region (
        .in_c0_exe21793(atax_B8_merge_out_c0_exe21793),
        .in_c0_exe31804(atax_B8_merge_out_c0_exe31804),
        .in_c0_exe51825(atax_B8_merge_out_c0_exe51825),
        .in_c0_exe61836(atax_B8_merge_out_c0_exe61836),
        .in_c0_exe71847(atax_B8_merge_out_c0_exe71847),
        .in_c0_exe88(atax_B8_merge_out_c0_exe88),
        .in_feedback_in_20(in_feedback_in_20),
        .in_feedback_valid_in_20(in_feedback_valid_in_20),
        .in_stall_in(atax_B8_branch_out_stall_out),
        .in_valid_in(atax_B8_merge_out_valid_out),
        .out_c0_exe21793(bb_atax_B8_stall_region_out_c0_exe21793),
        .out_c0_exe31804(bb_atax_B8_stall_region_out_c0_exe31804),
        .out_c0_exe61836(bb_atax_B8_stall_region_out_c0_exe61836),
        .out_c0_exe71847(bb_atax_B8_stall_region_out_c0_exe71847),
        .out_c0_exe88(bb_atax_B8_stall_region_out_c0_exe88),
        .out_feedback_stall_out_20(bb_atax_B8_stall_region_out_feedback_stall_out_20),
        .out_memdep_phi_pop20(bb_atax_B8_stall_region_out_memdep_phi_pop20),
        .out_stall_out(bb_atax_B8_stall_region_out_stall_out),
        .out_valid_out(bb_atax_B8_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_20_sync(GPOUT,6)
    assign out_feedback_stall_out_20 = bb_atax_B8_stall_region_out_feedback_stall_out_20;

    // out_c0_exe21793(GPOUT,16)
    assign out_c0_exe21793 = atax_B8_branch_out_c0_exe21793;

    // out_c0_exe31804(GPOUT,17)
    assign out_c0_exe31804 = atax_B8_branch_out_c0_exe31804;

    // out_c0_exe61836(GPOUT,18)
    assign out_c0_exe61836 = atax_B8_branch_out_c0_exe61836;

    // out_c0_exe71847(GPOUT,19)
    assign out_c0_exe71847 = atax_B8_branch_out_c0_exe71847;

    // out_c0_exe88(GPOUT,20)
    assign out_c0_exe88 = atax_B8_branch_out_c0_exe88;

    // out_memdep_phi_pop20(GPOUT,21)
    assign out_memdep_phi_pop20 = atax_B8_branch_out_memdep_phi_pop20;

    // out_stall_out_0(GPOUT,22)
    assign out_stall_out_0 = atax_B8_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,23)
    assign out_valid_out_0 = atax_B8_branch_out_valid_out_0;

endmodule
