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

// SystemVerilog created from i_llvm_fpga_sfc_exit_s_c0_out_for_body15_stencil_2ds_c0_exit196_stencil_2d1_data_fifo
// Created for function/kernel stencil_2d
// SystemVerilog created on Thu Apr 27 14:23:40 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_i_llvm_fpga_sfc_exit_s_c0_out0006tencil_2d1_data_fifo (
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [0:0] in_i_data_0_tpl,
    input wire [31:0] in_i_data_1_tpl,
    input wire [0:0] in_i_data_2_tpl,
    input wire [0:0] in_i_data_3_tpl,
    input wire [31:0] in_i_data_4_tpl,
    input wire [0:0] in_i_data_5_tpl,
    input wire [0:0] in_i_data_6_tpl,
    input wire [31:0] in_i_data_7_tpl,
    input wire [0:0] in_i_data_8_tpl,
    input wire [31:0] in_i_data_9_tpl,
    input wire [31:0] in_i_data_10_tpl,
    input wire [0:0] in_i_data_11_tpl,
    input wire [0:0] in_i_data_12_tpl,
    input wire [31:0] in_i_data_13_tpl,
    input wire [31:0] in_i_data_14_tpl,
    input wire [31:0] in_i_data_15_tpl,
    input wire [0:0] in_i_data_16_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_o_almost_full,
    output wire [0:0] out_o_data_0_tpl,
    output wire [31:0] out_o_data_1_tpl,
    output wire [0:0] out_o_data_2_tpl,
    output wire [0:0] out_o_data_3_tpl,
    output wire [31:0] out_o_data_4_tpl,
    output wire [0:0] out_o_data_5_tpl,
    output wire [0:0] out_o_data_6_tpl,
    output wire [31:0] out_o_data_7_tpl,
    output wire [0:0] out_o_data_8_tpl,
    output wire [31:0] out_o_data_9_tpl,
    output wire [31:0] out_o_data_10_tpl,
    output wire [0:0] out_o_data_11_tpl,
    output wire [0:0] out_o_data_12_tpl,
    output wire [31:0] out_o_data_13_tpl,
    output wire [31:0] out_o_data_14_tpl,
    output wire [31:0] out_o_data_15_tpl,
    output wire [0:0] out_o_data_16_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc29_in;
    wire [0:0] adapt_scalar_trunc29_q;
    wire [0:0] adapt_scalar_trunc33_in;
    wire [0:0] adapt_scalar_trunc33_q;
    wire [0:0] adapt_scalar_trunc35_in;
    wire [0:0] adapt_scalar_trunc35_q;
    wire [0:0] adapt_scalar_trunc39_in;
    wire [0:0] adapt_scalar_trunc39_q;
    wire [0:0] adapt_scalar_trunc41_in;
    wire [0:0] adapt_scalar_trunc41_q;
    wire [0:0] adapt_scalar_trunc45_in;
    wire [0:0] adapt_scalar_trunc45_q;
    wire [0:0] adapt_scalar_trunc51_in;
    wire [0:0] adapt_scalar_trunc51_q;
    wire [0:0] adapt_scalar_trunc53_in;
    wire [0:0] adapt_scalar_trunc53_q;
    wire [0:0] adapt_scalar_trunc61_in;
    wire [0:0] adapt_scalar_trunc61_q;
    wire [15:0] c_i16_010_q;
    wire [23:0] c_i24_018_q;
    wire [6:0] c_i7_012_q;
    wire [447:0] dsdk_ip_adapt_bitjoin1_q;
    wire [7:0] element_extension11_q;
    wire [7:0] element_extension13_q;
    wire [7:0] element_extension16_q;
    wire [7:0] element_extension19_q;
    wire [7:0] element_extension21_q;
    wire [7:0] element_extension24_q;
    wire [7:0] element_extension3_q;
    wire [7:0] element_extension6_q;
    wire [7:0] element_extension8_q;
    wire [447:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body15_stencil_2ds_c0_exit196_stencil_2d0_i_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body15_stencil_2ds_c0_exit196_stencil_2d0_i_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body15_stencil_2ds_c0_exit196_stencil_2d0_i_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body15_stencil_2ds_c0_exit196_stencil_2d0_i_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body15_stencil_2ds_c0_exit196_stencil_2d0_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body15_stencil_2ds_c0_exit196_stencil_2d0_o_almost_full;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body15_stencil_2ds_c0_exit196_stencil_2d0_o_almost_full_bitsignaltemp;
    wire [447:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body15_stencil_2ds_c0_exit196_stencil_2d0_o_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body15_stencil_2ds_c0_exit196_stencil_2d0_o_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body15_stencil_2ds_c0_exit196_stencil_2d0_o_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body15_stencil_2ds_c0_exit196_stencil_2d0_o_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body15_stencil_2ds_c0_exit196_stencil_2d0_o_valid_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect28_b;
    wire [31:0] ip_dsdk_adapt_bitselect30_b;
    wire [0:0] ip_dsdk_adapt_bitselect32_b;
    wire [0:0] ip_dsdk_adapt_bitselect34_b;
    wire [31:0] ip_dsdk_adapt_bitselect36_b;
    wire [0:0] ip_dsdk_adapt_bitselect38_b;
    wire [0:0] ip_dsdk_adapt_bitselect40_b;
    wire [31:0] ip_dsdk_adapt_bitselect42_b;
    wire [0:0] ip_dsdk_adapt_bitselect44_b;
    wire [31:0] ip_dsdk_adapt_bitselect46_b;
    wire [31:0] ip_dsdk_adapt_bitselect48_b;
    wire [0:0] ip_dsdk_adapt_bitselect50_b;
    wire [0:0] ip_dsdk_adapt_bitselect52_b;
    wire [31:0] ip_dsdk_adapt_bitselect54_b;
    wire [31:0] ip_dsdk_adapt_bitselect56_b;
    wire [31:0] ip_dsdk_adapt_bitselect58_b;
    wire [0:0] ip_dsdk_adapt_bitselect60_b;


    // c_i7_012(CONSTANT,17)
    assign c_i7_012_q = $unsigned(7'b0000000);

    // element_extension24(BITJOIN,32)
    assign element_extension24_q = {c_i7_012_q, in_i_data_16_tpl};

    // element_extension21(BITJOIN,31)
    assign element_extension21_q = {c_i7_012_q, in_i_data_12_tpl};

    // element_extension19(BITJOIN,30)
    assign element_extension19_q = {c_i7_012_q, in_i_data_11_tpl};

    // element_extension16(BITJOIN,29)
    assign element_extension16_q = {c_i7_012_q, in_i_data_8_tpl};

    // element_extension13(BITJOIN,28)
    assign element_extension13_q = {c_i7_012_q, in_i_data_6_tpl};

    // element_extension11(BITJOIN,27)
    assign element_extension11_q = {c_i7_012_q, in_i_data_5_tpl};

    // c_i16_010(CONSTANT,11)
    assign c_i16_010_q = $unsigned(16'b0000000000000000);

    // element_extension8(BITJOIN,35)
    assign element_extension8_q = {c_i7_012_q, in_i_data_3_tpl};

    // element_extension6(BITJOIN,34)
    assign element_extension6_q = {c_i7_012_q, in_i_data_2_tpl};

    // c_i24_018(CONSTANT,14)
    assign c_i24_018_q = $unsigned(24'b000000000000000000000000);

    // element_extension3(BITJOIN,33)
    assign element_extension3_q = {c_i7_012_q, in_i_data_0_tpl};

    // dsdk_ip_adapt_bitjoin1(BITJOIN,26)
    assign dsdk_ip_adapt_bitjoin1_q = {c_i24_018_q, element_extension24_q, in_i_data_15_tpl, in_i_data_14_tpl, in_i_data_13_tpl, c_i16_010_q, element_extension21_q, element_extension19_q, in_i_data_10_tpl, in_i_data_9_tpl, c_i24_018_q, element_extension16_q, in_i_data_7_tpl, c_i16_010_q, element_extension13_q, element_extension11_q, in_i_data_4_tpl, c_i16_010_q, element_extension8_q, element_extension6_q, in_i_data_1_tpl, c_i24_018_q, element_extension3_q};

    // i_llvm_fpga_sfc_exit_s_c0_out_for_body15_stencil_2ds_c0_exit196_stencil_2d0(EXTIFACE,36)
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body15_stencil_2ds_c0_exit196_stencil_2d0_i_data = dsdk_ip_adapt_bitjoin1_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body15_stencil_2ds_c0_exit196_stencil_2d0_i_stall = in_i_stall;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body15_stencil_2ds_c0_exit196_stencil_2d0_i_valid = in_i_valid;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body15_stencil_2ds_c0_exit196_stencil_2d0_i_stall_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body15_stencil_2ds_c0_exit196_stencil_2d0_i_stall[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body15_stencil_2ds_c0_exit196_stencil_2d0_i_valid_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body15_stencil_2ds_c0_exit196_stencil_2d0_i_valid[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body15_stencil_2ds_c0_exit196_stencil_2d0_o_almost_full[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body15_stencil_2ds_c0_exit196_stencil_2d0_o_almost_full_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body15_stencil_2ds_c0_exit196_stencil_2d0_o_stall[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body15_stencil_2ds_c0_exit196_stencil_2d0_o_stall_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body15_stencil_2ds_c0_exit196_stencil_2d0_o_valid[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body15_stencil_2ds_c0_exit196_stencil_2d0_o_valid_bitsignaltemp;
    hld_fifo #(
        .DEPTH(32),
        .STYLE("ms"),
        .ASYNC_RESET(0),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .SYNCHRONIZE_RESET(0),
        .WIDTH(448)
    ) thei_llvm_fpga_sfc_exit_s_c0_out_for_body15_stencil_2ds_c0_exit196_stencil_2d0 (
        .i_data(dsdk_ip_adapt_bitjoin1_q),
        .i_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_body15_stencil_2ds_c0_exit196_stencil_2d0_i_stall_bitsignaltemp),
        .i_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_body15_stencil_2ds_c0_exit196_stencil_2d0_i_valid_bitsignaltemp),
        .o_almost_full(i_llvm_fpga_sfc_exit_s_c0_out_for_body15_stencil_2ds_c0_exit196_stencil_2d0_o_almost_full_bitsignaltemp),
        .o_data(i_llvm_fpga_sfc_exit_s_c0_out_for_body15_stencil_2ds_c0_exit196_stencil_2d0_o_data),
        .o_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_body15_stencil_2ds_c0_exit196_stencil_2d0_o_stall_bitsignaltemp),
        .o_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_body15_stencil_2ds_c0_exit196_stencil_2d0_o_valid_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out(GPOUT,63)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_body15_stencil_2ds_c0_exit196_stencil_2d0_o_stall;

    // ip_dsdk_adapt_bitselect60(BITSELECT,53)
    assign ip_dsdk_adapt_bitselect60_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body15_stencil_2ds_c0_exit196_stencil_2d0_o_data[416:416];

    // adapt_scalar_trunc61(ROUND,10)
    assign adapt_scalar_trunc61_in = ip_dsdk_adapt_bitselect60_b;
    assign adapt_scalar_trunc61_q = adapt_scalar_trunc61_in[0:0];

    // ip_dsdk_adapt_bitselect58(BITSELECT,52)
    assign ip_dsdk_adapt_bitselect58_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body15_stencil_2ds_c0_exit196_stencil_2d0_o_data[415:384];

    // ip_dsdk_adapt_bitselect56(BITSELECT,51)
    assign ip_dsdk_adapt_bitselect56_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body15_stencil_2ds_c0_exit196_stencil_2d0_o_data[383:352];

    // ip_dsdk_adapt_bitselect54(BITSELECT,50)
    assign ip_dsdk_adapt_bitselect54_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body15_stencil_2ds_c0_exit196_stencil_2d0_o_data[351:320];

    // ip_dsdk_adapt_bitselect52(BITSELECT,49)
    assign ip_dsdk_adapt_bitselect52_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body15_stencil_2ds_c0_exit196_stencil_2d0_o_data[296:296];

    // adapt_scalar_trunc53(ROUND,9)
    assign adapt_scalar_trunc53_in = ip_dsdk_adapt_bitselect52_b;
    assign adapt_scalar_trunc53_q = adapt_scalar_trunc53_in[0:0];

    // ip_dsdk_adapt_bitselect50(BITSELECT,48)
    assign ip_dsdk_adapt_bitselect50_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body15_stencil_2ds_c0_exit196_stencil_2d0_o_data[288:288];

    // adapt_scalar_trunc51(ROUND,8)
    assign adapt_scalar_trunc51_in = ip_dsdk_adapt_bitselect50_b;
    assign adapt_scalar_trunc51_q = adapt_scalar_trunc51_in[0:0];

    // ip_dsdk_adapt_bitselect48(BITSELECT,47)
    assign ip_dsdk_adapt_bitselect48_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body15_stencil_2ds_c0_exit196_stencil_2d0_o_data[287:256];

    // ip_dsdk_adapt_bitselect46(BITSELECT,46)
    assign ip_dsdk_adapt_bitselect46_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body15_stencil_2ds_c0_exit196_stencil_2d0_o_data[255:224];

    // ip_dsdk_adapt_bitselect44(BITSELECT,45)
    assign ip_dsdk_adapt_bitselect44_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body15_stencil_2ds_c0_exit196_stencil_2d0_o_data[192:192];

    // adapt_scalar_trunc45(ROUND,7)
    assign adapt_scalar_trunc45_in = ip_dsdk_adapt_bitselect44_b;
    assign adapt_scalar_trunc45_q = adapt_scalar_trunc45_in[0:0];

    // ip_dsdk_adapt_bitselect42(BITSELECT,44)
    assign ip_dsdk_adapt_bitselect42_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body15_stencil_2ds_c0_exit196_stencil_2d0_o_data[191:160];

    // ip_dsdk_adapt_bitselect40(BITSELECT,43)
    assign ip_dsdk_adapt_bitselect40_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body15_stencil_2ds_c0_exit196_stencil_2d0_o_data[136:136];

    // adapt_scalar_trunc41(ROUND,6)
    assign adapt_scalar_trunc41_in = ip_dsdk_adapt_bitselect40_b;
    assign adapt_scalar_trunc41_q = adapt_scalar_trunc41_in[0:0];

    // ip_dsdk_adapt_bitselect38(BITSELECT,42)
    assign ip_dsdk_adapt_bitselect38_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body15_stencil_2ds_c0_exit196_stencil_2d0_o_data[128:128];

    // adapt_scalar_trunc39(ROUND,5)
    assign adapt_scalar_trunc39_in = ip_dsdk_adapt_bitselect38_b;
    assign adapt_scalar_trunc39_q = adapt_scalar_trunc39_in[0:0];

    // ip_dsdk_adapt_bitselect36(BITSELECT,41)
    assign ip_dsdk_adapt_bitselect36_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body15_stencil_2ds_c0_exit196_stencil_2d0_o_data[127:96];

    // ip_dsdk_adapt_bitselect34(BITSELECT,40)
    assign ip_dsdk_adapt_bitselect34_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body15_stencil_2ds_c0_exit196_stencil_2d0_o_data[72:72];

    // adapt_scalar_trunc35(ROUND,4)
    assign adapt_scalar_trunc35_in = ip_dsdk_adapt_bitselect34_b;
    assign adapt_scalar_trunc35_q = adapt_scalar_trunc35_in[0:0];

    // ip_dsdk_adapt_bitselect32(BITSELECT,39)
    assign ip_dsdk_adapt_bitselect32_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body15_stencil_2ds_c0_exit196_stencil_2d0_o_data[64:64];

    // adapt_scalar_trunc33(ROUND,3)
    assign adapt_scalar_trunc33_in = ip_dsdk_adapt_bitselect32_b;
    assign adapt_scalar_trunc33_q = adapt_scalar_trunc33_in[0:0];

    // ip_dsdk_adapt_bitselect30(BITSELECT,38)
    assign ip_dsdk_adapt_bitselect30_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body15_stencil_2ds_c0_exit196_stencil_2d0_o_data[63:32];

    // ip_dsdk_adapt_bitselect28(BITSELECT,37)
    assign ip_dsdk_adapt_bitselect28_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body15_stencil_2ds_c0_exit196_stencil_2d0_o_data[0:0];

    // adapt_scalar_trunc29(ROUND,2)
    assign adapt_scalar_trunc29_in = ip_dsdk_adapt_bitselect28_b;
    assign adapt_scalar_trunc29_q = adapt_scalar_trunc29_in[0:0];

    // dupName_0_sync_out_aunroll_x(GPOUT,65)@20000003
    assign out_o_almost_full = i_llvm_fpga_sfc_exit_s_c0_out_for_body15_stencil_2ds_c0_exit196_stencil_2d0_o_almost_full;
    assign out_o_data_0_tpl = adapt_scalar_trunc29_q;
    assign out_o_data_1_tpl = ip_dsdk_adapt_bitselect30_b;
    assign out_o_data_2_tpl = adapt_scalar_trunc33_q;
    assign out_o_data_3_tpl = adapt_scalar_trunc35_q;
    assign out_o_data_4_tpl = ip_dsdk_adapt_bitselect36_b;
    assign out_o_data_5_tpl = adapt_scalar_trunc39_q;
    assign out_o_data_6_tpl = adapt_scalar_trunc41_q;
    assign out_o_data_7_tpl = ip_dsdk_adapt_bitselect42_b;
    assign out_o_data_8_tpl = adapt_scalar_trunc45_q;
    assign out_o_data_9_tpl = ip_dsdk_adapt_bitselect46_b;
    assign out_o_data_10_tpl = ip_dsdk_adapt_bitselect48_b;
    assign out_o_data_11_tpl = adapt_scalar_trunc51_q;
    assign out_o_data_12_tpl = adapt_scalar_trunc53_q;
    assign out_o_data_13_tpl = ip_dsdk_adapt_bitselect54_b;
    assign out_o_data_14_tpl = ip_dsdk_adapt_bitselect56_b;
    assign out_o_data_15_tpl = ip_dsdk_adapt_bitselect58_b;
    assign out_o_data_16_tpl = adapt_scalar_trunc61_q;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_body15_stencil_2ds_c0_exit196_stencil_2d0_o_valid;

endmodule
