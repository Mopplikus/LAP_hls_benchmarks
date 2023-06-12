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

// SystemVerilog created from atax_B4_merge
// Created for function/kernel atax
// SystemVerilog created on Wed Apr 26 13:39:40 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_B4_merge (
    input wire [0:0] in_c0_exe101188_0,
    input wire [63:0] in_c0_exe11091_0,
    input wire [0:0] in_c0_exe119_0,
    input wire [0:0] in_c0_exe1210_0,
    input wire [31:0] in_c0_exe21102_0,
    input wire [0:0] in_c0_exe51133_0,
    input wire [0:0] in_c0_exe61144_0,
    input wire [0:0] in_c0_exe71155_0,
    input wire [63:0] in_c0_exe81166_0,
    input wire [0:0] in_c0_exe91177_0,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_almost_empty_out,
    output wire [0:0] out_c0_exe101188,
    output wire [63:0] out_c0_exe11091,
    output wire [0:0] out_c0_exe119,
    output wire [0:0] out_c0_exe1210,
    output wire [31:0] out_c0_exe21102,
    output wire [0:0] out_c0_exe51133,
    output wire [0:0] out_c0_exe61144,
    output wire [0:0] out_c0_exe71155,
    output wire [63:0] out_c0_exe81166,
    output wire [0:0] out_c0_exe91177,
    output wire [0:0] out_empty_out,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc10_in;
    wire [0:0] adapt_scalar_trunc10_q;
    wire [0:0] adapt_scalar_trunc14_in;
    wire [0:0] adapt_scalar_trunc14_q;
    wire [0:0] adapt_scalar_trunc17_in;
    wire [0:0] adapt_scalar_trunc17_q;
    wire [0:0] adapt_scalar_trunc20_in;
    wire [0:0] adapt_scalar_trunc20_q;
    wire [0:0] adapt_scalar_trunc23_in;
    wire [0:0] adapt_scalar_trunc23_q;
    wire [0:0] adapt_scalar_trunc4_in;
    wire [0:0] adapt_scalar_trunc4_q;
    wire [0:0] adapt_scalar_trunc7_in;
    wire [0:0] adapt_scalar_trunc7_q;
    wire [215:0] atax_B4_merge_data_pack_0_q;
    wire [63:0] atax_B4_merge_data_unpack_0_b;
    wire [31:0] atax_B4_merge_data_unpack_1_b;
    wire [7:0] atax_B4_merge_data_unpack_2_b;
    wire [7:0] atax_B4_merge_data_unpack_3_b;
    wire [7:0] atax_B4_merge_data_unpack_4_b;
    wire [63:0] atax_B4_merge_data_unpack_5_b;
    wire [7:0] atax_B4_merge_data_unpack_6_b;
    wire [7:0] atax_B4_merge_data_unpack_7_b;
    wire [7:0] atax_B4_merge_data_unpack_8_b;
    wire [7:0] atax_B4_merge_data_unpack_9_b;
    wire [0:0] atax_B4_merge_storage_out_o_almost_empty;
    wire [215:0] atax_B4_merge_storage_out_o_data;
    wire [0:0] atax_B4_merge_storage_out_o_empty;
    wire [0:0] atax_B4_merge_storage_out_o_stall;
    wire [0:0] atax_B4_merge_storage_out_o_valid;
    wire [1:0] c_i2_024_q;
    wire [6:0] c_i7_013_q;
    wire [7:0] element_extension12_q;
    wire [7:0] element_extension15_q;
    wire [7:0] element_extension18_q;
    wire [7:0] element_extension2_q;
    wire [7:0] element_extension21_q;
    wire [7:0] element_extension5_q;
    wire [7:0] element_extension8_q;
    reg [0:0] rst_sync_rst_sclrn;


    // c_i7_013(CONSTANT,22)
    assign c_i7_013_q = $unsigned(7'b0000000);

    // element_extension21(BITJOIN,33)
    assign element_extension21_q = {c_i7_013_q, in_c0_exe1210_0};

    // element_extension18(BITJOIN,31)
    assign element_extension18_q = {c_i7_013_q, in_c0_exe119_0};

    // element_extension15(BITJOIN,30)
    assign element_extension15_q = {c_i7_013_q, in_c0_exe101188_0};

    // element_extension12(BITJOIN,29)
    assign element_extension12_q = {c_i7_013_q, in_c0_exe91177_0};

    // element_extension8(BITJOIN,35)
    assign element_extension8_q = {c_i7_013_q, in_c0_exe71155_0};

    // element_extension5(BITJOIN,34)
    assign element_extension5_q = {c_i7_013_q, in_c0_exe61144_0};

    // element_extension2(BITJOIN,32)
    assign element_extension2_q = {c_i7_013_q, in_c0_exe51133_0};

    // atax_B4_merge_data_pack_0(BITJOIN,9)
    assign atax_B4_merge_data_pack_0_q = {element_extension21_q, element_extension18_q, element_extension15_q, element_extension12_q, in_c0_exe81166_0, element_extension8_q, element_extension5_q, element_extension2_q, in_c0_exe21102_0, in_c0_exe11091_0};

    // c_i2_024(CONSTANT,21)
    assign c_i2_024_q = $unsigned(2'b00);

    // atax_B4_merge_storage(BLACKBOX,20)
    atax_B4_merge_storage theatax_B4_merge_storage (
        .in_almost_empty_in(c_i2_024_q),
        .in_empty_in(c_i2_024_q),
        .in_i_data(atax_B4_merge_data_pack_0_q),
        .in_i_stall(in_stall_in),
        .in_i_valid(in_valid_in_0),
        .out_o_almost_empty(atax_B4_merge_storage_out_o_almost_empty),
        .out_o_data(atax_B4_merge_storage_out_o_data),
        .out_o_empty(atax_B4_merge_storage_out_o_empty),
        .out_o_stall(atax_B4_merge_storage_out_o_stall),
        .out_o_valid(atax_B4_merge_storage_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // out_almost_empty_out(GPOUT,48)
    assign out_almost_empty_out = atax_B4_merge_storage_out_o_almost_empty;

    // atax_B4_merge_data_unpack_7(BITSELECT,17)
    assign atax_B4_merge_data_unpack_7_b = atax_B4_merge_storage_out_o_data[199:192];

    // adapt_scalar_trunc17(ROUND,4)
    assign adapt_scalar_trunc17_in = atax_B4_merge_data_unpack_7_b[0:0];
    assign adapt_scalar_trunc17_q = adapt_scalar_trunc17_in[0:0];

    // out_c0_exe101188(GPOUT,49)
    assign out_c0_exe101188 = adapt_scalar_trunc17_q;

    // atax_B4_merge_data_unpack_0(BITSELECT,10)
    assign atax_B4_merge_data_unpack_0_b = atax_B4_merge_storage_out_o_data[63:0];

    // out_c0_exe11091(GPOUT,50)
    assign out_c0_exe11091 = atax_B4_merge_data_unpack_0_b;

    // atax_B4_merge_data_unpack_8(BITSELECT,18)
    assign atax_B4_merge_data_unpack_8_b = atax_B4_merge_storage_out_o_data[207:200];

    // adapt_scalar_trunc20(ROUND,5)
    assign adapt_scalar_trunc20_in = atax_B4_merge_data_unpack_8_b[0:0];
    assign adapt_scalar_trunc20_q = adapt_scalar_trunc20_in[0:0];

    // out_c0_exe119(GPOUT,51)
    assign out_c0_exe119 = adapt_scalar_trunc20_q;

    // atax_B4_merge_data_unpack_9(BITSELECT,19)
    assign atax_B4_merge_data_unpack_9_b = atax_B4_merge_storage_out_o_data[215:208];

    // adapt_scalar_trunc23(ROUND,6)
    assign adapt_scalar_trunc23_in = atax_B4_merge_data_unpack_9_b[0:0];
    assign adapt_scalar_trunc23_q = adapt_scalar_trunc23_in[0:0];

    // out_c0_exe1210(GPOUT,52)
    assign out_c0_exe1210 = adapt_scalar_trunc23_q;

    // atax_B4_merge_data_unpack_1(BITSELECT,11)
    assign atax_B4_merge_data_unpack_1_b = atax_B4_merge_storage_out_o_data[95:64];

    // out_c0_exe21102(GPOUT,53)
    assign out_c0_exe21102 = atax_B4_merge_data_unpack_1_b;

    // atax_B4_merge_data_unpack_2(BITSELECT,12)
    assign atax_B4_merge_data_unpack_2_b = atax_B4_merge_storage_out_o_data[103:96];

    // adapt_scalar_trunc4(ROUND,7)
    assign adapt_scalar_trunc4_in = atax_B4_merge_data_unpack_2_b[0:0];
    assign adapt_scalar_trunc4_q = adapt_scalar_trunc4_in[0:0];

    // out_c0_exe51133(GPOUT,54)
    assign out_c0_exe51133 = adapt_scalar_trunc4_q;

    // atax_B4_merge_data_unpack_3(BITSELECT,13)
    assign atax_B4_merge_data_unpack_3_b = atax_B4_merge_storage_out_o_data[111:104];

    // adapt_scalar_trunc7(ROUND,8)
    assign adapt_scalar_trunc7_in = atax_B4_merge_data_unpack_3_b[0:0];
    assign adapt_scalar_trunc7_q = adapt_scalar_trunc7_in[0:0];

    // out_c0_exe61144(GPOUT,55)
    assign out_c0_exe61144 = adapt_scalar_trunc7_q;

    // atax_B4_merge_data_unpack_4(BITSELECT,14)
    assign atax_B4_merge_data_unpack_4_b = atax_B4_merge_storage_out_o_data[119:112];

    // adapt_scalar_trunc10(ROUND,2)
    assign adapt_scalar_trunc10_in = atax_B4_merge_data_unpack_4_b[0:0];
    assign adapt_scalar_trunc10_q = adapt_scalar_trunc10_in[0:0];

    // out_c0_exe71155(GPOUT,56)
    assign out_c0_exe71155 = adapt_scalar_trunc10_q;

    // atax_B4_merge_data_unpack_5(BITSELECT,15)
    assign atax_B4_merge_data_unpack_5_b = atax_B4_merge_storage_out_o_data[183:120];

    // out_c0_exe81166(GPOUT,57)
    assign out_c0_exe81166 = atax_B4_merge_data_unpack_5_b;

    // atax_B4_merge_data_unpack_6(BITSELECT,16)
    assign atax_B4_merge_data_unpack_6_b = atax_B4_merge_storage_out_o_data[191:184];

    // adapt_scalar_trunc14(ROUND,3)
    assign adapt_scalar_trunc14_in = atax_B4_merge_data_unpack_6_b[0:0];
    assign adapt_scalar_trunc14_q = adapt_scalar_trunc14_in[0:0];

    // out_c0_exe91177(GPOUT,58)
    assign out_c0_exe91177 = adapt_scalar_trunc14_q;

    // out_empty_out(GPOUT,59)
    assign out_empty_out = atax_B4_merge_storage_out_o_empty;

    // out_stall_out_0(GPOUT,60)
    assign out_stall_out_0 = atax_B4_merge_storage_out_o_stall;

    // out_valid_out(GPOUT,61)
    assign out_valid_out = atax_B4_merge_storage_out_o_valid;

    // rst_sync(RESETSYNC,62)
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
