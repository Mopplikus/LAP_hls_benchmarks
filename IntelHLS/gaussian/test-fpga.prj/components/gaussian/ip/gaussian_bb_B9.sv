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

// SystemVerilog created from bb_gaussian_B9
// Created for function/kernel gaussian
// SystemVerilog created on Tue Apr  4 21:38:49 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module gaussian_bb_B9 (
    input wire [0:0] in_feedback_in_28,
    output wire [0:0] out_feedback_stall_out_28,
    input wire [0:0] in_feedback_valid_in_28,
    input wire [31:0] in_add106_0,
    input wire [31:0] in_add106_1,
    input wire [0:0] in_forked32_0,
    input wire [0:0] in_forked32_1,
    input wire [32:0] in_intel_reserved_ffwd_6_0,
    input wire [31:0] in_intel_reserved_ffwd_7_0,
    input wire [0:0] in_intel_reserved_ffwd_8_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c0_exe1144,
    output wire [0:0] out_c0_exe2145,
    output wire [0:0] out_c0_exe3146,
    output wire [31:0] out_c0_exe4,
    output wire [31:0] out_c0_exe6,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_memdep_phi_pop28,
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

    wire [0:0] bb_gaussian_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going64_gaussian2_exiting_stall_out;
    wire [0:0] bb_gaussian_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going64_gaussian2_exiting_valid_out;
    wire [31:0] bb_gaussian_B9_stall_region_out_c0_exe1144;
    wire [0:0] bb_gaussian_B9_stall_region_out_c0_exe2145;
    wire [0:0] bb_gaussian_B9_stall_region_out_c0_exe3146;
    wire [31:0] bb_gaussian_B9_stall_region_out_c0_exe4;
    wire [31:0] bb_gaussian_B9_stall_region_out_c0_exe6;
    wire [0:0] bb_gaussian_B9_stall_region_out_feedback_stall_out_28;
    wire [0:0] bb_gaussian_B9_stall_region_out_memdep_phi_pop28;
    wire [0:0] bb_gaussian_B9_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_gaussian_B9_stall_region_out_stall_out;
    wire [0:0] bb_gaussian_B9_stall_region_out_valid_out;
    wire [31:0] gaussian_B9_branch_out_c0_exe1144;
    wire [0:0] gaussian_B9_branch_out_c0_exe2145;
    wire [0:0] gaussian_B9_branch_out_c0_exe3146;
    wire [31:0] gaussian_B9_branch_out_c0_exe4;
    wire [31:0] gaussian_B9_branch_out_c0_exe6;
    wire [0:0] gaussian_B9_branch_out_memdep_phi_pop28;
    wire [0:0] gaussian_B9_branch_out_stall_out;
    wire [0:0] gaussian_B9_branch_out_valid_out_0;
    wire [31:0] gaussian_B9_merge_out_add106;
    wire [0:0] gaussian_B9_merge_out_forked32;
    wire [0:0] gaussian_B9_merge_out_stall_out_0;
    wire [0:0] gaussian_B9_merge_out_stall_out_1;
    wire [0:0] gaussian_B9_merge_out_valid_out;


    // gaussian_B9_branch(BLACKBOX,6)
    gaussian_B9_branch thegaussian_B9_branch (
        .in_c0_exe1144(bb_gaussian_B9_stall_region_out_c0_exe1144),
        .in_c0_exe2145(bb_gaussian_B9_stall_region_out_c0_exe2145),
        .in_c0_exe3146(bb_gaussian_B9_stall_region_out_c0_exe3146),
        .in_c0_exe4(bb_gaussian_B9_stall_region_out_c0_exe4),
        .in_c0_exe6(bb_gaussian_B9_stall_region_out_c0_exe6),
        .in_memdep_phi_pop28(bb_gaussian_B9_stall_region_out_memdep_phi_pop28),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_gaussian_B9_stall_region_out_valid_out),
        .out_c0_exe1144(gaussian_B9_branch_out_c0_exe1144),
        .out_c0_exe2145(gaussian_B9_branch_out_c0_exe2145),
        .out_c0_exe3146(gaussian_B9_branch_out_c0_exe3146),
        .out_c0_exe4(gaussian_B9_branch_out_c0_exe4),
        .out_c0_exe6(gaussian_B9_branch_out_c0_exe6),
        .out_memdep_phi_pop28(gaussian_B9_branch_out_memdep_phi_pop28),
        .out_stall_out(gaussian_B9_branch_out_stall_out),
        .out_valid_out_0(gaussian_B9_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // gaussian_B9_merge(BLACKBOX,7)
    gaussian_B9_merge thegaussian_B9_merge (
        .in_add106_0(in_add106_0),
        .in_add106_1(in_add106_1),
        .in_forked32_0(in_forked32_0),
        .in_forked32_1(in_forked32_1),
        .in_stall_in(bb_gaussian_B9_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_add106(gaussian_B9_merge_out_add106),
        .out_forked32(gaussian_B9_merge_out_forked32),
        .out_stall_out_0(gaussian_B9_merge_out_stall_out_0),
        .out_stall_out_1(gaussian_B9_merge_out_stall_out_1),
        .out_valid_out(gaussian_B9_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B9_stall_region(BLACKBOX,2)
    gaussian_bb_B9_stall_region thebb_gaussian_B9_stall_region (
        .in_add106(gaussian_B9_merge_out_add106),
        .in_feedback_in_28(in_feedback_in_28),
        .in_feedback_valid_in_28(in_feedback_valid_in_28),
        .in_forked32(gaussian_B9_merge_out_forked32),
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(gaussian_B9_branch_out_stall_out),
        .in_valid_in(gaussian_B9_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going64_gaussian2_exiting_stall_out(bb_gaussian_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going64_gaussian2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going64_gaussian2_exiting_valid_out(bb_gaussian_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going64_gaussian2_exiting_valid_out),
        .out_c0_exe1144(bb_gaussian_B9_stall_region_out_c0_exe1144),
        .out_c0_exe2145(bb_gaussian_B9_stall_region_out_c0_exe2145),
        .out_c0_exe3146(bb_gaussian_B9_stall_region_out_c0_exe3146),
        .out_c0_exe4(bb_gaussian_B9_stall_region_out_c0_exe4),
        .out_c0_exe6(bb_gaussian_B9_stall_region_out_c0_exe6),
        .out_feedback_stall_out_28(bb_gaussian_B9_stall_region_out_feedback_stall_out_28),
        .out_memdep_phi_pop28(bb_gaussian_B9_stall_region_out_memdep_phi_pop28),
        .out_pipeline_valid_out(bb_gaussian_B9_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_gaussian_B9_stall_region_out_stall_out),
        .out_valid_out(bb_gaussian_B9_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_28_sync(GPOUT,4)
    assign out_feedback_stall_out_28 = bb_gaussian_B9_stall_region_out_feedback_stall_out_28;

    // out_c0_exe1144(GPOUT,18)
    assign out_c0_exe1144 = gaussian_B9_branch_out_c0_exe1144;

    // out_c0_exe2145(GPOUT,19)
    assign out_c0_exe2145 = gaussian_B9_branch_out_c0_exe2145;

    // out_c0_exe3146(GPOUT,20)
    assign out_c0_exe3146 = gaussian_B9_branch_out_c0_exe3146;

    // out_c0_exe4(GPOUT,21)
    assign out_c0_exe4 = gaussian_B9_branch_out_c0_exe4;

    // out_c0_exe6(GPOUT,22)
    assign out_c0_exe6 = gaussian_B9_branch_out_c0_exe6;

    // out_exiting_stall_out(GPOUT,23)
    assign out_exiting_stall_out = bb_gaussian_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going64_gaussian2_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,24)
    assign out_exiting_valid_out = bb_gaussian_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going64_gaussian2_exiting_valid_out;

    // out_memdep_phi_pop28(GPOUT,25)
    assign out_memdep_phi_pop28 = gaussian_B9_branch_out_memdep_phi_pop28;

    // out_stall_out_0(GPOUT,26)
    assign out_stall_out_0 = gaussian_B9_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,27)
    assign out_stall_out_1 = gaussian_B9_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,28)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,29)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,30)
    assign out_valid_out_0 = gaussian_B9_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,32)
    assign out_pipeline_valid_out = bb_gaussian_B9_stall_region_out_pipeline_valid_out;

endmodule
