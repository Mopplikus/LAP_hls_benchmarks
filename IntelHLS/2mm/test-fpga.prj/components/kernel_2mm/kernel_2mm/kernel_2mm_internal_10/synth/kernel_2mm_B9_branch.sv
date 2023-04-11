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
// SystemVerilog created on Fri Apr  7 18:35:51 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_2mm_B9_branch (
    input wire [63:0] in_c0_exe1162,
    input wire [63:0] in_c0_exe2163,
    input wire [63:0] in_c0_exe3164,
    input wire [31:0] in_c0_exe4165,
    input wire [0:0] in_c0_exe6167,
    input wire [0:0] in_c0_exe7168,
    input wire [63:0] in_c0_exe8169,
    input wire [0:0] in_c0_exe9170,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [63:0] out_c0_exe1162,
    output wire [63:0] out_c0_exe2163,
    output wire [63:0] out_c0_exe3164,
    output wire [31:0] out_c0_exe4165,
    output wire [0:0] out_c0_exe6167,
    output wire [0:0] out_c0_exe7168,
    output wire [63:0] out_c0_exe8169,
    output wire [0:0] out_c0_exe9170,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe1162(GPOUT,12)
    assign out_c0_exe1162 = in_c0_exe1162;

    // out_c0_exe2163(GPOUT,13)
    assign out_c0_exe2163 = in_c0_exe2163;

    // out_c0_exe3164(GPOUT,14)
    assign out_c0_exe3164 = in_c0_exe3164;

    // out_c0_exe4165(GPOUT,15)
    assign out_c0_exe4165 = in_c0_exe4165;

    // out_c0_exe6167(GPOUT,16)
    assign out_c0_exe6167 = in_c0_exe6167;

    // out_c0_exe7168(GPOUT,17)
    assign out_c0_exe7168 = in_c0_exe7168;

    // out_c0_exe8169(GPOUT,18)
    assign out_c0_exe8169 = in_c0_exe8169;

    // out_c0_exe9170(GPOUT,19)
    assign out_c0_exe9170 = in_c0_exe9170;

    // stall_out(LOGICAL,22)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,20)
    assign out_stall_out = stall_out_q;

    // out_valid_out_0(GPOUT,21)
    assign out_valid_out_0 = in_valid_in;

endmodule
