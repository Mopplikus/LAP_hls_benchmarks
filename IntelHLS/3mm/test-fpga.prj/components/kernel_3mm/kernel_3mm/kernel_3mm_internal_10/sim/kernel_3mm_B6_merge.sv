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

// SystemVerilog created from kernel_3mm_B6_merge
// Created for function/kernel kernel_3mm
// SystemVerilog created on Thu Apr 27 14:26:51 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_B6_merge (
    input wire [63:0] in_arrayidx444216_0,
    input wire [0:0] in_forked115_0,
    input wire [0:0] in_forked60_pop24159_0,
    input wire [0:0] in_forked62_pop49198_0,
    input wire [31:0] in_i_060_pop23149_0,
    input wire [31:0] in_i_060_pop2386_pop54208_0,
    input wire [63:0] in_idxprom1199_pop57195_0,
    input wire [63:0] in_idxprom97_pop56193_0,
    input wire [0:0] in_memdep_215_0,
    input wire [0:0] in_memdep_phi2_pop18129_0,
    input wire [0:0] in_memdep_phi2_pop1868_pop26169_0,
    input wire [0:0] in_memdep_phi2_pop1870_pop51202_0,
    input wire [0:0] in_memdep_phi3_pop19136_0,
    input wire [0:0] in_memdep_phi3_pop1972_pop27174_0,
    input wire [0:0] in_memdep_phi3_pop1974_pop52204_0,
    input wire [0:0] in_memdep_phi5_pop20143_0,
    input wire [0:0] in_memdep_phi5_pop2076_pop28179_0,
    input wire [0:0] in_memdep_phi5_pop2078_pop53206_0,
    input wire [0:0] in_memdep_phi_pop17122_0,
    input wire [0:0] in_memdep_phi_pop1764_pop25164_0,
    input wire [0:0] in_memdep_phi_pop1766_pop50200_0,
    input wire [0:0] in_notcmp46102_pop59213_0,
    input wire [0:0] in_notcmp51154_0,
    input wire [0:0] in_notcmp5189_pop55210_0,
    input wire [0:0] in_stall_in,
    input wire [31:0] in_unnamed_kernel_3mm7_0,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_almost_empty_out,
    output wire [63:0] out_arrayidx444216,
    output wire [0:0] out_empty_out,
    output wire [0:0] out_forked115,
    output wire [0:0] out_forked60_pop24159,
    output wire [0:0] out_forked62_pop49198,
    output wire [31:0] out_i_060_pop23149,
    output wire [31:0] out_i_060_pop2386_pop54208,
    output wire [63:0] out_idxprom1199_pop57195,
    output wire [63:0] out_idxprom97_pop56193,
    output wire [0:0] out_memdep_215,
    output wire [0:0] out_memdep_phi2_pop18129,
    output wire [0:0] out_memdep_phi2_pop1868_pop26169,
    output wire [0:0] out_memdep_phi2_pop1870_pop51202,
    output wire [0:0] out_memdep_phi3_pop19136,
    output wire [0:0] out_memdep_phi3_pop1972_pop27174,
    output wire [0:0] out_memdep_phi3_pop1974_pop52204,
    output wire [0:0] out_memdep_phi5_pop20143,
    output wire [0:0] out_memdep_phi5_pop2076_pop28179,
    output wire [0:0] out_memdep_phi5_pop2078_pop53206,
    output wire [0:0] out_memdep_phi_pop17122,
    output wire [0:0] out_memdep_phi_pop1764_pop25164,
    output wire [0:0] out_memdep_phi_pop1766_pop50200,
    output wire [0:0] out_notcmp46102_pop59213,
    output wire [0:0] out_notcmp51154,
    output wire [0:0] out_notcmp5189_pop55210,
    output wire [0:0] out_stall_out_0,
    output wire [31:0] out_unnamed_kernel_3mm7,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc11_in;
    wire [0:0] adapt_scalar_trunc11_q;
    wire [0:0] adapt_scalar_trunc14_in;
    wire [0:0] adapt_scalar_trunc14_q;
    wire [0:0] adapt_scalar_trunc18_in;
    wire [0:0] adapt_scalar_trunc18_q;
    wire [0:0] adapt_scalar_trunc2_in;
    wire [0:0] adapt_scalar_trunc2_q;
    wire [0:0] adapt_scalar_trunc21_in;
    wire [0:0] adapt_scalar_trunc21_q;
    wire [0:0] adapt_scalar_trunc24_in;
    wire [0:0] adapt_scalar_trunc24_q;
    wire [0:0] adapt_scalar_trunc27_in;
    wire [0:0] adapt_scalar_trunc27_q;
    wire [0:0] adapt_scalar_trunc30_in;
    wire [0:0] adapt_scalar_trunc30_q;
    wire [0:0] adapt_scalar_trunc33_in;
    wire [0:0] adapt_scalar_trunc33_q;
    wire [0:0] adapt_scalar_trunc38_in;
    wire [0:0] adapt_scalar_trunc38_q;
    wire [0:0] adapt_scalar_trunc41_in;
    wire [0:0] adapt_scalar_trunc41_q;
    wire [0:0] adapt_scalar_trunc44_in;
    wire [0:0] adapt_scalar_trunc44_q;
    wire [0:0] adapt_scalar_trunc47_in;
    wire [0:0] adapt_scalar_trunc47_q;
    wire [0:0] adapt_scalar_trunc5_in;
    wire [0:0] adapt_scalar_trunc5_q;
    wire [0:0] adapt_scalar_trunc50_in;
    wire [0:0] adapt_scalar_trunc50_q;
    wire [0:0] adapt_scalar_trunc54_in;
    wire [0:0] adapt_scalar_trunc54_q;
    wire [0:0] adapt_scalar_trunc57_in;
    wire [0:0] adapt_scalar_trunc57_q;
    wire [0:0] adapt_scalar_trunc60_in;
    wire [0:0] adapt_scalar_trunc60_q;
    wire [0:0] adapt_scalar_trunc8_in;
    wire [0:0] adapt_scalar_trunc8_q;
    wire [1:0] c_i2_063_q;
    wire [6:0] c_i7_01_q;
    wire [7:0] element_extension0_q;
    wire [7:0] element_extension12_q;
    wire [7:0] element_extension16_q;
    wire [7:0] element_extension19_q;
    wire [7:0] element_extension22_q;
    wire [7:0] element_extension25_q;
    wire [7:0] element_extension28_q;
    wire [7:0] element_extension3_q;
    wire [7:0] element_extension31_q;
    wire [7:0] element_extension36_q;
    wire [7:0] element_extension39_q;
    wire [7:0] element_extension42_q;
    wire [7:0] element_extension45_q;
    wire [7:0] element_extension48_q;
    wire [7:0] element_extension52_q;
    wire [7:0] element_extension55_q;
    wire [7:0] element_extension58_q;
    wire [7:0] element_extension6_q;
    wire [7:0] element_extension9_q;
    wire [439:0] kernel_3mm_B6_merge_data_pack_0_q;
    wire [7:0] kernel_3mm_B6_merge_data_unpack_0_b;
    wire [7:0] kernel_3mm_B6_merge_data_unpack_1_b;
    wire [7:0] kernel_3mm_B6_merge_data_unpack_10_b;
    wire [7:0] kernel_3mm_B6_merge_data_unpack_11_b;
    wire [63:0] kernel_3mm_B6_merge_data_unpack_12_b;
    wire [63:0] kernel_3mm_B6_merge_data_unpack_13_b;
    wire [7:0] kernel_3mm_B6_merge_data_unpack_14_b;
    wire [7:0] kernel_3mm_B6_merge_data_unpack_15_b;
    wire [7:0] kernel_3mm_B6_merge_data_unpack_16_b;
    wire [7:0] kernel_3mm_B6_merge_data_unpack_17_b;
    wire [7:0] kernel_3mm_B6_merge_data_unpack_18_b;
    wire [31:0] kernel_3mm_B6_merge_data_unpack_19_b;
    wire [7:0] kernel_3mm_B6_merge_data_unpack_2_b;
    wire [7:0] kernel_3mm_B6_merge_data_unpack_20_b;
    wire [7:0] kernel_3mm_B6_merge_data_unpack_21_b;
    wire [7:0] kernel_3mm_B6_merge_data_unpack_22_b;
    wire [63:0] kernel_3mm_B6_merge_data_unpack_23_b;
    wire [31:0] kernel_3mm_B6_merge_data_unpack_24_b;
    wire [7:0] kernel_3mm_B6_merge_data_unpack_3_b;
    wire [7:0] kernel_3mm_B6_merge_data_unpack_4_b;
    wire [31:0] kernel_3mm_B6_merge_data_unpack_5_b;
    wire [7:0] kernel_3mm_B6_merge_data_unpack_6_b;
    wire [7:0] kernel_3mm_B6_merge_data_unpack_7_b;
    wire [7:0] kernel_3mm_B6_merge_data_unpack_8_b;
    wire [7:0] kernel_3mm_B6_merge_data_unpack_9_b;
    wire [0:0] kernel_3mm_B6_merge_storage_out_o_almost_empty;
    wire [439:0] kernel_3mm_B6_merge_storage_out_o_data;
    wire [0:0] kernel_3mm_B6_merge_storage_out_o_empty;
    wire [0:0] kernel_3mm_B6_merge_storage_out_o_stall;
    wire [0:0] kernel_3mm_B6_merge_storage_out_o_valid;
    reg [0:0] rst_sync_rst_sclrn;


    // c_i7_01(CONSTANT,22)
    assign c_i7_01_q = $unsigned(7'b0000000);

    // element_extension58(BITJOIN,57)
    assign element_extension58_q = {c_i7_01_q, in_memdep_215_0};

    // element_extension55(BITJOIN,56)
    assign element_extension55_q = {c_i7_01_q, in_notcmp46102_pop59213_0};

    // element_extension52(BITJOIN,55)
    assign element_extension52_q = {c_i7_01_q, in_notcmp5189_pop55210_0};

    // element_extension48(BITJOIN,54)
    assign element_extension48_q = {c_i7_01_q, in_memdep_phi5_pop2078_pop53206_0};

    // element_extension45(BITJOIN,53)
    assign element_extension45_q = {c_i7_01_q, in_memdep_phi3_pop1974_pop52204_0};

    // element_extension42(BITJOIN,52)
    assign element_extension42_q = {c_i7_01_q, in_memdep_phi2_pop1870_pop51202_0};

    // element_extension39(BITJOIN,51)
    assign element_extension39_q = {c_i7_01_q, in_memdep_phi_pop1766_pop50200_0};

    // element_extension36(BITJOIN,50)
    assign element_extension36_q = {c_i7_01_q, in_forked62_pop49198_0};

    // element_extension31(BITJOIN,49)
    assign element_extension31_q = {c_i7_01_q, in_memdep_phi5_pop2076_pop28179_0};

    // element_extension28(BITJOIN,47)
    assign element_extension28_q = {c_i7_01_q, in_memdep_phi3_pop1972_pop27174_0};

    // element_extension25(BITJOIN,46)
    assign element_extension25_q = {c_i7_01_q, in_memdep_phi2_pop1868_pop26169_0};

    // element_extension22(BITJOIN,45)
    assign element_extension22_q = {c_i7_01_q, in_memdep_phi_pop1764_pop25164_0};

    // element_extension19(BITJOIN,44)
    assign element_extension19_q = {c_i7_01_q, in_forked60_pop24159_0};

    // element_extension16(BITJOIN,43)
    assign element_extension16_q = {c_i7_01_q, in_notcmp51154_0};

    // element_extension12(BITJOIN,42)
    assign element_extension12_q = {c_i7_01_q, in_memdep_phi5_pop20143_0};

    // element_extension9(BITJOIN,59)
    assign element_extension9_q = {c_i7_01_q, in_memdep_phi3_pop19136_0};

    // element_extension6(BITJOIN,58)
    assign element_extension6_q = {c_i7_01_q, in_memdep_phi2_pop18129_0};

    // element_extension3(BITJOIN,48)
    assign element_extension3_q = {c_i7_01_q, in_memdep_phi_pop17122_0};

    // element_extension0(BITJOIN,41)
    assign element_extension0_q = {c_i7_01_q, in_forked115_0};

    // kernel_3mm_B6_merge_data_pack_0(BITJOIN,87)
    assign kernel_3mm_B6_merge_data_pack_0_q = {in_unnamed_kernel_3mm7_0, in_arrayidx444216_0, element_extension58_q, element_extension55_q, element_extension52_q, in_i_060_pop2386_pop54208_0, element_extension48_q, element_extension45_q, element_extension42_q, element_extension39_q, element_extension36_q, in_idxprom1199_pop57195_0, in_idxprom97_pop56193_0, element_extension31_q, element_extension28_q, element_extension25_q, element_extension22_q, element_extension19_q, element_extension16_q, in_i_060_pop23149_0, element_extension12_q, element_extension9_q, element_extension6_q, element_extension3_q, element_extension0_q};

    // c_i2_063(CONSTANT,21)
    assign c_i2_063_q = $unsigned(2'b00);

    // kernel_3mm_B6_merge_storage(BLACKBOX,113)
    kernel_3mm_B6_merge_storage thekernel_3mm_B6_merge_storage (
        .in_almost_empty_in(c_i2_063_q),
        .in_empty_in(c_i2_063_q),
        .in_i_data(kernel_3mm_B6_merge_data_pack_0_q),
        .in_i_stall(in_stall_in),
        .in_i_valid(in_valid_in_0),
        .out_o_almost_empty(kernel_3mm_B6_merge_storage_out_o_almost_empty),
        .out_o_data(kernel_3mm_B6_merge_storage_out_o_data),
        .out_o_empty(kernel_3mm_B6_merge_storage_out_o_empty),
        .out_o_stall(kernel_3mm_B6_merge_storage_out_o_stall),
        .out_o_valid(kernel_3mm_B6_merge_storage_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // out_almost_empty_out(GPOUT,114)
    assign out_almost_empty_out = kernel_3mm_B6_merge_storage_out_o_almost_empty;

    // kernel_3mm_B6_merge_data_unpack_23(BITSELECT,104)
    assign kernel_3mm_B6_merge_data_unpack_23_b = kernel_3mm_B6_merge_storage_out_o_data[407:344];

    // out_arrayidx444216(GPOUT,115)
    assign out_arrayidx444216 = kernel_3mm_B6_merge_data_unpack_23_b;

    // out_empty_out(GPOUT,116)
    assign out_empty_out = kernel_3mm_B6_merge_storage_out_o_empty;

    // kernel_3mm_B6_merge_data_unpack_0(BITSELECT,88)
    assign kernel_3mm_B6_merge_data_unpack_0_b = kernel_3mm_B6_merge_storage_out_o_data[7:0];

    // adapt_scalar_trunc2(ROUND,5)
    assign adapt_scalar_trunc2_in = kernel_3mm_B6_merge_data_unpack_0_b[0:0];
    assign adapt_scalar_trunc2_q = adapt_scalar_trunc2_in[0:0];

    // out_forked115(GPOUT,117)
    assign out_forked115 = adapt_scalar_trunc2_q;

    // kernel_3mm_B6_merge_data_unpack_7(BITSELECT,110)
    assign kernel_3mm_B6_merge_data_unpack_7_b = kernel_3mm_B6_merge_storage_out_o_data[87:80];

    // adapt_scalar_trunc21(ROUND,6)
    assign adapt_scalar_trunc21_in = kernel_3mm_B6_merge_data_unpack_7_b[0:0];
    assign adapt_scalar_trunc21_q = adapt_scalar_trunc21_in[0:0];

    // out_forked60_pop24159(GPOUT,118)
    assign out_forked60_pop24159 = adapt_scalar_trunc21_q;

    // kernel_3mm_B6_merge_data_unpack_14(BITSELECT,94)
    assign kernel_3mm_B6_merge_data_unpack_14_b = kernel_3mm_B6_merge_storage_out_o_data[255:248];

    // adapt_scalar_trunc38(ROUND,11)
    assign adapt_scalar_trunc38_in = kernel_3mm_B6_merge_data_unpack_14_b[0:0];
    assign adapt_scalar_trunc38_q = adapt_scalar_trunc38_in[0:0];

    // out_forked62_pop49198(GPOUT,119)
    assign out_forked62_pop49198 = adapt_scalar_trunc38_q;

    // kernel_3mm_B6_merge_data_unpack_5(BITSELECT,108)
    assign kernel_3mm_B6_merge_data_unpack_5_b = kernel_3mm_B6_merge_storage_out_o_data[71:40];

    // out_i_060_pop23149(GPOUT,120)
    assign out_i_060_pop23149 = kernel_3mm_B6_merge_data_unpack_5_b;

    // kernel_3mm_B6_merge_data_unpack_19(BITSELECT,99)
    assign kernel_3mm_B6_merge_data_unpack_19_b = kernel_3mm_B6_merge_storage_out_o_data[319:288];

    // out_i_060_pop2386_pop54208(GPOUT,121)
    assign out_i_060_pop2386_pop54208 = kernel_3mm_B6_merge_data_unpack_19_b;

    // kernel_3mm_B6_merge_data_unpack_13(BITSELECT,93)
    assign kernel_3mm_B6_merge_data_unpack_13_b = kernel_3mm_B6_merge_storage_out_o_data[247:184];

    // out_idxprom1199_pop57195(GPOUT,122)
    assign out_idxprom1199_pop57195 = kernel_3mm_B6_merge_data_unpack_13_b;

    // kernel_3mm_B6_merge_data_unpack_12(BITSELECT,92)
    assign kernel_3mm_B6_merge_data_unpack_12_b = kernel_3mm_B6_merge_storage_out_o_data[183:120];

    // out_idxprom97_pop56193(GPOUT,123)
    assign out_idxprom97_pop56193 = kernel_3mm_B6_merge_data_unpack_12_b;

    // kernel_3mm_B6_merge_data_unpack_22(BITSELECT,103)
    assign kernel_3mm_B6_merge_data_unpack_22_b = kernel_3mm_B6_merge_storage_out_o_data[343:336];

    // adapt_scalar_trunc60(ROUND,19)
    assign adapt_scalar_trunc60_in = kernel_3mm_B6_merge_data_unpack_22_b[0:0];
    assign adapt_scalar_trunc60_q = adapt_scalar_trunc60_in[0:0];

    // out_memdep_215(GPOUT,124)
    assign out_memdep_215 = adapt_scalar_trunc60_q;

    // kernel_3mm_B6_merge_data_unpack_2(BITSELECT,100)
    assign kernel_3mm_B6_merge_data_unpack_2_b = kernel_3mm_B6_merge_storage_out_o_data[23:16];

    // adapt_scalar_trunc8(ROUND,20)
    assign adapt_scalar_trunc8_in = kernel_3mm_B6_merge_data_unpack_2_b[0:0];
    assign adapt_scalar_trunc8_q = adapt_scalar_trunc8_in[0:0];

    // out_memdep_phi2_pop18129(GPOUT,125)
    assign out_memdep_phi2_pop18129 = adapt_scalar_trunc8_q;

    // kernel_3mm_B6_merge_data_unpack_9(BITSELECT,112)
    assign kernel_3mm_B6_merge_data_unpack_9_b = kernel_3mm_B6_merge_storage_out_o_data[103:96];

    // adapt_scalar_trunc27(ROUND,8)
    assign adapt_scalar_trunc27_in = kernel_3mm_B6_merge_data_unpack_9_b[0:0];
    assign adapt_scalar_trunc27_q = adapt_scalar_trunc27_in[0:0];

    // out_memdep_phi2_pop1868_pop26169(GPOUT,126)
    assign out_memdep_phi2_pop1868_pop26169 = adapt_scalar_trunc27_q;

    // kernel_3mm_B6_merge_data_unpack_16(BITSELECT,96)
    assign kernel_3mm_B6_merge_data_unpack_16_b = kernel_3mm_B6_merge_storage_out_o_data[271:264];

    // adapt_scalar_trunc44(ROUND,13)
    assign adapt_scalar_trunc44_in = kernel_3mm_B6_merge_data_unpack_16_b[0:0];
    assign adapt_scalar_trunc44_q = adapt_scalar_trunc44_in[0:0];

    // out_memdep_phi2_pop1870_pop51202(GPOUT,127)
    assign out_memdep_phi2_pop1870_pop51202 = adapt_scalar_trunc44_q;

    // kernel_3mm_B6_merge_data_unpack_3(BITSELECT,106)
    assign kernel_3mm_B6_merge_data_unpack_3_b = kernel_3mm_B6_merge_storage_out_o_data[31:24];

    // adapt_scalar_trunc11(ROUND,2)
    assign adapt_scalar_trunc11_in = kernel_3mm_B6_merge_data_unpack_3_b[0:0];
    assign adapt_scalar_trunc11_q = adapt_scalar_trunc11_in[0:0];

    // out_memdep_phi3_pop19136(GPOUT,128)
    assign out_memdep_phi3_pop19136 = adapt_scalar_trunc11_q;

    // kernel_3mm_B6_merge_data_unpack_10(BITSELECT,90)
    assign kernel_3mm_B6_merge_data_unpack_10_b = kernel_3mm_B6_merge_storage_out_o_data[111:104];

    // adapt_scalar_trunc30(ROUND,9)
    assign adapt_scalar_trunc30_in = kernel_3mm_B6_merge_data_unpack_10_b[0:0];
    assign adapt_scalar_trunc30_q = adapt_scalar_trunc30_in[0:0];

    // out_memdep_phi3_pop1972_pop27174(GPOUT,129)
    assign out_memdep_phi3_pop1972_pop27174 = adapt_scalar_trunc30_q;

    // kernel_3mm_B6_merge_data_unpack_17(BITSELECT,97)
    assign kernel_3mm_B6_merge_data_unpack_17_b = kernel_3mm_B6_merge_storage_out_o_data[279:272];

    // adapt_scalar_trunc47(ROUND,14)
    assign adapt_scalar_trunc47_in = kernel_3mm_B6_merge_data_unpack_17_b[0:0];
    assign adapt_scalar_trunc47_q = adapt_scalar_trunc47_in[0:0];

    // out_memdep_phi3_pop1974_pop52204(GPOUT,130)
    assign out_memdep_phi3_pop1974_pop52204 = adapt_scalar_trunc47_q;

    // kernel_3mm_B6_merge_data_unpack_4(BITSELECT,107)
    assign kernel_3mm_B6_merge_data_unpack_4_b = kernel_3mm_B6_merge_storage_out_o_data[39:32];

    // adapt_scalar_trunc14(ROUND,3)
    assign adapt_scalar_trunc14_in = kernel_3mm_B6_merge_data_unpack_4_b[0:0];
    assign adapt_scalar_trunc14_q = adapt_scalar_trunc14_in[0:0];

    // out_memdep_phi5_pop20143(GPOUT,131)
    assign out_memdep_phi5_pop20143 = adapt_scalar_trunc14_q;

    // kernel_3mm_B6_merge_data_unpack_11(BITSELECT,91)
    assign kernel_3mm_B6_merge_data_unpack_11_b = kernel_3mm_B6_merge_storage_out_o_data[119:112];

    // adapt_scalar_trunc33(ROUND,10)
    assign adapt_scalar_trunc33_in = kernel_3mm_B6_merge_data_unpack_11_b[0:0];
    assign adapt_scalar_trunc33_q = adapt_scalar_trunc33_in[0:0];

    // out_memdep_phi5_pop2076_pop28179(GPOUT,132)
    assign out_memdep_phi5_pop2076_pop28179 = adapt_scalar_trunc33_q;

    // kernel_3mm_B6_merge_data_unpack_18(BITSELECT,98)
    assign kernel_3mm_B6_merge_data_unpack_18_b = kernel_3mm_B6_merge_storage_out_o_data[287:280];

    // adapt_scalar_trunc50(ROUND,16)
    assign adapt_scalar_trunc50_in = kernel_3mm_B6_merge_data_unpack_18_b[0:0];
    assign adapt_scalar_trunc50_q = adapt_scalar_trunc50_in[0:0];

    // out_memdep_phi5_pop2078_pop53206(GPOUT,133)
    assign out_memdep_phi5_pop2078_pop53206 = adapt_scalar_trunc50_q;

    // kernel_3mm_B6_merge_data_unpack_1(BITSELECT,89)
    assign kernel_3mm_B6_merge_data_unpack_1_b = kernel_3mm_B6_merge_storage_out_o_data[15:8];

    // adapt_scalar_trunc5(ROUND,15)
    assign adapt_scalar_trunc5_in = kernel_3mm_B6_merge_data_unpack_1_b[0:0];
    assign adapt_scalar_trunc5_q = adapt_scalar_trunc5_in[0:0];

    // out_memdep_phi_pop17122(GPOUT,134)
    assign out_memdep_phi_pop17122 = adapt_scalar_trunc5_q;

    // kernel_3mm_B6_merge_data_unpack_8(BITSELECT,111)
    assign kernel_3mm_B6_merge_data_unpack_8_b = kernel_3mm_B6_merge_storage_out_o_data[95:88];

    // adapt_scalar_trunc24(ROUND,7)
    assign adapt_scalar_trunc24_in = kernel_3mm_B6_merge_data_unpack_8_b[0:0];
    assign adapt_scalar_trunc24_q = adapt_scalar_trunc24_in[0:0];

    // out_memdep_phi_pop1764_pop25164(GPOUT,135)
    assign out_memdep_phi_pop1764_pop25164 = adapt_scalar_trunc24_q;

    // kernel_3mm_B6_merge_data_unpack_15(BITSELECT,95)
    assign kernel_3mm_B6_merge_data_unpack_15_b = kernel_3mm_B6_merge_storage_out_o_data[263:256];

    // adapt_scalar_trunc41(ROUND,12)
    assign adapt_scalar_trunc41_in = kernel_3mm_B6_merge_data_unpack_15_b[0:0];
    assign adapt_scalar_trunc41_q = adapt_scalar_trunc41_in[0:0];

    // out_memdep_phi_pop1766_pop50200(GPOUT,136)
    assign out_memdep_phi_pop1766_pop50200 = adapt_scalar_trunc41_q;

    // kernel_3mm_B6_merge_data_unpack_21(BITSELECT,102)
    assign kernel_3mm_B6_merge_data_unpack_21_b = kernel_3mm_B6_merge_storage_out_o_data[335:328];

    // adapt_scalar_trunc57(ROUND,18)
    assign adapt_scalar_trunc57_in = kernel_3mm_B6_merge_data_unpack_21_b[0:0];
    assign adapt_scalar_trunc57_q = adapt_scalar_trunc57_in[0:0];

    // out_notcmp46102_pop59213(GPOUT,137)
    assign out_notcmp46102_pop59213 = adapt_scalar_trunc57_q;

    // kernel_3mm_B6_merge_data_unpack_6(BITSELECT,109)
    assign kernel_3mm_B6_merge_data_unpack_6_b = kernel_3mm_B6_merge_storage_out_o_data[79:72];

    // adapt_scalar_trunc18(ROUND,4)
    assign adapt_scalar_trunc18_in = kernel_3mm_B6_merge_data_unpack_6_b[0:0];
    assign adapt_scalar_trunc18_q = adapt_scalar_trunc18_in[0:0];

    // out_notcmp51154(GPOUT,138)
    assign out_notcmp51154 = adapt_scalar_trunc18_q;

    // kernel_3mm_B6_merge_data_unpack_20(BITSELECT,101)
    assign kernel_3mm_B6_merge_data_unpack_20_b = kernel_3mm_B6_merge_storage_out_o_data[327:320];

    // adapt_scalar_trunc54(ROUND,17)
    assign adapt_scalar_trunc54_in = kernel_3mm_B6_merge_data_unpack_20_b[0:0];
    assign adapt_scalar_trunc54_q = adapt_scalar_trunc54_in[0:0];

    // out_notcmp5189_pop55210(GPOUT,139)
    assign out_notcmp5189_pop55210 = adapt_scalar_trunc54_q;

    // out_stall_out_0(GPOUT,140)
    assign out_stall_out_0 = kernel_3mm_B6_merge_storage_out_o_stall;

    // kernel_3mm_B6_merge_data_unpack_24(BITSELECT,105)
    assign kernel_3mm_B6_merge_data_unpack_24_b = kernel_3mm_B6_merge_storage_out_o_data[439:408];

    // out_unnamed_kernel_3mm7(GPOUT,141)
    assign out_unnamed_kernel_3mm7 = kernel_3mm_B6_merge_data_unpack_24_b;

    // out_valid_out(GPOUT,142)
    assign out_valid_out = kernel_3mm_B6_merge_storage_out_o_valid;

    // rst_sync(RESETSYNC,143)
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
