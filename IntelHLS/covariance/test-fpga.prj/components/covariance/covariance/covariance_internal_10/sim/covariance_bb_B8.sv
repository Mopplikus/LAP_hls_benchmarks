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
// SystemVerilog created on Fri Apr  7 17:50:02 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_bb_B8 (
    input wire [0:0] in_forked90_0,
    input wire [0:0] in_forked90_1,
    input wire [31:0] in_lim_ext77_pop49160_0,
    input wire [31:0] in_lim_ext77_pop49160_1,
    input wire [31:0] in_reorder_limiter_enter129_0,
    input wire [31:0] in_reorder_limiter_enter129_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [32:0] out_c0_exe1316,
    output wire [0:0] out_c0_exe3318,
    output wire [31:0] out_c0_exe4319,
    output wire [31:0] out_c0_exe5320,
    output wire [31:0] out_c0_exe6321,
    output wire [31:0] out_c0_exe7322,
    output wire [31:0] out_c0_exe8323,
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

    wire [0:0] bb_covariance_B8_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going29_covariance2_exiting_stall_out;
    wire [0:0] bb_covariance_B8_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going29_covariance2_exiting_valid_out;
    wire [32:0] bb_covariance_B8_stall_region_out_c0_exe1316;
    wire [0:0] bb_covariance_B8_stall_region_out_c0_exe3318;
    wire [31:0] bb_covariance_B8_stall_region_out_c0_exe4319;
    wire [31:0] bb_covariance_B8_stall_region_out_c0_exe5320;
    wire [31:0] bb_covariance_B8_stall_region_out_c0_exe6321;
    wire [31:0] bb_covariance_B8_stall_region_out_c0_exe7322;
    wire [31:0] bb_covariance_B8_stall_region_out_c0_exe8323;
    wire [0:0] bb_covariance_B8_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_covariance_B8_stall_region_out_stall_out;
    wire [0:0] bb_covariance_B8_stall_region_out_valid_out;
    wire [32:0] covariance_B8_branch_out_c0_exe1316;
    wire [0:0] covariance_B8_branch_out_c0_exe3318;
    wire [31:0] covariance_B8_branch_out_c0_exe4319;
    wire [31:0] covariance_B8_branch_out_c0_exe5320;
    wire [31:0] covariance_B8_branch_out_c0_exe6321;
    wire [31:0] covariance_B8_branch_out_c0_exe7322;
    wire [31:0] covariance_B8_branch_out_c0_exe8323;
    wire [0:0] covariance_B8_branch_out_stall_out;
    wire [0:0] covariance_B8_branch_out_valid_out_0;
    wire [0:0] covariance_B8_merge_out_forked90;
    wire [31:0] covariance_B8_merge_out_lim_ext77_pop49160;
    wire [31:0] covariance_B8_merge_out_reorder_limiter_enter129;
    wire [0:0] covariance_B8_merge_out_stall_out_0;
    wire [0:0] covariance_B8_merge_out_stall_out_1;
    wire [0:0] covariance_B8_merge_out_valid_out;


    // covariance_B8_merge(BLACKBOX,4)
    covariance_B8_merge thecovariance_B8_merge (
        .in_forked90_0(in_forked90_0),
        .in_forked90_1(in_forked90_1),
        .in_lim_ext77_pop49160_0(in_lim_ext77_pop49160_0),
        .in_lim_ext77_pop49160_1(in_lim_ext77_pop49160_1),
        .in_reorder_limiter_enter129_0(in_reorder_limiter_enter129_0),
        .in_reorder_limiter_enter129_1(in_reorder_limiter_enter129_1),
        .in_stall_in(bb_covariance_B8_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked90(covariance_B8_merge_out_forked90),
        .out_lim_ext77_pop49160(covariance_B8_merge_out_lim_ext77_pop49160),
        .out_reorder_limiter_enter129(covariance_B8_merge_out_reorder_limiter_enter129),
        .out_stall_out_0(covariance_B8_merge_out_stall_out_0),
        .out_stall_out_1(covariance_B8_merge_out_stall_out_1),
        .out_valid_out(covariance_B8_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B8_stall_region(BLACKBOX,2)
    covariance_bb_B8_stall_region thebb_covariance_B8_stall_region (
        .in_forked90(covariance_B8_merge_out_forked90),
        .in_lim_ext77_pop49160(covariance_B8_merge_out_lim_ext77_pop49160),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_reorder_limiter_enter129(covariance_B8_merge_out_reorder_limiter_enter129),
        .in_stall_in(covariance_B8_branch_out_stall_out),
        .in_valid_in(covariance_B8_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going29_covariance2_exiting_stall_out(bb_covariance_B8_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going29_covariance2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going29_covariance2_exiting_valid_out(bb_covariance_B8_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going29_covariance2_exiting_valid_out),
        .out_c0_exe1316(bb_covariance_B8_stall_region_out_c0_exe1316),
        .out_c0_exe3318(bb_covariance_B8_stall_region_out_c0_exe3318),
        .out_c0_exe4319(bb_covariance_B8_stall_region_out_c0_exe4319),
        .out_c0_exe5320(bb_covariance_B8_stall_region_out_c0_exe5320),
        .out_c0_exe6321(bb_covariance_B8_stall_region_out_c0_exe6321),
        .out_c0_exe7322(bb_covariance_B8_stall_region_out_c0_exe7322),
        .out_c0_exe8323(bb_covariance_B8_stall_region_out_c0_exe8323),
        .out_pipeline_valid_out(bb_covariance_B8_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_covariance_B8_stall_region_out_stall_out),
        .out_valid_out(bb_covariance_B8_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // covariance_B8_branch(BLACKBOX,3)
    covariance_B8_branch thecovariance_B8_branch (
        .in_c0_exe1316(bb_covariance_B8_stall_region_out_c0_exe1316),
        .in_c0_exe3318(bb_covariance_B8_stall_region_out_c0_exe3318),
        .in_c0_exe4319(bb_covariance_B8_stall_region_out_c0_exe4319),
        .in_c0_exe5320(bb_covariance_B8_stall_region_out_c0_exe5320),
        .in_c0_exe6321(bb_covariance_B8_stall_region_out_c0_exe6321),
        .in_c0_exe7322(bb_covariance_B8_stall_region_out_c0_exe7322),
        .in_c0_exe8323(bb_covariance_B8_stall_region_out_c0_exe8323),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_covariance_B8_stall_region_out_valid_out),
        .out_c0_exe1316(covariance_B8_branch_out_c0_exe1316),
        .out_c0_exe3318(covariance_B8_branch_out_c0_exe3318),
        .out_c0_exe4319(covariance_B8_branch_out_c0_exe4319),
        .out_c0_exe5320(covariance_B8_branch_out_c0_exe5320),
        .out_c0_exe6321(covariance_B8_branch_out_c0_exe6321),
        .out_c0_exe7322(covariance_B8_branch_out_c0_exe7322),
        .out_c0_exe8323(covariance_B8_branch_out_c0_exe8323),
        .out_stall_out(covariance_B8_branch_out_stall_out),
        .out_valid_out_0(covariance_B8_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe1316(GPOUT,14)
    assign out_c0_exe1316 = covariance_B8_branch_out_c0_exe1316;

    // out_c0_exe3318(GPOUT,15)
    assign out_c0_exe3318 = covariance_B8_branch_out_c0_exe3318;

    // out_c0_exe4319(GPOUT,16)
    assign out_c0_exe4319 = covariance_B8_branch_out_c0_exe4319;

    // out_c0_exe5320(GPOUT,17)
    assign out_c0_exe5320 = covariance_B8_branch_out_c0_exe5320;

    // out_c0_exe6321(GPOUT,18)
    assign out_c0_exe6321 = covariance_B8_branch_out_c0_exe6321;

    // out_c0_exe7322(GPOUT,19)
    assign out_c0_exe7322 = covariance_B8_branch_out_c0_exe7322;

    // out_c0_exe8323(GPOUT,20)
    assign out_c0_exe8323 = covariance_B8_branch_out_c0_exe8323;

    // out_exiting_stall_out(GPOUT,21)
    assign out_exiting_stall_out = bb_covariance_B8_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going29_covariance2_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,22)
    assign out_exiting_valid_out = bb_covariance_B8_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going29_covariance2_exiting_valid_out;

    // out_stall_out_0(GPOUT,23)
    assign out_stall_out_0 = covariance_B8_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,24)
    assign out_stall_out_1 = covariance_B8_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,25)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,26)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,27)
    assign out_valid_out_0 = covariance_B8_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,29)
    assign out_pipeline_valid_out = bb_covariance_B8_stall_region_out_pipeline_valid_out;

endmodule
