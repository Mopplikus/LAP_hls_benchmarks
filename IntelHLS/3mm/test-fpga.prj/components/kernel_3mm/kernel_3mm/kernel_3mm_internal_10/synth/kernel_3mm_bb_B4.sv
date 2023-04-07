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

// SystemVerilog created from bb_kernel_3mm_B4
// Created for function/kernel kernel_3mm
// SystemVerilog created on Fri Apr  7 18:25:08 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_bb_B4 (
    input wire [63:0] in_arrayidx121205_0,
    input wire [63:0] in_arrayidx121205_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked53_0,
    input wire [0:0] in_forked53_1,
    input wire [0:0] in_forked81137_0,
    input wire [0:0] in_forked81137_1,
    input wire [0:0] in_forked8183_pop24181_0,
    input wire [0:0] in_forked8183_pop24181_1,
    input wire [0:0] in_forked8184_pop34208_0,
    input wire [0:0] in_forked8184_pop34208_1,
    input wire [31:0] in_i_060_pop23108_pop39202_0,
    input wire [31:0] in_i_060_pop23108_pop39202_1,
    input wire [31:0] in_i_060_pop23171_0,
    input wire [31:0] in_i_060_pop23171_1,
    input wire [63:0] in_idxprom11204_0,
    input wire [63:0] in_idxprom11204_1,
    input wire [63:0] in_idxprom203_0,
    input wire [63:0] in_idxprom203_1,
    input wire [0:0] in_memdep_phi2_pop18151_0,
    input wire [0:0] in_memdep_phi2_pop18151_1,
    input wire [0:0] in_memdep_phi2_pop1891_pop26191_0,
    input wire [0:0] in_memdep_phi2_pop1891_pop26191_1,
    input wire [0:0] in_memdep_phi2_pop1892_pop36209_0,
    input wire [0:0] in_memdep_phi2_pop1892_pop36209_1,
    input wire [0:0] in_memdep_phi3_pop19158_0,
    input wire [0:0] in_memdep_phi3_pop19158_1,
    input wire [0:0] in_memdep_phi3_pop1995_pop27196_0,
    input wire [0:0] in_memdep_phi3_pop1995_pop27196_1,
    input wire [0:0] in_memdep_phi3_pop1996_pop37210_0,
    input wire [0:0] in_memdep_phi3_pop1996_pop37210_1,
    input wire [0:0] in_memdep_phi5_pop20100_pop38211_0,
    input wire [0:0] in_memdep_phi5_pop20100_pop38211_1,
    input wire [0:0] in_memdep_phi5_pop20165_0,
    input wire [0:0] in_memdep_phi5_pop20165_1,
    input wire [0:0] in_memdep_phi5_pop2099_pop28201_0,
    input wire [0:0] in_memdep_phi5_pop2099_pop28201_1,
    input wire [0:0] in_memdep_phi_pop17144_0,
    input wire [0:0] in_memdep_phi_pop17144_1,
    input wire [0:0] in_memdep_phi_pop1787_pop25186_0,
    input wire [0:0] in_memdep_phi_pop1787_pop25186_1,
    input wire [0:0] in_memdep_phi_pop1788_pop35206_0,
    input wire [0:0] in_memdep_phi_pop1788_pop35206_1,
    input wire [0:0] in_notcmp68207_0,
    input wire [0:0] in_notcmp68207_1,
    input wire [0:0] in_notcmp73111_pop40212_0,
    input wire [0:0] in_notcmp73111_pop40212_1,
    input wire [0:0] in_notcmp73176_0,
    input wire [0:0] in_notcmp73176_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_unnamed_kernel_3mm3_0,
    input wire [31:0] in_unnamed_kernel_3mm3_1,
    input wire [31:0] in_unnamed_kernel_3mm4_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm4_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm4_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm4_kernel_3mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_3mm5_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm5_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm5_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm5_kernel_3mm_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe10395,
    output wire [31:0] out_c0_exe11396,
    output wire [0:0] out_c0_exe12397,
    output wire [63:0] out_c0_exe13398,
    output wire [0:0] out_c0_exe14399,
    output wire [0:0] out_c0_exe15400,
    output wire [0:0] out_c0_exe16401,
    output wire [0:0] out_c0_exe17402,
    output wire [0:0] out_c0_exe18403,
    output wire [0:0] out_c0_exe19404,
    output wire [31:0] out_c0_exe20405,
    output wire [0:0] out_c0_exe21406,
    output wire [0:0] out_c0_exe22407,
    output wire [0:0] out_c0_exe23408,
    output wire [63:0] out_c0_exe2387,
    output wire [0:0] out_c0_exe24409,
    output wire [0:0] out_c0_exe25410,
    output wire [0:0] out_c0_exe26,
    output wire [63:0] out_c0_exe3388,
    output wire [31:0] out_c0_exe4389,
    output wire [0:0] out_c0_exe6391,
    output wire [0:0] out_c0_exe7392,
    output wire [0:0] out_c0_exe8393,
    output wire [0:0] out_c0_exe9394,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_kernel_3mm4_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm4_kernel_3mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_3mm4_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm4_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm4_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm4_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm4_kernel_3mm_avm_writedata,
    output wire [31:0] out_unnamed_kernel_3mm5_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm5_kernel_3mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_3mm5_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm5_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm5_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm5_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm5_kernel_3mm_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_kernel_3mm_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_exiting_stall_out;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_exiting_valid_out;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_c0_exe10395;
    wire [31:0] bb_kernel_3mm_B4_stall_region_out_c0_exe11396;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_c0_exe12397;
    wire [63:0] bb_kernel_3mm_B4_stall_region_out_c0_exe13398;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_c0_exe14399;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_c0_exe15400;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_c0_exe16401;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_c0_exe17402;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_c0_exe18403;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_c0_exe19404;
    wire [31:0] bb_kernel_3mm_B4_stall_region_out_c0_exe20405;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_c0_exe21406;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_c0_exe22407;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_c0_exe23408;
    wire [63:0] bb_kernel_3mm_B4_stall_region_out_c0_exe2387;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_c0_exe24409;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_c0_exe25410;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_c0_exe26;
    wire [63:0] bb_kernel_3mm_B4_stall_region_out_c0_exe3388;
    wire [31:0] bb_kernel_3mm_B4_stall_region_out_c0_exe4389;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_c0_exe5390;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_c0_exe6391;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_c0_exe7392;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_c0_exe8393;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_c0_exe9394;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_stall_out;
    wire [31:0] bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm4_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm4_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm4_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm4_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm4_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm4_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm4_kernel_3mm_avm_writedata;
    wire [31:0] bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm5_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm5_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm5_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm5_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm5_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm5_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm5_kernel_3mm_avm_writedata;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_valid_out;
    wire [0:0] kernel_3mm_B4_branch_out_c0_exe10395;
    wire [31:0] kernel_3mm_B4_branch_out_c0_exe11396;
    wire [0:0] kernel_3mm_B4_branch_out_c0_exe12397;
    wire [63:0] kernel_3mm_B4_branch_out_c0_exe13398;
    wire [0:0] kernel_3mm_B4_branch_out_c0_exe14399;
    wire [0:0] kernel_3mm_B4_branch_out_c0_exe15400;
    wire [0:0] kernel_3mm_B4_branch_out_c0_exe16401;
    wire [0:0] kernel_3mm_B4_branch_out_c0_exe17402;
    wire [0:0] kernel_3mm_B4_branch_out_c0_exe18403;
    wire [0:0] kernel_3mm_B4_branch_out_c0_exe19404;
    wire [31:0] kernel_3mm_B4_branch_out_c0_exe20405;
    wire [0:0] kernel_3mm_B4_branch_out_c0_exe21406;
    wire [0:0] kernel_3mm_B4_branch_out_c0_exe22407;
    wire [0:0] kernel_3mm_B4_branch_out_c0_exe23408;
    wire [63:0] kernel_3mm_B4_branch_out_c0_exe2387;
    wire [0:0] kernel_3mm_B4_branch_out_c0_exe24409;
    wire [0:0] kernel_3mm_B4_branch_out_c0_exe25410;
    wire [0:0] kernel_3mm_B4_branch_out_c0_exe26;
    wire [63:0] kernel_3mm_B4_branch_out_c0_exe3388;
    wire [31:0] kernel_3mm_B4_branch_out_c0_exe4389;
    wire [0:0] kernel_3mm_B4_branch_out_c0_exe6391;
    wire [0:0] kernel_3mm_B4_branch_out_c0_exe7392;
    wire [0:0] kernel_3mm_B4_branch_out_c0_exe8393;
    wire [0:0] kernel_3mm_B4_branch_out_c0_exe9394;
    wire [0:0] kernel_3mm_B4_branch_out_stall_out;
    wire [0:0] kernel_3mm_B4_branch_out_valid_out_0;
    wire [0:0] kernel_3mm_B4_branch_out_valid_out_1;
    wire [63:0] kernel_3mm_B4_merge_out_arrayidx121205;
    wire [0:0] kernel_3mm_B4_merge_out_forked53;
    wire [0:0] kernel_3mm_B4_merge_out_forked81137;
    wire [0:0] kernel_3mm_B4_merge_out_forked8183_pop24181;
    wire [0:0] kernel_3mm_B4_merge_out_forked8184_pop34208;
    wire [31:0] kernel_3mm_B4_merge_out_i_060_pop23108_pop39202;
    wire [31:0] kernel_3mm_B4_merge_out_i_060_pop23171;
    wire [63:0] kernel_3mm_B4_merge_out_idxprom11204;
    wire [63:0] kernel_3mm_B4_merge_out_idxprom203;
    wire [0:0] kernel_3mm_B4_merge_out_memdep_phi2_pop18151;
    wire [0:0] kernel_3mm_B4_merge_out_memdep_phi2_pop1891_pop26191;
    wire [0:0] kernel_3mm_B4_merge_out_memdep_phi2_pop1892_pop36209;
    wire [0:0] kernel_3mm_B4_merge_out_memdep_phi3_pop19158;
    wire [0:0] kernel_3mm_B4_merge_out_memdep_phi3_pop1995_pop27196;
    wire [0:0] kernel_3mm_B4_merge_out_memdep_phi3_pop1996_pop37210;
    wire [0:0] kernel_3mm_B4_merge_out_memdep_phi5_pop20100_pop38211;
    wire [0:0] kernel_3mm_B4_merge_out_memdep_phi5_pop20165;
    wire [0:0] kernel_3mm_B4_merge_out_memdep_phi5_pop2099_pop28201;
    wire [0:0] kernel_3mm_B4_merge_out_memdep_phi_pop17144;
    wire [0:0] kernel_3mm_B4_merge_out_memdep_phi_pop1787_pop25186;
    wire [0:0] kernel_3mm_B4_merge_out_memdep_phi_pop1788_pop35206;
    wire [0:0] kernel_3mm_B4_merge_out_notcmp68207;
    wire [0:0] kernel_3mm_B4_merge_out_notcmp73111_pop40212;
    wire [0:0] kernel_3mm_B4_merge_out_notcmp73176;
    wire [0:0] kernel_3mm_B4_merge_out_stall_out_0;
    wire [0:0] kernel_3mm_B4_merge_out_stall_out_1;
    wire [31:0] kernel_3mm_B4_merge_out_unnamed_kernel_3mm3;
    wire [0:0] kernel_3mm_B4_merge_out_valid_out;


    // kernel_3mm_B4_merge(BLACKBOX,67)
    kernel_3mm_B4_merge thekernel_3mm_B4_merge (
        .in_arrayidx121205_0(in_arrayidx121205_0),
        .in_arrayidx121205_1(in_arrayidx121205_1),
        .in_forked53_0(in_forked53_0),
        .in_forked53_1(in_forked53_1),
        .in_forked81137_0(in_forked81137_0),
        .in_forked81137_1(in_forked81137_1),
        .in_forked8183_pop24181_0(in_forked8183_pop24181_0),
        .in_forked8183_pop24181_1(in_forked8183_pop24181_1),
        .in_forked8184_pop34208_0(in_forked8184_pop34208_0),
        .in_forked8184_pop34208_1(in_forked8184_pop34208_1),
        .in_i_060_pop23108_pop39202_0(in_i_060_pop23108_pop39202_0),
        .in_i_060_pop23108_pop39202_1(in_i_060_pop23108_pop39202_1),
        .in_i_060_pop23171_0(in_i_060_pop23171_0),
        .in_i_060_pop23171_1(in_i_060_pop23171_1),
        .in_idxprom11204_0(in_idxprom11204_0),
        .in_idxprom11204_1(in_idxprom11204_1),
        .in_idxprom203_0(in_idxprom203_0),
        .in_idxprom203_1(in_idxprom203_1),
        .in_memdep_phi2_pop18151_0(in_memdep_phi2_pop18151_0),
        .in_memdep_phi2_pop18151_1(in_memdep_phi2_pop18151_1),
        .in_memdep_phi2_pop1891_pop26191_0(in_memdep_phi2_pop1891_pop26191_0),
        .in_memdep_phi2_pop1891_pop26191_1(in_memdep_phi2_pop1891_pop26191_1),
        .in_memdep_phi2_pop1892_pop36209_0(in_memdep_phi2_pop1892_pop36209_0),
        .in_memdep_phi2_pop1892_pop36209_1(in_memdep_phi2_pop1892_pop36209_1),
        .in_memdep_phi3_pop19158_0(in_memdep_phi3_pop19158_0),
        .in_memdep_phi3_pop19158_1(in_memdep_phi3_pop19158_1),
        .in_memdep_phi3_pop1995_pop27196_0(in_memdep_phi3_pop1995_pop27196_0),
        .in_memdep_phi3_pop1995_pop27196_1(in_memdep_phi3_pop1995_pop27196_1),
        .in_memdep_phi3_pop1996_pop37210_0(in_memdep_phi3_pop1996_pop37210_0),
        .in_memdep_phi3_pop1996_pop37210_1(in_memdep_phi3_pop1996_pop37210_1),
        .in_memdep_phi5_pop20100_pop38211_0(in_memdep_phi5_pop20100_pop38211_0),
        .in_memdep_phi5_pop20100_pop38211_1(in_memdep_phi5_pop20100_pop38211_1),
        .in_memdep_phi5_pop20165_0(in_memdep_phi5_pop20165_0),
        .in_memdep_phi5_pop20165_1(in_memdep_phi5_pop20165_1),
        .in_memdep_phi5_pop2099_pop28201_0(in_memdep_phi5_pop2099_pop28201_0),
        .in_memdep_phi5_pop2099_pop28201_1(in_memdep_phi5_pop2099_pop28201_1),
        .in_memdep_phi_pop17144_0(in_memdep_phi_pop17144_0),
        .in_memdep_phi_pop17144_1(in_memdep_phi_pop17144_1),
        .in_memdep_phi_pop1787_pop25186_0(in_memdep_phi_pop1787_pop25186_0),
        .in_memdep_phi_pop1787_pop25186_1(in_memdep_phi_pop1787_pop25186_1),
        .in_memdep_phi_pop1788_pop35206_0(in_memdep_phi_pop1788_pop35206_0),
        .in_memdep_phi_pop1788_pop35206_1(in_memdep_phi_pop1788_pop35206_1),
        .in_notcmp68207_0(in_notcmp68207_0),
        .in_notcmp68207_1(in_notcmp68207_1),
        .in_notcmp73111_pop40212_0(in_notcmp73111_pop40212_0),
        .in_notcmp73111_pop40212_1(in_notcmp73111_pop40212_1),
        .in_notcmp73176_0(in_notcmp73176_0),
        .in_notcmp73176_1(in_notcmp73176_1),
        .in_stall_in(bb_kernel_3mm_B4_stall_region_out_stall_out),
        .in_unnamed_kernel_3mm3_0(in_unnamed_kernel_3mm3_0),
        .in_unnamed_kernel_3mm3_1(in_unnamed_kernel_3mm3_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_arrayidx121205(kernel_3mm_B4_merge_out_arrayidx121205),
        .out_forked53(kernel_3mm_B4_merge_out_forked53),
        .out_forked81137(kernel_3mm_B4_merge_out_forked81137),
        .out_forked8183_pop24181(kernel_3mm_B4_merge_out_forked8183_pop24181),
        .out_forked8184_pop34208(kernel_3mm_B4_merge_out_forked8184_pop34208),
        .out_i_060_pop23108_pop39202(kernel_3mm_B4_merge_out_i_060_pop23108_pop39202),
        .out_i_060_pop23171(kernel_3mm_B4_merge_out_i_060_pop23171),
        .out_idxprom11204(kernel_3mm_B4_merge_out_idxprom11204),
        .out_idxprom203(kernel_3mm_B4_merge_out_idxprom203),
        .out_memdep_phi2_pop18151(kernel_3mm_B4_merge_out_memdep_phi2_pop18151),
        .out_memdep_phi2_pop1891_pop26191(kernel_3mm_B4_merge_out_memdep_phi2_pop1891_pop26191),
        .out_memdep_phi2_pop1892_pop36209(kernel_3mm_B4_merge_out_memdep_phi2_pop1892_pop36209),
        .out_memdep_phi3_pop19158(kernel_3mm_B4_merge_out_memdep_phi3_pop19158),
        .out_memdep_phi3_pop1995_pop27196(kernel_3mm_B4_merge_out_memdep_phi3_pop1995_pop27196),
        .out_memdep_phi3_pop1996_pop37210(kernel_3mm_B4_merge_out_memdep_phi3_pop1996_pop37210),
        .out_memdep_phi5_pop20100_pop38211(kernel_3mm_B4_merge_out_memdep_phi5_pop20100_pop38211),
        .out_memdep_phi5_pop20165(kernel_3mm_B4_merge_out_memdep_phi5_pop20165),
        .out_memdep_phi5_pop2099_pop28201(kernel_3mm_B4_merge_out_memdep_phi5_pop2099_pop28201),
        .out_memdep_phi_pop17144(kernel_3mm_B4_merge_out_memdep_phi_pop17144),
        .out_memdep_phi_pop1787_pop25186(kernel_3mm_B4_merge_out_memdep_phi_pop1787_pop25186),
        .out_memdep_phi_pop1788_pop35206(kernel_3mm_B4_merge_out_memdep_phi_pop1788_pop35206),
        .out_notcmp68207(kernel_3mm_B4_merge_out_notcmp68207),
        .out_notcmp73111_pop40212(kernel_3mm_B4_merge_out_notcmp73111_pop40212),
        .out_notcmp73176(kernel_3mm_B4_merge_out_notcmp73176),
        .out_stall_out_0(kernel_3mm_B4_merge_out_stall_out_0),
        .out_stall_out_1(kernel_3mm_B4_merge_out_stall_out_1),
        .out_unnamed_kernel_3mm3(kernel_3mm_B4_merge_out_unnamed_kernel_3mm3),
        .out_valid_out(kernel_3mm_B4_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B4_stall_region(BLACKBOX,2)
    kernel_3mm_bb_B4_stall_region thebb_kernel_3mm_B4_stall_region (
        .in_arrayidx121205(kernel_3mm_B4_merge_out_arrayidx121205),
        .in_flush(in_flush),
        .in_forked53(kernel_3mm_B4_merge_out_forked53),
        .in_forked81137(kernel_3mm_B4_merge_out_forked81137),
        .in_forked8183_pop24181(kernel_3mm_B4_merge_out_forked8183_pop24181),
        .in_forked8184_pop34208(kernel_3mm_B4_merge_out_forked8184_pop34208),
        .in_i_060_pop23108_pop39202(kernel_3mm_B4_merge_out_i_060_pop23108_pop39202),
        .in_i_060_pop23171(kernel_3mm_B4_merge_out_i_060_pop23171),
        .in_idxprom11204(kernel_3mm_B4_merge_out_idxprom11204),
        .in_idxprom203(kernel_3mm_B4_merge_out_idxprom203),
        .in_memdep_phi2_pop18151(kernel_3mm_B4_merge_out_memdep_phi2_pop18151),
        .in_memdep_phi2_pop1891_pop26191(kernel_3mm_B4_merge_out_memdep_phi2_pop1891_pop26191),
        .in_memdep_phi2_pop1892_pop36209(kernel_3mm_B4_merge_out_memdep_phi2_pop1892_pop36209),
        .in_memdep_phi3_pop19158(kernel_3mm_B4_merge_out_memdep_phi3_pop19158),
        .in_memdep_phi3_pop1995_pop27196(kernel_3mm_B4_merge_out_memdep_phi3_pop1995_pop27196),
        .in_memdep_phi3_pop1996_pop37210(kernel_3mm_B4_merge_out_memdep_phi3_pop1996_pop37210),
        .in_memdep_phi5_pop20100_pop38211(kernel_3mm_B4_merge_out_memdep_phi5_pop20100_pop38211),
        .in_memdep_phi5_pop20165(kernel_3mm_B4_merge_out_memdep_phi5_pop20165),
        .in_memdep_phi5_pop2099_pop28201(kernel_3mm_B4_merge_out_memdep_phi5_pop2099_pop28201),
        .in_memdep_phi_pop17144(kernel_3mm_B4_merge_out_memdep_phi_pop17144),
        .in_memdep_phi_pop1787_pop25186(kernel_3mm_B4_merge_out_memdep_phi_pop1787_pop25186),
        .in_memdep_phi_pop1788_pop35206(kernel_3mm_B4_merge_out_memdep_phi_pop1788_pop35206),
        .in_notcmp68207(kernel_3mm_B4_merge_out_notcmp68207),
        .in_notcmp73111_pop40212(kernel_3mm_B4_merge_out_notcmp73111_pop40212),
        .in_notcmp73176(kernel_3mm_B4_merge_out_notcmp73176),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(kernel_3mm_B4_branch_out_stall_out),
        .in_unnamed_kernel_3mm3(kernel_3mm_B4_merge_out_unnamed_kernel_3mm3),
        .in_unnamed_kernel_3mm4_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm4_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm4_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm4_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm4_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm4_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm4_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm4_kernel_3mm_avm_writeack),
        .in_unnamed_kernel_3mm5_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm5_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm5_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm5_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm5_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm5_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm5_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm5_kernel_3mm_avm_writeack),
        .in_valid_in(kernel_3mm_B4_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_exiting_stall_out(bb_kernel_3mm_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_exiting_valid_out(bb_kernel_3mm_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_exiting_valid_out),
        .out_c0_exe10395(bb_kernel_3mm_B4_stall_region_out_c0_exe10395),
        .out_c0_exe11396(bb_kernel_3mm_B4_stall_region_out_c0_exe11396),
        .out_c0_exe12397(bb_kernel_3mm_B4_stall_region_out_c0_exe12397),
        .out_c0_exe13398(bb_kernel_3mm_B4_stall_region_out_c0_exe13398),
        .out_c0_exe14399(bb_kernel_3mm_B4_stall_region_out_c0_exe14399),
        .out_c0_exe15400(bb_kernel_3mm_B4_stall_region_out_c0_exe15400),
        .out_c0_exe16401(bb_kernel_3mm_B4_stall_region_out_c0_exe16401),
        .out_c0_exe17402(bb_kernel_3mm_B4_stall_region_out_c0_exe17402),
        .out_c0_exe18403(bb_kernel_3mm_B4_stall_region_out_c0_exe18403),
        .out_c0_exe19404(bb_kernel_3mm_B4_stall_region_out_c0_exe19404),
        .out_c0_exe20405(bb_kernel_3mm_B4_stall_region_out_c0_exe20405),
        .out_c0_exe21406(bb_kernel_3mm_B4_stall_region_out_c0_exe21406),
        .out_c0_exe22407(bb_kernel_3mm_B4_stall_region_out_c0_exe22407),
        .out_c0_exe23408(bb_kernel_3mm_B4_stall_region_out_c0_exe23408),
        .out_c0_exe2387(bb_kernel_3mm_B4_stall_region_out_c0_exe2387),
        .out_c0_exe24409(bb_kernel_3mm_B4_stall_region_out_c0_exe24409),
        .out_c0_exe25410(bb_kernel_3mm_B4_stall_region_out_c0_exe25410),
        .out_c0_exe26(bb_kernel_3mm_B4_stall_region_out_c0_exe26),
        .out_c0_exe3388(bb_kernel_3mm_B4_stall_region_out_c0_exe3388),
        .out_c0_exe4389(bb_kernel_3mm_B4_stall_region_out_c0_exe4389),
        .out_c0_exe5390(bb_kernel_3mm_B4_stall_region_out_c0_exe5390),
        .out_c0_exe6391(bb_kernel_3mm_B4_stall_region_out_c0_exe6391),
        .out_c0_exe7392(bb_kernel_3mm_B4_stall_region_out_c0_exe7392),
        .out_c0_exe8393(bb_kernel_3mm_B4_stall_region_out_c0_exe8393),
        .out_c0_exe9394(bb_kernel_3mm_B4_stall_region_out_c0_exe9394),
        .out_pipeline_valid_out(bb_kernel_3mm_B4_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_kernel_3mm_B4_stall_region_out_stall_out),
        .out_unnamed_kernel_3mm4_kernel_3mm_avm_address(bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm4_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm4_kernel_3mm_avm_burstcount(bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm4_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm4_kernel_3mm_avm_byteenable(bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm4_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm4_kernel_3mm_avm_enable(bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm4_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm4_kernel_3mm_avm_read(bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm4_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm4_kernel_3mm_avm_write(bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm4_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm4_kernel_3mm_avm_writedata(bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm4_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm5_kernel_3mm_avm_address(bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm5_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm5_kernel_3mm_avm_burstcount(bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm5_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm5_kernel_3mm_avm_byteenable(bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm5_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm5_kernel_3mm_avm_enable(bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm5_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm5_kernel_3mm_avm_read(bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm5_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm5_kernel_3mm_avm_write(bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm5_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm5_kernel_3mm_avm_writedata(bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm5_kernel_3mm_avm_writedata),
        .out_valid_out(bb_kernel_3mm_B4_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_3mm_B4_branch(BLACKBOX,66)
    kernel_3mm_B4_branch thekernel_3mm_B4_branch (
        .in_c0_exe10395(bb_kernel_3mm_B4_stall_region_out_c0_exe10395),
        .in_c0_exe11396(bb_kernel_3mm_B4_stall_region_out_c0_exe11396),
        .in_c0_exe12397(bb_kernel_3mm_B4_stall_region_out_c0_exe12397),
        .in_c0_exe13398(bb_kernel_3mm_B4_stall_region_out_c0_exe13398),
        .in_c0_exe14399(bb_kernel_3mm_B4_stall_region_out_c0_exe14399),
        .in_c0_exe15400(bb_kernel_3mm_B4_stall_region_out_c0_exe15400),
        .in_c0_exe16401(bb_kernel_3mm_B4_stall_region_out_c0_exe16401),
        .in_c0_exe17402(bb_kernel_3mm_B4_stall_region_out_c0_exe17402),
        .in_c0_exe18403(bb_kernel_3mm_B4_stall_region_out_c0_exe18403),
        .in_c0_exe19404(bb_kernel_3mm_B4_stall_region_out_c0_exe19404),
        .in_c0_exe20405(bb_kernel_3mm_B4_stall_region_out_c0_exe20405),
        .in_c0_exe21406(bb_kernel_3mm_B4_stall_region_out_c0_exe21406),
        .in_c0_exe22407(bb_kernel_3mm_B4_stall_region_out_c0_exe22407),
        .in_c0_exe23408(bb_kernel_3mm_B4_stall_region_out_c0_exe23408),
        .in_c0_exe2387(bb_kernel_3mm_B4_stall_region_out_c0_exe2387),
        .in_c0_exe24409(bb_kernel_3mm_B4_stall_region_out_c0_exe24409),
        .in_c0_exe25410(bb_kernel_3mm_B4_stall_region_out_c0_exe25410),
        .in_c0_exe26(bb_kernel_3mm_B4_stall_region_out_c0_exe26),
        .in_c0_exe3388(bb_kernel_3mm_B4_stall_region_out_c0_exe3388),
        .in_c0_exe4389(bb_kernel_3mm_B4_stall_region_out_c0_exe4389),
        .in_c0_exe5390(bb_kernel_3mm_B4_stall_region_out_c0_exe5390),
        .in_c0_exe6391(bb_kernel_3mm_B4_stall_region_out_c0_exe6391),
        .in_c0_exe7392(bb_kernel_3mm_B4_stall_region_out_c0_exe7392),
        .in_c0_exe8393(bb_kernel_3mm_B4_stall_region_out_c0_exe8393),
        .in_c0_exe9394(bb_kernel_3mm_B4_stall_region_out_c0_exe9394),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_kernel_3mm_B4_stall_region_out_valid_out),
        .out_c0_exe10395(kernel_3mm_B4_branch_out_c0_exe10395),
        .out_c0_exe11396(kernel_3mm_B4_branch_out_c0_exe11396),
        .out_c0_exe12397(kernel_3mm_B4_branch_out_c0_exe12397),
        .out_c0_exe13398(kernel_3mm_B4_branch_out_c0_exe13398),
        .out_c0_exe14399(kernel_3mm_B4_branch_out_c0_exe14399),
        .out_c0_exe15400(kernel_3mm_B4_branch_out_c0_exe15400),
        .out_c0_exe16401(kernel_3mm_B4_branch_out_c0_exe16401),
        .out_c0_exe17402(kernel_3mm_B4_branch_out_c0_exe17402),
        .out_c0_exe18403(kernel_3mm_B4_branch_out_c0_exe18403),
        .out_c0_exe19404(kernel_3mm_B4_branch_out_c0_exe19404),
        .out_c0_exe20405(kernel_3mm_B4_branch_out_c0_exe20405),
        .out_c0_exe21406(kernel_3mm_B4_branch_out_c0_exe21406),
        .out_c0_exe22407(kernel_3mm_B4_branch_out_c0_exe22407),
        .out_c0_exe23408(kernel_3mm_B4_branch_out_c0_exe23408),
        .out_c0_exe2387(kernel_3mm_B4_branch_out_c0_exe2387),
        .out_c0_exe24409(kernel_3mm_B4_branch_out_c0_exe24409),
        .out_c0_exe25410(kernel_3mm_B4_branch_out_c0_exe25410),
        .out_c0_exe26(kernel_3mm_B4_branch_out_c0_exe26),
        .out_c0_exe3388(kernel_3mm_B4_branch_out_c0_exe3388),
        .out_c0_exe4389(kernel_3mm_B4_branch_out_c0_exe4389),
        .out_c0_exe6391(kernel_3mm_B4_branch_out_c0_exe6391),
        .out_c0_exe7392(kernel_3mm_B4_branch_out_c0_exe7392),
        .out_c0_exe8393(kernel_3mm_B4_branch_out_c0_exe8393),
        .out_c0_exe9394(kernel_3mm_B4_branch_out_c0_exe9394),
        .out_stall_out(kernel_3mm_B4_branch_out_stall_out),
        .out_valid_out_0(kernel_3mm_B4_branch_out_valid_out_0),
        .out_valid_out_1(kernel_3mm_B4_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe10395(GPOUT,68)
    assign out_c0_exe10395 = kernel_3mm_B4_branch_out_c0_exe10395;

    // out_c0_exe11396(GPOUT,69)
    assign out_c0_exe11396 = kernel_3mm_B4_branch_out_c0_exe11396;

    // out_c0_exe12397(GPOUT,70)
    assign out_c0_exe12397 = kernel_3mm_B4_branch_out_c0_exe12397;

    // out_c0_exe13398(GPOUT,71)
    assign out_c0_exe13398 = kernel_3mm_B4_branch_out_c0_exe13398;

    // out_c0_exe14399(GPOUT,72)
    assign out_c0_exe14399 = kernel_3mm_B4_branch_out_c0_exe14399;

    // out_c0_exe15400(GPOUT,73)
    assign out_c0_exe15400 = kernel_3mm_B4_branch_out_c0_exe15400;

    // out_c0_exe16401(GPOUT,74)
    assign out_c0_exe16401 = kernel_3mm_B4_branch_out_c0_exe16401;

    // out_c0_exe17402(GPOUT,75)
    assign out_c0_exe17402 = kernel_3mm_B4_branch_out_c0_exe17402;

    // out_c0_exe18403(GPOUT,76)
    assign out_c0_exe18403 = kernel_3mm_B4_branch_out_c0_exe18403;

    // out_c0_exe19404(GPOUT,77)
    assign out_c0_exe19404 = kernel_3mm_B4_branch_out_c0_exe19404;

    // out_c0_exe20405(GPOUT,78)
    assign out_c0_exe20405 = kernel_3mm_B4_branch_out_c0_exe20405;

    // out_c0_exe21406(GPOUT,79)
    assign out_c0_exe21406 = kernel_3mm_B4_branch_out_c0_exe21406;

    // out_c0_exe22407(GPOUT,80)
    assign out_c0_exe22407 = kernel_3mm_B4_branch_out_c0_exe22407;

    // out_c0_exe23408(GPOUT,81)
    assign out_c0_exe23408 = kernel_3mm_B4_branch_out_c0_exe23408;

    // out_c0_exe2387(GPOUT,82)
    assign out_c0_exe2387 = kernel_3mm_B4_branch_out_c0_exe2387;

    // out_c0_exe24409(GPOUT,83)
    assign out_c0_exe24409 = kernel_3mm_B4_branch_out_c0_exe24409;

    // out_c0_exe25410(GPOUT,84)
    assign out_c0_exe25410 = kernel_3mm_B4_branch_out_c0_exe25410;

    // out_c0_exe26(GPOUT,85)
    assign out_c0_exe26 = kernel_3mm_B4_branch_out_c0_exe26;

    // out_c0_exe3388(GPOUT,86)
    assign out_c0_exe3388 = kernel_3mm_B4_branch_out_c0_exe3388;

    // out_c0_exe4389(GPOUT,87)
    assign out_c0_exe4389 = kernel_3mm_B4_branch_out_c0_exe4389;

    // out_c0_exe6391(GPOUT,88)
    assign out_c0_exe6391 = kernel_3mm_B4_branch_out_c0_exe6391;

    // out_c0_exe7392(GPOUT,89)
    assign out_c0_exe7392 = kernel_3mm_B4_branch_out_c0_exe7392;

    // out_c0_exe8393(GPOUT,90)
    assign out_c0_exe8393 = kernel_3mm_B4_branch_out_c0_exe8393;

    // out_c0_exe9394(GPOUT,91)
    assign out_c0_exe9394 = kernel_3mm_B4_branch_out_c0_exe9394;

    // out_exiting_stall_out(GPOUT,92)
    assign out_exiting_stall_out = bb_kernel_3mm_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,93)
    assign out_exiting_valid_out = bb_kernel_3mm_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_exiting_valid_out;

    // out_stall_in_0(GPOUT,94)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,95)
    assign out_stall_out_0 = kernel_3mm_B4_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,96)
    assign out_stall_out_1 = kernel_3mm_B4_merge_out_stall_out_1;

    // out_unnamed_kernel_3mm4_kernel_3mm_avm_address(GPOUT,97)
    assign out_unnamed_kernel_3mm4_kernel_3mm_avm_address = bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm4_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm4_kernel_3mm_avm_burstcount(GPOUT,98)
    assign out_unnamed_kernel_3mm4_kernel_3mm_avm_burstcount = bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm4_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm4_kernel_3mm_avm_byteenable(GPOUT,99)
    assign out_unnamed_kernel_3mm4_kernel_3mm_avm_byteenable = bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm4_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm4_kernel_3mm_avm_enable(GPOUT,100)
    assign out_unnamed_kernel_3mm4_kernel_3mm_avm_enable = bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm4_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm4_kernel_3mm_avm_read(GPOUT,101)
    assign out_unnamed_kernel_3mm4_kernel_3mm_avm_read = bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm4_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm4_kernel_3mm_avm_write(GPOUT,102)
    assign out_unnamed_kernel_3mm4_kernel_3mm_avm_write = bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm4_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm4_kernel_3mm_avm_writedata(GPOUT,103)
    assign out_unnamed_kernel_3mm4_kernel_3mm_avm_writedata = bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm4_kernel_3mm_avm_writedata;

    // out_unnamed_kernel_3mm5_kernel_3mm_avm_address(GPOUT,104)
    assign out_unnamed_kernel_3mm5_kernel_3mm_avm_address = bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm5_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm5_kernel_3mm_avm_burstcount(GPOUT,105)
    assign out_unnamed_kernel_3mm5_kernel_3mm_avm_burstcount = bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm5_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm5_kernel_3mm_avm_byteenable(GPOUT,106)
    assign out_unnamed_kernel_3mm5_kernel_3mm_avm_byteenable = bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm5_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm5_kernel_3mm_avm_enable(GPOUT,107)
    assign out_unnamed_kernel_3mm5_kernel_3mm_avm_enable = bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm5_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm5_kernel_3mm_avm_read(GPOUT,108)
    assign out_unnamed_kernel_3mm5_kernel_3mm_avm_read = bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm5_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm5_kernel_3mm_avm_write(GPOUT,109)
    assign out_unnamed_kernel_3mm5_kernel_3mm_avm_write = bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm5_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm5_kernel_3mm_avm_writedata(GPOUT,110)
    assign out_unnamed_kernel_3mm5_kernel_3mm_avm_writedata = bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm5_kernel_3mm_avm_writedata;

    // out_valid_in_0(GPOUT,111)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,112)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,113)
    assign out_valid_out_0 = kernel_3mm_B4_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,114)
    assign out_valid_out_1 = kernel_3mm_B4_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,116)
    assign out_pipeline_valid_out = bb_kernel_3mm_B4_stall_region_out_pipeline_valid_out;

endmodule
