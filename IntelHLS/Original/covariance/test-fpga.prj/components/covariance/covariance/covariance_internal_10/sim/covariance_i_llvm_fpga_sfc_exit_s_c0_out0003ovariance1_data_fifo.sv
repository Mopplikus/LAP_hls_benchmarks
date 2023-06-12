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

// SystemVerilog created from i_llvm_fpga_sfc_exit_s_c0_out_for_body6_covariances_c0_exit225_covariance1_data_fifo
// Created for function/kernel covariance
// SystemVerilog created on Thu Apr 27 14:28:37 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_i_llvm_fpga_sfc_exit_s_c0_out0003ovariance1_data_fifo (
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [0:0] in_i_data_0_tpl,
    input wire [63:0] in_i_data_1_tpl,
    input wire [0:0] in_i_data_2_tpl,
    input wire [31:0] in_i_data_3_tpl,
    input wire [0:0] in_i_data_4_tpl,
    input wire [0:0] in_i_data_5_tpl,
    input wire [31:0] in_i_data_6_tpl,
    input wire [0:0] in_i_data_7_tpl,
    input wire [0:0] in_i_data_8_tpl,
    input wire [0:0] in_i_data_9_tpl,
    input wire [0:0] in_i_data_10_tpl,
    input wire [31:0] in_i_data_11_tpl,
    input wire [0:0] in_i_data_12_tpl,
    input wire [0:0] in_i_data_13_tpl,
    input wire [0:0] in_i_data_14_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_o_almost_full,
    output wire [0:0] out_o_data_0_tpl,
    output wire [63:0] out_o_data_1_tpl,
    output wire [0:0] out_o_data_2_tpl,
    output wire [31:0] out_o_data_3_tpl,
    output wire [0:0] out_o_data_4_tpl,
    output wire [0:0] out_o_data_5_tpl,
    output wire [31:0] out_o_data_6_tpl,
    output wire [0:0] out_o_data_7_tpl,
    output wire [0:0] out_o_data_8_tpl,
    output wire [0:0] out_o_data_9_tpl,
    output wire [0:0] out_o_data_10_tpl,
    output wire [31:0] out_o_data_11_tpl,
    output wire [0:0] out_o_data_12_tpl,
    output wire [0:0] out_o_data_13_tpl,
    output wire [0:0] out_o_data_14_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc31_in;
    wire [0:0] adapt_scalar_trunc31_q;
    wire [0:0] adapt_scalar_trunc35_in;
    wire [0:0] adapt_scalar_trunc35_q;
    wire [0:0] adapt_scalar_trunc39_in;
    wire [0:0] adapt_scalar_trunc39_q;
    wire [0:0] adapt_scalar_trunc41_in;
    wire [0:0] adapt_scalar_trunc41_q;
    wire [0:0] adapt_scalar_trunc45_in;
    wire [0:0] adapt_scalar_trunc45_q;
    wire [0:0] adapt_scalar_trunc47_in;
    wire [0:0] adapt_scalar_trunc47_q;
    wire [0:0] adapt_scalar_trunc49_in;
    wire [0:0] adapt_scalar_trunc49_q;
    wire [0:0] adapt_scalar_trunc51_in;
    wire [0:0] adapt_scalar_trunc51_q;
    wire [0:0] adapt_scalar_trunc55_in;
    wire [0:0] adapt_scalar_trunc55_q;
    wire [0:0] adapt_scalar_trunc57_in;
    wire [0:0] adapt_scalar_trunc57_q;
    wire [0:0] adapt_scalar_trunc59_in;
    wire [0:0] adapt_scalar_trunc59_q;
    wire [15:0] c_i16_013_q;
    wire [23:0] c_i24_08_q;
    wire [39:0] c_i40_028_q;
    wire [55:0] c_i56_05_q;
    wire [6:0] c_i7_010_q;
    wire [383:0] dsdk_ip_adapt_bitjoin1_q;
    wire [7:0] element_extension11_q;
    wire [7:0] element_extension14_q;
    wire [7:0] element_extension16_q;
    wire [7:0] element_extension18_q;
    wire [7:0] element_extension20_q;
    wire [7:0] element_extension22_q;
    wire [7:0] element_extension24_q;
    wire [7:0] element_extension26_q;
    wire [7:0] element_extension3_q;
    wire [7:0] element_extension6_q;
    wire [7:0] element_extension9_q;
    wire [383:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body6_covariances_c0_exit225_covariance0_i_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body6_covariances_c0_exit225_covariance0_i_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body6_covariances_c0_exit225_covariance0_i_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body6_covariances_c0_exit225_covariance0_i_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body6_covariances_c0_exit225_covariance0_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body6_covariances_c0_exit225_covariance0_o_almost_full;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body6_covariances_c0_exit225_covariance0_o_almost_full_bitsignaltemp;
    wire [383:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body6_covariances_c0_exit225_covariance0_o_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body6_covariances_c0_exit225_covariance0_o_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body6_covariances_c0_exit225_covariance0_o_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body6_covariances_c0_exit225_covariance0_o_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body6_covariances_c0_exit225_covariance0_o_valid_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect30_b;
    wire [63:0] ip_dsdk_adapt_bitselect32_b;
    wire [0:0] ip_dsdk_adapt_bitselect34_b;
    wire [31:0] ip_dsdk_adapt_bitselect36_b;
    wire [0:0] ip_dsdk_adapt_bitselect38_b;
    wire [0:0] ip_dsdk_adapt_bitselect40_b;
    wire [31:0] ip_dsdk_adapt_bitselect42_b;
    wire [0:0] ip_dsdk_adapt_bitselect44_b;
    wire [0:0] ip_dsdk_adapt_bitselect46_b;
    wire [0:0] ip_dsdk_adapt_bitselect48_b;
    wire [0:0] ip_dsdk_adapt_bitselect50_b;
    wire [31:0] ip_dsdk_adapt_bitselect52_b;
    wire [0:0] ip_dsdk_adapt_bitselect54_b;
    wire [0:0] ip_dsdk_adapt_bitselect56_b;
    wire [0:0] ip_dsdk_adapt_bitselect58_b;


    // c_i40_028(CONSTANT,15)
    assign c_i40_028_q = $unsigned(40'b0000000000000000000000000000000000000000);

    // c_i7_010(CONSTANT,17)
    assign c_i7_010_q = $unsigned(7'b0000000);

    // element_extension26(BITJOIN,36)
    assign element_extension26_q = {c_i7_010_q, in_i_data_14_tpl};

    // element_extension24(BITJOIN,35)
    assign element_extension24_q = {c_i7_010_q, in_i_data_13_tpl};

    // element_extension22(BITJOIN,34)
    assign element_extension22_q = {c_i7_010_q, in_i_data_12_tpl};

    // element_extension20(BITJOIN,33)
    assign element_extension20_q = {c_i7_010_q, in_i_data_10_tpl};

    // element_extension18(BITJOIN,32)
    assign element_extension18_q = {c_i7_010_q, in_i_data_9_tpl};

    // element_extension16(BITJOIN,31)
    assign element_extension16_q = {c_i7_010_q, in_i_data_8_tpl};

    // element_extension14(BITJOIN,30)
    assign element_extension14_q = {c_i7_010_q, in_i_data_7_tpl};

    // c_i16_013(CONSTANT,13)
    assign c_i16_013_q = $unsigned(16'b0000000000000000);

    // element_extension11(BITJOIN,29)
    assign element_extension11_q = {c_i7_010_q, in_i_data_5_tpl};

    // element_extension9(BITJOIN,39)
    assign element_extension9_q = {c_i7_010_q, in_i_data_4_tpl};

    // c_i24_08(CONSTANT,14)
    assign c_i24_08_q = $unsigned(24'b000000000000000000000000);

    // element_extension6(BITJOIN,38)
    assign element_extension6_q = {c_i7_010_q, in_i_data_2_tpl};

    // c_i56_05(CONSTANT,16)
    assign c_i56_05_q = $unsigned(56'b00000000000000000000000000000000000000000000000000000000);

    // element_extension3(BITJOIN,37)
    assign element_extension3_q = {c_i7_010_q, in_i_data_0_tpl};

    // dsdk_ip_adapt_bitjoin1(BITJOIN,28)
    assign dsdk_ip_adapt_bitjoin1_q = {c_i40_028_q, element_extension26_q, element_extension24_q, element_extension22_q, in_i_data_11_tpl, element_extension20_q, element_extension18_q, element_extension16_q, element_extension14_q, in_i_data_6_tpl, c_i16_013_q, element_extension11_q, element_extension9_q, in_i_data_3_tpl, c_i24_08_q, element_extension6_q, in_i_data_1_tpl, c_i56_05_q, element_extension3_q};

    // i_llvm_fpga_sfc_exit_s_c0_out_for_body6_covariances_c0_exit225_covariance0(EXTIFACE,40)
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body6_covariances_c0_exit225_covariance0_i_data = dsdk_ip_adapt_bitjoin1_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body6_covariances_c0_exit225_covariance0_i_stall = in_i_stall;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body6_covariances_c0_exit225_covariance0_i_valid = in_i_valid;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body6_covariances_c0_exit225_covariance0_i_stall_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body6_covariances_c0_exit225_covariance0_i_stall[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body6_covariances_c0_exit225_covariance0_i_valid_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body6_covariances_c0_exit225_covariance0_i_valid[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body6_covariances_c0_exit225_covariance0_o_almost_full[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body6_covariances_c0_exit225_covariance0_o_almost_full_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body6_covariances_c0_exit225_covariance0_o_stall[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body6_covariances_c0_exit225_covariance0_o_stall_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body6_covariances_c0_exit225_covariance0_o_valid[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body6_covariances_c0_exit225_covariance0_o_valid_bitsignaltemp;
    hld_fifo #(
        .DEPTH(32),
        .STYLE("ms"),
        .ASYNC_RESET(0),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .SYNCHRONIZE_RESET(0),
        .WIDTH(384)
    ) thei_llvm_fpga_sfc_exit_s_c0_out_for_body6_covariances_c0_exit225_covariance0 (
        .i_data(dsdk_ip_adapt_bitjoin1_q),
        .i_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_body6_covariances_c0_exit225_covariance0_i_stall_bitsignaltemp),
        .i_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_body6_covariances_c0_exit225_covariance0_i_valid_bitsignaltemp),
        .o_almost_full(i_llvm_fpga_sfc_exit_s_c0_out_for_body6_covariances_c0_exit225_covariance0_o_almost_full_bitsignaltemp),
        .o_data(i_llvm_fpga_sfc_exit_s_c0_out_for_body6_covariances_c0_exit225_covariance0_o_data),
        .o_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_body6_covariances_c0_exit225_covariance0_o_stall_bitsignaltemp),
        .o_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_body6_covariances_c0_exit225_covariance0_o_valid_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out(GPOUT,61)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_body6_covariances_c0_exit225_covariance0_o_stall;

    // ip_dsdk_adapt_bitselect58(BITSELECT,55)
    assign ip_dsdk_adapt_bitselect58_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body6_covariances_c0_exit225_covariance0_o_data[336:336];

    // adapt_scalar_trunc59(ROUND,12)
    assign adapt_scalar_trunc59_in = ip_dsdk_adapt_bitselect58_b;
    assign adapt_scalar_trunc59_q = adapt_scalar_trunc59_in[0:0];

    // ip_dsdk_adapt_bitselect56(BITSELECT,54)
    assign ip_dsdk_adapt_bitselect56_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body6_covariances_c0_exit225_covariance0_o_data[328:328];

    // adapt_scalar_trunc57(ROUND,11)
    assign adapt_scalar_trunc57_in = ip_dsdk_adapt_bitselect56_b;
    assign adapt_scalar_trunc57_q = adapt_scalar_trunc57_in[0:0];

    // ip_dsdk_adapt_bitselect54(BITSELECT,53)
    assign ip_dsdk_adapt_bitselect54_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body6_covariances_c0_exit225_covariance0_o_data[320:320];

    // adapt_scalar_trunc55(ROUND,10)
    assign adapt_scalar_trunc55_in = ip_dsdk_adapt_bitselect54_b;
    assign adapt_scalar_trunc55_q = adapt_scalar_trunc55_in[0:0];

    // ip_dsdk_adapt_bitselect52(BITSELECT,52)
    assign ip_dsdk_adapt_bitselect52_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body6_covariances_c0_exit225_covariance0_o_data[319:288];

    // ip_dsdk_adapt_bitselect50(BITSELECT,51)
    assign ip_dsdk_adapt_bitselect50_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body6_covariances_c0_exit225_covariance0_o_data[280:280];

    // adapt_scalar_trunc51(ROUND,9)
    assign adapt_scalar_trunc51_in = ip_dsdk_adapt_bitselect50_b;
    assign adapt_scalar_trunc51_q = adapt_scalar_trunc51_in[0:0];

    // ip_dsdk_adapt_bitselect48(BITSELECT,50)
    assign ip_dsdk_adapt_bitselect48_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body6_covariances_c0_exit225_covariance0_o_data[272:272];

    // adapt_scalar_trunc49(ROUND,8)
    assign adapt_scalar_trunc49_in = ip_dsdk_adapt_bitselect48_b;
    assign adapt_scalar_trunc49_q = adapt_scalar_trunc49_in[0:0];

    // ip_dsdk_adapt_bitselect46(BITSELECT,49)
    assign ip_dsdk_adapt_bitselect46_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body6_covariances_c0_exit225_covariance0_o_data[264:264];

    // adapt_scalar_trunc47(ROUND,7)
    assign adapt_scalar_trunc47_in = ip_dsdk_adapt_bitselect46_b;
    assign adapt_scalar_trunc47_q = adapt_scalar_trunc47_in[0:0];

    // ip_dsdk_adapt_bitselect44(BITSELECT,48)
    assign ip_dsdk_adapt_bitselect44_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body6_covariances_c0_exit225_covariance0_o_data[256:256];

    // adapt_scalar_trunc45(ROUND,6)
    assign adapt_scalar_trunc45_in = ip_dsdk_adapt_bitselect44_b;
    assign adapt_scalar_trunc45_q = adapt_scalar_trunc45_in[0:0];

    // ip_dsdk_adapt_bitselect42(BITSELECT,47)
    assign ip_dsdk_adapt_bitselect42_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body6_covariances_c0_exit225_covariance0_o_data[255:224];

    // ip_dsdk_adapt_bitselect40(BITSELECT,46)
    assign ip_dsdk_adapt_bitselect40_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body6_covariances_c0_exit225_covariance0_o_data[200:200];

    // adapt_scalar_trunc41(ROUND,5)
    assign adapt_scalar_trunc41_in = ip_dsdk_adapt_bitselect40_b;
    assign adapt_scalar_trunc41_q = adapt_scalar_trunc41_in[0:0];

    // ip_dsdk_adapt_bitselect38(BITSELECT,45)
    assign ip_dsdk_adapt_bitselect38_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body6_covariances_c0_exit225_covariance0_o_data[192:192];

    // adapt_scalar_trunc39(ROUND,4)
    assign adapt_scalar_trunc39_in = ip_dsdk_adapt_bitselect38_b;
    assign adapt_scalar_trunc39_q = adapt_scalar_trunc39_in[0:0];

    // ip_dsdk_adapt_bitselect36(BITSELECT,44)
    assign ip_dsdk_adapt_bitselect36_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body6_covariances_c0_exit225_covariance0_o_data[191:160];

    // ip_dsdk_adapt_bitselect34(BITSELECT,43)
    assign ip_dsdk_adapt_bitselect34_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body6_covariances_c0_exit225_covariance0_o_data[128:128];

    // adapt_scalar_trunc35(ROUND,3)
    assign adapt_scalar_trunc35_in = ip_dsdk_adapt_bitselect34_b;
    assign adapt_scalar_trunc35_q = adapt_scalar_trunc35_in[0:0];

    // ip_dsdk_adapt_bitselect32(BITSELECT,42)
    assign ip_dsdk_adapt_bitselect32_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body6_covariances_c0_exit225_covariance0_o_data[127:64];

    // ip_dsdk_adapt_bitselect30(BITSELECT,41)
    assign ip_dsdk_adapt_bitselect30_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body6_covariances_c0_exit225_covariance0_o_data[0:0];

    // adapt_scalar_trunc31(ROUND,2)
    assign adapt_scalar_trunc31_in = ip_dsdk_adapt_bitselect30_b;
    assign adapt_scalar_trunc31_q = adapt_scalar_trunc31_in[0:0];

    // dupName_0_sync_out_aunroll_x(GPOUT,63)@20000003
    assign out_o_almost_full = i_llvm_fpga_sfc_exit_s_c0_out_for_body6_covariances_c0_exit225_covariance0_o_almost_full;
    assign out_o_data_0_tpl = adapt_scalar_trunc31_q;
    assign out_o_data_1_tpl = ip_dsdk_adapt_bitselect32_b;
    assign out_o_data_2_tpl = adapt_scalar_trunc35_q;
    assign out_o_data_3_tpl = ip_dsdk_adapt_bitselect36_b;
    assign out_o_data_4_tpl = adapt_scalar_trunc39_q;
    assign out_o_data_5_tpl = adapt_scalar_trunc41_q;
    assign out_o_data_6_tpl = ip_dsdk_adapt_bitselect42_b;
    assign out_o_data_7_tpl = adapt_scalar_trunc45_q;
    assign out_o_data_8_tpl = adapt_scalar_trunc47_q;
    assign out_o_data_9_tpl = adapt_scalar_trunc49_q;
    assign out_o_data_10_tpl = adapt_scalar_trunc51_q;
    assign out_o_data_11_tpl = ip_dsdk_adapt_bitselect52_b;
    assign out_o_data_12_tpl = adapt_scalar_trunc55_q;
    assign out_o_data_13_tpl = adapt_scalar_trunc57_q;
    assign out_o_data_14_tpl = adapt_scalar_trunc59_q;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_body6_covariances_c0_exit225_covariance0_o_valid;

endmodule
