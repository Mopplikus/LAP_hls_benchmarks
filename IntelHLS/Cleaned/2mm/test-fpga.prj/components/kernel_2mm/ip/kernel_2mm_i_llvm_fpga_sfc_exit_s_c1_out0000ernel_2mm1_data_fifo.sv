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

// SystemVerilog created from i_llvm_fpga_sfc_exit_s_c1_out_for_body28_kernel_2mms_c1_exit_kernel_2mm1_data_fifo
// Created for function/kernel kernel_2mm
// SystemVerilog created on Tue Jun 13 01:31:47 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_2mm_i_llvm_fpga_sfc_exit_s_c1_out0000ernel_2mm1_data_fifo (
    output wire [0:0] out_o_almost_full,
    output wire [0:0] out_o_data_0_tpl,
    output wire [31:0] out_o_data_1_tpl,
    output wire [0:0] out_o_valid,
    input wire [0:0] in_i_data_0_tpl,
    input wire [31:0] in_i_data_1_tpl,
    input wire [0:0] in_i_valid,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc8_in;
    wire [0:0] adapt_scalar_trunc8_q;
    wire [23:0] c_i24_05_q;
    wire [6:0] c_i7_04_q;
    wire [63:0] dsdk_ip_adapt_bitjoin1_q;
    wire [7:0] element_extension3_q;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body28_kernel_2mms_c1_exit_kernel_2mm0_i_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body28_kernel_2mms_c1_exit_kernel_2mm0_i_stall;
    wire i_llvm_fpga_sfc_exit_s_c1_out_for_body28_kernel_2mms_c1_exit_kernel_2mm0_i_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body28_kernel_2mms_c1_exit_kernel_2mm0_i_valid;
    wire i_llvm_fpga_sfc_exit_s_c1_out_for_body28_kernel_2mms_c1_exit_kernel_2mm0_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body28_kernel_2mms_c1_exit_kernel_2mm0_o_almost_full;
    wire i_llvm_fpga_sfc_exit_s_c1_out_for_body28_kernel_2mms_c1_exit_kernel_2mm0_o_almost_full_bitsignaltemp;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body28_kernel_2mms_c1_exit_kernel_2mm0_o_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body28_kernel_2mms_c1_exit_kernel_2mm0_o_stall;
    wire i_llvm_fpga_sfc_exit_s_c1_out_for_body28_kernel_2mms_c1_exit_kernel_2mm0_o_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body28_kernel_2mms_c1_exit_kernel_2mm0_o_valid;
    wire i_llvm_fpga_sfc_exit_s_c1_out_for_body28_kernel_2mms_c1_exit_kernel_2mm0_o_valid_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect7_b;
    wire [31:0] ip_dsdk_adapt_bitselect9_b;


    // ip_dsdk_adapt_bitselect9(BITSELECT,11)
    assign ip_dsdk_adapt_bitselect9_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body28_kernel_2mms_c1_exit_kernel_2mm0_o_data[63:32];

    // ip_dsdk_adapt_bitselect7(BITSELECT,10)
    assign ip_dsdk_adapt_bitselect7_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body28_kernel_2mms_c1_exit_kernel_2mm0_o_data[0:0];

    // adapt_scalar_trunc8(ROUND,4)
    assign adapt_scalar_trunc8_in = ip_dsdk_adapt_bitselect7_b;
    assign adapt_scalar_trunc8_q = adapt_scalar_trunc8_in[0:0];

    // c_i24_05(CONSTANT,5)
    assign c_i24_05_q = $unsigned(24'b000000000000000000000000);

    // c_i7_04(CONSTANT,6)
    assign c_i7_04_q = $unsigned(7'b0000000);

    // element_extension3(BITJOIN,8)
    assign element_extension3_q = {c_i7_04_q, in_i_data_0_tpl};

    // dsdk_ip_adapt_bitjoin1(BITJOIN,7)
    assign dsdk_ip_adapt_bitjoin1_q = {in_i_data_1_tpl, c_i24_05_q, element_extension3_q};

    // i_llvm_fpga_sfc_exit_s_c1_out_for_body28_kernel_2mms_c1_exit_kernel_2mm0(EXTIFACE,9)
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body28_kernel_2mms_c1_exit_kernel_2mm0_i_data = dsdk_ip_adapt_bitjoin1_q;
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body28_kernel_2mms_c1_exit_kernel_2mm0_i_stall = in_i_stall;
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body28_kernel_2mms_c1_exit_kernel_2mm0_i_valid = in_i_valid;
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body28_kernel_2mms_c1_exit_kernel_2mm0_i_stall_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c1_out_for_body28_kernel_2mms_c1_exit_kernel_2mm0_i_stall[0];
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body28_kernel_2mms_c1_exit_kernel_2mm0_i_valid_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c1_out_for_body28_kernel_2mms_c1_exit_kernel_2mm0_i_valid[0];
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body28_kernel_2mms_c1_exit_kernel_2mm0_o_almost_full[0] = i_llvm_fpga_sfc_exit_s_c1_out_for_body28_kernel_2mms_c1_exit_kernel_2mm0_o_almost_full_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body28_kernel_2mms_c1_exit_kernel_2mm0_o_stall[0] = i_llvm_fpga_sfc_exit_s_c1_out_for_body28_kernel_2mms_c1_exit_kernel_2mm0_o_stall_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body28_kernel_2mms_c1_exit_kernel_2mm0_o_valid[0] = i_llvm_fpga_sfc_exit_s_c1_out_for_body28_kernel_2mms_c1_exit_kernel_2mm0_o_valid_bitsignaltemp;
    hld_fifo #(
        .DEPTH(32),
        .STYLE("ms"),
        .ASYNC_RESET(1),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .SYNCHRONIZE_RESET(0),
        .WIDTH(64)
    ) thei_llvm_fpga_sfc_exit_s_c1_out_for_body28_kernel_2mms_c1_exit_kernel_2mm0 (
        .i_data(dsdk_ip_adapt_bitjoin1_q),
        .i_stall(i_llvm_fpga_sfc_exit_s_c1_out_for_body28_kernel_2mms_c1_exit_kernel_2mm0_i_stall_bitsignaltemp),
        .i_valid(i_llvm_fpga_sfc_exit_s_c1_out_for_body28_kernel_2mms_c1_exit_kernel_2mm0_i_valid_bitsignaltemp),
        .o_almost_full(i_llvm_fpga_sfc_exit_s_c1_out_for_body28_kernel_2mms_c1_exit_kernel_2mm0_o_almost_full_bitsignaltemp),
        .o_data(i_llvm_fpga_sfc_exit_s_c1_out_for_body28_kernel_2mms_c1_exit_kernel_2mm0_o_data),
        .o_stall(i_llvm_fpga_sfc_exit_s_c1_out_for_body28_kernel_2mms_c1_exit_kernel_2mm0_o_stall_bitsignaltemp),
        .o_valid(i_llvm_fpga_sfc_exit_s_c1_out_for_body28_kernel_2mms_c1_exit_kernel_2mm0_o_valid_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_sync_out_aunroll_x(GPOUT,2)@20000000
    assign out_o_almost_full = i_llvm_fpga_sfc_exit_s_c1_out_for_body28_kernel_2mms_c1_exit_kernel_2mm0_o_almost_full;
    assign out_o_data_0_tpl = adapt_scalar_trunc8_q;
    assign out_o_data_1_tpl = ip_dsdk_adapt_bitselect9_b;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c1_out_for_body28_kernel_2mms_c1_exit_kernel_2mm0_o_valid;

    // sync_out(GPOUT,14)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c1_out_for_body28_kernel_2mms_c1_exit_kernel_2mm0_o_stall;

endmodule
