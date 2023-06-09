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

// SystemVerilog created from stencil_2d_B4_branch
// Created for function/kernel stencil_2d
// SystemVerilog created on Tue Jun 13 03:01:27 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_B4_branch (
    input wire [31:0] in_c0_exe10,
    input wire [31:0] in_c0_exe11,
    input wire [0:0] in_c0_exe1166,
    input wire [0:0] in_c0_exe12,
    input wire [0:0] in_c0_exe13,
    input wire [0:0] in_c0_exe14,
    input wire [0:0] in_c0_exe2167,
    input wire [31:0] in_c0_exe3168,
    input wire [31:0] in_c0_exe4169,
    input wire [31:0] in_c0_exe5170,
    input wire [0:0] in_c0_exe6,
    input wire [0:0] in_c0_exe7,
    input wire [0:0] in_c0_exe8,
    input wire [0:0] in_memdep_phi_pop17,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_c0_exe10,
    output wire [31:0] out_c0_exe11,
    output wire [0:0] out_c0_exe1166,
    output wire [0:0] out_c0_exe12,
    output wire [0:0] out_c0_exe13,
    output wire [0:0] out_c0_exe14,
    output wire [0:0] out_c0_exe2167,
    output wire [31:0] out_c0_exe3168,
    output wire [31:0] out_c0_exe4169,
    output wire [31:0] out_c0_exe5170,
    output wire [0:0] out_c0_exe6,
    output wire [0:0] out_c0_exe7,
    output wire [0:0] out_c0_exe8,
    output wire [0:0] out_memdep_phi_pop17,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe10(GPOUT,18)
    assign out_c0_exe10 = in_c0_exe10;

    // out_c0_exe11(GPOUT,19)
    assign out_c0_exe11 = in_c0_exe11;

    // out_c0_exe1166(GPOUT,20)
    assign out_c0_exe1166 = in_c0_exe1166;

    // out_c0_exe12(GPOUT,21)
    assign out_c0_exe12 = in_c0_exe12;

    // out_c0_exe13(GPOUT,22)
    assign out_c0_exe13 = in_c0_exe13;

    // out_c0_exe14(GPOUT,23)
    assign out_c0_exe14 = in_c0_exe14;

    // out_c0_exe2167(GPOUT,24)
    assign out_c0_exe2167 = in_c0_exe2167;

    // out_c0_exe3168(GPOUT,25)
    assign out_c0_exe3168 = in_c0_exe3168;

    // out_c0_exe4169(GPOUT,26)
    assign out_c0_exe4169 = in_c0_exe4169;

    // out_c0_exe5170(GPOUT,27)
    assign out_c0_exe5170 = in_c0_exe5170;

    // out_c0_exe6(GPOUT,28)
    assign out_c0_exe6 = in_c0_exe6;

    // out_c0_exe7(GPOUT,29)
    assign out_c0_exe7 = in_c0_exe7;

    // out_c0_exe8(GPOUT,30)
    assign out_c0_exe8 = in_c0_exe8;

    // out_memdep_phi_pop17(GPOUT,31)
    assign out_memdep_phi_pop17 = in_memdep_phi_pop17;

    // stall_out(LOGICAL,34)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,32)
    assign out_stall_out = stall_out_q;

    // out_valid_out_0(GPOUT,33)
    assign out_valid_out_0 = in_valid_in;

endmodule
