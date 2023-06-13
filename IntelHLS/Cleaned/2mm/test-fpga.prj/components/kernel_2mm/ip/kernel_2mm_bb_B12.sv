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

// SystemVerilog created from bb_kernel_2mm_B12
// Created for function/kernel kernel_2mm
// SystemVerilog created on Tue Jun 13 01:31:47 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_2mm_bb_B12 (
    input wire [0:0] in_feedback_in_26,
    output wire [0:0] out_feedback_stall_out_26,
    input wire [0:0] in_feedback_valid_in_26,
    input wire [0:0] in_forked104_0,
    input wire [0:0] in_forked104_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c0_exe1272,
    output wire [31:0] out_c0_exe2273,
    output wire [0:0] out_c0_exe3274,
    output wire [0:0] out_c0_exe4275,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_memdep_phi3_pop26,
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

    wire [0:0] bb_kernel_2mm_B12_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_kernel_2mm2_exiting_stall_out;
    wire [0:0] bb_kernel_2mm_B12_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_kernel_2mm2_exiting_valid_out;
    wire [31:0] bb_kernel_2mm_B12_stall_region_out_c0_exe1272;
    wire [31:0] bb_kernel_2mm_B12_stall_region_out_c0_exe2273;
    wire [0:0] bb_kernel_2mm_B12_stall_region_out_c0_exe3274;
    wire [0:0] bb_kernel_2mm_B12_stall_region_out_c0_exe4275;
    wire [0:0] bb_kernel_2mm_B12_stall_region_out_feedback_stall_out_26;
    wire [0:0] bb_kernel_2mm_B12_stall_region_out_memdep_phi3_pop26;
    wire [0:0] bb_kernel_2mm_B12_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_kernel_2mm_B12_stall_region_out_stall_out;
    wire [0:0] bb_kernel_2mm_B12_stall_region_out_valid_out;
    wire [31:0] kernel_2mm_B12_branch_out_c0_exe1272;
    wire [31:0] kernel_2mm_B12_branch_out_c0_exe2273;
    wire [0:0] kernel_2mm_B12_branch_out_c0_exe3274;
    wire [0:0] kernel_2mm_B12_branch_out_c0_exe4275;
    wire [0:0] kernel_2mm_B12_branch_out_memdep_phi3_pop26;
    wire [0:0] kernel_2mm_B12_branch_out_stall_out;
    wire [0:0] kernel_2mm_B12_branch_out_valid_out_0;
    wire [0:0] kernel_2mm_B12_merge_out_forked104;
    wire [0:0] kernel_2mm_B12_merge_out_stall_out_0;
    wire [0:0] kernel_2mm_B12_merge_out_stall_out_1;
    wire [0:0] kernel_2mm_B12_merge_out_valid_out;


    // kernel_2mm_B12_branch(BLACKBOX,11)
    kernel_2mm_B12_branch thekernel_2mm_B12_branch (
        .in_c0_exe1272(bb_kernel_2mm_B12_stall_region_out_c0_exe1272),
        .in_c0_exe2273(bb_kernel_2mm_B12_stall_region_out_c0_exe2273),
        .in_c0_exe3274(bb_kernel_2mm_B12_stall_region_out_c0_exe3274),
        .in_c0_exe4275(bb_kernel_2mm_B12_stall_region_out_c0_exe4275),
        .in_memdep_phi3_pop26(bb_kernel_2mm_B12_stall_region_out_memdep_phi3_pop26),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_kernel_2mm_B12_stall_region_out_valid_out),
        .out_c0_exe1272(kernel_2mm_B12_branch_out_c0_exe1272),
        .out_c0_exe2273(kernel_2mm_B12_branch_out_c0_exe2273),
        .out_c0_exe3274(kernel_2mm_B12_branch_out_c0_exe3274),
        .out_c0_exe4275(kernel_2mm_B12_branch_out_c0_exe4275),
        .out_memdep_phi3_pop26(kernel_2mm_B12_branch_out_memdep_phi3_pop26),
        .out_stall_out(kernel_2mm_B12_branch_out_stall_out),
        .out_valid_out_0(kernel_2mm_B12_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_2mm_B12_merge(BLACKBOX,12)
    kernel_2mm_B12_merge thekernel_2mm_B12_merge (
        .in_forked104_0(in_forked104_0),
        .in_forked104_1(in_forked104_1),
        .in_stall_in(bb_kernel_2mm_B12_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked104(kernel_2mm_B12_merge_out_forked104),
        .out_stall_out_0(kernel_2mm_B12_merge_out_stall_out_0),
        .out_stall_out_1(kernel_2mm_B12_merge_out_stall_out_1),
        .out_valid_out(kernel_2mm_B12_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B12_stall_region(BLACKBOX,2)
    kernel_2mm_bb_B12_stall_region thebb_kernel_2mm_B12_stall_region (
        .in_feedback_in_26(in_feedback_in_26),
        .in_feedback_valid_in_26(in_feedback_valid_in_26),
        .in_forked104(kernel_2mm_B12_merge_out_forked104),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(kernel_2mm_B12_branch_out_stall_out),
        .in_valid_in(kernel_2mm_B12_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_kernel_2mm2_exiting_stall_out(bb_kernel_2mm_B12_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_kernel_2mm2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_kernel_2mm2_exiting_valid_out(bb_kernel_2mm_B12_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_kernel_2mm2_exiting_valid_out),
        .out_c0_exe1272(bb_kernel_2mm_B12_stall_region_out_c0_exe1272),
        .out_c0_exe2273(bb_kernel_2mm_B12_stall_region_out_c0_exe2273),
        .out_c0_exe3274(bb_kernel_2mm_B12_stall_region_out_c0_exe3274),
        .out_c0_exe4275(bb_kernel_2mm_B12_stall_region_out_c0_exe4275),
        .out_feedback_stall_out_26(bb_kernel_2mm_B12_stall_region_out_feedback_stall_out_26),
        .out_memdep_phi3_pop26(bb_kernel_2mm_B12_stall_region_out_memdep_phi3_pop26),
        .out_pipeline_valid_out(bb_kernel_2mm_B12_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_kernel_2mm_B12_stall_region_out_stall_out),
        .out_valid_out(bb_kernel_2mm_B12_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_26_sync(GPOUT,4)
    assign out_feedback_stall_out_26 = bb_kernel_2mm_B12_stall_region_out_feedback_stall_out_26;

    // out_c0_exe1272(GPOUT,13)
    assign out_c0_exe1272 = kernel_2mm_B12_branch_out_c0_exe1272;

    // out_c0_exe2273(GPOUT,14)
    assign out_c0_exe2273 = kernel_2mm_B12_branch_out_c0_exe2273;

    // out_c0_exe3274(GPOUT,15)
    assign out_c0_exe3274 = kernel_2mm_B12_branch_out_c0_exe3274;

    // out_c0_exe4275(GPOUT,16)
    assign out_c0_exe4275 = kernel_2mm_B12_branch_out_c0_exe4275;

    // out_exiting_stall_out(GPOUT,17)
    assign out_exiting_stall_out = bb_kernel_2mm_B12_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_kernel_2mm2_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,18)
    assign out_exiting_valid_out = bb_kernel_2mm_B12_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_kernel_2mm2_exiting_valid_out;

    // out_memdep_phi3_pop26(GPOUT,19)
    assign out_memdep_phi3_pop26 = kernel_2mm_B12_branch_out_memdep_phi3_pop26;

    // out_stall_out_0(GPOUT,20)
    assign out_stall_out_0 = kernel_2mm_B12_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,21)
    assign out_stall_out_1 = kernel_2mm_B12_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,22)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,23)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,24)
    assign out_valid_out_0 = kernel_2mm_B12_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,26)
    assign out_pipeline_valid_out = bb_kernel_2mm_B12_stall_region_out_pipeline_valid_out;

endmodule
