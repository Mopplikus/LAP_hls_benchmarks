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

// SystemVerilog created from matvec_B4_merge
// Created for function/kernel matvec
// SystemVerilog created on Thu Apr 27 14:29:50 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module matvec_B4_merge (
    input wire [63:0] in_c0_exe1321_0,
    input wire [31:0] in_c0_exe2332_0,
    input wire [0:0] in_c0_exe53_0,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_almost_empty_out,
    output wire [63:0] out_c0_exe1321,
    output wire [31:0] out_c0_exe2332,
    output wire [0:0] out_c0_exe53,
    output wire [0:0] out_empty_out,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc4_in;
    wire [0:0] adapt_scalar_trunc4_q;
    wire [1:0] c_i2_05_q;
    wire [6:0] c_i7_03_q;
    wire [7:0] element_extension2_q;
    wire [103:0] matvec_B4_merge_data_pack_0_q;
    wire [63:0] matvec_B4_merge_data_unpack_0_b;
    wire [31:0] matvec_B4_merge_data_unpack_1_b;
    wire [7:0] matvec_B4_merge_data_unpack_2_b;
    wire [0:0] matvec_B4_merge_storage_out_o_almost_empty;
    wire [103:0] matvec_B4_merge_storage_out_o_data;
    wire [0:0] matvec_B4_merge_storage_out_o_empty;
    wire [0:0] matvec_B4_merge_storage_out_o_stall;
    wire [0:0] matvec_B4_merge_storage_out_o_valid;
    reg [0:0] rst_sync_rst_sclrn;


    // c_i7_03(CONSTANT,4)
    assign c_i7_03_q = $unsigned(7'b0000000);

    // element_extension2(BITJOIN,5)
    assign element_extension2_q = {c_i7_03_q, in_c0_exe53_0};

    // matvec_B4_merge_data_pack_0(BITJOIN,11)
    assign matvec_B4_merge_data_pack_0_q = {element_extension2_q, in_c0_exe2332_0, in_c0_exe1321_0};

    // c_i2_05(CONSTANT,3)
    assign c_i2_05_q = $unsigned(2'b00);

    // matvec_B4_merge_storage(BLACKBOX,15)
    matvec_B4_merge_storage thematvec_B4_merge_storage (
        .in_almost_empty_in(c_i2_05_q),
        .in_empty_in(c_i2_05_q),
        .in_i_data(matvec_B4_merge_data_pack_0_q),
        .in_i_stall(in_stall_in),
        .in_i_valid(in_valid_in_0),
        .out_o_almost_empty(matvec_B4_merge_storage_out_o_almost_empty),
        .out_o_data(matvec_B4_merge_storage_out_o_data),
        .out_o_empty(matvec_B4_merge_storage_out_o_empty),
        .out_o_stall(matvec_B4_merge_storage_out_o_stall),
        .out_o_valid(matvec_B4_merge_storage_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // out_almost_empty_out(GPOUT,16)
    assign out_almost_empty_out = matvec_B4_merge_storage_out_o_almost_empty;

    // matvec_B4_merge_data_unpack_0(BITSELECT,12)
    assign matvec_B4_merge_data_unpack_0_b = matvec_B4_merge_storage_out_o_data[63:0];

    // out_c0_exe1321(GPOUT,17)
    assign out_c0_exe1321 = matvec_B4_merge_data_unpack_0_b;

    // matvec_B4_merge_data_unpack_1(BITSELECT,13)
    assign matvec_B4_merge_data_unpack_1_b = matvec_B4_merge_storage_out_o_data[95:64];

    // out_c0_exe2332(GPOUT,18)
    assign out_c0_exe2332 = matvec_B4_merge_data_unpack_1_b;

    // matvec_B4_merge_data_unpack_2(BITSELECT,14)
    assign matvec_B4_merge_data_unpack_2_b = matvec_B4_merge_storage_out_o_data[103:96];

    // adapt_scalar_trunc4(ROUND,2)
    assign adapt_scalar_trunc4_in = matvec_B4_merge_data_unpack_2_b[0:0];
    assign adapt_scalar_trunc4_q = adapt_scalar_trunc4_in[0:0];

    // out_c0_exe53(GPOUT,19)
    assign out_c0_exe53 = adapt_scalar_trunc4_q;

    // out_empty_out(GPOUT,20)
    assign out_empty_out = matvec_B4_merge_storage_out_o_empty;

    // out_stall_out_0(GPOUT,21)
    assign out_stall_out_0 = matvec_B4_merge_storage_out_o_stall;

    // out_valid_out(GPOUT,22)
    assign out_valid_out = matvec_B4_merge_storage_out_o_valid;

    // rst_sync(RESETSYNC,23)
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
