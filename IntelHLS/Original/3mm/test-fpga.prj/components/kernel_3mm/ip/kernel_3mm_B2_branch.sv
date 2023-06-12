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

// SystemVerilog created from kernel_3mm_B2_branch
// Created for function/kernel kernel_3mm
// SystemVerilog created on Thu Apr 27 14:26:50 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_B2_branch (
    input wire [0:0] in_almost_empty_in,
    input wire [0:0] in_c0_exe10,
    input wire [0:0] in_c0_exe11,
    input wire [0:0] in_c0_exe12,
    input wire [31:0] in_c0_exe1271,
    input wire [0:0] in_c0_exe13,
    input wire [0:0] in_c0_exe3,
    input wire [0:0] in_c0_exe4,
    input wire [0:0] in_c0_exe5,
    input wire [0:0] in_c0_exe6,
    input wire [0:0] in_c0_exe7,
    input wire [0:0] in_c0_exe8,
    input wire [0:0] in_c0_exe9,
    input wire [0:0] in_empty_in,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe10,
    output wire [0:0] out_c0_exe11,
    output wire [0:0] out_c0_exe12,
    output wire [31:0] out_c0_exe1271,
    output wire [0:0] out_c0_exe13,
    output wire [0:0] out_c0_exe3,
    output wire [0:0] out_c0_exe4,
    output wire [0:0] out_c0_exe5,
    output wire [0:0] out_c0_exe6,
    output wire [0:0] out_c0_exe7,
    output wire [0:0] out_c0_exe8,
    output wire [0:0] out_c0_exe9,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc12_in;
    wire [0:0] adapt_scalar_trunc12_q;
    wire [0:0] adapt_scalar_trunc15_in;
    wire [0:0] adapt_scalar_trunc15_q;
    wire [0:0] adapt_scalar_trunc18_in;
    wire [0:0] adapt_scalar_trunc18_q;
    wire [0:0] adapt_scalar_trunc21_in;
    wire [0:0] adapt_scalar_trunc21_q;
    wire [0:0] adapt_scalar_trunc24_in;
    wire [0:0] adapt_scalar_trunc24_q;
    wire [0:0] adapt_scalar_trunc27_in;
    wire [0:0] adapt_scalar_trunc27_q;
    wire [0:0] adapt_scalar_trunc3_in;
    wire [0:0] adapt_scalar_trunc3_q;
    wire [0:0] adapt_scalar_trunc30_in;
    wire [0:0] adapt_scalar_trunc30_q;
    wire [0:0] adapt_scalar_trunc33_in;
    wire [0:0] adapt_scalar_trunc33_q;
    wire [0:0] adapt_scalar_trunc6_in;
    wire [0:0] adapt_scalar_trunc6_q;
    wire [0:0] adapt_scalar_trunc9_in;
    wire [0:0] adapt_scalar_trunc9_q;
    wire [6:0] c_i7_011_q;
    wire [7:0] element_extension1_q;
    wire [7:0] element_extension10_q;
    wire [7:0] element_extension13_q;
    wire [7:0] element_extension16_q;
    wire [7:0] element_extension19_q;
    wire [7:0] element_extension22_q;
    wire [7:0] element_extension25_q;
    wire [7:0] element_extension28_q;
    wire [7:0] element_extension31_q;
    wire [7:0] element_extension4_q;
    wire [7:0] element_extension7_q;
    wire [119:0] kernel_3mm_B2_branch_data_pack_q;
    wire [31:0] kernel_3mm_B2_branch_data_unpack_0_b;
    wire [7:0] kernel_3mm_B2_branch_data_unpack_1_b;
    wire [7:0] kernel_3mm_B2_branch_data_unpack_10_b;
    wire [7:0] kernel_3mm_B2_branch_data_unpack_11_b;
    wire [7:0] kernel_3mm_B2_branch_data_unpack_2_b;
    wire [7:0] kernel_3mm_B2_branch_data_unpack_3_b;
    wire [7:0] kernel_3mm_B2_branch_data_unpack_4_b;
    wire [7:0] kernel_3mm_B2_branch_data_unpack_5_b;
    wire [7:0] kernel_3mm_B2_branch_data_unpack_6_b;
    wire [7:0] kernel_3mm_B2_branch_data_unpack_7_b;
    wire [7:0] kernel_3mm_B2_branch_data_unpack_8_b;
    wire [7:0] kernel_3mm_B2_branch_data_unpack_9_b;
    reg [0:0] rst_sync_rst_sclrn;


    // c_i7_011(CONSTANT,13)
    assign c_i7_011_q = $unsigned(7'b0000000);

    // element_extension31(BITJOIN,32)
    assign element_extension31_q = {c_i7_011_q, in_c0_exe13};

    // element_extension28(BITJOIN,31)
    assign element_extension28_q = {c_i7_011_q, in_c0_exe12};

    // element_extension25(BITJOIN,30)
    assign element_extension25_q = {c_i7_011_q, in_c0_exe11};

    // element_extension22(BITJOIN,29)
    assign element_extension22_q = {c_i7_011_q, in_c0_exe10};

    // element_extension19(BITJOIN,28)
    assign element_extension19_q = {c_i7_011_q, in_c0_exe9};

    // element_extension16(BITJOIN,27)
    assign element_extension16_q = {c_i7_011_q, in_c0_exe8};

    // element_extension13(BITJOIN,26)
    assign element_extension13_q = {c_i7_011_q, in_c0_exe7};

    // element_extension10(BITJOIN,25)
    assign element_extension10_q = {c_i7_011_q, in_c0_exe6};

    // element_extension7(BITJOIN,34)
    assign element_extension7_q = {c_i7_011_q, in_c0_exe5};

    // element_extension4(BITJOIN,33)
    assign element_extension4_q = {c_i7_011_q, in_c0_exe4};

    // element_extension1(BITJOIN,24)
    assign element_extension1_q = {c_i7_011_q, in_c0_exe3};

    // kernel_3mm_B2_branch_data_pack(BITJOIN,51)
    assign kernel_3mm_B2_branch_data_pack_q = {element_extension31_q, element_extension28_q, element_extension25_q, element_extension22_q, element_extension19_q, element_extension16_q, element_extension13_q, element_extension10_q, element_extension7_q, element_extension4_q, element_extension1_q, in_c0_exe1271};

    // kernel_3mm_B2_branch_data_unpack_8(BITSELECT,62)
    assign kernel_3mm_B2_branch_data_unpack_8_b = kernel_3mm_B2_branch_data_pack_q[95:88];

    // adapt_scalar_trunc24(ROUND,6)
    assign adapt_scalar_trunc24_in = kernel_3mm_B2_branch_data_unpack_8_b[0:0];
    assign adapt_scalar_trunc24_q = adapt_scalar_trunc24_in[0:0];

    // out_c0_exe10(GPOUT,64)
    assign out_c0_exe10 = adapt_scalar_trunc24_q;

    // kernel_3mm_B2_branch_data_unpack_9(BITSELECT,63)
    assign kernel_3mm_B2_branch_data_unpack_9_b = kernel_3mm_B2_branch_data_pack_q[103:96];

    // adapt_scalar_trunc27(ROUND,7)
    assign adapt_scalar_trunc27_in = kernel_3mm_B2_branch_data_unpack_9_b[0:0];
    assign adapt_scalar_trunc27_q = adapt_scalar_trunc27_in[0:0];

    // out_c0_exe11(GPOUT,65)
    assign out_c0_exe11 = adapt_scalar_trunc27_q;

    // kernel_3mm_B2_branch_data_unpack_10(BITSELECT,54)
    assign kernel_3mm_B2_branch_data_unpack_10_b = kernel_3mm_B2_branch_data_pack_q[111:104];

    // adapt_scalar_trunc30(ROUND,9)
    assign adapt_scalar_trunc30_in = kernel_3mm_B2_branch_data_unpack_10_b[0:0];
    assign adapt_scalar_trunc30_q = adapt_scalar_trunc30_in[0:0];

    // out_c0_exe12(GPOUT,66)
    assign out_c0_exe12 = adapt_scalar_trunc30_q;

    // kernel_3mm_B2_branch_data_unpack_0(BITSELECT,52)
    assign kernel_3mm_B2_branch_data_unpack_0_b = kernel_3mm_B2_branch_data_pack_q[31:0];

    // out_c0_exe1271(GPOUT,67)
    assign out_c0_exe1271 = kernel_3mm_B2_branch_data_unpack_0_b;

    // kernel_3mm_B2_branch_data_unpack_11(BITSELECT,55)
    assign kernel_3mm_B2_branch_data_unpack_11_b = kernel_3mm_B2_branch_data_pack_q[119:112];

    // adapt_scalar_trunc33(ROUND,10)
    assign adapt_scalar_trunc33_in = kernel_3mm_B2_branch_data_unpack_11_b[0:0];
    assign adapt_scalar_trunc33_q = adapt_scalar_trunc33_in[0:0];

    // out_c0_exe13(GPOUT,68)
    assign out_c0_exe13 = adapt_scalar_trunc33_q;

    // kernel_3mm_B2_branch_data_unpack_1(BITSELECT,53)
    assign kernel_3mm_B2_branch_data_unpack_1_b = kernel_3mm_B2_branch_data_pack_q[39:32];

    // adapt_scalar_trunc3(ROUND,8)
    assign adapt_scalar_trunc3_in = kernel_3mm_B2_branch_data_unpack_1_b[0:0];
    assign adapt_scalar_trunc3_q = adapt_scalar_trunc3_in[0:0];

    // out_c0_exe3(GPOUT,69)
    assign out_c0_exe3 = adapt_scalar_trunc3_q;

    // kernel_3mm_B2_branch_data_unpack_2(BITSELECT,56)
    assign kernel_3mm_B2_branch_data_unpack_2_b = kernel_3mm_B2_branch_data_pack_q[47:40];

    // adapt_scalar_trunc6(ROUND,11)
    assign adapt_scalar_trunc6_in = kernel_3mm_B2_branch_data_unpack_2_b[0:0];
    assign adapt_scalar_trunc6_q = adapt_scalar_trunc6_in[0:0];

    // out_c0_exe4(GPOUT,70)
    assign out_c0_exe4 = adapt_scalar_trunc6_q;

    // kernel_3mm_B2_branch_data_unpack_3(BITSELECT,57)
    assign kernel_3mm_B2_branch_data_unpack_3_b = kernel_3mm_B2_branch_data_pack_q[55:48];

    // adapt_scalar_trunc9(ROUND,12)
    assign adapt_scalar_trunc9_in = kernel_3mm_B2_branch_data_unpack_3_b[0:0];
    assign adapt_scalar_trunc9_q = adapt_scalar_trunc9_in[0:0];

    // out_c0_exe5(GPOUT,71)
    assign out_c0_exe5 = adapt_scalar_trunc9_q;

    // kernel_3mm_B2_branch_data_unpack_4(BITSELECT,58)
    assign kernel_3mm_B2_branch_data_unpack_4_b = kernel_3mm_B2_branch_data_pack_q[63:56];

    // adapt_scalar_trunc12(ROUND,2)
    assign adapt_scalar_trunc12_in = kernel_3mm_B2_branch_data_unpack_4_b[0:0];
    assign adapt_scalar_trunc12_q = adapt_scalar_trunc12_in[0:0];

    // out_c0_exe6(GPOUT,72)
    assign out_c0_exe6 = adapt_scalar_trunc12_q;

    // kernel_3mm_B2_branch_data_unpack_5(BITSELECT,59)
    assign kernel_3mm_B2_branch_data_unpack_5_b = kernel_3mm_B2_branch_data_pack_q[71:64];

    // adapt_scalar_trunc15(ROUND,3)
    assign adapt_scalar_trunc15_in = kernel_3mm_B2_branch_data_unpack_5_b[0:0];
    assign adapt_scalar_trunc15_q = adapt_scalar_trunc15_in[0:0];

    // out_c0_exe7(GPOUT,73)
    assign out_c0_exe7 = adapt_scalar_trunc15_q;

    // kernel_3mm_B2_branch_data_unpack_6(BITSELECT,60)
    assign kernel_3mm_B2_branch_data_unpack_6_b = kernel_3mm_B2_branch_data_pack_q[79:72];

    // adapt_scalar_trunc18(ROUND,4)
    assign adapt_scalar_trunc18_in = kernel_3mm_B2_branch_data_unpack_6_b[0:0];
    assign adapt_scalar_trunc18_q = adapt_scalar_trunc18_in[0:0];

    // out_c0_exe8(GPOUT,74)
    assign out_c0_exe8 = adapt_scalar_trunc18_q;

    // kernel_3mm_B2_branch_data_unpack_7(BITSELECT,61)
    assign kernel_3mm_B2_branch_data_unpack_7_b = kernel_3mm_B2_branch_data_pack_q[87:80];

    // adapt_scalar_trunc21(ROUND,5)
    assign adapt_scalar_trunc21_in = kernel_3mm_B2_branch_data_unpack_7_b[0:0];
    assign adapt_scalar_trunc21_q = adapt_scalar_trunc21_in[0:0];

    // out_c0_exe9(GPOUT,75)
    assign out_c0_exe9 = adapt_scalar_trunc21_q;

    // out_stall_out(GPOUT,76)
    assign out_stall_out = in_stall_in_0;

    // out_valid_out_0(GPOUT,77)
    assign out_valid_out_0 = in_valid_in;

    // rst_sync(RESETSYNC,78)
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
