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

// SystemVerilog created from bb_stencil_2d_B6
// Created for function/kernel stencil_2d
// SystemVerilog created on Fri Apr  7 16:44:44 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_bb_B6 (
    input wire [31:0] in_c_025_pop1574_0,
    input wire [31:0] in_c_025_pop1574_1,
    input wire [0:0] in_forked32_0,
    input wire [0:0] in_forked32_1,
    input wire [31:0] in_mul2839_pop1780_0,
    input wire [31:0] in_mul2839_pop1780_1,
    input wire [31:0] in_mul2865_0,
    input wire [31:0] in_mul2865_1,
    input wire [0:0] in_notcmp1971_0,
    input wire [0:0] in_notcmp1971_1,
    input wire [0:0] in_notcmp2442_pop1883_0,
    input wire [0:0] in_notcmp2442_pop1883_1,
    input wire [0:0] in_notcmp2470_0,
    input wire [0:0] in_notcmp2470_1,
    input wire [31:0] in_r_026_pop1336_pop1677_0,
    input wire [31:0] in_r_026_pop1336_pop1677_1,
    input wire [31:0] in_r_026_pop1360_0,
    input wire [31:0] in_r_026_pop1360_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe10,
    output wire [31:0] out_c0_exe11,
    output wire [31:0] out_c0_exe1143,
    output wire [31:0] out_c0_exe12,
    output wire [0:0] out_c0_exe13,
    output wire [0:0] out_c0_exe14,
    output wire [31:0] out_c0_exe15,
    output wire [31:0] out_c0_exe16,
    output wire [31:0] out_c0_exe17,
    output wire [0:0] out_c0_exe18,
    output wire [31:0] out_c0_exe2144,
    output wire [31:0] out_c0_exe3145,
    output wire [31:0] out_c0_exe4146,
    output wire [0:0] out_c0_exe5147,
    output wire [0:0] out_c0_exe6148,
    output wire [31:0] out_c0_exe7149,
    output wire [0:0] out_c0_exe8150,
    output wire [0:0] out_c0_exe9151,
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

    wire [0:0] bb_stencil_2d_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going16_stencil_2d2_exiting_stall_out;
    wire [0:0] bb_stencil_2d_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going16_stencil_2d2_exiting_valid_out;
    wire [0:0] bb_stencil_2d_B6_stall_region_out_c0_exe10;
    wire [31:0] bb_stencil_2d_B6_stall_region_out_c0_exe11;
    wire [31:0] bb_stencil_2d_B6_stall_region_out_c0_exe1143;
    wire [31:0] bb_stencil_2d_B6_stall_region_out_c0_exe12;
    wire [0:0] bb_stencil_2d_B6_stall_region_out_c0_exe13;
    wire [0:0] bb_stencil_2d_B6_stall_region_out_c0_exe14;
    wire [31:0] bb_stencil_2d_B6_stall_region_out_c0_exe15;
    wire [31:0] bb_stencil_2d_B6_stall_region_out_c0_exe16;
    wire [31:0] bb_stencil_2d_B6_stall_region_out_c0_exe17;
    wire [0:0] bb_stencil_2d_B6_stall_region_out_c0_exe18;
    wire [31:0] bb_stencil_2d_B6_stall_region_out_c0_exe2144;
    wire [31:0] bb_stencil_2d_B6_stall_region_out_c0_exe3145;
    wire [31:0] bb_stencil_2d_B6_stall_region_out_c0_exe4146;
    wire [0:0] bb_stencil_2d_B6_stall_region_out_c0_exe5147;
    wire [0:0] bb_stencil_2d_B6_stall_region_out_c0_exe6148;
    wire [31:0] bb_stencil_2d_B6_stall_region_out_c0_exe7149;
    wire [0:0] bb_stencil_2d_B6_stall_region_out_c0_exe8150;
    wire [0:0] bb_stencil_2d_B6_stall_region_out_c0_exe9151;
    wire [0:0] bb_stencil_2d_B6_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_stencil_2d_B6_stall_region_out_stall_out;
    wire [0:0] bb_stencil_2d_B6_stall_region_out_valid_out;
    wire [0:0] stencil_2d_B6_branch_out_c0_exe10;
    wire [31:0] stencil_2d_B6_branch_out_c0_exe11;
    wire [31:0] stencil_2d_B6_branch_out_c0_exe1143;
    wire [31:0] stencil_2d_B6_branch_out_c0_exe12;
    wire [0:0] stencil_2d_B6_branch_out_c0_exe13;
    wire [0:0] stencil_2d_B6_branch_out_c0_exe14;
    wire [31:0] stencil_2d_B6_branch_out_c0_exe15;
    wire [31:0] stencil_2d_B6_branch_out_c0_exe16;
    wire [31:0] stencil_2d_B6_branch_out_c0_exe17;
    wire [0:0] stencil_2d_B6_branch_out_c0_exe18;
    wire [31:0] stencil_2d_B6_branch_out_c0_exe2144;
    wire [31:0] stencil_2d_B6_branch_out_c0_exe3145;
    wire [31:0] stencil_2d_B6_branch_out_c0_exe4146;
    wire [0:0] stencil_2d_B6_branch_out_c0_exe5147;
    wire [0:0] stencil_2d_B6_branch_out_c0_exe6148;
    wire [31:0] stencil_2d_B6_branch_out_c0_exe7149;
    wire [0:0] stencil_2d_B6_branch_out_c0_exe8150;
    wire [0:0] stencil_2d_B6_branch_out_c0_exe9151;
    wire [0:0] stencil_2d_B6_branch_out_stall_out;
    wire [0:0] stencil_2d_B6_branch_out_valid_out_0;
    wire [31:0] stencil_2d_B6_merge_out_c_025_pop1574;
    wire [0:0] stencil_2d_B6_merge_out_forked32;
    wire [31:0] stencil_2d_B6_merge_out_mul2839_pop1780;
    wire [31:0] stencil_2d_B6_merge_out_mul2865;
    wire [0:0] stencil_2d_B6_merge_out_notcmp1971;
    wire [0:0] stencil_2d_B6_merge_out_notcmp2442_pop1883;
    wire [0:0] stencil_2d_B6_merge_out_notcmp2470;
    wire [31:0] stencil_2d_B6_merge_out_r_026_pop1336_pop1677;
    wire [31:0] stencil_2d_B6_merge_out_r_026_pop1360;
    wire [0:0] stencil_2d_B6_merge_out_stall_out_0;
    wire [0:0] stencil_2d_B6_merge_out_stall_out_1;
    wire [0:0] stencil_2d_B6_merge_out_valid_out;


    // stencil_2d_B6_merge(BLACKBOX,52)
    stencil_2d_B6_merge thestencil_2d_B6_merge (
        .in_c_025_pop1574_0(in_c_025_pop1574_0),
        .in_c_025_pop1574_1(in_c_025_pop1574_1),
        .in_forked32_0(in_forked32_0),
        .in_forked32_1(in_forked32_1),
        .in_mul2839_pop1780_0(in_mul2839_pop1780_0),
        .in_mul2839_pop1780_1(in_mul2839_pop1780_1),
        .in_mul2865_0(in_mul2865_0),
        .in_mul2865_1(in_mul2865_1),
        .in_notcmp1971_0(in_notcmp1971_0),
        .in_notcmp1971_1(in_notcmp1971_1),
        .in_notcmp2442_pop1883_0(in_notcmp2442_pop1883_0),
        .in_notcmp2442_pop1883_1(in_notcmp2442_pop1883_1),
        .in_notcmp2470_0(in_notcmp2470_0),
        .in_notcmp2470_1(in_notcmp2470_1),
        .in_r_026_pop1336_pop1677_0(in_r_026_pop1336_pop1677_0),
        .in_r_026_pop1336_pop1677_1(in_r_026_pop1336_pop1677_1),
        .in_r_026_pop1360_0(in_r_026_pop1360_0),
        .in_r_026_pop1360_1(in_r_026_pop1360_1),
        .in_stall_in(bb_stencil_2d_B6_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_c_025_pop1574(stencil_2d_B6_merge_out_c_025_pop1574),
        .out_forked32(stencil_2d_B6_merge_out_forked32),
        .out_mul2839_pop1780(stencil_2d_B6_merge_out_mul2839_pop1780),
        .out_mul2865(stencil_2d_B6_merge_out_mul2865),
        .out_notcmp1971(stencil_2d_B6_merge_out_notcmp1971),
        .out_notcmp2442_pop1883(stencil_2d_B6_merge_out_notcmp2442_pop1883),
        .out_notcmp2470(stencil_2d_B6_merge_out_notcmp2470),
        .out_r_026_pop1336_pop1677(stencil_2d_B6_merge_out_r_026_pop1336_pop1677),
        .out_r_026_pop1360(stencil_2d_B6_merge_out_r_026_pop1360),
        .out_stall_out_0(stencil_2d_B6_merge_out_stall_out_0),
        .out_stall_out_1(stencil_2d_B6_merge_out_stall_out_1),
        .out_valid_out(stencil_2d_B6_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B6_stall_region(BLACKBOX,2)
    stencil_2d_bb_B6_stall_region thebb_stencil_2d_B6_stall_region (
        .in_c_025_pop1574(stencil_2d_B6_merge_out_c_025_pop1574),
        .in_forked32(stencil_2d_B6_merge_out_forked32),
        .in_mul2839_pop1780(stencil_2d_B6_merge_out_mul2839_pop1780),
        .in_mul2865(stencil_2d_B6_merge_out_mul2865),
        .in_notcmp1971(stencil_2d_B6_merge_out_notcmp1971),
        .in_notcmp2442_pop1883(stencil_2d_B6_merge_out_notcmp2442_pop1883),
        .in_notcmp2470(stencil_2d_B6_merge_out_notcmp2470),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_r_026_pop1336_pop1677(stencil_2d_B6_merge_out_r_026_pop1336_pop1677),
        .in_r_026_pop1360(stencil_2d_B6_merge_out_r_026_pop1360),
        .in_stall_in(stencil_2d_B6_branch_out_stall_out),
        .in_valid_in(stencil_2d_B6_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going16_stencil_2d2_exiting_stall_out(bb_stencil_2d_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going16_stencil_2d2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going16_stencil_2d2_exiting_valid_out(bb_stencil_2d_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going16_stencil_2d2_exiting_valid_out),
        .out_c0_exe10(bb_stencil_2d_B6_stall_region_out_c0_exe10),
        .out_c0_exe11(bb_stencil_2d_B6_stall_region_out_c0_exe11),
        .out_c0_exe1143(bb_stencil_2d_B6_stall_region_out_c0_exe1143),
        .out_c0_exe12(bb_stencil_2d_B6_stall_region_out_c0_exe12),
        .out_c0_exe13(bb_stencil_2d_B6_stall_region_out_c0_exe13),
        .out_c0_exe14(bb_stencil_2d_B6_stall_region_out_c0_exe14),
        .out_c0_exe15(bb_stencil_2d_B6_stall_region_out_c0_exe15),
        .out_c0_exe16(bb_stencil_2d_B6_stall_region_out_c0_exe16),
        .out_c0_exe17(bb_stencil_2d_B6_stall_region_out_c0_exe17),
        .out_c0_exe18(bb_stencil_2d_B6_stall_region_out_c0_exe18),
        .out_c0_exe2144(bb_stencil_2d_B6_stall_region_out_c0_exe2144),
        .out_c0_exe3145(bb_stencil_2d_B6_stall_region_out_c0_exe3145),
        .out_c0_exe4146(bb_stencil_2d_B6_stall_region_out_c0_exe4146),
        .out_c0_exe5147(bb_stencil_2d_B6_stall_region_out_c0_exe5147),
        .out_c0_exe6148(bb_stencil_2d_B6_stall_region_out_c0_exe6148),
        .out_c0_exe7149(bb_stencil_2d_B6_stall_region_out_c0_exe7149),
        .out_c0_exe8150(bb_stencil_2d_B6_stall_region_out_c0_exe8150),
        .out_c0_exe9151(bb_stencil_2d_B6_stall_region_out_c0_exe9151),
        .out_pipeline_valid_out(bb_stencil_2d_B6_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_stencil_2d_B6_stall_region_out_stall_out),
        .out_valid_out(bb_stencil_2d_B6_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // stencil_2d_B6_branch(BLACKBOX,51)
    stencil_2d_B6_branch thestencil_2d_B6_branch (
        .in_c0_exe10(bb_stencil_2d_B6_stall_region_out_c0_exe10),
        .in_c0_exe11(bb_stencil_2d_B6_stall_region_out_c0_exe11),
        .in_c0_exe1143(bb_stencil_2d_B6_stall_region_out_c0_exe1143),
        .in_c0_exe12(bb_stencil_2d_B6_stall_region_out_c0_exe12),
        .in_c0_exe13(bb_stencil_2d_B6_stall_region_out_c0_exe13),
        .in_c0_exe14(bb_stencil_2d_B6_stall_region_out_c0_exe14),
        .in_c0_exe15(bb_stencil_2d_B6_stall_region_out_c0_exe15),
        .in_c0_exe16(bb_stencil_2d_B6_stall_region_out_c0_exe16),
        .in_c0_exe17(bb_stencil_2d_B6_stall_region_out_c0_exe17),
        .in_c0_exe18(bb_stencil_2d_B6_stall_region_out_c0_exe18),
        .in_c0_exe2144(bb_stencil_2d_B6_stall_region_out_c0_exe2144),
        .in_c0_exe3145(bb_stencil_2d_B6_stall_region_out_c0_exe3145),
        .in_c0_exe4146(bb_stencil_2d_B6_stall_region_out_c0_exe4146),
        .in_c0_exe5147(bb_stencil_2d_B6_stall_region_out_c0_exe5147),
        .in_c0_exe6148(bb_stencil_2d_B6_stall_region_out_c0_exe6148),
        .in_c0_exe7149(bb_stencil_2d_B6_stall_region_out_c0_exe7149),
        .in_c0_exe8150(bb_stencil_2d_B6_stall_region_out_c0_exe8150),
        .in_c0_exe9151(bb_stencil_2d_B6_stall_region_out_c0_exe9151),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_stencil_2d_B6_stall_region_out_valid_out),
        .out_c0_exe10(stencil_2d_B6_branch_out_c0_exe10),
        .out_c0_exe11(stencil_2d_B6_branch_out_c0_exe11),
        .out_c0_exe1143(stencil_2d_B6_branch_out_c0_exe1143),
        .out_c0_exe12(stencil_2d_B6_branch_out_c0_exe12),
        .out_c0_exe13(stencil_2d_B6_branch_out_c0_exe13),
        .out_c0_exe14(stencil_2d_B6_branch_out_c0_exe14),
        .out_c0_exe15(stencil_2d_B6_branch_out_c0_exe15),
        .out_c0_exe16(stencil_2d_B6_branch_out_c0_exe16),
        .out_c0_exe17(stencil_2d_B6_branch_out_c0_exe17),
        .out_c0_exe18(stencil_2d_B6_branch_out_c0_exe18),
        .out_c0_exe2144(stencil_2d_B6_branch_out_c0_exe2144),
        .out_c0_exe3145(stencil_2d_B6_branch_out_c0_exe3145),
        .out_c0_exe4146(stencil_2d_B6_branch_out_c0_exe4146),
        .out_c0_exe5147(stencil_2d_B6_branch_out_c0_exe5147),
        .out_c0_exe6148(stencil_2d_B6_branch_out_c0_exe6148),
        .out_c0_exe7149(stencil_2d_B6_branch_out_c0_exe7149),
        .out_c0_exe8150(stencil_2d_B6_branch_out_c0_exe8150),
        .out_c0_exe9151(stencil_2d_B6_branch_out_c0_exe9151),
        .out_stall_out(stencil_2d_B6_branch_out_stall_out),
        .out_valid_out_0(stencil_2d_B6_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe10(GPOUT,24)
    assign out_c0_exe10 = stencil_2d_B6_branch_out_c0_exe10;

    // out_c0_exe11(GPOUT,25)
    assign out_c0_exe11 = stencil_2d_B6_branch_out_c0_exe11;

    // out_c0_exe1143(GPOUT,26)
    assign out_c0_exe1143 = stencil_2d_B6_branch_out_c0_exe1143;

    // out_c0_exe12(GPOUT,27)
    assign out_c0_exe12 = stencil_2d_B6_branch_out_c0_exe12;

    // out_c0_exe13(GPOUT,28)
    assign out_c0_exe13 = stencil_2d_B6_branch_out_c0_exe13;

    // out_c0_exe14(GPOUT,29)
    assign out_c0_exe14 = stencil_2d_B6_branch_out_c0_exe14;

    // out_c0_exe15(GPOUT,30)
    assign out_c0_exe15 = stencil_2d_B6_branch_out_c0_exe15;

    // out_c0_exe16(GPOUT,31)
    assign out_c0_exe16 = stencil_2d_B6_branch_out_c0_exe16;

    // out_c0_exe17(GPOUT,32)
    assign out_c0_exe17 = stencil_2d_B6_branch_out_c0_exe17;

    // out_c0_exe18(GPOUT,33)
    assign out_c0_exe18 = stencil_2d_B6_branch_out_c0_exe18;

    // out_c0_exe2144(GPOUT,34)
    assign out_c0_exe2144 = stencil_2d_B6_branch_out_c0_exe2144;

    // out_c0_exe3145(GPOUT,35)
    assign out_c0_exe3145 = stencil_2d_B6_branch_out_c0_exe3145;

    // out_c0_exe4146(GPOUT,36)
    assign out_c0_exe4146 = stencil_2d_B6_branch_out_c0_exe4146;

    // out_c0_exe5147(GPOUT,37)
    assign out_c0_exe5147 = stencil_2d_B6_branch_out_c0_exe5147;

    // out_c0_exe6148(GPOUT,38)
    assign out_c0_exe6148 = stencil_2d_B6_branch_out_c0_exe6148;

    // out_c0_exe7149(GPOUT,39)
    assign out_c0_exe7149 = stencil_2d_B6_branch_out_c0_exe7149;

    // out_c0_exe8150(GPOUT,40)
    assign out_c0_exe8150 = stencil_2d_B6_branch_out_c0_exe8150;

    // out_c0_exe9151(GPOUT,41)
    assign out_c0_exe9151 = stencil_2d_B6_branch_out_c0_exe9151;

    // out_exiting_stall_out(GPOUT,42)
    assign out_exiting_stall_out = bb_stencil_2d_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going16_stencil_2d2_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,43)
    assign out_exiting_valid_out = bb_stencil_2d_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going16_stencil_2d2_exiting_valid_out;

    // out_stall_out_0(GPOUT,44)
    assign out_stall_out_0 = stencil_2d_B6_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,45)
    assign out_stall_out_1 = stencil_2d_B6_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,46)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,47)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,48)
    assign out_valid_out_0 = stencil_2d_B6_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,50)
    assign out_pipeline_valid_out = bb_stencil_2d_B6_stall_region_out_pipeline_valid_out;

endmodule
