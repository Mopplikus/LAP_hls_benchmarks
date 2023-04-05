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

// SystemVerilog created from covariance_B12_branch
// Created for function/kernel covariance
// SystemVerilog created on Wed Apr  5 02:12:05 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_B12_branch (
    input wire [32:0] in_c0_exe1361,
    input wire [0:0] in_c0_exe3363,
    input wire [31:0] in_c0_exe4364,
    input wire [31:0] in_c0_exe5365,
    input wire [31:0] in_c0_exe6366,
    input wire [31:0] in_c0_exe7367,
    input wire [31:0] in_c0_exe8368,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [32:0] out_c0_exe1361,
    output wire [0:0] out_c0_exe3363,
    output wire [31:0] out_c0_exe4364,
    output wire [31:0] out_c0_exe5365,
    output wire [31:0] out_c0_exe6366,
    output wire [31:0] out_c0_exe7367,
    output wire [31:0] out_c0_exe8368,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe1361(GPOUT,11)
    assign out_c0_exe1361 = in_c0_exe1361;

    // out_c0_exe3363(GPOUT,12)
    assign out_c0_exe3363 = in_c0_exe3363;

    // out_c0_exe4364(GPOUT,13)
    assign out_c0_exe4364 = in_c0_exe4364;

    // out_c0_exe5365(GPOUT,14)
    assign out_c0_exe5365 = in_c0_exe5365;

    // out_c0_exe6366(GPOUT,15)
    assign out_c0_exe6366 = in_c0_exe6366;

    // out_c0_exe7367(GPOUT,16)
    assign out_c0_exe7367 = in_c0_exe7367;

    // out_c0_exe8368(GPOUT,17)
    assign out_c0_exe8368 = in_c0_exe8368;

    // stall_out(LOGICAL,20)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,18)
    assign out_stall_out = stall_out_q;

    // out_valid_out_0(GPOUT,19)
    assign out_valid_out_0 = in_valid_in;

endmodule
