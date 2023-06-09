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

// SystemVerilog created from bb_stencil_2d_B2
// Created for function/kernel stencil_2d
// SystemVerilog created on Tue Jun 13 03:01:27 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_bb_B2 (
    input wire [0:0] in_feedback_in_14,
    output wire [0:0] out_feedback_stall_out_14,
    input wire [0:0] in_feedback_valid_in_14,
    input wire [0:0] in_forked37_0,
    input wire [0:0] in_forked37_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c0_exe1156,
    output wire [31:0] out_c0_exe2,
    output wire [0:0] out_c0_exe3,
    output wire [0:0] out_c0_exe4,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_memdep_phi1_pop14,
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

    wire [0:0] bb_stencil_2d_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going29_stencil_2d2_exiting_stall_out;
    wire [0:0] bb_stencil_2d_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going29_stencil_2d2_exiting_valid_out;
    wire [31:0] bb_stencil_2d_B2_stall_region_out_c0_exe1156;
    wire [31:0] bb_stencil_2d_B2_stall_region_out_c0_exe2;
    wire [0:0] bb_stencil_2d_B2_stall_region_out_c0_exe3;
    wire [0:0] bb_stencil_2d_B2_stall_region_out_c0_exe4;
    wire [0:0] bb_stencil_2d_B2_stall_region_out_feedback_stall_out_14;
    wire [0:0] bb_stencil_2d_B2_stall_region_out_memdep_phi1_pop14;
    wire [0:0] bb_stencil_2d_B2_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_stencil_2d_B2_stall_region_out_stall_out;
    wire [0:0] bb_stencil_2d_B2_stall_region_out_valid_out;
    wire [31:0] stencil_2d_B2_branch_out_c0_exe1156;
    wire [31:0] stencil_2d_B2_branch_out_c0_exe2;
    wire [0:0] stencil_2d_B2_branch_out_c0_exe3;
    wire [0:0] stencil_2d_B2_branch_out_c0_exe4;
    wire [0:0] stencil_2d_B2_branch_out_memdep_phi1_pop14;
    wire [0:0] stencil_2d_B2_branch_out_stall_out;
    wire [0:0] stencil_2d_B2_branch_out_valid_out_0;
    wire [0:0] stencil_2d_B2_merge_out_forked37;
    wire [0:0] stencil_2d_B2_merge_out_stall_out_0;
    wire [0:0] stencil_2d_B2_merge_out_stall_out_1;
    wire [0:0] stencil_2d_B2_merge_out_valid_out;


    // stencil_2d_B2_branch(BLACKBOX,25)
    stencil_2d_B2_branch thestencil_2d_B2_branch (
        .in_c0_exe1156(bb_stencil_2d_B2_stall_region_out_c0_exe1156),
        .in_c0_exe2(bb_stencil_2d_B2_stall_region_out_c0_exe2),
        .in_c0_exe3(bb_stencil_2d_B2_stall_region_out_c0_exe3),
        .in_c0_exe4(bb_stencil_2d_B2_stall_region_out_c0_exe4),
        .in_memdep_phi1_pop14(bb_stencil_2d_B2_stall_region_out_memdep_phi1_pop14),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_stencil_2d_B2_stall_region_out_valid_out),
        .out_c0_exe1156(stencil_2d_B2_branch_out_c0_exe1156),
        .out_c0_exe2(stencil_2d_B2_branch_out_c0_exe2),
        .out_c0_exe3(stencil_2d_B2_branch_out_c0_exe3),
        .out_c0_exe4(stencil_2d_B2_branch_out_c0_exe4),
        .out_memdep_phi1_pop14(stencil_2d_B2_branch_out_memdep_phi1_pop14),
        .out_stall_out(stencil_2d_B2_branch_out_stall_out),
        .out_valid_out_0(stencil_2d_B2_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // stencil_2d_B2_merge(BLACKBOX,26)
    stencil_2d_B2_merge thestencil_2d_B2_merge (
        .in_forked37_0(in_forked37_0),
        .in_forked37_1(in_forked37_1),
        .in_stall_in(bb_stencil_2d_B2_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked37(stencil_2d_B2_merge_out_forked37),
        .out_stall_out_0(stencil_2d_B2_merge_out_stall_out_0),
        .out_stall_out_1(stencil_2d_B2_merge_out_stall_out_1),
        .out_valid_out(stencil_2d_B2_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B2_stall_region(BLACKBOX,2)
    stencil_2d_bb_B2_stall_region thebb_stencil_2d_B2_stall_region (
        .in_feedback_in_14(in_feedback_in_14),
        .in_feedback_valid_in_14(in_feedback_valid_in_14),
        .in_forked37(stencil_2d_B2_merge_out_forked37),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(stencil_2d_B2_branch_out_stall_out),
        .in_valid_in(stencil_2d_B2_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going29_stencil_2d2_exiting_stall_out(bb_stencil_2d_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going29_stencil_2d2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going29_stencil_2d2_exiting_valid_out(bb_stencil_2d_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going29_stencil_2d2_exiting_valid_out),
        .out_c0_exe1156(bb_stencil_2d_B2_stall_region_out_c0_exe1156),
        .out_c0_exe2(bb_stencil_2d_B2_stall_region_out_c0_exe2),
        .out_c0_exe3(bb_stencil_2d_B2_stall_region_out_c0_exe3),
        .out_c0_exe4(bb_stencil_2d_B2_stall_region_out_c0_exe4),
        .out_feedback_stall_out_14(bb_stencil_2d_B2_stall_region_out_feedback_stall_out_14),
        .out_memdep_phi1_pop14(bb_stencil_2d_B2_stall_region_out_memdep_phi1_pop14),
        .out_pipeline_valid_out(bb_stencil_2d_B2_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_stencil_2d_B2_stall_region_out_stall_out),
        .out_valid_out(bb_stencil_2d_B2_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_14_sync(GPOUT,4)
    assign out_feedback_stall_out_14 = bb_stencil_2d_B2_stall_region_out_feedback_stall_out_14;

    // out_c0_exe1156(GPOUT,11)
    assign out_c0_exe1156 = stencil_2d_B2_branch_out_c0_exe1156;

    // out_c0_exe2(GPOUT,12)
    assign out_c0_exe2 = stencil_2d_B2_branch_out_c0_exe2;

    // out_c0_exe3(GPOUT,13)
    assign out_c0_exe3 = stencil_2d_B2_branch_out_c0_exe3;

    // out_c0_exe4(GPOUT,14)
    assign out_c0_exe4 = stencil_2d_B2_branch_out_c0_exe4;

    // out_exiting_stall_out(GPOUT,15)
    assign out_exiting_stall_out = bb_stencil_2d_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going29_stencil_2d2_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,16)
    assign out_exiting_valid_out = bb_stencil_2d_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going29_stencil_2d2_exiting_valid_out;

    // out_memdep_phi1_pop14(GPOUT,17)
    assign out_memdep_phi1_pop14 = stencil_2d_B2_branch_out_memdep_phi1_pop14;

    // out_stall_out_0(GPOUT,18)
    assign out_stall_out_0 = stencil_2d_B2_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,19)
    assign out_stall_out_1 = stencil_2d_B2_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,20)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,21)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,22)
    assign out_valid_out_0 = stencil_2d_B2_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,24)
    assign out_pipeline_valid_out = bb_stencil_2d_B2_stall_region_out_pipeline_valid_out;

endmodule
