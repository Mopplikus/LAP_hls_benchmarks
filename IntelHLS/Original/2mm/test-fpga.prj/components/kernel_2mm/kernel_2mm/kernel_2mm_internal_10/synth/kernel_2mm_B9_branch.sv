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

// SystemVerilog created from kernel_2mm_B9_branch
// Created for function/kernel kernel_2mm
// SystemVerilog created on Thu Apr 27 14:25:48 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_2mm_B9_branch (
    input wire [0:0] in_almost_empty_in,
    input wire [63:0] in_c0_exe1159,
    input wire [63:0] in_c0_exe2160,
    input wire [63:0] in_c0_exe3161,
    input wire [31:0] in_c0_exe4162,
    input wire [0:0] in_c0_exe6164,
    input wire [0:0] in_c0_exe7165,
    input wire [63:0] in_c0_exe8166,
    input wire [0:0] in_c0_exe9167,
    input wire [0:0] in_empty_in,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [63:0] out_c0_exe1159,
    output wire [63:0] out_c0_exe2160,
    output wire [63:0] out_c0_exe3161,
    output wire [31:0] out_c0_exe4162,
    output wire [0:0] out_c0_exe6164,
    output wire [0:0] out_c0_exe7165,
    output wire [63:0] out_c0_exe8166,
    output wire [0:0] out_c0_exe9167,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc13_in;
    wire [0:0] adapt_scalar_trunc13_q;
    wire [0:0] adapt_scalar_trunc6_in;
    wire [0:0] adapt_scalar_trunc6_q;
    wire [0:0] adapt_scalar_trunc9_in;
    wire [0:0] adapt_scalar_trunc9_q;
    wire [6:0] c_i7_012_q;
    wire [7:0] element_extension11_q;
    wire [7:0] element_extension4_q;
    wire [7:0] element_extension7_q;
    wire [311:0] kernel_2mm_B9_branch_data_pack_q;
    wire [63:0] kernel_2mm_B9_branch_data_unpack_0_b;
    wire [63:0] kernel_2mm_B9_branch_data_unpack_1_b;
    wire [63:0] kernel_2mm_B9_branch_data_unpack_2_b;
    wire [31:0] kernel_2mm_B9_branch_data_unpack_3_b;
    wire [7:0] kernel_2mm_B9_branch_data_unpack_4_b;
    wire [7:0] kernel_2mm_B9_branch_data_unpack_5_b;
    wire [63:0] kernel_2mm_B9_branch_data_unpack_6_b;
    wire [7:0] kernel_2mm_B9_branch_data_unpack_7_b;
    reg [0:0] rst_sync_rst_sclrn;


    // c_i7_012(CONSTANT,5)
    assign c_i7_012_q = $unsigned(7'b0000000);

    // element_extension11(BITJOIN,8)
    assign element_extension11_q = {c_i7_012_q, in_c0_exe9167};

    // element_extension7(BITJOIN,10)
    assign element_extension7_q = {c_i7_012_q, in_c0_exe7165};

    // element_extension4(BITJOIN,9)
    assign element_extension4_q = {c_i7_012_q, in_c0_exe6164};

    // kernel_2mm_B9_branch_data_pack(BITJOIN,23)
    assign kernel_2mm_B9_branch_data_pack_q = {element_extension11_q, in_c0_exe8166, element_extension7_q, element_extension4_q, in_c0_exe4162, in_c0_exe3161, in_c0_exe2160, in_c0_exe1159};

    // kernel_2mm_B9_branch_data_unpack_0(BITSELECT,24)
    assign kernel_2mm_B9_branch_data_unpack_0_b = kernel_2mm_B9_branch_data_pack_q[63:0];

    // out_c0_exe1159(GPOUT,32)
    assign out_c0_exe1159 = kernel_2mm_B9_branch_data_unpack_0_b;

    // kernel_2mm_B9_branch_data_unpack_1(BITSELECT,25)
    assign kernel_2mm_B9_branch_data_unpack_1_b = kernel_2mm_B9_branch_data_pack_q[127:64];

    // out_c0_exe2160(GPOUT,33)
    assign out_c0_exe2160 = kernel_2mm_B9_branch_data_unpack_1_b;

    // kernel_2mm_B9_branch_data_unpack_2(BITSELECT,26)
    assign kernel_2mm_B9_branch_data_unpack_2_b = kernel_2mm_B9_branch_data_pack_q[191:128];

    // out_c0_exe3161(GPOUT,34)
    assign out_c0_exe3161 = kernel_2mm_B9_branch_data_unpack_2_b;

    // kernel_2mm_B9_branch_data_unpack_3(BITSELECT,27)
    assign kernel_2mm_B9_branch_data_unpack_3_b = kernel_2mm_B9_branch_data_pack_q[223:192];

    // out_c0_exe4162(GPOUT,35)
    assign out_c0_exe4162 = kernel_2mm_B9_branch_data_unpack_3_b;

    // kernel_2mm_B9_branch_data_unpack_4(BITSELECT,28)
    assign kernel_2mm_B9_branch_data_unpack_4_b = kernel_2mm_B9_branch_data_pack_q[231:224];

    // adapt_scalar_trunc6(ROUND,3)
    assign adapt_scalar_trunc6_in = kernel_2mm_B9_branch_data_unpack_4_b[0:0];
    assign adapt_scalar_trunc6_q = adapt_scalar_trunc6_in[0:0];

    // out_c0_exe6164(GPOUT,36)
    assign out_c0_exe6164 = adapt_scalar_trunc6_q;

    // kernel_2mm_B9_branch_data_unpack_5(BITSELECT,29)
    assign kernel_2mm_B9_branch_data_unpack_5_b = kernel_2mm_B9_branch_data_pack_q[239:232];

    // adapt_scalar_trunc9(ROUND,4)
    assign adapt_scalar_trunc9_in = kernel_2mm_B9_branch_data_unpack_5_b[0:0];
    assign adapt_scalar_trunc9_q = adapt_scalar_trunc9_in[0:0];

    // out_c0_exe7165(GPOUT,37)
    assign out_c0_exe7165 = adapt_scalar_trunc9_q;

    // kernel_2mm_B9_branch_data_unpack_6(BITSELECT,30)
    assign kernel_2mm_B9_branch_data_unpack_6_b = kernel_2mm_B9_branch_data_pack_q[303:240];

    // out_c0_exe8166(GPOUT,38)
    assign out_c0_exe8166 = kernel_2mm_B9_branch_data_unpack_6_b;

    // kernel_2mm_B9_branch_data_unpack_7(BITSELECT,31)
    assign kernel_2mm_B9_branch_data_unpack_7_b = kernel_2mm_B9_branch_data_pack_q[311:304];

    // adapt_scalar_trunc13(ROUND,2)
    assign adapt_scalar_trunc13_in = kernel_2mm_B9_branch_data_unpack_7_b[0:0];
    assign adapt_scalar_trunc13_q = adapt_scalar_trunc13_in[0:0];

    // out_c0_exe9167(GPOUT,39)
    assign out_c0_exe9167 = adapt_scalar_trunc13_q;

    // out_stall_out(GPOUT,40)
    assign out_stall_out = in_stall_in_0;

    // out_valid_out_0(GPOUT,41)
    assign out_valid_out_0 = in_valid_in;

    // rst_sync(RESETSYNC,42)
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
