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

// SystemVerilog created from bb_triangular_B3
// Created for function/kernel triangular
// SystemVerilog created on Tue Jun 13 03:05:47 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module triangular_bb_B3 (
    input wire [0:0] in_feedback_in_13,
    output wire [0:0] out_feedback_stall_out_13,
    input wire [0:0] in_feedback_valid_in_13,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [31:0] in_intel_reserved_ffwd_1_0,
    input wire [0:0] in_intel_reserved_ffwd_2_0,
    input wire [63:0] in_intel_reserved_ffwd_3_0,
    input wire [31:0] in_intel_reserved_ffwd_4_0,
    input wire [32:0] in_intel_reserved_ffwd_5_0,
    input wire [31:0] in_lim_ext44_0,
    input wire [31:0] in_lim_ext44_1,
    input wire [31:0] in_reorder_limiter_enter47_0,
    input wire [31:0] in_reorder_limiter_enter47_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c0_exe11,
    output wire [31:0] out_c0_exe12,
    output wire [32:0] out_c0_exe168,
    output wire [31:0] out_c0_exe269,
    output wire [31:0] out_c0_exe3,
    output wire [0:0] out_c0_exe4,
    output wire [63:0] out_c0_exe5,
    output wire [0:0] out_c0_exe6,
    output wire [0:0] out_c0_exe7,
    output wire [31:0] out_c0_exe8,
    output wire [31:0] out_c0_exe9,
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

    wire [0:0] bb_triangular_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_triangular2_exiting_stall_out;
    wire [0:0] bb_triangular_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_triangular2_exiting_valid_out;
    wire [31:0] bb_triangular_B3_stall_region_out_c0_exe11;
    wire [31:0] bb_triangular_B3_stall_region_out_c0_exe12;
    wire [32:0] bb_triangular_B3_stall_region_out_c0_exe168;
    wire [31:0] bb_triangular_B3_stall_region_out_c0_exe269;
    wire [31:0] bb_triangular_B3_stall_region_out_c0_exe3;
    wire [0:0] bb_triangular_B3_stall_region_out_c0_exe4;
    wire [63:0] bb_triangular_B3_stall_region_out_c0_exe5;
    wire [0:0] bb_triangular_B3_stall_region_out_c0_exe6;
    wire [0:0] bb_triangular_B3_stall_region_out_c0_exe7;
    wire [31:0] bb_triangular_B3_stall_region_out_c0_exe8;
    wire [31:0] bb_triangular_B3_stall_region_out_c0_exe9;
    wire [0:0] bb_triangular_B3_stall_region_out_feedback_stall_out_13;
    wire [0:0] bb_triangular_B3_stall_region_out_memdep_phi4_pop13;
    wire [0:0] bb_triangular_B3_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_triangular_B3_stall_region_out_stall_out;
    wire [0:0] bb_triangular_B3_stall_region_out_valid_out;
    wire [31:0] triangular_B3_branch_out_c0_exe11;
    wire [31:0] triangular_B3_branch_out_c0_exe12;
    wire [32:0] triangular_B3_branch_out_c0_exe168;
    wire [31:0] triangular_B3_branch_out_c0_exe269;
    wire [31:0] triangular_B3_branch_out_c0_exe3;
    wire [0:0] triangular_B3_branch_out_c0_exe4;
    wire [63:0] triangular_B3_branch_out_c0_exe5;
    wire [0:0] triangular_B3_branch_out_c0_exe6;
    wire [0:0] triangular_B3_branch_out_c0_exe7;
    wire [31:0] triangular_B3_branch_out_c0_exe8;
    wire [31:0] triangular_B3_branch_out_c0_exe9;
    wire [0:0] triangular_B3_branch_out_memdep_phi4_pop13;
    wire [0:0] triangular_B3_branch_out_stall_out;
    wire [0:0] triangular_B3_branch_out_valid_out_0;
    wire [0:0] triangular_B3_merge_out_forked;
    wire [31:0] triangular_B3_merge_out_lim_ext44;
    wire [31:0] triangular_B3_merge_out_reorder_limiter_enter47;
    wire [0:0] triangular_B3_merge_out_stall_out_0;
    wire [0:0] triangular_B3_merge_out_stall_out_1;
    wire [0:0] triangular_B3_merge_out_valid_out;


    // triangular_B3_branch(BLACKBOX,41)
    triangular_B3_branch thetriangular_B3_branch (
        .in_c0_exe11(bb_triangular_B3_stall_region_out_c0_exe11),
        .in_c0_exe12(bb_triangular_B3_stall_region_out_c0_exe12),
        .in_c0_exe168(bb_triangular_B3_stall_region_out_c0_exe168),
        .in_c0_exe269(bb_triangular_B3_stall_region_out_c0_exe269),
        .in_c0_exe3(bb_triangular_B3_stall_region_out_c0_exe3),
        .in_c0_exe4(bb_triangular_B3_stall_region_out_c0_exe4),
        .in_c0_exe5(bb_triangular_B3_stall_region_out_c0_exe5),
        .in_c0_exe6(bb_triangular_B3_stall_region_out_c0_exe6),
        .in_c0_exe7(bb_triangular_B3_stall_region_out_c0_exe7),
        .in_c0_exe8(bb_triangular_B3_stall_region_out_c0_exe8),
        .in_c0_exe9(bb_triangular_B3_stall_region_out_c0_exe9),
        .in_memdep_phi4_pop13(bb_triangular_B3_stall_region_out_memdep_phi4_pop13),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_triangular_B3_stall_region_out_valid_out),
        .out_c0_exe11(triangular_B3_branch_out_c0_exe11),
        .out_c0_exe12(triangular_B3_branch_out_c0_exe12),
        .out_c0_exe168(triangular_B3_branch_out_c0_exe168),
        .out_c0_exe269(triangular_B3_branch_out_c0_exe269),
        .out_c0_exe3(triangular_B3_branch_out_c0_exe3),
        .out_c0_exe4(triangular_B3_branch_out_c0_exe4),
        .out_c0_exe5(triangular_B3_branch_out_c0_exe5),
        .out_c0_exe6(triangular_B3_branch_out_c0_exe6),
        .out_c0_exe7(triangular_B3_branch_out_c0_exe7),
        .out_c0_exe8(triangular_B3_branch_out_c0_exe8),
        .out_c0_exe9(triangular_B3_branch_out_c0_exe9),
        .out_memdep_phi4_pop13(triangular_B3_branch_out_memdep_phi4_pop13),
        .out_stall_out(triangular_B3_branch_out_stall_out),
        .out_valid_out_0(triangular_B3_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // triangular_B3_merge(BLACKBOX,42)
    triangular_B3_merge thetriangular_B3_merge (
        .in_forked_0(in_forked_0),
        .in_forked_1(in_forked_1),
        .in_lim_ext44_0(in_lim_ext44_0),
        .in_lim_ext44_1(in_lim_ext44_1),
        .in_reorder_limiter_enter47_0(in_reorder_limiter_enter47_0),
        .in_reorder_limiter_enter47_1(in_reorder_limiter_enter47_1),
        .in_stall_in(bb_triangular_B3_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked(triangular_B3_merge_out_forked),
        .out_lim_ext44(triangular_B3_merge_out_lim_ext44),
        .out_reorder_limiter_enter47(triangular_B3_merge_out_reorder_limiter_enter47),
        .out_stall_out_0(triangular_B3_merge_out_stall_out_0),
        .out_stall_out_1(triangular_B3_merge_out_stall_out_1),
        .out_valid_out(triangular_B3_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_triangular_B3_stall_region(BLACKBOX,2)
    triangular_bb_B3_stall_region thebb_triangular_B3_stall_region (
        .in_feedback_in_13(in_feedback_in_13),
        .in_feedback_valid_in_13(in_feedback_valid_in_13),
        .in_forked(triangular_B3_merge_out_forked),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_lim_ext44(triangular_B3_merge_out_lim_ext44),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_reorder_limiter_enter47(triangular_B3_merge_out_reorder_limiter_enter47),
        .in_stall_in(triangular_B3_branch_out_stall_out),
        .in_valid_in(triangular_B3_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_triangular2_exiting_stall_out(bb_triangular_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_triangular2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_triangular2_exiting_valid_out(bb_triangular_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_triangular2_exiting_valid_out),
        .out_c0_exe11(bb_triangular_B3_stall_region_out_c0_exe11),
        .out_c0_exe12(bb_triangular_B3_stall_region_out_c0_exe12),
        .out_c0_exe168(bb_triangular_B3_stall_region_out_c0_exe168),
        .out_c0_exe269(bb_triangular_B3_stall_region_out_c0_exe269),
        .out_c0_exe3(bb_triangular_B3_stall_region_out_c0_exe3),
        .out_c0_exe4(bb_triangular_B3_stall_region_out_c0_exe4),
        .out_c0_exe5(bb_triangular_B3_stall_region_out_c0_exe5),
        .out_c0_exe6(bb_triangular_B3_stall_region_out_c0_exe6),
        .out_c0_exe7(bb_triangular_B3_stall_region_out_c0_exe7),
        .out_c0_exe8(bb_triangular_B3_stall_region_out_c0_exe8),
        .out_c0_exe9(bb_triangular_B3_stall_region_out_c0_exe9),
        .out_feedback_stall_out_13(bb_triangular_B3_stall_region_out_feedback_stall_out_13),
        .out_memdep_phi4_pop13(bb_triangular_B3_stall_region_out_memdep_phi4_pop13),
        .out_pipeline_valid_out(bb_triangular_B3_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_triangular_B3_stall_region_out_stall_out),
        .out_valid_out(bb_triangular_B3_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_13_sync(GPOUT,4)
    assign out_feedback_stall_out_13 = bb_triangular_B3_stall_region_out_feedback_stall_out_13;

    // out_c0_exe11(GPOUT,20)
    assign out_c0_exe11 = triangular_B3_branch_out_c0_exe11;

    // out_c0_exe12(GPOUT,21)
    assign out_c0_exe12 = triangular_B3_branch_out_c0_exe12;

    // out_c0_exe168(GPOUT,22)
    assign out_c0_exe168 = triangular_B3_branch_out_c0_exe168;

    // out_c0_exe269(GPOUT,23)
    assign out_c0_exe269 = triangular_B3_branch_out_c0_exe269;

    // out_c0_exe3(GPOUT,24)
    assign out_c0_exe3 = triangular_B3_branch_out_c0_exe3;

    // out_c0_exe4(GPOUT,25)
    assign out_c0_exe4 = triangular_B3_branch_out_c0_exe4;

    // out_c0_exe5(GPOUT,26)
    assign out_c0_exe5 = triangular_B3_branch_out_c0_exe5;

    // out_c0_exe6(GPOUT,27)
    assign out_c0_exe6 = triangular_B3_branch_out_c0_exe6;

    // out_c0_exe7(GPOUT,28)
    assign out_c0_exe7 = triangular_B3_branch_out_c0_exe7;

    // out_c0_exe8(GPOUT,29)
    assign out_c0_exe8 = triangular_B3_branch_out_c0_exe8;

    // out_c0_exe9(GPOUT,30)
    assign out_c0_exe9 = triangular_B3_branch_out_c0_exe9;

    // out_exiting_stall_out(GPOUT,31)
    assign out_exiting_stall_out = bb_triangular_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_triangular2_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,32)
    assign out_exiting_valid_out = bb_triangular_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_triangular2_exiting_valid_out;

    // out_memdep_phi4_pop13(GPOUT,33)
    assign out_memdep_phi4_pop13 = triangular_B3_branch_out_memdep_phi4_pop13;

    // out_stall_out_0(GPOUT,34)
    assign out_stall_out_0 = triangular_B3_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,35)
    assign out_stall_out_1 = triangular_B3_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,36)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,37)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,38)
    assign out_valid_out_0 = triangular_B3_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,40)
    assign out_pipeline_valid_out = bb_triangular_B3_stall_region_out_pipeline_valid_out;

endmodule
