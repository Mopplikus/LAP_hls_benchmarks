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

// SystemVerilog created from kernel_2mm_B4_branch
// Created for function/kernel kernel_2mm
// SystemVerilog created on Thu Apr 27 14:25:48 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_2mm_B4_branch (
    input wire [0:0] in_almost_empty_in,
    input wire [31:0] in_c0_exe10,
    input wire [31:0] in_c0_exe1107,
    input wire [63:0] in_c0_exe2108,
    input wire [63:0] in_c0_exe3109,
    input wire [63:0] in_c0_exe4,
    input wire [31:0] in_c0_exe5,
    input wire [0:0] in_c0_exe7,
    input wire [0:0] in_c0_exe8,
    input wire [0:0] in_c0_exe9,
    input wire [0:0] in_empty_in,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_c0_exe10,
    output wire [31:0] out_c0_exe1107,
    output wire [63:0] out_c0_exe2108,
    output wire [63:0] out_c0_exe3109,
    output wire [63:0] out_c0_exe4,
    output wire [31:0] out_c0_exe5,
    output wire [0:0] out_c0_exe7,
    output wire [0:0] out_c0_exe8,
    output wire [0:0] out_c0_exe9,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc10_in;
    wire [0:0] adapt_scalar_trunc10_q;
    wire [0:0] adapt_scalar_trunc13_in;
    wire [0:0] adapt_scalar_trunc13_q;
    wire [0:0] adapt_scalar_trunc7_in;
    wire [0:0] adapt_scalar_trunc7_q;
    wire [6:0] c_i7_012_q;
    wire [7:0] element_extension11_q;
    wire [7:0] element_extension5_q;
    wire [7:0] element_extension8_q;
    wire [311:0] kernel_2mm_B4_branch_data_pack_q;
    wire [31:0] kernel_2mm_B4_branch_data_unpack_0_b;
    wire [63:0] kernel_2mm_B4_branch_data_unpack_1_b;
    wire [63:0] kernel_2mm_B4_branch_data_unpack_2_b;
    wire [63:0] kernel_2mm_B4_branch_data_unpack_3_b;
    wire [31:0] kernel_2mm_B4_branch_data_unpack_4_b;
    wire [7:0] kernel_2mm_B4_branch_data_unpack_5_b;
    wire [7:0] kernel_2mm_B4_branch_data_unpack_6_b;
    wire [7:0] kernel_2mm_B4_branch_data_unpack_7_b;
    wire [31:0] kernel_2mm_B4_branch_data_unpack_8_b;
    reg [0:0] rst_sync_rst_sclrn;


    // c_i7_012(CONSTANT,5)
    assign c_i7_012_q = $unsigned(7'b0000000);

    // element_extension11(BITJOIN,8)
    assign element_extension11_q = {c_i7_012_q, in_c0_exe9};

    // element_extension8(BITJOIN,10)
    assign element_extension8_q = {c_i7_012_q, in_c0_exe8};

    // element_extension5(BITJOIN,9)
    assign element_extension5_q = {c_i7_012_q, in_c0_exe7};

    // kernel_2mm_B4_branch_data_pack(BITJOIN,24)
    assign kernel_2mm_B4_branch_data_pack_q = {in_c0_exe10, element_extension11_q, element_extension8_q, element_extension5_q, in_c0_exe5, in_c0_exe4, in_c0_exe3109, in_c0_exe2108, in_c0_exe1107};

    // kernel_2mm_B4_branch_data_unpack_8(BITSELECT,33)
    assign kernel_2mm_B4_branch_data_unpack_8_b = kernel_2mm_B4_branch_data_pack_q[311:280];

    // out_c0_exe10(GPOUT,34)
    assign out_c0_exe10 = kernel_2mm_B4_branch_data_unpack_8_b;

    // kernel_2mm_B4_branch_data_unpack_0(BITSELECT,25)
    assign kernel_2mm_B4_branch_data_unpack_0_b = kernel_2mm_B4_branch_data_pack_q[31:0];

    // out_c0_exe1107(GPOUT,35)
    assign out_c0_exe1107 = kernel_2mm_B4_branch_data_unpack_0_b;

    // kernel_2mm_B4_branch_data_unpack_1(BITSELECT,26)
    assign kernel_2mm_B4_branch_data_unpack_1_b = kernel_2mm_B4_branch_data_pack_q[95:32];

    // out_c0_exe2108(GPOUT,36)
    assign out_c0_exe2108 = kernel_2mm_B4_branch_data_unpack_1_b;

    // kernel_2mm_B4_branch_data_unpack_2(BITSELECT,27)
    assign kernel_2mm_B4_branch_data_unpack_2_b = kernel_2mm_B4_branch_data_pack_q[159:96];

    // out_c0_exe3109(GPOUT,37)
    assign out_c0_exe3109 = kernel_2mm_B4_branch_data_unpack_2_b;

    // kernel_2mm_B4_branch_data_unpack_3(BITSELECT,28)
    assign kernel_2mm_B4_branch_data_unpack_3_b = kernel_2mm_B4_branch_data_pack_q[223:160];

    // out_c0_exe4(GPOUT,38)
    assign out_c0_exe4 = kernel_2mm_B4_branch_data_unpack_3_b;

    // kernel_2mm_B4_branch_data_unpack_4(BITSELECT,29)
    assign kernel_2mm_B4_branch_data_unpack_4_b = kernel_2mm_B4_branch_data_pack_q[255:224];

    // out_c0_exe5(GPOUT,39)
    assign out_c0_exe5 = kernel_2mm_B4_branch_data_unpack_4_b;

    // kernel_2mm_B4_branch_data_unpack_5(BITSELECT,30)
    assign kernel_2mm_B4_branch_data_unpack_5_b = kernel_2mm_B4_branch_data_pack_q[263:256];

    // adapt_scalar_trunc7(ROUND,4)
    assign adapt_scalar_trunc7_in = kernel_2mm_B4_branch_data_unpack_5_b[0:0];
    assign adapt_scalar_trunc7_q = adapt_scalar_trunc7_in[0:0];

    // out_c0_exe7(GPOUT,40)
    assign out_c0_exe7 = adapt_scalar_trunc7_q;

    // kernel_2mm_B4_branch_data_unpack_6(BITSELECT,31)
    assign kernel_2mm_B4_branch_data_unpack_6_b = kernel_2mm_B4_branch_data_pack_q[271:264];

    // adapt_scalar_trunc10(ROUND,2)
    assign adapt_scalar_trunc10_in = kernel_2mm_B4_branch_data_unpack_6_b[0:0];
    assign adapt_scalar_trunc10_q = adapt_scalar_trunc10_in[0:0];

    // out_c0_exe8(GPOUT,41)
    assign out_c0_exe8 = adapt_scalar_trunc10_q;

    // kernel_2mm_B4_branch_data_unpack_7(BITSELECT,32)
    assign kernel_2mm_B4_branch_data_unpack_7_b = kernel_2mm_B4_branch_data_pack_q[279:272];

    // adapt_scalar_trunc13(ROUND,3)
    assign adapt_scalar_trunc13_in = kernel_2mm_B4_branch_data_unpack_7_b[0:0];
    assign adapt_scalar_trunc13_q = adapt_scalar_trunc13_in[0:0];

    // out_c0_exe9(GPOUT,42)
    assign out_c0_exe9 = adapt_scalar_trunc13_q;

    // out_stall_out(GPOUT,43)
    assign out_stall_out = in_stall_in_0;

    // out_valid_out_0(GPOUT,44)
    assign out_valid_out_0 = in_valid_in;

    // rst_sync(RESETSYNC,45)
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
