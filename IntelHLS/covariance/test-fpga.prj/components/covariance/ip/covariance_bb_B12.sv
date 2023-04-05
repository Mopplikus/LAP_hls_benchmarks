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

// SystemVerilog created from bb_covariance_B12
// Created for function/kernel covariance
// SystemVerilog created on Wed Apr  5 02:12:05 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_bb_B12 (
    input wire [0:0] in_forked141_0,
    input wire [0:0] in_forked141_1,
    input wire [31:0] in_lim_ext136_pop61200_0,
    input wire [31:0] in_lim_ext136_pop61200_1,
    input wire [31:0] in_reorder_limiter_enter179_0,
    input wire [31:0] in_reorder_limiter_enter179_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [32:0] out_c0_exe1361,
    output wire [0:0] out_c0_exe3363,
    output wire [31:0] out_c0_exe4364,
    output wire [31:0] out_c0_exe5365,
    output wire [31:0] out_c0_exe6366,
    output wire [31:0] out_c0_exe7367,
    output wire [31:0] out_c0_exe8368,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
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

    wire [0:0] bb_covariance_B12_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going65_covariance2_exiting_stall_out;
    wire [0:0] bb_covariance_B12_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going65_covariance2_exiting_valid_out;
    wire [32:0] bb_covariance_B12_stall_region_out_c0_exe1361;
    wire [0:0] bb_covariance_B12_stall_region_out_c0_exe3363;
    wire [31:0] bb_covariance_B12_stall_region_out_c0_exe4364;
    wire [31:0] bb_covariance_B12_stall_region_out_c0_exe5365;
    wire [31:0] bb_covariance_B12_stall_region_out_c0_exe6366;
    wire [31:0] bb_covariance_B12_stall_region_out_c0_exe7367;
    wire [31:0] bb_covariance_B12_stall_region_out_c0_exe8368;
    wire [0:0] bb_covariance_B12_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_covariance_B12_stall_region_out_stall_out;
    wire [0:0] bb_covariance_B12_stall_region_out_valid_out;
    wire [32:0] covariance_B12_branch_out_c0_exe1361;
    wire [0:0] covariance_B12_branch_out_c0_exe3363;
    wire [31:0] covariance_B12_branch_out_c0_exe4364;
    wire [31:0] covariance_B12_branch_out_c0_exe5365;
    wire [31:0] covariance_B12_branch_out_c0_exe6366;
    wire [31:0] covariance_B12_branch_out_c0_exe7367;
    wire [31:0] covariance_B12_branch_out_c0_exe8368;
    wire [0:0] covariance_B12_branch_out_stall_out;
    wire [0:0] covariance_B12_branch_out_valid_out_0;
    wire [0:0] covariance_B12_merge_out_forked141;
    wire [31:0] covariance_B12_merge_out_lim_ext136_pop61200;
    wire [31:0] covariance_B12_merge_out_reorder_limiter_enter179;
    wire [0:0] covariance_B12_merge_out_stall_out_0;
    wire [0:0] covariance_B12_merge_out_stall_out_1;
    wire [0:0] covariance_B12_merge_out_valid_out;


    // covariance_B12_merge(BLACKBOX,4)
    covariance_B12_merge thecovariance_B12_merge (
        .in_forked141_0(in_forked141_0),
        .in_forked141_1(in_forked141_1),
        .in_lim_ext136_pop61200_0(in_lim_ext136_pop61200_0),
        .in_lim_ext136_pop61200_1(in_lim_ext136_pop61200_1),
        .in_reorder_limiter_enter179_0(in_reorder_limiter_enter179_0),
        .in_reorder_limiter_enter179_1(in_reorder_limiter_enter179_1),
        .in_stall_in(bb_covariance_B12_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked141(covariance_B12_merge_out_forked141),
        .out_lim_ext136_pop61200(covariance_B12_merge_out_lim_ext136_pop61200),
        .out_reorder_limiter_enter179(covariance_B12_merge_out_reorder_limiter_enter179),
        .out_stall_out_0(covariance_B12_merge_out_stall_out_0),
        .out_stall_out_1(covariance_B12_merge_out_stall_out_1),
        .out_valid_out(covariance_B12_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B12_stall_region(BLACKBOX,2)
    covariance_bb_B12_stall_region thebb_covariance_B12_stall_region (
        .in_forked141(covariance_B12_merge_out_forked141),
        .in_lim_ext136_pop61200(covariance_B12_merge_out_lim_ext136_pop61200),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_reorder_limiter_enter179(covariance_B12_merge_out_reorder_limiter_enter179),
        .in_stall_in(covariance_B12_branch_out_stall_out),
        .in_valid_in(covariance_B12_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going65_covariance2_exiting_stall_out(bb_covariance_B12_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going65_covariance2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going65_covariance2_exiting_valid_out(bb_covariance_B12_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going65_covariance2_exiting_valid_out),
        .out_c0_exe1361(bb_covariance_B12_stall_region_out_c0_exe1361),
        .out_c0_exe3363(bb_covariance_B12_stall_region_out_c0_exe3363),
        .out_c0_exe4364(bb_covariance_B12_stall_region_out_c0_exe4364),
        .out_c0_exe5365(bb_covariance_B12_stall_region_out_c0_exe5365),
        .out_c0_exe6366(bb_covariance_B12_stall_region_out_c0_exe6366),
        .out_c0_exe7367(bb_covariance_B12_stall_region_out_c0_exe7367),
        .out_c0_exe8368(bb_covariance_B12_stall_region_out_c0_exe8368),
        .out_pipeline_valid_out(bb_covariance_B12_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_covariance_B12_stall_region_out_stall_out),
        .out_valid_out(bb_covariance_B12_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // covariance_B12_branch(BLACKBOX,3)
    covariance_B12_branch thecovariance_B12_branch (
        .in_c0_exe1361(bb_covariance_B12_stall_region_out_c0_exe1361),
        .in_c0_exe3363(bb_covariance_B12_stall_region_out_c0_exe3363),
        .in_c0_exe4364(bb_covariance_B12_stall_region_out_c0_exe4364),
        .in_c0_exe5365(bb_covariance_B12_stall_region_out_c0_exe5365),
        .in_c0_exe6366(bb_covariance_B12_stall_region_out_c0_exe6366),
        .in_c0_exe7367(bb_covariance_B12_stall_region_out_c0_exe7367),
        .in_c0_exe8368(bb_covariance_B12_stall_region_out_c0_exe8368),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_covariance_B12_stall_region_out_valid_out),
        .out_c0_exe1361(covariance_B12_branch_out_c0_exe1361),
        .out_c0_exe3363(covariance_B12_branch_out_c0_exe3363),
        .out_c0_exe4364(covariance_B12_branch_out_c0_exe4364),
        .out_c0_exe5365(covariance_B12_branch_out_c0_exe5365),
        .out_c0_exe6366(covariance_B12_branch_out_c0_exe6366),
        .out_c0_exe7367(covariance_B12_branch_out_c0_exe7367),
        .out_c0_exe8368(covariance_B12_branch_out_c0_exe8368),
        .out_stall_out(covariance_B12_branch_out_stall_out),
        .out_valid_out_0(covariance_B12_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe1361(GPOUT,14)
    assign out_c0_exe1361 = covariance_B12_branch_out_c0_exe1361;

    // out_c0_exe3363(GPOUT,15)
    assign out_c0_exe3363 = covariance_B12_branch_out_c0_exe3363;

    // out_c0_exe4364(GPOUT,16)
    assign out_c0_exe4364 = covariance_B12_branch_out_c0_exe4364;

    // out_c0_exe5365(GPOUT,17)
    assign out_c0_exe5365 = covariance_B12_branch_out_c0_exe5365;

    // out_c0_exe6366(GPOUT,18)
    assign out_c0_exe6366 = covariance_B12_branch_out_c0_exe6366;

    // out_c0_exe7367(GPOUT,19)
    assign out_c0_exe7367 = covariance_B12_branch_out_c0_exe7367;

    // out_c0_exe8368(GPOUT,20)
    assign out_c0_exe8368 = covariance_B12_branch_out_c0_exe8368;

    // out_exiting_stall_out(GPOUT,21)
    assign out_exiting_stall_out = bb_covariance_B12_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going65_covariance2_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,22)
    assign out_exiting_valid_out = bb_covariance_B12_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going65_covariance2_exiting_valid_out;

    // out_stall_out_0(GPOUT,23)
    assign out_stall_out_0 = covariance_B12_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,24)
    assign out_stall_out_1 = covariance_B12_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,25)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,26)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,27)
    assign out_valid_out_0 = covariance_B12_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,29)
    assign out_pipeline_valid_out = bb_covariance_B12_stall_region_out_pipeline_valid_out;

endmodule
