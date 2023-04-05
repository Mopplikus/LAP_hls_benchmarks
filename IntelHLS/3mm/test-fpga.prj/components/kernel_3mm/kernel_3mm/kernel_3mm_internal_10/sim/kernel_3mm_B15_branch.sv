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

// SystemVerilog created from kernel_3mm_B15_branch
// Created for function/kernel kernel_3mm
// SystemVerilog created on Wed Apr  5 01:38:03 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_B15_branch (
    input wire [31:0] in_c0_exe10403,
    input wire [31:0] in_c0_exe1394,
    input wire [63:0] in_c0_exe2395,
    input wire [63:0] in_c0_exe3396,
    input wire [63:0] in_c0_exe4397,
    input wire [31:0] in_c0_exe5398,
    input wire [0:0] in_c0_exe7400,
    input wire [0:0] in_c0_exe8401,
    input wire [0:0] in_c0_exe9402,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_c0_exe10403,
    output wire [31:0] out_c0_exe1394,
    output wire [63:0] out_c0_exe2395,
    output wire [63:0] out_c0_exe3396,
    output wire [63:0] out_c0_exe4397,
    output wire [31:0] out_c0_exe5398,
    output wire [0:0] out_c0_exe7400,
    output wire [0:0] out_c0_exe8401,
    output wire [0:0] out_c0_exe9402,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe10403(GPOUT,13)
    assign out_c0_exe10403 = in_c0_exe10403;

    // out_c0_exe1394(GPOUT,14)
    assign out_c0_exe1394 = in_c0_exe1394;

    // out_c0_exe2395(GPOUT,15)
    assign out_c0_exe2395 = in_c0_exe2395;

    // out_c0_exe3396(GPOUT,16)
    assign out_c0_exe3396 = in_c0_exe3396;

    // out_c0_exe4397(GPOUT,17)
    assign out_c0_exe4397 = in_c0_exe4397;

    // out_c0_exe5398(GPOUT,18)
    assign out_c0_exe5398 = in_c0_exe5398;

    // out_c0_exe7400(GPOUT,19)
    assign out_c0_exe7400 = in_c0_exe7400;

    // out_c0_exe8401(GPOUT,20)
    assign out_c0_exe8401 = in_c0_exe8401;

    // out_c0_exe9402(GPOUT,21)
    assign out_c0_exe9402 = in_c0_exe9402;

    // stall_out(LOGICAL,24)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,22)
    assign out_stall_out = stall_out_q;

    // out_valid_out_0(GPOUT,23)
    assign out_valid_out_0 = in_valid_in;

endmodule
