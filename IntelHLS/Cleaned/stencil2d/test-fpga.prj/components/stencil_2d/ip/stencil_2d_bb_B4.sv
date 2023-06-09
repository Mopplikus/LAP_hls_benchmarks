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

// SystemVerilog created from bb_stencil_2d_B4
// Created for function/kernel stencil_2d
// SystemVerilog created on Tue Jun 13 03:01:27 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_bb_B4 (
    input wire [0:0] in_feedback_in_17,
    output wire [0:0] out_feedback_stall_out_17,
    input wire [0:0] in_feedback_valid_in_17,
    input wire [0:0] in_exitcond1179_0,
    input wire [0:0] in_exitcond1179_1,
    input wire [0:0] in_forked38_0,
    input wire [0:0] in_forked38_1,
    input wire [0:0] in_memdep_phi1_pop1489_0,
    input wire [0:0] in_memdep_phi1_pop1489_1,
    input wire [31:0] in_mul2474_0,
    input wire [31:0] in_mul2474_1,
    input wire [0:0] in_notcmp2784_0,
    input wire [0:0] in_notcmp2784_1,
    input wire [31:0] in_r_044_pop1369_0,
    input wire [31:0] in_r_044_pop1369_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c0_exe10,
    output wire [31:0] out_c0_exe11,
    output wire [0:0] out_c0_exe1166,
    output wire [0:0] out_c0_exe12,
    output wire [0:0] out_c0_exe13,
    output wire [0:0] out_c0_exe14,
    output wire [0:0] out_c0_exe2167,
    output wire [31:0] out_c0_exe3168,
    output wire [31:0] out_c0_exe4169,
    output wire [31:0] out_c0_exe5170,
    output wire [0:0] out_c0_exe6,
    output wire [0:0] out_c0_exe7,
    output wire [0:0] out_c0_exe8,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_memdep_phi_pop17,
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

    wire [0:0] bb_stencil_2d_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going24_stencil_2d2_exiting_stall_out;
    wire [0:0] bb_stencil_2d_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going24_stencil_2d2_exiting_valid_out;
    wire [31:0] bb_stencil_2d_B4_stall_region_out_c0_exe10;
    wire [31:0] bb_stencil_2d_B4_stall_region_out_c0_exe11;
    wire [0:0] bb_stencil_2d_B4_stall_region_out_c0_exe1166;
    wire [0:0] bb_stencil_2d_B4_stall_region_out_c0_exe12;
    wire [0:0] bb_stencil_2d_B4_stall_region_out_c0_exe13;
    wire [0:0] bb_stencil_2d_B4_stall_region_out_c0_exe14;
    wire [0:0] bb_stencil_2d_B4_stall_region_out_c0_exe2167;
    wire [31:0] bb_stencil_2d_B4_stall_region_out_c0_exe3168;
    wire [31:0] bb_stencil_2d_B4_stall_region_out_c0_exe4169;
    wire [31:0] bb_stencil_2d_B4_stall_region_out_c0_exe5170;
    wire [0:0] bb_stencil_2d_B4_stall_region_out_c0_exe6;
    wire [0:0] bb_stencil_2d_B4_stall_region_out_c0_exe7;
    wire [0:0] bb_stencil_2d_B4_stall_region_out_c0_exe8;
    wire [0:0] bb_stencil_2d_B4_stall_region_out_feedback_stall_out_17;
    wire [0:0] bb_stencil_2d_B4_stall_region_out_memdep_phi_pop17;
    wire [0:0] bb_stencil_2d_B4_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_stencil_2d_B4_stall_region_out_stall_out;
    wire [0:0] bb_stencil_2d_B4_stall_region_out_valid_out;
    wire [31:0] stencil_2d_B4_branch_out_c0_exe10;
    wire [31:0] stencil_2d_B4_branch_out_c0_exe11;
    wire [0:0] stencil_2d_B4_branch_out_c0_exe1166;
    wire [0:0] stencil_2d_B4_branch_out_c0_exe12;
    wire [0:0] stencil_2d_B4_branch_out_c0_exe13;
    wire [0:0] stencil_2d_B4_branch_out_c0_exe14;
    wire [0:0] stencil_2d_B4_branch_out_c0_exe2167;
    wire [31:0] stencil_2d_B4_branch_out_c0_exe3168;
    wire [31:0] stencil_2d_B4_branch_out_c0_exe4169;
    wire [31:0] stencil_2d_B4_branch_out_c0_exe5170;
    wire [0:0] stencil_2d_B4_branch_out_c0_exe6;
    wire [0:0] stencil_2d_B4_branch_out_c0_exe7;
    wire [0:0] stencil_2d_B4_branch_out_c0_exe8;
    wire [0:0] stencil_2d_B4_branch_out_memdep_phi_pop17;
    wire [0:0] stencil_2d_B4_branch_out_stall_out;
    wire [0:0] stencil_2d_B4_branch_out_valid_out_0;
    wire [0:0] stencil_2d_B4_merge_out_exitcond1179;
    wire [0:0] stencil_2d_B4_merge_out_forked38;
    wire [0:0] stencil_2d_B4_merge_out_memdep_phi1_pop1489;
    wire [31:0] stencil_2d_B4_merge_out_mul2474;
    wire [0:0] stencil_2d_B4_merge_out_notcmp2784;
    wire [31:0] stencil_2d_B4_merge_out_r_044_pop1369;
    wire [0:0] stencil_2d_B4_merge_out_stall_out_0;
    wire [0:0] stencil_2d_B4_merge_out_stall_out_1;
    wire [0:0] stencil_2d_B4_merge_out_valid_out;


    // stencil_2d_B4_branch(BLACKBOX,44)
    stencil_2d_B4_branch thestencil_2d_B4_branch (
        .in_c0_exe10(bb_stencil_2d_B4_stall_region_out_c0_exe10),
        .in_c0_exe11(bb_stencil_2d_B4_stall_region_out_c0_exe11),
        .in_c0_exe1166(bb_stencil_2d_B4_stall_region_out_c0_exe1166),
        .in_c0_exe12(bb_stencil_2d_B4_stall_region_out_c0_exe12),
        .in_c0_exe13(bb_stencil_2d_B4_stall_region_out_c0_exe13),
        .in_c0_exe14(bb_stencil_2d_B4_stall_region_out_c0_exe14),
        .in_c0_exe2167(bb_stencil_2d_B4_stall_region_out_c0_exe2167),
        .in_c0_exe3168(bb_stencil_2d_B4_stall_region_out_c0_exe3168),
        .in_c0_exe4169(bb_stencil_2d_B4_stall_region_out_c0_exe4169),
        .in_c0_exe5170(bb_stencil_2d_B4_stall_region_out_c0_exe5170),
        .in_c0_exe6(bb_stencil_2d_B4_stall_region_out_c0_exe6),
        .in_c0_exe7(bb_stencil_2d_B4_stall_region_out_c0_exe7),
        .in_c0_exe8(bb_stencil_2d_B4_stall_region_out_c0_exe8),
        .in_memdep_phi_pop17(bb_stencil_2d_B4_stall_region_out_memdep_phi_pop17),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_stencil_2d_B4_stall_region_out_valid_out),
        .out_c0_exe10(stencil_2d_B4_branch_out_c0_exe10),
        .out_c0_exe11(stencil_2d_B4_branch_out_c0_exe11),
        .out_c0_exe1166(stencil_2d_B4_branch_out_c0_exe1166),
        .out_c0_exe12(stencil_2d_B4_branch_out_c0_exe12),
        .out_c0_exe13(stencil_2d_B4_branch_out_c0_exe13),
        .out_c0_exe14(stencil_2d_B4_branch_out_c0_exe14),
        .out_c0_exe2167(stencil_2d_B4_branch_out_c0_exe2167),
        .out_c0_exe3168(stencil_2d_B4_branch_out_c0_exe3168),
        .out_c0_exe4169(stencil_2d_B4_branch_out_c0_exe4169),
        .out_c0_exe5170(stencil_2d_B4_branch_out_c0_exe5170),
        .out_c0_exe6(stencil_2d_B4_branch_out_c0_exe6),
        .out_c0_exe7(stencil_2d_B4_branch_out_c0_exe7),
        .out_c0_exe8(stencil_2d_B4_branch_out_c0_exe8),
        .out_memdep_phi_pop17(stencil_2d_B4_branch_out_memdep_phi_pop17),
        .out_stall_out(stencil_2d_B4_branch_out_stall_out),
        .out_valid_out_0(stencil_2d_B4_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // stencil_2d_B4_merge(BLACKBOX,45)
    stencil_2d_B4_merge thestencil_2d_B4_merge (
        .in_exitcond1179_0(in_exitcond1179_0),
        .in_exitcond1179_1(in_exitcond1179_1),
        .in_forked38_0(in_forked38_0),
        .in_forked38_1(in_forked38_1),
        .in_memdep_phi1_pop1489_0(in_memdep_phi1_pop1489_0),
        .in_memdep_phi1_pop1489_1(in_memdep_phi1_pop1489_1),
        .in_mul2474_0(in_mul2474_0),
        .in_mul2474_1(in_mul2474_1),
        .in_notcmp2784_0(in_notcmp2784_0),
        .in_notcmp2784_1(in_notcmp2784_1),
        .in_r_044_pop1369_0(in_r_044_pop1369_0),
        .in_r_044_pop1369_1(in_r_044_pop1369_1),
        .in_stall_in(bb_stencil_2d_B4_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_exitcond1179(stencil_2d_B4_merge_out_exitcond1179),
        .out_forked38(stencil_2d_B4_merge_out_forked38),
        .out_memdep_phi1_pop1489(stencil_2d_B4_merge_out_memdep_phi1_pop1489),
        .out_mul2474(stencil_2d_B4_merge_out_mul2474),
        .out_notcmp2784(stencil_2d_B4_merge_out_notcmp2784),
        .out_r_044_pop1369(stencil_2d_B4_merge_out_r_044_pop1369),
        .out_stall_out_0(stencil_2d_B4_merge_out_stall_out_0),
        .out_stall_out_1(stencil_2d_B4_merge_out_stall_out_1),
        .out_valid_out(stencil_2d_B4_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B4_stall_region(BLACKBOX,2)
    stencil_2d_bb_B4_stall_region thebb_stencil_2d_B4_stall_region (
        .in_exitcond1179(stencil_2d_B4_merge_out_exitcond1179),
        .in_feedback_in_17(in_feedback_in_17),
        .in_feedback_valid_in_17(in_feedback_valid_in_17),
        .in_forked38(stencil_2d_B4_merge_out_forked38),
        .in_memdep_phi1_pop1489(stencil_2d_B4_merge_out_memdep_phi1_pop1489),
        .in_mul2474(stencil_2d_B4_merge_out_mul2474),
        .in_notcmp2784(stencil_2d_B4_merge_out_notcmp2784),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_r_044_pop1369(stencil_2d_B4_merge_out_r_044_pop1369),
        .in_stall_in(stencil_2d_B4_branch_out_stall_out),
        .in_valid_in(stencil_2d_B4_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going24_stencil_2d2_exiting_stall_out(bb_stencil_2d_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going24_stencil_2d2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going24_stencil_2d2_exiting_valid_out(bb_stencil_2d_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going24_stencil_2d2_exiting_valid_out),
        .out_c0_exe10(bb_stencil_2d_B4_stall_region_out_c0_exe10),
        .out_c0_exe11(bb_stencil_2d_B4_stall_region_out_c0_exe11),
        .out_c0_exe1166(bb_stencil_2d_B4_stall_region_out_c0_exe1166),
        .out_c0_exe12(bb_stencil_2d_B4_stall_region_out_c0_exe12),
        .out_c0_exe13(bb_stencil_2d_B4_stall_region_out_c0_exe13),
        .out_c0_exe14(bb_stencil_2d_B4_stall_region_out_c0_exe14),
        .out_c0_exe2167(bb_stencil_2d_B4_stall_region_out_c0_exe2167),
        .out_c0_exe3168(bb_stencil_2d_B4_stall_region_out_c0_exe3168),
        .out_c0_exe4169(bb_stencil_2d_B4_stall_region_out_c0_exe4169),
        .out_c0_exe5170(bb_stencil_2d_B4_stall_region_out_c0_exe5170),
        .out_c0_exe6(bb_stencil_2d_B4_stall_region_out_c0_exe6),
        .out_c0_exe7(bb_stencil_2d_B4_stall_region_out_c0_exe7),
        .out_c0_exe8(bb_stencil_2d_B4_stall_region_out_c0_exe8),
        .out_feedback_stall_out_17(bb_stencil_2d_B4_stall_region_out_feedback_stall_out_17),
        .out_memdep_phi_pop17(bb_stencil_2d_B4_stall_region_out_memdep_phi_pop17),
        .out_pipeline_valid_out(bb_stencil_2d_B4_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_stencil_2d_B4_stall_region_out_stall_out),
        .out_valid_out(bb_stencil_2d_B4_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_17_sync(GPOUT,4)
    assign out_feedback_stall_out_17 = bb_stencil_2d_B4_stall_region_out_feedback_stall_out_17;

    // out_c0_exe10(GPOUT,21)
    assign out_c0_exe10 = stencil_2d_B4_branch_out_c0_exe10;

    // out_c0_exe11(GPOUT,22)
    assign out_c0_exe11 = stencil_2d_B4_branch_out_c0_exe11;

    // out_c0_exe1166(GPOUT,23)
    assign out_c0_exe1166 = stencil_2d_B4_branch_out_c0_exe1166;

    // out_c0_exe12(GPOUT,24)
    assign out_c0_exe12 = stencil_2d_B4_branch_out_c0_exe12;

    // out_c0_exe13(GPOUT,25)
    assign out_c0_exe13 = stencil_2d_B4_branch_out_c0_exe13;

    // out_c0_exe14(GPOUT,26)
    assign out_c0_exe14 = stencil_2d_B4_branch_out_c0_exe14;

    // out_c0_exe2167(GPOUT,27)
    assign out_c0_exe2167 = stencil_2d_B4_branch_out_c0_exe2167;

    // out_c0_exe3168(GPOUT,28)
    assign out_c0_exe3168 = stencil_2d_B4_branch_out_c0_exe3168;

    // out_c0_exe4169(GPOUT,29)
    assign out_c0_exe4169 = stencil_2d_B4_branch_out_c0_exe4169;

    // out_c0_exe5170(GPOUT,30)
    assign out_c0_exe5170 = stencil_2d_B4_branch_out_c0_exe5170;

    // out_c0_exe6(GPOUT,31)
    assign out_c0_exe6 = stencil_2d_B4_branch_out_c0_exe6;

    // out_c0_exe7(GPOUT,32)
    assign out_c0_exe7 = stencil_2d_B4_branch_out_c0_exe7;

    // out_c0_exe8(GPOUT,33)
    assign out_c0_exe8 = stencil_2d_B4_branch_out_c0_exe8;

    // out_exiting_stall_out(GPOUT,34)
    assign out_exiting_stall_out = bb_stencil_2d_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going24_stencil_2d2_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,35)
    assign out_exiting_valid_out = bb_stencil_2d_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going24_stencil_2d2_exiting_valid_out;

    // out_memdep_phi_pop17(GPOUT,36)
    assign out_memdep_phi_pop17 = stencil_2d_B4_branch_out_memdep_phi_pop17;

    // out_stall_out_0(GPOUT,37)
    assign out_stall_out_0 = stencil_2d_B4_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,38)
    assign out_stall_out_1 = stencil_2d_B4_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,39)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,40)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,41)
    assign out_valid_out_0 = stencil_2d_B4_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,43)
    assign out_pipeline_valid_out = bb_stencil_2d_B4_stall_region_out_pipeline_valid_out;

endmodule
