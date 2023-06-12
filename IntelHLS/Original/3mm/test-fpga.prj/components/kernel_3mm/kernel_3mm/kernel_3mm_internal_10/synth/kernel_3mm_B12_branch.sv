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

// SystemVerilog created from kernel_3mm_B12_branch
// Created for function/kernel kernel_3mm
// SystemVerilog created on Thu Apr 27 14:26:49 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_B12_branch (
    input wire [0:0] in_almost_empty_in,
    input wire [0:0] in_c0_exe1601,
    input wire [31:0] in_c0_exe3603,
    input wire [0:0] in_c0_exe5605,
    input wire [0:0] in_c0_exe6606,
    input wire [63:0] in_c0_exe7607,
    input wire [0:0] in_c0_exe8608,
    input wire [0:0] in_empty_in,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe1601,
    output wire [31:0] out_c0_exe3603,
    output wire [0:0] out_c0_exe6606,
    output wire [63:0] out_c0_exe7607,
    output wire [0:0] out_c0_exe8608,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc10_in;
    wire [0:0] adapt_scalar_trunc10_q;
    wire [0:0] adapt_scalar_trunc2_in;
    wire [0:0] adapt_scalar_trunc2_q;
    wire [0:0] adapt_scalar_trunc6_in;
    wire [0:0] adapt_scalar_trunc6_q;
    wire [6:0] c_i7_01_q;
    wire [7:0] element_extension0_q;
    wire [7:0] element_extension4_q;
    wire [7:0] element_extension8_q;
    wire [119:0] kernel_3mm_B12_branch_data_pack_q;
    wire [7:0] kernel_3mm_B12_branch_data_unpack_0_b;
    wire [31:0] kernel_3mm_B12_branch_data_unpack_1_b;
    wire [7:0] kernel_3mm_B12_branch_data_unpack_2_b;
    wire [63:0] kernel_3mm_B12_branch_data_unpack_3_b;
    wire [7:0] kernel_3mm_B12_branch_data_unpack_4_b;
    wire [0:0] kernel_3mm_B12_branch_valid_and_q;
    reg [0:0] rst_sync_rst_sclrn;


    // c_i7_01(CONSTANT,5)
    assign c_i7_01_q = $unsigned(7'b0000000);

    // element_extension8(BITJOIN,10)
    assign element_extension8_q = {c_i7_01_q, in_c0_exe8608};

    // element_extension4(BITJOIN,9)
    assign element_extension4_q = {c_i7_01_q, in_c0_exe6606};

    // element_extension0(BITJOIN,8)
    assign element_extension0_q = {c_i7_01_q, in_c0_exe1601};

    // kernel_3mm_B12_branch_data_pack(BITJOIN,21)
    assign kernel_3mm_B12_branch_data_pack_q = {element_extension8_q, in_c0_exe7607, element_extension4_q, in_c0_exe3603, element_extension0_q};

    // kernel_3mm_B12_branch_data_unpack_0(BITSELECT,22)
    assign kernel_3mm_B12_branch_data_unpack_0_b = kernel_3mm_B12_branch_data_pack_q[7:0];

    // adapt_scalar_trunc2(ROUND,3)
    assign adapt_scalar_trunc2_in = kernel_3mm_B12_branch_data_unpack_0_b[0:0];
    assign adapt_scalar_trunc2_q = adapt_scalar_trunc2_in[0:0];

    // out_c0_exe1601(GPOUT,28)
    assign out_c0_exe1601 = adapt_scalar_trunc2_q;

    // kernel_3mm_B12_branch_data_unpack_1(BITSELECT,23)
    assign kernel_3mm_B12_branch_data_unpack_1_b = kernel_3mm_B12_branch_data_pack_q[39:8];

    // out_c0_exe3603(GPOUT,29)
    assign out_c0_exe3603 = kernel_3mm_B12_branch_data_unpack_1_b;

    // kernel_3mm_B12_branch_data_unpack_2(BITSELECT,24)
    assign kernel_3mm_B12_branch_data_unpack_2_b = kernel_3mm_B12_branch_data_pack_q[47:40];

    // adapt_scalar_trunc6(ROUND,4)
    assign adapt_scalar_trunc6_in = kernel_3mm_B12_branch_data_unpack_2_b[0:0];
    assign adapt_scalar_trunc6_q = adapt_scalar_trunc6_in[0:0];

    // out_c0_exe6606(GPOUT,30)
    assign out_c0_exe6606 = adapt_scalar_trunc6_q;

    // kernel_3mm_B12_branch_data_unpack_3(BITSELECT,25)
    assign kernel_3mm_B12_branch_data_unpack_3_b = kernel_3mm_B12_branch_data_pack_q[111:48];

    // out_c0_exe7607(GPOUT,31)
    assign out_c0_exe7607 = kernel_3mm_B12_branch_data_unpack_3_b;

    // kernel_3mm_B12_branch_data_unpack_4(BITSELECT,26)
    assign kernel_3mm_B12_branch_data_unpack_4_b = kernel_3mm_B12_branch_data_pack_q[119:112];

    // adapt_scalar_trunc10(ROUND,2)
    assign adapt_scalar_trunc10_in = kernel_3mm_B12_branch_data_unpack_4_b[0:0];
    assign adapt_scalar_trunc10_q = adapt_scalar_trunc10_in[0:0];

    // out_c0_exe8608(GPOUT,32)
    assign out_c0_exe8608 = adapt_scalar_trunc10_q;

    // out_stall_out(GPOUT,33)
    assign out_stall_out = in_stall_in_0;

    // kernel_3mm_B12_branch_valid_and(LOGICAL,27)
    assign kernel_3mm_B12_branch_valid_and_q = in_valid_in & in_c0_exe5605;

    // out_valid_out_0(GPOUT,34)
    assign out_valid_out_0 = kernel_3mm_B12_branch_valid_and_q;

    // rst_sync(RESETSYNC,35)
    acl_reset_handler #(
        .ASYNC_RESET(0),
        .USE_SYNCHRONIZER(1),
        .PULSE_EXTENSION(0),
        .PIPE_DEPTH(3),
        .DUPLICATE(1)
    ) therst_sync (
        .clk(clock),
        .i_resetn(resetn),
        .o_sclrn(rst_sync_rst_sclrn)
    );

endmodule
