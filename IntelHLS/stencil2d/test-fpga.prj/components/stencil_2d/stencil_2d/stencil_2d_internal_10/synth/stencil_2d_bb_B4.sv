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
// SystemVerilog created on Fri Apr  7 16:44:44 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_bb_B4 (
    input wire [0:0] in_forked35_0,
    input wire [0:0] in_forked35_1,
    input wire [31:0] in_mul2861_0,
    input wire [31:0] in_mul2861_1,
    input wire [0:0] in_notcmp2466_0,
    input wire [0:0] in_notcmp2466_1,
    input wire [31:0] in_r_026_pop1356_0,
    input wire [31:0] in_r_026_pop1356_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe2121,
    output wire [31:0] out_c0_exe3122,
    output wire [31:0] out_c0_exe4123,
    output wire [31:0] out_c0_exe5,
    output wire [0:0] out_c0_exe6,
    output wire [31:0] out_c0_exe7,
    output wire [31:0] out_c0_exe8,
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

    wire [0:0] bb_stencil_2d_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_stencil_2d2_exiting_stall_out;
    wire [0:0] bb_stencil_2d_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_stencil_2d2_exiting_valid_out;
    wire [0:0] bb_stencil_2d_B4_stall_region_out_c0_exe2121;
    wire [31:0] bb_stencil_2d_B4_stall_region_out_c0_exe3122;
    wire [31:0] bb_stencil_2d_B4_stall_region_out_c0_exe4123;
    wire [31:0] bb_stencil_2d_B4_stall_region_out_c0_exe5;
    wire [0:0] bb_stencil_2d_B4_stall_region_out_c0_exe6;
    wire [31:0] bb_stencil_2d_B4_stall_region_out_c0_exe7;
    wire [31:0] bb_stencil_2d_B4_stall_region_out_c0_exe8;
    wire [0:0] bb_stencil_2d_B4_stall_region_out_c0_exe9;
    wire [0:0] bb_stencil_2d_B4_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_stencil_2d_B4_stall_region_out_stall_out;
    wire [0:0] bb_stencil_2d_B4_stall_region_out_valid_out;
    wire [0:0] stencil_2d_B4_branch_out_c0_exe2121;
    wire [31:0] stencil_2d_B4_branch_out_c0_exe3122;
    wire [31:0] stencil_2d_B4_branch_out_c0_exe4123;
    wire [31:0] stencil_2d_B4_branch_out_c0_exe5;
    wire [0:0] stencil_2d_B4_branch_out_c0_exe6;
    wire [31:0] stencil_2d_B4_branch_out_c0_exe7;
    wire [31:0] stencil_2d_B4_branch_out_c0_exe8;
    wire [0:0] stencil_2d_B4_branch_out_c0_exe9;
    wire [0:0] stencil_2d_B4_branch_out_stall_out;
    wire [0:0] stencil_2d_B4_branch_out_valid_out_0;
    wire [0:0] stencil_2d_B4_merge_out_forked35;
    wire [31:0] stencil_2d_B4_merge_out_mul2861;
    wire [0:0] stencil_2d_B4_merge_out_notcmp2466;
    wire [31:0] stencil_2d_B4_merge_out_r_026_pop1356;
    wire [0:0] stencil_2d_B4_merge_out_stall_out_0;
    wire [0:0] stencil_2d_B4_merge_out_stall_out_1;
    wire [0:0] stencil_2d_B4_merge_out_valid_out;


    // stencil_2d_B4_merge(BLACKBOX,32)
    stencil_2d_B4_merge thestencil_2d_B4_merge (
        .in_forked35_0(in_forked35_0),
        .in_forked35_1(in_forked35_1),
        .in_mul2861_0(in_mul2861_0),
        .in_mul2861_1(in_mul2861_1),
        .in_notcmp2466_0(in_notcmp2466_0),
        .in_notcmp2466_1(in_notcmp2466_1),
        .in_r_026_pop1356_0(in_r_026_pop1356_0),
        .in_r_026_pop1356_1(in_r_026_pop1356_1),
        .in_stall_in(bb_stencil_2d_B4_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked35(stencil_2d_B4_merge_out_forked35),
        .out_mul2861(stencil_2d_B4_merge_out_mul2861),
        .out_notcmp2466(stencil_2d_B4_merge_out_notcmp2466),
        .out_r_026_pop1356(stencil_2d_B4_merge_out_r_026_pop1356),
        .out_stall_out_0(stencil_2d_B4_merge_out_stall_out_0),
        .out_stall_out_1(stencil_2d_B4_merge_out_stall_out_1),
        .out_valid_out(stencil_2d_B4_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B4_stall_region(BLACKBOX,2)
    stencil_2d_bb_B4_stall_region thebb_stencil_2d_B4_stall_region (
        .in_forked35(stencil_2d_B4_merge_out_forked35),
        .in_mul2861(stencil_2d_B4_merge_out_mul2861),
        .in_notcmp2466(stencil_2d_B4_merge_out_notcmp2466),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_r_026_pop1356(stencil_2d_B4_merge_out_r_026_pop1356),
        .in_stall_in(stencil_2d_B4_branch_out_stall_out),
        .in_valid_in(stencil_2d_B4_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_stencil_2d2_exiting_stall_out(bb_stencil_2d_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_stencil_2d2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_stencil_2d2_exiting_valid_out(bb_stencil_2d_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_stencil_2d2_exiting_valid_out),
        .out_c0_exe2121(bb_stencil_2d_B4_stall_region_out_c0_exe2121),
        .out_c0_exe3122(bb_stencil_2d_B4_stall_region_out_c0_exe3122),
        .out_c0_exe4123(bb_stencil_2d_B4_stall_region_out_c0_exe4123),
        .out_c0_exe5(bb_stencil_2d_B4_stall_region_out_c0_exe5),
        .out_c0_exe6(bb_stencil_2d_B4_stall_region_out_c0_exe6),
        .out_c0_exe7(bb_stencil_2d_B4_stall_region_out_c0_exe7),
        .out_c0_exe8(bb_stencil_2d_B4_stall_region_out_c0_exe8),
        .out_c0_exe9(bb_stencil_2d_B4_stall_region_out_c0_exe9),
        .out_pipeline_valid_out(bb_stencil_2d_B4_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_stencil_2d_B4_stall_region_out_stall_out),
        .out_valid_out(bb_stencil_2d_B4_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // stencil_2d_B4_branch(BLACKBOX,31)
    stencil_2d_B4_branch thestencil_2d_B4_branch (
        .in_c0_exe2121(bb_stencil_2d_B4_stall_region_out_c0_exe2121),
        .in_c0_exe3122(bb_stencil_2d_B4_stall_region_out_c0_exe3122),
        .in_c0_exe4123(bb_stencil_2d_B4_stall_region_out_c0_exe4123),
        .in_c0_exe5(bb_stencil_2d_B4_stall_region_out_c0_exe5),
        .in_c0_exe6(bb_stencil_2d_B4_stall_region_out_c0_exe6),
        .in_c0_exe7(bb_stencil_2d_B4_stall_region_out_c0_exe7),
        .in_c0_exe8(bb_stencil_2d_B4_stall_region_out_c0_exe8),
        .in_c0_exe9(bb_stencil_2d_B4_stall_region_out_c0_exe9),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_stencil_2d_B4_stall_region_out_valid_out),
        .out_c0_exe2121(stencil_2d_B4_branch_out_c0_exe2121),
        .out_c0_exe3122(stencil_2d_B4_branch_out_c0_exe3122),
        .out_c0_exe4123(stencil_2d_B4_branch_out_c0_exe4123),
        .out_c0_exe5(stencil_2d_B4_branch_out_c0_exe5),
        .out_c0_exe6(stencil_2d_B4_branch_out_c0_exe6),
        .out_c0_exe7(stencil_2d_B4_branch_out_c0_exe7),
        .out_c0_exe8(stencil_2d_B4_branch_out_c0_exe8),
        .out_c0_exe9(stencil_2d_B4_branch_out_c0_exe9),
        .out_stall_out(stencil_2d_B4_branch_out_stall_out),
        .out_valid_out_0(stencil_2d_B4_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe2121(GPOUT,14)
    assign out_c0_exe2121 = stencil_2d_B4_branch_out_c0_exe2121;

    // out_c0_exe3122(GPOUT,15)
    assign out_c0_exe3122 = stencil_2d_B4_branch_out_c0_exe3122;

    // out_c0_exe4123(GPOUT,16)
    assign out_c0_exe4123 = stencil_2d_B4_branch_out_c0_exe4123;

    // out_c0_exe5(GPOUT,17)
    assign out_c0_exe5 = stencil_2d_B4_branch_out_c0_exe5;

    // out_c0_exe6(GPOUT,18)
    assign out_c0_exe6 = stencil_2d_B4_branch_out_c0_exe6;

    // out_c0_exe7(GPOUT,19)
    assign out_c0_exe7 = stencil_2d_B4_branch_out_c0_exe7;

    // out_c0_exe8(GPOUT,20)
    assign out_c0_exe8 = stencil_2d_B4_branch_out_c0_exe8;

    // out_c0_exe9(GPOUT,21)
    assign out_c0_exe9 = stencil_2d_B4_branch_out_c0_exe9;

    // out_exiting_stall_out(GPOUT,22)
    assign out_exiting_stall_out = bb_stencil_2d_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_stencil_2d2_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,23)
    assign out_exiting_valid_out = bb_stencil_2d_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_stencil_2d2_exiting_valid_out;

    // out_stall_out_0(GPOUT,24)
    assign out_stall_out_0 = stencil_2d_B4_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,25)
    assign out_stall_out_1 = stencil_2d_B4_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,26)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,27)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,28)
    assign out_valid_out_0 = stencil_2d_B4_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,30)
    assign out_pipeline_valid_out = bb_stencil_2d_B4_stall_region_out_pipeline_valid_out;

endmodule
