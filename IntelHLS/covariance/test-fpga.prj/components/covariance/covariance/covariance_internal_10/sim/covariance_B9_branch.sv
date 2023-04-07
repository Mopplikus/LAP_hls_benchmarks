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

// SystemVerilog created from covariance_B9_branch
// Created for function/kernel covariance
// SystemVerilog created on Fri Apr  7 17:50:03 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_B9_branch (
    input wire [31:0] in_c0_exe10365,
    input wire [32:0] in_c0_exe11366,
    input wire [0:0] in_c0_exe12367,
    input wire [31:0] in_c0_exe13368,
    input wire [31:0] in_c0_exe14369,
    input wire [31:0] in_c0_exe15,
    input wire [0:0] in_c0_exe2357,
    input wire [31:0] in_c0_exe3358,
    input wire [31:0] in_c0_exe4359,
    input wire [31:0] in_c0_exe5360,
    input wire [0:0] in_c0_exe6361,
    input wire [31:0] in_c0_exe7362,
    input wire [0:0] in_c0_exe8363,
    input wire [31:0] in_c0_exe9364,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_c0_exe10365,
    output wire [32:0] out_c0_exe11366,
    output wire [0:0] out_c0_exe12367,
    output wire [31:0] out_c0_exe13368,
    output wire [31:0] out_c0_exe14369,
    output wire [31:0] out_c0_exe15,
    output wire [0:0] out_c0_exe2357,
    output wire [31:0] out_c0_exe3358,
    output wire [31:0] out_c0_exe4359,
    output wire [31:0] out_c0_exe5360,
    output wire [0:0] out_c0_exe6361,
    output wire [31:0] out_c0_exe7362,
    output wire [0:0] out_c0_exe8363,
    output wire [31:0] out_c0_exe9364,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe10365(GPOUT,18)
    assign out_c0_exe10365 = in_c0_exe10365;

    // out_c0_exe11366(GPOUT,19)
    assign out_c0_exe11366 = in_c0_exe11366;

    // out_c0_exe12367(GPOUT,20)
    assign out_c0_exe12367 = in_c0_exe12367;

    // out_c0_exe13368(GPOUT,21)
    assign out_c0_exe13368 = in_c0_exe13368;

    // out_c0_exe14369(GPOUT,22)
    assign out_c0_exe14369 = in_c0_exe14369;

    // out_c0_exe15(GPOUT,23)
    assign out_c0_exe15 = in_c0_exe15;

    // out_c0_exe2357(GPOUT,24)
    assign out_c0_exe2357 = in_c0_exe2357;

    // out_c0_exe3358(GPOUT,25)
    assign out_c0_exe3358 = in_c0_exe3358;

    // out_c0_exe4359(GPOUT,26)
    assign out_c0_exe4359 = in_c0_exe4359;

    // out_c0_exe5360(GPOUT,27)
    assign out_c0_exe5360 = in_c0_exe5360;

    // out_c0_exe6361(GPOUT,28)
    assign out_c0_exe6361 = in_c0_exe6361;

    // out_c0_exe7362(GPOUT,29)
    assign out_c0_exe7362 = in_c0_exe7362;

    // out_c0_exe8363(GPOUT,30)
    assign out_c0_exe8363 = in_c0_exe8363;

    // out_c0_exe9364(GPOUT,31)
    assign out_c0_exe9364 = in_c0_exe9364;

    // stall_out(LOGICAL,34)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,32)
    assign out_stall_out = stall_out_q;

    // out_valid_out_0(GPOUT,33)
    assign out_valid_out_0 = in_valid_in;

endmodule
