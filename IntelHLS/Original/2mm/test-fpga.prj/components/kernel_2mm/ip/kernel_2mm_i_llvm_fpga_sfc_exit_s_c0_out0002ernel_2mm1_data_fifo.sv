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

// SystemVerilog created from i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit106_kernel_2mm1_data_fifo
// Created for function/kernel kernel_2mm
// SystemVerilog created on Thu Apr 27 14:25:48 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_2mm_i_llvm_fpga_sfc_exit_s_c0_out0002ernel_2mm1_data_fifo (
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [0:0] in_almost_empty_in,
    input wire [0:0] in_empty_in,
    input wire [0:0] in_i_data_0_tpl,
    input wire [31:0] in_i_data_1_tpl,
    input wire [63:0] in_i_data_2_tpl,
    input wire [63:0] in_i_data_3_tpl,
    input wire [63:0] in_i_data_4_tpl,
    input wire [31:0] in_i_data_5_tpl,
    input wire [0:0] in_i_data_6_tpl,
    input wire [0:0] in_i_data_7_tpl,
    input wire [0:0] in_i_data_8_tpl,
    input wire [0:0] in_i_data_9_tpl,
    input wire [31:0] in_i_data_10_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_o_almost_empty,
    output wire [0:0] out_o_data_0_tpl,
    output wire [31:0] out_o_data_1_tpl,
    output wire [63:0] out_o_data_2_tpl,
    output wire [63:0] out_o_data_3_tpl,
    output wire [63:0] out_o_data_4_tpl,
    output wire [31:0] out_o_data_5_tpl,
    output wire [0:0] out_o_data_6_tpl,
    output wire [0:0] out_o_data_7_tpl,
    output wire [0:0] out_o_data_8_tpl,
    output wire [0:0] out_o_data_9_tpl,
    output wire [31:0] out_o_data_10_tpl,
    output wire [0:0] out_o_empty,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc17_in;
    wire [0:0] adapt_scalar_trunc17_q;
    wire [0:0] adapt_scalar_trunc29_in;
    wire [0:0] adapt_scalar_trunc29_q;
    wire [0:0] adapt_scalar_trunc31_in;
    wire [0:0] adapt_scalar_trunc31_q;
    wire [0:0] adapt_scalar_trunc33_in;
    wire [0:0] adapt_scalar_trunc33_q;
    wire [0:0] adapt_scalar_trunc35_in;
    wire [0:0] adapt_scalar_trunc35_q;
    wire [23:0] c_i24_05_q;
    wire [31:0] c_i32_014_q;
    wire [6:0] c_i7_011_q;
    wire [383:0] dsdk_ip_adapt_bitjoin1_q;
    wire [7:0] element_extension10_q;
    wire [7:0] element_extension12_q;
    wire [7:0] element_extension3_q;
    wire [7:0] element_extension6_q;
    wire [7:0] element_extension8_q;
    wire [383:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit106_kernel_2mm0_i_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit106_kernel_2mm0_i_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit106_kernel_2mm0_i_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit106_kernel_2mm0_i_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit106_kernel_2mm0_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit106_kernel_2mm0_o_almost_empty;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit106_kernel_2mm0_o_almost_empty_bitsignaltemp;
    wire [383:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit106_kernel_2mm0_o_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit106_kernel_2mm0_o_empty;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit106_kernel_2mm0_o_empty_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit106_kernel_2mm0_o_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit106_kernel_2mm0_o_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit106_kernel_2mm0_o_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit106_kernel_2mm0_o_valid_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect16_b;
    wire [31:0] ip_dsdk_adapt_bitselect18_b;
    wire [63:0] ip_dsdk_adapt_bitselect20_b;
    wire [63:0] ip_dsdk_adapt_bitselect22_b;
    wire [63:0] ip_dsdk_adapt_bitselect24_b;
    wire [31:0] ip_dsdk_adapt_bitselect26_b;
    wire [0:0] ip_dsdk_adapt_bitselect28_b;
    wire [0:0] ip_dsdk_adapt_bitselect30_b;
    wire [0:0] ip_dsdk_adapt_bitselect32_b;
    wire [0:0] ip_dsdk_adapt_bitselect34_b;
    wire [31:0] ip_dsdk_adapt_bitselect36_b;


    // c_i32_014(CONSTANT,8)
    assign c_i32_014_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i7_011(CONSTANT,9)
    assign c_i7_011_q = $unsigned(7'b0000000);

    // element_extension12(BITJOIN,16)
    assign element_extension12_q = {c_i7_011_q, in_i_data_9_tpl};

    // element_extension10(BITJOIN,15)
    assign element_extension10_q = {c_i7_011_q, in_i_data_8_tpl};

    // element_extension8(BITJOIN,19)
    assign element_extension8_q = {c_i7_011_q, in_i_data_7_tpl};

    // element_extension6(BITJOIN,18)
    assign element_extension6_q = {c_i7_011_q, in_i_data_6_tpl};

    // c_i24_05(CONSTANT,7)
    assign c_i24_05_q = $unsigned(24'b000000000000000000000000);

    // element_extension3(BITJOIN,17)
    assign element_extension3_q = {c_i7_011_q, in_i_data_0_tpl};

    // dsdk_ip_adapt_bitjoin1(BITJOIN,14)
    assign dsdk_ip_adapt_bitjoin1_q = {c_i32_014_q, in_i_data_10_tpl, element_extension12_q, element_extension10_q, element_extension8_q, element_extension6_q, in_i_data_5_tpl, in_i_data_4_tpl, in_i_data_3_tpl, in_i_data_2_tpl, in_i_data_1_tpl, c_i24_05_q, element_extension3_q};

    // i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit106_kernel_2mm0(EXTIFACE,20)
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit106_kernel_2mm0_i_data = dsdk_ip_adapt_bitjoin1_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit106_kernel_2mm0_i_stall = in_i_stall;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit106_kernel_2mm0_i_valid = in_i_valid;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit106_kernel_2mm0_i_stall_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit106_kernel_2mm0_i_stall[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit106_kernel_2mm0_i_valid_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit106_kernel_2mm0_i_valid[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit106_kernel_2mm0_o_almost_empty[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit106_kernel_2mm0_o_almost_empty_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit106_kernel_2mm0_o_empty[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit106_kernel_2mm0_o_empty_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit106_kernel_2mm0_o_stall[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit106_kernel_2mm0_o_stall_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit106_kernel_2mm0_o_valid[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit106_kernel_2mm0_o_valid_bitsignaltemp;
    hld_fifo #(
        .ALMOST_EMPTY_CUTOFF(7),
        .DEPTH(512),
        .STYLE("ms"),
        .ASYNC_RESET(0),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .STALL_IN_EARLINESS(3),
        .SYNCHRONIZE_RESET(0),
        .USE_STALL_LATENCY_DOWNSTREAM(1),
        .USE_STALL_LATENCY_UPSTREAM(1),
        .WIDTH(384)
    ) thei_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit106_kernel_2mm0 (
        .i_data(dsdk_ip_adapt_bitjoin1_q),
        .i_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit106_kernel_2mm0_i_stall_bitsignaltemp),
        .i_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit106_kernel_2mm0_i_valid_bitsignaltemp),
        .o_almost_empty(i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit106_kernel_2mm0_o_almost_empty_bitsignaltemp),
        .o_data(i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit106_kernel_2mm0_o_data),
        .o_empty(i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit106_kernel_2mm0_o_empty_bitsignaltemp),
        .o_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit106_kernel_2mm0_o_stall_bitsignaltemp),
        .o_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit106_kernel_2mm0_o_valid_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out(GPOUT,39)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit106_kernel_2mm0_o_stall;

    // ip_dsdk_adapt_bitselect36(BITSELECT,31)
    assign ip_dsdk_adapt_bitselect36_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit106_kernel_2mm0_o_data[351:320];

    // ip_dsdk_adapt_bitselect34(BITSELECT,30)
    assign ip_dsdk_adapt_bitselect34_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit106_kernel_2mm0_o_data[312:312];

    // adapt_scalar_trunc35(ROUND,6)
    assign adapt_scalar_trunc35_in = ip_dsdk_adapt_bitselect34_b;
    assign adapt_scalar_trunc35_q = adapt_scalar_trunc35_in[0:0];

    // ip_dsdk_adapt_bitselect32(BITSELECT,29)
    assign ip_dsdk_adapt_bitselect32_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit106_kernel_2mm0_o_data[304:304];

    // adapt_scalar_trunc33(ROUND,5)
    assign adapt_scalar_trunc33_in = ip_dsdk_adapt_bitselect32_b;
    assign adapt_scalar_trunc33_q = adapt_scalar_trunc33_in[0:0];

    // ip_dsdk_adapt_bitselect30(BITSELECT,28)
    assign ip_dsdk_adapt_bitselect30_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit106_kernel_2mm0_o_data[296:296];

    // adapt_scalar_trunc31(ROUND,4)
    assign adapt_scalar_trunc31_in = ip_dsdk_adapt_bitselect30_b;
    assign adapt_scalar_trunc31_q = adapt_scalar_trunc31_in[0:0];

    // ip_dsdk_adapt_bitselect28(BITSELECT,27)
    assign ip_dsdk_adapt_bitselect28_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit106_kernel_2mm0_o_data[288:288];

    // adapt_scalar_trunc29(ROUND,3)
    assign adapt_scalar_trunc29_in = ip_dsdk_adapt_bitselect28_b;
    assign adapt_scalar_trunc29_q = adapt_scalar_trunc29_in[0:0];

    // ip_dsdk_adapt_bitselect26(BITSELECT,26)
    assign ip_dsdk_adapt_bitselect26_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit106_kernel_2mm0_o_data[287:256];

    // ip_dsdk_adapt_bitselect24(BITSELECT,25)
    assign ip_dsdk_adapt_bitselect24_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit106_kernel_2mm0_o_data[255:192];

    // ip_dsdk_adapt_bitselect22(BITSELECT,24)
    assign ip_dsdk_adapt_bitselect22_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit106_kernel_2mm0_o_data[191:128];

    // ip_dsdk_adapt_bitselect20(BITSELECT,23)
    assign ip_dsdk_adapt_bitselect20_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit106_kernel_2mm0_o_data[127:64];

    // ip_dsdk_adapt_bitselect18(BITSELECT,22)
    assign ip_dsdk_adapt_bitselect18_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit106_kernel_2mm0_o_data[63:32];

    // ip_dsdk_adapt_bitselect16(BITSELECT,21)
    assign ip_dsdk_adapt_bitselect16_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit106_kernel_2mm0_o_data[0:0];

    // adapt_scalar_trunc17(ROUND,2)
    assign adapt_scalar_trunc17_in = ip_dsdk_adapt_bitselect16_b;
    assign adapt_scalar_trunc17_q = adapt_scalar_trunc17_in[0:0];

    // dupName_0_sync_out_aunroll_x(GPOUT,41)@20000030
    assign out_o_almost_empty = i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit106_kernel_2mm0_o_almost_empty;
    assign out_o_data_0_tpl = adapt_scalar_trunc17_q;
    assign out_o_data_1_tpl = ip_dsdk_adapt_bitselect18_b;
    assign out_o_data_2_tpl = ip_dsdk_adapt_bitselect20_b;
    assign out_o_data_3_tpl = ip_dsdk_adapt_bitselect22_b;
    assign out_o_data_4_tpl = ip_dsdk_adapt_bitselect24_b;
    assign out_o_data_5_tpl = ip_dsdk_adapt_bitselect26_b;
    assign out_o_data_6_tpl = adapt_scalar_trunc29_q;
    assign out_o_data_7_tpl = adapt_scalar_trunc31_q;
    assign out_o_data_8_tpl = adapt_scalar_trunc33_q;
    assign out_o_data_9_tpl = adapt_scalar_trunc35_q;
    assign out_o_data_10_tpl = ip_dsdk_adapt_bitselect36_b;
    assign out_o_empty = i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit106_kernel_2mm0_o_empty;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_body9_kernel_2mms_c0_exit106_kernel_2mm0_o_valid;

endmodule
