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

// SystemVerilog created from kernel_2mm_B9_branch
// Created for function/kernel kernel_2mm
// SystemVerilog created on Tue Jun 13 01:31:47 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_2mm_B9_branch (
    input wire [31:0] in_c0_exe10,
    input wire [0:0] in_c0_exe11,
    input wire [31:0] in_c0_exe1227,
    input wire [31:0] in_c0_exe2228,
    input wire [63:0] in_c0_exe3229,
    input wire [31:0] in_c0_exe4230,
    input wire [0:0] in_c0_exe6,
    input wire [31:0] in_c0_exe7,
    input wire [0:0] in_c0_exe8,
    input wire [31:0] in_c0_exe9,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_c0_exe10,
    output wire [0:0] out_c0_exe11,
    output wire [31:0] out_c0_exe1227,
    output wire [31:0] out_c0_exe2228,
    output wire [63:0] out_c0_exe3229,
    output wire [31:0] out_c0_exe4230,
    output wire [0:0] out_c0_exe6,
    output wire [31:0] out_c0_exe7,
    output wire [0:0] out_c0_exe8,
    output wire [31:0] out_c0_exe9,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe10(GPOUT,14)
    assign out_c0_exe10 = in_c0_exe10;

    // out_c0_exe11(GPOUT,15)
    assign out_c0_exe11 = in_c0_exe11;

    // out_c0_exe1227(GPOUT,16)
    assign out_c0_exe1227 = in_c0_exe1227;

    // out_c0_exe2228(GPOUT,17)
    assign out_c0_exe2228 = in_c0_exe2228;

    // out_c0_exe3229(GPOUT,18)
    assign out_c0_exe3229 = in_c0_exe3229;

    // out_c0_exe4230(GPOUT,19)
    assign out_c0_exe4230 = in_c0_exe4230;

    // out_c0_exe6(GPOUT,20)
    assign out_c0_exe6 = in_c0_exe6;

    // out_c0_exe7(GPOUT,21)
    assign out_c0_exe7 = in_c0_exe7;

    // out_c0_exe8(GPOUT,22)
    assign out_c0_exe8 = in_c0_exe8;

    // out_c0_exe9(GPOUT,23)
    assign out_c0_exe9 = in_c0_exe9;

    // stall_out(LOGICAL,26)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,24)
    assign out_stall_out = stall_out_q;

    // out_valid_out_0(GPOUT,25)
    assign out_valid_out_0 = in_valid_in;

endmodule
