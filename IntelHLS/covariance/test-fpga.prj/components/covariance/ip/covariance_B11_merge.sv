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

// SystemVerilog created from covariance_B11_merge
// Created for function/kernel covariance
// SystemVerilog created on Fri Apr  7 17:50:02 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_B11_merge (
    input wire [0:0] in_c0_exe1043430_0,
    input wire [0:0] in_c0_exe1143531_0,
    input wire [0:0] in_c0_exe1243632_0,
    input wire [63:0] in_c0_exe242620_0,
    input wire [63:0] in_c0_exe342721_0,
    input wire [0:0] in_c0_exe442824_0,
    input wire [31:0] in_c0_exe643025_0,
    input wire [31:0] in_c0_exe843228_0,
    input wire [31:0] in_c0_exe943329_0,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_c0_exe1043430,
    output wire [0:0] out_c0_exe1143531,
    output wire [0:0] out_c0_exe1243632,
    output wire [63:0] out_c0_exe242620,
    output wire [63:0] out_c0_exe342721,
    output wire [0:0] out_c0_exe442824,
    output wire [31:0] out_c0_exe643025,
    output wire [31:0] out_c0_exe843228,
    output wire [31:0] out_c0_exe943329,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe1043430(GPOUT,13)
    assign out_c0_exe1043430 = in_c0_exe1043430_0;

    // out_c0_exe1143531(GPOUT,14)
    assign out_c0_exe1143531 = in_c0_exe1143531_0;

    // out_c0_exe1243632(GPOUT,15)
    assign out_c0_exe1243632 = in_c0_exe1243632_0;

    // out_c0_exe242620(GPOUT,16)
    assign out_c0_exe242620 = in_c0_exe242620_0;

    // out_c0_exe342721(GPOUT,17)
    assign out_c0_exe342721 = in_c0_exe342721_0;

    // out_c0_exe442824(GPOUT,18)
    assign out_c0_exe442824 = in_c0_exe442824_0;

    // out_c0_exe643025(GPOUT,19)
    assign out_c0_exe643025 = in_c0_exe643025_0;

    // out_c0_exe843228(GPOUT,20)
    assign out_c0_exe843228 = in_c0_exe843228_0;

    // out_c0_exe943329(GPOUT,21)
    assign out_c0_exe943329 = in_c0_exe943329_0;

    // stall_out(LOGICAL,24)
    assign stall_out_q = in_valid_in_0 & in_stall_in;

    // out_stall_out_0(GPOUT,22)
    assign out_stall_out_0 = stall_out_q;

    // out_valid_out(GPOUT,23)
    assign out_valid_out = in_valid_in_0;

endmodule
