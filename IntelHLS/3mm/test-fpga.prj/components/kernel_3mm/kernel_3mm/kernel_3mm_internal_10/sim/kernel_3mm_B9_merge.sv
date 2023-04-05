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

// SystemVerilog created from kernel_3mm_B9_merge
// Created for function/kernel kernel_3mm
// SystemVerilog created on Wed Apr  5 01:38:04 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_B9_merge (
    input wire [31:0] in_c0_exe103169_0,
    input wire [0:0] in_c0_exe1131710_0,
    input wire [63:0] in_c0_exe23082_0,
    input wire [63:0] in_c0_exe33093_0,
    input wire [31:0] in_c0_exe43104_0,
    input wire [31:0] in_c0_exe63125_0,
    input wire [0:0] in_c0_exe73136_0,
    input wire [63:0] in_c0_exe83147_0,
    input wire [0:0] in_c0_exe93158_0,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    output wire [31:0] out_c0_exe103169,
    output wire [0:0] out_c0_exe1131710,
    output wire [63:0] out_c0_exe23082,
    output wire [63:0] out_c0_exe33093,
    output wire [31:0] out_c0_exe43104,
    output wire [31:0] out_c0_exe63125,
    output wire [0:0] out_c0_exe73136,
    output wire [63:0] out_c0_exe83147,
    output wire [0:0] out_c0_exe93158,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe103169(GPOUT,13)
    assign out_c0_exe103169 = in_c0_exe103169_0;

    // out_c0_exe1131710(GPOUT,14)
    assign out_c0_exe1131710 = in_c0_exe1131710_0;

    // out_c0_exe23082(GPOUT,15)
    assign out_c0_exe23082 = in_c0_exe23082_0;

    // out_c0_exe33093(GPOUT,16)
    assign out_c0_exe33093 = in_c0_exe33093_0;

    // out_c0_exe43104(GPOUT,17)
    assign out_c0_exe43104 = in_c0_exe43104_0;

    // out_c0_exe63125(GPOUT,18)
    assign out_c0_exe63125 = in_c0_exe63125_0;

    // out_c0_exe73136(GPOUT,19)
    assign out_c0_exe73136 = in_c0_exe73136_0;

    // out_c0_exe83147(GPOUT,20)
    assign out_c0_exe83147 = in_c0_exe83147_0;

    // out_c0_exe93158(GPOUT,21)
    assign out_c0_exe93158 = in_c0_exe93158_0;

    // stall_out(LOGICAL,24)
    assign stall_out_q = in_valid_in_0 & in_stall_in;

    // out_stall_out_0(GPOUT,22)
    assign out_stall_out_0 = stall_out_q;

    // out_valid_out(GPOUT,23)
    assign out_valid_out = in_valid_in_0;

endmodule
