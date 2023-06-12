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

// SystemVerilog created from kernel_3mm_B6_branch
// Created for function/kernel kernel_3mm
// SystemVerilog created on Thu Apr 27 14:26:51 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_B6_branch (
    input wire [0:0] in_almost_empty_in,
    input wire [31:0] in_c0_exe1476,
    input wire [0:0] in_c0_exe3478,
    input wire [0:0] in_c0_exe4479,
    input wire [0:0] in_c0_exe5480,
    input wire [0:0] in_c0_exe6481,
    input wire [0:0] in_c0_exe7482,
    input wire [63:0] in_c0_exe9484,
    input wire [0:0] in_empty_in,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_c0_exe1476,
    output wire [0:0] out_c0_exe4479,
    output wire [0:0] out_c0_exe5480,
    output wire [0:0] out_c0_exe6481,
    output wire [0:0] out_c0_exe7482,
    output wire [63:0] out_c0_exe9484,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc12_in;
    wire [0:0] adapt_scalar_trunc12_q;
    wire [0:0] adapt_scalar_trunc3_in;
    wire [0:0] adapt_scalar_trunc3_q;
    wire [0:0] adapt_scalar_trunc6_in;
    wire [0:0] adapt_scalar_trunc6_q;
    wire [0:0] adapt_scalar_trunc9_in;
    wire [0:0] adapt_scalar_trunc9_q;
    wire [6:0] c_i7_011_q;
    wire [7:0] element_extension1_q;
    wire [7:0] element_extension10_q;
    wire [7:0] element_extension4_q;
    wire [7:0] element_extension7_q;
    wire [127:0] kernel_3mm_B6_branch_data_pack_q;
    wire [31:0] kernel_3mm_B6_branch_data_unpack_0_b;
    wire [7:0] kernel_3mm_B6_branch_data_unpack_1_b;
    wire [7:0] kernel_3mm_B6_branch_data_unpack_2_b;
    wire [7:0] kernel_3mm_B6_branch_data_unpack_3_b;
    wire [7:0] kernel_3mm_B6_branch_data_unpack_4_b;
    wire [63:0] kernel_3mm_B6_branch_data_unpack_5_b;
    wire [0:0] kernel_3mm_B6_branch_valid_and_q;
    reg [0:0] rst_sync_rst_sclrn;


    // c_i7_011(CONSTANT,6)
    assign c_i7_011_q = $unsigned(7'b0000000);

    // element_extension10(BITJOIN,11)
    assign element_extension10_q = {c_i7_011_q, in_c0_exe7482};

    // element_extension7(BITJOIN,13)
    assign element_extension7_q = {c_i7_011_q, in_c0_exe6481};

    // element_extension4(BITJOIN,12)
    assign element_extension4_q = {c_i7_011_q, in_c0_exe5480};

    // element_extension1(BITJOIN,10)
    assign element_extension1_q = {c_i7_011_q, in_c0_exe4479};

    // kernel_3mm_B6_branch_data_pack(BITJOIN,25)
    assign kernel_3mm_B6_branch_data_pack_q = {in_c0_exe9484, element_extension10_q, element_extension7_q, element_extension4_q, element_extension1_q, in_c0_exe1476};

    // kernel_3mm_B6_branch_data_unpack_0(BITSELECT,26)
    assign kernel_3mm_B6_branch_data_unpack_0_b = kernel_3mm_B6_branch_data_pack_q[31:0];

    // out_c0_exe1476(GPOUT,33)
    assign out_c0_exe1476 = kernel_3mm_B6_branch_data_unpack_0_b;

    // kernel_3mm_B6_branch_data_unpack_1(BITSELECT,27)
    assign kernel_3mm_B6_branch_data_unpack_1_b = kernel_3mm_B6_branch_data_pack_q[39:32];

    // adapt_scalar_trunc3(ROUND,3)
    assign adapt_scalar_trunc3_in = kernel_3mm_B6_branch_data_unpack_1_b[0:0];
    assign adapt_scalar_trunc3_q = adapt_scalar_trunc3_in[0:0];

    // out_c0_exe4479(GPOUT,34)
    assign out_c0_exe4479 = adapt_scalar_trunc3_q;

    // kernel_3mm_B6_branch_data_unpack_2(BITSELECT,28)
    assign kernel_3mm_B6_branch_data_unpack_2_b = kernel_3mm_B6_branch_data_pack_q[47:40];

    // adapt_scalar_trunc6(ROUND,4)
    assign adapt_scalar_trunc6_in = kernel_3mm_B6_branch_data_unpack_2_b[0:0];
    assign adapt_scalar_trunc6_q = adapt_scalar_trunc6_in[0:0];

    // out_c0_exe5480(GPOUT,35)
    assign out_c0_exe5480 = adapt_scalar_trunc6_q;

    // kernel_3mm_B6_branch_data_unpack_3(BITSELECT,29)
    assign kernel_3mm_B6_branch_data_unpack_3_b = kernel_3mm_B6_branch_data_pack_q[55:48];

    // adapt_scalar_trunc9(ROUND,5)
    assign adapt_scalar_trunc9_in = kernel_3mm_B6_branch_data_unpack_3_b[0:0];
    assign adapt_scalar_trunc9_q = adapt_scalar_trunc9_in[0:0];

    // out_c0_exe6481(GPOUT,36)
    assign out_c0_exe6481 = adapt_scalar_trunc9_q;

    // kernel_3mm_B6_branch_data_unpack_4(BITSELECT,30)
    assign kernel_3mm_B6_branch_data_unpack_4_b = kernel_3mm_B6_branch_data_pack_q[63:56];

    // adapt_scalar_trunc12(ROUND,2)
    assign adapt_scalar_trunc12_in = kernel_3mm_B6_branch_data_unpack_4_b[0:0];
    assign adapt_scalar_trunc12_q = adapt_scalar_trunc12_in[0:0];

    // out_c0_exe7482(GPOUT,37)
    assign out_c0_exe7482 = adapt_scalar_trunc12_q;

    // kernel_3mm_B6_branch_data_unpack_5(BITSELECT,31)
    assign kernel_3mm_B6_branch_data_unpack_5_b = kernel_3mm_B6_branch_data_pack_q[127:64];

    // out_c0_exe9484(GPOUT,38)
    assign out_c0_exe9484 = kernel_3mm_B6_branch_data_unpack_5_b;

    // out_stall_out(GPOUT,39)
    assign out_stall_out = in_stall_in_0;

    // kernel_3mm_B6_branch_valid_and(LOGICAL,32)
    assign kernel_3mm_B6_branch_valid_and_q = in_valid_in & in_c0_exe3478;

    // out_valid_out_0(GPOUT,40)
    assign out_valid_out_0 = kernel_3mm_B6_branch_valid_and_q;

    // rst_sync(RESETSYNC,41)
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
