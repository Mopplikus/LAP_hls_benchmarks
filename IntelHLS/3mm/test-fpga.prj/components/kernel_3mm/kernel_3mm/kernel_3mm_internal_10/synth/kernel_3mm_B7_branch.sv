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

// SystemVerilog created from kernel_3mm_B7_branch
// Created for function/kernel kernel_3mm
// SystemVerilog created on Wed Apr  5 01:38:04 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_B7_branch (
    input wire [0:0] in_c0_exe10287,
    input wire [31:0] in_c0_exe1278,
    input wire [63:0] in_c0_exe2279,
    input wire [63:0] in_c0_exe3280,
    input wire [63:0] in_c0_exe4281,
    input wire [31:0] in_c0_exe5282,
    input wire [0:0] in_c0_exe7284,
    input wire [0:0] in_c0_exe8285,
    input wire [31:0] in_c0_exe9286,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe10287,
    output wire [31:0] out_c0_exe1278,
    output wire [63:0] out_c0_exe2279,
    output wire [63:0] out_c0_exe3280,
    output wire [63:0] out_c0_exe4281,
    output wire [31:0] out_c0_exe5282,
    output wire [0:0] out_c0_exe7284,
    output wire [0:0] out_c0_exe8285,
    output wire [31:0] out_c0_exe9286,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe10287(GPOUT,13)
    assign out_c0_exe10287 = in_c0_exe10287;

    // out_c0_exe1278(GPOUT,14)
    assign out_c0_exe1278 = in_c0_exe1278;

    // out_c0_exe2279(GPOUT,15)
    assign out_c0_exe2279 = in_c0_exe2279;

    // out_c0_exe3280(GPOUT,16)
    assign out_c0_exe3280 = in_c0_exe3280;

    // out_c0_exe4281(GPOUT,17)
    assign out_c0_exe4281 = in_c0_exe4281;

    // out_c0_exe5282(GPOUT,18)
    assign out_c0_exe5282 = in_c0_exe5282;

    // out_c0_exe7284(GPOUT,19)
    assign out_c0_exe7284 = in_c0_exe7284;

    // out_c0_exe8285(GPOUT,20)
    assign out_c0_exe8285 = in_c0_exe8285;

    // out_c0_exe9286(GPOUT,21)
    assign out_c0_exe9286 = in_c0_exe9286;

    // stall_out(LOGICAL,24)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,22)
    assign out_stall_out = stall_out_q;

    // out_valid_out_0(GPOUT,23)
    assign out_valid_out_0 = in_valid_in;

endmodule
