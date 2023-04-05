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

// SystemVerilog created from bb_covariance_B18
// Created for function/kernel covariance
// SystemVerilog created on Wed Apr  5 02:12:06 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_bb_B18 (
    input wire [0:0] in_forked145_0,
    input wire [0:0] in_forked145_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe2473,
    output wire [31:0] out_c0_exe3474,
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

    wire [0:0] bb_covariance_B18_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going39_covariance2_exiting_stall_out;
    wire [0:0] bb_covariance_B18_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going39_covariance2_exiting_valid_out;
    wire [0:0] bb_covariance_B18_stall_region_out_c0_exe2473;
    wire [31:0] bb_covariance_B18_stall_region_out_c0_exe3474;
    wire [0:0] bb_covariance_B18_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_covariance_B18_stall_region_out_stall_out;
    wire [0:0] bb_covariance_B18_stall_region_out_valid_out;
    wire [0:0] covariance_B18_branch_out_c0_exe2473;
    wire [31:0] covariance_B18_branch_out_c0_exe3474;
    wire [0:0] covariance_B18_branch_out_stall_out;
    wire [0:0] covariance_B18_branch_out_valid_out_0;
    wire [0:0] covariance_B18_merge_out_forked145;
    wire [0:0] covariance_B18_merge_out_stall_out_0;
    wire [0:0] covariance_B18_merge_out_stall_out_1;
    wire [0:0] covariance_B18_merge_out_valid_out;


    // covariance_B18_merge(BLACKBOX,4)
    covariance_B18_merge thecovariance_B18_merge (
        .in_forked145_0(in_forked145_0),
        .in_forked145_1(in_forked145_1),
        .in_stall_in(bb_covariance_B18_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked145(covariance_B18_merge_out_forked145),
        .out_stall_out_0(covariance_B18_merge_out_stall_out_0),
        .out_stall_out_1(covariance_B18_merge_out_stall_out_1),
        .out_valid_out(covariance_B18_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B18_stall_region(BLACKBOX,2)
    covariance_bb_B18_stall_region thebb_covariance_B18_stall_region (
        .in_forked145(covariance_B18_merge_out_forked145),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(covariance_B18_branch_out_stall_out),
        .in_valid_in(covariance_B18_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going39_covariance2_exiting_stall_out(bb_covariance_B18_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going39_covariance2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going39_covariance2_exiting_valid_out(bb_covariance_B18_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going39_covariance2_exiting_valid_out),
        .out_c0_exe2473(bb_covariance_B18_stall_region_out_c0_exe2473),
        .out_c0_exe3474(bb_covariance_B18_stall_region_out_c0_exe3474),
        .out_pipeline_valid_out(bb_covariance_B18_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_covariance_B18_stall_region_out_stall_out),
        .out_valid_out(bb_covariance_B18_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // covariance_B18_branch(BLACKBOX,3)
    covariance_B18_branch thecovariance_B18_branch (
        .in_c0_exe2473(bb_covariance_B18_stall_region_out_c0_exe2473),
        .in_c0_exe3474(bb_covariance_B18_stall_region_out_c0_exe3474),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_covariance_B18_stall_region_out_valid_out),
        .out_c0_exe2473(covariance_B18_branch_out_c0_exe2473),
        .out_c0_exe3474(covariance_B18_branch_out_c0_exe3474),
        .out_stall_out(covariance_B18_branch_out_stall_out),
        .out_valid_out_0(covariance_B18_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe2473(GPOUT,10)
    assign out_c0_exe2473 = covariance_B18_branch_out_c0_exe2473;

    // out_c0_exe3474(GPOUT,11)
    assign out_c0_exe3474 = covariance_B18_branch_out_c0_exe3474;

    // out_exiting_stall_out(GPOUT,12)
    assign out_exiting_stall_out = bb_covariance_B18_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going39_covariance2_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,13)
    assign out_exiting_valid_out = bb_covariance_B18_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going39_covariance2_exiting_valid_out;

    // out_stall_out_0(GPOUT,14)
    assign out_stall_out_0 = covariance_B18_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,15)
    assign out_stall_out_1 = covariance_B18_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,16)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,17)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,18)
    assign out_valid_out_0 = covariance_B18_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,20)
    assign out_pipeline_valid_out = bb_covariance_B18_stall_region_out_pipeline_valid_out;

endmodule
