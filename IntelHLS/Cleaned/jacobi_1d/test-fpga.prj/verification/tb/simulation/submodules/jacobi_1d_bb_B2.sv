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

// SystemVerilog created from bb_jacobi_1d_B2
// Created for function/kernel jacobi_1d
// SystemVerilog created on Tue Jun 13 02:54:34 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module jacobi_1d_bb_B2 (
    input wire [0:0] in_feedback_in_11,
    input wire [0:0] in_feedback_in_13,
    output wire [0:0] out_feedback_stall_out_11,
    output wire [0:0] out_feedback_stall_out_13,
    input wire [0:0] in_feedback_valid_in_11,
    input wire [0:0] in_feedback_valid_in_13,
    input wire [0:0] in_forked48_0,
    input wire [0:0] in_forked48_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe179,
    output wire [0:0] out_c0_exe2,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_memdep_phi1_pop11,
    output wire [0:0] out_memdep_phi4_pop12,
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

    wire [0:0] bb_jacobi_1d_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going41_jacobi_1d2_exiting_stall_out;
    wire [0:0] bb_jacobi_1d_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going41_jacobi_1d2_exiting_valid_out;
    wire [0:0] bb_jacobi_1d_B2_stall_region_out_c0_exe179;
    wire [0:0] bb_jacobi_1d_B2_stall_region_out_c0_exe2;
    wire [0:0] bb_jacobi_1d_B2_stall_region_out_feedback_stall_out_11;
    wire [0:0] bb_jacobi_1d_B2_stall_region_out_feedback_stall_out_13;
    wire [0:0] bb_jacobi_1d_B2_stall_region_out_memdep_phi1_pop11;
    wire [0:0] bb_jacobi_1d_B2_stall_region_out_memdep_phi4_pop12;
    wire [0:0] bb_jacobi_1d_B2_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_jacobi_1d_B2_stall_region_out_stall_out;
    wire [0:0] bb_jacobi_1d_B2_stall_region_out_valid_out;
    wire [0:0] jacobi_1d_B2_branch_out_c0_exe179;
    wire [0:0] jacobi_1d_B2_branch_out_c0_exe2;
    wire [0:0] jacobi_1d_B2_branch_out_memdep_phi1_pop11;
    wire [0:0] jacobi_1d_B2_branch_out_memdep_phi4_pop12;
    wire [0:0] jacobi_1d_B2_branch_out_stall_out;
    wire [0:0] jacobi_1d_B2_branch_out_valid_out_0;
    wire [0:0] jacobi_1d_B2_merge_out_forked48;
    wire [0:0] jacobi_1d_B2_merge_out_stall_out_0;
    wire [0:0] jacobi_1d_B2_merge_out_stall_out_1;
    wire [0:0] jacobi_1d_B2_merge_out_valid_out;


    // jacobi_1d_B2_branch(BLACKBOX,14)
    jacobi_1d_B2_branch thejacobi_1d_B2_branch (
        .in_c0_exe179(bb_jacobi_1d_B2_stall_region_out_c0_exe179),
        .in_c0_exe2(bb_jacobi_1d_B2_stall_region_out_c0_exe2),
        .in_memdep_phi1_pop11(bb_jacobi_1d_B2_stall_region_out_memdep_phi1_pop11),
        .in_memdep_phi4_pop12(bb_jacobi_1d_B2_stall_region_out_memdep_phi4_pop12),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_jacobi_1d_B2_stall_region_out_valid_out),
        .out_c0_exe179(jacobi_1d_B2_branch_out_c0_exe179),
        .out_c0_exe2(jacobi_1d_B2_branch_out_c0_exe2),
        .out_memdep_phi1_pop11(jacobi_1d_B2_branch_out_memdep_phi1_pop11),
        .out_memdep_phi4_pop12(jacobi_1d_B2_branch_out_memdep_phi4_pop12),
        .out_stall_out(jacobi_1d_B2_branch_out_stall_out),
        .out_valid_out_0(jacobi_1d_B2_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // jacobi_1d_B2_merge(BLACKBOX,15)
    jacobi_1d_B2_merge thejacobi_1d_B2_merge (
        .in_forked48_0(in_forked48_0),
        .in_forked48_1(in_forked48_1),
        .in_stall_in(bb_jacobi_1d_B2_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked48(jacobi_1d_B2_merge_out_forked48),
        .out_stall_out_0(jacobi_1d_B2_merge_out_stall_out_0),
        .out_stall_out_1(jacobi_1d_B2_merge_out_stall_out_1),
        .out_valid_out(jacobi_1d_B2_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_jacobi_1d_B2_stall_region(BLACKBOX,2)
    jacobi_1d_bb_B2_stall_region thebb_jacobi_1d_B2_stall_region (
        .in_feedback_in_11(in_feedback_in_11),
        .in_feedback_in_13(in_feedback_in_13),
        .in_feedback_valid_in_11(in_feedback_valid_in_11),
        .in_feedback_valid_in_13(in_feedback_valid_in_13),
        .in_forked48(jacobi_1d_B2_merge_out_forked48),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(jacobi_1d_B2_branch_out_stall_out),
        .in_valid_in(jacobi_1d_B2_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going41_jacobi_1d2_exiting_stall_out(bb_jacobi_1d_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going41_jacobi_1d2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going41_jacobi_1d2_exiting_valid_out(bb_jacobi_1d_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going41_jacobi_1d2_exiting_valid_out),
        .out_c0_exe179(bb_jacobi_1d_B2_stall_region_out_c0_exe179),
        .out_c0_exe2(bb_jacobi_1d_B2_stall_region_out_c0_exe2),
        .out_feedback_stall_out_11(bb_jacobi_1d_B2_stall_region_out_feedback_stall_out_11),
        .out_feedback_stall_out_13(bb_jacobi_1d_B2_stall_region_out_feedback_stall_out_13),
        .out_memdep_phi1_pop11(bb_jacobi_1d_B2_stall_region_out_memdep_phi1_pop11),
        .out_memdep_phi4_pop12(bb_jacobi_1d_B2_stall_region_out_memdep_phi4_pop12),
        .out_pipeline_valid_out(bb_jacobi_1d_B2_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_jacobi_1d_B2_stall_region_out_stall_out),
        .out_valid_out(bb_jacobi_1d_B2_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_11_sync(GPOUT,5)
    assign out_feedback_stall_out_11 = bb_jacobi_1d_B2_stall_region_out_feedback_stall_out_11;

    // feedback_stall_out_13_sync(GPOUT,6)
    assign out_feedback_stall_out_13 = bb_jacobi_1d_B2_stall_region_out_feedback_stall_out_13;

    // out_c0_exe179(GPOUT,16)
    assign out_c0_exe179 = jacobi_1d_B2_branch_out_c0_exe179;

    // out_c0_exe2(GPOUT,17)
    assign out_c0_exe2 = jacobi_1d_B2_branch_out_c0_exe2;

    // out_exiting_stall_out(GPOUT,18)
    assign out_exiting_stall_out = bb_jacobi_1d_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going41_jacobi_1d2_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,19)
    assign out_exiting_valid_out = bb_jacobi_1d_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going41_jacobi_1d2_exiting_valid_out;

    // out_memdep_phi1_pop11(GPOUT,20)
    assign out_memdep_phi1_pop11 = jacobi_1d_B2_branch_out_memdep_phi1_pop11;

    // out_memdep_phi4_pop12(GPOUT,21)
    assign out_memdep_phi4_pop12 = jacobi_1d_B2_branch_out_memdep_phi4_pop12;

    // out_stall_out_0(GPOUT,22)
    assign out_stall_out_0 = jacobi_1d_B2_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,23)
    assign out_stall_out_1 = jacobi_1d_B2_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,24)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,25)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,26)
    assign out_valid_out_0 = jacobi_1d_B2_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,28)
    assign out_pipeline_valid_out = bb_jacobi_1d_B2_stall_region_out_pipeline_valid_out;

endmodule
