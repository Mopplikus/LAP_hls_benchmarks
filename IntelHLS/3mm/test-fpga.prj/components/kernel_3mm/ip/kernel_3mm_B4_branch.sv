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

// SystemVerilog created from kernel_3mm_B4_branch
// Created for function/kernel kernel_3mm
// SystemVerilog created on Thu Apr 27 14:26:50 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_B4_branch (
    input wire [0:0] in_almost_empty_in,
    input wire [0:0] in_c0_exe10375,
    input wire [31:0] in_c0_exe11376,
    input wire [0:0] in_c0_exe12377,
    input wire [63:0] in_c0_exe13378,
    input wire [63:0] in_c0_exe1366,
    input wire [0:0] in_c0_exe14379,
    input wire [0:0] in_c0_exe15380,
    input wire [0:0] in_c0_exe16381,
    input wire [0:0] in_c0_exe17382,
    input wire [0:0] in_c0_exe18383,
    input wire [0:0] in_c0_exe19384,
    input wire [31:0] in_c0_exe20385,
    input wire [0:0] in_c0_exe21386,
    input wire [0:0] in_c0_exe22387,
    input wire [0:0] in_c0_exe23388,
    input wire [63:0] in_c0_exe2367,
    input wire [0:0] in_c0_exe24389,
    input wire [0:0] in_c0_exe25390,
    input wire [0:0] in_c0_exe26,
    input wire [31:0] in_c0_exe3368,
    input wire [0:0] in_c0_exe5370,
    input wire [0:0] in_c0_exe6371,
    input wire [0:0] in_c0_exe7372,
    input wire [0:0] in_c0_exe8373,
    input wire [0:0] in_c0_exe9374,
    input wire [0:0] in_empty_in,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe10375,
    output wire [31:0] out_c0_exe11376,
    output wire [0:0] out_c0_exe12377,
    output wire [63:0] out_c0_exe13378,
    output wire [63:0] out_c0_exe1366,
    output wire [0:0] out_c0_exe14379,
    output wire [0:0] out_c0_exe15380,
    output wire [0:0] out_c0_exe16381,
    output wire [0:0] out_c0_exe17382,
    output wire [0:0] out_c0_exe18383,
    output wire [0:0] out_c0_exe19384,
    output wire [31:0] out_c0_exe20385,
    output wire [0:0] out_c0_exe21386,
    output wire [0:0] out_c0_exe22387,
    output wire [0:0] out_c0_exe23388,
    output wire [63:0] out_c0_exe2367,
    output wire [0:0] out_c0_exe24389,
    output wire [0:0] out_c0_exe25390,
    output wire [0:0] out_c0_exe26,
    output wire [31:0] out_c0_exe3368,
    output wire [0:0] out_c0_exe6371,
    output wire [0:0] out_c0_exe7372,
    output wire [0:0] out_c0_exe8373,
    output wire [0:0] out_c0_exe9374,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc11_in;
    wire [0:0] adapt_scalar_trunc11_q;
    wire [0:0] adapt_scalar_trunc14_in;
    wire [0:0] adapt_scalar_trunc14_q;
    wire [0:0] adapt_scalar_trunc17_in;
    wire [0:0] adapt_scalar_trunc17_q;
    wire [0:0] adapt_scalar_trunc21_in;
    wire [0:0] adapt_scalar_trunc21_q;
    wire [0:0] adapt_scalar_trunc25_in;
    wire [0:0] adapt_scalar_trunc25_q;
    wire [0:0] adapt_scalar_trunc28_in;
    wire [0:0] adapt_scalar_trunc28_q;
    wire [0:0] adapt_scalar_trunc31_in;
    wire [0:0] adapt_scalar_trunc31_q;
    wire [0:0] adapt_scalar_trunc34_in;
    wire [0:0] adapt_scalar_trunc34_q;
    wire [0:0] adapt_scalar_trunc37_in;
    wire [0:0] adapt_scalar_trunc37_q;
    wire [0:0] adapt_scalar_trunc40_in;
    wire [0:0] adapt_scalar_trunc40_q;
    wire [0:0] adapt_scalar_trunc44_in;
    wire [0:0] adapt_scalar_trunc44_q;
    wire [0:0] adapt_scalar_trunc47_in;
    wire [0:0] adapt_scalar_trunc47_q;
    wire [0:0] adapt_scalar_trunc5_in;
    wire [0:0] adapt_scalar_trunc5_q;
    wire [0:0] adapt_scalar_trunc50_in;
    wire [0:0] adapt_scalar_trunc50_q;
    wire [0:0] adapt_scalar_trunc53_in;
    wire [0:0] adapt_scalar_trunc53_q;
    wire [0:0] adapt_scalar_trunc56_in;
    wire [0:0] adapt_scalar_trunc56_q;
    wire [0:0] adapt_scalar_trunc59_in;
    wire [0:0] adapt_scalar_trunc59_q;
    wire [0:0] adapt_scalar_trunc8_in;
    wire [0:0] adapt_scalar_trunc8_q;
    wire [6:0] c_i7_010_q;
    wire [7:0] element_extension12_q;
    wire [7:0] element_extension15_q;
    wire [7:0] element_extension19_q;
    wire [7:0] element_extension23_q;
    wire [7:0] element_extension26_q;
    wire [7:0] element_extension29_q;
    wire [7:0] element_extension3_q;
    wire [7:0] element_extension32_q;
    wire [7:0] element_extension35_q;
    wire [7:0] element_extension38_q;
    wire [7:0] element_extension42_q;
    wire [7:0] element_extension45_q;
    wire [7:0] element_extension48_q;
    wire [7:0] element_extension51_q;
    wire [7:0] element_extension54_q;
    wire [7:0] element_extension57_q;
    wire [7:0] element_extension6_q;
    wire [7:0] element_extension9_q;
    wire [431:0] kernel_3mm_B4_branch_data_pack_q;
    wire [63:0] kernel_3mm_B4_branch_data_unpack_0_b;
    wire [63:0] kernel_3mm_B4_branch_data_unpack_1_b;
    wire [63:0] kernel_3mm_B4_branch_data_unpack_10_b;
    wire [7:0] kernel_3mm_B4_branch_data_unpack_11_b;
    wire [7:0] kernel_3mm_B4_branch_data_unpack_12_b;
    wire [7:0] kernel_3mm_B4_branch_data_unpack_13_b;
    wire [7:0] kernel_3mm_B4_branch_data_unpack_14_b;
    wire [7:0] kernel_3mm_B4_branch_data_unpack_15_b;
    wire [7:0] kernel_3mm_B4_branch_data_unpack_16_b;
    wire [31:0] kernel_3mm_B4_branch_data_unpack_17_b;
    wire [7:0] kernel_3mm_B4_branch_data_unpack_18_b;
    wire [7:0] kernel_3mm_B4_branch_data_unpack_19_b;
    wire [31:0] kernel_3mm_B4_branch_data_unpack_2_b;
    wire [7:0] kernel_3mm_B4_branch_data_unpack_20_b;
    wire [7:0] kernel_3mm_B4_branch_data_unpack_21_b;
    wire [7:0] kernel_3mm_B4_branch_data_unpack_22_b;
    wire [7:0] kernel_3mm_B4_branch_data_unpack_23_b;
    wire [7:0] kernel_3mm_B4_branch_data_unpack_3_b;
    wire [7:0] kernel_3mm_B4_branch_data_unpack_4_b;
    wire [7:0] kernel_3mm_B4_branch_data_unpack_5_b;
    wire [7:0] kernel_3mm_B4_branch_data_unpack_6_b;
    wire [7:0] kernel_3mm_B4_branch_data_unpack_7_b;
    wire [31:0] kernel_3mm_B4_branch_data_unpack_8_b;
    wire [7:0] kernel_3mm_B4_branch_data_unpack_9_b;
    wire [0:0] kernel_3mm_B4_branch_valid_and_q;
    reg [0:0] rst_sync_rst_sclrn;


    // c_i7_010(CONSTANT,20)
    assign c_i7_010_q = $unsigned(7'b0000000);

    // element_extension57(BITJOIN,53)
    assign element_extension57_q = {c_i7_010_q, in_c0_exe26};

    // element_extension54(BITJOIN,52)
    assign element_extension54_q = {c_i7_010_q, in_c0_exe25390};

    // element_extension51(BITJOIN,51)
    assign element_extension51_q = {c_i7_010_q, in_c0_exe24389};

    // element_extension48(BITJOIN,50)
    assign element_extension48_q = {c_i7_010_q, in_c0_exe23388};

    // element_extension45(BITJOIN,49)
    assign element_extension45_q = {c_i7_010_q, in_c0_exe22387};

    // element_extension42(BITJOIN,48)
    assign element_extension42_q = {c_i7_010_q, in_c0_exe21386};

    // element_extension38(BITJOIN,47)
    assign element_extension38_q = {c_i7_010_q, in_c0_exe19384};

    // element_extension35(BITJOIN,46)
    assign element_extension35_q = {c_i7_010_q, in_c0_exe18383};

    // element_extension32(BITJOIN,45)
    assign element_extension32_q = {c_i7_010_q, in_c0_exe17382};

    // element_extension29(BITJOIN,43)
    assign element_extension29_q = {c_i7_010_q, in_c0_exe16381};

    // element_extension26(BITJOIN,42)
    assign element_extension26_q = {c_i7_010_q, in_c0_exe15380};

    // element_extension23(BITJOIN,41)
    assign element_extension23_q = {c_i7_010_q, in_c0_exe14379};

    // element_extension19(BITJOIN,40)
    assign element_extension19_q = {c_i7_010_q, in_c0_exe12377};

    // element_extension15(BITJOIN,39)
    assign element_extension15_q = {c_i7_010_q, in_c0_exe10375};

    // element_extension12(BITJOIN,38)
    assign element_extension12_q = {c_i7_010_q, in_c0_exe9374};

    // element_extension9(BITJOIN,55)
    assign element_extension9_q = {c_i7_010_q, in_c0_exe8373};

    // element_extension6(BITJOIN,54)
    assign element_extension6_q = {c_i7_010_q, in_c0_exe7372};

    // element_extension3(BITJOIN,44)
    assign element_extension3_q = {c_i7_010_q, in_c0_exe6371};

    // kernel_3mm_B4_branch_data_pack(BITJOIN,85)
    assign kernel_3mm_B4_branch_data_pack_q = {element_extension57_q, element_extension54_q, element_extension51_q, element_extension48_q, element_extension45_q, element_extension42_q, in_c0_exe20385, element_extension38_q, element_extension35_q, element_extension32_q, element_extension29_q, element_extension26_q, element_extension23_q, in_c0_exe13378, element_extension19_q, in_c0_exe11376, element_extension15_q, element_extension12_q, element_extension9_q, element_extension6_q, element_extension3_q, in_c0_exe3368, in_c0_exe2367, in_c0_exe1366};

    // kernel_3mm_B4_branch_data_unpack_7(BITSELECT,107)
    assign kernel_3mm_B4_branch_data_unpack_7_b = kernel_3mm_B4_branch_data_pack_q[199:192];

    // adapt_scalar_trunc17(ROUND,4)
    assign adapt_scalar_trunc17_in = kernel_3mm_B4_branch_data_unpack_7_b[0:0];
    assign adapt_scalar_trunc17_q = adapt_scalar_trunc17_in[0:0];

    // out_c0_exe10375(GPOUT,111)
    assign out_c0_exe10375 = adapt_scalar_trunc17_q;

    // kernel_3mm_B4_branch_data_unpack_8(BITSELECT,108)
    assign kernel_3mm_B4_branch_data_unpack_8_b = kernel_3mm_B4_branch_data_pack_q[231:200];

    // out_c0_exe11376(GPOUT,112)
    assign out_c0_exe11376 = kernel_3mm_B4_branch_data_unpack_8_b;

    // kernel_3mm_B4_branch_data_unpack_9(BITSELECT,109)
    assign kernel_3mm_B4_branch_data_unpack_9_b = kernel_3mm_B4_branch_data_pack_q[239:232];

    // adapt_scalar_trunc21(ROUND,5)
    assign adapt_scalar_trunc21_in = kernel_3mm_B4_branch_data_unpack_9_b[0:0];
    assign adapt_scalar_trunc21_q = adapt_scalar_trunc21_in[0:0];

    // out_c0_exe12377(GPOUT,113)
    assign out_c0_exe12377 = adapt_scalar_trunc21_q;

    // kernel_3mm_B4_branch_data_unpack_10(BITSELECT,88)
    assign kernel_3mm_B4_branch_data_unpack_10_b = kernel_3mm_B4_branch_data_pack_q[303:240];

    // out_c0_exe13378(GPOUT,114)
    assign out_c0_exe13378 = kernel_3mm_B4_branch_data_unpack_10_b;

    // kernel_3mm_B4_branch_data_unpack_0(BITSELECT,86)
    assign kernel_3mm_B4_branch_data_unpack_0_b = kernel_3mm_B4_branch_data_pack_q[63:0];

    // out_c0_exe1366(GPOUT,115)
    assign out_c0_exe1366 = kernel_3mm_B4_branch_data_unpack_0_b;

    // kernel_3mm_B4_branch_data_unpack_11(BITSELECT,89)
    assign kernel_3mm_B4_branch_data_unpack_11_b = kernel_3mm_B4_branch_data_pack_q[311:304];

    // adapt_scalar_trunc25(ROUND,6)
    assign adapt_scalar_trunc25_in = kernel_3mm_B4_branch_data_unpack_11_b[0:0];
    assign adapt_scalar_trunc25_q = adapt_scalar_trunc25_in[0:0];

    // out_c0_exe14379(GPOUT,116)
    assign out_c0_exe14379 = adapt_scalar_trunc25_q;

    // kernel_3mm_B4_branch_data_unpack_12(BITSELECT,90)
    assign kernel_3mm_B4_branch_data_unpack_12_b = kernel_3mm_B4_branch_data_pack_q[319:312];

    // adapt_scalar_trunc28(ROUND,7)
    assign adapt_scalar_trunc28_in = kernel_3mm_B4_branch_data_unpack_12_b[0:0];
    assign adapt_scalar_trunc28_q = adapt_scalar_trunc28_in[0:0];

    // out_c0_exe15380(GPOUT,117)
    assign out_c0_exe15380 = adapt_scalar_trunc28_q;

    // kernel_3mm_B4_branch_data_unpack_13(BITSELECT,91)
    assign kernel_3mm_B4_branch_data_unpack_13_b = kernel_3mm_B4_branch_data_pack_q[327:320];

    // adapt_scalar_trunc31(ROUND,8)
    assign adapt_scalar_trunc31_in = kernel_3mm_B4_branch_data_unpack_13_b[0:0];
    assign adapt_scalar_trunc31_q = adapt_scalar_trunc31_in[0:0];

    // out_c0_exe16381(GPOUT,118)
    assign out_c0_exe16381 = adapt_scalar_trunc31_q;

    // kernel_3mm_B4_branch_data_unpack_14(BITSELECT,92)
    assign kernel_3mm_B4_branch_data_unpack_14_b = kernel_3mm_B4_branch_data_pack_q[335:328];

    // adapt_scalar_trunc34(ROUND,9)
    assign adapt_scalar_trunc34_in = kernel_3mm_B4_branch_data_unpack_14_b[0:0];
    assign adapt_scalar_trunc34_q = adapt_scalar_trunc34_in[0:0];

    // out_c0_exe17382(GPOUT,119)
    assign out_c0_exe17382 = adapt_scalar_trunc34_q;

    // kernel_3mm_B4_branch_data_unpack_15(BITSELECT,93)
    assign kernel_3mm_B4_branch_data_unpack_15_b = kernel_3mm_B4_branch_data_pack_q[343:336];

    // adapt_scalar_trunc37(ROUND,10)
    assign adapt_scalar_trunc37_in = kernel_3mm_B4_branch_data_unpack_15_b[0:0];
    assign adapt_scalar_trunc37_q = adapt_scalar_trunc37_in[0:0];

    // out_c0_exe18383(GPOUT,120)
    assign out_c0_exe18383 = adapt_scalar_trunc37_q;

    // kernel_3mm_B4_branch_data_unpack_16(BITSELECT,94)
    assign kernel_3mm_B4_branch_data_unpack_16_b = kernel_3mm_B4_branch_data_pack_q[351:344];

    // adapt_scalar_trunc40(ROUND,11)
    assign adapt_scalar_trunc40_in = kernel_3mm_B4_branch_data_unpack_16_b[0:0];
    assign adapt_scalar_trunc40_q = adapt_scalar_trunc40_in[0:0];

    // out_c0_exe19384(GPOUT,121)
    assign out_c0_exe19384 = adapt_scalar_trunc40_q;

    // kernel_3mm_B4_branch_data_unpack_17(BITSELECT,95)
    assign kernel_3mm_B4_branch_data_unpack_17_b = kernel_3mm_B4_branch_data_pack_q[383:352];

    // out_c0_exe20385(GPOUT,122)
    assign out_c0_exe20385 = kernel_3mm_B4_branch_data_unpack_17_b;

    // kernel_3mm_B4_branch_data_unpack_18(BITSELECT,96)
    assign kernel_3mm_B4_branch_data_unpack_18_b = kernel_3mm_B4_branch_data_pack_q[391:384];

    // adapt_scalar_trunc44(ROUND,12)
    assign adapt_scalar_trunc44_in = kernel_3mm_B4_branch_data_unpack_18_b[0:0];
    assign adapt_scalar_trunc44_q = adapt_scalar_trunc44_in[0:0];

    // out_c0_exe21386(GPOUT,123)
    assign out_c0_exe21386 = adapt_scalar_trunc44_q;

    // kernel_3mm_B4_branch_data_unpack_19(BITSELECT,97)
    assign kernel_3mm_B4_branch_data_unpack_19_b = kernel_3mm_B4_branch_data_pack_q[399:392];

    // adapt_scalar_trunc47(ROUND,13)
    assign adapt_scalar_trunc47_in = kernel_3mm_B4_branch_data_unpack_19_b[0:0];
    assign adapt_scalar_trunc47_q = adapt_scalar_trunc47_in[0:0];

    // out_c0_exe22387(GPOUT,124)
    assign out_c0_exe22387 = adapt_scalar_trunc47_q;

    // kernel_3mm_B4_branch_data_unpack_20(BITSELECT,99)
    assign kernel_3mm_B4_branch_data_unpack_20_b = kernel_3mm_B4_branch_data_pack_q[407:400];

    // adapt_scalar_trunc50(ROUND,15)
    assign adapt_scalar_trunc50_in = kernel_3mm_B4_branch_data_unpack_20_b[0:0];
    assign adapt_scalar_trunc50_q = adapt_scalar_trunc50_in[0:0];

    // out_c0_exe23388(GPOUT,125)
    assign out_c0_exe23388 = adapt_scalar_trunc50_q;

    // kernel_3mm_B4_branch_data_unpack_1(BITSELECT,87)
    assign kernel_3mm_B4_branch_data_unpack_1_b = kernel_3mm_B4_branch_data_pack_q[127:64];

    // out_c0_exe2367(GPOUT,126)
    assign out_c0_exe2367 = kernel_3mm_B4_branch_data_unpack_1_b;

    // kernel_3mm_B4_branch_data_unpack_21(BITSELECT,100)
    assign kernel_3mm_B4_branch_data_unpack_21_b = kernel_3mm_B4_branch_data_pack_q[415:408];

    // adapt_scalar_trunc53(ROUND,16)
    assign adapt_scalar_trunc53_in = kernel_3mm_B4_branch_data_unpack_21_b[0:0];
    assign adapt_scalar_trunc53_q = adapt_scalar_trunc53_in[0:0];

    // out_c0_exe24389(GPOUT,127)
    assign out_c0_exe24389 = adapt_scalar_trunc53_q;

    // kernel_3mm_B4_branch_data_unpack_22(BITSELECT,101)
    assign kernel_3mm_B4_branch_data_unpack_22_b = kernel_3mm_B4_branch_data_pack_q[423:416];

    // adapt_scalar_trunc56(ROUND,17)
    assign adapt_scalar_trunc56_in = kernel_3mm_B4_branch_data_unpack_22_b[0:0];
    assign adapt_scalar_trunc56_q = adapt_scalar_trunc56_in[0:0];

    // out_c0_exe25390(GPOUT,128)
    assign out_c0_exe25390 = adapt_scalar_trunc56_q;

    // kernel_3mm_B4_branch_data_unpack_23(BITSELECT,102)
    assign kernel_3mm_B4_branch_data_unpack_23_b = kernel_3mm_B4_branch_data_pack_q[431:424];

    // adapt_scalar_trunc59(ROUND,18)
    assign adapt_scalar_trunc59_in = kernel_3mm_B4_branch_data_unpack_23_b[0:0];
    assign adapt_scalar_trunc59_q = adapt_scalar_trunc59_in[0:0];

    // out_c0_exe26(GPOUT,129)
    assign out_c0_exe26 = adapt_scalar_trunc59_q;

    // kernel_3mm_B4_branch_data_unpack_2(BITSELECT,98)
    assign kernel_3mm_B4_branch_data_unpack_2_b = kernel_3mm_B4_branch_data_pack_q[159:128];

    // out_c0_exe3368(GPOUT,130)
    assign out_c0_exe3368 = kernel_3mm_B4_branch_data_unpack_2_b;

    // kernel_3mm_B4_branch_data_unpack_3(BITSELECT,103)
    assign kernel_3mm_B4_branch_data_unpack_3_b = kernel_3mm_B4_branch_data_pack_q[167:160];

    // adapt_scalar_trunc5(ROUND,14)
    assign adapt_scalar_trunc5_in = kernel_3mm_B4_branch_data_unpack_3_b[0:0];
    assign adapt_scalar_trunc5_q = adapt_scalar_trunc5_in[0:0];

    // out_c0_exe6371(GPOUT,131)
    assign out_c0_exe6371 = adapt_scalar_trunc5_q;

    // kernel_3mm_B4_branch_data_unpack_4(BITSELECT,104)
    assign kernel_3mm_B4_branch_data_unpack_4_b = kernel_3mm_B4_branch_data_pack_q[175:168];

    // adapt_scalar_trunc8(ROUND,19)
    assign adapt_scalar_trunc8_in = kernel_3mm_B4_branch_data_unpack_4_b[0:0];
    assign adapt_scalar_trunc8_q = adapt_scalar_trunc8_in[0:0];

    // out_c0_exe7372(GPOUT,132)
    assign out_c0_exe7372 = adapt_scalar_trunc8_q;

    // kernel_3mm_B4_branch_data_unpack_5(BITSELECT,105)
    assign kernel_3mm_B4_branch_data_unpack_5_b = kernel_3mm_B4_branch_data_pack_q[183:176];

    // adapt_scalar_trunc11(ROUND,2)
    assign adapt_scalar_trunc11_in = kernel_3mm_B4_branch_data_unpack_5_b[0:0];
    assign adapt_scalar_trunc11_q = adapt_scalar_trunc11_in[0:0];

    // out_c0_exe8373(GPOUT,133)
    assign out_c0_exe8373 = adapt_scalar_trunc11_q;

    // kernel_3mm_B4_branch_data_unpack_6(BITSELECT,106)
    assign kernel_3mm_B4_branch_data_unpack_6_b = kernel_3mm_B4_branch_data_pack_q[191:184];

    // adapt_scalar_trunc14(ROUND,3)
    assign adapt_scalar_trunc14_in = kernel_3mm_B4_branch_data_unpack_6_b[0:0];
    assign adapt_scalar_trunc14_q = adapt_scalar_trunc14_in[0:0];

    // out_c0_exe9374(GPOUT,134)
    assign out_c0_exe9374 = adapt_scalar_trunc14_q;

    // out_stall_out(GPOUT,135)
    assign out_stall_out = in_stall_in_0;

    // kernel_3mm_B4_branch_valid_and(LOGICAL,110)
    assign kernel_3mm_B4_branch_valid_and_q = in_valid_in & in_c0_exe5370;

    // out_valid_out_0(GPOUT,136)
    assign out_valid_out_0 = kernel_3mm_B4_branch_valid_and_q;

    // rst_sync(RESETSYNC,137)
    acl_reset_handler #(
        .ASYNC_RESET(0),
        .USE_SYNCHRONIZER(1),
        .PULSE_EXTENSION(0),
        .PIPE_DEPTH(3),
        .DUPLICATE(1)
    ) therst_sync (
        .clk(clock),
        .i_resetn(resetn),
        .o_sclrn(rst_sync_rst_sclrn)
    );

endmodule
