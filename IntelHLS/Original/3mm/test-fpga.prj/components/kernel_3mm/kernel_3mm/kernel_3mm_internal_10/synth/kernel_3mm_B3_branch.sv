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

// SystemVerilog created from kernel_3mm_B3_branch
// Created for function/kernel kernel_3mm
// SystemVerilog created on Thu Apr 27 14:26:50 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_B3_branch (
    input wire [0:0] in_almost_empty_in,
    input wire [0:0] in_c0_exe10309,
    input wire [0:0] in_c0_exe11310,
    input wire [0:0] in_c0_exe12311,
    input wire [31:0] in_c0_exe1300,
    input wire [0:0] in_c0_exe13312,
    input wire [0:0] in_c0_exe14,
    input wire [0:0] in_c0_exe15,
    input wire [0:0] in_c0_exe16,
    input wire [0:0] in_c0_exe17,
    input wire [0:0] in_c0_exe18,
    input wire [31:0] in_c0_exe19,
    input wire [0:0] in_c0_exe20,
    input wire [0:0] in_c0_exe21,
    input wire [0:0] in_c0_exe22,
    input wire [0:0] in_c0_exe23,
    input wire [63:0] in_c0_exe2301,
    input wire [0:0] in_c0_exe24,
    input wire [0:0] in_c0_exe25,
    input wire [63:0] in_c0_exe3302,
    input wire [63:0] in_c0_exe4303,
    input wire [0:0] in_c0_exe5304,
    input wire [31:0] in_c0_exe6305,
    input wire [0:0] in_c0_exe8307,
    input wire [0:0] in_c0_exe9308,
    input wire [0:0] in_empty_in,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe10309,
    output wire [0:0] out_c0_exe11310,
    output wire [0:0] out_c0_exe12311,
    output wire [31:0] out_c0_exe1300,
    output wire [0:0] out_c0_exe13312,
    output wire [0:0] out_c0_exe14,
    output wire [0:0] out_c0_exe15,
    output wire [0:0] out_c0_exe16,
    output wire [0:0] out_c0_exe17,
    output wire [0:0] out_c0_exe18,
    output wire [31:0] out_c0_exe19,
    output wire [0:0] out_c0_exe20,
    output wire [0:0] out_c0_exe21,
    output wire [0:0] out_c0_exe22,
    output wire [0:0] out_c0_exe23,
    output wire [63:0] out_c0_exe2301,
    output wire [0:0] out_c0_exe24,
    output wire [0:0] out_c0_exe25,
    output wire [63:0] out_c0_exe3302,
    output wire [63:0] out_c0_exe4303,
    output wire [0:0] out_c0_exe5304,
    output wire [31:0] out_c0_exe6305,
    output wire [0:0] out_c0_exe8307,
    output wire [0:0] out_c0_exe9308,
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
    wire [0:0] adapt_scalar_trunc19_in;
    wire [0:0] adapt_scalar_trunc19_q;
    wire [0:0] adapt_scalar_trunc22_in;
    wire [0:0] adapt_scalar_trunc22_q;
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
    wire [0:0] adapt_scalar_trunc50_in;
    wire [0:0] adapt_scalar_trunc50_q;
    wire [0:0] adapt_scalar_trunc53_in;
    wire [0:0] adapt_scalar_trunc53_q;
    wire [0:0] adapt_scalar_trunc56_in;
    wire [0:0] adapt_scalar_trunc56_q;
    wire [0:0] adapt_scalar_trunc59_in;
    wire [0:0] adapt_scalar_trunc59_q;
    wire [0:0] adapt_scalar_trunc6_in;
    wire [0:0] adapt_scalar_trunc6_q;
    wire [6:0] c_i7_012_q;
    wire [7:0] element_extension11_q;
    wire [7:0] element_extension14_q;
    wire [7:0] element_extension17_q;
    wire [7:0] element_extension20_q;
    wire [7:0] element_extension23_q;
    wire [7:0] element_extension26_q;
    wire [7:0] element_extension29_q;
    wire [7:0] element_extension32_q;
    wire [7:0] element_extension35_q;
    wire [7:0] element_extension38_q;
    wire [7:0] element_extension4_q;
    wire [7:0] element_extension42_q;
    wire [7:0] element_extension45_q;
    wire [7:0] element_extension48_q;
    wire [7:0] element_extension51_q;
    wire [7:0] element_extension54_q;
    wire [7:0] element_extension57_q;
    wire [7:0] element_extension8_q;
    wire [431:0] kernel_3mm_B3_branch_data_pack_q;
    wire [31:0] kernel_3mm_B3_branch_data_unpack_0_b;
    wire [63:0] kernel_3mm_B3_branch_data_unpack_1_b;
    wire [7:0] kernel_3mm_B3_branch_data_unpack_10_b;
    wire [7:0] kernel_3mm_B3_branch_data_unpack_11_b;
    wire [7:0] kernel_3mm_B3_branch_data_unpack_12_b;
    wire [7:0] kernel_3mm_B3_branch_data_unpack_13_b;
    wire [7:0] kernel_3mm_B3_branch_data_unpack_14_b;
    wire [7:0] kernel_3mm_B3_branch_data_unpack_15_b;
    wire [7:0] kernel_3mm_B3_branch_data_unpack_16_b;
    wire [31:0] kernel_3mm_B3_branch_data_unpack_17_b;
    wire [7:0] kernel_3mm_B3_branch_data_unpack_18_b;
    wire [7:0] kernel_3mm_B3_branch_data_unpack_19_b;
    wire [63:0] kernel_3mm_B3_branch_data_unpack_2_b;
    wire [7:0] kernel_3mm_B3_branch_data_unpack_20_b;
    wire [7:0] kernel_3mm_B3_branch_data_unpack_21_b;
    wire [7:0] kernel_3mm_B3_branch_data_unpack_22_b;
    wire [7:0] kernel_3mm_B3_branch_data_unpack_23_b;
    wire [63:0] kernel_3mm_B3_branch_data_unpack_3_b;
    wire [7:0] kernel_3mm_B3_branch_data_unpack_4_b;
    wire [31:0] kernel_3mm_B3_branch_data_unpack_5_b;
    wire [7:0] kernel_3mm_B3_branch_data_unpack_6_b;
    wire [7:0] kernel_3mm_B3_branch_data_unpack_7_b;
    wire [7:0] kernel_3mm_B3_branch_data_unpack_8_b;
    wire [7:0] kernel_3mm_B3_branch_data_unpack_9_b;
    reg [0:0] rst_sync_rst_sclrn;


    // c_i7_012(CONSTANT,20)
    assign c_i7_012_q = $unsigned(7'b0000000);

    // element_extension57(BITJOIN,54)
    assign element_extension57_q = {c_i7_012_q, in_c0_exe25};

    // element_extension54(BITJOIN,53)
    assign element_extension54_q = {c_i7_012_q, in_c0_exe24};

    // element_extension51(BITJOIN,52)
    assign element_extension51_q = {c_i7_012_q, in_c0_exe23};

    // element_extension48(BITJOIN,51)
    assign element_extension48_q = {c_i7_012_q, in_c0_exe22};

    // element_extension45(BITJOIN,50)
    assign element_extension45_q = {c_i7_012_q, in_c0_exe21};

    // element_extension42(BITJOIN,49)
    assign element_extension42_q = {c_i7_012_q, in_c0_exe20};

    // element_extension38(BITJOIN,47)
    assign element_extension38_q = {c_i7_012_q, in_c0_exe18};

    // element_extension35(BITJOIN,46)
    assign element_extension35_q = {c_i7_012_q, in_c0_exe17};

    // element_extension32(BITJOIN,45)
    assign element_extension32_q = {c_i7_012_q, in_c0_exe16};

    // element_extension29(BITJOIN,44)
    assign element_extension29_q = {c_i7_012_q, in_c0_exe15};

    // element_extension26(BITJOIN,43)
    assign element_extension26_q = {c_i7_012_q, in_c0_exe14};

    // element_extension23(BITJOIN,42)
    assign element_extension23_q = {c_i7_012_q, in_c0_exe13312};

    // element_extension20(BITJOIN,41)
    assign element_extension20_q = {c_i7_012_q, in_c0_exe12311};

    // element_extension17(BITJOIN,40)
    assign element_extension17_q = {c_i7_012_q, in_c0_exe11310};

    // element_extension14(BITJOIN,39)
    assign element_extension14_q = {c_i7_012_q, in_c0_exe10309};

    // element_extension11(BITJOIN,38)
    assign element_extension11_q = {c_i7_012_q, in_c0_exe9308};

    // element_extension8(BITJOIN,55)
    assign element_extension8_q = {c_i7_012_q, in_c0_exe8307};

    // element_extension4(BITJOIN,48)
    assign element_extension4_q = {c_i7_012_q, in_c0_exe5304};

    // kernel_3mm_B3_branch_data_pack(BITJOIN,84)
    assign kernel_3mm_B3_branch_data_pack_q = {element_extension57_q, element_extension54_q, element_extension51_q, element_extension48_q, element_extension45_q, element_extension42_q, in_c0_exe19, element_extension38_q, element_extension35_q, element_extension32_q, element_extension29_q, element_extension26_q, element_extension23_q, element_extension20_q, element_extension17_q, element_extension14_q, element_extension11_q, element_extension8_q, in_c0_exe6305, element_extension4_q, in_c0_exe4303, in_c0_exe3302, in_c0_exe2301, in_c0_exe1300};

    // kernel_3mm_B3_branch_data_unpack_8(BITSELECT,107)
    assign kernel_3mm_B3_branch_data_unpack_8_b = kernel_3mm_B3_branch_data_pack_q[287:280];

    // adapt_scalar_trunc16(ROUND,4)
    assign adapt_scalar_trunc16_in = kernel_3mm_B3_branch_data_unpack_8_b[0:0];
    assign adapt_scalar_trunc16_q = adapt_scalar_trunc16_in[0:0];

    // out_c0_exe10309(GPOUT,109)
    assign out_c0_exe10309 = adapt_scalar_trunc16_q;

    // kernel_3mm_B3_branch_data_unpack_9(BITSELECT,108)
    assign kernel_3mm_B3_branch_data_unpack_9_b = kernel_3mm_B3_branch_data_pack_q[295:288];

    // adapt_scalar_trunc19(ROUND,5)
    assign adapt_scalar_trunc19_in = kernel_3mm_B3_branch_data_unpack_9_b[0:0];
    assign adapt_scalar_trunc19_q = adapt_scalar_trunc19_in[0:0];

    // out_c0_exe11310(GPOUT,110)
    assign out_c0_exe11310 = adapt_scalar_trunc19_q;

    // kernel_3mm_B3_branch_data_unpack_10(BITSELECT,87)
    assign kernel_3mm_B3_branch_data_unpack_10_b = kernel_3mm_B3_branch_data_pack_q[303:296];

    // adapt_scalar_trunc22(ROUND,6)
    assign adapt_scalar_trunc22_in = kernel_3mm_B3_branch_data_unpack_10_b[0:0];
    assign adapt_scalar_trunc22_q = adapt_scalar_trunc22_in[0:0];

    // out_c0_exe12311(GPOUT,111)
    assign out_c0_exe12311 = adapt_scalar_trunc22_q;

    // kernel_3mm_B3_branch_data_unpack_0(BITSELECT,85)
    assign kernel_3mm_B3_branch_data_unpack_0_b = kernel_3mm_B3_branch_data_pack_q[31:0];

    // out_c0_exe1300(GPOUT,112)
    assign out_c0_exe1300 = kernel_3mm_B3_branch_data_unpack_0_b;

    // kernel_3mm_B3_branch_data_unpack_11(BITSELECT,88)
    assign kernel_3mm_B3_branch_data_unpack_11_b = kernel_3mm_B3_branch_data_pack_q[311:304];

    // adapt_scalar_trunc25(ROUND,7)
    assign adapt_scalar_trunc25_in = kernel_3mm_B3_branch_data_unpack_11_b[0:0];
    assign adapt_scalar_trunc25_q = adapt_scalar_trunc25_in[0:0];

    // out_c0_exe13312(GPOUT,113)
    assign out_c0_exe13312 = adapt_scalar_trunc25_q;

    // kernel_3mm_B3_branch_data_unpack_12(BITSELECT,89)
    assign kernel_3mm_B3_branch_data_unpack_12_b = kernel_3mm_B3_branch_data_pack_q[319:312];

    // adapt_scalar_trunc28(ROUND,8)
    assign adapt_scalar_trunc28_in = kernel_3mm_B3_branch_data_unpack_12_b[0:0];
    assign adapt_scalar_trunc28_q = adapt_scalar_trunc28_in[0:0];

    // out_c0_exe14(GPOUT,114)
    assign out_c0_exe14 = adapt_scalar_trunc28_q;

    // kernel_3mm_B3_branch_data_unpack_13(BITSELECT,90)
    assign kernel_3mm_B3_branch_data_unpack_13_b = kernel_3mm_B3_branch_data_pack_q[327:320];

    // adapt_scalar_trunc31(ROUND,9)
    assign adapt_scalar_trunc31_in = kernel_3mm_B3_branch_data_unpack_13_b[0:0];
    assign adapt_scalar_trunc31_q = adapt_scalar_trunc31_in[0:0];

    // out_c0_exe15(GPOUT,115)
    assign out_c0_exe15 = adapt_scalar_trunc31_q;

    // kernel_3mm_B3_branch_data_unpack_14(BITSELECT,91)
    assign kernel_3mm_B3_branch_data_unpack_14_b = kernel_3mm_B3_branch_data_pack_q[335:328];

    // adapt_scalar_trunc34(ROUND,10)
    assign adapt_scalar_trunc34_in = kernel_3mm_B3_branch_data_unpack_14_b[0:0];
    assign adapt_scalar_trunc34_q = adapt_scalar_trunc34_in[0:0];

    // out_c0_exe16(GPOUT,116)
    assign out_c0_exe16 = adapt_scalar_trunc34_q;

    // kernel_3mm_B3_branch_data_unpack_15(BITSELECT,92)
    assign kernel_3mm_B3_branch_data_unpack_15_b = kernel_3mm_B3_branch_data_pack_q[343:336];

    // adapt_scalar_trunc37(ROUND,11)
    assign adapt_scalar_trunc37_in = kernel_3mm_B3_branch_data_unpack_15_b[0:0];
    assign adapt_scalar_trunc37_q = adapt_scalar_trunc37_in[0:0];

    // out_c0_exe17(GPOUT,117)
    assign out_c0_exe17 = adapt_scalar_trunc37_q;

    // kernel_3mm_B3_branch_data_unpack_16(BITSELECT,93)
    assign kernel_3mm_B3_branch_data_unpack_16_b = kernel_3mm_B3_branch_data_pack_q[351:344];

    // adapt_scalar_trunc40(ROUND,12)
    assign adapt_scalar_trunc40_in = kernel_3mm_B3_branch_data_unpack_16_b[0:0];
    assign adapt_scalar_trunc40_q = adapt_scalar_trunc40_in[0:0];

    // out_c0_exe18(GPOUT,118)
    assign out_c0_exe18 = adapt_scalar_trunc40_q;

    // kernel_3mm_B3_branch_data_unpack_17(BITSELECT,94)
    assign kernel_3mm_B3_branch_data_unpack_17_b = kernel_3mm_B3_branch_data_pack_q[383:352];

    // out_c0_exe19(GPOUT,119)
    assign out_c0_exe19 = kernel_3mm_B3_branch_data_unpack_17_b;

    // kernel_3mm_B3_branch_data_unpack_18(BITSELECT,95)
    assign kernel_3mm_B3_branch_data_unpack_18_b = kernel_3mm_B3_branch_data_pack_q[391:384];

    // adapt_scalar_trunc44(ROUND,13)
    assign adapt_scalar_trunc44_in = kernel_3mm_B3_branch_data_unpack_18_b[0:0];
    assign adapt_scalar_trunc44_q = adapt_scalar_trunc44_in[0:0];

    // out_c0_exe20(GPOUT,120)
    assign out_c0_exe20 = adapt_scalar_trunc44_q;

    // kernel_3mm_B3_branch_data_unpack_19(BITSELECT,96)
    assign kernel_3mm_B3_branch_data_unpack_19_b = kernel_3mm_B3_branch_data_pack_q[399:392];

    // adapt_scalar_trunc47(ROUND,14)
    assign adapt_scalar_trunc47_in = kernel_3mm_B3_branch_data_unpack_19_b[0:0];
    assign adapt_scalar_trunc47_q = adapt_scalar_trunc47_in[0:0];

    // out_c0_exe21(GPOUT,121)
    assign out_c0_exe21 = adapt_scalar_trunc47_q;

    // kernel_3mm_B3_branch_data_unpack_20(BITSELECT,98)
    assign kernel_3mm_B3_branch_data_unpack_20_b = kernel_3mm_B3_branch_data_pack_q[407:400];

    // adapt_scalar_trunc50(ROUND,15)
    assign adapt_scalar_trunc50_in = kernel_3mm_B3_branch_data_unpack_20_b[0:0];
    assign adapt_scalar_trunc50_q = adapt_scalar_trunc50_in[0:0];

    // out_c0_exe22(GPOUT,122)
    assign out_c0_exe22 = adapt_scalar_trunc50_q;

    // kernel_3mm_B3_branch_data_unpack_21(BITSELECT,99)
    assign kernel_3mm_B3_branch_data_unpack_21_b = kernel_3mm_B3_branch_data_pack_q[415:408];

    // adapt_scalar_trunc53(ROUND,16)
    assign adapt_scalar_trunc53_in = kernel_3mm_B3_branch_data_unpack_21_b[0:0];
    assign adapt_scalar_trunc53_q = adapt_scalar_trunc53_in[0:0];

    // out_c0_exe23(GPOUT,123)
    assign out_c0_exe23 = adapt_scalar_trunc53_q;

    // kernel_3mm_B3_branch_data_unpack_1(BITSELECT,86)
    assign kernel_3mm_B3_branch_data_unpack_1_b = kernel_3mm_B3_branch_data_pack_q[95:32];

    // out_c0_exe2301(GPOUT,124)
    assign out_c0_exe2301 = kernel_3mm_B3_branch_data_unpack_1_b;

    // kernel_3mm_B3_branch_data_unpack_22(BITSELECT,100)
    assign kernel_3mm_B3_branch_data_unpack_22_b = kernel_3mm_B3_branch_data_pack_q[423:416];

    // adapt_scalar_trunc56(ROUND,17)
    assign adapt_scalar_trunc56_in = kernel_3mm_B3_branch_data_unpack_22_b[0:0];
    assign adapt_scalar_trunc56_q = adapt_scalar_trunc56_in[0:0];

    // out_c0_exe24(GPOUT,125)
    assign out_c0_exe24 = adapt_scalar_trunc56_q;

    // kernel_3mm_B3_branch_data_unpack_23(BITSELECT,101)
    assign kernel_3mm_B3_branch_data_unpack_23_b = kernel_3mm_B3_branch_data_pack_q[431:424];

    // adapt_scalar_trunc59(ROUND,18)
    assign adapt_scalar_trunc59_in = kernel_3mm_B3_branch_data_unpack_23_b[0:0];
    assign adapt_scalar_trunc59_q = adapt_scalar_trunc59_in[0:0];

    // out_c0_exe25(GPOUT,126)
    assign out_c0_exe25 = adapt_scalar_trunc59_q;

    // kernel_3mm_B3_branch_data_unpack_2(BITSELECT,97)
    assign kernel_3mm_B3_branch_data_unpack_2_b = kernel_3mm_B3_branch_data_pack_q[159:96];

    // out_c0_exe3302(GPOUT,127)
    assign out_c0_exe3302 = kernel_3mm_B3_branch_data_unpack_2_b;

    // kernel_3mm_B3_branch_data_unpack_3(BITSELECT,102)
    assign kernel_3mm_B3_branch_data_unpack_3_b = kernel_3mm_B3_branch_data_pack_q[223:160];

    // out_c0_exe4303(GPOUT,128)
    assign out_c0_exe4303 = kernel_3mm_B3_branch_data_unpack_3_b;

    // kernel_3mm_B3_branch_data_unpack_4(BITSELECT,103)
    assign kernel_3mm_B3_branch_data_unpack_4_b = kernel_3mm_B3_branch_data_pack_q[231:224];

    // adapt_scalar_trunc6(ROUND,19)
    assign adapt_scalar_trunc6_in = kernel_3mm_B3_branch_data_unpack_4_b[0:0];
    assign adapt_scalar_trunc6_q = adapt_scalar_trunc6_in[0:0];

    // out_c0_exe5304(GPOUT,129)
    assign out_c0_exe5304 = adapt_scalar_trunc6_q;

    // kernel_3mm_B3_branch_data_unpack_5(BITSELECT,104)
    assign kernel_3mm_B3_branch_data_unpack_5_b = kernel_3mm_B3_branch_data_pack_q[263:232];

    // out_c0_exe6305(GPOUT,130)
    assign out_c0_exe6305 = kernel_3mm_B3_branch_data_unpack_5_b;

    // kernel_3mm_B3_branch_data_unpack_6(BITSELECT,105)
    assign kernel_3mm_B3_branch_data_unpack_6_b = kernel_3mm_B3_branch_data_pack_q[271:264];

    // adapt_scalar_trunc10(ROUND,2)
    assign adapt_scalar_trunc10_in = kernel_3mm_B3_branch_data_unpack_6_b[0:0];
    assign adapt_scalar_trunc10_q = adapt_scalar_trunc10_in[0:0];

    // out_c0_exe8307(GPOUT,131)
    assign out_c0_exe8307 = adapt_scalar_trunc10_q;

    // kernel_3mm_B3_branch_data_unpack_7(BITSELECT,106)
    assign kernel_3mm_B3_branch_data_unpack_7_b = kernel_3mm_B3_branch_data_pack_q[279:272];

    // adapt_scalar_trunc13(ROUND,3)
    assign adapt_scalar_trunc13_in = kernel_3mm_B3_branch_data_unpack_7_b[0:0];
    assign adapt_scalar_trunc13_q = adapt_scalar_trunc13_in[0:0];

    // out_c0_exe9308(GPOUT,132)
    assign out_c0_exe9308 = adapt_scalar_trunc13_q;

    // out_stall_out(GPOUT,133)
    assign out_stall_out = in_stall_in_0;

    // out_valid_out_0(GPOUT,134)
    assign out_valid_out_0 = in_valid_in;

    // rst_sync(RESETSYNC,135)
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
