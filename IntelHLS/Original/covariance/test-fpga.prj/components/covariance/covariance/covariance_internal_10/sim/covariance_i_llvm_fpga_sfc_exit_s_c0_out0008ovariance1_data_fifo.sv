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

// SystemVerilog created from i_llvm_fpga_sfc_exit_s_c0_out_for_body36_covariances_c0_exit412_covariance1_data_fifo
// Created for function/kernel covariance
// SystemVerilog created on Thu Apr 27 14:28:36 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_i_llvm_fpga_sfc_exit_s_c0_out0008ovariance1_data_fifo (
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [0:0] in_i_data_0_tpl,
    input wire [63:0] in_i_data_1_tpl,
    input wire [63:0] in_i_data_2_tpl,
    input wire [0:0] in_i_data_3_tpl,
    input wire [0:0] in_i_data_4_tpl,
    input wire [31:0] in_i_data_5_tpl,
    input wire [0:0] in_i_data_6_tpl,
    input wire [0:0] in_i_data_7_tpl,
    input wire [31:0] in_i_data_8_tpl,
    input wire [31:0] in_i_data_9_tpl,
    input wire [0:0] in_i_data_10_tpl,
    input wire [0:0] in_i_data_11_tpl,
    input wire [0:0] in_i_data_12_tpl,
    input wire [31:0] in_i_data_13_tpl,
    input wire [31:0] in_i_data_14_tpl,
    input wire [32:0] in_i_data_15_tpl,
    input wire [0:0] in_i_data_16_tpl,
    input wire [31:0] in_i_data_17_tpl,
    input wire [31:0] in_i_data_18_tpl,
    input wire [31:0] in_i_data_19_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_o_almost_full,
    output wire [0:0] out_o_data_0_tpl,
    output wire [63:0] out_o_data_1_tpl,
    output wire [63:0] out_o_data_2_tpl,
    output wire [0:0] out_o_data_3_tpl,
    output wire [0:0] out_o_data_4_tpl,
    output wire [31:0] out_o_data_5_tpl,
    output wire [0:0] out_o_data_6_tpl,
    output wire [0:0] out_o_data_7_tpl,
    output wire [31:0] out_o_data_8_tpl,
    output wire [31:0] out_o_data_9_tpl,
    output wire [0:0] out_o_data_10_tpl,
    output wire [0:0] out_o_data_11_tpl,
    output wire [0:0] out_o_data_12_tpl,
    output wire [31:0] out_o_data_13_tpl,
    output wire [31:0] out_o_data_14_tpl,
    output wire [32:0] out_o_data_15_tpl,
    output wire [0:0] out_o_data_16_tpl,
    output wire [31:0] out_o_data_17_tpl,
    output wire [31:0] out_o_data_18_tpl,
    output wire [31:0] out_o_data_19_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc30_in;
    wire [0:0] adapt_scalar_trunc30_q;
    wire [0:0] adapt_scalar_trunc36_in;
    wire [0:0] adapt_scalar_trunc36_q;
    wire [0:0] adapt_scalar_trunc38_in;
    wire [0:0] adapt_scalar_trunc38_q;
    wire [0:0] adapt_scalar_trunc42_in;
    wire [0:0] adapt_scalar_trunc42_q;
    wire [0:0] adapt_scalar_trunc44_in;
    wire [0:0] adapt_scalar_trunc44_q;
    wire [0:0] adapt_scalar_trunc50_in;
    wire [0:0] adapt_scalar_trunc50_q;
    wire [0:0] adapt_scalar_trunc52_in;
    wire [0:0] adapt_scalar_trunc52_q;
    wire [0:0] adapt_scalar_trunc54_in;
    wire [0:0] adapt_scalar_trunc54_q;
    wire [32:0] adapt_scalar_trunc60_in;
    wire [32:0] adapt_scalar_trunc60_q;
    wire [0:0] adapt_scalar_trunc62_in;
    wire [0:0] adapt_scalar_trunc62_q;
    wire [15:0] c_i16_010_q;
    wire [23:0] c_i24_027_q;
    wire [30:0] c_i31_024_q;
    wire [55:0] c_i56_05_q;
    wire [6:0] c_i7_012_q;
    wire [7:0] c_i8_022_q;
    wire [639:0] dsdk_ip_adapt_bitjoin1_q;
    wire [7:0] element_extension11_q;
    wire [7:0] element_extension13_q;
    wire [7:0] element_extension16_q;
    wire [7:0] element_extension18_q;
    wire [7:0] element_extension20_q;
    wire [63:0] element_extension23_q;
    wire [7:0] element_extension25_q;
    wire [7:0] element_extension3_q;
    wire [7:0] element_extension6_q;
    wire [7:0] element_extension8_q;
    wire [639:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body36_covariances_c0_exit412_covariance0_i_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body36_covariances_c0_exit412_covariance0_i_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body36_covariances_c0_exit412_covariance0_i_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body36_covariances_c0_exit412_covariance0_i_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body36_covariances_c0_exit412_covariance0_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body36_covariances_c0_exit412_covariance0_o_almost_full;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body36_covariances_c0_exit412_covariance0_o_almost_full_bitsignaltemp;
    wire [639:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body36_covariances_c0_exit412_covariance0_o_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body36_covariances_c0_exit412_covariance0_o_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body36_covariances_c0_exit412_covariance0_o_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body36_covariances_c0_exit412_covariance0_o_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body36_covariances_c0_exit412_covariance0_o_valid_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect29_b;
    wire [63:0] ip_dsdk_adapt_bitselect31_b;
    wire [63:0] ip_dsdk_adapt_bitselect33_b;
    wire [0:0] ip_dsdk_adapt_bitselect35_b;
    wire [0:0] ip_dsdk_adapt_bitselect37_b;
    wire [31:0] ip_dsdk_adapt_bitselect39_b;
    wire [0:0] ip_dsdk_adapt_bitselect41_b;
    wire [0:0] ip_dsdk_adapt_bitselect43_b;
    wire [31:0] ip_dsdk_adapt_bitselect45_b;
    wire [31:0] ip_dsdk_adapt_bitselect47_b;
    wire [0:0] ip_dsdk_adapt_bitselect49_b;
    wire [0:0] ip_dsdk_adapt_bitselect51_b;
    wire [0:0] ip_dsdk_adapt_bitselect53_b;
    wire [31:0] ip_dsdk_adapt_bitselect55_b;
    wire [31:0] ip_dsdk_adapt_bitselect57_b;
    wire [32:0] ip_dsdk_adapt_bitselect59_b;
    wire [0:0] ip_dsdk_adapt_bitselect61_b;
    wire [31:0] ip_dsdk_adapt_bitselect63_b;
    wire [31:0] ip_dsdk_adapt_bitselect65_b;
    wire [31:0] ip_dsdk_adapt_bitselect67_b;


    // c_i24_027(CONSTANT,14)
    assign c_i24_027_q = $unsigned(24'b000000000000000000000000);

    // c_i7_012(CONSTANT,17)
    assign c_i7_012_q = $unsigned(7'b0000000);

    // element_extension25(BITJOIN,34)
    assign element_extension25_q = {c_i7_012_q, in_i_data_16_tpl};

    // c_i31_024(CONSTANT,15)
    assign c_i31_024_q = $unsigned(31'b0000000000000000000000000000000);

    // element_extension23(BITJOIN,33)
    assign element_extension23_q = {c_i31_024_q, in_i_data_15_tpl};

    // c_i8_022(CONSTANT,26)
    assign c_i8_022_q = $unsigned(8'b00000000);

    // element_extension20(BITJOIN,32)
    assign element_extension20_q = {c_i7_012_q, in_i_data_12_tpl};

    // element_extension18(BITJOIN,31)
    assign element_extension18_q = {c_i7_012_q, in_i_data_11_tpl};

    // element_extension16(BITJOIN,30)
    assign element_extension16_q = {c_i7_012_q, in_i_data_10_tpl};

    // element_extension13(BITJOIN,29)
    assign element_extension13_q = {c_i7_012_q, in_i_data_7_tpl};

    // element_extension11(BITJOIN,28)
    assign element_extension11_q = {c_i7_012_q, in_i_data_6_tpl};

    // c_i16_010(CONSTANT,12)
    assign c_i16_010_q = $unsigned(16'b0000000000000000);

    // element_extension8(BITJOIN,37)
    assign element_extension8_q = {c_i7_012_q, in_i_data_4_tpl};

    // element_extension6(BITJOIN,36)
    assign element_extension6_q = {c_i7_012_q, in_i_data_3_tpl};

    // c_i56_05(CONSTANT,16)
    assign c_i56_05_q = $unsigned(56'b00000000000000000000000000000000000000000000000000000000);

    // element_extension3(BITJOIN,35)
    assign element_extension3_q = {c_i7_012_q, in_i_data_0_tpl};

    // dsdk_ip_adapt_bitjoin1(BITJOIN,27)
    assign dsdk_ip_adapt_bitjoin1_q = {in_i_data_19_tpl, in_i_data_18_tpl, in_i_data_17_tpl, c_i24_027_q, element_extension25_q, element_extension23_q, in_i_data_14_tpl, in_i_data_13_tpl, c_i8_022_q, element_extension20_q, element_extension18_q, element_extension16_q, in_i_data_9_tpl, in_i_data_8_tpl, c_i16_010_q, element_extension13_q, element_extension11_q, in_i_data_5_tpl, c_i16_010_q, element_extension8_q, element_extension6_q, in_i_data_2_tpl, in_i_data_1_tpl, c_i56_05_q, element_extension3_q};

    // i_llvm_fpga_sfc_exit_s_c0_out_for_body36_covariances_c0_exit412_covariance0(EXTIFACE,38)
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body36_covariances_c0_exit412_covariance0_i_data = dsdk_ip_adapt_bitjoin1_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body36_covariances_c0_exit412_covariance0_i_stall = in_i_stall;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body36_covariances_c0_exit412_covariance0_i_valid = in_i_valid;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body36_covariances_c0_exit412_covariance0_i_stall_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body36_covariances_c0_exit412_covariance0_i_stall[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body36_covariances_c0_exit412_covariance0_i_valid_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body36_covariances_c0_exit412_covariance0_i_valid[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body36_covariances_c0_exit412_covariance0_o_almost_full[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body36_covariances_c0_exit412_covariance0_o_almost_full_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body36_covariances_c0_exit412_covariance0_o_stall[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body36_covariances_c0_exit412_covariance0_o_stall_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body36_covariances_c0_exit412_covariance0_o_valid[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body36_covariances_c0_exit412_covariance0_o_valid_bitsignaltemp;
    hld_fifo #(
        .DEPTH(32),
        .STYLE("ms"),
        .ASYNC_RESET(0),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .SYNCHRONIZE_RESET(0),
        .WIDTH(640)
    ) thei_llvm_fpga_sfc_exit_s_c0_out_for_body36_covariances_c0_exit412_covariance0 (
        .i_data(dsdk_ip_adapt_bitjoin1_q),
        .i_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_body36_covariances_c0_exit412_covariance0_i_stall_bitsignaltemp),
        .i_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_body36_covariances_c0_exit412_covariance0_i_valid_bitsignaltemp),
        .o_almost_full(i_llvm_fpga_sfc_exit_s_c0_out_for_body36_covariances_c0_exit412_covariance0_o_almost_full_bitsignaltemp),
        .o_data(i_llvm_fpga_sfc_exit_s_c0_out_for_body36_covariances_c0_exit412_covariance0_o_data),
        .o_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_body36_covariances_c0_exit412_covariance0_o_stall_bitsignaltemp),
        .o_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_body36_covariances_c0_exit412_covariance0_o_valid_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out(GPOUT,70)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_body36_covariances_c0_exit412_covariance0_o_stall;

    // ip_dsdk_adapt_bitselect67(BITSELECT,58)
    assign ip_dsdk_adapt_bitselect67_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body36_covariances_c0_exit412_covariance0_o_data[639:608];

    // ip_dsdk_adapt_bitselect65(BITSELECT,57)
    assign ip_dsdk_adapt_bitselect65_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body36_covariances_c0_exit412_covariance0_o_data[607:576];

    // ip_dsdk_adapt_bitselect63(BITSELECT,56)
    assign ip_dsdk_adapt_bitselect63_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body36_covariances_c0_exit412_covariance0_o_data[575:544];

    // ip_dsdk_adapt_bitselect61(BITSELECT,55)
    assign ip_dsdk_adapt_bitselect61_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body36_covariances_c0_exit412_covariance0_o_data[512:512];

    // adapt_scalar_trunc62(ROUND,11)
    assign adapt_scalar_trunc62_in = ip_dsdk_adapt_bitselect61_b;
    assign adapt_scalar_trunc62_q = adapt_scalar_trunc62_in[0:0];

    // ip_dsdk_adapt_bitselect59(BITSELECT,54)
    assign ip_dsdk_adapt_bitselect59_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body36_covariances_c0_exit412_covariance0_o_data[480:448];

    // adapt_scalar_trunc60(ROUND,10)
    assign adapt_scalar_trunc60_in = ip_dsdk_adapt_bitselect59_b;
    assign adapt_scalar_trunc60_q = adapt_scalar_trunc60_in[32:0];

    // ip_dsdk_adapt_bitselect57(BITSELECT,53)
    assign ip_dsdk_adapt_bitselect57_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body36_covariances_c0_exit412_covariance0_o_data[447:416];

    // ip_dsdk_adapt_bitselect55(BITSELECT,52)
    assign ip_dsdk_adapt_bitselect55_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body36_covariances_c0_exit412_covariance0_o_data[415:384];

    // ip_dsdk_adapt_bitselect53(BITSELECT,51)
    assign ip_dsdk_adapt_bitselect53_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body36_covariances_c0_exit412_covariance0_o_data[368:368];

    // adapt_scalar_trunc54(ROUND,9)
    assign adapt_scalar_trunc54_in = ip_dsdk_adapt_bitselect53_b;
    assign adapt_scalar_trunc54_q = adapt_scalar_trunc54_in[0:0];

    // ip_dsdk_adapt_bitselect51(BITSELECT,50)
    assign ip_dsdk_adapt_bitselect51_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body36_covariances_c0_exit412_covariance0_o_data[360:360];

    // adapt_scalar_trunc52(ROUND,8)
    assign adapt_scalar_trunc52_in = ip_dsdk_adapt_bitselect51_b;
    assign adapt_scalar_trunc52_q = adapt_scalar_trunc52_in[0:0];

    // ip_dsdk_adapt_bitselect49(BITSELECT,49)
    assign ip_dsdk_adapt_bitselect49_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body36_covariances_c0_exit412_covariance0_o_data[352:352];

    // adapt_scalar_trunc50(ROUND,7)
    assign adapt_scalar_trunc50_in = ip_dsdk_adapt_bitselect49_b;
    assign adapt_scalar_trunc50_q = adapt_scalar_trunc50_in[0:0];

    // ip_dsdk_adapt_bitselect47(BITSELECT,48)
    assign ip_dsdk_adapt_bitselect47_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body36_covariances_c0_exit412_covariance0_o_data[351:320];

    // ip_dsdk_adapt_bitselect45(BITSELECT,47)
    assign ip_dsdk_adapt_bitselect45_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body36_covariances_c0_exit412_covariance0_o_data[319:288];

    // ip_dsdk_adapt_bitselect43(BITSELECT,46)
    assign ip_dsdk_adapt_bitselect43_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body36_covariances_c0_exit412_covariance0_o_data[264:264];

    // adapt_scalar_trunc44(ROUND,6)
    assign adapt_scalar_trunc44_in = ip_dsdk_adapt_bitselect43_b;
    assign adapt_scalar_trunc44_q = adapt_scalar_trunc44_in[0:0];

    // ip_dsdk_adapt_bitselect41(BITSELECT,45)
    assign ip_dsdk_adapt_bitselect41_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body36_covariances_c0_exit412_covariance0_o_data[256:256];

    // adapt_scalar_trunc42(ROUND,5)
    assign adapt_scalar_trunc42_in = ip_dsdk_adapt_bitselect41_b;
    assign adapt_scalar_trunc42_q = adapt_scalar_trunc42_in[0:0];

    // ip_dsdk_adapt_bitselect39(BITSELECT,44)
    assign ip_dsdk_adapt_bitselect39_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body36_covariances_c0_exit412_covariance0_o_data[255:224];

    // ip_dsdk_adapt_bitselect37(BITSELECT,43)
    assign ip_dsdk_adapt_bitselect37_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body36_covariances_c0_exit412_covariance0_o_data[200:200];

    // adapt_scalar_trunc38(ROUND,4)
    assign adapt_scalar_trunc38_in = ip_dsdk_adapt_bitselect37_b;
    assign adapt_scalar_trunc38_q = adapt_scalar_trunc38_in[0:0];

    // ip_dsdk_adapt_bitselect35(BITSELECT,42)
    assign ip_dsdk_adapt_bitselect35_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body36_covariances_c0_exit412_covariance0_o_data[192:192];

    // adapt_scalar_trunc36(ROUND,3)
    assign adapt_scalar_trunc36_in = ip_dsdk_adapt_bitselect35_b;
    assign adapt_scalar_trunc36_q = adapt_scalar_trunc36_in[0:0];

    // ip_dsdk_adapt_bitselect33(BITSELECT,41)
    assign ip_dsdk_adapt_bitselect33_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body36_covariances_c0_exit412_covariance0_o_data[191:128];

    // ip_dsdk_adapt_bitselect31(BITSELECT,40)
    assign ip_dsdk_adapt_bitselect31_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body36_covariances_c0_exit412_covariance0_o_data[127:64];

    // ip_dsdk_adapt_bitselect29(BITSELECT,39)
    assign ip_dsdk_adapt_bitselect29_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body36_covariances_c0_exit412_covariance0_o_data[0:0];

    // adapt_scalar_trunc30(ROUND,2)
    assign adapt_scalar_trunc30_in = ip_dsdk_adapt_bitselect29_b;
    assign adapt_scalar_trunc30_q = adapt_scalar_trunc30_in[0:0];

    // dupName_0_sync_out_aunroll_x(GPOUT,72)@20000003
    assign out_o_almost_full = i_llvm_fpga_sfc_exit_s_c0_out_for_body36_covariances_c0_exit412_covariance0_o_almost_full;
    assign out_o_data_0_tpl = adapt_scalar_trunc30_q;
    assign out_o_data_1_tpl = ip_dsdk_adapt_bitselect31_b;
    assign out_o_data_2_tpl = ip_dsdk_adapt_bitselect33_b;
    assign out_o_data_3_tpl = adapt_scalar_trunc36_q;
    assign out_o_data_4_tpl = adapt_scalar_trunc38_q;
    assign out_o_data_5_tpl = ip_dsdk_adapt_bitselect39_b;
    assign out_o_data_6_tpl = adapt_scalar_trunc42_q;
    assign out_o_data_7_tpl = adapt_scalar_trunc44_q;
    assign out_o_data_8_tpl = ip_dsdk_adapt_bitselect45_b;
    assign out_o_data_9_tpl = ip_dsdk_adapt_bitselect47_b;
    assign out_o_data_10_tpl = adapt_scalar_trunc50_q;
    assign out_o_data_11_tpl = adapt_scalar_trunc52_q;
    assign out_o_data_12_tpl = adapt_scalar_trunc54_q;
    assign out_o_data_13_tpl = ip_dsdk_adapt_bitselect55_b;
    assign out_o_data_14_tpl = ip_dsdk_adapt_bitselect57_b;
    assign out_o_data_15_tpl = adapt_scalar_trunc60_q;
    assign out_o_data_16_tpl = adapt_scalar_trunc62_q;
    assign out_o_data_17_tpl = ip_dsdk_adapt_bitselect63_b;
    assign out_o_data_18_tpl = ip_dsdk_adapt_bitselect65_b;
    assign out_o_data_19_tpl = ip_dsdk_adapt_bitselect67_b;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_body36_covariances_c0_exit412_covariance0_o_valid;

endmodule
