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

// SystemVerilog created from bb_gaussian_B5
// Created for function/kernel gaussian
// SystemVerilog created on Wed Mar 29 19:22:58 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module gaussian_bb_B5 (
    input wire [0:0] in_feedback_in_10,
    output wire [0:0] out_feedback_stall_out_10,
    input wire [0:0] in_feedback_valid_in_10,
    input wire [31:0] in_add44_0,
    input wire [31:0] in_add44_1,
    input wire [0:0] in_forked21_0,
    input wire [0:0] in_forked21_1,
    input wire [32:0] in_intel_reserved_ffwd_7_0,
    input wire [31:0] in_intel_reserved_ffwd_8_0,
    input wire [0:0] in_intel_reserved_ffwd_9_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c0_exe159,
    output wire [0:0] out_c0_exe2,
    output wire [0:0] out_c0_exe3,
    output wire [31:0] out_c0_exe4,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_memdep_phi_pop10,
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

    wire [0:0] bb_gaussian_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going32_gaussian2_exiting_stall_out;
    wire [0:0] bb_gaussian_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going32_gaussian2_exiting_valid_out;
    wire [31:0] bb_gaussian_B5_stall_region_out_c0_exe159;
    wire [0:0] bb_gaussian_B5_stall_region_out_c0_exe2;
    wire [0:0] bb_gaussian_B5_stall_region_out_c0_exe3;
    wire [31:0] bb_gaussian_B5_stall_region_out_c0_exe4;
    wire [0:0] bb_gaussian_B5_stall_region_out_feedback_stall_out_10;
    wire [0:0] bb_gaussian_B5_stall_region_out_memdep_phi_pop10;
    wire [0:0] bb_gaussian_B5_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_gaussian_B5_stall_region_out_stall_out;
    wire [0:0] bb_gaussian_B5_stall_region_out_valid_out;
    wire [31:0] gaussian_B5_branch_out_c0_exe159;
    wire [0:0] gaussian_B5_branch_out_c0_exe2;
    wire [0:0] gaussian_B5_branch_out_c0_exe3;
    wire [31:0] gaussian_B5_branch_out_c0_exe4;
    wire [0:0] gaussian_B5_branch_out_memdep_phi_pop10;
    wire [0:0] gaussian_B5_branch_out_stall_out;
    wire [0:0] gaussian_B5_branch_out_valid_out_0;
    wire [31:0] gaussian_B5_merge_out_add44;
    wire [0:0] gaussian_B5_merge_out_forked21;
    wire [0:0] gaussian_B5_merge_out_stall_out_0;
    wire [0:0] gaussian_B5_merge_out_stall_out_1;
    wire [0:0] gaussian_B5_merge_out_valid_out;


    // gaussian_B5_branch(BLACKBOX,6)
    gaussian_B5_branch thegaussian_B5_branch (
        .in_c0_exe159(bb_gaussian_B5_stall_region_out_c0_exe159),
        .in_c0_exe2(bb_gaussian_B5_stall_region_out_c0_exe2),
        .in_c0_exe3(bb_gaussian_B5_stall_region_out_c0_exe3),
        .in_c0_exe4(bb_gaussian_B5_stall_region_out_c0_exe4),
        .in_memdep_phi_pop10(bb_gaussian_B5_stall_region_out_memdep_phi_pop10),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_gaussian_B5_stall_region_out_valid_out),
        .out_c0_exe159(gaussian_B5_branch_out_c0_exe159),
        .out_c0_exe2(gaussian_B5_branch_out_c0_exe2),
        .out_c0_exe3(gaussian_B5_branch_out_c0_exe3),
        .out_c0_exe4(gaussian_B5_branch_out_c0_exe4),
        .out_memdep_phi_pop10(gaussian_B5_branch_out_memdep_phi_pop10),
        .out_stall_out(gaussian_B5_branch_out_stall_out),
        .out_valid_out_0(gaussian_B5_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // gaussian_B5_merge(BLACKBOX,7)
    gaussian_B5_merge thegaussian_B5_merge (
        .in_add44_0(in_add44_0),
        .in_add44_1(in_add44_1),
        .in_forked21_0(in_forked21_0),
        .in_forked21_1(in_forked21_1),
        .in_stall_in(bb_gaussian_B5_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_add44(gaussian_B5_merge_out_add44),
        .out_forked21(gaussian_B5_merge_out_forked21),
        .out_stall_out_0(gaussian_B5_merge_out_stall_out_0),
        .out_stall_out_1(gaussian_B5_merge_out_stall_out_1),
        .out_valid_out(gaussian_B5_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B5_stall_region(BLACKBOX,2)
    gaussian_bb_B5_stall_region thebb_gaussian_B5_stall_region (
        .in_add44(gaussian_B5_merge_out_add44),
        .in_feedback_in_10(in_feedback_in_10),
        .in_feedback_valid_in_10(in_feedback_valid_in_10),
        .in_forked21(gaussian_B5_merge_out_forked21),
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_intel_reserved_ffwd_9_0(in_intel_reserved_ffwd_9_0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(gaussian_B5_branch_out_stall_out),
        .in_valid_in(gaussian_B5_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going32_gaussian2_exiting_stall_out(bb_gaussian_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going32_gaussian2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going32_gaussian2_exiting_valid_out(bb_gaussian_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going32_gaussian2_exiting_valid_out),
        .out_c0_exe159(bb_gaussian_B5_stall_region_out_c0_exe159),
        .out_c0_exe2(bb_gaussian_B5_stall_region_out_c0_exe2),
        .out_c0_exe3(bb_gaussian_B5_stall_region_out_c0_exe3),
        .out_c0_exe4(bb_gaussian_B5_stall_region_out_c0_exe4),
        .out_feedback_stall_out_10(bb_gaussian_B5_stall_region_out_feedback_stall_out_10),
        .out_memdep_phi_pop10(bb_gaussian_B5_stall_region_out_memdep_phi_pop10),
        .out_pipeline_valid_out(bb_gaussian_B5_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_gaussian_B5_stall_region_out_stall_out),
        .out_valid_out(bb_gaussian_B5_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_10_sync(GPOUT,4)
    assign out_feedback_stall_out_10 = bb_gaussian_B5_stall_region_out_feedback_stall_out_10;

    // out_c0_exe159(GPOUT,18)
    assign out_c0_exe159 = gaussian_B5_branch_out_c0_exe159;

    // out_c0_exe2(GPOUT,19)
    assign out_c0_exe2 = gaussian_B5_branch_out_c0_exe2;

    // out_c0_exe3(GPOUT,20)
    assign out_c0_exe3 = gaussian_B5_branch_out_c0_exe3;

    // out_c0_exe4(GPOUT,21)
    assign out_c0_exe4 = gaussian_B5_branch_out_c0_exe4;

    // out_exiting_stall_out(GPOUT,22)
    assign out_exiting_stall_out = bb_gaussian_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going32_gaussian2_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,23)
    assign out_exiting_valid_out = bb_gaussian_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going32_gaussian2_exiting_valid_out;

    // out_memdep_phi_pop10(GPOUT,24)
    assign out_memdep_phi_pop10 = gaussian_B5_branch_out_memdep_phi_pop10;

    // out_stall_out_0(GPOUT,25)
    assign out_stall_out_0 = gaussian_B5_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,26)
    assign out_stall_out_1 = gaussian_B5_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,27)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,28)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,29)
    assign out_valid_out_0 = gaussian_B5_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,31)
    assign out_pipeline_valid_out = bb_gaussian_B5_stall_region_out_pipeline_valid_out;

endmodule
