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

// SystemVerilog created from bb_kernel_3mm_B2
// Created for function/kernel kernel_3mm
// SystemVerilog created on Fri Apr  7 18:25:07 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_bb_B2 (
    input wire [0:0] in_forked81132_0,
    input wire [0:0] in_forked81132_1,
    input wire [0:0] in_forked82_0,
    input wire [0:0] in_forked82_1,
    input wire [0:0] in_memdep_phi2_pop18146_0,
    input wire [0:0] in_memdep_phi2_pop18146_1,
    input wire [0:0] in_memdep_phi3_pop19153_0,
    input wire [0:0] in_memdep_phi3_pop19153_1,
    input wire [0:0] in_memdep_phi5_pop20160_0,
    input wire [0:0] in_memdep_phi5_pop20160_1,
    input wire [0:0] in_memdep_phi_pop17139_0,
    input wire [0:0] in_memdep_phi_pop17139_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe10,
    output wire [0:0] out_c0_exe11,
    output wire [0:0] out_c0_exe12,
    output wire [31:0] out_c0_exe1291,
    output wire [0:0] out_c0_exe13,
    output wire [0:0] out_c0_exe3,
    output wire [0:0] out_c0_exe4,
    output wire [0:0] out_c0_exe5,
    output wire [0:0] out_c0_exe6,
    output wire [0:0] out_c0_exe7,
    output wire [0:0] out_c0_exe8,
    output wire [0:0] out_c0_exe9,
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

    wire [0:0] bb_kernel_3mm_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going75_kernel_3mm2_exiting_stall_out;
    wire [0:0] bb_kernel_3mm_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going75_kernel_3mm2_exiting_valid_out;
    wire [0:0] bb_kernel_3mm_B2_stall_region_out_c0_exe10;
    wire [0:0] bb_kernel_3mm_B2_stall_region_out_c0_exe11;
    wire [0:0] bb_kernel_3mm_B2_stall_region_out_c0_exe12;
    wire [31:0] bb_kernel_3mm_B2_stall_region_out_c0_exe1291;
    wire [0:0] bb_kernel_3mm_B2_stall_region_out_c0_exe13;
    wire [0:0] bb_kernel_3mm_B2_stall_region_out_c0_exe3;
    wire [0:0] bb_kernel_3mm_B2_stall_region_out_c0_exe4;
    wire [0:0] bb_kernel_3mm_B2_stall_region_out_c0_exe5;
    wire [0:0] bb_kernel_3mm_B2_stall_region_out_c0_exe6;
    wire [0:0] bb_kernel_3mm_B2_stall_region_out_c0_exe7;
    wire [0:0] bb_kernel_3mm_B2_stall_region_out_c0_exe8;
    wire [0:0] bb_kernel_3mm_B2_stall_region_out_c0_exe9;
    wire [0:0] bb_kernel_3mm_B2_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_kernel_3mm_B2_stall_region_out_stall_out;
    wire [0:0] bb_kernel_3mm_B2_stall_region_out_valid_out;
    wire [0:0] kernel_3mm_B2_branch_out_c0_exe10;
    wire [0:0] kernel_3mm_B2_branch_out_c0_exe11;
    wire [0:0] kernel_3mm_B2_branch_out_c0_exe12;
    wire [31:0] kernel_3mm_B2_branch_out_c0_exe1291;
    wire [0:0] kernel_3mm_B2_branch_out_c0_exe13;
    wire [0:0] kernel_3mm_B2_branch_out_c0_exe3;
    wire [0:0] kernel_3mm_B2_branch_out_c0_exe4;
    wire [0:0] kernel_3mm_B2_branch_out_c0_exe5;
    wire [0:0] kernel_3mm_B2_branch_out_c0_exe6;
    wire [0:0] kernel_3mm_B2_branch_out_c0_exe7;
    wire [0:0] kernel_3mm_B2_branch_out_c0_exe8;
    wire [0:0] kernel_3mm_B2_branch_out_c0_exe9;
    wire [0:0] kernel_3mm_B2_branch_out_stall_out;
    wire [0:0] kernel_3mm_B2_branch_out_valid_out_0;
    wire [0:0] kernel_3mm_B2_merge_out_forked81132;
    wire [0:0] kernel_3mm_B2_merge_out_forked82;
    wire [0:0] kernel_3mm_B2_merge_out_memdep_phi2_pop18146;
    wire [0:0] kernel_3mm_B2_merge_out_memdep_phi3_pop19153;
    wire [0:0] kernel_3mm_B2_merge_out_memdep_phi5_pop20160;
    wire [0:0] kernel_3mm_B2_merge_out_memdep_phi_pop17139;
    wire [0:0] kernel_3mm_B2_merge_out_stall_out_0;
    wire [0:0] kernel_3mm_B2_merge_out_stall_out_1;
    wire [0:0] kernel_3mm_B2_merge_out_valid_out;


    // kernel_3mm_B2_merge(BLACKBOX,19)
    kernel_3mm_B2_merge thekernel_3mm_B2_merge (
        .in_forked81132_0(in_forked81132_0),
        .in_forked81132_1(in_forked81132_1),
        .in_forked82_0(in_forked82_0),
        .in_forked82_1(in_forked82_1),
        .in_memdep_phi2_pop18146_0(in_memdep_phi2_pop18146_0),
        .in_memdep_phi2_pop18146_1(in_memdep_phi2_pop18146_1),
        .in_memdep_phi3_pop19153_0(in_memdep_phi3_pop19153_0),
        .in_memdep_phi3_pop19153_1(in_memdep_phi3_pop19153_1),
        .in_memdep_phi5_pop20160_0(in_memdep_phi5_pop20160_0),
        .in_memdep_phi5_pop20160_1(in_memdep_phi5_pop20160_1),
        .in_memdep_phi_pop17139_0(in_memdep_phi_pop17139_0),
        .in_memdep_phi_pop17139_1(in_memdep_phi_pop17139_1),
        .in_stall_in(bb_kernel_3mm_B2_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked81132(kernel_3mm_B2_merge_out_forked81132),
        .out_forked82(kernel_3mm_B2_merge_out_forked82),
        .out_memdep_phi2_pop18146(kernel_3mm_B2_merge_out_memdep_phi2_pop18146),
        .out_memdep_phi3_pop19153(kernel_3mm_B2_merge_out_memdep_phi3_pop19153),
        .out_memdep_phi5_pop20160(kernel_3mm_B2_merge_out_memdep_phi5_pop20160),
        .out_memdep_phi_pop17139(kernel_3mm_B2_merge_out_memdep_phi_pop17139),
        .out_stall_out_0(kernel_3mm_B2_merge_out_stall_out_0),
        .out_stall_out_1(kernel_3mm_B2_merge_out_stall_out_1),
        .out_valid_out(kernel_3mm_B2_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B2_stall_region(BLACKBOX,2)
    kernel_3mm_bb_B2_stall_region thebb_kernel_3mm_B2_stall_region (
        .in_forked81132(kernel_3mm_B2_merge_out_forked81132),
        .in_forked82(kernel_3mm_B2_merge_out_forked82),
        .in_memdep_phi2_pop18146(kernel_3mm_B2_merge_out_memdep_phi2_pop18146),
        .in_memdep_phi3_pop19153(kernel_3mm_B2_merge_out_memdep_phi3_pop19153),
        .in_memdep_phi5_pop20160(kernel_3mm_B2_merge_out_memdep_phi5_pop20160),
        .in_memdep_phi_pop17139(kernel_3mm_B2_merge_out_memdep_phi_pop17139),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(kernel_3mm_B2_branch_out_stall_out),
        .in_valid_in(kernel_3mm_B2_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going75_kernel_3mm2_exiting_stall_out(bb_kernel_3mm_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going75_kernel_3mm2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going75_kernel_3mm2_exiting_valid_out(bb_kernel_3mm_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going75_kernel_3mm2_exiting_valid_out),
        .out_c0_exe10(bb_kernel_3mm_B2_stall_region_out_c0_exe10),
        .out_c0_exe11(bb_kernel_3mm_B2_stall_region_out_c0_exe11),
        .out_c0_exe12(bb_kernel_3mm_B2_stall_region_out_c0_exe12),
        .out_c0_exe1291(bb_kernel_3mm_B2_stall_region_out_c0_exe1291),
        .out_c0_exe13(bb_kernel_3mm_B2_stall_region_out_c0_exe13),
        .out_c0_exe3(bb_kernel_3mm_B2_stall_region_out_c0_exe3),
        .out_c0_exe4(bb_kernel_3mm_B2_stall_region_out_c0_exe4),
        .out_c0_exe5(bb_kernel_3mm_B2_stall_region_out_c0_exe5),
        .out_c0_exe6(bb_kernel_3mm_B2_stall_region_out_c0_exe6),
        .out_c0_exe7(bb_kernel_3mm_B2_stall_region_out_c0_exe7),
        .out_c0_exe8(bb_kernel_3mm_B2_stall_region_out_c0_exe8),
        .out_c0_exe9(bb_kernel_3mm_B2_stall_region_out_c0_exe9),
        .out_pipeline_valid_out(bb_kernel_3mm_B2_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_kernel_3mm_B2_stall_region_out_stall_out),
        .out_valid_out(bb_kernel_3mm_B2_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_3mm_B2_branch(BLACKBOX,18)
    kernel_3mm_B2_branch thekernel_3mm_B2_branch (
        .in_c0_exe10(bb_kernel_3mm_B2_stall_region_out_c0_exe10),
        .in_c0_exe11(bb_kernel_3mm_B2_stall_region_out_c0_exe11),
        .in_c0_exe12(bb_kernel_3mm_B2_stall_region_out_c0_exe12),
        .in_c0_exe1291(bb_kernel_3mm_B2_stall_region_out_c0_exe1291),
        .in_c0_exe13(bb_kernel_3mm_B2_stall_region_out_c0_exe13),
        .in_c0_exe3(bb_kernel_3mm_B2_stall_region_out_c0_exe3),
        .in_c0_exe4(bb_kernel_3mm_B2_stall_region_out_c0_exe4),
        .in_c0_exe5(bb_kernel_3mm_B2_stall_region_out_c0_exe5),
        .in_c0_exe6(bb_kernel_3mm_B2_stall_region_out_c0_exe6),
        .in_c0_exe7(bb_kernel_3mm_B2_stall_region_out_c0_exe7),
        .in_c0_exe8(bb_kernel_3mm_B2_stall_region_out_c0_exe8),
        .in_c0_exe9(bb_kernel_3mm_B2_stall_region_out_c0_exe9),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_kernel_3mm_B2_stall_region_out_valid_out),
        .out_c0_exe10(kernel_3mm_B2_branch_out_c0_exe10),
        .out_c0_exe11(kernel_3mm_B2_branch_out_c0_exe11),
        .out_c0_exe12(kernel_3mm_B2_branch_out_c0_exe12),
        .out_c0_exe1291(kernel_3mm_B2_branch_out_c0_exe1291),
        .out_c0_exe13(kernel_3mm_B2_branch_out_c0_exe13),
        .out_c0_exe3(kernel_3mm_B2_branch_out_c0_exe3),
        .out_c0_exe4(kernel_3mm_B2_branch_out_c0_exe4),
        .out_c0_exe5(kernel_3mm_B2_branch_out_c0_exe5),
        .out_c0_exe6(kernel_3mm_B2_branch_out_c0_exe6),
        .out_c0_exe7(kernel_3mm_B2_branch_out_c0_exe7),
        .out_c0_exe8(kernel_3mm_B2_branch_out_c0_exe8),
        .out_c0_exe9(kernel_3mm_B2_branch_out_c0_exe9),
        .out_stall_out(kernel_3mm_B2_branch_out_stall_out),
        .out_valid_out_0(kernel_3mm_B2_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe10(GPOUT,20)
    assign out_c0_exe10 = kernel_3mm_B2_branch_out_c0_exe10;

    // out_c0_exe11(GPOUT,21)
    assign out_c0_exe11 = kernel_3mm_B2_branch_out_c0_exe11;

    // out_c0_exe12(GPOUT,22)
    assign out_c0_exe12 = kernel_3mm_B2_branch_out_c0_exe12;

    // out_c0_exe1291(GPOUT,23)
    assign out_c0_exe1291 = kernel_3mm_B2_branch_out_c0_exe1291;

    // out_c0_exe13(GPOUT,24)
    assign out_c0_exe13 = kernel_3mm_B2_branch_out_c0_exe13;

    // out_c0_exe3(GPOUT,25)
    assign out_c0_exe3 = kernel_3mm_B2_branch_out_c0_exe3;

    // out_c0_exe4(GPOUT,26)
    assign out_c0_exe4 = kernel_3mm_B2_branch_out_c0_exe4;

    // out_c0_exe5(GPOUT,27)
    assign out_c0_exe5 = kernel_3mm_B2_branch_out_c0_exe5;

    // out_c0_exe6(GPOUT,28)
    assign out_c0_exe6 = kernel_3mm_B2_branch_out_c0_exe6;

    // out_c0_exe7(GPOUT,29)
    assign out_c0_exe7 = kernel_3mm_B2_branch_out_c0_exe7;

    // out_c0_exe8(GPOUT,30)
    assign out_c0_exe8 = kernel_3mm_B2_branch_out_c0_exe8;

    // out_c0_exe9(GPOUT,31)
    assign out_c0_exe9 = kernel_3mm_B2_branch_out_c0_exe9;

    // out_exiting_stall_out(GPOUT,32)
    assign out_exiting_stall_out = bb_kernel_3mm_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going75_kernel_3mm2_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,33)
    assign out_exiting_valid_out = bb_kernel_3mm_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going75_kernel_3mm2_exiting_valid_out;

    // out_stall_out_0(GPOUT,34)
    assign out_stall_out_0 = kernel_3mm_B2_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,35)
    assign out_stall_out_1 = kernel_3mm_B2_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,36)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,37)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,38)
    assign out_valid_out_0 = kernel_3mm_B2_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,40)
    assign out_pipeline_valid_out = bb_kernel_3mm_B2_stall_region_out_pipeline_valid_out;

endmodule
