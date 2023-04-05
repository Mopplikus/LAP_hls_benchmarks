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

// SystemVerilog created from bb_jacobi_1d_B4
// Created for function/kernel jacobi_1d
// SystemVerilog created on Wed Apr  5 13:32:10 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module jacobi_1d_bb_B4 (
    input wire [0:0] in_forked66_0,
    input wire [0:0] in_forked66_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe283,
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

    wire [0:0] bb_jacobi_1d_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_jacobi_1d2_exiting_stall_out;
    wire [0:0] bb_jacobi_1d_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_jacobi_1d2_exiting_valid_out;
    wire [0:0] bb_jacobi_1d_B4_stall_region_out_c0_exe283;
    wire [0:0] bb_jacobi_1d_B4_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_jacobi_1d_B4_stall_region_out_stall_out;
    wire [0:0] bb_jacobi_1d_B4_stall_region_out_valid_out;
    wire [0:0] jacobi_1d_B4_branch_out_c0_exe283;
    wire [0:0] jacobi_1d_B4_branch_out_stall_out;
    wire [0:0] jacobi_1d_B4_branch_out_valid_out_0;
    wire [0:0] jacobi_1d_B4_merge_out_forked66;
    wire [0:0] jacobi_1d_B4_merge_out_stall_out_0;
    wire [0:0] jacobi_1d_B4_merge_out_stall_out_1;
    wire [0:0] jacobi_1d_B4_merge_out_valid_out;


    // jacobi_1d_B4_merge(BLACKBOX,9)
    jacobi_1d_B4_merge thejacobi_1d_B4_merge (
        .in_forked66_0(in_forked66_0),
        .in_forked66_1(in_forked66_1),
        .in_stall_in(bb_jacobi_1d_B4_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked66(jacobi_1d_B4_merge_out_forked66),
        .out_stall_out_0(jacobi_1d_B4_merge_out_stall_out_0),
        .out_stall_out_1(jacobi_1d_B4_merge_out_stall_out_1),
        .out_valid_out(jacobi_1d_B4_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_jacobi_1d_B4_stall_region(BLACKBOX,2)
    jacobi_1d_bb_B4_stall_region thebb_jacobi_1d_B4_stall_region (
        .in_forked66(jacobi_1d_B4_merge_out_forked66),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(jacobi_1d_B4_branch_out_stall_out),
        .in_valid_in(jacobi_1d_B4_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_jacobi_1d2_exiting_stall_out(bb_jacobi_1d_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_jacobi_1d2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_jacobi_1d2_exiting_valid_out(bb_jacobi_1d_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_jacobi_1d2_exiting_valid_out),
        .out_c0_exe283(bb_jacobi_1d_B4_stall_region_out_c0_exe283),
        .out_pipeline_valid_out(bb_jacobi_1d_B4_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_jacobi_1d_B4_stall_region_out_stall_out),
        .out_valid_out(bb_jacobi_1d_B4_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // jacobi_1d_B4_branch(BLACKBOX,8)
    jacobi_1d_B4_branch thejacobi_1d_B4_branch (
        .in_c0_exe283(bb_jacobi_1d_B4_stall_region_out_c0_exe283),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_jacobi_1d_B4_stall_region_out_valid_out),
        .out_c0_exe283(jacobi_1d_B4_branch_out_c0_exe283),
        .out_stall_out(jacobi_1d_B4_branch_out_stall_out),
        .out_valid_out_0(jacobi_1d_B4_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe283(GPOUT,10)
    assign out_c0_exe283 = jacobi_1d_B4_branch_out_c0_exe283;

    // out_exiting_stall_out(GPOUT,11)
    assign out_exiting_stall_out = bb_jacobi_1d_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_jacobi_1d2_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,12)
    assign out_exiting_valid_out = bb_jacobi_1d_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_jacobi_1d2_exiting_valid_out;

    // out_stall_out_0(GPOUT,13)
    assign out_stall_out_0 = jacobi_1d_B4_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,14)
    assign out_stall_out_1 = jacobi_1d_B4_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,15)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,16)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,17)
    assign out_valid_out_0 = jacobi_1d_B4_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,19)
    assign out_pipeline_valid_out = bb_jacobi_1d_B4_stall_region_out_pipeline_valid_out;

endmodule
