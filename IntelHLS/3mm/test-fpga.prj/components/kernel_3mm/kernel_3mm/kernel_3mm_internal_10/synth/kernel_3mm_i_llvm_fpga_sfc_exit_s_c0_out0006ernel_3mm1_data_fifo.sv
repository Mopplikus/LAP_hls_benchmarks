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

// SystemVerilog created from i_llvm_fpga_sfc_exit_s_c0_out_for_body76_kernel_3mms_c0_exit557_kernel_3mm1_data_fifo
// Created for function/kernel kernel_3mm
// SystemVerilog created on Fri Apr  7 18:25:07 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_i_llvm_fpga_sfc_exit_s_c0_out0006ernel_3mm1_data_fifo (
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [0:0] in_i_data_0_tpl,
    input wire [31:0] in_i_data_1_tpl,
    input wire [63:0] in_i_data_2_tpl,
    input wire [63:0] in_i_data_3_tpl,
    input wire [63:0] in_i_data_4_tpl,
    input wire [0:0] in_i_data_5_tpl,
    input wire [31:0] in_i_data_6_tpl,
    input wire [0:0] in_i_data_7_tpl,
    input wire [0:0] in_i_data_8_tpl,
    input wire [0:0] in_i_data_9_tpl,
    input wire [0:0] in_i_data_10_tpl,
    input wire [0:0] in_i_data_11_tpl,
    input wire [31:0] in_i_data_12_tpl,
    input wire [0:0] in_i_data_13_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_o_almost_full,
    output wire [0:0] out_o_data_0_tpl,
    output wire [31:0] out_o_data_1_tpl,
    output wire [63:0] out_o_data_2_tpl,
    output wire [63:0] out_o_data_3_tpl,
    output wire [63:0] out_o_data_4_tpl,
    output wire [0:0] out_o_data_5_tpl,
    output wire [31:0] out_o_data_6_tpl,
    output wire [0:0] out_o_data_7_tpl,
    output wire [0:0] out_o_data_8_tpl,
    output wire [0:0] out_o_data_9_tpl,
    output wire [0:0] out_o_data_10_tpl,
    output wire [0:0] out_o_data_11_tpl,
    output wire [31:0] out_o_data_12_tpl,
    output wire [0:0] out_o_data_13_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc25_in;
    wire [0:0] adapt_scalar_trunc25_q;
    wire [0:0] adapt_scalar_trunc35_in;
    wire [0:0] adapt_scalar_trunc35_q;
    wire [0:0] adapt_scalar_trunc39_in;
    wire [0:0] adapt_scalar_trunc39_q;
    wire [0:0] adapt_scalar_trunc41_in;
    wire [0:0] adapt_scalar_trunc41_q;
    wire [0:0] adapt_scalar_trunc43_in;
    wire [0:0] adapt_scalar_trunc43_q;
    wire [0:0] adapt_scalar_trunc45_in;
    wire [0:0] adapt_scalar_trunc45_q;
    wire [0:0] adapt_scalar_trunc47_in;
    wire [0:0] adapt_scalar_trunc47_q;
    wire [0:0] adapt_scalar_trunc51_in;
    wire [0:0] adapt_scalar_trunc51_q;
    wire [23:0] c_i24_019_q;
    wire [6:0] c_i7_010_q;
    wire [447:0] dsdk_ip_adapt_bitjoin1_q;
    wire [7:0] element_extension11_q;
    wire [7:0] element_extension13_q;
    wire [7:0] element_extension15_q;
    wire [7:0] element_extension17_q;
    wire [7:0] element_extension20_q;
    wire [7:0] element_extension3_q;
    wire [7:0] element_extension6_q;
    wire [7:0] element_extension9_q;
    wire [447:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body76_kernel_3mms_c0_exit557_kernel_3mm0_i_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body76_kernel_3mms_c0_exit557_kernel_3mm0_i_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body76_kernel_3mms_c0_exit557_kernel_3mm0_i_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body76_kernel_3mms_c0_exit557_kernel_3mm0_i_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body76_kernel_3mms_c0_exit557_kernel_3mm0_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body76_kernel_3mms_c0_exit557_kernel_3mm0_o_almost_full;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body76_kernel_3mms_c0_exit557_kernel_3mm0_o_almost_full_bitsignaltemp;
    wire [447:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body76_kernel_3mms_c0_exit557_kernel_3mm0_o_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body76_kernel_3mms_c0_exit557_kernel_3mm0_o_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body76_kernel_3mms_c0_exit557_kernel_3mm0_o_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body76_kernel_3mms_c0_exit557_kernel_3mm0_o_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body76_kernel_3mms_c0_exit557_kernel_3mm0_o_valid_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect24_b;
    wire [31:0] ip_dsdk_adapt_bitselect26_b;
    wire [63:0] ip_dsdk_adapt_bitselect28_b;
    wire [63:0] ip_dsdk_adapt_bitselect30_b;
    wire [63:0] ip_dsdk_adapt_bitselect32_b;
    wire [0:0] ip_dsdk_adapt_bitselect34_b;
    wire [31:0] ip_dsdk_adapt_bitselect36_b;
    wire [0:0] ip_dsdk_adapt_bitselect38_b;
    wire [0:0] ip_dsdk_adapt_bitselect40_b;
    wire [0:0] ip_dsdk_adapt_bitselect42_b;
    wire [0:0] ip_dsdk_adapt_bitselect44_b;
    wire [0:0] ip_dsdk_adapt_bitselect46_b;
    wire [31:0] ip_dsdk_adapt_bitselect48_b;
    wire [0:0] ip_dsdk_adapt_bitselect50_b;


    // c_i7_010(CONSTANT,14)
    assign c_i7_010_q = $unsigned(7'b0000000);

    // element_extension20(BITJOIN,27)
    assign element_extension20_q = {c_i7_010_q, in_i_data_13_tpl};

    // element_extension17(BITJOIN,26)
    assign element_extension17_q = {c_i7_010_q, in_i_data_11_tpl};

    // element_extension15(BITJOIN,25)
    assign element_extension15_q = {c_i7_010_q, in_i_data_10_tpl};

    // element_extension13(BITJOIN,24)
    assign element_extension13_q = {c_i7_010_q, in_i_data_9_tpl};

    // element_extension11(BITJOIN,23)
    assign element_extension11_q = {c_i7_010_q, in_i_data_8_tpl};

    // element_extension9(BITJOIN,30)
    assign element_extension9_q = {c_i7_010_q, in_i_data_7_tpl};

    // element_extension6(BITJOIN,29)
    assign element_extension6_q = {c_i7_010_q, in_i_data_5_tpl};

    // c_i24_019(CONSTANT,10)
    assign c_i24_019_q = $unsigned(24'b000000000000000000000000);

    // element_extension3(BITJOIN,28)
    assign element_extension3_q = {c_i7_010_q, in_i_data_0_tpl};

    // dsdk_ip_adapt_bitjoin1(BITJOIN,22)
    assign dsdk_ip_adapt_bitjoin1_q = {c_i24_019_q, element_extension20_q, in_i_data_12_tpl, c_i24_019_q, element_extension17_q, element_extension15_q, element_extension13_q, element_extension11_q, element_extension9_q, in_i_data_6_tpl, c_i24_019_q, element_extension6_q, in_i_data_4_tpl, in_i_data_3_tpl, in_i_data_2_tpl, in_i_data_1_tpl, c_i24_019_q, element_extension3_q};

    // i_llvm_fpga_sfc_exit_s_c0_out_for_body76_kernel_3mms_c0_exit557_kernel_3mm0(EXTIFACE,31)
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body76_kernel_3mms_c0_exit557_kernel_3mm0_i_data = dsdk_ip_adapt_bitjoin1_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body76_kernel_3mms_c0_exit557_kernel_3mm0_i_stall = in_i_stall;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body76_kernel_3mms_c0_exit557_kernel_3mm0_i_valid = in_i_valid;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body76_kernel_3mms_c0_exit557_kernel_3mm0_i_stall_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body76_kernel_3mms_c0_exit557_kernel_3mm0_i_stall[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body76_kernel_3mms_c0_exit557_kernel_3mm0_i_valid_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body76_kernel_3mms_c0_exit557_kernel_3mm0_i_valid[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body76_kernel_3mms_c0_exit557_kernel_3mm0_o_almost_full[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body76_kernel_3mms_c0_exit557_kernel_3mm0_o_almost_full_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body76_kernel_3mms_c0_exit557_kernel_3mm0_o_stall[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body76_kernel_3mms_c0_exit557_kernel_3mm0_o_stall_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body76_kernel_3mms_c0_exit557_kernel_3mm0_o_valid[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body76_kernel_3mms_c0_exit557_kernel_3mm0_o_valid_bitsignaltemp;
    hld_fifo #(
        .DEPTH(32),
        .STYLE("ms"),
        .ASYNC_RESET(1),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .SYNCHRONIZE_RESET(0),
        .WIDTH(448)
    ) thei_llvm_fpga_sfc_exit_s_c0_out_for_body76_kernel_3mms_c0_exit557_kernel_3mm0 (
        .i_data(dsdk_ip_adapt_bitjoin1_q),
        .i_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_body76_kernel_3mms_c0_exit557_kernel_3mm0_i_stall_bitsignaltemp),
        .i_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_body76_kernel_3mms_c0_exit557_kernel_3mm0_i_valid_bitsignaltemp),
        .o_almost_full(i_llvm_fpga_sfc_exit_s_c0_out_for_body76_kernel_3mms_c0_exit557_kernel_3mm0_o_almost_full_bitsignaltemp),
        .o_data(i_llvm_fpga_sfc_exit_s_c0_out_for_body76_kernel_3mms_c0_exit557_kernel_3mm0_o_data),
        .o_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_body76_kernel_3mms_c0_exit557_kernel_3mm0_o_stall_bitsignaltemp),
        .o_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_body76_kernel_3mms_c0_exit557_kernel_3mm0_o_valid_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out(GPOUT,53)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_body76_kernel_3mms_c0_exit557_kernel_3mm0_o_stall;

    // ip_dsdk_adapt_bitselect50(BITSELECT,45)
    assign ip_dsdk_adapt_bitselect50_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body76_kernel_3mms_c0_exit557_kernel_3mm0_o_data[416:416];

    // adapt_scalar_trunc51(ROUND,9)
    assign adapt_scalar_trunc51_in = ip_dsdk_adapt_bitselect50_b;
    assign adapt_scalar_trunc51_q = adapt_scalar_trunc51_in[0:0];

    // ip_dsdk_adapt_bitselect48(BITSELECT,44)
    assign ip_dsdk_adapt_bitselect48_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body76_kernel_3mms_c0_exit557_kernel_3mm0_o_data[415:384];

    // ip_dsdk_adapt_bitselect46(BITSELECT,43)
    assign ip_dsdk_adapt_bitselect46_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body76_kernel_3mms_c0_exit557_kernel_3mm0_o_data[352:352];

    // adapt_scalar_trunc47(ROUND,8)
    assign adapt_scalar_trunc47_in = ip_dsdk_adapt_bitselect46_b;
    assign adapt_scalar_trunc47_q = adapt_scalar_trunc47_in[0:0];

    // ip_dsdk_adapt_bitselect44(BITSELECT,42)
    assign ip_dsdk_adapt_bitselect44_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body76_kernel_3mms_c0_exit557_kernel_3mm0_o_data[344:344];

    // adapt_scalar_trunc45(ROUND,7)
    assign adapt_scalar_trunc45_in = ip_dsdk_adapt_bitselect44_b;
    assign adapt_scalar_trunc45_q = adapt_scalar_trunc45_in[0:0];

    // ip_dsdk_adapt_bitselect42(BITSELECT,41)
    assign ip_dsdk_adapt_bitselect42_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body76_kernel_3mms_c0_exit557_kernel_3mm0_o_data[336:336];

    // adapt_scalar_trunc43(ROUND,6)
    assign adapt_scalar_trunc43_in = ip_dsdk_adapt_bitselect42_b;
    assign adapt_scalar_trunc43_q = adapt_scalar_trunc43_in[0:0];

    // ip_dsdk_adapt_bitselect40(BITSELECT,40)
    assign ip_dsdk_adapt_bitselect40_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body76_kernel_3mms_c0_exit557_kernel_3mm0_o_data[328:328];

    // adapt_scalar_trunc41(ROUND,5)
    assign adapt_scalar_trunc41_in = ip_dsdk_adapt_bitselect40_b;
    assign adapt_scalar_trunc41_q = adapt_scalar_trunc41_in[0:0];

    // ip_dsdk_adapt_bitselect38(BITSELECT,39)
    assign ip_dsdk_adapt_bitselect38_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body76_kernel_3mms_c0_exit557_kernel_3mm0_o_data[320:320];

    // adapt_scalar_trunc39(ROUND,4)
    assign adapt_scalar_trunc39_in = ip_dsdk_adapt_bitselect38_b;
    assign adapt_scalar_trunc39_q = adapt_scalar_trunc39_in[0:0];

    // ip_dsdk_adapt_bitselect36(BITSELECT,38)
    assign ip_dsdk_adapt_bitselect36_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body76_kernel_3mms_c0_exit557_kernel_3mm0_o_data[319:288];

    // ip_dsdk_adapt_bitselect34(BITSELECT,37)
    assign ip_dsdk_adapt_bitselect34_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body76_kernel_3mms_c0_exit557_kernel_3mm0_o_data[256:256];

    // adapt_scalar_trunc35(ROUND,3)
    assign adapt_scalar_trunc35_in = ip_dsdk_adapt_bitselect34_b;
    assign adapt_scalar_trunc35_q = adapt_scalar_trunc35_in[0:0];

    // ip_dsdk_adapt_bitselect32(BITSELECT,36)
    assign ip_dsdk_adapt_bitselect32_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body76_kernel_3mms_c0_exit557_kernel_3mm0_o_data[255:192];

    // ip_dsdk_adapt_bitselect30(BITSELECT,35)
    assign ip_dsdk_adapt_bitselect30_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body76_kernel_3mms_c0_exit557_kernel_3mm0_o_data[191:128];

    // ip_dsdk_adapt_bitselect28(BITSELECT,34)
    assign ip_dsdk_adapt_bitselect28_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body76_kernel_3mms_c0_exit557_kernel_3mm0_o_data[127:64];

    // ip_dsdk_adapt_bitselect26(BITSELECT,33)
    assign ip_dsdk_adapt_bitselect26_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body76_kernel_3mms_c0_exit557_kernel_3mm0_o_data[63:32];

    // ip_dsdk_adapt_bitselect24(BITSELECT,32)
    assign ip_dsdk_adapt_bitselect24_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body76_kernel_3mms_c0_exit557_kernel_3mm0_o_data[0:0];

    // adapt_scalar_trunc25(ROUND,2)
    assign adapt_scalar_trunc25_in = ip_dsdk_adapt_bitselect24_b;
    assign adapt_scalar_trunc25_q = adapt_scalar_trunc25_in[0:0];

    // dupName_0_sync_out_aunroll_x(GPOUT,55)@20000003
    assign out_o_almost_full = i_llvm_fpga_sfc_exit_s_c0_out_for_body76_kernel_3mms_c0_exit557_kernel_3mm0_o_almost_full;
    assign out_o_data_0_tpl = adapt_scalar_trunc25_q;
    assign out_o_data_1_tpl = ip_dsdk_adapt_bitselect26_b;
    assign out_o_data_2_tpl = ip_dsdk_adapt_bitselect28_b;
    assign out_o_data_3_tpl = ip_dsdk_adapt_bitselect30_b;
    assign out_o_data_4_tpl = ip_dsdk_adapt_bitselect32_b;
    assign out_o_data_5_tpl = adapt_scalar_trunc35_q;
    assign out_o_data_6_tpl = ip_dsdk_adapt_bitselect36_b;
    assign out_o_data_7_tpl = adapt_scalar_trunc39_q;
    assign out_o_data_8_tpl = adapt_scalar_trunc41_q;
    assign out_o_data_9_tpl = adapt_scalar_trunc43_q;
    assign out_o_data_10_tpl = adapt_scalar_trunc45_q;
    assign out_o_data_11_tpl = adapt_scalar_trunc47_q;
    assign out_o_data_12_tpl = ip_dsdk_adapt_bitselect48_b;
    assign out_o_data_13_tpl = adapt_scalar_trunc51_q;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_body76_kernel_3mms_c0_exit557_kernel_3mm0_o_valid;

endmodule
