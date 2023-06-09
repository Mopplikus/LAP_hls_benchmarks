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

// SystemVerilog created from i_llvm_fpga_sfc_exit_s_c0_out_for_body84_kernel_3mms_c0_exit600_kernel_3mm1_data_fifo
// Created for function/kernel kernel_3mm
// SystemVerilog created on Thu Apr 27 14:26:49 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_i_llvm_fpga_sfc_exit_s_c0_out0009ernel_3mm1_data_fifo (
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [0:0] in_almost_empty_in,
    input wire [0:0] in_empty_in,
    input wire [0:0] in_i_data_0_tpl,
    input wire [0:0] in_i_data_1_tpl,
    input wire [0:0] in_i_data_2_tpl,
    input wire [31:0] in_i_data_3_tpl,
    input wire [0:0] in_i_data_4_tpl,
    input wire [0:0] in_i_data_5_tpl,
    input wire [0:0] in_i_data_6_tpl,
    input wire [63:0] in_i_data_7_tpl,
    input wire [0:0] in_i_data_8_tpl,
    input wire [0:0] in_i_data_9_tpl,
    input wire [0:0] in_i_data_10_tpl,
    input wire [31:0] in_i_data_11_tpl,
    input wire [0:0] in_i_data_12_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_o_almost_empty,
    output wire [0:0] out_o_data_0_tpl,
    output wire [0:0] out_o_data_1_tpl,
    output wire [0:0] out_o_data_2_tpl,
    output wire [31:0] out_o_data_3_tpl,
    output wire [0:0] out_o_data_4_tpl,
    output wire [0:0] out_o_data_5_tpl,
    output wire [0:0] out_o_data_6_tpl,
    output wire [63:0] out_o_data_7_tpl,
    output wire [0:0] out_o_data_8_tpl,
    output wire [0:0] out_o_data_9_tpl,
    output wire [0:0] out_o_data_10_tpl,
    output wire [31:0] out_o_data_11_tpl,
    output wire [0:0] out_o_data_12_tpl,
    output wire [0:0] out_o_empty,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc29_in;
    wire [0:0] adapt_scalar_trunc29_q;
    wire [0:0] adapt_scalar_trunc31_in;
    wire [0:0] adapt_scalar_trunc31_q;
    wire [0:0] adapt_scalar_trunc33_in;
    wire [0:0] adapt_scalar_trunc33_q;
    wire [0:0] adapt_scalar_trunc37_in;
    wire [0:0] adapt_scalar_trunc37_q;
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
    wire [0:0] adapt_scalar_trunc53_in;
    wire [0:0] adapt_scalar_trunc53_q;
    wire [39:0] c_i40_016_q;
    wire [55:0] c_i56_026_q;
    wire [6:0] c_i7_011_q;
    wire [7:0] c_i8_023_q;
    wire [319:0] dsdk_ip_adapt_bitjoin1_q;
    wire [7:0] element_extension10_q;
    wire [7:0] element_extension12_q;
    wire [7:0] element_extension14_q;
    wire [7:0] element_extension17_q;
    wire [7:0] element_extension19_q;
    wire [7:0] element_extension21_q;
    wire [7:0] element_extension24_q;
    wire [7:0] element_extension3_q;
    wire [7:0] element_extension5_q;
    wire [7:0] element_extension7_q;
    wire [319:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body84_kernel_3mms_c0_exit600_kernel_3mm0_i_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body84_kernel_3mms_c0_exit600_kernel_3mm0_i_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body84_kernel_3mms_c0_exit600_kernel_3mm0_i_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body84_kernel_3mms_c0_exit600_kernel_3mm0_i_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body84_kernel_3mms_c0_exit600_kernel_3mm0_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body84_kernel_3mms_c0_exit600_kernel_3mm0_o_almost_empty;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body84_kernel_3mms_c0_exit600_kernel_3mm0_o_almost_empty_bitsignaltemp;
    wire [319:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body84_kernel_3mms_c0_exit600_kernel_3mm0_o_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body84_kernel_3mms_c0_exit600_kernel_3mm0_o_empty;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body84_kernel_3mms_c0_exit600_kernel_3mm0_o_empty_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body84_kernel_3mms_c0_exit600_kernel_3mm0_o_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body84_kernel_3mms_c0_exit600_kernel_3mm0_o_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body84_kernel_3mms_c0_exit600_kernel_3mm0_o_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body84_kernel_3mms_c0_exit600_kernel_3mm0_o_valid_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect28_b;
    wire [0:0] ip_dsdk_adapt_bitselect30_b;
    wire [0:0] ip_dsdk_adapt_bitselect32_b;
    wire [31:0] ip_dsdk_adapt_bitselect34_b;
    wire [0:0] ip_dsdk_adapt_bitselect36_b;
    wire [0:0] ip_dsdk_adapt_bitselect38_b;
    wire [0:0] ip_dsdk_adapt_bitselect40_b;
    wire [63:0] ip_dsdk_adapt_bitselect42_b;
    wire [0:0] ip_dsdk_adapt_bitselect44_b;
    wire [0:0] ip_dsdk_adapt_bitselect46_b;
    wire [0:0] ip_dsdk_adapt_bitselect48_b;
    wire [31:0] ip_dsdk_adapt_bitselect50_b;
    wire [0:0] ip_dsdk_adapt_bitselect52_b;


    // c_i56_026(CONSTANT,13)
    assign c_i56_026_q = $unsigned(56'b00000000000000000000000000000000000000000000000000000000);

    // c_i7_011(CONSTANT,14)
    assign c_i7_011_q = $unsigned(7'b0000000);

    // element_extension24(BITJOIN,33)
    assign element_extension24_q = {c_i7_011_q, in_i_data_12_tpl};

    // element_extension21(BITJOIN,32)
    assign element_extension21_q = {c_i7_011_q, in_i_data_10_tpl};

    // element_extension19(BITJOIN,31)
    assign element_extension19_q = {c_i7_011_q, in_i_data_9_tpl};

    // element_extension17(BITJOIN,30)
    assign element_extension17_q = {c_i7_011_q, in_i_data_8_tpl};

    // c_i40_016(CONSTANT,12)
    assign c_i40_016_q = $unsigned(40'b0000000000000000000000000000000000000000);

    // element_extension14(BITJOIN,29)
    assign element_extension14_q = {c_i7_011_q, in_i_data_6_tpl};

    // element_extension12(BITJOIN,28)
    assign element_extension12_q = {c_i7_011_q, in_i_data_5_tpl};

    // element_extension10(BITJOIN,27)
    assign element_extension10_q = {c_i7_011_q, in_i_data_4_tpl};

    // c_i8_023(CONSTANT,24)
    assign c_i8_023_q = $unsigned(8'b00000000);

    // element_extension7(BITJOIN,36)
    assign element_extension7_q = {c_i7_011_q, in_i_data_2_tpl};

    // element_extension5(BITJOIN,35)
    assign element_extension5_q = {c_i7_011_q, in_i_data_1_tpl};

    // element_extension3(BITJOIN,34)
    assign element_extension3_q = {c_i7_011_q, in_i_data_0_tpl};

    // dsdk_ip_adapt_bitjoin1(BITJOIN,26)
    assign dsdk_ip_adapt_bitjoin1_q = {c_i56_026_q, element_extension24_q, in_i_data_11_tpl, c_i8_023_q, element_extension21_q, element_extension19_q, element_extension17_q, in_i_data_7_tpl, c_i40_016_q, element_extension14_q, element_extension12_q, element_extension10_q, in_i_data_3_tpl, c_i8_023_q, element_extension7_q, element_extension5_q, element_extension3_q};

    // i_llvm_fpga_sfc_exit_s_c0_out_for_body84_kernel_3mms_c0_exit600_kernel_3mm0(EXTIFACE,37)
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body84_kernel_3mms_c0_exit600_kernel_3mm0_i_data = dsdk_ip_adapt_bitjoin1_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body84_kernel_3mms_c0_exit600_kernel_3mm0_i_stall = in_i_stall;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body84_kernel_3mms_c0_exit600_kernel_3mm0_i_valid = in_i_valid;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body84_kernel_3mms_c0_exit600_kernel_3mm0_i_stall_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body84_kernel_3mms_c0_exit600_kernel_3mm0_i_stall[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body84_kernel_3mms_c0_exit600_kernel_3mm0_i_valid_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body84_kernel_3mms_c0_exit600_kernel_3mm0_i_valid[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body84_kernel_3mms_c0_exit600_kernel_3mm0_o_almost_empty[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body84_kernel_3mms_c0_exit600_kernel_3mm0_o_almost_empty_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body84_kernel_3mms_c0_exit600_kernel_3mm0_o_empty[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body84_kernel_3mms_c0_exit600_kernel_3mm0_o_empty_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body84_kernel_3mms_c0_exit600_kernel_3mm0_o_stall[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body84_kernel_3mms_c0_exit600_kernel_3mm0_o_stall_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body84_kernel_3mms_c0_exit600_kernel_3mm0_o_valid[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body84_kernel_3mms_c0_exit600_kernel_3mm0_o_valid_bitsignaltemp;
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
        .WIDTH(320)
    ) thei_llvm_fpga_sfc_exit_s_c0_out_for_body84_kernel_3mms_c0_exit600_kernel_3mm0 (
        .i_data(dsdk_ip_adapt_bitjoin1_q),
        .i_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_body84_kernel_3mms_c0_exit600_kernel_3mm0_i_stall_bitsignaltemp),
        .i_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_body84_kernel_3mms_c0_exit600_kernel_3mm0_i_valid_bitsignaltemp),
        .o_almost_empty(i_llvm_fpga_sfc_exit_s_c0_out_for_body84_kernel_3mms_c0_exit600_kernel_3mm0_o_almost_empty_bitsignaltemp),
        .o_data(i_llvm_fpga_sfc_exit_s_c0_out_for_body84_kernel_3mms_c0_exit600_kernel_3mm0_o_data),
        .o_empty(i_llvm_fpga_sfc_exit_s_c0_out_for_body84_kernel_3mms_c0_exit600_kernel_3mm0_o_empty_bitsignaltemp),
        .o_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_body84_kernel_3mms_c0_exit600_kernel_3mm0_o_stall_bitsignaltemp),
        .o_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_body84_kernel_3mms_c0_exit600_kernel_3mm0_o_valid_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out(GPOUT,55)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_body84_kernel_3mms_c0_exit600_kernel_3mm0_o_stall;

    // ip_dsdk_adapt_bitselect52(BITSELECT,50)
    assign ip_dsdk_adapt_bitselect52_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body84_kernel_3mms_c0_exit600_kernel_3mm0_o_data[256:256];

    // adapt_scalar_trunc53(ROUND,11)
    assign adapt_scalar_trunc53_in = ip_dsdk_adapt_bitselect52_b;
    assign adapt_scalar_trunc53_q = adapt_scalar_trunc53_in[0:0];

    // ip_dsdk_adapt_bitselect50(BITSELECT,49)
    assign ip_dsdk_adapt_bitselect50_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body84_kernel_3mms_c0_exit600_kernel_3mm0_o_data[255:224];

    // ip_dsdk_adapt_bitselect48(BITSELECT,48)
    assign ip_dsdk_adapt_bitselect48_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body84_kernel_3mms_c0_exit600_kernel_3mm0_o_data[208:208];

    // adapt_scalar_trunc49(ROUND,10)
    assign adapt_scalar_trunc49_in = ip_dsdk_adapt_bitselect48_b;
    assign adapt_scalar_trunc49_q = adapt_scalar_trunc49_in[0:0];

    // ip_dsdk_adapt_bitselect46(BITSELECT,47)
    assign ip_dsdk_adapt_bitselect46_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body84_kernel_3mms_c0_exit600_kernel_3mm0_o_data[200:200];

    // adapt_scalar_trunc47(ROUND,9)
    assign adapt_scalar_trunc47_in = ip_dsdk_adapt_bitselect46_b;
    assign adapt_scalar_trunc47_q = adapt_scalar_trunc47_in[0:0];

    // ip_dsdk_adapt_bitselect44(BITSELECT,46)
    assign ip_dsdk_adapt_bitselect44_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body84_kernel_3mms_c0_exit600_kernel_3mm0_o_data[192:192];

    // adapt_scalar_trunc45(ROUND,8)
    assign adapt_scalar_trunc45_in = ip_dsdk_adapt_bitselect44_b;
    assign adapt_scalar_trunc45_q = adapt_scalar_trunc45_in[0:0];

    // ip_dsdk_adapt_bitselect42(BITSELECT,45)
    assign ip_dsdk_adapt_bitselect42_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body84_kernel_3mms_c0_exit600_kernel_3mm0_o_data[191:128];

    // ip_dsdk_adapt_bitselect40(BITSELECT,44)
    assign ip_dsdk_adapt_bitselect40_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body84_kernel_3mms_c0_exit600_kernel_3mm0_o_data[80:80];

    // adapt_scalar_trunc41(ROUND,7)
    assign adapt_scalar_trunc41_in = ip_dsdk_adapt_bitselect40_b;
    assign adapt_scalar_trunc41_q = adapt_scalar_trunc41_in[0:0];

    // ip_dsdk_adapt_bitselect38(BITSELECT,43)
    assign ip_dsdk_adapt_bitselect38_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body84_kernel_3mms_c0_exit600_kernel_3mm0_o_data[72:72];

    // adapt_scalar_trunc39(ROUND,6)
    assign adapt_scalar_trunc39_in = ip_dsdk_adapt_bitselect38_b;
    assign adapt_scalar_trunc39_q = adapt_scalar_trunc39_in[0:0];

    // ip_dsdk_adapt_bitselect36(BITSELECT,42)
    assign ip_dsdk_adapt_bitselect36_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body84_kernel_3mms_c0_exit600_kernel_3mm0_o_data[64:64];

    // adapt_scalar_trunc37(ROUND,5)
    assign adapt_scalar_trunc37_in = ip_dsdk_adapt_bitselect36_b;
    assign adapt_scalar_trunc37_q = adapt_scalar_trunc37_in[0:0];

    // ip_dsdk_adapt_bitselect34(BITSELECT,41)
    assign ip_dsdk_adapt_bitselect34_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body84_kernel_3mms_c0_exit600_kernel_3mm0_o_data[63:32];

    // ip_dsdk_adapt_bitselect32(BITSELECT,40)
    assign ip_dsdk_adapt_bitselect32_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body84_kernel_3mms_c0_exit600_kernel_3mm0_o_data[16:16];

    // adapt_scalar_trunc33(ROUND,4)
    assign adapt_scalar_trunc33_in = ip_dsdk_adapt_bitselect32_b;
    assign adapt_scalar_trunc33_q = adapt_scalar_trunc33_in[0:0];

    // ip_dsdk_adapt_bitselect30(BITSELECT,39)
    assign ip_dsdk_adapt_bitselect30_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body84_kernel_3mms_c0_exit600_kernel_3mm0_o_data[8:8];

    // adapt_scalar_trunc31(ROUND,3)
    assign adapt_scalar_trunc31_in = ip_dsdk_adapt_bitselect30_b;
    assign adapt_scalar_trunc31_q = adapt_scalar_trunc31_in[0:0];

    // ip_dsdk_adapt_bitselect28(BITSELECT,38)
    assign ip_dsdk_adapt_bitselect28_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body84_kernel_3mms_c0_exit600_kernel_3mm0_o_data[0:0];

    // adapt_scalar_trunc29(ROUND,2)
    assign adapt_scalar_trunc29_in = ip_dsdk_adapt_bitselect28_b;
    assign adapt_scalar_trunc29_q = adapt_scalar_trunc29_in[0:0];

    // dupName_0_sync_out_aunroll_x(GPOUT,57)@20000030
    assign out_o_almost_empty = i_llvm_fpga_sfc_exit_s_c0_out_for_body84_kernel_3mms_c0_exit600_kernel_3mm0_o_almost_empty;
    assign out_o_data_0_tpl = adapt_scalar_trunc29_q;
    assign out_o_data_1_tpl = adapt_scalar_trunc31_q;
    assign out_o_data_2_tpl = adapt_scalar_trunc33_q;
    assign out_o_data_3_tpl = ip_dsdk_adapt_bitselect34_b;
    assign out_o_data_4_tpl = adapt_scalar_trunc37_q;
    assign out_o_data_5_tpl = adapt_scalar_trunc39_q;
    assign out_o_data_6_tpl = adapt_scalar_trunc41_q;
    assign out_o_data_7_tpl = ip_dsdk_adapt_bitselect42_b;
    assign out_o_data_8_tpl = adapt_scalar_trunc45_q;
    assign out_o_data_9_tpl = adapt_scalar_trunc47_q;
    assign out_o_data_10_tpl = adapt_scalar_trunc49_q;
    assign out_o_data_11_tpl = ip_dsdk_adapt_bitselect50_b;
    assign out_o_data_12_tpl = adapt_scalar_trunc53_q;
    assign out_o_empty = i_llvm_fpga_sfc_exit_s_c0_out_for_body84_kernel_3mms_c0_exit600_kernel_3mm0_o_empty;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_body84_kernel_3mms_c0_exit600_kernel_3mm0_o_valid;

endmodule
