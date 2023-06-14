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

// SystemVerilog created from bb_covariance_B3
// Created for function/kernel covariance
// SystemVerilog created on Tue Jun 13 02:07:48 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_bb_B3 (
    input wire [0:0] in_feedback_in_20,
    output wire [0:0] out_feedback_stall_out_20,
    input wire [0:0] in_feedback_valid_in_20,
    input wire [0:0] in_forked78_0,
    input wire [0:0] in_forked78_1,
    input wire [31:0] in_lim_ext113_0,
    input wire [31:0] in_lim_ext113_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe1207,
    output wire [0:0] out_c0_exe2208,
    output wire [31:0] out_c0_exe3,
    output wire [31:0] out_c0_exe4,
    output wire [31:0] out_c0_exe6,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_memdep_phi_pop20,
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

    wire [0:0] bb_covariance_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_covariance2_exiting_stall_out;
    wire [0:0] bb_covariance_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_covariance2_exiting_valid_out;
    wire [0:0] bb_covariance_B3_stall_region_out_c0_exe1207;
    wire [0:0] bb_covariance_B3_stall_region_out_c0_exe2208;
    wire [31:0] bb_covariance_B3_stall_region_out_c0_exe3;
    wire [31:0] bb_covariance_B3_stall_region_out_c0_exe4;
    wire [31:0] bb_covariance_B3_stall_region_out_c0_exe6;
    wire [0:0] bb_covariance_B3_stall_region_out_feedback_stall_out_20;
    wire [0:0] bb_covariance_B3_stall_region_out_memdep_phi_pop20;
    wire [0:0] bb_covariance_B3_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_covariance_B3_stall_region_out_stall_out;
    wire [0:0] bb_covariance_B3_stall_region_out_valid_out;
    wire [0:0] covariance_B3_branch_out_c0_exe1207;
    wire [0:0] covariance_B3_branch_out_c0_exe2208;
    wire [31:0] covariance_B3_branch_out_c0_exe3;
    wire [31:0] covariance_B3_branch_out_c0_exe4;
    wire [31:0] covariance_B3_branch_out_c0_exe6;
    wire [0:0] covariance_B3_branch_out_memdep_phi_pop20;
    wire [0:0] covariance_B3_branch_out_stall_out;
    wire [0:0] covariance_B3_branch_out_valid_out_0;
    wire [0:0] covariance_B3_merge_out_forked78;
    wire [31:0] covariance_B3_merge_out_lim_ext113;
    wire [0:0] covariance_B3_merge_out_stall_out_0;
    wire [0:0] covariance_B3_merge_out_stall_out_1;
    wire [0:0] covariance_B3_merge_out_valid_out;


    // covariance_B3_branch(BLACKBOX,3)
    covariance_B3_branch thecovariance_B3_branch (
        .in_c0_exe1207(bb_covariance_B3_stall_region_out_c0_exe1207),
        .in_c0_exe2208(bb_covariance_B3_stall_region_out_c0_exe2208),
        .in_c0_exe3(bb_covariance_B3_stall_region_out_c0_exe3),
        .in_c0_exe4(bb_covariance_B3_stall_region_out_c0_exe4),
        .in_c0_exe6(bb_covariance_B3_stall_region_out_c0_exe6),
        .in_memdep_phi_pop20(bb_covariance_B3_stall_region_out_memdep_phi_pop20),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_covariance_B3_stall_region_out_valid_out),
        .out_c0_exe1207(covariance_B3_branch_out_c0_exe1207),
        .out_c0_exe2208(covariance_B3_branch_out_c0_exe2208),
        .out_c0_exe3(covariance_B3_branch_out_c0_exe3),
        .out_c0_exe4(covariance_B3_branch_out_c0_exe4),
        .out_c0_exe6(covariance_B3_branch_out_c0_exe6),
        .out_memdep_phi_pop20(covariance_B3_branch_out_memdep_phi_pop20),
        .out_stall_out(covariance_B3_branch_out_stall_out),
        .out_valid_out_0(covariance_B3_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // covariance_B3_merge(BLACKBOX,4)
    covariance_B3_merge thecovariance_B3_merge (
        .in_forked78_0(in_forked78_0),
        .in_forked78_1(in_forked78_1),
        .in_lim_ext113_0(in_lim_ext113_0),
        .in_lim_ext113_1(in_lim_ext113_1),
        .in_stall_in(bb_covariance_B3_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked78(covariance_B3_merge_out_forked78),
        .out_lim_ext113(covariance_B3_merge_out_lim_ext113),
        .out_stall_out_0(covariance_B3_merge_out_stall_out_0),
        .out_stall_out_1(covariance_B3_merge_out_stall_out_1),
        .out_valid_out(covariance_B3_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B3_stall_region(BLACKBOX,2)
    covariance_bb_B3_stall_region thebb_covariance_B3_stall_region (
        .in_feedback_in_20(in_feedback_in_20),
        .in_feedback_valid_in_20(in_feedback_valid_in_20),
        .in_forked78(covariance_B3_merge_out_forked78),
        .in_lim_ext113(covariance_B3_merge_out_lim_ext113),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(covariance_B3_branch_out_stall_out),
        .in_valid_in(covariance_B3_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_covariance2_exiting_stall_out(bb_covariance_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_covariance2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_covariance2_exiting_valid_out(bb_covariance_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_covariance2_exiting_valid_out),
        .out_c0_exe1207(bb_covariance_B3_stall_region_out_c0_exe1207),
        .out_c0_exe2208(bb_covariance_B3_stall_region_out_c0_exe2208),
        .out_c0_exe3(bb_covariance_B3_stall_region_out_c0_exe3),
        .out_c0_exe4(bb_covariance_B3_stall_region_out_c0_exe4),
        .out_c0_exe6(bb_covariance_B3_stall_region_out_c0_exe6),
        .out_feedback_stall_out_20(bb_covariance_B3_stall_region_out_feedback_stall_out_20),
        .out_memdep_phi_pop20(bb_covariance_B3_stall_region_out_memdep_phi_pop20),
        .out_pipeline_valid_out(bb_covariance_B3_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_covariance_B3_stall_region_out_stall_out),
        .out_valid_out(bb_covariance_B3_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_20_sync(GPOUT,6)
    assign out_feedback_stall_out_20 = bb_covariance_B3_stall_region_out_feedback_stall_out_20;

    // out_c0_exe1207(GPOUT,15)
    assign out_c0_exe1207 = covariance_B3_branch_out_c0_exe1207;

    // out_c0_exe2208(GPOUT,16)
    assign out_c0_exe2208 = covariance_B3_branch_out_c0_exe2208;

    // out_c0_exe3(GPOUT,17)
    assign out_c0_exe3 = covariance_B3_branch_out_c0_exe3;

    // out_c0_exe4(GPOUT,18)
    assign out_c0_exe4 = covariance_B3_branch_out_c0_exe4;

    // out_c0_exe6(GPOUT,19)
    assign out_c0_exe6 = covariance_B3_branch_out_c0_exe6;

    // out_exiting_stall_out(GPOUT,20)
    assign out_exiting_stall_out = bb_covariance_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_covariance2_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,21)
    assign out_exiting_valid_out = bb_covariance_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_covariance2_exiting_valid_out;

    // out_memdep_phi_pop20(GPOUT,22)
    assign out_memdep_phi_pop20 = covariance_B3_branch_out_memdep_phi_pop20;

    // out_stall_out_0(GPOUT,23)
    assign out_stall_out_0 = covariance_B3_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,24)
    assign out_stall_out_1 = covariance_B3_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,25)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,26)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,27)
    assign out_valid_out_0 = covariance_B3_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,29)
    assign out_pipeline_valid_out = bb_covariance_B3_stall_region_out_pipeline_valid_out;

endmodule
