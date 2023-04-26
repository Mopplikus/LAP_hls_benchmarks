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

// SystemVerilog created from atax_B6_merge
// Created for function/kernel atax
// SystemVerilog created on Wed Apr 26 13:39:40 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_B6_merge (
    input wire [31:0] in_c0_exe116012_0,
    input wire [0:0] in_c0_exe216113_0,
    input wire [63:0] in_c0_exe516414_0,
    input wire [0:0] in_c0_exe616515_0,
    input wire [0:0] in_c0_exe716616_0,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_almost_empty_out,
    output wire [31:0] out_c0_exe116012,
    output wire [0:0] out_c0_exe216113,
    output wire [63:0] out_c0_exe516414,
    output wire [0:0] out_c0_exe616515,
    output wire [0:0] out_c0_exe716616,
    output wire [0:0] out_empty_out,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc10_in;
    wire [0:0] adapt_scalar_trunc10_q;
    wire [0:0] adapt_scalar_trunc3_in;
    wire [0:0] adapt_scalar_trunc3_q;
    wire [0:0] adapt_scalar_trunc7_in;
    wire [0:0] adapt_scalar_trunc7_q;
    wire [119:0] atax_B6_merge_data_pack_0_q;
    wire [31:0] atax_B6_merge_data_unpack_0_b;
    wire [7:0] atax_B6_merge_data_unpack_1_b;
    wire [63:0] atax_B6_merge_data_unpack_2_b;
    wire [7:0] atax_B6_merge_data_unpack_3_b;
    wire [7:0] atax_B6_merge_data_unpack_4_b;
    wire [0:0] atax_B6_merge_storage_out_o_almost_empty;
    wire [119:0] atax_B6_merge_storage_out_o_data;
    wire [0:0] atax_B6_merge_storage_out_o_empty;
    wire [0:0] atax_B6_merge_storage_out_o_stall;
    wire [0:0] atax_B6_merge_storage_out_o_valid;
    wire [1:0] c_i2_011_q;
    wire [6:0] c_i7_02_q;
    wire [7:0] element_extension1_q;
    wire [7:0] element_extension5_q;
    wire [7:0] element_extension8_q;
    reg [0:0] rst_sync_rst_sclrn;


    // c_i7_02(CONSTANT,13)
    assign c_i7_02_q = $unsigned(7'b0000000);

    // element_extension8(BITJOIN,18)
    assign element_extension8_q = {c_i7_02_q, in_c0_exe716616_0};

    // element_extension5(BITJOIN,17)
    assign element_extension5_q = {c_i7_02_q, in_c0_exe616515_0};

    // element_extension1(BITJOIN,16)
    assign element_extension1_q = {c_i7_02_q, in_c0_exe216113_0};

    // atax_B6_merge_data_pack_0(BITJOIN,5)
    assign atax_B6_merge_data_pack_0_q = {element_extension8_q, element_extension5_q, in_c0_exe516414_0, element_extension1_q, in_c0_exe116012_0};

    // c_i2_011(CONSTANT,12)
    assign c_i2_011_q = $unsigned(2'b00);

    // atax_B6_merge_storage(BLACKBOX,11)
    atax_B6_merge_storage theatax_B6_merge_storage (
        .in_almost_empty_in(c_i2_011_q),
        .in_empty_in(c_i2_011_q),
        .in_i_data(atax_B6_merge_data_pack_0_q),
        .in_i_stall(in_stall_in),
        .in_i_valid(in_valid_in_0),
        .out_o_almost_empty(atax_B6_merge_storage_out_o_almost_empty),
        .out_o_data(atax_B6_merge_storage_out_o_data),
        .out_o_empty(atax_B6_merge_storage_out_o_empty),
        .out_o_stall(atax_B6_merge_storage_out_o_stall),
        .out_o_valid(atax_B6_merge_storage_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // out_almost_empty_out(GPOUT,26)
    assign out_almost_empty_out = atax_B6_merge_storage_out_o_almost_empty;

    // atax_B6_merge_data_unpack_0(BITSELECT,6)
    assign atax_B6_merge_data_unpack_0_b = atax_B6_merge_storage_out_o_data[31:0];

    // out_c0_exe116012(GPOUT,27)
    assign out_c0_exe116012 = atax_B6_merge_data_unpack_0_b;

    // atax_B6_merge_data_unpack_1(BITSELECT,7)
    assign atax_B6_merge_data_unpack_1_b = atax_B6_merge_storage_out_o_data[39:32];

    // adapt_scalar_trunc3(ROUND,3)
    assign adapt_scalar_trunc3_in = atax_B6_merge_data_unpack_1_b[0:0];
    assign adapt_scalar_trunc3_q = adapt_scalar_trunc3_in[0:0];

    // out_c0_exe216113(GPOUT,28)
    assign out_c0_exe216113 = adapt_scalar_trunc3_q;

    // atax_B6_merge_data_unpack_2(BITSELECT,8)
    assign atax_B6_merge_data_unpack_2_b = atax_B6_merge_storage_out_o_data[103:40];

    // out_c0_exe516414(GPOUT,29)
    assign out_c0_exe516414 = atax_B6_merge_data_unpack_2_b;

    // atax_B6_merge_data_unpack_3(BITSELECT,9)
    assign atax_B6_merge_data_unpack_3_b = atax_B6_merge_storage_out_o_data[111:104];

    // adapt_scalar_trunc7(ROUND,4)
    assign adapt_scalar_trunc7_in = atax_B6_merge_data_unpack_3_b[0:0];
    assign adapt_scalar_trunc7_q = adapt_scalar_trunc7_in[0:0];

    // out_c0_exe616515(GPOUT,30)
    assign out_c0_exe616515 = adapt_scalar_trunc7_q;

    // atax_B6_merge_data_unpack_4(BITSELECT,10)
    assign atax_B6_merge_data_unpack_4_b = atax_B6_merge_storage_out_o_data[119:112];

    // adapt_scalar_trunc10(ROUND,2)
    assign adapt_scalar_trunc10_in = atax_B6_merge_data_unpack_4_b[0:0];
    assign adapt_scalar_trunc10_q = adapt_scalar_trunc10_in[0:0];

    // out_c0_exe716616(GPOUT,31)
    assign out_c0_exe716616 = adapt_scalar_trunc10_q;

    // out_empty_out(GPOUT,32)
    assign out_empty_out = atax_B6_merge_storage_out_o_empty;

    // out_stall_out_0(GPOUT,33)
    assign out_stall_out_0 = atax_B6_merge_storage_out_o_stall;

    // out_valid_out(GPOUT,34)
    assign out_valid_out = atax_B6_merge_storage_out_o_valid;

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
