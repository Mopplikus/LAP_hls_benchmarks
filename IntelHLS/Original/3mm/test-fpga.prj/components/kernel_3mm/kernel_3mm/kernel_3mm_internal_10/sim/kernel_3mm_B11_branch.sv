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

// SystemVerilog created from kernel_3mm_B11_branch
// Created for function/kernel kernel_3mm
// SystemVerilog created on Thu Apr 27 14:26:49 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_B11_branch (
    input wire [0:0] in_almost_empty_in,
    input wire [0:0] in_c0_exe10557,
    input wire [0:0] in_c0_exe11558,
    input wire [31:0] in_c0_exe12559,
    input wire [0:0] in_c0_exe13560,
    input wire [31:0] in_c0_exe1548,
    input wire [63:0] in_c0_exe2549,
    input wire [63:0] in_c0_exe3550,
    input wire [63:0] in_c0_exe4551,
    input wire [0:0] in_c0_exe5552,
    input wire [31:0] in_c0_exe6553,
    input wire [0:0] in_c0_exe8555,
    input wire [0:0] in_c0_exe9556,
    input wire [0:0] in_empty_in,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe10557,
    output wire [0:0] out_c0_exe11558,
    output wire [31:0] out_c0_exe12559,
    output wire [0:0] out_c0_exe13560,
    output wire [31:0] out_c0_exe1548,
    output wire [63:0] out_c0_exe2549,
    output wire [63:0] out_c0_exe3550,
    output wire [63:0] out_c0_exe4551,
    output wire [0:0] out_c0_exe5552,
    output wire [31:0] out_c0_exe6553,
    output wire [0:0] out_c0_exe8555,
    output wire [0:0] out_c0_exe9556,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc10_in;
    wire [0:0] adapt_scalar_trunc10_q;
    wire [0:0] adapt_scalar_trunc13_in;
    wire [0:0] adapt_scalar_trunc13_q;
    wire [0:0] adapt_scalar_trunc16_in;
    wire [0:0] adapt_scalar_trunc16_q;
    wire [0:0] adapt_scalar_trunc19_in;
    wire [0:0] adapt_scalar_trunc19_q;
    wire [0:0] adapt_scalar_trunc23_in;
    wire [0:0] adapt_scalar_trunc23_q;
    wire [0:0] adapt_scalar_trunc6_in;
    wire [0:0] adapt_scalar_trunc6_q;
    wire [6:0] c_i7_012_q;
    wire [7:0] element_extension11_q;
    wire [7:0] element_extension14_q;
    wire [7:0] element_extension17_q;
    wire [7:0] element_extension21_q;
    wire [7:0] element_extension4_q;
    wire [7:0] element_extension8_q;
    wire [335:0] kernel_3mm_B11_branch_data_pack_q;
    wire [31:0] kernel_3mm_B11_branch_data_unpack_0_b;
    wire [63:0] kernel_3mm_B11_branch_data_unpack_1_b;
    wire [31:0] kernel_3mm_B11_branch_data_unpack_10_b;
    wire [7:0] kernel_3mm_B11_branch_data_unpack_11_b;
    wire [63:0] kernel_3mm_B11_branch_data_unpack_2_b;
    wire [63:0] kernel_3mm_B11_branch_data_unpack_3_b;
    wire [7:0] kernel_3mm_B11_branch_data_unpack_4_b;
    wire [31:0] kernel_3mm_B11_branch_data_unpack_5_b;
    wire [7:0] kernel_3mm_B11_branch_data_unpack_6_b;
    wire [7:0] kernel_3mm_B11_branch_data_unpack_7_b;
    wire [7:0] kernel_3mm_B11_branch_data_unpack_8_b;
    wire [7:0] kernel_3mm_B11_branch_data_unpack_9_b;
    reg [0:0] rst_sync_rst_sclrn;


    // c_i7_012(CONSTANT,8)
    assign c_i7_012_q = $unsigned(7'b0000000);

    // element_extension21(BITJOIN,17)
    assign element_extension21_q = {c_i7_012_q, in_c0_exe13560};

    // element_extension17(BITJOIN,16)
    assign element_extension17_q = {c_i7_012_q, in_c0_exe11558};

    // element_extension14(BITJOIN,15)
    assign element_extension14_q = {c_i7_012_q, in_c0_exe10557};

    // element_extension11(BITJOIN,14)
    assign element_extension11_q = {c_i7_012_q, in_c0_exe9556};

    // element_extension8(BITJOIN,19)
    assign element_extension8_q = {c_i7_012_q, in_c0_exe8555};

    // element_extension4(BITJOIN,18)
    assign element_extension4_q = {c_i7_012_q, in_c0_exe5552};

    // kernel_3mm_B11_branch_data_pack(BITJOIN,36)
    assign kernel_3mm_B11_branch_data_pack_q = {element_extension21_q, in_c0_exe12559, element_extension17_q, element_extension14_q, element_extension11_q, element_extension8_q, in_c0_exe6553, element_extension4_q, in_c0_exe4551, in_c0_exe3550, in_c0_exe2549, in_c0_exe1548};

    // kernel_3mm_B11_branch_data_unpack_8(BITSELECT,47)
    assign kernel_3mm_B11_branch_data_unpack_8_b = kernel_3mm_B11_branch_data_pack_q[287:280];

    // adapt_scalar_trunc16(ROUND,4)
    assign adapt_scalar_trunc16_in = kernel_3mm_B11_branch_data_unpack_8_b[0:0];
    assign adapt_scalar_trunc16_q = adapt_scalar_trunc16_in[0:0];

    // out_c0_exe10557(GPOUT,49)
    assign out_c0_exe10557 = adapt_scalar_trunc16_q;

    // kernel_3mm_B11_branch_data_unpack_9(BITSELECT,48)
    assign kernel_3mm_B11_branch_data_unpack_9_b = kernel_3mm_B11_branch_data_pack_q[295:288];

    // adapt_scalar_trunc19(ROUND,5)
    assign adapt_scalar_trunc19_in = kernel_3mm_B11_branch_data_unpack_9_b[0:0];
    assign adapt_scalar_trunc19_q = adapt_scalar_trunc19_in[0:0];

    // out_c0_exe11558(GPOUT,50)
    assign out_c0_exe11558 = adapt_scalar_trunc19_q;

    // kernel_3mm_B11_branch_data_unpack_10(BITSELECT,39)
    assign kernel_3mm_B11_branch_data_unpack_10_b = kernel_3mm_B11_branch_data_pack_q[327:296];

    // out_c0_exe12559(GPOUT,51)
    assign out_c0_exe12559 = kernel_3mm_B11_branch_data_unpack_10_b;

    // kernel_3mm_B11_branch_data_unpack_11(BITSELECT,40)
    assign kernel_3mm_B11_branch_data_unpack_11_b = kernel_3mm_B11_branch_data_pack_q[335:328];

    // adapt_scalar_trunc23(ROUND,6)
    assign adapt_scalar_trunc23_in = kernel_3mm_B11_branch_data_unpack_11_b[0:0];
    assign adapt_scalar_trunc23_q = adapt_scalar_trunc23_in[0:0];

    // out_c0_exe13560(GPOUT,52)
    assign out_c0_exe13560 = adapt_scalar_trunc23_q;

    // kernel_3mm_B11_branch_data_unpack_0(BITSELECT,37)
    assign kernel_3mm_B11_branch_data_unpack_0_b = kernel_3mm_B11_branch_data_pack_q[31:0];

    // out_c0_exe1548(GPOUT,53)
    assign out_c0_exe1548 = kernel_3mm_B11_branch_data_unpack_0_b;

    // kernel_3mm_B11_branch_data_unpack_1(BITSELECT,38)
    assign kernel_3mm_B11_branch_data_unpack_1_b = kernel_3mm_B11_branch_data_pack_q[95:32];

    // out_c0_exe2549(GPOUT,54)
    assign out_c0_exe2549 = kernel_3mm_B11_branch_data_unpack_1_b;

    // kernel_3mm_B11_branch_data_unpack_2(BITSELECT,41)
    assign kernel_3mm_B11_branch_data_unpack_2_b = kernel_3mm_B11_branch_data_pack_q[159:96];

    // out_c0_exe3550(GPOUT,55)
    assign out_c0_exe3550 = kernel_3mm_B11_branch_data_unpack_2_b;

    // kernel_3mm_B11_branch_data_unpack_3(BITSELECT,42)
    assign kernel_3mm_B11_branch_data_unpack_3_b = kernel_3mm_B11_branch_data_pack_q[223:160];

    // out_c0_exe4551(GPOUT,56)
    assign out_c0_exe4551 = kernel_3mm_B11_branch_data_unpack_3_b;

    // kernel_3mm_B11_branch_data_unpack_4(BITSELECT,43)
    assign kernel_3mm_B11_branch_data_unpack_4_b = kernel_3mm_B11_branch_data_pack_q[231:224];

    // adapt_scalar_trunc6(ROUND,7)
    assign adapt_scalar_trunc6_in = kernel_3mm_B11_branch_data_unpack_4_b[0:0];
    assign adapt_scalar_trunc6_q = adapt_scalar_trunc6_in[0:0];

    // out_c0_exe5552(GPOUT,57)
    assign out_c0_exe5552 = adapt_scalar_trunc6_q;

    // kernel_3mm_B11_branch_data_unpack_5(BITSELECT,44)
    assign kernel_3mm_B11_branch_data_unpack_5_b = kernel_3mm_B11_branch_data_pack_q[263:232];

    // out_c0_exe6553(GPOUT,58)
    assign out_c0_exe6553 = kernel_3mm_B11_branch_data_unpack_5_b;

    // kernel_3mm_B11_branch_data_unpack_6(BITSELECT,45)
    assign kernel_3mm_B11_branch_data_unpack_6_b = kernel_3mm_B11_branch_data_pack_q[271:264];

    // adapt_scalar_trunc10(ROUND,2)
    assign adapt_scalar_trunc10_in = kernel_3mm_B11_branch_data_unpack_6_b[0:0];
    assign adapt_scalar_trunc10_q = adapt_scalar_trunc10_in[0:0];

    // out_c0_exe8555(GPOUT,59)
    assign out_c0_exe8555 = adapt_scalar_trunc10_q;

    // kernel_3mm_B11_branch_data_unpack_7(BITSELECT,46)
    assign kernel_3mm_B11_branch_data_unpack_7_b = kernel_3mm_B11_branch_data_pack_q[279:272];

    // adapt_scalar_trunc13(ROUND,3)
    assign adapt_scalar_trunc13_in = kernel_3mm_B11_branch_data_unpack_7_b[0:0];
    assign adapt_scalar_trunc13_q = adapt_scalar_trunc13_in[0:0];

    // out_c0_exe9556(GPOUT,60)
    assign out_c0_exe9556 = adapt_scalar_trunc13_q;

    // out_stall_out(GPOUT,61)
    assign out_stall_out = in_stall_in_0;

    // out_valid_out_0(GPOUT,62)
    assign out_valid_out_0 = in_valid_in;

    // rst_sync(RESETSYNC,63)
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
