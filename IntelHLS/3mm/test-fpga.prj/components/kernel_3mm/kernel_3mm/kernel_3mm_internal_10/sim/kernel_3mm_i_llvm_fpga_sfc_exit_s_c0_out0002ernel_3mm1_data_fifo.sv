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

// SystemVerilog created from i_llvm_fpga_sfc_exit_s_c0_out_for_body15_kernel_3mms_c0_exit385_kernel_3mm1_data_fifo
// Created for function/kernel kernel_3mm
// SystemVerilog created on Fri Apr  7 18:25:07 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_i_llvm_fpga_sfc_exit_s_c0_out0002ernel_3mm1_data_fifo (
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [0:0] in_i_data_0_tpl,
    input wire [0:0] in_i_data_1_tpl,
    input wire [63:0] in_i_data_2_tpl,
    input wire [63:0] in_i_data_3_tpl,
    input wire [31:0] in_i_data_4_tpl,
    input wire [0:0] in_i_data_5_tpl,
    input wire [0:0] in_i_data_6_tpl,
    input wire [0:0] in_i_data_7_tpl,
    input wire [0:0] in_i_data_8_tpl,
    input wire [0:0] in_i_data_9_tpl,
    input wire [0:0] in_i_data_10_tpl,
    input wire [31:0] in_i_data_11_tpl,
    input wire [0:0] in_i_data_12_tpl,
    input wire [63:0] in_i_data_13_tpl,
    input wire [0:0] in_i_data_14_tpl,
    input wire [0:0] in_i_data_15_tpl,
    input wire [0:0] in_i_data_16_tpl,
    input wire [0:0] in_i_data_17_tpl,
    input wire [0:0] in_i_data_18_tpl,
    input wire [0:0] in_i_data_19_tpl,
    input wire [31:0] in_i_data_20_tpl,
    input wire [0:0] in_i_data_21_tpl,
    input wire [0:0] in_i_data_22_tpl,
    input wire [0:0] in_i_data_23_tpl,
    input wire [0:0] in_i_data_24_tpl,
    input wire [0:0] in_i_data_25_tpl,
    input wire [0:0] in_i_data_26_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_o_almost_full,
    output wire [0:0] out_o_data_0_tpl,
    output wire [0:0] out_o_data_1_tpl,
    output wire [63:0] out_o_data_2_tpl,
    output wire [63:0] out_o_data_3_tpl,
    output wire [31:0] out_o_data_4_tpl,
    output wire [0:0] out_o_data_5_tpl,
    output wire [0:0] out_o_data_6_tpl,
    output wire [0:0] out_o_data_7_tpl,
    output wire [0:0] out_o_data_8_tpl,
    output wire [0:0] out_o_data_9_tpl,
    output wire [0:0] out_o_data_10_tpl,
    output wire [31:0] out_o_data_11_tpl,
    output wire [0:0] out_o_data_12_tpl,
    output wire [63:0] out_o_data_13_tpl,
    output wire [0:0] out_o_data_14_tpl,
    output wire [0:0] out_o_data_15_tpl,
    output wire [0:0] out_o_data_16_tpl,
    output wire [0:0] out_o_data_17_tpl,
    output wire [0:0] out_o_data_18_tpl,
    output wire [0:0] out_o_data_19_tpl,
    output wire [31:0] out_o_data_20_tpl,
    output wire [0:0] out_o_data_21_tpl,
    output wire [0:0] out_o_data_22_tpl,
    output wire [0:0] out_o_data_23_tpl,
    output wire [0:0] out_o_data_24_tpl,
    output wire [0:0] out_o_data_25_tpl,
    output wire [0:0] out_o_data_26_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc100_in;
    wire [0:0] adapt_scalar_trunc100_q;
    wire [0:0] adapt_scalar_trunc102_in;
    wire [0:0] adapt_scalar_trunc102_q;
    wire [0:0] adapt_scalar_trunc104_in;
    wire [0:0] adapt_scalar_trunc104_q;
    wire [0:0] adapt_scalar_trunc52_in;
    wire [0:0] adapt_scalar_trunc52_q;
    wire [0:0] adapt_scalar_trunc54_in;
    wire [0:0] adapt_scalar_trunc54_q;
    wire [0:0] adapt_scalar_trunc62_in;
    wire [0:0] adapt_scalar_trunc62_q;
    wire [0:0] adapt_scalar_trunc64_in;
    wire [0:0] adapt_scalar_trunc64_q;
    wire [0:0] adapt_scalar_trunc66_in;
    wire [0:0] adapt_scalar_trunc66_q;
    wire [0:0] adapt_scalar_trunc68_in;
    wire [0:0] adapt_scalar_trunc68_q;
    wire [0:0] adapt_scalar_trunc70_in;
    wire [0:0] adapt_scalar_trunc70_q;
    wire [0:0] adapt_scalar_trunc72_in;
    wire [0:0] adapt_scalar_trunc72_q;
    wire [0:0] adapt_scalar_trunc76_in;
    wire [0:0] adapt_scalar_trunc76_q;
    wire [0:0] adapt_scalar_trunc80_in;
    wire [0:0] adapt_scalar_trunc80_q;
    wire [0:0] adapt_scalar_trunc82_in;
    wire [0:0] adapt_scalar_trunc82_q;
    wire [0:0] adapt_scalar_trunc84_in;
    wire [0:0] adapt_scalar_trunc84_q;
    wire [0:0] adapt_scalar_trunc86_in;
    wire [0:0] adapt_scalar_trunc86_q;
    wire [0:0] adapt_scalar_trunc88_in;
    wire [0:0] adapt_scalar_trunc88_q;
    wire [0:0] adapt_scalar_trunc90_in;
    wire [0:0] adapt_scalar_trunc90_q;
    wire [0:0] adapt_scalar_trunc94_in;
    wire [0:0] adapt_scalar_trunc94_q;
    wire [0:0] adapt_scalar_trunc96_in;
    wire [0:0] adapt_scalar_trunc96_q;
    wire [0:0] adapt_scalar_trunc98_in;
    wire [0:0] adapt_scalar_trunc98_q;
    wire [15:0] c_i16_020_q;
    wire [47:0] c_i48_049_q;
    wire [55:0] c_i56_023_q;
    wire [6:0] c_i7_011_q;
    wire [639:0] dsdk_ip_adapt_bitjoin1_q;
    wire [7:0] element_extension10_q;
    wire [7:0] element_extension12_q;
    wire [7:0] element_extension14_q;
    wire [7:0] element_extension16_q;
    wire [7:0] element_extension18_q;
    wire [7:0] element_extension21_q;
    wire [7:0] element_extension24_q;
    wire [7:0] element_extension26_q;
    wire [7:0] element_extension28_q;
    wire [7:0] element_extension3_q;
    wire [7:0] element_extension30_q;
    wire [7:0] element_extension32_q;
    wire [7:0] element_extension34_q;
    wire [7:0] element_extension37_q;
    wire [7:0] element_extension39_q;
    wire [7:0] element_extension41_q;
    wire [7:0] element_extension43_q;
    wire [7:0] element_extension45_q;
    wire [7:0] element_extension47_q;
    wire [7:0] element_extension5_q;
    wire [7:0] element_extension8_q;
    wire [639:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body15_kernel_3mms_c0_exit385_kernel_3mm0_i_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body15_kernel_3mms_c0_exit385_kernel_3mm0_i_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body15_kernel_3mms_c0_exit385_kernel_3mm0_i_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body15_kernel_3mms_c0_exit385_kernel_3mm0_i_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body15_kernel_3mms_c0_exit385_kernel_3mm0_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body15_kernel_3mms_c0_exit385_kernel_3mm0_o_almost_full;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body15_kernel_3mms_c0_exit385_kernel_3mm0_o_almost_full_bitsignaltemp;
    wire [639:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body15_kernel_3mms_c0_exit385_kernel_3mm0_o_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body15_kernel_3mms_c0_exit385_kernel_3mm0_o_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body15_kernel_3mms_c0_exit385_kernel_3mm0_o_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body15_kernel_3mms_c0_exit385_kernel_3mm0_o_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body15_kernel_3mms_c0_exit385_kernel_3mm0_o_valid_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect101_b;
    wire [0:0] ip_dsdk_adapt_bitselect103_b;
    wire [0:0] ip_dsdk_adapt_bitselect51_b;
    wire [0:0] ip_dsdk_adapt_bitselect53_b;
    wire [63:0] ip_dsdk_adapt_bitselect55_b;
    wire [63:0] ip_dsdk_adapt_bitselect57_b;
    wire [31:0] ip_dsdk_adapt_bitselect59_b;
    wire [0:0] ip_dsdk_adapt_bitselect61_b;
    wire [0:0] ip_dsdk_adapt_bitselect63_b;
    wire [0:0] ip_dsdk_adapt_bitselect65_b;
    wire [0:0] ip_dsdk_adapt_bitselect67_b;
    wire [0:0] ip_dsdk_adapt_bitselect69_b;
    wire [0:0] ip_dsdk_adapt_bitselect71_b;
    wire [31:0] ip_dsdk_adapt_bitselect73_b;
    wire [0:0] ip_dsdk_adapt_bitselect75_b;
    wire [63:0] ip_dsdk_adapt_bitselect77_b;
    wire [0:0] ip_dsdk_adapt_bitselect79_b;
    wire [0:0] ip_dsdk_adapt_bitselect81_b;
    wire [0:0] ip_dsdk_adapt_bitselect83_b;
    wire [0:0] ip_dsdk_adapt_bitselect85_b;
    wire [0:0] ip_dsdk_adapt_bitselect87_b;
    wire [0:0] ip_dsdk_adapt_bitselect89_b;
    wire [31:0] ip_dsdk_adapt_bitselect91_b;
    wire [0:0] ip_dsdk_adapt_bitselect93_b;
    wire [0:0] ip_dsdk_adapt_bitselect95_b;
    wire [0:0] ip_dsdk_adapt_bitselect97_b;
    wire [0:0] ip_dsdk_adapt_bitselect99_b;


    // c_i7_011(CONSTANT,28)
    assign c_i7_011_q = $unsigned(7'b0000000);

    // element_extension47(BITJOIN,68)
    assign element_extension47_q = {c_i7_011_q, in_i_data_26_tpl};

    // element_extension45(BITJOIN,67)
    assign element_extension45_q = {c_i7_011_q, in_i_data_25_tpl};

    // element_extension43(BITJOIN,66)
    assign element_extension43_q = {c_i7_011_q, in_i_data_24_tpl};

    // element_extension41(BITJOIN,65)
    assign element_extension41_q = {c_i7_011_q, in_i_data_23_tpl};

    // element_extension39(BITJOIN,64)
    assign element_extension39_q = {c_i7_011_q, in_i_data_22_tpl};

    // element_extension37(BITJOIN,63)
    assign element_extension37_q = {c_i7_011_q, in_i_data_21_tpl};

    // element_extension34(BITJOIN,62)
    assign element_extension34_q = {c_i7_011_q, in_i_data_19_tpl};

    // element_extension32(BITJOIN,61)
    assign element_extension32_q = {c_i7_011_q, in_i_data_18_tpl};

    // element_extension30(BITJOIN,60)
    assign element_extension30_q = {c_i7_011_q, in_i_data_17_tpl};

    // element_extension28(BITJOIN,58)
    assign element_extension28_q = {c_i7_011_q, in_i_data_16_tpl};

    // element_extension26(BITJOIN,57)
    assign element_extension26_q = {c_i7_011_q, in_i_data_15_tpl};

    // element_extension24(BITJOIN,56)
    assign element_extension24_q = {c_i7_011_q, in_i_data_14_tpl};

    // c_i56_023(CONSTANT,27)
    assign c_i56_023_q = $unsigned(56'b00000000000000000000000000000000000000000000000000000000);

    // element_extension21(BITJOIN,55)
    assign element_extension21_q = {c_i7_011_q, in_i_data_12_tpl};

    // c_i16_020(CONSTANT,23)
    assign c_i16_020_q = $unsigned(16'b0000000000000000);

    // element_extension18(BITJOIN,54)
    assign element_extension18_q = {c_i7_011_q, in_i_data_10_tpl};

    // element_extension16(BITJOIN,53)
    assign element_extension16_q = {c_i7_011_q, in_i_data_9_tpl};

    // element_extension14(BITJOIN,52)
    assign element_extension14_q = {c_i7_011_q, in_i_data_8_tpl};

    // element_extension12(BITJOIN,51)
    assign element_extension12_q = {c_i7_011_q, in_i_data_7_tpl};

    // element_extension10(BITJOIN,50)
    assign element_extension10_q = {c_i7_011_q, in_i_data_6_tpl};

    // element_extension8(BITJOIN,70)
    assign element_extension8_q = {c_i7_011_q, in_i_data_5_tpl};

    // c_i48_049(CONSTANT,25)
    assign c_i48_049_q = $unsigned(48'b000000000000000000000000000000000000000000000000);

    // element_extension5(BITJOIN,69)
    assign element_extension5_q = {c_i7_011_q, in_i_data_1_tpl};

    // element_extension3(BITJOIN,59)
    assign element_extension3_q = {c_i7_011_q, in_i_data_0_tpl};

    // dsdk_ip_adapt_bitjoin1(BITJOIN,49)
    assign dsdk_ip_adapt_bitjoin1_q = {c_i48_049_q, element_extension47_q, element_extension45_q, element_extension43_q, element_extension41_q, element_extension39_q, element_extension37_q, in_i_data_20_tpl, c_i16_020_q, element_extension34_q, element_extension32_q, element_extension30_q, element_extension28_q, element_extension26_q, element_extension24_q, in_i_data_13_tpl, c_i56_023_q, element_extension21_q, in_i_data_11_tpl, c_i16_020_q, element_extension18_q, element_extension16_q, element_extension14_q, element_extension12_q, element_extension10_q, element_extension8_q, in_i_data_4_tpl, in_i_data_3_tpl, in_i_data_2_tpl, c_i48_049_q, element_extension5_q, element_extension3_q};

    // i_llvm_fpga_sfc_exit_s_c0_out_for_body15_kernel_3mms_c0_exit385_kernel_3mm0(EXTIFACE,71)
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body15_kernel_3mms_c0_exit385_kernel_3mm0_i_data = dsdk_ip_adapt_bitjoin1_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body15_kernel_3mms_c0_exit385_kernel_3mm0_i_stall = in_i_stall;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body15_kernel_3mms_c0_exit385_kernel_3mm0_i_valid = in_i_valid;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body15_kernel_3mms_c0_exit385_kernel_3mm0_i_stall_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body15_kernel_3mms_c0_exit385_kernel_3mm0_i_stall[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body15_kernel_3mms_c0_exit385_kernel_3mm0_i_valid_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body15_kernel_3mms_c0_exit385_kernel_3mm0_i_valid[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body15_kernel_3mms_c0_exit385_kernel_3mm0_o_almost_full[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body15_kernel_3mms_c0_exit385_kernel_3mm0_o_almost_full_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body15_kernel_3mms_c0_exit385_kernel_3mm0_o_stall[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body15_kernel_3mms_c0_exit385_kernel_3mm0_o_stall_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body15_kernel_3mms_c0_exit385_kernel_3mm0_o_valid[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body15_kernel_3mms_c0_exit385_kernel_3mm0_o_valid_bitsignaltemp;
    hld_fifo #(
        .DEPTH(32),
        .STYLE("ms"),
        .ASYNC_RESET(1),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .SYNCHRONIZE_RESET(0),
        .WIDTH(640)
    ) thei_llvm_fpga_sfc_exit_s_c0_out_for_body15_kernel_3mms_c0_exit385_kernel_3mm0 (
        .i_data(dsdk_ip_adapt_bitjoin1_q),
        .i_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_body15_kernel_3mms_c0_exit385_kernel_3mm0_i_stall_bitsignaltemp),
        .i_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_body15_kernel_3mms_c0_exit385_kernel_3mm0_i_valid_bitsignaltemp),
        .o_almost_full(i_llvm_fpga_sfc_exit_s_c0_out_for_body15_kernel_3mms_c0_exit385_kernel_3mm0_o_almost_full_bitsignaltemp),
        .o_data(i_llvm_fpga_sfc_exit_s_c0_out_for_body15_kernel_3mms_c0_exit385_kernel_3mm0_o_data),
        .o_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_body15_kernel_3mms_c0_exit385_kernel_3mm0_o_stall_bitsignaltemp),
        .o_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_body15_kernel_3mms_c0_exit385_kernel_3mm0_o_valid_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out(GPOUT,106)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_body15_kernel_3mms_c0_exit385_kernel_3mm0_o_stall;

    // ip_dsdk_adapt_bitselect103(BITSELECT,73)
    assign ip_dsdk_adapt_bitselect103_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body15_kernel_3mms_c0_exit385_kernel_3mm0_o_data[584:584];

    // adapt_scalar_trunc104(ROUND,4)
    assign adapt_scalar_trunc104_in = ip_dsdk_adapt_bitselect103_b;
    assign adapt_scalar_trunc104_q = adapt_scalar_trunc104_in[0:0];

    // ip_dsdk_adapt_bitselect101(BITSELECT,72)
    assign ip_dsdk_adapt_bitselect101_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body15_kernel_3mms_c0_exit385_kernel_3mm0_o_data[576:576];

    // adapt_scalar_trunc102(ROUND,3)
    assign adapt_scalar_trunc102_in = ip_dsdk_adapt_bitselect101_b;
    assign adapt_scalar_trunc102_q = adapt_scalar_trunc102_in[0:0];

    // ip_dsdk_adapt_bitselect99(BITSELECT,98)
    assign ip_dsdk_adapt_bitselect99_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body15_kernel_3mms_c0_exit385_kernel_3mm0_o_data[568:568];

    // adapt_scalar_trunc100(ROUND,2)
    assign adapt_scalar_trunc100_in = ip_dsdk_adapt_bitselect99_b;
    assign adapt_scalar_trunc100_q = adapt_scalar_trunc100_in[0:0];

    // ip_dsdk_adapt_bitselect97(BITSELECT,97)
    assign ip_dsdk_adapt_bitselect97_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body15_kernel_3mms_c0_exit385_kernel_3mm0_o_data[560:560];

    // adapt_scalar_trunc98(ROUND,22)
    assign adapt_scalar_trunc98_in = ip_dsdk_adapt_bitselect97_b;
    assign adapt_scalar_trunc98_q = adapt_scalar_trunc98_in[0:0];

    // ip_dsdk_adapt_bitselect95(BITSELECT,96)
    assign ip_dsdk_adapt_bitselect95_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body15_kernel_3mms_c0_exit385_kernel_3mm0_o_data[552:552];

    // adapt_scalar_trunc96(ROUND,21)
    assign adapt_scalar_trunc96_in = ip_dsdk_adapt_bitselect95_b;
    assign adapt_scalar_trunc96_q = adapt_scalar_trunc96_in[0:0];

    // ip_dsdk_adapt_bitselect93(BITSELECT,95)
    assign ip_dsdk_adapt_bitselect93_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body15_kernel_3mms_c0_exit385_kernel_3mm0_o_data[544:544];

    // adapt_scalar_trunc94(ROUND,20)
    assign adapt_scalar_trunc94_in = ip_dsdk_adapt_bitselect93_b;
    assign adapt_scalar_trunc94_q = adapt_scalar_trunc94_in[0:0];

    // ip_dsdk_adapt_bitselect91(BITSELECT,94)
    assign ip_dsdk_adapt_bitselect91_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body15_kernel_3mms_c0_exit385_kernel_3mm0_o_data[543:512];

    // ip_dsdk_adapt_bitselect89(BITSELECT,93)
    assign ip_dsdk_adapt_bitselect89_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body15_kernel_3mms_c0_exit385_kernel_3mm0_o_data[488:488];

    // adapt_scalar_trunc90(ROUND,19)
    assign adapt_scalar_trunc90_in = ip_dsdk_adapt_bitselect89_b;
    assign adapt_scalar_trunc90_q = adapt_scalar_trunc90_in[0:0];

    // ip_dsdk_adapt_bitselect87(BITSELECT,92)
    assign ip_dsdk_adapt_bitselect87_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body15_kernel_3mms_c0_exit385_kernel_3mm0_o_data[480:480];

    // adapt_scalar_trunc88(ROUND,18)
    assign adapt_scalar_trunc88_in = ip_dsdk_adapt_bitselect87_b;
    assign adapt_scalar_trunc88_q = adapt_scalar_trunc88_in[0:0];

    // ip_dsdk_adapt_bitselect85(BITSELECT,91)
    assign ip_dsdk_adapt_bitselect85_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body15_kernel_3mms_c0_exit385_kernel_3mm0_o_data[472:472];

    // adapt_scalar_trunc86(ROUND,17)
    assign adapt_scalar_trunc86_in = ip_dsdk_adapt_bitselect85_b;
    assign adapt_scalar_trunc86_q = adapt_scalar_trunc86_in[0:0];

    // ip_dsdk_adapt_bitselect83(BITSELECT,90)
    assign ip_dsdk_adapt_bitselect83_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body15_kernel_3mms_c0_exit385_kernel_3mm0_o_data[464:464];

    // adapt_scalar_trunc84(ROUND,16)
    assign adapt_scalar_trunc84_in = ip_dsdk_adapt_bitselect83_b;
    assign adapt_scalar_trunc84_q = adapt_scalar_trunc84_in[0:0];

    // ip_dsdk_adapt_bitselect81(BITSELECT,89)
    assign ip_dsdk_adapt_bitselect81_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body15_kernel_3mms_c0_exit385_kernel_3mm0_o_data[456:456];

    // adapt_scalar_trunc82(ROUND,15)
    assign adapt_scalar_trunc82_in = ip_dsdk_adapt_bitselect81_b;
    assign adapt_scalar_trunc82_q = adapt_scalar_trunc82_in[0:0];

    // ip_dsdk_adapt_bitselect79(BITSELECT,88)
    assign ip_dsdk_adapt_bitselect79_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body15_kernel_3mms_c0_exit385_kernel_3mm0_o_data[448:448];

    // adapt_scalar_trunc80(ROUND,14)
    assign adapt_scalar_trunc80_in = ip_dsdk_adapt_bitselect79_b;
    assign adapt_scalar_trunc80_q = adapt_scalar_trunc80_in[0:0];

    // ip_dsdk_adapt_bitselect77(BITSELECT,87)
    assign ip_dsdk_adapt_bitselect77_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body15_kernel_3mms_c0_exit385_kernel_3mm0_o_data[447:384];

    // ip_dsdk_adapt_bitselect75(BITSELECT,86)
    assign ip_dsdk_adapt_bitselect75_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body15_kernel_3mms_c0_exit385_kernel_3mm0_o_data[320:320];

    // adapt_scalar_trunc76(ROUND,13)
    assign adapt_scalar_trunc76_in = ip_dsdk_adapt_bitselect75_b;
    assign adapt_scalar_trunc76_q = adapt_scalar_trunc76_in[0:0];

    // ip_dsdk_adapt_bitselect73(BITSELECT,85)
    assign ip_dsdk_adapt_bitselect73_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body15_kernel_3mms_c0_exit385_kernel_3mm0_o_data[319:288];

    // ip_dsdk_adapt_bitselect71(BITSELECT,84)
    assign ip_dsdk_adapt_bitselect71_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body15_kernel_3mms_c0_exit385_kernel_3mm0_o_data[264:264];

    // adapt_scalar_trunc72(ROUND,12)
    assign adapt_scalar_trunc72_in = ip_dsdk_adapt_bitselect71_b;
    assign adapt_scalar_trunc72_q = adapt_scalar_trunc72_in[0:0];

    // ip_dsdk_adapt_bitselect69(BITSELECT,83)
    assign ip_dsdk_adapt_bitselect69_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body15_kernel_3mms_c0_exit385_kernel_3mm0_o_data[256:256];

    // adapt_scalar_trunc70(ROUND,11)
    assign adapt_scalar_trunc70_in = ip_dsdk_adapt_bitselect69_b;
    assign adapt_scalar_trunc70_q = adapt_scalar_trunc70_in[0:0];

    // ip_dsdk_adapt_bitselect67(BITSELECT,82)
    assign ip_dsdk_adapt_bitselect67_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body15_kernel_3mms_c0_exit385_kernel_3mm0_o_data[248:248];

    // adapt_scalar_trunc68(ROUND,10)
    assign adapt_scalar_trunc68_in = ip_dsdk_adapt_bitselect67_b;
    assign adapt_scalar_trunc68_q = adapt_scalar_trunc68_in[0:0];

    // ip_dsdk_adapt_bitselect65(BITSELECT,81)
    assign ip_dsdk_adapt_bitselect65_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body15_kernel_3mms_c0_exit385_kernel_3mm0_o_data[240:240];

    // adapt_scalar_trunc66(ROUND,9)
    assign adapt_scalar_trunc66_in = ip_dsdk_adapt_bitselect65_b;
    assign adapt_scalar_trunc66_q = adapt_scalar_trunc66_in[0:0];

    // ip_dsdk_adapt_bitselect63(BITSELECT,80)
    assign ip_dsdk_adapt_bitselect63_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body15_kernel_3mms_c0_exit385_kernel_3mm0_o_data[232:232];

    // adapt_scalar_trunc64(ROUND,8)
    assign adapt_scalar_trunc64_in = ip_dsdk_adapt_bitselect63_b;
    assign adapt_scalar_trunc64_q = adapt_scalar_trunc64_in[0:0];

    // ip_dsdk_adapt_bitselect61(BITSELECT,79)
    assign ip_dsdk_adapt_bitselect61_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body15_kernel_3mms_c0_exit385_kernel_3mm0_o_data[224:224];

    // adapt_scalar_trunc62(ROUND,7)
    assign adapt_scalar_trunc62_in = ip_dsdk_adapt_bitselect61_b;
    assign adapt_scalar_trunc62_q = adapt_scalar_trunc62_in[0:0];

    // ip_dsdk_adapt_bitselect59(BITSELECT,78)
    assign ip_dsdk_adapt_bitselect59_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body15_kernel_3mms_c0_exit385_kernel_3mm0_o_data[223:192];

    // ip_dsdk_adapt_bitselect57(BITSELECT,77)
    assign ip_dsdk_adapt_bitselect57_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body15_kernel_3mms_c0_exit385_kernel_3mm0_o_data[191:128];

    // ip_dsdk_adapt_bitselect55(BITSELECT,76)
    assign ip_dsdk_adapt_bitselect55_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body15_kernel_3mms_c0_exit385_kernel_3mm0_o_data[127:64];

    // ip_dsdk_adapt_bitselect53(BITSELECT,75)
    assign ip_dsdk_adapt_bitselect53_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body15_kernel_3mms_c0_exit385_kernel_3mm0_o_data[8:8];

    // adapt_scalar_trunc54(ROUND,6)
    assign adapt_scalar_trunc54_in = ip_dsdk_adapt_bitselect53_b;
    assign adapt_scalar_trunc54_q = adapt_scalar_trunc54_in[0:0];

    // ip_dsdk_adapt_bitselect51(BITSELECT,74)
    assign ip_dsdk_adapt_bitselect51_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body15_kernel_3mms_c0_exit385_kernel_3mm0_o_data[0:0];

    // adapt_scalar_trunc52(ROUND,5)
    assign adapt_scalar_trunc52_in = ip_dsdk_adapt_bitselect51_b;
    assign adapt_scalar_trunc52_q = adapt_scalar_trunc52_in[0:0];

    // dupName_0_sync_out_aunroll_x(GPOUT,108)@20000003
    assign out_o_almost_full = i_llvm_fpga_sfc_exit_s_c0_out_for_body15_kernel_3mms_c0_exit385_kernel_3mm0_o_almost_full;
    assign out_o_data_0_tpl = adapt_scalar_trunc52_q;
    assign out_o_data_1_tpl = adapt_scalar_trunc54_q;
    assign out_o_data_2_tpl = ip_dsdk_adapt_bitselect55_b;
    assign out_o_data_3_tpl = ip_dsdk_adapt_bitselect57_b;
    assign out_o_data_4_tpl = ip_dsdk_adapt_bitselect59_b;
    assign out_o_data_5_tpl = adapt_scalar_trunc62_q;
    assign out_o_data_6_tpl = adapt_scalar_trunc64_q;
    assign out_o_data_7_tpl = adapt_scalar_trunc66_q;
    assign out_o_data_8_tpl = adapt_scalar_trunc68_q;
    assign out_o_data_9_tpl = adapt_scalar_trunc70_q;
    assign out_o_data_10_tpl = adapt_scalar_trunc72_q;
    assign out_o_data_11_tpl = ip_dsdk_adapt_bitselect73_b;
    assign out_o_data_12_tpl = adapt_scalar_trunc76_q;
    assign out_o_data_13_tpl = ip_dsdk_adapt_bitselect77_b;
    assign out_o_data_14_tpl = adapt_scalar_trunc80_q;
    assign out_o_data_15_tpl = adapt_scalar_trunc82_q;
    assign out_o_data_16_tpl = adapt_scalar_trunc84_q;
    assign out_o_data_17_tpl = adapt_scalar_trunc86_q;
    assign out_o_data_18_tpl = adapt_scalar_trunc88_q;
    assign out_o_data_19_tpl = adapt_scalar_trunc90_q;
    assign out_o_data_20_tpl = ip_dsdk_adapt_bitselect91_b;
    assign out_o_data_21_tpl = adapt_scalar_trunc94_q;
    assign out_o_data_22_tpl = adapt_scalar_trunc96_q;
    assign out_o_data_23_tpl = adapt_scalar_trunc98_q;
    assign out_o_data_24_tpl = adapt_scalar_trunc100_q;
    assign out_o_data_25_tpl = adapt_scalar_trunc102_q;
    assign out_o_data_26_tpl = adapt_scalar_trunc104_q;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_body15_kernel_3mms_c0_exit385_kernel_3mm0_o_valid;

endmodule
