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

// SystemVerilog created from bb_stencil_2d_B10
// Created for function/kernel stencil_2d
// SystemVerilog created on Tue Apr  4 22:01:34 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_bb_B10 (
    input wire [31:0] in_c_035_pop27127_0,
    input wire [31:0] in_c_035_pop27127_1,
    input wire [0:0] in_forked79_0,
    input wire [0:0] in_forked79_1,
    input wire [31:0] in_mul50118_0,
    input wire [31:0] in_mul50118_1,
    input wire [31:0] in_mul5086_pop29133_0,
    input wire [31:0] in_mul5086_pop29133_1,
    input wire [0:0] in_notcmp34124_0,
    input wire [0:0] in_notcmp34124_1,
    input wire [0:0] in_notcmp39123_0,
    input wire [0:0] in_notcmp39123_1,
    input wire [0:0] in_notcmp3989_pop30136_0,
    input wire [0:0] in_notcmp3989_pop30136_1,
    input wire [31:0] in_r_036_pop25113_0,
    input wire [31:0] in_r_036_pop25113_1,
    input wire [31:0] in_r_036_pop2583_pop28130_0,
    input wire [31:0] in_r_036_pop2583_pop28130_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe10,
    output wire [31:0] out_c0_exe11,
    output wire [31:0] out_c0_exe12,
    output wire [31:0] out_c0_exe1212,
    output wire [0:0] out_c0_exe13,
    output wire [0:0] out_c0_exe14,
    output wire [31:0] out_c0_exe15,
    output wire [31:0] out_c0_exe16,
    output wire [31:0] out_c0_exe17,
    output wire [0:0] out_c0_exe18,
    output wire [31:0] out_c0_exe2213,
    output wire [31:0] out_c0_exe3214,
    output wire [31:0] out_c0_exe4215,
    output wire [0:0] out_c0_exe5216,
    output wire [0:0] out_c0_exe6217,
    output wire [31:0] out_c0_exe7218,
    output wire [0:0] out_c0_exe8219,
    output wire [0:0] out_c0_exe9220,
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

    wire [0:0] bb_stencil_2d_B10_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_stencil_2d2_exiting_stall_out;
    wire [0:0] bb_stencil_2d_B10_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_stencil_2d2_exiting_valid_out;
    wire [0:0] bb_stencil_2d_B10_stall_region_out_c0_exe10;
    wire [31:0] bb_stencil_2d_B10_stall_region_out_c0_exe11;
    wire [31:0] bb_stencil_2d_B10_stall_region_out_c0_exe12;
    wire [31:0] bb_stencil_2d_B10_stall_region_out_c0_exe1212;
    wire [0:0] bb_stencil_2d_B10_stall_region_out_c0_exe13;
    wire [0:0] bb_stencil_2d_B10_stall_region_out_c0_exe14;
    wire [31:0] bb_stencil_2d_B10_stall_region_out_c0_exe15;
    wire [31:0] bb_stencil_2d_B10_stall_region_out_c0_exe16;
    wire [31:0] bb_stencil_2d_B10_stall_region_out_c0_exe17;
    wire [0:0] bb_stencil_2d_B10_stall_region_out_c0_exe18;
    wire [31:0] bb_stencil_2d_B10_stall_region_out_c0_exe2213;
    wire [31:0] bb_stencil_2d_B10_stall_region_out_c0_exe3214;
    wire [31:0] bb_stencil_2d_B10_stall_region_out_c0_exe4215;
    wire [0:0] bb_stencil_2d_B10_stall_region_out_c0_exe5216;
    wire [0:0] bb_stencil_2d_B10_stall_region_out_c0_exe6217;
    wire [31:0] bb_stencil_2d_B10_stall_region_out_c0_exe7218;
    wire [0:0] bb_stencil_2d_B10_stall_region_out_c0_exe8219;
    wire [0:0] bb_stencil_2d_B10_stall_region_out_c0_exe9220;
    wire [0:0] bb_stencil_2d_B10_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_stencil_2d_B10_stall_region_out_stall_out;
    wire [0:0] bb_stencil_2d_B10_stall_region_out_valid_out;
    wire [0:0] stencil_2d_B10_branch_out_c0_exe10;
    wire [31:0] stencil_2d_B10_branch_out_c0_exe11;
    wire [31:0] stencil_2d_B10_branch_out_c0_exe12;
    wire [31:0] stencil_2d_B10_branch_out_c0_exe1212;
    wire [0:0] stencil_2d_B10_branch_out_c0_exe13;
    wire [0:0] stencil_2d_B10_branch_out_c0_exe14;
    wire [31:0] stencil_2d_B10_branch_out_c0_exe15;
    wire [31:0] stencil_2d_B10_branch_out_c0_exe16;
    wire [31:0] stencil_2d_B10_branch_out_c0_exe17;
    wire [0:0] stencil_2d_B10_branch_out_c0_exe18;
    wire [31:0] stencil_2d_B10_branch_out_c0_exe2213;
    wire [31:0] stencil_2d_B10_branch_out_c0_exe3214;
    wire [31:0] stencil_2d_B10_branch_out_c0_exe4215;
    wire [0:0] stencil_2d_B10_branch_out_c0_exe5216;
    wire [0:0] stencil_2d_B10_branch_out_c0_exe6217;
    wire [31:0] stencil_2d_B10_branch_out_c0_exe7218;
    wire [0:0] stencil_2d_B10_branch_out_c0_exe8219;
    wire [0:0] stencil_2d_B10_branch_out_c0_exe9220;
    wire [0:0] stencil_2d_B10_branch_out_stall_out;
    wire [0:0] stencil_2d_B10_branch_out_valid_out_0;
    wire [31:0] stencil_2d_B10_merge_out_c_035_pop27127;
    wire [0:0] stencil_2d_B10_merge_out_forked79;
    wire [31:0] stencil_2d_B10_merge_out_mul50118;
    wire [31:0] stencil_2d_B10_merge_out_mul5086_pop29133;
    wire [0:0] stencil_2d_B10_merge_out_notcmp34124;
    wire [0:0] stencil_2d_B10_merge_out_notcmp39123;
    wire [0:0] stencil_2d_B10_merge_out_notcmp3989_pop30136;
    wire [31:0] stencil_2d_B10_merge_out_r_036_pop25113;
    wire [31:0] stencil_2d_B10_merge_out_r_036_pop2583_pop28130;
    wire [0:0] stencil_2d_B10_merge_out_stall_out_0;
    wire [0:0] stencil_2d_B10_merge_out_stall_out_1;
    wire [0:0] stencil_2d_B10_merge_out_valid_out;


    // stencil_2d_B10_merge(BLACKBOX,52)
    stencil_2d_B10_merge thestencil_2d_B10_merge (
        .in_c_035_pop27127_0(in_c_035_pop27127_0),
        .in_c_035_pop27127_1(in_c_035_pop27127_1),
        .in_forked79_0(in_forked79_0),
        .in_forked79_1(in_forked79_1),
        .in_mul50118_0(in_mul50118_0),
        .in_mul50118_1(in_mul50118_1),
        .in_mul5086_pop29133_0(in_mul5086_pop29133_0),
        .in_mul5086_pop29133_1(in_mul5086_pop29133_1),
        .in_notcmp34124_0(in_notcmp34124_0),
        .in_notcmp34124_1(in_notcmp34124_1),
        .in_notcmp39123_0(in_notcmp39123_0),
        .in_notcmp39123_1(in_notcmp39123_1),
        .in_notcmp3989_pop30136_0(in_notcmp3989_pop30136_0),
        .in_notcmp3989_pop30136_1(in_notcmp3989_pop30136_1),
        .in_r_036_pop25113_0(in_r_036_pop25113_0),
        .in_r_036_pop25113_1(in_r_036_pop25113_1),
        .in_r_036_pop2583_pop28130_0(in_r_036_pop2583_pop28130_0),
        .in_r_036_pop2583_pop28130_1(in_r_036_pop2583_pop28130_1),
        .in_stall_in(bb_stencil_2d_B10_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_c_035_pop27127(stencil_2d_B10_merge_out_c_035_pop27127),
        .out_forked79(stencil_2d_B10_merge_out_forked79),
        .out_mul50118(stencil_2d_B10_merge_out_mul50118),
        .out_mul5086_pop29133(stencil_2d_B10_merge_out_mul5086_pop29133),
        .out_notcmp34124(stencil_2d_B10_merge_out_notcmp34124),
        .out_notcmp39123(stencil_2d_B10_merge_out_notcmp39123),
        .out_notcmp3989_pop30136(stencil_2d_B10_merge_out_notcmp3989_pop30136),
        .out_r_036_pop25113(stencil_2d_B10_merge_out_r_036_pop25113),
        .out_r_036_pop2583_pop28130(stencil_2d_B10_merge_out_r_036_pop2583_pop28130),
        .out_stall_out_0(stencil_2d_B10_merge_out_stall_out_0),
        .out_stall_out_1(stencil_2d_B10_merge_out_stall_out_1),
        .out_valid_out(stencil_2d_B10_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B10_stall_region(BLACKBOX,2)
    stencil_2d_bb_B10_stall_region thebb_stencil_2d_B10_stall_region (
        .in_c_035_pop27127(stencil_2d_B10_merge_out_c_035_pop27127),
        .in_forked79(stencil_2d_B10_merge_out_forked79),
        .in_mul50118(stencil_2d_B10_merge_out_mul50118),
        .in_mul5086_pop29133(stencil_2d_B10_merge_out_mul5086_pop29133),
        .in_notcmp34124(stencil_2d_B10_merge_out_notcmp34124),
        .in_notcmp39123(stencil_2d_B10_merge_out_notcmp39123),
        .in_notcmp3989_pop30136(stencil_2d_B10_merge_out_notcmp3989_pop30136),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_r_036_pop25113(stencil_2d_B10_merge_out_r_036_pop25113),
        .in_r_036_pop2583_pop28130(stencil_2d_B10_merge_out_r_036_pop2583_pop28130),
        .in_stall_in(stencil_2d_B10_branch_out_stall_out),
        .in_valid_in(stencil_2d_B10_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_stencil_2d2_exiting_stall_out(bb_stencil_2d_B10_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_stencil_2d2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_stencil_2d2_exiting_valid_out(bb_stencil_2d_B10_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_stencil_2d2_exiting_valid_out),
        .out_c0_exe10(bb_stencil_2d_B10_stall_region_out_c0_exe10),
        .out_c0_exe11(bb_stencil_2d_B10_stall_region_out_c0_exe11),
        .out_c0_exe12(bb_stencil_2d_B10_stall_region_out_c0_exe12),
        .out_c0_exe1212(bb_stencil_2d_B10_stall_region_out_c0_exe1212),
        .out_c0_exe13(bb_stencil_2d_B10_stall_region_out_c0_exe13),
        .out_c0_exe14(bb_stencil_2d_B10_stall_region_out_c0_exe14),
        .out_c0_exe15(bb_stencil_2d_B10_stall_region_out_c0_exe15),
        .out_c0_exe16(bb_stencil_2d_B10_stall_region_out_c0_exe16),
        .out_c0_exe17(bb_stencil_2d_B10_stall_region_out_c0_exe17),
        .out_c0_exe18(bb_stencil_2d_B10_stall_region_out_c0_exe18),
        .out_c0_exe2213(bb_stencil_2d_B10_stall_region_out_c0_exe2213),
        .out_c0_exe3214(bb_stencil_2d_B10_stall_region_out_c0_exe3214),
        .out_c0_exe4215(bb_stencil_2d_B10_stall_region_out_c0_exe4215),
        .out_c0_exe5216(bb_stencil_2d_B10_stall_region_out_c0_exe5216),
        .out_c0_exe6217(bb_stencil_2d_B10_stall_region_out_c0_exe6217),
        .out_c0_exe7218(bb_stencil_2d_B10_stall_region_out_c0_exe7218),
        .out_c0_exe8219(bb_stencil_2d_B10_stall_region_out_c0_exe8219),
        .out_c0_exe9220(bb_stencil_2d_B10_stall_region_out_c0_exe9220),
        .out_pipeline_valid_out(bb_stencil_2d_B10_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_stencil_2d_B10_stall_region_out_stall_out),
        .out_valid_out(bb_stencil_2d_B10_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // stencil_2d_B10_branch(BLACKBOX,51)
    stencil_2d_B10_branch thestencil_2d_B10_branch (
        .in_c0_exe10(bb_stencil_2d_B10_stall_region_out_c0_exe10),
        .in_c0_exe11(bb_stencil_2d_B10_stall_region_out_c0_exe11),
        .in_c0_exe12(bb_stencil_2d_B10_stall_region_out_c0_exe12),
        .in_c0_exe1212(bb_stencil_2d_B10_stall_region_out_c0_exe1212),
        .in_c0_exe13(bb_stencil_2d_B10_stall_region_out_c0_exe13),
        .in_c0_exe14(bb_stencil_2d_B10_stall_region_out_c0_exe14),
        .in_c0_exe15(bb_stencil_2d_B10_stall_region_out_c0_exe15),
        .in_c0_exe16(bb_stencil_2d_B10_stall_region_out_c0_exe16),
        .in_c0_exe17(bb_stencil_2d_B10_stall_region_out_c0_exe17),
        .in_c0_exe18(bb_stencil_2d_B10_stall_region_out_c0_exe18),
        .in_c0_exe2213(bb_stencil_2d_B10_stall_region_out_c0_exe2213),
        .in_c0_exe3214(bb_stencil_2d_B10_stall_region_out_c0_exe3214),
        .in_c0_exe4215(bb_stencil_2d_B10_stall_region_out_c0_exe4215),
        .in_c0_exe5216(bb_stencil_2d_B10_stall_region_out_c0_exe5216),
        .in_c0_exe6217(bb_stencil_2d_B10_stall_region_out_c0_exe6217),
        .in_c0_exe7218(bb_stencil_2d_B10_stall_region_out_c0_exe7218),
        .in_c0_exe8219(bb_stencil_2d_B10_stall_region_out_c0_exe8219),
        .in_c0_exe9220(bb_stencil_2d_B10_stall_region_out_c0_exe9220),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_stencil_2d_B10_stall_region_out_valid_out),
        .out_c0_exe10(stencil_2d_B10_branch_out_c0_exe10),
        .out_c0_exe11(stencil_2d_B10_branch_out_c0_exe11),
        .out_c0_exe12(stencil_2d_B10_branch_out_c0_exe12),
        .out_c0_exe1212(stencil_2d_B10_branch_out_c0_exe1212),
        .out_c0_exe13(stencil_2d_B10_branch_out_c0_exe13),
        .out_c0_exe14(stencil_2d_B10_branch_out_c0_exe14),
        .out_c0_exe15(stencil_2d_B10_branch_out_c0_exe15),
        .out_c0_exe16(stencil_2d_B10_branch_out_c0_exe16),
        .out_c0_exe17(stencil_2d_B10_branch_out_c0_exe17),
        .out_c0_exe18(stencil_2d_B10_branch_out_c0_exe18),
        .out_c0_exe2213(stencil_2d_B10_branch_out_c0_exe2213),
        .out_c0_exe3214(stencil_2d_B10_branch_out_c0_exe3214),
        .out_c0_exe4215(stencil_2d_B10_branch_out_c0_exe4215),
        .out_c0_exe5216(stencil_2d_B10_branch_out_c0_exe5216),
        .out_c0_exe6217(stencil_2d_B10_branch_out_c0_exe6217),
        .out_c0_exe7218(stencil_2d_B10_branch_out_c0_exe7218),
        .out_c0_exe8219(stencil_2d_B10_branch_out_c0_exe8219),
        .out_c0_exe9220(stencil_2d_B10_branch_out_c0_exe9220),
        .out_stall_out(stencil_2d_B10_branch_out_stall_out),
        .out_valid_out_0(stencil_2d_B10_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe10(GPOUT,24)
    assign out_c0_exe10 = stencil_2d_B10_branch_out_c0_exe10;

    // out_c0_exe11(GPOUT,25)
    assign out_c0_exe11 = stencil_2d_B10_branch_out_c0_exe11;

    // out_c0_exe12(GPOUT,26)
    assign out_c0_exe12 = stencil_2d_B10_branch_out_c0_exe12;

    // out_c0_exe1212(GPOUT,27)
    assign out_c0_exe1212 = stencil_2d_B10_branch_out_c0_exe1212;

    // out_c0_exe13(GPOUT,28)
    assign out_c0_exe13 = stencil_2d_B10_branch_out_c0_exe13;

    // out_c0_exe14(GPOUT,29)
    assign out_c0_exe14 = stencil_2d_B10_branch_out_c0_exe14;

    // out_c0_exe15(GPOUT,30)
    assign out_c0_exe15 = stencil_2d_B10_branch_out_c0_exe15;

    // out_c0_exe16(GPOUT,31)
    assign out_c0_exe16 = stencil_2d_B10_branch_out_c0_exe16;

    // out_c0_exe17(GPOUT,32)
    assign out_c0_exe17 = stencil_2d_B10_branch_out_c0_exe17;

    // out_c0_exe18(GPOUT,33)
    assign out_c0_exe18 = stencil_2d_B10_branch_out_c0_exe18;

    // out_c0_exe2213(GPOUT,34)
    assign out_c0_exe2213 = stencil_2d_B10_branch_out_c0_exe2213;

    // out_c0_exe3214(GPOUT,35)
    assign out_c0_exe3214 = stencil_2d_B10_branch_out_c0_exe3214;

    // out_c0_exe4215(GPOUT,36)
    assign out_c0_exe4215 = stencil_2d_B10_branch_out_c0_exe4215;

    // out_c0_exe5216(GPOUT,37)
    assign out_c0_exe5216 = stencil_2d_B10_branch_out_c0_exe5216;

    // out_c0_exe6217(GPOUT,38)
    assign out_c0_exe6217 = stencil_2d_B10_branch_out_c0_exe6217;

    // out_c0_exe7218(GPOUT,39)
    assign out_c0_exe7218 = stencil_2d_B10_branch_out_c0_exe7218;

    // out_c0_exe8219(GPOUT,40)
    assign out_c0_exe8219 = stencil_2d_B10_branch_out_c0_exe8219;

    // out_c0_exe9220(GPOUT,41)
    assign out_c0_exe9220 = stencil_2d_B10_branch_out_c0_exe9220;

    // out_exiting_stall_out(GPOUT,42)
    assign out_exiting_stall_out = bb_stencil_2d_B10_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_stencil_2d2_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,43)
    assign out_exiting_valid_out = bb_stencil_2d_B10_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_stencil_2d2_exiting_valid_out;

    // out_stall_out_0(GPOUT,44)
    assign out_stall_out_0 = stencil_2d_B10_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,45)
    assign out_stall_out_1 = stencil_2d_B10_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,46)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,47)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,48)
    assign out_valid_out_0 = stencil_2d_B10_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,50)
    assign out_pipeline_valid_out = bb_stencil_2d_B10_stall_region_out_pipeline_valid_out;

endmodule
