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

// SystemVerilog created from matvec_B2_branch
// Created for function/kernel matvec
// SystemVerilog created on Thu Apr 27 14:29:50 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module matvec_B2_branch (
    input wire [0:0] in_almost_empty_in,
    input wire [0:0] in_c0_exe2,
    input wire [31:0] in_c0_exe3,
    input wire [0:0] in_empty_in,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe2,
    output wire [31:0] out_c0_exe3,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc2_in;
    wire [0:0] adapt_scalar_trunc2_q;
    wire [6:0] c_i7_01_q;
    wire [7:0] element_extension0_q;
    wire [39:0] matvec_B2_branch_data_pack_q;
    wire [7:0] matvec_B2_branch_data_unpack_0_b;
    wire [31:0] matvec_B2_branch_data_unpack_1_b;
    reg [0:0] rst_sync_rst_sclrn;


    // c_i7_01(CONSTANT,3)
    assign c_i7_01_q = $unsigned(7'b0000000);

    // element_extension0(BITJOIN,4)
    assign element_extension0_q = {c_i7_01_q, in_c0_exe2};

    // matvec_B2_branch_data_pack(BITJOIN,11)
    assign matvec_B2_branch_data_pack_q = {in_c0_exe3, element_extension0_q};

    // matvec_B2_branch_data_unpack_0(BITSELECT,12)
    assign matvec_B2_branch_data_unpack_0_b = matvec_B2_branch_data_pack_q[7:0];

    // adapt_scalar_trunc2(ROUND,2)
    assign adapt_scalar_trunc2_in = matvec_B2_branch_data_unpack_0_b[0:0];
    assign adapt_scalar_trunc2_q = adapt_scalar_trunc2_in[0:0];

    // out_c0_exe2(GPOUT,14)
    assign out_c0_exe2 = adapt_scalar_trunc2_q;

    // matvec_B2_branch_data_unpack_1(BITSELECT,13)
    assign matvec_B2_branch_data_unpack_1_b = matvec_B2_branch_data_pack_q[39:8];

    // out_c0_exe3(GPOUT,15)
    assign out_c0_exe3 = matvec_B2_branch_data_unpack_1_b;

    // out_stall_out(GPOUT,16)
    assign out_stall_out = in_stall_in_0;

    // out_valid_out_0(GPOUT,17)
    assign out_valid_out_0 = in_valid_in;

    // rst_sync(RESETSYNC,18)
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
