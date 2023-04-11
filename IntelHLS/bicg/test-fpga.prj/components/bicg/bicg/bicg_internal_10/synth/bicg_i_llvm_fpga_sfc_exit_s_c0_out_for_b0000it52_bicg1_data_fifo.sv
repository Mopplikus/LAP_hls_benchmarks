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

// SystemVerilog created from i_llvm_fpga_sfc_exit_s_c0_out_for_body_bicgs_c0_exit52_bicg1_data_fifo
// Created for function/kernel bicg
// SystemVerilog created on Fri Apr  7 18:01:04 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module bicg_i_llvm_fpga_sfc_exit_s_c0_out_for_b0000it52_bicg1_data_fifo (
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [0:0] in_i_data_0_tpl,
    input wire [63:0] in_i_data_1_tpl,
    input wire [63:0] in_i_data_2_tpl,
    input wire [0:0] in_i_data_3_tpl,
    input wire [31:0] in_i_data_4_tpl,
    input wire [0:0] in_i_data_5_tpl,
    input wire [0:0] in_i_data_6_tpl,
    input wire [0:0] in_i_data_7_tpl,
    input wire [0:0] in_i_data_8_tpl,
    input wire [0:0] in_i_data_9_tpl,
    input wire [0:0] in_i_data_10_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_o_almost_full,
    output wire [0:0] out_o_data_0_tpl,
    output wire [63:0] out_o_data_1_tpl,
    output wire [63:0] out_o_data_2_tpl,
    output wire [0:0] out_o_data_3_tpl,
    output wire [31:0] out_o_data_4_tpl,
    output wire [0:0] out_o_data_5_tpl,
    output wire [0:0] out_o_data_6_tpl,
    output wire [0:0] out_o_data_7_tpl,
    output wire [0:0] out_o_data_8_tpl,
    output wire [0:0] out_o_data_9_tpl,
    output wire [0:0] out_o_data_10_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc24_in;
    wire [0:0] adapt_scalar_trunc24_q;
    wire [0:0] adapt_scalar_trunc30_in;
    wire [0:0] adapt_scalar_trunc30_q;
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
    wire [0:0] adapt_scalar_trunc44_in;
    wire [0:0] adapt_scalar_trunc44_q;
    wire [15:0] c_i16_021_q;
    wire [23:0] c_i24_08_q;
    wire [55:0] c_i56_05_q;
    wire [6:0] c_i7_010_q;
    wire [319:0] dsdk_ip_adapt_bitjoin1_q;
    wire [7:0] element_extension11_q;
    wire [7:0] element_extension13_q;
    wire [7:0] element_extension15_q;
    wire [7:0] element_extension17_q;
    wire [7:0] element_extension19_q;
    wire [7:0] element_extension3_q;
    wire [7:0] element_extension6_q;
    wire [7:0] element_extension9_q;
    wire [319:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_bicgs_c0_exit52_bicg0_i_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_bicgs_c0_exit52_bicg0_i_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body_bicgs_c0_exit52_bicg0_i_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_bicgs_c0_exit52_bicg0_i_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body_bicgs_c0_exit52_bicg0_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_bicgs_c0_exit52_bicg0_o_almost_full;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body_bicgs_c0_exit52_bicg0_o_almost_full_bitsignaltemp;
    wire [319:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_bicgs_c0_exit52_bicg0_o_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_bicgs_c0_exit52_bicg0_o_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body_bicgs_c0_exit52_bicg0_o_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_bicgs_c0_exit52_bicg0_o_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body_bicgs_c0_exit52_bicg0_o_valid_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect23_b;
    wire [63:0] ip_dsdk_adapt_bitselect25_b;
    wire [63:0] ip_dsdk_adapt_bitselect27_b;
    wire [0:0] ip_dsdk_adapt_bitselect29_b;
    wire [31:0] ip_dsdk_adapt_bitselect31_b;
    wire [0:0] ip_dsdk_adapt_bitselect33_b;
    wire [0:0] ip_dsdk_adapt_bitselect35_b;
    wire [0:0] ip_dsdk_adapt_bitselect37_b;
    wire [0:0] ip_dsdk_adapt_bitselect39_b;
    wire [0:0] ip_dsdk_adapt_bitselect41_b;
    wire [0:0] ip_dsdk_adapt_bitselect43_b;


    // c_i16_021(CONSTANT,10)
    assign c_i16_021_q = $unsigned(16'b0000000000000000);

    // c_i7_010(CONSTANT,13)
    assign c_i7_010_q = $unsigned(7'b0000000);

    // element_extension19(BITJOIN,26)
    assign element_extension19_q = {c_i7_010_q, in_i_data_10_tpl};

    // element_extension17(BITJOIN,25)
    assign element_extension17_q = {c_i7_010_q, in_i_data_9_tpl};

    // element_extension15(BITJOIN,24)
    assign element_extension15_q = {c_i7_010_q, in_i_data_8_tpl};

    // element_extension13(BITJOIN,23)
    assign element_extension13_q = {c_i7_010_q, in_i_data_7_tpl};

    // element_extension11(BITJOIN,22)
    assign element_extension11_q = {c_i7_010_q, in_i_data_6_tpl};

    // element_extension9(BITJOIN,29)
    assign element_extension9_q = {c_i7_010_q, in_i_data_5_tpl};

    // c_i24_08(CONSTANT,11)
    assign c_i24_08_q = $unsigned(24'b000000000000000000000000);

    // element_extension6(BITJOIN,28)
    assign element_extension6_q = {c_i7_010_q, in_i_data_3_tpl};

    // c_i56_05(CONSTANT,12)
    assign c_i56_05_q = $unsigned(56'b00000000000000000000000000000000000000000000000000000000);

    // element_extension3(BITJOIN,27)
    assign element_extension3_q = {c_i7_010_q, in_i_data_0_tpl};

    // dsdk_ip_adapt_bitjoin1(BITJOIN,21)
    assign dsdk_ip_adapt_bitjoin1_q = {c_i16_021_q, element_extension19_q, element_extension17_q, element_extension15_q, element_extension13_q, element_extension11_q, element_extension9_q, in_i_data_4_tpl, c_i24_08_q, element_extension6_q, in_i_data_2_tpl, in_i_data_1_tpl, c_i56_05_q, element_extension3_q};

    // i_llvm_fpga_sfc_exit_s_c0_out_for_body_bicgs_c0_exit52_bicg0(EXTIFACE,30)
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body_bicgs_c0_exit52_bicg0_i_data = dsdk_ip_adapt_bitjoin1_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body_bicgs_c0_exit52_bicg0_i_stall = in_i_stall;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body_bicgs_c0_exit52_bicg0_i_valid = in_i_valid;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body_bicgs_c0_exit52_bicg0_i_stall_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body_bicgs_c0_exit52_bicg0_i_stall[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body_bicgs_c0_exit52_bicg0_i_valid_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body_bicgs_c0_exit52_bicg0_i_valid[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body_bicgs_c0_exit52_bicg0_o_almost_full[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body_bicgs_c0_exit52_bicg0_o_almost_full_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body_bicgs_c0_exit52_bicg0_o_stall[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body_bicgs_c0_exit52_bicg0_o_stall_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body_bicgs_c0_exit52_bicg0_o_valid[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body_bicgs_c0_exit52_bicg0_o_valid_bitsignaltemp;
    hld_fifo #(
        .DEPTH(32),
        .STYLE("ms"),
        .ASYNC_RESET(1),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .SYNCHRONIZE_RESET(0),
        .WIDTH(320)
    ) thei_llvm_fpga_sfc_exit_s_c0_out_for_body_bicgs_c0_exit52_bicg0 (
        .i_data(dsdk_ip_adapt_bitjoin1_q),
        .i_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_body_bicgs_c0_exit52_bicg0_i_stall_bitsignaltemp),
        .i_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_body_bicgs_c0_exit52_bicg0_i_valid_bitsignaltemp),
        .o_almost_full(i_llvm_fpga_sfc_exit_s_c0_out_for_body_bicgs_c0_exit52_bicg0_o_almost_full_bitsignaltemp),
        .o_data(i_llvm_fpga_sfc_exit_s_c0_out_for_body_bicgs_c0_exit52_bicg0_o_data),
        .o_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_body_bicgs_c0_exit52_bicg0_o_stall_bitsignaltemp),
        .o_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_body_bicgs_c0_exit52_bicg0_o_valid_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out(GPOUT,46)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_body_bicgs_c0_exit52_bicg0_o_stall;

    // ip_dsdk_adapt_bitselect43(BITSELECT,41)
    assign ip_dsdk_adapt_bitselect43_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_bicgs_c0_exit52_bicg0_o_data[296:296];

    // adapt_scalar_trunc44(ROUND,9)
    assign adapt_scalar_trunc44_in = ip_dsdk_adapt_bitselect43_b;
    assign adapt_scalar_trunc44_q = adapt_scalar_trunc44_in[0:0];

    // ip_dsdk_adapt_bitselect41(BITSELECT,40)
    assign ip_dsdk_adapt_bitselect41_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_bicgs_c0_exit52_bicg0_o_data[288:288];

    // adapt_scalar_trunc42(ROUND,8)
    assign adapt_scalar_trunc42_in = ip_dsdk_adapt_bitselect41_b;
    assign adapt_scalar_trunc42_q = adapt_scalar_trunc42_in[0:0];

    // ip_dsdk_adapt_bitselect39(BITSELECT,39)
    assign ip_dsdk_adapt_bitselect39_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_bicgs_c0_exit52_bicg0_o_data[280:280];

    // adapt_scalar_trunc40(ROUND,7)
    assign adapt_scalar_trunc40_in = ip_dsdk_adapt_bitselect39_b;
    assign adapt_scalar_trunc40_q = adapt_scalar_trunc40_in[0:0];

    // ip_dsdk_adapt_bitselect37(BITSELECT,38)
    assign ip_dsdk_adapt_bitselect37_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_bicgs_c0_exit52_bicg0_o_data[272:272];

    // adapt_scalar_trunc38(ROUND,6)
    assign adapt_scalar_trunc38_in = ip_dsdk_adapt_bitselect37_b;
    assign adapt_scalar_trunc38_q = adapt_scalar_trunc38_in[0:0];

    // ip_dsdk_adapt_bitselect35(BITSELECT,37)
    assign ip_dsdk_adapt_bitselect35_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_bicgs_c0_exit52_bicg0_o_data[264:264];

    // adapt_scalar_trunc36(ROUND,5)
    assign adapt_scalar_trunc36_in = ip_dsdk_adapt_bitselect35_b;
    assign adapt_scalar_trunc36_q = adapt_scalar_trunc36_in[0:0];

    // ip_dsdk_adapt_bitselect33(BITSELECT,36)
    assign ip_dsdk_adapt_bitselect33_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_bicgs_c0_exit52_bicg0_o_data[256:256];

    // adapt_scalar_trunc34(ROUND,4)
    assign adapt_scalar_trunc34_in = ip_dsdk_adapt_bitselect33_b;
    assign adapt_scalar_trunc34_q = adapt_scalar_trunc34_in[0:0];

    // ip_dsdk_adapt_bitselect31(BITSELECT,35)
    assign ip_dsdk_adapt_bitselect31_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_bicgs_c0_exit52_bicg0_o_data[255:224];

    // ip_dsdk_adapt_bitselect29(BITSELECT,34)
    assign ip_dsdk_adapt_bitselect29_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_bicgs_c0_exit52_bicg0_o_data[192:192];

    // adapt_scalar_trunc30(ROUND,3)
    assign adapt_scalar_trunc30_in = ip_dsdk_adapt_bitselect29_b;
    assign adapt_scalar_trunc30_q = adapt_scalar_trunc30_in[0:0];

    // ip_dsdk_adapt_bitselect27(BITSELECT,33)
    assign ip_dsdk_adapt_bitselect27_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_bicgs_c0_exit52_bicg0_o_data[191:128];

    // ip_dsdk_adapt_bitselect25(BITSELECT,32)
    assign ip_dsdk_adapt_bitselect25_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_bicgs_c0_exit52_bicg0_o_data[127:64];

    // ip_dsdk_adapt_bitselect23(BITSELECT,31)
    assign ip_dsdk_adapt_bitselect23_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_bicgs_c0_exit52_bicg0_o_data[0:0];

    // adapt_scalar_trunc24(ROUND,2)
    assign adapt_scalar_trunc24_in = ip_dsdk_adapt_bitselect23_b;
    assign adapt_scalar_trunc24_q = adapt_scalar_trunc24_in[0:0];

    // dupName_0_sync_out_aunroll_x(GPOUT,48)@20000003
    assign out_o_almost_full = i_llvm_fpga_sfc_exit_s_c0_out_for_body_bicgs_c0_exit52_bicg0_o_almost_full;
    assign out_o_data_0_tpl = adapt_scalar_trunc24_q;
    assign out_o_data_1_tpl = ip_dsdk_adapt_bitselect25_b;
    assign out_o_data_2_tpl = ip_dsdk_adapt_bitselect27_b;
    assign out_o_data_3_tpl = adapt_scalar_trunc30_q;
    assign out_o_data_4_tpl = ip_dsdk_adapt_bitselect31_b;
    assign out_o_data_5_tpl = adapt_scalar_trunc34_q;
    assign out_o_data_6_tpl = adapt_scalar_trunc36_q;
    assign out_o_data_7_tpl = adapt_scalar_trunc38_q;
    assign out_o_data_8_tpl = adapt_scalar_trunc40_q;
    assign out_o_data_9_tpl = adapt_scalar_trunc42_q;
    assign out_o_data_10_tpl = adapt_scalar_trunc44_q;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_body_bicgs_c0_exit52_bicg0_o_valid;

endmodule
