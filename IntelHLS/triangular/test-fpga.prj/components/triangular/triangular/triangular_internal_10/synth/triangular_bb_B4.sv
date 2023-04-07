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

// SystemVerilog created from bb_triangular_B4
// Created for function/kernel triangular
// SystemVerilog created on Fri Apr  7 16:28:14 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module triangular_bb_B4 (
    input wire [0:0] in_feedback_in_13,
    output wire [0:0] out_feedback_stall_out_13,
    input wire [0:0] in_feedback_valid_in_13,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [31:0] in_intel_reserved_ffwd_0_0,
    input wire [0:0] in_intel_reserved_ffwd_1_0,
    input wire [31:0] in_intel_reserved_ffwd_2_0,
    input wire [32:0] in_intel_reserved_ffwd_3_0,
    input wire [31:0] in_lim_ext35_0,
    input wire [31:0] in_lim_ext35_1,
    input wire [31:0] in_reorder_limiter_enter38_0,
    input wire [31:0] in_reorder_limiter_enter38_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c0_exe10,
    output wire [31:0] out_c0_exe11,
    output wire [32:0] out_c0_exe158,
    output wire [31:0] out_c0_exe259,
    output wire [31:0] out_c0_exe3,
    output wire [0:0] out_c0_exe4,
    output wire [0:0] out_c0_exe5,
    output wire [0:0] out_c0_exe6,
    output wire [31:0] out_c0_exe7,
    output wire [31:0] out_c0_exe8,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_memdep_phi4_pop13,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_triangular_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_triangular2_exiting_stall_out;
    wire [0:0] bb_triangular_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_triangular2_exiting_valid_out;
    wire [31:0] bb_triangular_B4_stall_region_out_c0_exe10;
    wire [31:0] bb_triangular_B4_stall_region_out_c0_exe11;
    wire [32:0] bb_triangular_B4_stall_region_out_c0_exe158;
    wire [31:0] bb_triangular_B4_stall_region_out_c0_exe259;
    wire [31:0] bb_triangular_B4_stall_region_out_c0_exe3;
    wire [0:0] bb_triangular_B4_stall_region_out_c0_exe4;
    wire [0:0] bb_triangular_B4_stall_region_out_c0_exe5;
    wire [0:0] bb_triangular_B4_stall_region_out_c0_exe6;
    wire [31:0] bb_triangular_B4_stall_region_out_c0_exe7;
    wire [31:0] bb_triangular_B4_stall_region_out_c0_exe8;
    wire [0:0] bb_triangular_B4_stall_region_out_feedback_stall_out_13;
    wire [0:0] bb_triangular_B4_stall_region_out_memdep_phi4_pop13;
    wire [0:0] bb_triangular_B4_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_triangular_B4_stall_region_out_stall_out;
    wire [0:0] bb_triangular_B4_stall_region_out_valid_out;
    wire [31:0] triangular_B4_branch_out_c0_exe10;
    wire [31:0] triangular_B4_branch_out_c0_exe11;
    wire [32:0] triangular_B4_branch_out_c0_exe158;
    wire [31:0] triangular_B4_branch_out_c0_exe259;
    wire [31:0] triangular_B4_branch_out_c0_exe3;
    wire [0:0] triangular_B4_branch_out_c0_exe4;
    wire [0:0] triangular_B4_branch_out_c0_exe5;
    wire [0:0] triangular_B4_branch_out_c0_exe6;
    wire [31:0] triangular_B4_branch_out_c0_exe7;
    wire [31:0] triangular_B4_branch_out_c0_exe8;
    wire [0:0] triangular_B4_branch_out_memdep_phi4_pop13;
    wire [0:0] triangular_B4_branch_out_stall_out;
    wire [0:0] triangular_B4_branch_out_valid_out_0;
    wire [0:0] triangular_B4_merge_out_forked;
    wire [31:0] triangular_B4_merge_out_lim_ext35;
    wire [31:0] triangular_B4_merge_out_reorder_limiter_enter38;
    wire [0:0] triangular_B4_merge_out_stall_out_0;
    wire [0:0] triangular_B4_merge_out_stall_out_1;
    wire [0:0] triangular_B4_merge_out_valid_out;


    // triangular_B4_branch(BLACKBOX,39)
    triangular_B4_branch thetriangular_B4_branch (
        .in_c0_exe10(bb_triangular_B4_stall_region_out_c0_exe10),
        .in_c0_exe11(bb_triangular_B4_stall_region_out_c0_exe11),
        .in_c0_exe158(bb_triangular_B4_stall_region_out_c0_exe158),
        .in_c0_exe259(bb_triangular_B4_stall_region_out_c0_exe259),
        .in_c0_exe3(bb_triangular_B4_stall_region_out_c0_exe3),
        .in_c0_exe4(bb_triangular_B4_stall_region_out_c0_exe4),
        .in_c0_exe5(bb_triangular_B4_stall_region_out_c0_exe5),
        .in_c0_exe6(bb_triangular_B4_stall_region_out_c0_exe6),
        .in_c0_exe7(bb_triangular_B4_stall_region_out_c0_exe7),
        .in_c0_exe8(bb_triangular_B4_stall_region_out_c0_exe8),
        .in_memdep_phi4_pop13(bb_triangular_B4_stall_region_out_memdep_phi4_pop13),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_triangular_B4_stall_region_out_valid_out),
        .out_c0_exe10(triangular_B4_branch_out_c0_exe10),
        .out_c0_exe11(triangular_B4_branch_out_c0_exe11),
        .out_c0_exe158(triangular_B4_branch_out_c0_exe158),
        .out_c0_exe259(triangular_B4_branch_out_c0_exe259),
        .out_c0_exe3(triangular_B4_branch_out_c0_exe3),
        .out_c0_exe4(triangular_B4_branch_out_c0_exe4),
        .out_c0_exe5(triangular_B4_branch_out_c0_exe5),
        .out_c0_exe6(triangular_B4_branch_out_c0_exe6),
        .out_c0_exe7(triangular_B4_branch_out_c0_exe7),
        .out_c0_exe8(triangular_B4_branch_out_c0_exe8),
        .out_memdep_phi4_pop13(triangular_B4_branch_out_memdep_phi4_pop13),
        .out_stall_out(triangular_B4_branch_out_stall_out),
        .out_valid_out_0(triangular_B4_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // triangular_B4_merge(BLACKBOX,40)
    triangular_B4_merge thetriangular_B4_merge (
        .in_forked_0(in_forked_0),
        .in_forked_1(in_forked_1),
        .in_lim_ext35_0(in_lim_ext35_0),
        .in_lim_ext35_1(in_lim_ext35_1),
        .in_reorder_limiter_enter38_0(in_reorder_limiter_enter38_0),
        .in_reorder_limiter_enter38_1(in_reorder_limiter_enter38_1),
        .in_stall_in(bb_triangular_B4_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked(triangular_B4_merge_out_forked),
        .out_lim_ext35(triangular_B4_merge_out_lim_ext35),
        .out_reorder_limiter_enter38(triangular_B4_merge_out_reorder_limiter_enter38),
        .out_stall_out_0(triangular_B4_merge_out_stall_out_0),
        .out_stall_out_1(triangular_B4_merge_out_stall_out_1),
        .out_valid_out(triangular_B4_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_triangular_B4_stall_region(BLACKBOX,2)
    triangular_bb_B4_stall_region thebb_triangular_B4_stall_region (
        .in_feedback_in_13(in_feedback_in_13),
        .in_feedback_valid_in_13(in_feedback_valid_in_13),
        .in_forked(triangular_B4_merge_out_forked),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_lim_ext35(triangular_B4_merge_out_lim_ext35),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_reorder_limiter_enter38(triangular_B4_merge_out_reorder_limiter_enter38),
        .in_stall_in(triangular_B4_branch_out_stall_out),
        .in_valid_in(triangular_B4_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_triangular2_exiting_stall_out(bb_triangular_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_triangular2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_triangular2_exiting_valid_out(bb_triangular_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_triangular2_exiting_valid_out),
        .out_c0_exe10(bb_triangular_B4_stall_region_out_c0_exe10),
        .out_c0_exe11(bb_triangular_B4_stall_region_out_c0_exe11),
        .out_c0_exe158(bb_triangular_B4_stall_region_out_c0_exe158),
        .out_c0_exe259(bb_triangular_B4_stall_region_out_c0_exe259),
        .out_c0_exe3(bb_triangular_B4_stall_region_out_c0_exe3),
        .out_c0_exe4(bb_triangular_B4_stall_region_out_c0_exe4),
        .out_c0_exe5(bb_triangular_B4_stall_region_out_c0_exe5),
        .out_c0_exe6(bb_triangular_B4_stall_region_out_c0_exe6),
        .out_c0_exe7(bb_triangular_B4_stall_region_out_c0_exe7),
        .out_c0_exe8(bb_triangular_B4_stall_region_out_c0_exe8),
        .out_feedback_stall_out_13(bb_triangular_B4_stall_region_out_feedback_stall_out_13),
        .out_memdep_phi4_pop13(bb_triangular_B4_stall_region_out_memdep_phi4_pop13),
        .out_pipeline_valid_out(bb_triangular_B4_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_triangular_B4_stall_region_out_stall_out),
        .out_valid_out(bb_triangular_B4_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_13_sync(GPOUT,4)
    assign out_feedback_stall_out_13 = bb_triangular_B4_stall_region_out_feedback_stall_out_13;

    // out_c0_exe10(GPOUT,19)
    assign out_c0_exe10 = triangular_B4_branch_out_c0_exe10;

    // out_c0_exe11(GPOUT,20)
    assign out_c0_exe11 = triangular_B4_branch_out_c0_exe11;

    // out_c0_exe158(GPOUT,21)
    assign out_c0_exe158 = triangular_B4_branch_out_c0_exe158;

    // out_c0_exe259(GPOUT,22)
    assign out_c0_exe259 = triangular_B4_branch_out_c0_exe259;

    // out_c0_exe3(GPOUT,23)
    assign out_c0_exe3 = triangular_B4_branch_out_c0_exe3;

    // out_c0_exe4(GPOUT,24)
    assign out_c0_exe4 = triangular_B4_branch_out_c0_exe4;

    // out_c0_exe5(GPOUT,25)
    assign out_c0_exe5 = triangular_B4_branch_out_c0_exe5;

    // out_c0_exe6(GPOUT,26)
    assign out_c0_exe6 = triangular_B4_branch_out_c0_exe6;

    // out_c0_exe7(GPOUT,27)
    assign out_c0_exe7 = triangular_B4_branch_out_c0_exe7;

    // out_c0_exe8(GPOUT,28)
    assign out_c0_exe8 = triangular_B4_branch_out_c0_exe8;

    // out_exiting_stall_out(GPOUT,29)
    assign out_exiting_stall_out = bb_triangular_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_triangular2_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,30)
    assign out_exiting_valid_out = bb_triangular_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_triangular2_exiting_valid_out;

    // out_memdep_phi4_pop13(GPOUT,31)
    assign out_memdep_phi4_pop13 = triangular_B4_branch_out_memdep_phi4_pop13;

    // out_stall_out_0(GPOUT,32)
    assign out_stall_out_0 = triangular_B4_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,33)
    assign out_stall_out_1 = triangular_B4_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,34)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,35)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,36)
    assign out_valid_out_0 = triangular_B4_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,38)
    assign out_pipeline_valid_out = bb_triangular_B4_stall_region_out_pipeline_valid_out;

endmodule
