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

// SystemVerilog created from kernel_3mm_B5_branch
// Created for function/kernel kernel_3mm
// SystemVerilog created on Thu Apr 27 14:26:51 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_B5_branch (
    input wire [0:0] in_almost_empty_in,
    input wire [0:0] in_c0_exe103758,
    input wire [31:0] in_c0_exe113769,
    input wire [0:0] in_c0_exe1237710,
    input wire [63:0] in_c0_exe13661,
    input wire [63:0] in_c0_exe1401,
    input wire [0:0] in_c0_exe1437912,
    input wire [0:0] in_c0_exe1538013,
    input wire [0:0] in_c0_exe1638114,
    input wire [0:0] in_c0_exe1738215,
    input wire [0:0] in_c0_exe1838316,
    input wire [0:0] in_c0_exe1938417,
    input wire [31:0] in_c0_exe2038518,
    input wire [0:0] in_c0_exe2138619,
    input wire [0:0] in_c0_exe2238720,
    input wire [0:0] in_c0_exe2338821,
    input wire [63:0] in_c0_exe23672,
    input wire [31:0] in_c0_exe2402,
    input wire [0:0] in_c0_exe2438922,
    input wire [0:0] in_c0_exe2539023,
    input wire [0:0] in_c0_exe2624,
    input wire [0:0] in_c0_exe63714,
    input wire [0:0] in_c0_exe73725,
    input wire [0:0] in_c0_exe83736,
    input wire [0:0] in_c0_exe93747,
    input wire [0:0] in_c1_exe1,
    input wire [0:0] in_empty_in,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe103758,
    output wire [31:0] out_c0_exe113769,
    output wire [0:0] out_c0_exe1237710,
    output wire [63:0] out_c0_exe13661,
    output wire [63:0] out_c0_exe1401,
    output wire [0:0] out_c0_exe1437912,
    output wire [0:0] out_c0_exe1538013,
    output wire [0:0] out_c0_exe1638114,
    output wire [0:0] out_c0_exe1738215,
    output wire [0:0] out_c0_exe1838316,
    output wire [0:0] out_c0_exe1938417,
    output wire [31:0] out_c0_exe2038518,
    output wire [0:0] out_c0_exe2138619,
    output wire [0:0] out_c0_exe2238720,
    output wire [0:0] out_c0_exe2338821,
    output wire [63:0] out_c0_exe23672,
    output wire [31:0] out_c0_exe2402,
    output wire [0:0] out_c0_exe2438922,
    output wire [0:0] out_c0_exe2539023,
    output wire [0:0] out_c0_exe2624,
    output wire [0:0] out_c0_exe63714,
    output wire [0:0] out_c0_exe73725,
    output wire [0:0] out_c0_exe83736,
    output wire [0:0] out_c0_exe93747,
    output wire [0:0] out_c1_exe1,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc10_in;
    wire [0:0] adapt_scalar_trunc10_q;
    wire [0:0] adapt_scalar_trunc13_in;
    wire [0:0] adapt_scalar_trunc13_q;
    wire [0:0] adapt_scalar_trunc16_in;
    wire [0:0] adapt_scalar_trunc16_q;
    wire [0:0] adapt_scalar_trunc20_in;
    wire [0:0] adapt_scalar_trunc20_q;
    wire [0:0] adapt_scalar_trunc23_in;
    wire [0:0] adapt_scalar_trunc23_q;
    wire [0:0] adapt_scalar_trunc26_in;
    wire [0:0] adapt_scalar_trunc26_q;
    wire [0:0] adapt_scalar_trunc29_in;
    wire [0:0] adapt_scalar_trunc29_q;
    wire [0:0] adapt_scalar_trunc32_in;
    wire [0:0] adapt_scalar_trunc32_q;
    wire [0:0] adapt_scalar_trunc35_in;
    wire [0:0] adapt_scalar_trunc35_q;
    wire [0:0] adapt_scalar_trunc38_in;
    wire [0:0] adapt_scalar_trunc38_q;
    wire [0:0] adapt_scalar_trunc4_in;
    wire [0:0] adapt_scalar_trunc4_q;
    wire [0:0] adapt_scalar_trunc42_in;
    wire [0:0] adapt_scalar_trunc42_q;
    wire [0:0] adapt_scalar_trunc45_in;
    wire [0:0] adapt_scalar_trunc45_q;
    wire [0:0] adapt_scalar_trunc48_in;
    wire [0:0] adapt_scalar_trunc48_q;
    wire [0:0] adapt_scalar_trunc51_in;
    wire [0:0] adapt_scalar_trunc51_q;
    wire [0:0] adapt_scalar_trunc54_in;
    wire [0:0] adapt_scalar_trunc54_q;
    wire [0:0] adapt_scalar_trunc57_in;
    wire [0:0] adapt_scalar_trunc57_q;
    wire [0:0] adapt_scalar_trunc62_in;
    wire [0:0] adapt_scalar_trunc62_q;
    wire [0:0] adapt_scalar_trunc7_in;
    wire [0:0] adapt_scalar_trunc7_q;
    wire [6:0] c_i7_012_q;
    wire [7:0] element_extension11_q;
    wire [7:0] element_extension14_q;
    wire [7:0] element_extension18_q;
    wire [7:0] element_extension2_q;
    wire [7:0] element_extension21_q;
    wire [7:0] element_extension24_q;
    wire [7:0] element_extension27_q;
    wire [7:0] element_extension30_q;
    wire [7:0] element_extension33_q;
    wire [7:0] element_extension36_q;
    wire [7:0] element_extension40_q;
    wire [7:0] element_extension43_q;
    wire [7:0] element_extension46_q;
    wire [7:0] element_extension49_q;
    wire [7:0] element_extension5_q;
    wire [7:0] element_extension52_q;
    wire [7:0] element_extension55_q;
    wire [7:0] element_extension60_q;
    wire [7:0] element_extension8_q;
    wire [439:0] kernel_3mm_B5_branch_data_pack_q;
    wire [63:0] kernel_3mm_B5_branch_data_unpack_0_b;
    wire [63:0] kernel_3mm_B5_branch_data_unpack_1_b;
    wire [7:0] kernel_3mm_B5_branch_data_unpack_10_b;
    wire [7:0] kernel_3mm_B5_branch_data_unpack_11_b;
    wire [7:0] kernel_3mm_B5_branch_data_unpack_12_b;
    wire [7:0] kernel_3mm_B5_branch_data_unpack_13_b;
    wire [7:0] kernel_3mm_B5_branch_data_unpack_14_b;
    wire [31:0] kernel_3mm_B5_branch_data_unpack_15_b;
    wire [7:0] kernel_3mm_B5_branch_data_unpack_16_b;
    wire [7:0] kernel_3mm_B5_branch_data_unpack_17_b;
    wire [7:0] kernel_3mm_B5_branch_data_unpack_18_b;
    wire [7:0] kernel_3mm_B5_branch_data_unpack_19_b;
    wire [7:0] kernel_3mm_B5_branch_data_unpack_2_b;
    wire [7:0] kernel_3mm_B5_branch_data_unpack_20_b;
    wire [7:0] kernel_3mm_B5_branch_data_unpack_21_b;
    wire [63:0] kernel_3mm_B5_branch_data_unpack_22_b;
    wire [31:0] kernel_3mm_B5_branch_data_unpack_23_b;
    wire [7:0] kernel_3mm_B5_branch_data_unpack_24_b;
    wire [7:0] kernel_3mm_B5_branch_data_unpack_3_b;
    wire [7:0] kernel_3mm_B5_branch_data_unpack_4_b;
    wire [7:0] kernel_3mm_B5_branch_data_unpack_5_b;
    wire [7:0] kernel_3mm_B5_branch_data_unpack_6_b;
    wire [31:0] kernel_3mm_B5_branch_data_unpack_7_b;
    wire [7:0] kernel_3mm_B5_branch_data_unpack_8_b;
    wire [7:0] kernel_3mm_B5_branch_data_unpack_9_b;
    reg [0:0] rst_sync_rst_sclrn;


    // c_i7_012(CONSTANT,21)
    assign c_i7_012_q = $unsigned(7'b0000000);

    // element_extension60(BITJOIN,57)
    assign element_extension60_q = {c_i7_012_q, in_c1_exe1};

    // element_extension55(BITJOIN,56)
    assign element_extension55_q = {c_i7_012_q, in_c0_exe2624};

    // element_extension52(BITJOIN,55)
    assign element_extension52_q = {c_i7_012_q, in_c0_exe2539023};

    // element_extension49(BITJOIN,53)
    assign element_extension49_q = {c_i7_012_q, in_c0_exe2438922};

    // element_extension46(BITJOIN,52)
    assign element_extension46_q = {c_i7_012_q, in_c0_exe2338821};

    // element_extension43(BITJOIN,51)
    assign element_extension43_q = {c_i7_012_q, in_c0_exe2238720};

    // element_extension40(BITJOIN,50)
    assign element_extension40_q = {c_i7_012_q, in_c0_exe2138619};

    // element_extension36(BITJOIN,49)
    assign element_extension36_q = {c_i7_012_q, in_c0_exe1938417};

    // element_extension33(BITJOIN,48)
    assign element_extension33_q = {c_i7_012_q, in_c0_exe1838316};

    // element_extension30(BITJOIN,47)
    assign element_extension30_q = {c_i7_012_q, in_c0_exe1738215};

    // element_extension27(BITJOIN,46)
    assign element_extension27_q = {c_i7_012_q, in_c0_exe1638114};

    // element_extension24(BITJOIN,45)
    assign element_extension24_q = {c_i7_012_q, in_c0_exe1538013};

    // element_extension21(BITJOIN,44)
    assign element_extension21_q = {c_i7_012_q, in_c0_exe1437912};

    // element_extension18(BITJOIN,42)
    assign element_extension18_q = {c_i7_012_q, in_c0_exe1237710};

    // element_extension14(BITJOIN,41)
    assign element_extension14_q = {c_i7_012_q, in_c0_exe103758};

    // element_extension11(BITJOIN,40)
    assign element_extension11_q = {c_i7_012_q, in_c0_exe93747};

    // element_extension8(BITJOIN,58)
    assign element_extension8_q = {c_i7_012_q, in_c0_exe83736};

    // element_extension5(BITJOIN,54)
    assign element_extension5_q = {c_i7_012_q, in_c0_exe73725};

    // element_extension2(BITJOIN,43)
    assign element_extension2_q = {c_i7_012_q, in_c0_exe63714};

    // kernel_3mm_B5_branch_data_pack(BITJOIN,88)
    assign kernel_3mm_B5_branch_data_pack_q = {element_extension60_q, in_c0_exe2402, in_c0_exe1401, element_extension55_q, element_extension52_q, element_extension49_q, element_extension46_q, element_extension43_q, element_extension40_q, in_c0_exe2038518, element_extension36_q, element_extension33_q, element_extension30_q, element_extension27_q, element_extension24_q, element_extension21_q, element_extension18_q, in_c0_exe113769, element_extension14_q, element_extension11_q, element_extension8_q, element_extension5_q, element_extension2_q, in_c0_exe23672, in_c0_exe13661};

    // kernel_3mm_B5_branch_data_unpack_6(BITSELECT,110)
    assign kernel_3mm_B5_branch_data_unpack_6_b = kernel_3mm_B5_branch_data_pack_q[167:160];

    // adapt_scalar_trunc16(ROUND,4)
    assign adapt_scalar_trunc16_in = kernel_3mm_B5_branch_data_unpack_6_b[0:0];
    assign adapt_scalar_trunc16_q = adapt_scalar_trunc16_in[0:0];

    // out_c0_exe103758(GPOUT,114)
    assign out_c0_exe103758 = adapt_scalar_trunc16_q;

    // kernel_3mm_B5_branch_data_unpack_7(BITSELECT,111)
    assign kernel_3mm_B5_branch_data_unpack_7_b = kernel_3mm_B5_branch_data_pack_q[199:168];

    // out_c0_exe113769(GPOUT,115)
    assign out_c0_exe113769 = kernel_3mm_B5_branch_data_unpack_7_b;

    // kernel_3mm_B5_branch_data_unpack_8(BITSELECT,112)
    assign kernel_3mm_B5_branch_data_unpack_8_b = kernel_3mm_B5_branch_data_pack_q[207:200];

    // adapt_scalar_trunc20(ROUND,5)
    assign adapt_scalar_trunc20_in = kernel_3mm_B5_branch_data_unpack_8_b[0:0];
    assign adapt_scalar_trunc20_q = adapt_scalar_trunc20_in[0:0];

    // out_c0_exe1237710(GPOUT,116)
    assign out_c0_exe1237710 = adapt_scalar_trunc20_q;

    // kernel_3mm_B5_branch_data_unpack_0(BITSELECT,89)
    assign kernel_3mm_B5_branch_data_unpack_0_b = kernel_3mm_B5_branch_data_pack_q[63:0];

    // out_c0_exe13661(GPOUT,117)
    assign out_c0_exe13661 = kernel_3mm_B5_branch_data_unpack_0_b;

    // kernel_3mm_B5_branch_data_unpack_22(BITSELECT,104)
    assign kernel_3mm_B5_branch_data_unpack_22_b = kernel_3mm_B5_branch_data_pack_q[399:336];

    // out_c0_exe1401(GPOUT,118)
    assign out_c0_exe1401 = kernel_3mm_B5_branch_data_unpack_22_b;

    // kernel_3mm_B5_branch_data_unpack_9(BITSELECT,113)
    assign kernel_3mm_B5_branch_data_unpack_9_b = kernel_3mm_B5_branch_data_pack_q[215:208];

    // adapt_scalar_trunc23(ROUND,6)
    assign adapt_scalar_trunc23_in = kernel_3mm_B5_branch_data_unpack_9_b[0:0];
    assign adapt_scalar_trunc23_q = adapt_scalar_trunc23_in[0:0];

    // out_c0_exe1437912(GPOUT,119)
    assign out_c0_exe1437912 = adapt_scalar_trunc23_q;

    // kernel_3mm_B5_branch_data_unpack_10(BITSELECT,91)
    assign kernel_3mm_B5_branch_data_unpack_10_b = kernel_3mm_B5_branch_data_pack_q[223:216];

    // adapt_scalar_trunc26(ROUND,7)
    assign adapt_scalar_trunc26_in = kernel_3mm_B5_branch_data_unpack_10_b[0:0];
    assign adapt_scalar_trunc26_q = adapt_scalar_trunc26_in[0:0];

    // out_c0_exe1538013(GPOUT,120)
    assign out_c0_exe1538013 = adapt_scalar_trunc26_q;

    // kernel_3mm_B5_branch_data_unpack_11(BITSELECT,92)
    assign kernel_3mm_B5_branch_data_unpack_11_b = kernel_3mm_B5_branch_data_pack_q[231:224];

    // adapt_scalar_trunc29(ROUND,8)
    assign adapt_scalar_trunc29_in = kernel_3mm_B5_branch_data_unpack_11_b[0:0];
    assign adapt_scalar_trunc29_q = adapt_scalar_trunc29_in[0:0];

    // out_c0_exe1638114(GPOUT,121)
    assign out_c0_exe1638114 = adapt_scalar_trunc29_q;

    // kernel_3mm_B5_branch_data_unpack_12(BITSELECT,93)
    assign kernel_3mm_B5_branch_data_unpack_12_b = kernel_3mm_B5_branch_data_pack_q[239:232];

    // adapt_scalar_trunc32(ROUND,9)
    assign adapt_scalar_trunc32_in = kernel_3mm_B5_branch_data_unpack_12_b[0:0];
    assign adapt_scalar_trunc32_q = adapt_scalar_trunc32_in[0:0];

    // out_c0_exe1738215(GPOUT,122)
    assign out_c0_exe1738215 = adapt_scalar_trunc32_q;

    // kernel_3mm_B5_branch_data_unpack_13(BITSELECT,94)
    assign kernel_3mm_B5_branch_data_unpack_13_b = kernel_3mm_B5_branch_data_pack_q[247:240];

    // adapt_scalar_trunc35(ROUND,10)
    assign adapt_scalar_trunc35_in = kernel_3mm_B5_branch_data_unpack_13_b[0:0];
    assign adapt_scalar_trunc35_q = adapt_scalar_trunc35_in[0:0];

    // out_c0_exe1838316(GPOUT,123)
    assign out_c0_exe1838316 = adapt_scalar_trunc35_q;

    // kernel_3mm_B5_branch_data_unpack_14(BITSELECT,95)
    assign kernel_3mm_B5_branch_data_unpack_14_b = kernel_3mm_B5_branch_data_pack_q[255:248];

    // adapt_scalar_trunc38(ROUND,11)
    assign adapt_scalar_trunc38_in = kernel_3mm_B5_branch_data_unpack_14_b[0:0];
    assign adapt_scalar_trunc38_q = adapt_scalar_trunc38_in[0:0];

    // out_c0_exe1938417(GPOUT,124)
    assign out_c0_exe1938417 = adapt_scalar_trunc38_q;

    // kernel_3mm_B5_branch_data_unpack_15(BITSELECT,96)
    assign kernel_3mm_B5_branch_data_unpack_15_b = kernel_3mm_B5_branch_data_pack_q[287:256];

    // out_c0_exe2038518(GPOUT,125)
    assign out_c0_exe2038518 = kernel_3mm_B5_branch_data_unpack_15_b;

    // kernel_3mm_B5_branch_data_unpack_16(BITSELECT,97)
    assign kernel_3mm_B5_branch_data_unpack_16_b = kernel_3mm_B5_branch_data_pack_q[295:288];

    // adapt_scalar_trunc42(ROUND,13)
    assign adapt_scalar_trunc42_in = kernel_3mm_B5_branch_data_unpack_16_b[0:0];
    assign adapt_scalar_trunc42_q = adapt_scalar_trunc42_in[0:0];

    // out_c0_exe2138619(GPOUT,126)
    assign out_c0_exe2138619 = adapt_scalar_trunc42_q;

    // kernel_3mm_B5_branch_data_unpack_17(BITSELECT,98)
    assign kernel_3mm_B5_branch_data_unpack_17_b = kernel_3mm_B5_branch_data_pack_q[303:296];

    // adapt_scalar_trunc45(ROUND,14)
    assign adapt_scalar_trunc45_in = kernel_3mm_B5_branch_data_unpack_17_b[0:0];
    assign adapt_scalar_trunc45_q = adapt_scalar_trunc45_in[0:0];

    // out_c0_exe2238720(GPOUT,127)
    assign out_c0_exe2238720 = adapt_scalar_trunc45_q;

    // kernel_3mm_B5_branch_data_unpack_18(BITSELECT,99)
    assign kernel_3mm_B5_branch_data_unpack_18_b = kernel_3mm_B5_branch_data_pack_q[311:304];

    // adapt_scalar_trunc48(ROUND,15)
    assign adapt_scalar_trunc48_in = kernel_3mm_B5_branch_data_unpack_18_b[0:0];
    assign adapt_scalar_trunc48_q = adapt_scalar_trunc48_in[0:0];

    // out_c0_exe2338821(GPOUT,128)
    assign out_c0_exe2338821 = adapt_scalar_trunc48_q;

    // kernel_3mm_B5_branch_data_unpack_1(BITSELECT,90)
    assign kernel_3mm_B5_branch_data_unpack_1_b = kernel_3mm_B5_branch_data_pack_q[127:64];

    // out_c0_exe23672(GPOUT,129)
    assign out_c0_exe23672 = kernel_3mm_B5_branch_data_unpack_1_b;

    // kernel_3mm_B5_branch_data_unpack_23(BITSELECT,105)
    assign kernel_3mm_B5_branch_data_unpack_23_b = kernel_3mm_B5_branch_data_pack_q[431:400];

    // out_c0_exe2402(GPOUT,130)
    assign out_c0_exe2402 = kernel_3mm_B5_branch_data_unpack_23_b;

    // kernel_3mm_B5_branch_data_unpack_19(BITSELECT,100)
    assign kernel_3mm_B5_branch_data_unpack_19_b = kernel_3mm_B5_branch_data_pack_q[319:312];

    // adapt_scalar_trunc51(ROUND,16)
    assign adapt_scalar_trunc51_in = kernel_3mm_B5_branch_data_unpack_19_b[0:0];
    assign adapt_scalar_trunc51_q = adapt_scalar_trunc51_in[0:0];

    // out_c0_exe2438922(GPOUT,131)
    assign out_c0_exe2438922 = adapt_scalar_trunc51_q;

    // kernel_3mm_B5_branch_data_unpack_20(BITSELECT,102)
    assign kernel_3mm_B5_branch_data_unpack_20_b = kernel_3mm_B5_branch_data_pack_q[327:320];

    // adapt_scalar_trunc54(ROUND,17)
    assign adapt_scalar_trunc54_in = kernel_3mm_B5_branch_data_unpack_20_b[0:0];
    assign adapt_scalar_trunc54_q = adapt_scalar_trunc54_in[0:0];

    // out_c0_exe2539023(GPOUT,132)
    assign out_c0_exe2539023 = adapt_scalar_trunc54_q;

    // kernel_3mm_B5_branch_data_unpack_21(BITSELECT,103)
    assign kernel_3mm_B5_branch_data_unpack_21_b = kernel_3mm_B5_branch_data_pack_q[335:328];

    // adapt_scalar_trunc57(ROUND,18)
    assign adapt_scalar_trunc57_in = kernel_3mm_B5_branch_data_unpack_21_b[0:0];
    assign adapt_scalar_trunc57_q = adapt_scalar_trunc57_in[0:0];

    // out_c0_exe2624(GPOUT,133)
    assign out_c0_exe2624 = adapt_scalar_trunc57_q;

    // kernel_3mm_B5_branch_data_unpack_2(BITSELECT,101)
    assign kernel_3mm_B5_branch_data_unpack_2_b = kernel_3mm_B5_branch_data_pack_q[135:128];

    // adapt_scalar_trunc4(ROUND,12)
    assign adapt_scalar_trunc4_in = kernel_3mm_B5_branch_data_unpack_2_b[0:0];
    assign adapt_scalar_trunc4_q = adapt_scalar_trunc4_in[0:0];

    // out_c0_exe63714(GPOUT,134)
    assign out_c0_exe63714 = adapt_scalar_trunc4_q;

    // kernel_3mm_B5_branch_data_unpack_3(BITSELECT,107)
    assign kernel_3mm_B5_branch_data_unpack_3_b = kernel_3mm_B5_branch_data_pack_q[143:136];

    // adapt_scalar_trunc7(ROUND,20)
    assign adapt_scalar_trunc7_in = kernel_3mm_B5_branch_data_unpack_3_b[0:0];
    assign adapt_scalar_trunc7_q = adapt_scalar_trunc7_in[0:0];

    // out_c0_exe73725(GPOUT,135)
    assign out_c0_exe73725 = adapt_scalar_trunc7_q;

    // kernel_3mm_B5_branch_data_unpack_4(BITSELECT,108)
    assign kernel_3mm_B5_branch_data_unpack_4_b = kernel_3mm_B5_branch_data_pack_q[151:144];

    // adapt_scalar_trunc10(ROUND,2)
    assign adapt_scalar_trunc10_in = kernel_3mm_B5_branch_data_unpack_4_b[0:0];
    assign adapt_scalar_trunc10_q = adapt_scalar_trunc10_in[0:0];

    // out_c0_exe83736(GPOUT,136)
    assign out_c0_exe83736 = adapt_scalar_trunc10_q;

    // kernel_3mm_B5_branch_data_unpack_5(BITSELECT,109)
    assign kernel_3mm_B5_branch_data_unpack_5_b = kernel_3mm_B5_branch_data_pack_q[159:152];

    // adapt_scalar_trunc13(ROUND,3)
    assign adapt_scalar_trunc13_in = kernel_3mm_B5_branch_data_unpack_5_b[0:0];
    assign adapt_scalar_trunc13_q = adapt_scalar_trunc13_in[0:0];

    // out_c0_exe93747(GPOUT,137)
    assign out_c0_exe93747 = adapt_scalar_trunc13_q;

    // kernel_3mm_B5_branch_data_unpack_24(BITSELECT,106)
    assign kernel_3mm_B5_branch_data_unpack_24_b = kernel_3mm_B5_branch_data_pack_q[439:432];

    // adapt_scalar_trunc62(ROUND,19)
    assign adapt_scalar_trunc62_in = kernel_3mm_B5_branch_data_unpack_24_b[0:0];
    assign adapt_scalar_trunc62_q = adapt_scalar_trunc62_in[0:0];

    // out_c1_exe1(GPOUT,138)
    assign out_c1_exe1 = adapt_scalar_trunc62_q;

    // out_stall_out(GPOUT,139)
    assign out_stall_out = in_stall_in_0;

    // out_valid_out_0(GPOUT,140)
    assign out_valid_out_0 = in_valid_in;

    // rst_sync(RESETSYNC,141)
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
