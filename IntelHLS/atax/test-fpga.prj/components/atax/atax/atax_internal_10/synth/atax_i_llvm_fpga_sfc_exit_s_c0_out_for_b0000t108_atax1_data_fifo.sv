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

// SystemVerilog created from i_llvm_fpga_sfc_exit_s_c0_out_for_body8_ataxs_c0_exit108_atax1_data_fifo
// Created for function/kernel atax
// SystemVerilog created on Wed Apr 26 13:39:40 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_i_llvm_fpga_sfc_exit_s_c0_out_for_b0000t108_atax1_data_fifo (
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [0:0] in_almost_empty_in,
    input wire [0:0] in_empty_in,
    input wire [0:0] in_i_data_0_tpl,
    input wire [63:0] in_i_data_1_tpl,
    input wire [31:0] in_i_data_2_tpl,
    input wire [0:0] in_i_data_3_tpl,
    input wire [0:0] in_i_data_4_tpl,
    input wire [0:0] in_i_data_5_tpl,
    input wire [0:0] in_i_data_6_tpl,
    input wire [0:0] in_i_data_7_tpl,
    input wire [63:0] in_i_data_8_tpl,
    input wire [0:0] in_i_data_9_tpl,
    input wire [0:0] in_i_data_10_tpl,
    input wire [0:0] in_i_data_11_tpl,
    input wire [0:0] in_i_data_12_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_o_almost_empty,
    output wire [0:0] out_o_data_0_tpl,
    output wire [63:0] out_o_data_1_tpl,
    output wire [31:0] out_o_data_2_tpl,
    output wire [0:0] out_o_data_3_tpl,
    output wire [0:0] out_o_data_4_tpl,
    output wire [0:0] out_o_data_5_tpl,
    output wire [0:0] out_o_data_6_tpl,
    output wire [0:0] out_o_data_7_tpl,
    output wire [63:0] out_o_data_8_tpl,
    output wire [0:0] out_o_data_9_tpl,
    output wire [0:0] out_o_data_10_tpl,
    output wire [0:0] out_o_data_11_tpl,
    output wire [0:0] out_o_data_12_tpl,
    output wire [0:0] out_o_empty,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc28_in;
    wire [0:0] adapt_scalar_trunc28_q;
    wire [0:0] adapt_scalar_trunc34_in;
    wire [0:0] adapt_scalar_trunc34_q;
    wire [0:0] adapt_scalar_trunc36_in;
    wire [0:0] adapt_scalar_trunc36_q;
    wire [0:0] adapt_scalar_trunc38_in;
    wire [0:0] adapt_scalar_trunc38_q;
    wire [0:0] adapt_scalar_trunc40_in;
    wire [0:0] adapt_scalar_trunc40_q;
    wire [0:0] adapt_scalar_trunc42_in;
    wire [0:0] adapt_scalar_trunc42_q;
    wire [0:0] adapt_scalar_trunc46_in;
    wire [0:0] adapt_scalar_trunc46_q;
    wire [0:0] adapt_scalar_trunc48_in;
    wire [0:0] adapt_scalar_trunc48_q;
    wire [0:0] adapt_scalar_trunc50_in;
    wire [0:0] adapt_scalar_trunc50_q;
    wire [0:0] adapt_scalar_trunc52_in;
    wire [0:0] adapt_scalar_trunc52_q;
    wire [31:0] c_i32_025_q;
    wire [55:0] c_i56_016_q;
    wire [6:0] c_i7_011_q;
    wire [383:0] dsdk_ip_adapt_bitjoin1_q;
    wire [7:0] element_extension10_q;
    wire [7:0] element_extension12_q;
    wire [7:0] element_extension14_q;
    wire [7:0] element_extension17_q;
    wire [7:0] element_extension19_q;
    wire [7:0] element_extension21_q;
    wire [7:0] element_extension23_q;
    wire [7:0] element_extension3_q;
    wire [7:0] element_extension6_q;
    wire [7:0] element_extension8_q;
    wire [383:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body8_ataxs_c0_exit108_atax0_i_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body8_ataxs_c0_exit108_atax0_i_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body8_ataxs_c0_exit108_atax0_i_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body8_ataxs_c0_exit108_atax0_i_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body8_ataxs_c0_exit108_atax0_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body8_ataxs_c0_exit108_atax0_o_almost_empty;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body8_ataxs_c0_exit108_atax0_o_almost_empty_bitsignaltemp;
    wire [383:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body8_ataxs_c0_exit108_atax0_o_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body8_ataxs_c0_exit108_atax0_o_empty;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body8_ataxs_c0_exit108_atax0_o_empty_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body8_ataxs_c0_exit108_atax0_o_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body8_ataxs_c0_exit108_atax0_o_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body8_ataxs_c0_exit108_atax0_o_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body8_ataxs_c0_exit108_atax0_o_valid_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect27_b;
    wire [63:0] ip_dsdk_adapt_bitselect29_b;
    wire [31:0] ip_dsdk_adapt_bitselect31_b;
    wire [0:0] ip_dsdk_adapt_bitselect33_b;
    wire [0:0] ip_dsdk_adapt_bitselect35_b;
    wire [0:0] ip_dsdk_adapt_bitselect37_b;
    wire [0:0] ip_dsdk_adapt_bitselect39_b;
    wire [0:0] ip_dsdk_adapt_bitselect41_b;
    wire [63:0] ip_dsdk_adapt_bitselect43_b;
    wire [0:0] ip_dsdk_adapt_bitselect45_b;
    wire [0:0] ip_dsdk_adapt_bitselect47_b;
    wire [0:0] ip_dsdk_adapt_bitselect49_b;
    wire [0:0] ip_dsdk_adapt_bitselect51_b;


    // c_i32_025(CONSTANT,12)
    assign c_i32_025_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i7_011(CONSTANT,15)
    assign c_i7_011_q = $unsigned(7'b0000000);

    // element_extension23(BITJOIN,32)
    assign element_extension23_q = {c_i7_011_q, in_i_data_12_tpl};

    // element_extension21(BITJOIN,31)
    assign element_extension21_q = {c_i7_011_q, in_i_data_11_tpl};

    // element_extension19(BITJOIN,30)
    assign element_extension19_q = {c_i7_011_q, in_i_data_10_tpl};

    // element_extension17(BITJOIN,29)
    assign element_extension17_q = {c_i7_011_q, in_i_data_9_tpl};

    // element_extension14(BITJOIN,28)
    assign element_extension14_q = {c_i7_011_q, in_i_data_7_tpl};

    // element_extension12(BITJOIN,27)
    assign element_extension12_q = {c_i7_011_q, in_i_data_6_tpl};

    // element_extension10(BITJOIN,26)
    assign element_extension10_q = {c_i7_011_q, in_i_data_5_tpl};

    // element_extension8(BITJOIN,35)
    assign element_extension8_q = {c_i7_011_q, in_i_data_4_tpl};

    // element_extension6(BITJOIN,34)
    assign element_extension6_q = {c_i7_011_q, in_i_data_3_tpl};

    // c_i56_016(CONSTANT,13)
    assign c_i56_016_q = $unsigned(56'b00000000000000000000000000000000000000000000000000000000);

    // element_extension3(BITJOIN,33)
    assign element_extension3_q = {c_i7_011_q, in_i_data_0_tpl};

    // dsdk_ip_adapt_bitjoin1(BITJOIN,25)
    assign dsdk_ip_adapt_bitjoin1_q = {c_i32_025_q, element_extension23_q, element_extension21_q, element_extension19_q, element_extension17_q, in_i_data_8_tpl, c_i56_016_q, element_extension14_q, element_extension12_q, element_extension10_q, element_extension8_q, element_extension6_q, in_i_data_2_tpl, in_i_data_1_tpl, c_i56_016_q, element_extension3_q};

    // i_llvm_fpga_sfc_exit_s_c0_out_for_body8_ataxs_c0_exit108_atax0(EXTIFACE,36)
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body8_ataxs_c0_exit108_atax0_i_data = dsdk_ip_adapt_bitjoin1_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body8_ataxs_c0_exit108_atax0_i_stall = in_i_stall;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body8_ataxs_c0_exit108_atax0_i_valid = in_i_valid;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body8_ataxs_c0_exit108_atax0_i_stall_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_ataxs_c0_exit108_atax0_i_stall[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body8_ataxs_c0_exit108_atax0_i_valid_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_ataxs_c0_exit108_atax0_i_valid[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body8_ataxs_c0_exit108_atax0_o_almost_empty[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_ataxs_c0_exit108_atax0_o_almost_empty_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body8_ataxs_c0_exit108_atax0_o_empty[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_ataxs_c0_exit108_atax0_o_empty_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body8_ataxs_c0_exit108_atax0_o_stall[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_ataxs_c0_exit108_atax0_o_stall_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body8_ataxs_c0_exit108_atax0_o_valid[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_ataxs_c0_exit108_atax0_o_valid_bitsignaltemp;
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
    ) thei_llvm_fpga_sfc_exit_s_c0_out_for_body8_ataxs_c0_exit108_atax0 (
        .i_data(dsdk_ip_adapt_bitjoin1_q),
        .i_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_body8_ataxs_c0_exit108_atax0_i_stall_bitsignaltemp),
        .i_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_body8_ataxs_c0_exit108_atax0_i_valid_bitsignaltemp),
        .o_almost_empty(i_llvm_fpga_sfc_exit_s_c0_out_for_body8_ataxs_c0_exit108_atax0_o_almost_empty_bitsignaltemp),
        .o_data(i_llvm_fpga_sfc_exit_s_c0_out_for_body8_ataxs_c0_exit108_atax0_o_data),
        .o_empty(i_llvm_fpga_sfc_exit_s_c0_out_for_body8_ataxs_c0_exit108_atax0_o_empty_bitsignaltemp),
        .o_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_body8_ataxs_c0_exit108_atax0_o_stall_bitsignaltemp),
        .o_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_body8_ataxs_c0_exit108_atax0_o_valid_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out(GPOUT,54)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_ataxs_c0_exit108_atax0_o_stall;

    // ip_dsdk_adapt_bitselect51(BITSELECT,49)
    assign ip_dsdk_adapt_bitselect51_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_ataxs_c0_exit108_atax0_o_data[344:344];

    // adapt_scalar_trunc52(ROUND,11)
    assign adapt_scalar_trunc52_in = ip_dsdk_adapt_bitselect51_b;
    assign adapt_scalar_trunc52_q = adapt_scalar_trunc52_in[0:0];

    // ip_dsdk_adapt_bitselect49(BITSELECT,48)
    assign ip_dsdk_adapt_bitselect49_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_ataxs_c0_exit108_atax0_o_data[336:336];

    // adapt_scalar_trunc50(ROUND,10)
    assign adapt_scalar_trunc50_in = ip_dsdk_adapt_bitselect49_b;
    assign adapt_scalar_trunc50_q = adapt_scalar_trunc50_in[0:0];

    // ip_dsdk_adapt_bitselect47(BITSELECT,47)
    assign ip_dsdk_adapt_bitselect47_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_ataxs_c0_exit108_atax0_o_data[328:328];

    // adapt_scalar_trunc48(ROUND,9)
    assign adapt_scalar_trunc48_in = ip_dsdk_adapt_bitselect47_b;
    assign adapt_scalar_trunc48_q = adapt_scalar_trunc48_in[0:0];

    // ip_dsdk_adapt_bitselect45(BITSELECT,46)
    assign ip_dsdk_adapt_bitselect45_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_ataxs_c0_exit108_atax0_o_data[320:320];

    // adapt_scalar_trunc46(ROUND,8)
    assign adapt_scalar_trunc46_in = ip_dsdk_adapt_bitselect45_b;
    assign adapt_scalar_trunc46_q = adapt_scalar_trunc46_in[0:0];

    // ip_dsdk_adapt_bitselect43(BITSELECT,45)
    assign ip_dsdk_adapt_bitselect43_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_ataxs_c0_exit108_atax0_o_data[319:256];

    // ip_dsdk_adapt_bitselect41(BITSELECT,44)
    assign ip_dsdk_adapt_bitselect41_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_ataxs_c0_exit108_atax0_o_data[192:192];

    // adapt_scalar_trunc42(ROUND,7)
    assign adapt_scalar_trunc42_in = ip_dsdk_adapt_bitselect41_b;
    assign adapt_scalar_trunc42_q = adapt_scalar_trunc42_in[0:0];

    // ip_dsdk_adapt_bitselect39(BITSELECT,43)
    assign ip_dsdk_adapt_bitselect39_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_ataxs_c0_exit108_atax0_o_data[184:184];

    // adapt_scalar_trunc40(ROUND,6)
    assign adapt_scalar_trunc40_in = ip_dsdk_adapt_bitselect39_b;
    assign adapt_scalar_trunc40_q = adapt_scalar_trunc40_in[0:0];

    // ip_dsdk_adapt_bitselect37(BITSELECT,42)
    assign ip_dsdk_adapt_bitselect37_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_ataxs_c0_exit108_atax0_o_data[176:176];

    // adapt_scalar_trunc38(ROUND,5)
    assign adapt_scalar_trunc38_in = ip_dsdk_adapt_bitselect37_b;
    assign adapt_scalar_trunc38_q = adapt_scalar_trunc38_in[0:0];

    // ip_dsdk_adapt_bitselect35(BITSELECT,41)
    assign ip_dsdk_adapt_bitselect35_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_ataxs_c0_exit108_atax0_o_data[168:168];

    // adapt_scalar_trunc36(ROUND,4)
    assign adapt_scalar_trunc36_in = ip_dsdk_adapt_bitselect35_b;
    assign adapt_scalar_trunc36_q = adapt_scalar_trunc36_in[0:0];

    // ip_dsdk_adapt_bitselect33(BITSELECT,40)
    assign ip_dsdk_adapt_bitselect33_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_ataxs_c0_exit108_atax0_o_data[160:160];

    // adapt_scalar_trunc34(ROUND,3)
    assign adapt_scalar_trunc34_in = ip_dsdk_adapt_bitselect33_b;
    assign adapt_scalar_trunc34_q = adapt_scalar_trunc34_in[0:0];

    // ip_dsdk_adapt_bitselect31(BITSELECT,39)
    assign ip_dsdk_adapt_bitselect31_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_ataxs_c0_exit108_atax0_o_data[159:128];

    // ip_dsdk_adapt_bitselect29(BITSELECT,38)
    assign ip_dsdk_adapt_bitselect29_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_ataxs_c0_exit108_atax0_o_data[127:64];

    // ip_dsdk_adapt_bitselect27(BITSELECT,37)
    assign ip_dsdk_adapt_bitselect27_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_ataxs_c0_exit108_atax0_o_data[0:0];

    // adapt_scalar_trunc28(ROUND,2)
    assign adapt_scalar_trunc28_in = ip_dsdk_adapt_bitselect27_b;
    assign adapt_scalar_trunc28_q = adapt_scalar_trunc28_in[0:0];

    // dupName_0_sync_out_aunroll_x(GPOUT,56)@20000030
    assign out_o_almost_empty = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_ataxs_c0_exit108_atax0_o_almost_empty;
    assign out_o_data_0_tpl = adapt_scalar_trunc28_q;
    assign out_o_data_1_tpl = ip_dsdk_adapt_bitselect29_b;
    assign out_o_data_2_tpl = ip_dsdk_adapt_bitselect31_b;
    assign out_o_data_3_tpl = adapt_scalar_trunc34_q;
    assign out_o_data_4_tpl = adapt_scalar_trunc36_q;
    assign out_o_data_5_tpl = adapt_scalar_trunc38_q;
    assign out_o_data_6_tpl = adapt_scalar_trunc40_q;
    assign out_o_data_7_tpl = adapt_scalar_trunc42_q;
    assign out_o_data_8_tpl = ip_dsdk_adapt_bitselect43_b;
    assign out_o_data_9_tpl = adapt_scalar_trunc46_q;
    assign out_o_data_10_tpl = adapt_scalar_trunc48_q;
    assign out_o_data_11_tpl = adapt_scalar_trunc50_q;
    assign out_o_data_12_tpl = adapt_scalar_trunc52_q;
    assign out_o_empty = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_ataxs_c0_exit108_atax0_o_empty;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_body8_ataxs_c0_exit108_atax0_o_valid;

endmodule
