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

// SystemVerilog created from kernel_3mm_B2_merge
// Created for function/kernel kernel_3mm
// SystemVerilog created on Thu Apr 27 14:26:50 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_B2_merge (
    input wire [0:0] in_forked112_0,
    input wire [0:0] in_memdep_phi2_pop18126_0,
    input wire [0:0] in_memdep_phi3_pop19133_0,
    input wire [0:0] in_memdep_phi5_pop20140_0,
    input wire [0:0] in_memdep_phi_pop17119_0,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_almost_empty_out,
    output wire [0:0] out_empty_out,
    output wire [0:0] out_forked112,
    output wire [0:0] out_memdep_phi2_pop18126,
    output wire [0:0] out_memdep_phi3_pop19133,
    output wire [0:0] out_memdep_phi5_pop20140,
    output wire [0:0] out_memdep_phi_pop17119,
    output wire [0:0] out_stall_out_0,
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
    wire [0:0] adapt_scalar_trunc5_in;
    wire [0:0] adapt_scalar_trunc5_q;
    wire [0:0] adapt_scalar_trunc8_in;
    wire [0:0] adapt_scalar_trunc8_q;
    wire [1:0] c_i2_015_q;
    wire [6:0] c_i7_01_q;
    wire [7:0] element_extension0_q;
    wire [7:0] element_extension12_q;
    wire [7:0] element_extension3_q;
    wire [7:0] element_extension6_q;
    wire [7:0] element_extension9_q;
    wire [39:0] kernel_3mm_B2_merge_data_pack_0_q;
    wire [7:0] kernel_3mm_B2_merge_data_unpack_0_b;
    wire [7:0] kernel_3mm_B2_merge_data_unpack_1_b;
    wire [7:0] kernel_3mm_B2_merge_data_unpack_2_b;
    wire [7:0] kernel_3mm_B2_merge_data_unpack_3_b;
    wire [7:0] kernel_3mm_B2_merge_data_unpack_4_b;
    wire [0:0] kernel_3mm_B2_merge_storage_out_o_almost_empty;
    wire [39:0] kernel_3mm_B2_merge_storage_out_o_data;
    wire [0:0] kernel_3mm_B2_merge_storage_out_o_empty;
    wire [0:0] kernel_3mm_B2_merge_storage_out_o_stall;
    wire [0:0] kernel_3mm_B2_merge_storage_out_o_valid;
    reg [0:0] rst_sync_rst_sclrn;


    // c_i7_01(CONSTANT,8)
    assign c_i7_01_q = $unsigned(7'b0000000);

    // element_extension12(BITJOIN,14)
    assign element_extension12_q = {c_i7_01_q, in_memdep_phi5_pop20140_0};

    // element_extension9(BITJOIN,17)
    assign element_extension9_q = {c_i7_01_q, in_memdep_phi3_pop19133_0};

    // element_extension6(BITJOIN,16)
    assign element_extension6_q = {c_i7_01_q, in_memdep_phi2_pop18126_0};

    // element_extension3(BITJOIN,15)
    assign element_extension3_q = {c_i7_01_q, in_memdep_phi_pop17119_0};

    // element_extension0(BITJOIN,13)
    assign element_extension0_q = {c_i7_01_q, in_forked112_0};

    // kernel_3mm_B2_merge_data_pack_0(BITJOIN,25)
    assign kernel_3mm_B2_merge_data_pack_0_q = {element_extension12_q, element_extension9_q, element_extension6_q, element_extension3_q, element_extension0_q};

    // c_i2_015(CONSTANT,7)
    assign c_i2_015_q = $unsigned(2'b00);

    // kernel_3mm_B2_merge_storage(BLACKBOX,31)
    kernel_3mm_B2_merge_storage thekernel_3mm_B2_merge_storage (
        .in_almost_empty_in(c_i2_015_q),
        .in_empty_in(c_i2_015_q),
        .in_i_data(kernel_3mm_B2_merge_data_pack_0_q),
        .in_i_stall(in_stall_in),
        .in_i_valid(in_valid_in_0),
        .out_o_almost_empty(kernel_3mm_B2_merge_storage_out_o_almost_empty),
        .out_o_data(kernel_3mm_B2_merge_storage_out_o_data),
        .out_o_empty(kernel_3mm_B2_merge_storage_out_o_empty),
        .out_o_stall(kernel_3mm_B2_merge_storage_out_o_stall),
        .out_o_valid(kernel_3mm_B2_merge_storage_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // out_almost_empty_out(GPOUT,32)
    assign out_almost_empty_out = kernel_3mm_B2_merge_storage_out_o_almost_empty;

    // out_empty_out(GPOUT,33)
    assign out_empty_out = kernel_3mm_B2_merge_storage_out_o_empty;

    // kernel_3mm_B2_merge_data_unpack_0(BITSELECT,26)
    assign kernel_3mm_B2_merge_data_unpack_0_b = kernel_3mm_B2_merge_storage_out_o_data[7:0];

    // adapt_scalar_trunc2(ROUND,4)
    assign adapt_scalar_trunc2_in = kernel_3mm_B2_merge_data_unpack_0_b[0:0];
    assign adapt_scalar_trunc2_q = adapt_scalar_trunc2_in[0:0];

    // out_forked112(GPOUT,34)
    assign out_forked112 = adapt_scalar_trunc2_q;

    // kernel_3mm_B2_merge_data_unpack_2(BITSELECT,28)
    assign kernel_3mm_B2_merge_data_unpack_2_b = kernel_3mm_B2_merge_storage_out_o_data[23:16];

    // adapt_scalar_trunc8(ROUND,6)
    assign adapt_scalar_trunc8_in = kernel_3mm_B2_merge_data_unpack_2_b[0:0];
    assign adapt_scalar_trunc8_q = adapt_scalar_trunc8_in[0:0];

    // out_memdep_phi2_pop18126(GPOUT,35)
    assign out_memdep_phi2_pop18126 = adapt_scalar_trunc8_q;

    // kernel_3mm_B2_merge_data_unpack_3(BITSELECT,29)
    assign kernel_3mm_B2_merge_data_unpack_3_b = kernel_3mm_B2_merge_storage_out_o_data[31:24];

    // adapt_scalar_trunc11(ROUND,2)
    assign adapt_scalar_trunc11_in = kernel_3mm_B2_merge_data_unpack_3_b[0:0];
    assign adapt_scalar_trunc11_q = adapt_scalar_trunc11_in[0:0];

    // out_memdep_phi3_pop19133(GPOUT,36)
    assign out_memdep_phi3_pop19133 = adapt_scalar_trunc11_q;

    // kernel_3mm_B2_merge_data_unpack_4(BITSELECT,30)
    assign kernel_3mm_B2_merge_data_unpack_4_b = kernel_3mm_B2_merge_storage_out_o_data[39:32];

    // adapt_scalar_trunc14(ROUND,3)
    assign adapt_scalar_trunc14_in = kernel_3mm_B2_merge_data_unpack_4_b[0:0];
    assign adapt_scalar_trunc14_q = adapt_scalar_trunc14_in[0:0];

    // out_memdep_phi5_pop20140(GPOUT,37)
    assign out_memdep_phi5_pop20140 = adapt_scalar_trunc14_q;

    // kernel_3mm_B2_merge_data_unpack_1(BITSELECT,27)
    assign kernel_3mm_B2_merge_data_unpack_1_b = kernel_3mm_B2_merge_storage_out_o_data[15:8];

    // adapt_scalar_trunc5(ROUND,5)
    assign adapt_scalar_trunc5_in = kernel_3mm_B2_merge_data_unpack_1_b[0:0];
    assign adapt_scalar_trunc5_q = adapt_scalar_trunc5_in[0:0];

    // out_memdep_phi_pop17119(GPOUT,38)
    assign out_memdep_phi_pop17119 = adapt_scalar_trunc5_q;

    // out_stall_out_0(GPOUT,39)
    assign out_stall_out_0 = kernel_3mm_B2_merge_storage_out_o_stall;

    // out_valid_out(GPOUT,40)
    assign out_valid_out = kernel_3mm_B2_merge_storage_out_o_valid;

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
