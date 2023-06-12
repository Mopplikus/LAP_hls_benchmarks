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

// SystemVerilog created from kernel_3mm_B12_merge
// Created for function/kernel kernel_3mm
// SystemVerilog created on Thu Apr 27 14:26:49 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_B12_merge (
    input wire [63:0] in_arrayidx817248_0,
    input wire [31:0] in_i_252_pop30241_0,
    input wire [31:0] in_i_252_pop3094_pop45245_0,
    input wire [63:0] in_idxprom78246_0,
    input wire [63:0] in_idxprom80247_0,
    input wire [0:0] in_memdep_phi7_pop21234_0,
    input wire [0:0] in_memdep_phi7_pop2181_pop31244_0,
    input wire [0:0] in_memdep_phi7_pop2182_pop43249_0,
    input wire [0:0] in_notcmp26250_0,
    input wire [0:0] in_notcmp31238_0,
    input wire [0:0] in_notcmp3192_pop44251_0,
    input wire [0:0] in_stall_in,
    input wire [31:0] in_unnamed_kernel_3mm11_0,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_almost_empty_out,
    output wire [63:0] out_arrayidx817248,
    output wire [0:0] out_empty_out,
    output wire [31:0] out_i_252_pop30241,
    output wire [31:0] out_i_252_pop3094_pop45245,
    output wire [63:0] out_idxprom78246,
    output wire [63:0] out_idxprom80247,
    output wire [0:0] out_memdep_phi7_pop21234,
    output wire [0:0] out_memdep_phi7_pop2181_pop31244,
    output wire [0:0] out_memdep_phi7_pop2182_pop43249,
    output wire [0:0] out_notcmp26250,
    output wire [0:0] out_notcmp31238,
    output wire [0:0] out_notcmp3192_pop44251,
    output wire [0:0] out_stall_out_0,
    output wire [31:0] out_unnamed_kernel_3mm11,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc16_in;
    wire [0:0] adapt_scalar_trunc16_q;
    wire [0:0] adapt_scalar_trunc2_in;
    wire [0:0] adapt_scalar_trunc2_q;
    wire [0:0] adapt_scalar_trunc20_in;
    wire [0:0] adapt_scalar_trunc20_q;
    wire [0:0] adapt_scalar_trunc23_in;
    wire [0:0] adapt_scalar_trunc23_q;
    wire [0:0] adapt_scalar_trunc5_in;
    wire [0:0] adapt_scalar_trunc5_q;
    wire [0:0] adapt_scalar_trunc9_in;
    wire [0:0] adapt_scalar_trunc9_q;
    wire [1:0] c_i2_024_q;
    wire [6:0] c_i7_01_q;
    wire [7:0] element_extension0_q;
    wire [7:0] element_extension14_q;
    wire [7:0] element_extension18_q;
    wire [7:0] element_extension21_q;
    wire [7:0] element_extension3_q;
    wire [7:0] element_extension7_q;
    wire [335:0] kernel_3mm_B12_merge_data_pack_0_q;
    wire [7:0] kernel_3mm_B12_merge_data_unpack_0_b;
    wire [7:0] kernel_3mm_B12_merge_data_unpack_1_b;
    wire [7:0] kernel_3mm_B12_merge_data_unpack_10_b;
    wire [7:0] kernel_3mm_B12_merge_data_unpack_11_b;
    wire [31:0] kernel_3mm_B12_merge_data_unpack_2_b;
    wire [7:0] kernel_3mm_B12_merge_data_unpack_3_b;
    wire [31:0] kernel_3mm_B12_merge_data_unpack_4_b;
    wire [63:0] kernel_3mm_B12_merge_data_unpack_5_b;
    wire [63:0] kernel_3mm_B12_merge_data_unpack_6_b;
    wire [63:0] kernel_3mm_B12_merge_data_unpack_7_b;
    wire [7:0] kernel_3mm_B12_merge_data_unpack_8_b;
    wire [31:0] kernel_3mm_B12_merge_data_unpack_9_b;
    wire [0:0] kernel_3mm_B12_merge_storage_out_o_almost_empty;
    wire [335:0] kernel_3mm_B12_merge_storage_out_o_data;
    wire [0:0] kernel_3mm_B12_merge_storage_out_o_empty;
    wire [0:0] kernel_3mm_B12_merge_storage_out_o_stall;
    wire [0:0] kernel_3mm_B12_merge_storage_out_o_valid;
    reg [0:0] rst_sync_rst_sclrn;


    // c_i7_01(CONSTANT,9)
    assign c_i7_01_q = $unsigned(7'b0000000);

    // element_extension21(BITJOIN,18)
    assign element_extension21_q = {c_i7_01_q, in_notcmp3192_pop44251_0};

    // element_extension18(BITJOIN,17)
    assign element_extension18_q = {c_i7_01_q, in_notcmp26250_0};

    // element_extension14(BITJOIN,16)
    assign element_extension14_q = {c_i7_01_q, in_memdep_phi7_pop2182_pop43249_0};

    // element_extension7(BITJOIN,20)
    assign element_extension7_q = {c_i7_01_q, in_memdep_phi7_pop2181_pop31244_0};

    // element_extension3(BITJOIN,19)
    assign element_extension3_q = {c_i7_01_q, in_notcmp31238_0};

    // element_extension0(BITJOIN,15)
    assign element_extension0_q = {c_i7_01_q, in_memdep_phi7_pop21234_0};

    // kernel_3mm_B12_merge_data_pack_0(BITJOIN,35)
    assign kernel_3mm_B12_merge_data_pack_0_q = {element_extension21_q, element_extension18_q, in_unnamed_kernel_3mm11_0, element_extension14_q, in_arrayidx817248_0, in_idxprom80247_0, in_idxprom78246_0, in_i_252_pop3094_pop45245_0, element_extension7_q, in_i_252_pop30241_0, element_extension3_q, element_extension0_q};

    // c_i2_024(CONSTANT,8)
    assign c_i2_024_q = $unsigned(2'b00);

    // kernel_3mm_B12_merge_storage(BLACKBOX,48)
    kernel_3mm_B12_merge_storage thekernel_3mm_B12_merge_storage (
        .in_almost_empty_in(c_i2_024_q),
        .in_empty_in(c_i2_024_q),
        .in_i_data(kernel_3mm_B12_merge_data_pack_0_q),
        .in_i_stall(in_stall_in),
        .in_i_valid(in_valid_in_0),
        .out_o_almost_empty(kernel_3mm_B12_merge_storage_out_o_almost_empty),
        .out_o_data(kernel_3mm_B12_merge_storage_out_o_data),
        .out_o_empty(kernel_3mm_B12_merge_storage_out_o_empty),
        .out_o_stall(kernel_3mm_B12_merge_storage_out_o_stall),
        .out_o_valid(kernel_3mm_B12_merge_storage_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // out_almost_empty_out(GPOUT,49)
    assign out_almost_empty_out = kernel_3mm_B12_merge_storage_out_o_almost_empty;

    // kernel_3mm_B12_merge_data_unpack_7(BITSELECT,45)
    assign kernel_3mm_B12_merge_data_unpack_7_b = kernel_3mm_B12_merge_storage_out_o_data[279:216];

    // out_arrayidx817248(GPOUT,50)
    assign out_arrayidx817248 = kernel_3mm_B12_merge_data_unpack_7_b;

    // out_empty_out(GPOUT,51)
    assign out_empty_out = kernel_3mm_B12_merge_storage_out_o_empty;

    // kernel_3mm_B12_merge_data_unpack_2(BITSELECT,40)
    assign kernel_3mm_B12_merge_data_unpack_2_b = kernel_3mm_B12_merge_storage_out_o_data[47:16];

    // out_i_252_pop30241(GPOUT,52)
    assign out_i_252_pop30241 = kernel_3mm_B12_merge_data_unpack_2_b;

    // kernel_3mm_B12_merge_data_unpack_4(BITSELECT,42)
    assign kernel_3mm_B12_merge_data_unpack_4_b = kernel_3mm_B12_merge_storage_out_o_data[87:56];

    // out_i_252_pop3094_pop45245(GPOUT,53)
    assign out_i_252_pop3094_pop45245 = kernel_3mm_B12_merge_data_unpack_4_b;

    // kernel_3mm_B12_merge_data_unpack_5(BITSELECT,43)
    assign kernel_3mm_B12_merge_data_unpack_5_b = kernel_3mm_B12_merge_storage_out_o_data[151:88];

    // out_idxprom78246(GPOUT,54)
    assign out_idxprom78246 = kernel_3mm_B12_merge_data_unpack_5_b;

    // kernel_3mm_B12_merge_data_unpack_6(BITSELECT,44)
    assign kernel_3mm_B12_merge_data_unpack_6_b = kernel_3mm_B12_merge_storage_out_o_data[215:152];

    // out_idxprom80247(GPOUT,55)
    assign out_idxprom80247 = kernel_3mm_B12_merge_data_unpack_6_b;

    // kernel_3mm_B12_merge_data_unpack_0(BITSELECT,36)
    assign kernel_3mm_B12_merge_data_unpack_0_b = kernel_3mm_B12_merge_storage_out_o_data[7:0];

    // adapt_scalar_trunc2(ROUND,3)
    assign adapt_scalar_trunc2_in = kernel_3mm_B12_merge_data_unpack_0_b[0:0];
    assign adapt_scalar_trunc2_q = adapt_scalar_trunc2_in[0:0];

    // out_memdep_phi7_pop21234(GPOUT,56)
    assign out_memdep_phi7_pop21234 = adapt_scalar_trunc2_q;

    // kernel_3mm_B12_merge_data_unpack_3(BITSELECT,41)
    assign kernel_3mm_B12_merge_data_unpack_3_b = kernel_3mm_B12_merge_storage_out_o_data[55:48];

    // adapt_scalar_trunc9(ROUND,7)
    assign adapt_scalar_trunc9_in = kernel_3mm_B12_merge_data_unpack_3_b[0:0];
    assign adapt_scalar_trunc9_q = adapt_scalar_trunc9_in[0:0];

    // out_memdep_phi7_pop2181_pop31244(GPOUT,57)
    assign out_memdep_phi7_pop2181_pop31244 = adapt_scalar_trunc9_q;

    // kernel_3mm_B12_merge_data_unpack_8(BITSELECT,46)
    assign kernel_3mm_B12_merge_data_unpack_8_b = kernel_3mm_B12_merge_storage_out_o_data[287:280];

    // adapt_scalar_trunc16(ROUND,2)
    assign adapt_scalar_trunc16_in = kernel_3mm_B12_merge_data_unpack_8_b[0:0];
    assign adapt_scalar_trunc16_q = adapt_scalar_trunc16_in[0:0];

    // out_memdep_phi7_pop2182_pop43249(GPOUT,58)
    assign out_memdep_phi7_pop2182_pop43249 = adapt_scalar_trunc16_q;

    // kernel_3mm_B12_merge_data_unpack_10(BITSELECT,38)
    assign kernel_3mm_B12_merge_data_unpack_10_b = kernel_3mm_B12_merge_storage_out_o_data[327:320];

    // adapt_scalar_trunc20(ROUND,4)
    assign adapt_scalar_trunc20_in = kernel_3mm_B12_merge_data_unpack_10_b[0:0];
    assign adapt_scalar_trunc20_q = adapt_scalar_trunc20_in[0:0];

    // out_notcmp26250(GPOUT,59)
    assign out_notcmp26250 = adapt_scalar_trunc20_q;

    // kernel_3mm_B12_merge_data_unpack_1(BITSELECT,37)
    assign kernel_3mm_B12_merge_data_unpack_1_b = kernel_3mm_B12_merge_storage_out_o_data[15:8];

    // adapt_scalar_trunc5(ROUND,6)
    assign adapt_scalar_trunc5_in = kernel_3mm_B12_merge_data_unpack_1_b[0:0];
    assign adapt_scalar_trunc5_q = adapt_scalar_trunc5_in[0:0];

    // out_notcmp31238(GPOUT,60)
    assign out_notcmp31238 = adapt_scalar_trunc5_q;

    // kernel_3mm_B12_merge_data_unpack_11(BITSELECT,39)
    assign kernel_3mm_B12_merge_data_unpack_11_b = kernel_3mm_B12_merge_storage_out_o_data[335:328];

    // adapt_scalar_trunc23(ROUND,5)
    assign adapt_scalar_trunc23_in = kernel_3mm_B12_merge_data_unpack_11_b[0:0];
    assign adapt_scalar_trunc23_q = adapt_scalar_trunc23_in[0:0];

    // out_notcmp3192_pop44251(GPOUT,61)
    assign out_notcmp3192_pop44251 = adapt_scalar_trunc23_q;

    // out_stall_out_0(GPOUT,62)
    assign out_stall_out_0 = kernel_3mm_B12_merge_storage_out_o_stall;

    // kernel_3mm_B12_merge_data_unpack_9(BITSELECT,47)
    assign kernel_3mm_B12_merge_data_unpack_9_b = kernel_3mm_B12_merge_storage_out_o_data[319:288];

    // out_unnamed_kernel_3mm11(GPOUT,63)
    assign out_unnamed_kernel_3mm11 = kernel_3mm_B12_merge_data_unpack_9_b;

    // out_valid_out(GPOUT,64)
    assign out_valid_out = kernel_3mm_B12_merge_storage_out_o_valid;

    // rst_sync(RESETSYNC,65)
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
