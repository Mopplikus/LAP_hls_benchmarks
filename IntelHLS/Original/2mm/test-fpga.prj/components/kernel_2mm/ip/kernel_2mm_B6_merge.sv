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

// SystemVerilog created from kernel_2mm_B6_merge
// Created for function/kernel kernel_2mm
// SystemVerilog created on Thu Apr 27 14:25:48 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_2mm_B6_merge (
    input wire [63:0] in_arrayidx11169_0,
    input wire [31:0] in_i_040_pop1545_pop1966_0,
    input wire [31:0] in_i_040_pop1565_0,
    input wire [63:0] in_idxprom1068_0,
    input wire [63:0] in_idxprom67_0,
    input wire [0:0] in_notcmp2670_0,
    input wire [0:0] in_notcmp3141_pop1871_0,
    input wire [0:0] in_notcmp3162_0,
    input wire [0:0] in_stall_in,
    input wire [31:0] in_unnamed_kernel_2mm8_0,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_almost_empty_out,
    output wire [63:0] out_arrayidx11169,
    output wire [0:0] out_empty_out,
    output wire [31:0] out_i_040_pop1545_pop1966,
    output wire [31:0] out_i_040_pop1565,
    output wire [63:0] out_idxprom1068,
    output wire [63:0] out_idxprom67,
    output wire [0:0] out_notcmp2670,
    output wire [0:0] out_notcmp3141_pop1871,
    output wire [0:0] out_notcmp3162,
    output wire [0:0] out_stall_out_0,
    output wire [31:0] out_unnamed_kernel_2mm8,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc11_in;
    wire [0:0] adapt_scalar_trunc11_q;
    wire [0:0] adapt_scalar_trunc14_in;
    wire [0:0] adapt_scalar_trunc14_q;
    wire [0:0] adapt_scalar_trunc2_in;
    wire [0:0] adapt_scalar_trunc2_q;
    wire [1:0] c_i2_015_q;
    wire [6:0] c_i7_01_q;
    wire [7:0] element_extension0_q;
    wire [7:0] element_extension12_q;
    wire [7:0] element_extension9_q;
    wire [311:0] kernel_2mm_B6_merge_data_pack_0_q;
    wire [7:0] kernel_2mm_B6_merge_data_unpack_0_b;
    wire [31:0] kernel_2mm_B6_merge_data_unpack_1_b;
    wire [31:0] kernel_2mm_B6_merge_data_unpack_2_b;
    wire [63:0] kernel_2mm_B6_merge_data_unpack_3_b;
    wire [63:0] kernel_2mm_B6_merge_data_unpack_4_b;
    wire [63:0] kernel_2mm_B6_merge_data_unpack_5_b;
    wire [31:0] kernel_2mm_B6_merge_data_unpack_6_b;
    wire [7:0] kernel_2mm_B6_merge_data_unpack_7_b;
    wire [7:0] kernel_2mm_B6_merge_data_unpack_8_b;
    wire [0:0] kernel_2mm_B6_merge_storage_out_o_almost_empty;
    wire [311:0] kernel_2mm_B6_merge_storage_out_o_data;
    wire [0:0] kernel_2mm_B6_merge_storage_out_o_empty;
    wire [0:0] kernel_2mm_B6_merge_storage_out_o_stall;
    wire [0:0] kernel_2mm_B6_merge_storage_out_o_valid;
    reg [0:0] rst_sync_rst_sclrn;


    // c_i7_01(CONSTANT,6)
    assign c_i7_01_q = $unsigned(7'b0000000);

    // element_extension12(BITJOIN,10)
    assign element_extension12_q = {c_i7_01_q, in_notcmp3141_pop1871_0};

    // element_extension9(BITJOIN,11)
    assign element_extension9_q = {c_i7_01_q, in_notcmp2670_0};

    // element_extension0(BITJOIN,9)
    assign element_extension0_q = {c_i7_01_q, in_notcmp3162_0};

    // kernel_2mm_B6_merge_data_pack_0(BITJOIN,23)
    assign kernel_2mm_B6_merge_data_pack_0_q = {element_extension12_q, element_extension9_q, in_unnamed_kernel_2mm8_0, in_arrayidx11169_0, in_idxprom1068_0, in_idxprom67_0, in_i_040_pop1545_pop1966_0, in_i_040_pop1565_0, element_extension0_q};

    // c_i2_015(CONSTANT,5)
    assign c_i2_015_q = $unsigned(2'b00);

    // kernel_2mm_B6_merge_storage(BLACKBOX,33)
    kernel_2mm_B6_merge_storage thekernel_2mm_B6_merge_storage (
        .in_almost_empty_in(c_i2_015_q),
        .in_empty_in(c_i2_015_q),
        .in_i_data(kernel_2mm_B6_merge_data_pack_0_q),
        .in_i_stall(in_stall_in),
        .in_i_valid(in_valid_in_0),
        .out_o_almost_empty(kernel_2mm_B6_merge_storage_out_o_almost_empty),
        .out_o_data(kernel_2mm_B6_merge_storage_out_o_data),
        .out_o_empty(kernel_2mm_B6_merge_storage_out_o_empty),
        .out_o_stall(kernel_2mm_B6_merge_storage_out_o_stall),
        .out_o_valid(kernel_2mm_B6_merge_storage_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // out_almost_empty_out(GPOUT,34)
    assign out_almost_empty_out = kernel_2mm_B6_merge_storage_out_o_almost_empty;

    // kernel_2mm_B6_merge_data_unpack_5(BITSELECT,29)
    assign kernel_2mm_B6_merge_data_unpack_5_b = kernel_2mm_B6_merge_storage_out_o_data[263:200];

    // out_arrayidx11169(GPOUT,35)
    assign out_arrayidx11169 = kernel_2mm_B6_merge_data_unpack_5_b;

    // out_empty_out(GPOUT,36)
    assign out_empty_out = kernel_2mm_B6_merge_storage_out_o_empty;

    // kernel_2mm_B6_merge_data_unpack_2(BITSELECT,26)
    assign kernel_2mm_B6_merge_data_unpack_2_b = kernel_2mm_B6_merge_storage_out_o_data[71:40];

    // out_i_040_pop1545_pop1966(GPOUT,37)
    assign out_i_040_pop1545_pop1966 = kernel_2mm_B6_merge_data_unpack_2_b;

    // kernel_2mm_B6_merge_data_unpack_1(BITSELECT,25)
    assign kernel_2mm_B6_merge_data_unpack_1_b = kernel_2mm_B6_merge_storage_out_o_data[39:8];

    // out_i_040_pop1565(GPOUT,38)
    assign out_i_040_pop1565 = kernel_2mm_B6_merge_data_unpack_1_b;

    // kernel_2mm_B6_merge_data_unpack_4(BITSELECT,28)
    assign kernel_2mm_B6_merge_data_unpack_4_b = kernel_2mm_B6_merge_storage_out_o_data[199:136];

    // out_idxprom1068(GPOUT,39)
    assign out_idxprom1068 = kernel_2mm_B6_merge_data_unpack_4_b;

    // kernel_2mm_B6_merge_data_unpack_3(BITSELECT,27)
    assign kernel_2mm_B6_merge_data_unpack_3_b = kernel_2mm_B6_merge_storage_out_o_data[135:72];

    // out_idxprom67(GPOUT,40)
    assign out_idxprom67 = kernel_2mm_B6_merge_data_unpack_3_b;

    // kernel_2mm_B6_merge_data_unpack_7(BITSELECT,31)
    assign kernel_2mm_B6_merge_data_unpack_7_b = kernel_2mm_B6_merge_storage_out_o_data[303:296];

    // adapt_scalar_trunc11(ROUND,2)
    assign adapt_scalar_trunc11_in = kernel_2mm_B6_merge_data_unpack_7_b[0:0];
    assign adapt_scalar_trunc11_q = adapt_scalar_trunc11_in[0:0];

    // out_notcmp2670(GPOUT,41)
    assign out_notcmp2670 = adapt_scalar_trunc11_q;

    // kernel_2mm_B6_merge_data_unpack_8(BITSELECT,32)
    assign kernel_2mm_B6_merge_data_unpack_8_b = kernel_2mm_B6_merge_storage_out_o_data[311:304];

    // adapt_scalar_trunc14(ROUND,3)
    assign adapt_scalar_trunc14_in = kernel_2mm_B6_merge_data_unpack_8_b[0:0];
    assign adapt_scalar_trunc14_q = adapt_scalar_trunc14_in[0:0];

    // out_notcmp3141_pop1871(GPOUT,42)
    assign out_notcmp3141_pop1871 = adapt_scalar_trunc14_q;

    // kernel_2mm_B6_merge_data_unpack_0(BITSELECT,24)
    assign kernel_2mm_B6_merge_data_unpack_0_b = kernel_2mm_B6_merge_storage_out_o_data[7:0];

    // adapt_scalar_trunc2(ROUND,4)
    assign adapt_scalar_trunc2_in = kernel_2mm_B6_merge_data_unpack_0_b[0:0];
    assign adapt_scalar_trunc2_q = adapt_scalar_trunc2_in[0:0];

    // out_notcmp3162(GPOUT,43)
    assign out_notcmp3162 = adapt_scalar_trunc2_q;

    // out_stall_out_0(GPOUT,44)
    assign out_stall_out_0 = kernel_2mm_B6_merge_storage_out_o_stall;

    // kernel_2mm_B6_merge_data_unpack_6(BITSELECT,30)
    assign kernel_2mm_B6_merge_data_unpack_6_b = kernel_2mm_B6_merge_storage_out_o_data[295:264];

    // out_unnamed_kernel_2mm8(GPOUT,45)
    assign out_unnamed_kernel_2mm8 = kernel_2mm_B6_merge_data_unpack_6_b;

    // out_valid_out(GPOUT,46)
    assign out_valid_out = kernel_2mm_B6_merge_storage_out_o_valid;

    // rst_sync(RESETSYNC,47)
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
