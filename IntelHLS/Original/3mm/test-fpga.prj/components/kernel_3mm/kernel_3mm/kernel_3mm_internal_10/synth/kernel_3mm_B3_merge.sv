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

// SystemVerilog created from kernel_3mm_B3_merge
// Created for function/kernel kernel_3mm
// SystemVerilog created on Thu Apr 27 14:26:50 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_B3_merge (
    input wire [0:0] in_forked118_0,
    input wire [0:0] in_forked60_pop24157_0,
    input wire [31:0] in_i_060_pop23147_0,
    input wire [0:0] in_memdep_phi2_pop18132_0,
    input wire [0:0] in_memdep_phi2_pop1868_pop26167_0,
    input wire [0:0] in_memdep_phi3_pop19139_0,
    input wire [0:0] in_memdep_phi3_pop1972_pop27172_0,
    input wire [0:0] in_memdep_phi5_pop20146_0,
    input wire [0:0] in_memdep_phi5_pop2076_pop28177_0,
    input wire [0:0] in_memdep_phi_pop17125_0,
    input wire [0:0] in_memdep_phi_pop1764_pop25162_0,
    input wire [0:0] in_notcmp51152_0,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_almost_empty_out,
    output wire [0:0] out_empty_out,
    output wire [0:0] out_forked118,
    output wire [0:0] out_forked60_pop24157,
    output wire [31:0] out_i_060_pop23147,
    output wire [0:0] out_memdep_phi2_pop18132,
    output wire [0:0] out_memdep_phi2_pop1868_pop26167,
    output wire [0:0] out_memdep_phi3_pop19139,
    output wire [0:0] out_memdep_phi3_pop1972_pop27172,
    output wire [0:0] out_memdep_phi5_pop20146,
    output wire [0:0] out_memdep_phi5_pop2076_pop28177,
    output wire [0:0] out_memdep_phi_pop17125,
    output wire [0:0] out_memdep_phi_pop1764_pop25162,
    output wire [0:0] out_notcmp51152,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc11_in;
    wire [0:0] adapt_scalar_trunc11_q;
    wire [0:0] adapt_scalar_trunc14_in;
    wire [0:0] adapt_scalar_trunc14_q;
    wire [0:0] adapt_scalar_trunc18_in;
    wire [0:0] adapt_scalar_trunc18_q;
    wire [0:0] adapt_scalar_trunc2_in;
    wire [0:0] adapt_scalar_trunc2_q;
    wire [0:0] adapt_scalar_trunc21_in;
    wire [0:0] adapt_scalar_trunc21_q;
    wire [0:0] adapt_scalar_trunc24_in;
    wire [0:0] adapt_scalar_trunc24_q;
    wire [0:0] adapt_scalar_trunc27_in;
    wire [0:0] adapt_scalar_trunc27_q;
    wire [0:0] adapt_scalar_trunc30_in;
    wire [0:0] adapt_scalar_trunc30_q;
    wire [0:0] adapt_scalar_trunc33_in;
    wire [0:0] adapt_scalar_trunc33_q;
    wire [0:0] adapt_scalar_trunc5_in;
    wire [0:0] adapt_scalar_trunc5_q;
    wire [0:0] adapt_scalar_trunc8_in;
    wire [0:0] adapt_scalar_trunc8_q;
    wire [1:0] c_i2_034_q;
    wire [6:0] c_i7_01_q;
    wire [7:0] element_extension0_q;
    wire [7:0] element_extension12_q;
    wire [7:0] element_extension16_q;
    wire [7:0] element_extension19_q;
    wire [7:0] element_extension22_q;
    wire [7:0] element_extension25_q;
    wire [7:0] element_extension28_q;
    wire [7:0] element_extension3_q;
    wire [7:0] element_extension31_q;
    wire [7:0] element_extension6_q;
    wire [7:0] element_extension9_q;
    wire [119:0] kernel_3mm_B3_merge_data_pack_0_q;
    wire [7:0] kernel_3mm_B3_merge_data_unpack_0_b;
    wire [7:0] kernel_3mm_B3_merge_data_unpack_1_b;
    wire [7:0] kernel_3mm_B3_merge_data_unpack_10_b;
    wire [7:0] kernel_3mm_B3_merge_data_unpack_11_b;
    wire [7:0] kernel_3mm_B3_merge_data_unpack_2_b;
    wire [7:0] kernel_3mm_B3_merge_data_unpack_3_b;
    wire [7:0] kernel_3mm_B3_merge_data_unpack_4_b;
    wire [31:0] kernel_3mm_B3_merge_data_unpack_5_b;
    wire [7:0] kernel_3mm_B3_merge_data_unpack_6_b;
    wire [7:0] kernel_3mm_B3_merge_data_unpack_7_b;
    wire [7:0] kernel_3mm_B3_merge_data_unpack_8_b;
    wire [7:0] kernel_3mm_B3_merge_data_unpack_9_b;
    wire [0:0] kernel_3mm_B3_merge_storage_out_o_almost_empty;
    wire [119:0] kernel_3mm_B3_merge_storage_out_o_data;
    wire [0:0] kernel_3mm_B3_merge_storage_out_o_empty;
    wire [0:0] kernel_3mm_B3_merge_storage_out_o_stall;
    wire [0:0] kernel_3mm_B3_merge_storage_out_o_valid;
    reg [0:0] rst_sync_rst_sclrn;


    // c_i7_01(CONSTANT,14)
    assign c_i7_01_q = $unsigned(7'b0000000);

    // element_extension31(BITJOIN,33)
    assign element_extension31_q = {c_i7_01_q, in_memdep_phi5_pop2076_pop28177_0};

    // element_extension28(BITJOIN,31)
    assign element_extension28_q = {c_i7_01_q, in_memdep_phi3_pop1972_pop27172_0};

    // element_extension25(BITJOIN,30)
    assign element_extension25_q = {c_i7_01_q, in_memdep_phi2_pop1868_pop26167_0};

    // element_extension22(BITJOIN,29)
    assign element_extension22_q = {c_i7_01_q, in_memdep_phi_pop1764_pop25162_0};

    // element_extension19(BITJOIN,28)
    assign element_extension19_q = {c_i7_01_q, in_forked60_pop24157_0};

    // element_extension16(BITJOIN,27)
    assign element_extension16_q = {c_i7_01_q, in_notcmp51152_0};

    // element_extension12(BITJOIN,26)
    assign element_extension12_q = {c_i7_01_q, in_memdep_phi5_pop20146_0};

    // element_extension9(BITJOIN,35)
    assign element_extension9_q = {c_i7_01_q, in_memdep_phi3_pop19139_0};

    // element_extension6(BITJOIN,34)
    assign element_extension6_q = {c_i7_01_q, in_memdep_phi2_pop18132_0};

    // element_extension3(BITJOIN,32)
    assign element_extension3_q = {c_i7_01_q, in_memdep_phi_pop17125_0};

    // element_extension0(BITJOIN,25)
    assign element_extension0_q = {c_i7_01_q, in_forked118_0};

    // kernel_3mm_B3_merge_data_pack_0(BITJOIN,50)
    assign kernel_3mm_B3_merge_data_pack_0_q = {element_extension31_q, element_extension28_q, element_extension25_q, element_extension22_q, element_extension19_q, element_extension16_q, in_i_060_pop23147_0, element_extension12_q, element_extension9_q, element_extension6_q, element_extension3_q, element_extension0_q};

    // c_i2_034(CONSTANT,13)
    assign c_i2_034_q = $unsigned(2'b00);

    // kernel_3mm_B3_merge_storage(BLACKBOX,63)
    kernel_3mm_B3_merge_storage thekernel_3mm_B3_merge_storage (
        .in_almost_empty_in(c_i2_034_q),
        .in_empty_in(c_i2_034_q),
        .in_i_data(kernel_3mm_B3_merge_data_pack_0_q),
        .in_i_stall(in_stall_in),
        .in_i_valid(in_valid_in_0),
        .out_o_almost_empty(kernel_3mm_B3_merge_storage_out_o_almost_empty),
        .out_o_data(kernel_3mm_B3_merge_storage_out_o_data),
        .out_o_empty(kernel_3mm_B3_merge_storage_out_o_empty),
        .out_o_stall(kernel_3mm_B3_merge_storage_out_o_stall),
        .out_o_valid(kernel_3mm_B3_merge_storage_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // out_almost_empty_out(GPOUT,64)
    assign out_almost_empty_out = kernel_3mm_B3_merge_storage_out_o_almost_empty;

    // out_empty_out(GPOUT,65)
    assign out_empty_out = kernel_3mm_B3_merge_storage_out_o_empty;

    // kernel_3mm_B3_merge_data_unpack_0(BITSELECT,51)
    assign kernel_3mm_B3_merge_data_unpack_0_b = kernel_3mm_B3_merge_storage_out_o_data[7:0];

    // adapt_scalar_trunc2(ROUND,5)
    assign adapt_scalar_trunc2_in = kernel_3mm_B3_merge_data_unpack_0_b[0:0];
    assign adapt_scalar_trunc2_q = adapt_scalar_trunc2_in[0:0];

    // out_forked118(GPOUT,66)
    assign out_forked118 = adapt_scalar_trunc2_q;

    // kernel_3mm_B3_merge_data_unpack_7(BITSELECT,60)
    assign kernel_3mm_B3_merge_data_unpack_7_b = kernel_3mm_B3_merge_storage_out_o_data[87:80];

    // adapt_scalar_trunc21(ROUND,6)
    assign adapt_scalar_trunc21_in = kernel_3mm_B3_merge_data_unpack_7_b[0:0];
    assign adapt_scalar_trunc21_q = adapt_scalar_trunc21_in[0:0];

    // out_forked60_pop24157(GPOUT,67)
    assign out_forked60_pop24157 = adapt_scalar_trunc21_q;

    // kernel_3mm_B3_merge_data_unpack_5(BITSELECT,58)
    assign kernel_3mm_B3_merge_data_unpack_5_b = kernel_3mm_B3_merge_storage_out_o_data[71:40];

    // out_i_060_pop23147(GPOUT,68)
    assign out_i_060_pop23147 = kernel_3mm_B3_merge_data_unpack_5_b;

    // kernel_3mm_B3_merge_data_unpack_2(BITSELECT,55)
    assign kernel_3mm_B3_merge_data_unpack_2_b = kernel_3mm_B3_merge_storage_out_o_data[23:16];

    // adapt_scalar_trunc8(ROUND,12)
    assign adapt_scalar_trunc8_in = kernel_3mm_B3_merge_data_unpack_2_b[0:0];
    assign adapt_scalar_trunc8_q = adapt_scalar_trunc8_in[0:0];

    // out_memdep_phi2_pop18132(GPOUT,69)
    assign out_memdep_phi2_pop18132 = adapt_scalar_trunc8_q;

    // kernel_3mm_B3_merge_data_unpack_9(BITSELECT,62)
    assign kernel_3mm_B3_merge_data_unpack_9_b = kernel_3mm_B3_merge_storage_out_o_data[103:96];

    // adapt_scalar_trunc27(ROUND,8)
    assign adapt_scalar_trunc27_in = kernel_3mm_B3_merge_data_unpack_9_b[0:0];
    assign adapt_scalar_trunc27_q = adapt_scalar_trunc27_in[0:0];

    // out_memdep_phi2_pop1868_pop26167(GPOUT,70)
    assign out_memdep_phi2_pop1868_pop26167 = adapt_scalar_trunc27_q;

    // kernel_3mm_B3_merge_data_unpack_3(BITSELECT,56)
    assign kernel_3mm_B3_merge_data_unpack_3_b = kernel_3mm_B3_merge_storage_out_o_data[31:24];

    // adapt_scalar_trunc11(ROUND,2)
    assign adapt_scalar_trunc11_in = kernel_3mm_B3_merge_data_unpack_3_b[0:0];
    assign adapt_scalar_trunc11_q = adapt_scalar_trunc11_in[0:0];

    // out_memdep_phi3_pop19139(GPOUT,71)
    assign out_memdep_phi3_pop19139 = adapt_scalar_trunc11_q;

    // kernel_3mm_B3_merge_data_unpack_10(BITSELECT,53)
    assign kernel_3mm_B3_merge_data_unpack_10_b = kernel_3mm_B3_merge_storage_out_o_data[111:104];

    // adapt_scalar_trunc30(ROUND,9)
    assign adapt_scalar_trunc30_in = kernel_3mm_B3_merge_data_unpack_10_b[0:0];
    assign adapt_scalar_trunc30_q = adapt_scalar_trunc30_in[0:0];

    // out_memdep_phi3_pop1972_pop27172(GPOUT,72)
    assign out_memdep_phi3_pop1972_pop27172 = adapt_scalar_trunc30_q;

    // kernel_3mm_B3_merge_data_unpack_4(BITSELECT,57)
    assign kernel_3mm_B3_merge_data_unpack_4_b = kernel_3mm_B3_merge_storage_out_o_data[39:32];

    // adapt_scalar_trunc14(ROUND,3)
    assign adapt_scalar_trunc14_in = kernel_3mm_B3_merge_data_unpack_4_b[0:0];
    assign adapt_scalar_trunc14_q = adapt_scalar_trunc14_in[0:0];

    // out_memdep_phi5_pop20146(GPOUT,73)
    assign out_memdep_phi5_pop20146 = adapt_scalar_trunc14_q;

    // kernel_3mm_B3_merge_data_unpack_11(BITSELECT,54)
    assign kernel_3mm_B3_merge_data_unpack_11_b = kernel_3mm_B3_merge_storage_out_o_data[119:112];

    // adapt_scalar_trunc33(ROUND,10)
    assign adapt_scalar_trunc33_in = kernel_3mm_B3_merge_data_unpack_11_b[0:0];
    assign adapt_scalar_trunc33_q = adapt_scalar_trunc33_in[0:0];

    // out_memdep_phi5_pop2076_pop28177(GPOUT,74)
    assign out_memdep_phi5_pop2076_pop28177 = adapt_scalar_trunc33_q;

    // kernel_3mm_B3_merge_data_unpack_1(BITSELECT,52)
    assign kernel_3mm_B3_merge_data_unpack_1_b = kernel_3mm_B3_merge_storage_out_o_data[15:8];

    // adapt_scalar_trunc5(ROUND,11)
    assign adapt_scalar_trunc5_in = kernel_3mm_B3_merge_data_unpack_1_b[0:0];
    assign adapt_scalar_trunc5_q = adapt_scalar_trunc5_in[0:0];

    // out_memdep_phi_pop17125(GPOUT,75)
    assign out_memdep_phi_pop17125 = adapt_scalar_trunc5_q;

    // kernel_3mm_B3_merge_data_unpack_8(BITSELECT,61)
    assign kernel_3mm_B3_merge_data_unpack_8_b = kernel_3mm_B3_merge_storage_out_o_data[95:88];

    // adapt_scalar_trunc24(ROUND,7)
    assign adapt_scalar_trunc24_in = kernel_3mm_B3_merge_data_unpack_8_b[0:0];
    assign adapt_scalar_trunc24_q = adapt_scalar_trunc24_in[0:0];

    // out_memdep_phi_pop1764_pop25162(GPOUT,76)
    assign out_memdep_phi_pop1764_pop25162 = adapt_scalar_trunc24_q;

    // kernel_3mm_B3_merge_data_unpack_6(BITSELECT,59)
    assign kernel_3mm_B3_merge_data_unpack_6_b = kernel_3mm_B3_merge_storage_out_o_data[79:72];

    // adapt_scalar_trunc18(ROUND,4)
    assign adapt_scalar_trunc18_in = kernel_3mm_B3_merge_data_unpack_6_b[0:0];
    assign adapt_scalar_trunc18_q = adapt_scalar_trunc18_in[0:0];

    // out_notcmp51152(GPOUT,77)
    assign out_notcmp51152 = adapt_scalar_trunc18_q;

    // out_stall_out_0(GPOUT,78)
    assign out_stall_out_0 = kernel_3mm_B3_merge_storage_out_o_stall;

    // out_valid_out(GPOUT,79)
    assign out_valid_out = kernel_3mm_B3_merge_storage_out_o_valid;

    // rst_sync(RESETSYNC,80)
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
