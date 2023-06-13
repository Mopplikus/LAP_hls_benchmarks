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

// SystemVerilog created from i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax0
// Created for function/kernel atax
// SystemVerilog created on Tue Jun 13 01:54:00 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_i_llvm_fpga_sfc_exit_s_c0_out_for_body3_s_c0_exit96_atax0 (
    output wire [0:0] out_data_out_0_tpl,
    output wire [0:0] out_data_out_1_tpl,
    output wire [0:0] out_data_out_2_tpl,
    output wire [63:0] out_data_out_3_tpl,
    output wire [31:0] out_data_out_4_tpl,
    output wire [63:0] out_data_out_5_tpl,
    output wire [0:0] out_data_out_6_tpl,
    output wire [0:0] out_data_out_7_tpl,
    output wire [63:0] out_data_out_8_tpl,
    output wire [0:0] out_data_out_9_tpl,
    output wire [63:0] out_data_out_10_tpl,
    output wire [0:0] out_data_out_11_tpl,
    output wire [0:0] out_data_out_12_tpl,
    output wire [0:0] out_data_out_13_tpl,
    output wire [31:0] out_data_out_14_tpl,
    output wire [0:0] out_enable,
    output wire [0:0] out_valid_mask,
    output wire [0:0] out_valid_out,
    input wire [0:0] in_data_in_0_tpl,
    input wire [0:0] in_data_in_1_tpl,
    input wire [0:0] in_data_in_2_tpl,
    input wire [63:0] in_data_in_3_tpl,
    input wire [31:0] in_data_in_4_tpl,
    input wire [63:0] in_data_in_5_tpl,
    input wire [0:0] in_data_in_6_tpl,
    input wire [0:0] in_data_in_7_tpl,
    input wire [63:0] in_data_in_8_tpl,
    input wire [0:0] in_data_in_9_tpl,
    input wire [63:0] in_data_in_10_tpl,
    input wire [0:0] in_data_in_11_tpl,
    input wire [0:0] in_data_in_12_tpl,
    input wire [0:0] in_data_in_13_tpl,
    input wire [31:0] in_data_in_14_tpl,
    input wire [0:0] in_input_accepted,
    input wire [0:0] in_valid_in,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_entry,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] c_i32_011_q;
    wire [39:0] c_i40_010_q;
    wire [47:0] c_i48_016_q;
    wire [55:0] c_i56_019_q;
    wire [6:0] c_i7_013_q;
    wire [7:0] c_i8_026_q;
    wire [575:0] dsdk_ip_adapt_bitjoin2_q;
    wire [7:0] element_extension12_q;
    wire [7:0] element_extension14_q;
    wire [7:0] element_extension17_q;
    wire [7:0] element_extension20_q;
    wire [7:0] element_extension22_q;
    wire [7:0] element_extension24_q;
    wire [7:0] element_extension4_q;
    wire [7:0] element_extension6_q;
    wire [7:0] element_extension8_q;
    wire [575:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_data_in;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_dec_pipelined_thread;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_dec_pipelined_thread_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_inc_pipelined_thread;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_inc_pipelined_thread_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_input_accepted;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_input_accepted_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_stall_in;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_stall_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_valid_in;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_valid_in_bitsignaltemp;
    wire [575:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_data_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_enable;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_enable_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_stall_entry;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_stall_entry_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_valid_mask;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_valid_mask_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_valid_out;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_valid_out_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect28_b;
    wire [0:0] ip_dsdk_adapt_bitselect30_b;
    wire [0:0] ip_dsdk_adapt_bitselect32_b;
    wire [63:0] ip_dsdk_adapt_bitselect34_b;
    wire [31:0] ip_dsdk_adapt_bitselect36_b;
    wire [63:0] ip_dsdk_adapt_bitselect38_b;
    wire [0:0] ip_dsdk_adapt_bitselect40_b;
    wire [0:0] ip_dsdk_adapt_bitselect42_b;
    wire [63:0] ip_dsdk_adapt_bitselect44_b;
    wire [0:0] ip_dsdk_adapt_bitselect46_b;
    wire [63:0] ip_dsdk_adapt_bitselect48_b;
    wire [0:0] ip_dsdk_adapt_bitselect50_b;
    wire [0:0] ip_dsdk_adapt_bitselect52_b;
    wire [0:0] ip_dsdk_adapt_bitselect54_b;
    wire [31:0] ip_dsdk_adapt_bitselect56_b;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // c_i8_026(CONSTANT,19)
    assign c_i8_026_q = $unsigned(8'b00000000);

    // c_i7_013(CONSTANT,10)
    assign c_i7_013_q = $unsigned(7'b0000000);

    // element_extension24(BITJOIN,26)
    assign element_extension24_q = {c_i7_013_q, in_data_in_13_tpl};

    // element_extension22(BITJOIN,25)
    assign element_extension22_q = {c_i7_013_q, in_data_in_12_tpl};

    // element_extension20(BITJOIN,24)
    assign element_extension20_q = {c_i7_013_q, in_data_in_11_tpl};

    // c_i56_019(CONSTANT,9)
    assign c_i56_019_q = $unsigned(56'b00000000000000000000000000000000000000000000000000000000);

    // element_extension17(BITJOIN,23)
    assign element_extension17_q = {c_i7_013_q, in_data_in_9_tpl};

    // c_i48_016(CONSTANT,8)
    assign c_i48_016_q = $unsigned(48'b000000000000000000000000000000000000000000000000);

    // element_extension14(BITJOIN,22)
    assign element_extension14_q = {c_i7_013_q, in_data_in_7_tpl};

    // element_extension12(BITJOIN,21)
    assign element_extension12_q = {c_i7_013_q, in_data_in_6_tpl};

    // c_i32_011(CONSTANT,6)
    assign c_i32_011_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i40_010(CONSTANT,7)
    assign c_i40_010_q = $unsigned(40'b0000000000000000000000000000000000000000);

    // element_extension8(BITJOIN,29)
    assign element_extension8_q = {c_i7_013_q, in_data_in_2_tpl};

    // element_extension6(BITJOIN,28)
    assign element_extension6_q = {c_i7_013_q, in_data_in_1_tpl};

    // element_extension4(BITJOIN,27)
    assign element_extension4_q = {c_i7_013_q, in_data_in_0_tpl};

    // dsdk_ip_adapt_bitjoin2(BITJOIN,20)
    assign dsdk_ip_adapt_bitjoin2_q = {in_data_in_14_tpl, c_i8_026_q, element_extension24_q, element_extension22_q, element_extension20_q, in_data_in_10_tpl, c_i56_019_q, element_extension17_q, in_data_in_8_tpl, c_i48_016_q, element_extension14_q, element_extension12_q, in_data_in_5_tpl, c_i32_011_q, in_data_in_4_tpl, in_data_in_3_tpl, c_i40_010_q, element_extension8_q, element_extension6_q, element_extension4_q};

    // i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1(EXTIFACE,30)
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_data_in = dsdk_ip_adapt_bitjoin2_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_dec_pipelined_thread = GND_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_inc_pipelined_thread = GND_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_input_accepted = in_input_accepted;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_stall_in = in_stall_in;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_valid_in = in_valid_in;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_dec_pipelined_thread_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_dec_pipelined_thread[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_inc_pipelined_thread_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_inc_pipelined_thread[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_input_accepted_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_input_accepted[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_stall_in_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_stall_in[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_valid_in_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_valid_in[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_enable[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_enable_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_stall_entry[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_stall_entry_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_valid_mask[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_valid_mask_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_valid_out[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_valid_out_bitsignaltemp;
    acl_enable_sink #(
        .PIPELINE_DEPTH(5),
        .SCHEDULEII(1),
        .ASYNC_RESET(1),
        .DATA_WIDTH(576),
        .IP_PIPELINE_LATENCY_PLUS1(1),
        .SYNCHRONIZE_RESET(0)
    ) thei_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1 (
        .data_in(dsdk_ip_adapt_bitjoin2_q),
        .dec_pipelined_thread(i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_dec_pipelined_thread_bitsignaltemp),
        .inc_pipelined_thread(i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_inc_pipelined_thread_bitsignaltemp),
        .input_accepted(i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_input_accepted_bitsignaltemp),
        .stall_in(i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_stall_in_bitsignaltemp),
        .valid_in(i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_valid_in_bitsignaltemp),
        .data_out(i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_data_out),
        .enable(i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_enable_bitsignaltemp),
        .stall_entry(i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_stall_entry_bitsignaltemp),
        .valid_mask(i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_valid_mask_bitsignaltemp),
        .valid_out(i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_valid_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // ip_dsdk_adapt_bitselect56(BITSELECT,45)
    assign ip_dsdk_adapt_bitselect56_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_data_out[575:544];

    // ip_dsdk_adapt_bitselect54(BITSELECT,44)
    assign ip_dsdk_adapt_bitselect54_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_data_out[528:528];

    // ip_dsdk_adapt_bitselect52(BITSELECT,43)
    assign ip_dsdk_adapt_bitselect52_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_data_out[520:520];

    // ip_dsdk_adapt_bitselect50(BITSELECT,42)
    assign ip_dsdk_adapt_bitselect50_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_data_out[512:512];

    // ip_dsdk_adapt_bitselect48(BITSELECT,41)
    assign ip_dsdk_adapt_bitselect48_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_data_out[511:448];

    // ip_dsdk_adapt_bitselect46(BITSELECT,40)
    assign ip_dsdk_adapt_bitselect46_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_data_out[384:384];

    // ip_dsdk_adapt_bitselect44(BITSELECT,39)
    assign ip_dsdk_adapt_bitselect44_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_data_out[383:320];

    // ip_dsdk_adapt_bitselect42(BITSELECT,38)
    assign ip_dsdk_adapt_bitselect42_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_data_out[264:264];

    // ip_dsdk_adapt_bitselect40(BITSELECT,37)
    assign ip_dsdk_adapt_bitselect40_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_data_out[256:256];

    // ip_dsdk_adapt_bitselect38(BITSELECT,36)
    assign ip_dsdk_adapt_bitselect38_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_data_out[255:192];

    // ip_dsdk_adapt_bitselect36(BITSELECT,35)
    assign ip_dsdk_adapt_bitselect36_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_data_out[159:128];

    // ip_dsdk_adapt_bitselect34(BITSELECT,34)
    assign ip_dsdk_adapt_bitselect34_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_data_out[127:64];

    // ip_dsdk_adapt_bitselect32(BITSELECT,33)
    assign ip_dsdk_adapt_bitselect32_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_data_out[16:16];

    // ip_dsdk_adapt_bitselect30(BITSELECT,32)
    assign ip_dsdk_adapt_bitselect30_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_data_out[8:8];

    // ip_dsdk_adapt_bitselect28(BITSELECT,31)
    assign ip_dsdk_adapt_bitselect28_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_data_out[0:0];

    // dupName_0_sync_out_aunroll_x(GPOUT,2)@6
    assign out_data_out_0_tpl = ip_dsdk_adapt_bitselect28_b;
    assign out_data_out_1_tpl = ip_dsdk_adapt_bitselect30_b;
    assign out_data_out_2_tpl = ip_dsdk_adapt_bitselect32_b;
    assign out_data_out_3_tpl = ip_dsdk_adapt_bitselect34_b;
    assign out_data_out_4_tpl = ip_dsdk_adapt_bitselect36_b;
    assign out_data_out_5_tpl = ip_dsdk_adapt_bitselect38_b;
    assign out_data_out_6_tpl = ip_dsdk_adapt_bitselect40_b;
    assign out_data_out_7_tpl = ip_dsdk_adapt_bitselect42_b;
    assign out_data_out_8_tpl = ip_dsdk_adapt_bitselect44_b;
    assign out_data_out_9_tpl = ip_dsdk_adapt_bitselect46_b;
    assign out_data_out_10_tpl = ip_dsdk_adapt_bitselect48_b;
    assign out_data_out_11_tpl = ip_dsdk_adapt_bitselect50_b;
    assign out_data_out_12_tpl = ip_dsdk_adapt_bitselect52_b;
    assign out_data_out_13_tpl = ip_dsdk_adapt_bitselect54_b;
    assign out_data_out_14_tpl = ip_dsdk_adapt_bitselect56_b;
    assign out_enable = i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_enable;
    assign out_valid_mask = i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_valid_mask;
    assign out_valid_out = i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_valid_out;

    // sync_out(GPOUT,47)@20000000
    assign out_stall_entry = i_llvm_fpga_sfc_exit_s_c0_out_for_body3_ataxs_c0_exit96_atax1_stall_entry;

endmodule
