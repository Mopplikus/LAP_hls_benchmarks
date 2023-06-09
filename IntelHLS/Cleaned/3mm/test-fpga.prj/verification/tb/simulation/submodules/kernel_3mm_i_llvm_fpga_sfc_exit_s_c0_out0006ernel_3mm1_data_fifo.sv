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

// SystemVerilog created from i_llvm_fpga_sfc_exit_s_c0_out_for_cond60_preheader_kernel_3mms_c0_exit451_kernel_3mm1_data_fifo
// Created for function/kernel kernel_3mm
// SystemVerilog created on Tue Jun 13 01:45:41 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_i_llvm_fpga_sfc_exit_s_c0_out0006ernel_3mm1_data_fifo (
    output wire [0:0] out_o_almost_full,
    output wire [0:0] out_o_data_0_tpl,
    output wire [31:0] out_o_data_1_tpl,
    output wire [0:0] out_o_data_2_tpl,
    output wire [0:0] out_o_data_3_tpl,
    output wire [0:0] out_o_data_4_tpl,
    output wire [0:0] out_o_valid,
    input wire [0:0] in_i_data_0_tpl,
    input wire [31:0] in_i_data_1_tpl,
    input wire [0:0] in_i_data_2_tpl,
    input wire [0:0] in_i_data_3_tpl,
    input wire [0:0] in_i_data_4_tpl,
    input wire [0:0] in_i_valid,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc15_in;
    wire [0:0] adapt_scalar_trunc15_q;
    wire [0:0] adapt_scalar_trunc19_in;
    wire [0:0] adapt_scalar_trunc19_q;
    wire [0:0] adapt_scalar_trunc21_in;
    wire [0:0] adapt_scalar_trunc21_q;
    wire [0:0] adapt_scalar_trunc23_in;
    wire [0:0] adapt_scalar_trunc23_q;
    wire [23:0] c_i24_05_q;
    wire [6:0] c_i7_011_q;
    wire [7:0] c_i8_012_q;
    wire [95:0] dsdk_ip_adapt_bitjoin1_q;
    wire [7:0] element_extension10_q;
    wire [7:0] element_extension3_q;
    wire [7:0] element_extension6_q;
    wire [7:0] element_extension8_q;
    wire [95:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond60_preheader_kernel_3mms_c0_exit451_kernel_3mm0_i_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond60_preheader_kernel_3mms_c0_exit451_kernel_3mm0_i_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond60_preheader_kernel_3mms_c0_exit451_kernel_3mm0_i_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond60_preheader_kernel_3mms_c0_exit451_kernel_3mm0_i_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond60_preheader_kernel_3mms_c0_exit451_kernel_3mm0_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond60_preheader_kernel_3mms_c0_exit451_kernel_3mm0_o_almost_full;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond60_preheader_kernel_3mms_c0_exit451_kernel_3mm0_o_almost_full_bitsignaltemp;
    wire [95:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond60_preheader_kernel_3mms_c0_exit451_kernel_3mm0_o_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond60_preheader_kernel_3mms_c0_exit451_kernel_3mm0_o_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond60_preheader_kernel_3mms_c0_exit451_kernel_3mm0_o_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond60_preheader_kernel_3mms_c0_exit451_kernel_3mm0_o_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond60_preheader_kernel_3mms_c0_exit451_kernel_3mm0_o_valid_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect14_b;
    wire [31:0] ip_dsdk_adapt_bitselect16_b;
    wire [0:0] ip_dsdk_adapt_bitselect18_b;
    wire [0:0] ip_dsdk_adapt_bitselect20_b;
    wire [0:0] ip_dsdk_adapt_bitselect22_b;


    // ip_dsdk_adapt_bitselect22(BITSELECT,24)
    assign ip_dsdk_adapt_bitselect22_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond60_preheader_kernel_3mms_c0_exit451_kernel_3mm0_o_data[80:80];

    // adapt_scalar_trunc23(ROUND,7)
    assign adapt_scalar_trunc23_in = ip_dsdk_adapt_bitselect22_b;
    assign adapt_scalar_trunc23_q = adapt_scalar_trunc23_in[0:0];

    // ip_dsdk_adapt_bitselect20(BITSELECT,23)
    assign ip_dsdk_adapt_bitselect20_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond60_preheader_kernel_3mms_c0_exit451_kernel_3mm0_o_data[72:72];

    // adapt_scalar_trunc21(ROUND,6)
    assign adapt_scalar_trunc21_in = ip_dsdk_adapt_bitselect20_b;
    assign adapt_scalar_trunc21_q = adapt_scalar_trunc21_in[0:0];

    // ip_dsdk_adapt_bitselect18(BITSELECT,22)
    assign ip_dsdk_adapt_bitselect18_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond60_preheader_kernel_3mms_c0_exit451_kernel_3mm0_o_data[64:64];

    // adapt_scalar_trunc19(ROUND,5)
    assign adapt_scalar_trunc19_in = ip_dsdk_adapt_bitselect18_b;
    assign adapt_scalar_trunc19_q = adapt_scalar_trunc19_in[0:0];

    // ip_dsdk_adapt_bitselect16(BITSELECT,21)
    assign ip_dsdk_adapt_bitselect16_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond60_preheader_kernel_3mms_c0_exit451_kernel_3mm0_o_data[63:32];

    // ip_dsdk_adapt_bitselect14(BITSELECT,20)
    assign ip_dsdk_adapt_bitselect14_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond60_preheader_kernel_3mms_c0_exit451_kernel_3mm0_o_data[0:0];

    // adapt_scalar_trunc15(ROUND,4)
    assign adapt_scalar_trunc15_in = ip_dsdk_adapt_bitselect14_b;
    assign adapt_scalar_trunc15_q = adapt_scalar_trunc15_in[0:0];

    // c_i8_012(CONSTANT,13)
    assign c_i8_012_q = $unsigned(8'b00000000);

    // c_i7_011(CONSTANT,9)
    assign c_i7_011_q = $unsigned(7'b0000000);

    // element_extension10(BITJOIN,15)
    assign element_extension10_q = {c_i7_011_q, in_i_data_4_tpl};

    // element_extension8(BITJOIN,18)
    assign element_extension8_q = {c_i7_011_q, in_i_data_3_tpl};

    // element_extension6(BITJOIN,17)
    assign element_extension6_q = {c_i7_011_q, in_i_data_2_tpl};

    // c_i24_05(CONSTANT,8)
    assign c_i24_05_q = $unsigned(24'b000000000000000000000000);

    // element_extension3(BITJOIN,16)
    assign element_extension3_q = {c_i7_011_q, in_i_data_0_tpl};

    // dsdk_ip_adapt_bitjoin1(BITJOIN,14)
    assign dsdk_ip_adapt_bitjoin1_q = {c_i8_012_q, element_extension10_q, element_extension8_q, element_extension6_q, in_i_data_1_tpl, c_i24_05_q, element_extension3_q};

    // i_llvm_fpga_sfc_exit_s_c0_out_for_cond60_preheader_kernel_3mms_c0_exit451_kernel_3mm0(EXTIFACE,19)
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond60_preheader_kernel_3mms_c0_exit451_kernel_3mm0_i_data = dsdk_ip_adapt_bitjoin1_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond60_preheader_kernel_3mms_c0_exit451_kernel_3mm0_i_stall = in_i_stall;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond60_preheader_kernel_3mms_c0_exit451_kernel_3mm0_i_valid = in_i_valid;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond60_preheader_kernel_3mms_c0_exit451_kernel_3mm0_i_stall_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_cond60_preheader_kernel_3mms_c0_exit451_kernel_3mm0_i_stall[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond60_preheader_kernel_3mms_c0_exit451_kernel_3mm0_i_valid_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_cond60_preheader_kernel_3mms_c0_exit451_kernel_3mm0_i_valid[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond60_preheader_kernel_3mms_c0_exit451_kernel_3mm0_o_almost_full[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond60_preheader_kernel_3mms_c0_exit451_kernel_3mm0_o_almost_full_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond60_preheader_kernel_3mms_c0_exit451_kernel_3mm0_o_stall[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond60_preheader_kernel_3mms_c0_exit451_kernel_3mm0_o_stall_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond60_preheader_kernel_3mms_c0_exit451_kernel_3mm0_o_valid[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond60_preheader_kernel_3mms_c0_exit451_kernel_3mm0_o_valid_bitsignaltemp;
    hld_fifo #(
        .DEPTH(32),
        .STYLE("ms"),
        .ASYNC_RESET(1),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .SYNCHRONIZE_RESET(0),
        .WIDTH(96)
    ) thei_llvm_fpga_sfc_exit_s_c0_out_for_cond60_preheader_kernel_3mms_c0_exit451_kernel_3mm0 (
        .i_data(dsdk_ip_adapt_bitjoin1_q),
        .i_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_cond60_preheader_kernel_3mms_c0_exit451_kernel_3mm0_i_stall_bitsignaltemp),
        .i_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_cond60_preheader_kernel_3mms_c0_exit451_kernel_3mm0_i_valid_bitsignaltemp),
        .o_almost_full(i_llvm_fpga_sfc_exit_s_c0_out_for_cond60_preheader_kernel_3mms_c0_exit451_kernel_3mm0_o_almost_full_bitsignaltemp),
        .o_data(i_llvm_fpga_sfc_exit_s_c0_out_for_cond60_preheader_kernel_3mms_c0_exit451_kernel_3mm0_o_data),
        .o_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_cond60_preheader_kernel_3mms_c0_exit451_kernel_3mm0_o_stall_bitsignaltemp),
        .o_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_cond60_preheader_kernel_3mms_c0_exit451_kernel_3mm0_o_valid_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_sync_out_aunroll_x(GPOUT,2)@20000000
    assign out_o_almost_full = i_llvm_fpga_sfc_exit_s_c0_out_for_cond60_preheader_kernel_3mms_c0_exit451_kernel_3mm0_o_almost_full;
    assign out_o_data_0_tpl = adapt_scalar_trunc15_q;
    assign out_o_data_1_tpl = ip_dsdk_adapt_bitselect16_b;
    assign out_o_data_2_tpl = adapt_scalar_trunc19_q;
    assign out_o_data_3_tpl = adapt_scalar_trunc21_q;
    assign out_o_data_4_tpl = adapt_scalar_trunc23_q;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_cond60_preheader_kernel_3mms_c0_exit451_kernel_3mm0_o_valid;

    // sync_out(GPOUT,27)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_cond60_preheader_kernel_3mms_c0_exit451_kernel_3mm0_o_stall;

endmodule
