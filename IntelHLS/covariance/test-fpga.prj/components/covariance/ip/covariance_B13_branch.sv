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

// SystemVerilog created from covariance_B13_branch
// Created for function/kernel covariance
// SystemVerilog created on Wed Apr  5 02:12:05 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_B13_branch (
    input wire [31:0] in_c0_exe10404,
    input wire [32:0] in_c0_exe11,
    input wire [0:0] in_c0_exe12,
    input wire [31:0] in_c0_exe13,
    input wire [31:0] in_c0_exe14,
    input wire [31:0] in_c0_exe15,
    input wire [0:0] in_c0_exe2396,
    input wire [31:0] in_c0_exe3397,
    input wire [31:0] in_c0_exe4398,
    input wire [31:0] in_c0_exe5399,
    input wire [0:0] in_c0_exe6400,
    input wire [31:0] in_c0_exe7401,
    input wire [0:0] in_c0_exe8402,
    input wire [31:0] in_c0_exe9403,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_c0_exe10404,
    output wire [32:0] out_c0_exe11,
    output wire [0:0] out_c0_exe12,
    output wire [31:0] out_c0_exe13,
    output wire [31:0] out_c0_exe14,
    output wire [31:0] out_c0_exe15,
    output wire [0:0] out_c0_exe2396,
    output wire [31:0] out_c0_exe3397,
    output wire [31:0] out_c0_exe4398,
    output wire [31:0] out_c0_exe5399,
    output wire [0:0] out_c0_exe6400,
    output wire [31:0] out_c0_exe7401,
    output wire [0:0] out_c0_exe8402,
    output wire [31:0] out_c0_exe9403,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe10404(GPOUT,18)
    assign out_c0_exe10404 = in_c0_exe10404;

    // out_c0_exe11(GPOUT,19)
    assign out_c0_exe11 = in_c0_exe11;

    // out_c0_exe12(GPOUT,20)
    assign out_c0_exe12 = in_c0_exe12;

    // out_c0_exe13(GPOUT,21)
    assign out_c0_exe13 = in_c0_exe13;

    // out_c0_exe14(GPOUT,22)
    assign out_c0_exe14 = in_c0_exe14;

    // out_c0_exe15(GPOUT,23)
    assign out_c0_exe15 = in_c0_exe15;

    // out_c0_exe2396(GPOUT,24)
    assign out_c0_exe2396 = in_c0_exe2396;

    // out_c0_exe3397(GPOUT,25)
    assign out_c0_exe3397 = in_c0_exe3397;

    // out_c0_exe4398(GPOUT,26)
    assign out_c0_exe4398 = in_c0_exe4398;

    // out_c0_exe5399(GPOUT,27)
    assign out_c0_exe5399 = in_c0_exe5399;

    // out_c0_exe6400(GPOUT,28)
    assign out_c0_exe6400 = in_c0_exe6400;

    // out_c0_exe7401(GPOUT,29)
    assign out_c0_exe7401 = in_c0_exe7401;

    // out_c0_exe8402(GPOUT,30)
    assign out_c0_exe8402 = in_c0_exe8402;

    // out_c0_exe9403(GPOUT,31)
    assign out_c0_exe9403 = in_c0_exe9403;

    // stall_out(LOGICAL,34)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,32)
    assign out_stall_out = stall_out_q;

    // out_valid_out_0(GPOUT,33)
    assign out_valid_out_0 = in_valid_in;

endmodule
